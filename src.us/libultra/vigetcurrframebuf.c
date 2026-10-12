/* Reference: reference/ultralib/src/io/vigetcurrframebuf.c (libultra 2.0I). */
#define BUILD_VERSION 6
#include "bindings.h"
#include "PR/os_version.h"
#include "PR/os_internal.h"
#include "PR/ultraerror.h"
#include "PRinternal/viint.h"

void* osViGetCurrentFramebuffer(void) {
    register u32 saveMask;
    void* framep;

#ifdef _DEBUG
    if (!__osViDevMgr.active) {
        __osError(ERR_OSVIGETCURRENTFRAMEBUFFER, 0);
        return NULL;
    }
#endif

    saveMask = __osDisableInt();
    framep = __osViCurr->framep;
    __osRestoreInt(saveMask);
    return framep;
}
