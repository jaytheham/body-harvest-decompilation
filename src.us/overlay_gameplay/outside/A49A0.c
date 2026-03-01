#include <ultra64.h>
#include "common.h"


#ifdef NON_MATCHING
s32 func_800959F0_A49A0(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t8;

    temp_t6 = arg0 & 0xFFFF;
    temp_t7 = arg1 & 0xFFFF;
    temp_t8 = arg2 & 0xFFFF;
    arg2 = temp_t8;
    arg1 = temp_t7;
    if (temp_t6 < 0x1F) {
        arg0 = temp_t6 & 0xFFFF;
    } else {
        arg0 = 0x1F;
    }
    if (arg1 < 0x1F) {
        arg1 = arg1 & 0xFFFF;
    } else {
        arg1 = 0x1F;
    }
    if (arg2 < 0x3F) {
        arg2 = arg2 & 0xFFFF;
    } else {
        arg2 = 0x3F;
    }
    return ((arg0 << 0xB) + (arg1 << 6) + (arg2 & 0x3F)) & 0xFFFF;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_800959F0_A49A0.s")
#endif

#ifdef NON_MATCHING
s16 func_80095A6C_A4A1C(s16 arg0, s16 arg1, u16 arg2) {
    s32 r;
    s16 nx;
    s16 ny;

    r = (s32)sqrtf((f32)(arg0 * arg0 + arg1 * arg1));
    if (r >= 2) {
        nx = (s16)((f32)arg0 + (f32)arg0 * (f32)(3.0 / (f64)r));
        ny = (s16)((f32)arg1 + (f32)arg1 * (f32)(3.0 / (f64)r));
        if (nx < -0x80) {
            nx = -0x80;
        }
        if (ny < -0x80) {
            ny = -0x80;
        }
        if (nx >= 0x80) {
            nx = 0x7F;
        }
        if (ny >= 0x80) {
            ny = 0x7F;
        }
        return (*(u16*)(D_80052A94 + ((s32)ny << 9) + ((s32)nx * 2)) & 0x3F) - arg2;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80095A6C_A4A1C.s")
#endif

#ifdef NON_MATCHING
void func_80095BD4_A4B84(u32 arg0, s16 arg1, s16 arg2, s16 arg3) {
    Gfx *sp8;
    Gfx *sp4;
    s32 col;

    gDPPipeSync(D_8005BB2C++);
    gDPSetCycleType(D_8005BB2C++, G_CYC_FILL);
    gDPSetColorImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, (void *)(arg0 & 0x1FFFFFFF));
    col = ((arg1 << 8) & 0xF800) | ((arg2 << 3) & 0x7C0) | ((arg3 >> 2) & 0x3E) | 1;
    gDPSetFillColor(D_8005BB2C++, (col << 16) | col);
    gDPPipeSync(D_8005BB2C++);
    sp8 = D_8005BB2C;
    gDPFillRectangle(D_8005BB2C++, 0, 0, D_80068084 - 1, D_80068088 - 1);
    sp4 = D_8005BB2C;
    gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
    gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80095BD4_A4B84.s")
#endif

// draws vehicle triangle icons on map
#ifdef NON_MATCHING
void func_80095D4C_A4CFC(s16 arg0, s16 arg1, s32 arg2, s32 arg3, u8 arg4) {
    Vtx *v0;
    Vtx *v1;
    Vtx *v2;
    Gfx *dl;
    s32 x;
    s32 y;
    s32 t;
    u32 addr;

    if (arg4 != (arg2 & 0xFF) || (arg3 & 0xFF) != 0) {
        if (!(D_8021EA30[(((arg1 >> 8) + 0x80) >> 2) * 0x40 + (((arg0 >> 8) + 0x80) >> 2)] & 0xF0)) {
            return;
        }
    }

    x = arg0 >> 5;
    y = (0xFF - arg1) >> 5;
    t = y - 14;

    v0 = D_8005BB34;
    v0->v.ob[0] = x - 7;
    D_8005BB34 = v0 + 1;
    v0->v.ob[1] = t;
    v0->v.ob[2] = 0;
    v0->v.tc[0] = 0x400;
    v0->v.tc[1] = 0x400;

    v1 = D_8005BB34;
    v1->v.ob[0] = x + 7;
    addr = (u32)v0 & 0x1FFFFFFF;
    D_8005BB34 = v1 + 1;
    v1->v.ob[1] = t;
    v1->v.ob[2] = 0;
    v1->v.tc[0] = 0x400;
    v1->v.tc[1] = 0;

    v2 = D_8005BB34;
    v2->v.ob[0] = x;
    D_8005BB34 = v2 + 1;
    v2->v.ob[1] = y;
    v2->v.ob[2] = 0;
    v2->v.tc[0] = 0;
    v2->v.tc[1] = 0x400;
    v2->v.flag = 0;
    v1->v.flag = 0;
    v0->v.flag = 0;

    v2->v.cn[0] = arg2;
    v1->v.cn[0] = arg2;
    v0->v.cn[0] = arg2;
    v2->v.cn[1] = arg3;
    v1->v.cn[1] = arg3;
    v0->v.cn[1] = arg3;
    v2->v.cn[2] = arg4;
    v1->v.cn[2] = arg4;
    v0->v.cn[2] = arg4;
    v2->v.cn[3] = 0xFF;
    v1->v.cn[3] = 0xFF;
    v0->v.cn[3] = 0xFF;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0x04000C2F;
    dl->words.w1 = addr;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    gSP1Triangle(dl, 0, 1, 2, 0);

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    gDPPipeSync(dl);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80095D4C_A4CFC.s")
#endif

// guess_drawMapTiles
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80095F08_A4EB8.s")

#ifdef NON_MATCHING
void func_800966EC_A569C(s16 *arg0, s16 arg1, s16 arg2, f32 arg3, s16 arg4) {
    Vtx *sp2C;
    Vtx *sp28;
    Vtx *sp24;
    Vtx *sp20;
    s16 sp1E;

    sp2C = D_8005BB34;
    sp28 = sp2C + 1;
    sp24 = sp28 + 1;
    D_8005BB34 = sp28;
    sp20 = sp24 + 1;
    D_8005BB34 = sp24;
    D_8005BB34 = sp20;
    D_8005BB34 = sp20 + 1;

    if (arg3 != 0.0f) {
        arg3 = arg3 * 8.0f;
        arg1 = (s16)(arg1 >> 5);
        arg2 = (s16)(arg2 >> 5);
        if (arg4 != 1) {
        }
        sp28->v.ob[1] = (s16)(s32)-arg3;
        sp2C->v.ob[1] = (s16)(s32)-arg3;
        sp24->v.ob[0] = (s16)(s32)-arg3;
        sp2C->v.ob[0] = (s16)(s32)-arg3;
        sp20->v.ob[1] = (s16)(s32)arg3;
        sp24->v.ob[1] = (s16)(s32)arg3;
        sp20->v.ob[0] = (s16)(s32)arg3;
        sp28->v.ob[0] = (s16)(s32)arg3;
        sp20->v.ob[2] = 0;
        sp24->v.ob[2] = sp20->v.ob[2];
        sp28->v.ob[2] = sp20->v.ob[2];
        sp2C->v.ob[2] = sp20->v.ob[2];

        if (arg4 == 4) {
            sp1E = (s16)(s32)(((f64)(f32)sins(D_8013D50C) / 32768.0) * (f64)((f32)*arg0 / D_801424E0) * 200.0);
            D_80052B40.unk0 = (s16)(s32)((f64)arg1 - ((f64)((f32)(sp1E < 0 ? -sp1E : sp1E) + arg3) * ((f64)(f32)(s16)coss((-D_80052B34->unk6) & 0xFFFF) / 32768.0)));
            D_80052B40.unk2 = (s16)(s32)((f64)-arg2 - ((f64)((f32)(sp1E < 0 ? -sp1E : sp1E) + arg3) * ((f64)(f32)(s16)sins((-D_80052B34->unk6) & 0xFFFF) / 32768.0)));
            D_80052B40.unk4 = 0;
            D_80052B48.unk0 = 0;
            D_80052B48.unk4 = 0;
            D_80052B48.unk2 = (s16)(-0x4000 - D_80052B34->unk6);
            func_800039D0_45D0(&D_80052B40, &D_80052B48, NULL, D_8005BB38);
            D_8013D50C = (u16)D_8013D50C + 0x300;
        } else {
            D_80052B40.unk2 = (s16)-arg2;
            D_80052B40.unk4 = 0;
            D_80052B40.unk0 = arg1;
            func_800039D0_45D0(&D_80052B40, NULL, NULL, D_8005BB38);
        }

        D_8005BB2C->words.w0 = 0x01040040;
        D_8005BB2C->words.w1 = (s32)(D_8005BB38 & 0x1FFFFFFF);
        D_8005BB2C++;
        D_8005BB38 += 0x40;

        sp20->v.tc[1] = 0;
        sp24->v.tc[1] = sp20->v.tc[1];
        sp24->v.tc[0] = sp20->v.tc[1];
        sp2C->v.tc[0] = sp20->v.tc[1];
        sp28->v.tc[1] = 0x800;
        sp28->v.tc[0] = sp28->v.tc[1];
        sp20->v.tc[0] = sp28->v.tc[1];
        sp2C->v.tc[1] = sp28->v.tc[1];

        D_8005BB2C->words.w1 = 0;
        D_8005BB2C->words.w0 = 0xE7000000;
        D_8005BB2C++;

        D_8005BB2C->words.w1 = 0x504240;
        D_8005BB2C->words.w0 = 0xB900031D;
        D_8005BB2C++;

        D_8005BB2C->words.w1 = (s32)((s32)sp2C & 0x1FFFFFFF);
        D_8005BB2C->words.w0 = 0x0400103F;
        D_8005BB2C++;

        D_8005BB2C->words.w1 = 0x40206;
        D_8005BB2C->words.w0 = 0xB1000204;
        D_8005BB2C++;

        D_8005BB2C->words.w1 = 0;
        D_8005BB2C->words.w0 = 0xE7000000;
        D_8005BB2C++;

        D_8005BB2C->words.w1 = 0x552048;
        D_8005BB2C->words.w0 = 0xB900031D;
        D_8005BB2C++;

        D_8005BB2C->words.w1 = 0;
        D_8005BB2C->words.w0 = 0xBD000000;
        D_8005BB2C++;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_800966EC_A569C.s")
#endif

#ifdef NON_MATCHING
void func_80096BC4_A5B74(s16 arg0, s16 arg1) {
    s16 s1;
    s32 s3;
    TileEntry *s0;

    s0 = D_801479B0 + (s32)currentLevel * 64 - 64;
    s1 = func_800B0F20_BFED0(arg0, -arg1, arg1);

    D_8005BB2C->words.w1 = 0; D_8005BB2C->words.w0 = 0xE7000000; D_8005BB2C++;
    D_8005BB2C->words.w1 = 0x205; D_8005BB2C->words.w0 = 0xB7000000; D_8005BB2C++;
    D_8005BB2C->words.w1 = 0x33000; D_8005BB2C->words.w0 = 0xB6000000; D_8005BB2C++;
    D_8005BB2C->words.w1 = 0; D_8005BB2C->words.w0 = 0xBA001402; D_8005BB2C++;
    D_8005BB2C->words.w1 = 0xFFFE793C; D_8005BB2C->words.w0 = 0xFCFFFFFF; D_8005BB2C++;
    D_8005BB2C->words.w1 = 0x5041C8; D_8005BB2C->words.w0 = 0xB900031D; D_8005BB2C++;
    D_8005BB2C->words.w1 = 0x80008000; D_8005BB2C->words.w0 = 0xBB000000; D_8005BB2C++;
    D_8005BB2C->words.w1 = 0; D_8005BB2C->words.w0 = 0xBA001301; D_8005BB2C++;

    s3 = 0x1F;

    D_8005BB2C->words.w1 = 0; D_8005BB2C->words.w0 = 0xBA000E02; D_8005BB2C++;
    D_8005BB2C->words.w1 = 0; D_8005BB2C->words.w0 = 0xE7000000; D_8005BB2C++;

    do {
        if (s0->unk0 != -1) {
            Vtx *vtx = D_8005BB34;
            D_8005BB34++;
            D_8005BB34++;
            D_8005BB34++;
            D_8005BB34++;

            vtx[0].v.ob[0] = vtx[1].v.ob[0] = (D_801475F0 + (s32)currentLevel * 48 + s0->unk0 - 48)->x * 8;
            vtx[0].v.ob[1] = vtx[1].v.ob[1] = -(D_801475F0 + (s32)currentLevel * 48 + s0->unk0 - 48)->y * 8;
            vtx[2].v.ob[0] = vtx[3].v.ob[0] = (D_801475F0 + (s32)currentLevel * 48 + (u8)s0->unk1 - 48)->x * 8;
            vtx[3].v.ob[1] = -(D_801475F0 + (s32)currentLevel * 48 + (u8)s0->unk1 - 48)->y * 8;
            vtx[2].v.ob[2] = vtx[0].v.ob[2] = 0;
            vtx[2].v.ob[1] = -(D_801475F0 + (s32)currentLevel * 48 + (u8)s0->unk1 - 48)->y * 8;
            vtx[3].v.ob[2] = vtx[1].v.ob[2] = 0x40;

            if (s1 != (s16)(((u8*)s0 - (u8*)D_801479B0 - (s32)currentLevel * 128 + 128) >> 4)) {
                vtx[3].v.cn[0] = 0x8C;
                vtx[2].v.cn[0] = 0x8C;
                vtx[1].v.cn[0] = 0x8C;
                vtx[0].v.cn[0] = 0x8C;
                vtx[3].v.cn[1] = 0xBE;
                vtx[2].v.cn[1] = 0xBE;
                vtx[1].v.cn[1] = 0xBE;
                vtx[0].v.cn[1] = 0xBE;
                vtx[3].v.cn[2] = 0xFF;
                vtx[2].v.cn[2] = 0xFF;
                vtx[1].v.cn[2] = 0xFF;
                vtx[0].v.cn[2] = 0xFF;
                s1 = 0x46;
            } else {
                s16 mod1 = (s16)(((s16)D_8013D510 * 16) % 0x1FF);
                s16 mod2 = (s16)((((s16)D_8013D510 * 16) + 0x200) % 0x1FF);
                s1 = 0xFF;
                if (mod1 >= 0x100) {
                    mod1 = 0x1FF - mod1;
                }
                vtx[3].v.cn[0] = (u8)mod1;
                vtx[2].v.cn[0] = (u8)mod1;
                vtx[1].v.cn[0] = (u8)mod1;
                vtx[0].v.cn[0] = (u8)mod1;
                vtx[3].v.cn[1] = (u8)(0xFF - mod1);
                vtx[2].v.cn[1] = (u8)(0xFF - mod1);
                vtx[1].v.cn[1] = (u8)(0xFF - mod1);
                vtx[0].v.cn[1] = (u8)(0xFF - mod1);
                if (mod2 >= 0x100) {
                    mod2 = 0x1FF - mod2;
                }
                vtx[3].v.cn[2] = (u8)mod2;
                vtx[2].v.cn[2] = (u8)mod2;
                vtx[1].v.cn[2] = (u8)mod2;
                vtx[0].v.cn[2] = (u8)mod2;
            }
            vtx[2].v.cn[3] = (u8)s1;
            vtx[0].v.cn[3] = (u8)s1;
            vtx[3].v.cn[3] = 0;
            vtx[1].v.cn[3] = 0;

            D_8005BB2C->words.w0 = 0x0400103F;
            D_8005BB2C->words.w1 = (u32)vtx & 0x1FFFFFFF;
            D_8005BB2C++;
            D_8005BB2C->words.w1 = 0x00060204;
            D_8005BB2C->words.w0 = 0xB1000204;
            D_8005BB2C++;
        }
        s0++;
    } while (s3-- != 0);

    D_8005BB2C->words.w1 = 0x80008000; D_8005BB2C->words.w0 = 0xBB000001; D_8005BB2C++;
    D_8005BB2C->words.w1 = 0x2000; D_8005BB2C->words.w0 = 0xB7000000; D_8005BB2C++;

    D_8013D510++;

    D_8005BB2C->words.w1 = 0; D_8005BB2C->words.w0 = 0xE7000000; D_8005BB2C++;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80096BC4_A5B74.s")
#endif

#ifdef NON_MATCHING
void func_800970C0_A6070(void) {
    s32 sp30;
    Gfx *dl;
    s32 j;
    Vtx *vtx;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xE7000000;
    dl->words.w1 = 0;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xB6000000;
    dl->words.w1 = 0x00023001;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x00552048;
    dl->words.w0 = 0xB900031D;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0xFFFCF279;
    dl->words.w0 = 0xFCFFFFFF;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x80008000;
    dl->words.w0 = 0xBB000001;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x00080000;
    dl->words.w0 = 0xBA001301;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x00000080;
    dl->words.w0 = 0xBA000602;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x00002000;
    dl->words.w0 = 0xBA000C02;

    sp30 = 0;
    do {
        s16 top_y = -((s16)(sp30 - 4) << 8);
        s16 bot_y = top_y - 0x100;
        j = 0;
        do {
            vtx = D_8005BB34;
            D_8005BB34 = vtx + 4;

            vtx[0].v.ob[0] = (s16)(j - 4) << 8;
            vtx[0].v.ob[1] = bot_y;
            vtx[0].v.ob[2] = 0;
            vtx[1].v.ob[0] = ((s16)(j - 4) << 8) + 0x100;
            vtx[1].v.ob[1] = bot_y;
            vtx[1].v.ob[2] = 0;
            vtx[2].v.ob[0] = (s16)(j - 4) << 8;
            vtx[2].v.ob[1] = top_y;
            vtx[2].v.ob[2] = 0;
            vtx[3].v.ob[0] = ((s16)(j - 4) << 8) + 0x100;
            vtx[3].v.ob[1] = top_y;
            vtx[3].v.ob[2] = 0;

            vtx[0].v.tc[0] = -0x20;
            vtx[0].v.tc[1] = 0x7E0;
            vtx[2].v.tc[0] = -0x20;
            vtx[2].v.tc[1] = -0x20;
            vtx[3].v.tc[0] = 0x7E0;
            vtx[3].v.tc[1] = -0x20;
            vtx[1].v.tc[0] = 0x7E0;
            vtx[1].v.tc[1] = 0x7E0;

            dl = D_8005BB2C;
            D_8005BB2C = dl + 1;
            dl->words.w0 = 0xFD100000;
            dl->words.w1 = (s32)(D_8006AA6C + (((sp30 * 8) + j) << 11));

            dl = D_8005BB2C;
            D_8005BB2C = dl + 1;
            dl->words.w0 = 0xF5100000;
            dl->words.w1 = 0x07080200;

            dl = D_8005BB2C;
            D_8005BB2C = dl + 1;
            dl->words.w1 = 0;
            dl->words.w0 = 0xE6000000;

            dl = D_8005BB2C;
            D_8005BB2C = dl + 1;
            dl->words.w1 = 0x073FF100;
            dl->words.w0 = 0xF3000000;

            dl = D_8005BB2C;
            D_8005BB2C = dl + 1;
            dl->words.w1 = 0;
            dl->words.w0 = 0xE7000000;

            dl = D_8005BB2C;
            D_8005BB2C = dl + 1;
            dl->words.w1 = 0x00080200;
            dl->words.w0 = 0xF5101000;

            dl = D_8005BB2C;
            D_8005BB2C = dl + 1;
            dl->words.w0 = 0xF2000000;
            dl->words.w1 = 0x0007C07C;

            dl = D_8005BB2C;
            D_8005BB2C = dl + 1;
            dl->words.w1 = (s32)((u32)vtx & 0x1FFFFFFF);
            dl->words.w0 = 0x0400103F;

            dl = D_8005BB2C;
            D_8005BB2C = dl + 1;
            dl->words.w1 = 0x00000204;
            dl->words.w0 = 0xBF000000;

            dl = D_8005BB2C;
            j++;
            D_8005BB2C = dl + 1;
            dl->words.w1 = 0x00040206;
        } while (j != 8);
        dl->words.w0 = 0xBF000000;
        sp30++;
    } while (sp30 != 8);

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xE7000000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_800970C0_A6070.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80097444_A63F4.s")

// draw 3d adam on map
#ifdef NON_MATCHING
void func_80097994_A6944(void) {
    s32 sp5C[3];
    s16 sp54[3];
    s16 sp4C[3];
    Gfx *sp44;
    Unk80157600 *pStruct;
    Gfx *dl;

    pStruct = &D_80157600;
    func_8000C790_D390(pStruct, &D_8013D1B0, 0x10);
    sp5C[0] = 0;
    sp5C[2] = 0;
    sp54[0] = pStruct->unk2 * 8;
    sp54[1] = pStruct->unk4 * 8;
    sp54[2] = pStruct->unk0 * 8;
    sp5C[1] = (s32)(pStruct->unkC * 65536.0f);
    func_8000C81C_D41C(sp5C, sp54, 0, D_8005BB38);

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0x01000040;
    dl->words.w1 = (s32)(D_8005BB38 & 0x1FFFFFFF);

    D_8005BB38 += 0x40;

    sp44 = D_8005BB2C;
    D_8005BB2C = sp44 + 1;
    sp44->words.w0 = 0xBC001806;
    sp44->words.w1 = func_80011FAC_12BAC(D_1001B50);

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xBC001C06;
    dl->words.w1 = (s32)(D_8005BB38 & 0x1FFFFFFF);

    func_8000CC3C_D83C(pStruct, 0x10);

    sp4C[0] = 0x100;
    sp4C[1] = 0x100;
    sp4C[2] = 0x100;

    D_8005BB38 += 0x40;
    func_800039D0_45D0(0, 0, (Unk80052B40 *)sp4C, D_8005BB38);

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0x06000000;
    dl->words.w1 = (s32)((u32)D_10031E0 & 0x1FFFFFFF);

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xE7000000;
    dl->words.w1 = 0;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xBA000E02;
    dl->words.w1 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80097994_A6944.s")
#endif

// related to drawing 3d vehicles
#ifdef NON_MATCHING
void func_80097B74_A6B24(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {

	gSPLookAt(D_8005BB2C++, 0x801592A0);
	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);

    if (currentLevel != LEVEL_JAVA || D_8004DCD0[arg0].unk1A != 0x12) {
        func_80101EF4_110EA4(D_8004DCD0[arg0].unk1A, arg1, arg2, arg3, 0, 0x4000, (s32)arg4);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80097B74_A6B24.s")
#endif

#ifdef NON_MATCHING
void func_80097CB4_A6C64(UnkA6C64Keyframe *arg0, UnkA6C64Keyframe *arg1, UnkA6C64Keyframe *arg2, f32 arg3) {
    s32 diff;
    s32 absDiff;

    arg2->unk0 = arg0->unk0 + (s32)((f32)(arg1->unk0 - arg0->unk0) * arg3);

    diff = arg1->unk2 - arg0->unk2;
    if (diff >= 0) {
        absDiff = diff;
    } else {
        absDiff = -diff;
    }

    if (absDiff >= 0x8001) {
        if (arg0->unk2 < arg1->unk2) {
            arg2->unk2 = arg0->unk2 - (s32)((f32)((arg0->unk2 - arg1->unk2) + 0xFFFF) * arg3);
        } else {
            arg2->unk2 = arg0->unk2 + (s32)((f32)(diff + 0xFFFF) * arg3);
        }
    } else {
        arg2->unk2 = arg0->unk2 + (s32)((f32)diff * arg3);
    }

    arg2->unk4 = arg0->unk4 + (s32)((f32)(arg1->unk4 - arg0->unk4) * arg3);
    arg2->unk8 = arg0->unk8 + (arg1->unk8 - arg0->unk8) * arg3;
    arg2->unkC = arg0->unkC + (arg1->unkC - arg0->unkC) * arg3;
    arg2->unk10 = arg0->unk10 + (arg1->unk10 - arg0->unk10) * arg3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80097CB4_A6C64.s")
#endif

#ifdef NON_MATCHING
void func_80097E1C_A6DCC(Unk80157600 *arg0) {
    u16 sp66;
    s16 sp48[11];
    s16 sp46;
    Gfx *dl;
    Gfx *dl2;

    sp46 = coss(arg0->unk2);
    D_8014ED0C = (f32)(((f64)(f32)sins(arg0->unk4) / 32768.0) * ((f64)(f32)sp46 / 32768.0) * (f64)arg0->unk0 + (f64)arg0->unk8);
    sp46 = sins(arg0->unk2);
    D_8014ED10 = (f32)(((f64)(f32)sins(arg0->unk4) / 32768.0) * ((f64)(f32)sp46 / 32768.0) * (f64)arg0->unk0 + (f64)arg0->unkC);
    D_8014ED14 = (f32)(((f64)(f32)coss(arg0->unk4) / 32768.0) * (f64)arg0->unk0);
    guPerspective((Mtx *)D_8005BB38, &sp66, (f32)D_80149404, 1.0f, 25.0f, 2000.0f, 1.0f);

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xBC00000E;
    dl->words.w1 = (s32)&sp66;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0x01030040;
    dl->words.w1 = (s32)(D_8005BB38 & 0x1FFFFFFF);

    dl2 = D_8005BB30;
    D_8005BB30 = dl2 + 1;
    dl2->words.w0 = 0x01030040;
    dl2->words.w1 = (s32)(D_8005BB38 & 0x1FFFFFFF);

    D_8005BB38 += 0x40;
    guLookAt((Mtx *)D_8005BB38, D_8014ED0C, D_8014ED10, D_8014ED14, arg0->unk8, arg0->unkC, arg0->unk10, 0.0f, 0.0f, 1.0f);

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0x01010040;
    dl->words.w1 = (s32)(D_8005BB38 & 0x1FFFFFFF);

    dl2 = D_8005BB30;
    D_8005BB30 = dl2 + 1;
    dl2->words.w0 = 0x01010040;
    dl2->words.w1 = (s32)(D_8005BB38 & 0x1FFFFFFF);

    dl = D_8005BB2C;
    D_8005BB38 += 0x40;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0x01020040;
    dl->words.w1 = (s32)((u32)&D_80031160 & 0x1FFFFFFF);

    dl2 = D_8005BB30;
    D_8005BB30 = dl2 + 1;
    dl2->words.w0 = 0x01020040;
    dl2->words.w1 = (s32)((u32)&D_80031160 & 0x1FFFFFFF);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80097E1C_A6DCC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_8009811C_A70CC.s")
