#define OVERLAY_ENTRY_AS_FUNC
#include <ultra64.h>
#include "common.h"


/* Out-of-line epilogue of func_8000F6B0_102B0.
 * The main game-loop function (102B0) saves s0-s7/s8/ra with a 0xA0-byte
 * stack frame, then ends in an infinite loop (osDestroyThread paths).
 * The compiler placed the matching restores here at the start of the
 * next linker segment (10A20).  There is no caller: the function is
 * physically unreachable via jal.  It cannot be reproduced as a
 * standalone C function without a prologue appearing before the restores. */
#ifdef NON_MATCHING
void func_8000FE20_10A20(void) {
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/10A20/func_8000FE20_10A20.s")
#endif

void func_8000FE50_10A50(void *arg0) {
    osRecvMesg(&D_8006A8D0, &D_80068038, 1);
    osViSetSpecialFeatures(0x40);
    func_8000F618_10218();
    D_80052ACA = 3;
    func_800056A8_62A8();
    func_800056A8_62A8();
    osRecvMesg(&D_8006A8F0, &D_80068038, 1);
    func_80001984_2584();
    osSyncPrintf(&D_80037764_38364, 0x28928);
    loadFrontendData();
    func_80070270(1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/10A20/__osSiCreateAccessQueue.s")

void func_8000FF40_10B40(void) {
	if (__osSiAccessQueueEnabled == 0) {
		__osSiCreateAccessQueue();
	}
	osRecvMesg(&__osSiAccessQueue, &D_80068038, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/10A20/__osSiRelAccess.s")
