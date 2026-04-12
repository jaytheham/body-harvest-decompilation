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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A93A4_B8354.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9A90_B8A40.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9F34_B8EE4.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AB570_BA520.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AB8CC_BA87C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ABCC8_BAC78.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AC198_BB148.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AC2FC_BB2AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AC5BC_BB56C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ACC5C_BBC0C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD240_BC1F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD3BC_BC36C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD814_BC7C4.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ADB4C_BCAFC.s")

void func_800ADFC0_BCF70(u8 arg0) {
	func_800873A8_96358(arg0);
}

void func_800ADFE8_BCF98(u8 arg0) {
	func_800873A8_96358(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AE010_BCFC0.s")

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

