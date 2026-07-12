#include <ultra64.h>
#include "common.h"

const char D_80142790_151740[] = "Activate beacon %d\n";
const char D_801427A4_151754[] = "Beacons:";
const char D_801427B0_151760[] = "BEACONS %d-On,\n ";
const char D_801427C4_151774[] = "BEACONS %d-Off,\n ";
const char D_801427D8_151788[] = "teleport to:%d\n";
const char D_801427E8_151798[] = "beacon: %d\n";
const char D_801427F4_1517A4[] = "state:%d\n";
const char D_80142800_1517B0[] = "state+1:%d\n";
const char D_8014280C_1517BC[] = "Launch beacon %d\n";
const char D_80142820_1517D0[] = "Giving delayed powerup %d\n";
const u32 jtbl_8014283C_1517EC[] = {
	0x800A6934, 0x800A693C, 0x800A695C, 0x800A6A48,
	0x800A6ED8, 0x800A6F60, 0x800A6FA0,
};
const f64 D_80142858_151808[] = {1.2};
const u32 jtbl_80142860_151810[] = {
	0x800A7D58, 0x800A7E7C, 0x800A7F74, 0x800A7FD4,
	0x800A829C, 0x800A8344, 0x800A838C, 0x800A83AC,
	0x800A83CC, 0x800A84D4,
};
const f32 D_80142888_151838[] = {0.3f};
const u32 jtbl_8014288C_15183C[] = {
	0x800A8E48, 0x800A8E5C, 0x800A8F7C, 0x800A8F90,
	0x800A8FA4, 0x800A8FEC, 0x800A9000, 0x800A9014,
	0x800A9028, 0x800A920C, 0x800A903C, 0x800A909C,
	0x800A90B0, 0x800A90C4, 0x800A90D8, 0x800A90EC,
	0x800A8E5C, 0x800A9100, 0x800A9114, 0x800A9128,
	0x800A916C, 0x800A9184, 0x800A9198, 0x800A91AC,
	0x800A91C0, 0x800A91D4, 0x800A91E8, 0x800A91FC,
};
s8 D_8013D890_14C840 = 0;
u8 D_8013D894_14C844 = 0;
u8 D_8013D898_14C848[0x18] = {
	0xEC, 0xDF, 0xE1, 0x04, 0x00, 0x7C, 0x68, 0x50,
	0xB2, 0x80, 0x32, 0x88, 0x39, 0xC4, 0x60, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x02, 0x0A, 0x11, 0x16,
};
u8 D_8013D8B0_14C860[0x10] = {
	0x32, 0x64, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

Unk8014F6D0* func_800A5A10_B49C0() {
	s32 i;

	i = 16;
	while (i--) {
		if (D_8014F6D0[i].unkC == -1) {
			return &D_8014F6D0[i];
		}
	}

	return NULL;
}

// activateSaveBeacon?
void func_800A5A50_B4A00(s32 arg0, s32 arg1) {
	s32 sp1C;

	D_8014F800 = 1;
	osSyncPrintf(D_80142790_151740, arg0); // Activate beacon %d
	if (D_80151DD0 == 0) {
		D_80047F9C = arg0 + 1;
		sp1C = func_80009F18_AB18(arg1);
		func_80116784_125734();
		if (sp1C == 1) {
			D_80052A98[currentLevel - 1].score = (s32) D_80052B2C->unk30;
			D_80052A98[currentLevel - 1].humansKilled = (s16) D_8004816A;
			D_80052A98[currentLevel - 1].secondsElapsed = (s16) ((u32) D_80052A90 / 1000U);
			D_800476A0 = 1;
			return;
		}
		if (sp1C == 2) {
			func_800A5F24_B4ED4(arg0);
		}
	}
}

// checkIfActivatingSaveBeacon?
void func_800A5B30_B4AE0(s32 arg0, s16 arg1) {
	if ((isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A) != 0) &&
		(D_80052B34->unk1A == 0) &&
		(D_8004794C == 0) &&
		(D_80048188 != 1)) {
		func_800A5A50_B4A00((s32) (D_8015FAD0[arg1].unk1E - 0x1000) / 2, 1);
	}
}

#ifdef NON_MATCHING
void func_800A5BD0_B4B80(s32 arg0) {
	s32 sp4C;
	s32 sp48;
	s32 sp44;
	s32 sp40;

	sp4C = D_8003154C[currentLevel - 1][arg0].x << 8;
	sp48 = D_8003154C[currentLevel - 1][arg0].z << 8;
	sp40 = func_800B84D0_C7480((s16)sp4C, (s16)sp48) >> 8;
	if (currentLevel == LEVEL_AMERICA && arg0 == 0) {
		sp40 = 0x7D0;
	}
	sp44 = arg0 * 2;
	func_8012D684_13C634(func_8012D700_13C6B0(4, (sp44 + 0x1000) & 0xFFFF, (s16)sp4C, (s16)sp40, sp48, 0, 0, 0, 0x19, 0x19, 0x50, func_800A5B30_B4AE0, NULL));
	func_8012D684_13C634(func_8012D700_13C6B0(5, (sp44 + 0x1001) & 0xFFFF, (s16)sp4C, (s16)sp40, sp48, 0, 0, 0, 0xF, 0xF, 0x50, NULL, func_8012E1F8_13D1A8));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B49C0/func_800A5BD0_B4B80.s")
#endif

// guess_initBeacons
#ifdef NON_MATCHING
void func_800A5D3C_B4CEC(void) {
	s32 sentinel;
	s32 i;
	s32 j;
	s32 k;
	BeaconDisplayEntry *entry;

	sentinel = -1;
	entry = &D_8014F7DE;
	j = 0xF;
	do {
		entry->unkC = sentinel;
		entry--;
	} while (j-- != 0);

	D_8014F7F0 = 0;
	D_8014F7F4 = 0;
	osSyncPrintf(D_801427A4_151754);

	k = 0;
	i = 0;
	do {
		if (i < D_80047F98) {
			D_8003154C[currentLevel - 1][k].timer = 0;
			D_8003154C[currentLevel - 1][k].state = 8;
			func_800A5BD0_B4B80(i);
			osSyncPrintf(D_801427B0_151760, i);
		} else {
			D_8003154C[currentLevel - 1][k].timer = 0;
			D_8003154C[currentLevel - 1][k].state = 0;
			osSyncPrintf(D_801427C4_151774, i);
		}
		i = (k + 1) & 0xFF;
		k = i;
	} while (i < 6);

	D_8014F804 = sentinel;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B49C0/func_800A5D3C_B4CEC.s")
#endif

// warpToSaveBeacon
void func_800A5EA8_B4E58(u8 arg0) {
	osSyncPrintf(D_801427D8_151788, arg0); // teleport to:%d
	D_8013D890_14C840 = 1;
	D_8013D894_14C844 = arg0;
}

void func_800A5EE8_B4E98(u8 arg0) {
	D_8013D890_14C840 = 4;
	D_80157A3C = 0;
	func_800EC450_FB400();
	func_800153D8_15FD8(0xD7);
}

// https://decomp.me/scratch/xqKk4
// CURRENT(1874)
#ifdef NON_MATCHING
void func_800A5F24_B4ED4(s32 arg0) {
	s32 next;
	s32 var_s0;
	
	if (D_8013D890 == 0) {
		func_8001CC6C_1D86C(D_801427E8_151798, arg0);
		func_8001CC6C_1D86C(D_801427F4_1517A4, D_8003154C[currentLevel - 1][arg0].state);
		func_8001CC6C_1D86C(D_80142800_1517B0, D_8003154C[currentLevel - 1][arg0 + 1].state);

		if (D_8003154C[currentLevel - 1][arg0 + 1].state >= 4) {
			var_s0 = arg0 + 1;
		} else {
			var_s0 = -1;
		}
		func_800A5EA8_B4E58((var_s0 + 1) & 0xFF);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B49C0/func_800A5F24_B4ED4.s")
#endif

// CURRENT(18077)
#ifdef NON_MATCHING
void func_800A6020_B4FD0(s16 arg0) {
	u8 sp56;
	u8 sp55;
	f64 var_f20;
	s32 temp_lo;
	s32 temp_t2;
	s32 temp_t6;
	s32 temp_t8;
	s32 temp_t9;
	s32 var_a3;
	s32 var_s3;
	s32 var_s3_2;
	s32 var_s3_3;
	s32 var_s3_4;
	s32 var_s4;
	s32 var_s4_2;
	s32 var_s5;
	s32 var_s5_2;
	s32 var_s5_3;
	s32 var_s5_4;
	s32 var_v0;
	s32 var_v1;
	s8 temp_fp;
	u8 var_a2;

	var_s4 = (D_80052A8C * 0x640) & 0xFFFF;
	var_a2 = 0xFF;
	var_v0 = ((arg0 * 3) + 4) & 0xFFFF;
	var_v1 = (0x28 - arg0) & 0xFFFF;
	if (arg0 < 0x10) {
		if (arg0 < 0) {
			var_a2 = ((arg0 * 0x19) + 0xFA) & 0xFF;
			var_v0 = 4;
			var_v1 = 0x32;
		}
		var_s5 = 0;
		if (arg0 < 0) {
			sp55 = (arg0 * 0x19) + 0xFF;
		} else {
			sp55 = 0xFF - (arg0 * 0x10);
		}
		var_s3 = 0;
		if ((arg0 >= 0xB) && (D_8013D890_14C840 != 5)) {
			var_v0 = 0x22;
			var_a2 = (0x28A - (arg0 * 0x28)) & 0xFF;
		}
		if ((arg0 >= 0x15) && (D_8013D890_14C840 == 5)) {
			var_v1 = 4;
			sp55 = 0;
			var_a2 = (0x41A - (arg0 * 0x28)) & 0xFF;
		}
		var_f20 = (f64)var_v0;
		if (var_v0 < 0) {
			var_f20 += 4294967296.0;
		}
		temp_lo = (var_v1 * 4) / 10;
		temp_fp = (sp55 / 2) + 0x7F;
		sp56 = var_a2;
		do {
			temp_t8 = ((var_s3 * var_v1) - 0x96) & 0xFFFF;
			D_8005BB34->v.ob[0] = (s16)(s32)((((f64)(f32)coss(var_s4 & 0xFFFF) / 32768.0) * var_f20) + (f64)D_80052B34->unk0);
			D_8005BB34->v.ob[1] = (s16)(D_80052B34->unk2 + temp_t8);
			D_8005BB34->v.ob[2] = (s16)(s32)((((f64)(f32)sins(var_s4 & 0xFFFF) / 32768.0) * var_f20) + (f64)D_80052B34->unk4);
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0;
			D_8005BB34->v.tc[1] = 0;
			D_8005BB34->v.cn[0] = 0x23;
			temp_t6 = (var_s4 + 0xFA0) & 0xFFFF;
			D_8005BB34->v.cn[1] = 0x5A;
			D_8005BB34->v.cn[2] = 0xA0;
			D_8005BB34->v.cn[3] = 0;
			D_8005BB34++;
			D_8005BB34->v.ob[0] = (s16)(s32)((((f64)(f32)coss(temp_t6 & 0xFFFF) / 32768.0) * var_f20) + (f64)D_80052B34->unk0);
			D_8005BB34->v.ob[1] = (s16)(D_80052B34->unk2 + ((temp_t8 + temp_lo) & 0xFFFF));
			var_s3 = (var_s5 + 1) & 0xFF;
			var_s5 = var_s3;
			D_8005BB34->v.ob[2] = (s16)(s32)((((f64)(f32)sins(temp_t6 & 0xFFFF) / 32768.0) * var_f20) + (f64)D_80052B34->unk4);
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0;
			D_8005BB34->v.tc[1] = 0;
			D_8005BB34->v.cn[0] = sp55;
			var_s4 = (temp_t6 + 0x1770) & 0xFFFF;
			D_8005BB34->v.cn[1] = temp_fp;
			D_8005BB34->v.cn[2] = 0xFF;
			D_8005BB34->v.cn[3] = sp56;
			D_8005BB34++;
		} while (var_s3 < 0x10);
		var_s5_2 = 0;
		var_s4_2 = ((D_80052A8C * 0x640) + 0x8000) & 0xFFFF;
		var_s3_2 = 0;
		do {
			temp_t2 = ((var_s3_2 * var_v1) - 0x96) & 0xFFFF;
			D_8005BB34->v.ob[0] = (s16)(s32)((((f64)(f32)coss(var_s4_2 & 0xFFFF) / 32768.0) * var_f20) + (f64)D_80052B34->unk0);
			D_8005BB34->v.ob[1] = (s16)(D_80052B34->unk2 + temp_t2);
			D_8005BB34->v.ob[2] = (s16)(s32)((((f64)(f32)sins(var_s4_2 & 0xFFFF) / 32768.0) * var_f20) + (f64)D_80052B34->unk4);
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0;
			D_8005BB34->v.tc[1] = 0;
			D_8005BB34->v.cn[0] = 0x23;
			temp_t9 = (var_s4_2 + 0xFA0) & 0xFFFF;
			D_8005BB34->v.cn[1] = 0x5A;
			D_8005BB34->v.cn[2] = 0xA0;
			D_8005BB34->v.cn[3] = 0;
			D_8005BB34++;
			D_8005BB34->v.ob[0] = (s16)(s32)((((f64)(f32)coss(temp_t9 & 0xFFFF) / 32768.0) * var_f20) + (f64)D_80052B34->unk0);
			D_8005BB34->v.ob[1] = (s16)(D_80052B34->unk2 + ((temp_t2 + temp_lo) & 0xFFFF));
			var_s3_2 = (var_s5_2 + 1) & 0xFF;
			var_s5_2 = var_s3_2;
			D_8005BB34->v.ob[2] = (s16)(s32)((((f64)(f32)sins(temp_t9 & 0xFFFF) / 32768.0) * var_f20) + (f64)D_80052B34->unk4);
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0;
			D_8005BB34->v.tc[1] = 0;
			D_8005BB34->v.cn[0] = sp55;
			var_s4_2 = (temp_t9 + 0x1770) & 0xFFFF;
			D_8005BB34->v.cn[1] = temp_fp;
			D_8005BB34->v.cn[2] = 0xFF;
			D_8005BB34->v.cn[3] = sp56;
			D_8005BB34++;
		} while (var_s3_2 < 0x10);
		gDPSetCycleType(D_8005BB30++, G_CYC_1CYCLE);
		gSPSetGeometryMode(D_8005BB30++, G_ZBUFFER | G_SHADE | G_SHADING_SMOOTH);
		gDPSetRenderMode(D_8005BB30++, G_RM_AA_ZB_XLU_LINE, G_RM_NOOP2);
		gDPSetCombineMode(D_8005BB30++, G_CC_SHADE, G_CC_SHADE);
		var_a3 = 6;
		gDPPipeSync(D_8005BB30++);
		if ((arg0 >= 0xC) && (D_8013D890_14C840 != 5)) {
			var_a3 = (0x10 - arg0) & 0xFF;
		}
		if ((arg0 >= 0x16) && (D_8013D890_14C840 == 5)) {
			var_a3 = (0x1A - arg0) & 0xFF;
		}
		if (arg0 < -4) {
			var_a3 = (arg0 + 0xA) & 0xFF;
		}
		gSPVertex(D_8005BB30++, D_8005BB34 - 0x40, 32, 0);
		var_s5_3 = 0;
		var_s3_3 = 0;
		do {
			if (!(var_s3_3 & 1)) {
				gSPLineW3D(D_8005BB30++, var_s3_3, var_s3_3 + 1, var_a3, 0);
			}
			var_s3_3 = (var_s5_3 + 1) & 0xFF;
			var_s5_3 = var_s3_3;
		} while (var_s3_3 < 0x1F);
		var_s5_4 = 0;
		var_s3_4 = 0;
		gSPVertex(D_8005BB30++, D_8005BB34 - 0x20, 32, 0);
		do {
			if (!(var_s3_4 & 1)) {
				gSPLineW3D(D_8005BB30++, var_s3_4, var_s3_4 + 1, var_a3, 0);
			}
			var_s3_4 = (var_s5_4 + 1) & 0xFF;
			var_s5_4 = var_s3_4;
		} while (var_s3_4 < 0x1F);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B49C0/func_800A6020_B4FD0.s")
#endif

#ifdef NON_MATCHING
// CURRENT(14213)
void func_800A68CC_B587C(void) {
	s16 sp2E;
	s16 sp2C;
	s16 sp28;
	s16 sp26;
	f32 sp20;
	f32 sp1C;
	s16 temp;
	u8 temp2;

	if (func_8000726C_7E6C(0x27ULL) != 0) {
		func_800A5F24_B4ED4(-1);
		func_800073B8_7FB8(0x27ULL);
	}

	D_8004794C = 2;
	switch (D_8013D890_14C840) {
	case 0:
		D_8004794C = 0;
		break;

	case 1:
		func_800EC450_FB400();
		func_800153D8_15FD8(0xD7);
		D_8013D890_14C840 = 2;
		break;

	case 2:
		D_80157A3C -= 4;
		D_80052B34->unk2 = (D_80052B34->unk2 - (D_80157A3C << 1)) + 0x80;

		if (D_80157A3C == 8) {
			func_800E35E0_F2590(0x50);
		}

		if (D_80157A3C == 4) {
			func_800E35E0_F2590(0xA0);
		}

		if (D_80157A3C <= 0) {
			func_800E35E0_F2590(0xFF);
			D_80157A3C = 0;
			D_8013D890_14C840 = 3;
			func_80135D44_144CF4(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, 2.0f);
		}

		temp = D_80157A3C;
		if (temp < 0) {
			temp += 3;
		}
		func_800A6020_B4FD0(temp >> 2);
		D_8014F808 = 0;
		break;

	case 3:
		D_80052B34->unk2 = (D_80052B34->unk2 - (D_80157A3C << 1)) + 0x80;
		temp2 = D_8014F808 + 1;
		D_8014F808 = temp2;

		if (temp2 < 0xB) {
			temp = D_80157A3C;
			if (temp < 0) {
				temp += 3;
			}
			func_800A6020_B4FD0((temp >> 2) - temp2);
		} else {
			temp = D_80157A3C;
			if (temp < 0) {
				temp += 3;
			}
			func_800A6020_B4FD0((temp >> 2) + temp2 - 0x14);
		}

		if (D_8014F808 == 0xA) {
			sp2E = D_8003E000[currentLevel-1][D_8013D894_14C844].unk0 << 8;
			sp2C = (D_8003E000[currentLevel-1][D_8013D894_14C844].unk2 + 1) << 8;
			sp28 = D_8003E000[currentLevel-1][D_8013D894_14C844].unk6;

			if (D_8013D894_14C844 == 0) {
				D_80047F94 = 0;
			} else {
				D_80047F94 = D_8013D894_14C844 - 1;
			}

			func_800B0C80_BFC30();

			sp20 = sp2E;
			func_800FB44C_10A3FC(D_80052B34, sp20);
			sp1C = sp2C;
			func_800FB484_10A434(D_80052B34, sp1C);

			temp = (s16)(func_800B84D0_C7480(sp2E, sp2C) >> 8);
			if ((currentLevel == 3) && (D_8013D894_14C844 == 1)) {
				temp = 0x7D0;
			}
			func_800FB468_10A418(D_80052B34, temp);
			D_80052B34->unkE = sp28;

			D_801493A0 = -0x6F;
			D_80149398 = 0x6F;
			D_801493A4 = -0x6F;
			D_8014939C = 0x6F;
			func_800B4050_C3000((u8)((sp2E >> 8) + 0x77), (u8)((sp2C >> 8) + 0x77), D_801FEA30, 0);

			D_80052AE8.unk0 = sp20;
			D_80052AE8.unk4 = 4000.0f;
			D_80052AE8.unkC = sp20;
			D_80052AE8.unk8 = sp1C;
			D_80052AE8.unk14 = sp1C;
			D_80052AE8.unk10 = 1000.0f;
			D_80052AE8.unk18 = sp2E;
			D_80052AE8.unk1A = sp2C;
			D_80052AE8.unk3C = sp2E;
			D_80052AE8.unk3E = sp2C;
			D_80052B34->unk6 = sp28;

			sp26 = coss(D_80052B2C->unk1E);
			D_80052B2C->unk0 = (((f64)(f32)coss(0xFA0) / 32768.0) * (f64)D_80052B2C->unk1C * ((f64)(f32)sp26 / 32768.0)) + D_80052B2C->unkC;
			D_80052B2C->unk4 = (((f64)(f32)sins(D_80052B2C->unk1E) / 32768.0) * (f64)D_80052B2C->unk1C) + D_80052B34->unk2;
			D_80052B2C->unk8 = (((f64)(f32)sins(0xFA0) / 32768.0) * (f64)D_80052B2C->unk1C * ((f64)(f32)sp26 / 32768.0)) + D_80052B2C->unk14;
			func_800153D8_15FD8(0xD7);
		}

		if (D_8014F808 == 0x12) {
			func_800E35E0_F2590(0x50);
		}

		if (D_8014F808 == 0x13) {
			func_800E35E0_F2590(0xA0);
		}

		if (D_8014F808 >= 0x14) {
			func_800E35E0_F2590(0xFF);
			D_8013D890_14C840 = 4;
			func_80135D44_144CF4(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, 5.0f);
		}
		break;

	case 4:
		D_80157A3C += 4;
		D_80052B34->unk2 = (D_80052B34->unk2 - (D_80157A3C << 1)) + 0x80;

		if (D_80157A3C >= 0x40) {
			D_80157A3C = 0x40;
			D_8013D890_14C840 = 5;
			D_8014F808 = 0;
		}

		temp = D_80157A3C;
		if (temp < 0) {
			temp += 3;
		}
		func_800A6020_B4FD0(temp >> 2);
		break;

	case 5:
		func_800A6020_B4FD0(D_8014F808 + 0x10);
		if (D_8014F808 == 0xA) {
			D_8013D890_14C840 = 6;
		}

		D_8014F808++;
		func_800EC468_FB418();
		func_800FAC90_109C40();
		D_8013D890_14C840 = 0;
		D_801493E2 = 1;
		break;

	case 6:
		break;

	default:
		break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B49C0/func_800A68CC_B587C.s")
#endif

// Launch beacon?
#ifdef NON_MATCHING
void func_800A6FD4_B5F84(void) {
	u8 sp1F;

	sp1F = D_80047F9B;
	osSyncPrintf(D_8014280C_1517BC, (s32)sp1F);
	if (currentLevel != LEVEL_SIBERIA || sp1F != 3) {
		func_80013314_13F14();
		D_80052AE0 = gameplayMode;
		gameplayMode = GAMEPLAY_MODE_END_OF_LEVEL;
	}
	D_8003154C[currentLevel - 1][sp1F].state = 1;
	D_8003154C[currentLevel - 1][sp1F].timer = 0x1E;
	D_80048025 |= 1 << sp1F;
	D_80047F98++;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B49C0/func_800A6FD4_B5F84.s")
#endif

// CURRENT(44622)
#ifdef NON_MATCHING
// displayBeacons
void func_800A70B8_B6068(void) {
	s16 i;
	s32 groundY;
	s16 mapX;
	s16 mapZ;
	s16 beaconType;
	s16 beaconAge;
	s32 v;
	s32 brightness;
	s16 rot;
	s16 j;
	Gfx* beaconBaseDl;
	Gfx* beaconRingDl;
	Gfx* beaconCoreDl;

	if ((currentLevel == LEVEL_COMET) || (D_80052ACA == 2)) {
		return;
	}

	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_TEXTURE_ENABLE | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH | G_CLIPPING | 0xFF60CDF8);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_FOG | G_LIGHTING | G_SHADING_SMOOTH);
	gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);

	for (i = 0; i < 6; i++) {
		beaconType = D_8003154C[currentLevel - 1][i].state;

		if (beaconType == 3) {
			D_8014F80A = ((s16 *)D_8013D898_14C848)[currentLevel * 2 - 2];
			D_8014F80C = ((s16 *)D_8013D898_14C848)[currentLevel * 2 - 1];
			beaconBaseDl = (Gfx*)0x05046250;
			beaconRingDl = (Gfx*)0x05046470;
			groundY = func_800B84D0_C7480(D_8014F80A, D_8014F80C);

			D_80052B40.unk0 = D_8014F80A >> 2;
			D_80052B40.unk4 = D_8014F80C >> 2;

			v = 0x5E - D_8003154C[currentLevel - 1][i].timer;
			D_8014F810 = v * v;
			v = (D_8014F810 * 6) / 10;
			D_8014F810 = v;
			v = D_8014F810 + 0x5A;
			D_8014F810 = v;
			v = (groundY >> 8) + D_8014F810;
			D_8014F810 = v;
			D_80052B40.unk2 = D_8014F810 >> 2;

			D_80052B48.unk0 = 0;
			D_80052B48.unk2 = 0x8000;
			D_80052B48.unk4 = 0;

			D_80052B50.unk4 = 0x14;
			D_80052B50.unk2 = D_80052B50.unk4;
			D_80052B50.unk0 = D_80052B50.unk4;

			func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, D_8005BB38);
			gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
			D_8005BB38 += 0x40;
			gSPDisplayList(D_8005BB2C++, beaconBaseDl);

			for (j = 0; j < 8; j++) {
				D_80052B48.unk0 = j << 0xD;
				D_80052B48.unk2 = 0x8000;
				D_80052B48.unk4 = 0;
				func_800039D0_45D0(0, &D_80052B48, 0, D_8005BB38);

				gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				D_80052B40.unk0 = 0x1B;
				D_80052B40.unk2 = 0;
				D_80052B40.unk4 = 0;

				D_8005BB38 += 0x40;
				func_800039D0_45D0(&D_80052B40, 0, 0, D_8005BB38);

				gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				D_8005BB38 += 0x40;
				gSPDisplayList(D_8005BB2C++, beaconRingDl);
				gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
			}
		} else if (beaconType >= 4) {
			D_8014F80A = D_8003154C[currentLevel - 1][i].x << 8;
			D_8014F80C = D_8003154C[currentLevel - 1][i].z << 8;

			D_80052B40.unk0 = D_8014F80A >> 2;
			D_80052B40.unk4 = D_8014F80C >> 2;

			if ((func_800B9228_C81D8(D_8014F80A, D_8014F80C, (s16)(s32)D_80052B2C->unk0, (s16)(s32)D_80052B2C->unk8, 0x4000 - D_80047950) != 0) && (D_80157590 == 0)) {
				beaconBaseDl = (Gfx*)0x05046250;
				beaconCoreDl = (Gfx*)0x050468F0;
				beaconRingDl = (Gfx*)0x05046470;
				groundY = func_800B84D0_C7480(D_8014F80A, D_8014F80C);
				if (groundY < 0) {
					groundY += 0xFF;
				}

				D_8014F810 = (groundY >> 8) + 0x18;
				if ((currentLevel == LEVEL_AMERICA) && (i == 0)) {
					D_8014F810 = 0x7D0;
				}

				if (beaconType == 4) {
					D_8014F810 += D_8003154C[currentLevel - 1][i].timer * 0x50;
				}

				D_80052B50.unk4 = 0x18;
				D_80052B50.unk2 = D_80052B50.unk4;
				D_80052B50.unk0 = D_80052B50.unk4;
				D_80052B40.unk2 = D_8014F810 >> 2;
				func_800039D0_45D0(&D_80052B40, 0, &D_80052B50, D_8005BB38);

				gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
				D_8005BB38 += 0x40;
				gSPDisplayList(D_8005BB2C++, beaconBaseDl);

				D_80052B40.unk0 = 0;
				switch (beaconType) {
				case 9:
					D_80052B40.unk2 = D_8003154C[currentLevel - 1][i].timer * 0x14 + 0xE;
					break;

				case 8:
					D_80052B40.unk2 = 0x78 - (D_8003154C[currentLevel - 1][i].timer * 4);
					break;

				case 10:
					D_80052B40.unk2 = 0xC;
					break;

				default:
					D_80052B40.unk2 = 0x78;
					break;
				}

				D_80052B40.unk4 = 0;
				func_800039D0_45D0(&D_80052B40, 0, 0, D_8005BB38);

				gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				D_8005BB38 += 0x40;

				gDPSetCombineLERP(D_8005BB2C++, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0);
				if (beaconType == 8) {
					brightness = (0xFF - (D_8003154C[currentLevel - 1][i].timer * 10)) & 0xFF;
					gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, brightness, brightness, brightness, 0xFF);
				} else if (beaconType == 10) {
					brightness = (D_8003154C[currentLevel - 1][i].timer * 0x32) & 0xFF;
					gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, brightness, brightness, brightness, 0xFF);
				} else {
					gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF);
				}

				gSPDisplayList(D_8005BB2C++, beaconCoreDl);
				gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

				for (j = 0; j < 8; j++) {
					D_80052B48.unk0 = j << 0xD;
					D_80052B48.unk2 = 0;
					D_80052B48.unk4 = 0;
					func_800039D0_45D0(0, &D_80052B48, 0, D_8005BB38);

					gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
					D_80052B40.unk0 = 0x1B;
					D_80052B40.unk2 = 0xC9;
					D_80052B40.unk4 = 0;

					beaconAge = D_8003154C[currentLevel - 1][i].timer;
					if (beaconType == 6) {
						rot = (s16) (s32) (((((f64) (0x32 - beaconAge) * 0.017453292519943295) / 50.0) * 16384.0));
					} else if ((beaconType == 4) || (beaconType == 5)) {
						rot = 0;
					} else {
						rot = 0x4CCC;
					}

					D_80052B48.unk2 = rot;
					D_8005BB38 += 0x40;
					func_800039D0_45D0(&D_80052B40, &D_80052B48, 0, D_8005BB38);

					gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
					D_8005BB38 += 0x40;
					gSPDisplayList(D_8005BB2C++, beaconRingDl);
					gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
				}
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B49C0/func_800A70B8_B6068.s")
#endif

#ifdef NON_MATCHING
s16 func_800A7B84_B6B34(s16 arg0, s16 arg1) {
	s32 i;
	u8 *ptr;
	VehicleInstance *item;

	i = D_80158FD8;
	if (i == 0) {
		return i;
	}
	i--;
	ptr = D_80158E80 + i;
	do {
		item = vehicleInstances + *ptr;
		func_8010C4EC_11B49C(item);
		ptr--;
		if (func_8010CF7C_11BF2C(arg0, arg1) != 0) {
			return func_80123AC4_132A74(item);
		}
	} while (i--);
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B49C0/func_800A7B84_B6B34.s")
#endif

// CURRENT(28813)
#ifdef NON_MATCHING
void func_800A7C6C_B6C1C(void) {
	struct BeaconColor {
		u8 r;
		u8 g;
		u8 b;
	} spA4;
	s32 pad[4];
	s16 spAA;
	s16 spA8;
	s16 i;
	BeaconEntry *beacon;
	s16 tempX;
	s16 tempZ;
	s16 levelX;
	s16 levelZ;
	s16 terrainY;
	s16 j;
	s16 vehicleCount;
	u8 vehicleIndex;
	VehicleInstance* vehicle;
	s16 range;
	s16 deltaX;
	s16 deltaZ;
	s16 absX;
	s16 absZ;
	s32 distSq;

	spA4 = *(struct BeaconColor*) D_8013D8B0_14C860;

	if (currentLevel == 5) {
		return;
	}

	func_8000345C_405C(0x8000);
	if (D_8004794C > 0) {
		D_8004794C--;
	}

	for (i = 0; i < 6; i++) {
		beacon = &D_8003154C[currentLevel - 1][i];

		switch (beacon->state) {
			case 1:
				if (beacon->timer == 0x19) {
					if ((func_8000726C_7E6C(0x14) != 0) && (currentLevel == 4)) {
						func_80018D7C_1997C(0xDE);
					} else if ((currentLevel == 4) && (D_80047F94 == 2)) {
						func_80018D7C_1997C(0xDD);
						func_80013324_13F24();
					} else {
						func_80018D7C_1997C(0xD4);
						func_80013324_13F24();
					}

					beacon = &D_8003154C[currentLevel - 1][i];
				}

				if (beacon->timer == 0) {
					beacon->state = 2;
				}

				if (beacon->timer == 0xA) {
					func_800EFEB4_FEE64(NULL, D_8013D898_14C848[currentLevel + 0x13], 0);
					beacon = &D_8003154C[currentLevel - 1][i];
				}
				break;

			case 2:
				tempX = beacon->x << 8;
				tempZ = beacon->z << 8;
				D_8014F7FA = func_800B84D0_C7480(tempX, tempZ) >> 8;

				beacon = &D_8003154C[currentLevel - 1][i];

				beacon->state = 3;
				beacon->timer = 0x64;

				levelX = *(s16*) (D_8013D898_14C848 + (currentLevel * 4));
				levelZ = *(s16*) (D_8013D898_14C848 + (currentLevel * 4) + 2);
				terrainY = (func_800B84D0_C7480(levelX, levelZ) >> 8) + 0x8C;

				func_800DF038_EDFE8(levelX, terrainY, levelZ, 0x46, 0, NULL);
				D_8014F7FE = func_800C21F0_D11A0(D_8014F80A, 0x2710, D_8014F80C, 0);

				beacon = &D_8003154C[currentLevel - 1][i];
				break;

			case 3:
				func_800C1ECC_D0E7C(D_8014F80A, D_8014F812, D_8014F80C, D_8014F7FE, 0);

				beacon = &D_8003154C[currentLevel - 1][i];
				if (beacon->timer == 0) {
					beacon->state = 4;
					beacon->timer = 0x3C;
				}
				break;

			case 4:
				func_800C1ECC_D0E7C(D_8014F80A, D_8014F812, D_8014F80C, D_8014F7FE, 0);

				vehicleCount = D_80158FD8;
				for (j = 0; j < vehicleCount; j++) {
					vehicleIndex = D_80158E80[j];
					vehicle = &vehicleInstances[vehicleIndex];

					beacon = &D_8003154C[currentLevel - 1][i];

					range = *(s16 *)((u8 *)vehicleSpecs + 0x0C + vehicle->unk1A * 0x5C) + 0x50;
					deltaX = (beacon->x << 8) - vehicle->unk0;
					deltaZ = (beacon->z << 8) - vehicle->unk4;
					absX = deltaX;
					absZ = deltaZ;
					if (absX < 0) {
						absX = -absX;
					}
					if (absZ < 0) {
						absZ = -absZ;
					}

					if ((absX <= range) && (absZ <= range)) {
						distSq = (absX * absX) + (absZ * absZ);
						if ((s16) sqrtf((f32) distSq) < range) {
							func_80102DDC_111D8C(vehicle, func_80003824_4424((f32) absX, (f32) absZ), 0, 6.0f);
						}
					}
				}

				beacon = &D_8003154C[currentLevel - 1][i];
				if (beacon->timer == 0) {
					beacon->state = 5;
					beacon->timer = 0x28;
					D_8014F800 = 0;
					func_800A5BD0_B4B80(i);

					beacon = &D_8003154C[currentLevel - 1][i];

					tempX = beacon->x << 8;
					tempZ = beacon->z << 8;
					terrainY = func_800B84D0_C7480(tempX, tempZ) >> 8;
					func_801371B8_146168(0, 0x181, tempX, terrainY, tempZ, 0.5f);
					func_800A7B84_B6B34(tempX, tempZ);
					if ((currentLevel == 1) && (D_80047F94 == 0)) {
						func_80018D7C_1997C(0x101);
					}
				}
				break;

			case 5:
				if (beacon->timer == 0) {
					beacon->state = 6;
					beacon->timer = 0x32;

					tempX = beacon->x << 8;
					tempZ = beacon->z << 8;
					terrainY = func_800B84D0_C7480(tempX, tempZ) >> 8;
					func_801371B8_146168(0, 0x17C, tempX, terrainY, tempZ, 0.25f);

					beacon = &D_8003154C[currentLevel - 1][i];
				}
				break;

			case 6:
				if (beacon->timer == 0) {
					beacon->state = 7;
					beacon->timer = 0x14;
					if ((D_8014F800 == 0) && (D_8014F804 == -1)) {
						D_8014F804 = i;
					}
				}
				break;

			case 7:
				if (beacon->timer == 0) {
					beacon->state = 9;
					beacon->timer = 5;
				}
				break;

			case 8:
				if (beacon->timer == 0) {
					beacon->state = 9;
					beacon->timer = 5;
				}
				break;

			case 9:
				if (beacon->timer == 0) {
					tempX = beacon->x << 8;
					tempZ = beacon->z << 8;
					terrainY = func_800B84D0_C7480(tempX, tempZ) >> 8;
					func_801371B8_146168(0, 0x17D, tempX, terrainY, tempZ, D_80142888_151838);

					beacon = &D_8003154C[currentLevel - 1][i];

					spA8 = beacon->x << 8;
					spAA = beacon->z << 8;
					func_800B99A8_C8958((Unk80152B80*) &spA8, 0x1E, 0x1F4, 0xFF, (u8*) &spA4, 0x50, 0xA, 0);

					beacon = &D_8003154C[currentLevel - 1][i];
					beacon->state = 0xA;
					beacon->timer = 5;
				}
				break;

			case 10:
				if (beacon->timer == 0) {
					beacon->state = 8;
					beacon->timer = 0x19;
				}
				break;
		}

		beacon->timer--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B49C0/func_800A7C6C_B6C1C.s")
#endif

// CURRENT(8051)
#ifdef NON_MATCHING
void func_800A854C_B74FC(void) {
	s16 sp8C;
	s16 sp8A;
	s16 sp88;
	f32 sp7C;
	s16 sp78;
	BeaconDisplayEntry *entry;
	f32 dist;
	f32 deltaX;
	f32 deltaZ;
	f32 distCopy;
	s16 yLimit;
	s32 i;

	entry = &D_8014F7DE;
	i = 0xF;
	do {
		if (entry->unkC != -1) {
			entry->unk0 = (s16)(entry->unk0 + entry->unk6);
			entry->unk4 = (s16)(entry->unk4 + entry->unkA);
			entry->unk2 = (s16)(entry->unk2 + entry->unk8);
			func_800F9D60_108D10(entry->unk0, entry->unk4, &sp8C, &sp8A, &sp88);

			yLimit = sp88;
			if (sp88 < sp8C) {
				yLimit = sp8C;
			}
			if (((currentLevel != 4) || (D_80047F94 != 2)) && (yLimit < D_80222A70)) {
				yLimit = (s16)D_80222A70;
			}

			if (entry->unk2 < yLimit) {
				entry->unk2 = yLimit;
				entry->unk8 = 0;
				if (D_80222A70 < yLimit) {
					if (sp8C < sp88) {
						entry->unk6 = (s16)((entry->unk6 + (func_800038E0_44E0() & 0xF)) - 8);
						entry->unkA = (s16)((entry->unkA + (func_800038E0_44E0() & 0xF)) - 8);
					} else {
						entry->unk6 = (s16)((entry->unk6 + yLimit) - func_800F9FAC_108F5C((s16)(entry->unk0 + 0x1E), entry->unk4));
						entry->unkA = (s16)((entry->unkA + yLimit) - func_800F9FAC_108F5C(entry->unk0, (s16)(entry->unk4 + 0x1E)));
					}

					if (entry->unk6 < -0x1E) {
						entry->unk6 = -0x1E;
					}
					if (entry->unk6 >= 0x1F) {
						entry->unk6 = 0x1E;
					}
					if (entry->unkA < -0x1E) {
						entry->unkA = -0x1E;
					}
					if (entry->unkA >= 0x1F) {
						entry->unkA = 0x1E;
					}
				}
			} else {
				entry->unk6 = (s16)(entry->unk6 - (entry->unk6 >> 2));
				if (D_80222A70 < entry->unk2) {
					entry->unk8 = (s16)(entry->unk8 - 3);
				}
				entry->unkA = (s16)(entry->unkA - (entry->unkA >> 2));
			}

			deltaX = (f32)(D_80052B34->unk0 - entry->unk0);
			deltaZ = (f32)(D_80052B34->unk4 - entry->unk4);
			dist = sqrtf((deltaX * deltaX) + (deltaZ * deltaZ));
			distCopy = dist;
			sp78 = 0x12C;
			if (D_80052B34->unk1A == 0) {
				sp78 = 0x96;
			}

			if ((dist < (f32)(vehicleSpecs[D_80052B34->unk1A].unkC + sp78)) && (0.0f < dist) && (yLimit == entry->unk2)) {
				s16 accel;

				sp7C = distCopy;
				if (D_80052B34->unk2 == (func_800B84D0_C7480(D_80052B34->unk0, D_80052B34->unk4) >> 8)) {
					accel = (s16)((vehicleSpecs[D_80052B34->unk1A].unkC + sp78 - (s16)sp7C) >> 2);
					entry->unk6 = (s16)(((f32)accel * deltaX) / sp7C);
					entry->unkA = (s16)(((f32)accel * deltaZ) / sp7C);
				}
			}

			{
				u8 alpha;
				s32 lod;

				alpha = 0x40;
				if (entry->unkE < 0x10) {
					alpha = (u8)(entry->unkE * 4);
				}

				if (entry->unkE < 0x64) {
					lod = (entry->unkE / 0x32) + 1;
				} else {
					lod = 0;
				}

				func_800CB23C_DA1EC((s16)(entry->unk0 >> 2), (s16)(entry->unk2 >> 2), (s16)(entry->unk4 >> 2), alpha, entry->unk10, lod);
			}

			if (entry->unkC != 9) {
				entry->unkE--;
				if (entry->unkE == -1) {
					func_800CBD1C_DACCC(entry->unk10);
					entry->unkC = -1;
				}
			}
		}

		entry--;
	} while (i--);

	if (D_8014F7F0 != 0) {
		D_8014F7F0--;
	}

	if (D_8014F7F4 != 0) {
		D_8014F7F4--;
		if (D_8014F7F4 == 0) {
			func_800E5E3C_F4DEC(2, *((u8 *)D_80052B2C + 0x35));
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B49C0/func_800A854C_B74FC.s")
#endif

#ifdef NON_MATCHING
void func_800A8A68_B7A18(s16 arg0, s16 arg1, s16 arg2, s32 arg3) {
	Unk8014F6D0 *entry;

	entry = func_800A5A10_B49C0();
	if (entry == NULL) {
		if (arg3 != 9) {
			return;
		}
		entry = &D_8014F6D0;
	}
	if (arg3 != 9) {
		entry->unk10 = func_800CB19C_DA14C((s16)(arg0 >> 2), (s16)(arg1 >> 2), (s16)(arg2 >> 2), (u8)arg3);
		if (entry->unk10 == -3) {
			entry->unkC = -1;
			return;
		}
	}
	if (arg1 < D_80222A70) {
		entry->unk2 = arg1;
		entry->unk8 = -2;
	} else {
		entry->unk2 = (s16)((arg1 - (func_800038E0_44E0() % 128)) + 0x40);
		entry->unk8 = (s16)((func_800038E0_44E0() % 16) + 0x14);
	}
	entry->unk0 = (s16)((arg0 - (func_800038E0_44E0() % 128)) + 0x40);
	entry->unk4 = (s16)((arg2 - (func_800038E0_44E0() % 128)) + 0x40);
	entry->unk6 = (s16)(0x20 - (func_800038E0_44E0() % 64));
	entry->unkA = (s16)(0x20 - (func_800038E0_44E0() % 64));
	entry->unkC = (s16)arg3;
	entry->unkE = (s16)((func_800038E0_44E0() & 0x7F) + 0x1F4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B49C0/func_800A8A68_B7A18.s")
#endif

#ifdef NON_MATCHING
void func_800A8C44_B7BF4(s16 arg0, s16 arg1, s16 arg2) {
	s16 sp1C;
	s32 rand2;
	s32 i;
	s32 slot;

	sp1C = (s16)(func_800038E0_44E0() % 100);
	rand2 = func_800038E0_44E0();
	i = 0;
	slot = 0;
	if (sp1C < 0x1E) {
		s32 offset = rand2 % 7;
		do {
			s32 idx;
			u8 wtype;
			idx = (slot + offset) & 0xFF;
			if (idx >= 7) {
				idx = (idx - 7) & 0xFF;
			}
			wtype = weaponSlots[idx];
			i = i + 1;
			slot = i & 0xFF;
			if (wtype == 3) {
				func_800A8A68_B7A18(arg0, arg1, arg2, 0xB);
				return;
			}
			if (wtype == 6) {
				func_800A8A68_B7A18(arg0, arg1, arg2, 0xD);
				return;
			}
			if (wtype == 5) {
				func_800A8A68_B7A18(arg0, arg1, arg2, 0x11);
				return;
			}
			if (wtype == 4) {
				func_800A8A68_B7A18(arg0, arg1, arg2, 0x1);
				return;
			}
			if (wtype == 0xA) {
				func_800A8A68_B7A18(arg0, arg1, arg2, 0xF);
				return;
			}
			i = slot;
		} while (slot < 7);
	}
	if (sp1C < 0x4B) {
		func_800A8A68_B7A18(arg0, arg1, arg2, 0x1);
		return;
	}
	if (sp1C < 0x61) {
		func_800A8A68_B7A18(arg0, arg1, arg2, 0x10);
		return;
	}
	if (sp1C < 0x61) {
		func_800A8A68_B7A18(arg0, arg1, arg2, 0xA);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B49C0/func_800A8C44_B7BF4.s")
#endif

#ifdef NON_MATCHING
// CURRENT(4305)
s32 func_800A8E18_B7DC8(s32 arg0) {
	s32 result;
	VehicleInstance* temp_v0;
	VehicleInstance* temp_a2;
	u16 temp_v1;

	result = 0;
	if ((u32)arg0 < 0x1C) {
		switch (arg0) {
			case 0:
				result = func_801391DC_14818C(9, -0x8000);
				break;
			case 1:
				temp_a2 = &vehicleInstances[0];
				if (temp_a2->unk1C != 0) {
					temp_v0 = D_80052B34;
					temp_v1 = vehicleSpecs[temp_v0->unk1A].hitPoints;
					if (temp_v0->unk1C < temp_v1) {
						if (arg0 == 1) {
							temp_v0->unk1C += temp_v1 / 4;
							result = 1;
							temp_v1 = vehicleSpecs[temp_v0->unk1A].hitPoints;
							if (temp_v1 < temp_v0->unk1C) {
								temp_v0->unk1C = temp_v1;
							}
						} else {
							temp_v0->unk1C = temp_v1;
							result = 1;
						}
					} else {
						temp_v1 = vehicleSpecs[temp_a2->unk1A].hitPoints;
						if (temp_a2->unk1C < temp_v1) {
							if (arg0 == 1) {
								temp_a2->unk1C += temp_v1 / 4;
								result = 1;
								if (temp_v1 < temp_a2->unk1C) {
									temp_a2->unk1C = temp_v1;
								}
							} else {
								temp_a2->unk1C = temp_v1;
								result = 1;
							}
						}
					}
				}
				break;

			case 2:
				result = func_801391DC_14818C(1, -0x8000);
				break;

			case 3:
				result = func_801391DC_14818C(2, -0x8000);
				break;

			case 4:
				if ((currentLevel == 4) && (D_80047F94 == 0)) {
					result = func_801391DC_14818C(3, 0);
				} else {
					result = func_801391DC_14818C(3, 0xA);
				}
				break;

			case 5:
				result = func_801391DC_14818C(4, 0xA);
				break;

			case 6:
				result = func_801391DC_14818C(5, 0x64);
				break;

			case 7:
				result = func_801391DC_14818C(6, 5);
				break;

			case 8:
				result = func_801391DC_14818C(7, 3);
				break;

			case 9:
				if (func_800E60CC_F507C(2, *((u8*) D_80052B2C + 0x35)) != 0) {
					D_8014F7F4 += 0x258;
					result = 1;
				} else {
					D_8014F7F4 = 0x258;
					func_800E5CF4_F4CA4(2, *((u8*) D_80052B2C + 0x35));
					result = 1;
				}
				break;

			case 10:
				result = func_80139150_148100(3, 5);
				break;

			case 11:
				result = func_80139150_148100(3, 0x14);
				break;

			case 12:
				result = func_80139150_148100(6, 3);
				break;

			case 13:
				result = func_80139150_148100(6, 0xA);
				break;

			case 14:
				result = func_80139150_148100(0xA, 0x19);
				break;

			case 15:
				result = func_80139150_148100(5, 0x32);
				break;

			case 16:
				result = func_80139150_148100(4, 0x14);
				break;

			case 17:
				D_8004DC5C++;
				if (D_8004DC5C == 3) {
					result = func_801391DC_14818C(0xA, 0x32);
					func_800DA994_E9944();
					func_8001A650_1B250(0x15);
				}
				break;

			case 18:
				D_8004DC5E++;
				break;

			case 19:
				result = func_80139150_148100(0xE, 0x14);
				break;

			case 20:
				result = func_80139150_148100(0xE, 0xA);
				break;

			case 21:
				result = func_80139150_148100(0x10, 3);
				break;

			case 22:
				result = func_80139150_148100(0x11, 5);
				break;

			case 23:
				result = func_80139150_148100(0xF, 0x1E);
				break;

			case 24:
				result = func_80139150_148100(0xF, 0xF);
				break;

			case 25:
				result = func_80139150_148100(3, 2);
				break;

			case 26:
				break;

			case 27:
				break;

		}
	}

	if (result != 0) {
		func_80139020_147FD0(arg0);
	}

	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B49C0/func_800A8E18_B7DC8.s")
#endif

// guess_givePowerUp
void func_800A9238_B81E8() {
	s16* powerupTypePtr = &D_80047F7E + 1;
	s16 powerupType;
	s32 i = 0x10;
	s16 negOne = -1;
	
	while (powerupTypePtr--, i--) {
		powerupType = *powerupTypePtr;
		if (negOne != powerupType) {
			osSyncPrintf(D_80142820_1517D0, powerupType); // Giving delayed powerup %d
			func_800A8E18_B7DC8(*powerupTypePtr);
		}
	}
}

void func_800A92B0_B8260(void) {
	s32 i;
	
	i = 16;
	while (i--) {
		D_8014F6D0[i].unkC = -1;
	} ;
}
