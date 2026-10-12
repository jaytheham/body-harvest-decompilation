/* Reference: reference/ultralib/src/os/setglobalintmask.c (libultra 2.0I). */
#define BUILD_VERSION 6
#include "bindings.h"
#include "PR/os_version.h"
#include "PR/os_internal.h"

void __osSetGlobalIntMask(OSHWIntr mask) {
    register u32 saveMask = __osDisableInt();

    __OSGlobalIntMask |= mask;

    __osRestoreInt(saveMask);
}
