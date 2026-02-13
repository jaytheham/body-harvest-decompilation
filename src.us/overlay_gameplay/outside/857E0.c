#include <ultra64.h>
#include "common.h"


s32 func_80076830_857E0(void) {
	s32 index;
	u8* ptr;
	u8 value;

	index = D_8014D2E8;
	ptr = &D_8014D200[index];
	if (index == 0x96) {
		return -1;
	}

	value = *ptr;
	D_8014D2E8 = index + 1;
	return value;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80076868_85818.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80076918_858C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_800769A8_85958.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80076A10_859C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80076FCC_85F7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_800770D8_86088.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_800772EC_8629C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_8007764C_865FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078530_874E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_800785B4_87564.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078678_87628.s")

void func_800786CC_8767C(u16* arg0, s32 arg1) {
    *arg0 &= ~(0xF << (arg1 * 4));
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_800786EC_8769C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078720_876D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078828_877D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078B58_87B08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078BC8_87B78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078D64_87D14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078F5C_87F0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078FE0_87F90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_800792E0_88290.s")

s32 func_800794F8_884A8(s32 arg0, s32 arg1) {
	return 0;
}
