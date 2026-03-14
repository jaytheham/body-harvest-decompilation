#include <ultra64.h>
#include "common.h"


/* Copy a tiled subregion of a 16-bit framebuffer across 6 outer iterations.
   Reads 32 halfwords per inner pass, skipping 0x120 halfwords between middle rows,
   then rewinds src by 0x27E0 halfwords after each middle sweep. */
void func_8000DC30_E830(s16 *arg0, s16 *arg1) {
    s16 *src;
    s16 *dst;
    s32 outer;
    s32 middle;
    s32 inner;
    s16 val;

    src = arg0;
    dst = arg1;
    outer = 6;
    do {
        middle = 0x1F;
        do {
            inner = 0x1F;
            do {
                val = *src;
                dst += 1;
                src += 1;
                *(dst - 1) = val;
                inner -= 1;
            } while (inner != 0);
            src += 0x120;
            middle -= 1;
        } while (middle != 0);
        src -= 0x27E0;
        outer -= 1;
    } while (outer != 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000DC9C_E89C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000DCCC_E8CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000DEFC_EAFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000E048_EC48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000E3DC_EFDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/osSetTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000E4C4_F0C4.s")

/* Square of arg0. */
s32 func_8000E52C_F12C(s32 arg0) {
    return arg0 * arg0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000E53C_F13C.s")
