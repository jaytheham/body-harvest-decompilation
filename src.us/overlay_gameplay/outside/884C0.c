#include <ultra64.h>
#include "common.h"

void func_80079510_884C0(u8 arg0) {
	AlienInstance *inst = &alienInstances[alienInstances[arg0].unk25];
	*(s32 *)&inst->unk8 = 0;
	*(s32 *)&inst->unkC = 0;
	*(s32 *)&inst->unk10 = 0;
	*(s32 *)&inst->unk14 = 0;
	inst->specIndex = 0;
	inst->hitPoints = 0x32;
	inst->unk1B = 0xFF;
	inst->unk1E = 0xFF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007956C_8851C.s")

// Skip this and aliens freeze when they die, never disappear
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800797A4_88754.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80079910_888C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80079B74_88B24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80079C8C_88C3C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007A198_89148.s")

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
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007BEC0_8AE70.s")

// drawComplexObjects eg: humans, alien torsos & heads
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007C044_8AFF4.s")

// Disable and aliens don't spawn visibly (show on radar tho)
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007D424_8C3D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007D690_8C640.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007E500_8D4B0.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007F9C8_8E978.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80080418_8F3C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80080510_8F4C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008064C_8F5FC.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800808F0_8F8A0.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008153C_904EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800816B0_90660.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008199C_9094C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80081CF0_90CA0.s")

#ifdef NON_MATCHING
void func_80081E5C_90E0C(s16 arg0) {
	Unk8014DD50 *a3 = &D_8014DD50[arg0];
	Unk8014DD50 *a1;
	s16 counter = a3->unkE;
	if (counter != 0) {
		a1 = &D_8014E4D0[arg0];
		func_80081CF0_90CA0(a3, a1, counter, a3);
		a3->unk6 = (u16)a3->unk6 + (a1->unk6 - (s16)(u16)a3->unk6) / counter;
		a3->unkE = a3->unkE - 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80081E5C_90E0C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80081F18_90EC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082084_91034.s")

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

#ifdef NON_MATCHING
s32 func_800825E8_91598(s16 arg0, s16 arg1, s32 *arg2)
{
  s16 dx;
  s16 dz;
  s32 dist;
  s32 result;
  s32 idx;
  u8 *ptr;
  s32 i;
  i = D_8014D507;
  result = 0xFF;
  if (i < ((s32) D_8014D50A))
  {
 if (!idx) { } ptr = &D_8014D408[i]; do { idx = *ptr;
	  i++;
	  dx = arg0 - alienInstances[idx].unk0;
	  dz = arg1 - alienInstances[idx].unk4;
	  dist = (dx * dx) + (dz * dz);
	  if (dist < (*arg2))
	  {
		*arg2 = dist;
		result = idx & 0xFF;
	  }
	  ptr++;
	}
	while (i < ((s32) D_8014D50A));
  }
  return result;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800825E8_91598.s")
#endif

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

#ifdef NON_MATCHING
s32 func_80082A98_91A48(u8 arg0)
{
  u32 new_var;
  s16 sp1C;
  s16 sp1E;
  s32 v0;
  new_var = arg0;
  sp1E = alienInstances[new_var].unk0 & 0xFF;
  sp1C = alienInstances[arg0].unk4 & 0xFF;
  if (func_800828F0_918A0(new_var, 0x1000, 0x800) != 0)
  {
	v0 = func_80082990_91940(sp1E, sp1C);
	return func_800829EC_9199C(new_var, v0);
  }
  return -1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082A98_91A48.s")
#endif

#ifdef NON_MATCHING
s32 func_80082B30_91AE0(u8 arg0) {
	u8 specIndex;
	s16 xPos;
	s16 zPos;
	s32 threshold;

	specIndex = alienInstances[arg0].specIndex;
	xPos = alienInstances[arg0].unk0;
	zPos = alienInstances[arg0].unk4;
	threshold = (u32) (alienSpecs[specIndex].unk54 & 0x180000) >> 0x13;

	if (D_8003E290[func_800056D0_62D0(xPos, zPos)].unkC <= threshold) {
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082CA0_91C50.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80083060_92010.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800831A4_92154.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800836D0_92680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80083EF4_92EA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800840B0_93060.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800844D0_93480.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800847D0_93780.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084904_938B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084AE4_93A94.s")

void func_80084C48_93BF8(Unk80052B34 *arg0)
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

#ifdef NON_MATCHING
s32 func_80084E54_93E04(AlienInstance *arg0, AlienInstance *arg1)
{
	f32 new_var;
	s32 temp_a0;
	s32 temp_a1;
	s32 temp_a2;
	s32 temp_v0;
	s32 temp_v0_2;
	s16 new_var2;
	s32 temp_v0_3;
	s32 var_v1;
	s32 var_v1_2;
	temp_v0 = arg0->unk0 - arg1->unk0;
	temp_a2 = -temp_v0;
	if (temp_a2 < temp_v0)
	{
	var_v1 = temp_v0;
	}
	else
	{
	var_v1 = temp_a2;
	}
	temp_a0 = var_v1;
	temp_a0 = temp_a0 >> 1;
	new_var2 = arg0->unk4;
	temp_v0_2 = new_var2 - arg1->unk4;
	temp_a1 = -temp_v0_2;
	var_v1 = temp_a1 < temp_v0_2;
	if (var_v1)
	{
	var_v1_2 = temp_v0_2;
	}
	else
	{
	var_v1_2 = temp_a1;
	}
	temp_v0_3 = var_v1_2 >> 1;
	;
	return ((s32) sqrtf((f32) ((temp_a0 * temp_a0) + (temp_v0_3 * temp_v0_3)))) * 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084E54_93E04.s")
#endif

#ifdef NON_MATCHING
s32 func_80084F00_93EB0(Unk80052B34 *arg0, AlienInstance *arg1)
{
	s32 diff = arg0->unk0 - arg1->unk0;
	s32 neg = -diff;
	s32 var_v0;
	s32 hx, hy, hz;

	if (neg < diff) {
		var_v0 = diff;
	} else {
		var_v0 = neg;
	}
	hx = var_v0 >> 1;

	diff = arg0->unk2 - arg1->unk2;
	neg = -diff;
	var_v0 = neg;
	if (neg < diff) {
		var_v0 = diff;
	}
	hy = var_v0 >> 1;

	diff = arg0->unk4 - arg1->unk4;
	neg = -diff;
	var_v0 = neg;
	if (neg < diff) {
		var_v0 = diff;
	}
	hz = var_v0 >> 1;

	return (s32)sqrtf((f32)(hx * hx + hy * hy + hz * hz)) * 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084F00_93EB0.s")
#endif

#ifdef NON_MATCHING
s32 func_80084FE8_93F98(u8 arg0, u16 arg1)
{
  int new_var;
  s16 new_var2;
  s16 sp30;
  f32 sp24;
  int new_var3;
  f32 sp20;
  s32 var_v1;
  AlienInstance *s0;
  s0 = &alienInstances[arg0];
  new_var3 = D_80052B34->unk0 - s0->unk0;
  sp24 = (f32) new_var3;
  new_var = D_80052B34->unk4 - s0->unk4;
  sp20 = (f32) new_var;
  new_var2 = func_80003824_4424(sp24, sp20);
  sp30 = new_var2;
  if ((-(func_80003824_4424(sp24, sp20) - s0->unk6)) < (sp30 - s0->unk6))
  {
	var_v1 = func_80003824_4424(sp24, sp20) - s0->unk6;
  }
  else
  {
	var_v1 = -(func_80003824_4424(sp24, sp20) - s0->unk6);
  }
  if (var_v1 < ((s32) arg1))
  {
	return 1;
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084FE8_93F98.s")
#endif

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800851C8_94178.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085340_942F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085448_943F8.s")

s32 func_80085524_944D4(u8 arg0) {
	return ((u32)(arg0 + D_80052A8C) % 5U) == 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008554C_944FC.s")

#ifdef NON_MATCHING
void func_80085690_94640(u8 arg0, u16 arg1) {
	s32 a1s;
	AlienInstance *alien;
	s32 specIdx;

	a1s = arg1;
	if (func_80084FE8_93F98(arg0, a1s & 0xFFFF) != 0) {
		alien = &alienInstances[arg0];
		if (*(s16 *)&alien->unk1E == 0) {
			specIdx = *(&D_8025669C + alien->specIndex * 0x1A);
			func_80122524_1314D4(D_80052B34, *(&D_80145BE2 + specIdx * 0xC), alien->unk0, alien->unk4);
			*(s16 *)&alien->unk1E = 0x1C;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085690_94640.s")
#endif

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

#ifdef NON_MATCHING
s32 func_80085838_947E8(u8 arg0) {
	s32 neg_dx, neg_dz, abs_dx, abs_dz, max;
	s32 dx = D_80052B34->unk0 - alienInstances[arg0].unk0;
	s32 dz = D_80052B34->unk4 - alienInstances[arg0].unk4;

	neg_dx = -dx;
	if (neg_dx < dx) {
		abs_dx = dx;
	} else {
		abs_dx = neg_dx;
	}

	neg_dz = -dz;
	abs_dz = neg_dz;
	if (neg_dz < dz) {
		abs_dz = dz;
	}

	if (abs_dz < abs_dx) {
		max = neg_dx;
		if (neg_dx < dx) {
		} else {
			goto block_11;
		}
	} else {
		max = neg_dz;
		if (neg_dz < dz) {
			max = dz;
		}
	block_11:
		dx = max;
	}

	if (dx < 0x1800) {
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085838_947E8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085900_948B0.s")

s32 func_800859F4_949A4(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	if (func_80084FE8_93F98(arg0, (*(&D_802566D1 + (u32)inst->specIndex * 0x68) * 0xC8) & 0xFFFF) != 0) {
		inst->unk20 |= 0x08000100;
		return 1;
	}
	return 0;
}

#ifdef NON_MATCHING
s16 func_80085A9C_94A4C(s16 arg0, s16 arg1, s32 arg2, s32 arg3, s16 arg4) {
	s16 diff;
	s16 neg;
	diff = arg1 - arg0;
	neg = -arg4;
	if (arg4 < diff && arg0 < arg2) {
		return arg0 + arg4;
	}
	if (diff < neg) {
		if (arg3 < arg0) {
			arg0 -= arg4;
		}
	}
	return arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085A9C_94A4C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085B14_94AC4.s")

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
		0x71C, -0x1555, D_802566C2[sp27][0]);
}

void func_80085DC8_94D78(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
	func_80085CE0_94C90(arg0, arg1, arg2, arg3, arg4);
	func_80085B14_94AC4(arg0, arg1, 0x2000, arg2, arg4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085E2C_94DDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085F68_94F18.s")

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
		D_802566C2[sp27][0]);
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800868A4_95854.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800871CC_9617C.s")

void func_8008735C_9630C(u8 arg0) {
	alienInstances[arg0].unk20 |= 0x100;
	func_8008064C_8F5FC(arg0);
}

#ifdef NON_MATCHING
void func_800873A8_96358(u8 arg0) {
	AlienInstance *inst;
	inst = &alienInstances[arg0];
	if (inst->unk20 & 0x100) {
		if (func_80085838_947E8(arg0) != 0) {
			func_8008735C_9630C(arg0);
			return;
		}
	}
	inst->unk12 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800873A8_96358.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008741C_963CC.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800879A4_96954.s")

void func_80087AAC_96A5C(u8 arg0) {
	if (!(alienInstances[arg0].unk20 & 0x300000)) {
		alienInstances[arg0].unk12 = 0;
		alienInstances[arg0].unk2C = 0x28;
		alienInstances[arg0].unk20 |= 0x200000;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80087AFC_96AAC.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80087D18_96CC8.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80087F08_96EB8.s")

#ifdef NON_MATCHING
void func_80088000_96FB0(s16 arg0)
{
  s32 i;
 i = 0; do {
	if (arg0 != i)
	{
	  if (alienInstances[i].specIndex == 1)
	  {
		func_80079910_888C0(i);
	  }
	  else
		if (alienInstances[i].specIndex != 0)
	  {
		func_80088760_97710(&alienInstances[i]);
	  }
	}
	i++;
  }
  while (i != 0xFF);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80088000_96FB0.s")
#endif

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80088760_97710.s")

void func_80088E10_97DC0(s16 arg0) {
	D_8014DD50[arg0].unk2 += 0x8000;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80088E40_97DF0.s")

s32 func_80088F78_97F28(u8 arg0) {
	s32 unk0 = *(s32 *)&alienSpecs[alienInstances[arg0].specIndex];
	if (((u32)unk0 >> 0x18) == 1) {
		unk0 = func_80011FAC_12BAC((void *)unk0);
	} else {
		unk0 = func_80011F90_12B90((void *)unk0);
	}
	return *(s32 *)(unk0 + 4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80088FFC_97FAC.s")

void func_8008916C_9811C(u8 arg0, s16 arg1) {
	s16 padX;
	s16 sp24;
	s32 sp20;
	padX = alienInstances[arg0].unkC;
	sp24 = D_8014DD50[padX].unkC;
	sp20 = *(s32 *)&alienSpecs[alienInstances[arg0].specIndex];
	sp20 = func_80012000_12C00(sp20);
	func_80088FFC_97FAC(&sp20, arg1, sp24);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80089200_981B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800893C8_98378.s")

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

#ifdef NON_MATCHING
void func_80089EB4_98E64(u8 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
	if (!(alienInstances[arg0].unk20 & 0x100000)) {
		if (alienInstances[arg0].unk20 & 0x600) {
			func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16)(&D_8025668C)[alienInstances[arg0].specIndex * 0x34], arg2);
		}
		alienInstances[arg0].unk2C = arg1;
		return;
	}
	if ((alienInstances[arg0].unk2C == 1) && (alienInstances[arg0].unk20 & 0x600)) {
		func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16)(&D_8025668C)[alienInstances[arg0].specIndex * 0x34], arg3);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80089EB4_98E64.s")
#endif

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
		if (alien->unk1E != 0xFF) {
			func_80079910_888C0(alien->unk1E);
		}
		alien->unk20 |= 0x4000;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008A3EC_9939C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008AAFC_99AAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008AC5C_99C0C.s")

#ifdef NON_MATCHING
void func_8008AF58_99F08(u8 arg0)
{
	AlienInstance *inst = &alienInstances[arg0];
	s32 flags = inst->unk20;
	if (!inst)
	{
	}
	if (!(flags & 0x100000))
	{
	func_8008AC5C_99C0C(arg0, flags);
	return;
	}
	if (((0, inst->unk2C == 0x50)) || ((!(flags & 0x40000000)) && ((inst->unk47 & 0xFFFF) & 1)))
	{
	flags = flags | 0x40000000;
	inst->unk20 = flags;
	}
	if ((flags & 0x40000000) || (inst->unk2C < 0x50))
	{
	func_8008AAFC_99AAC(arg0, (&D_8025668C)[inst->specIndex * 0x34], 2);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008AF58_99F08.s")
#endif

#ifdef NON_MATCHING
void func_8008B02C_99FDC(u8 arg0)
{
  if (alienInstances[arg0].unk20 & 0x600)
  {
	if (!(alienInstances[arg0].unk20 & 0x100000))
	{
	  if (alienInstances[arg0].unk20 & 0x600)
	  {
		func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16) (&D_8025668C)[alienInstances[arg0].specIndex * 0x34], 0);
	  }
	  alienInstances[arg0].unk2C = 0x7FFF;
	  alienInstances[arg0].unk20 |= 0x40000000;
	}
	func_8008AAFC_99AAC(arg0, (&D_8025668C)[(((((((((alienInstances[arg0].specIndex & 0xFF) & 0xFF) & 0xFF) & 0xFF) & 0xFF) & 0xFF) & 0xFF) & 0xFF) & 0xFF) * 0x34], 3);
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008B02C_99FDC.s")
#endif

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008BF8C_9AF3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008C0F8_9B0A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008C428_9B3D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008C7B0_9B760.s")

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
		do {} while(0); do { osSyncPrintf(&D_80141E80, *((s32 *) (&D_80256698[inst->specIndex])), parent, parentUnk20); } while (0);
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
	inst->unk2C = 0x4B0 - *(&D_802566D1 + (u32)inst->specIndex * 0x68) * 5;
	alienInstances[unk25].unk20 |= 0x1000;
	if (alienInstances[unk25].unk2C < 4) {
		alienInstances[unk25].unk2C = 4;
	}
	func_8008D3B0_9C360(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008D4A0_9C450.s")

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
#ifdef NON_MATCHING
s32 func_8008D978_9C928(u8 arg0)
{
  AlienInstance *inst = &alienInstances[arg0];
  u8 unk25 = inst->unk25;
  AlienInstance *new_var;
  if (unk25 != 0xFF)
  {
	if (alienInstances[unk25].unk20 & 0x300000)
	{
	  new_var = &alienInstances[alienInstances[unk25].unk25];
	  if ((*new_var).unk20 & 0x2000)
	  {
		func_80087AAC_96A5C(arg0);
	  }
	  inst->unk25 = 0xFF;
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008E978_9D928.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008EF7C_9DF2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008F0BC_9E06C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008F6C0_9E670.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008F8D4_9E884.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008F9E4_9E994.s")

s32 func_8008FC78_9EC28(u8 arg0) {
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008FD0C_9ECBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008FE18_9EDC8.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80090948_9F8F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80090A6C_9FA1C.s")

#ifdef NON_MATCHING
void func_80090C14_9FBC4(u8 arg0)
{
  s16 sp2C;
  int new_var;
  s32 var_a0;
  s32 var_a1;
  int new_var2;
  AlienInstance *sp1C;
  sp1C = &alienInstances[arg0];
  new_var2 = sp1C->unk14 - sp1C->unk0;
  new_var = sp1C->unk18 - sp1C->unk4;
  sp2C = func_80003824_4424((f32) (-new_var), (f32) new_var2);
  var_a0 = sp2C - func_80003824_4424((f32) (D_80052B34->unk0 - sp1C->unk0), (f32) (D_80052B34->unk4 - sp1C->unk4));
  var_a1 = -var_a0;
  if (((var_a1 < var_a0) ? (var_a0) : (var_a1)) < 0x4000)
  {
	sp2C += 0x8000;
  }
  sp1C->unk34 = 0x78;
  sp1C->unk47 |= 1;
  sp1C->unk2A = sp2C;
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8009179C_A074C.s")

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

// https://decomp.me/scratch/MmU1f
#ifdef NON_MATCHING
u8 func_80092A50_A1A00(s16 arg0, s16 arg1, s32 arg2)
{
	s16 new_var2;
	u8 new_var;
	int new_var3;
	u8 result = func_8007956C_8851C(0xA) & 0xFF;
	if (1) { } if (1) { } if (1) { }
	if (result != 0xFF)
	{
		new_var = result;

		new_var3 = 0x2000;
		alienInstances[new_var].unk0 = arg0;
		new_var2 = (alienInstances[result].unk4 = arg1);
		alienInstances[result].unk20 &= 0xF7FFFFFF;
		alienInstances[result].unk20 |= (int) new_var3;
		alienInstances[result].unk3F = arg2;
	}
	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80092A50_A1A00.s")
#endif

#ifdef NON_MATCHING
void func_80092ADC_A1A8C(void)
{
	Unk8013CA *p = &D_8013CA00;
	u8 new_var;
	u8 result;
	do
	{
		result = func_80092A50_A1A00((s16) (p->unk0 << 8), (s16) (p->unk1 << 8), 0x10);
		result += 0;
		if (result != 0xFF)
		{
			new_var = result;
			alienInstances[result].unk26 = 0;
			alienInstances[result].unk38 = 0x2F;
			alienInstances[new_var].unk20 |= 0x4000;
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80092DFC_A1DAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80092EF4_A1EA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80093164_A2114.s")

void func_800932A8_A2258(u8 arg0) {
	func_8008EDFC_9DDAC(arg0);
	func_8008EF1C_9DECC(arg0);
	func_80093164_A2114(arg0);
	if (alienInstances[arg0].unk20 & 0x08000000) {
		if (func_80084FE8_93F98(arg0, 0x1000) != 0) {
			if (func_80087188_96138(arg0, 0, 0x10) != 0) {
				*(s16 *)&alienInstances[arg0].unk1E = 0x32;
			}
		}
	}
	if (*(s16 *)&alienInstances[arg0].unk1E != 0) {
		*(s16 *)&alienInstances[arg0].unk1E = *(s16 *)&alienInstances[arg0].unk1E - 1;
	}
}

#ifdef NON_MATCHING
void func_8009335C_A230C(u8 arg0) {
	s32 dz;
	s32 dx;
	s32 neg_dz;
	s32 neg_dx;
	s32 abs_dx;
	s32 abs_dz;

	func_800873A8_96358(arg0);

	dz = alienInstances[arg0].unk0 - D_80052B34->unk0;
	neg_dz = -dz;
	dx = alienInstances[arg0].unk4 - D_80052B34->unk4;

	if (neg_dz < dz) {
		abs_dz = dz;
	} else {
		abs_dz = neg_dz;
	}

	neg_dx = -dx;
	abs_dx = neg_dx;
	if (neg_dx < dx) {
		abs_dx = dx;
	}

	if (abs_dx < abs_dz) {
		if (neg_dz < dz) {
		} else {
			dz = neg_dz;
		}
	} else {
		abs_dx = neg_dx;
		if (neg_dx < dx) {
			abs_dx = dx;
		}
		dz = abs_dx;
	}

	if (dz < 0xC00) {
		alienInstances[arg0].unk12 = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8009335C_A230C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80093438_A23E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8009377C_A272C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8009395C_A290C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80093AE4_A2A94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80093C7C_A2C2C.s")

void func_800946A4_A3654(u8 arg0) {
	func_8008735C_9630C(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800946CC_A367C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80094808_A37B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8009490C_A38BC.s")

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
