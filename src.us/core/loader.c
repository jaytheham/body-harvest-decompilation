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

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_8001032C_10F2C.s")

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

#ifdef NON_MATCHING
void func_80011674_12274(void) {
    osInvalICache(&func_80070270, (u8 *)&D_8013B8F0 - (u8 *)&func_80070270);
    osInvalDCache(&D_8013B8F0, (u8 *)&D_80149380 - (u8 *)&D_8013B8F0);
    func_800101F0_10DF0((s32)&func_80070270, (s32)D_7F220, D_158330 - D_7F220);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011674_12274.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/loadLevelCode.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_800117D8_123D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011858_12458.s")

void __osInitialize_emu(void) {
	__printfunc = func_802D4CD0_18D7E0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_800118F8_124F8.s")

#ifdef NON_MATCHING
s32 func_800119A8_125A8(s32 arg0) {
	s32 size = &D_500A00 - &D_4EBF80;
	func_800101F0_10DF0(__printfunc = (void (*)(s32, s32))arg0, &D_4EBF80, size);
	return size + arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_800119A8_125A8.s")
#endif

#ifdef NON_MATCHING
s32 func_800119F4_125F4(s32 arg0) {
	func_800101F0_10DF0(D_8006AA6C = arg0, &D_500A00, &D_55B0A0 - &D_500A00);
	return (&D_55B0A0 - &D_500A00) + arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_800119F4_125F4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011A40_12640.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011B60_12760.s")

#ifdef NON_MATCHING
s32 func_80011BE8_127E8(s32 arg0) {
	func_800101F0_10DF0(D_8006AA70 = arg0, &D_43A340, &D_4EBF80 - &D_43A340);
	return (&D_4EBF80 - &D_43A340) + arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011BE8_127E8.s")
#endif

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
