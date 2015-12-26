#ifndef CONTEXT_H
#define CONTEXT_H

#include "sysCalls.h"

/**
 * @brief Contains the process context, this is a set of variables that is unique per process and accesseble for the process itself.
 *
 * An example of this is errno. This part is heavily used by the syscall layer.
 */

struct ProcessContext {
    /* Syscall layer variables */
    unsigned retVal;
    void* genericPtr;
    /* General variables */
    int context_errno;
    enum SyscallCodes comVal;
};

extern struct ProcessContext* currentContext;
/**
 * @brief Helper function to make sure all context variables are set when communicating to the kernel.
 * @param comVal The new ComVal value
 * @param genericPtr The new genericPtr value
 */
void setContextParams(enum SyscallCodes comVal, void* genericPtr);
#endif //CONTEXT_H