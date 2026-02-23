#include <ultra64.h>
#include "common.h"

// enableCheatAnnull
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

// func_80073428_823D8
void enableCheatDurable() {   
    D_80052B34->unk1C = (u16) vehicleSpecs[D_80052B34->unk1A].hitPoints;
    D_80052B34->unk3C = (s16) (vehicleSpecs[D_80052B34->unk1A].unk61 << 8);
    func_800FD410_10C3C0(&(vehicleSpecs[D_80052B34->unk1A]), &vehicleSpecs[0]);
}

// doWanderingCheatEffect
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_800734AC_8245C.s")

// func_8007364C_825FC
void enableCheatWander(void) {
    func_8007622C_851DC(func_800734AC_8245C);
}

// func_80073670_82620
void enableCheatSnared() {
    D_8004D148 = 0;
}

// func_8007367C_8262C
void enableCheatFreed() {
    D_8004D148 = 1;
}

// func_8007368C_8263C
void enableCheatAlfa(void) {
    func_800A8A68_B7A18((s16) (D_80052B34->unk0 + 0x64), (s16) (D_80052B34->unk2 - 0xFA), D_80052B34->unk4, 0x15);
    func_800A8A68_B7A18((s16) (D_80052B34->unk0 + 0x64), (s16) (D_80052B34->unk2 + 0xFA), D_80052B34->unk4, 0x17);
    func_800A8A68_B7A18((s16) (D_80052B34->unk0 - 0xC8), (s16) (D_80052B34->unk2 - 0xC8), D_80052B34->unk4, 0x18);
    func_800A8A68_B7A18((s16) (D_80052B34->unk0 - 0xC8), (s16) (D_80052B34->unk2 + 0xC8), D_80052B34->unk4, 0x19);
}

// func_8007377C_8272C
void enableCheatSnuffle() {
    D_80052ACD ^= 4;
}

// func_80073794_82744
void enableCheatAward() {
    D_80047FA0 = 5;
}

// func_800737A4_82754
void enableCheatSurreal() {
    D_80159320 ^= 0x80;
}

// func_800737BC_8276C
void enableCheatDefender(void) {
    if (!(D_80052B34->unk20 & 0x80)) {
        func_800E5CF4_F4CA4(2, D_80149441);
        return;
    }
    func_800E5E3C_F4DEC(2, D_80149441);
}

// func_80073814_827C4
void enableCheatBleed() {
    func_80124118_1330C8(D_80052B34, 0x7FFF);
}

// enableCheatSuffer
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_8007383C_827EC.s")

// func_8007391C_828CC
void enableCheatWeasel() {
    D_80052ACD ^= 2;
}

//func_80073934_828E4
void enableCheatUseful() {
    s32 temp_v0;

    temp_v0 = (s16) D_80048026 >> ((currentLevel * 3) - 3);
    if (!(temp_v0 & 1)) {
        D_8004DC5E += 1;
    }
    if (!(temp_v0 & 2)) {
        D_8004DC5E += 1;
    }
    if (!(temp_v0 & 4)) {
        D_8004DC5E += 1;
    }
    D_80048026 |= 7 << ((currentLevel * 3) - 3);
}

// func_800739B8_82968
void enableCheatDwarf() {
    D_80157A3C = 0x68;
}

// func_800739C8_82978
void enableCheatBanana() {
    D_80157A3C = 0x22;
}

// func_800739D8_82988
void enableCheatDundee() {
    func_800EA2BC_F926C();
}

// func_800739F8_829A8
void enableCheatLard() {
    D_8013FCD0 = 1;
}

// func_80073A08_829B8
void enableCheatFeeble() {
    s32 x = D_8013BD04;
    D_8013BD04 = x == 0;
}

// func_80073A20_829D0
#ifdef NON_MATCHING
void addCharToCheatInputBuffer(u8 arg0) {
    u8* var_v0;
    s32 passedStart = 1;

    if (isCheatingEnabled == 0) {
        return;
    }
    
    passedStart &= 1;
    if (passedStart != 0) {
        var_v0 = &cheatInputBuffer[9];
        do {
            passedStart = var_v0 < &cheatInputBuffer[2];
            var_v0 -= 1;
            *(var_v0 + 1) = *(var_v0);
        } while (passedStart == 0);
    }
    cheatInputBuffer[0] = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073A20_829D0.s")
#endif

// initCheating
void func_80073A74_82A24(void) {
    s32 inputBufferIndex;
    u8 saveFileName[7];

    inputBufferIndex = 0xA;
    getSaveFileName(currentSaveFileIndex, saveFileName);
    while (inputBufferIndex--) {
        cheatInputBuffer[inputBufferIndex] = '-';
    }
    D_8014945C = 0;
    if ((saveFileName[0] == 'I') &&
        (saveFileName[1] == 'C') && 
        (saveFileName[2] == 'H') &&
        (saveFileName[3] == 'E') &&
        (saveFileName[4] == 'A') &&
        (saveFileName[5] == 'T')) {
        isCheatingEnabled = 1;
        return;
    }
    isCheatingEnabled = 0;
}

// activateCheat
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073B30_82AE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073B78_82B28.s")
