#include <ultra64.h>
#include "common.h"

const char D_801444F0_1534A0[] = "**** ERROR: Cutscenes: RaiseAtlantis: Building not present ****\n";
const char D_80144534_1534E4[] = "**** ERROR: Cutscenes: BridgeBlowerUpper: Building not present ****\n";
const char D_8014457C_15352C[] = "**** ERROR: Cutscenes: AlphaTransmute: Building not present ****\n";

const u32 jtbl_801445C0_153570[] = {
	0x800F0858, 0x800F0B3C, 0x800F08EC, 0x800F08D4, 0x800F0938, 0x0
};

const f64 D_801445D8_153588[1] = {6.283185307};
const f64 D_801445E0_153590[1] = {360.0};
const f64 D_801445E8_153598[1] = {6.283185307};
const f64 D_801445F0_1535A0[1] = {360.0};
const f64 D_801445F8_1535A8[1] = {6.283185307};
const f64 D_80144600_1535B0[1] = {360.0};
const f64 D_80144608_1535B8[1] = {6.283185307};
const f64 D_80144610_1535C0[1] = {360.0};

const u32 jtbl_80144618_1535C8[] = {
	0x800F106C, 0x800F107C, 0x800F108C, 0x800F109C, 0x800F10AC
};

const f32 D_8014462C_1535DC[1] = {0.3f};

const u32 jtbl_80144630_1535E0[] = {
	0x800F12B0, 0x800F1394, 0x800F14C8, 0x800F1578, 0x800F16C8,
	0x800F1798, 0x800F1988, 0x800F1B58, 0x800F1D18, 0x800F1D90
};

const f32 D_80144658_153608[1] = {0.8f};

const u32 jtbl_8014465C_15360C[] = {
	0x800F2120, 0x800F23EC, 0x800F2640, 0x800F26E0, 0x800F2720, 0x800F2848
};

const f32 D_80144674_153624[1] = {15.9f};
const f32 D_80144678_153628[1] = {13.7f};
const f32 D_8014467C_15362C[1] = {0.0f};

const f64 D_80144680_153630[1] = {0.2};
const f64 D_80144688_153638[1] = {0.04511};
const f64 D_80144690_153640[1] = {0.022};
const f64 D_80144698_153648[1] = {0.0};

u32 D_8013FCC4_14EC70[1] = {0x8004F374};
s32 D_8013FCC4_14EC74[3] = {-136, 2021168790, -1774437316};

// CURRENT(3405)
#ifdef NON_MATCHING
s32 func_800EFCC0_FEC70(s32 *arg0) {
	s32 i;
	s32 *src;
	s32 *src1;
	s32 *src2;
	s32 *src3;
	s32 *src4;
	s32 *srcEnd;
	CutsceneEntry *cutsceneData;

	i = 0;
	src = (s32 *)D_80157E90;
	cutsceneData = D_80157E90;

	do {
		arg0[0] = src[0];
		arg0[1] = src[1];
		arg0[2] = src[2];
		arg0[3] = src[3];
		arg0[4] = src[4];
		arg0[5] = src[5];
		i++;
		arg0 += 6;
		src += 6;
	} while (i != 1);

	if (i != 5) {
		src1 = (s32 *)&cutsceneData[i];
		src2 = (s32 *)&cutsceneData[i + 1];
		src3 = (s32 *)&cutsceneData[i + 2];
		src4 = (s32 *)&cutsceneData[i + 3];
		srcEnd = (s32 *)&cutsceneData[i + 7];

		do {
			src4 += 24;
			arg0 += 24;
			arg0[-24] = src1[0];
			arg0[-23] = src1[1];
			src1 += 24;
			src2 += 24;
			arg0[-22] = src1[-22];
			src3 += 24;
			arg0[-21] = src1[-21];
			arg0[-20] = src1[-20];
			arg0[-19] = src1[-19];
			arg0[-18] = src1[-18];

			arg0[-17] = src2[-24];
			arg0[-16] = src2[-23];
			arg0[-15] = src2[-22];
			arg0[-14] = src2[-21];
			arg0[-13] = src2[-20];
			arg0[-12] = src2[-19];

			arg0[-11] = src3[-24];
			arg0[-10] = src3[-23];
			arg0[-9] = src3[-22];
			arg0[-8] = src3[-21];
			arg0[-7] = src3[-20];
			arg0[-6] = src3[-19];

			arg0[-5] = src4[-24];
			arg0[-4] = src4[-23];
			arg0[-3] = src4[-22];
			arg0[-2] = src4[-21];
			arg0[-1] = src4[-20];
			arg0[0] = src4[-19];
		} while (src4 != srcEnd);
	}

	return 5;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/FEC70/func_800EFCC0_FEC70.s")
#endif

void func_800EFE50_FEE00(u8 arg0) {
	func_800101F0_10DF0((s32)D_80157E90,
		(void *)(((s32)&D_3058A40 & 0xFFFFFF) + ((arg0 * 0x78) & 0xFFFF) + (s32)&D_8F4960),
		0x78);
}

/// Cutscene stuff
/// 800EFEB4 is called and triggers cutscenes (may need to be followed by 80013468)
/// Greece values:
/// a0 = cutscene code pointer?
/// 800F1DDC = 0
/// 802D52C4 = 1
/// 800F1134 = 4
/// 802D57A0 = 5
/// 802D64D0 = 6
/// 802D6904 = 7
/// 
/// a1 = cutscene number
/// 0 = Alpha Zero landing at stage start
/// 1 = Bridge lowering
/// 2 = Beacon launch
/// 3 = ?
/// 4 = Destroying Shield Generator
/// 5 = Raising Atlantis
/// 6 = Dark Adam blowing up bridge
/// 7 = Dark Adam blowing up planes
/// 	
/// a2 = bool, pause gameplay while cutscene active?
// CURRENT(330)
#ifdef NON_MATCHING
void func_800EFEB4_FEE64(void *arg0, s16 arg1, s32 arg2) {
	s32 pad1C;
	s32 sp18;
	s16 sp26 = arg1;

	if (D_80052AD0 != 0) {
		if (sp26 == 1) {
			D_8015EA2C = 0.0f;
		}
		D_800476A2 = 0;
		D_80047968 = 0;
		sp18 = sp26;
		func_800EFE50_FEE00((u8)sp18);
		{
			s32 *sp1C = &sp18;
			D_80157F6A = (s8)(*sp1C);
		}
		if (arg2 != 0) {
			gameplayMode = 3;
		} else {
			gameplayMode = 0xB;
		}
		if (sp26 != 3) {
			D_801493E2 = 0;
		}
		D_80157F8C = 0;
		D_80157F8E = 0;
		D_80157F90 = 0;
		D_80157F70 = (s32)arg0;
		if (arg0 != NULL) {
			((void (*)(void))arg0)();
		}
		func_800F0340_FF2F0((u8 *)D_80157E90, 0, 5);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/FEC70/func_800EFEB4_FEE64.s")
#endif

void func_800EFFB4_FEF64(void) {
	s16 temp;

	switch (currentLevel) {
		case 1:
			if (func_8011D260_12C210(0x46, -0x25) == -1) {
				osSyncPrintf(&D_801444F0_1534A0); // **** ERROR: Cutscenes: RaiseAtlantis: Building not present ****
			}

			if (func_8011D260_12C210(0x4A, -7) == -1) {
				osSyncPrintf(&D_80144534_1534E4); // **** ERROR: Cutscenes: BridgeBlowerUpper: Building not present ****
			}

			if (func_8011D260_12C210(-0x13, -0x1F) == -1) {
				osSyncPrintf(&D_8014457C_15352C); // **** ERROR: Cutscenes: AlphaTransmute: Building not present ****
			}
			/* fallthrough */
		case 2:
		default:
			temp = -1;
			break;
	}

	D_80157F68 = temp;
	D_80157F70 = 0;
	D_80157F8C = 0;
	D_80157F8E = 0;
	D_80068080 = 0;
	D_8004DC60 = 0x25;
	D_80157FB4 = 0;
	D_80157F96 = 0;
}

void func_800F0094_FF044(void) {
	if (-1 == D_80157F68) {
		D_8004DC60 = 0;
		return;
	}

	if (D_80157FB4 == 0) {
		if (D_80157F68 != 0) {
			D_80157FB4 = func_800F066C_FF61C();
			goto block_22;
		}
	}

	D_8015EA2C = 0.0f;
	D_801493E0 = 1;
	if ((D_80052ACA != 2) || (currentLevel == LEVEL_COMET)) {
		D_801493E2 = 1;
	}
	D_80157FB4 = 0;
	D_80159DDF = 0xFF;
	D_80157F68 = -1;
	D_80068080 = 0;
	if (D_80052550 != 0) {
		gameplayMode = GAMEPLAY_MODE_UNK6;
		D_80047968 = 1;
	} else {
		gameplayMode = GAMEPLAY_MODE_UNK1;
		D_80157590 = 0;
		D_8004DC60 = 0;
	}
	func_80013324_13F24();
	{
		s16 temp_a0;
		s16 temp_a1;
		s32 temp_v1_2;
		s32 temp_t0;

		temp_a0 = D_80052B2C->unk3C;
		temp_a1 = D_80052B2C->unk3E;
		temp_v1_2 = (temp_a0 >> 8) + 0x77;
		temp_t0 = (temp_a1 >> 8) + 0x77;
		func_800B4050_C3000((u8)temp_v1_2, (u8)temp_t0, (u8 *)D_801FEA30, 0);
	}
	D_800476A2 = 1;
	return;

block_22:
	D_80157F90++;
	if ((D_80157F70 != 0) && (((s32 (*)(void))D_80157F70)() != 0)) {
		D_80157F8C = 0;
		D_80157F8E = 0;
		D_80157F70 = 0;
	}
}

void func_800F0234_FF1E4(void) {
	D_80157F68 = 0;
	D_80157F8C = 0;
	D_80157F8E = 0;
	D_80157F70 = 0;
	D_80157F96 = 0;
	D_80047968 = 1;
}

s32 func_800F026C_FF21C(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	int temp_v0;
	s32 temp_v1;

	temp_v0 = arg0 - arg2;
	temp_v1 = arg1 - arg3;
	return (s32) sqrtf((f32) ((temp_v0 * temp_v0) + (temp_v1 * temp_v1)));
}

s32 func_800F02E4_FF294(void) {
	return 0;
}

void func_800F02EC_FF29C(s16 arg0)
{
  D_80157F4C = (void *) ((((s32) arg0) * 24) + ((s32) D_80157F58));
  D_80157F50 = (void *) ((s32)D_80157F4C + 0x18);
  D_80157F64 = *((s16 *) ((s32)D_80157F4C + 0xC));
  D_80157F54 = 0;
}

// CURRENT(1725)
#ifdef NON_MATCHING
void func_800F0340_FF2F0(u8 *arg0, s16 arg1, s32 arg2) {
	Unk84EECEffect *entry;
	s16 *entryS16;

	D_80157F58 = arg0;
	D_80157F5C = 0;
	D_80157F60 = (s16)arg1;
	D_80157F68 = arg2 - (s16)arg1;

	func_800F02EC_FF29C(D_80157F60 + D_80157F5C);
	entry = D_80157F4C;
	entryS16 = (s16 *)entry;

	switch (entry->unk11) {
	case 0:
		D_80157586 = entry->unk6;
		D_80157588 = entry->unk8;
		D_8015758A = entry->unkA;
		break;
	case 1:
		D_80157586 = D_80052B34->unk0 >> 2;
		D_80157588 = D_80052B34->unk2 >> 2;
		D_80157588 += vehicleSpecs[D_80052B34->unk1A].unk38 >> 3;
		D_8015758A = D_80052B34->unk4 >> 2;
		break;
	case 2:
		D_80157586 = (buildingInstances[entryS16[7]].xCoord >> 2) + *(u16 *)&D_80159DE0;
		D_80157588 = (buildingInstances[entryS16[7]].yCoord >> 2) + D_80159DE2;
		D_80157588 += buildingSpecs[buildingInstances[entryS16[7]].buildingType].unk14 >> 3;
		D_8015758A = (buildingInstances[entryS16[7]].zCoord >> 2) + *(u16 *)&D_80159DE4;
		break;
	case 3:
		D_80157586 = vehicleInstances[entryS16[7]].unk0 >> 2;
		D_80157588 = vehicleInstances[entryS16[7]].unk2 >> 2;
		D_8015758A = vehicleInstances[entryS16[7]].unk4 >> 2;
		break;
	}

	if (entry->unk10 == 0) {
		D_80157580 = D_80157586 + entryS16[0];
		D_80157582 = D_80157588 + entryS16[1];
		D_80157584 = D_8015758A + entryS16[2];
	} else {
		D_80157580 = entryS16[0];
		D_80157582 = entryS16[1];
		D_80157584 = entryS16[2];
	}

	D_80157590 = 3;
	D_8004DC60 = 0x25;
	D_80157FB0 = 0;
	D_80157FAE = D_80157FB0;
	D_80157FAC = D_80157FAE;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/FEC70/func_800F0340_FF2F0.s")
#endif

// CURRENT(24469)
#ifdef NON_MATCHING
s32 func_800F066C_FF61C(void) {
	Unk84EECEffect *entry;
	s16 *entryS16;
	s32 finished;
	s32 s0;
	s32 s1;
	s32 a3;
	s16 sp2C;
	s16 sp2E;
	s16 sp30;
	s16 x;
	s16 y;
	s16 z;

	finished = 0;
	entry = D_80157F4C;
	entryS16 = (s16 *)entry;

	switch (entry->unk11) {
	case 0:
		sp30 = entry->unk6;
		s0 = sp30;
		a3 = entry->unk8;
		sp2C = entry->unkA;
		s1 = sp2C;
		break;
	case 1:
		sp30 = D_80052B34->unk0 >> 2;
		s0 = sp30;
		a3 = D_80052B34->unk2 >> 2;
		a3 += vehicleSpecs[D_80052B34->unk1A].unk38 >> 3;
		sp2C = D_80052B34->unk4 >> 2;
		s1 = sp2C;
		break;
	case 2:
		s0 = (buildingInstances[entryS16[7]].xCoord >> 2) + *(u16 *)&D_80159DE0;
		sp30 = s0;
		s0 = sp30;
		a3 = (buildingInstances[entryS16[7]].yCoord >> 2) + D_80159DE2;
		a3 += buildingSpecs[buildingInstances[entryS16[7]].buildingType].unk14 >> 3;
		a3 = (s16)a3;
		s1 = (buildingInstances[entryS16[7]].zCoord >> 2) + *(u16 *)&D_80159DE4;
		sp2C = s1;
		s1 = sp2C;
		s0 = (s16)s0;
		break;
	case 3:
		s0 = vehicleInstances[entryS16[7]].unk0 >> 2;
		a3 = vehicleInstances[entryS16[7]].unk2 >> 2;
		s1 = vehicleInstances[entryS16[7]].unk4 >> 2;
		s0 = (s16)s0;
		a3 = (s16)a3;
		s1 = (s16)s1;
		break;
	default:
		s1 = sp2C;
		s0 = sp30;
		a3 = sp2E;
		break;
	}

	switch (entry->unk10) {
	case 0:
		D_80157586 = s0;
		D_80157588 = a3;
		D_8015758A = s1;
		D_80157580 = D_80157586 + entryS16[0];
		D_80157582 = D_80157588 + entryS16[1];
		D_80157584 = D_8015758A + entryS16[2];
		D_80157FC0 = entryS16[0];
		D_80157FC2 = entryS16[1];
		D_80157FC4 = entryS16[2];
		break;
	case 1:
		if (D_80157F54 == 0) {
			D_80068080 = 8;
		}
		D_80157580 = entryS16[0];
		D_80157582 = entryS16[1];
		D_80157584 = entryS16[2];
		D_80157586 = s0;
		D_80157588 = a3;
		D_8015758A = s1;
		break;
	case 2:
		D_80157F78 = 0.0f;
		D_80157F74 = 0;
		x = entryS16[0];
		y = entryS16[1];
		z = entryS16[2];

		if (D_80157F64 == D_80157F54) {
			D_80157580 = x;
			D_80157582 = y;
			D_80157584 = z;
			D_80157586 = s0;
			D_80157588 = a3;
			D_8015758A = s1;
		} else {
			f32 ratio;

			ratio = (f32)D_80157F54 / (f32)(u32)D_80157F64;
			D_80157580 = (s16)((f32)D_80157580 + ((f32)(x - D_80157580) * ratio));
			D_80157582 = (s16)((f32)D_80157582 + ((f32)(y - D_80157582) * ratio));
			D_80157584 = (s16)((f32)D_80157584 + ((f32)(z - D_80157584) * ratio));
			D_80157586 = (s16)((f32)D_80157586 + ((f32)(s0 - D_80157586) * ratio));
			D_80157588 = (s16)((f32)D_80157588 + ((f32)(a3 - D_80157588) * ratio));
			D_8015758A = (s16)((f32)D_8015758A + ((f32)(s1 - D_8015758A) * ratio));
		}
		break;
	case 3:
		if (D_80157F54 == 0) {
			D_80157FC8 = 0.0f;
			D_80157FC0 = entryS16[0] - s0;
			D_80157FC2 = entryS16[1] - a3;
			D_80157FC4 = entryS16[2] - s1;
		}

		{
			f32 sp24;
			f32 sp3C;
			f32 sinAngle;

			sinAngle = sinf((f32)((D_80157FC8 * D_801445D8_153588) / D_801445E0_153590));
			sp3C = (cosf((f32)((D_80157FC8 * D_801445E8_153598) / D_801445F0_1535A0)) * (f32)D_80157FC4)
				+ ((f32)D_80157FC0 * sinAngle);
			sp24 = cosf((f32)((D_80157FC8 * D_801445F8_1535A8) / D_80144600_1535B0));
			sinAngle = sinf((f32)((D_80157FC8 * D_80144608_1535B8) / D_80144610_1535C0));

			D_80157586 = s0;
			D_80157588 = a3;
			D_8015758A = s1;
			D_80157580 = (s16)((f32)D_80157586 + sp3C);
			D_80157582 = D_80157588 + D_80157FC2;
			D_80157584 = (s16)((f32)D_8015758A + (((f32)D_80157FC0 * sp24) - (sinAngle * (f32)D_80157FC4)));
		}

		if (D_80157F54 < 8) {
			D_80157FC8 += (f32)(D_80157F54 / 2);
		} else {
			s32 temp = D_80157F64 - D_80157F54;

			if ((u32)temp < 8U) {
				D_80157FC8 += (f32)((u32)temp >> 1);
			} else {
				D_80157FC8 += 4.0f;
			}
		}
		break;
	case 4:
	default:
		break;
	}

	D_80157586 += D_80157FAC;
	D_80157588 += D_80157FAE;
	D_8015758A += D_80157FB0;

	D_80157F54++;
	if (D_80157F64 == D_80157F54) {
		D_80157F5C++;
		if (D_80157F5C == D_80157F68) {
			finished = 1;
		} else {
			func_800F02EC_FF29C((s16)(D_80157F60 + D_80157F5C));
		}
	}

	s0 = D_80157586;
	a3 = D_80157588;
	s1 = D_8015758A;

	D_80157F08.unk3C = s0 << 2;
	D_80157F08.unk3E = s1 << 2;
	D_80157F08.unkC = (f32)s0;
	D_80157F08.unk10 = (f32)a3;
	D_80157F08.unk14 = (f32)s1;
	D_80157F08.unk18 = s0;
	D_80157F08.unk1A = s1;
	D_80157F08.unk0 = (f32)(D_80157580 << 2);
	D_80157F08.unk4 = (f32)(D_80157582 << 2);
	D_80157F08.unk8 = (f32)(D_80157584 << 2);

	if (((s1 >> 8) != (D_80157FCE >> 8)) || ((s0 >> 8) != (D_80157FCC >> 8))) {
		func_80076FCC_85F7C(s0, s1);
		D_80157FCE = D_8015758A;
		D_80157FCC = D_80157586;
	}

	func_800B4050_C3000((u8)((s0 >> 6) + 0x77), (u8)((s1 >> 6) + 0x77), (u8 *)D_801FEA30, 0);
	return finished;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/FEC70/func_800F066C_FF61C.s")
#endif

#ifdef NON_MATCHING
// Spawn boss after delay and dialogue
void func_800F1004_FFFB4(void) {
	AlienInstance *alien;
	s16 z;

	D_80157FD0--;
	if ((D_80157FD0 == 0x32) && (D_80047F9C != 5)) {
		switch (currentLevel) {
			case LEVEL_GREECE:
				func_80018D7C_1997C(0xFF);
				break;
			case LEVEL_JAVA:
				func_80018D7C_1997C(0xE2);
				break;
			case LEVEL_AMERICA:
				func_80018D7C_1997C(0xFA);
				break;
			case LEVEL_SIBERIA:
				func_80018D7C_1997C(0xE6);
				break;
			case LEVEL_COMET:
				func_80018D7C_1997C(0xFA);
				break;
		}

		func_80014A3C_1563C(0, 0x17B, 0.0f, 0, D_8014462C_1535DC);
	}

	if (D_80157FD0 <= 0) {
		alien = &alienInstances[D_80157F94];
		z = alien->unk4 - 0x3E8;
		func_800B0710_BF6C0(alien->unk0, z);
		func_800074BC_80BC(func_800F1004_FFFB4);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/FEC70/func_800F1004_FFFB4.s")
#endif

// CURRENT(29635)
#ifdef NON_MATCHING
// Boss fight cutscene & setup
void func_800F1134_1000E4(void) {
	s32 p3X;
	s32 p3Z;
	s16 minX;
	s16 maxX;
	s16 minZ;
	s16 maxZ;
	s16 y;
	s16 ringY;
	s32 timer;
	s32 sfxVol;
	s16 i;
	s16 angle;
	s16 xOffset;
	s16 zOffset;
	u8 color[4];
	Unk80152B80 pos;
	s32 localDl[3];
	BuildingInstance *building;
	AlienInstance *alien;
	VehicleInstance *vehicle;

	localDl[0] = D_8013FCC4_14EC74[0];
	localDl[1] = D_8013FCC4_14EC74[1];
	localDl[2] = D_8013FCC4_14EC74[2];

	func_80013468_14068(0x11);
	D_80157FA4 = &buildingInstances[func_80120634_12F5E4()];
	D_80159DDF = func_80120634_12F5E4();

	alien = &alienInstances[D_80157F94];
	p3X = alien->unk0;
	p3Z = alien->unk4;

	if (currentLevel == LEVEL_AMERICA) {
		building = &buildingInstances[D_80159DDF];
		y = building->xCoord;
		ringY = building->zCoord;
		maxZ = ringY + 0x64;
		maxX = y + 0x78;
		minZ = ringY - 0x50;
		minX = y - 0x78;
		p3Z = minZ;
		p3X = y;
	} else {
		building = &buildingInstances[D_80159DDF];
		y = building->xCoord;
		ringY = building->zCoord;
		p3X = y - 0x64;
		maxX = y + 0x64;
		maxZ = ringY + 0x78;
		minX = y + 0x50;
		minZ = ringY - 0x78;
		p3Z = ringY;
	}

	if ((u16)D_80157F8C < 10) {
		switch ((u16)D_80157F8C) {
		case 0:
			D_80157FA8 = 1;
			D_801493E0 = 0;

			if (D_80157F8E == 1) {
				func_8012B21C_13A1CC();
			}

			if (D_80157F8E == 0x5E) {
				func_800B91C8_C8178((p3X >> 8) + 1, p3Z >> 8, 0x14);
			}

			if (D_80157F8E >= 0x5B) {
				if ((D_80052A8C & 1) == 0) {
					func_80014A3C_1563C(0, 0xEB, 0.0f, 0, D_80144658_153608);
					func_80135D08_144CB8(10.0f, 1, 1, 1);
				}
			}

			timer = D_80157F8E + 1;
			D_80157F8E = timer;
			if (timer >= 0x8D) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 1:
			if (D_80157F8E == 0xA) {
				building = D_80157FA4;
				y = building->yCoord;
				p3X = building->xCoord;
				p3Z = building->zCoord;

				D_80157FD2 = func_800CD1F8_DC1A8(p3X, y, p3Z, 0, -35, 0);
				D_80157FD4 = func_800CD1F8_DC1A8(maxX, y, maxZ, 0, -35, 0);
				D_80157FD6 = func_800CD1F8_DC1A8(minX, y, minZ, 0, -35, 0);
				func_80135D44_144CF4(p3X, y, p3Z, 3.0f);

				func_800DF9C8_EE978(p3X, y, p3Z, 0x32, 0, 0);
				func_800DF9C8_EE978(maxX, y, maxZ, 0x32, 0, 0);
				func_800DF9C8_EE978(minX, y, minZ, 0x32, 0, 0);
			}

			timer = D_80157F8E + 1;
			D_80157F8E = timer;
			if (timer >= 0xD) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 2:
			if (D_80157F8E >= 0x15) {
				building = D_80157FA4;
				building->yCoord += D_80157F8E / 10;
			}

			building = D_80157FA4;
			y = building->yCoord;
			func_800CD2E8_DC298(p3X, y, p3Z, D_80157FD3);
			func_800CD2E8_DC298(maxX, y, maxZ, D_80157FD5);
			func_800CD2E8_DC298(minX, y, minZ, D_80157FD7);

			timer = D_80157F8E + 1;
			D_80157F8E = timer;
			if (timer >= 0x60) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 3:
			y = func_800B84D0_C7480(p3X, p3Z) >> 8;
			if (D_80157F8E == 0) {
				building = D_80157FA4;
				building->xCoord = p3X;
				building->zCoord = p3Z;
				building->yCoord = y;
			}

			D_80159DE2 = 200 - (D_80157F8E * 2);
			if ((s16)D_80159DE2 < 0) {
				D_80159DE2 = 0;
			}

			building = D_80157FA4;
			y = building->yCoord + (D_80159DE2 * 4);
			if (D_80159DE2 == 2) {
				building = &buildingInstances[D_80159DDF];
				func_80135D44_144CF4(building->xCoord, building->yCoord, building->zCoord, 2.0f);
			}

			if (D_80157F8E < 0x64) {
				func_800CD2E8_DC298(p3X, y, p3Z, D_80157FD3);
				func_800CD2E8_DC298(maxX, y, maxZ, D_80157FD5);
				func_800CD2E8_DC298(minX, y, minZ, D_80157FD7);
			}

			timer = D_80157F8E + 1;
			D_80157F8E = timer;
			if (timer >= 0x6A) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 4:
			D_80052ACC = 0;
			D_8015930E = 0;

			building = D_80157FA4;
			y = building->yCoord;
			p3X = building->xCoord;
			p3Z = building->zCoord;

			if (D_80157F8E == 0) {
				func_800CD390_DC340(D_80157FD3);
				func_800CD390_DC340(D_80157FD5);
				func_800CD390_DC340(D_80157FD7);
			}

			func_800C56A4_D4654(p3X, y + 0x32, p3Z, 0x190, 0x14, 5, 2);

			timer = D_80157F8E + 1;
			D_80157F8E = timer;
			if (timer >= 0x33) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 5:
			building = D_80157FA4;
			y = building->yCoord;
			p3X = building->xCoord;
			p3Z = building->zCoord;

			if (D_80157F8E < 0x1E) {
				func_800C56A4_D4654(p3X, y + 0x32, p3Z, 0x190, 0x14, 5, 2);
			}

			if ((D_80157F8E % 0x12) == 0) {
				func_800D05A8_DF558(p3X, y, p3Z, 0x3E8, 0xFA, 0x64, 0x14);
				ringY = y + 0x1E;
				func_800DEE5C_EDE0C(p3X, ringY, p3Z, 0xA, 2);
				func_800DEE5C_EDE0C(p3X, ringY, p3Z, 0xD, 1);

				color[0] = 0xFA;
				color[1] = 0x64;
				color[2] = 0x14;
				pos.unk0 = p3X;
				pos.unk2 = y;
				pos.unk4 = p3Z;
				func_800B99A8_C8958(&pos, 0x1E, 0x1F4, 0xFF, color, 0x50, 0xA, 0);
			}

			if (D_80157F8E == 0x30) {
				func_800DF9C8_EE978(p3X, y, p3Z, 0x190, 0, localDl);
			}

			timer = D_80157F8E + 1;
			D_80157F8E = timer;
			if (timer >= 0x33) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 6:
			building = D_80157FA4;
			y = building->yCoord;
			p3X = building->xCoord;
			p3Z = building->zCoord;

			D_80052ACA = 2;
			func_8012D84C_13C7FC();

			if (D_80157F8E == 0) {
				D_801493E0 = 1;
				if (D_80052B34->unk1A != 0) {
					func_800FDEA8_10CE58(D_80052B2C, 1);
				}

				func_8011592C_1248DC(p3X, p3Z);
				func_800FD510_10C4C0(0, 0x72);

				for (i = 0; i < D_80158FD8; i++) {
					vehicle = &vehicleInstances[D_80158E80[i]];
					if (vehicle->unk1A != 0x13) {
						vehicle->unk20 &= 0x7FFF;
					}
				}

				D_8013FD78_14ED28->unkA = 0;
				func_800FAD10_109CC0();
				D_80052B34->unk6 = -0x41E3;

				ringY = y + 0x1E;
				func_800DEE5C_EDE0C(p3X, ringY, p3Z, 0xD, 2);
				func_800DEE5C_EDE0C(p3X, ringY, p3Z, 0xF, 1);
				func_800E35E0_F2590(0xFF);
			}

			timer = D_80157F8E;
			D_80157F8E = timer + 1;
			if (timer > 0) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 7:
			building = D_80157FA4;
			y = building->yCoord;
			p3X = building->xCoord;
			p3Z = building->zCoord;

			if (D_80157F8E < 5) {
				sfxVol = (0xFF - (D_80157F8E * 0x33)) & 0xFF;
				func_800E35E0_F2590(sfxVol);
			}

			ringY = y + 0x1E;
			for (i = 0; i < 6; i++) {
				if (D_80157F8E == 0) {
					D_80157FDC[i] = func_800DA6F0_E96A0(p3X, ringY, p3Z, 1);
				} else {
					angle = (i * 0x2AAA) & 0xFFFF;
					xOffset = (s16)((coss(angle) / 32768.0) * (D_80157F8E * 40));
					zOffset = (s16)((sins(angle) / 32768.0) * (D_80157F8E * 40));
					func_800D9B14_E8AC4(p3X + xOffset, ringY, p3Z + zOffset, D_80157FDC[i]);
				}
			}

			timer = D_80157F8E + 1;
			D_80157F8E = timer;
			if (timer >= 0x47) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 8:
			if (D_80157F8E == 0) {
				for (i = 0; i < 6; i++) {
					func_800D9C60_E8C10(D_80157FDC[i]);
				}
				D_80159DDF = 0xFF;
			}

			timer = D_80157F8E + 1;
			D_80157F8E = timer;
			if (timer >= 0x15) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 9:
			D_80157FD0 = 100;
			func_80007410_8010(func_800F1004_FFFB4);
			func_800FAC90_109C40();
			return;
		}
	}

	return;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/FEC70/func_800F1134_1000E4.s")
#endif

// CURRENT(21609)
#ifdef NON_MATCHING
s32 func_800F1DDC_100D8C(void) {
	s16 minX;
	s16 maxX;
	s16 minZ;
	s16 maxZ;
	s16 p3X;
	s16 p3Z;
	f32 f12;
	s32 temp;

	D_80157F96 = 1;
	if ((currentControllerStates[0].button & 0x9000) && (D_80157F8C > 0) && (D_80031B50 == 1)) {
		buildingInstances[D_80159DDF].yCoord =
			func_800B84D0_C7480(buildingInstances[D_80159DDF].xCoord, buildingInstances[D_80159DDF].zCoord) >> 8;
		D_80159DE2 = 0;

		func_800CD390_DC340(D_80157F9E[0]);
		func_800CD390_DC340(D_80157F9E[1]);
		func_800CD390_DC340(D_80157F9E[2]);

		if (currentLevel == LEVEL_GREECE) {
			func_800FB44C_10A3FC(D_80052B34, -5296.0f);
			func_800FB484_10A434(D_80052B34, -31744.0f);
			func_800FB468_10A418(D_80052B34, (f32)func_800F9F00_108EB0(D_80052B34->unk0, D_80052B34->unk4));
		} else if (currentLevel == LEVEL_JAVA) {
			func_800FB44C_10A3FC(D_80052B34, -256.0f);
			func_800FB484_10A434(D_80052B34, 26624.0f);
			func_800FB468_10A418(D_80052B34, (f32)func_800F9F00_108EB0(D_80052B34->unk0, D_80052B34->unk4));
		} else if (currentLevel == LEVEL_AMERICA) {
			func_800FB44C_10A3FC(D_80052B34, -19712.0f);
			func_800FB484_10A434(D_80052B34, 13312.0f);
			func_800FB468_10A418(D_80052B34, (f32)func_800F9F00_108EB0(D_80052B34->unk0, D_80052B34->unk4));
		} else {
			func_800FB44C_10A3FC(D_80052B34, 14336.0f);
			func_800FB484_10A434(D_80052B34, 24576.0f);
			func_800FB468_10A418(D_80052B34, (f32)func_800F9F00_108EB0(D_80052B34->unk0, D_80052B34->unk4));
		}

		f12 = 0.0f;
		D_8015EA2C = f12;
		func_800F0234_FF1E4();
		return 1;
	}

	D_80159DDF = func_80120634_12F5E4();

	if (currentLevel == LEVEL_AMERICA) {
		p3X = buildingInstances[D_80159DDF].xCoord;
		p3Z = buildingInstances[D_80159DDF].zCoord;

		maxZ = p3Z + 0x64;
		maxX = p3X + 0x78;
		minZ = p3Z - 0x50;
		minX = p3X - 0x78;
	} else {
		p3X = buildingInstances[D_80159DDF].xCoord - 0x64;
		maxX = buildingInstances[D_80159DDF].xCoord + 0x64;
		maxZ = buildingInstances[D_80159DDF].zCoord + 0x78;
		minX = buildingInstances[D_80159DDF].xCoord + 0x50;
		minZ = buildingInstances[D_80159DDF].zCoord - 0x78;
		p3Z = buildingInstances[D_80159DDF].zCoord;
	}

	if ((u16)D_80157F8C >= 6) {
		return 0;
	}

	switch (D_80157F8C) {
	case 0:
		D_801493E0 = 0;
		if (D_80157F8E == 0) {
			func_80013468_14068(0);
		}

		D_80159DE0 = 0;
		D_80159DE2 = 0;
		D_80159DE4 = 0;
		D_8005254C = D_80159DDF << 4;
		D_80157F92 = 0;
		f12 = 0.0f;
		D_8015EA2C = f12;

		if (currentLevel == LEVEL_AMERICA) {
			D_80052B34->unkE = 0x4000;
		} else {
			D_80052B34->unkE = -0x8000;
		}

		func_800FB44C_10A3FC(D_80052B34, (f32)buildingInstances[D_80159DDF].xCoord);
		func_800FB468_10A418(D_80052B34, f12);
		func_800FB484_10A434(D_80052B34, (f32)buildingInstances[D_80159DDF].zCoord);

		D_80157F8E = 0;
		D_80157F9E[0] = 0xFF;
		D_80157F9E[1] = 0xFF;
		D_80157F9E[2] = 0xFF;
		D_80157F8C++;

		if (currentLevel == LEVEL_GREECE) {
			D_80157FE4 = 655.0f;
			D_80159DE2 = 0x28F;
		} else {
			D_80157FE4 = 500.0f;
			D_80159DE2 = 0x1F4;
		}

		D_80157F9E[0] = func_800CD1F8_DC1A8(p3X, buildingInstances[D_80159DDF].yCoord, p3Z, 0, -35, 0);
		D_80157F9E[1] = func_800CD1F8_DC1A8(maxX, buildingInstances[D_80159DDF].yCoord, maxZ, 0, -35, 0);
		D_80157F9E[2] = func_800CD1F8_DC1A8(minX, buildingInstances[D_80159DDF].yCoord, minZ, 0, -35, 0);

		if (D_80157F8E < 2) {
			D_80157F8E++;
			return 0;
		}

		D_80157F8E = 0;
		D_80157F8C++;
		return 0;

	case 1:
		D_80159DE2 = (u16)(s32)((f32)D_80159DE2 - D_80157FE4);
		if ((D_80159DE2 >= 0x8001) || (D_80159DE2 == 0)) {
			if (D_80157FE4 != 0.0f) {
				D_80159DE2 = 0;
				func_80135D44_144CF4(0, D_80052B34->unk2, 0, 2.0f);
				D_80157FE4 = 0.0f;
			}
		} else if (D_80157FE4 != 0.0f) {
			D_80157FE4 -= 0.5f;
		}

		func_800CD2E8_DC298(p3X, (s16)(buildingInstances[D_80159DDF].yCoord + (D_80159DE2 * 4)), p3Z, D_80157F9E[0]);
		func_800CD2E8_DC298(maxX, (s16)(buildingInstances[D_80159DDF].yCoord + (D_80159DE2 * 4)), maxZ, D_80157F9E[1]);
		func_800CD2E8_DC298(minX, (s16)(buildingInstances[D_80159DDF].yCoord + (D_80159DE2 * 4)), minZ, D_80157F9E[2]);

		if (D_80157F8E < 0x79) {
			D_80157F8E++;
			return 0;
		}

		D_80157F8E = 0;
		D_80157F8C++;
		return 0;

	case 2:
		if (D_80157F8E == 0) {
			func_800CD390_DC340(D_80157F9E[0]);
			func_800CD390_DC340(D_80157F9E[1]);
			func_800CD390_DC340(D_80157F9E[2]);
			D_801493E0 = 1;
		}

		D_8015EA2C += 0.5f;

		if (D_80157F8E < 0x14) {
			D_80157F8E++;
			return 0;
		}

		D_80157F8E = 0;
		D_80157F8C++;
		return 0;

	case 3:
		func_800EC3A0_FB350(4);

		if (D_80157F8E < 2) {
			D_80157F8E++;
			return 0;
		}

		D_80157F8E = 0;
		D_80157F8C++;
		return 0;

	case 4:
		func_800EC484_FB434(D_80052B34, currentControllerStates);
		func_800EB0C8_FA078(D_80052B34);

		temp = func_800B84D0_C7480(D_80052B34->unk0, D_80052B34->unk4) >> 8;
		if (D_80157F8E < 0x17) {
			func_800FB468_10A418(D_80052B34, ((f32)temp + 44.0f) - ((f32)(D_80157F8E * 2)));
		} else {
			if (D_8015EA2C >= 0.0f) {
				D_8015EA2C -= 1.0f;
			} else {
				D_8015EA2C = 0.0f;
				D_8005254C = -1;
			}
			func_800FB468_10A418(D_80052B34, (f32)temp);
		}

		if (D_80157F8E < 0xB5) {
			D_80157F8E++;
			return 0;
		}

		D_80157F8E = 0;
		D_80157F8C++;
		return 0;

	case 5:
		D_80159DDF = 0xFF;
		D_8015EA2C = 0.0f;
		D_8005254C = -1;
		return 1;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/FEC70/func_800F1DDC_100D8C.s")
#endif
