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

#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000E53C_F13C.s")
