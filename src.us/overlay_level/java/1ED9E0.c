#include <ultra64.h>
#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D4CD0_1ED9E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D4DB0_1EDAC0.s")

void func_802D4E34_1EDB44(s16 arg0) {
    if (arg0 != -3) {
        func_800C1A4C_D09FC(arg0, 0xD, 1);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D4E6C_1EDB7C.s")

void func_802D4F70_1EDC80(s32 arg0) {
    func_800072CC_7ECC(0x2C);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D4F98_1EDCA8.s")

void func_802D507C_1EDD8C(s32 arg0) {
    osSyncPrintf(&D_802E0D84);
    func_800073B8_7FB8(0xB);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D50B0_1EDDC0.s")

void func_802D513C_1EDE4C(s32 arg0) {
    osSyncPrintf(&D_802E0DA8);
    func_800072CC_7ECC(0xCUL);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5170_1EDE80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D51F8_1EDF08.s")

#ifdef NON_MATCHING
void func_802D5508_1EE218(void) {
    s16 value;
    value = D_802E0FB0;
    D_802E0FB0 = value - 1;
    if (value <= 0) {
        func_80013468_14068(6);
        func_800EFEB4_FEE64(&func_802D51F8_1EDF08, 0xC, 0);
        func_800074BC_80BC(func_802D5508_1EE218);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5508_1EE218.s")
#endif

#ifdef NON_MATCHING
void func_802D5560_1EE270(void) {
    D_802E0FB0 = 0x1E;
    func_80007410_8010(&func_802D5508_1EE218);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5560_1EE270.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5590_1EE2A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D57F4_1EE504.s")

#ifdef NON_MATCHING
void func_802D5A78_1EE788(void) {
    osSyncPrintf(&D_802E0E10);
    D_801591C4 = 0;
    D_802E0FB2 = 0;
    D_802E0FB4 = 0xA;
    D_802E0FB0 = 0;
    func_80013468_14068(8);
    func_800EFEB4_FEE64(&func_802D57F4_1EE504, 0xE, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5A78_1EE788.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5ADC_1EE7EC.s")

#ifdef NON_MATCHING
void func_802D5BA0_1EE8B0(void) {
    osSyncPrintf(&D_802E0E30);
    D_802E0FB0 = 0;
    osSyncPrintf(&D_802E0E3C);
    func_800074BC_80BC(&func_802D5590_1EE2A0);
    func_80007410_8010(&func_802D5ADC_1EE7EC);
    func_800076D4_82D4(9);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5BA0_1EE8B0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5BF8_1EE908.s")

void func_802D5DE4_1EEAF4(void) {
    vehicleInstances[79].unk20 = (u16) (vehicleInstances[79].unk20 & 0xFBFF);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5DFC_1EEB0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5E98_1EEBA8.s")

void func_802D5E98_1EEBA8(void);

void func_802D5F98_1EECA8(void) {
    func_80007410_8010(func_802D5E98_1EEBA8);
}

void func_802D5FBC_1EECCC(void) {
    func_800EFEB4_FEE64(0, 0xF, 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5FE4_1EECF4.s")

#ifdef NON_MATCHING
void func_802D60DC_1EEDEC(void) {
    func_802D5FE4_1EECF4();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D60DC_1EEDEC.s")
#endif

#ifdef NON_MATCHING
void func_802D6104_1EEE14(void) {
    func_80007410_8010(&func_802D60DC_1EEDEC + 0x20);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D6104_1EEE14.s")
#endif

#ifdef NON_MATCHING
void func_802D6128_1EEE38(void) {
    func_800074BC_80BC(&func_802D60DC_1EEDEC + 0x20);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D6128_1EEE38.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D614C_1EEE5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D62A0_1EEFB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D6338_1EF048.s")

void func_802D6840_1EF550(void) {
    D_802E0FB6 = 0;
    func_80013468_14068(7);
    func_800EFEB4_FEE64(&func_802D6338_1EF048, 0xD, 0);
}

#ifdef NON_MATCHING
s32 func_802D687C_1EF58C(s32 arg0, s32 arg1, s16 arg2, s16 arg3) {
    return (s32)(((arg3 - arg2) * arg0) + (arg1 * arg2)) / arg3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D687C_1EF58C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D68F4_1EF604.s")

#ifdef NON_MATCHING
void func_802D6DBC_1EFACC(void) {
    D_802E0FB8 = 0;
    func_80013468_14068(5);
    func_800EFEB4_FEE64(&func_802D68F4_1EF604, 0xB, 1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D6DBC_1EFACC.s")
#endif

#ifdef NON_MATCHING
void func_802D6DF8_1EFB08(void) {
    s16 counter;
    s16 *element_ptr;

    osSyncPrintf(&D_802E0E60);
    counter = 0;
    do {
        element_ptr = (s16 *)((u8 *)D_802E04F8 + (counter * 8));
        func_802D4E34_1EDB44(*element_ptr);
        counter += 1;
        *element_ptr = -3;
    } while (counter < 0xE);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D6DF8_1EFB08.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D6E70_1EFB80.s")

void func_802D6E70_1EFB80(void);

void func_802D7938_1F0648(void) {
    func_80007410_8010(&func_802D6E70_1EFB80);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D795C_1F066C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D7980_1F0690.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D7B68_1F0878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D7EAC_1F0BBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D7FCC_1F0CDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D8578_1F1288.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D872C_1F143C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D8830_1F1540.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D89C4_1F16D4.s")

#ifdef NON_MATCHING
void func_802D8D14_1F1A24(s32 arg0) {
    u8 index;

    index = (u8)arg0;
    alienInstances[index].unk20 &= 0xBFFFEFFF;
    func_800873A8_96358(index);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D8D14_1F1A24.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D8D68_1F1A78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D91F8_1F1F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D9CB8_1F29C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DA18C_1F2E9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DA210_1F2F20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DA548_1F3258.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DA844_1F3554.s")

#ifdef NON_MATCHING
void func_802DAF5C_1F3C6C(s32 arg0) {
    if (!(alienInstances[(u8)arg0].unk20 & 0x100000)) {
        func_80137468_146418((u8)arg0, 0xF);
        func_802DA844_1F3554((u8)arg0);
    }
    func_80089EB4_98E64((u8)arg0, 0x3C, 0, 6, 3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DAF5C_1F3C6C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DAFD0_1F3CE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DB14C_1F3E5C.s")

#ifdef NON_MATCHING
void func_802DB428_1F4138(u8 arg0) {
    func_80137468_146418(arg0, 0x25);
    alienInstances[arg0].unk12 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DB428_1F4138.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DB468_1F4178.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DB7A4_1F44B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DBB58_1F4868.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DBBE4_1F48F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DBCB0_1F49C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DBDDC_1F4AEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DBF34_1F4C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DC230_1F4F40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DC4A8_1F51B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DC738_1F5448.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DCA54_1F5764.s")

#ifdef NON_MATCHING
void func_802DCDD4_1F5AE4(s32 arg0) {
    AlienInstance *ai;
    u8 id;

    id = (u8)arg0;
    ai = &alienInstances[id];
    func_80137468_146418(id, 0x1C);
    func_800873A8_96358(id);
    ai->unk20 &= ~0x10;
    ai->unk6 = ai->unkE;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DCDD4_1F5AE4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DCE34_1F5B44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DD140_1F5E50.s")

void func_802DD244_1F5F54(u8 arg0) {
    u8 tmp;

    tmp = arg0;
    alienInstances[tmp].unk20 |= 0x8000000;
    func_800873A8_96358(tmp);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DD294_1F5FA4.s")

void func_802DD5A0_1F62B0(u8 arg0) {
    unsigned long new_var;
    new_var = arg0;
    func_802DD140_1F5E50(new_var, 4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DD5CC_1F62DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DD8E8_1F65F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DDA64_1F6774.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DDE04_1F6B14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DE0C8_1F6DD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DE594_1F72A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DE9B8_1F76C8.s")

#ifdef NON_MATCHING
void func_802DEE18_1F7B28(s32 arg0) {
    func_800A93A4_B8354(arg0 & 0xFF, 0, -1, 0xC6);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DEE18_1F7B28.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DEE4C_1F7B5C.s")

#ifdef NON_MATCHING
void func_802DEF70_1F7C80(s32 arg0) {
    u8 index;

    index = (u8)arg0;
    alienInstances[index].unk3A = 0x7D0;
    func_800A93A4_B8354(index, 0, -0x45, 0x2B3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DEF70_1F7C80.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DEFC0_1F7CD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF1F8_1F7F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF3C0_1F80D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF69C_1F83AC.s")

#ifdef NON_MATCHING
void func_802DF788_1F8498(s32 arg0) {
    func_800A93A4_B8354(arg0 & 0xFF, -0xAE, 0x7E, 0x183);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF788_1F8498.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF7BC_1F84CC.s")

#ifdef NON_MATCHING
void func_802DF8A8_1F85B8(s32 arg0) {
    func_800A93A4_B8354(arg0 & 0xFF, 0xAE, 0x7E, 0x183);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF8A8_1F85B8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF8DC_1F85EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF99C_1F86AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DFB94_1F88A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DFC28_1F8938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DFCA8_1F89B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DFD80_1F8A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DFF90_1F8CA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802E01A0_1F8EB0.s")
