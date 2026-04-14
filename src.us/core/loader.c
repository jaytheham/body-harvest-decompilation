#include <ultra64.h>
#include "common.h"

s32 func_8000FFC0_10BC0(s32 arg0, s32 arg1, s32 arg2, s32 arg3);

#ifdef NON_MATCHING
s32 func_8000FFC0_10BC0(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
	s32 var_s0;
	s32 var_s1;
	s32 var_s2;
	s32 var_v1;
	OSIoMesg sp58;
	s32 temp_v0;

	if (1 == D_80068078) {
		return 0;
	}
	osWritebackDCacheAll();
	var_s1 = arg1;
	var_s2 = arg2;
	var_v1 = arg3 / 2048;
	var_s0 = var_v1 - 1;
	if (var_v1 != 0) {
		do {
			osPiStartDma(&sp58, 0, 0, var_s2, var_s1, 0x800, arg0);
			osRecvMesg(arg0, 0, 1);
			temp_v0 = func_8001F6E0_202E0();
			switch (temp_v0) {
			case 1:
				osSyncPrintf(D_80037794_38394);
				break;
			case 2:
				osSyncPrintf(D_80037780_38380);
				break;
			case 4:
				osSyncPrintf(D_800377A8_383A8);
				break;
			}
			var_s2 += 0x800;
			var_s1 += 0x800;
		} while (var_s0--);
	}
	temp_v0 = arg3 - (var_v1 << 0xB);
	if (temp_v0 != 0) {
		osPiStartDma(&sp58, 0, 0, var_s2, var_s1, temp_v0, arg0);
		osRecvMesg(arg0, 0, 1);
		temp_v0 = func_8001F6E0_202E0();
		switch (temp_v0) {
		case 1:
			osSyncPrintf(D_800377D0_383D0);
			break;
		case 2:
			osSyncPrintf(D_800377BC_383BC);
			break;
		case 4:
			osSyncPrintf(D_800377E4_383E4);
			break;
		}
	}
	arg2 += arg3;
	if (D_8006AA64 == 0xBABEFACE) {
		osSyncPrintf(D_800377F8_383F8, arg3);
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
	s32 var_a1;
	s32 var_v1;
	s32 header[6]; /* 0x18 bytes = MIO0 header at sp+0x20 */

	func_80010228_10E28(arg0, header);
	if (header[0] != 0x4D494F30) {
		return 0;
	}
	var_a1 = header[1] & 3;
	var_v1 = header[1];
	if (var_a1 != 0) {
		var_v1 = (header[1] - var_a1) + 4;
	}
	arg0 += var_v1;
	return arg0;
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

s32 func_800104AC_110AC(u8 arg0) {
	s32 var_s0;
	s32 var_s1;
	s32 temp_v1;

	arg0--;
	arg0 = (u8)arg0;
	var_s1 = (s32) &D_37F840;
	if (arg0 != 0) {
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
		} while (--arg0 != 0);
	}
	temp_v1 = var_s1 & 0xF;
	if (temp_v1 != 0) {
		var_s1 = (var_s1 - temp_v1) + 0x10;
	}
	return var_s1;
}

#ifdef NON_MATCHING
s32 func_800105F0_111F0(s32 *arg0, s32 *arg1, s32 *arg2, s32 arg3, u8 arg4, s32 *arg5) {
	s32 sp34;
	s32 sp30;
	s32 sp2C;
	s32 *sp28;
	s32 var_v0;
	s32 var_a1;
	s32 var_a1_2;
	s32 var_s0;
	s32 var_s1;

	var_v0 = func_800101F0_10DF0((s32)arg0, func_800104AC_110AC(arg4), 0xFE00);
	var_a1 = var_v0;
	if (var_v0 & 0xF) {
		var_a1 = (var_v0 - (var_v0 & 0xF)) + 0x10;
	}

	var_v0 = func_800101F0_10DF0((s32)sp28, var_a1, 4);

	switch (D_800313D0) {
	default:
	case 0:
		var_a1_2 = func_800101F0_10DF0((s32)arg5, func_800101F0_10DF0((s32)arg1, var_v0, 0x3800), 0x100) + 0x7200;
		break;
	case 1:
		var_v0 += 0x3900;
		var_a1_2 = func_800101F0_10DF0((s32)arg5, func_800101F0_10DF0((s32)arg1, var_v0, 0x3800), 0x100) + 0x3900;
		break;
	case 2:
		var_v0 += 0x7200;
		var_a1_2 = func_800101F0_10DF0((s32)arg5, func_800101F0_10DF0((s32)arg1, var_v0, 0x3800), 0x100);
		break;
	}

	var_v0 = func_800101F0_10DF0((s32)arg2, var_a1_2, 0x100);
	var_s0 = arg3;
	var_s1 = 0;
	do {
		if (var_v0 & 0xF) {
			var_v0 = (var_v0 - (var_v0 & 0xF)) + 0x10;
		}
		var_v0 = func_8001032C_10F2C(var_s0, var_v0, (s32)&D_803DA800);
		var_s0 += 0x1400;
		var_v0 = func_8001032C_10F2C(var_s0, var_v0, (s32)&D_803DA800);
		var_s1 = (var_s1 + 1) & 0xFF;
		var_s0 += 0x200;
	} while (var_s1 < 0xC);

	return *sp28;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_800105F0_111F0.s")
#endif

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

#ifdef NON_MATCHING
void loadLevelData(u8 arg0) {
	Unk8031C88 sp48;
	s32 sp44;
	Unk80378D0 sp34;
	s32 var_s0;

	sp48 = D_80031C88_32888;
	*((u16 *)((u8 *)&sp44 + 2)) = *((u16 *)((u8 *)&D_800378CC_384CC + 2));
	sp34 = D_800378D0_384D0;
	var_s0 = func_80010490_11090(arg0);
	osWritebackDCacheAll();
	osSyncPrintf(&D_800378E0_384E0);
	var_s0 = func_80010420_11020(&D_801FEA30, var_s0);
	osSyncPrintf(&D_800378F4_384F4, 0x20000, (D_8006AA60 == 0x20000) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037908_38508);
	var_s0 = func_80010420_11020(&D_8021EA30, var_s0);
	osSyncPrintf(&D_8003791C_3851C, 0x1000, (D_8006AA60 == 0x1000) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037930_38530);
	var_s0 = func_80010420_11020(&D_80260700, var_s0);
	osSyncPrintf(&D_80037944_38544, 0x4000, (D_8006AA60 == 0x4000) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037958_38558);
	var_s0 = func_80010420_11020(&D_80264700, var_s0);
	osSyncPrintf(&D_8003796C_3856C, 0x400, (D_8006AA60 == 0x400) ? (void *)&sp44 : (void *)&sp34);
	osSetThreadPri(0, 4);
	osSyncPrintf(&D_80037980_38580);
	var_s0 = func_80010420_11020(&D_8021FA30, var_s0);
	osSyncPrintf(&D_80037994_38594, 0x2000, ((u32)(0x2000 - D_8006AA60) >> 5) - 1);
	osSyncPrintf(&D_800379B4_385B4);
	var_s0 = func_80010420_11020(&D_80221A30, var_s0);
	osSyncPrintf(&D_800379C8_385C8, 0x1000, (D_8006AA60 == 0x1000) ? (void *)&sp44 : (void *)&sp34);
	osWritebackDCacheAll();
	osSyncPrintf(&D_800379DC_385DC);
	var_s0 = func_800101F0_10DF0(&D_80222A30, var_s0, 0x40);
	osSyncPrintf(&D_80037A10_38610, 0x40, (D_8006AA60 == 0x40) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037A24_38624);
	var_s0 = func_800101F0_10DF0(&D_80222A70, var_s0, 8);
	D_80222A70 <<= 5;
	osSyncPrintf(&D_80037A58_38658, 8, (D_8006AA60 == 8) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037A6C_3866C);
	var_s0 = func_800101F0_10DF0(&buildingSpecs, var_s0, 0x400);
	osSyncPrintf(&D_80037AA0_386A0, 0x400, (D_8006AA60 == 0x400) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037AB4_386B4);
	var_s0 = func_800101F0_10DF0(&buildingInstances, var_s0, 0x17E8);
	osSyncPrintf(&D_80037AE8_386E8, 0x17E8, (D_8006AA60 == 0x17E8) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037AFC_386FC);
	var_s0 = func_800101F0_10DF0(&D_80222A78, var_s0 + 4, 0xC00);
	osSyncPrintf(&D_80037B30_38730, 0xC00, (D_8006AA60 == 0xD00) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037B44_38744);
	var_s0 = func_800101F0_10DF0(&D_80223778, var_s0, 8);
	osSyncPrintf(&D_80037B78_38778, 8, (D_8006AA60 == 8) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037B8C_3878C);
	var_s0 = func_800101F0_10DF0(&D_80223780, var_s0, 0xF00);
	osSyncPrintf(&D_80037BC0_387C0, 0xF00, (D_8006AA60 == 0xF00) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037BD4_387D4);
	var_s0 = func_800101F0_10DF0(&D_80259490, var_s0, 0x900);
	osSyncPrintf(&D_80037C08_38808, 0x900, (D_8006AA60 == 0x900) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037C1C_3881C);
	var_s0 = func_800101F0_10DF0(&D_80224680, var_s0, 0x800);
	osSyncPrintf(&D_80037C50_38850, 0x800, (D_8006AA60 == 0x800) ? (void *)&sp44 : (void *)&sp34);
	if ((D_80224680 == 0xA8) || (D_80224680 == 0x90) || (D_80224680 == 0xB0)) {
		osSyncPrintf(&D_80037C64_38864);
	} else {
		osSyncPrintf(&D_80037C74_38874);
	}
	if (var_s0 & 0xF) {
		var_s0 = (var_s0 - (var_s0 & 0xF)) + 0x10;
	}
	osSyncPrintf(&D_80037C88_38888);
	var_s0 = func_80010420_11020(&D_80224E80, var_s0);
	osSyncPrintf(&D_80037C9C_3889C, 0x30000, (D_8006AA60 == 0x30000) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037CB0_388B0);
	var_s0 = func_80010420_11020(&D_80254E80, var_s0);
	osSyncPrintf(&D_80037CC4_388C4, 0x1800, (D_8006AA60 == 0x1800) ? (void *)&sp44 : (void *)&sp34);
	if (var_s0 & 0xF) {
		var_s0 = (var_s0 - (var_s0 & 0xF)) + 0x10;
	}
	osSyncPrintf(&D_80037CD8_388D8);
	var_s0 = func_80010420_11020(&D_802CA8D0, var_s0);
	osSyncPrintf(&D_80037CEC_388EC, 0xA000, (D_8006AA60 == 0xA000) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037D00_38900);
	var_s0 = func_80010420_11020(&D_802D48D0, var_s0);
	osSyncPrintf(&D_80037D14_38914, 0x200, (D_8006AA60 == 0x200) ? (void *)&sp44 : (void *)&sp34);
	if (var_s0 & 0xF) {
		var_s0 = (var_s0 - (var_s0 & 0xF)) + 0x10;
	}
	osSyncPrintf(&D_80037D28_38928);
	var_s0 = func_800101F0_10DF0(&alienSpecs, var_s0, 0x1380);
	osSyncPrintf(&D_80037D5C_3895C, 0x1380, (D_8006AA60 == 0x1380) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037D70_38970);
	var_s0 = func_800101F0_10DF0(&vehicleSpecs, var_s0, 0x930);
	osSyncPrintf(&D_80037DA4_389A4, 0x930, (D_8006AA60 == 0x930) ? (void *)&sp44 : (void *)&sp34);
	if (D_80257A14 == 0x3039) {
		osSyncPrintf(&D_80037DB8_389B8);
	} else {
		osSyncPrintf(&D_80037DC8_389C8);
	}
	if (var_s0 & 0xF) {
		var_s0 = (var_s0 - (var_s0 & 0xF)) + 0x10;
	}
	osSyncPrintf(&D_80037DDC_389DC);
	var_s0 = func_800101F0_10DF0(&D_80258330, var_s0, 0x60);
	osSyncPrintf(&D_80037E10_38A10, 0x60, (D_8006AA60 == 0x60) ? (void *)&sp44 : (void *)&sp34);
	if (var_s0 & 0xF) {
		var_s0 = (var_s0 - (var_s0 & 0xF)) + 0x10;
	}
	osSyncPrintf(&D_80037E24_38A24, D_800313D0);
	switch (D_800313D0) {
	default:
	case 0:
		var_s0 = func_800101F0_10DF0(&D_80258390, var_s0, 0xC00);
		break;
	case 1:
		var_s0 = func_800101F0_10DF0(&D_80258390, var_s0 + 0xD00, 0xC00);
		break;
	case 2:
		var_s0 = func_800101F0_10DF0(&D_80258390, var_s0 + 0x1A00, 0xC00);
		break;
	}
	osSyncPrintf(&D_80037E64_38A64, 0xC00, (D_8006AA60 == 0xC00) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037E78_38A78);
	switch (D_800313D0) {
	default:
	case 0:
		var_s0 = func_800101F0_10DF0(&D_80258F90, var_s0, 0x100) + 0x1A00;
		break;
	case 1:
		var_s0 = func_800101F0_10DF0(&D_80258F90, var_s0, 0x100) + 0xD00;
		break;
	case 2:
		var_s0 = func_800101F0_10DF0(&D_80258F90, var_s0, 0x100);
		break;
	}
	osSyncPrintf(&D_80037E98_38A98, 0x100, (D_8006AA60 == 0x100) ? (void *)&sp44 : (void *)&sp34);
	if (var_s0 & 0xF) {
		var_s0 = (var_s0 - (var_s0 & 0xF)) + 0x10;
	}
	osSyncPrintf(&D_80037EAC_38AAC);
	switch (D_800313D0) {
	default:
	case 0:
		var_s0 = func_800101F0_10DF0(&D_8006AC10, var_s0, 0x1800);
		break;
	case 1:
		var_s0 = func_800101F0_10DF0(&D_8006AC10, var_s0 + 0x1900, 0x1800);
		break;
	case 2:
		var_s0 = func_800101F0_10DF0(&D_8006AC10, var_s0 + 0x3200, 0x1800);
		break;
	}
	osSyncPrintf(&D_80037EE0_38AE0, 0x1800, (D_8006AA60 == 0x1800) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037EF4_38AF4);
	switch (D_800313D0) {
	default:
	case 0:
		var_s0 = func_800101F0_10DF0(&D_8006C450, var_s0, 0x100) + 0x3200;
		break;
	case 1:
		var_s0 = func_800101F0_10DF0(&D_8006C450, var_s0, 0x100) + 0x1900;
		break;
	case 2:
		var_s0 = func_800101F0_10DF0(&D_8006C450, var_s0, 0x100);
		break;
	}
	osSyncPrintf(&D_80037F14_38B14, 0x100, (D_8006AA60 == 0x100) ? (void *)&sp44 : (void *)&sp34);
	if (var_s0 & 0xF) {
		var_s0 = (var_s0 - (var_s0 & 0xF)) + 0x10;
	}
	osSyncPrintf(&D_80037F28_38B28);
	var_s0 = func_800101F0_10DF0(&D_8006C410, var_s0, 0x40);
	osSyncPrintf(&D_80037F5C_38B5C, 0x40, (D_8006AA60 == 0x40) ? (void *)&sp44 : (void *)&sp34);
	if (var_s0 & 0xF) {
		var_s0 = (var_s0 - (var_s0 & 0xF)) + 0x10;
	}
	osSyncPrintf(&D_80037F70_38B70);
	var_s0 = func_800101F0_10DF0(&D_800522C0, var_s0, 0x280);
	osSyncPrintf(&D_80037FA4_38BA4, 0x280, (D_8006AA60 == 0x280) ? (void *)&sp44 : (void *)&sp34);
	osSyncPrintf(&D_80037FB8_38BB8);
	func_800101F0_10DF0(&D_80052560, var_s0, 0x528);
	osSyncPrintf(&D_80037FEC_38BEC, 0x528, (D_8006AA60 == 0x528) ? (void *)&sp44 : (void *)&sp34);

	{
		u8 *var_a3 = D_801FEA30;
		u8 *var_t1 = D_801FEA30;
		s32 var_t0 = 0;
		u8 var_a2 = 0xFF;
		do {
			s32 temp_t7;
			u16 *var_v1;
			s32 var_a0;

			temp_t7 = (var_t0 % 2) << 13;
			*(u16 *)(var_a3 + 4) = (u16)(*(u16 *)(var_a3 + 4) ^ temp_t7);
			*(u16 *)(var_a3 + 2) = (u16)(*(u16 *)(var_a3 + 2) ^ 0x4000 ^ temp_t7);
			*(u16 *)(var_a3 + 0) = (u16)(*(u16 *)(var_a3 + 0) ^ temp_t7);
			var_v1 = (u16 *)(var_t1 + 6);
			var_a0 = 3;
			do {
				*(var_v1 + 0) = (u16)(*(var_v1 + 0) ^ ((var_a0 % 2) << 14) ^ temp_t7);
				*(var_v1 + 1) = (u16)(*(var_v1 + 1) ^ (((var_a0 + 1) % 2) << 14) ^ temp_t7);
				*(var_v1 + 2) = (u16)(*(var_v1 + 2) ^ (((var_a0 + 2) % 2) << 14) ^ temp_t7);
				*(var_v1 + 3) = (u16)(*(var_v1 + 3) ^ (((var_a0 + 3) % 2) << 14) ^ temp_t7);
				var_a0 += 4;
				var_v1 += 4;
			} while (var_a0 != var_a2);
			var_t0 += 1;
			var_t1 += 0x200;
			var_a3 += 0x200;
		} while (var_t0 != var_a2);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/loadLevelData.s")
#endif

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

s32 func_800119F4_125F4(s32 arg0)
{
  D_8006AA6C = arg0;
  func_800101F0_10DF0(D_8006AA6C, &D_500A00, &D_55B0A0 - &D_500A00);
  return &D_55B0A0 - &D_500A00 + arg0;
}

#ifdef NON_MATCHING
s32 func_80011A40_12640(u8 arg0, s32 arg1) {
	D_8006AA70 = arg1;
	func_800101F0_10DF0(D_8006AA70, D_80031B90_32790[arg0], D_80031BAC_327AC[arg0] - D_80031B90_32790[arg0]);
	return D_80031BAC_327AC[arg0] - D_80031B90_32790[arg0] + arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011A40_12640.s")
#endif

s32 func_80011AC8_126C8(s32 arg0) {
	D_8006AA74 = arg0;
	func_800101F0_10DF0(D_8006AA74, &D_55B0A0, &D_579D50 - &D_55B0A0);
	return (&D_579D50 - &D_55B0A0) + arg0;
}

s32 func_80011B14_12714(s32 arg0) {
	D_8006AA6C = arg0;
	func_800101F0_10DF0(D_8006AA6C, &D_791C20, &D_7A4400 - &D_791C20);
	return (&D_7A4400 - &D_791C20) + arg0;
}

#ifdef NON_MATCHING
s32 func_80011B60_12760(u8 arg0, s32 arg1) {
	D_8006AA70 = arg1;
	func_800101F0_10DF0(arg1, D_80031BDC_327DC[arg0 - 1], D_80031BF0_327F0[arg0 - 1] - D_80031BDC_327DC[arg0 - 1]);
	return D_80031BF0_327F0[arg0 - 1] - D_80031BDC_327DC[arg0 - 1] + arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/loader/func_80011B60_12760.s")
#endif

s32 func_80011BE8_127E8(s32 arg0) {
	D_8006AA70 = arg0;
	func_800101F0_10DF0(D_8006AA70, &D_43A340, &D_4EBF80 - &D_43A340);
	return (&D_4EBF80 - &D_43A340) + arg0;
}

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
