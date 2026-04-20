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

#ifdef NON_MATCHING
// CURRENT(5)
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
	if (D_800D6DC0[newv].unk26 == arg0) {
		return (MissionData *) (&D_800D6DC0[newv]);
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

#ifdef NON_MATCHING
// CURRENT(7230)
void func_80070514_409C4(s16 arg0) {
	s32 var_v1;
	MissionData* temp_a0;
	MissionData* temp_a1;
	MissionData* var_a0;
	u8 temp_v0;

	if (arg0 == D_800D74AA) {
		return;
	}

	var_v1 = 0x29;
	var_a0 = &D_800D6DC0[0x29];
	if (var_a0->unk16 != 0) {
		while (1) {
			var_a0--;
			if (var_v1 == 0) {
				var_v1--;
				break;
			}
			var_v1--;
			if (var_a0->unk16 == 0) {
				break;
			}
		}
	}

	if (var_v1 == -1) {
		osSyncPrintf(D_800AD7B4_7DC64);
		return;
	}

	temp_a0 = &D_800D6DC0[var_v1];
	temp_a1 = &D_800909B0[arg0];

	temp_a0->unk0 = temp_a1->unk0 * 4;
	temp_a0->unk2 = temp_a1->unk2 * 4;
	temp_a0->unk4 = temp_a1->unk4 * 4;
	temp_a0->unk6 = temp_a1->unk6 * 4;
	temp_a0->unk8 = temp_a1->unk8;
	temp_a0->unkA = temp_a1->unkA * 4;
	temp_a0->unkC = temp_a1->unkC * 4;
	temp_a0->unkE = temp_a1->unkE * 4;
	temp_a0->unk10 = temp_a1->unk10 * 4;
	temp_a0->unk12 = temp_a1->unk12;
	temp_a0->unk14 = temp_a1->unk14;
	temp_a0->unk16 = temp_a1->unk16;

	temp_v0 = temp_a1->unk1C;
	if (temp_v0 == 3) {
		temp_a1->unk1C = 0;
		temp_a0->unk1C = 0;
	} else {
		temp_a0->unk1C = temp_v0;
	}

	temp_a0->unk26 = arg0;
	temp_a0->unk28 = -1;

	if (D_800313D0 == 0) {
		temp_a0->unk1E = temp_a1->unk1E;
	} else if (D_800313D0 == 1) {
		temp_a0->unk1E = temp_a1->unk1A;
	} else if (D_800313D0 == 2) {
		temp_a0->unk1E = temp_a1->unk18;
	} else {
		temp_a0->unk1E = temp_a1->unk1E;
	}

	temp_a0->unk20 = temp_a1->unk20;
	if (arg0 == D_800D74A4) {
		temp_a1->unk1C = 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070514_409C4.s")
#endif

#ifdef NON_MATCHING
// CURRENT(8185)
MissionData* func_800706E8_40B98(s16 arg0) {
	s32 index;
	s32 stride;
	MissionData* entry;
	MissionData* source;

	index = 0x29;
	if (D_800D7490 != 0) {
		u8* ptr;

		stride = 0x2A;
		ptr = (u8*)D_800D6DC0 + (index * stride);
		while (index != 0) {
			index--;
			ptr -= stride;
			if (ptr[0x16] == 0) {
				break;
			}
		}
	}

	stride = 0x2A;
	if (index == -1) {
		osSyncPrintf(D_800AD7CC_7DC7C);
		return NULL;
	}

	entry = (MissionData*)((u8*)D_800D6DC0 + (index * stride));
	source = (MissionData*)((u8*)D_800909B0 + (arg0 * stride));

	entry->unk0 = source->unk0 << 2;
	entry->unk2 = source->unk2 << 2;
	entry->unk4 = source->unk4 << 2;
	entry->unk6 = source->unk6 << 2;
	entry->unk8 = source->unk8;
	entry->unkA = source->unkA << 2;
	entry->unkC = source->unkC << 2;
	entry->unkE = source->unkE << 2;
	entry->unk12 = 0xFFFF;
	entry->unk14 = 0;
	entry->unk10 = source->unk10 << 2;
	entry->unk16 = source->unk16;

	if (source->unk1C == 3) {
		source->unk1C = 0;
		entry->unk1C = 0;
	} else {
		entry->unk1C = source->unk1C;
	}

	entry->unk26 = arg0;
	entry->unk28 = source->unk28;

	if (D_800313D0 == 0) {
		entry->unk1E = source->unk1E;
	} else if (D_800313D0 == 1) {
		entry->unk1E = source->unk1A;
	} else if (D_800313D0 == 2) {
		entry->unk1E = source->unk18;
	} else {
		entry->unk1E = source->unk1E;
	}

	entry->unk20 = source->unk20;
	if (arg0 == D_800D74A4) {
		func_800704DC_4098C();
		entry->unk1C = 1;
	}

	return entry;
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

#ifdef NON_MATCHING
void func_80070B68_41018(s16 arg0) {
	u32 new_var;
	s32 i;
	new_var = 0x29;
	i = new_var; do {
		if (arg0 == D_800D6DC0[i].unk26 && D_800D6DC0[i].unk1C == 3) {
			D_800909B0[D_800D6DC0[i].unk26].unk1C = 0;
			D_800D6DC0[i].unk1C = 0;
			D_800D6DC0[i].unk28 = 0;
		}
	} while (i--);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070B68_41018.s")
#endif

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

#ifdef NON_MATCHING
// CURRENT(13048)
void func_80070CC4_41174(void)
{
	s16 selectedFileIndex;
	s32 playAltMoveSfx;
	MissionDataNav* missionData;
	MissionDataNav* selectedFileData;

	playAltMoveSfx = 0;

	if (D_8004758A < 0x15 && D_8004758A >= -0x14 && !isButtonNewlyPressed(0, 0x300)) {
		D_80094824_64CD4 = 1;
		D_8009482C_64CDC = 0x1E;
	}

	if (D_8004758B < 0x15 && D_8004758B >= -0x14 && !isButtonNewlyPressed(0, 0xC00)) {
		D_80094828_64CD8 = 1;
		D_80094830_64CE0 = 0x1E;
	}

	missionData = (MissionDataNav*) D_800909B0;
	selectedFileIndex = D_800D74A4;
	selectedFileData = &missionData[selectedFileIndex];

	if (D_80094824_64CD4 || --D_8009482C_64CDC == 0) {
		if ((D_8004758A < -0x14 || isButtonNewlyPressed(0, 0x200)) && selectedFileData->unk22 != 0) {
			selectedFileIndex = selectedFileData->unk22;
			while (selectedFileIndex != 0 && missionData[selectedFileIndex].unk1C == 3) {
				selectedFileIndex = missionData[selectedFileIndex].unk22;
			}
		} else if ((D_8004758A >= 0x15 || isButtonNewlyPressed(0, 0x100)) && selectedFileData->unk23 != 0) {
			selectedFileIndex = selectedFileData->unk23;
			while (selectedFileIndex != 0 && missionData[selectedFileIndex].unk1C == 3) {
				selectedFileIndex = missionData[selectedFileIndex].unk23;
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
		if ((D_8004758B >= 0x15 || isButtonNewlyPressed(0, 0x800)) && selectedFileData->unk24 != 0) {
			selectedFileIndex = selectedFileData->unk24;
			while (selectedFileIndex != 0 && missionData[selectedFileIndex].unk1C == 3) {
				selectedFileIndex = missionData[selectedFileIndex].unk24;
			}
			playAltMoveSfx = 1;
		} else if ((D_8004758B < -0x14 || isButtonNewlyPressed(0, 0x400)) && selectedFileData->unk25 != 0) {
			selectedFileIndex = selectedFileData->unk25;
			while (selectedFileIndex != 0 && missionData[selectedFileIndex].unk1C == 3) {
				selectedFileIndex = missionData[selectedFileIndex].unk25;
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800710D8_41588.s")

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

#ifdef NON_MATCHING
// CURRENT(695)
s32 func_80071760_41C10(s32 arg0) {
	s8 ch;
	s32 textWidth;
	s16 digitCount;
	s16 i;
	s16 j;
	s32 value;
	s32 totalWidth;
	s32 divisor;

	value = arg0;
	digitCount = 0;
	totalWidth = 0;

	textWidth = func_8000A2B8_AEB8(&D_800AD7E4_7DC94, 0) * 0x1C;

	if (arg0 > 0) {
		do {
			digitCount++;
			value = (s32)((f32)value / 10.0f);
		} while (value > 0);
	}

	if (digitCount > 0) {
		for (i = 0; i < digitCount; i++) {
			divisor = 1;

			if (i > 0) {
				for (j = 0; j < i; j++) {
					divisor *= 10;
				}
			}

			value = (s32)((f32)arg0 / (f32)divisor);
			ch = (value - ((s32)((f32)value / 10.0f) * 10)) + '0';
			totalWidth += func_8000A2B8_AEB8(&ch, 0) * 4;
		}
	}

	if (arg0 == 0) {
		totalWidth = func_8000A2B8_AEB8(&D_800AD7E8_7DC98, 0) * 4;
	}

	return textWidth - totalWidth;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80071760_41C10.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80071900_41DB0.s")

#ifdef NON_MATCHING
// CURRENT(10239)
void func_80071E80_42330(s16 arg0, s16 arg1, f32 arg2, f32 arg3) {
	s32 weaponType;
	volatile s32 textureIndex;
	s32 sizeX;
	s32 sizeY;
	Gfx* dl;

	weaponType = weaponSlots[D_800D74AE];
	if (weaponType == 0) {
		return;
	}

	textureIndex = ((s32*)&D_80031474)[weaponType];

	dl = D_8005BB2C++;
	dl->words.w0 = 0xBA000E02;
	dl->words.w1 = 0x00008000;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xBA001301;
	dl->words.w1 = 0;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xFD100000;
	dl->words.w1 = (u32)D_80260500;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xE8000000;
	dl->words.w1 = 0;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xF5000100;
	dl->words.w1 = 0x07000000;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xE6000000;
	dl->words.w1 = 0;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xF0000000;
	dl->words.w1 = 0x073FC000;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xE7000000;
	dl->words.w1 = 0;

	{
		f32 scale;

		scale = 2.0f;
		arg2 *= scale;
		arg3 *= scale;
	}

	dl = D_8005BB2C++;
	dl->words.w0 = 0xFA000100;
	if (weaponSlots[D_800D74AE] != 0) {
		dl->words.w1 = 0x00AAD2FF;
	} else {
		dl->words.w1 = 0x002346FF;
	}

	dl = D_8005BB2C++;
	dl->words.w0 = 0xB9000002;
	dl->words.w1 = 0;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xB900031D;
	dl->words.w1 = 0x0F0A4000;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xFC119623;
	dl->words.w1 = 0xFF2FFFFF;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xFD500000;
	dl->words.w1 = ((u32)(D_8025CCC0 + ((s32)textureIndex * 0x240))) & 0x1FFFFFFF;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xF5500000;
	dl->words.w1 = 0x07000000;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xE6000000;
	dl->words.w1 = 0;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xF3000000;
	dl->words.w1 = 0x0711F2AB;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xE7000000;
	dl->words.w1 = 0;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xF5480600;
	dl->words.w1 = 0;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xF2000000;
	dl->words.w1 = 0x0005C05C;

	sizeX = (s32)(12.0f * arg2);
	sizeY = (s32)(12.0f * arg3);

	dl = D_8005BB2C++;
	dl->words.w0 = 0xE7000000;
	dl->words.w1 = 0;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xE4000000 | ((((arg0 + sizeX + 0xC) * 4) & 0xFFF) << 12) | (((arg1 + sizeY + 0xC) * 4) & 0xFFF);
	dl->words.w1 = ((((arg0 - sizeX + 0xC) * 4) & 0xFFF) << 12) | (((arg1 - sizeY + 0xC) * 4) & 0xFFF);

	dl = D_8005BB2C++;
	dl->words.w0 = 0xB4000000;
	dl->words.w1 = 0;

	dl = D_8005BB2C++;
	dl->words.w0 = 0xB3000000;
	dl->words.w1 = ((s32)((1.0f / arg2) * 1024.0f) << 16) | (((s32)((1.0f / arg3) * 1024.0f)) & 0xFFFF);

	dl = D_8005BB2C++;
	dl->words.w0 = 0xE7000000;
	dl->words.w1 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80071E80_42330.s")
#endif

extern Ambient D_800942A0_64750;
extern Light D_800942A8_64758;

void func_800722A4_42754() {
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
// CURRENT(8100)
void func_80072604_42AB4(s32 arg0, s32 arg1, s32 arg2, f32 arg3) {
	s32 padTop0;
	s32 padTop1;
	s32 padTop2;
	Unk80052B40 spBC;
	Unk80052B40 spB4;
	Unk80052B40 spAC;
	s32 padMid0;
	s32 padMid1;
	s32 padMid2;
	s32 padMid3;
	s32 padMid4;
	s32 sp9C;
	s32 xPos;
	s32 scaleInt;
	f32 scale;
	u16 spD4;
	s16 i;
	u8 count;
	u8 remaining;
	Gfx* displayList;

	D_80094844_64CF4 += 0x2D8;
	count = D_8004DC5C;
	remaining = count;
	sp9C = arg0;
	spD4 = 0;

	if (count == 1) {
		sp9C = arg0 - 0x78;
		spD4 = 0x50;
	} else if (count == 2) {
		sp9C = arg0 - 0x55;
		spD4 = 0x50;
	} else if (count == 3) {
		sp9C = arg0 - 0x28;
		spD4 = 0x50;
	}

	if (count > 0) {
		i = 0;
		do {
			displayList = D_800942D8_64788;
			if (displayList != NULL) {
				gDPPipeSync(D_8005BB2C++);
				gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
				gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);

				scale = D_800942DC_6478C * (f32)((f64)arg3 * 1.5);
				xPos = ((u32)spD4 * (u32)(3 - remaining)) + sp9C;
				remaining--;

				func_800039D0_45D0(NULL, NULL, &D_800311A0, D_8005BB38);
				gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
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

				gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				D_8005BB38 += 0x40;
				gSPDisplayList(D_8005BB2C++, (Gfx*)((u32)displayList & 0x1FFFFFFF));
				gDPPipeSync(D_8005BB2C++);

				count = D_8004DC5C;
			}

			i++;
		} while (i < count);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80072604_42AB4.s")
#endif

#ifdef NON_MATCHING
// CURRENT(3830)
void func_800728F4_42DA4(s16 arg0, s16 arg1, s16 arg2, f32 arg3) {
	Unk80052B40 spA4;
	s32 unused0;
	s32 unused1;
	s32 unused2;
	s32 unused3;
	s32 unused4;
	s32 unused5;
	s32 unused6;
	s32 unused7;
	s32 unused8;
	s32 unused9;
	Unk80052B40 sp9C;
	Unk80052B40 sp94;
	s32 temp;
	s32 varS3;
	u16 varS4;
	s16 varS5;
	s32 mask;
	Gfx* tempS6;

	temp = (s32) (256.0f * (f32) ((f64) arg3 * D_800AE518_7E9C8));
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
		gSPDisplayList(D_8005BB2C++, tempS6);
		varS5++;
		varS3 += 0x1555;
		gDPPipeSync(D_8005BB2C++);
	} while (varS5 < 0xC);

	D_80094848_64CF8 += 0xB6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800728F4_42DA4.s")
#endif

// Checks if selected inventory item is 0xb (weapon crystals)
#ifdef NON_MATCHING
// CURRENT(2988)
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
	s32 matrixAddr;
	s32 scaleInt;
	s32 displayListAddr;
	f32 itemScale;

	func_800722A4_42754(arg3);

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
	if (D_800AED78[D_800D74AC] == 0) {
		return;
	}

	displayList = itemEntry->displayList;
	if (displayList == NULL) {
		return;
	}

	D_8009484C_64CFC += 0x16C;
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

	func_800039D0_45D0(&sp60, &sp50, &sp58, D_8005BB38);

	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gSPDisplayList(D_8005BB2C++, displayListAddr & 0x1FFFFFFF);
	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80072B68_43018.s")
#endif

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

	func_800722A4_42754();
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800731A8_43658.s")

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

#ifdef NON_MATCHING
// CURRENT(240)
void func_80075B64_46014(u8 arg0) {
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x00, 0x00, 0x00, arg0 & 0xFF);
	gDPPipeSync(D_8005BB2C++);
	gDPFillRectangle(D_8005BB2C++, 0, 0, 320, 240);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80075B64_46014.s")
#endif

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80075D58_46208.s")

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
#ifdef NON_MATCHING
// CURRENT(775)
s32 func_80076504_469B4(void) {
	s32 result;
	s32 fadeResult;
	u8* fadeAlphaPtr;
	u8* fadeColorPtr;

	result = 1;
	func_8007949C_4994C(func_80070390_40840(), 0);

	D_80052ACA = 6;
	D_8004772C = 0xFF;
	D_80047730 = 0x40;
	D_80047734 = 0;
	fadeAlphaPtr = &D_8004773A;
	fadeColorPtr = &D_80047739;
	*fadeAlphaPtr = 0;
	*fadeColorPtr = 0;
	D_80047738 = 0;
	D_800D74AA = 0;
	D_800D6D8C = 1;

	gDPSetAlphaDither(D_8005BB2C++, G_AD_NOISE);
	gDPSetColorDither(D_8005BB2C++, G_CD_BAYER);

	drawText(D_800ADC60, 0xE6, 0xE6, 0xE6, 0xFF);
	func_8007D7E0_4DC90();
	osSyncPrintf(D_800ADC68);
	func_80013684_14284();

	do {
		func_800791A0_49650(1);

		gDPSetAlphaDither(D_8005BB2C++, G_AD_PATTERN);
		fadeResult = func_8007D91C_4DDCC(1);
		gDPFullSync(D_8005BB2C++);
		gSPEndDisplayList(D_8005BB2C++);

		osSendMesg(&D_8006A8B0, &D_800314CC, 1);
		if (fadeResult != 0) {
			result = 2;
			func_80005AEC_66EC(0, 0, 0, 0x10);
		}
	} while (func_80005B30_6730() == 0);

	func_8007C4BC_4C96C();
	func_8007C7F4_4CCA4();

	D_80052ACA = 6;
	D_8004772C = 0xFF;
	D_80047730 = 0x40;
	D_80047734 = 0;
	fadeAlphaPtr = &D_8004773A;
	fadeColorPtr = &D_80047739;
	*fadeAlphaPtr = 0;
	*fadeColorPtr = 0;
	D_80047738 = 0;
	D_800D74AA = 0;
	D_800D6D8C = 1;

	gDPSetAlphaDither(D_8005BB2C++, G_AD_NOISE);
	gDPSetColorDither(D_8005BB2C++, G_CD_BAYER);

	func_8007D7E0_4DC90(fadeAlphaPtr, fadeColorPtr);
	osSyncPrintf(D_800ADC74);

	do {
		func_800791A0_49650(1);

		gDPSetAlphaDither(D_8005BB2C++, G_AD_PATTERN);
		fadeResult = func_8007D91C_4DDCC(2);
		gDPFullSync(D_8005BB2C++);
		gSPEndDisplayList(D_8005BB2C++);

		osSendMesg(&D_8006A8B0, &D_800314CC, 1);
		if (fadeResult != 0) {
			result = 2;
			func_80005AEC_66EC(0, 0, 0, 0x10);
		}
	} while (func_80005B30_6730() == 0);

	D_80052ACA = 3;
	func_800056A8_62A8();
	func_800056A8_62A8();
	func_80070940_40DF0();

	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80076504_469B4.s")
#endif

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

void func_80075B64_46014(s16 arg0);
void func_80076FE0_47490();

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

#ifdef NON_MATCHING
// CURRENT(205)
s32 func_80077204_476B4(void) {
	u32 frameCounter;
	s32 state;
	volatile s16* selectedSaveSlot;

	frameCounter = 0;
	state = 1;

	func_800709F0_40EA0();
	D_800D74A6 = 0x37;
	selectedSaveSlot = &D_800D74A4;
	*selectedSaveSlot = D_800D74A6;

	while (state == 1) {
		if (frameCounter < 0x3E8U) {
			func_80070C64_41114(0x36, 3, (s16)frameCounter);
		}

		if (frameCounter >= 0x21U) {
			func_80070CC4_41174();
			func_8007166C_41B1C();

			if (isButtonNewlyPressed(0, 0x9000) != 0) {
				state = 0;
				if (*selectedSaveSlot == 0x38) {
					state = 2;
				} else {
					state = state;
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80077204_476B4.s")
#endif

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
  D_80090A7D = 0;

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
  D_80090A7D = 0;
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

#ifdef NON_MATCHING
// CURRENT(210)
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
			func_80070C64_41114(0xE, 7, (s16)frameCounter);
		}

		func_80070BD8_41088(0xF, 0x14);

		if (D_80047FA0 > 0) {
			func_80070AEC_40F9C((s16)(D_80047FA0 + 0x10), 0x13);

			if (((D_80048026 & 7) != 7) &&
				(((D_80048026 & 0x38) != 0x38) || (D_80047FA0 < 2)) &&
				(((D_80048026 & 0x1C0) != 0x1C0) || (D_80047FA0 < 3)) &&
				(((D_80048026 & 0xE00) != 0xE00) || (D_80047FA0 < 4))) {
				func_80070A8C_40F3C(0x14);
			}
		} else {
			func_80070AEC_40F9C((s16)(D_80047FA0 + 0x10), 0x14);
		}

		if (frameCounter >= 0x41U) {
			func_80070CC4_41174();
			func_8007166C_41B1C();

			if (isButtonNewlyPressed(0, 0x9000) != 0) {
				selectedSlot = D_800D74A4;
				if (D_800D74A4 == 0x14) {
					state = 3;
				} else {
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80077E88_48338.s")
#endif

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
  osSetTime(*(u64*)&D_80068084);
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

  gfx = D_8005BB2C;
  D_8005BB2C = gfx + 1;
  gfx->words.w1 = 0x20;
  gfx->words.w0 = 0xBA000402;

  gfx = D_8005BB2C;
  D_8005BB2C = gfx + 1;
  gfx->words.w1 = 0x40;
  gfx->words.w0 = 0xBA000602;

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
	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w1 = 0xC0;
	gfx->words.w0 = 0xBA000602;
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
		  if (D_800313D0 == 2) {
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
		  D_800313D0 = 2;
		  currentFrontendState = FE_STATE_INTRO_MOVIE;
		} else if (result == 4) {
		  D_800313D0 = 1;
		  currentFrontendState = FE_STATE_INTRO_MOVIE;
		} else if ((result == 0) || (result == 3)) {
		  D_800313D0 = 0;
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

extern u8 D_40856F0[];
extern u16 D_408A6F0[];
extern u8 D_408A8F0[];
extern u16 D_409E8F0[];
extern u8 D_40A9440[];
extern u16 D_40AAC40[];
void func_80075710_45BC0(void);

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
// CURRENT(20222)
void func_8007949C_4994C(s32 arg0, s32 arg1) {
	s32 i;
	s32 j;
	s16 tempA3;
	s16 tempT0;
	s16 tempT1;
	s16 tempT2;
	Unk80047FB8* entry;
	u8* src;
	u8* dst;
	volatile s32 tempArg1;

	tempArg1 = arg1;
	tempA3 = D_80052A98[0].secondsElapsed;
	tempT0 = D_80052A98[0].humansKilled;
	tempT1 = D_80052A98[1].secondsElapsed;
	tempT2 = D_80052A98[1].humansKilled;

	for (i = 0; i < 5; i++) {
		entry = &D_80047FB8[i];
		if (entry->unk8 < arg0) {
			if (i < 4) {
				for (j = 4; j != i; j--) {
					D_80047FB8[j].unk0 = D_80047FB8[j - 1].unk0;
					D_80047FB8[j].unk1 = D_80047FB8[j - 1].unk1;
					D_80047FB8[j].unk2 = D_80047FB8[j - 1].unk2;
					D_80047FB8[j].unk3 = D_80047FB8[j - 1].unk3;
					D_80047FB8[j].unk4 = D_80047FB8[j - 1].unk4;
					D_80047FB8[j].unk5 = D_80047FB8[j - 1].unk5;
					D_80047FB8[j].unk8 = D_80047FB8[j - 1].unk8;
					D_80047FB8[j].unkC = D_80047FB8[j - 1].unkC;
					D_80047FB8[j].unk10 = D_80047FB8[j - 1].unk10;
				}
			}

			src = D_80047FA8;
			dst = &entry->unk0;
			do {
				*dst++ = *src++;
			} while (src < &D_80047FAE);

			entry->unkC = 0;
			entry->unkC += tempT0;
			entry->unkC += tempT2;
			entry->unk10 = 0;
			entry->unk10 = tempA3;
			entry->unk10 += tempT1;
			entry->unk10 += D_80052A98[2].secondsElapsed;
			entry->unkC += D_80052A98[2].humansKilled;
			entry->unk10 += D_80052A98[3].secondsElapsed;
			entry->unkC += D_80052A98[3].humansKilled;
			entry->unk10 += D_80052A98[4].secondsElapsed;
			entry->unkC += D_80052A98[4].humansKilled;
			entry->unk10 += D_80052A98[5].secondsElapsed;
			entry->unk8 = arg0;
			entry->unkC += D_80052A98[5].humansKilled;
			break;
		}
	}

	(void)tempArg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007949C_4994C.s")
#endif

// displayHighScores
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800796D0_49B80.s")

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

// displayGameOver
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007A038_4A4E8.s")

/**
 * @brief Simple wrapper calling func_8007C7F4_4CCA4.
 */
void func_8007A754_4AC04(void) {
	func_8007C7F4_4CCA4();
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007A774_4AC24.s")

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
// CURRENT(55)
#ifdef NON_MATCHING
void func_8007BEC0_4C370(void) {
	u16 counter;

	counter = 0x4F;
	func_8001355C_1415C();
	D_800D7960 = 0;
	D_800D7962 = 5;

	while (1) {
		func_800791A0_49650(1);
		func_8007A774_4AC24(0);

		if ((D_800D7962 == 0xB) || (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A | BUTTON_START) != 0)) {
			func_80005AEC_66EC(0, 0, 0, 0x40);
		}

		counter--;
		func_80005B84_6784();
		gDPFullSync(D_8005BB2C++);
		gSPEndDisplayList(D_8005BB2C++);
		func_8000505C_5C5C();

		if (func_80005B30_6730() != 0) {
			break;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007BEC0_4C370.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007BFC4_4C474.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007C7F4_4CCA4.s")

#ifdef NON_MATCHING
// CURRENT(5741)
// doSaveBeaconLoop
s32 func_8007CFB4_4D464(s32 arg0) {
	s16 timer;
	s32 selection;

	selection = 0;
	timer = -1;
	gameplayMode = 4;
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
			dl = D_8005BB2C;
			D_8005BB2C = dl + 1;
			dl->words.w0 = 0xBA000E02;
			dl->words.w1 = 0;

			dl = D_8005BB2C;
			D_8005BB2C = dl + 1;
			dl->words.w0 = 0xFCFFFFFF;
			dl->words.w1 = 0xFFFCF279;
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

// doInventoryLoop
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007D2B0_4D760.s")

void func_8007D7E0_4DC90(void) {
	func_8008F574_5FA24();
	func_8007F3EC_4F89C(&D_800D7A68);

	D_80094998_64E48 = 0;
	D_800D7A84 = 0;
	D_80094934_64DE4 = 1;

	D_800D7A18 = D_80095080_65530;
	D_800D7A1C = D_800950C0_65570;
	D_800D7A20 = D_80095698_65B48;
	D_800D7A24 = D_80095910_65DC0;
	D_800D7A28 = D_80096540_669F0;
	D_800D7A2C = D_80095D9C_6624C;
	D_800D7A30 = D_80095DB0_66260;
	D_800D7A34 = D_80096384_66834;
	D_800D7A38 = D_80096528_669D8;
	D_800D7A3C = D_80096370_66820;
	D_800D7A40 = D_80096548_669F8;
	D_800D7A48 = D_800965E8_66A98;
	D_800D7A44 = D_800965D8_66A88;
	D_800D7A4C = D_800965F0_66AA0;

	D_800D7A58 = 0x22;
	D_800D7A8D = 0x0F;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007D91C_4DDCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007E12C_4E5DC.s")

void func_8007EBB0_4F060(void);

#ifdef NON_MATCHING
// CURRENT(450)
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

#ifdef NON_MATCHING
// CURRENT(820)
void func_8007FBF8_500A8(void) {
	s32 temp;
	s32 step;

	if (D_800D7970 == 1) {
		temp = D_800D7971 - D_80094908_64DB8;
		if (temp < 0) {
			D_800D7971 = 0;
			D_800D7970 = 0;
		} else {
			D_800D7971 = temp;
		}
	} else {
		temp = D_800D7971 + D_80094908_64DB8;
		if (temp >= 0x100) {
			D_800D7971 = 0xFF;
		} else {
			D_800D7971 = temp;
		}
	}

	if (D_800D7B0C.unk0 != D_800D7B08.unk0) {
		if (D_800D7B0C.unk0 < D_800D7B08.unk0) {
			step = (s16)D_800D7B08.unk0 - D_8009490C_64DBC;
			if (step < D_800D7B0C.unk0) {
				D_800D7B08.unk0 = D_800D7B0C.unk0;
			} else {
				D_800D7B08.unk0 = step;
			}
		} else {
			step = (s16)D_800D7B08.unk0 + D_8009490C_64DBC;
			if (D_800D7B0C.unk0 < step) {
				D_800D7B08.unk0 = D_800D7B0C.unk0;
			} else {
				D_800D7B08.unk0 = step;
			}
		}
	}

	if (D_800D7B0C.unk1 != D_800D7B08.unk1) {
		if (D_800D7B0C.unk1 < D_800D7B08.unk1) {
			step = (s16)D_800D7B08.unk1 - D_8009490C_64DBC;
			if (step < D_800D7B0C.unk1) {
				D_800D7B08.unk1 = D_800D7B0C.unk1;
			} else {
				D_800D7B08.unk1 = step;
			}
		} else {
			step = (s16)D_800D7B08.unk1 + D_8009490C_64DBC;
			if (D_800D7B0C.unk1 < step) {
				D_800D7B08.unk1 = D_800D7B0C.unk1;
			} else {
				D_800D7B08.unk1 = step;
			}
		}
	}

	if (D_800D7B0C.unk2 != D_800D7B08.unk2) {
		if (D_800D7B0C.unk2 < D_800D7B08.unk2) {
			step = (s16)D_800D7B08.unk2 - D_8009490C_64DBC;
			if (step < D_800D7B0C.unk2) {
				D_800D7B08.unk2 = D_800D7B0C.unk2;
			} else {
				D_800D7B08.unk2 = step;
			}
		} else {
			step = (s16)D_800D7B08.unk2 + D_8009490C_64DBC;
			if (D_800D7B0C.unk2 < step) {
				D_800D7B08.unk2 = D_800D7B0C.unk2;
			} else {
				D_800D7B08.unk2 = step;
			}
		}
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, D_800D7B08.unk0, D_800D7B08.unk1, D_800D7B08.unk2, D_800D7971);
	gDPFillRectangle(D_8005BB2C++, 0, 0, 320, 240);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007FBF8_500A8.s")
#endif

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

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0x01040040;
	dl->words.w1 = D_8005BB38 & 0x1FFFFFFF;

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

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0x01000040;
	dl->words.w1 = D_8005BB38 & 0x1FFFFFFF;

	D_8005BB38 += 0x40;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xBC001C06;
	dl->words.w1 = D_8005BB38 & 0x1FFFFFFF;

	if (D_800D8518 != 0) {
		dl = D_8005BB2C;
		D_8005BB2C = dl + 1;
		dl->words.w0 = ((((u8)D_800D851C * 4) & 0xFFFF) << 8) | 0xBC000006;
		dl->words.w1 = (D_800D8518 & 0xFFFFFF) + D_8006AA70;
	}

	if (D_800D8520 != 0) {
		dl = D_8005BB2C;
		D_8005BB2C = dl + 1;
		dl->words.w0 = ((((u8)D_800D8524 * 4) & 0xFFFF) << 8) | 0xBC000006;
		dl->words.w1 = (D_800D8520 & 0xFFFFFF) + D_8006AA70;
	}

	func_800801BC_5066C((s32)entry, arg0->unk19);

	if ((arg0->unk20 & 0x10) != 0) {
		func_80081290_51740();
	} else {
		dl = D_8005BB2C;
		D_8005BB2C = dl + 1;
		dl->words.w0 = 0x06000000;
		dl->words.w1 = (u32)arg0->unk0;
	}

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w1 = 0;
	dl->words.w0 = 0xBD000000;
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

// CURRENT(310)
#ifdef NON_MATCHING
void func_80080F8C_5143C(AnimChannelState *arg0, s16 *arg1, s32 arg2) {
	f32 zero;
	s16 temp_t9;
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
	if (arg2 != 1) {
		do {
			temp_v1 = &arg0[var_v0];
			temp_v1->unk8 = (f32)arg1[0];
			var_v0 += 1;
			temp_t0 = var_v0 & 0xFF;
			var_v0 = temp_t0;
			arg1 += 8;
			temp_v1->unkC = (f32)arg1[-7];
			temp_t9 = arg1[-6];
			temp_v1->unk0 = 0;
			temp_v1->unk2 = 0;
			temp_v1->unk4 = 0;
			temp_v1->unk30 = 0;
			temp_v1->unk14 = 0;
			temp_v1->unk18 = 0;
			temp_v1->unk1C = zero;
			temp_v1->unk20 = zero;
			temp_v1->unk10 = (f32)temp_t9;
		} while (arg2 != temp_t0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80080F8C_5143C.s")
#endif

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
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xB5000000;
	dl->words.w1 = 0x0000020A;
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xB5000000;
	dl->words.w1 = 0x0004060A;
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xB5000000;
	dl->words.w1 = 0x00080A0A;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80081058_51508.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80081290_51740.s")

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
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xF3000000;

	loadCount = (((arg0->unk14 * arg0->unk15) + 3) >> 2) - 1;
	if (loadCount < 0x7FF) {
		dxt = loadCount;
	} else {
		dxt = 0x7FF;
	}

	lineCount = (s32) arg0->unk14 / 16;
	if (lineCount <= 0) {
		lineCount = 1;
	}
	dxt = (((lineCount + 0x7FF) / lineCount) & 0xFFF) | ((dxt & 0xFFF) << 12) | 0x07000000;
	dl->words.w1 = dxt;

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

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xE45003C0;
	dl->words.w1 = 0;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xB4000000;
	dl->words.w1 = texS << 16;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xB3000000;
	dl->words.w1 = (((s32)(((f32)(32.0 / (f64)(f32)arg2)) * 1024.0f) & 0xFFFF) << 16)
				| ((s32)(((f32)(32.0 / (f64)(f32)arg3)) * 1024.0f) & 0xFFFF);

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
