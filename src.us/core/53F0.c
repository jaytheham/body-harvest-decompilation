#include <ultra64.h>
#include "common.h"


f32 func_800047F0_53F0(f32 arg0) {
	return arg0 * arg0;
}

s32 func_800047FC_53FC(s16 arg0) {
	return arg0 * arg0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80004818_5418.s")

#ifdef NON_MATCHING
void func_800048B8_54B8(void) {
	D47D40Entry *end;
	D47D40Entry *p;
	end = (D47D40Entry *)(&D_80047B70);
	p = (D47D40Entry *)D_80047970;
	do {
		p->f2 = 0;
		p->f4 = 0;
		p->f6 = 0;
		p->f0 = 0;
		p++;
	} while (p != end);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800048B8_54B8.s")
#endif

#ifdef NON_MATCHING
void func_800048E8_54E8(void) {
	D47F40Entry *end;
	D47F40Entry *p;
	end = (D47F40Entry *)(&D_80047F60);
	p = (D47F40Entry *)D_80047F40;
	do {
		p->f4 = 0;
		p->f8 = 0;
		p->fC = 0;
		p->f0 = 0;
		p++;
	} while (p != end);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800048E8_54E8.s")
#endif

#ifdef NON_MATCHING
void func_80004918_5518(void) {
	D47D40Entry *end;
	D47D40Entry *p;
	end = (D47D40Entry *)D_80047F40;
	p = (D47D40Entry *)D_80047D40;
	do {
		p->f2 = 0;
		p->f4 = 0;
		p->f6 = 0;
		p->f0 = 0;
		p++;
	} while (p != end);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80004918_5518.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80004948_5548.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800049D4_55D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80004A38_5638.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80004AEC_56EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/leoInitUnit_atten.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80004C34_5834.s")

void func_80004C8C_588C(void) {
    gSPSegment(D_8005BB2C++, 0x02, (u32)D_8005BB20 & 0x1FFFFFFF);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80004CC8_58C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80004D38_5938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80004DDC_59DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80004F64_5B64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_8000505C_5C5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800050C4_5CC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80005110_5D10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800053A0_5FA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80005654_6254.s")

void func_800056A8_62A8(void) {
	func_80005654_6254(0, 0, 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800056D0_62D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_8000577C_637C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80005844_6444.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80005AEC_66EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80005B30_6730.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80005B84_6784.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80005C5C_685C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80006520_7120.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800065A4_71A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80006654_7254.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80006710_7310.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800067B4_73B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800069FC_75FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80006C4C_784C.s")

extern void setVideoInterfaceXSize(s32 width);
extern void setVideoInterfaceYSize(s32 height);
void setFullResolution(void) {
	setVideoInterfaceXSize(0x140);
	setVideoInterfaceYSize(0xF0);
}

void setGameplayResolution(void) {
	setVideoInterfaceXSize(0x130);
	setVideoInterfaceYSize(0xE6);
}

void func_80006DAC_79AC(s32 arg0, s32 arg1) {
	if (D_80052AD0 != 0) {
		D_80052AD4 = arg0;
		D_80052AD0 = 0;
		D_80052AC8 = arg1;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80006DDC_79DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800071D8_7DD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_8000726C_7E6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800072CC_7ECC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800073B8_7FB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007410_8010.s")

void func_800074BC_80BC(void *arg0) {
    s32 i = 4;
    while (i--) {
        if (arg0 == (void *)D_8004DC68[i]) {
            D_8004DC68[i] = 0;
            return;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800074F4_80F4.s")

extern s32 D_8004DC74;
#ifdef NON_MATCHING
void func_80007548_8148(void) {
	s32 *ptr = &D_8004DC74;
	s32 i = 3;
	if (ptr)
	{
	}
	do {
		*ptr = 0;
		ptr--;
	} while (i--);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007548_8148.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007570_8170.s")

void func_80007690_8290(void) {
    D_80048030 = D_80048030 + 1;
    osSyncPrintf(&D_80036DA4_379A4, D_80048030);
    func_8001A650_1B250(1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800076D4_82D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007728_8328.s")


u8 func_8000789C_849C(s32 arg0)
{
  u8 *new_var;
  s32 *new_var2;
  new_var2 = &arg0;
  new_var = D_80048038;
  return new_var[(s16) (*new_var2)];
}




s32 func_800078B8_84B8(s32 arg0, s32 *arg1) {
	return *arg1 & (1 << arg0);
}

void func_800078CC_84CC(s32 arg0, s32 *arg1) {
	*arg1 |= 1 << arg0;
}

void func_800078E4_84E4(s32 arg0, s32 *arg1) {
	*arg1 &= ~(1 << arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007900_8500.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007A20_8620.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007C78_8878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007D44_8944.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007DE0_89E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007F60_8B60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_8000807C_8C7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800081D4_8DD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80008478_9078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_8000851C_911C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/guess_checkMissions.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/debug_drawTimingGraphBars.s")

#ifdef NON_MATCHING
void func_80008C18_9818(void) {
	s16 *ptr = &D_80047F7E;
	s32 count = 0xF;
	do {
		*ptr = -1;
		ptr--;
	} while (count--);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80008C18_9818.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80008C44_9844.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80008CA8_98A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800092B8_9EB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80009F18_AB18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/guess_displayInventory.s")
