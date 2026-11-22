#include <ultra64.h>
#include "common.h"
#include "overlay_gameplay/outside/missions.h"
#include "overlay_gameplay/outside/148000.h"
#include "core/53F0.h"
#include "core/1B100.h"
#include "core/12C80.h"
#include "core/1050.h"

/* Retain IDO's shared address load in the scanner update. AAA70.c
 * supplies the strong definition used at runtime.
 */
#pragma weak D_8013D590_14C540
ScannerPalette D_8013D590_14C540;

void func_8009F130_AE0E0(void) {
	static SignedWord selectedIndex = { 4 };
	static s32 pendingSelection;
	s16 alpha;
	u8 menuVals[9];
	s16 pad;
	s16 x;
	s16 y;
	s32 i;
	s32 icon;
	s32 selected;
	s32 stickX;
	s32 stickY;
	register s16 *stickReady;

	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gDPLoadTLUT_pal256(D_8005BB2C++, (u32) D_80260500);
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);

	i = 9;
	while (i--) {
		menuVals[i] = 0xF;
	}

	if (D_8013D734_14C6E4 == -1) {
		selectedIndex.word = 4;
	}

	if (D_8014ED54 != 0) {
		menuVals[1] = 8;
		menuVals[4] = 0xE;
	} else {
		menuVals[1] = 0xE;
		menuVals[4] = 8;
		if (D_80052ACA != 2) {
			menuVals[5] = 3;
			if (currentLevel != 5) {
				menuVals[7] = 0xD;
				if ((D_80052B34->unk1A != 0) && (weaponSlots[0] == 1)) {
					menuVals[3] = 1;
				}
			}
		}
	}

	stickX = D_8004758A;
	{
		s32 x;

		if (stickX >= 0) {
			x = stickX;
		} else {
			x = -stickX;
		}

		if (x < 0x14) {
			stickY = D_8004758B;
			if (stickY >= 0) {
				selected = stickY;
			} else {
				selected = -stickY;
			}
			if (selected < 0x14) {
				stickReady = (s16 *)(s32)&D_8014F1E0_Set; if (stickReady) {}
				*stickReady = 1; if (stickY) {}
			}
		}
	}

	if (D_8014F1E0 == 1) {
		if ((stickX < -0x1E) && (selectedIndex.word >= 4) && (menuVals[selectedIndex.word - 1] != 0xF)) {
			selectedIndex.word--;
			D_8014F1E0 = 0;
			func_800153D8_15FD8(0xC7);
			stickX = D_8004758A;
		}

		if ((stickX >= 0x1F) && (selectedIndex.word < 5) && (menuVals[selectedIndex.word + 1] != 0xF) && (D_8013D738_14C6E8[0] == 0)) {
			selectedIndex.word++;
			D_8014F1E0 = 0;
			func_800153D8_15FD8(0xC7);
		}
		stickY = D_8004758B;
		if ((stickY >= 0x1F) && (selectedIndex.word >= 2) && (menuVals[selectedIndex.word - 3] != 0xF)) {
			selectedIndex.word -= 3;
			D_8014F1E0 = 0;
			func_800153D8_15FD8(0xC7);
			stickY = D_8004758B;
		}

		if ((stickY < -0x1E) && (selectedIndex.word < 7) && (menuVals[selectedIndex.word + 3] != 0xF)) {
			selectedIndex.word += 3;
			D_8014F1E0 = 0;
			func_800153D8_15FD8(0xC7);
		}
	}

	alpha = D_8014ED56_Sample;
	selected = menuVals[selectedIndex.word];
	if ((alpha != 0xFF) || (D_80052AD0 == 0)) {
		D_8013D734_14C6E4_Write = -1;
		func_8001A54C_1B14C(D_801426B8_151668);
		alpha = (D_8014ED56_Write = D_8014ED56 - 0x20);
	} else {
		if (D_8013D734_14C6E4 != (selected | 0)) {
			D_8013D734_14C6E4_Write = selected;
			switch (D_800313D0_31FD0) {
			case 0:
			default:
				func_8001A54C_1B14C((u8 *) D_8013D67C_14C62C[D_8013D734_14C6E4_Text0]); alpha = D_8014ED56_Text0;
				break;
			case 2:
				func_8001A54C_1B14C((u8 *) D_8013D6F4_14C6A4[D_8013D734_14C6E4_Text2]); alpha = D_8014ED56_Text2;
				break;
			case 1:
				func_8001A54C_1B14C((u8 *) D_8013D6B8_14C668[D_8013D734_14C6E4_Text1]); alpha = D_8014ED56_Text1;
				break;
			}
		}
		pendingSelection = -1;
	}

	if (pendingSelection != -1) {
		selectedIndex.word = pendingSelection;
	}

	if (alpha < 0xFF) {
		gDPSetAlphaCompare(D_8005BB2C++, G_AC_DITHER);
	} else {
		gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
	}

	i = 8;
	do {
		u8 item = menuVals[i];

		if (item != 0xF) {
			x = (s16) ((((i % 3) << 5) + (D_80068084 / 2)) - 0x2C);
			icon = D_8013D66C_14C61C[item];

			if (i == selectedIndex.word) {
				gDPSetPrimColor(D_8005BB2C++, 1, 0, 0xB9, 0xFF, 0xFF, D_8014ED56_Lit);

				if (selectedIndex.word != D_8014EDDE) {
					func_80013810_14410(selectedIndex.signedBytes[3]);
					D_8014EDDE = selectedIndex.word;
				}
			} else {
				gDPSetPrimColor(D_8005BB2C++, 1, 0, 0x5C, 0x7F, 0x7F, D_8014ED56_Dim);
			}

			gDPLoadTextureBlock(D_8005BB2C++, K0_TO_PHYS(&D_8025CCC0[icon * 0x240]), G_IM_FMT_CI, G_IM_SIZ_8b, 24, 24, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

			y = ((i / 3) * 0x1E) + 0x38;
			gSPTextureRectangle(D_8005BB2C++, x << 2, y << 2, (x + 0x18) << 2, (y + 0x18) << 2, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
		}
	} while (i--);

	if ((isButtonNewlyPressed(0, 0x9000) != 0) && (D_8014ED56_Confirm == 0xFF)) {
		if (D_8014ED54 == 0) {
			func_800153D8_15FD8(0xC6);
		}

		if (menuVals[selectedIndex.word] == 0xE) {
			if (D_8014ED54 == 0) {
				D_8014ED54 = 1;
				return;
			}
			func_80006DAC_79AC(0, 1);
		}

		if (selectedIndex.word == 3) {
			D_80052B34->unk3C = (s16) (vehicleTypes[D_80052B34->unk1A].unk61 << 8);
			func_800FD410_10C3C0(&vehicleTypes[D_80052B34->unk1A]);
			func_801392FC_1482AC(1);
		}

		if (selectedIndex.word != 3) {
			selected = menuVals[selectedIndex.word];
			if ((selected != 0xF) && (selected != 8)) {
				D_80050AD4 = selected;
			}
		}

		D_801591AC = D_801591B0;
		gameplayMode = D_80052AE0;
		D_80052B34->unk6 = D_801591D4;
		D_8014ED56_Write = D_8014ED56_Close - 1;
		pendingSelection = selectedIndex.word;
	}

	if ((D_80159320 & 0x08000000) != 0) {
		func_80006DAC_79AC(0x190, 1);
		D_800476A0 = 3;
	}

	if (D_8014ED56_Reset < 0x21) {
		selectedIndex.word = 4;
	}

	gDPPipeSync(D_8005BB2C++);
}

s32 D_8013D734_14C6E4 = 0;
s16 D_8013D738_14C6E8[6] = { 0, 0, 0, 0, 0, 0 };
Unk80052B40 D_8013D744_14C6F4 = { 0, 0, 0 };
Unk80052B40 D_8013D74C_14C6FC = { 0, 0, 0 };

void func_8009FB1C_AEACC(s16 arg0, s16 arg1) {
	D_8014F1EC = (f32) arg0;
	D_8014F1F0 = (f32) arg1;
}

void func_8009FB58_AEB08(void) {
	AlienInstance *alien;
	VehicleInstance *player;
	s32 value;
	s32 pad1;
	s32 gapA;
	s32 gapB;
	s16 *scannerValues;
	u32 mapTexture;
	s32 reserved[1];

	if ((void *)reserved != &D_8014EDDC) {}
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

	mapTexture = K0_TO_PHYS(D_5032190);
	gDPLoadTextureBlock_4b(D_8005BB2C++, mapTexture, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
	gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, D_80052A8C * 12, D_80052A8C * 12, 0, 0xFF);

	gDPLoadTLUT_pal16(D_8005BB2C++, 0, (u32)D_5032390);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPPipeSync(D_8005BB2C++);

	if (gzip_data_0000 != 0) {
		s32 centerX;
		s32 centerZ;

		centerX = (D_8006C56D << 8) + 0x80;
		player = D_80052B34;
		centerZ = (D_8006C56E << 8) + 0x80;
		if ((player->unk0 >= centerX - 0x200) && (player->unk0 <= centerX + 0x200) &&
			(player->unk4 >= centerZ - 0x200) && (player->unk4 <= centerZ + 0x200)) {
			gzip_data_0000 = 0;
		} else {
			func_8009C1D8_AB188(centerX, centerZ, 1);
		}
	}

	scannerValues = D_8014D188;
	{
		s32 i;
		for (i = 0; i < 0x18; i++, scannerValues++) {
			if (scannerValues != &D_8014ED50) {}
			if (scannerValues != &D_8014ED50) {}
			if (scannerValues != &D_8014ED50) {}
			if (i == 0) {}
			if (i == 0) {}
			if (i == 0) {}
			if (*scannerValues > 0) {
				func_80076208_851B8(i);
			}
		}
	}

	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);

	if (D_8014ED04 != 0x186A0) {

		gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, D_80052A8C * 20, 0, D_80052A8C * 20, 0xFF);

		func_8009C1D8_AB188(((SignedWord *)&D_8014ED04)->halves.low, ((SignedWord *)&D_8014ED08)->halves.low, 1);

		value = func_800F9C40_108BF0(D_80052B34->unk0 - D_8014ED04);
		if ((u32)(func_800F9C40_108BF0(D_80052B34->unk4 - D_8014ED08) + value) < 0x190000U) {
			D_8014ED04 = 0x186A0;
		}
	}

	D_8014F1E4 = (f32)(D_8014F1E4 + ((D_8014F1EC - D_8014F1E4) / 5.0));
	D_8014F1E8 = (f32)(D_8014F1E8 + ((D_8014F1F0 - D_8014F1E8) / 5.0));

	D_80052B40.unk0 = (s16)D_8014F1E4;
	D_80052B40.unk2 = (s16)D_8014F1E8;
	D_80052B40.unk4 = -1;

	D_80052B48.unk0 = 0;
	D_80052B48.unk2Unsigned = 0xF000;
	D_80052B48.unk4 = 0;

	gDPSetPrimColor(D_8005BB2C++, 255, 255, 0xFF, 0xFF, 0xFF, 0xFF);

	func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_8013D588_14C538, D_8005BB38);

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	gSPVertex(D_8005BB2C++, K0_TO_PHYS(&D_8013D5E8_14C598), 4, 0);
	gSP1Triangle(D_8005BB2C++, 1, 0, 2, 0);
	gSP1Triangle(D_8005BB2C++, 1, 2, 3, 0);
	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
	gDPLoadTextureBlock_4b(D_8005BB2C++, mapTexture, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
	gDPLoadTLUT_pal16(D_8005BB2C++, 0, (u32)D_5032390);

	alien = &alienInstances[0xFE];
	{
		s32 i;
		i = 0xFE;
		for (;;) {
		if ((alien->typeIndex == 0x19) && ((alien->unk20 & ALIEN_FLAG_UNKL) == 0)) {
			if ((void *)alien == &D_80052B34) {}
			if ((void *)alien == &D_80052A8C) {}
			if ((void *)alien == &D_80052B34) {}
			if ((void *)alien == &D_80052A8C) {}

			value = func_800F9C40_108BF0((D_80052B34->unk0 - alien->unk0) >> 2);
			if (func_800F9C40_108BF0((D_80052B34->unk4 - alien->unk4) >> 2) + value >= 0xC351) {
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0, 0, ((D_80052A8C & 0xFFFF) * 0x10) & 0xFF & 0xFF & 0xFF & 0xFF);

				func_8009C1D8_AB188(alien->unk0, alien->unk4, 1);
			}
		}
		alien--;
			value = i--;
			if (value == 0) {
				break;
			}
		}
	}
}

// US func_800A03FC_AF3AC
void DisplayScanner(void) {
	static u16 D_8013D754_14C704 = 0;
	u32 *clearWords;
	VehicleInstance *firstPlayer;
	s16 mapX;
	Unk80052B40 sp170;
	s16 temp;
	Unk80052B40 sp168;
	s16 tempMatrixColor;
	Unk80052B40 sp160;
	AlienInstance *alien;
	VehicleInstance *vehicle;
	VehicleInstance *player;
	s16 mapZ;
	s16 i;

	clearWords = D_8014EDE0.words;
	sp168 = D_8013D744_14C6F4;
	sp160 = D_8013D74C_14C6FC;
	temp = (++D_8013D754_14C704 % 8) / 2;
	sp170.unk0 = D_80068084 - 0x2C;
	sp170.unk2 = 0x2C;
	sp170.unk4 = -1;

	if (D_80157590 != 3) {
		if (gameplayMode == 0xA) {
			func_8009C458_AB408();
		} else if ((func_80017B78_18778() != 1) && (func_80018A58_19658() == 0) && (D_80052AC8 != 2) && (D_80052AD0 != 0)) {
			func_8009C470_AB420();
		}

		D_8013D590_14C540.colors[1] = (((temp * 8) + 0x19) << 8 & 0xF800) | ((((temp * 0x19) + 0x64) << 3) & 0x7C0) | (((temp * 2 + 0xA) >> 2) & 0x3E) | 1;
		D_8013D590_14C540.colors[3] = (((temp * 4) + 0xC) << 8 & 0xF800) | ((((temp * 0xC) + 0x32) << 3) & 0x7C0) | (((temp + 5) >> 2) & 0x3E) | 1;

		{
			s32 count;
			count = 0xFF;
			do {
				clearWords[0] = 0;
				clearWords = &clearWords[1];
			} while (count--);
		}

		i = 0;
		while (i < 0xFF) {
			alien = &alienInstances[i];

			if ((alien->typeIndex >= 3) || ((alien->typeIndex == 1) && ((alien->unk24 == 1) || (alien->unk24 == 0xF) || (alien->unk24 == 0x10)))) {
				firstPlayer = D_80052B34;
				mapX = alien->unk0;
				mapZ = alien->unk4;
				mapX -= firstPlayer->unk0;
				mapZ -= firstPlayer->unk4;
				mapX = (mapX + 0x1000) >> 8;
				mapZ = (mapZ + 0x1000) >> 8;

				if (func_8009BC48_AABF8(mapX, mapZ, 1) != 0) {
					if ((alien->typeIndex & 0xFF & 0xFF & 0xFF & 0xFF) == 1) {
						if (func_800038E0_44E0() < 0x64) {
							func_800153D8_15FD8(0xF3);
						}
					} else {
						func_80015BCC_167CC((alien->typeIndex & 0xFF & 0xFF & 0xFF & 0xFF));
					}
				} else if (D_80052ACA == 2) {
					func_80015BCC_167CC((alien->typeIndex & 0xFF & 0xFF & 0xFF & 0xFF));
				}

				if (!(alien->unk20 & ALIEN_FLAG_UNKL) && (alien->typeIndex != 1)) {
					func_8009BCC0_AAC70(mapX, mapZ, 2);
					func_8009BCC0_AAC70(mapX, mapZ - 1, 4);
					func_8009BCC0_AAC70(mapX - 1, mapZ, 4);
					func_8009BCC0_AAC70(mapX + 1, mapZ, 4);
					func_8009BCC0_AAC70(mapX, mapZ + 1, 4);
				}
			}

			i = i + 1;
		}

		i = 0;
		while (i < D_80158FD8) {
			player = D_80052B34;
			vehicle = &vehicleInstances[D_80158E80[i]];
			if (((player == NULL) + ((void *)player == &D_80052A8C) + ((void *)player == &D_80068084)) && (player == vehicle)) {}

			if ((player != vehicle) && ((currentLevel != 1) || (vehicle->unk1A != 0x12))) {
				mapX = vehicle->unk0;
				mapZ = vehicle->unk4;
				mapX -= player->unk0;
				mapZ -= player->unk4;
				mapX = (mapX + 0x1000) >> 8;
				mapZ = (mapZ + 0x1000) >> 8;

				func_8009BCC0_AAC70(mapX, mapZ, 1);
				func_8009BCC0_AAC70(mapX, mapZ + 1, 3);
				func_8009BCC0_AAC70(mapX - 1, mapZ, 3);
				func_8009BCC0_AAC70(mapX + 1, mapZ, 3);
				func_8009BCC0_AAC70(mapX, mapZ + 1, 3);
			}

			i = i + 1;
		}

		osWritebackDCacheAll();

		gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BOTH | G_LIGHTING);
		gSPPerspNormalize(D_8005BB2C++, 0xFFFF);
		gSPMatrix(D_8005BB2C++, K0_TO_PHYS(&D_8014ED98), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
		gDPPipeSync(D_8005BB2C++);
		gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);

		tempMatrixColor = ((-D_8014F1FA * 0x100) + 0x8000) >> 7;
		D_80052B50.unk4 = tempMatrixColor;
		D_80052B50.unk2 = tempMatrixColor;
		D_80052B50.unk0 = tempMatrixColor;
		func_800039D0_45D0(&sp170, NULL, &D_80052B50, D_8005BB38);

		gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

		gDPPipeSync(D_8005BB2C++);
		gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);

		if (D_8014EDD8 == 0) {
			sp160.unk2 = D_80052B2C->unk36 + 0x8000U;
			sp168.unk2 = D_80047950 + 0x8000U;
		} else {
			sp160.unk2 = 0;
			sp168.unk2 = 0;
			gDPSetAlphaCompare(D_8005BB2C++, G_AC_DITHER);
		}

		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
		gDPLoadTextureBlock(D_8005BB2C++, K0_TO_PHYS(D_502E110), G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

		gDPPipeSync(D_8005BB2C++);
		gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);

		func_800039D0_45D0(NULL, &sp168, NULL, D_8005BB38);

		gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

		gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8013D5E8_14C598), 4, 0);
		gSP1Quadrangle(D_8005BB2C++, 1, 0, 2, 3, 0);

		gDPPipeSync(D_8005BB2C++);
		gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
		gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);

		gDPLoadTLUT_pal16(D_8005BB2C++, 0, K0_TO_PHYS(D_8013D590_14C540.colors));

		gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
		gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);

		gDPLoadTextureBlock_4b(D_8005BB2C++, K0_TO_PHYS(D_8014EDE0.bytes), G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
		gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8013D5E8_14C598), 4, 0);
		gSP1Quadrangle(D_8005BB2C++, 1, 0, 2, 3, 0);
		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

		tempMatrixColor = ((-D_8014F1FA * 0x116) + 0x8B00) >> 7;
		D_80052B50.unk4 = tempMatrixColor;
		D_80052B50.unk2 = tempMatrixColor;
		D_80052B50.unk0 = tempMatrixColor;
		func_800039D0_45D0(&sp170, &sp168, &D_80052B50, D_8005BB38);

		gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

		gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
		gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
		gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x60, 0x20, 0x20, 0xFF);
		gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
		gSPTexture(D_8005BB2C++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON);
		gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
		gDPLoadTextureBlock(D_8005BB2C++, K0_TO_PHYS(D_503C8B0), G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD);
		gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8013D628_14C5D8), 4, 0);
		gDPPipeSync(D_8005BB2C++);
		gSP1Quadrangle(D_8005BB2C++, 1, 0, 2, 3, 0);
		gDPPipeSync(D_8005BB2C++);
		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
		gSPSetGeometryMode(D_8005BB2C++, G_SHADING_SMOOTH);

		func_8009D96C_AC91C();
		func_8001A130_1AD30(0x4A - D_8014F1FA, D_80068088 - 0x50);

		if ((isButtonNewlyPressed(0, 0x20) != 0) && (D_80052B34->unk1A != 0)) {
			func_8001A068_1AC68();
		}

		D_80053BF8 = 0x7F;
		D_80053BF0 = D_80053BF8;
		D_80053BFA = 0xC8;
		D_80053BF2 = D_80053BFA;
		D_80053BFC = 0xDC;
		D_80053BF4 = D_80053BFC;
		D_80053BF6 = 0;
		D_80053BFE = 0xFF;

		if (func_80018AEC_196EC(0x1E, 0x1E, 0x64) != 0) {
			func_8009C458_AB408();
			if (func_80018AA0_196A0() != 0) {
				D_80053BF8 = 0x7F;
				D_80053BF0 = D_80053BF8;
				D_80053BFA = 0xC8;
				D_80053BF2 = D_80053BFA;
				D_80053BFC = 0xDC;
				D_80053BF4 = D_80053BFC;
				D_80053BF6 = 0;
				D_80053BFE = 0xFF;

				gDPPipeSync(D_8005BB2C++);
				func_80017CA4_188A4();
			}
		}

		func_8013001C_13EFCC();
		if (D_8014ED56 >= 0x21) {
			func_8009F130_AE0E0();
		} else {
			D_8014ED54 = 0;
		}

		func_8001A828_1B428();
		func_8013AF58_149F08();
		func_8009FB58_AEB08();

		gDPPipeSync(D_8005BB2C++);
		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
		gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
		gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	}
}

s32 D_8013D758_14C708 = 0;
s32 D_8013D75C_14C70C = 0;
s32 D_8013D760_14C710 = 0;
s32 D_8013D764_14C714 = 0;
u8 D_8013D768_14C718 = 0;

void func_800A1364_B0314(void)
{
	D_8013D758_14C708 = D_8013D75C_14C70C;
	D_8013D75C_14C70C = osGetCount();
	D_8014F210[D_8014F20C][D_8014F610] = D_8013D75C_14C70C - D_8013D758_14C708;
	D_8014F20C++;
	if (D_8014F20C >= 0x20)
	{
		D_8014F20C = 0;
	}
}

void func_800A13E8_B0398(void) {
	D_8013D75C_14C70C = osGetCount();
}

// drawDebugTimingGraphs
void func_800A140C_B03BC(void) {
	s32 i;
	s32 j;
	s32 lry;
	s32 uly;
	u64 sum;
	s32 color;
	s32 green;
	s32 blue;

	if (D_80047720 != 0) {
		debug_drawTimingGraphBars();
		gDPPipeSync(D_8005BB2C++);
		gDPSetCycleType(D_8005BB2C++, G_CYC_FILL);
		gDPSetRenderMode(D_8005BB2C++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
		i = 0x20;
		if (i) {
			while (i--) {
				sum = 0;
				j = 8;
				while (j--) {
					sum += D_8014F210[i][j];
				}
				sum >>= D_80047722;
				if (sum > 200) {
					sum = 200;
				}
				green = (i & 2) ? 0x3C0 : 0;
				blue = (i & 1) ? 0x1E : 0;
				color = ((i & 4) ? 0x7800 : 0) + blue + green;
				gDPPipeSync(D_8005BB2C++);
				gDPSetFillColor(D_8005BB2C++, (color << 16) | color);
				lry = i * 6 + 0x19;
				uly = i * 6 + 0x15;
				gDPFillRectangle(D_8005BB2C++, 0x20, uly, sum + 0x20, lry);
			}
		}
		gDPPipeSync(D_8005BB2C++);
		gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
		gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
		D_8014F210[0][D_8014F610] = D_8013D764_14C714 - D_8013D760_14C710;
		D_8014F610++;
		if (D_8014F610 >= 8U) {
			D_8014F610 = 0;
		}
		i = 0x20;
		while (i--) {
			D_8014F210[i][D_8014F610] = 0;
		}
		D_8014F20C = 1;
	}
}

void func_800A1764_B0714(void) {
	D_8014F618.unk69 = 0;
	D_8014F618.unk6A = 0;
	D_8014F618.unk6B = 0;
	D_8014F618.unk6C = 0;
	D_8014F618.unk6F = 0xF;
	D_8014F618.unk70 = 0;
	D_8014F618.unk71 = 0x14;
	D_8014F618.unk72 = 0xE6;
	D_8014F618.unk73 = 0x1E;
	D_8014F618.unk74 = 0x14;
	D_8014F618.unk75 = 0xE6;
	D_8014F618.unk76 = 0x1E;
	D_8014F618.unk6D = 0;
	D_8014F618.unk68 = 0;
	D_8014F618.unk67 = 0;
	D_8014F618.unk6E = 0;
	D_8014F618.unk77 = 0xA;
	D_8014F618.unk78 = 0x1E;
	D_8014F618.unk79 = 0x96;
	D_8014F618.unk7A = 0xA;
	D_8014F618.unk7B = 0x1E;
	D_8014F618.unk7C = 0x96;
	D_8014F618.unk7D = 0xA;
	D_8014F618.unk7E = 0x1E;
	D_8014F618.unk7F = 0x96;
}

void func_800A17EC_B079C(void) {
	D_8013D5B4_14C564 = 0;
	D_8013D5B8_14C568 = 0;
	D_8013D5BC_14C56C = 0;
	D_8013D5C0_14C570[0] = 0;
	func_800A1764_B0714();
}

// Approach an unsigned-byte target by a bounded step.
u8 func_800A1828_B07D8(u8 arg0, u8 arg1, u8 arg2) {
	if (arg1 < arg0) {
		if ((arg0 < arg2) || ((arg0 - arg1) < arg2)) {
			arg0 = arg1;
		} else {
			arg0 -= arg2;
		}
	} else if (arg0 < arg1) {
		if (((0xFF - arg2) < arg0) || ((arg1 - arg0) < arg2)) {
			arg0 = arg1;
		} else {
			arg0 += arg2;
		}
	}
	return arg0;
}

s32 func_800A18CC_B087C(void) {
	s16 index = (s16)(D_80158FE8 - buildingInstances);
	return (D_8014D1B8[index >> 5] & (1 << (index & 0x1F))) != 0;
}

// checkIfShouldOpenPauseMenu
void func_800A1924_B08D4(void) {
	if ((currentControllerStates[CONTROLLER_ONE].button & BUTTON_START) &&
		(gameplayMode != GAMEPLAY_MODE_LEVEL_START_CUTSCENE) &&
		(gameplayMode != GAMEPLAY_MODE_UNKB) &&
		(D_8004794C == 0) &&
		(func_80018A58_19658() == 0) &&
		(D_80048188 == 0)) {

		D_801591B0 = D_801591AC;
		D_80052AE0 = gameplayMode;
		D_801591AC = 3;
		gameplayMode = GAMEPLAY_MODE_PAUSE_MENU;
		D_8014ED56 = 0xFF;
		D_8014ED54 = 0;
		D_80050AD0 = D_80050AD4;
		D_801591D4 = D_80052B34->unk6;
		D_8014ED40 = D_8004794A;
		func_800153D8_15FD8(0xC6);
	}
}

void func_800A1A18_B09C8(void) {
	s16 var_v0;
	s16 var_v1;

	if ((currentControllerStates[CONTROLLER_ONE].button & 0x10) || (D_80052B34->unk1A != 0)) {
		var_v0 = D_8013D5B4_14C564;
		if (var_v0 != 3) {
			D_8013D5B4_14C564 = 1;
			D_8014F618.unk6A = 0xB4;
			D_8014F618.unk6C = 0xA0;
			var_v0 = D_8013D5B4_14C564;
		}
	} else {
		var_v0 = D_8013D5B4_14C564;
		if (var_v0 != 0) {
			D_8013D5B4_14C564 = 2;
			D_8014F618.unk6A = 0;
			var_v0 = D_8013D5B4_14C564;
			D_8014F618.unk6C = 0;
		}
	}

	if (var_v0 == 1) {
		D_8013D5B8_14C568 += 0x10;
		if (D_8013D5B8_14C568 >= 0xF1) {
			D_8013D5B4_14C564 = 3;
			var_v0 = D_8013D5B4_14C564;
			D_8013D5B8_14C568 = 0xFF;
		}
	}

	if (var_v0 == 2) {
		D_8013D5B8_14C568 -= 0x20;
		if (D_8013D5B8_14C568 < 0x20) {
			D_8013D5B4_14C564 = 0;
			D_8013D5B8_14C568 = 0;
		}
	}

	if (((D_80158FEC != 0) || ((D_80158FE8 != 0) && (func_800A18CC_B087C() != 0)) || (D_801591B4 == 0xE)) && (D_8013D5B4_14C564 == 3)) {
		var_v1 = D_8013D5BC_14C56C;
		if (var_v1 == 0) {
			D_8013D5BC_14C56C = 1;
			D_8013D5C0_14C570[0] = 0xA;
			D_8014F698 = func_800143C4_14FC4(0x154);
			D_8014F618.unk74 = 0xC8;
			D_8014F618.unk75 = 0xA;
			D_8014F618.unk76 = 0x28;
			D_8014F618.unk7D = 0xC8;
			D_8014F618.unk7E = 0xA;
			D_8014F618.unk7F = 0x28;
			D_8014F618.unk71 = 0xC8;
			D_8014F618.unk72 = 0xA;
			D_8014F618.unk73 = 0x28;
			D_8014F618.unk7A = 0xC8;
			D_8014F618.unk7B = 0xA;
			D_8014F618.unk7C = 0x28;
			D_8014F618.unk6C = 0xDC;
			var_v1 = D_8013D5BC_14C56C;
		}

		if (var_v1 == 1) {
			D_8013D5C0_14C570[0] -= 1;
			if (D_8013D5C0_14C570[0] == 0) {
				D_8013D5BC_14C56C = 2;
				func_801371B0_146160(0);
				D_8014F618.unk6E = 0xFF;
				D_8014F618.unk70 = 1;
			}
		}
	} else {
		D_8013D5BC_14C56C = 0;
		if (D_8013D768_14C718 == 1) {
			func_800158C8_164C8(D_8014F698);
		}
		D_8014F618.unk74 = 0x14;
		D_8014F618.unk75 = 0xE6;
		D_8014F618.unk76 = 0x1E;
		D_8014F618.unk7D = 0xA;
		D_8014F618.unk7E = 0x1E;
		D_8014F618.unk7F = 0x96;
		D_8014F618.unk6C = 0xA0;
		D_8014F618.unk70 = 0;
	}

	D_8014F618.unk7A = func_800A1828_B07D8(D_8014F618.unk7A, D_8014F618.unk7D, 0x14);
	D_8014F618.unk7B = func_800A1828_B07D8(D_8014F618.unk7B, D_8014F618.unk7E, 0x14);
	D_8014F618.unk7C = func_800A1828_B07D8(D_8014F618.unk7C, D_8014F618.unk7F, 0x14);
	D_8014F618.unk6B = func_800A1828_B07D8(D_8014F618.unk6B, D_8014F618.unk6C, 0xA);
	D_8014F618.unk69 = func_800A1828_B07D8(D_8014F618.unk69, D_8014F618.unk6A, 0xA);
	D_8014F618.unk68 = func_800A1828_B07D8(D_8014F618.unk68, D_8014F618.unk67, 0xA);

	var_v1 = D_8013D5BC_14C56C;
	if (var_v1 == 1) {
		D_8014F618.unk6D += 0xA;
	} else {
		if (var_v1 == 2) {
			D_8014F618.unk6D = func_800A1828_B07D8(D_8014F618.unk6D, D_8014F618.unk6E, 0x14);
			var_v1 = D_8013D5BC_14C56C;
		} else {
			D_8014F618.unk71 = func_800A1828_B07D8(D_8014F618.unk71, D_8014F618.unk74, 0x14);
			D_8014F618.unk72 = func_800A1828_B07D8(D_8014F618.unk72, D_8014F618.unk75, 0x14);
			D_8014F618.unk73 = func_800A1828_B07D8(D_8014F618.unk73, D_8014F618.unk76, 0x14);
			D_8014F618.unk6D += 2;
			var_v1 = D_8013D5BC_14C56C;
		}
	}

	D_8013D768_14C718 = var_v1;
}

void func_800A1DD8_B0D88(u8 arg0) {
	f32 tempF0;
	f32 tempF2;
	f32 tempF12;
	f32 tempF10;
	f32 tempF14;
	f32 tempF16;
	f32 tempF18;

	tempF0 = (f32)((u32)D_8014F618.unk60 * 0.03125);
	tempF2 = tempF0 * D_80153AB8.x;
	tempF12 = tempF0 * D_80153AB8.y;
	tempF14 = tempF0 * D_80153AB8.z;
	tempF16 = tempF0 * D_80153AB8.rightX;
	tempF18 = tempF0 * D_80153AB8.rightY;
	tempF10 = tempF0 * D_80153AB8.rightZ;

	gDPLoadTextureBlock_4b(D_8005BB2C++, K0_TO_PHYS(&D_1009C70[D_8014F618.textureIndices[arg0] << 7]), G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
	gDPPipeSync(D_8005BB2C++);

	D_8005BB34->v.ob[0] = (D_8014F618.positions[arg0].x + tempF2);
	D_8005BB34->v.ob[1] = (D_8014F618.positions[arg0].y + tempF12);
	D_8005BB34->v.ob[2] = (D_8014F618.positions[arg0].z + tempF14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (D_8014F618.positions[arg0].x + tempF16);
	D_8005BB34->v.ob[1] = (D_8014F618.positions[arg0].y + tempF18);
	D_8005BB34->v.ob[2] = (D_8014F618.positions[arg0].z + tempF10);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (D_8014F618.positions[arg0].x - tempF2);
	D_8005BB34->v.ob[1] = (D_8014F618.positions[arg0].y - tempF12);
	D_8005BB34->v.ob[2] = (D_8014F618.positions[arg0].z - tempF14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0x400;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (D_8014F618.positions[arg0].x - tempF16);
	D_8005BB34->v.ob[1] = (D_8014F618.positions[arg0].y - tempF18);
	D_8005BB34->v.ob[2] = (D_8014F618.positions[arg0].z - tempF10);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x400;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
	gSP1Quadrangle(D_8005BB2C++, 0, 1, 2, 3, 0);
	gDPPipeSync(D_8005BB2C++);
}

void func_800A2260_B1210(void)
{
	f32 sp6C;
	f32 sp68;
	f32 sp64;
	f32 sp60;
	f32 sp5C;
	f32 sp58;
	gDPLoadTextureBlock_4b(D_8005BB2C++, ((u32) D_1009A70) & 0x1FFFFFFF, 4, 32, 32, 0, 0 | 0x2, 0 | 0x2, 0, 0, 0, 0);
	gDPPipeSync(D_8005BB2C++);
	sp64 = (f32) (((f64) (D_8014F618.head.unkC + D_8014F618.head.unk18)) * 0.5);
	sp68 = (f32) (((f64) (D_8014F618.head.unk10 + D_8014F618.head.unk1C)) * 0.5);
	sp6C = (f32) (((f64) (D_8014F618.head.unk14 + D_8014F618.head.unk20)) * 0.5);
	sp58 = (f32) (((f64) (D_8014F618.head.unkC - D_8014F618.head.unk18)) * 0.5);
	sp5C = (f32) (((f64) (D_8014F618.head.unk10 - D_8014F618.head.unk1C)) * 0.5);
	sp60 = (f32) (((f64) (D_8014F618.head.unk14 - D_8014F618.head.unk20)) * 0.5);
	D_8005BB34->v.ob[0] = D_8014F618.head.unk0 + D_8014F618.head.unkC;
	D_8005BB34->v.ob[1] = D_8014F618.head.unk4 + D_8014F618.head.unk10;
	D_8005BB34->v.ob[2] = D_8014F618.head.unk8 + D_8014F618.head.unk14;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;
	D_8005BB34->v.ob[0] = D_8014F618.head.unk0 + sp64;
	D_8005BB34->v.ob[1] = D_8014F618.head.unk4 + sp68;
	D_8005BB34->v.ob[2] = D_8014F618.head.unk8 + sp6C;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x800;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;
	D_8005BB34->v.ob[0] = D_8014F618.head.unk0 + D_8014F618.head.unk18;
	D_8005BB34->v.ob[1] = D_8014F618.head.unk4 + D_8014F618.head.unk1C;
	D_8005BB34->v.ob[2] = D_8014F618.head.unk8 + D_8014F618.head.unk20;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;
	D_8005BB34->v.ob[0] = D_8014F618.head.unk0 + sp58;
	D_8005BB34->v.ob[1] = D_8014F618.head.unk4 + sp5C;
	D_8005BB34->v.ob[2] = D_8014F618.head.unk8 + sp60;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16) ((s32) D_8014F618.head.unk0);
	D_8005BB34->v.ob[1] = (s16) ((s32) D_8014F618.head.unk4);
	D_8005BB34->v.ob[2] = (s16) ((s32) D_8014F618.head.unk8);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x800;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;
	D_8005BB34->v.ob[0] = D_8014F618.head.unk0 - sp58;
	D_8005BB34->v.ob[1] = D_8014F618.head.unk4 - sp5C;
	D_8005BB34->v.ob[2] = D_8014F618.head.unk8 - sp60;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;
	D_8005BB34->v.ob[0] = D_8014F618.head.unk0 - D_8014F618.head.unk18;
	D_8005BB34->v.ob[1] = D_8014F618.head.unk4 - D_8014F618.head.unk1C;
	D_8005BB34->v.ob[2] = D_8014F618.head.unk8 - D_8014F618.head.unk20;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;
	D_8005BB34->v.ob[0] = D_8014F618.head.unk0 - sp64;
	D_8005BB34->v.ob[1] = D_8014F618.head.unk4 - sp68;
	D_8005BB34->v.ob[2] = D_8014F618.head.unk8 - sp6C;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x800;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;
	D_8005BB34->v.ob[0] = D_8014F618.head.unk0 - D_8014F618.head.unkC;
	D_8005BB34->v.ob[1] = D_8014F618.head.unk4 - D_8014F618.head.unk10;
	D_8005BB34->v.ob[2] = D_8014F618.head.unk8 - D_8014F618.head.unk14;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(&D_8005BB34[-9]), 9, 0);
	gSP1Quadrangle(D_8005BB2C++, 0, 1, 4, 3, 0);
	gSP2Triangles(D_8005BB2C++, 2, 5, 1, 0, 5, 4, 1, 0);
	gSP2Triangles(D_8005BB2C++, 7, 3, 4, 0, 6, 3, 7, 0);
	gSP2Triangles(D_8005BB2C++, 8, 4, 5, 0, 7, 4, 8, 0);
	gDPPipeSync(D_8005BB2C++);
}

s32 func_800A2A88_B1A38(void) {
	s32 temp_v0;

	if (D_8013D5B4_14C564 == 0) {
		return 0;
	}
	temp_v0 = vehicleTypes[D_80052B34->unk1A].weapon1;
	if (temp_v0 == 0) {
		return 0;
	}
	if (((s32)D_80145BE8_154B98[temp_v0][0] >> 8) & 0x200000) {
		return 0;
	}
	if (D_80159320 & 0x10000) {
		return 0;
	}
	if (gameplayMode == GAMEPLAY_MODE_LEVEL_START_CUTSCENE) {
		return 0;
	}
	if (gameplayMode == GAMEPLAY_MODE_UNKB) {
		return 0;
	}
	return 1;
}

// R-trigger aiming reticle?
// US func_800A2B58_B1B08
void DrawGhostTarget(void)
{
	u8 *new_var;
	Gfx *dl;
	if (D_8014F618.unk66 != 1)
	{
		return;
	}
	if (func_800A2A88_B1A38() == 0)
	{
		return;
	}
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS((u32)(&D_80031160)), (G_MTX_NOPUSH | G_MTX_LOAD) | G_MTX_MODELVIEW);
	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, ((0x00000001 | 0x00002000) | 0x00010000) | 0x00020000);
	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, 0x00000004);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, 0, 1);
	gDPSetTextureFilter(D_8005BB2C++, 2 << 12);
	gDPSetColorDither(D_8005BB2C++, 0 << 6);
	gDPSetTexturePersp(D_8005BB2C++, 1 << 19);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, 0 << 14);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0);
	new_var = &D_8014F618.unk79;
	gDPSetPrimColor(D_8005BB2C++, 0, 0, D_8014F618.unk77, D_8014F618.unk78, *new_var, D_8014F618.unk69 / 2);
	gDPPipeSync(D_8005BB2C++);
	func_800A2260_B1210();
}

void func_800A2D98_B1D48(s16 arg0, s16 arg1, s16 arg2, s32 arg3)
{
  s32 flatDistI;
  f32 dx;
  f32 dz;
  f32 dy;
  f32 distScale;
  s16 pointY;
  s32 pulse;
  dx = arg0;
  pointY = arg1;
  dy = pointY;
  dz = arg2;
  D_8014F618.unk66 = 1;
  D_8014F618.head.unk0 = dx;
  D_8014F618.head.unk4 = dy;
  D_8014F618.head.unk8 = dz;
  gSPMatrix(D_8005BB2C++, ((u32) (&D_80031160)) & 0x1FFFFFFF, (G_MTX_NOPUSH | G_MTX_LOAD) | G_MTX_MODELVIEW);
  gDPPipeSync(D_8005BB2C++);
  gSPClearGeometryMode(D_8005BB2C++, ((0x00000001 | 0x00002000) | 0x00010000) | 0x00020000);
  gDPPipeSync(D_8005BB2C++);
  gSPSetGeometryMode(D_8005BB2C++, 0x00000004);
  gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, 0, 1);
  gDPSetTextureFilter(D_8005BB2C++, 2 << 12);
  gDPSetColorDither(D_8005BB2C++, 0 << 6);
  gDPSetTexturePersp(D_8005BB2C++, 1 << 19);
  gDPSetRenderMode(D_8005BB2C++, ((((((0x40 | 0x200) | 0x4000) | 0) | (0 << 30)) | (0 << 26)) | (1 << 22)) | (0 << 18), ((((((0x40 | 0x200) | 0x4000) | 0) | (0 << 28)) | (0 << 24)) | (1 << 20)) | (0 << 16));
  gDPSetTextureLUT(D_8005BB2C++, 0 << 14);
  gDPPipeSync(D_8005BB2C++);
  if (D_8014F618.unk70 == 1)
  {
	D_8014F618.unk6F += 0xF;
	pulse = D_8014F618.unk6F;
  }
  else
	if (D_8014F618.unk70 == 2)
  {
	D_8014F618.unk6F -= 0xF;
	pulse = D_8014F618.unk6F;
  }
  else
  {
	pulse = D_8014F618.unk6F;
	if (pulse < 0xA)
	{
	  D_8014F618.unk6F = pulse + 0xA;
	  pulse = D_8014F618.unk6F;
	}
	else
	  if (pulse >= 0x15)
	{
	  D_8014F618.unk6F = pulse - 0xA;
	  pulse = D_8014F618.unk6F;
	}
  }
  if ((pulse >= 0x79) && (D_8014F618.unk70 == 1))
  {
	D_8014F618.unk70 = 2;
  }
  if ((pulse < 0xF) && (D_8014F618.unk70 == 2))
  {
	D_8014F618.unk70 = 1;
  }
  gDPPipeSync(D_8005BB2C++);
  gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0);
  gDPSetPrimColor(D_8005BB2C++, 0, 0, D_8014F618.unk77, D_8014F618.unk78, ((0, D_8014F618)).unk79, D_8014F618.unk69);
  dx = D_80052B34->unk0 - arg0;
  dy = D_80052B34->unk2 - pointY;
  dz = D_80052B34->unk4 - arg2;
  sqrtf((((dx) * (dx)) + ((dy) * (dy))) + ((dz) * dz));
  dx = ((D_80047954 * 4.0f) - arg0);
  dy = ((D_80047958 * 4.0f) - pointY);
  dz = ((D_8004795C * 4.0f) - arg2);
  distScale = sqrtf(((dx * dx) + (dy * dy)) + (dz * dz));
  D_8014F618.unk60 = distScale;
  distScale /= 6.0f;
  D_8014F618.head.unkC = distScale * D_80153AB8.x;
  D_8014F618.head.unk10 = distScale * D_80153AB8.y;
  D_8014F618.head.unk14 = distScale * D_80153AB8.z;
  D_8014F618.head.unk18 = distScale * D_80153AB8.rightX;
  D_8014F618.head.unk1C = distScale * D_80153AB8.rightY;
  D_8014F618.head.unk20 = distScale * D_80153AB8.rightZ;
  D_8014F618.head.unk24 = D_8014F618.head.unk0 + D_8014F618.head.unk18;
  D_8014F618.head.unk28 = D_8014F618.head.unk4 + D_8014F618.head.unk1C;
  D_8014F618.head.unk2C = D_8014F618.head.unk8 + D_8014F618.head.unk20;
  func_800A2260_B1210();
  gDPSetPrimColor(D_8005BB2C++, 0, 0, D_8014F618.unk71, D_8014F618.unk72, (0, D_8014F618.unk73), D_8014F618.unk6B);
  flatDistI = ((D_80052B2C->unk0 - arg0) * (D_80052B2C->unk0 - arg0));
  flatDistI = ((flatDistI) + ((D_80052B2C->unk8 - arg2) * (D_80052B2C->unk8 - arg2)));
  flatDistI = sqrtf(flatDistI);
  D_80052B40.unk0 = arg0;
  D_80052B40.unk2 = arg1;
  D_80052B40.unk4 = arg2;
  D_80052B48.unk0 = func_80003824_4424(D_80052B2C->unk14 - D_80052B2C->unk8, D_80052B2C->unkC - D_80052B2C->unk0);
 D_80052B48.unk2 = D_8014F618.unk6D << 8; D_80052B48.unk4 = 0x4000 - func_80003824_4424(D_80052B2C->unk4 - pointY, flatDistI); if (!D_8004795C) { } pulse = (s16) (((f32) D_8014F618.unk6F) + distScale); D_80052B50.unk4 = pulse; D_80052B50.unk2 = pulse; D_80052B50.unk0 = pulse;
  func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, D_8005BB38);
  gSPMatrix(D_8005BB2C++, ((u32) (D_8005BB38++)) & 0x1FFFFFFF, (G_MTX_NOPUSH | G_MTX_MUL) | G_MTX_MODELVIEW);
  gSPDisplayList(D_8005BB2C++, (u32) D_100ACB0);
}

void func_800A3490_B2440(VehicleInstance *arg0) {
	static s32 D_8013D76C_14C71C = 0;
	static s32 D_8013D770_14C720 = 10;
	static s32 D_8013D774_14C724 = 0;
	VehicleType *type;
	s32 distance;
	s32 marker;
	s16 dx;
	s16 dz;
	s32 value;
	s16 alpha;
	u8 red;
	u8 green;
	u8 blue;
	u8 fade;
	u8 pulse;

	type = func_800FAFB8_109F68(arg0);
	fade = D_8013D5B8_14C568;
	red = 0x2D;
	green = 0x2E;
	blue = 0x91;
	D_8014F67E = 0;

	if (func_800A2A88_B1A38() != 0) {
		if ((D_80158FE8 != NULL) && (func_800A18CC_B087C() != 0)) {
			value = 1;
		} else {
			value = 0;
		}

		if ((value != 0) || (D_801591B4 == 7) || (D_801591B4 == 8)) {
			red = 0xFF;
			green = 0;
			blue = 0;
		}

		D_8013D770_14C720 = MAX(0, D_8013D770_14C720);
		if (D_8013D770_14C720 > 30) {
			D_8013D770_14C720 = 30;
		}
		if (D_8013D76C_14C71C > 0) {
			D_8013D76C_14C71C--;
		}
		D_8013D5D0_14C580.word = arg0->unk0;
		D_8013D5D4_14C584.word = arg0->unk2;
		D_8013D5D8_14C588.word = arg0->unk4;

		dx = D_80052B2C->unk0 - arg0->unk0;
		dz = D_80052B2C->unk8 - arg0->unk4;
		distance = sqrtf(func_800047FC_53FC(D_80052B2C->unk4 - arg0->unk2) + (dx * dx) + (dz * dz));
		value = D_8013D774_14C724;
		distance = ((distance - value) / 2) + value;
		D_8013D774_14C724 = distance;

		marker = 4;
		switch (D_8013D5B4_14C564) {
			case 3:
				gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, red, green, blue, 0xFF);
				break;
			case 1:
				if (fade < 0x8C) {
					gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, (fade * 0xFF) / 140, (fade * 0xFF) / 140, (fade * 0xFF) / 140, (fade * 0xFF) / 140);
				} else {
					red = (f32)red + ((0xFF - red) * ((0xFF - fade) / 115.0f));
					green = (f32)green + ((0xFF - green) * ((0xFF - fade) / 115.0f));
					blue = (f32)blue + ((0xFF - blue) * ((0xFF - fade) / 115.0f));
					gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, red, green, blue, 0xFF);
				}
				break;
			case 2:
				gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, red, green, blue, fade);
				break;
		}

		value = (0x587 - distance) / 12;
		while (marker >= 2) {
			if ((D_8013D5B4_14C564 != 1) || (fade >= 0x8D)) {
				alpha = 0xFF - value;
			} else {
				alpha = (fade * 2) - value;
			}

			func_800A2D98_B1D48(D_8013D5D0_14C580.halves.low, D_8013D5D4_14C584.halves.low, D_8013D5D8_14C588.halves.low, alpha);

			if (type->unk55 != 0) {
				marker--;
			} else {
				marker = 1;
			}
		}

		if (((D_80158FEC != NULL) || (D_80158FE4 != NULL) || (D_80158FE8 != NULL)) && (D_8013D5B4_14C564 == 3)) {
			if (D_8013D5BC_14C56C != 2) {
				gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, (u32)(0xFF - (D_8013D5C0_14C570[0] * 0xC)));
			} else {
				pulse = (D_80052A8C & 7) * 0x10;
				gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, 0xFF, (pulse * 2) + 0x32, pulse + 0x32, 0xFF);
			}
		}

		gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
		gDPPipeSync(D_8005BB2C++);
		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
		gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_LIGHTING);
	}
}

s32 func_800A3CD0_B2C80(void) {
	if (D_8014F1FA == 0) {
		return 1;
	}
	return 0;
}
