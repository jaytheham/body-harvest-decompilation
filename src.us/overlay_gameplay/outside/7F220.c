#include <ultra64.h>
#include "common.h"


s32 func_80070270_7F220(s32 arg0) {
	if (arg0 != 7) {
		if (arg0 == 8) {
			func_800720F4_810A4();
			D_800476A2 = 1;
		}
	} else {
		func_800720F4_810A4();
	}
	return 0;
}

#ifdef NON_MATCHING
void func_800702C0_7F270(s16 arg0) {
	u32 currentTick;
	u32 referenceTick;
	u32 elapsedMicro;
	currentTick = osGetCount();
	switch (arg0) {
	case 0:
		referenceTick = D_80149444;
		break;
	case 1:
		referenceTick = currentTick;
		break;
	case 2:
		D_80052A90 = 0;
		referenceTick = currentTick;
		break;
	default:
		referenceTick = D_80149444;
		break;
	}
	
	if (currentTick < referenceTick) {
		referenceTick += 1;
	}
	D_80149444 = referenceTick;
	
	elapsedMicro = (u32)__ull_div(__ll_mul((u64)(currentTick - referenceTick), 0xF4240ULL), D_80035610);
	
	if (gameplayMode == 1) {
		D_80052A90 += elapsedMicro / 1000U;
	}
	
	D_80149444 = currentTick;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/7F220/func_800702C0_7F270.s")
#endif

s32 func_800703B0_7F360(s16 arg0, s16 arg1) {
	s32 var_v1;

	var_v1 = 
		arg0 >= (D_80149434 - 0x800) &&
		arg1 >= (D_80149436 - 0x900) &&
		(D_80149434 + 0x700) >= arg0 &&
		(D_80149436 + 0x700) >= arg1;
	return var_v1;
}

void func_80070420_7F3D0(func_80070420_7F3D0_UnkArg0* arg0) {
	func_8007679C_8574C(arg0->unk9);
}

/// Inits data after save file started
#ifdef NON_MATCHING
void func_80070440_7F3F0(void) {
    s16 sp26;
    s16 spawnX, spawnY;
    s32 var_a0;
    void *temp_v0;
    s16 temp_v1;
    s16 temp_a1;
    s16 temp_t5;
    s16 c0;

    func_8001599C_1659C();
    osSyncPrintf(D_80140D90, D_80047F9C);
    if (D_80047F98 == 0 || currentLevel == 5) {
        var_a0 = D_80047F9C;
        D_80047F94 = 0;
    } else {
        var_a0 = D_80047F9C;
        D_80047F94 = var_a0 - 1;
    }
    if (var_a0 == 5) {
        D_80047F94 = D_8003DFD4[currentLevel * 0x30 + var_a0 * 8];
        weaponSlots[0] = 2;
        weaponSlots[1] = 0;
        weaponSlots[2] = 0;
        weaponSlots[3] = 0;
        weaponSlots[4] = 0;
        weaponSlots[5] = 0;
        weaponSlots[6] = 0;
    }
    temp_v0 = D_8003E000 + currentLevel * 0x30 + var_a0 * 8;
    temp_v1 = *(s16 *)((u8 *)temp_v0 - 0x30);
    temp_a1 = *(s16 *)((u8 *)temp_v0 - 0x2E);
    temp_t5 = *(s16 *)((u8 *)temp_v0 - 0x2A);
    D_801493A0 = -0x6F;
    D_80149398 = 0x6F;
    D_801493A4 = -0x6F;
    D_8014939C = 0x6F;
    spawnX = temp_v1 << 8;
    D_80052B2C = &D_80052AE8;
    D_80259490.unk0 = temp_v1;
    D_80259490.unk2 = temp_a1;
    D_80259490.unk8 = temp_t5;
    spawnY = temp_a1 << 8;
    D_80052AD0 = 1;
    D_80052A8C = 0;
    D_80052B2C->unk30 = 0;
    D_8004816A = 0;
    sp26 = temp_t5;
    if (D_80047F98 > 0) {
        D_80052A8C = (s32)D_80052A98[currentLevel - 1].secondsElapsed;
        D_80052B2C->unk30 = D_80052A98[currentLevel - 1].score;
        D_8004816A = (u16)D_80052A98[currentLevel - 1].humansKilled;
    }
    if (D_80052ACD & 0x80) {
        osSyncPrintf(D_80140DA8);
        D_80052ACD |= 0x40;
    } else {
        osSyncPrintf(D_80140DC0);
        D_80052ACD &= ~0x40;
    }
    if (D_80052ACD & 0x40) {
        D_800314C4 = 0x28;
        D_80048168 = 8;
    } else {
        D_800314C4 = 0x19;
        D_80048168 = 6;
    }
    D_80052AD8 = 0;
    D_801493D4 = 0;
    D_80052A94 = D_801FEA30 + 0x10100;
    D_80152C90 = 0;
    D_801493DC = 0;
    D_801493CC = 0;
    D_801493D8 = 1;
    D_8004D148 = 1;
    D_8004DCA8 = 0;
    D_801493E0 = 0;
    D_801493E2 = 0;
    D_801493F0 = D_801411A0;
    D_801493EC = D_801493F0;
    D_801493E8 = D_801493EC;
    D_801493FC = D_801411A0;
    D_801493F8 = D_801493FC;
    D_801493F4 = D_801493F8;
    D_80149400 = 0.0f;
    D_80149404 = 0x2D;
    D_80149380 = 0;
    D_80149408 = 0;
    D_8004816E = 0;
    D_80048170 = 0;
    D_80031414 = 0;
    D_8013FCD0 = 0;
    D_80048176 = 0;
    D_80052ACC = 0;
    D_80052550 = 0;
    D_80031410 = 0;
    func_8012D824_13C7D4();
    func_80017AE0_186E0();
    func_800048B8_54B8();
    func_800048E8_54E8();
    func_80004918_5518();
    D_80047B70 = 0;
    D_80047F80 = 0;
    func_800A17EC_B079C();
    func_800B41C8_C3178(((spawnX >> 8) + 0x77) & 0xFF, ((spawnY >> 8) + 0x77) & 0xFF, D_801FEA30, 0);
    func_80076FCC_85F7C(spawnX, spawnY);
    func_8007AA0C_899BC();
    func_8011694C_1258FC();
    func_800EA280_F9230();
    func_800F3670_102620();
    func_800EA434_F93E4();
    func_80124BA8_133B58();
    func_80139984_148934();
    func_800E0134_EF0E4();
    func_8009BAC0_AAA70();
    func_8001A500_1B100(0);
    func_800A5D3C_B4CEC();
    func_80073A74_82A24();
    func_800AE588_BD538();
    if (D_80047F9C == 5 && currentLevel != 5) {
        func_800AF348_BE2F8(0x32);
    }
    func_80007548_8148();
    func_80017AAC_186AC();
    func_800BD2F4_CC2A4();
    func_80004AEC_56EC();
    {
        f32 fx = (f32)spawnX;
        f32 fz = (f32)spawnY;
        Unk80052B2C *obj = &D_80052AE8;
        do {
            obj->unk0 = fx;
            obj->unk4 = 4000.0f;
            obj->unk8 = fz;
            obj->unkC = fx;
            obj->unk10 = 1000.0f;
            obj->unk14 = fz;
            obj->unk18 = spawnX;
            obj->unk1A = spawnY;
            obj->unk3C = spawnX;
            obj->unk3E = spawnY;
            obj->unk1C = 0x1770;
            obj->unk1E = 0x19;
            obj->unk34 = 0;
            obj->unk36 = 0;
            obj->unk38 = (Unk80052B34 *)D_8004DCD0;
        } while (++obj != &D_80052AE8 + 1);
    }
    func_800FCA5C_10BA0C();
    func_800756DC_8468C();
    func_80075E50_84E00();
    func_800BDDA0_CCD50();
    D_80052B34->unk6 = sp26;
    D_80052B2C->unk1C = 0x12C;
    D_80052B2C->unk1E = 0x71C;
    c0 = coss(D_80052B2C->unk1E);
    D_80052B2C->unk0 = (f32)(((f64)(f32)coss(0xFA0) / 32768.0) * (f64)D_80052B2C->unk1C * ((f64)(f32)c0 / 32768.0) + (f64)D_80052B2C->unkC);
    D_80052B2C->unk4 = (f32)(((f64)(f32)sins(D_80052B2C->unk1E) / 32768.0) * (f64)D_80052B2C->unk1C + (f64)D_80052B34->unk2);
    c0 = coss(D_80052B2C->unk1E);
    D_80052B2C->unk8 = (f32)(((f64)(f32)sins(0xFA0) / 32768.0) * (f64)D_80052B2C->unk1C * ((f64)(f32)c0 / 32768.0) + (f64)D_80052B2C->unk14);
    D_80157590 = 0;
    D_8004DC60 = 0;
    func_800B0C80_BFC30();
    func_800FAC90_109C40();
    if (showDemoText == 1) {
        D_800313C8 = 2;
        func_802D4CD0_18D7E0(0x13, 0);
    }
    func_80013324_13F24();
    if (D_80047F98 != 0) {
        if (currentLevel != 5) {
            func_800A5EE8_B4E98(D_80047F97);
        } else {
            func_802D4CD0_18D7E0(0x10, 0);
            D_801493E0 = 0;
        }
    }
    D_801493E2 = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/7F220/func_80070440_7F3F0.s")
#endif

void func_80070BFC_7FBAC(void) {
	func_80011E14_12A14(D_80047F93);
	func_80004CC8_58C8();
	func_80004D38_5938();
	D_80052B2C = &D_80052AE8;

	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RNX, 0x4);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RNY, 0x4);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RPX, 0xFFFC);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RPY, 0xFFFC);
}

// drawSky?
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/7F220/func_80070CC0_7FC70.s")

// Does stuff with object fog colour values
#ifdef NON_MATCHING
void* func_80070FB8_7FF68(void) {
	Gfx *dl = D_8005BB2C;
	s32 fogRange = D_800313FC - D_800313F8;
	s32 fogOffset = (s32)(D_800313F8 * (-0x100)) + 0x1F400;

	gDPSetFogColor(D_8005BB2C++, D_80047743, D_80047744, D_80047745, D_800313F4 & 0xFF);
	gMoveWd(D_8005BB2C++, G_MW_FOG, G_MWO_FOG,
		(((0x1F400 / fogRange) & 0xFFFF) << 0x10) | ((fogOffset / fogRange) & 0xFFFF));

	return dl;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/7F220/func_80070FB8_7FF68.s")
#endif

// If called from drawComplexObjects causes alien bodies to be red (as if shot)
void func_800710D4_80084(u8 arg0, u8 arg1, u8 arg2) {
	gDPSetFogColor(D_8005BB2C++, arg0, arg1, arg2, 0xFF);
	gSPFogPosition(D_8005BB2C++, 0, 100);
}

void func_80071148_800F8(u8 arg0, u8 arg1) {
	D_80149448 = 1;
	D_80149449 = arg0;
	D_8014944A = arg1;
	D_8014944B = arg1;
}

void func_80071178_80128(void) {
	if ((s32) D_80149449 > 0) {
		if ((s32) D_8014944A > 0) {
			if (D_80149448 == 1) {
				func_800710D4_80084(0xBE, 0xBE, 0xFF);
				D_8014944A -= 1;
				return;
			}
			D_8014944A -= 1;
			return;
		}
		if (D_80149448 == 1) {
			D_80149449 -= 1;
		}
		D_80149448 = 1 - D_80149448;
		D_8014944A = D_8014944B;
	}
}

#ifdef NON_MATCHING
void func_80071228_801D8(void) {
	Gfx* dl;
	Gfx* savedDl31200;
	Gfx* savedDl311D0;
	s32 savedX;
	s32 savedY;
	s32 savedZ;
	s32 phase;
	s32 offset;
	s32 halfOffset;
	s32 level;
	u32 segAddr31160;
	u32 matrixBase;

	func_800E8890_F7840();

	segAddr31160 = ((u32)&D_80031160) & 0x1FFFFFFF;
	savedDl31200 = D_80031200;

	dl = D_8005BB2C++;
	dl->words.w0 = 0x01020040;     dl->words.w1 = segAddr31160;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xB7000000;
	dl->words.w1 = 0x00020000;

	dl = D_8005BB2C++;
	dl->words.w0 = 0x06000000;    dl->words.w1 = (u32)savedDl31200;

	func_80070FB8_7FF68();
	func_800B9DB8_C8D68(0);
	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80140DD8);
	}

	func_800B19F8_C09A8();
	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80140DEC);
	}

	if (D_80052ACB == 0) {
		func_800E94B8_F8468(D_80140EA0);
		if (currentControllerStates[0].button == 0x30) {
			osSyncPrintf(D_80140E08);
		}

		func_8007BEC0_8AE70();
		if (currentControllerStates[0].button == 0x30) {
			osSyncPrintf(D_80140E1C);
		}

		func_800EA12C_F90DC();
		if (currentControllerStates[0].button == 0x30) {
			osSyncPrintf(D_80140E3C);
		}

		func_800F97FC_1087AC();
		if (currentControllerStates[0].button == 0x30) {
			osSyncPrintf(D_80140E58);
		}

		func_800DD5E0_EC590();
		if (currentControllerStates[0].button == 0x30) {
			osSyncPrintf(D_80140E6C);
		}

		func_800EA088_F9038();
		if (currentControllerStates[0].button == 0x30) {
			osSyncPrintf(D_80140E88);
		}
	} else {
		osSyncPrintf(D_80140EA0);
	}

	if (D_80052ACB == 2) {
		return;
	}

	func_800F98C0_108870();
	if (D_80052ACB == 2) {
		return;
	}

	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80140EC0);
	}

	dl = D_8005BB2C++;
	dl->words.w0 = 0xB7000000;
	dl->words.w1 = 0x2000;

	dl = D_8005BB2C++;
	dl->words.w0 = 0x06000000; dl->words.w1 = (u32)D_800311D0;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xB900031D; dl->words.w1 = 0xC8112478;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xE7000000;
	dl->words.w1 = 0;

	savedDl311D0 = D_800311D0;
	func_80124D60_133D10();
	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80140ED0);
	}

	if (D_80052ACB == 2) {
		return;
	}

	if (D_80052ACA != 2) {
		func_8007764C_865FC();
		if (currentControllerStates[0].button == 0x30) {
			osSyncPrintf(D_80140EE4);
		}
	}

	if (D_80052ACB == 2) {
		return;
	}

	func_8010065C_10F60C(0);
	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80140EF8);
	}

	if (D_80052ACB == 2) {
		return;
	}

	func_80101C14_110BC4();
	if (D_80052ACB == 2) {
		return;
	}

	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80140F10);
	}

	if (D_80157590 != 0) {
		func_8010065C_10F60C(1);
	}

	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80140F28);
	}

	if (D_80052ACB == 2) {
		return;
	}

	if ((D_80052ACA != 2) || (currentLevel == LEVEL_COMET)) {
		
		if (D_80159320 & 0x80) {
			phase = D_80052A8C;
			savedX = D_800311A0.unk0;
			savedY = D_800311A0.unk2;
			savedZ = D_800311A0.unk4;

			offset = (s32) (((f64) (f32) sins((D_80052A8C << 12) & 0xFFFF) / 32768.0) * 32.0);
			halfOffset = offset >> 1;

			D_800311A0.unk2 += offset;
			D_800311A0.unk0 -= halfOffset;
			D_800311A0.unk4 -= halfOffset;
			phase = offset;
		}

		func_80118774_127724(phase);

		if (D_80159320 & 0x80) {
			D_800311A0.unk0 = savedX;
			D_800311A0.unk2 = savedY;
			D_800311A0.unk4 = savedZ;
		}

		if (currentControllerStates[0].button == 0x30) {
			osSyncPrintf(D_80140F40);
		}
	}

	if (D_80052ACB == 2) {
		return;
	}

	func_8007C044_8AFF4();
	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80140F58);
	}

	if (D_80052ACB == 2) {
		return;
	}

	func_8012D884_13C834();
	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80140F70);
	}

	if (D_80052ACB == 2) {
		return;
	}

	level = currentLevel;
	if (level == LEVEL_COMET) {
		func_802D4CD0_18D7E0(0x11, 0);
		level = currentLevel;
	}
	if (level == LEVEL_AMERICA) {
		func_802D4CD0_18D7E0(0xE, 0);
	}

	if (D_80052ACB == 2) {
		return;
	}

	func_800A70B8_B6068();
	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80140F84);
	}

	if (D_80052ACB == 2) {
		return;
	}

	func_801365E0_145590();
	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80140F98);
	}
	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80140FB0);
	}

	if (D_80052ACB == 2) {
		return;
	}

	if (D_80157590 == 0) {
		dl = D_8005BB2C++;
		dl->words.w0 = 0x06000000;        dl->words.w1 = (u32) D_80031230;

		func_800A3490_B2440(D_80159020);

		dl = D_8005BB2C++;
		dl->words.w0 = 0x06000000;
		dl->words.w1 = (u32) savedDl31200;

		dl = D_8005BB2C++;
		dl->words.w0 = 0x01020040;
		dl->words.w1 = segAddr31160;

		dl = D_8005BB2C++;
		dl->words.w0 = 0xBA000E02;
		dl->words.w1 = 0x8000;

		dl = D_8005BB2C++;
		dl->words.w0 = 0xB7000000;
		dl->words.w1 = 0x10204;

		dl = D_8005BB2C++;
		dl->words.w0 = 0xB900031D;
		dl->words.w1 = 0xC8112478;

		dl = D_8005BB2C++;
		dl->words.w0 = 0xBA001402;
		dl->words.w1 = 0x100000;

		dl = D_8005BB2C++;
		dl->words.w0 = 0xFCFFFFFF;
		dl->words.w1 = 0xFFFE7838;

		dl = D_8005BB2C++;
		dl->words.w0 = 0xBA000C02;
		dl->words.w1 = 0x2000;

		dl = D_8005BB2C++;
		dl->words.w0 = 0xBB000001;
		dl->words.w1 = 0x80008000;

		dl = D_8005BB2C++;
		dl->words.w0 = 0xE7000000;
		dl->words.w1 = 0;

		dl = D_8005BB2C++;
		dl->words.w0 = 0xB7000000;
		dl->words.w1 = 0x22001;

		func_80071178_80128();
		func_8010065C_10F60C(1);
		func_80070FB8_7FF68();

		dl = D_8005BB2C++;
		dl->words.w0 = 0xBA001402;
		dl->words.w1 = 0;
	}

	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80140FC4);
	}

	dl = D_8005BB2C++;
	dl->words.w0 = 0xBA000E02;
	dl->words.w1 = 0;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xB6000000;
	dl->words.w1 = 0x20000;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xE7000000;
	dl->words.w1 = 0;

	dl = D_8005BB2C++;
	dl->words.w0 = 0x01020040;
	dl->words.w1 = segAddr31160;

	if (D_80052ACB == 2) {
		return;
	}

	func_800E71F8_F61A8();
	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80140FDC);
	}

	if (D_80052ACB == 2) {
		return;
	}

	func_800BA5B0_C9560(0, 1);
	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80140FF4);
	}

	if (D_80052ACB == 2) {
		return;
	}

	func_800BD360_CC310();
	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_8014100C);
	}

	if (D_80052ACB == 2) {
		return;
	}

	if (D_80052ACA != 2) {
		func_800BB5E0_CA590();
	}

	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80141020);
	}

	if (D_80052ACB == 2) {
		return;
	}

	if (D_80052ACB != 2) {
		func_800E7234_F61E4(D_80141034);
	} else {
		osSyncPrintf(D_80141034);
	}

	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80141050);
	}

	if (D_80052ACB == 2) {
		return;
	}

	dl = D_8005BB2C++;
	dl->words.w0 = 0x06000000;
	dl->words.w1 = (u32) D_80031230;

	func_800E5044_F3FF4();
	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80141068);
	}

	if (D_80052ACB == 2) {
		return;
	}

	func_800A2B58_B1B08();
	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_8014107C);
	}

	if (D_80052ACB == 2) {
		return;
	}

	dl = D_8005BB2C++;
	dl->words.w0 = 0x03800010;
	dl->words.w1 = ((u32) D_8005BB24) & 0x1FFFFFFF;

	guPerspective((void*) (D_8005BB20 + 0x140), &D_801493D6, (f32) D_80149404, 1.3333334f, 10.0f, D_801411A4, 1.0f);

	dl = D_8005BB2C++;
	dl->words.w0 = 0xBC00000E;
	dl->words.w1 = D_801493D6;

	dl = D_8005BB2C++;
	dl->words.w0 = 0x06000000;
	dl->words.w1 = (u32) savedDl311D0;

	matrixBase = (u32) D_8005BB20;

	dl = D_8005BB2C++;
	dl->words.w0 = 0x01030040;
	dl->words.w1 = (matrixBase + 0x140) & 0x1FFFFFFF;

	dl = D_8005BB2C++;
	dl->words.w0 = 0x01010040;
	dl->words.w1 = (matrixBase + 0x200) & 0x1FFFFFFF;

	func_800A03FC_AF3AC();

	if (currentControllerStates[0].button == 0x30) {
		osSyncPrintf(D_80141090);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/7F220/func_80071228_801D8.s")
#endif

void func_80071E88_80E38(Unk80052B2C* arg0) {
	D_80149430 = (s16) arg0->unkC;
	D_80149432 = (s16) arg0->unk14;
	D_80149434 = arg0->unk3C;
	D_80149436 = arg0->unk3E;
	D_80047954 = (f32) arg0->unk0 * 0.25;
	D_80047958 = (f32) arg0->unk4 * 0.25;
	D_8004795C = (f32) arg0->unk8 * 0.25;
}

// guess_doGamePlay
void func_80071F28_80ED8(void) {
	D_80052B34 = D_80052B2C->unk38;
	D_80149440 = D_80052B2C->unk34;
	func_80071228_801D8();
	func_801052E8_114298(D_80052B2C, &currentControllerStates[CONTROLLER_ONE]);
	D_80149406 = -D_80149406;
	if (D_80149406 > 0) {
		D_80149406 -= (s16) D_80149406 >> 1;
		D_80149406 -= 1;
	}
	if (D_80149406 >= 0x12D) {
		D_80149406 = 0x12C;
	}
	func_800BDDCC_CCD7C();
	func_800074F4_80F4();
	func_800BD8B8_CC868();
	func_800E72A0_F6250();
	func_8012B26C_13A21C();
	func_80113CEC_122C9C();
	func_80112F98_121F48();
	if ((D_8004D148 != 0) && (D_80159260 == 0)) {
		func_800F4DB0_103D60();
		func_800AE6CC_BD67C();
		func_8007AAEC_89A9C();
	}
	func_800FB504_10A4B4();
	func_800A1924_B08D4();
	func_800A1A18_B09C8();
	func_8012E258_13D208();
	func_8011A604_1295B4();
	func_800A854C_B74FC();
	func_800A7C6C_B6C1C();
	if (currentLevel == LEVEL_COMET) {
		func_802D4CD0_18D7E0(0x12, 0);
	}
	func_80075AA4_84A54();
	func_800A68CC_B587C();
	func_8013B688_14A638();
	func_800BE5C0_CD570();
	func_800BED30_CDCE0();
	func_802D4CD0_18D7E0(0x45, 0);
}

void func_800720B8_81068(void) {
	D_80052B34 = D_80052B2C->unk38;
	D_80149440 = D_80052B2C->unk34;
	func_80071228_801D8();
}

// doGameplayLoop
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/7F220/func_800720F4_810A4.s")
