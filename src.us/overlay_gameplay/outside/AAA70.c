#include <ultra64.h>
#include "common.h"
#include "overlay_gameplay/outside/missions.h"
#include "overlay_gameplay/outside/148000.h"
#include "core/53F0.h"
#include "core/1B100.h"
#include "core/12C80.h"
#include "core/1050.h"

// Menu strings (English)
const char D_80142510_1514C0[] = "%Y%a";
const char D_80142518_1514C8[] = "Change Weapon";
const char D_80142528_1514D8[] = "Use Fuel";
const char D_80142534_1514E4[] = "Unhitch";
const char D_8014253C_1514EC[] = "Map";
const char D_80142540_1514F0[] = "Auto";
const char D_80142548_1514F8[] = "Unload";
const char D_80142550_151500[] = "Load";
const char D_80142558_151508[] = "Exit";
const char D_80142560_151510[] = "Play";
const char D_80142568_151518[] = "Print";
const char D_80142570_151520[] = "Save";
const char D_80142578_151528[] = "Nowt 2";
const char D_80142580_151530[] = "Clue Screen";
const char D_8014258C_15153C[] = "Inventory";
const char D_80142598_151548[] = "Quit";

// Menu strings (French)
const char D_801425A0_151550[] = "Change Weapon";
const char D_801425B0_151560[] = "Carburant";
const char D_801425BC_15156C[] = "Unhitch";
const char D_801425C4_151574[] = "Carte";
const char D_801425CC_15157C[] = "Auto";
const char D_801425D4_151584[] = "Unload";
const char D_801425DC_15158C[] = "Load";
const char D_801425E4_151594[] = "Exit";
const char D_801425EC_15159C[] = "Jouer";
const char D_801425F4_1515A4[] = "Print";
const char D_801425FC_1515AC[] = "Save";
const char D_80142604_1515B4[] = "Nowt 2";
const char D_8014260C_1515BC[] = "Clue Screen";
const char D_80142618_1515C8[] = "Inventaire";
const char D_80142624_1515D4[] = "Quitter";

// Menu strings (German)
const char D_8014262C_1515DC[] = "Change Weapon";
const char D_8014263C_1515EC[] = "Tanken";
const char D_80142644_1515F4[] = "Unhitch";
const char D_8014264C_1515FC[] = "Karte";
const char D_80142654_151604[] = "Auto";
const char D_8014265C_15160C[] = "Unload";
const char D_80142664_151614[] = "Load";
const char D_8014266C_15161C[] = "Exit";
const char D_80142674_151624[] = "Spielen";
const char D_8014267C_15162C[] = "Print";
const char D_80142684_151634[] = "Save";
const char D_8014268C_15163C[] = "Nowt 2";
const char D_80142694_151644[] = "Clue Screen";
const char D_801426A0_151650[] = "Inventar";
const char D_801426AC_15165C[] = "Verlassen";
const char D_801426B8_151668[] = " ";

const f64 D_801426C0_151670[1] = {150.0};
const f64 D_801426C8_151678[1] = {150.0};
const f64 D_801426D0_151680[1] = {255.0};
const f64 D_801426D8_151688[1] = {255.0};
const f64 D_801426E0_151690[1] = {255.0};
const f64 D_801426E8_151698[1] = {255.0};
const f64 D_801426F0_1516A0[1] = {255.0};
const f64 D_801426F8_1516A8[1] = {255.0};
const f64 D_80142700_1516B0[1] = {255.0};
const f64 D_80142708_1516B8[1] = {255.0};

u32 D_8013D540_14C4F0[16] = {
	0xFFFFFFFF, 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFF00,
	0xFFFFFFFF, 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFF00,
	0xFFFFFFFF, 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFF00,
	0xFFFFFFFF, 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFF00,
};

s32 D_8013D580_14C530 = 0;
u8 D_8013D584_14C534[4] = { 0x03, 0x02, 0x03, 0x03 };
Unk80052B40 D_8013D588_14C538 = { 0x0080, 0x0080, 0x0080 };
ScannerPalette D_8013D590_14C540 = { {
	0x000067C1, 0xFB013401, 0x8181FFFF, 0x66667777, 0x88889999,
	0xAAAABBBB, 0xCCCCDDDD, 0xEEEEFFFF, 0x00010000
} };
s16 D_8013D5B4_14C564 = 0;
s16 D_8013D5B8_14C568 = 0;
s16 D_8013D5BC_14C56C = 0;
s16 D_8013D5C0_14C570[8] = { 0, 0, 0, 1, 0, 0x1388, -1, -100 };
SignedWord D_8013D5D0_14C580 = { 0 };
SignedWord D_8013D5D4_14C584 = { 0 };
SignedWord D_8013D5D8_14C588 = { 0 };
s32 D_8013D5DC_14C58C = 0;
s32 D_8013D5E0_14C590 = 0;
u8 D_8013D5E4_14C594[4] = { 0x00, 0x00, 0x00, 0x00 };
Vtx D_8013D5E8_14C598[4] = {
	{ { { 0x0018, -24, 0x0000 }, 0, { 0x07E0, 0x0000 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
	{ { { -24, -24, 0 }, 0, { 0, 0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
	{ { { 24, 24, 0 }, 0, { 0x07E0, 0x07E0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
	{ { { -24, 24, 0 }, 0, { 0, 0x07E0 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
};
Vtx D_8013D628_14C5D8[4] = {
	{ { { 24, -24, 0 }, 0, { 0x0800, 0x0800 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
	{ { { -24, -24, 0 }, 0, { 0x0000, 0x0800 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
	{ { { 24, 24, 0 }, 0, { 0x0800, 0x0000 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
	{ { { -24, 24, 0 }, 0, { 0x0000, 0x0000 }, { 0xFF, 0xFF, 0xFF, 0xFF } } },
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

s32 func_8009BC48_AABF8(s32 arg0, s32 arg1, s32 arg2)
{
	s32 var_v1;
	s32 new_var;
	s32 temp_t0;
	s32 temp_v1;
	temp_v1 = arg0 - 0x10;
	temp_t0 = arg1 - 0x10;
	var_v1 = arg0;
	new_var = temp_t0;
	if ((((var_v1 >= 0) && ((var_v1 - 0x10) < 0x10)) && (new_var >= (-0x10))) && (temp_t0 < 0x10))
	{
		var_v1 = 0x100;
		if (arg2 != 0)
		{
			var_v1 = 0x80;
		}
		if (((temp_v1 * temp_v1) + (temp_t0 * temp_t0)) < var_v1)
		{
			if (var_v1)
			{
			}
			return 1;
		}
	}
	return 0;
}

s32 func_8009BCC0_AAC70(s32 arg0, s32 arg1, u8 arg2) {
	u8 *ptr;

	if (func_8009BC48_AABF8(arg0, arg1, 0) != 0) {
		if (arg0 & 1) {
			if (D_8014EDD8 != 0) {
				return 1;
			}
			ptr = &D_8014EDE0.bytes[(arg1 << 4) + arg0 / 2];
			*ptr &= 0xF0;
			*ptr |= arg2;
			return 1;
		}
		if (D_8014EDD8 != 0) {
			return 1;
		}
		ptr = &D_8014EDE0.bytes[(arg1 << 4) + arg0 / 2];
		*ptr &= 0xF;
		*ptr |= (arg2 << 4);
		return 1;
	}
	return 0;
}

// Draw letter ?
void func_8009BDB8_AAD68(u8 arg0, u8 arg1) {
	gDPLoadTextureBlock_4b(D_8005BB2C++, K0_TO_PHYS(D_1009C70 + (arg1 << 7)), G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD);

	gSPTextureRectangle(D_8005BB2C++, (s32)arg0 * 4, 0xA0, (arg0 + 0x15) << 2, 0xF4, G_TX_RENDERTILE, 0, 0, 0x0300, 0x0300);

	gDPPipeSync(D_8005BB2C++);
}

void func_8009BF64_AAF14(u16 arg0) {
	u8 minutes;
	u8 digit;
	u8 divisor;

	divisor = 60;
	if (divisor) {}

	minutes = arg0 / divisor;
	arg0 %= 60;

	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x32, 0x5A, 0xE6, 0xFF);
	gDPPipeSync(D_8005BB2C++);

	func_8009BDB8_AAD68(0x1E, minutes);
	if ((u32)D_80052A8C % 20U < 0xAU) {
		func_8009BDB8_AAD68(0x29, 0xAU);
	}

	if (arg0 < 10) {
		func_8009BDB8_AAD68(0x32, 0);
		digit = arg0 % 10;
	} else {
		digit = arg0 % 10;
		func_8009BDB8_AAD68(0x32, (arg0 - digit) / 10);
	}

	func_8009BDB8_AAD68(0x41, digit);
}

// https://decomp.me/scratch/pjZZY
// drawWaypointMarker ?
void func_8009C1D8_AB188(s16 arg0, s16 arg1, s32 arg2)
{
	s16 sp36;
	s16 sp34;
	s16 var_v1;

	sp36 = func_80003824_4424((f32)(D_80052B34->unk4 - arg1), (f32)(D_80052B34->unk0 - arg0)) - D_80047950;
	sp34 = ((D_801426C0_151670[0] * ((f32)sins(sp36) / 32768.0)) + (D_80068084 >> 1));
	var_v1 = ((D_801426C8_151678[0] * ((f32)coss(sp36) / 32768.0)) + (D_80068088 >> 1));
	if (sp34 > 0x117)
	{
		sp34 = 0x117;
	}
	if (sp34 < 0x1C)
	{
		sp34 = 0x1C;
	}
	if (var_v1 < 0x1A)
	{
		var_v1 = 0x1A;
	}
	if (var_v1 > 0xCE)
	{
		var_v1 = 0xCE;
	}
	D_80052B40.unk0 = sp34;
	D_80052B40.unk2 = var_v1;
	D_80052B40.unk4 = -1;
	if (arg2 != 0)
	{
		D_80052B48.unk0 = 0;
		D_80052B48.unk2 = (s16)(0x8000 - sp36);
		D_80052B48.unk4 = 0;
	}
	func_800039D0_45D0(&D_80052B40, (arg2 != 0) ? &D_80052B48 : NULL, &D_8013D588_14C538, D_8005BB38);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8013D5E8_14C598), 4, 0);
	gSP1Quadrangle(D_8005BB2C++, 1, 0, 2, 3, 0);
	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
}

// AI - Trigger a screen shake by adding +0x10 to both the X/Y shake offsets
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

// Textured-rect draw (same tile setup as func_8009BDB8_AAD68 above, screen-relative)
// AI - Draws a 16x16 I4 tile (D_1009C70 + arg1<<7) as a screen-relative rectangle at arg0 via gSPTextureRectangle.
void func_8009C4F8_AB4A8(u8 arg0, u8 arg1) {
	gDPLoadTextureBlock_4b(D_8005BB2C++, K0_TO_PHYS(D_1009C70 + (arg1 << 7)), G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD);
	gSPTextureRectangle(D_8005BB2C++,
		(s32)arg0 * 4,
		(D_80068088 - 0x24) << 2,
		(arg0 + 0xB) << 2,
		(D_80068088 - 0x19) << 2,
		G_TX_RENDERTILE,
		0,
		0,
		0x0600,
		0x0600);
	gDPPipeSync(D_8005BB2C++);
}

// Additional params
// sp10 Pointer to icon
// sp14 Type, 2=Vertical, 3=Horizontal ...
// sp18 Values > 0 scale icon smaller
// sp1c Alters color of the bar - used to make it flash
// sp20 Length of the bar background
// drawHudBarWithIcon
#ifdef NON_MATCHING
// Rectangle shifts and chained vertex stores restored; remaining differences are cursor caching and floating clamp scheduling.
void func_8009C6CC_AB67C(s16 arg0, s16 arg1, f32 arg2, s32 arg3, u8 *arg4, s32 arg5, s32 arg6, s32 arg7, s16 arg8) {
	Vtx *vtx0;
	Vtx *vtx1;
	Vtx *vtx2;
	Vtx *vtx3;
	f64 pad;
	s32 tempT2;
	s32 iconSwap;

	vtx0 = D_8005BB34++;
	vtx1 = D_8005BB34++;
	vtx2 = D_8005BB34++;
	vtx3 = D_8005BB34++;

	iconSwap = 0;

	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x3C, 0x50, 0x78, 0xC8);

	if ((arg5 == 2) && (arg8 >= 0x6F)) {
		arg8 = 0x6E;
	}

	if (func_80004498_5098(arg2) == 0) {
		arg2 = 0.0f;
	}

	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPPipeSync(D_8005BB2C++);

	if (arg3 != 0) {
		tempT2 = D_8014F1F4;
	} else {
		tempT2 = D_8014F1FA;
	}

	D_80052B40.unk0 = 0;
	if (arg5 == 2) {
		D_80052B40.unk2 = 0;
	} else {
		D_80052B40.unk2 = arg1 + tempT2;
	}
	D_80052B40.unk4 = 0;
	D_80052B50.unk0 = 0x100;
	D_80052B50.unk2 = 0x100;
	D_80052B50.unk4 = 0;

	func_800039D0_45D0(&D_80052B40, 0, &D_80052B50, D_8005BB38);

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	if (arg3 != 0) {
		arg0 = arg0 - 7;
		func_800092B8_9EB8(((arg0 - arg8) - 6) << 2, ((arg1 + tempT2) - 8) << 2, (arg0 + 9) << 2,
			((arg1 + tempT2) + 6) << 2, 3);
	} else {
		arg0 = arg0 + 7;
		if (arg5 == 2) {
			func_800092B8_9EB8((arg0 - 0x11) << 2, ((arg1 - arg8) - 0xE) << 2, (arg0 - 2) << 2, (arg1 - 5) << 2, 3);
		} else {
			func_800092B8_9EB8(((arg0 - arg8) - 0xE) << 2, ((arg1 + tempT2) - 8) << 2, (arg0 + 5) << 2,
				((arg1 + tempT2) + 6) << 2, 3);
		}
	}

	if (arg5 != 0) {
		vtx0 = D_8005BB34++;
		vtx1 = D_8005BB34++;
		vtx2 = D_8005BB34++;
		vtx3 = D_8005BB34++;

		if (arg5 == 2) {
			vtx3->v.ob[0] = vtx0->v.ob[0] = arg0 - 0xD;
			vtx1->v.ob[0] = vtx2->v.ob[0] = arg0 - 5;

			vtx0->v.ob[1] = vtx1->v.ob[1] = arg1 - 0xA;
			vtx3->v.ob[1] = vtx2->v.ob[1] = (s16)(((f32)(arg1 - 9) - ((f32)arg8 * arg2)) - 1.0f);

			vtx2->v.ob[2] = -1;
			vtx0->v.ob[2] = vtx1->v.ob[2] = vtx3->v.ob[2] = vtx2->v.ob[2];

			vtx0->v.cn[0] = vtx1->v.cn[0] = 0xFF;
			vtx0->v.cn[1] = vtx1->v.cn[1] = MIN(0xFF, arg7 << 5);
			vtx0->v.cn[2] = vtx1->v.cn[2] = MIN(0xFF, arg7 << 5);

			vtx3->v.cn[0] = vtx2->v.cn[0] = 0xFF;
			vtx3->v.cn[1] = vtx2->v.cn[1] = (u32)MIN(D_801426D0_151680[0], arg2 * D_801426D8_151688[0] + (arg7 << 5));
			vtx3->v.cn[2] = vtx2->v.cn[2] = MIN(0xFF, arg7 << 5);

			vtx3->v.tc[0] = 0;
			vtx1->v.tc[1] = vtx2->v.tc[1] = vtx2->v.tc[0] = vtx3->v.tc[0];
			vtx0->v.tc[0] = vtx1->v.tc[0] = (s16)((f32)(arg8 * D_80047710 * 0x10) * arg2);
			vtx3->v.tc[1] = 0x400;
			vtx0->v.tc[1] = vtx3->v.tc[1];
		} else {
			if (arg3 != 0) {
				vtx0->v.ob[0] = arg0 - 1;
				vtx3->v.ob[0] = arg0 - 1;
				vtx1->v.ob[0] = vtx2->v.ob[0] = (s16)(((f32)arg0 - ((f32)arg8 * arg2)) - 1.0f);
			} else {
				vtx0->v.ob[0] = arg0 - 0x2F;
				vtx3->v.ob[0] = arg0 - 0x2F;
				vtx1->v.ob[0] = vtx2->v.ob[0] = (s16)((f32)(arg0 - 0x30) + ((f32)arg8 * arg2) + 1.0f);
			}

			vtx1->v.ob[1] = 3;
			vtx0->v.ob[1] = vtx1->v.ob[1];
			vtx2->v.ob[1] = -4;
			vtx3->v.ob[1] = vtx2->v.ob[1];

			vtx2->v.ob[2] = -1;
			vtx0->v.ob[2] = vtx1->v.ob[2] = vtx3->v.ob[2] = vtx2->v.ob[2];

			if (arg5 == 3) {
				vtx0->v.cn[0] = (vtx3->v.cn[0] = (vtx2->v.cn[0] = (vtx1->v.cn[0] = 0xFF)));

				if (D_8013D5DC_14C58C != 0) {
					vtx0->v.cn[1] = vtx3->v.cn[1] = vtx2->v.cn[1] = vtx1->v.cn[1] = MIN(0xFF, arg7 << 5);
				} else {
					vtx0->v.cn[1] = vtx3->v.cn[1] = vtx2->v.cn[1] = vtx1->v.cn[1] = (u32)MIN(D_801426E0_151690[0], (1.0f - arg2) * D_801426E8_151698[0] + (arg7 << 5));
				}

				vtx0->v.cn[2] = vtx3->v.cn[2] = vtx2->v.cn[2] = vtx1->v.cn[2] = MIN(0xFF, arg7 << 5);
			} else if (arg5 == 4) {
				vtx0->v.cn[0] = vtx3->v.cn[0] = MIN(0xFF, arg7 << 5);
				vtx0->v.cn[1] = vtx3->v.cn[1] = MIN(0xFF, arg7 << 5);
				vtx3->v.cn[2] = 0xFF;
				vtx0->v.cn[2] = 0xFF;

				vtx2->v.cn[0] = vtx1->v.cn[0] = (u32)MIN(D_801426F0_1516A0[0], arg2 * D_801426F8_1516A8[0] + (arg7 << 5));
				vtx2->v.cn[1] = vtx1->v.cn[1] = (u32)MIN(D_801426F0_1516A0[0], arg2 * D_801426F8_1516A8[0] + (arg7 << 5));
				vtx1->v.cn[2] = 0xFF;
				vtx2->v.cn[2] = 0xFF;
			} else {
				vtx3->v.cn[0] = 0xFF;
				vtx0->v.cn[0] = 0xFF;
				vtx0->v.cn[1] = vtx3->v.cn[1] = MIN(0xFF, arg7 << 5);
				vtx0->v.cn[2] = vtx3->v.cn[2] = MIN(0xFF, arg7 << 5);

				vtx1->v.cn[0] = 0xFF;
				vtx2->v.cn[0] = 0xFF;
				vtx2->v.cn[1] = vtx1->v.cn[1] = (u32)MIN(D_80142700_1516B0[0], arg2 * D_80142708_1516B8[0] + (arg7 << 5));
				vtx2->v.cn[2] = vtx1->v.cn[2] = MIN(0xFF, arg7 << 5);
			}

			vtx1->v.tc[1] = 0;
			vtx0->v.tc[1] = vtx0->v.tc[0] = vtx3->v.tc[0] = vtx1->v.tc[1];
			vtx2->v.tc[1] = 0x400;
			vtx3->v.tc[1] = vtx2->v.tc[1];
			vtx2->v.tc[0] = vtx1->v.tc[0] = (s16)((f64)arg8 * 128.0 * (f64)arg2);
		}

		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
		gDPSetRenderMode(D_8005BB2C++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
		gDPLoadTextureBlock(D_8005BB2C++, D_8013D540_14C4F0, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD);
		gDPSetTextureFilter(D_8005BB2C++, G_TF_POINT);
		gDPSetCombineMode(D_8005BB2C++, G_CC_SHADEDECALA, G_CC_SHADEDECALA);
		gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK);
		gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
		gDPPipeSync(D_8005BB2C++);
		gSP1Quadrangle(D_8005BB2C++, 0, 1, 2, 3, 0);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	}

	if (arg4 != NULL) {
		vtx0 = D_8005BB34++;
		vtx1 = D_8005BB34++;
		vtx2 = D_8005BB34++;
		vtx3 = D_8005BB34++;

		if (arg5 == 2) {
			vtx0->v.ob[0] = arg0 - 0x12;
			vtx2->v.ob[0] = arg0 - 0x12;
			vtx1->v.ob[0] = arg0;
			vtx3->v.ob[0] = arg0;

			vtx3->v.ob[1] = arg1 + 9;
			vtx2->v.ob[1] = arg1 + 9;
			vtx1->v.ob[1] = arg1 - 9;
			vtx0->v.ob[1] = arg1 - 9;
		} else {
			vtx2->v.ob[0] = vtx0->v.ob[0] = arg0 - (arg3 != 0 ? 0 : 0x30);
			vtx3->v.ob[0] = vtx1->v.ob[0] = arg0 - (arg3 != 0 ? -0x12 : 0x42);

			vtx3->v.ob[1] = 9;
			vtx2->v.ob[1] = vtx3->v.ob[1];
			vtx1->v.ob[1] = -9;
			vtx0->v.ob[1] = vtx1->v.ob[1];
		}

		vtx1->v.ob[2] = -1;
		vtx2->v.ob[2] = vtx3->v.ob[2] = vtx0->v.ob[2] = vtx1->v.ob[2];

		vtx2->v.tc[1] = vtx3->v.tc[1] = vtx2->v.tc[0] = vtx0->v.tc[0] = (arg6 * 0x30) + 0x600;
		vtx0->v.tc[1] = vtx1->v.tc[1] = vtx3->v.tc[0] = vtx1->v.tc[0] = -arg6 * 0x30;

		vtx1->v.cn[0] = 0xB9;
		vtx0->v.cn[0] = 0xB9;
		vtx3->v.cn[0] = 0xB9;
		vtx2->v.cn[0] = 0xB9;
		vtx1->v.cn[1] = 0xFF;
		vtx0->v.cn[1] = 0xFF;
		vtx3->v.cn[1] = 0xFF;
		vtx2->v.cn[1] = 0xFF;
		vtx1->v.cn[2] = 0xFF;
		vtx0->v.cn[2] = 0xFF;
		vtx3->v.cn[2] = 0xFF;
		vtx2->v.cn[2] = 0xFF;

		if ((arg5 == 2) && (arg4 == &D_8025CCC0[0x1F80]) && (D_80158FEC != NULL) && (D_80158FEC->typeIndex == 1)) {
			arg4 = &D_8025F780;
			D_8013D5E0_14C590 = (s32)&D_8025F780;
			iconSwap = 1;
		}

		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);
		gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
		gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
		gDPLoadTextureBlock(D_8005BB2C++, arg4, G_IM_FMT_IA, G_IM_SIZ_8b, 24, 24, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
		gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);
		gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
		gSP2Triangles(D_8005BB2C++, 0, 1, 2, 0, 3, 1, 2, 0);
		gDPPipeSync(D_8005BB2C++);
		gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	}

	if (iconSwap != 0) {
		iconSwap = 1;
	}

	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009C6CC_AB67C.s")
#endif

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

// Draw health, fuel, human-count and context bars.
void func_8009D96C_AC91C(void)
{
	s16 blinkFrame;
	AlienInstance *selectedAlien;
	u8 vehicleType;
	s16 panelHeight;
	f32 lengthValue;
	s16 buildingMaxHealth;
	s32 value;
	u8 *texture;
	s16 barWidth;
	f32 healthFraction;
	s16 flashTimer;
	s16 blinkPeriod;
	s32 entityId;
	s32 verticalOffset;
	s16 fuel;
	s16 health;
	s16 maxHealth;
	selectedAlien = D_80158FEC;
	guOrtho(&D_8014ED98, 0.0f, (f32) D_80068084, (f32) D_80068088, 0.0f, -1000.0f, 1000.0f, 1.0f);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BOTH | G_LIGHTING);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPSetRenderMode(D_8005BB2C++, ((((((0x40 | 0x200) | 0x4000) | 0) | (0 << 30)) | (0 << 26)) | (1 << 22)) | (0 << 18), ((((((0x40 | 0x200) | 0x4000) | 0) | (0 << 28)) | (0 << 24)) | (1 << 20)) | (0 << 16));
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	func_800039D0_45D0(0, 0, 0, D_8005BB38);
	gSPMatrix(D_8005BB2C++, ((u32) (D_8005BB38++)) & 0x1FFFFFFF, (G_MTX_NOPUSH | G_MTX_LOAD) | G_MTX_MODELVIEW);
	if (D_8014F1F6 != 0)
	{
		D_8014F1F4 += D_8014F1F6;
		if (D_8014F1F4 >= 0x81)
		{
			D_8014F1F4 = 0x80;
			D_8014F1F6 = 0;

		}
		if (D_8014F1F4 < 0)
		{
			D_8014F1F4 = 0;
			D_8014F1F6 = 0;
		}
	}
	if (D_8014F1F8 != 0)
	{
		D_8014F1FA += D_8014F1F8;
		if (D_8014F1FA >= 0x81)
		{
			D_8014F1FA = 0x80;
			D_8014F1F8 = 0;

		}
		if (D_8014F1FA < 0)
		{
			D_8014F1FA = 0;
			D_8014F1F8 = 0;
		}
	}
	D_8014F202 = 0;
	if (gameplayMode != 0xC)
	{
		if (selectedAlien != 0)
		{
			if (selectedAlien->typeIndex != 0)
			{

				if (selectedAlien->unk20 & ALIEN_FLAG_UNKL)
				{
					lengthValue = 0.0f;
				}
				else
				{
					lengthValue = (f32) (((f64) ((f32) selectedAlien->hitPoints)) / 100.0);
				}

				barWidth = (s16) ((((f64) alienTypes[selectedAlien->typeIndex].unk3A) / 100.0) * 50.0);
				func_8009D900_AC8B0(&barWidth, &lengthValue, 0xB4);

				healthFraction = ((f32) selectedAlien->hitPoints) / ((f32) alienTypes[selectedAlien->typeIndex].unk3A);
				texture = &D_8025EC40;
				flashTimer = D_8014ED44;
				entityId = (s32) selectedAlien;
				D_8014F202 = 3;
				if (D_80158FF0 != 0)
				{
					D_8014F202 = 4;
				}
			}
		}
		else
		{

			if (currentControllerStates[0].button & 0x10)
			{
				if (D_80158FE4 != 0)
				{

					if ((currentLevel != 1) || (D_80158FE4->unk1A != 0x12))
					{
						lengthValue = (f32) (((f64) ((f32) D_80158FE4->unk1C)) / 500.0);

						barWidth = (s16) ((((f64) vehicleTypes[D_80158FE4->unk1A].hitPoints) / 500.0) * 50.0);
						func_8009D900_AC8B0(&barWidth, &lengthValue, 0xB4);

						healthFraction = ((f32) D_80158FE4->unk1C) / ((f32) vehicleTypes[D_80158FE4->unk1A].hitPoints);
						texture = &D_8025EE80;
						flashTimer = D_8014ED4A;
						D_8014F202 = 2;
						entityId = (s32) D_80158FE4;
					}
				}
				else
				if (D_80158FE8 != 0)
				{

					value = D_80158FE8->hitPoints;
					buildingMaxHealth = buildingTypes[D_80158FE8->buildingType].unk19;
					if (currentLevel == 5)
					{
						value = (s16)(value / 3);
					}
					lengthValue = (f32) (((f64) ((f32) value)) * 0.0625);
					barWidth = (s16) ((((f64) ((f32) buildingMaxHealth)) * 0.0625) * 50.0);
					func_8009D900_AC8B0(&barWidth, &lengthValue, 0xB4);
					healthFraction = ((f32) value) / ((f32) buildingMaxHealth);
					texture = &D_8025F0C0;
					flashTimer = D_8014ED48;
					D_8014F202 = 1;
					entityId = (s32) D_80158FE8;
				}
			}
		}
	}
	if (D_8014F202 == 0)
	{
		flashTimer = 0;
		barWidth = 0;
		entityId = 0;
		healthFraction = 0.0f;
		texture = (u8 *)D_8013D5E0_14C590;
	}
	D_8013D5E0_14C590 = (s32)texture;
	func_8009E994_AD944(healthFraction, texture, flashTimer, barWidth, entityId);
	D_8014F203 = D_8014F202;
	if (D_8014F1FA != 0x80)
	{
		blinkPeriod = 5 - (D_8015931A / 200);
		if (currentLevel == 5)
		{
			verticalOffset = 0;
		}
		else
		{
			verticalOffset = -0x14;
		}
		if ((D_80052B34->unk1C > 0) && (blinkPeriod != 0))
		{
			blinkFrame = 7 - ((D_80052A8C / ((u32) blinkPeriod)) & 7);
			if (blinkFrame >= 5)
			{
				blinkFrame -= 4;
			}
			if (D_8015931A == 0)
			{
				blinkFrame = 0;
			}
			if ((D_8015931A > 0) && (D_8015931A < 0xC9))
			{
				D_8014ED4C = D_8014ED42;
				func_8009C6CC_AB67C(0x50, (s16) ((D_80068088 + verticalOffset) - 0x1E), ((f32) (0xC8 - D_8015931A)) / 200.0f, 0, &D_8025F540, 4, blinkFrame, D_8014ED4C, 0x30);
			}
			else
			{

				if (vehicleInstances[0].unk1C >= (((s32) vehicleTypes[vehicleInstances[0].unk1A].hitPoints) >> 2))
				{
					D_8014ED4C = D_8014ED42;
				}
				func_8009C6CC_AB67C(0x50, (s16) ((D_80068088 + verticalOffset) - 0x1E), ((f32) vehicleInstances[0].unk1C) / ((f32) vehicleTypes[vehicleInstances[0].unk1A].hitPoints), 0, &D_8025F540, 1, blinkFrame, D_8014ED4C, 0x30);
			}
		}
		else
		{
			func_8009C6CC_AB67C(0x50, (s16) ((D_80068088 + verticalOffset) - 0x1E), 0.0f, 0, &D_8025F540, 0, 0, 0, 0x30);
		}
		if (currentLevel < 5)
		{
			if ((D_8014F204 != D_8004816A) && ((((s32)(u8) D_800314C4) - 3) >= D_8004816A))
			{
				D_8014ED52 = 8;
			}
			if (((s32) ((u32)(u8) D_800314C4)) < D_8004816A)
			{
				D_8014F204 = (u8) D_800314C4;
			}
			else
			{
				D_8014F204 = D_8004816A;
			}
			func_8009C6CC_AB67C(0x50, (s16) (D_80068088 - 0x1E), ((f32) D_8014F204) / ((f32)(u32)(u8) D_800314C4), 0, &D_8025F780, 3, 0, D_8014ED52, 0x30);
			D_8014F204 = D_8004816A;
			if ((D_80052A8C % 10U) == 0)
			{
				D_8013D5DC_14C58C = func_800880B8_97068();
			}
		}
	}
	if (D_8014F1F4 != 0x80)
	{

		if ((vehicleType = D_80052B34->unk1A) != 0)
		{
			if (D_80052AC8 != 2)
			{
				func_8009C4B0_AB460();
				vehicleType = D_80052B34->unk1A;

			}
			fuel = D_80052B34->unk3C;
			D_8014F69C = fuel;
			health = D_80052B34->unk1C;

			maxHealth = (s16) vehicleTypes[vehicleType].hitPoints;
			D_8014F69E = health;
			D_8014F6A0 = maxHealth;
		}
		else
		{
			func_8009C4A0_AB450();
			fuel = D_8014F69C;
			health = D_8014F69E;
			maxHealth = D_8014F6A0;
		}
		lengthValue = (f32) (((f64) ((f32) health)) / 1000.0);
		barWidth = (s16) ((((f64) ((f32) maxHealth)) / 1000.0) * 48.0);
		func_8009D900_AC8B0(&barWidth, &lengthValue, 0x30);
		if (health >= (maxHealth >> 2))
		{
			D_8014ED4E = D_8014ED46;
		}
		func_8009C6CC_AB67C((s16) (D_80068084 - 0x20), (s16) (D_80068088 - 0x1E), ((f32) health) / ((f32) maxHealth), 1, &D_8025EE80, 1, 0, D_8014ED4E, barWidth);
		if (D_80052B34->unk1A != 0x13)
		{
			func_8009C6CC_AB67C((s16) (D_80068084 - 0x20), (s16) (D_80068088 - 0x32), (f32) (((f64) ((f32) fuel)) / 20224.0), 1, &D_8025D800, 1, 0, D_8014ED50, 0x30);
		}
	}
	if (D_8014ED42 > 0)
	{
		D_8014ED42--;
	}
	if (D_8014ED46 > 0)
	{
		D_8014ED46--;
	}
	if (D_8014ED44 > 0)
	{
		D_8014ED44--;
	}
	if (D_8014ED4A > 0)
	{
		D_8014ED4A--;
	}
	if (D_8014ED48 > 0)
	{
		D_8014ED48--;
	}
	if (fuel < 0x13C1)
	{
		D_8014ED50 = 8 - (D_80052A8C & 7);
	}
	else
	{
		D_8014ED50 = 0;
	}
	if ((((s32)(u8) D_800314C4) - 3) < D_8004816A)
	{
		D_8014ED52 = 8 - (D_80052A8C & 7);
	}
	else
	{
		D_8014ED52 = 0;
	}
	{

		if (vehicleInstances[0].unk1C < (((s32) vehicleTypes[vehicleInstances[0].unk1A].hitPoints) >> 2))
		{
			D_8014ED4C = 8 - (D_80052A8C & 7);
		}
		else
		{
			D_8014ED4C = 0;
		}
	}
	if (health < (maxHealth >> 2))
	{
		D_8014ED4E = 8 - (D_80052A8C & 7);
	}
	else
	{
		D_8014ED4E = 0;
	}
	if (D_8013D5DC_14C58C != 0)
	{
		D_8014ED52 = 8 - (D_80052A8C & 7);
	}
	else
	if (D_8014ED52 > 0)
	{
		D_8014ED52--;
	}
	drawText(&D_80142510_1514C0, 0, 0xFF);
	if ((D_8006C6C6 > 0) && (func_80018AC8_196C8() == 0))
	{
		if ((D_8006C6C4 - 8) < D_8006C6C6)
		{
			panelHeight = D_8006C6C4 - D_8006C6C6;
		}
		else
		{
			panelHeight = (D_8006C6C6 < 8) ? D_8006C6C6 : 8;
		}
		value = 0x30 - panelHeight * 6;
		gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x8C, 0x96, 0xF0, 0xAA);
		func_800092B8_9EB8(((D_80068084 >> 1) - 0x2A) << 2, (value + 0xAF) << 2, ((D_80068084 >> 1) + 0x2C) << 2, (value + 0xD2) << 2, 0);
	}
	gDPPipeSync(D_8005BB2C++);
	gDPTileSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, ((((((0x40 | 0x200) | 0x4000) | 0) | (0 << 30)) | (0 << 26)) | (1 << 22)) | (0 << 18), ((((((0x40 | 0x200) | 0x4000) | 0) | (0 << 28)) | (0 << 24)) | (1 << 20)) | (0 << 16));
}

// drawAlienHealth
void func_8009E994_AD944(f32 arg0, u8 *arg1, s16 arg2, s16 arg3, s32 arg4) {
	/* Preserve the existing shared BSS gaps around this private state. */
	static s32 reservedPrefix;
	static f32 startValue;
	static s16 startLength;
	static s16 reservedHalfword;
	static s16 currentLength;
	static f32 currentValue;
	static s32 entityId;
	static s32 reserved[2];
	static s16 previousLength;
	static f32 previousValue;
	static f32 slide = 1.0f;
	f64 zero;
	s32 state;
	s32 mode;

	if ((arg3 == 0) || (func_80018AA0_196A0() != 0) || (func_8013B8C8_14A878() != 0)) {
		zero = 0.0;

		if (slide > zero) {
			f64 step;
			step = 0.2;
			if (slide < step) {
				slide = zero;
			} else {
				slide = slide - step;
			}
		}

		if (arg1 != 0) {
			arg3 = previousLength;
			arg0 = previousValue;
		} else {
			arg0 = 1.0f;
			arg3 = 1;
		}
	} else {
		state = (u8)D_8014F202;
		if ((state == 4) && (D_80052A8C & 4)) {
			return;
		}

		mode = (u8)D_8014F203;
		if ((state != mode) || (entityId != arg4)) {
			slide = 0.0f;
			if (mode == 0) {
				startValue = 0.0f;
				startLength = 0;
			} else {
				startValue = currentValue;
				startLength = currentLength;
			}
		}

		if (slide < 1.0) {
			f64 step;
			step = 0.2;
			currentValue = ((arg0 - startValue) * slide) + startValue;
			currentLength = startLength + (slide * (arg3 - startLength));
			slide += step;
			zero = 0.0;
		} else {
			slide = 1.0f;
			currentValue = arg0;
			currentLength = arg3;
			zero = 0.0;
		}
	}
	previousValue = arg0;
	previousLength = arg3;

	if (slide >= zero) {
		if (((u8)D_8014F202 != 0) || (!(slide >= 1.0))) {
			func_8009C6CC_AB67C((s16)(((slide * 32.0f) * 2) + -32.0f), 0x8B, arg0, 0, arg1, 2, 0, arg2, arg3);
		}
	}

	entityId = arg4;
}

u8 D_8013D66C_14C61C[16] = {
	0x00, 0x05, 0x00, 0x02,
	0x00, 0x00, 0x02, 0x00, 0x03, 0x00, 0x00, 0x00,
	0x0F, 0x11, 0x04, 0x00,
};
// English menu strings
u32 D_8013D67C_14C62C[15] = { (u32)D_80142518_1514C8,
	(u32)D_80142528_1514D8, (u32)D_80142534_1514E4, (u32)D_8014253C_1514EC, (u32)D_80142540_1514F0, (u32)D_80142548_1514F8, (u32)D_80142550_151500, (u32)D_80142558_151508,
	(u32)D_80142560_151510, (u32)D_80142568_151518, (u32)D_80142570_151520, (u32)D_80142578_151528, (u32)D_80142580_151530, (u32)D_8014258C_15153C, (u32)D_80142598_151548,
};
// French menu strings
u32 D_8013D6B8_14C668[15] = { (u32)D_801425A0_151550,
	(u32)D_801425B0_151560, (u32)D_801425BC_15156C, (u32)D_801425C4_151574, (u32)D_801425CC_15157C, (u32)D_801425D4_151584, (u32)D_801425DC_15158C, (u32)D_801425E4_151594,
	(u32)D_801425EC_15159C, (u32)D_801425F4_1515A4, (u32)D_801425FC_1515AC, (u32)D_80142604_1515B4, (u32)D_8014260C_1515BC, (u32)D_80142618_1515C8, (u32)D_80142624_1515D4,
};
// German menu strings
u32 D_8013D6F4_14C6A4[15] = { (u32)D_8014262C_1515DC,
	(u32)D_8014263C_1515EC, (u32)D_80142644_1515F4, (u32)D_8014264C_1515FC, (u32)D_80142654_151604, (u32)D_8014265C_15160C, (u32)D_80142664_151614, (u32)D_8014266C_15161C,
	(u32)D_80142674_151624, (u32)D_8014267C_15162C, (u32)D_80142684_151634, (u32)D_8014268C_15163C, (u32)D_80142694_151644, (u32)D_801426A0_151650, (u32)D_801426AC_15165C,
};
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

// AI - Draws a 10-vertex arc sized by vehicleTypes[D_80052B34->unk1A].arcOfFire via func_8009EC90_ADC40 and four gSP1Quadrangle.
void func_8009EE30_ADDE0(void)
{
	s32 var_s0;
	s32 var_s2;
	f32 sp7C;
	f32 sp78;
	s32 var_s1;
	s32 var_v1;
	s16 var_s4;

	var_s4 = vehicleTypes[D_80052B34->unk1A].arcOfFire;
	if (var_s4 == 0) {
		return;
	}

	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, SHADE, 0, TEXEL0, 0, 0, 0, 0, SHADE, SHADE, 0, TEXEL0, 0);
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34), 10, 0);

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

	for (var_s1 = 0, var_s2 = 0; var_s1 != 9; var_s1++, var_s2 += var_s4) {
		var_s0 = var_s2 / 4;

		func_8009EC90_ADC40((s16)(var_s0 - var_s4), &sp7C, &sp78);
		var_s0 = (s32)(sp7C * 32.0f);
		var_v1 = (s32)(sp78 * 32.0f);

		D_8005BB34->v.ob[0] = (s16)((f64)var_s0 * 0.75);
		D_8005BB34->v.ob[1] = (s16)((f64)var_v1 * 0.75);
		D_8005BB34->v.ob[2] = 0;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = (s16)((var_s0 + 0x20) << 5);
		D_8005BB34->v.tc[1] = (s16)((0x20 - var_v1) << 5);
		D_8005BB34->v.cn[0] = 0xFF;
		D_8005BB34->v.cn[1] = 0xFF;
		D_8005BB34->v.cn[2] = 0xFF;
		D_8005BB34->v.cn[3] = 0x80;
		D_8005BB34++;
	}

	gSP1Quadrangle(D_8005BB2C++, 0, 1, 2, 3, 0);
	gSP1Quadrangle(D_8005BB2C++, 0, 3, 4, 5, 0);
	gSP1Quadrangle(D_8005BB2C++, 0, 5, 6, 7, 0);
	gSP1Quadrangle(D_8005BB2C++, 0, 7, 8, 9, 0);
}
