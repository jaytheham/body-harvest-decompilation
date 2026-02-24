#include <ultra64.h>
#include "common.h"

void func_80079510_884C0(u8 arg0) {
    AlienInstance *inst = &alienInstances[alienInstances[arg0].unk25];
    *(s32 *)&inst->unk8 = 0;
    *(s32 *)&inst->unkC = 0;
    *(s32 *)&inst->unk10 = 0;
    *(s32 *)&inst->unk14 = 0;
    inst->unk1A = 0;
    inst->unk1C = 0x32;
    inst->unk1B = 0xFF;
    inst->unk1E = 0xFF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007956C_8851C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800797A4_88754.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80079910_888C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80079B74_88B24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80079C8C_88C3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80079DC0_88D70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80079E64_88E14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80079F08_88EB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007A198_89148.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007A2A0_89250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007A4F8_894A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007A6B4_89664.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007AA0C_899BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007AAEC_89A9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007AF8C_89F3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007B170_8A120.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007B20C_8A1BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007B2A0_8A250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007B370_8A320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007B9CC_8A97C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007BEC0_8AE70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007C044_8AFF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007D424_8C3D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007D690_8C640.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007E500_8D4B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007E608_8D5B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007E734_8D6E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007E980_8D930.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007EB74_8DB24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007ED9C_8DD4C.s")

#ifdef NON_MATCHING
void func_8007EE24_8DDD4(u8 arg0) {
    AlienInstance *inst = &alienInstances[arg0];
    s32 mode;
    s32 v1 = inst->unk20;
    inst->unk0 = inst->unk2E;
    inst->unk4 = inst->unk32;
    if ((v1 & 0x80000) && (v1 & 0x600)) {
        func_800F2D48_101CF8(v1 & 7, inst->unk0, inst->unk4);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007EE24_8DDD4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007EE98_8DE48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007F0E8_8E098.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007F9C8_8E978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007FB08_8EAB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007FDD8_8ED88.s")

void func_800800DC_8F08C(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800800E4_8F094.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008030C_8F2BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80080418_8F3C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80080510_8F4C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008064C_8F5FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008076C_8F71C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80080840_8F7F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800808F0_8F8A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80080A54_8FA04.s")

#ifdef NON_MATCHING
void func_80080B44_8FAF4(u8 arg0, u8 arg1) {
    AlienInstance *alien = &alienInstances[arg0]; 
    BuildingInstance *building = &buildingInstances[arg1];
    alien->unk38 = arg1;
    alien->unk14 = (s16)(building->xCoord + 0x80) ^ 0;
    alien->unk18 = (s16)(building->zCoord + 0x80);
    alien->unk20 |= 0x100;
    alien->unk3D = building->unk11;
    alien->unk16 = building->yCoord;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80080B44_8FAF4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80080BC0_8FB70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80080D98_8FD48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80081390_90340.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008153C_904EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800816B0_90660.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008199C_9094C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80081AD4_90A84.s")

void func_80081BB0_90B60(u8 arg0) {
    AlienInstance *inst;
    s32 v1;
    u8 shift;
    inst = &alienInstances[arg0];
    v1 = inst->unk20;
    if (v1 & 0x20000) {
        inst->unk20 = v1 & ~0x20020;
        shift = inst->unk38;
        alienInstances[shift].unk27 &= ~(1 << inst->unk27);
    }
}

void func_80081C24_90BD4(u8 arg0) {
    AlienInstance *inst = &alienInstances[arg0];
    if (!(inst->unk20 & 0x20000)) {
        func_80081AD4_90A84(arg0, inst->unk25);
    }
    func_8008064C_8F5FC(arg0);
}

#ifdef NON_MATCHING
void func_80081C84_90C34(u8 arg0, void *arg1) {
    void *dest = (void*)(D_8014E4D0 + (u32)arg0 * 0x10);
    *(s32*)dest = *(s32*)arg1;
    *(s32*)((u8*)dest + 4) = *(s32*)((u8*)arg1 + 4);
    *(s32*)((u8*)dest + 8) = *(s32*)((u8*)arg1 + 8);
    *(s32*)((u8*)dest + 12) = *(s32*)((u8*)arg1 + 12);
    D_8014DD5E[arg0][0] = *(s16*)((u8*)arg1 + 0xE);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80081C84_90C34.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80081CF0_90CA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80081E5C_90E0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80081F18_90EC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082084_91034.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800821F0_911A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800822BC_9126C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082394_91344.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800825E8_91598.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800826E4_91694.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800828F0_918A0.s")

#ifdef NON_MATCHING
s32 func_80082990_91940(s16 arg0, s16 arg1) {
    s32 v1;
    if (arg1 < arg0) {
        v1 = 0x88;
    } else {
        v1 = 0x22;
    }
    if (0xFF - arg1 < arg0) {
        return v1 & ~0xA0;
    }
    return v1 & ~0xA;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082990_91940.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800829EC_9199C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082A98_91A48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082B30_91AE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082C04_91BB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082CA0_91C50.s")

#ifdef NON_MATCHING
s32 func_80082E38_91DE8(u8 arg0, s16 arg1) {
    s32 unk1A = alienInstances[arg0].unk1A;
    s16 unk2 = alienInstances[arg0].unk2;
    if ((s16)(alienSpecs[unk1A].unk38 + unk2) < arg1) {
        return 0;
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082E38_91DE8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082EB4_91E64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80083060_92010.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800831A4_92154.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800836D0_92680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80083EF4_92EA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800840B0_93060.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800844D0_93480.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800847D0_93780.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084904_938B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084AE4_93A94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084C48_93BF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084CF8_93CA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084D80_93D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084E54_93E04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084F00_93EB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084FE8_93F98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800850DC_9408C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800851C8_94178.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085340_942F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085448_943F8.s")

s32 func_80085524_944D4(u8 arg0) {
    return ((u32)(arg0 + D_80052A8C) % 5U) == 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008554C_944FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085690_94640.s")

void func_80085748_946F8(u8 arg0) {
    alienInstances[arg0].unk20 |= 0x08000100;
}

s32 func_80085780_94730(u8 arg0) {
    if (alienInstances[arg0].unk20 & 0x80000000) {
        alienInstances[arg0].unk20 |= 0x08000100;
        return 1;
    }
    return 0;
}

s32 func_800857D0_94780(u8 arg0) {
    AlienInstance *inst = &alienInstances[arg0];
    if (alienInstances[inst->unk25].unk20 & 0x80000000) {
        inst->unk20 |= 0x08000100;
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085838_947E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085900_948B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800859F4_949A4.s")

#ifdef NON_MATCHING
s16 func_80085A9C_94A4C(s16 arg0, s32 arg1, s32 arg2, s32 arg3, s16 arg4) {
    s16 diff;
    s16 neg;
    diff = arg1 - arg0;
    neg = -arg4;
    if (arg4 < diff && arg0 < arg2) {
        return arg0 + arg4;
    }
    if (diff < neg) {
        if (arg3 < arg0) {
            arg0 -= arg4;
        }
    }
    return arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085A9C_94A4C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085B14_94AC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085C50_94C00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085CE0_94C90.s")

void func_80085DC8_94D78(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
    func_80085CE0_94C90(arg0, arg1, arg2, arg3, arg4);
    func_80085B14_94AC4(arg0, arg1, 0x2000, arg2, arg4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085E2C_94DDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085F68_94F18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800860CC_9507C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80086164_95114.s")

void func_80086230_951E0(u8 arg0, s16 arg1, s32 arg2) {
    func_80086164_95114(arg0, arg1);
    func_80085E2C_94DDC(arg0, arg1, arg2);
}

void func_80086270_95220(OutputStruct_8012B150 *arg0) {
    Unk80152B80 *entry;
    if (arg0 == NULL) {
        return;
    }
    entry = (Unk80152B80 *)(D_80145BE0 + arg0->unk20 * 0x18);
    if (entry->unkE == 0) {
        return;
    }
    arg0->unk18 = (s32) D_80052B34;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800862B4_95264.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800865F4_955A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800868A4_95854.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80086A34_959E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80086D70_95D20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800870D8_96088.s")

void func_80087188_96138(u8 arg0, s32 arg1, s32 arg2) {
    func_80086A34_959E4(arg0, arg1, func_800870D8_96088(0x80, arg2));
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800871CC_9617C.s")

void func_8008735C_9630C(u8 arg0) {
    alienInstances[arg0].unk20 |= 0x100;
    func_8008064C_8F5FC(arg0);
}

#ifdef NON_MATCHING
void func_800873A8_96358(u8 arg0) {
    AlienInstance *inst;
    inst = &alienInstances[arg0];
    if (inst->unk20 & 0x100) {
        if (func_80085838_947E8(arg0) != 0) {
            func_8008735C_9630C(arg0);
            return;
        }
    }
    inst->unk12 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800873A8_96358.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008741C_963CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008751C_964CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80087720_966D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800877E8_96798.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800879A4_96954.s")

void func_80087AAC_96A5C(u8 arg0) {
    if (!(alienInstances[arg0].unk20 & 0x300000)) {
        alienInstances[arg0].unk12 = 0;
        alienInstances[arg0].unk2C = 0x28;
        alienInstances[arg0].unk20 |= 0x200000;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80087AFC_96AAC.s")

void func_80087C50_96C00(u8 arg0) {
    alienInstances[arg0].unk3A = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80087C74_96C24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80087D18_96CC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80087E30_96DE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80087F08_96EB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80088000_96FB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800880B8_97068.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80088154_97104.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80088760_97710.s")

void func_80088E10_97DC0(s16 arg0) {
    D_8014DD50[arg0].unk2 += 0x8000;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80088E40_97DF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80088F78_97F28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80088FFC_97FAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008916C_9811C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80089200_981B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800893C8_98378.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80089574_98524.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80089A2C_989DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80089C40_98BF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80089D04_98CB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80089EB4_98E64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80089FAC_98F5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008A32C_992DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008A3EC_9939C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008AAFC_99AAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008AC5C_99C0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008AF58_99F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008B02C_99FDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008B108_9A0B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008B190_9A140.s")

void func_8008B870_9A820(u8 arg0) {
    AlienInstance *inst;
    s32 unk20;
    s32 idx;
    inst = &alienInstances[arg0];
    inst->unk2C = 0xC8;
    inst->unk3A = 0x32;
    inst->unk36 = 0;
    inst->unk20 |= 0x1000;
    inst->unk20 &= ~0xA000;
    idx = arg0;
    func_80137468_146418(idx, 0x11);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008B8E4_9A894.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008BC58_9AC08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008BF8C_9AF3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008C0F8_9B0A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008C428_9B3D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008C7B0_9B760.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008C8B8_9B868.s")

void func_8008CF50_9BF00(u8 arg0) {
    func_80089EB4_98E64(arg0, 0x1C, 1, 2, 2);
}

void func_8008CF8C_9BF3C(u8 arg0) {
    func_80089EB4_98E64(arg0, 0x28, 2, 4, 3);
}

void func_8008CFC8_9BF78(u8 arg0) {
    func_80089EB4_98E64(arg0, 0x3C, 4, 7, 5);
}

void func_8008D004_9BFB4(u8 arg0) {
    func_80089EB4_98E64(arg0, 0x50, 6, 0xA, 8);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008D040_9BFF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008D0E0_9C090.s")

void func_8008D3B0_9C360(u8 arg0) {
    alienInstances[arg0].unk20 &= ~0x20;
    alienInstances[arg0].unk20 |= 0x1100;
    alienInstances[arg0].unk38 = alienInstances[arg0].unk25;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008D3F4_9C3A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008D4A0_9C450.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008D634_9C5E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008D71C_9C6CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008D978_9C928.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008DA24_9C9D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008DEF4_9CEA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008E0D8_9D088.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008E16C_9D11C.s")

void func_8008E23C_9D1EC(u8 arg0) {
    if (!(alienInstances[arg0].unk20 & 0x40000000)) {
        alienInstances[arg0].unk12 = 0xE0;
        func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);
    }
    if (alienInstances[arg0].unk47 & 8) {
        func_80088760_97710(&alienInstances[arg0]);
    }
}

void func_8008E2B4_9D264(u8 arg0, s16 arg1, s16 arg2) {
    s16 arr[2];
    arr[0] = arg1;
    arr[1] = arg2;
    func_80081F18_90EC8(arg0, 2, 3, arr, &D_8013C610);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008E30C_9D2BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008E3E8_9D398.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008E478_9D428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008E524_9D4D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008E978_9D928.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008EB20_9DAD0.s")

void func_8008EDFC_9DDAC(u8 arg0) {
    func_8008E978_9D928(arg0, D_802566D8[alienInstances[arg0].unk1A].unk0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008EE5C_9DE0C.s")

void func_8008EF1C_9DECC(u8 arg0) {
    s8 tmp = D_8014DD50[alienInstances[arg0].unkC].unkC;
    func_8008EE5C_9DE0C(arg0, tmp, D_8014DD50[tmp].unkD);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008EF7C_9DF2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008F0BC_9E06C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008F6C0_9E670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008F818_9E7C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008F8D4_9E884.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008F9E4_9E994.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008FC78_9EC28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008FD0C_9ECBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008FE18_9EDC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008FF54_9EF04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8009012C_9F0DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800908C4_9F874.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80090948_9F8F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80090A6C_9FA1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80090C14_9FBC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80090D0C_9FCBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80091220_A01D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80091470_A0420.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8009170C_A06BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8009179C_A074C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800918E0_A0890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800919C0_A0970.s")

void func_80091A78_A0A28(u8 arg0) {
    alienInstances[arg0].unk20 &= ~0x1000;
    alienInstances[arg0].unk12 = 0;
    alienInstances[arg0].unk20 |= 0x2000;
    alienInstances[arg0].unk2C = 0x64;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80091AC0_A0A70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80091E70_A0E20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800920C0_A1070.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80092A50_A1A00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80092ADC_A1A8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80092BBC_A1B6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80092C40_A1BF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80092DFC_A1DAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80092EF4_A1EA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80093164_A2114.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800932A8_A2258.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8009335C_A230C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80093438_A23E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8009377C_A272C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8009395C_A290C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80093AE4_A2A94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80093C7C_A2C2C.s")

void func_800946A4_A3654(u8 arg0) {
    func_8008735C_9630C(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800946CC_A367C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80094808_A37B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8009490C_A38BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80094AA0_A3A50.s")

void func_80094B4C_A3AFC(u8 arg0) {
    func_80137468_146418(arg0, 0x1B);
    func_80094AA0_A3A50(arg0, 1);
}

void func_80094B80_A3B30(u8 arg0) {
    AlienInstance *inst = &alienInstances[arg0];
    if (alienInstances[inst->unk25].unk20 & 0x100000) {
        func_80088760_97710(inst);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80094BE0_A3B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80094DE0_A3D90.s")

void func_800950A8_A4058(u8 arg0) {
    func_8008E0D8_9D088(arg0);
}

void func_800950D0_A4080(u8 arg0) {
    func_8008E16C_9D11C(arg0);
}
