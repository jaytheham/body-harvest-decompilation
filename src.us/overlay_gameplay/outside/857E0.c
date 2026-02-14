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

void func_80076868_85818(s32 arg0) {
	s32 i;
	s32* ptr_count;
	s8 neg_one;

	for (i = 0; i < D_8014D2EC; i++) {
		if (arg0 == *(u16*)D_8014D298[i]) {
			func_800769A8_85958(i);
		}
	}

	neg_one = -1;
	D_80259D92[arg0][0] = neg_one;
	ptr_count = &D_8014D2E8;
	*ptr_count = *ptr_count - 1;
	D_8014D200[*ptr_count] = (u8)arg0;
}

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

void func_800786EC_8769C(u16* arg0, s32 arg1) {
    s32 temp_v1;
    u16 temp_v0;

    temp_v0 = *arg0;
    temp_v1 = arg1 * 4;
    if ((((s32) temp_v0 >> temp_v1) & 0xF) >= 0xE) {
        *arg0 = temp_v0 & ~(0xF << temp_v1);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078720_876D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078828_877D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078B58_87B08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078BC8_87B78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078D64_87D14.s")

void func_80078F5C_87F0C(s16 arg0, s16 arg1, u16 arg2) {
	u16 temp_v1;
	s32 temp_v0;

	temp_v0 = func_80078BC8_87B78(arg0, arg1);
	temp_v1 = arg2;
	if (temp_v0 != -1) {
		if (temp_v1 == 0) {
			func_80076868_85818(temp_v0);
			return;
		}
		D_80259D98[temp_v0].unk0 = D_80222A30[temp_v1];
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078FE0_87F90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_800792E0_88290.s")

s32 func_800794F8_884A8(s32 arg0, s32 arg1) {
	return 0;
}
