#define OVERLAY_ENTRY_AS_FUNC
#define GAME_OSSETTIME_IMPL
#include <ultra64.h>
#include "common.h"

s16 D_800313D0_31FD0 = 0;    // Language
s32 D_800313D4_31FD4 = 0;
s16 D_800313D8 = 0;
s16 D_800313DC = 0;
s16 D_800313E0 = 0;
s16 D_800313E4_31FE4 = 0;
u8 D_800313E8_31FE8 = 0x5A;
u8 D_800313EC_31FEC = 0x50;
u8 D_800313F0_31FF0 = 0x50;
u8 D_800313F4_31FF4 = 0x80;
s16 D_800313F8_31FF8 = 0x03CF;
s16 D_800313FC_31FFC = 0x03E8;

f32 func_800047F0_53F0(f32 arg0) {
	return arg0 * arg0;
}

s32 func_800047FC_53FC(s16 arg0) {
	return arg0 * arg0;
}

s32 func_80004818_5418(s8 arg0, s8 arg1, u8 arg2) {
	s8 x = (s8)(D_80052B34->unk0 >> 8);
	s8 z = (s8)(D_80052B34->unk4 >> 8);
	s32 dx, dz, abs_dx, abs_dz;

	dx = x - arg0;
	if (dx >= 0) {
		abs_dx = dx;
	} else {
		abs_dx = -dx;
	}
	if (abs_dx < arg2) {
		dz = z - arg1;
		if (dz >= 0) {
			abs_dz = dz;
		} else {
			abs_dz = -dz;
		}
		if (abs_dz < arg2) {
			return 1;
		}
	}
	return 0;
}

void func_800048B8_54B8(void)
{
	s32 i;
	for (i = 0; i < ARRAY_COUNT(D_80047970); i++) {
		D_80047970[i] = 0;
	}
}

#ifdef NON_MATCHING
void func_800048E8_54E8(void) {
	D47F40Entry *end = (D47F40Entry *)D_80047F60;
	D47F40Entry *ptr = (D47F40Entry *)D_80047F40;
	do {
		ptr++;
		(ptr - 1)->f4 = 0;
		(ptr - 1)->f8 = 0;
		(ptr - 1)->fC = 0;
		(ptr - 1)->f0 = 0;
		ptr++;
		ptr--;
	} while (ptr != end);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800048E8_54E8.s")
#endif

#ifdef NON_MATCHING
void func_80004918_5518(void) {
	s16 *end;
	s16 *p;
	end = D_80047F40;
	p = D_80047D40; do {
		p += 4;
		p[-3] = 0;
		p[-2] = 0;
		p[-1] = 0;
		p[-4] = 0;
		p++;
		p--;
	} while (p != end);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80004918_5518.s")
#endif

void func_80004948_5548(void) {
	u16 temp_v0;

	temp_v0 = (&D_80047748)[D_802CA8D0];
	D_80047740.unk0 = (s8) ((s32) (temp_v0 & 0xF800) >> 8);
	D_80047740.unk1 = (s8) ((s32) (temp_v0 & 0x7C0) >> 3);
	D_80047740.unk2 = (s8) ((temp_v0 & 0x3E) * 4);
	temp_v0 = (&D_80047748)[D_802D48CF];
	D_8004773C.unk0 = (s8) ((s32) (temp_v0 & 0xF800) >> 8);
	D_8004773C.unk1 = (s8) ((s32) (temp_v0 & 0x7C0) >> 3);
	D_8004773C.unk2 = (s8) ((temp_v0 & 0x3E) * 4);
}

void func_800049D4_55D4(u16 arg0, u16 arg1) {
	D_80047740.unk0 = (s8) ((s32) (arg0 & 0xF800) >> 8);
	D_80047740.unk1 = (s8) ((s32) (arg0 & 0x7C0) >> 3);
	D_80047740.unk2 = (s8) ((arg0 & 0x3E) * 4);
	D_8004773C.unk0 = (s8) ((s32) (arg1 & 0xF800) >> 8);
	D_8004773C.unk1 = (s8) ((s32) (arg1 & 0x7C0) >> 3);
	D_8004773C.unk2 = (s8) ((arg1 & 0x3E) * 4);
}

void func_80004A38_5638(u8 arg0, s8 *arg1, s8 *arg2, s8 *arg3) {
	if ((currentLevel == 2) && (func_8000726C_7E6C(0x21) == 0)) {
		*arg1 = 0xC;
		*arg2 = 0xC;
		*arg3 = 0xA;
		return;
	}
	*arg1 = (s8) ((s32) (((u16 *)&D_802D48D0)[arg0] & 0xF800) >> 0xB);
	*arg2 = (s8) ((s32) (((u16 *)&D_802D48D0)[arg0] & 0x7C0) >> 6);
	*arg3 = (s8) ((s32) (((u16 *)&D_802D48D0)[arg0] & 0x3E) >> 1);
}

void func_80004AEC_56EC(void)
{
	s16 temp_t9;
	u16 temp_v1;
	u8 sp3B;
	u8 sp3A;
	u8 sp39;
	s16 i;
	if (currentLevel == LEVEL_JAVA)
	{
		for (i = 0; i < 0x100; i++)
		{
			func_80004A38_5638(i, &sp3B, &sp3A, &sp39);
			temp_t9 = ((s16) (sp3B << 11)) + (sp3A << 6);
			temp_t9 = temp_t9 + (sp39 * 2);
			((u16 *) (&D_802D4AD0))[i] = temp_t9;
			((u16 *) (&D_80047748))[i] = temp_t9;
		}
	}
	else
	{
		for (i = 0; i < 0x100; i++)
		{
			temp_v1 = ((u16 *) (&D_802D48D0))[i];
			((u16 *) (&D_802D4AD0))[i] = temp_v1;
			((u16 *) (&D_80047748))[i] = temp_v1;
		}
	}
	func_80004948_5548();
	leoInitUnit_atten();
}

void leoInitUnit_atten(void) {
	leomecha_bss_0004 = 1;
}

void func_80004C34_5834(void) {
	s16 var_v0;

	if (leomecha_bss_0004 != 0) {
		for (var_v0 = 0; var_v0 < 0x100; var_v0++) {
			((u16 *)&D_80047748)[var_v0] = ((u16 *)&D_802D4AD0)[var_v0];
		}
		leomecha_bss_0004 = 0;
	}
}

void func_80004C8C_588C(void) {
	gSPSegment(D_8005BB2C++, 0x02, (u32)D_8005BB20 & 0x1FFFFFFF);
}

void func_80004CC8_58C8(void) {
	gSPViewport(D_8005BB2C++, D_8005BB24 + 0x80000000);
	gSPClearGeometryMode(D_8005BB2C++, 0xFFFFFFFF);
	gSPSetGeometryMode(D_8005BB2C++, G_SHADE | G_SHADING_SMOOTH);
}

void func_80004D38_5938(void) {
	gSPDisplayList(D_8005BB2C++, (Gfx *)((s32)&D_80031260 & 0x1FFFFFFF));
	gDPSetScissor(D_8005BB2C++, G_SC_NON_INTERLACE, 0, 0, D_80068084, D_80068088);
}

void func_80004DDC_59DC(u8 arg0, u8 arg1, u8 arg2, s32 arg3, s32 arg4) {
	if (arg3 < 0) {
		arg3 = 0;
	}
	if (D_80068088 < arg4) {
		arg4 = D_80068088;
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_FILL);
	gDPSetColorImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, K0_TO_PHYS(D_8005BB48[D_80031B84]));
	gDPSetFillColor(D_8005BB2C++, ((((arg0 << 8) & 0xF800) | ((arg1 * 8) & 0x7C0) | (((s32)arg2 >> 2) & 0x3E) | 1) << 16) | (((arg0 << 8) & 0xF800) | ((arg1 * 8) & 0x7C0) | (((s32)arg2 >> 2) & 0x3E) | 1));
	gDPPipeSync(D_8005BB2C++);
	gDPFillRectangle(D_8005BB2C++, 0, arg3, D_80068084 - 1, arg4);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPPipeSync(D_8005BB2C++);
}

void func_80004F64_5B64(void) {
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_FILL);
	gDPSetColorImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, &D_3DA800);
	gDPSetFillColor(D_8005BB2C++, 0xFFFCFFFC);
	gDPFillRectangle(D_8005BB2C++, 0, 0, D_80068084 - 1, D_80068088 - 1);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPPipeSync(D_8005BB2C++);
}

void func_8000505C_5C5C(void) {
	gDPFullSync(D_8005BB2C++);
	gSPEndDisplayList(D_8005BB2C++);
	osSendMesg(&D_8006A8B0, &D_800314CC_320CC, 1);
}

void func_800050C4_5CC4(void) {
	osRecvMesg(&D_8006A8D0, &D_80068038, 1);
	func_80011E14_12A14(D_80047F93);
	func_80004CC8_58C8();
	func_80004D38_5938();
}

void func_80005110_5D10(s16 arg0, s16 arg1, u8 arg2, u8 arg3, u8 arg4) {
	u8 alpha = 0xFF;
	D_8005BB34[0].v.ob[0] = -arg0 / 2;
	D_8005BB34[0].v.ob[1] = -arg1 / 2;
	D_8005BB34[0].v.ob[2] = 0;
	D_8005BB34[0].v.flag = 0;
	D_8005BB34[0].v.tc[0] = D_800313E4_31FE4 + 0x40;
	D_8005BB34[0].v.tc[1] = D_800313E4_31FE4 + 0x40;
	D_8005BB34[0].v.cn[0] = arg2;
	D_8005BB34[0].v.cn[1] = arg3;
	D_8005BB34[0].v.cn[2] = arg4;
	D_8005BB34[0].v.cn[3] = alpha;
	D_8005BB34[1].v.ob[0] = arg0 / 2;
	D_8005BB34[1].v.ob[1] = -arg1 / 2;
	D_8005BB34[1].v.ob[2] = 0;
	D_8005BB34[1].v.flag = 0;
	D_8005BB34[1].v.tc[0] = D_800313E4_31FE4 + 0xFC0;
	D_8005BB34[1].v.tc[1] = D_800313E4_31FE4 + 0x40;
	D_8005BB34[1].v.cn[0] = arg2;
	D_8005BB34[1].v.cn[1] = arg3;
	D_8005BB34[1].v.cn[2] = arg4;
	D_8005BB34[1].v.cn[3] = alpha;
	D_8005BB34[2].v.ob[0] = -arg0 / 2;
	D_8005BB34[2].v.ob[1] = arg1 / 2;
	D_8005BB34[2].v.ob[2] = 0;
	D_8005BB34[2].v.flag = 0;
	D_8005BB34[2].v.tc[0] = D_800313E4_31FE4 + 0x40;
	D_8005BB34[2].v.tc[1] = D_800313E4_31FE4 + 0xFC0;
	D_8005BB34[2].v.cn[0] = arg2;
	D_8005BB34[2].v.cn[1] = arg3;
	D_8005BB34[2].v.cn[2] = arg4;
	D_8005BB34[2].v.cn[3] = alpha;
	D_8005BB34[3].v.ob[0] = arg0 / 2;
	D_8005BB34[3].v.ob[1] = arg1 / 2;
	D_8005BB34[3].v.ob[2] = 0;
	D_8005BB34[3].v.flag = 0;
	D_8005BB34[3].v.tc[0] = D_800313E4_31FE4 + 0xFC0;
	D_8005BB34[3].v.tc[1] = D_800313E4_31FE4 + 0xFC0;
	D_8005BB34[3].v.cn[0] = arg2;
	D_8005BB34[3].v.cn[1] = arg3;
	D_8005BB34[3].v.cn[2] = arg4;
	D_8005BB34[3].v.cn[3] = alpha;
	gSPVertex(D_8005BB2C++, (Vtx *)((s32)D_8005BB34 + 0x80000000), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 2, 0, 1, 3, 2, 0);
	D_8005BB34 += 4;
}

void func_800053A0_5FA0(s16 arg0, s16 arg1, u16 arg2, u16 arg3, u8 arg4) {
	Unk80052B40 sp60;
	Unk80052B40 sp58;

	sp60 = D_800315C4_321C4;
	sp58 = D_800315CC_321CC;
	sp60.unk0 = arg0;
	sp60.unk2 = arg1;
	sp58.unk0 = arg2;
	sp58.unk2 = arg3;
	guOrtho((Mtx *)D_8005BB38, 0.0f, 320.0f, 240.0f, 0.0f, D_80037120_37D20, D_80037124_37D24, 1.0f);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
	D_8005BB38 += 0x40;
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BACK | G_FOG | G_LIGHTING);
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x1E, 0x1E, 0x1E, arg4 * 2);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
	gDPPipeSync(D_8005BB2C++);
	func_800039D0_45D0(&sp60, 0, &sp58, D_8005BB38);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	func_80005110_5D10(0x3C, 0x3C, 0x1E, 0x1E, 0x1E);
	gDPPipeSync(D_8005BB2C++);
}

void func_80005654_6254(u8 arg0, u8 arg1, u8 arg2) {
	func_800050C4_5CC4();
	func_80004DDC_59DC(arg0, arg1, arg2, 0, D_80068088 - 1);
	func_8000505C_5C5C();
}

void func_800056A8_62A8(void) {
	func_80005654_6254(0, 0, 0);
}

s32 func_800056D0_62D0(s16 arg0, s16 arg1) {
	u16 *p;

	p = (u16 *)((u8 *)D_80052A94 + ((arg1 >> 8) << 9) + ((arg0 >> 8) << 1));
	return ((u32)*p >> 0xF) ? 0 : D_8003E460_3F060[(((u32)*p << 0x16) >> 0x1C) | (((D_8021F250[((arg1 >> 10) << 6) + (arg0 >> 10)] & 0xF) + (currentLevel * 0xC) - 0xC) << 4)];
}

// https://decomp.me/scratch/Ps8Im
// this requires a function static (D_800315D4_W)
// which means you may have to map all other .bss data
// for the file where that func is in (in the best scenario you add this function last and just let splat auto map .bss) 
#ifdef NON_MATCHING
void func_8000577C_637C(void)
{
  static s32 D_800315D4_W; // has to be a function static
  s32 var_v0;
  s32 temp_hi;
  D_800315D4_W = D_800315D4_321D4 + 0xA;
  if (D_800315D4_W >= 0x12C)
  {
	D_800315D4_W = 0;
  }
  temp_hi = D_800315D4_W % 0x12C;
	
  if (temp_hi < 0x64)
  {
	drawText(&D_80036D68_37968, 0xFA - D_800315D4_W, D_800315D4_W + 0x96, 0x96);    
	return;
  }
  if (temp_hi < 0xC8)
  {
	drawText(&D_80036D6C_3796C, 0x96, 0x15E - D_800315D4_W, D_800315D4_W + 0x32);
	return;
  }
  drawText(&D_80036D70_37970, D_800315D4_W - 0x32, 0x96, 0x1C2 - D_800315D4_W);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_8000577C_637C.s")
#endif


void func_80005844_6444(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
	guOrtho((Mtx *)D_8005BB38, -1.0f, 1.0f, -1.0f, 1.0f, -10.0f, 10.0f, 1.0f);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_LOAD | G_MTX_PROJECTION);
	D_8005BB38 += 0x40;
	guLookAt((Mtx *)D_8005BB38, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_LIGHTING);
	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, arg0, arg1, arg2, arg3);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gSPVertex(D_8005BB2C++, (Vtx *)((s32)D_800315D8_321D8 & 0x1FFFFFFF), 4, 0);
	gSP1Triangle(D_8005BB2C++, 0, 2, 1, 0);
	gSP1Triangle(D_8005BB2C++, 1, 2, 3, 0);
	gSPPopMatrix(D_8005BB2C++, G_MTX_PROJECTION);
	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
}

void func_80005AEC_66EC(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
	D_80047734 = 1;
	D_80047738 = arg0;
	D_80047739 = arg1;
	D_8004773A = arg2;
	D_80047730 = 0x40;
}

s32 func_80005B30_6730(void) {
	if (D_80047734 != 0) {
		D_8004772C = D_8004772C + D_80047730;
		if (D_8004772C >= 0x100) {
			D_8004772C = 0xFF;
			D_80047734 = 0;
			return 1;
		}
	}
	return 0;
}

void func_80005B84_6784(void) {
	if (D_80047734 != 0) {
		func_80005844_6444(D_80047738, D_80047739, D_8004773A, (u8)D_8004772C);
		func_8001593C_1653C((void *)((0xFF - D_8004772C) << 7));
		return;
	}
	if (D_8004772C != 0) {
		func_80005844_6444(D_80047738, D_80047739, D_8004773A, (u8)D_8004772C);
		func_8001593C_1653C((void *)((0xFF - D_8004772C) << 7));
		D_8004772C = D_8004772C - D_80047730;
		if (D_8004772C <= 0) {
			D_8004772C = 0;
		}
	}
}

#ifdef NON_MATCHING
void func_80005C5C_685C(u8 *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, f32 arg8, f32 arg9, u16 *arg10) {
	s32 sp13C;
	s32 sp138;
	f32 sp128;
	s32 sp90;
	f32 sp88;
	f32 sp84;
	f32 temp_f0;
	f32 temp_f16;
	f32 temp_f26;
	f32 temp_f2;
	f32 var_f18;
	f32 var_f20;
	f32 var_f22;
	f32 var_f24;
	f32 temp_f12;
	s32 temp_a0;
	s32 temp_t9;
	s32 temp_s1;
	s32 temp_t0;
	s32 temp_t7;
	s32 temp_t9_2;
	s32 temp_s0;
	s32 temp_ra;
	s32 var_s4;
	s32 var_t5;

	sp88 = 32.0f * arg8;
	sp84 = 32.0f * arg9;
	temp_t9 = ((arg6 - 1) / 32) + 1;
	sp90 = temp_t9;
	sp13C = temp_t9;
	temp_s1 = ((arg7 - 1) / 32) + 1;
	sp138 = temp_s1;
	sp128 = sp84;

	guOrtho((Mtx *)D_8005BB38, 0.0f, 160.0f, 120.0f, 0.0f, D_80037128_37D28, D_8003712C_37D2C, 1.0f);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
	temp_a0 = D_8005BB38 + 0x40;
	D_8005BB38 = temp_a0;
	guRotate((Mtx *)temp_a0, 0.0f, 1.0f, 0.0f, 0.0f);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 + 0x80000000), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gDPPipeSync(D_8005BB2C++);

	if (arg10 != NULL) {
		gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
		if (arg3 == 8) {
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, arg10);
			gDPTileSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 255);
		} else {
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, arg10);
			gDPTileSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 15);
		}
		gDPPipeSync(D_8005BB2C++);
	}

	gDPLoadSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);

	if (temp_s1 > 0) {
		temp_f12 = D_80037130_37D30;
		var_s4 = 0;
		do {
			var_t5 = 0;
			if (sp90 > 0) {
				temp_f16 = (f32)arg5 + ((f32)var_s4 * sp128);
				temp_f26 = temp_f16 + sp128;
				do {
					var_f20 = temp_f16;
					var_f24 = temp_f26;
					temp_ra = 0;
					temp_s0 = 0;
					temp_f0 = (f32)arg4 + ((f32)var_t5 * sp88);
					temp_f2 = temp_f0 + sp88;
					var_f18 = temp_f0;
					var_f22 = temp_f2;
					if (!(temp_f2 <= 0.0f) && !(temp_f26 <= 0.0f) && !(temp_f12 < temp_f0) && !(temp_f12 < temp_f16)) {
						gDPSetTextureImage(D_8005BB2C++, arg1, arg2, 1, arg0 + (((var_s4 * sp90) + var_t5) * ((s32)(arg3 << 0xA) / 8)));
						gDPTileSync(D_8005BB2C++);
						gDPSetTile(D_8005BB2C++, arg1, arg2, 0, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
						gDPLoadSync(D_8005BB2C++);
						gDPLoadBlock(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 1023, 0x1000 / arg3);
						gDPTileSync(D_8005BB2C++);
						gDPSetTile(D_8005BB2C++, arg1, arg2, ((((s32)(arg3 << 5) / 8) + 7) >> 3), 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
						gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C, 0x7C);
						temp_t7 = (s32)((1.0f / (sp88 / 32)) * 1024.0f);
						temp_t9_2 = (s32)((1.0f / (sp84 / 32)) * 1024.0f);
						if (temp_f0 < 0.0f) {
							var_f18 = 0.0f;
							temp_ra = (s32)(-temp_f0 / arg8) << 5;
						}
						if (temp_f12 < temp_f2) {
							var_f22 = temp_f12;
						}
						if (temp_f16 < 0.0f) {
							var_f20 = 0.0f;
							temp_s0 = (s32)(-temp_f16 / arg9) << 5;
						}
						if (temp_f12 < temp_f26) {
							var_f24 = temp_f12;
						}
						temp_t0 = temp_t7;
						gSPTextureRectangle(D_8005BB2C++, (s32)var_f18 * 4, (s32)var_f20 * 4, (s32)var_f22 * 4, (s32)var_f24 * 4, G_TX_RENDERTILE, temp_ra, temp_s0, temp_t0, temp_t9_2);
					}
					var_t5 += 1;
				} while (var_t5 != sp13C);
			}
			var_s4 += 1;
		} while (var_s4 != sp138);
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80005C5C_685C.s")
#endif

s16 func_80006520_7120(s16 arg0, s16 arg1, u16 arg2) {
	f64 var_f6;

	var_f6 = (f64)(u32)arg2;
	return (s16) (s32) ((f32) arg0 + ((f32) (arg1 - arg0) * (f32) (var_f6 / D_80037138_37D38)));
}

s16 func_800065A4_71A4(s16 arg0, s16 arg1, u16 arg2)
{
	s32 sins_val = sins(((short) ((s32) arg2 >> 1)) - 0x4000);
	return (f32) arg0 + ((arg1 - arg0) * ((f32) ((((f32) sins_val / 32768.0) * (f64) 0.5f) + 0.5)));
}

s16 func_80006654_7254(s16 arg0, s16 arg1, u16 arg2) {
	s32 diff = arg1 - arg0;
	f32 temp_f0 = (f32)(((f64)(f32)sins(((s32)arg2 >> 1) - 0x4000) / 32768.0) + 1.0);
	if ((s32)arg2 < 0x8000) {
		return (s16)(s32)((f32)arg0 + (f32)diff * temp_f0);
	}
	return arg1;
}

s16 func_80006710_7310(s16 arg0, s16 arg1, u16 arg2) {
	s32 sins_val = sins((arg2 >> 2) + 0xC000);
	return (s16) (s32) ((f32) arg0 + ((f32) (arg1 - arg0) * (f32) (((f64) (f32) sins_val / 32768.0) + 1.0)));
}

#ifdef NON_MATCHING
s16 func_800067B4_73B4(s16 arg0, s16 arg1, u16 arg2, s16 arg3, s16 arg4) {
	f32 temp_f4;
	f32 temp_f0;
	s32 sins_if;

	temp_f0 = (f32)(arg1 - arg0);
	if (arg2 < 0x4001) {
		sins_if = sins(arg2 - 0x4000);
		return (s16)((f32)arg0 + temp_f0 * (f32)(((f64)(f32)sins_if / 32768.0) + 1.0));
	} else {
		temp_f4 = (f32)((((f64)(f32)sins((u32)((f64)(arg2 - 0x4000) * 1.5 - 16384.0)) / 32768.0) + 1.0) * 0.5);
		return (s16)((((f64)(f32)sins(arg2 * arg3) / 32768.0) * (f64)temp_f4 * (f64)arg4) + (f64)arg1);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800067B4_73B4.s")
#endif

#ifdef NON_MATCHING
void func_800069FC_75FC(void) {
	s32 sp44;
	f32 temp_f0;
	f32 var_f0;
	s32 temp_f4;
	s32 temp_v1;

	if ((currentLevel == 2) && (func_8000726C_7E6C(0x1E) == 0)) {
		func_80004DDC_59DC(D_8004773C.unk0, D_8004773C.unk1, D_8004773C.unk2, 0, D_80068088 - 1);
		return;
	}
	sp44 = (s32) (((s32) ((D_80047964 * 2) & 0xFFFF) >> 2) * 0x140) / 8192;
	if (D_80052B34 != NULL) {
		var_f0 = (f32) D_80052B34->unk2;
	} else {
		var_f0 = 0.0f;
	}
	temp_f4 = (s32) ((f32) (((s16) D_8004794E / 36) + D_8003161C_3221C) + (var_f0 / 15.0f));
	if (temp_f4 >= 2) {
		func_80004DDC_59DC(D_80047740.unk0, D_80047740.unk1, D_80047740.unk2, 0, temp_f4 - 1);
	}
	temp_v1 = D_80068088 - 1;
	temp_f0 = 128.0f;
	temp_f0 *= D_80031618_32218;
	temp_f0 += (f32) temp_f4;
	if (temp_f0 < (f32) temp_v1) {
		func_80004DDC_59DC(D_8004773C.unk0, D_8004773C.unk1, D_8004773C.unk2, (s32) temp_f0, temp_v1);
	}
	func_80005C5C_685C(&D_802CA8D0, 2, 1, 8, sp44, temp_f4, 0x140, 0x80, 2.0f, D_80031618_32218, &D_80047748);
	func_80005C5C_685C(&D_802CA8D0, 2, 1, 8, sp44 - 0x280, temp_f4, 0x140, 0x80, 2.0f, D_80031618_32218, NULL);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800069FC_75FC.s")
#endif

void func_80006C4C_784C(void) {
	gDPSetCycleType(D_8005BB2C++, G_CYC_FILL);
	gDPSetFillColor(D_8005BB2C++, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPFillRectangle(D_8005BB2C++, 0, 0, D_80068084 - 1, 0x24);
	gDPFillRectangle(D_8005BB2C++, 0, D_80068088 - 0x26, D_80068084 - 1, D_80068088 - 1);
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
}

void setFullResolution(void) {
	setVideoInterfaceXSize(0x140);
	setVideoInterfaceYSize(0xF0);
}

void setGameplayResolution(void) {
	setVideoInterfaceXSize(0x130);
	setVideoInterfaceYSize(0xE6);
}

void func_80006DAC_79AC(s32 arg0, s32 arg1) {
	if (D_80052AD0 != 0) {
		D_80052AD4 = arg0;
		D_80052AD0 = 0;
		D_80052AC8 = arg1;
	}
}

#ifdef NON_MATCHING
void func_80006DDC_79DC(void) {
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	void (*loadLevelCallback)(void *);
	s32 var_s3;

	loadLevelCallback = (void (*)(void *)) loadLevel;
	D_80052ACA = 5;
	var_s3 = 0;
	gameplayMode = 7;
	func_800056A8_62A8();
	func_800056A8_62A8();
	func_8000F190_FD90(loadLevelCallback);
	while (destroyThreadIfMessageInQueue() == 0) {
		func_800050C4_5CC4();
		func_8000505C_5C5C();
	}
	do {
		D_80052ACA = 0;
		D_800313E8 = D_80031620[currentLevel - 1].unk0;
		D_80047743 = D_800313E8;
		D_800313EC = D_80031620[currentLevel - 1].unk1;
		D_80047744 = D_800313EC;
		D_800313F0 = D_80031620[currentLevel - 1].unk2;
		D_80047745 = D_800313F0;
		D_800313F4 = D_80031620[currentLevel - 1].unk3;
		D_800313F8 = D_80031634[(currentLevel - 1) * 2];
		D_800313FC = D_80031634[(currentLevel - 1) * 2 + 1];
		D_80047964 = 0x53C5;
		D_8004794E = 0xCCF;
		D_80047960 = 244.0f;
		setGameplayResolution();
		func_80070270(8);
		D_800313C8_31FC8 = 0;
		__osInitialize_emu();
		switch (D_80052AC8) {
		case 1:
			var_s3 = 1;
			func_800056A8_62A8();
			func_800056A8_62A8();
			func_80011D24_12924();
			loadFrontendData();
			setFullResolution();
			D_80052AE8.unk30 = 0;
			D_80052AE8.unk40 = (u8*)3;
			break;
		case 2:
			if (currentLevel == 5) {
				func_800170F4_17CF4(3);
				func_800056A8_62A8();
				func_800056A8_62A8();
			} else {
				func_80005654_6254(0xFF, 0xFF, 0xFF);
				func_80005654_6254(0xFF, 0xFF, 0xFF);
			}
			func_80011D24_12924();
			loadFrontendData();
			setGameplayResolution();
			D_80052A98[currentLevel - 1].score = D_80052B2C->unk30;
			D_80052A98[currentLevel - 1].humansKilled = D_8004816A;
			D_80052A98[currentLevel - 1].secondsElapsed = D_80052A90 / 1000U;
			if (D_80047FA0 < currentLevel) {
				D_80047FA0 = currentLevel;
			}
			if (currentLevel == 5) {
				D_800476A0 = 1;
				var_s3 = 1;
				setFullResolution();
				func_80070270(6);
			} else {
				currentLevel += 1;
				func_80007570_8170();
				D_800476A0 = 1;
				func_80070270(2);
				func_80005654_6254(0xFF, 0xFF, 0xFF);
				func_80005654_6254(0xFF, 0xFF, 0xFF);
				func_8000F190_FD90(loadLevelCallback);
				while (destroyThreadIfMessageInQueue() == 0) {
					func_800050C4_5CC4();
					func_8000505C_5C5C();
				}
			}
			break;
		case 0:
			var_s3 = 1;
			func_800050C4_5CC4();
			func_8000505C_5C5C();
			func_800050C4_5CC4();
			func_8000505C_5C5C();
			func_80011D24_12924();
			loadFrontendData();
			if (showDemoText != 1) {
				func_80070270(3);
				setFullResolution();
				func_80070270(5);
			}
			setFullResolution();
			D_80052AE8.unk30 = 0;
			D_80052AE8.unk40 = (u8*)3;
			break;
		}
	} while (var_s3 == 0);
	D_80068080 = 4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80006DDC_79DC.s")
#endif

void func_800071D8_7DD8(void) {
	func_8000505C_5C5C();
	func_800056A8_62A8();
	func_800056A8_62A8();
	setFullResolution();
	func_800117D8_123D8();
	func_80070270(0);
	if (gameplayMode != GAMEPLAY_MODE_LEVEL_MAP &&
		gameplayMode != GAMEPLAY_MODE_INVENTORY && D_80052AD0 != 0) {
		setGameplayResolution();
	}
	func_80011674_12274();
	func_80011D6C_1296C(D_80047F93);
	func_800050C4_5CC4();
}

s32 func_8000726C_7E6C(u64 arg0) {
	return ((1LL << arg0) & D_8004DC48.unk0) != 0;
}

void func_800072CC_7ECC(u64 arg0) {
	if (arg0 == 0x41) {
		if (currentLevel != 5) {
			D_80047F9C = 5;
		}
		D_80052ACD |= 1;
		D_80052A98[currentLevel - 1].score = D_80052B2C->unk30;
		D_80052A98[currentLevel - 1].humansKilled = D_8004816A;
		D_80052A98[currentLevel - 1].secondsElapsed = D_80052A90 / 1000U;
		D_800476A0 = 1;
		func_8001A650_1B250(2);
		return;
	}
	D_8004DC48.unk0 |= 1ULL << arg0;
}

void func_800073B8_7FB8(u64 arg0) {
	u64 temp_ret;
	temp_ret = __ll_lshift(1, arg0);
	D_8004DC48.unk0 &= ~temp_ret;
}

#ifdef NON_MATCHING
void func_80007410_8010(void *arg0) {
	s32 i;

	i = 4;
	while (i--) {
		if (D_8004DC68[i] == (s32)arg0) {
			return;
		}
	}

	i = 3;
	if (D_8004DC74 != 0) {
		for (;;) {
			if (i == 0) {
				i--;
				break;
			}
			if (D_8004DC68[--i] != 0) {
				continue;
			}
			break;
		}
	}

	if (i == -1) {
		osSyncPrintf(&D_80036D74_37974);
		return;
	}
	D_8004DC68[i] = (s32)arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007410_8010.s")
#endif

void func_800074BC_80BC(void *arg0) {
	s32 i = 4;
	while (i--) {
		if (arg0 == (void *)D_8004DC68[i]) {
			D_8004DC68[i] = 0;
			return;
		}
	}
}

void func_800074F4_80F4(void) {
	s32 i = 4;
	while (i--) {
		if (D_8004DC68[i] != 0) {
			((void (*)(void))D_8004DC68[i])();
		}
	}
}
void func_80007548_8148(void)
{
	s32 i = 4;
	while (i--)
	{
		D_8004DC68[i] = 0;
	}
}

// https://decomp.me/scratch/qADEg
#ifdef NON_MATCHING
void func_80007570_8170(void) {
	s32 temp;
	D_80047F98 = 0;
	D_80047F9C = 0;
	D_80047F94 = 0;
	weaponSlots[0] = 2;
	D_80048139 = 0;
	D_8004813A = 0;
	weaponSlots[4] = 0;
	weaponSlots[5] = 0;
	weaponSlots[6] = 0;
	weaponSlots[3] = 0;
	D_8004DC48.unk0 = 1;
	D_8004DC54 = 0;
	D_8004DC50.unk0 = 0;
	D_80052A90 = 0;
	D_8004D154 = 0;
	D_8004D150 = 0;
	D_8004D158 = 0;
	D_80048030 = 0;
	D_8004DC5C = 0;
	temp = (s32)D_80048028 >> (currentLevel * 3 + 0x1D);
	if (temp & 1) {
		D_8004DC5C = 1;
	}
	if (temp & 2) {
		D_8004DC5C += 1;
	}
	if (temp & 4) {
		D_8004DC5C += 1;
	}
	D_80052A98[currentLevel - 1].score = 0;
	D_80052A98[currentLevel - 1].humansKilled = 0;
	D_80052A98[currentLevel - 1].secondsElapsed = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007570_8170.s")
#endif

void func_80007690_8290(void) {
	D_80048030 = D_80048030 + 1;
	osSyncPrintf(&D_80036DA4_379A4, D_80048030);
	// Increment objective %d
	func_8001A650_1B250(1);
}

void func_800076D4_82D4(s32 arg0) {
	osSyncPrintf(&D_80036DBC_379BC, arg0);
	// Set objective %d
	if (D_80048030 < arg0) {
		D_80048030 = (u8) arg0;
		func_8001A650_1B250(1);
	}
}

void func_80007728_8328(u8 *arg0, s16 *arg1, s16 *arg2) {
loop:
	switch (arg0[0]) {
	case 0x98:
		*arg1 = D_80052B34->unk0;
		*arg2 = D_80052B34->unk4;
		return;
	case 0x9A:
		*arg1 = vehicleInstances[arg0[1]].unk0;
		*arg2 = vehicleInstances[arg0[1]].unk4;
		return;
	case 0x9B:
		*arg1 = alienInstances[D_8004D160[arg0[1] * 2 + 1]].unk0;
		*arg2 = alienInstances[D_8004D160[arg0[1] * 2 + 1]].unk4;
		return;
	case 0x99:
		*arg1 = buildingInstances[arg0[1]].xCoord;
		*arg2 = buildingInstances[arg0[1]].zCoord;
		return;
	case 0xAD:
		*arg1 = arg0[1] << 8;
		*arg2 = arg0[2] << 8;
		return;
	case 0xAF:
		arg0 = &D_8004D180[arg0[1] * 3];
		goto loop;
	}
}

u8 func_8000789C_849C(s32 arg0)
{
  u8 *new_var;
  s32 *new_var2;
  new_var2 = &arg0;
  new_var = D_80048038;
  return new_var[(s16) (*new_var2)];
}

s32 func_800078B8_84B8(s32 arg0, s32 *arg1) {
	return *arg1 & (1 << arg0);
}

void func_800078CC_84CC(s32 arg0, s32 *arg1) {
	*arg1 |= 1 << arg0;
}

void func_800078E4_84E4(s32 arg0, s32 *arg1) {
	*arg1 &= ~(1 << arg0);
}

#ifdef NON_MATCHING
void func_80007900_8500(u8 *arg0) {
	switch (arg0[0]) {
		case 0x98:
			osSyncPrintf(&D_80036DD0_379D0);
			break;
		case 0x9A:
			osSyncPrintf(&D_80036DD8_379D8, arg0[1]);
			break;
		case 0x9B:
			osSyncPrintf(&D_80036DE4_379E4, arg0[1]);
			break;
		case 0x99:
			osSyncPrintf(&D_80036DF4_379F4, arg0[1], buildingInstances[arg0[1]].xCoord, buildingInstances[arg0[1]].zCoord);
			break;
		case 0xAD:
			osSyncPrintf(&D_80036E0C_37A0C, arg0[1], arg0[2]);
			break;
		case 0xAF:
			osSyncPrintf(&D_80036E20_37A20, arg0[1]);
			func_80007900_8500(&D_8004D180[arg0[1] * 3]);
			osSyncPrintf(&D_80036E34_37A34);
			break;
		default:
			break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007900_8500.s")
#endif

#ifdef NON_MATCHING
void func_80007A20_8620(u8 *arg0) {
	switch (arg0[8]) {
		case 0xB3:
			osSyncPrintf(&D_80036E38_37A38);
			break;
		case 0xB2:
			osSyncPrintf(&D_80036E48_37A48);
			break;
		case 0x89:
			func_80007900_8500(arg0);
			osSyncPrintf(&D_80036E58_37A58, arg0[6]);
			func_80007900_8500(arg0 + 3);
			break;
		case 0x8A:
			func_80007900_8500(arg0);
			osSyncPrintf(&D_80036E74_37A74, arg0[6]);
			func_80007900_8500(arg0 + 3);
			break;
		case 0x8C:
			func_80007900_8500(arg0);
			osSyncPrintf(&D_80036E90_37A90);
			break;
		case 0x8D:
			func_80007900_8500(arg0);
			osSyncPrintf(&D_80036E9C_37A9C);
			break;
		case 0xB1:
			func_80007900_8500(arg0);
			osSyncPrintf(&D_80036EAC_37AAC);
			break;
		case 0x8E:
			func_80007900_8500(arg0);
			osSyncPrintf(&D_80036EBC_37ABC);
			break;
		case 0x8F:
			func_80007900_8500(arg0);
			osSyncPrintf(&D_80036ECC_37ACC);
			break;
		case 0x91:
			func_80007900_8500(arg0);
			osSyncPrintf(&D_80036EE0_37AE0);
			func_80007900_8500(arg0 + 3);
			break;
		case 0x92:
			func_80007900_8500(arg0);
			osSyncPrintf(&D_80036EEC_37AEC);
			func_80007900_8500(arg0 + 3);
			break;
		case 0x95:
			osSyncPrintf(&D_80036EFC_37AFC, arg0[6]);
			break;
		case 0x96:
			osSyncPrintf(&D_80036F1C_37B1C, arg0[6]);
			break;
		case 0xAA:
			osSyncPrintf(&D_80036F38_37B38, arg0[6]);
			break;
		case 0xAB:
			osSyncPrintf(&D_80036F50_37B50, arg0[6]);
			break;
		case 0xA6:
			osSyncPrintf(&D_80036F6C_37B6C, arg0[6], arg0[7]);
			break;
		case 0xA7:
			osSyncPrintf(&D_80036F90_37B90, arg0[6], arg0[7]);
			break;
		case 0xB9:
			osSyncPrintf(&D_80036FB4_37BB4, arg0[6]);
			break;
		case 0xBA:
			osSyncPrintf(&D_80036FC8_37BC8, arg0[6]);
			break;
		default:
			break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007A20_8620.s")
#endif

void func_80007C78_8878(u8 *arg0) {
	s32 i;
	u8 *ptr;

	i = arg0[3];
	ptr = &D_8004D348[arg0[2] * 9];
	osSyncPrintf(&D_80036FE4_37BE4); //  because
	if (i--) {
		do {
			u8 *p = ptr;
			ptr += 9;
			func_80007A20_8620(p);
			if (i >= 2) {
				osSyncPrintf(&D_80036FF0_37BF0); // ,
			}
			if (i == 1) {
				osSyncPrintf(&D_80036FF4_37BF4); //  and
			}
		} while (i--);
	}
	osSyncPrintf(&D_80036FFC_37BFC);
}

s32 func_80007D44_8944(s32 arg0) {
	s16 sp1E;
	s16 sp1C;
	s16 sp1A;
	s16 sp18;

	func_80007728_8328(arg0, &sp1E, &sp1C);
	func_80007728_8328(arg0 + 3, &sp1A, &sp18);
	sp1E = (s16)(sp1E >> 8);
	sp1C = (s16)(sp1C >> 8);
	sp1A = (s16)(sp1A >> 8);
	sp18 = (s16)(sp18 >> 8);
	return (sp1E - sp1A) * (sp1E - sp1A) + (sp1C - sp18) * (sp1C - sp18);
}

#ifdef NON_MATCHING
s32 func_80007DE0_89E0(u8 *arg0) {
loop:
	switch (arg0[0]) {
	case 0x98:
		return D_80052B34->unk1C < D_80257A3A[D_80052B34->unk1A * 56];
	case 0x9A: {
		VehicleInstance *vi = vehicleInstances + arg0[1];
		return vi->unk1C < D_80257A3A[vi->unk1A * 56];
	}
	case 0x99: {
		BuildingInstance *bi = buildingInstances + arg0[1];
		return (s8)bi->hitPoints < D_802590A9[bi->buildingType * 32];
	}
	case 0x9B: {
		AlienInstance *alien = alienInstances + D_8004D161[arg0[1] * 2];
		if (alien->unk20 & 0x100000) {
			return 1;
		}
		return alien->hitPoints < D_802566BA[alien->specIndex * 52];
	}
	case 0xAF:
		arg0 = &D_8004D180[arg0[1] * 3];
		goto loop;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007DE0_89E0.s")
#endif

#ifdef NON_MATCHING
s32 func_80007F60_8B60(u8 *arg0) {
loop:
	switch (arg0[0]) {
	case 0x98:
		return D_80052B34->unk1C < 1;
	case 0x9A:
		return vehicleInstances[arg0[1]].unk1C < 1;
	case 0x9B:
		if (alienInstances[D_8004D161[arg0[1] * 2]].unk20 & 0x100000) {
			return 1;
		}
		return alienInstances[D_8004D161[arg0[1] * 2]].hitPoints < 1;
	case 0x99: {
		BuildingInstance *bi = buildingInstances + arg0[1];
		return (s8)bi->hitPoints < 1;
	}
	case 0xAF:
		arg0 = &D_8004D180[arg0[1] * 3];
		goto loop;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007F60_8B60.s")
#endif

#ifdef NON_MATCHING
s32 func_8000807C_8C7C(u8 *arg0, u8 *arg1) {
loop_1:
	switch (arg0[0]) {
	case 0x98:
		switch (arg1[0]) {
		case 0x99:
			return D_80052540 == arg1[1];
		case 0x9A:
			return D_80052B34 == &vehicleInstances[arg1[1]];
		case 0xAF:
			arg1 = &D_8004D180[arg1[1] * 3];
			goto loop_1;
		}
	case 0x9B:
		switch (arg1[0]) {
		case 0x99:
			return arg0[1] == (((*(u32 *)(D_80050AE0 + arg1[1] * 0x18)) << 26) >> 28);
		case 0xAF:
			arg1 = &D_8004D180[arg1[1] * 3];
			goto loop_1;
		}
	case 0xAF:
		arg0 = &D_8004D180[arg0[1] * 3];
		goto loop_1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_8000807C_8C7C.s")
#endif

#ifdef NON_MATCHING
s32 func_800081D4_8DD4(u8 *arg0) {
	switch (arg0[8]) {
	case 0xB3:
		return 1;
	case 0xB2:
		return 0;
	case 0x89:
		return func_80007D44_8944((s32)arg0) < arg0[6] * arg0[6] * 2;
	case 0x8A:
		return func_80007D44_8944((s32)arg0) >= arg0[6] * arg0[6] * 2;
	case 0x8C:
		return func_80007DE0_89E0(arg0);
	case 0x8D:
		return func_80007DE0_89E0(arg0) == 0;
	case 0xB5: {
		u32 v = *(u32 *)(D_80050AE0 + arg0[1] * 24);
		return ((v >> 12) & 0x10) == 0x10;
	}
	case 0xB1: {
		u32 v = *(u32 *)(D_80050AE0 + arg0[1] * 24);
		u32 vr = v >> 12;
		u32 bit16_check = (vr & 0x10) ^ 0x10;
		u32 bit12_inv;
		if (bit16_check != 0) {
			return 1;
		}
		bit12_inv = (vr & 1) ^ 1;
		return bit12_inv != 0;
	}
	case 0x8E:
		return func_80007F60_8B60(arg0);
	case 0x8F:
		return func_80007F60_8B60(arg0) == 0;
	case 0x91:
		return func_8000807C_8C7C(arg0, arg0 + 3);
	case 0x92:
		return func_8000807C_8C7C(arg0, arg0 + 3) == 0;
	case 0x95:
		return func_800078B8_84B8(arg0[6], &D_8004D154) != 0;
	case 0x96:
		return func_800078B8_84B8(arg0[6], &D_8004D158) != 0;
	case 0xAA:
		return func_8000789C_849C(arg0[6]) == 2;
	case 0xAB:
		return func_8000789C_849C(arg0[6]) == 3;
	case 0xA6:
		if (arg0[6] == 1) {
			D_8004D1C0 = arg0[7] - D_8004D1B0[arg0[6]];
		}
		return D_8004D1B0[arg0[6]] < arg0[7];
	case 0xA7:
		if (arg0[6] == 1) {
			D_8004D1C0 = arg0[7] - D_8004D1B0[arg0[6]];
		}
		return !(D_8004D1B0[arg0[6]] < arg0[7]);
	case 0xB9:
		return func_8000726C_7E6C(arg0[6]);
	case 0xBA:
		return func_8000726C_7E6C(arg0[6]) == 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800081D4_8DD4.s")
#endif

s32 func_80008478_9078(void) {
	if ((currentLevel == LEVEL_GREECE) && (func_8000726C_7E6C(0xB) != 0) && (D_80052554 >= 0x401)) {
		return 1;
	}
	osSyncPrintf(&D_80037000_37C00); // checkin for cutscenes
	if ((currentLevel == LEVEL_AMERICA) && (func_8000726C_7E6C(0x31) != 0) && (func_8000726C_7E6C(0x26) == 0)) {
		return 1;
	}
	return 0;
}

// https://decomp.me/scratch/6ZUC8
#ifdef NON_MATCHING
u8 func_8000851C_911C(s16 arg0) {
	u8 *entry;
	u8 *item;
	s32 count;
	s32 i;

	entry = (u8 *)D_8004D1C8;
	i = 0x3F;
	do {
		if (entry[0] != 0 && entry[1] == arg0) {
			item = &D_8004D348[entry[2] * 9];
			count = entry[3];
			if (count != 0) {
				count--;
				do {
					u8 *cur = item;
					item += 9;
					if (func_800081D4_8DD4(cur) == 0) goto next;
				} while (count--);
				item = &D_8004D348[entry[2] * 9];
				count = entry[3];
				osSyncPrintf(&D_80037018_37C18, entry[4] + 1);
				if (count--) {
					do {
						u8 *cur2 = item;
						item += 9;
						func_80007A20_8620(cur2);
					} while (count--);
				}
				osSyncPrintf(&D_80037034_37C34);
				return entry[4];
			}
		}
next:
		entry += 6;
	} while (i--);
	osSyncPrintf(&D_80037038_37C38, arg0);
	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_8000851C_911C.s")
#endif

#ifdef NON_MATCHING
void guess_checkMissions(void) {
	s32 sp5C;
	s32 var_s0;
	u8 *item;
	u8 *entry;
	s32 sp4C;
	u8 *cur;

	entry = (u8 *)D_8004D1C8;
	sp4C = 0;

	if (D_8004DC60 == 0) {
		sp5C = 0x3F;
		do {
			if (!((s32)((1 << sp5C) >> 31) & D_8004DC50.unk0) && !((1 << sp5C) & D_8004DC50.unk4) && entry[0] != 0 && (s32)entry[1] >= 0x46) {
				item = &D_8004D348[entry[2] * 9];
				var_s0 = entry[3] - 1;
				if (entry[3] != 0) {
				loop_7:
					cur = item;
					item += 9;
					if (func_800081D4_8DD4(cur) != 0) {
						if (var_s0 == 0) {
							if (D_8004DC40 == -1) {
								sp4C = 1;
								osSyncPrintf(&D_80037070_37C70, entry[4] + 1, entry[5]);
								var_s0 = entry[3] - 1;
								item = &D_8004D348[entry[2] * 9];
								if (entry[3] != 0) {
									do {
										cur = item;
										item += 9;
										func_80007A20_8620(cur);
										if (var_s0 != 0) {
											if (var_s0 == 1) {
												osSyncPrintf(&D_800370A8_37CA8);
											} else {
												osSyncPrintf(&D_800370B4_37CB4);
											}
										} else {
											osSyncPrintf(&D_800370B0_37CB0);
										}
										var_s0 -= 1;
									} while (var_s0 != 0);
								}
								D_8004DC40 = entry[5] * 0x1E;
							} else if (D_8004DC40 == 0) {
								osSyncPrintf(&D_800370B8_37CB8, entry[4] + 1);
								func_80018D7C_1997C(entry[4]);
								D_8004D350[entry[2] * 9] = 0xB2;
								D_8004DC40 = -1;
								entry[0] = 0;
								D_8004DC50.unk0 = (s32)(D_8004DC50.unk0 | (s32)((1 << sp5C) >> 31));
								D_8004DC50.unk4 = (s32)(D_8004DC50.unk4 | (1 << sp5C));
							} else {
								sp4C = 1;
								D_8004DC40 = D_8004DC40 - 1;
							}
						}
						var_s0 -= 1;
						if (var_s0 != 0) {
							goto loop_7;
						}
					}
				}
			}
			entry += 6;
			sp5C -= 1;
		} while (sp5C != 0);
		if (D_8004DC40 != -1 && sp4C == 0) {
			osSyncPrintf(&D_800370D4_37CD4);
			D_8004DC40 = -1;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/guess_checkMissions.s")
#endif

#ifdef NON_MATCHING
void debug_drawTimingGraphBars(void) {
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s32 pad6;
	s32 pad7;
	s32 pad8;
	s32 pad9;
	Gfx *sp30;
	s32 pad10;
	s32 lrxVal;
	Gfx *sp24;
	s32 var_a1;
	s32 var_a2;

	if (D_80047720 != 0) {
		gDPPipeSync(D_8005BB2C++);
		gDPSetCycleType(D_8005BB2C++, G_CYC_FILL);
		gDPSetRenderMode(D_8005BB2C++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
		gDPSetFillColor(D_8005BB2C++, 0xFFFFFFFF);
		var_a1 = 5;
		var_a2 = 0x110;
		do {
			gDPFillRectangle(D_8005BB2C++, var_a2, 192, var_a2, 208);
			var_a2 -= 0x30;
		} while (var_a1--);
		gDPPipeSync(D_8005BB2C++);
		gDPSetFillColor(D_8005BB2C++, 0x3E003E);
		sp30 = D_8005BB2C++;
		lrxVal = (s32)((u64)((s64)D_80052B38 * 1000000LL) / D_80035610 / 347 + 32) & 0x3FF;
		gDPFillRectangle(sp30, 32, 194, lrxVal, 199);
		gDPPipeSync(D_8005BB2C++);
		gDPSetFillColor(D_8005BB2C++, 0xF800F800);
		sp24 = D_8005BB2C++;
		lrxVal = (s32)((u64)((s64)D_80052B3C * 1000000LL) / D_80035610 / 347 + 32) & 0x3FF;
		gDPFillRectangle(sp24, 32, 200, lrxVal, 205);
		gDPPipeSync(D_8005BB2C++);
		gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
		gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/debug_drawTimingGraphBars.s")
#endif

void func_80008C18_9818(void)
{
	s32 count = 0x10;
	while (count--)
	{
		D_80047F60[count] = -1;
	}
}

s32 func_80008C44_9844(s32 arg0) {
	s16 *v1 = &D_80047F7E;
	s32 a1 = 0x10;
	while (a1--) {
		if (*v1 == -1) {
			*v1 = arg0;
			osSyncPrintf(D_80037100_37D00, arg0);
			// Remember to give power up %d
			break;
		}
		v1--;
	}
}

#ifdef NON_MATCHING
void func_80008CA8_98A8(s32 arg0) {
	Unk80052B40 sp;
	u16 temp_t6;
	s32 t3, a3, a2, a1, a0;
	s32 pad;

	guOrtho((Mtx *)D_8005BB38, 0.0f, 320.0f, 240.0f, 0.0f, D_80037450_38050, D_80037454_38054, 1.0f);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
	D_8005BB38 += 0x40;
	sp.unk0 = 0xA0;
	sp.unk2 = 0x78;
	sp.unk4 = 0;
	func_800039D0_45D0(&sp, 0, 0, D_8005BB38);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gDPTileSync(D_8005BB2C++);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetRenderMode(D_8005BB2C++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH);
	gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);

	t3 = 0x1E - ((D_80031648_32248 / 4) % 60);
	if (t3 >= 0) {
		a3 = t3;
	} else {
		a3 = -t3;
	}
	a2 = 0x32 - ((D_80031648_32248 / 5) % 100);
	if (a2 >= 0) {
		a1 = a2;
	} else {
		a1 = -a2;
	}
	a0 = 0x14 - ((D_80031648_32248 / 10) % 20);
	gDPSetEnvColor(D_8005BB2C++, a1 + 0x1E, a3 + 0x19, (a0 >= 0 ? a0 : -a0) + 0x14, 0xFF);
	if (arg0 == 0) {
		a0 = 0x14 - ((D_80031648_32248 / 4) % 40);
		if (a0 >= 0) {
			a3 = a0;
		} else {
			a3 = -a0;
		}
		if (t3 >= 0) {
			a1 = t3;
		} else {
			a1 = -t3;
		}
		if (a2 >= 0) {
			a0 = a2;
		} else {
			a0 = -a2;
		}
		gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, a1 + 0x23, a3 + 0x1E, a0 + 0x28, 0xFF);
	} else {
		a0 = 0x14 - ((D_80031648_32248 / 4) % 40);
		if (a0 >= 0) {
			a0 = a0;
		} else {
			a0 = -a0;
		}
		if (t3 >= 0) {
			a3 = t3;
		} else {
			a3 = -t3;
		}
		if (a2 >= 0) {
			a1 = a2;
		} else {
			a1 = -a2;
		}
		gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, a1 + 0x8C, a3 + 0x23, a0 + 0x1E, 0xFF);
	}
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_BLENDPE, G_CC_BLENDPE);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, (u8 *)((s32)(&D_1003990[((D_80031648_32248 / 5) % 8) * 256]) & 0x1FFFFFFF));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 127, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x3C, 0x3C);
	gDPPipeSync(D_8005BB2C++);
	D_800313E4_31FE4 += 1;
	if (D_800313E4_31FE4 == 0x400) {
		D_800313E4_31FE4 = 0;
	}
	func_80005110_5D10(0x140, 0xF0, 0xFF, 0xFF, 0xFF);
	temp_t6 = (D_80031648_32248 + 1) & 0xFFFF;
	D_80031648_32248 = temp_t6;
	if ((s32)temp_t6 >= 0xFA1) {
		D_80031648_32248 = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80008CA8_98A8.s")
#endif

#ifdef NON_MATCHING
void func_800092B8_9EB8(s32 arg0, s32 arg1, s32 arg2, s32 arg3, u8 arg4) {
	u8 *texture;
	s32 spanY;
	s32 textureSpanX;
	s32 textureSpanY;
	s32 stepX;
	s32 stepY;

	switch (arg4) {
	case 0:
		textureSpanX = (arg2 - arg0) * 4;
		spanY = arg3 - arg1;
		texture = D_1011C80;
		textureSpanY = spanY * 4;
		stepX = 0x400;
		stepY = 0x400;
		break;

	case 1:
		textureSpanX = (arg2 - arg0) * 4;
		spanY = arg3 - arg1;
		textureSpanY = spanY * 4;
		stepY = 0x400;
		stepX = 0x400;
		texture = D_1010C80;
		break;

	case 2:
		textureSpanX = (arg2 - arg0) * 4;
		spanY = arg3 - arg1;
		textureSpanY = spanY * 4;
		stepX = 0x400;
		stepY = 0x400;
		texture = D_1010C80;
		break;

	case 3:
		textureSpanX = (arg2 - arg0) * 8;
		spanY = arg3 - arg1;
		textureSpanY = spanY * 8;
		stepY = 0x800;
		stepX = 0x800;
		texture = D_1011C80;
		break;

	default:
		texture = D_1011C80;
		spanY = arg3 - arg1;
		break;
	}

	if (spanY >= 0x24U) {
		texture = D_1011C80;
	}

	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 1, texture);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 256);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 4, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x3C, 0x3C);
	gSPTextureRectangle(D_8005BB2C++, arg0, arg1, ((u32)(arg0 + arg2) >> 1), ((u32)(arg1 + arg3) >> 1), G_TX_RENDERTILE, arg0, arg1, stepX, stepY);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 1, texture + 0x400);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 256);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 4, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x3C, 0x3C);
	gSPTextureRectangle(D_8005BB2C++, ((u32)(arg0 + arg2) >> 1), arg1, arg2, ((u32)(arg1 + arg3) >> 1), G_TX_RENDERTILE, textureSpanX, 0, -stepX, stepY);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 1, texture + 0x800);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 256);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 4, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x3C, 0x3C);
	gSPTextureRectangle(D_8005BB2C++, arg0, ((u32)(arg1 + arg3) >> 1), ((u32)(arg0 + arg2) >> 1), arg3, G_TX_RENDERTILE, 0, textureSpanY, stepX, -stepY);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 1, texture + 0xC00);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 256);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 4, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x3C, 0x3C);
	gSPTextureRectangle(D_8005BB2C++, ((u32)(arg0 + arg2) >> 1), ((u32)(arg1 + arg3) >> 1), arg2, arg3, G_TX_RENDERTILE, textureSpanX, textureSpanY, -stepX, -stepY);
	gDPPipeSync(D_8005BB2C++);

	if ((arg4 == 2) || (arg4 == 0) || (arg4 == 3)) {
		u8 *overlayTexture;

		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
		gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0);

		if ((arg4 == 0) || (spanY >= 0x24U)) {
			overlayTexture = D_1013080;
		} else {
			overlayTexture = D_1012C80;
		}

		gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, overlayTexture);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 127, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_8b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x3C, 0x3C);
		gSPTextureRectangle(D_8005BB2C++, arg0, arg1, ((u32)(arg0 + arg2) >> 1), ((u32)(arg1 + arg3) >> 1), G_TX_RENDERTILE, arg0, arg1, stepX, stepY);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, overlayTexture + 0x100);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 127, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_8b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x3C, 0x3C);
		gSPTextureRectangle(D_8005BB2C++, ((u32)(arg0 + arg2) >> 1), arg1, arg2, ((u32)(arg1 + arg3) >> 1), G_TX_RENDERTILE, textureSpanX, 0, -stepX, stepY);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, overlayTexture + 0x200);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 127, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_8b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x3C, 0x3C);
		gSPTextureRectangle(D_8005BB2C++, arg0, ((u32)(arg1 + arg3) >> 1), ((u32)(arg0 + arg2) >> 1), arg3, G_TX_RENDERTILE, 0, textureSpanY, stepX, -stepY);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, overlayTexture + 0x300);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 127, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_8b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x3C, 0x3C);
		gSPTextureRectangle(D_8005BB2C++, ((u32)(arg0 + arg2) >> 1), ((u32)(arg1 + arg3) >> 1), arg2, arg3, G_TX_RENDERTILE, textureSpanX, textureSpanY, -stepX, -stepY);
		gDPPipeSync(D_8005BB2C++);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800092B8_9EB8.s")
#endif

s32 func_80009F18_AB18(s32 arg0) {
	s32 sp1C;

	func_8000505C_5C5C();
	func_800050C4_5CC4();
	func_8000DC9C_E89C(*(s32*)((u8*)D_8005BB48 + D_80031B84 * 4), *(s32*)((u8*)D_8005BB4C + (-(D_80031B84 * 4))));
	func_8000505C_5C5C();
	func_800050C4_5CC4();
	osSetTime(D_80068084, D_80068088);
	func_8000E4C4_F0C4(1);
	func_8000505C_5C5C();
	setFullResolution();
	func_80011D24_12924();
	loadFrontendData();
	if (arg0 != 0) {
		sp1C = func_80070270(9);
	} else {
		sp1C = func_80070270(0xE);
	}
	func_800056A8_62A8();
	func_800056A8_62A8();
	setGameplayResolution();
	func_80011674_12274();
	func_80011D6C_1296C(D_80047F93);
	gameplayMode = GAMEPLAY_MODE_UNK1;
	func_800050C4_5CC4();
	return sp1C;
}

s32 guess_displayInventory(void) {
	s32 sp1C;

	func_8000505C_5C5C();
	func_800050C4_5CC4();
	func_8000DC9C_E89C(*(s32*)((u8*)D_8005BB48 + D_80031B84 * 4), *(s32*)((u8*)D_8005BB4C + (-(D_80031B84 * 4))));
	func_8000AFDC_BBDC();
	func_8000505C_5C5C();
	func_800050C4_5CC4();
	osSetTime(D_80068084, D_80068088);
	func_8000E4C4_F0C4(1);
	func_8000505C_5C5C();
	func_80011D24_12924();
	loadFrontendData();
	setFullResolution();
	sp1C = func_80070270(0xB);
	func_800056A8_62A8();
	func_800056A8_62A8();
	setGameplayResolution();
	func_80011674_12274();
	if (D_80052ACA == 2 && currentLevel != LEVEL_COMET) {
		func_80011D6C_1296C(6);
	} else {
		func_80011D6C_1296C(D_80047F93);
	}
	gameplayMode = GAMEPLAY_MODE_UNK1;
	func_800050C4_5CC4();
	func_80013324_13F24();
	return sp1C;
}
