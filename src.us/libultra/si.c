/* Reference: reference/ultralib/src/io/si.c (libultra 2.0I). */
#define BUILD_VERSION 6
#include "PR/os_version.h"
#include "PR/os_internal.h"
#include "PRinternal/siint.h"

// TODO: this comes from a header
#ident "$Revision: 1.17 $"

int __osSiDeviceBusy(void) {
    register u32 stat = IO_READ(SI_STATUS_REG);

    if (stat & (SI_STATUS_DMA_BUSY | SI_STATUS_RD_BUSY)) {
        return TRUE;
    } else {
        return FALSE;
    }
}
