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

#ifdef NON_MATCHING
// CURRENT(8035)
void func_802D8B18_31CC68(u8 arg0) {
	s16 chain[5];
	s32 sp60;
	s32 sp5C;
	s32 sp58;
	s32 sp54;
	s32 sp50;
	AlienInstance *inst;
	s32 clamped;
	s8 cur;
	u8 result;
	Unk8014DD50 *entry;

	func_80137468_146418(arg0, 0x1F9);
	inst = &alienInstances[arg0];
	entry = D_8014DD50;
	cur = entry[inst->unkC].unkC;
	chain[0] = cur;
	cur = entry[cur].unkD;
	chain[1] = cur;
	cur = entry[cur].unkD;
	chain[2] = cur;
	cur = entry[cur].unkD;
	chain[3] = cur;
	cur = entry[cur].unkD;
	chain[4] = cur;

	if (inst->unk4B == 1) {
		result = (u8)func_80081F18_90EC8(arg0, 5, 2, chain, (Unk8014DD50 **)D_802E510C_32925C);
	} else {
		result = (u8)func_80081F18_90EC8(arg0, 5, 2, chain, (Unk8014DD50 **)D_802E5058_3291A8);
	}

	if (result == 2) {
		inst->unk36 = 0;
	}

	func_800877E8_96798(arg0, 0x258, 0x320);

	clamped = func_800B84D0_C7480(inst->unk0, inst->unk4) >> 8;
	if (clamped < D_80222A70) {
		clamped = D_80222A70;
	}

	if ((D_80052A8C % 150 == 0) || (inst->unk2C == 0)) {
		sp5C = clamped;
		inst->unk2C = (s16)(func_800038E0_44E0() % 300);
	}

	{
		s16 val;
		s16 limit;
		s16 var_v1;

		val = *(s16 *)((u8 *)&D_802566D8 + inst->specIndex * 0x68) + clamped;
		limit = D_80052B34->unk2;
		if (val < limit) {
			val = limit;
		}
		if (inst->unk2 < val) {
			inst->unk2 = val;
		}

		var_v1 = inst->unk2C + val;
		if (inst->unk2 < var_v1) {
			if (var_v1 < inst->unk2 + 5) {
				inst->unk2 = var_v1;
			} else {
				inst->unk2 = inst->unk2 + 5;
			}
			var_v1 = inst->unk2C + val;
		}

		if (var_v1 < inst->unk2) {
			if (inst->unk2 - 5 < var_v1) {
				inst->unk2 = var_v1;
			} else {
				inst->unk2 = inst->unk2 - 5;
			}
		}
	}

	if (inst->unk4B == 1) {
		s16 phi;

		phi = (inst->unk26 * 0x13D4) & 0xFFFF;
		inst->unk2 = (s16)(s32)((f64)inst->unk2 - ((f64)(f32)sins(phi) / 32768.0 * 8.0));
		inst->unk26++;
		if (inst->unk26 >= 7) {
			inst->unk26 = 0;
		}
	} else {
		s16 phi;

		phi = (inst->unk26 * 0xC9E) & 0xFFFF;
		inst->unk2 = (s16)(s32)((f64)inst->unk2 - ((f64)(f32)sins(phi) / 32768.0 * 8.0));
		inst->unk26++;
		if (inst->unk26 >= 7) {
			inst->unk26 = 0;
		}
	}

	if (inst->unk12 > 0) {
		inst->unkA += 0x1F4;
		if (inst->unkA >= 0xBB8) {
			inst->unkA = 0xBB8;
		}
		if (inst->unk36 == 0) {
			inst->unk4B = 1;
		}
	} else if (inst->unk12 < 0) {
		inst->unkA -= 0x1F4;
		if (inst->unkA <= -0xBB8) {
			inst->unkA = -0xBB8;
		}
		if (inst->unk36 == 0) {
			inst->unk4B = 1;
		}
	} else {
		if (inst->unkA > 0) {
			inst->unkA -= 0x1F4;
			if (inst->unkA <= 0) {
				inst->unkA = 0;
			}
		} else if (inst->unkA < 0) {
			inst->unkA += 0x1F4;
			if (inst->unkA >= 0) {
				inst->unkA = 0;
			}
		}
		if (inst->unk36 == 0) {
			inst->unk4B = 0;
		}
	}

	sp60 = func_80084E54_93E04((VehicleInstance *)inst, D_80052B34);
	func_80128504_1374B4(inst, 0, &sp58, &sp54, &sp50);

	if ((sp60 < 0x3E8) && (D_80052B34->unk2 < inst->unk2) && (func_80084FE8_93F98(arg0, 0x800) != 0) && (inst->unk4E != 0)) {
		if (D_80052B34->unk1A == 0) {
			if (func_800871CC_9617C(arg0, 0, 0) != 0) {
				func_80137468_146418(arg0, 0x25B);
				inst->unk1E = 0x28;
				inst->unk42 = -0x3000;
			}
		} else {
			func_80137468_146418(arg0, 0x1FA);
			func_800D16BC_E066C((s16)sp58, (s16)sp54, (s16)sp50, D_80052B34->unk0, D_80052B34->unk2 + 0x32, D_80052B34->unk4, 1);
			if (D_80052B34->unk1C >= 9) {
				D_80052B34->unk1C -= 8;
				D_8014ED46 = 8;
			} else {
				func_80123E90_132E40(D_80052B34, 8);
			}
			inst->hitPoints += 6;
			if (*(u16 *)((u8 *)&D_802566BA + inst->specIndex * 0x68) < inst->hitPoints) {
				inst->hitPoints = *(u16 *)((u8 *)&D_802566BA + inst->specIndex * 0x68);
			}
		}
	}

	if (inst->unk1E != 0) {
		inst->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D8B18_31CC68.s")
#endif

void func_802D9100_31D250(u8 arg0) {
	func_8008735C_9630C(arg0);
}

#ifdef NON_MATCHING
// CURRENT(8)
void func_802D9128_31D278(u8 arg0) {
	AlienInstance *inst;
	s16 parentId;

	inst = &alienInstances[arg0];
	parentId = inst->unk25;
	func_800DF038_EDFE8(inst->unk0, inst->unk2, inst->unk4, *(u16 *)((u8 *)&D_8025668C + inst->specIndex * 0x68), 0, 0);

	if (!(inst->unk20 & 0x100000)) {
		func_80137468_146418(arg0, 0xD);
	}

	if (!(inst->unk20 & 0x100000)) {
		if (parentId != 0xFF) {
			if (alienInstances[parentId].specIndex == 0x1B) {
				alienInstances[parentId].unk26--;
			}
		}
	}

	if (D_80031420_32020 & 3) {
		func_800CA5EC_D959C(inst->unk0, inst->unk2, inst->unk4, 0, 1, 0, 0x64, 0xC, 0xF, 0x80, 0, 0xB4 - (func_800038E0_44E0() % 0x50), 0x32, 0xFF);
	}

	inst->unk2C = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D9128_31D278.s")
#endif

void func_802D92A8_31D3F8(u8 arg0) {
	u8 specIndex;
	s32 mult;
	s16 speedLimit;

	specIndex = alienInstances[arg0].specIndex;
	mult = 1;
	if (!(alienInstances[arg0].unk20 & 0x600)) {
		mult = 4;
	}
	func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);
	if (alienInstances[arg0].unk4B == 0) {
		speedLimit = (s16)((f64)alienSpecs[specIndex].unk40 * 0.75);
	} else {
		speedLimit = alienSpecs[specIndex].unk40;
	}
	if (alienInstances[arg0].unk12 < speedLimit) {
		alienInstances[arg0].unk12 += alienSpecs[specIndex].unk3E * mult;
	} else {
		alienInstances[arg0].unk12 -= alienSpecs[specIndex].unk3E * mult;
	}
}

#ifdef NON_MATCHING
// CURRENT(2223)
void func_802D93D8_31D528(s32 arg0) {
	s32 temp;
	s32 v0;
	s32 v1;
	u8 specIndex;
	AlienInstance *inst;
	AlienSpec *spec;

	inst = &alienInstances[arg0 & 0xFF];
	specIndex = inst->specIndex;
	func_80137468_146418(arg0 & 0xFF, 0x1FB);
	func_802D92A8_31D3F8(arg0 & 0xFF);
	v0 = inst->unk0 - inst->unk14;
	v1 = inst->unk4 - inst->unk18;
	if (!(inst->unk20 & 0x10)) {
		if ((v0 * v0 + v1 * v1) < 0x57E40 || inst->unk3D == -1) {
			inst->unk3D = 0;
			inst->unk20 |= 0x10;
			inst->unk26 = 0x50;
		}
	}
	if (((v0 * v0 + v1 * v1) < 0x15F900) && func_80084FE8_93F98(arg0 & 0xFF, 0x800)) {
		if (((VehicleInstance *)D_80052B34)->unk1A == 0) {
			func_800871CC_9617C(arg0 & 0xFF, 0, 0);
		} else if (func_800868A4_95854(arg0 & 0xFF, 0, 0, 0x2000)) {
			inst->unk1E = 3;
		}
	}
	spec = &alienSpecs[specIndex];
	temp = func_8008E524_9D4D4(arg0 & 0xFF, spec->unk58, 0xF);
	if (spec->unk58 < temp) {
		func_8008EB20_5EFD0(arg0 & 0xFF, temp, 0x640, 0, 0, 0, 0);
	} else {
		func_8008EB20_5EFD0(arg0 & 0xFF, temp, 0x320, 0, 0, 0, 0);
	}
	if (inst->unk1E != 0) {
		inst->unk1E--;
	}
	if (inst->unk26 != 0 && ((VehicleInstance *)D_80052B34)->unk1A != 0) {
		inst->unk26--;
	} else {
		inst->unk20 &= ~0x10;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D93D8_31D528.s")
#endif

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

// CURRENT(2307)
#ifdef NON_MATCHING
void func_802D9658_31D7A8(u8 arg0) {
	AlienInstance *alien;
	s32 flags;

	alien = &alienInstances[arg0];
	flags = alien->unk20;
	if (flags & 0x600) {
		if (!(flags & 0x100000)) {
			alien->unk2C = 0x7FFF;
			alien->unk10 = 0;
			flags |= 0x40000000;
			alien->unk20 = flags;
			alien->unk38 = 0;
			alien->unk14 = arg0 & 1;
			if (flags & 0x600) {
				func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, (u16)((f64)alienSpecs[alien->specIndex].unkC * 0.75), 0);
			}
			func_80137468_146418(arg0, 0xF);
			return;
		}
		if (flags & 0x40000000) {
			if (D_80222A70 < alien->unk2) {
				if (alien->unk14 != 0) {
					if (alien->unk38 >= -9) {
						alien->unk38--;
					}
				} else {
					if (alien->unk38 < 0xA) {
						alien->unk38++;
					}
				}
				alien->unkE += alien->unk38 * 0xC8;
				alien->unk6 += alien->unk38 * 0xC8;
				alien->unk10 += 0x60;
				alien->unk12 += 0x10;
			}
			alien->unk8 = (s16)(alien->unk38 << 8);
			alien->unkA = (s16)((-alien->unk10) * 4);
			if (!(alien->unk2C & 3)) {
				func_800DEA08_ED9B8(alien->unk0, alien->unk2, alien->unk4, 0xFA, 2, 2, 0x1E, 0xC8, 0x82, 0x82, 0x82);
			}
			if ((D_80222A70 < alien->unk30) && (alien->unk2 < D_80222A70)) {
				alien->unk38 = 0;
				alien->unk12 = (s16)((s16)alien->unk12 >> 1);
				alien->unk10 = (s16)((s16)alien->unk10 >> 1);
			} else {
				func_80137468_146418(arg0, 0x66);
			}
		}
		func_8008AAFC_99AAC(arg0, alienSpecs[alien->specIndex].unkC, 3);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D9658_31D7A8.s")
#endif

// CURRENT(19000)
#ifdef NON_MATCHING
void func_802D997C_31DACC(s32 arg0, s32 arg1, s32 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7, f32 arg8) {
	AlienInstance *alien;
	Unk8014DD50 *temp_t0;
	s32 sp64;
	u8 sp63;
	u16 sp4E;
	u16 sp4C;
	s32 sp48;
	s32 sp44;
	s32 sp54;
	s32 sp50;
	f64 sp20;

	alien = &alienInstances[(u8)arg0];
	temp_t0 = &D_8014DD50[arg3];
	sp64 = alien->unk48;
	sp63 = alien->specIndex;
	sp4E = *(u16 *)&temp_t0->unkA;
	sp4C = *(u16 *)&temp_t0->unk8;
	sp48 = 0;
	sp44 = 0;

	func_80137468_146418((u8)arg0, 0x1E);

	sp20 = (f64)sp64;

	sp50 = coss(sp4C);
	sp54 = coss(sp4E);
	alien->unk10 += (s16)(sp20 * ((f64)(f32)sp54 / 32768.0) * ((f64)(f32)sp50 / 32768.0));

	sp50 = sins(sp4E);
	sp54 = coss(sp4C);
	sp54 = (s32)(sp20 * ((f64)(f32)sp50 / 32768.0) * ((f64)(f32)sp54 / 32768.0));

	sp50 = coss(sp4C);
	sp54 = sins(sp4C);
	sp54 = coss(sp4E);
	sp50 = (s32)(sp20 * ((f64)(f32)sp54 / 32768.0) * ((f64)(f32)sp50 / 32768.0));

	if (sp54 != 0) {
		func_801022F4_1112A4((VehicleInstance *)alien, alien->unk6, (s16)sp54);
	}
	if (sp50 != 0) {
		func_801022F4_1112A4((VehicleInstance *)alien, (s16)(alien->unk6 + 0x4000), (s16)sp50);
	}

	alien->unk48 = (s16)((f64)alien->unk48 * D_802E7B40_32BC90);
	alien->unk12 = (s16)((f32)alien->unk12 * (1.0f - arg8));

	sp50 = func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8;
	if (sp50 < D_80222A70) {
		sp50 = D_80222A70;
	}

	if (alien->unk10 + alien->unk2 < arg1 + sp50) {
		alien->unk48 += alienSpecs[sp63].unk3E;
	} else {
		alien->unk48 -= alienSpecs[sp63].unk3E;
	}

	switch ((u8)arg2) {
	case 0:
		sp44 = 1;
		sp48 = 1;
		break;
	case 1:
		if ((s16)D_8014DD50[arg4].unkA < arg5) {
			D_8014DD50[arg4].unkA += 0x190;
		}
		if ((s16)temp_t0->unkA < arg5) {
			temp_t0->unkA += 0x190;
		}
		sp48 = 1;
		break;
	case 2:
		if (arg6 < (s16)D_8014DD50[arg4].unkA) {
			D_8014DD50[arg4].unkA -= 0x190;
		}
		if (arg6 < (s16)temp_t0->unkA) {
			temp_t0->unkA -= 0x190;
		}
		sp48 = 1;
		break;
	case 3:
		if ((s16)D_8014DD50[arg4].unk8 < arg7) {
			D_8014DD50[arg4].unk8 += 0x190;
			temp_t0->unk8 += 0x190;
		}
		sp44 = 1;
		break;
	}

	if (sp44 != 0) {
		if ((s16)D_8014DD50[arg4].unkA < 0) {
			D_8014DD50[arg4].unkA += 0x190;
		} else if ((s16)D_8014DD50[arg4].unkA > 0) {
			D_8014DD50[arg4].unkA -= 0x190;
		}
		if ((s16)temp_t0->unkA < 0) {
			temp_t0->unkA += 0x190;
		} else if ((s16)temp_t0->unkA > 0) {
			temp_t0->unkA -= 0x190;
		}
	}

	if (sp48 != 0) {
		if ((s16)D_8014DD50[arg4].unk8 < 0) {
			D_8014DD50[arg4].unk8 += 0x190;
			temp_t0->unk8 += 0x190;
		} else if ((s16)D_8014DD50[arg4].unk8 > 0) {
			D_8014DD50[arg4].unk8 -= 0x190;
			temp_t0->unk8 -= 0x190;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D997C_31DACC.s")
#endif

void func_802D9ECC_31E01C(u8 arg0, s16 arg1) {
	s16 sp2C[2];
	AlienInstance *inst;

	inst = &alienInstances[arg0];
	if (inst->unk20 & 0x1000) {
		sp2C[0] = arg1;
		if ((u8)func_80081F18_90EC8(arg0, 1, 2, sp2C, &D_802E5140_329290) == 2) {
			inst->unk20 &= ~0x1000;
		}
	}
}

// CURRENT(11986)
#ifdef NON_MATCHING
void func_802D9F60_31E0B0(u8 arg0) {
	s32 pad;
	s16 sp8C;
	s16 sp88;
	s16 sp86;
	s16 sp84;
	s32 sp74;
	s32 sp70;
	s32 sp6C;
	s32 sp68;
	f32 sp64;
	f32 sp60;
	u8 sp5F;
	AlienInstance *inst;
	func_8008554C_944FC(arg0);
	inst = &alienInstances[arg0];
	sp8C = D_8014DD50[D_8014DD50[inst->unkC].unkC].unkD;
	sp88 = D_8014DD50[sp8C].unkD;
	sp86 = D_8014DD50[sp88].unkD;
	sp84 = D_8014DD50[sp86].unkD;
	D_802566D8[inst->specIndex * 0x34] = 0;
	func_800A99B8_B8968(arg0);
	func_80086230_951E0(arg0, sp8C, 0x2000);
	sp74 = sqrtf((f32)((inst->unk0 - D_80052B34->unk0) * (inst->unk0 - D_80052B34->unk0) + (inst->unk4 - D_80052B34->unk4) * (inst->unk4 - D_80052B34->unk4)));
	if (func_80084FE8_93F98(arg0, 0x1000)) {
		if (sp74 < 0xFA0) {
			if (inst->unk4E) {
				if (!(inst->unk20 & 0x2000)) {
					if (inst->unkA == 0) {
						if (func_80087188_96138(arg0, 0, 0)) {
							if (D_8014DD50[sp84].unkA == 0) {
								inst->unk36 = 0;
								inst->unk1E = 0x23;
								inst->unk20 |= 0x1000;
							}
						}
					}
				}
			}
		}
	}
	func_802D9ECC_31E01C(arg0, sp84);
	if (!(D_80052A8C & 3)) {
		if (inst->unk3C != 0xFB) {
			if (D_8014DD50[sp88].unkA < 0x1F41) {
				func_80128428_1373D8(inst, D_8014DD50[sp88].unk0 - 0x96, D_8014DD50[sp88].unk2, D_8014DD50[sp88].unk4, &sp70, &sp6C, &sp68);
				if ((func_800B84D0_C7480((s16)sp70, (s16)sp68) >> 8) < D_80222A70) {
					sp6C = D_80222A70;
				} else {
					sp6C = func_800B84D0_C7480((s16)sp70, (s16)sp68) >> 8;
				}
				func_800CD2E8_DC298((s16)sp70, (s16)sp6C, (s16)sp68, inst->unk3C);
			}
		}
		if (inst->unk3D != 0xFB) {
			if (D_8014DD50[sp86].unkA < 0x1F41) {
				func_80128428_1373D8(inst, D_8014DD50[sp86].unk0 + 0x96, D_8014DD50[sp86].unk2, D_8014DD50[sp86].unk4, &sp70, &sp6C, &sp68);
				if ((func_800B84D0_C7480((s16)sp70, (s16)sp68) >> 8) < D_80222A70) {
					sp6C = D_80222A70;
				} else {
					sp6C = func_800B84D0_C7480((s16)sp70, (s16)sp68) >> 8;
				}
				func_800CD2E8_DC298((s16)sp70, (s16)sp6C, (s16)sp68, inst->unk3D);
			}
		}
	}
	if (inst->unk20 & 0x2000) {
		if (func_80084FE8_93F98(arg0, 0x1000)) {
			if (inst->unk2 >= D_80052B34->unk2 + 0x64) {
				if (inst->unk2 <= D_80052B34->unk2 + 0x12C) {
					if (inst->unk4E) {
						if (!(inst->unk47 & 0xE)) {
							if (inst->unkA < 0x1388) {
								sp5F = 2;
								inst->unkA += 0x190;
								D_8014DD50[sp84].unkA -= 0x320;
							} else {
								sp5F = 1;
							}
							goto callFunc;
						}
					}
				}
			}
		}
		sp5F = 0;
		inst->unk20 &= ~0x2000;
		inst->unk2C = (func_800038E0_44E0() % 60) + 0x28;
		if (inst->unk47 & 8) {
			func_80137468_146418(arg0, 0x1F4);
			func_80102DDC_111D8C(D_80052B34, inst->unk6, 0, 0x42480000);
			func_80123E90_132E40(D_80052B34, 0x1388);
			sp64 = (f32)((f64)(f32)sins((inst->unk6 + 0x4000) & 0xFFFF) / 32768.0);
			sp60 = (f32)-((f64)(f32)coss((inst->unk6 + 0x4000) & 0xFFFF) / 32768.0);
			func_80128428_1373D8(inst, D_8014DD50[sp8C].unk0, D_8014DD50[sp8C].unk2, D_8014DD50[sp8C].unk4 + 0x32, &sp70, &sp6C, &sp68);
			func_800DE9B8_ED968((s16)sp70, (s16)sp6C, (s16)sp68, 0xFF);
			func_800C541C_D43CC((s16)sp70, (s16)sp6C, (s16)sp68, (s8)(s32)(sp64 * 127.0f), -0x50, (s32)(sp60 * 127.0f), 0xDC, 0xFF, 0x3C, 0x14, 0xFF, 0xFF, 0xC8);
			func_80137468_146418(arg0, 0x258);
		}
callFunc:
		func_802D997C_31DACC(arg0, 0xFA, sp5F, sp86, sp88, 0x36B0, -0x1388, 0x9C4, D_802E7B48_32BC98);
	} else {
		if (inst->unkA > 0) {
			inst->unkA -= 0x190;
			D_8014DD50[sp84].unkA += 0x320;
		}
		if (func_80084FE8_93F98(arg0, 0x2000)) {
			if (inst->unk4E == 0) {
				if ((0x2BC - inst->unk12) < sp74) {
					sp5F = 3;
				} else if (sp74 < (0x2BC - inst->unk12)) {
					sp5F = 2;
				} else if ((inst->unk12 + 0x384) < sp74) {
					sp5F = 1;
				} else {
					sp5F = 3;
				}
			} else if (sp74 < (0x2BC - inst->unk12)) {
				sp5F = 2;
			} else if ((inst->unk12 + 0x384) < sp74) {
				sp5F = 1;
			} else {
				sp5F = 3;
			}
		} else {
			sp5F = 0;
		}
		func_802D997C_31DACC(arg0, 0x12C, sp5F, sp86, sp88, 0x1F40, -0x1388, 0x9C4, D_802E7B4C_32BC9C);
	}
	inst->unk26 = sp5F;
	if (inst->unk1E != 0) {
		inst->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D9F60_31E0B0.s")
#endif

void func_802DA6A4_31E7F4(u8 arg0) {
	func_80137468_146418(arg0, 0x1E);
	func_8008735C_9630C(arg0);
}

// CURRENT(3568)
#ifdef NON_MATCHING
void func_802DA6D4_31E824(s32 arg0) {
	AlienInstance *inst;
	s32 pad[16];
	s16 sp8C;
	s8 temp_t0;
	u16 sp3E;
	u16 sp40;
	u16 sp42;

	inst = &alienInstances[arg0 & 0xFF];
	sp8C = D_8014DD50[D_8014DD50[inst->unkC].unkC].unkD;
	temp_t0 = D_8014DD50[sp8C].unkD;

	if (!(inst->unk20 & 0x100000)) {
		func_80088E40_97DF0(arg0 & 0xFF, sp8C, D_8014DD50[sp8C].unk0, D_8014DD50[sp8C].unk2, D_8014DD50[sp8C].unk4, 0, 0x19, 0);
		inst->unk2C = 0x3C;
		func_80137468_146418(arg0 & 0xFF, 0x10);
		return;
	}

	func_802D997C_31DACC(arg0 & 0xFF, 0x96, 0, D_8014DD50[temp_t0].unkD, (s32)temp_t0, 0x1F40, -0x1388, 0x9C4, D_802E7B50_32BCA0);

	if (!(inst->unk2C & 3)) {
		sp3E = func_800038E0_44E0();
		sp40 = func_800038E0_44E0();
		sp42 = func_800038E0_44E0();
		func_800DF038_EDFE8((s16)((sp3E % 400) + inst->unk0 - 0xC8),
						   (s16)((sp40 % 400) + inst->unk2 - 0xC8),
						   (s16)((sp42 % 400) + inst->unk4 - 0xC8),
						   (u16)(func_800038E0_44E0() % 50 + 0x1E), 0, 0);
	}

	if (inst->unk2C == 1) {
		if (alienSpecs[inst->specIndex].unk54 & 0x02000000) {
			if (inst->unk3C != 0xFB) {
				func_800CD390_DC340((u8)inst->unk3C);
			}
			if (inst->unk3D != 0xFB) {
				func_800CD390_DC340((u8)inst->unk3D);
			}
		}
		func_800DF038_EDFE8(inst->unk0, inst->unk2, inst->unk4, (u16)alienSpecs[inst->specIndex].unkC, 6, 0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DA6D4_31E824.s")
#endif

#ifdef NON_MATCHING
s32 func_802DA9C0_31EB10(u8 arg0, s16 arg1) {
	s16 s0;
	s16 buf[5];
	s32 temp_v0;
	s32 sp6C;
	s32 sp68;
	s32 sp64;

	if (alienInstances[arg0].unk20 & 0x4000) {
		buf[0] = arg1;
		buf[1] = D_8014DD50[arg1].unkC;
		buf[3] = alienInstances[arg0].unkC;
		buf[2] = D_8014DD50[D_8014DD50[arg1].unkC].unkC;
		buf[4] = D_8014DD50[alienInstances[arg0].unkC].unkC;
		temp_v0 = func_80081F18_90EC8(arg0, 5, 3, buf, &D_802E5234_329384);
		if (temp_v0 == 2) {
			alienInstances[arg0].unk1E = 0;
			for (s0 = 0; s0 < 6; s0++) {
				func_80137468_146418(arg0, 0x134);
				if (func_80084FE8_93F98(arg0, 0x800)) {
					if (func_800871CC_9617C(arg0, 1, s0 * 0x28)) {
						alienInstances[arg0].unk1E = 0xA;
					}
				} else if (func_80087188_96138(arg0, 1, s0 * 0x14)) {
					alienInstances[arg0].unk1E = 0xA;
				}
			}
			func_80128428_1373D8(&alienInstances[arg0], alienSpecs[alienInstances[arg0].specIndex].unk2C, alienSpecs[alienInstances[arg0].specIndex].unk2E, alienSpecs[alienInstances[arg0].specIndex].unk30, &sp6C, &sp68, &sp64);
			func_800DEA08_ED9B8((s16)sp6C, (s16)sp68, (s16)sp64, 0x64, 9, 0, 0x14, 0x96, 0xA6, 0x85, 0x2F);
			return 1;
		}
		if (temp_v0 == 3) {
			alienInstances[arg0].unk20 &= ~0x4000;
		}
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DA9C0_31EB10.s")
#endif

void func_802DAC0C_31ED5C(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s32 arg5) {
	s16 buf[2];
	u8 sp3B;
	s32 sp34;

	sp34 = 0;
	if (alienInstances[arg0].unk20 & 0x1000) {
		if (alienInstances[arg0].unk20 & 0x04000000) {
			buf[0] = arg3;
			buf[1] = arg4;
			sp3B = func_80081F18_90EC8(arg0, 2, 2, buf, &D_802E52D0_329420);
		} else {
			buf[0] = arg1;
			buf[1] = arg2;
			sp3B = func_80081F18_90EC8(arg0, 2, 2, buf, &D_802E52C8_329418);
		}
		if (sp3B == 0) {
			alienInstances[arg0].unk1E = 0;
			if (func_80084FE8_93F98(arg0, 0x400) && arg5 >= 0x12D) {
				func_800871CC_9617C(arg0, 0, func_800038E0_44E0() % 300);
			} else {
				sp34 = 1;
			}
		}
		if (sp3B == 2) {
			alienInstances[arg0].unk36 = 0;
		}
	}
	if (sp34) {
		alienInstances[arg0].unk2C = 0;
		alienInstances[arg0].unk20 &= ~0x1000;
	}
}

s32 func_802DA9C0_31EB10(u8 arg0, s16 arg1);
void func_802DAC0C_31ED5C(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s32 arg5);

// CURRENT(7385)
#ifdef NON_MATCHING
void func_802DAD78_31EEC8(u8 arg0) {
	s16 sp5C;
	s16 sp58;
	s16 sp56;
	s16 sp54;
	s16 sp52;
	s16 sp50;
	s32 sp48;
	s32 sp44;
	s32 sp40;
	s32 sp3C;
	Unk8014DD50 *sp34;
	Unk8014DD50 *sp30;

	sp5C = D_8014DD50[alienInstances[arg0].unkC].unkC;
	sp54 = D_8014DD50[sp5C].unkD;
	sp58 = D_8014DD50[sp54].unkD;
	sp52 = D_8014DD50[sp54].unkC;
	sp56 = D_8014DD50[sp58].unkC;
	sp50 = D_8014DD50[sp58].unkD;
	func_800877E8_96798(arg0, 0x320, 0x384);
	if (!(alienInstances[arg0].unk20 & 0x3000)) {
		func_80090A6C_9FA1C(arg0, sp54, 0x7D0);
		func_80090A6C_9FA1C(arg0, sp58, 0x7D0);
	}
	if (!(alienInstances[arg0].unk20 & 0x4000)) {
		func_80090A6C_9FA1C(arg0, sp50, 0xFA0);
	}
	if (alienInstances[arg0].unk12 > 0) {
		func_80090A6C_9FA1C(arg0, sp5C, 0x7D0);
	} else {
		func_80086230_951E0(arg0, sp5C, 0x2000);
	}
	sp48 = func_80084E54_93E04(D_80052B34, &alienInstances[arg0]);
	if (sp48 >= 0x44C && !(alienInstances[arg0].unk20 & 0x7000) && alienInstances[arg0].unk1E == 0 && func_80084FE8_93F98(arg0, 0x400)) {
		alienInstances[arg0].unk36 = 0;
		alienInstances[arg0].unk20 |= 0x4000;
	} else if (!(alienInstances[arg0].unk20 & 0x7000) && func_80084FE8_93F98(arg0, 0x400) && sp48 < 0x44C) {
		alienInstances[arg0].unk2C = 0;
		alienInstances[arg0].unk36 = 0;
		alienInstances[arg0].unk20 |= 0x2000;
	} else {
		if (alienInstances[arg0].unk2C == 0) {
			if (alienInstances[arg0].unk20 & 0x1000) {
				alienInstances[arg0].unk20 &= ~0x1000;
			}
			if (alienInstances[arg0].unk20 & 0x2000) {
				alienInstances[arg0].unk20 &= ~0x2000;
				alienInstances[arg0].unk20 |= 0x1000;
				alienInstances[arg0].unk2C = 0x3C;
				D_8014DD50[sp56].unk4 = 0x29;
				alienInstances[arg0].unk20 &= ~0x04000000;
				D_8014DD50[sp52].unk4 = 0x29;
			}
		}
	}
	if ((alienInstances[arg0].unk20 & 0x2000) && alienInstances[arg0].unk2C < 0x28) {
		sp34 = &D_8014DD50[sp56];
		sp30 = &D_8014DD50[sp52];
		sp34->unk4 = (func_800038E0_44E0() * 10 % 20) + 0x29;
		sp30->unk4 = (func_800038E0_44E0() * 10 % 20) + 0x29;
		alienInstances[arg0].unk12 = 0;
		func_80137468_146418(arg0, 0x261);
		if (alienInstances[arg0].unk2C >= 6) {
			func_80128428_1373D8(&alienInstances[arg0], alienSpecs[alienInstances[arg0].specIndex].unk20, alienSpecs[alienInstances[arg0].specIndex].unk22, alienSpecs[alienInstances[arg0].specIndex].unk24, &sp44, &sp40, &sp3C);
			func_800C56A4_D4654((s16)(sp44 >> 16), (s16)(sp40 >> 16), (s16)(sp3C >> 16), 0xC8, 3, 0xF, 0xA);
			func_80128428_1373D8(&alienInstances[arg0], -alienSpecs[alienInstances[arg0].specIndex].unk20, alienSpecs[alienInstances[arg0].specIndex].unk22, alienSpecs[alienInstances[arg0].specIndex].unk24, &sp44, &sp40, &sp3C);
			func_800C56A4_D4654((s16)(sp44 >> 16), (s16)(sp40 >> 16), (s16)(sp3C >> 16), 0xC8, 3, 0xF, 0xA);
		}
	}
	func_802DAC0C_31ED5C(arg0, sp58, sp56, sp54, sp52, sp48);
	func_802DA9C0_31EB10(arg0, sp50);
	if (alienInstances[arg0].unk2C != 0) {
		alienInstances[arg0].unk2C--;
	}
	if (alienInstances[arg0].unk1E != 0) {
		alienInstances[arg0].unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DAD78_31EEC8.s")
#endif

#ifdef NON_MATCHING
void func_802DB1D4_31F324(s32 arg0) {
	s32 sp84;
	s32 sp80;
	s32 sp7C;
	f32 sp78;
	f32 sp74;
	u16 sp6A;
	u16 sp68;
	u16 sp66;
	s16 spAC;
	s16 spA0;
	s16 sp9C;
	s16 sp88;
	s16 sp8A;
	s16 sp8C;
	s16 sp8E;
	s16 sp90;
	s16 sp92;
	u8 spB3;
	s32 sp4C;
	AlienInstance *inst;
	s8 chain0;
	s8 chain1_d;
	s8 chain2_d;
	s8 chain3_d;
	s8 chain4_c;
	void *sp58;
	void *sp54;
	void *sp50;

	inst = &alienInstances[arg0 & 0xFF];
	sp92 = inst->unk25;
	if (!(inst->unk20 & 0x600)) return;
	if (!(inst->unk20 & 0x100000)) {
		inst->unk36 = 0;
		inst->unk4B = 0;
		inst->unk2C = 0x7D00;
		if (inst->unk25 != 0xFF) {
			if (alienInstances[inst->unk25].specIndex == 0x1B) {
				alienInstances[inst->unk25].unk26--;
			}
		}
		func_80137468_146418(arg0, 0x10);
		return;
	}
	chain0 = D_8014DD50[inst->unkC].unkC;
	sp88 = (s16)chain0;
	sp58 = &D_8014DD50[chain0];
	chain1_d = ((Unk8014DD50 *)sp58)->unkD;
	sp8A = (s16)((Unk8014DD50 *)sp58)->unkC;
	sp54 = &D_8014DD50[chain1_d];
	chain2_d = ((Unk8014DD50 *)sp54)->unkD;
	spA0 = (s16)((Unk8014DD50 *)sp54)->unkC;
	sp50 = &D_8014DD50[chain2_d];
	chain3_d = ((Unk8014DD50 *)sp50)->unkD;
	sp9C = (s16)((Unk8014DD50 *)sp50)->unkC;
	sp8C = (s16)chain3_d;
	chain4_c = D_8014DD50[chain3_d].unkC;
	sp8E = (s16)chain4_c;
	sp90 = (s16)D_8014DD50[chain4_c].unkC;
	if (inst->unk2C >= 0x3D) {
		spAC = (s16)chain0;
		func_8008741C_963CC(arg0, -0xC8);
		if (!(inst->unk2C & 3)) {
			sp66 = func_800038E0_44E0();
			sp68 = func_800038E0_44E0();
			sp6A = func_800038E0_44E0();
			func_800DF038_EDFE8((s16)((((s32)sp66 % 200) + inst->unk0) - 0x64), (s16)((((s32)sp68 % 200) + inst->unk2) - 0x64), (s16)((((s32)sp6A % 400) + inst->unk4) - 0xC8), ((func_800038E0_44E0() % 40) + 0x1E) & 0xFFFF, 0, 0);
		}
		switch (func_80081F18_90EC8(arg0, 5, 6, &sp88, &D_802E54B8_329608)) {
		case 2:
			sp4C = inst->unk6 & 0xFFFF;
			sp78 = (f32)(((f64)(f32)sins(sp4C) / 32768.0) * 15.0);
			func_80088E40_97DF0(arg0, sp9C, (s16)(D_8014DD50[sp9C].unk0 + ((Unk8014DD50 *)sp50)->unk0), (s16)(D_8014DD50[sp9C].unk2 + ((Unk8014DD50 *)sp50)->unk2), D_8014DD50[sp9C].unk4 + ((Unk8014DD50 *)sp50)->unk4, (s8)(s32)sp78, 0xF, (s8)(s32)((f32)(((f64)(f32)coss(sp4C) / 32768.0) * -15.0)));
			return;
		case 3:
			sp4C = (inst->unk6 + 0x8000) & 0xFFFF;
			sp78 = (f32)(((f64)(f32)sins(sp4C) / 32768.0) * 15.0);
			func_80088E40_97DF0(arg0, spA0, (s16)(D_8014DD50[spA0].unk0 + ((Unk8014DD50 *)sp54)->unk0), (s16)(D_8014DD50[spA0].unk2 + ((Unk8014DD50 *)sp54)->unk2), D_8014DD50[spA0].unk4 + ((Unk8014DD50 *)sp54)->unk4, (s8)(s32)sp78, 0xF, (s8)(s32)((f32)(((f64)(f32)coss(sp4C) / 32768.0) * -15.0)));
			return;
		case 5:
			alienSpecs[inst->specIndex].unk24 = 0x96;
			func_800865F4_955A4(arg0, 1, sp84, sp80, sp7C);
			alienSpecs[inst->specIndex].unk30 = 0xD2;
			sp4C = (inst->unk6 + 0x4000) & 0xFFFF;
			sp78 = (f32)(((f64)(f32)sins(sp4C) / 32768.0) * 5.0);
			func_80088E40_97DF0(arg0, spAC, ((Unk8014DD50 *)sp58)->unk0, ((Unk8014DD50 *)sp58)->unk2, ((Unk8014DD50 *)sp58)->unk4, (s8)(s32)sp78, 5, (s8)(s32)((f32)(((f64)(f32)coss(sp4C) / 32768.0) * -5.0)));
			return;
		case 6:
			inst->unk2C = 0x3C;
			return;
		}
	} else {
		inst->unk12 = 0;
		inst->unkA = (s16)(inst->unkA + 0x4B);
		if ((inst->unk2C >= 0xB) && ((inst->unk2C % 6) == 0) && (D_80031420_32020 & 3)) {
			func_80128428_1373D8(inst, ((Unk8014DD50 *)sp58)->unk0, (s16)(((Unk8014DD50 *)sp58)->unk2 - 0x8000), ((Unk8014DD50 *)sp58)->unk4, &sp84, &sp80, &sp7C);
			sp78 = (f32)((f64)(f32)sins((inst->unk6 + 0x4000) & 0xFFFF) / 32768.0);
			sp74 = (f32)(-((f64)(f32)coss((inst->unk6 + 0x4000) & 0xFFFF) / 32768.0));
			func_800CA5EC_D959C((s16)sp84, (s16)sp80, (s16)sp7C, (s8)(s32)(sp78 * 128.0f), 0, (s8)(s32)(sp74 * 128.0f), 0x28, 0xA, 0x14, 0x32, 0xB4 - (func_800038E0_44E0() % 80), 0, 0x32, 0xFF);
		}
		if (inst->unk2C == 1) {
			func_800DF038_EDFE8(inst->unk0, inst->unk2, inst->unk4, alienSpecs[inst->specIndex].unkC, 6, 0);
			if ((sp92 != 0xFF) && (alienInstances[sp92].specIndex == 0x1B)) {
				func_800797A4_88754(arg0, ((func_800038E0_44E0() % 4) + 0x14) & 0xFF);
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DB1D4_31F324.s")
#endif

// CURRENT(7490)
#ifdef NON_MATCHING
void func_802DB9FC_31FB4C(u8 arg0) {
	s32 sp48[3];
	s16 sp58;
	s16 sp56;
	s16 sp54;
	s32 sp44;
	s32 sp70;
	s16 sp5E;
	s16 sp3E;
	s16 sp8E;
	u8 sp8D;
	AlienInstance *inst;
	Unk8014DD50 *unkPtr;
	s16 var_v1;
	s32 dx;
	s32 dz;

	inst = &alienInstances[arg0];
	sp8E = D_8014DD50[inst->unkC].unkC;
	sp44 = 0;
	sp8D = inst->specIndex;
	func_80085E2C_94DDC(arg0, sp8E, 0x4000);
	unkPtr = &D_8014DD50[sp8E];
	inst->unk3A = func_80085C50_94C00(inst->unk0, (s16)(unkPtr->unk2 + inst->unk2), inst->unk4, D_80052B34->unk0, D_80052B34->unk2 + 0x32, D_80052B34->unk4);
	func_80085A9C_94A4C(inst->unk3A, inst->unk3A, 0x1000, -0x2000, 0x100);
	unkPtr->unkA = inst->unk3A - inst->unk2C;
	sp70 = func_80084E54_93E04(D_80052B34, inst);
	sp5E = -0x4000 - ((s16)((u16)unkPtr->unk6 - inst->unk6));
	dx = D_80052B34->unk0 - inst->unk0;
	dz = D_80052B34->unk4 - inst->unk4;
	sp3E = func_80003824_4424((f32)dx, (f32)dz);
	if ((s16)(0x4000 - (s16)(func_80003824_4424((f32)dx, (f32)dz) - sp5E)) < (s16)((sp3E - sp5E) - 0x4000)) {
		var_v1 = (s16)(func_80003824_4424((f32)dx, (f32)dz) - sp5E) - 0x4000;
	} else {
		var_v1 = 0x4000 - (s16)(func_80003824_4424((f32)dx, (f32)dz) - sp5E);
	}
	if (var_v1 < 0x2000) {
		sp44 = 1;
	}
	func_8008554C_944FC(arg0);
	if ((sp70 >= 0x12D) && (sp44 != 0) && (inst->unk4E != 0)) {
		sp54 = -0x50;
		sp56 = 0x1E;
		sp58 = 0xCC;
		func_800A931C_B82CC((s8)sp8E, &sp54, sp48);
		alienSpecs[inst->specIndex].unk20 = (s16)sp48[0];
		alienSpecs[inst->specIndex].unk22 = (s16)sp48[1];
		alienSpecs[inst->specIndex].unk24 = (s16)sp48[2];
		if (func_800871CC_9617C(arg0, 0, 0) != 0) {
			inst->unk1E = (func_800038E0_44E0() % 15) + 0xF;
			inst->unk2C = 0x2000;
		}
	} else {
		inst->unk1E = 0x14;
	}
	if ((s32)inst->unk20 < 0) {
		s16 inc;
		inc = inst->unk2C + 0x1000;
		if (inc > 0x2000) {
			inst->unk2C = 0x2000;
		} else {
			inst->unk2C = inc;
		}
	}
	if (inst->unk2C != 0) {
		inst->unk2C -= 0x400;
	}
	if (inst->unk1E != 0) {
		inst->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DB9FC_31FB4C.s")
#endif

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

#ifdef NON_MATCHING
void func_802DBF88_3200D8(u8 arg0) {
	s16 sp44;
	s16 sp42;
	s32 sp3C;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s32 sp24;
	AlienInstance *inst;

	inst = &alienInstances[arg0];
	sp44 = D_8014DD50[D_8014DD50[inst->unkC].unkC].unkD;
	sp42 = D_8014DD50[sp44].unkC;
	inst->unk6 = (s16)(func_80003824_4424((f32)(inst->unk0 - D_80052B34->unk0),
										  (f32)(inst->unk4 - D_80052B34->unk4)) + 0x8000);
	if (inst->unk47 & 1) {
		func_8008064C_8F5FC(arg0);
	} else {
		func_8008076C_8F71C(arg0);
	}
	func_80137468_146418(arg0, 0x26A);
	sp24 = func_800B84D0_C7480(inst->unk0, inst->unk4) >> 8;
	if (sp24 < D_80222A70) {
		sp24 = D_80222A70;
	}
	inst->unk2 = (s16)(s32)((f64)(sp24 + *(s16 *)((u8 *)&D_802566D8 + inst->specIndex * 0x68)) + ((f64)(f32)sins((D_80052A8C * 1500) & 0xFFFF) / 32768.0) * 20.0);
	sp3C = func_80084E54_93E04(D_80052B34, inst);
	if (sp3C < 2000) {
		func_8008554C_944FC(arg0);
	} else {
		inst->unk4E = 1;
	}
	if (sp3C >= 901 && inst->unk4E != 0) {
		inst->unk20 |= 0x100;
		inst->unk20 &= ~0x840;
		if (func_80084FE8_93F98(arg0, 0x800) != 0) {
			if (inst->unk1E == 0 && inst->unk4E != 0 && sp3C < 2000) {
				func_800871CC_9617C(arg0, 1, 10);
				inst->unk1E = 8;
			}
		}
	} else if (sp3C >= 551 || inst->unk4E == 0) {
		inst->unk20 |= 0x800;
		inst->unk20 &= ~0x140;
		if (!(inst->unk20 & 0x1000) && sp3C < 1000 && inst->unk4E != 0) {
			inst->unk20 |= 0x1000;
			inst->unk36 = 0;
		}
	} else {
		inst->unk20 |= 0x140;
		inst->unk20 &= ~0x800;
		if (!(inst->unk20 & 0x1000)) {
			inst->unk20 |= 0x1000;
			inst->unk36 = 0;
		}
	}
	func_802DBEA4_31FFF4(arg0, sp44, sp42);
	if (inst->unk1E != 0) {
		inst->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DBF88_3200D8.s")
#endif

void func_802DC2A4_3203F4(u8 arg0) {
	func_8008735C_9630C(arg0);
	func_80137468_146418(arg0, 0x26A);
}

#ifdef NON_MATCHING
void func_802DC2D4_320424(u8 arg0) {
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s16 sp72;
	s32 specIndex;
	s16 parentId;
	s16 sp44;
	s32 sp30;
	f32 sp50;
	s32 val;
	s32 sp38_val;

	parentId = alienInstances[arg0].unk25;
	if (!(alienInstances[arg0].unk20 & 0x600)) {
		return;
	}
	specIndex = alienInstances[arg0].specIndex;
	sp38_val = D_8014DD50[alienInstances[arg0].unkC].unkC;
	sp38_val = D_8014DD50[sp38_val].unkD;
	sp72 = D_8014DD50[sp38_val].unkC;
	sp44 = (s16)(func_800B84D0_C7480(alienInstances[arg0].unk0, alienInstances[arg0].unk4) >> 8);
	if (sp44 > D_80222A70) {} else { sp44 = (s16)D_80222A70; }
	alienInstances[arg0].unk2 = (s16)(s32)((f64)(sp44 + alienSpecs[specIndex].unk58) + ((f64)(f32)sins((D_80052A8C * 1500) & 0xFFFF) / 32768.0) * 20.0);
	if (!(alienInstances[arg0].unk20 & 0x100000)) {
		alienInstances[arg0].unk2C = 100;
		func_80087C50_96C00(arg0);
		func_800DF038_EDFE8(alienInstances[arg0].unk0, alienInstances[arg0].unk2,
			alienInstances[arg0].unk4, alienSpecs[specIndex].unkC, 6, NULL);
		if (parentId != 0xFF) {
			if (alienInstances[parentId].specIndex == 0x1B) {
				alienInstances[parentId].unk26--;
			}
		}
		func_80137468_146418(arg0, 0x10);
		return;
	}
	func_80087C74_96C24(arg0);
	func_80089200_981B0(arg0, 4, 100);
	if (alienInstances[arg0].unk47 & 1) {
		func_8008064C_8F5FC(arg0);
	} else {
		func_8008076C_8F71C(arg0);
	}
	alienInstances[arg0].unk6 = alienInstances[arg0].unk6 - (s16)(alienInstances[arg0].unk2C * 150) + 0x3A98;
	if (alienInstances[arg0].unk2C == 50) {
		sp30 = alienInstances[arg0].unk6 & 0xFFFF;
		sp50 = (f32)(((f64)(f32)sins(sp30) / 32768.0) * 15.0);
		func_80088E40_97DF0(arg0, sp72,
			(s16)(D_8014DD50[sp72].unk0 + D_8014DD50[sp38_val].unk0),
			(s16)(D_8014DD50[sp72].unk2 + D_8014DD50[sp38_val].unk2),
			D_8014DD50[sp72].unk4 + D_8014DD50[sp38_val].unk4,
			(s8)(s32)sp50, 0xF,
			(s8)(s32)((f32)(((f64)(f32)coss(sp30) / 32768.0) * -15.0)));
		alienInstances[arg0].unk38 = func_800C3BD8_D2B88(alienInstances[arg0].unk0,
			(s16)(alienInstances[arg0].unk2 + 0x46), alienInstances[arg0].unk4,
			alienSpecs[specIndex].unkC, alienInstances[arg0].unk2C, 0xF0, 0x78, 0);
	}
	if (alienInstances[arg0].unk2C < 50) {
		if (alienInstances[arg0].unk38 != -3) {
			func_800C3D88_D2D38(alienInstances[arg0].unk0,
				(s16)((alienSpecs[specIndex].unk38 / 2) + alienInstances[arg0].unk2),
				alienInstances[arg0].unk4, alienInstances[arg0].unk38);
		}
		if ((func_800038E0_44E0() % 10) == 0) {
			func_800DF038_EDFE8(alienInstances[arg0].unk0, alienInstances[arg0].unk2,
				alienInstances[arg0].unk4, (u16)(alienSpecs[specIndex].unkC / 2), 6, NULL);
		}
	}
	if (alienInstances[arg0].unk2C == 1) {
		func_800DF038_EDFE8(alienInstances[arg0].unk0, alienInstances[arg0].unk2,
			alienInstances[arg0].unk4,
			(u16)((f64)(s16)alienSpecs[specIndex].unkC * 1.5), 6, NULL);
		if (parentId != 0xFF && alienInstances[parentId].specIndex == 0x1B) {
			func_800797A4_88754(arg0, (func_800038E0_44E0() % 4) + 0x14);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DC2D4_320424.s")
#endif

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

#ifdef NON_MATCHING
void func_802DC8F4_320A44(u8 arg0) {
	f64 sp48;
	s32 pad50;
	s32 pad54;
	AlienSpec *sp58;
	s32 pad5C;
	void *sp64;
	s32 sp60;
	s32 temp_f10;
	s32 sp74;
	s16 sp84;
	s16 sp86;
	s16 sp88;
	s32 spA8;
	s32 padAC;
	s32 padB0;
	s32 spCC;
	s32 spC8;
	s32 spC4;
	s32 spC0;
	s32 spBC;
	s32 spB8;
	s32 spB4;
	s32 padD0;
	s16 spDA;
	s16 spDC;
	u8 spDF;
	s32 padE4;
	AlienInstance *temp_s0;

	temp_s0 = &alienInstances[arg0];
	spDC = D_8014DD50[temp_s0->unkC].unkC;
	sp64 = &D_8014DD50[spDC];
	sp60 = arg0;
	spDF = temp_s0->specIndex;
	spDA = ((Unk8014DD50 *)sp64)->unkD;
	func_80137468_146418(arg0, 0x26A);
	spCC = func_80084E54_93E04(D_80052B34, temp_s0);
	func_800B84D0_C7480(temp_s0->unk0, temp_s0->unk4);
	sp58 = &alienSpecs[spDF];
	sp74 = func_802DC874_3209C4(arg0);
	temp_f10 = (s32)((f32)(temp_s0->unk12 - temp_s0->unk2C) / (f32)sp58->unk40 * D_802E7B54_32BCA4 * 2.0f);
	if (temp_f10 != 0 && temp_s0->unk12 < sp58->unk40 - sp58->unk3E * 2) {
		temp_s0->unkA = (s16)(s32)((f64)temp_s0->unkA + (f64)(f32)coss((temp_s0->unkE - temp_s0->unk6) & 0xFFFF) / 32768.0 * (f64)temp_f10);
		sp48 = (f64)temp_f10;
		temp_s0->unk3A = 0;
		temp_s0->unk48 = 0;
		temp_s0->unk8 = (s16)(s32)((f64)temp_s0->unk8 + sp48 / 32768.0 * (f64)(f32)sins((temp_s0->unkE - temp_s0->unk6) & 0xFFFF));
	} else {
		if (temp_s0->unkA > 0) {
			temp_s0->unkA -= 0x100;
			if (temp_s0->unkA < 0) { temp_s0->unkA = 0; }
		}
		if (temp_s0->unkA < 0) {
			temp_s0->unkA += 0x100;
			if (temp_s0->unkA > 0) { temp_s0->unkA = 0; }
		}
		if (temp_s0->unk8 > 0) {
			temp_s0->unk8 -= 0x100;
			if (temp_s0->unk8 < 0) { temp_s0->unk8 = 0; }
		}
		if (temp_s0->unk8 < 0) {
			temp_s0->unk8 += 0x100;
			if (temp_s0->unk8 > 0) { temp_s0->unk8 = 0; }
		}
		if (temp_s0->unkA == 0 && temp_s0->unk8 == 0) { temp_s0->unk3A = 1; }
	}
	if (temp_s0->unkA < -0x1963) { temp_s0->unkA = -0x1964; }
	if (temp_s0->unkA > 0x1963) { temp_s0->unkA = 0x1964; }
	if (temp_s0->unk8 < -0x1963) { temp_s0->unk8 = -0x1964; }
	if (temp_s0->unk8 > 0x1963) { temp_s0->unk8 = 0x1964; }
	if (temp_s0->unk3A != 0 && !(temp_s0->unk20 & 0x1000)) {
		if (temp_s0->hitPoints < (s16)(sp58->unk3A / 4)) {
			temp_s0->unk8 = (s16)(s32)((f64)(f32)sins((temp_s0->unk48 * 0x32C8) & 0xFFFF) / 32768.0 * D_802E7B58_32BCA8);
		} else {
			temp_s0->unk8 = (s16)(s32)((f64)(f32)sins((temp_s0->unk48 * 1000) & 0xFFFF) / 32768.0 * D_802E7B60_32BCB0);
		}
		temp_s0->unk48++;
	}
	temp_s0->unk2C = temp_s0->unk12;
	if (temp_s0->unk3C == 0 && !(temp_s0->unk20 & 0x1000)) {
		if (temp_s0->unk47 & 1) { func_8008064C_8F5FC(arg0); } else { func_8008076C_8F71C(arg0); }
	}
	spA8 = func_800B84D0_C7480(temp_s0->unk0, temp_s0->unk4) >> 8;
	if (spA8 < (s32)D_80222A70) { spA8 = D_80222A70; }
	temp_s0->unk2 = (s16)(s32)((f64)(spA8 + sp58->unk58) + (f64)(f32)sins((D_80052A8C * 1500) & 0xFFFF) / 32768.0 * 20.0);
	if (temp_s0->unk20 & 0x1000) {
		temp_s0->unk12 -= sp58->unk3E / 2;
		if (temp_s0->unk12 < 0) { temp_s0->unk12 = 0; }
		sp84 = -0x14; sp86 = 0x78; sp88 = -0x28;
		func_800A931C_B82CC((s8)spDA, &sp84, (s32 *)&sp86);
		func_80128428_1373D8(temp_s0, sp84, sp86, sp88, &spC8, &spC4, &spC0);
		sp84 = 0x14; sp86 = 0x78; sp88 = -0x28;
		func_800A931C_B82CC((s8)spDC, &sp84, (s32 *)&sp86);
		func_80128428_1373D8(temp_s0, sp84, sp86, sp88, &spBC, &spB8, &spB4);
		func_800D16BC_E066C((s16)spC8, (s16)spC4, (s16)spC0, (s16)spBC, (s16)spB8, (s16)spB4, 1);
		if (temp_s0->unk26 >= 0x6E) {
			D_8014DD50[spDA].unk8 -= 0x64;
			if (D_8014DD50[spDA].unk8 < -0x1194) { D_8014DD50[spDA].unk8 = -0x1194; }
			((Unk8014DD50 *)sp64)->unk8 += 0x64;
			if (((Unk8014DD50 *)sp64)->unk8 > 0x1194) { ((Unk8014DD50 *)sp64)->unk8 = 0x1194; }
			func_80137468_146418((u8)sp60, 0x261);
		}
		if (temp_s0->unk26 < 0x6E) {
			temp_s0->unk48 += 0x2EE0;
			if (func_80086D70_95D20(arg0, 1, temp_s0->unk48)) { func_80137468_146418((u8)sp60, 0x25B); temp_s0->unk1E = 0; }
		}
		if (temp_s0->unk26 == 0 || temp_s0->hitPoints < (s16)(sp58->unk3A / 4)) {
			temp_s0->unk20 &= ~0x1000; temp_s0->unk3C = 0; temp_s0->unkE += 0x8000;
			temp_s0->unk26 = (func_800038E0_44E0() % 80) + 0x3C; temp_s0->unk1E = 0x14; temp_s0->unk48 = 0;
		}
	} else {
		if (D_8014DD50[spDA].unk8 + 0x64 > 0) { D_8014DD50[spDA].unk8 = 0; } else { D_8014DD50[spDA].unk8 += 0x64; }
		if (((Unk8014DD50 *)sp64)->unk8 - 0x64 < 0) { ((Unk8014DD50 *)sp64)->unk8 = 0; } else { ((Unk8014DD50 *)sp64)->unk8 -= 0x64; }
		func_8008554C_944FC(arg0);
		if (sp74 == 0 || ((spCC >= 0x385 || (temp_s0->unk47 & 1)) && temp_s0->unk4E != 0)) {
			temp_s0->unk20 = (temp_s0->unk20 | 0x100) & ~0x840;
		} else if (spCC >= 0x28B || temp_s0->unk4E == 0) {
			temp_s0->unk20 = (temp_s0->unk20 | 0x800) & ~0x140;
		} else {
			temp_s0->unk20 = (temp_s0->unk20 | 0x140) & ~0x800;
		}
		switch (func_800038E0_44E0() % 3) {
		case 0: *(s32 *)&sp58->pad1C = 0x20; break;
		case 1: *(s32 *)&sp58->pad1C = 0x22; break;
		case 2: *(s32 *)&sp58->pad1C = 0x23; break;
		}
		if (temp_s0->unk4E != 0 && func_800871CC_9617C(arg0, 0, 100)) { temp_s0->unk1E = (func_800038E0_44E0() % 20) + 0xF; }
		if (temp_s0->unk26 == 0) {
			if (temp_s0->unk3C == 0) {
				temp_s0->unk3C = (func_800038E0_44E0() % 0x46) + 0x1E;
				sp58->unk40 = ((func_800038E0_44E0() % 20) + 0x1E) << 5;
			} else {
				temp_s0->unk12 -= sp58->unk3E / 2;
				if (temp_s0->unk12 < 0) { temp_s0->unk12 = 0; }
				temp_s0->unk3C--;
				if (temp_s0->unk3C == 0) {
					if (!(func_800038E0_44E0() & 1) && sp74 != 0 && temp_s0->hitPoints >= (s16)(sp58->unk3A / 4) && spCC < 0x640) {
						temp_s0->unk26 = 0x96; temp_s0->unk48 = 0; temp_s0->unk20 |= 0x1000;
					} else {
						temp_s0->unk3C = 0; temp_s0->unkE += 0x8000; temp_s0->unk26 = (func_800038E0_44E0() % 80) + 0x3C;
					}
				}
			}
		}
	}
	if (temp_s0->hitPoints < (s16)(sp58->unk3A / 4)) {
		func_80089200_981B0(arg0, 4, 0x20);
		if (D_80052A8C % ((func_800038E0_44E0() % 5) + 4) == 0) {
			func_80128428_1373D8(temp_s0, 0, 0x32, 0, &spC8, &spC4, &spC0);
			func_800CC7B0_DB760(0x28, 0x55, 2, (s16)spC8, spC4, spC0);
		}
		if (D_80052A8C % 3 == 0) { func_800CA5EC_D959C(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, -1, 0, 0, 0x2D, 5, 8, 0x80, 0xFF, 0, 0, 0); }
		if (temp_s0->hitPoints < 0xB) {
			if (!(temp_s0->unk20 & 0x200000)) { func_80018D7C_1997C(0xDA); }
			func_80087AAC_96A5C(arg0);
		}
	}
	if (sp58->unk54 & 0x2000) { temp_s0->unk6 = func_80003824_4424((f32)(temp_s0->unk0 - D_80052B34->unk0), (f32)(temp_s0->unk4 - D_80052B34->unk4)) + 0x8000; }
	if (temp_s0->unk1E != 0) { temp_s0->unk1E--; }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DC8F4_320A44.s")
#endif

#ifdef NON_MATCHING
// Score: 4950 — register allocation, scheduling, and stack frame differences remain
void func_802DD554_3216A4(s32 arg0) {
    AlienInstance *alien = &alienInstances[arg0];
    Unk8014DD50 *spec = &D_8014DD50[alien->unkC];
    Unk8014DD50 *subSpec1 = &D_8014DD50[spec->unkC];
    s32 flags = alien->unk20;

    if (flags & 0x400000) {
        func_80079910_888C0(arg0);
        return;
    }
    if (flags & 0x1000) {
        alien->unk12 -= alienSpecs[alien->specIndex].unk3E / 2;
        if (alien->unk12 < 0) {
            alien->unk12 = 0;
        }
        if (alien->unk26 >= 0x6E) {
            Unk8014DD50 *subSpec2 = &D_8014DD50[subSpec1->unkD];
            s32 temp;

            temp = (s16)((u16)subSpec2->unk8 - 100);
            if (temp < -0x1194) {
                subSpec2->unk8 = -0x1194;
            } else {
                subSpec2->unk8 = temp;
            }
            temp = (s16)((u16)subSpec1->unk8 + 100);
            if (temp > 0x1194) {
                subSpec1->unk8 = 0x1194;
            } else {
                subSpec1->unk8 = temp;
            }
        } else {
            alien->unk48 += 0x2EE0;
            if (func_80086D70_95D20(arg0, 1, alien->unk48)) {
                alien->unk1E = 0;
            }
        }
        if (alien->unk26 == 0) {
            alien->unk3C = 0;
            alien->unk20 &= ~0x1000;
            alien->unkE += 0x8000;
            alien->unk26 = (func_800038E0_44E0() % 80) + 0x3C;
            alien->unk1E = 0x14;
            alien->unk48 = 0;
        }
        if (alien->unk1E != 0) {
            alien->unk1E--;
        }
        if (alien->unk26 != 0) {
            alien->unk26--;
        }
    } else {
        func_8008735C_9630C(arg0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DD554_3216A4.s")
#endif

void func_802DD748_321898(s32 arg0) {

}

extern Unk8014DD50 *D_802E5920_329A70;
extern f64 D_802E7B68_32BCB8;

#ifdef NON_MATCHING
void func_802DD750_3218A0(u8 arg0, s32 arg1, s16 arg2, s16 arg3, s16 arg4) {
	s16 sp6C;
	s16 sp6E;
	s16 sp70;
	s16 sp72;
	s16 sp74;
	s16 sp76;
	s16 sp78;
	s16 sp7A;
	s16 sp7C;
	s16 sp7E;
	s16 sp80;
	s16 sp82;
	s16 sp84;
	s16 sp86;
	u8 sp6B;
	s32 outX;
	s32 outY;
	s32 outZ;
	f32 sp58;
	f32 sp54;
	s16 sp52;
	s32 sp48;

	if (!(alienInstances[arg0].unk20 & 0x2000)) {
		return;
	}

	sp6C = arg2;
	sp6E = arg3;
	sp70 = arg4;
	sp72 = D_8014DD50[arg4].unkC;
	sp74 = D_8014DD50[sp72].unkC;
	sp76 = D_8014DD50[arg4].unkD;
	sp78 = D_8014DD50[sp76].unkC;
	sp7A = D_8014DD50[sp78].unkC;
	sp7C = D_8014DD50[sp76].unkD;
	sp7E = D_8014DD50[sp7C].unkC;
	sp80 = D_8014DD50[sp7E].unkC;
	sp82 = D_8014DD50[sp7C].unkD;
	sp84 = D_8014DD50[sp82].unkC;
	sp86 = D_8014DD50[sp84].unkC;
	sp52 = alienInstances[arg0].specIndex;

	sp6B = func_80081F18_90EC8(arg0, 0xE, 3, &sp6C, &D_802E5920_329A70);

	if (sp6B == 2) {
		func_80128428_1373D8(&alienInstances[arg0], alienSpecs[sp52].unk20, alienSpecs[sp52].unk22, alienSpecs[sp52].unk24, &outX, &outY, &outZ);

		sp58 = (f32)((f64)(f32)sins((alienInstances[arg0].unk6 + 0x4000) & 0xFFFF) / 32768.0);
		sp54 = -(f32)((f64)(f32)coss((alienInstances[arg0].unk6 + 0x4000) & 0xFFFF) / 32768.0);

		func_800DE9B8_ED968((s16)outX, (s16)outY, (s16)outZ, 0xDC);
		func_800C541C_D43CC((s16)outX, (s16)outY, (s16)outZ,
			(s8)(s32)(sp58 * 127.0f), -0x50, (s32)(sp54 * 127.0f),
			0xDC, 0xFF, 0x3C, 0x14, 0xFF, 0xFF, 0xC8);

		func_80135D44_144CF4(outX, outY, outZ, 8.0f);

		sp48 = arg0;
		func_80137468_146418(arg0, 0x25A);
		outY = func_800B84D0_C7480((s16)outX, (s16)outZ) >> 8;
		func_800DEE5C_EDE0C((s16)outX, (s16)(outY + 5), (s16)outZ, 0x50, 0xA);

		if (arg1 < 0x320) {
			func_80102DDC_111D8C(D_80052B34, alienInstances[arg0].unk6, 0,
				(f32)((1.0 - (f64)((f32)arg1 / 800.0f)) * D_802E7B68_32BCB8));
		}

		func_80124B5C_133B0C((s16)outX, (s16)outY, (s16)outZ, 0x1F40, 0x1F4);
		func_80137468_146418(sp48, 0x258);
	}

	if (sp6B == 3) {
		alienInstances[arg0].unk20 &= ~0x2000;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DD750_3218A0.s")
#endif

#ifdef NON_MATCHING
void func_802DDB08_321C58(u8 arg0, u8 arg1, s16 arg2, s32 *arg3) {
	s16 sp44;
	s16 sp42;
	s16 sp40;
	s32 sp3C;
	s32 sp38;
	s32 sp34;
	s16 sp32;
	s16 temp_t0;
	s32 temp_v1;

	temp_t0 = D_8014DD50[arg2].unkC;
	sp32 = temp_t0;
	temp_v1 = (s32)D_8014DD50[temp_t0].unkC;
	sp40 = ((s16 *)&D_802E5DF0_329F40)[arg1 * 3 + 0];
	sp42 = ((s16 *)&D_802E5DF0_329F40)[arg1 * 3 + 1];
	sp44 = ((s16 *)&D_802E5DF0_329F40)[arg1 * 3 + 2];
	func_800A931C_B82CC((s8)temp_v1, &sp40, &sp34);
	sp40 = (s16)sp34;
	sp42 = (s16)sp38;
	sp44 = (s16)sp3C;
	func_800A931C_B82CC(sp32, &sp40, &sp34);
	sp40 = (s16)sp34;
	sp42 = (s16)sp38;
	sp44 = (s16)sp3C;
	func_800A931C_B82CC(arg2, &sp40, &sp34);
	func_80128428_1373D8(&alienInstances[arg0], (s16)sp34, (s16)sp38, (s16)sp3C, arg3, &arg3[1], &arg3[2]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DDB08_321C58.s")
#endif

#ifdef NON_MATCHING
// Score: CURRENT(16383)
void func_802DDC44_321D94(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6) {
	s16 sp96;
	s16 sp94;
	s16 sp92;
	s16 sp90;
	s16 sp8E;
	s16 sp8C;
	s16 sp8A;
	s16 sp88;
	s16 sp86;
	s16 sp84;
	s16 sp82;
	s16 sp80;
	s16 sp7E;
	s16 sp7C;
	u8 sp7B;
	s32 sp54;
	s32 sp58;
	s32 sp5C;
	s32 sp50;
	s32 sp4C;
	s32 sp48;
	s32 sp44;
	s32 sp40;
	s32 sp3C;
	s32 sp38;
	AlienInstance *temp_s3;
	s32 var_s0;

	temp_s3 = &alienInstances[arg0];
	if (!(temp_s3->unk20 & 0x4000)) {
		return;
	}

	sp86 = D_8014DD50[arg3].unkD;
	sp84 = D_8014DD50[D_8014DD50[arg3].unkC].unkC;
	sp82 = D_8014DD50[arg3].unkC;
	sp7C = arg1;
	sp88 = D_8014DD50[sp86].unkC;
	sp8C = D_8014DD50[sp86].unkD;
	sp8A = D_8014DD50[sp88].unkC;
	sp7E = arg2;
	sp8E = D_8014DD50[sp8C].unkC;
	sp92 = D_8014DD50[sp8C].unkD;
	sp90 = D_8014DD50[sp8E].unkC;
	sp80 = arg3;
	sp94 = D_8014DD50[sp92].unkC;
	sp96 = D_8014DD50[sp94].unkC;

	sp7B = func_80081F18_90EC8(arg0, 0xE, 5, &sp7C, &D_802E5DB8_329F08);

	if (temp_s3->unk36 == 3) {
		func_802DDB08_321C58(arg0, 0, sp80, &sp54);
		func_800D16BC_E066C(arg4, arg5, arg6, (s16)sp54, sp58, sp5C, 1);
		func_802DDB08_321C58(arg0, 1, sp86, &sp54);
		func_800D16BC_E066C(arg4, arg5, arg6, (s16)sp54, sp58, sp5C, 1);
		func_802DDB08_321C58(arg0, 2, sp8C, &sp54);
		func_800D16BC_E066C(arg4, arg5, arg6, (s16)sp54, sp58, sp5C, 1);
		func_802DDB08_321C58(arg0, 3, sp92, &sp54);
		func_800D16BC_E066C(arg4, arg5, arg6, (s16)sp54, sp58, sp5C, 1);
		func_80137468_146418(arg0, 0x261);
		D_80256EE2 = 0x15E;
	} else {
		D_80256EE2 = 0x200;
	}

	sp3C = sp7B;
	if (sp7B == 3) {
		sp40 = arg0;
		func_800D05A8_DF558(arg4, arg5, arg6, 0x3E8, 0xFF, 0xFF, 0xFF);
		for (var_s0 = 0; (u8)var_s0 < 3; var_s0 = (u8)(var_s0 + 1)) {
			temp_s3->unk1E = 0;
			func_80087188_96138(arg0, 0, func_800038E0_44E0() % 40);
		}
		func_80137468_146418(sp40, 0x25C);
	}

	if (sp3C == 5) {
		temp_s3->unk1E = 0x28;
		temp_s3->unk20 &= ~0x4000;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DDC44_321D94.s")
#endif

#ifdef NON_MATCHING
void func_802DDFFC_32214C(u8 arg0, s16 arg1, s16 arg2) {
	s16 sp2C[2];
	u8 sp33;
	u8 sp2B;

	if (alienInstances[arg0].unk20 & 0x1000) {
		sp2C[0] = arg1;
		sp2C[1] = arg2;
		sp33 = func_80081F18_90EC8(arg0, 2, 6, sp2C, (Unk8014DD50 **)D_802E5EC8_32A018);
		sp2B = sp33;
		if ((s32)sp33 < 0 && (sp33 & 1)) {
			sp33 = (sp33 & 0xFF) - 2;
		}
		if ((sp33 & 1) == 0 && sp33 < 6) {
			alienInstances[arg0].unk1E = 0;
			func_800871CC_9617C(arg0, 1, 10);
		}
		if (sp2B == 6) {
			alienInstances[arg0].unk1E = 0;
			alienInstances[arg0].unk20 &= ~0x1000;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DDFFC_32214C.s")
#endif

#ifdef NON_MATCHING
void func_802DE0F4_322244(u8 arg0) {
	s16 spA4;
	s16 spA2;
	s16 spA0;
	s16 sp9E;
	s16 sp9C;
	s16 sp9A;
	s16 sp98;
	s32 sp74;
	s32 sp70;
	s32 sp6C;
	s32 sp68;
	s32 sp64;
	s32 sp60;
	s32 sp5C;
	u8 sp4F;
	Unk8014DD50 *sp44;
	Unk8014DD50 *sp40;
	s32 sp3C;
	s32 temp_v0;
	s32 temp_lo;
	s32 var_t0;
	s32 var_t0_2;
	s32 temp;
	s32 pad34;
	s32 pad30;
	AlienInstance *temp_s0;

	temp_s0 = &alienInstances[arg0];
	spA4 = D_8014DD50[temp_s0->unkC].unkC;
	spA0 = D_8014DD50[spA4].unkD;
	spA2 = D_8014DD50[spA4].unkC;
	sp44 = &D_8014DD50[spA0];
	sp9E = sp44->unkD;
	sp40 = &D_8014DD50[sp9E];
	sp98 = sp40->unkD;
	temp = D_8014DD50[sp98].unkD;
	temp = D_8014DD50[temp].unkD;
	temp = D_8014DD50[temp].unkD;
	sp9C = D_8014DD50[temp].unkD;

	if (D_802E4E80 == 0) {
		sp9A = D_8014DD50[sp9C].unkC;
		func_8011C080_12B030(0x71);
		func_8011C080_12B030(0x7A);
		func_8011C080_12B030(0x91);
		func_8011C080_12B030(0x9A);
		D_802E4E80 = 1;
		sp3C = (s32)arg0;
		func_80137468_146418(arg0, 0x11);
		func_80088000_96FB0((s16)sp3C);
	}

	func_80128428_1373D8(temp_s0, 0x19, 0, 0x226, &sp70, &sp6C, &sp68);

	temp = (s32)(D_80052B34->unk0 - sp70) >> 1;
	sp74 = (s32)sqrtf((f32)(temp * temp + (((s32)(D_80052B34->unk4 - sp68) >> 1) * ((s32)(D_80052B34->unk4 - sp68) >> 1)))) * 2;

	alienSpecs[temp_s0->specIndex].unk58 = 0;

	func_800A99B8_B8968(arg0);
	func_80086230_951E0(arg0, spA4, 0x2000);

	if (!(D_80052A8C & 7)) {
		if (temp_s0->unk3C != -5 && (s32)sp44->unkA < 0x1F41) {
			func_80128428_1373D8(temp_s0, sp44->unk0 - 0x96, sp44->unk2, sp44->unk4, &sp64, &sp60, &sp5C);
			if ((func_800B84D0_C7480((s16)sp64, (s16)sp5C) >> 8) < D_80222A70) {
				var_t0 = D_80222A70;
			} else {
				var_t0 = func_800B84D0_C7480((s16)sp64, (s16)sp5C) >> 8;
			}
			sp60 = var_t0;
			func_800CD2E8_DC298((s16)sp64, (s16)var_t0, (s16)sp5C, temp_s0->unk3C);
		}
		if (temp_s0->unk3D != -5 && (s32)sp40->unkA < 0x1F41) {
			func_80128428_1373D8(temp_s0, sp40->unk0 + 0x96, sp40->unk2, sp40->unk4, &sp64, &sp60, &sp5C);
			if ((func_800B84D0_C7480((s16)sp64, (s16)sp5C) >> 8) < D_80222A70) {
				var_t0_2 = D_80222A70;
			} else {
				var_t0_2 = func_800B84D0_C7480((s16)sp64, (s16)sp5C) >> 8;
			}
			sp60 = var_t0_2;
			func_800CD2E8_DC298((s16)sp64, (s16)var_t0_2, (s16)sp5C, temp_s0->unk3D);
		}
	}

	func_8008554C_944FC(arg0);
	temp = temp_s0->unk20;
	if (!(temp_s0->unk20 & 0x7000) && func_80084FE8_93F98(arg0, 0x1000) && temp_s0->unk4E != 0) {
		temp_v0 = temp_s0->unk20 & 0x8000;
		if ((temp_v0 == 0 && sp74 < 0x1F4) || (temp_v0 != 0 && sp74 < 0x3E8)) {
			temp_s0->unk20 |= 0x2000;
			goto block_31;
		}
		if (temp_v0 == 0) {
			if (sp74 >= 0x3E9) {
				if ((func_800038E0_44E0() % 20) == 0) {
					temp_s0->unk20 |= 0x8000;
				} else if (temp_s0->unk1E == 0) {
					temp_s0->unk36 = 0;
					temp_s0->unk20 |= 0x1000;
				}
			} else if (temp_s0->unk1E == 0) {
				temp_s0->unk20 |= 0x4000;
block_31:
				temp_s0->unk36 = 0;
			}
		}
	}

	func_802DD750_3218A0(arg0, sp74, spA4, spA2, (s32)sp98);
	func_802DDC44_321D94(arg0, spA4, spA2, sp98, sp70, sp6C, sp68);
	func_802DDFFC_32214C(arg0, sp9C, sp9A);

	if (temp_s0->unk20 & 0x8000) {
		if (func_80084FE8_93F98(arg0, 0x1000) && (temp_s0->unk2 < D_80052B34->unk2 + 100) == 0 && D_80052B34->unk2 + 300 >= temp_s0->unk2 && temp_s0->unk4E != 0 && !(temp_s0->unk47 & 0xE)) {
			sp4F = 1;
		} else {
			sp4F = 0;
			temp_s0->unk20 &= ~0x8000;
			temp_s0->unk2C = (func_800038E0_44E0() % 150) + 100;
			if (temp_s0->unk47 & 8) {
				sp3C = (s32)arg0;
				func_80102DDC_111D8C(D_80052B34, temp_s0->unk6 - 0x4000, 0, 50.0f);
				func_80137468_146418((u8)sp3C, 0x258);
			}
		}
		func_802D997C_31DACC(arg0, 0x10E, sp4F, sp9E, (s32)spA0, 0x36B0, -0x1388, 0x9C4, D_802E7B70_32BCC0);
	} else {
		if (func_80084FE8_93F98(arg0, 0x2000) != 0) {
			if (temp_s0->unk4E == 0) {
				sp4F = 3;
			} else {
				temp_lo = temp_s0->unk12;
				if (sp74 < (0x1F4 - temp_lo)) {
					sp4F = 2;
				} else if ((temp_lo + 0x258) < sp74) {
					sp4F = 1;
				} else {
					sp4F = 3;
				}
			}
		} else {
			sp4F = 0;
		}
		func_802D997C_31DACC(arg0, 0x10E, sp4F, sp9E, (s32)spA0, 0x1F40, -0x1388, 0x9C4, D_802E7B74_32BCC4);
	}
	temp = temp_s0->unk1E;
	temp_s0->unk26 = sp4F;
	if (temp != 0) {
		temp_s0->unk1E = temp - 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DE0F4_322244.s")
#endif

void func_802DE7BC_32290C(s32 arg0) {

}

#ifdef NON_MATCHING
// Score: CURRENT(37272)
void func_802DE7C4_322914(u8 arg0) {
    AlienInstance *alien = &alienInstances[arg0];
    Unk8014DD50 *entry;
    s16 spC8;
    s16 spCA;
    s16 spCC;
    s16 spCE;
    s16 spD0;
    s16 spD2;
    s16 spD4;
    s16 spD6;
    s16 spD8;
    s16 spDA;
    s16 spDC;
    s16 spDE;
    s16 spE0;
    s16 spE2;
    s16 spE4;
    s16 spE6;
    s16 spEA;
    s16 spEC;
    s16 spEE;
    u8 spC7;
    f32 spAC;
    s32 sp88[3];
    s32 sp7C[3];
    s32 sp70[3];
    s32 sp64[3];
    u16 sp58;
    u16 sp5A;
    u16 sp5C;
    s32 sp50;
    s8 spC8_val;
    s8 spEC_val;
    s8 spCC_val;

    if (!(alien->unk20 & 0x100000)) {
        alien->unk36 = 0;
        alien->unk2C = 0x7D00;
        func_800CD390_DC340(alien->unk3C);
        func_800CD390_DC340(alien->unk3D);
        alien->unk3C = -5;
        alien->unk3D = -5;
        func_80137468_146418(arg0, 0x11);
        return;
    }

    entry = D_8014DD50;
    spC8_val = entry[alien->unkC].unkC;
    spEC_val = entry[(s16) spC8_val].unkD;
    spCA = entry[(s16) spC8_val].unkC;
    spEA = entry[spEC_val].unkD;
    spCC_val = entry[(s16) spEA].unkD;
    spCC = (s16) spCC_val;
    spCE = entry[(s16) spCC_val].unkC;
    spD2 = entry[(s16) spCC_val].unkD;
    spD0 = entry[(s16) spCE].unkC;
    spD4 = entry[(s16) spD2].unkC;
    spD8 = entry[(s16) spD2].unkD;
    spDA = entry[(s16) spD8].unkC;
    spDE = entry[(s16) spD8].unkD;
    spE0 = entry[(s16) spDE].unkC;
    spE4 = entry[(s16) spDE].unkD;
    spE2 = entry[(s16) spE0].unkC;
    spE6 = entry[(s16) spE4].unkC;
    spDC = entry[(s16) spDA].unkC;
    spD6 = entry[(s16) spD4].unkC;
    spC8 = (s16) spC8_val;
    spEE = (s16) spC8_val;
    spEC = (s16) spEC_val;

    spC7 = func_80081F18_90EC8(arg0, 0x10, 9, &spC8, &D_802E67D0_32A920);
    func_802D997C_31DACC(arg0, 0x10E, 0, spEA, (s32) spEC, 0x1F40, -0x1388, 0x9C4, D_802E7B78_32BCC8);

    if (spC7 == 3) {
        func_80088E40_97DF0(arg0, spE6,
            (s16) (entry[(s16) spE6].unk0 + entry[(s16) spE4].unk0),
            (s16) (entry[(s16) spE6].unk2 + entry[(s16) spE4].unk2),
            entry[(s16) spE6].unk4 + entry[(s16) spE4].unk4,
            0, 0x28, 0);
    } else if (spC7 == 5) {
        sp50 = alien->unk6 & 0xFFFF;
        spAC = (f32) ((f64) sins(sp50) / 32768.0 * 15.0);
        func_80088E40_97DF0(arg0, spD6,
            (s16) (entry[(s16) spD6].unk0 + entry[(s16) spD2].unk0 + entry[(s16) spD4].unk0),
            (s16) (entry[(s16) spD6].unk0 + entry[(s16) spD2].unk2 + entry[(s16) spD4].unk2),
            entry[(s16) spD6].unk0 + entry[(s16) spD2].unk4 + entry[(s16) spD4].unk4,
            (s32) spAC, 0xF, (s32) ((f64) coss(sp50) / 32768.0 * -15.0));
    } else if (spC7 == 6) {
        sp50 = (alien->unk6 + 0x8000) & 0xFFFF;
        spAC = (f32) ((f64) sins(sp50) / 32768.0 * 15.0);
        func_80088E40_97DF0(arg0, spE2,
            (s16) (entry[(s16) spE2].unk0 + entry[(s16) spDE].unk0 + entry[(s16) spE0].unk0),
            (s16) (entry[(s16) spE2].unk0 + entry[(s16) spDE].unk2 + entry[(s16) spE0].unk2),
            entry[(s16) spE2].unk0 + entry[(s16) spDE].unk4 + entry[(s16) spE0].unk4,
            (s32) spAC, 0xF, (s32) ((f64) coss(sp50) / 32768.0 * -15.0));
    } else if (spC7 == 9) {
        sp50 = (alien->unk6 + 0x4000) & 0xFFFF;
        spAC = (f32) ((f64) sins(sp50) / 32768.0 * 15.0);
        func_80088E40_97DF0(arg0, spEE,
            entry[(s16) spEE].unk0,
            entry[(s16) spEE].unk2,
            (s32) entry[(s16) spEE].unk4,
            (s32) spAC, 5, (s32) ((f64) coss(sp50) / 32768.0 * -15.0));

        func_800DF038_EDFE8(alien->unk0, alien->unk2, alien->unk4,
            (D_8025668C[alien->specIndex * 0x68 / 2] * 2) & 0xFFFF, 0xA, 0);
        func_800C541C_D43CC(alien->unk0, alien->unk2, alien->unk4, 0,
            0x7F, 0, 0xDC, 0xFF, 0x64, 0x14, 0xFF, 0xFF, 0xC8);
        alien->unk2C = 0;
        sp50 = (s32) arg0;
        func_800797A4_88754(arg0, 0x14);
        func_800797A4_88754(arg0, 0x14);
        func_800797A4_88754(arg0, 0x17);
        func_800797A4_88754(arg0, 0x17);
        func_800797A4_88754(arg0, 0x15);
        func_800797A4_88754(arg0, 0x16);
    }

    func_802DDB08_321C58(arg0, 0, spCC, sp88);
    func_802DDB08_321C58(arg0, 2, spD8, sp7C);
    func_800D16BC_E066C((s16)(sp88[0] >> 16), (s16) sp88[0], (s16)(sp88[1] >> 16), (s16)(sp7C[0] >> 16), sp7C[0] >> 16, (s16) sp7C[1], 1);

    if (alien->unk36 < 6) {
        func_802DDB08_321C58(arg0, 1, spD2, sp70);
        func_800D16BC_E066C((s16)(sp88[0] >> 16), (s16) sp88[0], (s16)(sp88[1] >> 16), (s16)(sp70[0] >> 16), sp70[0] >> 16, (s16) sp70[1], 1);
        func_800D16BC_E066C((s16)(sp7C[0] >> 16), (s16) sp7C[0], (s16)(sp7C[1] >> 16), (s16)(sp70[0] >> 16), sp70[0] >> 16, (s16) sp70[1], 1);
    }

    if (alien->unk36 < 7) {
        func_802DDB08_321C58(arg0, 3, spDE, sp64);
        func_800D16BC_E066C((s16)(sp88[0] >> 16), (s16) sp88[0], (s16)(sp88[1] >> 16), (s16)(sp64[0] >> 16), sp64[0] >> 16, (s16) sp64[1], 1);
        func_800D16BC_E066C((s16)(sp7C[0] >> 16), (s16) sp7C[0], (s16)(sp7C[1] >> 16), (s16)(sp64[0] >> 16), sp64[0] >> 16, (s16) sp64[1], 1);
        if (alien->unk36 < 6) {
            func_800D16BC_E066C((s16)(sp70[0] >> 16), (s16) sp70[0], (s16)(sp70[1] >> 16), (s16)(sp64[0] >> 16), sp64[0] >> 16, (s16) sp64[1], 1);
        }
    }

    if ((D_80052A8C % 6) == 0) {
        sp58 = func_800038E0_44E0();
        sp5A = func_800038E0_44E0();
        sp5C = func_800038E0_44E0();
        func_800DF038_EDFE8(
            (s16) (((sp58 % 400) + alien->unk0) - 0xC8),
            (s16) (((sp5A % 400) + alien->unk2) - 0xC8),
            (s16) ((alien->unk4 - (sp5C % 200)) + 0xC8),
            (func_800038E0_44E0() % 250) & 0xFFFF, 0, 0);
        func_801371B8_146168(0, 0xE8, alien->unk0, alien->unk2, (s32) alien->unk4,
            (f32) (((func_800038E0_44E0() % 100) / 500.0) + D_802E7B80_32BCD0));
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DE7C4_322914.s")
#endif

void func_802DF188_3232D8(void) {
    D_802E6814_32A964 = (f32)((f64)D_802E7C58 / 256.0);
    alienSpecs[27].unkC = (s16)(250.0f * D_802E6814_32A964);
    alienSpecs[27].unk8 = (s32)(D_802E7B88_32BCD8 * D_802E6814_32A964 * D_802E6814_32A964);
    alienSpecs[27].unk34 = (s16)(320.0f * D_802E6814_32A964);
    alienSpecs[27].unk36 = (s16)(500.0f * D_802E6814_32A964);
    alienSpecs[27].unk38 = (s16)(300.0f * D_802E6814_32A964);
    alienSpecs[27].unk58 = (s16)(190.0f * D_802E6814_32A964);
    func_80004214_4E14(D_802E7C58, func_80012000_12C00((s32)D_D040ED0));
}


s16 coss(u16);
s16 sins(u16);
void func_800D1054_E0004(s16);
void func_800D0FE0_DFF90(s16, s32);
void func_800D0F5C_DFF0C(s16, s16, s16, s16);

#ifdef NON_MATCHING
// Score: CURRENT(10019) - stack variable allocation differs from target
void func_802DF290_3233E0(void) {
    s32 sp44;
    s32 sp40;
    u16 sp30;
    u16 sp32;
    u16 sp34;
    s32 sp2C;
    s32 sp28;
    s16 sp36;
    s16 sp38;
    s16 sp3A;
    s16 sp3C;
    s16 temp_v0;

    if (D_8014D17C == 0x50) {
        *(&D_800481BC + D_8014D17E * 0x50) = 3;
    } else if (D_8014D17C == 0xC7) {
        func_80079910_888C0(D_8014D17E);
        D_802E7C5C = func_800B03CC_BF37C((currentLevel - 1) & 0xFF, alienInstances[D_8014D17E].unk0, alienInstances[D_8014D17E].unk4);
        func_802DF188_3232D8();
    } else if (D_8014D17C == 0x5A) {
        D_802E7C5A = func_800D0DE4_DFD94(alienInstances[D_8014D17E].unk0, (s16)(alienInstances[D_8014D17E].unk2 + 0x32), alienInstances[D_8014D17E].unk4, 0xC8, 0, 0xFF, 0x6E);
    } else if (D_8014D17C == 0x8C) {
        func_800D1054_E0004(D_802E7C5A);
    } else if (D_8014D17C == 0xAA) {
        D_802E7C58 = 0x19;
        D_802E7C60 = alienInstances[D_8014D17E].unk0;
        D_802E7C68 = alienInstances[D_8014D17E].unk4;
        D_802E7C64 = (s32)((f64)(func_800B84D0_C7480(alienInstances[D_8014D17E].unk0, alienInstances[D_8014D17E].unk4) >> 8) + ((f64)(D_802E7C58 * 0xBE) * 0.00390625));
        D_802E7C5A = func_800D0DE4_DFD94((s16)D_802E7C60, (s16)D_802E7C64, (s16)D_802E7C68, 0xC8, 0, 0xFF, 0x6E);
        func_801371B8_146168(0, 0x189, alienInstances[D_8014D17E].unk0, alienInstances[D_8014D17E].unk2, (s32)alienInstances[D_8014D17E].unk4, -1.0f);
        D_80052ACA = 2;
    }
    if (D_8014D17C >= 0xAB) {
        sp44 = func_800038E0_44E0();
        sp40 = func_800038E0_44E0() >> 1;
        sp30 = func_800038E0_44E0();
        sp32 = func_800038E0_44E0();
        sp34 = func_800038E0_44E0();
        sp2C = (sp44 >> 16) & 0xFFFF;
        sp36 = sins(sp2C);
        sp28 = (sp40 >> 16) & 0xFFFF;
        sp38 = coss(sp28);
        sp3A = sins(sp28 >> 16);
        sp3C = coss(sp2C >> 16);
        func_800D16BC_E066C((s16)((D_802E7C60 - (sp30 % 15)) + 0x1E), (s16)((D_802E7C64 - (sp32 % 15)) + 0x1E), (s16)((D_802E7C68 - (sp34 % 15)) + 0x1E), (s16)((f64)(f32)sp38 / 32768.0 * (D_802E7B90_32BCE0 * ((f64)(f32)sp36 / 32768.0)) + (f64)D_802E7C60), (s32)(((f64)(f32)sp3A / 32768.0) * D_802E7B90_32BCE0 + (f64)D_802E7C64), (s32)(((f64)(f32)coss(sp28 >> 16) / 32768.0) * (D_802E7B90_32BCE0 * ((f64)(f32)sp3C / 32768.0)) + (f64)D_802E7C68), 1);
        temp_v0 = D_8014D17C - 0xAA;
        if (D_8014D17C >= 0xC9) {
            D_802E7C58 += 0x10;
            func_802DF188_3232D8();
            func_80137468_146418(D_802E7C5C, 0x25F);
            if (D_802E7C58 >= 0x101) {
                D_802E7C58 = 0x100;
                func_800074BC_80BC(&func_802DF290_3233E0);
                func_800D1054_E0004(D_802E7C5A);
                func_80018D7C_1997C(0xDD);
            }
            func_800D0FE0_DFF90(D_802E7C5A, ((s32)(D_802E7C58 * 0xC8) / 25) & 0xFFFF);
            func_800D0F5C_DFF0C(D_802E7C5A, alienInstances[D_802E7C5C].unk0, alienInstances[D_802E7C5C].unk2, alienInstances[D_802E7C5C].unk4);
        } else {
            D_802E7C58 = (s16)((f64)(temp_v0 + 0x37) - (((f64)(f32)coss((s32)((f32)(temp_v0 << 0x11) / 30.0f) & 0xFFFF) / 32768.0) * (f64)(temp_v0 + 0x1E)));
            func_800D0FE0_DFF90(D_802E7C5A, ((s32)(D_802E7C58 * 0xC8) / 25) & 0xFFFF);
        }
    }
    D_8014D17C++;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DF290_3233E0.s")
#endif

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
s16 func_802DFF84_3240D4(u8 arg0) {
	return D_8014DD50[D_8014DD50[func_802DFF04_324054(arg0 & 0xFF)].unkC].unkD;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DFF84_3240D4.s")
#endif

s16 func_802DFFC8_324118(u8 arg0) {
	s32 chain;

	chain = func_802DFF04_324054(arg0);
	chain = D_8014DD50[chain].unkC;
	chain = D_8014DD50[chain].unkD;
	return D_8014DD50[chain].unkD;
}

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

void func_802E0104_324254(VehicleInstance *vehicle) {
	s32 idx = *(u8 *)&vehicle->unk8;
	AlienInstance *parent = &alienInstances[alienInstances[idx].unk25];
	AlienInstance *alien = &alienInstances[idx];

	parent->unk20 &= ~0x1000;
	alien->unk20 &= ~(0x20000000 | 0x400000);
}

void func_802E015C_3242AC(VehicleInstance *vehicle);

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

// CURRENT(5588)
#ifdef NON_MATCHING
s32 func_802E0234_324384(u8 arg0) {
	s32 pad1;
	s32 pad2;
	AlienInstance *alien;
	AlienInstance *parent;
	u8 specIndex;
	s32 dx;
	s32 range;
	s16 angle;
	s32 targetX, targetZ;
	s32 trigger[4];

	alien = &alienInstances[arg0];
	specIndex = alien->specIndex;
	parent = &alienInstances[alien->unk25];
	if (parent->unk20 & 0x5E000) {
		return 0;
	}
	dx = alien->unk0 - D_80052B34->unk0;
	range = alien->unk4 - D_80052B34->unk4;
	angle = func_80003824_4424((f32)dx, (f32)range) + 0x8000;
	range = (func_800038E0_44E0() % 500) + 0x3E8;
	targetX = (s32)(((f64)(f32)coss(angle & 0xFFFF) / 32768.0) * range + D_80052B34->unk0);
	targetZ = (s32)(((f64)(f32)sins(angle & 0xFFFF) / 32768.0) * range + D_80052B34->unk4);
	targetX = ((targetX >> 8) << 8) + 0x80;
	targetZ = ((targetZ >> 8) << 8) + 0x80;
	if (func_802E00D0_324220(targetX, targetZ) == 0) {
		return 0;
	}
	parent->unk20 |= 0x1000;
	alien->unk12 = 0;
	alien->unk20 |= 0x400000;
	dx = func_800B84D0_C7480((s16)targetX, (s16)targetZ);
	dx = (dx >> 8) + alienSpecs[specIndex].unk58;
	*(u8 *)((u8 *)trigger + 0) = 2;
	*(s8 *)((u8 *)trigger + 1) = targetX >> 8;
	*(s8 *)((u8 *)trigger + 2) = targetZ >> 8;
	*(s32 *)((u8 *)trigger + 4) = D_8014F820 + 8;
	*(u8 *)((u8 *)trigger + 8) = arg0;
	*(void **)((u8 *)trigger + 12) = (void *)func_802E015C_3242AC;
	func_800AE454_BD404((Unk80222A78 *)trigger);
	func_800CF80C_DE7BC(alien->unk0, alien->unk2, alien->unk4, (s16)(alienSpecs[specIndex].unkC * 1.5), 0xC8, 0xC8, 0xDC, 3);
	func_800CF80C_DE7BC((s16)targetX, (s16)dx, (s16)targetZ, (s16)(alienSpecs[specIndex].unkC * 1.5), 0xC8, 0xC8, 0xDC, 2);
	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E0234_324384.s")
#endif

// CURRENT(16728)
#ifdef NON_MATCHING
void func_802E0588_3246D8(s32 arg0) {
	s16 sp3E;
	s32 sp38;
	void *sp30;
	s32 sp2C;
	f32 sp8;
	f32 temp_f14;
	f32 temp_f16;
	f32 temp_f18;
	f32 temp_f4;
	f32 var_f;
	f64 temp_f12;
	f64 temp_f2;
	s16 temp_t8;
	s16 temp_t9;
	s16 temp_t9_2;
	u16 temp_t6;
	u16 temp_t7_2;
	u16 temp_t8_2;
	u16 temp_t8_3;
	u16 temp_t9_3;
	u16 temp_t9_4;
	AlienInstance *temp_v0;
	Unk8014DD50 *temp_a2;
	Unk8014DD50 *temp_t0;
	Unk8014DD50 *temp_t2;
	Unk8014DD50 *temp_t4;
	Unk8014DD50 *temp_t7;
	Unk8014DD50 *temp_v0_2;

	temp_v0 = &alienInstances[arg0 & 0xFF];
	temp_f2 = (f64) (f32) (temp_v0->unk12 / 32);
	temp_a2 = &D_8014DD50[D_8014DD50[temp_v0->unkC].unkC];
	temp_t0 = &D_8014DD50[temp_a2->unkD];
	temp_t2 = &D_8014DD50[temp_t0->unkD];
	temp_t4 = &D_8014DD50[temp_t2->unkD];
	temp_t9 = temp_v0->unk6;
	temp_t7 = &D_8014DD50[temp_t4->unkD];
	sp30 = temp_t7;
	sp2C = (s32) temp_t9;
	temp_t8 = temp_t9 - D_802E7184_32B2D4;
	temp_t9_2 = temp_a2->unk0;
	sp3E = temp_t8;
	sp38 = (s32) temp_t9_2;
	temp_t7_2 = temp_a2->unkA;
	temp_f14 = (f32) ((temp_f2 / D_802E7BA0_32BCF0) * 65536.0);
	temp_f12 = (f64) (f32) ((f64) (temp_t9_2 * 2) * D_802E7BA8_32BCF8 * (f64) ((f32) temp_t8 / 65536.0f));
	var_f = (f32) temp_t7_2;
	temp_f4 = (f32) ((temp_f12 / D_802E7BB0_32BD00) * 65536.0);
	sp8 = temp_f4;
	if ((s32) temp_t7_2 < 0) {
		var_f += 4294967296.0f;
	}
	temp_a2->unkA = (u16) (u32) (var_f + (temp_f14 + temp_f4));
	temp_t6 = temp_t0->unkA;
	var_f = (f32) temp_t6;
	if ((s32) temp_t6 < 0) {
		var_f += 4294967296.0f;
	}
	temp_t0->unkA = (u16) (u32) (var_f + (temp_f14 - sp8));
	temp_t9_3 = temp_t2->unkA;
	var_f = (f32) temp_t9_3;
	temp_f16 = (f32) ((temp_f12 / D_802E7BB8_32BD08) * 65536.0);
	if ((s32) temp_t9_3 < 0) {
		var_f += 4294967296.0f;
	}
	temp_t2->unkA = (u16) (u32) (var_f + ((f32) ((temp_f2 / D_802E7BC0_32BD10) * 65536.0) + temp_f16));
	temp_t8_2 = temp_t4->unkA;
	var_f = (f32) temp_t8_2;
	if ((s32) temp_t8_2 < 0) {
		var_f += 4294967296.0f;
	}
	temp_t4->unkA = (u16) (u32) (var_f + (temp_f14 - temp_f16));
	temp_t8_3 = temp_t7->unkA;
	var_f = (f32) temp_t8_3;
	temp_f18 = (f32) ((temp_f12 / D_802E7BC8_32BD18) * 65536.0);
	if ((s32) temp_t8_3 < 0) {
		var_f += 4294967296.0f;
	}
	temp_v0_2 = &D_8014DD50[temp_t7->unkD];
	temp_t7->unkA = (u16) (u32) (var_f + ((f32) ((temp_f2 / D_802E7BD0_32BD20) * 65536.0) + temp_f18));
	temp_t9_4 = temp_v0_2->unkA;
	var_f = (f32) temp_t9_4;
	if ((s32) temp_t9_4 < 0) {
		var_f += 4294967296.0f;
	}
	temp_v0_2->unkA = (u16) (u32) (var_f + (temp_f14 - temp_f18));
	D_802E7184_32B2D4 = (s16) sp2C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E0588_3246D8.s")
#endif

// CURRENT(5000)
#ifdef NON_MATCHING
void func_802E0B64_324CB4(u8 arg0) {
	AlienInstance *inst;
	s16 temp_s0;
	s32 sp2C;
	s32 sp3C;
	s32 sp40;
	s32 sp44;
	s32 sp4C;
	s32 sp4C_2;
	s32 sp50;
	s32 sp54;
	f32 sp58;
	f32 sp5C;
	f32 sp60;
	f32 sp64;
	s16 sp68;
	s16 sp6A;
	s16 sp6C;
	u8 sp6F;

	inst = &alienInstances[arg0];
	sp6C = inst->unk6;
	sp6F = inst->specIndex;
	sp6A = inst->unkA;
	sp68 = inst->unk8;
	sp2C = inst->unk6 & 0xFFFF;

	temp_s0 = coss(sp2C);
	sp64 = (f32)(((f64)(f32)coss(inst->unkA & 0xFFFF) / 32768.0) * (((f64)(f32)temp_s0 / 32768.0) * D_802E7BD8_32BD28));
	temp_s0 = sins(0);
	sp60 = (f32)(((f64)(f32)coss(0) / 32768.0) * (((f64)(f32)temp_s0 / 32768.0) * D_802E7BE0_32BD30));
	temp_s0 = coss(0);
	sp5C = (f32)(((f64)(f32)coss(0) / 32768.0) * (((f64)(f32)temp_s0 / 32768.0) * D_802E7BE8_32BD38));
	temp_s0 = sins(0);
	sp58 = (f32)(((f64)(f32)coss(0) / 32768.0) * (((f64)(f32)temp_s0 / 32768.0) * D_802E7BF0_32BD40));
	inst->unk20 |= 0x20000000;

	sp44 = func_800B84D0_C7480(inst->unk0, inst->unk4) >> 8;
	sp50 = func_800B84D0_C7480((s16)(s32)((f32)inst->unk0 + sp64), (s16)(s32)((f32)inst->unk4 + sp60)) >> 8;

	sp54 = func_800B84D0_C7480((s16)(s32)((f32)inst->unk0 + sp5C), (s16)(s32)((f32)inst->unk4 + sp58)) >> 8;
	sp40 = (sp54 * 172 + sp50 * 1367) / 533;
	if (sp40 < sp44) {
		if (sp54 < sp44) {
			sp54 = sp44;
		}
		if (sp50 < sp44) {
			sp50 = sp44;
		}
		sp40 = sp44;
	}
	D_802E7C38 = func_80003824_4424((f32)(((f64)(f32)coss(0) / 32768.0) * D_802E7BF8_32BD48), (f32)(sp54 - sp50));

	sp2C = (sp6C + 0x4000) & 0xFFFF;

	temp_s0 = coss(sp2C);
	sp64 = (f32)(((f64)(f32)coss(sp68 & 0xFFFF) / 32768.0) * (((f64)(f32)temp_s0 / 32768.0) * D_802E7C00_32BD50));
	temp_s0 = sins(0);
	sp60 = (f32)(((f64)(f32)coss(0) / 32768.0) * (((f64)(f32)temp_s0 / 32768.0) * D_802E7C08_32BD58));
	temp_s0 = coss(0);
	sp5C = (f32)(((f64)(f32)coss(0) / 32768.0) * (((f64)(f32)temp_s0 / 32768.0) * D_802E7C10_32BD60));
	temp_s0 = sins(0);
	sp58 = (f32)(((f64)(f32)coss(0) / 32768.0) * (((f64)(f32)temp_s0 / 32768.0) * D_802E7C18_32BD68));
	sp4C = func_800B84D0_C7480((s16)(s32)((f32)inst->unk0 + sp64), (s16)(s32)((f32)inst->unk4 + sp60)) >> 8;

	sp4C_2 = func_800B84D0_C7480((s16)(s32)((f32)inst->unk0 + sp5C), (s16)(s32)((f32)inst->unk4 + sp58)) >> 8;
	sp3C = (sp4C_2 * 197 + sp4C * 197) / 394;
	if (sp3C < sp44) {
		sp3C = sp44;
		if (sp54 < sp44) {
			sp4C = sp44;
		} else {
			sp4C = sp54;
		}
		sp4C_2 = sp50;
		if (sp50 < sp44) {
			sp4C_2 = sp44;
		}
	}
	D_802E7C3A = func_80003824_4424((f32)(((f64)(f32)coss(0) / 32768.0) * D_802E7C20_32BD70), (f32)(sp4C_2 - sp4C));
	if (sp3C < sp40) {
		inst->unk2 = (s16)(D_802566D8[sp6F * 0x34] + sp40);
	} else {
		inst->unk2 = (s16)(D_802566D8[sp6F * 0x34] + sp3C);
	}

	if (D_802E7C38 - inst->unkA < -0x1FF) {
		inst->unkA -= 0x200;
	} else if (D_802E7C38 - inst->unkA >= 0x200) {
		inst->unkA += 0x200;
	} else {
		inst->unkA = D_802E7C38;
	}
	if (D_802E7C3A - inst->unk8 < -0x1FF) {
		inst->unk8 -= 0x200;
	} else if (D_802E7C3A - inst->unk8 >= 0x200) {
		inst->unk8 += 0x200;
	} else {
		inst->unk8 = D_802E7C3A;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E0B64_324CB4.s")
#endif

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

s32 func_802E13D4_325524(u8 arg0, u8 arg1) {
	s16 sp2E;
	s16 sp28[2];
	s8 sp27;

	sp2E = (s16)((s8 *)D_8014DD5C)[alienInstances[arg1].unkC * 0x10];
	sp28[0] = func_802DFF84_3240D4(arg0);
	sp28[1] = (s16)((s8 *)D_8014DD5C)[sp28[0] * 0x10];
	sp27 = func_80081F18_90EC8(arg0, 2, 0xC, sp28, (Unk8014DD50 **)&D_802E703C_32B18C);
	func_80081F18_90EC8(arg1, 1, 9, &sp2E, (Unk8014DD50 **)&D_802E7044_32B194);
	if ((alienInstances[arg0].unk36 >= 2) && (alienInstances[arg0].unk36 < 0xB) && (D_80052A8C % 3U == 0)) {
		func_802E1324_325474(arg1);
	}
	if (sp27 == 0xC) {
		return 0;
	}
	return 1;
}

#ifdef NON_MATCHING
s32 func_802E14F4_325644(u8 arg0) {
	AlienInstance *inst;
	AlienInstance *parentInst;
	u8 parentIdx;
	u8 grandparentIdx;

	inst = &alienInstances[arg0];
	parentIdx = inst->unk25;
	parentInst = &alienInstances[parentIdx];
	grandparentIdx = parentInst->unk25;
	inst->unk2C++;

	if (inst->unk2C >= 0x51 || ((u8 *)&alienInstances[grandparentIdx])[1] == (u8)0xFF && inst->unk2C >= 0x33) {
		if (func_80084FE8_93F98(parentIdx, 0x800) != 0) {
			inst->unk26 = 4;
			inst->unk2C = 0;
		}
	}

	if (inst->unk26 > 0) {
		if (func_80084FE8_93F98(parentIdx, 0x800) != 0 && !(parentInst->unk47 & 1) && (D_80052A8C & 1)) {
			osSyncPrintf(&D_802E7AD0_32BC20);
			inst->unk26--;
			return 1;
		}
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E14F4_325644.s")
#endif

void func_802E1630_325780(u8 arg0) {
	alienInstances[arg0].unk1E = 0;
	func_800868A4_95854(arg0, 0, 0, alienInstances[arg0].unkA + func_80003824_4424(110.0f, 80.0f));
}

// CURRENT(370)
#ifdef NON_MATCHING
s32 func_802E16A8_3257F8(u8 arg0, u8 arg1) {
	s16 sp4E;
	s16 sp4C;
	s32 sp48;
	s32 sp44;
	s32 sp40;
	s32 sp3C;
	s32 sp38;
	s32 sp34;
	s8 sp33;
	AlienInstance *inst;
	AlienInstance *parentInst;

	inst = &alienInstances[arg0];
	if (inst->unk4B < 8) {
		parentInst = &alienInstances[arg1];
		func_80128428_1373D8(parentInst, 8, -0x2E, 0x44, &sp3C, &sp38, &sp34);
		func_80128428_1373D8(parentInst, 8, -0x31, 0x89, &sp48, &sp44, &sp40);
		func_800D16BC_E066C((s16)sp48, (s16)sp44, (s16)sp40, (s16)sp3C, sp38, sp34, 1);
		func_80128428_1373D8(parentInst, 0x30, -0x51, 0x71, &sp48, &sp44, &sp40);
		func_800D16BC_E066C((s16)sp48, (s16)sp44, (s16)sp40, (s16)sp3C, sp38, sp34, 1);
		func_80128428_1373D8(parentInst, 7, -0x72, 0x58, &sp48, &sp44, &sp40);
		func_800D16BC_E066C((s16)sp48, (s16)sp44, (s16)sp40, (s16)sp3C, sp38, sp34, 1);
		func_80128428_1373D8(parentInst, -0x20, -0x51, 0x71, &sp48, &sp44, &sp40);
		func_800D16BC_E066C((s16)sp48, (s16)sp44, (s16)sp40, (s16)sp3C, sp38, sp34, 1);
	}
	sp4C = func_802DFFC8_324118(arg0);
	sp4E = *(s8 *)((u8 *)D_8014DD5C + sp4C * 0x10);
	sp33 = func_80082084_91034(arg0, 2, 9, &sp4C, &D_802E6D58_32AEA8);
	if (sp33 == 3 || sp33 == 5 || sp33 == 7) {
		func_802E1630_325780(arg1);
		inst->unk12 -= 0x280;
	}
	if (sp33 == 9) {
		return 0;
	}
	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E16A8_3257F8.s")
#endif

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

void func_802E19EC_325B3C(u8 arg0) {
	u8 specIndex;
	Unk802E71B8 sp28;
	s32 sp1C[3];

	specIndex = alienInstances[arg0].specIndex;
	sp28 = D_802E7188_32B2D8;
	alienInstances[arg0].unk1E = 0;
	func_800A931C_B82CC(((s8 *)&alienInstances[arg0])[0x0D], (s16 *)&sp28, sp1C);
	alienSpecs[specIndex].unk20 = (s16)sp1C[0];
	alienSpecs[specIndex].unk22 = (s16)sp1C[1];
	alienSpecs[specIndex].unk24 = (s16)sp1C[2];
	func_800868A4_95854(arg0, 0, (s16)(-(s32)(u16)D_8014DD50[alienInstances[arg0].unkC].unk6), (s16)(alienInstances[arg0].unkA + (u16)D_8014DD50[alienInstances[arg0].unkC].unkA + 0xFA0));
}

// CURRENT(5000)
#ifdef NON_MATCHING
s32 func_802E1AE4_325C34(u8 arg0, u8 arg1) {
	s16 sp40[3];
	volatile Unk802E71B8 sp38;
	s32 pad0;
	s32 temp_v0;
	s32 temp_v0_2;
	s16 temp_v1;
	s32 result;

	sp38.unk0 = D_802E7190_32B2E0.unk0;
	sp38.unk4 = D_802E7190_32B2E0.unk4;

	temp_v0 = func_802DFF84_3240D4(arg0);

	sp40[0] = (s16)temp_v0;
	sp40[1] = (s16)(s8)D_8014DD5C[(s16)temp_v0 * 0x10];
	sp40[2] = alienInstances[arg1].unkC;

	temp_v0_2 = func_800860CC_9507C(alienInstances[arg1].unk0, alienInstances[arg1].unk2, alienInstances[arg1].unk4);

	temp_v1 = temp_v0_2 + 0x1388;
	D_802E70C8_32B218.unk0A = temp_v0_2 + 0x1770;
	D_802E70C8_32B218.unk1A = temp_v1;
	D_802E70C8_32B218.unk3A = temp_v1;
	D_802E70C8_32B218.unk5A = temp_v1;

	result = func_80081F18_90EC8(arg0, 2, 8, sp40, &D_802E7148_32B298);

	if (result == 2 || (s8)result == 4 || (s8)result == 6) {
		func_802E19EC_325B3C(arg1);
		alienInstances[arg0].unk12 -= 0x280;
	}

	if ((s8)result == 8) {
		return 0;
	}
	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1AE4_325C34.s")
#endif

// CURRENT(500)
#ifdef NON_MATCHING
s32 func_802E1C34_325D84(u8 arg0) {
	AlienInstance *inst;
	u8 parentIdx;
	u8 grandparentIdx;

	inst = &alienInstances[arg0];
	parentIdx = inst->unk25;
	grandparentIdx = alienInstances[parentIdx].unk25;
	inst->unk2C++;

	if (inst->unk2C >= 0x51 || ((u8 *)&alienInstances[grandparentIdx])[2] == (u8)0xFF && inst->unk2C >= 0x33) {
		inst->unk2C = 0;
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1C34_325D84.s")
#endif

#ifdef NON_MATCHING
void func_802E1CC0_325E10(u8 arg0) {
	u8 specIndex;
	Unk802E71B8 sp78;
	s32 sp6C[3];
	s32 sp68;
	s32 sp64;
	s32 sp60;
	f32 sp5C;
	f32 sp58;

	specIndex = alienInstances[arg0].specIndex;
	sp78.unk0 = D_802E7198_32B2E8.unk0;
	alienInstances[arg0].unk1E = 0;
	sp78.unk4 = D_802E7198_32B2E8.unk4;
	func_800A931C_B82CC(((s8 *)&alienInstances[arg0])[0x0D], (s16 *)&sp78, sp6C);
	alienSpecs[specIndex].unk20 = (s16)sp6C[0];
	alienSpecs[specIndex].unk22 = (s16)sp6C[1];
	alienSpecs[specIndex].unk24 = (s16)sp6C[2];
	func_800868A4_95854(arg0, 0, (s16)((s32)D_8014DD50[alienInstances[arg0].unkC].unk6 * -1), (s16)(D_8014DD50[alienInstances[arg0].unkC].unkA + alienInstances[arg0].unkA));
	func_80135D44_144CF4(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 3.0f);
	sp5C = (f32)((f64)(f32)sins((alienInstances[arg0].unk6 + 0x4000) & 0xFFFF) / 32768.0);
	sp58 = (f32)-((f64)(f32)coss((alienInstances[arg0].unk6 + 0x4000) & 0xFFFF) / 32768.0);
	func_80128428_1373D8(&alienInstances[arg0], alienSpecs[specIndex].unk20, alienSpecs[specIndex].unk22, alienSpecs[specIndex].unk24, &sp68, &sp64, &sp60);
	func_800C541C_D43CC((s16)sp68, (s16)sp64, (s16)sp60, (s8)(s32)(sp5C * 127.0f), 0x28, (s8)(s32)(sp58 * 127.0f), 0x64, 0x4B, 0x0A, 0x06, 0xFF, 0xFF, 0xFF);
	func_80137468_146418(arg0, 0x25C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1CC0_325E10.s")
#endif

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

s32 func_802E1FE0_326130(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];
	AlienInstance *parent = &alienInstances[alien->unk25];

	if (((u32)D_80052A8C % 60U) == 0 || ((u8 *)parent)[0] == 0xFF) {
		alien->unk1E = 20;
		return 1;
	}
	return 0;
}

// CURRENT(4538)
#ifdef NON_MATCHING
void func_802E205C_3261AC(u8 arg0) {
	u8 specIndex;
	s32 sp38[3];
	s16 temp_v0;
	Unk802E71B8 sp2C;
	Unk802E71B8 sp24;
	s32 temp_v1_s32;

	specIndex = alienInstances[arg0].specIndex;
	sp2C.unk0 = D_802E71A0_32B2F0.unk0;
	sp2C.unk4 = D_802E71A0_32B2F0.unk4;
	sp24.unk0 = D_802E71A8_32B2F8.unk0;
	temp_v0 = func_802DFF04_324054(arg0);
	sp24.unk4 = D_802E71A8_32B2F8.unk4;

	temp_v1_s32 = (s32)D_8014DD50[(u16)temp_v0].unkC;
	func_800A931C_B82CC((s8)temp_v1_s32, (s16 *)&sp2C, sp38);

	*(s16 *)&sp2C = (s16)sp38[0];
	*((s16 *)&sp2C + 1) = (s16)sp38[1];
	sp2C.unk4 = (s16)sp38[2];

	func_800A931C_B82CC(*((s8 *)&temp_v0 + 1), (s16 *)&sp2C, sp38);

	alienSpecs[specIndex].unk20 = (s16)sp38[0];
	alienSpecs[specIndex].unk22 = (s16)sp38[1];
	alienSpecs[specIndex].unk24 = (s16)sp38[2];

	func_800A931C_B82CC(*((s8 *)&temp_v1_s32 + 3), (s16 *)&sp24, sp38);

	*(s16 *)&sp24 = (s16)sp38[0];
	*((s16 *)&sp24 + 1) = (s16)sp38[1];
	sp24.unk4 = (s16)sp38[2];

	func_800A931C_B82CC(*((s8 *)&temp_v0 + 3), (s16 *)&sp24, sp38);

	alienSpecs[specIndex].unk2C = (s16)sp38[0];
	alienSpecs[specIndex].unk2E = (s16)sp38[1];
	alienSpecs[specIndex].unk30 = (s16)sp38[2];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E205C_3261AC.s")
#endif

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

// CURRENT(572)
#ifdef NON_MATCHING
s32 func_802E22A4_3263F4(u8 arg0) {
	s16 val;
	s32 result;
	AlienInstance *alien = &alienInstances[arg0];
	AlienInstance *parentAlien = &alienInstances[alien->unk25];

	func_802E21C4_326314(arg0);

	if (alien->unk1E != 0) {
		alien->unk1E--;
	}

	if (*(u8 *)parentAlien != 0xFF) {
		val = *(s16 *)((u8 *)&D_800481A4 + *(u8 *)parentAlien * 0x50);
		result = func_80081F18_90EC8(arg0, 1, 3, &val, &D_802E7180_32B2D0);
		if (result == 2) {
			alien->unk1E = 0x64;
		}
		if (result == 3) {
			return 0;
		}
		return 1;
	}

	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E22A4_3263F4.s")
#endif

void func_802E1630_325780(u8 arg0);
void func_802E19EC_325B3C(u8 arg0);
void func_802E1CC0_325E10(u8 arg0);

// CURRENT(11946)
#ifdef NON_MATCHING
void func_802E2390_3264E0(u8 arg0) {
	s16 sp7C[7];
	s8 sp7B;
	AlienInstance *alien;
	AlienInstance *parent;
	s32 temp_s0;

	sp24 = &alienInstances[arg0];
	parent = &alienInstances[alien->unk25];

	if (((u8 *)parent)[1] == (u8)0xFF || ((u8 *)parent)[2] == (u8)0xFF) {
		parent->unk20 &= 0xFFFBFFFF;
		return;
	}

	temp_s0 = parent->unk20;
	if (temp_s0 & 0x40000) {
		s32 temp_s3;
		s32 temp_s2;
		s32 temp_s1;

		D_802571B8 = 0;

		temp_s0 = (s16)func_802DFF04_324054(arg0);
		sp7C[0] = temp_s0;
		sp7C[1] = D_8014DD50[temp_s0].unkC;
		sp7C[2] = D_8014DD50[D_8014DD50[temp_s0].unkC].unkC;
		sp7C[3] = D_8014DD50[D_8014DD50[temp_s0].unkC].unkD;
		sp7C[4] = D_8014DD50[D_8014DD50[D_8014DD50[temp_s0].unkC].unkD].unkC;
		sp7C[5] = D_8014DD50[D_8014DD50[D_8014DD50[temp_s0].unkC].unkD].unkD;
		sp7C[6] = D_8014DD50[D_8014DD50[D_8014DD50[D_8014DD50[temp_s0].unkC].unkD].unkC].unkC;

		sp7B = func_80081F18_90EC8(arg0, 7, 8, sp7C, &D_802E6C18_32AD68);
		if (sp7B == 1) {
			func_80137468_146418(arg0, 0x11);

			if (alien->unk26 == 0) {
				temp_s0 = alien->unk3C;
				if (temp_s0 == 0) {
					temp_s3 = (s32)((f64)(f32)sins(alien->unk6) / 32768.0 * 800.0);
					temp_s0 = alien->unk0 + temp_s3;
					temp_s2 = alien->unk4 + (s32)((f64)(f32)coss(alien->unk6) / 32768.0 * -800.0);
					if (func_802E00D0_324220(temp_s0, temp_s2) != 0) {
						func_800AFB38_BEAE8(temp_s0, temp_s2, 0xC, arg0, 0);
						alien->unk26++;
					}
					temp_s3 = (s32)((f64)(f32)sins((alien->unk6 + 0x8000) & 0xFFFF) / 32768.0 * 800.0);
					temp_s0 = alien->unk0 + temp_s3;
					temp_s2 = alien->unk4 + (s32)((f64)(f32)coss((alien->unk6 + 0x8000) & 0xFFFF) / 32768.0 * -800.0);
					if (func_802E00D0_324220(temp_s0, temp_s2) != 0) {
						func_800AFB38_BEAE8(temp_s0, temp_s2, 0xC, arg0, 0);
						alien->unk26++;
					}
					alien->unk3C = 1;
				} else if (temp_s0 == 1) {
					for (temp_s2 = 0; temp_s2 < 3; temp_s2++) {
						temp_s3 = (s32)((f64)(f32)sins((alien->unk6 + (temp_s2 << 0xD) + 0x2000) & 0xFFFF) / 32768.0 * 800.0);
						temp_s0 = alien->unk0 + temp_s3;
						temp_s1 = alien->unk4 + (s32)((f64)(f32)coss((alien->unk6 + (temp_s2 << 0xD) + 0x2000) & 0xFFFF) / 32768.0 * -800.0);
						if (func_802E00D0_324220(temp_s0, temp_s1) != 0) {
							func_800AFB38_BEAE8(temp_s0, temp_s1, 9, arg0, 0);
							alien->unk26++;
						}
					}
					alien->unk3C = 2;
				} else if (temp_s0 == 2) {
					for (temp_s2 = 0; temp_s2 < 6; temp_s2++) {
						temp_s3 = (s32)((f64)(f32)sins((temp_s2 * 0x2AAA) & 0xFFFF) / 32768.0 * 800.0);
						temp_s0 = alien->unk0 + temp_s3;
						temp_s1 = alien->unk4 + (s32)((f64)(f32)coss((temp_s2 * 0x2AAA) & 0xFFFF) / 32768.0 * 800.0);
						if (func_802E00D0_324220(temp_s0, temp_s1) != 0) {
							func_800AFB38_BEAE8(temp_s0, temp_s1, 0xA, arg0, 0);
							alien->unk26++;
						}
					}
					alien->unk3C = 0;
				}
			}
		}

		if (sp7B == 5) {
			if (alienInstances[((u8 *)parent)[1]].specIndex == 0x1D) {
				func_802E1630_325780(((u8 *)parent)[1]);
			} else {
				func_802E1CC0_325E10(((u8 *)parent)[1]);
			}
			if (alienInstances[((u8 *)parent)[2]].specIndex == 0x1E) {
				func_802E1324_325474(((u8 *)parent)[2]);
			} else {
				func_802E19EC_325B3C(((u8 *)parent)[2]);
			}
			alien->unk12 -= 0x280;
		}

		if (sp7B == 8) {
			parent->unk20 &= 0xFFFBFFFF;
			alienInstances[((u8 *)parent)[1]].unk20 &= 0xFFBFFFFF;
			alienInstances[((u8 *)parent)[2]].unk20 &= 0xFFBFFFFF;
		}
	} else if (alien->unk26 == 0 && alien->unk2C == 0 && !(temp_s0 & 0x1F000) && func_80084FE8_93F98(arg0, 0x800) != 0) {
		if (((u8 *)parent)[1] != (u8)0xFF && ((u8 *)parent)[2] != (u8)0xFF) {
			if ((alienInstances[((u8 *)parent)[1]].specIndex != 0x1F || (alienInstances[((u8 *)parent)[1]].unk20 & 0x4000)) &&
				(alienInstances[((u8 *)parent)[2]].specIndex != 0x22 || (alienInstances[((u8 *)parent)[2]].unk20 & 0x4000))) {
				parent->unk20 |= 0x40000;
				alien->unk36 = 0;
				alien->unk2C = (func_800038E0_44E0() % 100) + 0x64;
				alienInstances[((u8 *)parent)[1]].unk20 |= 0x400000;
				alienInstances[((u8 *)parent)[2]].unk20 |= 0x400000;
			}
		}
	} else {
		D_802571B8 = 0x300;
	}

	if (alien->unk26 == 0) {
		if (alien->unk2C != 0) {
			alien->unk2C--;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E2390_3264E0.s")
#endif

// CURRENT(7000)
#ifdef NON_MATCHING
void func_802E2B78_326CC8(u8 arg0) {
	s32 sp2C;
	s32 sp28;
	AlienInstance *alien;
	AlienInstance *parent;
	s16 sp3A;

	alien = &alienInstances[arg0];
	sp3A = func_802DFF04_324054(arg0);
	if (D_802571B2 < alien->hitPoints) {
		alien->hitPoints = D_802571B2;
	}
	if (D_802E4E80 == 0) {
		func_8011C080_12B030(0x71);
		func_8011C080_12B030(0x7A);
		func_8011C080_12B030(0x91);
		func_8011C080_12B030(0x9A);
		D_802E4E80 = 1;
		func_80137468_146418(arg0, 0x11);
	}
	if (D_802E7C58 == 0x100) {
		parent = &alienInstances[alien->unk25];
		func_800A92E0_B8290(arg0, 0x1000);
		if (alien->unk12 == 0) {
			func_80137468_146418(arg0, 0x25D);
			func_80137468_146418(arg0, 0x270);
		} else {
			func_80137468_146418(arg0, 0x25E);
			func_80137468_146418(arg0, 0x269);
		}
		func_802E0588_3246D8(arg0);
		func_802E0B64_324CB4(arg0);
		if (func_802E0018_324168(arg0) != 0) {
			alien->unk47 |= 1;
			func_8007ED9C_8DD4C(arg0);
		}
		func_802E2390_3264E0(arg0);
		if (D_802E6810 == 0) {
			func_80085E2C_94DDC(arg0, D_8014DD50[sp3A].unkC, 0x3000);
			D_8014DD50[D_8014DD50[sp3A].unkC].unkA = func_80085A9C_94A4C(D_8014DD50[D_8014DD50[sp3A].unkC].unkA, func_80085C50_94C00(alien->unk0, (s16)(D_8014DD50[D_8014DD50[sp3A].unkC].unk2 + alien->unk2 + D_8014DD50[sp3A].unk2), alien->unk4, D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4), 0x71C, -0x1555, 0x100);
		}
		sp3A = alien->unk3A;
		if (sp3A >= 3) {
			alien->unk3A = sp3A - 2;
			sp3A = sp3A - 2;
		}
		if (sp3A < 3 && (parent->unk20 & 0x5E000)) {
			alien->unk3A = 2;
		}
		if (!(parent->unk20 & 0x1000)) {
			if (alien->unk26 != 0) {
				if ((s32)func_80084E54_93E04((VehicleInstance *)alien, (AlienInstance *)D_80052B34) >= 0x7D1) {
					func_8008751C_964CC(arg0, 0x320, 0x3E8);
				} else {
					func_800808F0_8F8A0(arg0, &alien->unkE);
					alien->unk12 = 0;
				}
			} else {
				func_8008751C_964CC(arg0, 0x3E8, 0x578);
			}
			if (alien->unk26 == 0 && ((u8 *)parent)[1] == 0xFF && (((u8 *)parent)[0] == 0xFF || !(alienInstances[((u8 *)parent)[0]].unk20 & ALIEN_FLAG_INVINCIBLE)) && ((func_80085340_942F0(arg0, 0x2000) != 0 && alien->unk24 == 0 && (func_800038E0_44E0() % 50) == 0) || (alien->unk47 & 8))) {
				func_802E0234_324384(arg0);
				alien->unk24 = 0x3C;
			}
			if (alien->unk24 != 0) {
				alien->unk24--;
			}
			if (parent->unk20 & ALIEN_FLAG_UNKK) {
				if (func_802E22A4_3263F4(arg0) == 0) {
					parent->unk20 &= ~ALIEN_FLAG_UNKK;
				}
			}
			if (parent->unk20 & ALIEN_FLAG_UNKE) {
				if (alienInstances[((u8 *)parent)[1]].specIndex == 0x1D) {
					if (func_802E16A8_3257F8(arg0, ((u8 *)parent)[1]) == 0) {
						parent->unk20 &= ~ALIEN_FLAG_UNKE;
					}
				} else {
					parent->unk20 &= ~ALIEN_FLAG_UNKE;
				}
			}
			if (parent->unk20 & ALIEN_FLAG_UNKF) {
				if (alienInstances[((u8 *)parent)[2]].specIndex == 0x1E) {
					if (func_802E13D4_325524(arg0, ((u8 *)parent)[2]) == 0) {
						parent->unk20 &= ~ALIEN_FLAG_UNKF;
					}
				} else {
					parent->unk20 &= ~ALIEN_FLAG_UNKF;
				}
			}
			if (parent->unk20 & ALIEN_FLAG_UNKG) {
				if (alienInstances[((u8 *)parent)[1]].specIndex == 0x1F) {
					if (func_802E1EFC_32604C(arg0, ((u8 *)parent)[1]) == 0) {
						parent->unk20 &= ~ALIEN_FLAG_UNKG;
					}
				} else {
					parent->unk20 &= ~ALIEN_FLAG_UNKG;
				}
			}
			if (parent->unk20 & ALIEN_FLAG_UNKH) {
				if (alienInstances[((u8 *)parent)[2]].specIndex == 0x22) {
					if (func_802E1AE4_325C34(arg0, ((u8 *)parent)[2]) == 0) {
						parent->unk20 &= ~ALIEN_FLAG_UNKH;
					}
				} else {
					parent->unk20 &= ~ALIEN_FLAG_UNKH;
				}
			}
		}
		if (!(parent->unk20 & ALIEN_FLAG_UNKJ)) {
			if (((u8 *)parent)[0] == 0xFF || !(alienInstances[((u8 *)parent)[0]].unk20 & ALIEN_FLAG_INVINCIBLE)) {
				if (!(parent->unk20 & ALIEN_FLAG_UNKK)) {
					if (func_802E1FE0_326130(arg0) != 0) {
						alien->unk36 = 0;
						parent->unk20 |= ALIEN_FLAG_UNKK;
					}
				}
			}
			if (alienInstances[((u8 *)parent)[1]].specIndex == 0x1D) {
				if (func_802E14F4_325644(((u8 *)parent)[1]) != 0 && !(parent->unk20 & ALIEN_FLAG_UNKE)) {
					alien->unk4B = 0;
					parent->unk20 |= ALIEN_FLAG_UNKE;
				}
			}
			if (alienInstances[((u8 *)parent)[2]].specIndex == 0x1E) {
				if (func_802E1274_3253C4(((u8 *)parent)[2]) != 0 && !(parent->unk20 & ALIEN_FLAG_UNKF)) {
					alien->unk36 = 0;
					alienInstances[((u8 *)parent)[2]].unk36 = 0;
					parent->unk20 |= ALIEN_FLAG_UNKF;
				}
			}
			if (alienInstances[((u8 *)parent)[1]].specIndex == 0x1F) {
				if (func_802E1C34_325D84(((u8 *)parent)[1]) != 0 && (alienInstances[((u8 *)parent)[1]].unk20 & ALIEN_FLAG_UNKF) && !(parent->unk20 & ALIEN_FLAG_UNKG)) {
					alien->unk4B = 0;
					parent->unk20 |= ALIEN_FLAG_UNKG;
				}
			}
			if (alienInstances[((u8 *)parent)[2]].specIndex == 0x22) {
				if (func_802E193C_325A8C(((u8 *)parent)[2]) != 0 && (alienInstances[((u8 *)parent)[2]].unk20 & ALIEN_FLAG_UNKF) && !(parent->unk20 & ALIEN_FLAG_UNKH)) {
					alien->unk36 = 0;
					parent->unk20 |= ALIEN_FLAG_UNKH;
				}
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E2B78_326CC8.s")
#endif

// CURRENT(4605)
#ifdef NON_MATCHING
void func_802E33B0_327500(u8 arg0) {
	s32 temp_v0;
	s8 temp_v1;
	s32 sp2C[3];
	Unk802E71B8 sp24;

	sp24.unk0 = D_802E71B0_32B300.unk0;
	sp24.unk4 = D_802E71B0_32B300.unk4;

	temp_v0 = func_802DFF04_324054(alienInstances[arg0].unk25);
	temp_v1 = *(s8 *)((u8 *)D_8014DD5C + temp_v0 * 16);

	func_800A931C_B82CC(temp_v1, (s16 *)&sp24, sp2C);

	*(s16 *)&sp24 = (s16)sp2C[0];
	*((s16 *)&sp24 + 1) = (s16)sp2C[1];
	sp24.unk4 = (s16)sp2C[2];

	func_800A931C_B82CC((s8)temp_v0, (s16 *)&sp24, sp2C);

	sp2C[0] = (s32)((f32)sp2C[0] * D_802E6814_32A964);
	sp2C[1] = (s32)((f32)sp2C[1] * D_802E6814_32A964);
	sp2C[2] = (s32)((f32)sp2C[2] * D_802E6814_32A964);

	func_800A93A4_B8354(arg0, (s16)sp2C[0], (s16)sp2C[1], (s16)sp2C[2]);

	alienInstances[arg0].unkA += *(u16 *)&D_8014DD50[temp_v0].unkA + *(u16 *)&D_8014DD50[temp_v1].unkA;
	alienInstances[arg0].unk6 -= *(u16 *)&D_8014DD50[temp_v0].unk6 + *(u16 *)&D_8014DD50[temp_v1].unk6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E33B0_327500.s")
#endif

void func_802E3550_3276A0(u8 arg0) {
	func_800A93A4_B8354(arg0, -0x3B, 0x117, 0xA9);
}

// CURRENT(983)
#ifdef NON_MATCHING
void func_802E3584_3276D4(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
	s16 pad;
	s16 sp34;
	s32 sp2C[3];
	s16 sp20[3];
	Unk8014DD50 *temp_ptr;

	temp_ptr = &D_8014DD50[*((s16 *)&arg2 + 1)];
	sp34 = temp_ptr->unkC;

	func_800A931C_B82CC((s8)(s32)temp_ptr->unkC, (s16 *)arg3, sp2C);

	sp20[0] = (s16)sp2C[0];
	sp20[1] = (s16)sp2C[1];
	sp20[2] = (s16)sp2C[2];
	func_800A931C_B82CC(*((s8 *)&arg2 + 3), sp20, sp2C);

	sp20[0] = (s16)sp2C[0];
	sp20[1] = (s16)sp2C[1];
	sp20[2] = (s16)sp2C[2];
	func_800A931C_B82CC(*((s8 *)&arg1 + 3), sp20, sp2C);

	sp20[0] = (s16)sp2C[0];
	sp20[1] = (s16)sp2C[1];
	sp20[2] = (s16)sp2C[2];

	sp2C[0] = (s32)((f32)sp2C[0] * D_802E6814_32A964);
	sp2C[1] = (s32)((f32)sp2C[1] * D_802E6814_32A964);
	sp2C[2] = (s32)((f32)sp2C[2] * D_802E6814_32A964);

	func_800A93A4_B8354(*((u8 *)&arg0 + 3), (s16)sp2C[0], (s16)sp2C[1], (s16)sp2C[2]);

	alienInstances[*((u8 *)&arg0 + 3)].unkA += *(u16 *)&D_8014DD50[*((s16 *)&arg1 + 1)].unkA + *(u16 *)&temp_ptr->unkA + *(u16 *)&D_8014DD50[sp34].unkA;
	alienInstances[*((u8 *)&arg0 + 3)].unk6 -= *(u16 *)&D_8014DD50[*((s16 *)&arg1 + 1)].unk6 + *(u16 *)&temp_ptr->unk6 + *(u16 *)&D_8014DD50[sp34].unk6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3584_3276D4.s")
#endif

#ifdef NON_MATCHING
void func_802E3744_327894(s32 arg0) {
	Unk802E71B8 sp20;
	s32 temp_v0;

	sp20.unk0 = D_802E71B8_32B308.unk0, sp20.unk4 = D_802E71B8_32B308.unk4;
	temp_v0 = func_802DFF04_324054(D_800481BD[(arg0 & 0xFF) * 0x50]);
	func_802E3584_3276D4(arg0 & 0xFF, (s16)temp_v0, D_8014DD50[D_8014DD50[temp_v0].unkC].unkD, &sp20);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3744_327894.s")
#endif

void func_802E37D4_327924(u8 arg0) {
	func_800A93A4_B8354(arg0, -0x96, -0x25, 0xD4);
}

#ifdef NON_MATCHING
void func_802E3808_327958(s32 arg0) {
	Unk802E71B8 sp20;
	s32 temp_v0;
	s8 temp;
	s8 temp2;

	sp20.unk0 = D_802E71C0_32B310.unk0, sp20.unk4 = D_802E71C0_32B310.unk4;

	temp_v0 = func_802DFF04_324054(D_800481BD[(*((u8 *)&arg0 + 3)) * 0x50]);

	temp = D_8014DD50[temp_v0].unkC;
	temp2 = D_8014DD50[temp].unkD;
	temp = D_8014DD50[temp2].unkD;

	func_802E3584_3276D4(*((u8 *)&arg0 + 3), (s16)temp_v0, temp, &sp20);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3808_327958.s")
#endif

void func_802E38A4_3279F4(u8 arg0) {
	func_800A93A4_B8354(arg0, 0x91, -0x25, 0xBB);
}

#ifdef NON_MATCHING
void func_802E38D8_327A28(u8 arg0) {
	s32 sp38[2];
	s32 temp_v0;
	s8 temp;

	sp38[0] = D_802E71C8_32B318.unk0;
	*(u16 *)&sp38[1] = D_802E71C8_32B318.unk4;

	temp_v0 = func_802DFF04_324054(alienInstances[arg0].unk25);

	temp = D_8014DD50[temp_v0].unkC;
	temp = D_8014DD50[temp].unkD;

	func_802E3584_3276D4(arg0, (s16)temp_v0, temp, (s32)sp38);

	if (D_802E7C54 < 0x100) {
		func_800C56A4_D4654(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (s16)(D_802E7C54 + 0x64), 0xF, 3, 0x28);
		D_802E7C54 += 2;
	} else if (!(alienInstances[arg0].unk20 & 0x4000)) {
		alienInstances[arg0].unk20 = (alienInstances[arg0].unk20 | 0x4000) & 0xFFBFFFFF;
	}

	func_80004214_4E14((s16)D_802E7C54, func_80011F90_12B90(D_D040F50));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E38D8_327A28.s")
#endif

void func_802E3A18_327B68(u8 arg0) {
	func_800A93A4_B8354(arg0, -0x96, -0x25, 0xD4);
}

#ifdef NON_MATCHING
void func_802E3A4C_327B9C(s32 arg0) {
	Unk802E71B8 sp70;
	AlienInstance *s0;
	AlienInstance *sp4C;
	s32 sp68;
	s32 sp64;
	s32 sp60;
	s32 sp5C;
	s32 sp58;
	s32 sp54;
	f32 sp48;
	s32 rnd;

	sp70.unk0 = D_802E71D0_32B320.unk0;
	sp70.unk4 = D_802E71D0_32B320.unk4;
	s0 = &alienInstances[arg0 & 0xFF];
	sp4C = &alienInstances[alienInstances[s0->unk25].unk25];

	rnd = func_802DFF04_324054(s0->unk25);
	func_802E3584_3276D4(arg0 & 0xFF, (s16)rnd, D_8014DD50[D_8014DD50[D_8014DD50[rnd].unkC].unkD].unkD, &sp70);

	if (!(sp4C->unk20 & 0x8000)) {
		rnd = func_800038E0_44E0();
		if (rnd < 0) {
			if ((rnd & 7) != 0) {
				rnd = (rnd & 7) - 8;
			} else {
				rnd = 0;
			}
		} else {
			rnd = rnd & 7;
		}
		rnd += 8;
		if (!(rnd & D_80052A8C)) {
			s16 coss_val;
			s16 sins_val;

			rnd = func_800038E0_44E0();
			sp48 = (f32)((f64)D_802E7C50 * (1.0 / 256.0));
			coss_val = coss((u16)rnd);
			sins_val = sins((u16)rnd);

			func_80128428_1373D8(s0,
				(s16)(s32)((((f64)(f32)coss_val / 32768.0) * 68.0 + 7.0) * (f64)sp48),
				(s16)(s32)((((f64)(f32)sins_val / 32768.0) * 68.0 + -11.0) * (f64)sp48),
				(s16)(s32)(sp48 * 130.0f), &sp68, &sp64, &sp60);

			coss_val = coss((u16)rnd);
			sins_val = sins((u16)rnd);

			func_80128428_1373D8(s0,
				(s16)(s32)((((f64)(f32)coss_val / 32768.0) * D_802E7C28_32BD78 + 7.0) * (f64)sp48),
				(s16)(s32)((((f64)(f32)sins_val / 32768.0) * D_802E7C28_32BD78 + -20.0) * (f64)sp48),
				(s16)(s32)(sp48 * 328.0f), &sp5C, &sp58, &sp54);

			func_800D16BC_E066C((s16)sp68, (s16)sp64, (s16)sp60, (s16)sp5C, sp58, sp54, 2);
		}
	}

	if (D_802E7C50 < 0x100) {
		func_800C56A4_D4654(s0->unk0, s0->unk2, s0->unk4, (s16)(D_802E7C50 + 0x64), 0xF, 3, 0x28);
		D_802E7C50 += 2;
	} else {
		if (!(s0->unk20 & 0x4000)) {
			s0->unk20 |= 0x4000;
			s0->unk20 &= 0xFFBFFFFF;
		}
	}

	func_80004214_4E14(D_802E7C52, func_80011F90_12B90(&D_D040F10));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3A4C_327B9C.s")
#endif

void func_802E3E30_327F80(u8 arg0) {
	func_800A93A4_B8354(arg0, 0x91, -0x25, 0xBB);
}

// CURRENT(5525)
#ifdef NON_MATCHING
void func_802E3E64_327FB4(u8 arg0) {
	s16 sp94;
	s16 sp84[8];
	s32 sp4C;
	f32 sp58;
	s32 sp5C;
	s32 sp60;
	s32 sp64;
	s8 result;
	s32 temp_v0;
	s8 temp_t2;
	s8 temp_t3;
	s8 temp_t4;
	s8 temp_t5;
	s8 temp_t7;
	AlienInstance *s0;

	s0 = &alienInstances[arg0];
	sp94 = D_8014DD50[func_802DFF04_324054(arg0)].unkC;

	if (!(s0->unk20 & 0x100000)) {
		s0->unk20 &= ~0x1000;
		s0->unk2C = 0x12C;
		func_800DF038_EDFE8(s0->unk0, s0->unk2, s0->unk4, *(u16 *)&alienSpecs[s0->specIndex].unkC, 3, 0);
		D_8014D17C = 0;
		func_80088000_96FB0(arg0);
		D_8013FD78_14ED28->unk3C = 0;
		return;
	}

	func_802E205C_3261AC(arg0);

	if (D_8014D17C == 0 && !(D_80052A8C & 3) && (D_80031420 & 3)) {
		Unk8014DD50 *temp_ptr;

		func_80128504_1374B4(s0, 0, &sp64, &sp60, &sp5C);

		temp_ptr = &D_8014DD50[sp94];
		sp58 = (f32)((f64)(f32)sins((u16)-(s32)(u16)temp_ptr->unk6) / 32768.0);
		coss((u16)-(s32)(u16)temp_ptr->unk6);

		sp4C = (s32)(s8)(s32)(sp58 * 128.0f);
		func_800CA5EC_D959C((s16)sp64, (s16)sp60, (s16)sp5C, (s8)sp4C, 0x28, (s8)sp4C, 0x28, 6, 8, 0x78, 0xFF, 0, 0, 0xFF);

		func_80128504_1374B4(s0, 1, &sp64, &sp60, &sp5C);

		func_800CA5EC_D959C((s16)sp64, (s16)sp60, (s16)sp5C, (s8)sp4C, 0x28, (s8)sp4C, 0x28, 6, 8, 0x78, 0xFF, 0, 0, 0xFF);
	}

	if (s0->unk2C == 0x10E) {
		s0->unk36 = 0;
		s0->unk20 |= 0x1000;
	}

	if (s0->unk20 & 0x1000) {
		temp_v0 = (sp84[0] = D_8014DD50[D_8014DD50[s0->unkC].unkC].unkD, func_802DFF04_324054(arg0));
		temp_t2 = D_8014DD50[temp_v0].unkC;
		temp_t3 = D_8014DD50[temp_t2].unkD;
		temp_t5 = D_8014DD50[temp_t2].unkC;
		sp84[3] = (s16)temp_t5;
		temp_t4 = D_8014DD50[temp_t3].unkD;
		temp_t7 = D_8014DD50[temp_t3].unkC;

		sp84[2] = (s16)temp_t2;
		sp84[4] = (s16)temp_t3;
		sp84[6] = (s16)temp_t4;
		sp84[5] = (s16)temp_t7;
		sp84[7] = (s16)D_8014DD50[temp_t4].unkC;
		sp84[1] = (s16)temp_v0;

		result = func_80081F18_90EC8(arg0, 8, 9, sp84, &D_802E7658_32B7A8);

		if (result == 4) {
			D_8014D17C = 0;
			D_8014D17E = (s16)arg0;
			func_80007410_8010(&func_802DF940_323A90);
		}

		if (result == 9) {
			s0->unk20 &= ~0x1000;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3E64_327FB4.s")
#endif

// CURRENT(1349)
#ifdef NON_MATCHING
void func_802E4214_328364(u8 arg0) {
	s32 pad;
	s32 pad2;
	s16 sp3C;
	u16 sp3A;
	u8 *sp34;
	s16 sp30;

	sp34 = (u8 *)&alienInstances[alienInstances[alienInstances[arg0].unk25].unk25];

	if (!(alienInstances[arg0].unk20 & 0x100000)) {
		alienInstances[arg0].unk2C = 2;
		func_800DF038_EDFE8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, alienSpecs[alienInstances[arg0].specIndex].unkC, 3, 0);
		sp3C = func_800C7924_D68D4(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0x40, -8, 0x64, alienSpecs[alienInstances[arg0].specIndex].unk0, 1);
		sp3A = 0x4000 - alienInstances[arg0].unk6;
		func_800C80F0_D70A0(sp3A, 0, 0, sp3C);
		sp30 = sins(sp3A);
		func_800C8184_D7134((s8)((f64)(f32)sp30 / 32768.0 * 20.0), 0x28, (s8)((f64)(f32)coss(sp3A) / 32768.0 * -20.0), sp3C);
		*sp34 = 0xFF;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E4214_328364.s")
#endif

// CURRENT(3075)
#ifdef NON_MATCHING
void func_802E43FC_32854C(u8 arg0, s16 arg1) {
	u8 sp5F;
	s16 sp5A;
	s16 sp58;
	s16 sp56;
	s16 pad_gap;
	s16 sp54;
	s32 pad4C;
	s32 pad48;
	s32 pad44;

	sp5F = alienInstances[arg0].unk25;
	func_80085DC8_94D78(sp5F, (s16)((s8 *)D_8014DD5C)[func_802DFF04_324054(sp5F) * 16], alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4);
	if (!(alienInstances[arg0].unk20 & 0x100000)) {
		alienInstances[arg0].unk20 &= -0x3001;
		alienInstances[arg0].unk36 = 0;
		alienInstances[arg0].unk2C = 100;
		func_800DF038_EDFE8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, alienSpecs[alienInstances[arg0].specIndex].unkC, 3, 0);
		D_802E6810 = 1;
	}
	if (alienInstances[arg0].unk20 & 0x1000) {
		s8 temp_v0;

		sp54 = arg1;
		sp56 = (s16)((s8 *)D_8014DD5C)[arg1 * 16];
		sp58 = func_802DFF04_324054(sp5F);
		sp5A = (s16)((s8 *)D_8014DD5C)[sp5F * 16];
		temp_v0 = func_80081F18_90EC8(arg0, 2, 0xE, &sp54, &D_802E79F8_32BB48);
		if (temp_v0 == 0xD) {
			alienInstances[arg0].unk20 = (alienInstances[arg0].unk20 | 0x2000);
			alienInstances[arg0].unk10 = 0x600;
			alienInstances[arg0].unk12 = 0x400;
			alienInstances[arg0].unkE += 0x8000;
			alienInstances[arg0].unk20 = (alienInstances[arg0].unk20 | 0x40040000);
		}
		if (temp_v0 == 0xE) {
			alienInstances[arg0].unk20 &= ~0x1000;
		}
	}
	func_80128428_1373D8(&alienInstances[arg0], 0, 0, 100, &pad4C, &pad48, &pad44);
	if (*(s16 *)((u8 *)&pad4C + 2) != -3) {
		func_800C3D88_D2D38(*(s16 *)((u8 *)&pad4C + 2), *(s16 *)((u8 *)&pad48 + 2), *(s16 *)((u8 *)&pad44 + 2), alienInstances[arg0].unk38);
	}
	if (alienInstances[arg0].unk2C == 0x50) {
		alienInstances[arg0].unk20 |= 0x1000;
	} else {
		if (alienInstances[arg0].unk20 & 0x2000) {
			if (alienInstances[arg0].unk20 & 0x40000000) {
				alienInstances[arg0].unk2C = 3;
			} else {
				alienInstances[arg0].unk2C = 2;
				alienInstances[arg0].unk20 &= ~0x2000;
			}
		}
	}
	if (alienInstances[arg0].unk2C == 2) {
		func_800C4900_D38B0(alienInstances[arg0].unk38);
		func_800DF038_EDFE8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, alienSpecs[alienInstances[arg0].specIndex].unkC, 3, 0);
		D_802E6810 = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E43FC_32854C.s")
#endif

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

// CURRENT(2962)
#ifdef NON_MATCHING
void func_802E4774_3288C4(u8 arg0) {
	u8 sp47;
	Unk802E71B8 sp38;
	s16 temp_v0;
	s16 var_a2;
	AlienInstance *s0;
	AlienInstance *v0;

	s0 = &alienInstances[arg0];
	sp47 = s0->unk25;
	sp38.unk0 = D_802E7A08_32BB58.unk0;
	sp38.unk4 = D_802E7A08_32BB58.unk4;
	v0 = &alienInstances[alienInstances[sp47].unk25];
	if (!(s0->unk20 & 0x100000)) {
		*(u8 *)&v0->unk2 = 0xFF;
		v0->unk20 &= ~0x4000;
		s0->unk38 = func_800C3BD8_D2B88(s0->unk0, s0->unk2, s0->unk4, 0xC8, 0xFFFF, 0xF0, 0x78, 0);
	}
	temp_v0 = func_802DFF04_324054(sp47);
	var_a2 = D_8014DD50[D_8014DD50[temp_v0].unkC].unkD;
	if (!(s0->unk20 & 0x2000) && s0->unk2C >= 3) {
		s16 sp34;
		sp34 = var_a2;
		func_802E3584_3276D4(arg0, temp_v0, var_a2, (s32)&sp38);
		var_a2 = sp34;
	}
	func_802E43FC_32854C(arg0, var_a2);
	if (s0->unk20 & 0x2000) {
		s0->unkA += 0xBB8;
		s0->unk8 += 0x3E8;
	}
	if (s0->unk2C == 2) {
		D_802E7C54 = 2;
		func_802E46B8_328808(arg0, 3, 0x22);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E4774_3288C4.s")
#endif

// CURRENT(3000)
#ifdef NON_MATCHING
void func_802E4918_328A68(u8 arg0) {
	u8 sp47;
	s32 sp38_0;
	s16 sp38_4;
	s16 temp_v0;
	s16 var_a2;
	s16 sp34;

	sp47 = alienInstances[arg0].unk25;
	sp38_0 = D_802E7A10_32BB60.unk0;
	sp38_4 = D_802E7A10_32BB60.unk4;
	if (sp38_4) { sp38_0 = sp38_0; }
	if (!(alienInstances[arg0].unk20 & 0x100000)) {
		((u8 *)&alienInstances[alienInstances[sp47].unk25].unk0)[1] = 0xFF;
		alienInstances[alienInstances[sp47].unk25].unk20 &= ~0x2000;
		alienInstances[arg0].unk38 = func_800C3BD8_D2B88(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0xC8, 0xFFFF, 0xF0, 0x78, 0);
	}
	temp_v0 = func_802DFF04_324054(sp47);
	var_a2 = D_8014DD50[D_8014DD50[temp_v0].unkC].unkD;
	if (!(alienInstances[arg0].unk20 & 0x2000) && alienInstances[arg0].unk2C >= 3) {
		sp34 = var_a2;
		func_802E3584_3276D4(arg0, temp_v0, var_a2, (s32)&sp38_0);
		var_a2 = sp34;
	}
	func_802E43FC_32854C(arg0, var_a2);
	if (alienInstances[arg0].unk20 & 0x2000) {
		alienInstances[arg0].unkA += 0xBB8;
		alienInstances[arg0].unk8 += 0x3E8;
	}
	if (alienInstances[arg0].unk2C == 2) {
		D_802E7C50 = 2;
		func_802E46B8_328808(arg0, 2, 0x1F);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E4918_328A68.s")
#endif

#ifdef NON_MATCHING
void func_802E4ACC_328C1C(u8 arg0) {
	u8 sp47;
	s32 sp38_0;
	u16 sp38_4;
	s32 temp_v0;
	s8 var_a2;

	sp47 = alienInstances[arg0].unk25;
	sp38_0 = D_802E7A18_32BB68.unk0;
	sp38_4 = D_802E7A18_32BB68.unk4;

	if (!(alienInstances[arg0].unk20 & 0x100000)) {
		((u8 *)&alienInstances[alienInstances[sp47].unk25].unk0)[2] = 0xFF;
		alienInstances[alienInstances[sp47].unk25].unk20 &= ~0x10000;
		alienInstances[arg0].unk38 = func_800C3BD8_D2B88(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0xC8, 0xFFFF, 0xF0, 0x78, 0);
		if (alienInstances[alienInstances[sp47].unk25].unk20 & 0x20000) {
			alienInstances[((u8 *)&alienInstances[alienInstances[sp47].unk25].unk0)[0]].unk20 &= ~0x400000;
		}
		alienInstances[alienInstances[sp47].unk25].unk20 |= 0x20000;
	}

	temp_v0 = func_802DFF04_324054(sp47);
	var_a2 = D_8014DD50[D_8014DD50[temp_v0].unkC].unkD;

	if (!(alienInstances[arg0].unk20 & 0x2000) && alienInstances[arg0].unk2C >= 3) {
		s16 sp34;
		sp34 = var_a2;
		func_802E3584_3276D4(arg0, temp_v0, var_a2, (s32)&sp38_0);
		var_a2 = sp34;
	}

	if (alienInstances[arg0].unk20 & 0x2000) {
		alienInstances[arg0].unkA += 0xBB8;
		alienInstances[arg0].unk8 += 0x3E8;
	}

	func_802E43FC_32854C(arg0, var_a2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E4ACC_328C1C.s")
#endif

// CURRENT(7172)
#ifdef NON_MATCHING
void func_802E4CB4_328E04(u8 arg0) {
	u8 sp47;
	s32 temp_v0;
	s16 sp34;

	sp47 = alienInstances[arg0].unk25;

	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKL)) {
		((u8 *)&alienInstances[alienInstances[sp47].unk25].unk0)[1] = 0xFF;
		alienInstances[alienInstances[sp47].unk25].unk20 &= ~ALIEN_FLAG_UNKG;
		alienInstances[arg0].unk38 = func_800C3BD8_D2B88(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0xC8, 0xFFFF, 0x4C, 0xA9, 0xF5);
		if (alienInstances[alienInstances[sp47].unk25].unk20 & ALIEN_FLAG_UNKI) {
			alienInstances[((u8 *)&alienInstances[alienInstances[sp47].unk25].unk0)[0]].unk20 &= ~ALIEN_FLAG_INVINCIBLE;
		}
		alienInstances[alienInstances[sp47].unk25].unk20 |= ALIEN_FLAG_UNKI;
	}

	temp_v0 = func_802DFF04_324054(sp47);
	sp34 = D_8014DD50[D_8014DD50[D_8014DD50[temp_v0].unkC].unkD].unkD;

	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKE) && alienInstances[arg0].unk2C >= 3) {
		s32 sp38_0;
		s16 sp3C;

		sp38_0 = D_802E7A20_32BB70.unk0;
		sp3C = sp34;
		func_802E3584_3276D4(arg0, temp_v0, sp34, (s32)&sp38_0);
		sp34 = sp3C;
	}

	func_802E43FC_32854C(arg0, sp34);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E4CB4_328E04.s")
#endif

