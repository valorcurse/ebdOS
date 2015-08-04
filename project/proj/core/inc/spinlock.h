#ifndef SPINLOCK_H
#define SPINLOCK_H

#include "process.h"
#include "sysCalls.h"

/**
 * @file spinlock.h
 * @author Jacko Dirks
 *
 * This file specifies the spinlock interface.
 * The spinlock is an unmanaged lockobject which does not allow waiting for it.
 */

/**
 * The spinlock struct. Its only possible values are 0 and 1, 1 is locked.
 */
struct Spinlock {
    int value;
    struct ProcessContext* owner;
};

/**
 * @brief Initializes the spinlock. Requires the pointer to point to an existing memory location.
 * It is advisable to destroy every spinlock created by this function with the destroySpinlock function
 * @param spinlock The spinlock we want tot initialize
 * @return 0 if everything was ok, nonzero if not.
 */
int initSpinlock(struct Spinlock* spinlock);

/**
 * @brief Destroys the spinlock.
 *
 * If this function is called while the spinlock is in a locked state it trows an error.
 * @param spinlock The spinlock we want to destroy.
 * @return 0 if everything was ok, nonzero if not.
 */
int destroySpinlock(struct Spinlock* spinlock);

/**
 * @brief Locks the spinlock
 * This function only returns when the spinlock is locked or after a fatal error.
 * @return 0 if everything was ok, nonzero if not
 */
int lockSpinlock(struct Spinlock* spinlock);

/**
 * @brief Tries to lock the spinlock, returns immeaditaly
 * This function tries once and then returns
 * @return 0 if locked, nonzero if not
 */
int tryLockSpinlock(struct Spinlock* spinlock);

/**
 * @brief Releases the spinlock.
 * If the calling process was not the owner, then nothing happens.
 * @return 0 if everything was ok, nonzero if not.
 */
int unlockSpinlock(struct Spinlock* spinlock);
#endif //SPINLOCK_H
