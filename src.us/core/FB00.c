#include <ultra64.h>
#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/core/FB00/sourceTaggedPrintF.s")

void func_8000EF10_FB10(s32 arg0) {
    D_80068078 = 0;
    bzero(&D_8003FB20, 0x803FFFFF - (s32)(&D_8003FB20));
    osInitialize();
    D_80067388.next = NULL;
    D_80067388.queue = NULL;
    osCreateThread(&D_80067388, 1, func_8000EFB8_FBB8, NULL, &D_8005C760, 0xA);
    osStartThread(&D_80067388);
}

#ifdef NON_MATCHING
void func_8000EF98_FB98(void) {
    osViModeTable[16].fldRegs[0].yScale = 0x330251;
    osViModeTable[16].fldRegs[0].vStart = 0x36D;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/FB00/func_8000EF98_FB98.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/FB00/func_8000EFB8_FBB8.s")
