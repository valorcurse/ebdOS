//The actual mutex functions
#include <stdlib.h>

#include "mutex.h"
#include "coreUtils.h"
#include "context.h"

int initMutex(struct Mutex* mutex){
    mutex->ownerContext = NULL;
    return initFutex(&mutex->fut, 1);
}

int destroyMutex(struct Mutex* mutex){
    return destroyFutex(&mutex->fut);
}

int lockMutex(struct Mutex* mutex){
    if (mutex->ownerContext == currentContext) return EDEADLK;
    int retVal = futexWait(&mutex->fut);
    if (currentContext->retVal == 0) mutex->ownerContext = currentContext;
    return retVal;
}

int lockMutexTimeout(struct Mutex* mutex, struct SleepRequest* sleepReq){
    if (mutex->ownerContext == currentContext) return EDEADLK;
    int retVal = futexWaitTimeout(&mutex->fut, sleepReq);
    if (retVal == 0) mutex->ownerContext = currentContext;
    return retVal;

}

int tryLockMutex(struct Mutex* mutex){
    if (mutex->ownerContext == currentContext) return EDEADLK;
    int retVal = futexTryWait(&mutex->fut);
    if (currentContext->retVal == 0) mutex->ownerContext = currentContext;
    return retVal;
}

int unlockMutex(struct Mutex* mutex){
    if (mutex->ownerContext != currentContext) return EPERM;
    mutex->ownerContext = NULL;
    return futexPost(&mutex->fut);
}
