#include <ultra64.h>
#include "common.h"


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

#ifdef NON_MATCHING
void func_8000DCCC_E8CC(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
	s32 sp54;
	s32 sp50;
	s32 pad4C;
	s32 pad48;
	s32 pad44;
	s32 sp40;
	s16 pad3E;
	s16 pad3C;
	s16 pad3A;
	s16 pad38;
	s16 sp36;
	f64 sp28;
	f64 sp20;
	s32 temp_a1;
	s32 temp_s0;
	s32 temp_t1;
	s32 var_s1;
	f32 temp_f12;
	f64 temp_f18;
	s16 temp_v0;

	sp54 = D_80059CD2;
	sp50 = D_80059CD4;
	temp_t1 = (s32) ((D_8005BAEC * D_8005BAEC) + (__osCurrentTime * __osCurrentTime)) / 4;
	temp_a1 = (sp54 * sp54) + (sp50 * sp50);
	var_s1 = ((D_80059CD0 * 2 * (temp_t1 - temp_a1)) + (D_80059CD0 * temp_a1)) / 1296;
	temp_s0 = var_s1 & 0xFFFF;

	sp36 = coss(temp_s0 & 0xFFFF);
	temp_f18 = (f64) (f32) sins(temp_s0 & 0xFFFF);
	sp28 = (f64) sp50;
	sp20 = (f64) sp54;
	sp40 = (s32) (((temp_f18 / 32768.0) * sp28) + (((f64) (f32) sp36 / 32768.0) * sp20));

	sp36 = sins(temp_s0 & 0xFFFF);
	temp_v0 = coss(temp_s0 & 0xFFFF);

	if (var_s1 >= 0x8000) {
		var_s1 = 0x7FFF;
	}

	temp_f12 = (f32) ((D_80037620_38220 - (f64) (f32) var_s1) / D_80037620_38220);

	D_80059CD2 = (s16) (s32) ((f32) sp40 * temp_f12);

	D_80059CD4 = (s16) (s32) ((f32) (s32) ((((f64) (f32) temp_v0 / 32768.0) * sp28) + (-((f64) (f32) sp36 / 32768.0) * sp20)) * temp_f12);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000DCCC_E8CC.s")
#endif

/* Rotate (D_80059CD2, D_80059CD4) by angle derived from D_80059CD0, update spin rate. */
#ifdef NON_MATCHING
void func_8000DEFC_EAFC(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
	s16 sp1E;

	sp1E = coss((D_80059CD0 << 5) & 0xFFFF);
	D_80059CD2 = (s16) (s32) ((((f64) (f32) sins((D_80059CD0 * 0x10) & 0xFFFF) / 32768.0) * (f64) (D_80059CD0 / 10)) + ((f64) D_80059CD2 * ((f64) (f32) sp1E / 32768.0)));
	D_80059CD4 = (s16) (s32) (((f64) (f32) coss((arg0 = D_80059CD0 << 4, arg0 & 0xFFFF)) / 32768.0) * (f64) (D_80059CD0 / 10) + (f64) D_80059CD4);
	D_80059CD6 = -D_80059CD0 * 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000DEFC_EAFC.s")
#endif

#ifdef NON_MATCHING
/* Distance-based lens distortion correction: selects rodata constant based on
   arg0/arg1 threshold, computes distortion factor, updates (D_80059CD2, D_80059CD4). */
void func_8000E048_EC48(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	f32 var_f0;
	f32 var_f0_2;
	s32 temp_v0;
	s32 temp_v0_2;
	s32 temp_v0_3;
	s32 temp_v0_4;
	s32 temp_v1;
	s32 temp_v1_2;
	s32 temp_v1_3;
	s32 temp_v1_4;
	s32 temp_t2;
	s32 temp_t2_2;
	s32 temp_t2_3;
	s32 temp_t2_4;

	if (arg0 >= 5) {
		if (arg1 >= 4) {
			temp_v0 = (arg0 + arg2) - 4;
			temp_v1 = (arg1 + arg3) - 1;
			temp_t2 = (temp_v0 * temp_v0) + (temp_v1 * temp_v1);
			var_f0 = (f32) ((D_80037628 - (f64) (f32) ((D_80059CD0 * 2 * (0x19 - temp_t2)) + (D_80059CD0 * temp_t2))) / D_80037628);
			D_80059CD4 = (s16) (s32) (((f32) (D_80059CD4 + 0x300) * var_f0) - 768.0f);
		} else {
			temp_v0_2 = (arg0 + arg2) - 4;
			temp_v1_2 = (arg1 + arg3) - 7;
			temp_t2_2 = (temp_v0_2 * temp_v0_2) + (temp_v1_2 * temp_v1_2);
			var_f0 = (f32) ((D_80037630 - (f64) (f32) ((D_80059CD0 * 2 * (0x19 - temp_t2_2)) + (D_80059CD0 * temp_t2_2))) / D_80037630);
			D_80059CD4 = (s16) (s32) (((f32) (D_80059CD4 - 0x300) * var_f0) + 768.0f);
		}
		D_80059CD2 = (s16) (s32) (((f32) (D_80059CD2 - 0x480) * var_f0) + 1152.0f);
		return;
	}
	if (arg1 >= 4) {
		temp_v0_3 = (arg0 + arg2) - 6;
		temp_v1_3 = (arg1 + arg3) - 1;
		temp_t2_3 = (temp_v0_3 * temp_v0_3) + (temp_v1_3 * temp_v1_3);
		var_f0_2 = (f32) ((D_80037638 - (f64) (f32) ((D_80059CD0 * 2 * (0x19 - temp_t2_3)) + (D_80059CD0 * temp_t2_3))) / D_80037638);
		D_80059CD4 = (s16) (s32) (((f32) (D_80059CD4 + 0x300) * var_f0_2) - 768.0f);
	} else {
		temp_v0_4 = (arg0 + arg2) - 6;
		temp_v1_4 = (arg1 + arg3) - 7;
		temp_t2_4 = (temp_v0_4 * temp_v0_4) + (temp_v1_4 * temp_v1_4);
		var_f0_2 = (f32) ((D_80037640 - (f64) (f32) ((D_80059CD0 * 2 * (0x19 - temp_t2_4)) + (D_80059CD0 * temp_t2_4))) / D_80037640);
		D_80059CD4 = (s16) (s32) (((f32) (D_80059CD4 - 0x300) * var_f0_2) + 768.0f);
	}
	D_80059CD2 = (s16) (s32) (((f32) (D_80059CD2 + 0x480) * var_f0_2) - 1152.0f);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000E048_EC48.s")
#endif

#ifdef NON_MATCHING
/* Update projection coordinates from struct fields and screen-space offsets. */
void func_8000E3DC_EFDC(s32 arg0, void *arg1, s16 arg2, s16 arg3) {
	D_8005BAE8->unk0 = (f32) (D_8005BAE8->unk0 + D_8005BAE8->unkC);
	D_8005BAE8->unk4 = (f32) (D_8005BAE8->unk4 + D_8005BAE8->unk10);
	D_8005BAE8->unk10 = (f32) ((f64) D_8005BAE8->unk10 + D_80037648);
	D_80059CD2 = (s16) (s32) (D_8005BAE8->unk0 + (f32) (arg2 << 8));
	D_80059CD4 = (s16) (s32) (-D_8005BAE8->unk4 - (f32) (arg3 << 8));
	D_80059CD6 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000E3DC_EFDC.s")
#endif

// Redefining osSetTime to take two s32 arguments to matches? (the .h definition takes u64)
#ifdef NON_MATCHING
void osSetTime(s32 arg0, s32 arg1) {
	D_8005BAEC = arg0;
	__osCurrentTime = arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/osSetTime.s")
#endif

#ifdef NON_MATCHING
/* Initialise projection state from entry arg0 in D_80031A90 table, then copy framebuffer region. */
void func_8000E4C4_F0C4(s32 arg0) {
	void *temp_t8;

	temp_t8 = (void *)((u8 *)D_80031A90 + (arg0 << 5));
	D_80059CDC = temp_t8;
	D_80059CD0 = *(s16 *)((u8 *)temp_t8 + 4);
	D_80059CE0 = *(f32 *)((u8 *)temp_t8 + 8);
	D_80059CD8 = 0;
	func_8000DC9C_E89C((s32)&D_80267080, (s32)&D_803DA800);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000E4C4_F0C4.s")
#endif

s32 func_8000E52C_F12C(s32 arg0) {
	return arg0 * arg0;
}

#ifdef NON_MATCHING
s32 func_8000E53C_F13C(void) {
	u16 sp136;
	s32 sp120;
	s32 sp118;
	s32 sp114;
	s32 sp110;
	s32 sp108;
	Unk80052B40 spFC;
	f32 spA0;
	s32 sp98;
	s32 sp94;
	s32 sp90;
	s32 sp8C;
	s32 sp88;
	s32 sp84;
	s32 sp7C;
	s32 sp78;
	u8 *sp74;
	s32 sp70;
	s32 sp6C;
	s32 sp68;
	s32 sp64;
	s32 sp60;
	s32 sp5C;
	s32 sp58;
	s16 temp_a0;
	s16 temp_t9;
	s16 temp_v0_13;
	s16 temp_v1;
	s32 var_t0;
	s16 var_t5;
	s16 var_v1;
	s32 var_ra;
	s32 var_t3;
	s32 var_t4;
	Vtx *temp_s4;
	Vtx *temp_s0;
	Vtx *temp_s1;
	Vtx *temp_s2;

	sp120 = D_8005BAEC / 0x10;
	sp118 = -D_8005BAEC / 2;

	gDPPipeSync(D_8005BB2C++);
	gDPTileSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BOTH | G_LIGHTING);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_POINT);
	guPerspective((Mtx *) D_8005BB38, &sp136, 30.0f, (f32) D_8005BAEC / (f32) __osCurrentTime, 10.0f, D_80037650_38250, 1.0f);
	gSPPerspNormalize(D_8005BB2C++, (u32) &sp136);
	gSPMatrix(D_8005BB2C++, (Mtx *) (D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
	D_8005BB38 += 0x40;
	spA0 = sinf(D_80037654_38254);
	guLookAt((Mtx *) D_8005BB38, 0.0f, 0.0f, (f32) __osCurrentTime / ((spA0 / cosf(D_80037658_38258)) * 2.0f), 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
	gSPMatrix(D_8005BB2C++, (Mtx *) (D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
	D_8005BB38 += 0x40;
	gSPMatrix(D_8005BB2C++, (Mtx *) ((u32) &D_80031120_31D20 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	spFC.unk0 = 0;
	var_t0 = 0x14 - (__osCurrentTime % 0x14);
	if (var_t0 == 0x14) {
		var_t0 = 0;
	}
	spFC.unk2 = -var_t0;
	spFC.unk4 = 0;
	func_800039D0_45D0(&spFC, 0, 0, D_8005BB38);
	gSPMatrix(D_8005BB2C++, (Mtx *) (D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	sp84 = 1;
	sp74 = (u8 *) &D_803DA800;
	sp70 = 0;
	sp64 = 0;
	sp60 = 0x78;
	sp58 = 0x14;
	var_v1 = 0;
	do {
		sp8C = 1;
		sp7C = var_v1;
		sp68 = 0;
		sp6C = (sp70 * 4) & 0xFFF;
		var_t5 = 0;
		var_t4 = 0;
		var_ra = sp120;
		sp98 = var_ra << 6;
		sp5C = sp118;
		do {
			temp_s4 = D_8005BB34;
			D_8005BB34 = temp_s4 + 1;
			temp_s0 = D_8005BB34;
			D_8005BB34 = temp_s0 + 1;
			temp_s1 = D_8005BB34;
			D_8005BB34 = temp_s1 + 1;
			temp_s2 = D_8005BB34;
			D_8005BB34 = temp_s2 + 1;

			var_t3 = var_ra;
			sp114 = var_t4;
			if (D_8005BAEC < var_t3) {
				var_t3 = D_8005BAEC;
			}

			sp108 = sp58;
			if (__osCurrentTime < sp108) {
				sp108 = __osCurrentTime;
			}

			D_80059CD2 = sp5C;
			temp_v0_13 = 0x78 - sp108;
			D_80059CD4 = temp_v0_13;
			D_80059CD6 = 0;
			sp94 = temp_v0_13;
			sp110 = var_t3;
			sp90 = var_t4;
			sp88 = var_ra;
			((UnkE830ModeEntry *) D_80059CDC)->unk0((s16) var_t5, (s16) sp7C, 0, 1);
			temp_s4->v.ob[0] = D_80059CD2;
			temp_s4->v.ob[1] = D_80059CD4;
			temp_s4->v.ob[2] = D_80059CD6;

			D_80059CD6 = 0;
			D_80059CD4 = temp_v0_13;
			temp_v1 = var_t3 + sp118;
			D_80059CD2 = temp_v1;
			sp78 = temp_v1;
			((UnkE830ModeEntry *) D_80059CDC)->unk0((s16) var_t5, (s16) sp7C, 1, 1);
			temp_s0->v.ob[0] = D_80059CD2;
			temp_s0->v.ob[1] = D_80059CD4;
			temp_s0->v.ob[2] = D_80059CD6;

			D_80059CD2 = sp5C;
			D_80059CD4 = sp60;
			D_80059CD6 = 0;
			((UnkE830ModeEntry *) D_80059CDC)->unk0((s16) var_t5, (s16) sp7C, 0, 0);
			temp_s1->v.ob[0] = D_80059CD2;
			temp_s1->v.ob[1] = D_80059CD4;
			temp_s1->v.ob[2] = D_80059CD6;

			D_80059CD2 = sp78;
			D_80059CD4 = sp60;
			D_80059CD6 = 0;
			if (D_8005BAEC < D_80059CD2) {
				D_80059CD2 = D_8005BAEC;
			}
			((UnkE830ModeEntry *) D_80059CDC)->unk0((s16) var_t5, (s16) sp7C, 1, 0);
			temp_s2->v.ob[0] = D_80059CD2;
			temp_s2->v.ob[1] = D_80059CD4;
			temp_s2->v.ob[2] = D_80059CD6;

			temp_s4->v.tc[0] = sp68;
			temp_s1->v.tc[0] = sp68;
			temp_t9 = sp108 << 6;
			temp_s4->v.tc[1] = temp_t9;
			temp_s0->v.tc[1] = temp_t9;
			temp_a0 = var_t3 << 6;
			temp_s0->v.tc[0] = temp_a0;
			temp_s2->v.tc[0] = temp_a0;
			temp_s1->v.tc[1] = sp64;
			temp_s2->v.tc[1] = sp64;

			temp_s4->v.cn[0] = 0xFF;
			temp_s4->v.cn[1] = 0xFF;
			temp_s4->v.cn[2] = 0xFF;
			temp_s4->v.cn[3] = 0xFF;
			temp_s0->v.cn[0] = 0xFF;
			temp_s0->v.cn[1] = 0xFF;
			temp_s0->v.cn[2] = 0xFF;
			temp_s0->v.cn[3] = 0xFF;
			temp_s1->v.cn[0] = 0xFF;
			temp_s1->v.cn[1] = 0xFF;
			temp_s1->v.cn[2] = 0xFF;
			temp_s1->v.cn[3] = 0xFF;
			temp_s2->v.cn[0] = 0xFF;
			temp_s2->v.cn[1] = 0xFF;
			temp_s2->v.cn[2] = 0xFF;
			temp_s2->v.cn[3] = 0xFF;

			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, sp74);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadTile(D_8005BB2C++, G_TX_LOADTILE, var_t4 << 2, sp6C >> 2, var_t3 << 2, sp108 << 2);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, sp114 << 2, sp6C >> 2, var_t3 << 2, sp108 << 2);
			gSPVertex(D_8005BB2C++, (Vtx *) ((u32) temp_s4 & 0x1FFFFFFF), 4, 0);
			gSP2Triangles(D_8005BB2C++, 0, 1, 2, 0, 1, 2, 3, 0);

			sp68 += sp98;
			sp8C = var_t5 + 1;
			sp5C += sp120;
			var_t4 += sp120;
			var_ra += sp120;
			var_t5 = sp8C;
		} while (var_t5 != 0x10);

		sp64 += 0x500;
		sp70 += 0x14;
		sp60 -= 0x14;
		sp58 += 0x14;
		var_v1 = sp84;
		sp84++;
	} while (var_v1 != 0xC);

	if (((UnkE830ModeEntry *) D_80059CDC)->unk10 < D_80059CD0) {
		D_80059CD0 = ((UnkE830ModeEntry *) D_80059CDC)->unk10;
		D_80059CE0 = 0.0f;
		return 1;
	}

	D_80059CD0 = (s16) (D_80059CD0 + D_80059CE0);
	D_80059CD8++;
	D_80059CE0 += ((UnkE830ModeEntry *) D_80059CDC)->unkC;
	if (D_80059CD8 >= 0x80) {
		D_80059CD8 = 0x7F;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000E53C_F13C.s")
#endif
