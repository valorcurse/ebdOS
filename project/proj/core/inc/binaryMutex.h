#ifndef BINARYMUTEX_H
#define BINARYMUTEX_H
/**
@file binaryMutex.h
@author J. Dirks

Creation, deletion and usage of binary mutexes

Binary mutex functions.
A binary mutex is anonymous: everyone can release it.
You cannot grab it twice: if you try to grab it a second time, you will need to wait for a release first
*/


struct BinaryMutex{
    unsigned lock;
    struct BinaryMutex* nextBinaryMutex;
};

/** The actual BinaryMutex */
typedef struct BinaryMutex BinaryMutex;

/**
Locks the binary mutex, blocks until the mutex is locked.

@param mutex The mutex you want to block.
*/
void lockBinaryMutexBlocking(BinaryMutex* mutex);

/**
Tries to lock the binary mutex. If unsucsessfull, blocks until the mutex can be locked or timeout, whichever comes first.

@param mutex The mutex you want to block.
@param msWaitTime Maximum blocking time.

@return 1 if the mutex was sucsessfully locked, else 0.
*/
int lockBinaryMutexBlockWait(BinaryMutex* mutex, unsigned msWaitTime);

/**
Attemps one time to lock the binary mutex.

@param mutex The mutex you want to lock

@return 1 if the mutex was sucsessfully locked, else 0.
*/
int lockBinaryMutexNoBlock(BinaryMutex* mutex);

void releaseBinaryMutex(BinaryMutex* mutex);

BinaryMutex* createBinaryMutex(void);

void deleteBinaryMutex(BinaryMutex* mutex);

#endif //BINARYMUTEX_H