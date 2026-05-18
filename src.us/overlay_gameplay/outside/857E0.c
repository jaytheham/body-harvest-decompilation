#include <ultra64.h>
#include "common.h"

s32 D_8013BB10_14AAC0 = 0;

s16 D_8013BB14_14AAC4[46] = {
    0x0902, (s16)0xEBD0, 0x0064, 0x0005, 0x0001, 0x0000,
    0x0902, (s16)0xF3D0, 0x0032, 0x0006, 0x0001, 0x0001,
    0x0A00, 0x2290,      0x0064, 0x0002, 0x0001, 0x0000,
    0x0A00, 0x2A90,      0x002D, 0x0002, 0x0001, 0x0000,
    0x0B03, 0x2790,      0x0064, 0x0005, 0x0001, 0x0000,
    0x0B03, 0x1F90,      0x0032, 0x0006, 0x0001, 0x0000,
    0x0C01, (s16)0xE570, 0x0064, 0x0005, 0x0001, 0x0000,
    0x0C01, (s16)0xED70, 0x0064, 0x0005
};

s32 func_80076830_857E0(void) {
	s32 index;
	u8* ptr;
	u8 value;

	index = D_8014D2E8;
	ptr = &D_8014D200[index];
	if (index == 0x96) {
		return -1;
	}

	value = *ptr;
	D_8014D2E8 = index + 1;
	return value;
}

void func_80076868_85818(s32 arg0) {
	s32 i;
	s32* ptr_count;
	s8 neg_one;

	for (i = 0; i < D_8014D2EC; i++) {
		if (arg0 == *(u16*)D_8014D298[i]) {
			func_800769A8_85958(i);
		}
	}

	neg_one = -1;
	D_80259D92[arg0][0] = neg_one;
	ptr_count = &D_8014D2E8;
	*ptr_count = *ptr_count - 1;
	D_8014D200[*ptr_count] = (u8)arg0;
}

s32 func_80076918_858C8(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
	s32 index;
	Unk_8014D298 *entry;
	index = D_8014D2EC;
	if (index == 8)
	{
		func_800769A8_85958(0);
		index = D_8014D2EC;
	}
	index = D_8014D2EC;
	entry = (Unk_8014D298 *) D_8014D298[index];
	entry->unk2 = 0;
	entry->unk0 = (s16) arg0;
	entry->unk8 = (s16) arg3;
	entry->unk4 = (s16) arg1;
	entry->unk6 = (s16) arg2;
	D_8014D2EC = index + 1;
	return index;
}

void func_800769A8_85958(s32 arg0) {
	s32 temp_t7;
	*((Unk_8014D298 *) D_8014D298[arg0]) = *((Unk_8014D298 *) D_8014D298[D_8014D2EC = D_8014D2EC - 1]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80076A10_859C0.s")

void func_80076FCC_85F7C(s32 arg0, s32 arg1) {
	s32 i;
	s32 s3;
	s32 s4;
	s8 neg_one;

	D_8014D2E8 = 0;
	D_8014D2EC = 0;
	neg_one = -1;
	for (i = 0; i < 0x96; i++) {
		D_8014D200[i] = i;
		D_80259D90[i].unk2 = neg_one;
	}
	s3 = ((arg0 - 0x880) >> 8) >> 2;
	D_8014D2F0 = s3;
	s4 = ((arg1 - 0x880) >> 8) >> 2;
	D_8014D2F4 = s4;
	for (i = 0; i < 0x19; i++) {
		func_80076A10_859C0((s16) i, (s16) (D_801416D0_150680[i] + s3), (s16) (D_80141734_1506E4[i] + s4));
	}
}

// fell tree
#ifdef NON_MATCHING
// CURRENT(3072)
void func_800770D8_86088(s32 arg0) {
	Unk_8014D298* entry;
	s32 temp_s1;
	u16 treeIndex;
	u32 sp8C;
	u32 sp88;
	s16 temp_t7;
	f32 temp_f0;
	f32 temp_f14;

	entry = (Unk_8014D298*)D_8014D298[arg0];
	temp_s1 = (entry->unk2 * 6) & 0xFFFF;
	if (temp_s1 < entry->unk6) {
		Mtx* mtx;
		s32 sp24;
		s16 sinVal;

		sp24 = temp_s1;
		treeIndex = entry->unk0;
		sp8C = *(u32*)((u8*)&D_80259D90[treeIndex] + 0x28);
		sp88 = *(u32*)((u8*)&D_80259D90[treeIndex] + 0x2C);

		sinVal = sins(entry->unk4);
		mtx = (Mtx*)((u8*)&D_80259D90[treeIndex] + 0x10);
		guRotate(mtx, (f32)(u32)sp24, (f32)((f64)(f32)sinVal / 32768.0), 0.0f, (f32)-((f64)(f32)coss(entry->unk4) / 32768.0));

		temp_t7 = (s16)(sp88 >> 0x10);
		temp_f0 = (f32)((s32)((((s32)((s32)((((s16)(sp8C >> 0x10) * temp_t7 * 0x41C64E6D) + 0x3039) >> 0x10) % 0x40)) + 0xE0) / 0x100));
		temp_f14 = (f32)((s32)((((s32)((s32)(((temp_t7 * 0x41C64E6D) + 0x3039) >> 0x10) % 0x40)) + 0xE0) / 0x100));

		{
			Mtx sp30;

			guScale(&sp30, temp_f0, temp_f14, temp_f0);
		}

		*(u32*)((u8*)mtx + 0x18) = sp8C;
		*(u32*)((u8*)mtx + 0x1C) = sp88;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_800770D8_86088.s")
#endif

#ifdef NON_MATCHING
// CURRENT(0)
void func_800772EC_8629C(s32 arg0) {
	Unk_8014D298 *temp_v0;
	Unk80259D90 *temp_s0;
	s32 sp70;
	s32 sp6C;
	s32 sp68;
	u16 sp66;
	s32 sp44[8];
	s32 *temp_s1;
	s16 *temp_s2;
	u32 *temp_t8;
	s32 temp_t2;
	s32 temp_t3;
	s32 temp_t4;
	s32 temp_t5;
	s32 temp_t6;
	s32 temp_t7;
	s32 temp_t0;
	s32 temp_t1;

	temp_v0 = (Unk_8014D298 *) &D_8014D298[arg0];
	temp_t2 = (s32) temp_v0->unk2 * 0x7D0;
	if (temp_t2 < temp_v0->unk6) {
		temp_s0 = &D_80259D90[temp_v0->unk0];
		temp_t8 = (u32 *) D_8013BCDC_14AC8C;

		sp44[0] = (s32) temp_t8[0];
		sp44[1] = (s32) temp_t8[1];
		sp44[2] = (s32) temp_t8[2];
		sp44[3] = (s32) temp_t8[3];
		sp44[4] = (s32) temp_t8[4];
		sp44[5] = (s32) temp_t8[5];
		sp44[6] = (s32) temp_t8[6];
		sp44[7] = (s32) temp_t8[7];

		temp_t3 = currentLevel;
		temp_t4 = temp_s0->unk0;
		temp_t5 = temp_t4 * 0xC;
		temp_t6 = temp_t3 * 0x18;
		temp_t7 = ((temp_t6 + temp_t5) << 4) - 0xC0;
		temp_s2 = (s16 *) ((u8 *) D_8013BB14_14AAC4 + temp_t7);
		sp66 = (u16) (((temp_v0->unk4 + 0x2000) & 0xFFFF) >> 0xE);
		temp_s1 = &sp44[sp66 * 2];
		sp70 = temp_s0->unk20;
		sp6C = temp_s0->unk22;
		sp68 = temp_s0->unk24;

		temp_s0->unk10 = (s16) (s32) ((((f64) (f32) sins(sp66) / 32768.0) * (f64) (temp_s1[0] * temp_s2[2])) + (f64) sp70);
		temp_s0->unk14 = (s16) (s32) ((((f64) (f32) sins(sp66) / 32768.0) * (f64) (temp_s1[1] * temp_s2[2])) + (f64) sp68);
		temp_s0->unk12 = (s16) (s32) ((((f64) (f32) coss(sp66) / 32768.0) * (f64) temp_s2[2]) + (f64) sp6C);
		temp_s0->unk30 = (s16) (s32) ((((f64) (f32) sins(sp66) / 32768.0) * (f64) (temp_s1[0] * temp_s2[2])) + (f64) temp_s0->unk40);
		temp_s0->unk34 = (s16) (s32) ((((f64) (f32) sins(sp66) / 32768.0) * (f64) (temp_s1[1] * temp_s2[2])) + (f64) temp_s0->unk44);
		temp_s0->unk32 = (s16) (s32) ((((f64) (f32) coss(sp66) / 32768.0) * (f64) temp_s2[2]) + (f64) temp_s0->unk42);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_800772EC_8629C.s")
#endif

// displayTrees
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_8007764C_865FC.s")

u16 func_80078530_874E0(s16 arg0, s16 arg1) {
	u8 temp_v1;
	
	arg0 += 0x80;
	arg1 += 0x80;
	
	if (D_80221A30[arg1 >> 2][arg0 >> 2] == 0xFF) {
		return 0U;
	}

	return D_8021FA30[D_80221A30[arg1 >> 2][arg0 >> 2]][((arg1 & 3) << 2) + (arg0 & 3)];
}

u16 *func_800785B4_87564(s16 arg0, s16 arg1, s32 *arg2) {
	s16 t4;
	s16 t1;
	u8 v1;

	t1 = (s16)((arg1 + 0x8000) >> 8);
	t4 = (s16)((arg0 + 0x8000) >> 8);

	v1 = D_80221A30[t1 >> 2][t4 >> 2];
	if (v1 == 0xFF) {
		return NULL;
	}

	*arg2 = (arg0 & 0x80) ? 1 : 0;
	if (arg1 & 0x80) {
		*arg2 += 2;
	}

	return &D_8021FA30[v1][(t1 & 3) * 4 + (t4 & 3)];
}

// https://decomp.me/scratch/AHGPz
#ifdef NON_MATCHING
s16 func_80078678_87628(u16 *arg0, s32 arg1, s32 arg2)
{
  s16 temp_t7;
  temp_t7 = (((s32) (*arg0)) >> (arg1 * 4)) & 0xF;
  if (((temp_t7 - 1) % 3) == 0)
  {
	*arg0 = (*arg0) + (arg2 << (arg1 * 4));
	return (temp_t7 + arg2);
  }
  return -1;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078678_87628.s")
#endif

void func_800786CC_8767C(u16* arg0, s32 arg1) {
	*arg0 &= ~(0xF << (arg1 * 4));
}

void func_800786EC_8769C(u16* arg0, s32 arg1) {
	s32 temp_v1;
	u16 temp_v0;

	temp_v0 = *arg0;
	temp_v1 = arg1 * 4;
	if ((((s32) temp_v0 >> temp_v1) & 0xF) >= 0xE) {
		*arg0 = temp_v0 & ~(0xF << temp_v1);
	}
}

void func_80078720_876D0(AlienInstance *alien);

// https://decomp.me/scratch/S6kQ4
#ifdef NON_MATCHING
void func_80078720_876D0(AlienInstance *alien) {
	s16 new_var;
	s32 sp20;
	s32 *new_var2;
	s32 sp1C;
	if (sp1C)
	{
	}
	sp1C = alien->unk30;
	new_var = alien->unk14;
	if (!alien->unk10)
	{
	}
	if (alien->unk10 == sp1C)
	{
	u16 *v0;
	s32 v1 = alien->unk10;
	sp1C = new_var;
	sp1C = alien->unk30;
	v0 = func_800785B4_87564((s16) v1, (s16) sp1C, &sp20);
	sp1C = v1;
	if (v0 != NULL)
	{
	func_800786EC_8769C(v0, 2);
	}
	v0 = func_800785B4_87564((s16) (sp1C - 1), (s16) sp1C, &sp20);
	if (v0 != NULL)
	{
	func_800786EC_8769C(v0, 1);
	}
	}
	else
	{
	u16 *v0;
	s32 a3 = new_var;
	sp1C = alien->unk10;
	v0 = func_800785B4_87564((s16) sp1C, (s16) a3, &sp20);
	a3 = sp1C;
	if (v0 != NULL)
	{
	func_800786EC_8769C(v0, 0);
	}
	v0 = func_800785B4_87564((s16) a3, (s16) (a3 - 1), new_var2 = &sp20);
	if (v0 != NULL)
	{
	func_800786EC_8769C(v0, 3);
	}
	sp1C = alien->unk10;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078720_876D0.s")
#endif

// CURRENT(4620)
#ifdef NON_MATCHING
s32 func_80078828_877D8(s16 arg0, s16 arg1, u16 arg2, s32 arg3) {
	s32 sp3C;
	u16* sp38;
	s32 sp30;
	s16 sp2E;
	s16 sp2A;
	s16 sp20;
	s32 sp1C;
	s16 temp_a0;
	s32 temp_t7;
	s32 temp_t9;
	s32 temp_v1;

	sp38 = func_800785B4_87564(arg0, arg1, &sp3C);
	if (sp38 == NULL) {
		return 0;
	}

	sp30 = func_80078BC8_87B78(arg0, arg1);
	if (sp30 == -1) {
		func_800786CC_8767C(sp38, sp3C);
		return 1;
	}

	if (arg3 != 0) {
		if (D_8013BC0C_14ABBC[(currentLevel << 4) + D_80259D90[sp30].unk0] >= 0x11) {
			return 0;
		}
	}

	temp_v1 = D_80259D90[sp30].unk0;
	temp_a0 = D_8013BC0C_14ABBC[(currentLevel << 4) + temp_v1];

	if ((arg3 == 0) && (temp_a0 >= 0x15)) {
		return 0;
	}

	if (temp_a0 == 2) {
		return 0;
	}

	if (temp_v1 >= 0xE) {
		if ((sp3C == 0) || (sp3C == 3)) {
			temp_t9 = (arg2 + 0x2000) >> 0xE;
			if ((temp_t9 == 0) || (temp_t9 == 2)) {
				return 0;
			}
		}
		if ((sp3C == 1) || (sp3C == 2)) {
			temp_t7 = (arg2 + 0x2000) >> 0xE;
			if ((temp_t7 == 1) || (temp_t7 == 3)) {
				return 0;
			}
		}
	}

	sp1C = arg2;
	sp2E = (s16) (func_800B84D0_C7480(arg0, arg1) >> 8);
	sp20 = coss(arg2);
	temp_t9 = (s16) (func_800B84D0_C7480(
						(s16) ((((f64) (f32) sp20 / 32768.0) * 100.0) + (f64) arg0),
						(s16) ((((f64) (f32) sins(arg2) / 32768.0) * 100.0) + (f64) arg1)) >> 8);
	temp_t7 = (temp_t9 - sp2E);
	sp2A = (s16) (D_801417A0_150750 - ((((f64) (f32) func_80003824_4424(100.0f, (f32) temp_t7)) * D_80141798_150748) / 32768.0));

	if (D_80259D90[sp30].unk0 < 0xE) {
		func_80076918_858C8(sp30, sp1C, sp2A, 2);
	} else {
		func_80076918_858C8(sp30, sp1C, (s16) ((f64) ((f32) sp2A * 32768.0f) / D_80141798_150748), 3);
	}

	func_800786CC_8767C(sp38, sp3C);
	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078828_877D8.s")
#endif

s32 func_80078B58_87B08(s16 arg0, s16 arg1) {
	s32 sp24;
	s32 temp_t0;
	s32 value;
	u16 *ptr;

	ptr = func_800785B4_87564(arg0, arg1, &sp24);
	if (ptr == NULL) {
		return -1;
	}
	temp_t0 = sp24 * 4;
	value = (s32) (*ptr & (0xF << temp_t0)) >> temp_t0;
	if (value >= 0xE) {
		return -1;
	}
	return value;
}

// CURRENT(3345)
#ifdef NON_MATCHING
s32 func_80078BC8_87B78(s16 arg0, s16 arg1) {
	Unk80259D90* entry;
	s32 idx;

	arg0 >>= 7;
	arg1 >>= 7;

	if (((s8) D_80259D92[0][0] != -1) && (arg0 == (D_80259D94 >> 7)) && (arg1 == (D_80259D96 >> 7))) {
		return 0;
	}

	idx = 2;
	if ((D_80259DE2 != -1) && (arg0 == (D_80259DE4 >> 7)) && (arg1 == (D_80259DE6 >> 7))) {
		return 1;
	}

	entry = (Unk80259D90*) D_80259E30;
	for (; idx != 0x96; idx += 4, entry += 4) {
		if (((s8) entry[0].unk2 != -1) && (arg0 == (entry[0].unk4 >> 7)) && (arg1 == (entry[0].unk6 >> 7))) {
			return idx;
		}

		if (((s8) entry[1].unk2 != -1) && (arg0 == (entry[1].unk4 >> 7)) && (arg1 == (entry[1].unk6 >> 7))) {
			return idx + 1;
		}

		if (((s8) entry[2].unk2 != -1) && (arg0 == (entry[2].unk4 >> 7)) && (arg1 == (entry[2].unk6 >> 7))) {
			return idx + 2;
		}

		if (((s8) entry[3].unk2 != -1) && (arg0 == (entry[3].unk4 >> 7)) && (arg1 == (entry[3].unk6 >> 7))) {
			return idx + 3;
		}
	}

	return -1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078BC8_87B78.s")
#endif

// CURRENT(9678)
#ifdef NON_MATCHING
s32 func_80078D64_87D14(s16 arg0, s16 arg1, s32 arg2) {
	typedef struct {
		s8 unk0;
		u8 pad1;
		s8 unk2;
		s8 unk3;
		s16 unk4;
		s16 unk6;
		u8 pad8[0x48];
	} Unk80259D90Search;
	Unk80259D90Search* entry;
	s16 x;
	s16 z;
	s32 i;

	x = arg0 >> 8;
	z = arg1 >> 8;

	if (((s8)D_80259D92[0][0] != -1) && (x == (D_80259D94 >> 8)) && (z == (D_80259D96 >> 8)) && (arg2 == D_80259D93)) {
		return 0;
	}

	if ((D_80259DE2 != -1) && (x == (D_80259DE4 >> 8)) && (z == (D_80259DE6 >> 8)) && (arg2 == D_80259DE3)) {
		return 1;
	}

	entry = (Unk80259D90Search*) D_80259E30;
	for (i = 2; i != 0x96; i += 4, entry += 4) {
		if (((s8) entry[0].unk2 != -1) && (x == (entry[0].unk4 >> 8)) && (z == (entry[0].unk6 >> 8)) && (arg2 == (s8) entry[0].unk3)) {
			return i;
		}

		if (((s8) entry[1].unk2 != -1) && (x == (entry[1].unk4 >> 8)) && (z == (entry[1].unk6 >> 8)) && (arg2 == (s8) entry[1].unk3)) {
			return i + 1;
		}

		if (((s8) entry[2].unk2 != -1) && (x == (entry[2].unk4 >> 8)) && (z == (entry[2].unk6 >> 8)) && (arg2 == (s8) entry[2].unk3)) {
			return i + 2;
		}

		if (((s8) entry[3].unk2 != -1) && (x == (entry[3].unk4 >> 8)) && (z == (entry[3].unk6 >> 8)) && (arg2 == (s8) entry[3].unk3)) {
			return i + 3;
		}
	}

	return -1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078D64_87D14.s")
#endif

void func_80078F5C_87F0C(s16 arg0, s16 arg1, u16 arg2) {
	u16 temp_v1;
	s32 temp_v0;

	temp_v0 = func_80078BC8_87B78(arg0, arg1);
	temp_v1 = arg2;
	if (temp_v0 != -1) {
		if (temp_v1 == 0) {
			func_80076868_85818(temp_v0);
			return;
		}
		D_80259D98[temp_v0].unk0 = D_80222A30[temp_v1];
	}
}

#ifdef NON_MATCHING
// CURRENT(3695)
s32 func_80078FE0_87F90(u8 *arg0, VehicleInstance *arg1, s32 *arg2) {
	s8 *context;
	VehicleInstance *vehicle;
	s32 *result;
	VehicleSpec *spec;
	f32 speedFactor;
	f64 direction;
	s32 scaled;

	context = (s8 *)arg0;
	vehicle = arg1;
	result = arg2;

	spec = (VehicleSpec *)func_800FAFB8_109F68(vehicle);
	if ((currentLevel == 3) && ((vehicle->unk1A == 9) || (vehicle->unk1A == 8))) {
		return 1;
	}

	if (*(s8 *)((u8 *)vehicle + 0xD) == -2) {
		speedFactor = func_800FB11C_10A0CC(vehicle);
	} else {
		if ((-(s32)vehicle->unk12) < vehicle->unk12) {
			speedFactor = (f32)vehicle->unk12;
		} else {
			speedFactor = (f32)(-vehicle->unk12);
		}
	}

	scaled = (s32)((f32)spec->unk32 * speedFactor);

	if ((context[3] == 1) || (context[3] == 2)) {
		if (((f64)(f32)coss((u16)vehicle->unkE) / 32768.0) >= 0.0) {
			direction = (f64)(f32)coss((u16)vehicle->unkE) / 32768.0;
		} else {
			direction = -((f64)(f32)coss((u16)vehicle->unkE) / 32768.0);
		}

		if (*(s16 *)context < *(s16 *)(context + 0x10)) {
			*result = 0;
		} else {
			*result = 0x8000;
		}
	} else {
		if (((f64)(f32)sins((u16)vehicle->unkE) / 32768.0) >= 0.0) {
			direction = (f64)(f32)sins((u16)vehicle->unkE) / 32768.0;
		} else {
			direction = -((f64)(f32)sins((u16)vehicle->unkE) / 32768.0);
		}

		if (vehicle->unk4 < *(s16 *)(arg0 + 0x14)) {
			*result = 0x4000;
		} else {
			*result = -0x4000;
		}
	}

	scaled = (s32)(direction * (f64)scaled);
	if (scaled < 0x7531) {
		if (scaled < 0x249F1) {
			return 0;
		}

		if (*(s8 *)context != 0xE) {
			return 0;
		}
		return 1;
	}

	if (*(s8 *)context == 0xF) {
		return 1;
	}

	if (scaled < 0x249F1) {
		return 0;
	}

	if (*(s8 *)context != 0xE) {
		return 0;
	}

	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078FE0_87F90.s")
#endif

#ifdef NON_MATCHING
// CURRENT(2276)
s32 func_800792E0_88290(u8 *arg0, s32 arg1) {
	s32 sp44;
	s32 sp3C;
	s16 sp34;

	sp44 = ((Unk80259D90*)arg0)->unk22;
	sp34 = coss(arg1);
	sp3C = 0x4000 - func_80003824_4424(100.0f, (f32)((func_800B84D0_C7480((s16)(s32)((((f64)(f32)sp34 / 32768.0) * 100.0) + (f64)((Unk80259D90*)arg0)->unk20), (s16)(s32)((((f64)(f32)sins(arg1 & 0xFFFF) / 32768.0) * 100.0) + (f64)((Unk80259D90*)arg0)->unk24)) >> 8) - sp44));

	sp44 = ((Unk80259D90*)arg0)->unk42;
	sp34 = coss(arg1 & 0xFFFF);
	sp44 = 0x4000 - func_80003824_4424(100.0f, (f32)((func_800B84D0_C7480((s16)(s32)((((f64)(f32)sp34 / 32768.0) * 100.0) + (f64)((Unk80259D90*)arg0)->unk40), (s16)(s32)((((f64)(f32)sins(arg1 & 0xFFFF) / 32768.0) * 100.0) + (f64)((Unk80259D90*)arg0)->unk44)) >> 8) - sp44));

	if (sp3C >= sp44) {
		sp3C = sp44;
	}

	func_80076918_858C8(((Unk80259D90*)arg0) - D_80259D90, arg1, sp3C, 3);
	func_80078720_876D0((AlienInstance*)arg0);
	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_800792E0_88290.s")
#endif

s32 func_800794F8_884A8(s32 arg0, s32 arg1) {
	return 0;
}
