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

void func_8007364C_825FC(void) {
    func_8007622C_851DC(func_800734AC_8245C);
}

void func_80073670_82620() {
    D_8004D148 = 0;
}

void func_8007367C_8262C() {
    D_8004D148 = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_8007368C_8263C.s")

void func_8007377C_8272C() {
    D_80052ACD ^= 4;
}

void func_80073794_82744() {
    D_80047FA0 = 5;
}

void func_800737A4_82754() {
    D_80159320 ^= 0x80;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_800737BC_8276C.s")

void func_80073814_827C4() {
    func_80124118_1330C8(D_80052B34, 0x7FFF);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_8007383C_827EC.s")

void func_8007391C_828CC() {
    D_80052ACD ^= 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073934_828E4.s")

void func_800739B8_82968() {
    D_80157A3C = 0x68;
}

void func_800739C8_82978() {
    D_80157A3C = 0x22;
}

void func_800739D8_82988() {
    func_800EA2BC_F926C();
}

void func_800739F8_829A8() {
    D_8013FCD0 = 1;
}

void func_80073A08_829B8() {
    s32 x = D_8013BD04;
    D_8013BD04 = x == 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073A20_829D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073A74_82A24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073B30_82AE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073B78_82B28.s")
