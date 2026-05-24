#include <ultra64.h>
#include "common.h"

u32 D_80140BA0_14FB50[] = {
	0x05059CA0, 0x05058AA0, 0x05058CA0, 0x05058EA0, 0x050590A0,
	0x050592A0, 0x050594A0, 0x050596A0, 0x050598A0, 0x05059AA0,
};

u32 D_80140BC8_14FB78[] = {
	0x05055CA0, 0x05055EA0, 0x050560A0, 0x050562A0, 0x050564A0,
	0x050566A0, 0x050568A0, 0x05056AA0, 0x05056CA0, 0x05056EA0,
	0x050570A0, 0x050572A0, 0x050574A0, 0x050576A0, 0x050578A0,
	0x05057CA0, 0x00000000, 0x05057AA0, 0x05057EA0, 0x050580A0,
	0x050582A0, 0x050584A0, 0x00000000, 0x00000000, 0x050586A0,
	0x050588A0,
};

u8 D_80140C30_14FBE0[] = { 0x7F, 0x7F, 0x7F, 0x00, 0x7F, 0x7F, 0x7F, 0x00 };

u8 D_80140C38_14FBE8[] = {
	0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF, 0x00,
	0x28, 0x64, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00,
};

u32 D_80140C48_14FBF8[] = {
	0x0501FE08, 0x0501F6C0, 0x0501EF78, 0x0501E830,
	0x0501E0E8, 0x0501D9A0, 0x0501D258, 0x0501CB10,
};

u16 D_80140C68_14FC18[] = { 0x0033, 0x0033, 0x0033, 0x0000 };
u8 D_80140C70_14FC20[] = { 0xD7, 0xD7, 0xFF, 0x00 };
u8 D_80140C74_14FC24[] = { 0xFF, 0x00, 0x00, 0x00 };
u32 D_80140C78_14FC28 = 0;
u32 D_80140C7C_14FC2C = 0;
u32 D_80140C80_14FC30 = 0;
u32 D_80140C84_14FC34 = 1;
u32 D_80140C88_14FC38 = 0;
u32 D_80140C8C_14FC3C = 0;
u32 D_80140C90_14FC40 = 0;
u32 D_80140C94_14FC44 = 0;
u32 D_80140C98_14FC48 = 0;
u32 D_80140C9C_14FC4C = 0;
u32 D_80140CA0_14FC50 = 0;
u32 D_80140CA4_14FC54 = 1;
u32 D_80140CA8_14FC58 = 0;
u32 D_80140CAC_14FC5C = 0;
u32 D_80140CB0_14FC60 = 0;
u32 D_80140CB4_14FC64 = 1;
u32 D_80140CB8_14FC68 = 0;
u32 D_80140CBC_14FC6C = 0;
u32 D_80140CC0_14FC70 = 0;
u32 D_80140CC4_14FC74 = 0;
u32 D_80140CC8_14FC78 = 0;
u32 D_80140CCC_14FC7C = 0;
u32 D_80140CD0_14FC80 = 0;
u32 D_80140CD4_14FC84 = 0;
u32 D_80140CD8_14FC88 = 0;
u32 D_80140CDC_14FC8C = 0x82;
u32 D_80140CE0_14FC90[] = { 0, 0, 0, 0 };

void func_8012EAC0_13DA70(s32 arg0, u8 *arg1)
{
	int power;
	s16 k;
	s16 numDigits = 0;
	s32 v = arg0;
	s32 digit;
	s16 new_var;
	s16 j;
	if (arg0 > 0)
	{
		do
		{
			v = (s32) ((((f32) v) * 1.0f) / 10.0f);
			numDigits++;
		}
		while (v > 0);
	}
	new_var = numDigits;
	for (j = 0; j < new_var; j++)
	{
		power = 1;
		k = 0;
		if (j > 0)
		{
			do
			{
				k++;
				power *= 0xA;
			}
			while (k < j);
		}
		digit = (s32) (((f32) arg0) / ((f32) power));
		*(((arg1 + new_var) - j) - 1) = (u8) ((digit - (((s32) (((f32) digit) / 10.0f)) * 0xA)) + 0x30);
	}

	arg1[numDigits] = 0;
}

/* Concatenates two strings (arg0 + arg1) into the output buffer arg2 */
#ifdef NON_MATCHING
void func_8012EBC0_13DB70(u8 *arg0, u8 *arg1, u8 *arg2) {
	s16 i;
	s16 j;
	u8 *ptr;

	i = 0;
	if (*arg0 != 0) {
		do {
			arg2[i] = arg0[i];
			i++;
		} while (arg0[i] != 0);
	}
	j = 0;
	do {
		ptr = &arg1[j];
		arg2[i + j] = *ptr;
		j++;
	} while (*ptr > 0U);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012EBC0_13DB70.s")
#endif

// CURRENT(425)
#ifdef NON_MATCHING
s32 func_8012EC3C_13DBEC(s32 arg0)
{
	u16 ch;
	s32 index;

	ch = arg0 & 0xFF;
	if (ch == 0x20) {
		return 0;
	}

	if (ch == 0xE9) {
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, ((u32) D_505A0A0 & 0x1FFFFFFF));
		gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
			G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
			G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
		return 1;
	} else if (ch == 0xE8) {
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, ((u32) D_505A2A0 & 0x1FFFFFFF));
		gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
			G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
			G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
		return 1;
	} else if (ch == 0x26) {
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, ((u32) D_5059EA0 & 0x1FFFFFFF));
		gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
			G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
			G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
		return 1;
	} else if (ch == 0x3A) {
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, ((u32) D_505A4A0 & 0x1FFFFFFF));
		gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
			G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
			G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
		return 1;
	}

	if ((ch >= 0x41) && (ch < 0x5B)) {
		index = ch - 0x41;
	} else {
		index = ch - 0x61;
	}

	if ((index >= 0) && (index < 0x1A)) {
		u32 *texture;

		texture = &D_80140BC8_14FB78[index];
		if (*texture != 0) {
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, (*texture & 0x1FFFFFFF));
			gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
				G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
				G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
			return 1;
		}
		return 0;
	}

	index = ch - 0x30;
	if ((index >= 0) && (index < 0xA)) {
		u32 *texture;

		texture = &D_80140BA0_14FB50[index];
		if (*texture != 0) {
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, (*texture & 0x1FFFFFFF));
			gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
				G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
				G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
			return 1;
		}
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012EC3C_13DBEC.s")
#endif

// https://decomp.me/scratch/RaB1d
// This does match but doesn't compile right at the moment:
// this requires D_8015FF84 as a function static so this may cause .bss issues
// shouldn't be a problem if you match the entire TU / file
#ifdef NON_MATCHING
void func_8012F24C_13E1FC(u8 *arg0, s32 arg1)
{
	static s32 D_8015FF84;
	s32 rem;
	rem = D_8015FF84 % 300;
	if (rem < 0x64) {
		arg0[0] = 0xFA - rem;\
		arg0[1] = rem + 0x96;\
		arg0[2] = 0x96;
	} else if (rem < 0xC8) {
		arg0[0] = 0x96;\
		arg0[1] = 0x15E - rem;\
		arg0[3] = rem + 0x32;
	} else {
		arg0[0] = rem - 0x32;\
		arg0[1] = 0x96;\
		arg0[3] = 0x1C2 - rem;
	}
	D_8015FF84 += arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012F24C_13E1FC.s")
#endif

#ifdef NON_MATCHING
// CURRENT(5182)
void func_8012F2DC_13E28C(s32 arg0, s32 arg1, s32 arg2)
{
	f32 temp_f10;
	f32 var_f0;
	s32 temp_t9;
	s32 var_v1;
	u8 temp_v0;

	if (((f64) (f32) coss((D_80140C78_14FC28 * 0x3E8) & 0xFFFF) / 32768.0) >= 0.0) {
		var_f0 = (f32) ((f64) (f32) coss((D_80140C78_14FC28 * 0x3E8) & 0xFFFF) / 32768.0);
	} else {
		var_f0 = (f32) -((f64) (f32) coss((D_80140C78_14FC28 * 0x3E8) & 0xFFFF) / 32768.0);
	}

	var_v1 = 0;
	do {
		temp_v0 = *(u8 *) (arg0 + var_v1);
		temp_t9 = (var_v1 + 1) & 0xFF;
		temp_f10 = (f32) (0xFF - temp_v0);
		*(u8 *) (arg1 + var_v1) = (u32) (temp_f10 * var_f0) + temp_v0;
		var_v1 = temp_t9;
	} while (temp_t9 < 3);

	D_80140C78_14FC28 += arg2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012F2DC_13E28C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012F4E0_13E490.s")

void func_8012FE6C_13EE1C(s16 arg0) {
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0, 0, 0, arg0);
	gDPPipeSync(D_8005BB2C++);
	gDPFillRectangle(D_8005BB2C++, 0, 0, D_80068084, D_80068088);
}

// Saves current level's score and returns the total score across all levels.
s32 func_8012FFB0_13EF60(void)
{
	s32 score;
	s32 i;
	
	D_80052A98[currentLevel - 1].score = D_80052B2C->unk30;

	score = 0;
	for (i = 0; i < 6; i++) {
		score += D_80052A98[i].score;
	}
	return score;
}

// CURRENT(25610)
#ifdef NON_MATCHING
void func_8013001C_13EFCC(void)
{
	u8 levelText[0x18];
	s16 x0;
	s16 y0;
	s16 x1;
	s16 y1;
	u16 phase;
	s32 next;
	s32 mode;
	u8* levelName;

	if (gameplayMode == 10) {
		if (D_80140C80_14FC30 != 0) {
			if ((s32)D_80140C7C_14FC2C > 0) {
				D_80160050 = -0x1000;
			} else {
				D_8013D580_14C530 = 1;
				D_80140C80_14FC30 = 0;
			}
		} else if (D_80140C7C_14FC2C == 0) {
			if (D_80052ACA == 2) {
				D_8015FF80 = 5;
			} else {
				D_8015FF80 = 1;
			}
			D_80140C7C_14FC2C = 0x400;
			D_80160050 = 0x1000;
		}
	}

	if ((s32)D_80140C7C_14FC2C > 0) {
		func_8012FE6C_13EE1C((s16)(((f32)D_80140C7C_14FC2C / 65535.0f) * 180.0f));

		gDPPipeSync(D_8005BB2C++);
		gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x8C, 0x96, 0xF0, 0xAA);

		phase = (u16)D_80140C7C_14FC2C;
		x0 = func_80006520_7120((s16)(D_80068084 * 2), 0x70, phase);
		y0 = x0 + func_80006520_7120(0, (s16)((D_80068084 * 4) - 0xE0), phase);
		x1 = func_80006520_7120((s16)(D_80068088 * 2), 0x60, phase);
		y1 = x1 + func_80006520_7120(0, (s16)((D_80068088 * 4) - 0xC0), phase);
		func_800092B8_9EB8(x0, x1, y0, y1, 0);

		next = (s32)D_80140C7C_14FC2C + D_80160050;
		if ((next >= 0x10000) && (D_80160050 > 0)) {
			D_80160050 = 0;
			D_80140C7C_14FC2C = 0xFFFF;
		} else if ((next <= 0) && (D_80160050 < 0)) {
			D_80160050 = 0;
			D_80140C7C_14FC2C = 0;
		} else {
			D_80140C7C_14FC2C = next;
		}
	}

	if (D_80140C7C_14FC2C != 0xFFFF) {
		return;
	}

	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
	drawText("MISSION", 0, 0);
	drawText("COMPLETE", (D_80068084 / 2) - 0x82, (D_80068088 / 2) - 0x64, (D_80068084 / 2) + 0x82, (D_80068088 / 2) + 0x64);

	switch (D_8015FF80) {
	case 0:
		D_80140C80_14FC30 = 1;
		break;

	case 1:
		mode = D_800313D0_31FD0;
		if (mode == 2) {
			func_801306C4_13F674("BONUS AWARD");
		} else if (mode == 1) {
			func_801306C4_13F674("MISSION SCORE");
		} else {
			func_801306C4_13F674("MISSION BONUS");
		}
		return;

	case 2:
		func_80130BA0_13FB50();
		return;

	case 3:
		mode = D_800313D0_31FD0;
		if (mode == 2) {
			levelName = D_80031520[currentLevel];
			func_8012EBC0_13DB70(levelName, "-B", levelText);
		} else if (mode == 1) {
			levelName = D_80031508[currentLevel];
			func_8012EBC0_13DB70(levelName, "-A", levelText);
		} else {
			levelName = D_800314F0[currentLevel];
			func_8012EBC0_13DB70(levelName, "-C", levelText);
		}

		if ((currentLevel == 4) && (func_8000726C_7E6C(0x14) != 0)) {
			levelText[0x14] = '4';
		} else {
			levelText[0x14] = (u8)(D_80047F94 + '1');
		}
		levelText[0x15] = '\0';
		func_8012EBC0_13DB70(levelText, &levelText[0x14], levelText);
		func_80131280_140230(levelText);
		return;

	case 4:
		mode = D_800313D0_31FD0;
		if (mode == 2) {
			func_801306C4_13F674("GAME OVER");
		} else if (mode == 1) {
			func_801306C4_13F674("MISSION OVER");
		} else {
			func_801306C4_13F674("FINAL SCORE");
		}
		return;

	case 5:
		mode = D_800313D0_31FD0;
		if (mode == 2) {
			levelName = D_80031520[currentLevel];
			func_8012EBC0_13DB70(levelName, "-Y", levelText);
		} else if (mode == 1) {
			levelName = D_80031508[currentLevel];
			func_8012EBC0_13DB70(levelName, "-X", levelText);
		} else {
			levelName = D_800314F0[currentLevel];
			func_8012EBC0_13DB70(levelName, "-Z", levelText);
		}
		func_80131280_140230(levelText);
		break;

	default:
		break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8013001C_13EFCC.s")
#endif

// CURRENT(2200)
#ifdef NON_MATCHING
void func_801306C4_13F674(u8 *arg0)
{
	u8 scoreText[0x18];
	u8 pad[8];
	u32 temp;

	if (D_80140C84_14FC34 != 0) {
		D_80140C84_14FC34 = 0;
		D_80052B2C->unk30 += 0x2710;
		D_80140C88_14FC38 = 0;
		D_80140C8C_14FC3C = 0;
		D_80140C90_14FC40 = 0;
		D_80140C94_14FC44 = 0;
		D_80140C98_14FC48 = 0;
		D_80140C9C_14FC4C = 0;
		D_80140CA0_14FC50 = 0;
	}

	func_8012EAC0_13DA70(0x2710, scoreText);

	if (D_80140C88_14FC38 == 0) {
		temp = func_8012F4E0_13E490(arg0, 0xA, 0x14, 0x47, D_80140C70_14FC20, D_80140C98_14FC48 == 0, D_80140C8C_14FC3C == 0, 0x14);
		D_80140C98_14FC48 = temp;
		D_80140C8C_14FC3C = 1;

		if (temp != 0) {
			switch (D_800313D0_31FD0) {
			case 0:
			default:
				D_80140C9C_14FC4C = func_8012F4E0_13E490(D_801454C0_154470, 0x12, 0x18, 0x82, D_80140C70_14FC20, D_80140C9C_14FC4C == 0, D_80140C90_14FC40 == 0, 0xC);
				break;
			case 2:
				D_80140C9C_14FC4C = func_8012F4E0_13E490(D_801454C8_154478, 0x12, 0x18, 0x82, D_80140C70_14FC20, D_80140C9C_14FC4C == 0, D_80140C90_14FC40 == 0, 0xC);
				break;
			case 1:
				D_80140C9C_14FC4C = func_8012F4E0_13E490(D_801454D0_154480, 0x12, 0x18, 0x82, D_80140C70_14FC20, D_80140C9C_14FC4C == 0, D_80140C90_14FC40 == 0, 0xC);
				break;
			}
			D_80140C90_14FC40 = 1;
		}

		if (D_80140C9C_14FC4C != 0) {
			D_80140CA0_14FC50 = func_8012F4E0_13E490(scoreText, 0x14, 0x1E, 0xA2, D_80140C74_14FC24, D_80140CA0_14FC50 == 0, D_80140C94_14FC44 == 0, 0x34);
			D_80140C94_14FC44 = 1;
		}
	} else {
		D_80140C98_14FC48 = func_8012F4E0_13E490(arg0, 0xA, 0x14, 0x47, D_80140C70_14FC20, D_80140C98_14FC48 == 0, D_80140C8C_14FC3C == 0, 8);
		D_80140C8C_14FC3C = 1;

		switch (D_800313D0_31FD0) {
		case 0:
		default:
			func_8012F4E0_13E490(D_801454D8_154488, 0x12, 0x18, 0x82, D_80140C70_14FC20, 0, 0, 0);
			break;
		case 2:
			func_8012F4E0_13E490(D_801454E0_154490, 0x12, 0x18, 0x82, D_80140C70_14FC20, 0, 0, 0);
			break;
		case 1:
			func_8012F4E0_13E490(D_801454E8_154498, 0x12, 0x18, 0x82, D_80140C70_14FC20, 0, 0, 0);
			break;
		}

		func_8012F4E0_13E490(scoreText, 0x14, 0x1E, 0xA2, D_80140C74_14FC24, 0, 0, 0x20);
	}

	func_800033D4_3FD4(0xD000, 0);

	if (((currentControllerStates[0].button & 0xD000) != 0) && (D_80140C88_14FC38 == 0)) {
		if ((D_80140C98_14FC48 == 0) || (D_80140C9C_14FC4C == 0) || (D_80140CA0_14FC50 == 0)) {
			D_80140CA0_14FC50 = 1;
			D_80140C9C_14FC4C = 1;
			D_80140C98_14FC48 = 1;
			D_80140C94_14FC44 = 0;
			D_80140C90_14FC40 = 0;
			D_80140C8C_14FC3C = 0;
		} else {
			D_80140C88_14FC38 = 1;
			D_80140C98_14FC48 = 0;
		}
	}

	if ((D_80140C88_14FC38 != 0) && (D_80140C98_14FC48 != 0)) {
		D_80140C84_14FC34 = 1;
		if (D_8015FF80 == 5) {
			D_8015FF80 = 6;
			return;
		}

		if ((D_8004816E == 0) || (D_80048170 == 0)) {
			D_8015FF80 = 2;
			return;
		}

		D_8015FF80 = 4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_801306C4_13F674.s")
#endif

#ifdef NON_MATCHING
void func_80130BA0_13FB50(void)
{
	u8 scoreText[0x14];
	s32 temp;
	u8 progress;

	if (D_80140CA4_14FC54 != 0) {
		D_80140CA8_14FC58 = 0;
		D_8016006C[0] = 0;
		D_80160058 = 0;
		D_80140CA4_14FC54 = 0;
		temp = D_80052B2C->unk30;
		D_80160070 = temp;
		D_80140CAC_14FC5C = 0;
		D_80140CB0_14FC60 = 0;
		D_8016006C[1] = 0;

		D_8016005C = temp;
		if (D_80048170 == 0) {
			temp += 0x1388;
		}

		D_80160060 = temp;
		if (D_8004816E == 0) {
			D_80160064 = temp + 0x1388;
		} else {
			D_80160064 = temp;
		}
	}

	temp = D_80052B2C->unk30;
	if ((D_80160070 == temp) && (D_8016006C[0] == 0x1E)) {
		D_8016006C[0] = 0;
		D_8016006C[1] = 0;

		progress = D_80160058 + 1;
		if (progress < 4) {
			D_80160058 = progress;
		} else {
			D_80160058 = 4;
		}
	}

	if (D_80160070 == temp) {
		progress = D_8016006C[0] + 1;
		if (progress < 0x1E) {
			D_8016006C[0] = progress;
		} else {
			D_8016006C[0] = 0x1E;
		}
	} else {
		s32 score = temp + 0x64;

		if (D_80160070 < score) {
			D_80052B2C->unk30 = D_80160070;
		} else {
			D_80052B2C->unk30 = score;
		}

		func_800153D8_15FD8(0xCD);
		D_8016006C[0] = 0;
	}

	drawText(D_801454F0_1544A0, 0x400, 0x400);
	drawText(D_801454F8_1544A8, 0x7F, 0xC8, 0xDC, 0xFF);

	progress = D_80160058;
	if (progress > 0) {
		if (progress == 1) {
			func_8000577C_637C();
			D_80160070 = D_80160060;

			if (D_8016006C[1] < 0x15) {
				s32 x = D_8016006C[1] * 12;
				D_8016006C[1] = (u8)(D_8016006C[1] + 1);
				drawText(D_80145500_1544B0, x, D_8016006C[1]);
			} else {
				drawText(D_80145504_1544B4, 0xFF, D_8016006C[1]);
			}
		}

		switch (D_800313D0_31FD0) {
			case 2:
				drawText(D_80145520_1544D0, 2, 2);
				break;
			case 1:
				drawText(D_80145530_1544E0, 2, 2);
				break;
			default:
				drawText(D_80145508_1544B8, 2, 2);
				break;
		}

		if (D_80048170 == 0) {
			drawText(D_80145540_1544F0, 0x1D, 2, 0x1388);
		} else {
			drawText(D_80145548_1544F8, 0x1D, 2, 0);
		}

		progress = D_80160058;
	}

	if (progress >= 2) {
		if (progress == 2) {
			func_8000577C_637C();
			D_80160070 = D_80160064;

			if (D_8016006C[1] < 0x15) {
				s32 x = D_8016006C[1] * 12;
				D_8016006C[1] = (u8)(D_8016006C[1] + 1);
				drawText(D_80145550_154500, x, D_8016006C[1]);
			} else {
				drawText(D_80145554_154504, 0xFF, D_8016006C[1]);
			}
		}

		switch (D_800313D0_31FD0) {
			case 2:
				drawText(D_80145570_154520, 2, 3);
				break;
			case 1:
				drawText(D_80145588_154538, 2, 3);
				break;
			default:
				drawText(D_80145558_154508, 2, 3);
				break;
		}

		if (D_8004816E == 0) {
			drawText(D_801455A0_154550, 0x1D, 3, 0x1388);
		} else {
			drawText(D_801455A8_154558, 0x1D, 3, 0);
		}
	}

	if (D_80140CA8_14FC58 == 0) {
		D_80140CB0_14FC60 = func_8012F4E0_13E490(D_801455B0_154560, 0xA, 0x14, 0x26, D_80140C70_14FC20,
			D_80140CB0_14FC60 == 0, D_80140CAC_14FC5C == 0, 0x14);
	} else {
		D_80140CB0_14FC60 = func_8012F4E0_13E490(D_801455B8_154568, 0xA, 0x14, 0x26, D_80140C70_14FC20,
			D_80140CB0_14FC60 == 0, D_80140CAC_14FC5C == 0, 8);
	}
	D_80140CAC_14FC5C = 1;

	func_8012EAC0_13DA70(func_8012FFB0_13EF60(), scoreText);

	switch (D_800313D0_31FD0) {
		case 2:
			func_8012F4E0_13E490(D_801455C8_154578, 0x12, 0x18, 0x82, D_80140C70_14FC20, 0, 0, 0);
			break;
		case 1:
			func_8012F4E0_13E490(D_801455D0_154580, 0x12, 0x18, 0x82, D_80140C70_14FC20, 0, 0, 0);
			break;
		default:
			func_8012F4E0_13E490(D_801455C0_154570, 0x12, 0x18, 0x82, D_80140C70_14FC20, 0, 0, 0);
			break;
	}

	func_8012F4E0_13E490(scoreText, 0x14, 0x1E, 0xA2, D_80140C74_14FC24, 0, 0, 0x20);

	if (isButtonNewlyPressed(0, 0xD000) != 0) {
		if ((D_80140CB0_14FC60 == 0) || (D_80160058 < 3)) {
			D_80140CB0_14FC60 = 1;
			D_80140CAC_14FC5C = 0;
			D_80160058 = 3;
			D_80160070 = D_80160064;
			D_80052B2C->unk30 = D_80160064;
		} else {
			D_80140CA8_14FC58 = 1;
			D_80140CB0_14FC60 = 0;
			D_80160058 = 3;
		}
	}

	if ((D_80140CA8_14FC58 != 0) && (D_80140CB0_14FC60 != 0)) {
		D_80140CA4_14FC54 = 1;
		D_8015FF80 = 4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_80130BA0_13FB50.s")
#endif

// CURRENT(3070)
#ifdef NON_MATCHING
void func_80131280_140230(u8 *arg0)
{
	u8 scoreText[0x18];
	s32 temp;

	if (D_80140CB4_14FC64 != 0) {
		D_80140CB4_14FC64 = 0;
		D_80140CB8_14FC68 = 0;
		D_80140CBC_14FC6C = 0;
		D_80140CC0_14FC70 = 0;
		D_80140CC4_14FC74 = 0;
		D_80140CC8_14FC78 = 0;
		D_80140CD4_14FC84 = 0;
		D_80140CD8_14FC88 = 0;
		D_80140CCC_14FC7C = 0;
		D_80140CD0_14FC80 = 0;
		D_80140CDC_14FC8C = 0x82;
	}

	if (((s32) D_80140CDC_14FC8C >= 0x6F) && (D_80140CC0_14FC70 != 0)) {
		D_80140CDC_14FC8C -= 2;
	}

	func_8012EAC0_13DA70(func_8012FFB0_13EF60(), scoreText);

	if (D_80140CB8_14FC68 == 0) {
		temp = func_8012F4E0_13E490(arg0, 0xA, 0x14, 0x28, D_80140C70_14FC20, D_80140CC0_14FC70 == 0, D_80140CBC_14FC6C == 0, 0x14);
		D_80140CC0_14FC70 = temp;
		D_80140CBC_14FC6C = 1;
		if (temp != 0) {
			switch (D_800313D0_31FD0) {
			case 0:
			default:
				D_80140CC8_14FC78 = func_8012F4E0_13E490(D_801455D8_154588, 0x12, 0x18, 0x50, D_80140C70_14FC20, D_80140CC8_14FC78 == 0, D_80140CC4_14FC74 == 0, 0x14);
				break;
			case 2:
				D_80140CC8_14FC78 = func_8012F4E0_13E490(D_801455E0_154590, 0xF, 0x18, 0x6E, D_80140C70_14FC20, D_80140CC8_14FC78 == 0, D_80140CC4_14FC74 == 0, 0x14);
				break;
			case 1:
				D_80140CC8_14FC78 = func_8012F4E0_13E490(D_801455F0_1545A0, 0x12, 0x18, 0x6E, D_80140C70_14FC20, D_80140CC8_14FC78 == 0, D_80140CC4_14FC74 == 0, 0x14);
				break;
			}

			D_80140CC4_14FC74 = 1;
		}

		switch (D_800313D0_31FD0) {
		case 0:
		default:
			func_8012F4E0_13E490(D_801455F8_1545A8, 0x12, 0x18, D_80140CDC_14FC8C, D_80140C70_14FC20, 0, 0, 0);
			break;
		case 1:
			break;
		case 2:
			break;
		}

		D_80140CD4_14FC84 = func_80131858_140808(scoreText, 0x14, 0x1E, 0xA0, D_80140CD4_14FC84 == 0, D_80140CD8_14FC88 == 0);
		D_80140CD8_14FC88 = 1;
	} else {
		if (D_80140CC0_14FC70 == 0) {
			D_80140CC0_14FC70 = func_8012F4E0_13E490(arg0, 0xA, 0x14, 0x28, D_80140C70_14FC20, D_80140CC0_14FC70 == 0, D_80140CBC_14FC6C == 0, 8);
			D_80140CBC_14FC6C = 1;

			switch (D_800313D0_31FD0) {
			case 0:
			default:
				func_8012F4E0_13E490(D_80145600_1545B0, 0x12, 0x18, 0x50, D_80140C70_14FC20, 1, 0, 8);
				func_8012F4E0_13E490(D_80145608_1545B8, 0x12, 0x18, 0x6E, D_80140C70_14FC20, 1, 0, 8);
				break;
			case 2:
				func_8012F4E0_13E490(D_80145610_1545C0, 0xF, 0x18, 0x6E, D_80140C70_14FC20, 1, 0, 8);
				break;
			case 1:
				func_8012F4E0_13E490(D_80145620_1545D0, 0x12, 0x18, 0x50, D_80140C70_14FC20, 1, 0, 8);
				func_8012F4E0_13E490(D_80145628_1545D8, 0x12, 0x18, 0x6E, D_80140C70_14FC20, 1, 0, 8);
				break;
			}

			func_8012F4E0_13E490(scoreText, 0x14, 0x1E, 0x91, D_80140C74_14FC24, 1, 0, 0x28);
		}
	}

	if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_START | BUTTON_Z | BUTTON_A) != 0) {
		if ((D_80140CC0_14FC70 == 0) || (D_80140CC8_14FC78 == 0) || ((s32) D_80140CDC_14FC8C >= 0x6F) || (D_80140CD4_14FC84 == 0)) {
			D_80140CC0_14FC70 = 1;
			D_80140CBC_14FC6C = 0;
			D_80140CC8_14FC78 = 1;
			D_80140CC4_14FC74 = 0;
			D_80140CDC_14FC8C = 0x6E;
			D_80140CD4_14FC84 = 1;
		} else {
			D_80140CB8_14FC68 = 1;
			D_80140CBC_14FC6C = 0;
			D_80140CC0_14FC70 = 0;
			D_80140CC4_14FC74 = 0;
			D_80140CC8_14FC78 = 0;
			D_80140CCC_14FC7C = 0;
			D_80140CD0_14FC80 = 0;
		}
	}

	if ((D_80140CB8_14FC68 != 0) && (D_80140CC0_14FC70 != 0)) {
		D_80140CB4_14FC64 = 1;
		D_8015FF80 = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_80131280_140230.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_80131858_140808.s")
