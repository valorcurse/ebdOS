#include <rom.h>            // Declare ROM addresses for rom funcs
#include <hw_types.h>       // Defines for TI libs
#include <timer.h>          // Function prototypes for timer hw interaction
#include <hw_memmap.h>      // address of GPIO etc

#include "systemClockManagement.h"
#include "kernEventNotifier.h"

#ifdef DEBUG
    #include <string.h>     // strerror

    #include "kernUtils.h"  // GenerateCrash
    #include "uartstdio.h"  // UARTprintf
#endif //DEBUG

void systemTimerInterrupt(void){
    ROM_TimerIntClear(WTIMER0_BASE,  TIMER_CAPA_MATCH|TIMER_CAPA_EVENT|TIMER_TIMA_TIMEOUT);
#ifdef DEBUG
    int code = passMessageToKernel(sysTimerOverflow);
    if (code != 0){
        UARTprintf("Failed to pass sysTimerOverflow to kernel. Code: %d (%s)\n", code, strerror(code));
        generateCrash();
    }
#else
    passMessageToKernel(sysTimerOverflow);
#endif //DEBUG
}

void sleepTimerInterrupt(void){
    ROM_TimerIntClear(WTIMER0_BASE,  TIMER_TIMB_MATCH);
#ifdef DEBUG
    int code = passMessageToKernel(sleepTimerExpired);
    if (code != 0){
        UARTprintf("Failed to pass sleepTimerExpired to kernel. Code: %d (%s)\n", code, strerror(code));
        generateCrash();
    }
#else
    passMessageToKernel(sleepTimerExpired);
#endif //DEBUG
}

void managedLockTimerInterrupt(void){
    ROM_TimerIntClear(WTIMER1_BASE,  TIMER_TIMA_MATCH);
#ifdef DEBUG
    int code = passMessageToKernel(managedLockTimerExpired);
    if (code != 0){
        UARTprintf("Failed to pass sleepTimerExpired to kernel. Code: %d (%s)\n", code, strerror(code));
        generateCrash();
    }
#else
    passMessageToKernel(managedLockTimerExpired);
#endif //DEBUG
}

uint32_t getSystemClockValue(void){
    return ROM_TimerValueGet(WTIMER0_BASE, TIMER_A);
}

void setHalfWTimerInterrupt(int enable, unsigned long ulBase, unsigned long ulTimer, unsigned long lValue, unsigned long mValue){
    if (enable == 0) {
        ROM_TimerDisable(ulBase, ulTimer);
    } else {
        ROM_TimerLoadSet(ulBase, ulTimer, lValue);
        ROM_TimerMatchSet(ulBase, ulTimer, mValue);
        ROM_TimerEnable(ulBase, ulTimer);
    }
}
