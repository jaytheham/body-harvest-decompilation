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
	s32 sp0;

	sp0 = arg0 &= 0xFF;
	arg1 &= 0xFF;

	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((D_1009C70 + (arg1 << 7)) & 0x1FFFFFFF));

	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
		G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);

	gDPLoadSync(D_8005BB2C++);

	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);

	gDPPipeSync(D_8005BB2C++);

	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
		G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);

	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 15 << G_TEXTURE_IMAGE_FRAC, 15 << G_TEXTURE_IMAGE_FRAC);

	gSPTextureRectangle(D_8005BB2C++, sp0 * 4, 0x318, (arg0 + 0xB) * 4, 0x344, G_TX_RENDERTILE, 0, 0, 0x0600, 0x0600);

	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/173B60/func_8008BB6C_173C2C.s")
#endif

#ifdef NON_MATCHING
void func_8008BD18_173DD8(s32 arg0, s16 arg1, f32 arg2, s32 arg3, void *arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
	f32 var_f14;
	s16 temp_t1;
	s16 temp_t3;
	s16 temp_v0;
	s32 sp20;
	UnkHudVtx *temp_a0;
	UnkHudVtx *temp_a1;
	UnkHudVtx *temp_a3;
	UnkHudVtx *temp_t1_2;
	UnkHudVtx *temp_a0_2;
	UnkHudVtx *temp_a1_2;
	UnkHudVtx *temp_a3_2;
	UnkHudVtx *temp_t1_3;
	u32 temp_v0_8;
	u32 temp_v0_9;
	f64 temp_f2;
	f64 temp_f2_2;
	f64 var_f0;
	f64 var_f0_2;
	s32 temp_t6;
	s32 temp_t7_3;
	s8 var_v0_2;
	s8 var_v0_3;
	s8 var_v0_4;
	s8 var_v0_5;
	UnkHudVtx *temp_t7;
	UnkHudVtx *temp_t9;
	UnkHudVtx *temp_t7_2;

	temp_t7 = D_8005BB34 + 1;
	D_8005BB34 = temp_t7;
	temp_t9 = temp_t7 + 1;
	D_8005BB34 = temp_t9;
	temp_t7_2 = temp_t9 + 1;
	D_8005BB34 = temp_t7_2;
	D_8005BB34 = temp_t7_2 + 1;

	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x3C, 0x50, 0x78, 0xC8);

	var_f14 = arg2;
	if (func_80004498_5098(arg2) == 0) {
		var_f14 = 0.0f;
	}

	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);

	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);

	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);

	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);

	gDPPipeSync(D_8005BB2C++);

	if (arg3 != 0) {
		temp_v0 = D_800FCF22;
	} else {
		temp_v0 = D_800FCF26;
	}

	D_80052B40.unk0 = 0;
	temp_t1 = arg1 + temp_v0;
	D_80052B40.unk2 = temp_t1;
	D_80052B40.unk4 = 0;
	D_80052B50.unk0 = 0x100;
	D_80052B50.unk2 = 0x100;
	D_80052B50.unk4 = 0;
	sp20 = temp_t1;

	func_800039D0_45D0(&D_80052B40, 0, &D_80052B50, D_8005BB38);

	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	temp_t3 = arg0 + 7;
	D_8005BB38 += 0x40;
	func_800092B8_9EB8(((temp_t3 - arg8) - 0xF) * 4, (temp_t1 - 8) * 4, (temp_t3 + 4) * 4, (temp_t1 + 6) * 4, 3);

	if (arg5 != 0) {
		temp_t1_2 = D_8005BB34;
		temp_a1 = temp_t1_2 + 1;
		temp_a0 = temp_a1 + 1;
		temp_a3 = temp_a0 + 1;
		D_8005BB34 = temp_a3 + 1;

		temp_t1_2->unk0 = temp_t3 - 0x2F;
		temp_a3->unk0 = temp_t3 - 0x2F;

		temp_a1->unk0 = (s16) ((f32) (temp_t3 - 0x30) + ((f32) arg8 * var_f14) + 1.0f);
		temp_a1->unk2 = 3;
		temp_a0->unk0 = temp_a1->unk0;
		temp_t1_2->unk2 = temp_a1->unk2;

		temp_a0->unk2 = -4;
		temp_a3->unk2 = temp_a0->unk2;

		temp_a0->unk4 = -1;
		temp_a3->unk4 = temp_a0->unk4;
		temp_a1->unk4 = temp_a0->unk4;
		temp_t1_2->unk4 = temp_a0->unk4;

		if (arg5 == 2) {
			temp_a1->unkC = 0xFF;
			temp_a0->unkC = 0xFF;
			temp_a3->unkC = 0xFF;
			temp_t1_2->unkC = 0xFF;

			temp_t7_3 = arg7 << 5;
			temp_f2 = ((f64) (1.0f - var_f14) * D_800A5700_18D7C0) + (f64) temp_t7_3;
			if (D_800A56F8_18D7B8 < temp_f2) {
				var_f0 = D_800A56F8_18D7B8;
			} else {
				var_f0 = temp_f2;
			}
			temp_v0_8 = (u32) var_f0;
			temp_a1->unkD = (s8) temp_v0_8;
			temp_a0->unkD = (s8) temp_v0_8;
			temp_a3->unkD = (s8) temp_v0_8;
			temp_t1_2->unkD = (s8) temp_v0_8;

			if (temp_t7_3 >= 0x100) {
				var_v0_2 = -1;
			} else {
				var_v0_2 = temp_t7_3;
			}
			temp_a1->unkE = var_v0_2;
			temp_a0->unkE = var_v0_2;
			temp_a3->unkE = var_v0_2;
			temp_t1_2->unkE = var_v0_2;

			temp_a1->unkA = 0;
			temp_a3->unk8 = temp_a1->unkA;
			temp_t1_2->unk8 = temp_a1->unkA;
			temp_t1_2->unkA = temp_a1->unkA;
			temp_a0->unkA = 0x400;
			temp_a3->unkA = temp_a0->unkA;

			temp_a1->unk8 = (s16) ((f32) (arg8 * D_80047712) * var_f14);
			temp_a0->unk8 = temp_a1->unk8;
		} else {
			temp_a3->unkC = 0xFF;
			temp_t1_2->unkC = 0xFF;

			temp_t6 = arg7 << 5;
			if (temp_t6 >= 0x100) {
				var_v0_3 = -1;
			} else {
				var_v0_3 = temp_t6;
			}
			temp_a3->unkD = var_v0_3;
			temp_t1_2->unkD = var_v0_3;

			if (temp_t6 >= 0x100) {
				var_v0_4 = -1;
			} else {
				var_v0_4 = temp_t6;
			}
			temp_a3->unkE = var_v0_4;
			temp_t1_2->unkE = var_v0_4;

			temp_a1->unkC = 0xFF;
			temp_a0->unkC = 0xFF;

			temp_f2_2 = ((f64) var_f14 * D_800A5710_18D7D0) + (f64) temp_t6;
			if (D_800A5708_18D7C8 < temp_f2_2) {
				var_f0_2 = D_800A5708_18D7C8;
			} else {
				var_f0_2 = temp_f2_2;
			}
			temp_v0_9 = (u32) var_f0_2;
			temp_a1->unkD = (s8) temp_v0_9;
			temp_a0->unkD = (s8) temp_v0_9;

			if (temp_t6 >= 0x100) {
				var_v0_5 = -1;
			} else {
				var_v0_5 = temp_t6;
			}
			temp_a1->unkE = var_v0_5;
			temp_a0->unkE = var_v0_5;

			temp_a1->unkA = 0;
			temp_a3->unk8 = temp_a1->unkA;
			temp_t1_2->unk8 = temp_a1->unkA;
			temp_t1_2->unkA = temp_a1->unkA;
			temp_a0->unkA = 0x400;
			temp_a3->unkA = temp_a0->unkA;

			temp_a1->unk8 = (s16) ((f32) (D_80047716 << 0xA) * var_f14);
			temp_a0->unk8 = temp_a1->unk8;
		}

		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);

		gDPSetRenderMode(D_8005BB2C++, G_RM_OPA_SURF, G_RM_OPA_SURF2);

		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_800A41B0_18C270);

		gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 3, G_TX_NOLOD,
			G_TX_NOMIRROR | G_TX_WRAP, 3, G_TX_NOLOD);

		gDPLoadSync(D_8005BB2C++);

		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 31, 2048);

		gDPPipeSync(D_8005BB2C++);

		gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 1, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 3, G_TX_NOLOD,
			G_TX_NOMIRROR | G_TX_WRAP, 3, G_TX_NOLOD);

		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 7 << G_TEXTURE_IMAGE_FRAC, 7 << G_TEXTURE_IMAGE_FRAC);

		gDPSetTextureFilter(D_8005BB2C++, G_TF_POINT);

		gDPSetCombineMode(D_8005BB2C++, G_CC_SHADEDECALA, G_CC_SHADEDECALA);

		gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK);

		gSPVertex(D_8005BB2C++, (Vtx *)((D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);

		gDPPipeSync(D_8005BB2C++);

		gSP1Quadrangle(D_8005BB2C++, 0, 1, 2, 3, 0);

		gDPPipeSync(D_8005BB2C++);

		gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	}

	if (arg4 != 0) {
		temp_a3_2 = D_8005BB34;
		temp_a0_2 = temp_a3_2 + 1;
		temp_t1_3 = temp_a0_2 + 1;
		temp_a1_2 = temp_t1_3 + 1;
		D_8005BB34 = temp_a1_2 + 1;

		temp_a3_2->unk0 = temp_t3 - 0x30;
		temp_t1_3->unk0 = temp_t3 - 0x30;
		temp_a0_2->unk0 = temp_t3 - 0x42;

		temp_a1_2->unk0 = temp_t3 - 0x42;
		temp_a1_2->unk2 = 9;
		temp_t1_3->unk2 = temp_a1_2->unk2;

		temp_a0_2->unk2 = -9;
		temp_a3_2->unk2 = temp_a0_2->unk2;

		temp_a0_2->unk4 = -1;
		temp_a3_2->unk4 = temp_a0_2->unk4;
		temp_a1_2->unk4 = temp_a0_2->unk4;
		temp_t1_3->unk4 = temp_a0_2->unk4;

		temp_a3_2->unk8 = (arg6 * 0x30) + 0x600;
		temp_t1_3->unk8 = temp_a3_2->unk8;
		temp_a1_2->unkA = temp_a3_2->unk8;
		temp_t1_3->unkA = temp_a3_2->unk8;

		temp_a0_2->unk8 = -arg6 * 0x30;
		temp_a1_2->unk8 = temp_a0_2->unk8;
		temp_a0_2->unkA = temp_a0_2->unk8;
		temp_a3_2->unkA = temp_a0_2->unk8;

		temp_a0_2->unkC = 0xB9;
		temp_a3_2->unkC = 0xB9;
		temp_a1_2->unkC = 0xB9;
		temp_t1_3->unkC = 0xB9;

		temp_a0_2->unkD = 0xFF;
		temp_a3_2->unkD = 0xFF;
		temp_a1_2->unkD = 0xFF;
		temp_t1_3->unkD = 0xFF;

		temp_a0_2->unkE = 0xFF;
		temp_a3_2->unkE = 0xFF;
		temp_a1_2->unkE = 0xFF;
		temp_t1_3->unkE = 0xFF;

		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);

		gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);

		gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);

		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);

		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, arg4);

		gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);

		gDPLoadSync(D_8005BB2C++);

		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 287, 683);

		gDPPipeSync(D_8005BB2C++);

		gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 3, 0, G_TX_RENDERTILE, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);

		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 23 << G_TEXTURE_IMAGE_FRAC, 23 << G_TEXTURE_IMAGE_FRAC);

		gDPSetCombineLERP(D_8005BB2C++, TEXEL0, 0, SHADE, 1, 0, PRIMITIVE, 0, ENVIRONMENT, TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0);

		gSPVertex(D_8005BB2C++, (Vtx *)((D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);

		gSP2Triangles(D_8005BB2C++, 0, 1, 2, 0, 3, 1, 2, 0);

		gDPPipeSync(D_8005BB2C++);

		gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);

		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	}

	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/173B60/func_8008BD18_173DD8.s")
#endif

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

	if ((*(u16 *)&D_80257A3A[vehicleInstances[0].unk1A * 0x70] >> 2) >= vehicleInstances[0].unk1C) {
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
	u8 slots[9];
	u8 slotValue;
	s32 i;
	s32 x;
	s32 y;
	s32 texIndex;
	s8 stickX;
	s8 stickY;
	s16 fade;

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

	stickX = currentControllerStates[CONTROLLER_TWO].stick_x;
	if ((ABS(stickX) < 0x14) && (ABS(currentControllerStates[CONTROLLER_TWO].stick_y) < 0x14)) {
		D_800FCF20 = 1;
	}

	if (D_800FCF20 == 1) {
		if ((stickX < -0x1E) && (D_800A4340_18C400 >= 4) && (slots[D_800A4340_18C400 - 1] != 0xF)) {
			D_800A4340_18C400--;
			D_800FCF20 = 0;
			func_800153D8_15FD8(0xC7);
			stickX = currentControllerStates[CONTROLLER_TWO].stick_x;
		}

		if ((stickX >= 0x1F) && (D_800A4340_18C400 < 5) && (slots[D_800A4340_18C400 + 1] != 0xF) && (D_800A4348_18C408 == 0)) {
			D_800A4340_18C400++;
			D_800FCF20 = 0;
			func_800153D8_15FD8(0xC7);
		}

		stickY = currentControllerStates[CONTROLLER_TWO].stick_y;
		if ((stickY >= 0x1F) && (D_800A4340_18C400 >= 2) && (slots[D_800A4340_18C400 - 3] != 0xF)) {
			D_800A4340_18C400 -= 3;
			D_800FCF20 = 0;
			func_800153D8_15FD8(0xC7);
			stickY = currentControllerStates[CONTROLLER_TWO].stick_y;
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
			D_800A4344_18C404 = slotValue;
			switch (D_800313D0_31FD0) {
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
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BOTH | G_LIGHTING);
	gSPPerspNormalize(D_8005BB2C++, 0xFFFF);
	gSPMatrix(D_8005BB2C++, &D_800FCAD8, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
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
	gDPPipeSync(D_8005BB2C++);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/173B60/func_8008D900_1759C0.s")
#endif

void func_8008DC44_175D04(s32 arg0) {
	switch (D_800313D0_31FD0) {
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
	switch (D_800313D0_31FD0) {
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
