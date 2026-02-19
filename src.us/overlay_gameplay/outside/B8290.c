#include <ultra64.h>
#include "common.h"


void func_800A92E0_B8290(u8 arg0, s32 arg1) {
    if ((D_80048198[arg0].unk20 & arg1) == arg1) {
        D_80140AC4 = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A931C_B82CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A93A4_B8354.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9738_B86E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9820_B87D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9908_B88B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A99B8_B8968.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9A90_B8A40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9DC0_B8D70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9E1C_B8DCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800A9F34_B8EE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AA340_B92F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AB250_BA200.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AB32C_BA2DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AB390_BA340.s")

void func_800AB408_BA3B8(u8 arg0) {
    s32 temp_a0;
    s32 temp_v1;
    Unk80048198* temp_v0;

    temp_v0 = &D_80048198[arg0];
    *(s16*) ((u8*) temp_v0 + 0x48) = 0xC0;
    if (*(s16*) ((u8*) temp_v0 + 0x38) != 0x64) {
        temp_v1 = *(s16*) &D_8004DCD0[0x4AC] - temp_v0->unk0;
        temp_a0 = *(s16*) &D_8004DCD0[0x4B0] - temp_v0->unk4;
        if (((temp_v1 * temp_v1) + (temp_a0 * temp_a0)) < 0x40000) {
            func_800AD814_BC7C4(arg0, 0xB, 0xD, *((u8*) temp_v0 + 0x3F));
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AB4B4_BA464.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AB570_BA520.s")

void func_800AB6D0_BA680(u8 arg0) {
    D_80048198[arg0].unkE += 0x100;
}

void func_800AB700_BA6B0(u8 arg0) {
    D_80048198[arg0].unkE += 0x400;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AB730_BA6E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AB80C_BA7BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AB8CC_BA87C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ABC2C_BABDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ABCC8_BAC78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ABE7C_BAE2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ABFC0_BAF70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AC064_BB014.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AC0E4_BB094.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AC198_BB148.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AC2FC_BB2AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AC5BC_BB56C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ACA3C_BB9EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ACB3C_BBAEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ACC5C_BBC0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ACE40_BBDF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ACF9C_BBF4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD0F0_BC0A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD240_BC1F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD3BC_BC36C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD554_BC504.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD698_BC648.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AD814_BC7C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800ADA70_BCA20.s")

void func_800ADAF8_BCAA8(u8 arg0) {
    func_800873A8_96358(arg0);
    if (D_80048198[arg0].unk24 == 4) {
        D_80048198[arg0].unk12 = 0;
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B8290/func_800AE1EC_BD19C.s")
