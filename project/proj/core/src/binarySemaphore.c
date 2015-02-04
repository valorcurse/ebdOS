//The actual mutex functions
#include "binarySemaphore.h"
#include "stdlib.h"
#include "process.h"
#include "lockObject.h" 
#include "asmUtils.h"

extern struct Process* currentProcess;

void initBinarySemaphore(struct BinarySemaphore* mutex){
    __initLockObject(&(mutex->lockObject), 1);
}

void uninitBinarySemaphore(struct BinarySemaphore* mutex){
    __cleanupLockObject(&(mutex->lockObject));
}

void lockBinarySemaphoreBlocking(struct BinarySemaphore* mutex){
    __increaseLockObjectBlock(&(mutex->lockObject));
}

int lockBinarySemaphoreNoBlock(struct BinarySemaphore* mutex){
    return (__increaseLockObjectNoBlock(&(mutex->lockObject)) != -1);
}

//Ret: 0 if failed
int lockBinarySemaphoreBlockWait(struct BinarySemaphore* mutex, unsigned msWaitTime){
    return (__increaseLockObjectBlockTimeout(&(mutex->lockObject), msWaitTime) != -1);
}

void releaseBinarySemaphore(struct BinarySemaphore* mutex){
    __decreaseLockObjectNoBlock(&(mutex->lockObject)); 
}
