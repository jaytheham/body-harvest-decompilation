#include <ultra64.h>
#include "common.h"

s32 func_8000FFC0_10BC0(s32 arg0, s32 arg1, s32 arg2, s32 arg3);

#ifdef NON_MATCHING
s32 func_8000FFC0_10BC0(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
	s32 var_s0;
	s32 var_s1;
	s32 var_s2;
	s32 var_v1;
	s32 temp_t7;
	s32 temp_v0;
	s32 temp_v0_2;
	s32 temp_v0_3;
	s32 sp50;
	s32 sp58;

	if (D_80068078 == 1) {
		return 0;
	}
	osWritebackDCacheAll();
	var_s1 = arg1;
	var_s2 = arg2;
	temp_t7 = arg3 / 2048;
	var_v1 = temp_t7;
	var_s0 = temp_t7 - 1;
	if (temp_t7 != 0) {
		sp50 = temp_t7;
		do {
			osPiStartDma(&sp58, 0, 0, var_s2, var_s1, 0x800, arg0);
			osRecvMesg(arg0, 0, 1);
			temp_v0 = func_8001F6E0_202E0();
			switch (temp_v0) {
			case 2:
				osSyncPrintf(D_80037780);
				break;
			case 1:
				osSyncPrintf(D_80037794);
				break;
			case 4:
				osSyncPrintf(D_800377A8);
				break;
			}
			var_s2 += 0x800;
			var_s1 += 0x800;
			var_s0 -= 1;
		} while (var_s0 != 0);
		var_v1 = sp50;
	}
	temp_v0_2 = arg3 - (var_v1 << 0xB);
	if (temp_v0_2 != 0) {
		osPiStartDma(&sp58, 0, 0, var_s2, var_s1, temp_v0_2, arg0);
		osRecvMesg(arg0, 0, 1);
		temp_v0_3 = func_8001F6E0_202E0();
		switch (temp_v0_3) {
		case 2:
			osSyncPrintf(D_800377BC);
			break;
		case 1:
			osSyncPrintf(D_800377D0);
			break;
		case 4:
			osSyncPrintf(D_800377E4);
			break;
		}
	}
	arg2 += arg3;
	if (D_8006AA64 == 0xBABEFACE) {
		osSyncPrintf(D_800377F8, arg3);
	}
	D_8006AA60 = arg3;
	return arg2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_8000FFC0_10BC0.s")
#endif

s32 func_800101F0_10DF0(s32 arg0, s32 arg1, s32 arg2) {
	return func_8000FFC0_10BC0(&D_80067F70, arg0, arg1, arg2);
}

void func_80010228_10E28(u32 rom_addr, void *dest_buffer) {
	OSIoMesg io_msg;

	osWritebackDCacheAll();
	osPiStartDma(&io_msg, 0, 0, rom_addr, dest_buffer, 0x18, &D_80067F70);
	osRecvMesg(&D_80067F70, NULL, 1);
}

// https://decomp.me/scratch/cg2WJ
#ifdef NON_MATCHING
s32 func_80010290_10E90(s32 arg0) {
	s32 header[6]; /* 0x18 bytes = MIO0 header at sp+0x20 */
	s32 var_v1;

	func_80010228_10E28(arg0, header);
	if (header[0] != 0x4D494F30) {
		return 0;
	}
	var_v1 = header[1];
	if (header[1] & 3) {
		var_v1 = (header[1] - (header[1] & 3)) + 4;
	}
	return arg0 + var_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80010290_10E90.s")
#endif

s32 func_800102EC_10EEC(s32 arg0, s32 arg1) {
	s32 temp_v0;

	temp_v0 = func_80010290_10E90(arg0);
	if (temp_v0 == 0) {
		return arg1 + arg0;
	}
	return temp_v0;
}

s32 func_8001032C_10F2C(s32 arg0, s32 arg1, s32 arg2) {
	s32 header[6];
	s32 var_a2;

	if (D_80068078 == 1) {
		return 0;
	}
	func_80010228_10E28(arg1, header);
	if (header[0] != 0x4D494F30) { // MIO0
		if (D_8006AA64 == 0xBABEFACE) {
			osSyncPrintf(D_80037808); // header ID wrong, 
		}
		return 0;
	}
	if (D_8006AA64 == 0xBABEFACE) {
		osSyncPrintf(D_8003781C, header[1], header[2]);
		// packed %6d, unpacked %6d, 
	}
	var_a2 = header[1];
	if (header[1] & 3) {
		var_a2 = (header[1] - (header[1] & 3)) + 4;
	}
	func_800101F0_10DF0(arg2, arg1, var_a2);
	func_8001A460_1B060(arg2, arg0);
	D_8006AA60 = header[2];
	return arg1 + var_a2;
}

s32 func_80010420_11020(s32 arg0, s32 arg1) {
	return func_8001032C_10F2C(arg0, arg1, (s32)&D_802B2080);
}

s32 func_80010444_11044(s32 arg0, s32 arg1, s32 arg2) {
	s32 temp_v0;

	temp_v0 = func_80010420_11020(arg0, arg1);
	if (temp_v0 == 0) {
		return func_800101F0_10DF0(arg0, arg1, arg2);
	}
	return temp_v0;
}

s32 func_80010490_11090(u8 arg0) {
	return D_80031BC4_327C4[arg0];
}

#ifdef NON_MATCHING
s32 func_800104AC_110AC(u8 arg0) {
	s32 var_s0;
	s32 var_s1;
	s32 var_s2;
	s32 temp_v1;

	var_s2 = (arg0 - 1) & 0xFF;
	var_s1 = (s32) &D_37F840;
	if (var_s2 != 0) {
		do {
			temp_v1 = var_s1 & 0xF;
			if (temp_v1 != 0) {
				var_s1 = (var_s1 - temp_v1) + 0x10;
			}
			var_s1 = func_800102EC_10EEC(var_s1, 0xFE00);
			temp_v1 = var_s1 & 0xF;
			if (temp_v1 != 0) {
				var_s1 = (var_s1 - temp_v1) + 0x10;
			}
			var_s1 = func_800102EC_10EEC(func_800102EC_10EEC(func_800102EC_10EEC(func_800102EC_10EEC(func_800102EC_10EEC(func_800102EC_10EEC(func_800102EC_10EEC(func_800102EC_10EEC(var_s1, 4), 0x3800), 0x100), 0x3800), 0x100), 0x3800), 0x100), 0x100);
			for (var_s0 = 0; var_s0 < 0xC; var_s0 = (var_s0 + 1) & 0xFF) {
				temp_v1 = var_s1 & 0xF;
				if (temp_v1 != 0) {
					var_s1 = (var_s1 - temp_v1) + 0x10;
				}
				var_s1 = func_80010290_10E90(func_80010290_10E90(var_s1));
			}
			var_s2 = (var_s2 - 1) & 0xFF;
		} while (var_s2 != 0);
	}
	temp_v1 = var_s1 & 0xF;
	if (temp_v1 != 0) {
		var_s1 = (var_s1 - temp_v1) + 0x10;
	}
	return var_s1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_800104AC_110AC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_800105F0_111F0.s")

s32 destroyThreadIfMessageInQueue(void) {
	s32 result;

	result = osRecvMesg(&D_80067F88, NULL, 0);
	if (result != -1) {
		func_8000F1E8_FDE8();
		return 1;
	}
	return 0;
}

void loadLevel(s32 arg0) {
	s32 temp_a1;

	osSyncPrintf(D_80037838, currentLevel); // Loading level %d
	D_8006AA64 = 0xBABEFACE;
	loadLevelData(D_80047F93);
	D_8006AA64 = 0;
	func_80011674_12274();
	loadLevelCode(D_80047F93);
	func_80011D6C_1296C(D_80047F93);
	func_800118F8_124F8();
	osSyncPrintf(D_80037850); // ------------------------------
	osSyncPrintf(D_80037870, D_8F4960); //   Start of anim data: %x
	osSyncPrintf(D_8003788C, D_955300); //      End of anim data: %x
	temp_a1 = D_955300 - D_8F4960;
	osSyncPrintf(D_800378A8, temp_a1, (f64)temp_a1 * 0.0009765625);
	//                 Size: %x (%.2fK)
	osSendMesg(&D_80067F88, 0, 0);
	osSetThreadPri(0, 0);
	for (;;);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/loadLevelData.s")

void loadFrontendData(void) {
	osInvalICache(func_80070270, (u8 *)&D_800909B0 - func_80070270);
	osInvalDCache(&D_800909B0, (u8 *)&D_800AED70 - (u8 *)&D_800909B0);
	func_800101F0_10DF0(func_80070270, D_40720, D_7F220 - D_40720);
	bzero(&D_800AED70, (u8 *)&D_800E1D70 - (u8 *)&D_800AED70);
}

void func_80011674_12274(void) {
	osInvalICache(func_80070270, (u8 *)&D_8013B8F0 - func_80070270);
	osInvalDCache(&D_8013B8F0, (u8 *)&D_80149380 - (u8 *)&D_8013B8F0);
	func_800101F0_10DF0(func_80070270, D_7F220, D_158330 - D_7F220);
}

// https://decomp.me/scratch/ktq8M
#ifdef NON_MATCHING
void loadLevelCode(u8 arg0)
{
  s32 level = arg0;
  s32 loadAddr;
  osSyncPrintf(&D_80038000_38C00, level);
  func_800101F0_10DF0(
	  D_80031C40_32840[level - 1],
	  D_80031C18_32818[level - 1],
	  D_80031C2C_3282C[level - 1] - D_80031C18_32818[level - 1]);
  osSyncPrintf(&D_80038018_38C18,
			   D_80031C40_32840[level - 1],
			   D_80031C18_32818[level - 1],
			   D_80031C2C_3282C[level - 1] - D_80031C18_32818[level - 1]);
	
	loadAddr = D_80031C50_32850[level] - D_80031C40_32840[level - 1];
	loadAddr += D_80031C40_32840[level - 1];
	D_8006AA68 = loadAddr;
	osSyncPrintf(&D_8003802C_38C2C, loadAddr);
  
  __printfunc = (void (*)(s32, s32)) D_8006AA68;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/loadLevelCode.s")
#endif

void func_800117D8_123D8(void) {
	osInvalICache(func_80070270, (u8 *)&D_8008DDF0 - func_80070270);
	osInvalDCache(&D_8008DDF0, D_800A5720 - (u8 *)&D_8008DDF0);
	func_800101F0_10DF0(func_80070270, D_158330, D_18D7E0 - D_158330);
	bzero(D_800A5720, D_800FCF50 - D_800A5720);
}

void func_80011858_12458(u8 arg0, s32 arg1) {
	if ((u32)(func_8001032C_10F2C(arg1, D_80031C04_32804[arg0 - 1], D_8006AA6C) - D_80031C04_32804[arg0 - 1]) >= 0x30D41U) {
		osSyncPrintf(&D_80038034_38C34); //  ******************************************
		osSyncPrintf(&D_80038064_38C64); //  ** WARNING: inside textures too large. *
		osSyncPrintf(&D_80038094_38C94); //  ******************************************
	}
}

void __osInitialize_emu(void) {
	__printfunc = func_802D4CD0_18D7E0;
}

void func_800118F8_124F8(void) {
	s32 ptr;
	s32 temp;

	ptr = (s32)D_3767C0;
	temp = ptr & 0xF;
	if (temp != 0) {
		ptr = (ptr - temp) + 0x10;
	}
	ptr = func_80010420_11020((s32)D_8025CCC0, ptr);
	ptr = func_80010420_11020((s32)D_80260500, ptr);
	temp = ptr & 0xF;
	if (temp != 0) {
		ptr = (ptr - temp) + 0x10;
	}
	ptr = func_80010420_11020((s32)D_801F1210, ptr);
	ptr = func_80010420_11020((s32)D_801FEA10, ptr);
	temp = ptr & 0xF;
	if (temp != 0) {
		ptr = (ptr - temp) + 0x10;
	}
	ptr = func_80010420_11020((s32)D_80264B00, ptr);
	func_80010420_11020((s32)D_80265880, ptr);
}

s32 func_800119A8_125A8(s32 arg0)
{
  void (*new_var2)(s32, s32);
  new_var2 = (__printfunc = (void (*)(s32, s32)) arg0);
  func_800101F0_10DF0(new_var2, &D_4EBF80, &D_500A00 - &D_4EBF80);
  return &D_500A00 - &D_4EBF80 + arg0;
}

#ifdef NON_MATCHING
s32 func_800119F4_125F4(s32 arg0) {
	func_800101F0_10DF0(D_8006AA6C = arg0, &D_500A00, &D_55B0A0 - &D_500A00);
	return (&D_55B0A0 - &D_500A00) + arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_800119F4_125F4.s")
#endif

#ifdef NON_MATCHING
s32 func_80011A40_12640(u8 arg0, s32 arg1) {
	D_8006AA70 = arg1;
	func_800101F0_10DF0(arg1, D_80031B90_32790[arg0], D_80031BAC_327AC[arg0] - D_80031B90_32790[arg0]);
	return D_80031BAC_327AC[arg0] - D_80031B90_32790[arg0] + arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011A40_12640.s")
#endif

#ifdef NON_MATCHING
s32 func_80011AC8_126C8(s32 arg0) {
	func_800101F0_10DF0(D_8006AA74 = arg0, &D_55B0A0, &D_579D50 - &D_55B0A0);
	return (&D_579D50 - &D_55B0A0) + arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011AC8_126C8.s")
#endif

#ifdef NON_MATCHING
s32 func_80011B14_12714(s32 arg0) {
	func_800101F0_10DF0(D_8006AA6C = arg0, &D_791C20, &D_7A4400 - &D_791C20);
	return (&D_7A4400 - &D_791C20) + arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011B14_12714.s")
#endif

#ifdef NON_MATCHING
s32 func_80011B60_12760(u8 arg0, s32 arg1) {
	D_8006AA70 = arg1;
	func_800101F0_10DF0(arg1, D_80031BDC_327DC[arg0 - 1], D_80031BF0_327F0[arg0 - 1] - D_80031BDC_327DC[arg0 - 1]);
	return D_80031BF0_327F0[arg0 - 1] - D_80031BDC_327DC[arg0 - 1] + arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011B60_12760.s")
#endif

#ifdef NON_MATCHING
s32 func_80011BE8_127E8(s32 arg0) {
	func_800101F0_10DF0(D_8006AA70 = arg0, &D_43A340, &D_4EBF80 - &D_43A340);
	return (&D_4EBF80 - &D_43A340) + arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011BE8_127E8.s")
#endif

void debug_printModelSegmentStart(void *arg0) {
	osSyncPrintf(D_800380C4); // ------------------------------
	osSyncPrintf(D_800380E4, arg0); // Start of model segment: %8x
}

s32 debug_printModelSegmentEnd(void *arg0) {
	s32 sp18;

	sp18 = (u8 *)&D_803DA800 - (u8 *)arg0;
	if (sp18 <= 0) {
		sourceTaggedPrintF(&D_80038104_38D04, &D_8003810C_38D0C, 0x47A);
		// free>0
		// src/loader.c
	}
	osSyncPrintf(&D_8003811C_38D1C); // ------------------------------
	osSyncPrintf(&D_8003813C_38D3C, arg0); // End of model segment: %8x
	osSyncPrintf(&D_80038158_38D58, &D_803DA800); //     Start of ZBuffer: %8x
	osSyncPrintf(&D_80038174_38D74, sp18, (f64)sp18 * 0.0009765625);
	//                 Free: %x, (%.2fK)
	osSyncPrintf(&D_80038198_38D98); // ------------------------------
}

void func_80011D24_12924(void) {
	s32 temp_v0;

	debug_printModelSegmentStart(__printfunc);
	temp_v0 = func_800119A8_125A8(__printfunc);
	temp_v0 = func_80011AC8_126C8(temp_v0);
	temp_v0 = func_80011BE8_127E8(temp_v0);
	debug_printModelSegmentEnd(temp_v0);
}

s32 func_80011D6C_1296C(s32 arg0) {
	s32 temp_v0;

	debug_printModelSegmentStart(__printfunc);
	temp_v0 = func_800119A8_125A8(__printfunc);
	temp_v0 = func_800119F4_125F4(temp_v0);
	temp_v0 = func_80011A40_12640((u8)arg0, temp_v0);
	return debug_printModelSegmentEnd((void *)temp_v0);
}

s32 func_80011DBC_129BC(s32 arg0) {
	s32 temp_v0;

	debug_printModelSegmentStart(__printfunc);
	temp_v0 = func_800119A8_125A8(__printfunc);
	temp_v0 = func_80011B14_12714(temp_v0);
	temp_v0 = func_80011B60_12760((u8)arg0, temp_v0);
	temp_v0 = func_80011AC8_126C8(temp_v0);
	return debug_printModelSegmentEnd((void *)temp_v0);
}

void func_80011E14_12A14(u8 arg0) {
    gSPSegment(D_8005BB2C++, 0, 0);
    gSPSegment(D_8005BB2C++, 1, (u32)__printfunc & 0x1FFFFFFF);
    gSPSegment(D_8005BB2C++, 5, (u32)D_8006AA6C & 0x1FFFFFFF);
    gSPSegment(D_8005BB2C++, 0xF, (u32)D_8006AA74 & 0x1FFFFFFF);
    gSPSegment(D_8005BB2C++, D_80031C68_32868[arg0], (u32)D_8006AA70 & 0x1FFFFFFF);
    if (D_80052ACA == 2 && currentLevel != LEVEL_COMET) {
        gSPSegment(D_8005BB2C++, D_80031C68_32868[6], (u32)D_8006AA70 & 0x1FFFFFFF);
    }
    func_80004C8C_588C();
}

s32 func_80011F90_12B90(void *arg0) {
	return ((s32)arg0 & 0xFFFFFF) + D_8006AA70;
}

s32 func_80011FAC_12BAC(void *arg0) {
	return ((s32)arg0 & 0xFFFFFF) + (s32)__printfunc;
}

s32 func_80011FC8_12BC8(void *arg0) {
	return ((s32)arg0 & 0xFFFFFF) + (s32)D_8006AA6C;
}

s32 func_80011FE4_12BE4(void *arg0) {
	return ((s32)arg0 & 0xFFFFFF) + D_8006AA74;
}

s32 func_80012000_12C00(s32 arg0) {
	switch ((u32)arg0 >> 24) {
	case 1:
		return func_80011FAC_12BAC((void *)arg0);
	case 5:
		return func_80011FC8_12BC8((void *)arg0);
	case 0xF:
		return func_80011FE4_12BE4((void *)arg0);
	default:
		return func_80011F90_12B90((void *)arg0);
	}
}
