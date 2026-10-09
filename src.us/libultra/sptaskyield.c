/* Reference: reference/ultralib/src/io/sptaskyield.c (libultra 2.0I). */
#define BUILD_VERSION 6
#include "bindings.h"
#include "PR/os_version.h"
#include "PR/os_internal.h"
#include "PR/rcp.h"

void osSpTaskYield(void) {
    __osSpSetStatus(SP_SET_YIELD);
}
