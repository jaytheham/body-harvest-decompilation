#include <ultra64.h>
#include "common.h"


void func_80139050_148000(void) {
    s32 var_s0;
    u8* var_s1;

    for (var_s1 = D_80048138, var_s0 = 0; var_s0 != 7; var_s0 += 1, var_s1 += 1){
    
        if (var_s0 == D_8004794A) {
            func_8001CC6C_1D86C(&D_80145A30);
        }
        func_8001CC6C_1D86C(&D_80145A38, *var_s1);
    }
    func_8001CC6C_1D86C(&D_80145A3C);
}

void func_801390F4_1480A4(s16 arg0) {
    if (D_80052B34->unk1A == 0) {
        D_80047948 = arg0 - 1;
    }
    D_80257A00[D_80052B34->unk1A].weapon1 = D_80031424[arg0];
}

s32 func_80139150_148100(u8 arg0, u16 arg1) {
        
    if (D_80048140[arg0] == D_80140D40[arg0]) {
        return 0;
    }
    if (D_80048140[arg0] == -0x8000) {
        return 1;
    }
    if (arg1 == -0x8000) {
        D_80048140[arg0] = D_80140D40[arg0];
    }
    D_80048140[arg0] += arg1;
    if (D_80140D40[arg0] < D_80048140[arg0]) {
        D_80048140[arg0] = D_80140D40[arg0];
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_801391DC_14818C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_801392FC_1482AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_801393A0_148350.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_80139460_148410.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_801394DC_14848C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013958C_14853C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_801396A8_148658.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_80139778_148728.s")

s16 func_8013994C_1488FC(u8 arg0) {
    return D_80048140[D_80048138[D_801601B3[arg0 * 4]]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_80139984_148934.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_80139B34_148AE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_80139BF8_148BA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_80139D58_148D08.s")

void func_8013A1CC_14917C(void) {
    if (D_80052B34->unk1A == 0) {
        func_80139BF8_148BA8();
    } else {
        func_80139D58_148D08();
    }
    func_8013B004_149FB4();
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013A218_1491C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013A4C8_149478.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013A630_1495E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013A764_149714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013AF58_149F08.s")

void func_8013B004_149FB4(void) {
    D_8004794A = D_801601B3[D_801601D0 * 4];
    func_801390F4_1480A4(D_80048138[D_8004794A]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013B054_14A004.s")

void func_8013B298_14A248(void) {
    s32 old_value;

    old_value = D_801601D0;
    if (D_801601CC != 0) {
        if (D_801601D0 == 0) {
            D_801601D0 = D_801601CC - 1;
        } else {
            D_801601D0 -= 1;
        }
        func_8013B004_149FB4();
        if (old_value != D_801601D0) {
            func_8013B054_14A004();
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013B30C_14A2BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013B384_14A334.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013B480_14A430.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013B534_14A4E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013B5E4_14A594.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013B688_14A638.s")

s32 func_8013B8C8_14A878(void) {
    if (D_801601DC == 0) {
        return 0;
    }
    return 1;
}
