#define GAME_OSSETTIME_IMPL
#include <ultra64.h>
#include "common.h"

void func_8000DEFC_EAFC(s32 arg0, s32 arg1, s32 arg2, s32 arg3);
void func_8000E3DC_EFDC(s32 arg0, void *arg1, s16 arg2, s16 arg3);

/* Unreferenced zero block preceding the projection effect table. */
s32 D_80031A80_32680[] = {0, 0, 0, 0};

UnkE830ModeEntry D_80031A90_32690[] = {
	{func_8000DCCC_E8CC, 0, {0, 0}, 0.0f, 0.7f, 1000, 0, 0, 0, 0, {0, 0}, 0.0f},
	{func_8000DEFC_EAFC, 0, {0, 0}, 0.0f, 0.8f, 3000, 0, 0, 0, 0, {0, 0}, 0.0f},
	{(void (*)(s32, s32, s32, s32))func_8000E048_EC48, 0, {0, 0}, 0.0f, 2.0f, 1000, 0, 0, 0, 0, {0, 0}, 0.0f},
	{(void (*)(s32, s32, s32, s32))func_8000E048_EC48, 1000, {0, 0}, 49.2f, -2.0f, 1000, 0, 0, 0, 0, {0, 0}, 0.0f},
	{(void (*)(s32, s32, s32, s32))func_8000E3DC_EFDC, 0, {0, 0}, 0.0f, 0.1f, 0x4000, 0, 0, 0, 0, {0, 0}, 0.0f},
	{(void (*)(s32, s32, s32, s32))func_8000E048_EC48, 0, {0, 0}, 0.0f, 0.0f, 0x4000, 0x7B, 0xEA, 0x159, 0, {0, 0}, 0.0f},
};

void func_8000DC30_E830(s32 arg0, s32 arg1) {
	s16 *src;
	s16 *dst;
	s32 outer;

	src = (s16 *)arg0;
	dst = (s16 *)arg1;
	outer = 6;
	do {
		arg1 = 9;
		do {
			s32 inner;

			inner = 0x1F;
			do {
				s32 tile;

				tile = 0x1F;
				do {
					arg0 = tile;
					*dst++ = *src++;
					tile -= 1;
				} while (arg0 != 0);
				arg0 = inner;
				src += 0x120;
				inner -= 1;
			} while (arg0 != 0);
			arg0 = arg1;
			src -= 0x27E0;
			arg1 -= 1;
		} while (arg0 != 0);
		arg0 = outer;
		src += 0x26C0;
		outer -= 1;
	} while (arg0 != 0);
}

void func_8000DC9C_E89C(s32 arg0, s32 arg1)
{
	s32 *src = (s32 *) arg0;
	s32 *dst = (s32 *) arg1;
	s32 new_var;
	s32 count = 0x95FF;
	do
	{
	dst += 1;
	dst[-1] = *src++;
	new_var = count;
	count -= 1;
	}
	while (new_var != (1 * 0));
}

/* Rotate the projection coordinates and attenuate them by the distortion angle. */
void func_8000DCCC_E8CC(s32 arg0, s32 arg1, s32 arg2, s32 arg3)
{
	s32 x;
	s32 y;
	s32 radiusSquared;
	s32 screenRadiusSquared;
	s32 angle;
	s32 rotatedX;
	f32 scale;
	s32 pad38;
	s16 trig;
	s16 cosine;

	x = D_80059CD2;
	y = D_80059CD4;
	screenRadiusSquared = (D_8005BAEC * D_8005BAEC + D_8005BAF0 * D_8005BAF0) / 4;
	radiusSquared = x * x + y * y;
	angle = (D_80059CD0 * 2 * (screenRadiusSquared - radiusSquared) + D_80059CD0 * radiusSquared) / 1296;

	trig = coss(angle);
	rotatedX = ((f32)sins(angle) / 32768.0) * y + ((f32)trig / 32768.0) * x;
	trig = sins(angle);
	cosine = coss(angle);
	if (angle >= 0x8000)
	{
		angle = 0x7FFF;
	}
	scale = (32767.0 - (f32)angle) / 32767.0;
	D_80059CD2 = rotatedX * scale;
	D_80059CD4 = (s32)(((f32)cosine / 32768.0) * y + -((f32)trig / 32768.0) * x) * scale;
}

// https://decomp.me/scratch/5eScw
/* Rotate (D_80059CD2, D_80059CD4) by angle derived from D_80059CD0, update spin rate. */
void func_8000DEFC_EAFC(s32 arg0, s32 arg1, s32 arg2, s32 arg3)
{
  s16 sp1E;
  sp1E = coss(D_80059CD0 << 5);
  D_80059CD2 = (
	  (D_80059CD0 / 10) * 
		  (((f32) sins(D_80059CD0 * 0x10)) / 32768.0)) + (D_80059CD2 * (((f32) sp1E) / 32768.0));
  D_80059CD4 = (
	  (D_80059CD0 / 10) * 
		  (((f32) coss(D_80059CD0 * 0x10)) / 32768.0))
	  + ((0, D_80059CD4));
  D_80059CD6 = (-D_80059CD0) * 2;
}

/* Apply distance-based lens distortion around the selected screen quadrant. */
void func_8000E048_EC48(s16 arg0, s16 arg1, s16 arg2, s16 arg3)
{
	s32 x;
	s32 y;
	s32 distortion;
	f32 scale;

	if (arg0 >= 5)
	{
		if (arg1 >= 4)
		{
			x = arg0 + arg2 - 4;
			y = arg1 + arg3 - 1;
			distortion = x * x + y * y;
			distortion = D_80059CD0 * 2 * (25 - distortion) + D_80059CD0 * distortion;
			scale = (32767.0 - (f32)distortion) / 32767.0;
			D_80059CD4 = (D_80059CD4 + 768) * scale - 768.0f;
		}
		else
		{
			x = arg0 + arg2 - 4;
			y = arg1 + arg3 - 7;
			distortion = x * x + y * y;
			distortion = D_80059CD0 * 2 * (25 - distortion) + D_80059CD0 * distortion;
			scale = (32767.0 - (f32)distortion) / 32767.0;
			D_80059CD4 = (D_80059CD4 - 768) * scale + 768.0f;
		}
		D_80059CD2 = (D_80059CD2 - 1152) * scale + 1152.0f;
	}
	else
	{
		if (arg1 >= 4)
		{
			x = arg0 + arg2 - 6;
			y = arg1 + arg3 - 1;
			distortion = x * x + y * y;
			distortion = D_80059CD0 * 2 * (25 - distortion) + D_80059CD0 * distortion;
			scale = (32767.0 - (f32)distortion) / 32767.0;
			D_80059CD4 = (D_80059CD4 + 768) * scale - 768.0f;
		}
		else
		{
			x = arg0 + arg2 - 6;
			y = arg1 + arg3 - 7;
			distortion = x * x + y * y;
			distortion = D_80059CD0 * 2 * (25 - distortion) + D_80059CD0 * distortion;
			scale = (32767.0 - (f32)distortion) / 32767.0;
			D_80059CD4 = (D_80059CD4 - 768) * scale + 768.0f;
		}
		D_80059CD2 = (D_80059CD2 + 1152) * scale - 1152.0f;
	}
}

/* Update projection coordinates from struct fields and screen-space offsets. */
void func_8000E3DC_EFDC(s32 arg0, void *arg1, s16 arg2, s16 arg3) {
	D_8005BAE8->unk0 = (f32) (D_8005BAE8->unk0 + D_8005BAE8->unkC);
	D_8005BAE8->unk4 = (f32) (D_8005BAE8->unk4 + D_8005BAE8->unk10);
	D_8005BAE8->unk10 = (f32) ((f64) D_8005BAE8->unk10 + 2.8);
	D_80059CD2 = (s16) (s32) (D_8005BAE8->unk0 + (f32) (arg2 << 8));
	D_80059CD4 = (s16) (s32) (-D_8005BAE8->unk4 - (f32) (arg3 << 8));
	D_80059CD6 = 0;
}

// Redefining osSetTime to take two s32 arguments to matches? (the .h definition takes u64)
void osSetTime(s32 arg0, s32 arg1) {
	D_8005BAEC = arg0;
	D_8005BAF0 = arg1;
}

/* Initialise projection state from entry arg0 in D_80031A90_32690 table, then copy framebuffer region. */
void func_8000E4C4_F0C4(s32 arg0) {
	D_80059CDC = &D_80031A90_32690[arg0];
	D_80059CD0 = D_80059CDC->unk4;
	D_80059CE0 = D_80059CDC->unk8;
	D_80059CD8 = 0;
	func_8000DC9C_E89C((s32)&D_80267080, (s32)&D_803DA800);
}

s32 func_8000E52C_F12C(s32 arg0) {
	return arg0 * arg0;
}

#ifdef NON_MATCHING
s32 func_8000E53C_F13C(void) {
	s32 temp_v0_13;
	s32 temp_v1;
	u16 sp136;
	Vtx *temp_s4;
	Vtx *temp_s0;
	Vtx *temp_s1;
	Vtx *temp_s2;
	s32 sp120;
	s32 var_t0;
	s32 sp118;
	s32 sp114;
	s32 var_v1;
	s32 var_t5;
	s32 sp108;
	Unk80052B40 spFC;
	s32 var_t3;
	s32 sp74;

	sp120 = D_8005BAEC / 0x10;
	sp118 = -D_8005BAEC / 2;

	gDPPipeSync(D_8005BB2C++);
	gDPTileSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BOTH | G_LIGHTING);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_POINT);
	guPerspective(D_8005BB38, &sp136, 30.0f, (f32) D_8005BAEC / (f32) D_8005BAF0, 10.0f, 6000.0f, 1.0f);
	gSPPerspNormalize(D_8005BB2C++, (u32) &sp136);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
	D_8005BB38++;
	guLookAt(D_8005BB38, 0.0f, 0.0f, (f32) D_8005BAF0 / ((sinf(0.2617993950843811f) / cosf(0.2617993950843811f)) * 2), 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
	D_8005BB38++;
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(&D_80031120_31D20), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	spFC.unk0 = 0;
	var_t0 = 0x14 - (D_8005BAF0 % 0x14);
	if (var_t0 == 0x14) {
		var_t0 = 0;
	}
	spFC.unk2 = -var_t0;
	spFC.unk4 = 0;
	func_800039D0_45D0(&spFC, 0, 0, D_8005BB38);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38++;
	sp74 = (s32) &D_803DA800;


	for (var_v1 = 0; var_v1 != 12; var_v1++) {


		for (var_t5 = 0; var_t5 != 16; var_t5++) {
			temp_s4 = D_8005BB34++;
			temp_s0 = D_8005BB34++;
			temp_s1 = D_8005BB34++;
			temp_s2 = D_8005BB34++;

			var_t0 = (s16) var_t5;
			sp114 = (var_t5 * sp120);
			temp_v1 = var_t5 + 1;
			var_t3 = (temp_v1 * sp120);
			temp_v0_13 = var_v1 + 1;
			if (D_8005BAEC < var_t3) {
				var_t3 = D_8005BAEC;
			}

			sp108 = (temp_v0_13 * 20);
			if (D_8005BAF0 < sp108) {
				sp108 = D_8005BAF0;
			}

			D_80059CD2 = (sp114 + sp118);

			temp_v0_13 = 0x78 - sp108;
			D_80059CD4 = temp_v0_13;
			D_80059CD6 = 0;


			D_80059CDC->unk0((s16) var_t0, (s16) var_v1, 0, 1);
			temp_s4->v.ob[0] = D_80059CD2;
			temp_s4->v.ob[1] = D_80059CD4;
			temp_s4->v.ob[2] = D_80059CD6;

			D_80059CD6 = 0;
			D_80059CD4 = temp_v0_13;

			temp_v1 = var_t3 + sp118;
			D_80059CD2 = temp_v1;

			D_80059CDC->unk0((s16) var_t0, (s16) var_v1, 1, 1);
			temp_s0->v.ob[0] = D_80059CD2;
			temp_s0->v.ob[1] = D_80059CD4;
			temp_s0->v.ob[2] = D_80059CD6;

			D_80059CD2 = (sp114 + sp118);
			D_80059CD4 = (0x78 - (var_v1 * 20));
			D_80059CD6 = 0;
			D_80059CDC->unk0((s16) var_t0, (s16) var_v1, 0, 0);
			temp_s1->v.ob[0] = D_80059CD2;
			temp_s1->v.ob[1] = D_80059CD4;
			temp_s1->v.ob[2] = D_80059CD6;

			D_80059CD2 = temp_v1;
			D_80059CD4 = (0x78 - (var_v1 * 20));
			D_80059CD6 = 0;
			if (D_8005BAEC < D_80059CD2) {
				D_80059CD2 = D_8005BAEC;
			}
			D_80059CDC->unk0((s16) var_t0, (s16) var_v1, 1, 0);
			temp_s2->v.ob[0] = D_80059CD2;
			temp_s2->v.ob[1] = D_80059CD4;
			temp_s2->v.ob[2] = D_80059CD6;

			temp_s4->v.tc[0] = temp_s1->v.tc[0] = (sp114 * 64);
			temp_s4->v.tc[1] = temp_s0->v.tc[1] = sp108 << 6;
			temp_s0->v.tc[0] = temp_s2->v.tc[0] = var_t3 << 6;
			temp_s1->v.tc[1] = temp_s2->v.tc[1] = (var_v1 * 20 * 64);

			temp_s4->v.cn[0] = temp_s4->v.cn[1] = temp_s4->v.cn[2] = temp_s4->v.cn[3] = 0xFF;
			temp_s0->v.cn[0] = temp_s0->v.cn[1] = temp_s0->v.cn[2] = temp_s0->v.cn[3] = 0xFF;
			temp_s1->v.cn[0] = temp_s1->v.cn[1] = temp_s1->v.cn[2] = temp_s1->v.cn[3] = 0xFF;
			temp_s2->v.cn[0] = temp_s2->v.cn[1] = temp_s2->v.cn[2] = temp_s2->v.cn[3] = 0xFF;

			gDPLoadTextureTile(D_8005BB2C++, sp74, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, 240, sp114, var_v1 * 20, var_t3, sp108, 0, G_TX_CLAMP, G_TX_CLAMP, 0, 0, 0, 0);
			gSPVertex(D_8005BB2C++, K0_TO_PHYS(temp_s4), 4, 0);
			gSP2Triangles(D_8005BB2C++, 0, 1, 2, 0, 1, 2, 3, 0);
		}
	}

	if (D_80059CDC->unk10 < D_80059CD0) {
		D_80059CD0 = D_80059CDC->unk10;
		D_80059CE0 = 0.0f;
		return 1;
	}

	D_80059CD0 = (s16) (D_80059CD0 + D_80059CE0);
	D_80059CE0 += D_80059CDC->unkC;
	D_80059CD8++;
	if (D_80059CD8 >= 0x80) {
		D_80059CD8 = 0x7F;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000E53C_F13C.s")
#endif
