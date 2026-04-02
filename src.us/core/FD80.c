#include <ultra64.h>
#include "common.h"


/* Out-of-line epilogue of func_8000EFB8_FBB8.
 * That function saves ra with a 0x20-byte frame, then ends in an
 * infinite loop (osSetThreadPri + b self). The compiler placed the
 * matching frame restore here at the start of the next linker segment
 * (FD80). There is no caller: the function is physically unreachable
 * via jal. It cannot be reproduced as a standalone C function without
 * a prologue appearing before the restores. */
#ifdef NON_MATCHING
void func_8000F180_FD80(void) {
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/FD80/func_8000F180_FD80.s")
#endif

void func_8000F190_FD90(void (*arg0)(void *)) {
	D_80067A48.next = NULL;
	D_80067A48.queue = NULL;
	osCreateThread(&D_80067A48, 8, arg0, NULL, &D_80067388, 3);
	osStartThread(&D_80067A48);
}

void func_8000F1E8_FDE8(void) {
	osStopThread(&D_80067A48);
	osDestroyThread(&D_80067A48);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/FD80/func_8000F218_FE18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/FD80/func_8000F368_FF68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/FD80/func_8000F478_10078.s")

void func_8000F5A8_101A8(s32 arg0, s32 arg1, s32 arg2) {
    OSIoMesg sp28;

    func_8001F2E0_1FEE0();
    osPiStartDma(&sp28, 0, 0, arg0, (void *)arg1, arg2, &D_80067FD0);
    osRecvMesg(&D_80067FD0, &D_80068038, 1);
}

void func_8000F618_10218()
{
	func_8000A160();
	osViSetSpecialFeatures(OS_VI_GAMMA_OFF);
	osViSetSpecialFeatures(OS_VI_DITHER_FILTER_ON);
}

void setVideoInterfaceXSize(s32 arg0) {
	D_80068084 = arg0;
	D_8006808C = (f32) arg0 / 320.0f;
	D_8006809C = 2;
}

void setVideoInterfaceYSize(s32 arg0) {
	D_80068088 = arg0;
	D_80068090 = (f32) arg0 / 240.0f;
	D_8006809C = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/FD80/func_8000F6B0_102B0.s")
