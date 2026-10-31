#define GAME_OSSETTIME_IMPL
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

// Frontend animation/frame data
s16 D_800946E0_64B90[0x70] = {
    0x0000, 0x0000, 0xFFF2, 0xFFF8, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0103, 0x0000, 0xFFF8, 0xFFC0, 0x0008, 0x0000, 0x0000, 0x0000,
    0x01FF, 0x0000, 0xFFF8, 0xFFC4, 0xFFFD, 0x0000, 0x0000, 0x0000,
    0xFFFF, 0x0000, 0x0012, 0xFFF8, 0x0001, 0x0000, 0x0000, 0x0000,
    0x0103, 0x0000, 0x0005, 0xFFC1, 0x0006, 0x0000, 0x0000, 0x0000,
    0x01FF, 0x0000, 0x0002, 0xFFC3, 0xFFFF, 0x0000, 0x0000, 0x0000,
    0xFFFF, 0x0000, 0x0000, 0x000C, 0x0000, 0x0000, 0x0000, 0x0000,
    0x01FF, 0x0000, 0x0000, 0x0032, 0x0004, 0x0000, 0x0000, 0x0000,
    0x0102, 0x0000, 0x0000, 0x000F, 0x0002, 0x0000, 0x0000, 0x0000,
    0xFFFF, 0x0000, 0xFFE6, 0x002C, 0xFFFE, 0x0000, 0x0000, 0x0000,
    0x0103, 0x0000, 0xFFF1, 0xFFD8, 0xFFF9, 0x0000, 0x0000, 0x0000,
    0x01FF, 0x0000, 0xFFFA, 0xFFDA, 0x0015, 0x0000, 0x0000, 0x0000,
    0xFFFF, 0x0000, 0x001A, 0x002B, 0xFFFD, 0x0000, 0x0000, 0x0000,
    0x01FF, 0x0000, 0x000C, 0xFFD9, 0xFFFB, 0x0000, 0x0000, 0x0000,
};

// Weapon selection text pointers
s32 D_800947C0_64C70[6] = {
    0x01FF0000, 0x0007FFDB, 0x00150000, 0x00000000, 0xFFFF0000, (s32)D_800AD700_7DBB0,
};
s32 D_800947D8_64C88[3] = {
    (s32)D_800AD704_7DBB4, (s32)D_800AD70C_7DBBC, (s32)D_800AD718_7DBC8,
};
s32 D_800947E4_64C94[3] = {
    (s32)D_800AD720_7DBD0, (s32)D_800AD734_7DBE4, (s32)D_800AD73C_7DBEC,
};
s32 D_800947F0_64CA0[13] = {
    (s32)D_800AD744_7DBF4, (s32)D_800AD758_7DC08, (s32)D_800AD760_7DC10, (s32)D_800AD768_7DC18, (s32)D_800AD774_7DC24,
    (s32)D_800AD780_7DC30, (s32)D_800AD790_7DC40, (s32)D_800AD79C_7DC4C, (s32)D_800AD7AC_7DC5C, (s32)D_800AD7B0_7DC60,
    0x00000000, 0x00000000, 0x00000000,
};

s16 D_80094824_64CD4 = 0;
s16 D_80094828_64CD8 = 0;
// Frontend overlay entry point; dispatches frontend actions.
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
		case 13:
				func_8007685C_46D0C();
				break;
		case 9:
				return func_8007CFB4_4D464(1);
		case 14:
				return func_8007CFB4_4D464(0);
		case 11:
				return func_8007D2B0_4D760();
		case 12:
				D_800946DC_64B8C = FE_STATE_PRESS_START;
				func_800789E4_48E94();
				break;
		}

		return 0;
}

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

void func_80070514_409C4(s16 arg0)
{
	s32 var_v1 = 42;
	MissionData *temp_a0;
	MissionData *new_var2;
	if (arg0 == D_800D74AA)
	{
		return;
	}
	while ((var_v1--) && D_800D6DC0[var_v1].unk16)
	{
	}

	new_var2 = &D_800D6DC0[var_v1];
	if (var_v1 == -1)
	{
		osSyncPrintf(D_800AD7B4_7DC64);
		return;
	}
	temp_a0 = new_var2;
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
		temp_a0->unk1C = (D_800909B0[arg0].unk1C = arg0 * 0);
	}
	else
	{
		temp_a0->unk1C = D_800909B0[arg0].unk1C;
	}
	temp_a0->unk26 = arg0;
	temp_a0->unk28 = -1;
	switch (D_800313D0_31FD0)
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

// Allocates a transient frontend mission entry from its template.
MissionData* func_800706E8_40B98(s16 arg0) {
	s32 index;
	MissionData* entry;
	MissionData* newSource;
	MissionData* source;

	index = 0x29;
	if (D_800D7490 != 0) {
		do {} while (index-- && D_800D6DC0[index].unk16);
	}
	newSource = &D_800909B0[arg0];
	if (index == -1) {
		osSyncPrintf(D_800AD7CC_7DC7C);
		return NULL;
	}
	entry = &D_800D6DC0[index];
	source = newSource;
	entry->unk0 = source->unk0 * 4;
	entry->unk2 = source->unk2 * 4;
	entry->unk4 = source->unk4 * 4;
	entry->unk6 = source->unk6 * 4;
	entry->unk8 = source->unk8;
	entry->unkA = source->unkA * 4;
	entry->unkC = source->unkC * 4;
	entry->unkE = source->unkE * 4;
	entry->unk10 = source->unk10 * 4;
	entry->unk12 = 0xFFFF;
	entry->unk14 = 0;
	entry->unk16 = source->unk16;
	if (source->unk1C == 3) {
		source->unk1C = 0;
		entry->unk1C = 0;
	} else {
		entry->unk1C = source->unk1C;
	}
	entry->unk26 = arg0;
	entry->unk28 = source->unk28;
	switch (D_800313D0_31FD0) {
	case 0:
	default:
		entry->unk1E = source->unk1E;
		break;
	case 2:
		entry->unk1E = source->unk18;
		break;
	case 1:
		entry->unk1E = source->unk1A;
		break;
	}
	entry->unk20 = source->unk20;
	if (arg0 == D_800D74A4) {
		func_800704DC_4098C();
		entry->unk1C = 1;
	}
	return entry;
}

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

void func_80070CC4_41174(void)
{
	s16 selectedFileIndex;
	MissionData* selectedFileData;
	s32 playAltMoveSfx = 0;
	static s16 horizontalRepeatDelay = 0x1E;

	if (D_8004758A < 0x15 && D_8004758A >= -0x14 && !isButtonNewlyPressed(0, 0x300)) {
		D_80094824_64CD4 = 1;
		horizontalRepeatDelay = 0x1E;
	}

	if (D_8004758B < 0x15 && D_8004758B >= -0x14 && !isButtonNewlyPressed(0, 0xC00)) {
		D_80094828_64CD8 = 1;
		D_80094830_64CE0 = 0x1E;
	}

	selectedFileData = &D_800909B0[D_800D74A4];
	selectedFileIndex = D_800D74A4;

	if (D_80094824_64CD4 || --horizontalRepeatDelay == 0) {
		if ((D_8004758A < -0x14 || isButtonNewlyPressed(0, 0x200)) && selectedFileData->unk22 != 0) {
				do {
					selectedFileIndex = D_800909B0[selectedFileIndex].unk22;
				} while (selectedFileIndex != 0 && D_800909B0[selectedFileIndex].unk1C == 3);
		} else if (D_8004758A >= 0x15 || isButtonNewlyPressed(0, 0x100)) {
			if (selectedFileData->unk23 != 0) {
				do {
					selectedFileIndex = D_800909B0[selectedFileIndex].unk23;
				} while (selectedFileIndex != 0 && D_800909B0[selectedFileIndex].unk1C == 3);
			}
		}
	}

	if (selectedFileIndex != D_800D74A4 && selectedFileIndex != 0) {
		D_800D74A4 = selectedFileIndex;
		D_80094824_64CD4 = 0;
		if (horizontalRepeatDelay < 8) {
			horizontalRepeatDelay = 8;
		}
		func_800153D8_15FD8(0xC9);
		return;
	}

	if (D_80094828_64CD8 || (D_80094830_64CE0 = D_80094830_64CE0 - 1) == 0) {
		if ((D_8004758B >= 0x15 || isButtonNewlyPressed(0, 0x800)) && selectedFileData->unk24 != 0) {
				do {
					selectedFileIndex = D_800909B0[selectedFileIndex].unk24;
				} while (selectedFileIndex != 0 && D_800909B0[selectedFileIndex].unk1C == 3);
				playAltMoveSfx = 1;
		} else if (D_8004758B < -0x14 || isButtonNewlyPressed(0, 0x400)) {
			if (selectedFileData->unk25 != 0) {
				do {
					selectedFileIndex = D_800909B0[selectedFileIndex].unk25;
				} while (selectedFileIndex != 0 && D_800909B0[selectedFileIndex].unk1C == 3);
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

/* Keep these definitions after the function-local repeat timer in data order. */
s16 D_80094830_64CE0 = 0x1E;
s16 D_80094834_64CE4 = 0;
s16 D_80094838_64CE8 = 0;
void func_800710D8_41588(s16 arg0, s16 arg1) {
	s16 selectedMissionBefore;
	s16 i;
	static s16 horizontalRepeatDelay = 0x1E;
	static s16 verticalRepeatDelay = 0x1E;

	D_800D74A8 = (D_800D74A4 - arg0) - 1;
	selectedMissionBefore = D_800D74A4;

	if (D_8004758A < 0x15 && D_8004758A >= -0x14 && !isButtonNewlyPressed(0, 0x300)) {
		D_80094834_64CE4 = 1;
		horizontalRepeatDelay = 0x1E;
	}

	if (D_8004758B < 0x15 && D_8004758B >= -0x14 && !isButtonNewlyPressed(0, 0xC00)) {
		D_80094838_64CE8 = 1;
		verticalRepeatDelay = 0x1E;
	}

	if (D_80094834_64CE4 || --horizontalRepeatDelay == 0) {
		if (D_8004758A < -0x14 || isButtonNewlyPressed(0, 0x200)) {
			switch (arg1) {
			case 2:
					i = 0xD;
				do {
						if (D_800D74AC <= 0) {
							D_800D74AC = 0xD;
						} else {
						D_800D74AC--;
						}

					if (D_800AED78[D_800D74AC] != 0 && ((FrontendItemRenderData(*)[13])D_800942E0_64790)[currentLevel][D_800D74AC - 13].displayList != NULL) {
						break;
					}
				} while (--i >= 0);

					if (D_800D74AC != 0) {
						func_80070494_40944(0x4E)->unk28 = 0x64;
						func_800153D8_15FD8(0xCB);
					}
				break;
			case 1: i = 8; do {
					if (D_800D74AE++ >= 8) {
						D_800D74AE = 0;
					}
				} while (weaponSlots[D_800D74AE] == 0 && --i >= 0);

				func_80070494_40944(0x4D)->unk28 = 0x64;
				func_800153D8_15FD8(0xCB);
				break;
			default:
				func_800153D8_15FD8(0xC9);
				D_800D74A4 = 0x48;
				break;
			}

			D_80094834_64CE4 = 0;
			if (horizontalRepeatDelay < 8) {
				horizontalRepeatDelay = 8;
			}
		}

		if (D_8004758A >= 0x15 || isButtonNewlyPressed(0, 0x100)) {
			switch (arg1) {
			case 2:
					i = 0xD;
				do {
					if (D_800D74AC >= 0xD) {
						D_800D74AC = 0;
					} else {
						D_800D74AC++;
					}
					if (D_800AED78[D_800D74AC] != 0 && ((FrontendItemRenderData(*)[13])D_800942E0_64790)[currentLevel][D_800D74AC - 13].displayList != NULL) {
						break;
					}
				} while (--i >= 0);

					if (D_800D74AC != 0) {
						func_80070494_40944(0x4E)->unk28 = 0x64;
						func_800153D8_15FD8(0xCB);
					}
				break;
			case 1:
				i = 8;
				do {
					if (D_800D74AE-- <= 0) {
						D_800D74AE = 7;
					}
				} while (weaponSlots[D_800D74AE] == 0 && --i >= 0);

				func_80070494_40944(0x4D)->unk28 = 0x64;
				func_800153D8_15FD8(0xCB);
				break;
			default:
				(D_800D74A4 = 0x49), func_800153D8_15FD8(0xC9);
				break;
			}

			D_80094834_64CE4 = 0;
			if (horizontalRepeatDelay < 8) {
				horizontalRepeatDelay = 8;
			}
		}
	}

	if (D_80094838_64CE8 || --verticalRepeatDelay == 0) {
		if (D_8004758B >= 0x15 || isButtonNewlyPressed(0, 0x800)) {
			if (arg1 == 0) {
				D_800D74A4 = 0x48;
			}

			D_80094838_64CE8 = 0;
			if (verticalRepeatDelay < 8) {
				verticalRepeatDelay = 8;
			}

			if (selectedMissionBefore != D_800D74A4) {
				func_800153D8_15FD8(0xCA);
			}
		}

		if (D_8004758B < -0x14 || isButtonNewlyPressed(0, 0x400)) {
			D_80094838_64CE8 = 0;
			if (arg1 == 0) {
				D_800D74A4 = 0x4A;
			}

			if (verticalRepeatDelay < 8) {
				verticalRepeatDelay = 8;
			}

			if (selectedMissionBefore != D_800D74A4) {
				func_800153D8_15FD8(0xC9);
			}
		}
	}
}

s32 D_80094844_64CF4 = 0;
s32 D_80094848_64CF8 = 0;




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

void func_80071738_41BE8(void) {
	s32 i;
	i = 0x2A;
	while (i--) {
		D_800D6DC0[i].unk16 = 0;
	}
}

s32 func_80071760_41C10(s32 arg0)
{
	s32 totalWidth;
	s16 digitCount;
	s16 i;
	s16 j;
	s32 value;
	s32 divisor;
	s32 pad1;
	s8 pad2;
	s8 pad3;
	u8 ch[2];
	s32 textWidth;

	digitCount = 0;
	totalWidth = 0;
	value = arg0;
	textWidth = func_8000A2B8_AEB8(D_800AD7E4_7DC94, 0) * 0x1C;
	while (value > 0)
	{
		value = value / 10.0f;
		digitCount++;
	}

	for (ch[1] = 0, i = 0; i < digitCount; i++)
	{
		divisor = 1;
		for (j = 0; j < i; j++)
		{
			divisor *= 10;
		}

		value = (f32)arg0 / divisor;
		ch[0] = value - (s32)(value / 10.0f) * 10 + '0';
		totalWidth += func_8000A2B8_AEB8(ch, 0) * 4;
	}
	if (arg0 == 0)
	{
		totalWidth = func_8000A2B8_AEB8(D_800AD7E8_7DC98, 0) * 4;
	}
	return textWidth - totalWidth;
}

void func_80071900_41DB0(s32 arg0, s32 arg1, f32 arg2, f32 arg3) {
	s32 i;
	s32 weaponIndex;
	s32 sizeX;
	s32 sizeY;
	s16 posX;
	s16 posY;
	s32 texIndex;

	i = 0;
	weaponIndex = 7; do {
		if (weaponSlots[weaponIndex] != 0) {
			posX = arg0 - (s16)((64.0f * arg2) / 2) + (((i % 3) * 32.0) * arg2);
			posY = arg1 - (s16)((64.0f * arg3) / 2) + (((i / 3) * 32.0) * arg3);
			i++;
			texIndex = D_80031474[weaponSlots[weaponIndex]];
			sizeX = 12 * arg2;
			sizeY = 12 * arg3;

			gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
			gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_80260500);
			{ Gfx* palettePacket = D_8005BB2C++; gDPTileSync(palettePacket); }
			{ Gfx *tilePacket = D_8005BB2C++; tilePacket->force_structure_alignment =
					((u64)(_SHIFTL(G_SETTILE, 24, 8) | _SHIFTL(256, 0, 9)) << 32) |
					_SHIFTL(G_TX_LOADTILE, 24, 3); }
			gDPLoadSync(D_8005BB2C++);
			gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 255);
			gDPPipeSync(D_8005BB2C++);

			if (weaponSlots[weaponIndex] != 0) {
				gDPSetPrimColor(D_8005BB2C++, 1, 0, 0x00, 0xAA, 0xD2, 0xFF);
			} else {
				gDPSetPrimColor(D_8005BB2C++, 1, 0, 0x00, 0x23, 0x46, 0xFF);
			}

			gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
			gDPSetRenderMode(D_8005BB2C++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
			gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

			gDPLoadTextureBlock(D_8005BB2C++, K0_TO_PHYS(&D_8025CCC0[texIndex * 0x240]), G_IM_FMT_CI, G_IM_SIZ_8b, 24, 24, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
			gDPPipeSync(D_8005BB2C++);

			gSPTextureRectangle(D_8005BB2C++,
				((posX - sizeX) + 0xC) << 2,
				((posY - sizeY) + 0xC) << 2,
				((posX + sizeX) + 0xC) << 2,
				((posY + sizeY) + 0xC) << 2,
				G_TX_RENDERTILE, 0, 0,
				(s32)((1.0f / arg2) * 1024.0f),
				(s32)((1.0f / arg3) * 1024.0f));

			gDPPipeSync(D_8005BB2C++);
		}
	} while (weaponIndex-- >= 0);
}

void func_80071E80_42330(s32 arg0, s32 arg1, f32 arg2, f32 arg3) {
	s32 textureIndex;
	s32 weaponType;
	s16 sizeX;
	s16 sizeY;
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
	gDPLoadTLUT_pal256(D_8005BB2C++, D_80260500);

	arg2 = arg2 * 2;
	arg3 = arg3 * 2;

	if (weaponSlots[D_800D74AE] != 0) {
		gDPSetPrimColor(D_8005BB2C++, 1, 0, 0x00, 0xAA, 0xD2, 0xFF);
	} else {
		gDPSetPrimColor(D_8005BB2C++, 1, 0, 0x00, 0x23, 0x46, 0xFF);
	}

	gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
	gDPLoadTextureBlock(D_8005BB2C++, K0_TO_PHYS(&D_8025CCC0[textureIndex * 0x240]), G_IM_FMT_CI, G_IM_SIZ_8b, 24, 24, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

	sizeX = 12.0f * arg2;
	sizeY = 12.0f * arg3;

	gDPPipeSync(D_8005BB2C++);

	gSPTextureRectangle(D_8005BB2C++,
		((posX - sizeX) + 0xC) << 2,
		((posY - sizeY) + 0xC) << 2,
		((posX + sizeX) + 0xC) << 2,
		((posY + sizeY) + 0xC) << 2,
		G_TX_RENDERTILE, 0, 0,
		(s32)((1.0f / arg2) * 1024.0f),
		(s32)((1.0f / arg3) * 1024.0f));

	gDPPipeSync(D_8005BB2C++);
}

void func_800722A4_42754(void) {
	u16 perspNorm;
	s16 i;

	for (i = 0; i < 12; i++) {
		D_800AED78[i] = func_8000726C_7E6C((s64)i);
	}

	D_800AED78[0xB] = D_8004DC5C;
	D_800AED78[0xC] = D_8004DC5E;

	gDPPipeSync(D_8005BB2C++);
	gSPDisplayList(D_8005BB2C++, K0_TO_PHYS(D_800311A8));
	func_80004F64_5B64();
	gSPDisplayList(D_8005BB2C++, K0_TO_PHYS(D_800311D0));
	gDPSetColorImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, K0_TO_PHYS(D_8005BB48[D_80031B84_32784]));

	guPerspective((Mtx *)(D_8005BB20 + 0x180), &perspNorm, 45.0f, 1.3333334f, 5.0f, 1000.0f, 1.0f);
	gSPPerspNormalize(D_8005BB2C++, perspNorm);

	guLookAt((Mtx *)(D_8005BB20 + 0x200), 0.0f, 0.0f, 100.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB20 + 0x180), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB20 + 0x200), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gDPSetCombineLERP(D_8005BB2C++, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gSPSetLights1(D_8005BB2C++, D_800942A0_64750);
	gSPClearGeometryMode(D_8005BB2C++, 0xFFFFFFFF);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_LIGHTING | G_SHADING_SMOOTH);
}

void func_80072604_42AB4(s32 arg0, s32 arg1, s32 arg2, f32 arg3) {
	s16 topPadding;
	u16 spacing;
	s32 padTop[4];
	Unk80052B40 position;
	Unk80052B40 scaleVector;
	Unk80052B40 rotation;
	s32 middlePadding[3];
	s32 startX;
	s32 scaleInt;
	s16 i;
	f32 scale;
	s32 count;
	s32 remaining;
	Gfx* displayList;

	D_80094844_64CF4 += 0x2D8;
	count = D_8004DC5C;
	remaining = count;
	startX = arg0;
	spacing = 0;

	if (count != 1) {
		if ((remaining & 0xFFFFFFFF) != 2) {
			if ((remaining & 0xFFFFFFFF) == 3) {
				spacing = 0x50; startX = arg0 - 0x28;
			}
		} else {
			spacing = 0x50; startX = arg0 - 0x55;
		}
	} else {
		spacing = 0x50; startX = arg0 - 0x78;
	}

	if (count > 0) {
		i = 0;
		do {
			displayList = D_800942D8_64788;
			if (displayList != NULL) {
				scale = arg3 * 1.5;
				scale = D_800942DC_6478C * scale;
				arg0 = ((u32)spacing * (u32)(3 - remaining)) + startX;
				remaining--;

				gDPPipeSync(D_8005BB2C++);
				gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
				gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);

				func_800039D0_45D0(NULL, NULL, &D_800311A0, D_8005BB38);
				gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

				scaleInt = 256.0f * scale;
				position.unk0 = arg0;
				position.unk2 = arg1;
				position.unk4 = arg2;

				rotation.unk0 = D_80094844_64CF4 & 0xFFFF;
				rotation.unk2 = 0;
				rotation.unk4 = 0;

				scaleVector.unk0 = scaleInt;
				scaleVector.unk2 = scaleInt;
				scaleVector.unk4 = scaleInt;

				func_800039D0_45D0(&position, &rotation, &scaleVector, D_8005BB38);

				gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				gSPDisplayList(D_8005BB2C++, K0_TO_PHYS(displayList));
				gDPPipeSync(D_8005BB2C++);

				count = D_8004DC5C;
			}

		} while (++i < count);
	}
}

// Renders the twelve artifact slots around the rotating inventory display.
void func_800728F4_42DA4(s32 arg0, s32 arg1, s32 arg2, f32 arg3) {
	s32 unused3;
	s32 unused4;
	s32 unused5;
	s32 unused6;
	s32 unused7;
	Unk80052B40 spA4;
	Unk80052B40 sp9C;
	Unk80052B40 sp94;
	s32 unused0;
	s32 unused1;
	s32 unused2;
	s32 unused8;
	s32 temp;
	s32 varS3;
	s32 varS4;
	s16 varS5;
	u32 mask = 0x1FFFFFFF;
	Gfx* tempS6;

	temp = (s32) ((0, 256.0f) * (f32) (arg3 * D_800AE518_7E9C8.value));
	varS3 = 0;
	varS4 = D_8004DC5E;
	spA4.unk0 = arg0;
	spA4.unk2 = arg1;
	spA4.unk4 = arg2;
	sp9C.unk0 = (s16) temp;
	sp9C.unk2 = (s16) temp;
	sp9C.unk4 = (s16) temp;

	for (varS5 = 0; varS5 < 12; varS5++) {
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
		gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

		sp94.unk0 = 0;
		sp94.unk2 = (D_80094848_64CF8 & 0xFFFF) + varS3;
		sp94.unk4 = 0x2000;
		func_800039D0_45D0(&spA4, &sp94, &sp9C, D_8005BB38);

		gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		gSPDisplayList(D_8005BB2C++, (Gfx *)((u32)tempS6 & mask));
		varS3 += 0x1555;
		gDPPipeSync(D_8005BB2C++);
	}

	D_80094848_64CF8 = D_80094848_64CF8 + 0xB6;
}

// Checks if selected inventory item is 0xb (weapon crystals)
void func_80072B68_43018(s32 arg0, s32 arg1, s32 arg2, f32 arg3) {
	static s32 itemRotation = 0;
	Gfx *packet;
	s32 unusedPad1;
	s32 unusedPad2;
	s32 unusedPad3;
	Unk80052B40 sp60;
	Unk80052B40 sp58;
	Unk80052B40 sp50;
	Gfx* displayList;
	s32 padding[2];
	FrontendItemRenderData* itemEntry;
	Mtx *matrix;
	s32 scaleInt;
	s16 selectedItem;

	func_800722A4_42754();
	selectedItem = D_800D74AC;

	if (selectedItem == 0xB) {
		func_80072604_42AB4(-0xE6, -0x32, -0x190, arg3);
		return;
	}

	if (selectedItem == 0xC) {
		func_800728F4_42DA4(-0xB4, -0x32, -0x190, arg3);
		return;
	}

	if (selectedItem == 0) {
		return;
	}

	itemEntry = &((FrontendItemRenderData (*)[13])D_800942E0_64790)[currentLevel - 1][selectedItem];
	displayList = itemEntry->displayList;
	if ((D_800AED78[selectedItem] == 0) || (displayList == NULL)) {
		return;
	}

	if ((arg3 = (itemEntry->scale * 2) * arg3,1)) {} itemRotation = itemRotation + 0x16C;

	packet=D_8005BB2C++; packet->words.w0=0xE7000000; packet->words.w1=0;
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	packet=D_8005BB2C++; packet->words.w0=0xBB000000; packet->words.w1=0x80008000;
	func_800039D0_45D0(NULL, NULL, &D_800311A0, D_8005BB38);

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	matrix = D_8005BB38;

	sp60.unk0 = arg0;
	sp60.unk2 = arg1;
	sp60.unk4 = arg2;

	sp50.unk0 = itemRotation & 0xFFFF;
	sp50.unk2 = 0;
	sp50.unk4 = 0;

	scaleInt = 256.0f * arg3;
	sp58.unk0 = scaleInt;
	sp58.unk2 = scaleInt;
	sp58.unk4 = scaleInt;

	func_800039D0_45D0(&sp60, &sp50, &sp58, matrix);

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	gSPDisplayList(D_8005BB2C++, K0_TO_PHYS(displayList));
	gDPPipeSync(D_8005BB2C++);
}

// display inventory models
void func_80072E18_432C8(s32 arg0, s32 arg1, s32 arg2, f32 arg3) {
	static s32 itemRotation = 0;
	s32 padding[3];
	f32 baseX;
	f32 baseY;
	Unk80052B40 position;
	Unk80052B40 scale;
	Unk80052B40 rotation;
	FrontendItemRenderData *itemEntry;
	Gfx *displayList;
	s32 scaleInt;
	s32 screenOrigin[2]; /* Y, X */
	s32 itemCount;
	s16 i;
	u32 xOffset;
	u32 yOffset;
	f32 itemScale;

	screenOrigin[1] = arg0;
	screenOrigin[0] = arg1;
	func_800722A4_42754();
	itemRotation += 0x2D8;

	itemCount = 0;
	for (i = 0; i < 0xD; i++) {
		itemEntry = &((FrontendItemRenderData (*)[13])D_800942E0_64790)[currentLevel - 1][i];
		displayList = itemEntry->displayList;
		if ((D_800AED78[i] != 0) && (displayList != NULL)) {
			xOffset = ((((itemCount % 3) * 0x5A) - 0x5A) & 0xFFFF);
			yOffset = (((-(itemCount / 3) * 0x50) + 0x50) & 0xFFFF);
			itemScale = itemEntry->scale * arg3;
			itemCount++;

			gDPPipeSync(D_8005BB2C++);
			gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
			gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);

			baseX = screenOrigin[1]; baseY = screenOrigin[0];
			func_800039D0_45D0(NULL, NULL, &D_800311A0, D_8005BB38);
			gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

			position.unk0 = (0, baseX) + ((f32)xOffset * arg3);
			position.unk2 = (0, baseY) + ((f32)yOffset * arg3);
			position.unk4 = arg2;

			rotation.unk0 = itemRotation & 0xFFFF;
			rotation.unk2 = 0;
			rotation.unk4 = 0;

			scaleInt = 256.0f * itemScale;
			scale.unk0 = scaleInt;
			scale.unk2 = scaleInt;
			scale.unk4 = scaleInt;

			func_800039D0_45D0(&position, &rotation, &scale, D_8005BB38);
			if (i) {}
			if (displayList->words.w0 + displayList->words.w1) {}
			if ((baseX + baseX + arg3 + arg3 + arg3 + baseY) < (arg3 + baseX + arg3 + baseY + baseX + arg3)) {}
			gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			gSPDisplayList(D_8005BB2C++, K0_TO_PHYS(displayList));
			gDPPipeSync(D_8005BB2C++);
		}
	}
}

s32 D_80094854_64D04 = 0;
u8 D_80094858_64D08 = 0x28;
s32 D_8009485C_64D0C = 0;

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
	extern char D_800918A0_61D50[];
	extern u16 D_800920A0_62550[];
	extern char D_800921A0_62650[];
	extern u16 D_800929A0_62E50[];
	extern char D_80092AA0_62F50[];
	extern u16 D_800932A0_63750[];
	extern u8 *D_800AED74;
	extern s32 D_800D6D98[];
	extern s32 D_800D6D9C[];

	var_s4 = &D_800D6DC0;
	func_800038E0_44E0();
	D_800946E0_64B90[0] += 0x320;
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
					D_800946E0_64B90[0] = 0x4000;
					var_t3 = var_a0;
				} else {
					var_t3 = D_80094858_64D08;
					var_a0 = var_t3;
					var_a1 = (s32) (((f64) (f32) sins((u16) D_800946E0_64B90[0]) / 32768.0) * D_800AE520_7E9D0[0]) + var_t3;
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
#ifdef VERSION_EU
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800731A8_43658.s", "src.us/overlay_gameplay/frontend/40720_late_rodata.eu.s")
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800731A8_43658.s", "src.us/overlay_gameplay/frontend/40720_late_rodata.s")
#endif
#endif

void func_80075710_45BC0(void) {
    s32 pad[22];



	guOrtho(D_8005BB38, 0.0f, 160.0f, 120.0f, 0.0f, D_800AE77C_7EC2C[0], D_800AE780_7EC30[0], 1.0f);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

	guRotate(D_8005BB38, 0.0f, 1.0f, 0.0f, 0.0f);
	gSPMatrix(D_8005BB2C++, OS_PHYSICAL_TO_K0(D_8005BB38), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38++;

	gDPPipeSync(D_8005BB2C++);
	gDPLoadSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_COPY);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);

	{
		s32 rowIndex;
		s32 rowTextureOffset;
		s32 pad2;
		s32 rowTopY;
		s32 rowBottomY;
		s32 pad3;
		u16 (*textureBase)[1024];
		u16 (*textureImage)[1024]; s16 right;
		textureBase = (u16 (*)[1024])D_800AED88; 	rowIndex = 0; rowBottomY = 0x20; rowTopY = 0; for (; rowBottomY != 0x120; rowIndex += 0xA, rowTopY += 0x20, rowBottomY += 0x20) {
			textureImage = &textureBase[rowIndex];  		for (rowTextureOffset = 0; rowTextureOffset != 0x140; rowTextureOffset += 0x20) {
				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, textureImage);
				textureImage++;
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
				right = (s16)rowTextureOffset + 0x20; gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C, 0x7C);

				gSPTextureRectangle(D_8005BB2C++, rowTextureOffset << 2, rowTopY << 2, (right << 2) - 1,
				(rowBottomY << 2) - 1, G_TX_RENDERTILE, 0, 0, 0x1000, 0x400);
			}

		}

	}
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);

}



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
	if (D_800D6DA8[2][0] == 0x47) {
		if (D_800D6DA8[2][1] == 0x52) {
			if (D_800D6DA8[2][5] == 0x4E) {
				if (D_800D6DA8[2][3] == 0x4D) {
					if (D_800D6DA8[2][4] == 0x4C) {
						if (D_800D6DA8[2][2] == 0x49) {
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

void func_80075D58_46208(s32 arg0) {
	u16 perspectiveNormal;

	func_800132CC_13ECC();
	if (D_800946DC_64B8C != FE_STATE_PRESS_START) {
		func_800791A0_49650(3);
		return;
	}

	func_800791A0_49650(2);
	guPerspective(D_8005BB38, &perspectiveNormal, 73.0f, 1.25f, 150.0f, D_800AE784_7EC34[0], 1.0f);
	gSPPerspNormalize(D_8005BB2C++, perspectiveNormal);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

	guLookAt(D_8005BB38, 0.0f, 300.0f, 370.0f, 0.0f, 0.0f, 0.0f, D_800AE788_7EC38[0], 1.0f, 0.0f);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gSPClearGeometryMode(D_8005BB2C++, 0xFFFFFFFF);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_SHADING_SMOOTH);
	gSPClipRatio(D_8005BB2C++, FRUSTRATIO_4);
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
		D_80052B48.unk0 = (s16)((-D_80094860_64D10 * 30) + 30);
	} else {
		D_80052B48.unk0 = (s16)(-D_80094860_64D10 * 30);
	}
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	D_80052B50.unk0 = 200;
	D_80052B50.unk2 = 200;
	D_80052B50.unk4 = 200;

	guLookAtReflect(D_8005BB38, &D_800D78E0[D_80031B84_32784], 0.0f, 300.0f, 370.0f,
								(float)D_80052B40.unk0, (float)D_80052B40.unk2, (float)D_80052B40.unk4,
								0.0f, 1.0f, 0.0f);
	gSPLookAt(D_8005BB2C++, &D_800D78E0[D_80031B84_32784]);
	func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, D_8005BB38);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
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
	gSPLookAt(D_8005BB2C++, &D_800D7920[D_80031B84_32784]);
	func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, D_8005BB38);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	gSPDisplayList(D_8005BB2C++, D_40519B0);

	func_80075C84_46134();
	gDPPipeSync(D_8005BB2C++);

	if (arg0 == 0) {
		D_80094860_64D10_W = D_80094860_64D10 + 1;
	}
}

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
// AI - Plays the comet-explosion end-game movie, then shows the credits and returns to the title screen.
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
// AI - Shows the end-game message then scrolls the credits; returns to the title screen.
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
s32 D_80094860_64D10 = 0;
u32 D_80094864_64D14 = 0;

// Intro movie event start frames
IntroStartFrames D_80094868_64D18 = {{
    0x00000000, 0x0000021C, 0x0000045B, 0x00000596, 0x000006E7, 0x000008B1,
    0x00000A87, 0x00000C03, 0x00000D89, 0x00000F87, 0x0000128E,
}};

IntroStopFrames D_80094894_64D44 = {{
    0x00000002, 0x000001C2, 0x000004E2, 0x0000064F, 0x000007D0, 0x00000997,
    0x00000BFE, 0x00000FD2,
}};


s32 func_800768C4_46D74(void) {
	static s32 movieFrame = 0;
	static s8 startIndex = 0;
	static s8 stopIndex = 0;
	s32 result;
	s32 fadeResult;
	s32 idx;
	IntroStartFrames timingA;
	s32 elapsedSeconds;
	IntroStopFrames timingB;
	OSMesgQueue *messageQueue = &D_8006A8B0;
	s32 framesPerSecond;

	result = 1;
	framesPerSecond = 60;

	timingA = D_80094868_64D18;
	timingB = D_80094894_64D44;

	D_80052ACA = 6;
	D_8004772C = 0xFF;
	D_80047730 = 0x40;
	D_80047734 = 0;
	D_80047738 = D_80047739 = D_8004773A = 0;
	D_800D74AA = 0;
	D_800D6D8C = 1;

	gDPSetAlphaDither(D_8005BB2C++, G_AD_NOISE);
	gDPSetColorDither(D_8005BB2C++, G_CD_BAYER);

	drawText(D_800ADC84_7E134, 0xE6, 0xE6, 0xE6, 0xFF);
	func_8007D7E0_4DC90();
	func_8007BFC4_4C474();

	do {
		if (result) {}
		func_800791A0_49650(1);

		gDPSetAlphaDither(D_8005BB2C++, G_AD_PATTERN);
		fadeResult = func_8007D91C_4DDCC(0);
		elapsedSeconds = D_800313D4_31FD4 / framesPerSecond;
		if (elapsedSeconds) {}

		func_8000B044_BC44();
		gDPFullSync(D_8005BB2C++);
		gSPEndDisplayList(D_8005BB2C++);

		osSendMesg(messageQueue, &D_800314CC_320CC, 1);

		idx = startIndex;
		if (movieFrame == timingA.frames[idx]) {
			func_8001322C_13E2C(startIndex++);
			D_800313E0++;
		}

		idx = stopIndex;
		if (movieFrame == timingB.frames[idx]) {
			func_800131A4_13DA4(stopIndex++);
			D_800313DC++;
		}

		movieFrame++;

		if ((isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A | BUTTON_START) != 0) || (fadeResult != 0)) {
			result = 2;
			func_80005AEC_66EC(0, 0, 0, 0x10);
		}
	} while (func_80005B30_6730() == 0);

	D_800313D8++;
	movieFrame = 0;
	D_80052ACA = 3;
	stopIndex = 0;
	startIndex = 0;

	func_800056A8_62A8();
	func_800056A8_62A8();
	func_80070940_40DF0();

	return result;
}

// Weapon/vehicle display list offsets
DListPtrsCopy D_800948C0_64D70 = {{
    0x040A32C0, 0x040A2850, 0x040A20A0, 0x040A1820,
    0x040A4348, 0x040A0F98, 0x040A09C0, 0x040A5248,
}};

u32 D_800948E0_64D90 = 0;
u32 D_800948E4_64D94 = 0x000000C8;
u32 D_800948E8_64D98 = 0x000000C8;
u32 D_800948EC_64D9C = 0;

u32 D_800948F0_64DA0 = 0;

u32 D_800948F4_64DA4 = 0;
u32 D_800948F8_64DA8 = 0;
u32 D_800948FC_64DAC = 0;

s32 D_80094900_64DB0 = 0;
u8 D_80094904_64DB4 = 0;
u8 D_80094908_64DB8 = 0x07;
u8 D_8009490C_64DBC = 0x07;

s32 D_80094910_64DC0[8] = { 1, 1, 2, 3, 4, 5, 6, 7 };

s32 D_80094930_64DE0 = 0;
s32 D_80094934_64DE4 = 0;
s32 D_80094938_64DE8 = 0;
u32 D_8009493C_64DEC = 0;
u32 D_80094940_64DF0 = 0x0E000000;

u8 D_80094944_64DF4 = 0xFF;
s32 D_80094948_64DF8 = 0;
u8 D_8009494C_64DFC = 0;

// Called once before showing the 'Select Slot' screen
// doFileSelectLoop
s16 func_80076C98_47148(void) {
	s32 selectedFile;
	u32 frameCounter;
	s32 saveFile;
	s32 terminal;
	u8 saveFileName[28];
	s32 result;
	s32 fade;
	s32 hasCorruptSave;

	D_800D74A6 = currentSaveFileIndex + 2;
	D_800D74A4 = D_800D74A6;
	frameCounter = 0;
	result = 1;
	hasCorruptSave = 0;
	if (result) {}
	func_8007166C_41B1C();

	D_800909B0[2].unk1C = 0;
	D_800909B0[3].unk1C = 0;
	D_800909B0[4].unk1C = 0;
	D_800909B0[D_800D74A4].unk1C = 1;

	if (D_80094900) { saveFile = 3; } else { saveFile = 3; }
	if (saveFile--) {
		do {
			D_800D6D90[saveFile] = func_80002A88_3688(saveFile);
			D_800D6D98[saveFile] = func_80002B20_3720(saveFile);
			getSaveFileName(saveFile, D_800D6DA8[saveFile]);
			if (D_800D6DA8[saveFile][1] != 'm') {
				hasCorruptSave = 1;
			}
		} while (saveFile--);
	}

	D_800909B0[4].unk25 = 5;
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

	selectedFile = D_800D74A4 - 2;
	if (selectedFile < 3) {
		currentSaveFileIndex = selectedFile;
	}

	func_800153D8_15FD8(0xC8);
	if (result == 0) {
		func_800709F0_40EA0();
		fade = 0xA0;
		terminal = -8;
		for (; terminal != fade; fade -= 8) {
			func_80075D58_46208(0);
			func_80075B64_46014(fade);
			func_800731A8_43658();
			func_8000B044_BC44();
			func_8000505C_5C5C();
		}
	} else {
		if ((D_800D74A4 - 1) >= 4) {
			return result;
		}
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

#ifdef VERSION_EU
s32 func_80076FD8_47488(void) {
	u32 frames = 0;
	s32 result = 1;
	s32 holdFrames = 0;

	if (D_800313D0_31FD0 == 2) {
		D_800D74A4 = 0x55;
	} else if (D_800313D0_31FD0 == 1) {
		D_800D74A4 = 0x57;
	} else {
		D_800D74A4 = 0x56;
	}
	D_800D74A6 = D_800D74A4;
	D_800909B0[D_800D74A4].unk1C = 1;
	func_800132CC_13ECC();
	do {
		if (frames < 0x3E8U) {
			func_80070C64_41114(0x55, 3, frames);
		}
		if (frames >= 0x21U) {
			func_80070CC4_41174();
			func_8007166C_41B1C();
			if (isButtonNewlyPressed(0, 0x9000) != 0 || holdFrames >= 0xBB8) {
				result = D_800D74A4 - 0x53;
				func_80005AEC_66EC(0, 0, 0, 0x40);
				func_800153D8_15FD8(0xC8);
			}
		}
		func_800791A0_49650(0);
		func_800731A8_43658();
		func_8000B044_BC44();
		func_80005B84_6784();
		func_8000505C_5C5C();
		if (frames < 0x3E8U) {
			frames += 1;
		}
		holdFrames += 1;
	} while (func_80005B30_6730() == 0);
	func_800709F0_40EA0();
	return (s16) result;
}
#else
s32 func_80076FD8_47488(void) {
	return 3;
}
#endif

/**
 * @brief Copies tiled framebuffer data from a strided source to a contiguous destination.
 */
void func_80076FE0_47490(s32 arg0, s32 arg1) {
	s32 *src;
	s32 *dst;
	s32 outer;

	src = (s32 *)arg0;
	dst = (s32 *)arg1;
	outer = 7;
	do {
		arg1 = 9;
		do {
			s32 inner;

			inner = 0x1F;
			do {
				s32 tile;

				tile = 0xF;
				do {
					arg0 = tile;
					*dst++ = *src++;
					tile -= 1;
				} while (arg0 != 0);
				arg0 = inner;
				src += 0x90;
				inner -= 1;
			} while (arg0 != 0);
			arg0 = arg1;
			src -= 0x13F0;
			arg1 -= 1;
		} while (arg0 != 0);
		arg0 = outer;
		src += 0x1360;
		outer -= 1;
	} while (arg0 != 0);
}

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

		func_80076FE0_47490(D_8005BB48[D_80031B84_32784 ^ 1], D_800AED88);
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
s32 func_80077494_47944(void) {
  u32 frameCounter;
  s32 i;
  s32 nameIndex;
  s32 foundSelectableFile;
  s32 state;
  s32 saveSlot;

  frameCounter = 0;
  state = 1;
  foundSelectableFile = 0;

  func_800708B8_40D68(1);
  func_800708B8_40D68(5);
  func_800708B8_40D68(6);
  func_80070514_409C4(0x33);

  currentSaveFileIndex = 0;
  i = currentSaveFileIndex;
  nameIndex = 0;
  if (i < 3) {
	do {
	  getSaveFileName(i, D_800D6DA8[nameIndex]);
	  saveSlot = i + 2;

	  if (D_800D6DA8[nameIndex][1] == 0x6D) {
		func_80070A8C_40F3C(saveSlot); // If the second letter of filename is "m" it cannot be copied or deleted
	  } else {
		func_80070B68_41018(saveSlot);
		if (foundSelectableFile == 0) {
		  frontendSelectedEntry = saveSlot;
		  foundSelectableFile = 1;
		}
	  }
	  i++;
	  nameIndex++;
	} while (i < 3);
  }

  func_8007166C_41B1C();
  D_800909B0[4].unk25 = 0;

  while (state == 1) {
	if (frameCounter >= 0x29U) {
	  func_80070CC4_41174();
	  func_8007166C_41B1C();

	  if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A | BUTTON_START) != 0) {
		if (D_800D6DA8[(0, frontendSelectedEntry - 2)][1] != 0x6D) {
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

  currentSaveFileIndex = frontendSelectedEntry - 2;
  if ((state != 0) && (func_80077204_476B4() == 2)) {
	D_800476A0 = 3;
  }

  func_8000AFDC_BBDC();
  func_800709F0_40EA0();
  func_800764B4_46964();

  return currentSaveFileIndex;
}

// doCopyFile
s32 func_800776BC_47B6C(void) {
  s32 *indexPointer = &currentSaveFileIndex;
  s32 nameIndex;
  s32 padding[4]; /* Preserve the original local stack area. */
  s32 saveSlotSp;
  s32 saveSlot;
  s32 i;
  s32 foundSelectableFile;
  s32 state;
  u32 frameCounter;

  frameCounter = 0;
  state = 1;
  foundSelectableFile = 0;

  func_800708B8_40D68(1);
  func_800708B8_40D68(5);
  func_800708B8_40D68(6);
  func_80070514_409C4(0x34);
  *indexPointer = 0;

  i = currentSaveFileIndex;
  nameIndex = 0;
  if (i < 3) {
	do {
	  getSaveFileName(i, D_800D6DA8[nameIndex]);
	  saveSlot = i + 2;
	  if (D_800D6DA8[nameIndex][1] == 0x6D) {
		func_80070A8C_40F3C(i + 2);
	  } else {
		saveSlotSp = saveSlot;
		func_80070B68_41018(saveSlot);
		if (foundSelectableFile == 0) {
		  frontendSelectedEntry = saveSlotSp;
		  foundSelectableFile = 1;
		}
	  }
	  i++;
	  nameIndex++;
	} while (i < 3);
  }

  func_8007166C_41B1C();
  D_800909B0[4].unk25 = 0;

  while (state == 1) {
	if (frameCounter >= 0x29U) {
	  func_80070CC4_41174();
	  func_8007166C_41B1C();

	  if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A | BUTTON_START) != 0) {
		D_80047F88 = frontendSelectedEntry - 2;
		if (D_800D6DA8[D_80047F88][1] != 0x6D) {
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
  }

  func_80070BD8_41088(2, 4);
  func_800153D8_15FD8(0xC8);
  func_80070A8C_40F3C(frontendSelectedEntry);

  if (frontendSelectedEntry == 2) {
	frontendSelectedEntry = 3;
  } else {
	frontendSelectedEntry = 2;
  }

  func_80070CC4_41174();
  if (state != 0) {
	state = 1;
	func_800708B8_40D68(0x34);
	func_80070514_409C4(0x35);

	do {
	  if (frameCounter >= 0x41U) {
		func_80070CC4_41174();
		func_8007166C_41B1C();

		if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A | BUTTON_START) != 0) {
		  D_80047F8C = frontendSelectedEntry - 2;
		  if ((0, D_80047F88) != D_80047F8C) {
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
	func_80002AB4(D_80047F84, D_800D6DA8[D_80047F84]);

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

s32 func_80077CE0_48190(s32 arg0) {
	u32 frameCounter;
	s32 state;
	s32 selectedSlot;

	if (arg0 != 0) {
		frameCounter = 0x11;
	} else {
		frameCounter = 0;
	}

	state = 1;
	selectedSlot = arg0 != 0 ? arg0 + 7 : 8;
	D_800D74A6 = selectedSlot;
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
	case 3:
		func_800153D8_15FD8(0xC8);
		func_80070940_40DF0();
		D_800476A0 = 1;
		break;
	case 0:
	case 2:
		func_800153D8_15FD8(0xC8);
		func_800709F0_40EA0();
		D_800476A0 = 1;
		break;
	case 4:
	case 5:
	case 6:
	case 7:
		func_800153D8_15FD8(0xCB);
		break;
	}

	return state;
}

s32 func_80077E78_48328(s32 arg0, s32 arg1) {
	return 0;
}

s32 func_80077E88_48338(void) {
	s32 selectedSlot;
	s32 state;
	u32 frameCounter;

	D_800D74A6 = 0xF;
	frameCounter = 0;
	state = 1;
	D_800D74A4 = D_800D74A6;
	osSyncPrintf(D_800ADCC4_7E174, D_80047FA0 + 0x10, 0x13);

	while (state == 1) {
		if (frameCounter < 0x3E8U) {
			func_80070C64_41114(0xE, 7, (s16) frameCounter);
		}

		func_80070BD8_41088(0xF, 0x14);

		if (D_80047FA0 > 0) {
			func_80070AEC_40F9C((s16) (D_80047FA0 + 0x10), 0x13);

#ifdef VERSION_EU
			if ((D_80052ACD & 0x80) != 0) {
				func_80070AEC_40F9C(0x12, 0x13);
			}
#endif

			if ((D_80048026 & 7) != 7
			    && ((D_80048026 & 0x38) != 0x38 || D_80047FA0 < 2)
			    && ((D_80048026 & 0x1C0) != 0x1C0 || D_80047FA0 < 3)
			    && ((D_80048026 & 0xE00) != 0xE00 || D_80047FA0 < 4)) {
				func_80070A8C_40F3C(0x14);
			}
		} else {
			func_80070AEC_40F9C((s16) (D_80047FA0 + 0x10), 0x14);
		}

		if (frameCounter >= 0x41U) {
			func_80070CC4_41174();
			func_8007166C_41B1C();

			if (isButtonNewlyPressed(0, 0x9000) != 0) {
				selectedSlot = D_800D74A4;
				if (D_800D74A4 == 0x14) {
					state = 3;
				} else {
					selectedSlot = D_800D74A4;
					func_800153D8_15FD8(0xC8);
					if (func_80077204_476B4() == 2) {
						D_80048030 = 0;
						D_800D74A6 = selectedSlot;
						state = 2;
						D_800D74A4 = D_800D74A6;
						currentLevel = D_800D74A4 - 0xE;
					} else {
						D_800D74A6 = 0xF;
						frameCounter = 0;
						D_800D74A4 = D_800D74A6;
						func_80070C64_41114(0xE, 7, 0);
					}
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

	if (state != 2) {
		func_800153D8_15FD8(0xC8);
	}

	func_8000AFDC_BBDC();
	func_800709F0_40EA0();
	return state;
}

s32 func_80078110_485C0(void) {
	s32 state;
	u32 frameCounter;
	s16 completionFlags;
	s32 firstGroupMask;
	s16 *completedFlags = &D_80048026;

	frameCounter = 0;
	state = 1;
	completionFlags = *completedFlags;

	if ((completionFlags & 0xE07) == 0xE07 && (completionFlags & 0x38) != 0x38 && (completionFlags & 0x1C0) != 0x1C0) {
		D_800909B0[80].unk25 = 0x53;
		D_800909B0[83].unk24 = 0x50;
	} else {
		D_800909B0[80].unk25 = 0x52;
		D_800909B0[83].unk24 = 0x51;
	}

	if ((completionFlags & 0x1F8) == 0x1F8 && (firstGroupMask = completionFlags & 7, firstGroupMask != 7) && ((completionFlags & 0xE00) != 0xE00 || D_80047FA0 < 4)) {
		D_800909B0[81].unk25 = 0x52;
		D_800909B0[82].unk24 = 0x51;
	} else {
		D_800909B0[81].unk25 = 0x53;
		D_800909B0[82].unk24 = 0x50;
		firstGroupMask = completionFlags & 7;
	}

	D_800D74A4 = 0x50;
	if (firstGroupMask != 7) {
		D_800D74A4++;
		if ((completionFlags & 0x38) != 0x38) {
			D_800D74A4++;
			if ((completionFlags & 0x1C0) != 0x1C0) {
				D_800D74A4++;
			}
		}
	}

	D_800D74A6 = D_800D74A4;
	D_800909B0[D_800D74A4].unk1C = 1;

	while (state == 1) {
		if (frameCounter < 0x3E8U) {
			func_80070C64_41114(0x4F, 6, frameCounter);
		}

		func_80070BD8_41088(0x50, 0x54);
		func_80070AEC_40F9C(D_80047FA0 + 0x50, 0x54);

		completionFlags = *completedFlags;
		if ((completionFlags & 7) != 7) {
			func_80070AEC_40F9C(0x50, 0x50);
			completionFlags = *completedFlags;
		}

		if ((completionFlags & 0x38) != 0x38) {
			func_80070AEC_40F9C(0x51, 0x51);
			completionFlags = *completedFlags;
		}

		if ((completionFlags & 0x1C0) != 0x1C0) {
			func_80070AEC_40F9C(0x52, 0x52);
			completionFlags = *completedFlags;
		}

		if ((completionFlags & 0xE00) != 0xE00) {
			func_80070AEC_40F9C(0x53, 0x53);
			completionFlags = *completedFlags;
		}

		if ((completionFlags & 0xFFF) != 0xFFF) {
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

// doChooseFileNameLoop
s32 func_80078424_488D4(void) {
	s32 state;
	u32 frameCounter;
	s32 changed;
	s16 nameLength;
	u8 backupName[6];
	s32 i;

	D_800D74A6 = 0x16;
	D_800D74A4 = D_800D74A6;
	frameCounter = 0;
	state = 1;
	nameLength = 0;

	i = 5; do {
		backupName[i] = D_80047FA8[i];
		D_80047FA8[i] = 0x20;
	} while (i--);

	func_80070514_409C4(0x15);
	D_800909B0[50].unk0 = 0xA0; D_800909B0[50].unk2 = 0x88;
	D_800909B0[50].unk4 = 0xD2; D_800909B0[50].unk6 = 0xC2;
	D_800909B0[50].unkC = 0x30;
	D_800909B0[50].unkA = 0;
	D_800909B0[50].unk10 = 0x23;
	D_800909B0[50].unkE = 0;
	func_80070514_409C4(0x32);
	func_80070BD8_41088(0x16, 0x2F);
	func_80070AEC_40F9C(0x30, 0x31);
	D_800909B0[22].unk1C = 1;

	while (state == 1) {
		MissionData *entry;

		changed = 0;

		if ((frameCounter < 0x1C) && ((frameCounter & 3) == 0)) {
			func_80070514_409C4((frameCounter >> 2) + 0x16);
			func_80070514_409C4(0x23 - (frameCounter >> 2));
			func_80070514_409C4((frameCounter >> 2) + 0x24);
			func_80070514_409C4(0x31 - (frameCounter >> 2));
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
						frontendFileNameWrite[--nameLength] = 0x20;
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
						frontendFileNameWrite[nameLength++] = D_800D74A4 + 0x2B;
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
			s16 textWidth;
			u8 typedName[7];

			i = 0;
			while ((i < 6) && (D_80047FA8[i] != 0x20)) {
				typedName[i] = D_80047FA8[i];
				i++;
			}
			typedName[i] = 0;
			textWidth = func_8000A2B8_AEB8(typedName, 0) + 0x30;
			D_800909B0[50].unk0 = D_800909B0[50].unk2;
			D_800909B0[50].unk4 = D_800909B0[50].unk6;
			D_800909B0[50].unkA = D_800909B0[50].unkC;
			D_800909B0[50].unkE = D_800909B0[50].unk10;
			D_800909B0[50].unk2 = 0xA0 - (textWidth >> 1);
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

// startFile (unused?)
// AI - Starts a new file at level 1 and enters the gameplay/frontend transition loop (func_80006DDC_79DC).
void func_800788E4_48D94(void) {
	currentLevel = 1;
	func_800050C4_5CC4();
	func_8000DC9C_E89C(D_8005BB48[D_80031B84_32784], D_8005BB48[D_80031B84_32784 ^ 1]);
	func_8000505C_5C5C();
	showDemoText = 0;
	D_800313C8_31FC8 = 1;
	func_80006DDC_79DC();
	D_800313C8_31FC8 = 0;
	func_80011D24_12924();
}

// Start saved game
// AI - Continues the saved game and enters the gameplay/frontend transition loop (func_80006DDC_79DC).
void func_80078968_48E18(void) {
	func_800050C4_5CC4();
	func_8000DC9C_E89C(D_8005BB48[D_80031B84_32784], D_8005BB48[D_80031B84_32784 ^ 1]);
	func_8000505C_5C5C();
	D_800313C8 = 1;
	func_80006DDC_79DC();
	D_800313C8 = 0;
	func_80011D24_12924();
	func_80070940_40DF0();
}

// Drives the frontend state machine, including file selection and gameplay transitions.
void func_800789E4_48E94(void) {
	s32 result;
	s16 fileSelectCycle;
	s16 optionArg;

	optionArg = 0;
	D_80052ACA = 3;
	gameplayMode = GAMEPLAY_MODE_FRONTEND;
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

	if (currentFrontendState != FE_STATE_PRESS_START) {
#ifdef VERSION_EU
		if (osTvType != 0)
#else
		if (osTvType == 0)
#endif
		{
			func_8007BD98_4C248();
		}
		if (D_80047584 == 0) {
			func_8007BC90_4C140();
		}
		func_8007B618_4BAC8();
		func_8007B900_4BDB0();
		func_8007BB0C_4BFBC();
		func_8007BEC0_4C370();
	}

	fileSelectCycle = 0;

	while (1) {
		gDPSetColorDither(D_8005BB2C++, G_CD_DISABLE);
		D_800476A2 = 1;

		switch (*(u16*)&currentFrontendState) {
			case FE_STATE_INTRO_MOVIE:
				result = func_800768C4_46D74();
				switch (result) {
					case 2:
						currentFrontendState = FE_STATE_PRESS_START;
						break;

					case 1:
						currentFrontendState = FE_STATE_INTRO_MOVIE;
						break;

				}
				break;

			case FE_STATE_PRESS_START:
				result = func_8007704C_474FC();
				switch (result) {
					case 2:
						currentLevel = LEVEL_GREECE;
						currentFrontendState = FE_STATE_FILE_SELECT;
						D_80048026 = 0;
						D_80048028 = 0;
						break;

					case 0:
						currentFrontendState = FE_STATE_INTRO_MOVIE;
						break;

					case 3:
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
						break;

				}
				break;

			case FE_STATE_FILE_SELECT:
				result = func_80076C98_47148();

				switch (result) {

					case 1:
						currentFrontendState = FE_STATE_CHOOSE_FILE_NAME;
						break;
					case 0:
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
				break;

			case FE_STATE_CHOOSE_FILE_NAME:
				result = func_80078424_488D4();
				switch (result) {
					case 2:
						currentFrontendState = FE_STATE_FILE_DETAILS;
						break;

					case 0:
						currentFrontendState = FE_STATE_FILE_SELECT;
						break;

				}
				break;

			case FE_STATE_FILE_DETAILS:
				optionArg = 0;
				result = func_800779FC_47EAC();
				switch (result) {
					case 2:
						currentFrontendState = FE_STATE_FILE_OPTIONS;
						break;

					case 3:
						currentFrontendState = FE_STATE_START_GAMEPLAY;
						break;

					case 4:
						currentFrontendState = FE_STATE_START_DEMO;
						break;

					case 0:
						currentFrontendState = FE_STATE_FILE_SELECT;
						break;

				}
				break;

			case FE_STATE_START_GAMEPLAY:
				showDemoText = 0;
				func_80078968_48E18();
				currentFrontendState = FE_STATE_PRESS_START;
				break;

			case FE_STATE_FILE_OPTIONS:
				result = func_80077CE0_48190(optionArg);

				switch (result) {

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

					case 0:
						currentFrontendState = FE_STATE_FILE_DETAILS;
						break;
				}
				break;

			case FE_STATE_START_DEMO:
				showDemoText = 1;
				currentLevel = LEVEL_GREECE;
				func_80007570_8170();
				D_80047F94 = 0;
				weaponSlots[0] = 2;
				D_80047F9C = 0;
				D_8004DC48.unk0 = 0;
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
				switch (result) {
					case 2:
						func_80007570_8170();
						currentFrontendState = FE_STATE_START_GAMEPLAY;
						break;

					case 3:
						currentFrontendState = FE_STATE_REPLAY_BOSS_SELECT;
						break;

					case 0:
						currentFrontendState = FE_STATE_FILE_OPTIONS;
						break;

				}
				break;

			case FE_STATE_REPLAY_BOSS_SELECT:
				optionArg = 0;
				result = func_80078110_485C0();
				switch (result) {
					case 2:
						func_80007570_8170();
						D_80047F9C = 5;
						D_80047F98 = D_8003E0EE_3ECEE[currentLevel];
						D_80047F94 = D_8003E0EE_3ECEE[currentLevel];
						if (currentLevel == LEVEL_COMET) {
							func_800072CC_7ECC(0x1FULL);
						}
						D_80052ACD |= 0x11;
						currentFrontendState = FE_STATE_START_GAMEPLAY;
						break;

					case 0:
						currentFrontendState = FE_STATE_REPLAY_LEVEL_SELECT;
						break;

				}
				break;

			case FE_STATE_CHANGE_AIM_OPTION:
				optionArg = 5;
				if (D_80031420_Options[0] & 4) {
					D_80031420_Options[0] &= ~4;
				} else {
					D_80031420_Options[0] |= 4;
				}
				currentFrontendState = FE_STATE_FILE_OPTIONS;
				break;

			case FE_STATE_CHANGE_SFX_OPTION:
				optionArg = 3;
				result = ((D_80031420_Options[0] & 0x60) >> 5) - 1;
				if (result < 0) {
					result = 3;
				}
				D_80031420_Options[0] &= ~0x60;
				D_80031420_Options[0] |= (result << 5);
				func_80016FD0_17BD0(result);
				currentFrontendState = FE_STATE_FILE_OPTIONS;
				break;

			case FE_STATE_CHANGE_MUSIC_OPTION:
				optionArg = 4;
				result = ((D_80031420_Options[0] & 0x18) >> 3) - 1;
				if (result < 0) {
					result = 3;
				}
				D_80031420_Options[0] &= ~0x18;
				D_80031420_Options[0] |= (result << 3);
				func_800170F4_17CF4(result);
				currentFrontendState = FE_STATE_FILE_OPTIONS;
				break;

			case FE_STATE_HIGH_SCORES:
				optionArg = 0;
				func_800796D0_49B80(0, 0);
				currentFrontendState = FE_STATE_PRESS_START;
				break;

			case FE_STATE_CHANGE_BLOOD_OPTION:
				optionArg = 6;
				result = (D_80031420_Options[0] & 3) - 1;
				if (result < 0) {
					if (D_800313D0_31FD0 == 2) {
						result = 1;
					} else {
						result = 3;
					}
				}
				if (result == 2) {
					result = 1;
				}
				D_80031420_Options[0] &= ~3;
				D_80031420_Options[0] |= result;
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
				switch (func_80076FD8_47488()) {
					case 2:
						D_800313D0_31FD0 = 2;
						currentFrontendState = FE_STATE_INTRO_MOVIE;
						break;
					case 0:
					case 3:
						D_800313D0_31FD0 = 0;
						currentFrontendState = FE_STATE_INTRO_MOVIE;
						break;
					case 4:
						D_800313D0_31FD0 = 1;
						currentFrontendState = FE_STATE_INTRO_MOVIE;
						break;
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

void func_800791A0_49650(s32 arg0) {
	f32 one;

	osRecvMesg(&D_8006A8D0, &D_80068038, OS_MESG_BLOCK);
	func_80011E14_12A14(0);
	func_80004CC8_58C8();
	func_80004D38_5938();

	gSPDisplayList(D_8005BB2C++, K0_TO_PHYS(D_800311A8));
	func_80004F64_5B64();
	gDPSetColorImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, K0_TO_PHYS(D_8005BB48[D_80031B84_32784]));
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

	gSPDisplayList(D_8005BB2C++, K0_TO_PHYS(D_800311D0));
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

void func_8007949C_4994C(s32 arg0, u16 arg1) {
	s32 i;
	s32 j;
	s32 k;

	for (i = 0; i < 5; i++) {
		if (D_80047FB8[i].score < arg0) {
			for (j = 4; j > i; j--) {
				for (k = 0; k != 6; k++) {
					D_80047FB8[j].name[k] = D_80047FB8[j - 1].name[k];
				}
				D_80047FB8[j].score = D_80047FB8[j - 1].score;
				D_80047FB8[j].humansKilled = D_80047FB8[j - 1].humansKilled;
				D_80047FB8[j].secondsTaken = D_80047FB8[j - 1].secondsTaken;
			}

			j = 0;
			do {
				D_80047FB8[i].name[j] = D_80047FA8[j];
				j++;
			} while (&D_80047FA8[j] < &D_80047FAE_NameEnd);

			D_80047FB8[i].score = arg0;
			D_80047FB8[i].humansKilled = 0;
			D_80047FB8[i].secondsTaken = 0;
			j = 0;
			do {
				D_80047FB8[i].secondsTaken += D_80052A98[j].secondsElapsed;
				D_80047FB8[i].humansKilled += D_80052A98[j].humansKilled;
				j++;
			} while (j < 6);
			i = 5;
		}
	}
}

// displayHighScores
void func_800796D0_49B80(s32 arg0, u16 arg1) {
	s16 shouldExit;
	s16 i;
	s16 timer;
	s32 t;
	s32 fade;
	u32 minutes;
	u32 seconds;
	u32 centiseconds;
	SaveSummary* entry;

	shouldExit = 0;
	timer = 0;

	func_8007949C_4994C(arg0, arg1);
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
		case 0:
		default:
			drawText(&D_800ADCE8_7E198, 0x80, 0);
			break;
		case 2:
			drawText(&D_800ADCF8_7E1A8, 0x80, 0);
			break;
		case 1:
			drawText(&D_800ADD08_7E1B8, 0x80, 0);
			break;
		}

		drawText(&D_800ADD18_7E1C8, 0x14, 0x32, 0x12C, 0xFA);

		for (i = 0; i < 5; i++) {
			if (timer < (i * 250 + 0x14)) {
				continue;
			}
			if ((i != 4) && (timer >= (i * 250 + 0x10E))) {
				continue;
			}

			fade = (timer - i * 250) - 0x14;
			if (fade < 0x1F) {
				continue;
			}

			fade -= 0x32;

			if (i != 4) {
				t = MIN(0x12C, MAX(0, (fade * 6) - 0x384));

				drawText(&D_800ADD1C_7E1CC, t);
				drawText(&D_800ADD20_7E1D0, (s32)(255.0f - (((f32)t / 300.0f) * 255.0f)));
			}

			drawText(&D_800ADD24_7E1D4, 0x80, 2, D_80031538_32138[4 - i]);

			if (fade >= 0x10) {
				if (i == 4) {
					func_8000577C_637C();
				} else {
					drawText(&D_800ADD2C_7E1DC, 0, 0xFF, 0);
				}

				drawText(&D_800ADD30_7E1E0, 0x800);

				entry = &D_80047FB8[4 - i];
				t = 6 - func_8007946C_4991C(entry->name);
				t /= 2;
				drawText(&D_800ADD34_7E1E4, t + 4, 3, entry->name);
				drawText(&D_800ADD3C_7E1EC, 0x400);
			}

			t = MIN(0x280, MAX(0, (fade << 4) - 0x1E0));

			entry = &D_80047FB8[4 - i];
			drawText(&D_800ADD40_7E1F0, t);

			switch (D_800313D0_31FD0) {
			case 0:
			default:
				drawText(&D_800ADD44_7E1F4, -0x10, 4);
				break;
			case 2:
				drawText(&D_800ADD50_7E200, -0x10, 4);
				break;
			case 1:
				drawText(&D_800ADD5C_7E20C, -0x10, 4);
				break;
			}

			drawText(&D_800ADD68_7E218, -t);
			drawText(&D_800ADD6C_7E21C, 0x30, 4, entry->score);

			t = MIN(0x280, MAX(0, (fade << 4) - 0x2D0));

			drawText(&D_800ADD74_7E224, t);

			switch (D_800313D0_31FD0) {
			case 0:
			default:
				drawText(&D_800ADD78_7E228, -0x10, 5);
				break;
			case 2:
				drawText(&D_800ADD8C_7E23C, -0x10, 5);
				break;
			case 1:
				drawText(&D_800ADD98_7E248, -0x10, 5);
				break;
			}

			drawText(&D_800ADDA8_7E258, -t);
			drawText(&D_800ADDAC_7E25C, 0x30, 5, entry->humansKilled);

			t = MIN(0x280, MAX(0, (fade << 4) - 0x3C0));

			centiseconds = entry->secondsTaken;
			minutes = (centiseconds / 60) / 60;
			seconds = (centiseconds / 60) % 60;
			centiseconds %= 60;

			if (minutes >= 100) {
				minutes = 99;
				seconds = 59;
				centiseconds = 59;
			}

			drawText(&D_800ADDB4_7E264, t);

			switch (D_800313D0_31FD0) {
			case 0:
			default:
				drawText(&D_800ADDB8_7E268, -0x10, 6);
				break;
			case 2:
				drawText(&D_800ADDC0_7E270, -0x10, 6);
				break;
			case 1:
				drawText(&D_800ADDC8_7E278, -0x10, 6);
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

void func_80079F30_4A3E0(u8 arg0) {
	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0xFF, 0xFF, arg0);
	gDPPipeSync(D_8005BB2C++);
	gDPFillRectangle(D_8005BB2C++, 0, 0, 320, 240);
}

// displayGameOver
void func_8007A038_4A4E8(void) {
	s32 timer;
	s32 fade;
	s32 i;
	s32 blend;
	LookAt lookAt;
	DListPtrsCopy dlistPtrs;
	Unk80052B40 rot;
	Unk80052B40 trans;
	Unk80052B40 scale;
	s16 intensity;

	dlistPtrs = D_800948C0_64D70;

	if (showDemoText != 0) {
		return;
	}

	func_800050C4_5CC4();
	func_8000DC9C_E89C(D_8005BB48[D_80031B84_32784], D_8005BB48[D_80031B84_32784 ^ 1]);
	osSetTime(0x140, 0xF0);
	func_8000DC30_E830((s32)D_80267080, (s32)&D_802B2080);
	func_8000505C_5C5C();
	func_800137AC_143AC();

	fade = 0;
	D_80052ACC = 1;

	for (timer = 0x1F4; timer-- + D_80094900 * 0; ) {
		fade += 2;
		osRecvMesg(&D_8006A8D0, &D_80068038, 1);
		func_80011E14_12A14(0);
		func_80004CC8_58C8();
		func_80004D38_5938();
		func_80004F64_5B64();
		func_80004DDC_59DC(0, 0, 0, 0, 0xEF);

		gDPSetColorImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, K0_TO_PHYS(D_8005BB48[D_80031B84_32784]));
		func_80005C5C_685C((u8 *)&D_802B2080, 0, 2, 0x10, 0, 0, 0x140, 0xE0, 1.0f, 1.0f, 0);

		if (fade < 0x7F) {
			gDPSetColorImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, K0_TO_PHYS(D_8005BB48[D_80031B84_32784]));
			func_80005844_6444(0, 0, 0, fade * 2);
		} else {
			gDPSetColorImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, K0_TO_PHYS(D_8005BB48[D_80031B84_32784]));
			func_80005844_6444(0, 0, 0, 0xFF);
		}

		gDPPipeSync(D_8005BB2C++);
		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
		gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
		gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
		gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK | G_LIGHTING);

		guOrtho(D_8005BB38, -320.0f, 320.0f, -240.0f, 240.0f, -1.0f, 1000.0f, 1.0f);
		gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
		gSPPerspNormalize(D_8005BB2C++, 0xFFFF);

		guLookAtReflect(D_8005BB38, &lookAt, 0.0f, 0.0f, 100.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
		gSPLookAt(D_8005BB2C++, &lookAt);
		gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
		gSPMatrix(D_8005BB2C++, K0_TO_PHYS(&D_80031120_31D20), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

		for (i = 0; i < 8; i++) {
			s32 alphaStep = fade - i * 0x10;

			if (i >= 4) {
				alphaStep -= 0x20;
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
			gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

			rot.unk0 = ((i & 3) * 0x6C) - 0xA2;
			rot.unk2 = 0x36 - ((i >> 2) * 0x6C);
			rot.unk4 = 0x32;
			func_800039D0_45D0(&rot, 0, 0, D_8005BB38);
			gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);

			blend = (alphaStep << 10) & 0xFFFF;
			if (intensity == 0x100) {
				blend = 0;
			}

			trans.unk0 = blend;
			trans.unk2 = 0;
			trans.unk4 = 0;
			func_800039D0_45D0(0, &trans, 0, D_8005BB38);
			gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);

			gSPDisplayList(D_8005BB2C++, dlistPtrs.words[i]);
			gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
		}

		func_8000505C_5C5C();
		if (isButtonNewlyPressed(0, 0xD000) != 0) {
			break;
		}

	}

	D_80052ACC = 0;
	func_800056A8_62A8();
	func_800056A8_62A8();
}

void func_8007A754_4AC04(void) {
	func_8007C7F4_4CCA4();
}

void func_8007A774_4AC24(s32 arg0) {
	u16 perspNorm;
	s16 cameraPulse;
	s16 blend;
	s16 posZ;
	s16 rotZ;
	s16 rotX;
	s16 posX;
	s16 posY;
	s16 rotY;
	s16 phase;
	s32 isAnimated;

	phase = D_800D7962;

	isAnimated = 0;
	rotX = 0x154;
	posZ = 0;
	rotZ = 0;
	cameraPulse = 0;
	blend = 0;
	posX = 0x50;
	posY = 0x2A8;
	rotY = 0x1E0;
	D_80052A8C++;

	switch (phase - 5) {
	case 0:
		rotY = D_800D7960 * 480 / 120;
		if (D_800D7960++ >= 121) {
			D_800D7962 = phase + 1;
			D_800D7960 = 0;
		}
		break;

	case 1:
		if (D_800D7960++ >= 71) {
			D_800D7960 = 0;
			D_800D7962 = phase + 1;
		}
		break;

	case 2:
		blend = (-100 * D_800D7960);
		if (D_800D7960++ >= 101) {
			D_800D7960 = 0;
			D_800D7962 = phase + 1;
		}
		break;

	case 3:
		blend = D_800D7960 * 500 - 10000;
		rotX = (340.0 - (D_800D7960 * 19.25));
		posX = ((D_800D7960 * 8.5) + 80.0);
		posY = (680.0 - (D_800D7960 * 28.5));
		if (D_800D7960++ >= 21) {
			D_800D7960 = 0;
			D_800D7962 = phase + 1;
		}
		break;

	case 4:
		posZ = -D_800D7960 * 300;
		rotX = -0x2D;
		posX = (250 - D_800D7960);
		posY = D_800D7960 * 1.8 + 110.0;
		if (D_800D7960++ >= 51) {
			D_800D7960 = 0;
			D_800D7962 = phase + 1;
		}
		break;

	case 5:
		isAnimated = 1;
		rotX = -0x2D;
		posZ = -15000;
		rotZ = -D_800D7960 * 3;
		posX = 200;
		posY = 200;
		if (D_800D7960++ >= 301) {
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

	guPerspective(D_8005BB38, &perspNorm, 73.0f, 1.25f, 150.0f, 1500.0f, 1.0f);

	gSPPerspNormalize(D_8005BB2C++, perspNorm);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

	guLookAt(D_8005BB38, 0.0f, 120.0f, 300.0f, 0.0f, 85.0f, 0.0f, 0.0f, 1.0f, 0.0f);

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_TEXTURE_ENABLE | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH | G_CLIPPING | 0xFF60CDF8);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_LIGHTING | G_SHADING_SMOOTH);
	gSPClipRatio(D_8005BB2C++, FRUSTRATIO_4);
	gDPPipeSync(D_8005BB2C++);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPPipeSync(D_8005BB2C++);
	gDPPipeSync(D_8005BB2C++);
	gSPSetLights1(D_8005BB2C++, D_800942B8_64768);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_TEXTURE_ENABLE | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH | G_CLIPPING | 0xFF60CDF8);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_LIGHTING | G_SHADING_SMOOTH);

	D_80052B40.unk0 = rotZ;
	if (isAnimated == 1) {
		D_80052B40.unk2 = ((((f32)coss((D_80052A8C * 2000)) / 32768.0) * 8.0) + 40.0);
	} else {
		D_80052B40.unk2 = 0x28;
	}

	D_80052B40.unk4 = 0;
	D_80052B48.unk0 = (-0x898 - (posZ / 3));
	D_80052B48.unk2 = posZ;
	D_80052B48.unk4 = 0x3DB8;
	D_80052B50.unk0 = rotY;
	D_80052B50.unk2 = rotY;
	D_80052B50.unk4 = rotY;

	func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, D_8005BB38);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	if (isAnimated == 1) {
		D_80052B48.unk0 = (((f32)coss((D_80052A8C * 1000)) / 32768.0) * 1200.0);
	} else {
		D_80052B48_Reset.unk0 = 0;
	}

	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = blend / 5;
	D_80052B40.unk0 = 0;
	D_80052B40.unk2 = 0;
	D_80052B40.unk4 = 0;

	func_800039D0_45D0(&D_80052B40, &D_80052B48, 0, D_8005BB38);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

	gSPDisplayList(D_8005BB2C++, D_040A6650);

	D_80052B40.unk0 = 0;
	D_80052B40.unk2 = 0x30;
	D_80052B40.unk4 = 0;
	if (isAnimated == 1) {
		cameraPulse = (((f32)coss((D_80052A8C * 2000)) / 32768.0) * 2000.0);
		blend = (((f32)sins((D_80052A8C * 1000)) / 32768.0) * 1000.0);
	}

	D_80052B48.unk0 = cameraPulse;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = blend;
	func_800039D0_45D0(&D_80052B40, &D_80052B48, 0, D_8005BB38);

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);

	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

	D_80052B40.unk0 = 0;
	D_80052B40.unk2 = -8;
	D_80052B40.unk4 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;

	if (isAnimated == 1) {
		D_80052B48.unk0 = (((f32)coss((D_80052A8C * 2000)) / 32768.0) * 2000.0);
	} else {
		D_80052B48.unk0 = 0;
	}

	func_800039D0_45D0(&D_80052B40, &D_80052B48, 0, D_8005BB38);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);

	D_80052B40.unk0 = rotZ;
	D_80052B40.unk2 = rotX;
	D_80052B40.unk4 = 0;

	if (isAnimated == 1) {
		D_80052B50.unk0 = (200.0 - (((f32)sins((D_80052A8C * 2000)) / 32768.0) * 20.0));
		D_80052B50.unk2 = (200.0 + (((f32)sins((D_80052A8C * 2000)) / 32768.0) * 20.0));
		D_80052B50.unk4 = (200.0 - (((f32)sins((D_80052A8C * 2000)) / 32768.0) * 20.0));
	} else {
		D_80052B50.unk0 = posX;
		D_80052B50.unk2 = posY;
		D_80052B50.unk4 = posX;
	}

	func_800039D0_45D0(&D_80052B40, 0, &D_80052B50, D_8005BB38);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	gSPDisplayList(D_8005BB2C++, D_040A8F70);

	gDPPipeSync(D_8005BB2C++);

	if (arg0 == 0) {
		D_800948E0_Write = D_800948E0_64D90 + 1;
	}
}

// displayClearSaveData
void func_8007B618_4BAC8(void) {
	s32 pad0;
	s32 pad1;
	u8 sp3D;
	volatile u8 sp3E;
	u16 tempOsc;
	s32 selection;
	u8 oscillation;
	u16 startReleased;
	s32 timer;
	int one;

	timer = 0x4F;
	tempOsc = D_80094900 * 0;
	startReleased = 0;
	func_800791A0_49650(1);
	gDPFullSync(D_8005BB2C++);
	gSPEndDisplayList(D_8005BB2C++);
	func_8000505C_5C5C();

	if (isButtonNewlyPressed(0, 0x1000) != 0) { selection = tempOsc; one = (int)(selection * 0) + 1; sp3D = sp3E; oscillation = sp3D; if (oscillation) {} do { func_800791A0_49650(one);
			if (&D_8005BB2C) {} tempOsc = oscillation;
			oscillation = (u8)(((s32)tempOsc + 2) % 64);
			drawText(&D_800ADE4C_7E2FC, 0x82, 0xF0, 0x64);
			drawText(&D_800ADE50_7E300, 0x80, 0);
			drawText(&D_800ADE64_7E314, 0x64, 0xB4, 0x3C);
			drawText(&D_800ADE68_7E318, 0x80, 3);
			drawText(&D_800ADE80_7E330, 0x80, 4);

			if (one == selection) {
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
				selection = selection * 0 + 1;
			}

			if ((one == selection) && (currentControllerStates[0].stick_x >= 0xB)) {
				selection = 0;
			}

			if (isButtonNewlyPressed(0, 0x1000) == 0) {
				startReleased = 1;
			}

			if (isButtonNewlyPressed(0, 0x9000) != 0) {
				if (one == startReleased) {
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
		if (one == selection) {
			D_800476A0 = 4;
		}
	}
}

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
#ifndef VERSION_EU
		drawText(&D_800ADF9C_7E44C, 128, 7);
#endif
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
// The four values that place the publisher logo; PAL's picture is taller.
#ifdef VERSION_EU
#define PUBLISHER_LOGO_RECT 116, 58, 96, 128
#else
#define PUBLISHER_LOGO_RECT 24, 80, 288, 96
#endif
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
		func_80005C5C_685C(D_040AAE40, 2, 1, 8, PUBLISHER_LOGO_RECT, 1.0f, 1.0f, D_040B1A40);

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

void func_8007BFC4_4C474(void) {
	s16 lineCount;
	s16 currentLine;
	u16 fadeCounter;
	s16 startIndex;
	s16 holdCounter;
	u8* lineText;
	u8 textBuffer[52];
	s16 lineOffsets[100];

	fadeCounter = 0x4F;
	holdCounter = 0;
	startIndex = 4;
	lineOffsets[0] = 0;
	lineCount = 1;

	switch (D_800313D0_31FD0) {
	case 0:
	default:
		for (currentLine = 0; currentLine < 0x400U; currentLine++) {
			if ((D_800933A0_63850[currentLine] == 0x40) || (D_800933A0_63850[currentLine] == 0x3B)) {
				if (D_800933A0_63850[currentLine] == 0x40) {
					lineOffsets[lineCount++] = currentLine;
				}
				lineOffsets[lineCount++] = currentLine + 1;
			}
		}
		break;
	case 1:
		for (currentLine = 0; currentLine < 0x400U; currentLine++) {
			if ((D_800938A0_63D50[currentLine] == 0x40) || (D_800938A0_63D50[currentLine] == 0x3B)) {
				if (D_800938A0_63D50[currentLine] == 0x40) {
					lineOffsets[lineCount++] = currentLine;
				}
				lineOffsets[lineCount++] = currentLine + 1;
			}
		}
		break;
	case 2:
		for (currentLine = 0; currentLine < 0x400U; currentLine++) {
			if ((D_80093DA0_64250[currentLine] == 0x40) || (D_80093DA0_64250[currentLine] == 0x3B)) {
				if (D_80093DA0_64250[currentLine] == 0x40) {
					lineOffsets[lineCount++] = currentLine;
				}
				lineOffsets[lineCount++] = currentLine + 1;
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
		} else {
			if (startIndex < 0x59) {
				drawText(&D_800AE050_7E500, fadeCounter);
			}
		}

		do {
			if (currentLine > 0) {
				if (currentLine < 3) {
					drawText(&D_800AE054_7E504, 0xB4, 0xD7, 0xFE);
				} else {
					drawText(&D_800AE058_7E508, 0xEB, 0xE1, 0xFE);
				}

					drawText(&D_800AE05C_7E50C, 0xFF);
				if (((0xC - startIndex) + currentLine) == 8) {
					drawText(&D_800AE060_7E510, 0xFF - (fadeCounter * 3));
				}
				if (((0xC - startIndex) + currentLine) == 0) {
					drawText(&D_800AE064_7E514, fadeCounter * 3);
				}
			}
			if (((0xC - startIndex) + currentLine) < 9) {
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

				if (*lineText == 0x40) {
					textBuffer[0] = 0;
				} else {
					lineCount = 0;
					while ((*lineText != 0x40) && (*lineText != 0x3B)) {
						textBuffer[lineCount++] = *lineText++;
					}
					textBuffer[lineCount] = 0;
				}

				drawText(&D_800AE068_7E518, 0x80, ((0xC - startIndex) + currentLine), textBuffer);
			}

		} while ((--currentLine > 0) && ((startIndex - 0xD) < currentLine));

		func_8000B044_BC44();
		if ((holdCounter == 0x12C) || (isButtonNewlyPressed(0, BUTTON_A | BUTTON_START) != 0)) {
			func_80005AEC_66EC(0, 0, 0, 0x40);
		}

		fadeCounter--;
		func_80005B84_6784();
		gDPFullSync(D_8005BB2C++);
		gSPEndDisplayList(D_8005BB2C++);
		func_8000505C_5C5C();
	} while (func_80005B30_6730() == 0);
}

void func_8007C4BC_4C96C(void) {
	u16 fadeCounter;
	s16 foundCount;
	s16 startIndex;
	s16 i;
	s32 line;
	s32 row;
	s32 ch;

	fadeCounter = 0x4F;
	foundCount = 0;
	startIndex = 4;

	do {
		func_800791A0_49650(0);
		func_8000AFDC_BBDC();

		ch = D_800944E8_64998[startIndex + D_80047710][0];
		if (ch == 0x23) {
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

		do {
			if (i > 0) {
				if (D_800944E8_64998[i - 1][0] == 0) {
					drawText(&D_800AE078_7E528, 0xAA, 0xAA, 0xEB);
				} else {
					drawText(&D_800AE07C_7E52C, 0x6E, 0x6E, 0xAA);
				}

				drawText(&D_800AE080_7E530, 0xFF);
				row = (line + 0) + i;

				if (foundCount == 0) {
					if (row == 8) {
						drawText(&D_800AE084_7E534, 0xFF - (fadeCounter * 3));
					}
					if (row == 0) {
						drawText(&D_800AE088_7E538, fadeCounter * 3);
					}
				}

			}
			row = (line + 0) + i;
			if (row < 9) {
				drawText(&D_800AE08C_7E53C, 0x80, row, D_800944E8_64998[i]);
			}

			i--;
		} while ((i > 0) && ((startIndex - 0xD) < i));

		func_8000B044_BC44();
		if (foundCount == 0x190) {
			func_80005AEC_66EC(0, 0, 0, 0x40);
		}

		if (foundCount == 0) {
			fadeCounter--;
		}

		func_80005B84_6784();
		gDPFullSync(D_8005BB2C++);
		gSPEndDisplayList(D_8005BB2C++);
		func_8000505C_5C5C();
	} while (func_80005B30_6730() == 0);
}

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

// AI - Shows the end-of-game summary screen (total score, time, humans) then returns to press-start.
void func_8007C7F4_4CCA4(void) {
	s16 level;
	u16 fadeTimer;
	s32 timer;
	s32 score;
	s32 humans;
	u32 totalSeconds;
	u32 minutes;
	u32 seconds;
	u32 hours;
	u32 totalMinutes;

	D_80047FA0 = 5;
	D_800946DC_64B8C = FE_STATE_PRESS_START;
	D_80052A98[4].score = D_80052B2C->unk30;
	D_80052A98[4].humansKilled = 0;

	fadeTimer = 0;
	score = 0;
	humans = 0;
	totalSeconds = 0;
	D_80052A98[4].secondsElapsed = D_80052A90 / 1000U;

	level = 0;
	do {
		score += D_80052A98[level].score;
		totalSeconds += D_80052A98[level].secondsElapsed;
		humans += D_80052A98[level].humansKilled;
		level += 1;
	} while (level < 6);

	totalMinutes = totalSeconds / 60U;
	minutes = totalMinutes % 60U;
	hours = totalMinutes / 60U;
	seconds = totalSeconds % 60U;

	timer = fadeTimer;
	do {
		func_80075D58_46208(0);
		if (timer < 10) {
			func_80075B64_46014((s16)(timer * 16));
		} else {
			func_80075B64_46014(0xAA);
		}

		func_8000AFDC_BBDC();
		func_8007C764_4CC14(0x19, fadeTimer);
		func_8000577C_637C();

		switch (D_800313D0_31FD0) {
			case 0:
			default:
#ifdef VERSION_EU
				if ((D_80052ACD & 0x80) != 0) {
					drawText(&D_800AE810_7ECC0, 0x80, 0);
					func_8007C764_4CC14(0x3C, fadeTimer);
					drawText(&D_800AE828_7ECD8, 0xC8, 0xC8, 0xFE);
					drawText(&D_800AE82C_7ECDC, 0x80, 1);
					func_8007C764_4CC14(0x46, fadeTimer);
					drawText(&D_800AE850_7ED00, 0x80, 2);
					func_8007C764_4CC14(0x50, fadeTimer);
					drawText(&eu_D_800AE870_7ED20, 0x80, 3);
					func_8007C764_4CC14(0x5A, fadeTimer);
					drawText(&D_800AE894_7ED44, 0x80, 4);
					func_8007C764_4CC14(0x82, fadeTimer);
					drawText(&eu_D_800AE8B0_7ED60, 0x80, 6, score);
					func_8007C764_4CC14(0x96, fadeTimer);

					if (minutes < 10U && seconds < 10U) {
						drawText(&D_800AE8C0_7ED70, 0x80, 7, hours, minutes, seconds);
					} else if (minutes < 10U) {
						drawText(&D_800AE8DC_7ED8C, 0x80, 7, hours, minutes, seconds);
					} else if (seconds < 10U) {
						drawText(&D_800AE8F8_7EDA8, 0x80, 7, hours, minutes, seconds);
					} else {
						drawText(&D_800AE914_7EDC4, 0x80, 7, hours, minutes, seconds);
					}

					func_8007C764_4CC14(0xAA, fadeTimer);
					drawText(&D_800AE930_7EDE0, 0xAA, 0xAA, 0xE0);
					drawText(&D_800AE934_7EDE4, 0x80, 8, humans);
				} else {
#endif
				drawText(&D_800AE0A0_7E550, 0x80, 0);
				func_8007C764_4CC14(0x3C, fadeTimer);
				drawText(&D_800AE0B8_7E568, 0xC8, 0xC8, 0xFE);
				drawText(&D_800AE0BC_7E56C, 0x80, 1);
				func_8007C764_4CC14(0x46, fadeTimer);
				drawText(&D_800AE0E0_7E590, 0x80, 2);
				func_8007C764_4CC14(0x50, fadeTimer);
				drawText(&D_800AE108_7E5B8, 0x80, 3);
				func_8007C764_4CC14(0x78, fadeTimer);
				drawText(&D_800AE118_7E5C8, 0x80, 5, score);
				func_8007C764_4CC14(0x8C, fadeTimer);

				if (minutes < 10U && seconds < 10U) {
					drawText(&D_800AE128_7E5D8, 0x80, 6, hours, minutes, seconds);
				} else if (minutes < 10U) {
					drawText(&D_800AE144_7E5F4, 0x80, 6, hours, minutes, seconds);
				} else if (seconds < 10U) {
					drawText(&D_800AE160_7E610, 0x80, 6, hours, minutes, seconds);
				} else {
					drawText(&D_800AE17C_7E62C, 0x80, 6, hours, minutes, seconds);
				}

				func_8007C764_4CC14(0xA0, fadeTimer);
				drawText(&D_800AE198_7E648, 0xAA, 0xAA, 0xE0);
				drawText(&D_800AE19C_7E64C, 0x80, 7, humans);
				func_8007C764_4CC14(0xB4, fadeTimer);
				drawText(&D_800AE1B0_7E660, 0x80, 8, D_8004DC5E);
#ifdef VERSION_EU
				}
#endif
				break;

			case 1:
#ifdef VERSION_EU
				if ((D_80052ACD & 0x80) != 0) {
					drawText(&eu_D_800AEA70_7EF20, 0x80, 0);
					func_8007C764_4CC14(0x3C, fadeTimer);
					drawText(&eu_D_800AEA8C_7EF3C, 0xC8, 0xC8, 0xFE);
					drawText(&D_800AEA90_7EF40, 0x80, 1);
					func_8007C764_4CC14(0x46, fadeTimer);
					drawText(&D_800AEAB4_7EF64, 0x80, 2);
					func_8007C764_4CC14(0x50, fadeTimer);
					drawText(&eu_D_800AEAD8_7EF88, 0x80, 3);
					func_8007C764_4CC14(0x5A, fadeTimer);
					drawText(&D_800AEAFC_7EFAC, 0x80, 4);
					func_8007C764_4CC14(0x82, fadeTimer);
					drawText(&D_800AEB18_7EFC8, 0x80, 6, score);
					func_8007C764_4CC14(0x96, fadeTimer);

					if (minutes < 10U && seconds < 10U) {
						drawText(&D_800AEB28_7EFD8, 0x80, 7, hours, minutes, seconds);
					} else if (minutes < 10U) {
						drawText(&D_800AEB48_7EFF8, 0x80, 7, hours, minutes, seconds);
					} else if (seconds < 10U) {
						drawText(&eu_D_800AEB68_7F018, 0x80, 7, hours, minutes, seconds);
					} else {
						drawText(&D_800AEB88_7F038, 0x80, 7, hours, minutes, seconds);
					}

					func_8007C764_4CC14(0xAA, fadeTimer);
					drawText(&eu_D_800AEBA4_7F054, 0xAA, 0xAA, 0xE0);
					drawText(&D_800AEBA8_7F058, 0x80, 8, humans);
				} else {
#endif
				drawText(&D_800AE1C8_7E678, 0x80, 0);
				func_8007C764_4CC14(0x3C, fadeTimer);
				drawText(&D_800AE1E0_7E690, 0xC8, 0xC8, 0xFE);
				drawText(&D_800AE1E4_7E694, 0x80, 1);
				func_8007C764_4CC14(0x46, fadeTimer);
				drawText(&D_800AE208_7E6B8, 0x80, 2);
				func_8007C764_4CC14(0x50, fadeTimer);
				drawText(&D_800AE224_7E6D4, 0x80, 3);
				func_8007C764_4CC14(0x78, fadeTimer);
				drawText(&D_800AE240_7E6F0, 0x80, 5, score);
				func_8007C764_4CC14(0x8C, fadeTimer);

				if (minutes < 10U && seconds < 10U) {
					drawText(&D_800AE250_7E700, 0x80, 6, hours, minutes, seconds);
				} else if (minutes < 10U) {
					drawText(&D_800AE270_7E720, 0x80, 6, hours, minutes, seconds);
				} else if (seconds < 10U) {
					drawText(&D_800AE290_7E740, 0x80, 6, hours, minutes, seconds);
				} else {
					drawText(&D_800AE2B0_7E760, 0x80, 6, hours, minutes, seconds);
				}

				func_8007C764_4CC14(0xA0, fadeTimer);
				drawText(&D_800AE2CC_7E77C, 0xAA, 0xAA, 0xE0);
				drawText(&D_800AE2D0_7E780, 0x80, 7, humans);
				func_8007C764_4CC14(0xB4, fadeTimer);
				drawText(&D_800AE2E8_7E798, 0x80, 8, D_8004DC5E);
#ifdef VERSION_EU
				}
#endif
				break;

			case 2:
#ifdef VERSION_EU
				if ((D_80052ACD & 0x80) != 0) {
					drawText(&D_800AECF8_7F1A8, 0x80, 0);
					func_8007C764_4CC14(0x3C, fadeTimer);
					drawText(&D_800AED10_7F1C0, 0xC8, 0xC8, 0xFE);
					drawText(&D_800AED14_7F1C4, 0x80, 1);
					func_8007C764_4CC14(0x46, fadeTimer);
					drawText(&D_800AED3C_7F1EC, 0x80, 2);
					func_8007C764_4CC14(0x50, fadeTimer);
					drawText(&D_800AED64_7F214, 0x80, 3);
					func_8007C764_4CC14(0x5A, fadeTimer);
					drawText(&D_800AED8C_7F23C, 0x80, 4);
					func_8007C764_4CC14(0x64, fadeTimer);
					drawText(&D_800AEDB4_7F264, 0x80, 5);
					func_8007C764_4CC14(0x8C, fadeTimer);
					drawText(&D_800AEDC4_7F274, 0x80, 7, score);
					func_8007C764_4CC14(0xA0, fadeTimer);

					if (minutes < 10U && seconds < 10U) {
						drawText(&D_800AEDD4_7F284, 0x80, 8, hours, minutes, seconds);
					} else if (minutes < 10U) {
						drawText(&D_800AEDF0_7F2A0, 0x80, 8, hours, minutes, seconds);
					} else if (seconds < 10U) {
						drawText(&D_800AEE0C_7F2BC, 0x80, 8, hours, minutes, seconds);
					} else {
						drawText(&D_800AEE28_7F2D8, 0x80, 8, hours, minutes, seconds);
					}

					func_8007C764_4CC14(0xB4, fadeTimer);
					drawText(&D_800AEE44_7F2F4, 0xAA, 0xAA, 0xE0);
					drawText(&D_800AEE48_7F2F8, 0x80, 9, humans);
				} else {
#endif
				drawText(&D_800AE300_7E7B0, 0x80, 0);
				func_8007C764_4CC14(0x3C, fadeTimer);
				drawText(&D_800AE318_7E7C8, 0xC8, 0xC8, 0xFE);
				drawText(&D_800AE31C_7E7CC, 0x80, 1);
				func_8007C764_4CC14(0x46, fadeTimer);
				drawText(&D_800AE340_7E7F0, 0x80, 2);
				func_8007C764_4CC14(0x50, fadeTimer);
				drawText(&D_800AE368_7E818, 0x80, 3);
				func_8007C764_4CC14(0x78, fadeTimer);
				drawText(&D_800AE390_7E840, 0x80, 5, score);
				func_8007C764_4CC14(0x8C, fadeTimer);

				if (minutes < 10U && seconds < 10U) {
					drawText(&D_800AE3A0_7E850, 0x80, 6, hours, minutes, seconds);
				} else if (minutes < 10U) {
					drawText(&D_800AE3BC_7E86C, 0x80, 6, hours, minutes, seconds);
				} else if (seconds < 10U) {
					drawText(&D_800AE3D8_7E888, 0x80, 6, hours, minutes, seconds);
				} else {
					drawText(&D_800AE3F4_7E8A4, 0x80, 6, hours, minutes, seconds);
				}

				func_8007C764_4CC14(0xA0, fadeTimer);
				drawText(&D_800AE410_7E8C0, 0xAA, 0xAA, 0xE0);
				drawText(&D_800AE414_7E8C4, 0x80, 7, humans);
				func_8007C764_4CC14(0xB4, fadeTimer);
				drawText(&D_800AE430_7E8E0, 0x80, 8, D_8004DC5E);
#ifdef VERSION_EU
				}
#endif
				break;

		}

		func_8000B044_BC44();
		gDPFullSync(D_8005BB2C++);
		gSPEndDisplayList(D_8005BB2C++);
		func_8000505C_5C5C();

		if (timer < 0x258) {
			timer = ++fadeTimer;
		}

		if (((timer >= 0x258) && (isButtonNewlyPressed(0, 0x9000) != 0)) || (timer >= 0x7D0)) {
			func_80005AEC_66EC(0, 0, 0, 0x40);
		}

		func_80005B84_6784();
	} while (func_80005B30_6730() == 0);
}

// doSaveBeaconLoop
s32 func_8007CFB4_4D464(s32 arg0) {
	s16 timer;
	s32 selection;
	u32* frameCounter;

	selection = 0;
	timer = -1;
	gameplayMode = GAMEPLAY_MODE_UNK4;
	func_8000AFDC_BBDC();
	func_80070940_40DF0();
	D_800D74A6 = 0x44;
	D_800D74A4 = D_800D74A6;
	D_800948F0_Write = 0;

	while (timer != 0) {
		func_800050C4_5CC4();
		func_80011E14_12A14(0);
		func_80004DDC_59DC(0, 0, 0, 0, 0xEF);
		func_80008CA8_98A8(0);

		frameCounter = &D_800948F0_64DA0;
		if (*frameCounter >= 0x41U) {
			if (*frameCounter < 0x3E8U) {
				func_80070C64_41114(0x3F, 7, (s16)(*frameCounter - 0x3D));
			}
		}

		if (arg0 == 0) {
			func_80070A8C_40F3C(0x45);
		}

		if (D_800948F0_Menu >= 0x81U) {
			if (timer == -1) {
				func_80070CC4_41174();
				func_8007166C_41B1C();

				if (isButtonNewlyPressed(0, 0x9000) != 0) {
					selection = D_800D74A4 - 0x42;
					func_800708B8_40D68(0x43);
					func_800708B8_40D68(0x44);
					func_800708B8_40D68(0x45);
					func_800153D8_15FD8(0xC8);
					if (selection == 1) {
						func_80070C64_41114(0x46, 1, 0);
						timer = 0x50;
					} else {
						timer = 0x10;
					}
				}

				if (isButtonNewlyPressed(0, 0x4000) != 0) {
					selection = 2;
					timer = 0x10;
				}
			}
		}

		if (D_800948F0_Draw >= 0x41U) {
			func_800731A8_43658();
		}

		func_8000B044_BC44();

		frameCounter = &D_800948F0_Update;
		if (*frameCounter < 0x3E8U) {
			D_800948F0_Write = *frameCounter + 1;
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

		if (D_800948F0_Fade < 0x55U) {
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

s32 func_8007D2B0_4D760(void) {
	s16 timer;
	s32 i;
	s32 selection;
	s16 menuWarmup;
	s32 renderSetupDone[4];
	u8* weaponSlot;
	u32* frameCounter;

	selection = 0;
	timer = -1;
	renderSetupDone[0] = 0;

	gameplayMode = GAMEPLAY_MODE_INVENTORY;
	func_80070940_40DF0();

	D_800D74A6 = 0x4A;
	D_800D74A4 = D_800D74A6;
	D_800948F4_Write = 0;

	menuWarmup = 0;
	setFullResolution();

	D_800D74AE = 0;
	D_800D74AC = 0;
	D_800D74B0 = 0;

	for (i = 0; i < 12; i++) {
		D_800AED78[i] = func_8000726C_7E6C((s64)i);
	}

	D_800AED78[0xB] = D_8004DC5C;
	D_800AED78[0xC] = D_8004DC5E;

	for (i = 0; i < 14; i++) {
		osSyncPrintf(D_800AE448_7E8F8, i, func_8000726C_7E6C((s64)i));
		if (D_800AED78[i] != 0) {
			if (((FrontendItemRenderData(*)[13])D_80094278_64728)[currentLevel][i].displayList != NULL) {
				D_800D74AC = i;
				break;
			}
		}
	}

	weaponSlot = &weaponSlots[7];
	for (i = 7; i >= 0; i--, weaponSlot--) {
		if (*weaponSlot != 0) {
			D_800D74AE = i;
			break;
		}
	}

	while (timer != 0) {
		func_800050C4_5CC4();
		func_80011E14_12A14(0);
		func_80004DDC_59DC(0, 0, 0, 0, 0xEF);
		func_80008CA8_98A8(0);

		frameCounter = &D_800948F4_64DA4;
		if ((*frameCounter >= 0x41) && (*frameCounter < 0x3E8)) {
			func_80070C64_41114(0x46, 5, (s16)(*frameCounter - 0x3D));
		}

		if ((D_800948F4_Menu >= 0x4D) && (timer == -1)) {
			func_800710D8_41588(0x47, selection);
			func_8007166C_41B1C();

			if (menuWarmup < 0x10) {
				menuWarmup++;
			} else if (isButtonNewlyPressed(0, 0x9000)) {
				selection = D_800D74A4 - 0x47;
				osSyncPrintf(D_800AE468_7E918, D_800D74A4, 0x47, selection);

				switch (selection) {
				case 0:
					break;

				case 3:
					timer = 0x10;
					osSyncPrintf(D_800AE49C_7E94C, D_8004794A);
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

				case 4:
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

				case 5:
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

		if (D_800948F4_Draw >= 0x41) {
			func_800731A8_43658();
		}

		func_8000B044_BC44();

		frameCounter = &D_800948F4_Update;
		if (*frameCounter < 0x3E8) {
			D_800948F4_Write = *frameCounter + 1;
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

		if (renderSetupDone[0] == 0) {
			gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
			gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);
			renderSetupDone[0] = func_8000E53C_F13C();
		}

		func_8000505C_5C5C();
	}

	func_8000AFDC_BBDC();
	D_80047948 = D_800D74AE;
	osSyncPrintf(D_800AE4C8_7E978, D_80047948);
	return 0;
}

/* ===== Frontend .rodata (ROM 0x7D5A0 - 0x7F0F0) ===== */
#ifndef VERSION_EU
const char D_800AD0F0_7D5A0[] = "";
const char D_800AD0F4_7D5A4[] = "Credits";
const char D_800AD0FC_7D5AC[] = "";
const char D_800AD100_7D5B0[] = "";
const char D_800AD104_7D5B4[] = "Project Leader";
const char D_800AD114_7D5C4[] = "John Whyte";
const char D_800AD120_7D5D0[] = "";
const char D_800AD124_7D5D4[] = "Game Programmers";
const char D_800AD138_7D5E8[] = "Adam Fowler";
const char D_800AD144_7D5F4[] = "Alan Campbell";
const char D_800AD154_7D604[] = "Frank Arnot";
const char D_800AD160_7D610[] = "Grant Clarke";
const char D_800AD170_7D620[] = "Doug Smith";
const char D_800AD17C_7D62C[] = "Andrew West";
const char D_800AD188_7D638[] = "Andy J S Innes";
const char D_800AD198_7D648[] = "";
const char D_800AD19C_7D64C[] = "Game and Editor Programmer";
const char D_800AD1B8_7D668[] = "John Gurney";
const char D_800AD1C4_7D674[] = "";
const char D_800AD1C8_7D678[] = "Lead Artist";
const char D_800AD1D4_7D684[] = "Stacey Jamieson";
const char D_800AD1E4_7D694[] = "";
const char D_800AD1E8_7D698[] = "Alien Artist";
const char D_800AD1F8_7D6A8[] = "Alan Davidson";
const char D_800AD208_7D6B8[] = "";
const char D_800AD20C_7D6BC[] = "Artwork";
const char D_800AD214_7D6C4[] = "Craig Moore";
const char D_800AD220_7D6D0[] = "Ian McQue";
const char D_800AD22C_7D6DC[] = "Pat McGovern";
const char D_800AD23C_7D6EC[] = "Paul Reeves";
const char D_800AD248_7D6F8[] = "";
const char D_800AD24C_7D6FC[] = "Audio Programmers";
const char D_800AD260_7D710[] = "Ciaran Rooney";
const char D_800AD270_7D720[] = "Raymond Usher";
const char D_800AD280_7D730[] = "";
const char D_800AD284_7D734[] = "Music and Sound effects";
const char D_800AD29C_7D74C[] = "Stuart Ross";
const char D_800AD2A8_7D758[] = "Allan Walker";
const char D_800AD2B8_7D768[] = "";
const char D_800AD2BC_7D76C[] = "Editor Programming";
const char D_800AD2D0_7D780[] = "Graeme Anderson";
const char D_800AD2E0_7D790[] = "";
const char D_800AD2E4_7D794[] = "Level Design";
const char D_800AD2F4_7D7A4[] = "Richard Ralfe";
const char D_800AD304_7D7B4[] = "Lorne Campbell";
const char D_800AD314_7D7C4[] = "Mike Stirling";
const char D_800AD324_7D7D4[] = "";
const char D_800AD328_7D7D8[] = "Game Design";
const char D_800AD334_7D7E4[] = "John Whyte";
const char D_800AD340_7D7F0[] = "Alan Davidson";
const char D_800AD350_7D800[] = "Richard Ralfe";
const char D_800AD360_7D810[] = "Lorne Campbell";
const char D_800AD370_7D820[] = "Stacey Jamieson";
const char D_800AD380_7D830[] = "Adam Fowler";
const char D_800AD38C_7D83C[] = "EAD Japan";
const char D_800AD398_7D848[] = "";
const char D_800AD39C_7D84C[] = "DMA Quality Assurance";
const char D_800AD3B4_7D864[] = "Craig Arbuthnott";
const char D_800AD3C8_7D878[] = "Steve Taylor";
const char D_800AD3D8_7D888[] = "Allen Shiels";
const char D_800AD3E8_7D898[] = "Sean Taylor";
const char D_800AD3F4_7D8A4[] = "Alan Dobson";
const char D_800AD400_7D8B0[] = "William Mills";
const char D_800AD410_7D8C0[] = "Sean Brown";
const char D_800AD41C_7D8CC[] = "";
const char D_800AD420_7D8D0[] = "Gremlin Quality Assurance";
const char D_800AD43C_7D8EC[] = "Carl Cavers";
const char D_800AD448_7D8F8[] = "Jon Watson";
const char D_800AD454_7D904[] = "Julia Sturman";
const char D_800AD464_7D914[] = "Travis Ryan";
const char D_800AD470_7D920[] = "Les Dungate";
const char D_800AD47C_7D92C[] = "Daniel Webster";
const char D_800AD48C_7D93C[] = "Matthew Tucket";
const char D_800AD49C_7D94C[] = "Andrew Wilson";
const char D_800AD4AC_7D95C[] = "Stephen Woodward";
const char D_800AD4C0_7D970[] = "Martin Berridge";
const char D_800AD4D0_7D980[] = "Matthew Fu";
const char D_800AD4DC_7D98C[] = "";
const char D_800AD4E0_7D990[] = "Public Relations";
const char D_800AD4F4_7D9A4[] = "Brian Baglow";
const char D_800AD504_7D9B4[] = "";
const char D_800AD508_7D9B8[] = "Localisation";
const char D_800AD518_7D9C8[] = "Sarah Bennett";
const char D_800AD528_7D9D8[] = "";
const char D_800AD52C_7D9DC[] = "Development Manager";
const char D_800AD540_7D9F0[] = "Jim Woods";
const char D_800AD54C_7D9FC[] = "";
const char D_800AD550_7DA00[] = "Boss and General Nuisance";
const char D_800AD56C_7DA1C[] = "Dave Jones";
const char D_800AD578_7DA28[] = "";
const char D_800AD57C_7DA2C[] = "Thanks to:";
const char D_800AD588_7DA38[] = "John Harrison";
const char D_800AD598_7DA48[] = "Martin Good";
const char D_800AD5A4_7DA54[] = "Robert Jeffrey";
const char D_800AD5B4_7DA64[] = "Darren Baines";
const char D_800AD5C4_7DA74[] = "Jeff Cairns";
const char D_800AD5D0_7DA80[] = "Aaron Garbut";
const char D_800AD5E0_7DA90[] = "Gary Thomson";
const char D_800AD5F0_7DAA0[] = "Kenneth Fee";
const char D_800AD5FC_7DAAC[] = "Craig Conner";
const char D_800AD60C_7DABC[] = "Andy Strachan";
const char D_800AD61C_7DACC[] = "Andy Hay";
const char D_800AD628_7DAD8[] = "Liam O'Neill";
const char D_800AD638_7DAE8[] = "Shoya Tanaka";
const char D_800AD648_7DAF8[] = "EAD Nintendo Japan";
const char D_800AD65C_7DB0C[] = "Gary Penn";
const char D_800AD668_7DB18[] = "Mark Ettle";
const char D_800AD674_7DB24[] = "Julian Glendinning";
const char D_800AD688_7DB38[] = "Kevin Kelly";
const char D_800AD694_7DB44[] = "Ian Thomson";
const char D_800AD6A0_7DB50[] = "Corinne Cervetti";
const char D_800AD6B4_7DB64[] = "";
const char D_800AD6B8_7DB68[] = "";
const char D_800AD6BC_7DB6C[] = "";
const char D_800AD6C0_7DB70[] = "";
const char D_800AD6C4_7DB74[] = "";
const char D_800AD6C8_7DB78[] = "THE END";
const char D_800AD6D0_7DB80[] = "";
const char D_800AD6D4_7DB84[] = "";
const char D_800AD6D8_7DB88[] = "";
const char D_800AD6DC_7DB8C[] = "[ DMA Design 1998";
const char D_800AD6F0_7DBA0[] = "";
const char D_800AD6F4_7DBA4[] = "";
const char D_800AD6F8_7DBA8[] = "";
const char D_800AD6FC_7DBAC[] = "#";
const char D_800AD700_7DBB0[] = "";
const char D_800AD704_7DBB4[] = "Fuel";
const char D_800AD70C_7DBBC[] = "Carburant";
const char D_800AD718_7DBC8[] = "Sprit";
const char D_800AD720_7DBD0[] = "Vehicle Weapon 1";
const char D_800AD734_7DBE4[] = "Arme 1";
const char D_800AD73C_7DBEC[] = "Waffe 1";
const char D_800AD744_7DBF4[] = "Vehicle Weapon 2";
const char D_800AD758_7DC08[] = "Arme 2";
const char D_800AD760_7DC10[] = "Waffe 2";
const char D_800AD768_7DC18[] = "Chaingun";
const char D_800AD774_7DC24[] = "Fragcannon";
const char D_800AD780_7DC30[] = "Lazer Missiles";
const char D_800AD790_7DC40[] = "Resonator";
const char D_800AD79C_7DC4C[] = "Plasma Bombs";
const char D_800AD7AC_7DC5C[] = "";
const char D_800AD7B0_7DC60[] = "";
const char D_800AD7B4_7DC64[] = "ERROR: No free windows\012";
const char D_800AD7CC_7DC7C[] = "ERROR: No free windows\012";
const char D_800AD7E4_7DC94[] = "7";
const char D_800AD7E8_7DC98[] = "0";
const char D_800AD7EC_7DC9C[] = "%C%a";
const char D_800AD7F4_7DCA4[] = "%H%V%X%Y";
const char D_800AD800_7DCB0[] = "%@%s";
const char D_800AD808_7DCB8[] = "%@%s";
const char D_800AD810_7DCC0[] = "%@%s";
const char D_800AD818_7DCC8[] = "%@%s";
const char D_800AD820_7DCD0[] = "%@%s";
const char D_800AD828_7DCD8[] = "%@%s";
const char D_800AD830_7DCE0[] = "%@%s%@%s";
const char D_800AD83C_7DCEC[] = "%@%s%@%s";
const char D_800AD848_7DCF8[] = "%@%s%@%s";
const char D_800AD854_7DD04[] = "%@%X%d";
const char D_800AD85C_7DD0C[] = "%@%s%@%s";
const char D_800AD868_7DD18[] = "%@%s%@%s";
const char D_800AD874_7DD24[] = "%@%s%@%s";
const char D_800AD880_7DD30[] = "%@%X%d";
const char D_800AD888_7DD38[] = "%@%s%@%s";
const char D_800AD894_7DD44[] = "%@%s%@%s";
const char D_800AD8A0_7DD50[] = "%@%s%@%s";
const char D_800AD8AC_7DD5C[] = "%@%X%d";
const char D_800AD8B4_7DD64[] = "%@%s";
const char D_800AD8BC_7DD6C[] = "%@%s";
const char D_800AD8C4_7DD74[] = "%@%s";
const char D_800AD8CC_7DD7C[] = "%@%s";
const char D_800AD8D4_7DD84[] = "%@%s";
const char D_800AD8DC_7DD8C[] = "%@%s";
const char D_800AD8E4_7DD94[] = "%@%s";
const char D_800AD8EC_7DD9C[] = "%@%s";
const char D_800AD8F4_7DDA4[] = "%@%s";
const char D_800AD8FC_7DDAC[] = "%@%s";
const char D_800AD904_7DDB4[] = "%@%s";
const char D_800AD90C_7DDBC[] = "%@%s";
const char D_800AD914_7DDC4[] = "%@%s";
const char D_800AD91C_7DDCC[] = "%@%s";
const char D_800AD924_7DDD4[] = "%@%s";
const char D_800AD92C_7DDDC[] = "%@%s";
const char D_800AD934_7DDE4[] = "%@%s";
const char D_800AD93C_7DDEC[] = "%@%s";
const char D_800AD944_7DDF4[] = "%@%s";
const char D_800AD94C_7DDFC[] = "%@%s";
const char D_800AD954_7DE04[] = "%@%s";
const char D_800AD95C_7DE0C[] = "%@%s";
const char D_800AD964_7DE14[] = "%@%s";
const char D_800AD96C_7DE1C[] = "%@%s";
const char D_800AD974_7DE24[] = "%@%s";
const char D_800AD97C_7DE2C[] = "%@%s";
const char D_800AD984_7DE34[] = "%@%s";
const char D_800AD98C_7DE3C[] = "%@%s";
const char D_800AD994_7DE44[] = "%@%s";
const char D_800AD99C_7DE4C[] = "%@%c";
const char D_800AD9A4_7DE54[] = "%@%c";
const char D_800AD9AC_7DE5C[] = "%@%c";
const char D_800AD9B4_7DE64[] = "%@%s";
const char D_800AD9BC_7DE6C[] = "%@%s";
const char D_800AD9C4_7DE74[] = "%@%s";
const char D_800AD9CC_7DE7C[] = "%@%s";
const char D_800AD9D4_7DE84[] = "%@%s";
const char D_800AD9DC_7DE8C[] = "%@%s";
const char D_800AD9E4_7DE94[] = "%@%s";
const char D_800AD9EC_7DE9C[] = "%@%s";
const char D_800AD9F4_7DEA4[] = "%@%s";
const char D_800AD9FC_7DEAC[] = "%@%s";
const char D_800ADA04_7DEB4[] = "%@%s 0%d:0%d:0%d";
const char D_800ADA18_7DEC8[] = "%@%s %d:0%d:0%d";
const char D_800ADA28_7DED8[] = "%@%s 0%d:0%d:%d";
const char D_800ADA38_7DEE8[] = "%@%s 0%d:%d:0%d";
const char D_800ADA48_7DEF8[] = "%@%s 0%d:%d:%d";
const char D_800ADA58_7DF08[] = "%@%s %d:0%d:%d";
const char D_800ADA68_7DF18[] = "%@%s %d:%d:0%d";
const char D_800ADA78_7DF28[] = "%@%s %d:%d:%d";
const char D_800ADA88_7DF38[] = "%@%s %d%%";
const char D_800ADA94_7DF44[] = "%@%s %d%%";
const char D_800ADAA0_7DF50[] = "%@%s%@%s";
const char D_800ADAAC_7DF5C[] = "%@%s%@%s";
const char D_800ADAB8_7DF68[] = "%@%s%@%s";
const char D_800ADAC4_7DF74[] = "%@%X%d";
const char D_800ADACC_7DF7C[] = "%@%s";
const char D_800ADAD4_7DF84[] = "%@%s";
const char D_800ADADC_7DF8C[] = "%@%s";
const char D_800ADAE4_7DF94[] = "%@%s";
const char D_800ADAEC_7DF9C[] = "%@%s";
const char D_800ADAF4_7DFA4[] = "%@%s";
const char D_800ADAFC_7DFAC[] = "%@%s";
const char D_800ADB04_7DFB4[] = "%@%s";
const char D_800ADB0C_7DFBC[] = "%C%a";
const char D_800ADB14_7DFC4[] = "%@%X%YGriechen.: %d:3";
const char D_800ADB2C_7DFDC[] = "%@%X%Y%s: %d:3";
const char D_800ADB3C_7DFEC[] = "%@%X%Y%s: %d:3";
const char D_800ADB4C_7DFFC[] = "%@%X%Y%s: %d:3";
const char D_800ADB5C_7E00C[] = "%@%X%Y%s: %d:3";
const char D_800ADB6C_7E01C[] = "%@";
const char D_800ADB70_7E020[] = "%X";
const char D_800ADB74_7E024[] = "%@%s";
const char D_800ADB7C_7E02C[] = "%X";
const char D_800ADB80_7E030[] = "%@%s";
const char D_800ADB88_7E038[] = "%@%s";
const char D_800ADB90_7E040[] = "%@Leviathan";
const char D_800ADB9C_7E04C[] = "%@Cerberus";
const char D_800ADBA8_7E058[] = "%@Moloch";
const char D_800ADBB4_7E064[] = "%@Beelzebub";
const char D_800ADBC0_7E070[] = "%@Tomegatherion";
const char D_800ADBD0_7E080[] = "%@Deutsch";
const char D_800ADBDC_7E08C[] = "%@English";
const char D_800ADBE8_7E098[] = "%@Fran\347ais";
const char D_800ADBF4_7E0A4[] = "%@%s";
const char D_800ADBFC_7E0AC[] = "%@%s";
const char D_800ADC04_7E0B4[] = "%@%s";
const char D_800ADC0C_7E0BC[] = "%H%V%X%Y";
const char D_800ADC18_7E0C8[] = "%W";
const char D_800ADC1C_7E0CC[] = "%@Made: %s on %s\012";
const char D_800ADC30_7E0E0[] = "19:43:03";
const char D_800ADC3C_7E0EC[] = "Aug 27 1998";
const char D_800ADC48_7E0F8[] = "%@version B6.5 Midway";
const char D_800ADC60_7E110[] = "%C%a";
const char D_800ADC68_7E118[] = "startup\012";
const char D_800ADC74_7E124[] = "kiss sequence\012";
const char D_800ADC84_7E134[] = "%C%a";
const char D_800ADC8C_7E13C[] = "slot name: %s\012";
const char D_800ADC9C_7E14C[] = "empty slot!!!!!!!!!!!!!!!!!!!!!!!!!\012";
const char D_800ADCC4_7E174[] = "locking windows %d to %d\012";
const char D_800ADCE0_7E190[] = "%C";
const char D_800ADCE4_7E194[] = "%a";
const char D_800ADCE8_7E198[] = "%@TOP SCORES";
const char D_800ADCF8_7E1A8[] = "%@HIGH SCORES";
const char D_800ADD08_7E1B8[] = "%@TOP SCORES";
const char D_800ADD18_7E1C8[] = "%W";
const char D_800ADD1C_7E1CC[] = "%Y";
const char D_800ADD20_7E1D0[] = "%a";
const char D_800ADD24_7E1D4[] = "%@%s";
const char D_800ADD2C_7E1DC[] = "%C";
const char D_800ADD30_7E1E0[] = "%H";
const char D_800ADD34_7E1E4[] = "%@%s";
const char D_800ADD3C_7E1EC[] = "%H";
const char D_800ADD40_7E1F0[] = "%X";
const char D_800ADD44_7E1F4[] = "%@Score:";
const char D_800ADD50_7E200[] = "%@Punkte:";
const char D_800ADD5C_7E20C[] = "%@Score:";
const char D_800ADD68_7E218[] = "%X";
const char D_800ADD6C_7E21C[] = "%@%d";
const char D_800ADD74_7E224[] = "%X";
const char D_800ADD78_7E228[] = "%@Humans killed:";
const char D_800ADD8C_7E23C[] = "%@Opfer:";
const char D_800ADD98_7E248[] = "%@Humains tu\351s:";
const char D_800ADDA8_7E258[] = "%X";
const char D_800ADDAC_7E25C[] = "%@%d";
const char D_800ADDB4_7E264[] = "%X";
const char D_800ADDB8_7E268[] = "%@Time:";
const char D_800ADDC0_7E270[] = "%@Zeit:";
const char D_800ADDC8_7E278[] = "%@Dur\351e:";
const char D_800ADDD4_7E284[] = "%X";
const char D_800ADDD8_7E288[] = "%@0%d:0%d:0%d";
const char D_800ADDE8_7E298[] = "%@0%d:0%d:%d";
const char D_800ADDF8_7E2A8[] = "%@0%d:%d:0%d";
const char D_800ADE08_7E2B8[] = "%@%d:0%d:0%d";
const char D_800ADE18_7E2C8[] = "%@0%d:%d:%d";
const char D_800ADE24_7E2D4[] = "%@%d:0%d:%d";
const char D_800ADE30_7E2E0[] = "%@%d:%d:0%d";
const char D_800ADE3C_7E2EC[] = "%@%d:%d:%d";
const char D_800ADE48_7E2F8[] = "%C";
const char D_800ADE4C_7E2FC[] = "%C";
const char D_800ADE50_7E300[] = "%@Clear Save Data";
const char D_800ADE64_7E314[] = "%C";
const char D_800ADE68_7E318[] = "%@Are you sure you want";
const char D_800ADE80_7E330[] = "%@to clear ALL of the save data?";
const char D_800ADEA4_7E354[] = "%C";
const char D_800ADEA8_7E358[] = "%C";
const char D_800ADEAC_7E35C[] = "%@Yes";
const char D_800ADEB4_7E364[] = "%C";
const char D_800ADEB8_7E368[] = "%C";
const char D_800ADEBC_7E36C[] = "%@No";
const char D_800ADEC4_7E374[] = "%C";
const char D_800ADEC8_7E378[] = "%@Body Harvest %c and %c 1998";
const char D_800ADEE8_7E398[] = "%@Gremlin Interactive Ltd.";
const char D_800ADF04_7E3B4[] = "%@All rights reserved.";
const char D_800ADF1C_7E3CC[] = "%@Developed by DMA Design Ltd.";
const char D_800ADF3C_7E3EC[] = "%Y%@MIDWAY is a registered";
const char D_800ADF58_7E408[] = "%@trademark of Midway Games Inc.";
const char D_800ADF7C_7E42C[] = "%@Distributed by Midway Home";
const char D_800ADF9C_7E44C[] = "%@Entertainment Inc. under license.";
const char D_800ADFC0_7E470[] = "%Y%@LICENSED BY NINTENDO";
const char D_800ADFDC_7E48C[] = "%C";
const char D_800ADFE0_7E490[] = "%@Controller is not connected.";
const char D_800AE000_7E4B0[] = "%C";
const char D_800AE004_7E4B4[] = "%@This game pak is only available";
const char D_800AE028_7E4D8[] = "%@for the NTSC and MPAL markets.";
const char D_800AE04C_7E4FC[] = "%Y";
const char D_800AE050_7E500[] = "%Y";
const char D_800AE054_7E504[] = "%C";
const char D_800AE058_7E508[] = "%C";
const char D_800AE05C_7E50C[] = "%a";
const char D_800AE060_7E510[] = "%a";
const char D_800AE064_7E514[] = "%a";
const char D_800AE068_7E518[] = "%@%s";
const char D_800AE070_7E520[] = "%Y";
const char D_800AE074_7E524[] = "%Y";
const char D_800AE078_7E528[] = "%C";
const char D_800AE07C_7E52C[] = "%C";
const char D_800AE080_7E530[] = "%a";
const char D_800AE084_7E534[] = "%a";
const char D_800AE088_7E538[] = "%a";
const char D_800AE08C_7E53C[] = "%@%s";
const char D_800AE094_7E544[] = "%a";
const char D_800AE098_7E548[] = "%a";
const char D_800AE09C_7E54C[] = "%a";
const char D_800AE0A0_7E550[] = "%@Good work, soldier!";
const char D_800AE0B8_7E568[] = "%C";
const char D_800AE0BC_7E56C[] = "%@The mission was successful. You";
const char D_800AE0E0_7E590[] = "%@have saved mankind from the aliens.";
const char D_800AE108_7E5B8[] = "%@Come on home.";
const char D_800AE118_7E5C8[] = "%@Score:   %d";
const char D_800AE128_7E5D8[] = "%@Total Time:    %d:0%d:0%d";
const char D_800AE144_7E5F4[] = "%@Total Time:    %d:0%d:%d";
const char D_800AE160_7E610[] = "%@Total Time:    %d:%d:0%d";
const char D_800AE17C_7E62C[] = "%@Total Time:    %d:%d:%d";
const char D_800AE198_7E648[] = "%C";
const char D_800AE19C_7E64C[] = "%@Humans lost: %d\012";
const char D_800AE1B0_7E660[] = "%@Artifacts: %d of 12";
const char D_800AE1C8_7E678[] = "%@Beau travail, soldat!";
const char D_800AE1E0_7E690[] = "%C";
const char D_800AE1E4_7E694[] = "%@Cette mission est un triomphe.";
const char D_800AE208_7E6B8[] = "%@L'humanit\351 est sauv\351e.";
const char D_800AE224_7E6D4[] = "%@Rentre chez toi, en paix.";
const char D_800AE240_7E6F0[] = "%@Score:   %d";
const char D_800AE250_7E700[] = "%@Dur\351e totale:    %d:0%d:0%d";
const char D_800AE270_7E720[] = "%@Dur\351e totale:    %d:0%d:%d";
const char D_800AE290_7E740[] = "%@Dur\351e totale:    %d:%d:0%d";
const char D_800AE2B0_7E760[] = "%@Dur\351e totale:    %d:%d:%d";
const char D_800AE2CC_7E77C[] = "%C";
const char D_800AE2D0_7E780[] = "%@Pertes humaines: %d\012";
const char D_800AE2E8_7E798[] = "%@Reliques: %d de 12";
const char D_800AE300_7E7B0[] = "%@Gute Arbeit, Soldat!";
const char D_800AE318_7E7C8[] = "%C";
const char D_800AE31C_7E7CC[] = "%@Der Einsatz war erfolgreich. Du";
const char D_800AE340_7E7F0[] = "%@hast die Menschheit vor den Aliens";
const char D_800AE368_7E818[] = "%@gerettet. Zeit, nach Hause zu gehen.";
const char D_800AE390_7E840[] = "%@Punkte:   %d";
const char D_800AE3A0_7E850[] = "%@Gesamtzeit:    %d:0%d:0%d";
const char D_800AE3BC_7E86C[] = "%@Gesamtzeit:    %d:0%d:%d";
const char D_800AE3D8_7E888[] = "%@Gesamtzeit:    %d:%d:0%d";
const char D_800AE3F4_7E8A4[] = "%@Gesamtzeit:    %d:%d:%d";
const char D_800AE410_7E8C0[] = "%C";
const char D_800AE414_7E8C4[] = "%@Menschl. Verluste: %d\012";
const char D_800AE430_7E8E0[] = "%@Artefakte: %d of 12";
const char D_800AE448_7E8F8[] = "Tesking key %d,  result = %d \012";
const char D_800AE468_7E918[] = "WindowSelection=%d,  INVENTORY_WINDOW=%d, Done=%d\012";
const char D_800AE49C_7E94C[] = "*******************InventorySelect=%d, \012";
const char D_800AE4C8_7E978[] = "INV>>>>WeaponSelect=%d\012";
#endif




#ifdef VERSION_EU
/* Tail of the preceding diagnostic string, before the generated table. */
const u32 D_800AF040_7F4F0[1] = { 0x25640A00 };
#endif
