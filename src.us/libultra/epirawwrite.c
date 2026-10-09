/* Reference: reference/ultralib/src/io/epirawwrite.c (libultra 2.0G). */
#define BUILD_VERSION 4
#include "bindings.h"
#include "PR/os_version.h"
#include "PRinternal/piint.h"
#include "PR/ultraerror.h"

// TODO: this comes from a header
#ident "$Revision: 1.17 $"

s32 __osEPiRawWriteIo(OSPiHandle* pihandle, u32 devAddr, u32 data) {
    register u32 stat;

#ifdef _DEBUG
    if (devAddr & 0x3) {
        __osError(ERR_OSPIRAWWRITEIO, 1, devAddr);
        return -1;
    }
#endif

    WAIT_ON_IOBUSY(stat);
    IO_WRITE(pihandle->baseAddress | devAddr, data);

    return 0;
}
