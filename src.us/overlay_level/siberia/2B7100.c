#include <ultra64.h>
#include "common.h"

extern s16 D_802E30F4;
extern s32 D_802E3098;
extern s32 D_802E3094;
extern s32 D_802E30EC;
extern char D_802E2EE8;
extern void func_802D5F28_2B8358(void);

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D4CD0_2B7100.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D4DCC_2B71FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D4F1C_2B734C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D5058_2B7488.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D5754_2B7B84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D5980_2B7DB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D5B58_2B7F88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D5C24_2B8054.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D5F28_2B8358.s")

void func_802D6220_2B8650(void) {
    s16 val;

    val = D_802E30F4;
    val -= 1;
    D_802E30F4 = val;

    if (D_802E30F4 != 0) {
        return;
    }

    vehicleInstances[30].unk20 = (u16)(vehicleInstances[30].unk20 & 0xFF7F);

    D_801493E0 = 0;
    D_802E3094 = 0;

    func_8012D808_13C7B8(D_802E3098);

    D_802E30EC = 0;
    D_8014D17C = 0;

    func_800EFEB4_FEE64(0, 0x1C, 0);
    func_80007410_8010(&func_802D5F28_2B8358);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D62B4_2B86E4.s")

#ifdef NON_MATCHING
void func_802D62E4_2B8714(void) {
    s16 sp1E;
    s16 temp_t9;

    temp_t9 = 0x28 - D_8004D1B1;
    sp1E = temp_t9;
    func_8009BF64_AAF14((u16)(temp_t9 & 0xFFFF));
    if ((sp1E < 0) || (func_8000726C_7E6C((u64)0x28) != 0)) {
        func_800074BC_80BC((void *)func_802D62E4_2B8714);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D62E4_2B8714.s")
#endif

void func_802D6340_2B8770(void) {
    func_80007410_8010(&func_802D62E4_2B8714);
}

void func_802D6364_2B8794(void) {
    s32 temp_v0;
    u8 temp_a1;
    s16 building_y;
    s16 building_z;
    AlienInstance *alien;

    temp_v0 = func_8007956C_8851C(0x13);
    temp_a1 = temp_v0 & 0xFF;
    if ((temp_v0 & 0xFF) != 0xFF) {
        osSyncPrintf(D_802E2EE8, temp_a1);
        alien = &alienInstances[temp_a1];
        building_y = buildingInstances[160].xCoord;
        building_z = buildingInstances[160].zCoord;
        alien->unk0 = building_y + 0x320;
        alien->unkE = 0;
        alien->unk4 = building_z;
        func_80080510_8F4C0(temp_a1);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D63E8_2B8818.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D64DC_2B890C.s")

void func_802D6674_2B8AA4(void) {
    if (D_8014D17C >= 0x15) {
        func_802D64DC_2B890C(0xA0, D_8014D17C - 0x14, 0xC8, 0x18, &D_802E0E48, 6, 0x28, 1);
        if (D_800519E7 <= 0) {
            func_800074BC_80BC((void *)func_802D6674_2B8AA4);
            func_802D6364_2B8794();
        }
    }
    D_8014D17C += 1;
}

#ifdef NON_MATCHING
void func_802D670C_2B8B3C(void) {
    func_80013468_14068(0xA);
    func_80135D08_144CB8(1.0f, 0x28, 0x46, 0x32);
    D_8014D17C = 0;
    func_800EFEB4_FEE64(0, 0x17, 0);
    func_80007410_8010(&func_802D6674_2B8AA4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D670C_2B8B3C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D6768_2B8B98.s")

#ifdef NON_MATCHING
void func_802D69EC_2B8E1C(void) {
    func_80013468_14068(0xE);
    func_80135D08_144CB8(1.0f, 0x28, 0x46, 0x32);
    D_8014D17C = 0;
    func_800EFEB4_FEE64(&func_802D6768_2B8B98, 0x18, 0);
    func_800073B8_7FB8(0x18ULL);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D69EC_2B8E1C.s")
#endif

void func_802D6A4C_2B8E7C(void) {
    func_800AE190_BD140(D_801591C4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D6A70_2B8EA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D6CA0_2B90D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D6F4C_2B937C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D6FFC_2B942C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D7114_2B9544.s")

void func_802D7298_2B96C8(void) {
}

void func_802D72A0_2B96D0(func_80070420_7F3D0_UnkArg0 *arg0) {
    func_800072CC_7ECC((u64)arg0->unk9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D72C4_2B96F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D7350_2B9780.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D7398_2B97C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D7508_2B9938.s")

/* possible: updateStageTimer */
void func_802D7540_2B9970(void) {
    D_8014D17C += 1;
    if (D_8014D17C == 0x64) {
        func_800074BC_80BC(func_802D7540_2B9970);
        func_800A6FD4_B5F84();
        func_800076D4_82D4(0xB);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D7598_2B99C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D75E4_2B9A14.s")

void func_802D7680_2B9AB0(s32 arg0) {
    D_802E3100 -= 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D769C_2B9ACC.s")

#ifdef NON_MATCHING
void func_802D77BC_2B9BEC(void) {
    u16 temp;

    func_80013468_14068(0xC);
    buildingInstances[0].unkE22 = 0x6E;
    temp = buildingInstances[0].unkE1A;
    buildingInstances[0].unkE1A = (u16) ((temp & 0xF03F) | 0x400);
    D_8014D17C = 0;
    func_80007410_8010(&func_802D75E4_2B9A14);
    func_802D769C_2B9ACC();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D77BC_2B9BEC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D7818_2B9C48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D7934_2B9D64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D7BCC_2B9FFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D7CD4_2BA104.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D806C_2BA49C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D8120_2BA550.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D81C0_2BA5F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D84B0_2BA8E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D8930_2BAD60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D923C_2BB66C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D9B08_2BBF38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D9BFC_2BC02C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D9FB4_2BC3E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D9FE4_2BC414.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DA4CC_2BC8FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DA7CC_2BCBFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DA854_2BCC84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DA910_2BCD40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DAA20_2BCE50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DACA0_2BD0D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DAD00_2BD130.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DAEBC_2BD2EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DB390_2BD7C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DB3F0_2BD820.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DB620_2BDA50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DB8D8_2BDD08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DBE28_2BE258.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DBF54_2BE384.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DC4A0_2BE8D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DC4D0_2BE900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DCA14_2BEE44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DCC50_2BF080.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DD1D0_2BF600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DD240_2BF670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DD408_2BF838.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DD514_2BF944.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DD668_2BFA98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DDE3C_2C026C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DDFF0_2C0420.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DE584_2C09B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DEB5C_2C0F8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DEDE4_2C1214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DEFB4_2C13E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DF4C8_2C18F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DF98C_2C1DBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E0298_2C26C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E02CC_2C26FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E07B4_2C2BE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E07EC_2C2C1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E0820_2C2C50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E0858_2C2C88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E088C_2C2CBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E0958_2C2D88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E0B08_2C2F38.s")

void func_802E0CF8_2C3128(u8 arg0) {
    func_802E0B08_2C2F38(arg0);
}

void func_802E0D20_2C3150(u8 arg0) {
    func_802E0B08_2C2F38(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E0D48_2C3178.s")
