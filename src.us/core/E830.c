#include <ultra64.h>
#include "common.h"


#ifdef NON_MATCHING
/* Copy a tiled subregion of a 16-bit framebuffer across 6 outer iterations.
   Reads 32 halfwords per inner pass, skipping 0x120 halfwords between middle rows,
   then rewinds src by 0x27E0 halfwords after each middle sweep. */
void func_8000DC30_E830(s16 *arg0, s16 *arg1) {
	s16 *src;
	s16 *dst;
	s32 outer;
	s32 middle;
	s32 inner;
	s16 val;

	src = arg0;
	dst = arg1;
	outer = 6;
	do {
		middle = 0x1F;
		do {
			inner = 0x1F;
			do {
				val = *src;
				dst += 1;
				src += 1;
				*(dst - 1) = val;
				inner -= 1;
			} while (inner != 0);
			src += 0x120;
			middle -= 1;
		} while (middle != 0);
		src -= 0x27E0;
		outer -= 1;
	} while (outer != 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000DC30_E830.s")
#endif

#ifdef NON_MATCHING
void func_8000DC9C_E89C(s32 arg0, s32 arg1) {
	u8 *src = (u8 *)arg0;
	u8 *dst = (u8 *)arg1;
	s32 count = 0x95FF;
	do {
		*(s32 *)(dst - 4) = *(s32 *)src;
		src += 4;
		dst += 4;
		count -= 1;
	} while (count != 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000DC9C_E89C.s")
#endif

#ifdef NON_MATCHING
void func_8000DCCC_E8CC(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
	s16 sp36;
	s32 sp40;
	s32 sp50;
	s32 sp54;
	f64 sp20;
	f64 sp28;
	s16 temp_a3;
	s16 temp_t0;
	s32 temp_a1;
	s32 temp_s0;
	s32 var_s1;
	f32 temp_f12;
	f64 temp_f0;
	f64 temp_f2;
	f64 temp_f18;
	s16 temp_v0;

	temp_a3 = D_80059CD2;
	temp_t0 = D_80059CD4;
	sp54 = (s32) temp_a3;
	sp50 = (s32) temp_t0;

	temp_a1 = (temp_a3 * temp_a3) + (temp_t0 * temp_t0);

	var_s1 = (s32) ((D_80059CD0 * 2 * (((s32) ((D_8005BAEC * D_8005BAEC) + (__osCurrentTime * __osCurrentTime)) / 4) - temp_a1)) + (D_80059CD0 * temp_a1)) / 1296;
	temp_s0 = var_s1 & 0xFFFF;

	sp36 = coss(temp_s0 & 0xFFFF, temp_a1, D_80059CD0, temp_a3);

	temp_f0 = (f64) temp_t0;
	temp_f18 = (f64) (f32) sins(temp_s0 & 0xFFFF);
	sp28 = temp_f0;
	temp_f2 = (f64) temp_a3;
	sp20 = temp_f2;

	sp40 = (s32) (((temp_f18 / 32768.0) * temp_f0) + (((f64) (f32) sp36 / 32768.0) * temp_f2));

	sp36 = sins(temp_s0 & 0xFFFF);
	temp_v0 = coss(temp_s0 & 0xFFFF);

	if (var_s1 >= 0x8000) {
		var_s1 = 0x7FFF;
	}

	temp_f12 = (f32) ((D_80037620 - (f64) (f32) var_s1) / D_80037620);

	D_80059CD2 = (s16) (s32) ((f32) sp40 * temp_f12);

	D_80059CD4 = (s16) (s32) ((f32) (s32) ((((f64) (f32) temp_v0 / 32768.0) * temp_f0) + (-((f64) (f32) sp36 / 32768.0) * temp_f2)) * temp_f12);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000DCCC_E8CC.s")
#endif

#ifdef NON_MATCHING
/* Rotate (D_80059CD2, D_80059CD4) by angle derived from D_80059CD0, update spin rate. */
void func_8000DEFC_EAFC(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
	s16 sp1E;

	sp1E = coss((D_80059CD0 << 5) & 0xFFFF);
	D_80059CD2 = (s16) (s32) (((f64) (f32) sins((D_80059CD0 * 0x10) & 0xFFFF) / 32768.0) * (f64) (D_80059CD0 / 10) + ((f64) (f32) sp1E / 32768.0) * (f64) D_80059CD2);
	D_80059CD4 = (s16) (s32) ((f64) D_80059CD4 + (f64) (D_80059CD0 / 10) * ((f64) (f32) coss((D_80059CD0 * 0x10) & 0xFFFF) / 32768.0));
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

#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/osSetTime.s")

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
/* Constructs graphics display lists with perspective/lookat setup. Returns 0 or 1. */
s32 func_8000E53C_F13C(void) {
	s32 sp120;
	s32 sp118;
	s32 sp114;
	s32 sp110;
	s32 sp108;
	s16 sp100;
	s16 spFE;
	s16 spFC;
	f32 spA0;
	s32 sp98;
	s32 sp94;
	s32 sp90;
	s32 sp8C;
	s32 sp88;
	s32 sp84;
	s32 sp7C;
	s32 sp78;
	void *sp74;
	s32 sp70;
	s32 sp6C;
	s32 sp68;
	s32 sp64;
	s32 sp60;
	s32 sp5C;
	s32 sp58;
	Gfx *temp_v0;
	Gfx *temp_v0_2;
	Gfx *temp_v0_3;
	Gfx *temp_v0_4;
	Gfx *temp_v0_5;
	Gfx *temp_v0_6;
	Gfx *temp_v0_7;
	Gfx *temp_v0_8;
	Gfx *temp_v0_9;
	Gfx *temp_v0_10;
	Gfx *temp_v0_11;
	Gfx *temp_v0_12;
	Gfx *temp_v0_14;
	Gfx *temp_v0_15;
	Gfx *temp_v0_16;
	Gfx *temp_v0_17;
	Gfx *temp_v0_18;
	Gfx *temp_v0_19;
	Gfx *temp_v0_20;
	Gfx *temp_v0_21;
	Gfx *temp_v0_22;
	Vtx *temp_s4;
	Vtx *temp_s0;
	Vtx *temp_s1;
	Vtx *temp_s2;
	s16 temp_a0;
	s16 temp_t9;
	s16 temp_v0_13;
	s16 temp_v1;
	s16 temp_v1_2;
	s16 var_t0;
	s16 var_t5;
	s16 var_v1;
	s32 temp_t0;
	s32 temp_t1;
	s32 var_ra;
	s32 var_t3;
	s32 var_t4;
	u8 sp136[16];

	temp_v0 = D_8005BB2C;
	D_8005BB2C = temp_v0 + 1;
	sp120 = D_8005BAEC / 16;
	sp118 = -D_8005BAEC / 2;
	temp_v0->words.w0 = 0xE7000000;
	temp_v0->words.w1 = 0;
	temp_v0_2 = D_8005BB2C;
	D_8005BB2C = temp_v0_2 + 1;
	temp_v0_2->words.w1 = 0;
	temp_v0_2->words.w0 = 0xE8000000;
	temp_v0_3 = D_8005BB2C;
	D_8005BB2C = temp_v0_3 + 1;
	temp_v0_3->words.w1 = 0x23001;
	temp_v0_3->words.w0 = 0xB6000000;
	temp_v0_4 = D_8005BB2C;
	D_8005BB2C = temp_v0_4 + 1;
	temp_v0_4->words.w1 = 0x552048;
	temp_v0_4->words.w0 = 0xB900031D;
	temp_v0_5 = D_8005BB2C;
	D_8005BB2C = temp_v0_5 + 1;
	temp_v0_5->words.w1 = 0x80008000;
	temp_v0_5->words.w0 = 0xBB000001;
	temp_v0_6 = D_8005BB2C;
	D_8005BB2C = temp_v0_6 + 1;
	temp_v0_6->words.w1 = 0x80000;
	temp_v0_6->words.w0 = 0xBA001301;
	temp_v0_7 = D_8005BB2C;
	D_8005BB2C = temp_v0_7 + 1;
	temp_v0_7->words.w1 = 0;
	temp_v0_7->words.w0 = 0xBA000C02;
	guPerspective(D_8005BB38, (Mtx *) sp136, 0x41F00000, (f32) D_8005BAEC / (f32) __osCurrentTime, 10.0f, D_80037650, 1.0f);
	temp_v0_8 = D_8005BB2C;
	D_8005BB2C = temp_v0_8 + 1;
	temp_v0_8->words.w1 = (u32) sp136;
	temp_v0_8->words.w0 = 0xBC00000E;
	temp_v0_9 = D_8005BB2C;
	D_8005BB2C = temp_v0_9 + 1;
	temp_v0_9->words.w0 = 0x01030040;
	temp_v0_9->words.w1 = D_8005BB38 & 0x1FFFFFFF;
	D_8005BB38 += 0x40;
	spA0 = sinf(D_80037654);
	guLookAt(D_8005BB38, 0.0f, 0.0f, (f32) __osCurrentTime / ((spA0 / __cosf(D_80037658)) * 2.0f), 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
	temp_v0_10 = D_8005BB2C;
	D_8005BB2C = temp_v0_10 + 1;
	temp_v0_10->words.w0 = 0x01010040;
	temp_v0_10->words.w1 = D_8005BB38 & 0x1FFFFFFF;
	temp_v0_11 = D_8005BB2C;
	D_8005BB38 += 0x40;
	D_8005BB2C = temp_v0_11 + 1;
	temp_v0_11->words.w0 = 0x01020040;
	temp_v0_11->words.w1 = (s32) &D_80031120 & 0x1FFFFFFF;
	spFC = 0;
	var_t0 = 0x14 - ((s32) __osCurrentTime % 20);
	if (var_t0 == 0x14) {
		var_t0 = 0;
	}
	spFE = -var_t0;
	sp100 = 0;
	func_800039D0_45D0(&spFC, 0, 0, D_8005BB38);
	temp_v0_12 = D_8005BB2C;
	D_8005BB2C = temp_v0_12 + 1;
	temp_v0_12->words.w0 = 0x01000040;
	temp_v0_12->words.w1 = D_8005BB38 & 0x1FFFFFFF;
	D_8005BB38 += 0x40;
	sp84 = 1;
	sp60 = 0x78;
	sp58 = 0x14;
	sp74 = &D_803DA800;
	sp70 = 0;
	sp64 = 0;
	var_v1 = 0;
	do {
		sp8C = 1;
		var_ra = sp120;
		sp7C = var_v1;
		sp98 = var_ra << 6;
		sp68 = 0;
		sp6C = (sp70 * 4) & 0xFFF;
		var_t5 = 0;
		var_t4 = 0;
		sp5C = sp118;

		do {
			temp_s4 = D_8005BB34;
			temp_s0 = temp_s4 + 1;
			temp_s1 = temp_s0 + 1;
			D_8005BB34 = temp_s0;
			temp_s2 = temp_s1 + 1;
			D_8005BB34 = temp_s1;
			D_8005BB34 = temp_s2;
			D_8005BB34 = temp_s2 + 1;
			sp114 = var_t4;
			var_t3 = var_ra;
			sp108 = sp58;
			if (D_8005BAEC < var_ra) {
				var_t3 = D_8005BAEC;
			}
			if (__osCurrentTime < sp58) {
				sp108 = __osCurrentTime;
			}
			D_80059CD2 = (s16) sp5C;
			temp_v0_13 = 0x78 - sp108;
			D_80059CD4 = temp_v0_13;
			D_80059CD6 = 0;
			sp94 = temp_v0_13;
			sp110 = var_t3;
			sp90 = var_t4;
			sp88 = var_ra;
			/* Call indirect function with vtx callback */
			(*(void (*)(s16, s16, s32, s32)) D_80059CDC)(var_t5, *(s16 *) &spFE, 0, 1);
			temp_s4->v.ob[0] = (s16) D_80059CD2;
			temp_s4->v.ob[1] = (s16) D_80059CD4;
			temp_s4->v.ob[2] = (s16) D_80059CD6;
			D_80059CD6 = 0;
			D_80059CD4 = temp_v0_13;
			temp_v1 = var_t3 + sp118;
			D_80059CD2 = temp_v1;
			sp78 = temp_v1;
			(*(void (*)(s16, s16, s32, s32)) D_80059CDC)(var_t5, *(s16 *) &spFE, 1, 1);
			temp_s0->v.ob[0] = (s16) D_80059CD2;
			temp_s0->v.ob[1] = (s16) D_80059CD4;
			temp_s0->v.ob[2] = (s16) D_80059CD6;
			D_80059CD2 = (s16) sp5C;
			D_80059CD4 = (s16) sp60;
			D_80059CD6 = 0;
			(*(void (*)(s16, s16, s32, s32)) D_80059CDC)(var_t5, *(s16 *) &spFE, 0, 0);
			temp_s1->v.ob[0] = (s16) D_80059CD2;
			temp_s1->v.ob[1] = (s16) D_80059CD4;
			temp_s1->v.ob[2] = (s16) D_80059CD6;
			D_80059CD2 = (s16) sp78;
			D_80059CD4 = (s16) sp60;
			D_80059CD6 = 0;
			if (D_8005BAEC < D_80059CD2) {
				D_80059CD2 = (s16) D_8005BAEC;
			}
			sp110 = var_t3;
			sp90 = var_t4;
			sp88 = var_ra;
			(*(void (*)(s16, s16, s32, s32)) D_80059CDC)(var_t5, *(s16 *) &spFE, 1, 0);
			temp_s2->v.ob[0] = (s16) D_80059CD2;
			temp_a0 = var_t3 << 6;
			temp_s2->v.ob[1] = (s16) D_80059CD4;
			temp_s2->v.ob[2] = (s16) D_80059CD6;
			temp_s1->v.tc[0] = 0;
			temp_s4->v.tc[0] = 0;
			temp_t9 = sp108 << 6;
			temp_s0->v.tc[1] = temp_t9;
			temp_s4->v.tc[1] = temp_t9;
			temp_s0->v.tc[0] = temp_a0;
			temp_s2->v.tc[0] = temp_a0;
			temp_s2->v.tc[1] = sp64;
			temp_s1->v.tc[1] = sp64;
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
			temp_v0_14 = D_8005BB2C;
			D_8005BB2C = temp_v0_14 + 1;
			temp_v0_14->words.w0 = 0xFD10013F;
			temp_v0_14->words.w1 = (u32) sp74;
			temp_v0_15 = D_8005BB2C;
			D_8005BB2C = temp_v0_15 + 1;
			temp_v0_15->words.w0 = (((((var_t3 - var_t4) * 2) + 9) >> 3) & 0x1FF) << 9 | 0xF5100000;
			temp_v0_15->words.w1 = 0x07080200;
			temp_v0_16 = D_8005BB2C;
			D_8005BB2C = temp_v0_16 + 1;
			temp_v0_16->words.w1 = 0;
			temp_v0_16->words.w0 = 0xE6000000;
			temp_v0_17 = D_8005BB2C;
			D_8005BB2C = temp_v0_17 + 1;
			temp_v0_17->words.w0 = (((var_t4 * 4) & 0xFFF) << 0xC) | 0xF4000000 | sp6C;
			temp_t0 = (((var_t3 * 4) & 0xFFF) << 0xC);
			temp_t1 = (sp108 * 4) & 0xFFF;
			temp_v0_17->words.w1 = temp_t0 | 0x07000000 | temp_t1;
			temp_v0_18 = D_8005BB2C;
			D_8005BB2C = temp_v0_18 + 1;
			temp_v0_18->words.w0 = 0xE7000000;
			var_t5 = (s16) sp8C;
			temp_v0_18->words.w1 = 0;
			temp_v0_19 = D_8005BB2C;
			D_8005BB2C = temp_v0_19 + 1;
			temp_v0_19->words.w0 = (((((var_t3 - sp114) * 2) + 9) >> 3) & 0x1FF) << 9 | 0xF5100000;
			temp_v0_19->words.w1 = 0x80200;
			temp_v0_20 = D_8005BB2C;
			D_8005BB2C = temp_v0_20 + 1;
			temp_v0_20->words.w0 = (((sp114 * 4) & 0xFFF) << 0xC) | 0xF2000000 | sp6C;
			temp_v0_20->words.w1 = temp_t0 | temp_t1;
			temp_v0_21 = D_8005BB2C;
			D_8005BB2C = temp_v0_21 + 1;
			temp_v0_21->words.w1 = (s32) temp_s4 & 0x1FFFFFFF;
			temp_v0_21->words.w0 = 0x0400103F;
			temp_v0_22 = D_8005BB2C;
			D_8005BB2C = temp_v0_22 + 1;
			temp_v0_22->words.w1 = 0x20406;
			temp_v0_22->words.w0 = 0xB1000204;
			sp5C += sp120;
			sp8C = var_t5 + 1;
			sp68 += sp98;
			var_t4 += sp120;
			var_ra += sp120;
		} while (var_t5 != 0x10);

		var_v1 = (s16) sp84;
		sp64 += 0x500;
		sp70 += 0x14;
		sp60 -= 0x14;
		sp58 += 0x14;
		sp84 = var_v1 + 1;
	} while (var_v1 != 0xC);

	temp_v1_2 = *(s16 *) ((u8 *) D_80059CDC + 0x10);
	if (temp_v1_2 < D_80059CD0) {
		D_80059CD0 = temp_v1_2;
		D_80059CE0 = 0.0f;
		return 1;
	}
	D_80059CD0 = (s16) ((f32) D_80059CD0 + D_80059CE0);
	D_80059CD8 += 1;
	D_80059CE0 += *(f32 *) ((u8 *) D_80059CDC + 0xC);
	if (D_80059CD8 >= 0x80) {
		D_80059CD8 = 0x7F;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000E53C_F13C.s")
#endif
