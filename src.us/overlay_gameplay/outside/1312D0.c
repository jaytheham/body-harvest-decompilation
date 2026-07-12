#include <ultra64.h>
#include <stdarg.h>
#include "common.h"

const char D_80145020_153FD0[] = "Couldn't create a bullet of type %d\n";
const char D_80145048_153FF8[] = "Couldn't create a bullet of type %d\n";
const char D_80145070_154020[] = "Aeroplane is crashing\n";
const char D_80145088_154038[] = "Destroy scud END THE GAME\n";
const char D_801450A4_154054[] = "Disembark force because destroyed vehicle is not human\n";
const char D_801450DC_15408C[] = "hit weakpoint!\n";
const char D_801450EC_15409C[] = "alpha chaingun\n";
const char D_801450FC_1540AC[] = "shoot force here\n";

const u32 jtbl_80145110_1540C0[20] = {
	0x80123A14, 0x80123A3C, 0x80123A24, 0x80123A34,
	0x80123A04, 0x801239F4, 0x80123A3C, 0x80123A04,
	0x80123A3C, 0x80123A3C, 0x80123A34, 0x80123A3C,
	0x80123A34, 0x80123A3C, 0x80123A3C, 0x80123A3C,
	0x80123A3C, 0x80123A3C, 0x80123A3C, 0x80123A24,
};

const f64 D_80145160_154110[1] = {1000.0};

const u32 jtbl_80145168_154118[20] = {
	0x80125024, 0x80125198, 0x80125070, 0x80125154,
	0x80125108, 0x801250BC, 0x80125198, 0x80125108,
	0x80125198, 0x80125198, 0x80125154, 0x80125198,
	0x80125154, 0x80125198, 0x80125198, 0x80125198,
	0x80125154, 0x80125198, 0x80125198, 0x80125070,
};

const f64 D_801451B8_154168[1] = {0.05};
const f64 D_801451C0_154170[1] = {0.7};
const f32 D_801451C8_154178[1] = {3000.0f};

const u32 jtbl_801451CC_15417C[13] = {
	0x8012A73C, 0x8012A780, 0x8012AA60, 0x8012A860,
	0x8012A7E4, 0x8012A954, 0x8012A8EC, 0x8012AA30,
	0x8012AA60, 0x8012AA60, 0x8012AA60, 0x8012A804,
	0x8012A7E4,
};

const f64 D_80145200_1541B0[1] = {0.1};
const f64 D_80145208_1541B8[1] = {0.05};

const u32 jtbl_80145210_1541C0[101] = {
	0x8012CC40, 0x8012C554, 0x8012D474, 0x8012D474,
	0x8012D474, 0x8012D474, 0x8012D474, 0x8012C640,
	0x8012D474, 0x8012C554, 0x8012C978, 0x8012C978,
	0x8012C978, 0x8012C978, 0x8012C5EC, 0x8012D474,
	0x8012D474, 0x8012D474, 0x8012CED8, 0x8012D474,
	0x8012CED8, 0x8012CAA0, 0x8012CB08, 0x8012CB70,
	0x8012CA38, 0x8012C978, 0x8012C9D8, 0x8012C9D8,
	0x8012C9D8, 0x8012C9D8, 0x8012C9D8, 0x8012C5A0,
	0x8012D474, 0x8012D474, 0x8012D474, 0x8012C978,
	0x8012C9D8, 0x8012C9D8, 0x8012C978, 0x8012C9D8,
	0x8012C9D8, 0x8012C978, 0x8012C9D8, 0x8012D474,
	0x8012D474, 0x8012D474, 0x8012C504, 0x8012D474,
	0x8012D474, 0x8012D474, 0x8012D474, 0x8012D474,
	0x8012D474, 0x8012D474, 0x8012D474, 0x8012D474,
	0x8012D474, 0x8012D474, 0x8012D474, 0x8012D474,
	0x8012D474, 0x8012D474, 0x8012D474, 0x8012CA38,
	0x8012D474, 0x8012D474, 0x8012D474, 0x8012D474,
	0x8012D474, 0x8012D474, 0x8012D474, 0x8012D474,
	0x8012D474, 0x8012C68C, 0x8012C68C, 0x8012C68C,
	0x8012C68C, 0x8012D474, 0x8012C6D8, 0x8012D474,
	0x8012D0D4, 0x8012D0D4, 0x8012CBD8, 0x8012D0D4,
	0x8012CE08, 0x8012CD48, 0x8012CC98, 0x8012D474,
	0x8012CDA8, 0x8012D12C, 0x8012D1D4, 0x8012CF44,
	0x8012D474, 0x8012CE70, 0x8012D474, 0x8012D12C,
	0x8012D474, 0x8012D474, 0x8012CC98, 0x8012D474,
	0x8012D0D4,
};

const u32 D_801453A4_154354[3] = {0, 0, 0};

const char D_801453B0_154360[] = "Hit floor\n";

AlienInstance *D_80140AB0_14FA60[5] = {
	NULL, NULL, NULL, NULL, NULL,
};

s32 D_80140AC4_14FA74 = 0;
s32 D_80140AC8_14FA78 = 0;
s32 D_80140ACC_14FA7C = 0x00080019;
s32 D_80140AD0_14FA80 = 0x00100009;
s32 D_80140AD4_14FA84 = 0;
s32 D_80140AD8_14FA88 = 0;

u8 D_80140ADC_14FA8C[0x68] = {
	0x05, 0x02, 0xF6, 0xE0, 0x05, 0x02, 0xF9, 0xE0, 0x05, 0x03, 0x03, 0x58, 0x05, 0x03, 0x06, 0x98,
	0x05, 0x03, 0x09, 0xD0, 0x05, 0x02, 0xFF, 0x70, 0x05, 0x02, 0xF0, 0x98, 0x05, 0x02, 0xF2, 0xF8,
	0x05, 0x02, 0xF3, 0x80, 0x05, 0x02, 0xF4, 0xA0, 0x05, 0x02, 0xF2, 0x70, 0x05, 0x03, 0xC0, 0x48,
	0x05, 0x03, 0xC4, 0x08, 0x05, 0x03, 0xB9, 0xA8, 0x05, 0x03, 0xC6, 0xB0, 0x05, 0x03, 0xB5, 0x88,
	0x05, 0x03, 0xAF, 0xC8, 0x05, 0x04, 0xD4, 0x20, 0x05, 0x03, 0xA4, 0x80, 0x00, 0x00, 0x00, 0x00,
	0x05, 0x02, 0xE9, 0x60, 0x05, 0x03, 0xC7, 0xC0, 0x05, 0x03, 0xA7, 0x78, 0x64, 0x96, 0xFF, 0x14,
	0x28, 0xB4, 0x46, 0xFF, 0x50, 0x14, 0xBE, 0x28,
};

u8 D_80140B44_14FAF4[0x2C] = {
	0x82, 0x00, 0xBE, 0xFF, 0xFF, 0xFF, 0x32, 0x00, 0x50, 0x2D, 0x13, 0xA1, 0x00, 0xDF, 0xFF, 0xFF,
	0xFF, 0xFF, 0x8B, 0x00, 0x2D, 0x13, 0xFD, 0x55, 0x00, 0xFF, 0xFF, 0xFF, 0xE8, 0x73, 0x0C, 0x2D,
	0x13, 0xFD, 0x55, 0x00, 0xFF, 0xFF, 0xFF, 0xE8, 0x73, 0x0C, 0x2D, 0x13,
};

u8 D_80140B70_14FB20[0x0C] = {
	0xFA, 0xE6, 0xC8, 0xE6, 0xDC, 0x32, 0xB4, 0x82, 0x46, 0xE6, 0x96, 0x00,
};

u8 D_80140B7C_14FB2C[0x24] = {
	0xFF, 0xFF, 0xFF, 0xFF, 0x3C, 0x3C, 0x3C, 0xFF, 0x3C, 0x80, 0x80, 0xFF, 0xFF, 0xFF, 0x3C, 0x3C,
	0xFF, 0xFF, 0xFF, 0x3C, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00,
};
 
s32 func_80122320_1312D0(s32 arg0)
{
	int new_var;
	s32 i;
	for(i = 5;i--;)
	{
		new_var = (s32)D_80140AB0_14FA60[i] == arg0;
		if (new_var)
		{
			return -1;
		}
	}
	return 0;
}

int func_8012235C_13130C(Unk8004D0F8 *arg0)
{
  return ((arg0->unk1A != 0) && ((arg0->unk20 & 0x100000) == 0)) && ((arg0->unk1B == 0xFF) || (D_80047F94 == arg0->unk1B));
}

// CURRENT(210)
#ifdef NON_MATCHING
s32 func_801223B0_131360(VehicleInstance *arg0, s16 arg1, s16 arg2, s16 arg3) {
	u8 *spec;
	s16 damageDir;
	s16 ret;
	s32 dirBucket;

	spec = (u8 *)func_800FAFB8_109F68(arg0);
	damageDir = (func_80003824_4424((f32)(arg0->unk0 - arg1), (f32)(arg0->unk4 - arg2)) - arg0->unk6) + 0x2000;

	if ((arg0->unkC == -2) && (arg0->unk1A == 0x12) && (currentLevel == 1) && (D_8015FA38 != 0)) {
		return 0;
	}

	if ((arg0 == D_80052B34) && (D_80052B34->unk1A == 0)) {
		D_80157A2C = func_80003824_4424((f32)(arg0->unk0 - arg1), (f32)(arg0->unk4 - arg2));
		D_80157A28 |= 2;
		func_800E0764_EF714(arg3);
		D_8014ED42 = 8;
	}

	dirBucket = damageDir >> 14;
	switch (dirBucket) {
		case -2:
			ret = *(s16 *)(spec + 0xE);
			break;
		default:
			ret = *(s16 *)(spec + 0x10);
			break;
		case 0:
			ret = *(s16 *)(spec + 0x12);
			break;
	}

	return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_801223B0_131360.s")
#endif

// CURRENT(429)
#ifdef NON_MATCHING
void func_80122524_1314D4(VehicleInstance *arg0, s16 arg1, s16 arg2, s16 arg3) {
	s32 pct = func_801223B0_131360(arg0, arg2, arg3, arg1);
	s32 temp = (s32)((f64)arg1 * (1.0 - (f64)pct / 100.0));
	if ((s16)temp > 0) {
		func_80124118_1330C8(arg0, (s16)temp);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80122524_1314D4.s")
#endif

#ifdef NON_MATCHING
s16 func_801225C4_131574(Projectile *arg0) {
	s32 i;
	s32 foundIndex;
	Unk8015F790 *entry;

	if ((D_8015F9E8 >= 0x10) || !((D_80145BE8_154B98[arg0->unk20][0] >> 8) & 0x10)) {
		return -1;
	}
	D_8015F9E8++;

	foundIndex = -1;
	for (i = 15; i >= 0; i--) {
		if (!(D_8015F790[i].unk1E & 2)) {
			foundIndex = i;
			break;
		}
	}

	if (foundIndex < 0) {
		return -1;
	}

	entry = &D_8015F790[foundIndex];
	for (i = 3; i >= 0; i--) {
		entry->posX[i] = (s16)arg0->unk0;
		entry->posY[i] = (s16)arg0->unk4;
		entry->posZ[i] = (s16)arg0->unk8;
	}

	entry->unk1E = (entry->unk1E & 3) | 0x14;
	entry->unk20 = arg0;
	entry->unk1E = (entry->unk1E & 0xFF00) | (((u8)entry->unk1E | 2) & 0xFE);

	return (s16)foundIndex;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_801225C4_131574.s")
#endif

// CURRENT(20678)
#ifdef NON_MATCHING
Projectile *func_801226F8_1316A8(s16 *arg0, BuildingInstance *arg1, s16 arg2, s16 arg3, s16 arg4, f32 arg5, f32 arg6, f32 arg7) {
	VehicleInstance *vehicle = (VehicleInstance *)arg0;
	Projectile *entry;
	s16 sp7A;
	s16 sp78;
	s16 sp76;
	s16 sp74;
	s16 sp70;
	s16 sp6E;
	s16 sp6C;
	s16 sp5C;
	u16 sp72;
	u8 temp_v0;
	s16 var_v0;
	f32 absArg5;
	f32 negArg7;

	sp7A = vehicle->unk0 + arg2;
	sp78 = vehicle->unk2 + arg3;
	sp76 = vehicle->unk4 + arg4;

	absArg5 = -arg5;
	if (absArg5 < arg5) {
		absArg5 = arg5;
	}

	if (absArg5 > 0.0f) {
		sp74 = func_80003824_4424(arg5, arg7);
	} else {
		negArg7 = -arg7;
		if (negArg7 < arg7) {
			negArg7 = arg7;
		}
		if (negArg7 > 0.0f) {
			sp74 = func_80003824_4424(arg5, arg7);
		} else {
			sp74 = 0;
		}
	}

	if ((vehicle->unkC == -2) && (vehicleSpecs[vehicle->unk1A].launchAngle != 0xFF)) {
		sp72 = (u16)(vehicleSpecs[vehicle->unk1A].launchAngle << 8);
		negArg7 = sqrtf((arg5 * arg5) + (arg7 * arg7));
		arg6 = (f32)((((f64)(f32)sins(sp72) / 32768.0) * (f64)negArg7) / ((f64)(f32)sins((0x4000 - (s16)sp72) & 0xFFFF) / 32768.0));
	} else {
		sp72 = (u16)func_80003824_4424(sqrtf((arg5 * arg5) + (arg7 * arg7)), arg6);
	}

	if (D_8015F9E4 >= 0x40) {
		return NULL;
	}

	entry = &D_8015EB90[D_8015F9E4++];
	entry->unk0 = (f32)sp7A;
	entry->unk4 = (f32)sp78;
	entry->unk8 = (f32)sp76;

	if (*(s16 *)((u8 *)arg1 + 0xE) != 0) {
		if ((((s32)arg1->unk8 >> 8) & 8) != 0) {
			entry->unkC = 1.0f;
		} else {
			entry->unkC = 0.0f;
		}
		((s16 *)&entry->unk10)[0] = sp74;
		((s16 *)&entry->unk10)[1] = (s16)(s32)arg6;
		entry->unk18 = 0.0f;
		((s16 *)&entry->unk14)[0] = arg1->door2InteriorId;
	} else {
		if ((((s32)arg1->unk8 >> 8) & 0x2000) != 0) {
			entry->unkC = 1.0f;
		} else {
			entry->unkC = 0.0f;
		}

		entry->unk10 = arg5;
		entry->unk14 = arg6;
		entry->unk18 = arg7;
		entry->unk1D = (s8)((s32)(0x4000 - (s16)sp72) >> 8);
		entry->unk1C = (s8)((s32)(0x4000 - sp74) >> 8);

		if ((vehicle == D_80052B34) && (arg1->door2InteriorId < 0x32)) {
			sp5C = coss(D_80052B34->unk10);
			entry->unk10 = (f32)((f64)entry->unk10 + ((((f64)(f32)coss(D_80052B34->unkE) / 32768.0) * ((f64)(f32)sp5C / 32768.0) * (f64)D_80052B34->unk58) + (f64)D_80052B34->unk30));
			entry->unk14 = (f32)((f64)entry->unk14 + ((((f64)(f32)sins(D_80052B34->unk10) / 32768.0) * (f64)D_80052B34->unk58) + (f64)D_80052B34->unk34));
			sp5C = coss(D_80052B34->unk10);
			entry->unk18 = (f32)((f64)entry->unk18 + ((((f64)(f32)sins(D_80052B34->unkE) / 32768.0) * ((f64)(f32)sp5C / 32768.0) * (f64)D_80052B34->unk58) + (f64)D_80052B34->unk38));
		}
	}

	entry->unk20 = (WeaponEntry_80129864 *)arg1 - D_80145BE0_154B90;
	entry->unk24 = (s32)vehicle;
	entry->unk28 = (s16)((s32)arg1->xCoord / (s32)arg1->door2InteriorId);
	if ((D_80145BE8_154B98[entry->unk20][0] >> 8) & 0x100) {
		entry->unk2A = func_801225C4_131574(entry);
	}

	entry->unk2E = 0;
	entry->unk2C = 0;

	if (((s32)arg1->unk8 >> 8) & 0x10000) {
		if (entry->unk20 == 0xC) {
			entry->unk2E = (u8)func_800C21F0_D11A0((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8, 2);
			func_800DEA08_ED9B8(sp7A, sp78, sp76, 0xF, 3, 1, 0x1E, 0xFF, 0xE1, 0xDC, 0xA0);
		} else if ((entry->unk20 == 0x1D) || (entry->unk20 == 0x2A)) {
			entry->unk2E = (u8)func_800C21F0_D11A0((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8, 2);
		} else if (entry->unk20 == 0x5B) {
			entry->unk2E = (u8)func_800C21F0_D11A0((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8, 1);
		} else {
			entry->unk2E = (u8)func_800C21F0_D11A0((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8, 0);
		}
	} else if (((s32)arg1->unk8 >> 8) & 0x400000) {
		if (entry->unk20 == 0x6D) {
			var_v0 = func_800DA450_E9400((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8, 5);
			entry->unk2C = var_v0;
		} else {
			entry->unk2C = func_800DA450_E9400((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8, 6);

			if (entry->unk20 == 0x26) {
				negArg7 = -arg7;

				sp70 = (s16)(s32)(entry->unk0 - (arg5 * 0.5f));
				sp6E = (s16)(s32)(entry->unk4 - (arg6 * 0.5f));
				sp6C = (s16)(s32)(entry->unk8 - (arg7 * 0.5f));

				func_800DEA08_ED9B8((s16)(s32)(arg5 * 0.5f), (s16)(s32)(arg6 * 0.5f), sp70, sp6E, sp6C, 0x32, 6, 2, 0x19, 0xFF, 0xE1);
				func_800DE9B8_ED968(sp70, sp6E, sp6C, 0x64);
				func_800C541C_D43CC(sp70, sp6E, sp6C, (s8)(s32)(absArg5 * 0.5f), -0x28, (s8)(s32)(negArg7 * 0.5f), 0x1E, 0xB4, 0x1E, 6, 0xFF, 0xFF, 0x64);

				sp70 = (s16)(s32)(entry->unk0 + (arg5 * 0.5f));
				sp6E = (s16)(s32)(entry->unk4 + (arg6 * 0.5f));
				sp6C = (s16)(s32)(entry->unk8 + (arg7 * 0.5f));

				func_800DEA08_ED9B8(sp70, sp6E, sp6C, 0x32, 6, 2, 0x19, 0xFF, 0xE1, 0xDC, 0xA0);
				func_800DE9B8_ED968(sp70, sp6E, sp6C, 0x64);

				entry->unk0 = (f32)sp70;
				entry->unk4 = (f32)sp6E;
				entry->unk8 = (f32)sp6C;
			} else if (entry->unk20 == 0x27) {
				negArg7 = -arg7;
				func_800DEA08_ED9B8((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8, 0x32, 6, 2, 0x19, 0xFF, 0xE1, 0xDC, 0xA0);
				func_800C541C_D43CC((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8, (s8)(s32)(absArg5 * 0.5f), 0, (s8)(s32)(negArg7 * 0.5f), 0x14, 0xB4, 0x1E, 6, 0xFF, 0xFF, 0x64);
				func_800DE9B8_ED968((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8, 0x64);
			} else if (entry->unk20 == 0x28) {
			}
		}
	} else if (((s32)arg1->unk8 >> 8) & 0x1000) {
		temp_v0 = *((u8 *)arg1 + 0x16);
		entry->unk2E = func_800C2D50_D1D00((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8, ((temp_v0 * 0xC) + 0x1E) & 0xFF, temp_v0, 0);
	} else {
		if (entry->unk20 == 0x5C) {
			var_v0 = func_800D49CC_E397C((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8);
			entry->unk2C = var_v0;
		} else if ((entry->unk20 == 0x5E) || (entry->unk20 == 0x6F)) {
			var_v0 = func_800D5424_E43D4((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8, 0x78, 0xFA, 0xB4);
			entry->unk2C = var_v0;
		} else if (entry->unk20 == 0x61) {
			var_v0 = func_800D7624_E65D4((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8);
			entry->unk2C = var_v0;
		} else if (entry->unk20 == 0x60) {
			var_v0 = func_800D7EF8_E6EA8((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8, 0x46);
			entry->unk2C = var_v0;
		} else if (entry->unk20 == 0x63) {
			var_v0 = func_800D7EF8_E6EA8((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8, 0x8C);
			entry->unk2C = var_v0;
		} else if (entry->unk20 == 0x5F) {
			var_v0 = func_800DA6F0_E96A0((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8, 1);
			entry->unk2C = var_v0;
		} else if (entry->unk20 == 0x68) {
			var_v0 = func_800DA6F0_E96A0((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8, 3);
			entry->unk2C = var_v0;
		} else if (entry->unk20 == 0x66) {
			var_v0 = func_800DA6F0_E96A0((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8, 4);
			entry->unk2C = var_v0;
		} else if (entry->unk20 == 0x6C) {
			var_v0 = func_800DA260_E9210((s16)(s32)entry->unk0, (s16)(s32)entry->unk4, (s16)(s32)entry->unk8);
			entry->unk2C = var_v0;
		}
	}

	if (entry->unk2E == 0xFB) {
		osSyncPrintf(&D_80145020_153FD0, entry->unk20);
		D_8015F9E4--;
		return NULL;
	}

	if (entry->unk2C == -3) {
		osSyncPrintf(&D_80145048_153FF8, entry->unk20);
		D_8015F9E4--;
		return NULL;
	}

	return entry;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_801226F8_1316A8.s")
#endif

// CURRENT(1561)
#ifdef NON_MATCHING
void func_801236F0_1326A0(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5) {
	s16 sp64[3];
	u16 randX;
	u16 randZ;
	s16 halfSpan;
	s32 height;
	s32 count;
	const WeaponEntry_80129864 *building;

	sp64[0] = arg0;
	sp64[2] = arg2;
	height = func_800B84D0_C7480(arg0, arg2) >> 8;
	if (arg1 < (s16) height) {
		sp64[1] = (s16) height;
	} else {
		sp64[1] = arg1;
	}

	if (arg4 != 0) {
		count = arg4 - 1;
		halfSpan = arg3 >> 1;
		building = &D_80145BE0_154B90[arg5];
		do {
			randX = func_800038E0_44E0();
			randZ = func_800038E0_44E0();
			func_801226F8_1316A8(sp64, (BuildingInstance *)building, 0, 0, 0,
				(f32) ((randX % arg3) - halfSpan),
				(f32) (((randZ % arg3) + arg3) >> 2),
				(f32) ((func_800038E0_44E0() % arg3) - halfSpan));
		} while (count-- != 0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_801236F0_1326A0.s")
#endif

// CURRENT(383)
#ifdef NON_MATCHING
void func_801238DC_13288C(s16 arg0) {
	Projectile *entry;
	const WeaponEntry_80129864 *building;
	s16 linkIndex;
	s32 buildingIndex;

	if (D_8015F9E4 == 0) {
		return;
	}

	entry = &D_8015EB90[arg0];
	linkIndex = entry->unk2A;
	if (linkIndex != -1) {
		D_8015F790[linkIndex].unk1E |= 1;
	}

	buildingIndex = entry->unk20;
	if (D_801591A8 == 0) {
		building = &D_80145BE0_154B90[buildingIndex];

		if ((((s32)building->unk8 >> 8) & 0x1000) || (buildingIndex == 0x5D)) {
			func_800C3288_D2238(entry->unk2E);
		}

		if ((((s32)building->unk8 >> 8) << 9) < 0) {
			func_800D9C60_E8C10(entry->unk2C);
		}

		switch (buildingIndex - 0x5C) {
			case 5:
				func_800D76A8_E6658(entry->unk2C);
				break;
			case 4:
			case 7:
				func_800D7FB4_E6F64(entry->unk2C);
				break;
			case 0:
				func_800D4A78_E3A28(entry->unk2C);
				break;
			case 2:
			case 0x13:
				func_800D5588_E4538(entry->unk2C);
				break;
			case 3:
			case 0xA:
			case 0xC:
				func_800D9C60_E8C10(entry->unk2C);
				break;
		}
	}

	*entry = D_8015EB90[--D_8015F9E4];
	linkIndex = entry->unk2A;
	D_8015F790[linkIndex].unk20 = entry;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_801238DC_13288C.s")
#endif

// CURRENT(2610)
#ifdef NON_MATCHING
void func_80123AC4_132A74(VehicleInstance *arg0) {
	s16 i;
	s16 sp44;
	VehicleInstance *temp;
	f64 div;

	if (!(arg0->unk20 & 0x8000)) {
		return;
	}

	if (arg0->unk1A != 0) {
		sp44 = func_800DF038_EDFE8(arg0->unk0, arg0->unk2, arg0->unk4, vehicleSpecs[arg0->unk1A].unk36 * 2, (func_800038E0_44E0() % 3) + 3, 0);
	}

	arg0->unk1C = 0;

	temp = D_80052B34;
	if (arg0 == temp) {
		if ((arg0->unk20 & 2) && (arg0->unk1A != 0) && (gameplayMode == 1)) {
			arg0->unk3C = 0;
			D_801591AC = 6;
			D_801591B8 = 2;
			osSyncPrintf(D_80145070_154020);
			return;
		}

		if ((arg0->unk1A == 0) && (gameplayMode != 0xC)) {
			if (D_80222A70 < temp->unk2) {
				func_801371B8_146168(0, 0x185, temp->unk0, temp->unk2, temp->unk4, 0.25f);
			}

			func_80133260_142210(&D_80160080);
			func_80006DAC_79AC(0x64, 0);
			func_8009C458_AB408();
			return;
		}
	} else if (arg0->unk20 & 0x400) {
		func_800AE190_BD140(2);
		div = D_80145160_154110;
		for (i = 0; i < 2; i++) {
			func_801371B8_146168(0, 0x185, arg0->unk0, arg0->unk2, arg0->unk4, (f32)(((f64)((f32)(func_800038E0_44E0() % 100)) / div) + 0.25));
			func_800C7924_D68D4(arg0->unk0, arg0->unk2, arg0->unk4, 0x10, sp44, vehicleSpecs[arg0->unk1A].unk36 * 2, D_502D390, 1);
		}
	}

	if ((currentLevel == 4) && (arg0->unk1A == 0xD) && !(arg0->unk20 & 0x10)) {
		osSyncPrintf(D_80145088_154038);
		func_800D6ADC_E5A8C(arg0->unk0, arg0->unk2, arg0->unk4, 5);
		temp = D_80052B34;
		if (temp->unk1A != 0) {
			func_800DF038_EDFE8(temp->unk0, temp->unk2, temp->unk4, vehicleSpecs[temp->unk1A].unk36 * 2, (func_800038E0_44E0() % 3) + 3, 0);
			temp->unk1C = 0;
			func_800FDD8C_10CD3C(temp);
			func_800FDEA8_10CE58(D_80052B2C, 1);
		}
		func_80123AC4_132A74(temp);
	}

	func_800FDD8C_10CD3C(arg0);
	if ((arg0 == D_80052B34) && (arg0->unk1A != 0)) {
		osSyncPrintf(D_801450A4_154054);
		func_800FDEA8_10CE58(D_80052B2C, 1);
		D_8015F9EC = 0xA;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80123AC4_132A74.s")
#endif

// 80123F04 Reduces damage to adam by 40% in easy
// CURRENT(690)
#ifdef NON_MATCHING
void func_80123E90_132E40(VehicleInstance *arg0, s16 arg1) {
	volatile struct Unk80013E44_arg0 sp24;
	s32 damage;

	sp24 = *(struct Unk80013E44_arg0 *)D_80140B70_14FB20;

	if (D_8004DCBC == 0) {
		arg1 >>= 1;
	}

	if ((arg0 == D_80052B34) && (D_80052ACD & 0x40)) {
		arg1 = (s16) (s32) ((f32) (arg1 + 1) * D_8003141C);
	}

	if ((arg1 <= 0) || (D_8004818C == 1)) {
		return;
	}

	if ((arg0 == D_80052B34) && (D_80048188 == 1)) {
		return;
	}

	if (arg0->unk1C <= 0) {
		return;
	}

	if (arg0 == D_80052B34) {
		damage = arg1 * 5;
		if (damage >= 0x100) {
			damage = 0xFF;
		}

		func_80001144_1D44(damage & 0xFF, 0xA, 0x14);
		if (D_80052B34->unk1A == 0) {
			D_8014ED42 = 8;
		} else {
			D_8014ED46 = 8;
		}
	}

	arg0->unk20 |= 0x2000;
	if (arg0 == D_80158FE4) {
		D_8014ED4A = 8;
	}

	if ((arg0 == D_80052B34) && (D_80052B34->unk1A == 0) && (D_80157A28 & 4) && (D_8015931A < 0xC8)) {
		D_8015931A = (s16) (s32) ((f32) D_8015931A + (((f32) arg1 / (f32) arg0->unk1C) * 200.0f));
		if (D_8015931A >= 0x190) {
			arg0->unk1C = 0;
		} else if (D_8015931A >= 0xC9) {
			arg0->unk1C = (s16) (s32) (((f32) (D_8015931A - 0xC8) / 200.0f) * (f32) arg0->unk1C);
		}
	} else {
		arg0->unk1C -= arg1;
	}

	if (arg0->unk1C <= 0) {
		func_80123AC4_132A74(arg0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80123E90_132E40.s")
#endif

void func_80124118_1330C8(VehicleInstance *arg0, s16 arg1) {
	if ((arg0->unk20 & 0x80) == 0) {
		if ((arg0 != D_80052B34) || (D_801493E0 != 0)) {
			func_80123E90_132E40(arg0, arg1);
		}
	}
}
// CURRENT(18762)
#ifdef NON_MATCHING
void func_80124170_133120(s16 arg0, s16 arg1, s16 arg2, s32 arg3, s32 arg4, VehicleInstance *arg5) {
	s32 radiusSq;
	s32 count;
	f32 scale;
	u8 *activeList;
	VehicleInstance *vehicle;
	AlienInstance *alien;
	BuildingInstance *building;
	s32 hitObj;

	arg4 = arg4 >> 2;
	if (arg4 == 0) {
		return;
	}

	radiusSq = arg4 * arg4;
	scale = (f32)arg3 / (f32)radiusSq;

	count = D_80158FD8;
	if (count != 0) {
		count--;
		activeList = &D_80158E80[count];

		while (1) {
			s32 dx;
			s32 dy;
			s32 dz;
			u32 distSq;
			u32 dist;
			s32 damage;
			s32 result;
			f32 pushScale;
			VehicleSpec *vehSpec;

			vehicle = &vehicleInstances[*activeList];
			vehSpec = &vehicleSpecs[vehicle->unk1A];
			if (((vehicle->unk20 & 0x40) != 0) && (vehicle != arg5)) {
				dx = (arg0 - vehicle->unk0) >> 2;
				dy = (arg1 - vehicle->unk2) >> 2;
				dz = (arg2 - vehicle->unk4) >> 2;
				distSq = (dx * dx) + (dy * dy) + (dz * dz);
				if ((u32)radiusSq >= distSq) {
					dist = (u32)sqrtf((f32)distSq);
					damage = (s32)(((f32)(arg4 - dist) * scale) * (f32)(arg4 - dist));
					if (damage != 0) {
						result = func_80127C08_136BB8(arg5, arg0, arg1, arg2, vehicle->unk0, vehicle->unk2 + vehSpec->unk38, vehicle->unk4, &hitObj);
						if (result == 3) {
							damage >>= 2;
						} else if ((VehicleInstance *)hitObj != vehicle) {
							damage >>= 1;
						}

						if (result != 8) {
							if ((arg3 == 0x2711) && (vehicle->unk1A == 0x12) && (currentLevel == 1)) {
								D_8015FA38 = 1;
							} else {
								D_8015FA38 = 0;
							}

							if ((vehicle != D_80052B34) || (D_8015F9EC == 0)) {
								if (damage >= 0x8000) {
									damage = 0x7FFF;
								}
								func_80122524_1314D4(vehicle, (s16)damage, arg0, arg2);
							}

							pushScale = -(((f32)(damage << 5) / (f32)(dist + 1)) * 2.0f) / (f32)vehSpec->unk32;
							if (vehicle->unk1A == 0) {
								func_80102D00_111CB0(vehicle, (f32)((f64)((f32)dx * pushScale) / 100.0), (f32)((f64)-pushScale / 10.0), (f32)((f64)((f32)dz * pushScale) / 100.0));
								D_80052B34->unkA = 0x7FFF;
								D_80052B34->unk8 = 0;
								D_80052B34->unk22 = 0;
								D_80052B34->unk26 = 0;
								D_80052B34->unk24 = 0;
								func_800FB430_10A3E0(D_80052B34, 0);
								D_80159320 |= 0x800;
								D_80052B34->unk20 |= 2;
								func_800FB3E8_10A398(D_80052B34, 1.0f);
							} else {
								func_80102D00_111CB0(vehicle, (f32)((f64)((f32)dx * pushScale) / 10.0), (f32)((f32)dy * pushScale), (f32)((f64)((f32)dz * pushScale) / 10.0));
							}
						}
					}
				}
			}

			if (count == 0) {
				break;
			}
			activeList--;
			count--;
		}
	}

	alien = &alienInstances[0xFE];
	for (count = 0xFE; count != 0; count--) {
		s32 dx;
		s32 dy;
		s32 dz;
		u32 distSq;
		u32 dist;
		s32 damage;
		s32 result;

		if ((arg5 != (VehicleInstance *)alien) && ((currentLevel == 5) || (alien->specIndex != 0x12)) && ((alien->unk1B == 0xFF) || (D_80047F94 == alien->unk1B)) && (alien->specIndex != 0)) {
			AlienSpec *alienSpec;

			alienSpec = &alienSpecs[alien->specIndex];
			dx = (arg0 - alien->unk0) >> 2;
			dy = (arg1 - alien->unk2) >> 2;
			dz = (arg2 - alien->unk4) >> 2;
			distSq = (dx * dx) + (dy * dy) + (dz * dz);
			if ((u32)radiusSq >= distSq) {
				dist = (u32)sqrtf((f32)distSq);
				damage = (s32)(((f32)(arg4 - dist) * scale) * (f32)(arg4 - dist));
				if (damage != 0) {
					result = func_80127C08_136BB8(arg5, arg0, arg1, arg2, alien->unk0, alienSpec->unk18 + alien->unk2, alien->unk4, &hitObj);
					if (result == 3) {
						damage >>= 2;
					} else if ((AlienInstance *)hitObj != alien) {
						damage >>= 1;
					}

					if (result != 8) {
						if (damage >= 0x8000) {
							damage = 0x7FFF;
						}
						func_80124C40_133BF0(alien, (s16)damage, arg0, arg2);
					}
				}
			}
		}

		alien--;
	}

	building = &buildingInstances[0xFE];
	for (count = 0xFE; count != 0; count--) {
		s32 dx;
		s32 dy;
		s32 dz;
		u32 distSq;

		if ((s8)building->hitPoints > 0) {
			dx = (arg0 - building->xCoord) >> 2;
			dy = (arg1 - building->yCoord) >> 2;
			dz = (arg2 - building->zCoord) >> 2;
			distSq = (dx * dx) + (dy * dy) + (dz * dz);
			if ((u32)radiusSq >= distSq) {
				if (arg3 >= 0x10001) {
					func_8011C080_12B030(count & 0xFF);
				} else {
					s32 damage;
					u32 dist;

					dist = (u32)sqrtf((f32)distSq);
					damage = (s32)(((f32)(arg4 - dist) * scale) * (f32)(arg4 - dist)) >> 7;
					if ((damage != 0) && (func_8011BEA0_12AE50(count & 0xFF, damage) != 0) && (building == D_80158FE8)) {
						D_8014ED48 = 8;
					}
				}
			}
		}

		building--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80124170_133120.s")
#endif

void func_80124B5C_133B0C(s16 arg0, s16 arg1, s16 arg2, s32 arg3, s32 arg4) {
	func_80124170_133120(arg0, arg1, arg2, arg3, arg4, 0);
}

#ifdef NON_MATCHING
void func_80124BA8_133B58(void) {
	Projectile *var_a0;
	Unk8015F790 *var_a0_2;
	s32 var_v1;
	u8 temp_t6;
	u8 temp_t7;
	s32 *temp_v0;
	s32 *temp_v1;

	var_a0 = &D_8015EB90[0x3F];
	var_v1 = 0x3F;
	do {
		var_a0->unk10 = 0.0f;
		var_a0->unk14 = 0.0f;
		var_a0->unk18 = 0.0f;
		var_a0->unk28 = 0;
		var_a0->unk20 = 0;
		var_a0->unk24 = 0;
		var_a0--;
	} while (var_v1--);

	var_a0_2 = &D_8015F790[0xF];
	var_v1 = 0xF;
	do {
		temp_t6 = (u8)var_a0_2->unk1E;
		temp_t7 = temp_t6 & 0xFFFD;
		var_a0_2->unk1E = (var_a0_2->unk1E & 0xFF00) | temp_t7;
		var_a0_2->unk1E = (var_a0_2->unk1E & 0xFF00) | (temp_t7 & 0xFFFE);
		var_a0_2--;
	} while (var_v1--);

	temp_v0 = &D_80140AC8_14FA78;
	temp_v1 = &D_8015F9E8;
	*temp_v0 = 0;
	*temp_v1 = 0;
	D_8015F9E4 = 0;
	D_8015FA38 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80124BA8_133B58.s")
#endif

#ifdef NON_MATCHING
void func_80124C40_133BF0(VehicleInstance *arg0, s16 arg1, s16 arg2, s16 arg3) {
	s32 pct;
	s16 dmg;

	dmg = arg1;
	pct = func_801223B0_131360(arg0, arg2, arg3, dmg);

	if (arg0->unkC == -2) {
		func_80122524_1314D4(arg0, dmg, arg2, arg3);
		return;
	}

	if (arg0->unk1A != 0) {
		dmg = (s32)((f64)dmg * (1.0 - ((f64)pct / 100.0)));
		if (dmg != 0) {
			func_80088154_97104(arg0, dmg, func_80003824_4424((f32)(arg0->unk0 - arg2), (f32)(arg0->unk4 - arg3)));
			D_8014ED44 = 8;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80124C40_133BF0.s")
#endif

// CURRENT(49074)
#ifdef NON_MATCHING
// displayBullets
void func_80124D60_133D10(void) {
	Projectile *bullet;
	const WeaponEntry_80129864 *weaponEntry;
	s32 i;
	s32 objType;
	u8 sparkType;
	s32 weaponFlags;
	u8 *trailColor;
	s16 pos[2];
	s8 color[4];
	Unk8015FA40Entry *hudPos;
	u8 *extraPtr;
	u32 *sparkDLs;

	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_PASS2);
	gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);

	func_800C1150_D0100();

	gDPSetCombineMode(D_8005BB30++, G_CC_SHADE, G_CC_SHADE);
	gSPClearGeometryMode(D_8005BB30++, G_FOG);
	gDPSetRenderMode(D_8005BB30++, G_RM_AA_ZB_XLU_LINE, G_RM_NOOP2);
	gDPSetCycleType(D_8005BB30++, G_CYC_2CYCLE);

	if (D_8015F9E4 != 0) {
		bullet = &D_8015EB90[D_8015F9E4 - 1];

		for (i = D_8015F9E4 - 1; i >= 0; i--, bullet--) {
			objType = bullet->unk20;
			weaponEntry = &D_80145BE0_154B90[objType];
			sparkType = weaponEntry->unk16;
			sparkDLs = (u32 *)&D_80140AD8_14FA88;

			if ((gameplayMode == 1) || (gameplayMode == 0xC) || (gameplayMode == 3) || (gameplayMode == 0xB)) {
				weaponFlags = weaponEntry->unk8 >> 8;
				if ((weaponFlags & 0x1000) || (objType == 0x5D)) {
					func_800C31AC_D215C((s16)(s32)bullet->unk0, (s16)(s32)bullet->unk4, (s16)(s32)bullet->unk8, bullet->unk2E);
				} else if ((weaponFlags << 9) >= 0) {
					if ((objType >= 0x5C) && (objType < 0x70)) {
						switch (objType - 0x5C) {
							case 0:
								func_800D4AB0_E3A60(bullet->unk2C, (s16)(s32)bullet->unk0, (s16)(s32)bullet->unk4, (s16)(s32)bullet->unk8);
								break;
							case 2:
								func_800D55C0_E4570(bullet->unk2C, (s16)(s32)bullet->unk0, (s16)(s32)bullet->unk4, (s16)(s32)bullet->unk8);
								break;
							case 5:
								func_800D76F4_E66A4((s16)(s32)bullet->unk0, (s16)(s32)bullet->unk4, (s16)(s32)bullet->unk8, bullet->unk2C);
								break;
							case 4:
								func_800D8000_E6FB0((s16)(s32)bullet->unk0, (s16)(s32)bullet->unk4, (s16)(s32)bullet->unk8, bullet->unk2C);
								break;
							case 3:
							case 0xA:
							case 0xC:
							case 0x10:
							case 0x13:
								func_800D9B14_E8AC4((s16)(s32)bullet->unk0, (s16)(s32)bullet->unk4, (s16)(s32)bullet->unk8, bullet->unk2C);
								break;
							default:
								break;
						}
					}
				} else {
					func_800D9B14_E8AC4((s16)(s32)bullet->unk0, (s16)(s32)bullet->unk4, (s16)(s32)bullet->unk8, bullet->unk2C);
				}

				if ((((s32)(weaponEntry->unk8 >> 8)) & 0x10000) != 0) {
					if ((objType == 0x1D) || (objType == 0x2A) || (objType == 0x0C)) {
						if ((D_80052A8C % 3) == 0) {
							func_800C1ECC_D0E7C((s16)(s32)bullet->unk0, (s16)(s32)bullet->unk4, (s16)(s32)bullet->unk8, bullet->unk2E, 2);
						}
					} else if (objType == 0x5B) {
						func_800C1ECC_D0E7C((s16)(s32)bullet->unk0, (s16)(s32)bullet->unk4, (s16)(s32)bullet->unk8, bullet->unk2E, 1);
					} else {
						func_800C1ECC_D0E7C((s16)(s32)bullet->unk0, (s16)(s32)bullet->unk4, (s16)(s32)bullet->unk8, bullet->unk2E, 0);
					}
				}
			}

			if (sparkType == 0x80) {
				trailColor = ((u8 *)D_80140B44_14FAF4 - 0x39C) + (objType * 0xB);

				color[0] = trailColor[0];
				color[1] = trailColor[1];
				color[2] = trailColor[2];
				color[3] = trailColor[6];

				if ((D_80052A8C & 1) == 0) {
					color[0] = (color[0] + 0x96 > 0xFF) ? 0xFF : color[0] + 0x96;
					color[1] = (color[1] + 0x96 > 0xFF) ? 0xFF : color[1] + 0x96;
					color[2] = (color[2] + 0x96 > 0xFF) ? 0xFF : color[2] + 0x96;
					color[3] = (color[3] + 0x4B > 0xFF) ? 0xFF : color[3] + 0x4B;
				}

				D_8005BB34->v.ob[0] = (s16)(s32)bullet->unk0;
				D_8005BB34->v.ob[1] = (s16)(s32)bullet->unk4;
				D_8005BB34->v.ob[2] = (s16)(s32)bullet->unk8;
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = color[3];
				D_8005BB34->v.cn[1] = trailColor[7];
				D_8005BB34->v.cn[2] = trailColor[8];
				D_8005BB34->v.cn[3] = trailColor[9];
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)(s32)(bullet->unk0 + bullet->unk10);
				D_8005BB34->v.ob[1] = (s16)(s32)(bullet->unk4 + bullet->unk14);
				D_8005BB34->v.ob[2] = (s16)(s32)(bullet->unk8 + bullet->unk18);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = color[0];
				D_8005BB34->v.cn[1] = color[1];
				D_8005BB34->v.cn[2] = color[2];
				D_8005BB34->v.cn[3] = 0xFF;
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)(s32)bullet->unk0;
				D_8005BB34->v.ob[1] = (s16)(s32)bullet->unk4;
				D_8005BB34->v.ob[2] = (s16)(s32)bullet->unk8;
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = color[3];
				D_8005BB34->v.cn[1] = color[3];
				D_8005BB34->v.cn[2] = color[3];
				D_8005BB34->v.cn[3] = trailColor[0xA];
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)(s32)(bullet->unk0 + bullet->unk10);
				D_8005BB34->v.ob[1] = (s16)(s32)(bullet->unk4 + bullet->unk14);
				D_8005BB34->v.ob[2] = (s16)(s32)(bullet->unk8 + bullet->unk18);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = color[3];
				D_8005BB34->v.cn[1] = trailColor[7];
				D_8005BB34->v.cn[2] = trailColor[8];
				D_8005BB34->v.cn[3] = trailColor[9];
				D_8005BB34++;

				gDPPipeSync(D_8005BB30++);
				gSPVertex(D_8005BB30++, D_8005BB34 - 4, 4, 0);
				gSPLine3D(D_8005BB30++, 0, 8, 0);
				gSPLine3D(D_8005BB30++, 2, 3, 0);
				gSPLine3D(D_8005BB30++, 0, 1, 0);

				gSPDisplayList(D_8005BB30++, sparkDLs[sparkType] & 0x1FFFFFFF);
			} else if (sparkType != 0) {
				if ((*(s32 *)(weaponEntry + 8) & 0x01000000) == 0) {
					D_80052B40.unk0 = (s16)(s32)bullet->unk0 >> 2;
					D_80052B40.unk2 = (s16)(s32)bullet->unk4 >> 2;
					D_80052B40.unk4 = (s16)(s32)bullet->unk8 >> 2;

					if (*(s16 *)(weaponEntry + 0xE) != 0) {
						D_80052B48.unk0 = 0x4000 - *(s16 *)&bullet->unk10;
						D_80052B48.unk2 = 0;
						D_80052B48.unk4 = -func_80003824_4424((f32)*(s16 *)&bullet->unk14, (f32)*(((s16 *)&bullet->unk10) + 1));
					} else {
						D_80052B48.unk0 = bullet->pad1C[0] << 8;
						D_80052B48.unk2 = bullet->pad1C[1] << 8;
						D_80052B48.unk4 = 0;
					}

					func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_800311A0, D_8005BB38);
					gSPVertex(D_8005BB2C++, D_8005BB38, 4, 0);
					D_8005BB38 += 0x40;
					gSPDisplayList(D_8005BB2C++, sparkDLs[sparkType]);
				}
			}

			if (((s8)((u8 *)&weaponEntry->unk8)[3]) != 0) {
				extraPtr = D_80140B7C_14FB2C + 0xF0 + ((((u8 *)&weaponEntry->unk8)[3] & 7) * 3);
				color[0] = (s8)((extraPtr[0] * (((u8 *)&weaponEntry->unk8)[3] & 0xF8)) >> 9);
				color[1] = (s8)((extraPtr[1] * (((u8 *)&weaponEntry->unk8)[3] & 0xF8)) >> 9);
				color[2] = (s8)((extraPtr[2] * (((u8 *)&weaponEntry->unk8)[3] & 0xF8)) >> 9);
				color[3] = 0;
				pos[0] = (s16)(s32)bullet->unk0;
				pos[1] = (s16)(s32)bullet->unk8;
				func_800B2354_C1304(pos, color, 0x100, 0x258);
			}
		}
	}

	if (((D_80159320 & 0x40) != 0) && (gameplayMode == 1) && (currentLevel == 2) && func_800A2A88_B1A38()) {
		s32 alpha;

		hudPos = &D_8015FA40[23];
		for (i = 0x17; i >= 0; i--) {
			D_8005BB34->v.ob[0] = hudPos->unk0;
			D_8005BB34->v.ob[1] = hudPos->unk2;
			D_8005BB34->v.ob[2] = hudPos->unk4;
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0;
			D_8005BB34->v.tc[1] = 0;

			alpha = 0x80 - (i * 4);
			D_8005BB34->v.cn[0] = alpha;
			D_8005BB34->v.cn[1] = alpha;
			D_8005BB34->v.cn[2] = alpha;
			D_8005BB34->v.cn[3] = 0x40;
			D_8005BB34++;
			hudPos--;
		}

		gSPVertex(D_8005BB30++, D_8005BB34 - 24, 24, 0);
		hudPos = &D_8015FA40[2];
		for (i = 0x16; i >= 0; i--) {
			if ((hudPos->unk0 != 0x7FFF) && ((hudPos - 1)->unk0 != 0x7FFF)) {
				gSPLineW3D(D_8005BB30++, i, i + 1, 4, 0);
			}
			hudPos++;
		}
	}

	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);

	{
		s16 *fadeData;
		s16 *fadeEnd;

		fadeData = &D_8015F9F8[0][0];
		fadeEnd = fadeData + (8 * 4);
		while (fadeData != fadeEnd) {
			if (fadeData[3] != 0) {
				s32 fade;
				s32 invFade;

				fade = (fadeData[3] << 6) - 1;
				invFade = (0xFF - fade) & 0xFF;
				D_80052B40.unk0 = fadeData[0];
				D_80052B40.unk2 = fadeData[1];
				D_80052B40.unk4 = fadeData[2];

				gDPSetPrimColor(D_8005BB2C++, 0, 0, invFade, invFade, invFade, 0xFF);

				func_800039D0_45D0(&D_80052B40, NULL, &D_80052B48, D_8005BB38);
				gSPVertex(D_8005BB2C++, D_8005BB38, 4, 0);
				D_8005BB38 += 0x40;
				gSPDisplayList(D_8005BB2C++, &D_50332A0);
				gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
			}

			fadeData += 4;
		}
	}

	gSPSetGeometryMode(D_8005BB2C++, G_FOG | G_LIGHTING);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | ALPHA_CVG_SEL | GBL_c1(G_BL_CLR_FOG, G_BL_A_SHADE, G_BL_CLR_MEM, G_BL_A_MEM), AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | ALPHA_CVG_SEL | G_RM_NOOP2);
	gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80124D60_133D10.s")
#endif

void func_80125C48_134BF8(s16 arg0, s16 arg1, s16 arg2) {
	s32 index;

	index = D_80140AC8_14FA78;
	D_8015F9F8[index][0] = arg0;
	D_8015F9F8[index][1] = arg1;
	D_8015F9F8[index][2] = arg2;
	D_8015F9F8[index][3] = 4;
	D_80140AC8_14FA78 = index + 1;
	if (D_80140AC8_14FA78 == 8) {
		D_80140AC8_14FA78 = 0;
	}
}

#ifdef NON_MATCHING
void func_80125CA0_134C50(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
	s32 unused0;
	s32 unused1;
	s16 sp3A;
	s32 sp2C;
	s32 sp28;
	s32 temp_t0;
	s32 temp_v1;

	temp_v1 = arg3 - arg0;
	temp_t0 = arg5 - arg2;
	sp2C = temp_v1;
	sp28 = temp_t0;
	sp3A = func_80003824_4424((f32) temp_t0, (f32) temp_v1);

	func_800D951C_E84CC(D_D03E780, (s16) arg0, (s16) arg1, (s16) arg2, sp3A, 0,
		func_80003824_4424(sqrtf((f32) ((sp2C * sp2C) + (sp28 * sp28))), (f32) -(arg4 - arg1)),
		1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80125CA0_134C50.s")
#endif

#ifdef NON_MATCHING
Unk80259D90 *func_80125D70_134D20(s16 arg0, s16 arg1, s16 arg2, s32 *arg3, s32 *arg4, s32 *arg5, f32 *arg6) {
	extern Cheat cheatData[];
	Unk80259D90 *temp_s0;
	Unk80259D90 *spD0;
	s16 i;
	s16 temp_a0;
	s16 temp_s1_3;
	s16 temp_v0;
	s16 temp_v1;
	s16 temp_v1_2;
	s16 var_s1;
	s16 var_v0_2;
	s32 found;
	s32 temp_s1;
	s32 temp_s1_2;
	s16 *temp_s2;
	s32 var_s4;
	s32 var_s5;
	f32 spCC;
	f32 spC4;
	f32 temp_f0;
	f32 temp_f0_2;
	f32 temp_f0_3;
	f32 temp_f2;
	f32 temp_f20;
	f32 temp_f20_2;
	f32 temp_f22;
	f32 temp_f22_2;
	f32 var_f2;
	f32 var_f30;

	spD0 = NULL;
	var_s4 = *arg3;
	found = 0;
	var_s5 = *arg5;
	temp_s1 = func_800047FC_53FC((s16)(arg0 - var_s4));
	var_f30 = sqrtf((f32)(func_800047FC_53FC((s16)(arg2 - var_s5)) + temp_s1));

	for (i = 0x95; i != 0; i--) {
		temp_s0 = &D_80259D90[i];
		if (temp_s0->unk0 >= 0xE) {
			spD0 = temp_s0;
			temp_f20 = (f32)arg0;
			temp_f22 = (f32)arg2;

			if (func_8010EF40_11DEF0((f32)temp_s0->unk10, (f32)temp_s0->unk14, (f32)temp_s0->unk30, (f32)temp_s0->unk34,
				temp_f20, temp_f22, (f32)var_s4, (f32)var_s5, &spCC, &spC4) != 0) {
				temp_s1_2 = func_800047FC_53FC((s16)(s32)(temp_f20 - spCC));
				temp_f0 = sqrtf((f32)(func_800047FC_53FC((s16)(s32)(temp_f22 - spC4)) + temp_s1_2));

				if (temp_f0 < var_f30) {
					temp_f2 = temp_f0 / var_f30;
					*arg6 = temp_f2;
					temp_v1 = temp_s0->unk42;
					temp_a0 = temp_s0->unk22;
					var_v0_2 = temp_v1;
					temp_f22_2 = (temp_f2 * (f32)(*arg4 - arg1)) + (f32)arg1;

					if (temp_a0 < temp_v1) {
						var_v0_2 = temp_a0;
					}

					if ((f32)var_v0_2 <= temp_f22_2) {
						temp_v0 = temp_s0->unk32;
						temp_v1_2 = temp_s0->unk12;
						var_s1 = temp_v0;

						if (temp_v0 < temp_v1_2) {
							var_s1 = temp_v1_2;
						}

						if (temp_f22_2 <= (f32)var_s1) {
							temp_s2 = (s16 *)func_80011F90_12B90(*(void **)((u8 *)temp_s0 + 8));

							if (temp_s0->unk10 == temp_s0->unk30) {
								var_f2 = spC4;
							} else {
								var_f2 = spCC;
							}

							temp_f0_2 = (f32)((f64)var_f2 * 0.00390625);
							temp_s1_3 = temp_s0->unk22 - temp_s0->unk12;
							temp_f20_2 = (f32)((f64)((s16 *)((u8 *)cheatData + 0x11A))[currentLevel * 0xC + temp_s0->unk0 * 6]
								* ((f64)-((temp_f0_2 - (f32)(s32)temp_f0_2) * 32.0)));
							temp_f0_3 = (f32)(((f64)(temp_f22_2 - (f32)(func_800B84D0_C7480((s16)(s32)spCC, (s16)(s32)spC4) >> 8))
								* (32.0 / (f64)temp_s1_3)) + 31.0);

							if (((temp_f0_3 >= 0.0f) || ((f64)temp_f0_3 <= 31.0))
								&& (temp_s2[(s16)((((s32)temp_f0_3 << 5) - ((s32)temp_f20_2 & 0x1F)) + 0x1F)] & 1)) {
								var_f30 = temp_f0;
								found = 1;
								var_s4 = (s32)spCC;
								var_s5 = (s32)spC4;
							}
						}
					}
				}
			}
		}
	}

	if (found != 0) {
		temp_s1 = func_800047FC_53FC((s16)(arg0 - *arg3));
		*arg6 = var_f30 / sqrtf((f32)(func_800047FC_53FC((s16)(arg2 - *arg5)) + temp_s1));
		return spD0;
	}

	return NULL;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80125D70_134D20.s")
#endif

// CURRENT(12686)
#ifdef NON_MATCHING
s32 func_80126268_135218(s16 arg0, s16 arg1, s16 arg2, s32 *arg3, s32 *arg4, s32 *arg5, s32 arg6, s32 arg7) {
	s32 xFixed;
	s32 yFixed;
	s32 zFixed;
	s32 stepX;
	s32 stepY;
	s32 stepZ;
	s32 stepCount;
	s32 dx;
	s32 dy;
	s32 dz;
	s16 prevTileX;
	s16 prevTileZ;
	s16 maxBuildingY;
	f32 hitScale;
	s32 buildingIdx;
	s32 mapY;
	s32 tileX;
	s32 tileZ;
	s32 surfaceType;
	s32 absDx;
	s32 absDy;
	s32 absDz;
	BuildingInstance *building;

	xFixed = arg0 << 8;
	yFixed = arg1 << 8;
	zFixed = arg2 << 8;
	prevTileX = -0x8000;
	prevTileZ = -0x8000;
	D_8015F9DC = 0;
	building = NULL;

	dx = *arg3 - arg0;
	dy = *arg4 - arg1;
	dz = *arg5 - arg2;

	if ((arg6 & 2) == 0) {
		surfaceType = func_80125D70_134D20(arg0, arg1, arg2, arg3, arg4, arg5, &hitScale);
		if (surfaceType != 0) {
			D_8015F9DC = surfaceType;
			dx = (s32) ((f32) dx * hitScale);
			*arg3 = arg0 + dx;
			dy = (s32) ((f32) dy * hitScale);
			*arg4 = arg1 + dy;
			dz = (s32) ((f32) dz * hitScale);
			*arg5 = arg2 + dz;
		}
	}

	absDx = -dx;
	absDy = -dy;
	absDz = -dz;

	if ((dx == 0) && (dz == 0)) {
		if (absDy < dy) {
			stepCount = dy;
		} else {
			stepCount = absDy;
		}
		stepCount >>= arg7;
		stepX = 0;
		if (absDy > 0) {
			stepY = -0x100;
		} else {
			stepY = 0x100;
		}
		stepY <<= arg7;
		stepZ = 0;
	} else {
		if (absDx < dx) {
			absDx = dx;
		}
		if (absDz < dz) {
			absDz = dz;
		}

		if (absDz < absDx) {
			if (absDx < dx) {
				stepCount = dx;
			} else {
				stepCount = absDx;
			}
			stepCount >>= arg7;
			if (stepCount != 0) {
				if (absDx > 0) {
					stepX = -0x100;
				} else {
					stepX = 0x100;
				}
				stepY = (dy << 8) / stepCount;
				stepX <<= arg7;
				stepZ = (dz << 8) / stepCount;
			}
		} else {
			if (absDz < dz) {
				stepCount = dz;
			} else {
				stepCount = absDz;
			}
			stepCount >>= arg7;
			if (stepCount != 0) {
				stepX = (dx << 8) / stepCount;
				stepY = (dy << 8) / stepCount;
				stepZ = 0x100;
				if (absDz > 0) {
					stepZ = -0x100;
				}
				stepZ <<= arg7;
			}
		}
	}

	if (D_801591A8 != 0) {
		D_80158FE8 = NULL;
	}

	while (stepCount != 0) {
		stepCount--;

		xFixed += stepX;
		yFixed += stepY;
		zFixed += stepZ;

		tileX = xFixed >> 8;
		tileZ = zFixed >> 8;
		mapY = func_800B84D0_C7480((s16) tileX, (s16) tileZ) >> 8;

		if ((yFixed >> 8) < (s16) mapY) {
			*arg3 = tileX;
			*arg4 = (s16) mapY;
			*arg5 = tileZ;
			D_8015F9D8 = 1;
			return 1;
		}

		if ((arg6 & 4) == 0) {
			s32 collisionIdx = func_8012E114_13D0C4((s16) tileX, (s16) (yFixed >> 8), (s16) tileZ);
			if (collisionIdx != -1) {
				D_8015F9D0.unk0 = tileX;
				*arg3 = D_8015F9D0.unk0;
				D_8015F9D0.unk2 = yFixed >> 8;
				*arg4 = D_8015F9D0.unk2;
				D_8015F9D0.unk4 = tileZ;
				*arg5 = D_8015F9D0.unk4;
				if (D_8015FAD0[collisionIdx].unk20 == (s32 (*)()) func_8012E1F8_13D1A8) {
					D_8015F9D0.unk8 = 6;
				} else {
					D_8015F9D0.unk8 = 0xE;
				}
				D_8015F9D0.unkC = collisionIdx;
				return 4;
			}
		}

		func_8011DE60_12CE10(1);
		if ((prevTileZ == (tileZ >> 8)) && (prevTileX == (tileX >> 8))) {
			if (building != NULL) {
				func_8011DE6C_12CE1C((s16) tileX, (s16) tileZ, &maxBuildingY, (s16) buildingIdx);
			}
		} else {
			prevTileZ = tileZ >> 8;
			buildingIdx = func_8011E6FC_12D6AC((s16) tileX, (s16) tileZ, &maxBuildingY);
			if (buildingIdx != -1) {
				building = &buildingInstances[buildingIdx];
			} else {
				building = NULL;
			}
			prevTileX = tileX >> 8;
		}
		func_8011DE60_12CE10(0);

		if ((building != NULL) && (building->yCoord < (yFixed >> 8)) && ((yFixed >> 8) < maxBuildingY)) {
			if (D_801591A8 != 0) {
				D_80158FE8 = building;
			}
			D_8015F9D0.unk0 = tileX;
			*arg3 = D_8015F9D0.unk0;
			D_8015F9D0.unk2 = yFixed >> 8;
			*arg4 = D_8015F9D0.unk2;
			D_8015F9D0.unk4 = tileZ;
			*arg5 = D_8015F9D0.unk4;
			D_8015F9D0.unk8 = 3;
			D_8015F9D0.unkC = buildingIdx;
			return 3;
		}

		if (((arg6 & 1) != 0) && ((yFixed >> 8) < D_80222A70)) {
			*arg3 = tileX;
			*arg4 = D_80222A70;
			*arg5 = tileZ;
			D_8015F9D8 = 2;
			return 2;
		}
	}

	if (D_8015F9D0.unkC != 0) {
		D_8015F9D0.unk0 = *arg3;
		D_8015F9D0.unk2 = *arg4;
		D_8015F9D0.unk8 = 0xD;
		D_8015F9D0.unk4 = *arg5;
		return 5;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80126268_135218.s")
#endif

u64 func_80126990_135940(u64 value) {
	return __ll_mul(value, value);
}

// CURRENT(9174)
#ifdef NON_MATCHING
u32 func_801269BC_13596C(s32 arg0, u32 arg1, s32 arg2, u32 arg3, s32 arg4, u32 arg5, s32 arg6, u32 arg7, s32 arg8, u32 arg9,
	s32 arg10, u32 arg11) {
	union {
		s64 full;
		struct {
			s32 hi;
			u32 lo;
		} parts;
	} deltaA;
	union {
		s64 full;
		struct {
			s32 hi;
			u32 lo;
		} parts;
	} deltaB;
	union {
		s64 full;
		struct {
			s32 hi;
			u32 lo;
		} parts;
	} temp0;
	union {
		s64 full;
		struct {
			s32 hi;
			u32 lo;
		} parts;
	} temp1;
	s64 denom;

	deltaA.parts.hi = (arg4 - arg0) - (arg5 < arg1);
	deltaA.parts.lo = arg5 - arg1;
	deltaB.parts.hi = (arg6 - arg2) - (arg7 < arg3);
	deltaB.parts.lo = arg7 - arg3;
	denom = (s64)func_80126990_135940(deltaA.full) + (s64)func_80126990_135940(deltaB.full);

	if (denom == 0) {
		temp0.parts.hi = (arg8 - arg0) - (arg9 < arg1);
		temp0.parts.lo = arg9 - arg1;
		temp1.parts.hi = (arg10 - arg2) - (arg11 < arg3);
		temp1.parts.lo = arg11 - arg3;
		return (u32)(__ll_mul(temp0.full, temp0.full) + __ll_mul(temp1.full, temp1.full));
	}

	temp0.parts.hi = (arg10 - arg2) - (arg11 < arg3);
	temp0.parts.lo = arg11 - arg3;
	temp1.parts.hi = (arg8 - arg0) - (arg9 < arg1);
	temp1.parts.lo = arg9 - arg1;
	temp0.full = temp0.full * deltaA.full;
	temp1.full = temp1.full * deltaB.full;

	return (u32)((s64)func_80126990_135940(temp0.full - temp1.full) / denom);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_801269BC_13596C.s")
#endif

// CURRENT(63423)
#ifdef NON_MATCHING
void func_80126B80_135B30(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 *arg4, s32 *arg5, s32 *arg6) {
	s32 distSqBest;
	s32 objDist;
	s32 objThreshold;
	s32 lineDist;
	s16 minX;
	s16 maxX;
	s16 minZ;
	s16 maxZ;
	s32 exactHit;
	f32 pathDistSq;
	f32 bestDistF;
	s32 lineDistBest;
	s32 lineThresholdBest;
	s32 shadowX;
	s32 shadowY;
	s32 shadowZ;
	s16 hitX;
	s16 hitZ;
	u8 *vehicleIndex;
	s32 vehicleCount;
	VehicleInstance *vehicle;
	VehicleSpec *vehicleSpec;
	AlienInstance *alien;
	AlienSpec *alienSpec;
	f32 interp;
	s32 dx;
	s32 dy;
	s32 dz;

	distSqBest = 0x7FFFFFFF;

	if (arg1 < *arg4) {
		minX = (s16)(arg1 - 0xC8);
		maxX = (s16)(*arg4 + 0xC8);
	} else {
		minX = (s16)(*arg4 - 0xC8);
		maxX = (s16)(arg1 + 0xC8);
	}

	if (arg3 < *arg6) {
		minZ = (s16)(arg3 - 0xC8);
		maxZ = (s16)(*arg6 + 0xC8);
	} else {
		minZ = (s16)(*arg6 - 0xC8);
		maxZ = (s16)(arg3 + 0xC8);
	}

	if (D_801591A8 != 0) {
		D_80158FE4 = NULL;
		D_80158FEC = NULL;
		D_80158FF0 = 0;
	}

	dx = (arg1 - *arg4) >> 2;
	dy = (arg2 - *arg5) >> 2;
	dz = (arg3 - *arg6) >> 2;
	pathDistSq = (f32)((dx * dx) + (dy * dy) + (dz * dz));

	if (pathDistSq == 0.0f) {
		return;
	}

	exactHit = 0;

	if ((currentLevel != LEVEL_COMET) || (arg0 != D_80052B34)) {
		vehicleCount = D_80158FD8 - 1;
		if (D_80158FD8 != 0) {
			vehicleIndex = &D_80158E80[vehicleCount];
			do {
				vehicle = &vehicleInstances[*vehicleIndex];
				vehicleSpec = &vehicleSpecs[vehicle->unk1A];
				if (vehicle != arg0) {
					if ((vehicle->unk0 >= minX) && (vehicle->unk0 <= maxX) && (vehicle->unk4 >= minZ) && (vehicle->unk4 <= maxZ)) {
						if (((arg1 - *arg4) == 0) && ((arg3 - *arg6) == 0)) {
							if ((vehicle->unk2 + vehicleSpec->unk38) >= *arg5) {
								func_8010C4EC_11B49C(vehicle);
								if (func_8010CF7C_11BF2C((s16)arg1, (s16)arg3) != 0) {
									D_8015F9D0.unk0 = (s16)arg1;
									D_8015F9D0.unk2 = (s16)(vehicle->unk2 + vehicleSpec->unk38);
									D_8015F9D0.unk4 = (s16)arg3;
									exactHit = 1;
									bestDistF = (f32)distSqBest;
									goto vehicle_candidate;
								}
							}
						} else {
							lineDist = func_801269BC_13596C(arg1 >> 31, (u32)(s16)arg1, arg3 >> 31, (u32)(s16)arg3, *arg4 >> 31, (u32)*arg4,
								*arg6 >> 31, (u32)*arg6, vehicle->unk0 >> 31, (u32)vehicle->unk0, vehicle->unk4 >> 31, (u32)vehicle->unk4);
							if (lineDist < *(s32 *)((u8 *)vehicleSpec + 8)) {
								switch (vehicleSpec->unk16 & 0xF) {
									case 0: {
										s32 ax = arg1 - *arg4;
										s32 az = arg3 - *arg6;
										s32 absX = (ax < 0) ? -ax : ax;
										s32 absZ = (az < 0) ? -az : az;
										s32 sideDist;

										if (absZ < absX) {
											sideDist = func_801269BC_13596C(arg1 >> 31, (u32)(s16)arg1, arg2 >> 31, (u32)arg2, *arg4 >> 31,
												(u32)*arg4, *arg5 >> 31, (u32)*arg5, vehicle->unk0 >> 31, (u32)vehicle->unk0,
												vehicle->unk2 >> 31, (u32)vehicle->unk2);
										} else {
											sideDist = func_801269BC_13596C(arg3 >> 31, (u32)(s16)arg3, arg2 >> 31, (u32)arg2, *arg6 >> 31,
												(u32)*arg6, *arg5 >> 31, (u32)*arg5, vehicle->unk4 >> 31, (u32)vehicle->unk4,
												vehicle->unk2 >> 31, (u32)vehicle->unk2);
										}

										if (*(s32 *)((u8 *)vehicleSpec + 8) >= sideDist) {
											D_8015F9D0.unk8 = 0;
											bestDistF = (f32)distSqBest;
											goto vehicle_candidate;
										}
										break;
									}

									case 1: {
										dx = (arg1 - vehicle->unk0) >> 2;
										dy = (arg2 - vehicle->unk2) >> 2;
										dz = (arg3 - vehicle->unk4) >> 2;
										shadowY = (s32)((sqrtf((f32)((dx * dx) + (dy * dy) + (dz * dz)) / pathDistSq) * (f32)(*arg5 - arg2)) + (f32)arg2);
										if ((shadowY >= vehicle->unk2) && (shadowY <= (vehicle->unk2 + vehicleSpec->unk38))) {
											D_8015F9D0.unk8 = 0;
											bestDistF = (f32)distSqBest;
											goto vehicle_candidate;
										}
										break;
									}

									case 2:
										hitX = (s16)*arg4;
										hitZ = (s16)*arg6;
										if (func_8010D4EC_11C49C((s16)arg1, (s16)arg3, &hitX, &hitZ, vehicle) != 0) {
											dx = (arg1 - hitX) >> 2;
											dz = (arg3 - hitZ) >> 2;
											shadowY = (s32)((sqrtf((f32)((dx * dx) + (dz * dz)) / pathDistSq) * (f32)(*arg5 - arg2)) + (f32)arg2);
											if ((shadowY >= vehicle->unk2) && (shadowY <= (vehicle->unk2 + vehicleSpec->unk38))) {
												D_8015F9D0.unk0 = hitX;
												D_8015F9D0.unk2 = (s16)shadowY;
												D_8015F9D0.unk4 = hitZ;
												exactHit = 1;
												bestDistF = (f32)distSqBest;
												goto vehicle_candidate;
											}
										}
										break;

									default:
										bestDistF = (f32)distSqBest;
										goto vehicle_candidate;
								}
							}
						}
					}
				}

				vehicleIndex--;
				vehicleCount--;
				continue;

			vehicle_candidate:
				dx = (arg1 - vehicle->unk0) >> 2;
				dy = (arg2 - vehicle->unk2) >> 2;
				dz = (arg3 - vehicle->unk4) >> 2;
				objDist = (dx * dx) + (dy * dy) + (dz * dz);
				if ((f32)objDist < bestDistF) {
					lineDistBest = lineDist;
					if (D_801591A8 != 0) {
						D_80158FE4 = vehicle;
					}
					objThreshold = *(s32 *)((u8 *)vehicleSpec + 8);
					distSqBest = objDist;
					if (D_8015F9D0.unk8 == 0) {
						D_8015F9D0.unk0 = vehicle->unk0;
						D_8015F9D0.unk2 = vehicle->unk2;
						D_8015F9D0.unk4 = vehicle->unk4;
						exactHit = 0;
					}
					D_8015F9D0.unkC = (s32)vehicle;
					D_8015F9D0.unk8 = 5;
				}

				vehicleIndex--;
				vehicleCount--;
			} while (vehicleCount != 0);
		}
	}

	alien = &alienInstances[0xFE];
	vehicleCount = 0xFE;
	while (vehicleCount != 0) {
		if ((arg0 != alien) && (func_8012235C_13130C((Unk8004D0F8 *)alien) != 0)
			&& ((func_80122320_1312D0((s32)alien) == 0) || (func_80122320_1312D0((s32)arg0) == 0))) {
			if ((alien->unk0 >= minX) && (alien->unk0 <= maxX) && (alien->unk4 >= minZ) && (alien->unk4 <= maxZ)) {
				alienSpec = &alienSpecs[alien->specIndex];
				lineDist = func_801269BC_13596C(arg1 >> 31, (u32)(s16)arg1, arg3 >> 31, (u32)(s16)arg3, *arg4 >> 31, (u32)*arg4,
					*arg6 >> 31, (u32)*arg6, alien->unk0 >> 31, (u32)alien->unk0, alien->unk4 >> 31, (u32)alien->unk4);
				if (lineDist < alienSpec->unk8) {
					if ((alienSpec->unk16 & 0xF) == 0) {
						s32 ax = arg1 - *arg4;
						s32 az = arg3 - *arg6;
						s32 absX = (ax < 0) ? -ax : ax;
						s32 absZ = (az < 0) ? -az : az;
						s32 sideDist;

						if (absZ < absX) {
							sideDist = func_801269BC_13596C(arg1 >> 31, (u32)(s16)arg1, arg2 >> 31, (u32)arg2, *arg4 >> 31, (u32)*arg4,
								*arg5 >> 31, (u32)*arg5, alien->unk0 >> 31, (u32)alien->unk0, alien->unk2 >> 31, (u32)alien->unk2);
						} else {
							sideDist = func_801269BC_13596C(arg3 >> 31, (u32)(s16)arg3, arg2 >> 31, (u32)arg2, *arg6 >> 31, (u32)*arg6,
								*arg5 >> 31, (u32)*arg5, alien->unk4 >> 31, (u32)alien->unk4, alien->unk2 >> 31, (u32)alien->unk2);
						}
						if (alienSpec->unk8 < sideDist) {
							goto alien_candidate;
						}
					} else {
					alien_candidate:
						dx = (arg1 - alien->unk0) >> 2;
						dy = (arg2 - alien->unk2) >> 2;
						dz = (arg3 - alien->unk4) >> 2;
						if ((alienSpec->unk16 & 0xF) == 1) {
							shadowY = (s32)((sqrtf((f32)((dx * dx) + (dy * dy) + (dz * dz)) / pathDistSq) * (f32)(*arg5 - arg2)) + (f32)arg2);
							hitX = alien->unk2;
							if ((alienSpec->unk16 & 0x10) != 0) {
								hitX -= alienSpec->unk38;
							}
							if ((shadowY < (hitX - 0x14)) || (shadowY > (alien->unk2 + alienSpec->unk38 + 0x14))) {
								goto alien_skip;
							}
						}

						objDist = (dx * dx) + (dy * dy) + (dz * dz);
						if ((f32)objDist < (f32)distSqBest) {
							if (D_801591A8 != 0) {
								D_80158FEC = alien;
								D_80158FE4 = NULL;
							}

							objThreshold = alienSpec->unk8;
							lineDistBest = lineDist;
							distSqBest = objDist;
							D_8015F9D0.unk0 = alien->unk0;
							D_8015F9D0.unk2 = alien->unk2;
							D_8015F9D0.unk4 = alien->unk4;
							D_8015F9DC = (s32)alien;
							D_8015F9D0.unk8 = 7;

							if (alienSpec->unk5A != -1) {
								Unk80147090Entry_8012B26C *entry = &D_80147090_156040[alienSpec->unk5A];
								lineThresholdBest = entry->radius * entry->radius;

								func_80128428_1373D8(alien, entry->x, entry->y, entry->z, &shadowX, &shadowY, &shadowZ);

								if ((f32)func_801269BC_13596C(arg1 >> 31, (u32)(s16)arg1, arg3 >> 31, (u32)(s16)arg3, *arg4 >> 31, (u32)*arg4,
									*arg6 >> 31, (u32)*arg6, shadowX >> 31, (u32)shadowX, shadowZ >> 31, (u32)shadowZ) < (f32)lineThresholdBest) {
									s32 ax = arg1 - *arg4;
									s32 az = arg3 - *arg6;
									s32 absX = (ax < 0) ? -ax : ax;
									s32 absZ = (az < 0) ? -az : az;
									s32 sideDist;

									if (absZ < absX) {
										sideDist = func_801269BC_13596C(arg1 >> 31, (u32)(s16)arg1, arg2 >> 31, (u32)arg2, *arg4 >> 31, (u32)*arg4,
											*arg5 >> 31, (u32)*arg5, shadowX >> 31, (u32)shadowX, shadowY >> 31, (u32)shadowY);
									} else {
										sideDist = func_801269BC_13596C(arg3 >> 31, (u32)(s16)arg3, arg2 >> 31, (u32)arg2, *arg6 >> 31, (u32)*arg6,
											*arg5 >> 31, (u32)*arg5, shadowZ >> 31, (u32)shadowZ, shadowY >> 31, (u32)shadowY);
									}

									if (sideDist < lineThresholdBest) {
										dx = (arg1 - shadowX) >> 2;
										dy = (arg2 - shadowY) >> 2;
										dz = (arg3 - shadowZ) >> 2;
										if (((dx * dx) + (dy * dy) + (dz * dz)) < distSqBest) {
											if (D_801591A8 != 0) {
												D_80158FF0 = (s32)alien;
											}
											D_8015F9D0.unk8 = 8;
											osSyncPrintf(&D_801450DC_15408C);
										}
									}
								}
							}
						}
					}
				}
			}
		}

	alien_skip:
		alien--;
		vehicleCount--;
	}

	if ((distSqBest != 0x7FFFFFFF) && (exactHit == 0)) {
		dx = (arg1 - D_8015F9D0.unk0) >> 2;
		dy = (arg2 - D_8015F9D0.unk2) >> 2;
		dz = (arg3 - D_8015F9D0.unk4) >> 2;
		interp = (f32)((dx * dx) + (dy * dy) + (dz * dz) - (lineDistBest >> 4));

		dx = (arg1 - *arg4) >> 2;
		dy = (arg2 - *arg5) >> 2;
		dz = (arg3 - *arg6) >> 2;

		if (interp < 10.0f) {
			bestDistF = 1.0f;
		} else {
			bestDistF = sqrtf(interp / (f32)((dx * dx) + (dy * dy) + (dz * dz)));
		}

		D_8015F9D0.unk0 = (s16)((f32)arg1 - ((f32)(dx * 4) * bestDistF));
		D_8015F9D0.unk2 = (s16)((f32)arg2 - ((f32)(dy * 4) * bestDistF));
		D_8015F9D0.unk4 = (s16)((f32)arg3 - ((f32)(dz * 4) * bestDistF));

		if (interp > 10.0f) {
			f32 blend = sqrtf((f32)((objThreshold - lineDistBest) >> 4) / interp);
			D_8015F9D0.unk0 = (s16)((f32)D_8015F9D0.unk0 + ((f32)(arg1 - D_8015F9D0.unk0) * blend));
			D_8015F9D0.unk4 = (s16)((f32)D_8015F9D0.unk4 + ((f32)(arg3 - D_8015F9D0.unk4) * blend));
		}
	}

	if (distSqBest != 0x7FFFFFFF) {
		*arg4 = D_8015F9D0.unk0;
		*arg5 = D_8015F9D0.unk2;
		*arg6 = D_8015F9D0.unk4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80126B80_135B30.s")
#endif

// CURRENT(270)
#ifdef NON_MATCHING
s32 func_80127C08_136BB8(void *arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s32 *arg7) {
	s32 sp3C;
	s32 sp38;
	s32 sp34;
	s32 result;
	u8 sp2F;

	sp3C = arg4;
	sp38 = arg5;
	sp34 = arg6;
	*arg7 = 0;
	result = func_80126268_135218(arg1, arg2, arg3, &sp3C, &sp38, &sp34, 0, 5);
	if (result != 0) {
		return result;
	}

	sp3C = arg4;
	sp38 = arg5;
	sp34 = arg6;
	if (func_800B1028_BFFD8(arg1, arg2, arg3, &sp3C, &sp38, &sp34, &sp2F) != 0) {
		return 8;
	}

	D_8015F9D0.unk8 = 0;
	sp3C = arg4;
	sp38 = arg5;
	sp34 = arg6;
	func_80126B80_135B30(arg0, arg1, arg2, arg3, &sp3C, &sp38, &sp34);
	switch (D_8015F9D0.unk8) {
		case 5:
			*arg7 = D_8015F9D0.unkC;
			return 6;

		case 7:
		case 8:
			*arg7 = D_8015F9D0.unkC;
			return 7;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80127C08_136BB8.s")
#endif

#ifdef NON_MATCHING
void func_80127D88_136D38(BuildingInstance *arg0, VehicleInstance *arg1, s16 arg2, s16 arg3, s16 arg4, s32 arg5, s32 arg6, s32 arg7) {
	u8 sp3B[5];
	u8 pad[8];
	s32 varT0;
	s32 varV0;

	D_8015F9D0.unkC = 0;
	D_8015F9D0.unk8 = 0xA;
	D_8015F9D0.unk0 = arg5;
	D_8015F9D0.unk2 = arg6;
	D_8015F9D0.unk4 = arg7;

	if (func_800B1028_BFFD8(arg2, arg3, arg4, &arg5, &arg6, &arg7, &sp3B[-5]) != 0) {
		D_8015F9D0.unk8 = 9;
		D_8015F9D0.unk0 = arg5;
		D_8015F9D0.unk2 = arg6;
		D_8015F9D0.unk4 = arg7;
		D_8015F9D0.unk10 = sp3B[-5];
	}

	D_8015F9D0.unk0 = arg5;
	D_8015F9D0.unk2 = arg6;
	D_8015F9D0.unk4 = arg7;
	if (((arg5 - arg2) | (arg6 - arg3) | (arg7 - arg4)) == 0) {
		D_8015F9D0.unk8 = 0xB;
		return;
	}

	if ((((s32) arg0->unk8 >> 8) & 1) == 0) {
		varT0 = 1;
	} else {
		varT0 = 0;
	}

	if (arg1->unkC == -2) {
		varV0 = 5;
	} else {
		varV0 = 7;
	}

	func_80126268_135218(arg2, arg3, arg4, &arg5, &arg6, &arg7, varT0, varV0);

	D_8015F9D0.unk0 = arg5;
	D_8015F9D0.unk2 = arg6;
	D_8015F9D0.unk4 = arg7;
	if (((arg5 - arg2) | (arg6 - arg3) | (arg7 - arg4)) == 0) {
		D_8015F9D0.unk8 = 0xB;
		return;
	}

	func_80126B80_135B30(arg1, arg2, arg3, arg4, &arg5, &arg6, &arg7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80127D88_136D38.s")
#endif

// CURRENT(6200)
#ifdef NON_MATCHING
void func_80127F9C_136F4C(s16 arg0, s16 arg1, s16 arg2) {
	s32 count;
	u8 *indices;
	VehicleInstance *vehicle;
	AlienInstance *alien;
	s32 threshold;
	s32 dx;
	s32 dz;
	AlienSpec *spec;
	u8 *tbl;
	s16 *tbl16;
	s16 val;
	s32 bldg;
	s32 offset;
	s16 vehicleIdx;

	count = D_80158FD8;
	if (count != 0) {
		count--;
		indices = &D_80158E80[count];
		
		while (1) {
			vehicleIdx = *indices;
			vehicle = &vehicleInstances[vehicleIdx];
			threshold = *(s32 *)((u8 *)&vehicleSpecs[vehicle->unk1A] + 0x08);
			dx = func_800047FC_53FC(vehicle->unk0 - arg0);
			dz = func_800047FC_53FC(vehicle->unk4 - arg1);
			
			if ((dx + dz) < threshold) {
				func_80124C40_133BF0(vehicle, D_80145BE0_154B90[arg2].unk2, arg0, arg1);
			}
			
			if (count == 0) break;
			indices--;
			count--;
		}
	}
	
	alien = &alienInstances[0xFE];
	offset = arg2 * 0x18;
	count = 0xFE;
	
	while (count != 0) {
		if (func_8012235C_13130C((Unk8004D0F8 *)alien) != 0) {
			spec = &alienSpecs[alien->specIndex];
			dx = func_800047FC_53FC(alien->unk0 - arg0);
			dz = func_800047FC_53FC(alien->unk4 - arg1);
			
			if ((dx + dz) < spec->unk8) {
			func_80124C40_133BF0((void *)alien, D_80145BE0_154B90[arg2].unk2, arg0, arg1);
			}
		}
		alien = (AlienInstance *)((u8 *)alien - 0x50);
		count--;
	}
	
	bldg = func_8011D260_12C210((s8)(arg0 >> 8), (s8)(arg1 >> 8));
	
	if ((bldg != -1) && (D_80158FE8 == &buildingInstances[bldg])) {
		val = D_80145BE0_154B90[arg2].unk2;
		if (func_8011BEA0_12AE50(bldg & 0xFF, val >> 7) != 0) {
			D_8014ED48 = 8;
		}
	}
	
	func_800F9F00_108EB0(arg0, arg1);
	func_80124170_133120(arg0, func_800F9F00_108EB0(arg0, arg1), arg1, D_80145BE0_154B90[arg2].unk2, (s32)D_80145BE0_154B90[arg2].unk4, NULL);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80127F9C_136F4C.s")
#endif

// CURRENT(115)
#ifdef NON_MATCHING
void func_80128288_137238(VehicleInstance *arg0, s16 arg1, s16 arg2, s16 arg3) {
	s16 value;
	f64 scale;

	value = arg3 / ((vehicleSpecs[arg0->unk1A].unk32 >> 6) + 1);
	if (arg0->unk1A == 0) {
		value = value >> 2;
	}

	if (value >= 0x41) {
		value = 0x40;
	}

	func_80102DDC_111D8C(arg0, arg1, arg2, (f32)value);

	{
		s32 trig = coss((arg0->unk6 - arg1 + 0x7FFF) & 0xFFFF);

		scale = (f64)(value << 8);
		arg0->unk26 = (s16)(s32)(-((f64)(f32)trig / 32768.0) * scale);
	}
	{
		s32 trig = sins((arg0->unk6 - arg1 + 0x7FFF) & 0xFFFF);

	arg0->unk20 |= 1;
		arg0->unk24 = (s16)(s32)(-((f64)(f32)trig / 32768.0) * scale);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80128288_137238.s")
#endif

void func_80128428_1373D8(AlienInstance *arg0, s16 arg1, s16 arg2, s16 arg3, s32 *arg4, s32 *arg5, s32 *arg6) {
	s16 sp38[3];
	s16 sp30[3];
	s32 sp24[3];

	sp38[0] = arg1;
	sp38[1] = arg2;
	sp38[2] = arg3;

	sp30[0] = 0x4000 - arg0->unk6;
	sp30[1] = -arg0->unk8;
	sp30[2] = arg0->unkA;

	if (((s8*)&arg0->unkC)[1] != -2) {
		sp30[1] += arg0->unk44;
		sp30[2] += arg0->unk42;
	}

	func_800044D4_50D4(sp38, sp24, sp30);

	*arg4 = sp24[0] + arg0->unk0;
	*arg5 = sp24[1] + arg0->unk2;
	*arg6 = sp24[2] + arg0->unk4;
}

void func_80128504_1374B4(AlienInstance *arg0, s32 arg1, s32 *arg2, s32 *arg3, s32 *arg4) {
	AlienSpec *spec;
	f32 x;
	f32 y;
	f32 z;

	spec = func_800FAFB8_109F68((VehicleInstance *)arg0);
	if (arg1 == 0) {
		if (D_801591A8 == 0 && currentLevel == 4 && arg0->specIndex == 0xC) {
			x = (f32)((func_800038E0_44E0() % 8) * 5 - 0x14);
		} else {
			x = (f32)spec->unk20;
		}
		y = (f32)spec->unk22;
		z = (f32)spec->unk24;
	} else {
		x = (f32)spec->unk2C;
		y = (f32)spec->unk2E;
		z = (f32)spec->unk30;
	}
	func_80128428_1373D8(arg0, (s16)(s32)x, (s16)(s32)y, (s16)(s32)z, arg2, arg3, arg4);
}

// CURRENT(13117)
#ifdef NON_MATCHING
void func_80128650_137600(Projectile *arg0, s32 arg1) {
	const WeaponEntry_80129864 *building;
	f32 *motion;
	VehicleInstance *vehicle;
	AlienInstance *alien;
	AlienSpec *alienSpec;
	s16 floorY;
	s32 i;
	s32 instId;
	s32 absY;
	s32 absX;
	s32 y;

building = &D_80145BE0_154B90[arg0->unk20];

	for (i = 0x17; i >= 0; i--) {
		D_8015FA40[i].unk4 = 0x7FFF;
	}

	D_80159320 |= 0x40;
	D_80158FEC = NULL;
	D_80158FE8 = NULL;
	D_80158FE4 = NULL;

	motion = (f32 *)((u8 *)arg0 + 0xC);
	for (i = 0;; i++) {
		if ((f64)motion[0] < 0.0) {
			motion[0] = (f32)((f64)motion[0] + D_801451B8_154168);
		}

		if ((i >> 1) < 0x18) {
			D_8015FA40[i >> 1].unk0 = (s16)(s32)arg0->unk0;
			D_8015FA40[i >> 1].unk2 = (s16)(s32)arg0->unk4;
			D_8015FA40[i >> 1].unk4 = (s16)(s32)arg0->unk8;
		}

		arg0->unk0 += motion[1] * motion[0];
		arg0->unk4 += motion[2] * motion[0];
		arg0->unk14 -= 3.0f;
		arg0->unk8 += motion[3] * motion[0];
		if (arg0->unk14 > 100.0f) {
			arg0->unk14 = 100.0f;
		}

		floorY = (s16)(func_800B84D0_C7480((s16)(s32)arg0->unk0, (s16)(s32)arg0->unk8) >> 8);
		if (arg0->unk4 < floorY) {
			arg0->unk4 = floorY;
			D_8015F9D0.unk8 = 1;
			break;
		}

		if (!((((s32)building->unk8) >> 8) & 1) && (arg0->unk4 < D_80222A70)) {
			arg0->unk4 = D_80222A70;
			D_8015F9D0.unk8 = 2;
			break;
		}

		if (((((s32)building->unk8) >> 8) & 0x200) && ((f32)D_80222A70 < arg0->unk4)) {
			arg0->unk4 = D_80222A70;
			D_8015F9D0.unk8 = 0xC;
			break;
		}

		if (func_800B0D10_BFCC0((s32)arg0->unk0, (s32)arg0->unk8, 0) != 0) {
			D_8015F9D0.unk8 = 6;
			break;
		}

		instId = func_8012E114_13D0C4((s16)(s32)arg0->unk0, (s16)(s32)arg0->unk4, (s16)(s32)arg0->unk8);
		if (instId != -1) {
			if ((void *)D_8015FAD0[instId].unk20 == (void *)func_8012E1F8_13D1A8) {
				D_8015F9D0.unk8 = 6;
			} else {
				D_8015F9D0.unk8 = 0xE;
			}
			D_8015F9DC = instId;
			break;
		}

		if (D_80158FD8 != 0) {
			i = D_80158FD8 - 1;
			while (1) {
				vehicle = &vehicleInstances[D_80158E80[i]];
				absY = func_800047FC_53FC((s16)(s32)((f32)vehicle->unk2 - arg0->unk4));
				absX = func_800047FC_53FC((s16)(s32)((f32)vehicle->unk0 - arg0->unk0));
				if ((func_800047FC_53FC((s16)(s32)((f32)vehicle->unk4 - arg0->unk8)) + absX + absY) < *(s32 *)((u8 *)&vehicleSpecs[vehicle->unk1A] + 0x8)) {
					if ((s32)vehicle != arg0->unk24) {
						D_8015F9D0.unk8 = 5;
						D_80158FE4 = vehicle;
						break;
					}
				}

				if (i == 0) {
					break;
				}
				i--;
			}
		}

		if (D_8015F9D0.unk8 == 5) {
			break;
		}

		instId = func_8011E6FC_12D6AC((s16)(s32)arg0->unk0, (s16)(s32)arg0->unk8, &floorY);
		if (instId != -1) {
			y = (s32)arg0->unk4;
			if ((buildingInstances[instId].yCoord < y) && (y < floorY)) {
				if (D_801591A8 != 0) {
					D_80158FE8 = &buildingInstances[instId];
				}
				D_8015F9D0.unk8 = 3;
				break;
			}
		}

		alien = &alienInstances[0xFE];
		for (instId = 0xFE; instId != 0; instId--) {
			if (func_8012235C_13130C((Unk8004D0F8 *)alien) != 0) {
				alienSpec = &alienSpecs[alien->specIndex];
				absY = func_800047FC_53FC((s16)(s32)((f32)alien->unk2 - arg0->unk4));
				absX = func_800047FC_53FC((s16)(s32)((f32)alien->unk0 - arg0->unk0));
				if ((func_800047FC_53FC((s16)(s32)((f32)alien->unk4 - arg0->unk8)) + absX + absY) < alienSpec->unk8) {
					if (((s32)alien != arg0->unk24) && ((f32)alien->unk2 < arg0->unk4) && (arg0->unk4 < (f32)(alien->unk2 + alienSpec->unk38))) {
						D_8015F9D0.unk8 = 7;
						D_80158FEC = alien;
						break;
					}
				}
			}
			alien--;
		}

		if (D_8015F9D0.unk8 == 7) {
			break;
		}
	}

	D_8015F9D0.unk0 = (s16)(s32)arg0->unk0;
	D_8015F9D0.unk2 = (s16)(s32)arg0->unk4;
	D_8015F9D0.unk4 = (s16)(s32)arg0->unk8;

	if (arg1 != 0) {
		D_80159220[0] = (s16)(s32)arg0->unk0;
		D_80159220[1] = (s16)(s32)arg0->unk4;
		D_80159220[2] = (s16)(s32)arg0->unk8;
		D_80159226 = (s16)i;
	}

	func_801238DC_13288C((s16)(((u8 *)arg0 - (u8 *)D_8015EB90) / 0x30));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80128650_137600.s")
#endif

// CURRENT(17973)
#ifdef NON_MATCHING
void func_80128E48_137DF8(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
	s32 halfX;
	s32 halfY;
	s32 halfZ;
	f32 length;
	f32 dirX;
	f32 dirY;
	f32 dirZ;
	s32 startStep;
	f32 startStepF;
	s32 midX;
	s32 midY;
	s32 midZ;
	s32 endStep;
	f32 endStepF;
	f32 midStepF;

	halfX = (arg3 - arg0) >> 1;
	halfY = (arg4 - arg1) >> 1;
	halfZ = (arg5 - arg2) >> 1;

	length = sqrtf((f32)((halfX * halfX) + (halfY * halfY) + (halfZ * halfZ))) * 2.0f;
	if (length == 0.0f) {
		return;
	}

	dirX = (f32)halfX / length;
	dirY = (f32)halfY / length;
	dirZ = (f32)halfZ / length;

	startStep = (func_800038E0_44E0(length) % 30);
	startStep = (s32)(((f32)startStep * length) / 100.0f);
	startStepF = (f32)startStep;

	midX = (s32)((f32)arg0 + (dirX * startStepF));
	midY = (s32)((f32)arg1 + (dirY * startStepF));
	midZ = (s32)((f32)arg2 + (dirZ * startStepF));

	endStep = (func_800038E0_44E0(length) % 30);
	endStep = (s32)(((f32)endStep * length) / 100.0f);
	endStepF = (f32)endStep;

	arg3 = (s32)((f32)arg3 - (dirX * endStepF));
	arg4 = (s32)((f32)arg4 - (dirY * endStepF));
	arg5 = (s32)((f32)arg5 - (dirZ * endStepF));

	gDPSetRenderMode(D_8005BB30++, G_RM_AA_ZB_XLU_LINE, G_RM_NOOP2);
	gDPSetCycleType(D_8005BB30++, G_CYC_1CYCLE);
	gDPSetCombineMode(D_8005BB30++, G_CC_SHADE, G_CC_SHADE);
	gSPClearGeometryMode(D_8005BB30++, G_FOG);

	D_8005BB34->v.ob[0] = midX;
	D_8005BB34->v.ob[1] = midY;
	D_8005BB34->v.ob[2] = midZ;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0x6E;
	D_8005BB34->v.cn[1] = 0xD2;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	midStepF = (f32)(s32)((f64)((length - (f32)startStep) - endStepF) * 0.5);
	D_8005BB34->v.ob[0] = (s16)(s32)((f32)midX + (dirX * midStepF));
	D_8005BB34->v.ob[1] = (s16)(s32)((f32)midY + (dirY * midStepF));
	D_8005BB34->v.ob[2] = (s16)(s32)((f32)midZ + (dirZ * midStepF));
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0xFF;
	D_8005BB34->v.cn[1] = 0xFF;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0x96;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg3;
	D_8005BB34->v.ob[1] = arg4;
	D_8005BB34->v.ob[2] = arg5;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0x50;
	D_8005BB34->v.cn[1] = 0x28;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	gDPPipeSync(D_8005BB30++);
	gSPVertex(D_8005BB30++, D_8005BB34 - 3, 3, 0);
	gSPLine3D(D_8005BB30++, 0, 1, 0);
	gSPLine3D(D_8005BB30++, 1, 2, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80128E48_137DF8.s")
#endif

// CURRENT(8502)
#ifdef NON_MATCHING
Projectile *func_80129354_138304(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
	AlienInstance *alien;
	Projectile *result;
	const WeaponEntry_80129864 *entry;
	s16 *ammo;
	s16 weaponType;
	s32 pad0;
	s32 pad1;
	s32 power;
	s32 x;
	s32 y;
	s32 z;
	s32 distance;
	s32 i;
	s32 halfDistance;
	s32 quarterDistance;
	s32 val;
	void *temp;

	alien = (AlienInstance *)arg0;
	temp = func_800FAFB8_109F68((VehicleInstance *)alien);
	if ((alien->unk1E > 0) && (D_801591A8 == 0)) {
		return NULL;
	}

	if (arg1 == 0) {
		weaponType = *(s16 *)((u8 *)temp + 0x1E);
	} else {
		weaponType = *(s16 *)((u8 *)temp + 0x2A);
	}

	if ((arg0 == (s32)D_80052B34) && (D_801591A8 == 0)) {
		ammo = &D_80048140[weaponSlots[D_8004794A]];
		if (*ammo > 0) {
			*ammo -= 1;
		} else if (*ammo != -0x8000) {
			return NULL;
		}
	}

	entry = &D_80145BE0_154B90[weaponType];
	if (((weaponType == 2) || (weaponType == 0x6A)) && (D_801591A8 == 0)) {
		power = entry->unk2 * 4;

		func_80128504_1374B4(alien, arg1, &x, &y, &z);
		x = arg2 - x;
		y = arg3 - y;
		z = arg4 - z;
		distance = (s32)sqrtf((f32)((x * x) + (y * y) + (z * z)));
		distance = (s16)distance;
		distance /= 5;

		i = (entry == &D_80145BE0_154B90[2]) ? 5 : 9;

		D_80145BE0_154B90[2].unk8 = (((((D_80145BE0_154B90[2].unk8 >> 8) & 0xFFFDFFFF) ^
				((u32)D_80145BE0_154B90[2].unk8 >> 8)) << 8) ^ D_80145BE0_154B90[2].unk8);

		if (i != 0) {
			halfDistance = distance / 2;
			quarterDistance = distance / 4;
			for (i -= 1; i != 0; i -= 1) {
				x = (func_800038E0_44E0() % distance) - halfDistance;
				y = (func_800038E0_44E0() % halfDistance) - quarterDistance;
				z = (func_800038E0_44E0() % distance) - halfDistance;

				alien->unk1E = 0;
				func_80129864_138814((s32)alien, arg1, arg2 + x, arg3 + y, arg4 + z);
			}
		}

		alien->unk1E = 0;
		D_80145BE0_154B90[2].unk8 = ((((((D_80145BE0_154B90[2].unk8 >> 8) | 0x20000) ^
				((u32)D_80145BE0_154B90[2].unk8 >> 8)) << 8) ^ D_80145BE0_154B90[2].unk8);
		result = func_80129864_138814((s32)alien, arg1, arg2, arg3, arg4);
	} else {
		power = entry->unk2;
		result = func_80129864_138814((s32)alien, arg1, arg2, arg3, arg4);
	}

	if ((D_801591A8 == 0) && (arg0 == (s32)D_80052B34)) {
		if (D_80052B34->unk1A != 0) {
			power /= 2;
		}

		if (entry == &D_80145BE0_154B90[105]) {
			val = (power * 3) / 4;
			if (val > 0xC8) {
				val = 0xC8;
			}

			i = power / 16;
			if (i > 0x50) {
				i = 0x50;
			}

			func_80001144_1D44(val & 0xFF, 5, (0x64 - i) & 0xFF);
			osSyncPrintf(D_801450EC_15409C);
		} else {
			val = power * 3;
			if (val > 0xC8) {
				val = 0xC8;
			}

			i = power / 4;
			if (i > 0x50) {
				i = 0x50;
			}

			func_80001144_1D44(val & 0xFF, 5, (0x64 - i) & 0xFF);
		}
	}

	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80129354_138304.s")
#endif

#ifdef NON_MATCHING
Projectile *func_80129864_138814(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
	typedef Projectile *(*SpawnFunc_801226F8)(void *, void *, s16, s16, s16, f32, f32, f32);
	SpawnFunc_801226F8 spawnFunc;

	AlienInstance *alien;
	VehicleInstance *vehicle;
	u8 *weaponData;
	WeaponEntry_80129864 *entry;
	WeaponEntry_80129864 *entryD;
	Projectile *spawned;
	s32 x;
	s32 y;
	s32 z;
	s32 dx;
	s32 dy;
	s32 dz;
	s16 spE6;
	s16 hitX;
	s16 hitY;
	s16 hitZ;
	s32 spAC;
	f32 len;
	f32 scale;
	f32 fx;
	f32 fy;
	f32 fz;
	s32 flags;
	s32 sp9C;

	alien = (AlienInstance *)arg0;
	vehicle = (VehicleInstance *)arg0;
	spawnFunc = (SpawnFunc_801226F8)func_801226F8_1316A8;
	weaponData = func_800FAFB8_109F68(vehicle);
	sp9C = D_80052AD0;

	if (D_801591A8 != 0) {
		D_80159320 &= ~0x40;
	}

	if (arg1 == 0) {
		spE6 = *(s16 *)(weaponData + 0x1C);
	} else {
		spE6 = *(s16 *)(weaponData + 0x28);
	}

	if ((D_801591A8 == 0) && (alien->unk1E > 0)) {
		return NULL;
	}

	if ((arg0 == (s32)D_80052B34) && (D_8014F7F0 != 0)) {
		entry = &D_80145BE0_154B90[16];
	} else {
		entry = &D_80145BE0_154B90[spE6];
	}

	if (entry == D_80145BE0_154B90) {
		return NULL;
	}

	func_80128504_1374B4(alien, arg1, &x, &y, &z);
	hitX = x - alien->unk0;
	hitY = y - alien->unk2;
	hitZ = z - alien->unk4;

	if (arg0 == (s32)D_80052B34) {
		if ((y < D_80222A70) && ((((s32)entry->unk8 >> 8) & 1) == 0)) {
			D_80159320 |= 0x10000;
			return NULL;
		}
		D_80159320 &= ~0x10000;
	}

	if (D_801591A8 == 0) {
		if (spE6 == 0x39) {
			s16 pos[3];

			pos[0] = (s16)arg2;
			pos[1] = (s16)(arg3 + 0x700);
			pos[2] = (s16)arg4;
			spawned = spawnFunc(pos, entry, 0, 0, 0, 0.0f, 0.0f, 0.0f);
			if (spawned != NULL) {
				spawned->unk1C = 0x64;
			}
			return NULL;
		}

		alien->unk1E = entry->unk14;
		if ((arg0 == (s32)D_80052B34) && (entry->unk14 < 0x1E)) {
			D_801591C0 = entry->unk14;
		} else if (arg0 == (s32)D_80052B34) {
			D_801591C0 = 0x1E;
		}

		if (func_800703B0_7F360((s16)x, (s16)z) != 0) {
			if ((entry->unkC != 0) && (entry->unkC < 0x7E)) {
				func_80137130_1460E0(0, entry->unkC, (s16)x, (s16)y, (s16)z);
			}
		}

		if (entry->unkC >= 0x7E) {
			func_80137130_1460E0((s32)entry, entry->unkC, (s16)x, (s16)y, (s16)z);
		}
	}

	flags = ((s32)entry->unk8 >> 8);
	if (flags & 0x4000) {
		arg2 = x;
		arg3 = 0;
		arg4 = z;
	} else {
		dx = arg2 - x;
		dy = arg3 - y;
		dz = arg4 - z;
		len = sqrtf((f32)((dx * dx) + (dy * dy) + (dz * dz)));
		if (len < 100.0f) {
			return NULL;
		}

		if ((u16)entry->unk0 >= 0xBB9) {
			scale = D_801451C8_154178 / len;
		} else {
			scale = (f32)(u16)entry->unk0 / len;
		}

		arg2 = x + (s32)((f32)dx * scale);
		arg3 = y + (s32)((f32)dy * scale);
		arg4 = z + (s32)((f32)dz * scale);
		flags = ((s32)entry->unk8 >> 8);
	}

	if ((flags & 6) && (entry->unk10 != 0) && (D_801591A8 == 0)) {
		s16 spread;

		spread = entry->unk10;
		arg2 = (arg2 + (func_800038E0_44E0() % spread)) - (spread >> 1);
		arg3 = (arg3 + (func_800038E0_44E0() % spread)) - (spread >> 1);
		arg4 = (arg4 + (func_800038E0_44E0() % spread)) - (spread >> 1);
	}

	if ((arg0 == (s32)D_80052B34) && (entry == &D_80145BE0_154B90[20])) {
		func_800EABE0_F9B90(alien);
	}

	if (D_801591A8 == 0) {
		if (spE6 == 0x4B) {
			func_800CDA98_DCA48((s16)x, (s16)y, (s16)z, 0x96);
			return NULL;
		}

		if ((spE6 == 0x6B) || (spE6 == 0x6E)) {
			func_80124170_133120(alien->unk0, alien->unk2, alien->unk4, entry->unk2, entry->unk4, alien);
			if (spE6 == 0x6B) {
				func_800D9DD8_E8D88(alien->unk0, alien->unk2, alien->unk4);
				return NULL;
			}
			func_800D9F60_E8F10(((VehicleInstance *)alien - vehicleInstances) / 1);
			return NULL;
		}

		flags = ((s32)entry->unk8 >> 8);
		if (flags & 0x100000) {
			func_800D3C88_E2C38((s16)x, (s16)y, (s16)z, D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4);
			func_801372B4_146264((s16)x, (s16)y, (s16)z, 7);
			flags = ((s32)entry->unk8 >> 8);
		} else if ((entry == &D_80145BE0_154B90[56]) || (entry == &D_80145BE0_154B90[112])) {
			func_800DE9B8_ED968((s16)x, (s16)y, (s16)z, 0x64);
			flags = ((s32)entry->unk8 >> 8);
		} else if ((entry == &D_80145BE0_154B90[93]) || (entry == &D_80145BE0_154B90[32]) ||
				   (entry == &D_80145BE0_154B90[33]) || (entry == &D_80145BE0_154B90[34]) ||
				   (entry == &D_80145BE0_154B90[35])) {
			func_800DE9B8_ED968((s16)x, (s16)y, (s16)z, 0xC8);
			flags = ((s32)entry->unk8 >> 8);
		} else if ((entry == &D_80145BE0_154B90[104]) || (entry == &D_80145BE0_154B90[102])) {
			func_800DE9B8_ED968((s16)x, (s16)y, (s16)z, 0xFF);
			func_800DEA08_ED9B8((s16)x, (s16)y, (s16)z, 0x46, 0xA, 8, 0x1E, 0x64, 0xFF, 0xFF, 0xFF);
			flags = ((s32)entry->unk8 >> 8);
		} else if (spE6 == 0x67) {
			func_80125CA0_134C50(x, y, z, arg2, arg3, arg4);
			flags = ((s32)entry->unk8 >> 8);
		} else if ((spE6 == 0x2F) || (spE6 == 0x30) || (spE6 == 0x33)) {
			func_800DF9C8_EE978((s16)x, (s16)y, (s16)z, 0x3C, 0, 0);
			flags = ((s32)entry->unk8 >> 8);
		} else if (spE6 == 0x24) {
			func_800DF9C8_EE978((s16)x, (s16)y, (s16)z, 4, 0, 0);
			flags = ((s32)entry->unk8 >> 8);
		}

		if (flags & 0x8000) {
			func_80125C48_134BF8((s16)x, (s16)y, (s16)z);
			flags = ((s32)entry->unk8 >> 8);
		}

		if ((flags & 0x20000) && (D_80052B34->unk1A == 0)) {
			func_800DE9B8_ED968((s16)x, (s16)y, (s16)z, 0x32);
		}
	}

	flags = ((s32)entry->unk8 >> 8);
	if ((flags & 6) || ((D_801591A8 != 0) && !(flags & 8))) {
		s32 tx;
		s32 tz;
		s32 dist2;
		f32 invDist;
		f32 normX;
		f32 normZ;

		func_80127D88_136D38((u8 *)entry, alien, (s16)x, (s16)y, (s16)z, arg2, arg3, arg4);
		if (D_801591A8 != 0) {
			D_801591F8.unk18 = D_8015F9D0.unkC;
			return NULL;
		}

		flags = ((s32)entry->unk8 >> 8);
		if (flags & 0x80) {
			if ((spE6 != 0x2B) && (spE6 != 0x4F)) {
				tx = D_8015F9D0.unk0 - x;
				tz = D_8015F9D0.unk4 - z;
				dist2 = (tx * tx) + (tz * tz);
				if (dist2 != 0) {
					f32 dist = sqrtf((f32)dist2);
					if (dist != 0.0f) {
						invDist = 1.0f / dist;
						normX = (f32)tx * invDist;
						normZ = (f32)tz * invDist;
					} else {
						normX = 0.0f;
						normZ = 0.0f;
					}
				} else {
					normX = 0.0f;
					normZ = 0.0f;
				}

				if ((spE6 == 0xD) || (spE6 == 0xE)) {
					func_800C541C_D43CC((s16)x, (s16)y, (s16)z, (s8)(s32)(normX * 127.0f), 0x7F,
										(s8)(s32)(normZ * 127.0f), 0x28, 0xA0, 0xA, 6, 0xFF, 0x73, 0x96);
					func_800DEA08_ED9B8((s16)x, (s16)y, (s16)z, 0x28, 0xA, 8, 0x1E, 0x64, 0xC8, 0x50, 0x64);
				}

				if ((spE6 == 0xF) || (spE6 == 0x10)) {
					func_800C541C_D43CC((s16)x, (s16)y, (s16)z, (s8)(s32)(normX * 127.0f), 0x7F,
										(s8)(s32)(normZ * 127.0f), 0x28, 0xA0, 0xA, 6, 0xFF, 0xFF, 0x96);
					func_800DEA08_ED9B8((s16)x, (s16)y, (s16)z, 0x28, 0xA, 8, 0x1E, 0x64, 0xFF, 0xFF, 0x96);
				}
			}

			if ((spE6 == 0xD) || (spE6 == 0xE)) {
				func_800E52E8_F4298((s16)x, (s16)y, (s16)z, D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4, 1);
			} else if ((spE6 == 0xF) || (spE6 == 0x10)) {
				func_800E52E8_F4298((s16)x, (s16)y, (s16)z, D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4, 2);
			} else if (spE6 == 0x2B) {
				func_800E5450_F4400(alien, (s16)(entry->unk15 + 1));
			} else if (spE6 == 0x4F) {
				func_800DEA08_ED9B8((s16)x, (s16)y, (s16)z, 0x1E, 0xA, 0, 0xF, 0x3C, 0xFF, 0xFF, 0);
				func_800E52E8_F4298((s16)x, (s16)y, (s16)z, D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4, 4);
			} else if (spE6 == 0x62) {
				func_800E52E8_F4298((s16)x, (s16)y, (s16)z, D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4, 0);
			}
		} else if (flags & 0x40000) {
			func_800D16BC_E066C((s16)x, (s16)y, (s16)z, D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4, 3);
		} else if ((flags & 6) && (spE6 != 0x67) && ((func_800038E0_44E0() & 3) != 0)) {
			func_80128E48_137DF8(x, y, z, D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4);
		}

		if ((D_8015F9D0.unk8 >= 2) && (D_8015F9D0.unk8 <= 0xE)) {
			s16 pitch;
			s32 localFlags;

			pitch = entry->unk2;
			localFlags = ((s32)entry->unk8 >> 8);
			switch (D_8015F9D0.unk8 - 2) {
				case 0:
					spAC += 1;
					if (localFlags & 0x40) {
						func_80137130_1460E0(0, 0xD4, D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4);
					}
					break;

				case 1:
					spAC += 2;
					if (func_8011BEA0_12AE50(entry->unkE & 0xFF, ((s32)pitch >> 7)) != 0) {
						if (D_80158FE8 == &buildingInstances[entry->unkE]) {
							D_8014ED48 = 8;
						}
					}
					break;

				case 2:
				case 3:
				case 8:
				case 9:
				case 10:
					if (localFlags & 0x40) {
						func_80137130_1460E0(0, 0xD4, D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4);
					}
					break;

				case 4:
				case 12:
					spAC += 2;
					func_8012E204_13D1B4(entry->unkE, (s32)entry);
					break;

				case 5:
					spAC += 2;
					if (localFlags & 0x40) {
						func_80137130_1460E0(0, 0xD3, D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4);
					}
					func_800794F8_884A8(D_8015F9D0.unkC, pitch);
					break;

				case 6:
					spAC += 3;
					if ((entry == &D_80145BE0_154B90[70]) && ((s32)D_80052B34 != D_8015F9D0.unkC)) {
						func_80128288_137238((VehicleInstance *)D_8015F9D0.unkC, D_8015F9D0.unk0 + 0x8000, entry->unk0, entry->unk6);
						func_80124C40_133BF0((VehicleInstance *)D_8015F9D0.unkC, pitch, entry->unk0, entry->unk4);
					}
					if (localFlags & 0x40) {
						func_80137130_1460E0(0, 0xD3, D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4);
					}
					break;

				case 7:
					spAC += 4;
					if (D_8015F9D0.unk10 == 0xFF) {
						spAC = 0x1F;
					} else {
						spAC += D_8015F9D0.unk10;
					}
					break;

				case 11:
				default:
					break;
			}
		}

		if (spE6 == 0x4F) {
			func_800C3BD8_D2B88(D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4, 0x28, 5, 0xFF, 0xEE, 0);
			return NULL;
		}

		if (spE6 == 0x67) {
			s16 pos[3];
			s8 rgb[3];

			func_800C3BD8_D2B88(D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4, 0x78, 5, 0xFF, 0xEE, 0);
			pos[0] = D_8015F9D0.unk0;
			pos[1] = D_8015F9D0.unk2;
			pos[2] = D_8015F9D0.unk4;
			rgb[0] = 0xFF;
			rgb[1] = 0xFF;
			rgb[2] = 0xFF;
			func_800B2354_C1304(pos, rgb, 0x100, 0x258);
			return NULL;
		}

		if (entry == &D_80145BE0_154B90[16]) {
			func_800C3BD8_D2B88(D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4, 0x64, 0x28, 0xFF, 0xEE, 0);
			spAC = 0x17;
		}

		if (entry == &D_80145BE0_154B90[15]) {
			spAC = 0x1F;
			func_800DF9C8_EE978(D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4, 0x64, 0, 0);
		}

		if (entry == &D_80145BE0_154B90[90]) {
			spAC = 0x1D;
		}

		if (entry == &D_80145BE0_154B90[43]) {
			spAC = 0xE;
		}

		if ((entry == &D_80145BE0_154B90[56]) || (entry == &D_80145BE0_154B90[112])) {
			spAC = 0x1E;
		}

		if (D_8015F9D0.unk8 == 0xA) {
			return NULL;
		}
		spAC = 0;
		if (flags & 4) {
			spAC = 7;
		}
		if (flags & 0x80) {
			spAC = 0xE;
		}
		func_80124170_133120(D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4, entry->unk2, entry->unk4, NULL);
		if (flags & 0x40000) {
			func_800D05A8_DF558(D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4, 0xC8, 0x8C, 0x8C, 0xC8);
		} else {
			func_800E0F4C_EFEFC(D_8015F9D0.unk0, D_8015F9D0.unk2, D_8015F9D0.unk4, spAC);
		}
		if ((sp9C != 0) && (D_80052AD0 == 0)) {
			D_80158F90 = &D_80158F84;
			D_80158F84 = alien->unk0;
			D_80158F90[1] = alien->unk2;
			D_80158F90[2] = alien->unk4;
		}
		return NULL;
	}

	dx = arg2 - x;
	dy = arg3 - y;
	dz = arg4 - z;
	len = sqrtf((f32)((dx * dx) + (dy * dy) + (dz * dz)));
	if (len == 0.0f) {
		return NULL;
	}

	scale = (f32)entry->unk13 / len;
	fx = (f32)dx * scale;
	fy = (f32)dy * scale;
	fz = (f32)dz * scale;

	if (D_801591A8 != 0) {
		entryD = &D_80145BE0_154B90[20];
		spawned = spawnFunc(alien, entryD, hitX, hitY, hitZ, fx, fy, fz);
	} else {
		spawned = spawnFunc(alien, entry, hitX, hitY, hitZ, fx, fy, fz);
	}

	if (spawned == NULL) {
		return NULL;
	}

	if ((((s32)entry->unk8 >> 8) & 0x800) != 0) {
		if (arg0 == (s32)D_80052B34) {
			s16 c;
			f64 f;

			c = coss((D_80052B34->unk6 - D_80052B2C->unk36) & 0xFFFF);
			f = ((f64)(f32)coss((D_80159318 + 0xFA0) & 0xFFFF) / 32768.0) * ((f64)(f32)c / 32768.0);
			spawned->unk18 = (s32)((f64)entry->unk13 * f);
			spawned->unk1C = (s32)((f64)(f32)sins((D_80159318 + 0x1770) & 0xFFFF) / 32768.0 * (f64)entry->unk13);
			c = sins((D_80052B34->unk6 - D_80052B2C->unk36) & 0xFFFF);
			f = ((f64)(f32)coss((D_80159318 + 0xFA0) & 0xFFFF) / 32768.0) * ((f64)(f32)c / 32768.0);
			spawned->unk20 = (s32)((f64)entry->unk13 * f);
		} else {
			spawned->unk18 = (s32)fx;
			spawned->unk20 = (s32)fz;
			spawned->unk1C = (s32)(fy + (scale * 2000.0f));
		}
	}

	if (D_801591A8 != 0) {
		func_80128650_137600(spawned, 0);
		D_801591F8.unk18 = D_8015F9D0.unkC;
		return NULL;
	}

	if (entry->unkE != 0) {
		return spawned;
	}

	return NULL;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_80129864_138814.s")
#endif

void func_8012B110_13A0C0(s32 arg0, s32 arg1, InputStruct_8012B150 *arg2) {
	Projectile *result;

	result = func_80129354_138304(arg0, arg1, arg2->unk0, arg2->unk2, arg2->unk4);
	if (result != NULL) {
		result->unk18 = (s32)arg2;
	}
}

void func_8012B150_13A100(s32 arg0, s32 arg1, InputStruct_8012B150 *arg2, s32 arg3) {
	Projectile *result;

	result = func_80129354_138304(arg0, arg1, arg2->unk0, arg2->unk2, arg2->unk4);
	if (result != NULL) {
		result->unk18 = arg3;
	}
}

void func_8012B194_13A144(s32 arg0, s32 arg1, u8 arg2) {
	s16 index;
	InputStruct_8012B150 *input;
	Projectile *result;

	index = D_8015904C - arg2;
	if (index < 0) {
		index += 50;
	}

	input = &D_80159050[index];
	result = func_80129354_138304(arg0, arg1, input->unk0, input->unk2, input->unk4);
	if (result != NULL) {
		result->unk18 = (s32) D_80052B2C->unk38;
	}
}

void func_8012B21C_13A1CC(void) {
	s32 i;

	i = D_8015F9E4;
	while (i--) {
		func_801238DC_13288C((s16)i);
	}
}

#ifdef NON_MATCHING
void func_8012B26C_13A21C(void) {
	s32 i;
	Projectile *projectile;
	WeaponEntry_80129864 *entry;
	Unk8015F790 *queueEntry;
	s16 (*fadeData)[4];

	if (D_8015F9EC != 0) {
		D_8015F9EC--;
	}

	func_8011DE60_12CE10(1);

	for (i = D_8015F9E4 - 1; i >= 0; i--) {
		ProjectileCtrl_8012B26C *ctrl;
		s16 groundY;
		s16 prevX;
		s16 prevY;
		s16 prevZ;
		s16 x;
		s16 y;
		s16 z;
		s32 dx;
		s32 dy;
		s32 dz;
		s32 alive;
		s32 impactDamage;
		s16 deferredAlien;

		projectile = &D_8015EB90[i];
		entry = &D_80145BE0_154B90[projectile->unk20];
		ctrl = (ProjectileCtrl_8012B26C *)&projectile->unkC;

		if (projectile->unk28 == 0) {
			continue;
		}

		alive = 1;
		impactDamage = entry->unk2;
		deferredAlien = -1;
		prevX = (s16)projectile->unk0;
		prevY = (s16)projectile->unk4;
		prevZ = (s16)projectile->unk8;

		if (entry->unkE != 0) {
			s16 turnDelta;

			if (ctrl->unk0 < 1.0f) {
				ctrl->unk0 = (f32)((f64)ctrl->unk0 + D_80145200_1541B0);
			}

			turnDelta = func_800F9C50_108C00(
				ctrl->unk4,
				func_80003824_4424(projectile->unk0 - (f32)ctrl->unkC.asPos->x, projectile->unk8 - (f32)ctrl->unkC.asPos->z)
			);

			if (turnDelta > entry->unkE) {
				turnDelta = entry->unkE;
			}
			if (turnDelta < -entry->unkE) {
				turnDelta = -entry->unkE;
			}
			ctrl->unk4 = (s16)(ctrl->unk4 + turnDelta);

			if (ctrl->unk0 >= 1.0f) {
				s16 desiredY;
				s16 yVel;
				s32 dist;
				f32 travel;
				f32 step;
				f32 current;
				f32 desired;

				dist = func_800047FC_53FC((s16)((s16)projectile->unk0 - ctrl->unkC.asPos->x));
				dist += func_800047FC_53FC((s16)((s16)projectile->unk8 - ctrl->unkC.asPos->z));
				desiredY = ctrl->unkC.asPos->y;
				groundY = (s16)((func_800B84D0_C7480((s16)projectile->unk0, (s16)projectile->unk8) >> 8) + 0x32);
				if (desiredY < groundY) {
					desiredY = groundY;
				}

				travel = sqrtf((f32)dist) / (f32)ctrl->unk8;
				if (travel > 0.0f) {
					step = (f32)(u8)entry->unk12;
					current = (f32)*(s16 *)((u8 *)projectile + 0x12);
					desired = ((f32)desiredY - projectile->unk4) / travel;

					if ((current + step) <= desired) {
						yVel = (s16)(current + step);
					} else if (desired <= (current - step)) {
						yVel = (s16)(current - step);
					} else {
						yVel = (s16)desired;
					}

					*(s16 *)((u8 *)projectile + 0x12) = yVel;
				}
			}

			dx = (s32)((((f64)(f32)coss((u16)ctrl->unk4) / 32768.0) * (f64)ctrl->unk8) * (f64)ctrl->unk0);
			dy = (s32)((f32)ctrl->unk6 * ctrl->unk0);
			dz = (s32)((((f64)(f32)sins((u16)ctrl->unk4) / 32768.0) * (f64)ctrl->unk8) * (f64)ctrl->unk0);
		} else {
			if (ctrl->unk0 < 1.0f) {
				ctrl->unk0 = (f32)((f64)ctrl->unk0 + D_80145208_1541B8);
			}

			dx = (s32)((f32)ctrl->unk4 * ctrl->unk0);
			dy = (s32)((f32)ctrl->unk8 * ctrl->unk0);
			dz = (s32)(ctrl->unkC.asFloat * ctrl->unk0);
		}

		projectile->unk28--;
		projectile->unk0 += dx;
		projectile->unk4 += dy;
		projectile->unk8 += dz;

		if (projectile->unk28 == 0) {
			alive = 0;
		}

		if (((D_80145BE8_154B98[projectile->unk20][0] >> 8) & 8) != 0) {
			projectile->unk14 -= 3.0f;
		}

		if (projectile->unk14 > 100.0f) {
			projectile->unk14 = 100.0f;
		}

		x = (s16)projectile->unk0;
		y = (s16)projectile->unk4;
		z = (s16)projectile->unk8;
		groundY = (s16)(func_800B84D0_C7480((s16)projectile->unk0, (s16)projectile->unk8) >> 8);

		if (projectile->unk4 < (f32)groundY) {
			projectile->unk4 = (f32)groundY;
			alive = 0;
			if (((projectile->unk20 == 0x1D) || (projectile->unk20 == 0x1A)) && (D_801591A8 == 0)) {
				func_800B8F30_C7EE0((s16)(x >> 8), (s16)(z >> 8), 1);
				func_800DFBA8_EEB58(x, y, z, 0xB4, 6);
			}
		}

		if (projectile->unk4 < (f32)D_80222A70) {
			if ((D_80052A8C & 1) == 0) {
				func_800D8FA0_E7F50(x, y, z);
			}
		}

		if ((alive != 0) && ((((s32)entry->unk8 >> 8) & 1) == 0) && (projectile->unk4 < (f32)D_80222A70)) {
			alive = 0;
		}

		if ((alive != 0) && ((((s32)entry->unk8 >> 8) & 0x200) != 0) && ((f32)D_80222A70 < projectile->unk4)) {
			projectile->unk4 = (f32)D_80222A70;
		}

		if (func_800B0D10_BFCC0((s32)projectile->unk0, (s32)projectile->unk8, 0) != 0) {
			alive = 0;
		}

		if (alive != 0) {
			s32 vehicleIdx;
			u8 *vehicleId;

			vehicleIdx = D_80158FD8 - 1;
			if (vehicleIdx >= 0) {
				vehicleId = &D_80158E80[vehicleIdx];
				while (alive != 0) {
					VehicleInstance *vehicle = &vehicleInstances[*vehicleId];
					if ((vehicle->unk20 & 0x40) != 0) {
						VehicleSpec *vehicleSpec = &vehicleSpecs[vehicle->unk1A];
						s32 vehicleRadius = *(s32 *)((u8 *)vehicleSpec + 8);
						s32 distance = func_800047FC_53FC((s16)((s16)vehicle->unk0 - (s16)projectile->unk0));
						distance += func_800047FC_53FC((s16)((s16)vehicle->unk4 - (s16)projectile->unk8));

						if ((vehicleSpec->unk16 & 0xF) == 0) {
							distance += func_800047FC_53FC((s16)((s16)vehicle->unk2 - (s16)projectile->unk4));
						}

						if ((distance < vehicleRadius) && (vehicle != (VehicleInstance *)projectile->unk24) &&
							(((vehicleSpec->unk16 & 0xF) != 2) ||
							 (((f32)vehicle->unk2 <= projectile->unk4) &&
							  (projectile->unk4 <= (f32)(vehicle->unk2 + vehicleSpec->unk38)) &&
							  ((func_8010C4EC_11B49C(vehicle), 1) != 0) &&
							  (func_8010CF7C_11BF2C((s16)projectile->unk0, (s16)projectile->unk8) != 0)))) {
							s16 hitYaw;
							s16 hitPitch;
							f32 horizLen;

							alive = 0;
							hitYaw = (s16)(func_80003824_4424((f32)dx, (f32)dz) + 0x8000);
							horizLen = sqrtf((f32)((dx * dx) + (dz * dz)));
							hitPitch = (s16)(func_80003824_4424((f32)dy, horizLen) + 0x4000);
							func_80128288_137238(vehicle, hitYaw, hitPitch, entry->unk6);
							func_80124C40_133BF0(vehicle, impactDamage, (s16)projectile->unk0, (s16)projectile->unk8);
						}
					}

					vehicleId--;
					vehicleIdx--;
					if (vehicleIdx < 0) {
						break;
					}
				}
			}
		}

		if (alive != 0) {
			s16 hitSlot;

			hitSlot = func_8012E114_13D0C4((s16)projectile->unk0, (s16)projectile->unk4, (s16)projectile->unk8);
			if (hitSlot != -1) {
				if (D_8015FAD0[hitSlot].unk2C != 0xA) {
					osSyncPrintf(&D_801450FC_1540AC);
					func_8012E204_13D1B4(hitSlot, (void *)entry);
				}
				if (D_8015FAD0[hitSlot].unk2C != 0xD) {
					alive = 0;
				}
			}
		}

		if (alive != 0) {
			s16 hitTopY;
			s32 buildingIdx;

			buildingIdx = func_8011E6FC_12D6AC((s16)projectile->unk0, (s16)projectile->unk8, &hitTopY);
			if (buildingIdx != -1) {
				BuildingInstance *hitBuilding = &buildingInstances[buildingIdx];
				s16 projectileY = (s16)projectile->unk4;

				if ((hitBuilding->yCoord < projectileY) && (projectileY < hitTopY)) {
					alive = 0;
					if ((hitBuilding == D_80158FE8) && (func_8011BEA0_12AE50(buildingIdx & 0xFF, impactDamage >> 7) != 0)) {
						D_8014ED48 = 8;
					}
				}
			}
		}

		if (alive != 0) {
			s32 hitX;
			s32 hitY;
			s32 hitZ;
			f32 hitRatio;

			hitX = (s16)projectile->unk0;
			hitY = (s16)projectile->unk4;
			hitZ = (s16)projectile->unk8;
			if (func_80125D70_134D20(prevX, prevY, prevZ, &hitX, &hitY, &hitZ, &hitRatio) != 0) {
				alive = 0;
				projectile->unk0 = (f32)(prevX + (s32)((f32)(hitX - prevX) * hitRatio));
				projectile->unk4 = (f32)(prevY + (s32)((f32)(hitY - prevY) * hitRatio));
				projectile->unk8 = (f32)(prevZ + (s32)((f32)(hitZ - prevZ) * hitRatio));
			}
		}

		if (alive != 0) {
			s16 alienIdx;
			AlienInstance *alien;

			alien = &alienInstances[0xFE];
			for (alienIdx = 0xFE; (alienIdx != 0) && (alive != 0); alienIdx--, alien++) {
				AlienSpec *alienSpec;
				s16 testY;
				s32 distance;

				if (((void *)alien == (void *)projectile->unk24) || (func_8012235C_13130C((Unk8004D0F8 *)alien) == 0)) {
					continue;
				}
				if ((func_80122320_1312D0((s32)projectile->unk24) != 0) && (func_80122320_1312D0((s32)alien) != 0)) {
					continue;
				}

				alienSpec = &alienSpecs[alien->specIndex];
				distance = func_800047FC_53FC((s16)((s16)alien->unk0 - (s16)projectile->unk0));
				distance += func_800047FC_53FC((s16)((s16)alien->unk4 - (s16)projectile->unk8));
				if ((alienSpec->unk16 & 0xF) == 0) {
					distance += func_800047FC_53FC((s16)((s16)alien->unk2 - (s16)projectile->unk4));
				}

				testY = alien->unk2;
				if ((alienSpec->unk16 & 0x10) != 0) {
					testY = (s16)(testY - alienSpec->unk38);
				}

				if ((distance < alienSpec->unk8) && ((f32)testY < projectile->unk4) && (projectile->unk4 < (f32)(alien->unk2 + alienSpec->unk38))) {
					u8 spec = alien->specIndex;

					if ((spec >= 0x1B) && (spec < 0x20) && (((alien->unk20 & 0x400000) != 0) || (D_80140AC4_14FA74 == (s32)alien))) {
						deferredAlien = alienIdx;
						continue;
					}

					if (alienSpec->unk5A != -1) {
						Unk80147090Entry_8012B26C *hitEntry;
						s32 hitX;
						s32 hitY;
						s32 hitZ;
						s32 threshold2;
						s32 lineDist;
						s32 sideDist;
						s32 ax;
						s32 az;

						hitEntry = &D_80147090_156040[alienSpec->unk5A];
						threshold2 = hitEntry->radius * hitEntry->radius;
						func_80128428_1373D8((VehicleInstance *)alien, hitEntry->x, hitEntry->y, hitEntry->z, &hitX, &hitY, &hitZ);

						lineDist = func_801269BC_13596C(
							prevX >> 31,
							(u32)(s16)prevX,
							prevZ >> 31,
							(u32)(s16)prevZ,
							x >> 31,
							(u32)x,
							z >> 31,
							(u32)z,
							hitX >> 31,
							(u32)hitX,
							hitZ >> 31,
							(u32)hitZ
						);

						if (lineDist < threshold2) {
							ax = prevX - x;
							az = prevZ - z;
							if (ax < 0) {
								ax = -ax;
							}
							if (az < 0) {
								az = -az;
							}

							if (az < ax) {
								sideDist = func_801269BC_13596C(
									prevX >> 31,
									(u32)(s16)prevX,
									prevY >> 31,
									(u32)prevY,
									x >> 31,
									(u32)x,
									y >> 31,
									(u32)y,
									hitX >> 31,
									(u32)hitX,
									hitY >> 31,
									(u32)hitY
								);
							} else {
								sideDist = func_801269BC_13596C(
									prevZ >> 31,
									(u32)(s16)prevZ,
									prevY >> 31,
									(u32)prevY,
									z >> 31,
									(u32)z,
									y >> 31,
									(u32)y,
									hitZ >> 31,
									(u32)hitZ,
									hitY >> 31,
									(u32)hitY
								);
							}

							if (sideDist < threshold2) {
								alien->unk20 |= 0x800000;
								impactDamage = (impactDamage * D_80147098_156048[(s8)alienSpec->pad5A[0] * 0xC]) >> 8;
							}
						}
					}

					alive = 0;
					func_80124C40_133BF0((VehicleInstance *)alien, impactDamage, (s16)projectile->unk0, (s16)projectile->unk8);
				}
			}
		}

		if (deferredAlien != -1) {
			alive = 0;
			func_80124C40_133BF0((VehicleInstance *)&alienInstances[0xFE + deferredAlien], 0, (s16)projectile->unk0, (s16)projectile->unk8);
		}

		if (alive == 0) {
			projectile->unk28 = 0;
			func_80124170_133120(
				(s16)projectile->unk0,
				groundY,
				(s16)projectile->unk8,
				impactDamage,
				entry->unk4,
				NULL
			);
			if ((((s32)entry->unk8 >> 8) & 0x400) == 0) {
				s16 yPlusFive = (s16)(projectile->unk4 + 5.0f);
				s16 yPlusTen = (s16)(projectile->unk4 + 10.0f);

				switch (projectile->unk20) {
				case 0x0B:
					func_800DF038_EDFE8(x, yPlusTen, z, 0x97, 0, NULL);
					break;

				case 0x0C:
				case 0x14:
					func_800E0F4C_EFEFC(x, y, z, 0x17);
					break;

				case 0x12:
					func_800E0F4C_EFEFC(x, y, z, 0);
					break;

				case 0x15:
				case 0x16:
				case 0x17:
				case 0x18:
				case 0x24:
				case 0x2E:
				case 0x31:
				case 0x34:
					func_800DF038_EDFE8(x, yPlusFive, z, 0x64, 0, NULL);
					break;

				case 0x19:
					func_800DF9C8_EE978(x, y, z, 0xC8, 0, NULL);
					break;

				case 0x1D:
				case 0x1F:
					func_801236F0_1326A0(x, yPlusTen, z, 0x50, 0x10, (projectile->unk20 == 0x1D) ? 0x14 : 0x1E);
					break;

				case 0x20:
					func_800D05A8_DF558(x, yPlusTen, z, 0x1F4, 0xFF, 0x96, 0x96);
					break;

				case 0x21:
					func_800D05A8_DF558(x, yPlusTen, z, 0xC8, 0x96, 0xFF, 0x96);
					break;

				case 0x22:
					func_800D05A8_DF558(x, yPlusTen, z, 0x15E, 0x96, 0x96, 0xFF);
					break;

				case 0x23:
				case 0x4C:
				case 0x1000:
					func_800D05A8_DF558(x, yPlusTen, z, 0x2BC, 0xFF, 0xFF, 0xFF);
					break;

				case 0x25:
				case 0x26:
				case 0x27:
				case 0x28:
				case 0x29:
				case 0x2F:
				case 0x30:
				case 0x32:
				case 0x33:
				case 0x35:
					func_800DF9C8_EE978(x, yPlusFive, z, 0xC8, 0, NULL);
					break;

				case 0x2A:
					func_800E0F4C_EFEFC(x, y, z, 0x16);
					break;

				case 0x39:
					func_800B8F30_C7EE0((s16)(x >> 8), (s16)(z >> 8), 1);
					break;

				case 0x56:
				case 0x57:
				case 0x58:
				case 0x59:
					func_800E0F4C_EFEFC(x, y, z, 0xE);
					break;

				case 0x5A: {
					u16 randA;
					u16 randB;
					s16 randC;
					u16 randD;
					s16 randE;
					s16 randF;
					s32 randG;
					s32 temp;

					randA = (u16)func_800038E0_44E0();
					randB = (u16)func_800038E0_44E0();
					randC = (s16)(func_800038E0_44E0() & 0xFFFF);
					randD = (u16)func_800038E0_44E0();
					randE = (s16)(func_800038E0_44E0() & 0xFFFF);
					randF = (s16)(func_800038E0_44E0() & 0xFFFF);
					randG = func_800038E0_44E0();

					temp = randC & 7;
					if ((randC < 0) && (temp != 0)) {
						temp -= 8;
					}

					func_800CA5EC_D959C(
						x,
						y,
						z,
						(s8)((randA % 0x32) - 0x19),
						(s8)((randB % 0x32) - 0x19),
						-8,
						0x3C,
						0x32,
						8,
						(u8)((randD % 0x23) + 0x9B),
						(u8)(temp + 0x14),
						(u8)((randE % 0x10) + 0xB6),
						(u8)((randF % 0x10) + 0x16),
						(u8)((randG % 0x10) + 0xC0)
					);
					func_800DEA08_ED9B8(x, y, z, 0x12C, -8, 1, 0xC0, 0x10, 0xBE, 0x1E, 0);
					func_80137130_1460E0(0, 0xF4, x, y, z);
					func_80137130_1460E0(0, 0xAD, x, y, z);
					break;
				}

				case 0x5B:
					func_800DEA08_ED9B8(x, y, z, 0x12C, -8, 1, 0xC0, 0x10, 0xBE, 0x1E, 0);
					func_80137130_1460E0(0, 0xF4, x, y, z);
					func_80137130_1460E0(0, 0xAD, x, y, z);
					break;

				case 0x5C:
				case 0x5D:
				case 0x6F:
					func_800DF038_EDFE8(x, yPlusTen, z, 0x96, 0, NULL);
					break;

				case 0x5E:
					func_800D05A8_DF558(x, yPlusTen, z, 0x96, 0xFF, 0x96, 0xFF);
					break;

				case 0x5F:
					func_800D05A8_DF558(x, yPlusTen, z, 0xAA, 0x32, 0xC8, 0xF5);
					break;

				case 0x60:
					func_800DF038_EDFE8(x, yPlusFive, z, 0x97, 0, NULL);
					break;

				case 0x61:
				case 0x6D:
					func_800DF038_EDFE8(x, yPlusFive, z, 0x96, 0, NULL);
					func_80137234_1461E4(0xE8, x, yPlusTen, z, 0x32);
					break;

				case 0x63:
					func_800DF038_EDFE8(x, yPlusFive, z, 0xBF, 0, NULL);
					break;

				case 0x64:
				case 0x6A:
					func_800DF038_EDFE8(x, yPlusTen, z, 0x32, 0, NULL);
					func_80137234_1461E4(0xE8, x, yPlusTen, z, 0x32);
					break;

				case 0x66:
					func_800D05A8_DF558(x, yPlusTen, z, 0x258, 0x32, 0xC8, 0xF5);
					break;

				case 0x67: {
					extern u8 D_801464C8_155478[];

					Projectile *spawned;
					s16 spawnPos[3];
					s16 spawnY;
					s32 k;

					spawnY = (s16)(func_800B84D0_C7480(x, z) >> 8);
					if (spawnY < y) {
						spawnY = y;
					}

					spawnPos[0] = x;
					spawnPos[1] = (s16)(spawnY + 0xA);
					spawnPos[2] = z;

					for (k = 0; k < 8; k++) {
						s16 angle;
						f32 velX;
						f32 velZ;

						angle = (s16)(func_800038E0_44E0() & 0xFFFF);
						velX = (f32)(((f64)(f32)coss((u16)angle) / 32768.0) * 100.0);
						velZ = (f32)(((f64)(f32)sins((u16)angle) / 32768.0) * 100.0);
						spawned = func_801226F8_1316A8(spawnPos, (BuildingInstance *)D_801464C8_155478, 0, 0, 0, velX, 0.0f, velZ);
						if (spawned != NULL) {
							spawned->unk24 = projectile->unk24;
						}
					}
					break;
				}

				case 0x68:
					func_800D05A8_DF558(x, yPlusTen, z, 0x320, 0xFF, 0x64, 0x78);
					break;

				case 0x69: {
					u16 randA;
					u16 randB;
					s16 randC;
					u16 randD;
					s16 randE;
					s16 randF;
					s32 randG;
					s32 temp;

					randA = (u16)func_800038E0_44E0();
					randB = (u16)func_800038E0_44E0();
					randC = (s16)(func_800038E0_44E0() & 0xFFFF);
					randD = (u16)func_800038E0_44E0();
					randE = (s16)(func_800038E0_44E0() & 0xFFFF);
					randF = (s16)(func_800038E0_44E0() & 0xFFFF);
					randG = func_800038E0_44E0();

					temp = randC & 7;
					if ((randC < 0) && (temp != 0)) {
						temp -= 8;
					}

					func_800CA5EC_D959C(
						x,
						y,
						z,
						(s8)((randA % 0x32) - 0x19),
						(s8)((randB % 0x32) - 0x19),
						-8,
						0x3C,
						0x32,
						8,
						(u8)((randD % 0x23) + 0x9B),
						(u8)(temp + 0x14),
						(u8)((randE % 0x10) + 0xA0),
						(u8)((randF % 0x10) + 0x16),
						(u8)((randG % 0x10) + 0xC0)
					);
					func_800DEA08_ED9B8(x, y, z, 0x12C, -8, 1, 0xC0, 0x10, 0xA0, 0x1E, 0xA0);
					func_80137130_1460E0(0, 0xF4, x, y, z);
					func_80137130_1460E0(0, 0xAD, x, y, z);
					break;
				}
				}
			}
		}

		func_801238DC_13288C((s16)i);
	}

	queueEntry = &D_8015F790[15];
	i = 0xF;
	do {
		if (queueEntry->unk1E & 2) {
			s32 j;

			for (j = 3; j >= 0; j--) {
				queueEntry->posX[j] = (j != 0) ? queueEntry->posX[j - 1] : queueEntry->curX;
				queueEntry->posY[j] = (j != 0) ? queueEntry->posY[j - 1] : queueEntry->curY;
				queueEntry->posZ[j] = (j != 0) ? queueEntry->posZ[j - 1] : queueEntry->curZ;
			}

			if (queueEntry->unk1E & 1) {
				u16 count = queueEntry->unk1E;
				s32 burstCount = count >> 2;

				queueEntry->unk1E = (u16)((((burstCount - 1) << 2) & 0xFFFC) | (count & 3));
				if (burstCount == 0) {
					((u8 *)&queueEntry->unk1E)[1] &= 0xFD;
					((u8 *)&queueEntry->unk1E)[1] &= 0xFE;
					D_8015F9E8--;
				}
			} else {
				projectile = (Projectile *)queueEntry->unk20;
				queueEntry->curX = (s16)projectile->unk0;
				queueEntry->curY = (s16)projectile->unk4;
				queueEntry->curZ = (s16)projectile->unk8;
			}
		}
		queueEntry--;
		i--;
	} while (i != 0);

	fadeData = D_8015F9F8;
	for (i = 0; i < 8; i++) {
		if (fadeData[i][3] != 0) {
			fadeData[i][3]--;
		}
	}

	func_8011DE60_12CE10(0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_8012B26C_13A21C.s")
#endif

// CURRENT(305)
#ifdef NON_MATCHING
s32 func_8012D600_13C5B0(void) {
	u32 minTime;
	s32 minIdx;
	s32 i;

	minIdx = -1;
	minTime = (u32)-1;
	i = 0x18;
	do {
		if ((u32)D_8015FAD0[i].unk28 < minTime) {
			minTime = (u32)D_8015FAD0[i].unk28;
			minIdx = i;
		}
		if (D_8015FAD0[i].unk2C == 0) {
			D_8015FAD0[i].unk28 = (u32)D_80052A8C;
			return i;
		}
	} while (i--);
	D_8015FAD0[minIdx].unk28 = (u32)D_80052A8C;
	return minIdx;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_8012D600_13C5B0.s")
#endif

void func_8012D684_13C634(s32 arg0) { *(s32 *)(&D_8015FAF8 + arg0 * 0x30) = -1; }

s32 func_8012D6A4_13C654(u8 arg0, u16 arg1)
{
  s16 *new_var2;
  unsigned long new_var;
  s32 i;
  i = 0x19;
  while (i--)
  {
	new_var2 = &D_8015FAD0[i].unk1E;
	if (D_8015FAD0[i].unk2C == arg0)
	{
	  new_var = arg1;
	  if ((*new_var2) == new_var)
	  {
		return i;
	  }
	}
  }

  return -1;
}

#ifdef NON_MATCHING
s32 func_8012D700_13C6B0(u8 arg0, u16 arg1, s16 arg2, s16 arg3, s16 arg4, s32 arg5, s32 arg6, s32 arg7, s16 arg8, s16 arg9, s16 arg10, void *arg11, void *arg12) {
	Unk8015FAD0 *v1;
	s32 i;

	i = func_8012D6A4_13C654(arg0, arg1);
	if (i == -1) {
		i = func_8012D600_13C5B0();
	}
	if (arg8 < 0) {
		arg8 = -arg8;
	}
	if (arg9 < 0) {
		arg9 = -arg9;
	}
	if (arg10 < 0) {
		arg10 = -arg10;
	}
	v1 = &D_8015FAD0[i];
	v1->unk0 = arg2 << 16;
	v1->unk4 = arg3 << 16;
	v1->unk8 = arg4 << 16;
	v1->unk18 = arg8;
	v1->unk1A = arg9;
	v1->unk1C = arg10;
	v1->unkC = arg5;
	v1->unk10 = arg6;
	v1->unk14 = arg7;
	v1->unk20 = (s32 (*)())arg11;
	v1->unk24 = (void (*)(s32, s16))arg12;
	v1->unk2C = arg0;
	v1->unk1E = arg1;
	return i;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_8012D700_13C6B0.s")
#endif

void func_8012D808_13C7B8(s32 arg0) { D_8015FAD0[arg0].unk2C = 0; }

void func_8012D824_13C7D4(void) {
	s32 i;
	i = 0x19;
	while (i--) {
		D_8015FAD0[i].unk2C = 0;
	}
}

void func_8012D84C_13C7FC()
{
  s32 i;
  for (i = 0x19;i--;)
  {
	if (D_8015FAD0[i].unk28 != -1)
	{
	  D_8015FAD0[i].unk2C = 0;
	}
  }
}

// CURRENT(5837)
#ifdef NON_MATCHING
// DisplayForces - Debug draw interaction boxes
void func_8012D884_13C834(void) {
	Unk8015FAD0 *var_s3;
	s16 temp_a3;
	s16 temp_s0;
	s16 temp_s2;
	s16 temp_s4;
	s16 temp_t0;
	s16 temp_t2;
	s16 temp_t3;
	s16 temp_t4;
	s16 temp_t5;
	s32 temp_t7;
	s32 temp_t8;
	s32 temp_t9;
	s32 var_v1;
	s32 var_s5;

	var_s3 = D_8015FAD0;
	if (D_80047710 == -0x63) {
		gSPMatrix(D_8005BB2C++, &D_80031160, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
		var_v1 = 0x19;
		var_s5 = 0x18;
		if (var_v1 != 0) {
			do {
				if (var_s3->unk2C != 0) {
					temp_s2 = var_s3->unk18;
					temp_t9 = var_s3->unk0 >> 0x10;
					temp_s4 = var_s3->unk1A;
					temp_a3 = var_s3->unk1C;
					temp_t0 = temp_t9 + temp_s2;
					D_8005BB34->v.ob[0] = temp_t0;
					temp_t8 = var_s3->unk4 >> 0x10;
					temp_t7 = var_s3->unk8 >> 0x10;
					temp_t2 = temp_t8 + temp_a3;
					D_8005BB34->v.ob[1] = temp_t2;
					temp_t3 = temp_t7 + temp_s4;
					temp_t4 = temp_t8 - temp_a3;
					D_8005BB34->v.ob[2] = temp_t3;
					temp_t5 = temp_t7 - temp_s4;
					temp_s0 = temp_t9 - temp_s2;
					D_8005BB34->v.flag = 0;
					D_8005BB34->v.tc[0] = 0;
					D_8005BB34->v.tc[1] = 0;
					D_8005BB34->v.cn[0] = 0;
					D_8005BB34->v.cn[1] = 0;
					D_8005BB34->v.cn[2] = 0;
					D_8005BB34->v.cn[3] = 0xFF;
					D_8005BB34[1].v.ob[0] = temp_t0;
					D_8005BB34[1].v.ob[1] = temp_t4;
					D_8005BB34[1].v.ob[2] = temp_t3;
					D_8005BB34[1].v.flag = 0;
					D_8005BB34[1].v.tc[0] = 0;
					D_8005BB34[1].v.tc[1] = 0;
					D_8005BB34[1].v.cn[0] = 0;
					D_8005BB34[1].v.cn[1] = 0;
					D_8005BB34[1].v.cn[2] = 0xFF;
					D_8005BB34[1].v.cn[3] = 0xFF;
					D_8005BB34[2].v.ob[0] = temp_t0;
					D_8005BB34[2].v.ob[1] = temp_t2;
					D_8005BB34[2].v.ob[2] = temp_t5;
					D_8005BB34[2].v.flag = 0;
					D_8005BB34[2].v.tc[0] = 0;
					D_8005BB34[2].v.tc[1] = 0;
					D_8005BB34[2].v.cn[0] = 0;
					D_8005BB34[2].v.cn[1] = 0xFF;
					D_8005BB34[2].v.cn[2] = 0;
					D_8005BB34[2].v.cn[3] = 0xFF;
					D_8005BB34[3].v.ob[0] = temp_t0;
					D_8005BB34[3].v.ob[1] = temp_t4;
					D_8005BB34[3].v.ob[2] = temp_t5;
					D_8005BB34[3].v.flag = 0;
					D_8005BB34[3].v.tc[0] = 0;
					D_8005BB34[3].v.tc[1] = 0;
					D_8005BB34[3].v.cn[0] = 0;
					D_8005BB34[3].v.cn[1] = 0xFF;
					D_8005BB34[3].v.cn[2] = 0xFF;
					D_8005BB34[3].v.cn[3] = 0xFF;
					D_8005BB34[4].v.ob[0] = temp_s0;
					D_8005BB34[4].v.ob[1] = temp_t2;
					D_8005BB34[4].v.ob[2] = temp_t3;
					D_8005BB34[4].v.flag = 0;
					D_8005BB34[4].v.tc[0] = 0;
					D_8005BB34[4].v.tc[1] = 0;
					D_8005BB34[4].v.cn[0] = 0xFF;
					D_8005BB34[4].v.cn[1] = 0;
					D_8005BB34[4].v.cn[2] = 0;
					D_8005BB34[4].v.cn[3] = 0xFF;
					D_8005BB34[5].v.ob[0] = temp_s0;
					D_8005BB34[5].v.ob[1] = temp_t4;
					D_8005BB34[5].v.ob[2] = temp_t3;
					D_8005BB34[5].v.flag = 0;
					D_8005BB34[5].v.tc[0] = 0;
					D_8005BB34[5].v.tc[1] = 0;
					D_8005BB34[5].v.cn[0] = 0xFF;
					D_8005BB34[5].v.cn[1] = 0;
					D_8005BB34[5].v.cn[2] = 0xFF;
					D_8005BB34[5].v.cn[3] = 0xFF;
					D_8005BB34[6].v.ob[0] = temp_s0;
					D_8005BB34[6].v.ob[1] = temp_t2;
					D_8005BB34[6].v.ob[2] = temp_t5;
					D_8005BB34[6].v.flag = 0;
					D_8005BB34[6].v.tc[0] = 0;
					D_8005BB34[6].v.tc[1] = 0;
					D_8005BB34[6].v.cn[0] = 0xFF;
					D_8005BB34[6].v.cn[1] = 0xFF;
					D_8005BB34[6].v.cn[2] = 0;
					D_8005BB34[6].v.cn[3] = 0xFF;
					D_8005BB34[7].v.ob[0] = temp_s0;
					D_8005BB34[7].v.ob[1] = temp_t4;
					D_8005BB34[7].v.ob[2] = temp_t5;
					D_8005BB34[7].v.flag = 0;
					D_8005BB34[7].v.tc[0] = 0;
					D_8005BB34[7].v.tc[1] = 0;
					D_8005BB34[7].v.cn[0] = 0xFF;
					D_8005BB34[7].v.cn[1] = 0xFF;
					D_8005BB34[7].v.cn[2] = 0xFF;
					D_8005BB34[7].v.cn[3] = 0xFF;

					gSPVertex(D_8005BB30++, D_8005BB34, 8, 0);
					gSPLine3D(D_8005BB30++, 0, 1, 0);
					gSPLine3D(D_8005BB30++, 1, 3, 0);
					gSPLine3D(D_8005BB30++, 3, 2, 0);
					gSPLine3D(D_8005BB30++, 2, 0, 0);
					gSPLine3D(D_8005BB30++, 4, 5, 0);
					gSPLine3D(D_8005BB30++, 5, 7, 0);
					gSPLine3D(D_8005BB30++, 7, 6, 0);
					gSPLine3D(D_8005BB30++, 6, 4, 0);
					gSPLine3D(D_8005BB30++, 7, 3, 0);
					gSPLine3D(D_8005BB30++, 6, 2, 0);
					gSPLine3D(D_8005BB30++, 5, 1, 0);
					gSPLine3D(D_8005BB30++, 4, 0, 0);

					D_8005BB34 += 8;
				}
				var_s3++;
			} while (var_s5-- != 0);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_8012D884_13C834.s")
#endif

// CURRENT(20)
#ifdef NON_MATCHING
s32 func_8012DDA8_13CD58(s16 arg0, s16 arg1, s16 arg2, s16 arg3, void *arg4, s32 arg5, s32 *arg6) {
	Unk8015FAD0 *entry;
	s32 i;
	s16 x;
	s16 y;
	s16 z;
	s16 yWithOffset;
	s32 tempFlags;
	s32 flags;

	x = arg0;
	y = arg1;
	z = arg2;
	flags = 0;
	entry = &D_8015FAD0[0x18];
	i = 0x18;
	do {
		if (entry->unk2C != 0) {
			if (x >= ((entry->unk0 >> 0x10) - entry->unk18) && ((entry->unk0 >> 0x10) + entry->unk18) >= x) {
				yWithOffset = y + arg3;
				if (yWithOffset >= ((entry->unk4 >> 0x10) - entry->unk1C) && ((entry->unk4 >> 0x10) + entry->unk1C) >= y) {
					if (z >= ((entry->unk8 >> 0x10) - entry->unk1A) && ((entry->unk8 >> 0x10) + entry->unk1A) >= z) {
						if (arg5 == 0 && entry->unk20 != NULL) {
							entry->unk20(arg4, (s16)i);
						}

						if ((entry->unk2C == 5) || (entry->unk2C == 7) || (entry->unk2C == 0xB)) {
							flags |= 1;
						}

						if (entry->unk2C == 6) {
							s32 topY;

							if ((tempFlags = (flags | 2), topY = (entry->unk4 >> 0x10) + entry->unk1C, yWithOffset >= topY)) {
								flags = tempFlags;
								if (*arg6 < topY) {
									*arg6 = topY;
								}
							}
						}

						if (entry->unk2C == 7) {
							flags |= 0xC;
						}
					}
				}
			}
		}

		entry--;
	} while (i--);

	return flags;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_8012DDA8_13CD58.s")
#endif

s32 func_8012DF90_13CF40(Unk8015FAD0 *arg0, void *arg1, s32 arg2) {

	s32 var_v1 = 0;

	if (arg2 == 0) {
		if (arg0->unk20 != NULL) {
			((s32 (*)()) arg0->unk20)(arg1, (s16) (arg0 - D_8015FAD0));
		}
	}

	if ((arg0->unk2C == 5) || (arg0->unk2C == 7) || (arg0->unk2C == 0xB)) {
		var_v1 = 1;
	}
	if (arg0->unk2C == 6) {
		var_v1 |= 2;
	}
	if (arg0->unk2C == 7) {
		var_v1 |= 4;
	}

	return var_v1;
}

// CURRENT(120)
#ifdef NON_MATCHING
s32 func_8012E03C_13CFEC(s16 arg0, s16 arg1, s16 arg2) {
	s32 a0, a1, a2;
	s32 i;
	s32 v0;
	s16 t0;
	s32 temp1, temp2, temp3;
	
	a0 = arg0;
	a1 = arg1;
	a2 = arg2;
	
	i = 0x19;
	while (i--) {
		if (D_8015FAD0[i].unk2C == 0) continue;
		
		v0 = D_8015FAD0[i].unk0;
		t0 = D_8015FAD0[i].unk18;
		temp1 = v0 >> 16;
		if (a0 < temp1 - t0) continue;
		if (temp1 + t0 < a0) continue;
		
		v0 = D_8015FAD0[i].unk4;
		t0 = D_8015FAD0[i].unk1C;
		temp2 = v0 >> 16;
		if (a1 < temp2 - t0) continue;
		if (temp2 + t0 < a1) continue;
		
		v0 = D_8015FAD0[i].unk8;
		t0 = D_8015FAD0[i].unk1A;
		temp3 = v0 >> 16;
		if (a2 < temp3 - t0) continue;
		if (temp3 + t0 < a2) continue;
		
		return i;
	}
	return -1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_8012E03C_13CFEC.s")
#endif

s32 func_8012E114_13D0C4(s16 arg0, s16 arg1, s16 arg2) {
	s32 i;
	s32 a1;
	s32 a2;

	a1 = arg1;
	a2 = arg2;
	i = 0x19;
	while (i--) {
		if (D_8015FAD0[i].unk2C == 0) continue;
		if (arg0 < (D_8015FAD0[i].unk0 >> 16) - D_8015FAD0[i].unk18) continue;
		if (D_8015FAD0[i].unk18 + (D_8015FAD0[i].unk0 >> 16) < arg0) continue;
		if (a1 < (D_8015FAD0[i].unk4 >> 16) - D_8015FAD0[i].unk1C) continue;
		if (D_8015FAD0[i].unk1C + (D_8015FAD0[i].unk4 >> 16) < a1) continue;
		if (a2 < (D_8015FAD0[i].unk8 >> 16) - D_8015FAD0[i].unk1A) continue;
		if (D_8015FAD0[i].unk1A + (D_8015FAD0[i].unk8 >> 16) < a2) continue;
		if (D_8015FAD0[i].unk24 == 0) continue;
		return i;
	}
	return -1;
}

void func_8012E1F8_13D1A8(s32 arg0, s32 arg1) { }

void func_8012E204_13D1B4(s16 arg0, s32 arg1) {
	void (*callback)(s32, s16);
	callback = D_8015FAD0[arg0].unk24;
	if (callback == NULL) {
		return;
	}

	callback(arg1, arg0);
}

// CURRENT(30589)
#ifdef NON_MATCHING
void func_8012E258_13D208(void) {
	s32 i;
	s32 activeCount;
	s32 dy;
	s32 dx;
	s16 x;
	s16 z;
	s16 y;
	s16 halfX;
	s16 halfZ;
	s16 halfY;
	s16 minY;
	s16 maxY;
	s16 minX;
	s16 maxX;
	s16 minZ;
	s16 maxZ;
	s16 dMinZ;
	s16 dMaxZ;
	s16 dMaxX;
	s16 dMinX;
	s16 pushX;
	s16 pushZ;
	s16 side;
	s16 behavior;
	s16 collisionIdx;
	f32 minForward;
	f32 minStrafe;
	VehicleInstance *vehicle;
	Unk8015FAD0 *entry;
	u8 *activeList;

	D_80159320 &= 0xFEFFFFFF;
	D_80159320 &= 0xFF7FFFFF;

	activeCount = D_80158FD8;
	if (activeCount == 0) {
		return;
	}

	activeList = &D_80158E80[activeCount - 1];
	while (activeCount != 0) {
		activeCount--;
		vehicle = &vehicleInstances[activeList[0]];

		if ((currentLevel != 2) || (vehicle->unk1A != 5)) {
			entry = &D_8015FAD0[0x18];
			i = 0x18;
			do {
				if ((entry->unk2C == 0) || (entry->unk2C >= 4)) {
					continue;
				}

				x = entry->unk0 >> 0x10;
				z = entry->unk8 >> 0x10;
				y = entry->unk4 >> 0x10;
				halfX = entry->unk18;
				halfZ = entry->unk1A;
				halfY = entry->unk1C;

				if (halfZ < halfX) {
					minY = halfX;
				} else {
					minY = halfZ;
				}

				dy = vehicle->unk0 - x;
				if (dy < 0) {
					dy = -dy;
				}

				minY = minY + vehicleSpecs[vehicle->unk1A].unkC + 0x64;
				if (dy >= minY) {
					continue;
				}

				dx = vehicle->unk4 - z;
				if (dx < 0) {
					dx = -dx;
				}
				if (dx >= minY) {
					continue;
				}

				if ((vehicleSpecs[vehicle->unk1A].unk38 + vehicle->unk2 < (y - halfY)) || ((y + halfY) < vehicle->unk2)) {
					continue;
				}

				func_8010C4EC_11B49C(vehicle);

				minZ = 0x7FFF;
				maxZ = -0x8000;
				minX = -0x8000;
				maxX = 0x7FFF;

				{
					s32 j;
					f32 *xCorners;
					f32 *zCorners;

					xCorners = &D_80159D84;
					zCorners = &D_80159DA4;
					for (j = 3; j >= 0; j--) {
						f32 fx;
						f32 fz;

						fx = *xCorners + vehicle->unk4C;
						fz = *zCorners + vehicle->unk54;

						if ((f32)minX < fx) {
							minX = (s16)fx;
						}
						if (fx < (f32)maxX) {
							maxX = (s16)fx;
						}
						if (fz < (f32)minZ) {
							minZ = (s16)fz;
						}
						if ((f32)maxZ < fz) {
							maxZ = (s16)fz;
						}

						xCorners--;
						zCorners--;
					}
				}

				dMaxZ = (maxZ - z) + halfZ;
				dMinZ = -((minZ - z) - halfZ);
				dMaxX = (minX - x) + halfX;
				dMinX = -((maxX - x) - halfX);

				side = 0;
				if ((dMinZ <= 0) || (dMaxZ <= 0) || (dMaxX <= 0) || (dMinX <= 0)) {
					behavior = 0;
				} else {
					s32 best;

					best = 0x7FFF;
					if ((dMinZ > 0) && (dMinZ < best)) {
						best = dMinZ;
						side = 1;
					}
					if ((dMaxZ > 0) && (dMaxZ < best)) {
						best = dMaxZ;
						side = 2;
					}
					if ((dMaxX > 0) && (dMaxX < best)) {
						best = dMaxX;
						side = 3;
					}
					if ((dMinX > 0) && (dMinX < best)) {
						side = 4;
					}

					if ((side > 0) && (entry->unk2C == 2)) {
						osSyncPrintf(&D_801453B0_154360);
						func_800FB468_10A418(vehicle, (f32)(y + halfY));
						vehicle->unk34 = 0.0f;

						if (entry->unk20 != NULL) {
							((void (*)(VehicleInstance *, s16))entry->unk20)(vehicle, (s16)i);
						}
						return;
					}
					behavior = 0;
				}

				collisionIdx = vehicleSpecs[vehicle->unk1A].unk38 >> 1;
				pushX = 0;
				pushZ = 0;

				if (side == 1) {
					pushZ = dMinZ;
				}
				if (side == 2) {
					pushZ = -dMaxZ;
				}
				if (side == 3) {
					pushX = -dMaxX;
				}
				if (side == 4) {
					pushX = dMinX;
				}

				if (side > 0) {
					behavior = 2;
					if (((y + halfY) - vehicle->unk2) < collisionIdx) {
						behavior = 1;
					} else {
						minForward = (f32)pushX;
						minStrafe = (f32)pushZ;
					}
				} else {
					s16 xMax;
					s16 xMin;
					s16 zMax;
					s16 zMin;

					xMax = x + halfX;
					xMin = x - halfX;
					zMax = z + halfZ;
					zMin = z - halfZ;

					if (func_8010CF7C_11BF2C(xMax, zMax) != 0) {
						behavior = 2;
						if (((y + halfY) - vehicle->unk2) < collisionIdx) {
							behavior = 1;
						} else {
							minForward = 10.0f;
							minStrafe = 10.0f;
						}
					}

					if (func_8010CF7C_11BF2C(xMax, zMin) != 0) {
						behavior = 2;
						if (((y + halfY) - vehicle->unk2) < collisionIdx) {
							behavior = 1;
						} else {
							minForward = 10.0f;
							minStrafe = -10.0f;
						}
					}

					if (func_8010CF7C_11BF2C(xMin, zMax) != 0) {
						behavior = 2;
						if (((y + halfY) - vehicle->unk2) < collisionIdx) {
							behavior = 1;
						} else {
							minForward = -10.0f;
							minStrafe = 10.0f;
						}
					}

					if (func_8010CF7C_11BF2C(xMin, zMin) != 0) {
						behavior = 2;
						if (((y + halfY) - vehicle->unk2) < collisionIdx) {
							behavior = 1;
						} else {
							minForward = -10.0f;
							minStrafe = -10.0f;
						}
					}
				}

				if (behavior == 1) {
					func_800FB468_10A418(vehicle, (f32)(y + halfY));
					vehicle->unk34 = 0.0f;
					func_800FB3C4_10A374(vehicle, (f32)((f64)entry->unkC / 65536.0));
					func_800FB40C_10A3BC(vehicle, (f32)((f64)entry->unk14 / 65536.0));
					if (entry->unk20 != NULL) {
						((void (*)(VehicleInstance *, s16))entry->unk20)(vehicle, (s16)i);
					}
				}

				if (behavior == 2) {
					func_800FB430_10A3E0(vehicle, 0.0f);
					func_800FB3C4_10A374(vehicle, minForward);
					func_800FB40C_10A3BC(vehicle, minStrafe);
					if (entry->unk20 != NULL) {
						((void (*)(VehicleInstance *, s16))entry->unk20)(vehicle, (s16)i);
					}
				}

				if ((behavior == 3) && (entry->unk20 != NULL)) {
					((void (*)(VehicleInstance *, s16))entry->unk20)(vehicle, (s16)i);
				}
			} while ((entry--, i-- != 0));
		}

		activeList--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1312D0/func_8012E258_13D208.s")
#endif
