/* Reference: reference/ultralib/src/io/spsetstat.c (libultra 2.0I). */
#define BUILD_VERSION 6
#include "bindings.h"
#include "PR/os_version.h"
#include "PR/os_internal.h"
#include "PR/rcp.h"

// TODO: this comes from a header
#ident "$Revision: 1.17 $"

void __osSpSetStatus(u32 data) {
    IO_WRITE(SP_STATUS_REG, data);
}
