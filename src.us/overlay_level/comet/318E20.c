#include <ultra64.h>
#include "common.h"

#ifdef NON_MATCHING
void func_802D4CD0_318E20(s32 arg0, void *arg1) {
	if (arg0 < 0x14) {
		((void (*)(s32))D_802E4E84[arg0])(arg0);
		return;
	}

	switch (arg0) {
	case 0x16:
		func_802DFE68_323FB8(arg1, arg0);
		return;
	case 0x15:
		osSyncPrintf(D_802E7A30);
		func_800EFEB4_FEE64((void *)&func_802D67A8_31A8F8, 0x24, 0);
		return;
	case 0x45:
		func_802D7548_31B698(arg1, arg0);
		return;
	case 0x44:
		func_80007690_8290();
		return;
	default:
		osSyncPrintf(D_802E7A40);
		return;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D4CD0_318E20.s")
#endif

#ifdef NON_MATCHING
s16 func_802D4DA8_318EF8(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
	s16 temp_v0;
	s16 temp_v0_2;
	s16 temp_v0_3;

	temp_v0 = func_800D249C_E144C(arg0, arg1, arg2, (s16) (arg3 / 2), (s32) arg4, (s32) arg4, -0xB, 1);
	if (temp_v0 != -3) {
		func_800D25A4_E1554(temp_v0);
		temp_v0_2 = (arg4 / 3) * 2;
		temp_v0_3 = func_800D249C_E144C(arg0, arg1, arg2, arg3, (s32) temp_v0_2, (s32) temp_v0_2, -0xB, 2);
		if (temp_v0_3 != -3) {
			D_80154318[temp_v0].unk14 = temp_v0_3;
			D_80154318[temp_v0_3].unk14 = temp_v0;
		} else {
			func_800C1A4C_D09FC(temp_v0, 0xB, 1);
			return -3;
		}
	}
	return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D4DA8_318EF8.s")
#endif

#ifdef NON_MATCHING
void func_802D4EE4_319034(s16 arg0) {
	s16 sp1E;

	if (arg0 != -3) {
		sp1E = D_80154318[arg0].unk14;
		func_800C1E24_D0DD4(arg0, 0xB, 1);
		func_800C1E24_D0DD4(sp1E, 0xB, 1);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D4EE4_319034.s")
#endif

#ifdef NON_MATCHING
void func_802D4F4C_31909C(void) {
	BuildingInstance *temp_t5;

	osSyncPrintf(&D_802E7A60);
	if (func_8000726C_7E6C(0x2D) == 0) {
		D_802E7C30 = func_802D4DA8_318EF8(-0x3BF6, (s16) (func_800B84D0_C7480(-0x3BF6, 0x3900) >> 8), 0x37F5, 0x7D0, 0x1F4);
	} else {
		D_802E7C30 = -1;
		func_8011C080_12B030(0xC3);
		func_8011C080_12B030(0xCB);
		func_8011C080_12B030(0xD0);
		func_8011C080_12B030(0xC9);
		func_8011C080_12B030(0xCA);
	}
	if (func_8000726C_7E6C(0x2E) == 0) {
		D_802E7C32 = func_802D4DA8_318EF8(0x1000, (s16) (func_800B84D0_C7480(0x1000, 0x3900) >> 8), 0x37F5, 0x7D0, 0x1F4);
	} else {
		D_802E7C32 = -1;
		func_8011C080_12B030(0xC4);
		func_8011C080_12B030(0xCE);
		func_8011C080_12B030(0xD1);
		func_8011C080_12B030(0xCC);
		func_8011C080_12B030(0xCD);
	}
	if (func_8000726C_7E6C(0x2F) == 0) {
		D_802E7C34 = func_802D4DA8_318EF8(-0x3BF6, (s16) (func_800B84D0_C7480(-0x3BF6, -0x3900) >> 8), -0x3BF6, 0x7D0, 0x1F4);
	} else {
		D_802E7C34 = -1;
		func_8011C080_12B030(0x43);
		func_8011C080_12B030(0x3F);
		func_8011C080_12B030(0x45);
		func_8011C080_12B030(0x4D);
		func_8011C080_12B030(0x44);
	}
	if (func_8000726C_7E6C(0x30) == 0) {
		D_802E7C36 = func_802D4DA8_318EF8(0x1000, (s16) (func_800B84D0_C7480(0x1000, -0x3900) >> 8), -0x3BF6, 0x7D0, 0x1F4);
	} else {
		D_802E7C36 = -1;
		func_8011C080_12B030(0x40);
		func_8011C080_12B030(0x47);
		func_8011C080_12B030(0x4E);
		func_8011C080_12B030(0x46);
		func_8011C080_12B030(0x48);
	}
	D_802E4E80 = 0;
	if (func_8000726C_7E6C(0x29) != 0) {
		func_8011C080_12B030(0xF6);
	}
	if (func_8000726C_7E6C(0x2A) != 0) {
		func_8011C080_12B030(0x65);
	}
	if (func_8000726C_7E6C(0x2B) != 0) {
		func_8011C080_12B030(0x5D);
	}
	if (func_8000726C_7E6C(0x2C) != 0) {
		func_8011C080_12B030(0xAF);
	}
	if (D_80047F98 != 0) {
		temp_t5 = &buildingInstances[func_80120634_12F5E4()];
		D_80157FA4 = temp_t5;
		temp_t5->yCoord = 0x7D00;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D4F4C_31909C.s")
#endif

#ifdef NON_MATCHING
void func_802D522C_31937C(s16 arg0) {
	Unk80052B40_fp *temp_fp;
	s16 spBE;
	s16 spB8;
	s16 spB4;
	s16 spB0;
	s16 var_s1;
	s16 var_s1_2;
	s16 var_s4;
	s16 var_s5;
	s32 sp90;
	s32 sp8C;
	s32 sp88;
	s32 sp84;
	s16 temp_a1;
	s16 temp_a3;
	s32 temp_v0;
	s32 var_s6;
	s8 temp_s2;
	u32 temp_hi;
	u32 temp_v1_2;
	f64 temp_f20;
	Gfx *temp_v1;
	Gfx *temp_v1_3;
	Gfx *temp_v1_4;
	Gfx *temp_v1_5;
	s32 temp_t3;
	s32 temp_t4;
	Vtx *temp_t5;

	temp_fp = &D_802E4ED8[arg0];
	D_80052B40.unk0 = temp_fp->unk0 / 4;
	D_80052B40.unk2 = temp_fp->unk4 / 4;
	D_80052B40.unk4 = temp_fp->unk8 / 4;
	D_80052B50.unk0 = 0x40;
	D_80052B50.unk2 = 0x40;
	D_80052B50.unk4 = 0x40;
	func_800039D0_45D0(&D_80052B40, &D_80052B50, &D_80052B50, D_8005BB38);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_MODELVIEW | G_MTX_LOAD | G_MTX_NOPUSH);
	temp_a3 = temp_fp->unk8;
	var_s4 = 0;
	D_8005BB38 += 0x40;
	var_s5 = 0;
	temp_a1 = temp_fp->unk4;
	if (temp_a3 == 0) {
		sp90 = -temp_a1 / 2;
		var_s5 = D_80052B40.unk2;
	} else {
		sp90 = -temp_a1 / 2;
		var_s4 = D_80052B40.unk2;
	}
	temp_hi = (u32)D_80052A8C % 10U;
	var_s6 = ((D_80052A8C * 0x9C4) & 0xFFFF);
	if (temp_hi == ((u32)D_80052A8C % 20U)) {
		spB4 = (s16)temp_hi;
	} else {
		spB4 = 0xA - temp_hi;
	}
	spBE = 0;
	temp_f20 = D_802E7B00;
	sp84 = temp_a1 / 4;
	spB8 = 0x64;
	spB0 = temp_a3;
	do {
		var_s1 = 0;
		sp8C = spB8 + spB4 + 0xA;
		sp88 = spB8 - spB4 - 0xA;
		do {
			temp_s2 = (u8)(s32)(temp_f20 - (((f64)(f32)sins(var_s6 & 0xFFFF) / 32768.0) * 100.0));
			temp_v1_2 = (u32)((((f64)(f32)coss(var_s6 & 0xFFFF) / 32768.0) * 100.0) + temp_f20);
			D_8005BB34->v.ob[0] = var_s4;
			var_s6 = (var_s6 + 0x7D0) & 0xFFFF;
			D_8005BB34->v.ob[1] = (s16)sp8C;
			D_8005BB34->v.ob[2] = var_s5;
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0;
			D_8005BB34->v.tc[1] = 0;
			D_8005BB34->v.cn[0] = temp_s2;
			D_8005BB34->v.cn[1] = 0x28;
			D_8005BB34->v.cn[2] = (u8)temp_v1_2;
			D_8005BB34->v.cn[3] = 0x64;
			temp_t5 = D_8005BB34 + 1;
			D_8005BB34 = temp_t5;
			temp_t5->v.ob[0] = var_s4;
			temp_t5->v.ob[1] = (s16)sp88;
			temp_t5->v.ob[2] = var_s5;
			temp_t5->v.flag = 0;
			temp_t5->v.tc[0] = 0;
			temp_t5->v.tc[1] = 0;
			temp_t5->v.cn[0] = temp_s2;
			temp_t5->v.cn[1] = 0x28;
			temp_t5->v.cn[2] = (u8)temp_v1_2;
			temp_t5->v.cn[3] = 0x64;
			D_8005BB34 += 1;
			if (spB0 == 0) {
				var_s5 += sp84;
			} else {
				var_s4 += sp84;
			}
			if (((u32)D_80052A8C % (u32)((func_800038E0_44E0() % 40) + 0x1E)) == 0) {
				func_800C541C_D43CC(temp_fp->unk0 + var_s4, temp_fp->unk4 + spB8,
					temp_fp->unk8 + var_s5, 0, 0x7F, 0, 0x28, 0xFF, 0x14, 0x14,
					temp_s2, 0x28, temp_v1_2 & 0xFF);
			}
			var_s1 += 1;
		} while (var_s1 < 5);
		spB8 += 0x55;
		if (spB0 == 0) {
			var_s5 = D_80052B40.unk2;
		} else {
			var_s4 = D_80052B40.unk2;
		}
		var_s6 = (var_s6 + 0x1D4C) & 0xFFFF;
		var_s1_2 = 0;
		gSPVertex(D_8005BB2C++, D_8005BB34 - 0xA0, 10, 0);
		do {
			temp_v0 = var_s1_2 * 2;
			temp_t3 = (temp_v0 + 2) & 0xFF;
			temp_t4 = (temp_v0 + 4) & 0xFF;
			gSP1Triangle(D_8005BB2C++, temp_v0 & 0xFF, temp_t3, temp_t4, 0);
			var_s1_2 += 2;
			gSP1Triangle(D_8005BB2C++, temp_t3, temp_t4, (temp_v0 + 6) & 0xFF, 0);
		} while (var_s1_2 < 8);
		spBE += 1;
	} while (spBE < 3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D522C_31937C.s")
#endif

#ifdef NON_MATCHING
void func_802D58BC_319A0C(void) {
	s16 i;

	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK);
	for (i = 0; i < 9; i++) {
		if (D_802E4ED8[i].unkA == 1) {
			if (func_800B960C_C85BC(D_802E4ED8[i].unk0, D_802E4ED8[i].unk4, 0x190, 0x190) != 0) {
				func_802D522C_31937C(i);
			}
		}
	}
	gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D58BC_319A0C.s")
#endif

void func_802D59BC_319B0C(void) {
	s16 i;
	s16 temp_s1;
	s16 temp_s2;
	s32 dx;
	s32 dy;

	for (i = 0; i < 9; i++) {
		if (func_8000726C_7E6C(i + 10) != 0) {
			D_802E4ED8[i].unkA = 1;
		} else {
			D_802E4ED8[i].unkA = 0;
		}

		if (D_802E4ED8[i].unkA == 1) {
			temp_s1 = D_802E4ED8[i].unk0;
			temp_s2 = D_802E4ED8[i].unk4;
			dx = D_80052B34->unk0 - temp_s1;
			dy = D_80052B34->unk4 - temp_s2;

			if ((dx * dx + dy * dy) < (s32)0x1E8480) {
				func_801371B8_146168((s32)&D_802E4ED8[i], 0x17F, temp_s1, D_802E4ED8[i].unk2, temp_s2, 1.0f);
				temp_s1 = D_802E4ED8[i].unk0;
				temp_s2 = D_802E4ED8[i].unk4;
			}

			if (D_802E4ED8[i].unk8 == 0) {
				D_802E4F44[i] = func_8012D700_13C6B0(1 & 0xFF, (i + 100) & 0xFFFF, temp_s1, D_802E4ED8[i].unk2, temp_s2, 0, 0, 0, 0x28, 0xAA, 0x148, 0, 0);
			} else {
				D_802E4F44[i] = func_8012D700_13C6B0(1 & 0xFF, (i + 100) & 0xFFFF, temp_s1, D_802E4ED8[i].unk2, temp_s2, 0, 0, 0, 0xAA, 0x28, 0x148, 0, 0);
			}
		} else {
			func_8012D808_13C7B8(D_802E4F44[i]);
		}
	}
}

void func_802D5BFC_319D4C(void) {
	if ((D_802E7C3C = D_802E7C3C - 1) >= 0) {
		return;
	}
	func_80018D7C_1997C(0xE0);
	func_800074BC_80BC(func_802D5BFC_319D4C);
}

void func_802D5C40_319D90(void) {
	if (func_8000726C_7E6C(0x29) == 0) {
		D_80047F9C = 1;
		func_800072CC_7ECC(0x29);
		D_802E7C3C = 0x28;
		func_80007410_8010(&func_802D5BFC_319D4C);
	}
}

void func_802D5C98_319DE8(void) {
	if (func_8000726C_7E6C(0x2A) == 0) {
		D_80047F9C = 2;
		func_800072CC_7ECC(0x2A);
		D_802E7C3C = 0x28;
		func_80007410_8010(&func_802D5BFC_319D4C);
	}
}

void func_802D5CF0_319E40(void) {
	if (func_8000726C_7E6C(0x2B) == 0) {
		D_80047F9C = 3;
		func_800072CC_7ECC(0x2B);
		D_802E7C3C = 0x28;
		func_80007410_8010(&func_802D5BFC_319D4C);
	}
}

void func_802D5D48_319E98(void) {
	if (func_8000726C_7E6C(0x2C) != 0) {
		return;
	}
	D_80047F9C = 4;
	func_800072CC_7ECC(0x2C);
	D_802E7C3C = 0x28;
	func_80007410_8010(&func_802D5BFC_319D4C);
}

void func_802D5DA0_319EF0(void) {
	D_80047F9C = 5;
	D_802E7C3C = 0;
	func_80007410_8010(func_802D5BFC_319D4C);
}

// CURRENT(2500)
#ifdef NON_MATCHING
s32 func_802D5DD8_319F28(void) {
	volatile s32 sp20;
	s32 levelIdx;
	volatile s16 sp24;

	sp24 = *(s16 *)((u8 *)&D_802E4F68_3290B8 + 2);
	sp20 = D_802E4F6C_3290BC;
	switch (D_80157F8C) {
	case 0:
		D_800313FC = 1000;
		if (D_80157F8E++ >= 71) {
			D_80157F8E = 0;
			D_80157F8C = 1;
		}
		return 0;
	case 1:
		if (D_80157F8E == 1) {
			func_800D6ADC_E5A8C(0x1000, (s16)(func_800B84D0_C7480(0x1000, -0x3BC4) >> 8), -0x3BC4, 0xC);
			func_802D4EE4_319034(D_802E7C36);
		}
		if (D_80157F8E++ >= 121) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		return 0;
	case 2:
		levelIdx = currentLevel - 1;
		D_800313FC = *(s16 *)((u8 *)D_80031636 + levelIdx * 4);
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5DD8_319F28.s")
#endif

void func_802D5F24_31A074(void) {
	if (func_8000726C_7E6C(0x30) == 0) {
		func_800EFEB4_FEE64((void *)&func_802D5DD8_319F28, 0x1F, 1);
	}
	func_800072CC_7ECC(0x30);
}

// CURRENT(2000)
#ifdef NON_MATCHING
s32 func_802D5F6C_31A0BC(void) {
	volatile s32 sp20;
	s32 levelIdx;
	volatile s16 sp24;

	sp24 = *((volatile s16 *)&D_802E4F70_3290C0 + 1);
	sp20 = D_802E4F74_3290C4;
	switch (D_80157F8C) {
	case 0:
		D_800313FC = 1000;
		if (D_80157F8E++ >= 71) {
			D_80157F8E = 0;
			D_80157F8C = 1;
		}
		break;
	case 1:
		if (D_80157F8E == 1) {
			func_800D6ADC_E5A8C(0x1000, (s16)(func_800B84D0_C7480(0x1000, 0x3840) >> 8), 0x3840, 0xC);
			func_802D4EE4_319034(D_802E7C32);
		}
		if (D_80157F8E++ >= 121) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		break;
	case 2:
		levelIdx = currentLevel - 1;
		D_800313FC = *(s16 *)((u8 *)D_80031636 + levelIdx * 4);
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5F6C_31A0BC.s")
#endif

void func_802D60B8_31A208(void) {
	if (func_8000726C_7E6C(0x2E) == 0) {
		func_800EFEB4_FEE64((void*)&func_802D5F6C_31A0BC, 0x20, 1);
	}
	func_800072CC_7ECC(0x2E);
}

// CURRENT(2000)
#ifdef NON_MATCHING
s32 func_802D6100_31A250(void) {
	volatile s32 sp20;
	s32 levelIdx;
	volatile s16 sp24;

	sp24 = *(volatile s16 *)((u8 *)&D_802E4F78_3290C8 + 2);
	sp20 = D_802E4F7C_3290CC;
	switch (D_80157F8C) {
	case 0:
		D_800313FC = 1000;
		if (D_80157F8E++ >= 71) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		return 0;
	case 1:
		if (D_80157F8E == 1) {
			func_800D6ADC_E5A8C(-0x3BF6, (s16)(func_800B84D0_C7480(-0x3BF6, 0x3840) >> 8), 0x3840, 0xC);
			func_802D4EE4_319034(D_802E7C30);
		}
		if (D_80157F8E++ >= 121) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		return 0;
	case 2:
		levelIdx = currentLevel - 1;
		D_800313FC = *(s16 *)((u8 *)D_80031636 + levelIdx * 4);
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D6100_31A250.s")
#endif

void func_802D624C_31A39C(void) {
	if (func_8000726C_7E6C(0x2D) == 0) {
		func_800EFEB4_FEE64(&func_802D6100_31A250, 0x21, 1);
	}
	func_800072CC_7ECC(0x2D);
}

// CURRENT(2000)
#ifdef NON_MATCHING
s32 func_802D6294_31A3E4(void) {
	volatile s32 sp20;
	s32 levelIdx;
	volatile s16 sp24;

	sp24 = *(volatile s16 *)((u8 *)&D_802E4F80_3290D0 + 2);
	sp20 = D_802E4F84_3290D4;
	switch (D_80157F8C) {
	case 0:
		D_800313FC = 1000;
		if (D_80157F8E++ >= 71) {
			D_80157F8E = 0;
			D_80157F8C = 1;
		}
		return 0;
	case 1:
		if (D_80157F8E == 1) {
			func_800D6ADC_E5A8C(-0x3BF6, (s16)(func_800B84D0_C7480(-0x3BF6, -0x3BC4) >> 8), -0x3BC4, 0xC);
			func_802D4EE4_319034(D_802E7C34);
		}
		if (D_80157F8E++ >= 121) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		return 0;
	case 2:
		levelIdx = currentLevel - 1;
		D_800313FC = *(s16 *)((u8 *)D_80031636 + levelIdx * 4);
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D6294_31A3E4.s")
#endif

void func_802D63E0_31A530(void) {
	if (func_8000726C_7E6C(0x2F) == 0) {
		func_800EFEB4_FEE64(&func_802D6294_31A3E4, 0x22, 1);
	}
	func_800072CC_7ECC(0x2F);
}

void func_802D6428_31A578(void) {
	func_800073B8_7FB8(0xA);
	func_800073B8_7FB8(0xB);
}

void func_802D6458_31A5A8(void) {
	if (D_8013FD78_14ED28->unk20 & 0x8000) {
		func_800FB44C_10A3FC(D_8013FD78_14ED28, -17050.0f);
		func_800FB468_10A418(D_8013FD78_14ED28, 1248.0f);
		func_800FB484_10A434(D_8013FD78_14ED28, 14.0f);
		func_800FD510_10C4C0(0, 0x72);
		func_800FDC30_10CBE0(0);
	}

	func_800073B8_7FB8(0x0E);
	func_800073B8_7FB8(0x0F);
	func_800073B8_7FB8(0x10);
	func_800073B8_7FB8(0x28);
	func_80018D7C_1997C(0xD3);
	func_800072CC_7ECC(0x29);
	func_800072CC_7ECC(0x2A);

	if ((D_800521F0 >> 12) & 1) {
		func_8011C080_12B030(0xF6);
	}

	if ((D_80051458 >> 12) & 1) {
		func_8011C080_12B030(0x65);
	}
}

void func_802D6558_31A6A8(void) {
	func_800073B8_7FB8(0xD);
}

void func_802D657C_31A6CC(void) {
	func_8011C080_12B030(0x86);
}

void func_802D659C_31A6EC(void) {
	func_800FB430_10A3E0(D_80052B34, 0.0f);
	D_80052B34->unk30 = 0.0f;
	D_80052B34->unk34 = 0.0f;
	D_80052B34->unk38 = 0.0f;
	func_80013468_14068(9);
	func_802DFE68_323FB8();
	func_800EFEB4_FEE64(0, 0x23, 0);
	func_800072CC_7ECC(0xA);
	func_800072CC_7ECC(0xB);
	func_800072CC_7ECC(0xC);
	func_800072CC_7ECC(0xD);
	func_800072CC_7ECC(0xE);
	func_800072CC_7ECC(0xF);
	func_800072CC_7ECC(0x10);
	func_800072CC_7ECC(0x11);
}

void func_802D6670_31A7C0(void) {
	D_802E7C40 += 1;
	osSyncPrintf(D_802E7A78_32BBC8, D_802E7C40);

	if ((D_802E7C40 > 0) && (D_802E7C40 < 6)) {
		func_800E35E0_F2590((u8)(0xFF - (D_802E7C40 * 50)));
	}

	if (D_802E7C40 == 1) {
		func_8011592C_1248DC(D_80052B34->unk0, D_80052B34->unk4);
		D_8013FD78_14ED28->unk6 = D_80052B34->unk6;
		func_800FD510_10C4C0(0, 0x72);
		func_800FDC30_10CBE0(0);
		D_801493E0 = 1;
		func_800153D8_15FD8(0xD7);
	}

	if (D_802E7C40 == 0xA) {
		func_800074BC_80BC(func_802D6670_31A7C0);
	}
}

void func_802D6770_31A8C0(void) {
	D_802E7C40 = 0;
	osSyncPrintf(D_802E7A7C_32BBCC);
	func_80007410_8010(func_802D6670_31A7C0);
}

#ifdef NON_MATCHING
// CURRENT(41877)
s32 func_802D67A8_31A8F8(void) {
	s32 sp4C[3];
	u8 sp58[4];
	s16 sp5C[3];
	
	sp4C[0] = D_802E4F88_3290D8[0];
	sp4C[1] = D_802E4F88_3290D8[1];
	sp4C[2] = D_802E4F88_3290D8[2];
	
	D_80157F96 = 1;
	D_8015EA2C = 0.0f;
	
	if ((currentControllerStates[0].button & 0x9000) && (D_80157F8C > 0) && (D_80031B50 == 1)) {
		D_80159DE2 = 0;
		buildingInstances[D_80159DDF].yCoord = func_800B84D0_C7480(buildingInstances[D_80159DDF].xCoord, buildingInstances[D_80159DDF].zCoord) >> 8;
		func_800CD390_DC340(D_80157F9E[0]);
		func_800CD390_DC340(D_80157F9E[1]);
		func_800CD390_DC340(D_80157FA0);
		func_800FB44C_10A3FC(D_80052B34, 25000.0f);
		func_800FB468_10A418(D_80052B34, 600.0f);
		func_800FB484_10A434(D_80052B34, 26700.0f);
		D_80157FA4 = &buildingInstances[func_80120634_12F5E4()];
		D_80159DDF = func_80120634_12F5E4();
		D_80157FA4->yCoord = 0x7D00;
		D_80052B34->unkE = -0x8000;
		func_800FB44C_10A3FC(D_80052B34, (f32)buildingInstances[D_80159DDF].xCoord);
		func_800FB468_10A418(D_80052B34, 0.0f);
		func_800FB484_10A434(D_80052B34, (f32)buildingInstances[D_80159DDF].zCoord);
		D_80052B34->unk6 = -0x41E3;
		D_802E7C40 = 0;
		func_80007410_8010(func_802D6670_31A7C0);
		D_80159320 &= 0xFFEFFFFF;
		func_800F0234_FF1E4();
		return 1;
	}
	
	switch (D_80157F8C) {
	case 0:
		if (D_80157F8E == 0) {
			func_80013468_14068(0);
		}
		D_80157FA4 = &buildingInstances[func_80120634_12F5E4()];
		D_80159DDF = func_80120634_12F5E4();
		osSyncPrintf(D_802E7AA4_32BBF4, D_80159DDF & 0xFF);
		D_80159DE0 = 0;
		D_80159DE2 = 0;
		D_80159DE4 = 0;
		D_8005254C = D_80159DDF * 16;
		D_80157F92 = 0;
		D_8015EA2C = 0.0f;
		D_80052B34->unkE = -0x8000;
		func_800FB44C_10A3FC(D_80052B34, (f32)buildingInstances[D_80159DDF].xCoord);
		func_800FB468_10A418(D_80052B34, 0.0f);
		func_800FB484_10A434(D_80052B34, (f32)buildingInstances[D_80159DDF].zCoord);
		D_80157F8E = 0;
		D_80157F9E[1] = 0xFF;
		D_80157FA0 = 0xFF;
		D_80157F9E[0] = 0xFF;
		D_80157F8C++;
		D_802E7C44 = D_802E7B24_32BC74;
		D_80159DE2 = 0x1F4;
		D_80157F9E[0] = func_800CD1F8_DC1A8(buildingInstances[D_80159DDF].xCoord, buildingInstances[D_80159DDF].yCoord, buildingInstances[D_80159DDF].zCoord - 100, -0x23, 0, 0);
		D_80157F9E[1] = func_800CD1F8_DC1A8(buildingInstances[D_80159DDF].xCoord + 120, buildingInstances[D_80159DDF].yCoord, buildingInstances[D_80159DDF].zCoord + 80, -0x23, 0, 0);
		D_80157FA0 = func_800CD1F8_DC1A8(buildingInstances[D_80159DDF].xCoord - 120, buildingInstances[D_80159DDF].yCoord, buildingInstances[D_80159DDF].zCoord + 80, -0x23, 0, 0);
		if (D_80157F8E >= 2) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		break;
	
	case 1:
		{
			u16 temp = D_80159DE2;
			s32 trunc = (s16)((f64)(f32)temp - (f64)D_802E7C44);
			if (trunc < 0) { trunc += 0x10000; }
			if (trunc >= 0x8001) {
				D_80159DE2 = 0;
				D_802E7C44 = 0.0f;
			} else {
				if (trunc != 0) { D_802E7C44 -= D_802E7B28_32BC78; }
				D_80159DE2 = trunc;
			}
			if (D_80157F8E == 0x3D) {
				func_80135D44_144CF4(buildingInstances[D_80159DDF].xCoord, buildingInstances[D_80159DDF].yCoord, buildingInstances[D_80159DDF].zCoord, 3.0f);
			}
			func_800CD2E8_DC298(buildingInstances[D_80159DDF].xCoord, buildingInstances[D_80159DDF].yCoord + D_80159DE2 * 4, buildingInstances[D_80159DDF].zCoord - 100, D_80157F9E[0]);
			func_800CD2E8_DC298(buildingInstances[D_80159DDF].xCoord + 120, buildingInstances[D_80159DDF].yCoord + D_80159DE2 * 4, buildingInstances[D_80159DDF].zCoord + 80, D_80157F9E[1]);
			func_800CD2E8_DC298(buildingInstances[D_80159DDF].xCoord - 120, buildingInstances[D_80159DDF].yCoord + D_80159DE2 * 4, buildingInstances[D_80159DDF].zCoord + 80, D_80157FA0);
		}
		func_800FB468_10A418(&vehicleInstances[0], 32000.0f);
		if (D_80157F8E >= 0x79) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E++;
		}
		break;
	
	case 2:
		if (D_80157F8E == 0) {
			func_800FDC30_10CBE0(0);
			func_800CD390_DC340(D_80157F9E[0]);
			func_800CD390_DC340(D_80157F9E[1]);
			func_800CD390_DC340(D_80157FA0);
			D_8015EA2C = 0.0f;
			D_8005254C = -1;
		}
		func_800C56A4_D4654(0x6280, 0x292, 0x6966, 0x190, 0x14, 0x5, 0x2);
		if (D_80157F8E >= 0x33) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E++;
		}
		break;
	
	case 3:
		func_800C56A4_D4654(0x6280, 0x292, 0x6966, 0x190, 0x14, 0x5, 0x2);
		if (D_80157F8E % 0x12 == 0) {
			s16 sp6C = D_80157FA4->yCoord + D_80159DE2 * 4;
			s16 sp6A = D_80157FA4->zCoord;
			func_800D05A8_DF558(D_80157FA4->xCoord, sp6C, sp6A, 0x3E8, 0xFA, 0x64, 0x14);
			func_800DEE5C_EDE0C(D_80157FA4->xCoord, sp6C + 0x1E, sp6A, 0xA, 0x2);
			func_800DEE5C_EDE0C(D_80157FA4->xCoord, sp6C + 0x1E, sp6A, 0xD, 0x1);
			sp5C[0] = D_80157FA4->xCoord;
			sp5C[1] = sp6C;
			sp5C[2] = sp6A;
			sp58[0] = 0xFA;
			sp58[1] = 0x64;
			sp58[2] = 0x14;
			func_800B99A8_C8958((Unk80152B80 *)sp5C, 0x1E, 0x1F4, 0xFF, sp58, 0x50, 0xA, 0);
		}
		if (D_80157F8E == 0x30) {
			func_800DF9C8_EE978(D_80157FA4->xCoord, D_80157FA4->yCoord + D_80159DE2 * 4, D_80157FA4->zCoord, 0x190, 0, (s32)sp4C);
		}
		if (D_80157F8E >= 0x33) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E++;
		}
		break;
	
	case 4:
		D_80157FA4->yCoord = 0x7D00;
		D_80157FA4->xCoord += 0x2710;
		if (D_80157F8E == 0) {
			s16 sp6A = D_80157FA4->zCoord;
			s16 sp6C;
			func_8011592C_1248DC(D_80157FA4->xCoord - 0x2710, sp6A);
			func_800FD510_10C4C0(0, 0x72);
			D_8013FD78_14ED28->unkA = 0;
			D_80052B34->unk6 = -0x41E3;
			func_800DEE5C_EDE0C(0x6280, 0x27E, 0x6966, 0xD, 0x2);
			func_800DEE5C_EDE0C(0x6280, 0x27E, 0x6966, 0xF, 0x1);
			sp5C[0] = D_80157FA4->xCoord - 0x2710;
			sp5C[1] = sp6C;
			sp5C[2] = sp6A;
			sp58[0] = 0xFA;
			sp58[1] = 0x64;
			sp58[2] = 0x14;
			func_800B99A8_C8958((Unk80152B80 *)sp5C, 0x1E, 0x1F4, 0xFF, sp58, 0x50, 0xA, 0);
			func_800E35E0_F2590(0xFF);
		}
		if (D_80157F8E > 0) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E++;
		}
		break;
	
	case 5:
		if (D_80157F8E < 5) {
			func_800E35E0_F2590((u8)(0xFF - (D_80157F8E * 51)));
		}
		{
			s32 idx;
			for (idx = 0; idx < 6; idx++) {
				if (D_80157F8E == 0) {
					D_802E7C48[idx] = func_800DA6F0_E96A0(0x6280, 0x27E, 0x6966, 1);
				} else {
					s32 angle = (idx * 0x2AAA) & 0xFFFF;
					s16 cosVal = coss(angle);
					s16 sinVal = sins(angle);
					s16 cosPos = (s16)((f64)(f32)cosVal / 32768.0 * (D_80157F8E * 20)) + 0x6280;
					s16 sinPos = (s16)((f64)(f32)sinVal / 32768.0 * (D_80157F8E * 20)) + 0x6966;
					func_800D9B14_E8AC4(cosPos, 0x27E, sinPos, D_802E7C48[idx]);
				}
			}
		}
		if (D_80157F8E >= 0x29) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E++;
		}
		break;
	
	case 6:
		{
			s32 idx;
			for (idx = 0; idx < 6; idx++) {
				func_800D9C60_E8C10(D_802E7C48[idx]);
			}
		}
		D_80159DDF = 0xFF;
		return 1;
	}
	
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D67A8_31A8F8.s")
#endif

void func_802D7548_31B698(void) {
    if (D_80052ACA != 2) {
        if ((func_80004818_5418(0x5C, 0x1F, 0x0E) != 0) && (D_80048030 < 1)) {
            func_800076D4_82D4(1);
        }
        if ((func_80004818_5418(-0x14, 0x52, 4) != 0) && (D_80048030 < 2)) {
            func_800076D4_82D4(2);
        }
        if ((func_80004818_5418(0x2B, 0, 6) != 0) && (D_80048030 < 3)) {
            func_800076D4_82D4(3);
        }
        if ((func_8000726C_7E6C(0x1E) != 0) && (D_80048030 < 4)) {
            func_800076D4_82D4(4);
        }
        if ((func_8000726C_7E6C(0x2D) != 0) &&
            (func_8000726C_7E6C(0x2E) != 0) &&
            (func_8000726C_7E6C(0x2F) != 0) &&
            (func_8000726C_7E6C(0x30) != 0) &&
            (D_80048030 < 5)) {
            func_800076D4_82D4(5);
        }
        if ((func_8000726C_7E6C(0x1F) != 0) && (D_80048030 < 6)) {
            func_800076D4_82D4(6);
        }
    }
}

#ifdef NON_MATCHING
// CURRENT(10111)
void func_802D76B0_31B800(u8 arg0) {
    s32 sp88;
    s32 sp84;
    s32 sp80;
    s32 sp7C;
    f32 sp6C;
    s16 sp5E;
    s32 sp58;
    s16 sp4A;
    s16 sp54;
    s16 sp56;
    u8 sp52;
    u8 sp51;
    u8 sp50;
    f32 sp3C;
    f32 sp38;
    s16 sp8E;
    AlienInstance *inst;
    Unk8014DD50 *unkPtr;
    s16 diff;
    s16 var_v1;
    s16 temp;

    inst = &alienInstances[arg0];
    sp8E = *(s8 *)((u8 *)D_8014DD5C + inst->unkC * 16);
    sp58 = 0;
    func_80086230_951E0(arg0, sp8E, 0x4000);

    unkPtr = &D_8014DD50[sp8E];
    unkPtr->unk2 = (s16)((f64)(f32)sins((D_80052A8C * 1000) & 0xFFFF) / 32768.0 * 10.0);
    unkPtr->unk8 = (s16)((f64)(f32)sins((D_80052A8C * 1500) & 0xFFFF) / 32768.0 * 1300.0);
    unkPtr->unkA = -inst->unk2C;
    func_80128428_1373D8(inst, unkPtr->unk0, unkPtr->unk2, unkPtr->unk4, &sp88, &sp84, &sp80);

    sp7C = func_80084E54_93E04(D_80052B34, inst);
    sp5E = -0x4000 - (unkPtr->unk6 - inst->unk6);

    sp3C = (f32)(D_80052B34->unk0 - sp88);
    sp38 = (f32)(D_80052B34->unk4 - sp80);

    sp4A = func_80003824_4424(sp3C, sp38);
    temp = func_80003824_4424(sp3C, sp38);

    if ((0x4000 - (temp - sp5E)) < (sp4A - sp5E - 0x4000)) {
        var_v1 = func_80003824_4424(sp3C, sp38) - sp5E - 0x4000;
    } else {
        var_v1 = 0x4000 - (func_80003824_4424(sp3C, sp38) - sp5E);
    }

    if (var_v1 < 0x2000) { sp58 = 1; }

    if ((sp7C < 0xA8C) && (sp58 != 0)) {
        if (func_800871CC_9617C(arg0, 0, 0x14) != 0) {
            inst->unk3D++;
            if (inst->unk3D == 3) {
                inst->unk1E = 0x46;
                inst->unk3D = 0;
            } else {
                inst->unk1E = 0xC;
            }
            inst->unk2C = 0x3000;
            sp6C = (f32)-((f64)(f32)sins((u16)sp5E) / 32768.0);
            func_800DE9B8_ED968((s16)((f32)sp88 + sp6C * 80.0f), (s16)(sp84 >> 16), (s16)((f32)sp80 + (f32)((f64)(f32)coss((u16)sp5E) / 32768.0) * 80.0f), 0xC8);
            sp50 = 0xFF;
            sp51 = 0xFF;
            sp52 = 0xFF;
            sp54 = inst->unk0;
            sp56 = inst->unk4;
            func_800B2354_C1304(&sp54, &sp50, 0xC8, 5);
        }
    } else {
        inst->unk1E = 0x1F;
        inst->unk3D = 0;
    }

    if (inst->unk20 & 0x80000000) {
        diff = inst->unk2C + 0x1000;
        if (diff >= 0x3001) {
            inst->unk2C = 0x3000;
        } else {
            inst->unk2C = diff;
        }
    }

    if (inst->unk1E == 0x1E) {
        func_800C56A4_D4654((s16)(sp84 >> 16), (s16)((s32)sp84 - 10), (s16)sp80, 0xB4, 0x1E, 0x32, 0x28);
        func_800D16BC_E066C((s16)(sp84 >> 16), (s16)(sp84 >> 16), (s16)sp80, (s16)(sp84 >> 16), (s32)(sp84 >> 16), (s32)sp80, 0x1E);
    }

    if (inst->unk2C != 0) { inst->unk2C -= 0x100; }
    if (inst->unk1E != 0) { inst->unk1E--; }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D76B0_31B800.s")
#endif

void func_802D7B4C_31BC9C(u8 arg0) {
	AlienInstance *inst;
	s16 countdown;

	inst = &alienInstances[arg0];
	if ((func_80084E54_93E04(D_80052B34, inst) < 0x1388) &&
		(func_80084FE8_93F98(arg0, 0x8000) != 0)) {
		if (func_800871CC_9617C(arg0, 0, 0x14) != 0) {
			inst->unk3D++;
			if (inst->unk3D == 3) {
				inst->unk1E = 0x46;
				inst->unk3D = 0;
			} else {
				inst->unk1E = 0xC;
			}
		}
	} else {
		func_800800DC_8F08C((s32)arg0);
	}
	countdown = inst->unk1E;
	if (countdown != 0) {
		inst->unk1E = (s16)(countdown - 1);
	}
}

#ifdef NON_MATCHING
// CURRENT(2403)
void func_802D7C1C_31BD6C(u8 arg0) {
    AlienInstance *inst = &alienInstances[arg0];

    if (!(inst->unk20 & 0x100000)) {
        u16 val;
        inst->unk2C = 0x2D;
        val = (s32)(*(s16 *)((u8 *)&D_8025668C + inst->specIndex * 0x68) * 5) & 0xFFFF;
        func_800D05A8_DF558(inst->unk0, (s16)(inst->unk2 + 100), inst->unk4, val, 0xFF, 0xFF, 0xFF);
        return;
    }

    {
        s16 entryIndex = D_8014DD50[inst->unkC].unkC;
        Unk8014DD50 *entry = &D_8014DD50[entryIndex];
        s16 temp_v0 = entry->unk2;
        if (temp_v0 >= -54) {
            entry->unk2 = (s16)((temp_v0 + (inst->unk2C * 2)) - 90);
        }

        if (inst->unk2C == 0x28 && (D_80031420_32020 & 3)) {
            s32 r = func_800038E0_44E0() % 80;
            func_800CA5EC_D959C(inst->unk0, (s16)(inst->unk2 + 70), inst->unk4,
                0, 1, 0, 0x46, 0xA, 0xC, 0x80, 0, 0xB4 - r, 0x32, 0xFF);
        }

        if (inst->unk2C == 1) {
            u16 val;
            val = (s32)(*(s16 *)((u8 *)&D_8025668C + inst->specIndex * 0x68) * 10) & 0xFFFF;
            func_800D05A8_DF558(inst->unk0, (s16)(inst->unk2 + 100), inst->unk4, val, 0xFF, 0xFF, 0xFF);
            func_80088E40_97DF0(arg0, entryIndex, entry->unk0, entry->unk2, entry->unk4, 0, 0x1E, 0);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D7C1C_31BD6C.s")
#endif

void func_802D7E7C_31BFCC(u8 arg0, s16 arg1) {
    s16 sp2C[2];
    AlienInstance *inst;

    inst = &alienInstances[arg0];
    if (inst->unk20 & ALIEN_FLAG_UNKE) {
        sp2C[0] = arg1;
        if ((u8)func_80081F18_90EC8(arg0, 1, 2, sp2C, (Unk8014DD50 **)D_802E4FB4_329104) == 2) {
            inst->unk20 &= ~ALIEN_FLAG_UNKE;
        }
    }
}

#ifdef NON_MATCHING
// CURRENT(25483)
void func_802D7F10_31C060(u8 arg0) {
    AlienInstance *inst = &alienInstances[arg0];
    AlienSpec *spec = &alienSpecs[inst->specIndex];
    Unk8014DD50 *entry = &D_8014DD50[D_8014DD50[inst->unkC].unkC];
    s32 sp84;
    s16 sp80;
    f32 sp7C;
    s32 sp68;
    f32 sp60;
    f32 sp64;
    s32 sp58;
    s32 a2;
    s32 temp_f6;
    s32 var_v0;

    sp68 = (spec->unk40 >> 5) * 75;
    sp80 = entry->unkD;
    func_800A53C0_B4370(arg0, 0x1F4, 0x1388);
    sp84 = func_80084E54_93E04(inst, D_80052B34);
    sp7C = (f32)inst->unk12 / (f32)spec->unk40;
    a2 = func_800B84D0_C7480(inst->unk0, inst->unk4) >> 8;
    if (a2 < (inst->unk2 - spec->unk58)) {
        inst->unk20 |= 0x40000000;
        entry->unkA += sp68 * 2;
    } else {
        f32 temp = (f32)entry->unkA;
        if ((s32)entry->unkA < 0) {
            temp += 4294967296.0f;
        }
        entry->unkA = (s16)(s32)(temp + sp7C * (f32)sp68);
        inst->unk20 &= ~0x40000000;
        inst->unk10 = 0;
    }
    temp_f6 = (s32)(((f32)(inst->unk12 - inst->unk2C) / (f32)spec->unk40) * D_802E7B38_32BC88 * 2.0f);
    if ((temp_f6 == 0) || (inst->unk12 >= (spec->unk40 - (spec->unk3E * 2)))) {
        if (inst->unkA > 0) {
            if ((inst->unkA - 0x200) < 0) {
                inst->unkA = 0;
            } else {
                inst->unkA -= 0x200;
            }
        }
        if (inst->unkA < 0) {
            if ((inst->unkA + 0x200) > 0) {
                inst->unkA = 0;
            } else {
                inst->unkA += 0x200;
            }
        }
    } else {
        inst->unkA -= temp_f6;
    }
    if (inst->unkA < -0x1F3F) {
        inst->unkA = -0x1F40;
    }
    if (inst->unkA > 0x1387) {
        inst->unkA = 0x1388;
    }
    inst->unk2C = inst->unk12;
    if ((inst->unk8 != 0) || (inst->unkA < -0x200) || (inst->unkA >= 0x201)) {
        if ((temp_f6 != 0) && (inst->unk2 == a2)) {
            s16 absVal;
            if (-inst->unkA < inst->unkA) {
                absVal = inst->unkA;
            } else {
                absVal = -inst->unkA;
            }
            if (!(D_80052A8C & 1)) {
                u16 angle = (inst->unk6 - 0x4000) & 0xFFFF;
                sp58 = absVal;
                if (temp_f6 > 0) {
                    sp64 = (f32)((f64)(f32)sins(angle) / 32768.0);
                    sp60 = (f32)-((f64)(f32)coss(angle) / 32768.0);
                } else {
                    sp64 = (f32)-((f64)(f32)coss(angle) / 32768.0);
                    sp60 = (f32)((f64)(f32)sins(angle) / 32768.0);
                }
                func_800C541C_D43CC(inst->unk0, inst->unk2, inst->unk4, (s8)(s32)(sp64 * 64.0f), 0x7F, (s32)(sp60 * 64.0f), (u32)(((f32)sp58 / 8000.0f) * 120.0f + 40.0f), 0x32, 6, 2, 0xFF, 0xFF, (func_800038E0_44E0() % 155) + 100);
            }
        }
    }
    if (inst->unkA < 0) {
        func_80137468_146418(arg0, 0x267);
    } else if (inst->unkA > 0) {
        func_80137468_146418(arg0, 0x268);
    } else {
        func_80137468_146418(arg0, 0x266);
    }
    if (!(inst->unk47 & 1)) {
        if (!(inst->unk20 & 0x5000)) {
            if (sp84 >= 0x4B1) {
                inst->unk20 |= 0x100;
                inst->unk20 &= ~0x840;
            } else if (sp84 >= 0x385) {
                if ((func_80084FE8_93F98(arg0, 0x800) != 0) && ((inst->unk20 & 0x8000) == 0)) {
                    inst->unk20 |= 0x1000;
                    inst->unk20 &= ~0x940;
                } else {
                    inst->unk20 |= 0x800;
                    inst->unk20 &= 0xFFFF7EBF;
                    if (inst->unk26 == 0) {
                        inst->unk26 = 100;
                    }
                }
            } else {
                inst->unk20 |= 0x140;
                inst->unk20 &= ~0x800;
            }
        }
    }
    var_v0 = inst->unk20;
    if (var_v0 & 0x1000) {
        if (func_80084FE8_93F98(arg0, 0x800) == 0) {
            inst->unk20 &= ~0x1000;
            inst->unk26 = 100;
        } else {
            inst->unk12 -= spec->unk3E * 2;
            if (inst->unk12 < 0) {
                inst->unk12 = 0;
            }
        }
        var_v0 = inst->unk20;
    } else if ((inst->unk26 == 1) || (var_v0 & 0x80000000)) {
        if ((var_v0 & 0x8000) == 0) {
            inst->unk20 |= 0x10;
            inst->unk20 |= 0x140;
            var_v0 = inst->unk20 & ~0x800;
            inst->unk3D = 0x50;
            inst->unk20 = var_v0;
        }
    }
    if (!(var_v0 & 0x4000)) {
        func_8008076C_8F71C(arg0);
        if (((sp84 < 0x1F5) && (func_80084FE8_93F98(arg0, 0x7FE) != 0)) || ((inst->unk47 & 0xE) && (inst->unk12 > 0))) {
            inst->unk20 |= 0xC000;
            inst->unk20 &= ~0x1040;
            inst->unk20 |= 0x10;
            inst->unk3D = 0x19;
            if (inst->unk12 > 0) {
                inst->unk12 = 0;
            }
        }
    } else {
        func_800808F0_8F8A0(arg0, &inst->unkE);
        inst->unk12 -= spec->unk3E;
        if (inst->unk12 < -spec->unk40) {
            inst->unk12 = -spec->unk40;
        }
        if ((inst->unk47 & 0xE) || (inst->unk3D == 0)) {
            inst->unk20 &= ~0x4000;
            inst->unk20 |= 0x8000;
        }
    }
    if ((inst->unk20 & 0x1000) || ((func_80084FE8_93F98(arg0, 0x800) != 0) && (sp84 < 0x7D0))) {
        s16 absVal;
        if (-inst->unkA < inst->unkA) {
            absVal = inst->unkA;
        } else {
            absVal = -inst->unkA;
        }
        if (absVal < 0x3E9) {
            if (func_800871CC_9617C(arg0, 0, 0x19) != 0) {
                inst->unk36 = 0;
                inst->unk20 |= 0x2000;
            } else if (inst->unk1E == 0) {
                inst->unk3D = 0x19;
                inst->unk20 |= 0xC000;
                inst->unk20 &= ~0x1040;
                inst->unk20 |= 0x10;
            }
        }
    } else {
        if (inst->unk26 != 0) {
            inst->unk26--;
        }
    }
    func_802D7E7C_31BFCC(arg0, sp80);
    if ((inst->hitPoints < (s16)(spec->unk3A / 4)) && ((D_80052A8C % 5) == 0)) {
        func_800DEA08_ED9B8(inst->unk0, inst->unk2, inst->unk4, 0x50, 8, 8, 0x1E, 0xFF, 0, 0, 0);
    }
    if (inst->unk3D != 0) {
        inst->unk3D--;
    } else {
        inst->unk20 &= ~0x10;
    }
    if (inst->unk1E != 0) {
        inst->unk1E--;
    }
    if (inst->unk3C >= 0x1F) {
        func_80088760_97710(inst);
    }
    if (inst->unk47 & 8) {
        inst->unk3C++;
        return;
    }
    inst->unk3C = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D7F10_31C060.s")
#endif

void func_802D897C_31CACC(u8 arg0) {
    AlienInstance *inst = &alienInstances[arg0];

    inst->unk20 &= ~(ALIEN_FLAG_UNK5 | ALIEN_FLAG_AWAY | ALIEN_FLAG_UNKC);
    inst->unk20 |= ALIEN_FLAG_TARGET_PT;
    inst->unk47 &= ~1;

    func_8008735C_9630C(arg0);
    func_80137468_146418(arg0, 0x266);
}

#ifdef NON_MATCHING
// CURRENT(8230)
void func_802D89F0_31CB40(u8 arg0) {
    AlienInstance *inst = &alienInstances[arg0];

    func_800DF038_EDFE8(inst->unk0, inst->unk2, inst->unk4, (s32)((f64)*(s16 *)((u8 *)&D_8025668C + inst->specIndex * 0x68) * 1.5) & 0xFFFF, 6, 0);
    inst->unk2C = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D89F0_31CB40.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D8B18_31CC68.s")

void func_802D9100_31D250(u8 arg0) {
	func_8008735C_9630C(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D9128_31D278.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D92A8_31D3F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D93D8_31D528.s")

#ifdef NON_MATCHING
void func_802D95F8_31D748(s32 arg0) {
	u8 saved_index;

	alienInstances[arg0 & 0xFF].unk20 &= ~0x10;
	saved_index = arg0 & 0xFF;
	func_80137468_146418(arg0 & 0xFF, 0x1FB);
	func_8008735C_9630C(saved_index);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D95F8_31D748.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D9658_31D7A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D997C_31DACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D9ECC_31E01C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D9F60_31E0B0.s")

void func_802DA6A4_31E7F4(u8 arg0) {
	func_80137468_146418(arg0, 0x1E);
	func_8008735C_9630C(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DA6D4_31E824.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DA9C0_31EB10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DAC0C_31ED5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DAD78_31EEC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DB1D4_31F324.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DB9FC_31FB4C.s")

#ifdef NON_MATCHING
void func_802DBD18_31FE68(u8 arg0) {
	AlienInstance *inst;
	s16 hitpoints;
	s32 rand;

	inst = &alienInstances[arg0];
	if (func_80084E54_93E04(D_80052B34, inst) < 0x1388) {
		if (func_80084FE8_93F98(arg0, 0x8000)) {
			if (func_800871CC_9617C(arg0, 0, 0)) {
				rand = func_800038E0_44E0();
				*(s16 *)&inst->unk1E = (s16)(rand % 0xF + 0xF);
			} else {
				hitpoints = *(s16 *)&inst->unk1E;
				goto countdown;
			}
		} else {
			func_800800DC_8F08C(arg0);
		}
	} else {
		func_800800DC_8F08C(arg0);
	}
	hitpoints = *(s16 *)&inst->unk1E;
countdown:
	if (hitpoints != 0) {
		*(s16 *)&inst->unk1E = hitpoints - 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DBD18_31FE68.s")
#endif

#ifdef NON_MATCHING
void func_802DBDD0_31FF20(u8 arg0) {
	void *sp24;
	s16 temp_v1;
	AlienInstance *inst;
	s32 t3;

	inst = &alienInstances[arg0];
	if (!(inst->unk20 & 0x100000)) {
		sp24 = inst;
		func_800DF848_EE7F8(inst->unk0, inst->unk2, inst->unk4, 0x96, 8);
		inst->unk2C = 0xA;
		func_80137468_146418(arg0, 0xF);
		return;
	}
	temp_v1 = inst->unk2C;
	if (temp_v1 >= 0) {
		t3 = 0;
	} else {
		t3 = temp_v1 & 1;
		if (t3 != 0) {
			t3 += -2;
		}
	}
	if (t3 == 0) {
		func_800DFA34_EE9E4(inst->unk0, (s16)((inst->unk2 - (s16)(temp_v1 * 0x28)) + 0x190), inst->unk4, 0x96, 0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DBDD0_31FF20.s")
#endif

#ifdef NON_MATCHING
void func_802DBEA4_31FFF4(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
	AlienInstance *inst;
	s32 result;
	s16 local_arg1, local_arg2;

	inst = &alienInstances[arg0 & 0xFF];

	if (!(inst->unk20 & 0x1000)) {
		return;
	}

	local_arg1 = arg1;
	local_arg2 = arg2;
	result = func_80081F18_90EC8(arg0, 2, 0xD, &local_arg1, &D_802E566C);
	result &= 0xFF;

	if (result == 4 || result == 7 || result == 0xA || result == 0xD) {
		inst->unk1E = 0;
		func_80087188_96138(arg0, 0, 0x20);
	} else if (result == 0xD) {
		inst->unk20 &= ~0x1001;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DBEA4_31FFF4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DBF88_3200D8.s")

void func_802DC2A4_3203F4(u8 arg0) {
	func_8008735C_9630C(arg0);
	func_80137468_146418(arg0, 0x26A);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DC2D4_320424.s")

s32 func_802DC874_3209C4(u8 arg0) {
	AlienInstance *inst;
	s16 val;

	inst = &alienInstances[arg0];
	val = inst->unk0;
	if (val < -0x4800) {
		return 0;
	}
	if (val >= -0x33FF) {
		return 0;
	}
	val = inst->unk4;
	if (val < -0xB00) {
		return 0;
	}
	if (val >= 0xB01) {
		return 0;
	}
	return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DC8F4_320A44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DD554_3216A4.s")

void func_802DD748_321898(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DD750_3218A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DDB08_321C58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DDC44_321D94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DDFFC_32214C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DE0F4_322244.s")

void func_802DE7BC_32290C(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DE7C4_322914.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DF188_3232D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DF290_3233E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DF940_323A90.s")

void func_802DFE68_323FB8() {
	AlienInstance *inst;
	s32 alien_index;

	func_80088000_96FB0(-1);
	func_800AE2C0_BD270();
	alien_index = func_8007956C_8851C(0x12);
	if (alien_index != 0xFF) {
		inst = &alienInstances[alien_index];
		inst->unk0 = -0x2AD8;
		inst->unk2 = 0;
		inst->unk4 = 0;
		inst->unk20 |= 0x8000100;
		inst->unk24 = 2;
		inst->unkE = 0;
		D_8014D17E = alien_index;
	}
	D_8014D17C = 0;
	func_80007410_8010(&func_802DF290_3233E0);
}

s32 func_802DFF04_324054(u8 arg0) {
	s8 chain;

	chain = D_8014DD50[alienInstances[arg0].unkC].unkC;
	chain = D_8014DD50[chain].unkD;
	chain = D_8014DD50[chain].unkD;
	chain = D_8014DD50[chain].unkD;
	chain = D_8014DD50[chain].unkD;
	chain = D_8014DD50[chain].unkD;
	return D_8014DD50[chain].unkD;
}

#ifdef NON_MATCHING
s8 func_802DFF84_3240D4(s32 arg0) {
	return D_8014DD50[D_8014DD50[func_802DFF04_324054(arg0 & 0xFF)].unkC].unkD;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DFF84_3240D4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DFFC8_324118.s")

s32 func_802E0018_324168(u8 arg0) {
	AlienInstance *inst;
	s16 val;

	inst = &alienInstances[arg0];
	val = inst->unk0;
	if (val < -0x2C00) {
		func_8007E734_8D6E4(inst, 0x4000);
		return 1;
	}
	if (val >= -0x1EFF) {
		func_8007E734_8D6E4(inst, -0x4000);
		return 1;
	}
	val = inst->unk4;
	if (val < -0xD00) {
		func_8007E734_8D6E4(inst, -0x8000);
		return 1;
	}
	if (val >= 0xE01) {
		func_8007E734_8D6E4(inst, 0);
		return 1;
	}
	return 0;
}

s32 func_802E00D0_324220(s32 arg0, s32 arg1) {
	if ((arg0 < -0x2C00) || (arg0 >= -0x1EFF) || (arg1 < -0xD00) || (arg1 >= 0xE01)) {
		return 0;
	}
	return 1;
}

void func_802E0104_324254(VehicleInstance *vehicle);
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E0104_324254.s")

#ifdef NON_MATCHING
void func_802E015C_3242AC(VehicleInstance *vehicle) {
	s16 u, v;
	s32 du, dv;
	AlienInstance *alien;
	u8 specIndex;

	specIndex = vehicle->unk1A;
	alien = &alienInstances[specIndex];

	u = (vehicle->unk1B << 8) + 0x80;
	v = (vehicle->unk1C << 8) + 0x80;

	alien->unk0 = u;
	alien->unk4 = v;
	alien->unk2 = (s16)(alien->unk2 + 0x8000);
	alien->unk20 = (s32)(alien->unk20 | 0x20000000);

	vehicle->unk4 = (s32)(vehicle->unk4 + 9);
	vehicle->unkC = &func_802E0104_324254;

	func_800AE454_BD404(vehicle);

	du = D_80052B34->unk0 - alien->unk0;
	dv = D_80052B34->unk4 - alien->unk4;

	alien->unkE = func_80003824_4424((f32)du, (f32)dv);

	alien->unk3A = 0xFF;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E015C_3242AC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E0234_324384.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E0588_3246D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E0B64_324CB4.s")

#ifdef NON_MATCHING
s32 func_802E1274_3253C4(s32 arg0) {
	AlienInstance *inst;
	u8 idx;
	u8 idx2;

	inst = &alienInstances[arg0 & 0xFF];
	idx = inst->unk25;
	inst->unk2C++;
	idx2 = alienInstances[idx].unk25;
	if (inst->unk2C < 0x51) {
		if (((u8 *)&alienInstances[idx2])[1] != (u8)0xFF) {
			return 0;
		}
		if (inst->unk2C < 0x29) {
			return 0;
		}
	}
	if (func_80084FE8_93F98(idx, 0x800)) {
		inst->unk2C = 0;
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1274_3253C4.s")
#endif

void func_802E1324_325474(u8 arg0) {
	AlienInstance *inst;
	s16 result;

	inst = &alienInstances[arg0];
	*(s16 *)&inst->unk1E = 0;
	result = func_80003824_4424(110.0f, 80.0f);
	func_800868A4_95854(arg0, 0, 0, (s16)(result + inst->unkA));
	*(s16 *)&inst->unk1E = 0;
	result = func_80003824_4424(110.0f, 80.0f);
	func_800868A4_95854(arg0, 1, 0, (s16)(result + inst->unkA));
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E13D4_325524.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E14F4_325644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1630_325780.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E16A8_3257F8.s")

#ifdef NON_MATCHING
s32 func_802E193C_325A8C(s32 arg0) {
	AlienInstance *inst;
	u8 idx;
	u8 idx2;

	inst = &alienInstances[arg0 & 0xFF];
	idx = inst->unk25;
	inst->unk2C++;
	idx2 = alienInstances[idx].unk25;
	if (inst->unk2C < 0x51) {
		if (((u8 *)&alienInstances[idx2])[1] != (u8)0xFF) {
			return 0;
		}
		if (inst->unk2C < 0x33) {
			return 0;
		}
	}
	if (func_80084FE8_93F98(idx, 0x800)) {
		inst->unk2C = 0;
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E193C_325A8C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E19EC_325B3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1AE4_325C34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1C34_325D84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1CC0_325E10.s")

#ifdef NON_MATCHING
s32 func_802E1EFC_32604C(u8 arg0, u8 arg1) {
	s8 temp_s8;
	s16 temp_s16;
	s32 result;

	temp_s8 = (s8)func_802DFFC8_324118(arg0);
	temp_s16 = D_8014DD50[temp_s8].unkC;

	result = func_80082084_91034(arg0, 3, 4, &temp_s8);

	if (result == 2) {
		func_802E1CC0_325E10(arg1);
		alienInstances[arg1].unk12 -= 0x280;
	}

	if ((s8)result == 4) {
		return 0;
	} else {
		return 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1EFC_32604C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1FE0_326130.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E205C_3261AC.s")

#ifdef NON_MATCHING
void func_802E21C4_326314(s32 arg0) {
	s16 sp2C;
	void *sp24;
	s32 temp_s0;
	s32 temp_v0;
	void *temp_v1;

	temp_s0 = arg0 & 0xFF;
	sp2C = D_8014DD50[func_802DFF04_324054(temp_s0 & 0xFF)].unkC;
	func_802E205C_3261AC(temp_s0 & 0xFF);
	temp_v0 = func_800870D8_96088(0x80, 0x20);
	temp_v1 = &D_8014DD50[sp2C];
	sp24 = temp_v1;
	if (func_80086D70_95D20(temp_s0 & 0xFF, 0, (s16)(temp_v0 - ((Unk8014DD50 *)temp_v1)->unk6)) != 0) {
		alienInstances[temp_s0].unk1E = 0;
		func_80086D70_95D20(temp_s0 & 0xFF, 1, (s16)(func_800870D8_96088(0x80, 0x20) - ((Unk8014DD50 *)sp24)->unk6));
		func_80137468_146418(temp_s0, 0x262);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E21C4_326314.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E22A4_3263F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E2390_3264E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E2B78_326CC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E33B0_327500.s")

void func_802E3550_3276A0(u8 arg0) {
	func_800A93A4_B8354(arg0, -0x3B, 0x117, 0xA9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3584_3276D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3744_327894.s")

void func_802E37D4_327924(u8 arg0) {
	func_800A93A4_B8354(arg0, -0x96, -0x25, 0xD4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3808_327958.s")

void func_802E38A4_3279F4(u8 arg0) {
	func_800A93A4_B8354(arg0, 0x91, -0x25, 0xBB);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E38D8_327A28.s")

void func_802E3A18_327B68(u8 arg0) {
	func_800A93A4_B8354(arg0, -0x96, -0x25, 0xD4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3A4C_327B9C.s")

void func_802E3E30_327F80(u8 arg0) {
	func_800A93A4_B8354(arg0, 0x91, -0x25, 0xBB);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3E64_327FB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E4214_328364.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E43FC_32854C.s")

#ifdef NON_MATCHING
void func_802E46B8_328808(u8 arg0, s32 arg1, s32 arg2) {
	unsigned char new_var3;
	u8 old_unk25;
	u8 new_var;
	u8 new_idx;
	AlienInstance *new_var2;
	AlienInstance *new_inst;

	old_unk25 = alienInstances[arg0].unk25;
	new_var3 = arg2;
	new_idx = func_8007956C_8851C(new_var3);
	new_inst = &alienInstances[new_idx];
	new_inst->unk25 = old_unk25;
	new_var = (*(new_var2 = &alienInstances[old_unk25])).unk25;
	*((((u8 *) (&alienInstances[new_var])) + arg1) - 1) = new_idx;
	D_80140AB0_14FA60[arg1] = new_inst;
	osSyncPrintf(D_802E7AE4, new_idx, arg2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E46B8_328808.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E4774_3288C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E4918_328A68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E4ACC_328C1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E4CB4_328E04.s")
