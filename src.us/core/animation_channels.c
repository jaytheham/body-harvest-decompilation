#include <ultra64.h>
#include "common.h"
#include "core/loader.h"

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

void func_8000C81C_D41C(s32 *arg0, s16 *arg1, s16 *arg2, Mtx *arg3) {
	union { s32 value; s32 words[1]; } cosX;
	union { s32 value; s32 words[1]; } sinX;
	s32 cosZ;
	s32 sinZ;
	s32 cosY;
	s32 sinY;
	u32 mask;
	s32 *src;

	D_80059C90[0].unkC = 0;
	D_80059C90[0].unk1C = 0;
	D_80059C90[1].unkC = 0;
	D_80059C90[1].unk1C = 0x10000;

	if (arg0 != NULL) {
		D_80059C90[1].unk10 = arg0[0];
		D_80059C90[1].unk14 = arg0[1];
		D_80059C90[1].unk18 = arg0[2];
	} else {
		D_80059C90[1].unk10 = 0;
		D_80059C90[1].unk14 = 0;
		D_80059C90[1].unk18 = 0;
	}

	if (arg1 != NULL) {
		cosX.words[0] = coss(arg1[0]);
		sinX.words[0] = sins(arg1[0]);
		cosZ = coss(arg1[2]);
		sinZ = sins(arg1[2]);
		cosY = coss(arg1[1]);
		sinY = sins(arg1[1]);

		D_80059C90[0].unk0 = ((cosX.value * cosY) >> 0xF) * 2;
		D_80059C90[0].unk4 = ((cosX.value * sinY) >> 0xF) * 2;
		D_80059C90[0].unk8 = -sinX.value * 2;

		D_80059C90[0].unk10 = (((-cosZ * sinY) >> 0xF) + ((((sinX.value * sinZ) >> 0xF) * cosY) >> 0xF)) * 2;
		D_80059C90[0].unk14 = (((cosZ * cosY) >> 0xF) + ((((sinX.value * sinZ) >> 0xF) * sinY) >> 0xF)) * 2;
		D_80059C90[0].unk18 = ((sinZ * cosX.value) >> 0xF) * 2;

		D_80059C90[1].unk0 = (((sinZ * sinY) >> 0xF) + ((((sinX.value * cosZ) >> 0xF) * cosY) >> 0xF)) * 2;
		D_80059C90[1].unk4 = (((-sinZ * cosY) >> 0xF) + ((((sinX.value * cosZ) >> 0xF) * sinY) >> 0xF)) * 2;
		D_80059C90[1].unk8 = ((cosX.value * cosZ) >> 0xF) * 2;
	} else {
		D_80059C90[0].unk0 = 0x10000;
		D_80059C90[0].unk10 = 0;
		D_80059C90[1].unk0 = 0;
		D_80059C90[0].unk4 = 0;
		D_80059C90[0].unk14 = 0x10000;
		D_80059C90[1].unk4 = 0;
		D_80059C90[0].unk8 = 0;
		D_80059C90[0].unk18 = 0;
		D_80059C90[1].unk8 = 0x10000;
	}

	if (arg2 != NULL) {
		D_80059C90[0].unk0 *= arg2[0];
		D_80059C90[0].unk4 *= arg2[0];
		D_80059C90[0].unk8 *= arg2[0];
		D_80059C90[0].unk0 >>= 8;
		D_80059C90[0].unk4 >>= 8;
		D_80059C90[0].unk8 >>= 8;
		D_80059C90[0].unk10 *= arg2[1];
		D_80059C90[0].unk14 *= arg2[1];
		D_80059C90[0].unk18 *= arg2[1];
		D_80059C90[0].unk10 >>= 8;
		D_80059C90[0].unk14 >>= 8;
		D_80059C90[0].unk18 >>= 8;
		D_80059C90[1].unk0 *= arg2[2];
		D_80059C90[1].unk4 *= arg2[2];
		D_80059C90[1].unk8 *= arg2[2];
		D_80059C90[1].unk0 >>= 8;
		D_80059C90[1].unk4 >>= 8;
		D_80059C90[1].unk8 >>= 8;
	}
	mask = 0xFFFF0000; arg0 = arg3->m[0]; src = D_80059C90_words; do { arg0[0] = (src[0] & mask) + ((src[1] & mask) >> 16);
		arg0 = &arg0[4];
		arg0[4] = (src[0] << 8 << 8) + (src[1] & 0xFFFFU);
		arg0[-3] = (src[2] & mask) + ((src[3] & mask) >> 16);
		arg0[5] = (src[2] << 8 << 8) + (src[3] & 0xFFFFU);
		arg0[-2] = (src[4] & mask) + ((src[5] & mask) >> 16);
		arg0[6] = (src[4] << 8 << 8) + (src[5] & 0xFFFFU);
		arg0[-1] = (src[6] & mask) + ((src[7] & mask) >> 16);
		arg0[7] = (src[6] << 8 << 8) + (src[7] & 0xFFFFU);
		src = &src[8];
	} while ((void *)src != &D_80059CD0);
}

void func_8000CC3C_D83C(AnimChannelState *arg0, s32 arg1)
{
	u8 var_s0;
	s16 sp48[3];
	s32 sp3C[3];
	Mtx *val;

	for (var_s0 = 1; arg1 != var_s0; var_s0++)
	{
		sp3C[0] = (arg0 + var_s0)->unk8 * 65536.0f;
		sp3C[1] = (arg0 + var_s0)->unkC * 65536.0f;
		sp3C[2] = (arg0 + var_s0)->unk10 * 65536.0f;
		sp48[0] = (arg0 + var_s0)->unk2 * 8;
		sp48[1] = (arg0 + var_s0)->unk4 * 8;
		sp48[2] = (arg0 + var_s0)->unk0 * 8;
		val = D_8005BB38;
		D_8005BB38 += 1;
		func_8000C81C_D41C(sp3C, sp48, 0, val);
	}
}

void func_8000CD54_D954(Unk8007F878_404 *arg0, AnimChannelState *arg1, u8 arg2) {
	typedef struct { s16 a; s16 b; s16 c; s16 d; s16 e; s16 f; } AnimFrame12;
	s32 temp_v0;

	if (arg1->unk14 > (temp_v0 = arg1->unk18)) {
		s32 start_frame = *(u16 *)((s32)arg0 + arg2 * 4 + 0xC);

		start_frame += temp_v0;
		*(AnimFrameData14 *)&arg1->unk24 = *(AnimFrameData14 *)((s32)arg0 + (start_frame & 0xFFFF) * 0xE + 0x50);
		arg1->unk1C = 0.0f;
		arg1->unk20 = (f32)(u32)arg1->unk30;
	}
}

s32 func_8000CDFC_D9FC(Unk8007F878_404 *arg0, AnimChannelState *arg1, s32 arg2, s32 arg3, s32 arg4)
{
	AnimChannelState *ch;
	s32 s1;
	arg0->unkE50 = arg3;
	func_800101F0_10DF0(((s32)arg0) + 8, (s32)(D_8F4960 + (arg3 & 0xFFFFFF)), 0x48);
	func_800101F0_10DF0(((s32)arg0) + 0x50, ((s32)(D_8F4960 + (arg3 & 0xFFFFFF))) + 0x48, arg0->unk8 * 0xE);
	s1 = 0;
	if (arg2 != 0)
	{
		do
		{
			ch = &arg1[s1];
			ch->unk18 = 0;
			ch->unk14 = *((u16 *)((((s32)arg0) + (s1 * 4)) + 0xE));
			func_8000CD54_D954(arg0, ch, s1 ^ 0);
			if (arg4 != 0)
			{
				ch->unk0 = ch->unk2A;
				ch->unk2 = ch->unk2C;
				ch->unk4 = ch->unk2E;
				ch->unk8 = ch->unk24;
				ch->unkC = ch->unk26;
				ch->unk10 = ch->unk28;
				ch->unk18 = ch->unk18 + 1;
				func_8000CD54_D954(arg0, ch, s1);
			}
			s1 = (s1 + 1) & 0xFF;
		} while (arg2 != s1);
	}
	return arg3;
}

void func_8000CF4C_DB4C(Unk8007F878_404 *arg0, AnimChannelState *arg1, s32 arg2, f32 arg3)
{
	f32 z, x, y;
	f32 elapsed, duration;
	f32 targetRotation[3];
	f32 rotation[3];
	f32 fraction;
	f32 scale;
	f64 units, degrees;
	u8 i;
	AnimChannelState *channel;

	i = 0;
	if (arg2 != 0)
	{
		scale = 4096.0f;
		units = 4096.0;
		if (scale)
		{
		}
		if (units)
		{
		}
		degrees = 180.0;
		do
		{
			channel = &arg1[i];
			if (channel->unk14 != 0)
			{
				elapsed = channel->unk1C;
				duration = channel->unk20;
				fraction = arg3 / (duration - elapsed);
				y = fraction;
				x = fraction;
				targetRotation[0] = ((f32)channel->unk2A * degrees) / units;
				targetRotation[1] = ((f32)channel->unk2C * degrees) / units;
				targetRotation[2] = ((f32)channel->unk2E * degrees) / units;
				rotation[0] = ((f32)channel->unk0 * degrees) / units;
				rotation[1] = ((f32)channel->unk2 * degrees) / units;
				rotation[2] = ((f32)channel->unk4 * degrees) / units;
				rotation[0] = rotation[0] + ((targetRotation[0] - rotation[0]) * y);
				rotation[1] = rotation[1] + ((targetRotation[1] - rotation[1]) * y);
				rotation[2] = rotation[2] + ((targetRotation[2] - rotation[2]) * x);
				x = channel->unk8;
				y = channel->unkC;
				z = channel->unk10;
				channel->unk0 = (rotation[0] * scale) / degrees;
				channel->unk2 = (rotation[1] * scale) / degrees;
				channel->unk4 = (rotation[2] * scale) / degrees;
				channel->unk8 = (((f32)channel->unk24 - x) * fraction) + x;
				channel->unkC = (((f32)channel->unk26 - y) * fraction) + y;
				x = channel->unk28;
				channel->unk10 = ((x - z) * fraction) + z;
				channel->unk1C += arg3;
				if (channel->unk20 <= channel->unk1C)
				{
					channel->unk8 = channel->unk24;
					channel->unkC = ((volatile AnimChannelState *)channel)->unk26;
					channel->unk10 = x;
					channel->unk0 = channel->unk2A;
					channel->unk2 = channel->unk2C;
					channel->unk4 = channel->unk2E;
					channel->unk18++;
					if (channel->unk14 == channel->unk18)
					{
						channel->unk14 = 0;
						channel->unk18 = 0;
						if (i == 0)
						{
							arg0->unkE50 = 0;
						}
					}
					else
					{
						func_8000CD54_D954(arg0, channel, i);
					}
				}
			}
			i++;
		} while (arg2 != i);
	}
}

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

void func_8000D588_E188(Unk8007F878_404 *arg0, Unk8007F878_404 *arg1, AnimChannelState *arg2, u8 arg3, f32 arg4)
{
	u16 frame0;
	u16 frame1;
	AnimFrameData14 sp44;
	AnimFrameData14 sp34;
	AnimFrameData14 sp24;

	frame0 = arg0->channels[arg3].frameOffset;
	frame0 += arg2->unk18;
	sp44 = arg0->frames[frame0];
	frame1 = arg1->channels[arg3].frameOffset;
	frame1 += arg2->unk18;
	sp34 = arg1->frames[frame1];

	func_8000D384_DF84((AnimFrameData *)&sp44, (AnimFrameData *)&sp34, arg4, (AnimFrameData *)&sp24);

	arg2->frame = sp24;
	arg2->unk1C = 0.0f;

	arg2->unk20 = (u32)sp24.g;

	arg2->unk32 = arg2->unk0;
	arg2->unk34 = arg2->unk2;
	arg2->unk36 = arg2->unk4;
	arg2->unk38 = arg2->unk8;
	arg2->unk3A = arg2->unkC;
	arg2->unk3C = arg2->unk10;
}

s32 func_8000D71C_E31C(Unk8007F878_404 *arg0, Unk8007F878_404 *arg1, AnimChannelState *arg2, s32 arg3, s32 arg4, s32 arg5, f32 arg6, s32 arg7)
{
	s32 var_s1;
	u8(*new_var2)[];
	s32 base;
	AnimChannelState *ch;
	int new_var;
	arg0->unkE50 = arg4;
	base = (arg4 & 0xFFFFFF) + ((s32)(&D_8F4960));
	func_800101F0_10DF0(((s32)arg0) + 8, base, 0x48);
	new_var2 = &D_8F4960;
	func_800101F0_10DF0(((s32)arg0) + 0x50, base + 0x48, arg0->unk8 * 0xE);
	arg1->unkE50 = arg5;
	base = (arg5 & 0xFFFFFF) + ((s32)new_var2);
	func_800101F0_10DF0(((s32)arg1) + 8, base, 0x48);
	func_800101F0_10DF0(((s32)arg1) + 0x50, base + 0x48, arg1->unk8 * 0xE);
	var_s1 = 0;
	if (arg3 != 0)
	{
		do
		{
			ch = &arg2[var_s1];
			ch->unk18 = 0;
			new_var = var_s1 ^ 0;
			ch->unk14 = *((u16 *)((((s32)arg0) + (var_s1 * 4)) + 0xE));
			func_8000D588_E188(arg0, arg1, ch, new_var, arg6);
			if (arg7 != 0)
			{
				ch->unk0 = ch->unk2A;
				ch->unk2 = ch->unk2C;
				ch->unk4 = ch->unk2E;
				ch->unk8 = (f32)ch->unk24;
				ch->unkC = (f32)ch->unk26;
				ch->unk10 = (f32)ch->unk28;
				ch->unk18 = ch->unk18 + 1;

				func_8000D588_E188(arg0, arg1, ch, var_s1, arg6);
			}
			var_s1 = (var_s1 + 1) & 0xFF;
		} while (arg3 != var_s1);
	}
	return arg4;
}

void func_8000D8DC_E4DC(Unk8007F878_404 *arg0, Unk8007F878_404 *arg1, AnimChannelState *arg2, s32 arg3, f32 arg4, f32 arg5) {
	s32 var_s0;
	AnimChannelState *ch;
	f32 duration;
	f32 elapsed;
	f32 t;

	var_s0 = 0;
	if (arg3 != 0) {
		do {
			ch = &arg2[var_s0];
			if (ch->unk14 != 0) {
				elapsed = ch->unk1C;
				duration = ch->unk20;
				t = arg5 / (duration - elapsed);

				ch->unk0 = (s16)(s32)(((f32)(ch->unk2A - ch->unk0)) * t + (f32)ch->unk0);
				ch->unk2 = (s16)(s32)(((f32)(ch->unk2C - ch->unk2)) * t + (f32)ch->unk2);
				ch->unk4 = (s16)(s32)(((f32)(ch->unk2E - ch->unk4)) * t + (f32)ch->unk4);
				ch->unk8 = ((f32)ch->unk24 - ch->unk8) * t + ch->unk8;
				ch->unkC = ((f32)ch->unk26 - ch->unkC) * t + ch->unkC;
				ch->unk10 = ((f32)ch->unk28 - ch->unk10) * t + ch->unk10;
				ch->unk1C += arg5;

				if (ch->unk20 <= ch->unk1C) {
					ch->unk8 = (f32)ch->unk24;
					ch->unkC = (f32)ch->unk26;
					ch->unk10 = (f32)ch->unk28;
					ch->unk0 = (s16)ch->unk2A;
					ch->unk2 = (s16)ch->unk2C;
					ch->unk4 = (s16)ch->unk2E;
					ch->unk18 = ch->unk18 + 1;
					if (ch->unk14 == ch->unk18) {
						ch->unk14 = 0;
						ch->unk18 = 0;
						if (var_s0 == 0) {
							arg1->unkE50 = 0;
							arg0->unkE50 = 0;
						}
					} else {
						func_8000D588_E188(arg0, arg1, ch, (u8)var_s0, arg4);
					}
				}
			}
			var_s0++;
			var_s0 &= 0xFF;
		} while (arg3 != var_s0);
	}
}

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
