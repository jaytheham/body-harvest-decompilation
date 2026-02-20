#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070270_40720.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070390_40840.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070420_408D0.s")

/**
 * @brief Finds a mission entry by mission id stored in `unk26`.
 */
#ifdef NON_MATCHING
MissionData* func_80070494_40944(s16 arg0) {
    s32 i;
    u8* entry;

    entry = &D_800D747A;
    i = 0x29;
    do {
        if (entry[0x26] == arg0) {
            return (MissionData*)entry;
        }
        entry -= 0x2A;
    } while (i--);

    return NULL;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070494_40944.s")
#endif

/**
 * @brief Clears mission frontend byte flag `unk1C` when it equals 1.
 */
#ifdef NON_MATCHING
void func_800704DC_4098C(void) {
    u8* entry;
    s32 i;
    u8 one;

    entry = &D_800D747A;
    i = 0x29;
    one = 1;
    do {
        if (entry[0x1C] == one) {
            entry[0x1C] = 0;
        }
        entry -= 0x2A;
    } while (i--);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800704DC_4098C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070514_409C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800706E8_40B98.s")

/**
 * @brief Finds a mission entry by id, clamps `unk12` to 0x4000, and sets `unk14` to -0x400.
 */
#ifdef NON_MATCHING
void func_800708B8_40D68(s32 arg0) {
    MissionData* entry;

    entry = func_80070494_40944((s16)arg0);
    if (entry != NULL) {
        if (entry->unk12 > 0x4000) {
            entry->unk12 = 0x4000;
        }
        entry->unk14 = -0x400;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800708B8_40D68.s")
#endif

/**
 * @brief Finds a mission entry by id and clears three frontend fields.
 */
#ifdef NON_MATCHING
void func_80070904_40DB4(s32 arg0) {
    MissionData* entry;

    entry = func_80070494_40944((s16)arg0);
    if (entry != NULL) {
        entry->unk14 = 0;
        entry->unk12 = 0;
        entry->unk16 = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070904_40DB4.s")
#endif

/**
 * @brief Resets three per-entry frontend fields across all mission entries.
 */
#ifdef NON_MATCHING
void func_80070940_40DF0(void) {
    register s32 i;
    register MissionData* entry;

    entry = &D_800D6DC0[41];
    i = 0x29;
    do {
        entry->unk14 = 0;
        entry->unk12 = 0;
        entry->unk16 = 0;
        entry--;
    } while (i--);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070940_40DF0.s")
#endif

/**
 * @brief Clears transient mission fields, optionally fetches selected mission data, and tags active save entry state.
 */
#ifdef NON_MATCHING
MissionData* func_80070970_40E20(MissionData* entry, s32 hasSelection) {
    MissionData* selectedEntry;

    entry->unk12 = 0;
    entry->unk14 = 0;
    entry->unk16 = 0;

    if (hasSelection != 0) {
        selectedEntry = func_800706E8_40B98(D_800D74AA);
        if ((currentSaveFileIndex + 2) != selectedEntry->unk26) {
            selectedEntry->unk1C = 0;
        } else {
            selectedEntry->unk1C = 1;
            *(s16*)&selectedEntry->pad27[1] = -1;
        }
        D_800D74AA = 0;
        return selectedEntry;
    }

    D_800D74AA = 0;
    return NULL;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070970_40E20.s")
#endif

/**
 * @brief Scans mission entries in reverse, clears the first entry in state 4, and eases others toward default values.
 */
#ifdef NON_MATCHING
s32 func_800709F0_40EA0(void) {
    s32 i;
    MissionData* entry;

    entry = &D_800D6DC0[41];
    i = 0x29;
    do {
        if (entry->unk16 == 4) {
            func_80070970_40E20(entry, 0);
            return i;
        }

        if (entry->unk12 > 0x4000) {
            entry->unk12 = 0x4000;
        }
        entry->unk14 = -0x400;
        entry--;
    } while (i--);

    return i;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800709F0_40EA0.s")
#endif

/**
 * @brief Sets unk1C=3 in both D_800D6DC0[entry] and D_800909B0[entry.unk26] at matching mission id, returns loop counter.
 */
#ifdef NON_MATCHING
s32 func_80070A8C_40F3C(s16 arg0) {
    s32 temp_v0;
    s32 var_v1;
    MissionData* entry;

    entry = &D_800D747A;
    var_v1 = 0x29;
    while (1) {
        if (arg0 == entry->unk26) {
            D_800909B0[entry->unk26].unk1C = 3;
            entry->unk1C = 3;
        }
        temp_v0 = var_v1;
        entry = (MissionData*)((u8*)entry - 0x2A);
        var_v1 -= 1;
        if (var_v1 == 0) break;
    }
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070A8C_40F3C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070AEC_40F9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80070B68_41018.s")

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

/**
 * @brief Clears a per-entry frontend status byte across a fixed table.
 */
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80072B68_43018.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80072E18_432C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800731A8_43658.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80075710_45BC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80075B64_46014.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80076504_469B4.s")

/**
 * @brief Initializes frontend state: processes mission selection, clears fields, sets state byte, inits audio/renderer systems.
 */
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800768C4_46D74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80076C98_47148.s")

/**
 * @brief Returns constant value 3.
 * Perhaps a mode or configuration value.
 */
s32 func_80076FD8_47488(void) {
    return 3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80076FE0_47490.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007704C_474FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80077204_476B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80077344_477F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80077494_47944.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800776BC_47B6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800779FC_47EAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80077CE0_48190.s")

/**
 * @brief Returns 0. Potentially a stub function.
 */
s32 func_80077E78_48328(s32 arg0, s32 arg1) {
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80077E88_48338.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80078110_485C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80078424_488D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800788E4_48D94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80078968_48E18.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_800796D0_49B80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80079F30_4A3E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007A038_4A4E8.s")

/**
 * @brief Simple wrapper calling func_8007C7F4_4CCA4.
 */
void func_8007A754_4AC04(void) {
    func_8007C7F4_4CCA4();
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007A774_4AC24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007B618_4BAC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007B900_4BDB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007BB0C_4BFBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007BC90_4C140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007BD98_4C248.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007BEC0_4C370.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007BFC4_4C474.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007C4BC_4C96C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007C764_4CC14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007C7F4_4CCA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007CFB4_4D464.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007D2B0_4D760.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007D7E0_4DC90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007D91C_4DDCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007E12C_4E5DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007EA0C_4EEBC.s")

/**
 * @brief Increments global counter D_80094900.
 */
void func_8007EB98_4F048(void) {
    D_80094900++;
}

void func_8007EBB0_4F060(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007EBB8_4F068.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8007EE0C_4F2BC.s")

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

/**
 * @brief Clears certain fields in FrontendStruct.
 */
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
/**
 * @brief Sets D_800D7971 to -1 if lower byte of arg0 is 1, otherwise 0.
 */
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_8008035C_5080C.s")

/**
 * @brief Copies position/transform fields from a source entry into the indexed slot in the D_800D7A1C array.
 */
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80080588_50A38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80080668_50B18.s")

/**
 * @brief Clears all frontend stream slots and nulls their owner pointers.
 */
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

/**
 * @brief Releases a frontend stream slot pointer and clears its stream data pointer.
 */
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

/**
 * @brief Advances the D_800D7A4C-based ring buffer index (0-3 cycle), reads slot data at +0x20, and sets D_800D8524 mode flag.
 */
#ifdef NON_MATCHING
void func_80081F9C_5244C(void) {
    D_800D8524 = 0xF;
    D_800D8520 = ((s32*)(D_800D7A4C + D_800949D4 * 8))[8];
    D_800949D4 = (u8)((s32)(D_800949D4 + 1) % 4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80081F9C_5244C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80081FF0_524A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80082074_52524.s")
