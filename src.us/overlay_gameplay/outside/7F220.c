#include <ultra64.h>
#include "common.h"


s32 func_80070270_7F220(s32 arg0) {
    if (arg0 != 7) {
        if (arg0 == 8) {
            func_800720F4_810A4();
            D_800476A2 = 1;
        }
    } else {
        func_800720F4_810A4();
    }
    return 0;
}

#ifdef NON_MATCHING
void func_800702C0_7F270(s16 arg0) {
    u32 currentTick;
    u32 referenceTick;
    u64 elapsedMicro;
    u64 m1m = 1000000ULL;

    currentTick = osGetCount();
    
    if (arg0 == 1) {
        referenceTick = currentTick;
    } else if (arg0 == 2) {
        referenceTick = currentTick;
        D_80052A90 = 0;
    } else {
        if (arg0 == 0) {
            referenceTick = D_80149444;
        } else {
            referenceTick = D_80149444;
        }
    }

    if (currentTick < referenceTick) {
        referenceTick++;
    }

    D_80149444 = referenceTick;
    
    elapsedMicro = (u64)(currentTick - referenceTick) * m1m / D_80035610;

    if (gameplayMode == GAMEPLAY_MODE_UNK1) {
        D_80052A90 += (u32)elapsedMicro / 1000U;
    }
    
    D_80149444 = currentTick;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/7F220/func_800702C0_7F270.s")
#endif

s32 func_800703B0_7F360(s16 arg0, s16 arg1) {
    s32 var_v1;

    var_v1 = 
        arg0 >= (D_80149434 - 0x800) &&
        arg1 >= (D_80149436 - 0x900) &&
        (D_80149434 + 0x700) >= arg0 &&
        (D_80149436 + 0x700) >= arg1;
    return var_v1;
}

void func_80070420_7F3D0(func_80070420_7F3D0_UnkArg0* arg0) {
    func_8007679C_8574C(arg0->unk9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/7F220/func_80070440_7F3F0.s")

void func_80070BFC_7FBAC(void) {
    Gfx *new_var;
    Gfx *new_var2;
    Gfx *dl;
    Gfx *new_var3;
    func_80011E14_12A14(D_80047F93);
    func_80004CC8_58C8();
    func_80004D38_5938();
    D_80052B2C = &D_80052AE8;

    new_var2 = D_8005BB2C;
    dl = new_var2;
    D_8005BB2C++;
    new_var = D_8005BB2C;
    dl->words.w0 = 0xBC000404;
    dl->words.w1 = 4;

    dl = new_var;
    dl = D_8005BB2C;
    D_8005BB2C++;
    dl->words.w1 = 4;
    dl->words.w0 = 0xBC000C04;

    dl = D_8005BB2C;
    D_8005BB2C++;
    dl->words.w0 = 0xBC001404;
    dl->words.w1 = 0xFFFC;

    new_var3 = D_8005BB2C;
    dl = new_var3;
    D_8005BB2C++;
    dl->words.w1 = 0xFFFC;
    dl->words.w0 = 0xBC001C04;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/7F220/func_80070CC0_7FC70.s")

#ifdef NON_MATCHING
void* func_80070FB8_7FF68(void) {
    s32 temp_a2;
    Gfx *temp_v1;
    u32 new_var;
    Gfx *temp_v1_2;
    s32 temp_num;

    temp_v1 = D_8005BB2C;

    D_8005BB2C = temp_v1 + 1;
    temp_v1->words.w0 = 0xF8000000;
    temp_v1->words.w1 = (s32) ((((D_80047743 << 0x18) | (D_80047744 << 0x10)) | (D_80047745 << 8)) | (D_800313F4 & 0xFF));

    temp_v1_2 = D_8005BB2C;
    D_8005BB2C++;

    temp_v1_2->words.w0 = 0xBC000008;
    temp_a2 = D_800313FC - D_800313F8;
    temp_num = (new_var = D_800313F8 * (-0x100)) + 0x1F400;
    temp_v1_2->words.w1 = (((0x1F400 / temp_a2) & 0xFFFF) << 0x10) | ((temp_num / temp_a2) & 0xFFFF);

    return temp_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/7F220/func_80070FB8_7FF68.s")
#endif

void func_800710D4_80084(u8 arg0, u8 arg1, u8 arg2) {
    Gfx *temp_v1 = D_8005BB2C;
    Gfx *temp_v1_2 = D_8005BB2C;

    D_8005BB2C++;
    temp_v1->words.w0 = 0xF8000000; temp_v1->words.w1 = ((((arg0 << 14) << 10) | ((arg1 & 0xFF) << 0x10)) | ((arg2 & 0xFF) << 8)) | 0xFF; arg0 = arg0;
    temp_v1_2 = D_8005BB2C;
    D_8005BB2C++;
    temp_v1_2->words.w0 = 0xBC000008; temp_v1_2->words.w1 = 0x05000500;
}

void func_80071148_800F8(u8 arg0, u8 arg1) {
    D_80149448 = 1;
    D_80149449 = arg0;
    D_8014944A = arg1;
    D_8014944B = arg1;
}

void func_80071178_80128(void) {
    if ((s32) D_80149449 > 0) {
        if ((s32) D_8014944A > 0) {
            if (D_80149448 == 1) {
                func_800710D4_80084(0xBE, 0xBE, 0xFF);
                D_8014944A -= 1;
                return;
            }
            D_8014944A -= 1;
            return;
        }
        if (D_80149448 == 1) {
            D_80149449 -= 1;
        }
        D_80149448 = 1 - D_80149448;
        D_8014944A = D_8014944B;
    }
}

#ifdef NON_MATCHING
void func_80071228_801D8(void) {
    Gfx* dl;
    Gfx* savedDl31200;
    Gfx* savedDl311D0;
    s32 savedX;
    s32 savedY;
    s32 savedZ;
    s32 phase;
    s32 offset;
    s32 halfOffset;
    s32 level;
    u32 segAddr31160;
    u32 matrixBase;

    func_800E8890_F7840();

    segAddr31160 = ((u32)&D_80031160) & 0x1FFFFFFF;
    savedDl31200 = D_80031200;

    dl = D_8005BB2C++;
    dl->words.w0 = 0x01020040;
    dl->words.w1 = segAddr31160;

    dl = D_8005BB2C++;
    dl->words.w0 = 0xB7000000;
    dl->words.w1 = 0x00020000;

    dl = D_8005BB2C++;
    dl->words.w0 = 0x06000000;
    dl->words.w1 = (u32)savedDl31200;

    func_80070FB8_7FF68();
    func_800B9DB8_C8D68(0);
    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80140DD8);
    }

    func_800B19F8_C09A8();
    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80140DEC);
    }

    if (D_80052ACB == 0) {
        func_800E94B8_F8468(D_80140EA0);
        if (currentControllerStates[0].button == 0x30) {
            osSyncPrintf(D_80140E08);
        }

        func_8007BEC0_8AE70();
        if (currentControllerStates[0].button == 0x30) {
            osSyncPrintf(D_80140E1C);
        }

        func_800EA12C_F90DC();
        if (currentControllerStates[0].button == 0x30) {
            osSyncPrintf(D_80140E3C);
        }

        func_800F97FC_1087AC();
        if (currentControllerStates[0].button == 0x30) {
            osSyncPrintf(D_80140E58);
        }

        func_800DD5E0_EC590();
        if (currentControllerStates[0].button == 0x30) {
            osSyncPrintf(D_80140E6C);
        }

        func_800EA088_F9038();
        if (currentControllerStates[0].button == 0x30) {
            osSyncPrintf(D_80140E88);
        }
    } else {
        osSyncPrintf(D_80140EA0);
    }

    if (D_80052ACB == 2) {
        return;
    }

    func_800F98C0_108870();
    if (D_80052ACB == 2) {
        return;
    }

    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80140EC0);
    }

    dl = D_8005BB2C++;
    dl->words.w0 = 0xB7000000;
    dl->words.w1 = 0x2000;

    dl = D_8005BB2C++;
    dl->words.w0 = 0x06000000;
    dl->words.w1 = (u32)D_800311D0;

    dl = D_8005BB2C++;
    dl->words.w0 = 0xB900031D;
    dl->words.w1 = 0xC8112478;

    dl = D_8005BB2C++;
    dl->words.w0 = 0xE7000000;
    dl->words.w1 = 0;

    savedDl311D0 = D_800311D0;
    func_80124D60_133D10();
    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80140ED0);
    }

    if (D_80052ACB == 2) {
        return;
    }

    if (D_80052ACA != 2) {
        func_8007764C_865FC();
        if (currentControllerStates[0].button == 0x30) {
            osSyncPrintf(D_80140EE4);
        }
    }

    if (D_80052ACB == 2) {
        return;
    }

    func_8010065C_10F60C(0);
    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80140EF8);
    }

    if (D_80052ACB == 2) {
        return;
    }

    func_80101C14_110BC4();
    if (D_80052ACB == 2) {
        return;
    }

    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80140F10);
    }

    if (D_80157590 != 0) {
        func_8010065C_10F60C(1);
    }

    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80140F28);
    }

    if (D_80052ACB == 2) {
        return;
    }

    if ((D_80052ACA != 2) || (currentLevel == LEVEL_COMET)) {
        phase = D_80052A8C;
        if (D_80159320 & 0x80) {
            savedX = D_800311A0.unk0;
            savedY = D_800311A0.unk2;
            savedZ = D_800311A0.unk4;

            offset = (s32) (((f64) (f32) sins((D_80052A8C << 12) & 0xFFFF) / 32768.0) * 32.0);
            halfOffset = offset >> 1;

            D_800311A0.unk2 += offset;
            D_800311A0.unk0 -= halfOffset;
            D_800311A0.unk4 -= halfOffset;
            phase = offset;
        }

        func_80118774_127724(phase);

        if (D_80159320 & 0x80) {
            D_800311A0.unk0 = savedX;
            D_800311A0.unk2 = savedY;
            D_800311A0.unk4 = savedZ;
        }

        if (currentControllerStates[0].button == 0x30) {
            osSyncPrintf(D_80140F40);
        }
    }

    if (D_80052ACB == 2) {
        return;
    }

    func_8007C044_8AFF4();
    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80140F58);
    }

    if (D_80052ACB == 2) {
        return;
    }

    func_8012D884_13C834();
    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80140F70);
    }

    if (D_80052ACB == 2) {
        return;
    }

    level = currentLevel;
    if (level == LEVEL_COMET) {
        func_802D4CD0_18D7E0(0x11, 0);
        level = currentLevel;
    }
    if (level == LEVEL_AMERICA) {
        func_802D4CD0_18D7E0(0xE, 0);
    }

    if (D_80052ACB == 2) {
        return;
    }

    func_800A70B8_B6068();
    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80140F84);
    }

    if (D_80052ACB == 2) {
        return;
    }

    func_801365E0_145590();
    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80140F98);
    }
    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80140FB0);
    }

    if (D_80052ACB == 2) {
        return;
    }

    if (D_80157590 == 0) {
        dl = D_8005BB2C++;
        dl->words.w0 = 0x06000000;
        dl->words.w1 = (u32) D_80031230;

        func_800A3490_B2440(D_80159020);

        dl = D_8005BB2C++;
        dl->words.w0 = 0x06000000;
        dl->words.w1 = (u32) savedDl31200;

        dl = D_8005BB2C++;
        dl->words.w0 = 0x01020040;
        dl->words.w1 = segAddr31160;

        dl = D_8005BB2C++;
        dl->words.w0 = 0xBA000E02;
        dl->words.w1 = 0x8000;

        dl = D_8005BB2C++;
        dl->words.w0 = 0xB7000000;
        dl->words.w1 = 0x10204;

        dl = D_8005BB2C++;
        dl->words.w0 = 0xB900031D;
        dl->words.w1 = 0xC8112478;

        dl = D_8005BB2C++;
        dl->words.w0 = 0xBA001402;
        dl->words.w1 = 0x100000;

        dl = D_8005BB2C++;
        dl->words.w0 = 0xFCFFFFFF;
        dl->words.w1 = 0xFFFE7838;

        dl = D_8005BB2C++;
        dl->words.w0 = 0xBA000C02;
        dl->words.w1 = 0x2000;

        dl = D_8005BB2C++;
        dl->words.w0 = 0xBB000001;
        dl->words.w1 = 0x80008000;

        dl = D_8005BB2C++;
        dl->words.w0 = 0xE7000000;
        dl->words.w1 = 0;

        dl = D_8005BB2C++;
        dl->words.w0 = 0xB7000000;
        dl->words.w1 = 0x22001;

        func_80071178_80128();
        func_8010065C_10F60C(1);
        func_80070FB8_7FF68();

        dl = D_8005BB2C++;
        dl->words.w0 = 0xBA001402;
        dl->words.w1 = 0;
    }

    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80140FC4);
    }

    dl = D_8005BB2C++;
    dl->words.w0 = 0xBA000E02;
    dl->words.w1 = 0;

    dl = D_8005BB2C++;
    dl->words.w0 = 0xB6000000;
    dl->words.w1 = 0x20000;

    dl = D_8005BB2C++;
    dl->words.w0 = 0xE7000000;
    dl->words.w1 = 0;

    dl = D_8005BB2C++;
    dl->words.w0 = 0x01020040;
    dl->words.w1 = segAddr31160;

    if (D_80052ACB == 2) {
        return;
    }

    func_800E71F8_F61A8();
    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80140FDC);
    }

    if (D_80052ACB == 2) {
        return;
    }

    func_800BA5B0_C9560(0, 1);
    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80140FF4);
    }

    if (D_80052ACB == 2) {
        return;
    }

    func_800BD360_CC310();
    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_8014100C);
    }

    if (D_80052ACB == 2) {
        return;
    }

    if (D_80052ACA != 2) {
        func_800BB5E0_CA590();
    }

    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80141020);
    }

    if (D_80052ACB == 2) {
        return;
    }

    if (D_80052ACB != 2) {
        func_800E7234_F61E4(D_80141034);
    } else {
        osSyncPrintf(D_80141034);
    }

    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80141050);
    }

    if (D_80052ACB == 2) {
        return;
    }

    dl = D_8005BB2C++;
    dl->words.w0 = 0x06000000;
    dl->words.w1 = (u32) D_80031230;

    func_800E5044_F3FF4();
    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80141068);
    }

    if (D_80052ACB == 2) {
        return;
    }

    func_800A2B58_B1B08();
    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_8014107C);
    }

    if (D_80052ACB == 2) {
        return;
    }

    dl = D_8005BB2C++;
    dl->words.w0 = 0x03800010;
    dl->words.w1 = ((u32) D_8005BB24) & 0x1FFFFFFF;

    guPerspective((void*) (D_8005BB20 + 0x140), &D_801493D6, (f32) D_80149404, 1.3333334f, 10.0f, D_801411A4, 1.0f);

    dl = D_8005BB2C++;
    dl->words.w0 = 0xBC00000E;
    dl->words.w1 = D_801493D6;

    dl = D_8005BB2C++;
    dl->words.w0 = 0x06000000;
    dl->words.w1 = (u32) savedDl311D0;

    matrixBase = (u32) D_8005BB20;

    dl = D_8005BB2C++;
    dl->words.w0 = 0x01030040;
    dl->words.w1 = (matrixBase + 0x140) & 0x1FFFFFFF;

    dl = D_8005BB2C++;
    dl->words.w0 = 0x01010040;
    dl->words.w1 = (matrixBase + 0x200) & 0x1FFFFFFF;

    func_800A03FC_AF3AC();

    if (currentControllerStates[0].button == 0x30) {
        osSyncPrintf(D_80141090);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/7F220/func_80071228_801D8.s")
#endif

void func_80071E88_80E38(Unk80052B2C* arg0) {
    D_80149430 = (s16) arg0->unkC;
    D_80149432 = (s16) arg0->unk14;
    D_80149434 = arg0->unk3C;
    D_80149436 = arg0->unk3E;
    D_80047954 = (f32) arg0->unk0 * 0.25;
    D_80047958 = (f32) arg0->unk4 * 0.25;
    D_8004795C = (f32) arg0->unk8 * 0.25;
}

void func_80071F28_80ED8(void) {
    D_80052B34 = D_80052B2C->unk38;
    D_80149440 = D_80052B2C->unk34;
    func_80071228_801D8();
    func_801052E8_114298(D_80052B2C, &currentControllerStates);
    D_80149406 = -D_80149406;
    if (D_80149406 > 0) {
        D_80149406 -= (s16) D_80149406 >> 1;
        D_80149406 -= 1;
    }
    if (D_80149406 >= 0x12D) {
        D_80149406 = 0x12C;
    }
    func_800BDDCC_CCD7C();
    func_800074F4_80F4();
    func_800BD8B8_CC868();
    func_800E72A0_F6250();
    func_8012B26C_13A21C();
    func_80113CEC_122C9C();
    func_80112F98_121F48();
    if ((D_8004D148 != 0) && (D_80159260 == 0)) {
        func_800F4DB0_103D60();
        func_800AE6CC_BD67C();
        func_8007AAEC_89A9C();
    }
    func_800FB504_10A4B4();
    func_800A1924_B08D4();
    func_800A1A18_B09C8();
    func_8012E258_13D208();
    func_8011A604_1295B4();
    func_800A854C_B74FC();
    func_800A7C6C_B6C1C();
    if (currentLevel == LEVEL_COMET) {
        func_802D4CD0_18D7E0(0x12, 0);
    }
    func_80075AA4_84A54();
    func_800A68CC_B587C();
    func_8013B688_14A638();
    func_800BE5C0_CD570();
    func_800BED30_CDCE0();
    func_802D4CD0_18D7E0(0x45, 0);
}

void func_800720B8_81068(void) {
    D_80052B34 = D_80052B2C->unk38;
    D_80149440 = D_80052B2C->unk34;
    func_80071228_801D8();
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/7F220/func_800720F4_810A4.s")
