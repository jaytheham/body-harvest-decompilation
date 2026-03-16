#include <ultra64.h>
#include "common.h"

void func_80079510_884C0(u8 arg0)
{
  AlienInstance *inst = &alienInstances[alienInstances[arg0].unk25];
  *((s32 *)&inst->unk8) = 0;
  *((s32 *)&inst->unkC) = 0;
  *((s32 *)&inst->unk10) = 0;
  *((s32 *)&inst->unk14) = 0;
  inst->specIndex = 0;
  inst->hitPoints = 0x32;
  inst->unk1B = 0xFF;
  *((u8*)&inst->unk1E) = 0xFF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007956C_8851C.s")

// Skip this and aliens freeze when they die, never disappear
// https://decomp.me/scratch/tmc2b
#ifdef NON_MATCHING
void func_800797A4_88754(s32 arg0, u8 arg1)
{
  s16 i;
  s16 nibble;
  if ((arg1) == 0)
  {
	return;
  }
  if ((i && i) && i)   {  }
  if ((arg1) >= 0x19)
  {
	return;
  }
  for (i = 0; i < 4; i++)
  {
	switch (i)
	{
	  case 0:
		i = D_8013C1B8[arg1 * 2];
		nibble = ((u32) i) >> 4;
		break;

	  case 1:
		nibble = D_8013C1B8[arg1 * 2] & 0xF;
		break;

	  case 2:
		nibble = ((u32) D_8013C1B8[(arg1 * 2) + 1]) >> 4;
		break;

	  case 3:
		nibble = D_8013C1B8[(arg1 * 2) + 1] & 0xF;
		break;
	}

	if (nibble != 0)
	{
	  func_800A8A68_B7A18(
		  alienInstances[arg0].unk0,
		  alienInstances[arg0].unk2,
		  alienInstances[arg0].unk4,
		  D_8013C1A7[nibble]);
	}
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800797A4_88754.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80079910_888C0.s")

s16 func_80079B74_88B24(Unk8014DD50 *arg0) {
	s16 idx;

	if (D_8014ECD0 == 0x78) {
		D_8014D300 = 1;
		return -1;
	}

	idx = D_8014EC50[D_8014ECD0];
	D_8014ECD0++;
	D_8014DD50[idx].unkE = 0;
	D_8014DD50[idx] = *arg0;

	if (arg0->unkC != -1) {
		D_8014DD50[idx].unkC = func_80079B74_88B24(arg0 + 1);
	}
	if (arg0->unkD != -1) {
		D_8014DD50[idx].unkD = func_80079B74_88B24(arg0 + D_8014DD50[idx].unkD);
	}
	return idx;
}

s32 func_80079C8C_88C3C(s32 arg0) {
	u8 spec;
	s16 idx;
	spec = alienInstances[arg0].specIndex;

	D_8014D300 = 0;
	if (D_8014ECD0 == 0x78) {
		alienInstances[arg0].unkC = -1;
		osSyncPrintf(&D_801417C0, &alienInstances[arg0]);
		return 0;
	}

	idx = D_8014EC50[D_8014ECD0];
	D_8014ECD0++;
	D_8014DD50[idx].unkE = 0;
	D_8014DD50[idx].unk0 = 0;
	D_8014DD50[idx].unk2 = 0;
	D_8014DD50[idx].unk4 = 0;
	D_8014DD50[idx].unk6 = 0;
	D_8014DD50[idx].unk8 = 0;
	D_8014DD50[idx].unkA = 0;
	D_8014DD50[idx].unkD = -1;

	if (alienSpecs[spec].unk44 != 0) {
		D_8014DD50[idx].unkC = func_80079B74_88B24((Unk8014DD50 *)alienSpecs[spec].unk44);
	} else {
		D_8014DD50[idx].unkC = -1;
	}

	if (D_8014D300 != 0) {
		alienInstances[arg0].unkC = -1;
		func_80079DC0_88D70(idx);
		return 0;
	}

	alienInstances[arg0].unkC = idx;
	return 1;
}

void func_80079DC0_88D70(s32 arg0)
{
  s32 idx;
  while (arg0 != (-1))
  {
	idx = -1;
	if (D_8014DD50[arg0].unkC != idx)
	{
	  func_80079DC0_88D70(D_8014DD50[arg0].unkC);
	}
	idx = --D_8014ECD0;
	D_8014EC50[D_8014ECD0] = arg0;
	arg0 = D_8014DD50[arg0].unkD;
  }
}

void func_80079E64_88E14(s32 arg0) {
	u8 state = alienInstances[arg0].specIndex;
	AlienInstance *ai = &alienInstances[arg0];
	if (state == 1) {
		if (!(ai->unk20 & 0x1000)) {
			if (ai->unk24 == 0xF) {
				ai->unk48 = 0xA0;
			} else if (ai->unk24 == 0x10 || ai->unk24 == 0x13) {
				ai->unk48 = 0;
			} else {
				ai->unk48 = 0x40;
			}
		}
		if (ai->unk24 == 1 || ai->unk24 == 0x1D) {
			D_80048194++;
		}
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80079F08_88EB8.s")

// https://decomp.me/scratch/PEXJ7
#ifdef NON_MATCHING
s32 func_8007A198_89148(s32 arg0)
{
  u8 sp24;
  u8 sp2D;
	int new_var;
  
  sp2D = alienInstances[arg0].specIndex;
  func_80079F08_88EB8();
  sp24 = arg0;
  func_80080510_8F4C0(sp24);
  if (alienSpecs[sp2D].unk2D != (-1))
  {
	new_var = ((s8) func_800F3990_102940(sp24, alienSpecs[sp2D].unk2D & 0xFF)) | 0x80000;
	alienInstances[arg0].unk20 &= ~7;
	alienInstances[arg0].unk20 |= new_var;
  }
  func_80079C8C_88C3C(arg0);
  func_80079E64_88E14(arg0);
  alienInstances[arg0].unk20 |= 0x600;
  alienInstances[arg0].unk20 &= ~0x200;
  D_8014D510[D_8014ECCC] = arg0;
  D_8014ECCC++;
  return D_8014ECCC - 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007A198_89148.s")
#endif

// guess_addActiveObject Skipping seems to result in aliens with no physical presence
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007A2A0_89250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007A4F8_894A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007A6B4_89664.s")

void func_8007AA0C_899BC(void)
{
	s32 i;
	s8 *p;
	D_8014ECCC = 0;
	D_8014ECC8 = 0;
	D_8014ECD0 = 0;
	D_80140AC4 = 0;
	D_80048184 = -1;
	D_80048180 = 0;
	D_80048190 = 0;
	D_80048194 = 0;
	for (i = 0; i < 0xFF; i++)
	{
		alienInstances[i].specIndex = 0;
		alienInstances[i].unk20 = 0;
		alienInstances[i].pad37 = 0;
		D_8014D308[i] = i;
	}

	for (i = 0; i < 0x40; i++)
	{
		D_8014D510[i] = 0xFF;
	}

	p = D_8014EC50;
	i = 0;
	loop3:
	if (1)
	{
		p[1] = i + 1; p[2] = i + 2; p[3] = i + 3;
		p[0] = i;
		i += 4;
		p += 4;
	}

	if (i != 0x78)
	goto loop3;
}

// R on controller 2 debug prints current vehicle info + target info (if any)
// Skipping this stops aliens/humans moving
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007AAEC_89A9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007AF8C_89F3C.s")

void func_8007B170_8A120(s32 arg0) {
	if (arg0 == -1) {
		return;
	}
	do {
		func_800039D0_45D0((Unk80052B40 *)&D_8014DD50[arg0], (Unk80052B40 *)&D_8014DD50[arg0].unk6, NULL, D_8005BB38);
		D_8005BB38 += 0x40;
		if (D_8014DD50[arg0].unkC != -1) {
			func_8007B170_8A120(D_8014DD50[arg0].unkC);
		}
		arg0 = D_8014DD50[arg0].unkD;
	} while (arg0 != -1);
}

void func_8007B20C_8A1BC(Unk8014DD50 *arg0) {
	if (arg0 == NULL) {
		return;
	}
	do {
		func_800039D0_45D0((Unk80052B40 *)arg0, (Unk80052B40 *)&arg0->unk6, NULL, D_8005BB38);
		D_8005BB38 += 0x40;
		if (arg0->unkC != -1) {
			func_8007B20C_8A1BC(arg0 + arg0->unkC);
		}
		if (arg0->unkD != -1) {
			arg0 += arg0->unkD;
		} else {
			arg0 = NULL;
		}
	} while (arg0 != NULL);
}

void func_8007B2A0_8A250(u8 arg0)
{
  u8 specIndex = alienInstances[arg0].specIndex;
  if (alienSpecs[specIndex].unk44 != NULL)
  {
	gSPSegment(D_8005BB2C++, 0x07, osVirtualToPhysical((void *) D_8005BB38));
	func_8007B20C_8A1BC((Unk8014DD50 *) alienSpecs[specIndex].unk44);
  }
  gSPDisplayList(D_8005BB2C++, (Gfx *) alienSpecs[specIndex].unk0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007B370_8A320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007B9CC_8A97C.s")

// drawComplexObjectShadows e.g. humans
// https://decomp.me/scratch/mrFc0
#ifdef NON_MATCHING
void func_8007BEC0_8AE70(void) {
	s32 sp58;
	s32 i;
	AlienInstance *inst;
	u8 *ptr;

	if (!D_8014ECD0) {
		return;
	}
	ptr = D_8014D510;
	for (i = 0; i < D_8014ECCC; i++, ptr++) {
		u8 new_var;
		new_var = *ptr;
		inst = &alienInstances[new_var];
		if (!(inst->unk20 & 0x200) || (inst->unk20 & 0x80000)) {
			if (currentLevel == 1 && inst->specIndex == 0x22) {
				if (!(inst->unk20 & 0x4000)) {
					continue;
				}
			}
			if (currentLevel == 3) {
				if (inst->specIndex == 9) {
					continue;
				}
				if (inst->specIndex == 8) {
					continue;
				}
			}
			if (func_8011E6FC_12D6AC(inst->unk0, inst->unk4, (s16 *)&sp58) != -1) {
				continue;
			}
			if (inst->unk20 & 0x10000000) {
				func_800E988C_F883C(inst, &alienSpecs[inst->specIndex]);
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007BEC0_8AE70.s")
#endif

// drawComplexObjects eg: humans, alien torsos & heads
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007C044_8AFF4.s")

// Disable and aliens don't spawn visibly (show on radar tho)
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007D424_8C3D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007D690_8C640.s")

// https://decomp.me/scratch/aN996
#ifdef NON_MATCHING
s32 func_8007E500_8D4B0(AlienInstance *arg0, AlienSpec *arg1, AlienInstance *arg2, AlienSpec *arg3)
{
  s32 var_a0;
  s32 var_a2;
  s32 var_v1;
  s32 var_a1;
  s32 dist;
  if (((arg1->unk16 & 0xF) != 1) && ((arg3->unk16 & 0xF) != 1))
  {
	dist = func_80084F00_93EB0((VehicleInstance *) arg0, arg2);
 } else { dist = func_80084E54_93E04(arg0, arg2);
  }
  if (dist < (((var_v1 + var_a0) >= var_a1) * 0))
  {
	return 0;
  }
  var_a0 = arg1->unk38;
  var_a2 = arg3->unk38;
  var_v1 = arg0->unk2;
  var_a1 = arg2->unk2;
  if (arg1->unk16 & 0x10)
  {
	var_v1 -= var_a0;
	var_a0 *= 2;
  }
  if (arg3->unk16 & 0x10)
  {
	var_a1 -= var_a2;
	var_a2 *= 2;
  }
  if (((dist < (arg1->unkC + arg3->unkC)) && ((var_a1 + var_a2) >= var_v1)) && ((var_v1 + var_a0) >= var_a1))
  {
	return 1;
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007E500_8D4B0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007E608_8D5B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007E734_8D6E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007E980_8D930.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007EB74_8DB24.s")

void func_8007ED9C_8DD4C(u8 arg0)
{
  alienInstances[arg0].unk0 = alienInstances[arg0].unk2E;
  alienInstances[arg0].unk2 = alienInstances[arg0].unk30;
  alienInstances[arg0].unk4 = alienInstances[arg0].unk32;
  if ((alienInstances[arg0].unk20 & 0x80000) && (alienInstances[arg0].unk20 & 0x600))
  {
	func_800F2D48_101CF8(
		(alienInstances[arg0].unk20 & 0xFFFF) & 7,
		alienInstances[arg0].unk0,
		alienInstances[arg0].unk4);
  }
  alienInstances[arg0].unk16 = alienInstances[arg0].unk2;
}

void func_8007EE24_8DDD4(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	s32 mode = inst->unk20;
	inst->unk0 = inst->unk2E;
	inst->unk4 = inst->unk32;
	if ((mode & 0x80000) && (mode & 0x600))
	{
		inst->unk4 = inst->unk32;
		func_800F2D48_101CF8(((unsigned char) mode) & 7, inst->unk0, inst->unk4);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007EE98_8DE48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007F0E8_8E098.s")

s32 func_8007F9C8_8E978(u8 arg0, u8 arg1) {
	s16 var_v1 = -1;

	if (alienSpecs[arg1].unk54 & 1) {
		return 0;
	}
	if (alienSpecs[arg1].unk54 & 2) {
		var_v1 = func_80082A98_91A48(arg0);
	} else if (alienSpecs[arg1].unk54 & 0x10000080) {
		var_v1 = func_80082CA0_91C50(arg0);
	}
	if (var_v1 != -1) {
		return 1;
	}
	if (((u32)(alienSpecs[arg1].unk54 & 0x180000)) >> 0x13 < 3) {
		var_v1 = func_80082B30_91AE0(arg0);
	}
	if (var_v1 == -1 && !(alienSpecs[arg1].unk54 & 0x20000000)) {
		var_v1 = func_80082C04_91BB4(arg0);
	}
	if (var_v1 != -1) {
		return 1;
	}
	return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007FB08_8EAB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007FDD8_8ED88.s")

void func_800800DC_8F08C(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800800E4_8F094.s")

void func_8008030C_8F2BC(u8 arg0)
{
	s32 x = alienInstances[arg0].unk0;
	s32 z = alienInstances[arg0].unk4;

	x += ((s32) ((alienInstances[arg0].unk12 * 4) *
		(((f32) coss(alienInstances[arg0].unkE)) / 32768.0))) >> 5;
	z = (z + (((s32) ((alienInstances[arg0].unk12 * 4) *
		(((f32) sins((u16) alienInstances[arg0].unkE)) / 32768.0))) >> 5)) ^
		(alienInstances[arg0].unkE * 0);
	func_80080418_8F3C8(arg0, x, z);
}

// https://decomp.me/scratch/LBDX5
#ifdef NON_MATCHING
s32 func_80080418_8F3C8(s32 arg0, s32 arg1, s32 arg2)
{
  u8 new_var;
  AlienInstance *inst;
  s32 bounceResult;
  inst = &alienInstances[arg0];
  new_var = alienSpecs[inst->specIndex].unkD;

  bounceResult = func_800B0D10_BFCC0(arg1, arg2, new_var);
  if (bounceResult != 0)
  {
	s16 angle = func_800B0DF4_BFDA4(inst->unk0, inst->unk4, new_var, bounceResult);
	if ((angle == 0x4000) || (angle == (-0x4000)))
	{
	  inst->unkE = (s16) (0x8000 - inst->unkE);
	  arg1 = (s32) inst->unk0;
	}
	else
	{
	  inst->unkE = (s16) (-inst->unkE);
	  arg2 = (s32) inst->unk4;
	}
	bounceResult = 1;
  }
  inst->unk0 = (s16) arg1;
  inst->unk4 = (s16) arg2;
  return bounceResult;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80080418_8F3C8.s")
#endif

void func_80080510_8F4C0(u8 arg0) {
	u8 type = alienInstances[arg0].specIndex;
	s16 sp24;

	if ((alienInstances[arg0].unk20 & 0x02000000) || D_80052ACA == 2) {
		sp24 = (s16)(func_800B84D0_C7480(alienInstances[arg0].unk0, alienInstances[arg0].unk4) >> 8);
	} else {
		func_8011E6FC_12D6AC(alienInstances[arg0].unk0, alienInstances[arg0].unk4, &sp24);
	}

	if (type == 0x12 || type == 2) {
		if (D_80222A70 - 0xA >= sp24) {
			sp24 = (s16)(D_80222A70 - 0xA);
		}
	} else if (type == 1) {
		if (D_80222A70 - 0x28 >= sp24) {
			sp24 = (s16)(D_80222A70 - 0x28);
		}
	}

	alienInstances[arg0].unk2 = alienSpecs[type].unk58 + sp24;
}

void func_8008064C_8F5FC(u8 arg0) {
	u8 specIndex;
	s32 mult;

	specIndex = alienInstances[arg0].specIndex;
	mult = 1;
	if (!(alienInstances[arg0].unk20 & 0x600)) {
		mult = 4;
	}
	if (func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE) == 0) {
		if (alienInstances[arg0].unk12 < alienSpecs[specIndex].unk40) {
			alienInstances[arg0].unk12 += alienSpecs[specIndex].unk3E * mult;
		} else {
			alienInstances[arg0].unk12 -= alienSpecs[specIndex].unk3E * mult;
		}
	} else {
		alienInstances[arg0].unk12 -= mult * alienSpecs[specIndex].unk3E;
		if (alienInstances[arg0].unk12 < 0) {
			alienInstances[arg0].unk12 = 0;
		}
	}
}

void func_8008076C_8F71C(u8 arg0) {
	u8 specIdx = alienInstances[arg0].specIndex;
	s32 mult = 1;
	if (!(alienInstances[arg0].unk20 & 0x600)) {
		mult = 4;
	}
	func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);
	if (alienInstances[arg0].unk12 < alienSpecs[specIdx].unk40) {
		alienInstances[arg0].unk12 += alienSpecs[specIdx].unk3E * mult;
	} else {
		alienInstances[arg0].unk12 -= alienSpecs[specIdx].unk3E * mult;
	}
}

s32 func_80080840_8F7F0(u8 arg0, s32 arg1)
{
  AlienInstance *alien;
  if ((((((&alienInstances[arg0])->unk0 < ((&alienInstances[arg0])->unk14 + arg1)) &&
   (((&alienInstances[arg0])->unk14 - arg1) < (&alienInstances[arg0])->unk0)) &&
	((&alienInstances[arg0])->unk4 < ((&alienInstances[arg0])->unk18 + arg1))) &&
	 (((&alienInstances[arg0])->unk18 - arg1) < (&alienInstances[arg0])->unk4)) &&
	  ((currentLevel != 7) ||
	   (((&alienInstances[arg0])->unk2 < ((&alienInstances[arg0])->unk16 + arg1)) &&
		(((&alienInstances[arg0])->unk16 - arg1) < (&alienInstances[arg0])->unk2))))
  {
	return 1;
  }
  return 0;
}

s32 func_800808F0_8F8A0(u8 arg0, s16 *arg1)
{
	s32 var_v0;
	u8 specIndex;
	s16 unk42;
	var_v0 = 1;
	specIndex = alienInstances[arg0].specIndex;
	unk42 = alienSpecs[specIndex].unk42;
	if (alienSpecs[specIndex].unk54 & 0x40)
	{
		if (alienInstances[arg0].unk2 < alienInstances[arg0].unk16 && alienInstances[arg0].unk10 < 0x80)
		{
			alienInstances[arg0].unk10 += alienSpecs[specIndex].unk3E;
		}
		if (alienInstances[arg0].unk16 < alienInstances[arg0].unk2 && alienInstances[arg0].unk10 >= (-0x7F))
		{
			alienInstances[arg0].unk10 -= alienSpecs[specIndex].unk3E;
		}
	}
	if (!(alienInstances[arg0].unk20 & 0x600))
	{
		var_v0 = 4;
	}
	while (1)
	{
		if (!(alienInstances[arg0].unk20 & 0x10))
		{
			if (((-unk42) * var_v0) >= ((s16) (alienInstances[arg0].unk2A - alienInstances[arg0].unkE)))
			{
				*arg1 -= unk42 * var_v0;
				break;
			}
			if ((unk42 * var_v0) < ((s16) (alienInstances[arg0].unk2A - alienInstances[arg0].unkE)))
			{
				*arg1 += unk42 * var_v0;
				break;
			}
			return 0;
		}
		return 0;
	}
	return 1;
}

// https://decomp.me/scratch/n1AaG
#ifdef NON_MATCHING
s32 func_80080A54_8FA04(u8 arg0, s16 arg1, s16 arg2)
{
  u8 new_var;
  s16 maxTurn;
  s32 dx;
  s32 dz;
  s16 angle;
  s16 diff;
	s32 result;
  new_var = alienInstances[arg0].specIndex;
  maxTurn = alienSpecs[new_var].unk42;
  dx = arg1 - alienInstances[arg0].unk0;
  dz = arg2 - alienInstances[arg0].unk4;
  angle = func_80003824_4424((f32) dx, (f32) dz);
  diff = angle - alienInstances[arg0].unk6;
  if ((-maxTurn) >= diff)
  {
	alienInstances[arg0].unk6 -= maxTurn;
	result=1;
  }
  else if (maxTurn < diff)
  {
	alienInstances[arg0].unk6 += maxTurn;
	result= 1;
  } else {
	return 0;
  }
	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80080A54_8FA04.s")
#endif

// set building as target for alien?
void func_80080B44_8FAF4(u8 arg0, u8 arg1) {
	AlienInstance *alien = &alienInstances[arg0];
	BuildingInstance *building = &buildingInstances[arg1];
	alien->unk38 = arg1;
	alien->unk3D = building->unk11;
	alien->unk14 = building->xCoord + 0x80;
	alien->unk16 = building->yCoord;
	alien->unk18 = building->zCoord + 0x80;
	alien->unk20 |= 0x100;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80080BC0_8FB70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80080D98_8FD48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80081390_90340.s")

s32 func_8008153C_904EC(u8 arg0, s16 *arg1)
{
	u8 specIndex = alienInstances[arg0].specIndex;
	s16 result;

	if (alienInstances[arg0].unk20 & 0x1A0) {
		if (alienSpecs[specIndex].unk54 & 0x40) {
			if (alienInstances[arg0].unk2 < alienInstances[arg0].unk16) {
				if (alienInstances[arg0].unk10 < 0x80) {
					alienInstances[arg0].unk10 = (s16)(alienSpecs[specIndex].unk3E + alienInstances[arg0].unk10);
				}
			}
			if (alienInstances[arg0].unk16 < alienInstances[arg0].unk2) {
				if (alienInstances[arg0].unk10 >= -0x7F) {
					alienInstances[arg0].unk10 = (s16)(alienInstances[arg0].unk10 - alienSpecs[specIndex].unk3E);
				}
			}
		}

		result = func_80081390_90340(arg0);

		if ((s16)(result - alienInstances[arg0].unkE) < 0) {
			*arg1 -= alienSpecs[alienInstances[arg0].specIndex].unk42;
		}
		if ((s16)(result - alienInstances[arg0].unkE) > 0) {
			*arg1 += alienSpecs[alienInstances[arg0].specIndex].unk42;
		}
		return 1;
	}
	return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800816B0_90660.s")

s32 func_8008199C_9094C(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];
	s32 flags = alien->unk20;
	AlienInstance *target;

	if ((flags & 0x08000020) && !(flags & 0x01000000)) {
		if ((flags & 0x08000000) || alien->unk38 == 0x100) {
			target = (AlienInstance *)D_80052B34;
		} else {
			target = &alienInstances[alien->unk38];
			if (target->specIndex == 0) {
				alien->unk20 = flags & ~0x20020;
				return 0;
			}
		}
		alien->unk14 = target->unk0;
		alien->unk16 = target->unk2;
		alien->unk18 = target->unk4;
		if (flags & 0x20000) {
			func_800816B0_90660(arg0, target, flags, alienInstances);
		}
		return 1;
	}
	if (flags & 0x80) {
		VehicleInstance *vehicle = &vehicleInstances[alien->unk38];
		alien->unk14 = vehicle->unk0;
		alien->unk16 = vehicle->unk2;
		alien->unk18 = vehicle->unk4;
		if (flags & 0x20000) {
			func_800816B0_90660(arg0, vehicle, flags, alienInstances);
		}
		return 1;
	}
	return 0;
}

void func_80081AD4_90A84(u8 arg0, u8 arg1)
{
  s16 cur;
  s32 v0 = 0;
  AlienInstance *inst = &alienInstances[arg0];
  if (inst->unk20 & 0x20000)
  {
	cur = inst->unk38;
	if ((cur ^ 0) == arg1)
	{
	  return;
	}
	alienInstances[cur].unk27 &= ~inst->unk27;
  }
  inst->unk38 = arg1;
  inst->unk20 |= 0x20020;
  if (alienInstances[arg1].unk27 & 1)
  {
	do
	{
	  v0 = (v0 + 1) & 0xFF;
	}
	while (alienInstances[arg1].unk27 & (1 << v0));
  }
  inst->unk27 = v0;
  alienInstances[arg1].unk27 |= 1 << v0;
}

void func_80081BB0_90B60(u8 arg0) {
	AlienInstance *inst;
	s32 v1;
	u8 shift;
	inst = &alienInstances[arg0];
	v1 = inst->unk20;
	if (v1 & 0x20000) {
		inst->unk20 = v1 & ~0x20020;
		shift = inst->unk38;
		alienInstances[shift].unk27 &= ~(1 << inst->unk27);
	}
}

void func_80081C24_90BD4(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	if (!(inst->unk20 & 0x20000)) {
		func_80081AD4_90A84(arg0, inst->unk25);
	}
	func_8008064C_8F5FC(arg0);
}

void func_80081C84_90C34(u8 arg0, Unk8014DD50 *src) {
	Unk8014DD50 *dest = &D_8014E4D0[arg0];
	*dest = *src;
	D_8014DD5E[arg0][0] = src->unkE;
}

void func_80081CF0_90CA0(Unk8014DD50 *arg0, Unk8014DD50 *arg1, s16 arg2) {
	s16 temp_v0;
	s16 temp_v1;
	s16 temp_v0_2;
	s16 temp_v1_2;

	if (*(u8*)&arg1->unkC != 0) {
		temp_v0 = arg0->unk0;
		temp_v1 = arg0->unk2;
		arg0->unk0 = temp_v0 + (arg1->unk0 - temp_v0) / arg2;
		arg0->unk2 = temp_v1 + (arg1->unk2 - temp_v1) / arg2;
		arg0->unk4 = arg0->unk4 + (arg1->unk4 - arg0->unk4) / arg2;
	}
	if (*(u8*)&arg1->unkD != 0) {
		temp_v0_2 = arg0->unk8;
		temp_v1_2 = arg0->unkA;
		arg0->unk8 = temp_v0_2 + (arg1->unk8 - temp_v0_2) / arg2;
		arg0->unkA = temp_v1_2 + (arg1->unkA - temp_v1_2) / arg2;
	}
}

void func_80081E5C_90E0C(s16 arg0)
{
  s16 counter = D_8014DD50[arg0].unkE;
  if (counter != 0)
  {
	func_80081CF0_90CA0(&D_8014DD50[arg0], &D_8014E4D0[arg0], counter);
	D_8014DD50[arg0].unk6 =
		(
			(
				(D_8014E4D0[arg0].unk6 - ((s16) ((u16) D_8014DD50[arg0].unk6))) / counter
			) + (u16) D_8014DD50[arg0].unk6
		);
	D_8014DD50[arg0].unkE--;
  }
}

s8 func_80081F18_90EC8(u8 arg0, u8 arg1, u8 arg2, s16 *arg3, Unk8014DD50 **arg4) {
	u8 i;
	s8 result;

	result = -1;
	if (D_8014DD5E[*arg3][0] == 0) {
		if (alienInstances[arg0].unk36 == arg2) {
			return (s8)arg2;
		}
		for (i = 0; i < arg1; i++) {
			if (arg3[i] != -1) {
				func_80081C84_90C34((u8)arg3[i], arg4[i] + alienInstances[arg0].unk36);
			}
		}
		result = (s8)alienInstances[arg0].unk36;
		alienInstances[arg0].unk36++;
	}
	for (i = 0; i < arg1; i++) {
		if (arg3[i] != -1) {
			func_80081E5C_90E0C(arg3[i]);
		}
	}
	return result;
}

s8 func_80082084_91034(u8 arg0, u8 arg1, u8 arg2, s16 *arg3, Unk8014DD50 **arg4) {
	u8 i;
	s8 result;

	result = -1;
	if (D_8014DD5E[*arg3][0] == 0) {
		if (alienInstances[arg0].unk4B == arg2) {
			return (s8)arg2;
		}
		for (i = 0; i < arg1; i++) {
			if (arg3[i] != -1) {
				func_80081C84_90C34((u8)arg3[i], arg4[i] + alienInstances[arg0].unk4B);
			}
		}
		result = (s8)alienInstances[arg0].unk4B;
		alienInstances[arg0].unk4B++;
	}
	for (i = 0; i < arg1; i++) {
		if (arg3[i] != -1) {
			func_80081E5C_90E0C(arg3[i]);
		}
	}
	return result;
}

void func_800821F0_911A0(s32 arg0, s32 arg1, s32 arg2, u8 *arg3) {
	s32 hi;
	func_80081E5C_90E0C((s16)arg1);
	if (D_8014DD5E[arg1][0] == 0) {
		do {
			hi = func_800038E0_44E0() % arg2;
		} while (hi == alienInstances[arg0].unk36);
		alienInstances[arg0].unk36 = (u8)hi;
		func_80081C84_90C34((u8)arg1, (Unk8014DD50 *)&arg3[hi * 0x10]);
	}
}

void func_800822BC_9126C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
	s32 sp1c;
	s32 sp18;

	func_80081E5C_90E0C(arg1);
	if (D_8014DD5E[arg1][0] == 0) {
		sp18 = arg4;
		if (alienInstances[arg0].unk36 != 0) {
			sp18 = arg3;
			alienInstances[arg0].unk36 = 0;
		} else {
			alienInstances[arg0].unk36 = 1;
		}
		func_80081C84_90C34((u8)arg1, (Unk8014DD50 *)(sp18 + (func_800038E0_44E0() % arg2) * 0x10));
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082394_91344.s")

s32 func_800825E8_91598(s16 arg0, s16 arg1, s32 *arg2)
{
  s16 dx;
  s16 dz;
  s32 dist;
  s32 result;
  s32 idx;
  s32 i;
  i = D_8014D507; result = 0xFF; if (i < ((s32) D_8014D50A)) { 
	  do { idx = D_8014D408[i];
	  dx = arg0 - alienInstances[idx].unk0;
	  dz = arg1 - alienInstances[idx].unk4;
	  dist = (dx * dx) + (dz * dz);
	  if (dist < (*arg2))
	  {
		*arg2 = dist;
		result = idx & 0xFF;
	  }
	}
	while (++i < ((s32) D_8014D50A));
  }
  return result;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800826E4_91694.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800828F0_918A0.s")

s32 func_80082990_91940(s16 arg0, s16 arg1)
{
	s32 v1;
	if (arg1 < arg0) {
		v1 = 0x88;
	} else {
		v1 = 0x22;
	}

	if ((0xFF - arg1) < arg0) {
		v1 &= ~0xA0;
	} else {
		v1 &= ~0xA;
	}

	return v1;
}

s16 func_800829EC_9199C(u8 arg0, s32 arg1) {
	s32 col;
	s32 row;
	s32 mask;
	AlienInstance *inst;
	mask = 1;
	for (row = 0; row < 3; row++) {
		for (col = 0; col < 3; col++, mask <<= 1) {
			if (arg1 & mask) {
				inst = &alienInstances[arg0];
				inst->unk28 = (inst->unk0 >> 8) + col - 1;
				inst->unk29 = (inst->unk4 >> 8) + row - 1;
				return D_8013C2BC[row * 3 + col];
			}
		}
	}
	return -1;
}

s32 func_80082A98_91A48(u8 arg0)
{
  s16 new_var2;
  s16 sp1C;
  s32 v0;
  u32 new_var;
  new_var = arg0;
  new_var2 = alienInstances[arg0].unk0;
  new_var2 = new_var2 & 0xFF;
  sp1C = alienInstances[arg0].unk4;
  sp1C = sp1C & 0xFF;
  if (func_800828F0_918A0(new_var, 0x1000, 0x800) != 0)
  {
	v0 = func_80082990_91940(new_var2, sp1C);
  }
  else
  {
	return -1;
  }
  return func_800829EC_9199C(new_var, v0);
}

// https://decomp.me/scratch/M9ZDB
#ifdef NON_MATCHING
s32 func_80082B30_91AE0(u8 arg0)
{
  u8 specIndex;
  s16 xPos;
  s16 zPos;
  s32 threshold;
	s32 xx;
  specIndex = alienInstances[arg0].specIndex;
  xPos = alienInstances[arg0].unk0;
  zPos = alienInstances[arg0].unk4;
  threshold = ((u32) (alienSpecs[specIndex].unk54 & 0x180000)) >> 0x13;
	xx = func_800056D0_62D0(
		  alienInstances[arg0].unk0,
		  alienInstances[arg0].unk4);
  if (D_8003E290[xx].unkC <= threshold)
  {
	return -1;
  }
  return func_800829EC_9199C(arg0, func_80082990_91940(xPos & 0xFF, zPos & 0xFF));
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082B30_91AE0.s")
#endif

s32 func_80082C04_91BB4(u8 arg0)
{
	s16 sp1E;
	s16 sp1C;
	sp1E = alienInstances[arg0].unk0;
	sp1C = alienInstances[arg0].unk4;
	if (func_800B0C4C_BFBFC(sp1E >> 8, sp1C >> 8))
	{
		sp1E &= 0xff;
		sp1C &= 0xff;
		return func_800829EC_9199C(arg0, func_80082990_91940(sp1E, sp1C));
	}
	return -1;
}

/*  3×3 grid scan — searches a 3×3 area of grid cells around an alien's position
 for cells where func_800B325C_C220C returns 0, preferring cells at odd diagonal offsets.*/
#ifdef NON_MATCHING
s32 func_80082CA0_91C50(u8 arg0)
{
	AlienInstance *ai;
	s16 x0;
	s32 s7;
	s16 sp58;
	s32 s5;
	s32 s6;
	s32 s2;
	s32 s0;
	s32 s1;

	ai = &alienInstances[arg0];
	s7 = (s16)((ai->unk4 >> 8) - 1);
	x0 = (ai->unk0 >> 8) - 1;
	s5 = -1;
	s6 = -1;
	sp58 = s7;
	s2 = 0;

loop_1:
	s0 = 0;
	s1 = x0;
loop_2:
	if (func_800B325C_C220C((s8)s1, (s8)s7, 0x1000) == 0) {
		s5 = s0;
		s6 = s2;
		if ((s2 + s0) & 1) {
			ai->unk28 = (s8)s1;
			ai->unk29 = (s8)s7;
			return D_8013C2BC[s2 * 3 + s0];
		}
	}
	s0++;
	s1++;
	if (s0 != 3) goto loop_2;
	s2++;
	s7++;
	if (s2 != 3) goto loop_1;

	if (s5 != -1) {
		ai->unk28 = (s8)(x0 + s5);
		ai->unk29 = (s8)(sp58 + s6);
		return D_8013C2BC[s6 * 3 + s5];
	}
	return -1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082CA0_91C50.s")
#endif

s32 func_80082E38_91DE8(u8 arg0, s16 arg1) {
	s32 specIndex = alienInstances[arg0].specIndex;
	u16 new_var;
	s32 new_var2;
	s16 unk2 = alienInstances[arg0].unk2;
	new_var = unk2;
	unk2 = alienSpecs[specIndex].unk38 + new_var;
	new_var2 = unk2;
	if (new_var2 < arg1)
	{
		return 0;
	}
	return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082EB4_91E64.s")

// https://decomp.me/scratch/fQx5r
#ifdef NON_MATCHING
s32 func_80083060_92010(s16 arg0, s16 arg1, s32 arg2, u8 *arg3) {
	s32 sp18;
	s32 sp1C;
	s16 var_v1;
	s16 sp22;
	s32 sp24;

	sp24 = alienInstances[arg2].specIndex;
	sp18 = arg1;
	sp1C = arg0;
	*arg3 = func_8011E6FC_12D6AC(sp1C, sp18, &sp22);
	if ((*arg3 & 0xFF) != 0xFF) {
		var_v1 = (s16)(func_800B84D0_C7480(sp1C, sp18) >> 8);
	} else {
		var_v1 = sp22;
	}
	if (var_v1 != sp22 && !(alienSpecs[sp24].unk54 & 0x80000041)) {
		return 1;
	}
	if (*arg3 == 0xFF && (alienSpecs[sp24].unk54 & 0x20000000)) {
		return 0;
	}
	if (func_80082EB4_91E64(arg2, sp22) != 0) {
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80083060_92010.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800831A4_92154.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800836D0_92680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80083EF4_92EA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800840B0_93060.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800844D0_93480.s")

// https://decomp.me/scratch/dDCXt
#ifdef NON_MATCHING
void func_800847D0_93780(u8 arg0) {
	s32 specIdx = alienInstances[arg0].specIndex;
	AlienSpec *spec = &alienSpecs[specIdx];
	s16 rnd;

	if (spec->unk54 & 0x1000) {
		func_80084904_938B4(arg0);
		return;
	}

	rnd = (func_800038E0_44E0() >> 9) - 0x20;
	alienInstances[arg0].unk14 = alienInstances[arg0].unk0;
	alienInstances[arg0].unk18 = alienInstances[arg0].unk4;
	alienInstances[arg0].unk34 = 0x2000 / spec->unk42 + (-rnd < rnd ? rnd : -rnd);
	alienInstances[arg0].unk47 |= 1;
	alienInstances[arg0].unk2A += (rnd < 0 ? -1 : 1) << 13;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800847D0_93780.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084904_938B4.s")

// https://decomp.me/scratch/JTTha
#ifdef NON_MATCHING
void func_80084AE4_93A94(AlienInstance *arg0, AlienInstance *arg1)
{
  f32 new_var;
  f32 sp24;
  
  f32 sp1C;
  s32 sp18;AlienSpec *spec;
  if (((s8 *) arg1)[13] == (-2))
  {
	spec = (AlienSpec *) (&vehicleSpecs[arg1->specIndex]);
  }
  else
  {
	spec = &alienSpecs[arg1->specIndex];
  }
  sp18 = alienSpecs[arg0->specIndex].unkC + spec->unkC;
  sp24 = (f32) (arg0->unk0 - arg1->unk0);
  new_var = (f32) (arg0->unk2 - arg1->unk2);
  sp1C = (f32) (arg0->unk4 - arg1->unk4);
  arg0->unk10 = (s16) ((s32) (((f32) arg0->unk10) + (new_var * 4.0f)));
  arg0->unkE = func_80003824_4424(sp24, sp1C);
  arg0->unk12 = (s16) ((s32) ((((f32) sp18) - sqrtf((sp24 * sp24) + (sp1C * sp1C))) * 4.0f));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084AE4_93A94.s")
#endif

void func_80084C48_93BF8(VehicleInstance *arg0)
{
	s32 dx;
	s32 dx2;  
	s32 dy;
	s32 dx3;  
	s16 angle;

	dx = D_80052B34->unk0 - arg0->unk0;
	dy = D_80052B34->unk4 - arg0->unk4;
	sqrtf((f32) ((dx * dx) + (dy * dy)));
	angle = func_80003824_4424((f32) dx, (f32) dy);
	// Force player off in direction %d
	osSyncPrintf(&D_80141D98, angle);
	func_80102DDC_111D8C(D_80052B34, angle, 0x2000, 20.0f);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084CF8_93CA8.s")

// https://decomp.me/scratch/qqop3
#ifdef NON_MATCHING
void func_80084D80_93D30(u8 arg0)
{
  u8 new_var;
  alienInstances[arg0].unk20 &= 0xFEFFFFFF;
  if ((D_80052ACA != 2) && (!(alienInstances[arg0].unk20 & 0x100000)))
  {
	func_800A4150_B3100(alienInstances[arg0].unk25);
	if (alienInstances[alienInstances[arg0].unk26].specIndex == 0x19)
	{
	  alienInstances[arg0].unk25 = alienInstances[arg0].unk26;
	  if (alienInstances[arg0].specIndex == 3)
	  {
		new_var = alienInstances[arg0].unk26;
		alienInstances[arg0].unk38 = new_var;
		alienInstances[arg0].unk20 |= 0x2020;
		alienInstances[arg0].unk20 &= ~0x800;
	  }
	}
	alienInstances[arg0].unk26 = 0;
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084D80_93D30.s")
#endif

// Get X/Z distance between two aliens
s32 func_80084E54_93E04(AlienInstance *alien1, AlienInstance *alien2)
{
	s32 xDiff;
	s32 zDiff;
	s16 zPos;
	s32 halfAbsoluteXDiff;
	s32 halfAbsoluteZDiff;
	s32 absoluteXDiff;
	s32 absoluteZDiff;
	xDiff = alien1->unk0 - alien2->unk0;
	if ((-xDiff) < xDiff)
	{
		absoluteXDiff = xDiff;
	}
	else
	{
		absoluteXDiff = -xDiff;
	}
	halfAbsoluteXDiff = absoluteXDiff;
	if (!halfAbsoluteXDiff) {}
	halfAbsoluteXDiff = halfAbsoluteXDiff >> 1;
	zDiff = alien1->unk4 - alien2->unk4;
	if ((-zDiff) < zDiff)
	{
		absoluteZDiff = zDiff;
	}
	else
	{
		absoluteZDiff = -zDiff;
	}
	halfAbsoluteZDiff = absoluteZDiff >> 1;
	return ((s32) sqrtf(
		(f32) ((halfAbsoluteXDiff * halfAbsoluteXDiff) + (halfAbsoluteZDiff * halfAbsoluteZDiff))
	)) * 2;
}

// get distance between alien and vehicle
s32 func_80084F00_93EB0(VehicleInstance *vehicle, AlienInstance *alien)
{
  s32 hx;
  s32 hy;
  s32 new_var2;
  s32 hz;
  s32 diff = ((0, vehicle->unk0)) - alien->unk0;
  s32 new_var;
  s32 var_v0 = -diff;
  if ((-diff) < diff)
  {
	var_v0 = diff;
  }
  else
  {
	var_v0 = -diff;
  }
  new_var = vehicle->unk2 - alien->unk2;
  hx = var_v0 >> 1;
  diff = new_var;
  new_var = diff;
  var_v0 = -diff;
  if ((-diff) < diff)
  {
	var_v0 = new_var;
  }
  else
  {
	var_v0 = -diff;
  }
  hy = var_v0 >> 1;
  var_v0 = -diff;
  new_var2 = vehicle->unk4 - alien->unk4;
  diff = new_var2;
  if ((-diff) < diff)
  {
	var_v0 = diff;
  }
  else
  {
	var_v0 = -diff;
  }
  hz = var_v0 >> 1;
  return ((s32) sqrtf((f32) (((hx * hx) + (hy * hy)) + (hz * hz)))) * 2;
}

// https://decomp.me/scratch/iDb3d
#ifdef NON_MATCHING
s32 func_80084FE8_93F98(u8 arg0, s32 arg1)
{
	s16 sp30;
  s32 new_var;
	s32 new_var3;
	s32 var_v1;
	
  new_var3 = D_80052B34->unk0 - alienInstances[arg0].unk0;

  new_var = D_80052B34->unk4 - alienInstances[arg0].unk4;

  sp30 =func_80003824_4424((f32) new_var3, (f32) new_var);
  if ((-(func_80003824_4424((f32) new_var3, (f32) new_var) - alienInstances[arg0].unk6)) <
	  (sp30 - alienInstances[arg0].unk6))
  {
	var_v1 = func_80003824_4424((f32) new_var3, (f32) new_var) - alienInstances[arg0].unk6;
  }
  else
  {
	var_v1 = -(func_80003824_4424((f32) new_var3, (f32) new_var) - alienInstances[arg0].unk6);
  }
  if (var_v1 < (u16)arg1)
  {
	return 1;
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084FE8_93F98.s")
#endif

// https://decomp.me/scratch/UfGTS
#ifdef NON_MATCHING
s32 func_800850DC_9408C(s32 arg0, u16 arg1) {
	s16 sp30;
	f32 sp24;
	f32 sp20;
	s32 var_v1;
	s32 var_v0;
	AlienInstance *s0;

	s0 = &alienInstances[arg0 & 0xFF];
	sp24 = (f32)(s0->unk14 - s0->unk0);
	sp20 = (f32)(s0->unk18 - s0->unk4);
	sp30 = func_80003824_4424(sp24, sp20);
	if (-(func_80003824_4424(sp24, sp20) - s0->unk6) < (sp30 - s0->unk6)) {
		var_v1 = func_80003824_4424(sp24, sp20) - s0->unk6;
	} else {
		var_v1 = -(func_80003824_4424(sp24, sp20) - s0->unk6);
	}
	var_v0 = 0;
	if (var_v1 < (s32)arg1) {
		var_v0 = 1;
	}
	return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800850DC_9408C.s")
#endif

#ifdef NON_MATCHING
s32 func_800851C8_94178(u8 arg0, u8 arg1, u16 arg2) {
	Unk8014DD50 *weapon;
	AlienInstance *alien;
	s32 sp54;
	s32 sp50;
	s32 sp4C;
	s16 sp44;
	f32 sp34;
	f32 sp30;
	s32 var_v1;

	alien = &alienInstances[arg0];
	weapon = &D_8014DD50[arg1];
	func_80128428_1373D8(alien, weapon->unk0, 0, weapon->unk4, &sp54, &sp50, &sp4C);
	sp34 = (f32)(D_80052B34->unk0 - sp54);
	sp30 = (f32)(D_80052B34->unk4 - sp4C);
	sp44 = func_80003824_4424(sp34, sp30);
	if (-(s16)(func_80003824_4424(sp34, sp30) - (alien->unk6 - (u16)weapon->unk6)) < (s16)(sp44 - (alien->unk6 - (u16)weapon->unk6))) {
		var_v1 = (s16)(func_80003824_4424(sp34, sp30) - alien->unk6 + (u16)weapon->unk6);
	} else {
		var_v1 = -(s16)(func_80003824_4424(sp34, sp30) - alien->unk6 + (u16)weapon->unk6);
	}
	if (var_v1 < (s32)arg2) {
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800851C8_94178.s")
#endif

// https://decomp.me/scratch/ftkqT
#ifdef NON_MATCHING
s32 func_80085340_942F0(u8 arg0, u16 arg1) {
	s32 var_v1;
	s32 diff_y;
	s32 diff_x;
	s16 sp22;
	f32 sp1C;
	f32 sp18;

	diff_x = alienInstances[arg0].unk0 - D_80052B34->unk0;
	diff_y = alienInstances[arg0].unk4 - D_80052B34->unk4;
	sp1C = (f32)diff_x;
	sp18 = (f32)diff_y;
	sp22 = func_80003824_4424(sp1C, sp18);
	if (-(func_80003824_4424(sp1C, sp18) - D_80052B34->unk6) < (sp22 - D_80052B34->unk6)) {
		var_v1 = func_80003824_4424(sp1C, sp18) - D_80052B34->unk6;
	} else {
		var_v1 = -(func_80003824_4424(sp1C, sp18) - D_80052B34->unk6);
	}
	if (var_v1 < (s32)arg1) {
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085340_942F0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085448_943F8.s")

s32 func_80085524_944D4(u8 arg0) {
	return ((u32)(arg0 + D_80052A8C) % 5U) == 0;
}

void func_8008554C_944FC(u8 arg0)
{
	s32 sp4C;
	s32 sp48;
	s32 sp44;
	s32 sp40;
	s32 sp3C;
	s32 sp38;
	sp4C = alienInstances[arg0].unk0;
	if (alienInstances[arg0].unk20 & 0xC0)
	{
		sp48 = alienInstances[arg0].unk2;
	}
	else
	{
		sp48 = alienInstances[arg0].unk2 + 0x64;
	}
	sp44 = alienInstances[arg0].unk4;
	sp40 = D_80052B34->unk0;
	if (D_80222A70 >= D_80052B34->unk2)
	{
		sp3C = D_80052B34->unk2;
	}
	else
	{
		sp3C = D_80052B34->unk2 + 0x32;
	}
	sp38 = D_80052B34->unk4;
	if (func_80085524_944D4(arg0) != 0)
	{
		if ((func_800862B4_95264(arg0, sp4C, sp48, sp44, sp40, sp3C, sp38) != 0) ||
			(func_80126268_135218((s16) sp4C, (s16) sp48, (s16) sp44, &sp40, &sp3C, &sp38, 0, 6) != (arg0 * 0)))
		{
			alienInstances[arg0].unk4E = 0;
		}
		else
		{
			alienInstances[arg0].unk4E = 1;
		}
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085690_94640.s")

void func_80085748_946F8(u8 arg0) {
	alienInstances[arg0].unk20 |= 0x08000100;
}

s32 func_80085780_94730(u8 arg0) {
	if (alienInstances[arg0].unk20 & 0x80000000) {
		alienInstances[arg0].unk20 |= 0x08000100;
		return 1;
	}
	return 0;
}

s32 func_800857D0_94780(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	if (alienInstances[inst->unk25].unk20 & 0x80000000) {
		inst->unk20 |= 0x08000100;
		return 1;
	}
	return 0;
}

s32 func_80085838_947E8(u8 arg0)
{
	s32 abs_dx;
	s32 abs_dz;
	s32 max;
	s32 dx = D_80052B34->unk0 - alienInstances[arg0].unk0;
	s32 dz = D_80052B34->unk4 - alienInstances[arg0].unk4;

	abs_dx = -dx < dx ? dx : -dx;
	abs_dz = -dz < dz ? dz : -dz;
	max = abs_dz < abs_dx
		? -dx < dx ? dx : -dx
		:-dz < dz ? dz : -dz;

	if (max < 0x1800)
	{
		return 1;
	}
	return 0;
}

s32 func_80085900_948B0(u8 arg0, s32 arg1)
{
	s32 abs_dx;
	s32 abs_dz;
	s32 max;
	s32 dx = D_80052B34->unk0 - alienInstances[arg0].unk0;
	s32 dz = D_80052B34->unk4 - alienInstances[arg0].unk4;

	abs_dx = -dx < dx ? dx : -dx;
	abs_dz = -dz < dz ? dz : -dz;
	max = abs_dz < abs_dx
		? -dx < dx ? dx : -dx
		: -dz < dz ? dz : -dz;

	if (arg1 < max)
	{
		alienInstances[arg0].unk20 |= 0x08000100;
		return 1;
	}
	alienInstances[arg0].unk20 &= ~0x100;
	return 0;
}

s32 func_800859F4_949A4(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	if (func_80084FE8_93F98(arg0, (alienSpecs[inst->specIndex].unk51 * 0xC8) & 0xFFFF) != 0) {
		inst->unk20 |= 0x08000100;
		return 1;
	}
	return 0;
}

// https://decomp.me/scratch/WohYJ
#ifdef NON_MATCHING
s16 func_80085A9C_94A4C(s16 arg0, s16 arg1, s32 arg2, s32 arg3, s16 arg4)
{
  s16 diff;
  diff = arg1 - arg0;
  if (arg4 < diff && arg0 < arg2)
  {
	arg0 += arg4;
	  return arg0;
  }
  if (diff < -arg4 && arg3 < arg0)
  {
	
	  arg0 -= arg4;
	
  }
  return arg0;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085A9C_94A4C.s")
#endif

// https://decomp.me/scratch/K2a1e
#ifdef NON_MATCHING
s32 func_80085B14_94AC4(u8 arg0, s16 arg1, s32 arg2, s16 arg3, s16 arg4) {
	u8 sp47;
	s16 sp42;
	s16 temp_t1;
	s32 temp_a0;
	s32 temp_v1;
	s32 var_v0;
	AlienInstance *temp_ptr;
	s32 temp_dx;
	s32 temp_dy;

	temp_ptr = &alienInstances[arg0];
	sp47 = temp_ptr->specIndex;
	temp_dx = arg3 - temp_ptr->unk0;
	temp_dy = arg4 - temp_ptr->unk4;
	temp_t1 = func_80003824_4424((f32)temp_dx, (f32)temp_dy) - temp_ptr->unk6;
	sp42 = temp_t1;

	(&D_8014DD50[arg1])->unk6 = func_80085A9C_94A4C((&D_8014DD50[arg1])->unk6, (s16)(temp_t1 * -1), arg2, -arg2, alienSpecs[sp47].unk42);

	temp_v1 = (&D_8014DD50[arg1])->unk6 + sp42;
	temp_a0 = -temp_v1;
	var_v0 = (temp_a0 < temp_v1) ? temp_v1 : temp_a0;
	if ((alienSpecs[sp47].unk42 * 2) < var_v0) {
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085B14_94AC4.s")
#endif

s16 func_80085C50_94C00(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5) {
	s16 temp_v0 = arg3 - arg0;
	s16 temp_v1 = arg5 - arg2;
	return func_80003824_4424(sqrtf((f32)((temp_v0 * temp_v0) + (temp_v1 * temp_v1))), (f32) -(s16)(arg4 - arg1));
}

void func_80085CE0_94C90(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
	u8 sp27 = alienInstances[arg0].specIndex;
	(&D_8014DD50[arg1])->unkA = func_80085A9C_94A4C((&D_8014DD50[arg1])->unkA,
		func_80085C50_94C00(alienInstances[arg0].unk0,
			alienInstances[arg0].unk2 + (&D_8014DD50[arg1])->unk2,
			alienInstances[arg0].unk4,
			arg2, arg3, arg4),
		0x71C, -0x1555, alienSpecs[sp27].unk42);
}

void func_80085DC8_94D78(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
	func_80085CE0_94C90(arg0, arg1, arg2, arg3, arg4);
	func_80085B14_94AC4(arg0, arg1, 0x2000, arg2, arg4);
}

// https://decomp.me/scratch/gA9AH
#ifdef NON_MATCHING
s32 func_80085E2C_94DDC(u8 arg0, s16 arg1, s32 arg2)
{
  u8 sp47;
  s16 sp42;
  s32 temp_v1;
  
  s32 temp_dx;
  s32 temp_dy;
	AlienInstance *temp_ptr;
  temp_ptr = &alienInstances[arg0];
  sp47 = temp_ptr->specIndex;
  temp_dx = D_80052B34->unk0 - temp_ptr->unk0;
  temp_dy = D_80052B34->unk4 - temp_ptr->unk4;
  sp42 = func_80003824_4424((f32) temp_dx, (f32) temp_dy) - temp_ptr->unk6;
  (&D_8014DD50[arg1])->unk6 = func_80085A9C_94A4C((&D_8014DD50[arg1])->unk6, (s16) (sp42 * (-1)), arg2, -arg2, alienSpecs[sp47].unk42);
  temp_v1 = (&D_8014DD50[arg1])->unk6 + sp42;
  if ((alienSpecs[sp47].unk42 * 2) < ((-temp_v1 < temp_v1) ? (temp_v1) : (-temp_v1)))
  {
	return 1;
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085E2C_94DDC.s")
#endif

// https://decomp.me/scratch/26Z9e
#ifdef NON_MATCHING
s32 func_80085F68_94F18(u8 arg0, s16 arg1, s32 arg2)
{
  s16 new_var3;
  u8 new_var;
  int new_var2;
  u8 sp67;
  s16 sp62;
  s16 new_var4;
  AlienInstance *sp40;

  s32 sp54;
  s32 sp50;
  s32 sp4C;
  sp40 = &alienInstances[arg0];
  sp67 = (new_var = sp40->specIndex);
  new_var3 = arg1;
  func_80128428_1373D8(sp40, D_8014DD50[new_var3].unk0, 0, D_8014DD50[arg1].unk4, &sp54, &sp50, &sp4C);
  new_var2 = D_80052B34->unk0 - sp54;
  sp62 = func_80003824_4424((f32) new_var2, (f32) ((new_var4 = D_80052B34->unk4) - sp4C)) - sp40->unk6;
  (&D_8014DD50[arg1])->unk6 = func_80085A9C_94A4C((&D_8014DD50[arg1])->unk6, (s16) (sp62 * (-1)), arg2, -arg2, alienSpecs[sp67].unk42);
  {
	s32 temp_v1 = (&D_8014DD50[arg1])->unk6 + sp62;
	s32 temp_a0 = -temp_v1;
	if ((alienSpecs[sp67].unk42 * 2) < ((temp_a0 < temp_v1) ? (temp_v1) : (temp_a0)))
	{
	  return 1;
	}
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085F68_94F18.s")
#endif


s16 func_800860CC_9507C(s16 arg0, s16 arg1, s16 arg2) {
	s16 pad;
	s16 sp1C;
	s16 temp_v1;
	s16 temp_a3;
	temp_v1 = D_80052B34->unk0 - arg0;
	sp1C = D_80052B34->unk2 - arg1;
	temp_a3 = D_80052B34->unk4 - arg2;
	return func_80003824_4424(sqrtf((f32)((temp_v1 * temp_v1) + (temp_a3 * temp_a3))), (f32)-sp1C);
}

void func_80086164_95114(u8 arg0, s16 arg1)
{
	u8 sp27 = alienInstances[arg0].specIndex;
	(&D_8014DD50[arg1])->unkA = func_80085A9C_94A4C((&D_8014DD50[arg1])->unkA,
		func_800860CC_9507C(alienInstances[arg0].unk0,
			alienInstances[arg0].unk2 + (&D_8014DD50[arg1])->unk2,
			alienInstances[arg0].unk4),
		0x71C,
		-0x1555,
		alienSpecs[sp27].unk42);
}

void func_80086230_951E0(u8 arg0, s16 arg1, s32 arg2) {
	func_80086164_95114(arg0, arg1);
	func_80085E2C_94DDC(arg0, arg1, arg2);
}

void func_80086270_95220(OutputStruct_8012B150 *arg0) {
	Unk80152B80 *entry;
	if (arg0 == NULL) {
		return;
	}
	entry = (Unk80152B80 *)(D_80145BE0 + arg0->unk20 * 0x18);
	if (entry->unkE == 0) {
		return;
	}
	arg0->unk18 = (s32) D_80052B34;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800862B4_95264.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800865F4_955A4.s")

// https://decomp.me/scratch/16XTy
#ifdef NON_MATCHING
void func_800868A4_95854(u8 arg0, s32 arg1, s16 arg2, s16 arg3)
{
  s32 sp50;
  s32 sp4C;
  s32 sp48;
  f64 sp40;
  f64 sp38;
  f32 sp30;
  f32 sp2C;
  f32 temp_f12;
  sp38 = ((f64) ((f32) coss(alienInstances[arg0].unk6 + arg2))) / 32768.0;
  sp50 = (s32) (((f64) alienInstances[arg0].unk0) + (D_80141E40 * sp38));
  sp40 = ((f64) ((f32) sins((alienInstances[arg0].unk6 + arg2)))) / 32768.0;
  sp48 = (s32) (((f64) alienInstances[arg0].unk4) + (D_80141E48 * sp40));
  temp_f12 = (f32) ((((f64) ((f32) arg3)) * D_80141E50) / (32768.0 * 1.0));
  sp30 = __cosf(temp_f12);
  sp2C = sinf(temp_f12) / sp30;
  sp4C = (s32) (((f32) alienInstances[arg0].unk2) + (D_80141E58 * sp2C));
  func_800865F4_955A4(arg0, arg1, sp50, sp4C, sp48);
  temp_f12 = (f32) ((((f64) ((f32) arg3)) * D_80141E50) / (32768.0 * 1.0));
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800868A4_95854.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80086A34_959E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80086D70_95D20.s")

s32 func_800870D8_96088(s32 arg0, s32 arg1)
{
	s32 new_var;
	u32 var_v1;
	if (arg1 != 0)
	{
		var_v1 = ((u32) D_80052A8C) % ((u32) arg1);
	}
	else
	{
		var_v1 = 0;
	}
	if ((arg1 / 2) < ((s32) var_v1))
	{
		return (var_v1 * ((u32) arg0)) - (new_var = ((arg1 * 3) * arg0) / 4);
	}
	return ((arg1 * arg0) / 4) - (var_v1 * arg0);
}

s32 func_80087188_96138(u8 arg0, s32 arg1, s32 arg2) {
	func_80086A34_959E4(arg0, arg1, func_800870D8_96088(0x80, arg2));
}

// https://decomp.me/scratch/1Apcc
#ifdef NON_MATCHING
s32 func_800871CC_9617C(u8 arg0, s32 arg1, s32 arg2)
{
  s16 dx;
  s16 dz;
  f64 new_var;
  s16 angle;
  s16 cos2;
  s16 sin2;
  s16 sin1;
  s16 cos1;
  angle = func_800870D8_96088(0x80, arg2);
  dx = D_80052B34->unk0 - alienInstances[arg0].unk0;
  dz = D_80052B34->unk4 - alienInstances[arg0].unk4;
  cos1 = coss(angle);
  sin1 = sins(angle);
  sin2 = sins(angle);
  cos2 = coss(angle);
  if (func_800865F4_955A4(arg0, arg1, (alienInstances[arg0].unk0 + ((((f32) sin1) / 32768.0) * dz)) + (((f64) dx) * ((new_var = (f64) ((f32) cos1)) / 32768.0)), D_80052B34->unk2, (alienInstances[arg0].unk4 + ((((f32) cos2) / 32768.0) * dz)) - (dx * (((f32) sin2) / 32768.0))) != 0)
  {
	return 1;
  }
  return 0;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800871CC_9617C.s")
#endif

void func_8008735C_9630C(u8 arg0) {
	alienInstances[arg0].unk20 |= 0x100;
	func_8008064C_8F5FC(arg0);
}

void func_800873A8_96358(u8 arg0)
{
  if (alienInstances[arg0].unk20 & 0x100)
  {
	if (func_80085838_947E8(arg0) != 0)
	{
		func_8008735C_9630C(arg0);
		return;
	}
  }
  alienInstances[arg0].unk12 = 0;
}

void func_8008741C_963CC(u8 arg0, s16 arg1) {
	u8 specIndex;
	specIndex = alienInstances[arg0].specIndex;
	if (func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE) != 0) {
		arg1 = 0;
	}
	if (arg1 < alienInstances[arg0].unk12) {
		alienInstances[arg0].unk12 -= alienSpecs[specIndex].unk3E;
		if (alienInstances[arg0].unk12 < arg1) {
			alienInstances[arg0].unk12 = arg1;
		}
	}
	if (alienInstances[arg0].unk12 < arg1) {
		alienInstances[arg0].unk12 += alienSpecs[specIndex].unk3E;
		if (arg1 < alienInstances[arg0].unk12) {
			alienInstances[arg0].unk12 = arg1;
		}
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008751C_964CC.s")

void func_80087720_966D0(u8 arg0, s32 arg1)
{
  AlienInstance *inst;
 if (arg1 < 0xFA0) { func_8008554C_944FC(arg0); inst = &alienInstances[arg0]; } else { inst = &alienInstances[arg0]; inst->unk4E = 1;
  }
  if ((inst->unk4E == 0) && (arg1 < 0x7D0))
  {
	inst->unk20 |= 0x800;
	inst += 0;
	inst->unk20 &= ~0x100;
	return;
  }
  inst->unk20 |= 0x100;
  inst->unk20 &= ~0x800;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800877E8_96798.s")

s32 func_800879A4_96954(u8 arg0, s16 arg1, u8 arg2)
{
  u8 sp47;
  s32 sp40;
  s32 sp3C;
  s32 sp38;
  s32 temp_v1;
  s32 temp_a0;
  s32 temp_a1;
  s32 var_v0;
  sp47 = D_80052B34->unk1A;
  func_80128504_1374B4(&alienInstances[arg0], arg2, &sp40, &sp3C, &sp38);
  temp_v1 = D_80052B34->unk0 - sp40;
  temp_a0 = D_80052B34->unk2 - sp3C;
  temp_a1 = D_80052B34->unk4 - sp38;
  if ((s32) sqrtf((temp_v1 * temp_v1) + (temp_a0 * temp_a0) + (temp_a1 * temp_a1)) <
	  (vehicleSpecs[sp47].unkC + arg1))
  {
	return 1;
  }
  else
  {
	return 0;
  }
}

void func_80087AAC_96A5C(u8 arg0) {
	if (!(alienInstances[arg0].unk20 & 0x300000)) {
		alienInstances[arg0].unk12 = 0;
		alienInstances[arg0].unk2C = 0x28;
		alienInstances[arg0].unk20 |= 0x200000;
	}
}

// https://decomp.me/scratch/Ue9P8
#ifdef NON_MATCHING
void func_80087AFC_96AAC(u8 arg0)
{
  s32 flags;
  s32 step;
  s32 spec_idx = alienInstances[arg0].specIndex;
  step = 4;
	flags = alienInstances[arg0].unk20 & 0x600;
  if (flags)
  {
	step = 1;
  }
  if (alienInstances[arg0].unk2C > 0)
  {
	if ((alienInstances[arg0].unk2C == 8) ||
		((flags == 0) && ((alienInstances[arg0].unk2C & (~3)) == 0x20)))
	{
	  if ((alienSpecs[spec_idx].unk16 & 0xF) == 1)
	  {
		func_800CF80C_DE7BC(
			alienInstances[arg0].unk0,
			alienInstances[arg0].unk2,
			alienInstances[arg0].unk4,
			alienSpecs[spec_idx].unk38, 0xC8, 0xC8, 0xDC, 1);
	  }
	  else
	  {
		func_800CF80C_DE7BC(
			alienInstances[arg0].unk0,
			alienInstances[arg0].unk2,
			alienInstances[arg0].unk4,
			alienSpecs[spec_idx].unkC, 0xC8, 0xC8, 0xDC, 1);
	  }
	}
	alienInstances[arg0].unk2C -= step;
  }
  else
  {
	func_80079910_888C0(arg0);
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80087AFC_96AAC.s")
#endif

void func_80087C50_96C00(u8 arg0) {
	alienInstances[arg0].unk3A = 0;
}

void func_80087C74_96C24(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	if (inst->unk3A != 0) {
		inst->unk3A--;
	} else {
		inst->unk2A = func_800038E0_44E0();
		inst->unk3A = func_800038E0_44E0() >> 10;
		if (func_800038E0_44E0() < 0x2000) {
			inst->unk20 |= 0x40;
		} else {
			inst->unk20 &= ~0x40;
		}
	}
	func_8008064C_8F5FC(arg0);
}

void func_80087D18_96CC8(u8 arg0)
{
  s32 dx;
  s32 dz;
  AlienInstance *inst;
  u8 specIndex;
  specIndex = alienInstances[arg0].specIndex;
  dx = alienInstances[arg0].unk0 - D_80052B34->unk0;
  dz = alienInstances[arg0].unk4 - D_80052B34->unk4;
  if (((s32) sqrtf((f32) (((dx * dx) >> 2) + ((dz * dz) >> 2)))) < 0x258)
  {
	if (func_80084FE8_93F98(arg0, 0x2000) != 0)
	{
	  func_8008741C_963CC(arg0, -alienSpecs[specIndex].unk40);
	  return;
	}
  }
  alienInstances[arg0].unk20 |= 0x40;
  func_8008064C_8F5FC(arg0);
}

s32 func_80087E30_96DE0(void) {
	AlienInstance *alien = &alienInstances[0xFE];
	s32 i = 0xFE;
	do {
		if ((alien->specIndex >= 2 || (alien->specIndex == 1 && (alien->unk24 == 1 || alien->unk24 == 0x1D)))
			&& alien->specIndex < 0x1A && alien->specIndex != 0x18 && alien->specIndex != 0x17
			&& !(alien->unk20 & 0x100000)) {
			func_80088760_97710(alien);
		}
		alien--;
	} while (i--);
}

void func_80087F08_96EB8(void)
{
  AlienWaveInstance *waves;
  AlienInstance *alien;
  s32 i;
  waves = D_80223780;
 alien = alienInstances; for (i = 0; i < 0xFF; i++, alien++) {
	if ((alien->specIndex == 2) || (alien->specIndex == 0x20))
	{
	  func_80088760_97710(alien);
	}
	else
	  if (((alien->specIndex != 1) && (alien->specIndex != 0x18)) && (alien->specIndex != 0x17))
	{
	  if (alien->unk3E != 0xFF)
	  {
		waves[alien->unk3E].unk11 = 1;
	  }
	  func_80087AAC_96A5C(i);
	}
  }

}

void func_80088000_96FB0(s16 arg0)
{
  s32 i;
  for (i = 0; i != 0xFF; i++)
  {
	if (arg0 == i)
	{
		continue;
	}
	if (alienInstances[i].specIndex == 1)
	{
		func_80079910_888C0(i);
	}
	else if (alienInstances[i].specIndex != 0)
	{
		func_80088760_97710(&alienInstances[i]);
	}  
  }
}

s32 func_800880B8_97068(void)
{
	s16 i;
	u8 new_var;
	AlienInstance *inst;
	for (i = D_8014D509; i < D_8014D50A; i++)
	{
		inst = &alienInstances[new_var = D_8014D408[i]];
		if ((inst->specIndex == 0x19) && (((s32) inst->unk24) >= (((u8) D_80048168) - 2)))
		{
			return 1;
		}
	}

  return 0;
}

// 000881d4 Multiplies Adam's weapon damage by 1.8 in easy mode
// 800885C8 halves alien death points in easy
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80088154_97104.s")

// maybe kill alien?
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80088760_97710.s")

void func_80088E10_97DC0(s16 arg0) {
	D_8014DD50[arg0].unk2 += 0x8000;
}

// https://decomp.me/scratch/ZTo6Z
#ifdef NON_MATCHING
void func_80088E40_97DF0(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s8 arg5, s8 arg6, s8 arg7)
{
  s16 sp3A;
  s32 sp30;
  s32 sp34;
  s32 sp2C;

  func_80128428_1373D8(&alienInstances[arg0], arg2, arg3, arg4, &sp34, &sp30, &sp2C);
  func_800DF848_EE7F8((s16) sp34, (s16) sp30, (s16) sp2C, 0x50, 0);
  sp3A = func_800C7924_D68D4((s16) sp34, (s16) sp30, (s16) sp2C, 0x40, -8, alienSpecs[alienInstances[arg0].specIndex].unkC, func_8008916C_9811C(arg0, arg1), 1);
  func_800C80F0_D70A0((0x4000 - alienInstances[arg0].unk6) & 0xFFFF, 0, 0, sp3A);
  func_800C8184_D7134(arg5, arg6, arg7, sp3A);
  func_80088E10_97DC0(arg1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80088E40_97DF0.s")
#endif

s32 func_80088F78_97F28(u8 arg0) {
	s32 unk0 = *(s32 *)&alienSpecs[alienInstances[arg0].specIndex];
	if (((u32)unk0 >> 0x18) == 1) {
		unk0 = func_80011FAC_12BAC((void *)unk0);
	} else {
		unk0 = func_80011F90_12B90((void *)unk0);
	}
	return *(s32 *)(unk0 + 4);
}

// https://decomp.me/scratch/Zpten
#ifdef NON_MATCHING
s32 func_80088FFC_97FAC(s8 **arg0, s16 arg1, s16 arg2)
{
  s8 **new_var2;
  int new_var3;
  s32 var_s0;
  s32 var_a3;
  s8 *var_t8;
  s8 **new_var;
  var_a3 = 0;
  var_s0 = 0;
  while (arg2 != (-1))
  {
	loop_2:
	var_t8 = (*arg0) + 8;

	new_var = arg0;
	if ((*(*new_var)) == 1)
	{
	  var_s0 += 1;
	}
	else if ((*(*arg0)) == (-0x43))
	{
	  var_s0 -= (0, 1);
	}
	new_var3 = arg2 == arg1;
	*arg0 = var_t8;
	if (var_s0 != 1)
	{
	  goto loop_2;
	}
	if (var_t8[0] != 6)
	{
	  goto loop_2;
	}
	if (new_var3)
	{
	  var_a3 = *((s32 *) (var_t8 + 4));
	}
	else if (D_8014DD50[arg2].unkC != (-1))
	{
	  var_a3 = func_80088FFC_97FAC(arg0, arg1, D_8014DD50[arg2].unkC);
	}
	if (var_a3 != 0)
	{
	  return var_a3;
	}
	arg2 = D_8014DD50[arg2].unkD;
  }

  do
  {
	new_var2 = arg0;
	if ((*(*arg0)) == 1)
	{
	  var_s0 += 1;
	}
	else if ((*(*arg0)) == (-0x43))
	{
	  var_s0 -= 1;
	}
	*new_var2 = (*arg0) + 8;
  }
  while (var_s0 != 0);
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80088FFC_97FAC.s")
#endif

s32 func_8008916C_9811C(u8 arg0, s16 arg1) {
	s16 padX;
	s16 sp24;
	s32 sp20;
	padX = alienInstances[arg0].unkC;
	sp24 = D_8014DD50[padX].unkC;
	sp20 = *(s32 *)&alienSpecs[alienInstances[arg0].specIndex];
	sp20 = func_80012000_12C00(sp20);
	return func_80088FFC_97FAC(&sp20, arg1, sp24);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80089200_981B0.s")

void func_800893C8_98378(s32 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s32 arg7, s32 arg8) {
	s16 temp;
	Unk8014DD50 sp24;

	sp24 = D_8013C2D0;

	if (D_8014DD50[arg1].unkE == 0) {
		temp = (s16)(func_800038E0_44E0() % (arg3 - arg2) + arg2);
		if (arg4 < D_8014E4D0[arg1].unk6) {
			temp = -temp;
		}
		sp24.unk6 = temp + arg4;
		sp24.unkA = func_800038E0_44E0() % arg6 + arg5;
		sp24.unkE = arg7;
		if (arg7 != arg8) {
			sp24.unkE += func_800038E0_44E0() % (arg8 - arg7);
		}
		func_80081C84_90C34((u8)arg1, &sp24);
	}
	func_80081E5C_90E0C(arg1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80089574_98524.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80089A2C_989DC.s")

void func_80089C40_98BF0(u8 arg0) {
	if (!(alienInstances[arg0].unk20 & 0x100000)) {
		if (alienInstances[arg0].unk47 & 8) {
			func_80124118_1330C8(D_80052B34, D_80146212[alienInstances[arg0].unk26].unk0);
		}
		func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0x28, 0);
		alienInstances[arg0].unk2C = 1;
	} else {
		func_800E0AE0_EFA90(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80089D04_98CB4.s")

void func_80089EB4_98E64(u8 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4)
{
	u8 new_var;
	new_var = alienInstances[arg0].specIndex;
	if (!(alienInstances[arg0].unk20 & 0x100000))
	{
		if (alienInstances[arg0].unk20 & 0x600)
		{
			func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16) alienSpecs[new_var].unkC, arg2);
		}
		alienInstances[arg0].unk2C = arg1;
		return;
	}
	if ((alienInstances[arg0].unk2C == 1) && (alienInstances[arg0].unk20 & 0x600))
	{
		func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16) alienSpecs[new_var].unkC, arg3);
	}
}


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80089FAC_98F5C.s")

void func_8008A32C_992DC(u8 arg0) {
	AlienInstance *alien;
	if (alienInstances[arg0].unk20 & 0x600) {
		func_80137468_146418(arg0, 0x10);
		alienInstances[arg0].unk2C = 0x50;
		alien = &alienInstances[alienInstances[arg0].unk25];
		if (alien->unk1B != 0xFF) {
			func_80079910_888C0(alien->unk1B);
		}
		if (*(u8*)&alien->unk1E != 0xFF) {
			func_80079910_888C0(*(u8*)&alien->unk1E);
		}
		alien->unk20 |= 0x4000;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008A3EC_9939C.s")

s32 func_8008AAFC_99AAC(u8 arg0, s32 arg1, s32 arg2) {
	AlienInstance *alien = &alienInstances[arg0];

	if (alien->specIndex == 0xA) {
		arg2 = 0;
	}
	if ((!(alien->unk20 & 0x40000000) || (alien->unk47 & 1) || (alien->unk2 < D_80222A70)) && alien->unk2C >= 2) {
		if (alien->unk20 & 0x600) {
			if (alien->unk2 < D_80222A70) {
				func_800DF038_EDFE8(alien->unk0, alien->unk2, alien->unk4, (arg1 * 3) & 0xFFFF, arg2, (s32) &D_8013C16C);
				func_800DEF2C_EDEDC(alien->unk0, alien->unk2, alien->unk4, 0xFF, 2);
			} else if (alien->specIndex == 0xA) {
				func_800DFA34_EE9E4(alien->unk0, alien->unk2, alien->unk4, (u16) arg1, arg2);
			} else {
				func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, (u16) arg1, arg2);
			}
			alien->unk2C = 1;
		}
		return 1;
	}
	return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008AC5C_99C0C.s")

void func_8008AF58_99F08(u8 arg0)
{
	s32 inst;
	if (!(alienInstances[arg0].unk20 & 0x100000))
	{
		func_8008AC5C_99C0C(arg0, alienInstances[arg0].unk20);
		return;
	}
	if (alienInstances[arg0].unk2C == 0x50 ||
		(!(alienInstances[arg0].unk20 & 0x40000000) && (alienInstances[arg0].unk47 & 1)))
	{
		alienInstances[arg0].unk20 |= 0x40000000;
	}
	if ((alienInstances[arg0].unk20 & 0x40000000) || (alienInstances[arg0].unk2C < 0x50))
	{
		func_8008AAFC_99AAC(arg0, alienSpecs[alienInstances[arg0].specIndex].unkC, 2);
	}
}

void func_8008B02C_99FDC(u8 arg0)
{
  if (alienInstances[arg0].unk20 & 0x600)
  {
	if (!(alienInstances[arg0].unk20 & 0x100000))
	{
	  if (alienInstances[arg0].unk20 & 0x600)
	  {
		func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16) alienSpecs[alienInstances[arg0].specIndex].unkC, 0);
	  }
	  alienInstances[arg0].unk2C = 0x7FFF;
	  alienInstances[arg0].unk20 |= 0x40000000;
	}
	func_8008AAFC_99AAC(arg0, alienSpecs[alienInstances[arg0].specIndex].unkC, 3);
  }
}

void func_8008B108_9A0B8(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	s32 unk25 = inst->unk25;
	if (!(inst->unk20 & 0x100000)) {
		if (unk25 != 0xFF) {
			if (alienInstances[unk25].specIndex == 0x1A) {
				alienInstances[unk25].unk24--;
			}
		}
	}
	func_8008B02C_99FDC(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008B190_9A140.s")

void func_8008B870_9A820(u8 arg0) {
	AlienInstance *inst;
	s32 unk20;
	s32 idx;
	inst = &alienInstances[arg0];
	inst->unk2C = 0xC8;
	inst->unk3A = 0x32;
	inst->unk36 = 0;
	inst->unk20 |= 0x1000;
	inst->unk20 &= ~0xA000;
	idx = arg0;
	func_80137468_146418(idx, 0x11);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008B8E4_9A894.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008BC58_9AC08.s")

void func_8008BF8C_9AF3C(u8 arg0)
{
  s8 specEntry;
  specEntry = D_8014DD50[alienInstances[arg0].unkC].unkC;
  if (!(alienInstances[arg0].unk20 & 0x100000))
  {
	func_80088E40_97DF0(arg0, specEntry, D_8014DD50[specEntry].unk0, D_8014DD50[specEntry].unk2, D_8014DD50[specEntry].unk4, 0, 0x14, 0);
	alienInstances[arg0].unk2C = 0x23;
	alienInstances[alienInstances[arg0].unk25].unk26--;
	return;
  }
  if (alienInstances[arg0].unk2C == 0x22)
  {
	func_800DF038_EDFE8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16) alienSpecs[alienInstances[arg0].specIndex].unkC, 0, 0);
  }
  if (alienInstances[arg0].unk2C == 1)
  {
	func_800DF038_EDFE8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16) alienSpecs[alienInstances[arg0].specIndex].unkC, 4, 0);
  }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008C0F8_9B0A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008C428_9B3D8.s")

void func_8008C7B0_9B760(u8 arg0) {
	s16 sp28[12];

	sp28[0] = D_8014DD50[alienInstances[arg0].unkC].unkC;
	sp28[1] = D_8014DD50[sp28[0]].unkC;
	sp28[2] = D_8014DD50[sp28[0]].unkD;
	sp28[3] = D_8014DD50[sp28[2]].unkC;
	sp28[4] = D_8014DD50[sp28[3]].unkC;
	sp28[5] = D_8014DD50[sp28[3]].unkD;
	sp28[6] = D_8014DD50[sp28[5]].unkC;
	sp28[7] = D_8014DD50[sp28[2]].unkD;
	sp28[8] = D_8014DD50[sp28[7]].unkC;
	sp28[9] = D_8014DD50[sp28[8]].unkC;
	sp28[10] = D_8014DD50[sp28[8]].unkD;
	sp28[11] = D_8014DD50[sp28[10]].unkC;
	func_80081F18_90EC8(arg0, 0xC, 1, sp28, &D_8013C514);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008C8B8_9B868.s")

void func_8008CF50_9BF00(u8 arg0) {
	func_80089EB4_98E64(arg0, 0x1C, 1, 2, 2);
}

void func_8008CF8C_9BF3C(u8 arg0) {
	func_80089EB4_98E64(arg0, 0x28, 2, 4, 3);
}

void func_8008CFC8_9BF78(u8 arg0) {
	func_80089EB4_98E64(arg0, 0x3C, 4, 7, 5);
}

void func_8008D004_9BFB4(u8 arg0) {
	func_80089EB4_98E64(arg0, 0x50, 6, 0xA, 8);
}

void func_8008D040_9BFF0(u8 arg0)
{
	u8 new_var;
	s32 parentUnk20;
	AlienInstance *inst;
	AlienInstance *parent;
	arg0 = arg0;
	inst = &alienInstances[arg0];
	new_var = inst->unk25;
	parent = &alienInstances[new_var];
	parentUnk20 = parent->unk20;
	if ((parentUnk20 & 0x1000) && (inst->unk20 & 0xF000))
	{
		parent->unk20 = parentUnk20 & (~0x1000);
		// %s says I'm busy
		// so this call should have one arg?
		do {} while(0); do { osSyncPrintf(&D_80141E80, *((s32 *) (&alienSpecs[inst->specIndex].unk18)), parent, parentUnk20); } while (0);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008D0E0_9C090.s")

void func_8008D3B0_9C360(u8 arg0) {
	alienInstances[arg0].unk20 &= ~0x20;
	alienInstances[arg0].unk20 |= 0x1100;
	alienInstances[arg0].unk38 = alienInstances[arg0].unk25;
}

void func_8008D3F4_9C3A4(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	u8 unk25 = inst->unk25;
	inst->unk2C = 0x4B0 - alienSpecs[inst->specIndex].unk51 * 5;
	alienInstances[unk25].unk20 |= 0x1000;
	if (alienInstances[unk25].unk2C < 4) {
		alienInstances[unk25].unk2C = 4;
	}
	func_8008D3B0_9C360(arg0);
}

#ifdef NON_MATCHING
void func_8008D4A0_9C450(u8 arg0) {
	s16 target;
	s32 dummy;

	if (!(alienInstances[arg0].unk20 & 0x4000)) {
		target = func_80082394_91344(alienInstances[arg0].unk0, alienInstances[arg0].unk4,
			(s32) alienSpecs[alienInstances[arg0].specIndex].unk51 / 20);

		if (target == 0x100 ||
			(target != 0xFF &&
			 (!(alienInstances[target].unk20 & 0x40000000) ||
			  !(alienInstances[target].unk20 & 0x600)))) {
			alienInstances[arg0].unk20 |= 0x20;
			alienInstances[arg0].unk38 = target;
			alienInstances[arg0].unk20 &= ~0x1000;
			alienInstances[arg0].unk48 = 0xE0;
			return;
		} else {
			if (alienInstances[alienInstances[arg0].unk25].unk20 & 0x4000) {
				func_80080B44_8FAF4(arg0, (u8)alienInstances[alienInstances[arg0].unk25].unk38);
				alienInstances[arg0].unk48 = 0xE0;
				alienInstances[arg0].unk16 += 0x64;
				alienInstances[arg0].unk20 &= ~0x1020;
				return;
			}

			if (alienInstances[arg0].unk3D == -1 ||
				D_80146492[(currentLevel << 8) + (alienInstances[arg0].unk3D << 3)] == 0) {
				func_8008D3B0_9C360(arg0);
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008D4A0_9C450.s")
#endif

void func_8008D634_9C5E4(u8 arg0) {
	if (!(D_8004DCA8 & 2) && !(D_80052B34->unk20 & 0x80) && (D_80052B34->unk1A == 0) && (D_80159300 == 0)) {
		if (D_80048180 == 1) {
			func_8008D4A0_9C450(arg0);
			return;
		}
		D_80048180 = 1;
		D_80048184 = arg0;
		D_8014ECE0 = 0;
		D_80052B34->unk20 |= 0x1000;
		func_8008D3B0_9C360(arg0);
		alienInstances[arg0].unk20 |= 0x2000;
		alienInstances[arg0].unk48 = 0x60;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008D71C_9C6CC.s")

// https://decomp.me/scratch/lrRls
// This one is matching but when included it screws up later functions somehow??
#ifdef NON_MATCHING
s32 func_8008D978_9C928(u8 arg0)
{
  AlienInstance *inst = &alienInstances[arg0];
  u8 unk25 = inst->unk25;
  if (unk25 != 0xFF)
  {
	if (alienInstances[unk25].unk20 & 0x300000)
	{
	  if ((*(inst = &alienInstances[alienInstances[unk25].unk25])).unk20 & 0x2000)
	  {
		func_80087AAC_96A5C(arg0);
	  }
	  alienInstances[arg0].unk25 = 0xFF;
	  return 1;
	}
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008D978_9C928.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008DA24_9C9D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008DEF4_9CEA4.s")

void func_8008E0D8_9D088(u8 arg0) {
	func_8008DEF4_9CEA4(arg0);
	if ((arg0 & 0x1C) == (D_80052A8C & 0x1C) && !(alienInstances[arg0].unk20 & 0x2000)) {
		func_8008D4A0_9C450(arg0);
	}
	func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);
}

// https://decomp.me/scratch/GDnVm
#ifdef NON_MATCHING
void func_8008E16C_9D11C(u8 arg0) {
	s32 result;
	func_8008DEF4_9CEA4(arg0);
	func_80137468_146418(arg0, 0xB);
	if (D_80048184 == arg0) {
		result = func_8008D0E0_9C090(arg0);
		if (result) {
			return;
		}
	}
	if (!(alienInstances[arg0].unk20 & 0x40000000)) {
		func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);
	}
	if ((arg0 & 0x1F) == (D_80052A8C & 0x1F) && !(alienInstances[arg0].unk20 & 0x2000)) {
		func_8008D4A0_9C450(arg0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008E16C_9D11C.s")
#endif

void func_8008E23C_9D1EC(u8 arg0) {
	if (!(alienInstances[arg0].unk20 & 0x40000000)) {
		alienInstances[arg0].unk12 = 0xE0;
		func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);
	}
	if (alienInstances[arg0].unk47 & 8) {
		func_80088760_97710(&alienInstances[arg0]);
	}
}

void func_8008E2B4_9D264(u8 arg0, s16 arg1, s16 arg2) {
	s16 arr[2];
	arr[0] = arg1;
	arr[1] = arg2;
	func_80081F18_90EC8(arg0, 2, 3, arr, &D_8013C610);
}

s32 func_8008E30C_9D2BC(u8 arg0, s32 arg1) {
	u8 unk25 = alienInstances[arg0].unk25;

	if (alienInstances[unk25].unk20 & arg1) {
		func_80081BB0_90B60(arg0);
		alienInstances[arg0].unk20 |= 0x08000100;
		alienInstances[arg0].unk3A = 0xC8;
		return 1;
	}
	if (alienInstances[arg0].unk3A != 0 && (alienInstances[arg0].unk20 & 0x08000000)) {
		alienInstances[arg0].unk3A = alienInstances[arg0].unk3A - 1;
		if (alienInstances[arg0].unk3A <= 0) {
			alienInstances[arg0].unk20 &= ~0x08000100;
		}
		return 1;
	}
	return 0;
}

s32 func_8008E3E8_9D398(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	s32 unk20 = inst->unk20;
	if (unk20 & 0x80000000) {
		inst->unk20 = unk20 | 0x08000100;
		inst->unk3A = 0xC8;
		return 1;
	}
	if (inst->unk3A != 0) {
		inst->unk3A -= 1;
		if (inst->unk3A <= 0) {
			inst->unk20 &= ~0x08000000;
		}
		return 1;
	}
	return 0;
}

s32 func_8008E478_9D428(u8 arg0)
{
  u8 new_var;
  new_var = alienInstances[arg0].unk25;
  if (((alienInstances[arg0].unk25 == 0xFF) ||
	   (alienInstances[new_var].specIndex != 0x19)) ||
	  func_8008D978_9C928((u32)arg0))
  {
	func_80081BB0_90B60(arg0);
	alienInstances[arg0].unk20 |= 0x08000100;
	return 1;
  }
  return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008E524_9D4D4.s")

#ifdef NON_MATCHING
void func_8008E978_9D928(u8 arg0, s32 arg1)
{
	s32 sp2C;
	s16 sp2A;
	s32 sp24;

	sp2C = arg1;
	sp24 = 0;
	func_8011E6FC_12D6AC(alienInstances[arg0].unk0, alienInstances[arg0].unk4, &sp2A);
	if (sp2A < D_80222A70) {
		sp2A = (s16) D_80222A70;
	}
	sp2C = sp2C + sp2A;

	if (alienInstances[arg0].unk20 & 0x08000000) {
		sp24 = D_80052B34->unk20 & 2;
		if (sp24 && D_80222A70 >= D_80052B34->unk2) {
			sp24 = 0;
		}
	}

	if (sp24 != 0) {
		sp2C = D_80052B34->unk2;
	}

	if (alienInstances[arg0].unk2 < sp2C) {
		alienInstances[arg0].unkA -= 0x1F4;
	}
	if (sp2C < alienInstances[arg0].unk2) {
		alienInstances[arg0].unkA += 0x1F4;
	}

	alienInstances[arg0].unkA = (s16)(s32)((f64) alienInstances[arg0].unkA * D_80141EE0);
	sp2C = -(s16) alienInstances[arg0].unk12;
	if (sp2C < alienInstances[arg0].unk12) {
		sp2C = alienInstances[arg0].unk12;
	}

	if (sp2C < 0x301) {
		sp2C = 0x300;
	}
	alienInstances[arg0].unk10 = (s16) -(s32)(((f64)(f32) sins(alienInstances[arg0].unkA) / 32768.0) * (f64) sp2C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008E978_9D928.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008EB20_9DAD0.s")

void func_8008EDFC_9DDAC(u8 arg0) {
	func_8008E978_9D928(arg0, alienSpecs[alienInstances[arg0].specIndex].unk58);
}

void func_8008EE5C_9DE0C(u8 arg0, s16 arg1, s16 arg2) {
	func_80081E5C_90E0C(arg1);
	func_80081E5C_90E0C(arg2);
	if (D_8014DD5E[arg1][0] == 0) {
		func_80081C84_90C34(arg1, (Unk8014DD50 *)&D_8013C618[alienInstances[arg0].unk4B * 0x10]);
		func_80081C84_90C34(arg2, (Unk8014DD50 *)&D_8013C638[alienInstances[arg0].unk4B * 0x10]);
		alienInstances[arg0].unk4B++;
		alienInstances[arg0].unk4B &= 1;
	}
}

void func_8008EF1C_9DECC(u8 arg0) {
	s8 tmp = D_8014DD50[alienInstances[arg0].unkC].unkC;
	func_8008EE5C_9DE0C(arg0, tmp, D_8014DD50[tmp].unkD);
}

void func_8008EF7C_9DF2C(u8 arg0) {
	s16 sp2E;
	s16 sp2C;
	s16 sp2A;
	s16 sp28;

	sp2E = D_8014DD50[alienInstances[arg0].unkC].unkC;
	sp2C = D_8014DD50[sp2E].unkD;
	sp2A = D_8014DD50[sp2C].unkD;
	sp28 = D_8014DD50[sp2A].unkD;
	func_80081E5C_90E0C(sp2E);
	func_80081E5C_90E0C(sp2C);
	func_80081E5C_90E0C(sp2A);
	func_80081E5C_90E0C(sp28);
	if (D_8014DD50[sp2E].unkE == 0) {
		func_80081C84_90C34((u8)sp2E, (Unk8014DD50 *)&D_8013C658[alienInstances[arg0].unk4B * 0x10]);
		func_80081C84_90C34((u8)sp2C, (Unk8014DD50 *)&D_8013C678[alienInstances[arg0].unk4B * 0x10]);
		func_80081C84_90C34((u8)sp2A, (Unk8014DD50 *)&D_8013C698[alienInstances[arg0].unk4B * 0x10]);
		func_80081C84_90C34((u8)sp28, (Unk8014DD50 *)&D_8013C6B8[alienInstances[arg0].unk4B * 0x10]);
		alienInstances[arg0].unk4B++;
		alienInstances[arg0].unk4B &= 1;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008F0BC_9E06C.s")

// https://decomp.me/scratch/RPZiH
#ifdef NON_MATCHING
void func_8008F6C0_9E670(u8 arg0)
{
  s16 temp_v0;
  //int new_var;
  u8 temp_a1;
  if (!(alienInstances[alienInstances[arg0].unk25].unk20 & 0x6000))
  {
	alienInstances[arg0].unk20 = alienInstances[arg0].unk20 & (~0x100);
	alienInstances[arg0].unk20 = ((0, alienInstances[arg0].unk20)) | 0x800;
	alienInstances[arg0].unk14 = alienInstances[alienInstances[arg0].unk25].unk0;
	alienInstances[arg0].unk18 = alienInstances[alienInstances[arg0].unk25].unk4;
	alienInstances[arg0].unk16 = alienInstances[alienInstances[arg0].unk25].unk2 + 0x12C;
	return;
  }
  if (!alienInstances[arg0].unk25)
  {
  }
  temp_v0 = func_80082394_91344(alienInstances[arg0].unk0, alienInstances[arg0].unk4, 3);
  if ((temp_v0 < 0xFF) && (!(alienInstances[temp_v0].unk20 & 0x4000)))
  {
	alienInstances[arg0].unk38 = temp_v0;
	alienInstances[arg0].unk3A = 0xC8;
	alienInstances[arg0].unk20 |= 0x4020;
  }
  temp_a1 = (u8) alienInstances[alienInstances[arg0].unk25].unk38;
  func_80080B44_8FAF4(arg0, temp_a1);
  alienInstances[arg0].unk16 = (alienInstances[arg0].unk16 + (*((s16 *) (D_802590A4 + (D_80050ADE[temp_a1 * 0x18] << 5))))) + (0x64);
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008F6C0_9E670.s")
#endif

void func_8008F818_9E7C8(u8 arg0) {
	AlienInstance *ai = &alienInstances[arg0];
	s32 moved = 0;
	if (ai->unk2E >> 8 != ai->unk0 >> 8 || ai->unk32 >> 8 != ai->unk4 >> 8) {
		moved = 1;
	}
	func_8008F0BC_9E06C(arg0, moved);
	func_800808F0_8F8A0(arg0, &ai->unkE);
	if (moved && !(ai->unk20 & 0x2800)) {
		func_8008F6C0_9E670(arg0);
	}
}

// https://decomp.me/scratch/zzVqU
#ifdef NON_MATCHING
void func_8008F8D4_9E884(u8 arg0, s16 arg1)
{
  s16 sp2C[2];
  s8 var_a3;
	if (alienInstances[arg0].unk20 & 0x8000)
	{
	  s32 temp_v0;
	  sp2C[0] = arg1;
	  sp2C[1] = D_8014DD50[arg1].unkC;
 temp_v0 = func_80081F18_90EC8(arg0, 2, 3, sp2C, &D_8013C738); var_a3 = (s8) temp_v0; if (temp_v0 == 2) { *((s16 *) (&alienInstances[arg0].unk1E)) = 0;
		if (func_80087188_96138(arg0, 0, 0x22) != 0)
		{
		  if (currentLevel == 1)
		  {
			*((s16 *) (&alienInstances[arg0].unk1E)) = 0xF;
		  }
		  else
		  {
			*((s16 *) (&alienInstances[arg0].unk1E)) = 5;
		  }
		}
	  }
	  if (var_a3 == 3)
	  {
		alienInstances[arg0].unk20 &= ~0x8000;
	  }
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008F8D4_9E884.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008F9E4_9E994.s")

u8 func_8008FC78_9EC28(u8 arg0) {
	u8 result = func_8007956C_8851C(0x20) & 0xFF;
	if (result != 0xFF) {
		AlienInstance *newInst = &alienInstances[result];
		AlienInstance *srcInst = &alienInstances[arg0];
		newInst->unk12 = 0xE0;
		newInst->unk0 = srcInst->unk0;
		newInst->unk4 = srcInst->unk4;
		if (currentLevel < 3) {
			newInst->unk26 = 1;
		}
	}
	return result;
}

void func_8008FD0C_9ECBC(u8 arg0) {
	u8 sp1F;
	u8 temp_v0;
	AlienInstance *v1;

	sp1F = func_8008FC78_9EC28(arg0);
	temp_v0 = func_8008FC78_9EC28(arg0);

	if (sp1F != 0xFF) {
		v1 = &alienInstances[sp1F];
		v1->unk12 = 0x380;
		v1->unk26 = alienInstances[arg0].unk26 + 1;
		v1->unk20 |= 0x40000000;
		v1->unk10 = 0x320;
		v1->unk6 = alienInstances[arg0].unk6;
		v1->unkE = alienInstances[arg0].unk6 + 0x4000;
	}
	if (temp_v0 != 0xFF) {
		v1 = &alienInstances[temp_v0];
		v1->unk12 = 0x380;
		v1->unk26 = alienInstances[arg0].unk26 + 1;
		v1->unk20 |= 0x40000000;
		v1->unk10 = 0x320;
		v1->unk6 = alienInstances[arg0].unk6;
		v1->unkE = alienInstances[arg0].unk6 - 0x4000;
	}
}

// https://decomp.me/scratch/oSuGQ
#ifdef NON_MATCHING
s32 func_8008FE18_9EDC8(u8 arg0)
{
  u8 sp4F;
  AlienInstance *src;
  s32 sp44;
  s32 sp40;
  s32 sp3C;
  s32 res;
  sp4F = func_8007956C_8851C(2);
  if (sp4F != 0xFF)
  {
	src = &alienInstances[arg0];
	func_80128428_1373D8(src, 0, 0, -0x32, &sp44, &sp40, &sp3C);
	alienInstances[sp4F].unk48 = 0xE0;
	alienInstances[sp4F].unk0 = sp44;
	alienInstances[sp4F].unk4 = sp3C;
	alienInstances[sp4F].unk38 = arg0;
	alienInstances[sp4F].unk25 = arg0;
	alienInstances[sp4F].unk3D = src->unk3D;
	alienInstances[sp4F].unk20 |= 0x4000;
	alienInstances[sp4F].unk2C = 0x10;
	if (!(src->unk20 & 0x4000))
	{
	  res = func_80082394_91344(src->unk0, src->unk4, 8);
	  if (res != 0xFF)
	  {
		alienInstances[sp4F].unk38 = res;
		alienInstances[sp4F].unk20 |= 0x20;
		alienInstances[sp4F].unk48 = 0xE0;
	  }
	}
	return 1;
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008FE18_9EDC8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008FF54_9EF04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8009012C_9F0DC.s")

void func_800908C4_9F874(u8 arg0) {
	AlienInstance *inst = &alienInstances[alienInstances[arg0].unk25];
	s32 unk10 = *(s32 *)&inst->unk10;
	if (unk10 <= 0) {
		func_8009012C_9F0DC(arg0);
		return;
	}
	inst->unk20 &= ~0x30000;
	*(s32 *)&inst->unk10 = unk10 - 1;
}

// https://decomp.me/scratch/Bs32I
#ifdef NON_MATCHING
void func_80090948_9F8F8(s16 arg0, u16 arg1)
{
  Unk8014DD50 sp20;
  sp20 = D_8013C9DC;
  func_80081E5C_90E0C(arg0);
  if (D_8014DD5E[arg0][0] == 0)
  {
	sp20.unk6 = ((func_800038E0_44E0() * arg1) / 0x10000) - (arg1 / 2);
	sp20.unk8 = ((func_800038E0_44E0() * arg1) / 0x10000) - (arg1 / 2);
	sp20.unkA = ((func_800038E0_44E0() * arg1) / 0x10000) - (arg1 / 2);
	func_80081C84_90C34((u8) arg0, &sp20);
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80090948_9F8F8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80090A6C_9FA1C.s")

// https://decomp.me/scratch/qLxSW
#ifdef NON_MATCHING
void func_80090C14_9FBC4(u8 arg0)
{
  s32 new_var3;
  s16 sp2C;
  s32 new_var;
  s32 var_a0;
  s32 new_var4;
  s32 new_var2;
  new_var2 = alienInstances[arg0].unk14 - alienInstances[arg0].unk0;
  new_var = alienInstances[arg0].unk18 - alienInstances[arg0].unk4;
  sp2C = func_80003824_4424((f32)-new_var, (f32) new_var2);
  new_var3 = D_80052B34->unk0 - alienInstances[arg0].unk0;
  new_var4 = D_80052B34->unk4 - alienInstances[arg0].unk4;
  var_a0 = sp2C - func_80003824_4424((f32) new_var3, (f32) new_var4);
  
  if (((-var_a0 < var_a0) ? var_a0 : -var_a0) < 0x4000)
  {
	sp2C += 0x8000;
  }
  alienInstances[arg0].unk34 = 0x78;
  alienInstances[arg0].unk47 |= 1;
  alienInstances[arg0].unk2A = sp2C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80090C14_9FBC4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80090D0C_9FCBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80091220_A01D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80091470_A0420.s")

void func_8009170C_A06BC(u8 arg0) {
	u8 unk25;
	unk25 = alienInstances[arg0].unk25;
	if ((&alienInstances[unk25])->unk20 & 0x1000) {
		if (alienInstances[arg0].unk20 & 0x100) {
			(&alienInstances[unk25])->unk20 &= ~0x1000;
			func_80080B44_8FAF4(unk25, (u8)alienInstances[arg0].unk38);
			(&alienInstances[unk25])->unk20 |= 0x2000;
		}
	}
}

s32 func_8009179C_A074C(u8 arg0, s32 arg1) {
	if (((-(alienInstances[arg0].unk0 - D_80052B34->unk0) <
			(alienInstances[arg0].unk0 - D_80052B34->unk0)
			? (alienInstances[arg0].unk0 - D_80052B34->unk0)
			: -(alienInstances[arg0].unk0 - D_80052B34->unk0))
		> (-(alienInstances[arg0].unk4 - D_80052B34->unk4) <
			(alienInstances[arg0].unk4 - D_80052B34->unk4)
			? (alienInstances[arg0].unk4 - D_80052B34->unk4)
			: -(alienInstances[arg0].unk4 - D_80052B34->unk4))
		? (-(alienInstances[arg0].unk0 - D_80052B34->unk0) <
			(alienInstances[arg0].unk0 - D_80052B34->unk0)
			? (alienInstances[arg0].unk0 - D_80052B34->unk0)
			: -(alienInstances[arg0].unk0 - D_80052B34->unk0))
		: (-(alienInstances[arg0].unk4 - D_80052B34->unk4) <
			(alienInstances[arg0].unk4 - D_80052B34->unk4)
			? (alienInstances[arg0].unk4 - D_80052B34->unk4)
			: -(alienInstances[arg0].unk4 - D_80052B34->unk4))) < (arg1 << 8)) {
		if (!(alienInstances[arg0].unk20 & 0x08000000)) {
			func_80081BB0_90B60(arg0);
			alienInstances[arg0].unk20 |= 0x08000100;
			alienInstances[arg0].unk20 &= ~0x2000;
		}
		return 1;
	}
	if (alienInstances[arg0].unk20 & 0x08000000) {
		alienInstances[arg0].unk20 &= ~0x08000100;
	}
	return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800918E0_A0890.s")

s32 func_800919C0_A0970(u8 arg0, u8 arg1) {
	AlienInstance *alien;

	if (func_8008E478_9D428(arg0) == 0) {
		if (func_8009179C_A074C(arg0, 1) == 0) {
			func_8009170C_A06BC(arg0);
			func_80091470_A0420(arg0);
		}
	}

	alien = &alienInstances[arg0];

	if (!(alien->unk20 & 0x1000)) {
		if (func_800808F0_8F8A0(arg0, &alien->unkE) != 0) {
			return 1;
		}
	}

	if (arg1) {
		func_800918E0_A0890(arg0);
	}

	return 0;
}

void func_80091A78_A0A28(u8 arg0) {
	alienInstances[arg0].unk20 &= ~0x1000;
	alienInstances[arg0].unk12 = 0;
	alienInstances[arg0].unk20 |= 0x2000;
	alienInstances[arg0].unk2C = 0x64;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80091AC0_A0A70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80091E70_A0E20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800920C0_A1070.s")

s32 func_80092A50_A1A00(s16 arg0, s16 arg1, s32 arg2)
{
  u8 result;
  AlienInstance *ptr;
  result = func_8007956C_8851C(0xA);
  if (result != 0xFF)
  {
	ptr = &alienInstances[result];
	ptr->unk0 = arg0;
	ptr->unk4 = arg1;
	ptr->unk20 &= 0xF7FFFFFF;
	ptr->unk20 |= (int) 0x2000;
	ptr->unk3F = arg2;
  }
  return result;
}

// https://decomp.me/scratch/Eb0Us
#ifdef NON_MATCHING
void func_80092ADC_A1A8C(void)
{
  Unk8013CA *p;
  u8 result;
	p = &D_8013CA00; do {
	result = func_80092A50_A1A00(p->unk0 << 8, p->unk1 << 8, 0x10);
	result &= 0xff;
	if (result != 0xFF)
	{
	  alienInstances[result].unk26 = 0;
	  alienInstances[result].unk38 = 0x2F;
	  alienInstances[result].unk20 |= 0x4000;
	  D_8004817C++;
	  func_80092BBC_A1B6C(result);
	}
	p++;
  }
  while (p != (&D_8013CA0A));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80092ADC_A1A8C.s")
#endif

void func_80092BBC_A1B6C(u8 arg0)
{
	s8 x = 0;
	AlienInstance *inst;
	s8 *entry = &D_8013CA0C[((0, alienInstances[arg0].unk26)) * 2];
	x = entry[0];
	if ((!x) && (!entry[1]))
	{
		alienInstances[arg0].unk20 &= ~0x4000;
	}

	alienInstances[arg0].unk14 = (x << 8) + 0x80;
	alienInstances[arg0].unk18 = (entry[1] << 8) + 0x80;
	alienInstances[arg0].unk26++;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80092C40_A1BF0.s")

void func_80092DFC_A1DAC(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];

	if (alien->unk20 & 0x800) {
		func_8008064C_8F5FC(arg0);
	} else {
		func_8008076C_8F71C(arg0);
	}

	if (alien->unk20 & 0x6000) {
		if (alien->unk20 & 0x1000) {
			if (alien->unk2C > 0) {
				alien->unk2C -= 4;
				return;
			}
			if (alien->unk3F != 0xFF) {
				func_800765C4_85574(alien->unk3F);
			}
			func_80129354_138304((s32)alien, 0, 0, 0, 0);
			func_80088760_97710(alien);
			func_80124B5C_133B0C(alien->unk0, alien->unk2, alien->unk4, 0x12C, 0x100);
			return;
		}
		func_80092C40_A1BF0(arg0);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80092EF4_A1EA4.s")

void func_80093164_A2114(u8 arg0)
{
  func_8008076C_8F71C(arg0);
  if (((func_8008E478_9D428(arg0) == 0) && (func_8008E30C_9D2BC(arg0, 0x80000000) == 0)) && (func_8008E3E8_9D398(arg0) == 0))
  {
	func_8009170C_A06BC(arg0);
	func_80091470_A0420(arg0);
	if (!(D_80052A8C & 0x3F))
	{
		s16 targetIdx = func_80082394_91344(alienInstances[arg0].unk0, alienInstances[arg0].unk4, 3);
		if ((targetIdx < 0xFF) && (!(alienInstances[targetIdx].unk20 & 0x4000)))
		{
		  func_800E52E8_F4298(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, alienInstances[targetIdx].unk0, alienInstances[targetIdx].unk2, alienInstances[targetIdx].unk4, 0);
		  alienInstances[targetIdx].unk20 |= 0x5000;
		  alienInstances[targetIdx].unk12 = 0;
		  alienInstances[targetIdx].unk2C = 0xC8;
		}
	}
  }
}

void func_800932A8_A2258(u8 arg0) {
	func_8008EDFC_9DDAC(arg0);
	func_8008EF1C_9DECC(arg0);
	func_80093164_A2114(arg0);
	if (alienInstances[arg0].unk20 & 0x08000000) {
		if (func_80084FE8_93F98(arg0, 0x1000) != 0) {
			if (func_80087188_96138(arg0, 0, 0x10) != 0) {
				alienInstances[arg0].unk1E = 0x32;
			}
		}
	}
	if (alienInstances[arg0].unk1E != 0) {
		alienInstances[arg0].unk1E = alienInstances[arg0].unk1E - 1;
	}
}

void func_8009335C_A230C(u8 arg0)
{
	s32 dz;
	s32 dx;
	s32 abs_dx;
	s32 abs_dz;
	func_800873A8_96358(arg0);
	dz = alienInstances[arg0].unk0 - D_80052B34->unk0;
	dx = alienInstances[arg0].unk4 - D_80052B34->unk4;

	abs_dz = -dz < dz?  dz : -dz;
	abs_dx = -dx < dx ? dx : -dx;

	dz = abs_dx < abs_dz
		? (-dz < dz? dz : -dz)
		: (-dx < dx? dx : -dx);
	if (dz < 0xC00)
	{
		alienInstances[arg0].unk12 = 0;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80093438_A23E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8009377C_A272C.s")

// https://decomp.me/scratch/PJVa8
#ifdef NON_MATCHING
s16 func_8009395C_A290C(u8 arg0, s16 arg1) {
	f32 sp24;
	f32 sp20;
	s16 sp1E;

	sp24 = (f32)((f64)(f32)coss(arg1) / 32768.0 * 30.0);
	sp20 = (f32)((f64)(f32)sins(arg1) / 32768.0 * 30.0);

	sp1E = func_800B84D0_C7480(
		(s16)((f32)alienInstances[arg0].unk0 - sp24),
		(s16)((f32)alienInstances[arg0].unk4 - sp20)) >> 8;

	return func_80003824_4424(100.0f,
		(f32)(sp1E - (s16)(func_800B84D0_C7480(
			(s16)((f32)alienInstances[arg0].unk0 + sp24),
			(s16)((f32)alienInstances[arg0].unk4 + sp20)) >> 8)));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8009395C_A290C.s")
#endif

void func_80093AE4_A2A94(u8 arg0, s32 arg1) {
	u8 specIdx;
	s16 spec_val;

	specIdx = alienInstances[arg0].specIndex;
	spec_val = alienSpecs[specIdx].unk40;
	if ((spec_val >> 5) + 0xFA < arg1) {
		arg1 = (spec_val >> 5) + 0xFA;
	}
	if (alienInstances[arg0].unk47 & 1) {
		alienInstances[arg0].unk12 = 0;
	} else if (arg1 >= 0xFB) {
		if (func_80084FE8_93F98(arg0, 0x800) != 0) {
			alienInstances[arg0].unk20 |= 0x4000;
		} else {
			alienInstances[arg0].unk20 &= ~0x4000;
		}
		if (!(alienInstances[arg0].unk20 & 0x4000)) {
			spec_val = (s16)(spec_val >> 1);
		}
		alienInstances[arg0].unk12 = (s16)(((arg1 - 0xFA) >> 1) << 5);
		if (spec_val < alienInstances[arg0].unk12) {
			alienInstances[arg0].unk12 = spec_val;
		}
	} else {
		alienInstances[arg0].unk20 &= ~0x4000;
		alienInstances[arg0].unk12 = (s16)(((arg1 - 0xFA) >> 2) << 5);
		if (alienInstances[arg0].unk12 < spec_val >> 1) {
			alienInstances[arg0].unk12 = (s16)(-(spec_val >> 1));
		}
	}
	if (alienInstances[arg0].unk20 & 0x4000) {
		alienInstances[arg0].unk10 = spec_val;
	} else {
		alienInstances[arg0].unk10 = (s16)(spec_val >> 1);
	}
	if (alienInstances[arg0].unk10 >= 0x401) {
		alienInstances[arg0].unk10 = 0x400;
	}
	alienInstances[arg0].unk20 |= 0x40000000;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80093C7C_A2C2C.s")

void func_800946A4_A3654(u8 arg0) {
	func_8008735C_9630C(arg0);
}

s32 func_800946CC_A367C(u8 arg0, s32 arg1, s32 arg2) {
	s32 result;

	result = 0;
	alienInstances[arg0].unkA = func_8009395C_A290C(arg0, alienInstances[arg0].unk6);
	alienInstances[arg0].unk8 = func_8009395C_A290C(arg0, (s16)(alienInstances[arg0].unk6 + 0x4000));
	if (alienInstances[arg0].unk20 & 0x40000000) {
		alienInstances[arg0].unk6 = alienInstances[arg0].unkE;
		if (D_80222A70 < alienInstances[arg0].unk2) {
			alienInstances[arg0].unk10 += 0x30;
		}
		if (alienInstances[arg0].unk47 & 4) {
			alienInstances[arg0].unk12 = 0;
		}
	} else {
		alienInstances[arg0].unk12 = 0;
		if (alienInstances[arg0].unk2C != 0) {
			alienInstances[arg0].unk2C--;
		} else {
			alienInstances[arg0].unk20 |= 0x40001000;
			alienInstances[arg0].unk36 = 0;
			alienInstances[arg0].unk10 = (s16) arg2;
			alienInstances[arg0].unk2C = (s16) arg1;
			result = 1;
		}
		if (alienInstances[arg0].unk47 & 1) {
			alienInstances[arg0].unk34++;
		}
	}
	return result;
}

void func_80094808_A37B8(u8 arg0) {
	s32 sp24;
	AlienInstance *alien;

	alien = &alienInstances[arg0];
	if ((alien->unk20 & 0x2000) && (alien->unk2C >= 0xF)) {
		func_80088760_97710(alien);
	}
	if (alien->unk2C == 0xE) {
		sp24 = func_80084F00_93EB0(D_80052B34, alien) - vehicleSpecs[D_80052B34->unk1A].unkC - alienSpecs[alien->specIndex].unkC;
		if ((func_80084FE8_93F98(arg0, 0x800) != 0) && (sp24 < 0x8C)) {
			alien->unk20 |= 0x2000;
		}
	}
}

void func_8009490C_A38BC(u8 arg0) {
	s16 sp3C[2];
	AlienInstance *alien;
	s32 sp34;
	s16 tempc;

	alien = &alienInstances[arg0];
	if (alien->unk48 != 0) {
		alien->unk2 = alien->unk48;
		alien->unk48 = 0;
	}
	sp34 = func_800946CC_A367C(arg0, 0x14, 0x180);
	if (alien->unk47 & 8) {
		func_80088760_97710(alien);
	}
	if (alien->unk20 & 0x40000000) {
		if (sp34 != 0 && !(alien->unk47 & 1)) {
			alien->unk12 = alienSpecs[alien->specIndex].unk40;
		}
		func_800808F0_8F8A0(arg0, &alien->unkE);
		if (alien->unk20 & 0x1000) {
			tempc = D_8014DD50[alien->unkC].unkC;
			sp3C[0] = tempc;
			sp3C[1] = D_8014DD50[tempc].unkD;
			if (func_80081F18_90EC8(arg0, 2, 2, sp3C, &D_8013CB40) == 2) {
				alien->unk20 &= ~0x1000;
			}
		}
	} else {
		func_80094808_A37B8(arg0);
	}
	if ((alien->unk20 & 0x2000) && (D_80052A8C & 1)) {
		alien->unk20 |= 0x80000000;
	}
}

void func_80094AA0_A3A50(u8 arg0, s32 arg1) {
	s32 pad1;
	Unk80154082 sp8;
	sp8 = D_8013CB48;
	alienInstances[arg0].unk2C -= arg1;
	if (alienInstances[arg0].unk2C < 0) {
		alienInstances[arg0].unk2C = 0x19;
	}
	if (alienInstances[arg0].unk3D == -1) {
		alienInstances[arg0].unk26 = 4;
		alienInstances[arg0].unk20 |= 0x400000;
		alienInstances[arg0].unk3D = 0;
	}
	if (alienInstances[arg0].unk26 == 0) {
		alienInstances[arg0].unk20 &= 0xFFBFFFFF;
	}
}

void func_80094B4C_A3AFC(u8 arg0) {
	func_80137468_146418(arg0, 0x1B);
	func_80094AA0_A3A50(arg0, 1);
}

void func_80094B80_A3B30(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	if (alienInstances[inst->unk25].unk20 & 0x100000) {
		func_80088760_97710(inst);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80094BE0_A3B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80094DE0_A3D90.s")

void func_800950A8_A4058(u8 arg0) {
	func_8008E0D8_9D088(arg0);
}

void func_800950D0_A4080(u8 arg0) {
	func_8008E16C_9D11C(arg0);
}
