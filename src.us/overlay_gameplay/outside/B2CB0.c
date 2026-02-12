#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A3D00_B2CB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A3DC8_B2D78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A3E74_B2E24.s")

void func_800A4150_B3100(u8 arg0) {
    s32 temp_v1;
    Unk80048198* temp_v0;

    temp_v0 = (arg0 ) + D_80048198;
    temp_v1 = temp_v0->unk20;
    if (!(temp_v1 & 0x100000) &&
        (temp_v0->unk3D == 0) &&
        !(temp_v1 & 0x4000) &&
        (temp_v1 & 0x1000)) {

        temp_v0->unk20 = (s32) (temp_v1 | 0x4000);
        temp_v0->unk2C = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A41B0_B3160.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A4C28_B3BD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A52F8_B42A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A53C0_B4370.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5554_B4504.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A57E4_B4794.s")

Unk8014F6D0* func_800A5A10_B49C0() {
    s32 i;

    i = 16;
    while (i--) {
        if (D_8014F6D0[i].unkC == -1) {
            return &D_8014F6D0[i];
        }
    }

    return NULL;
}

// activateSaveBeacon?
void func_800A5A50_B4A00(s32 arg0, s32 arg1) {
    s32 sp1C;

    D_8014F800 = 1;
    func_8001CC6C_1D86C(D_80142790, arg0);
    if (D_80151DD0 == 0) {
        D_80047F9C = arg0 + 1;
        sp1C = func_80009F18_AB18(arg1);
        func_80116784_125734();
        if (sp1C == 1) {
            D_80052A98[currentLevel - 1].unk0 = (s32) D_80052B2C->unk30;
            D_80052A98[currentLevel - 1].unk6 = (s16) D_8004816A;
            D_80052A98[currentLevel - 1].unk4 = (s16) ((u32) D_80052A90 / 1000U);
            D_800476A0 = 1;
            return;
        }
        if (sp1C == 2) {
            func_800A5F24_B4ED4(arg0);
        }
    }
}

// checkIfActivatingSaveBeacon?
void func_800A5B30_B4AE0(s32 arg0, s16 arg1) {
    if ((isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A) != 0) &&
        (D_80052B34->unk1A == 0) &&
        (D_8004794C == 0) &&
        (D_80048188 != 1)) {
        func_800A5A50_B4A00((s32) (*(s16*)((u8*)&D_8015FAEE + (arg1 * 0x30)) - 0x1000) / 2, 1);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5BD0_B4B80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5D3C_B4CEC.s")

void func_800A5EA8_B4E58(u8 arg0) {
    func_8001CC6C_1D86C(D_801427D8, arg0);
    D_8013D890 = 1;
    D_8013D894 = arg0;
}

void func_800A5EE8_B4E98(u8 arg0) {
    D_8013D890 = 4;
    D_80157A3C = 0;
    func_800EC450_FB400();
    func_800153D8_15FD8(0xD7);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5F24_B4ED4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A6020_B4FD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A68CC_B587C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A6FD4_B5F84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A70B8_B6068.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A7B84_B6B34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A7C6C_B6C1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A854C_B74FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A8A68_B7A18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A8C44_B7BF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A8E18_B7DC8.s")

void func_800A9238_B81E8() {
    s16* powerupTypePtr = &D_80047F7E + 1;
    s16 powerupType;
    s32 i = 0x10;
    s16 negOne = -1;
    
    while (powerupTypePtr--, i--) {
        powerupType = *powerupTypePtr;
        if (negOne != powerupType) {
            func_8001CC6C_1D86C(D_80142820, powerupType);
            func_800A8E18_B7DC8(*powerupTypePtr);
        }
    }
}


void func_800A92B0_B8260(void) {
    s32 i;
    
    i = 16;
    while (i--) {
        D_8014F6D0[i].unkC = -1;
    } ;
}
