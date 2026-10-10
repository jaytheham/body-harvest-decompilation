/* Reference: reference/ultralib/src/io/pigetstat.c (libultra 2.0I). */
#define BUILD_VERSION 6
#include "bindings.h"
#include "PR/os_version.h"
#include "PR/os_internal.h"
#include "PRinternal/piint.h"

// TODO: this comes from a header
#ident "$Revision: 1.17 $"

u32 osPiGetStatus(void) {
    return IO_READ(PI_STATUS_REG);
}
