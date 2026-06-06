#include <ultra64.h>
#include "common.h"


void func_802D4CD0_254410(s32 arg0, s32 arg1) {
    if (arg0 < 0x14) {
        D_802DF350[arg0](arg0);
    } else {
        switch (arg0) {
        case 0x14:
            func_800EFEB4_FEE64(func_800F1134_1000E4, 0x13, 0);
            break;
        case 0x15:
            func_800EFEB4_FEE64(func_800F1DDC_100D8C, 0x10, 1);
            break;
        case 0x1A:
            D_801493E0 = 0;
            func_800EFEB4_FEE64(func_802D563C_254D7C, 0x12, 0);
            break;
        case 0x1C:
            func_802D5110_254850();
            break;
        case 0x45:
            func_802D4E70_2545B0();
            break;
        case 0x44:
            func_80007690_8290();
            break;
        }
    }
}

void func_802D4DD4_254514(void) {
    func_800FB468_10A418(&D_8004F990, 1970.0f);
    func_800FB468_10A418(&D_8004F9EC, 1970.0f);
    func_800FB468_10A418(&D_8004FA48, 1970.0f);
    vehicleInstances[80].unk20 = (u16)(vehicleInstances[80].unk20 | 3);
    vehicleInstances[81].unk20 = (u16)(vehicleInstances[81].unk20 | 3);
    vehicleInstances[82].unk20 = (u16)(vehicleInstances[82].unk20 | 3);
    if (func_8000726C_7E6C(0x26) != 0) {
        func_802D4CD0_254410(0x13, 0);
    }
}

#ifdef NON_MATCHING
void func_802D4E70_2545B0(void) {
    switch (D_80048030) {
    case 0:
        if (func_8000726C_7E6C(0x2D) != 0) {
            func_800076D4_82D4(2);
        }
        break;
    case 1:
        if (func_80004818_5418(-0x37, -0x33, 3) != 0) {
            func_800076D4_82D4(3);
        }
        break;
    case 2:
        if (func_80004818_5418(0x15, -0x3E, 3) != 0) {
            func_800076D4_82D4(4);
        }
        break;
    case 3:
        if (func_80004818_5418(0x54, -0x3E, 2) != 0) {
            func_800076D4_82D4(5);
        }
        break;
    case 4:
        if (func_80004818_5418(0x56, -0x2E, 3) != 0) {
            func_800076D4_82D4(6);
        }
        break;
    case 5:
        if (func_80004818_5418(0x60, 0x25, 2) != 0) {
            func_800076D4_82D4(7);
        }
        break;
    case 6:
        if (func_80004818_5418(0x41, 0x55, 2) != 0) {
            func_800076D4_82D4(8);
        }
        break;
    case 7:
    case 8:
        break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D4E70_2545B0.s")
#endif

void func_802D4FBC_2546FC(void) {
    D_802E0E34++;
    if (D_802E0E34 != 0x96) {
        return;
    }
    func_800076D4_82D4(1);
    func_80013468_14068(0x10);
    func_800EFEB4_FEE64(NULL, 0x14, 0);
    func_800072CC_7ECC(0x1E);
    D_801493E0 = 0;
    D_8004816C = 0;
    func_802D5190_2548D0();
    func_800074BC_80BC(func_802D4FBC_2546FC);
}

void func_802D5044_254784(void) {
    s32 val967;
    s32 val5D7;
    s32 temp;
    s32 pad0;

    val967 = ((u8*)buildingInstances)[0x967];
    val5D7 = ((u8*)buildingInstances)[0x5D7];
    temp = D_8004816C + val5D7;

    if (val967 >= 7) {
        func_800072CC_7ECC(0x2E);
        func_800072CC_7ECC(0x2D);
        func_800074BC_80BC(func_802D5044_254784);
        osSyncPrintf(D_802E0CF0_260430);
    }

    if (temp < 7) {
        func_800072CC_7ECC(0x2D);
        func_800074BC_80BC(func_802D5044_254784);
        osSyncPrintf(D_802E0D08_260448);
    }

    ((u8*)buildingInstances)[0x5DF] = ((s8*)D_802590A9)[((u8*)buildingInstances)[0x5D6] * 32];
}

void func_802D5110_254850(void) {
    D_802E0E34 = 0;
    func_80007410_8010(func_802D4FBC_2546FC);
    func_80007410_8010(func_802D5044_254784);
}

void func_802D5148_254888(void) {
    func_800073B8_7FB8((u64)0x36);
}

void func_802D516C_2548AC(void) {
    func_800073B8_7FB8((u64)0x36);
}

void func_802D5190_2548D0(void) {
    u32 *ptr = (u32*)((u8*)buildingInstances + 0x5D8);
    u32 val = *ptr;
    *ptr = ((((val >> 12) | 0x20) ^ (val >> 12)) << 12) ^ val;
}

void func_802D51B8_2548F8(void) {
    if (D_80052B34->unk1A != 0xA) {
        return;
    }

    if (func_8000726C_7E6C(4) != 0) {
        if (D_802E0D78_2604B8 <= (f64)D_80052B34->unk58) {
            vehicleSpecs[0xA].unk3E = 0x42;
            vehicleSpecs[0xA].unk40 = 0x82;
            if ((u32)D_80052A8C % 12U == 0) {
                func_800DF038_EDFE8(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, 0x32, 0, 0);
            }
        } else {
            vehicleSpecs[0xA].unk3E = 0x21;
            vehicleSpecs[0xA].unk40 = 0x44;
        }
    }
}

void func_802D5288_2549C8(s32 arg0) {
    func_800072CC_7ECC((u64)0x2C);
}

void func_802D52B0_2549F0(void) {
    u8 id;
    Unk80222A78 sp24;
    s16 temp;

    id = func_8007956C_8851C(0x12);
    if (id == 0xFF) {
        return;
    }

    D_80256DEC = 0x5D;
    D_80157E7C = 2;

    func_8011E6FC_12D6AC(-0xF28, -0x6300, &temp);

    alienInstances[id].unk0 = -0xF28;
    alienInstances[id].unk4 = -0x6300;
    alienInstances[id].unk2 = temp + 10;
    alienInstances[id].unk24 = 4;

    sp24.unk0 = 3;
    sp24.unk8 = id;
    sp24.unkC = (void (*)(void *))func_802D5288_2549C8;

    func_800AE454_BD404(&sp24);
}

void func_802D536C_254AAC(void) {
    s16 temp = 0x96 - D_8004D1B2;
    func_8009BF64_AAF14((u16)temp);
    if (temp == -1) {
        func_800074BC_80BC(func_802D536C_254AAC);
    }
}

// CURRENT(120)
#ifdef NON_MATCHING
void func_802D53BC_254AFC(void) {
    u8 id;

    id = func_8007956C_8851C(0x12);
    D_802E0E44 = id;
    if (id == 0xFF) {
        return;
    }

    D_80157E7C = 5;
    D_80256DEC = 0x6F;
    alienInstances[id].unk0 = 0x555C;
    alienInstances[id].unk4 = 0x568A;
    alienInstances[id].unk2 = 0;
    alienInstances[id].unk24 = 4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D53BC_254AFC.s")
#endif

void func_802D5440_254B80(void) {
    func_802D53BC_254AFC();
    func_80007410_8010(func_802D536C_254AAC);
}

void func_802D546C_254BAC(void) {
    s16 i;
    u8 id;
    AlienInstance *temp;

    for (i = 0; i < 0xFF; i++) {
        temp = &alienInstances[i];
        if (temp->specIndex == 0x24) {
            temp->unk20 |= 0x401000;
            temp->unk2C = 200;
        }
    }

    func_800074BC_80BC(func_802D536C_254AAC);

    id = D_802E0E44;
    if (id != 0xFF) {
        if (alienInstances[id].specIndex == 0x12) {
            func_80087AAC_96A5C(id);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D5530_254C70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D55A0_254CE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D55E4_254D24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D563C_254D7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D5CA8_2553E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D5D08_255448.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D5F88_2556C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D6138_255878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D62A0_2559E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D65BC_255CFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D6684_255DC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D6824_255F64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D6890_255FD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D736C_256AAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D7840_256F80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D7968_2570A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D7C00_257340.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D7D08_257448.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D803C_25777C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D83D0_257B10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D86D8_257E18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D9038_258778.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D9510_258C50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D998C_2590CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D99E4_259124.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D9F10_259650.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DA054_259794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DA120_259860.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DA520_259C60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DA878_259FB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DAA98_25A1D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DAAF0_25A230.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DAEDC_25A61C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DB644_25AD84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DB6B0_25ADF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DB7B8_25AEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DBD08_25B448.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DBD84_25B4C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DC244_25B984.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DC7FC_25BF3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DC880_25BFC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DCCD8_25C418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DD104_25C844.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DD9C8_25D108.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DDA64_25D1A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DDA98_25D1D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DDB34_25D274.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DDB68_25D2A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DDC88_25D3C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DDF04_25D644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DDF50_25D690.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DE5E8_25DD28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DE990_25E0D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DEC0C_25E34C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DECAC_25E3EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DED4C_25E48C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DEE40_25E580.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DEED4_25E614.s")
