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
	func_8001F2E0_1FEE0();
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

	func_8001F2E0_1FEE0();
	osPiStartDma(&io_msg, 0, 0, rom_addr, dest_buffer, 0x18, &D_80067F70);
	osRecvMesg(&D_80067F70, NULL, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80010290_10E90.s")

s32 func_800102EC_10EEC(s32 arg0, s32 arg1) {
	s32 temp_v0;

	temp_v0 = func_80010290_10E90();
	if (temp_v0 == 0) {
		return arg1 + arg0;
	}
	return temp_v0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_8001032C_10F2C.s")

s32 func_80010420_11020(s32 arg0, s32 arg1) {
	return func_8001032C_10F2C(arg0, arg1, (s32)&D_802B2080);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80010444_11044.s")

s32 func_80010490_11090(u8 arg0) {
	return D_80031BC4_327C4[arg0];
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_800104AC_110AC.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/loadLevel.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/loadLevelData.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/loadFrontendData.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011674_12274.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/loadLevelCode.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_800117D8_123D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011858_12458.s")

void __osInitialize_emu(void) {
	__printfunc = func_802D4CD0_18D7E0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_800118F8_124F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_800119A8_125A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_800119F4_125F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011A40_12640.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011AC8_126C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011B14_12714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011B60_12760.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011BE8_127E8.s")

void debug_printModelSegmentStart(void *arg0) {
	osSyncPrintf(D_800380C4);
	osSyncPrintf(D_800380E4, arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/debug_printModelSegmentEnd.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011E14_12A14.s")

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
