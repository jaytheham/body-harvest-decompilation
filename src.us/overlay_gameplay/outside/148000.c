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

// Failed - sonnet 4.5
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_801391DC_14818C.s")

// Failed - sonnet 4.5
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_801392FC_1482AC.s")

// Failed - sonnet 4.5
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_801393A0_148350.s")

void func_80139460_148410(void) {
    s32 i;

    for (i = 2; i < 11; i++) {
        if (func_801393A0_148350(i) != 0) {
            D_801601E8 |= 1 << i;
            func_801392FC_1482AC(i);
        }
    }
    D_801601D8 = -1;
}

// Failed - sonnet 4.5
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_801394DC_14848C.s")

// Failed - sonnet 4.5
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013958C_14853C.s")

void func_801396A8_148658(s32 arg0) {
    func_801392FC_1482AC(0xB);
    func_801392FC_1482AC(0xC);
    func_801392FC_1482AC(0xD);
    func_801392FC_1482AC(0xE);
    func_801392FC_1482AC(0x10);
    func_801392FC_1482AC(0x11);
    func_801392FC_1482AC(0xF);
    func_801394DC_14848C();
    func_8013A1CC_14917C();
    
    if (!(D_80257A00[arg0].unk4C & 0x04000000)) {
        D_801601D0 = D_801601D4;
    }
    func_8013B004_149FB4();
    func_800EA2B0_F9260(D_80047948);
    D_80257A00[arg0].weapon1 = D_80031450;
    D_801601DC = 0;
    D_801601E4 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_80139778_148728.s")

s16 func_8013994C_1488FC(u8 arg0) {
    return D_80048140[D_80048138[D_801601B3[arg0 * 4]]];
}

void func_80139984_148934(void) {
    if (D_80047F98 == 0) {
        D_80048140[0] = 0;
        D_80048140[1] = 0;
        D_80048140[2] = -0x8000;
        D_80048140[3] = 0;
        D_80048140[4] = 0;
        D_80048140[5] = 0;
        D_80048140[6] = 0;
        D_80048140[7] = 0;
        D_80048140[8] = -0x8000;
        D_80048140[9] = 0;
        D_80048140[10] = 0;
        D_80048140[11] = -0x8000;
        D_80048140[12] = -0x8000;
        D_80048140[13] = -0x8000;
        D_80048140[14] = 0;
        D_80048140[16] = 0;
        D_80048140[17] = 0;
        D_80048140[15] = 0;
        D_80048140[18] = 0;
        D_80048140[19] = 0;
    } else {
        D_80048140[2] = -0x8000;
        D_80048140[8] = -0x8000;
        D_80048140[11] = -0x8000;
        D_80048140[12] = -0x8000;
        D_80048140[13] = -0x8000;
    }
    if (currentLevel == 5) {
        func_801391DC_14818C(3, 0xA);
        func_801391DC_14818C(5, 0x64);
        func_801391DC_14818C(6, 5);
        if (D_80052ACD & 0x10) {
            func_800A8E18_B7DC8(0x15);
            func_800A8E18_B7DC8(0x15);
            func_800A8E18_B7DC8(0x19);
            func_800A8E18_B7DC8(0x19);
            func_800A8E18_B7DC8(0x17);
            func_800A8E18_B7DC8(0x18);
        }
    }
    if (D_80052ACD & 4) {
        D_80031424[2] = 0xD;
        D_80031424[3] = 0xF;
        D_80031424[4] = 0xB;
        D_80031424[5] = 0x6D;
        D_80031424[6] = 0x66;
        D_80031424[9] = 0x1D;
    } else {
        D_80031424[2] = 1;
        D_80031424[3] = 2;
        D_80031424[4] = 3;
        D_80031424[5] = 4;
        D_80031424[6] = 0x29;
        D_80031424[9] = 0x14;
    }
    func_8001CC6C_1D86C(&D_80145A8C);
}

void func_80139B34_148AE4(void) {
    s32 temp_v1;
    
    D_801601E4 = 0;
    D_801601E0 = 0;
    D_801601DC = 0;
    D_801601D8 = -1;
    temp_v1 = 1;
    *(s32*)&D_80257A1C = temp_v1;
    D_801601D0 = 0;
    D_8004794A = 0;
    D_80047948 = temp_v1;
    D_801601E8 = 0;
    switch (currentLevel) {                         /* irregular */
    default:
        D_8003144C = 0;
        return;
    case 1:
        D_8003144C = 0x5E;
        return;
    case 2:
        D_8003144C = 0x5B;
        return;
    case 3:
        D_8003144C = 0x5A;
        return;
    case 4:
        D_8003144C = 0x5C;
        return;
    }
}

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

// Failed - sonnet 4.5
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013A4C8_149478.s")

// Failed - sonnet 4.5
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013A630_1495E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013A764_149714.s")

void func_8013AF58_149F08(void) {
    u8 i;

    if (D_80157590 != 3) {
        func_8013A630_1495E0();
        if ((D_801601DC == 0) && (D_801601CC > 0)) {
            func_8013A764_149714(D_801601D3);
            return;
        }
        for (i = 0; i < D_801601CC; i++) {
            func_8013A764_149714(i);
        }
    }
}

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

void func_8013B30C_14A2BC(void) {
    s32 old_value;

    old_value = D_801601D0;
    if (D_801601CC != 0) {
        if (!(D_801601D0 < (D_801601CC - 1))) {
            D_801601D0 = 0;
        } else {
            D_801601D0 += 1;
        }
        func_8013B004_149FB4();
        if (old_value != D_801601D0) {
            func_8013B054_14A004();
        }
    }
}

// Failed - sonnet 4.5
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013B384_14A334.s")

// Failed - sonnet 4.5
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013B480_14A430.s")

s32 func_8013B534_14A4E4(void) {
    s32 temp_v0;
    u8 temp_v1;

    temp_v0 = func_8013994C_1488FC(D_801601D3);
    D_8004794A = D_801601B3[D_801601D0 * 4];
    if (D_801601D0 < D_801601CC) {
        temp_v1 = D_80048138[D_8004794A];
        if ((temp_v1 != 0) && (temp_v0 != 0) && (func_8013B480_14A430((s16) temp_v1) != 0)) {
            return 1;
        }
    }
    func_8001CC6C_1D86C(&D_80145AA4, D_801601D0);
    return 0;
}

// Failed - sonnet 4.5
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013B5E4_14A594.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013B688_14A638.s")

s32 func_8013B8C8_14A878(void) {
    if (D_801601DC == 0) {
        return 0;
    }
    return 1;
}
