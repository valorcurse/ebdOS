#include <errno.h>

#include "context.h"

error_t* __errno(void){
    return &(currentContext->context_errno);
}

void setContextParams(enum SyscallCodes comVal, void* genericPtr, int32_t passVal){
    currentContext->comVal = comVal;
    currentContext->genericPtr = genericPtr;
    currentContext->passVal = passVal;
}
