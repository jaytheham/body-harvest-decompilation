#include <ultra64.h>
#include "common.h"

Struct_80140D00 D_80140D00_14FCB0 = {{
	0x015E, 0x00D6, 0x017D, 0x00AA, 0x00D7, -1, 0x00EB, 0x0061,
}};

Struct_80140D10 D_80140D10_14FCC0 = {{
	0x007A, 0x00FB, 0x00FB, 0x00FC, 0x0101, 0x00FD, -1,
	0x00FE, 0x00FA, -1, 0x0100, 0x0101, -1, 0x00EB,
}};

u8 D_80140D2C_14FCDC = 0;
u8 D_80140D30_14FCE0[16] = {0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0};

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
	s32 pad0;
	f32 temp_f2_2;
	f32 sp28;
	f32 temp_f0;
	f32 temp_f0_2;
	f32 padFloat0;
	f32 padFloat1;
	f32 var_f0;
	f32 temp_f2;
	s32 padS0;
	s16 padS1;
	s16 sp20;
	s16 var_v1;
	s32 temp_v0;
	s32 temp_v1;

	arg1 = arg1;

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
	} else {
		temp_f2 = (f32)arg0 - D_80160080.unk0;
		temp_f0 = (f32)arg2 - D_80160080.unk8;
		sp28 = temp_f2;
		sp20 = 0x4000 - func_80003680_4280(temp_f2 / sqrtf((temp_f2 * temp_f2) + (temp_f0 * temp_f0)));
		temp_f2_2 = D_80160080.unkC - D_80160080.unk0;
		temp_f0_2 = D_80160080.unk14 - D_80160080.unk8;
		sp44 = temp_f2_2;
		var_f0 = sqrtf((temp_f2_2 * temp_f2_2) + (temp_f0_2 * temp_f0_2));
	}

	if (var_f0 == 0.0f) {
		return 0;
	}

	temp_v0 = func_80003680_4280(temp_f2_2 / var_f0);
	if (D_80157F68 > 0) {
		var_v1 = (s16)D_80157F08.unk8 - D_80157F08.unk1A;
	} else {
		var_v1 = (s16)D_80160080.unk14 - (s16)D_80160080.unk8;
	}

	if (var_v1 < 0) {
		var_v1 = (s16)(0x4000 - temp_v0) - sp20;
	} else {
		if (var_v1 > 0) {
			var_v1 = sp20 - (s16)(0x4000 - temp_v0);
		} else {
			var_v1 = 0;
		}
	}

	return var_v1;
}

void func_80137130_1460E0(s32 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
	f32 temp_f1;

	if (D_8006AB88 != 0) {
		temp_f1 = func_80136DC0_145D70(arg2, arg3, arg4);
		func_80014A3C_1563C(arg0, (s16)arg1, temp_f1, func_80136ECC_145E7C(arg2, arg3, arg4), -1.0f);
	}
}

void func_801371B0_146160(s32 arg0) {

}

// AI - Play a 3D positional sound effect (ID arg1) at world position (arg2,arg3,arg4) when audio is enabled
void func_801371B8_146168(void *arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, f32 arg5) {
	f32 temp_f1;

	if (D_8006AB88 != 0) {
		temp_f1 = func_80136DC0_145D70(arg2, arg3, arg4);
		func_80014A3C_1563C(arg0, (s16)arg1, temp_f1, func_80136ECC_145E7C(arg2, arg3, arg4), arg5);
	}
}

void func_80137234_1461E4(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s32 unused) {
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

// Play alien sounds?
void func_80137468_146418(s32 arg0, s32 arg1) {
	s32 temp_v1;
	s32 temp_v2;
	s32 temp_v3;
	s32 pad;
	Unk8006AA80Node *temp_v0;
	u16 random;
	AlienInstance *alien;
	f32 pitch;

	if (D_8006AB88 != 0) {
		random = func_800038E0_44E0();
		D_80140D2C_14FCDC = D_80140D2C_ReadInitial + 1;
		if (arg1 < 0x64) {
			switch (arg1) {
			case 1:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0x14B, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0x2:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xAB, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0x3:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xDB, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0x6:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xB3, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0x7:
				alien = &alienInstances[arg0];
				pitch = (f32) (((f32) alien->unk2 / 1200.0f) * 0.68899999999999994582 * 0.80000000000000004441);
				func_801371B8_146168(alien, 0x151, alien->unk0, alien->unk2, alien->unk4, pitch);
				return;
			case 0x25:
				alien = &alienInstances[arg0];
				pitch = (f32) (((f32) alien->unk2 / 1200.0f) * 0.68899999999999994582 * 1.3999999999999999112);
				func_801371B8_146168(alien, 0x151, alien->unk0, alien->unk2, alien->unk4, pitch);
				return;
			case 0x275:
				alien = &alienInstances[arg0];
				pitch = (f32) (((f32) alien->unk2 / 1200.0f) * 0.48899999999999999023 * 0.80000000000000004441);
				func_801371B8_146168(alien, 0x151, alien->unk0, alien->unk2, alien->unk4, pitch);
				return;
			case 0x8:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xE6, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0x9:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xCC, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0xA:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xB0, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0xB:
				alien = &alienInstances[arg0];
				func_801371B8_146168(&alienInstances[arg0], (s16)(D_80140D2C_ReadPair[0] % 2) + 0xAC, alien->unk0,
					alien->unk2, alien->unk4, -1.0f);
				return;
			case 0xC:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xB4, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0xD:
				alien = &alienInstances[arg0];
				
				func_801371B8_146168(0, (s32)random % 4 + 0x104, alien->unk0, alien->unk2,
					alien->unk4, (f32) (((f32) ((s32)random % 100) / 1000.0) + 0.69999999999999995559));
				return;
			case 0xE:
				alien = &alienInstances[arg0];
				
				func_801371B8_146168(0, (s32)random % 4 + 0x104, alien->unk0, alien->unk2,
					alien->unk4, (f32) (((f32) ((s32)random % 100) / 1000.0) + 0.55000000000000004441));
				return;
			case 0xF:
				alien = &alienInstances[arg0];
				
				func_801371B8_146168(0, (s32)random % 4 + 0x104, alien->unk0, alien->unk2,
					alien->unk4, (f32) (((f32) ((s32)random % 100) / 1000.0) + 0.4000000000000000222));
				return;
			case 0x10:
				alien = &alienInstances[arg0];
				
				func_801371B8_146168(0, (s32)random % 4 + 0x104, alien->unk0, alien->unk2,
					alien->unk4, (f32) (((f32) ((s32)random % 100) / 1000.0) + 0.2000000000000000111));
				return;
			case 0x11:
				alien = &alienInstances[arg0];
				
				func_801371B8_146168(0, 0x108, alien->unk0, alien->unk2, alien->unk4, (f32) (((f32) ((s32)random % 300) / 1000.0) + 0.5));
				return;
			case 0x15:
				alien = &alienInstances[arg0];
				func_801371B8_146168(alien, 0xF2, alien->unk0, alien->unk2, alien->unk4, -1.0f);
				return;
			case 0x19:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0x152, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0x1A:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xDB, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0x1B:
				alien = &alienInstances[arg0];
				func_801371B8_146168(alien, 0x17F, alien->unk0, alien->unk2, alien->unk4,
					0.60000002384185791016f);
				return;
			case 0x1C:
				alien = &alienInstances[arg0];
				func_801371B8_146168(alien, 0x1D, alien->unk0, alien->unk2, alien->unk4, -1.0f);
				return;
			case 0x1D:
				alien = &alienInstances[arg0];
				pitch = (f32) (((f32) alien->unk2 / 952.0) * 0.75);
				func_801371B8_146168(alien, 0xAE, alien->unk0, alien->unk2, alien->unk4, pitch);
				return;
			case 0x1E:
				alien = &alienInstances[arg0];
				func_801371B8_146168(alien, 0x10, alien->unk0, alien->unk2, alien->unk4, -1.0f);
				return;
			case 0x1F:
				alien = &alienInstances[arg0];
				func_801371B8_146168(alien, 0xB8, alien->unk0, alien->unk2, alien->unk4, -1.0f);
				return;
			case 0x20:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, D_80140D2C_ReadTriple[0] % 3 + 0xEE, alien->unk0, alien->unk2,
					alien->unk4);
				return;
			case 0x21:
				alien = &alienInstances[arg0];
				func_80014A3C_1563C(&alienInstances[33], 0xB7, 0, 0, -1.0f);
				return;
			case 0x22:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xCC, alien->unk0, alien->unk2, alien->unk4);
				return;
			}
			return;
		}

		if (arg1 >= 0x64 && arg1 < 0xC8) {
			switch (arg1) {
			case 0x64:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xB6, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0x65:
				alien = &alienInstances[arg0];
				func_801371B8_146168(alien, 0xB5, alien->unk0, alien->unk2, alien->unk4, -1.0f);
				return;
			case 0x66:
				alien = &alienInstances[arg0];
				pitch = (f32) (((f32) alien->unk2 / 952.0) * 0.75);
				func_801371B8_146168(alien, 0xAE, alien->unk0, alien->unk2, alien->unk4, pitch);
				return;
			case 0x67:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xB1, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0x69:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0x7C, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0x6A:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xB2, alien->unk0, alien->unk2, alien->unk4);
				return;
			default:
				return;
			}
		}

		if (arg1 >= 0xC8 && arg1 < 0x12C) {
			switch (arg1) {
			case 0xC9:
			case 0xCA:
				return;
			case 0xCB:
				alien = &alienInstances[arg0];
				func_801371B8_146168(alien, 0x36, alien->unk0, alien->unk2, alien->unk4, -1.0f);
				return;
			case 0xCC:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xCC, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0xCD:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xB0, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0xCF:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0x8D, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0xD0:
				alien = &alienInstances[arg0];
				temp_v0 = func_80012778_13378(alien);
				if (temp_v0 != 0) {
					alien = &alienInstances[arg0];
					pitch = (f32) (((f32) (((alien->unk4 - temp_v0->unk16) * (alien->unk4 - temp_v0->unk16)) + ((alien->unk0 - temp_v0->unk12) * (alien->unk0 - temp_v0->unk12))) * 7.499999999999999343e-05) + 0.10000000000000000555);
					func_801371B8_146168(alien, 0x26, alien->unk0, alien->unk2, alien->unk4, pitch);
					temp_v0->unk12 = alien->unk0;
					temp_v0->unk14 = alien->unk2;
					temp_v0->unk16 = alien->unk4;
				} else {
					alien = &alienInstances[arg0];
					func_801371B8_146168(alien, 0x26, alien->unk0, alien->unk2, alien->unk4, -1.0f);
				}
				return;
			case 0xD2:
				alien = &alienInstances[arg0];
				func_801371B8_146168(alien, 0xB9, alien->unk0, alien->unk2, alien->unk4, -1.0f);
				return;
			case 0xD5:
				alien = &alienInstances[arg0];
				func_801371B8_146168(alien, 0xB9, alien->unk0, alien->unk2, alien->unk4, -1.0f);
				return;
			case 0xD6:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xB4, alien->unk0, alien->unk2, alien->unk4);
				return;
			default:
				return;
			}
		}

		if (arg1 >= 0x12C && arg1 < 0x190) {
			switch (arg1) {
			case 0x12D:
				alien = &alienInstances[arg0];
				func_801371B8_146168(alien, 0xAF, alien->unk0, alien->unk2, alien->unk4, 0.10000000149011611938f);
				return;
			case 0x12E:
				alien = &alienInstances[arg0];
				pitch = (f32) ((f32)(0x12C - ((-alien->unk48 < alien->unk48) ? alien->unk48 : -alien->unk48) < 0 ? 0 : 0x12C - ((-alien->unk48 < alien->unk48) ? alien->unk48 : -alien->unk48)) * 0.18 / 300.0);
				pitch += 0.10000000000000000555;
				func_801371B8_146168(alien, 0xAF, alien->unk0, alien->unk2, alien->unk4, pitch);
				return;
			case 0x12F:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(alien, 0xB0, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0x130:
				alien = &alienInstances[arg0];
				pitch = (f32) (((f32) alien->unk2 / 1900.0f) * 0.5);
				func_801371B8_146168(alien, 0x10, alien->unk0, alien->unk2, alien->unk4, pitch);
				return;
			case 0x131:
				alien = &alienInstances[arg0];
				
				func_801371B8_146168(0, 0xB1, alien->unk0, alien->unk2, alien->unk4, (f32) (((f32) ((s32)random % 300) / 1000.0) + 0.10000000000000000555));
				return;
			case 0x134:
				alien = &alienInstances[arg0];
				func_801371B8_146168(0, 0x6A, alien->unk0, alien->unk2, alien->unk4, 0.3f);
				return;
			case 0x135:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xB2, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0x136:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xB3, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0x138:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xB4, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0x139:
				alien = &alienInstances[arg0];
				func_801371B8_146168(alien, 0x10, alien->unk0, alien->unk2, alien->unk4, -1.0f);
				return;
			case 0x13A:
				alien = &alienInstances[arg0];
				func_801371B8_146168(alien, 0x7E, alien->unk0, alien->unk2, alien->unk4, -1.0f);
				return;
			case 0x13B:
				alien = &alienInstances[arg0];
				func_801371B8_146168(alien, 0x7F, alien->unk0, alien->unk2, alien->unk4, -1.0f);
				return;
			case 0x13C:
				alien = &alienInstances[arg0];
				func_801371B8_146168(alien, 0xB7, alien->unk0, alien->unk2, alien->unk4, -1.0f);
				return;
			case 0x13D:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xB4, alien->unk0, alien->unk2, alien->unk4);
				return;
			case 0x13E:
			case 0x13F:
				return;
			default:
				return;
			}
		}

		if (arg1 >= 0x190 && arg1 < 0x1F4) {
				switch (arg1) {
					case 0x191:
						alien = &alienInstances[arg0];
						func_801371B8_146168(alien, 0x10, alien->unk0, alien->unk2, alien->unk4, -1.0f);
						return;
					case 0x192:
						alien = &alienInstances[arg0];
						func_801371B8_146168(0, 0x8E, alien->unk0, alien->unk2, alien->unk4, -1.0f);
						return;
					case 0x193:
						alien = &alienInstances[arg0];
						pitch = (f32) (((f64) (f32) alien->unk2 / 952.0) * 0.75);
						func_801371B8_146168(alien, 0xAE, alien->unk0, alien->unk2, alien->unk4, pitch);
						return;
					case 0x194:
						alien = &alienInstances[arg0];
						func_80137130_1460E0(0, 0xF3, alien->unk0, alien->unk2, alien->unk4);
						return;
					case 0x196:
						alien = &alienInstances[arg0];
						func_80137130_1460E0(0, 0xCC, alien->unk0, alien->unk2, alien->unk4);
						return;
					case 0x197:
						alien = &alienInstances[arg0];
						func_80137130_1460E0(0, 0xB2, alien->unk0, alien->unk2, alien->unk4);
						return;
					case 0x19B:
						alien = &alienInstances[arg0];
						func_801371B8_146168(alien, 0xAF, alien->unk0, alien->unk2, alien->unk4, -1.0f);
						return;
					case 0x19C:
						alien = &alienInstances[arg0];
						func_80137130_1460E0(0, 0x7D, alien->unk0, alien->unk2, alien->unk4);
						return;
					default:
						return;
				}
		}

		if (arg1 >= 0x1F4) {
			switch (arg1) {
				case 0x1F4:
				alien = &alienInstances[arg0];
				func_80137130_1460E0(0, 0xB2, alien->unk0, alien->unk2, alien->unk4);
				return;
			
				case 0x258:
					alien = &alienInstances[arg0];
					func_80137130_1460E0(0, 0x180, alien->unk0, alien->unk2, alien->unk4);
					return;
				case 0x259:
					alien = &alienInstances[arg0];
					func_801371B8_146168(0, 0xE8, alien->unk0, alien->unk2, alien->unk4, 0.5f);
					func_80137130_1460E0(0, 0xB4, alien->unk0, alien->unk2, alien->unk4);
					return;
				case 0x25A:
					alien = &alienInstances[arg0];
					func_801371B8_146168(0, 0xE8, alien->unk0, alien->unk2, alien->unk4, 0.79000002145767211914f);
					return;
				case 0x261:
					alien = &alienInstances[arg0];
					func_801371B8_146168(alien, 0xB9, alien->unk0, alien->unk2, alien->unk4, 1.0f);
					return;
				case 0x262:
					alien = &alienInstances[arg0];
					func_801371B8_146168(alien, 0x184, alien->unk0, alien->unk2, alien->unk4, 1.0f);
					return;
				case 0x263:
					alien = &alienInstances[arg0];
					
					func_801371B8_146168(0, 0x185, alien->unk0, alien->unk2, alien->unk4, (f32) (((f64) (f32) ((s32)random % 100) / 1000.0) + 0.25));
					return;
				case 0x274:
					alien = &alienInstances[arg0];
					
					func_801371B8_146168(0, 0x185, alien->unk0, alien->unk2, alien->unk4, (f32) (((f64) (f32) ((s32)random % 100) / 1000.0) + 0.4000000000000000222));
					return;
				case 0x264:
					alien = &alienInstances[arg0];
					func_80137130_1460E0(0, 0x186, alien->unk0, alien->unk2, alien->unk4);
					return;
				case 0x266:
				case 0x267:
				case 0x268:
					alien = &alienInstances[arg0];
					pitch = (f32) (((f32) alien->unk12 / 1280.0f) + 0.5);
					func_801371B8_146168(alien, 0x187, alien->unk0, alien->unk2, alien->unk4, pitch);
					return;
				case 0x26A:
				case 0x26B:
					alien = &alienInstances[arg0];
					pitch = (f32) (((f64) ((f32) alien->unk12 / 1280.0f) * 0.69999999999999995559) + 0.10000000000000000555);
					func_801371B8_146168(alien, 0x184, alien->unk0, alien->unk2, alien->unk4, pitch);
					return;
				case 0x26C:
					alien = &alienInstances[arg0];
					func_801371B8_146168(0, 0x185, alien->unk0, alien->unk2, alien->unk4, 0.25f);
					return;
				case 0x269:
					alien = &alienInstances[arg0];
					func_801371B8_146168(alien, 0x32, alien->unk0, alien->unk2, alien->unk4, 0.3f);
					return;
								case 0x273:
					alien = &alienInstances[arg0];
					
					func_801371B8_146168(0, 0xB0, alien->unk0, alien->unk2, alien->unk4, (f32) (((f64) (f32) ((s32)random % 150) / 1000.0) + 0.2000000000000000111));
					return;
case 0x1FB:
				alien = &alienInstances[arg0];
				pitch = (f32) ((((f32) alien->unk12 / 1280.0f) * 1.6000000000000000888) + 0.2000000000000000111);
				func_801371B8_146168(alien, 0x10, alien->unk0, alien->unk2, alien->unk4, pitch);
				return;
			
			default:
				return;
			}
		}
	}
}

void func_80139018_147FC8(s32 arg0) {

}

void func_80139020_147FD0(s16 arg0) {

}

void func_80139028_147FD8(s32 arg0, s32 arg1) {

}

void func_80139034_147FE4(s32 arg0) {

}

void func_8013903C_147FEC(void) {

}
