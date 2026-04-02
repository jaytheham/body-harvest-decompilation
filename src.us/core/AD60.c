#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000A160_AD60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000A2B8_AEB8.s")

#ifdef NON_MATCHING
void func_8000A3DC_AFDC(u8 arg0, s8 *arg1) {
	s16 temp_v1;
	s32 temp_a3;
	s32 temp_t0;
	s8 var_a2;
	u8 var_v0;

	temp_v1 = arg0 * 2;
	temp_a3 = temp_v1 >> 8;
	temp_t0 = temp_v1 & 0xFF;
	var_v0 = temp_v1 & 0xFF;
	var_a2 = (s8)temp_a3;
	if (temp_t0 >= 0) {
		var_v0 = (temp_t0 + 1) & 0xFF;
	}
	if ((s8)temp_a3 >= 0) {
		var_a2 = (s8)temp_a3 + 1;
	}
	*arg1 = var_a2;
	arg1++;
	*(u8 *)arg1 = var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000A3DC_AFDC.s")
#endif

#ifdef NON_MATCHING
s16 func_8000A43C_B03C(s8 *arg0) {
	s8 var_v1;
	u8 temp_v0;
	s32 var_a0;

	var_v1 = *arg0;
	arg0++;
	temp_v0 = *(u8 *)arg0;
	if (var_v1 > 0) {
		var_v1 -= 1;
	}
	var_a0 = temp_v0;
	if (temp_v0 > 0) {
		temp_v0--;
		var_a0 = temp_v0 & 0xFF;
	}
	return (s16)((s16)((s16)(var_v1 << 8) + var_a0) / 2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000A43C_B03C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/drawText.s")

#ifdef NON_MATCHING
void func_8000AFDC_BBDC(void) {
	s8 *var_a0;
	s32 var_v1;

	D_80053BE2 = 0;
	D_80053BE4 = 0;
	D_80053BE0 = 0;
	D_80053C80 = 0;
	D_80053C82 = 0;
	D_80053C90 = 0x28;
	D_80053C92 = 0x18;
	var_a0 = &D_80053BDF;
	var_v1 = 0xFFF;
	do {
		*var_a0 = 0;
		var_a0 -= 1;
	} while (var_v1--);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000AFDC_BBDC.s")
#endif

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

#ifdef NON_MATCHING
void *func_8000C6F4_D2F4(void) {
	s32 i;
	void *ptr;

	for (i = 0; i != 6; i = (i + 1) & 0xFF) {
		if (D_80054668[i] == 0) {
			ptr = (void *)((char *)&D_80054680 + i * 0xE58);
			D_80054668[i] = (s32)ptr;
			return ptr;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000C6F4_D2F4.s")
#endif

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
