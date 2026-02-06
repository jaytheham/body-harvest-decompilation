#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_800731B0_82160.s")

// func_800732C8_82278
void enableCheatFarewell() {
    D_80052AC8 = 2;
    D_80052AD0 = 0;
}

// func_800732E0_82290
void enableCheatArsenal() {
    func_801391DC_14818C(5, 0x3E7); // a0 = itemId, a1 = quantity. Machine gun
    if (currentLevel == LEVEL_GREECE) {
        func_801391DC_14818C(7, 3); // T. N. T.
        func_801391DC_14818C(8, -0x8000); // Sunshield
        func_801391DC_14818C(0xA, 0x64); // Tri-Spinner
        return;
    }
    if (currentLevel == LEVEL_JAVA) {
        func_801391DC_14818C(3, 0x64);
        func_801391DC_14818C(4, 0x32);
        func_801391DC_14818C(9, 0x14);
        func_801391DC_14818C(0xA, 0x64);
        return;
    }
    if (currentLevel == LEVEL_AMERICA) {
        func_801391DC_14818C(3, 0x64);
        func_801391DC_14818C(4, 0x32);
        func_801391DC_14818C(0xA, 0x64);
        return;
    }
    if (currentLevel == LEVEL_SIBERIA) {
        func_801391DC_14818C(3, 0x64);
        func_801391DC_14818C(4, 0x32);
        func_801391DC_14818C(6, 0x19);
        func_801391DC_14818C(0xA, 0x64);
        return;
    }
    func_801391DC_14818C(3, 0x64);
    func_801391DC_14818C(4, 0x32);
    func_801391DC_14818C(6, 0x19);
    func_801391DC_14818C(7, 3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073428_823D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_800734AC_8245C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_8007364C_825FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073670_82620.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_8007367C_8262C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_8007368C_8263C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_8007377C_8272C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073794_82744.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_800737A4_82754.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_800737BC_8276C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073814_827C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_8007383C_827EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_8007391C_828CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073934_828E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_800739B8_82968.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_800739C8_82978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_800739D8_82988.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_800739F8_829A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073A08_829B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073A20_829D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073A74_82A24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073B30_82AE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073B78_82B28.s")
