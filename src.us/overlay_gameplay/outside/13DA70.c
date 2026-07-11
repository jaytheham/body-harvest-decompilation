#include <ultra64.h>
#include "common.h"

const char D_801453C0_154370[] = "*** DrawStretchyWord() needs a bigger stretch array!! (see John G) ***\n";
const char D_80145408_1543B8[] = "%X%Y\n";
const char D_80145410_1543C0[] = "%W";
const char D_80145414_1543C4[] = "processor destroyed";
const char D_80145428_1543D8[] = "prozessor zerst\x3Art";
const char D_8014543C_1543EC[] = "processeur d\xe9truit";
const char D_80145450_154400[] = " stage ";
const char D_80145458_154408[] = " level ";
const char D_80145460_154410[] = " niveau ";
const char D_8014546C_15441C[] = "boss destroyed";
const char D_8014547C_15442C[] = "bo\x26 zerst\x3Art";
const char D_8014548C_15443C[] = "boss d\xe9truit";
const char D_8014549C_15444C[] = " complete";
const char D_801454A8_154458[] = " beendet";
const char D_801454B4_154464[] = " termin\xe9";
const char D_801454C0_154470[] = "score";
const char D_801454C8_154478[] = "punkte";
const char D_801454D0_154480[] = "score";
const char D_801454D8_154488[] = "score";
const char D_801454E0_154490[] = "punkte";
const char D_801454E8_154498[] = "score";
const char D_801454F0_1544A0[] = "%H%V";
const char D_801454F8_1544A8[] = "%C%a";
const char D_80145500_1544B0[] = "%a";
const char D_80145504_1544B4[] = "%a";
const char D_80145508_1544B8[] = "%@No people killed:\n";
const char D_80145520_1544D0[] = "%@Keine toten:\n";
const char D_80145530_1544E0[] = "%@Pas de mort:\n";
const char D_80145540_1544F0[] = "%@%d\n";
const char D_80145548_1544F8[] = "%@%d\n";
const char D_80145550_154500[] = "%a";
const char D_80145554_154504[] = "%a";
const char D_80145558_154508[] = "%@No people harvested:\n";
const char D_80145570_154520[] = "%@Keine gesammelten:\n";
const char D_80145588_154538[] = "%@Pas de prisonnier:\n";
const char D_801455A0_154550[] = "%@%d\n";
const char D_801455A8_154558[] = "%@%d\n";
const char D_801455B0_154560[] = "bonus";
const char D_801455B8_154568[] = "bonus";
const char D_801455C0_154570[] = "score";
const char D_801455C8_154578[] = "punkte";
const char D_801455D0_154580[] = "score";
const char D_801455D8_154588[] = "total";
const char D_801455E0_154590[] = "gesamtpunkte";
const char D_801455F0_1545A0[] = "score";
const char D_801455F8_1545A8[] = "score";
const char D_80145600_1545B0[] = "total";
const char D_80145608_1545B8[] = "score";
const char D_80145610_1545C0[] = "gesamtpunkte";
const char D_80145620_1545D0[] = "score";
const char D_80145628_1545D8[] = "total";

const f32 D_80145630_1545E0[1] = {65535.0f};

const u32 jtbl_80145634_1545E4[] = {0x80130420, 0x80130430, 0x80130490, 0x801306B4, 0x801304A0, 0x801305A8, 0x80130608};

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
s32 D_80140C7C_14FC2C = 0;
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

// https://decomp.me/scratch/3FWe6
/* Concatenates two strings (arg0 + arg1) into the output buffer arg2 */
void func_8012EBC0_13DB70(u8 *arg0, u8 *arg1, u8 *arg2) {
	s16 i;
	s16 j;

	i = 0;
	if (*arg0 != 0) {
		do {
			arg2[i] = arg0[i], i++;
		} while (arg0[i] != 0);
	}
	j = i;
	i = 0;
	do {
		arg2[j + i] = arg1[i];
	} while (arg1[i++] != 0U);
}

// Load letter textures for end of stage window
s32 func_8012EC3C_13DBEC(u8 ch)
{
	s32 index;
	if (ch == 0x20)
	{
		return 0;
	}
	if (ch == 0xE9)
	{
		gDPSetTextureImage(D_8005BB2C++, 3, G_IM_SIZ_16b, 1, ((u32)D_505A0A0) & 0x1FFFFFFF);
		gDPSetTile(D_8005BB2C++, 3, G_IM_SIZ_16b, 0, 0, 7, 0, 0 | 0, 0, 0, 0 | 0, 0, 0);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, 7, 0, 0, 255, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, 3, G_IM_SIZ_4b, 2, 0, 0, 0, 0 | 0, 0, 0, 0 | 0, 0, 0);
		gDPSetTileSize(D_8005BB2C++, 0, 0, 0, 31 << 2, 31 << 2);
		return 1;
	}
	else if (ch == 0xE8)
	{
		gDPSetTextureImage(D_8005BB2C++, 3, G_IM_SIZ_16b, 1, ((u32)D_505A2A0) & 0x1FFFFFFF);
		gDPSetTile(D_8005BB2C++, 3, G_IM_SIZ_16b, 0, 0, 7, 0, 0 | 0, 0, 0, 0 | 0, 0, 0);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, 7, 0, 0, 255, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, 3, G_IM_SIZ_4b, 2, 0, 0, 0, 0 | 0, 0, 0, 0 | 0, 0, 0);
		gDPSetTileSize(D_8005BB2C++, 0, 0, 0, 31 << 2, 31 << 2);
		return 1;
	}
	else if (ch == 0x26)
	{
		gDPSetTextureImage(D_8005BB2C++, 3, G_IM_SIZ_16b, 1, ((u32)D_5059EA0) & 0x1FFFFFFF);
		gDPSetTile(D_8005BB2C++, 3, G_IM_SIZ_16b, 0, 0, 7, 0, 0 | 0, 0, 0, 0 | 0, 0, 0);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, 7, 0, 0, 255, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, 3, G_IM_SIZ_4b, 2, 0, 0, 0, 0 | 0, 0, 0, 0 | 0, 0, 0);
		gDPSetTileSize(D_8005BB2C++, 0, 0, 0, 31 << 2, 31 << 2);
		return 1;
	}
	else if (ch == 0x3A)
	{
		gDPSetTextureImage(D_8005BB2C++, 3, G_IM_SIZ_16b, 1, ((u32)D_505A4A0) & 0x1FFFFFFF);
		gDPSetTile(D_8005BB2C++, 3, G_IM_SIZ_16b, 0, 0, 7, 0, 0 | 0, 0, 0, 0 | 0, 0, 0);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, 7, 0, 0, 255, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, 3, G_IM_SIZ_4b, 2, 0, 0, 0, 0 | 0, 0, 0, 0 | 0, 0, 0);
		gDPSetTileSize(D_8005BB2C++, 0, 0, 0, 31 << 2, 31 << 2);
		return 1;
	}
	if ((ch >= 0x41) && (ch < 0x5B))
	{
		index = ch - 0x41;
	}
	else
	{
		index = ch - 0x61;
	}
	if ((index >= 0) && (index < 0x1A))
	{
		u32 *texture;
		texture = &D_80140BC8_14FB78[index];
		if ((*texture) != 0)
		{
			gDPSetTextureImage(D_8005BB2C++, 3, G_IM_SIZ_16b, 1, (*texture) & 0x1FFFFFFF);
			gDPSetTile(D_8005BB2C++, 3, G_IM_SIZ_16b, 0, 0, 7, 0, 0 | 0, 0, 0, 0 | 0, 0, 0);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, 7, 0, 0, 255, 1024);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, 3, G_IM_SIZ_4b, 2, 0, 0, 0, 0 | 0, 0, 0, 0 | 0, 0, 0);
			gDPSetTileSize(D_8005BB2C++, 0, 0, 0, 31 << 2, 31 << 2);
			return 1;
		}
		return 0;
	}
	index = ch - 0x30;
	if ((index >= 0) && (index < 0xA))
	{
		u32 *texture;
		texture = &D_80140BA0_14FB50[index];
		if ((*texture) != 0)
		{
			gDPSetTextureImage(D_8005BB2C++, 3, G_IM_SIZ_16b, 1, (*texture) & 0x1FFFFFFF);
			gDPSetTile(D_8005BB2C++, 3, G_IM_SIZ_16b, 0, 0, 7, 0, 0 | 0, 0, 0, 0 | 0, 0, 0);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, 7, 0, 0, 255, 1024);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, 3, G_IM_SIZ_4b, 2, 0, 0, 0, 0 | 0, 0, 0, 0 | 0, 0, 0);
			gDPSetTileSize(D_8005BB2C++, 0, 0, 0, 31 << 2, 31 << 2);
			return 1;
		}
	}
	return 0;
}

// https://decomp.me/scratch/RaB1d
// This does match but doesn't compile right at the moment:
// this requires D_8015FF84 as a function static so this may cause .bss issues
// shouldn't be a problem if you match the entire TU / file
// CURRENT(0)
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

// CURRENT(1100)
#ifdef NON_MATCHING
void func_8012F2DC_13E28C(s32 src, s32 dst, s32 increment)
{
	f32 cosVal;
	u8 i;
	u32 angle;

	if ((f32)coss(((D_80140C78_14FC28 * 1000) & 0xFFFF)) / 32768.0 >= 0.0) {
		angle = (D_80140C78_14FC28 * 1000) & 0xFFFF;
		cosVal = (f32)coss(angle) / 32768.0;
	} else {
		angle = (D_80140C78_14FC28 * 1000) & 0xFFFF;
		cosVal = -((f32)coss(angle) / 32768.0);
	}

	for (i = 0; i < 3; i++) {
		((u8 *)dst)[i] = (u8)((u32)((0xFF - ((u8 *)src)[i]) * cosVal) + ((u8 *)src)[i]);
	}

	D_80140C78_14FC28 += increment;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012F2DC_13E28C.s")
#endif

// CURRENT(31894)
#ifdef NON_MATCHING
s32 func_8012F4E0_13E490(u8 *arg0, s32 arg1, s32 arg2, s32 arg3, u8 *arg4, s32 arg5, s32 arg6, u8 arg7)
{
	s32 i;
	s32 textWidth;
	u8 textLen;
	s32 x;
	s32 allMatched;
	u8 pulseColor[4];
	s32 flags;

	allMatched = 1;
	flags = arg7;

	if (arg6 != 0) {
		s32 idx;

		if ((flags & 4) != 0) {
			D_8015FF88 = 100;
		} else {
			D_8015FF88 = 0;
		}

		for (idx = 0; &D_8015FF90[idx] != (s32 *) &D_80160050; idx += 4) {
			if ((flags & 4) != 0) {
				D_8015FF90[idx] = 100;
			} else {
				D_8015FF90[idx] = 0;
			}

			if ((flags & 4) != 0) {
				D_8015FF90[idx + 1] = 100;
			} else {
				D_8015FF90[idx + 1] = 0;
			}

			if ((flags & 4) != 0) {
				D_8015FF90[idx + 2] = 100;
			} else {
				D_8015FF90[idx + 2] = 0;
			}

			if ((flags & 4) != 0) {
				D_8015FF90[idx + 3] = 100;
			} else {
				D_8015FF90[idx + 3] = 0;
			}
		}
	}

	if (arg5 != 0) {
		for (i = 18; i >= 0; i--) {
			D_8015FF90[i + 1] = D_8015FF90[i];
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

	x = (D_80068084 / 2) - (textWidth >> 1);

	for (i = 0; i < textLen; i++) {
		u8 ch;

		ch = arg0[i];
		if (func_8012EC3C_13DBEC(ch) == 0) {
			x += arg1 + 2;
			continue;
		}

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

				colIndex = rowBase + band;
				if (colIndex >= 0x30) {
					osSyncPrintf(&D_801453C0_154370);
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

				if ((((flags & 4) != 0) && (alpha == 0)) || (((flags & 4) == 0) && (alpha == 100)) || ((flags & 8) != 0)) {
					gDPSetPrimColor(D_8005BB2C++, 0, 0, arg4[0], arg4[1], arg4[2], 0xFF);
				} else {
					func_8012F24C_13E1FC(pulseColor, 5);
					gDPSetPrimColor(D_8005BB2C++, 0, 0, pulseColor[0], pulseColor[1], pulseColor[2], ((s32) ((((f32) (7 - band)) / 7.0f) * 255.0f)) & 0xFF);
				}

				bandHeight = alpha;
				if ((flags & 8) != 0) {
					bandHeight = ((flags & 4) != 0) ? 0 : 100;
				}

				gDPPipeSync(D_8005BB2C++);
				gSPTextureRectangle(
					D_8005BB2C++,
					(centerX - sHalf) << 2,
					(arg3 - bandHeight) << 2,
					(centerX + sHalf) << 2,
					(arg3 + arg2 + bandHeight) << 2,
					G_TX_RENDERTILE,
					0,
					0,
					(s32) ((1.0f / (((f32) (sHalf * 2)) / 32.0f)) * 1024.0f),
					(s32) ((1.0f / (((f32) ((bandHeight * 2) + arg2)) / 32.0f)) * 1024.0f)
				);
			}

			x += arg1;
		} else {
			if ((flags & 0x20) != 0) {
				gDPSetPrimColor(D_8005BB2C++, 0, 0, pulseColor[0], pulseColor[1], pulseColor[2], 0xFF);
			} else {
				gDPSetPrimColor(D_8005BB2C++, 0, 0, arg4[0], arg4[1], arg4[2], 0xFF);
			}

			gDPPipeSync(D_8005BB2C++);
			gSPTextureRectangle(
				D_8005BB2C++,
				x << 2,
				arg3 << 2,
				(x + arg1) << 2,
				(arg3 + arg2) << 2,
				G_TX_RENDERTILE,
				0,
				0,
				(s32) ((1.0f / (((f32) arg1) / 32.0f)) * 1024.0f),
				(s32) ((1.0f / (((f32) arg2) / 32.0f)) * 1024.0f)
			);

			x += arg1;
		}

		x += 2;
	}

	if (arg5 != 0) {
		s32 target;
		s32 next;

		if ((flags & 4) != 0) {
			target = ((flags & 4) != 0) ? 0 : 100;
			next = D_8015FF88 - 10;
			if (next < target) {
				D_8015FF88 = ((flags & 4) != 0) ? 0 : 100;
			} else {
				D_8015FF88 = next;
			}
		} else {
			target = ((flags & 4) != 0) ? 0 : 100;
			next = D_8015FF88 + 10;
			if (target < next) {
				D_8015FF88 = ((flags & 4) != 0) ? 0 : 100;
			} else {
				D_8015FF88 = next;
			}
		}
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

// CURRENT(7370)
#ifdef NON_MATCHING
// End of level state manager
void func_8013001C_13EFCC(void)
{
	u8 levelText[0x18];     // Buffer for assembling stage/level name text
	s16 rectLeft;           // Left edge of the fade rectangle
	s16 rectTop;            // Top edge of the fade rectangle
	s16 rectRight;          // Right edge of the fade rectangle
	s16 rectBottom;         // Bottom edge of the fade rectangle
	s32 fadeSum;            // Computed next fade phase
	s32 fadeCopy;           // Saved copy of the fade phase
	s32 language;           // Language index (0=English, 1=French, 2=German)
	u8* levelName;          // Pointer to the localized stage/level name string

	if (gameplayMode == 10) {
		if (D_80140C80_14FC30 != 0) {
			// Fade-out in progress: once the fade finishes, move to the next state
			if (D_80140C7C_14FC2C > 0) {
				D_80160050 = -0x1000;
			} else {
				D_8013D580_14C530 = 1;
				D_80140C80_14FC30 = 0;
			}
		} else if (D_80140C7C_14FC2C == 0) {
			// Start fade-in and choose which end-of-level screen to show
			if (D_80052ACA == 2) {
				D_8015FF80 = 5;
			} else {
				D_8015FF80 = 1;
			}
			D_80140C7C_14FC2C = 0x400;
			D_80160050 = 0x1000;
		}
	}

	// Animate the fade (either fading in or fading out)
	if (D_80140C7C_14FC2C > 0) {
		// Convert the fade phase to a brightness value (0–180) for the screen
		func_8012FE6C_13EE1C((s16)(((f32)(s32)D_80140C7C_14FC2C / 65535.0f) * 180.0f));

		// Configure RDP for simple 2D rendering (no lighting, culling, or fog)
		gDPPipeSync(D_8005BB2C++);
		gDPTileSync(D_8005BB2C++);
		gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BOTH | G_FOG | G_LIGHTING);
		gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
		gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
		gDPSetRenderMode(D_8005BB2C++, G_RM_TEX_EDGE, G_RM_TEX_EDGE2);

		// Draw a coloured rectangle that shrinks/grows with the fade
		rectLeft   = func_80006520_7120((s16)(D_80068084 * 2), 0x70, (u16)D_80140C7C_14FC2C);
		rectTop    = rectLeft + func_80006520_7120(0, (s16)((D_80068084 * 4) - 0xE0), (u16)D_80140C7C_14FC2C);
		rectRight  = func_80006520_7120((s16)(D_80068088 * 2), 0x60, (u16)D_80140C7C_14FC2C);
		rectBottom = rectRight + func_80006520_7120(0, (s16)((D_80068088 * 4) - 0xC0), (u16)D_80140C7C_14FC2C);
		gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x8C, 0x96, 0xF0, 0xAA);
		func_800092B8_9EB8(rectLeft, rectRight, rectTop, rectBottom, 0);

		// Advance the fade phase by the current step direction
		fadeSum = (s32)D_80140C7C_14FC2C + D_80160050;
		fadeCopy = fadeSum;
		if ((fadeSum >= 0x10000) && (D_80160050 > 0)) {
			D_80160050 = 0;
			D_80140C7C_14FC2C = 0xFFFF;
		} else if ((fadeSum > 0) || (D_80160050 >= 0)) {
			D_80140C7C_14FC2C = fadeCopy;
		} else {
			D_80160050 = 0;
			D_80140C7C_14FC2C = 0;
		}
	}

	// If the fade hasn't reached its fully-lit target (0xFFFF), keep drawing
	if (D_80140C7C_14FC2C != 0xFFFF) {
		return;
	}

	// -- Fade complete: draw the end-of-level screen content --
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
	drawText(D_80145408_1543B8, 0, 0);
	drawText(D_80145410_1543C0, (D_80068084 / 2) - 0x82, (D_80068088 / 2) - 0x64, (D_80068084 / 2) + 0x82, (D_80068088 / 2) + 0x64);

	// Dispatch based on which end-of-level screen state is active
	switch (D_8015FF80) {
	case 0:
		// Initial state — signal fade-out on the next frame
		D_80140C80_14FC30 = 1;
		break;

	case 1:
		// Show "processor destroyed" message (localised)
		language = D_800313D0_31FD0;
		switch (language) {
		case 1:
			func_801306C4_13F674(D_8014543C_1543EC);
			break;
		case 2:
			func_801306C4_13F674(D_80145428_1543D8);
			break;
		case 0:
		default:
			func_801306C4_13F674(D_80145414_1543C4);
			break;
		}
		return;

	case 2:
		// Show the bonus/score tally screen
		func_80130BA0_13FB50();
		return;

	case 3:
		// Unused state
		break;

	case 4:
		// Show "Stage / Level / Niveau N" label (localised)
		language = D_800313D0_31FD0;
		switch (language) {
		case 1:
			levelName = D_80031508[currentLevel];
			func_8012EBC0_13DB70(levelName, D_80145460_154410, levelText);
			break;
		case 2:
			levelName = D_80031520[currentLevel];
			func_8012EBC0_13DB70(levelName, D_80145458_154408, levelText);
			break;
		case 0:
		default:
			levelName = D_800314F0[currentLevel];
			func_8012EBC0_13DB70(levelName, D_80145450_154400, levelText);
			break;
		}

		// Append the stage number digit
		if ((currentLevel == 4) && (func_8000726C_7E6C(0x14) != 0)) {
			levelText[0x14] = '4';
		} else {
			levelText[0x14] = (u8)(D_80047F94 + '1');
		}
		levelText[0x15] = '\0';
		func_8012EBC0_13DB70(levelText, &levelText[0x14], levelText);
		func_80131280_140230(levelText);
		return;

	case 5:
		// Show "boss destroyed" message (localised)
		language = D_800313D0_31FD0;
		switch (language) {
		case 1:
			func_801306C4_13F674(D_8014548C_15443C);
			break;
		case 2:
			func_801306C4_13F674(D_8014547C_15442C);
			break;
		case 0:
		default:
			func_801306C4_13F674(D_8014546C_15441C);
			break;
		}
		return;

	case 6:
		// Show "complete / beendet / terminé" message (localised)
		language = D_800313D0_31FD0;
		switch (language) {
		case 1:
			levelName = D_80031508[currentLevel];
			func_8012EBC0_13DB70(levelName, D_801454B4_154464, levelText);
			break;
		case 2:
			levelName = D_80031520[currentLevel];
			func_8012EBC0_13DB70(levelName, D_801454A8_154458, levelText);
			break;
		case 0:
		default:
			levelName = D_800314F0[currentLevel];
			func_8012EBC0_13DB70(levelName, D_8014549C_15444C, levelText);
			break;
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

// CURRENT(415)
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

// CURRENT(12370)
#ifdef NON_MATCHING
void func_80130BA0_13FB50(void)
{
	u8 scoreText[0x14];
	s32 baseScore;

	if (D_80140CA4_14FC54 != 0) {
		if (1) { D_80140CA8_14FC58 = 0; }
		if (1) { D_8016006C[0] = 0; }
		if (1) { D_80160058 = 0; }
		if (1) { D_80140CA4_14FC54 = 0; }
		if (1) { baseScore = D_80052B2C->unk30; }
		if (1) { D_80160070 = baseScore; }
		if (1) { D_80140CAC_14FC5C = 0; }
		if (1) { D_80140CB0_14FC60 = 0; }
		if (1) { D_8016006C[1] = 0; }
		if (1) { if (D_80048170 == 0) {
			D_8016005C = baseScore;
			baseScore += 0x1388;
		} else {
			D_8016005C = baseScore;
		} }
		if (1) { if (D_8004816E == 0) {
			D_80160060 = baseScore;
			D_80160064 = baseScore + 0x1388;
		} else {
			D_80160060 = baseScore;
			D_80160064 = baseScore;
		} }
	}

	if ((D_80160070 == D_80052B2C->unk30) && (D_8016006C[0] == 0x1E)) {
		D_8016006C[0] = 0;
		D_8016006C[1] = 0;
		if (D_80160058 + 1 < 4) {
			D_80160058 = D_80160058 + 1;
		} else {
			D_80160058 = 4;
		}
	}

	baseScore = D_80052B2C->unk30;
	if (D_80160070 == baseScore) {
		baseScore = D_8016006C[0] + 1;
		if (baseScore < 0x1E) {
			D_8016006C[0] = baseScore;
		} else {
			D_8016006C[0] = 0x1E;
		}
	} else {
		s32 nextScore = baseScore + 0x64;
		if (D_80160070 < nextScore) {
			D_80052B2C->unk30 = D_80160070;
		} else {
			D_80052B2C->unk30 = nextScore;
		}
		func_800153D8_15FD8(0xCD);
		D_8016006C[0] = 0;
	}

	drawText(D_801454F0_1544A0, 0x400, 0x400);
	drawText(D_801454F8_1544A8, 0x7F, 0xC8, 0xDC, 0xFF);

	if (D_80160058 > 0) {
		if (D_80160058 == 1) {
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
	}

	if (D_80160058 >= 2) {
		if (D_80160058 == 2) {
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

// CURRENT(32429)
#ifdef NON_MATCHING
s32 func_80131858_140808(u8 *text, s32 charWidth, s32 charHeight, s32 yPos, s32 arg4, s32 arg5) {
	s16 posZ;
	s16 posY;
	s16 posX;
	s16 resultZ;
	s16 resultY;
	s16 resultX;
	s32 swayOffset;
	s16 textLength;
	u8 colorData[5];
	s32 halfCharWidth;
	s32 animTimer;
	s32 charTimer;
	f32 sinVal;
	s32 screenX;
	s32 charScreenX;
	s16 charCount;
	s16 renderX;
	s32 temp_v0;
	s32 charIndex;
	u8 *textPtr;
	s32 halfSway;
	s32 nextIndex;

	gDPSetScissor(D_8005BB2C++, G_SC_NON_INTERLACE, 35, 0, D_80068084 - 0x21, D_80068088);
	charCount = 0;
	renderX = 0;
	if (*text != 0) {
		do {
			renderX = renderX + charWidth + 2;
			if (*text == 0x31) {
				renderX -= charWidth >> 1;
			}
			charCount += 1;
		} while (*(text + charCount) != 0);
	}

	halfCharWidth = charWidth >> 1;
	if (arg5 != 0) {
		D_80140CE0_14FC90[0] = 0;
	}
	if (arg4 == 0) {
		D_80140CE0_14FC90[0] = 0xFFFF;
	}

	screenX = (D_80068084 - (D_80140CE0_14FC90[0] * 6)) + 0x168;
	func_8012F2DC_13E28C((s32) D_80140C74_14FC24, (s32) colorData, 5);
	textLength = charCount;
	if (D_80140CE0_14FC90[0] >= 0x3D) {
		if ((screenX >= 0) && (D_80068084 >= screenX)) {
			if (D_80140CE0_14FC90[0] == 0x46) {
				func_800153D8_15FD8(0x185);
			}

			gDPPipeSync(D_8005BB2C++);
			gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
			gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK);
			gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
			gSPNumLights(D_8005BB2C++, 1);
			gSPLight(D_8005BB2C++, D_80140C38_14FBE8, 1);
			gSPLight(D_8005BB2C++, D_80140C30_14FBE0, 2);
			gDPSetRenderMode(D_8005BB2C++, CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL | G_RM_PASS, CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL | G_RM_NOOP2);
			gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_8b, 16, D_5041480);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_8b, 0, 0x0040, G_TX_LOADTILE, 0,
				G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 511, 512);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0x0040, 2, 0,
				G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, 2, 0, 0, (15 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_8b, 16, D_5040A80);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_8b, 0, 0x0000, G_TX_LOADTILE, 0,
				G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 511, 512);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0x0000, 1, 0,
				G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, 1, 0, 0, (15 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));
			gDPPipeSync(D_8005BB2C++);

			posX = screenX;
			posZ = 0;
			charScreenX = (D_80140CE0_14FC90[0] & 0xE) >> 1;
			posY = yPos + 0x1E;
			resultX = 0;
			resultY = 0;
			resultZ = 0;
			func_800039D0_45D0((Unk80052B40 *) &posX, (Unk80052B40 *) &resultX, (Unk80052B40 *) D_80140C68_14FC18, D_8005BB38);

			gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
			guRotateRPY((Mtx *) (D_8005BB38 + 0x40), 0.0f, 90.0f, 180.0f);
			D_8005BB38 += 0x40;
			gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			gSPDisplayList(D_8005BB2C++, D_80140C48_14FBF8[charScreenX]);
		}
	}

	renderX = ((D_80068084 / 2) - (renderX >> 1)) + halfCharWidth;
	if ((D_80140CE0_14FC90[0] >= 0x60) && (D_80140CE0_14FC90[0] < 0xBE)) {
		temp_v0 = D_80140CE0_14FC90[0] - 0x5F;
		if ((temp_v0 % 6) == 0) {
			func_800153D8_15FD8((s16) (((temp_v0 % 12) / 6) + 0xAC));
		}
	}

	charIndex = 0;
	animTimer = 0x5A;
	if (textLength > 0) {
		charTimer = 0;
		textPtr = text;
		halfSway = swayOffset;
		while (1) {
			charScreenX = (D_80068084 - ((D_80140CE0_14FC90[0] - charTimer) * 6)) + 0x21C;
			if (*textPtr == 0x31) {
				renderX -= halfCharWidth;
			}

			if ((animTimer < D_80140CE0_14FC90[0]) && (charScreenX >= 0) && (D_80068084 >= charScreenX)) {
				sinVal = (f32) sins((u16) ((((D_80140CE0_14FC90[0] + charIndex) % 8) << 13) & 0xFFFF));
				swayOffset = (s32) ((f32) (((f64) sinVal / 32768.0) * 32.0) / 2.0f);
				halfSway = swayOffset;
				gDPPipeSync(D_8005BB2C++);
				gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH | G_FOG);
				gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
				gSPDisplayList(D_8005BB2C++, D_80031230);
				gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
				gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
				gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_NOOP2);

				posX = charScreenX;
				posY = yPos + 0x1E;
				posZ = 0;
				gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_aLIGHT_1, 0x80E580FF);
				gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_bLIGHT_1, 0x80E580FF);
				gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_aLIGHT_2, 0x407F40FF);
				gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_bLIGHT_2, 0x407F40FF);

				D_800311A0.unk2 += swayOffset;
				resultX = D_800311A0.unk0;
				resultY = D_800311A0.unk2;
				resultZ = D_800311A0.unk4;
				D_800311A0.unk0 -= swayOffset / 2;
				D_800311A0.unk4 -= swayOffset / 2;
				D_800311A0.unk0 = (s16) ((f64) D_800311A0.unk0 * 2.5);
				D_800311A0.unk2 = (s16) ((f64) D_800311A0.unk2 * -2.5);
				D_800311A0.unk4 = (s16) ((f64) D_800311A0.unk4 * 2.5);
				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 16, (((D_80052A8C % 7U) << 9) + (u32) D_503CF60) & 0x1FFFFFFF);

				func_800039D0_45D0((Unk80052B40 *) &posX, (Unk80052B40 *) &resultX, (Unk80052B40 *) &D_800311A0, D_8005BB38);

				gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
				guRotate((Mtx *) (D_8005BB38 + 0x40), 90.0f, 0.0f, 1.0f, 0.0f);
				D_8005BB38 += 0x40;
				gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				gDPPipeSync(D_8005BB2C++);
				gSPDisplayList(D_8005BB2C++, alienSpecs[2].unk0);

				D_800311A0.unk0 = resultX;
				D_800311A0.unk2 = resultY;
				D_800311A0.unk4 = resultZ;
			}

			if ((animTimer < D_80140CE0_14FC90[0]) && (D_80068084 >= charScreenX)) {
				if (func_8012EC3C_13DBEC(*textPtr) != 0) {
					s32 baseY = yPos - (charHeight >> 1);
					s16 curX = renderX;
					s32 lry;
					s32 uly;
					if (charScreenX < renderX) {
						uly = (baseY * 4) & 0xFFF;
						lry = ((baseY + charHeight) * 4) & 0xFFF;
						halfSway = 0;
					} else {
						s32 offsetBaseY = baseY - (swayOffset >> 1);
						lry = ((offsetBaseY + charHeight) * 4) & 0xFFF;
						uly = (offsetBaseY * 4) & 0xFFF;
						if (*textPtr == 0x31) {
							curX = charScreenX - halfCharWidth;
						} else {
							curX = charScreenX;
						}
					}

					gDPPipeSync(D_8005BB2C++);
					gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
					gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
					gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

					if (curX == renderX) {
						gDPSetPrimColor(D_8005BB2C++, 0, 0, colorData[0], colorData[1], colorData[2], 0xFF);
					} else {
						gDPSetPrimColor(D_8005BB2C++, 0, 0, D_80140C74_14FC24[0], D_80140C74_14FC24[1], D_80140C74_14FC24[2], 0xFF);
					}

					gSPTextureRectangle(D_8005BB2C++,
						(curX - halfCharWidth) * 4, uly,
						(halfCharWidth + curX) * 4, lry,
						0, 0, 0,
						(s32)((1.0f / ((f32) charWidth / 32.0f)) * 1024.0f),
						(s32)((1.0f / ((f32) charHeight / 32.0f)) * 1024.0f));
				}
			}

			nextIndex = charIndex + 1;
			if ((textLength == nextIndex) && (charScreenX <= 0)) {
				D_80140CE0_14FC90[0] = 0;
				return 1;
			}

			animTimer += 0xA;
			textPtr += 1;
			charTimer += 0xA;
			charIndex = nextIndex;
			renderX = renderX + charWidth + 2;
			if (nextIndex == textLength) {
				swayOffset = halfSway;
				break;
			}
		}
	}

	if (D_80140CE0_14FC90[0] < 0xFFFF) {
		D_80140CE0_14FC90[0] += 1;
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetScissor(D_8005BB2C++, G_SC_NON_INTERLACE, 0, 0, D_80068084, D_80068088);
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_80131858_140808.s")
#endif
