#include <ultra64.h>
#include "common.h"


void func_800A92E0_B8290(u8 arg0, s32 arg1) {
    if ((alienInstances[arg0].unk20 & arg1) == arg1) {
        D_80140AC4 = 0;
    }
}

void func_800A931C_B82CC(s8 arg0, s16 *arg1, s32 *arg2) {
    func_800044D4_50D4(arg1, arg2, &D_8014DD50[(s32)arg0].unk6);
    arg2[0] += D_8014DD50[(s32)arg0].unk0;
    arg2[1] += D_8014DD50[(s32)arg0].unk2;
    arg2[2] += D_8014DD50[(s32)arg0].unk4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A93A4_B8354.s")

#ifdef NON_MATCHING
void func_800A9738_B86E8(u8 arg0, s32 arg1) {
    u8 *group;
    AlienInstance *member;

    alienInstances[arg0].unk20 |= arg1;
    group = (u8 *)&alienInstances[alienInstances[arg0].unk25];

    member = &alienInstances[group[0]];
    if (member->specIndex != 0) {
        member->unk20 |= arg1;
    }
    member = &alienInstances[group[1]];
    if (member->specIndex != 0) {
        member->unk20 |= arg1;
    }
    member = &alienInstances[group[2]];
    if (member->specIndex != 0) {
        member->unk20 |= arg1;
    }
    member = &alienInstances[group[3]];
    if (member->specIndex != 0) {
        member->unk20 |= arg1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9738_B86E8.s")
#endif

#ifdef NON_MATCHING
void func_800A9820_B87D0(u8 arg0, s32 arg1) {
    AlienInstance *ptr;
    AlienInstance *group;
    AlienInstance *member;
    s32 mask;

    ptr = &alienInstances[arg0];
    mask = ~arg1;
    ptr->unk20 &= mask;
    group = &alienInstances[ptr->unk25];

    member = &alienInstances[*(u8 *)group];
    if (member->specIndex != 0) {
        member->unk20 &= mask;
    }
    member = &alienInstances[((u8 *)group)[1]];
    if (member->specIndex != 0) {
        member->unk20 &= mask;
    }
    member = &alienInstances[((u8 *)group)[2]];
    if (member->specIndex != 0) {
        member->unk20 &= mask;
    }
    member = &alienInstances[((u8 *)group)[3]];
    if (member->specIndex != 0) {
        member->unk20 &= mask;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9820_B87D0.s")
#endif

void func_800A9908_B88B8(u8 arg0, s32 arg1) {
    s16 sp38[4];
    s32 sp30;
    s32 sp34;
    s32 sp3C;

    sp38[0] = D_8014DD50[alienInstances[arg0].unkC].unkC;
    sp38[1] = D_8014DD50[sp38[0]].unkC;
    sp38[2] = D_8014DD50[sp38[0]].unkD;
    sp38[3] = D_8014DD50[sp38[2]].unkC;
    if (func_80081F18_90EC8(arg0, 4, 3, sp38, arg1) == 3) {
        alienInstances[arg0].unk36 = 0;
    }
}

#ifdef NON_MATCHING
void func_800A99B8_B8968(u8 arg0) {
    AlienInstance *ptr;
    s16 step;
    s16 angle;
    s16 diff;
    s32 dx;
    s32 dz;

    ptr = &alienInstances[arg0];
    step = alienSpecs[ptr->unk1A].unk42;
    dx = D_80052B34->unk0 - ptr->unk0;
    dz = D_80052B34->unk4 - ptr->unk4;
    angle = func_80003824_4424((f32)dx, (f32)dz);
    diff = angle - ptr->unk6;
    if (-step >= diff) {
        ptr->unk6 -= step;
        return;
    }
    if (step < diff) {
        ptr->unk6 += step;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A99B8_B8968.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9A90_B8A40.s")

// Failed - sonnet 4.6
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9DC0_B8D70.s")

#ifdef NON_MATCHING
void func_800A9E1C_B8DCC(Unk80222A78 *arg0) {
    u8 alienIdx;
    AlienInstance *alien;
    s32 x;
    s32 z;
    s16 new_unk2;
    s32 flags;

    alienIdx = arg0->unk8;
    alien = &alienInstances[alienIdx];
    x = (arg0->unk1 << 8) + 0x80;
    new_unk2 = alien->unk2 + 0x8000;
    z = (arg0->unk2 << 8) + 0x80;
    alien->unk0 = x;
    alien->unk4 = z;
    alien->unk2 = new_unk2;
    alien->unk20 |= 0x20000000;
    flags = alien->unk20;
    if (flags & 0x80000) {
        func_800F2D48_101CF8(flags & 7, (s16)x, (s16)z, arg0);
    }
    arg0->unk4 += 9;
    arg0->unkC = func_800A9DC0_B8D70;
    func_800AE454_BD404(arg0);
    alien->unkE = func_80003824_4424(
        (f32)(D_80052B34->unk0 - alien->unk0),
        (f32)(D_80052B34->unk4 - alien->unk4));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9E1C_B8DCC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9F34_B8EE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AA340_B92F0.s")

s32 func_800AB250_BA200(u8 arg0, s32 arg1) {
    AlienInstance *ptr;
    s32 dx;
    s32 dz;
    ptr = &alienInstances[arg0];
    if (ptr->unk20 & 0x08000000)
    {
        return 1;
    }
    ptr = &alienInstances[arg0];
    dx = D_80052B34->unk0 - ptr->unk0;
    dz = D_80052B34->unk4 - ptr->unk4;
    if (((s32) sqrtf((f32) ((dx * dx) + (dz * dz)))) < arg1)
    {
        ptr->unk20 |= 0x08000100;
        return 1;
    }
    return 0;
}

void func_800AB32C_BA2DC(u8 arg0) {
    if (D_80222A70 >= alienInstances[arg0].unk2) {
        func_80088760_97710(&alienInstances[arg0]);
        alienInstances[arg0].unk2C = 0xA;
    }
}

void func_800AB390_BA340(u8 arg0) {
    if (func_80080840_8F7F0(arg0, 0x19)) {
        alienInstances[arg0].unk20 |= 0x80;
        alienInstances[arg0].unk20 &= ~0x100;
        alienInstances[arg0].unk24 = 0x1C;
    }
    func_800AB32C_BA2DC(arg0);
}

void func_800AB408_BA3B8(u8 arg0) {
    s32 temp_a0;
    s32 temp_v1;
    AlienInstance* temp_v0;

    temp_v0 = &alienInstances[arg0];
    temp_v0->unk48 = 0xC0;
    if (*(s16*) ((u8*) temp_v0 + 0x38) != 0x64) {
        temp_v1 = D_8004DCD0[13].unk0 - temp_v0->unk0;
        temp_a0 = D_8004DCD0[13].unk4 - temp_v0->unk4;
        if (((temp_v1 * temp_v1) + (temp_a0 * temp_a0)) < 0x40000) {
            func_800AD814_BC7C4(arg0, 0xB, 0xD, *((u8*) temp_v0 + 0x3F));
        }
    }
}

void func_800AB4B4_BA464(u8 arg0) {
    Unk8004DCD0 *spec;
    s32 dx, dz, ndx, ndz;
    s32 absDx, absDz;

    spec = &D_8004DCD0[alienInstances[arg0].unk38];
    dx = alienInstances[arg0].unk0 - spec->unk0;
    dz = alienInstances[arg0].unk4 - spec->unk4;
    ndx = -dx;
    absDx = (ndx < dx) ? dx : ndx;
    ndz = -dz;
    if (absDx < 0xC9) {
        absDz = (ndz < dz) ? dz : ndz;
        if (absDz < 0xC9) {
            return;
        }
    }
    alienInstances[arg0].unk24--;
    alienInstances[arg0].unk48 = 0xC0;
    
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AB570_BA520.s")

void func_800AB6D0_BA680(u8 arg0) {
    alienInstances[arg0].unkE += 0x100;
}

void func_800AB700_BA6B0(u8 arg0) {
    alienInstances[arg0].unkE += 0x400;
}

// Failed - gpt 5.3 codex
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AB730_BA6E0.s")

// Failed - gpt 5.3 codex
// Failed - sonnet 4.6
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AB80C_BA7BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AB8CC_BA87C.s")

void func_800ABC2C_BABDC(u8 arg0) {
    AlienInstance *ptr = &alienInstances[arg0];

    if (ptr->unk20 & 0x4000) {
        ptr->unk48 = 0;
        if (ptr->unk2C != 0) {
            ptr->unk2C = ptr->unk2C - 1;
            return;
        }
        ptr->unk20 &= ~0x4000;
        func_800E0AE0_EFA90(ptr->unk0, ptr->unk2 + 0x14, ptr->unk4, 0);
        return;
    }
    ptr->unk48 = 0x30;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ABCC8_BAC78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ABE7C_BAE2C.s")

#ifdef NON_MATCHING
void func_800ABFC0_BAF70(u8 arg0) {
    s32 sp28;
    s32 sp24;

    func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);
    sp28 = alienInstances[arg0].unk0 >> 8;
    sp24 = alienInstances[arg0].unk4 >> 8;
    if ((func_80080840_8F7F0(arg0, 0xA) != 0) ||
        (func_800B325C_C220C((s8)sp28, (s8)sp24, 0x800) != 0)) {
        func_800ABE7C_BAE2C(arg0);
    }
    func_800AC198_BB148(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ABFC0_BAF70.s")
#endif

void func_800AC064_BB014(u8 arg0) {

    if (alienInstances[arg0].unk3A != 0) {
        alienInstances[arg0].unk3A = alienInstances[arg0].unk3A - 1;
        return;
    }
    alienInstances[arg0].unk3A = (s16) ((func_800038E0_44E0() >> 6) + 0x80);
    if (++alienInstances[arg0].unk26 >= 2) {
        alienInstances[arg0].unk26 = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AC0E4_BB094.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AC198_BB148.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AC2FC_BB2AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AC5BC_BB56C.s")

s32 func_800ACA3C_BB9EC(u8 arg0) {
    AlienInstance *ptr = &alienInstances[arg0];
    s32 flags = ptr->unk20;

    if (flags & 0x4000) {
        ptr->unk12 = 0;
        if (flags & 0x600) {
            ptr->unk2C -= 1;
        } else {
            ptr->unk2C -= 4;
        }
        if (ptr->unk2C <= 0) {
            ptr->unk2C = 0;
            ptr->unk20 &= ~0x4000;
            flags = ptr->unk20;
        } else {
            return 0;
        }
    }

    if ((flags & 0x600) && (ptr->unk2 < D_80222A70)) {
        ptr->unk48 = 0x60;
        return 1;
    }
    if ((ptr->unk12 == 0x60) && (D_80222A70 < ptr->unk2)) {
        if (flags & 0x1000) {
            ptr->unk48 = 0xA0;
        } else {
            ptr->unk48 = 0x40;
        }
    }
    return 1;
}

void func_800ACB3C_BBAEC(u8 arg0) {

    if ((alienInstances[arg0].unk20 & 0x80) &&
        D_8004DCD0[alienInstances[arg0].unk38].unk1C <= 0) {
        
        alienInstances[arg0].unk20 = alienInstances[arg0].unk20 & ~0xC0;
        return;
    }
    if ((alienInstances[arg0].unk20 & 0x20) &&
        alienInstances[alienInstances[arg0].unk38].unk1C <= 0) {
        
        alienInstances[arg0].unk20 = alienInstances[arg0].unk20 & ~0x60;
        return;
    }
    if (!(alienInstances[arg0].unk20 & 0x08000000) &&
        (alienInstances[arg0].unk20 & 0x100) &&
        (alienInstances[arg0].unk38 != 0xFF)) {
        if (func_800B325C_C220C((s8)(alienInstances[arg0].unk14 >> 8), (s8)(alienInstances[arg0].unk18 >> 8), 0x800) == 0) {
            alienInstances[arg0].unk20 &= ~0x1E0;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ACC5C_BBC0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ACE40_BBDF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ACF9C_BBF4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD0F0_BC0A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD240_BC1F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD3BC_BC36C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD554_BC504.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD698_BC648.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD814_BC7C4.s")

u8 func_800ADA70_BCA20(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    u8 idx;
    AlienInstance *ptr;

    idx = (u8) func_8007956C_8851C(1);
    if (idx != 0xFF) {
        ptr = &alienInstances[idx];
        ptr->unk0 = arg0;
        ptr->unk4 = arg1;
        func_800AD814_BC7C4(idx, arg2, arg3, arg4);
    }
    return idx;
}

void func_800ADAF8_BCAA8(u8 arg0) {
    func_800873A8_96358(arg0);
    if (alienInstances[arg0].unk24 == 4) {
        alienInstances[arg0].unk12 = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ADB4C_BCAFC.s")

void func_800ADFC0_BCF70(u8 arg0) {
    func_800873A8_96358(arg0);
}

void func_800ADFE8_BCF98(u8 arg0) {
    func_800873A8_96358(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AE010_BCFC0.s")

void func_800AE190_BD140(s16 arg0) {
    D_8004816A += arg0;
    D_80048170 += arg0;
}

void func_800AE1C0_BD170(void) {
    D_8004816A += 1;
    D_8004816E += 1;
}

// Failed - gpt 5.3 codex
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AE1EC_BD19C.s")
