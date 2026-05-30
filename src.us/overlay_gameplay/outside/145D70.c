#include <ultra64.h>
#include "common.h"

Struct_80140D00 D_80140D00_14FCB0 = {{
	0x015E, 0x00D6, 0x017D, 0x00AA, 0x00D7, -1, 0x00EB, 0x0061,
}};

Struct_80140D10 D_80140D10_14FCC0 = {{
	0x007A, 0x00FB, 0x00FB, 0x00FC, 0x0101, 0x00FD, -1,
	0x00FE, 0x00FA, -1, 0x0100, 0x0101, -1, 0x00EB,
}};

u8 D_80140D2C_14FCDC[] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00,
};

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

// CURRENT(2431)
#ifdef NON_MATCHING
s16 func_80136ECC_145E7C(s16 arg0, s16 arg1, s16 arg2) {
	f32 sp44;
	s32 pad0;
	s32 pad1;
	f32 sp28;
	f32 temp_f0;
	f32 temp_f0_2;
	f32 temp_f2;
	f32 temp_f2_2;
	f32 var_f0;
	f32 var_f2;
	s16 sp20;
	s16 var_v1;
	s32 temp_v0;
	s32 temp_v1;
	s32 var_t4;

	arg1 = arg1;
	pad0 = 0;
	pad1 = 0;

	if (D_8006AB88 == 0) {
		return 0;
	}

	if (D_80157F68 > 0) {
		temp_f2 = (f32)arg0 - D_80157F08.unk0;
		temp_f0 = (f32)arg2 - D_80157F08.unk8;
		sp28 = temp_f2;
		sp20 = 0x4000 - func_80003680_4280(temp_f2 / sqrtf((temp_f2 * temp_f2) + (temp_f0 * temp_f0)));
		temp_f2_2 = (f32)D_80157F08.unk18 - D_80157F08.unk0;
		temp_f0_2 = (f32)D_80157F08.unk1A - D_80157F08.unk8;
		sp44 = temp_f2_2;
		var_f0 = sqrtf((temp_f2_2 * temp_f2_2) + (temp_f0_2 * temp_f0_2));
		var_f2 = temp_f2_2;
	} else {
		temp_f2_2 = (f32)arg0 - D_80160080.unk0;
		temp_f0_2 = (f32)arg2 - D_80160080.unk8;
		sp28 = temp_f2_2;
		sp20 = 0x4000 - func_80003680_4280(temp_f2_2 / sqrtf((temp_f2_2 * temp_f2_2) + (temp_f0_2 * temp_f0_2)));
		temp_f2 = D_80160080.unkC - D_80160080.unk0;
		temp_f0 = D_80160080.unk14 - D_80160080.unk8;
		sp44 = temp_f2;
		var_f0 = sqrtf((temp_f2 * temp_f2) + (temp_f0 * temp_f0));
		var_f2 = temp_f2;
	}

	if (var_f0 == 0.0f) {
		return 0;
	}

	temp_v0 = func_80003680_4280(var_f2 / var_f0);
	if (D_80157F68 > 0) {
		var_t4 = ((s32)D_80157F08.unk8 - D_80157F08.unk1A) << 0x10;
	} else {
		var_t4 = ((s32)D_80160080.unk14 - (s32)D_80160080.unk8) << 0x10;
	}
	temp_v1 = var_t4 >> 0x10;

	if (temp_v1 < 0) {
		var_v1 = (0x4000 - temp_v0) - sp20;
	} else {
		if (temp_v1 > 0) {
			var_v1 = sp20 - (0x4000 - temp_v0);
		} else {
			var_v1 = 0;
		}
	}

	return var_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/145D70/func_80136ECC_145E7C.s")
#endif

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

	sp24 = D_80140D00_14FCB0;
	sp22 = sp24.values[arg3];
	sp3C = func_80136DC0_145D70(arg0, arg1, arg2);
	func_80014A3C_1563C(0, sp22, sp3C, func_80136ECC_145E7C(arg0, arg1, arg2), -1.0f);
}

void func_80137368_146318(s16 arg0, s16 arg1, s16 arg2, u8 arg3, s16 arg4) {
	f32 sp4C;
	s32 sp48;
	s32 sp44;
	Struct_80140D10 sp28;

	sp28 = D_80140D10_14FCC0;
	if (D_8006AB88 != 0 && sp28.values[arg3] != -1) {
		sp44 = (s32)&sp44 + arg4 * 4 + 4;
		sp4C = func_80136DC0_145D70(arg0, arg1, arg2);
		sp48 = func_80136ECC_145E7C(arg0, arg1, arg2);
		func_80014A3C_1563C(sp44, sp28.values[arg3], sp4C, sp48, -1.0f);
	}
}

/* CURRENT(267676) */
#ifdef NON_MATCHING
void func_80137468_146418(s32 arg0, s32 arg1) {
	AlienInstance *alien;

	if (D_8006AB88 == 0) {
		return;
	}

	func_800038E0_44E0();
	D_80140D2C_14FCDC[0] += 1;

	alien = &alienInstances[arg0];

	switch (arg1) {
		case 1:
			func_80137130_1460E0(0, 0x14B, alien->unk0, alien->unk2, alien->unk4);
			break;
		case 2:
			func_80137130_1460E0(0, 0xAB, alien->unk0, alien->unk2, alien->unk4);
			break;
		case 3:
			func_80137130_1460E0(0, 0xDB, alien->unk0, alien->unk2, alien->unk4);
			break;
		case 4:
			func_80137130_1460E0(0, 0xB3, alien->unk0, alien->unk2, alien->unk4);
			break;
		case 8:
			func_80137130_1460E0(0, 0xE6, alien->unk0, alien->unk2, alien->unk4);
			break;
		case 9:
			func_80137130_1460E0(0, 0xCC, alien->unk0, alien->unk2, alien->unk4);
			break;
		case 0xA:
			func_80137130_1460E0(0, 0xB0, alien->unk0, alien->unk2, alien->unk4);
			break;
		default:
			break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/145D70/func_80137468_146418.s")
#endif

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
