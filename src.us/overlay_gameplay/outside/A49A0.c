#define GAME_OSSETTIME_IMPL
#include <ultra64.h>
#include "common.h"

u8 D_8013D1B0_14C160[] = {
	0xFF, 0xF2, 0xFF, 0xF8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00,
	0xFF, 0xF8, 0xFF, 0xC0, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0x00, 0x00,
	0xFF, 0xF8, 0xFF, 0xC4, 0xFF, 0xFD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
	0x00, 0x12, 0xFF, 0xF8, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00,
	0x00, 0x05, 0xFF, 0xC1, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0x00, 0x00,
	0x00, 0x02, 0xFF, 0xC3, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x32, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x0F, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
	0xFF, 0xE6, 0x00, 0x2C, 0xFF, 0xFE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00,
	0xFF, 0xF1, 0xFF, 0xD8, 0xFF, 0xF9, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0x00, 0x00,
	0xFF, 0xFA, 0xFF, 0xDA, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
	0x00, 0x1A, 0x00, 0x2B, 0xFF, 0xFD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0x00, 0x00,
	0x00, 0x0C, 0xFF, 0xD9, 0xFF, 0xFB, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0x00, 0x00,
	0x00, 0x07, 0xFF, 0xDB, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
	0x7F, 0x7F, 0x7F, 0x00, 0x7F, 0x7F, 0x7F, 0x00
};

u8 D_8013D2A8_14C258[] = {
	0xE5, 0xE5, 0xE5, 0x00, 0xE5, 0xE5, 0xE5, 0x00,
};

u8 D_8013D2B0_14C260[] = {
	0x28, 0x64, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x80, 0x14, 0x23, 0xB0, 0x80, 0x14, 0x23, 0xBC,
	0x80, 0x14, 0x23, 0xC4, 0x80, 0x14, 0x23, 0xCC,
	0x80, 0x14, 0x23, 0xD4, 0x80, 0x14, 0x23, 0xDC,
};

Unk14C280Entry D_8013D2D0_14C280[25] = {
	{ 0xFF90, 0x006C, 0x0000, 0x0000, 0x0154 },
	{ 0xFF90, 0xFF94, 0x0000, 0x0000, 0x0154 },
	{ 0x0070, 0xFF94, 0x0000, 0x00D8, 0x0154 },
	{ 0x0000, 0x0000, 0x0000, 0x0000, 0x00B4 },
	{ 0x0000, 0x0000, 0x0000, 0x0000, 0x0000 },
	{ 0x0002, 0xFF72, 0x0000, 0x0000, 0x0104 },
	{ 0x0087, 0xFF97, 0x0000, 0x0000, 0x015E },
	{ 0x0078, 0x0074, 0xFF9A, 0x0000, 0x0136 },
	{ 0xFF68, 0x0099, 0x0000, 0xFEC9, 0x00C8 },
	{ 0xFFED, 0xFFEC, 0x0000, 0x0000, 0x00C8 },
	{ 0xFF7D, 0xFF7D, 0x0000, 0x0080, 0x010E },
	{ 0xFF7B, 0x0089, 0x010A, 0x0000, 0x00FA },
	{ 0x0061, 0xFFC3, 0x0000, 0x0000, 0x01EA },
	{ 0x00B0, 0xFF51, 0x0000, 0x0000, 0x008C },
	{ 0x0000, 0x0000, 0x0000, 0x0000, 0x0096 },
	{ 0x008A, 0xFF79, 0x0000, 0x010C, 0x010E },
	{ 0xFFEB, 0xFF76, 0xFF92, 0x0000, 0x0104 },
	{ 0xFF60, 0x000C, 0x0000, 0x0000, 0x00C8 },
	{ 0xFFB1, 0x0054, 0x0000, 0x0000, 0x019A },
	{ 0x0038, 0x000C, 0x0000, 0x0000, 0x00D2 },
	{ 0x0000, 0x0000, 0x0000, 0x0000, 0x0280 },
	{ 0x0000, 0x0000, 0x0000, 0x0000, 0x0000 },
	{ 0x0000, 0x0000, 0x0000, 0x0000, 0x0000 },
	{ 0x0000, 0x0000, 0x0000, 0x0000, 0x0000 },
	{ 0x0000, 0x0000, 0x0000, 0x0000, 0x0000 },
};

u8 D_8013D3CC_14C37C[] = {
	0x00, 0x12, 0x21, 0x2B, 0x37, 0x00, 0x00, 0x00,
};

MapStage D_8013D3D4_14C384[] = {
	{ 0xDC, 0xD3, 0x08, 0xED },
	{ 0xD8, 0xC2, 0x08, 0xEE },
	{ 0xBE, 0xA5, 0x08, 0xEF },
	{ 0xD1, 0xA8, 0x14, 0xF0 },
	{ 0xAD, 0xCB, 0x0E, 0xF1 },
	{ 0xB0, 0xA5, 0x08, 0xF2 },
	{ 0xA1, 0xFB, 0x08, 0xF3 },
	{ 0x9F, 0x18, 0x08, 0xF4 },
	{ 0xE0, 0x35, 0x08, 0xF5 },
	{ 0xB8, 0x65, 0x08, 0xF6 },
	{ 0xA3, 0x61, 0x08, 0xF7 },
	{ 0xF3, 0x2D, 0x08, 0xF8 },
	{ 0x4B, 0xFA, 0x08, 0xF9 },
	{ 0x2E, 0xE0, 0x08, 0xFA },
	{ 0x4A, 0x9F, 0x10, 0xFB },
	{ 0x27, 0xC0, 0x08, 0xFC },
	{ 0x5E, 0x4D, 0x08, 0xFD },
	{ 0x00, 0x00, 0x14, 0xFE },
	{ 0xF1, 0x42, 0x08, 0xF0 },
	{ 0x0A, 0x33, 0x14, 0xF1 },
	{ 0x21, 0x60, 0x08, 0xF2 },
	{ 0x5A, 0x5F, 0x14, 0xF3 },
	{ 0x41, 0x12, 0x14, 0xF4 },
	{ 0x49, 0x12, 0x08, 0xF5 },
	{ 0x5D, 0x0E, 0x08, 0xF6 },
	{ 0x54, 0xE0, 0x00, 0xF7 },
	{ 0x3E, 0xDD, 0x06, 0xF8 },
	{ 0x2B, 0xA4, 0x10, 0xF9 },
	{ 0xE2, 0xC0, 0x08, 0xFA },
	{ 0x9C, 0xDB, 0x10, 0xFB },
	{ 0x38, 0x14, 0x08, 0xFC },
	{ 0xCB, 0x68, 0x08, 0xFD },
	{ 0xFF, 0x09, 0x0C, 0xFE },
	{ 0xB6, 0x33, 0x00, 0xF0 },
	{ 0xA1, 0x09, 0x08, 0xF1 },
	{ 0xC5, 0x66, 0x08, 0xF2 },
	{ 0x12, 0xC0, 0x10, 0xF3 },
	{ 0x4C, 0xC0, 0x08, 0xF4 },
	{ 0x0E, 0xDF, 0x08, 0xF5 },
	{ 0x45, 0x13, 0x14, 0xF6 },
	{ 0x2A, 0x5F, 0x08, 0xF7 },
	{ 0x58, 0x57, 0x18, 0xF8 },
	{ 0x04, 0x03, 0x0C, 0xF9 },
	{ 0x38, 0x5E, 0x00, 0xF0 },
	{ 0x64, 0xAD, 0x10, 0xF1 },
	{ 0x29, 0x2B, 0x08, 0xF2 },
	{ 0xA8, 0x34, 0x14, 0xF3 },
	{ 0xD7, 0x2E, 0x08, 0xF4 },
	{ 0xAD, 0xF9, 0x00, 0xF5 },
	{ 0xCD, 0xF2, 0x08, 0xF6 },
	{ 0xF2, 0xBC, 0x14, 0xF7 },
	{ 0xA8, 0x97, 0x14, 0xF8 },
	{ 0x08, 0xAC, 0x08, 0xF9 },
	{ 0x38, 0x5E, 0x08, 0xFA },
	{ 0x17, 0xFC, 0x0C, 0xFB },
	{ 0x62, 0x69, 0x00, 0xF4 },
	{ 0x02, 0x5C, 0x10, 0xF5 },
	{ 0xEF, 0x01, 0x00, 0xF6 },
	{ 0xC1, 0x00, 0x10, 0xF7 },
	{ 0xC1, 0x00, 0x00, 0xF8 },
	{ 0xF5, 0x00, 0x0C, 0xF9 },
	{ 0x00, 0x00, 0x00, 0xFA },
};

u8 D_8013D4CC_14C47C[] = {
	0x05, 0x05, 0x8A, 0xA0, 0x05, 0x05, 0x8C, 0xA0, 0x05, 0x05, 0x8E, 0xA0, 0x05, 0x05, 0x90, 0xA0,
	0x05, 0x05, 0x92, 0xA0, 0x05, 0x05, 0x94, 0xA0, 0x05, 0x05, 0x96, 0xA0,
};

u8 D_8013D4E8_14C498[] = {
	0x05, 0x05, 0x98, 0xA0, 0x05, 0x05, 0x5C, 0xA0, 0x05, 0x05, 0x5E, 0xA0, 0x05, 0x05, 0x60, 0xA0,
	0x05, 0x05, 0x62, 0xA0, 0x05, 0x05, 0x64, 0xA0, 0x05, 0x05, 0x66, 0xA0, 0x05, 0x05, 0x68, 0xA0,
	0x05, 0x05, 0x6A, 0xA0,
};

u16 D_8013D50C_14C4BC = 0;
s16 D_8013D510_14C4C0 = 0x0000;
Unk80052B40 D_8013D514_14C4C4 = { 0, 0, 0x4000 };
Unk80052B40 D_8013D51C_14C4CC = { 8, 8, 8 };
Unk80146688 *D_8013D524_14C4D4 = NULL;
Unk80146688 *D_8013D528_14C4D8 = NULL;
u32 D_8013D52C_14C4DC = 0xFFFFFFFF;
u32 D_8013D530_14C4E0 = 0xFFFFFFFF;
s16 D_8013D534_14C4E4 = 0;
u32 D_8013D538_14C4E8[2] = { 0x00000000, 0x00000000 };

const char D_801423B0_151360[] = "Frontend";
const char D_801423BC_15136C[] = "Greece";
const char D_801423C4_151374[] = "Java";
const char D_801423CC_15137C[] = "America";
const char D_801423D4_151384[] = "Siberia";
const char D_801423DC_15138C[] = "Alien";
const char D_801423E4_151394[] = "%Y";
const char D_801423E8_151398[] = "%Y";
const char D_801423EC_15139C[] = "%C%a";
const char D_801423F4_1513A4[] = "%@%s";
const char D_801423FC_1513AC[] = "Generator Stage";
const char D_8014240C_1513BC[] = "%@%s";
const char D_80142414_1513C4[] = "Generator Stage";
const char D_80142424_1513D4[] = "%@%s%d";
const char D_8014242C_1513DC[] = "Stage ";
const char D_80142434_1513E4[] = "%@%s%d";
const char D_8014243C_1513EC[] = "Stage ";
const char D_80142444_1513F4[] = "%C";
const char D_80142448_1513F8[] = "%C";
const char D_8014244C_1513FC[] = "%C";
const char D_80142450_151400[] = "%a";
const char D_80142454_151404[] = "%a";
const char D_80142458_151408[] = "%@%s";
const char D_80142460_151410[] = "%C";
const char D_80142464_151414[] = "%C";
const char D_80142468_151418[] = "%C";
const char D_8014246C_15141C[] = "%a";
const char D_80142470_151420[] = "%@%s";
const char D_80142478_151428[] = "Generator Stage";
const char D_80142488_151438[] = "Generator Stage";
const char D_80142498_151448[] = "Stage 2";
const char D_801424A0_151450[] = "Stage 2";
const f32 D_801424A8_151458[1] = { 7000.0f };
const f64 D_801424B0_151460[1] = { 220000 };
const f64 D_801424B8_151468[1] = { 300 };
const f64 D_801424C0_151470[1] = { 2345 };
const f64 D_801424C8_151478[1] = { 2145 };
const f64 D_801424D0_151480[1] = { 162144 };
const f64 D_801424D8_151488[1] = { 32767 };
const f32 D_801424E0_151490[1] = { 850.0f };
const f64 D_801424E8_151498[1] = { 0.1 };
const f64 D_801424F0_1514A0[1] = { 500 };
const f64 D_801424F8_1514A8[1] = { 500 };
const f64 D_80142500_1514B0[1] = { 4000 };
const f64 D_80142508_1514B8[1] = { 0.02 };

s32 func_800959F0_A49A0(u16 red, u16 green, u16 blue) {
	red = red < 0x1F ? red : 0x1F;
	green = green < 0x1F ? green : 0x1F;
	blue = blue < 0x3F ? blue : 0x3F;
	return ((red << 0xB) + (green << 6) + (blue & 0x3F)) & 0xFFFF;
}

// https://decomp.me/scratch/u6wU5
s16 func_80095A6C_A4A1C(s16 arg0, s16 arg1, u16 arg2)
{
	D_801FEA30_Row **new_var;
	s32 r;
	s16 nx;
	s16 ny;
	s16 temp;
	r = sqrtf((arg0 * arg0) + (arg1 * arg1));
	if (r >= 2)
	{
		nx = arg0 + (arg0 * ((f32)(3.0 / r)));
		ny = arg1 + (arg1 * ((f32)(3.0 / r)));
		new_var = &D_80052A94;
		if (nx < -0x80)
		{
			nx = -0x80;
		}
		if (ny < -0x80)
		{
			ny = -0x80;
		}
		if (nx >= 0x80)
		{
			nx = 0x7F;
		}
		if (ny >= 0x80)
		{
			ny = 0x7F;
		}
		temp = ((*((u16 *)(*new_var + ny) + nx)) & 0x3F) - arg2;
		return temp;
	}
	return 0;
}

void func_80095BD4_A4B84(int arg0, unsigned char arg1, unsigned char arg2, unsigned char arg3)
{
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, 3 << 20);
	gDPSetColorImage(D_8005BB2C++, 0, G_IM_SIZ_16b, 320, K0_TO_PHYS(arg0));
	gDPSetFillColor(D_8005BB2C++, (GPACK_RGBA5551(arg1, arg2, arg3, 1) << 16) | GPACK_RGBA5551(arg1, arg2, arg3, 1));
	gDPPipeSync(D_8005BB2C++);
	gDPFillRectangle(D_8005BB2C++, 0, 0, D_80068084 - 1, D_80068088 - 1); 
	gDPSetCycleType(D_8005BB2C++, 0 << 20);
	gDPPipeSync(D_8005BB2C++);
}

// draws vehicle triangle icons on map
/* CURRENT(2782) */
#ifdef NON_MATCHING
void func_80095D4C_A4CFC(s16 arg0, s16 arg1, u8 arg2, u8 arg3, u8 arg4) {
	Vtx_t *vtx0;
	Vtx_t *vtx1;
	Vtx_t *vtx2;
	Gfx *gfx = NULL;


	if ((arg4 != arg2) || (arg3 != 0)) {
		if ((((u8 (*)[64])D_8021EA30)[((arg1 >> 8) + 0x80) >> 2][((arg0 >> 8) + 0x80) >> 2] & 0xF0) == 0) {
			return;
		}
	}

	vtx0 = &D_8005BB34->v;
	arg0 >>= 5;
	arg1 = (0xFF - arg1) >> 5;
	vtx0->ob[0] = arg0 - 7;
	D_8005BB34++;
	vtx0->ob[1] = arg1 - 0xE;
	vtx0->ob[2] = 0;
	vtx0->tc[0] = 0x400;
	vtx0->tc[1] = 0x400;

	vtx1 = &D_8005BB34->v;
	vtx1->ob[0] = arg0 + 7;
	D_8005BB34++;
	vtx1->ob[1] = arg1 - 0xE;
	vtx1->ob[2] = 0;
	vtx1->tc[0] = 0x400;
	vtx1->tc[1] = 0;

	vtx2 = &D_8005BB34->v;
	vtx2->ob[0] = arg0;
	D_8005BB34++;
	vtx2->ob[1] = arg1;
	vtx2->ob[2] = 0;
	vtx2->tc[0] = 0;
	vtx2->tc[1] = 0x400;
	vtx0->flag = vtx1->flag = vtx2->flag = 0;
	vtx2->cn[0] = arg2;
	vtx1->cn[0] = arg2;
	vtx0->cn[0] = arg2;
	vtx0->cn[1] = vtx1->cn[1] = vtx2->cn[1] = arg3;
	vtx0->cn[2] = vtx1->cn[2] = vtx2->cn[2] = arg4;
	arg4 = 0xFF;
	vtx0->cn[3] = vtx1->cn[3] = vtx2->cn[3] = arg4;

	gfx = D_8005BB2C++; gfx->words.w0 = 0x04000C2F; gfx->words.w1 = K0_TO_PHYS(vtx0);
	gfx = D_8005BB2C++; gfx->words.w1 = 0x204; gfx->words.w0 = 0xBF000000;
	gfx = D_8005BB2C++; gfx->words.w0 = 0xE7000000; gfx->words.w1 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80095D4C_A4CFC.s")
#endif

// CURRENT(1812)
#ifdef NON_MATCHING
void func_80095F08_A4EB8(void) {
	s16* dst;
	u32 rnd, r0, r1;
	s32 x;
	s32 y;
	s32 level4XMin;
	s32 level4XMax;
	s32 level4YMin;
	s32 level4YMax;
	s32 levelLimit;
	u32 i;

	u16 height;
	u32 mapMask;
	u32 outColor;
	s16 tileType;
	s16 intensity;
	s16 mapDark;
	s32 colorBase;
	f32 f30;
	f64 f28;
	f64 f26;
	f64 f24;
	f64 f22;

	dst = (s16*) D_8006AA6C;
	x = -0x80;
	y = -0x80;
	levelLimit = (D_80222A70 >> 5) & 0xFFFF;

	if (currentLevel == 4) {
		level4XMin = D_80147C30_156BE0[3][2].main.minX >> 8;
		level4XMax = D_80147C30_156BE0[3][2].main.maxX >> 8;
		level4YMin = D_80147C30_156BE0[3][2].main.minZ >> 8;
		level4YMax = D_80147C30_156BE0[3][2].main.maxZ >> 8;
	}

	i = levelLimit * 0 + 0x10000;
	if (i--) {
		i = (i & 0) + 0xFFFF;
		f30 = D_801424A8_151458[0];
		f28 = D_801424B0_151460[0];
		f26 = D_801424B8_151468[0];
		f24 = D_801424C0_151470[0];
		f22 = D_801424C8_151478[0];
		colorBase = 0x100;

		do {

			if (currentLevel == 4) {
				if ((x >= level4XMin) && (x < level4XMax) && (y >= level4YMin) && (y < level4YMax)) {
					levelLimit = 0x20;
				} else {
					levelLimit = 6;
				}
			}



			if (D_80052A94[y].objects[x].flag11) {
				mapMask = ((u8 (*)[64])D_8021EA30)[(y + 0x80) >> 2][(x + 0x80) >> 2] & 0xF0;
				outColor = mapMask ? 0xFFDF : 0;
			} else {
				height = D_80052A94[y].objects[x].height;
				if (height < levelLimit) {
					u32 dist; f32 ratio; f32 ySquare;
					ySquare = (f32)(y * y);
					rnd = func_800038E0_44E0();
					r0 = rnd & 0xFF;
					r1 = (rnd & 0xFF00) >> 8;
					ratio = (f32) ((r0 + f22) / (r1 + f22));
					dist = (u32) ((f32) (x * x) * ratio) + (u32) (ySquare * ratio);

					if (dist < 0x14) {
						intensity = (s16) f26;
					} else {
						intensity = (s16) (f28 / dist);
					}

					if (intensity >= 0x12D) {
						intensity = 0x12C;
					}


					outColor = func_800959F0_A49A0((((intensity >> 3) * 0x10) >> 9) & 0xFFFF, (((intensity >> 3) * 0x10) >> 9) & 0xFFFF, ((((intensity >> 2) * 0x10) + ((intensity * 0xF) << 4)) >> 9) & 0xFFFF) & 0xFFFF;
				} else {
					u8 *maskRow;
					s32 maskX;
					maskRow = ((u8 (*)[64])D_8021EA30)[(y + 0x80) >> 2];
					maskX = x + 0x80;
					if (D_80052A94[y].objects[x].terrainObject) {
						tileType = D_80052A94[y].objects[x].terrainType;
						if ((D_80052A94[y].objects[x].flag10 == 1) && (((tileType >= 4) && (tileType < 0xC)) || (tileType == 0xD))) {
							outColor = (maskRow[maskX >> 2] & 0xF0) ? 0x528A : 0;
						} else {
							outColor = (maskRow[maskX >> 2] & 0xF0) ? 0x8410 : 0;
						}
					} else {
						u32 ax; f32 ratio; f32 ySquare;
						u32 ay;
						ySquare = (f32)(y * y);
						rnd = func_800038E0_44E0();
						r0 = rnd & 0xFF;
						r1 = (rnd & 0xFF00) >> 8;
						ratio = (f32) ((r0 + f24) / (r1 + f24));

						ax = (u32) (((f32) (x * x) * ratio) + f30);
						ay = (u32) ((ySquare * ratio) + f30);
						if ((ax | ay) != 0) {
							intensity = (s16) (D_801424D0_151480[0] / (ax + ay));
						} else {
							intensity = (s16) D_801424D8_151488[0];
						}

						intensity = intensity + func_80095A6C_A4A1C(x, y, height);
						if (intensity < 0) {
							intensity = 0;
						}

						mapDark = maskRow[maskX >> 2] & 0xF0;
						outColor = func_800959F0_A49A0(((intensity * ((colorBase - mapDark) + (mapDark >> 2))) >> 8) & 0xFFFF,
						intensity,
						((intensity * (colorBase - (maskRow[maskX >> 2] & 0xF0))) >> 7) & 0xFFFF) & 0xFFFF;
					}
				}
			}

			x += 1;
			*dst = outColor;
			dst++;

			if (!((x + 0x80) & 0x1F)) {
				y += 1;
				x -= 0x20;
				if (!((y + 0x80) & 0x1F)) {
					x += 0x20;
					y -= 0x20;
					if (x >= 0x80) {
						x = -0x80;
						y += 0x20;
					}
				}
			}
		} while (i--);
	}

}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80095F08_A4EB8.s")
#endif

// CURRENT(2451)
#ifdef NON_MATCHING
void func_800966EC_A569C(OrbitCam *arg0, s16 arg1, s16 arg2, f32 arg3, s16 arg4) {
	Vtx_t *vtx0;
	Vtx_t *vtx1;
	Vtx_t *vtx2;
	Vtx_t *vtx3;
	MapMarkerScratch *scratch;
	s16 wave;
	s32 absWave;
	s16 trig = 0;
	s16 value;
	s32 mode;

	vtx0 = &D_8005BB34->v;
	D_8005BB34++;
	vtx1 = &D_8005BB34->v;
	D_8005BB34++;
	vtx2 = &D_8005BB34->v;
	D_8005BB34++;
	vtx3 = &D_8005BB34->v;
	D_8005BB34++;

	if (arg3 == 0.0f) {
		return;
	}

	arg3 *= 8.0f;
	arg1 >>= 5;
	arg2 >>= 5;

	mode = arg4;
	if (mode != 1) {
		mode += mode * 0;
	}

	vtx1->ob[1] = -arg3;
	vtx0->ob[1] = -arg3;
	vtx2->ob[0] = -arg3;
	vtx0->ob[0] = -arg3;
	vtx3->ob[1] = arg3;
	vtx2->ob[1] = arg3;
	vtx3->ob[0] = arg3;
	vtx1->ob[0] = arg3;
	vtx3->ob[2] = 0;
	value = vtx3->ob[2];
	vtx2->ob[2] = value;
	vtx1->ob[2] = value;
	vtx0->ob[2] = value;

	if (mode == 4) {
		scratch = (MapMarkerScratch *)&D_80052B40;
		wave = (((((f32) arg0->distance / D_801424E0_151490[0]) * ((f32)sins(D_8013D50C_14C4BC) / 32768.0)) * 200.0));
		trig = coss(-D_80052B34->unk6);
		if (wave >= 0) {
			absWave = wave;
		} else {
			absWave = -wave;
		}
		scratch->position.unk0 = (arg1 - (((f32) absWave + arg3) * ((f32)trig / 32768.0)));

		trig = sins(-D_80052B34->unk6);
		if (wave >= 0) {
			absWave = wave;
		} else {
			absWave = -wave;
		}

		scratch = (MapMarkerScratch *)&D_80052B40;
		scratch->position.unk4 = 0;
		D_80052B48.unk0 = 0;
		scratch->position.unk2 = (-arg2 - (((f32) absWave + arg3) * ((f32)trig / 32768.0)));
		D_80052B48.unk4 = 0;
		D_80052B48.unk2 = (-0x4000 - D_80052B34->unk6);
		func_800039D0_45D0(&scratch->position, (Unk80052B40 *)&D_80052B48, NULL, (s32)D_8005BB38);
		D_8013D50C_14C4BC = (s16)D_8013D50C_14C4BC + 0x300;
	} else {
		scratch = (MapMarkerScratch *)&D_80052B40;
		scratch->position.unk2 = -arg2;
		scratch->position.unk4 = 0;
		scratch->position.unk0 = arg1;
		func_800039D0_45D0(&scratch->position, NULL, NULL, (s32)D_8005BB38);
	}

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

	vtx3->tc[1] = 0;
	value = vtx3->tc[1];
	vtx2->tc[1] = value;
	vtx2->tc[0] = value;
	vtx0->tc[0] = value;
	vtx1->tc[1] = 0x800;
	value = vtx1->tc[1];
	vtx1->tc[0] = value;
	vtx3->tc[0] = value;
	vtx0->tc[1] = value;

	gDPPipeSync(D_8005BB2C++);
	scratch = (MapMarkerScratch *)D_8005BB2C++; scratch->command[0] = (s32)0xB900031D; scratch->command[1] = 0x00504240;
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(vtx0), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 2, 0, 2, 1, 3, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);
	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_800966EC_A569C.s")
#endif
/* CURRENT(6286) */
#ifdef NON_MATCHING
void func_80096BC4_A5B74(s16 arg0, s16 arg1) {
	TileEntry *tile; Level *level;
	ShieldWallPoint *levelCoords; ShieldWallPoint (*coords)[48];
	Vtx *v0;
	Vtx *v1;
	Vtx *v2;
	Vtx *v3;
	Vtx **vtxHead;
	s32 selectedGroup;
	s32 loop;
	s16 color0;
	s32 color2;
	s16 alpha0;
	s16 alpha2;
	s16 bright;
	s16 modBase;
	s32 tileGroup;

	level = &currentLevel;
	tile = (TileEntry *)D_801479B0_156960[level[0] - 1];
	selectedGroup = func_800B0F20_BFED0(arg0, -arg1);

	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_SHADING_SMOOTH);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH | G_FOG | G_LIGHTING);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPPipeSync(D_8005BB2C++);

	coords = D_801475F0_1565A0; vtxHead = &D_8005BB34;
	loop = 0x20;
	modBase = selectedGroup * 0 + 0x1FF; if (modBase) {}
	if (loop--) {
		do {
			s8 leftIdx = tile->unk0;
			s8 rightIdx;
			ShieldWallPoint *left;
			ShieldWallPoint *right;
			s16 selected;

			if (leftIdx != -1) {
				selected = selectedGroup;
				levelCoords = coords[level[0]];
				rightIdx = tile->unk1;
				left = &levelCoords[leftIdx];
				right = &levelCoords[rightIdx];

				v0 = D_8005BB34;
				D_8005BB34 = v0 + 1;
				v1 = D_8005BB34;
				D_8005BB34 = v1 + 1;
				v2 = D_8005BB34;
				D_8005BB34 = v2 + 1;
				v3 = D_8005BB34;
				D_8005BB34 = v3 + 1;

				v0->v.ob[0] = v1->v.ob[0] = left[-48].x * 8;
				v0->v.ob[1] = v1->v.ob[1] = -left[-48].z * 8;
				left = &left[-48]; color2 = right[-48].x * 8;
				v3->v.ob[0] = color2;
				v2->v.ob[0] = color2;
				right = &right[-48]; alpha2 = -right->z * 8;
				v3->v.ob[1] = alpha2;
				v2->v.ob[1] = alpha2;

				v2->v.ob[2] = 0;
				v0->v.ob[2] = v2->v.ob[2];
				v3->v.ob[2] = 0x40;
				v1->v.ob[2] = v3->v.ob[2];
				color0 = (int)(selected * 0) + 0x8C;

				tileGroup = tile - ((TileEntry (*)[64])D_801479B0_156960)[level[0] - 1];
				tileGroup >>= 3;

				if (selected == tileGroup) {
					tileGroup = D_8013D510_14C4C0 << 4;
					bright = tileGroup % modBase;
					alpha0 = bright;
					alpha2 = (tileGroup + 0x200) % 0x1FF;
					if (alpha0 >= 0x100) {
						alpha0 = modBase - alpha0;
					}

					v3->v.cn[0] = alpha0;
					v2->v.cn[0] = alpha0;
					v1->v.cn[0] = alpha0;
					v0->v.cn[0] = alpha0;

					color0 = 0xFF - alpha0;
					v3->v.cn[1] = color0;
					v2->v.cn[1] = color0;
					v1->v.cn[1] = color0;
					v0->v.cn[1] = color0;

					if (alpha2 >= 0x100) {
						alpha2 = modBase - alpha2;
					}
					v3->v.cn[2] = alpha2;
					v2->v.cn[2] = alpha2;
					v1->v.cn[2] = alpha2;
					v0->v.cn[2] = alpha2;

					selected = 0xFF; bright = selected;
				} else {
					v3->v.cn[0] = color0;
					v2->v.cn[0] = color0;
					v1->v.cn[0] = color0;
					v0->v.cn[0] = color0;
					color0 = 0xBE;

					v3->v.cn[1] = color0;
					v2->v.cn[1] = color0;
					v1->v.cn[1] = color0;
					v0->v.cn[1] = color0;

					color0 = 0xFF; v3->v.cn[2] = color0;
					v2->v.cn[2] = color0;
					v1->v.cn[2] = color0;
					v0->v.cn[2] = color0;

					bright = 0x46;
				}

				v2->v.cn[3] = bright;
				v0->v.cn[3] = bright;
				v3->v.cn[3] = 0;
				v1->v.cn[3] = 0;

				if (color0) {} gSPVertex(D_8005BB2C++, K0_TO_PHYS(v0), 4, 0);
				gSP2Triangles(D_8005BB2C++, 0, 1, 2, 0, 3, 1, 2, 0);
			}
			if (coords) {}
			tile++;
		} while (loop--);
	}

	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);
	D_8013D510_14C4C0++;
	gDPPipeSync(D_8005BB2C++);
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80096BC4_A5B74.s")
#endif

// CURRENT(80)
#ifdef NON_MATCHING
void func_800970C0_A6070(void)
{
  Vtx *vtx0;
  Vtx *vtx1;
  Vtx *vtx2;
  Vtx *vtx3;
  u32 col;
  u32 row;
  u32 x0;
  u32 x1;
  s32 y0;
  s32 y1;
  gDPPipeSync(D_8005BB2C++);
  gSPClearGeometryMode(D_8005BB2C++, (0x00000001 | 0x00003000) | 0x00020000);
  gDPSetRenderMode(D_8005BB2C++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);
  gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);
  gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, 0, 1);
  gDPSetTexturePersp(D_8005BB2C++, 1 << 19);
  gDPSetColorDither(D_8005BB2C++, 2 << 6);
  gDPSetTextureFilter(D_8005BB2C++, 2 << 12);
  for (row = 0; row < 8; row++)
  {
	y1 = -((row - 4) << 8);
	y0 = y1 - 0x100;

	for (col = 0; col < 8; col++)
	{
	  x1 = col - 4;
	  x0 = x1 << 8;
	  x1 = x0 + 0x100;
	  vtx0 = D_8005BB34;
	  D_8005BB34 = vtx0 + 1;
	  vtx1 = D_8005BB34;
	  D_8005BB34 = vtx1 + 1;
	  vtx2 = D_8005BB34;
	  D_8005BB34 = vtx2 + 1;
	  vtx3 = D_8005BB34;
	  D_8005BB34 = vtx3 + 1;
	  vtx0->v.ob[0] = x0;
	  vtx0->v.ob[1] = y0;
	  vtx0->v.ob[2] = 0;
	  vtx1->v.ob[0] = x1;
	  vtx1->v.ob[1] = y0;
	  vtx1->v.ob[2] = 0;
	  vtx2->v.ob[0] = x0;
	  vtx2->v.ob[1] = y1;
	  vtx2->v.ob[2] = 0;
	  vtx3->v.ob[0] = x1;
	  vtx3->v.ob[1] = y1;
	  vtx3->v.ob[2] = 0;
	  vtx0->v.tc[0] = -0x20;
	  vtx0->v.tc[1] = 0x7E0;
	  vtx2->v.tc[0] = -0x20;
	  vtx2->v.tc[1] = -0x20;
	  vtx3->v.tc[0] = 0x7E0;
	  vtx3->v.tc[1] = -0x20;
	  vtx1->v.tc[0] = 0x7E0;
	  vtx1->v.tc[1] = 0x7E0;
	  gDPLoadTextureBlock(D_8005BB2C++, &((u16 *)D_8006AA6C)[((row << 3) + col) << 10], G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
	  gSPVertex(D_8005BB2C++, K0_TO_PHYS(vtx0), 4, 0);
	  gSP1Triangle(D_8005BB2C++, 0, 1, 2, 0);
	  gSP1Triangle(D_8005BB2C++, 2, 1, 3, 0);
	}

  }

  gDPPipeSync(D_8005BB2C++);
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_800970C0_A6070.s")
#endif

void func_80097444_A63F4(s16 arg0, s16 arg1) {
	Vtx_t *vtx0;
	Vtx_t *vtx1;
	Vtx_t *vtx2;
	Vtx_t *vtx3;

	s32 col;
	u32 row;
	s32 loopLimit;

	s32 xStep;
	s32 y;
	Unk80052B40 pos;
	Unk80052B40 base;
	s32 stepAbs;

	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BOTH | G_LIGHTING);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetColorDither(D_8005BB2C++, G_CD_NOISE);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0, 0, 0x78);

	base.unk0 = 0;
	base.unk2 = arg0 + 0x4000;
	base.unk4 = arg1;

	for (row = 0; row < 9; row++) {
		if (row == 0) {
			loopLimit = 8;
			stepAbs = 4;
		} else {
			loopLimit = 1;
			stepAbs = 5;
		}

		y = ((4 - row) << 8) + 0x80;
		for (xStep = -stepAbs, col = 0; col < loopLimit; col++) {
			pos.unk0 = (xStep << 8) + 0x80;
			pos.unk2 = y;
			pos.unk4 = 0x32;

			func_800039D0_45D0(&pos, &base, NULL, (s32)D_8005BB38);

			gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

			vtx0 = &D_8005BB34->v;
			D_8005BB34++;
			vtx1 = &D_8005BB34->v;
			D_8005BB34++;
			vtx2 = &D_8005BB34->v;
			D_8005BB34++;
			vtx3 = &D_8005BB34->v;
			D_8005BB34++;

			vtx0->ob[0] = -0x40;
			vtx0->ob[1] = -0x40;
			vtx0->ob[2] = 0;
			vtx1->ob[0] = 0x40;
			vtx1->ob[1] = -0x40;
			vtx1->ob[2] = 0;
			vtx2->ob[0] = -0x40;
			vtx2->ob[1] = 0x40;
			vtx2->ob[2] = 0;
			vtx3->ob[0] = 0x40;
			vtx3->ob[1] = 0x40;
			vtx3->ob[2] = 0;

			vtx0->tc[0] = -0x20;
			vtx0->tc[1] = 0x07E0;
			vtx2->tc[0] = -0x20;
			vtx2->tc[1] = -0x20;
			vtx3->tc[0] = 0x07E0;
			vtx3->tc[1] = -0x20;
			vtx1->tc[0] = 0x07E0;
			vtx1->tc[1] = 0x07E0;

			if (row == 0) {
				gDPLoadTextureBlock_4b(D_8005BB2C++, K0_TO_PHYS(((u32 *) D_8013D4CC_14C47C)[col]), G_IM_FMT_IA, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
			} else {
				gDPLoadTextureBlock_4b(D_8005BB2C++, K0_TO_PHYS(((u32 *) D_8013D4E8_14C498)[row]), G_IM_FMT_IA, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
			}

			gSPVertex(D_8005BB2C++, K0_TO_PHYS(vtx0), 4, 0);
			gSP1Triangle(D_8005BB2C++, 0, 1, 2, 0);
			gSP1Triangle(D_8005BB2C++, 2, 1, 3, 0);
			gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

			xStep++;
		}
	}

	gDPPipeSync(D_8005BB2C++);
}
// draw 3d adam on map
void func_80097994_A6944(void) {
	s32 translation[3];
	s16 mapPos[3];
	u16 scale[3];

	func_8000C790_D390(&D_80157600, (s16 *)D_8013D1B0_14C160, 0x10);

	translation[0] = 0;
	translation[2] = 0;
	translation[1] = (s32)(D_80157600.unkC * 65536.0f);
	mapPos[0] = D_80157600.unk2 << 3;
	mapPos[1] = D_80157600.unk4 << 3;
	mapPos[2] = D_80157600.unk0 << 3;

	func_8000C81C_D41C(translation, mapPos, NULL, (s32 *)D_8005BB38);

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	gSPSegment(D_8005BB2C++, 0x06, func_80011FAC_12BAC(&D_1001B50));
	gSPSegment(D_8005BB2C++, 0x07, K0_TO_PHYS(D_8005BB38));

	func_8000CC3C_D83C(&D_80157600, 0x10);

	{
		Mtx *matrix;
		scale[2] = 0x100;
		scale[1] = scale[2] & 0xFFFF;
		scale[0] = scale[2];
		matrix = D_8005BB38;
		D_8005BB38++;

		func_800039D0_45D0(NULL, NULL, (Unk80052B40 *)scale, (s32)matrix);
	}

	gSPDisplayList(D_8005BB2C++, K0_TO_PHYS(&D_10031E0));
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
}


// related to drawing 3d vehicles
void func_80097B74_A6B24(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {

	gSPLookAt(D_8005BB2C++, &D_801592A0);
	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);

	if (currentLevel != LEVEL_JAVA || vehicleInstances[arg0].unk1A != 0x12) {
		func_80101EF4_110EA4(vehicleInstances[arg0].unk1A, arg1, arg2, arg3, 0, 0x4000, (s32)arg4);
	}
}

void func_80097CB4_A6C64(OrbitCam *arg0, OrbitCam *arg1, OrbitCam *arg2, f32 arg3)
{
	s32 absDiff;
	arg2->distance = arg0->distance + ((s16)((arg1->distance - arg0->distance) * arg3));
	absDiff = (((arg1->yaw - arg0->yaw) >= 0) ? (arg1->yaw - arg0->yaw) : -(arg1->yaw - arg0->yaw));

	if (absDiff > 0x8000)
	{
		if (arg0->yaw < arg1->yaw)
		{
			arg2->yaw = arg0->yaw - ((s16)(((arg0->yaw - arg1->yaw) + 0xFFFF) * arg3));
		}
		else
		{
			arg2->yaw = arg0->yaw + ((s16)(((arg1->yaw - arg0->yaw) + 0xFFFF) * arg3));
		}
	}
	else
	{
		arg2->yaw = arg0->yaw + ((s16)((arg1->yaw - arg0->yaw) * arg3));
	}
	arg2->pitch = arg0->pitch + ((s16)((arg1->pitch - arg0->pitch) * arg3));
	arg2->targetX = arg0->targetX + ((arg1->targetX - arg0->targetX) * arg3);
	arg2->targetY = arg0->targetY + ((arg1->targetY - arg0->targetY) * arg3);
	arg2->targetZ = arg0->targetZ + ((arg1->targetZ - arg0->targetZ) * arg3);
}

void func_80097E1C_A6DCC(OrbitCam *cam) {
	u16 perspNorm;
	Gfx *normalize, *projection0, *projection1, *view0, *view1, *model0, *model1;
	s16 temp;

	temp = coss(cam->yaw);
	D_8014ED0C = (f32)(((((f32)sins(cam->pitch) / 32768.0) * ((f32)temp / 32768.0)) * cam->distance) + cam->targetX);

	temp = sins(cam->yaw);
	D_8014ED10 = (f32)(((((f32)sins(cam->pitch) / 32768.0) * ((f32)temp / 32768.0)) * cam->distance) + cam->targetY);

	D_8014ED14 = (f32)((((f32)coss(cam->pitch) / 32768.0) * cam->distance));

	guPerspective(D_8005BB38, &perspNorm, (f32)D_80149404, 1.0f, 25.0f, 2000.0f, 1.0f);
	normalize = D_8005BB2C++; normalize->words.w0 = 0xBC00000E; normalize->words.w1 = (u32)&perspNorm;
	projection0 = D_8005BB2C++; projection0->words.w0 = 0x01030040; projection0->words.w1 = K0_TO_PHYS(D_8005BB38);
	projection1 = D_8005BB30++; projection1->words.w0 = 0x01030040; projection1->words.w1 = K0_TO_PHYS(D_8005BB38++);

	guLookAt(D_8005BB38, D_8014ED0C, D_8014ED10, D_8014ED14, cam->targetX, cam->targetY, cam->targetZ, 0.0f, 0.0f, 1.0f);
	view0 = D_8005BB2C++; view0->words.w0 = 0x01010040; view0->words.w1 = K0_TO_PHYS(D_8005BB38);
	view1 = D_8005BB30++; view1->words.w0 = 0x01010040; view1->words.w1 = K0_TO_PHYS(D_8005BB38++);
	model0 = D_8005BB2C++; model0->words.w0 = 0x01020040; model0->words.w1 = K0_TO_PHYS(&D_80031160);
	model1 = D_8005BB30++; model1->words.w0 = 0x01020040; model1->words.w1 = K0_TO_PHYS(&D_80031160);
}

// CURRENT(43918)
#ifdef NON_MATCHING
void func_8009811C_A70CC(void) {
	f32 temp_f0;
	f32 temp_f2;
	OrbitCam cam3CC;
	OrbitCam cam3B8;
	OrbitCam cam3A4;
	OrbitCam cams340[5];
	OrbitCam cam32C;
	s32 cameraIndex;
	OrbitCam *sp324;
	OrbitCam *sp320[1];
	s32 sp31C[1];
	const Unk14C280Entry *stage;
	AlienInstance *var_s0_4;
	Unk80146688 *var_t2;
	Unk80146688 *sp30C;
	OrbitCam *var_s3;
	f32 var_f12;
	f32 var_f28;
	f64 temp_f0_3;
	f64 temp_f22;
	s32 temp_v0;
	u32 sp2E8[1];
	s32 sp2E4;
	Unk80052B40 vec2DC;
	Unk80052B40 vec2D4;
	Unk80052B40 vec2CC;
	f32 sp2C8;
	s32 temp_t3;
	f32 sp2C0;
	f32 sp2BC;
	f32 sp2B8;
	Unk80052B40 sp2B0;
	s32 sp2AC[1];
	Unk80052B40 sp2A4;
	u32 sp2A0;
	s32 temp_v1;
	s32 var_t0;
	s32 var_a1;
	f32 sp28C[2];
	s32 var_s0;
	s32 sp284;
	s32 var_s1;
	s32 sp27C;
	s16 temp_a1;
	s16 temp_a2_2;
	s32 var_t3;
	s8 temp_a0;
	s32 var_t4;
	union { const Unk14C280Entry *entries; u16 *pixels; VehicleInstance *vehicle; OrbitCam *camera; } scratch;
	union { u8 *list; MapStage *stage; Mtx *matrix; } drawItem;

	sp31C[0] = 0x6E;
	sp30C = 0;
	sp2E4 = 0;
	sp2B0 = D_8013D514_14C4C4;
	sp2AC[0] = 0;
	sp2A4 = D_8013D51C_14C4CC;
	var_t4 = 0;
	D_8004D14C = 0;
	D_8014ED00 = -1;
	var_a1 = currentLevel * 5;
	scratch.entries = &D_8013D2D0_14C280[var_a1];
	stage = &scratch.entries[D_80047F94];
	sp27C = 0;
	cam3CC.distance = stage[-5].unk8;
	stage = &stage[-5];
	cam3CC.pitch = 0x384;
	cam3CC.yaw = -0x4000;
	cam3CC.targetZ = 0.0f;
	if (D_8014ED04 != 0x186A0) {
		var_t4 = 0x20;
	}
	temp_v1 = stage->unk4;
	if ((temp_v1 > 0) || (stage->unk6 > 0)) {
		if (temp_v1 > 0) {
			temp_t3 = stage->unk0;
			temp_v0 = (D_80052B34->unk0 >> 7) - temp_t3;
			temp_v0 = MAX(0, MIN(temp_v0, temp_v1));
			cam3CC.targetX = temp_v0 + temp_t3;
			cam3CC.targetY = stage->unk2;
		} else {
			temp_v0 = (-D_80052B34->unk4 >> 7) - stage->unk2;
			cam3CC.targetX = stage->unk0;
			temp_v1 = stage->unk6;
			temp_v0 = MAX(0, MIN(temp_v0, temp_v1));
			cam3CC.targetY = temp_v0 + stage->unk2;
		}
	} else {
		cam3CC.targetX = stage->unk0;
		cam3CC.targetY = stage->unk2;
	}
	cam3B8.distance = 0x50;
	cam3B8.yaw = 0x8000 - D_80052B34->unk6;
	cam3B8.pitch = 0x2710;
	stage = &scratch.entries[-5];
	var_s3 = &cam3B8;
	cam3B8.targetX = D_80052B34->unk0 >> 7;
	cam3B8.targetY = -D_80052B34->unk4 >> 7;
	cam3B8.targetZ = 0.0f;
	cam3A4 = cam3CC;
	cam3A4.distance = 0x154;
	sp2E8[0] = var_t4;
	for (cameraIndex = 0; cameraIndex < 5; cameraIndex++) {
		cams340[cameraIndex].distance = scratch.entries[cameraIndex - 5].unk8;
		cams340[cameraIndex].pitch = 0x384;
		cams340[cameraIndex].yaw = -0x4000;
		cams340[cameraIndex].targetX = scratch.entries[cameraIndex - 5].unk0;
		cams340[cameraIndex].targetY = scratch.entries[cameraIndex - 5].unk2;
		cams340[cameraIndex].targetZ = 0.0f;
	}
	D_8014ED0C = 0.0f;
	temp_f0 = cam3CC.distance;
	D_8014ED10 = cam3CC.targetY - temp_f0;
	D_8014ED14 = temp_f0 + cam3CC.targetZ;
	D_8014ED2D = 1;
	D_8014ED2C = 1;
	D_8014ED28 = 0.0f;
	D_8014ED30 = -1;
	D_8014ED1C = 0.0f;
	D_8014ED18 = 0.0f;
	D_8014ED34 = 1;
	D_8014ED2E = 0x3FFF;
	D_8014ED32 = 0;
	func_8000505C_5C5C();
	func_800050C4_5CC4();
	func_80095F08_A4EB8();
	func_8000505C_5C5C();
	func_800050C4_5CC4();
	func_8000DC9C_E89C(D_8005BB48[D_80031B84_32784], D_8005BB4C[-D_80031B84_32784]);
	func_8000505C_5C5C();
	osSetTime(D_80068084, D_80068088);
	setGameplayResolution();
	func_8000E4C4_F0C4(0);
	sp284 = 1;
	func_8000AFDC_BBDC();
	if (D_8014ED00 != 0x18) {
		sp2E8[0] |= 1;
	}
	temp_f22 = 0.1;
	var_f28 = sp2B8;
	var_s0 = sp31C[0];
	while (1) {
	if (var_s0 == 1) {
		D_80052ACC = 1;
		cam32C.yaw = cam3B8.yaw;
		D_8014ED2C = 3;
		cam32C.pitch = cam3B8.pitch;
		sp324 = &cam3B8;
		cam32C.distance = cam3B8.distance;
		sp320[0] = &cam3A4;
		D_8004802C = 1;
		var_s3 = &cam32C;
		D_8014ED2E = 0;
		cam32C.targetX = cam3B8.targetX;
		cam32C.targetY = cam3B8.targetY;
		cam32C.targetZ = cam3B8.targetZ;
		func_80018D7C_1997C(D_8013D3D4_14C384[(D_8013D3CC_14C37C[currentLevel - 1] + D_80048030) & 0xFF].music);
	}
	if (var_s0 == 0) {
		func_8000AFDC_BBDC();
		if (var_s3 == &cam32C) {
			temp_f0 = (f32) sins(D_8014ED2E & 0xFFFF);
			scratch.camera = sp320[0];
			func_80097CB4_A6C64(sp324, scratch.camera, &cam32C, temp_f0 / 32768.0);
			temp_a1 = D_8014ED2E + 0x200;
			if (temp_a1 >= 0x3FFF) {
				var_s3 = scratch.camera;
				if (scratch.camera == &cam3CC) {
					sp284 = 0;
				}
			}
			if (D_8014ED2C == 3) {
				D_8014ED2E = temp_a1;
				func_80014208_14E08(D_8014ED38, (s32) (((f32) temp_a1 / 16384) * 500.0), 0x40);
			} else {
				D_8014ED2E = temp_a1;
				if (D_8014ED2C == 1) {
					D_8014ED2E = temp_a1;
					func_80014208_14E08(D_8014ED38, (s32) ((1.0 - ((f32) temp_a1 / 16384)) * 500.0), 0x40);
				}
			}
		} else {
			func_80015860_16460(D_8014ED38);
			if ((isButtonNewlyPressed(0, 0x20U) != 0) && (currentLevel < 5)) {
				cam32C.distance = var_s3->distance;
				cam32C.yaw = var_s3->yaw;
				cam32C.pitch = var_s3->pitch;
				cam32C.targetX = var_s3->targetX;
				cam32C.targetY = var_s3->targetY;
				temp_f2 = var_s3->targetZ;
				D_8014ED34 = 0;
				D_8014ED2D = D_8014ED2C;
				D_8014ED30 += 1;
				sp324 = var_s3;
				var_s3 = &cam32C;
				sp30C = 0;
				sp284 = 1;
				D_8014ED2E = 0;
				cam32C.targetZ = temp_f2;
				func_800153D8_15FD8(0x3C);
				if ((D_8014ED30 == 5) || (D_8013D2D0_14C280[currentLevel * 5 + (D_8014ED30) - 5].unk8 == 0)) {
					D_8014ED30 = -1;
					sp320[0] = &cam3CC;
					D_8014ED2C = 0;
				} else {
					sp320[0] = &cams340[D_8014ED30];
					D_8014ED2C = 2;
				}
			}
			if (currentControllerStates->button & 0x10) {
				var_a1 = D_8014ED2C;
			} else {
				var_a1 = D_8014ED2C;
				if ((var_a1 == 0) || (var_a1 == 2)) {
					f32 oldY;
					temp_v1 = var_s3->distance * 2;
					sp2C0 = (currentControllerStates->stick_x * temp_v1) / 4000.0;
					sp2BC = (currentControllerStates->stick_y * temp_v1) / 4000.0;
					sp2C8 = (f32) coss(var_s3->yaw) / 32768.0;
					temp_f0 = (f32) sins(var_s3->yaw) / 32768.0;
					temp_f2 = var_s3->targetX;
					oldY = var_s3->targetY;
					var_a1 = D_8014ED2C;
					sp28C[1] = temp_f2 - ((temp_f0 * sp2C0) - (sp2C8 * sp2BC));
					sp28C[0] = oldY + ((sp2C8 * sp2C0) - (temp_f0 * sp2BC));
					if (var_a1 == 0) {
						var_s3->targetX = sp28C[1];
						var_s3->targetY = sp28C[0];
						if ((sp284 == 1) && ((currentControllerStates[0].stick_x < -1) || (currentControllerStates[0].stick_x >= 2) || (currentControllerStates[0].stick_y < -1) || (currentControllerStates[0].stick_y >= 2))) {
							sp284 = 0;
						}
					} else {
						var_f12 = sp28C[0];
						stage = &D_8013D2D0_14C280[currentLevel * 5 + (D_8014ED30) - 5];
						temp_t3 = stage->unk0;
						var_t4 = stage->unk4;
						var_t4 += temp_t3;
						temp_v0 = ((MIN(temp_t3, var_t4) <= temp_f2) && (temp_f2 <= MAX(temp_t3, var_t4))) ? 1 : 0;
						if (temp_v0) {
							temp_v1 = stage->unk2;
							var_t0 = stage->unk6 + temp_v1;
							temp_v0 = ((MIN(temp_v1, var_t0) <= oldY) && (oldY <= MAX(temp_v1, var_t0))) ? 1 : 0;
							if (temp_v0) {
								temp_v0 = ((MIN(temp_t3, var_t4) <= sp28C[1]) && (sp28C[1] <= MAX(temp_t3, var_t4))) ? 1 : 0;
								if (temp_v0) {
									var_s3->targetX = sp28C[1];
									var_t0 = stage->unk6;
									temp_v1 = stage->unk2;
									var_t0 += temp_v1;
								}
								temp_v0 = ((MIN(temp_v1, var_t0) <= var_f12) && (var_f12 <= MAX(temp_v1, var_t0))) ? 1 : 0;
								if (temp_v0) {
									var_s3->targetY = var_f12;
								}
							}
						}
					}
			}
			}
			if ((var_a1 != 2) && (var_a1 != 3)) {
				if (currentControllerStates->button & 8) {
					var_s3->distance -= 0xF;
				}
				if (currentControllerStates->button & 4) {
					var_s3->distance += 0xF;
				}
			}
			if (var_s3->targetX < -256.0f) {
				var_s3->targetX = -256.0f;
			}
			if (var_s3->targetX > 256.0f) {
				var_s3->targetX = 256.0f;
			}
			if (var_s3->targetY < -256.0f) {
				var_s3->targetY = -256.0f;
			}
			if (var_s3->targetY > 256.0f) {
				var_s3->targetY = 256.0f;
			}
			if (var_s3 == &cam3CC) {
				temp_v0 = var_s3->distance;
				var_s3->distance = MAX(0x78, MIN(0x352, temp_v0));
			}
			if (var_s3 == &cam3B8) {
				temp_v0 = var_s3->distance;
				var_s3->distance = MAX(0x50, MIN(0x12C, temp_v0));
			}
			if ((isButtonNewlyPressed(0, 0x8000U) != 0) && (D_8014ED2C != 2)) {
				D_8014ED2D = D_8014ED2C;
				if (D_8014ED2C == 1) {
					D_8014ED2C = 3;
				} else if (D_8014ED2C == 0) {
					D_8014ED2C = 1;
				} else {
					D_8014ED2C = 0;
				}
				func_800153D8_15FD8(0xC3);
				cam32C.distance = var_s3->distance;
				cam32C.yaw = var_s3->yaw;
				cam32C.pitch = var_s3->pitch;
				cam32C.targetX = var_s3->targetX;
				cam32C.targetY = var_s3->targetY;
				temp_f2 = var_s3->targetZ;
				sp324 = var_s3;
				var_s3 = &cam32C;
				D_8014ED2E = 0;
				cam32C.targetZ = temp_f2;
				if (D_8014ED2C == 0) {
					sp320[0] = &cam3CC;
					sp284 = 1;
					sp30C = 0;
					func_80018D14_19914();
					D_8014ED34 = 1;
					D_8013D528_14C4D8 = 0;
					D_8004802C = 0;
				} else if (D_8014ED2C == 1) {
					sp320[0] = &cam3B8;
					func_80018D14_19914();
					D_8014ED34 = 0;
					D_8013D528_14C4D8 = sp30C;
					sp30C = 0;
					D_8014ED1C = D_8014ED18;
					D_8014ED18 = 0.0f;
					D_8004802C = 0;
				} else {
					sp320[0] = &cam3A4;
					D_8014ED34 = 0;
					D_8013D528_14C4D8 = sp30C;
					D_8014ED1C = D_8014ED18;
					sp30C = 0;
					D_8014ED18 = 0.0f;
					func_80018D7C_1997C(D_8013D3D4_14C384[(D_8013D3CC_14C37C[currentLevel - 1] + D_80048030) & 0xFF].music);
					D_8004802C = 1;
				}
			}
		}
	}
	if ((isButtonNewlyPressed(0, 0x10U) != 0) && (sp2E8[0] & 4) && (D_8014ED2C == 0)) {
		if (sp2E8[0] & 0x20) {
			D_8014ED04 = 0x186A0;
			sp2E8[0] &= ~0x20;
		} else {
			D_8014ED04 = (s16) (s32) var_s3->targetX << 7;
			D_8014ED08 = (s16) (s32) -var_s3->targetY << 7;
			sp2E8[0] |= 0x20;
		}
		func_800153D8_15FD8(0x14F);
	}
	func_800050C4_5CC4();
	if (sp31C[0] < 0x32) {
		gSPDisplayList(D_8005BB2C++, K0_TO_PHYS(D_800311A8));
		gDPPipeSync(D_8005BB2C++);
		gDPSetCycleType(D_8005BB2C++, G_CYC_FILL);
		gDPSetColorImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, (u32) &D_3DA800);
		gDPSetFillColor(D_8005BB2C++, 0xFFFCFFFC);
		gDPFillRectangle(D_8005BB2C++, 0, 0, (D_80068084 - 1), (D_80068088 - 1));
		gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
		gDPPipeSync(D_8005BB2C++);
		gDPSetDepthImage(D_8005BB2C++, (u32) &D_3DA800);
	}
	func_80095BD4_A4B84(D_8005BB48[D_80031B84_32784], 0x28U, 0xFU, 0x1AU);
	func_80097E1C_A6DCC(var_s3);
	var_s0 = sp2AC[0];
	if (var_s0 >= 0x10) {
		if (var_s0 < 0x20) {
			temp_v0 = var_s0 - 0x10;
			temp_v1 = temp_v0 << 4;
			D_80052B50.unk0 = temp_v1;
			D_80052B50.unk2 = temp_v1;
			D_80052B50.unk4 = temp_v1;
			func_800039D0_45D0(NULL, NULL, &D_80052B50, (s32)D_8005BB38);
			gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		}
		var_s0 = sp2AC[0];
		func_800970C0_A6070();
	}
	if ((var_s0 >= 0x20) && (var_s0 < 0x61)) {
		temp_v0 = sp2AC[0] - 0x20;
		var_t0 = temp_v0 >> 3;
		temp_v0 = temp_v0 & 7;
		temp_v1 = temp_v0;
		var_a1 = var_t0;
		var_a1 <<= 11;
		temp_v1 <<= 3;
		var_s0 = 7;
		do {
			scratch.pixels = (u16 *) &((MapTexture *) D_8006AA6C)->rows[var_s0][var_a1 + temp_v1];
			scratch.pixels[0] |= 0x7800;
			scratch.pixels[1] |= 0x7800;
			scratch.pixels = &scratch.pixels[3];
			scratch.pixels[-1] |= 0x7800;
			scratch.pixels[0] |= 0x7800;
		} while (var_s0--);
		var_a1 = var_t0;
		temp_v1 = temp_v0;
		temp_v1 <<= 8;
		var_a1 <<= 14;
		var_s0 = 7;
		do {
			scratch.pixels = (u16 *) &((MapTextureStrip *) &((MapTexture *) D_8006AA6C)->bytes[var_a1])[var_s0][temp_v1];
			scratch.pixels[0] |= 0x7800;
			scratch.pixels[32] |= 0x7800;
			scratch.pixels = &scratch.pixels[96];
			scratch.pixels[-32] |= 0x7800;
			scratch.pixels[0] |= 0x7800;
		} while (var_s0--);
	}
	if ((sp31C[0] == 0) && (var_s3 == &cam3CC) && (sp284 == 0)) {
		var_t3 = 0x40;
		temp_a0 = D_8014667F_15562F[currentLevel];
		if (temp_a0 > 0) {
			var_t2 = &D_80146688_155638[currentLevel - 1][0];
			var_s1 = 0;
			do {
				temp_t3 = (s32) (var_t2->unk0 - (var_s3->targetX / 2));
				var_t4 = (s32) (var_t2->unk1 + (var_s3->targetY / 2));
				var_t0 = MAX(MAX(temp_t3, -temp_t3), MAX(var_t4, -var_t4));
				if (var_t0 < var_t3) {
					var_t3 = var_t0;
					sp30C = var_t2;
				}
				var_s1 += 0x10;
				var_t2 = &var_t2[1];
			} while (var_s1 < (temp_a0 * 0x10));
		}
		if (sp30C != D_8013D524_14C4D4) {
			D_8013D528_14C4D8 = D_8013D524_14C4D4;
			temp_f0 = D_8014ED18;
			D_8014ED1C = temp_f0;
			D_8014ED18 = 0.0f;
		}
		D_8013D524_14C4D4 = sp30C;
	}
	if (sp31C[0] == 0) {
		if (D_8014ED34 == 1) {
			temp_a1 = MAX(0, D_8014ED32 - 4);
		} else {
			temp_a1 = MIN(0x3C, D_8014ED32 + 4);
		}
		if ((D_8014ED34 == 0) && (temp_a1 == 0x3C) && ((D_8014ED2C == 2) || (D_8014ED2D == 2))) {
			D_8014ED34 = 1;
		}
		if (D_8014ED34 == 0) {
			D_8014ED32 = temp_a1;
			drawText(&D_801423E4_151394, temp_a1 * 4);
		} else {
			D_8014ED32 = temp_a1;
			drawText(&D_801423E8_151398, temp_a1 * 4);
		}
		if (((D_8014ED2D == 2) || (D_8014ED34 != 0)) && ((D_8014ED2C == 2) || ((D_8014ED2D == 2) && (D_8014ED34 == 0)))) {
			drawText(&D_801423EC_15139C, 0, 0xFF, 0xE1, 0xFF);
			if (D_8014ED30 == -1) {
				drawText(&D_801423F4_1513A4, 0x80, 8, &D_801423FC_1513AC);
			} else if (D_8014ED34 == 1) {
				if ((D_8014ED30 == 4) || (D_8013D2D0_14C280[currentLevel * 5 + (D_8014ED30 + 1) - 5].unk8 == 0)) {
					drawText(&D_8014240C_1513BC, 0x80, 8, &D_80142414_1513C4);
				} else {
					drawText(&D_80142424_1513D4, 0x80, 8, &D_8014242C_1513DC, D_8014ED30 + 1);
				}
			} else {
				drawText(&D_80142434_1513E4, 0x80, 8, &D_8014243C_1513EC, D_8014ED30);
			}
		} else if ((D_8013D528_14C4D8 != 0) && ((D_8014ED1C > 0.0f) || (D_8014ED2C == 1))) {
			switch (D_8013D528_14C4D8->unk3) {
			case 0:
				drawText(&D_80142444_1513F4, 0xFF, 0xFF, 0);
				break;
			case 1:
				drawText(&D_80142448_1513F8, 0xFF, 0xFF, 0xFF);
				break;
			case 2:
				drawText(&D_8014244C_1513FC, 0xFF, 0, 0);
				break;
			}
			if (D_8014ED2C == 1) {
				drawText(&D_80142450_151400, 0xFF);
			} else {
				drawText(&D_80142454_151404, (s32) (D_8014ED1C * 255.0f));
			}
			drawText(&D_80142458_151408, 0x80, 8, D_8013D528_14C4D8->name);
		} else if (sp30C != NULL) {
			switch (sp30C->unk3) {
			case 0:
				drawText(&D_80142460_151410, 0xFF, 0xFF, 0);
				break;
			case 1:
				drawText(&D_80142464_151414, 0xFF, 0xFF, 0xFF);
				break;
			case 2:
				drawText(&D_80142468_151418, 0xFF, 0, 0);
				break;
			}
			drawText(&D_8014246C_15141C, (s32) (D_8014ED18 * 255.0f));
			drawText(&D_80142470_151420, 0x80, 8, sp30C->name);
		}
	}
	var_s0 = sp31C[0];
	if (var_s0 < 0x32) {
		func_80097444_A63F4(var_s3->yaw, var_s3->pitch);
	}
	if ((var_s0 == 0) && ((sp2E8[0] |= 4, (sp30C != NULL)) || (D_8013D528_14C4D8 != 0))) {
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (u32) D_1010A80);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 256);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C, 0x7C);
		gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);
		gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
		if (sp30C != NULL) {
			if (0.0f == D_8014ED1C) {
				temp_f0_3 = D_8014ED18 + temp_f22;
				D_8014ED18 = (temp_f0_3 < 1.0) ? temp_f0_3 : 1.0;
			}
			if (D_8014ED18 == 0.5) {
				func_800153D8_15FD8(0x91);
			}
			switch (sp30C->unk3) {
			case 0:
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0xFF, 0x00, 0x96);
				break;
			case 1:
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0xFF, 0xFF, 0x96);
				break;
			case 2:
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0x00, 0x00, 0x96);
				break;
			}
			temp_t3 = sp30C->unk2;
			func_800966EC_A569C(NULL, (sp30C->unk0 << 8), (sp30C->unk1 << 8), temp_t3 * D_8014ED18, 1);
		}
		if ((D_8013D528_14C4D8 != 0) && (D_8014ED1C > 0.0f)) {
			temp_f0_3 = D_8014ED1C;
			D_8014ED1C = (temp_f22 < temp_f0_3) ? (temp_f0_3 - temp_f22) : 0.0;
			switch (D_8013D528_14C4D8->unk3) {
			case 0:
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0xFF, 0x00, 0x96);
				break;
			case 1:
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0xFF, 0xFF, 0x96);
				break;
			case 2:
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0x00, 0x00, 0x96);
				break;
			}
			func_800966EC_A569C(NULL, (D_8013D528_14C4D8->unk0 << 8), (D_8013D528_14C4D8->unk1 << 8), D_8013D528_14C4D8->unk2 * D_8014ED1C, 1);
		}
	}
	{
		s32 spA0;
		gDPPipeSync(D_8005BB2C++);
		gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
		var_s0_4 = &alienInstances[0xFE];
		spA0 = sp2E8[0] & 0x20;
		var_s1 = 0xFE;
		do {
			temp_t3 = var_s0_4->typeIndex;
			if ((temp_t3 >= 2) && (var_s0_4->hitPoints > 0) && (temp_t3 != 0x1A) && (temp_t3 != 0x18)) {
				func_80095D4C_A4CFC(var_s0_4->unk0, var_s0_4->unk4, 0xE6, 0xF, 0xF);
			}
			var_s0_4 = &var_s0_4[-1];

		} while (var_s1--);
		var_s1 = D_80158FD8;
		if (var_s1--) {
			drawItem.list = &D_80158E80[var_s1];
			do {
				scratch.vehicle = &vehicleInstances[*drawItem.list];
				if ((scratch.vehicle != D_80052B34) && ((currentLevel != LEVEL_GREECE) || (scratch.vehicle->unk1A != 0x12))) {
					func_80095D4C_A4CFC(scratch.vehicle->unk0, scratch.vehicle->unk4, 0xF, 0xE6, 0xF);
				}
				drawItem.list = &drawItem.list[-1];

			} while (var_s1--);
		}
		if (sp31C[0] < 0x32) {
			temp_f0 = (((f32) coss(D_8013D534_14C4E4) / 32768.0) + 1.0) * 128.0;
			gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, temp_f0, temp_f0, 0xFF);
			gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
			gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
			gDPSetRenderMode(D_8005BB2C++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);
			gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
			temp_v0 = D_8013D534_14C4E4 + 0x800;
			var_a1 = D_8014D50A;
			var_s0 = D_8014D509;
			D_8013D534_14C4E4 = temp_v0;
			if (var_s0 < var_a1) {
				drawItem.list = &D_8014D408[var_s0];
				do {
					var_s0_4 = &alienInstances[*drawItem.list];
					if (!(var_s0_4->unk20 & ALIEN_FLAG_UNKL)) {
						switch (var_s0_4->typeIndex) {
						case 25:
							gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, (u32) D_50323B0);
							gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
							gDPLoadSync(D_8005BB2C++);
							gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 256);
							gDPPipeSync(D_8005BB2C++);
							gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
							gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C, 0x7C);
							func_800966EC_A569C(NULL, var_s0_4->unk0, var_s0_4->unk4, 4.0f, 1);
							var_a1 = D_8014D50A;
							break;
						case 26:
							gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, (u32) D_50323B0);
							gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
							gDPLoadSync(D_8005BB2C++);
							gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 256);
							gDPPipeSync(D_8005BB2C++);
							gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
							gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C, 0x7C);
							func_800966EC_A569C(NULL, var_s0_4->unk0, var_s0_4->unk4, 4.0f, 1);
							var_a1 = D_8014D50A;
							break;
						case 24:
							gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, (u32) D_50325B0);
							gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
							gDPLoadSync(D_8005BB2C++);
							gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 256);
							gDPPipeSync(D_8005BB2C++);
							gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
									   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
							gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C, 0x7C);
							func_800966EC_A569C(NULL, var_s0_4->unk0, var_s0_4->unk4, 4.0f, 1);
							var_a1 = D_8014D50A;
							break;
						}
					}
					var_s0 += 1;
					drawItem.list = &drawItem.list[1];
				} while (var_s0 < var_a1);
			}
		}
		gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
		var_s0 = (sp2E4 / 40) & 0xFF;
		func_80095D4C_A4CFC(D_80052B34->unk0, D_80052B34->unk4, var_s0, var_s0, var_s0);
		if (spA0) {
			func_80095D4C_A4CFC(D_8014ED06, D_8014ED0A, var_s0, 0, var_s0);
		}
	}
	if (sp31C[0] < 0x32) {
		var_s1 = D_80158FD8;
		var_t3 = 0x7FFFFFFF;
		var_t4 = -1;
		if ((var_s3 == &cam3CC) && (var_s3->distance < 0x12C) && (var_s1 >= 2)) {
			drawItem.list = &D_80158E80[var_s1];
			do {
				temp_t3 = drawItem.list[-1];
				scratch.vehicle = &vehicleInstances[temp_t3];
				temp_a1 = scratch.vehicle->unk4;
				temp_a2_2 = scratch.vehicle->unk0;
				drawItem.list = &drawItem.list[-1];
				if (D_8021EA30[((((temp_a1 >> 8) + 0x80) >> 2) << 6) + (((temp_a2_2 >> 8) + 0x80) >> 2)] & 0xF0) {
					temp_f0 = (temp_a1 >> 7) + var_s3->targetY;
					temp_f2 = (temp_a2_2 >> 7) - var_s3->targetX;
					temp_v1 = (s32) ((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
					if ((D_80052B34 != scratch.vehicle) && (temp_v1 < var_t3) && ((currentLevel != LEVEL_GREECE) || (scratch.vehicle->unk1A != 0x12))) {
						var_t3 = temp_v1;
						var_t4 = temp_t3;
					}
				}
			} while (drawItem.list >= &D_80158E80[2]);
		}
		temp_v0 = var_s3->distance;
		if (var_t4 != D_8013D530_14C4E0) {
			var_f12 = D_8014ED20;
			D_8013D52C_14C4DC = D_8013D530_14C4E0;
			D_8014ED20 = 0.0f;
			D_8014ED24 = var_f12;
		}
		temp_f2 = D_8014ED20;
		var_f12 = D_8014ED24;
		if ((temp_v0 >= 0x12C) && (var_t4 != -1)) {
			D_8013D52C_14C4DC = var_t4;
			var_f12 = temp_f2;
			var_t4 = -1;
		}
		gDPPipeSync(D_8005BB2C++);
		gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_FOG | G_SHADING_SMOOTH);
		gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH | G_LIGHTING);
		gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
		gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
		gDPSetFogColor(D_8005BB2C++, 0, 0, 0, 0xFF);
		gSPFogPosition(D_8005BB2C++, 0x1900, 0xE800);
		gSPLightColor(D_8005BB2C++, LIGHT_1, -1U);
		D_8013D530_14C4E0 = var_t4;
		gSPLightColor(D_8005BB2C++, LIGHT_2, 0x808080FF);
		gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
		gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
		gDPPipeSync(D_8005BB2C++);
		D_8014ED20 = temp_f2;
		D_8014ED24 = var_f12;
		if (var_t4 != -1) {
			temp_f2 = MIN(1, temp_f2 + temp_f22);
			sp2A0 = var_t4;
			temp_v1 = (s32) (temp_f2 * 256.0);
			vec2DC.unk4 = temp_v1;
			vec2DC.unk2 = temp_v1;
			vec2DC.unk0 = temp_v1;
			drawItem.matrix = D_8005BB38;
			D_8014ED20 = temp_f2;
			func_800039D0_45D0(NULL, NULL, &vec2DC, (s32)drawItem.matrix);
			temp_f2 = D_8014ED20;
			gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
			if (temp_f22 <= temp_f2) {
				scratch.vehicle = &vehicleInstances[sp2A0];
				temp_a2_2 = sp2A0;
				temp_a1 = (s32) ((scratch.vehicle->unk0 >> 5) / temp_f2);
				D_8014ED20 = temp_f2;
				func_80097B74_A6B24(temp_a2_2, temp_a1, (s32) (-(scratch.vehicle->unk4 >> 5) / temp_f2), 0, 0x4000 - scratch.vehicle->unk6);
			}
			func_80097E1C_A6DCC(var_s3);
		}
		var_f12 = D_8014ED24;
		if (D_8013D52C_14C4DC != -1U) {
			temp_f0_3 = var_f12;
			var_f12 = (temp_f0_3 < temp_f22) ? 0.0 : (temp_f0_3 - temp_f22);
			temp_f0_3 = var_f12;
			D_8014ED24 = var_f12;
			if (temp_f22 <= temp_f0_3) {
				temp_v1 = (s32) (temp_f0_3 * 256.0);
				vec2DC.unk4 = temp_v1;
				vec2DC.unk2 = temp_v1;
				vec2DC.unk0 = temp_v1;
				func_800039D0_45D0(NULL, NULL, &vec2DC, (s32)D_8005BB38);
				var_f12 = D_8014ED24;
				gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
				scratch.vehicle = &vehicleInstances[D_8013D52C_14C4DC];
				func_80097B74_A6B24(D_8013D52E_14C4DE, (s32) ((scratch.vehicle->unk0 >> 5) / var_f12), (s32) (-(scratch.vehicle->unk4 >> 5) / var_f12), 0, 0x4000 - scratch.vehicle->unk6);
				func_80097E1C_A6DCC(var_s3);
			}
		}
		temp_v0 = var_s3->distance;
		var_a1 = D_8014ED2C;
		if (temp_v0 >= 0x12C) {
			temp_f0_3 = D_8014ED28;
			D_8014ED28 = (temp_f0_3 < temp_f22) ? 0.0 : (temp_f0_3 - temp_f22);
		}
		if (temp_v0 < 0x12C) {
			D_8014ED28 = MIN(1, D_8014ED28 + temp_f22);
		}
		if ((var_a1 == 1) || (D_8014ED2D == 1)) {
			if (var_s3 == &cam3B8) {
				var_f28 = 1.0f;
			} else if (var_s3 == &cam32C) {
				if (var_a1 == 1) {
					if (D_8014ED2E >= 0x2001) {
						temp_f2 = D_8014ED2E - 0x2000;
						var_f28 = temp_f2 / 8192;
						D_8014ED2E = D_8014ED2E;
					} else {
						var_f28 = 0.0f;
					}
				} else if (D_8014ED2E < 0x2000) {
					temp_f2 = 0x2000 - D_8014ED2E;
					var_f28 = temp_f2 / 8192;
					D_8014ED2E = D_8014ED2E;
				} else {
					var_f28 = 0.0f;
				}
			}
			if (D_80052B34->unk1A == 0) {
				vec2D4.unk0 = D_80052B34->unk0 >> 7;
				vec2D4.unk2 = -D_80052B34->unk4 >> 7;
				temp_v1 = (s32) (12.0f * var_f28);
				vec2D4.unk4 = (s32) (7.0f * var_f28);
				vec2CC.unk0 = 0x4000 - D_80052B34->unk6;
				vec2CC.unk2 = 0;
				vec2CC.unk4 = 0;
				vec2DC.unk4 = temp_v1;
				vec2DC.unk2 = temp_v1;
				vec2DC.unk0 = temp_v1;
				func_800039D0_45D0(&vec2D4, &sp2B0, NULL, (s32)D_8005BB38);
				gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
				func_800039D0_45D0(NULL, &vec2CC, &vec2DC, (s32)D_8005BB38);
				gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
				if ((var_f28 > 0.0f) && ((var_s3 == &cam3B8) || (var_s3 == &cam32C))) {
					func_80097994_A6944();
				}
			} else {
				temp_v1 = (s32) (var_f28 * 256.0);
				vec2DC.unk4 = temp_v1;
				vec2DC.unk2 = temp_v1;
				vec2DC.unk0 = temp_v1;
				func_800039D0_45D0(NULL, NULL, &vec2DC, (s32)D_8005BB38);
				gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
				if (var_f28 > 0.0f) {
					func_80097B74_A6B24(D_80052B34 - vehicleInstances, (s32) ((D_80052B34->unk0 >> 5) / var_f28), (s32) ((-D_80052B34->unk4 >> 5) / var_f28), 0, 0x4000 - D_80052B34->unk6);
				}
			}
		}
	}
	if (sp31C[0] < 0x32) {
		func_80097E1C_A6DCC(var_s3);
		func_80096BC4_A5B74((s32) var_s3->targetX << 7, (s32) var_s3->targetY << 7);

		gDPLoadTLUT_pal16(D_8005BB2C++, 0, (u32) D_5032390);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, (u32) D_5032190);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 256);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C, 0x7C);
		gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
		gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
		gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
		gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);
		if (D_8014ED2C != 3) {
			func_800966EC_A569C(var_s3, D_80052B34->unk0, D_80052B34->unk4, var_s3->distance * 0.02, 4);
		}
		gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	}
	if (D_8014ED2C == 3) {
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (u32) D_1010A80);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 256);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C, 0x7C);
		gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);
		gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
		gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x80, 0xFF, 0xFF, 0xC8);
		drawItem.stage = &D_8013D3D4_14C384[(D_8013D3CC_14C37C[currentLevel - 1] + D_80048030) & 0xFF];
		func_800966EC_A569C(var_s3, drawItem.stage->x << 8, drawItem.stage->z << 8, drawItem.stage->size, 1);
		cam3A4.targetX = drawItem.stage->x * 2;
		cam3A4.targetY = (drawItem.stage->z * -2) - 0x2E;
	}
	if (sp31C[0] == 0) {
		gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xA0, 0x00, 0xA0, 0xAA);
		if (((D_8014ED2D == 2) || (D_8014ED34 != 0)) && ((D_8014ED2C == 2) || ((D_8014ED2D == 2) && (D_8014ED34 == 0)))) {
			if (D_8014ED30 == -1) {
				var_s0 = func_8000A2B8_AEB8(D_80142478_151428, 0) + 0x20;
			} else if (D_8014ED34 == 1) {
				if ((D_8014ED30 == 4) || (D_8013D2D0_14C280[currentLevel * 5 + (D_8014ED30 + 1) - 5].unk8 == 0)) {
					var_s0 = func_8000A2B8_AEB8(D_80142488_151438, 0) + 0x20;
				} else {
					var_s0 = func_8000A2B8_AEB8(D_80142498_151448, 0) + 0x20;
				}
			} else {
				var_s0 = func_8000A2B8_AEB8(D_801424A0_151450, 0) + 0x20;
			}
			temp_v1 = var_s0 >> 1;
			func_800092B8_9EB8((((s32) D_80068084 / 2) - temp_v1) << 2, (D_8014ED32 + 0xAE) << 2, (((s32) D_80068084 / 2) + temp_v1) << 2, (D_8014ED32 + 0xD4) << 2, 2U);
		} else {
			if (D_8013D528_14C4D8 != 0) {
				var_s0 = func_8000A2B8_AEB8(D_8013D528_14C4D8->name, 0) + 0x20;
			} else {
				var_s0 = 0;
			}
			if (sp30C != NULL) {
				var_t0 = func_8000A2B8_AEB8(sp30C->name, 0) + 0x20;
			} else {
				var_t0 = 0;
			}
			if (D_8014ED2C == 1) {
				var_t0 = var_s0;
			}
			if ((D_8014ED1C > 0.0f) || (D_8014ED2C == 1)) {
				if ((var_s0 < var_t0) || (var_t0 == 0)) {
					var_s0 += (s32) ((1.0 - D_8014ED1C) * (f32) (var_t0 - var_s0));
				}
				if ((D_8013D528_14C4D8 != 0) && (var_s0 > 0)) {
					temp_v1 = var_s0 >> 1;
					func_800092B8_9EB8(((((s32) D_80068084 / 2) - temp_v1) - 5) << 2, (D_8014ED32 + 0xAE) << 2, (((s32) D_80068084 / 2) + temp_v1) << 2, (D_8014ED32 + 0xD4) << 2, 2U);
				}
			} else {
				if (var_t0 < var_s0) {
					var_t0 += (s32) ((1.0 - D_8014ED18) * (f32) (var_s0 - var_t0));
				}
				if ((sp30C != NULL) && (var_t0 > 0)) {
					temp_v1 = var_t0 >> 1;
					func_800092B8_9EB8(((((s32) D_80068084 / 2) - temp_v1) - 5) << 2, (D_8014ED32 + 0xAE) << 2, (((s32) D_80068084 / 2) + temp_v1) << 2, (D_8014ED32 + 0xD4) << 2, 2U);
				}
			}
		}
	}
	sp2E4 += 0x190;
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	if (sp27C == 0) {
		gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);
		sp27C = func_8000E53C_F13C();
	}
	func_80018AEC_196EC(0x1E, 0x1E, 0x64);
	if ((var_s3 == &cam3A4) && (func_80018A58_19658() != 0)) {
		D_80053BF8 = 0x7F;
		D_80053BF0 = 0x7F;
		D_80053BFA = 0xC8;
		D_80053BF2 = 0xC8;
		D_80053BFC = 0xDC;
		D_80053BF4 = 0xDC;
		D_80053BF6 = 0;
		D_80053BFE = 0xFF;
		gDPPipeSync(D_8005BB2C++);
		func_80017CA4_188A4();
	}
	func_8000B044_BC44();
	func_8000505C_5C5C();
	var_s0 = sp31C[0];
	if (var_s0 != 0) {
		var_s0 -= 1;
	}
	sp2AC[0] += 1;
	D_80052AD8 += 1;
	if (isButtonNewlyPressed(0, 0x5000U)) {
		if (D_8014ED2C == 3) {
			func_80018D58_19958();
		}
		D_8014ED56 = 0;
		break;
	} else {
		sp31C[0] = var_s0;
	}
	}
	func_8000AFDC_BBDC();
	func_800056A8_62A8();
	func_800056A8_62A8();
	if ((D_80052ACA == 2) && (currentLevel != LEVEL_COMET)) {
		func_80011D6C_1296C(6);
	} else {
		func_80011D6C_1296C(D_80047F93);
	}
	func_800050C4_5CC4();
	D_80052ACC = 0;
	gameplayMode = GAMEPLAY_MODE_UNK1;
	func_80013324_13F24();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_8009811C_A70CC.s")
#endif
