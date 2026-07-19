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

const char D_801411F0_1501A0[] = "**** ERROR: MISSION COMMANDS OVERFLOW ****\n";
const char D_8014121C_1501CC[] = "**** ERROR: MISSION COMMANDS OVERFLOW ****\n";
const char D_80141248_1501F8[] = "ERROR: SCRATCH SPACE OVERFLOW\n";
const char D_80141268_150218[] = "ERROR: RANDOM OBJECT OVERFLOW\n";
const char D_80141288_150238[] = "**** ERROR: MISSION INFO OVERFLOW ****\n";
const char D_801412B0_150260[] = "**** ERROR: GAME CONDITION OVERFLOW ****\n";
const char D_801412DC_15028C[] = "**** ERROR: TILES_FROM EXPECTED ****\n";
const char D_80141304_1502B4[] = "**** ERROR: TIMER COMPARATOR EXPECTED ****\n";
const char D_80141330_1502E0[] = "**** ERROR: SECONDS EXPECTED ****\n";
const char D_80141354_150304[] = "**** ERROR: MISSION CONDITION OVERFLOW ****\n";
const char D_80141384_150334[] = "**** WARNING: UNKNOWN MESSAGE FORMAT IN MISSION %d\n";
const char D_801413B8_150368[] = "**** ERROR: NOT A MISSION FILE ****\n";
const char D_801413E0_150390[] = "**** ERROR: TOO MANY MISSIONS ****\n";
const char D_80141404_1503B4[] = "\n";
const char D_80141408_1503B8[] = "  Number of Missions: %4d out of %d\n";
const char D_80141430_1503E0[] = "  Mission Conditions: %4d out of %d\n";
const char D_80141458_150408[] = " Dialogue Conditions: %4d out of %d\n";
const char D_80141480_150430[] = "     Game Conditions: %4d out of %d\n";
const char D_801414A8_150458[] = "            Commands: %4d out of %d\n";
const char D_801414D0_150480[] = "     Map information: %4d out of %d\n";
const char D_801414F8_1504A8[] = "      Random objects: %4d out of %d\n";
const char D_80141520_1504D0[] = "     Command objects: %4d out of %d\n";
const char D_80141548_1504F8[] = "          Characters: %4d out of %d\n";
const char D_80141570_150520[] = "Size of mission data: %4d out of %d\n";
const f32 D_80141598_150548[1] = {511.0f};
const u32 jtbl_8014159C_15054C[] = {
	0x80073E5C,
	0x80073E6C,
	0x80073E7C,
	0x80073F40,
	0x80073F50,
	0x800741C4,
	0x8007400C,
	0x8007412C,
	0x80074194,
	0x80074158,
};
const u32 jtbl_801415C4_150574[] = {
	0x800745DC,
	0x800745B8,
	0x800745B8,
	0x800745B8,
	0x800745DC,
	0x800745DC,
	0x800745DC,
	0x800745DC,
	0x800745DC,
	0x800745DC,
	0x800745DC,
	0x800745DC,
	0x800745DC,
	0x800745DC,
	0x800745DC,
	0x800745DC,
	0x800745DC,
	0x800745DC,
	0x800745DC,
	0x800745DC,
	0x800745DC,
	0x800745C8,
	0x800745DC,
	0x800745B8,
};
const u32 jtbl_80141624_1505D4[] = {
	0x800750DC,
	0x800750F4,
	0x8007510C,
	0x8007510C,
	0x8007510C,
};
const u32 jtbl_80141638_1505E8[] = {
	0x80075A5C,
	0x80075A70,
	0x80075A84,
	0x80075A84,
	0x80075A84,
};


// CURRENT(1686)
#ifdef NON_MATCHING
// AI - Execute mission command opcodes (spawning, flags, etc.)
void func_80073DC0_82D70(s32 arg0) {
	u8 *next;
	u8 *entry;
	u8 opcode;
	f32 spread;
	s16 sp5A;
	s16 sp5C;

	if (arg0 == 0xFF) {
		return;
	}

	next = &D_801497C8[arg0 * 3];
	if ((next[0] ^ 0xA9) == 0) {
		return;
	}
	entry = next;
	next += 3;

	spread = D_80141598_150548;

	while (1) {
		switch (entry[0] - 0x9C) {
			case 0:
				func_800FD858_10C808(entry[1]);
				break;

			case 1:
				func_80073B30_82AE0(entry[1]);
				break;

			case 2: {
				u8 *waveEntry;

				waveEntry = &D_80149AF8[(entry[2] << 2) - entry[2]];
				if (waveEntry[0] == 0x99) {
					BuildingInstance *building;

					building = &buildingInstances[waveEntry[1]];
					building->rotation = (((entry[1] << 2) & 0x3C) | (building->rotation & 0xFFC3));
				} else {
					s32 alienIdx;

					func_80007728_8328(waveEntry, &sp5C, &sp5A);
					alienIdx = func_8007956C_8851C(D_8004D160[entry[1] * 2]);
					alienInstances[alienIdx].unk0 = sp5C - 0x104;
					alienInstances[alienIdx].unk4 = sp5A;
					D_8004D160[(entry[1] * 2) + 1] = alienIdx;
				}
				break;
			}

			case 3:
				func_800AF764_BE714(entry[1]);
				break;

			case 4: {
				s32 rand;
				s32 r1;
				s16 x;
				s16 y;
				VehicleInstance *player;

				rand = func_800038E0_44E0() & 0xFFFF;
				r1 = func_800038E0_44E0();
				player = D_80052B34;

				x = (s16)(((f32)(rand & 0x3FF) + ((f32)player->unk0 + (D_8003140C * 500.0f))) - spread);
				y = (s16)(((f32)(r1 & 0x3FF) + ((f32)player->unk4 + (D_80031404 * 500.0f))) - spread);
				func_800A8A68_B7A18(x, player->unk2 + 0x100, y, entry[1]);
				break;
			}

			case 5: {
				s32 cmd;
				s16 variant;

				cmd = entry[1];
				if ((cmd >= 0xA5) && (cmd < 0xAC)) {
					variant = cmd - 0xA3;
					if (variant == 3) {
						func_801391DC_14818C(variant, 10);
						break;
					}
					if (variant == 4) {
						func_801391DC_14818C(variant, 10);
						break;
					}
					if (variant == 5) {
						func_801391DC_14818C(variant, 100);
						break;
					}
					if (variant == 6) {
						func_801391DC_14818C(variant, 5);
						break;
					}
					if (variant == 7) {
						func_801391DC_14818C(variant, 3);
						break;
					}
					if (variant == 9) {
						func_801391DC_14818C(variant, 8);
						break;
					}
					func_801391DC_14818C(variant, -0x8000);
					break;
				}

				if (cmd < 0x65) {
					D_80052B2C->unk30 += cmd * 100;
				} else {
					s32 cmdMinus;

					cmdMinus = cmd - 0x64;
					func_800072CC_7ECC(cmdMinus >> 0x1F);
				}
				break;
			}

			case 6:
				func_802D4CD0_18D7E0((entry[1] - (currentLevel * 20)) + 0x14, 0);
				break;

			case 7:
				D_8004D1B0[entry[1]] = 0;
				if (entry[1] == 1) {
					D_80149474 = D_80149B48;
					D_8004D1C0 = 0;
				}
				break;

			case 8:
			case 9:
				func_80018D7C_1997C((u16)(((currentLevel * 50) + entry[1]) - 0x32));
				break;
		}

		opcode = next[0];
		entry = next;
		next += 3;
		if ((opcode ^ 0xA9) != 0) {
			continue;
		}
		break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80073DC0_82D70.s")
#endif

// CURRENT(2215)
#ifdef NON_MATCHING
// AI - Reset all mission data structures
void func_80074204_831B4(void) {
	s32 i;
	u8 a1;
	u8 a2;
	u8 *v0;

	v0 = &D_80149B60[0][0][0];
	i = 0x257F;
	do {
		*v0 = 0;
		v0 += 1;
	} while (i--);

	v0 = &D_8014CCCA;
	i = 0x17;
	a2 = 0x64;
	a1 = 0x6E;
	do {
		v0[0] = a1;
		v0[0x32] = a2;
		v0[0x64] = a2;
		v0 -= 0x226;
	} while (i--);

	v0 = &D_8014CEF0[0xFC];
	i = 0x3F;
	do {
		v0 -= 4;
		v0[4] = (v0[4] & 0xFF80) | 0x7F;
	} while (i--);

	v0 = &D_801497BA;
	i = 0x7F;
	a1 = 0xFF;
	do {
		v0[0] = 0;
		v0[1] = a1;
		v0[2] = 0;
		v0[3] = 0;
		v0[4] = a1;
		v0 -= 6;
	} while (i--);

	v0 = &D_8004D1BF;
	i = 0xF;
	do {
		v0[0] = a1;
		v0 -= 1;
	} while (i--);

	v0 = &D_8014D16E;
	i = 0xBF;
	a2 = 0xC1;
	do {
		v0[0] = a2;
		v0[1] = a2;
		v0 -= 2;
	} while (i--);

	v0 = &D_8004D1AD;
	i = 0xF;
	do {
		v0[0] = a1;
		v0 -= 3;
	} while (i--);

	v0 = (u8 *)&D_801494B4;
	i = 0xF;
	do {
		*(s32 *)v0 = 0;
		v0 -= 4;
	} while (i--);

	v0 = &D_80149B25;
	i = 0xF;
	do {
		v0[0] = a1;
		v0 -= 3;
	} while (i--);

	v0 = &D_8004D17E;
	i = 0xF;
	do {
		v0[0] = 0;
		v0[1] = 0;
		v0 -= 2;
	} while (i--);

	v0 = (u8 *)&D_8014D1B6;
	i = 0x17;
	do {
		*(s16 *)v0 = 0;
		v0 -= 2;
	} while (i--);

	D_80149470 = 0;
	D_8004D15C = -1;

	D_80149B44 = D_80149B40 = D_80149B38 = D_80149B34 = D_80149B30 = D_80149B2C = 0;
	D_80149B28 = 0;
	D_80149B3C = 0;

	D_80149B4A = 0;
	D_8014D180 = D_80149B4A;
	D_8014D17E = D_8014D180;
	D_8014D17C = D_8014D17E;
	D_8004D14C = D_8014D17C;
	D_80149B48 = D_8014D17C;

	D_80149474 = 0xFF;
	D_8004DC40 = -1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074204_831B4.s")
#endif

// AI - Check if byte is a mission object type
int func_8007447C_8342C(u8 temp_t6) {

	return temp_t6 == 0x98 ||
		temp_t6 == 0x9A ||
		temp_t6 == 0x99 ||
		temp_t6 == 0x9B ||
		temp_t6 == 0xAD ||
		temp_t6 == 0xAF;
}

// AI - Check if byte is a command opcode (0x9C-0xA5)
int func_800744E0_83490(u8 arg0) {
	return arg0 >= 0x9C && arg0 < 0xA6;
}

// readMissionByteWithIncrement
// AI - Read next byte from mission data stream
u8 func_80074500_834B0(void) {
	
	D_801494BC = *D_801494B8;
	D_801494B8 += 1;
	return D_801494BC;
}

// readMissionByteWithIncrementCopy
// AI - Read next byte from mission data stream (returns s32)
s32 func_8007452C_834DC(void) {
	
	D_801494BC = *D_801494B8;
	D_801494B8 += 1;
	return D_801494BC;
}

// readMissionByteWithoutIncrement
// AI - Peek at current byte in mission data stream
u8 func_80074558_83508(void) {
	D_801494BC = *D_801494B8;
	return D_801494BC;
}

// CURRENT(10)
// readMissionObject
// Needs jumptable data
#ifdef NON_MATCHING
// AI - Read a mission object entry from stream
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

// AI - Read random object entry, return its index
s32 func_800745F0_835A0(void) {
	func_80074578_83528(&D_80149AF8[D_80149B40 * 3]);
	return D_80149B40++ & 0xFF;
}

// AI - Write a parsed mission command to command buffer
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

// AI - Write terminator command (0xA9) to command buffer
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
// AI - Read character/actor ID from mission stream
void func_80074768_83718(void) {
	D_8004D160[D_80149B44 * 2] = func_8007452C_834DC();
	D_80149B44 += 1;
}

// CURRENT(3929)
#ifdef NON_MATCHING
// AI - Read weighted random object table and select entry
void func_800747A8_83758(void) {
	s32 sum;
	s32 selectedIndex;
	s32 randomValue;
	s32 loopIndex[1];
	u8 *cmdEntry;
	u8 *weight;
	s32 commandIndex;

	sum = 0;
	loopIndex[0] = 0;

	if (func_80074558_83508() != 0x87) {
		commandIndex = (loopIndex[0] * 4) - loopIndex[0];
		weight = &D_80149B50[loopIndex[0]];
		cmdEntry = &D_80149AC8[commandIndex]; do {
			randomValue = func_80074500_834B0();
			sum += randomValue;
			if (cmdEntry >= D_80149AF8) {
				osSyncPrintf(D_80141248_1501F8);
			}
			*weight = randomValue;
			{
				u8 *entryBefore;

				entryBefore = cmdEntry;
				cmdEntry += 3;
				func_80074578_83528(entryBefore);
			}
			weight += 1;
		} while (func_80074558_83508() != 0x87);
	}

	randomValue = func_800038E0_44E0() % sum;
	selectedIndex = -1;
	if (randomValue >= 0) {
		commandIndex = selectedIndex + 1; do {
			selectedIndex = commandIndex;
			randomValue -= D_80149B50[commandIndex];
		} while ((commandIndex = selectedIndex + 1, randomValue >= 0));
	}

	commandIndex = D_80149B38;
	if (commandIndex >= 0x10) {
		osSyncPrintf(D_80141268_150218);
		D_80149B4A = 1;
		commandIndex = D_80149B38;
	}

	cmdEntry = &D_8004D180[commandIndex * 3];
	weight = &D_80149AC8[selectedIndex * 3];
	cmdEntry[0] = weight[0];
	cmdEntry[1] = weight[1];
	cmdEntry[2] = weight[2];
	D_80149B38 = commandIndex + 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800747A8_83758.s")
#endif

// CURRENT(0)
// AI - Read map/tile data chunks from mission stream
void func_80074970_83920(void)
{
  s32 i;
  s32 chunkIndex;
  u8 curBC;
  chunkIndex = -1;
  if (func_80074558_83508() != 0xB7)
  {
	if (D_801494BC != 0xAC)
	{
	  if (D_801494BC != 0xAE)
	  {
		do
		{
		  if (D_801494BC == 0x90)
		  {
			chunkIndex += 1;
			i = 0;
			func_80074500_834B0();
		  }
		  D_80149B60[D_80149B48][chunkIndex][i] = func_80074500_834B0();
		  i += 1;
		  if ((D_801494BC == 0x80) || (D_801494BC == 0x81))
		  {
			D_80149B60[D_80149B48][chunkIndex][i] = func_80074500_834B0();
			i++;
		  }
		  if (func_80074558_83508() == 0xB7) break;
		  if (D_801494BC == 0xAC) break;
		} while (D_801494BC != 0xAE);
	  }
	}
  }
  if (chunkIndex >= 4)
  {
	func_800078E4_84E4(D_80149B48, &D_8004D15C);
  }
}

// https://decomp.me/scratch/PR95Q
// CURRENT(80)
#ifdef NON_MATCHING
// readMissionInfo
// AI - Read mission info entries with type flags
void func_80074B2C_83ADC(void) {
	u8 *entry;
	u8 cmd;
	s16 b48;

	cmd = func_80074558_83508();
	while ((cmd == 0xAC) || (D_801494BC == 0xAE)) {
		if (D_801494BC == 0xAE) {
			D_8014D188[D_80149B48] += 1;
		}

		func_80074500_834B0();
		if (D_80149B34 >= 0x3F) {
			osSyncPrintf(D_80141288_150238);
			D_80149B4A = 1;
		}

		entry = &D_8014CEF0[D_80149B34 * 4], D_80149B34 += 1;
		if (D_801494BC == 0xAC) {
			entry[0] &= 0xFF7F;
		} else {
			entry[0] |= 0x80;
		}

		b48 = D_80149B48;
		entry[0] = (b48 & 0x7F) | (entry[0] & 0xFF80);
		func_80074578_83528(&entry[1]);
		cmd = func_80074558_83508();
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074B2C_83ADC.s")
#endif

// guess_readMissionCondition
// AI - Read game conditions for a mission
void func_80074CA0_83C50(void) {
	if ((func_80074558_83508() == 0xB7) || (D_801494BC == 0x82) || (D_801494BC == 0x83) || (D_801494BC == 0x85) ||
		(D_801494BC == 0x86) || (D_801494BC == 0x87) || (D_801494BC == 0x90) || (D_801494BC == 0xAC) ||
		(D_801494BC == 0xAE) || (D_801494BC == 0x84)) {
		return;
	}

	for (;;) {
		if (D_80149B2C >= 0xFE) {
			osSyncPrintf(D_801412B0_150260);
			D_80149B4A = 1;
		}

		D_801497C4 = &D_8004D348[D_80149B2C++ * 9];

		if (func_80074558_83508() == 0x88) {
			func_80074500_834B0();
		}

		if (func_8007447C_8342C(func_80074558_83508()) != 0) {
			func_80074578_83528(D_801497C4);
			D_801497C4[8] = func_80074500_834B0();

			if ((D_801497C4[8] == 0x89) || (D_801497C4[8] == 0x8A)) {
				D_801497C4[6] = func_8007452C_834DC();
				if (func_80074500_834B0() != 0x8B) {
					osSyncPrintf(D_801412DC_15028C);
				}

				func_80074578_83528(&D_801497C4[3]);
			} else if ((D_801497C4[8] == 0x91) || (D_801497C4[8] == 0x92)) {
				func_80074578_83528(&D_801497C4[3]);
			}
		} else if ((D_801494BC == 0xB3) || (D_801494BC == 0xB2)) {
			D_801497C4[8] = func_80074500_834B0();
		} else {
			D_801497C4[8] = func_80074500_834B0();
			D_801497C4[6] = func_8007452C_834DC();

			if (D_801497C4[8] == 0x94) {
				if (func_80074500_834B0() == 0x89) {
					D_801497C4[8] = 0xA6;
					D_801497C4[7] = func_8007452C_834DC();
				} else if (D_801494BC == 0x8A) {
					D_801497C4[8] = 0xA7;
					D_801497C4[7] = func_8007452C_834DC();
				} else {
					osSyncPrintf(D_80141304_1502B4);
				}

				if (func_80074500_834B0() != 0x97) {
					osSyncPrintf(D_80141330_1502E0);
				}
			}
		}

		D_801497C0->unk3++;

		if ((func_80074558_83508() == 0xB7) || (D_801494BC == 0x82) || (D_801494BC == 0x83) || (D_801494BC == 0x85) ||
			(D_801494BC == 0x86) || (D_801494BC == 0x87) || (D_801494BC == 0x90) || (D_801494BC == 0xAC) ||
			(D_801494BC == 0xAE) || (D_801494BC == 0x84)) {
			return;
		}
	}
}

// readMissionConditions
// CURRENT(30)
#ifdef NON_MATCHING
// AI - Read mission conditions and link to mission IDs
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

		D_801497C0 = &D_801494C0[count];
		D_80149B28 = count + 1;
		D_801497C0->unk1 = D_80149B48;
		D_801497C0->unk2 = D_80149B2C;
		D_801497C0->unk3 = 0;
		D_801497C0->unk4 = 0xFF;

		cmd = func_80074558_83508();
		switch (cmd) {
			case 0xB7:
				D_801497C0->unk0 = 1;
				func_80074500_834B0();
				break;
			case 0x82:
				D_801497C0->unk0 = 2;
				func_80074500_834B0();
				break;
			case 0x83:
				D_801497C0->unk0 = 3;
				func_80074500_834B0();
				break;
			case 0x84:
			case 0x85:
			case 0x86:
				D_80149B28 -= 1;
				return;
		}

		func_80074CA0_83C50();
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074FA8_83F58.s")
#endif

// AI - Link success conditions to command sequences
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

// AI - Link failure conditions to command sequences
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

// AI - Link special conditions to command sequences
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

// AI - Read dialogue condition entries from stream
void func_800753A0_84350(void)
{
  u8 *temp;
  s32 i;
  temp = &D_8004D342;
  i = 0x3F;
  do
  {
	*temp = 0;
	temp -= 6;
  }
  while (i--);
  if (func_80074558_83508() == 0xB7)
  {
	do
	{
	  i = D_80149B3C;
	  D_801497C0 = (MissionCondEntry *) (((u8 *) D_8004D1C8) + (i * 6));      D_80149B3C++;
	  D_801497C0->unk0 = 4;
	  D_801497C0->unk2 = (u8) D_80149B2C;
	  D_801497C0->unk3 = 0;
	  func_80074500_834B0();
	  if (func_80074500_834B0() == 0xB9)
	  {
		D_801497C0->unk1 = (u8) func_8007452C_834DC();
		func_80074500_834B0();
		if (func_80074558_83508() == 0x94)
		{
		  func_80074500_834B0();
		  func_80074500_834B0();
		  func_80074500_834B0();
		  D_801497C0->unk5 = (u8) func_8007452C_834DC();
		  func_80074500_834B0();
		}
		else
		{
		  D_801497C0->unk5 = 3;
		}
		func_80074CA0_83C50();
		if ((D_801497C0->unk1 < 0x46) || (D_801497C0->unk1 >= 0x48))
		{
		  osSyncPrintf(D_80141384_150334, D_80149B48);
		}
	  }
	  else
	  {
		func_80074500_834B0();
		func_80074500_834B0();
		func_80074500_834B0();
		func_80074500_834B0();
		D_801497C0->unk1 = (u8) func_8007452C_834DC();
		func_80074CA0_83C50();
	  }
	  func_80074500_834B0();
	  func_80074500_834B0();
	  D_801497C0->unk4 = (u8) (func_8007452C_834DC() - 1);
	}
	while (func_80074558_83508() == 0xB7);
  }
}

// AI - Read random object weight table from stream
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

// AI - Clear all mission/dialogue conditions
void func_800755E0_84590(void)
{
  s32 i;
  func_80074204_831B4();
  for (i = 0; i < 0x40; i++)
  {
	D_8004D1C8[i].unk0 = 0;
  }

  D_8004D150 = 0;
}

// AI - Check and mark completed missions for current level
void func_8007562C_845DC(void) {
  s32 i;

  for (i = 0; i < 4; i++) {
	if ((D_8013BAC0_14AA70[currentLevel - 1][i] >= 0) && (func_80076208_851B8(D_8013BAC0_14AA70[currentLevel - 1][i]) != 0)) {
	  func_800078E4_84E4(D_8013BAC0_14AA70[currentLevel - 1][i], &D_8004D150);
	}
  }
}

// CURRENT(10)
#ifdef NON_MATCHING
// AI - Parse entire mission data blob
void func_800756DC_8468C(void) {
	u8 *missionStart;

	D_801494B8 = &D_80224680;
	missionStart = D_801494B8;

	func_80074204_831B4();

	if (func_80074558_83508() != 0xA8) {
		if ((D_801494BC != 0x90) && (D_801494BC != 0xB0)) {
			osSyncPrintf(D_801413B8_150368);
			goto doneParsing;
		}
	}

	if (func_80074558_83508() == 0xA8) {
		do {
			func_80074500_834B0();
			func_80074768_83718();
		} while (func_80074558_83508() == 0xA8);
	}

	if (func_80074558_83508() == 0x87) {
		func_80074500_834B0();
	}

	if (func_80074558_83508() == 0xB0) {
		do {
			func_80074500_834B0();
			func_800747A8_83758();
		} while (func_80074558_83508() == 0xB0);
	}

	if (func_80074558_83508() == 0x87) {
		func_80074500_834B0();
	}

	if (func_80074558_83508() != 0x87) {
		do {
			D_80149470 += 1;

			if (func_80074558_83508() == 0x90) {
				func_80074970_83920();
			} else {
				func_800078CC_84CC(D_80149B48, &D_8004D15C);
			}

			func_80074B2C_83ADC();
			func_80074FA8_83F58();

			if (func_80074558_83508() == 0x84) {
				func_80074500_834B0();
				func_80075148_840F8();
			}

			if (func_80074558_83508() == 0x85) {
				func_80074500_834B0();
				func_80075210_841C0();
			}

			if (func_80074558_83508() == 0x86) {
				func_80074500_834B0();
				func_800752D8_84288();
			}

			D_80149B48 += 1;
			if (D_80149B48 >= 0x19) {
				osSyncPrintf(D_801413E0_150390);
				D_80149B4A = 1;
			}
		} while (func_80074558_83508() != 0x87);
	}

	func_80074500_834B0();
	func_800753A0_84350();
	func_80074500_834B0();
	func_80075574_84524();

	if (D_80149B4A != 0) {
		osSyncPrintf(D_80141404_1503B4);
		osSyncPrintf(D_80141408_1503B8, D_80149B48, 0x18);
		osSyncPrintf(D_80141430_1503E0, D_80149B28, 0x80);
		osSyncPrintf(D_80141458_150408, D_80149B3C, 0x40);
		osSyncPrintf(D_80141480_150430, D_80149B2C, 0xFF);
		osSyncPrintf(D_801414A8_150458, D_80149B30, 0xFE);
		osSyncPrintf(D_801414D0_150480, D_80149B34, 0x40);
		osSyncPrintf(D_801414F8_1504A8, D_80149B38, 0x10);
		osSyncPrintf(D_80141520_1504D0, D_80149B40, 0x10);
		osSyncPrintf(D_80141548_1504F8, D_80149B44, 0x10);
		osSyncPrintf(D_80141570_150520, (s32)(D_801494B8 - missionStart), 0x800);
	}

doneParsing:
	switch (currentLevel) {
		case 1:
			func_802D4CD0_18D7E0(0x12, 0);
			break;
		case 2:
			func_802D4CD0_18D7E0(0x13, 0);
			break;
		case 3:
		case 4:
		case 5:
			func_802D4CD0_18D7E0(0, 0);
			break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800756DC_8468C.s")
#endif

// CURRENT(231)
#ifdef NON_MATCHING
// AI - Evaluate mission conditions and trigger callbacks
void func_80075AA4_84A54(void) {
	s32 condCount;
	s32 i;
	s32 *callback;
	MissionCondEntry *cond;

	if (D_8004771E == 10) {
		func_802D4CD0_18D7E0(D_8004771C, 0);
		D_8004771E = 9;
	}

	switch (currentLevel) {
	case 1:
		if ((func_8000726C_7E6C(0x15) != 0) && (func_801393A0_148350(8) == 0)) {
			func_801391DC_14818C(8, -0x8000);
		}
		break;
	case 2:
		break;
	}

	if ((u32)D_80052A8C >= 0xDD) {
		guess_checkMissions();
	}

	{
		u8 *slot;
		s32 ageCount;

		ageCount = 14;
		if (((u32)D_80052A8C % 20) == 0) {
			slot = &D_8004D1BE;
			do {
				if (*slot != -1) {
					*slot = *slot + 1;
				}
				slot--;
			} while (ageCount--);
		}
	}

	condCount = D_80149B28;
	if (condCount--) {
		cond = &D_801494C0[condCount];
		do {
			D_801497C0 = cond;
			D_80149B48 = D_801497C0->unk1;

			if (D_801497C0->unk0 != 0) {
				if (D_801497C0->unk0 == 1) {
					if (func_800078B8_84B8(D_801497C0->unk1, &D_8004D150) != 0) {
						goto next_cond;
					}
					if (func_800078B8_84B8(D_801497C0->unk1, &D_8004D154) != 0) {
						goto next_cond;
					}
					if (func_800078B8_84B8(D_801497C0->unk1, &D_8004D158) != 0) {
						goto next_cond;
					}
				} else {
					if (func_800078B8_84B8(D_801497C0->unk1, &D_8004D150) == 0) {
						goto next_cond;
					}
				}

				{
					i = D_801497C0->unk3;
					D_801497C4 = &D_8004D348[D_801497C0->unk2 * 9];
					if (i--) {
						do {
							if (func_800081D4_8DD4(D_801497C4) == 0) {
								goto next_cond;
							}

							D_801497C4 += 9;

							if (i == 0) {
								switch (D_801497C0->unk0) {
								case 1:
									if (func_800078B8_84B8(D_801497C0->unk1, &D_8004D15C) == 0) {
										D_8004D14C = 0x73;
									}

									if (D_80149B60[D_801497C0->unk1][0][0] != 0x6E) {
										func_8001A598_1B198(D_80149B60[D_801497C0->unk1][0]);
									}

									__dummy();
									func_800078CC_84CC(D_801497C0->unk1, &D_8004D150);
									func_80073DC0_82D70(D_801497C0->unk4);
									break;
								case 2:
									func_8007643C_853EC(D_801497C0->unk1);
									break;
								case 3:
									func_800765C4_85574(D_801497C0->unk1);
									break;
								}
							}
						} while (i--);
					}
				}
			}

		next_cond:
			cond--;
		} while (condCount--);
	}

	{
		condCount = 15;
		callback = &D_801494B4;
		do {
			if (*callback != 0) {
				((void (*)(void))*callback)();
			}
			callback--;
		} while (condCount--);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80075AA4_84A54.s")
#endif

// CURRENT(3846)
#ifdef NON_MATCHING
// AI - Post-process mission cleanup and bitmask building
s32 func_80075E50_84E00(void) {
	u8 *stream;
	s32 has83After82;
	u32 bitmask[8];
	u8 *cmd;
	s32 count;

	stream = &D_80224680;
	cmd = D_801497C8;
	count = D_80149B30;
	has83After82 = 0;

	if (count--) {
		do {
			if (cmd[0] == 0x9C) {
				u32 vehicleOffset;
				u8 idx;

				idx = cmd[1];
				vehicleOffset = idx;
				vehicleOffset = (vehicleOffset << 2) - vehicleOffset;
				vehicleOffset = (vehicleOffset << 3) - idx;
				vehicleOffset <<= 2;

				if (((VehicleInstance *)((u8 *)vehicleInstances + vehicleOffset))->unk3C == 1) {
					func_800E5CF4_F4CA4(2, idx);
				} else {
					((VehicleInstance *)((u8 *)vehicleInstances + vehicleOffset))->unk20 &= 0x7FFF;
				}
			}
			cmd += 3;
		} while (count--);
	}

	func_800FAD10_109CC0();

	count = 7;
	do {
		D_8014D1B8[count] = 0;
	} while (count--);

	cmd = &D_8014CEF0[0xFC];
	count = 0x3F;
	do {
		if (cmd[1] == 0x99) {
			D_8014D1B8[cmd[2] >> 5] |= 1 << (cmd[2] & 0x1F);
		}
		cmd -= 4;
	} while (count--);

	count = 0x7FF;
	do {
		if (stream[0] == 0x82 && stream[1] == 0x99 && stream[3] == 0x8E) {
			bitmask[stream[2] >> 5] |= 1 << (stream[2] & 0x1F);
		}
		stream++;
	} while (count--);

	{
		u32 *dst;
		u32 *src;
		s32 i;

		dst = &D_8014D1B8[7];
		src = &bitmask[7];
		i = 7;
		do {
			*dst &= *src;
			dst--;
			src--;
		} while (i--);
	}

	stream = &D_80224680;
	count = 0x7FF;
	do {
		u8 val = *stream++;
		if (val == 0x82) {
			has83After82 = 0;
		}
		if (val == 0x83 && has83After82 == 0) {
			has83After82 = 1;
		}
	} while (count--);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80075E50_84E00.s")
#endif

// CURRENT(10)
// CURRENT(0)
// AI - Check if mission category is unlocked
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

// AI - Check if mission ID is in active list
s32 func_80076208_851B8(s32 arg0) {
  return func_800078B8_84B8(arg0, &D_8004D150);
}

// https://decomp.me/scratch/iNhL3
// CURRENT(720)
#ifdef NON_MATCHING
// AI - Register a mission callback function
void func_8007622C_851DC(s32 arg0) {
	s32 v1;
	s32 temp_v0;

	v1 = 0x10;
	while (v1--) {
		if (arg0 == D_80149478[v1]) {
			return;
		}
	}

	v1 = 0xF;
	if (D_801494B4 != 0) {
		temp_v0 = v1;
		do {
			if (v1-- == 0) {
				break;
			}
		} while (D_80149478[v1] != 0);
	}
	D_80149478[v1] = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_8007622C_851DC.s")
#endif

// Remove the current callback from the list of callbacks
// AI - Remove a mission callback from list
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

// AI - Activate all secondary mission entries
void func_800762E0_85290(void)
{
	s32 *ptr154 = &D_8004D154;
	s32 *ptr150 = &D_8004D150;
	{ u8 *entry = &D_801497BA; s32 i = 0x7F; do {
			if ((entry[0] == 2) && (func_80076208_851B8(entry[1]) != 0))
			{
				func_800078E4_84E4(entry[1], ptr150);
				func_800078CC_84CC(entry[1], ptr154);
				func_80073DC0_82D70(entry[4]);
			}
			entry -= 6;
		} while (i--);
	}
	D_80149474 = 0xFF;
}

// AI - Activate all special mission entries
void func_80076390_85340(void)
{
  s32 *ptr158 = &D_8004D158;
  s32 *ptr150 = &D_8004D150;
 { u8 *entry = &D_801497BA; s32 i = 0x7F; do { if ((entry[0] == 3) && (func_80076208_851B8(entry[1]) != 0)) {
		func_800078E4_84E4(entry[1], ptr150);
		func_800078CC_84CC(entry[1], ptr158);
		func_80073DC0_82D70(entry[4]);
	  }
	  entry -= 6;
	}
	while (i--);
  }
  func_80013460();
}

// CURRENT(2345)
#ifdef NON_MATCHING
// AI - Handle mission failure with effects
s32 func_8007643C_853EC(s32 arg0) {
	MissionCondEntry *condEntry;
	MissionCondEntry *foundEntry;
	u8 *missionEntry;
	s32 i;
	s32 temp;

	if (func_800078B8_84B8(arg0, &D_8004D150) != 0) {
		i = 0x80;
		temp = i;
	} else {
		return -1;
	}

	i = -1;
	if (temp != 0) {
		s32 condType;

		i = temp - 1;
		temp = i;
		condType = 2;
		condEntry = &D_801494C0[i];
		foundEntry = condEntry;
		if ((condEntry->unk0 == condType) && (arg0 == condEntry->unk1)) {
		} else {
			do {
				temp = i;
				i -= 1;
				condEntry -= 1;
				foundEntry = condEntry;
				if (temp == 0) {
					break;
				}
			} while (!((condEntry->unk0 == condType) && (arg0 == condEntry->unk1)));
		}
	}

	if (arg0 == D_80149474) {
		D_80149474 = 0xFF;
	}

	if (i != -1) {
		missionEntry = D_80149B60[arg0][0];

		if (missionEntry[0x32] == 0x64) {
			if (func_800078B8_84B8(arg0, &D_8004D15C) == 0) {
				func_8001A650_1B250(0xB);
			}
		} else {
			if (missionEntry[0x32] != 0x6E) {
				func_8001A598_1B198(&missionEntry[0x32]);
			}
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

// CURRENT(2345)
#ifdef NON_MATCHING
// AI - Handle mission success with effects
s32 func_800765C4_85574(s32 arg0) {
	MissionCondEntry *condEntry;
	MissionCondEntry *foundEntry;
	u8 *missionEntry;
	s32 i;
	s32 temp;

	if (func_800078B8_84B8(arg0, &D_8004D150) != 0) {
		i = 0x80;
		temp = i;
	} else {
		return -1;
	}

	i = -1;
	if (temp != 0) {
		s32 condType;

		i = temp - 1;
		temp = i;
		condType = 3;
		condEntry = &D_801494C0[i];
		foundEntry = condEntry;
		if ((condEntry->unk0 == condType) && (arg0 == condEntry->unk1)) {
		} else {
			do {
				temp = i;
				i -= 1;
				condEntry -= 1;
				foundEntry = condEntry;
				if (temp == 0) {
					break;
				}
			} while (!((condEntry->unk0 == condType) && (arg0 == condEntry->unk1)));
		}
	}

	if (arg0 == D_80149474) {
		D_80149474 = 0xFF;
	}

	if (i != -1) {
		missionEntry = D_80149B60[arg0][0];

		if (missionEntry[0x64] == 0x64) {
			if (func_800078B8_84B8(arg0, &D_8004D15C) == 0) {
				func_8001A650_1B250(0xC);
			}
		} else if (missionEntry[0x64] == 0x6E) {
		} else {
			func_8001A598_1B198(&missionEntry[0x64]);
		}

		func_80073DC0_82D70(foundEntry->unk4);
	}

	func_800078E4_84E4(arg0, &D_8004D150);
	func_800078CC_84CC(arg0, &D_8004D158);
	return func_80013460(), 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800765C4_85574.s")
#endif

// AI - Fail all active missions
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

// https://decomp.me/scratch/uwSSA
// CURRENT(200)
#ifdef NON_MATCHING
// AI - Mark a specific mission as completed
void func_8007679C_8574C(s16 arg0) {
	MissionCondEntry *entry;
	s32 i;

	entry = D_801494C0;
	i = 0x80;
	while (i--) {
		if (entry->unk1 == arg0 && entry->unk0 == 1) {
			func_80073DC0_82D70(entry->unk4);
			break;
		}
		entry++;
	}
	func_800078CC_84CC(arg0, &D_8004D150);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_8007679C_8574C.s")
#endif
