#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009BAC0_AAA70.s")

#ifdef NON_MATCHING
s32 func_8009BC48_AABF8(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_t0;
    s32 temp_v1;
    s32 var_v1;

    temp_v1 = arg0 - 0x10;
    temp_t0 = arg1 - 0x10;
    if ((arg0 >= 0) && (temp_v1 < 0x10) && (temp_t0 >= -0x10) && (temp_t0 < 0x10)) {
        var_v1 = 0x100;
        if (arg2 != 0) {
            var_v1 = 0x80;
        }
        if (((temp_v1 * temp_v1) + (temp_t0 * temp_t0)) < var_v1) {
            return 1;
        }
        return 0;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009BC48_AABF8.s")
#endif

s32 func_8009BCC0_AAC70(s32 arg0, s32 arg1, u8 arg2) {
    u8 *ptr;

    if (func_8009BC48_AABF8(arg0, arg1, 0) != 0) {
        if (arg0 & 1) {
            if (D_8014EDD8 != 0) {
                return 1;
            }
            ptr = &D_8014EDE0[(arg1 << 4) + arg0 / 2];
            *ptr &= 0xF0;
            *ptr |= arg2;
            return 1;
        }
        if (D_8014EDD8 != 0) {
            return 1;
        }
        ptr = &D_8014EDE0[(arg1 << 4) + arg0 / 2];
        *ptr &= 0xF;
        *ptr |= (arg2 << 4);
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009BDB8_AAD68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009BF64_AAF14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009C1D8_AB188.s")

void func_8009C458_AB408(void) {
    D_8014F1F6 = 0x10;
    D_8014F1F8 = 0x10;
}

void func_8009C470_AB420(void) {
    if (D_80052B34->unk1A != 0) {
        D_8014F1F6 = -0x10;
    }
    D_8014F1F8 = -0x10;
}

void func_8009C4A0_AB450(void) {
    D_8014F1F6 = 0x10;
}

void func_8009C4B0_AB460(void) {
    if (D_80052B34->unk1A != 0) {
        D_8014F1F6 = -0x10;
    }
}

void func_8009C4D8_AB488(void) {
    D_8014F1F8 = 0x10;
}

void func_8009C4E8_AB498(void) {
    D_8014F1F8 = -0x10;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009C4F8_AB4A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009C6CC_AB67C.s")

void func_8009D900_AC8B0(s16 *arg0, f32 *arg1, s16 arg2) {
    f32 temp_f0;
    f32 temp_f2;

    temp_f0 = (f32)*arg0 / (f32)arg2;
    temp_f2 = (f32)*arg0;
    if ((f64) temp_f0 > 1.0) {
        *arg0 = (s16) (s32) (temp_f2 / temp_f0);
        *arg1 /= temp_f0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009D96C_AC91C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009E994_AD944.s")

void func_8009EC90_ADC40(s16 arg0, f32 *arg1, f32 *arg2) {
    s32 var_v0;

    if (((arg0 >= 0x2001) && (arg0 < 0x6000)) || ((arg0 < -0x2000) && (arg0 >= -0x5FFF))) {
        if (arg0 > 0) {
            *arg1 = 1.0f;
        } else {
            if (arg0 < 0) {
                var_v0 = -1;
            } else {
                var_v0 = 0;
            }
            *arg1 = (f32) var_v0;
        }
        *arg2 = (f32) (((f64) *arg1 * ((f64) (f32) coss(arg0) / 32768.0)) / ((f64) (f32) sins(arg0) / 32768.0));
        return;
    }
    if (arg0 >= 0) {
        var_v0 = arg0;
    } else {
        var_v0 = -(s32) arg0;
    }
    if (var_v0 < 0x4000) {
        *arg2 = 1.0f;
    } else {
        *arg2 = -1.0f;
    }
    *arg1 = (f32) (((f64) *arg2 * ((f64) (f32) sins(arg0) / 32768.0)) / ((f64) (f32) coss(arg0) / 32768.0));
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009EE30_ADDE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009F130_AE0E0.s")

void func_8009FB1C_AEACC(s16 arg0, s16 arg1) {
    D_8014F1EC = (f32) arg0;
    D_8014F1F0 = (f32) arg1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009FB58_AEB08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A03FC_AF3AC.s")

#ifdef NON_MATCHING
void func_800A1364_B0314(void) {
    s32 temp_v0;
    u32 temp_t4;

    D_8013D758 = D_8013D75C;
    temp_v0 = osGetCount();
    D_8013D75C = temp_v0;
    D_8014F210[D_8014F20C][D_8014F610] = temp_v0 - D_8013D758;
    temp_t4 = D_8014F20C + 1;
    D_8014F20C = temp_t4;
    if (temp_t4 >= 0x20U) {
        D_8014F20C = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A1364_B0314.s")
#endif

void func_800A13E8_B0398(void) {
    D_8013D75C = osGetCount();
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A140C_B03BC.s")

void func_800A1764_B0714(void) {
    D_8014F618.unk69 = 0;
    D_8014F618.unk6A = 0;
    D_8014F618.unk6B = 0;
    D_8014F618.unk6C = 0;
    D_8014F618.unk6F = 0xF;
    D_8014F618.unk70 = 0;
    D_8014F618.unk71 = 0x14;
    D_8014F618.unk72 = 0xE6;
    D_8014F618.unk73 = 0x1E;
    D_8014F618.unk74 = 0x14;
    D_8014F618.unk75 = 0xE6;
    D_8014F618.unk76 = 0x1E;
    D_8014F618.unk6D = 0;
    D_8014F618.unk68 = 0;
    D_8014F618.unk67 = 0;
    D_8014F618.unk6E = 0;
    D_8014F618.unk77 = 0xA;
    D_8014F618.unk78 = 0x1E;
    D_8014F618.unk79 = 0x96;
    D_8014F618.unk7A = 0xA;
    D_8014F618.unk7B = 0x1E;
    D_8014F618.unk7C = 0x96;
    D_8014F618.unk7D = 0xA;
    D_8014F618.unk7E = 0x1E;
    D_8014F618.unk7F = 0x96;
}

void func_800A17EC_B079C(void) {
    D_8013D5B4 = 0;
    D_8013D5B8 = 0;
    D_8013D5BC = 0;
    D_8013D5C0 = 0;
    func_800A1764_B0714();
}

#ifdef NON_MATCHING
s32 func_800A1828_B07D8(s32 arg0, s32 arg1, s32 arg2) {
    s32 t6 = arg0 & 0xFF;
    s32 t7 = arg1 & 0xFF;
    s32 t8 = arg2 & 0xFF;
    if (t7 < t6) {
        if (t6 < t8 || (t6 - t7) < t8) {
            return t7 & 0xFF;
        }
        return (t6 - t8) & 0xFF;
    }
    if (t6 < t7) {
        if ((0xFF - t8) < t6 || (t7 - t6) < t8) {
            return t7 & 0xFF;
        }
        return (t6 + t8) & 0xFF;
    }
    return t6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A1828_B07D8.s")
#endif

s32 func_800A18CC_B087C(void) {
    s16 index = (s16)(D_80158FE8 - buildingInstances);
    return (D_8014D1B8[index >> 5] & (1 << (index & 0x1F))) != 0;
}

// checkIfShouldOpenPauseMenu
void func_800A1924_B08D4(void) {
    if ((currentControllerStates[0].button & 0x1000) &&
        (gameplayMode != GAMEPLAY_MODE_UNK3) &&
        (gameplayMode != GAMEPLAY_MODE_UNKB) &&
        (D_8004794C == 0) &&
        (func_80018A58_19658() == 0) &&
        (D_80048188 == 0)) {

        D_801591B0 = D_801591AC;
        D_80052AE0 = gameplayMode;
        D_801591AC = 3;
        gameplayMode = GAMEPLAY_MODE_UNK2;
        D_8014ED56 = 0xFF;
        D_8014ED54 = 0;
        D_80050AD0 = D_80050AD4;
        D_801591D4 = D_80052B34->unk6;
        D_8014ED40 = D_8004794A;
        func_800153D8_15FD8(0xC6);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A1A18_B09C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A1DD8_B0D88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A2260_B1210.s")

s32 func_800A2A88_B1A38(void) {
    s32 temp_v0;

    if (D_8013D5B4 == 0) {
        return 0;
    }
    temp_v0 = D_80257A1C[D_80052B34->unk1A][0];
    if (temp_v0 == 0) {
        return 0;
    }
    if (((s32)D_80145BE8[temp_v0][0] >> 8) & 0x200000) {
        return 0;
    }
    if (D_80159320 & 0x10000) {
        return 0;
    }
    if (gameplayMode == GAMEPLAY_MODE_UNK3) {
        return 0;
    }
    if (gameplayMode == GAMEPLAY_MODE_UNKB) {
        return 0;
    }
    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A2B58_B1B08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A2D98_B1D48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A3490_B2440.s")

s32 func_800A3CD0_B2C80(void) {
    if (D_8014F1FA == 0) {
        return 1;
    }
    return 0;
}
