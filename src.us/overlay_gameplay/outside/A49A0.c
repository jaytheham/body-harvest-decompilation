#include <ultra64.h>
#include "common.h"

// https://decomp.me/scratch/efEMb
#ifdef NON_MATCHING
s32 func_800959F0_A49A0(s32 arg0, s32 arg1, s32 arg2) {
	s32 temp_t6;
	s32 temp_t7;
	s32 temp_t8;

	temp_t6 = arg0 & 0xFFFF;
	temp_t7 = arg1 & 0xFFFF;
	temp_t8 = arg2 & 0xFFFF;
	arg2 = temp_t8;
	arg1 = temp_t7;
	if (temp_t6 < 0x1F) {
		arg0 = temp_t6 & 0xFFFF;
	} else {
		arg0 = 0x1F;
	}
	if (arg1 < 0x1F) {
		arg1 = arg1 & 0xFFFF;
	} else {
		arg1 = 0x1F;
	}
	if (arg2 < 0x3F) {
		arg2 = arg2 & 0xFFFF;
	} else {
		arg2 = 0x3F;
	}
	return ((arg0 << 0xB) + (arg1 << 6) + (arg2 & 0x3F)) & 0xFFFF;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_800959F0_A49A0.s")
#endif

// https://decomp.me/scratch/yD5OZ
#ifdef NON_MATCHING
s16 func_80095A6C_A4A1C(s16 arg0, s16 arg1, u16 arg2)
{
  u8 **new_var;
  s32 r;
  s16 nx;
  s16 ny;
  r = sqrtf((arg0 * arg0) + (arg1 * arg1));
  if (r >= 2)
  {
	nx = arg0 + (arg0 * ((f32) (3.0 / r)));
	ny = arg1 + (arg1 * ((f32) (3.0 / r)));
	new_var = &D_80052A94;
	if (nx < (-0x80))
	{
	  nx = -0x80;
	}
	if (ny < (-0x80))
	{
	  ny = -0x80;
	}
	if (nx >= 0x80)
	{
	  nx = 0x7F;
	}
	if (ny >= 0x80)
	{
	  ny = 0x7F;
	}
	return ((*((u16 *) (((*new_var) + (ny << 9)) + (nx * 2)))) & 0x3F) - arg2;
  }
  return r * 0;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80095A6C_A4A1C.s")
#endif

void func_80095BD4_A4B84(int arg0, unsigned char arg1, unsigned char arg2, unsigned char arg3)
{
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, 3 << 20);
	gDPSetColorImage(D_8005BB2C++, 0, G_IM_SIZ_16b, 320, K0_TO_PHYS(arg0));
	gDPSetFillColor(D_8005BB2C++, (GPACK_RGBA5551(arg1, arg2, arg3, 1) << 16) | GPACK_RGBA5551(arg1, arg2, arg3, 1));
	gDPPipeSync(D_8005BB2C++);
	gDPFillRectangle(D_8005BB2C++, 0, 0, D_80068084 - 1, D_80068088 - 1); 
	gDPSetCycleType(D_8005BB2C++, 0 << 20);
	gDPPipeSync(D_8005BB2C++);
}

// draws vehicle triangle icons on map
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80095D4C_A4CFC.s")

// guess_drawMapTiles
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80095F08_A4EB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_800966EC_A569C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80096BC4_A5B74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_800970C0_A6070.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80097444_A63F4.s")

// draw 3d adam on map
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80097994_A6944.s")

// related to drawing 3d vehicles
void func_80097B74_A6B24(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {

	gSPLookAt(D_8005BB2C++, &D_801592A0);
	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);

	if (currentLevel != LEVEL_JAVA || vehicleInstances[arg0].unk1A != 0x12) {
		func_80101EF4_110EA4(vehicleInstances[arg0].unk1A, arg1, arg2, arg3, 0, 0x4000, (s32)arg4);
	}
}

void func_80097CB4_A6C64(UnkA6C64Keyframe *arg0, UnkA6C64Keyframe *arg1, UnkA6C64Keyframe *arg2, f32 arg3)
{
  s32 absDiff;
  arg2->unk0 = arg0->unk0 + ((s16) ((arg1->unk0 - arg0->unk0) * arg3));
  absDiff = (((arg1->unk2 - arg0->unk2) >= 0) ? (arg1->unk2 - arg0->unk2) : -(arg1->unk2 - arg0->unk2));
  
  if (absDiff > 0x8000)
  {
	if (arg0->unk2 < arg1->unk2)
	{
	  arg2->unk2 = arg0->unk2 - ((s16) (((arg0->unk2 - arg1->unk2) + 0xFFFF) * arg3));
	}
	else
	{
	  arg2->unk2 = arg0->unk2 + ((s16) (((arg1->unk2 - arg0->unk2) + 0xFFFF) * arg3));
	}
  }
  else
  {
	arg2->unk2 = arg0->unk2 + ((s16) ((arg1->unk2 - arg0->unk2) * arg3));
  }
  arg2->unk4 = arg0->unk4 + ((s16) ((arg1->unk4 - arg0->unk4) * arg3));
  arg2->unk8 = arg0->unk8 + ((arg1->unk8 - arg0->unk8) * arg3);
  arg2->unkC = arg0->unkC + ((arg1->unkC - arg0->unkC) * arg3);
  arg2->unk10 = arg0->unk10 + ((arg1->unk10 - arg0->unk10) * arg3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80097E1C_A6DCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_8009811C_A70CC.s")
