#include <ultra64.h>
#include "common.h"

// Debug - display property
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A40B0/func_80095100_A40B0.s")

// Debug - menu navigation?
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A40B0/func_80095530_A44E0.s")

// Debug - display menu items
#ifdef NON_MATCHING
void func_8009594C_A48FC(s16 arg0, s16 arg1) {
    s16 temp_s2;
    s16 var_s0;
    s16 var_s1;

    var_s0 = 0;
    if (arg1 > 0) {
        var_s1 = arg0;
        do {
            temp_s2 = var_s0 + 1;
            func_80095100_A40B0(var_s1, temp_s2);
            var_s0 = temp_s2;
            var_s1 += 1;
        } while (temp_s2 != arg1);
    }
    D_8014ECF4 = (s32) arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A40B0/func_8009594C_A48FC.s")
#endif

void func_800959DC_A498C(void) {
}
