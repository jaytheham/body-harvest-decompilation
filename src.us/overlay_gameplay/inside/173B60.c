#include <ultra64.h>
#include "common.h"


void func_8008BAA0_173B60(void) {
	D_8004794A = 0;
	D_800FCF22 = 0x80;
	D_800FCF24 = -1;
	D_800FCF26 = 0x80;
	D_800FCF28 = -1;
	D_800FCA80 = 0;
	D_800FCA84 = 0;
	D_800FCF3C = (s32) D_8004816A;
	D_800FCF40 = -1;
}

void func_8008BAFC_173BBC(void) {
	D_800FCF24 = 8;
	D_800FCF28 = 8;
}

void func_8008BB14_173BD4(void) {
	D_800FCF24 = -8;
	D_800FCF28 = -8;
}

void func_8008BB2C_173BEC(void) {
	D_800FCF24 = 8;
}

void func_8008BB3C_173BFC(void) {
	D_800FCF24 = -8;
}

void func_8008BB4C_173C0C(void) {
	D_800FCF28 = 8;
}

void func_8008BB5C_173C1C(void) {
	D_800FCF28 = -8;
}

#ifdef NON_MATCHING
void func_8008BB6C_173C2C(s32 arg0, s32 arg1) {
	Gfx *dl;
	Gfx *spC;
	s32 sp0;

	sp0 = arg0 &= 0xFF;
	arg1 &= 0xFF;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xFD900000;
	dl->words.w1 = (s32)(D_1009C70 + (arg1 << 7)) & 0x1FFFFFFF;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xF5900000;
	dl->words.w1 = 0x07014050;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w1 = 0;
	dl->words.w0 = 0xE6000000;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w1 = 0x0703F800;
	dl->words.w0 = 0xF3000000;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w1 = 0;
	dl->words.w0 = 0xE7000000;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xF5800200;
	dl->words.w1 = 0x00014050;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xF2000000;
	dl->words.w1 = 0x0003C03C;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = (s32)((((arg0 + 0xB) * 4 & 0xFFF) << 0xC) | 0xE4000344);
	dl->words.w1 = (s32)(((sp0 * 4 & 0xFFF) << 0xC) | 0x318);

	spC = D_8005BB2C;
	D_8005BB2C = spC + 1;
	spC->words.w1 = 0;
	spC->words.w0 = 0xB4000000;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xB3000000;
	dl->words.w1 = 0x06000600;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w1 = 0;
	dl->words.w0 = 0xE7000000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/173B60/func_8008BB6C_173C2C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/173B60/func_8008BD18_173DD8.s")

#ifdef NON_MATCHING
void func_8008C8A4_174964(void) {
	f32 temp_f16;
	f32 temp_f8;
	s32 yOffset;
	s32 vehicleMaxHealth;
	s32 temp_v1;
	s16 temp_t1;

	guOrtho((Mtx *)&D_800FCAD8, 0.0f, (f32) D_80068084, (f32) D_80068088, 0.0f, -1000.0f, 1000.0f, 1.0f);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BOTH | G_LIGHTING);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	func_800039D0_45D0(0, 0, 0, D_8005BB38);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	if (D_800FCF24 != 0) {
		D_800FCF22 += D_800FCF24;
		if (D_800FCF22 >= 0x81) {
			D_800FCF22 = 0x80;
			D_800FCF24 = 0;
		}
		if (D_800FCF22 < 0) {
			D_800FCF22 = 0;
			D_800FCF24 = 0;
		}
	}

	if (D_800FCF28 != 0) {
		D_800FCF26 += D_800FCF28;
		if (D_800FCF26 >= 0x81) {
			D_800FCF26 = 0x80;
			D_800FCF28 = 0;
		}
		if (D_800FCF26 < 0) {
			D_800FCF26 = 0;
			D_800FCF28 = 0;
		}
	}

	if (D_800FCF26 != 0x80) {
		yOffset = (currentLevel == 5) ? 0 : -0x14;

		if (D_80052B34->unk1C > 0) {
			vehicleMaxHealth = *(u16 *)&D_80257A3A[vehicleInstances->unk1A * 0x70];
			temp_f8 = (f32) vehicleMaxHealth;
			if (vehicleMaxHealth < 0) {
				temp_f8 += 4294967296.0f;
			}
			func_8008BD18_173DD8(0x50, (s16) ((D_80068088 + yOffset) - 0x1E), (f32) vehicleInstances->unk1C / temp_f8, 0, &D_8025F540, 1, 0, D_800FCF44, 0x30);
		} else {
			func_8008BD18_173DD8(0x50, (s16) ((D_80068088 + yOffset) - 0x1E), 0.0f, 0, &D_8025F540, 0, 0, 0, 0x30);
		}

		if (currentLevel < 5) {
			if ((D_800FCF3C != D_8004816A) && (((u8) D_800314C4 - 3) >= D_8004816A)) {
				D_800FCF46 = 8;
			}
			if ((u8) D_800314C4 < D_8004816A) {
				D_800FCF3C = (u8) D_800314C4;
			} else {
				D_800FCF3C = D_8004816A;
			}
			temp_f16 = (f32) D_800FCF3C / (f32) (u8) D_800314C4;
			func_8008BD18_173DD8(0x50, (s16) (D_80068088 - 0x1E), temp_f16, 0, &D_8025F780, 2, 0, D_800FCF46, 0x30);
			D_800FCF3C = D_8004816A;
		}
	}

	if (((u8) D_800314C4 - 3) < D_8004816A) {
		D_800FCF46 = 8 - (D_800E65AC % 8);
	} else {
		D_800FCF46 = 0;
	}

	if ((*(u16 *)&D_80257A3A[D_8004DCEA * 0x70] >> 2) >= D_8004DCEC) {
		D_800FCF44 = 8 - (D_800E65AC % 8);
	} else {
		D_800FCF44 = 0;
	}

	drawText(&D_800A5538_18D5F8, 0, 0xFF);

	if (D_8006C6C6 > 0) {
		if ((D_8006C6C4 - 8) < D_8006C6C6) {
			temp_t1 = D_8006C6C4 - D_8006C6C6;
		} else {
			temp_t1 = 8;
			if (D_8006C6C6 < 8) {
				temp_t1 = D_8006C6C6;
			}
		}

		gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x8C, 0x96, 0xF0, 0xAA);
		temp_v1 = 0x30 - (temp_t1 * 6);
		func_800092B8_9EB8(0x1B8, (temp_v1 + 0xAF) * 4, 0x310, (temp_v1 + 0xD2) * 4, 0);
	}

	gDPPipeSync(D_8005BB2C++);
	gDPTileSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/173B60/func_8008C8A4_174964.s")
#endif

// doPauseMenu ?
#ifdef NON_MATCHING
void func_8008CF2C_174FEC(void) {
	u8 slotScratch[9];
	u8 *slots;
	u8 slotValue;
	s32 i;
	s32 language;
	s32 x;
	s32 y;
	s32 texIndex;
	s8 stickX;
	s8 stickY;
	s16 fade;

	slots = slotScratch - 8;

	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_80260500);
	gDPTileSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 255);
	gDPPipeSync(D_8005BB2C++);
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);

	i = 8;
	do {
		slots[i] = 0xF;
	} while (i-- != 0);

	if (D_800FCA90 != 0) {
		slots[4] = 0xE;
		slots[1] = 8;
	} else {
		slots[1] = 0xE;
		slots[5] = 3;
		slots[4] = 8;
		if (currentLevel != LEVEL_COMET) {
			slots[7] = 0xD;
		}
	}

	stickX = D_8004758A;
	if ((ABS(stickX) < 0x14) && (ABS(D_8004758B) < 0x14)) {
		D_800FCF20 = 1;
	}

	if (D_800FCF20 == 1) {
		if ((stickX < -0x1E) && (D_800A4340_18C400 >= 4) && (slots[D_800A4340_18C400 - 1] != 0xF)) {
			D_800A4340_18C400--;
			D_800FCF20 = 0;
			func_800153D8_15FD8(0xC7);
			stickX = D_8004758A;
		}

		if ((stickX >= 0x1F) && (D_800A4340_18C400 < 5) && (slots[D_800A4340_18C400 + 1] != 0xF) && (D_800A4348_18C408 == 0)) {
			D_800A4340_18C400++;
			D_800FCF20 = 0;
			func_800153D8_15FD8(0xC7);
		}

		stickY = D_8004758B;
		if ((stickY >= 0x1F) && (D_800A4340_18C400 >= 2) && (slots[D_800A4340_18C400 - 3] != 0xF)) {
			D_800A4340_18C400 -= 3;
			D_800FCF20 = 0;
			func_800153D8_15FD8(0xC7);
			stickY = D_8004758B;
		}

		if ((stickY < -0x1E) && (D_800A4340_18C400 < 7) && (slots[D_800A4340_18C400 + 3] != 0xF)) {
			D_800A4340_18C400 += 3;
			D_800FCF20 = 0;
			func_800153D8_15FD8(0xC7);
		}
	}

	fade = D_800FCA92;
	slotValue = slots[D_800A4340_18C400];
	if (fade != 0xFF) {
		D_800A4344_18C404 = -1;
		func_8001A54C_1B14C(D_800A56EC_18D7AC, -1);
		D_800FCA92 -= 0x20;
		fade = D_800FCA92;
	} else {
		if (D_800A4344_18C404 != slotValue) {
			language = D_800313D0;
			D_800A4344_18C404 = slotValue;
			switch (language) {
			case 0:
			default:
				func_8001A54C_1B14C(D_800A428C_18C34C[slotValue], slotValue);
				break;
			case 1:
				func_8001A54C_1B14C(D_800A42C8_18C388[slotValue], slotValue);
				break;
			case 2:
				func_8001A54C_1B14C(D_800A4304_18C3C4[slotValue], slotValue);
				break;
			}
		}
		D_800FCF4C = -1;
	}

	if (D_800FCF4C != -1) {
		D_800A4340_18C400 = D_800FCF4C;
	}

	if (fade < 0xFF) {
		gDPSetAlphaCompare(D_8005BB2C++, G_AC_DITHER);
	} else {
		gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
	}

	for (i = 8; i >= 0; i--) {
		slotValue = slots[i];
		if (slotValue != 0xF) {
			x = ((i % 3) << 5) + (D_80068084 / 2) - 0x2C;
			y = ((i / 3) * 0x1E) + 0x38;
			texIndex = D_800A427C_18C33C[slotValue];

			if (i == D_800A4340_18C400) {
				gDPSetPrimColor(D_8005BB2C++, 1, 0, 0, 0xC8, 0xFF, fade & 0xFF);
				if (D_800A4340_18C400 != D_800FCB1E) {
					func_80013810_14410(D_800A4343_18C403);
					D_800FCB1E = D_800A4340_18C400;
				}
			} else {
				gDPSetPrimColor(D_8005BB2C++, 1, 0, 0, 0x64, 0x7F, fade & 0xFF);
			}

			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, D_8025CCC0 + (texIndex * 0x240));
			gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 287, 683);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 3, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, ((24 - 1) << G_TEXTURE_IMAGE_FRAC), ((24 - 1) << G_TEXTURE_IMAGE_FRAC));
			gSPTextureRectangle(D_8005BB2C++, x * 4, y * 4, (x + 24) * 4, (y + 24) * 4, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
		}
	}

	if ((isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_START | BUTTON_A) != 0) && (D_800FCA92 == 0xFF) && (D_800FCA84 == 0)) {
		D_800FCA80 = 1;
		if (D_800FCA90 == 0) {
			func_800153D8_15FD8(0xC6);
		}

		func_8001A54C_1B14C(D_800A56F0_18D7B0);
		slotValue = slots[D_800A4340_18C400];

		switch (slotValue) {
		case 6:
			D_800E65A8 |= 0x100;
			return;
		case 0xE:
			if (D_800FCA90 == 0) {
				D_800FCA90 = 1;
				return;
			}
			D_800E65A8 |= 0x4100;
			func_80006DAC_79AC(0, 1);
			break;
		case 3:
			D_800E65B8 = 1;
			D_800E65A8 |= 0x2000;
			return;
		case 0xD:
			D_800E65B8 = 1;
			D_800E65A8 |= 0x80000;
			return;
		default:
			if (((D_80052B34->unk1A != 0) || (D_800A4340_18C400 != 3)) && (slotValue != 0xF) && (slotValue != 8)) {
				D_80050AD4 = slotValue;
			}
			D_800E65A8 &= ~2;
			D_800FCA92--;
			D_800FCF4C = D_800A4340_18C400;
			break;
		}
	}

	if (D_800FCA92 < 0x21) {
		D_800A4340_18C400 = 4;
	}
	gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/173B60/func_8008CF2C_174FEC.s")
#endif

#ifdef NON_MATCHING
void func_8008D900_1759C0(void) {
	s32 sp58_unk0;
	u16 sp58_unk4;
	s32 sp50_unk0;
	u16 sp50_unk4;
	s32 sp48_unk0;
	u16 sp48_unk4;
	Gfx *temp_v0;
	Gfx *temp_v0_2;
	Gfx *temp_v0_3;
	Gfx *temp_v0_4;
	Gfx *temp_v0_5;
	Gfx *temp_v0_6;
	Gfx *temp_v0_7;
	Gfx *temp_v0_8;
	Gfx *temp_v0_9;

	sp58_unk0 = D_800A4354.unk0;
	sp58_unk4 = D_800A4354.unk4;
	sp50_unk0 = D_800A435C.unk0;
	sp50_unk4 = D_800A435C.unk4;
	sp48_unk0 = D_800A4364.unk0;
	sp48_unk4 = D_800A4364.unk4;
	D_800A436C += 1;
	func_8001A130_1AD30(0x4A - D_800FCF26, D_80068088 - 0x50);
	if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_START) == 0) {
		D_800FCA80 = 0;
		D_800FCA84 = 0;
	}
	if (func_80017B78_18778() == 1) {
		func_8008BAFC_173BBC();
	} else {
		if (D_80052B34->unk1A == 0) {
			if (gameplayMode == GAMEPLAY_MODE_END_OF_LEVEL) {
				func_8008BB4C_173C0C();
			} else {
				func_8008BB5C_173C1C();
			}
		} else if (gameplayMode == GAMEPLAY_MODE_END_OF_LEVEL) {
			func_8008BAFC_173BBC();
		} else {
			func_8008BB14_173BD4();
		}
		D_800A4370 = 0;
	}
	osWritebackDCacheAll();
	temp_v0 = D_8005BB2C;
	D_8005BB2C = temp_v0 + 1;
	temp_v0->words.w0 = 0xB6000000;
	temp_v0->words.w1 = 0x23001;
	temp_v0_2 = D_8005BB2C;
	D_8005BB2C = temp_v0_2 + 1;
	temp_v0_2->words.w1 = 0xFFFF;
	temp_v0_2->words.w0 = 0xBC00000E;
	temp_v0_3 = D_8005BB2C;
	D_8005BB2C = temp_v0_3 + 1;
	temp_v0_3->words.w1 = (s32)(&D_800FCAD8) & 0x1FFFFFFF;
	temp_v0_3->words.w0 = 0x01030040;
	temp_v0_4 = D_8005BB2C;
	D_8005BB2C = temp_v0_4 + 1;
	temp_v0_4->words.w1 = 0;
	temp_v0_4->words.w0 = 0xE7000000;
	temp_v0_5 = D_8005BB2C;
	D_8005BB2C = temp_v0_5 + 1;
	temp_v0_5->words.w0 = 0xB900031D;
	temp_v0_5->words.w1 = 0x504240;
	func_8008C8A4_174964();
	if (D_800FCA92 >= 0x21) {
		func_8008CF2C_174FEC();
	} else {
		D_800FCA90 = 0;
	}
	if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_START) != 0) {
		if (D_800FCA80 == 0) {
			if (D_800E65A8 == 1) {
				if (D_800FCA92 != 0xFF) {
					D_800FCA92 = 0xFF;
					D_800FCA90 = 0;
					D_800FCA84 = 1;
					D_800E65A8 |= 2;
					func_800153D8_15FD8(0xC6);
				}
			}
		}
	}
	func_8001A828_1B428();
	temp_v0_6 = D_8005BB2C;
	D_8005BB2C = temp_v0_6 + 1;
	temp_v0_6->words.w1 = 0;
	temp_v0_6->words.w0 = 0xE7000000;
	temp_v0_7 = D_8005BB2C;
	D_8005BB2C = temp_v0_7 + 1;
	temp_v0_7->words.w1 = 0x80008000;
	temp_v0_7->words.w0 = 0xBB000000;
	temp_v0_8 = D_8005BB2C;
	D_8005BB2C = temp_v0_8 + 1;
	temp_v0_8->words.w0 = 0xFCFFFFFF;
	temp_v0_8->words.w1 = 0xFFFE793C;
	temp_v0_9 = D_8005BB2C;
	D_8005BB2C = temp_v0_9 + 1;
	temp_v0_9->words.w1 = 0;
	temp_v0_9->words.w0 = 0xBA000E02;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/173B60/func_8008D900_1759C0.s")
#endif

void func_8008DC44_175D04(s32 arg0) {
	switch (D_800313D0) {
	case 0:
		func_8001A598_1B198(D_800A26B0_18A770 + D_800A2EB0_18AF70[arg0]);
		break;
	case 1:
		func_8001A598_1B198(D_800A2FB0_18B070 + D_800A37B0_18B870[arg0]);
		break;
	case 2:
		func_8001A598_1B198(D_800A38B0_18B970 + D_800A40B0_18C170[arg0]);
		break;
	}
}

void func_8008DCF4_175DB4(s32 arg0) {
	s32 temp_v1 = (currentLevel * 0xB) + arg0 + 0xA;
	switch (D_800313D0) {
	case 0:
		func_8001A598_1B198(D_800A26B0_18A770 + D_800A2EB0_18AF70[temp_v1]);
		break;
	case 1:
		func_8001A598_1B198(D_800A2FB0_18B070 + D_800A37B0_18B870[temp_v1]);
		break;
	case 2:
		func_8001A598_1B198(D_800A38B0_18B970 + D_800A40B0_18C170[temp_v1]);
		break;
	}
}

s32 func_8008DDC0_175E80(void) {
	if (D_800FCF26 == 0) {
		return 1;
	}
	return 0;
}
