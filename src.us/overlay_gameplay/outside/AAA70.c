#include <ultra64.h>
#include "common.h"

u32 D_8013D540_14C4F0[16] = {
	0xFFFFFFFF, 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFF00,
	0xFFFFFFFF, 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFF00,
	0xFFFFFFFF, 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFF00,
	0xFFFFFFFF, 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFF00,
};

void func_8009BAC0_AAA70(void)
{
  s32 i;
  s32 j;
  D_8014EDD8 = D_8014EDDC = D_8014F20C = 0;
  D_8014EDDA = 0x40;
  D_8014F1E4 = 160.0f;
  D_8014F1E8 = 250.0f;
  D_8014F1EC = 160.0f;
  D_8014F1F0 = 250.0f;
  D_8014F1F4 = 0x80;
  D_8014F1F6 = 0;
  D_8014F1FA = 0x80;
	D_8014F1F8 = 0;
  D_8014ED42 = D_8014ED44 = D_8014ED46 = D_8014ED48 = D_8014ED4A = 0;
  D_8014ED4C = D_8014ED4E = D_8014ED50 = D_8014ED52 = 0;
  i = 0x20;
  while (i--) {
	  j = 8;
	  while (j--) {
		  D_8014F210[i][j] = 0;
	  }
  }
  D_8014F610 = 0;
  D_8014F202 = 0;
  D_8014F203 = 0;
  D_8014F204 = (s32) D_8004816A;
  D_8014F208 = -1;
  func_80139B34_148AE4();
}

// https://decomp.me/scratch/HfYzB
// CURRENT(15)
#ifdef NON_MATCHING
s32 func_8009BC48_AABF8(s32 arg0, s32 arg1, s32 arg2)
{
	s32 var_v1;
  s32 new_var;
  s32 temp_t0;
  s32 temp_v1;
	temp_v1 = arg0 - 0x10;
	temp_t0 = arg1 - 0x10;
	new_var = temp_t0;
	if (arg0 >= 0 && temp_v1 < 0x10 && new_var >= -0x10 && temp_t0 < 0x10)
  {
		var_v1 = 0x100;
		if (arg2 != 0)
		{
			var_v1 = 0x80;
		}
		if (((temp_v1 * temp_v1) + (temp_t0 * temp_t0)) < var_v1)
		{
			if (arg0) { }
			return 1;
		}
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009BC48_AABF8.s")
#endif

s32 func_8009BCC0_AAC70(s32 arg0, s32 arg1, u8 arg2) {
	u8 *ptr;

	if (func_8009BC48_AABF8(arg0, arg1, 0) != 0) {
		if (arg0 & 1) {
			if (D_8014EDD8 != 0) {
				return 1;
			}
			ptr = &D_8014EDE0[(arg1 << 4) + arg0 / 2];
			*ptr &= 0xF0;
			*ptr |= arg2;
			return 1;
		}
		if (D_8014EDD8 != 0) {
			return 1;
		}
		ptr = &D_8014EDE0[(arg1 << 4) + arg0 / 2];
		*ptr &= 0xF;
		*ptr |= (arg2 << 4);
		return 1;
	}
	return 0;
}

#ifdef NON_MATCHING
/* CURRENT(4249) */
void func_8009BDB8_AAD68(s32 arg0, s32 arg1) {
	Gfx *dl;
	Gfx *spC;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s32 pad6;
	s32 pad7;
	volatile s32 sp0;

	sp0 = arg0 &= 0xFF;
	arg1 &= 0xFF;

	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (u32)(D_1009C70 + (arg1 << 7)) & 0x1FFFFFFF);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (15 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));

	gSPTextureRectangle(D_8005BB2C++, (s32)sp0 * 4, 0xA0, (arg0 + 0x15) * 4, 0xF4, G_TX_RENDERTILE, 0, 0, 0x0300, 0x0300);

	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009BDB8_AAD68.s")
#endif

// CURRENT(920)
#ifdef NON_MATCHING
void func_8009BF64_AAF14(u16 arg0) {
	u8 sp47;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s32 pad6;
	s32 pad7;
	s32 sp1C;
	s32 sp18;
	s32 temp_t6;
	s32 var_a3;
	u16 *arg0Ptr;
	Gfx *dl;

	arg0Ptr = &arg0;
	sp47 = (u8) ((s32) *arg0Ptr / 60);
	arg0 = (u16) ((s32) *arg0Ptr % 60);

	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x32, 0x5A, 0xE6, 0xFF);
	gDPPipeSync(D_8005BB2C++);

	func_8009BDB8_AAD68(0x1E, sp47);
	if ((u32) ((u32) D_80052A8C % 20U) < 0xAU) {
		func_8009BDB8_AAD68(0x29, 0xAU);
	}

	if ((s32) arg0 < 0xA) {
		sp1C = (s32) arg0;
		func_8009BDB8_AAD68(0x32, 0U);
		var_a3 = ((s32) sp1C % 10) & 0xFF;
	} else {
		temp_t6 = ((s32) arg0 % 10) & 0xFF;
		sp18 = temp_t6;
		func_8009BDB8_AAD68(0x32, ((s32) (arg0 - temp_t6) / 10) & 0xFF);
		var_a3 = sp18;
	}

	func_8009BDB8_AAD68(0x41, var_a3 & 0xFF);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009BF64_AAF14.s")
#endif

// drawWaypointMarker ?
#ifdef NON_MATCHING
// CURRENT(1310)
void func_8009C1D8_AB188(s16 arg0, s16 arg1, s32 arg2) {
	s16 sp36;
	s16 sp34;
	s32 sp18;
	s32 pad0;
	s32 pad1;
	Unk80052B40 *var_a1_2;
	s16 temp_t8;
	s16 var_v1;
	Gfx *dl;

	temp_t8 = func_80003824_4424((f32)(D_80052B34->unk4 - arg1), (f32)(D_80052B34->unk0 - arg0)) - D_80047950;
	sp18 = temp_t8 & 0xFFFF;
	sp36 = temp_t8;
	sp34 = (s16)(s32)((((f64)(f32)sins(sp18) / 32768.0) * D_801426C0_151670) + (f64)(D_80068084 >> 1));
	var_v1 = (s16)(s32)((((f64)(f32)coss(sp18) / 32768.0) * D_801426C8_151678) + (f64)(D_80068088 >> 1));
	if (sp34 >= 0x118) {
		sp34 = 0x117;
	}
	if (sp34 < 0x1C) {
		sp34 = 0x1C;
	}
	if (var_v1 < 0x1A) {
		var_v1 = 0x1A;
	}
	if (var_v1 >= 0xCF) {
		var_v1 = 0xCE;
	}
	D_80052B40.unk0 = sp34;
	D_80052B40.unk2 = var_v1;
	D_80052B40.unk4 = -1;
	if (arg2 != 0) {
		D_80052B48.unk0 = 0;
		D_80052B48.unk4 = 0;
		D_80052B48.unk2 = (s16)(0x8000 - sp36);
	}
	if (arg2 != 0) {
		var_a1_2 = &D_80052B48;
	} else {
		var_a1_2 = NULL;
	}
	func_800039D0_45D0(&D_80052B40, var_a1_2, &D_8013D588_14C538, D_8005BB38);
	gSPMatrix(D_8005BB2C++, (s32)(D_8005BB38 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	gSPVertex(D_8005BB2C++, (s32)((s32)&D_8013D5E8_14C598 & 0x1FFFFFFF), 4, 0);
	gSP1Quadrangle(D_8005BB2C++, 1, 0, 2, 3, 0);
	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009C1D8_AB188.s")
#endif

void func_8009C458_AB408(void) {
	D_8014F1F6 = 0x10;
	D_8014F1F8 = 0x10;
}

void func_8009C470_AB420(void) {
	if (D_80052B34->unk1A != 0) {
		D_8014F1F6 = -0x10;
	}
	D_8014F1F8 = -0x10;
}

void func_8009C4A0_AB450(void) {
	D_8014F1F6 = 0x10;
}

void func_8009C4B0_AB460(void) {
	if (D_80052B34->unk1A != 0) {
		D_8014F1F6 = -0x10;
	}
}

void func_8009C4D8_AB488(void) {
	D_8014F1F8 = 0x10;
}

void func_8009C4E8_AB498(void) {
	D_8014F1F8 = -0x10;
}

// CURRENT(1737)
#ifdef NON_MATCHING
void func_8009C4F8_AB4A8(s32 arg0, s32 arg1) {
	Gfx *dl;
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
	volatile s32 x0;

	arg0 &= 0xFF;
	x0 = arg0;
	arg1 &= 0xFF;

	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (u32)(D_1009C70 + (arg1 << 7)) & 0x1FFFFFFF);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (15 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));
	gSPTextureRectangle(D_8005BB2C++,
		x0 * 4,
		(D_80068088 - 0x24) * 4,
		(arg0 + 0xB) * 4,
		(D_80068088 - 0x19) * 4,
		G_TX_RENDERTILE,
		0,
		0,
		0x0600,
		0x0600);
	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009C4F8_AB4A8.s")
#endif

// Additional params
// sp10 Pointer to icon
// sp14 Type, 2=Vertical, 3=Horizontal ...
// sp18 Values > 0 scale icon smaller
// sp1c Alters color of the bar - used to make it flash
// sp20 Length of the bar background
// drawHudBarWithIcon
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009C6CC_AB67C.s")

void func_8009D900_AC8B0(s16 *arg0, f32 *arg1, s16 arg2) {
	f32 temp_f0;
	f32 temp_f2;

	temp_f0 = (f32)*arg0 / (f32)arg2;
	temp_f2 = (f32)*arg0;
	if ((f64) temp_f0 > 1.0) {
		*arg0 = (s16) (s32) (temp_f2 / temp_f0);
		*arg1 /= temp_f0;
	}
}

// Draws Health/Human/vehicle/+more bars on HUD
// CURRENT(19959)
#ifdef NON_MATCHING
void func_8009D96C_AC91C(void) {
	AlienInstance *alien;
	VehicleInstance *vehicle;
	BuildingInstance *building;
	f32 sp98;
	s32 sp8C;
	s16 sp8A;
	f32 sp84;
	s16 sp82;
	s32 sp7C;
	s16 sp76;
	s16 sp74;
	s16 sp72;
	s16 varV0;

	alien = D_80158FEC;

	guOrtho(&D_8014ED98, 0.0f, (f32) D_80068084, (f32) D_80068088, 0.0f, -1000.0f, 1000.0f, 1.0f);

	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BOTH | G_LIGHTING);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);

	func_800039D0_45D0(0, 0, 0, D_8005BB38);

	gSPMatrix(D_8005BB2C++, (u32) D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	if (D_8014F1F6 != 0) {
		varV0 = D_8014F1F4 + D_8014F1F6;
		D_8014F1F4 = varV0;
		if (varV0 >= 0x81) {
			D_8014F1F4 = 0x80;
			D_8014F1F6 = 0;
			varV0 = D_8014F1F4;
		}
		if (varV0 < 0) {
			D_8014F1F4 = 0;
			D_8014F1F6 = 0;
		}
	}

	if (D_8014F1F8 != 0) {
		varV0 = D_8014F1FA + D_8014F1F8;
		D_8014F1FA = varV0;
		if (varV0 >= 0x81) {
			D_8014F1FA = 0x80;
			D_8014F1F8 = 0;
			varV0 = D_8014F1FA;
		}
		if (varV0 < 0) {
			D_8014F1FA = 0;
			D_8014F1F8 = 0;
		}
	}

	D_8014F202 = 0;

	if (gameplayMode != 0xC) {
		if (alien != NULL) {
			if (alien->specIndex != 0) {
				u16 tempU16;

				if (alien->unk20 & 0x100000) {
					sp98 = 0.0f;
				} else {
					sp98 = (f32) ((f64) (f32) alien->hitPoints / 100.0);
				}

				tempU16 = *(u16 *) &D_802566BA[alien->specIndex * 0x68];
				sp8A = (s16) (((f64) tempU16 / 100.0) * 50.0);
				func_8009D900_AC8B0(&sp8A, &sp98, 0xB4);

				tempU16 = *(u16 *) &D_802566BA[alien->specIndex * 0x68];
				D_8014F202 = 3;
				sp8C = (s32) &D_8025EC40;
				sp7C = (s32) alien;
				sp82 = D_8014ED44;
				sp84 = (f32) alien->hitPoints / (f32) tempU16;

				if (D_80158FF0 != 0) {
					D_8014F202 = 4;
				}
			}
		} else if (currentControllerStates[CONTROLLER_ONE].button & 0x10) {
			if (D_80158FE4 != NULL) {
				u16 tempU16;

				vehicle = D_80158FE4;
				if ((currentLevel != 1) || (vehicle->unk1A != 0x12)) {
					sp98 = (f32) ((f64) (f32) vehicle->unk1C / 100.0);
					tempU16 = *(u16 *) &D_80257A3A[vehicle->unk1A * 0x70];
					sp8A = (s16) (((f64) tempU16 / 100.0) * 50.0);
					func_8009D900_AC8B0(&sp8A, &sp98, 0xB4);

					tempU16 = *(u16 *) &D_80257A3A[vehicle->unk1A * 0x70];
					sp8C = (s32) &D_8025EE80;
					D_8014F202 = 2;
					sp7C = (s32) vehicle;
					sp82 = D_8014ED4A;
					sp84 = (f32) vehicle->unk1C / (f32) tempU16;
				}
			} else if (D_80158FE8 != NULL) {
				s8 tempA3;
				s8 varV1_2;

				building = D_80158FE8;
				varV1_2 = *(s8 *) &building->hitPoints;
				tempA3 = (s8) D_802590A9[building->buildingType << 5];
				if (currentLevel == 5) {
					varV1_2 = (s8) ((s16) varV1_2 / 3);
				}

				sp98 = (f32) ((f64) (f32) varV1_2 * 0.0625);
				sp8A = (s16) (((f64) (f32) tempA3 / 100.0) * 312.5);
				func_8009D900_AC8B0(&sp8A, &sp98, 0xB4);

				D_8014F202 = 1;
				sp8C = (s32) &D_8025F0C0;
				sp82 = D_8014ED48;
				sp7C = (s32) building;
				sp84 = (f32) varV1_2 / (f32) tempA3;
			}
		}
	}

	if ((u8) D_8014F202 == 0) {
		sp82 = 0;
		sp8A = 0;
		sp7C = 0;
		sp84 = 0.0f;
		sp8C = D_8013D5E0_14C590;
	}

	D_8013D5E0_14C590 = sp8C;
	func_8009E994_AD944(sp84, sp8C, sp82, sp8A, sp7C);
	D_8014F203 = D_8014F202;

	if (D_8014F1FA != 0x80) {
		s16 tempA0;
		s32 varT1;

		tempA0 = 5 - (D_8015931A / 200);

		if (currentLevel == 5) {
			varT1 = 0;
		} else {
			varT1 = -0x14;
		}

		if ((D_80052B34->unk1C > 0) && (tempA0 != 0)) {
			varV0 = 7 - ((D_80052A8C / (u32) tempA0) & 7);
			if (varV0 >= 5) {
				varV0 -= 4;
			}
			if (D_8015931A == 0) {
				varV0 = 0;
			}

			if ((D_8015931A > 0) && (D_8015931A < 0xC9)) {
				D_8014ED4C = D_8014ED42;
				func_8009C6CC_AB67C(0x50, (s16) ((D_80068088 + varT1) - 0x1E), (f32) (0xC8 - D_8015931A) / 200.0f, 0,
					(s32) &D_8025F540, 4, varV0, D_8014ED4C, 0x30);
			} else {
				u16 tempU16;

				tempU16 = *(u16 *) &D_80257A3A[D_8004DCEA * 0x70];
				if (D_8004DCEC >= ((s32) tempU16 >> 2)) {
					D_8014ED4C = D_8014ED42;
				}
				func_8009C6CC_AB67C(0x50, (s16) ((D_80068088 + varT1) - 0x1E), (f32) D_8004DCEC / (f32) tempU16, 0,
					(s32) &D_8025F540, 1, varV0, D_8014ED4C, 0x30);
			}
		} else {
			func_8009C6CC_AB67C(0x50, (s16) ((D_80068088 + varT1) - 0x1E), 0.0f, 0, (s32) &D_8025F540, 0, 0, 0, 0x30);
		}

		if (currentLevel < 5) {
			if ((D_8014F204 != D_8004816A) && (((u8) D_800314C4 - 3) >= D_8004816A)) {
				D_8014ED52 = 8;
			}

			if ((s32) (u8) D_800314C4 < D_8004816A) {
				D_8014F204 = (u8) D_800314C4;
			} else {
				D_8014F204 = D_8004816A;
			}

			func_8009C6CC_AB67C(0x50, (s16) (D_80068088 - 0x1E), (f32) D_8014F204 / (f32) D_800314C4, 0,
				(s32) &D_8025F780, 3, 0, D_8014ED52, 0x30);

			D_8014F204 = D_8004816A;
			if ((D_80052A8C % 10) == 0) {
				D_8013D5DC_14C58C = func_800880B8_97068();
			}
		}
	}

	if (D_8014F1F4 != 0x80) {
		s8 varV1_2;
		u16 tempU16;

		vehicle = D_80052B34;
		varV1_2 = vehicle->unk1A;

		if (varV1_2 != 0) {
			if (D_80052AC8 != 2) {
				func_8009C4B0_AB460();
				vehicle = D_80052B34;
				varV1_2 = vehicle->unk1A;
			}

			sp76 = vehicle->unk3C;
			D_8014F69C = sp76;
			sp74 = vehicle->unk1C;
			tempU16 = *(u16 *) &D_80257A3A[varV1_2 * 0x70];
			sp72 = (s16) tempU16;

			D_8014F69E = sp74;
			D_8014F6A0 = sp72;
		} else {
			func_8009C4A0_AB450();
			sp76 = D_8014F69C;
			sp74 = D_8014F69E;
			sp72 = D_8014F6A0;
		}

		sp98 = (f32) ((f64) (f32) sp74 / 100.0);
		sp8A = (s16) (((f64) (f32) sp72 / 100.0) * 48.0);
		func_8009D900_AC8B0(&sp8A, &sp98, 0x30);

		if (sp74 >= (sp72 >> 2)) {
			D_8014ED4E = D_8014ED46;
		}

			func_8009C6CC_AB67C((s16) (D_80068084 - 0x20), (s16) (D_80068088 - 0x1E), (f32) sp74 / (f32) sp72, 1,
				(s32) &D_8025EE80, 1, 0, D_8014ED4E, sp8A);

		if (D_80052B34->unk1A != 0x13) {
			func_8009C6CC_AB67C((s16) (D_80068084 - 0x20), (s16) (D_80068088 - 0x32), (f32) ((f64) (f32) sp76 / 100.0), 1,
				(s32) &D_8025D800, 1, 0, D_8014ED50, 0x30);
		}
	}

	if (D_8014ED42 > 0) {
		D_8014ED42--;
	}
	if (D_8014ED46 > 0) {
		D_8014ED46--;
	}
	if (D_8014ED44 > 0) {
		D_8014ED44--;
	}
	if (D_8014ED4A > 0) {
		D_8014ED4A--;
	}
	if (D_8014ED48 > 0) {
		D_8014ED48--;
	}

	if (sp76 < 0x13C1) {
		D_8014ED50 = 8 - (D_80052A8C & 7);
	} else {
		D_8014ED50 = 0;
	}

	if (((u8) D_800314C4 - 3) < D_8004816A) {
		D_8014ED52 = 8 - (D_80052A8C & 7);
	} else {
		D_8014ED52 = 0;
	}

	{
		u16 tempU16;

		tempU16 = *(u16 *) &D_80257A3A[D_8004DCEA * 0x70];
		if (D_8004DCEC < ((s32) tempU16 >> 2)) {
			D_8014ED4C = 8 - (D_80052A8C & 7);
		} else {
			D_8014ED4C = 0;
		}
	}

	if (sp74 < (sp72 >> 2)) {
		D_8014ED4E = 8 - (D_80052A8C & 7);
	} else {
		D_8014ED4E = 0;
	}

	if (D_8013D5DC_14C58C != 0) {
		D_8014ED52 = 8 - (D_80052A8C & 7);
	} else if (D_8014ED52 > 0) {
		D_8014ED52--;
	}

	drawText(&D_80142510_1514C0, 0, 0xFF);

	if ((D_8006C6C6 > 0) && (func_80018AC8_196C8() == 0)) {
		s16 varT2;

		if ((D_8006C6C4 - 8) < D_8006C6C6) {
			varT2 = D_8006C6C4 - D_8006C6C6;
		} else {
			varT2 = 8;
			if (D_8006C6C6 < 8) {
				varT2 = D_8006C6C6;
			}
		}

		gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x8C, 0x96, 0xF0, 0xAA);

		func_800092B8_9EB8(((D_80068084 >> 1) - 0x2A) * 4, ((0x30 - (varT2 * 6)) + 0xAF) * 4,
			((D_80068084 >> 1) + 0x2C) * 4, ((0x30 - (varT2 * 6)) + 0xD2) * 4, 0);
	}

	gDPPipeSync(D_8005BB2C++);
	gDPTileSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009D96C_AC91C.s")
#endif

// drawAlienHealth
// CURRENT(10486)
#ifdef NON_MATCHING
void func_8009E994_AD944(f32 arg0, s32 arg1, s32 arg2, s16 arg3, s32 arg4) {
	f32 alpha;
	f32 interp;
	s32 width;
	s32 state;
	s32 mode;

	alpha = arg0;
	width = arg3;

	if ((width != 0) && (func_80018AA0_196A0() == 0) && (func_8013B8C8_14A878() == 0)) {
		goto block_5c;
	}

	interp = D_8013D668_14C618;
	if (interp > 0.0f) {
		if ((f64)interp < D_80142728_1516D8) {
			interp = 0.0f;
		} else {
			interp = (f32)((f64)interp - D_80142728_1516D8);
		}
	}

	if (arg1 != 0) {
		width = D_8014F6C0;
		alpha = D_8014F6C4;
	} else {
		alpha = 1.0f;
		width = 1;
	}
	goto store_results;

block_5c:
	state = (u8)D_8014F202;
	if ((state == 4) && (D_80052A8C & 4)) {
		return;
	}

	mode = (u8)D_8014F203;
	if ((state != mode) || (D_8014F6B4 != arg4)) {
		if (mode == 0) {
			D_8014F6A4 = 0.0f;
			D_8014F6A8 = 0;
			D_8013D668_14C618 = 0.0f;
		} else {
			D_8014F6A4 = D_8014F6B0;
			D_8014F6A8 = D_8014F6AC;
			D_8013D668_14C618 = 0.0f;
		}
	}

	interp = D_8013D668_14C618;
	if ((f64)interp < 1.0) {
		D_8014F6B0 = ((alpha - D_8014F6A4) * interp) + D_8014F6A4;
		interp = (f32)((f64)interp + D_80142730_1516E0);
		D_8014F6AC = D_8014F6A8 + (s16)(interp * (width - D_8014F6A8));
	} else {
		interp = 1.0f;
		D_8014F6B0 = alpha;
		D_8014F6AC = width;
	}

store_results:
	D_8014F6C4 = alpha;
	D_8014F6C0 = width;
	D_8013D668_14C618 = interp;

	if (interp >= 0.0f) {
		if (((u8)D_8014F202 != 0) || ((f64)interp < 1.0)) {
			func_8009C6CC_AB67C((s16)((interp * 64.0f) - 32.0f), 0x8B, alpha, 0, arg1, 2, 0, (s16)arg2, width);
		}
	}

	D_8014F6B4 = arg4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009E994_AD944.s")
#endif

void func_8009EC90_ADC40(s16 arg0, f32 *arg1, f32 *arg2) {
	s32 var_v0;

	if (((arg0 >= 0x2001) && (arg0 < 0x6000)) || ((arg0 < -0x2000) && (arg0 >= -0x5FFF))) {
		if (arg0 > 0) {
			*arg1 = 1.0f;
		} else {
			if (arg0 < 0) {
				var_v0 = -1;
			} else {
				var_v0 = 0;
			}
			*arg1 = (f32) var_v0;
		}
		*arg2 = (f32) (((f64) *arg1 * ((f64) (f32) coss(arg0) / 32768.0)) / ((f64) (f32) sins(arg0) / 32768.0));
		return;
	}
	if (arg0 >= 0) {
		var_v0 = arg0;
	} else {
		var_v0 = -(s32) arg0;
	}
	if (var_v0 < 0x4000) {
		*arg2 = 1.0f;
	} else {
		*arg2 = -1.0f;
	}
	*arg1 = (f32) (((f64) *arg2 * ((f64) (f32) sins(arg0) / 32768.0)) / ((f64) (f32) coss(arg0) / 32768.0));
}

// CURRENT(2811)
#ifdef NON_MATCHING
void func_8009EE30_ADDE0(void)
{
	Gfx *dl;
	s32 var_s0;
	s32 var_s1;
	s32 var_s2;
	s32 var_v1;
	s16 var_s4;
	f32 sp7C;
	f32 sp78;

	var_s4 = *(s16 *)&D_80257A3A[(D_80052B34->unk1A * 0x70) + 2];
	if (var_s4 == 0) {
		return;
	}

	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, SHADE, 0, TEXEL0, 0, 0, 0, 0, SHADE, SHADE, 0, TEXEL0, 0);
	gSPVertex(D_8005BB2C++, (u32) D_8005BB34 & 0x1FFFFFFF, 10, 0);

	D_8005BB34->v.ob[0] = 0;
	D_8005BB34->v.ob[1] = 0;
	D_8005BB34->v.ob[2] = 0;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0x400;
	D_8005BB34->v.cn[0] = 0xFF;
	D_8005BB34->v.cn[1] = 0xA0;
	D_8005BB34->v.cn[2] = 0xA0;
	D_8005BB34->v.cn[3] = 0x80;
	D_8005BB34++;

	var_s2 = 0;
	var_s1 = 0;
	while (var_s1 != 9) {
		if (var_s2 >= 0) {
			var_s0 = var_s2 >> 2;
		} else {
			var_s0 = (var_s2 + 3) >> 2;
		}

		func_8009EC90_ADC40((s16)(var_s0 - var_s4), &sp7C, &sp78);
		var_s0 = (s32)(sp7C * 32.0f);
		var_v1 = (s32)(sp78 * 32.0f);

		D_8005BB34->v.ob[0] = (s16)((f64)var_s0 * 0.75);
		D_8005BB34->v.ob[1] = (s16)((f64)var_v1 * 0.75);
		D_8005BB34->v.ob[2] = 0;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = (s16)((var_s0 + 0x20) * 0x20);
		D_8005BB34->v.tc[1] = (s16)((0x20 - var_v1) * 0x20);
		D_8005BB34->v.cn[0] = 0xFF;
		D_8005BB34->v.cn[1] = 0xFF;
		D_8005BB34->v.cn[2] = 0xFF;
		D_8005BB34->v.cn[3] = 0x80;
		D_8005BB34++;

		var_s1++;
		var_s2 += var_s4;
	}

	gSP1Quadrangle(D_8005BB2C++, 0, 1, 2, 3, 0);
	gSP1Quadrangle(D_8005BB2C++, 0, 3, 4, 5, 0);
	gSP1Quadrangle(D_8005BB2C++, 0, 5, 6, 7, 0);
	gSP1Quadrangle(D_8005BB2C++, 0, 7, 8, 9, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009EE30_ADDE0.s")
#endif

// CURRENT(17729)
#ifdef NON_MATCHING
void func_8009F130_AE0E0(void) {
	s16 alpha;
	u8 menuVals[9];
	s32 stickX;
	s32 stickY;
	s32 i;
	s32 icon;
	u8 *menuPtr;
	s32 selected;

	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, (u32) D_80260500);
	gDPTileSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 255);
	gDPPipeSync(D_8005BB2C++);
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);

	menuPtr = &menuVals[8];
	i = 8;
	do {
		*menuPtr = 0xF;
		menuPtr--;
	} while (i--);

	if (D_8013D734_14C6E4 == -1) {
		D_8013D730_14C6E0 = 4;
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
		s16 x;

		if (stickX < 0) {
			x = -stickX;
		} else {
			x = stickX;
		}

		if (x < 0x14) {
			stickY = D_8004758B;
			if (stickY < 0) {
				x = -stickY;
			} else {
				x = stickY;
			}
			if (x < 0x14) {
				D_8014F1E0 = 1;
			}
		}
	}

	if (D_8014F1E0 == 1) {
		if ((stickX < -0x1E) && (D_8013D730_14C6E0 >= 4) && (menuVals[D_8013D730_14C6E0] != 0xF)) {
			D_8013D730_14C6E0--;
			D_8014F1E0 = 0;
			func_800153D8_15FD8(0xC7);
			stickX = D_8004758A;
		}

		if ((stickX >= 0x1F) && (D_8013D730_14C6E0 < 5) && (menuVals[D_8013D730_14C6E0 + 1] != 0xF) && (D_8013D738_14C6E8[0] == 0)) {
			D_8013D730_14C6E0++;
			D_8014F1E0 = 0;
			func_800153D8_15FD8(0xC7);
		}

		stickY = D_8004758B;
		if ((stickY >= 0x1F) && (D_8013D730_14C6E0 >= 2) && (menuVals[D_8013D730_14C6E0 - 3] != 0xF)) {
			D_8013D730_14C6E0 -= 3;
			D_8014F1E0 = 0;
			func_800153D8_15FD8(0xC7);
			stickY = D_8004758B;
		}

		if ((stickY < -0x1E) && (D_8013D730_14C6E0 < 7) && (menuVals[D_8013D730_14C6E0 + 3] != 0xF)) {
			D_8013D730_14C6E0 += 3;
			D_8014F1E0 = 0;
			func_800153D8_15FD8(0xC7);
		}
	}

	alpha = D_8014ED56;
	selected = menuVals[D_8013D730_14C6E0];
	if ((alpha != 0xFF) || (D_80052AD0 == 0)) {
		D_8013D734_14C6E4 = -1;
		func_8001A54C_1B14C(D_801426B8_151668);
		alpha = D_8014ED56 - 0x20;
		D_8014ED56 = alpha;
	} else {
		if (D_8013D734_14C6E4 != selected) {
			D_8013D734_14C6E4 = selected;
			switch (D_800313D0_31FD0) {
			case 0:
			default:
				func_8001A54C_1B14C((void *) (&D_8013D67C_14C62C)[D_8013D734_14C6E4]);
				break;
			case 2:
				func_8001A54C_1B14C((void *) (&D_8013D6F4_14C6A4)[D_8013D734_14C6E4]);
				break;
			case 1:
				func_8001A54C_1B14C((void *) (&D_8013D6B8_14C668)[D_8013D734_14C6E4]);
				break;
			}
			alpha = D_8014ED56;
		}
		D_8014F6C8 = -1;
	}

	if (D_8014F6C8 != -1) {
		D_8013D730_14C6E0 = D_8014F6C8;
	}

	if (alpha < 0xFF) {
		gDPSetAlphaCompare(D_8005BB2C++, G_AC_DITHER);
	} else {
		gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
	}

	menuPtr = &menuVals[8];
	i = 8;
	do {
		u8 item = *menuPtr;

		if (item != 0xF) {
			s16 x;
			s16 y;

			x = (s16) ((((i % 3) << 5) + (D_80068084 / 2)) - 0x2C);
			icon = D_8013D66C_14C61C[item];

			if (i == D_8013D730_14C6E0) {
				gDPSetPrimColor(D_8005BB2C++, 1, 0, 0xB9, 0xFF, 0xFF, D_8014ED56 & 0xFF);

				if (D_8013D730_14C6E0 != D_8014EDDE) {
					func_80013810_14410(D_8013D733_14C6E3);
					D_8014EDDE = D_8013D730_14C6E0;
				}
			} else {
				gDPSetPrimColor(D_8005BB2C++, 1, 0, 0x5C, 0x7F, 0x7F, D_8014ED56 & 0xFF);
			}

			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, (u32)(D_8025CCC0 + (icon * 0x240)) & 0x1FFFFFFF);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 287, 683);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 3, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (23 << G_TEXTURE_IMAGE_FRAC), (23 << G_TEXTURE_IMAGE_FRAC));

			y = ((i / 3) * 0x1E) + 0x38;
			gSPTextureRectangle(D_8005BB2C++, x * 4, y * 4, (x + 0x18) * 4, (y + 0x18) * 4, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
		}

		menuPtr--;
	} while (i--);

	if ((isButtonNewlyPressed(0, 0x9000) != 0) && (D_8014ED56 == 0xFF)) {
		if (D_8014ED54 == 0) {
			func_800153D8_15FD8(0xC6);
		}

		if (menuVals[D_8013D730_14C6E0] == 0xE) {
			if (D_8014ED54 == 0) {
				D_8014ED54 = 1;
				return;
			}
			func_80006DAC_79AC(0, 1);
		}

		if (D_8013D730_14C6E0 == 3) {
			D_80052B34->unk3C = (s16) (vehicleSpecs[D_80052B34->unk1A].unk61 << 8);
			((void (*)(VehicleSpec *, s32, VehicleInstance **)) func_800FD410_10C3C0)(&vehicleSpecs[D_80052B34->unk1A], 0x70, &D_80052B34);
			func_801392FC_1482AC(1);
		}

		if (D_8013D730_14C6E0 != 3) {
			selected = menuVals[D_8013D730_14C6E0];
			if ((selected != 0xF) && (selected != 8)) {
				D_80050AD4 = selected;
			}
		}

		D_801591AC = D_801591B0;
		gameplayMode = D_80052AE0;
		D_80052B34->unk6 = D_801591D4;
		D_8014ED56--;
		D_8014F6C8 = D_8013D730_14C6E0;
	}

	if ((D_80159320 & 0x08000000) != 0) {
		func_80006DAC_79AC(0x190, 1);
		D_800476A0 = 3;
	}

	if (D_8014ED56 < 0x21) {
		D_8013D730_14C6E0 = 4;
	}

	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009F130_AE0E0.s")
#endif

void func_8009FB1C_AEACC(s16 arg0, s16 arg1) {
	D_8014F1EC = (f32) arg0;
	D_8014F1F0 = (f32) arg1;
}

// CURRENT(8983)
#ifdef NON_MATCHING
void func_8009FB58_AEB08(void) {
	AlienInstance *alien;
	VehicleInstance *player;
	s32 pad0;
	s32 pad1;
	s16 *scannerValues;
	u32 mapTexture;

	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

	mapTexture = (s32)D_5032190 & 0x1FFFFFFF;
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, mapTexture);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
	gDPSetPrimColor(D_8005BB2C++, 255, 255, (D_80052A8C * 12) & 0xFF, (D_80052A8C * 12) & 0xFF, 0, 0xFF);

	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, (u32)D_5032390);
	gDPTileSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 15);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPPipeSync(D_8005BB2C++);

	player = D_80052B34;
	if (gzip_data_0000 != 0) {
		s16 centerX;
		s16 centerZ;
		s16 x;

		centerX = ((s16)D_8006C56D << 8) + 0x80;
		x = player->unk0;
		if ((x < (centerX - 0x200)) || ((centerX + 0x200) < x)) {
			centerZ = ((s16)D_8006C56E << 8) + 0x80;
			func_8009C1D8_AB188(centerX, centerZ, 1);
		} else {
			x = player->unk4;
			centerZ = ((s16)D_8006C56E << 8) + 0x80;
			if ((x < (centerZ - 0x200)) || ((centerZ + 0x200) < x)) {
				func_8009C1D8_AB188(centerX, centerZ, 1);
			} else {
				gzip_data_0000 = 0;
			}
		}
	}

	scannerValues = D_8014D188;
	{
		s32 i;
		for (i = 0; i < 0x18; i++, scannerValues++) {
			if (*scannerValues > 0) {
				func_80076208_851B8(i);
			}
		}
	}

	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);

	if (D_8014ED04 != 0x186A0) {
		s32 distance;

		gDPSetPrimColor(D_8005BB2C++, 255, 255, (D_80052A8C * 20) & 0xFF, 0, (D_80052A8C * 20) & 0xFF, 0xFF);

		func_8009C1D8_AB188(((s16 *)&D_8014ED04)[1], ((s16 *)&D_8014ED08)[1], 1);

		distance = func_800F9C40_108BF0(player->unk0 - D_8014ED04);
		distance += func_800F9C40_108BF0(player->unk4 - D_8014ED08);
		if ((u32)distance < 0x190000U) {
			D_8014ED04 = 0x186A0;
		}
	}

	D_8014F1E4 = (f32)((f64)D_8014F1E4 + ((f64)(D_8014F1EC - D_8014F1E4) / 5.0));
	D_8014F1E8 = (f32)((f64)D_8014F1E8 + ((f64)(D_8014F1F0 - D_8014F1E8) / 5.0));

	D_80052B40.unk0 = (s16)D_8014F1E4;
	D_80052B40.unk2 = (s16)D_8014F1E8;
	D_80052B40.unk4 = -1;

	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0xF000;
	D_80052B48.unk4 = 0;

	gDPSetPrimColor(D_8005BB2C++, 255, 255, 0xFF, 0xFF, 0xFF, 0xFF);

	func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_8013D588_14C538, D_8005BB38);

	gSPMatrix(D_8005BB2C++, (u32)D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	D_8005BB38 += 0x40;
	gSPVertex(D_8005BB2C++, (u32)&D_8013D5E8_14C598 & 0x1FFFFFFF, 4, 0);
	gSP1Triangle(D_8005BB2C++, 1, 0, 2, 0);
	gSP1Triangle(D_8005BB2C++, 1, 2, 3, 0);
	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, mapTexture);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, (u32)D_5032390);
	gDPTileSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 15);
	gDPPipeSync(D_8005BB2C++);

	alien = (AlienInstance *)D_8004D0F8;
	{
		s32 i;
		for (i = 0xFE; i != 0; i--) {
		if ((alien->specIndex == 0x19) && ((alien->unk20 & 0x100000) == 0)) {
			s32 distance;

			distance = func_800F9C40_108BF0((player->unk0 - alien->unk0) >> 2);
			distance += func_800F9C40_108BF0((player->unk4 - alien->unk4) >> 2);
			if (distance >= 0xC351) {
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0, 0, (D_80052A8C * 0x10) & 0xFF);

				func_8009C1D8_AB188(alien->unk0, alien->unk4, 1);
			}
		}
		alien = (AlienInstance *)((u8 *)alien - 0x50);
	}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009FB58_AEB08.s")
#endif

// displayScanner
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A03FC_AF3AC.s")

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
// CURRENT(5565)
#ifdef NON_MATCHING
void func_800A140C_B03BC(void) {
	s32 iter;
	s32 lry;
	s32 uly;
	s32 newIdx;
	union { struct { s32 hi; u32 lo; } h; unsigned long long ull; } acc;
	s32 *rowPtr;
	s16 *shiftPtr;

	if (D_80047720 != 0) {
		debug_drawTimingGraphBars();
		gDPPipeSync(D_8005BB2C++);
		gDPSetCycleType(D_8005BB2C++, 3 << 20);
		gDPSetRenderMode(D_8005BB2C++, G_RM_OPA_SURF, G_RM_OPA_SURF2);

		iter = 0x1F;
		lry = 0xD3;
		uly = 0xCF;
		rowPtr = D_8014F5F0;
		shiftPtr = ((s16 *)&D_80047720) + 1;
		do {
			s32 j;
			acc.h.lo = 0;
			acc.h.hi = 0;
			j = 7;
			do {
				u32 carry = 0;
				u32 new_lo = (u32)rowPtr[j] + acc.h.lo;
				carry = carry + (u32)(new_lo < acc.h.lo);
				acc.h.hi = acc.h.hi + carry;
				acc.h.lo = new_lo;
			} while (j--);
			acc.ull = __ull_rshift(acc.ull, (long long)*shiftPtr);
			if (acc.h.hi != 0 || acc.h.lo >= 0xC9U) {
				acc.h.hi = 0;
				acc.h.lo = 0xC8;
			}
			{
				s32 c0 = (iter & 2) ? 0x3C0 : 0;
				s32 c1 = (iter & 1) ? 0x1E : 0;
				s32 c2 = (iter & 4) ? 0x7800 : 0;
				s32 color = c2 + c1 + c0;
				gDPPipeSync(D_8005BB2C++);
				gDPSetFillColor(D_8005BB2C++, ((u32)color << 16) | (u32)color);
				gDPFillRectangle(D_8005BB2C++, 0x20, uly, acc.h.lo + 0x20, lry);
			}
			rowPtr -= 8;
			lry -= 6;
			uly -= 6;
		} while (iter--);
		iter = 0x1F;

		gDPPipeSync(D_8005BB2C++);
		gDPSetCycleType(D_8005BB2C++, 0);
		gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);

		((s32 *)D_8014F210)[D_8014F610] = D_8013D764_14C714 - D_8013D760_14C710;
		newIdx = D_8014F610 + 1;
		D_8014F610 = newIdx;
		if ((u32)newIdx >= 8U) {
			D_8014F610 = 0;
			newIdx = 0;
		}
		rowPtr = D_8014F5F0 + newIdx;
		do {
			*rowPtr = 0;
			rowPtr -= 8;
		} while (iter--);

		D_8014F20C = 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A140C_B03BC.s")
#endif

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

// CURRENT(793)
#ifdef NON_MATCHING
s32 func_800A1828_B07D8(u8 arg0, u8 arg1, u8 arg2) {
	s32 a0;
	s32 a1;
	s32 a2;
	s32 a3;

	a0 = arg0;
	a1 = arg1;
	a2 = arg2;

	if (a1 < a0) {
		a3 = a2;
		if ((a0 < a2) || ((a0 - a1) < a2)) {
			return a1 & 0xFF;
		}
		a0 = a0 - a3;
		return a0 & 0xFF;
	}

	if (a0 < a1) {
		a3 = a2;
		if (((0xFF - a2) < a0) || ((a1 - a0) < a2)) {
			return a1 & 0xFF;
		}
		a0 = a0 + a3;
		a0 &= 0xFF;
	}

	return a0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A1828_B07D8.s")
#endif

s32 func_800A18CC_B087C(void) {
	s16 index = (s16)(D_80158FE8 - buildingInstances);
	return (D_8014D1B8[index >> 5] & (1 << (index & 0x1F))) != 0;
}

// checkIfShouldOpenPauseMenu
void func_800A1924_B08D4(void) {
	if ((currentControllerStates[CONTROLLER_ONE].button & BUTTON_START) &&
		(gameplayMode != GAMEPLAY_MODE_UNK3) &&
		(gameplayMode != GAMEPLAY_MODE_UNKB) &&
		(D_8004794C == 0) &&
		(func_80018A58_19658() == 0) &&
		(D_80048188 == 0)) {

		D_801591B0 = D_801591AC;
		D_80052AE0 = gameplayMode;
		D_801591AC = 3;
		gameplayMode = GAMEPLAY_MODE_UNK2;
		D_8014ED56 = 0xFF;
		D_8014ED54 = 0;
		D_80050AD0 = D_80050AD4;
		D_801591D4 = D_80052B34->unk6;
		D_8014ED40 = D_8004794A;
		func_800153D8_15FD8(0xC6);
	}
}

// CURRENT(1170)
#ifdef NON_MATCHING
void func_800A1A18_B09C8(void) {
	s16 temp_v1;
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
		temp_v1 = D_8013D5BC_14C56C;
		if (temp_v1 == 0) {
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
		}

		if (temp_v1 == 1) {
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
		} else {
			D_8014F618.unk71 = func_800A1828_B07D8(D_8014F618.unk71, D_8014F618.unk74, 0x14);
			D_8014F618.unk72 = func_800A1828_B07D8(D_8014F618.unk72, D_8014F618.unk75, 0x14);
			D_8014F618.unk73 = func_800A1828_B07D8(D_8014F618.unk73, D_8014F618.unk76, 0x14);
			D_8014F618.unk6D += 2;
		}
		var_v1 = D_8013D5BC_14C56C;
	}

	D_8013D768_14C718 = var_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A1A18_B09C8.s")
#endif

// CURRENT(3131)
#ifdef NON_MATCHING
void func_800A1DD8_B0D88(s32 arg0) {
	Gfx *dl;
	f32 tempF0;
	f32 tempF2;
	f32 tempF12;
	f32 tempF14;
	f32 tempF16;
	f32 tempF18;
	f32 tempF10;
	f32 *basePos;

	arg0 &= 0xFF;

	tempF0 = (f32)((f64)(*(u16*)(((u8*)&D_8014F618) + 0x60)) * 0.03125);
	tempF2 = tempF0 * D_80153AB8.x;
	tempF12 = tempF0 * D_80153AB8.y;
	tempF14 = tempF0 * D_80153AB8.z;
	tempF16 = tempF0 * ((f32*)&D_80153AB8)[3];
	tempF18 = tempF0 * ((f32*)&D_80153AB8)[4];
	tempF10 = tempF0 * ((f32*)&D_80153AB8)[5];

	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, ((u32)(D_1009C70 + ((((u8*)&D_8014F618)[0x62 + arg0]) << 7))) & 0x1FFFFFFF);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (15 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));
	gDPPipeSync(D_8005BB2C++);

	basePos = (f32*)(((u8*)&D_8014F618) + (arg0 * 0xC) + 0x30);

	D_8005BB34->v.ob[0] = (s16)(s32)(basePos[0] + tempF2);
	D_8005BB34->v.ob[1] = (s16)(s32)(basePos[1] + tempF12);
	D_8005BB34->v.ob[2] = (s16)(s32)(basePos[2] + tempF14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (s16)(s32)(basePos[0] + tempF16);
	D_8005BB34->v.ob[1] = (s16)(s32)(basePos[1] + tempF18);
	D_8005BB34->v.ob[2] = (s16)(s32)(basePos[2] + tempF10);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (s16)(s32)(basePos[0] - tempF2);
	D_8005BB34->v.ob[1] = (s16)(s32)(basePos[1] - tempF12);
	D_8005BB34->v.ob[2] = (s16)(s32)(basePos[2] - tempF14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0x400;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (s16)(s32)(basePos[0] - tempF16);
	D_8005BB34->v.ob[1] = (s16)(s32)(basePos[1] - tempF18);
	D_8005BB34->v.ob[2] = (s16)(s32)(basePos[2] - tempF10);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x400;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	gSPVertex(D_8005BB2C++, (u32)(D_8005BB34 - 4) & 0x1FFFFFFF, 4, 0);
	gSP1Quadrangle(D_8005BB2C++, 0, 1, 2, 3, 0);
	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A1DD8_B0D88.s")
#endif

// CURRENT(11437)
#ifdef NON_MATCHING
void func_800A2260_B1210() {
	Gfx *dl;
	f32 *ghostPos;
	f32 sp6C;
	f32 sp64;
	f32 sp68;
	f32 sp60;
	f32 sp5C;
	f32 sp58;
	f32 sp8;
	f32 temp_f8;
	f32 temp_f4;
	f64 half;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s32 pad6;
	s32 pad7;

	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (u32)D_1009A70 & 0x1FFFFFFF);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
	gDPPipeSync(D_8005BB2C++);

	ghostPos = (f32 *)&D_8014F618;
	half = 0.5;
	sp8 = ghostPos[8];
	sp64 = (f32)((f64)(ghostPos[3] + ghostPos[6]) * half);
	sp68 = (f32)((f64)(ghostPos[4] + ghostPos[7]) * half);
	temp_f8 = (f32)((f64)(ghostPos[5] + sp8) * half);
	sp6C = temp_f8;
	sp58 = (f32)((f64)(ghostPos[3] - ghostPos[6]) * half);
	temp_f4 = (f32)((f64)(ghostPos[4] - ghostPos[7]) * half);
	sp5C = temp_f4;
	sp60 = (f32)((f64)(ghostPos[5] - sp8) * half);

	D_8005BB34->v.ob[0] = (s16)(s32)(ghostPos[0] + ghostPos[3]);
	D_8005BB34->v.ob[1] = (s16)(s32)(ghostPos[1] + ghostPos[4]);
	D_8005BB34->v.ob[2] = (s16)(s32)(ghostPos[2] + ghostPos[5]);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (s16)(s32)(ghostPos[0] + sp64);
	D_8005BB34->v.ob[1] = (s16)(s32)(ghostPos[1] + sp68);
	D_8005BB34->v.ob[2] = (s16)(s32)(ghostPos[2] + sp6C);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x800;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (s16)(s32)(ghostPos[0] + ghostPos[6]);
	D_8005BB34->v.ob[1] = (s16)(s32)(ghostPos[1] + ghostPos[7]);
	D_8005BB34->v.ob[2] = (s16)(s32)(ghostPos[2] + ghostPos[8]);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (s16)(s32)(ghostPos[0] + sp58);
	D_8005BB34->v.ob[1] = (s16)(s32)(ghostPos[1] + sp5C);
	D_8005BB34->v.ob[2] = (s16)(s32)(ghostPos[2] + sp60);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (s16)(s32)ghostPos[0];
	D_8005BB34->v.ob[1] = (s16)(s32)ghostPos[1];
	D_8005BB34->v.ob[2] = (s16)(s32)ghostPos[2];
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x800;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (s16)(s32)(ghostPos[0] - sp58);
	D_8005BB34->v.ob[1] = (s16)(s32)(ghostPos[1] - sp5C);
	D_8005BB34->v.ob[2] = (s16)(s32)(ghostPos[2] - sp60);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (s16)(s32)(ghostPos[0] - ghostPos[6]);
	D_8005BB34->v.ob[1] = (s16)(s32)(ghostPos[1] - ghostPos[7]);
	D_8005BB34->v.ob[2] = (s16)(s32)(ghostPos[2] - ghostPos[8]);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (s16)(s32)(ghostPos[0] - sp64);
	D_8005BB34->v.ob[1] = (s16)(s32)(ghostPos[1] - sp68);
	D_8005BB34->v.ob[2] = (s16)(s32)(ghostPos[2] - sp6C);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x800;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (s16)(s32)(ghostPos[0] - ghostPos[3]);
	D_8005BB34->v.ob[1] = (s16)(s32)(ghostPos[1] - ghostPos[4]);
	D_8005BB34->v.ob[2] = (s16)(s32)(ghostPos[2] - ghostPos[5]);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	gSPVertex(D_8005BB2C++, (u32)(D_8005BB34 - 9) & 0x1FFFFFFF, 9, 0);
	gSP1Quadrangle(D_8005BB2C++, 0, 1, 4, 3, 0);
	gSP2Triangles(D_8005BB2C++, 2, 5, 1, 0, 5, 4, 1, 0);
	gSP2Triangles(D_8005BB2C++, 7, 3, 4, 0, 6, 3, 7, 0);
	gSP2Triangles(D_8005BB2C++, 8, 4, 5, 0, 7, 4, 8, 0);
	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A2260_B1210.s")
#endif

s32 func_800A2A88_B1A38(void) {
	s32 temp_v0;

	if (D_8013D5B4_14C564 == 0) {
		return 0;
	}
	temp_v0 = vehicleSpecs[D_80052B34->unk1A].weapon1;
	if (temp_v0 == 0) {
		return 0;
	}
	if (((s32)D_80145BE8_154B98[temp_v0][0] >> 8) & 0x200000) {
		return 0;
	}
	if (D_80159320 & 0x10000) {
		return 0;
	}
	if (gameplayMode == GAMEPLAY_MODE_UNK3) {
		return 0;
	}
	if (gameplayMode == GAMEPLAY_MODE_UNKB) {
		return 0;
	}
	return 1;
}

// drawGhostTarget - R-trigger aiming reticle?
// CURRENT(4270)
#ifdef NON_MATCHING
void func_800A2B58_B1B08(void) {
	Gfx *dl;
	u32 color;

	if (D_8014F618.unk66 != 1) {
		return;
	}

	if (func_800A2A88_B1A38() == 0) {
		return;
	}

	gSPMatrix(D_8005BB2C++, (u32)&D_80031160 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BACK | G_FOG | G_LIGHTING);
	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_SHADE);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0);
	color = (D_8014F618.unk77 << 24) | (D_8014F618.unk78 << 16) | (D_8014F618.unk79 << 8) | ((u8)(D_8014F618.unk69 >> 1));
	gDPSetPrimColor(D_8005BB2C++, 0, 0, color >> 24, (color >> 16) & 0xFF, (color >> 8) & 0xFF, color & 0xFF);
	gDPPipeSync(D_8005BB2C++);

	func_800A2260_B1210(NULL, NULL, NULL, NULL);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A2B58_B1B08.s")
#endif

// CURRENT(11390)
#ifdef NON_MATCHING
void func_800A2D98_B1D48(s16 arg0, s16 arg1, s16 arg2, s32 arg3) {
	AAA70Unk8014F618Head *temp_s0;
	Gfx *dl;
	f32 posX;
	f32 posY;
	f32 posZ;
	f32 distScale;
	f32 flatDistF;
	s32 flatDist;
	s32 temp_a1;
	s16 size;
	u8 pulse;

	(void)arg3;
	temp_s0 = (AAA70Unk8014F618Head *)&D_8014F618;
	posX = (f32)arg0;
	posY = (f32)arg1;
	posZ = (f32)arg2;

	D_8014F618.unk66 = 1;
	temp_s0->unk0 = posX;
	temp_s0->unk4 = posY;
	temp_s0->unk8 = posZ;

	gSPMatrix(D_8005BB2C++, (u32)&D_80031160 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BACK | G_FOG | G_LIGHTING);
	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_SHADE);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPPipeSync(D_8005BB2C++);

	if (D_8014F618.unk70 == 1) {
		D_8014F618.unk6F += 0xF;
		pulse = D_8014F618.unk6F;
	} else if (D_8014F618.unk70 == 2) {
		D_8014F618.unk6F -= 0xF;
		pulse = D_8014F618.unk6F;
	} else {
		pulse = D_8014F618.unk6F;
		if (pulse < 0xA) {
			D_8014F618.unk6F = pulse + 0xA;
			pulse = D_8014F618.unk6F;
		} else if (pulse >= 0x15) {
			D_8014F618.unk6F = pulse - 0xA;
			pulse = D_8014F618.unk6F;
		}
	}

	if ((pulse >= 0x79) && (D_8014F618.unk70 == 1)) {
		D_8014F618.unk70 = 2;
	}
	if ((pulse < 0xF) && (D_8014F618.unk70 == 2)) {
		D_8014F618.unk70 = 1;
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, D_8014F618.unk77, D_8014F618.unk78, D_8014F618.unk79, D_8014F618.unk69);

	sqrtf(((f32)(D_80052B34->unk0 - arg0) * (f32)(D_80052B34->unk0 - arg0)) +
		  ((f32)(D_80052B34->unk2 - arg1) * (f32)(D_80052B34->unk2 - arg1)) +
		  ((f32)(D_80052B34->unk4 - arg2) * (f32)(D_80052B34->unk4 - arg2)));

	distScale = sqrtf((((D_80047954 * 4.0f) - posX) * ((D_80047954 * 4.0f) - posX)) +
				 ((D_80047958 * 4.0f) - posY) * ((D_80047958 * 4.0f) - posY) +
				 ((D_8004795C * 4.0f) - posZ) * ((D_8004795C * 4.0f) - posZ));

	size = (s16)(s32)distScale;
	*(s16 *)&D_8014F618.unk60 = size;
	distScale /= 6.0f;
	temp_s0->unkC = distScale * ((f32 *)&D_80153AB8)[0];
	temp_s0->unk10 = distScale * ((f32 *)&D_80153AB8)[1];
	temp_s0->unk14 = distScale * ((f32 *)&D_80153AB8)[2];
	temp_s0->unk18 = distScale * ((f32 *)&D_80153AB8)[3];
	temp_s0->unk1C = distScale * ((f32 *)&D_80153AB8)[4];
	temp_s0->unk20 = distScale * ((f32 *)&D_80153AB8)[5];
	temp_s0->unk24 = temp_s0->unk0 + temp_s0->unk18;
	temp_s0->unk28 = temp_s0->unk4 + temp_s0->unk1C;
	temp_s0->unk2C = temp_s0->unk8 + temp_s0->unk20;
	func_800A2260_B1210(NULL, NULL, NULL, NULL);

	dl = D_8005BB2C;
	D_8005BB2C = dl;
	gDPSetPrimColor(D_8005BB2C++, 0, 0, D_8014F618.unk71, D_8014F618.unk72, D_8014F618.unk73, D_8014F618.unk6B);

	flatDist = (s32)((f32)(s32)((D_80052B2C->unk0 - posX) * (D_80052B2C->unk0 - posX)) +
				 (D_80052B2C->unk8 - posZ) * (D_80052B2C->unk8 - posZ));
	flatDistF = sqrtf((f32)flatDist);

	D_80052B40.unk0 = arg0;
	D_80052B40.unk2 = arg1;
	D_80052B40.unk4 = arg2;

	temp_a1 = (s32)flatDistF;
	D_80052B48.unk0 = func_80003824_4424(D_80052B2C->unk14 - D_80052B2C->unk8, D_80052B2C->unkC - D_80052B2C->unk0);
	D_80052B48.unk2 = D_8014F618.unk6D << 8;
	D_80052B48.unk4 = 0x4000 - func_80003824_4424(D_80052B2C->unk4 - posY, (f32)temp_a1);

	size = (s16)(s32)((f32)D_8014F618.unk6F + distScale);
	D_80052B50.unk0 = size;
	D_80052B50.unk2 = size;
	D_80052B50.unk4 = size;
	func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, D_8005BB38);

	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);

	D_8005BB38 += 0x40;

	gSPDisplayList(D_8005BB2C++, (u32)D_100ACB0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A2D98_B1D48.s")
#endif

// CURRENT(7752)
#ifdef NON_MATCHING
void func_800A3490_B2440(VehicleInstance *arg0) {
	u8 *sp6C;
	s32 pad0;
	s16 pad1;
	s16 pad2;
	s16 sp62;
	s16 sp60;
	u8 sp56;
	u8 var_t5;
	u8 var_t4;
	u8 var_a3;
	s32 temp_v0;
	s32 temp_ra;
	s32 var_t0;
	s32 var_v1;
	s32 alpha;
	s32 temp_a0;
	f32 temp_f0;

	sp6C = func_800FAFB8_109F68(arg0);
	sp56 = (u8)D_8013D5B8_14C568;
	var_a3 = 0x2D;
	var_t4 = 0x2E;
	var_t5 = 0x91;
	D_8014F67E = 0;

	if (func_800A2A88_B1A38() != 0) {
		if ((D_80158FE8 != NULL) && (func_800A18CC_B087C() != 0)) {
			temp_v0 = 1;
		} else {
			temp_v0 = 0;
		}

		if ((temp_v0 != 0) || (D_801591B4 == 7) || (D_801591B4 == 8)) {
			var_a3 = 0xFF;
			var_t4 = 0;
			var_t5 = 0;
		}

		temp_v0 = D_8013D770_14C720;
		if (temp_v0 < 0) {
			temp_v0 = 0;
		}
		D_8013D770_14C720 = temp_v0;
		if (temp_v0 >= 0x1F) {
			temp_v0 = 0x1E;
			D_8013D770_14C720 = temp_v0;
		}

		temp_v0 = D_8013D76C_14C71C;
		if (temp_v0 > 0) {
			D_8013D76C_14C71C = temp_v0 - 1;
		}

		*(s32 *)&D_8013D5D0_14C580 = arg0->unk0;
		*(s32 *)&D_8013D5D4_14C584 = arg0->unk2;
		*(s32 *)&D_8013D5D8_14C588 = arg0->unk4;

		sp62 = (s16)(s32)(D_80052B2C->unk0 - (f32)arg0->unk0);
		sp60 = (s16)(s32)(D_80052B2C->unk8 - (f32)arg0->unk4);
		temp_ra = (((s32)sqrtf((f32)(func_800047FC_53FC((s16)(s32)(D_80052B2C->unk4 - (f32)arg0->unk2)) + (sp62 * sp62) + (sp60 * sp60))) - D_8013D774_14C724) / 2) + D_8013D774_14C724;
		D_8013D774_14C724 = temp_ra;
		var_t0 = 4;

		switch (D_8013D5B4_14C564) {
			case 3:
				gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, var_a3, var_t4, var_t5, 0xFF);
				break;
			case 1:
				if (sp56 < 0x8C) {
					temp_a0 = ((sp56 * 0xFF) / 140) & 0xFF;
					gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, temp_a0, temp_a0, temp_a0, temp_a0);
				} else {
					temp_f0 = (f32)(0xFF - sp56) / 115.0f;
					var_a3 = (u8)((f32)var_a3 + ((f32)(0xFF - var_a3) * temp_f0));
					var_t4 = (u8)((f32)var_t4 + ((f32)(0xFF - var_t4) * temp_f0));
					var_t5 = (u8)((f32)var_t5 + ((f32)(0xFF - var_t5) * temp_f0));
					gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, var_a3, var_t4, var_t5, 0xFF);
				}
				break;
			case 2:
				gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, var_a3, var_t4, var_t5, sp56);
				break;
		}

		var_v1 = (0x587 - temp_ra) / 12;
		while (var_t0 >= 2) {
			if ((D_8013D5B4_14C564 == 1) && (sp56 < 0x8D)) {
				alpha = (sp56 * 2) - var_v1;
			} else {
				alpha = 0xFF - var_v1;
			}

			func_800A2D98_B1D48(((s16 *)&D_8013D5D0_14C580)[1], ((s16 *)&D_8013D5D4_14C584)[1], ((s16 *)&D_8013D5D8_14C588)[1], (s16)alpha);

			if (sp6C[0x55] != 0) {
				var_t0--;
			} else {
				var_t0 = 1;
			}
		}

		if (((D_80158FEC != NULL) || (D_80158FE4 != NULL) || (D_80158FE8 != NULL)) && (D_8013D5B4_14C564 == 3)) {
			if (D_8013D5BC_14C56C != 2) {
				alpha = (0xFF - (D_8013D5C0_14C570[0] * 0xC)) & 0xFF;
				gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, alpha);
			} else {
				temp_a0 = (D_80052A8C & 7) * 0x10;
				gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, 0xFF, (temp_a0 * 2) + 0x32, temp_a0 + 0x32, 0xFF);
			}
		}

		{
			Gfx *dl;

			gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
			gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
			gDPPipeSync(D_8005BB2C++);
			gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
			gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_LIGHTING);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A3490_B2440.s")
#endif

s32 func_800A3CD0_B2C80(void) {
	if (D_8014F1FA == 0) {
		return 1;
	}
	return 0;
}
