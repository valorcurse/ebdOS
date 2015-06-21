//Handles the supervisor interrupt call
#include <hw_nvic.h>        // Macros related to the NVIC hardware
#include <hw_types.h>       // Common types and macros for the TI libs
#include <uartstdio.h>      // UART stdio declarations
#include <timer.h>          // Function prototypes for the timer module
#include <hw_memmap.h>      // Address of GPIO etc
#include <lm4f120h5qr.h>    // Hardware regs
#include <hw_types.h>       // Contains the special types
#include <rom_map.h>        // Call functions directly from the ROM if available
#include <rom.h>            // Declare ROM addresses for rom funcs
#include <stdlib.h>         // Contains C defs like NULL

#include "process.h"        // Declares the OS's process structs and funcs
#include "lockObject.h"     // Declarations for the lockobjects
#include "sysSleep.h"       // Kernel facing sleep functions
#include "sleep.h"          // User facing sleep functions
#include "supervisorCall.h" // Supplies the SVC commands

extern struct Process* currentProcess;
extern struct Process* processesReady;
extern struct Process* kernel;
extern struct Process* newProcess;

static struct SleepingProcessStruct* sleepProcessListHead = NULL;
static struct SleepingProcessStruct* nextToWakeUp = NULL;

void* volatile intrBlockObject;

void rescheduleImmediately(void){
    if(processesReady != currentProcess) NVIC_INT_CTRL_R |= (1<<28); //Set the pendSV to pending (Datasheet pp 156)
}

//----- Functions related to the moving of functions from one queue to another

//Common
int processInList(struct Process* listHead, struct Process* proc){
    while (listHead != NULL){
        if (listHead == proc) return 1;
        listHead = listHead->nextProcess;
    }
    return 0;
}

struct Process* sortProcessIntoList(struct Process* listHead, struct Process* item){
    struct Process* current = listHead;
    struct Process* previous = NULL;
    while (current != NULL && current->priority >= item->priority){
        previous = current;
        current = current->nextProcess;
    }
    //Needs to go between previous and current, unless previous is NULL. Then it becomes the new HEAD
    if (previous == NULL){
        item->nextProcess = current;
        listHead = item;
    } else {
        previous->nextProcess = item;
        item->nextProcess = current;
    }
    return listHead;
}

struct Process* appendProcessToList(struct Process* listHead, struct Process* item){
    if (listHead == NULL){
        item->nextProcess = NULL;
        return item;
    }
    struct Process* current = listHead;
    for (; current->nextProcess != NULL; current = current->nextProcess);
    current->nextProcess = item;
    return listHead;
}

struct Process* removeProcessFromList(struct Process* listHead, struct Process* item){
    struct Process* current = listHead;
    struct Process* previous = NULL;
    while (current != NULL && current != item){
        previous = current;
        current = current->nextProcess;
    }
    //If current is NULL, then it was not in the list
    //If previous is NULL, then it is the head of the list
    if (current != NULL){
        if (previous == NULL){
            listHead = current->nextProcess;
        } else {
            previous->nextProcess = current->nextProcess;
        }

    }
    return listHead;
}

//Readylist related
int processInReadyList(struct Process* process){
    return processInList(processesReady, process);
}

void addProcessToReady(struct Process* process){
    if (!processInList(processesReady, process)){
        processesReady = sortProcessIntoList(processesReady, process);
        rescheduleImmediately();
    }
}

void removeProcessFromReady(struct Process* process){
    processesReady = removeProcessFromList(processesReady, process);
    rescheduleImmediately();
}

void addNewProcess(void){
    if (newProcess != NULL){
        addProcessToReady(newProcess);
        newProcess = NULL;
    }
}

//Sleep related
void wakeupProcess(struct SleepingProcessStruct* ptr){
    if (ptr->process->state & STATE_WAIT){
        struct LockObject* object = ptr->process->blockAddress;
        if (ptr->process->state & STATE_INC_WAIT){
            object->processWaitingQueueIncrease = removeProcessFromList(object->processWaitingQueueIncrease, ptr->process);
        }
        if (ptr->process->state & STATE_DEC_WAIT){
            object->processWaitingQueueDecrease = removeProcessFromList(object->processWaitingQueueDecrease, ptr->process);
        }
        ptr->process->blockAddress = NULL;
    }
    ptr->process->state = STATE_READY;
    addProcessToReady(ptr->process);
}

void setSleepTimerWB(void){
    while (sleepProcessListHead != nextToWakeUp){
        if (sleepProcessListHead == NULL){
            ROM_TimerDisable(WTIMER0_BASE, TIMER_B);
            nextToWakeUp = NULL;
        } else if (sleepProcessListHead->overflows != 0){
            if (nextToWakeUp != NULL){
                ROM_TimerDisable(WTIMER0_BASE, TIMER_B);
                nextToWakeUp = NULL;
            }
            break;
        } else {
            unsigned curValWTA = getCurrentSleepTimerValue();
            if (curValWTA <= sleepProcessListHead->sleepUntil){
                wakeupProcess(sleepProcessListHead);
                sleepProcessListHead = sleepProcessListHead->nextPtr;
            } else {
                nextToWakeUp = sleepProcessListHead;
                ROM_TimerLoadSet(WTIMER0_BASE, TIMER_B, curValWTA);
                ROM_TimerMatchSet(WTIMER0_BASE, TIMER_B, sleepProcessListHead->sleepUntil);
                ROM_TimerEnable(WTIMER0_BASE, TIMER_B);
            }
        }
    }
}

void wakeupFromWBInterrupt(void){
    if (nextToWakeUp == NULL) return;
    wakeupProcess(nextToWakeUp);
    sleepProcessListHead = sleepProcessListHead->nextPtr;
    nextToWakeUp = NULL;
    setSleepTimerWB();
}

void addSleeperToList(struct SleepingProcessStruct* ptr){
    struct SleepingProcessStruct* current = sleepProcessListHead;
    struct SleepingProcessStruct* previous = NULL;
    while(current != NULL && current->overflows <= ptr->overflows && current->sleepUntil >= ptr->sleepUntil){
        previous = current;
        current = current->nextPtr;
        if (current == ptr) return;
    }
    if (previous == NULL){
        ptr->nextPtr = current;
        sleepProcessListHead = ptr;
        setSleepTimerWB();
    } else {
        previous->nextPtr = ptr;
        ptr->nextPtr = current;
    }
}

void removeSleeperFromList(struct Process* proc){
    struct SleepingProcessStruct* current = sleepProcessListHead;
    struct SleepingProcessStruct* previous = NULL;
    while(current != NULL && current != &(proc->sleepObj)){
        previous = current;
        current = current->nextPtr;
    }
    if (current != NULL){
        if (previous == NULL){
            sleepProcessListHead = current->nextPtr;
            setSleepTimerWB();
        } else {
            previous->nextPtr = current->nextPtr;
        }
    }
}

//----------------

struct Process* popFromLockQueue(struct Process* listHead){
    if (listHead != NULL){
        //Fully ignore the fact that the process might also be sleeping.
        //This would indicate a block and wait and we only want this process to stop sleeping (waiting) when it has the mutex
        //So the process itself will check wether or not it is still "sleeping"
        //Sleeping is an extension module to blocking
        struct Process* item = listHead;
        item->state |= STATE_WAIT;
        item->state ^= STATE_WAIT;
        item->blockAddress = NULL;
        listHead = listHead->nextProcess;
        addProcessToReady(item);
    }
    return listHead;
}

//Used to signal increase/decrease
void lockObjectModified(const char increase){
    struct LockObject* lockObject = (struct LockObject*)currentProcess->blockAddress;
    if (increase){
        lockObject->processWaitingQueueIncrease = popFromLockQueue(lockObject->processWaitingQueueIncrease);
    } else {
        lockObject->processWaitingQueueDecrease = popFromLockQueue(lockObject->processWaitingQueueDecrease);
    }
    currentProcess->blockAddress = NULL;
}

void lockObjectModifiedIntr(const char increase){
    struct LockObject* volatile lockObject = intrBlockObject;
    if (increase){
        lockObject->processWaitingQueueIncrease = popFromLockQueue(lockObject->processWaitingQueueIncrease);
    } else {
        lockObject->processWaitingQueueDecrease = popFromLockQueue(lockObject->processWaitingQueueDecrease);
    }
}

void lockObjectBlock(const char increase){
    struct LockObject* lockObject = (struct LockObject*)currentProcess->blockAddress;
    if (increase){
        if (lockObject->lock != 0) return;
        removeProcessFromReady(currentProcess);
        lockObject->processWaitingQueueIncrease = appendProcessToList(lockObject->processWaitingQueueIncrease, currentProcess);
    } else {
        if (lockObject->lock < lockObject->maxLockVal) return;
        removeProcessFromReady(currentProcess);
        lockObject->processWaitingQueueDecrease = appendProcessToList(lockObject->processWaitingQueueDecrease, currentProcess);
    }
}

void lockObjectBlockAndSleep(const char increase){
    lockObjectBlock(increase);
    addSleeperToList(&(currentProcess->sleepObj));
}

void wakeupCurrentProcess(void){
   removeSleeperFromList(currentProcess);
}

void fallAsleep(void){
    removeProcessFromReady(currentProcess);
    addSleeperToList(&(currentProcess->sleepObj));
}

#ifdef DEBUG
void sayHi(void){
    UARTprintf("Hi from your favorite supervisor!\r\n");
}
#endif //DEBUG

// This function responds to an interrupt that can be generated at any runlevel.
// Handlermode is somewhere near equal to being in an interrupt. 
void svcHandler_main(const char reqCode, const unsigned fromHandlerMode){
    switch(reqCode){
        case SVC_reschedule:
            rescheduleImmediately();
            break;
        case SVC_multiObjectIncrease:
            if (fromHandlerMode) lockObjectModifiedIntr(1);
            else lockObjectModified(1);
            break;
        case SVC_multiObjectDecrease:
            if (fromHandlerMode) lockObjectModifiedIntr(0);
            else lockObjectModified(0);
            break;
        case SVC_multiObjectWaitForIncrease:
            if (!fromHandlerMode) lockObjectBlock(1);
            break;
        case SVC_multiObjectWaitForDecrease:
            if (!fromHandlerMode) lockObjectBlock(0);
            break;
        case SVC_multiObjectWaitForIncreaseAndSleep:
            if (!fromHandlerMode) lockObjectBlockAndSleep(1);
            break;
        case SVC_multiObjectWaitForDecreaseAndSleep:
            if (!fromHandlerMode) lockObjectBlockAndSleep(0);
            break;
        case SVC_sleep:
            fallAsleep();
            break;
        case SVC_wakeup:
            wakeupFromWBInterrupt();
            break;
        case SVC_wakeupCurrent:
            wakeupCurrentProcess();
            break;
        case SVC_processAdd:
            addNewProcess();
            break;
#ifdef DEBUG
        case SVC_test:
            sayHi();
            break;
#endif //DEBUG
        default:
            UARTprintf("Supervisor call handler: unknown code %d\r\n",reqCode);
            break;
    }
}

