#include <ultra64.h>
#include "common.h"

typedef enum FrontEndState
{
		FE_STATE_INTRO_MOVIE = 0,
		FE_STATE_FILE_SELECT = 1,
		FE_STATE_INVALID_2 = 2,
		FE_STATE_CHOOSE_FILE_NAME = 3,
		FE_STATE_FILE_DETAILS = 4,
		FE_STATE_INVALID_5 = 5,
		FE_STATE_INVALID_6 = 6,
		FE_STATE_START_GAMEPLAY = 7,
		FE_STATE_FILE_OPTIONS = 8,
		FE_STATE_START_DEMO = 9,
		FE_STATE_UNUSED_START_GAMEPLAY_1 = 0xa,
		FE_STATE_UNUSED_START_GAMEPLAY_2 = 0xb,
		FE_STATE_UNUSED_START_GAMEPLAY_3 = 0xc,
		FE_STATE_CHANGE_AIM_OPTION = 0xd,
		FE_STATE_CHANGE_BLOOD_OPTION = 0xe,
		FE_STATE_REPLAY_LEVEL_SELECT = 0xf,
		FE_STATE_HIGH_SCORES = 0x10,
		FE_STATE_CHANGE_SFX_OPTION = 0x11,
		FE_STATE_CHANGE_MUSIC_OPTION = 0x12,
		FE_STATE_DELETE_FILE = 0x13,
		FE_STATE_COPY_FILE = 0x14,
		FE_STATE_PRESS_START = 0x15,
		FE_STATE_INVALID_16 = 0x16,
		FE_STATE_REPLAY_BOSS_SELECT = 0x17,
		FE_STATE_LANGUAGE_SELECT = 0x18
} FrontEndState;

// CURRENT(5)
#ifdef NON_MATCHING
s32 func_80070270_40720(s32 arg0) {
		switch (arg0) {
		case 1:
				func_800789E4_48E94();
				break;
		case 2:
				D_800476A2 = 1;
				return func_80082CBC_5316C(currentLevel - 2, &D_80052B2C->unk30);
		case 3:
				func_8007A038_4A4E8();
				break;
		case 4:
				func_800796D0_49B80(0, 0);
				break;
		case 5:
				func_800796D0_49B80(func_80070390_40840(), 0);
				break;
		case 6:
				func_80076504_469B4();
				break;
		case 7:
				func_8007685C_46D0C();
				break;
		case 8:
				return func_8007CFB4_4D464(1);
		case 9:
				return func_8007CFB4_4D464(0);
		case 10:
				return func_8007D2B0_4D760();
		case 11:
				D_800946DC_64B8C = FE_STATE_PRESS_START;
				func_800789E4_48E94();
				break;
		case 12:
		case 13:
		case 14:
				break;
		}

		return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070270_40720.s")
#endif

// calculatePlayersTotalScore
s32 func_80070390_40840(void) {
	s32 total;
	s32 i;
	D_80052A98[currentLevel - 1].score = D_80052B2C->unk30;
	D_80052A98[currentLevel - 1].humansKilled = D_8004816A;
	D_80052A98[currentLevel - 1].secondsElapsed = (u16)((u32)D_80052A90 / 1000U);
	total = 0;
	for (i = 0; i < 6; i++) {
		total += D_80052A98[i].score;
	}
	return total;
}

// Stores the current level's play time in seconds and returns the total play time across all levels.
s32 func_80070420_408D0(void) {
	s32 totalSecondsElapsed;
	s32 i;
	D_80052A98[currentLevel - 1].secondsElapsed = (u16)((u32)D_80052A90 / 1000U);
	totalSecondsElapsed = 0;
	for (i = 0; i < 6; i++){
		totalSecondsElapsed += D_80052A98[i].secondsElapsed;
	}

	return totalSecondsElapsed;
}

/**
 * @brief Finds a mission entry by mission id stored in `unk26`.
 */
MissionData* func_80070494_40944(s16 arg0) {
		s32 i;
	s32 newv;
	i = 0x29; do { do {
			newv = i;
			if (D_800D6DC0[newv].unk26 == arg0)
			{
				return (MissionData *)(&D_800D6DC0[newv]);
			}
		} while (i--);
		return 0;
	} while (0);
}

/**
 * @brief Clears mission frontend byte flag `unk1C` when it equals 1.
 */
void func_800704DC_4098C(void)
{
   s32 var_v1;
  int new_var;
  int new_var2;
  new_var = D_800D6DC0[var_v1].unk1C == 1;
  var_v1 = 0x29; do {
	  new_var = D_800D6DC0[var_v1].unk1C == 1;
	  new_var2 = new_var;
	  if (new_var2) {
		  D_800D6DC0[var_v1].unk1C = 0U;
	  }
  } while (var_v1--);
}

// https://decomp.me/scratch/TczFE
// CURRENT(545)
#ifdef NON_MATCHING
void func_80070514_409C4(s16 arg0)
{
  s32 var_v1;
  MissionData *temp_a0;
  var_v1 = 42;
  if (arg0 == D_800D74AA)
  {
	return;
  }
  temp_a0 = &D_800D6DC0[var_v1];
	while (var_v1-- && D_800D6DC0[var_v1].unk16) {
	}
  if (var_v1 == (-1))
  {
	osSyncPrintf(D_800AD7B4_7DC64);
	return;
  }
	temp_a0 = &D_800D6DC0[var_v1];
	// fake, forces * 4 correct
	if (temp_a0);
  temp_a0->unk0 = D_800909B0[arg0].unk0 * 4;
  temp_a0->unk2 = D_800909B0[arg0].unk2 * 4;
  temp_a0->unk4 = D_800909B0[arg0].unk4 * 4;
  temp_a0->unk6 = D_800909B0[arg0].unk6 * 4;
  temp_a0->unk8 = D_800909B0[arg0].unk8;
  temp_a0->unkA = D_800909B0[arg0].unkA * 4;
  temp_a0->unkC = D_800909B0[arg0].unkC * 4;
  temp_a0->unkE = D_800909B0[arg0].unkE * 4;
  temp_a0->unk10 = D_800909B0[arg0].unk10 * 4;
  temp_a0->unk12 = D_800909B0[arg0].unk12;
  temp_a0->unk14 = D_800909B0[arg0].unk14;
  temp_a0->unk16 = D_800909B0[arg0].unk16;
  if (D_800909B0[arg0].unk1C == 3)
  {
	temp_a0->unk1C = D_800909B0[arg0].unk1C = 0;
  }
  else
  {
	temp_a0->unk1C = D_800909B0[arg0].unk1C;
  }
  temp_a0->unk26 = arg0;
  temp_a0->unk28 = -1;
  switch (D_800313D0)
  {
	case 0:
	default:
	  temp_a0->unk1E = D_800909B0[arg0].unk1E;
	  break;

	case 2:
	  temp_a0->unk1E = D_800909B0[arg0].unk18;
	  break;

	case 1:
	  temp_a0->unk1E = D_800909B0[arg0].unk1A;
	  break;
  }

  temp_a0->unk20 = D_800909B0[arg0].unk20;
  if (arg0 == D_800D74A4)
  {
	D_800909B0[arg0].unk1C = 1;
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070514_409C4.s")
#endif

// CURRENT(5015)
#ifdef NON_MATCHING
MissionData* func_800706E8_40B98(s32 arg0) {
	s32 index;

	index = 0x29;
	if (D_800D7490 != 0) {
		while (index != 0) {
			if (D_800D6DC0[--index].unk16 == 0) {
				break;
			}
		}
	}

	if (index == -1) {
		osSyncPrintf(D_800AD7CC_7DC7C);
		return NULL;
	}

	{
		MissionData* entry = &D_800D6DC0[index];
		MissionData* source = &D_800909B0[(s16)arg0];
		u8 temp_v0;

		entry->unk0 = source->unk0 * 4;
		entry->unk2 = source->unk2 * 4;
		entry->unk4 = source->unk4 * 4;
		entry->unk6 = source->unk6 * 4;
		entry->unk8 = source->unk8;
		entry->unkA = source->unkA * 4;
		entry->unkC = source->unkC * 4;
		entry->unkE = source->unkE * 4;
		entry->unk12 = 0xFFFF;
		entry->unk14 = 0;
		entry->unk10 = source->unk10 * 4;
		entry->unk16 = source->unk16;

		if ((temp_v0 = source->unk1C) == 3) {
			source->unk1C = 0;
			entry->unk1C = 0;
		} else {
			entry->unk1C = temp_v0;
		}

		entry->unk26 = (s16)arg0;
		entry->unk28 = source->unk28;

		switch (D_800313D0_31FD0) {
		case 0:
		default:
			entry->unk1E = source->unk1E;
			break;
		case 1:
			entry->unk1E = source->unk1A;
			break;
		case 2:
			entry->unk1E = source->unk18;
			break;
		}

		entry->unk20 = source->unk20;
		if ((s16)arg0 == D_800D74A4) {
			func_800704DC_4098C();
			entry->unk1C = 1;
		}

		return entry;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800706E8_40B98.s")
#endif

/**
 * @brief Finds a mission entry by id, clamps `unk12` to 0x4000, and sets `unk14` to -0x400.
 */
void func_800708B8_40D68(short arg0)
{
  int new_var;
  MissionData *entry;
  entry = func_80070494_40944((s16) arg0);
  new_var = -0x400;
  if (entry != NULL)
  {
	if (entry->unk12 > 0x4000)
	{
	  entry->unk12 = 0x4000;
	}
	entry->unk14 = new_var;
  }
}

/**
 * @brief Finds a mission entry by id and clears three frontend fields.
 */
void func_80070904_40DB4(s16 arg0) {
	MissionData* entry;

	entry = func_80070494_40944((s16)arg0);
	if (entry != NULL) {
		entry->unk14 = 0;
		entry->unk12 = 0;
		entry->unk16 = 0;
	}
}

void func_80070940_40DF0(void)
{
	s32 i;
	i = 0x2A;
	while (i--) {
		D_800D6DC0[i].unk14 = 0;
		D_800D6DC0[i].unk12 = 0;
		D_800D6DC0[i].unk16 = 0;
	}
}

/**
 * @brief Clears transient mission fields, optionally fetches selected mission data, and tags active save entry state.
 */
MissionData* func_80070970_40E20(MissionData* entry, s32 hasSelection)
{
  int new_var;
  MissionData *selectedEntry;
  int new_var2;
  entry->unk12 = 0;
  entry->unk14 = 0;
  entry->unk16 = 0;
  new_var = hasSelection != 0;
  if (new_var)
  {
	selectedEntry = func_800706E8_40B98(D_800D74AA);
	new_var2 = selectedEntry->unk26 != (currentSaveFileIndex + 2);
	if (new_var2)
	{
	  selectedEntry->unk1C = 0;
	}
	else
	{
	  selectedEntry->unk1C = 1;
	  selectedEntry->unk28 = -1;
	}
	D_800D74AA = 0;
	return selectedEntry;
  }
  D_800D74AA = 0;
  return NULL;
}

/**
 * @brief Scans mission entries in reverse, clears the first entry in state 4, and eases others toward default values.
 */
void func_800709F0_40EA0(void)
{
  s32 i;
  i = 0x29; do
  {
	if (D_800D6DC0[i].unk16 == 4)
	{
	  func_80070970_40E20(&D_800D6DC0[i], 0);
		continue;
	}
	if (D_800D6DC0[i].unk12 > 0x4000)
	{
	  D_800D6DC0[i].unk12 = 0x4000;
	}
	D_800D6DC0[i].unk14 = -0x400;
  }
  while (i--);
}

void func_80070A8C_40F3C(s16 arg0)
{
  s32 temp_v0;
  s32 var_v1;
  s32 var_v2;
  if ((!arg0) != 0)
  {
  }
  var_v1 = 0x29; do {
	if (arg0 == D_800D6DC0[var_v1].unk26)
	{
	  D_800909B0[D_800D6DC0[var_v1].unk26].unk1C = 3;
	  D_800D6DC0[var_v1].unk1C = 3;
	}
	temp_v0 = var_v1;
  }
  while (var_v1--);
}

void func_80070AEC_40F9C(s16 arg0, s16 arg1) {
	u8 missionId;
	s32 i;
	i = 0x2A;
	while (i--) {
		missionId = D_800D6DC0[i].unk26;
		if (missionId >= arg0 && missionId <= arg1) {
			D_800909B0[missionId].unk1C = 3;
			D_800D6DC0[i].unk1C = 3;
		}  
	}
}

void func_80070B68_41018(s16 arg0) {
	u8 missionId;
	s32 i;

	i = 0x2A;
	while (i--) {
		missionId = D_800D6DC0[i].unk26;
		if (arg0 == missionId && D_800D6DC0[i].unk1C == 3) {
			D_800909B0[missionId].unk1C = 0;
			D_800D6DC0[i].unk1C = 0;
			D_800D6DC0[i].unk28 = 0;
		}
	}
}

void func_80070BD8_41088(s16 arg0, s16 arg1) {
	u8 missionId;
	s32 var_v1;

	var_v1 = 0x2A;
	while (var_v1--) {
		missionId = D_800D6DC0[var_v1].unk26;
		if ((s32)missionId >= arg0 && arg1 >= (s32)missionId && D_800D6DC0[var_v1].unk1C == 3) {
			D_800909B0[missionId].unk1C = 0;
			D_800D6DC0[var_v1].unk1C = 0;
			D_800D6DC0[var_v1].unk28 = 0;
		}
	}
}

/**
 * @brief If arg2 is divisible by 8 and arg2/8 is less than arg1, calls func_80070514 to process the resulting slot index.
 */
void func_80070C64_41114(s16 arg0, s16 arg1, s16 arg2)
{
  s32 temp_v0;
  if (!(arg2 & 7))
  {
	temp_v0 = arg2 >> 3;
	if (temp_v0 < arg1)
	{
	  func_80070514_409C4((s16) ((temp_v0 ^ 0) + arg0));
	}
  }
}

// CURRENT(9255)
#ifdef NON_MATCHING
void func_80070CC4_41174(void)
{
	s16 selectedFileIndex;
	MissionDataNav* selectedFileData;
	s32 playAltMoveSfx = 0;

	if (currentControllerStates[CONTROLLER_ONE].stick_x < 0x15 && currentControllerStates[CONTROLLER_ONE].stick_x >= -0x14 && !isButtonNewlyPressed(0, 0x300)) {
		D_80094824_64CD4 = 1;
		D_8009482C_64CDC = 0x1E;
	}

	if (currentControllerStates[CONTROLLER_ONE].stick_y < 0x15 && currentControllerStates[CONTROLLER_ONE].stick_y >= -0x14 && !isButtonNewlyPressed(0, 0xC00)) {
		D_80094828_64CD8 = 1;
		D_80094830_64CE0 = 0x1E;
	}

	selectedFileIndex = D_800D74A4;
	selectedFileData = ((MissionDataNav*)D_800909B0) + selectedFileIndex;

	if (D_80094824_64CD4 || --D_8009482C_64CDC == 0) {
		if (currentControllerStates[CONTROLLER_ONE].stick_x < -0x14 || isButtonNewlyPressed(0, 0x200)) {
			selectedFileIndex = selectedFileData->unk22;
			if (selectedFileIndex != 0) {
				while (1) {
					if (((MissionDataNav*)D_800909B0)[selectedFileIndex].unk1C == 3) {
						selectedFileIndex = ((MissionDataNav*)D_800909B0)[selectedFileIndex].unk22;
						if (selectedFileIndex != 0) {
							continue;
						}
					}
					break;
				}
			}
		} else if (currentControllerStates[CONTROLLER_ONE].stick_x >= 0x15 || isButtonNewlyPressed(0, 0x100)) {
			selectedFileIndex = selectedFileData->unk23;
			if (selectedFileIndex != 0) {
				while (((MissionDataNav*)D_800909B0)[selectedFileIndex].unk1C == 3) {
					selectedFileIndex = ((MissionDataNav*)D_800909B0)[selectedFileIndex].unk23;
					if (selectedFileIndex == 0) {
						break;
					}
				}
			}
		}
	}

	if (selectedFileIndex != D_800D74A4 && selectedFileIndex != 0) {
		D_800D74A4 = selectedFileIndex;
		D_80094824_64CD4 = 0;
		if (D_8009482C_64CDC < 8) {
			D_8009482C_64CDC = 8;
		}
		func_800153D8_15FD8(0xC9);
		return;
	}

	if (D_80094828_64CD8 || --D_80094830_64CE0 == 0) {
		if (currentControllerStates[CONTROLLER_ONE].stick_y >= 0x15 || isButtonNewlyPressed(0, 0x800)) {
			selectedFileIndex = selectedFileData->unk24;
			if (selectedFileIndex != 0) {
				while (((MissionDataNav*)D_800909B0)[selectedFileIndex].unk1C == 3) {
					selectedFileIndex = ((MissionDataNav*)D_800909B0)[selectedFileIndex].unk24;
					if (selectedFileIndex == 0) {
						break;
					}
				}
				playAltMoveSfx = 1;
			}
		} else if (currentControllerStates[CONTROLLER_ONE].stick_y < -0x14 || isButtonNewlyPressed(0, 0x400)) {
			selectedFileIndex = selectedFileData->unk25;
			if (selectedFileIndex != 0) {
				while (((MissionDataNav*)D_800909B0)[selectedFileIndex].unk1C == 3) {
					selectedFileIndex = ((MissionDataNav*)D_800909B0)[selectedFileIndex].unk25;
					if (selectedFileIndex == 0) {
						break;
					}
				}
			}
		}
	}

	if (selectedFileIndex != D_800D74A4 && selectedFileIndex != 0) {
		D_800D74A4 = selectedFileIndex;
		D_80094828_64CD8 = 0;
		if (D_80094830_64CE0 < 8) {
			D_80094830_64CE0 = 8;
		}
		if (playAltMoveSfx != 0) {
			func_800153D8_15FD8(0xCA);
		} else {
			func_800153D8_15FD8(0xC9);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070CC4_41174.s")
#endif

// CURRENT(6340)
#ifdef NON_MATCHING
void func_800710D8_41588(s16 arg0, s16 arg1) {
	s16 selectedMissionBefore;
	s32 i;

	D_800D74A8 = (D_800D74A4 - arg0) - 1;
	selectedMissionBefore = D_800D74A4;

	if (currentControllerStates[CONTROLLER_ONE].stick_x < 0x15 && currentControllerStates[CONTROLLER_ONE].stick_x >= -0x14 && !isButtonNewlyPressed(0, 0x300)) {
		D_80094834_64CE4 = 1;
		D_8009483C_64CEC = 0x1E;
	}

	if (currentControllerStates[CONTROLLER_ONE].stick_y < 0x15 && currentControllerStates[CONTROLLER_ONE].stick_y >= -0x14 && !isButtonNewlyPressed(0, 0xC00)) {
		D_80094838_64CE8 = 1;
		D_80094840_64CF0 = 0x1E;
	}

	if (D_80094834_64CE4 || --D_8009483C_64CEC == 0) {
		if (currentControllerStates[CONTROLLER_ONE].stick_x < -0x14 || isButtonNewlyPressed(0, 0x200)) {
			switch (arg1) {
			case 2:
					i = 0xD;
				do {
						if (D_800D74AC <= 0) {
							D_800D74AC = 0xD;
						} else {
						D_800D74AC--;
						}
						i--;

					if (D_800AED78[D_800D74AC] != 0 && D_800942E0_64790[((((currentLevel << 2) - currentLevel) << 2) + currentLevel - 13) + D_800D74AC].displayList != NULL) {
						break;
					}
				} while ((s16)i >= 0);

					if (D_800D74AC != 0) {
						func_80070494_40944(0x4E)->unk28 = 0x64;
						func_800153D8_15FD8(0xCB);
					}
				break;
			case 1:
				i = 8;
				do {
					if (D_800D74AE < 8) {
						D_800D74AE++;
					} else {
						D_800D74AE = 0;
					}
					i--;
				} while (weaponSlots[D_800D74AE] == 0 && (s16)i >= 0);

				func_80070494_40944(0x4D)->unk28 = 0x64;
				func_800153D8_15FD8(0xCB);
				break;
			default:
				func_800153D8_15FD8(0xC9);
				D_800D74A4 = 0x48;
				break;
			}

			D_80094834_64CE4 = 0;
			if (D_8009483C_64CEC < 8) {
				D_8009483C_64CEC = 8;
			}
		}

		if (currentControllerStates[CONTROLLER_ONE].stick_x >= 0x15 || isButtonNewlyPressed(0, 0x100)) {
			switch (arg1) {
			case 2:
					i = 0xD;
				while (1) {
						if (D_800D74AC >= 0xD) {
							D_800D74AC = 0;
						} else {
						D_800D74AC++;
						}
						i--;

					if (D_800AED78[D_800D74AC] != 0) {
						if (D_800942E0_64790[((((currentLevel << 2) - currentLevel) << 2) + currentLevel - 13) + D_800D74AC].displayList != NULL) {
							break;
						}
					}

					if ((s16)i >= 0) {
						continue;
					}

					break;
				}

					if (D_800D74AC != 0) {
						func_80070494_40944(0x4E)->unk28 = 0x64;
						func_800153D8_15FD8(0xCB);
					}
				break;
			case 1:
				i = 8;
				do {
					if (D_800D74AE > 0) {
						D_800D74AE--;
					} else {
						D_800D74AE = 7;
					}
					i--;
				} while (weaponSlots[D_800D74AE] == 0 && (s16)i >= 0);

				func_80070494_40944(0x4D)->unk28 = 0x64;
				func_800153D8_15FD8(0xCB);
				break;
			default:
				(D_800D74A4 = 0x49), func_800153D8_15FD8(0xC9);
				break;
			}

			D_80094834_64CE4 = 0;
			if (D_8009483C_64CEC < 8) {
				D_8009483C_64CEC = 8;
			}
		}
	}

	if (D_80094838_64CE8 || --D_80094840_64CF0 == 0) {
		if (currentControllerStates[CONTROLLER_ONE].stick_y >= 0x15 || isButtonNewlyPressed(0, 0x800)) {
			if (arg1 == 0) {
				D_800D74A4 = 0x48;
			}

			D_80094838_64CE8 = 0;
			if (D_80094840_64CF0 < 8) {
				D_80094840_64CF0 = 8;
			}

			if (selectedMissionBefore != D_800D74A4) {
				func_800153D8_15FD8(0xCA);
			}
		}

		if (currentControllerStates[CONTROLLER_ONE].stick_y < -0x14 || isButtonNewlyPressed(0, 0x400)) {
			D_80094838_64CE8 = 0;
			if (arg1 == 0) {
				D_800D74A4 = 0x4A;
			}

			if (D_80094840_64CF0 < 8) {
				D_80094840_64CF0 = 8;
			}

			if (selectedMissionBefore != D_800D74A4) {
				func_800153D8_15FD8(0xC9);
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800710D8_41588.s")
#endif

void func_8007166C_41B1C(void)
{
	MissionData *entryA;
	MissionData *entryB;

	entryA = func_80070494_40944(D_800D74A4);
	entryB = func_80070494_40944(D_800D74A6);

	if (entryA != NULL && ((entryA != entryB) || (entryB == NULL)) && entryA->unk1C != 3)
	{
		D_800D74A6 = D_800D74A4;

		if (entryB != NULL && entryB->unk16 == 4)
		{
			func_80070970_40E20(entryB, 1);
		}

		func_800704DC_4098C();
		entryA->unk1C = 1;
		entryA->unk28 = 0;

		if (entryA->unk12 >= 0x4001)
		{
			entryA->unk12 = 0x4000;
			entryA->unk14 = 0x400;
		}
	}
}

#ifdef NON_MATCHING
void func_80071738_41BE8(void) {

	s32 i;
	i = 0x29; do { D_800D6DC0[i].unk16 = 0; } while (i--);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80071738_41BE8.s")
#endif

// https://decomp.me/scratch/DRRoV
// CURRENT(110)
#ifdef NON_MATCHING
s32 func_80071760_41C10(s32 arg0)
{
	s32 totalWidth;
	s16 digitCount;
	s16 i;
	s16 j;
	s32 value;
	s32 divisor;
	s32 pad;
	s8 chpad;
	s8 chpad2;
	s8 ch;
	s8 chpad3;
	s32 textWidth;
	digitCount = 0;
	totalWidth = 0;
	value = arg0;
	textWidth = func_8000A2B8_AEB8(&D_800AD7E4_7DC94, 0) * 0x1C;
	if (arg0 > 0)
	{
		do
		{
			value = value / 10.0f;
			digitCount++;
		} while (value > 0);
		ch = 0;
	}

	if (digitCount > 0)
	{
		i = 0;
		do
		{
			divisor = 1;
			for (j = 0; j < i; j++)
			{
				divisor *= 10;
			}

			value = ((f32)arg0) / divisor;
			ch = (value - (((s32)(value / 10.0f)) * 10)) + '0';
			totalWidth += func_8000A2B8_AEB8(&ch, 0) * 4;
		} while ((++i) < digitCount);
	}
	if (arg0 == 0)
	{
		totalWidth = func_8000A2B8_AEB8(&D_800AD7E8_7DC98, 0) * 4;
	}
	return textWidth - totalWidth;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80071760_41C10.s")
#endif

// CURRENT(17165)
#ifdef NON_MATCHING
void func_80071900_41DB0(s32 arg0, s32 arg1, f32 arg2, f32 arg3) {
	s32 i;
	s32 slotCol;
	s32 slotRow;
	u8* weaponSlot;
	s32 baseX;
	s32 baseY;
	s32 sizeX;
	s32 sizeY;
	s16 posX;
	s16 posY;
	s32 texIndex;

	i = 0;
	weaponSlot = &weaponSlots[7];
	do {
		u8 weapon = *weaponSlot;

		if (weapon == 0) {
			continue;
		}

		slotCol = i % 3;
		slotRow = i / 3;
		baseX = arg0 - (s16)((64.0f * arg2) / 2.0f);
		baseY = arg1 - (s16)((64.0f * arg3) / 2.0f);
		posX = (s16)(baseX + ((slotCol * 32.0) * arg2));
		i = (i + 1) & 0xFF;
		posY = (s16)(baseY + ((slotRow * 32.0) * arg3));
		texIndex = D_80031474[weapon];
		sizeX = (s16)(12.0f * arg2);
		sizeY = (s16)(12.0f * arg3);

		gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
		gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_80260500);
		gDPTileSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 255);
		gDPPipeSync(D_8005BB2C++);

		if (weapon != 0) {
			gDPSetPrimColor(D_8005BB2C++, 0, 1, 0xD2, 0xAA, 0x00, 0xFF);
		} else {
			gDPSetPrimColor(D_8005BB2C++, 0, 1, 0x46, 0x23, 0x00, 0xFF);
		}

		gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
		gDPSetRenderMode(D_8005BB2C++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
		gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, (u32)(D_8025CCC0 + (texIndex * 0x240)) & 0x1FFFFFFF);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 287, 683);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 3, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (23 << 2), (23 << 2));
		gDPPipeSync(D_8005BB2C++);

		gSPTextureRectangle(D_8005BB2C++,
			((posX - sizeX) + 0xC) * 4,
			((posY - sizeY) + 0xC) * 4,
			((posX + sizeX) + 0xC) * 4,
			((posY + sizeY) + 0xC) * 4,
			G_TX_RENDERTILE, 0, 0,
			(s32)((1.0f / arg2) * 1024.0f),
			(s32)((1.0f / arg3) * 1024.0f));

		gDPPipeSync(D_8005BB2C++);
	} while (weaponSlot-- >= weaponSlots);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80071900_41DB0.s")
#endif

 // CURRENT(2155)
#ifdef NON_MATCHING
void func_80071E80_42330(s16 arg0, s16 arg1, f32 arg2, f32 arg3) {
	volatile s32 textureIndex;
	s32 weaponType;
	s32 sizeX;
	s32 sizeY;
	s16 posX;
	s16 posY;

	weaponType = weaponSlots[D_800D74AE];
	if (weaponType == 0) {
		return;
	}

	posX = arg0;
	posY = arg1;

	textureIndex = D_80031474[weaponType];

	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_80260500);
	gDPTileSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 255);
	gDPPipeSync(D_8005BB2C++);

	{
		f32 scale;

		scale = 2.0f;
		arg2 = arg2 * scale;
		arg3 = arg3 * scale;
	}

	if (weaponSlots[D_800D74AE] != 0) {
		gDPSetPrimColor(D_8005BB2C++, 1, 0, 0x00, 0xAA, 0xD2, 0xFF);
	} else {
		gDPSetPrimColor(D_8005BB2C++, 1, 0, 0x00, 0x23, 0x46, 0xFF);
	}

	gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, (u32)(D_8025CCC0 + (textureIndex * 0x240)) & 0x1FFFFFFF);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 287, 683);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 3, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (23 << 2), (23 << 2));

	sizeX = (s32)(12.0f * arg2);
	sizeY = (s32)(12.0f * arg3);

	gDPPipeSync(D_8005BB2C++);

	gSPTextureRectangle(D_8005BB2C++,
		((posX - sizeX) + 0xC) * 4,
		((posY - sizeY) + 0xC) * 4,
		((posX + sizeX) + 0xC) * 4,
		((posY + sizeY) + 0xC) * 4,
		G_TX_RENDERTILE, 0, 0,
		(s32)((1.0f / arg2) * 1024.0f),
		(s32)((1.0f / arg3) * 1024.0f));

	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80071E80_42330.s")
#endif

void func_800722A4_42754(void) {
	u16 perspNorm;
	s16 i;

	for (i = 0; i < 12; i++) {
		D_800AED78[i] = func_8000726C_7E6C((s64)i);
	}

	D_800AED78[0xB] = D_8004DC5C;
	D_800AED78[0xC] = D_8004DC5E;

	gDPPipeSync(D_8005BB2C++);
	gSPDisplayList(D_8005BB2C++, (Gfx *)((u32)D_800311A8 & 0x1FFFFFFF));
	func_80004F64_5B64();
	gSPDisplayList(D_8005BB2C++, (Gfx *)((u32)D_800311D0 & 0x1FFFFFFF));
	gDPSetColorImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, (void *)((u32)D_8005BB48[D_80031B84_32784] & 0x1FFFFFFF));

	guPerspective((Mtx *)(D_8005BB20 + 0x180), &perspNorm, 45.0f, 1.3333334f, 5.0f, 1000.0f, 1.0f);
	gSPPerspNormalize(D_8005BB2C++, perspNorm);

	guLookAt((Mtx *)(D_8005BB20 + 0x200), 0.0f, 0.0f, 100.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
	gSPMatrix(D_8005BB2C++, (u32)(D_8005BB20 + 0x180) & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
	gSPMatrix(D_8005BB2C++, (u32)(D_8005BB20 + 0x200) & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gDPSetCombineLERP(D_8005BB2C++, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gSPNumLights(D_8005BB2C++, 1);
	gSPLight(D_8005BB2C++, &D_800942A8_64758, 1);
	gSPLight(D_8005BB2C++, &D_800942A0_64750, 2);
	gSPClearGeometryMode(D_8005BB2C++, 0xFFFFFFFF);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_LIGHTING | G_SHADING_SMOOTH);
}

#ifdef NON_MATCHING
// CURRENT(2310)
void func_80072604_42AB4(s32 arg0, s32 arg1, s32 arg2, f32 arg3) {
	s32 padTop0;
	s32 padTop1;
	s32 padTop2;
	u16 spD4;
	Unk80052B40 spBC;
	Unk80052B40 spB4;
	Unk80052B40 spAC;
	s32 sp9C;
	s32 xPos;
	s32 scaleInt;
	f32 scale;
	s16 i;
	s32 unused0;
	s32 unused1;
	s32 unused2;
	s32 count;
	s32 remaining;
	s32 mask;
	Gfx* displayList;

	D_80094844_64CF4 += 0x2D8;
	count = D_8004DC5C;
	remaining = count;
	mask = 0x1FFFFFFF;
	sp9C = arg0;
	spD4 = 0;

	switch (remaining) {
	case 1:
		sp9C = arg0 - 0x78;
		spD4 = 0x50;
		break;
	case 2:
		sp9C = arg0 - 0x55;
		spD4 = 0x50;
		break;
	case 3:
		sp9C = arg0 - 0x28;
		spD4 = 0x50;
		break;
	}

	if (count > 0) {
		i = 0;
		do {
			displayList = D_800942D8_64788;
			if (displayList != NULL) {
				scale = (f32)((f64)arg3 * 1.5);
				scale = D_800942DC_6478C * scale;
				xPos = ((u32)spD4 * (u32)(3 - remaining)) + sp9C;
				remaining--;

				gDPPipeSync(D_8005BB2C++);
				gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
				gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);

				func_800039D0_45D0(NULL, NULL, &D_800311A0, D_8005BB38);
				gSPMatrix(D_8005BB2C++, D_8005BB38 & mask, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
				D_8005BB38 += 0x40;

				scaleInt = (s32)(256.0f * scale);
				spBC.unk0 = xPos;
				spBC.unk2 = arg1;
				spBC.unk4 = arg2;

				spAC.unk0 = D_80094844_64CF4;
				spAC.unk2 = 0;
				spAC.unk4 = 0;

				spB4.unk0 = scaleInt;
				spB4.unk2 = scaleInt;
				spB4.unk4 = scaleInt;

				func_800039D0_45D0(&spBC, &spAC, &spB4, D_8005BB38);

				gSPMatrix(D_8005BB2C++, D_8005BB38 & mask, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				D_8005BB38 += 0x40;
				gSPDisplayList(D_8005BB2C++, (Gfx *)((u32)displayList & mask));
				gDPPipeSync(D_8005BB2C++);

				count = D_8004DC5C;
			}

			i++;
		} while (++i < count);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80072604_42AB4.s")
#endif

// CURRENT(1396)
#ifdef NON_MATCHING
void func_800728F4_42DA4(s16 arg0, s16 arg1, s16 arg2, f32 arg3) {
	Unk80052B40 spA4;
	Unk80052B40 sp9C;
	Unk80052B40 sp94;
	s32 unused0;
	s32 unused1;
	s32 unused2;
	s32 temp;
	s32 varS3;
	s32 varS4;
	s16 varS5;
	u32 mask;
	Gfx* tempS6;

	temp = (s32) ((f32) ((f64) arg3 * D_800AE518_7E9C8) * 256.0f);
	varS3 = 0;
	varS4 = D_8004DC5E;
	varS5 = 0;
	mask = 0x1FFFFFFF;
	spA4.unk0 = arg0;
	spA4.unk2 = arg1;
	spA4.unk4 = arg2;
	sp9C.unk0 = (s16) temp;
	sp9C.unk2 = (s16) temp;
	sp9C.unk4 = (s16) temp;

	do {
		tempS6 = D_800942D0_64780;
		if ((varS4 != 0) && (tempS6 != NULL)) {
			gDPPipeSync(D_8005BB2C++);
			varS4--;
			gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
		} else {
			gDPPipeSync(D_8005BB2C++);
			gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
		}

		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
		func_800039D0_45D0(NULL, NULL, &D_800311A0, D_8005BB38);
		gSPMatrix(D_8005BB2C++, D_8005BB38 & mask, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

		sp94.unk0 = 0;
		sp94.unk4 = 0x2000;
		D_8005BB38 += 0x40;
		sp94.unk2 = D_80094848_64CF8 + varS3;
		func_800039D0_45D0(&spA4, &sp94, &sp9C, D_8005BB38);

		gSPMatrix(D_8005BB2C++, D_8005BB38 & mask, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		D_8005BB38 += 0x40;
		gSPDisplayList(D_8005BB2C++, (Gfx *)((u32)tempS6 & mask));
		varS5++;
		varS3 += 0x1555;
		gDPPipeSync(D_8005BB2C++);
	} while (varS5 < 0xC);

	D_80094848_64CF8 = D_80094848_64CF8 + 0xB6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800728F4_42DA4.s")
#endif

// Checks if selected inventory item is 0xb (weapon crystals)
#ifdef NON_MATCHING
// CURRENT(2883)
void func_80072B68_43018(s32 arg0, s32 arg1, s32 arg2, f32 arg3) {
	s32 unusedPad0;
	s32 unusedPad1;
	s32 unusedPad2;
	s32 unusedPad3;
	Unk80052B40 sp60;
	Unk80052B40 sp58;
	Unk80052B40 sp50;
	FrontendItemRenderData* itemEntry;
	Gfx* displayList;
	s32 displayListAddr;
	s32 matrixAddr;
	s32 scaleInt;
	f32 itemScale;

	func_800722A4_42754();

	if (D_800D74AC == 0xB) {
		func_80072604_42AB4(-0xE6, -0x32, -0x190, arg3);
		return;
	}

	if (D_800D74AC == 0xC) {
		func_800728F4_42DA4(-0xB4, -0x32, -0x190, arg3);
		return;
	}

	if (D_800D74AC == 0) {
		return;
	}

	itemEntry = &D_800942E0_64790[((currentLevel * 13) + D_800D74AC) - 13];
	displayList = itemEntry->displayList;
	if ((D_800AED78[D_800D74AC] == 0) || (displayList == NULL)) {
		return;
	}

	D_8009484C_64CFC = D_8009484C_64CFC + 0x16C;
	itemScale = itemEntry->scale * 2.0f;
	arg3 = itemScale * arg3;
	displayListAddr = (s32)displayList;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	matrixAddr = D_8005BB38;
	func_800039D0_45D0(NULL, NULL, &D_800311A0, matrixAddr);

	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	sp60.unk0 = arg0;
	sp60.unk2 = arg1;
	sp60.unk4 = arg2;

	sp50.unk0 = D_8009484C_64CFC;
	sp50.unk2 = 0;
	sp50.unk4 = 0;

	scaleInt = 256.0f * arg3;
	sp58.unk0 = scaleInt;
	sp58.unk2 = scaleInt;
	sp58.unk4 = scaleInt;

	matrixAddr = D_8005BB38;
	func_800039D0_45D0(&sp60, &sp50, &sp58, matrixAddr);

	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gSPDisplayList(D_8005BB2C++, displayListAddr & 0x1FFFFFFF);
	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80072B68_43018.s")
#endif
// display inventory models
#ifdef NON_MATCHING
void func_80072E18_432C8(s32 arg0, s32 arg1, s32 arg2, f32 arg3) {
	Unk80052B40 spC4;
	Unk80052B40 spBC;
	Unk80052B40 spB4;
	FrontendItemRenderData* itemEntry;
	Gfx* displayList;
	s32 scaleInt;
	s32 itemCount;
	s16 i;
	u32 xOffset;
	u32 yOffset;
	f32 itemScale;

	func_800722A4_42754(arg3);
	D_80094850_64D00 += 0x2D8;

	itemCount = 0;
	for (i = 0; i < 0xD; i++) {
		itemEntry = &D_800942E0_64790[((currentLevel * 13) + i) - 13];
		displayList = itemEntry->displayList;
		if ((D_800AED78[i] != 0) && (displayList != NULL)) {
			xOffset = ((((itemCount % 3) * 0x5A) - 0x5A) & 0xFFFF);
			yOffset = ((((itemCount / 3) * -0x50) + 0x50) & 0xFFFF);
			itemScale = itemEntry->scale * arg3;
			itemCount++;

			gDPPipeSync(D_8005BB2C++);
			gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
			gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);

			func_800039D0_45D0(NULL, NULL, &D_800311A0, D_8005BB38);
			gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
			D_8005BB38 += 0x40;

			spC4.unk0 = (s16) (s32) ((f32) arg0 + ((f32) xOffset * arg3));
			spC4.unk2 = (s16) (s32) ((f32) arg1 + ((f32) yOffset * arg3));
			spC4.unk4 = arg2;

			spB4.unk0 = D_80094850_64D00;
			spB4.unk2 = 0;
			spB4.unk4 = 0;

			scaleInt = (s32) (256.0f * itemScale);
			spBC.unk0 = scaleInt;
			spBC.unk2 = scaleInt;
			spBC.unk4 = scaleInt;

			func_800039D0_45D0(&spC4, &spB4, &spBC, D_8005BB38);
			gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			D_8005BB38 += 0x40;
			gSPDisplayList(D_8005BB2C++, (Gfx *)((u32)displayList & 0x1FFFFFFF));
			gDPPipeSync(D_8005BB2C++);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80072E18_432C8.s")
#endif


#ifdef NON_MATCHING
void func_800731A8_43658(void) {
	void *sp114;
	s32 sp110;
	f32 spEC;
	s16 spE8;
	u8 spE7;
	u8 spE6;
	u8 spE5;
	u8 *var_s4;
	u8 *var_t6;
	s16 temp_a1;
	s16 temp_fp;
	s16 temp_s0;
	s16 temp_s3;
	s16 temp_s6;
	s16 temp_v0;
	s16 temp_v0_13;
	s16 temp_v0_2;
	s16 temp_v0_4;
	s16 temp_v0_7;
	s16 temp_v1_11;
	s16 temp_v1_12;
	s16 temp_v1_6;
	s16 temp_v1_9;
	s16 var_a1;
	s16 var_s0_2;
	s32 temp_v0_10;
	s32 temp_v0_11;
	s32 temp_v0_12;
	s32 temp_v0_14;
	s32 temp_v0_5;
	s32 temp_v0_6;
	s32 temp_v0_8;
	s32 temp_v0_9;
	s32 temp_v1_4;
	s32 temp_v1_5;
	s32 temp_v1_7;
	s32 temp_v1_8;
	s32 var_s0;
	s32 var_t0;
	s32 var_t0_2;
	s32 var_t1_2;
	s32 var_t3_2;
	s32 var_v0;
	s32 var_v0_2;
	u8 temp_v0_3;
	u8 var_a0;
	u8 var_ra;
	u8 var_ra_2;
	u8 var_t3;
	u8 var_t4;
	u8 var_t4_2;
	u8 var_t4_3;
	u8 var_t5;
	u8 var_t5_2;
	u8 var_t5_3;

	var_s4 = &D_800D6DC0;
	func_800038E0_44E0();
	D_800946E0_64B90 += 0x320;
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_LIGHTING);
	var_s0 = 0x29;
	do {
		if (*(u8 *)((u8 *)(var_s4) + (0x16)) != 0) {
			temp_fp = func_800067B4_73B4(*(s16 *)((u8 *)(var_s4) + (0)), *(s16 *)((u8 *)(var_s4) + (2)), *(u16 *)((u8 *)(var_s4) + (0x12)), 0, 0);
			temp_s3 = func_800067B4_73B4(*(s16 *)((u8 *)(var_s4) + (4)), *(s16 *)((u8 *)(var_s4) + (6)), *(u16 *)((u8 *)(var_s4) + (0x12)), 0, 0);
			temp_s6 = func_800067B4_73B4(*(s16 *)((u8 *)(var_s4) + (0xE)), *(s16 *)((u8 *)(var_s4) + (0x10)), *(u16 *)((u8 *)(var_s4) + (0x12)), 0, 0);
			sp110 = var_s0;
			temp_v0 = func_800067B4_73B4(*(s16 *)((u8 *)(var_s4) + (0xA)), *(s16 *)((u8 *)(var_s4) + (0xC)), *(u16 *)((u8 *)(var_s4) + (0x12)), 0, 0);
			if (*(s16 *)((u8 *)(var_s4) + (0xC)) == 0) {

			}
			temp_v0_2 = *(s16 *)((u8 *)(var_s4) + (0x10));
			if (temp_v0_2 == 0) {
				spEC = 0.0f;
			} else {
				spEC = (f32) temp_s6 / (f32) temp_v0_2;
			}
			temp_v0_3 = *(u8 *)((u8 *)(var_s4) + (0x1C));
			switch (temp_v0_3) {
			case 1:
				temp_v0_4 = *(s16 *)((u8 *)(var_s4) + (0x28));
				if (temp_v0_4 == -1) {
					D_80094858_64D08 = 0;
				} else if (temp_v0_4 != 0xAA) {
					*(s16 *)((u8 *)(var_s4) + (0x28)) = 0xAA;
					D_80094858_64D08 = 0x64;
				}
				temp_a1 = D_80094858_64D08 + 0x23;
				if ((s32) D_80094858_64D08 > 0) {
					var_a0 = (D_80094858_64D08 - 0xA) & 0xFF;
					var_a1 = temp_a1;
					D_800946E0_64B90 = 0x4000;
					var_t3 = var_a0;
				} else {
					var_t3 = D_80094858_64D08;
					var_a0 = var_t3;
					var_a1 = (s32) (((f64) (f32) sins((u16) D_800946E0_64B90, temp_a1) / 32768.0) * D_800AE520_7E9D0) + var_t3;
				}
				temp_v0_5 = var_a1 + 0xFF;
				if (var_a1 < 0) {
					var_ra = 0;
				} else {
					var_ra = var_a1 & 0xFF;
				}
				temp_v1_4 = var_a1 + 0x7F;
				if (temp_v0_5 >= 0x100) {
					var_t5 = 0xFF;
				} else {
					var_t5 = temp_v0_5 & 0xFF;
				}
				if (temp_v1_4 >= 0x100) {
					var_t4 = 0xFF;
				} else {
					var_t4 = temp_v1_4 & 0xFF;
				}
				temp_v0_6 = var_a0 + 0xE6;
				if (temp_v0_6 >= 0x100) {
					var_t0 = 0xFF;
				} else {
					var_t0 = temp_v0_6;
				}
				temp_v1_5 = var_a1 + 0xAA;
				if (temp_v1_5 >= 0x100) {
					var_v0 = 0xFF;
				} else {
					var_v0 = temp_v1_5;
				}
				gDPSetPrimColor(D_8005BB2C++, 0, 0, var_t3, (u8)var_t0, (u8)var_t0, (u8)var_v0);
				spE7 = var_ra;
				D_80094858_64D08 = var_t3;
				spE6 = var_t5;
				spE5 = var_t4;
				func_800092B8_9EB8(temp_fp, temp_s3, (s16) (temp_fp + temp_v0), (s16) (temp_s3 + temp_s6), 2);
				var_t4_2 = var_t4;
				var_t5_2 = var_t5;
				break;
			case 3:
				spE5 = 0x28;
				spE6 = 0x50;
				spE7 = 0;
				func_800092B8_9EB8(temp_fp, temp_s3, (s16) (temp_fp + temp_v0), (s16) (temp_s3 + temp_s6), 1);
				var_t4_2 = 0x28;
				var_t5_2 = 0x50;
				break;
			case 2:
				temp_v0_7 = *(s16 *)((u8 *)(var_s4) + (0x28));
				if (temp_v0_7 > 0) {
					temp_v1_6 = temp_v0_7 - 5;
					if (temp_v1_6 > 0) {
						*(s16 *)((u8 *)(var_s4) + (0x28)) = temp_v1_6;
					} else {
						*(s16 *)((u8 *)(var_s4) + (0x28)) = 0;
					}
				}
				temp_v1_7 = *(s16 *)((u8 *)(var_s4) + (0x28)) + 0x7F;
				if (temp_v1_7 >= 0x100) {
					var_ra_2 = 0xFF;
				} else {
					var_ra_2 = temp_v1_7 & 0xFF;
				}
				temp_v0_8 = *(s16 *)((u8 *)(var_s4) + (0x28)) + 0xC8;
				temp_v1_8 = *(s16 *)((u8 *)(var_s4) + (0x28)) + 0xAA;
				if (temp_v0_8 >= 0x100) {
					var_t5_3 = 0xFF;
				} else {
					var_t5_3 = temp_v0_8 & 0xFF;
				}
				temp_v0_9 = *(s16 *)((u8 *)(var_s4) + (0x28)) + 0xDC;
				if (temp_v0_9 >= 0x100) {
					var_t4_3 = 0xFF;
				} else {
					var_t4_3 = temp_v0_9 & 0xFF;
				}
				temp_v0_10 = *(s16 *)((u8 *)(var_s4) + (0x28)) + 0xF0;
				if (temp_v0_10 >= 0x100) {
					var_t3_2 = 0xFF;
				} else {
					var_t3_2 = temp_v0_10;
				}
				temp_v0_11 = *(s16 *)((u8 *)(var_s4) + (0x28)) + 0x96;
				if (temp_v0_11 >= 0x100) {
					var_t1_2 = 0xFF;
				} else {
					var_t1_2 = temp_v0_11;
				}
				temp_v0_12 = *(s16 *)((u8 *)(var_s4) + (0x28)) + 0x8C;
				if (temp_v0_12 >= 0x100) {
					var_t0_2 = 0xFF;
				} else {
					var_t0_2 = temp_v0_12;
				}
				if (temp_v1_8 >= 0x100) {
					var_v0_2 = 0xFF;
				} else {
					var_v0_2 = temp_v1_8;
				}
				gDPSetPrimColor(D_8005BB2C++, 0, 0, (u8)var_t0_2, (u8)var_t1_2, (u8)var_t3_2, (u8)var_v0_2);
				spE7 = var_ra_2;
				spE6 = var_t5_3;
				spE5 = var_t4_3;
				func_800092B8_9EB8(temp_fp, temp_s3, (s16) (temp_fp + temp_v0), (s16) (temp_s3 + temp_s6), 0);
				var_t4_2 = var_t4_3;
				var_t5_2 = var_t5_3;
				break;
			default:
				temp_v0_13 = *(s16 *)((u8 *)(var_s4) + (0x28));
				if (temp_v0_13 > 0) {
					temp_v1_9 = temp_v0_13 - 5;
					if (temp_v1_9 > 0) {
						*(s16 *)((u8 *)(var_s4) + (0x28)) = temp_v1_9;
					} else {
						*(s16 *)((u8 *)(var_s4) + (0x28)) = 0;
					}
					gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x00, 0xE6, 0xE6, *(s16 *)((u8 *)(var_s4) + (0x28)) & 0xFF);
					spE7 = 0x26;
					spE6 = 0x94;
					spE5 = 0x46;
					func_800092B8_9EB8(temp_fp, temp_s3, (s16) (temp_fp + temp_v0), (s16) (temp_s3 + temp_s6), 2);
					var_t4_2 = 0x46;
					var_t5_2 = 0x94;
				} else {
					spE7 = 0x26;
					spE5 = 0x46;
					spE6 = 0x94;
					func_800092B8_9EB8(temp_fp, temp_s3, (s16) (temp_fp + temp_v0), (s16) (temp_s3 + temp_s6), 1);
					var_t4_2 = 0x46;
					var_t5_2 = 0x94;
				}
				break;
			}
			if (((s32) *(u16 *)((u8 *)(var_s4) + (0x12)) >= 0x2001) || ((*(s16 *)((u8 *)(var_s4) + (0xC)) == *(s16 *)((u8 *)(var_s4) + (0xA))) && (*(s16 *)((u8 *)(var_s4) + (0x10)) == *(s16 *)((u8 *)(var_s4) + (0xE)))) || (*(u8 *)((u8 *)(var_s4) + (0x26)) == 0x32)) {
				temp_v1_11 = *(s16 *)((u8 *)(var_s4) + (0xC));
				if ((*(u8 *)((u8 *)(var_s4) + (0x26)) == 0x32) && (*(s16 *)((u8 *)(var_s4) + (0xA)) != 0) && (temp_v1_11 != 0)) {
					var_s0_2 = 0x400;
				} else {
					var_s0_2 = (s16) (s32) ((f32) (temp_v0 << 0xA) / (f32) temp_v1_11);
				}
				spE8 = (s16) (s32) ((f32) (temp_s6 << 0xA) / (f32) *(s16 *)((u8 *)(var_s4) + (0x10)));
				drawText(&D_800AD7EC_7DC9C, spE7, (s16) var_t5_2, (void *) var_t4_2, 0xFF);
				drawText(&D_800AD7F4_7DCA4, (u8) var_s0_2, spE8, temp_fp + *(s16 *)((u8 *)(var_s4) + (0x1E)) + D_8009485C_64D0C, temp_s3 + *(s16 *)((u8 *)(var_s4) + (0x20)));
				switch (D_800313D0_31FD0) {
				default:
				case 0:
					var_t6 = &D_800920A0_62550;
					D_800AED70 = &D_800918A0_61D50;
block_87:
					D_800AED74 = var_t6;
					break;
				case 1:
					D_800AED70 = &D_800921A0_62650;
					D_800AED74 = &D_800929A0_62E50;
					break;
				case 2:
					var_t6 = &D_800932A0_63750;
					D_800AED70 = &D_80092AA0_62F50;
					goto block_87;
				}
				switch (temp_v1_12 = *(s16 *)((u8 *)(var_s4) + (8))) {
				case 0x7:
					drawText(&D_800AD854_7DD04, 0x14U, -1, temp_fp + *(s16 *)((u8 *)(var_s4) + (0x1E)) + func_80071760_41C10(D_800D6D98) + 0x2C, D_800D6D98);
					break;
				case 0x8:
					drawText(&D_800AD880_7DD30, 0x14U, -1, temp_fp + *(s16 *)((u8 *)(var_s4) + (0x1E)) + func_80071760_41C10(D_800D6D9C) + 0x2C, D_800D6D9C);
					break;
				case 0x9:
				case 0xA:
				case 0xB:
				case 0xC:
				case 0xD:
				case 0xE:
				case 0xF:
				case 0x10:
				case 0x11:
					drawText(&D_800AD8AC_7DD5C, 0x14U, -1, temp_fp + *(s16 *)((u8 *)(var_s4) + (0x1E)) + func_80071760_41C10(D_800D6DA0) + 0x2C, D_800D6DA0);
					break;
				case 0x12:
					drawText((u8 *) D_800313D0_31FD0, -1U, -1, *(u16 *)((u8 *)(D_800AED74) + (0x20)) + D_800AED70);
					break;
				case 0x13:
					drawText((u8 *) D_800313D0_31FD0, -1U, -1, *(u16 *)((u8 *)(D_800AED74) + (0x28)) + D_800AED70);
					break;
				case 0x14:
					drawText((u8 *) D_800313D0_31FD0, -1U, -1, *(u16 *)((u8 *)(D_800AED74) + (0x2C)) + D_800AED70);
					break;
				case 0x15:
				case 0x16:
				case 0x17:
				case 0x18:
				case 0x19:
				case 0x1A:
				case 0x1B:
				case 0x1C:
				case 0x1D:
				case 0x1E:
				case 0x1F:
				case 0x20:
				case 0x21:
				case 0x22:
				case 0x23:
				case 0x24:
				case 0x25:
				case 0x26:
				case 0x27:
				case 0x28:
				case 0x29:
				case 0x2A:
				case 0x2B:
				case 0x2C:
				case 0x2D:
				case 0x2E:
				case 0x2F:
				case 0x30:
				case 0x31:
				case 0x32:
				case 0x33:
				case 0x34:
				case 0x35:
				case 0x36:
				case 0x37:
				case 0x38:
				case 0x39:
				case 0x3A:
				case 0x3B:
				case 0x3C:
				case 0x3D:
				case 0x3E:
				case 0x3F:
				case 0x40:
				case 0x41:
				case 0x42:
				case 0x43:
					drawText((u8 *) D_800313D0_31FD0, -1U, -1, *(u16 *)((u8 *)(D_800AED74) + (0x32)) + D_800AED70);
					break;
				case 0x44:
				case 0x45:
				case 0x46:
				case 0x47:
				case 0x48:
				case 0x49:
				case 0x4A:
				case 0x4B:
					temp_s0 = func_80071760_41C10(func_80070390_40840());
					drawText(&D_800ADAC4_7DF74, 0x14U, -1, temp_fp + *(s16 *)((u8 *)(var_s4) + (0x1E)) + temp_s0 + 0x2C, func_80070390_40840());
					break;
				case 0x4C:
					func_80072B68_43018(-0xC8, -0x32, -0x190, 0.0f);
					break;
				case 0x4D:
					drawText(&D_800ADB70_7E020, 0U);
					drawText(&D_800ADB74_7E024, 0x80U, -1, sp114);
					break;
				case 0x4E:
				case 0x4F:
				case 0x50:
				case 0x51:
				case 0x52:
				case 0x53:
				case 0x55:
				case 0x56:
				case 0x57:
				case 0x58:
				case 0x59:
				case 0x5A:
					drawText(&D_800ADB7C_7E02C, 0U);
					drawText(&D_800ADB80_7E030, 0x80U, -1, sp114);
					break;
				}
			}
			temp_v0_14 = *(u16 *)((u8 *)(var_s4) + (0x12)) + *(s16 *)((u8 *)(var_s4) + (0x14));
			if (temp_v0_14 >= 0x10000) {
				*(s16 *)((u8 *)(var_s4) + (0x14)) = 0;
				*(u16 *)((u8 *)(var_s4) + (0x12)) = 0xFFFFU;
				if (*(u8 *)((u8 *)(var_s4) + (0x16)) == 4) {
					func_80070970_40E20(var_s4, 1);
				}
			} else if (temp_v0_14 <= 0) {
				*(s16 *)((u8 *)(var_s4) + (0x14)) = 0;
				*(u16 *)((u8 *)(var_s4) + (0x12)) = 0U;
				*(u8 *)((u8 *)(var_s4) + (0x16)) = 0U;
			} else {
				*(u16 *)((u8 *)(var_s4) + (0x12)) = (u16) temp_v0_14;
			}
			var_s0 = sp110;
		}
		var_s4 += 0x2A;
		var_s0 -= 1;
	} while (var_s0 != 0);
	drawText(&D_800ADC0C_7E0BC, 0x400U, 0x400, NULL, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800731A8_43658.s")
#endif


#ifdef NON_MATCHING
// CURRENT(5566)
void func_80075710_45BC0(void) {
	s32 matrixPtr;
	s32 rowTextureOffset;
	s32 rowBottomY;
	s32 rowTopY;
	s32 rowIndex;
	s32 rowTop;
	s32 rowBottom;
	u32 textureBase;
	u32 textureImage;

	guOrtho((Mtx *)D_8005BB38, 0.0f, 160.0f, 120.0f, 0.0f, D_800AE77C_7EC2C, D_800AE780_7EC30, 1.0f);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

	matrixPtr = D_8005BB38 + 0x40;
	D_8005BB38 = matrixPtr;
	guRotate((Mtx *)matrixPtr, 0.0f, 1.0f, 0.0f, 0.0f);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 + 0x80000000), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	gDPPipeSync(D_8005BB2C++);
	gDPLoadSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_COPY);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);

	textureBase = (u32)D_800AED88;
	rowBottomY = 0x20;
	rowTopY = 0;
	rowIndex = 0;
	do {
		textureImage = textureBase + (rowIndex << 11);
		rowTop = ((rowTopY << 2) & 0xFFF);
		rowBottom = (((rowBottomY << 2) - 1) & 0xFFF);
		rowTextureOffset = 0;
		do {
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, textureImage);
			textureImage += 0x800;
			gDPTileSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_RENDERTILE, 0,
					   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 1023, 256);
			gDPTileSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, G_TX_RENDERTILE, 0,
					   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C, 0x7C);
			gSPTextureRectangle(D_8005BB2C++, rowTextureOffset << 2, rowTop, ((rowTextureOffset + 0x20) << 2) - 1,
								rowBottom, G_TX_RENDERTILE, 0, 0, 0x1000, 0x400);
			rowTextureOffset += 0x20;
		} while (rowTextureOffset != 0x140);

		rowBottomY += 0x20;
		rowTopY += 0x20;
		rowIndex += 0xA;
	} while (rowBottomY != 0x120);

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_COPY);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80075710_45BC0.s")
#endif

void func_80075B64_46014(s16 arg0) {
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x00, 0x00, 0x00, arg0);
	gDPPipeSync(D_8005BB2C++);
	gDPFillRectangle(D_8005BB2C++, 0, 0, 320, 240);
}

// Show version info on title screen if slot 3 named GRIMLN
void func_80075C84_46134(void) {
	if (D_800D6DA8[0xE] == 0x47) {
		if (D_800D6DA8[0xF] == 0x52) {
			if (D_800D6DA8[0x13] == 0x4E) {
				if (D_800D6DA8[0x11] == 0x4D) {
					if (D_800D6DA8[0x12] == 0x4C) {
						if (D_800D6DA8[0x10] == 0x49) {
							drawText(&D_800ADC18_7E0C8, 0x14, 0x14, 0x12C, 0xF0);
							drawText(&D_800ADC1C_7E0CC, 1, 0, &D_800ADC30_7E0E0, &D_800ADC3C_7E0EC);
							drawText(&D_800ADC48_7E0F8, 1, 1);
						}
					}
				}
			}
		}
	}
}

#ifdef NON_MATCHING
// CURRENT(1235)
void func_80075D58_46208(s32 arg0) {
	u16 perspectiveNormal;

	func_800132CC_13ECC();
	if (D_800946DC_64B8C != FE_STATE_PRESS_START) {
		func_800791A0_49650(3);
		return;
	}

	func_800791A0_49650(2);
	guPerspective((Mtx *)D_8005BB38, &perspectiveNormal, 73.0f, 1.25f, 150.0f, D_800AE784_7EC34, 1.0f);
	gSPPerspNormalize(D_8005BB2C++, perspectiveNormal);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
	D_8005BB38 += 0x40;

	guLookAt((Mtx *)D_8005BB38, 0.0f, 300.0f, 370.0f, 0.0f, 0.0f, 0.0f, D_800AE788_7EC38, 1.0f, 0.0f);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
	D_8005BB38 += 0x40;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gSPClearGeometryMode(D_8005BB2C++, 0xFFFFFFFF);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_SHADING_SMOOTH);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RNX, 4);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RNY, 4);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RPX, 0xFFFC);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RPY, 0xFFFC);
	gDPPipeSync(D_8005BB2C++);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPPipeSync(D_8005BB2C++);

	D_80052B40.unk0 = 10;
	D_80052B40.unk2 = 120;
	D_80052B40.unk4 = 0;

	if (arg0 != 0) {
		D_80052B48.unk0 = (s16)((D_80094860_64D10 * -30) + 30);
	} else {
		D_80052B48.unk0 = (s16)(D_80094860_64D10 * -30);
	}
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	D_80052B50.unk0 = 200;
	D_80052B50.unk2 = 200;
	D_80052B50.unk4 = 200;

	guLookAtReflect((Mtx *)D_8005BB38, &D_800D78E0[D_80031B84_32784], 0.0f, 300.0f, 370.0f,
								(float)D_80052B40.unk0, (float)D_80052B40.unk2, (float)D_80052B40.unk4,
								0.0f, 1.0f, 0.0f);
	gSPLookAtX(D_8005BB2C++, &D_800D78E0[D_80031B84_32784].l[0]);
	gSPLookAtY(D_8005BB2C++, &D_800D78E0[D_80031B84_32784].l[1]);
	func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, D_8005BB38);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gSPDisplayList(D_8005BB2C++, D_4050010);
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);

	if (arg0 != 0) {
		D_80052B48.unk0 = (s16)((D_80094860_64D10 * 63) - 63);
	} else {
		D_80052B48.unk0 = (s16)(D_80094860_64D10 * 63);
	}
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;

	guLookAtReflect((Mtx *)D_8005BB38, &D_800D7920[D_80031B84_32784], 0.0f, 300.0f, 370.0f,
								(float)D_80052B40.unk0, (float)D_80052B40.unk2, (float)D_80052B40.unk4,
								0.0f, 1.0f, 0.0f);
	gSPLookAtX(D_8005BB2C++, &D_800D7920[D_80031B84_32784].l[0]);
	gSPLookAtY(D_8005BB2C++, &D_800D7920[D_80031B84_32784].l[1]);
	func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, D_8005BB38);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gSPDisplayList(D_8005BB2C++, D_40519B0);

	func_80075C84_46134();
	gDPPipeSync(D_8005BB2C++);

	if (arg0 == 0) {
		D_80094860_64D10++;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80075D58_46208.s")
#endif

/**
 * @brief Runs several frontend update/render passes for four ticks.
 */
void func_800764B4_46964(void) {
	s32 i;

	i = 3;
	do {
		func_80075D58_46208(0);
		func_800731A8_43658();
		func_8000B044_BC44();
		func_8000505C_5C5C();
	} while (i--);
}

// displayCometExplodesMovie
s32 func_80076504_469B4(void)
{
  s32 result;
  s32 fadeResult;
  result = 1;
  func_8007949C_4994C(func_80070390_40840(), 0);
  D_80052ACA = 6;
  D_8004772C = 0xFF;
  D_80047730 = 0x40;
  D_80047734 = 0;
  D_80047738 = D_80047739 = D_8004773A = 0;
  D_800D74AA = 0;
  D_800D6D8C = 1;
  gDPSetAlphaDither(D_8005BB2C++, G_AD_NOISE);
  gDPSetColorDither(D_8005BB2C++, G_CD_BAYER);
  drawText(D_800ADC60, 0xE6, 0xE6, 0xE6, 0xFF);
  func_8007D7E0_4DC90();
  osSyncPrintf(D_800ADC68);
  func_80013684_14284();
  do
  {
	func_800791A0_49650(1);
	gDPSetAlphaDither(D_8005BB2C++, G_AD_PATTERN);
	fadeResult = func_8007D91C_4DDCC(1);
	gDPFullSync(D_8005BB2C++);
	gSPEndDisplayList(D_8005BB2C++);
	osSendMesg(&D_8006A8B0, &D_800314CC, 1);
	if (fadeResult != 0)
	{
	  result = 2;
	  func_80005AEC_66EC(0, 0, 0, 0x10);
	}
  }
  while (func_80005B30_6730() == 0);
  func_8007C4BC_4C96C();
  func_8007C7F4_4CCA4();
  D_80052ACA = 6;
  D_8004772C = 0xFF;
  D_80047730 = 0x40;
  D_80047734 = 0;
  D_80047738 = D_80047739 = D_8004773A = 0;
  D_800D74AA = 0;
  D_800D6D8C = 1;
  gDPSetAlphaDither(D_8005BB2C++, G_AD_NOISE);
  gDPSetColorDither(D_8005BB2C++, G_CD_BAYER);
  func_8007D7E0_4DC90();
  osSyncPrintf(D_800ADC74);
  do
  {
	func_800791A0_49650(1);
	gDPSetAlphaDither(D_8005BB2C++, G_AD_PATTERN);
	fadeResult = func_8007D91C_4DDCC(2);
	gDPFullSync(D_8005BB2C++);
	gSPEndDisplayList(D_8005BB2C++);
	osSendMesg(&D_8006A8B0, &D_800314CC, 1);
	if (fadeResult != 0)
	{
	  result = 2;
	  func_80005AEC_66EC(0, 0, 0, 0x10);
	}
  }
  while (func_80005B30_6730() == 0);
  D_80052ACA = 3;
  func_800056A8_62A8();
  func_800056A8_62A8();
  func_80070940_40DF0();
  return result;
}

// displayEndGameMessage
s32 func_8007685C_46D0C(void) {
	func_8007949C_4994C(func_80070390_40840(), 0);
	func_8007C7F4_4CCA4();
	func_80013684_14284();
	func_8007C4BC_4C96C();
	D_80052ACA = 3;
	func_800056A8_62A8();
	func_800056A8_62A8();
	func_80070940_40DF0();
	return 2;
}

// doIntroMovieLoop
#ifdef NON_MATCHING
s32 func_800768C4_46D74(void) {
	s32 result;
	s32 fadeResult;
	s16 i;
	s16 idx;
	s32 timingA[11];
	s32 timingB[8];

	result = 1;

	for (i = 0; i < ARRAY_COUNT(timingA); i++) {
		timingA[i] = D_80094868_64D18[i];
	}
	for (i = 0; i < ARRAY_COUNT(timingB); i++) {
		timingB[i] = D_80094894_64D44[i];
	}

	D_80052ACA = 6;
	D_8004772C = 0xFF;
	D_80047730 = 0x40;
	D_80047734 = 0;
	D_80047739 = 0;
	D_8004773A = 0;
	D_80047738 = 0;
	D_800D74AA = 0;
	D_800D6D8C = 1;

	gDPSetAlphaDither(D_8005BB2C++, G_AD_NOISE);
	gDPSetColorDither(D_8005BB2C++, G_CD_BAYER);

	drawText(&D_800ADC84_7E134, 0xE6, 0xE6, 0xE6, 0xFF);
	func_8007D7E0_4DC90();
	func_8007BFC4_4C474();

	do {
		func_800791A0_49650(1);

		gDPSetAlphaDither(D_8005BB2C++, G_AD_PATTERN);
		fadeResult = func_8007D91C_4DDCC(0);

		func_8000B044_BC44();
		gDPFullSync(D_8005BB2C++);
		gSPEndDisplayList(D_8005BB2C++);

		osSendMesg(&D_8006A8B0, &D_800314CC_320CC, 1);

		idx = D_800948B8_64D68;
		if (D_800948B4_64D64 == timingA[idx]) {
			D_800948B8_64D68++;
			func_8001322C_13E2C(idx);
			D_800313E0++;
		}

		idx = D_800948BC_64D6C;
		if (D_800948B4_64D64 == timingB[idx]) {
			D_800948BC_64D6C++;
			func_800131A4_13DA4(idx);
			D_800313DC++;
		}

		D_800948B4_64D64++;

		if ((isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A | BUTTON_START) != 0) || (fadeResult != 0)) {
			result = 2;
			func_80005AEC_66EC(0, 0, 0, 0x10);
		}
	} while (func_80005B30_6730() == 0);

	D_800313D8++;
	D_800948B4_64D64 = 0;
	D_80052ACA = 3;
	D_800948BC_64D6C = 0;
	D_800948B8_64D68 = 0;

	func_800056A8_62A8();
	func_800056A8_62A8();
	func_80070940_40DF0();

	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800768C4_46D74.s")
#endif

// Called once before showing the 'Select Slot' screen
// doFileSelectLoop
#ifdef NON_MATCHING
// CURRENT(3217)
s16 func_80076C98_47148(void) {
	u8 saveFileName[7];
	u8* saveNamePtr;
	s8* saveValidPtr;
	s32* saveMetaPtr;
	u32 frameCounter;
	s32 saveFile;
	s16 result;
	s16 fade;
	s32 hasCorruptSave;

	D_800D74A6 = currentSaveFileIndex + 2;
	D_800D74A4 = D_800D74A6;
	frameCounter = 0;
	result = 1;
	hasCorruptSave = 0;
	func_8007166C_41B1C();

	((u8*)D_800909B0)[0x70] = 0;
	((u8*)D_800909B0)[0x9A] = 0;
	((u8*)D_800909B0)[0xC4] = 0;
	D_800909B0[D_800D74A4].unk1C = 1;

	saveFile = 2;
	saveNamePtr = &D_800D6DB6;
	saveMetaPtr = &D_800D6DA0;
	saveValidPtr = &D_800D6D92;
	do {
		*saveValidPtr = func_80002A88_3688(saveFile);
		*saveMetaPtr = func_80002B20_3720(saveFile);
		getSaveFileName(saveFile, saveNamePtr);
		saveValidPtr--;
		if (saveNamePtr[1] != 'm') {
			hasCorruptSave = 1;
		}
		saveMetaPtr--;
		saveNamePtr -= 7;
	} while (saveFile-- != 0);

	((u8*)D_800909B0)[0xCD] = 5;
	while (result == 1) {
		if (frameCounter < 0x3E8U) {
			func_80070C64_41114(1, 6, (s16)frameCounter);
		}

		if (hasCorruptSave == 0) {
			func_80070A8C_40F3C(5);
			func_80070A8C_40F3C(6);
		} else {
			func_80070B68_41018(5);
			func_80070B68_41018(6);
		}

		if (frameCounter >= 0x41U) {
			func_80070CC4_41174();
			func_8007166C_41B1C();
			if (isButtonNewlyPressed(0, 0x9000) != 0) {
				result = D_800D74A4;
			}
			if (isButtonNewlyPressed(0, 0x4000) != 0) {
				result = 0;
			}
		}

		func_80075D58_46208(0);
		func_800731A8_43658();
		func_8000B044_BC44();
		func_8000505C_5C5C();

		if (frameCounter < 0x3E8U) {
			frameCounter++;
		}
	}

	saveFile = D_800D74A4 - 2;
	if (saveFile < 3) {
		currentSaveFileIndex = saveFile;
	}

	func_800153D8_15FD8(0xC8);
	if (result == 0) {
		func_800709F0_40EA0();
		for (fade = 0xA0; fade != -8; fade -= 8) {
			func_80075D58_46208(0);
			func_80075B64_46014(fade);
			func_800731A8_43658();
			func_8000B044_BC44();
			func_8000505C_5C5C();
		}
		return result;
	}

	if ((D_800D74A4 - 1) < 4) {
		if (currentSaveFileIndex < 3) {
			guess_loadSavedGame(currentSaveFileIndex);
			getSaveFileName(currentSaveFileIndex, saveFileName);
			osSyncPrintf(&D_800ADC8C_7E13C, saveFileName);
			if (saveFileName[1] == 'm') {
				result = 1;
				osSyncPrintf(&D_800ADC9C_7E14C);
			}

			if (result < 5) {
				D_800D74AA = 0;
				func_800709F0_40EA0();
			}
			func_8000AFDC_BBDC();
		}
	}

	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80076C98_47148.s")
#endif

s32 func_80076FD8_47488(void) {
	return 3;
}

/**
 * @brief Copies tiled framebuffer data from a strided source to a contiguous destination.
 * NON_MATCHING: regalloc only - cfe temp from while(counter--) goes to t0 instead of a0.
 */
#ifdef NON_MATCHING
void func_80076FE0_47490(s32* arg0, s32* arg1) {
  s32 *src;
  s32 *dst;
  s32 j;
  s32 i;
  s32 k;
  s32 l;
  src = arg0;
  dst = arg1;
  i = 7;
  do
  {
	j = 9;
	do
	{
	  k = 0x1F;
	  do
	  {
		l = 0xF;
		do
		{
		  if (!arg0)
		  {
		  }
		  *(dst++) = *(src++);
		}
		while (l--);
		src += 0x90;
	  }
	  while (k--);
	  src -= 0x13F0;
	}
	while (j--);
	src += 0x1360;
  }
  while (i--);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80076FE0_47490.s")
#endif

// doPressStartLoop
s32 func_8007704C_474FC(void) {
	u32 frameCounter;
	s32 state;
	s32 value;
	s32 temp;

	frameCounter = 0;
	state = 1;

	func_800709F0_40EA0();
	D_800D74A6 = 0x3F;
	D_800D74A4 = D_800D74A6;

	while (state == 1) {
		if (frameCounter < 0x3E8U) {
			func_80070C64_41114(0x3F, 1, (s16) frameCounter);
		}

		if (frameCounter >= 0x11U) {
			if (isButtonNewlyPressed(0, 0x9000) != 0) {
				state = 2;
			}

			if (isButtonNewlyPressed(0, 0x4000) != 0) {
				state = 0;
			}
		}

		func_80075D58_46208(0);
		func_800731A8_43658();
		func_8000B044_BC44();
		func_8000505C_5C5C();

		frameCounter++;
		if (frameCounter >= 0x640U) {
			state = 3;
		}
	}

	func_800153D8_15FD8(0xC8);

	if (state == 2) {
		func_800709F0_40EA0();

		value = 0;
		while (value != 0xBE) {
			if (value < 0xAA) {
				func_80075D58_46208(0);
			} else {
				func_80075D58_46208(1);
			}

			if (value >= 0xAB) {
				temp = 0xAA;
			} else {
				temp = value;
			}
			func_80075B64_46014((s16) temp);

			func_800731A8_43658();
			func_8000B044_BC44();
			func_8000505C_5C5C();

			value += 0xA;
		}

		func_80076FE0_47490((s32*) D_8005BB48[D_80031B84_32784 ^ 1], D_800AED88);
	}

	func_8000AFDC_BBDC();
	func_800709F0_40EA0();
	D_800D6D8C = 1;

	return state;
}

s32 func_80077204_476B4(void)
{
  u32 frameCounter;
  s32 state;
  volatile s16 *selectedSaveSlot;
  frameCounter = 0;
  state = 1;
  func_800709F0_40EA0();
  D_800D74A6 = 0x37;
  selectedSaveSlot = &D_800D74A4;
  *selectedSaveSlot = D_800D74A6;
  while (state == 1)
  {
	if (frameCounter < 0x3E8U)
	{
	  func_80070C64_41114(0x36, 3, (s16) frameCounter);
	}
	if (frameCounter >= 0x21U)
	{
	  func_80070CC4_41174();
	  func_8007166C_41B1C();
	  if (isButtonNewlyPressed(0, 0x9000) != 0)
	  {
		state = 0;
		if ((*selectedSaveSlot) == 0x38)
		{
		  state = 2;
		}
	   else
		{
		  state = state ^ 0;
		}
	  }
	  if (isButtonNewlyPressed(0, 0x4000) != 0)
	  {
		state = 0;
	  }
	}
	func_80075D58_46208(0);
	func_800731A8_43658();
	func_8000B044_BC44();
	func_8000505C_5C5C();
	if (frameCounter < 0x3E8U)
	{
	  frameCounter++;
	}
  }

  func_8000AFDC_BBDC();
  func_800153D8_15FD8(0xC8);
  func_800709F0_40EA0();
  return state;
}

// displaySelectFileDifficulty
s32 func_80077344_477F4(void) {
	u32 frameCounter;
	s32 state;

	frameCounter = 0;
	state = 1;

	func_800709F0_40EA0();
	D_800D74A6 = 0x5A;
	D_800D74A4 = D_800D74A6;

	while (state == 1) {
		if (frameCounter < 0x3E8U) {
			func_80070C64_41114(0x58, 3, (s16)frameCounter);
		}

		if (frameCounter >= 0x21U) {
			func_80070CC4_41174();
			func_8007166C_41B1C();

			if (isButtonNewlyPressed(0, 0x9000) != 0) {
				state = 2;
				if (D_800D74A4 == 0x5A) {
					D_80052ACD |= 0x80;
				}
			}

			if (isButtonNewlyPressed(0, 0x4000) != 0) {
				state = 0;
			}
		}

		func_80075D58_46208(0);
		func_800731A8_43658();
		func_8000B044_BC44();
		func_8000505C_5C5C();

		if (frameCounter < 0x3E8U) {
			frameCounter++;
		}
	}

	func_8000AFDC_BBDC();
	func_800153D8_15FD8(0xC8);
	func_800709F0_40EA0();

	return state;
}

// doDeleteFile
#ifdef NON_MATCHING
s32 func_80077494_47944(void) {
  u32 frameCounter;
  s32 i;
  s32 foundSelectableFile;
  s32 state;
  s16 saveSlot;
  register s16* selectedSaveSlot;

  frameCounter = 0;
  foundSelectableFile = 0;
  selectedSaveSlot = &D_800D74A4;
  state = 1;

  func_800708B8_40D68(1);
  func_800708B8_40D68(5);
  func_800708B8_40D68(6);
  func_80070514_409C4(0x33);

  currentSaveFileIndex = 0;
  i = 0;
  if (0 < 3) {
	do {
	  getSaveFileName(i, &D_800D6DA8[i * 7]);
	  saveSlot = i + 2;

	  if (D_800D6DA8[(i * 7) + 1] == 0x6D) {
		func_80070A8C_40F3C(saveSlot); // If the second letter of filename is "m" it cannot be copied or deleted
	  } else {
		func_80070B68_41018(saveSlot);
		if (foundSelectableFile == 0) {
		  *selectedSaveSlot = saveSlot;
		  foundSelectableFile = 1;
		}
	  }
	  i++;
	} while (i < 3);
  }

  selectedSaveSlot = &D_800D74A4;
  func_8007166C_41B1C();
  D_800909B0[4].pad22[3] = 0;

  while (state == 1) {
	if (frameCounter >= 0x29U) {
	  func_80070CC4_41174();
	  func_8007166C_41B1C();

	  if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A | BUTTON_START) != 0) {
		if (D_800D6DA8[((*selectedSaveSlot - 2) * 7) + 1] != 0x6D) {
		  state = 2;
		}
	  }

	  if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_B) != 0) {
		state = 0;
	  }
	}

	func_80075D58_46208(0);
	func_800731A8_43658();
	func_8000B044_BC44();
	func_8000505C_5C5C();

	if (frameCounter < 0x3E8U) {
	  frameCounter++;
	}
  }

  func_800153D8_15FD8(0xC8);

  currentSaveFileIndex = *selectedSaveSlot - 2;
  if ((state != 0) && (func_80077204_476B4() == 2)) {
	D_800476A0 = 3;
  }

  func_8000AFDC_BBDC();
  func_800709F0_40EA0();
  func_800764B4_46964();

  return currentSaveFileIndex;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80077494_47944.s")
#endif

// doCopyFile
#ifdef NON_MATCHING
s32 func_800776BC_47B6C(void) {
  volatile s32 saveSlotSp;
  u8* saveName;
  s16 saveSlot;
  s32 sourceFileIndex;
  s32 destFileIndex;
  s32 i;
  s32 foundSelectableFile;
  s32 state;
  u32 frameCounter;
  s16* selectedSaveSlot;
  s32* sourceFileIndexPtr;
  s32* destFileIndexPtr;
  u8* saveNameBase;
  s32 saveNameStride;

  frameCounter = 0;
  state = 1;
  foundSelectableFile = 0;

  func_800708B8_40D68(1);
  func_800708B8_40D68(5);
  func_800708B8_40D68(6);
  func_80070514_409C4(0x34);
  currentSaveFileIndex = 0;

  i = 0;
  if (0 < 3) {
	selectedSaveSlot = &D_800D74A4;
	saveName = D_800D6DA8;
	do {
	  getSaveFileName(i, saveName);
	  saveSlot = i + 2;
	  if (saveName[1] == 0x6D) {
		func_80070A8C_40F3C((s16) (i + 2));
	  } else {
		saveSlotSp = (s32) saveSlot;
		func_80070B68_41018(saveSlot);
		if (foundSelectableFile == 0) {
		  *selectedSaveSlot = (s16) saveSlotSp;
		  foundSelectableFile = 1;
		}
	  }
	  i++;
	  saveName += 7;
	} while (i < 3);
  }

  selectedSaveSlot = &D_800D74A4;
  func_8007166C_41B1C();
  D_800909B0[4].pad22[3] = 0;
  sourceFileIndexPtr = &D_80047F88;
  saveNameBase = D_800D6DA8;
  saveNameStride = 7;

  do {
	if (frameCounter >= 0x29U) {
	  func_80070CC4_41174();
	  func_8007166C_41B1C();

	  if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A | BUTTON_START) != 0) {
		sourceFileIndex = *selectedSaveSlot - 2;
		*sourceFileIndexPtr = sourceFileIndex;
		if (saveNameBase[(sourceFileIndex * saveNameStride) + 1] != 0x6D) {
		  state = 2;
		}
	  }
	  if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_B) != 0) {
		state = 0;
	  }
	}

	func_80075D58_46208(0);
	func_800731A8_43658();
	func_8000B044_BC44();
	func_8000505C_5C5C();

	if (frameCounter < 0x3E8U) {
	  frameCounter++;
	}

	if (state == 0) {
	  func_8000AFDC_BBDC();
	  func_800709F0_40EA0();
	}
  } while (state == 1);

  func_80070BD8_41088(2, 4);
  func_800153D8_15FD8(0xC8);
  func_80070A8C_40F3C(*selectedSaveSlot);

  if (*selectedSaveSlot == 2) {
	*selectedSaveSlot = 3;
  } else {
	*selectedSaveSlot = 2;
  }

  func_80070CC4_41174();
  if (state != 0) {
	state = 1;
	func_800708B8_40D68(0x34);
	func_80070514_409C4(0x35);
	destFileIndexPtr = &D_80047F8C;

	do {
	  if (frameCounter >= 0x41U) {
		func_80070CC4_41174();
		func_8007166C_41B1C();

		if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A | BUTTON_START) != 0) {
		  destFileIndex = *selectedSaveSlot - 2;
		  *destFileIndexPtr = destFileIndex;
		  if (destFileIndex != *sourceFileIndexPtr) {
			state = 2;
		  }
		}

		if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_B) != 0) {
		  state = 0;
		}
	  }

	  func_80075D58_46208(0);
	  func_800731A8_43658();
	  func_8000B044_BC44();
	  func_8000505C_5C5C();
	  frameCounter++;
	} while (state == 1);

	func_800153D8_15FD8(0xC8);
	if ((state == 2) && (func_80077204_476B4() == 2)) {
	  D_800476A0 = 5;
	}

	func_8000AFDC_BBDC();
	if (state == 2) {
	  func_800764B4_46964();
	  func_800709F0_40EA0();
	} else {
	  func_800708B8_40D68(0x35);
	  func_800776BC_47B6C();
	}
  }

  return state;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800776BC_47B6C.s")
#endif

// doFileDetailsLoop
s32 func_800779FC_47EAC(void) {
	u32 frameCounter;
	s32 state;
	s32 saveFileIndex;
	s32 temp;
	MissionData* selectedFileData;
	MissionData* missionEntry;
	extern s32 D_80047F84;
	extern s32 D_80052B18;
	extern u8 D_800D6D90[];
	extern s32 D_800D6D98[];
	extern s32 func_80002A88_3688(s32 arg0);
	extern s32 func_80002B20_3720(s32 arg0);
	extern s32 func_80002AB4(s32 arg0, u8* arg1);

	frameCounter = 0;
	state = 1;

	saveFileIndex = D_80047F84 + 1;
	func_80070904_40DB4((s16)(saveFileIndex + 1));

	if (D_800D6D8C != 0) {
		selectedFileData = &D_800909B0[saveFileIndex];
		*((s16*) ((u8*) D_800909B0 + 0x95E)) = *((s16*) ((u8*) selectedFileData + 0x30));
		*((s16*) ((u8*) D_800909B0 + 0x962)) = *((s16*) ((u8*) selectedFileData + 0x32));
	}

	D_800D74A6 = 0x3D;
	D_800D74A4 = D_800D74A6;
	temp = func_80002A88_3688(D_80047F84);
	D_800D6D90[D_80047F84] = temp;
	temp = func_80002B20_3720(D_80047F84);
	D_800D6D98[D_80047F84] = temp;
	func_80002AB4(D_80047F84, &D_800D6DA8[D_80047F84 * 7]);

	while (state == 1) {
		if (frameCounter < 0x3E8U) {
			func_80070C64_41114(0x39, 6, (s16)frameCounter);
		}

		if (frameCounter >= 0x41U) {
			func_80070CC4_41174();
			func_8007166C_41B1C();

			if (isButtonNewlyPressed(0, 0x9000) != 0) {
				state = D_800D74A4 - 0x3A;
				missionEntry = func_80070494_40944(0x39);
				*((s16*) ((u8*) D_800909B0 + 0x95E)) = -0x20;
				missionEntry->unk4 = (s16)(*((s16*) ((u8*) D_800909B0 + 0x95E)) << 2);
				D_800D74AA = 0;
				func_800708B8_40D68(0x39);
				D_800D6D8C = 0;
				D_80052B18 = D_800D6D98[D_80047F84];
				currentLevel = D_800D6D90[D_80047F84];
			}

			if (isButtonNewlyPressed(0, 0x4000) != 0) {
				selectedFileData = &D_800909B0[saveFileIndex];
				state = 0;
				missionEntry = func_80070494_40944(0x39);
				missionEntry->unk4 = missionEntry->unk6;
				missionEntry->unk6 = *((s16*) ((u8*) selectedFileData + 0x30)) * 4;
				missionEntry->unk16 = 4;
				missionEntry->unk1C = 1;
				missionEntry->unk28 = -1;
				missionEntry->unk12 = 0;
				missionEntry->unk14 = 0x400;
				D_800D6D8C = 1;
				D_800D74AA = D_80047F84 + 2;
			}
		}

		func_80075D58_46208(0);
		func_800731A8_43658();
		func_8000B044_BC44();
		func_8000505C_5C5C();

		if (frameCounter < 0x3E8U) {
			frameCounter++;
		}
	}

	func_800153D8_15FD8(0xC8);
	func_8000AFDC_BBDC();
	func_800708B8_40D68(0x3A);
	func_800708B8_40D68(0x3B);
	func_800708B8_40D68(0x3C);
	func_800708B8_40D68(0x3D);
	func_800708B8_40D68(0x3E);

	return state;
}

#ifdef NON_MATCHING
s32 func_80077CE0_48190(s32 arg0) {
	u32 frameCounter;
	s32 state;

	if (arg0 != 0) {
		frameCounter = 0x11;
	} else {
		frameCounter = 0;
	}

	state = 1;
	if (arg0 != 0) {
		D_800D74A6 = arg0 + 7;
	} else {
		D_800D74A6 = 8;
	}
	D_800D74A4 = D_800D74A6;
	func_8007166C_41B1C();

	while (state == 1) {
		if (frameCounter < 0x3E8U) {
			if (arg0 == 0) {
				func_80070C64_41114(7, 7, (s16) frameCounter);
			}
		}

		if (frameCounter >= 0x41U) {
			func_80070CC4_41174();
			func_8007166C_41B1C();

			if (isButtonNewlyPressed(0, 0x9000) != 0) {
				state = D_800D74A4 - 6;
			}

			if (isButtonNewlyPressed(0, 0x4000) != 0) {
				state = 0;
			}
		}

		func_80075D58_46208(0);
		func_800731A8_43658();
		func_8000B044_BC44();
		func_8000505C_5C5C();

		if (frameCounter < 0x3E8U) {
			frameCounter++;
		}
	}

	func_8000AFDC_BBDC();

	switch (state) {
	case 0:
	case 1:
		func_800153D8_15FD8(0xC8);
		if (state == 0) {
			func_80070940_40DF0();
		} else {
			func_800709F0_40EA0();
		}
		D_800476A0 = 1;
		break;

	case 2:
		func_800153D8_15FD8(0xCB);
		break;
	}

	return state;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80077CE0_48190.s")
#endif

s32 func_80077E78_48328(s32 arg0, s32 arg1) {
	return 0;
}

s32 func_80077E88_48338(void)
{
  s32 selectedSlot;
  s32 state;
  u32 frameCounter;
  D_800D74A6 = 0xF;
  frameCounter = 0;
  state = 1;
  D_800D74A4 = D_800D74A6;
  osSyncPrintf(D_800ADCC4_7E174, D_80047FA0 + 0x10, 0x13);
  while (state == 1)
  {
	if (frameCounter < 0x3E8U)
	{
	  func_80070C64_41114(0xE, 7, (s16) frameCounter);
	}
	func_80070BD8_41088(0xF, 0x14);
	if (D_80047FA0 > 0)
	{
	  func_80070AEC_40F9C((s16) (D_80047FA0 + 0x10), 0x13);
	  if (((((D_80048026 & 7) != 7) && (((D_80048026 & 0x38) != 0x38) || (D_80047FA0 < 2))) && (((D_80048026 & 0x1C0) != 0x1C0) || (D_80047FA0 < 3))) && (((D_80048026 & 0xE00) != 0xE00) || (D_80047FA0 < 4)))
	  {
		func_80070A8C_40F3C(0x14);
	  }
	}
	else
	{
	  func_80070AEC_40F9C((s16) (D_80047FA0 + 0x10), 0x14);
	}
	if (frameCounter >= 0x41U)
	{
	  func_80070CC4_41174();
	  func_8007166C_41B1C();
	  if (isButtonNewlyPressed(0, 0x9000) != 0)
	  {
		selectedSlot = D_800D74A4;
		if (D_800D74A4 == 0x14)
		{
		  state = 3;
		}
		else
		{
		  selectedSlot = D_800D74A4;
		  func_800153D8_15FD8(0xC8);
		  if (func_80077204_476B4() == 2)
		  {
			D_80048030 = 0;
			D_800D74A6 = selectedSlot;
			state = 2;
			D_800D74A4 = D_800D74A6;
			currentLevel = D_800D74A4 - 0xE;
		  }
		  else
		  {
			D_800D74A6 = 0xF;
			frameCounter = 0;
			D_800D74A4 = D_800D74A6;
			func_80070C64_41114(0xE, 7, 0);
		  }
		}
	  }
	  if (isButtonNewlyPressed(0, 0x4000) != 0)
	  {
		state = 0;
	  }
	}
	func_80075D58_46208(0);
	func_800731A8_43658();
	func_8000B044_BC44();
	func_8000505C_5C5C();
	if (frameCounter < 0x3E8U)
	{
	  frameCounter++;
	}
  }

  if (state != 2)
  {
	func_800153D8_15FD8(0xC8);
  }
  func_8000AFDC_BBDC();
  func_800709F0_40EA0();
  return state;
}

#ifdef NON_MATCHING
// CURRENT(3239)
s32 func_80078110_485C0(void) {
	s32 state;
	u32 frameCounter;
	s16 var_v0;
	s16 temp_a0;
	MissionData* missions;

	frameCounter = 0;
	state = 1;
	var_v0 = D_80048026;

	if ((var_v0 & 0xE07) == 0xE07 && (var_v0 & 0x38) != 0x38 && (var_v0 & 0x1C0) != 0x1C0) {
		missions = D_800909B0;
		((u8*)missions)[0xD45] = 0x53;
		((u8*)missions)[0xDC2] = 0x50;
	} else {
		missions = D_800909B0;
		((u8*)missions)[0xD45] = 0x52;
		((u8*)missions)[0xDC2] = 0x51;
	}

	if ((var_v0 & 0x1F8) == 0x1F8 && (temp_a0 = var_v0 & 7, temp_a0 != 7) && ((var_v0 & 0xE00) != 0xE00 || D_80047FA0 < 4)) {
		((u8*)missions)[0xD6F] = 0x52;
		((u8*)missions)[0xD98] = 0x51;
	} else {
		((u8*)missions)[0xD6F] = 0x53;
		((u8*)missions)[0xD98] = 0x50;
		temp_a0 = var_v0 & 7;
	}

	D_800D74A4 = 0x50;
	if (temp_a0 != 7) {
		D_800D74A4++;
		if ((var_v0 & 0x38) != 0x38) {
			D_800D74A4++;
			if ((var_v0 & 0x1C0) != 0x1C0) {
				D_800D74A4++;
			}
		}
	}

	D_800D74A6 = D_800D74A4;
	missions[D_800D74A4].unk1C = 1;

	while (state == 1) {
		if (frameCounter < 0x3E8U) {
			func_80070C64_41114(0x4F, 6, (s16)frameCounter);
		}

		func_80070BD8_41088(0x50, 0x54);
		func_80070AEC_40F9C((s16)(D_80047FA0 + 0x50), 0x54);

		var_v0 = D_80048026;
		if ((var_v0 & 7) != 7) {
			func_80070AEC_40F9C(0x50, 0x50);
			var_v0 = D_80048026;
		}

		if ((var_v0 & 0x38) != 0x38) {
			func_80070AEC_40F9C(0x51, 0x51);
			var_v0 = D_80048026;
		}

		if ((var_v0 & 0x1C0) != 0x1C0) {
			func_80070AEC_40F9C(0x52, 0x52);
			var_v0 = D_80048026;
		}

		if ((var_v0 & 0xE00) != 0xE00) {
			func_80070AEC_40F9C(0x53, 0x53);
			var_v0 = D_80048026;
		}

		if ((var_v0 & 0xFFF) != 0xFFF) {
			func_80070AEC_40F9C(0x54, 0x54);
		}

		if (frameCounter >= 0x41U) {
			func_80070CC4_41174();
			func_8007166C_41B1C();

			if (isButtonNewlyPressed(0, 0x9000) != 0) {
				D_80048030 = 0;
				state = 2;
				currentLevel = D_800D74A4 - 0x4F;
			}

			if (isButtonNewlyPressed(0, 0x4000) != 0) {
				state = 0;
			}
		}

		func_80075D58_46208(0);
		func_800731A8_43658();
		func_8000B044_BC44();
		func_8000505C_5C5C();

		if (frameCounter < 0x3E8U) {
			frameCounter++;
		}
	}

	func_800153D8_15FD8(0xC8);
	func_8000AFDC_BBDC();
	func_800709F0_40EA0();

	return state;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80078110_485C0.s")
#endif

// doChooseFileNameLoop
#ifdef NON_MATCHING
// CURRENT(3990)
s32 func_80078424_488D4(void) {
	s32 state;
	u32 frameCounter;
	s16 nameLength;
	s32 changed;
	s32 i;
	u8 backupName[6];
	u8 typedName[7];
	s16 textWidth;
	MissionData* entry;

	D_800D74A6 = 0x16;
	D_800D74A4 = D_800D74A6;
	frameCounter = 0;
	state = 1;
	nameLength = 0;

	i = 5;
	do {
		backupName[i] = D_80047FA8[i];
		D_80047FA8[i] = 0x20;
	} while (i-- != 0);

	func_80070514_409C4(0x15);
	D_800909B0[50].unk0 = 0xA0;
	D_800909B0[50].unk2 = 0x88;
	D_800909B0[50].unk4 = 0xD2;
	D_800909B0[50].unk6 = 0xC2;
	D_800909B0[50].unkC = 0x30;
	D_800909B0[50].unkA = 0;
	D_800909B0[50].unk10 = 0x23;
	D_800909B0[50].unkE = 0;
	func_80070514_409C4(0x32);
	func_80070BD8_41088(0x16, 0x2F);
	func_80070AEC_40F9C(0x30, 0x31);
	D_800909B0[22].unk1C = 1;

	while (state == 1) {
		changed = 0;

		if ((frameCounter < 0x1C) && ((frameCounter & 3) == 0)) {
			s32 step;
			s16 leftChar;
			s16 rightChar;
			s16 centerChar;

			step = (s32)(frameCounter >> 2);
			leftChar = (s16)(step + 0x24);
			rightChar = (s16)(0x23 - step);
			centerChar = (s16)(0x31 - step);

			func_80070514_409C4((s16)(step + 0x16));
			func_80070514_409C4(rightChar);
			func_80070514_409C4(leftChar);
			func_80070514_409C4(centerChar);
		}

		if (nameLength == 0) {
			func_80070AEC_40F9C(0x30, 0x31);
		}

		if (frameCounter >= 0x41) {
			func_80070CC4_41174();
			func_8007166C_41B1C();

			if (isButtonNewlyPressed(0, 0x9000) != 0) {
				switch (D_800D74A4) {
				case 0x30:
					if (nameLength > 0) {
						nameLength--;
						D_80047FA8[nameLength] = 0x20;
						changed = 1;
					}

					if (nameLength == 0) {
						func_80070AEC_40F9C(0x30, 0x31);
						D_800D74A4 = 0x16;
					}

					if (nameLength == 5) {
						func_80070BD8_41088(0x16, 0x2F);
					}

					entry = func_80070494_40944(0x30);
					entry->unk12 = 0x36B0;
					entry->unk14 = 0x100;
					func_800153D8_15FD8(0xCB);
					break;

				case 0x31:
					if (nameLength > 0) {
						state = 2;
						entry = func_80070494_40944(0x32);
						entry->unkA = 0;
						entry->unkE = 0;
						entry->unk4 = 0x308;
						entry->unk0 = 0x280;
					}
					break;

				default:
					if (nameLength < 6) {
						D_80047FA8[nameLength] = (u8)(D_800D74A4 + 0x2B);
						nameLength++;
						changed = 1;
					}

					if (nameLength == 1) {
						func_80070BD8_41088(0x30, 0x31);
					}

					if (nameLength == 6) {
						D_800D74A4 = 0x31;
						func_80070AEC_40F9C(0x16, 0x2F);
					}

					entry = func_80070494_40944(D_800D74A4);
					entry->unk12 = 0x36B0;
					entry->unk14 = 0x100;
					func_800153D8_15FD8(0xCB);
					break;
				}
			}

			if (isButtonNewlyPressed(0, 0x4000) != 0) {
				D_800476A0 = 3;
				state = 0;
				entry = func_80070494_40944(0x32);
				entry->unkA = 0;
				entry->unkE = 0;
				entry->unk4 = 0x308;
				entry->unk0 = 0x280;
			}
		}

		if (changed != 0) {
			s32 len;

			len = 0;
			if (D_80047FA8[0] != 0x20) {
				typedName[0] = D_80047FA8[0];
				len = 1;
				while ((len < 6) && (D_80047FA8[len] != 0x20)) {
					typedName[len] = D_80047FA8[len];
					len++;
				}
			}

			typedName[len] = 0;
			textWidth = (s16)(func_8000A2B8_AEB8(typedName, 0) + 0x30);
			D_800909B0[50].unk0 = D_800909B0[50].unk2;
			D_800909B0[50].unk4 = D_800909B0[50].unk6;
			D_800909B0[50].unkA = D_800909B0[50].unkC;
			D_800909B0[50].unkE = D_800909B0[50].unk10;
			D_800909B0[50].unk2 = (s16)(0xA0 - (textWidth >> 1));
			D_800909B0[50].unkC = textWidth;

			func_80070494_40944(0x32)->unk16 = 0;
			func_80070514_409C4(0x32);
			func_80070494_40944(0x32)->unk28 = 0x64;
		}

		func_80075D58_46208(0);
		func_800731A8_43658();
		func_8000B044_BC44();
		func_8000505C_5C5C();

		if (frameCounter < 0x3E8) {
			frameCounter++;
		}
	}

	func_800153D8_15FD8(0xC8);
	if (state != 0) {
		if (func_80077344_477F4() == 2) {
			D_800476A0 = 1;
		} else {
			D_800476A0 = 3;
			state = func_80078424_488D4();
		}
	}

	func_8000AFDC_BBDC();
	func_800709F0_40EA0();
	func_800764B4_46964();

	(void)backupName;
	return state;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80078424_488D4.s")
#endif

// startFile (unused?)
void func_800788E4_48D94(void) {
	currentLevel = 1;
	func_800050C4_5CC4();
	func_8000DC9C_E89C(D_8005BB48[D_80031B84], D_8005BB48[D_80031B84 ^ 1]);
	func_8000505C_5C5C();
	showDemoText = 0;
	D_800313C8_31FC8 = 1;
	func_80006DDC_79DC();
	D_800313C8_31FC8 = 0;
	func_80011D24_12924();
}

// Start saved game
void func_80078968_48E18(void) {
	func_800050C4_5CC4();
	func_8000DC9C_E89C(D_8005BB48[D_80031B84], D_8005BB48[D_80031B84 ^ 1]);
	func_8000505C_5C5C();
	D_800313C8 = 1;
	func_80006DDC_79DC();
	D_800313C8 = 0;
	func_80011D24_12924();
	func_80070940_40DF0();
}

// doFrontEndLoop
#ifdef NON_MATCHING
void func_800789E4_48E94(void) {
  Gfx* gfx;
  s32 result;
  s32 fileSelectCycle;
  s32 optionArg;
  s32* frontendFlags;

  D_80052ACA = 3;
  gameplayMode = GAMEPLAY_MODE_UNKD;
  osSetTime(D_80068084, D_80068088);
  func_80071738_41BE8();
  D_800D6D88 = 0x30;
  D_800D6D89 = 0xB9;
  D_800D6D8A = 0x20;
  func_8000AFDC_BBDC();
  D_800D74A4 = -1;
  D_800D74A6 = -1;
  currentSaveFileIndex = 0;
  func_80011D24_12924();
  func_800118F8_124F8();

  gDPSetAlphaDither(D_8005BB2C++, G_AD_NOISE);
  gDPSetColorDither(D_8005BB2C++, G_CD_BAYER);

  setFullResolution();

  if (currentFrontendState == FE_STATE_PRESS_START) {
  } else {
	if (osTvType == 0) {
	  displayWrongConsoleRegionNotice();
	}
	if (D_80047584 == 0) {
	  displayNoControllerNotice();
	}
	displayClearSaveDataScreen();
	displayCopyrightScreen();
	displayPublisherLogoScreen();
	displayDmaLogoScreen();
  }

  fileSelectCycle = 0;
  optionArg = 0;
  frontendFlags = &D_80031420;

  while (1) {
	gDPSetColorDither(D_8005BB2C++, G_CD_DISABLE);
	D_800476A2 = 1;

	if ((u16)currentFrontendState >= 0x19) {
	  continue;
	}

	switch ((u16)currentFrontendState) {
	  case FE_STATE_INTRO_MOVIE:
		result = doIntroMovie();
		if (result == 1) {
		  currentFrontendState = FE_STATE_INTRO_MOVIE;
		} else if (result == 2) {
		  currentFrontendState = FE_STATE_PRESS_START;
		}
		break;

	  case FE_STATE_PRESS_START:
		result = func_8007704C_474FC();
		if (result == 0) {
		  currentFrontendState = FE_STATE_INTRO_MOVIE;
		} else if (result == 2) {
		  currentLevel = LEVEL_GREECE;
		  currentFrontendState = FE_STATE_FILE_SELECT;
		  D_80048026 = 0;
		  D_80048028 = 0;
		} else if (result == 3) {
		  fileSelectCycle = (fileSelectCycle + 1) % 3;
		  if (fileSelectCycle == 0) {
			currentFrontendState = FE_STATE_INTRO_MOVIE;
		  }
		  if (fileSelectCycle == 1) {
			currentFrontendState = FE_STATE_START_DEMO;
		  }
		  if (fileSelectCycle == 2) {
			currentFrontendState = FE_STATE_HIGH_SCORES;
		  }
		}
		break;

	  case FE_STATE_FILE_SELECT:
		result = func_80076C98_47148();
		if ((u32)result < 7) {
		  switch (result) {
			case 0:
			  currentFrontendState = FE_STATE_CHOOSE_FILE_NAME;
			  break;
			case 1:
			  currentFrontendState = FE_STATE_PRESS_START;
			  break;
			case 2:
			case 3:
			case 4:
			  currentFrontendState = FE_STATE_FILE_DETAILS;
			  break;
			case 5:
			  currentFrontendState = FE_STATE_DELETE_FILE;
			  break;
			case 6:
			  currentFrontendState = FE_STATE_COPY_FILE;
			  break;
		  }
		}
		break;

	  case FE_STATE_CHOOSE_FILE_NAME:
		result = func_80078424_488D4();
		if (result == 0) {
		  currentFrontendState = FE_STATE_FILE_SELECT;
		} else if (result == 2) {
		  currentFrontendState = FE_STATE_FILE_DETAILS;
		}
		break;

	  case FE_STATE_FILE_DETAILS:
		optionArg = 0;
		result = func_800779FC_47EAC();
		if (result == 0) {
		  currentFrontendState = FE_STATE_FILE_SELECT;
		} else if (result == 2) {
		  currentFrontendState = FE_STATE_FILE_OPTIONS;
		} else if (result == 3) {
		  currentFrontendState = FE_STATE_START_GAMEPLAY;
		} else if (result == 4) {
		  currentFrontendState = FE_STATE_START_DEMO;
		}
		break;

	  case FE_STATE_START_GAMEPLAY:
		showDemoText = 0;
		func_80078968_48E18();
		currentFrontendState = FE_STATE_PRESS_START;
		break;

	  case FE_STATE_FILE_OPTIONS:
		result = func_80077CE0_48190(optionArg);
		if ((u32)result < 8) {
		  switch (result) {
			case 0:
			  currentFrontendState = FE_STATE_FILE_DETAILS;
			  break;
			case 2:
			  currentFrontendState = FE_STATE_REPLAY_LEVEL_SELECT;
			  break;
			case 3:
			  currentFrontendState = FE_STATE_HIGH_SCORES;
			  break;
			case 4:
			  currentFrontendState = FE_STATE_CHANGE_SFX_OPTION;
			  break;
			case 5:
			  currentFrontendState = FE_STATE_CHANGE_MUSIC_OPTION;
			  break;
			case 6:
			  currentFrontendState = FE_STATE_CHANGE_AIM_OPTION;
			  break;
			case 7:
			  currentFrontendState = FE_STATE_CHANGE_BLOOD_OPTION;
			  break;
		  }
		}
		break;

	  case FE_STATE_START_DEMO:
		showDemoText = 1;
		currentLevel = LEVEL_GREECE;
		func_80007570_8170();
		D_80047F94 = 0;
		weaponSlots[0] = 2;
		D_80047F9C = 0;
		D_8004DC48 = 0;
		D_8004DC4C = 0;
		D_80048025 = 0;
		D_80048024 = 0;
		D_80052ACD = 0;
		D_8004D154 = 0;
		D_8004D150 = 0;
		D_8004D158 = 0;
		setRandomSeed(0x00FACADE);
		func_80078968_48E18();
		currentFrontendState = FE_STATE_PRESS_START;
		break;

	  case FE_STATE_UNUSED_START_GAMEPLAY_1:
		func_800788E4_48D94();
		break;

	  case FE_STATE_UNUSED_START_GAMEPLAY_2:
		func_800788E4_48D94();
		break;

	  case FE_STATE_UNUSED_START_GAMEPLAY_3:
		func_800788E4_48D94();
		break;

	  case FE_STATE_REPLAY_LEVEL_SELECT:
		optionArg = 0;
		result = func_80077E88_48338();
		if (result == 0) {
		  currentFrontendState = FE_STATE_FILE_OPTIONS;
		} else if (result == 2) {
		  func_80007570_8170();
		  currentFrontendState = FE_STATE_START_GAMEPLAY;
		} else if (result == 3) {
		  currentFrontendState = FE_STATE_REPLAY_BOSS_SELECT;
		}
		break;

	  case FE_STATE_REPLAY_BOSS_SELECT:
		optionArg = 0;
		result = func_80078110_485C0();
		if (result == 0) {
		  currentFrontendState = FE_STATE_REPLAY_LEVEL_SELECT;
		} else if (result == 2) {
		  func_80007570_8170();
		  D_80047F9C = 5;
		  D_80047F98 = D_8003E0EE[currentLevel];
		  D_80047F94 = D_8003E0EE[currentLevel];
		  if (currentLevel == LEVEL_COMET) {
			func_800072CC_7ECC(0x1FULL);
		  }
		  currentFrontendState = FE_STATE_START_GAMEPLAY;
		  D_80052ACD |= 0x11;
		}
		break;

	  case FE_STATE_CHANGE_AIM_OPTION:
		optionArg = 5;
		if (*frontendFlags & 4) {
		  *frontendFlags &= ~4;
		} else {
		  *frontendFlags |= 4;
		}
		currentFrontendState = FE_STATE_FILE_OPTIONS;
		break;

	  case FE_STATE_CHANGE_SFX_OPTION:
		optionArg = 3;
		result = ((*frontendFlags & 0x60) >> 5) - 1;
		if (result < 0) {
		  result = 3;
		}
		*frontendFlags &= ~0x60;
		*frontendFlags |= (result << 5);
		func_80016FD0_17BD0((s16)result);
		currentFrontendState = FE_STATE_FILE_OPTIONS;
		break;

	  case FE_STATE_CHANGE_MUSIC_OPTION:
		optionArg = 4;
		result = ((*frontendFlags & 0x18) >> 3) - 1;
		if (result < 0) {
		  result = 3;
		}
		*frontendFlags &= ~0x18;
		*frontendFlags |= (result << 3);
		func_800170F4_17CF4((s16)result);
		currentFrontendState = FE_STATE_FILE_OPTIONS;
		break;

	  case FE_STATE_HIGH_SCORES:
		optionArg = 0;
		func_800796D0_49B80(0, 0);
		currentFrontendState = FE_STATE_PRESS_START;
		break;

	  case FE_STATE_CHANGE_BLOOD_OPTION:
		optionArg = 6;
		result = (*frontendFlags & 3) - 1;
		if (result < 0) {
		  result = 3;
		  if (D_800313D0_31FD0 == 2) {
			result = 1;
		  }
		}
		if (result == 2) {
		  result = 1;
		}
		*frontendFlags &= ~3;
		*frontendFlags |= result;
		currentFrontendState = FE_STATE_FILE_OPTIONS;
		break;

	  case FE_STATE_DELETE_FILE:
		func_80077494_47944();
		currentFrontendState = FE_STATE_FILE_SELECT;
		break;

	  case FE_STATE_COPY_FILE:
		func_800776BC_47B6C();
		currentFrontendState = FE_STATE_FILE_SELECT;
		break;

	  case FE_STATE_LANGUAGE_SELECT:
		optionArg = 0;
		result = func_80076FD8_47488();
		if (result == 2) {
		  D_800313D0_31FD0 = 2;
		  currentFrontendState = FE_STATE_INTRO_MOVIE;
		} else if (result == 4) {
		  D_800313D0_31FD0 = 1;
		  currentFrontendState = FE_STATE_INTRO_MOVIE;
		} else if ((result == 0) || (result == 3)) {
		  D_800313D0_31FD0 = 0;
		  currentFrontendState = FE_STATE_INTRO_MOVIE;
		}
		D_800476A0 = 6;
		break;

	  case FE_STATE_INVALID_2:
	  case FE_STATE_INVALID_5:
	  case FE_STATE_INVALID_6:
	  case FE_STATE_INVALID_16:
		break;
	}
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800789E4_48E94.s")
#endif

void func_800791A0_49650(s32 arg0) {
	f32 one;

	osRecvMesg(&D_8006A8D0, &D_80068038, OS_MESG_BLOCK);
	func_80011E14_12A14(0);
	func_80004CC8_58C8();
	func_80004D38_5938();

	gSPDisplayList(D_8005BB2C++, ((u32)D_800311A8 & 0x1FFFFFFF));
	func_80004F64_5B64();
	gDPSetColorImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, D_8005BB48[D_80031B84_32784] & 0x1FFFFFFF);
	gDPPipeSync(D_8005BB2C++);

	if (arg0 == 3) {
		gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
		func_80075710_45BC0();
	} else if ((arg0 == 0) || (arg0 == 2)) {
		one = 1.0f;
		func_80005C5C_685C(D_408A8F0, 2, 1, 8, 0, 0, 0x140, 0xF0, one, one, D_409E8F0);
		if (arg0 == 2) {
			gDPSetRenderMode(D_8005BB2C++, AA_EN | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | FORCE_BL | G_RM_PASS,
							 AA_EN | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL | FORCE_BL | G_RM_NOOP2);
			gDPSetAlphaCompare(D_8005BB2C++, G_AC_THRESHOLD);
			func_80005C5C_685C(D_40856F0, 2, 1, 8, 0, 0xB0, 0x140, 0x40, one, one, D_408A6F0);
			func_80005C5C_685C(D_40A9440, 2, 1, 8, 0x18, 0xC, 0x60, 0x40, one, one, D_40AAC40);
			gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
		}
	} else {
		func_80004DDC_59DC(0, 0, 0, 0, 0xEF);
	}

	gSPDisplayList(D_8005BB2C++, ((u32)D_800311D0 & 0x1FFFFFFF));
}

/**
 * @brief Returns the byte length of a null-terminated string.
 */
s32 func_8007946C_4991C(u8* arg0) {
	s32 len;
	u8* ptr;

	len = 0;
	ptr = arg0;
	if (*ptr != 0) {
		do {
			len++;
		} while (*++ptr != 0);
	}

	return len;
}

#ifdef NON_MATCHING
// CURRENT(8549)
void func_8007949C_4994C(s32 arg0, s32 arg1) {
	s32 i;
	s32 tempA3;
	s32 tempT0;
	s32 v1;
	SaveSummary* entry;
	u8* tempS5;
	u8* tempS7;
	u8* tempS8;

	tempA3 = (u16)D_80052A98[0].secondsElapsed;
	tempT0 = *(u16*)&D_80052A98[0].humansKilled;

	for (i = 0; i < 5; i++) {
		if (D_80047FB8[i].score < arg0) {
			entry = &D_80047FB8[i];
			if (i < 4) {
				tempS8 = (u8*)&D_80048008;
				tempS5 = tempS8;
				tempS7 = tempS8;
				v1 = 4;
				while (1) {
					u8 tempU0;
					u8 tempU1;
					u8 tempU2;
					u8 tempU3;
					u8 tempU4;
					u8 tempU5;
					s32 tempW0;
					s16 tempH0;
					s32 tempW1;

					tempU0 = tempS8[-0x14];
					tempU1 = tempS8[-0x13];
					tempS8[0] = tempU0;
					tempS8[1] = tempU1;
					tempU2 = tempS5[-0xF];
					tempU3 = tempS5[-0x10];
					tempU4 = tempS5[-0x11];
					tempU5 = tempS5[-0x12];
					tempS5[5] = tempU2;
					tempS5[4] = tempU3;
					tempS5[3] = tempU4;
					tempS5[2] = tempU5;
					tempW0 = *(s32*)(tempS7 - 0xC);
					tempH0 = *(s16*)(tempS7 - 8);
					tempW1 = *(s32*)(tempS7 - 4);
					tempS5--;
					tempS7--;
					v1--;
					tempS5 -= 0x13;
					tempS7 -= 0x13;
					tempS8 -= 0x14;
					*(s32*)(tempS7 + 0x1C) = tempW0;
					*(s16*)(tempS7 + 0x20) = tempH0;
					*(s32*)(tempS7 + 0x24) = tempW1;
					if (i == v1) {
						break;
					}
				}
			}

			{
				u8* src;
				u8* dst;

				src = D_80047FA8;
				dst = &entry->unk0;
				do {
					*dst++ = *src++;
				} while (src < &D_80047FAE);
			}

			entry->unkC = 0;
			entry->unkC += tempT0;
			entry->unkC += *(u16*)&D_80052A98[1].humansKilled;
			entry->unk10 = 0;
			entry->unk10 = tempA3;
			entry->unk10 += D_80052A98[1].secondsElapsed;
			entry->unk10 += D_80052A98[2].secondsElapsed;
			entry->unkC += *(u16*)&D_80052A98[2].humansKilled;
			entry->unk10 += D_80052A98[3].secondsElapsed;
			entry->unkC += *(u16*)&D_80052A98[3].humansKilled;
			entry->unk10 += D_80052A98[4].secondsElapsed;
			entry->unkC += *(u16*)&D_80052A98[4].humansKilled;
			entry->unk10 += D_80052A98[5].secondsElapsed;
			entry->unk8 = arg0;
			entry->unkC += *(u16*)&D_80052A98[5].humansKilled;
		}
	}

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007949C_4994C.s")
#endif

// displayHighScores
#ifdef NON_MATCHING
// CURRENT(7438)
void func_800796D0_49B80(s32 arg0, s32 arg1) {
	s16 shouldExit;
	s16 i;
	s16 timer;
	volatile s32 tempArg1;
	s32 t;
	s32 fade;
	s32 slide;
	s32 minutes;
	s32 seconds;
	s32 centiseconds;
	SaveSummary* entry;

	shouldExit = 0;
	timer = 0;
	tempArg1 = arg1;

	func_8007949C_4994C(arg0, tempArg1 & 0xFFFF);
	func_800134CC_140CC();

	do {
		if (timer < 0x7D0) {
			timer++;
		}

		func_800791A0_49650(0);
		func_8000AFDC_BBDC();

		drawText(&D_800ADCE0_7E190, 0xFF, 0, 0);
		drawText(&D_800ADCE4_7E194, 0xFF);

		switch (D_800313D0_31FD0) {
		case 2:
			drawText(&D_800ADCF8_7E1A8, 0x80, 0);
			break;
		case 1:
			drawText(&D_800ADD08_7E1B8, 0x80, 0);
			break;
		case 0:
		default:
			drawText(&D_800ADCE8_7E198, 0x80, 0);
			break;
		}

		drawText(&D_800ADD18_7E1C8, 0x14, 0x32, 0x12C, 0xFA);

		for (i = 0; i < 5; i++) {
			t = i * 250;
			if (timer < (t + 0x14)) {
				continue;
			}
			if ((i != 4) && (timer >= (t + 0x10E))) {
				continue;
			}

			slide = (timer - t) - 0x14;
			if (slide < 0x1F) {
				continue;
			}

			fade = slide - 0x32;

			if (i != 4) {
				t = (fade * 6) - 0x384;
				if (t < 0) {
					t = 0;
				}
				if (t >= 0x12D) {
					t = 0x12C;
				}

				drawText(&D_800ADD1C_7E1CC, t);
				drawText(&D_800ADD20_7E1D0, (s32)(255.0f - (((f32)t / 300.0f) * 255.0f)));
			}

			drawText(&D_800ADD24_7E1D4, 0x80, 2, *((&D_80031548) - i));

			if (fade >= 0x10) {
				if (i == 4) {
					func_8000577C_637C();
				} else {
					drawText(&D_800ADD2C_7E1DC, 0, 0xFF, 0);
				}

				drawText(&D_800ADD30_7E1E0, 0x800);

				entry = (&D_80048008) - i;
				t = 6 - func_8007946C_4991C(entry);
				t = (t < 0) ? ((t + 1) >> 1) : (t >> 1);
				drawText(&D_800ADD34_7E1E4, t + 4, 3, entry);
				drawText(&D_800ADD3C_7E1EC, 0x400);
			}

			t = (fade << 4) - 0x1E0;
			if (t < 0) {
				t = 0;
			}
			if (t >= 0x281) {
				t = 0x280;
			}

			entry = (&D_80048008) - i;
			drawText(&D_800ADD40_7E1F0, t);

			switch (D_800313D0_31FD0) {
			case 2:
				drawText(&D_800ADD50_7E200, -0x10, 4);
				break;
			case 1:
				drawText(&D_800ADD5C_7E20C, -0x10, 4);
				break;
			case 0:
			default:
				drawText(&D_800ADD44_7E1F4, -0x10, 4);
				break;
			}

			drawText(&D_800ADD68_7E218, -t);
			drawText(&D_800ADD6C_7E21C, 0x30, 4, entry->unk8);

			t = (fade << 4) - 0x2D0;
			if (t < 0) {
				t = 0;
			}
			if (t >= 0x281) {
				t = 0x280;
			}

			drawText(&D_800ADD74_7E224, t);

			switch (D_800313D0_31FD0) {
			case 2:
				drawText(&D_800ADD8C_7E23C, -0x10, 5);
				break;
			case 1:
				drawText(&D_800ADD98_7E248, -0x10, 5);
				break;
			case 0:
			default:
				drawText(&D_800ADD78_7E228, -0x10, 5);
				break;
			}

			drawText(&D_800ADDA8_7E258, -t);
			drawText(&D_800ADDAC_7E25C, 0x30, 5, entry->unkC);

			t = (fade << 4) - 0x3C0;
			if (t < 0) {
				t = 0;
			}
			if (t >= 0x281) {
				t = 0x280;
			}

			fade = entry->unk10;
			minutes = (fade / 60) / 60;
			seconds = (fade / 60) % 60;
			centiseconds = fade % 60;

			if (minutes >= 100) {
				minutes = 99;
				seconds = 59;
				centiseconds = 59;
			}

			drawText(&D_800ADDB4_7E264, t);

			switch (D_800313D0_31FD0) {
			case 2:
				drawText(&D_800ADDC0_7E270, -0x10, 6);
				break;
			case 1:
				drawText(&D_800ADDC8_7E278, -0x10, 6);
				break;
			case 0:
			default:
				drawText(&D_800ADDB8_7E268, -0x10, 6);
				break;
			}

			drawText(&D_800ADDD4_7E284, -t);

			if ((minutes < 10) && (seconds < 10) && (centiseconds < 10)) {
				drawText(&D_800ADDD8_7E288, 0x30, 6, minutes, seconds, centiseconds);
			} else if ((minutes < 10) && (seconds < 10)) {
				drawText(&D_800ADDE8_7E298, 0x30, 6, minutes, seconds, centiseconds);
			} else if ((minutes < 10) && (centiseconds < 10)) {
				drawText(&D_800ADDF8_7E2A8, 0x30, 6, minutes, seconds, centiseconds);
			} else if ((seconds < 10) && (centiseconds < 10)) {
				drawText(&D_800ADE08_7E2B8, 0x30, 6, minutes, seconds, centiseconds);
			} else if (minutes < 10) {
				drawText(&D_800ADE18_7E2C8, 0x30, 6, minutes, seconds, centiseconds);
			} else if (seconds < 10) {
				drawText(&D_800ADE24_7E2D4, 0x30, 6, minutes, seconds, centiseconds);
			} else if (centiseconds < 10) {
				drawText(&D_800ADE30_7E2E0, 0x30, 6, minutes, seconds, centiseconds);
			} else {
				drawText(&D_800ADE3C_7E2EC, 0x30, 6, minutes, seconds, centiseconds);
			}
		}

		if ((isButtonNewlyPressed(0, 0xD000) != 0) || ((i == 5) && (timer == 0x640))) {
			shouldExit = 1;
		}

		func_8000B044_BC44();
		gDPFullSync(D_8005BB2C++);
		gSPEndDisplayList(D_8005BB2C++);
		osSendMesg(&D_8006A8B0, &D_800314CC_320CC, 1);
	} while (shouldExit == 0);

	func_800153D8_15FD8(0xC8);
	drawText(&D_800ADE48_7E2F8, 0xFF, 0xFF, 0xFE);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800796D0_49B80.s")
#endif

// CURRENT(1074)
#ifdef NON_MATCHING
void func_80079F30_4A3E0(s32 arg0) {
	volatile s32 sp0;

	sp0 = arg0;
	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0xFF, 0xFF, arg0 & 0xFF);
	gDPPipeSync(D_8005BB2C++);
	gDPFillRectangle(D_8005BB2C++, 0, 0, 320, 240);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80079F30_4A3E0.s")
#endif

// CURRENT(3074)
#ifdef NON_MATCHING
// displayGameOver
void func_8007A038_4A4E8(void) {
	s32 timer;
	s32 fade;
	s32 pad0;
	LookAt lookAt;
	u32 dlistPtrs[8];
	Unk80052B40 rot;
	Unk80052B40 trans;
	Unk80052B40 scale;
	s32 i;
	s32 step;
	s16 intensity;
	s16 blend;
	Light *lookAtLights[2];

	*(DListPtrsCopy *)dlistPtrs = *(DListPtrsCopy *)D_800948C0_64D70;

	if (showDemoText != 0) {
		return;
	}

	func_800050C4_5CC4();
	func_8000DC9C_E89C(D_8005BB48[D_80031B84_32784], D_8005BB48[D_80031B84_32784 ^ 1]);
	osSetTime(((u64)0x140 << 32) | 0xF0);
	func_8000DC30_E830((s32)D_80267080, (s32)&D_802B2080);
	func_8000505C_5C5C();
	func_800137AC_143AC();

	fade = 0;
	D_80052ACC = 1;
	timer = 0x1F3;
	step = 0x1F4;

	lookAtLights[0] = &lookAt.l[0];
	lookAtLights[1] = &lookAt.l[1];

	if (step != 0) {
		for (;;) {
		fade += 2;
		osRecvMesg(&D_8006A8D0, &D_80068038, 1);
		func_80011E14_12A14(0);
		func_80004CC8_58C8();
		func_80004D38_5938();
		func_80004F64_5B64();
		func_80004DDC_59DC(0, 0, 0, 0, 0xEF);

		gDPSetColorImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, D_8005BB48[D_80031B84_32784] & 0x1FFFFFFF);
		func_80005C5C_685C((u8 *)&D_802B2080, 0, 2, 0x10, 0, 0, 0x140, 0xE0, 1.0f, 1.0f, 0);

		if (fade < 0x7F) {
			gDPSetColorImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, D_8005BB48[D_80031B84_32784] & 0x1FFFFFFF);
			func_80005844_6444(0, 0, 0, (fade << 1) & 0xFF);
		} else {
			gDPSetColorImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, D_8005BB48[D_80031B84_32784] & 0x1FFFFFFF);
			func_80005844_6444(0, 0, 0, 0xFF);
		}

		gDPPipeSync(D_8005BB2C++);
		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
		gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
		gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
		gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK | G_LIGHTING);

		guOrtho((Mtx *)D_8005BB38, -320.0f, 320.0f, -240.0f, 240.0f, -1.0f, 1000.0f, 1.0f);
		gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
		D_8005BB38 += 0x40;
		gSPPerspNormalize(D_8005BB2C++, 0xFFFF);

		guLookAtReflect((Mtx *)D_8005BB38, &lookAt, 0.0f, 0.0f, 100.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
		gSPLookAtX(D_8005BB2C++, lookAtLights[0]);
		gSPLookAtY(D_8005BB2C++, lookAtLights[1]);
		gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
		D_8005BB38 += 0x40;
		gSPMatrix(D_8005BB2C++, (Mtx *)((u32)&D_80031120_31D20 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

		for (i = 0, step = fade; i < 8; i++, step -= 0x10) {
			s32 alphaStep = step;

			if (i >= 4) {
				alphaStep = step - 0x20;
			}

			intensity = alphaStep * 2;
			if (intensity < 0) {
				intensity = 0;
			}
			if (intensity > 0x100) {
				intensity = 0x100;
			}

			scale.unk0 = intensity;
			scale.unk2 = intensity;
			scale.unk4 = intensity;
			func_800039D0_45D0(0, 0, &scale, D_8005BB38);
			gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			D_8005BB38 += 0x40;

			rot.unk0 = ((i & 3) * 0x6C) - 0xA2;
			rot.unk2 = 0x36 - ((i >> 2) * 0x6C);
			rot.unk4 = 0x32;
			func_800039D0_45D0(&rot, 0, 0, D_8005BB38);
			gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			D_8005BB38 += 0x40;

			blend = (alphaStep << 10) & 0xFFFF;
			if (intensity == 0x100) {
				blend = 0;
			}

			trans.unk0 = blend;
			trans.unk2 = 0;
			trans.unk4 = 0;
			func_800039D0_45D0(0, &trans, 0, D_8005BB38);
			gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			D_8005BB38 += 0x40;

			gSPDisplayList(D_8005BB2C++, (Gfx *)dlistPtrs[i]);
			gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
		}

		func_8000505C_5C5C();
		if (isButtonNewlyPressed(0, 0xD000) != 0) {
			break;
		}

			if (timer == 0) {
				break;
			}
			timer--;
		}
	}

	D_80052ACC = 0;
	func_800056A8_62A8();
	func_800056A8_62A8();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007A038_4A4E8.s")
#endif

/**
 * @brief Simple wrapper calling func_8007C7F4_4CCA4.
 */
void func_8007A754_4AC04(void) {
	func_8007C7F4_4CCA4();
}

#ifdef NON_MATCHING
// CURRENT(22177)
void func_8007A774_4AC24(s32 arg0) {
	s16 phase;
	s32 pad0;
	s32 pad1;
	s16 timer;
	u16 perspNorm;
	s16 rotX;
	s16 rotY;
	s16 rotZ;
	s16 posX;
	s16 posY;
	s16 posZ;
	s16 tilt;
	s16 blend;
	s16 cameraPulse;
	s32 isAnimated;

	phase = D_800D7962;
	D_80052A8C = D_80052A8C + 1;

	isAnimated = 0;
	rotX = 0x154;
	posZ = 0;
	rotZ = 0;
	tilt = 0;
	blend = 0;
	posX = 0x50;
	posY = 0x2A8;
	rotY = 0x1E0;

	cameraPulse = 0;

	switch (phase - 5) {
	case 0:
		timer = D_800D7960;
		rotY = (s16)(((((s32)timer << 4) - timer) << 5) / 120);
		D_800D7960 = timer + 1;
		if (timer >= 121) {
			D_800D7962 = phase + 1;
			D_800D7960 = 0;
		}
		break;

	case 1:
		timer = D_800D7960;
		D_800D7960 = timer + 1;
		if (timer >= 71) {
			D_800D7960 = 0;
			D_800D7962 = phase + 1;
		}
		break;

	case 2:
		timer = D_800D7960;
		blend = (s16)(-100 * timer);
		D_800D7960 = timer + 1;
		if (timer >= 101) {
			D_800D7960 = 0;
			D_800D7962 = phase + 1;
		}
		break;

	case 3:
		timer = D_800D7960;
		rotX = (s16)(D_800AE868_7ED18 - ((f64)timer * D_800AE870_7ED20));
		posX = (s16)(((f64)timer * 8.5) + 80.0);
		posY = (s16)(D_800AE878_7ED28 - ((f64)timer * D_800AE880_7ED30));
		blend = (s16)(((timer * 125) * 4) - 10000);
		D_800D7960 = timer + 1;
		if (timer >= 21) {
			D_800D7960 = 0;
			D_800D7962 = phase + 1;
		}
		break;

	case 4:
		timer = D_800D7960;
		posZ = (s16)(-332 * timer);
		posX = (s16)(250 - timer);
		rotX = -0x2D;
		posY = (s16)(D_800AE888_7ED38 + ((f64)timer * D_800AE890_7ED40));
		D_800D7960 = timer + 1;
		if (timer >= 51) {
			D_800D7960 = 0;
			D_800D7962 = phase + 1;
		}
		break;

	case 5:
		timer = D_800D7960;
		isAnimated = 1;
		rotX = -0x2D;
		rotZ = (s16)(-3 * timer);
		posZ = -15000;
		posX = 200;
		posY = 200;
		D_800D7960 = timer + 1;
		if (timer >= 301) {
			D_800D7962 = phase + 1;
			D_800D7960 = 0;
		}
		break;

	default:
		posX = 200;
		posY = 200;
		rotX = -0x2D;
		rotZ = -500;
		posZ = -15000;
	}

	guPerspective(D_8005BB38, &perspNorm, 73.0f, 1.25f, 150.0f, D_800AE898_7ED48, 1.0f);

	gSPPerspNormalize(D_8005BB2C++, perspNorm);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

	guLookAt(D_8005BB38 + 0x40, 0.0f, 0.0f, 120.0f, 0.0f, 85.0f, 300.0f, 0.0f, 1.0f, 0.0f);

	gSPMatrix(D_8005BB2C++, (Mtx *)((D_8005BB38 + 0x40) & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
	D_8005BB38 += 0x80;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_TEXTURE_ENABLE | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH | G_CLIPPING | 0xFF60CDF8);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_LIGHTING | G_SHADING_SMOOTH);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RNX, 4);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RNY, 4);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RPX, 0xFFFC);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RPY, 0xFFFC);
	gDPPipeSync(D_8005BB2C++);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPPipeSync(D_8005BB2C++);
	gDPPipeSync(D_8005BB2C++);
	gSPNumLights(D_8005BB2C++, 1);
	gSPLight(D_8005BB2C++, &D_800942C0_64770, 1);
	gSPLight(D_8005BB2C++, &D_800942B8_64768, 2);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_TEXTURE_ENABLE | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH | G_CLIPPING | 0xFF60CDF8);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_LIGHTING | G_SHADING_SMOOTH);

	D_80052B40.unk0 = rotZ;
	if (isAnimated == 1) {
		D_80052B40.unk2 = (s16)((((f64)(f32)coss((u16)(D_80052A8C * 2000)) / 32768.0) * 8.0) + 40.0);
	} else {
		D_80052B40.unk2 = 0x28;
	}

	D_80052B40.unk4 = 0;
	D_80052B48.unk0 = (s16)(-0x898 - (posZ / 3));
	D_80052B48.unk2 = posZ;
	D_80052B48.unk4 = 0x3DB8;
	D_80052B50.unk0 = rotY;
	D_80052B50.unk2 = rotY;
	D_80052B50.unk4 = rotY;

	func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, D_8005BB38);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	if (isAnimated == 1) {
		D_80052B48.unk0 = (s16)((s32)(((f64)(f32)coss((u16)(D_80052A8C * 1000)) / 32768.0) * D_800AE8A0_7ED50));
	} else {
		D_80052B48.unk0 = 0;
	}

	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = blend / 5;
	D_80052B40.unk0 = 0;
	D_80052B40.unk2 = 0;
	D_80052B40.unk4 = 0;

	func_800039D0_45D0(&D_80052B40, &D_80052B48, 0, D_8005BB38);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	gSPDisplayList(D_8005BB2C++, D_040A6650);

	D_80052B40.unk0 = 0;
	D_80052B40.unk2 = 0x30;
	D_80052B40.unk4 = 0;
	if (isAnimated == 1) {
		cameraPulse = (s16)((s32)(((f64)(f32)coss((u16)(D_80052A8C * 2000)) / 32768.0) * D_800AE8A8_7ED58));
		tilt = (s16)(((f64)(f32)sins((u16)(D_80052A8C * 1000)) / 32768.0) * D_800AE8B0_7ED60);
	}

	D_80052B48.unk0 = cameraPulse;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = tilt;
	func_800039D0_45D0(&D_80052B40, &D_80052B48, 0, D_8005BB38);

	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

	D_80052B40.unk0 = 0;
	D_80052B40.unk2 = -8;
	D_80052B40.unk4 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;

	if (isAnimated == 1) {
		D_80052B48.unk0 = (s16)(((f64)(f32)coss((u16)(D_80052A8C * 2000)) / 32768.0) * D_800AE8B8_7ED68);
	} else {
		D_80052B48.unk0 = 0;
	}

	func_800039D0_45D0(&D_80052B40, &D_80052B48, 0, D_8005BB38);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	D_80052B40.unk0 = rotZ;
	D_80052B40.unk2 = rotX;
	D_80052B40.unk4 = 0;

	if (isAnimated == 1) {
		D_80052B50.unk0 = (s16)(200.0 - (((f64)(f32)sins((u16)(D_80052A8C * 2000)) / 32768.0) * 20.0));
		D_80052B50.unk2 = (s16)(200.0 + (((f64)(f32)sins((u16)(D_80052A8C * 2000)) / 32768.0) * 20.0));
		D_80052B50.unk4 = (s16)(200.0 - (((f64)(f32)sins((u16)(D_80052A8C * 2000)) / 32768.0) * 20.0));
	} else {
		D_80052B50.unk0 = posX;
		D_80052B50.unk2 = posY;
		D_80052B50.unk4 = posX;
	}

	func_800039D0_45D0(&D_80052B40, 0, &D_80052B50, D_8005BB38);
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	gSPDisplayList(D_8005BB2C++, D_040A8F70);

	gDPPipeSync(D_8005BB2C++);

	if (arg0 == 0) {
		D_800948E0_64D90++;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007A774_4AC24.s")
#endif

// displayClearSaveData
#ifdef NON_MATCHING
// CURRENT(1455)
void func_8007B618_4BAC8(void) {
	u8 sp3D;
	u8 sp3E;
	s32 tempOsc;
	s32 selection;
	u8 oscillation;
	s32 startReleased;
	u16 timer;

	timer = 0x4F;
	tempOsc = 0;
	startReleased = 0;
	func_800791A0_49650(1);
	gDPFullSync(D_8005BB2C++);
	gSPEndDisplayList(D_8005BB2C++);
	func_8000505C_5C5C();

	if (isButtonNewlyPressed(0, 0x1000) != 0) {
		selection = tempOsc;
		sp3D = sp3E;
		oscillation = sp3D;
		do {
			func_800791A0_49650(1);
			tempOsc = oscillation;
			oscillation = (u8)((s32)(tempOsc + 2) % 64);
			drawText(&D_800ADE4C_7E2FC, 0x82, 0xF0, 0x64);
			drawText(&D_800ADE50_7E300, 0x80, 0);
			drawText(&D_800ADE64_7E314, 0x64, 0xB4, 0x3C);
			drawText(&D_800ADE68_7E318, 0x80, 3);
			drawText(&D_800ADE80_7E330, 0x80, 4);

			if (1 == selection) {
				drawText(&D_800ADEA4_7E354, (oscillation << 1) + 0x7F, 0x32, 0x32);
			} else {
				drawText(&D_800ADEA8_7E358, 0x5A, 0x5A, 0x32);
			}

			drawText(&D_800ADEAC_7E35C, 0xA, 7);
			if (selection == 0) {
				drawText(&D_800ADEB4_7E364, (oscillation << 1) + 0x7F, 0x32, 0x32);
			} else {
				drawText(&D_800ADEB8_7E368, 0x5A, 0x5A, 0x32);
			}

			drawText(&D_800ADEBC_7E36C, 0x1A, 7);
			if ((selection == 0) && (currentControllerStates[0].stick_x < -0xA)) {
				selection = 1;
			}

			if ((1 == selection) && (currentControllerStates[0].stick_x >= 0xB)) {
				selection = 0;
			}

			if (isButtonNewlyPressed(0, 0x1000) == 0) {
				startReleased = 1;
			}

			if (isButtonNewlyPressed(0, 0x9000) != 0) {
				if (startReleased == 1) {
					func_80005AEC_66EC(0, 0, 0, 0x40);
				}
			}

			timer = (timer - 1) & 0xFFFF;
			func_8000B044_BC44();
			func_80005B84_6784();
			gDPFullSync(D_8005BB2C++);
			gSPEndDisplayList(D_8005BB2C++);
			func_8000505C_5C5C();
		} while (func_80005B30_6730() == 0);

		sp3E = oscillation;
		if (1 == selection) {
			D_800476A0 = 4;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007B618_4BAC8.s")
#endif

// displayCopyright
void func_8007B900_4BDB0(void) {
	s32 counter;

	counter = 120;
	func_800791A0_49650(1);
	gDPFullSync(D_8005BB2C++);
	gSPEndDisplayList(D_8005BB2C++);
	func_8000505C_5C5C();

	do {
		func_800791A0_49650(1);
		drawText(&D_800ADEC4_7E374, 240, 240, 240);
		drawText(&D_800ADEC8_7E378, 128, 0, 92, 91);
		drawText(&D_800ADEE8_7E398, 128, 1);
		drawText(&D_800ADF04_7E3B4, 128, 2);
		drawText(&D_800ADF1C_7E3CC, 128, 3);
		drawText(&D_800ADF3C_7E3EC, 48, 128, 4);
		drawText(&D_800ADF58_7E408, 128, 5);
		drawText(&D_800ADF7C_7E42C, 128, 6);
		drawText(&D_800ADF9C_7E44C, 128, 7);
		drawText(&D_800ADFC0_7E470, 0, 128, 9);

		if (counter == 0) {
			func_80005AEC_66EC(0, 0, 0, 64);
		}

		counter = (counter - 1) & 0xFFFF;
		func_8000B044_BC44();
		func_80005B84_6784();
		gDPFullSync(D_8005BB2C++);
		gSPEndDisplayList(D_8005BB2C++);
		func_8000505C_5C5C();
	} while (func_80005B30_6730() == 0);
}

// displayPublisherLogo
void func_8007BB0C_4BFBC(void) {
	s32 counter;

	counter = 100;
	func_800791A0_49650(1);
	gDPFullSync(D_8005BB2C++);
	gSPEndDisplayList(D_8005BB2C++);
	func_8000505C_5C5C();

	do {
		func_800791A0_49650(1);
		gDPSetTextureFilter(D_8005BB2C++, G_TF_POINT);
		func_80005C5C_685C(D_040AAE40, 2, 1, 8, 24, 80, 288, 96, 1.0f, 1.0f, D_040B1A40);

		if (counter == 0) {
			func_80005AEC_66EC(0, 0, 0, 64);
		}

		counter = (counter - 1) & 0xFFFF;
		func_8000B044_BC44();
		func_80005B84_6784();
		gDPFullSync(D_8005BB2C++);
		gSPEndDisplayList(D_8005BB2C++);
		func_8000505C_5C5C();
	} while (func_80005B30_6730() == 0);
}

// displayNoControllerNotice
void func_8007BC90_4C140(void) {
	func_800791A0_49650(1);
	gDPFullSync(D_8005BB2C++);
	gSPEndDisplayList(D_8005BB2C++);

	func_8000505C_5C5C();

	while (1) {
		func_800791A0_49650(0);
		drawText(&D_800ADFDC_7E48C, 250, 200, 200);
		drawText(&D_800ADFE0_7E490, 128, 5);
		func_8000B044_BC44();
		func_80005B84_6784();
		gDPFullSync(D_8005BB2C++);
		gSPEndDisplayList(D_8005BB2C++);

		func_8000505C_5C5C();

		if (func_80005B30_6730() != 0) {
			break;
		}
	}
}

// displayWrongConsoleRegionNotice
void func_8007BD98_4C248(void) {
	func_800791A0_49650(1);
	gDPFullSync(D_8005BB2C++);
	gSPEndDisplayList(D_8005BB2C++);

	func_8000505C_5C5C();

	do {
		func_800791A0_49650(0);
		drawText(&D_800AE000_7E4B0, 250, 200, 200);
		drawText(&D_800AE004_7E4B4, 128, 4);
		drawText(&D_800AE028_7E4D8, 128, 5);
		func_8000B044_BC44();
		func_80005B84_6784();
		gDPFullSync(D_8005BB2C++);
		gSPEndDisplayList(D_8005BB2C++);

		func_8000505C_5C5C();
	} while (func_80005B30_6730() == 0);
}

// displayDmaLogo
void func_8007BEC0_4C370(void)
{
  u16 counter;
  counter = 0x4F;
  func_8001355C_1415C();
  D_800D7960 = 0;
  D_800D7962 = 5;
  while (1)
  {
	func_800791A0_49650(1);
	func_8007A774_4AC24(0);
	if ((D_800D7962 == 0xB) || (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A | BUTTON_START) != 0))
	{
	  func_80005AEC_66EC(0, 0, 0, 0x40);
	  if (!D_800D7962)
	  {
	  }
	}
	counter--;
	func_80005B84_6784();
	gDPFullSync(D_8005BB2C++);
	gSPEndDisplayList(D_8005BB2C++);
	func_8000505C_5C5C();
	if (func_80005B30_6730() != 0)
	{
	  break;
	}
  }
}

// CURRENT(6838)
#ifdef NON_MATCHING
void func_8007BFC4_4C474(void) {
	s16 holdCounter;
	s16 startIndex;
	u8 textBuffer[58];
	s16 lineOffsets[100];
	s16 lineCount;
	s16 currentLine;
	s32 line;
	s32 row;
	u16 fadeCounter;

	fadeCounter = 0x4F;
	holdCounter = 0;
	startIndex = 4;
	lineOffsets[0] = 0;
	lineCount = 1;

	switch (D_800313D0_31FD0) {
	case 0:
	default:
		for (currentLine = 0; (u16)currentLine < 0x400; currentLine = (s16)(currentLine + 1)) {
			u8 ch = D_800933A0_63850[currentLine];
			if ((ch == 0x40) || (ch == 0x3B)) {
				if (ch == 0x40) {
					lineOffsets[lineCount] = currentLine;
					lineCount = (s16)(lineCount + 1);
				}
				lineOffsets[lineCount] = currentLine + 1;
				lineCount = (s16)(lineCount + 1);
			}
		}
		break;
	case 1:
		for (currentLine = 0; (u16)currentLine < 0x400; currentLine = (s16)(currentLine + 1)) {
			u8 ch = D_800938A0_63D50[currentLine];
			if ((ch == 0x40) || (ch == 0x3B)) {
				if (ch == 0x40) {
					lineOffsets[lineCount] = currentLine;
					lineCount = (s16)(lineCount + 1);
				}
				lineOffsets[lineCount] = currentLine + 1;
				lineCount = (s16)(lineCount + 1);
			}
		}
		break;
	case 2:
		for (currentLine = 0; (u16)currentLine < 0x400; currentLine = (s16)(currentLine + 1)) {
			u8 ch = D_80093DA0_64250[currentLine];
			if ((ch == 0x40) || (ch == 0x3B)) {
				if (ch == 0x40) {
					lineOffsets[lineCount] = currentLine;
					lineCount = (s16)(lineCount + 1);
				}
				lineOffsets[lineCount] = currentLine + 1;
				lineCount = (s16)(lineCount + 1);
			}
		}
		break;
	}

	func_80013514_14114();

	do {
		func_800791A0_49650(0);
		func_8000AFDC_BBDC();

		if (startIndex >= 0x23) {
			holdCounter++;
		}

		currentLine = startIndex;
		if ((fadeCounter == 0) && (startIndex < 0x59)) {
			startIndex++;
			fadeCounter = 0x4F;
			drawText(&D_800AE04C_7E4FC, 0x4F);
			line = 0xC - startIndex;
		} else {
			line = 0xC - startIndex;
			if (startIndex < 0x59) {
				drawText(&D_800AE050_7E500, fadeCounter);
			}
		}

		if (currentLine > 0) {
			do {
			s32 row;
			s16 textPos;

			if (currentLine < 3) {
				drawText(&D_800AE054_7E504, 0xB4, 0xD7, 0xFE);
			} else {
				drawText(&D_800AE058_7E508, 0xEB, 0xE1, 0xFE);
			}

			drawText(&D_800AE05C_7E50C, 0xFF);
			row = line + currentLine;
			if (row == 8) {
				drawText(&D_800AE060_7E510, 0xFF - (fadeCounter * 3));
			}
			if (row == 0) {
				drawText(&D_800AE064_7E514, fadeCounter * 3);
			}

			row = line + currentLine;
			if (row < 9) {
				u8* lineText;
				u8 ch;
				switch (D_800313D0_31FD0) {
				case 0:
				default:
					lineText = &D_800933A0_63850[lineOffsets[currentLine - 1]];
					break;
				case 1:
					lineText = &D_800938A0_63D50[lineOffsets[currentLine - 1]];
					break;
				case 2:
					lineText = &D_80093DA0_64250[lineOffsets[currentLine - 1]];
					break;
				}

				ch = *lineText;
				if (ch == 0x40) {
					textBuffer[0] = 0;
				} else {
					textPos = 0;
					if (ch != 0x3B) {
						do {
						textBuffer[textPos] = ch;
						textPos = (s16)(textPos + 1);
						lineText++;
						ch = *lineText;
						} while ((ch != 0x40) && (ch != 0x3B));
					}
					textBuffer[textPos] = 0;
				}

				drawText(&D_800AE068_7E518, 0x80, row, textBuffer);
			}

			currentLine = (s16)(currentLine - 1);
			} while ((currentLine > 0) && ((startIndex - 0xD) < currentLine));
		}

		func_8000B044_BC44();
		if ((holdCounter == 0x12C) || (isButtonNewlyPressed(0, BUTTON_A | BUTTON_START) != 0)) {
			func_80005AEC_66EC(0, 0, 0, 0x40);
		}

		fadeCounter = (fadeCounter - 1) & 0xFFFF;
		func_80005B84_6784();
		gDPFullSync(D_8005BB2C++);
		gSPEndDisplayList(D_8005BB2C++);
		func_8000505C_5C5C();
	} while (func_80005B30_6730() == 0);
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007BFC4_4C474.s")
#endif

#ifdef NON_MATCHING
// CURRENT(3430)
void func_8007C4BC_4C96C(void) {
	u16 fadeCounter;
	s16 foundCount;
	s16 startIndex;
	s16 i;
	s32 line;
	s32 row;

	fadeCounter = 0x4F;
	foundCount = 0;
	startIndex = 4;

	do {
		func_800791A0_49650(0);
		func_8000AFDC_BBDC();

		if (D_800944E8_64998[startIndex + D_80047710][0] == 0x23) {
			foundCount++;
		}

		i = startIndex;
		if ((fadeCounter == 0) && (foundCount == 0)) {
			startIndex++;
			fadeCounter = 0x4F;
			drawText(&D_800AE070_7E520, 0x4F);
			line = 0xC - startIndex;
		} else {
			drawText(&D_800AE074_7E524, fadeCounter);
			line = 0xC - startIndex;
		}

		if (i > 0) {
			do {
				if (D_800944E8_64998[i - 1][0] == 0) {
					drawText(&D_800AE078_7E528, 0xAA, 0xAA, 0xEB);
				} else {
					drawText(&D_800AE07C_7E52C, 0x6E, 0x6E, 0xAA);
				}

				drawText(&D_800AE080_7E530, 0xFF);
				row = line + i;

				if (foundCount == 0) {
					if (row == 8) {
						drawText(&D_800AE084_7E534, 0xFF - (fadeCounter * 3));
					}
					if (row == 0) {
						drawText(&D_800AE088_7E538, fadeCounter * 3);
					}
				}

				row = line + i;
				if (row < 9) {
					drawText(&D_800AE08C_7E53C, 0x80, row, D_800944E8_64998[i]);
				}

				i--;
			} while ((i > 0) && ((startIndex - 0xD) < i));
		}

		func_8000B044_BC44();
		if (foundCount == 0x190) {
			func_80005AEC_66EC(0, 0, 0, 0x40);
		}

		if (foundCount == 0) {
			fadeCounter = (fadeCounter - 1) & 0xFFFF;
		}

		func_80005B84_6784();
		gDPFullSync(D_8005BB2C++);
		gSPEndDisplayList(D_8005BB2C++);
		func_8000505C_5C5C();
	} while (func_80005B30_6730() == 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007C4BC_4C96C.s")
#endif

void func_8007C764_4CC14(u16 arg0, u16 arg1) {
	if (arg1 < arg0) {
		drawText(&D_800AE094_7E544, 0);
		return;
	}
	if ((arg0 + 0x14) < arg1) {
		drawText(&D_800AE098_7E548, 0xFF);
		return;
	}
	drawText(&D_800AE09C_7E54C, (s32)((arg1 - arg0) * 0xFF) / 20);
}

#ifdef NON_MATCHING
// CURRENT(1840)
void func_8007C7F4_4CCA4(void) {
	s16 var_v1;
	u16 var_s0;
	s32 var_s4;
	s32 var_s5;
	s32 var_s6;
	u32 var_a0;
	u32 temp_hi;
	u32 temp_hi_2;
	u32 temp_lo_2;
	u32 temp_v0;

	D_80047FA0 = 5;
	D_800946DC_64B8C = FE_STATE_PRESS_START;
	D_80052A98[4].humansKilled = 0;
	D_80052A98[4].score = D_80052B2C->unk30;
	D_80052A98[4].secondsElapsed = (u16)((u32)D_80052A90 / 1000U);

	var_s0 = 0;
	var_s5 = 0;
	var_s6 = 0;
	var_a0 = 0;

	var_v1 = 0;
	do {
		var_s5 += D_80052A98[var_v1].score;
		var_a0 += D_80052A98[var_v1].secondsElapsed;
		var_s6 += (u16)D_80052A98[var_v1].humansKilled;
		var_v1 += 1;
	} while (var_v1 < 6);

	temp_v0 = var_a0 / 60U;
	temp_hi = temp_v0 % 60U;
	temp_lo_2 = temp_v0 / 60U;
	temp_hi_2 = var_a0 % 60U;

	var_s4 = var_s0;
	do {
		func_80075D58_46208(0);
		if (var_s4 < 10) {
			func_80075B64_46014((s16)(var_s4 * 16));
		} else {
			func_80075B64_46014(0xAA);
		}

		func_8000AFDC_BBDC();
		func_8007C764_4CC14(0x19, var_s0);
		func_8000577C_637C();

		switch (D_800313D0_31FD0) {
			case 0:
			default:
				drawText(&D_800AE0A0_7E550, 0x80, 0);
				func_8007C764_4CC14(0x3C, var_s0);
				drawText(&D_800AE0B8_7E568, 0xC8, 0xC8, 0xFE);
				drawText(&D_800AE0BC_7E56C, 0x80, 1);
				func_8007C764_4CC14(0x46, var_s0);
				drawText(&D_800AE0E0_7E590, 0x80, 2);
				func_8007C764_4CC14(0x50, var_s0);
				drawText(&D_800AE108_7E5B8, 0x80, 3);
				func_8007C764_4CC14(0x78, var_s0);
				drawText(&D_800AE118_7E5C8, 0x80, 5, var_s5);
				func_8007C764_4CC14(0x8C, var_s0);

				if (temp_hi < 10U && temp_hi_2 < 10U) {
					drawText(&D_800AE128_7E5D8, 0x80, 6, temp_lo_2, temp_hi, temp_hi_2);
				} else if (temp_hi < 10U) {
					drawText(&D_800AE144_7E5F4, 0x80, 6, temp_lo_2, temp_hi, temp_hi_2);
				} else if (temp_hi_2 < 10U) {
					drawText(&D_800AE160_7E610, 0x80, 6, temp_lo_2, temp_hi, temp_hi_2);
				} else {
					drawText(&D_800AE17C_7E62C, 0x80, 6, temp_lo_2, temp_hi, temp_hi_2);
				}

				func_8007C764_4CC14(0xA0, var_s0);
				drawText(&D_800AE198_7E648, 0xAA, 0xAA, 0xE0);
				drawText(&D_800AE19C_7E64C, 0x80, 7, var_s6);
				func_8007C764_4CC14(0xB4, var_s0);
				drawText(&D_800AE1B0_7E660, 0x80, 8, D_8004DC5E);
				break;

			case 1:
				drawText(&D_800AE1C8_7E678, 0x80, 0);
				func_8007C764_4CC14(0x3C, var_s0);
				drawText(&D_800AE1E0_7E690, 0xC8, 0xC8, 0xFE);
				drawText(&D_800AE1E4_7E694, 0x80, 1);
				func_8007C764_4CC14(0x46, var_s0);
				drawText(&D_800AE208_7E6B8, 0x80, 2);
				func_8007C764_4CC14(0x50, var_s0);
				drawText(&D_800AE224_7E6D4, 0x80, 3);
				func_8007C764_4CC14(0x78, var_s0);
				drawText(&D_800AE240_7E6F0, 0x80, 5, var_s5);
				func_8007C764_4CC14(0x8C, var_s0);

				if (temp_hi < 10U && temp_hi_2 < 10U) {
					drawText(&D_800AE250_7E700, 0x80, 6, temp_lo_2, temp_hi, temp_hi_2);
				} else if (temp_hi < 10U) {
					drawText(&D_800AE270_7E720, 0x80, 6, temp_lo_2, temp_hi, temp_hi_2);
				} else if (temp_hi_2 < 10U) {
					drawText(&D_800AE290_7E740, 0x80, 6, temp_lo_2, temp_hi, temp_hi_2);
				} else {
					drawText(&D_800AE2B0_7E760, 0x80, 6, temp_lo_2, temp_hi, temp_hi_2);
				}

				func_8007C764_4CC14(0xA0, var_s0);
				drawText(&D_800AE2CC_7E77C, 0xAA, 0xAA, 0xE0);
				drawText(&D_800AE2D0_7E780, 0x80, 7, var_s6);
				func_8007C764_4CC14(0xB4, var_s0);
				drawText(&D_800AE2E8_7E798, 0x80, 8, D_8004DC5E);
				break;

			case 2:
				drawText(&D_800AE300_7E7B0, 0x80, 0);
				func_8007C764_4CC14(0x3C, var_s0);
				drawText(&D_800AE318_7E7C8, 0xC8, 0xC8, 0xFE);
				drawText(&D_800AE31C_7E7CC, 0x80, 1);
				func_8007C764_4CC14(0x46, var_s0);
				drawText(&D_800AE340_7E7F0, 0x80, 2);
				func_8007C764_4CC14(0x50, var_s0);
				drawText(&D_800AE368_7E818, 0x80, 3);
				func_8007C764_4CC14(0x78, var_s0);
				drawText(&D_800AE390_7E840, 0x80, 5, var_s5);
				func_8007C764_4CC14(0x8C, var_s0);

				if (temp_hi < 10U && temp_hi_2 < 10U) {
					drawText(&D_800AE3A0_7E850, 0x80, 6, temp_lo_2, temp_hi, temp_hi_2);
				} else if (temp_hi < 10U) {
					drawText(&D_800AE3BC_7E86C, 0x80, 6, temp_lo_2, temp_hi, temp_hi_2);
				} else if (temp_hi_2 < 10U) {
					drawText(&D_800AE3D8_7E888, 0x80, 6, temp_lo_2, temp_hi, temp_hi_2);
				} else {
					drawText(&D_800AE3F4_7E8A4, 0x80, 6, temp_lo_2, temp_hi, temp_hi_2);
				}

				func_8007C764_4CC14(0xA0, var_s0);
				drawText(&D_800AE410_7E8C0, 0xAA, 0xAA, 0xE0);
				drawText(&D_800AE414_7E8C4, 0x80, 7, var_s6);
				func_8007C764_4CC14(0xB4, var_s0);
				drawText(&D_800AE430_7E8E0, 0x80, 8, D_8004DC5E);
				break;
		}

		func_8000B044_BC44();
		gDPFullSync(D_8005BB2C++);
		gSPEndDisplayList(D_8005BB2C++);
		func_8000505C_5C5C();

		if (var_s4 < 0x258) {
			var_s0 += 1;
			var_s4 = var_s0 & 0xFFFF;
			var_s0 = var_s4;
		}

		if (((var_s4 >= 0x258) && (isButtonNewlyPressed(0, 0x9000) != 0)) || (var_s4 >= 0x7D0)) {
			func_80005AEC_66EC(0, 0, 0, 0x40);
		}

		func_80005B84_6784();
	} while (func_80005B30_6730() == 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007C7F4_4CCA4.s")
#endif

#ifdef NON_MATCHING
// CURRENT(5741)
// doSaveBeaconLoop
s32 func_8007CFB4_4D464(s32 arg0) {
	s16 timer;
	s32 selection;

	selection = 0;
	timer = -1;
	gameplayMode = GAMEPLAY_MODE_UNK4;
	func_8000AFDC_BBDC();
	func_80070940_40DF0();
	D_800D74A6 = 0x44;
	D_800D74A4 = D_800D74A6;
	D_800948F0_64DA0 = 0;

	while (timer != 0) {
		Gfx* dl;

		func_800050C4_5CC4();
		func_80011E14_12A14(0);
		func_80004DDC_59DC(0, 0, 0, 0, 0xEF);
		func_80008CA8_98A8(0);

		if (D_800948F0_64DA0 >= 0x41U) {
			if (D_800948F0_64DA0 < 0x3E8U) {
				func_80070C64_41114(0x3F, 7, (s16)(D_800948F0_64DA0 - 0x3D));
			}
		}

		if (arg0 != 0) {
		} else {
			func_80070A8C_40F3C(0x45);
		}

		if (D_800948F0_64DA0 >= 0x81U) {
			if (timer == -1) {
				func_80070CC4_41174();
				func_8007166C_41B1C();

				if (isButtonNewlyPressed(0, 0x9000) != 0) {
					selection = D_800D74A4 - 0x42;
					func_800708B8_40D68(0x43);
					func_800708B8_40D68(0x44);
					func_800708B8_40D68(0x45);
					func_800153D8_15FD8(0xC8);
					timer = 0x10;
					if (selection == 1) {
						func_80070C64_41114(0x46, (s16)1, 0);
						timer = 0x50;
					}
				}

				if (isButtonNewlyPressed(0, 0x4000) != 0) {
					selection = 2;
					timer = 0x10;
				}
			}
		}

		if (D_800948F0_64DA0 >= 0x41U) {
			func_800731A8_43658();
		}

		func_8000B044_BC44();

		if (D_800948F0_64DA0 < 0x3E8U) {
			D_800948F0_64DA0++;
		}

		if (timer == 0x10) {
			func_800708B8_40D68(0x40);
			func_800708B8_40D68(0x41);
			func_800708B8_40D68(0x42);
			if (selection == 1) {
				func_800708B8_40D68(0x46);
			} else {
				func_800708B8_40D68(0x43);
				func_800708B8_40D68(0x44);
				func_800708B8_40D68(0x45);
			}
		}

		if ((timer != -1) && (timer > 0)) {
			timer = (s16)(timer - 1);
		}

		if (D_800948F0_64DA0 < 0x55U) {
			gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
			gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);
			func_8000E53C_F13C();
		}

		func_8000505C_5C5C();
	}

	func_8000AFDC_BBDC();
	if (selection == 1) {
		return 1;
	}
	if (selection == 3) {
		return 2;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007CFB4_4D464.s")
#endif

#ifdef NON_MATCHING
// CURRENT(4772)
s32 func_8007D2B0_4D760(void) {
	s16 timer;
	s32 i;
	s16 selection;
	s16 menuWarmup;
	s32 renderSetupDone;
	Gfx* dl;

	gameplayMode = GAMEPLAY_MODE_INVENTORY;
	func_80070940_40DF0();

	D_800D74A6 = 0x4A;
	D_800D74A4 = D_800D74A6;
	D_800948F4_64DA4 = 0;

	setFullResolution();

	D_800D74AE = 0;
	D_800D74AC = 0;
	D_800D74B0 = 0;

	renderSetupDone = 0;
	timer = -1;
	menuWarmup = 0;
	selection = 0;

	for (i = 0; i < 12; i++) {
		D_800AED78[i] = func_8000726C_7E6C((s64)i);
	}

	D_800AED78[0xB] = D_8004DC5C;
	D_800AED78[0xC] = D_8004DC5E;

	for (i = 0; i < 14; i++) {
		osSyncPrintf(D_800AE448_7E8F8, i, func_8000726C_7E6C((s64)i));
		if (D_800AED78[i] != 0) {
			if (((s32*) &D_800942E0_64790[(currentLevel * 13) - 13])[i * 2] != 0) {
				D_800D74AC = i;
				break;
			}
		}
	}

	for (i = 7; i >= 0; i--) {
		if (*(&D_8004813F - (7 - i)) != 0) {
			D_800D74AE = i;
			break;
		}
	}

	while (timer != 0) {
		func_800050C4_5CC4();
		func_80011E14_12A14(0);
		func_80004DDC_59DC(0, 0, 0, 0, 0xEF);
		func_80008CA8_98A8(0);

		if ((D_800948F4_64DA4 >= 0x41U) && (D_800948F4_64DA4 < 0x3E8U)) {
			func_80070C64_41114(0x46, 5, (s16)(D_800948F4_64DA4 - 0x3D));
		}

		if ((D_800948F4_64DA4 >= 0x4DU) && (timer == -1)) {
			func_800710D8_41588(0x47, selection);
			func_8007166C_41B1C();

			if (menuWarmup < 0x10) {
				menuWarmup++;
			} else if (isButtonNewlyPressed(0, 0x9000)) {
				selection = D_800D74A4 - 0x47;
				osSyncPrintf(D_800AE468_7E918, D_800D74A4, 0x47, selection);

				switch (selection) {
				case 0:
					osSyncPrintf(D_800AE49C_7E94C, D_8004794A);
					timer = 0x10;
					break;

				case 1:
					func_800708B8_40D68(0x49);
					menuWarmup = 0;
					func_800708B8_40D68(0x4A);
					func_80070514_409C4(0x4D);
					func_80070514_409C4(0x4B);
					D_800D74A4 = 0x4B;
					func_80070494_40944(0x48)->unk1C = 2;
					func_800153D8_15FD8(0xC8);
					break;

				case 2:
					func_800708B8_40D68(0x48);
					menuWarmup = 0;
					func_800708B8_40D68(0x4A);
					func_80070514_409C4(0x4E);
					func_80070514_409C4(0x4C);
					func_80070494_40944(0x49)->unk1C = 2;
					D_800D74A4 = 0x4C;
					func_800153D8_15FD8(0xC8);
					break;

				case 3:
					func_800708B8_40D68(0x4D);
					menuWarmup = 0;
					func_800708B8_40D68(0x4B);
					func_80070514_409C4(0x49);
					func_80070514_409C4(0x4A);
					D_800D74A4 = 0x48;
					func_80070494_40944(0x48)->unk1C = 1;
					selection = 0;
					func_800153D8_15FD8(0xC8);
					break;

				case 4:
					func_800708B8_40D68(0x4E);
					menuWarmup = 0;
					func_800708B8_40D68(0x4C);
					func_80070514_409C4(0x48);
					func_80070514_409C4(0x4A);
					D_800D74A4 = 0x49;
					func_80070494_40944(0x49)->unk1C = 1;
					selection = 0;
					func_800153D8_15FD8(0xC8);
					break;

				default:
					D_800D74A4 = D_800D74A6;
					break;
				}
			}
		}

		if (D_800948F4_64DA4 >= 0x41U) {
			func_800731A8_43658();
		}

		func_8000B044_BC44();

		if (D_800948F4_64DA4 < 0x3E8U) {
			D_800948F4_64DA4++;
		}

		if (timer == 0x10) {
			func_800153D8_15FD8(0xC8);
			func_800708B8_40D68(0x47);
			func_800708B8_40D68(0x48);
			func_800708B8_40D68(0x49);
			func_800708B8_40D68(0x4A);
		}

		if ((timer != -1) && (timer > 0)) {
			timer = (s16)(timer - 1);
		}

		if (renderSetupDone == 0) {
			gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
			gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);
			renderSetupDone = func_8000E53C_F13C();
		}

		func_8000505C_5C5C();
	}

	func_8000AFDC_BBDC();
	D_80047948 = D_800D74AE;
	osSyncPrintf(D_800AE4C8_7E978, D_80047948);
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007D2B0_4D760.s")
#endif

void func_8007D7E0_4DC90(void) {
	func_8008F574_5FA24();
	func_8007F3EC_4F89C(&D_800D7A68);

	D_80094998_64E48 = 0;
	D_800D7A84 = 0;
	D_80094934_64DE4 = 1;

	D_800D7A18 = D_80095080_65530;
	D_800D7A1C = D_800950C0_65570;
	D_800D7A20 = D_80095698_65B48;
	D_800D7A24 = (Unk80080530_Src*)D_80095910_65DC0;
	D_800D7A28 = D_80096540_669F0;
	D_800D7A2C = D_80095D9C_6624C;
	D_800D7A30 = D_80095DB0_66260;
	D_800D7A34 = D_80096384_66834;
	D_800D7A38 = D_80096528_669D8;
	D_800D7A3C = D_80096370_66820;
	D_800D7A40 = (Unk8007E12CEntry8*)D_80096548_669F8;
	D_800D7A48 = D_800965E8_66A98;
	D_800D7A44 = D_800965D8_66A88;
	D_800D7A4C = D_800965F0_66AA0;

	D_800D7A58 = 0x22;
	D_800D7A8D = 0x0F;
}

// CURRENT(3220)
#ifdef NON_MATCHING
s32 func_8007D91C_4DDCC(s32 arg0) {
	s32 fadeState;
	s32 flags;
	s32 i;
	s32 lookAtIndex;
	f32 one;

	arg0 &= 0xFF;
	lookAtIndex = 0;

	if (D_80094934_64DE4 != 0) {
		switch (arg0) {
		case 0:
			func_8007EA0C_4EEBC(&D_80098FF0[0]);
			break;
		case 1:
			func_8007EA0C_4EEBC(&D_80098FF0[1]);
			break;
		case 2:
			func_8007EA0C_4EEBC(&D_80098FF0[2]);
			break;
		default:
			break;
		}
	}

	fadeState = func_8007E12C_4E5DC();
	i = 0;
	one = 1.0f;
	while (i < D_800D7A58) {
		if (D_800D7A1C[i].unk1C != 0) {
			D_80094944_64DF4 = D_800D7A1C[i].unk29;
			func_80080668_50B18(D_800D7A1C[i].unk8, &D_800D7B10[D_800D7A1C[i].unk18], one, D_800D7A1C[i].unk19);
			if ((D_800D7A1C[i].unk20 & 0x20) != 0) {
				func_800819C0_51E70(&D_8009499C);
			}
		}
		i = (i + 1) & 0xFF;
	}

	if (D_80094948_64DF8) {
		func_80081F9C_5244C();
	}

	one = 1.0f;
	if (D_80094904_64DB4 == 3) {
		gDPPipeSync(D_8005BB2C++);
		gDPSetAlphaCompare(D_8005BB2C++, G_AC_THRESHOLD);
		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_TEX_EDGE, G_RM_NOOP2);
		gDPPipeSync(D_8005BB2C++);
		func_80005C5C_685C(D_40856F0, 2, 1, 8, 0, 0xB0, 0x140, 0x40, one, one, D_408A6F0);
	}

	func_80081FF0_524A0();
	func_8007EBB8_4F068();
	func_8008FDF0_602A0();
	if (!fadeState) {
		func_8007EB98_4F048();
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA, G_CC_MODULATEIA);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gSPClearGeometryMode(D_8005BB2C++, 0xFFFFFFFF);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH);

	if (D_80094904_64DB4 == 2) {
		func_80081CAC_5215C(0, 0, 0x6E, 0x78);
	}

	func_8007F580_4FA30(1);
	i = 0;
	while (i < D_800D7A58) {
		if (D_800D7A1C[i].unk1C != 0) {
			if (D_800D7A1C[i].unk28 != 0xFF) {
				gSPDisplayList(D_8005BB2C++, (Gfx*)D_800D7A40[D_800D7A1C[i].unk28].unk0);
			}

			if ((D_800D7A1C[i].unk20 & 1) != 0) {
				gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0, 0, 0, D_800D7A1C[i].unk24);
				gDPSetCombineLERP(D_8005BB2C++, TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0,
						  TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0);
			} else {
				gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
				gDPSetCombineLERP(D_8005BB2C++, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0,
						  PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0);
			}

			flags = D_800D7A1C[i].unk20;
			if ((flags & 2) != 0) {
				gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
				gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
				flags = D_800D7A1C[i].unk20;
			}

			if ((flags & 4) != 0) {
				guLookAtReflect((Mtx *)D_8005BB38, &D_800D7978[lookAtIndex], D_800D7A18[4], D_800D7A18[5], *(f32*)&D_800D7A18[6],
						D_800D7A1C[i].unkC, D_800D7A1C[i].unkE, D_800D7A1C[i].unk10, 0.0f, 1.0f, 0.0f);
				gSPLookAtX(D_8005BB2C++, &D_800D7978[lookAtIndex].l[0]);
				gSPLookAtY(D_8005BB2C++, &D_800D7978[lookAtIndex].l[1]);
				flags = D_800D7A1C[i].unk20;
				lookAtIndex = (lookAtIndex + 1) & 0xFF;
			}

			if ((flags & 8) != 0) {
				gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK);
			} else {
				gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);
			}

			if (D_800D7A1C[i].unk2A != 0xFF) {
				D_800D8514 = ((s32**)D_800D7A44)[D_800D7A1C[i].unk2A * 2];
			} else {
				D_800D8514 = 0;
			}

			if ((D_800D7A1C[i].unk20 & 0x20) != 0) {
				func_80081A50_51F00((FrontendTextureInfo*)&D_8009499C);
			}

			if (D_8009494C_64DFC != 0) {
				func_80082074_52524();
			}

			D_80094944_64DF4 = D_800D7A1C[i].unk29;
			func_8007FE8C_5033C((Unk8007FE8CArg*)&D_800D7A1C[i]);

			if ((D_800D7A1C[i].unk20 & 2) != 0) {
				gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
			}

			if (D_800D7A1C[i].unk28 != 0xFF) {
				func_8007F580_4FA30(0);
			}
		}

		i = (i + 1) & 0xFF;
	}

	func_8008FD9C_6024C();
	if ((D_800D7970 == 1) || (D_800D7970 == 2U)) {
		func_8007FBF8_500A8();
	}
	func_80090648_60AF8();
	return D_80094998_64E48;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007D91C_4DDCC.s")
#endif

#ifdef NON_MATCHING
s32 func_8007E12C_4E5DC(void) {
	Unk8007E12CEntry8* entry;
	Unk80080530_Dst* dst;
	Unk8007E12CEntry8* argEntry;
	u8 op;
	u8 arg;
	u8 i;
	s32 returnValue;

	returnValue = 0;
	entry = &((Unk8007E12CEntry8*)D_800D7A54)[D_800D7A5C];
	if (D_80094900 != entry->unk0) {
		return returnValue;
	}

	while (1) {
		op = entry->unk4;
		if (op >= 0x23) {
			osSyncPrintf(&D_800AE8E0_7ED90);
		} else {
			arg = entry->unk5;
			switch (op) {
			case 0:
				argEntry = &((Unk8007E12CEntry8*)D_800D7A20)[arg];
				dst = &D_800D7A1C[argEntry->unk4];
				dst->unk8 = func_800809DC_50E8C(*(s32*)argEntry->unk0);
				dst->unk29 = argEntry->unk5;
				func_8008035C_5080C(dst->unk8, &D_800D7B10[dst->unk18], (u32*)argEntry->unk0, 1, dst->unk19);
				break;
			case 1:
				D_80094930_64DE0 = 1;
				func_8007EE8C_4F33C(((s32**)D_800D7A2C)[arg]);
				break;
			case 2:
				if ((arg == 1) || (arg == 2)) {
					func_8007FBC8_50078(arg);
					arg = ((Unk8007E12CEntry8*)D_800D7A54)[D_800D7A5C].unk5;
				}
				D_800D7970 = arg;
				break;
			case 3:
				D_80094904_64DB4 = arg;
				break;
			case 4:
				if ((D_800313D0_31FD0 == 2) && (arg == 0x13)) {
					break;
				}
				dst = &D_800D7A1C[arg];
				dst->unk28 = 0xFF;
				dst->unk29 = 0xFF;
				dst->unk2A = 0xFF;
				dst->unk1C = 1;
				func_80080F8C_5143C((AnimChannelState*)&D_800D7B10[D_800D7A84], (s16*)dst->unk4, dst->unk19);
				func_80080A84_50F34((FrontendStreamSlot*)dst->unk8);
				dst->unk18 = D_800D7A84;
				D_800D7A84 += dst->unk19;
				break;
			case 5:
				if ((D_800313D0_31FD0 == 2) && (arg == 0x13)) {
					break;
				}
				dst = &D_800D7A1C[arg];
				func_80080A84_50F34((FrontendStreamSlot*)dst->unk8);
				dst->unk1C = 0;
				break;
			case 6:
				D_800D8510 = 1.0f;
				D_80094900 = 0;
				D_80094930_64DE0 = 0;
				func_8008098C_50E3C();
				D_800DE068 = (s32)&D_800D88E8;
				D_800D7A84 = 0;
				for (i = 0; i < D_800D7A58; i++) {
					D_800D7A1C[i].unk1C = 0;
				}
				D_800D7970 = 0;
				for (i = 0; i < D_800D7A8D; i++) {
					D_800D7A34[i].unk18 = 0;
				}
				D_800D7974 = D_800AEA38_7EEE8;
				D_800AC0E4_7C594 = 0.0f;
				break;
			case 7:
				D_80094998_64E48 = 1;
				returnValue = 1;
				break;
			case 8:
				D_80094930_64DE0 = 0;
				func_8007EE0C_4F2BC((s32*)(D_800D7A30 + (arg * 0x20)));
				break;
			case 9:
				D_800D7A86 = D_800D7A38[arg];
				((u8*)&D_800D8530)[0x14] = D_800D7A38[arg].unk0;
				((u8*)&D_800D8530)[0x15] = D_800D7A38[arg].unk1;
				((u8*)&D_800D8530)[0x16] = D_800D7A38[arg].unk2;
				break;
			case 10:
				D_800D7A34[arg].unk18 = 1;
				break;
			case 11:
				D_800D7A34[arg].unk18 = 0;
				break;
			case 12:
				argEntry = (Unk8007E12CEntry8*)(((s32**)D_800D7A3C)[arg]);
				if (((u8*)argEntry)[8] == 0xFF) {
					func_8007FB90_50040(&D_800D8530);
				} else {
					func_8007FB90_50040(&D_800D7A34[((u8*)argEntry)[8]]);
				}
				break;
			case 13:
				func_8008F574_5FA24();
				D_800D7A60++;
				D_800D7A54 = ((s32*)D_800D7A50)[D_800D7A60];
				D_800D7A5C = 0;
				D_80094900 = 0;
				break;
			case 14:
				func_80080530_509E0(&D_800D7A24[arg]);
				break;
			case 15:
				for (i = 0; i < D_800D7A8D; i++) {
					D_800D7A34[i].unk18 = 0;
				}
				break;
			case 16:
				D_800D7B08 = D_800D7A38[arg];
				D_800D7B0C = D_800D7B08;
				break;
			case 17:
				D_80094908_64DB8 = arg;
				break;
			case 18:
				argEntry = &D_800D7A40[arg];
				dst = &D_800D7A1C[argEntry->unk4];
				dst->unk28 = arg;
				break;
			case 19:
				dst = &D_800D7A1C[arg];
				dst->unk28 = 0x15;
				break;
			case 20:
				D_800D8510 = arg;
				break;
			case 21:
				argEntry = &((Unk8007E12CEntry8*)D_800D7A44)[arg];
				dst = &D_800D7A1C[argEntry->unk4];
				dst->unk2A = arg;
				break;
			case 22:
				D_800D7974 = ((f32*)D_800D7A48)[arg];
				break;
			case 23:
				func_8008FE98_60348(arg);
				break;
			case 24:
				D_800D7B0C = D_800D7A38[arg];
				break;
			case 25:
				D_8009490C_64DBC = arg;
				break;
			case 26:
				D_800AC0E4_7C594 = D_800AEA3C_7EEEC;
				break;
			case 27:
				D_800949BC_64E6C = 1;
				break;
			case 28:
				argEntry = &((Unk8007E12CEntry8*)D_800D7A4C)[arg];
				if (argEntry->unk4 == 6) {
					D_800D8518 = argEntry->unk0;
					D_800D851C = argEntry->unk4;
				} else {
					D_800D8524 = argEntry->unk4;
					D_800D8520 = argEntry->unk0;
				}
				break;
			case 29:
				D_80094948_64DF8 = 1;
				break;
			case 30:
				D_80094948_64DF8 = 0;
				break;
			case 31:
				D_800D8528 = arg;
				break;
			case 32:
				D_8009494C_64DFC = arg;
				D_80094950_64E00 = 0.0f;
				break;
			default:
				break;
			}
		}

		if ((returnValue == 0) && (op != 0xE)) {
			D_800D7A5C++;
		}

		if (returnValue != 0) {
			break;
		}

		entry = &((Unk8007E12CEntry8*)D_800D7A54)[D_800D7A5C];
		if (D_80094900 != entry->unk0) {
			break;
		}
	}

	return returnValue;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007E12C_4E5DC.s")
#endif

// CURRENT(450)
#ifdef NON_MATCHING
void func_8007EA0C_4EEBC(s32* arg0) {
	u8 sp1F;
	s32 v1;

	D_80094900 = 0;
	D_800D7A60 = 0;
	D_800D7A5C = 0;
	D_800D7A84 = 0;
	D_800D7970 = 0;
	D_80094930_64DE0 = 0;

	D_800D7A50 = *arg0;
	D_800D7A54 = ((s32*)D_800D7A50)[D_800D7A60];

	v1 = 0;
	if (D_800D7A58 > 0) {
		do {
			*((s32*)((u8*)D_800D7A1C + (v1 * 0x2C) + 0x1C)) = 0;
			*((s32*)((u8*)D_800D7A1C + (v1 * 0x2C) + 8)) = 0;
			v1 = (v1 + 1) & 0xFF;
		} while (v1 < D_800D7A58);

		v1 = 0;
	}

	D_800D7B08.unk0 = 0;
	D_800D7B08.unk1 = 0;
	D_800D7B08.unk2 = 0;
	D_80094908_64DB8 = 7;
	sp1F = v1;

	func_8007EBB0_4F060();

	v1 = sp1F;
	D_800D7A86.unk0 = 0;
	D_800D7A86.unk1 = 0;
	D_800D7A86.unk2 = 0;
	D_80094934_64DE4 = 0;

	for (;;) {
		D_800D8550[v1] = NULL;
		v1 = (v1 + 1) & 0xFF;
		if (!(v1 < 10)) {
			break;
		}
	}

	D_800DE068 = (s32)&D_800D88E8;
	D_800D8518 = 0;
	D_800D8520 = 0;
	D_80094948_64DF8 = 0;
	D_800D8528 = 0.0f;
	D_8009494C_64DFC = 0;
	D_80094950_64E00 = 0.0f;
	D_80094904_64DB4 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007EA0C_4EEBC.s")
#endif

void func_8007EB98_4F048(void) {
	D_80094900++;
}

void func_8007EBB0_4F060(void) {
}

void func_8007EBB8_4F068(void) {
	u16 perspNorm;
	volatile s32 pad[4];

	func_8000345C_405C(0x20);

	if (D_80094930_64DE0 != 0) {
		func_8007EEE0_4F390();
		func_8007F188_4F638((Vec3f*)&((FrontendCamState*)D_800D7A18)->unk10,
							 (Vec3f*)&((FrontendCamState*)D_800D7A18)->unk1C,
							 (Vec3f*)&((FrontendCamState*)D_800D7A18)->unk28,
							 ((FrontendCamState*)D_800D7A18)->unk38,
							 (u16)((FrontendCamState*)D_800D7A18)->unk36,
							 (u16)((FrontendCamState*)D_800D7A18)->unk34,
							 ((FrontendCamState*)D_800D7A18)->unk3C);
	}

	if ((((FrontendCamState*)D_800D7A18)->unk10.x == ((FrontendCamState*)D_800D7A18)->unk1C.x)
		&& (((FrontendCamState*)D_800D7A18)->unk10.z == ((FrontendCamState*)D_800D7A18)->unk1C.z)) {
		osSyncPrintf(D_800AE8FC_7EDAC);
	}

	guPerspective((Mtx*)D_8005BB38, &perspNorm, (f32)((FrontendCamState*)D_800D7A18)->unk3A, D_800D7974, D_800D8510, 4000.0f, 1.0f);
	gSPPerspNormalize(D_8005BB2C++, perspNorm);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
	D_8005BB38 += 0x40;

	guLookAt((Mtx*)D_8005BB38,
		((FrontendCamState*)D_800D7A18)->unk10.x,
		((FrontendCamState*)D_800D7A18)->unk10.y,
		((FrontendCamState*)D_800D7A18)->unk10.z,
		((FrontendCamState*)D_800D7A18)->unk1C.x + D_800D8528,
		((FrontendCamState*)D_800D7A18)->unk1C.y + D_800D8528,
		((FrontendCamState*)D_800D7A18)->unk1C.z,
		((FrontendCamState*)D_800D7A18)->unk28.x,
		((FrontendCamState*)D_800D7A18)->unk28.y,
		((FrontendCamState*)D_800D7A18)->unk28.z);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
	D_8005BB38 += 0x40;
	gSPMatrix(D_8005BB2C++, &D_80094958_64E08, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	func_800838E0_53D90((Mtx*)(D_8005BB38 - 0x40));
	func_800839F0_53EA0(&((FrontendCamState*)D_800D7A18)->unk10.x, &((FrontendCamState*)D_800D7A18)->unk1C.x);
}

#ifdef NON_MATCHING
void func_8007EE0C_4F2BC(s32* arg0) {
	if (D_80094938 == 0) {
		D_800D7A18[4] = arg0[0];
		D_800D7A18[5] = arg0[1];
		D_800D7A18[6] = arg0[2];
		D_800D7A18[7] = arg0[3];
		D_800D7A18[8] = arg0[4];
		D_800D7A18[9] = arg0[5];
		((s16*)D_800D7A18)[26] = ((s16*)arg0)[12];
		((s16*)D_800D7A18)[29] = (s16)(((s16*)arg0)[13] - 10);
		((s16*)D_800D7A18)[30] = ((s16*)arg0)[14];
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007EE0C_4F2BC.s")
#endif

/**
 * @brief Initializes the global frontend playback block (D_800D7A18) from a pointer-to-pointer source.
 */
void func_8007EE8C_4F33C(s32** arg0) {
	D_800D7A18[2] = 0;
	if (*arg0 != 0) {
		D_800D7A18[3] = (s32)arg0;
		D_800D7A18[0] = (s32)*arg0;
		D_800D7A18[1] = (*arg0)[5];
		return;
	}
	D_800D7A18[3] = 0;
}

#ifdef NON_MATCHING
// CURRENT(2605)
s32 func_8007EEE0_4F390(void) {
	FrontendCamKeyframe* keyframe;
	f32 t;

	if (((FrontendCamState*)D_800D7A18)->unkC == 0) {
		return 0;
	}

	keyframe = (FrontendCamKeyframe*)((FrontendCamState*)D_800D7A18)->unk0;
	if (((FrontendCamState*)D_800D7A18)->unk4 <= 0) {
		((FrontendCamState*)D_800D7A18)->unk36 = keyframe->unkA;
		((FrontendCamState*)D_800D7A18)->unk38 = keyframe->unkC;
		((FrontendCamState*)D_800D7A18)->unk34 = keyframe->unkE;
		((FrontendCamState*)D_800D7A18)->unk1C.x = keyframe->unk4;
		((FrontendCamState*)D_800D7A18)->unk1C.y = keyframe->unk6;
		((FrontendCamState*)D_800D7A18)->unk1C.z = keyframe->unk8;
		((FrontendCamState*)D_800D7A18)->unk3C = keyframe->unk10;
		((FrontendCamState*)D_800D7A18)->unk8++;

		if (((FrontendCamState*)D_800D7A18)->unk8 == ((FrontendCamTrack*)((FrontendCamState*)D_800D7A18)->unkC)->unk4) {
			((FrontendCamState*)D_800D7A18)->unkC = 0;
		} else {
			((FrontendCamState*)D_800D7A18)->unk0 = (s32)(((FrontendCamTrack*)((FrontendCamState*)D_800D7A18)->unkC)->unk0 + ((FrontendCamState*)D_800D7A18)->unk8);
			((FrontendCamState*)D_800D7A18)->unk4 = ((FrontendCamKeyframe*)((FrontendCamState*)D_800D7A18)->unk0)->unk14;
		}
	} else {
		t = 1.0f / (f32)((FrontendCamState*)D_800D7A18)->unk4;
		D_800D7974 += (keyframe->unk0 - D_800D7974) * t;

		((FrontendCamState*)D_800D7A18)->unk1C.x += ((f32)keyframe->unk4 - ((FrontendCamState*)D_800D7A18)->unk1C.x) * t;
		((FrontendCamState*)D_800D7A18)->unk1C.y += ((f32)keyframe->unk6 - ((FrontendCamState*)D_800D7A18)->unk1C.y) * t;
		((FrontendCamState*)D_800D7A18)->unk1C.z += ((f32)keyframe->unk8 - ((FrontendCamState*)D_800D7A18)->unk1C.z) * t;
		((FrontendCamState*)D_800D7A18)->unk36 = (s16)((f32)(keyframe->unkA - ((FrontendCamState*)D_800D7A18)->unk36) * t + (f32)((FrontendCamState*)D_800D7A18)->unk36);
		((FrontendCamState*)D_800D7A18)->unk38 = (s16)((f32)(keyframe->unkC - ((FrontendCamState*)D_800D7A18)->unk38) * t + (f32)((FrontendCamState*)D_800D7A18)->unk38);
		((FrontendCamState*)D_800D7A18)->unk34 = (s16)((f32)(keyframe->unkE - ((FrontendCamState*)D_800D7A18)->unk34) * t + (f32)((FrontendCamState*)D_800D7A18)->unk34);
		((FrontendCamState*)D_800D7A18)->unk3C = (s16)((f32)(keyframe->unk10 - ((FrontendCamState*)D_800D7A18)->unk3C) * t + (f32)((FrontendCamState*)D_800D7A18)->unk3C);
	}

	((FrontendCamState*)D_800D7A18)->unk4--;
	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007EEE0_4F390.s")
#endif

#ifdef NON_MATCHING
// CURRENT(3566)
void func_8007F188_4F638(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, s32 arg3, u16 arg4, u16 arg5, s16 arg6) {
	f32 sp30;
	f32 sp34;
	f32 sp38;
	f32 sp3C;
	f32 sp40;
	Vec3f sp44;
	s32 sp28;
	s16 var_v1;
	f32 temp_f0;
	f32 temp_f2;
	s32 temp_v0;

	sp28 = arg3 & 0xFFFF;
	sp38 = (f32)((f64)sins(sp28) / 32768.0);
	sp34 = (f32)((f64)coss(sp28) / 32768.0);
	sp28 = arg4;
	sp40 = (f32)((f64)sins(sp28) / 32768.0);
	sp3C = (f32)((f64)coss(sp28) / 32768.0);
	sp28 = arg5;
	temp_f2 = (f32)((f64)sins(sp28) / 32768.0);
	sp30 = temp_f2;
	temp_v0 = coss(sp28);

	sp44.x = 0.0f;
	sp44.y = 0.0f;
	sp44.z = 1.0f;
	*arg0 = sp44;
	sp44.x = arg0->x;
	sp44.y = (arg0->y * sp3C) - (arg0->z * sp40);
	sp44.z = (arg0->y * sp40) + (arg0->z * sp3C);
	arg0->x = (sp44.z * sp38) + (sp44.x * sp34);
	arg0->y = sp44.y;
	arg0->z = (sp44.z * sp34) - (sp44.x * sp38);

	var_v1 = arg6;
	sp44.x = 0.0f;
	sp44.z = 0.0f;
	sp44.y = 1.0f;
	arg2->x = 0.0f - (1.0f * temp_f2);
	arg2->y = (sp44.x * temp_f2) + (sp44.y * (f32)((f64)temp_v0 / 32768.0));
	arg2->z = sp44.z;

	if (var_v1 == 0) {
		var_v1 = 0;
	}
	temp_f0 = -var_v1;
	arg0->x = arg0->x * temp_f0;
	arg0->y = arg0->y * temp_f0;
	arg0->z = arg0->z * temp_f0;
	arg0->x = arg0->x + arg1->x;
	arg0->y = arg0->y + arg1->y;
	arg0->z = arg0->z + arg1->z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007F188_4F638.s")
#endif

void func_8007F3EC_4F89C(FrontendStruct* arg0) {
	arg0->unk12 = 0;
	arg0->unk10 = 0;
}

#ifdef NON_MATCHING
// CURRENT(4261)
void func_8007F3F8_4F8A8(FrontendStruct* arg0, u8* arg1) {
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	f32 sp38;
	f32 sp34;
	f32 sp2C;
	f32 temp_f0;
	f32 temp_f2;
	volatile f32 temp_f12;
	volatile f32 temp_f14;
	volatile f32 temp_f18;
	f64 temp_f20;
	f64 temp_f22;

	temp_f20 = D_800AEA40_7EEF0;
	temp_f22 = D_800AEA48_7EEF8;
	sp34 = sinf((f32)(((f64)(f32)arg0->unk12 * temp_f20) / temp_f22));
	sp38 = cosf((f32)(((f64)(f32)arg0->unk12 * temp_f20) / temp_f22));
	sp2C = sinf((f32)(((f64)(f32)arg0->unk10 * temp_f20) / temp_f22));
	temp_f0 = cosf((f32)(((f64)(f32)arg0->unk10 * temp_f20) / temp_f22));
	temp_f12 = 0.0f;
	temp_f14 = 100.0f;
	temp_f18 = 1.0f;
	temp_f2 = (temp_f12 * sp2C) + (temp_f18 * temp_f0);
	arg1[8] = (s8)(s32)(-((temp_f2 * sp34) + (temp_f12 * sp38)) * temp_f14);
	arg1[9] = (s8)(s32)(-((temp_f12 * temp_f0) - (temp_f18 * sp2C)) * temp_f14);
	arg1[10] = (s8)(s32)(-((temp_f2 * sp38) - (temp_f12 * sp34)) * temp_f14);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007F3F8_4F8A8.s")
#endif

#ifdef NON_MATCHING
// CURRENT(4355)
void func_8007F580_4FA30(s32 arg0) {

	s32 tempLo;
	s32 lightSlots;
	u8 lightCount;
	u8 iter;
	u8 dlLightIndex;
	FrontendLightSource* source;
	Unk80080588Entry1C* sourceList;
	Light* light;
	u8* lightBytes;

	lightCount = 0;
	iter = 0;
	if ((s32)D_800D7A8D > 0) {
		sourceList = D_800D7A34;
		while (iter < (u8)D_800D7A8D) {
			tempLo = iter * 0x1C;
			source = (FrontendLightSource*)((u8*)sourceList + tempLo);
			if (source->unk18 != 0) {
				if (arg0 != 0) {
					func_8007F830_4FCE0((Unk80080588Entry1C*)source);
					sourceList = D_800D7A34;
				}

				light = &D_800D7A90[lightCount];
				func_8007F3F8_4F8A8((FrontendStruct*)((u8*)sourceList + tempLo), (u8*)light + 8);
				sourceList = D_800D7A34;
				source = (FrontendLightSource*)((u8*)sourceList + tempLo);
				lightBytes = (u8*)light;

				lightCount = (lightCount + 1) & 0xFF;
				lightBytes[8] = source->unk14;
				lightBytes[12] = source->unk14;
				lightBytes[9] = source->unk15;
				lightBytes[13] = source->unk15;
				lightBytes[10] = source->unk16;
				lightBytes[14] = source->unk16;
			}
			iter = (iter + 1) & 0xFF;
		}
		iter = 0;
	}

	if (arg0 != 0) {
		func_8007F830_4FCE0(&D_800D8530);
		source = (FrontendLightSource*)&D_800D8530;
		D_800D7A86.unk0 = source->unk14;
		D_800D7A86.unk1 = source->unk15;
		D_800D7A86.unk2 = source->unk16;
	}

	D_800D7A90[0].l.col[0] = D_800D7A86.unk0;
	D_800D7A90[0].l.colc[0] = D_800D7A86.unk0;
	D_800D7A90[0].l.col[1] = D_800D7A86.unk1;
	D_800D7A90[0].l.colc[1] = D_800D7A86.unk1;
	D_800D7A90[0].l.col[2] = D_800D7A86.unk2;
	D_800D7A90[0].l.colc[2] = D_800D7A86.unk2;

	if (lightCount == 0) {
		lightBytes = (u8*)&D_800D7A90[0];
		lightCount = 1;
		lightBytes[8] = 0;
		lightBytes[12] = 0;
		lightBytes[9] = 0;
		lightBytes[13] = 0;
		lightBytes[10] = 0;
		lightBytes[14] = 0;
		lightBytes[16] = 0;
		lightBytes[17] = 0;
		lightBytes[18] = 0;
	}

	lightSlots = lightCount;
	if (lightSlots > 0) {
		do {
			gSPLight(D_8005BB2C++, &D_800D7A90[iter], iter + 1);
			iter = (iter + 1) & 0xFF;
		} while (iter < lightSlots);
	}

	gSPLight(D_8005BB2C++, &D_800D7A90[0], lightSlots + 1);
	gSPNumLights(D_8005BB2C++, D_80094910_64DC0[lightCount]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007F580_4FA30.s")
#endif

#ifdef NON_MATCHING
// CURRENT(2105)
void func_8007F830_4FCE0(Unk80080588Entry1C* arg0) {
	FrontendLightAnimState* state;
	FrontendLightTrack* track;
	FrontendLightKeyframe* keyframe;
	f32 factor;

	state = (FrontendLightAnimState*)arg0;
	track = state->unkC;
	if (track == NULL) {
		return;
	}

	keyframe = state->unk0;
	if (state->unk4 <= 0) {
		state->unk12 = keyframe->unk2;
		state->unk8++;
		state->unk10 = keyframe->unk0;

		if (state->unk8 == track->unk4) {
			state->unkC = NULL;
		} else {
			keyframe = &track->unk0[state->unk8];
			state->unk0 = keyframe;
			state->unk4 = keyframe->unk8;
		}
	} else {
		factor = 1.0f / (f32)(keyframe->unk8 - (keyframe->unk8 - state->unk4));
		state->unk12 = (s16)(s32)((f32)state->unk12 + ((f32)(keyframe->unk2 - state->unk12) * factor));
		state->unk10 = (s16)(s32)((f32)state->unk10 + ((f32)(keyframe->unk0 - state->unk10) * factor));
		state->unk14 = (u8)((f32)state->unk14 + ((f32)(keyframe->unk4 - state->unk14) * factor));
		state->unk15 = (u8)((f32)state->unk15 + ((f32)(keyframe->unk5 - state->unk15) * factor));
		state->unk16 = (u8)((f32)state->unk16 + ((f32)(keyframe->unk6 - state->unk16) * factor));
	}

	state->unk4--;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007F830_4FCE0.s")
#endif

/**
 * @brief Initializes a small frontend playback/state block from a source descriptor.
 */
void func_8007FB90_50040(s32* arg0, s32* arg1) {
	arg0[2] = 0;
	if (arg1[0] != 0) {
		arg0[3] = (s32)arg1;
		arg0[0] = arg1[0];
		arg0[1] = ((s32*)arg1[0])[2];
		return;
	}
	arg0[3] = 0;
}

void func_8007FBC8_50078(u8 arg0) {
	if (arg0 == 1) {
		D_800D7971 = -1;
	} else {
		D_800D7971 = 0;
	}
}

void func_8007FBF8_500A8(void)
{
  if (D_800D7970 == 1)
  {
	if ((D_800D7971 - D_80094908_64DB8) < 0)
	{
	  D_800D7971 = 0;
	  D_800D7970 = 0;
	}
	else
	{
	  D_800D7971 = D_800D7971 - D_80094908_64DB8;
	}
  }
  else if ((D_800D7971 + D_80094908_64DB8) >= 0x100)
  {
	D_800D7971 = 0xFF;
  }
  else
  {
	D_800D7971 = D_800D7971 + D_80094908_64DB8;
  }
	
  if (D_800D7B08.unk0 != D_800D7B0C.unk0)
  {
	if (D_800D7B0C.unk0 < D_800D7B08.unk0)
	{
		D_800D7B08.unk0 = MAX(D_800D7B0C.unk0, (((s16) D_800D7B08.unk0) - D_8009490C_64DBC));
	}
	else
	{
		D_800D7B08.unk0 = MIN(D_800D7B0C.unk0, (((s16) D_800D7B08.unk0) + D_8009490C_64DBC));
	}
  }
	
  if (D_800D7B08.unk1 != D_800D7B0C.unk1)
  {
	if (D_800D7B0C.unk1 < D_800D7B08.unk1)
	{
		D_800D7B08.unk1 = MAX(D_800D7B0C.unk1, (((s16) D_800D7B08.unk1) - D_8009490C_64DBC));
	}
	else
	{
		D_800D7B08.unk1 = MIN(D_800D7B0C.unk1, (((s16) D_800D7B08.unk1) + D_8009490C_64DBC));
	}
  }

  if (D_800D7B08.unk2 != D_800D7B0C.unk2)
  {
	if (D_800D7B0C.unk2 < D_800D7B08.unk2)
	{
		D_800D7B08.unk2 = MAX(D_800D7B0C.unk2, (((s16) D_800D7B08.unk2) - D_8009490C_64DBC));
	}
	else
	{
		D_800D7B08.unk2 = MIN(D_800D7B0C.unk2, (((s16) D_800D7B08.unk2) + D_8009490C_64DBC));
	}
  }
  gDPPipeSync(D_8005BB2C++);
  gDPSetRenderMode(D_8005BB2C++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
  gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
  gDPSetPrimColor(D_8005BB2C++, 0, 0, D_800D7B08.unk0, D_800D7B08.unk1, D_800D7B08.unk2, D_800D7971);
  gDPFillRectangle(D_8005BB2C++, 0, 0, 320, 240);
}

#ifdef NON_MATCHING
// CURRENT(3837)
void func_8007FE8C_5033C(Unk8007FE8CArg* arg0) {
	s32 sp64[3];
	Unk80052B40 sp5C;
	Unk80052B40 sp54;
	Unk80052B40 sp4C;
	Unk800801BCEntry* entry;
	Gfx* dl;

	sp4C = D_800949C0;
	sp5C.unk0 = arg0->unkC;
	sp5C.unk2 = arg0->unkE;
	sp5C.unk4 = arg0->unk10;
	sp54.unk0 = arg0->unk14;
	sp54.unk2 = arg0->unk16;
	sp54.unk4 = arg0->unk12;

	entry = &D_800D7B10[arg0->unk18];
	func_800039D0_45D0(&sp5C, &sp54, &sp4C, D_8005BB38);

	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

	D_8005BB38 += 0x40;

	sp54.unk0 = entry->unk2 << 3;
	sp54.unk2 = entry->unk4 << 3;
	sp54.unk4 = entry->unk0 << 3;
	sp64[0] = (s32)(entry->unk8 * 65536.0f);
	sp64[1] = (s32)(entry->unkC * 65536.0f);
	sp64[2] = (s32)(entry->unk10 * 65536.0f);

	if (D_80094944_64DF4 == 1) {
		func_8000C81C_D41C(sp64, &sp54.unk0, 0, D_8005BB38);
	} else {
		func_80080B80_51030(sp64, &sp54.unk0, 0, D_8005BB38);
	}

	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);

	D_8005BB38 += 0x40;

	gSPSegment(D_8005BB2C++, 0x07, D_8005BB38 & 0x1FFFFFFF);

	if (D_800D8518 != 0) {
		gSPSegment(D_8005BB2C++, (u8)D_800D851C * 4, (D_800D8518 & 0xFFFFFF) + D_8006AA70);
	}

	if (D_800D8520 != 0) {
		gSPSegment(D_8005BB2C++, (u8)D_800D8524 * 4, (D_800D8520 & 0xFFFFFF) + D_8006AA70);
	}

	func_800801BC_5066C((s32)entry, arg0->unk19);

	if ((arg0->unk20 & 0x10) != 0) {
		func_80081290_51740();
	} else {
		gSPDisplayList(D_8005BB2C++, (u32)arg0->unk0);
	}

	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007FE8C_5033C.s")
#endif

#ifdef NON_MATCHING
// CURRENT(1488)
void func_800801BC_5066C(s32 arg0, s32 arg1) {
	s32 sp54[3];
	s16 sp60[3];
	s32 var_s1;
	u8 var_s7;

	var_s7 = arg1 & 0xFF;
	var_s1 = 1;
	if (var_s7 != 1) {
		do {
			Unk800801BCEntry* entry;
			s32* temp_a3;

			entry = (Unk800801BCEntry*)(arg0 + (var_s1 << 6));
			sp60[0] = entry->unk2 << 3;
			sp60[1] = entry->unk4 << 3;
			sp60[2] = entry->unk0 << 3;
			sp54[0] = (s32)(entry->unk8 * 65536.0f);
			sp54[1] = (s32)(entry->unkC * 65536.0f);
			sp54[2] = (s32)(entry->unk10 * 65536.0f);

			if ((D_800D8514 != NULL) && (D_800D8514[var_s1] == 0)) {
				sp54[0] = 0x13880000;
				sp54[1] = 0x13880000;
				sp54[2] = 0x13880000;
			}

			if (D_80094944_64DF4 == 1) {
				temp_a3 = D_8005BB38;
				D_8005BB38 = temp_a3 + 0x10;
				func_8000C81C_D41C(sp54, sp60, 0, temp_a3);
			} else {
				temp_a3 = D_8005BB38;
				D_8005BB38 = temp_a3 + 0x10;
				func_80080B80_51030(sp54, sp60, 0, temp_a3);
			}

			var_s1 = (var_s1 + 1) & 0xFF;
		} while (var_s7 != var_s1);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800801BC_5066C.s")
#endif

// Called during start movie, mostly before scene changes
#ifdef NON_MATCHING
void* func_8008035C_5080C(FrontendStreamSlot* arg0, AnimChannelState* arg1, u32* arg2, s32 arg3, u8 arg4) {
	s32 i;
	s32 copiedCount;
	s32 byteOffset;
	AnimFrameData14* srcFrame;
	AnimFrameData14* dstFrame;

	arg0->unk54 = arg2;

	for (i = 0; i < (0x48 / 0xC); i++) {
		((u32*)arg0)[(i * 3) + 0] = arg2[(i * 3) + 0];
		((u32*)arg0)[(i * 3) + 1] = arg2[(i * 3) + 1];
		((u32*)arg0)[(i * 3) + 2] = arg2[(i * 3) + 2];
	}

	copiedCount = 0;
	byteOffset = 0;
	srcFrame = (AnimFrameData14*)((u8*)arg2 + 0x48);
	if (arg2[0] != 0) {
		do {
			dstFrame = (AnimFrameData14*)((u8*)arg0->unk50 + byteOffset);
			copiedCount += 1;
			dstFrame->a = srcFrame->a;
			dstFrame->b = srcFrame->b;
			dstFrame->c = srcFrame->c;
			dstFrame->d = srcFrame->d;
			dstFrame->e = srcFrame->e;
			dstFrame->f = srcFrame->f;
			dstFrame->g = srcFrame->g;
			byteOffset += 0xE;
			srcFrame += 1;
		} while ((u32)copiedCount < arg2[0]);
	}

	i = 0;
	if (arg4 != 0) {
		do {
			AnimChannelState* state;
			u16 frameLimit;

			state = &arg1[i];
			state->unk18 = 0;
			frameLimit = *(u16*)((u8*)arg0 + (i * 4) + 0xE);
			state->unk14 = frameLimit;
			if (frameLimit >= 0x65) {
				osSyncPrintf(&D_800AE920_7EDD0);
			}

			func_80080AD4_50F84(arg0, state, i & 0xFF);
			if (arg3 != 0) {
				state->unk8 = (f32)state->unk24;
				state->unk18 += 1;
				state->unkC = (f32)state->unk26;
				state->unk0 = state->unk2A;
				state->unk2 = state->unk2C;
				state->unk4 = state->unk2E;
				state->unk10 = (f32)state->unk28;

				func_80080AD4_50F84(arg0, state, i & 0xFF);
			}

			i = (i + 1) & 0xFF;
		} while (arg4 != i);
	}

	return arg2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8008035C_5080C.s")
#endif

void func_80080530_509E0(Unk80080530_Src* arg0) {
	Unk80080530_Dst* dst;

	dst = &D_800D7A1C[arg0->unkC];
	dst->unkC = arg0->unk0;
	dst->unkE = arg0->unk2;
	dst->unk10 = arg0->unk4;
	dst->unk14 = arg0->unk8;
	dst->unk12 = arg0->unk6;
	dst->unk16 = arg0->unkA;
}

// ambient light ?
// CURRENT(1245)
#ifdef NON_MATCHING
void func_80080588_50A38(s32 arg0) {
	u8 *temp_t0;
	Unk80080588Entry3* temp_t3;
	u8 temp_t5;
	u8 temp_v1;
	u8 temp_v1_2;
	u8 temp_at;
	s32 temp_t2;
	s32 var_v0;

	temp_t0 = ((arg0 & 0xFF) * 5) + (u8*)D_800D7A28;
	temp_v1 = *temp_t0;
	if (temp_v1 != 0xFF) {
		temp_t3 = D_800D7A38 + temp_v1;
		D_800D7A86.unk0 = temp_t3->unk0;
		temp_t5 = temp_t3->unk1;
		D_800D7A86.unk1 = temp_t5;
		temp_at = temp_t3->unk2;
		D_800D7A86.unk2 = temp_at;
		osSyncPrintf(&D_800AE958_7EE08, D_800D7A86.unk0, temp_t5 & 0xFF, temp_at & 0xFF);
	}

	var_v0 = 0;
	do {
		temp_v1_2 = *(temp_t0 + var_v0 + 1);
		temp_t2 = (var_v0 + 1) & 0xFF;
		if (temp_v1_2 != 0xFF) {
			((Unk80080588Entry1C*) ((u8*)D_800D7A34 + (temp_v1_2 * 0x1C)))->unk18 = 1;
		}
		var_v0 = temp_t2;
	} while (temp_t2 < 3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80080588_50A38.s")
#endif

#ifdef NON_MATCHING
// CURRENT(8571)
void func_80080668_50B18(FrontendStreamSlot *arg0, AnimChannelState *arg1, f32 arg2, s32 arg3) {
	volatile f32 sp70;
	volatile f32 sp6C;
	volatile f32 sp68;
	volatile f32 sp64;
	volatile f32 sp60;
	volatile f32 sp5C;
	volatile f32 sp50;
	volatile f32 sp4C;
	volatile f32 sp48;
	f32 temp_f0;
	f32 temp_f10;
	f32 temp_f10_2;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f18;
	f32 temp_f2;
	f32 temp_f2_2;
	f32 temp_f4;
	f32 temp_f6;
	f32 temp_f6_2;
	f32 temp_f8;
	f32 temp_f8_2;
	f64 temp_f22;
	f64 temp_f20;
	s32 temp_t6;
	s32 var_s0;
	s32 count;
	AnimChannelState *temp_a1;

	count = arg3 & 0xFF;
	var_s0 = 0;
	if (count != 0) {
		temp_f22 = 4096.0;
		temp_f20 = D_800AEA50_7EF00;
		do {
			temp_a1 = &arg1[var_s0];
			if (temp_a1->unk14 != 0) {
				temp_f14 = temp_a1->unk1C;
				temp_f18 = arg2 / (temp_a1->unk20 - temp_f14);
				temp_f10 = (f32)(((f64)(f32)temp_a1->unk2A * temp_f20) / temp_f22);
				sp68 = temp_f10;
				temp_f6 = (f32)(((f64)(f32)temp_a1->unk2C * temp_f20) / temp_f22);
				sp6C = temp_f6;
				temp_f8 = (f32)(((f64)(f32)temp_a1->unk2E * temp_f20) / temp_f22);
				sp70 = temp_f8;
				temp_f4 = (f32)(((f64)(f32)temp_a1->unk0 * temp_f20) / temp_f22);
				sp5C = temp_f4;
				sp48 = temp_f10;
				temp_f10_2 = (f32)(((f64)(f32)temp_a1->unk2 * temp_f20) / temp_f22);
				sp60 = temp_f10_2;
				sp4C = temp_f6;
				sp50 = temp_f8;
				temp_f8_2 = ((sp48 - temp_f4) * temp_f18) + temp_f4;
				sp5C = temp_f8_2;
				temp_f6_2 = (f32)(((f64)(f32)temp_a1->unk4 * temp_f20) / temp_f22);
				sp60 = ((sp4C - temp_f10_2) * temp_f18) + temp_f10_2;
				sp64 = temp_f6_2;
				sp64 = ((sp50 - temp_f6_2) * temp_f18) + temp_f6_2;
				temp_f2 = temp_a1->unk8;
				temp_f12 = temp_a1->unkC;
				temp_f0 = temp_a1->unk10;
				temp_a1->unk0 = (s16)(s32)((f64)(temp_f8_2 * 70.0f) / temp_f20);
				temp_a1->unk2 = (s16)(s32)((f64)(sp60 * 70.0f) / temp_f20);
				temp_a1->unk4 = (s16)(s32)((f64)(sp64 * 70.0f) / temp_f20);
				temp_a1->unk8 = (((f32)temp_a1->unk24 - temp_f2) * temp_f18) + temp_f2;
				temp_f2_2 = (f32)temp_a1->unk28;
				temp_a1->unkC = (((f32)temp_a1->unk26 - temp_f12) * temp_f18) + temp_f12;
				temp_a1->unk1C = temp_a1->unk1C + arg2;
				temp_a1->unk10 = ((temp_f2_2 - temp_f0) * temp_f18) + temp_f0;
				if (temp_a1->unk20 <= temp_a1->unk1C) {
					temp_t6 = temp_a1->unk18 + 1;
					temp_a1->unk8 = (f32)temp_a1->unk24;
					temp_a1->unk10 = temp_f2_2;
					temp_a1->unk18 = temp_t6;
					temp_a1->unk0 = (s16)temp_a1->unk2A;
					temp_a1->unk2 = (s16)temp_a1->unk2C;
					temp_a1->unkC = (f32)temp_a1->unk26;
					temp_a1->unk4 = (s16)temp_a1->unk2E;
					if (temp_t6 == temp_a1->unk14) {
						temp_a1->unk14 = 0;
						temp_a1->unk18 = 0;
						if (var_s0 == 0) {
							arg0->unk54 = 0;
						}
					} else {
						func_80080AD4_50F84(arg0, temp_a1, var_s0 & 0xFF);
					}
				}
			}
			var_s0 = (var_s0 + 1) & 0xFF;
		} while (count != var_s0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80080668_50B18.s")
#endif

#ifdef NON_MATCHING
void func_8008098C_50E3C(void) {
	s32 i;

	i = 0; do {
		D_800D8550[i] = NULL;
		D_800D8578[i].unk50 = 0;
		i++;
	} while (i < 10);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8008098C_50E3C.s")
#endif

#ifdef NON_MATCHING
FrontendStreamSlot* func_800809DC_50E8C(s32 arg0) {
	FrontendStreamSlot *temp_v0;
	s32 v1;
	s32 limit;
	FrontendStreamSlot **temp_a0;
	FrontendStreamSlot **slotTable;
	s32 *temp_a3;
	s32 temp_a2;
	s32 temp_t2;

	v1 = (slotTable = D_800D8550, 0);
	limit = 0xA;
loop_1:
	temp_a0 = slotTable;
	temp_a0 += v1;
	if (*temp_a0 != NULL) goto loop_inc;
	temp_a3 = &D_800DE068;
	temp_a2 = *temp_a3;
	temp_v0 = &D_800D8578[v1];
	*temp_a0 = temp_v0;
	temp_v0->unk50 = temp_a2;
	temp_t2 = temp_a2;
	temp_t2 += arg0 * 14;
	*temp_a3 = temp_t2;
	return temp_v0;
loop_inc:
	v1 = (v1 + 1) & 0xFF;
	if (limit != v1) goto loop_1;
	osSyncPrintf(&D_800AE97C_7EE2C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800809DC_50E8C.s")
#endif

void func_80080A84_50F34(FrontendStreamSlot* arg0) {
	s32 index;

	if (arg0 != NULL) {
		index = (arg0 - D_800D8578);
		D_800D8550[index] = NULL;
		D_800D8578[index].unk50 = 0;
	}
}

#ifdef NON_MATCHING
void func_80080AD4_50F84(FrontendStreamSlot *arg0, AnimChannelState *arg1, u8 arg2) {
	typedef struct { s16 a; s16 b; s16 c; s16 d; s16 e; s16 f; } AnimFrame12;
	s32 temp_v0;

	if (arg1->unk14 > (temp_v0 = arg1->unk18)) {
		s32 start_frame = *(u16 *)((s32)arg0 + arg2 * 4 + 0xC);
		AnimFrameData14 *temp_t3;
		u16 temp_at;

		start_frame += temp_v0;
		temp_t3 = (start_frame & 0xFFFF) + (AnimFrameData14 *)arg0->unk50;
		*(AnimFrame12 *)&arg1->unk24 = *(AnimFrame12 *)temp_t3;
		temp_at = temp_t3->g;
		arg1->unk1C = 0.0f;
		arg1->unk30 = temp_at;
		arg1->unk20 = (f32)(u32)(temp_at & 0xFFFF);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80080AD4_50F84.s")
#endif

#ifdef NON_MATCHING
void func_80080B80_51030(s32 *arg0, s16 *arg1, s16 *arg2, s32 arg3) {
	extern Unk800476C8 D_800DE070[2];
	extern s32 D_800DE098;
	s32 sp3C;
	s32 sp38;
	s32 sp34;
	s32 sp30;
	s32 sp2C;
	s32 temp1;
	s32 temp2;
	s32 mask;
	s32 *src;
	s32 *dst;

	D_800DE070[0].unkC = 0;
	D_800DE070[0].unk1C = 0;
	D_800DE070[1].unkC = 0;
	D_800DE070[1].unk1C = 0x10000;

	if (arg0 != NULL) {
		D_800DE070[1].unk0 = arg0[0];
		D_800DE070[1].unk4 = arg0[1];
		D_800DE070[1].unk8 = arg0[2];
	} else {
		D_800DE070[1].unk0 = 0;
		D_800DE070[1].unk4 = 0;
		D_800DE070[1].unk8 = 0;
	}

	if (arg1 != NULL) {
		sp3C = coss((u16)arg1[0]);
		sp38 = sins((u16)arg1[0]);
		sp34 = coss((u16)arg1[2]);
		sp30 = sins((u16)arg1[2]);
		sp2C = coss((u16)arg1[1]);
		temp1 = sins((u16)arg1[1]);

		D_800DE070[0].unk0 = ((sp3C * sp2C) >> 0xF) * 2;

		temp2 = (sp30 * sp38) >> 0xF;
		D_800DE070[0].unk10 = (temp2 - ((s32)(((sp3C * sp34) >> 0xF) * temp1) >> 0xF)) * 2;

		temp2 = (sp38 * sp34) >> 0xF;
		D_800DE070[1].unk0 = (temp2 + ((s32)(((sp3C * sp30) >> 0xF) * temp1) >> 0xF)) * 2;

		D_800DE070[0].unk4 = temp1 * 2;
		D_800DE070[0].unk14 = ((sp34 * sp2C) >> 0xF) * 2;
		D_800DE070[1].unk4 = ((-sp30 * sp2C) >> 0xF) * 2;
		D_800DE070[0].unk8 = ((-sp38 * sp2C) >> 0xF) * 2;

		D_800DE070[0].unk18 = (((sp3C * sp30) >> 0xF) + ((temp2 * temp1) >> 0xF)) * 2;
		D_800DE098 = (((sp3C * sp34) >> 0xF) - ((temp1 * ((sp30 * sp38) >> 0xF)) >> 0xF)) * 2;
	} else {
		D_800DE070[0].unk0 = 0x10000;
		D_800DE070[0].unk10 = 0;
		D_800DE070[1].unk0 = 0;
		D_800DE070[0].unk4 = 0;
		D_800DE070[0].unk14 = 0x10000;
		D_800DE070[1].unk4 = 0;
		D_800DE070[0].unk8 = 0;
		D_800DE070[0].unk18 = 0;
		D_800DE070[1].unk8 = 0x10000;
	}

	if (arg2 != NULL) {
		s32 temp3;
		s32 temp4;
		s32 temp5;

		temp3 = D_800DE070[0].unk0 * arg2[0];
		D_800DE070[0].unk0 = temp3;
		temp4 = D_800DE070[0].unk4 * arg2[0];
		D_800DE070[0].unk4 = temp4;
		D_800DE070[0].unk0 = temp3 >> 8;
		temp5 = D_800DE070[0].unk8 * arg2[0];
		D_800DE070[0].unk8 = temp5;
		D_800DE070[0].unk4 = temp4 >> 8;
		D_800DE070[0].unk8 = temp5 >> 8;

		temp3 = D_800DE070[0].unk10 * arg2[1];
		D_800DE070[0].unk10 = temp3;
		temp4 = D_800DE070[0].unk14 * arg2[1];
		D_800DE070[0].unk14 = temp4;
		D_800DE070[0].unk10 = temp3 >> 8;
		temp5 = D_800DE070[0].unk18 * arg2[1];
		D_800DE070[0].unk18 = temp5;
		D_800DE070[0].unk14 = temp4 >> 8;
		D_800DE070[0].unk18 = temp5 >> 8;

		temp3 = D_800DE070[1].unk0 * arg2[2];
		D_800DE070[1].unk0 = temp3;
		temp4 = D_800DE070[1].unk4 * arg2[2];
		D_800DE070[1].unk4 = temp4;
		D_800DE070[1].unk0 = temp3 >> 8;
		temp5 = D_800DE070[1].unk8 * arg2[2];
		D_800DE070[1].unk8 = temp5;
		D_800DE070[1].unk4 = temp4 >> 8;
		D_800DE070[1].unk8 = temp5 >> 8;
	}

	mask = 0xFFFF0000;
	src = (s32 *)D_800DE070;
	dst = (s32 *)arg3;
	do {
		dst[0] = ((src[1] & mask) >> 0x10) + (src[0] & mask);
		dst += 4;
		dst[4] = (src[0] << 0x10) + (src[1] & 0xFFFF);
		dst[-3] = ((src[3] & mask) >> 0x10) + (src[2] & mask);
		dst[5] = (src[2] << 0x10) + (src[3] & 0xFFFF);
		dst[-2] = ((src[5] & mask) >> 0x10) + (src[4] & mask);
		dst[6] = (src[4] << 0x10) + (src[5] & 0xFFFF);
		dst[-1] = ((src[7] & mask) >> 0x10) + (src[6] & mask);
		dst[7] = (src[6] << 0x10) + (src[7] & 0xFFFF);
		src += 8;
	} while (src != (s32 *)&D_800DE0B0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80080B80_51030.s")
#endif

void func_80080F8C_5143C(AnimChannelState *arg0, s16 *arg1, s32 arg2)
{
  f32 zero;
  s32 temp_t0;
  s32 var_v0;
  AnimChannelState *temp_v1;
  zero = 0.0f;
  arg0->unk0 = 0;
  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk14 = 0;
  arg0->unk18 = 0;
  arg0->unk2A = 0;
  arg0->unk2C = 0;
  arg0->unk2E = 0;
  arg0->unk24 = 0;
  arg0->unk26 = 0;
  arg0->unk28 = 0;
  arg0->unk30 = 0;
  var_v0 = 1;
  arg0->unk8 = zero;
  arg0->unkC = zero;
  arg0->unk10 = zero;
  arg0->unk1C = zero;
  arg0->unk20 = zero;
  if (arg2 != 1)
  {
	do
	{
	  temp_v1 = &arg0[var_v0];
	  if (1)
	  {
		temp_v1->unk8 = (f32) arg1[0];
		var_v0 += 1;
	  }
	  temp_t0 = var_v0 & 0xFF;
	  var_v0 = temp_t0;
	  arg1 += 8;
	  temp_v1->unkC = (f32) arg1[-7];
	  temp_v1->unk10 = (f32) arg1[-6];
	  temp_v1->unk0 = 0;
	  temp_v1->unk2 = 0;
	  temp_v1->unk4 = 0;
	  temp_v1->unk30 = 0;
	  temp_v1->unk14 = 0;
	  temp_v1->unk18 = 0;
	  temp_v1->unk1C = zero;
	  temp_v1->unk20 = zero;
	  
	}
	while (arg2 != temp_t0);
  }
}

#ifdef NON_MATCHING
// CURRENT(2760)
void func_80081058_51508(void) {
	Vtx *vtx;
	Gfx *dl;

	vtx = D_8005BB34;
	vtx[0].v.cn[2] = 0xFF;
	vtx[0].v.cn[3] = 0xFF;
	vtx[1].v.cn[2] = 0xFF;
	vtx[1].v.cn[3] = 0xFF;
	vtx[2].v.cn[0] = 0xFF;
	vtx[2].v.cn[3] = 0xFF;
	vtx[3].v.cn[0] = 0xFF;
	vtx[3].v.cn[3] = 0xFF;
	vtx[4].v.cn[1] = 0xFF;
	vtx[4].v.cn[3] = 0xFF;
	vtx[5].v.cn[1] = 0xFF;
	vtx[5].v.cn[3] = 0xFF;
	vtx[0].v.ob[0] = 0;
	vtx[0].v.ob[1] = 0;
	vtx[0].v.ob[2] = 0;
	vtx[0].v.flag = 0;
	vtx[0].v.tc[0] = 0;
	vtx[0].v.tc[1] = 0;
	vtx[0].v.cn[0] = 0;
	vtx[0].v.cn[1] = 0;
	vtx[1].v.ob[0] = 0x12C;
	vtx[1].v.ob[1] = 0;
	vtx[1].v.ob[2] = 0;
	vtx[1].v.flag = 0;
	vtx[1].v.tc[0] = 0;
	vtx[1].v.tc[1] = 0;
	vtx[1].v.cn[0] = 0;
	vtx[1].v.cn[1] = 0;
	vtx[2].v.ob[0] = 0;
	vtx[2].v.ob[1] = 0;
	vtx[2].v.ob[2] = 0;
	vtx[2].v.flag = 0;
	vtx[2].v.tc[0] = 0;
	vtx[2].v.tc[1] = 0;
	vtx[2].v.cn[1] = 0;
	vtx[2].v.cn[2] = 0;
	vtx[3].v.ob[0] = 0;
	vtx[3].v.ob[1] = 0x12C;
	vtx[3].v.ob[2] = 0;
	vtx[3].v.flag = 0;
	vtx[3].v.tc[0] = 0;
	vtx[3].v.tc[1] = 0;
	vtx[3].v.cn[1] = 0;
	vtx[3].v.cn[2] = 0;
	vtx[4].v.ob[0] = 0;
	vtx[4].v.ob[1] = 0;
	vtx[4].v.ob[2] = 0;
	vtx[4].v.flag = 0;
	vtx[4].v.tc[0] = 0;
	vtx[4].v.tc[1] = 0;
	vtx[4].v.cn[0] = 0;
	vtx[4].v.cn[2] = 0;
	vtx[5].v.ob[0] = 0;
	vtx[5].v.ob[1] = 0;
	vtx[5].v.ob[2] = 0x12C;
	vtx[5].v.flag = 0;
	vtx[5].v.tc[0] = 0;
	vtx[5].v.tc[1] = 0;
	vtx[5].v.cn[0] = 0;
	vtx[5].v.cn[2] = 0;

	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, -1);
	gSPSetGeometryMode(D_8005BB2C++, G_SHADE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_LINE, G_RM_AA_ZB_XLU_LINE2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gSPVertex(D_8005BB2C++, (Vtx *)((u32)vtx + 0x80000000), 10, 0);
	D_8005BB34 += 6;
	gSPLine3D(D_8005BB2C++, 0, 1, 0);
	gSPLine3D(D_8005BB2C++, 2, 3, 0);
	gSPLine3D(D_8005BB2C++, 4, 5, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80081058_51508.s")
#endif

#ifdef NON_MATCHING
// CURRENT(31401)
void func_80081290_51740(void) {
	Gfx *dl;
	Vtx *baseVtx;
	Unk80052B40 sp84;
	s32 i;

	sp84 = D_800949C8;

	if (D_800313D0_31FD0 == 2) {
		return;
	}

	baseVtx = D_8005BB34;
	if (D_800AC0CC.unk10 != 0) {
		FrontendInterpPos *pos0 = D_800AC0CC.unk0;
		FrontendInterpPos *pos1 = D_800AC0CC.unk4;
		FrontendInterpVtxData *vtxData = D_800AC0CC.unk8;
		for (i = 0; i < D_800AC0CC.unk10; i++) {
			f32 t = D_800AC0CC.unk18;
			f32 oneMinusT = 1.0f - t;

			D_8005BB34->v.ob[0] = (s16) ((pos0[i].unk0 * oneMinusT) + (pos1[i].unk0 * t));
			D_8005BB34->v.ob[1] = (s16) ((pos0[i].unk4 * oneMinusT) + (pos1[i].unk4 * t));
			D_8005BB34->v.ob[2] = (s16) ((pos0[i].unk8 * oneMinusT) + (pos1[i].unk8 * t));
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = vtxData[i].unk0;
			D_8005BB34->v.tc[1] = vtxData[i].unk2;
			D_8005BB34->v.cn[0] = vtxData[i].unk4;
			D_8005BB34->v.cn[1] = vtxData[i].unk5;
			D_8005BB34->v.cn[2] = vtxData[i].unk6;
			D_8005BB34->v.cn[3] = 0xFF;
			D_8005BB34++;
		}
	}

	if (D_800AC0CC.unk18 != 0.0f) {
		f64 temp = (f64) D_800AC0CC.unk18 + D_800AEA58_7EF08;
		if (temp > 1.0) {
			D_800AC0CC.unk18 = 1.0f;
		} else {
			D_800AC0CC.unk18 = (f32) temp;
		}
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA, G_CC_MODULATEIA);
	gDPTileSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, D_800AC0E8);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 256);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);

	sp84.unk0 = (s16) ((f64) sp84.unk0 * D_800AEA60_7EF10);
	sp84.unk2 = (s16) ((f64) sp84.unk2 * D_800AEA60_7EF10);
	sp84.unk4 = (s16) ((f64) sp84.unk4 * D_800AEA60_7EF10);

	func_800039D0_45D0(NULL, NULL, &sp84, D_8005BB38);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	for (i = 0; i < D_800AC0CC.unk14; i++) {
		s32 j;
		s32 triCount;
		FrontendTriBatch *batch = &D_800AC0CC.unkC[i];

		gSPVertex(D_8005BB2C++, (Vtx *) ((u8 *) baseVtx + (batch->unk5 * 0x10)), batch->unk4, 0);

		triCount = batch->unk6 / 2;
		for (j = 0; j < triCount; j++) {
			FrontendTriData *tri = &batch->unk0[j];
			u8 a0;
			u8 a1;
			u8 a2;
			u8 b0;
			u8 b1;
			u8 b2;

			if (tri->unk3 == 0) {
				a0 = tri->unk0;
				a1 = tri->unk1;
				a2 = tri->unk2;
			} else if (tri->unk3 == 1) {
				a0 = tri->unk1;
				a1 = tri->unk2;
				a2 = tri->unk0;
			} else {
				a0 = tri->unk2;
				a1 = tri->unk0;
				a2 = tri->unk1;
			}

			if (tri->unk7 == 0) {
				b0 = tri->unk4;
				b1 = tri->unk5;
				b2 = tri->unk6;
			} else if (tri->unk7 == 1) {
				b0 = tri->unk5;
				b1 = tri->unk6;
				b2 = tri->unk4;
			} else {
				b0 = tri->unk6;
				b1 = tri->unk4;
				b2 = tri->unk5;
			}

			gSP2Triangles(D_8005BB2C++, a0, a1, a2, 0, b0, b1, b2, 0);
		}

		if (batch->unk6 & 1) {
			u8 a0;
			u8 a1;
			u8 a2;
			FrontendTriData *tri = &batch->unk0[batch->unk6 / 2];

			if (tri->unk3 == 0) {
				a0 = tri->unk0;
				a1 = tri->unk1;
				a2 = tri->unk2;
			} else if (tri->unk3 == 1) {
				a0 = tri->unk1;
				a1 = tri->unk2;
				a2 = tri->unk0;
			} else {
				a0 = tri->unk2;
				a1 = tri->unk0;
				a2 = tri->unk1;
			}

			gSP1Triangle(D_8005BB2C++, a0, a1, a2, 0);
		}
	}

	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80081290_51740.s")
#endif

void func_800819C0_51E70(FrontendAnimState *arg0) {
	f32 temp_f0;

	if (arg0->unk20 != 0) {
		temp_f0 = arg0->unk8;
		if ((f64) temp_f0 >= 1.0) {
			arg0->unk10 = (u16) ((s32) (arg0->unk10 + 1) % (s32) arg0->unk12);
			arg0->unk8 = 0.0f;
			return;
		}
		arg0->unk8 = (f32)temp_f0 + arg0->unkC;
	}
}

#ifdef NON_MATCHING
// CURRENT(5165)
void func_80081A50_51F00(FrontendTextureInfo *arg0) {
	Gfx *dl;
	s32 loadCount;
	s32 lineCount;
	s32 dxt;

	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1,
		arg0->img + (arg0->unk10 * ((s32) (arg0->unk14 * arg0->unk15) / 2)));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);

	loadCount = (((arg0->unk14 * arg0->unk15) + 3) >> 2) - 1;
	if (loadCount > 0x7FF) {
		loadCount = 0x7FF;
	}

	lineCount = (s32) arg0->unk14 / 16;
	if (lineCount <= 0) {
		lineCount = 1;
	}
	dxt = (lineCount + 0x7FF) / lineCount;

	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, loadCount, dxt);

	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b,
		((((s32) arg0->unk14 >> 1) + 7) >> 3) & 0x1FF,
		0, G_TX_RENDERTILE, 0,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0,
		((arg0->unk14 - 1) << 2), ((arg0->unk15 - 1) << 2));
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
	gDPSetCombineLERP(D_8005BB2C++, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, TEXEL0,
		PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, TEXEL0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80081A50_51F00.s")
#endif

#ifdef NON_MATCHING
// CURRENT(2500)
void func_80081CAC_5215C(s32 arg0, s32 arg1, u32 arg2, u32 arg3) {
	Gfx *dl;
	s32 texS;

	(void)arg0;
	(void)arg1;

	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);

	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_800AC8F0_7CDA0);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 256);
	gDPPipeSync(D_8005BB2C++);

	texS = D_800949D0_64E80;
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << 2), (31 << 2));

	gSPTextureRectangle(D_8005BB2C++, 0, 0, 0x500, 0x3C0, G_TX_RENDERTILE, texS, 0,
		(s32)(((f32)(32.0 / (f64)(f32)arg2)) * 1024.0f),
		(s32)(((f32)(32.0 / (f64)(f32)arg3)) * 1024.0f));

	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	D_800949D0_64E80 = texS - 6;
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA, G_CC_MODULATEIA);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80081CAC_5215C.s")
#endif

#ifdef NON_MATCHING
void func_80081F9C_5244C(void) {
	D_800D8524 = 0xF;
	D_800D8520 = ((s32*)(D_800D7A4C + D_800949D4 * 8))[8];
	D_800949D4 = (u8)((s32)(D_800949D4 + 1) % 4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80081F9C_5244C.s")
#endif

/**
 * @brief Dampens D_800D8528 by 87.5% and reverses direction, zeroing if below threshold.
 */
void func_80081FF0_524A0(void) {
	f32 absVal;

	if (D_800D8528 >= 0.0f) {
		absVal = D_800D8528;
	} else {
		absVal = -D_800D8528;
	}
	if ((f64)absVal < D_800AEA68_7EF18) {
		D_800D8528 = 0.0f;
		return;
	}
	D_800D8528 = (f32)((f64)D_800D8528 - (f64)D_800D8528 * 0.125);
	D_800D8528 = -D_800D8528;
}

#ifdef NON_MATCHING
// CURRENT(5375)
void func_80082074_52524(void) {
	f32 var_f0;
	f32 temp_f2;
	f32 temp_f6;
	f32 temp_f8;
	f32 temp_f16;
	f64 temp_f12;
	f32* ptr;
	s32 temp_a0;
	s32 var_v0;
	s32 var_v1;

	ptr = &D_80094950_64E00;
	if (D_8009494C_64DFC == 1) {
		var_v0 = 0;
		var_v1 = 0xFF;
		var_f0 = D_800AEA70_7EF20;
	} else {
		var_v0 = 0xFF;
		var_v1 = 0;
		var_f0 = D_800AEA74_7EF24;
	}

	temp_f2 = *ptr;
	temp_f6 = (f32)var_v0;
	if (var_v0 < 0) {
		temp_f6 += 4294967296.0f;
	}
	temp_f16 = temp_f2 + var_f0;
	temp_f12 = (f64)temp_f16;
	if (1.0 < temp_f12) {
		*ptr = 1.0f;
	} else {
		*ptr = (f32)temp_f12;
	}
	temp_f8 = (f32)var_v1;
	if (var_v1 < 0) {
		temp_f8 += 4294967296.0f;
	}
	temp_f16 = (temp_f6 * (1.0f - temp_f2)) + (temp_f2 * temp_f8);
	temp_a0 = (u32)temp_f16;
	temp_a0 &= 0xFF;
	*((s32*)((u8*)D_800D7A1C + 0x49C)) = temp_a0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80082074_52524.s")
#endif
