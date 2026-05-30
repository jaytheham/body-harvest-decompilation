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
// CURRENT(305)
#ifdef NON_MATCHING
void func_8012EBC0_13DB70(u8 *arg0, u8 *arg1, u8 *arg2) {
	s16 i;
	s16 j;
	u32 ch;

	i = 0;
	if (*arg0 != 0) {
		do {
			arg2[i] = arg0[i];
			i++;
		} while (arg0[i] != 0);
	}
	j = i;
	i = 0;
	do {
		ch = arg1[i];
		arg2[j + i] = ch;
		i++;
	} while (ch > 0U);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012EBC0_13DB70.s")
#endif

// Load letter textures for end of stage window
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

// CURRENT(43415)
#ifdef NON_MATCHING
s32 func_8012F4E0_13E490(u8 *arg0, s32 arg1, s32 arg2, s32 arg3, u8 *arg4, s32 arg5, s32 arg6, u8 arg7)
{
	s32 i;
	s32 textWidth;
	s32 textLen;
	s32 x;
	s32 yTop;
	s32 allMatched;
	u8 pulseColor[4];
	s32 flags;

	allMatched = 1;
	flags = arg7;

	if (arg6 != 0) {
		s32 target;
		s32 idx;

		target = (flags & 4) ? 100 : 0;
		D_8015FF88 = target;

		for (idx = 0; idx < 48; idx++) {
			D_8015FF90[idx] = target;
		}
	}

	if (arg5 != 0) {
		for (i = 45; i >= 0; i--) {
			D_8015FF90[i + 2] = D_8015FF90[i];
		}
		D_8015FF90[0] = D_8015FF88;
	}

	if ((flags & 0x20) != 0) {
		func_8012F2DC_13E28C((s32) arg4, (s32) pulseColor, 5);
	}

	textLen = 0;
	textWidth = 0;
	while (arg0[textLen] != 0) {
		textWidth += arg1 + 2;
		if ((arg0[textLen] == 'i') || (arg0[textLen] == 'I') || (arg0[textLen] == '1')) {
			textWidth -= arg1 >> 1;
		}
		textLen++;
	}

	x = (D_80068084 >> 1) - (textWidth >> 1);

	for (i = 0; i < textLen; i++) {
		s32 endX;
		u8 ch;

		ch = arg0[i];
		if (func_8012EC3C_13DBEC(ch) == 0) {
			x += arg1 + 2;
			continue;
		}

		yTop = arg3 + arg2;
		if ((ch == 'i') || (ch == 'I') || (ch == '1')) {
			x -= arg1 >> 1;
		}

		if (arg5 != 0) {
			s32 halfW;
			s32 centerX;
			s32 rowBase;
			s32 band;

			halfW = arg1 >> 1;
			centerX = x + halfW;
			rowBase = i * 2;

			for (band = 7; band >= 0; band--) {
				s32 colIndex;
				s32 alpha;
				s32 sHalf;
				s32 bandHeight;
				s32 dsdx;
				s32 dtdy;
				s32 useBaseColor;

				colIndex = rowBase + band;
				if (colIndex >= 0x30) {
					osSyncPrintf(D_801453C0_154370);
				}

				if ((flags & 0x10) != 0) {
					alpha = D_8015FF90[(rowBase * 4) + band];
				} else {
					alpha = D_8015FF90[band];
				}

				if (((flags & 4) != 0) && (arg5 != 0) && (alpha == 0x5A) && ((flags & 0x10) != 0) && (band == 6)) {
					func_800153D8_15FD8(0xCD);
				}

				if (((flags & 4) != 0 && alpha != 0) || ((flags & 4) == 0 && alpha != 100)) {
					allMatched = 0;
				}

				sHalf = halfW - (s32) ((((f32) alpha) / 100.0f) * (f32) halfW);
				if (sHalf <= 0) {
					sHalf = 1;
				}

				useBaseColor = 0;
				if ((flags & 4) != 0) {
					if (alpha == 0) {
						useBaseColor = 1;
					}
				} else if (alpha == 100) {
					useBaseColor = 1;
				}

				if (useBaseColor || ((flags & 8) != 0)) {
					gDPSetPrimColor(D_8005BB2C++, 0, 0, arg4[0], arg4[1], arg4[2], 0xFF);
				} else {
					s32 fadeA;

					func_8012F24C_13E1FC(pulseColor, 5);
					fadeA = (s32) ((((f32) (7 - band)) / 7.0f) * 255.0f);
					gDPSetPrimColor(D_8005BB2C++, 0, 0, pulseColor[0], pulseColor[1], pulseColor[2], fadeA & 0xFF);
				}

				bandHeight = alpha;
				if ((flags & 8) != 0) {
					bandHeight = ((flags & 4) != 0) ? 0 : 100;
				}

				dsdx = (s32) ((1.0f / (((f32) (sHalf * 2)) / 32.0f)) * 1024.0f);
				dtdy = (s32) ((1.0f / (((f32) ((bandHeight * 2) + arg2)) / 32.0f)) * 1024.0f);

				gDPPipeSync(D_8005BB2C++);
				gSPTextureRectangle(
					D_8005BB2C++,
					(centerX - sHalf) << 2,
					(arg3 - bandHeight) << 2,
					(centerX + sHalf) << 2,
					(yTop + bandHeight) << 2,
					G_TX_RENDERTILE,
					0,
					0,
					dsdx,
					dtdy
				);
			}

			endX = x + arg1;
		} else {
			s32 dsdx;
			s32 dtdy;

			if ((flags & 0x20) != 0) {
				gDPSetPrimColor(D_8005BB2C++, 0, 0, pulseColor[0], pulseColor[1], pulseColor[2], 0xFF);
			} else {
				gDPSetPrimColor(D_8005BB2C++, 0, 0, arg4[0], arg4[1], arg4[2], 0xFF);
			}

			dsdx = (s32) ((1.0f / (((f32) arg1) / 32.0f)) * 1024.0f);
			dtdy = (s32) ((1.0f / (((f32) arg2) / 32.0f)) * 1024.0f);

			gDPPipeSync(D_8005BB2C++);
			gSPTextureRectangle(
				D_8005BB2C++,
				x << 2,
				arg3 << 2,
				(x + arg1) << 2,
				yTop << 2,
				G_TX_RENDERTILE,
				0,
				0,
				dsdx,
				dtdy
			);

			endX = x + arg1;
		}

		x = endX + 2;
	}

	if (arg5 != 0) {
		s32 target;
		s32 next;

		target = ((flags & 4) != 0) ? 0 : 100;

		if ((flags & 4) != 0) {
			next = D_8015FF88 - 10;
			if (next < target) {
				next = target;
			}
		} else {
			next = D_8015FF88 + 10;
			if (next > target) {
				next = target;
			}
		}

		D_8015FF88 = next;
	}

	return allMatched;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012F4E0_13E490.s")
#endif

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

// End of level state manager
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

// CURRENT(12218)
#ifdef NON_MATCHING
s32 func_80131858_140808(u8 *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
	s32 sp1AC;
	s16 sp198;
	s16 sp196;
	s16 sp194;
	s16 sp190;
	s16 sp18E;
	s16 sp18C;
	s32 sp180;
	s16 sp16C;
	u8 sp168[5];
	s32 sp8C;
	s32 sp88;
	s32 sp84;
	f32 temp_f10;
	s16 temp_s3;
	s32 temp_s5;
	s32 temp_s5_2;
	s16 temp_t1;
	s16 var_a2;
	s16 var_s3;
	s16 var_s7;
	s32 temp_a0;
	s32 temp_a0_3;
	s32 temp_t3;
	s32 temp_v0;
	s32 temp_v0_3;
	s32 temp_v0_4;
	s32 temp_v1;
	s32 var_a3;
	s32 var_ra;
	s32 var_s2;
	s32 var_s4;
	s32 var_t0;
	u8 *var_fp;
	u8 var_v0;
	Gfx *temp_a0_2;
	Gfx *temp_a1;
	Gfx *temp_a2;
	Gfx *temp_a3;
	Gfx *temp_s0;
	Gfx *temp_s0_10;
	Gfx *temp_s0_11;
	Gfx *temp_s0_12;
	Gfx *temp_s0_13;
	Gfx *temp_s0_14;
	Gfx *temp_s0_15;
	Gfx *temp_s0_16;
	Gfx *temp_s0_17;
	Gfx *temp_s0_18;
	Gfx *temp_s0_19;
	Gfx *temp_s0_20;
	Gfx *temp_s0_21;
	Gfx *temp_s0_22;
	Gfx *temp_s0_23;
	Gfx *temp_s0_24;
	Gfx *temp_s0_25;
	Gfx *temp_s0_26;
	Gfx *temp_s0_27;
	Gfx *temp_s0_28;
	Gfx *temp_s0_29;
	Gfx *temp_s0_2;
	Gfx *temp_s0_30;
	Gfx *temp_s0_31;
	Gfx *temp_s0_32;
	Gfx *temp_s0_33;
	Gfx *temp_s0_34;
	Gfx *temp_s0_35;
	Gfx *temp_s0_36;
	Gfx *temp_s0_37;
	Gfx *temp_s0_38;
	Gfx *temp_s0_39;
	Gfx *temp_s0_3;
	Gfx *temp_s0_40;
	Gfx *temp_s0_41;
	Gfx *temp_s0_42;
	Gfx *temp_s0_43;
	Gfx *temp_s0_44;
	Gfx *temp_s0_45;
	Gfx *temp_s0_46;
	Gfx *temp_s0_47;
	Gfx *temp_s0_4;
	Gfx *temp_s0_5;
	Gfx *temp_s0_6;
	Gfx *temp_s0_7;
	Gfx *temp_s0_8;
	Gfx *temp_s0_9;
	Gfx *temp_t5;
	Gfx *temp_v0_2;

	temp_s0 = D_8005BB2C;
	D_8005BB2C = temp_s0 + 1;
	temp_s0->words.w0 = 0xED08C000;
	var_s3 = 0;
	var_s2 = 0;
	temp_s0->words.w1 = (((s32) ((f32) (D_80068084 - 0x21) * 4.0f) & 0xFFF) << 12) | ((s32) ((f32) D_80068088 * 4.0f) & 0xFFF);
	var_v0 = *arg0;
	if (var_v0 != 0) {
		do {
			var_s2 = var_s2 + arg1 + 2;
			if (var_v0 == 0x31) {
				var_s2 -= arg1 >> 1;
			}
			var_s3 += 1;
			var_v0 = *(arg0 + var_s3);
		} while (var_v0 != 0);
	}

	sp8C = arg1 >> 1;
	if (arg5 != 0) {
		D_80140CE0_14FC90[0] = 0;
	}
	if (arg4 == 0) {
		D_80140CE0_14FC90[0] = 0xFFFF;
	}

	temp_s5 = (D_80068084 - (D_80140CE0_14FC90[0] * 6)) + 0x168;
	func_8012F2DC_13E28C((s32) D_80140C74_14FC24, (s32) sp168, 5);
	sp16C = var_s3;
	if (D_80140CE0_14FC90[0] >= 0x3D) {
		if ((temp_s5 >= 0) && (D_80068084 >= temp_s5)) {
			if (D_80140CE0_14FC90[0] == 0x46) {
				func_800153D8_15FD8(0x185);
			}

			temp_s0_2 = D_8005BB2C;
			D_8005BB2C = temp_s0_2 + 1;
			temp_s0_2->words.w0 = 0xE7000000;
			temp_s0_2->words.w1 = 0;

			temp_s0_3 = D_8005BB2C;
			D_8005BB2C = temp_s0_3 + 1;
			temp_s0_3->words.w0 = 0xBA001402;
			temp_s0_3->words.w1 = 0x00100000;

			temp_s0_4 = D_8005BB2C;
			D_8005BB2C = temp_s0_4 + 1;
			temp_s0_4->words.w0 = 0xB6000000;
			temp_s0_4->words.w1 = 0x00002000;

			temp_s0_5 = D_8005BB2C;
			D_8005BB2C = temp_s0_5 + 1;
			temp_s0_5->words.w0 = 0xB7000000;
			temp_s0_5->words.w1 = 0x00020000;

			temp_s0_6 = D_8005BB2C;
			D_8005BB2C = temp_s0_6 + 1;
			temp_s0_6->words.w0 = 0xBC000002;
			temp_s0_6->words.w1 = 0x80000040;

			temp_s0_7 = D_8005BB2C;
			D_8005BB2C = temp_s0_7 + 1;
			temp_s0_7->words.w0 = 0x03860010;
			temp_s0_7->words.w1 = (u32) D_80140C38_14FBE8;

			temp_s0_8 = D_8005BB2C;
			D_8005BB2C = temp_s0_8 + 1;
			temp_s0_8->words.w0 = 0x03880010;
			temp_s0_8->words.w1 = (u32) D_80140C30_14FBE0;

			temp_s0_9 = D_8005BB2C;
			D_8005BB2C = temp_s0_9 + 1;
			temp_s0_9->words.w0 = 0xB900031D;
			temp_s0_9->words.w1 = 0x0C084000;

			temp_s0_10 = D_8005BB2C;
			D_8005BB2C = temp_s0_10 + 1;
			temp_s0_10->words.w0 = 0xBA000E02;
			temp_s0_10->words.w1 = 0;

			temp_s0_11 = D_8005BB2C;
			D_8005BB2C = temp_s0_11 + 1;
			temp_s0_11->words.w0 = 0xFD08000F;
			temp_s0_11->words.w1 = (u32) D_5041480;

			temp_s0_12 = D_8005BB2C;
			D_8005BB2C = temp_s0_12 + 1;
			temp_s0_12->words.w0 = 0xF5080040;
			temp_s0_12->words.w1 = 0x07010040;

			temp_s0_13 = D_8005BB2C;
			D_8005BB2C = temp_s0_13 + 1;
			temp_s0_13->words.w0 = 0xE6000000;
			temp_s0_13->words.w1 = 0;

			temp_s0_14 = D_8005BB2C;
			D_8005BB2C = temp_s0_14 + 1;
			temp_s0_14->words.w0 = 0xF3000000;
			temp_s0_14->words.w1 = 0x071FF200;

			temp_s0_15 = D_8005BB2C;
			D_8005BB2C = temp_s0_15 + 1;
			temp_s0_15->words.w0 = 0xF5100840;
			temp_s0_15->words.w1 = 0x02010040;

			temp_s0_16 = D_8005BB2C;
			D_8005BB2C = temp_s0_16 + 1;
			temp_s0_16->words.w0 = 0xF2000000;
			temp_s0_16->words.w1 = 0x0203C03C;

			temp_s0_17 = D_8005BB2C;
			D_8005BB2C = temp_s0_17 + 1;
			temp_s0_17->words.w0 = 0xFD08000F;
			temp_s0_17->words.w1 = (u32) D_5040A80;

			temp_s0_18 = D_8005BB2C;
			D_8005BB2C = temp_s0_18 + 1;
			temp_s0_18->words.w0 = 0xF5080000;
			temp_s0_18->words.w1 = 0x07010040;

			temp_s0_19 = D_8005BB2C;
			D_8005BB2C = temp_s0_19 + 1;
			temp_s0_19->words.w0 = 0xE6000000;
			temp_s0_19->words.w1 = 0;

			temp_s0_20 = D_8005BB2C;
			D_8005BB2C = temp_s0_20 + 1;
			temp_s0_20->words.w0 = 0xF3000000;
			temp_s0_20->words.w1 = 0x071FF200;

			temp_s0_21 = D_8005BB2C;
			D_8005BB2C = temp_s0_21 + 1;
			temp_s0_21->words.w0 = 0xF5100800;
			temp_s0_21->words.w1 = 0x01010040;

			temp_s0_22 = D_8005BB2C;
			D_8005BB2C = temp_s0_22 + 1;
			temp_s0_22->words.w0 = 0xF2000000;
			temp_s0_22->words.w1 = 0x0103C03C;

			temp_s0_23 = D_8005BB2C;
			D_8005BB2C = temp_s0_23 + 1;
			temp_s0_23->words.w0 = 0xE7000000;
			temp_s0_23->words.w1 = 0;

			sp194 = temp_s5;
			sp198 = 0;
			temp_s3 = (D_80140CE0_14FC90[0] & 0xE) >> 1;
			sp196 = arg3 + 0x1E;
			sp18C = 0;
			sp18E = 0;
			sp190 = 0;
			func_800039D0_45D0((Unk80052B40 *) &sp194, (Unk80052B40 *) &sp18C, (Unk80052B40 *) D_80140C68_14FC18, D_8005BB38);

			temp_s0_24 = D_8005BB2C;
			D_8005BB2C = temp_s0_24 + 1;
			temp_s0_24->words.w0 = 0x01020040;
			temp_s0_24->words.w1 = D_8005BB38 & 0x1FFFFFFF;

			temp_a0 = D_8005BB38 + 0x40;
			D_8005BB38 = temp_a0;
			guRotateRPY((Mtx *) temp_a0, 0.0f, 90.0f, 180.0f);

			temp_s0_25 = D_8005BB2C;
			D_8005BB2C = temp_s0_25 + 1;
			temp_s0_25->words.w0 = 0x01000040;
			temp_s0_25->words.w1 = D_8005BB38 & 0x1FFFFFFF;

			temp_s0_26 = D_8005BB2C;
			D_8005BB38 += 0x40;
			D_8005BB2C = temp_s0_26 + 1;
			temp_s0_26->words.w0 = 0x06000000;
			temp_s0_26->words.w1 = D_80140C48_14FBF8[temp_s3];
		}
	}

	var_s7 = ((D_80068084 / 2) - (var_s2 >> 1)) + sp8C;
	if ((D_80140CE0_14FC90[0] >= 0x60) && (D_80140CE0_14FC90[0] < 0xBE)) {
		temp_v0 = D_80140CE0_14FC90[0] - 0x5F;
		if ((temp_v0 % 6) == 0) {
			func_800153D8_15FD8((s16) (((temp_v0 % 12) / 6) + 0xAC));
		}
	}

	sp1AC = 0;
	var_ra = 0x5A;
	if (sp16C > 0) {
		sp88 = 0;
		var_fp = arg0;
		var_s4 = sp180;
		while (1) {
			temp_s5_2 = (D_80068084 - ((D_80140CE0_14FC90[0] - sp88) * 6)) + 0x21C;
			if (*var_fp == 0x31) {
				var_s7 -= sp8C;
			}

			if ((var_ra < D_80140CE0_14FC90[0]) && (temp_s5_2 >= 0) && (D_80068084 >= temp_s5_2)) {
				sp84 = var_ra;
				temp_s0_27 = D_8005BB2C;
				temp_f10 = (f32) sins((u16) ((((D_80140CE0_14FC90[0] + sp1AC) % 8) << 13) & 0xFFFF));
				D_8005BB2C = temp_s0_27 + 1;
				sp180 = (s32) ((f32) (((f64) temp_f10 / 32768.0) * 32.0) / 2.0f);
				temp_s0_27->words.w0 = 0xE7000000;
				temp_s0_27->words.w1 = 0;

				temp_a0_2 = D_8005BB2C;
				D_8005BB2C = temp_a0_2 + 1;
				temp_a0_2->words.w0 = 0xB6000000;
				temp_a0_2->words.w1 = 0x00013000;

				temp_a1 = D_8005BB2C;
				D_8005BB2C = temp_a1 + 1;
				temp_a1->words.w0 = 0xB7000000;
				temp_a1->words.w1 = 0x00020000;

				temp_a2 = D_8005BB2C;
				D_8005BB2C = temp_a2 + 1;
				temp_a2->words.w0 = 0x06000000;
				temp_a2->words.w1 = (u32) D_80031230;

				temp_a3 = D_8005BB2C;
				D_8005BB2C = temp_a3 + 1;
				temp_a3->words.w0 = 0xBA000E02;
				temp_a3->words.w1 = 0;

				temp_s0_28 = D_8005BB2C;
				D_8005BB2C = temp_s0_28 + 1;
				temp_s0_28->words.w0 = 0xBB000001;
				temp_s0_28->words.w1 = 0x80008000;

				temp_s0_29 = D_8005BB2C;
				D_8005BB2C = temp_s0_29 + 1;
				temp_s0_29->words.w0 = 0xB900031D;
				temp_s0_29->words.w1 = 0x00404240;

				temp_s0_30 = D_8005BB2C;
				sp194 = temp_s5_2;
				sp196 = arg3 + 0x1E;
				sp198 = 0;
				D_8005BB2C = temp_s0_30 + 1;
				temp_s0_30->words.w0 = 0xBC00000A;
				temp_s0_30->words.w1 = 0x80E580FF;

				temp_t5 = D_8005BB2C;
				D_8005BB2C = temp_t5 + 1;
				temp_t5->words.w0 = 0xBC00040A;
				var_s4 = sp180;
				temp_t5->words.w1 = 0x80E580FF;

				temp_v0_2 = D_8005BB2C;
				D_8005BB2C = temp_v0_2 + 1;
				temp_v0_2->words.w0 = 0xBC00200A;
				temp_v0_2->words.w1 = 0x407F40FF;

				temp_s0_31 = D_8005BB2C;
				D_8005BB2C = temp_s0_31 + 1;
				temp_s0_31->words.w0 = 0xBC00240A;
				temp_s0_31->words.w1 = 0x407F40FF;

				temp_t1 = D_800311A0.unk2;
				D_800311A0.unk2 = temp_t1 + var_s4;

				temp_s0_32 = D_8005BB2C;
				sp18C = D_800311A0.unk0;
				sp18E = temp_t1;
				sp190 = D_800311A0.unk4;
				temp_t3 = var_s4 / 2;
				D_800311A0.unk0 -= temp_t3;
				D_800311A0.unk4 -= temp_t3;
				D_800311A0.unk0 = (s16) ((f64) D_800311A0.unk0 * 2.5);
				D_800311A0.unk2 = (s16) ((f64) D_800311A0.unk2 * -2.5);
				D_8005BB2C = temp_s0_32 + 1;
				D_800311A0.unk4 = (s16) ((f64) D_800311A0.unk4 * 2.5);
				temp_s0_32->words.w0 = 0xFD70000F;
				temp_s0_32->words.w1 = (u32) ((((D_80052A8C % 7U) << 9) + (u32) D_503CF60) & 0x1FFFFFFF);

				sp84 = var_ra;
				func_800039D0_45D0((Unk80052B40 *) &sp194, (Unk80052B40 *) &sp18C, (Unk80052B40 *) &D_800311A0, D_8005BB38);

				temp_s0_33 = D_8005BB2C;
				D_8005BB2C = temp_s0_33 + 1;
				temp_s0_33->words.w0 = 0x01020040;
				temp_s0_33->words.w1 = D_8005BB38 & 0x1FFFFFFF;

				temp_a0_3 = D_8005BB38 + 0x40;
				D_8005BB38 = temp_a0_3;
				guRotate((Mtx *) temp_a0_3, 90.0f, 0.0f, 1.0f, 0.0f);

				temp_s0_34 = D_8005BB2C;
				var_ra = sp84;
				D_8005BB2C = temp_s0_34 + 1;
				temp_s0_34->words.w0 = 0x01000040;
				temp_s0_34->words.w1 = D_8005BB38 & 0x1FFFFFFF;

				temp_s0_35 = D_8005BB2C;
				D_8005BB38 += 0x40;
				D_8005BB2C = temp_s0_35 + 1;
				temp_s0_35->words.w0 = 0xE7000000;
				temp_s0_35->words.w1 = 0;

				temp_s0_36 = D_8005BB2C;
				D_8005BB2C = temp_s0_36 + 1;
				temp_s0_36->words.w0 = 0x06000000;
				temp_s0_36->words.w1 = D_80256750;

				D_800311A0.unk0 = sp18C;
				D_800311A0.unk2 = sp18E;
				D_800311A0.unk4 = sp190;
			}

			if ((var_ra < D_80140CE0_14FC90[0]) && (D_80068084 >= temp_s5_2)) {
				sp84 = var_ra;
				if (func_8012EC3C_13DBEC(*var_fp) != 0) {
					temp_v1 = arg3 - (arg2 >> 1);
					var_a2 = var_s7;
					if (temp_s5_2 < var_s7) {
						var_t0 = (temp_v1 * 4) & 0xFFF;
						var_a3 = ((temp_v1 + arg2) * 4) & 0xFFF;
						var_s4 = 0;
					} else {
						temp_v0_3 = temp_v1 - (var_s4 >> 1);
						var_a3 = ((temp_v0_3 + arg2) * 4) & 0xFFF;
						var_t0 = (temp_v0_3 * 4) & 0xFFF;
						if (*var_fp == 0x31) {
							var_a2 = temp_s5_2 - sp8C;
						} else {
							var_a2 = temp_s5_2;
						}
					}

					temp_s0_37 = D_8005BB2C;
					D_8005BB2C = temp_s0_37 + 1;
					temp_s0_37->words.w0 = 0xE7000000;
					temp_s0_37->words.w1 = 0;

					temp_s0_38 = D_8005BB2C;
					D_8005BB2C = temp_s0_38 + 1;
					temp_s0_38->words.w0 = 0xB6000000;
					temp_s0_38->words.w1 = 0x00020000;

					temp_s0_39 = D_8005BB2C;
					D_8005BB2C = temp_s0_39 + 1;
					temp_s0_39->words.w0 = 0xB900031D;
					temp_s0_39->words.w1 = 0x00504240;

					temp_s0_40 = D_8005BB2C;
					D_8005BB2C = temp_s0_40 + 1;
					temp_s0_40->words.w0 = 0xFC119623;
					temp_s0_40->words.w1 = 0xFF2FFFFF;

					if (var_a2 == var_s7) {
						temp_s0_41 = D_8005BB2C;
						D_8005BB2C = temp_s0_41 + 1;
						temp_s0_41->words.w0 = 0xFA000000;
						temp_s0_41->words.w1 = (sp168[2] << 8) | (sp168[0] << 24) | (sp168[1] << 16) | 0xFF;
					} else {
						temp_s0_42 = D_8005BB2C;
						D_8005BB2C = temp_s0_42 + 1;
						temp_s0_42->words.w0 = 0xFA000000;
						temp_s0_42->words.w1 = (D_80140C74_14FC24[2] << 8) | (D_80140C74_14FC24[0] << 24) | (D_80140C74_14FC24[1] << 16) | 0xFF;
					}

					temp_s0_43 = D_8005BB2C;
					D_8005BB2C = temp_s0_43 + 1;
					temp_s0_43->words.w0 = ((((sp8C + var_a2) * 4) & 0xFFF) << 12) | 0xE4000000 | var_a3;
					temp_s0_43->words.w1 = ((((var_a2 - sp8C) * 4) & 0xFFF) << 12) | var_t0;

					temp_s0_44 = D_8005BB2C;
					D_8005BB2C = temp_s0_44 + 1;
					temp_s0_44->words.w0 = 0xB4000000;
					temp_s0_44->words.w1 = 0;

					temp_s0_45 = D_8005BB2C;
					D_8005BB2C = temp_s0_45 + 1;
					temp_s0_45->words.w0 = 0xB3000000;
					temp_s0_45->words.w1 = ((s32) ((1.0f / ((f32) arg1 / 32.0f)) * 1024.0f) << 16) |
									   ((s32) ((1.0f / ((f32) arg2 / 32.0f)) * 1024.0f) & 0xFFFF);
				}
			}

			temp_v0_4 = sp1AC + 1;
			if ((sp16C == temp_v0_4) && (temp_s5_2 <= 0)) {
				D_80140CE0_14FC90[0] = 0;
				return 1;
			}

			var_ra += 0xA;
			var_fp += 1;
			sp88 += 0xA;
			sp1AC = temp_v0_4;
			var_s7 = var_s7 + arg1 + 2;
			if (temp_v0_4 == sp16C) {
				sp180 = var_s4;
				break;
			}
		}
	}

	if (D_80140CE0_14FC90[0] < 0xFFFF) {
		D_80140CE0_14FC90[0] += 1;
	}

	temp_s0_46 = D_8005BB2C;
	D_8005BB2C = temp_s0_46 + 1;
	temp_s0_46->words.w0 = 0xE7000000;
	temp_s0_46->words.w1 = 0;

	temp_s0_47 = D_8005BB2C;
	D_8005BB2C = temp_s0_47 + 1;
	temp_s0_47->words.w0 = 0xED000000;
	temp_s0_47->words.w1 = (((s32) ((f32) D_80068084 * 4.0f) & 0xFFF) << 12) | ((s32) ((f32) D_80068088 * 4.0f) & 0xFFF);
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_80131858_140808.s")
#endif
