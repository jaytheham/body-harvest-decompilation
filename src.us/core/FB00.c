#include <ultra64.h>
#include "common.h"

void sourceTaggedPrintF(char *arg0, char *arg1, s32 arg2) {
}

void func_8000EF10_FB10(s32 arg0) {
	D_80068078 = 0;
	bzero(&D_8003FB20, 0x803FFFFF - (s32)(&D_8003FB20));
	osInitialize();
	D_80067388.next = NULL;
	D_80067388.queue = NULL;
	osCreateThread(&D_80067388, 1, func_8000EFB8_FBB8, NULL, &D_8005C760, 0xA);
	osStartThread(&D_80067388);
}

void func_8000EF98_FB98(void) {
	osViModeTable[16].fldRegs[0].vStart = 0x330251;
	osViModeTable[16].fldRegs[0].yScale = 0x36D;
}

void func_8000EFB8_FBB8(void *arg0) {
    s16 *ptr;

    ptr = D_80267080; do {
        ptr += 4;
        ptr[-3] = 0;
        ptr[-2] = 0;
        ptr[-1] = 0;
        ptr[-4] = 0;
        continue;
    } while (ptr != (s16 *)&D_802B2080);
    osCreateViManager(0xFE);
    if (osTvType == 0) {
        func_8000EF98_FB98();
        osViSetMode(&D_80035B30_36730);
    } else if (osTvType == 2) {
        osViSetMode(&D_80035F90_36B90);
    } else {
        osViSetMode(&D_800356D0_362D0);
    }
    osViSwapBuffer(D_80267080);
    D_80067538.next = NULL;
    D_80067538.queue = NULL;
    osCreateThread(&D_80067538, 6, func_8000F6B0_102B0, arg0, D_8005CF68, 8);
    D_800676E8.next = NULL;
    D_800676E8.queue = NULL;
    osCreateThread(&D_800676E8, 3, func_8000FE50_10A50, arg0, D_80064F70, 4);
    D_80067898.next = NULL;
    D_80067898.queue = NULL;
    osCreateThread(&D_80067898, 7, func_80002EF8_3AF8, arg0, D_80066780, 5);
    func_8000F218_FE18();
    osCreatePiManager(0x96, &D_80068060, D_80068040, 8);
    func_800047D0_53D0(9, 5);
    osStartThread(&D_80067538);
    osStartThread(&D_80067898);
    osStartThread(&D_800676E8);
    osSetThreadPri(0, 0);
    for (;;);
}
