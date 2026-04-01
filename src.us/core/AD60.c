#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000A160_AD60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000A2B8_AEB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000A3DC_AFDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000A43C_B03C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/drawText.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000AFDC_BBDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000B044_BC44.s")

s32 func_8000C670_D270(s16 arg0) {
    s32 temp;
    temp = (D_80052AD8 - D_80053C8C) - (arg0 * 4) + 8;
    if (temp >= 0x10) {
        return 1;
    }
    return 0;
}

void func_8000C6B8_D2B8(s32 arg0) {
	D_80053C98 = arg0;
}

s32 func_8000C6C4_D2C4(void) {
	return D_80053C98;
}

/* busy-wait loop: counts 0..0x10 with 8-bit masking */
void func_8000C6D0_D2D0(s32 arg0) {
	s32 var_v0 = 0;
	s32 temp_t6;

	do {
		do {
			temp_t6 = (var_v0 = (var_v0 + 1) & 0xFF) ^ 0;
		} while (temp_t6 != 0x10);
	} while (0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000C6F4_D2F4.s")

void func_8000C764_D364(s32 arg0) {
	D_80054668[(arg0 - (s32)&D_80054680) / 0xE58] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000C790_D390.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000C81C_D41C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000CC3C_D83C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000CD54_D954.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000CDFC_D9FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000CF4C_DB4C.s")

void func_8000D26C_DE6C(Unk8007F878_404 *arg0, void *arg1) {
	arg0->unkE50 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000D278_DE78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000D384_DF84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000D588_E188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000D71C_E31C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000D8DC_E4DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000DAFC_E6FC.s")
