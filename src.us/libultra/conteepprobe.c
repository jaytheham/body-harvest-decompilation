/* Reference: reference/ultralib/src/io/conteepprobe.c (libultra 2.0G). */
#define BUILD_VERSION 4
#include "bindings.h"
#include "PR/os_version.h"
#include "PRinternal/controller.h"
#include "PRinternal/siint.h"

s32 osEepromProbe(OSMesgQueue* mq) {
    s32 ret = 0;
    OSContStatus sdata;

    __osSiGetAccess();
    ret = __osEepStatus(mq, &sdata);
    if (ret == 0 && (sdata.type & CONT_EEPROM)) {
        ret = EEPROM_TYPE_4K;
    } else {
        ret = 0;
    }

#if BUILD_VERSION >= VERSION_L
    __osEepromRead16K = 0;
#endif
    __osSiRelAccess();
    return ret;
}
