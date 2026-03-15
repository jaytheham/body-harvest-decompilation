#include <ultra64.h>
#include "common.h"

f32 func_80136DC0_145D70(s16 arg0, s16 arg1, s16 arg2) {
	f32 temp_f0;
	f32 temp_f2;
	f32 temp_f14;

	if (D_8006AB88 == 0) {
		return 0.0f;
	}
	if (D_80157F68 > 0) {
		temp_f0 = (f32)arg0 - D_80157F08.unk0;
		temp_f2 = (f32)arg1 - D_80157F08.unk4;
		temp_f14 = (f32)arg2 - D_80157F08.unk8;
		return sqrtf(temp_f0 * temp_f0 + temp_f2 * temp_f2 + temp_f14 * temp_f14);
	}
	temp_f0 = (f32)arg0 - D_80160080.unk0;
	temp_f2 = (f32)arg1 - D_80160080.unk4;
	temp_f14 = (f32)arg2 - D_80160080.unk8;
	return sqrtf(temp_f0 * temp_f0 + temp_f2 * temp_f2 + temp_f14 * temp_f14);
}
s16 func_80136ECC_145E7C(s16 arg0, s16 arg1, s16 arg2) {
    f32 sp44;
    f32 sp28;
    s16 sp20;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 var_f0;
    f32 var_f2;
    s16 var_v1;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_t4;
    volatile s32 dummy_s1;

    if (D_8006AB88 == 0) {
        return 0;
    }
    if (D_80157F68 > 0) {
        temp_f2 = (f32) arg0 - ((Unk80052B2C*) &D_80157F08)->unk0;
        temp_f0 = (f32) arg2 - ((Unk80052B2C*) &D_80157F08)->unk8;
        sp28 = temp_f2;
        sp20 = 0x4000 - func_80003680_4280(temp_f2 / sqrtf((temp_f2 * temp_f2) + (temp_f0 * temp_f0)));
        temp_f2_2 = (f32) ((Unk80052B2C*) &D_80157F08)->unk18 - ((Unk80052B2C*) &D_80157F08)->unk0;
        temp_f0_2 = (f32) ((Unk80052B2C*) &D_80157F08)->unk1A - ((Unk80052B2C*) &D_80157F08)->unk8;
        sp44 = temp_f2_2;
        var_f0 = sqrtf((temp_f2_2 * temp_f2_2) + (temp_f0_2 * temp_f0_2));
        var_f2 = temp_f2_2;
    } else {
        temp_f2_3 = (f32) arg0 - ((Unk80160080*) &D_80160080)->unk0;
        temp_f0_3 = (f32) arg2 - ((Unk80160080*) &D_80160080)->unk8;
        sp28 = temp_f2_3;
        temp_f2_4 = ((Unk80160080*) &D_80160080)->unkC - ((Unk80160080*) &D_80160080)->unk0;
        temp_f0_4 = ((Unk80160080*) &D_80160080)->unk14 - ((Unk80160080*) &D_80160080)->unk8;
        sp20 = 0x4000 - func_80003680_4280(temp_f2_3 / sqrtf((temp_f2_3 * temp_f2_3) + (temp_f0_3 * temp_f0_3)));
        sp44 = temp_f2_4;
        var_f0 = sqrtf((temp_f2_4 * temp_f2_4) + (temp_f0_4 * temp_f0_4));
        var_f2 = temp_f2_4;
    }
    if (var_f0 == 0.0f) {
        return 0;
    }
    temp_v0 = func_80003680_4280(var_f2 / var_f0);
    if (D_80157F68 > 0) {
        var_t4 = ((s32) ((Unk80052B2C*) &D_80157F08)->unk8 - ((Unk80052B2C*) &D_80157F08)->unk1A) << 0x10;
    } else {
        var_t4 = ((s32) ((Unk80160080*) &D_80160080)->unk14 - (s32) ((Unk80160080*) &D_80160080)->unk8) << 0x10;
    }
    temp_v1 = var_t4 >> 0x10;
    if (temp_v1 < 0) {
        var_v1 = (0x4000 - temp_v0) - sp20;
    } else if (temp_v1 > 0) {
        var_v1 = sp20 - (0x4000 - temp_v0);
    } else {
        var_v1 = 0;
    }
    return var_v1;
}

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

void func_801372B4_146264(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	f32 sp3C;
	s32 sp38;
	s32 sp34;
	Struct_80140D00 sp24;
	s16 sp22;

	sp24 = D_80140D00;
	sp22 = sp24.values[arg3];
	sp3C = func_80136DC0_145D70(arg0, arg1, arg2);
	func_80014A3C_1563C(0, sp22, sp3C, func_80136ECC_145E7C(arg0, arg1, arg2), -1.0f);
}

void func_80137368_146318(s16 arg0, s16 arg1, s16 arg2, u8 arg3, s16 arg4) {
	f32 sp4C;
	s32 sp48;
	s32 sp44;
	Struct_80140D10 sp28;

	sp28 = D_80140D10;
	if (D_8006AB88 != 0 && sp28.values[arg3] != -1) {
		sp44 = (s32)&sp44 + arg4 * 4 + 4;
		sp4C = func_80136DC0_145D70(arg0, arg1, arg2);
		sp48 = func_80136ECC_145E7C(arg0, arg1, arg2);
		func_80014A3C_1563C(sp44, sp28.values[arg3], sp4C, sp48, -1.0f);
	}
}

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
