#include "process.h"
#include "processManagement.h"
#include "getSetRegisters.h"
#include "regDumpLoad.h"
#include "stdlib.h"
#include "asmUtils.h"

//Defines for correct returns
// See datasheet pp 106
#define PSPNONFP_RETURN ((unsigned)0xFFFFFFFD)
#define MSPNONFP_RETURN ((unsigned)0xFFFFFFF9)
#define PSPFP_RETURN    ((unsigned)0xFFFFFFED)
#define MSPFP_RETURN    ((unsigned)0xFFFFFFE9)

// This file handles scheduling, basically

extern struct Process* kernel;
extern struct Process* currentProcess;
extern struct Process* firstProcess;
struct Process* nextProcess = NULL;

void pendSVHandler(void){
    //We are assuming nextProcess is not null
    //The PSP always contains the location where the registers are written to, including when switching from and to kernel
    volatile unsigned* msp = getMSP();
    currentProcess->stackPointer = saveRegistersToPSPAndMovePSP();   
    setPSP(nextProcess->stackPointer);
    loadRegistersFromPSPAndMovePSP();
    if (nextProcess->pid == 0){
        msp[3] = MSPNONFP_RETURN;
    } else {
        msp[3] = PSPNONFP_RETURN;
    }
    currentProcess = nextProcess;
    
   // if (currentProcess->pid == 0){ //From kernel to..
   //     saveRegistersToMSPAndMoveMSP();
   //     setPSP(nextProcess->stackPointer);        
   //     loadRegistersFromPSPAndMovePSP();
   // } else if (nextProcess->pid == 0){ //From .. to kernel
   //     currentProcess->stackPointer = saveRegistersToPSPAndMovePSP();
   //     loadRegistersFromMSPAndMoveMSP();
   // } else { //Between processes
   //     msp[3] = PSPNONFP_RETURN;
   // }
}


void schedule(void){
//The actual scheduler. 
}
