#include <ultra64.h>
#include "common.h"

typedef enum FrontEndState
{
    FE_STATE_INTRO_CUTSCENE = 0,
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070270_40720.s")

// calculatePlayersTotalScore
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070390_40840.s")

// Stores the current level's play time in seconds and returns the total play time across all levels.
#ifdef NON_MATCHING
s32 func_80070420_408D0(void) {
    D_80052A98[currentLevel - 1].secondsElapsed = (u16)((u32)D_80052A90 / 1000U);

    return D_80052A98[0].secondsElapsed + D_80052A98[1].secondsElapsed + D_80052A98[2].secondsElapsed +
           D_80052A98[3].secondsElapsed + D_80052A98[4].secondsElapsed + D_80052A98[5].secondsElapsed;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070420_408D0.s")
#endif

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070514_409C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800706E8_40B98.s")

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

/**
 * @brief Resets three per-entry frontend fields across all mission entries.
 */
#ifdef NON_MATCHING
void func_80070940_40DF0(void) {
    register s32 i;

    i = 0x29; do {
        D_800D6DC0[i].unk14 = 0;
        D_800D6DC0[i].unk12 = 0;
        D_800D6DC0[i].unk16 = 0;
    } while (i--);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070940_40DF0.s")
#endif

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
      *((s16 *) (&selectedEntry->pad27[1])) = -1;
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
  var_v1 = 0x29;   do
  {
    if (arg0 == D_800D6DC0[var_v1].unk26)
    {
      D_800909B0[D_800D6DC0[var_v1].unk26].unk1C = 3;
      D_800D6DC0[var_v1].unk1C = 3;
    }
    temp_v0 = var_v1;
  }
  while (var_v1--);
}

#ifdef NON_MATCHING
void func_80070AEC_40F9C(s16 arg0, s16 arg1) {
    MissionData *entry;
    u8 missionId;
    s32 i;

    entry = &D_800D747A;
    i = 41;
    do {
        missionId = entry->unk26;
        if (missionId <= arg1 && missionId >= arg0) {
            D_800909B0[missionId].unk1C = 3;
            entry->unk1C = 3;
        }
        entry--;
    } while (i--);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070AEC_40F9C.s")
#endif

#ifdef NON_MATCHING
void func_80070B68_41018(s16 arg0) {
    s32 i;
    MissionData* entry;

    entry = &D_800D747A;
    i = 0x29;
    do {
        if (arg0 == entry->unk26 && entry->unk1C == 3) {
            D_800909B0[entry->unk26].unk1C = 0;
            entry->unk1C = 0;
            *(s16*)&entry->pad27[1] = 0;
        }
        entry--;
    } while (i--);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070B68_41018.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070BD8_41088.s")

/**
 * @brief If arg2 is divisible by 8 and arg2/8 is less than arg1, calls func_80070514 to process the resulting slot index.
 */
#ifdef NON_MATCHING
void func_80070C64_41114(s16 arg0, s16 arg1, s16 arg2) {
    s32 temp_v0;

    if (!(arg2 & 7)) {
        temp_v0 = arg2 >> 3;
        if (temp_v0 < arg1) {
            func_80070514_409C4((s16)(temp_v0 + arg0));
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070C64_41114.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070CC4_41174.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800710D8_41588.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007166C_41B1C.s")

#ifdef NON_MATCHING
void func_80071738_41BE8(void) {

    s32 i;

    i = 0x29;
    do {
        D_800D6DC0[i].unk16 = 0;
    } while (i--);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80071738_41BE8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80071760_41C10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80071900_41DB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80071E80_42330.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800722A4_42754.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80072604_42AB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800728F4_42DA4.s")

// Checks if selected inventory item is 0xb (weapon crystals)
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80072B68_43018.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80072E18_432C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800731A8_43658.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80075710_45BC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80075B64_46014.s")

// Show version info on title screen if slot 3 named GRIMLN
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80075C84_46134.s")

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

// displayCometExplodesCutscene
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80076504_469B4.s")

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

// doIntroCutsceneLoop
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800768C4_46D74.s")

// Called once before showing the 'Select Slot' screen
// doFileSelectLoop
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80076C98_47148.s")

s32 func_80076FD8_47488(void) {
    return 3;
}

/**
 * @brief Copies tiled framebuffer data from a strided source to a contiguous destination.
 * NON_MATCHING: regalloc only - cfe temp from while(counter--) goes to t0 instead of a0.
 */
#ifdef NON_MATCHING
void func_80076FE0_47490(s32* arg0, s32* arg1) {
    s32* src;
    s32* dst;
    s32 i, j, k, l;

    src = arg0;
    dst = arg1;
    i = 7;
    do {
        j = 9;
        do {
            k = 0x1F;
            do {
                l = 0xF;
                do {
                    *dst++ = *src++;
                } while (l--);
                src += 0x90;
            } while (k--);
            src -= 0x13F0;
        } while (j--);
        src += 0x1360;
    } while (i--);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80076FE0_47490.s")
#endif

// doPressStartLoop
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007704C_474FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80077204_476B4.s")

// displaySelectFileDifficulty
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80077344_477F4.s")

// doDeleteFile
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80077494_47944.s")

// doCopyFile
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800776BC_47B6C.s")

// doFileDetailsLoop
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800779FC_47EAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80077CE0_48190.s")

s32 func_80077E78_48328(s32 arg0, s32 arg1) {
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80077E88_48338.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80078110_485C0.s")

// doChooseFileNameLoop
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80078424_488D4.s")

// startFile (unused?)
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800788E4_48D94.s")

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
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800789E4_48E94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800791A0_49650.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007949C_4994C.s")

// displayHighScores
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800796D0_49B80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80079F30_4A3E0.s")

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
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007B618_4BAC8.s")

// displayCopyright
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007B900_4BDB0.s")

// displayPublisherLogo
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007BB0C_4BFBC.s")

// displayNoControllerNotice
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007BC90_4C140.s")

// displayWrongConsoleRegionNotice
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007BD98_4C248.s")

// displayDmaLogo
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007BEC0_4C370.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007BFC4_4C474.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007C4BC_4C96C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007C764_4CC14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007C7F4_4CCA4.s")

// doSaveBeaconLoop
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007CFB4_4D464.s")

// doInventoryLoop
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007D2B0_4D760.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007D7E0_4DC90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007D91C_4DDCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007E12C_4E5DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007EA0C_4EEBC.s")

void func_8007EB98_4F048(void) {
    D_80094900++;
}

void func_8007EBB0_4F060(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007EBB8_4F068.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007EEE0_4F390.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007F188_4F638.s")

void func_8007F3EC_4F89C(FrontendStruct* arg0) {
    arg0->unk12 = 0;
    arg0->unk10 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007F3F8_4F8A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007F580_4FA30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007F830_4FCE0.s")

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

#ifdef NON_MATCHING
void func_8007FBC8_50078(s32 arg0) {
    if ((u8)arg0 == 1) {
        D_800D7971 = -1;
    } else {
        D_800D7971 = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007FBC8_50078.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007FBF8_500A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007FE8C_5033C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800801BC_5066C.s")

// Called during start cutscene, mostly before scene changes
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8008035C_5080C.s")

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
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80080588_50A38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80080668_50B18.s")

#ifdef NON_MATCHING
void func_8008098C_50E3C(void) {
    s32 i;

    i = 0;
    do {
        D_800D8550[i] = NULL;
        D_800D8578[i].unk50 = 0;
        i++;
    } while (i < 10);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8008098C_50E3C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800809DC_50E8C.s")

#ifdef NON_MATCHING
void func_80080A84_50F34(FrontendStreamSlot* arg0) {
    s32 index;

    if (arg0 != NULL) {
        index = (arg0 - D_800D8578);
        D_800D8550[index] = NULL;
        D_800D8578[index].unk50 = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80080A84_50F34.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80080AD4_50F84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80080B80_51030.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80080F8C_5143C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80081058_51508.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80081290_51740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800819C0_51E70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80081A50_51F00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80081CAC_5215C.s")

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
    if ((f64)absVal < D_800AEA68) {
        D_800D8528 = 0.0f;
        return;
    }
    D_800D8528 = (f32)((f64)D_800D8528 - (f64)D_800D8528 * 0.125);
    D_800D8528 = -D_800D8528;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80082074_52524.s")
