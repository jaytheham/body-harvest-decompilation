#include <ultra64.h>
#include "common.h"

u32 D_80140BA0_14FB50[] = {
	0x05059CA0, 0x05058AA0, 0x05058CA0, 0x05058EA0, 0x050590A0,
	0x050592A0, 0x050594A0, 0x050596A0, 0x050598A0, 0x05059AA0,
};

u32 D_80140BC8_14FB78[] = {
	0x05055CA0, 0x05055EA0, 0x050560A0, 0x050562A0, 0x050564A0,
	0x050566A0, 0x050568A0, 0x05056AA0, 0x05056CA0, 0x05056EA0,
	0x050570A0, 0x050572A0, 0x050574A0, 0x050576A0, 0x050578A0,
	0x05057CA0, 0x00000000, 0x05057AA0, 0x05057EA0, 0x050580A0,
	0x050582A0, 0x050584A0, 0x00000000, 0x00000000, 0x050586A0,
	0x050588A0,
};

u8 D_80140C30_14FBE0[] = { 0x7F, 0x7F, 0x7F, 0x00, 0x7F, 0x7F, 0x7F, 0x00 };

u8 D_80140C38_14FBE8[] = {
	0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF, 0x00,
	0x28, 0x64, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00,
};

u32 D_80140C48_14FBF8[] = {
	0x0501FE08, 0x0501F6C0, 0x0501EF78, 0x0501E830,
	0x0501E0E8, 0x0501D9A0, 0x0501D258, 0x0501CB10,
};

u16 D_80140C68_14FC18[] = { 0x0033, 0x0033, 0x0033, 0x0000 };
u8 D_80140C70_14FC20[] = { 0xD7, 0xD7, 0xFF, 0x00 };
u8 D_80140C74_14FC24[] = { 0xFF, 0x00, 0x00, 0x00 };
u32 D_80140C78_14FC28 = 0;
u32 D_80140C7C_14FC2C = 0;
u32 D_80140C80_14FC30 = 0;
u32 D_80140C84_14FC34 = 1;
u32 D_80140C88_14FC38 = 0;
u32 D_80140C8C_14FC3C = 0;
u32 D_80140C90_14FC40 = 0;
u32 D_80140C94_14FC44 = 0;
u32 D_80140C98_14FC48 = 0;
u32 D_80140C9C_14FC4C = 0;
u32 D_80140CA0_14FC50 = 0;
u32 D_80140CA4_14FC54 = 1;
u32 D_80140CA8_14FC58 = 0;
u32 D_80140CAC_14FC5C = 0;
u32 D_80140CB0_14FC60 = 0;
u32 D_80140CB4_14FC64 = 1;
u32 D_80140CB8_14FC68 = 0;
u32 D_80140CBC_14FC6C = 0;
u32 D_80140CC0_14FC70 = 0;
u32 D_80140CC4_14FC74 = 0;
u32 D_80140CC8_14FC78 = 0;
u32 D_80140CCC_14FC7C = 0;
u32 D_80140CD0_14FC80 = 0;
u32 D_80140CD4_14FC84 = 0;
u32 D_80140CD8_14FC88 = 0;
u32 D_80140CDC_14FC8C = 0x82;
u32 D_80140CE0_14FC90[] = { 0, 0, 0, 0 };

s32 func_8012F4E0_13E490(u8 *arg0, s32 arg1, s32 arg2, s32 arg3, u8 *arg4, s32 arg5, s32 arg6, s32 arg7);

void func_8012EAC0_13DA70(s32 arg0, u8 *arg1)
{
	int power;
	s16 k;
	s16 numDigits = 0;
	s32 v = arg0;
	s32 digit;
	s16 new_var;
	s16 j;
	if (arg0 > 0)
	{
		do
		{
			v = (s32) ((((f32) v) * 1.0f) / 10.0f);
			numDigits++;
		}
		while (v > 0);
	}
	new_var = numDigits;
	for (j = 0; j < new_var; j++)
	{
		power = 1;
		k = 0;
		if (j > 0)
		{
			do
			{
				k++;
				power *= 0xA;
			}
			while (k < j);
		}
		digit = (s32) (((f32) arg0) / ((f32) power));
		*(((arg1 + new_var) - j) - 1) = (u8) ((digit - (((s32) (((f32) digit) / 10.0f)) * 0xA)) + 0x30);
	}

	arg1[numDigits] = 0;
}

/* Concatenates two strings (arg0 + arg1) into the output buffer arg2 */
#ifdef NON_MATCHING
void func_8012EBC0_13DB70(u8 *arg0, u8 *arg1, u8 *arg2) {
	s16 i;
	s16 j;
	u8 *ptr;

	i = 0;
	if (*arg0 != 0) {
		do {
			arg2[i] = arg0[i];
			i++;
		} while (arg0[i] != 0);
	}
	j = 0;
	do {
		ptr = &arg1[j];
		arg2[i + j] = *ptr;
		j++;
	} while (*ptr > 0U);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012EBC0_13DB70.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012EC3C_13DBEC.s")

// https://decomp.me/scratch/RaB1d
// This does match but doesn't compile right at the moment:
// this requires D_8015FF84 as a function static so this may cause .bss issues
// shouldn't be a problem if you match the entire TU / file
#ifdef NON_MATCHING
void func_8012F24C_13E1FC(u8 *arg0, s32 arg1)
{
	static s32 D_8015FF84;
	s32 rem;
	rem = D_8015FF84 % 300;
	if (rem < 0x64) {
		arg0[0] = 0xFA - rem;\
		arg0[1] = rem + 0x96;\
		arg0[2] = 0x96;
	} else if (rem < 0xC8) {
		arg0[0] = 0x96;\
		arg0[1] = 0x15E - rem;\
		arg0[3] = rem + 0x32;
	} else {
		arg0[0] = rem - 0x32;\
		arg0[1] = 0x96;\
		arg0[3] = 0x1C2 - rem;
	}
	D_8015FF84 += arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012F24C_13E1FC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012F2DC_13E28C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012F4E0_13E490.s")

void func_8012FE6C_13EE1C(s8 arg0) {
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0, 0, 0, arg0);
	gDPPipeSync(D_8005BB2C++);
	gDPFillRectangle(D_8005BB2C++, 0, 0, D_80068084, D_80068088);
}

// Saves current level's score and returns the total score across all levels.
s32 func_8012FFB0_13EF60(void)
{
	s32 score;
	s32 i;
	
	D_80052A98[currentLevel - 1].score = D_80052B2C->unk30;

	score = 0;
	for (i = 0; i < 6; i++) {
		score += D_80052A98[i].score;
	}
	return score;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8013001C_13EFCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_801306C4_13F674.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_80130BA0_13FB50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_80131280_140230.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_80131858_140808.s")
