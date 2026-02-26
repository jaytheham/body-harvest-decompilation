#include <ultra64.h>
#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/145D70/func_80136DC0_145D70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/145D70/func_80136ECC_145E7C.s")

void func_80137130_1460E0(s32 arg0, s32 arg1, s16 arg2, s16 arg3, s16 arg4) {
	f32 temp_f1;

	if (D_8006AB88 != 0) {
		temp_f1 = func_80136DC0_145D70(arg2, arg3, arg4);
		func_80014A3C_1563C(arg0, (s16)arg1, temp_f1, func_80136ECC_145E7C(arg2, arg3, arg4), -1.0f);
	}
}

void func_801371B0_146160(s32 arg0) {

}

void func_801371B8_146168(s32 arg0, s32 arg1, s16 arg2, s16 arg3, s16 arg4, f32 arg5) {
	f32 temp_f1;

	if (D_8006AB88 != 0) {
		temp_f1 = func_80136DC0_145D70(arg2, arg3, arg4);
		func_80014A3C_1563C(arg0, (s16)arg1, temp_f1, func_80136ECC_145E7C(arg2, arg3, arg4), arg5);
	}
}

void func_80137234_1461E4(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	f32 temp_f1;

	if (D_8006AB88 != 0) {
		temp_f1 = func_80136DC0_145D70(arg1, arg2, arg3);
		func_80014A3C_1563C(0, arg0, temp_f1, func_80136ECC_145E7C(arg1, arg2, arg3), -1.0f);
	}
}

#ifdef NON_MATCHING
void func_801372B4_146264(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	f32 sp3C;
	s16 sp22;
	Struct_80140D00 sp24;

	sp24 = D_80140D00;
	sp22 = sp24.values[arg3];
	sp3C = func_80136DC0_145D70(arg0, arg1, arg2);
	func_80014A3C_1563C(0, sp22, sp3C, func_80136ECC_145E7C(arg0, arg1, arg2), -1.0f);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/145D70/func_801372B4_146264.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/145D70/func_80137368_146318.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/145D70/func_80137468_146418.s")

void func_80139018_147FC8(s32 arg0) {

}

void func_80139020_147FD0(s32 arg0) {

}

void func_80139028_147FD8(s32 arg0, s32 arg1) {

}

void func_80139034_147FE4(s32 arg0) {

}

void func_8013903C_147FEC(void) {

}
