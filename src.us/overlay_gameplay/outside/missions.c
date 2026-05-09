#include <ultra64.h>
#include "common.h"

s32 D_8013BA90_14AA40[12] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0};

s32 D_8013BAC0_14AA70[5][4] = {
	0x00000003, 0x00000009, 0x00000012, 0xFFFFFFFF,
	0x00000004, 0x00000008, 0x00000009, 0x00000010,
	0x00000006, 0x0000000C, 0x00000012, 0xFFFFFFFF,
	0x00000001, 0x00000006, 0x00000009, 0x00000026,
	0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
};

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80073DC0_82D70.s")

// Resets a bunch of memory? For missions?
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074204_831B4.s")

int func_8007447C_8342C(u8 temp_t6) {

	return temp_t6 == 0x98 ||
		temp_t6 == 0x9A ||
		temp_t6 == 0x99 ||
		temp_t6 == 0x9B ||
		temp_t6 == 0xAD ||
		temp_t6 == 0xAF;
}

int func_800744E0_83490(u8 arg0) {
	return arg0 >= 0x9C && arg0 < 0xA6;
}

// readMissionByteWithIncrement
u8 func_80074500_834B0(void) {
	
	D_801494BC = *D_801494B8;
	D_801494B8 += 1;
	return D_801494BC;
}

// readMissionByteWithIncrementCopy
s32 func_8007452C_834DC(void) {
	
	D_801494BC = *D_801494B8;
	D_801494B8 += 1;
	return D_801494BC;
}

// readMissionByteWithoutIncrement
u8 func_80074558_83508(void) {
	D_801494BC = *D_801494B8;
	return D_801494BC;
}

// readMissionObject
// Needs jumptable data
#ifdef NON_MATCHING
void func_80074578_83528(u8 *arg0) {
	arg0[0] = func_80074500_834B0();

	switch (arg0[0]) {
		case 0x98:
		case 0x99:
		case 0x9A:
		case 0x9B:
		case 0xAF:
			arg0[1] = func_8007452C_834DC();
			break;
		case 0xAD:
			arg0[1] = func_8007452C_834DC();
			arg0[2] = func_8007452C_834DC();
			break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074578_83528.s")
#endif

s32 func_800745F0_835A0(void) {
	func_80074578_83528(&D_80149AF8[D_80149B40 * 3]);
	return D_80149B40++ & 0xFF;
}

void func_8007463C_835EC(void) {
	u8 *entry;

	entry = D_801497C8 + D_80149B30 * 3;
	if (++D_80149B30 >= 0xFE) {
		osSyncPrintf(D_801411F0_1501A0); // **** ERROR: MISSION COMMANDS OVERFLOW ****
		D_80149B4A = 1;
	}
	entry[0] = func_80074500_834B0();
	entry[1] = func_8007452C_834DC();
	if (entry[0] == 0x9E) {
		if (func_80074558_83508() == 0xB4) {
			func_80074500_834B0();
			entry[2] = func_800745F0_835A0();
		}
	} else {
		entry[2] = 0;
	}
}

void func_800746F8_836A8(void) {
	u8 *temp_a1;

	temp_a1 = D_801497C8 + D_80149B30 * 3;
	if (++D_80149B30 >= 0xFE) {
		osSyncPrintf(D_8014121C_1501CC, temp_a1); // **** ERROR: MISSION COMMANDS OVERFLOW ****
		D_80149B4A = 1;
	}
	*temp_a1 = 0xA9;
}

// readMissionByteWithIncrementCopyWrapper
void func_80074768_83718(void) {
	D_8004D160[D_80149B44 * 2] = func_8007452C_834DC();
	D_80149B44 += 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800747A8_83758.s")

#ifdef NON_MATCHING
/* CURRENT(4158) */
void func_80074970_83920(void) {
	s32 i;
	s32 chunkIndex;
	volatile s32 savedIndex;

	chunkIndex = -1;
	if (func_80074558_83508() != 0xB7) {
		if (D_801494BC != 0xAC) {
			if (D_801494BC != 0xAE) {
			i = savedIndex;
			while (1) {
				if (D_801494BC == 0x90) {
					chunkIndex += 1;
					i = 0;
					func_80074500_834B0();
				}

				D_80149B60[(((((((D_80149B48 << 4) + D_80149B48) << 2) + D_80149B48) << 2) - D_80149B48) << 1)
					+ (((((chunkIndex << 2) - chunkIndex) << 3) + chunkIndex) << 1)
					+ i] = func_80074500_834B0();
				i += 1;

				if ((D_801494BC == 0x80) || (D_801494BC == 0x81)) {
					D_80149B60[(((((((D_80149B48 << 4) + D_80149B48) << 2) + D_80149B48) << 2) - D_80149B48) << 1)
						+ (((((chunkIndex << 2) - chunkIndex) << 3) + chunkIndex) << 1)
						+ i] = func_80074500_834B0();
					i += 1;
				}

				if ((func_80074558_83508() == 0xB7) || (D_801494BC == 0xAC)) {
					break;
				}

				if (D_801494BC == 0xAE) {
					savedIndex = i;
					break;
				}
			}
			}
		}
	}

	if (chunkIndex >= 4) {
		func_800078E4_84E4(D_80149B48, &D_8004D15C);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074970_83920.s")
#endif


// readMissionInfo
// CURRENT(1745)
#ifdef NON_MATCHING
void func_80074B2C_83ADC(void) {
	u8 *entry;
	u8 cmd;

	if ((func_80074558_83508() == 0xAC) || (D_801494BC == 0xAE)) {
		do {
			if (D_801494BC == 0xAE) {
				D_8014D188[D_80149B48] += 1;
			}

			func_80074500_834B0();
			if (D_80149B34 >= 0x3F) {
				osSyncPrintf(D_80141288_150238);
				D_80149B4A = 1;
			}

			entry = &D_8014CEF0[D_80149B34 * 4];
			D_80149B34 += 1;
			if (D_801494BC == 0xAC) {
				entry[0] &= 0xFF7F;
			} else {
				entry[0] |= 0x80;
			}

			entry[0] = (D_80149B48 & 0x7F) | (entry[0] & 0xFF80);
			func_80074578_83528(&entry[1]);
			cmd = func_80074558_83508();
		} while ((cmd == 0xAC) || (D_801494BC == 0xAE));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074B2C_83ADC.s")
#endif

// guess_readMissionCondition
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074CA0_83C50.s")

// readMissionConditions
// CURRENT(2775)
#ifdef NON_MATCHING
void func_80074FA8_83F58(void) {
	s32 count;
	u8 cmd;

	while (1) {
		count = D_80149B28;
		if (count >= 0x7F) {
			osSyncPrintf(D_80141354_150304);
			D_80149B4A = 1;
			count = D_80149B28;
		}

		D_80149B28 = count + 1;
		D_801497C0 = &D_801494C0[count];
		D_801497C0->unk1 = D_80149B48;
		D_801497C0->unk2 = D_80149B2C;
		D_801497C0->unk3 = 0;
		D_801497C0->unk4 = 0xFF;

		cmd = func_80074558_83508();
		if (cmd < 0x87) {
			switch (cmd) {
				case 0x82:
					D_801497C0->unk0 = 2;
					func_80074500_834B0();
					break;
				case 0x83:
					D_801497C0->unk0 = 3;
					func_80074500_834B0();
					break;
				default:
					D_80149B28 -= 1;
					return;
			}
		} else if (cmd == 0xB7) {
			D_801497C0->unk0 = 1;
			func_80074500_834B0();
		} else {
			D_80149B28 -= 1;
			return;
		}

		func_80074CA0_83C50();
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074FA8_83F58.s")
#endif

void func_80075148_840F8(void)
{
  MissionCondEntry *entry;
  s16 matchId;
  s32 count;
	s32 new_var2;
	s32 new_var;
  count = D_80149B28;
  if (count--)
  {
	entry = &D_801494C0[count], matchId = D_80149B48; do
	{
	  if ((entry->unk1 == matchId) && (entry->unk0 == 1))
	  {
		entry->unk4 = (u8) D_80149B30;
	  }
	  entry--;
	}
	while (count--);
  }
  while (func_800744E0_83490(func_80074558_83508()))
  {
	func_8007463C_835EC();
  }

  func_800746F8_836A8();
}

void func_80075210_841C0(void)
{
  MissionCondEntry *entry;
  s16 matchId;
  s32 count;
  count = D_80149B28;
  if (count--)
  {
	entry = &D_801494C0[count], matchId = D_80149B48; do
	{
	  if ((entry->unk1 == matchId) && (entry->unk0 == 2))
	  {
		entry->unk4 = (u8) D_80149B30;
	  }
	  entry--;
	}
	while (count--);
  }
  while (func_800744E0_83490(func_80074558_83508()))
  {
	func_8007463C_835EC();
  }

  func_800746F8_836A8();
}

void func_800752D8_84288(void)
{
  MissionCondEntry *entry;
  s16 matchId;
  s32 count;
  count = D_80149B28;
 if (count--) { entry = &D_801494C0[count], matchId = D_80149B48; do {
	  if ((entry->unk1 == matchId) && (entry->unk0 == 3))
	  {
		entry->unk4 = (u8) D_80149B30;
	  }
	  entry--;
	}
	while (count--);
  }
  while (func_800744E0_83490(func_80074558_83508()))
  {
	func_8007463C_835EC();
  }

  func_800746F8_836A8();
}

// CURRENT(75)
#ifdef NON_MATCHING
void func_800753A0_84350(void) {
	u8 *temp;
	s32 i;

	temp = &D_8004D342;
	i = 0x3F;
	do {
		*temp = 0;
		temp -= 6;
	} while (i--);

	if (func_80074558_83508() == 0xB7) {
		do {
			D_801497C0 = (MissionCondEntry *)((u8 *)D_8004D1C8 + D_80149B3C * 6);
			D_80149B3C++;

			D_801497C0->unk0 = 4;
			D_801497C0->unk2 = (u8)D_80149B2C;
			D_801497C0->unk3 = 0;

			func_80074500_834B0();
			if (func_80074500_834B0() == 0xB9) {
				D_801497C0->unk1 = (u8)func_8007452C_834DC();
				func_80074500_834B0();

				if (func_80074558_83508() == 0x94) {
					func_80074500_834B0();
					func_80074500_834B0();
					func_80074500_834B0();
					D_801497C0->unk5 = (u8)func_8007452C_834DC();
					func_80074500_834B0();
				} else {
					D_801497C0->unk5 = 3;
				}

				func_80074CA0_83C50();
				if ((D_801497C0->unk1 < 0x46) || (D_801497C0->unk1 >= 0x48)) {
					osSyncPrintf(D_80141384_150334, D_80149B48);
				}
			} else {
				func_80074500_834B0();
				func_80074500_834B0();
				func_80074500_834B0();
				func_80074500_834B0();
				D_801497C0->unk1 = (u8)func_8007452C_834DC();
				func_80074CA0_83C50();
			}

			func_80074500_834B0();
			func_80074500_834B0();
			D_801497C0->unk4 = (u8)(func_8007452C_834DC() - 1);
		} while (func_80074558_83508() == 0xB7);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800753A0_84350.s")
#endif

void func_80075574_84524(void) {
	s32 sp24[1];
	u8 *var_s0;

	sp24[0] = 0;
	if (func_80074558_83508() != 0x87) {
		var_s0 = &D_8014CFF0[sp24[0] * 2];
		do {
			var_s0[0] = func_80074500_834B0();
			var_s0[1] = func_80074500_834B0();
			var_s0 += 2;
		} while (func_80074558_83508() != 0x87);
	}
}

void func_800755E0_84590(void)
{
  Unk8004D1C8 *var_v0;
  Unk8004D1C8 * var_v1;
  s32 i;
	s32 new_var;
  func_80074204_831B4();
  new_var = 0x10;
  
  for (i = 0; &D_8004D1C8[new_var] != &D_8004D1C8[i]; i++)
  {
	D_8004D1C8[i].unk6 = 0;
	D_8004D1C8[i].unkC = 0;
	D_8004D1C8[i].unk12 = 0;
	D_8004D1C8[i].unk0 = 0;
  }
  D_8004D150 = 0;
}

void func_8007562C_845DC(void) {
  s32 i;

  for (i = 0; i < 4; i++) {
	if ((D_8013BAC0_14AA70[currentLevel - 1][i] >= 0) && (func_80076208_851B8(D_8013BAC0_14AA70[currentLevel - 1][i]) != 0)) {
	  func_800078E4_84E4(D_8013BAC0_14AA70[currentLevel - 1][i], &D_8004D150);
	}
  }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800756DC_8468C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80075AA4_84A54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80075E50_84E00.s")

// CURRENT(10)
#ifdef NON_MATCHING
s32 func_80076088_85038(s32 arg0) {
	switch (arg0) {
		case 0:
			return 1;
		case 1:
			return func_8000726C_7E6C(0xC);
		case 2:
			return 0;
		case 3:
			return func_8000726C_7E6C(1);
		case 4:
			return func_8000726C_7E6C(0xF);
		case 5:
			return func_8000726C_7E6C(0x20);
		case 6:
			return func_8000726C_7E6C(3);
		case 7:
			return func_8000726C_7E6C(0x30);
		case 8:
			return func_8000726C_7E6C(0x20);
		case 9:
			return func_8000726C_7E6C(0x1F);
		case 10:
			return func_8000726C_7E6C(0x22);
		case 11:
			return func_8000726C_7E6C(0x26);
		case 12:
			return func_8000726C_7E6C(0x1E);
		case 13:
			return func_8000726C_7E6C(0x24);
		case 14:
			return func_8000726C_7E6C(2);
		case 15:
			return func_8000726C_7E6C(0x23);
		case 16:
			return func_8000726C_7E6C(0x36);
		case 17:
			return func_8000726C_7E6C(0x21);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80076088_85038.s")
#endif

s32 func_80076208_851B8(s32 arg0) {
  return func_800078B8_84B8(arg0, &D_8004D150);
}

#ifdef NON_MATCHING
s32 func_8007622C_851DC(s32 arg0) {
	s32 v0;
	s32 *ptr;
	s32 v1;

	ptr = &D_801494B4;
	v1 = 15;
	do {
		v0 = v1;
		if (arg0 == *ptr--) {
			return v0;
		}
	} while (v1--);

	v1 = 15;
	if (D_801494B4 != 0) {
		while (v1--) {
			if (D_80149478[v1] != 0) {
				v0 = v1;
			} else {
				break;
			}
		}
	}
	D_80149478[v1] = arg0;
	return v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_8007622C_851DC.s")
#endif

// Remove the current callback from the list of callbacks
void func_800762A8_85258(void (*callback))
{
	s32 i;
	for (i = 0x10;i--;) {
	if ((s32)callback == D_80149478[i])
	{
	  D_80149478[i] = 0;
	  break;
	}
  } 
}

#ifdef NON_MATCHING
void func_800762E0_85290(void) {
	s32 *ptr154 = &D_8004D154;
	s32 *ptr150 = &D_8004D150;
	{
		u8 *entry = &D_801497BA;
		s32 i = 0x7F;
		do {
			if ((entry[0] == 2) && (func_80076208_851B8(entry[1]) != 0)) {
				func_800078E4_84E4(entry[1], ptr150);
				func_800078CC_84CC(entry[1], ptr154);
				func_80073DC0_82D70(entry[4]);
			}
			entry -= 6;
		} while (i--);
	}
	D_80149474 = 0xFF;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800762E0_85290.s")
#endif

#ifdef NON_MATCHING
void func_80076390_85340(void) {
  s32 *ptr158 = &D_8004D158;
  s32 *ptr150 = &D_8004D150;
  {
	u8 *entry = &D_801497BA;
	s32 i = 0x7F;

	do {
	  if ((entry[0] == 3) && (func_800078B8_84B8(entry[1], ptr150) != 0)) {
		func_800078E4_84E4(entry[1], ptr150);
		func_800078CC_84CC(entry[1], ptr158);
		func_80073DC0_82D70(entry[4], 0, 0);
	  }
	  entry -= 6;
	} while (i--);
  }
  func_80013460();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80076390_85340.s")
#endif

// CURRENT(6255)
#ifdef NON_MATCHING
s32 func_8007643C_853EC(s32 arg0) {
	MissionCondEntry *condEntry;
	MissionCondEntry *foundEntry;
	u8 *missionEntry;
	s32 i;
	s32 temp;

	if (func_800078B8_84B8(arg0, &D_8004D150) == 0) {
		return -1;
	}

	temp = 0x80;
	i = -1;
	if (temp != 0) {
		i = 0x7F;
		condEntry = &D_801494C0[i];
		if ((condEntry->unk0 == 2) && (arg0 == condEntry->unk1)) {
			foundEntry = condEntry;
		} else {
			while (1) {
				temp = i;
				i -= 1;
				condEntry -= 1;
				if (temp == 0) {
					break;
				}
				if (condEntry->unk0 == 2) {
					foundEntry = condEntry;
					if (arg0 == foundEntry->unk1) {
						break;
					}
				}
			}
		}
	}

	if (arg0 == D_80149474) {
		D_80149474 = 0xFF;
	}

	if (i != -1) {
		missionEntry = &D_80149B60[arg0 * 0x226];

		if (missionEntry[0x32] == 0x64) {
			if (func_800078B8_84B8(arg0, &D_8004D15C) == 0) {
				func_8001A650_1B250(0xB);
			}
		} else if (missionEntry[0x32] != 0x6E) {
			func_8001A598_1B198(&missionEntry[0x32]);
		}

		func_80073DC0_82D70(foundEntry->unk4);
	}

	func_800078E4_84E4(arg0, &D_8004D150);
	func_800078CC_84CC(arg0, &D_8004D154);
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_8007643C_853EC.s")
#endif

// CURRENT(4495)
#ifdef NON_MATCHING
s32 func_800765C4_85574(s32 arg0) {
	MissionCondEntry *foundEntry;
	MissionCondEntry *entry;
	u8 *missionEntry;
	s32 temp;
	s32 i;

	if (func_800078B8_84B8(arg0, &D_8004D150) == 0) {
		return -1;
	}

	temp = 0x80;
	i = -1;
	if (temp != 0) {
		i = temp - 1;
		entry = &D_801494C0[i];
		if ((entry->unk0 == 3) && (arg0 == entry->unk1)) {
			foundEntry = entry;
		} else {
			while (1) {
				temp = i;
				i -= 1;
				entry -= 1;
				foundEntry = entry;
				if (temp == 0) {
					break;
				}
				if ((entry->unk0 == 3) && (arg0 == foundEntry->unk1)) {
					foundEntry = entry;
					break;
				}
			}
		}
	}

	if (arg0 == D_80149474) {
		D_80149474 = 0xFF;
	}

	if (i != -1) {
		missionEntry = &D_80149B60[arg0 * 0x226];

		if (missionEntry[0x64] == 0x64) {
			if (func_800078B8_84B8(arg0, &D_8004D15C) == 0) {
				func_8001A650_1B250(0xC);
			}
		} else {
			if (missionEntry[0x64] != 0x6E) {
				func_8001A598_1B198(&missionEntry[0x64]);
			}
		}

		func_80073DC0_82D70(foundEntry->unk4);
	}

	func_800078E4_84E4(arg0, &D_8004D150);
	func_800078CC_84CC(arg0, &D_8004D158);
	func_80013460();
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800765C4_85574.s")
#endif

void func_80076754_85704(void)
{
  s32 var_s0;
  var_s0 = 0x17;
  do
  {
	func_8007643C_853EC(var_s0);
  }
  while (var_s0--);
  D_8004D158 = 0;
  D_8004D154 = -1;
}

#ifdef NON_MATCHING
void func_8007679C_8574C(s16 arg0) {
	MissionCondEntry *entry;
	s32 i;

	entry = D_801494C0;
	i = 0x7F;
	do {
		if (entry->unk1 == arg0 && entry->unk0 == 1) {
			func_80073DC0_82D70(entry->unk4, i, arg0);
			break;
		}
		entry++;
	} while (i--);
	func_800078CC_84CC(arg0, &D_8004D150);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_8007679C_8574C.s")
#endif
