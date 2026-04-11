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
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_800770D8_86088.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_800772EC_8629C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078828_877D8.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078BC8_87B78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078D64_87D14.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_80078FE0_87F90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/857E0/func_800792E0_88290.s")

s32 func_800794F8_884A8(s32 arg0, s32 arg1) {
	return 0;
}
