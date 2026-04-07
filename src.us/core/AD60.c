#include <ultra64.h>
#include "common.h"


void func_8000A160_AD60(void) {
	D_80053C98 = 0;
	guOrtho(&D_80052B60, 0.0f, 320.0f, 240.0f, 0.0f, 0.0f, 1000.0f, 1.0f);
	guLookAt(&D_80052BA0, (f32)D_80053C84, (f32)D_80053C86, 1.0f, (f32)D_80053C84, (f32)D_80053C86, 0.0f, 0.0f, 1.0f, 0.0f);
	D_80053C88 = 0;
	D_80053BF0 = 0;
	D_80053BF2 = 0xFF;
	D_80053BF4 = 0;
	D_80053BF6 = 0;
	D_80053BF8 = 0;
	D_80053BFA = 0;
	D_80053BFC = 0;
	D_80053BFE = 0;
	D_80053BE2 = 0;
	D_80053BE4 = 0;
	D_80053BE8 = 1.0f;
	D_80053BEC = 1.0f;
	D_80053C84 = 0;
	D_80053C86 = 0;
	D_80053C94 = 0x1E;
	D_80053C96 = 0x122;
	func_8000AFDC_BBDC();
}

#ifdef NON_MATCHING
s32 func_8000A2B8_AEB8(u8 *arg0, s16 arg1) {
	u8 *ptr;
	s32 result;
	u8 ch;

	ptr = arg0 + arg1;
	result = 0;

	if (*ptr != 0xA && *ptr != 0) {
		ch = *ptr;
		do {
			if (ch >= 0x20) {
				if (ch < 0xFD) {
					if (result != 0 || ch != 0x20) {
						if (ch >= 0xC1) {
							result += D_80031720_32320[D_80031650_32250[ch - 0xC0] * 2 + 0x221];
						} else {
							result += D_80031720_32320[ch * 2 + 0x261];
						}
					}
				} else {
					result += D_80031720_32320[(((ch & 0x7F) << 8) + *(ptr + 1)) * 2 + 1];
					ptr++;
				}
			} else {
				switch (ch) {
				case 0x16:
					ptr += 1; break;
				case 0x14:
				case 0x17:
				case 0x19:
					ptr += 2; break;
				case 0x15:
					ptr += 3; break;
				case 0x18:
					ptr += 4; break;
				}
			}
			ch = *(ptr + 1);
			ptr++;
			if (ch == 0xA) break;
		} while (ch != 0);
	}

	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000A2B8_AEB8.s")
#endif

#ifdef NON_MATCHING
void func_8000A3DC_AFDC(u8 arg0, s8 *arg1) {
	s16 temp_v1;
	s32 temp_a3;
	s32 temp_t0;
	s8 var_a2;
	u8 var_v0;

	temp_v1 = arg0 * 2;
	temp_a3 = temp_v1 >> 8;
	temp_t0 = temp_v1 & 0xFF;
	var_v0 = temp_v1 & 0xFF;
	var_a2 = (s8)temp_a3;
	if (temp_t0 >= 0) {
		var_v0 = (temp_t0 + 1) & 0xFF;
	}
	if ((s8)temp_a3 >= 0) {
		var_a2 = (s8)temp_a3 + 1;
	}
	*arg1 = var_a2;
	arg1++;
	*(u8 *)arg1 = var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000A3DC_AFDC.s")
#endif

#ifdef NON_MATCHING
s16 func_8000A43C_B03C(s8 *arg0) {
	s8 var_v1;
	u8 temp_v0;
	s32 var_a0;

	var_v1 = *arg0;
	arg0++;
	temp_v0 = *(u8 *)arg0;
	if (var_v1 > 0) {
		var_v1 -= 1;
	}
	var_a0 = temp_v0;
	if (temp_v0 > 0) {
		temp_v0--;
		var_a0 = temp_v0 & 0xFF;
	}
	return (s16)((s16)((s16)(var_v1 << 8) + var_a0) / 2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000A43C_B03C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/drawText.s")

// https://decomp.me/scratch/krtPZ
#ifdef NON_MATCHING
void func_8000AFDC_BBDC(void) {
	s8 *var_a0;
	s32 var_v1;

	D_80053BE2 = 0;
	D_80053BE4 = 0;
	D_80053BE0 = 0;
	D_80053C80 = 0;
	D_80053C82 = 0;
	D_80053C90 = 0x28;
	D_80053C92 = 0x18;
	var_a0 = &D_80053BDF;
	var_v1 = 0xFFF;
	do {
		*var_a0 = 0;
		var_a0 -= 1;
	} while (var_v1--);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000AFDC_BBDC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000B044_BC44.s")

s32 func_8000C670_D270(s16 arg0) {
	s32 temp;
	temp = (D_80052AD8 - D_80053C8C) - (arg0 * 4) + 8;
	if (temp >= 0x10) {
		return 1;
	}
	return 0;
}

void func_8000C6B8_D2B8(s32 arg0) {
	D_80053C98 = arg0;
}

s32 func_8000C6C4_D2C4(void) {
	return D_80053C98;
}

/* busy-wait loop: counts 0..0x10 with 8-bit masking */
void func_8000C6D0_D2D0(s32 arg0) {
	s32 var_v0 = 0;
	s32 temp_t6;

	do {
		do {
			temp_t6 = (var_v0 = (var_v0 + 1) & 0xFF) ^ 0;
		} while (temp_t6 != 0x10);
	} while (0);
}

void *func_8000C6F4_D2F4(void)
{
	s32 i;
	void *ptr;
	for (i = 0; (i ^ 0) != 6; i = (i + 1) & 0xFF)
	{
		if (D_80054668[i] == 0)
		{
			ptr = (void *) (((char *) (&D_80054680)) + (i * 0xE58));
			D_80054668[i] = ptr;
			return ptr;
		}
	}
}

void func_8000C764_D364(s32 arg0) {
	D_80054668[(arg0 - (s32)&D_80054680) / 0xE58] = 0;
}

void func_8000C790_D390(Unk80157600 *arg0, s16 *arg1, s32 arg2) {
	s32 var_v0;
	Unk80157600 *elem;

	arg0->unk0 = 0;
	arg0->unk2 = 0;
	arg0->unk4 = 0;
	var_v0 = 1;
	arg0->unk8 = 0.0f;
	arg0->unkC = 0.0f;
	arg0->unk10 = 0.0f;
	if (arg2 != 1) {
		do {
			elem = (Unk80157600 *)((var_v0 << 6) + (s32)arg0);
			elem->unk8 = (f32)arg1[0];
			elem->unkC = (f32)arg1[1];
			elem->unk10 = (f32)arg1[2];
			elem->unk0 = 0;
			elem->unk2 = 0;
			elem->unk4 = 0;
			var_v0 = (var_v0 + 1) & 0xFF;
			arg1 += 8;
		} while (arg2 != var_v0);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000C81C_D41C.s")

// https://decomp.me/scratch/ePgS2
#ifdef NON_MATCHING
void func_8000CC3C_D83C(AnimChannelState *arg0, s32 arg1)
{
  u8 var_s0;
  s16 sp48[3];
  s32 sp3C[3];
  s32 val;
  for (var_s0 = 1; arg1 != var_s0; var_s0++)
	{
	  sp3C[0] = arg0[var_s0].unk8 * 65536.0f;
	  sp3C[1] = arg0[var_s0].unkC * 65536.0f;
	  sp3C[2] = arg0[var_s0].unk10 * 65536.0f;
	  sp48[0] = arg0[var_s0].unk2 * 8;
	  sp48[1] = arg0[var_s0].unk4 * 8;
	  sp48[2] = arg0[var_s0].unk0 * 8;
		val = D_8005BB38;
		D_8005BB38 = val + 0x40;
	  func_8000C81C_D41C(sp3C, sp48, 0, val);
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000CC3C_D83C.s")
#endif

#ifdef NON_MATCHING
void func_8000CD54_D954(void *arg0, AnimChannelState *arg1, u8 arg2) {
	typedef struct { s16 a; s16 b; s16 c; s16 d; s16 e; s16 f; } AnimFrame12;
	s32 temp_v0;
	u16 temp_at;
	s32 base;

	temp_v0 = arg1->unk18;
	if (arg1->unk14 > temp_v0) {
		{
			u16 start_frame = *(u16 *)((s32)arg0 + arg2 * 4 + 0xC);
			base = (s32)arg0 + (((start_frame + temp_v0) & 0xFFFF) * 0xE);
		}
		*(AnimFrame12 *)&arg1->unk24 = *(AnimFrame12 *)((char *)base + 0x50);
		temp_at = *(u16 *)((char *)base + 0x5C);
		arg1->unk1C = 0.0f;
		arg1->unk30 = temp_at;
		arg1->unk20 = (f32)(u32)(temp_at & 0xFFFF);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000CD54_D954.s")
#endif

#ifdef NON_MATCHING
s32 func_8000CDFC_D9FC(Unk8007F878_404 *arg0, AnimChannelState *arg1, s32 arg2, s32 arg3, s32 arg4)
{
  AnimChannelState *ch;
  s32 s1;
  arg0->unkE50 = arg3;
  func_800101F0_10DF0(((s32) arg0) + 8, (s32) (D_8F4960 + (arg3 & 0xFFFFFF)), 0x48);
  func_800101F0_10DF0(((s32) arg0) + 0x50, ((s32) (D_8F4960 + (arg3 & 0xFFFFFF))) + 0x48, arg0->unk8 * 0xE);
  s1 = 0;
  if (arg2 != 0)
  {
	do
	{
	  ch = &arg1[s1];
	  ch->unk18 = 0;
	  ch->unk14 = *((u16 *) ((((s32) arg0) + (s1 * 4)) + 0xE));
	  func_8000CD54_D954(arg0, ch, s1 ^ 0);
	  if (arg4 != 0)
	  {
		ch->unk8 = (f32) ch->unk24;
		ch->unk18 = ch->unk18 + 1;
		ch->unkC = (f32) ch->unk26;
		ch->unk0 = ch->unk2A;
		ch->unk2 = ch->unk2C;
		ch->unk4 = ch->unk2E;
		ch->unk10 = (f32) ch->unk28;
		func_8000CD54_D954(arg0, ch, s1);
	  }
	  s1 = (s1 + 1) & 0xFF;
	}
	while (arg2 != s1);
  }
  return arg3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000CDFC_D9FC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000CF4C_DB4C.s")

void func_8000D26C_DE6C(Unk8007F878_404 *arg0, void *arg1) {
	arg0->unkE50 = 0;
}

void func_8000D278_DE78(Unk8007F878_404 *arg0, AnimChannelState *arg1, s32 arg2, s32 arg3)
{
	int new_var;
	s32 var_s1;
	s32 var_s3;
	AnimChannelState *temp_s0;
	var_s3 = 0;
	if (arg2 != 0)
	{
		do
		{
			var_s1 = arg3;
			new_var = 0;
			if (arg3 != 0)
			{
				temp_s0 = &arg1[var_s3];
				if (arg0->unkE50 != 0)
				{
					loop_3:
					if (((f32) var_s1) < temp_s0->unk20)
					{
						temp_s0->unk20 = temp_s0->unk20 - ((f32) var_s1);
						var_s1 = 0;
					}
					else
					{
						var_s1 = (s32) (((f32) var_s1) - temp_s0->unk20);
						temp_s0->unk18 = temp_s0->unk18 + 1;
						if (temp_s0->unk18 == ((0, temp_s0))->unk14)
						{
							arg0->unkE50 = 0;
						}
						else
						{
							func_8000CD54_D954(arg0, temp_s0, var_s3);
						}
					}

					if ((var_s1 != new_var) && (arg0->unkE50 != 0))
					{
						goto loop_3;
					}
				}
			}
			var_s3 = (var_s3 + 1) & 0xFF;
		}
		while (arg2 != var_s3);
	}
}

void func_8000D384_DF84(AnimFrameData *arg0, AnimFrameData *arg1, f32 arg2, AnimFrameData *arg3) {
	s16 tmp;

	tmp = ((AnimFrameData14 *)arg0)->d;
	((AnimFrameData14 *)arg3)->d = (s16)(s32)((f32)tmp + (f32)(((AnimFrameData14 *)arg1)->d - tmp) * arg2);
	((AnimFrameData14 *)arg3)->e = (s16)(s32)((f32)((AnimFrameData14 *)arg0)->e + (f32)(((AnimFrameData14 *)arg1)->e - ((AnimFrameData14 *)arg0)->e) * arg2);
	((AnimFrameData14 *)arg3)->f = (s16)(s32)((f32)((AnimFrameData14 *)arg0)->f + (f32)(((AnimFrameData14 *)arg1)->f - ((AnimFrameData14 *)arg0)->f) * arg2);
	((AnimFrameData14 *)arg3)->a = (s16)(s32)((f32)((AnimFrameData14 *)arg0)->a + (f32)(((AnimFrameData14 *)arg1)->a - ((AnimFrameData14 *)arg0)->a) * arg2);
	((AnimFrameData14 *)arg3)->b = (s16)(s32)((f32)((AnimFrameData14 *)arg0)->b + (f32)(((AnimFrameData14 *)arg1)->b - ((AnimFrameData14 *)arg0)->b) * arg2);
	((AnimFrameData14 *)arg3)->c = (s16)(s32)((f32)((AnimFrameData14 *)arg0)->c + (f32)(((AnimFrameData14 *)arg1)->c - ((AnimFrameData14 *)arg0)->c) * arg2);
	((AnimFrameData14 *)arg3)->g = (u16)((f32)(u32)((AnimFrameData14 *)arg0)->g + (f32)(((AnimFrameData14 *)arg1)->g - ((AnimFrameData14 *)arg0)->g) * arg2);
}

#ifdef NON_MATCHING
void func_8000D588_E188(Unk8007F878_404 *arg0, Unk8007F878_404 *arg1, AnimChannelState *arg2, u8 arg3, f32 arg4) {
	typedef struct { s16 a; s16 b; s16 c; s16 d; s16 e; s16 f; } AnimFrame12;
	s32 base;
	AnimFrameData sp44;
	AnimFrameData sp34;
	AnimFrameData sp24;

	base = (s32)arg0 + (((*(u16 *)((s32)arg0 + arg3 * 4 + 0xC) + arg2->unk18) & 0xFFFF) * 0xE);
	*(AnimFrame12 *)&sp44 = *(AnimFrame12 *)((char *)base + 0x50);
	sp44.unkC = *(u16 *)((char *)base + 0x5C);

	base = (s32)arg1 + (((*(u16 *)((s32)arg1 + arg3 * 4 + 0xC) + arg2->unk18) & 0xFFFF) * 0xE);
	*(AnimFrame12 *)&sp34 = *(AnimFrame12 *)((char *)base + 0x50);
	sp34.unkC = *(u16 *)((char *)base + 0x5C);

	func_8000D384_DF84(&sp44, &sp34, *(s32 *)&arg4, &sp24);

	*(AnimFrame12 *)&arg2->unk24 = *(AnimFrame12 *)&sp24;
	arg2->unk1C = 0.0f;
	arg2->unk30 = sp24.unkC;

	arg2->unk20 = (f32)(u32)sp24.unkC;

	arg2->unk32 = arg2->unk0;
	arg2->unk34 = arg2->unk2;
	arg2->unk36 = arg2->unk4;
	arg2->unk38 = (s16)arg2->unk8;
	arg2->unk3A = (s16)arg2->unkC;
	arg2->unk3C = (s16)arg2->unk10;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000D588_E188.s")
#endif

#ifdef NON_MATCHING
s32 func_8000D71C_E31C(Unk8007F878_404 *arg0, Unk8007F878_404 *arg1, AnimChannelState *arg2, s32 arg3, s32 arg4, s32 arg5, f32 arg6, s32 arg7) {
	AnimChannelState *ch;
	s32 var_s1;

	arg0->unkE50 = arg4;
	func_800101F0_10DF0(((s32)arg0) + 8, (s32)(void *)((arg4 & 0xFFFFFF) + (s32)&D_8F4960), 0x48);
	func_800101F0_10DF0(((s32)arg0) + 0x50, (s32)(void *)((arg4 & 0xFFFFFF) + (s32)&D_8F4960 + 0x48), arg0->unk8 * 0xE);

	arg1->unkE50 = arg5;
	func_800101F0_10DF0(((s32)arg1) + 8, (s32)(void *)((arg5 & 0xFFFFFF) + (s32)&D_8F4960), 0x48);
	func_800101F0_10DF0(((s32)arg1) + 0x50, (s32)(void *)((arg5 & 0xFFFFFF) + (s32)&D_8F4960 + 0x48), arg1->unk8 * 0xE);

	var_s1 = 0;
	if (arg3 != 0) {
		do {
			ch = &arg2[var_s1];
			ch->unk18 = 0;
			ch->unk14 = *((u16 *)(((s32)arg0) + (var_s1 * 4) + 0xE));
			func_8000D588_E188(arg0, arg1, ch, var_s1, arg6);
			if (arg7 != 0) {
				ch->unk8 = (f32)ch->unk24;
				ch->unk18 = ch->unk18 + 1;
				ch->unk0 = ch->unk2A;
				ch->unkC = (f32)ch->unk26;
				ch->unk2 = ch->unk2C;
				ch->unk4 = ch->unk2E;
				ch->unk10 = (f32)ch->unk28;
				func_8000D588_E188(arg0, arg1, ch, var_s1, arg6);
			}
			var_s1 = (var_s1 + 1) & 0xFF;
		} while (arg3 != var_s1);
	}
	return arg4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000D71C_E31C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000D8DC_E4DC.s")

void func_8000DAFC_E6FC(Unk8007F878_404 *arg0, Unk8007F878_404 *arg1, AnimChannelState *arg2, s32 arg3, s32 arg4, f32 arg5)
{
	s32 var_s1;
	s32 var_s4;
	AnimChannelState *temp_s0;
	var_s4 = 0;
	if (arg3 != 0)
	{
		do
		{
			var_s1 = arg4;
			if (arg4 != 0)
			{
				temp_s0 = arg2 + var_s4;
				if (arg0->unkE50 != 0)
				{
					loop_4:
					if (((f32) var_s1) < temp_s0->unk20)
					{
						temp_s0->unk20 = temp_s0->unk20 - ((f32) var_s1);
						var_s1 = 0;
					}
					else
					{
						var_s1 = (s32) (((f32) var_s1) - temp_s0->unk20), temp_s0->unk18 = temp_s0->unk18 + 1;
						if (temp_s0->unk14 == temp_s0->unk18)
						{
							arg1->unkE50 = 0;
							arg0->unkE50 = 0;
						}
						else
						{
							func_8000D588_E188(arg0, arg1, temp_s0, var_s4, arg5);
						}
					}

					if ((var_s1 != 0) && (arg0->unkE50 != 0))
					{
						goto loop_4;
					}
				}
			}
			var_s4 = (var_s4 + 1) & 0xFF;
		}
		while (arg3 != var_s4);
	}
}
