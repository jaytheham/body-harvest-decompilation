#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/core/10A20/func_8000FE20_10A20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/10A20/func_8000FE50_10A50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/10A20/__osSiCreateAccessQueue.s")

void func_8000FF40_10B40(void) {
    if (__osSiAccessQueueEnabled == 0) {
        __osSiCreateAccessQueue();
    }
    osRecvMesg(&__osSiAccessQueue, &D_80068038, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/10A20/__osSiRelAccess.s")
