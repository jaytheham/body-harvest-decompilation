#include <ultra64.h>
#include "common.h"

// AI - Trivial wrapper that calls the main interior update loop
s32 func_80070270_158330(s32 arg0) {
	func_8007290C_15A9CC();
	return 0;
}

// https://decomp.me/scratch/WpN6t
#ifdef NON_MATCHING
/* CURRENT(1170) */
// AI - Handles player interaction inside a building
void func_80070294_158354(Unk8007CAA8_6A40 *arg0)
{
  s32 center;
  s32 halfWidth;
	f32 x;
	f32 xx;
  if (D_800E65D0 == 0)
  {
	return;
  }
  if (isButtonNewlyPressed(0, BUTTON_A) == 0 && D_800E65C8->unk0 != 4)
  {
	return;
  }
  center = D_800E65C8->unk28 + D_800E65CC;
	halfWidth = D_800E65C8->unk2A;
	
	x = D_800E6A78.unk4C - 96.0f;
	xx = D_800E6A78.unk54 - 96.0f;
	
  if (halfWidth < 0)
  {
	halfWidth++;
  }
	halfWidth >>= 1;
  
  if (func_8007C3C0_164480(x, xx, center - halfWidth, center + halfWidth, 0.0f, 30.0f) != 0)
  {
	if (func_8007A370_162430(0, (((f32) (D_800E6A86 & 0xFFFF)) * D_800A4A00_18CAC0) / 32768.0) != 0)
	{
	  D_800E65A8 |= 0x800;
	}
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80070294_158354.s")
#endif

// AI - Returns the center position offset of the current interior
s32 func_800703D0_158490(void) {
	return D_800E65C8->unk28 + D_800E65CC;
}

// AI - Returns the room type ID of the current interior
u8 func_800703EC_1584AC(void) {
	return D_800E65C8->unk0;
}

// AI - Gets the spawn coordinates from the interior config
void func_800703FC_1584BC(s32 *arg0, s32 *arg1) {
	*arg0 = D_800E65C8->unk4 + D_800E65CC;
	*arg1 = D_800E65C8->unk8;
}

// AI - Returns fade/scroll animation progress ratio
f32 func_8007042C_1584EC(void) {
	return D_800E65E0 / D_800E65C8->unk10;
}

// AI - Returns secondary fade/scroll animation progress
f32 func_80070448_158508(void) {
	return D_800E65E0 / D_800E65C8->unk14;
}

// https://decomp.me/scratch/49h7b
#ifdef NON_MATCHING
/* CURRENT(1690) */
// AI - Adjusts room coordinates based on orientation direction
void func_80070464_158524(s32 *arg0, s32 *arg1, s32 arg2)
{
  s32 temp_v1;
  s32 temp_v1_3;
  s32 temp_v1_4;
  s32 temp_v1_5;
  u8 temp_a3;
  u8 temp_v0;
  Unk80070464Obj **temp_a2;
  temp_v0 = D_800E66A8[arg2].unk0;
  *arg0 = D_800E66A8[arg2].unk2;
  *arg1 = D_800E66A8[arg2].unk6;
  temp_a3 = D_800E66A8[arg2].unk8;
  temp_a2 = (Unk80070464Obj **) (&D_800E65BC);
  temp_v1 = (temp_v0 << 3) + temp_v0;
  switch (temp_a3)
  {
	case 0:
	  temp_v1 <<= 3;
	  *arg0 += ((Unk80070464Obj *) (((u8 *) (*temp_a2)) + temp_v1))->unk8;
	  *arg1 += ((Unk80070464Obj *) (((u8 *) (*temp_a2)) + temp_v1))->unkA;
	  return;

	case 1:
	  temp_a2 = (Unk80070464Obj **) (&D_800E65BC);
	  temp_v1_3 = temp_v0 * 0x48;
	  *arg0 += ((Unk80070464Obj *) (((u8 *) (*temp_a2)) + temp_v1_3))->unkA;
	  *arg1 -= ((Unk80070464Obj *) (((u8 *) (*temp_a2)) + temp_v1_3))->unk8;
	  return;

	case 2:
	  temp_a2 = (Unk80070464Obj **) (&D_800E65BC);
	  temp_v1_4 = temp_v0 * 0x48;
	  *arg0 -= ((Unk80070464Obj *) (((u8 *) (*temp_a2)) + temp_v1_4))->unk8;
	  *arg1 -= ((Unk80070464Obj *) (((u8 *) (*temp_a2)) + temp_v1_4))->unkA;
	  return;

	case 3:
	  temp_a2 = (Unk80070464Obj **) (&D_800E65BC);
	  temp_v1_5 = temp_v0 * 0x48;
	  *arg0 -= ((Unk80070464Obj *) (((u8 *) (*temp_a2)) + temp_v1_5))->unkA;
	  *arg1 += ((Unk80070464Obj *) (((u8 *) (*temp_a2)) + temp_v1_5))->unk8;
	  return;
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80070464_158524.s")
#endif

#ifdef NON_MATCHING
// AI - Main interior initialization: sets up rooms, positions, and mission flags
void func_800705E0_1586A0(void *arg0) {
	s16 tempS16;
	s32 i;
	s32 interiorId;
	s32 levelIndex;
	s32 objectFlags;
	s32 roomIndex;
	s32 roomId;
	s32 wordIndex;
	u64 missionId;
	u32 bitIndex;
	u8 roomType;
	u8 roomX;
	u8 roomY;
	u8 *mapData;
	u8 *roomData;
	u8 *mapRoot;
	Unk80070F7CObj *obj;
	Unk800E66A8 *entry;

	D_800E65E8 = arg0;
	D_800A0960_188A20 = D_800E65E8[0xE8];
	D_800E7394 = arg0;
	D_800E66A4 = D_800E65E8[0xE7];

	levelIndex = D_8009C4C4_184584[currentLevel] + D_800E66A4;
	D_800E65BC = (Unk80070F7CObj *)&D_8008E0A8_176168[levelIndex * 0x900];
	D_800E65C0 = (Gfx **)&D_8009C1A8_184268[levelIndex << 5];
	D_800E65C4 = (s32 *)&D_8009C4E4_1845A4[levelIndex << 5];
	D_800E65C8 = &D_8009C804_1848C4[levelIndex];

	D_800E6460 = D_800E65E8[0xE4];
	D_800E6464 = D_800E65E8[0xE5];
	for (i = 0; i < 0x64; i++) {
		D_800E69A8[i] = D_800E65E8[0x80 + i];
	}

	D_800E668C = D_800E65E8[0xE6];
	i = 0;
	if (D_800E668C > 0) {
		interiorId = (s32)buildingInteriorToLoadId;
		entry = D_800E66A8;
		for (roomIndex = 0; roomIndex < D_800E668C; roomIndex++) {
			roomData = D_800E65E8 + roomIndex;
			roomType = roomData[0x30] & 0x1F;

			entry->unk0 = roomType;
			entry->unk8 = (roomData[0x30] & 0x60) >> 5;
			roomX = roomData[0x40];
			roomY = roomData[0x50];
			entry->unk2C = roomData[0x60];
			entry->unkC = 0;
			entry->unkE = -1;
			entry->unk2E &= 0xFE;
			entry->unk2D = roomData[0x70];

			wordIndex = interiorId >> 5;
			if ((interiorId < 0) && ((interiorId & 0x1F) != 0)) {
				wordIndex--;
			}
			bitIndex = (u32)interiorId & 0x1F;
			if ((interiorId < 0) && (bitIndex != 0)) {
				bitIndex -= 0x20;
			}

			if (((u32 *)D_80047F40)[wordIndex] & (1U << bitIndex)) {
				if (D_80047D40[interiorId] & (1 << i)) {
					entry->unk2E |= 1;
					entry->unkC = D_800E65BC[roomType].unk16;
				}
			} else if (roomData[0x30] & 0x80) {
				entry->unk2E |= 1;
			}

			obj = &D_800E65BC[roomType];
			roomId = entry->unk2D & 0x3F;

			if (obj->unk40 & 0xE0000) {
				func_80070F7C_15903C(0, roomType, i);
				obj = &D_800E65BC[roomType];
				if (obj->unk40 & 0x80000) {
					entry->unk2E |= 3;
				} else {
					if ((roomId < 0x38) && (roomId != 0)) {
						missionId = (((u64)((u32)(roomId >> 0x1F))) << 0x20) | (u32)roomId;
						if ((func_8000726C_7E6C(missionId) != 0) && (entry->unk2D & 0x40)) {
							entry->unk2E |= 1;
						} else {
							entry->unk2E &= 0xFE;
						}
					}
					if (entry->unk2E & 1) {
						missionId = (((u64)((u32)(roomId >> 0x1F))) << 0x20) | (u32)roomId;
						func_800072CC_7ECC(missionId);
						obj = &D_800E65BC[roomType];
						if (obj->unk40 & 0x20000) {
							entry->unk2E |= 2;
						}
					} else if (obj->unk40 & 0x40000) {
						entry->unk2E |= 2;
					}
				}
			} else {
				if ((roomId < 0x38) && (roomId != 0)) {
					missionId = (((u64)((u32)(roomId >> 0x1F))) << 0x20) | (u32)roomId;
					if ((func_8000726C_7E6C(missionId) != 0) && (entry->unk2D & 0x40)) {
						entry->unk2E |= 1;
					} else {
						entry->unk2E &= 0xFE;
					}
				}
				if (entry->unk2E & 1) {
					missionId = (((u64)((u32)(roomId >> 0x1F))) << 0x20) | (u32)roomId;
					func_800072CC_7ECC(missionId);
					func_80070F7C_15903C(obj->unk1E, roomType, i);
				} else {
					func_80070F7C_15903C(0, roomType, i);
				}
				obj = &D_800E65BC[roomType];
			}

			switch (roomType) {
			case 30:
				entry->unk4 = (s8)obj->pad1C[0];
				switch (entry->unk8) {
				case 0:
					entry->unk2 = ((s32)obj->unk18 / 2) + ((s8)roomX * 0x60) + 0x60;
					entry->unk6 = ((s32)obj->unk1A / 2) + ((s8)roomY * 0x60) + 0x60;
					break;
				case 1:
					entry->unk2 = ((s32)obj->unk1A / 2) + ((s8)roomX * 0x60) + 0x60;
					tempS16 = ((s32)obj->unk18 / 2) + ((s8)roomY * 0x60) + 0x60;
					entry->unk6 = tempS16;
					break;
				case 2:
					entry->unk2 = ((s8)roomX * 0x60) - ((s32)obj->unk18 / 2) + 0xC0;
					tempS16 = ((s8)roomY * 0x60) - ((s32)obj->unk1A / 2) + 0xC0;
					entry->unk6 = tempS16;
					break;
				case 3:
					entry->unk2 = ((s8)roomX * 0x60) - ((s32)obj->unk1A / 2) + 0xC0;
					tempS16 = ((s8)roomY * 0x60) - ((s32)obj->unk18 / 2) + 0xC0;
					entry->unk6 = tempS16;
					break;
				}
				objectFlags = obj->unk40;
				break;

			case 29:
				entry->unk2 = roomX + 1;
				entry->unk6 = roomY + 1;
				entry->unk4 = 0;
				objectFlags = obj->unk40;
				break;

			case 31:
				D_800E6630 = (buildingInstances[D_80052540].unk8 << 0x1A) >> 0x1C;
				entry->unk2 = (roomX * 8) + 0x60;
				entry->unk4 = (s8)obj->pad1C[0];
				entry->unk6 = (roomY * 8) + 0x60;

				mapRoot = &D_8009CD7C_184E3C[currentLevel * 0x1E];
				mapData = &mapRoot[D_800E6630 * 2];
				obj->unk18 = mapData[0];
				D_800E65BC[roomType].unk1A = mapData[1];

				osSyncPrintf(D_800A4380_18C440, D_800E6630, entry->unk2, entry->unk6);
				func_8007F668_167728(D_80047F93, D_800E6633);
				objectFlags = D_800E65BC[roomType].unk40;
				break;

			default:
				objectFlags = obj->unk40;
				if (*(s32 *)obj == 0) {
					i--;
					entry--;
					break;
				}

				if (objectFlags & 8) {
					if (objectFlags & 0x80) {
						D_800E6610++;
						if (entry->unk2E & 1) {
							D_800E6614++;
							if (obj->unk40 & 0x40) {
								D_800E6604++;
							}
						}
					} else {
						D_800E6600++;
						if (entry->unk2E & 1) {
							D_800E65FC++;
							if (obj->unk40 & 0x40) {
								D_800E6604++;
							}
						}
					}
				}

				if (objectFlags < 0) {
					entry->unk2 = ((s8)roomX * 0x60) + 0x90;
					entry->unk4 = (s8)obj->pad1C[0];
					entry->unk6 = ((s8)roomY * 0x60) + 0x90;
				} else {
					entry->unk2 = (roomX * 8) + 0x60;
					entry->unk6 = (roomY * 8) + 0x60;
					entry->unk4 = (s8)obj->pad1C[0];
				}

				osSyncPrintf(D_800A43A8_18C468, roomType, entry->unk2, entry->unk6);
				objectFlags = D_800E65BC[roomType].unk40;
				break;
			}

			if (objectFlags & 0x40000000) {
				func_8007774C_15F80C(i, roomType);
			}
			if (entry->unk2E & 1) {
				objectFlags = D_800E65BC[roomType].unk40;
				if (!(objectFlags & 0xE0000) && (objectFlags & 0x20000000)) {
					func_8007774C_15F80C(i, roomType);
				}
			}

			func_80074D98_15CE58(i);
			i++;
			entry++;
		}
	}

	D_800E668C = i;
	if ((D_800E6600 == 0) && (D_800E6610 == 0)) {
		D_800E6600 = 1;
		D_800E65FC = 1;
	}
	func_80071304_1593C4();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800705E0_1586A0.s")
#endif

// https://decomp.me/scratch/1UBsS
// CURRENT(40)
#ifdef NON_MATCHING
// AI - Initializes a room entry's animated offset/scale values
void func_80070F7C_15903C(s16 arg0, u8 arg1, u8 arg2)
{
  f32 var_f0;
  Unk80070F7CObj *obj;
  Unk80070F7CState *entry;

  entry = &D_800E66A8[arg2];
  entry->unk10 = arg0;
  entry->unk20 = 0.0f;
  entry->unk24 = 0.0f;
  entry->unk28 = 0.0f;
  entry->unk14 = 0.0f;
  entry->unk18 = 0.0f;
  entry->unk1C = 0.0f;
  obj = &D_800E65BC[arg1];
  if (obj->unk40 & 0x7F00)
  {
	entry->unk20 = (f32) obj->unk2C;
	entry->unk24 = (f32) obj->unk2E;
	entry->unk28 = (f32) obj->unk30;
	entry->unk14 = (f32) obj->unk26;
	entry->unk18 = (f32) obj->unk28;
	entry->unk1C = (f32) obj->unk2A;
	var_f0 = obj->unk20;
	
	if (obj->unk40 & 0x1000000)
	{
	  if (D_80047970[buildingInteriorToLoadId] & (1 << arg2))
	  {
		var_f0 = -var_f0;
	  }
	}
	switch (obj->unk40 & 0x7E00)
	{
	  case 0x200:
		entry->unk14 += var_f0 * arg0;
		return;

	  case 0x400:
		entry->unk18 += var_f0 * arg0;
		return;

	  case 0x800:
		entry->unk1C += var_f0 * arg0;
		return;

	  case 0x1000:
		if (!(obj->unk40 & 0x100))
	  {

		switch (entry->unk8)
		{
		  case 0:
			entry->unk20 += var_f0 * arg0;
			return;

		  case 1:
			entry->unk28 += var_f0 * arg0;
			return;

		  case 2:
			entry->unk20 += (-var_f0) * arg0;
			return;

		  case 3:
			entry->unk28 += (-var_f0) * arg0;
			return;
		}
	  }
	  else
	  {
		entry->unk20 += var_f0 * arg0;
		return;
	  }
		break;

	  case 0x2000:
		entry->unk24 += var_f0 * arg0;
		return;

	  case 0x4000:
		if (!(obj->unk40 & 0x100))
	  {
		switch (entry->unk8)
		{
		  case 0:
			entry->unk28 += var_f0 * arg0;
			return;

		  case 1:
			entry->unk20 += (-var_f0) * arg0;
			return;

		  case 2:
			entry->unk28 += (-var_f0) * arg0;
			return;

		  case 3:
			entry->unk20 += var_f0 * arg0;
			return;
		}
	  }
	  else
	  {
		entry->unk28 += var_f0 * arg0;
	  }
		break;
	}
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80070F7C_15903C.s")
#endif

// https://decomp.me/scratch/qw9Qd
/* CURRENT(40) */
#ifdef NON_MATCHING
// AI - Updates interior lighting/brightness values with flicker animation
void func_80071304_1593C4(void) {
	s16 var_a0_2;
	s32 var_a0;
	s32 var_v0;
	u8 *ptr;

	var_v0 = D_800E6628;
	if (var_v0 & 8) {
		var_a0 = D_800E6618 + D_800E661C;
		D_800E6618 = var_a0;
		if (var_a0 >= 0xDD) {
			func_800153D8_15FD8(0x17D);
			D_800E6618 = 0xDC;
			var_a0 = D_800E6618;
			D_800E661C = -D_800E661C;
		}
		if (var_a0 < 0x28) {
			D_800E6618 = 0x28;
			var_a0 = D_800E6618;
			D_800E661C = -D_800E661C;
		}

		ptr = D_8008DE50_175F10;
		ptr[8] = (s8) var_a0;
		ptr[9] = 0;
		ptr[10] = 0;
		ptr[12] = (s8) var_a0;
		ptr[13] = 0;
		ptr[14] = 0;
		ptr[24] = (s8) var_a0;
		ptr[25] = 0;
		ptr[26] = 0;
		ptr[28] = (s8) var_a0;
		ptr[29] = 0;
		ptr[30] = 0;
		goto block_33;
	}

	if (var_v0 & 4) {
		var_a0_2 = 0x28;
	} else {
		if (D_800E6600 > 0) {
			s32 temp_t0;

			temp_t0 = (0xB4 - (D_800E6610 * 0x2D)) & 0xFF;
			var_v0 = temp_t0;
			var_a0_2 = ((temp_t0 / (s32) D_800E6600) * D_800E65FC) + (D_800E6614 * 0x2D) + D_800E6608 + 0x28;
		} else {
			var_a0_2 = (D_800E6614 * 0x2D) + D_800E6608 + 0x28;
		}

		if (var_a0_2 >= 0x100) {
			var_a0_2 = 0xFF;
		}
	}

	ptr = D_8008DE50_175F10;
	ptr[8] = (s8) var_a0_2;
	ptr[9] = (s8) var_a0_2;
	ptr[10] = (s8) var_a0_2;
	ptr[12] = (s8) var_a0_2;
	ptr[13] = (s8) var_a0_2;
	ptr[14] = (s8) var_a0_2;
	ptr[24] = (s8) var_a0_2;
	ptr[25] = (s8) var_a0_2;
	ptr[26] = (s8) var_a0_2;
	ptr[28] = (s8) var_a0_2;
	ptr[29] = (s8) var_a0_2;
	ptr[30] = (s8) var_a0_2;

block_33:
	return;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80071304_1593C4.s")
#endif

// https://decomp.me/scratch/WSdX9
// CURRENT(220)
#ifdef NON_MATCHING
// AI - Handles special lighting modes for specific level interiors
void func_80071510_1595D0(void)
{
  s32 temp;
  if (((currentLevel == 4) && (func_8000726C_7E6C(2) == 0)) && (buildingInteriorToLoadId == 0x1E))
  {
	func_800072CC_7ECC(1);
  }
  if (((currentLevel == 4) && (func_8000726C_7E6C(1) != 0)) || ((currentLevel == 3) && (func_8000726C_7E6C(0x36) != 0)))
  {
	if ((D_800E6628 & 8) == 0)
	{
	  osSyncPrintf(&D_800A43D0_18C490);
	  D_800E6628 = 8;
	  D_800E6618 = 0x28;
	  D_800E661C = 0xF;
	}
	func_80071304_1593C4();
  }
  else if ((currentLevel == 4) && (func_8000726C_7E6C(0x37) != 0))
  {
	if ((D_800E6628 & 6) == 0)
	{
	  D_800E6628 = 4;
	  D_800E6624 = D_8008DE08_175EC8[0];
	  D_800E6620 = 1;
	  func_80071304_1593C4();
	}
	if (D_800E6624 == 0)
	{
	  if (D_800E6628 & 2)
	  {
		D_800E6628 = 4;
	  }
	  else
	  {
		D_800E6628 = 2;
	  }
	  temp = (D_800E6624 = D_8008DE08_175EC8[D_800E6620]);
	  D_800E6620++;
	  if (temp == (-1))
	  {
		D_800E6624 = D_8008DE08_175EC8[0];
		D_800E6620 = 1;
	  }
	  func_80071304_1593C4();
	}
	else
	{
	  D_800E6624--;
	}
  }
  else
  {
	if (D_800E6628 != 1)
	{
	  func_80071304_1593C4();
	}
	D_800E6628 = 1;
	if (D_800E6604 > 0)
	{
	  D_800E6608 += D_800E660C;
	  if (D_800E660C < 0)
	  {
		if (D_800E6608 < (-0x14))
		{
		  D_800E6608 = -0x14;
		  D_800E660C = 1;
		}
	  }
	  else
	  {
		temp = D_800E6608;
		if (temp >= 0x15)
		{
		  D_800E6608 = 0x14;
		  D_800E660C = -1;
		}
	  }
	  func_80071304_1593C4();
	}
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80071510_1595D0.s")
#endif

// AI - Returns a lighting/color byte
u8 func_800717A8_159868(void) {
	return D_8008DE58_175F18;
}

#ifdef NON_MATCHING
// AI - Initializes cumulative offset arrays for display list data
void func_800717B4_159874(void) {
	s32 *a0;
	s32 a1;
	s32 v0;
	s32 *ptr;
	s32 *endptr;
	s32 val;

	v0 = 0;
	if (D_8009C4C8 != -1) {
		a0 = &D_8009C4C8;
		a1 = D_8009C4C8;
		do {
			*a0 = v0;
			v0 += a1;
			a1 = a0[1];
			a0++;
		} while (a1 != -1);
		v0 = 0;
	}
	if ((&D_8009C4C8)[currentLevel - 1] * 8 < (&D_8009C4C8)[currentLevel] * 8) {
		ptr = D_8009C4E4 + (&D_8009C4C8)[currentLevel - 1] * 8;
		endptr = D_8009C4E4 + (&D_8009C4C8)[currentLevel] * 8;
		do {
			val = *ptr;
			*ptr++ = v0;
			v0 += val;
		} while ((u32)ptr < (u32)endptr);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800717B4_159874.s")
#endif

#ifdef NON_MATCHING
// AI - Sets up RDP state for interior rendering
void func_80071854_159914(void) {
	osRecvMesg(&D_8006A8D0, &D_80068038, 1);
	func_80011E14_12A14(D_80047F93);

	gSPViewport(D_8005BB2C++, (Vp *)(0x03000000 + 0x14D0));

	func_80004CC8_58C8();
	func_80004D38_5938();

	gSPDisplayList(D_8005BB2C++, D_800311A8);

	func_80004F64_5B64();

	if ((D_800A0964_188A24 != 0) && ((u8)D_800E73DF == 4)) {
		func_80071D94_159E54(D_8005BB48[D_80031B84_32784], 0xA, 0, 0x1E);
	} else if ((currentLevel == 1) || (currentLevel == 3)) {
		func_80071D94_159E54(D_8005BB48[D_80031B84_32784], 0x7F, 0x43, 0xD);
	} else {
		func_80071D94_159E54(D_8005BB48[D_80031B84_32784], 0, 0x19, 0xF);
	}

	gSPDisplayList(D_8005BB2C++, D_800311D0);

	gDPPipeSync(D_8005BB2C++);

	gSPViewport(D_8005BB2C++, (Vp *)(0x03000000 + 0x14D0));

	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_TEXTURE_ENABLE | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH | G_CLIPPING);

	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH);

	gDPSetScissor(D_8005BB2C++, G_SC_NON_INTERLACE, 0, 0, D_80068084, D_80068088);

	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RNX, 6);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RNY, 6);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RPX, 0xFFFA);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RPY, 0xFFFA);

	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetTextureLOD(D_8005BB2C++, G_TL_TILE);
	gDPSetTextureDetail(D_8005BB2C++, G_TD_CLAMP);
	gDPSetTextureConvert(D_8005BB2C++, G_TC_FILT);
	gDPSetCombineKey(D_8005BB2C++, G_CK_NONE);
	gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
	gDPNoOp(D_8005BB2C++);
	gDPSetColorDither(D_8005BB2C++, G_CD_DISABLE);
	gDPPipelineMode(D_8005BB2C++, G_PM_NPRIMITIVE);
	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
	gDPPipeSync(D_8005BB2C++);
	gSPNumLights(D_8005BB2C++, 2);

	gSPLight(D_8005BB2C++, (Light *)&D_8008DE58_175F18, 1);
	gSPLight(D_8005BB2C++, (Light *)D_8008DE68_175F28, 2);
	gSPLight(D_8005BB2C++, (Light *)D_8008DE50_175F10, 3);

	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80071854_159914.s")
#endif

// AI - Fills the screen with a solid color via RDP
void func_80071D94_159E54(int arg0, unsigned char arg1, unsigned char arg2, unsigned char arg3)
{
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, 3 << 20);
	gDPSetColorImage(D_8005BB2C++, 0, G_IM_SIZ_16b, 320, K0_TO_PHYS(arg0));
	gDPSetFillColor(D_8005BB2C++, (GPACK_RGBA5551(arg1, arg2, arg3, 1) << 16) | GPACK_RGBA5551(arg1, arg2, arg3, 1));
	gDPPipeSync(D_8005BB2C++);
	gDPFillRectangle(D_8005BB2C++, 0, 0, D_80068084 - 1, D_80068088);
	gDPSetCycleType(D_8005BB2C++, 0 << 20);
	gDPPipeSync(D_8005BB2C++);
}

#ifdef NON_MATCHING
// AI - Interior entry point: resets state, loads building, sets player spawn
void func_80071F08_159FC8(void) {
	s32 i;
	s32 musicId;
	s32 value;
	u8 direction;
	Unk800E66A8 *entry;
	s32 halfLen;

	func_8008B0AC_17316C();
	D_800E65AC = 0;
	D_800E65D4 = buildingInteriorToLoadId;
	D_800E65F0 = 0;
	D_800E65F8 = 0;
	D_800E65FC = 0;
	D_800E6600 = 0;
	D_800E6604 = 0;
	D_800E6608 = 0;
	D_800E660C = 1;
	D_800E6610 = 0;
	D_800E6614 = 0;
	D_800E6628 = 1;
	D_800E6690 = 0;
	D_800E6694 = 0;
	D_800E65B8 = 0;
	D_800E65D8 = 0;
	D_800E65B0 = 1;

	func_800072CC_7ECC(0ULL);

	if (D_80047B70 == 0) {
		for (i = 0; i != 8; i++) {
			value = i + 0x38;
			func_800073B8_7FB8((s64) value);
		}
	}

	if (!(D_800E65A8 & 0x200)) {
		func_800717B4_159874();
	}

	func_800705E0_1586A0((void *) ((buildingInteriorToLoadId << 8) + (u32) &D_800D6460));
	D_800E65DC = 0;
	D_800E65E0 = 0.0f;

	func_80082AA0_16AB60();
	func_8007FBD0_167C90();
	func_8007C7E0_1648A0();
	func_80072300_15A3C0();
	if (D_800E65A8 & 0x200) {
		D_800E65A8 = 1;
		entry = &D_800E66A8[D_800E65EC];
		direction = entry->unk8;
		value = entry->unk0;

		switch (direction) {
			case 0:
				D_800E6A78.unkE = 0x4000;
				D_800E6A78.unk4C = entry->unk2;
				halfLen = (s16) D_800E65BC[value].unk1A / 2;
				D_800E6A78.unk54 = halfLen + entry->unk6 + 0xF;
				return;

			case 2:
				D_800E6A78.unkE = -0x4000;
				D_800E6A78.unk4C = entry->unk2;
				halfLen = (s16) D_800E65BC[value].unk1A / 2;
				D_800E6A78.unk54 = entry->unk6 - halfLen - 0xF;
				return;

			case 1:
				D_800E6A78.unkE = 0;
				halfLen = (s16) D_800E65BC[value].unk1A / 2;
				D_800E6A78.unk4C = halfLen + entry->unk2 + 0xF;
				D_800E6A78.unk54 = entry->unk6;
				return;

			case 3:
				D_800E6A78.unkE = -0x8000;
				halfLen = (s16) D_800E65BC[value].unk1A / 2;
				D_800E6A78.unk4C = entry->unk2 - halfLen - 0xF;
				D_800E6A78.unk54 = entry->unk6;
				return;
		}

		return;
	} else {
		if (D_80047B70 == 0) {
			D_800E65A8 = 0x40;
			musicId = *(s32 *) &D_800E65C8->unk30;
			if (musicId != -1) {
				func_800153D8_15FD8((s16) musicId);
			}
			D_800E65DC = -(D_800E65C8->unk20 * D_800E65C8->unk10);
			D_800A0964_188A24 = 1;
			return;
		}

		D_800E65A8 = 1;
		func_8007343C_15B4FC();
		D_80047B70 = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80071F08_159FC8.s")
#endif

// CURRENT (12772)
#ifdef NON_MATCHING
// AI - Processes tile map to set up wall/collision boundaries
void func_80072300_15A3C0(void)
{
	s32 x;
	s32 y;
	s32 a0;
	s32 v1;
	s32 v0;
	s32 fp;
	u8 a1;

	D_800E65D0 = 0;
	D_800E6468[0] = 0xFF;
	D_800E6468[1] = 0xFF;
	for (v0 = 2; v0 < 0x132; v0++) {
		D_800E6468[v0] = 0xFF;
	}

	fp = 0x60;
	a0 = D_800E6464;
	y = 0;
	if (a0 > 0) {
		v1 = D_800E6460;
		while (1) {
			if (v1 > 0) {
				x = 0;
				while (x < v1) {
					a1 = D_800E69A8[(v1 * y) + x];
					if (a1 != 0xFF) {
						switch (a1 & 0x1F) {
							case 20:
							case 22:
								D_800E6468[((v1 + 2) * (y + 2)) + x + 1] = 1;
								D_800E6468[((v1 + 2) * y) + x + 1] = 1;
								break;

							case 21:
							case 23:
								D_800E6468[((v1 + 2) * (y + 1)) + x] = 1;
								D_800E6468[((v1 + 2) * (y + 1)) + x + 2] = 1;
								break;

							case 0:
								D_800E6468[((v1 + 2) * (y + 1)) + x] = 1;
								D_800E6468[((v1 + 2) * y) + x + 1] = 1;
								break;

							case 1:
								D_800E6468[((v1 + 2) * (y + 1)) + x] = 1;
								D_800E6468[((v1 + 2) * (y + 2)) + x + 1] = 1;
								break;

							case 2:
								D_800E6468[((v1 + 2) * (y + 1)) + x + 2] = 1;
								D_800E6468[((v1 + 2) * (y + 2)) + x + 1] = 1;
								break;

							case 3:
								D_800E6468[((v1 + 2) * (y + 1)) + x + 2] = 1;
								D_800E6468[((v1 + 2) * y) + x + 1] = 1;
								break;

							case 24:
							case 25:
							case 26:
							case 27:
								D_800E6468[((v1 + 2) * (y + 1)) + x + 1] = 1;
								break;

							case 16:
								v0 = x * fp;
								D_800E6A78.unk4C = (f32) (v0 + D_800E65C8->unk28 + fp);
								D_800E6468[((v1 + 2) * y) + x + 1] = 1;
								D_800E65CC = v0;
								D_800E65D0 = 1;
								break;

							case 4:
							case 8:
							case 28:
								D_800E6468[((v1 + 2) * y) + x + 1] = 1;
								break;

							case 5:
							case 9:
							case 29:
								D_800E6468[((v1 + 2) * (y + 1)) + x] = 1;
								break;

							case 6:
							case 10:
							case 30:
								D_800E6468[((v1 + 2) * (y + 2)) + x + 1] = 1;
								break;

							case 7:
							case 11:
							case 31:
								D_800E6468[((v1 + 2) * (y + 1)) + x + 2] = 1;
								break;

							case 17:
							case 18:
							case 19:
								osSyncPrintf(&D_800A43EC_18C4AC);
								v1 = D_800E6460;
								break;

							default:
								break;
						}
					}
					x++;
				}
			}
			a0 = D_800E6464;
			y++;
			if (y >= a0) {
				break;
			}
		}
		y = 0;
	}

	v1 = a0 + 2;
	if (v1 > 0) {
		v0 = D_800E6460 + 2;
		while (y < v1) {
			if (v0 > 0) {
				for (x = 1; x < v0; x++) {}
			}
			y++;
		}
		y = 0;
	}

	if (a0 > 0) {
		v1 = D_800E6460;
		while (y < a0) {
			if (v1 > 0) {
				for (x = 1; x < v1; x++) {}
			}
			y++;
		}
		y = 0;
	}

	if (a0 > 0) {
		v1 = D_800E6460;
		while (y < a0) {
			if (v1 > 0) {
				for (x = 1; x < v1; x++) {}
			}
			y++;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80072300_15A3C0.s")
#endif

// AI - Handles fade-in/fade-out transitions when entering/exiting buildings
void func_8007279C_15A85C(void)
{
	if (D_800E65A8 & 0x40)
	{
		if (D_800E65E0 == D_800E65C8->unk10)
		{
			D_800E65A8 = 1;
			if ((*((s32 *) (&D_800E65C8->unk30))) != (-1))
			{
				func_800153D8_15FD8(D_800E65C8->unk36);
			}
			D_800E65E0 = 0.0f;
			osSyncPrintf(&D_800A441C_18C4DC, &D_800E65E0);
			return;
		}
		D_800E65DC += D_800E65C8->unk20;
		D_800E65E0 += 1.0f;
		do { } while (0);  
	}
	else if (D_800E65A8 & 0x80)
	{
		if (D_800E65E0 == D_800E65C8->unk14)
		{
			D_800E65A8 = 0x100;
			osSyncPrintf(&D_800A442C_18C4EC, &D_800E65E0);
			D_80068080 = 7;
			return;
		}
		if (D_800E65E0 == 0.0f)
		{
			func_800153D8_15FD8(D_800E65C8->unk32);
		}
		D_800E65DC += D_800E65C8->unk24;
		D_800E65E0 += 1.0f;
	}
}

#ifdef NON_MATCHING
// AI - Main interior game loop: rendering, room selection, building exit
void func_8007290C_15A9CC(void)
{
	s32 selectionActive;
	s32 index;
	s32 *bitWord;
	u16 maxHitPoints;

	if (buildingInteriorToLoadId == 0xFF) {
		return;
	}

	func_8008BAA0_173B60();
	func_80013720_14320();
	func_80011858_12458(currentLevel, D_800A5720);
	D_800EAE90 = func_800105F0_111F0(&D_800D6460, &D_800E7490, &D_800EAD90, &D_800EAE98, currentLevel, &D_800EAC90);
	D_800E65A8 = 1;
	func_80071F08_159FC8();
	func_80011DBC_129BC(D_80047F93);

	while (1) {
		func_8000345C_405C(0x1000);
		func_8000345C_405C(0x8000);
		if (D_8004771C == -1) {
			func_8000345C_405C(0x800);
			func_8000345C_405C(0x200);
			func_8000345C_405C(0x100);
		}

		D_800E6698 = 0;
		D_800E669C = 0;
		func_80071854_159914();

		if (!(D_800E65A8 & 0x4002)) {
			func_80072FB4_15B074();
		}

		if (D_800E65A8 & 0x4000) {
			func_8007C8FC_1649BC();
			func_80077B94_15FC54();
			func_800784B8_160578();
			func_80071510_1595D0();
			func_8008B474_173534();
		}

		func_8007FC74_167D34();
		func_8007568C_15D74C();
		func_8007C93C_1649FC();
		func_80074FF0_15D0B0();
		func_8008B1A8_173268();
		func_80082B50_16AC10();
		func_8008D900_1759C0();
		func_8000B044_BC44();
		func_80005B84_6784();
		func_8000505C_5C5C();

		if (!(D_800E65A8 & 2)) {
			D_800E65AC++;
		}

		if ((D_800E65A8 == 1) && (D_800E66A4 == 5)) {
			D_80052B34->unk1C += 2;
			maxHitPoints = vehicleSpecs[D_80052B34->unk1A].hitPoints;
			if (maxHitPoints < D_80052B34->unk1C) {
				D_80052B34->unk1C = maxHitPoints;
			}
		}

		selectionActive = D_800E6690;
		if ((selectionActive == 0) && (D_800E65A8 & 0x300)) {
			func_80005AEC_66EC(0, 0, 0, 0xC8);
			D_800E6690 = 1;
			selectionActive = 1;
		}

		if (selectionActive != 0) {
			D_800E6694 = func_80005B30_6730();
		}

		if ((D_800E6694 != 0) && (D_800E65A8 & 0x200)) {
			index = D_800E65D4;
			bitWord = (s32 *)((u8 *)D_80047F40 + ((index / 32) * 4));
			*bitWord |= 1 << (index % 32);
			func_8007313C_15B1FC();
			func_8007C8BC_16497C();
			func_8007F724_1677E4();
			buildingInteriorToLoadId = D_800E65ED;
			func_800736C4_15B784();
			func_80073058_15B118();
			func_80071F08_159FC8();
			func_800056A8_62A8();
			func_800056A8_62A8();
		}

		if (D_80052AD0 == 0) {
			if (D_80052AD4 != 0) {
				D_80052AD4--;
			} else {
				D_800E65A8 |= 0x20000;
			}
		}

		if ((D_800E6694 != 0) || (D_800E65A8 & 0xA2000)) {
			break;
		}
	}

	index = D_800E65D4;
	bitWord = (s32 *)((u8 *)D_80047F40 + ((index / 32) * 4));
	*bitWord |= 1 << (index % 32);
	func_800736C4_15B784();
	func_8007313C_15B1FC();
	D_80052550 = 0;

	if (D_800E65B8 != 0) {
		func_8007356C_15B62C();
		D_80052550 = 1;
	}

	if (!(D_800E65A8 & 0xA2000)) {
		func_800056A8_62A8();
		func_800056A8_62A8();
		func_800056A8_62A8();
		func_800056A8_62A8();
	} else {
		func_800050C4_5CC4();
		func_8000505C_5C5C();
		func_800050C4_5CC4();
		func_8000505C_5C5C();
		func_800050C4_5CC4();
		func_8000505C_5C5C();
	}

	func_8007C8BC_16497C();
	func_8007F724_1677E4();
	func_800136F0_142F0();

	if (D_800E65A8 & 0x2000) {
		D_80052550 = 1;
		gameplayMode = 0;
		return;
	}

	if (D_800E65A8 & 0x80000) {
		D_80052550 = 1;
		gameplayMode = 0x10;
		return;
	}

	if (D_800E65A8 & 0x4000) {
		gameplayMode = 0xC;
		return;
	}

	if (D_800E65A8 & 0x20000) {
		gameplayMode = 0xC;
		return;
	}

	if ((currentLevel == 4) && func_8000726C_7E6C(1ULL)) {
		func_800073B8_7FB8(1ULL);
	}

	gameplayMode = 1;
	D_80068080 = 7;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007290C_15A9CC.s")
#endif

// https://decomp.me/scratch/hiUtd
// CURRENT(0)
#ifdef NON_MATCHING
// AI - Checks if current interior has special vehicle-spawn rooms
s32 func_80072E88_15AF48(void)
{
  switch (currentLevel)
  {
	case 1:
	  if (D_800E66A4 != 1)
	{
	  break;
	}
		
	  if ((buildingInstances[D_80052540].unk8 << 0x1A) >> 0x1C != 5)
	{
	  break;
	}
	  return 1;

	case 2:
	case 3:
	case 4:
	  if (D_800E66A4 == 1)
	{
	  if ((buildingInstances[D_80052540].unk8 << 0x1A) >> 0x1C == 8)
	  {
		return 1;
	  }
	}
	  if (D_800E66A4 != 2)
	{
	  break;
	}
	  
	  if (((buildingInstances[D_80052540].unk8 << 0x1A) >> 0x1C != 0xA) && ((buildingInstances[D_80052540].unk8 << 0x1A) >> 0x1C != 6))
	{
	  break;
	}
	  return 1;

	case 5:
	  return 1;
  }

  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80072E88_15AF48.s")
#endif

// AI - Per-frame secondary update: missions, fades, room rendering, lighting
void func_80072FB4_15B074(void) {
	guess_checkMissions();
	func_8007279C_15A85C();
	func_8007C8FC_1649BC();
	if ((D_800E65A8 & 8) || (func_80072E88_15AF48() != 0)) {
		func_8007F778_167838();
	} else {
		func_8007F878_167938();
	}
	func_80078D68_160E28();
	func_80077B94_15FC54();
	func_800784B8_160578();
	func_80073200_15B2C0();
	func_80071510_1595D0();
	func_80079330_1613F0();
	func_8008B474_173534();
}

// AI - Clears visited flags on rooms that should be re-hidden
void func_80073058_15B118(void)
{
	s32 i;
	s32 entryIdx;
	for (i = 0; i < D_800E668C; i++)
	{
		entryIdx = D_800E66A8[i].unk0;
		if (((D_800E66A8[i].unk2E & 1) || (D_800E65BC[entryIdx].unk40 & 0x40000000)) &&
			(D_800E65BC[entryIdx].unk40 & 0x20000000))
		{
			D_800E66A8[i].unk2E &= -2;
			func_80077A5C_15FB1C(i, entryIdx);
		}
	}
}

#ifdef NON_MATCHING
// AI - Persists the visited-room bitmask to global state
void func_8007313C_15B1FC(void) {
	Unk800E66A8 *entry;
	s32 count;
	s32 var_v0;

	count = D_800E668C;
	entry = D_800E66A8;
	if (count > 0) {
		s16 *temp_a3 = &D_80047D40[buildingInteriorToLoadId];
		var_v0 = 0;
		do {
			if (D_800E65BC[entry->unk0].unk44 & 2) {
				entry->unk2E &= ~1;
			}
			if (entry->unk2E & 1) {
				*temp_a3 |= 1 << var_v0;
			} else {
				*temp_a3 &= ~(1 << var_v0);
			}
			var_v0++;
			entry++;
		} while (var_v0 < count);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007313C_15B1FC.s")
#endif

// AI - Handles special building exit teleports to different map locations
void func_80073200_15B2C0(void) {
	if ((D_800E65D8 != 0) && !(D_800E65A8 & 8) && !(D_800E65A8 & 0x10)) {
		D_800E65D8 = 0;
		if (currentLevel == LEVEL_GREECE) {
			// Fire station
			if ((D_800E6630 == 3) && (func_8000726C_7E6C((u64)9) != 0) && (buildingInteriorToLoadId == 6)) {
				buildingInteriorToLoadId = 0xFD;
				D_800E65A8 |= 0x100; // This value makes you exit the building immediately?
				return;
			}
			// Airfield hanger
			if ((D_800E6630 == 0xB) && (func_8000726C_7E6C((u64)0xF) != 0) && (buildingInteriorToLoadId == 0x33)) {
				buildingInteriorToLoadId = 0xFC;
				D_800E65A8 |= 0x100;
				return;
			}
			// Boatshed
			if ((D_800E6630 == 0xA) && (func_8000726C_7E6C((u64)0x11) != 0) && (buildingInteriorToLoadId == 0x51)) {
				buildingInteriorToLoadId = 0xFB;
				D_800E65A8 |= 0x100;
				return;
			}
		} else if (currentLevel == LEVEL_AMERICA) {
			if ((D_800E6630 == 6) && (func_8000726C_7E6C((u64)0x2B) != 0) && (buildingInteriorToLoadId == 0x28)) {
				buildingInteriorToLoadId = 0xFD;
				D_800E65A8 |= 0x100;
				return;
			}
		} else if ((currentLevel == LEVEL_SIBERIA) && (D_800E6630 == 7) && (func_8000726C_7E6C((u64)0xD) != 0) && (buildingInteriorToLoadId == 0x3C)) {
			buildingInteriorToLoadId = 0x45;
			D_800E65A8 |= 0x100;
		}
	}
}

// AI - Empty stub function
void func_80073434_stub(void) {}

#ifdef NON_MATCHING
/* CURRENT(1240) */
// AI - Restores saved room state (animation offsets, positions)
void func_8007343C_15B4FC(void) {
	Unk158330SrcState *src;
	Unk158330SrcState *srcEnd;
	Unk158330DstState *dst;
	f32 tempF4;
	f32 tempF6;
	f32 tempF8;
	f32 tempF10;
	f32 tempF16;
	f32 tempF18;
	u8 tempT6;
	u8 tempT7;
	u8 tempT8;
	u8 tempT9;
	u8 *srcBase;

	dst = (Unk158330DstState *) D_800E66A8;
	src = (Unk158330SrcState *) &D_80047B70;
	srcEnd = (Unk158330SrcState *) &D_80047D30;
	do {
		tempF4 = src->unk04;
		tempF6 = src->unk08;
		tempF8 = src->unk0C;
		tempF10 = src->unk10;
		tempF16 = src->unk14;
		tempF18 = src->unk18;
		dst->unk14 = tempF4;
		dst->unk18 = tempF6;
		dst->unk1C = tempF8;
		dst->unk20 = tempF10;
		dst->unk24 = tempF16;
		dst->unk28 = tempF18;

		tempF18 = src->unk34;
		tempF16 = src->unk30;
		tempF10 = src->unk2C;
		tempF8 = src->unk28;
		tempF6 = src->unk24;
		tempF4 = src->unk20;
		dst->unk58 = tempF18;
		dst->unk54 = tempF16;
		dst->unk50 = tempF10;
		dst->unk4C = tempF8;
		dst->unk48 = tempF6;
		dst->unk44 = tempF4;

		tempF4 = src->unk3C;
		tempF6 = src->unk40;
		tempF8 = src->unk44;
		tempF10 = src->unk48;
		tempF16 = src->unk4C;
		tempF18 = src->unk50;
		dst->unk74 = tempF4;
		dst->unk78 = tempF6;
		dst->unk7C = tempF8;
		dst->unk80 = tempF10;
		dst->unk84 = tempF16;
		dst->unk88 = tempF18;

		tempF18 = src->unk6C;
		tempF16 = src->unk68;
		tempF10 = src->unk64;
		tempF8 = src->unk60;
		tempF6 = src->unk5C;
		tempF4 = src->unk58;
		tempT7 = src->unk38;
		tempT8 = src->unk54;
		tempT9 = src->unk70;
		tempT6 = src->pad1C[0];

		src = (Unk158330SrcState *) ((u8 *) src + 0x70);
		dst = (Unk158330DstState *) ((u8 *) dst + 0xC0);

		dst[-1].unkB8 = tempF18;
		dst[-1].unkB4 = tempF16;
		dst[-1].unkB0 = tempF10;
		dst[-1].unkAC = tempF8;
		dst[-1].unkA8 = tempF6;
		dst[-1].unkA4 = tempF4;
		dst[-1].unkA0 = tempT7;
		dst[-1].unkD0 = tempT8;
		dst[-1].unk102 = tempT9;
		dst[-1].unk132 = tempT6;
	} while (src != srcEnd);

	srcBase = (u8 *) &D_80047B70;
	D_800E6A78.unkE = *(s32 *) (srcBase + 0x1C4);
	D_800E6A78.unk4C = *(f32 *) (srcBase + 0x1C8);
	D_800E6A78.unk54 = *(f32 *) (srcBase + 0x1CC);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007343C_15B4FC.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(6460) */
// AI - Saves current room state for later restoration
void func_8007356C_15B62C(void) {
	u8 *a0;
	u8 *a1;
	u8 *v0;
	u8 *v1;
	f32 tempF4;
	f32 tempF6;
	f32 tempF8;
	f32 tempF10;
	f32 tempF16;
	f32 tempF18;
	u16 tempT1;
	u16 tempT3;
	u16 tempT7;
	u16 tempT9;
	u8 tempT0;
	u8 tempT2;
	u8 tempT4;
	u8 tempT8;

	D_80047B70 = 1;
	a1 = (u8 *) &D_80047B70;
	v1 = (u8 *) &D_80047B70;
	a0 = (u8 *) D_800E66A8;
	v0 = (u8 *) D_800E66A8 + 0x300;
	do {
		*(f32 *) (v1 + 0x04) = *(f32 *) (a0 + 0x14);
		*(f32 *) (v1 + 0x08) = *(f32 *) (a0 + 0x18);
		*(f32 *) (v1 + 0x0C) = *(f32 *) (a0 + 0x1C);
		*(f32 *) (v1 + 0x10) = *(f32 *) (a0 + 0x20);
		*(f32 *) (v1 + 0x14) = *(f32 *) (a0 + 0x24);
		*(f32 *) (v1 + 0x18) = *(f32 *) (a0 + 0x28);
		*(f32 *) (v1 + 0x34) = *(f32 *) (a0 + 0x58);
		*(f32 *) (v1 + 0x30) = *(f32 *) (a0 + 0x54);
		*(f32 *) (v1 + 0x2C) = *(f32 *) (a0 + 0x50);
		*(f32 *) (v1 + 0x28) = *(f32 *) (a0 + 0x4C);
		*(f32 *) (v1 + 0x24) = *(f32 *) (a0 + 0x48);
		*(f32 *) (v1 + 0x20) = *(f32 *) (a0 + 0x44);
		*(f32 *) (v1 + 0x3C) = *(f32 *) (a0 + 0x74);
		*(f32 *) (v1 + 0x40) = *(f32 *) (a0 + 0x78);
		*(f32 *) (v1 + 0x44) = *(f32 *) (a0 + 0x7C);
		*(f32 *) (v1 + 0x48) = *(f32 *) (a0 + 0x80);
		*(f32 *) (v1 + 0x4C) = *(f32 *) (a0 + 0x84);
		*(f32 *) (v1 + 0x50) = *(f32 *) (a0 + 0x88);

		tempF18 = *(f32 *) (a0 + 0xB8);
		tempF16 = *(f32 *) (a0 + 0xB4);
		tempF10 = *(f32 *) (a0 + 0xB0);
		tempF8 = *(f32 *) (a0 + 0xAC);
		tempF6 = *(f32 *) (a0 + 0xA8);
		tempF4 = *(f32 *) (a0 + 0xA4);
		tempT9 = *(u16 *) (a0 + 0x40);
		tempT0 = *(u8 *) (a0 + 0x5E);
		tempT1 = *(u16 *) (a0 + 0x70);
		tempT2 = *(u8 *) (a0 + 0x8E);
		tempT3 = *(u16 *) (a0 + 0xA0);
		tempT4 = *(u8 *) (a0 + 0xBE);
		tempT7 = *(u16 *) (a0 + 0x10);
		tempT8 = *(u8 *) (a0 + 0x2E);

		a0 += 0xC0;
		v1 += 0x70;

		*(f32 *) (v1 - 0x04) = tempF18;
		*(f32 *) (v1 - 0x08) = tempF16;
		*(f32 *) (v1 - 0x0C) = tempF10;
		*(f32 *) (v1 - 0x10) = tempF8;
		*(f32 *) (v1 - 0x14) = tempF6;
		*(f32 *) (v1 - 0x18) = tempF4;
		*(u8 *) (v1 - 0x38) = tempT9;
		*(u8 *) (v1 - 0x37) = tempT0;
		*(u8 *) (v1 - 0x1C) = tempT1;
		*(u8 *) (v1 - 0x1B) = tempT2;
		*(u8 *) (v1 + 0x00) = tempT3;
		*(u8 *) (v1 + 0x01) = tempT4;
		*(u8 *) (v1 - 0x54) = tempT7;
		*(u8 *) (v1 - 0x53) = tempT8;
	} while (a0 != v0);

	*(s32 *) (a1 + 0x1C4) = D_800E6A78.unkE;
	*(f32 *) (a1 + 0x1C8) = D_800E6A78.unk4C;
	*(f32 *) (a1 + 0x1CC) = D_800E6A78.unk54;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007356C_15B62C.s")
#endif

// AI - Resets temporary room entry state
void func_800736C4_15B784(void) {
	s32 i;
	for (i = 0; i < D_800E668C; i++) {
		if (D_800E66A8[i].unkE != -1) {
			D_800E66A8[i].unkE = -1;
		}
	}
}

// CURRENT(722)
#ifdef NON_MATCHING
// AI - Renders a colored 2D rectangle (floor tile) via RDP
void func_80073714_15B7D4(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
	s32 halfWidth;
	s32 halfHeight;
	s16 x0;
	s16 x1;
	s16 z0;
	s16 z1;
	u8 r;
	u8 g;
	u8 b;

	halfWidth = arg0 / 2;
	x0 = arg2 - halfWidth;
	x1 = halfWidth + arg2;
	halfHeight = arg1 / 2;
	z0 = arg4 - halfHeight;
	z1 = arg4 + halfHeight;

	D_8005BB34[0].v.ob[0] = x0;
	D_8005BB34[0].v.ob[1] = arg3;
	D_8005BB34[0].v.ob[2] = z0;
	D_8005BB34[0].v.flag = 0;
	D_8005BB34[0].v.tc[0] = 0;
	D_8005BB34[0].v.tc[1] = 0;
	D_8005BB34[0].v.cn[0] = 0;
	D_8005BB34[0].v.cn[1] = 0;
	D_8005BB34[0].v.cn[2] = 0;
	D_8005BB34[0].v.cn[3] = 0xFF;

	D_8005BB34[1].v.ob[0] = x1;
	D_8005BB34[1].v.ob[1] = arg3;
	D_8005BB34[1].v.ob[2] = z0;
	D_8005BB34[1].v.flag = 0;
	D_8005BB34[1].v.tc[0] = 0;
	D_8005BB34[1].v.tc[1] = 0;
	D_8005BB34[1].v.cn[0] = 0;
	D_8005BB34[1].v.cn[1] = 0;
	D_8005BB34[1].v.cn[2] = 0;
	D_8005BB34[1].v.cn[3] = 0xFF;

	D_8005BB34[2].v.ob[0] = x0;
	D_8005BB34[2].v.ob[1] = arg3;
	D_8005BB34[2].v.ob[2] = z1;
	D_8005BB34[2].v.flag = 0;
	D_8005BB34[2].v.tc[0] = 0;
	D_8005BB34[2].v.tc[1] = 0;
	D_8005BB34[2].v.cn[0] = 0;
	D_8005BB34[2].v.cn[1] = 0;
	D_8005BB34[2].v.cn[2] = 0;
	D_8005BB34[2].v.cn[3] = 0xFF;

	D_8005BB34[3].v.ob[0] = x1;
	D_8005BB34[3].v.ob[1] = arg3;
	D_8005BB34[3].v.ob[2] = z1;
	D_8005BB34[3].v.flag = 0;
	D_8005BB34[3].v.tc[0] = 0;
	D_8005BB34[3].v.tc[1] = 0;
	D_8005BB34[3].v.cn[0] = 0;
	D_8005BB34[3].v.cn[1] = 0;
	D_8005BB34[3].v.cn[2] = 0;
	D_8005BB34[3].v.cn[3] = 0xFF;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH | G_FOG | G_LIGHTING);
	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
	r = arg5;
	g = arg6;
	b = arg7;
	gDPSetPrimColor(D_8005BB2C++, 0, 0, r, g, b, 0xFF);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gSPVertex(D_8005BB2C++, (Vtx *)((u32)D_8005BB34 + 0x80000000), 4, 0);
	gSP1Triangle(D_8005BB2C++, 0, 1, 3, 0);
	gSP1Triangle(D_8005BB2C++, 0, 3, 2, 0);
	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);

	D_8005BB34 += 4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80073714_15B7D4.s")
#endif

// AI - Empty stub function
void func_80073A48_15BB08(void) {
}

#ifdef NON_MATCHING
// AI - Renders the top-of-screen HUD gradient bar with level-specific colors
void func_80073A50_15BB10(void) {
	s16 baseY;
	s16 y1;
	s16 y2;
	s16 y3;
	s16 y4;
	s32 matrix;
	s32 dx;
	s32 dz;
	s32 angle;

	dx = (s32)(D_8008DDF4_175EB4 - D_800E659C);
	dz = (s32)(D_8008DDFC_175EBC - D_800E65A4);
	angle = func_80003824_4424((f32)(s16)(s32)sqrtf((f32)(((s16)dx * (s16)dx) + ((s16)dz * (s16)dz))), D_8008DDF8_175EB8 - D_800E65A0);

	if ((currentLevel == 1) || (currentLevel == 3)) {
		baseY = 0x32 - (angle / 0x24);
		y1 = baseY + 0x3C;
		y2 = baseY + 0x64;
		y3 = baseY + 0x78;
		y4 = baseY + 0xF0;

		D_8005BB34[0].v.ob[0] = 0;
		D_8005BB34[0].v.ob[1] = baseY;
		D_8005BB34[0].v.ob[2] = -5;
		D_8005BB34[0].v.flag = 0;
		D_8005BB34[0].v.tc[0] = 0;
		D_8005BB34[0].v.tc[1] = 0;
		D_8005BB34[0].v.cn[0] = 0x29;
		D_8005BB34[0].v.cn[1] = 0x23;
		D_8005BB34[0].v.cn[2] = 0xFF;
		D_8005BB34[0].v.cn[3] = 0xFF;

		D_8005BB34[1].v.ob[0] = 0x140;
		D_8005BB34[1].v.ob[1] = baseY;
		D_8005BB34[1].v.ob[2] = -5;
		D_8005BB34[1].v.flag = 0;
		D_8005BB34[1].v.tc[0] = 0;
		D_8005BB34[1].v.tc[1] = 0;
		D_8005BB34[1].v.cn[0] = 0x29;
		D_8005BB34[1].v.cn[1] = 0x23;
		D_8005BB34[1].v.cn[2] = 0xFF;
		D_8005BB34[1].v.cn[3] = 0xFF;

		D_8005BB34[2].v.ob[0] = 0;
		D_8005BB34[2].v.ob[1] = y1;
		D_8005BB34[2].v.ob[2] = -5;
		D_8005BB34[2].v.flag = 0;
		D_8005BB34[2].v.tc[0] = 0;
		D_8005BB34[2].v.tc[1] = 0;
		D_8005BB34[2].v.cn[0] = 0xA0;
		D_8005BB34[2].v.cn[1] = 0xA3;
		D_8005BB34[2].v.cn[2] = 0xFF;
		D_8005BB34[2].v.cn[3] = 0xFF;

		D_8005BB34[3].v.ob[0] = 0x140;
		D_8005BB34[3].v.ob[1] = y1;
		D_8005BB34[3].v.ob[2] = -5;
		D_8005BB34[3].v.flag = 0;
		D_8005BB34[3].v.tc[0] = 0;
		D_8005BB34[3].v.tc[1] = 0;
		D_8005BB34[3].v.cn[0] = 0xA0;
		D_8005BB34[3].v.cn[1] = 0xA3;
		D_8005BB34[3].v.cn[2] = 0xFF;
		D_8005BB34[3].v.cn[3] = 0xFF;

		D_8005BB34[4].v.ob[0] = 0;
		D_8005BB34[4].v.ob[1] = y2;
		D_8005BB34[4].v.ob[2] = -5;
		D_8005BB34[4].v.flag = 0;
		D_8005BB34[4].v.tc[0] = 0;
		D_8005BB34[4].v.tc[1] = 0;
		D_8005BB34[4].v.cn[0] = 0xFF;
		D_8005BB34[4].v.cn[1] = 0xFF;
		D_8005BB34[4].v.cn[2] = 0xFF;
		D_8005BB34[4].v.cn[3] = 0xFF;

		D_8005BB34[5].v.ob[0] = 0x140;
		D_8005BB34[5].v.ob[1] = y2;
		D_8005BB34[5].v.ob[2] = -5;
		D_8005BB34[5].v.flag = 0;
		D_8005BB34[5].v.tc[0] = 0;
		D_8005BB34[5].v.tc[1] = 0;
		D_8005BB34[5].v.cn[0] = 0xFF;
		D_8005BB34[5].v.cn[1] = 0xFF;
		D_8005BB34[5].v.cn[2] = 0xFF;
		D_8005BB34[5].v.cn[3] = 0xFF;

		D_8005BB34[6].v.ob[0] = 0;
		D_8005BB34[6].v.ob[1] = y3;
		D_8005BB34[6].v.ob[2] = -5;
		D_8005BB34[6].v.flag = 0;
		D_8005BB34[6].v.tc[0] = 0;
		D_8005BB34[6].v.tc[1] = 0;
		D_8005BB34[6].v.cn[0] = 0xB6;
		D_8005BB34[6].v.cn[1] = 0x9E;
		D_8005BB34[6].v.cn[2] = 0x88;
		D_8005BB34[6].v.cn[3] = 0xFF;

		D_8005BB34[7].v.ob[0] = 0x140;
		D_8005BB34[7].v.ob[1] = y3;
		D_8005BB34[7].v.ob[2] = -5;
		D_8005BB34[7].v.flag = 0;
		D_8005BB34[7].v.tc[0] = 0;
		D_8005BB34[7].v.tc[1] = 0;
		D_8005BB34[7].v.cn[0] = 0xB6;
		D_8005BB34[7].v.cn[1] = 0x9E;
		D_8005BB34[7].v.cn[2] = 0x88;
		D_8005BB34[7].v.cn[3] = 0xFF;

		D_8005BB34[8].v.ob[0] = 0;
		D_8005BB34[8].v.ob[1] = y4;
		D_8005BB34[8].v.ob[2] = -5;
		D_8005BB34[8].v.flag = 0;
		D_8005BB34[8].v.tc[0] = 0;
		D_8005BB34[8].v.tc[1] = 0;
		D_8005BB34[8].v.cn[0] = 0x7F;
		D_8005BB34[8].v.cn[1] = 0x43;
		D_8005BB34[8].v.cn[2] = 0x0D;
		D_8005BB34[8].v.cn[3] = 0xFF;

		D_8005BB34[9].v.ob[0] = 0x140;
		D_8005BB34[9].v.ob[1] = y4;
		D_8005BB34[9].v.ob[2] = -5;
		D_8005BB34[9].v.flag = 0;
		D_8005BB34[9].v.tc[0] = 0;
		D_8005BB34[9].v.tc[1] = 0;
		D_8005BB34[9].v.cn[0] = 0x7F;
		D_8005BB34[9].v.cn[1] = 0x43;
		D_8005BB34[9].v.cn[2] = 0x0D;
		D_8005BB34[9].v.cn[3] = 0xFF;
	} else {
		baseY = 0x32 - (angle / 0x24);
		y1 = baseY + 0x3C;
		y2 = baseY + 0x64;
		y3 = baseY + 0x78;
		y4 = baseY + 0xF0;

		D_8005BB34[0].v.ob[0] = 0;
		D_8005BB34[0].v.ob[1] = baseY;
		D_8005BB34[0].v.ob[2] = -5;
		D_8005BB34[0].v.flag = 0;
		D_8005BB34[0].v.tc[0] = 0;
		D_8005BB34[0].v.tc[1] = 0;
		D_8005BB34[0].v.cn[0] = 0x5A;
		D_8005BB34[0].v.cn[1] = 0x87;
		D_8005BB34[0].v.cn[2] = 0xC8;
		D_8005BB34[0].v.cn[3] = 0xFF;

		D_8005BB34[1].v.ob[0] = 0x140;
		D_8005BB34[1].v.ob[1] = baseY;
		D_8005BB34[1].v.ob[2] = -5;
		D_8005BB34[1].v.flag = 0;
		D_8005BB34[1].v.tc[0] = 0;
		D_8005BB34[1].v.tc[1] = 0;
		D_8005BB34[1].v.cn[0] = 0x5A;
		D_8005BB34[1].v.cn[1] = 0x87;
		D_8005BB34[1].v.cn[2] = 0xC8;
		D_8005BB34[1].v.cn[3] = 0xFF;

		D_8005BB34[2].v.ob[0] = 0;
		D_8005BB34[2].v.ob[1] = y1;
		D_8005BB34[2].v.ob[2] = -5;
		D_8005BB34[2].v.flag = 0;
		D_8005BB34[2].v.tc[0] = 0;
		D_8005BB34[2].v.tc[1] = 0;
		D_8005BB34[2].v.cn[0] = 0x5F;
		D_8005BB34[2].v.cn[1] = 0x8C;
		D_8005BB34[2].v.cn[2] = 0x96;
		D_8005BB34[2].v.cn[3] = 0xFF;

		D_8005BB34[3].v.ob[0] = 0x140;
		D_8005BB34[3].v.ob[1] = y1;
		D_8005BB34[3].v.ob[2] = -5;
		D_8005BB34[3].v.flag = 0;
		D_8005BB34[3].v.tc[0] = 0;
		D_8005BB34[3].v.tc[1] = 0;
		D_8005BB34[3].v.cn[0] = 0x5F;
		D_8005BB34[3].v.cn[1] = 0x8C;
		D_8005BB34[3].v.cn[2] = 0x96;
		D_8005BB34[3].v.cn[3] = 0xFF;

		D_8005BB34[4].v.ob[0] = 0;
		D_8005BB34[4].v.ob[1] = y2;
		D_8005BB34[4].v.ob[2] = -5;
		D_8005BB34[4].v.flag = 0;
		D_8005BB34[4].v.tc[0] = 0;
		D_8005BB34[4].v.tc[1] = 0;
		D_8005BB34[4].v.cn[0] = 0x8C;
		D_8005BB34[4].v.cn[1] = 0x96;
		D_8005BB34[4].v.cn[2] = 0x69;
		D_8005BB34[4].v.cn[3] = 0xFF;

		D_8005BB34[5].v.ob[0] = 0x140;
		D_8005BB34[5].v.ob[1] = y2;
		D_8005BB34[5].v.ob[2] = -5;
		D_8005BB34[5].v.flag = 0;
		D_8005BB34[5].v.tc[0] = 0;
		D_8005BB34[5].v.tc[1] = 0;
		D_8005BB34[5].v.cn[0] = 0x8C;
		D_8005BB34[5].v.cn[1] = 0x96;
		D_8005BB34[5].v.cn[2] = 0x69;
		D_8005BB34[5].v.cn[3] = 0xFF;

		D_8005BB34[6].v.ob[0] = 0;
		D_8005BB34[6].v.ob[1] = y3;
		D_8005BB34[6].v.ob[2] = -5;
		D_8005BB34[6].v.flag = 0;
		D_8005BB34[6].v.tc[0] = 0;
		D_8005BB34[6].v.tc[1] = 0;
		D_8005BB34[6].v.cn[0] = 0x05;
		D_8005BB34[6].v.cn[1] = 0x64;
		D_8005BB34[6].v.cn[2] = 0x0F;
		D_8005BB34[6].v.cn[3] = 0xFF;

		D_8005BB34[7].v.ob[0] = 0x140;
		D_8005BB34[7].v.ob[1] = y3;
		D_8005BB34[7].v.ob[2] = -5;
		D_8005BB34[7].v.flag = 0;
		D_8005BB34[7].v.tc[0] = 0;
		D_8005BB34[7].v.tc[1] = 0;
		D_8005BB34[7].v.cn[0] = 0x05;
		D_8005BB34[7].v.cn[1] = 0x64;
		D_8005BB34[7].v.cn[2] = 0x0F;
		D_8005BB34[7].v.cn[3] = 0xFF;

		D_8005BB34[8].v.ob[0] = 0;
		D_8005BB34[8].v.ob[1] = y4;
		D_8005BB34[8].v.ob[2] = -5;
		D_8005BB34[8].v.flag = 0;
		D_8005BB34[8].v.tc[0] = 0;
		D_8005BB34[8].v.tc[1] = 0;
		D_8005BB34[8].v.cn[0] = 0x00;
		D_8005BB34[8].v.cn[1] = 0x19;
		D_8005BB34[8].v.cn[2] = 0x0F;
		D_8005BB34[8].v.cn[3] = 0xFF;

		D_8005BB34[9].v.ob[0] = 0x140;
		D_8005BB34[9].v.ob[1] = y4;
		D_8005BB34[9].v.ob[2] = -5;
		D_8005BB34[9].v.flag = 0;
		D_8005BB34[9].v.tc[0] = 0;
		D_8005BB34[9].v.tc[1] = 0;
		D_8005BB34[9].v.cn[0] = 0x00;
		D_8005BB34[9].v.cn[1] = 0x19;
		D_8005BB34[9].v.cn[2] = 0x0F;
		D_8005BB34[9].v.cn[3] = 0xFF;
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gSPClearGeometryMode(D_8005BB2C++, -1);
	gSPSetGeometryMode(D_8005BB2C++, G_SHADE | G_SHADING_SMOOTH);

	guOrtho(D_8005BB38, 0.0f, 320.0f, 240.0f, 0.0f, -100.0f, 100.0f, 1.0f);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

	matrix = D_8005BB38 + 0x40;
	D_8005BB38 = matrix;
	func_800039D0_45D0(NULL, NULL, NULL, matrix);

	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	if ((D_800A0964_188A24 == 0) || ((u8)D_800E73DF != 4)) {
		gSPVertex(D_8005BB2C++, (Vtx *)((u32)D_8005BB34 + 0x80000000), 10, 0);
		gSP2Triangles(D_8005BB2C++, 0, 1, 2, 0, 1, 2, 3, 0);
		gSP2Triangles(D_8005BB2C++, 2, 3, 4, 0, 3, 4, 5, 0);
		gSP2Triangles(D_8005BB2C++, 4, 5, 6, 0, 5, 6, 7, 0);
		gSP2Triangles(D_8005BB2C++, 6, 7, 8, 0, 7, 8, 9, 0);
	}

	gDPPipeSync(D_8005BB2C++);
	D_8005BB34 += 10;
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BACK | G_LIGHTING);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80073A50_15BB10.s")
#endif

// CURRENT (7311)
#ifdef NON_MATCHING
// AI - Renders an individual floor tile from the interior grid
void func_8007453C_15C5FC(s32 arg0, s32 arg1) {
	u8 cellType;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 temp;
	s16 worldX;
	s16 worldZ;
	s32 xBase;
	s32 zBase;
	s32 variant;
	s16 sp94[6];
	s32 sp70[6];
	s16 sp5C[6];

	cellType = D_800E69A8[(D_800E6460 * arg1) + arg0];
	if (cellType == 0xFF) {
		return;
	}

	xBase = arg0 * 0x60;
	worldX = xBase + 0x30;
	zBase = arg1 * 0x60;
	worldZ = zBase + 0x30;

	if (!func_8007C428_1644E8(
			worldX,
			0x30,
			worldZ,
			0x48,
			(s32)D_8008DDF4_175EB4,
			(s32)D_8008DDF8_175EB8,
			(s32)D_8008DDFC_175EBC,
			(s16)(s32)(((f64)(D_8008DDF0_175EB0 * 32768.0f)) / D_800A4AA0_18CB60),
			0x238E)) {
		return;
	}

	gSPSegment(D_8005BB2C++, 0x06, (void *)((D_800E65C4[(cellType & 0xE0) >> 5] * 2) + (u32)D_800A5720));

	variant = (cellType & 0x1C) >> 2;
	if ((variant == 4) && (D_800E65C8->unkC != 0xFF)) {
		sp94[0] = (cellType & 3) << 0xE;
		sp94[1] = 0;
		sp94[2] = 0;

		sp70[0] = worldX << 0x10;
		sp70[1] = 0;
		sp70[2] = worldZ << 0x10;

		sp5C[0] = 0x40;
		sp5C[1] = 0x40;
		sp5C[2] = 0x40;

		switch (D_800E65C8->unkC) {
			case 0x400:
				sp94[3] = (s16)(s32)(((f64)((f32)D_800E65DC * 32768.0f)) / D_800A4AA8_18CB68);
				sp94[4] = 0;
				sp94[5] = 0;
				sp70[3] = D_800E65C8->unk18 << 0x10;
				sp70[4] = 0;
				sp70[5] = D_800E65C8->unk1C << 0x10;
				break;

			case 0x1000:
				sp94[3] = 0;
				sp94[4] = 0;
				sp94[5] = 0;
				sp70[3] = (D_800E65C8->unk18 + D_800E65DC) << 0x10;
				sp70[4] = 0;
				sp70[5] = D_800E65C8->unk1C << 0x10;
				break;

			case 0x2000:
				sp94[3] = 0;
				sp94[4] = 0;
				sp94[5] = 0;
				sp70[3] = D_800E65C8->unk18 << 0x10;
				sp70[4] = D_800E65DC << 0x10;
				sp70[5] = D_800E65C8->unk1C << 0x10;
				break;

			default:
				osSyncPrintf(D_800A443C_18C4FC);
				break;
		}

		sp5C[3] = 0x100;
		sp5C[4] = 0x100;
		sp5C[5] = 0x100;
		func_80076A58_15EB18(1, sp94, sp70, sp5C, D_800E65C0[variant]);

		if (D_800E65C8->unk2C != 0) {
			gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
			temp = D_8005BB38;
			D_8005BB38 += 0x40;

			func_800773F4_15F4B4(
				D_800E65C8->unk2C,
				worldX << 0x10,
				0,
				(zBase - 0x30) << 0x10,
				0,
				sp94[0],
				0,
				temp,
				1,
				0x40
			);

			gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
		}
	} else {
		temp = D_8005BB38;
		D_8005BB38 += 0x40;

		func_800773F4_15F4B4(
			D_800E65C0[variant],
			(xBase + 0x30) << 0x10,
			0,
			(zBase + 0x30) << 0x10,
			0,
			(cellType & 3) << 0xE,
			0,
			temp,
			1,
			0x40
		);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007453C_15C5FC.s")
#endif

// AI - Renders floor tiles scanning from bottom-right upward
void func_80074998_15CA58(void) {
	s32 var_s0;
	s32 var_s1;

	var_s1 = D_800E6460 - 1;
	if (var_s1 >= 0) {
		do {
			var_s0 = D_800E6464 - 1;
			if (var_s0 >= 0) {
				do {
					func_8007453C_15C5FC(var_s1, var_s0);
					var_s0 -= 1;
				} while (var_s0 >= 0);
			}
			var_s1 -= 1;
		} while (var_s1 >= 0);
	}
}

// AI - Renders floor tiles scanning from bottom row left-to-right
void func_80074A0C_15CACC(void) {
	s32 var_s0;
	s32 var_s1;

	var_s1 = D_800E6460 - 1;
	if (var_s1 >= 0) {
		do {
			if (D_800E6464 > 0) {
				var_s0 = 0;
				do {
					func_8007453C_15C5FC(var_s1, var_s0);
					var_s0 += 1;
				} while (var_s0 < D_800E6464);
			}
			var_s1 -= 1;
		} while (var_s1 >= 0);
	}
}

// AI - Renders floor tiles scanning from top-left downward
void func_80074A8C_15CB4C(void) {
	s32 var_s0;
	s32 var_s1;

	var_s1 = 0;
	if (var_s1 < D_800E6460) {
		do {
			var_s0 = D_800E6464 - 1;
			if (var_s0 >= 0) {
				do {
					func_8007453C_15C5FC(var_s1, var_s0);
					var_s0 -= 1;
				} while (var_s0 >= 0);
			}
			var_s1 += 1;
		} while (var_s1 < D_800E6460);
	}
}

// AI - Renders floor tiles scanning from top row left-to-right
void func_80074B0C_15CBCC(void) {
	s32 var_s0;
	s32 var_s1;

	var_s1 = 0;
	if (var_s1 < D_800E6460) {
		do {
			if (D_800E6464 > 0) {
				var_s0 = 0;
				do {
					func_8007453C_15C5FC(var_s1, var_s0);
					var_s0 += 1;
				} while (var_s0 < D_800E6464);
			}
			var_s1 += 1;
		} while (var_s1 < D_800E6460);
	}
}

// AI - Renders floor tiles scanning from right column top-to-bottom
void func_80074B98_15CC58(void) {
	s32 var_s0;
	s32 var_s1;

	var_s1 = D_800E6464 - 1;
	if (var_s1 >= 0) {
		do {
			if (D_800E6460 > 0) {
				var_s0 = 0;
				do {
					func_8007453C_15C5FC(var_s0, var_s1);
					var_s0 += 1;
				} while (var_s0 < D_800E6460);
			}
			var_s1 -= 1;
		} while (var_s1 >= 0);
	}
}

// AI - Renders floor tiles scanning from bottom-right upward (col first)
void func_80074C18_15CCD8(void) {
	s32 var_s0;
	s32 var_s1;

	var_s1 = D_800E6464 - 1;
	if (var_s1 >= 0) {
		do {
			var_s0 = D_800E6460 - 1;
			if (var_s0 >= 0) {
				do {
					func_8007453C_15C5FC(var_s0, var_s1);
					var_s0 -= 1;
				} while (var_s0 >= 0);
			}
			var_s1 -= 1;
		} while (var_s1 >= 0);
	}
}

// AI - Renders floor tiles scanning from top-left row-by-row
void func_80074C8C_15CD4C(void) {
	s32 var_s0;
	s32 var_s1;

	var_s1 = 0;
	if (var_s1 < D_800E6464) {
		do {
			if (D_800E6460 > 0) {
				var_s0 = 0;
				do {
					func_8007453C_15C5FC(var_s0, var_s1);
					var_s0 += 1;
				} while (var_s0 < D_800E6460);
			}
			var_s1 += 1;
		} while (var_s1 < D_800E6464);
	}
}

// AI - Renders floor tiles scanning from top-right downward (col first)
void func_80074D18_15CDD8(void) {
	s32 var_s0;
	s32 var_s1;

	var_s1 = 0;
	if (var_s1 < D_800E6464) {
		do {
			var_s0 = D_800E6460 - 1;
			if (var_s0 >= 0) {
				do {
					func_8007453C_15C5FC(var_s0, var_s1);
					var_s0 -= 1;
				} while (var_s0 >= 0);
			}
			var_s1 += 1;
		} while (var_s1 < D_800E6464);
	}
}

// CURRENT(218)
#ifdef NON_MATCHING
// AI - Spawns torches for a specific building interior (Level 4, building 0x20)
void func_80074D98_15CE58(s32 arg0) {
	Unk800E66A8 *entry;
	s16 xPlus;
	s16 xMinus;
	s16 zPlus;
	s16 zMinus;
	s32 tempX;
	s32 tempZ;
	s32 y;

	if (currentLevel != 4) {
		return;
	}

	entry = &D_800E66A8[arg0];
	if ((entry->unk0 != 0x18) || (buildingInteriorToLoadId != 0x20)) {
		return;
	}

	if (func_8000726C_7E6C(2) != 0) {
		return;
	}

	tempX = entry->unk2 - 0x60;
	tempZ = entry->unk6 - 0x60;
	y = (s32) (((Unk8007C698Npc *) entry)->unk24 + (f32) (entry->unk4 - 0x60) + 165.0f);
	xPlus = tempX + 0x14;
	zPlus = tempZ + 0x14;
	xMinus = tempX - 0x14;
	zMinus = tempZ - 0x14;

	((s32 *) &D_8008DE78_175F38)[0] = func_80084EEC_16CFAC(xPlus, y, zPlus, 0xC8, 0, 0xC8, 0, 0, 0x78, 0, 0x32, 0x64);
	((s32 *) &D_8008DE78_175F38)[1] = func_80084EEC_16CFAC(xMinus, y, zMinus, 0xC8, 0, 0xC8, 0, 0, 0x78, 0, 0x32, 0x64);
	((s32 *) &D_8008DE78_175F38)[2] = func_80084EEC_16CFAC(xPlus, y, zMinus, 0xC8, 0, 0xC8, 0, 0, 0x78, 0, 0x32, 0x64);
	((s32 *) &D_8008DE78_175F38)[3] = func_80084EEC_16CFAC(xMinus, y, zPlus, 0xC8, 0, 0xC8, 0, 0, 0x78, 0, 0x32, 0x64);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80074D98_15CE58.s")
#endif

#ifdef NON_MATCHING
// AI - Renders 3D room objects with visibility culling and texture offsets
void func_80074FF0_15D0B0(void) {
	s16 spDE;
	s16 spDC;
	s16 spDA;
	s16 spD8;
	s16 spD6;
	s16 spD4;
	s32 spC4;
	s32 spC0;
	s32 spBC;
	s32 spB8;
	s32 spB4;
	s32 spB0;
	s16 spA6;
	s16 spA4;
	s16 spA2;
	s16 spA0;
	s16 sp9E;
	s16 sp9C;
	Unk800E66A8 *entry;
	f32 dimX;
	f32 dimZ;
	f64 temp_f20;
	s32 objIdx;
	s32 temp;
	s32 i;
	s32 halfDim;
	u16 temp_u16;
	Unk80070F7CObj *obj;

	gDPSetCombineLERP(D_8005BB2C++, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);

	entry = D_800E66A8;
	i = 0;
	if (D_800E668C > 0) {
		temp_f20 = D_800A4AB0_18CB70;
		do {
			objIdx = entry->unk0;
			obj = &D_800E65BC[objIdx];
			if (obj->unk44 & 1) {
				temp_u16 = obj->unk18;
				dimX = temp_u16;
				temp_u16 = obj->unk1A;
				dimZ = temp_u16;
				if (dimZ < dimX) {
					halfDim = (s32) (dimX / 2.0f);
				} else {
					halfDim = (s32) (dimZ / 2.0f);
				}

				if (func_8007C428_1644E8(
					entry->unk2 - 0x60,
					entry->unk4,
					entry->unk6 - 0x60,
					(u16) (s32) ((f64) halfDim * 1.5),
					(s32) D_8008DDF4_175EB4,
					(s32) D_8008DDF8_175EB8,
					(s32) D_8008DDFC_175EBC,
					(u16) (s32) (((f64) (D_8008DDF0_175EB0 * 32768.0f)) / temp_f20),
					0x238E
				)) {
					temp = obj->unk40;
					if (temp & 0x100) {
						spB0 = (entry->unk2 - 0x60) << 0x10;
						spB4 = entry->unk4 << 0x10;
						sp9C = 0x40;
						spA0 = 0x40;
						spD4 = entry->unk8 << 0xE;
						spD6 = 0;
						spD8 = 0;
						spB8 = (entry->unk6 - 0x60) << 0x10;
						sp9E = 0x40;
						spA2 = 0x100;
						spA6 = 0x100;
						spDA = (s16) (s32) (((f64) (entry->unk18 * 32768.0f)) / temp_f20);
						spDC = (s16) (s32) (((f64) (entry->unk1C * 32768.0f)) / temp_f20);
						spA4 = 0x100;
						spBC = (s32) (entry->unk20 * 65536.0f);
						spDE = (s16) (s32) (((f64) (entry->unk14 * 32768.0f)) / temp_f20);
						spC0 = (s32) (entry->unk24 * 65536.0f);
						spC4 = (s32) (entry->unk28 * 65536.0f);
						func_80076A58_15EB18(1, &spD4, &spB0, &sp9C, obj->unk0);
					} else if (((temp & 0x04000000) && (entry->unk2E & 1)) ||
							   ((temp & 0x08000000) && !(entry->unk2E & 1))) {
						temp = D_8005BB38;
						D_8005BB38 += 0x40;
						func_800773F4_15F4B4(
							obj->unk0,
							(s32) (entry->unk20 * 65536.0f) + ((entry->unk2 - 0x60) << 0x10),
							(s32) (entry->unk24 * 65536.0f) + (entry->unk4 << 0x10),
							(s32) (entry->unk28 * 65536.0f) + ((entry->unk6 - 0x60) << 0x10),
							0,
							entry->unk8 << 0xE,
							0,
							temp,
							0,
							0x40);
						temp = D_8005BB38;
						D_8005BB38 += 0x40;
						func_800773F4_15F4B4(obj->unk4, obj->unk2C << 0x10, obj->unk2E << 0x10, obj->unk30 << 0x10,
							0, 0, 0, temp, 1, 0x100);

						gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
					} else {
						D_8005BB38 += 0x40;
						func_800773F4_15F4B4(
							obj->unk0,
							(s32) (entry->unk20 * 65536.0f) + ((entry->unk2 - 0x60) << 0x10),
							(s32) (entry->unk24 * 65536.0f) + (entry->unk4 << 0x10),
							(s32) (entry->unk28 * 65536.0f) + ((entry->unk6 - 0x60) << 0x10),
							(s16) (s32) (((f64) (entry->unk14 * 32768.0f)) / temp_f20),
							(entry->unk8 << 0xE) + (s16) (s32) (((f64) (entry->unk18 * 32768.0f)) / temp_f20),
							(s16) (s32) (((f64) (entry->unk1C * 32768.0f)) / temp_f20),
							D_8005BB38,
							1,
							0x40);
					}
				}
			}

			i++;
			entry++;
		} while (i < D_800E668C);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80074FF0_15D0B0.s")
#endif

#ifdef NON_MATCHING
// AI - Main room renderer: floor scan direction + object rendering
void func_8007568C_15D74C(void) {
	s16 sp102;
	s16 sp100;
	s16 spFE;
	s16 spFC;
	s16 spFA;
	s16 spF8;
	s32 spE8;
	s32 spE4;
	s32 spE0;
	s32 spDC;
	s32 spD8;
	s32 spD4;
	s16 spCA;
	s16 spC8;
	s16 spC6;
	s16 spC4;
	s16 spC2;
	s16 spC0;
	Unk800E66A8 *entry;
	Unk80070F7CObj *obj;
	f32 dimX;
	f32 dimZ;
	f64 temp_f20;
	s32 objIdx;
	s32 variant;
	s32 i;
	s32 halfDim;
	s32 tmp;
	u16 temp_u16;

	gDPSetCombineLERP(D_8005BB2C++, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);

	if (D_8008DDF0_175EB0 < 180.0f) {
		if (D_8008DDF0_175EB0 < 90.0f) {
			if (D_8008DDF0_175EB0 < 45.0f) {
				func_80074C8C_15CD4C();
			} else {
				func_80074B0C_15CBCC();
			}
		} else if (D_8008DDF0_175EB0 < 135.0f) {
			func_80074A8C_15CB4C();
		} else {
			func_80074B98_15CC58();
		}
	} else if (D_8008DDF0_175EB0 < 270.0f) {
		if (D_8008DDF0_175EB0 < 225.0f) {
			func_80074C18_15CCD8();
		} else {
			func_80074998_15CA58();
		}
	} else if (D_8008DDF0_175EB0 < D_800A4AB8_18CB78) {
		func_80074A0C_15CACC();
	} else {
		func_80074D18_15CDD8();
	}

	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);

	i = 0;
	entry = D_800E66A8;
	if (D_800E668C > 0) {
		temp_f20 = D_800A4AC0_18CB80;
		while (i < D_800E668C) {
			objIdx = entry->unk0;
			obj = &D_800E65BC[objIdx];

			if (!(obj->unk44 & 1)) {
				variant = obj->unk0;
				if ((obj->unk40 & 0x10000000) && (entry->unk2E & 1)) {
					variant = obj->unk4;
				}

				if (objIdx == 0x1E) {
					temp_u16 = obj->unk18;
					dimX = temp_u16;
					temp_u16 = obj->unk1A;
					dimZ = temp_u16;
					halfDim = (dimZ < dimX) ? (s32)(dimX / 2.0f) : (s32)(dimZ / 2.0f);
					if (func_8007C428_1644E8(entry->unk2 - 0x60, entry->unk4, entry->unk6 - 0x60,
						((u16)(s32)((f64)halfDim * 1.5)), (s32)D_8008DDF4_175EB4, (s32)D_8008DDF8_175EB8,
						(s32)D_8008DDFC_175EBC, (u16)(s32)(((f64)(D_8008DDF0_175EB0 * 32768.0f)) / temp_f20), 0x238E)) {
						func_8007F8F4_1679B4(entry->unk2 - 0x60, entry->unk4, entry->unk6 - 0x60, entry->unk8 << 0xE);
					}
				} else if (variant != 0) {
					temp_u16 = obj->unk18;
					dimX = temp_u16;
					temp_u16 = obj->unk1A;
					dimZ = temp_u16;
					halfDim = (dimZ < dimX) ? (s32)(dimX / 2.0f) : (s32)(dimZ / 2.0f);

					if (func_8007C428_1644E8(entry->unk2 - 0x60, entry->unk4, entry->unk6 - 0x60,
						((u16)(s32)((f64)halfDim * 1.5)), (s32)D_8008DDF4_175EB4, (s32)D_8008DDF8_175EB8,
						(s32)D_8008DDFC_175EBC, (u16)(s32)(((f64)(D_8008DDF0_175EB0 * 32768.0f)) / temp_f20), 0x238E)) {
						if (objIdx == 0x1E) {
							gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
							gSPSegment(D_8005BB2C++, 6, (D_800E65C4[(entry->unk2C & 0xFC) >> 2] * 2) + D_800A5720);

							D_8005BB38 += 0x40;
							func_800773F4_15F4B4(
								variant,
								(s32)(entry->unk20 * 65536.0f) + ((entry->unk2 - 0x60) << 0x10),
								(s32)(entry->unk24 * 65536.0f) + (entry->unk4 << 0x10),
								(s32)(entry->unk28 * 65536.0f) + ((entry->unk6 - 0x60) << 0x10),
								0,
								entry->unk8 << 0xE,
								0,
								D_8005BB38,
								1,
								0x40
							);

							gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
						} else if (obj->unk40 & 0x100) {
							spF8 = entry->unk8 << 0xE;
							spD4 = (entry->unk2 - 0x60) << 0x10;
							spD8 = entry->unk4 << 0x10;
							spDC = (entry->unk6 - 0x60) << 0x10;
							spE0 = (s32)(entry->unk20 * 65536.0f);
							spE4 = (s32)(entry->unk24 * 65536.0f);
							spE8 = (s32)(entry->unk28 * 65536.0f);
							spFA = 0;
							spFC = 0;
							spFE = (s16)(s32)(((f64)(entry->unk18 * 32768.0f)) / temp_f20);
							sp100 = (s16)(s32)(((f64)(entry->unk1C * 32768.0f)) / temp_f20);
							sp102 = (s16)(s32)(((f64)(entry->unk14 * 32768.0f)) / temp_f20);
							spC0 = 0x40;
							spC2 = 0x40;
							spC4 = 0x40;
							spC6 = 0x100;
							spC8 = 0x100;
							spCA = 0x100;
							func_80076A58_15EB18(1, &spF8, &spD4, &spC0, variant);
						} else if (((obj->unk40 & 0x04000000) && (entry->unk2E & 1)) ||
								   ((obj->unk40 & 0x08000000) && !(entry->unk2E & 1))) {
							tmp = D_8005BB38;
							D_8005BB38 += 0x40;
							func_800773F4_15F4B4(
								variant,
								(s32)(entry->unk20 * 65536.0f) + ((entry->unk2 - 0x60) << 0x10),
								(s32)(entry->unk24 * 65536.0f) + (entry->unk4 << 0x10),
								(s32)(entry->unk28 * 65536.0f) + ((entry->unk6 - 0x60) << 0x10),
								0,
								entry->unk8 << 0xE,
								0,
								tmp,
								0,
								0x40
							);
							tmp = D_8005BB38;
							D_8005BB38 += 0x40;
							func_800773F4_15F4B4(obj->unk4, obj->unk2C << 0x10, obj->unk2E << 0x10, obj->unk30 << 0x10,
								0, 0, 0, tmp, 1, 0x100);

							gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
						} else {
							D_8005BB38 += 0x40;
							func_800773F4_15F4B4(
								variant,
								(s32)(entry->unk20 * 65536.0f) + ((entry->unk2 - 0x60) << 0x10),
								(s32)(entry->unk24 * 65536.0f) + (entry->unk4 << 0x10),
								(s32)(entry->unk28 * 65536.0f) + ((entry->unk6 - 0x60) << 0x10),
								(s16)(s32)(((f64)(entry->unk14 * 32768.0f)) / temp_f20),
								(entry->unk8 << 0xE) + (s16)(s32)(((f64)(entry->unk18 * 32768.0f)) / temp_f20),
								(s16)(s32)(((f64)(entry->unk1C * 32768.0f)) / temp_f20),
								D_8005BB38,
								1,
								0x40
							);
						}
					}
				}

				if (i == D_800E65F8) {
					tmp = D_800E65F0;
					if ((tmp == 1) && (obj->unk40 & 4)) {
						func_800768B8_15E978(i);
					}
					if ((tmp == 2) || (tmp == 3)) {
						func_80076678_15E738(i);
					}
					if (tmp == 6) {
						func_80076538_15E5F8(i);
					}
				}
			}

			i += 1;
			entry += 1;
		}
	}

	if (D_800E65F0 == 5) {
		func_80073714_15B7D4(5, 5, D_800E65C8->unk4 + D_800E65CC, 2, D_800E65C8->unk8, 0xFA, 0xFA, 0);
	}

	if (D_800E65A8 & 0x10) {
		tmp = ((s32)(D_800E664E & 0xFC) >> 2);
		if ((D_800E664E & 3) == 2) {
			Unk8008DED0Entry *entry2 = &D_8008DED0_175F90[tmp];
			if (entry2->unk8 != 0) {
				gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);

				i = D_8005BB38;
				D_8005BB38 += 0x40;
				func_800773F4_15F4B4(entry2->unk0, (s32)(D_800E6650.x * 65536.0f), (s32)(D_800E6650.y * 65536.0f),
					(s32)(D_800E6650.z * 65536.0f), 0, D_800E6634, 0, i, 1, 0x40);

				gDPSetCombineLERP(D_8005BB2C++, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0);
			} else {
				func_8008B53C_1735FC((s16)(s32)D_800E6650.x, (s16)(s32)D_800E6650.y, (s16)(s32)D_800E6650.z, 0x28, tmp);
			}
		} else {
			i = D_8005BB38;
			D_8005BB38 += 0x40;
			func_800773F4_15F4B4(D_8008DFA0_176060[(currentLevel * 0xB) + tmp], (s32)(D_800E6650.x * 65536.0f),
				(s32)(D_800E6650.y * 65536.0f), (s32)(D_800E6650.z * 65536.0f), 0, D_800E6634, 0, i, 1, 0x40);
		}

		gSPNumLights(D_8005BB2C++, 2);

		gSPLight(D_8005BB2C++, (Light *)&D_8008DE58_175F18, 1);
		gSPLight(D_8005BB2C++, (Light *)D_8008DE68_175F28, 2);
		gSPLight(D_8005BB2C++, (Light *)D_8008DE50_175F10, 3);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007568C_15D74C.s")
#endif

// AI - Renders highlighted rectangle at a room entry position
void func_80076538_15E5F8(s32 arg0) {
	Unk800E66A8 *temp_v0;
	Unk80076538Obj *temp_v0_2;
	Unk80076538Obj *temp_v0_3;
	Unk80076538Obj *temp_v0_4;
	Unk80076538Obj *temp_v0_5;
	s32 var_t0;
	s32 var_v1;
	u8 temp_a2;

	temp_v0 = &D_800E66A8[arg0];
	temp_a2 = temp_v0->unk0;
	var_v1 = temp_v0->unk2;
	var_t0 = temp_v0->unk6;

	switch (temp_v0->unk8) {
		case 0:
			temp_v0_2 = &((Unk80076538Obj *) D_800E65BC)[temp_a2];
			var_v1 += temp_v0_2->unk8;
			var_t0 += temp_v0_2->unkA;
			break;

		case 1:
			temp_v0_3 = &((Unk80076538Obj *) D_800E65BC)[temp_a2];
			var_v1 += temp_v0_3->unkA;
			var_t0 -= temp_v0_3->unk8;
			break;

		case 2:
			temp_v0_4 = &((Unk80076538Obj *) D_800E65BC)[temp_a2];
			var_v1 -= temp_v0_4->unk8;
			var_t0 -= temp_v0_4->unkA;
			break;

		case 3:
			temp_v0_5 = &((Unk80076538Obj *) D_800E65BC)[temp_a2];
			var_v1 -= temp_v0_5->unkA;
			var_t0 += temp_v0_5->unk8;
			break;
	}

	func_80073714_15B7D4(5, 5, var_v1 - 0x60, 2, var_t0 - 0x60, 0xFA, 0xFA, 0);
}

// CURRENT(1438)
#ifdef NON_MATCHING
// AI - Renders door/room transition rectangles
void func_80076678_15E738(s32 arg0) {
	s16 temp_t0;
	s16 temp_t1;
	s32 var_v1;
	s32 sp4C;
	s32 sp48;
	s32 sp44;
	s32 sp40;
	s32 sp3C;
	s32 sp38;

	temp_t0 = D_800E66A8[arg0].unk2;
	temp_t1 = D_800E66A8[arg0].unk6;

	if (D_800E66A8[arg0].unk8 == 0) {
		Unk80076678Obj *temp_v1;

		var_v1 = D_800E66A8[arg0].unk0 * 0x48;
		temp_v1 = (Unk80076678Obj *)((u8 *)D_800E65BC + var_v1);
		sp4C = temp_v1->unk18;
		sp48 = temp_v1->unk1A;
		sp44 = temp_v1->unk36;
		sp40 = temp_v1->unk38;
		sp3C = temp_v1->unk3A;
		sp38 = temp_v1->unk3B;
	} else if (D_800E66A8[arg0].unk8 == 1) {
		Unk80076678Obj *temp_v1;

		var_v1 = D_800E66A8[arg0].unk0 * 0x48;
		temp_v1 = (Unk80076678Obj *)((u8 *)D_800E65BC + var_v1);
		sp4C = temp_v1->unk1A;
		sp48 = temp_v1->unk18;
		sp44 = temp_v1->unk38;
		sp40 = -temp_v1->unk36;
		sp3C = temp_v1->unk3B;
		sp38 = temp_v1->unk3A;
	} else if (D_800E66A8[arg0].unk8 == 2) {
		Unk80076678Obj *temp_v1;

		var_v1 = D_800E66A8[arg0].unk0 * 0x48;
		temp_v1 = (Unk80076678Obj *)((u8 *)D_800E65BC + var_v1);
		sp4C = temp_v1->unk18;
		sp48 = temp_v1->unk1A;
		sp44 = -temp_v1->unk36;
		sp40 = -temp_v1->unk38;
		sp3C = temp_v1->unk3A;
		sp38 = temp_v1->unk3B;
	} else if (D_800E66A8[arg0].unk8 == 3) {
		Unk80076678Obj *temp_v1;

		var_v1 = D_800E66A8[arg0].unk0 * 0x48;
		temp_v1 = (Unk80076678Obj *)((u8 *)D_800E65BC + var_v1);
		sp4C = temp_v1->unk1A;
		sp48 = temp_v1->unk18;
		sp44 = -temp_v1->unk38;
		sp40 = temp_v1->unk36;
		sp3C = temp_v1->unk3B;
		sp38 = temp_v1->unk3A;
	} else {
		var_v1 = D_800E66A8[arg0].unk0 * 0x48;
	}

	func_80073714_15B7D4(sp4C, sp48, temp_t0 - 0x60, 7, temp_t1 - 0x60, 0, 0xFA, 0);

	if (((Unk80076678Obj *)((u8 *)D_800E65BC + var_v1))->unk40 & 0x400000) {
		func_80073714_15B7D4(sp3C, sp38, (temp_t0 + sp44) - 0x60, 0xA, (temp_t1 + sp40) - 0x60, 0, 0, 0xFA);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80076678_15E738.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(2112) */
// AI - Renders selection highlight for interactive room objects
void func_800768B8_15E978(s32 arg0) {
	s32 sp34;
	s32 sp30;
	s32 sp2C;
	s32 sp28;
	s16 temp_t0;
	s16 temp_t1;
	u16 temp_a3;
	Unk800768B8Obj *temp_v0;
	Unk800E66A8 *temp_v1;

	temp_v1 = &D_800E66A8[arg0];
	temp_v0 = &((Unk800768B8Obj *) D_800E65BC)[temp_v1->unk0];
	temp_a3 = temp_v0->unk1A;
	temp_t0 = temp_v0->unk32;
	temp_t1 = temp_v0->unk34;

	switch (temp_v1->unk8) {
		case 0:
			sp2C = temp_t1;
			sp34 = temp_v1->unk2 + temp_t0;
			sp30 = temp_v1->unk6 + ((s32) temp_a3 / 2) + 0xF;
			sp28 = 0xF;
			break;

		case 1:
			sp2C = 0xF;
			sp28 = temp_t1;
			sp30 = temp_v1->unk6 - temp_t0;
			sp34 = temp_v1->unk2 + ((s32) temp_a3 / 2) + 0xF;
			break;

		case 2:
			sp2C = temp_t1;
			sp28 = 0xF;
			sp34 = temp_v1->unk2 - temp_t0;
			sp30 = (temp_v1->unk6 - ((s32) temp_a3 / 2)) - 0xF;
			break;

		case 3:
			sp2C = 0xF;
			sp28 = temp_t1;
			sp30 = temp_v1->unk6 + temp_t0;
			sp34 = (temp_v1->unk2 - ((s32) temp_a3 / 2)) - 0xF;
			break;
	}

	func_80073714_15B7D4(sp2C, sp28, sp34 - 0x60, 5, sp30 - 0x60, 0xFA, 0, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800768B8_15E978.s")
#endif

// CURRENT(1928)
#ifdef NON_MATCHING
// AI - Sets up matrix, renders transformed geometry with display list
void func_80076A58_15EB18(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
	s32 sp3C;
	s32 temp_s2;
	s32 temp_t9;
	s32 var_s0;
	s32 var_s1;
	s32 var_s2;
	s32 var_s3;
	u8 *var_s4;

	temp_s2 = arg0 & 0xFF;
	var_s4 = (u8 *)(D_8005BB2C + 2);
	gSPSegment(D_8005BB2C++, 7, var_s4);

	temp_t9 = ((temp_s2 << 6) + 5) & ~5;
	D_8005BB2C = (Gfx *)(var_s4 + temp_t9);
	gSPBranchList(D_8005BB2C++, (void *)(0x07000000 + temp_t9));

	sp3C = temp_s2;
	func_80076C08_15ECC8((s32 *)arg2, (u16 *)arg1, (s16 *)arg3, D_8005BB38);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	if (sp3C > 0) {
		var_s0 = arg2 + 0xC;
		var_s2 = arg1 + 6;
		var_s3 = arg3 + 6;
		var_s1 = 6;
		temp_t9 = (sp3C << 2) - sp3C;
		temp_t9 <<= 1;
		do {
			func_80077010_15F0D0(var_s0, var_s2, var_s3, var_s4);
			var_s1 += 6;
			var_s0 += 0xC;
			var_s2 += 6;
			var_s3 += 6;
			var_s4 += 0x40;
		} while (var_s1 <= temp_t9);
	}

	gSPDisplayList(D_8005BB2C++, arg4);
	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80076A58_15EB18.s")
#endif

// CURRENT (5013)
#ifdef NON_MATCHING
// AI - Builds transformation matrix from position, rotation, and scale
void func_80076C08_15ECC8(s32 *arg0, u16 *arg1, s16 *arg2, s32 arg3) {
	Unk800476C8 sp48[2];
	s32 sp44;
	s32 sp40;
	s32 sp3C;
	s32 sp38;
	s32 sp34;
	s32 temp_v0;
	s32 *var_v0;
	s32 *var_a0;

	sp48[0].unkC = 0;
	sp48[0].unk1C = 0;
	sp48[1].unkC = 0;
	sp48[1].unk1C = 0x10000;

	if (arg0 != NULL) {
		sp48[1].unk10 = arg0[0];
		sp48[1].unk14 = arg0[1];
		sp48[1].unk18 = arg0[2];
	} else {
		sp48[1].unk10 = 0;
		sp48[1].unk14 = 0;
		sp48[1].unk18 = 0;
	}

	if (arg1 != NULL) {
		sp44 = coss(arg1[0]);
		sp40 = sins(arg1[0]);
		sp3C = coss(arg1[2]);
		sp38 = sins(arg1[2]);
		sp34 = coss(arg1[1]);
		temp_v0 = sins(arg1[1]);

		sp48[0].unk8 = (-sp40) * 2;
		sp48[0].unk0 = ((sp44 * sp34) >> 0xF) * 2;
		sp48[0].unk4 = ((sp44 * temp_v0) >> 0xF) * 2;
		sp48[0].unk10 = (((-sp3C * temp_v0) >> 0xF) + ((((sp40 * sp38) >> 0xF) * sp34) >> 0xF)) * 2;
		sp48[0].unk14 = (((sp3C * sp34) >> 0xF) + ((((sp40 * sp38) >> 0xF) * temp_v0) >> 0xF)) * 2;
		sp48[0].unk18 = ((sp38 * sp44) >> 0xF) * 2;
		sp48[1].unk0 = (((sp38 * temp_v0) >> 0xF) + ((((sp40 * sp3C) >> 0xF) * sp34) >> 0xF)) * 2;
		sp48[1].unk4 = (((-sp38 * sp34) >> 0xF) + ((((sp40 * sp3C) >> 0xF) * temp_v0) >> 0xF)) * 2;
		sp48[1].unk8 = ((sp44 * sp3C) >> 0xF) * 2;
	} else {
		sp48[0].unk0 = 0x10000;
		sp48[0].unk10 = 0;
		sp48[1].unk0 = 0;
		sp48[0].unk4 = 0;
		sp48[0].unk14 = 0x10000;
		sp48[1].unk4 = 0;
		sp48[0].unk8 = 0;
		sp48[0].unk18 = 0;
		sp48[1].unk8 = 0x10000;
	}

	if (arg2 != NULL) {
		sp48[0].unk0 = sp48[0].unk0 * arg2[0];
		sp48[0].unk4 = sp48[0].unk4 * arg2[0];
		sp48[0].unk0 = sp48[0].unk0 >> 8;
		sp48[0].unk8 = sp48[0].unk8 * arg2[0];
		sp48[0].unk4 = sp48[0].unk4 >> 8;
		sp48[0].unk8 = sp48[0].unk8 >> 8;

		sp48[0].unk10 = sp48[0].unk10 * arg2[1];
		sp48[0].unk14 = sp48[0].unk14 * arg2[1];
		sp48[0].unk10 = sp48[0].unk10 >> 8;
		sp48[0].unk18 = sp48[0].unk18 * arg2[1];
		sp48[0].unk14 = sp48[0].unk14 >> 8;
		sp48[0].unk18 = sp48[0].unk18 >> 8;

		sp48[1].unk0 = sp48[1].unk0 * arg2[2];
		sp48[1].unk4 = sp48[1].unk4 * arg2[2];
		sp48[1].unk0 = sp48[1].unk0 >> 8;
		sp48[1].unk8 = sp48[1].unk8 * arg2[2];
		sp48[1].unk4 = sp48[1].unk4 >> 8;
		sp48[1].unk8 = sp48[1].unk8 >> 8;
	}

	var_v0 = (s32 *)sp48;
	var_a0 = (s32 *)arg3;
	do {
		var_a0[0] = ((var_v0[1] & 0xFFFF0000) >> 0x10) + (var_v0[0] & 0xFFFF0000);
		var_a0 += 4;
		var_a0[4] = (var_v0[0] << 0x10) + (var_v0[1] & 0xFFFF);
		var_a0[-3] = ((var_v0[3] & 0xFFFF0000) >> 0x10) + (var_v0[2] & 0xFFFF0000);
		var_a0[5] = (var_v0[2] << 0x10) + (var_v0[3] & 0xFFFF);
		var_a0[-2] = ((var_v0[5] & 0xFFFF0000) >> 0x10) + (var_v0[4] & 0xFFFF0000);
		var_a0[6] = (var_v0[4] << 0x10) + (var_v0[5] & 0xFFFF);
		var_a0[-1] = ((var_v0[7] & 0xFFFF0000) >> 0x10) + (var_v0[6] & 0xFFFF0000);
		var_a0[7] = (var_v0[6] << 0x10) + (var_v0[7] & 0xFFFF);
		var_v0 += 8;
	} while (var_v0 != (s32 *)&sp48[2]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80076C08_15ECC8.s")
#endif

#ifdef NON_MATCHING
// AI - Builds child transformation matrix for multi-part objects
void func_80077010_15F0D0(s32 *arg0, u16 *arg1, s16 *arg2, s32 *arg3) {
	Unk800476C8 sp50[2];
	s32 sp4C;
	s32 sp48;
	s32 sp44;
	s32 sp40;
	s32 sp3C;
	s32 temp_v0;
	s32 *var_v0;
	s32 *var_a0;

	sp50[0].unkC = 0;
	sp50[0].unk1C = 0;
	sp50[1].unkC = 0;
	sp50[1].unk1C = 0x10000;

	if (arg0 != NULL) {
		sp50[1].unk10 = arg0[0];
		sp50[1].unk14 = arg0[1];
		sp50[1].unk18 = arg0[2];
	} else {
		sp50[1].unk10 = 0;
		sp50[1].unk14 = 0;
		sp50[1].unk18 = 0;
	}

	if (arg1 != NULL) {
		sp4C = coss(arg1[0]);
		sp48 = sins(arg1[0]);
		sp44 = coss(arg1[2]);
		sp40 = sins(arg1[2]);
		sp3C = coss(arg1[1]);
		temp_v0 = sins(arg1[1]);

		sp50[0].unk0 = ((sp4C * sp3C) >> 0xF) * 2;
		sp50[0].unk10 = (((sp40 * sp48) >> 0xF) - ((((sp4C * sp44) >> 0xF) * temp_v0) >> 0xF)) * 2;
		sp50[1].unk0 = (((sp48 * sp44) >> 0xF) + ((((sp4C * sp40) >> 0xF) * temp_v0) >> 0xF)) * 2;
		sp50[0].unk4 = temp_v0 * 2;
		sp50[0].unk14 = ((sp44 * sp3C) >> 0xF) * 2;
		sp50[1].unk4 = ((-sp40 * sp3C) >> 0xF) * 2;
		sp50[0].unk8 = ((-sp48 * sp3C) >> 0xF) * 2;
		sp50[0].unk18 = (((sp4C * sp40) >> 0xF) + ((((sp48 * sp44) >> 0xF) * temp_v0) >> 0xF)) * 2;
		sp50[1].unk8 = (((sp4C * sp44) >> 0xF) - ((((sp40 * sp48) >> 0xF) * temp_v0) >> 0xF)) * 2;
	} else {
		sp50[0].unk0 = 0x10000;
		sp50[0].unk10 = 0;
		sp50[1].unk0 = 0;
		sp50[0].unk4 = 0;
		sp50[0].unk14 = 0x10000;
		sp50[1].unk4 = 0;
		sp50[0].unk8 = 0;
		sp50[0].unk18 = 0;
		sp50[1].unk8 = 0x10000;
	}

	if (arg2 != NULL) {
		sp50[0].unk0 = sp50[0].unk0 * arg2[0];
		sp50[0].unk4 = sp50[0].unk4 * arg2[0];
		sp50[0].unk0 = sp50[0].unk0 >> 8;
		sp50[0].unk8 = sp50[0].unk8 * arg2[0];
		sp50[0].unk4 = sp50[0].unk4 >> 8;
		sp50[0].unk8 = sp50[0].unk8 >> 8;

		sp50[0].unk10 = sp50[0].unk10 * arg2[1];
		sp50[0].unk14 = sp50[0].unk14 * arg2[1];
		sp50[0].unk10 = sp50[0].unk10 >> 8;
		sp50[0].unk18 = sp50[0].unk18 * arg2[1];
		sp50[0].unk14 = sp50[0].unk14 >> 8;
		sp50[0].unk18 = sp50[0].unk18 >> 8;

		sp50[1].unk0 = sp50[1].unk0 * arg2[2];
		sp50[1].unk4 = sp50[1].unk4 * arg2[2];
		sp50[1].unk0 = sp50[1].unk0 >> 8;
		sp50[1].unk8 = sp50[1].unk8 * arg2[2];
		sp50[1].unk4 = sp50[1].unk4 >> 8;
		sp50[1].unk8 = sp50[1].unk8 >> 8;
	}

	var_v0 = (s32 *)sp50;
	var_a0 = arg3;
	do {
		var_a0[0] = ((var_v0[1] & 0xFFFF0000) >> 0x10) + (var_v0[0] & 0xFFFF0000);
		var_a0 += 4;
		var_a0[4] = (var_v0[0] << 0x10) + (var_v0[1] & 0xFFFF);
		var_a0[-3] = ((var_v0[3] & 0xFFFF0000) >> 0x10) + (var_v0[2] & 0xFFFF0000);
		var_a0[5] = (var_v0[2] << 0x10) + (var_v0[3] & 0xFFFF);
		var_a0[-2] = ((var_v0[5] & 0xFFFF0000) >> 0x10) + (var_v0[4] & 0xFFFF0000);
		var_a0[6] = (var_v0[4] << 0x10) + (var_v0[5] & 0xFFFF);
		var_a0[-1] = ((var_v0[7] & 0xFFFF0000) >> 0x10) + (var_v0[6] & 0xFFFF0000);
		var_a0[7] = (var_v0[6] << 0x10) + (var_v0[7] & 0xFFFF);
		var_v0 += 8;
	} while (var_v0 != (s32 *)&sp50[2]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80077010_15F0D0.s")
#endif

#ifdef NON_MATCHING
// CURRENT(30)
// AI - Applies transformation and draws a display list
void func_800773F4_15F4B4(Gfx *arg0, s32 arg1, s32 arg2, s32 arg3, u16 arg4, u16 arg5, u16 arg6, s32 arg7, s32 arg8, s16 arg9) {
	u16 sp38[3];
	s16 sp30[3];
	s32 sp24[3];

	sp24[0] = arg1;
	sp24[1] = arg2;
	sp24[2] = arg3;
	sp38[0] = arg5;
	sp38[1] = arg6;
	sp38[2] = arg4;
	sp30[0] = arg9;
	sp30[1] = arg9;
	sp30[2] = arg9;
	func_80076C08_15ECC8(sp24, sp38, sp30, arg7);

	gSPMatrix(D_8005BB2C++, (Mtx *)(arg7 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	gSPDisplayList(D_8005BB2C++, arg0);
	if (arg8 != 0) {
		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800773F4_15F4B4.s")
#endif

// AI - Returns dimensions of a room entry based on orientation
void func_800774E0_15F5A0(s32 arg0, f32 *arg1, f32 *arg2) {
	s32 objIndex;

	objIndex = D_800E66A8[arg0].unk0;
	if ((D_800E66A8[arg0].unk8 == 0) || (D_800E66A8[arg0].unk8 == 2)) {
		*arg1 = D_800E65BC[objIndex].unk18;
		*arg2 = D_800E65BC[objIndex].unk1A;
		return;
	}

	*arg1 = D_800E65BC[objIndex].unk1A;
	*arg2 = D_800E65BC[objIndex].unk18;
}

#ifdef NON_MATCHING
/* CURRENT(649) */
// AI - Spawns an NPC or object in a room based on type
void func_800775F0_15F6B0(s32 arg0, s32 arg1) {
	Unk800E66A8 *entry;
	Unk80076538Obj *obj;
	s32 objType;
	s32 var_t0;
	s32 var_t1;
	s32 var_t2;

	entry = &D_800E66A8[arg0];
	obj = &((Unk80076538Obj *) D_800E65BC)[arg1];
	objType = obj->unkC;
	var_t2 = obj->unk10 + entry->unk4;

	switch (entry->unk8) {
		case 0:
			var_t0 = obj->unkE + entry->unk2;
			var_t1 = obj->unk12 + entry->unk6;
			break;

		case 1:
			var_t0 = obj->unk12 + entry->unk2;
			var_t1 = entry->unk6 - obj->unkE;
			break;

		case 2:
			var_t0 = entry->unk2 - obj->unkE;
			var_t1 = entry->unk6 - obj->unk12;
			break;

		case 3:
			var_t0 = entry->unk2 - obj->unk12;
			var_t1 = obj->unkE + entry->unk6;
			break;
	}

	var_t0 -= 0x60;
	var_t1 -= 0x60;
	if (objType == 5) {
		func_800858F4_16D9B4(var_t0, var_t2, var_t1);
	} else if (objType == 4) {
		func_80085984_16DA44(0x28, 0x14, 0x14, var_t0, var_t2, var_t1);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800775F0_15F6B0.s")
#endif

// CURRENT(5892)
#ifdef NON_MATCHING
// AI - Spawns objects/enemies in a room based on type
void func_8007774C_15F80C(s32 arg0, s32 arg1) {
	Unk800E66A8 *entry;
	Unk80076538Obj *obj;
	s32 objType;
	s32 x;
	s32 z;
	s32 y;
	s32 var_t2;
	s32 var_t3;

	entry = &D_800E66A8[arg0];
	obj = &((Unk80076538Obj *) D_800E65BC)[arg1];
	objType = obj->unkC;
	y = obj->unk10 + entry->unk4;
	var_t2 = 0;
	var_t3 = 0;

	switch (entry->unk8) {
		case 0:
			x = obj->unkE + entry->unk2;
			z = obj->unk12 + entry->unk6;
			var_t2 = 1;
			break;

		case 1:
			x = obj->unk12 + entry->unk2;
			z = entry->unk6 - obj->unkE;
			var_t3 = 1;
			break;

		case 2:
			x = entry->unk2 - obj->unkE;
			z = entry->unk6 - obj->unk12;
			var_t2 = -1;
			break;

		case 3:
			x = entry->unk2 - obj->unk12;
			z = obj->unkE + entry->unk6;
			var_t3 = -1;
			break;
	}

	x -= 0x60;
	z -= 0x60;

	switch (objType) {
		case 1:
			entry->unkA = func_80084C68_16CD28(x, y, z, 0x50, 0xFFFF, 0xFF, 0xAA, 0x1E);
			break;

		case 2:
			entry->unkA = func_8008506C_16D12C(x, y, z, 0x32);
			break;

		case 3:
			entry->unkA = func_8008506C_16D12C(x, y, z, 0x50);
			break;

		case 4:
			entry->unkA = func_80084EEC_16CFAC(x, y, z, 0x78, 0xF0, 0xC8, 0x64, 0xFF, 0xB4, 0x46, 0x32, 1);
			break;

		case 5:
			entry->unkA = func_80089648_171708(x, y, z, (s8) (var_t3 * 0x14), 0, var_t2 * 0x14, 1);
			break;

		case 6:
			entry->unkA = func_80089648_171708(x, y, z, 0, -0xA, 0, 2);
			break;

		case 7:
			break;

		case 8:
			break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007774C_15F80C.s")
#endif

#ifdef NON_MATCHING
// AI - Removes/despawns objects from a room based on type
void func_80077A5C_15FB1C(s32 arg0, s32 arg1) {
	switch (*(s16 *) ((u8 *) &D_800E65BC[arg1] + 0xC)) {
		case 1:
			func_80086E90_16EF50(D_800E66B3[arg0 * 0x30]);
			break;
		case 2:
			func_80086F58_16F018(D_800E66B2[arg0 * 0x18]);
			break;
		case 3:
			func_80086F24_16EFE4(D_800E66B2[arg0 * 0x18]);
			break;
		case 4:
			func_80089794_171854(D_800E66B3[arg0 * 0x30]);
			break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80077A5C_15FB1C.s")
#endif

// AI - Spawns or despawns room objects based on visit flag
void func_80077B40_15FC00(s32 arg0, s32 arg1) {
	if (D_800E66A8[arg0].unk2E & 1) {
		func_8007774C_15F80C(arg0, arg1);
		return;
	}
	func_80077A5C_15FB1C(arg0, arg1);
}

#ifdef NON_MATCHING
// AI - Updates room visibility, object animation, and mission triggers
void func_80077B94_15FC54(void) {
	f32 sp4C;
	Unk800E66A8 *var_s0;
	Unk80070F7CObj *var_t0;
	f32 temp_f0;
	f32 var_f0;
	s16 temp_a1;
	s32 temp_a0;
	s32 temp_a0_2;
	s32 temp_s1;
	s32 temp_s4;
	s32 temp_t5;
	s32 temp_t7;
	s32 temp_t9;
	s32 temp_v0_5;
	s32 temp_v1;
	s32 temp_v1_2;
	s32 var_s5;
	u16 temp_t2;
	u16 temp_v0_6;
	u16 temp_v0_7;
	u8 temp_s3;
	u8 temp_t3;
	u8 temp_t7_2;
	u8 temp_v0;
	u8 temp_v0_2;
	u8 temp_v0_3;
	u8 temp_v0_4;
	u8 temp_v0_8;
	u8 temp_v0_9;

	temp_a0 = D_800E65A8;
	if (temp_a0 & 0x10) {
		if (D_800E6638 != 0) {
			D_800E664C -= 1;
			D_800E6634 = (D_800E6634 + 0xE38) & 0xFFFF;
			if (D_800E664C == 0) {
				temp_t5 = temp_a0 & ~0x10;
				temp_t7 = temp_t5 & ~8;
				temp_t9 = temp_t7 & ~4;
				D_800E65A8 = temp_t5;
				D_800E65A8 = temp_t7;
				D_800E65A8 = temp_t9;
				D_800E6638 = 0;
				D_800E65A8 = temp_t9 & ~0x20;
				func_8007D52C_1655EC();
			}
		} else {
			D_800E6650.x += D_800E6640.x;
			D_800E664C -= 1;
			D_800E6650.y += D_800E6640.y;
			D_800E6650.z += D_800E6640.z;
			if (D_800E664C == 0) {
				D_800E6638 = 1;
				D_800E664C = 0x1E;
				D_800E6634 = 0;
			}
		}
	}

	var_s5 = 0;
	if (D_800E668C > 0) {
		var_s0 = D_800E66A8;
		do {
			temp_s3 = var_s0->unk0;
			temp_v0 = var_s0->unk2D;
			temp_s1 = temp_v0 & 0x3F;
			if (temp_s3 == 0x1D) {
				if (func_8000726C_7E6C(temp_s1) != 0) {
					if (((s32) (D_800E6AC4 / 96.0f) == var_s0->unk2) && ((s32) (D_800E6ACC / 96.0f) == var_s0->unk6)) {
						if (var_s0->unk2C != 0) {
							temp_v0_2 = var_s0->unk2E;
							if (!(temp_v0_2 & 1)) {
								var_s0->unk2E = (u8) (temp_v0_2 | 1);
								D_800E662C = var_s5;
								func_8007A8AC_16296C(0);
							}
						}
					} else {
						var_s0->unk2E = (u8) (var_s0->unk2E & 0xFFFE);
					}
				}
			} else {
				var_f0 = 0.0f;
				if ((temp_s1 != 0) && (temp_v0 & 0x40)) {
					sp4C = 0.0f;
					var_f0 = 0.0f;
					if (func_8000726C_7E6C(temp_s1) != 0) {
						temp_v0_3 = var_s0->unk2E;
						temp_t3 = temp_v0_3 | 1;
						if (!(temp_v0_3 & 1)) {
							var_s0->unk2E = temp_t3;
							var_s0->unk2E = (u8) (temp_t3 | 2);
						}
					} else {
						temp_v0_4 = var_s0->unk2E;
						temp_t7_2 = temp_v0_4 & 0xFFFE;
						if (temp_v0_4 & 1) {
							var_s0->unk2E = temp_t7_2;
							var_s0->unk2E = (u8) (temp_t7_2 | 2);
						}
					}
				}
				temp_v0_5 = (s32) D_800E65BC;
				if (var_s0->unk2E & 2) {
					temp_v1 = ((Unk80070F7CObj *) (temp_v0_5 + (temp_s3 * 0x48)))->unk40;
					if (!(temp_v1 & 0x40000000)) {
						if (temp_v1 & 0x20000000) {
							sp4C = 0.0f;
							func_80077B40_15FC00(var_s5, temp_s3);
						} else {
							sp4C = 0.0f;
							func_800775F0_15F6B0(var_s5, temp_s3);
						}
						var_f0 = sp4C;
					}
				}
				temp_s4 = temp_s3 * 0x48;
				var_t0 = (Unk80070F7CObj *) (temp_v0_5 + temp_s4);
				if (var_t0->unk40 & 0x7E00) {
					if (var_s0->unk2E & 1) {
						temp_v0_6 = (u16) var_s0->unk10;
						if ((s32) temp_v0_6 < (s32) var_t0->unk1E) {
							var_f0 = var_t0->unk20;
							var_s0->unk10 = (u16) (temp_v0_6 + 1);
						}
						if (var_t0->unk40 & 0x20000) {
							var_s0->unk10 = 0;
						}
						if (var_t0->unk40 & 0x40000) {
							var_f0 = 0.0f;
						}
					} else {
						temp_v0_7 = (u16) var_s0->unk10;
						if ((s32) temp_v0_7 > 0) {
							var_s0->unk10 = (u16) (temp_v0_7 - 1);
							var_f0 = -var_t0->unk20;
						}
						if (var_t0->unk40 & 0x40000) {
							var_s0->unk10 = var_t0->unk1E;
						}
						if (var_t0->unk40 & 0x20000) {
							var_f0 = 0.0f;
						}
					}
					if (var_f0 != 0.0f) {
						temp_a0_2 = var_t0->unk40 & 0x7E00;
						if ((var_t0->unk40 & 0x01000000) && (D_80047970[buildingInteriorToLoadId] & (1 << var_s5))) {
							var_f0 = -var_f0;
						}
						switch (temp_a0_2) {
							case 0x200:
								var_s0->unk14 = var_s0->unk14 + var_f0;
								break;
							case 0x400:
								var_s0->unk18 = var_s0->unk18 + var_f0;
								break;
							case 0x800:
								var_s0->unk1C = var_s0->unk1C + var_f0;
								break;
							case 0x1000:
								if (!(var_t0->unk40 & 0x100)) {
									temp_v0_8 = var_s0->unk8;
									switch (temp_v0_8) {
										case 0:
											var_s0->unk20 = var_s0->unk20 + var_f0;
											break;
										case 1:
											var_s0->unk28 = var_s0->unk28 + var_f0;
											break;
										case 2:
											var_s0->unk20 = var_s0->unk20 - var_f0;
											break;
										case 3:
											var_s0->unk28 = var_s0->unk28 - var_f0;
											break;
									}
								} else {
									var_s0->unk20 = var_s0->unk20 + var_f0;
								}
								break;
							case 0x2000:
								var_s0->unk24 = var_s0->unk24 + var_f0;
								if (temp_s3 == 0x1E) {
									temp_f0 = (f32) var_s0->unk4 + var_s0->unk24;
									if ((temp_f0 > 0.0f) && (temp_f0 < 60.0f)) {
										func_80015388_15F88(0x138);
										var_t0 = &D_800E65BC[(u8) temp_s3];
									}
								}
								break;
							case 0x4000:
								if (!(var_t0->unk40 & 0x100)) {
									temp_v0_9 = var_s0->unk8;
									switch (temp_v0_9) {
										case 0:
											var_s0->unk28 = var_s0->unk28 + var_f0;
											break;
										case 1:
											var_s0->unk20 = var_s0->unk20 - var_f0;
											break;
										case 2:
											var_s0->unk28 = var_s0->unk28 - var_f0;
											break;
										case 3:
											var_s0->unk20 = var_s0->unk20 + var_f0;
											break;
									}
								} else {
									var_s0->unk28 = var_s0->unk28 + var_f0;
								}
								break;
						}
					} else {
						if (var_t0->unk40 & 0x80000) {
							var_s0->unk2E = (u8) (var_s0->unk2E ^ 1);
						}
						if ((var_t0->unk40 & 0x200000) && (var_s0->unk2E & 1) && (var_s0->unkE != -1)) {
							var_s0->unkE = -1;
						}
						func_800787E8_1608A8(temp_s3 & 0xFF, var_s5 & 0xFF);
						var_t0 = &D_800E65BC[(u8) temp_s3];
					}
				}
				temp_a1 = var_t0->unk14;
				if (temp_a1 != -1) {
					temp_v1_2 = var_t0->unk40;
					if (temp_v1_2 & 0x100000) {
						if ((var_s0->unk2D & 0x40) && (temp_s1 != 0) && !(var_t0->unk44 & 8)) {
							if (func_8000726C_7E6C(temp_s1) != 0) {
								if (var_t0->unk40 & 0x200000) {
									if ((s32) var_s0->unkC < (s32) var_t0->unk16) {
										func_80014A3C_1563C((s32) var_s0, var_t0->unk14, 0, 0, -1.0f);
										var_s0->unkC = (s16) (var_s0->unkC + 1);
									}
								} else {
									func_80014A3C_1563C((s32) var_s0, var_t0->unk14, 0, 0, -1.0f);
								}
							}
						} else if (var_s0->unk2E & 1) {
							if (!(temp_v1_2 & 0x200000)) {
								if ((currentLevel != 1) || (D_800E66A4 != 3) || (temp_s4 != 0x3F0)) {
									func_80014A3C_1563C((s32) var_s0, temp_a1, 0, 0, -1.0f);
								}
								func_800787E8_1608A8(temp_s3 & 0xFF, var_s5 & 0xFF);
							} else if ((s32) var_s0->unkC < (s32) var_t0->unk16) {
								func_80014A3C_1563C((s32) var_s0, temp_a1, 0, 0, -1.0f);
								temp_t2 = var_s0->unkC + 1;
								var_s0->unkC = (s16) temp_t2;
								if (((temp_t2 & 0xFFFF) + 1) == var_t0->unk16) {
									func_800787E8_1608A8(temp_s3 & 0xFF, var_s5 & 0xFF);
									if (!(var_t0->unk40 & 0x800000)) {
										var_s0->unkC = 0;
										var_s0->unk2E = (u8) (var_s0->unk2E & 0xFFFE);
									}
								}
							}
						} else {
							if ((currentLevel == 1) && (D_800E66A4 == 3) && (temp_s4 == 0x3F0)) {
								func_80014A3C_1563C((s32) var_s0, temp_a1, 0, 0, -1.0f);
							}
							func_800787E8_1608A8(temp_s3 & 0xFF, var_s5 & 0xFF);
						}
					} else if (var_s0->unk2E & 2) {
						func_800153D8_15FD8(temp_a1);
						func_800787E8_1608A8(temp_s3 & 0xFF, var_s5 & 0xFF);
					}
				} else {
					func_800787E8_1608A8(temp_s3 & 0xFF, var_s5 & 0xFF);
				}
				var_s0->unk2E = (u8) (var_s0->unk2E & 0xFFFD);
			}
			var_s5 += 1;
			var_s0++;
		} while (var_s5 < D_800E668C);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80077B94_15FC54.s")
#endif

// CURRENT(3740)
#ifdef NON_MATCHING
// AI - Handles level-specific interior events and missions
void func_800784B8_160578(void) {
	s32 interiorId;
	VehicleInstance *vehicle;
	u16 maxHp;
	s32 temp;

	if ((currentLevel == 2) && (func_8000726C_7E6C(0x11) != 0)) {
		interiorId = buildingInteriorToLoadId;
		if ((interiorId == 0x7E) || (interiorId == 0x81) || (interiorId == 0x89)) {
			temp = D_800E65AC & 3;
			if ((D_800E65AC < 0) && (temp != 0)) {
				temp -= 4;
			}
			if (temp == 0) {
				func_800153D8_15FD8(0xB3);
			}
		}
	}

	if (currentLevel == 3) {
		if (buildingInteriorToLoadId == 0x41) {
			temp = ((u8 *)buildingInstances)[0x503];
			temp &= 0xFFC3;
			temp |= 0x18;
			((u8 *)buildingInstances)[0x503] = temp;
		}
	} else if (currentLevel == 4) {
		interiorId = buildingInteriorToLoadId;
		if (interiorId >= 0x32) {
			if (interiorId == 0x6E) {
				if (func_8000726C_7E6C(0x37) == 0) {
					func_800072CC_7ECC(0x37);
				}
				interiorId = buildingInteriorToLoadId;
			}
		} else {
			switch (interiorId) {
				case 0x1F:
					if (func_8000726C_7E6C(0x38) != 0) {
						vehicle = D_80052B34;
						vehicle->unk1C += 2;
						vehicle = D_80052B34;
						maxHp = vehicleSpecs[vehicle->unk1A].hitPoints;
						if (maxHp < vehicle->unk1C) {
							vehicle->unk1C = maxHp;
						}
					}
					interiorId = buildingInteriorToLoadId;
					break;

				case 0x20:
					if ((func_8000726C_7E6C(2) == 0) && ((D_800E65AC % 10) == 0)) {
						vehicle = D_80052B34;
						if (vehicle->unk1C > 0) {
							vehicle->unk20 |= 0x2000;
							vehicle = D_80052B34;
							temp = vehicle->unk1C - 2;
							vehicle->unk1C = temp;
							if (temp < 0) {
								vehicle->unk1C = 0;
							}
						}
					}
					interiorId = buildingInteriorToLoadId;
					break;

				case 0x24:
				case 0x25:
				case 0x2F:
				case 0x30:
				case 0x31:
					if ((D_800E65AC % 20) == 0) {
						D_8004D1B0[1]++;
					}
					break;

				default:
					break;
			}
		}

		if (interiorId != 0x6E) {
			func_800073B8_7FB8(0x37);
		}
	}

	if (currentLevel == 5) {
		interiorId = buildingInteriorToLoadId;
		if (interiorId == 1) {
			if ((D_800E65AC % 100) == 0) {
				func_80014A3C_1563C((s32)D_80052B34, 0xA0, 0.0f, 0, 0.1f);
				interiorId = buildingInteriorToLoadId;
			}
		}

		if ((interiorId == 2) && (func_8000726C_7E6C(0x1E) == 0)) {
			func_80014A3C_1563C((s32)D_80052B34, 0x184, 0.0f, 0, 0.2f);
		}
	}

	if (func_8000726C_7E6C(0x27) != 0) {
		D_800E65A8 |= 0x100;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800784B8_160578.s")
#endif

// CURRENT(1663)
#ifdef NON_MATCHING
// AI - Handles room selection confirmation and building exit logic
void func_800787E8_1608A8(s32 arg0, s32 arg1) {
	u8 playerIndex;
	s32 type;

	playerIndex = arg1;
	if (D_800E65A8 & 0x20) {
		if (D_800E662C == playerIndex) {
			osSyncPrintf(&D_800A445C_18C51C, playerIndex);
			if (D_800E65BC[(u8) arg0].unk40 & 0x10000) {
				D_800E65A8 &= ~0x20;
				D_800E65A8 |= 0x200;
				type = (D_800E66A8[playerIndex].unk2C & 0xFC) >> 2;
				if (type != 3) {
					D_800E65EC = D_800E65E8[(type * 2) + 0xEA];
					D_800E65ED = D_800E65E8[(type * 2) + 0xE9];
				}
			} else {
				D_800E65A8 &= ~0x20;
				if (D_800E65BC[(u8) arg0].unk40 & 0x02000000) {
					osSyncPrintf(&D_800A4470_18C530, D_800EAE90);
					func_80018D7C_1997C(((D_800E66A8[playerIndex].unk2C & 0xFC) >> 2) + D_800EAE90 - 2);
					D_800E65A8 |= 0x400;
				} else {
					func_8007A8AC_16296C(1);
				}
			}
		} else if (D_800E662C == 0) {
			D_800E65A8 &= ~0x20;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800787E8_1608A8.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(145) */
// AI - Remaps button directions based on room orientation
u8 func_8007899C_160A5C(s32 arg0, s32 arg1) {
	u8 ret;

	switch (D_800E66B0[arg1 * 0x30]) {
	case 0:
		ret = arg0;
		ret &= 0xFF;
		break;
	case 1:
		if (arg0 & 4) {
			ret |= 2;
		}
		if (arg0 & 8) {
			ret = (ret | 1) & 0xFF;
		}
		if (arg0 & 1) {
			ret = (ret | 4) & 0xFF;
		}
		if (arg0 & 2) {
			ret = (ret | 8) & 0xFF;
		}
		break;
	case 2:
		if (arg0 & 4) {
			ret |= 8;
		}
		if (arg0 & 8) {
			ret = (ret | 4) & 0xFF;
		}
		if (arg0 & 1) {
			ret = (ret | 2) & 0xFF;
		}
		if (arg0 & 2) {
			ret = (ret | 1) & 0xFF;
		}
		break;
	case 3:
		if (arg0 & 4) {
			ret |= 1;
		}
		if (arg0 & 8) {
			ret = (ret | 2) & 0xFF;
		}
		if (arg0 & 1) {
			ret = (ret | 8) & 0xFF;
		}
		if (arg0 & 2) {
			ret = (ret | 4) & 0xFF;
		}
		break;
	}

	return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007899C_160A5C.s")
#endif

#ifdef NON_MATCHING
// AI - Sets room visitability flags based on level and building variant
void func_80078AD4_160B94(s32 arg0) {
	s32 shouldSet;
	s32 phase;

	shouldSet = 0;
	phase = D_800E66A4;

	switch (currentLevel) {
		case 1:
			if (phase == 5) {
				shouldSet = 1;
			}
			break;

		case 2:
			if ((phase == 0) && ((((buildingInstances[D_80052540].unk8 << 26) >> 28)) == 9)) {
				shouldSet = 1;
			}
			if ((phase == 1) && ((((buildingInstances[D_80052540].unk8 << 26) >> 28)) == 5)) {
				shouldSet = 1;
			}
			if (phase == 5) {
				shouldSet = 1;
			}
			break;

		case 3:
			if (phase == 5) {
				shouldSet = 1;
			}
			break;

		case 4:
			if ((phase == 0) && ((((buildingInstances[D_80052540].unk8 << 26) >> 28)) == 2)) {
				shouldSet = 1;
			}
			if ((phase == 1) && ((((buildingInstances[D_80052540].unk8 << 26) >> 28)) == 8)) {
				shouldSet = 1;
			}
			if (phase == 2) {
				s32 attrBits;

				attrBits = (buildingInstances[D_80052540].unk8 << 26) >> 28;
				if ((attrBits == 10) || (attrBits == 6)) {
					shouldSet = 1;
				}
			}
			if (phase == 5) {
				shouldSet = 1;
			}
			break;

		case 5:
			shouldSet = 1;
			break;
	}

	if (shouldSet != 0) {
		D_800E65BC[arg0].unk40 &= ~4;
		D_800E65BC[arg0].unk40 |= 2;
	} else {
		D_800E65BC[arg0].unk40 |= 4;
		D_800E65BC[arg0].unk40 &= ~2;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80078AD4_160B94.s")
#endif

#ifdef NON_MATCHING
// AI - Handles player room selection and interaction detection
void func_80078D68_160E28(void) {
	Unk80070F7CObj* temp_v1;
	f64 temp_f20;
	f64 temp_f22;
	s32 temp_s4;
	s32 temp_t4;
	s32 temp_v0;
	s32 temp_v0_2;
	s32 temp_v0_4;
	s32 temp_v1_2;
	s32 var_s1;
	s32 var_s3;
	s32 var_v0;
	s32 temp_s6;
	u8 temp_a1;

	var_s1 = 0;
	var_s3 = 0;
	if (D_800E668C > 0) {
		Unk800E66A8* var_s2 = &D_800E66A8[0];

		temp_f22 = 32768.0;
		temp_f20 = D_800A4B70_18CC30;
loop_2:
		temp_s6 = var_s2->unk0;
		temp_s4 = temp_s6 * 0x48;
		if ((((D_800E65BC[temp_s6].unk44 & 4) != 0) || (isButtonNewlyPressed(0, 0x8000) != 0)) && (D_800E65A8 == 1)) {
			if (temp_s6 == 0x1F) {
				func_80078AD4_160B94(temp_s6);
			}
			temp_v1 = (Unk80070F7CObj *)((u8*)D_800E65BC + temp_s4);
			temp_t4 = temp_v1->unk40 & 0x01000006;
			switch (temp_t4) {
				case 4:
					temp_v0 = func_8007A414_1624D4(var_s3, (s32)D_800E6A78.unk4C, (s32)D_800E6A78.unk54);
					var_s1 = temp_v0;
					if (temp_v0 != 0) {
						var_s1 = func_8007A370_162430(var_s2->unk8,
							(s32)((((f64)(f32)(D_800E6A78.unkE & 0xFFFF)) * temp_f20) / temp_f22));
					}
					break;

				case 2:
					temp_v0_2 = func_8007A168_162228(var_s3, var_s2->unk2, var_s2->unk6,
						(s32)D_800E6A78.unk4C, (s32)D_800E6A78.unk54);
					var_s1 = temp_v0_2;
					if (temp_v0_2 != 0) {
						var_s1 = func_8007C2D0_164390(var_s2->unk2, var_s2->unk6,
							(s16)(s32)D_800E6A78.unk4C, (s16)(s32)D_800E6A78.unk54,
							D_800E6A78.unkE & 0xFFFF, 0x5555);
					}
					break;

				case 0x1000000:
					if ((D_800E6698 != 0) && (var_s3 == (u8)D_800E66A1)) {
						temp_v1_2 = 1 << ((u8)D_800E66A0 + 0x1F);
						if ((temp_v1_2 & func_8007899C_160A5C(*((u8*)temp_v1 + 0x3C), var_s3)) != 0) {
							var_s1 = 1;
							if ((temp_v1_2 & 0xA) != 0) {
								D_80047970[buildingInteriorToLoadId] |= 1 << var_s3;
							}
						}
					}
					break;
			}
			if (var_s1 != 0) {
				temp_v0_4 = ((Unk80070F7CObj *)((u8*)D_800E65BC + temp_s4))->unk40;
				if ((((temp_v0_4 & 0x800000) != 0) && ((var_s2->unk2E & 1) != 0)) ||
					(((temp_v0_4 & 0x02000000) != 0) && ((((s32)(var_s2->unk2C & 0xFC)) >> 2) == 0))) {
					osSyncPrintf(&D_800A4488_18C548);
					func_800137E0();
					return;
				}
				temp_a1 = *((u8*)var_s2 + 0x2D) & 0x3F;
				if (func_8000726C_7E6C((s64)(s32)temp_a1) != 0) {
					D_800E662C = var_s3;
					D_800E65A8 |= 4;
					switch (currentLevel) {
						case 1:
							var_v0 = D_800E66A4;
							if (var_v0 == 4) {
								switch (temp_s6) {
									case 9:
										D_800E65A8 |= 0x8000;
										D_800E65B4 = 2;
										D_800E65A8 &= ~4;
										break;

									case 3:
										D_800E65A8 |= 0x8000;
										D_800E65B4 = 1;
										D_800E65A8 &= ~4;
										break;

									case 0xC:
										D_800E65A8 |= 0x8000;
										D_800E65B4 = 0;
										D_800E65A8 &= ~4;
										break;
								}
							}
							break;

						case 2:
							var_v0 = D_800E66A4;
							if ((var_v0 == 0) && (temp_s6 == 0x1B)) {
								D_800E65A8 |= 0x8000;
								D_800E65B4 = 3;
								D_800E65A8 &= ~4;
							}
							if ((var_v0 == 3) && (temp_s6 == 0x19)) {
								D_800E65B4 = 4;
								D_800E65A8 |= 0x8000;
								D_800E65A8 &= ~4;
							}
							if ((var_v0 == 3) && (temp_s6 == 0x15)) {
								D_800E65B4 = 5;
								D_800E65A8 |= 0x8000;
								D_800E65A8 &= ~4;
							}
							break;

						case 5:
							if (temp_s6 == 4) {
								D_800E65A8 |= 0x8000;
								D_800E65B4 = 7;
								D_800E65A8 &= ~4;
							}
							/* fallthrough */

						default:
							var_v0 = D_800E66A4;
							break;
					}
					func_8007D548_165608(var_s3, var_s2->unk2, var_s2->unk6, temp_s6, var_v0);
					return;
				}
				if ((D_800E65BC[temp_s6].unk44 & 4) == 0) {
					D_800E662C = var_s3;
					D_800E65A8 |= 4;
					func_8007D548_165608(var_s3, var_s2->unk2, var_s2->unk6, temp_s6, D_800E66A4);
				}
			} else {
				goto block_54;
			}
		} else {
block_54:
			func_800137D8();
			var_s3 += 1;
			var_s2 = (Unk800E66A8 *)((u8*)var_s2 + 0x30);
			if (var_s3 < D_800E668C) {
				goto loop_2;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80078D68_160E28.s")
#endif

// AI - Returns the current building exit target ID
s32 func_80079304_1613C4(void) {
	return D_800E65B4;
}

// AI - Clears the building exit flag
void func_80079310_1613D0(void) {
	D_800E65A8 &= ~0x8000;
}

#ifdef NON_MATCHING
/* CURRENT(5) */
// AI - Debug room selection tool (controller 2 input)
void func_80079330_1613F0(void) {
	func_8000345C_405C(0x20);
	if (currentControllerStates[CONTROLLER_TWO].button & 0x20) {
		D_800E65F8++;
		if (D_800E65F8 != D_800E668C) {
		} else {
			D_800E65F8 = 0;
		}
		osSyncPrintf(&D_800A4494_18C554, D_800E65F8);
	}

	func_8000345C_405C(0x10);
	if (currentControllerStates[CONTROLLER_TWO].button & 0x10) {
		D_800E65F8--;
		if (D_800E65F8 < 0) {
			D_800E65F8 = D_800E668C - 1;
		}
		osSyncPrintf(&D_800A44AC_18C56C, D_800E65F8);
	}

	D_800E65F4 = 0;
	func_8000345C_405C(0x8000);
	if (currentControllerStates[CONTROLLER_TWO].button & 0x8000) {
		D_800E65F0++;
		D_800E65F4 = 1;
	}

	switch (D_800E65F0 - 1) {
		case 0:
			func_80079C4C_161D0C();
			return;

		case 1:
			func_8007978C_16184C();
			return;

		case 2:
			func_80079954_161A14();
			return;

		case 3:
			func_80079E50_161F10();
			return;

		case 4:
			func_80079658_161718();
			return;

		case 5:
			func_800794BC_16157C();
			return;
	}

	D_800E65F0 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80079330_1613F0.s")
#endif

// AI - Debug tool: adjusts room object offset values
void func_800794BC_16157C(void) {
	s32 temp_v0;
	u8 temp_s1;
	s32 temp_v1;
	Unk80070464Obj *temp_v0_2;

	if (D_800E65F4 != 0) {
		osSyncPrintf(&D_800A44C4_18C584);
	}

	temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	temp_s1 = D_800E66A8[D_800E65F8].unk0;

	if (temp_v0 & 0x200) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk80070464Obj *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk8 += 1;
		temp_v0_2 = (Unk80070464Obj *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A44F4_18C5B4, temp_v0_2->unk8, temp_v0_2->unkA);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	}

	if (temp_v0 & 0x100) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk80070464Obj *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk8 -= 1;
		temp_v0_2 = (Unk80070464Obj *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A4514_18C5D4, temp_v0_2->unk8, temp_v0_2->unkA);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	}

	if (temp_v0 & 0x800) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk80070464Obj *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unkA += 1;
		temp_v0_2 = (Unk80070464Obj *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A4534_18C5F4, temp_v0_2->unk8, temp_v0_2->unkA);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	}

	if (temp_v0 & 0x400) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk80070464Obj *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unkA -= 1;
		temp_v0_2 = (Unk80070464Obj *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A4554_18C614, temp_v0_2->unk8, temp_v0_2->unkA);
	}
}

// AI - Debug tool: adjusts interior spawn/exit coordinates
void func_80079658_161718(void) {
	s32 temp_v0;

	if (D_800E65F4 != 0) {
		osSyncPrintf(&D_800A4574_18C634);
	}

	temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	if (temp_v0 & 0x200) {
		D_800E65C8->unk4 -= 1;
		osSyncPrintf(&D_800A45A4_18C664, D_800E65C8->unk4, D_800E65C8->unk8);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	}

	if (temp_v0 & 0x100) {
		D_800E65C8->unk4 += 1;
		osSyncPrintf(&D_800A45C4_18C684, D_800E65C8->unk4, D_800E65C8->unk8);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	}

	if (temp_v0 & 0x800) {
		D_800E65C8->unk8 -= 1;
		osSyncPrintf(&D_800A45E4_18C6A4, D_800E65C8->unk4, D_800E65C8->unk8);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	}

	if (temp_v0 & 0x400) {
		D_800E65C8->unk8 += 1;
		osSyncPrintf(&D_800A4604_18C6C4, D_800E65C8->unk4, D_800E65C8->unk8);
	}
}

// AI - Debug tool: adjusts room object dimensions
void func_8007978C_16184C(void) {
	s32 temp_v0;
	u8 temp_s1;
	s32 temp_v1;
	Unk800E65BC *temp_v0_2;

	if (D_800E65F4 != 0) {
		osSyncPrintf(&D_800A4624_18C6E4);
	}

	temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	temp_s1 = D_800E66A8[D_800E65F8].unk0;

	if (temp_v0 & 0x200) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk18 -= 1;
		temp_v0_2 = (Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A464C_18C70C, D_800E65F8, temp_v0_2->unk18, temp_v0_2->unk1A);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	}

	if (temp_v0 & 0x100) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk18 += 1;
		temp_v0_2 = (Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A4668_18C728, D_800E65F8, temp_v0_2->unk18, temp_v0_2->unk1A);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	}

	if (temp_v0 & 0x800) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk1A += 1;
		temp_v0_2 = (Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A4684_18C744, D_800E65F8, temp_v0_2->unk18, temp_v0_2->unk1A);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	}

	if (temp_v0 & 0x400) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk1A -= 1;
		temp_v0_2 = (Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A46A0_18C760, D_800E65F8, temp_v0_2->unk18, temp_v0_2->unk1A);
	}
}

// AI - Debug tool: adjusts door offset values
void func_80079954_161A14(void) {
	s32 temp_v0;
	u8 temp_s1;
	s32 temp_v1;
	Unk80076678Obj *temp_v0_2;

	if (D_800E65F4 != 0) {
		osSyncPrintf(&D_800A46BC_18C77C);
	}

	temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	temp_s1 = D_800E66A8[D_800E65F8].unk0;

	if (temp_v0 & 0x200) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk80076678Obj *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk3A -= 1;
		temp_v0_2 = (Unk80076678Obj *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A46E4_18C7A4, D_800E65F8, temp_v0_2->unk3A, temp_v0_2->unk3B);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	}

	if (temp_v0 & 0x100) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk80076678Obj *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk3A += 1;
		temp_v0_2 = (Unk80076678Obj *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A4704_18C7C4, D_800E65F8, temp_v0_2->unk3A, temp_v0_2->unk3B);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	}

	if (temp_v0 & 0x800) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk80076678Obj *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk3B += 1;
		temp_v0_2 = (Unk80076678Obj *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A4724_18C7E4, D_800E65F8, temp_v0_2->unk3A, temp_v0_2->unk3B);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	}

	if (temp_v0 & 0x400) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk80076678Obj *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk3B -= 1;
		temp_v0_2 = (Unk80076678Obj *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A4744_18C804, D_800E65F8, temp_v0_2->unk3A, temp_v0_2->unk3B);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	}

	if (temp_v0 & 2) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk80076678Obj *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk36 -= 1;
		temp_v0_2 = (Unk80076678Obj *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A4764_18C824, D_800E65F8, temp_v0_2->unk36, temp_v0_2->unk38);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	}

	if (temp_v0 & 1) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk80076678Obj *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk36 += 1;
		temp_v0_2 = (Unk80076678Obj *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A4784_18C844, D_800E65F8, temp_v0_2->unk36, temp_v0_2->unk38);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	}

	if (temp_v0 & 8) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk80076678Obj *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk38 += 1;
		temp_v0_2 = (Unk80076678Obj *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A47A4_18C864, D_800E65F8, temp_v0_2->unk36, temp_v0_2->unk38);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
	}

	if (temp_v0 & 4) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk80076678Obj *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk38 -= 1;
		temp_v0_2 = (Unk80076678Obj *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A47C4_18C884, D_800E65F8, temp_v0_2->unk36, temp_v0_2->unk38);
	}
}

// CURRENT(230)
#ifdef NON_MATCHING
// AI - Debug tool: adjusts door selection highlight
void func_80079C4C_161D0C(void) {
	u8 temp_s1;
	s32 temp_v1;

	if (D_800E65F4 != 0) {
		osSyncPrintf(&D_800A47E4_18C8A4);
	}

	temp_s1 = D_800E66A8[D_800E65F8].unk0;
	temp_v1 = temp_s1 * 0x48;

	if (((Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1))->unk40 & 4) {
		s32 temp_v0;
		Unk800768B8Obj *temp_v0_2;
		Unk800768B8Obj *temp_v0_3;

		func_8000345C_405C(0x1000);
		temp_v0 = currentControllerStates[CONTROLLER_TWO].button;

		if (temp_v0 & 0x1000) {
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			temp_v0_2->unk34 = ((Unk800E65BC *) temp_v0_2)->unk18;
			temp_v0_3 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			temp_v0_3->unk32 = 0;
			osSyncPrintf(&D_800A4800_18C8C0, D_800E65F8);
			temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
		}

		if (temp_v0 & 0x200) {
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			temp_v0_2->unk34 -= 1;
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			osSyncPrintf(&D_800A4814_18C8D4, D_800E65F8, temp_v0_2->unk32, temp_v0_2->unk34);
			temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
		}

		if (temp_v0 & 0x100) {
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			temp_v0_2->unk34 += 1;
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			osSyncPrintf(&D_800A4830_18C8F0, D_800E65F8, temp_v0_2->unk32, temp_v0_2->unk34);
			temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
		}

		if (temp_v0 & 0x800) {
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			temp_v0_2->unk32 += 1;
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			osSyncPrintf(&D_800A484C_18C90C, D_800E65F8, temp_v0_2->unk32, temp_v0_2->unk34);
			temp_v0 = currentControllerStates[CONTROLLER_TWO].button;
		}

		if (temp_v0 & 0x400) {
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			temp_v0_2->unk32 -= 1;
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			osSyncPrintf(&D_800A4868_18C928, D_800E65F8, temp_v0_2->unk32, temp_v0_2->unk34);
		}
	}
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80079C4C_161D0C.s")
#endif

// CURRENT(758)
#ifdef NON_MATCHING
// AI - Debug tool: adjusts room visit state values
void func_80079E50_161F10(void) {
	s32 var_s2;
	s32 temp_v1;
	s32 temp_s0;
	Unk800E66A8 *temp_v0;

	var_s2 = 0;
	if (D_800E65F4 != 0) {
		osSyncPrintf(&D_800A4884_18C944);
	}

	temp_v0 = &D_800E66A8[D_800E65F8];
	if (temp_v0->unk2E & 1) {
		temp_v1 = currentControllerStates[CONTROLLER_TWO].button;
		temp_s0 = temp_v0->unk0;

		if (temp_v1 & 8) {
			var_s2 = 1;
			D_800E65BC[temp_s0].unk10 += 1;
			osSyncPrintf(&D_800A48AC_18C96C, D_800E65F8, temp_s0, D_800E65BC[temp_s0].unk10);
			temp_v1 = currentControllerStates[CONTROLLER_TWO].button;
		}

		if (temp_v1 & 4) {
			var_s2 = 1;
			D_800E65BC[temp_s0].unk10 -= 1;
			osSyncPrintf(&D_800A48C4_18C984, D_800E65F8, temp_s0, D_800E65BC[temp_s0].unk10);
			temp_v1 = currentControllerStates[CONTROLLER_TWO].button;
		}

		if (temp_v1 & 0x200) {
			var_s2 = 1;
			D_800E65BC[temp_s0].unkE += 1;
			osSyncPrintf(&D_800A48DC_18C99C, D_800E65F8, temp_s0, D_800E65BC[temp_s0].unkE);
			temp_v1 = currentControllerStates[CONTROLLER_TWO].button;
		}

		if (temp_v1 & 0x100) {
			var_s2 = 1;
			D_800E65BC[temp_s0].unkE -= 1;
			osSyncPrintf(&D_800A48F4_18C9B4, D_800E65F8, temp_s0, D_800E65BC[temp_s0].unkE);
			temp_v1 = currentControllerStates[CONTROLLER_TWO].button;
		}

		if (temp_v1 & 0x800) {
			var_s2 = 1;
			D_800E65BC[temp_s0].unk12 += 1;
			osSyncPrintf(&D_800A490C_18C9CC, D_800E65F8, temp_s0, D_800E65BC[temp_s0].unk12);
			temp_v1 = currentControllerStates[CONTROLLER_TWO].button;
		}

		if (temp_v1 & 0x400) {
			var_s2 = 1;
			D_800E65BC[temp_s0].unk12 -= 1;
			osSyncPrintf(&D_800A4924_18C9E4, D_800E65F8, temp_s0, D_800E65BC[temp_s0].unk12);
		}

		if ((var_s2 != 0) && (D_800E65BC[temp_s0].unk40 & 0x20000000)) {
			temp_v0 = &D_800E66A8[D_800E65F8];
			temp_v0->unk2E &= 0xFFFE;
			func_80077B40_15FC00(D_800E65F8, temp_s0);

			temp_v0 = &D_800E66A8[D_800E65F8];
			temp_v0->unk2E |= 1;
			func_80077B40_15FC00(D_800E65F8, temp_s0);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80079E50_161F10.s")
#endif

// CURRENT(45040)
#ifdef NON_MATCHING
// AI - Checks if player is near a room interaction zone
s32 func_8007A168_162228(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
	f32 sp3C;
	f32 sp38;
	s32 sp30;
	Unk800E66A8 *sp2C;
	s32 sp28;
	f32 temp_f0;
	f32 temp_f16;
	f32 temp_f18;
	f32 temp_f2;
	f32 temp_f6;
	s32 temp_t1;
	s32 var_v0;
	Unk800E66A8 *temp_t0;

	temp_t0 = &D_800E66A8[arg0];
	temp_t1 = ((temp_t0->unk0 << 3) + temp_t0->unk0) << 3;
	var_v0 = 0xF;
	if (((Unk800E65BC *) ((u8 *) D_800E65BC + temp_t1))->unk40 & 0x10) {
		var_v0 = 0x14;
	}
	sp30 = var_v0;
	sp2C = temp_t0;
	sp28 = temp_t1;

	func_800774E0_15F5A0(arg0, &sp3C, &sp38);

	temp_f16 = sp3C / 2.0f;
	temp_f0 = (f32) sp30;
	temp_f2 = (f32) arg1;
	temp_f18 = (f32) arg2;
	temp_f6 = sp38 / 2.0f;

	if ((func_8007C3C0_164480((f32) arg3,
							 (f32) arg4,
							 temp_f2 - (temp_f16 + temp_f0 + 1.0f + 5.0f),
							 temp_f2 + temp_f16 + temp_f0 + 1.0f + 5.0f,
							 temp_f18 - (temp_f6 + temp_f0 + 1.0f + 5.0f),
							 temp_f18 + temp_f6 + temp_f0 + 1.0f + 5.0f) != 0) &&
		(func_8007C2D0_164390((s16) arg4,
							  (s16) arg3,
							  (s16) arg2,
							  (s16) arg1,
							  sp2C->unk8 << 0xE,
							  (s32) (s16) (s32) ((f64) ((f32) ((Unk8007A168Obj *) ((u8 *) D_800E65BC + sp28))->unk24 *
															  32768.0f) /
										 D_800A4B90_18CC50) != 0))) {
		return 1;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A168_162228.s")
#endif

#ifdef NON_MATCHING
// AI - Checks if player facing direction matches room threshold
s32 func_8007A370_162430(s32 arg0, s32 arg1) {
	if (arg0 == 0) {
		if (arg1 < 0xD3) { return 0; }
		return arg1 < 0x14A;
	}
	if (arg0 == 1) {
		if (arg1 < 0x79) { return 0; }
		return arg1 < 0xF0;
	}
	if (arg0 == 2) {
		if (arg1 < 0x1F) { return 0; }
		return arg1 < 0x96;
	}
	if (arg0 == 3) {
		if (arg1 >= 0x12D) { return 1; }
		return arg1 < 0x3C;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A370_162430.s")
#endif

#ifdef NON_MATCHING
// AI - Checks if player position is within room hotspot bounds
s32 func_8007A414_1624D4(s32 arg0, s32 arg1, s32 arg2) {
	Unk800E66A8 *entry;
	Unk800768B8Obj *obj;
	s32 centerX;
	s32 centerY;
	s32 width;
	s32 height;
	s32 half;

	entry = &D_800E66A8[arg0];
	obj = &D_800E65BC[entry->unk0];

	switch (entry->unk8) {
		case 0:
			width = obj->unk34;
			height = 0xF;
			centerX = entry->unk2 + obj->unk32;
			half = obj->unk1A;
			if (half < 0) {
				half = (half + 1) >> 1;
			} else {
				half >>= 1;
			}
			centerY = entry->unk6 + half + 0xF;
			break;

		case 1:
			width = 0xF;
			height = obj->unk34;
			centerY = entry->unk6 - obj->unk32;
			half = obj->unk1A;
			if (half < 0) {
				half = (half + 1) >> 1;
			} else {
				half >>= 1;
			}
			centerX = entry->unk2 + half + 0xF;
			break;

		case 2:
			width = obj->unk34;
			height = 0xF;
			centerX = entry->unk2 - obj->unk32;
			half = obj->unk1A;
			if (half < 0) {
				half = (half + 1) >> 1;
			} else {
				half >>= 1;
			}
			centerY = entry->unk6 - half - 0xF;
			break;

		case 3:
			width = 0xF;
			height = obj->unk34;
			centerY = entry->unk6 + obj->unk32;
			half = obj->unk1A;
			if (half < 0) {
				half = (half + 1) >> 1;
			} else {
				half >>= 1;
			}
			centerX = entry->unk2 - half - 0xF;
			break;

		default:
			osSyncPrintf(&D_800A493C_18C9FC);
			break;
	}

	if (width < 0) {
		width = (width + 1) >> 1;
	} else {
		width >>= 1;
	}

	if (height < 0) {
		height = (height + 1) >> 1;
	} else {
		height >>= 1;
	}

	if (func_8007C3C0_164480((f32) arg1,
							 (f32) arg2,
							 (f32) (centerX - width),
							 (f32) (centerX + width),
							 (f32) (centerY - height),
							 (f32) (centerY + height)) != 0) {
		return 1;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A414_1624D4.s")
#endif

// AI - Clears the room selection active flag
void func_8007A618_1626D8(void) {
	D_800E65A8 &= ~4;
}

#ifdef NON_MATCHING
// AI - Checks if a specific event building has been visited
s32 func_8007A634_1626F4(s32 arg0) {
	s16 var_v0;
	s32 three;

	three = 3;
	if (arg0 == 0x14) {
		var_v0 = 0;
		do {
			if ((buildingInteriorToLoadId == D_8009CE14[currentLevel * 3 + var_v0 - 3]) &&
				(D_80048026 & (1 << (currentLevel * three + var_v0 + 0x1D)))) {
				return 1;
			}
			var_v0++;
		} while (var_v0 < 3);
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A634_1626F4.s")
#endif

#ifdef NON_MATCHING
// AI - Checks if a second event building has been visited
s32 func_8007A6DC_16279C(s32 arg0) {
	s16 var_v0;
	s32 three;

	three = 3;
	if (arg0 == 0x13) {
		var_v0 = 0;
		do {
			if ((buildingInteriorToLoadId == D_8009CE34[currentLevel * 3 + var_v0 - 3]) &&
				(D_80048028 & (1 << (currentLevel * three + var_v0 + 0x1D)))) {
				return 1;
			}
			var_v0++;
		} while (var_v0 < 3);
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A6DC_16279C.s")
#endif

#ifdef NON_MATCHING
// AI - Marks an event building as visited
void func_8007A784_162844(s32 arg0) {
	s16 var_v0;

	if (arg0 == 0x14) {
		var_v0 = 0;
		do {
			if (buildingInteriorToLoadId == D_8009CE14[currentLevel * 3 + var_v0 - 3]) {
				D_80048026 |= 1 << (currentLevel + currentLevel + currentLevel + var_v0 + 0x1D);
				return;
			}
			var_v0++;
		} while (var_v0 < 3);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A784_162844.s")
#endif

#ifdef NON_MATCHING
// AI - Marks a second event building as visited
void func_8007A818_1628D8(s32 arg0) {
	s16 var_v0;

	if (arg0 == 0x13) {
		var_v0 = 0;
		do {
			if (buildingInteriorToLoadId == D_8009CE34[currentLevel * 3 + var_v0 - 3]) {
				D_80048028 |= 1 << (currentLevel + currentLevel + currentLevel + var_v0 + 0x1D);
				return;
			}
			var_v0++;
		} while (var_v0 < 3);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A818_1628D8.s")
#endif

#ifdef NON_MATCHING
// AI - Handles room interaction events and mission triggers
void func_8007A8AC_16296C(s32 arg0) {
	Unk800E66A8* entry;
	Unk80070F7CObj* room;
	Unk8008DED0Entry* dlEntry;
	s16* interiorFlagsPtr;
	s32 changed;
	s32 eventId;
	s32 level;
	u8 type;

	entry = &D_800E66A8[D_800E662C];
	changed = 0;
	room = &D_800E65BC[entry->unk0];

	if (room->unk40 & 8) {
		if (entry->unk2E & 1) {
			if (room->unk40 & 0x80) {
				D_800E6614++;
			} else {
				D_800E65FC++;
			}

			if (room->unk40 & 0x40) {
				D_800E6604++;
			}
		} else {
			if (room->unk40 & 0x80) {
				D_800E6614--;
			} else {
				D_800E65FC--;
			}

			if (room->unk40 & 0x40) {
				D_800E6604--;
				if (D_800E6604 == 0) {
					D_800E6608 = 0;
				}
			}
		}

		if (D_800E6628 == 1) {
			func_80071304_1593C4();
			entry = &D_800E66A8[D_800E662C];
		}
	}

	type = entry->unk2C & 3;
	if (type == 3) {
		arg0 = func_8007B2F0_1633B0(D_800E662C);
	} else if (type == 2) {
		if (entry->unk2E & 1) {
			eventId = (entry->unk2C & 0xFC) >> 2;
			interiorFlagsPtr = &D_80047970[buildingInteriorToLoadId];
			if (!(*interiorFlagsPtr & (1 << D_800E662C))) {
				if ((func_8007A634_1626F4(eventId) == 0) && (func_8007A6DC_16279C(eventId) == 0)) {
					osSyncPrintf(D_800A4958_18CA18, eventId, D_800E662C);
					osSyncPrintf(D_800A4978_18CA38, D_80048026);
					osSyncPrintf(D_800A498C_18CA4C, buildingInteriorToLoadId);
					func_8007A784_162844(eventId);
					func_8007A818_1628D8(eventId);

					dlEntry = &D_8008DED0_175F90[eventId];
					if ((currentLevel != 2) || (dlEntry->unk0 != (Gfx*)0x0F019540)) {
						D_800E65A8 |= 0x10;
						func_8007B1E0_1632A0(D_800E662C);
					}

					if (dlEntry->unk4 == 1) {
						interiorFlagsPtr = &D_80047970[buildingInteriorToLoadId];
						*interiorFlagsPtr |= (1 << D_800E662C);
					}

					changed = 1;
					if (eventId == 1) {
						D_80052B34->unk1C += vehicleSpecs[D_80052B34->unk1A].unk3A / 4;
						if ((u16)vehicleSpecs[D_80052B34->unk1A].unk3A < D_80052B34->unk1C) {
							D_80052B34->unk1C = vehicleSpecs[D_80052B34->unk1A].unk3A;
						}
					} else if (eventId == 0x10) {
						D_80052B34->unk1C = vehicleSpecs[D_80052B34->unk1A].unk3A;
						if ((u16)vehicleSpecs[D_80052B34->unk1A].unk3A < D_80052B34->unk1C) {
							D_80052B34->unk1C = vehicleSpecs[D_80052B34->unk1A].unk3A;
						}
					} else {
						func_80008C44_9844(eventId);
						osSyncPrintf(D_800A49A0_18CA60, eventId);
					}

					func_8008DC44_175D04(eventId);
				}
			}
		}
	} else if (type == 1) {
		eventId = (entry->unk2C & 0xFC) >> 2;
		if (entry->unk2E & 1) {
			interiorFlagsPtr = &D_80047970[buildingInteriorToLoadId];
			*interiorFlagsPtr |= (1 << D_800E662C);

			if (func_8000726C_7E6C((u64)(s64)eventId) == 0) {
				func_800072CC_7ECC((u64)(s64)eventId);
				if (eventId < 0xB) {
					level = currentLevel;
					if (D_8008DFA0_176060[(level * 0x2C) + eventId] != NULL) {
						changed = 1;
						D_800E65A8 |= 0x10;
						func_8007B1E0_1632A0(D_800E662C);
					}

					if (!((level == 1) && (eventId == 9))) {
						func_8008DCF4_175DB4(eventId);
					}
				} else if (func_80008478_9078() != 0) {
					D_800E65A8 |= 0x100;
					D_800E65B8 = 1;
				}
			}
		}
	}

	if (arg0 != 0) {
		if (changed != 0) {
			func_800153D8_15FD8(0xC5);
		} else {
			func_800137E0();
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A8AC_16296C.s")
#endif

// CURRENT(7458)
#ifdef NON_MATCHING
// AI - Handles building exit/transition logic
void func_8007AE40_162F00(void) {
	s32 roomId;
	s16 x;
	s16 y;
	s16 z;
	u8 flags;

	osSyncPrintf(D_800A49C4_18CA84);
	if (D_800E65A8 & 0x400) {
		D_800E65A8 &= ~0x400;
		return;
	}

	if (func_80008478_9078() != 0) {
		osSyncPrintf(D_800A49D4_18CA94);
		D_800E65A8 |= 0x100;
		D_800E65B8 = 1;
	}

	roomId = D_800E66A8[D_800E662C].unk0;
	if (func_8000726C_7E6C(D_800E66A8[D_800E662C].unk2D & 0x3F) != 0) {
		if (!(D_800E65A8 & 0x10000)) {
			if ((currentLevel == 5) && (roomId == 0x1F) && (D_800E6630 == 1)) {
				D_800E65B4 = 6;
				D_800E65A8 |= 0x8000;
				D_800E65A8 |= 0x10000;
				D_800E65A8 &= ~4;
			}
		} else {
			x = D_800E66A8[D_800E662C].unk2 - 0x60;
			z = D_800E66A8[D_800E662C].unk6 - 0x60;
			y = (s16) ((s32) (D_800E66A8[D_800E662C].unk24 + (f32) D_800E66A8[D_800E662C].unk4) + 0x3C);

			func_80089648_171708(x + 0x14, y, z, 0xA, 0, 0, 2);
			func_80089648_171708(x - 0x14, y, z, -0xA, 0, 0, 2);
			D_800E65A8 &= 0xFFFEFFFF;
		}

		if (D_800E65BC[roomId].unk40 & 0x8000) {
			flags = D_800E66A8[D_800E662C].unk2E;
			if (!(flags & 1)) {
				flags |= 1;
				D_800E66A8[D_800E662C].unk2E = flags;
			}
			D_800E66A8[D_800E662C].unk2E = flags | 2;
		} else {
			flags = D_800E66A8[D_800E662C].unk2E ^ 1;
			D_800E66A8[D_800E662C].unk2E = flags;
			D_800E66A8[D_800E662C].unk2E = flags | 2;
		}

		D_800E65A8 |= 0x20;
	} else if (roomId != 0x1F) {
		func_80014A3C_1563C(0, 0xD1, 0, 0, D_800A4B98_18CC58);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007AE40_162F00.s")
#endif

// AI - Handles room exit or triggers building exit logic
void func_8007B124_1631E4(s32 arg0) {
	if (D_800E66A8[D_800E662C].unk0 == 0x1F && !(D_800E65A8 & 0x10000)) {
		D_800E65A8 |= 8;
		D_800E65D8 = 1;
		func_80080168_168228(D_800E66A8[arg0].unk2, D_800E66A8[arg0].unk6, D_800E66A8[arg0].unk8);
		func_80082B04_16ABC4();
		func_80018D7C_1997C((u16)func_8000851C_911C(D_800E6632));
		return;
	}
	func_8007AE40_162F00();
}

#ifdef NON_MATCHING
/* CURRENT(3195) */
// AI - Initializes camera pan to selected room
void func_8007B1E0_1632A0(s32 arg0) {
	Unk800E66A8* entry;
	s16 temp_a1;
	s16 temp_a2;
	s16 temp_v1;

	entry = &D_800E66A8[arg0];
	temp_a1 = entry->unk4;
	temp_v1 = entry->unk2;
	temp_a2 = entry->unk6;

	D_800E6650.y = (f32)temp_a1;
	D_800E6650.x = (f32)(temp_v1 - 0x60);
	D_800E6650.z = (f32)(temp_a2 - 0x60);

	D_800E6640.y = (f32)((s32)(0x4B - temp_a1) / 7);
	D_800E6640.x = (D_800E6A78.unk4C - (f32)temp_v1) / 7.0f;
	D_800E6640.z = (D_800E6A78.unk54 - (f32)temp_a2) / 7.0f;

	D_800E664C = 7;
	D_800E664E = entry->unk2C;
	D_800E6634 = 0;
	D_800E6638 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007B1E0_1632A0.s")
#endif

// CURRENT(626)
#ifdef NON_MATCHING
// AI - Handles mission-related room events
s32 func_8007B2F0_1633B0(s32 arg0) {
	s32 roomId;
	s16 *interiorFlagsPtr;
	s32 ret;
	s16 interiorFlags;

	ret = 1;
	roomId = ((D_800E66A8[arg0].unk2C & 0x1C) >> 2) + 0x38;

	switch (((s32)(D_800E66A8[arg0].unk2C & 0xE0)) >> 5) {
		case 0:
			if (func_8000726C_7E6C(roomId) != 0) {
				func_800073B8_7FB8(roomId);
			} else {
				func_800072CC_7ECC(roomId);
			}
			interiorFlagsPtr = &D_80047970[buildingInteriorToLoadId];
			interiorFlags = *interiorFlagsPtr;
			break;

		case 1:
			func_800072CC_7ECC(roomId);
			ret = func_8007B51C_1635DC(roomId);
			interiorFlagsPtr = &D_80047970[buildingInteriorToLoadId];
			interiorFlags = *interiorFlagsPtr;
			break;

		case 2:
			func_800073B8_7FB8(roomId);
			interiorFlagsPtr = &D_80047970[buildingInteriorToLoadId];
			interiorFlags = *interiorFlagsPtr;
			break;

		case 3:
			interiorFlagsPtr = &D_80047970[buildingInteriorToLoadId];
			interiorFlags = *interiorFlagsPtr;
			if (!(interiorFlags & (1 << D_800E662C))) {
				func_800072CC_7ECC(roomId);
				interiorFlagsPtr = &D_80047970[buildingInteriorToLoadId];
				interiorFlags = *interiorFlagsPtr;
			}
			break;

		case 4:
			interiorFlagsPtr = &D_80047970[buildingInteriorToLoadId];
			interiorFlags = *interiorFlagsPtr;
			if (!(interiorFlags & (1 << D_800E662C))) {
				func_800073B8_7FB8(roomId);
				interiorFlagsPtr = &D_80047970[buildingInteriorToLoadId];
				interiorFlags = *interiorFlagsPtr;
			}
			break;

		default:
			osSyncPrintf(D_800A49EC_18CAAC);
			interiorFlagsPtr = &D_80047970[buildingInteriorToLoadId];
			interiorFlags = *interiorFlagsPtr;
			break;
	}

	*interiorFlagsPtr = interiorFlags | (1 << arg0);
	return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007B2F0_1633B0.s")
#endif

// AI - Handles special mission logic for Level 4 building 0x20
s32 func_8007B51C_1635DC(s32 arg0) {
	s32 idx;

	if ((currentLevel == 4) && (buildingInteriorToLoadId == 0x20) && (arg0 >= 0x38) && (arg0 < 0x3C)) {
		if ((D_800E65B0 != 0) && (func_8000726C_7E6C(2) == 0)) {
			for (idx = arg0; idx >= 0x38; idx--) {
				if (func_8000726C_7E6C((u64)idx) == 0) {
					D_800E65B0 = 0;
					break;
				}
			}

			if ((D_800E65B0 != 0) && (arg0 == 0x3B)) {
				func_800072CC_7ECC(2);
				func_800073B8_7FB8(1);
				D_800E6628 &= ~8;
				func_80086F24_16EFE4(D_8008DE78_175F38.unk2);
				func_80086F24_16EFE4(D_8008DE78_175F38.unk6);
				func_80086F24_16EFE4(D_8008DE78_175F38.unkA);
				func_80086F24_16EFE4(D_8008DE78_175F38.unkE);
			}
		}
		return 0;
	}

	return 1;
}

#ifdef NON_MATCHING
// AI - Detects collision with walls and room objects
void func_8007B65C_16371C(Vec3f *arg0, Vec3f *arg1, f32 arg2, Unk8007CAA8_6A40 *arg3) {
	s32 spA4;
	s32 spA0;
	f32 sp8C;
	f32 sp88;
	s32 sp80;
	s32 sp7C;
	s32 sp68;
	Unk800E66A8 *var_s0_2;
	f32 var_f0;
	f32 var_f16, var_f18, var_f12, var_f14;
	s32 var_s1_2, var_s3;
	s32 var_a1, var_a2;
	s32 var_s0, var_s1;
	s32 var_s5;
	s32 temp_v0;
	s32 ret;
	u8 objType;

	arg3->unk18 = 0;
	arg3->unk1C = 0;

	var_f16 = arg0->x - arg2;
	var_f18 = arg0->x + arg2;
	if (arg1->x < 0.0f) {
		var_f16 += arg1->x;
	} else {
		var_f18 += arg1->x;
	}

	var_f12 = arg0->z - arg2;
	var_f14 = arg0->z + arg2;
	if (arg1->z < 0.0f) {
		var_f12 += arg1->z;
	} else {
		var_f14 += arg1->z;
	}

	var_a1 = (s32)var_f16 / 96;
	var_a2 = (s32)var_f18 / 96;
	spA4 = (s32)var_f12 / 96;
	spA0 = (s32)var_f14 / 96;

	if (var_a1 < 0) {
		var_a1 = 0;
	}
	temp_v0 = D_800E6460 + 2;
	if (var_a2 >= temp_v0) {
		var_a2 = temp_v0;
	}
	if (spA4 < 0) {
		spA4 = 0;
	}
	temp_v0 = D_800E6464 + 2;
	if (spA0 >= temp_v0) {
		spA0 = temp_v0;
	}

	arg3->unkE = 0;
	arg3->unk10 = arg1->x * arg1->x + arg1->z * arg1->z;

	if (var_a2 >= var_a1) {
		sp68 = var_a2 + 1;
		var_s1 = var_a1;
		do {
			var_s0 = spA4;
			if (spA0 >= var_s0) {
				s32 upper_z = spA0 + 1;
				do {
					if (D_800E6468[var_s0 * (D_800E6460 + 2) + var_s1] != 0xFF) {
						ret = func_8007BEC8_163F88(arg0, arg1, arg2, 96, 96, var_s1 * 96, var_s0 * 96, (Unk8007C1DC *)arg3);
						if (ret != 0) {
							D_800E6698 = 0;
							D_800E669C = 1;
							arg3->unk18 = 0;
							arg3->unk1C = 1;
							arg3->unkE = ret;
							arg3->unkC = (s8)var_s1;
							arg3->unkD = (s8)var_s0;
							D_800E66A0 = ret;
						}
					}
					var_s0++;
				} while (var_s0 != upper_z);
			}
			var_s1++;
		} while (var_s1 != sp68);
	}

	var_s5 = 0;
	if (D_800E668C > 0) {
		var_s0_2 = D_800E66A8;
		do {
			objType = var_s0_2->unk0;
			var_f0 = (f32)var_s0_2->unk4;
			if (objType == 0x1E) {
				var_f0 += var_s0_2->unk24;
			}
			if (var_f0 < 60.0f && (D_800E65BC[objType].unk40 & 0x20)) {
				func_800774E0_15F5A0(var_s5, &sp8C, &sp88);
				var_s1_2 = var_s0_2->unk2;
				var_s3 = var_s0_2->unk6;
				if (!(D_800E65BC[objType].unk40 & 0x100)) {
					var_s1_2 = (s32)((f32)var_s1_2 + var_s0_2->unk20);
					var_s3 = (s32)((f32)var_s3 + var_s0_2->unk28);
				}
				ret = func_8007BEC8_163F88(arg0, arg1, arg2, (s32)sp8C, (s32)sp88,
					(s32)((f32)var_s1_2 - sp8C / 2),
						(s32)((f32)var_s3 - sp88 / 2),
					(Unk8007C1DC *)arg3);
				if (ret != 0) {
					D_800E669C = 0;
					D_800E6698 = 1;
					arg3->unk1C = 0;
					arg3->unk18 = 1;
					D_800E66A1 = var_s5;
					arg3->unkE = ret;
					arg3->unk14 = var_s0_2->unk0;
					D_800E66A0 = ret;
				}
				if ((D_800E65BC[objType].unk40 & 0x400000) && (var_s0_2->unk2E & 1)) {
					func_8007BC18_163CD8(var_s5 & 0xFF, &sp8C, &sp88, &sp80, &sp7C);
					ret = func_8007BEC8_163F88(arg0, arg1, arg2, (s32)sp8C, (s32)sp88,
						(s32)((f32)(var_s1_2 + sp80) - sp8C / 2),
						(s32)((f32)(var_s3 + sp7C) - sp88 / 2),
						(Unk8007C1DC *)arg3);
					if (ret != 0) {
						D_800E669C = 0;
						D_800E6698 = 1;
						arg3->unk1C = 0;
						arg3->unk18 = 1;
						D_800E66A1 = var_s5;
						arg3->unkE = ret;
						arg3->unk14 = var_s0_2->unk0;
						D_800E66A0 = ret;
					}
				}
			}
			var_s5++;
			var_s0_2++;
		} while (var_s5 < D_800E668C);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007B65C_16371C.s")
#endif

#ifdef NON_MATCHING
// AI - Returns door sub-object offset and dimensions by orientation
void func_8007BC18_163CD8(s32 arg0, f32 *arg1, f32 *arg2, s32 *arg3, s32 *arg4) {
	Unk80076678Obj *obj;
	u8 objId;
	u8 orient;

	objId = D_800E66A8[arg0 & 0xFF].unk0;
	orient = D_800E66A8[arg0 & 0xFF].unk8;
	obj = &D_800E65BC[objId];

	switch (orient) {
		case 0:
			*arg3 = obj->unk36;
			*arg4 = obj->unk38;
			*arg1 = obj->unk3A;
			*arg2 = obj->unk3B;
			break;

		case 1:
			*arg3 = obj->unk38;
			*arg4 = -obj->unk36;
			*arg1 = obj->unk3B;
			*arg2 = obj->unk3A;
			break;

		case 2:
			*arg3 = -obj->unk36;
			*arg4 = -obj->unk38;
			*arg1 = obj->unk3A;
			*arg2 = obj->unk3B;
			break;

		case 3:
			*arg3 = -obj->unk38;
			*arg4 = obj->unk36;
			*arg1 = obj->unk3B;
			*arg2 = obj->unk3A;
			break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007BC18_163CD8.s")
#endif

// CURRENT(1820)
#ifdef NON_MATCHING
// AI - Detects collision with a rectangular area
s32 func_8007BEC8_163F88(Vec3f *arg0, Vec3f *arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, Unk8007C1DC *arg7) {
	if (arg1->x < 0.0f) {
		D_800E6660.x = arg0->z;
		D_800E6660.z = -arg0->x;
		D_800E6680.x = arg1->z;
		D_800E6680.z = -arg1->x;

		if (func_8007C1DC_16429C((f32)arg6, (f32)(arg4 + arg6), (f32)-(arg3 + arg5), arg2, arg7) != 0) {
			((Vec3f *)arg7)->x = -D_800E6670.z;
			((Vec3f *)arg7)->z = D_800E6670.x;
			return 1;
		}
	}

	if (arg1->x > 0.0f) {
		D_800E6660.x = -arg0->z;
		D_800E6660.z = arg0->x;
		D_800E6680.x = -arg1->z;
		D_800E6680.z = arg1->x;

		if (func_8007C1DC_16429C((f32)-(arg4 + arg6), (f32)-arg6, (f32)arg5, arg2, arg7) != 0) {
			((Vec3f *)arg7)->x = D_800E6670.z;
			((Vec3f *)arg7)->z = -D_800E6670.x;
			return 2;
		}
	}

	if (arg1->z > 0.0f) {
		D_800E6660.x = arg0->x;
		D_800E6660.z = arg0->z;
		D_800E6680.x = arg1->x;
		D_800E6680.z = arg1->z;

		if (func_8007C1DC_16429C((f32)arg5, (f32)(arg3 + arg5), (f32)arg6, arg2, arg7) != 0) {
			((Vec3f *)arg7)->x = D_800E6670.x;
			((Vec3f *)arg7)->z = D_800E6670.z;
			return 3;
		}
	}

	if (arg1->z < 0.0f) {
		D_800E6660.x = -arg0->x;
		D_800E6660.z = -arg0->z;
		D_800E6680.x = -arg1->x;
		D_800E6680.z = -arg1->z;

		if (func_8007C1DC_16429C((f32)-(arg3 + arg5), (f32)-arg5, (f32)-(arg4 + arg6), arg2, arg7) != 0) {
			((Vec3f *)arg7)->x = -D_800E6670.x;
			((Vec3f *)arg7)->z = -D_800E6670.z;
			return 4;
		}
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007BEC8_163F88.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(215) */
// AI - Checks line-segment intersection with collision boundary
s32 func_8007C1DC_16429C(f32 arg0, f32 arg1, f32 arg2, f32 arg3, Unk8007C1DC *arg4) {
	f32 temp_f0;
	f32 temp_f14;
	f32 temp_f18;

	D_800E6670.z = arg2 - arg3;
	if (D_800E6680.z == 0.0f) {
		return 0;
	}

	temp_f0 = D_800E6670.z - D_800E6660.z;
	D_800E6670.x = (temp_f0 / D_800E6680.z) * D_800E6680.x + D_800E6660.x;

	if (D_800E6660.z <= D_800E6670.z) {
		if (D_800E6670.x < (arg1 + arg3)) {
			if ((arg0 - arg3) < D_800E6670.x) {
				temp_f14 = D_800E6670.x - D_800E6660.x;
				temp_f18 = (temp_f14 * temp_f14) + (temp_f0 * temp_f0);
				if (temp_f18 <= arg4->unk10) {
					arg4->unk10 = temp_f18;
					return 1;
				}
			}
		}
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007C1DC_16429C.s")
#endif

// AI - Checks if a direction angle is within a range threshold
s32 func_8007C2D0_164390(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s32 arg4, s32 arg5) {
	s32 temp_v0_2;
	s32 temp_v1;
	s32 temp_a0;
	s32 temp_a1;
	s32 temp_v0;
	s32 temp_v1_2;

	temp_v0 = -arg5;
	if (temp_v0 >= arg5) {
		arg5 = temp_v0;
	}

	temp_v0_2 = func_80003824_4424((f32) (arg0 - arg2), (f32) (arg1 - arg3));
	temp_v1_2 = arg5 / 2;
	temp_a0 = (temp_v1_2 + arg4) & 0xFFFF;
	temp_a1 = (arg4 - temp_v1_2) & 0xFFFF;

	if (temp_a1 >= temp_a0) {
		temp_v1 = temp_v0_2 & 0xFFFF;
		if ((temp_v1 >= temp_a1) || (temp_a0 >= temp_v1)) {
			return 1;
		}
	} else {
		temp_v1 = temp_v0_2 & 0xFFFF;
		if ((temp_v1 >= temp_a1) && (temp_a0 >= temp_v1)) {
			return 1;
		}
	}

	return 0;
}

// AI - Checks if a point is within an axis-aligned rectangle
s32 func_8007C3C0_164480(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5) {
	if ((arg0 <= arg3) && (arg2 <= arg0) && (arg1 <= arg5) && (arg4 <= arg1)) {
		return 1;
	}

	return 0;
}

void func_8007C420_1644E0(void) {
}

// CURRENT(1447)
#ifdef NON_MATCHING
// AI - Frustum culling check for room objects
s32 func_8007C428_1644E8(s16 arg0, s16 arg1, s16 arg2, u16 arg3, s16 arg4) {
	s32 xProj;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s32 yProj;
	s32 radius;
	s32 angle;
	s32 xLimit;
	u16 testAngle;

	xProj = (s32)(D_800E7350[3][0] + ((arg0 * D_800E7350[0][0]) + (arg1 * D_800E7350[1][0]) + (arg2 * D_800E7350[2][0])));
	yProj = -(s32)(D_800E7350[3][2] + ((arg0 * D_800E7350[0][2]) + (arg1 * D_800E7350[1][2]) + (arg2 * D_800E7350[2][2])));
	radius = (s32)sqrtf((f32)((xProj * xProj) + (yProj * yProj)));

	angle = (arg4 / 2) + func_80003824_4424((f32)yProj, (f32)xProj);
	coss(angle & 0xFFFF);

	if ((s32)((((f64)(f32)sins(angle & 0xFFFF) / 32768.0) * (f64)radius)) < -(s32)arg3) {
		return 0;
	}

	testAngle = (angle - arg4) & 0xFFFF;
	xLimit = (s32)((((f64)(f32)coss(testAngle) / 32768.0) * (f64)radius));

	if ((s32)arg3 < (s32)((((f64)(f32)sins(testAngle) / 32768.0) * (f64)radius))) {
		return 0;
	}

	if (xLimit < (0x28 - (s32)arg3)) {
		return 0;
	}

	if (xLimit >= 0x3C1) {
		return 0;
	}

	return 1;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007C428_1644E8.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(755) */
// AI - Checks if a grid cell is passable (not occupied)
s32 func_8007C698_164758(s32 arg0, s32 arg1) {
	Unk8007C698Npc *npc;
	u8 *cellObj;
	s32 cellX;
	s32 cellY;
	s32 width;
	s32 i;
	u8 cellType;

	cellY = arg1 / 96;
	cellX = arg0 / 96;
	width = D_800E6460;
	cellY -= 1;
	cellType = (&D_800E69A7)[width * cellY + cellX];

	if (D_800E668C > 0) {
		npc = (Unk8007C698Npc *) D_800E66A8;
		i = 0;
		do {
			if (npc->unk0 == 0x1E) {
			cellObj = (u8 *) D_800E65E8 + i;
			if ((cellObj[0x40] + 1 == cellX) && (cellObj[0x50] == cellY) && (npc->unk24 == 0.0f)) {
				cellType = 0xFF;
			}
			}
			i++;
			npc++;
		} while (i < D_800E668C);
	}

	if ((cellX - 1 < 0) || (cellY < 0) || (cellX - 1 >= width) || (cellY >= D_800E6464) || (cellType == 0xFF)) {
		return 1;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007C698_164758.s")
#endif
