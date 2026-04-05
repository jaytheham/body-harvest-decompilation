#define OVERLAY_ENTRY_AS_FUNC
#define GAME_OSSETTIME_IMPL
#include <ultra64.h>
#include "common.h"


f32 func_800047F0_53F0(f32 arg0) {
	return arg0 * arg0;
}

s32 func_800047FC_53FC(s16 arg0) {
	return arg0 * arg0;
}

s32 func_80004818_5418(s8 arg0, s8 arg1, u8 arg2) {
	s8 x = (s8)(D_80052B34->unk0 >> 8);
	s8 z = (s8)(D_80052B34->unk4 >> 8);
	s32 dx, dz, abs_dx, abs_dz;

	dx = x - arg0;
	if (dx >= 0) {
		abs_dx = dx;
	} else {
		abs_dx = -dx;
	}
	if (abs_dx < arg2) {
		dz = z - arg1;
		if (dz >= 0) {
			abs_dz = dz;
		} else {
			abs_dz = -dz;
		}
		if (abs_dz < arg2) {
			return 1;
		}
	}
	return 0;
}

// https://decomp.me/scratch/XgXp0
#ifdef NON_MATCHING
void func_800048B8_54B8(void)
{
  D47D40Entry *end;
  D47D40Entry *p;
  end = &D_80047970[64];
  p = D_80047970;
  do
  {
	  p--;
	  p++;
	p->f2 = 0;
	p->f4 = 0;
	p->f6 = 0;
	p->f0 = 0;
	p++;
  }
  while (p != end);
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

void func_80004948_5548(void) {
	u16 temp_v0;

	temp_v0 = (&D_80047748)[D_802CA8D0];
	D_80047740.unk0 = (s8) ((s32) (temp_v0 & 0xF800) >> 8);
	D_80047740.unk1 = (s8) ((s32) (temp_v0 & 0x7C0) >> 3);
	D_80047740.unk2 = (s8) ((temp_v0 & 0x3E) * 4);
	temp_v0 = (&D_80047748)[D_802D48CF];
	D_8004773C.unk0 = (s8) ((s32) (temp_v0 & 0xF800) >> 8);
	D_8004773C.unk1 = (s8) ((s32) (temp_v0 & 0x7C0) >> 3);
	D_8004773C.unk2 = (s8) ((temp_v0 & 0x3E) * 4);
}

void func_800049D4_55D4(u16 arg0, u16 arg1) {
	D_80047740.unk0 = (s8) ((s32) (arg0 & 0xF800) >> 8);
	D_80047740.unk1 = (s8) ((s32) (arg0 & 0x7C0) >> 3);
	D_80047740.unk2 = (s8) ((arg0 & 0x3E) * 4);
	D_8004773C.unk0 = (s8) ((s32) (arg1 & 0xF800) >> 8);
	D_8004773C.unk1 = (s8) ((s32) (arg1 & 0x7C0) >> 3);
	D_8004773C.unk2 = (s8) ((arg1 & 0x3E) * 4);
}

void func_80004A38_5638(u8 arg0, s8 *arg1, s8 *arg2, s8 *arg3) {
	if ((currentLevel == 2) && (func_8000726C_7E6C(0x21) == 0)) {
		*arg1 = 0xC;
		*arg2 = 0xC;
		*arg3 = 0xA;
		return;
	}
	*arg1 = (s8) ((s32) (((u16 *)&D_802D48D0)[arg0] & 0xF800) >> 0xB);
	*arg2 = (s8) ((s32) (((u16 *)&D_802D48D0)[arg0] & 0x7C0) >> 6);
	*arg3 = (s8) ((s32) (((u16 *)&D_802D48D0)[arg0] & 0x3E) >> 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80004AEC_56EC.s")

void leoInitUnit_atten(void) {
	leomecha_bss_0004 = 1;
}

void func_80004C34_5834(void) {
	s16 var_v0;

	if (leomecha_bss_0004 != 0) {
		for (var_v0 = 0; var_v0 < 0x100; var_v0++) {
			((u16 *)&D_80047748)[var_v0] = ((u16 *)&D_802D4AD0)[var_v0];
		}
		leomecha_bss_0004 = 0;
	}
}

void func_80004C8C_588C(void) {
	gSPSegment(D_8005BB2C++, 0x02, (u32)D_8005BB20 & 0x1FFFFFFF);
}

void func_80004CC8_58C8(void) {
	gSPViewport(D_8005BB2C++, D_8005BB24 + 0x80000000);
	gSPClearGeometryMode(D_8005BB2C++, 0xFFFFFFFF);
	gSPSetGeometryMode(D_8005BB2C++, G_SHADE | G_SHADING_SMOOTH);
}

void func_80004D38_5938(void) {
	gSPDisplayList(D_8005BB2C++, (Gfx *)((s32)&D_80031260 & 0x1FFFFFFF));
	gDPSetScissor(D_8005BB2C++, G_SC_NON_INTERLACE, 0, 0, D_80068084, D_80068088);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80004DDC_59DC.s")

void func_80004F64_5B64(void) {
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_FILL);
	gDPSetColorImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, &D_3DA800);
	gDPSetFillColor(D_8005BB2C++, 0xFFFCFFFC);
	gDPFillRectangle(D_8005BB2C++, 0, 0, D_80068084 - 1, D_80068088 - 1);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPPipeSync(D_8005BB2C++);
}

void func_8000505C_5C5C(void) {
	gDPFullSync(D_8005BB2C++);
	gSPEndDisplayList(D_8005BB2C++);
	osSendMesg(&D_8006A8B0, &D_800314CC_320CC, 1);
}

void func_800050C4_5CC4(void) {
	osRecvMesg(&D_8006A8D0, &D_80068038, 1);
	func_80011E14_12A14(D_80047F93);
	func_80004CC8_58C8();
	func_80004D38_5938();
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80005110_5D10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800053A0_5FA0.s")

void func_80005654_6254(u8 arg0, u8 arg1, u8 arg2) {
	func_800050C4_5CC4();
	func_80004DDC_59DC(arg0, arg1, arg2, 0, D_80068088 - 1);
	func_8000505C_5C5C();
}

void func_800056A8_62A8(void) {
	func_80005654_6254(0, 0, 0);
}

s32 func_800056D0_62D0(s16 arg0, s16 arg1) {
	u16 *p;

	p = (u16 *)((u8 *)D_80052A94 + ((arg1 >> 8) << 9) + ((arg0 >> 8) << 1));
	return ((u32)*p >> 0xF) ? 0 : D_8003E460_3F060[(((u32)*p << 0x16) >> 0x1C) | (((D_8021F250[((arg1 >> 10) << 6) + (arg0 >> 10)] & 0xF) + (currentLevel * 0xC) - 0xC) << 4)];
}

// https://decomp.me/scratch/Ps8Im
#ifdef NON_MATCHING
void func_8000577C_637C(void)
{
  s32 var_v0;
  s32 temp_hi;
  var_v0 = D_800315D4_321D4 + 0xA;
  if (var_v0 >= 0x12C)
  {
	var_v0 = 0;
  }
  temp_hi = var_v0 % 0x12C;
	
  if (temp_hi < 0x64)
  {
	  D_800315D4_W = var_v0;
	drawText(&D_80036D68_37968, 0xFA - var_v0, var_v0 + 0x96, 0x96);
	
	return;
  }
  if (temp_hi < 0xC8)
  {
	D_800315D4_W = var_v0;
	drawText(&D_80036D6C_3796C, 0x96, 0x15E - var_v0, var_v0 + 0x32);
	return;
  }
  D_800315D4_W = var_v0;
  drawText(&D_80036D70_37970, var_v0 - 0x32, 0x96, 0x1C2 - var_v0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_8000577C_637C.s")
#endif


#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80005844_6444.s")

void func_80005AEC_66EC(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
	D_80047734 = 1;
	D_80047738 = arg0;
	D_80047739 = arg1;
	D_8004773A = arg2;
	D_80047730 = 0x40;
}

s32 func_80005B30_6730(void) {
	if (D_80047734 != 0) {
		D_8004772C = D_8004772C + D_80047730;
		if (D_8004772C >= 0x100) {
			D_8004772C = 0xFF;
			D_80047734 = 0;
			return 1;
		}
	}
	return 0;
}

void func_80005B84_6784(void) {
	if (D_80047734 != 0) {
		func_80005844_6444(D_80047738, D_80047739, D_8004773A, (u8)D_8004772C);
		func_8001593C_1653C((void *)((0xFF - D_8004772C) << 7));
		return;
	}
	if (D_8004772C != 0) {
		func_80005844_6444(D_80047738, D_80047739, D_8004773A, (u8)D_8004772C);
		func_8001593C_1653C((void *)((0xFF - D_8004772C) << 7));
		D_8004772C = D_8004772C - D_80047730;
		if (D_8004772C <= 0) {
			D_8004772C = 0;
		}
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80005C5C_685C.s")

s16 func_80006520_7120(s16 arg0, s16 arg1, u16 arg2) {
	f64 var_f6;

	var_f6 = (f64)(u32)arg2;
	return (s16) (s32) ((f32) arg0 + ((f32) (arg1 - arg0) * (f32) (var_f6 / D_80037138_37D38)));
}

s16 func_800065A4_71A4(s16 arg0, s16 arg1, u16 arg2)
{
	s32 sins_val = sins(((short) ((s32) arg2 >> 1)) - 0x4000);
	return (f32) arg0 + ((arg1 - arg0) * ((f32) ((((f32) sins_val / 32768.0) * (f64) 0.5f) + 0.5)));
}

s16 func_80006654_7254(s16 arg0, s16 arg1, u16 arg2) {
	s32 diff = arg1 - arg0;
	f32 temp_f0 = (f32)(((f64)(f32)sins(((s32)arg2 >> 1) - 0x4000) / 32768.0) + 1.0);
	if ((s32)arg2 < 0x8000) {
		return (s16)(s32)((f32)arg0 + (f32)diff * temp_f0);
	}
	return arg1;
}

s16 func_80006710_7310(s16 arg0, s16 arg1, u16 arg2) {
	s32 sins_val = sins((arg2 >> 2) + 0xC000);
	return (s16) (s32) ((f32) arg0 + ((f32) (arg1 - arg0) * (f32) (((f64) (f32) sins_val / 32768.0) + 1.0)));
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800067B4_73B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800069FC_75FC.s")

void func_80006C4C_784C(void) {
    gDPSetCycleType(D_8005BB2C++, G_CYC_FILL);
    gDPSetFillColor(D_8005BB2C++, 0);
    gDPPipeSync(D_8005BB2C++);
    gDPFillRectangle(D_8005BB2C++, 0, 0, D_80068084 - 1, 0x24);
    gDPFillRectangle(D_8005BB2C++, 0, D_80068088 - 0x26, D_80068084 - 1, D_80068088 - 1);
    gDPPipeSync(D_8005BB2C++);
    gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
}

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

void func_800071D8_7DD8(void) {
	func_8000505C_5C5C();
	func_800056A8_62A8();
	func_800056A8_62A8();
	setFullResolution();
	func_800117D8_123D8();
	func_80070270(0);
	if (gameplayMode != 0 && gameplayMode != 0x10 && D_80052AD0 != 0) {
		setGameplayResolution();
	}
	func_80011674_12274();
	func_80011D6C_1296C(D_80047F93);
	func_800050C4_5CC4();
}

s32 func_8000726C_7E6C(u64 arg0) {
	return ((1LL << arg0) & D_8004DC48.unk0) != 0;
}

void func_800072CC_7ECC(u64 arg0) {
	if (arg0 == 0x41) {
		if (currentLevel != 5) {
			D_80047F9C = 5;
		}
		D_80052ACD |= 1;
		D_80052A98[currentLevel - 1].score = D_80052B2C->unk30;
		D_80052A98[currentLevel - 1].humansKilled = D_8004816A;
		D_80052A98[currentLevel - 1].secondsElapsed = D_80052A90 / 1000U;
		D_800476A0 = 1;
		func_8001A650_1B250(2);
		return;
	}
	D_8004DC48.unk0 |= 1ULL << arg0;
}

void func_800073B8_7FB8(u64 arg0) {
	u64 temp_ret;
	temp_ret = __ll_lshift(1, arg0);
	D_8004DC48.unk0 &= ~temp_ret;
}

#ifdef NON_MATCHING
void func_80007410_8010(void *arg0) {
	s32 i = 4;
	s32 j;
	while (i--) {
		if (arg0 == (void *)D_8004DC68[i]) {
			return;
		}
	}

	j = 3;
	if (D_8004DC74 != 0) {
		while (j) {
			j--;
			if (D_8004DC68[j] != 0) {
				continue;
			}
			break;
		}
		if (j == -1) {
			osSyncPrintf(&D_80036D74_37974);
		} else {
			D_8004DC68[j] = (s32)arg0;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007410_8010.s")
#endif

void func_800074BC_80BC(void *arg0) {
	s32 i = 4;
	while (i--) {
		if (arg0 == (void *)D_8004DC68[i]) {
			D_8004DC68[i] = 0;
			return;
		}
	}
}

void func_800074F4_80F4(void) {
	s32 i = 4;
	while (i--) {
		if (D_8004DC68[i] != 0) {
			((void (*)(void))D_8004DC68[i])();
		}
	}
}
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

void func_800076D4_82D4(s32 arg0) {
	osSyncPrintf(&D_80036DBC_379BC, arg0);
	if (D_80048030 < arg0) {
		D_80048030 = (u8) arg0;
		func_8001A650_1B250(1);
	}
}

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

void func_80007C78_8878(u8 *arg0) {
	s32 i;
	u8 *ptr;

	i = arg0[3];
	ptr = &D_8004D348[arg0[2] * 9];
	osSyncPrintf(&D_80036FE4_37BE4);
	if (i--) {
		do {
			u8 *p = ptr;
			ptr += 9;
			func_80007A20_8620(p);
			if (i >= 2) {
				osSyncPrintf(&D_80036FF0_37BF0);
			}
			if (i == 1) {
				osSyncPrintf(&D_80036FF4_37BF4);
			}
		} while (i--);
	}
	osSyncPrintf(&D_80036FFC_37BFC);
}

s32 func_80007D44_8944(s32 arg0) {
	s16 sp1E;
	s16 sp1C;
	s16 sp1A;
	s16 sp18;

	func_80007728_8328(arg0, &sp1E, &sp1C);
	func_80007728_8328(arg0 + 3, &sp1A, &sp18);
	sp1E = (s16)(sp1E >> 8);
	sp1C = (s16)(sp1C >> 8);
	sp1A = (s16)(sp1A >> 8);
	sp18 = (s16)(sp18 >> 8);
	return (sp1E - sp1A) * (sp1E - sp1A) + (sp1C - sp18) * (sp1C - sp18);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007DE0_89E0.s")

#ifdef NON_MATCHING
s32 func_80007F60_8B60(u8 *arg0) {
loop:
    switch (arg0[0]) {
    case 0x98:
        return D_80052B34->unk1C < 1;
    case 0x9A:
        return vehicleInstances[arg0[1]].unk1C < 1;
    case 0x9B:
        if (alienInstances[D_8004D161[arg0[1] * 2]].unk20 & 0x100000) {
            return 1;
        }
        return alienInstances[D_8004D161[arg0[1] * 2]].hitPoints < 1;
    case 0x99: {
        BuildingInstance *bi = buildingInstances + arg0[1];
        return (s8)bi->hitPoints < 1;
    }
    case 0xAF:
        arg0 = &D_8004D180[arg0[1] * 3];
        goto loop;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80007F60_8B60.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_8000807C_8C7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800081D4_8DD4.s")

s32 func_80008478_9078(void) {
	if ((currentLevel == 1) && (func_8000726C_7E6C(0xB) != 0) && (D_80052554 >= 0x401)) {
		return 1;
	}
	osSyncPrintf(&D_80037000_37C00);
	if ((currentLevel == 3) && (func_8000726C_7E6C(0x31) != 0) && (func_8000726C_7E6C(0x26) == 0)) {
		return 1;
	}
	return 0;
}

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

s32 func_80008C44_9844(s32 arg0) {
	s16 *v1 = &D_80047F7E;
	s32 a1 = 0x10;
	while (a1--) {
		if (*v1 == -1) {
			*v1 = arg0;
			osSyncPrintf(D_80037100_37D00, arg0);
			break;
		}
		v1--;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_80008CA8_98A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/func_800092B8_9EB8.s")

s32 func_80009F18_AB18(s32 arg0) {
	s32 sp1C;

	func_8000505C_5C5C();
	func_800050C4_5CC4();
	func_8000DC9C_E89C(*(s32*)((u8*)D_8005BB48 + D_80031B84 * 4), *(s32*)((u8*)D_8005BB4C + (-(D_80031B84 * 4))));
	func_8000505C_5C5C();
	func_800050C4_5CC4();
	osSetTime(D_80068084, D_80068088);
	func_8000E4C4_F0C4(1);
	func_8000505C_5C5C();
	setFullResolution();
	func_80011D24_12924();
	loadFrontendData();
	if (arg0 != 0) {
		sp1C = func_80070270(9);
	} else {
		sp1C = func_80070270(0xE);
	}
	func_800056A8_62A8();
	func_800056A8_62A8();
	setGameplayResolution();
	func_80011674_12274();
	func_80011D6C_1296C(D_80047F93);
	gameplayMode = 1;
	func_800050C4_5CC4();
	return sp1C;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/53F0/guess_displayInventory.s")
