#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A3D00_B2CB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A3DC8_B2D78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A3E74_B2E24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A4150_B3100.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A41B0_B3160.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A4C28_B3BD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A52F8_B42A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A53C0_B4370.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5554_B4504.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A57E4_B4794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5A10_B49C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5A50_B4A00.s")

// checkIfActivatingSaveBeacon?
void func_800A5B30_B4AE0(s32 arg0, s16 arg1) {
    if ((isButtonNewlyPressed(0, BUTTON_A) != 0) &&
        (D_80052B34->unk1A == 0) &&
        (D_8004794C == 0) &&
        (D_80048188 != 1)) {
        func_800A5A50_B4A00((s32) (*(s16*)((u8*)&D_8015FAEE + (arg1 * 0x30)) - 0x1000) / 2, 1);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5BD0_B4B80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5D3C_B4CEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5EA8_B4E58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5EE8_B4E98.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A9238_B81E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A92B0_B8260.s")
