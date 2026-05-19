#include <ultra64.h>
#include "common.h"

u8 D_8013D8C0_14C870[0x18] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x58, 0x00, 0x00, 0x02, 0x58,
	0x00, 0x00, 0x03, 0x20, 0x00, 0x00, 0x03, 0x20, 0x00, 0x00, 0x02, 0x58,
};
u32 D_8013D8D8_14C888[6] = { 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 };

s16 D_8013D8F0_14C8A0[] = {
	-0x0100, -0x0100, 0x0000, -0x0100, 0x0100, -0x0100, 0x0100, 0x0000,
	0x0100, 0x0100, 0x0000, 0x0100, -0x0100, 0x0100, -0x0100, 0x0000,
};

s32 D_8013D910_14C8C0[3] = { 0, 0, 0 };
Unk_8013D91C D_8013D91C[6] = {
	{ 0x0000, 0x0000 },
	{ 0x0000, 0x0258 },
	{ 0x0000, 0x0258 },
	{ 0x0000, 0x0320 },
	{ 0x0000, 0x0320 },
	{ 0x0000, 0x0258 },
};


void func_800A92E0_B8290(u8 arg0, s32 arg1) {
	if ((alienInstances[arg0].unk20 & arg1) == arg1) {
		D_80140AC4_14FA74 = 0;
	}
}

void func_800A931C_B82CC(s8 arg0, s16 *arg1, s32 *arg2) {
	func_800044D4_50D4(arg1, arg2, &D_8014DD50[(s32)arg0].unk6);
	arg2[0] += D_8014DD50[(s32)arg0].unk0;
	arg2[1] += D_8014DD50[(s32)arg0].unk2;
	arg2[2] += D_8014DD50[(s32)arg0].unk4;
}

/* CURRENT(2517) */
#ifdef NON_MATCHING
void func_800A93A4_B8354(u8 arg0, s32 arg1, s32 arg2, s32 arg3) {
	AlienInstance *inst;
	AlienInstance *parent;
	s32 pad0;
	s32 pad1;
	s16 rotX;
	s16 rotY;
	s16 rotZ;
	s16 offA;
	s16 offB;
	s16 offC;
	s16 cosVal;
	s16 sinVal;
	f64 tmp0;

	inst = &alienInstances[arg0];
	parent = &alienInstances[inst->unk25];
	if ((parent->unk20 << 11) < 0) {
		func_80088760_97710(inst);
	}

	rotX = parent->unk6;
	rotZ = parent->unkA;
	rotY = parent->unk8;

	inst->unk0 = parent->unk0;
	inst->unk2 = parent->unk2;
	inst->unk4 = parent->unk4;
	inst->unk6 = parent->unk6;
	inst->unk8 = parent->unk8;
	inst->unkA = parent->unkA;
	inst->unkE = parent->unkE;

	cosVal = coss((u16)rotZ);
	sinVal = sins((u16)rotZ);
	offA = (s16)(s32)(((f64)arg2 * ((f64)(f32)cosVal / 32768.0)) - (((f64)(f32)sinVal / 32768.0) * (f64)arg3));

	sinVal = sins((u16)rotZ);
	cosVal = coss((u16)rotZ);
	offB = (s16)(s32)((((f64)(f32)cosVal / 32768.0) * (f64)arg3) + ((f64)arg3 * ((f64)(f32)sinVal / 32768.0)));

	cosVal = coss((u16)rotY);
	sinVal = sins((u16)rotY);
	tmp0 = (f64)offA;
	offC = (s16)(s32)(((f64)arg1 * ((f64)(f32)cosVal / 32768.0)) - (((f64)(f32)sinVal / 32768.0) * tmp0));

	sinVal = sins((u16)rotY);
	cosVal = coss((u16)rotY);
	inst->unk2 += (s16)(s32)((((f64)(f32)cosVal / 32768.0) * tmp0) + ((f64)arg1 * ((f64)(f32)sinVal / 32768.0)));

	cosVal = coss((u16)rotX);
	sinVal = sins((u16)rotX);
	inst->unk0 = (s16)(s32)((f64)inst->unk0 + (((f64)offC * ((f64)(f32)sinVal / 32768.0)) + ((f64)offB * ((f64)(f32)cosVal / 32768.0))));

	sinVal = sins((u16)rotX);
	cosVal = coss((u16)rotX);
	inst->unk4 = (s16)(s32)((f64)inst->unk4 + (((f64)(-offC) * ((f64)(f32)cosVal / 32768.0)) + ((f64)offB * ((f64)(f32)sinVal / 32768.0))));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A93A4_B8354.s")
#endif

#ifdef NON_MATCHING
void func_800A9738_B86E8(u8 arg0, s32 arg1) {
	AlienInstance *parent;

	alienInstances[arg0].unk20 |= arg1;
	parent = &alienInstances[alienInstances[arg0].unk25];
	if (alienInstances[((u8 *)parent)[0]].specIndex != 0) {
		alienInstances[((u8 *)parent)[0]].unk20 |= arg1;
	}
	if (alienInstances[((u8 *)parent)[1]].specIndex != 0) {
		alienInstances[((u8 *)parent)[1]].unk20 |= arg1;
	}
	if (alienInstances[((u8 *)parent)[2]].specIndex != 0) {
		alienInstances[((u8 *)parent)[2]].unk20 |= arg1;
	}
	if (alienInstances[((u8 *)parent)[3]].specIndex != 0) {
		alienInstances[((u8 *)parent)[3]].unk20 |= arg1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9738_B86E8.s")
#endif

#ifdef NON_MATCHING
void func_800A9820_B87D0(u8 arg0, s32 arg1) {
	AlienInstance *parent;

	alienInstances[arg0].unk20 &= ~arg1;
	parent = &alienInstances[alienInstances[arg0].unk25];
	if (alienInstances[((u8 *)parent)[0]].specIndex != 0) {
		alienInstances[((u8 *)parent)[0]].unk20 &= ~arg1;
	}
	if (alienInstances[((u8 *)parent)[1]].specIndex != 0) {
		alienInstances[((u8 *)parent)[1]].unk20 &= ~arg1;
	}
	if (alienInstances[((u8 *)parent)[2]].specIndex != 0) {
		alienInstances[((u8 *)parent)[2]].unk20 &= ~arg1;
	}
	if (alienInstances[((u8 *)parent)[3]].specIndex != 0) {
		alienInstances[((u8 *)parent)[3]].unk20 &= ~arg1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9820_B87D0.s")
#endif

void func_800A9908_B88B8(u8 arg0, s32 arg1) {
	s16 sp38[4];
	s32 sp30;
	s32 sp34;
	s32 sp3C;

	sp38[0] = D_8014DD50[alienInstances[arg0].unkC].unkC;
	sp38[1] = D_8014DD50[sp38[0]].unkC;
	sp38[2] = D_8014DD50[sp38[0]].unkD;
	sp38[3] = D_8014DD50[sp38[2]].unkC;
	if (func_80081F18_90EC8(arg0, 4, 3, sp38, arg1) == 3) {
		alienInstances[arg0].unk36 = 0;
	}
}

void func_800A99B8_B8968(u8 arg0)
{
  int new_var;
  int new_var2;
  s16 step;
  step = alienSpecs[alienInstances[arg0].specIndex].unk42;
  new_var = D_80052B34->unk0 - alienInstances[arg0].unk0;
  new_var2 = D_80052B34->unk4 - alienInstances[arg0].unk4;
  new_var = func_80003824_4424(new_var, new_var2);
  if (-step >= (s16)(new_var - alienInstances[arg0].unk6))
  {
	alienInstances[arg0].unk6 -= step;
  }
  else if (step < (s16)(new_var - alienInstances[arg0].unk6))
	{
	  alienInstances[arg0].unk6 += step;
	} 
}

// CURRENT(2825)
#ifdef NON_MATCHING
s32 func_800A9A90_B8A40(u8 arg0, s32 arg1, f32 arg2) {
	AlienInstance *alien;
	AlienInstance *leader;
	u8 *members;
	u8 specIndex;
	s32 hpDelta;
	s32 i;

	alien = &alienInstances[arg0];
	leader = &alienInstances[alien->unk25];
	members = (u8 *)leader;
	specIndex = alien->specIndex;

	if (((u32)D_80052A8C % 100) != 0) {
		return 0;
	}

	hpDelta = D_8013D8D8_14C888[0] - alien->hitPoints;

	for (i = 1; i < arg1; i++) {
		if (members[i - 1] != 0xFF) {
			hpDelta += D_8013D8D8_14C888[i] - alienInstances[members[i - 1]].hitPoints;
		}
	}

	D_8013D8D8_14C888[0] = alien->hitPoints;

	for (i = 1; i < arg1; i++) {
		if (members[i - 1] != 0xFF) {
			D_8013D8D8_14C888[i] = alienInstances[members[i - 1]].hitPoints;
		}
	}

	if (((f32) * (u16 *)&D_802566BA[specIndex * 0x68] * arg2) < (f32) hpDelta) {
		return 1;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9A90_B8A40.s")
#endif

void func_800A9DC0_B8D70(func_800A9DC0_B8D70_arg *arg0) {
	s32 idx = arg0->unk8;
	AlienInstance *temp2 = &alienInstances[alienInstances[idx].unk25];
	AlienInstance *temp = &alienInstances[idx];
	
	temp2->unk20 &= ~0x10000;
	temp->unk20 &= ~(0x20000000 | 0x400000);
}

void func_800A9E1C_B8DCC(Unk80222A78 *arg0)
{
  u8 alienIdx;
	u8 temp;
  AlienInstance *alien;
  s32 x;
  s32 z;
  s32 a1, a2;
  alienIdx = arg0->unk8;
  alien = &alienInstances[alienIdx];
  x = (arg0->unk1 << 8) + 0x80;
  z = (arg0->unk2 << 8) + 0x80;
  alien->unk0 = x;
  alien->unk4 = z;
  alien->unk2 += 0x8000;
  alien->unk20 |= 0x20000000;
  if (alien->unk20 & 0x80000)
  {
	temp = alien->unk20 & 7;
	func_800F2D48_101CF8(temp, x, z);
  }
  arg0->unk4 += 9;
  arg0->unkC = func_800A9DC0_B8D70;
  func_800AE454_BD404(arg0);
	a1 = D_80052B34->unk0 - alien->unk0;
	a2 = D_80052B34->unk4 - alien->unk4;
  alien->unkE = func_80003824_4424(a1, a2);
}

// CURRENT(11373)
#ifdef NON_MATCHING
s32 func_800A9F34_B8EE4(u8 arg0) {
	AlienInstance *alien;
	AlienInstance *parent;
	Unk80222A78 callback;
	s32 rndX;
	s32 rndZ;
	s32 dx;
	s32 dz;
	s32 absDx;
	s32 absDz;
	s32 velX;
	s32 velZ;
	s16 x;
	s16 z;
	s16 levelColor;

	alien = &alienInstances[arg0];
	parent = &alienInstances[alien->unk25];
	if (parent->unk20 & 0x10000) {
		return 0;
	}

	x = alien->unk0;
	z = alien->unk4;
	rndX = (func_800038E0_44E0() % 1000) + parent->unk24 - 1000;
	rndZ = (func_800038E0_44E0() % 1000) + parent->unk26 - 1000;

	dx = x - rndX;
	absDx = -dx;
	if (absDx < dx) {
		absDx = dx;
	}

	dz = z - rndZ;
	absDz = -dz;
	if (absDz < dz) {
		absDz = dz;
	}

	sqrtf((f32)((absDx * absDx) + (absDz * absDz)));

	if (alien->unk12 >= 0) {
		velX = (s32)(((f64)(f32)sins((alien->unk6 - 0x4000) & 0xFFFF) / 32768.0) * 256.0);
		velZ = (s32)(((f64)(f32)coss((alien->unk6 - 0x4000) & 0xFFFF) / 32768.0) * -256.0);
	} else {
		velX = (s32)(((f64)(f32)sins((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0) * 256.0);
		velZ = (s32)(((f64)(f32)coss((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0) * -256.0);
	}

	if (((func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8) + 5) <
		(func_800B84D0_C7480((s16)(alien->unk0 - velX), (s16)(alien->unk4 - velZ)) >> 8)) {
		parent->unk20 |= 0x10000;
		alien->unk12 = 0;
		alien->unk20 |= 0x400000;

		callback.unk0 = 2;
		callback.unk1 = (s8)(rndX >> 8);
		callback.unk2 = (s8)(rndZ >> 8);
		callback.unk4 = D_8014F820 + 8;
		callback.unk8 = arg0;
		callback.unkC = func_800A9E1C_B8DCC;
		func_800AE454_BD404(&callback);

		levelColor = *(s16*)&D_8013D8C0_14C870[(s32)currentLevel * 4 + 6];
		func_800CF80C_DE7BC(alien->unk0, alien->unk2, alien->unk4, levelColor, 0xA0, 0xFF, 0, 3);

		x = (s16)rndX;
		z = (s16)rndZ;
		func_800CF80C_DE7BC(x, (s16)(func_800B84D0_C7480(x, z) >> (D_802571D0 + 8)), z, levelColor, 0xA0, 0xFF, 0, 2);
		return 1;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9F34_B8EE4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AA340_B92F0.s")

s32 func_800AB250_BA200(u8 arg0, s32 arg1) {
	AlienInstance *ptr;
	s32 dx;
	s32 dz;
	ptr = &alienInstances[arg0];
	if (ptr->unk20 & 0x08000000)
	{
		return 1;
	}
	ptr = &alienInstances[arg0];
	dx = D_80052B34->unk0 - ptr->unk0;
	dz = D_80052B34->unk4 - ptr->unk4;
	if (((s32) sqrtf((f32) ((dx * dx) + (dz * dz)))) < arg1)
	{
		ptr->unk20 |= 0x08000100;
		return 1;
	}
	return 0;
}

void func_800AB32C_BA2DC(u8 arg0) {
	if (D_80222A70 >= alienInstances[arg0].unk2) {
		func_80088760_97710(&alienInstances[arg0]);
		alienInstances[arg0].unk2C = 0xA;
	}
}

void func_800AB390_BA340(u8 arg0) {
	if (func_80080840_8F7F0(arg0, 0x19)) {
		alienInstances[arg0].unk20 |= 0x80;
		alienInstances[arg0].unk20 &= ~0x100;
		alienInstances[arg0].unk24 = 0x1C;
	}
	func_800AB32C_BA2DC(arg0);
}

void func_800AB408_BA3B8(u8 arg0) {
	s32 temp_a0;
	s32 temp_v1;
	AlienInstance* temp_v0;

	temp_v0 = &alienInstances[arg0];
	temp_v0->unk48 = 0xC0;
	if (*(s16*) ((u8*) temp_v0 + 0x38) != 0x64) {
		temp_v1 = vehicleInstances[13].unk0 - temp_v0->unk0;
		temp_a0 = vehicleInstances[13].unk4 - temp_v0->unk4;
		if (((temp_v1 * temp_v1) + (temp_a0 * temp_a0)) < 0x40000) {
			func_800AD814_BC7C4(arg0, 0xB, 0xD, *((u8*) temp_v0 + 0x3F));
		}
	}
}

void func_800AB4B4_BA464(u8 arg0) {
	VehicleInstance *spec;
	s32 dx, dz, ndx, ndz;
	s32 absDx, absDz;

	spec = &vehicleInstances[alienInstances[arg0].unk38];
	dx = alienInstances[arg0].unk0 - spec->unk0;
	dz = alienInstances[arg0].unk4 - spec->unk4;
	ndx = -dx;
	absDx = (ndx < dx) ? dx : ndx;
	ndz = -dz;
	if (absDx < 0xC9) {
		absDz = (ndz < dz) ? dz : ndz;
		if (absDz < 0xC9) {
			return;
		}
	}
	alienInstances[arg0].unk24--;
	alienInstances[arg0].unk48 = 0xC0;
	
}

#ifdef NON_MATCHING
void func_800AB570_BA520(u8 arg0) {
	s32 pad0;
	s32 pad1;
	s16 targetX;
	s16 targetY;
	s16 targetZ;
	s32 dx;
	s32 negDx;
	s32 absDx;
	s32 dz;
	s32 negDz;
	s32 absDz;

	alienInstances[arg0].unk48 = 0xC0;
	if (func_80080840_8F7F0(arg0, 0x23) != 0) {
		alienInstances[arg0].unk48 = 0;
		alienInstances[arg0].unk36 = 0;
		alienInstances[arg0].unk24++;
		return;
	}

	func_8011B3F0_12A3A0(0x64, &targetX, &targetY, &targetZ);
	dx = alienInstances[arg0].unk0 - targetX;
	dz = alienInstances[arg0].unk4 - targetZ;
	negDx = -dx;
	if (negDx < dx) {
		absDx = dx;
	} else {
		absDx = negDx;
	}
	negDz = -dz;
	if (negDz < dz) {
		absDz = dz;
	} else {
		absDz = negDz;
	}
	if (absDz < absDx) {
		if (negDx < dx) {
			absDx = dx;
		} else {
			absDx = negDx;
		}
		dx = absDx;
	} else {
		if (negDz < dz) {
			negDx = dz;
		} else {
			negDx = negDz;
		}
		dx = negDx;
	}
	if (!(dx < 0x4B0)) {
		return;
	}
	alienInstances[arg0].unk20 &= 0xFFFDFE5F;
	alienInstances[arg0].unk24 = 0x14;
	alienInstances[arg0].unk38 = 0x64;
	alienInstances[arg0].unk14 = targetX;
	alienInstances[arg0].unk18 = targetZ;
	alienInstances[arg0].unk20 |= 0x100;
	alienInstances[arg0].unk48 = 0xA0;
	alienInstances[arg0].unk16 = targetY;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AB570_BA520.s")
#endif

void func_800AB6D0_BA680(u8 arg0) {
	alienInstances[arg0].unkE += 0x100;
}

void func_800AB700_BA6B0(u8 arg0) {
	alienInstances[arg0].unkE += 0x400;
}

void func_800AB730_BA6E0(u8 arg0) {
	s32 dx;
	s32 dz;
	s32 neg_dx;
	s32 neg_dz;
	s32 abs_dx, abs_dz;

	dx = alienInstances[arg0].unk0 - D_80052B34->unk0;
	dz = alienInstances[arg0].unk4 - D_80052B34->unk4;
	neg_dx = -dx;
	if (neg_dx < dx) {
		abs_dx = dx;
	} else {
		abs_dx = neg_dx;
	}
	neg_dz = -dz;
	if (abs_dx < 0xC9) {
		if (neg_dz < dz) {
			abs_dz = dz;
		} else {
			abs_dz = neg_dz;
		}
		if (abs_dz < 0xC9) {
			if (alienInstances[arg0].unk24 != 0xE || D_80052B34->unk1A == 0) {
				return;
			}
		}
	}
	alienInstances[arg0].unk24--;
	alienInstances[arg0].unk20 |= 0x08020000;
	alienInstances[arg0].unk20 &= ~0x8020;
	alienInstances[arg0].unk48 = 0xC0;
}

void func_800AB80C_BA7BC(u8 arg0) {
	s32 dummy1, dummy2, dummy3, dummy4;
	alienInstances[arg0].unk48 = 0xC0;
	if (alienInstances[arg0].unk24 == 0xD && D_80052B34->unk1A != 0) {
		alienInstances[arg0].unk20 &= 0xFFFDFFFF;
		alienInstances[arg0].unk24 = 0x15;
		return;
	}
	if (func_80080840_8F7F0(arg0, 0x23) != 0) {
		alienInstances[arg0].unk48 = 0;
		alienInstances[arg0].unk24++;
		alienInstances[arg0].unk36 = 0;
		alienInstances[arg0].unk20 &= 0xFFFDFFFF;
	}
}

// CURRENT(5564)
#ifdef NON_MATCHING
void func_800AB8CC_BA87C(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	AlienInstance *spec = &alienInstances[inst->unk25];
	s32 helper0;
	s32 helper1;
	s32 helper2;
	s32 result;

	if (spec->specIndex == 2) {
		if (spec->unk20 & 0x4000) {
			result = func_8008FF54_9EF04(spec->unk25, &helper0, &helper1, &helper2);
			inst->unk2 = (s16)(((spec->unk2C * (helper1 - result)) / 0xF) + result);
			return;
		}

		inst->unk2 = (s16)(((f32)sins((u16)((D_80052A8C + spec->unk25) * 0x1388)) * 4.0f / 7.0f) + spec->unk2);
		return;
	}

	if (spec->specIndex != 0x19) {
		inst->unk24 = 0;
		inst->unk2C = 0xC;
		inst->unk20 |= 0x4000;
		return;
	}

	result = func_8008FF54_9EF04(spec->unk25, &helper0, &helper1, &helper2);
	inst->unk0 = (s16)helper0;
	inst->unk2 = (s16)helper1;
	inst->unk4 = (s16)helper2;

	if (spec->unk20 & 0x600) {
		inst->unk2 += *(s16 *)&D_8014DD52[spec->unkC * 0x10];
	}

	inst->unk2C++;
	if ((inst->unk2C % 0xC) != 0) {
		return;
	}

	if ((inst->unk24 == 1) || (inst->unk24 == 0x1D)) {
		s32 rand0;
		s32 rand1;
		s32 rand2;
		s32 rand3;

		rand0 = func_800038E0_44E0();
		rand1 = func_800038E0_44E0();
		rand2 = func_800038E0_44E0();
		rand3 = func_800038E0_44E0();
		func_800CA5EC_D959C(inst->unk0, inst->unk2, inst->unk4,
			(s8)((rand0 % 50) - 0x19), 0x50, (s8)((rand1 % 50) - 0x19), 0x19, 5,
			(u8)((rand2 % 8) + 0xC), (u8)((rand3 % 0x23) + 0x69), 0, 0xFF, 0, 0xFF);
		return;
	}

	func_800E05B4_EF564(inst->unk0, inst->unk2, inst->unk4, 0x64);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AB8CC_BA87C.s")
#endif

void func_800ABC2C_BABDC(u8 arg0) {
	AlienInstance *ptr = &alienInstances[arg0];

	if (ptr->unk20 & 0x4000) {
		ptr->unk48 = 0;
		if (ptr->unk2C != 0) {
			ptr->unk2C = ptr->unk2C - 1;
			return;
		}
		ptr->unk20 &= ~0x4000;
		func_800E0AE0_EFA90(ptr->unk0, ptr->unk2 + 0x14, ptr->unk4, 0);
		return;
	}
	ptr->unk48 = 0x30;
}

// CURRENT(20)
#ifdef NON_MATCHING
s32 func_800ABCC8_BAC78(u8 arg0) {
	if (alienInstances[arg0].unk20 & 0x600) {
		switch (alienInstances[arg0].unk24) {
			case 1:
				func_800ABC2C_BABDC(arg0);
				break;

			case 3:
			case 4:
			case 29:
				func_800AB8CC_BA87C(arg0);
				return 1;

			case 5:
			case 7:
			case 9:
			case 13:
				func_800AB80C_BA7BC(arg0);
				break;

			case 6:
			case 8:
			case 10:
			case 14:
				func_800AB730_BA6E0(arg0);
				break;

			case 11:
				func_800AB570_BA520(arg0);
				break;

			case 12:
				func_800AB4B4_BA464(arg0);
				break;

			case 20:
				func_800AB408_BA3B8(arg0);
				break;

			case 27:
				func_800AB390_BA340(arg0);
				break;

			case 28:
				func_800AB32C_BA2DC(arg0);
				break;
		}
	} else {
		switch (alienInstances[arg0].unk24) {
			case 15:
			case 16:
				return 1;

			case 1:
				alienInstances[arg0].unk48 = 0;
				break;

			case 3:
			case 4:
			case 29:
				func_800AB8CC_BA87C(arg0);
				return 1;

			case 5:
			case 7:
			case 9:
			case 13:
				func_800AB80C_BA7BC(arg0);
				break;

			case 6:
			case 8:
			case 10:
				func_800AB730_BA6E0(arg0);
				break;

			case 11:
				func_800AB570_BA520(arg0);
				break;

			case 12:
				func_800AB4B4_BA464(arg0);
				break;

			case 20:
				func_800AB408_BA3B8(arg0);
				break;

			case 27:
				func_800AB390_BA340(arg0);
				break;

			case 28:
				func_800AB32C_BA2DC(arg0);
				break;
		}
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ABCC8_BAC78.s")
#endif

// NON_MATCHING: regalloc only - all instructions and ordering match, persistent
// +2 temp register offset (score 145). Target uses v1 for rnd variable but IDO
// allocates t1 instead, shifting all subsequent temps by 2 positions.
#ifdef NON_MATCHING
void func_800ABE7C_BAE2C(u8 arg0) {
	s32 rnd;
	s32 x = alienInstances[arg0].unk0 >> 8;
	s32 z = alienInstances[arg0].unk4 >> 8;
	s32 i;
	s16 *offsets;
	s32 baseX;
	s32 baseZ;

	rnd = func_800038E0_44E0() >> 13;
	i = 0;
	offsets = &D_8013D8F0_14C8A0[(rnd & 0xFFFF) * 2];
	baseX = x << 8;
	baseZ = z << 8;

	do {
		i++;
		x = offsets[0] + baseX + 0x80;
		z = offsets[1] + baseZ + 0x80;
		if (func_800B325C_C220C((s8)(x >> 8), (s8)(z >> 8), 0x1800) == 0) {
			break;
		}
	} while (i != 8);

	if (i < 8) {
		alienInstances[arg0].unk14 = x;
		alienInstances[arg0].unk18 = z;
		alienInstances[arg0].unk16 = func_800B84D0_C7480((s16)x, (s16)z) >> 8;
		alienInstances[arg0].unk20 |= 0x100;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ABE7C_BAE2C.s")
#endif

void func_800ABFC0_BAF70(u8 arg0)
{
	s32 pad;
  s32 sp28;
  s32 sp24;
  func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);
  sp28 = alienInstances[arg0].unk0 >> 8;
  sp24 = alienInstances[arg0].unk4 >> 8;
  if ((func_80080840_8F7F0(arg0, 0xA) != 0) || (func_800B325C_C220C((s8) sp28, (s8) sp24, 0x800) != 0))
  {
	func_800ABE7C_BAE2C(arg0);
  }
  func_800AC198_BB148(arg0);
}

void func_800AC064_BB014(u8 arg0) {

	if (alienInstances[arg0].unk3A != 0) {
		alienInstances[arg0].unk3A = alienInstances[arg0].unk3A - 1;
		return;
	}
	alienInstances[arg0].unk3A = (s16) ((func_800038E0_44E0() >> 6) + 0x80);
	if (++alienInstances[arg0].unk26 >= 2) {
		alienInstances[arg0].unk26 = 0;
	}
}

void func_800AC0E4_BB094(u8 arg0)
{
  AlienInstance *alien;
  alienInstances[arg0].unk48 = 0;
  alien = &alienInstances[arg0];
  if (((alienInstances[alien->unk38].unk20) << 11) < 0)
  {
	alien->unk20 &= ~0x20;
	alien->unk48 = 0x40;
	return;
  }
  if (alien->unk36 == 0x10)
  {
	alien->unk1E = 0;
  }
  func_8012B110_13A0C0((s32) alien, 0, (InputStruct_8012B150 *) &alienInstances[alien->unk38]);
}

#ifdef NON_MATCHING
void func_800AC198_BB148(u8 arg0) {
	AlienInstance *alien;
	s8 zoneIdx;
	Unk80146688 *zone;
	s32 dx, neg_dx, abs_dx;
	s32 dz, neg_dz, abs_dz;

	alien = &alienInstances[arg0];
	zoneIdx = alien->unk3D;

	if (zoneIdx != -1) {
		zone = &D_80146688_155638[currentLevel - 1][zoneIdx];
		dx = zone->unk0 - (alien->unk0 >> 8);
		neg_dx = -dx;
		dz = zone->unk1 - (alien->unk4 >> 8);
		if (neg_dx < dx) { abs_dx = dx; } else { abs_dx = neg_dx; }
		neg_dz = -dz;
		if (neg_dz < dz) { abs_dz = dz; } else { abs_dz = neg_dz; }

		if (abs_dz < abs_dx) {
			if (neg_dx < dx) { abs_dx = dx; } else { abs_dx = neg_dx; }
			dx = abs_dx;
		} else {
			if (neg_dz < dz) { neg_dx = dz; } else { neg_dx = neg_dz; }
			dx = neg_dx;
		}

		if (zone->unk2 < dx) {
			alien->unk20 |= 0x1100;
			alien->unk20 &= ~0x40;
			alien->unk14 = (s16)(zone->unk0 << 8);
			alien->unk18 = (s16)(zone->unk1 << 8);
			alien->unk16 = (s16)((func_800B84D0_C7480(alien->unk14, alien->unk18) >> 8) + 0x64);
			alien->unk2C = 0xC8;
			alien->unk38 = 0xFF;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AC198_BB148.s")
#endif

// CURRENT (4284)
#ifdef NON_MATCHING
s32 func_800AC2FC_BB2AC(u8 arg0) {
	AlienInstance *s0;
	AlienInstance *v1;
	s32 sp4C;
	s32 temp;
	s32 dx, dz;
	s16 a0;
	s16 a3;
	u8 v0;

	s0 = (AlienInstance *)((u8 *)&alienInstances + ((s32)arg0 * 0x50));
	sp4C = 0x3D0900;
	v0 = s0->unk24;

	if ((v0 != 0) && (v0 != 0x14)) {
		return 1;
	}

	if (!(s0->unk20 & 0x1A0)) {
		a0 = -1;

		if (v0 != 0x14) {
			a0 = func_8011B6C0_12A670(s0->unk0, s0->unk4, (s16)(alienSpecs[s0->specIndex].unk51 / 20), 1, 0x102C);
		}

		if (a0 != -1) {
			s0->unk38 = a0;
			if (func_8011B3F0_12A3A0(a0, &s0->unk14, &s0->unk16, &s0->unk18) != 0) {
				s0->unk48 = 0xA0;
				s0->unk20 |= 0x100;
				return 0;
			}
		} else {
			s0->unk38 = 0xFF;
		}

		temp = func_800825E8_91598(s0->unk0, s0->unk4, &sp4C);
		if (sp4C < 0x77A10) {
			s0->unk20 = (s0->unk20 & ~0x1A0) | 0x60;
			s0->unk48 = 0xA0;
			s0->unk38 = (s16)(temp & 0xFF);
			return 0;
		}

		s0->unk48 = 0x40;
		s0->unk20 &= ~0x1A0;
		s0->unkE = (s16)(s0->unkE + ((s32)(func_800038E0_44E0() << 11) / 65535) - 0x400);
		func_800AC198_BB148(arg0);
		return 0;
	}

	a3 = s0->unk38;
	if (a3 == 0xFF) {
		if (s0->unk2C != 0) {
			s0->unk2C = s0->unk2C - 1;
		} else {
			osSyncPrintf(&D_80142910_1518C0);
			s0->unk20 &= ~0x1100;
			s0->unk48 = 0x40;
			func_800ABE7C_BAE2C(arg0);
		}
	} else if (s0->unk20 & 0x40) {
		v1 = (AlienInstance *)((u8 *)&alienInstances + (((s32)(a3 & 0xFF)) * 0x50));
		dx = v1->unk0 - s0->unk0;
		dz = v1->unk4 - s0->unk4;
		if ((dx * dx) + (dz * dz) >= 0x1DE841) {
			s0->unk20 = s0->unk20 & ~0x160;
		}
	}

	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AC2FC_BB2AC.s")
#endif

// CURRENT(8459)
#ifdef NON_MATCHING
void func_800AC5BC_BB56C(u8 arg0) {
	AlienInstance *alien;
	s32 triggered;
	u8 specIdx;
	f32 speedAbs;
	s32 limit;
	s32 dx;
	s32 dz;
	s32 neg;
	s16 cs;
	s16 sn;
	s32 temp;
	s16 yaw;
	s16 delta;

	triggered = 0;
	specIdx = D_80052B34->unk1A;
	if ((specIdx != 0) && ((D_80052B34->unk20 & 2) == 0) && (D_80052B34->unk12 != 0)) {
		speedAbs = D_80052B34->unk58;
		if (-speedAbs >= speedAbs) {
			speedAbs = -speedAbs;
		}

		alien = &alienInstances[arg0];
		limit = (s32)(speedAbs * 30.0f + (f32)(D_80257A36[(s32)specIdx * 0x38] >> 1));
		dx = alien->unk0 - D_80052B34->unk0;
		dz = alien->unk4 - D_80052B34->unk4;
		neg = -dx;
		temp = neg;
		if (neg < dx) {
			temp = dx;
		}

		if (temp < limit) {
			neg = -dz;
			temp = neg;
			if (neg < dz) {
				temp = dz;
			}

			if (temp < limit) {
				cs = coss((u16)D_80052B34->unk6);
				sn = sins((u16)D_80052B34->unk6);
				temp = (s32)((((f64)(f32)sn / 32768.0) * (f64)dz) + (((f64)(f32)cs / 32768.0) * (f64)dx));

				sn = sins((u16)D_80052B34->unk6);
				cs = coss((u16)D_80052B34->unk6);
				if ((temp < limit && D_80052B34->unk58 > 0.0f) || (-limit < temp && D_80052B34->unk58 < 0.0f)) {
					temp = (s32)((((f64)(f32)cs / 32768.0) * (f64)dz) + (((f64)(f32)sn / 32768.0) * (f64)(-dx)));
					if (temp < 0) {
						temp = -temp;
					}

					if (temp < (D_80257A34[(s32)D_80052B34->unk1A * 0x38] >> 1)) {
						triggered = 1;
					}
				}
			}
		}
	}

	alien = &alienInstances[arg0];
	if ((triggered == 0) && ((D_80158FEC != alien) || (func_800A2A88_B1A38() == 0))) {
		return;
	}

	yaw = (s16)(D_80052B34->unk6 - D_80052B2C->unk36 + 0x4000);
	delta = (s16)(alien->unkE - yaw);
	temp = -delta;
	if (temp < delta) {
		temp = delta;
	}
	if (temp >= 0x4001) {
		yaw = (s16)(yaw + 0x8000);
	}

	alien->unk14 = (s16)(s32)((((f64)(f32)coss((u16)yaw)) / 32768.0) * D_80142A10_1519C0 + (f64)alien->unk0);
	sn = sins((u16)yaw);
	alien->unk20 &= ~0x1E0;
	alien->unk20 |= 0x1100;
	alien->unk18 = (s16)(s32)((((f64)(f32)sn) / 32768.0) * D_80142A18_1519C8 + (f64)alien->unk4);
	alien->unk16 = (s16)((func_800B84D0_C7480(alien->unk14, alien->unk18) >> 8) + 0x64);
	alien->unk2C = 0x32;
	alien->unk38 = 0xFF;
	alien->unk48 = 0xA0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AC5BC_BB56C.s")
#endif

s32 func_800ACA3C_BB9EC(u8 arg0) {
	AlienInstance *ptr = &alienInstances[arg0];
	s32 flags = ptr->unk20;

	if (flags & 0x4000) {
		ptr->unk12 = 0;
		if (flags & 0x600) {
			ptr->unk2C -= 1;
		} else {
			ptr->unk2C -= 4;
		}
		if (ptr->unk2C <= 0) {
			ptr->unk2C = 0;
			ptr->unk20 &= ~0x4000;
			flags = ptr->unk20;
		} else {
			return 0;
		}
	}

	if ((flags & 0x600) && (ptr->unk2 < D_80222A70)) {
		ptr->unk48 = 0x60;
		return 1;
	}
	if ((ptr->unk12 == 0x60) && (D_80222A70 < ptr->unk2)) {
		if (flags & 0x1000) {
			ptr->unk48 = 0xA0;
		} else {
			ptr->unk48 = 0x40;
		}
	}
	return 1;
}

void func_800ACB3C_BBAEC(u8 arg0) {

	if ((alienInstances[arg0].unk20 & 0x80) &&
		vehicleInstances[alienInstances[arg0].unk38].unk1C <= 0) {
		
		alienInstances[arg0].unk20 = alienInstances[arg0].unk20 & ~0xC0;
		return;
	}
	if ((alienInstances[arg0].unk20 & 0x20) &&
		alienInstances[alienInstances[arg0].unk38].hitPoints <= 0) {
		
		alienInstances[arg0].unk20 = alienInstances[arg0].unk20 & ~0x60;
		return;
	}
	if (!(alienInstances[arg0].unk20 & 0x08000000) &&
		(alienInstances[arg0].unk20 & 0x100) &&
		(alienInstances[arg0].unk38 != 0xFF)) {
		if (func_800B325C_C220C((s8)(alienInstances[arg0].unk14 >> 8), (s8)(alienInstances[arg0].unk18 >> 8), 0x800) == 0) {
			alienInstances[arg0].unk20 &= ~0x1E0;
		}
	}
}

// CURRENT(4106)
#ifdef NON_MATCHING
void func_800ACC5C_BBC0C(s32 arg0) {
	BuildingInstance *building;
	AlienInstance *inst;
	u32 maskValue;
	u32 buildingFlags;
	s32 sp24;
	s32 temp_s0;
	s32 flags;

	temp_s0 = arg0 & 0xFF;
	inst = &alienInstances[temp_s0];
	inst->unk12 = inst->unk48;
	if (((inst->unk0 >> 8) != (inst->unk2E >> 8)) || ((inst->unk4 >> 8) != (inst->unk32 >> 8))) {
		sp24 = 1;
	}

	if (inst->unk24 != 0) {
		if (func_800ABCC8_BAC78(temp_s0 & 0xFF) != 0) {
			return;
		}
		goto block_12;
	}

	flags = inst->unk20;
	if (!(flags & 0x1000)) {
		if (flags & 0x2000) {
			if (func_80117464_126414(inst->pad46) == 0) {
				inst->unk38 = inst->pad46;
				func_8011B584_12A534(inst->pad46, temp_s0);
				building = &buildingInstances[inst->pad46];
				buildingFlags = building->unk8;
				maskValue = buildingFlags >> 0xC;
				building->unk8 = ((((maskValue | 0x8000) ^ maskValue) << 0xC) ^ buildingFlags);
			}
		}

		inst->unk12 = 0;
		if (sp24 != 0) {
			func_800AC198_BB148(temp_s0 & 0xFF);
		}
		return;
	}

block_12:
	if (func_800ACA3C_BB9EC(temp_s0 & 0xFF) != 0) {
		if (inst->unk20 & 0x100) {
			if ((func_80080840_8F7F0(temp_s0 & 0xFF, 0x50) != 0) && !(inst->unk20 & 0x080000A0)) {
				if (func_8011B584_12A534(inst->unk38, temp_s0) == 0) {
					inst->unk20 &= ~0x1A0;
				}
			}
		}

		func_800808F0_8F8A0(temp_s0 & 0xFF, &inst->unkE);
		if ((sp24 != 0) && (func_800AC2FC_BB2AC(temp_s0 & 0xFF) != 0)) {
			func_800ACB3C_BBAEC(temp_s0 & 0xFF);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ACC5C_BBC0C.s")
#endif

void func_800ACE40_BBDF0(u8 arg0) {
	AlienInstance *inst;
	s32 flags;
	s32 randomValue;

	inst = &alienInstances[arg0];
	if (!(inst->unk20 & ALIEN_FLAG_FALL)) {
		inst->unk12 = inst->unk48;
		if (func_800ACA3C_BB9EC(arg0) != 0) {
			randomValue = func_800038E0_44E0() >> 8;
			inst->unkE = (s16) ((inst->unkE + randomValue) - 0x80);
			if (inst->unk24 != 0) {
				if (func_800ABCC8_BAC78(arg0) != 0) {
					return;
				}
			} else {
				if (!(inst->unk20 & 0x1000)) {
					func_800ABFC0_BAF70(arg0);
					func_800AC5BC_BB56C(arg0);
					flags = inst->unk20;
					if (flags & 0x80000000) {
						inst->unk20 = flags | 0x1000;
					}
					return;
				}
			}
			func_800AC064_BB014(arg0);
			if ((inst->unk20 & 0x100) && !(inst->unk20 & 0x80000A0) &&
				(func_80080840_8F7F0(arg0, 0x14) != 0) &&
				(func_8011B584_12A534(inst->unk38, arg0) == 0)) {
				inst->unk20 &= ~0x1A0;
			}
			func_800808F0_8F8A0(arg0, &inst->unkE);
			if (func_800AC2FC_BB2AC(arg0) != 0) {
				func_800ACB3C_BBAEC(arg0);
			}
		}
	}
}

#ifdef NON_MATCHING
void func_800ACF9C_BBF4C(u8 arg0) {
	u8 *ptr;
	u8 *end;
	AlienInstance *base;
	AlienInstance *alien;
	s32 flags;
	s32 xDist;
	s32 zDist;
	s32 negX;
	s32 negZ;
	s32 absX;
	s32 absZ;
	s16 x;
	s16 z;

	x = buildingInstances[arg0].xCoord;
	z = buildingInstances[arg0].zCoord;
	if (D_8014D507 > 0) {
		ptr = D_8014D408;
		end = ptr + D_8014D507;
		base = alienInstances;
		do {
			alien = (AlienInstance *) ((u8 *) base + (*ptr++ * 0x50));
			flags = alien->unk20;
			if (!(flags & 0x80)) {
				if (alien->unk24 == 0) {
					xDist = x - alien->unk0;
					negX = -xDist;
					zDist = z - alien->unk4;
					flags |= 0x1000;

					if (negX < xDist) {
						absX = xDist;
					} else {
						absX = negX;
					}

					negZ = -zDist;
					absZ = negZ;
					if (negZ < zDist) {
						absZ = zDist;
					}

					if (absZ < absX) {
						if (negX < xDist) {
							zDist = negX;
						} else {
							xDist = zDist;
						}
					} else {
						if (negZ < zDist) {
							negX = zDist;
						} else {
							negX = negZ;
						}
						xDist = negX;
					}

					if (xDist < 0x800) {
						alien->unk20 |= 0x1000;
						alien->unk20 &= ~0x1A0;
					}
				}
			}
		} while ((u32) ptr < (u32) end);
	}

	func_8011BA80_12AA30(arg0, 0x800);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ACF9C_BBF4C.s")
#endif

void func_800AD0F0_BC0A0(u8 arg0) {
	s16 xPos, zPos;
	s16 xOff, zOff;

	xPos = alienInstances[arg0].unk0;
	zPos = alienInstances[arg0].unk4;
	xOff = (xPos & 0xFF) - 0x80;
	zOff = (zPos & 0xFF) - 0x80;

	alienInstances[arg0].unk38 = 0xFF;
	alienInstances[arg0].unk20 |= 0x100;
	alienInstances[arg0].unk20 &= ~0x1000;
	alienInstances[arg0].unk48 = 0;

	if (zOff < xOff) {
		if (-zOff < xOff) {
			xPos += 0x100;
		} else {
			zPos -= 0x100;
		}
	} else {
		if (-zOff < xOff) {
			zPos += 0x100;
		} else {
			xPos -= 0x100;
		}
	}

	xPos = ((xPos >> 8) << 8) + 0x80;
	zPos = ((zPos >> 8) << 8) + 0x80;
	alienInstances[arg0].unk14 = xPos;
	alienInstances[arg0].unk18 = zPos;
	alienInstances[arg0].unk16 = func_800B84D0_C7480(xPos, zPos) >> 8;

	if (alienInstances[arg0].unk20 & 0x600) {
		alienInstances[arg0].unk48 = 0x40;
	}
}

#ifdef NON_MATCHING
s32 func_800AD240_BC1F0(u8 arg0) {
	s16 sp2E;
	s16 sp2C;
	s16 sp2A;
	BuildingInstance *building;
	AlienInstance *alien;
	s32 alienIdx;

	building = &buildingInstances[arg0];
	if ((building->unk7 == 0) || ((currentLevel == 3) && (arg0 == 0x3E))) {
		return 0xFF;
	}

	func_8011B454_12A404(arg0, &sp2E, &sp2A, &sp2C);
	alienIdx = func_8007956C_8851C(1) & 0xFF;
	if (alienIdx != 0xFF) {
		alien = &alienInstances[alienIdx];
		building->unk7--;
		alien->unk20 |= 0x2000;
		alien->unk0 = sp2E;
		alien->unk4 = sp2C;
		alien->unk2 = sp2A;
		alien->pad46 = arg0;
		alien->unk1B = func_800B0F20_BFED0(sp2E, sp2C);
		func_8011C680_12B630(alienIdx & 0xFF, building->unk11);
		func_800AD0F0_BC0A0(alienIdx & 0xFF);
		if ((currentLevel == 4) && (D_80047F94 == 0) && (func_8000726C_7E6C(0xB) == 0) && (func_8000726C_7E6C(0xC) == 0)) {
			func_800AD814_BC7C4(alienIdx, 1, 0, 0);
		}
	}
	return alienIdx;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD240_BC1F0.s")
#endif

// CURRENT(973)
#ifdef NON_MATCHING
s32 func_800AD3BC_BC36C(u8 arg0) {
	s16 xPos;
	s16 yPos;
	s16 zPos;
	u8 alienIdx;
	BuildingInstance *building;
	AlienInstance *alien;
	u8 targetBuilding;

	func_8011B454_12A404(arg0, &xPos, &yPos, &zPos);
	alienIdx = func_8007956C_8851C(1) & 0xFF;
	if (alienIdx != 0xFF) {
		alien = &alienInstances[alienIdx];
		building = &buildingInstances[arg0];

		building->unk7--;
		alien->unk48 = 0xA0;
		alien->unk20 |= 0x1000;
		alien->pad46 = arg0;
		alien->unk0 = xPos;
		alien->unk4 = zPos;
		alien->unk2 = yPos;
		alien->unk1B = func_800B0F20_BFED0(xPos, zPos);

		func_8011C680_12B630(alienIdx, building->unk11);

		targetBuilding = building->padC[2];
		if (targetBuilding != 0xFF) {
			alien->unk38 = targetBuilding;
			alien->unk20 |= 0x80;
		}

		if ((currentLevel == 3) && (arg0 == 0x3E)) {
			D_8004816C++;
			func_800AD814_BC7C4(alienIdx, 0x14, 0, 0);
		}

		if ((currentLevel == 4) && (func_8000726C_7E6C((u64) 0xB) == 0) && (func_8000726C_7E6C((u64) 0xC) == 0)) {
			func_800AD814_BC7C4(alienIdx, 1, 0, 0);
		}
	}

	return alienIdx;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD3BC_BC36C.s")
#endif

u8 func_800AD554_BC504(s32 arg0, s32 arg1, s32 arg2) {
	u8 idx;
	AlienInstance *ptr;
	u8 v3;

	idx = func_8007956C_8851C(1);
	if (idx != 0xFF) {
		ptr = &alienInstances[idx];
		ptr->unk0 = arg0;
		ptr->unk4 = arg1;
		ptr->unk2E = arg0;
		ptr->unk32 = arg1;
		ptr->unk48 = 0x40;
		ptr->unk20 |= 0x1000;
		ptr->unk1B = func_800B0F20_BFED0(arg0, arg1);
		v3 = (&D_80050AE9)[arg2 * 24];
		if (v3 != -1) {
			D_80146688_155638[currentLevel - 1][v3].unk0A += 1;
		} else {
			D_8015EA14 += 1;
		}
		func_8011C680_12B630(idx, (s8)v3);
		ptr->unk38 = arg2;
		func_8011B3F0_12A3A0(ptr->unk38, &ptr->unk14, &ptr->unk16, &ptr->unk18);
		ptr->unk20 |= 0x100;
	}
	return idx;
}

#ifdef NON_MATCHING
void func_800AD698_BC648(VehicleInstance *arg0, s32 *arg1, s32 *arg2) {
	s16 sp3E;
	s16 sp3C;
	s16 pad3A;
	s16 sp38;
	s32 angle;

	sp3E = vehicleSpecs[arg0->unk1A].unk36;
	sp3C = vehicleSpecs[arg0->unk1A].unk34;
	angle = (arg0->unk6 + 0x4000) & 0xFFFF;
	sp3E = (sp3E >> 1) + 0x24;
	sp3C = (sp3C >> 1) + 0x24;
	sp38 = coss(angle);
	*arg1 = (s32)(((f64)arg0->unk0 + ((f64)(f32)sp38 / 32768.0) * (f64)sp3E) - ((f64)(f32)sins(angle) / 32768.0) * (f64)sp3C);
	sp38 = sins(angle);
	*arg2 = (s32)(((f64)(f32)coss(angle) / 32768.0) * (f64)sp3C + ((f64)arg0->unk4 + ((f64)(f32)sp38 / 32768.0) * (f64)sp3E));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD698_BC648.s")
#endif

// CURRENT(280)
#ifdef NON_MATCHING
void func_800AD814_BC7C4(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
	AlienInstance *ptr;
	s32 temp;

	ptr = &alienInstances[arg0];
	ptr->unk48 = 0x40;
	ptr->unk3F = arg3;
	ptr->unk24 = arg1;

	if ((arg1 != 0x14) && (arg1 != 0xB) && (arg1 != 0xC) && (arg1 != 4)) {
		D_8015EA14++;
		func_8011C680_12B630((u8) arg0, -1);
	}

	switch (arg1) {
		case 1:
			func_800AD0F0_BC0A0((u8) arg0);
			return;

		case 2:
			ptr->unk20 |= 0x08000100;
			ptr->unk48 = 0x30;
			break;

		case 3:
			temp = D_80048190;
			if (temp == 8) {
				D_80048190 = 0;
				temp = 0;
			}
			ptr->unk20 &= ~0x1E0;
			ptr->unk20 |= 0x08020000;
			ptr->unk48 = 0xC0;
			ptr->unk27 = temp;
			ptr->unk38 = arg2;
			D_80048190 = temp + 1;
			break;

		case 4:
			temp = D_80048190;
			if (temp == 8) {
				D_80048190 = 0;
				temp = 0;
			}
			ptr->unk20 &= ~0x1E0;
			ptr->unk20 |= 0x00020080;
			ptr->unk48 = 0xC0;
			ptr->unk27 = temp;
			ptr->unk38 = arg2;
			D_80048190 = temp + 1;
			break;

		case 5:
			if (ptr->unk20 & 0x600) {
				ptr->unk48 = 0xA0;
			}
			break;

		case 6:
			ptr->unk38 = 0x100;
			ptr->unk20 |= 0x1020;
			break;

		case 7:
			ptr->unk48 = 0;
			break;

		case 8:
			ptr->unk48 = 0xA0;
			break;

		case 9:
			ptr->unk48 = 0xA0;
			ptr->unk20 |= 0x1000;
			ptr->unk6 = 0x4000;
			ptr->unkE = -0x4000;
			ptr->unk2C = 0;
			break;

		case 0xA:
			ptr->unk3C = arg2;
			ptr->unk20 |= 0x08001100;
			ptr->unk48 = 0xC0;
			func_800E7AA0_F6A50(ptr);
			return;

		case 0xB:
		case 0xC:
			ptr->unk38 = arg2;
			ptr->unk20 |= 0x1100;
			ptr->unk48 = 0xA0;
			break;

		case 0xD:
		case 0xE:
		case 0xF:
		case 0x10:
		case 0x11:
		case 0x12:
		case 0x13:
		case 0x15:
		case 0x16:
		case 0x17:
		case 0x18:
		case 0x19:
		case 0x1A:
		case 0x1B:
			break;

		default:
			break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD814_BC7C4.s")
#endif

u8 func_800ADA70_BCA20(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
	u8 idx;
	AlienInstance *ptr;

	idx = (u8) func_8007956C_8851C(1);
	if (idx != 0xFF) {
		ptr = &alienInstances[idx];
		ptr->unk0 = arg0;
		ptr->unk4 = arg1;
		func_800AD814_BC7C4(idx, arg2, arg3, arg4);
	}
	return idx;
}

void func_800ADAF8_BCAA8(u8 arg0) {
	func_800873A8_96358(arg0);
	if (alienInstances[arg0].unk24 == 4) {
		alienInstances[arg0].unk12 = 0;
	}
}

// CURRENT(5204)
#ifdef NON_MATCHING
void func_800ADB4C_BCAFC(u8 arg0) {
	AlienInstance *alien;
	s32 state;
	s32 temp;
	s32 v0;
	s32 v1;
	s32 a0;
	s32 a1;
	s32 a2;
	s32 a3;
	u8 mode;

	alien = &alienInstances[arg0];
	state = func_800EF650_FE600(alien);
	if (state == 0) {
		if (alien->unk20 & 0x1A0) {
			func_8008064C_8F5FC(arg0);
		}
	} else if (state == 1) {
		func_800808F0_8F8A0(arg0, &alien->unkE);
	} else if (state == 2) {
		alien->unk12 = 0;
	}

	mode = alien->unk24;
	switch (mode - 1) {
		case 0:
			v1 = alien->unk0 - D_80052B34->unk0;
			a1 = -v1;
			if (a1 < v1) {
				a3 = v1;
			} else {
				a3 = a1;
			}

			a0 = alien->unk4 - D_80052B34->unk4;
			v0 = -a0;
			if (v0 < a0) {
				a2 = a0;
			} else {
				a2 = v0;
			}

			if (a2 < a3) {
				if (a1 < v1) {
					a2 = v1;
				} else {
					a2 = v0;
				}
			} else {
				if (v0 < a0) {
					a2 = v0;
				} else {
					a2 = a0;
				}
			}

			temp = func_80084FE8_93F98(arg0, 0x1000);
			if (a2 < 0x320) {
				if (temp != 0) {
					alien->unk20 |= 0x1000;
				} else {
					alien->unk20 &= ~0x1000;
				}
			} else if ((a2 >= 0x3E9) || (temp == 0)) {
				alien->unk20 &= ~0x1000;
			}

			alien->unk20 |= 0x08000100;
			break;

		case 1:
			if (alien->unk20 & 0x100) {
				if (func_80080840_8F7F0(arg0, 0x32) != 0) {
					alien->unk12 = 0;
					alien->unk20 &= ~0x100;
				}
			}
			break;

		case 2:
			if ((alien->unk20 << 0xA) >= 0) {
				func_8008554C_944FC(arg0);
				if ((func_80084FE8_93F98(arg0, 0x1000) != 0) && (alien->unk4E != 0)) {
					alien->unk20 |= 0x1000;
				}
				alien->unk12 = 0;
				alien->unk20 |= 0x08000100;
				if (alien->hitPoints < ((s16) D_80256E0A / 4)) {
					func_80087AAC_96A5C(arg0);
				}
			}
			break;

		case 3:
			if ((alien->unk20 << 0xA) >= 0) {
				func_800808F0_8F8A0(arg0, &alien->unkE);
				alien->unk12 = 0;
			}
			break;

		case 4:
			if ((alien->unk20 << 1) >= 0) {
				alien->unk24 = 6;
				alien->unk2C = 0x1F4;
			}
			break;

		case 5:
			if ((D_80052A8C & 3) == 0) {
				if ((D_80031420 & 3) != 0) {
					func_800CA5EC_D959C(alien->unk0, alien->unk2 + 0x28, alien->unk4, 0, -0x80, 0, 5, 6, 8, 0xFF, 0, 0xFF, 0,
						0xFF);
				}
			}

			if (alien->unk2C != 0) {
				alien->unk2C -= 1;
			}

			alien->unk20 &= ~0x1000;
			if (alien->unk2C == 0x1E0) {
				func_80018D7C_1997C(0xDE);
			}

			if (alien->unk2C == 0x1CC) {
				if (D_80052B34->unk1A != 0) {
					func_800FDEA8_10CE58(D_80052B2C, 0);
				}
				D_80158C42 = 2;
			}

			temp = func_80084E54_93E04((VehicleInstance *) alien, (AlienInstance *) D_80052B34);
			if (alien->unk2C < 0x191) {
				if ((D_80158FEC == alien) || (temp < 0x190)) {
					if (D_8013D910_14C8C0[0] == 0) {
						func_80018D7C_1997C(0xDF);
						D_8013D910_14C8C0[0] = 1;
					}
				}
			}

			if (!(alien->unk47 & 8) && (alien->unk2C != 0)) {
				break;
			}

			if (alien->unk2C == 0) {
				alien->unk26 = 1;
			} else {
				alien->unk26 = 0;
			}
			func_80088760_97710(alien);
			break;

		case 6:
		case 7:
			break;

		default:
			break;
	}

	if (alien->unk1E != 0) {
		alien->unk1E -= 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ADB4C_BCAFC.s")
#endif

void func_800ADFC0_BCF70(u8 arg0) {
	func_800873A8_96358(arg0);
}

void func_800ADFE8_BCF98(u8 arg0) {
	func_800873A8_96358(arg0);
}

// CURRENT(3424)
#ifdef NON_MATCHING
void func_800AE010_BCFC0(u8 arg0) {
	s32 dx;
	s32 dz;

	dx = (-(alienInstances[arg0].unk0 - D_80052B34->unk0) < (alienInstances[arg0].unk0 - D_80052B34->unk0)
		? (alienInstances[arg0].unk0 - D_80052B34->unk0)
		: -(alienInstances[arg0].unk0 - D_80052B34->unk0));
	dz = (-(alienInstances[arg0].unk4 - D_80052B34->unk4) < (alienInstances[arg0].unk4 - D_80052B34->unk4)
		? (alienInstances[arg0].unk4 - D_80052B34->unk4)
		: -(alienInstances[arg0].unk4 - D_80052B34->unk4));

	func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);

	dx += dz;
	if (dx < 0x190) {
		alienInstances[arg0].unk14 = D_80052B34->unk0;
		alienInstances[arg0].unk18 = D_80052B34->unk4;
		if (alienInstances[arg0].unk12 < 0x140) {
			alienInstances[arg0].unk12 += 0x20;
		}
		alienInstances[arg0].unk20 |= 0x60;
		if (dx < 0x96) {
			alienInstances[arg0].unk12 = 0x1C0;
			if (dx < 0x28) {
				if (!(D_80052B34->unk0 & 1)) {
					alienInstances[arg0].unkE += 0x222;
				} else {
					alienInstances[arg0].unkE -= 0x222;
				}
				alienInstances[arg0].unk12 = 0x280;
			}
		}
		return;
	}
	if (alienInstances[arg0].unk12 > 0) {
		alienInstances[arg0].unk12 -= 8;
		return;
	}
	alienInstances[arg0].unk20 &= ~0x60;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AE010_BCFC0.s")
#endif

void func_800AE190_BD140(s16 arg0) {
	D_8004816A += arg0;
	D_80048170 += arg0;
}

void func_800AE1C0_BD170(void) {
	D_8004816A += 1;
	D_8004816E += 1;
}

void func_800AE1EC_BD19C(void) {
	s16 i;

	for (i = 0; i < D_8014D507; i++) {
		s32 idx = D_8014D408[i];
		if (alienInstances[idx].unk24 == 0) {
			func_800AD814_BC7C4(idx, 1, 0, 0);
		} else if (alienInstances[idx].unk24 == 3) {
			alienInstances[idx].unk24 = 0x1D;
		}
	}
}

