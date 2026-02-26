#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80073DC0_82D70.s")

// Resets a bunch of memory? For missions?
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074204_831B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_8007447C_8342C.s")

#ifdef NON_MATCHING
s32 func_800744E0_83490(s32 arg0) {
    s32 var;
    var = arg0 & 0xFF;
    if (var >= 0x9C) {
        return var < 0xA6;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800744E0_83490.s")
#endif

// readMissionByteWithIncrement
#ifdef NON_MATCHING
u8 func_80074500_834B0() {
    s32 temp_t6;
    volatile u8 *var_a0;
    u8 *new_var;

    new_var = D_801494B8;
    var_a0 = &D_801494BC;
    temp_t6 = (*new_var) & 0xFFu;
    D_801494B8++;
    *var_a0 = temp_t6;
    if (0) { }
    return temp_t6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074500_834B0.s")
#endif

// readMissionByteWithIncrementCopy
#ifdef NON_MATCHING
s8 func_8007452C_834DC(void) {
    u8* var_v1;
    u8 temp_t6;
    volatile u8* var_a0;
    s32 var_v0;

    var_v1 = D_801494B8;
    var_a0 = &D_801494BC;
    temp_t6 = *var_v1;
    D_801494B8 = var_v1 + 1;
    *var_a0 = temp_t6;
    var_v0 = temp_t6 & 0xFF;
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_8007452C_834DC.s")
#endif

// readMissionByteWithoutIncrement
u8 func_80074558_83508(void) {
    D_801494BC = *D_801494B8;
    return D_801494BC;
}

// readMissionObject
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074578_83528.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800745F0_835A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_8007463C_835EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800746F8_836A8.s")

// readMissionByteWithIncrementCopyWrapper
void func_80074768_83718(void) {
    *(&D_8004D160 + (D_80149B44 * 2)) = func_8007452C_834DC();
    D_80149B44 += 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800747A8_83758.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074970_83920.s")

// readMissionInfo
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074B2C_83ADC.s")

// guess_readMissionCondition
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074CA0_83C50.s")

// readMissionConditions
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074FA8_83F58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80075148_840F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80075210_841C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800752D8_84288.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800753A0_84350.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80075574_84524.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800755E0_84590.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_8007562C_845DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800756DC_8468C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80075AA4_84A54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80075E50_84E00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80076088_85038.s")

void func_80076208_851B8(s32 arg0) {
    func_800078B8_84B8(arg0, &D_8004D150);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_8007622C_851DC.s")

#ifdef NON_MATCHING
void func_800762A8_85258() {
    s32 *var_a1;
    s32 var_v1;
    var_a1 = &D_801494B4;
    var_v1 = 0xF; 
    do
    {
        if (var_v1 == *var_a1)
        {
            *var_a1 = 0;
            return;
        }
        
    } while (var_a1--, var_v1--);

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800762A8_85258.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800762E0_85290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80076390_85340.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_8007643C_853EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800765C4_85574.s")

#ifdef NON_MATCHING
s32 func_80076754_85704(void) {
    register s32 temp_v0;
    s32 var_s0;

    var_s0 = 0x17;
    do {
        func_8007643C_853EC(var_s0);
        temp_v0 = var_s0;
    } while (var_s0--);
    D_8004D158 = 0;
    D_8004D154 = -1;
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80076754_85704.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_8007679C_8574C.s")
