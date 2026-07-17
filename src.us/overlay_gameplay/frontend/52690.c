#include <ultra64.h>
#include "common.h"

// AI - Sets up colored background viewport with geometry modes for frontend screen
void func_800821E0_52690(u8 arg0, u8 arg1, u8 arg2) {
	((Frontend52690Viewport *)D_8005BB24)->unk2 = 0x140;

	gSPViewport(D_8005BB2C++, D_8005BB24 + 0x80000000);
	gSPClearGeometryMode(D_8005BB2C++, 0xFFFFFFFF);
	gSPSetGeometryMode(D_8005BB2C++, G_SHADE | G_SHADING_SMOOTH);
	gSPDisplayList(D_8005BB2C++, (Gfx *)((u32)D_800311A8 & 0x1FFFFFFF));

	func_80004F64_5B64();

	func_80004DDC_59DC(0, 0, 0, 0, ((D_80068088 - 0xA0) / 2) - 1);
	func_80004DDC_59DC(0, 0, 0, (D_80068088 + 0xA0) / 2, D_80068088 - 1);

	func_80004DDC_59DC(arg0, arg1, arg2, (D_80068088 - 0xA0) / 2, ((D_80068088 + 0xA0) / 2) - 1);

	gSPDisplayList(D_8005BB2C++, (Gfx *)((u32)D_800311D0 & 0x1FFFFFFF));
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
}

// AI - Empty stub function
void func_800823C0_52870(void) {
}

/* Empty stub - stores three arguments and returns */
// AI - Empty stub that stores three arguments and returns
void func_800823C8_52878(s32 arg0, s32 arg1, s32 arg2) {
}

// CURRENT(356)
#ifdef NON_MATCHING
// AI - Renders a frontend menu entry with two textures and fade-in/out animation
void func_800823D8_52888(s32 arg0, s32 arg1) {
	Unk80052B40 spA8 = D_80094A6C_64F1C;
	Unk80052B40 spA0 = D_80094A74_64F24;
	Unk80052B40 sp98 = D_80094A7C_64F2C;
	Frontend52690Entry *entry = (Frontend52690Entry *)D_80094A1C_64ECC + arg1;
	s32 span;
	s32 entryUnk0 = entry->unk0;
	s32 entryUnk4Plus1 = entry->unk4 + 1;
	s16 fade = 0;

	if (arg0 < 0x80) {
		fade = 0x7F - arg0;
	}

	spA8.unk4 = 0x76C - (fade * 8);
	sp98.unk0 = (fade * 3) + 0x80;
	sp98.unk2 = (fade * 3) + 0x80;
	sp98.unk4 = (fade * 3) + 0x80;

	gDPSetPrimColor(D_8005BB2C++, 0, 0, 255, 255, 255, fade * 2);
	fade = 0;
	func_800039D0_45D0(&spA8, &spA0, &sp98, D_8005BB38);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, entry->unk8);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 2047, 256);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 0x0000, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 63 << 2, 63 << 2);
	gSPDisplayList(D_8005BB2C++, D_4000040);
	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

	spA0.unk0 = 0;
	span = (entryUnk4Plus1 - entryUnk0) * 10;
	if ((span - 0x76) < arg0) {
		fade = (arg0 - span) + 0x76;
		if (fade >= 0x80) {
			fade = 0x7F;
		}
	}
	sp98.unk0 = (fade * 3) + 0x80;
	sp98.unk2 = (fade * 3) + 0x80;
	sp98.unk4 = (fade * 3) + 0x80;

	gDPSetPrimColor(D_8005BB2C++, 0, 0, 255, 255, 255, fade * 2);
	spA8.unk4 = (fade * 8) - 0x76C;
	func_800039D0_45D0(&spA8, &spA0, &sp98, D_8005BB38);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, entry->unkC);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 2047, 256);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 0x0000, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 63 << 2, 63 << 2);
	gSPDisplayList(D_8005BB2C++, D_4000040);
	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800823D8_52888.s")
#endif

// AI - Loads a 16x16 texture tile from atlas into TMEM for digit rendering
void func_80082868_52D18(s32 arg0) {
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 255, 255, 255, 255);
	gDPTileSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 16, D_40053A0 + (arg0 << 8));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 0, 0x0000, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPTileSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 16, D_40053A0 + (arg0 << 8) + 0x1000);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 0, 0x0020, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 512);
	gSPDisplayList(D_8005BB2C++, D_4002250);
}

#ifdef NON_MATCHING
// CURRENT(4374)
// AI - Decomposes a number into digits and loads 4 digit textures from atlas into TMEM
void func_800829E4_52E94(s32 arg0) {
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s32 digits[4];
	s32 *digitPtr;
	s32 *digitEnd;
	s32 divisor;
	s32 quotient;
	s32 divisorStep;
	digitPtr = digits;
	digitEnd = digits + 4;
	quotient = 0;
	while (digitPtr < digitEnd) {
		quotient = arg0 / divisor;
		*digitPtr++ = quotient;
		arg0 -= quotient * divisor;
		divisor /= divisorStep;
	}

	gDPTileSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 32, D_4002BA0 + (digits[3] << 10));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 0, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 512);

	gDPTileSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 32, D_4002BA0 + (digits[2] << 10));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 0x0080, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 512);

	gDPTileSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 32, D_4002BA0 + (digits[1] << 10));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 0x0100, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 512);

	gDPTileSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 32, D_4002BA0 + (digits[0] << 10));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 0x0180, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 512);

	gSPDisplayList(D_8005BB2C++, D_4000170);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800829E4_52E94.s")
#endif

// transitionToNextLevel
#ifdef NON_MATCHING
// CURRENT(14240)
// AI - Main level completion/transition animation loop with 3D rotation and text
s32 func_80082CBC_5316C(s32 arg0, s32* arg1) {
	s32 pad0;
	s32 pad1;
	s32 pad2;
	Unk80052B40 sp12C;
	u16 sp132;
	s16 sp128;
	Unk80052B40 sp124;
	Unk80052B40 sp11C;
	Unk80052B40 sp114;
	Unk80052B40 sp10C;
	Unk80052B40 sp104;
	s32 sp100;
	s32 spFC;
	s32 spD8;
	s32 spD0;
	s32 spB8;
	s32 sp88;
	s32 sp80;
	s32 sp74;
	s32 sp70;
	s16 varV0_3;
	s32 tempA3;
	s32 tempS0;
	s32 tempS1;
	s32 tempS6;
	s32 tempT5;
	s32 varFp;
	s32 varS0;
	s32 varS1;
	s32 varS4;
	s32 varV0;
	s32 varV0_2;
	s32 varV0_4;
	Frontend52690Entry *tempV0;

	(void)arg1;
	sp12C = D_80094A84_64F34;
	sp124 = D_80094A8C_64F3C;
	sp11C = D_80094A94_64F44;
	sp114 = D_80094A9C_64F4C;
	sp10C = D_80094AA4_64F54;
	varS4 = 0;
	varFp = 0;
	sp104 = D_80094AAC_64F5C;
	spD8 = 0;
	tempV0 = ((Frontend52690Entry *)D_80094A1C_64ECC) + arg0;
	spD0 = 0;
	spFC = tempV0->unk4 + 1;
	D_80052ACA = 4;
	sp100 = tempV0->unk0;

	func_8001363C_1423C();
	func_8000AFDC_BBDC();
	func_800823C0_52870();

	tempT5 = (spFC + sp100 + 1) / 2;
	tempS6 = ((tempT5 - sp100) * 0xA) + 0x10;
	sp80 = ((spFC - sp100) * 0xA) + 0xA;
	sp74 = tempS6 - 0x10;
	sp88 = tempT5;

	do {
		tempS0 = tempS6 - varS4;
		sp70 = tempS0 * 4;
		tempS1 = -tempS0;

		osRecvMesg(&D_8006A8D0, &D_80068038, 1);
		func_80011E14_12A14(0);
		func_80004CC8_58C8();
		func_80004D38_5938();
		func_800821E0_52690(0xFF, 0, 0);

		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);

		sp104.unk0 = varFp * 0x190;
		sp104.unk2 = varFp * 0x64;
		sp104.unk4 = varFp * 0xC8;

		if (tempS6 < varS4) {
			sp12C.unk2 = -0xA0;
			sp11C.unk0 = 0;
		}

		if (tempS6 >= varS4) {
			sp124.unk2 = (varS4 * 0x10) - 0x96;
		} else {
			sp124.unk2 = ((varS4 - tempS6) * 0x10) - 0x12C;
		}

		guPerspective((Mtx *)D_8005BB3C, &sp132, 55.0f, 1.3333334f, 50.0f, D_800AEC3C_7F0EC, 1.0f);
		guLookAt((Mtx *)D_8005BB38, 0.0f, 0.0f, 0.0f, (f32)sp10C.unk0, (f32)sp10C.unk2, (f32)sp10C.unk4,
				 0.0f, 1.0f, 0.0f);
		spB8 = D_8005BB38;
		func_800039D0_45D0(NULL, &sp114, NULL, D_8005BB38);

		gSPPerspNormalize(D_8005BB2C++, sp132);
		gSPMatrix(D_8005BB2C++, D_8005BB3C & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

		D_8005BB38 += 0x40;
		func_80082868_52D18(varFp & 0xF);
		func_800823D8_52888(varS4, arg0);

		sp10C.unk4 = sp70;
		if (tempS1 < tempS0) {
			varV0 = tempS0;
		} else {
			varV0 = tempS1;
		}

		if (varV0 < 0x64) {
			sp10C.unk0 = -0xFA - ((coss((u16)((tempS0 << 0x10) / 0xC8)) * 0x1F4) / 0xFFFF);
		}

		func_800823C8_52878((s32)&sp10C, (s32)&sp104, varFp);
		guPerspective((Mtx *)D_8005BB38, &sp132, 55.0f, 1.3333334f, 1.0f, 2000.0f, 1.0f);

		gSPPerspNormalize(D_8005BB2C++, sp132);
		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
		gSPMatrix(D_8005BB2C++, spB8 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);

		func_800039D0_45D0(&sp124, &sp11C, NULL, D_8005BB38);

		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

		tempA3 = D_8005BB38 + 0x40;
		D_8005BB38 = tempA3;
		func_800039D0_45D0(&sp12C, NULL, NULL, tempA3);

		varV0_2 = sp88;
		if (varS4 < tempS6) {
			varV0_2 = sp100;
			varS1 = sp88;
		} else {
			varS1 = spFC;
		}

		varS0 = varV0_2;
		while (varS0 < varS1) {
			func_800829E4_52E94(varS0);
			gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			varS0++;
		}

		D_8005BB38 += 0x40;
		func_8000345C_405C(0xD000);

		if (spD0 != 0) {
			spD8++;
			func_8000AFDC_BBDC();
			varV0_3 = D_800313D0_31FD0;

			switch (varV0_3) {
				case 0:
					drawText(D_800AEB2C_7EFDC, 0x50, 0, 0);
					drawText(D_800AEB30_7EFE0, 0x80, 2);
					drawText(D_800AEB50_7F000, 0x80, 3);
					drawText(D_800AEB68_7F018, 0x80, 4);
					varV0_3 = D_800313D0_31FD0;
					break;
				case 1:
					drawText(D_800AEB80_7F030, 0x50, 0, 0);
					drawText(D_800AEB84_7F034, 0x80, 2);
					drawText(D_800AEBA4_7F054, 0x80, 3);
					drawText(D_800AEBC4_7F074, 0x80, 4);
					varV0_3 = D_800313D0_31FD0;
					break;
				case 2:
					drawText(D_800AEBDC_7F08C, 0x50, 0, 0);
					drawText(D_800AEBE0_7F090, 0x80, 2);
					drawText(D_800AEBF8_7F0A8, 0x80, 3);
					drawText(D_800AEC14_7F0C4, 0x80, 4);
					varV0_3 = D_800313D0_31FD0;
					break;
			}

			switch (varV0_3) {
				case 0:
					drawText(D_800AEC24_7F0D4, 0x80, 6, D_800949D8_64E88[currentLevel]);
					break;
				case 1:
					drawText(D_800AEC2C_7F0DC, 0x80, 6, D_800949EC_64E9C[currentLevel]);
					break;
				case 2:
					drawText(D_800AEC34_7F0E4, 0x80, 6, D_80094A00_64EB0[currentLevel]);
					break;
			}

			if (isButtonNewlyPressed(CONTROLLER_ONE, 0xD000) != 0) {
				spD8 = 0;
				spD0 = 0;
				varS4++;
			}

			gSPViewport(D_8005BB2C++, D_8005BB24 + 0x80000000);
			func_8000B044_BC44();
		} else if ((varS4 == tempS6) && !(currentControllerStates[0].button & 0x9000)) {
			spD0 = 1;
		} else if (isButtonNewlyPressed(CONTROLLER_ONE, 0x9000) != 0) {
			if (varS4 < tempS6) {
				varFp = (varFp + tempS6) - varS4;
				varS4 = tempS6;
			} else {
				func_80005AEC_66EC(0xFF, 0xFF, 0xFF, 0x20);
			}
		} else {
			varS4++;
		}

		varFp++;
		if (varS4 < sp74) {
			varV0_4 = 0;
		} else if ((tempS6 + 0x10) < varS4) {
			varV0_4 = 0x20;
		} else {
			varV0_4 = (varS4 - tempS6) + 0x10;
		}

		sp114.unk0 = (varV0_4 << 0xA) + 0x8000;
		if ((sp80 < varS4) || (varS4 == 0)) {
			func_80005AEC_66EC(0xFF, 0xFF, 0xFF, 0x20);
		}

		func_80005B84_6784();
		func_8000505C_5C5C();
	} while (func_80005B30_6730() == 0);

	D_80052ACA = 3;
	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80082CBC_5316C.s")
#endif

/* 3x3 matrix-vector multiply: out = mat^T * vec */
// AI - 3x3 matrix-vector multiply: out = mat^T * vec
void func_80083610_53AC0(f32 *mat, f32 *vec, f32 *out) {
	out[0] = vec[0] * mat[0] + vec[1] * mat[3] + vec[2] * mat[6];
	out[1] = vec[0] * mat[1] + vec[1] * mat[4] + vec[2] * mat[7];
	out[2] = vec[0] * mat[2] + vec[1] * mat[5] + vec[2] * mat[8];
}

/* 3D vector cross product: arg2 = arg0 x arg1 */
// AI - 3D vector cross product: arg2 = arg0 x arg1
void func_800836A4_53B54(f32 *arg0, f32 *arg1, f32 *arg2) {
	arg2[0] = arg0[1] * arg1[2] - arg1[1] * arg0[2];
	arg2[1] = arg0[2] * arg1[0] - arg1[2] * arg0[0];
	arg2[2] = arg0[0] * arg1[1] - arg1[0] * arg0[1];
}

/* Divides a 3D vector by a scalar: arg2 = arg1 / arg0 */
// AI - Divides a 3D vector by a scalar: arg2 = arg1 / arg0
void func_80083714_53BC4(f32 arg0, f32 *arg1, f32 *arg2) {
	arg2[0] = arg1[0] / arg0;
	arg2[1] = arg1[1] / arg0;
	arg2[2] = arg1[2] / arg0;
}

/* Returns the squared magnitude of a 3D vector */
// AI - Returns the squared magnitude of a 3D vector
f32 func_8008373C_53BEC(f32 *arg0) {
	f32 x = arg0[0];
	f32 y = arg0[1];
	f32 z = arg0[2];
	return (x * x) + (y * y) + (z * z);
}

/* Computes the magnitude (length) of a 3D vector */
// AI - Computes the magnitude (length) of a 3D vector
f32 func_80083764_53C14(f32 *arg0) {
	f32 sqMag = func_8008373C_53BEC(arg0);
	if (sqMag != 0.0) {
		sqMag = sqrtf(sqMag);
	}
	return sqMag;
}

/* Normalizes vector arg0 into arg1; if magnitude is 0, copies arg0 to arg1 */
// AI - Normalizes a 3D vector; copies if magnitude is zero
void func_800837B4_53C64(f32 *arg0, f32 *arg1) {
	f32 mag;

	mag = func_80083764_53C14(arg0);
	if (mag == 0.0) {
		*(Vec3f*)arg1 = *(Vec3f*)arg0;
	} else {
		func_80083714_53BC4(mag, arg0, arg1);
	}
}

/* Computes the dot product of two 3D vectors */
#ifdef NON_MATCHING
// AI - Computes the dot product of two 3D vectors
f32 func_80083820_53CD0(f32 *arg0, f32 *arg1) {
	return (arg0[0] * arg1[0]) + (arg0[1] * arg1[1]) + (arg1[2] * arg0[2]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80083820_53CD0.s")
#endif

/* Subtracts two 3D vectors: arg2 = arg0 - arg1 */
// AI - Subtracts two 3D vectors: arg2 = arg0 - arg1
void func_80083850_53D00(f32 *arg0, f32 *arg1, f32 *arg2) {
	arg2[0] = arg0[0] - arg1[0];
	arg2[1] = arg0[1] - arg1[1];
	arg2[2] = arg0[2] - arg1[2];
}

/* Adds two 3D vectors: arg2 = arg0 + arg1 */
// AI - Adds two 3D vectors: arg2 = arg0 + arg1
void func_80083884_53D34(f32 *arg0, f32 *arg1, f32 *arg2) {
	arg2[0] = arg1[0] + arg0[0];
	arg2[1] = arg1[1] + arg0[1];
	arg2[2] = arg1[2] + arg0[2];
}

/* Multiplies a 3D vector by a scalar: arg2 = arg1 * arg0 */
// AI - Multiplies a 3D vector by a scalar: arg2 = arg1 * arg0
void func_800838B8_53D68(f32 arg0, f32 *arg1, f32 *arg2) {
	arg2[0] = arg1[0] * arg0;
	arg2[1] = arg1[1] * arg0;
	arg2[2] = arg1[2] * arg0;
}

// AI - Extracts 3D basis vectors from a matrix for particle orientation
void func_800838E0_53D90(Mtx *arg0) {
	f32 sp58[4][4];
	f32 sp34[3][3];
	s16 i;
	s16 j;
	f32 sp24[3];

	guMtxL2F(sp58, arg0);
	for (i = 0; i < 3; i++) {
		for (j = 0; j < 3; j++) {
			sp34[i][j] = sp58[j][i];
		}
	}

	sp24[0] = -0.5f;
	sp24[1] = 0.5f;
	sp24[2] = 0.0f;
	func_80083610_53AC0((f32 *)sp34, sp24, D_800DE0C0);
	sp24[0] = -sp24[0];
	func_80083610_53AC0((f32 *)sp34, sp24, D_800DE0CC);
	func_800836A4_53B54(D_800DE0C0, D_800DE0CC, D_800DE0D8);
	func_800837B4_53C64(D_800DE0D8, D_800DE0D8);
}

/* Copies a 3D float vector to D_800DE100 and truncates another to s16 shorts */
// AI - Copies a 3D float vector to global state and truncates another to s16 shorts
void func_800839F0_53EA0(f32 *arg0, f32 *arg1) {
	D_800DE100[0] = arg0[0];
	D_800DE100[1] = arg0[1];
	D_800DE100[2] = arg0[2];
	D_800DE10C = (s16)arg1[0];
	D_800DE10E = (s16)arg1[1];
	D_800DE110 = (s16)arg1[2];
}

#ifdef NON_MATCHING
// AI - Allocates an entry in the D_800DE130 pool; returns index or 0xFB if full
u8 func_80083A58_53F08(u8 arg0) {
	u8 orig;
	u8 j;

	if (D_800DE838 >= 0x96) {
		return 0xFB;
	}
	orig = D_800DE839;
	D_800DE130[orig].unk0 = arg0;
	D_800DE130[orig].unk1 = 0;
	D_800DE130[orig].unk4 = 0;
	D_800DE130[orig].unk6 = -6;
	D_800DE130[orig].unk8 = -6;
	D_800DE838++;
	D_800DE839 = 0x96;
	j = orig;
	if (orig < 0x96) {
		do {
			if (D_800DE130[j].unk0 == 0xFA) {
				D_800DE839 = j;
				j = 0x96;
			}
			j++;
		} while (j < 0x96);
	}
	return orig;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80083A58_53F08.s")
#endif

/* Marks a D_800DE130 entry as freed (0xFA), decrements count, updates min index */
// AI - Marks a D_800DE130 entry as freed (0xFA), decrements count, updates min index
void func_80083B14_53FC4(u8 arg0) {
	if (D_800DE130[arg0].unk0 != 0xFA) {
		D_800DE130[arg0].unk0 = 0xFA;
		D_800DE838--;
		if (arg0 < D_800DE839) {
			D_800DE839 = arg0;
		}
	}
}

// https://decomp.me/scratch/cmxeP
// CURRENT(165)
#ifdef NON_MATCHING
// AI - Allocates an entry in the D_800DE840 linked list pool; returns index or -3 if full
s16 func_80083B7C_5402C(u8 arg0) {
	s16 idx;
	s16 i;

	if (D_800E1978 >= 0x1C2) {
		return -3;
	}

	idx = D_800E197A;
	D_800DE840[idx].unk0 = 1;
	D_800DE840[idx].unk2 = 1;
	D_800DE840[idx].unk4 = -5;

	if (D_800DE130[arg0].unk4 == 0) {
		D_800DE130[arg0].unk6 = idx;
		D_800DE840[idx].unk6 = -4;
	} else {
		D_800DE840[idx].unk6 = D_800DE130[arg0].unk8;
		D_800DE840[D_800DE130[arg0].unk8].unk4 = idx;
	}

	D_800DE130[arg0].unk8 = idx;
	D_800DE130[arg0].unk4++;
	D_800E1978++;
	D_800E197A = 0x1C2;

	i = idx;
	if (idx < 0x1C2) {
		do {
			if (D_800DE840[i].unk0 == 0) {
				D_800E197A = i;
				i = 0x1C2;
			}
			i++;
		} while (i < 0x1C2);
	}

	return idx;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80083B7C_5402C.s")
#endif

/* Allocate 3 linked entries for arg0; free on failure, return first idx or -3 */
// AI - Allocates three linked entries; rolls back all on any allocation failure
s16 func_80083C98_54148(u8 arg0) {
	s16 result, idx2;

	result = func_80083B7C_5402C(arg0);
	if (result != -3) {
		idx2 = func_80083B7C_5402C(arg0);
		if (idx2 == -3) {
			func_80083DBC_5426C(result, arg0);
			result = -3;
		} else if (func_80083B7C_5402C(arg0) == -3) {
			func_80083DBC_5426C(result, arg0);
			func_80083DBC_5426C(idx2, arg0);
			result = -3;
		}
	}
	return result;
}

/* Calls func_80083B7C twice; if second call returns -3, calls func_80083DBC */
// AI - Allocates two linked entries; rolls back both on allocation failure
s16 func_80083D50_54200(u8 arg0) {
	s16 result;

	result = func_80083B7C_5402C(arg0);
	if (result != -3) {
		if (func_80083B7C_5402C(arg0) == -3) {
			func_80083DBC_5426C(result, arg0);
			result = -3;
		}
	}
	return result;
}

#ifdef NON_MATCHING
// CURRENT(1785)
// AI - Frees a D_800DE840 linked-list entry from its parent chain, updating neighbor links
void func_80083DBC_5426C(s16 arg0, u8 arg1) {
	Unk800DE840 *temp_v0;
	s32 temp_a3;
	s16 temp_v1;
	Unk800DE840 *temp_a1;
	s16 temp_idx;
	s16 temp_count;
	s16 temp_min;

	temp_v0 = &D_800DE840[arg0];
	if (temp_v0->unk0 == 0) {
		return;
	}

	temp_a3 = D_800DE130[arg1].unk4;
	temp_v1 = -6;
	switch (temp_a3) {
		case 0:
			D_800DE130[arg1].unk6 = temp_v1;
			D_800DE130[arg1].unk8 = temp_v1;
			return;

		case 1:
			D_800DE130[arg1].unk6 = temp_v1;
			D_800DE130[arg1].unk8 = temp_v1;
			break;

		case 2:
			temp_v1 = temp_v0->unk6;
			if (temp_v1 == -4) {
				D_800DE130[arg1].unk6 = temp_v0->unk4;
				temp_a1 = &D_800DE840[D_800DE130[arg1].unk6];
				temp_a1->unk6 = -4;
				temp_a1->unk4 = -5;
			} else if (temp_v0->unk4 == -5) {
				D_800DE130[arg1].unk8 = temp_v1;
				temp_a1 = &D_800DE840[D_800DE130[arg1].unk6];
				temp_a1->unk6 = -4;
				temp_a1->unk4 = -5;
			}
			break;

		default:
			temp_v1 = temp_v0->unk6;
			if (temp_v1 == -4) {
				temp_idx = temp_v0->unk4;
				D_800DE130[arg1].unk6 = temp_idx;
				D_800DE840[temp_idx].unk6 = -4;
			} else {
				temp_idx = temp_v0->unk4;
				if (temp_idx == -5) {
					D_800DE130[arg1].unk8 = temp_v1;
					D_800DE840[temp_v1].unk4 = -5;
				} else {
					D_800DE840[temp_idx].unk6 = temp_v1;
					D_800DE840[temp_v0->unk6].unk4 = temp_v0->unk4;
				}
			}
			break;
		}

	temp_v0->unk0 = 0;
	D_800DE130[arg1].unk4 = temp_a3 - 1;
	D_800E1978 = D_800E1978 - 1;
	if (arg0 < D_800E197A) {
		D_800E197A = arg0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80083DBC_5426C.s")
#endif

/* Free 3 linked entries from D_800DE840 chain starting at arg0 */
// AI - Frees three linked entries from the D_800DE840 pool chain
void func_80083F8C_5443C(s16 arg0, u8 arg1) {
	s16 sp1E;
	u8 sp27;

	if (arg0 >= 0 && arg0 < 450 && arg1 < 150) {
		sp1E = D_800DE840[arg0].unk4;
		sp27 = arg1;
		func_80083DBC_5426C(arg0 & 0xFFFFFFFFu, arg1);
		arg0 = D_800DE840[sp1E].unk4;
		func_80083DBC_5426C(sp1E, sp27);
		func_80083DBC_5426C(arg0, sp27);
	}
}

/* Calls func_80083DBC twice if arg0 and arg1 are in range */
// AI - Frees two linked entries from the D_800DE840 pool
void func_8008404C_544FC(s16 arg0, u8 arg1) {
	if (arg0 >= 0 && arg0 < 0x1C2 && arg1 < 0x96) {
		s16 val = D_800DE840[arg0].unk4;
		func_80083DBC_5426C(arg0, arg1);
		func_80083DBC_5426C(val, arg1);
	}
}

/* Calls func_80083DBC for each active unk4 iteration of a D_800DE130 entry */
// AI - Frees all active linked entries for a given D_800DE130 parent
void func_800840C4_54574(u8 arg0) {
	if (D_800DE130[arg0].unk4 > 0) {
		do {
			func_80083DBC_5426C(D_800DE130[arg0].unk6, arg0);
		} while (D_800DE130[arg0].unk4 > 0);
	}
}

// AI - Initializes a particle node with randomized parameters (type, frame, velocity, lifespan)
void func_8008412C_545DC(u8 arg0, u8 arg1) {
	s32 pad0;
	s16 index;
	u8 *temp_s0;

	if ((arg0 != 0xFB) && ((index = func_80083B7C_5402C(arg0)) != -3)) {
		temp_s0 = (u8 *)&D_800DE840[index].unk8;
		temp_s0[1] = (func_800038E0_44E0() % 4);
		temp_s0[2] = (func_800038E0_44E0() % 10) + 1;
		temp_s0[3] = (func_800038E0_44E0() % 8) + 8;
		if ((func_800038E0_44E0() % 2) == 1) {
			temp_s0[3] = -(s8)temp_s0[3];
		}
		temp_s0[4] = (func_800038E0_44E0() % 15) + 10;
		if ((arg1 >= 0x1A) && ((func_800038E0_44E0() % 2) == 1)) {
			temp_s0[4] = -(s8)temp_s0[4];
		}
		temp_s0[0] = arg1;
		if ((D_800DE0B7 == 1) || (D_800DE0B9 == 1)) {
			*(s16 *)&temp_s0[6] = (func_800038E0_44E0() % 1000) + 0x19;
		} else {
			*(s16 *)&temp_s0[6] = (func_800038E0_44E0() % 200) + 0x19;
		}
		temp_s0[8] = (func_800038E0_44E0() % 20) - 10;
		if ((s8)temp_s0[8] < 0) {
			temp_s0[8] = (s8)temp_s0[8] - 5;
			return;
		}
		temp_s0[8] = (s8)temp_s0[8] + 5;
	}
}

#ifdef NON_MATCHING
// CURRENT(2707)
// AI - Sets up an interpolated motion effect with start/end positions, duration, and child particles
u8 func_80084324_547D4(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7) {
	s16 pad0;
	s16 pad1;
	s16 sp2A;
	s16 temp_v0_2;
	u8 temp_s2;
	s32 temp_v0;
	s32 temp_t1;
	s32 var_s0;
	s16 *temp_v1;

	temp_v0 = func_80083A58_53F08(0);
	if (temp_v0 != 0xFB) {
		temp_s2 = temp_v0 & 0xFF;
		temp_v0_2 = func_80083B7C_5402C(temp_s2 & 0xFF);
		sp2A = temp_v0_2;
		if (temp_v0_2 == -3) {
			func_80083B14_53FC4(temp_s2 & 0xFF);
		} else {
			temp_v1 = (s16 *) &D_800DE840[temp_v0_2].unk8;
			D_800DE130[temp_s2].unkA = temp_v0_2;
			temp_v1[0] = arg0;
			temp_v1[3] = (arg3 - arg0) / arg6;
			temp_v1[4] = (arg4 - arg1) / arg6;
			temp_v1[5] = (arg5 - arg2) / arg6;
			var_s0 = 0;
			temp_v1[6] = arg6;
			temp_v1[1] = arg1;
			temp_v1[2] = arg2;
			D_800DE840[temp_v0_2].unk2 = arg7;
			do {
				func_8008412C_545DC(temp_s2 & 0xFF, (func_800038E0_44E0() % 230) & 0xFF);
				temp_t1 = (var_s0 + 1) & 0xFF;
				var_s0 = temp_t1;
			} while (temp_t1 < 8);
		}
	}

	return ((u8 *) &sp2A)[1];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80084324_547D4.s")
#endif

// AI - Updates particle state each frame: animates frames, handles velocity, updates alpha
void func_80084508_549B8(u8 arg0) {
	s16 cur;
	s8 *view;
	s32 v1;
	s8 delta;

	cur = D_800DE130[arg0].unkA;
	cur = D_800DE840[cur].unk4;
	if ((cur == -5) || (cur == -6)) {
		return;
	}

	do {
		view = (s8 *)&D_800DE840[cur] + 8;

		if (view[4] < 0) {
			if (((u8 *)view)[0] < 0x19) {
				s16 next = D_800DE840[cur].unk4;

				func_80083DBC_5426C(cur, arg0);
				func_8008412C_545DC(arg0, 0);
				cur = next;
				continue;
			}
		}

		delta = view[3];
		if (delta > 0) {
			v1 = ((u8 *)view)[2];
			if (v1 < 0xE5) {
				((u8 *)view)[2] = (v1 + 0) + delta;
			} else {
				((u8 *)view)[2] = 1;
				view[1]++;
				if (view[1] >= 4) {
					view[1] = 0;
				}
			}
		} else {
			v1 = ((u8 *)view)[2];
			if (v1 >= 0x11) {
				((u8 *)view)[2] = (v1 + 0) + delta;
			} else {
				((u8 *)view)[2] = 0xE5;
				view[1]--;
				if (view[1] < 0) {
					view[1] = 3;
				}
			}
		}

		delta = view[4];
		if ((delta > 0) && (((u8 *)view)[0] >= 0xE6)) {
			view[4] = -delta;
			delta = view[4];
		}

		((u8 *)view)[0] += delta;
		v1 = view[8];
		*(s16 *)(view + 6) += v1;
		if (v1 > 0) {
			if (*(s16 *)(view + 6) >= 0xF4) {
				view[8] = -v1;
			}
		} else if (*(s16 *)(view + 6) < 0xC) {
			view[8] = -v1;
		}

		cur = D_800DE840[cur].unk4;
	} while ((cur != -5) && (cur != -6));
}

/* Decrement timer and update positions or free entry */
// AI - Decrements timer on an effect; frees it if expired, otherwise updates position
void func_8008472C_54BDC(u8 arg0) {
	s16 *ptr;

	ptr = (s16 *)((u8 *)&D_800DE840[D_800DE130[arg0].unkA] + 8);
	ptr[6]--;
	if (ptr[6] == 0) {
		func_800840C4_54574(arg0);
		func_80083B14_53FC4(arg0);
	} else {
		ptr[0] += ptr[3];
		ptr[1] += ptr[4];
		ptr[2] += ptr[5];
	}
}

#ifdef NON_MATCHING
// CURRENT(59773)
// AI - Renders a 3D particle ring/aura effect using alpha-blended triangles
void func_800847E4_54C94(u8 arg0) {
	u8 color[3];
	Unk800DE130 *entry130;
	Unk800DE840 *entry840;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	u8 *view;
	Vec3f origin;
	Vec3f vecA;
	Vec3f vecB;
	Vec3f outA;
	Vec3f outB;
	f32 camDx;
	f32 camDy;
	f32 camDz;
	f32 dist;
	f32 t0;
	f32 t1;
	f32 p0x;
	f32 p0y;
	f32 p0z;
	volatile u8 count;
	f32 p1x;
	f32 p1y;
	f32 p1z;
	f64 distBias;
	u8 alpha0;
	u8 alpha1;
	u8 triCount;
	u16 ringScale;

	entry130 = &D_800DE130[arg0];
	count = entry130->unk4 - 1;

	if ((D_800DE0B8 == 1) || (D_800DE0B9 != 0)) {
		color[0] = 0x82;
		color[1] = 0xC8;
		color[2] = 0xFF;
	} else {
		color[0] = 0xFF;
		color[1] = 0x9E;
		color[2] = 0x16;
	}

	entry840 = &D_800DE840[entry130->unkA];
	view = (u8 *)entry840 + 8;
	origin.x = ((s16 *)view)[0];
	origin.y = ((s16 *)view)[1];
	origin.z = ((s16 *)view)[2];

	camDx = origin.x - (D_800DE100[0] * 4.0f);
	camDy = origin.y - (D_800DE100[1] * 4.0f);
	camDz = origin.z - (D_800DE100[2] * 4.0f);
	dist = sqrtf((camDx * camDx) + (camDy * camDy) + (camDz * camDz));

	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, 1);
	gDPSetRenderMode(D_8005BB2C++, 0x504240, 0x504240);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, 0, 0, 0, SHADE, 0, 0, 0, PRIMITIVE, 0, 0, 0, SHADE);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, color[0], color[1], color[2], 0);
	gDPPipeSync(D_8005BB2C++);

	triCount = count;
	if ((s32)triCount > 0) {
		distBias = (f64)((f64)(dist / 4.0f) + 800.0);
		do {
				f32 scale;
			f32 texScale;

			entry840 = &D_800DE840[entry840->unk4];
				scale = (f32)(distBias * ((f64)*(s16 *)((u8 *)entry840 + 0xE) * 0.00390625));

				func_800838B8_53D68(scale, D_800DE0C0, (f32 *)&vecA);
				func_800838B8_53D68(scale, D_800DE0CC, (f32 *)&vecB);

			view = (u8 *)entry840 + 8;
			texScale = 256.0f;
			t0 = (f32)view[2] / texScale;
			t1 = (f32)(view[2] + 0xA) / texScale;

			switch (*((s8 *)view + 1)) {
				case 0:
					func_80083884_53D34((f32 *)&origin, (f32 *)&vecA, (f32 *)&outA);
					func_80083884_53D34((f32 *)&origin, (f32 *)&vecB, (f32 *)&outB);
					break;
				case 1:
					func_80083884_53D34((f32 *)&origin, (f32 *)&vecB, (f32 *)&outA);
					func_80083850_53D00((f32 *)&origin, (f32 *)&vecA, (f32 *)&outB);
					break;
				case 2:
					func_80083850_53D00((f32 *)&origin, (f32 *)&vecA, (f32 *)&outA);
					func_80083850_53D00((f32 *)&origin, (f32 *)&vecB, (f32 *)&outB);
					break;
				default:
					func_80083850_53D00((f32 *)&origin, (f32 *)&vecB, (f32 *)&outA);
					func_80083884_53D34((f32 *)&origin, (f32 *)&vecA, (f32 *)&outB);
					break;
			}

			camDx = outB.x - outA.x;
			camDy = outB.y - outA.y;
			camDz = outB.z - outA.z;

			p0x = (camDx * t0) + outA.x;
			p0y = (camDy * t0) + outA.y;
			p0z = (camDz * t0) + outA.z;
			p1x = (camDx * t1) + outA.x;
			p1y = (camDy * t1) + outA.y;
			p1z = (camDz * t1) + outA.z;

			if (D_800DE0B7 != 0) {
				alpha0 = (u8)(s32)(((f32)((u32)view[0] * D_800DE0BB)) / 255.0f);
				alpha1 = (u8)(s32)(((f32)(D_800DE0BB * 20)) / 255.0f);
			} else {
				alpha0 = view[0];
				alpha1 = 20;
			}

			D_8005BB34->v.ob[0] = (s16)origin.x;
			D_8005BB34->v.ob[1] = (s16)origin.y;
			D_8005BB34->v.ob[2] = (s16)origin.z;
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0;
			D_8005BB34->v.tc[1] = 0;
			D_8005BB34->v.cn[0] = 0;
			D_8005BB34->v.cn[1] = 0;
			D_8005BB34->v.cn[2] = 0;
			D_8005BB34->v.cn[3] = alpha0;
			D_8005BB34++;

			D_8005BB34->v.ob[0] = (s16)p1x;
			D_8005BB34->v.ob[1] = (s16)p1y;
			D_8005BB34->v.ob[2] = (s16)p1z;
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0;
			D_8005BB34->v.tc[1] = 0;
			D_8005BB34->v.cn[0] = 0;
			D_8005BB34->v.cn[1] = 0;
			D_8005BB34->v.cn[2] = 0;
			D_8005BB34->v.cn[3] = alpha1;
			D_8005BB34++;

			D_8005BB34->v.ob[0] = (s16)p0x;
			D_8005BB34->v.ob[1] = (s16)p0y;
			D_8005BB34->v.ob[2] = (s16)p0z;
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0;
			D_8005BB34->v.tc[1] = 0;
			D_8005BB34->v.cn[0] = 0;
			D_8005BB34->v.cn[1] = 0;
			D_8005BB34->v.cn[2] = 0;
			D_8005BB34->v.cn[3] = alpha1;
			D_8005BB34++;

			gDPPipeSync(D_8005BB2C++);
			gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 3) & 0x1FFFFFFF), 3, 0);
			gSP1Triangle(D_8005BB2C++, 0, 1, 2, 0);

			triCount = (triCount - 1) & 0xFF;
		} while ((s32)triCount > 0);
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 1, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, 1, 0, SHADE, 0, TEXEL0, 0, SHADE, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_100DE80);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31, 31);

	ringScale = *(u16 *)((u8 *)&D_800DE840[entry130->unkA] + 2);
	func_800853A8_55858(&origin, color, D_800DE0E4, ringScale, D_800DE0BB);

	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
	gDPSetRenderMode(D_8005BB2C++, 0x504A50, 0x504A50);
	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800847E4_54C94.s")
#endif

#ifdef NON_MATCHING
// CURRENT(2122)
// AI - Renders a colored ring quad texture around a point in 3D space
void func_800853A8_55858(Vec3f *arg0, u8 *arg1, u8 *arg2, s32 arg3, u8 arg4) {
	f32 temp_f0;
	f32 temp_f2;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f16;
	f32 temp_f18;
	f32 temp_f4;

	temp_f2 = (f32)(u16)arg3;
	temp_f0 = D_800DE0C0[0];
	temp_f0 *= temp_f2;
	temp_f12 = D_800DE0C0[1];
	temp_f12 *= temp_f2;
	temp_f14 = D_800DE0C0[2];
	temp_f14 *= temp_f2;
	temp_f16 = D_800DE0C0[3];
	temp_f16 *= temp_f2;
	temp_f18 = D_800DE0C0[4];
	temp_f18 *= temp_f2;
	temp_f4 = D_800DE0C0[5];
	temp_f4 *= temp_f2;

	D_8005BB34->v.ob[0] = (s16)(s32)(arg0->x + temp_f0);
	D_8005BB34->v.ob[1] = (s16)(s32)(arg0->y + temp_f12);
	D_8005BB34->v.ob[2] = (s16)(s32)(arg0->z + temp_f14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = arg1[0];
	D_8005BB34->v.cn[1] = arg1[1];
	D_8005BB34->v.cn[2] = arg1[2];
	D_8005BB34->v.cn[3] = arg4;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(arg0->x + temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)(arg0->y + temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(arg0->z + temp_f4);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x800;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = arg1[0];
	D_8005BB34->v.cn[1] = arg1[1];
	D_8005BB34->v.cn[2] = arg1[2];
	D_8005BB34->v.cn[3] = arg4;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(arg0->x - temp_f0);
	D_8005BB34->v.ob[1] = (s16)(s32)(arg0->y - temp_f12);
	D_8005BB34->v.ob[2] = (s16)(s32)(arg0->z - temp_f14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x800;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = arg1[0];
	D_8005BB34->v.cn[1] = arg1[1];
	D_8005BB34->v.cn[2] = arg1[2];
	D_8005BB34->v.cn[3] = arg4;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(arg0->x - temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)(arg0->y - temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(arg0->z - temp_f4);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = arg1[0];
	D_8005BB34->v.cn[1] = arg1[1];
	D_8005BB34->v.cn[2] = arg1[2];
	D_8005BB34->v.cn[3] = arg4;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)arg0->x;
	D_8005BB34->v.ob[1] = (s16)(s32)arg0->y;
	D_8005BB34->v.ob[2] = (s16)(s32)arg0->z;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0x400;
	D_8005BB34->v.cn[0] = arg2[0];
	D_8005BB34->v.cn[1] = arg2[1];
	D_8005BB34->v.cn[2] = arg2[2];
	D_8005BB34->v.cn[3] = arg4;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 5) & 0x1FFFFFFF), 5, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 4, 0, 4, 1, 2, 0);
	gSP2Triangles(D_8005BB2C++, 4, 2, 3, 0, 0, 3, 4, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800853A8_55858.s")
#endif

#ifdef NON_MATCHING
// CURRENT(11541)
// AI - Spawns a child particle with random position offset and velocity from a template
void func_800857D4_55C84(u8 arg0, f32 *arg1, s32 arg2, s32 arg3) {
	extern f64 D_800AEC40_7F0F0;
	extern f64 D_800AEC48_7F0F8;
	extern f64 D_800AEC50_7F100;

	s16 *template;
	s16 *spawn;
	s16 spawnIdx;
	s16 range;
	s16 spreadX;
	s16 spreadY;
	s16 spreadZ;
	f32 randX;
	f32 randY;
	f32 randZ;
	s32 scale;

	template = (s16 *)((u8 *)&D_800DE840[D_800DE130[arg0].unk6] + 8);
	spawnIdx = func_80083B7C_5402C(arg0);
	if (spawnIdx == -3) {
		return;
	}

	if ((((u8 *)template)[0xA] == 1) || (((u8 *)template)[0xA] == 3) || (((u8 *)template)[0xA] == 4)) {
		spawn = (s16 *)((u8 *)&D_800DE840[spawnIdx] + 8);
		spawn[0] = template[0];
		spawn[1] = template[1];
		spawn[2] = template[2];

		randX = (f32)((f64)(f32)(func_800038E0_44E0() % (u8)arg3) / D_800AEC40_7F0F0);
		if ((func_800038E0_44E0() % 21) < 10) {
			randX = -randX;
		}
		randX += arg1[0];

		randY = (f32)((f64)(f32)(func_800038E0_44E0() % (u8)arg3) / D_800AEC48_7F0F8);
		if ((func_800038E0_44E0() % 21) < 10) {
			randY = -randY;
		}
		randY += arg1[1];

		randZ = (f32)((f64)(f32)(func_800038E0_44E0() % (u8)arg3) / D_800AEC50_7F100);
		if ((func_800038E0_44E0() % 21) < 10) {
			randZ = -randZ;
		}
		randZ += arg1[2];

		func_800837B4_53C64(&randX, &randX);
		scale = ((s8)arg2) / 4;
		((s8 *)spawn)[6] = (s8)((f32)scale * randX);
		((s8 *)spawn)[7] = (s8)((f32)scale * randY);
		((s8 *)spawn)[8] = (s8)((f32)scale * randZ);
		((u8 *)spawn)[9] = 0xFF;
		((u8 *)spawn)[0xA] = 0;
		return;
	}

	range = template[6];
	spreadX = (func_800038E0_44E0() % (range * 2)) - range;
	spreadY = (func_800038E0_44E0() % (range * 2)) - range;
	spreadZ = (func_800038E0_44E0() % (range * 2)) - range;

	spawn = (s16 *)((u8 *)&D_800DE840[spawnIdx] + 8);
	spawn[0] = template[0] + spreadX;
	spawn[1] = template[1] + spreadY;
	spawn[2] = template[2] + spreadZ;
	((s8 *)spawn)[6] = -(spreadX / ((u8 *)template)[9]);
	((s8 *)spawn)[7] = -(spreadY / ((u8 *)template)[9]);
	((s8 *)spawn)[8] = -(spreadZ / ((u8 *)template)[9]);
	((u8 *)spawn)[9] = 12;
	((u8 *)spawn)[0xA] = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800857D4_55C84.s")
#endif

/* Clamps a value to the range [1, 80] */
// AI - Clamps a value to the range [1, 80]
s32 func_80085CB8_56168(s16 arg0) {
	if (arg0 >= 0x51) {
		arg0 = 0x50;
	} else if (arg0 == 0) {
		arg0 = 1;
	}
	return arg0;
}

#ifdef NON_MATCHING
// CURRENT(4055)
// AI - Creates a particle system: allocates a parent entry and spawns multiple child particles
void func_80085CEC_5619C(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6, u8 arg7, s16 arg8,
					 u8 arg9, u8 arg10, u8 arg11, u8 arg12, u8 arg13) {
	f32 sp34;
	f32 sp38;
	f32 sp3C;
	u8 temp_s5;
	s16 temp_v0;
	s16 temp_s1;
	u8 i;

	temp_s5 = func_80083A58_53F08(1);
	if (temp_s5 == 0xFB) {
		return;
	}

	temp_v0 = func_80083B7C_5402C(temp_s5);
	if (temp_v0 == -3) {
		func_80083B14_53FC4(temp_s5);
		return;
	}

	D_800DE130[temp_s5].unkA = temp_v0;
	D_800DE840[temp_v0].unk8 = arg0;
	D_800DE840[temp_v0].unkA = arg1;
	D_800DE840[temp_v0].unkC = arg2;
	D_800DE840[temp_v0].unk2 = arg9;
	D_800DE840[temp_v0].unkE = arg10;
	D_800DE840[temp_v0].unkF = arg11;
	D_800DE840[temp_v0].unk10 = arg12;
	D_800DE840[temp_v0].unk12 = arg13;

	sp34 = arg3;
	sp38 = arg4;
	sp3C = arg5;
	func_800837B4_53C64(&sp34, &sp34);

	temp_s1 = func_80085CB8_56168(arg8);
	i = 0;
	while (i < temp_s1) {
		func_800857D4_55C84(temp_s5, (s32)&sp34, arg6, arg7);
		i++;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80085CEC_5619C.s")
#endif

// AI - Creates a simpler particle effect: allocates parent entry and spawns child particles
void func_80085EA8_56358(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4, u8 arg5, u8 arg6) {
	u8 temp_s2;
	s16 temp_v0;
	s32 temp_v0_2;
	u8 temp_a0;
	u8 var_s0;

	temp_s2 = func_80083A58_53F08(1);
	if (temp_s2 == 0xFB) {
		return;
	}

	temp_v0 = func_80083B7C_5402C(temp_s2);
	if (temp_v0 == -3) {
		func_80083B14_53FC4(temp_s2);
		return;
	}

	D_800DE130[temp_s2].unkA = temp_v0;
	D_800DE840[temp_v0].unk8 = arg0;
	D_800DE840[temp_v0].unkA = arg1;
	D_800DE840[temp_v0].unkE = 0xFF;
	D_800DE840[temp_v0].unkF = 0xFF;
	D_800DE840[temp_v0].unk10 = 0xFF;
	D_800DE840[temp_v0].unk2 = arg6;
	D_800DE840[temp_v0].unkC = arg2;
	D_800DE840[temp_v0].unk14 = arg3;
	*((u8*) &D_800DE840[temp_v0].unk12) = 2;
	D_800DE840[temp_v0].unk11 = arg4;

	temp_v0_2 = func_80085CB8_56168(arg5);
	temp_a0 = temp_v0_2 & 0xFF;
	var_s0 = 0;
	if (temp_a0 > 0) {
		do {
			func_800857D4_55C84(temp_s2, 0, 0, 0);
			var_s0++;
		} while (var_s0 < temp_a0);
	}
}

#ifdef NON_MATCHING
// CURRENT(11871)
// AI - Updates particle motion per frame: interpolation, velocity+gravity, or rotation modes
void func_80085FF0_564A0(u8 arg0) {
	Unk800DE130 *entry130;
	Unk800DE840 *start;
	Unk800DE840 *current;
	Frontend52690Unk8Motion *startUnk8;
	Frontend52690Unk8Motion *currentUnk8;
	s16 currentIdx;

	entry130 = &D_800DE130[arg0];
	start = &D_800DE840[entry130->unk6];
	startUnk8 = (Frontend52690Unk8Motion *)&start->unk8;
	currentIdx = start->unk4;

	if ((currentIdx != -5) && (currentIdx != -6)) {
		while (1) {
			u8 mode;

			mode = startUnk8->unkA;
			current = &D_800DE840[currentIdx];
			currentUnk8 = (Frontend52690Unk8Motion *)&current->unk8;

			if (mode == 2) {
				u8 divisor;

				divisor = startUnk8->unk9;
				if (divisor == 0) {
					func_800840C4_54574(arg0);
					func_80083B14_53FC4(arg0);
					return;
				}

				currentUnk8->unk6 = (s8)((startUnk8->unk0 - currentUnk8->unk0) / divisor);
				currentUnk8->unk7 = (s8)((startUnk8->unk2 - currentUnk8->unk2) / startUnk8->unk9);
				currentUnk8->unk8 = (s8)((startUnk8->unk4 - currentUnk8->unk4) / startUnk8->unk9);

				currentUnk8->unk0 = (s16)(currentUnk8->unk0 + currentUnk8->unk6);
				currentUnk8->unk2 = (s16)(currentUnk8->unk2 + currentUnk8->unk7);
				currentUnk8->unk4 = (s16)(currentUnk8->unk4 + currentUnk8->unk8);

				if (currentUnk8->unk9 < 0xEB) {
					currentUnk8->unk9 = (u8)(currentUnk8->unk9 + 0x14);
				}
			} else {
				if (currentUnk8->unk9 < 0xF) {
					if (entry130->unk4 < 3) {
						func_800840C4_54574(arg0);
						func_80083B14_53FC4(arg0);
						return;
					}

					func_80083DBC_5426C(currentIdx, arg0);
					currentIdx = current->unk4;
					if ((currentIdx == -5) || (currentIdx == -6)) {
						break;
					}
					continue;
				}

				if (mode == 4) {
					f32 angle;
					f32 cosAngle;
					f32 sinAngle;
					s16 x;
					s16 y;

					x = currentUnk8->unk0;
					y = currentUnk8->unk2;
					angle = (f32)((1.0 * D_800AEC60_7F110) / D_800AEC58_7F108);

					cosAngle = cosf(angle);
					sinAngle = sinf(angle);
					currentUnk8->unk0 = (s16)((s16)((sinAngle * y) + (x * cosAngle)) + currentUnk8->unk6);

					cosAngle = cosf(angle);
					sinAngle = sinf(angle);
					currentUnk8->unk4 = (s16)(currentUnk8->unk4 + currentUnk8->unk8);
					currentUnk8->unk2 = (s16)((s16)((y * cosAngle) - (sinAngle * x)) + currentUnk8->unk7);
				} else {
					currentUnk8->unk0 = (s16)(currentUnk8->unk0 + currentUnk8->unk6);
					currentUnk8->unk4 = (s16)(currentUnk8->unk4 + currentUnk8->unk8);
					currentUnk8->unk2 = (s16)(currentUnk8->unk2 + currentUnk8->unk7);
				}

				currentUnk8->unkA++;
				if (currentUnk8->unkA >= 0xB) {
					currentUnk8->unk9 = (u8)(currentUnk8->unk9 - 0xA);
				}

				if ((currentUnk8->unk2 < -0xC7) && (D_800DE0BD != 1)) {
					currentUnk8->unk2 = -0xC7;
					currentUnk8->unk7 = 0;
				}

				if ((mode != 3) && (mode != 4) && (D_800DE0BD != 1)) {
					if (currentUnk8->unk7 >= -9) {
						currentUnk8->unk7--;
					} else {
						currentUnk8->unk7 = -0xA;
					}
				}
			}

			currentIdx = current->unk4;
			if ((currentIdx == -5) || (currentIdx == -6)) {
				break;
			}
		}
	}

	if (startUnk8->unkA == 2) {
		startUnk8->unk9--;
		startUnk8->unk6 = (s8)((func_800038E0_44E0() % 0x37) + 0xC8);
		startUnk8->unk7 = (s8)((func_800038E0_44E0() % 0x37) + 0xC8);
		startUnk8->unk8 = (s8)((func_800038E0_44E0() % 0x37) + 0xC8);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80085FF0_564A0.s")
#endif

#ifdef NON_MATCHING
// CURRENT(26836)
// AI - Renders particle trail/line segments with fading alpha between linked positions
void func_80086528_569D8(s32 arg0) {
	Unk800DE840 *base;
	Unk800DE840 *node;
	Vtx *vtx;
	s32 alpha;
	s32 tailAlpha;

	base = &D_800DE840[D_800DE130[arg0 & 0xFF].unk6];
	alpha = (0xFF - D_800D7971) & 0xFF;
	if (D_800D7970 == 0) {
		alpha = 0xFF;
	}

	if ((base->unk4 == -5) || (base->unk4 == -6)) {
		return;
	}

	tailAlpha = (s32)(((f32)(alpha * 0x14)) / 255.0f);
	node = &D_800DE840[base->unk4];

	while ((node->unk4 != -5) && (node->unk4 != -6)) {
		vtx = D_8005BB34;
		if (D_800DE0B7 == 1) {
			vtx->v.ob[0] = (s16)(f32)(D_800AA7B4_7AC64[D_800E1D6A] + node->unk8);
			vtx->v.ob[1] = (s16)(f32)(D_800AA7B8_7AC68[D_800E1D6A] + node->unkA);
			vtx->v.ob[2] = (s16)(f32)(D_800AA7BC_7AC6C[D_800E1D6A] + node->unkC);
			vtx->v.flag = 0;
			vtx->v.tc[0] = 0;
			vtx->v.tc[1] = 0;
			vtx->v.cn[0] = base->unkE;
			vtx->v.cn[1] = base->unkF;
			vtx->v.cn[2] = base->unk10;
			vtx->v.cn[3] = (u8)((node->unk11 * alpha) / 255.0f);

			vtx++;
			vtx->v.ob[0] = (s16)(f32)((D_800AA7B4_7AC64[D_800E1D6A] + node->unk8) - (s8)node->unkE);
			vtx->v.ob[1] = (s16)(f32)((D_800AA7B8_7AC68[D_800E1D6A] + node->unkA) - (s8)node->unkF);
			vtx->v.ob[2] = (s16)(f32)((D_800AA7BC_7AC6C[D_800E1D6A] + node->unkC) - (s8)node->unk10);
			vtx->v.flag = 0;
			vtx->v.tc[0] = 0;
			vtx->v.tc[1] = 0;
			vtx->v.cn[0] = base->unkE;
			vtx->v.cn[1] = base->unkF;
			vtx->v.cn[2] = base->unk10;
			vtx->v.cn[3] = tailAlpha;
		} else {
			vtx->v.ob[0] = (s16)(f32)node->unk8;
			vtx->v.ob[1] = (s16)(f32)node->unkA;
			vtx->v.ob[2] = (s16)(f32)node->unkC;
			vtx->v.flag = 0;
			vtx->v.tc[0] = 0;
			vtx->v.tc[1] = 0;
			vtx->v.cn[0] = base->unkE;
			vtx->v.cn[1] = base->unkF;
			vtx->v.cn[2] = base->unk10;
			vtx->v.cn[3] = (u8)((node->unk11 * alpha) / 255.0f);

			vtx++;
			vtx->v.ob[0] = (s16)(f32)(node->unk8 - (s8)node->unkE);
			vtx->v.ob[1] = (s16)(f32)(node->unkA - (s8)node->unkF);
			vtx->v.ob[2] = (s16)(f32)(node->unkC - (s8)node->unk10);
			vtx->v.flag = 0;
			vtx->v.tc[0] = 0;
			vtx->v.tc[1] = 0;
			vtx->v.cn[0] = base->unkE;
			vtx->v.cn[1] = base->unkF;
			vtx->v.cn[2] = base->unk10;
			vtx->v.cn[3] = tailAlpha;
		}

		D_8005BB34 += 2;
		gSPVertex(D_8005BB2C++, D_8005BB34 - 2, 2, 0);
		gSPNumLights(D_8005BB2C++, 1);
		gDPPipeSync(D_8005BB2C++);

		node = &D_800DE840[node->unk4];
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80086528_569D8.s")
#endif

#ifdef NON_MATCHING
// CURRENT(13583)
s16 func_80086C58_57108(s16 arg0, s16 arg1, s16 arg2, u16 arg3, s32 arg4, s32 arg5) {
	s16 ret;
	s16 linkIdx;
	s16 strength;
	Unk800DE840 *entry;
	Unk800DE840 *parent;
	u8 *entryBytes;
	u8 *parentBytes;
	u8 *linkBytes;
	u8 localColors[12];

	strength = arg3;
	ret = func_80083C98_54148(0x95);
	if (ret != -3) {
		entry = &D_800DE840[ret];
		parent = &D_800DE840[entry->unk4];
		entry->unk2 = strength;
		linkIdx = parent->unk4;

		if ((u8 *)arg4 == NULL) {
			func_8008EDB4_5F264(localColors, entry, strength);
			entryBytes = (u8 *)entry + 8;
			parentBytes = (u8 *)parent + 8;
			entryBytes[6] = localColors[0];
			entryBytes[7] = localColors[1];
			entryBytes[8] = localColors[2];
			entryBytes[9] = localColors[3];
			entryBytes[10] = localColors[4];
			entryBytes[11] = localColors[5];
			parentBytes[0] = localColors[6];
			parentBytes[1] = localColors[7];
			parentBytes[2] = localColors[8];
			parentBytes[3] = localColors[9];
			parentBytes[4] = localColors[10];
			parentBytes[5] = localColors[11];
		} else {
			u8 *arg4Bytes;

			arg4Bytes = (u8 *)arg4;
			entryBytes = (u8 *)entry + 8;
			parentBytes = (u8 *)parent + 8;
			entryBytes[6] = arg4Bytes[0];
			entryBytes[7] = arg4Bytes[1];
			entryBytes[8] = arg4Bytes[2];
			entryBytes[9] = arg4Bytes[3];
			entryBytes[10] = arg4Bytes[4];
			entryBytes[11] = arg4Bytes[5];
			parentBytes[0] = arg4Bytes[6];
			parentBytes[1] = arg4Bytes[7];
			parentBytes[2] = arg4Bytes[8];
			parentBytes[3] = arg4Bytes[9];
			parentBytes[4] = arg4Bytes[10];
			parentBytes[5] = arg4Bytes[11];
		}

		entryBytes = (u8 *)entry + 8;
		parentBytes = (u8 *)parent + 8;
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;
		entryBytes[0xC] = 0;
		entryBytes[6] = (s8)(func_800038E0_44E0() % 16);
		entryBytes[7] = 0;
		entryBytes[8] = (s8)(func_800038E0_44E0() % 256);
		entryBytes[9] = 0xFF;
		entryBytes[10] = 0xFF;
		if (strength < 0x4B) {
			entryBytes[11] = 3;
		} else if (strength < 0x96) {
			entryBytes[11] = 2;
		} else {
			entryBytes[11] = 1;
		}

		linkBytes = (u8 *)&D_800DE840[linkIdx] + 8;
		*((s16 *)linkBytes + 0) = 0;
		if ((func_800038E0_44E0() % 3) == 1) {
			linkBytes[2] = (s8)(func_800038E0_44E0() % 40);
		} else {
			linkBytes[2] = 0;
		}
		if ((func_800038E0_44E0() % 3) == 1) {
			linkBytes[3] = (s8)(func_800038E0_44E0() % 40);
		} else {
			linkBytes[3] = 0;
		}
		if ((func_800038E0_44E0() % 3) == 1) {
			linkBytes[4] = (s8)(func_800038E0_44E0() % 40);
		} else {
			linkBytes[4] = 0;
		}
		if ((func_800038E0_44E0() % 2) == 1) {
			linkBytes[5] = (s8)(func_800038E0_44E0() % 7);
		} else {
			linkBytes[5] = 0;
		}
		if ((func_800038E0_44E0() % 2) == 1) {
			linkBytes[6] = (s8)(func_800038E0_44E0() % 7);
		} else {
			linkBytes[6] = 0;
		}
		if ((func_800038E0_44E0() % 2) == 1) {
			linkBytes[7] = (s8)(func_800038E0_44E0() % 7);
		} else {
			linkBytes[7] = 0;
		}
		linkBytes[8] = (u8)arg5;
		if ((u8)arg5 == 1) {
			linkBytes[2] = 0;
			linkBytes[3] = 0;
			linkBytes[4] = 0;
			linkBytes[5] = 0x14;
			linkBytes[6] = 0;
			linkBytes[7] = 0;
			parentBytes[8] = 0;
		}
	}

	return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80086C58_57108.s")
#endif

#ifdef NON_MATCHING
// CURRENT(13418)
void func_800870AC_5755C(void) {
	s16 current;

	current = D_800DE832;
	while ((current != -5) && (current != -6)) {
		s32 temp;
		s32 step;
		s16 linkIdx;
		u8 scale;
		u8 age;
		Unk800DE840 *entry;
		Unk800DE840 *parent;
		u8 *entryBytes;
		u8 *parentBytes;
		u8 *linkBytes;

		entry = &D_800DE840[current];
		entryBytes = (u8 *)entry + 8;
		parent = &D_800DE840[entry->unk4];
		parentBytes = (u8 *)parent + 8;
		linkIdx = parent->unk4;
		scale = parentBytes[0xB];

		if (entryBytes[0xC] >= (0x23 / scale)) {
			temp = D_800DE840[linkIdx].unk4;
			func_80083F8C_5443C(current, 0x95);
			current = temp;
			continue;
		}

		age = entryBytes[0xC];
		if (age == 0) {
			D_800DE840[linkIdx].unk8 = (func_800038E0_44E0() % 11) + 0x3C;
		} else if (age == 1) {
			D_800DE840[linkIdx].unk8 += (func_800038E0_44E0() % 11) + 0xF;
		} else if (age < (7 / scale)) {
			D_800DE840[linkIdx].unk8 += ((func_800038E0_44E0() % 5) + 5) * scale;
		} else if (age < (0xF / scale)) {
			D_800DE840[linkIdx].unk8 += ((func_800038E0_44E0() % 4) + 4) * scale;
			parentBytes[2] -= ((func_800038E0_44E0() % 7) + 7) * scale;
		} else if (age < (0x18 / scale)) {
			D_800DE840[linkIdx].unk8 += ((func_800038E0_44E0() % 4) + 3) * scale;
			parentBytes[1] -= ((func_800038E0_44E0() % 5) + 3) * scale;
			if ((scale * 0xF) < parentBytes[2]) {
				parentBytes[2] -= ((func_800038E0_44E0() % 7) + 7) * scale;
			}
		} else if (age < (0x1C / scale)) {
			D_800DE840[linkIdx].unk8 += ((func_800038E0_44E0() % 3) + 2) * scale;
			parentBytes[1] -= ((func_800038E0_44E0() % 5) + 3) * scale;
			if ((scale * 0x19) < parentBytes[2]) {
				parentBytes[2] -= ((func_800038E0_44E0() % 14) + 0xC) * scale;
			}
		} else {
			D_800DE840[linkIdx].unk8 += ((func_800038E0_44E0() % 2) + 2) * scale;
			if ((scale * 0x19) < parentBytes[2]) {
				parentBytes[2] -= ((func_800038E0_44E0() % 14) + 0xC) * scale;
			}
			if ((scale * 0x25) < parentBytes[1]) {
				parentBytes[1] -= ((func_800038E0_44E0() % 15) + 0x16) * scale;
			}
		}

		age = entryBytes[0xC];
		if (age >= 3) {
			step = ((0x23 / scale) - age) & 0xFF;
			temp = entryBytes[6] - parentBytes[0];
			entryBytes[6] -= temp / step;
			temp = entryBytes[7] - parentBytes[1];
			entryBytes[7] -= temp / step;
			temp = entryBytes[8] - parentBytes[2];
			entryBytes[8] -= temp / step;
			temp = entryBytes[9] - parentBytes[3];
			entryBytes[9] -= temp / step;
			temp = entryBytes[0xA] - parentBytes[4];
			entryBytes[0xA] -= temp / step;
			temp = entryBytes[0xB] - parentBytes[5];
			entryBytes[0xB] -= temp / step;
		}

		linkBytes = (u8 *)&D_800DE840[linkIdx] + 8;
		linkBytes[2] += linkBytes[5];
		linkBytes[3] += linkBytes[6];
		linkBytes[4] += linkBytes[7];
		parentBytes[6]++;
		if (parentBytes[6] == 0x10) {
			parentBytes[6] = 0;
		}
		entryBytes[0xC]++;
		current = D_800DE840[linkIdx].unk4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800870AC_5755C.s")
#endif

#ifdef NON_MATCHING
// CURRENT(40278)
void func_800878A4_57D54(void) {
	Unk80052B40 pos;
	Unk80052B40 rot;
	Unk80052B40 scale;
	Unk80052B40 zeroVec;
	Unk800DE840* entry;
	Unk800DE840* parent;
	Unk800DE840* child;
	u8* entryBytes;
	u8* parentBytes;
	u8* childBytes;
	s16 linkIdx;
	s16 base;
	f32 distX;
	f32 distZ;
	f32 len;
	f32 fA;
	f32 fB;
	f32 fC;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
	gSPClearGeometryMode(D_8005BB2C++, G_FOG);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetRenderMode(D_8005BB2C++, G_RM_PASS, G_RM_AA_ZB_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetTextureLOD(D_8005BB2C++, G_TL_TILE);
	gDPSetCombineLERP(D_8005BB2C++, TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, ENVIRONMENT, COMBINED, TEXEL0, 0, ENVIRONMENT, COMBINED);
	gDPPipeSync(D_8005BB2C++);

	linkIdx = D_800DE832;
	if ((linkIdx != -6) && (linkIdx != -5)) {
		do {
		entry = &D_800DE840[linkIdx];
		parent = &D_800DE840[entry->unk4];
		child = &D_800DE840[parent->unk4];
		entryBytes = (u8*)entry + 8;
		parentBytes = (u8*)parent + 8;
		childBytes = (u8*)child;

		base = (s16)((f64)entry->unk2 * (((f64)(u16)child->unk8) * 0.03125) * 6.0);
		fA = (f32)childBytes[0xA];
		fB = (f32)childBytes[0xB];
		fC = (f32)childBytes[0xC];

		scale.unk2 = (s16)((((f64)fB / 32.0) + 1.0) * base);
		scale.unk0 = (s16)((((f64)fA / 32.0) + 1.0) * base);
		scale.unk4 = (s16)((((f64)fC / 32.0) + 1.0) * base);

		pos.unk0 = entry->unk8;
		pos.unk2 = entry->unkA;
		pos.unk4 = entry->unkC;

		distX = (D_800DE100[0] * 4.0f) - pos.unk0;
		distZ = (D_800DE100[2] * 4.0f) - pos.unk4;
		len = sqrtf((distX * distX) + (distZ * distZ));

		zeroVec.unk0 = 0;
		zeroVec.unk2 = parentBytes[0] << 8;
		zeroVec.unk4 = 0;

		rot.unk0 = func_80003824_4424(D_800DE0F0[2], D_800DE0F0[0]) + 0x8000;
		rot.unk2 = 0x8000;
		rot.unk4 = 0x4000 - func_80003824_4424((D_800DE100[1] * 4.0f) - entryBytes[2], len);

		if (childBytes[8] == 1) {
			base = (s16)((f64)entry->unk2 * (((f64)(u16)child->unk8) * 0.03125) * 6.0);
			scale.unk0 = base + (entryBytes[4] * 0x1F4);
			scale.unk2 = base;
			scale.unk4 = base;

			gDPSetPrimColor(D_8005BB2C++, 0, 0, 255, 255, 255, parentBytes[1]);
			gDPPipeSync(D_8005BB2C++);
			gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
			gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK | G_FOG | G_LIGHTING);
			gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
			gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
			gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
			gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
			gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
			gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
			gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_800A9240_796F0);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 256);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << 2, 31 << 2);
			gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, TEXEL0, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, TEXEL0, 0);
			gDPPipeSync(D_8005BB2C++);
		} else {
			if (childBytes[8] == 2) {
				gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
				gDPPipeSync(D_8005BB2C++);
			}

			if (entryBytes[4] < 3) {
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 255, 255, 255, 255);
				gDPSetEnvColor(D_8005BB2C++, 255, 255, 255, 255);
			} else {
				gDPSetPrimColor(D_8005BB2C++, 0, 0, entryBytes[6], entryBytes[7], entryBytes[8], parentBytes[1]);
				gDPSetEnvColor(D_8005BB2C++, entryBytes[9], entryBytes[0xA], entryBytes[0xB], parentBytes[2]);
			}

			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, D_4067B10 + (parentBytes[6] << 9));
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, 4, 0,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, 4, 0, 0, 255, 1024);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << 2, 31 << 2);

			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, D_4069B10 + (parentBytes[6] << 9));
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0040, 5, 0,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, 5, 0, 0, 255, 1024);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0040, 1, 0,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, 1, 0x40, 0, 0x40 + (31 << 2), 31 << 2);
		}

		D_8005BB38 += 0x40;
		func_800039D0_45D0(&pos, &rot, &scale, D_8005BB38);
		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

		D_8005BB38 += 0x40;
		D_8005BB38 += 0x40;
		func_800039D0_45D0(NULL, &zeroVec, NULL, D_8005BB38);
		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

		D_8005BB38 += 0x40;
		gSPDisplayList(D_8005BB2C++, D_406BC60);
		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

		linkIdx = child->unk4;
		} while ((linkIdx != -6) && (linkIdx != -5));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800878A4_57D54.s")
#endif

#ifdef NON_MATCHING
// CURRENT(5554)
s16 func_800885A0_58A50(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, u16 arg5, s32 arg6, u8 arg7) {
	f32 sp40;
	f32 sp44;
	f32 sp48;
	s16 ret;
	s16 linkIdx;
	s32 temp;
	s16 valY;
	u8 res;
	Unk800DE840 *entry;
	Unk800DE840 *parent;
	u8 *entryBytes;
	u8 *linkBytes;

	if (D_800DE824 >= 0x23) {
		return -3;
	}

	if (arg4 == -3) {
		return -3;
	}

	ret = func_80083C98_54148(0x94);
	if (ret != -3) {
		entry = &D_800DE840[ret];
		parent = &D_800DE840[entry->unk4];
		entry->unk2 = arg3 * 4;
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;
		linkIdx = parent->unk4;

		entryBytes = (u8 *)entry + 8;
		entryBytes[6] = (u8)((func_800038E0_44E0() % 80) + 20);
		entryBytes[7] = (u8)((func_800038E0_44E0() % 80) + 20);
		entryBytes[8] = (u8)((func_800038E0_44E0() % 80) + 20);
		*(s32 *)((u8 *)parent + 8) = arg6;

		arg5 = ((func_800038E0_44E0() % 6) + (arg5 / 7)) - 3;
		sp40 = (f32)((func_800038E0_44E0() % 20) - 10);

		temp = (func_800038E0_44E0() % 6) + 6;
		if (temp >= 0) {
			sp44 = (f32)((func_800038E0_44E0() % 6) + 6);
		} else {
			sp44 = (f32)(-6 - (func_800038E0_44E0() % 6));
		}

		sp48 = (f32)((func_800038E0_44E0() % 20) - 10);
		func_800837B4_53C64(&sp40, &sp40);

		linkBytes = (u8 *)D_800DE840 + (linkIdx * 0x1C) + 8;
		linkBytes[0] = (u8)((s8)((f32)(u32)arg5 * sp40));

		valY = (s16)((f32)(u32)arg5 * sp44);
		if (valY >= 0) {
			linkBytes[1] = (u8)valY;
		} else {
			linkBytes[1] = (u8)(-valY);
		}

		linkBytes[2] = (u8)((s8)((f32)(u32)arg5 * sp48));
		linkBytes[3] = (u8)(func_800038E0_44E0() % 255);
		linkBytes[4] = (u8)(func_800038E0_44E0() % 255);
		linkBytes[5] = (u8)(func_800038E0_44E0() % 255);
		linkBytes[6] = (u8)((func_800038E0_44E0() % 20) - 10);
		linkBytes[7] = (u8)((func_800038E0_44E0() % 20) - 10);
		linkBytes[8] = (u8)((func_800038E0_44E0() % 20) - 10);

		if (arg7 == 0) {
			entryBytes[0xB] = 0;
		} else {
			entryBytes[0xB] = 8;
		}

		if (((func_800038E0_44E0() % 100) < 40) || (arg7 != 0)) {
			entryBytes[0xB] |= 1;
		}

		if (arg7 != 0) {
			if (arg4 != -9) {
				res = func_800891F8_596A8(arg0, arg1, arg2, ret, arg4);
				entryBytes[9] = res;
				if (res != 0xFB) {
					entryBytes[0xB] |= 4;
				}
				entryBytes[0xA] = 0;
			}
		} else if ((func_800038E0_44E0() % 100) >= 41) {
			res = func_800891F8_596A8(arg0, arg1, arg2, ret, arg4);
			entryBytes[9] = res;
			if (res != 0xFC) {
				entryBytes[0xB] |= 4;
			}
			entryBytes[0xA] = 0;
		}

		if (arg7 == 2) {
			entryBytes[0xB] |= 0x80;
		}
	}

	return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800885A0_58A50.s")
#endif

void func_80088A38_58EE8(u16 arg0, u16 arg1, u16 arg2, s16 arg3) {
	u8 *ptr;

	if (arg3 != -3) {
		ptr = (u8 *)&D_800DE840[D_800DE840[D_800DE840[arg3].unk4].unk4] + 8;
		ptr[3] = arg0 >> 8;
		ptr[4] = arg1 >> 8;
		ptr[5] = arg2 >> 8;
	}
}

void func_80088ACC_58F7C(s8 arg0, s8 arg1, s8 arg2, s16 arg3) {
	s8 *dst;

	if (arg3 != -3) {
		dst = (s8*)&D_800DE840[D_800DE840[D_800DE840[arg3].unk4].unk4] + 8;
		dst[0] = arg0;
		dst[1] = arg1;
		dst[2] = arg2;
	}
}

void func_80088B54_59004(s8 arg0, s8 arg1, s8 arg2, s16 arg3) {
	s8 *dst;

	if (arg3 != -3) {
		dst = (s8*)&D_800DE840[D_800DE840[D_800DE840[arg3].unk4].unk4] + 8;
		dst[6] = arg0;
		dst[7] = arg1;
		dst[8] = arg2;
	}
}

#ifdef NON_MATCHING
// CURRENT(1125)
void func_80088BDC_5908C(void) {
	s16 temp_a1;
	s16 temp_s0;
	s16 temp_s1_unkA;
	s16 var_s3;
	Unk800DE840 *temp_s1;
	Unk800DE840 *temp_s2;
	u8 *temp_s0_2;
	u8 *var_v0;

	var_s3 = D_800DE826;
	if ((var_s3 != -5) && (var_s3 != -6)) {
		s16 three;
		s16 six;
		s8 neg14;

		neg14 = -0x14;
		six = 6;
		three = 3;
		while (1) {
			temp_s1 = &D_800DE840[var_s3];
			temp_s1_unkA = temp_s1->unkA;
			temp_s0_2 = (u8 *)temp_s1 + 8;
			temp_s2 = &D_800DE840[D_800DE840[temp_s1->unk4].unk4];
			var_v0 = (u8 *)temp_s2 + 8;

			temp_s1->unk8 += (s8)var_v0[0];
			temp_s1->unkC += (s8)var_v0[2];
			temp_s1->unkA = temp_s1_unkA + (s8)var_v0[1];

			if ((s8)var_v0[1] >= -0x13) {
				var_v0[1] = ((s8)var_v0[1]) - 1;
			} else {
				var_v0[1] = neg14;
			}

			var_v0[3] += (s8)var_v0[6];
			var_v0[4] += (s8)var_v0[7];
			var_v0[5] += (s8)var_v0[8];

			if ((temp_s0_2[11] & 4) && (temp_s0_2[10] == 0)) {
				func_80089388_59838(*(s16 *)(temp_s0_2 + 0), *(s16 *)(temp_s0_2 + 2), *(s16 *)(temp_s0_2 + 4), temp_s0_2[9]);
			}

			temp_s0_2[10]++;
			if ((u8)temp_s0_2[10] == three) {
				temp_s0_2[10] = 0;
			}

			temp_a1 = *(s16 *)(temp_s0_2 + 2);
			if (temp_a1 <= 0) {
				if (temp_s0_2[11] & 1) {
					func_8008EB20_5EFD0(*(s16 *)(temp_s0_2 + 0), temp_a1, *(s16 *)(temp_s0_2 + 4), ((u16)(temp_s1->unk2 / six)), 0, 0, 0);
				}

				temp_s0 = temp_s2->unk4;
				func_80083F8C_5443C(var_s3, 0x94);
				var_s3 = temp_s0;
			} else {
				var_s3 = temp_s2->unk4;
			}

			if (var_s3 == -5) {
				break;
			}
			if (var_s3 != -6) {
				continue;
			}
			break;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80088BDC_5908C.s")
#endif

#ifdef NON_MATCHING
// CURRENT(8258)
void func_80088E18_592C8(void) {
	s16 cur;
	Unk800DE840 *entry;
	Unk800DE840 *parent;
	Unk800DE840 *nextLink;
	Unk80052B40 spC4;
	Unk80052B40 spBC;
	Unk80052B40 spB4;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s32 pad6;
	s32 pad7;
	s32 pad8;
	s32 pad9;
	s32 pad10;
	s32 pad11;
	s32 pad12;
	s32 pad13;
	s32 pad14;
	s32 pad15;
	s32 pad16;

	cur = D_800DE826;
	while ((cur != -6) && (cur != -5)) {
		entry = &D_800DE840[cur];
		parent = &D_800DE840[entry->unk4];
		nextLink = &D_800DE840[parent->unk4];

		spC4.unk0 = entry->unk2;
		spC4.unk2 = entry->unk2;
		spC4.unk4 = entry->unk2;

		gDPSetPrimColor(D_8005BB2C++, 0, 0, entry->unkE, entry->unkF, entry->unk10, 0xFF);

		spB4.unk0 = entry->unk8;
		spB4.unk2 = entry->unkA;
		spB4.unk4 = entry->unkC;
		spBC.unk0 = (s16)(((u8 *)nextLink)[0x0B] << 8);
		spBC.unk2 = (s16)(((u8 *)nextLink)[0x0C] << 8);
		spBC.unk4 = (s16)(((u8 *)nextLink)[0x0D] << 8);

		if (!(((u8 *)entry)[0x13] & 8)) {
			gDPPipeSync(D_8005BB2C++);
			gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
			gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
			gSPDisplayList(D_8005BB2C++, D_800311D0);
			gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
			gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
			gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
			gDPPipeSync(D_8005BB2C++);
		} else {
			gDPPipeSync(D_8005BB2C++);
			gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
			gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
			gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
			gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG | G_LIGHTING);
			gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_PASS2);
			if (!(((u8 *)entry)[0x13] & 0x80)) {
				gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
			} else {
				gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
			}
			gDPPipeSync(D_8005BB2C++);
		}

		func_800039D0_45D0(&spB4, &spBC, &spC4, D_8005BB38);

		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

		D_8005BB38 += 0x40;

		gSPDisplayList(D_8005BB2C++, *(u32 *)&parent->unk8);

		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

		cur = nextLink->unk4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80088E18_592C8.s")
#endif

// https://decomp.me/scratch/7xbIK
u8 func_800891F8_596A8(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4)
{
	s16 idx;
	Unk800DE840 *dst;
	Unk800DE840 *src;
	u8 *dstBytes;
	u8 *srcBytes;
	u8 allocId;
	if (arg4 == (-3))
	{
		return 0xFB;
	}
	allocId = func_80083A58_53F08(4);
	if (allocId != 0xFB)
	{
		idx = func_80083B7C_5402C(allocId);
		if (idx == 0xFB)
		{
			func_80083B14_53FC4(allocId);
			allocId = 0xFB;
		}
		else
		{
			if (arg4 == (-8))
			{
				((u8 *)(&D_800DE840[idx]))[0xE] = 0xC8;
				((u8 *)(&D_800DE840[idx]))[0xF] = 0xC8;
				((u8 *)(&D_800DE840[idx]))[0x10] = 0xC8;
				((u8 *)(&D_800DE840[idx]))[0x11] = 0x64;
				((u8 *)(&D_800DE840[idx]))[0x12] = 0x64;
				((u8 *)(&D_800DE840[idx]))[0x13] = 0x64;
			}
			else
			{
				src = &D_800DE840[arg4];
				srcBytes = (u8 *)src;
				((u8 *)(&D_800DE840[idx]))[0xE] = srcBytes[0xE] ^ 0;
				((u8 *)(&D_800DE840[idx]))[0xF] = srcBytes[0xF];
				((u8 *)(&D_800DE840[idx]))[0x10] = srcBytes[0x10];
				((u8 *)(&D_800DE840[idx]))[0x11] = ((u8 *)(&D_800DE840[src->unk4]))[8];
				((u8 *)(&D_800DE840[idx]))[0x12] = ((u8 *)(&D_800DE840[src->unk4]))[9];
				((u8 *)(&D_800DE840[idx]))[0x13] = ((u8 *)(&D_800DE840[src->unk4]))[0xA];
			}
			(&D_800DE840[idx])->unk8 = arg0;
			(&D_800DE840[idx])->unkA = arg1;
			(&D_800DE840[idx])->unkC = arg2;
			((s16 *)(&D_800DE130[allocId]))[1] = arg3;
		}
	}
	return allocId;
}

void func_80089388_59838(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	s16 idx;

	if (arg3 >= 0x96) {
		return;
	}
	if (arg3 == 0xFB) {
		return;
	}
	if (D_800DE130[arg3].unk0 != 4) {
		return;
	}
	idx = func_80083B7C_5402C(arg3);
	if (idx == -3) {
		return;
	}

	D_800DE840[idx].unk8 = arg0;
	D_800DE840[idx].unkA = arg1;
	D_800DE840[idx].unkC = arg2;
	D_800DE840[idx].unk2 = (func_800038E0_44E0() % 0xF) + 0x1E;
	D_800DE840[idx].unk11 = 0xFA;
	D_800DE840[idx].unkE = D_800DE840[D_800DE130[arg3].unk6].unkE;
	D_800DE840[idx].unkF = D_800DE840[D_800DE130[arg3].unk6].unkF;
	D_800DE840[idx].unk10 = D_800DE840[D_800DE130[arg3].unk6].unk10;
}

#ifdef NON_MATCHING
// CURRENT(1680)
void func_800894A0_59950(u8 arg0) {
	Unk800DE130 *entry130;
	Unk800DE840 *cur;
	u8 *headBytes;
	u8 *pos;
	u8 *pos2;
	s16 idx;
	u8 slot;

	slot = arg0;
	entry130 = &D_800DE130[slot];
	{
		Unk800DE840 *src;
		Unk800DE840 *head;
		s16 *srcPos;

		src = &D_800DE840[*(s16 *)((u8 *)entry130 + 2)];
		head = &D_800DE840[entry130->unk6];

		srcPos = &src->unk8;
		head->unk8 = srcPos[0];
		srcPos++;
		head->unkA = srcPos[0];
		head->unkC = srcPos[1];

		idx = head->unk4;
		headBytes = (u8 *)&head->unk11;
	}
	if ((idx == -5) || (idx == -6)) {
		return;
	}

	do {
		s8 steps;

		pos = (u8 *)&D_800DE840[idx].unk8;
		cur = (Unk800DE840 *)(pos - 8);
		pos2 = pos;

		if (pos[9] < 10) {
			s16 next;

			next = cur->unk4;
			func_80083DBC_5426C(idx, slot);
			if (entry130->unk4 == 1) {
				func_80083DBC_5426C(entry130->unk6, slot);
				func_80083B14_53FC4(slot);
				return;
			}
			idx = next;
		} else {
			steps = (s8)(0x23 - pos[0xA]);
			if (steps > 0) {
				pos[6] = pos[6] - ((pos[6] - headBytes[0]) / steps);
				pos[7] = pos[7] - ((pos[7] - headBytes[1]) / steps);
				pos[8] = pos[8] - ((pos[8] - headBytes[2]) / steps);
			}

			*(s16 *)(pos + 2) += (func_800038E0_44E0() % 2) + 1;
			cur->unk2 += (func_800038E0_44E0() % 3) + 2;
			pos2[0xA]++;
			pos2[9] -= 9;

			idx = cur->unk4;
		}
	} while ((idx != -5) && (idx != -6));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800894A0_59950.s")
#endif

#ifdef NON_MATCHING
// CURRENT(3538)
void func_80089764_59C14(s32 arg0) {
	s16 idx;
	s16 neg6;
	Unk800DE840* entry;

	idx = D_800DE130[arg0 & 0xFF].unk6;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 1, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, 1, 0, SHADE, 0, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)D_100E080 & 0x1FFFFFFF));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));

	D_800DE12D = 0x20;
	D_800DE12E = 0x20;
	idx = D_800DE840[idx].unk4;
	neg6 = -6;

	if (idx == -5) {
		return;
	}
	if (idx == neg6) {
		return;
	}

	do {
		entry = &D_800DE840[idx];
		D_800DE118.x = entry->unk8;
		D_800DE124 = &entry->unkE;
		D_800DE12C = entry->unk11;
		D_800DE118.y = entry->unkA;
		D_800DE118.z = entry->unkC;
		D_800DE128 = entry->unk2;
		func_8008D14C_5D5FC();

		idx = entry->unk4;
		if (idx == -5) {
			return;
		}
	} while (idx != neg6);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80089764_59C14.s")
#endif

void func_800899F0_59EA0(s16 arg0, s16 arg1, u16 arg2, u8 arg3, u8 arg4, u8 arg5, u8 arg6) {
	s16 idx;
	u8* ptr;

	if (D_800DE818 < 0x41) {
		idx = func_80083B7C_5402C(0x93);
		if (idx != -3) {
			D_800DE840[idx].unkA = 0;
			D_800DE840[idx].unk11 = 0;
			D_800DE840[idx].unk2 = arg2;
			D_800DE840[idx].unk8 = arg0;
			D_800DE840[idx].unkC = arg1;

			ptr = (u8*)&D_800DE840[idx];
			ptr[0x12] = arg6;
			ptr[0x0E] = arg3;
			ptr[0x0F] = arg4;
			ptr[0x10] = arg5;

			ptr[0x13] = arg2 / 2;
			if (!ptr[0x13]) {
				ptr[0x13] = 1;
			}
		}
	}
}

void func_80089AB4_59F64(void) {
	s16 idx;
	u8 *ptr;

	idx = D_800DE81A;
	while (idx != -5 && idx != -6) {
		ptr = (u8 *)&D_800DE840[idx] + 8;
		if (D_800DE840[idx].unk11 < 4) {
			D_800DE840[idx].unk2 += (u8)ptr[0xB];
		}
		ptr[9]++;
		idx = D_800DE840[idx].unk4;
	}
}

#ifdef NON_MATCHING
// CURRENT(16169)
void func_80089B38_59FE8(void) {
	s16 idx;
	Unk800DE840 *entry;
	u8 *entryBytes;
	f32 tempA;
	f32 tempB;
	f32 tempC;
	f32 tempD;
	f32 oneF;
	s16 one;

	gDPSetCombineLERP(D_8005BB2C++, 1, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, 1, 0, SHADE, 0, TEXEL0, 0, SHADE, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, D_100E080);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << 2, 31 << 2);
	gDPPipeSync(D_8005BB2C++);
	oneF = 1.0f;
	one = (s16)oneF;

	idx = D_800DE81A;
	while ((idx != -6) && (idx != -5)) {
		gDPPipeSync(D_8005BB2C++);

		entry = &D_800DE840[idx];
		entryBytes = (u8 *)entry;

		tempA = entry->unk2 + entry->unk8;
		tempB = entry->unk2 + entry->unkC;
		tempC = entry->unk8 - entry->unk2;
		tempD = entry->unkC - entry->unk2;

		D_8005BB34->v.ob[0] = (s16)(s32)tempA;
		D_8005BB34->v.ob[1] = one;
		D_8005BB34->v.ob[2] = (s16)(s32)tempB;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = entryBytes[0xE];
		D_8005BB34->v.cn[1] = entryBytes[0xF];
		D_8005BB34->v.cn[2] = entryBytes[0x10];
		D_8005BB34->v.cn[3] = entryBytes[0x12];
		D_8005BB34++;

		D_8005BB34->v.ob[0] = (s16)(s32)tempC;
		D_8005BB34->v.ob[1] = one;
		D_8005BB34->v.ob[2] = (s16)(s32)tempB;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x800;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = entryBytes[0xE];
		D_8005BB34->v.cn[1] = entryBytes[0xF];
		D_8005BB34->v.cn[2] = entryBytes[0x10];
		D_8005BB34->v.cn[3] = entryBytes[0x12];
		D_8005BB34++;

		D_8005BB34->v.ob[0] = (s16)(s32)tempC;
		D_8005BB34->v.ob[1] = one;
		D_8005BB34->v.ob[2] = (s16)(s32)tempD;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x800;
		D_8005BB34->v.tc[1] = 0x800;
		D_8005BB34->v.cn[0] = entryBytes[0xE];
		D_8005BB34->v.cn[1] = entryBytes[0xF];
		D_8005BB34->v.cn[2] = entryBytes[0x10];
		D_8005BB34->v.cn[3] = entryBytes[0x12];
		D_8005BB34++;

		D_8005BB34->v.ob[0] = (s16)(s32)tempA;
		D_8005BB34->v.ob[1] = one;
		D_8005BB34->v.ob[2] = (s16)(s32)tempD;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0x800;
		D_8005BB34->v.cn[0] = entryBytes[0xE];
		D_8005BB34->v.cn[1] = entryBytes[0xF];
		D_8005BB34->v.cn[2] = entryBytes[0x10];
		D_8005BB34->v.cn[3] = entryBytes[0x12];
		D_8005BB34++;

		gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
		gSP1Quadrangle(D_8005BB2C++, 0, 1, 2, 3, 0);

		idx = entry->unk4;
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
	gSPSetGeometryMode(D_8005BB2C++, G_FOG);
	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80089B38_59FE8.s")
#endif

#ifdef NON_MATCHING
void func_8008A094_5A544(u8 arg0) {
	extern f64 D_800AEC70_7F120;
	extern f64 D_800AEC78_7F128;
	extern f64 D_800AEC80_7F130;

	Unk800DE840 *entry;
	Unk800DE840 *spawn;
	Unk800DE840 *template;
	u8 *spawnBytes;
	u8 *templateBytes;
	f32 x;
	f32 y;
	f32 z;
	f32 randX;
	f32 randY;
	f32 randZ;
	s16 index;
	s16 templateIndex;
	s32 scale;

	entry = &D_800DE840[D_800DE130[arg0].unk6];
	templateIndex = entry->unk4;
	index = func_80083B7C_5402C(arg0);
	if (index == -3) {
		return;
	}

	spawn = &D_800DE840[index];
	spawn->unk8 = entry->unk8;
	spawn->unkA = entry->unkA;
	spawn->unkC = entry->unkC;

	template = &D_800DE840[templateIndex];
	spawn->unk11 = template->unk10;
	spawn->unk2 = (func_800038E0_44E0() % (entry->unk2 * 2)) + entry->unk2;

	templateBytes = (u8 *)&template->unk8;
	x = (s8)templateBytes[0];
	y = (s8)templateBytes[1];
	z = (s8)templateBytes[2];
	func_800837B4_53C64(&x, &x);

	randX = (f32)((f64)(f32)(func_800038E0_44E0() % templateBytes[4]) / D_800AEC70_7F120);
	if ((func_800038E0_44E0() % 21) < 10) {
		randX = -randX;
	}
	randX += x;

	randY = (f32)((f64)(f32)(func_800038E0_44E0() % templateBytes[4]) / D_800AEC78_7F128);
	if ((func_800038E0_44E0() % 21) < 10) {
		randY = -randY;
	}
	randY += y;

	randZ = (f32)((f64)(f32)(func_800038E0_44E0() % templateBytes[4]) / D_800AEC80_7F130);
	if ((func_800038E0_44E0() % 21) < 10) {
		randZ = -randZ;
	}
	randZ += z;

	func_800837B4_53C64(&randX, &randX);
	spawnBytes = (u8 *)&spawn->unk8;
	scale = (s32)templateBytes[3] / 4;
	spawnBytes[0xA] = (s8)((f32)scale * randX);
	spawnBytes[0xB] = (s8)((f32)scale * randY);
	spawnBytes[0xC] = (s8)((f32)scale * randZ);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008A094_5A544.s")
#endif

#ifdef NON_MATCHING
// CURRENT(3439)
u8 func_8008A460_5A910(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6, u16 arg7, u8 arg8, u8 arg9, u8 arg10, u8 arg11, u8 arg12, u8 arg13, u8 arg14) {
	u8 slot;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s16 idx;
	Unk800DE840 *entry;
	Unk800DE840 *next;
	u8 *entryBytes;
	u8 *nextBytes;
	s16 temp;
	u8 value;

	pad0 = 0;
	pad1 = 0;
	pad2 = 0;
	pad3 = 0;
	pad4 = 0;
	pad5 = 0;

	slot = func_80083A58_53F08(6);
	if (slot != 0xFB) {
		idx = func_80083D50_54200(slot);
		if (idx == -3) {
			func_80083B14_53FC4(slot);
			return 0xFB;
		}

		entry = &D_800DE840[idx];
		entry->unk2 = arg7;
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;

		next = &D_800DE840[entry->unk4];
		nextBytes = (u8 *)&next->unk8;
		nextBytes[0] = arg3;
		nextBytes[1] = arg4;
		nextBytes[2] = arg5;
		nextBytes[3] = arg6;
		nextBytes[4] = arg9;

		entry->unkE = arg10;
		entry->unkF = arg11;
		entry->unk10 = arg12;
		*((u8 *)&entry->unk14) = arg14;

		entryBytes = (u8 *)&entry->unk8;
		temp = arg10 - 0x78;
		if (temp < 0) {
			temp = 0;
		}
		entryBytes[9] = temp;

		temp = arg11 - 0x78;
		if (temp < 0) {
			temp = 0;
		}
		entryBytes[0xA] = temp;

		temp = arg12 - 0x78;
		if (temp < 0) {
			temp = 0;
		}
		entryBytes[0xB] = temp;

		nextBytes[8] = arg13;

		value = arg8;
		if (value >= 0x97) {
			value = 0x96;
		} else if (value == 0) {
			value = 1;
		}
		nextBytes[5] = value;
		*(s16 *)&nextBytes[6] = 0;
	}

	return slot;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008A460_5A910.s")
#endif

#ifdef NON_MATCHING
// CURRENT(5167)
void func_8008A5F8_5AAA8(u8 arg0) {
	Unk800DE130 *temp_s4;
	Unk800DE840 *sp40;
	Unk800DE840 *temp_s5;
	Unk800DE840 *temp_s0;
	s16 var_s2;
	s16 temp_s1;
	u8 *temp_v0;
	u8 *temp_v1;
	u8 *temp_s0_2;
	u16 temp_v0_2;
	s32 temp_v1_2;
	u8 var_s1;
	u8 temp_s3;

	temp_s3 = arg0;
	temp_s4 = &D_800DE130[temp_s3];
	sp40 = &D_800DE840[temp_s4->unk6];
	temp_s5 = &D_800DE840[sp40->unk4];
	var_s2 = temp_s5->unk4;

	if ((var_s2 != -5) && (var_s2 != -6)) {
		do {
			temp_s0 = &D_800DE840[var_s2];
			temp_s0->unk8 += ((s8 *)temp_s0)[0x12];
			temp_s0->unkC += ((s8 *)temp_s0)[0x14];
			temp_s0->unkA += ((s8 *)temp_s0)[0x13];
			temp_v0 = (u8 *)&temp_s0->unk8;

			if (D_800DE0B6 == 0) {
				temp_v1 = (u8 *)&sp40->unk8;
				if ((s8)temp_v0[3] >= -0x31) {
					temp_v0[3] = (u8)((s8)temp_v0[3] - 1);
				} else {
					temp_v0[3] = 0xCE;
				}

				if ((temp_v1[0xC] == 0) && (temp_s0->unkA <= 0)) {
					func_800899F0_59EA0(temp_s0->unk8, temp_s0->unkC, temp_s0->unk2, temp_v1[6], temp_v1[7], temp_v1[8], temp_v0[9]);
					if ((temp_s4->unk4 < 4) && (((u8 *)&temp_s5->unk8)[5] == 0)) {
						func_800840C4_54574(temp_s3 & 0xFF);
						func_80083B14_53FC4(temp_s3 & 0xFF);
						return;
					}
					temp_s1 = temp_s0->unk4;
					func_80083DBC_5426C(var_s2, temp_s3 & 0xFF);
					var_s2 = temp_s1;
				} else if ((temp_v1[0xC] == 1) && (temp_s0->unkA < -0x1F3)) {
					if ((temp_s4->unk4 < 4) && (((u8 *)&temp_s5->unk8)[5] == 0)) {
						func_800840C4_54574(temp_s3 & 0xFF);
						func_80083B14_53FC4(temp_s3 & 0xFF);
						return;
					}
					temp_s1 = temp_s0->unk4;
					func_80083DBC_5426C(var_s2, temp_s3 & 0xFF);
					var_s2 = temp_s1;
				} else {
					var_s2 = temp_s0->unk4;
				}
			} else {
				var_s2 = temp_s0->unk4;
			}
		} while ((var_s2 != -5) && (var_s2 != -6));
	}

	temp_s0_2 = (u8 *)&temp_s5->unk8;
	if (D_800DE0B6 == 1) {
		if ((func_800038E0_44E0() % 8) == 1) {
			func_8008A094_5A544(temp_s3 & 0xFF);
		}
	} else {
		temp_v0_2 = *(u16 *)&temp_s0_2[6];
		if ((s32)temp_v0_2 > 0) {
			*(u16 *)&temp_s0_2[6] = temp_v0_2 - 1;
			return;
		}

		temp_v1_2 = (func_800038E0_44E0() % 3) + 2;
		if ((temp_v1_2 & 0xFF) > 0) {
			for (var_s1 = 0; var_s1 < (temp_v1_2 & 0xFF); var_s1++) {
				if (temp_s0_2[5] > 0) {
					func_8008A094_5A544(temp_s3 & 0xFF);
					temp_s0_2[5]--;
				}
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008A5F8_5AAA8.s")
#endif

#ifdef NON_MATCHING
// CURRENT(7952)
void func_8008A928_5ADD8(s32 arg0) {
	Unk800DE840 *entry;
	Unk800DE840 *cur;
	u8 *entryBytes;
	s16 idx;
	f32 scale;
	f32 x;
	f32 y;
	f32 z;
	f32 dx0;
	f32 dy0;
	f32 dz0;
	f32 dx1;
	f32 dy1;
	f32 dz1;

	entry = &D_800DE840[D_800DE130[arg0 & 0xFF].unk6];
	cur = &D_800DE840[entry->unk4];
	idx = cur->unk4;

	if (*(u16 *)&cur->unkE > 0) {
		return;
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0,
						 PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_100D700);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 127, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0x0000, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 15 << 2, 15 << 2);
	gDPPipeSync(D_8005BB2C++);

	if ((idx == -6) || (idx == -5)) {
		return;
	}

	entryBytes = (u8 *)&entry->unk8;

	while (1) {
		cur = &D_800DE840[idx];

		gDPSetPrimColor(D_8005BB2C++, 0, 0, entryBytes[6], entryBytes[7], entryBytes[8], (u8)cur->unk11);
		gDPSetEnvColor(D_8005BB2C++, entryBytes[9], entryBytes[10], entryBytes[11], (u8)cur->unk11);
		gDPPipeSync(D_8005BB2C++);

		scale = cur->unk2;
		x = cur->unk8;
		y = cur->unkA;
		z = cur->unkC;
		dx0 = scale * D_800DE0C0[0];
		dy0 = scale * D_800DE0C0[1];
		dz0 = scale * D_800DE0C0[2];
		dx1 = scale * D_800DE0C0[3];
		dy1 = scale * D_800DE0C0[4];
		dz1 = scale * D_800DE0C0[5];

		D_8005BB34->v.ob[0] = (s16)(s32)(x + dx0);
		D_8005BB34->v.ob[1] = (s16)(s32)(y + dy0);
		D_8005BB34->v.ob[2] = (s16)(s32)(z + dz0);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = 0;
		D_8005BB34->v.cn[1] = 0;
		D_8005BB34->v.cn[2] = 0;
		D_8005BB34->v.cn[3] = 0;

		D_8005BB34++;
		D_8005BB34->v.ob[0] = (s16)(s32)(x + dx1);
		D_8005BB34->v.ob[1] = (s16)(s32)(y + dy1);
		D_8005BB34->v.ob[2] = (s16)(s32)(z + dz1);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x400;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = 0;
		D_8005BB34->v.cn[1] = 0;
		D_8005BB34->v.cn[2] = 0;
		D_8005BB34->v.cn[3] = 0;

		D_8005BB34++;
		D_8005BB34->v.ob[0] = (s16)(s32)(x - dx0);
		D_8005BB34->v.ob[1] = (s16)(s32)(y - dy0);
		D_8005BB34->v.ob[2] = (s16)(s32)(z - dz0);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x400;
		D_8005BB34->v.tc[1] = 0x400;
		D_8005BB34->v.cn[0] = 0;
		D_8005BB34->v.cn[1] = 0;
		D_8005BB34->v.cn[2] = 0;
		D_8005BB34->v.cn[3] = 0;

		D_8005BB34++;
		D_8005BB34->v.ob[0] = (s16)(s32)(x - dx1);
		D_8005BB34->v.ob[1] = (s16)(s32)(y - dy1);
		D_8005BB34->v.ob[2] = (s16)(s32)(z - dz1);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0x400;
		D_8005BB34->v.cn[0] = 0;
		D_8005BB34->v.cn[1] = 0;
		D_8005BB34->v.cn[2] = 0;
		D_8005BB34->v.cn[3] = 0;

		D_8005BB34++;
		gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
		gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
		gDPPipeSync(D_8005BB2C++);

		idx = cur->unk4;
		if ((idx == -6) || (idx == -5)) {
			return;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008A928_5ADD8.s")
#endif

#ifdef NON_MATCHING
// CURRENT(2027)
void func_8008AEC8_5B378(s32 arg0) {
	s16 srcIdx;
	s16 dstIdx;
	u8 id;
	u8 *s0;
	u8 *s1;
	s8 sx;
	s8 sy;
	s8 sz;

	id = arg0 & 0xFF;
	srcIdx = D_800DE130[id].unk6;
	dstIdx = func_80083B7C_5402C(id);
	if (dstIdx != -3) {
		s0 = (u8 *)&D_800DE840[dstIdx].unk8;
		*(s16 *)(s0 - 6) = (func_800038E0_44E0() % 0x1C) + 0x1C;

		s1 = (u8 *)&D_800DE840[srcIdx].unk8;
		s0[6] = D_800AA640[s1[0xA] * 3];
		s0[7] = D_800AA640[(s1[0xA] * 3) + 1];
		s0[8] = D_800AA640[(s1[0xA] * 3) + 2];
		s0[9] = 0x8C;

		*(s16 *)&s0[0] = *(s16 *)&s1[0];
		*(s16 *)&s0[2] = *(s16 *)&s1[2];
		*(s16 *)&s0[4] = *(s16 *)&s1[4];
		sx = (s8)s1[6];
		sy = (s8)s1[7];
		sz = (s8)s1[8];

		s0[0xA] = (func_800038E0_44E0() % 4) + sx - 2;
		s0[0xB] = (func_800038E0_44E0() % 4) + sy - 2;
		s0[0xC] = (func_800038E0_44E0() % 4) + sz - 2;
		s0[0xD] = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008AEC8_5B378.s")
#endif

/* Allocate entry with given params; returns allocId or 0xFB on failure */
u8 func_8008B08C_5B53C(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6)
{
  s16 idx;s32 new_var;
  u8 allocId;
  allocId = func_80083A58_53F08(7);
  if (allocId != 0xFB)
  {
	idx = func_80083B7C_5402C(allocId);
	if (idx == (-3))
	{
	  func_80083B14_53FC4(allocId);
	  return 0xFB;
	}
	D_800DE840[idx].unk8 = arg0;
	D_800DE840[idx].unkA = arg1;
	D_800DE840[idx].unkC = arg2;
	D_800DE840[idx].unkE = arg3;
	D_800DE840[idx].unkF = arg4;
	D_800DE840[idx].unk10 = arg5;
	D_800DE840[idx].unk11 = 1;
	*((u8 *) (&D_800DE840[idx].unk12)) = arg6;
  }
  return allocId;
}

/* Sets 3D position (s16 x,y,z) in D_800DE840 entry indexed via D_800DE130 */
void func_8008B148_5B5F8(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	s16 idx = D_800DE130[arg3].unk6;
	D_800DE840[idx].unk8 = arg0;
	D_800DE840[idx].unkA = arg1;
	D_800DE840[idx].unkC = arg2;
}

void func_8008B19C_5B64C(u8 arg0, u8 arg1) {
	Unk800DE130 *entry;

	if (arg0 < 0x96) {
		entry = &D_800DE130[arg0];
		if (entry->unk0 == 7) {
			if (arg1 == 0) {
				if (entry->unk4 < 2) {
					func_800840C4_54574(arg0);
					func_80083B14_53FC4(arg0);
					return;
				}
				D_800DE840[entry->unk6].unk11 = 0;
			} else if (arg1 == 1) {
				func_800840C4_54574(arg0);
				func_80083B14_53FC4(arg0);
			}
		}
	}
}

#ifdef NON_MATCHING
// CURRENT(2739)
void func_8008B264_5B714(u8 arg0) {
	s16 idx;
	s16 nextIdx;
	Unk800DE130 *entry;
	Unk800DE840 *node;
	Unk8008B264NodeSub *nodeSub;

	entry = &D_800DE130[arg0 & 0xFF];
	idx = D_800DE840[entry->unk6].unk4;

	while ((idx != -5) && (idx != -6)) {
		node = &D_800DE840[idx];
		nodeSub = (Unk8008B264NodeSub *) &node->unk8;

		if (node->unk11 < 0xB) {
			if ((entry->unk4 < 3) && (D_800DE840[entry->unk6].unk11 == 0)) {
				func_800840C4_54574(arg0 & 0xFF);
				func_80083B14_53FC4(arg0 & 0xFF);
				return;
			}

			nextIdx = node->unk4;
			func_80083DBC_5426C(idx, arg0 & 0xFF);
			idx = nextIdx;
		} else {
			if (nodeSub->unkD == 0) {
				nodeSub->unk9 = (nodeSub->unk9 - (func_800038E0_44E0() % 5)) - 5;
				node->unk2 = node->unk2 + (func_800038E0_44E0() % 3) + 3;
			} else {
				nodeSub->unk9 = (nodeSub->unk9 - (func_800038E0_44E0() % 5)) - 5;
				node->unk2 = node->unk2 + (func_800038E0_44E0() % 5) + 5;
			}

			nodeSub->unk0 += nodeSub->unkA;
			nodeSub->unk2 += nodeSub->unkB;
			nodeSub->unk4 += nodeSub->unkC;
			nodeSub->unk6--;
			nodeSub->unk7--;
			nodeSub->unk8--;
			idx = node->unk4;
		}
	}

	if (D_800DE840[entry->unk6].unk11 == 1) {
		func_8008AEC8_5B378(arg0 & 0xFF);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008B264_5B714.s")
#endif

#ifdef NON_MATCHING
// CURRENT(3981)
void func_8008B534_5B9E4(s32 arg0) {
	s16 idx;
	s16 neg6;
	Unk800DE840* entry;

	idx = D_800DE840[D_800DE130[arg0 & 0xFF].unk6].unk4;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 1, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, 1, 0, SHADE, 0, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (u8*)((s32)&D_100E080 & 0x1FFFFFFF));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C, 0x7C);

	D_800DE12D = 0x20;
	D_800DE12E = 0x20;
	neg6 = -6;

	if (idx == -5) {
		return;
	}
	if (idx == neg6) {
		return;
	}

	do {
		entry = &D_800DE840[idx];
		D_800DE118.x = entry->unk8;
		D_800DE124 = &entry->unkE;
		D_800DE12C = entry->unk11;
		D_800DE118.y = entry->unkA;
		D_800DE118.z = entry->unkC;
		D_800DE128 = entry->unk2;
		func_8008D14C_5D5FC();

		idx = entry->unk4;
		if (idx == -5) {
			return;
		}
	} while (idx != neg6);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008B534_5B9E4.s")
#endif

#ifdef NON_MATCHING
// CURRENT(1910)
u8 func_8008B7BC_5BC6C(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6) {
	u8 effectId;
	u32 stepCountU32;
	s16 deltaX;
	s16 deltaY;
	s16 deltaZ;
	s16 stepX;
	s16 stepY;
	s16 stepZ;
	s16 idx;
	s32 stepCount;
	u8 i;
	Unk800DE840* entry;

	effectId = func_80083A58_53F08(9);
	if (effectId != 0xFB) {
		deltaX = arg3 - arg0;
		deltaY = arg4 - arg1;
		deltaZ = arg5 - arg2;

		stepCountU32 = sqrtf((deltaX * deltaX) + (deltaY * deltaY) + (deltaZ * deltaZ)) / 100.0f;
		stepCount = stepCountU32 & 0xFF;

		if (stepCount < 2) {
			stepCount = 2;
		}
		if (stepCount >= 0x10) {
			stepCount = 0xF;
		}
		if (D_800DE0B6 == 1) {
			stepCount = 1;
		}

		stepX = deltaX / stepCount;
		stepY = deltaY / stepCount;
		stepZ = deltaZ / stepCount;

		if (stepCount >= 0) {
			i = 0;
			while (i <= stepCount) {
				idx = func_80083B7C_5402C(effectId);
				if (idx == -3) {
					func_800840C4_54574(effectId);
					func_80083B14_53FC4(effectId);
					return 0xFB;
				}

				entry = &D_800DE840[idx];
				*(s16*)&entry->unkE = arg6;
				entry->unk8 = arg0 + (stepX * i);
				entry->unkA = arg1 + (stepY * i);
				entry->unkC = arg2 + (stepZ * i);
				i = (i + 1) & 0xFF;
			}
		}
	}

	return effectId;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008B7BC_5BC6C.s")
#endif

void func_8008BAD8_5BF88(u8 arg0) {
	if (arg0 != 0xFB && D_800DE130[arg0].unk0 == 9) {
		func_800840C4_54574(arg0);
		func_80083B14_53FC4(arg0);
	}
}

void func_8008BB38_5BFE8(u8 arg0) {
	s16 idx;
	s16 *ptrA1;
	s16 *ptrA0;

	idx = D_800DE130[arg0].unk6;
	if (idx == -5) return;
	if (idx == -6) return;

	do {
		ptrA0 = (s16 *)((u8 *)&D_800DE840[idx] + 8);
		ptrA1 = ptrA0;

		if (*(s16 *)&D_800DE840[idx].unkE == -1) {
			idx = D_800DE840[idx].unk4;
		} else {
			if (ptrA1[3] == 0) {
				func_800840C4_54574(arg0);
				func_80083B14_53FC4(arg0);
				return;
			}
			ptrA0[3]--;
			idx = D_800DE840[idx].unk4;
		}
		if (idx == -5) return;
	} while (idx != -6);
}

#ifdef NON_MATCHING
// CURRENT(28873)
void func_8008BC00_5C0B0(u8 arg0) {
	s16 idx;
	s16 nextIdx;
	s16 rand4;
	u8 texFrame;
	u8 colR;
	u8 colG;
	u8 colB;
	f32 curX;
	f32 curY;
	f32 curZ;
	f32 curX2;
	f32 curY2;
	f32 curZ2;
	f32 nextX;
	f32 nextY;
	f32 nextZ;
	f32 nextX2;
	f32 nextY2;
	f32 nextZ2;
	f32 spread;
	f32 zero;
	s32 rand;
	Unk800DE840 *entry;
	idx = D_800DE130[arg0].unk6;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 1, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, 1, 0, SHADE, 0, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);

	rand = func_800038E0_44E0() % 6;
	if (rand == 1) {
		colR = 0xC8;
		colG = 0xFF;
		colB = 0xC8;
	} else if (rand == 2) {
		colR = 0xC8;
		colG = 0xC8;
		colB = 0xFF;
	} else {
		colR = 0xFF;
		colG = 0xFF;
		colB = 0xFF;
	}

	if ((idx != -5) && (idx != -6)) {
		entry = &D_800DE840[idx];
		if (D_800DE0B6 == 1) {
			rand4 = func_800038E0_44E0() % 4;
			spread = (f32)((rand4 * 2) + 0x14);
			curX2 = (f32)entry->unk8 - spread;
			curX = (f32)entry->unk8 + spread;

			rand4 = func_800038E0_44E0() % 4;
			spread = (f32)((rand4 * 2) + 0x14);
			curY = (f32)entry->unkA + spread;
			curY2 = (f32)entry->unkA - spread;

			rand4 = func_800038E0_44E0() % 4;
			spread = (f32)((rand4 * 2) + 0x14);
			curZ = (f32)entry->unkC + spread;
			curZ2 = (f32)entry->unkC - spread;
		} else {
			spread = (f32)(((func_800038E0_44E0() % 5) * 4) + 0x14);
			if ((func_800038E0_44E0() % 0xB) < 6) {
				spread = -spread;
			}
			curX2 = (f32)entry->unk8 - spread;
			curX = (f32)entry->unk8 + spread;

			spread = (f32)(((func_800038E0_44E0() % 5) * 4) + 0x14);
			if ((func_800038E0_44E0() % 0xB) < 6) {
				spread = -spread;
			}
			curY = (f32)entry->unkA + spread;
			curY2 = (f32)entry->unkA - spread;

			spread = (f32)(((func_800038E0_44E0() % 5) * 4) + 0x14);
			if ((func_800038E0_44E0() % 0xB) < 6) {
				spread = -spread;
			}
			curZ = (f32)entry->unkC + spread;
			curZ2 = (f32)entry->unkC - spread;
		}
	}

	if ((idx != -5) && (idx != -6)) {
		do {
			nextIdx = D_800DE840[idx].unk4;
			if (nextIdx != -5) {
				gDPPipeSync(D_8005BB2C++);

				if (D_800DE0B6 == 1) {
					texFrame = 0;
				} else {
					rand = func_800038E0_44E0();
					rand4 = rand % 4;
					if ((rand < 0) && (rand4 != 0)) {
						rand4 -= 4;
					}
					texFrame = rand4 & 0xFF;
				}

				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (u8*)((u32)(&D_100B4F0[texFrame << 9]) & 0x1FFFFFFF));
				gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
				gDPLoadSync(D_8005BB2C++);
				gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);

				gDPPipeSync(D_8005BB2C++);

				gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
				gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << 2, 31 << 2);

				gDPPipeSync(D_8005BB2C++);

				D_8005BB34->v.ob[0] = (s16)(s32)curX;
				D_8005BB34->v.ob[1] = (s16)(s32)curY;
				D_8005BB34->v.ob[2] = (s16)(s32)curZ;
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = colR;
				D_8005BB34->v.cn[1] = colG;
				D_8005BB34->v.cn[2] = colB;
				D_8005BB34->v.cn[3] = 0xFF;

				D_8005BB34++;
				D_8005BB34->v.ob[0] = (s16)(s32)curX2;
				D_8005BB34->v.ob[1] = (s16)(s32)curY2;
				D_8005BB34->v.ob[2] = (s16)(s32)curZ2;
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0x800;
				D_8005BB34->v.cn[0] = colR;
				D_8005BB34->v.cn[1] = colG;
				D_8005BB34->v.cn[2] = colB;
				D_8005BB34->v.cn[3] = 0xFF;

				D_8005BB34++;

				entry = &D_800DE840[nextIdx];
				if (D_800DE0B6 == 1) {
					rand4 = func_800038E0_44E0() % 4;
					spread = (f32)((rand4 * 2) + 0x14);
					nextX = (f32)entry->unk8 + spread;
					nextX2 = (f32)entry->unk8 - spread;

					rand4 = func_800038E0_44E0() % 4;
					spread = (f32)((rand4 * 2) + 0x14);
					nextY = (f32)entry->unkA + spread;
					nextY2 = (f32)entry->unkA - spread;

					rand4 = func_800038E0_44E0() % 4;
					spread = (f32)((rand4 * 2) + 0x14);
					nextZ = (f32)entry->unkC + spread;
					nextZ2 = (f32)entry->unkC - spread;
				} else {
					zero = 0.0f;
					spread = (f32)(((func_800038E0_44E0() % 5) * 4) + 0x14);
					if ((func_800038E0_44E0() % 0xB) < 6) {
						spread = zero - spread;
					}
					nextX = (f32)entry->unk8 + spread;
					nextX2 = (f32)entry->unk8 - spread;

					spread = (f32)(((func_800038E0_44E0() % 5) * 4) + 0x14);
					if ((func_800038E0_44E0() % 0xB) < 6) {
						spread = zero - spread;
					}
					nextY = (f32)entry->unkA + spread;
					nextY2 = (f32)entry->unkA - spread;

					spread = (f32)(((func_800038E0_44E0() % 5) * 4) + 0x14);
					if ((func_800038E0_44E0() % 0xB) < 6) {
						spread = zero - spread;
					}
					nextZ = (f32)entry->unkC + spread;
					nextZ2 = (f32)entry->unkC - spread;
				}

				D_8005BB34->v.ob[0] = (s16)(s32)nextX;
				D_8005BB34->v.ob[1] = (s16)(s32)nextY;
				D_8005BB34->v.ob[2] = (s16)(s32)nextZ;
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0x800;
				D_8005BB34->v.tc[1] = 0x800;
				D_8005BB34->v.cn[0] = colR;
				D_8005BB34->v.cn[1] = colG;
				D_8005BB34->v.cn[2] = colB;
				D_8005BB34->v.cn[3] = 0x32;

				D_8005BB34++;
				D_8005BB34->v.ob[0] = (s16)(s32)nextX2;
				D_8005BB34->v.ob[1] = (s16)(s32)nextY2;
				D_8005BB34->v.ob[2] = (s16)(s32)nextZ2;
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0x800;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = colR;
				D_8005BB34->v.cn[1] = colG;
				D_8005BB34->v.cn[2] = colB;
				D_8005BB34->v.cn[3] = 0x32;

				D_8005BB34++;

				gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
				gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 2, 3, 1, 0);

				curX = nextX2;
				curY = nextY2;
				curZ = nextZ2;
				curX2 = nextX;
				curY2 = nextY;
				curZ2 = nextZ;
			}

			idx = nextIdx;
		} while ((idx != -5) && (idx != -6));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008BC00_5C0B0.s")
#endif

void func_8008C73C_5CBEC(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4, u8 arg5, s16 arg6, s16 arg7, s16 arg8, u8 arg9) {
	s32 idx;

	idx = func_80083B7C_5402C(0x92);
	if (idx != -3) {
		D_800DE840[idx].unk8 = arg0;
		D_800DE840[idx].unkA = arg1;
		D_800DE840[idx].unkC = arg2;
		D_800DE840[idx].unk12 = arg6;
		D_800DE840[idx].unk14 = arg7;
		D_800DE840[idx].unk16 = arg8;
		D_800DE840[idx].unk2 = 0xF;
		D_800DE840[idx].unkE = arg3;
		D_800DE840[idx].unkF = arg4;
		D_800DE840[idx].unk10 = arg5;
		D_800DE840[idx].unk18 = arg9;
	}
}

void func_8008C7E4_5CC94(void) {
	s16 var_s0;
	s16 var_s1;
	Unk8008C7E4Sub *temp_v0;

	var_s0 = D_800DE80E;
	if ((var_s0 != -5) && (var_s0 != -6)) {
		do {
			temp_v0 = (Unk8008C7E4Sub *)((u8 *)&D_800DE840[var_s0] + 8);

			if ((s32) D_800DE840[var_s0].unk18 > 0) {
				temp_v0->unk10--;
				temp_v0->unk0 = temp_v0->unk0 + temp_v0->unkA;
				temp_v0->unk2 = temp_v0->unk2 + temp_v0->unkC;
				temp_v0->unk4 = temp_v0->unk4 + temp_v0->unkE;
				var_s0 = D_800DE840[var_s0].unk4;
			} else {
				var_s1 = D_800DE840[var_s0].unk4;
				func_80083DBC_5426C(var_s0, 0x92);
				var_s0 = var_s1;
			}
		} while ((var_s0 != -5) && (var_s0 != -6));
	}
}

#ifdef NON_MATCHING
// CURRENT(6709)
void func_8008C8E0_5CD90(void) {
	s16 index;
	s16 x;
	s16 y;
	s16 z;
	s16 *entryData;
	u8 *entryBytes;
	Unk800DE840 *entry;

	index = D_800DE80E;
	gDPPipeSync(D_8005BB2C++);
	if ((index != -6) && (index != -5)) {
		while (1) {
			gDPPipeSync(D_8005BB2C++);

			entry = &D_800DE840[index];
			entryData = &entry->unk8;
			entryBytes = (u8 *)entryData;
			if (D_800DE0B6 == 1) {
				x = entryData[0] - (entryData[5] * 3);
				y = entryData[1] - (entryData[6] * 3);
				z = entryData[2] - (entryData[7] * 3);
			} else {
				x = entryData[0] - (entryData[5] * 2);
				y = entryData[1] - (entryData[6] * 2);
				z = entryData[2] - (entryData[7] * 2);
			}

			D_8005BB34->v.ob[0] = (s16)(s32)(f32)entryData[0];
			D_8005BB34->v.ob[1] = (s16)(s32)(f32)entryData[1];
			D_8005BB34->v.ob[2] = (s16)(s32)(f32)entryData[2];
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0;
			D_8005BB34->v.tc[1] = 0;
			D_8005BB34->v.cn[0] = entryBytes[6];
			D_8005BB34->v.cn[1] = entryBytes[7];
			D_8005BB34->v.cn[2] = entryBytes[8];
			D_8005BB34->v.cn[3] = 0xFF;

			D_8005BB34++;
			D_8005BB34->v.ob[0] = (s16)(s32)(f32)x;
			D_8005BB34->v.ob[1] = (s16)(s32)(f32)y;
			D_8005BB34->v.ob[2] = (s16)(s32)(f32)z;
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0x800;
			D_8005BB34->v.tc[1] = 0x800;
			D_8005BB34->v.cn[0] = entryBytes[6];
			D_8005BB34->v.cn[1] = entryBytes[7];
			D_8005BB34->v.cn[2] = entryBytes[8];
			D_8005BB34->v.cn[3] = 0x19;

			D_8005BB34++;
			gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 2) & 0x1FFFFFFF), 2, 0);
			if (D_800DE0B6 == 1) {
				gImmp1(D_8005BB2C++, G_LINE3D, 0x201);
			} else {
				gImmp1(D_8005BB2C++, G_LINE3D, 0x205);
			}

			index = entry->unk4;
			if ((index == -6) || (index == -5)) {
				break;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008C8E0_5CD90.s")
#endif

#ifdef NON_MATCHING
void func_8008CC3C_5D0EC(void) {
	u8 i;

	for (i = 0; i < 0x96; i++) {
		switch (D_800DE130[i].unk0) {
			case 0:
				func_80084508_549B8(i);
				func_8008472C_54BDC(i);
				break;

			case 1:
				func_80085FF0_564A0(i);
				break;

			case 2:
				func_800870AC_5755C();
				break;

			case 3:
				func_80088BDC_5908C();
				break;

			case 4:
				func_800894A0_59950(i);
				break;

			case 5:
				func_80089AB4_59F64();
				break;

			case 6:
				func_8008A5F8_5AAA8(i);
				break;

			case 7:
				func_8008B264_5B714(i);
				break;

			case 8:
				func_8008BB38_5BFE8(i);
				break;

			case 9:
				func_8008C7E4_5CC94();
				break;

			case 10:
				break;

			default:
				break;
		}
	}

	if (D_800DE0B9 == 1) {
		if (D_800DE0BA == 0) {
			D_800DE0BB += 5;
			if (D_800DE0BB == 0xFF) {
				D_800DE0BA = 1;
			}
		} else if (D_800DE0BB >= 6) {
			D_800DE0BB -= 5;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008CC3C_5D0EC.s")
#endif

void func_8008CDC8_5D278(void) {
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x + D_800DE128);
	D_8005BB34->v.ob[1] = (s16)(s32)D_800DE118.y;
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z + D_800DE128);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x - D_800DE128);
	D_8005BB34->v.ob[1] = (s16)(s32)D_800DE118.y;
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z + D_800DE128);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = D_800DE12D << 6;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x - D_800DE128);
	D_8005BB34->v.ob[1] = (s16)(s32)D_800DE118.y;
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z - D_800DE128);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = D_800DE12D << 6;
	D_8005BB34->v.tc[1] = D_800DE12E << 6;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x + D_800DE128);
	D_8005BB34->v.ob[1] = (s16)(s32)D_800DE118.y;
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z - D_800DE128);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = D_800DE12E << 6;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
}

#ifdef NON_MATCHING
// CURRENT(60)
void func_8008D14C_5D5FC(void) {
	f32 temp_f8;
	f32 temp_f0 = D_800DE128 * D_800DE0C0[0];
	f32 temp_f12 = D_800DE128 * D_800DE0C0[1];
	f32 temp_f14 = D_800DE128 * D_800DE0C0[2];
	f32 temp_f16 = D_800DE128 * D_800DE0C0[3];
	f32 temp_f18 = D_800DE128 * D_800DE0C0[4];
	
	temp_f8 = D_800DE128 * D_800DE0C0[5];

	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x + temp_f0);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_800DE118.y + temp_f12);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z + temp_f14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x + temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_800DE118.y + temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z + temp_f8);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = D_800DE12D << 6;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x - temp_f0);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_800DE118.y - temp_f12);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z - temp_f14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = D_800DE12D << 6;
	D_8005BB34->v.tc[1] = D_800DE12E << 6;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x - temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_800DE118.y - temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z - temp_f8);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = D_800DE12E << 6;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008D14C_5D5FC.s")
#endif

#ifdef NON_MATCHING
// CURRENT(3245)
void func_8008D510_5D9C0(void) {
	f32 temp_f0;
	f32 temp_f14;
	f32 temp_f16;
	f32 temp_f18;
	f32 temp_f2;
	f32 temp_f4;
	f32 temp_f4_2;
	f32 temp_f8;
	f32 temp_f8_2;

	temp_f2 = D_800AA7C0_7AC70[D_800E1D6B];
	temp_f0 = temp_f2 + D_800DE128;
	temp_f14 = D_800DE128 - temp_f2;
	temp_f16 = temp_f0 * D_800DE0C0[0];
	temp_f18 = temp_f0 * D_800DE0C0[1];
	temp_f4 = temp_f0 * D_800DE0C0[2];
	temp_f8 = temp_f14 * D_800DE0C0[3];
	temp_f4_2 = temp_f14 * D_800DE0C0[4];
	temp_f8_2 = temp_f14 * D_800DE0C0[5];

	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x + temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_800DE118.y + temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z + temp_f4);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x + temp_f8);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_800DE118.y + temp_f4_2);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z + temp_f8_2);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = D_800DE12D << 6;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x - temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_800DE118.y - temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z - temp_f4);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = D_800DE12D << 6;
	D_8005BB34->v.tc[1] = D_800DE12E << 6;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x - temp_f8);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_800DE118.y - temp_f4_2);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z - temp_f8_2);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = D_800DE12E << 6;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);

	if (D_800E1D6C == 0) {
		D_800E1D6B++;
		if (D_800E1D6B == 0xA) {
			D_800E1D6C = 1;
		}
	} else if (D_800E1D6C == 1) {
		D_800E1D6B--;
		if (D_800E1D6B == 0) {
			D_800E1D6C = 0;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008D510_5D9C0.s")
#endif

#ifdef NON_MATCHING
// CURRENT(2095)
s32 func_8008D98C_5DE3C(Gfx **arg0) {
	s32 i;

	func_80088E18_592C8();

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_TF_BILERP | G_TL_LOD | G_TD_SHARPEN | G_CYC_1CYCLE);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK | G_FOG | G_LIGHTING);
	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPPipeSync(D_8005BB2C++);

	func_8008E158_5E608();
	func_8008FA60_5FF10();

	for (i = 0; i < 0x96; i = (i + 1) & 0xFF) {
		u8 entryType = D_800DE130[i].unk0;

		if (entryType != 0xFA) {
			if (entryType < 0xB) {
				switch (entryType) {
			case 0:
				func_800847E4_54C94((u8)i);
				break;

			case 1:
				func_80089764_59C14((u8)i);
				break;

			case 2:
				func_80089B38_59FE8();
				break;

			case 3:
				func_8008A928_5ADD8((u8)i);
				break;

			case 4:
				func_8008B534_5B9E4((u8)i);
				break;

			case 5:
				func_8008BC00_5C0B0((u8)i);
				break;

			case 6:
			case 7:
			case 8:
			case 9:
			case 10:
				break;

			default:
				break;
				}
			}
		}
	}

	return func_800878A4_57D54();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008D98C_5DE3C.s")
#endif

/* Clears unkA field in all 50 D_800E1980 entries and resets globals */
void func_8008DBEC_5E09C(void) {
	u8 i;

	for (i = 0; i < 50; i++) {
		D_800E1980[i].unkA = 0;
	}
	D_800E1D68 = 0;
	D_800E1D69 = 0;
}

#ifdef NON_MATCHING
// CURRENT(7230)
u8 func_8008DC34_5E0E4(s16 arg0, s32 arg1, s32 arg2, s16 arg3, s16 arg4) {
	u8 var_v1;
	u8 temp_t3;
	Unk800E1980 *temp_a0;
	s8 *temp_t2;
	u8 *temp_a2;

	if (D_800E1D68 >= 0x32) {
		return 0xFF;
	}

	temp_a0 = &D_800E1980[D_800E1D69];
	s8* frame;
	u8* dir;
	frame = (s8*)&D_800E1D6B;
	temp_f2 = D_800AA7C0_7AC70[*frame];
	temp_t2 = &D_800AA694[(u8) arg3 * 8];
	temp_a0->unkC = (u8) arg3;
	temp_a0->unkA = (u16) arg4;
	temp_a0->unk2 = arg1;
	temp_a0->unk4 = arg2;
	temp_a0->unkF = 0;
	temp_a0->unk10 = temp_t2[1];
	temp_a0->unk11 = temp_t2[2];
	temp_a0->unk12 = temp_t2[3];

	var_v1 = D_800E1D69;
	temp_t3 = var_v1;
	temp_a0 = &D_800E1980[D_800E1D69];
	temp_a2 = &D_800AA724[(u8) arg3 * 4];
	temp_a0->unkE = func_800038E0_44E0() % temp_t2[0];
	temp_a0->unkD = temp_a2[3];
	temp_a0->unk6 = temp_a2[0];
	temp_a0->unk7 = temp_a2[1];
	temp_a0->unk8 = temp_a2[2];

	while (var_v1 < 0x32) {
		if (D_800E1980[var_v1].unkA == 0) {
			D_800E1D69 = var_v1;
			var_v1 = 0x32;
		}
		var_v1 = (var_v1 + 1) & 0xFF;
	}

	D_800E1D68++;
	return temp_t3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008DC34_5E0E4.s")
#endif

void func_8008DDF0_5E2A0(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
	if (arg0 != 0xFF) {
		D_800E1980[arg0].unk6 = arg1;
		D_800E1980[arg0].unk7 = arg2;
		D_800E1980[arg0].unk8 = arg3;
	}
}

void func_8008DE44_5E2F4(u8 arg0, u8 arg1) {
	if (arg0 != 0xFF) {
		(&D_800E198D)[(s32)arg0 * 20] = arg1;
	}
}

void func_8008DE7C_5E32C(u8 arg0, s8 arg1) {
	if (arg0 != 0xFF) {
		(&D_800E1992)[(s32)arg0 * 20] = arg1;
	}
}

void func_8008DEB8_5E368(u8 arg0, s8 arg1, s8 arg2) {
	if (arg0 != 0xFF) {
		D_800E1980[arg0].unk10 = arg1;
		D_800E1980[arg0].unk11 = arg2;
	}
}

void func_8008DF08_5E3B8(u8 arg0, u8 arg1) {
	if (arg0 != 0xFF) {
		(&D_800E198F)[(s32)arg0 * 20] = arg1;
	}
}

void func_8008DF40_5E3F0(u8 arg0) {
	if (arg0 != 0xFF) {
		D_800E1980[arg0].unkA = 0;
		if (arg0 < D_800E1D69) {
			D_800E1D69 = arg0;
		}
		D_800E1D68--;
	}
}

// https://decomp.me/scratch/PjKaT
// CURRENT(285)
#ifdef NON_MATCHING
void func_8008DFA0_5E450(void)
{
	s16 life;
	s32 var_s0;
	s32 temp_a0;
	u8 temp_v1;
	s32 temp_t9;
	s32 var_s2;
	s32 var_v1;
	Unk800E1980 *entry;
	u8 *entryBytes;
	var_s2 = D_800E1D68;
	var_s0 = 0;
	var_v1 = var_s2;
	if (var_s2 > 0)
	{
		do
		{
			entry = &D_800E1980[var_s0];
			life = entry->unkA;
			if (life != 0)
			{
				entryBytes = (u8 *)entry;
				temp_v1 = entry->unkF;
				if (temp_v1 == 0)
				{
					temp_a0 = entry->unkC;
					temp_v1 = temp_a0;
					if (((0xD == temp_a0 && entryBytes[0xE] < 7) || ((temp_v1 == 0xA) && (entryBytes[0xD] < (entry->unk12 * (-4))))) || (((temp_v1 != 0xA) && (temp_v1 != 0xD)) && (entry->unk12 < entryBytes[0xD])))
					{
						temp_t9 = entryBytes[0xE] + 1;
						entryBytes[0xD] = entryBytes[0xD] - entry->unk12;
						entryBytes[0xE] = temp_t9;
						if (((short)temp_t9 & 0xFF) >= D_800AA694[temp_a0 * 8])
						{
							entryBytes[0xE] = 0;
						}
						entry->unkA += entry->unk10;
						entry->unk2 += entry->unk11;
					}
					else
					{
						if (temp_v1 == 0xA)
						{
							func_8008DC34_5E0E4(entry->unk0, entry->unk2, entry->unk4, 0xB, life);
						}
						func_8008DF40_5E3F0((u8)var_s0);
					}
				}
				else
				{
					entry->unkF = temp_v1 - 1;
				}
				var_v1 = (var_s2 - 1) & 0xFF;
				var_s2 = var_v1;
			}
			var_s0 = (var_s0 + 1) & 0xFF;
		} while (var_v1 > 0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008DFA0_5E450.s")
#endif

#ifdef NON_MATCHING
// CURRENT(31147)
void func_8008E158_5E608(void) {
	typedef struct {
		s8 unk0;
		s8 unk1;
		s8 unk2;
		s8 unk3;
		s8 unk4;
		s8 unk5;
		s8 unk6;
		s8 unk7;
	} Unk800AA694Entry;

	s32 pad0;
	s32 pad1;
	s32 i;
	s32 remaining;

	remaining = D_800E1D68;
	i = 0;
	if (remaining > 0) {
		do {
			Unk800E1980* entry;
			u8 type;

			entry = &D_800E1980[i];
			if (entry->unkA != 0) {
				if (entry->unkF == 0) {
					u8 savedIndex;
					Unk800AA694Entry* typeCfg;

					type = entry->unkC;
					savedIndex = i;
					if ((type != 0xFF) || ((u8)entry->unkE != 0xFF)) {
						typeCfg = (Unk800AA694Entry*)&D_800AA694[type * 8];
						if (typeCfg->unk5 == 0) {
							s32 lineWords;
							s32 lineWordsClamped;
							s32 lineSize;
							s32 dxt;
							u32 texAddr;

							gDPPipeSync(D_8005BB2C++);
							gDPSetCombineLERP(D_8005BB2C++, 1, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, 1, 0, SHADE, 0, TEXEL0, 0, SHADE, 0);

							texAddr = (u32)(D_800AA76C[type] + (((typeCfg->unk7 * (u8)entry->unkE) * typeCfg->unk6) / 2));
							gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, texAddr & 0x1FFFFFFF);

							gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
							gDPLoadSync(D_8005BB2C++);

							lineWords = (((typeCfg->unk7 * typeCfg->unk6) + 3) >> 2) - 1;
							lineWordsClamped = 0x7FF;
							if (lineWords < 0x7FF) {
								lineWordsClamped = lineWords;
							}

							lineSize = typeCfg->unk6 / 16;
							if (lineSize <= 0) {
								lineSize = 1;
							}

							dxt = (lineSize + 0x7FF) / lineSize;
							gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, lineWordsClamped, dxt);

							gDPPipeSync(D_8005BB2C++);
							gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, (((typeCfg->unk6 >> 1) + 7) >> 3), 0x0000, G_TX_RENDERTILE, 0,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
							gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (typeCfg->unk6 - 1) << 2, (typeCfg->unk7 - 1) << 2);
						} else if (typeCfg->unk5 == 1) {
							s32 lineWords;
							s32 lineWordsClamped;
							s32 lineSize;
							s32 dxt;
							u32 texAddr;

							gDPPipeSync(D_8005BB2C++);
							gDPSetCombineLERP(D_8005BB2C++, SHADE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0);

							texAddr = (u32)(D_800AA76C[type] + ((typeCfg->unk7 * (u8)entry->unkE) * typeCfg->unk6));
							gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, texAddr & 0x1FFFFFFF);

							gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
							gDPLoadSync(D_8005BB2C++);

							lineWords = (((typeCfg->unk7 * typeCfg->unk6) + 1) >> 1) - 1;
							lineWordsClamped = 0x7FF;
							if (lineWords < 0x7FF) {
								lineWordsClamped = lineWords;
							}

							lineSize = typeCfg->unk6 / 8;
							if (lineSize <= 0) {
								lineSize = 1;
							}

							dxt = (lineSize + 0x7FF) / lineSize;
							gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, lineWordsClamped, dxt);

							gDPPipeSync(D_8005BB2C++);
							gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, ((typeCfg->unk6 + 7) >> 3), 0x0000, G_TX_RENDERTILE, 0,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
							gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (typeCfg->unk6 - 1) << 2, (typeCfg->unk7 - 1) << 2);
						} else if (typeCfg->unk5 == 2) {
							s32 lineWords;
							s32 lineWordsClamped;
							s32 lineSize;
							s32 dxt;

							gDPPipeSync(D_8005BB2C++);
							gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);
							gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, (u8*)((u32)D_800AA76C[type] & 0x1FFFFFFF));

							gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
							gDPLoadSync(D_8005BB2C++);

							lineWords = (typeCfg->unk7 * typeCfg->unk6) - 1;
							lineWordsClamped = 0x7FF;
							if (lineWords < 0x7FF) {
								lineWordsClamped = lineWords;
							}

							lineSize = (typeCfg->unk6 * 2) / 8;
							if (lineSize <= 0) {
								lineSize = 1;
							}

							dxt = (lineSize + 0x7FF) / lineSize;
							gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, lineWordsClamped, dxt);

							gDPPipeSync(D_8005BB2C++);
							gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, (((typeCfg->unk6 * 2) + 7) >> 3), 0x0000, G_TX_RENDERTILE, 0,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
							gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (typeCfg->unk6 - 1) << 2, (typeCfg->unk7 - 1) << 2);
						}

						D_800DE12D = typeCfg->unk6;
						D_800DE12E = typeCfg->unk7;

						gDPPipeSync(D_8005BB2C++);
					}

					D_800DE118.x = (f32)entry->unk0;
					D_800DE118.y = (f32)entry->unk2;
					D_800DE118.z = (f32)entry->unk4;
					D_800DE124 = &entry->unk6;

					if (type == 0xA) {
						D_800DE128 = (f32)((u8)entry->unkD * entry->unkA);
					} else if (type == 0xB) {
						D_800DE128 = (f32)((u8)entry->unkD * entry->unkA);
					} else {
						D_800DE128 = (f32)entry->unkA;
					}

					D_800DE12C = entry->unkD;
					typeCfg = (Unk800AA694Entry*)&D_800AA694[type * 8];
					switch (typeCfg->unk4) {
					case 0:
						func_8008D14C_5D5FC();
						break;
					case 2:
						func_8008CDC8_5D278();
						break;
					case 3:
						func_8008D510_5D9C0();
						break;
					default:
						break;
					}

					i = savedIndex;
				}

				remaining = (remaining - 1) & 0xFF;
			}

			i = (i + 1) & 0xFF;
		} while (remaining > 0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008E158_5E608.s")
#endif

void func_8008E9DC_5EE8C(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s8 arg4, s8 arg5, u8 arg6, u8 arg7, u8 arg8, u8 arg9, u8 arg10) {
	u8 slot;

	slot = func_8008DC34_5E0E4(arg0, arg1, arg2, 2, arg3);
	if (slot != 0xFF) {
		D_800E1980[slot].unkD = arg7;
		D_800E1980[slot].unk12 = arg7 / arg6;
		D_800E1980[slot].unk6 = arg8;
		D_800E1980[slot].unk7 = arg9;
		D_800E1980[slot].unk8 = arg10;
		D_800E1980[slot].unk10 = arg4;
		D_800E1980[slot].unk11 = arg5;
	}
}

void func_8008EAB0_5EF60(s16 arg0, s16 arg1, s16 arg2, s32 arg3, s8 arg4) {
	u8 slot;

	slot = func_8008DC34_5E0E4(arg0, arg1, arg2, 5, 10);
	func_8008DE7C_5E32C(slot, arg4);
	func_8008DEB8_5E368(slot, arg3, 0);
}

s16 func_8008EB20_5EFD0(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, s32 arg5, u8 arg6)
{
  s16 pad1;
  u8 i;
  u8 slot;
  s32 pad0;
  s16 ret;
  
  func_800038E0_44E0();
  if (arg3 < 0x1E)
  {
	arg3 = 0x1E;
  }
  if (arg3 >= 0x3E9)
  {
	arg3 = 0x3E8;
  }
  ret = func_80086C58_57108(arg0, arg1, arg2, arg3, arg5, (u8) arg6);
  if (ret != (-3))
  {
	if (arg3 >= 0x51)
	{
	  func_8008EAB0_5EF60(arg0, arg1, arg2, (u8) ((arg3 / 10) + 0x14), 6);
	}
	func_8008DE44_5E2F4(func_8008DC34_5E0E4(arg0, arg1, arg2, 6, arg3 * 8), 0xB4);
	slot = func_8008DC34_5E0E4(arg0, arg1, arg2, 6, arg3 * 6);
	func_8008DE44_5E2F4(slot, 0x6E);
	func_8008DF08_5E3B8(slot, 1);
	i = 0;
	if (arg4 > 0)
	{
	  while (1)
	  {
		i++;
		if (i >= arg4)
		{
		  break;
		}
	  }

	}
	if (arg3 < 0x96)
	{
	  func_8008E9DC_5EE8C(arg0, arg1, arg2, arg3, arg3 / 16, 1, 0x1E, 0x96, 0x32, 0x32, 0x32);
	}
	else
	{
	  func_8008E9DC_5EE8C(arg0, arg1, arg2, arg3, arg3 / 16, 1, 0x3C, 0x96, 0x32, 0x32, 0x32);
	}
  }
  return ret;
}

void func_8008ED44_5F1F4(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, s32 arg5) {
	D_800DE0EB = 1;
	func_8008EB20_5EFD0(arg0, arg1, arg2, arg3, arg4, arg5, 0);
	D_800DE0EB = 0;
}

#ifdef NON_MATCHING
// CURRENT(1385)
void func_8008EDB4_5F264(s32 arg0) {
	s16 temp;
	s32 value;
	s32 modulo;
	s32 var_s0;
	s32 var_s4;
	u8 *var_s1;
	s8 *var_s2;

	modulo = 120;
	var_s4 = 0;
	do {
		var_s1 = &D_800AA688[(var_s4 * 4) - var_s4];
		var_s2 = (s8 *)(arg0 + ((var_s4 * 4) - var_s4));
		var_s0 = 0;
		do {
			temp = (func_800038E0_44E0() % modulo) + var_s1[var_s0] - 60;
			value = temp;
			if (temp < 0) {
				value = 0;
			} else if (value >= 0x100) {
				value = 0xFF;
			}
			var_s2[var_s0] = value;
			var_s0 = (var_s0 + 1) & 0xFF;
		} while (var_s0 < 3);
		var_s4 = (var_s4 + 1) & 0xFF;
	} while (var_s4 < 4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008EDB4_5F264.s")
#endif

void func_8008EEC4_5F374(void) {
	s32 var_s1;
	f32 sp60[3];

	if (D_800DE0B6 == 1) {
		var_s1 = 0;
		do {
			sp60[0] = (f32) ((func_800038E0_44E0() % 1000) - 1000);
			sp60[1] = (f32) ((func_800038E0_44E0() % 1000) - 500);
			sp60[2] = (f32) ((func_800038E0_44E0() % 1000) - 1000);
			func_800837B4_53C64(sp60, sp60);
			func_800838B8_53D68(80.0f, sp60, sp60);
			func_80085CEC_5619C((s16) (s32) sp60[0], (s16) (s32) sp60[1], (s16) (s32) sp60[2], -1, 0, 0, 0x46, 0x19, 3,
							0x6E, 0xFF, 0xFF, 0xFF, 3);
			var_s1 = (var_s1 + 1) & 0xFF;
		} while (var_s1 < 3);

		sp60[0] = (f32) ((func_800038E0_44E0() % 1000) - 500);
		sp60[1] = (f32) ((func_800038E0_44E0() % 1000) - 500);
		sp60[2] = (f32) ((func_800038E0_44E0() % 1000) - 500);
		func_800837B4_53C64(sp60, sp60);
		func_800838B8_53D68(340.0f, sp60, sp60);
		func_8008DC34_5E0E4((s16) (s32) sp60[0], (s16) (s32) sp60[1], (s16) (s32) sp60[2], 0xD,
						  (func_800038E0_44E0() % 0xF) + 0xF);
	}
}

// https://decomp.me/scratch/fAy3j
// CURRENT(0)
#ifdef NON_MATCHING
void func_8008F1E0_5F690(void)
{
  s16 temp_a0;
  u8 var_s1;
  f32 sp90[3];
  if (D_800DE0B7 == 1)
  {
	var_s1 = 0;
	if (D_800DE0BB > 0)
	{
	  D_800DE0BB -= 2;
	}

	do
	{
	  sp90[2] = 0.0f;
	  temp_a0 = func_800038E0_44E0() % 0x168;
	  if (temp_a0 == 0)
	  {
		sp90[1] = 500.0f;
		sp90[0] = 0.0f;
	  }
	  else if (temp_a0 < 0x5A)
	  {
		sp90[1] = cosf((((f32) temp_a0 * 3.14159265358979323846) / 180.0)) * 500.0f;
		sp90[0] = sinf((((f32) temp_a0 * 3.14159265358979323846) / 180.0)) * 500.0f;
	  }
		else if (temp_a0 == 0x5A)
	  {
		sp90[1] = 0.0f;
		sp90[0] = 500.0f;
	  }
		else if (temp_a0 < 0xB4)
	  {
		sp90[1] = cosf((((f32) (0xB4 - temp_a0) * 3.14159265358979323846) / 180.0)) * (-500.0f);
		sp90[0] = sinf((((f32) (0xB4 - temp_a0) * 3.14159265358979323846) / 180.0)) * 500.0f;
	  }
		else if (temp_a0 == 0xB4)
	  {
		sp90[1] = -500.0f;
		sp90[0] = 0.0f;
	  }
		else if (temp_a0 < 0x10E)
	  {
		sp90[1] = cosf((((f32) (temp_a0 - 0xB4) * 3.14159265358979323846) / 180.0)) * (-500.0f);
		sp90[0] = sinf((((f32) (temp_a0 - 0xB4) * 3.14159265358979323846) / 180.0)) * (-500.0f);
	  }
		else if (temp_a0 == 0x10E)
	  {
		sp90[1] = 0.0f;
		sp90[0] = -500.0f;
	  }
		else if (temp_a0 < 0x168)
	  {
		sp90[1] = cosf((((f32) (0x168 - temp_a0) * 3.14159265358979323846) / 180.0)) * 500.0f;
		sp90[0] = sinf((((f32) (0x168 - temp_a0) * 3.14159265358979323846) / 180.0)) * (-500.0f);
	  }
	  func_800837B4_53C64(sp90, sp90);
	  func_800838B8_53D68(250.0f, sp90, sp90);
	  func_80085CEC_5619C((s16) ((s32) sp90[0]), (s16) ((s32) sp90[1]), (s16) ((s32) sp90[2]), 0, 0, -1, 0x46, 0x1E, 3, 0x6E, 0xFF, 0xFF, 0xFF, 4);
	  var_s1++;
	}
	while (var_s1 < 3);
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008F1E0_5F690.s")
#endif

void func_8008F534_5F9E4(u8 arg0, u8 arg1) {
	D_800DE130[arg1].unk0 = arg0;
	D_800DE130[arg1].unk1 = 0;
	D_800DE130[arg1].unk4 = 0;
	D_800DE130[arg1].unk6 = -6;
	D_800DE130[arg1].unk8 = -6;
}

#ifdef NON_MATCHING
// CURRENT(726)
void func_8008F574_5FA24(void) {
	u8 var_s0;
	s32 i;
	u8 *var_a0;
	Unk800311A0 *var_v0;

	D_800DE0EB = 0;
	var_a0 = D_800DE0E8;
	var_v0 = &D_800DE0B0;
	var_s0 = 0xFF;
	var_v0->unk0 = 0x78;
	var_v0->unk2 = -0x26C;
	var_v0->unk4 = -0xDFC;
	D_800DE0E4[0] = var_s0;
	D_800DE0E4[1] = var_s0;
	D_800DE0E4[2] = var_s0;
	var_a0[0] = 0x28;
	var_a0[1] = 0x28;
	var_a0[2] = 0x28;
	func_8008DBEC_5E09C();

	for (i = 0; i < 0x96; i = (i + 1) & 0xFF) {
		D_800DE130[i].unk0 = 0xFA;
	}

	for (i = 0; i < 0x1C2; i = (i + 1) & 0xFFFF) {
		D_800DE840[i].unk0 = 0;
	}

	D_800E197A = 0;
	D_800E1978 = 0;
	func_8008F534_5F9E4(2, 0x95);
	func_8008F534_5F9E4(3, 0x94);
	func_8008F534_5F9E4(5, 0x93);
	func_8008F534_5F9E4(0xA, 0x92);

	D_800DE0BF = var_s0;
	D_800DE0BE = D_800DE0BF;
	D_800DE0B6 = 0;
	D_800DE0B7 = 0;
	D_800DE0B8 = 0;
	D_800DE0B9 = 0;
	D_800DE0BD = 0;
	D_800DE0BA = 0;
	D_800DE0BB = D_800DE0BF;
	D_800DE839 = 0;
	D_800DE838 = 4;
	D_800E1D6B = 0;
	D_800E1D6C = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008F574_5FA24.s")
#endif

void func_8008F704_5FBB4(u8 arg0) {
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPPipeSync(D_8005BB2C++);

	D_8005BB34->v.ob[0] = (s16) (s32) D_800AA848[arg0][0];
	D_8005BB34->v.ob[1] = (s16) (s32) D_800AA848[arg0][1];
	D_8005BB34->v.ob[2] = (s16) (s32) D_800AA848[arg0][2];
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800AA7D8[arg0][0];
	D_8005BB34->v.cn[1] = D_800AA7D8[arg0][1];
	D_8005BB34->v.cn[2] = D_800AA7D8[arg0][2];
	D_8005BB34->v.cn[3] = D_800AA7D8[arg0][3];

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16) (s32) D_800AA848[arg0][3];
	D_8005BB34->v.ob[1] = (s16) (s32) D_800AA848[arg0][4];
	D_8005BB34->v.ob[2] = (s16) (s32) D_800AA848[arg0][5];
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800AA7D8[arg0][4];
	D_8005BB34->v.cn[1] = D_800AA7D8[arg0][5];
	D_8005BB34->v.cn[2] = D_800AA7D8[arg0][6];
	D_8005BB34->v.cn[3] = D_800AA7D8[arg0][7];

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16) (s32) D_800AA848[arg0][6];
	D_8005BB34->v.ob[1] = (s16) (s32) D_800AA848[arg0][7];
	D_8005BB34->v.ob[2] = (s16) (s32) D_800AA848[arg0][8];
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800AA7D8[arg0][8];
	D_8005BB34->v.cn[1] = D_800AA7D8[arg0][9];
	D_8005BB34->v.cn[2] = D_800AA7D8[arg0][10];
	D_8005BB34->v.cn[3] = D_800AA7D8[arg0][11];

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16) (s32) D_800AA848[arg0][9];
	D_8005BB34->v.ob[1] = (s16) (s32) D_800AA848[arg0][10];
	D_8005BB34->v.ob[2] = (s16) (s32) D_800AA848[arg0][11];
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800AA7D8[arg0][12];
	D_8005BB34->v.cn[1] = D_800AA7D8[arg0][13];
	D_8005BB34->v.cn[2] = D_800AA7D8[arg0][14];
	D_8005BB34->v.cn[3] = D_800AA7D8[arg0][15];

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, (Vtx *)(((u32) (D_8005BB34 - 4)) & 0x1FFFFFFF), 4, 0);
	gSP1Quadrangle(D_8005BB2C++, 0, 1, 2, 3, 0);
	gDPPipeSync(D_8005BB2C++);
}

void func_8008FA60_5FF10(void) {
	if (D_800DE0BE != 0xFF) {
		func_8008F704_5FBB4(D_800DE0BE);
	}
	if (D_800DE0BF != 0xFF) {
		func_8008F704_5FBB4(D_800DE0BF);
	}
}

void func_8008FAAC_5FF5C(void) {
	func_800033D4_3FD4(0x800, 0);
	if (currentControllerStates[CONTROLLER_ONE].button & BUTTON_D_UP) {
		D_800DE0B0.unk2 += 0x28;
	}

	func_800033D4_3FD4(0x400, 0);
	if (currentControllerStates[CONTROLLER_ONE].button & BUTTON_D_DOWN) {
		D_800DE0B0.unk2 -= 0x28;
	}

	func_800033D4_3FD4(0x200, 0);
	if (currentControllerStates[CONTROLLER_ONE].button & BUTTON_D_LEFT) {
		D_800DE0B0.unk0 -= 0x28;
	}

	func_800033D4_3FD4(0x100, 0);
	if (currentControllerStates[CONTROLLER_ONE].button & BUTTON_D_RIGHT) {
		D_800DE0B0.unk0 += 0x28;
	}

	func_800033D4_3FD4(8, 0);
	if (currentControllerStates[CONTROLLER_ONE].button & BUTTON_C_UP) {
		D_800DE0B0.unk4 += 0x28;
	}

	func_800033D4_3FD4(4, 0);
	if (currentControllerStates[CONTROLLER_ONE].button & BUTTON_C_DOWN) {
		D_800DE0B0.unk4 -= 0x28;
	}
}

void func_8008FBD4_60084(void) {
	u8 pad;
	struct { u8 unk0; u8 unk1; u8 unk2; } sp44;

	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (u8 *)((s32)&D_100DC00 & 0x1FFFFFFF));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C, 0x7C);
	gDPPipeSync(D_8005BB2C++);

	D_800DE12D = 0x20;
	D_800DE12E = 0x20;
	D_800DE118.x = D_800DE0B0.unk0;
	D_800DE118.y = D_800DE0B0.unk2;
	D_800DE118.z = D_800DE0B0.unk4;
	sp44.unk0 = 0x19;
	sp44.unk1 = 0xFF;
	sp44.unk2 = 0x28;
	pad = 0;
	D_800DE124 = &sp44.unk0;
	D_800DE12C = 0xF0;
	D_800DE128 = 450.0f;
	func_8008D14C_5D5FC();
}

s32 func_8008FD9C_6024C(void) {
	gSPMatrix(D_8005BB2C++, (Mtx *)((u32)&D_80031160 & 0x1FFFFFFF), G_MTX_LOAD | G_MTX_MODELVIEW);
	return func_8008D98C_5DE3C(&D_8005BB2C);
}

void func_8008FDF0_602A0(void) {
	D_800DE0F0[0] = (f32)D_800DE10C - D_800DE100[0];
	D_800DE0F0[1] = (f32)D_800DE10E - D_800DE100[1];
	D_800DE0F0[2] = (f32)D_800DE110 - D_800DE100[2];
	func_8008CC3C_5D0EC();
	func_8008DFA0_5E450();
	func_8008EEC4_5F374();
	func_8008F1E0_5F690();
	func_8008FAAC_5FF5C();
}

#ifdef NON_MATCHING
// CURRENT(13651)
void func_8008FE98_60348(s32 arg0) {
	Unk800AA998Entry *entry;

	entry = &D_800AA998[arg0 & 0xFF];

	switch (entry->type) {
		case 0:
			entry->unk1 = func_8008B08C_5B53C(entry->unk2, entry->unk4, entry->unk6,
									  (s8)(entry->unk8 & 0xFF), entry->unkA, entry->unkC, entry->unkE);
			break;

		case 1:
			func_8008B19C_5B64C(D_800AA998[entry->unk8].unk1, (u8)(entry->unkA & 0xFF));
			break;

		case 2:
			func_80085CEC_5619C(entry->unk2, entry->unk4, entry->unk6, (s8)(entry->unk8 & 0xFF),
								entry->unkA, entry->unkC, 0xA0, 0xF, 0x32, 0xFF, 0xFF, 0xFF, 1,
								entry->unkE);
			break;

		case 3:
			D_800DE0BE = entry->unk8;
			D_800DE0BF = entry->unkA;
			break;

		case 4:
			if (D_800313D0_31FD0 != 2) {
				func_8008A460_5A910(entry->unk2, entry->unk4, entry->unk6, (s8)(entry->unk8 & 0xFF),
								   entry->unkA, entry->unkC, entry->unkE, 0x1E,
								   9, 0xFA, 0x55, 1, 0, 0xDC, 1);
			}
			break;

		case 5:
			if (D_800313D0_31FD0 != 2) {
				func_8008A460_5A910(entry->unk2, entry->unk4, entry->unk6, (s8)(entry->unk8 & 0xFF),
								   entry->unkA, entry->unkC, entry->unkE, 0x1E,
								   7, 0x8C, 0x73, 0xA, 0, 0xDC, 0);
			}
			break;

		case 6:
			func_800840C4_54574(0x93);
			break;

		case 7:
			if (D_800DE0B6 == 1) {
				func_8008C73C_5CBEC(entry->unk2, entry->unk4, entry->unk6, 0xFF, 0x78,
							  0x5A, entry->unk8, entry->unkA, entry->unkC,
							  entry->unkE);
			} else {
				func_8008C73C_5CBEC(entry->unk2, entry->unk4, entry->unk6, 0xFF, 0xE6,
							  0x32, entry->unk8, entry->unkA, entry->unkC,
							  entry->unkE);
			}
			break;

		case 8:
			switch (entry->unkA) {
				case 0:
					func_8008EB20_5EFD0(entry->unk2, entry->unk4, entry->unk6,
								   (u16)entry->unk8, 0, 0, 0);
					break;

				case 1:
					func_8008EB20_5EFD0(entry->unk2, entry->unk4, entry->unk6,
								   (u16)entry->unk8, 0, (s32)D_800AB448, 0);
					break;

				case 2:
					func_8008EB20_5EFD0(entry->unk2, entry->unk4, entry->unk6,
								   (u16)entry->unk8, 0, 0, 1);
					break;

				case 3:
					func_8008EB20_5EFD0(entry->unk2, entry->unk4, entry->unk6,
								   (u16)entry->unk8, 0, (s32)D_800AB454, 0);
					break;
			}
			break;

		case 9:
			func_8008DDF0_5E2A0(
				func_8008DC34_5E0E4(entry->unk2, entry->unk4, entry->unk6, 0, entry->unk8),
				(u8)(entry->unkA & 0xFF), (u8)(entry->unkC & 0xFF), (u8)(entry->unkE & 0xFF));
			break;

		case 10:
			func_80084324_547D4(entry->unk2, entry->unk4, entry->unk6, entry->unk8,
							 entry->unkA, entry->unkC, entry->unkE, 0xB4);
			break;

		case 11:
			D_800DE0BE = 0xFF;
			D_800DE0BF = 0xFF;
			break;

		case 12:
			func_8008DC34_5E0E4(entry->unk2, entry->unk4, entry->unk6, 0xA,
								 entry->unk8);
			break;

		case 13:
			func_8008DC34_5E0E4(entry->unk2, entry->unk4, entry->unk6, 0xC,
								 entry->unk8);
			break;

		case 14:
			func_80085CEC_5619C(entry->unk2, entry->unk4, entry->unk6, (s8)(entry->unk8 & 0xFF),
								entry->unkA, entry->unkC, 0xF0, 0xF, 0x32, 0xC8, 0xA0, 0xA, 1,
								entry->unkE);
			break;

		case 15:
			D_800DE0B6 = 1;
			break;

		case 16:
			D_800DE0B6 = 0;
			break;

		case 17:
			func_8008DC34_5E0E4(entry->unk2, entry->unk4, entry->unk6, 0xE, 0x46);
			break;

		case 18:
			func_8008B7BC_5BC6C(entry->unk2, entry->unk4, entry->unk6, entry->unk8,
						   entry->unkA, entry->unkC, entry->unkE);
			break;

		case 19:
			func_8008A460_5A910(entry->unk2, entry->unk4, entry->unk6, (s8)(entry->unk8 & 0xFF),
							   entry->unkA, entry->unkC, entry->unkE, 0xFA,
							   0x1D, 0x1E, 0xFF, 0xFF, 0xFF, 0xFF, 0);
			break;

		case 20:
			func_8008DC34_5E0E4(entry->unk2, entry->unk4, entry->unk6, 0xF,
								 entry->unk8);
			break;

		case 21:
			func_8008DC34_5E0E4(entry->unk2, entry->unk4, entry->unk6, 0x10,
								 entry->unk8);
			break;

		case 22:
			D_800E1D6A = 0;
			D_800DE0B7 = 1;
			break;

		case 23:
			D_800DE0B7 = 0;
			break;

		case 24:
			func_8008DC34_5E0E4(entry->unk2, entry->unk4, entry->unk6, 0x11,
								 entry->unk8);
			break;

		case 25:
			func_8008DBEC_5E09C();
			break;

		case 26:
			D_800DE0B8 = 1;
			func_80084324_547D4(entry->unk2, entry->unk4, entry->unk6, entry->unk8,
							 entry->unkA, entry->unkC, entry->unkE, 0xD48);
			break;

		case 27:
			D_800E1D6A = 1;
			D_800DE0B7 = 1;
			break;

		case 28:
			D_800DE0B9 = 1;
			D_800DE0BB = 0;
			func_80084324_547D4(entry->unk2, entry->unk4, entry->unk6, entry->unk8,
							 entry->unkA, entry->unkC, entry->unkE, 0x190);
			D_800DE0BC = 1;
			break;

		case 29:
			D_800DE0BD = 1;
			func_80085CEC_5619C(entry->unk2, entry->unk4, entry->unk6, (s8)(entry->unk8 & 0xFF),
								entry->unkA, entry->unkC, 0x8C, 0x28, 0x64, 0xFF, 0xFF, 0xFF, 1,
								entry->unkE);
			break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008FE98_60348.s")
#endif

void func_80090648_60AF8(void) {
	s16 i;
	u16 perspNorm;

	gDPPipeSync(D_8005BB2C++);
	gSPLoadUcode(D_8005BB2C++, &D_30130, &D_3F320);

	func_80011E14_12A14(0);
	func_80004CC8_58C8();
	func_80004D38_5938();

	guPerspective((Mtx*)D_8005BB38, &perspNorm, (f32)((FrontendCamState*)D_800D7A18)->unk3A, D_800D7974, D_800D8510,
				  D_800AED68_7F218, 1.0f);
	gSPPerspNormalize(D_8005BB2C++, perspNorm);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

	D_8005BB38 += 0x40;

	guLookAt((Mtx*)D_8005BB38,
			 ((FrontendCamState*)D_800D7A18)->unk10.x,
			 ((FrontendCamState*)D_800D7A18)->unk10.y,
			 ((FrontendCamState*)D_800D7A18)->unk10.z,
			 ((FrontendCamState*)D_800D7A18)->unk1C.x,
			 ((FrontendCamState*)D_800D7A18)->unk1C.y,
			 ((FrontendCamState*)D_800D7A18)->unk1C.z,
			 ((FrontendCamState*)D_800D7A18)->unk28.x,
			 ((FrontendCamState*)D_800D7A18)->unk28.y,
			 ((FrontendCamState*)D_800D7A18)->unk28.z);

	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
	D_8005BB38 += 0x40;
	gSPMatrix(D_8005BB2C++, (u32)&D_800AA648_7AAF8, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, -1);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_SHADING_SMOOTH);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_LINE, G_RM_AA_ZB_XLU_LINE2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPPipeSync(D_8005BB2C++);

	for (i = 0; i < 0x96; i++) {
		if (D_800DE130[i].unk0 == 1) {
			func_80086528_569D8((u8)i);
		} else if (D_800DE130[i].unk0 == 0xA) {
			func_8008C8E0_5CD90();
		}
	}

	gDPPipeSync(D_8005BB2C++);
}
