#include <ultra64.h>
#include "common.h"

void func_802D6D20_18F830(void);

void func_802D4CD0_18D7E0(s32 arg0, s32 arg1) {
	void (**dispatch_low)(s32);
	void (*func_ptr)(s32);

	if (arg0 < 0x14) {
		dispatch_low = (void (**)(s32))D_802DDBF4;
		func_ptr = dispatch_low[arg0];
		(*func_ptr)(arg1);
		return;
	}

	if (arg0 < 0x45) {
		if (arg0 < 0x1A) {
			s32 index = arg0 - 0x14;
			if (index < 0x6) {
				void (**jtbl_addr)(void) = (void (**)(void))&jtbl_802DE338_overlay_level_greece;
				void (*target)(void) = jtbl_addr[index];
				(*target)();
				return;
			}
		} else if (arg0 == 0x44) {
			func_80007690_8290();
			return;
		}
	} else if (arg0 == 0x45) {
		func_802D6D20_18F830();
		return;
	}

	osSyncPrintf((const char *)&D_802DE2D0);
}

void func_802D4E28_18D938(void) {
	if (func_8000726C_7E6C(0x17) != 0) {
		func_800073B8_7FB8(0x17);
	}
	if (func_8000726C_7E6C(0x19) != 0) {
		func_800073B8_7FB8(0x19);
	}
	if (func_8000726C_7E6C(0x1A) != 0) {
		func_800073B8_7FB8(0x1A);
	}
	if (func_8000726C_7E6C(0xF) != 0) {
		D_80050C0B = 0x77;
	}
	if (func_8000726C_7E6C(0xB) == 0) {
		func_80007410_8010(func_802D4ECC_18D9DC);
	}
}

void func_802D4ECC_18D9DC(void) {
	if (func_8000726C_7E6C(0xB) != 0) {
		func_800074BC_80BC(func_802D4ECC_18D9DC);
	}
	if (func_80004818_5418(-0x1A, -0x26, 2) != 0) {
		func_80018D7C_1997C(0x100);
		func_800074BC_80BC(func_802D4ECC_18D9DC);
	}
	if (D_80052B34->unk1A != 0) {
		func_800074BC_80BC(func_802D4ECC_18D9DC);
	}
}

void func_802D4F50_18DA60(void) {
	osViExtendVStart((s32) &D_802DD170);
}

void func_802D4F74_18DA84(void) {
	s16 state;
	s16 counter;
	s16 prev_counter;
	s16 vehicle_idx;
	VehicleInstance *vehicle;
	u8 vehicle_state;
	u16 vehicle_flags;
	s32 flag_value;

	state = D_802DE460;
	if (state < 0x3E8) {
		D_802DE460 = state + 1;
	}

	counter = D_8004DC58;
	if (counter == 0x7 || counter == 0x6 || counter == 0x5) {
		return;
	}

	vehicle = D_80052B34;
	vehicle_state = vehicle->unk1A;
	if (vehicle_state == 0x2) {
		D_8004DC58 = 0x7;
		D_802DE460 = 0;
		return;
	}

	if (vehicle_state == 0x3) {
		return;
	}

	prev_counter = D_802DE460;
	if (prev_counter < 0x1F5) {
		return;
	}

	vehicle_idx = D_802DE462;
	D_80158BD0[vehicle_idx] = 0x2;
	D_8004DC58 = 0x7;
	D_802DE460 = 0;

	if (counter >= 0x9) {
		return;
	}

	switch (counter) {
	case 0x0:
		prev_counter = D_802DE460;
		if (prev_counter == 0x1) {
			vehicle = D_80052B34;
			vehicle_idx = (vehicle - vehicleInstances) / 0x5C;
			D_802DE462 = vehicle_idx;
		}
		if (prev_counter != 0x48) {
			return;
		}
		func_80018D7C_1997C(0xE8);
		D_80050C0B = 0x77;
		break;
	case 0x1:
		vehicle = D_80052B34;
		vehicle_flags = vehicle->unk20;
		if ((vehicle_flags & 0x2) == 0) {
			return;
		}
		D_8004DC58 = 0x1;
		D_802DE460 = 0;
		break;
	case 0x2:
		prev_counter = D_802DE460;
		if (prev_counter == 0x14) {
			return;
		}
		func_80018D7C_1997C(0xE9);
		D_8004DC58 = 0x2;
		return;
	case 0x3:
		vehicle = D_80052B34;
		D_802DE460 = 0;
		if ((vehicle->unk20 & 0x2) != 0) {
			return;
		}
		D_8004DC58 = 0x8;
		break;
	case 0x4:
		vehicle = D_80052B34;
		vehicle_flags = vehicle->unk20;
		if ((vehicle_flags & 0x2) == 0) {
			return;
		}
		D_8004DC58 = 0x2;
		break;
	case 0x5:
		func_80018D7C_1997C(0xEA);
		D_8004DC58 = 0x2;
		return;
	case 0x6:
		prev_counter = D_802DE460;
		if (prev_counter == 0x14) {
			return;
		}
		D_8004DC58 = 0x7;
		D_802DE460 = 0;
		break;
	case 0x7:
		vehicle = D_80052B34;
		vehicle_state = vehicle->unk1A;
		if (vehicle_state == 0x3) {
			return;
		}
		D_8004DC58 = 0x7;
		D_802DE460 = 0;
		break;
	case 0x8:
		prev_counter = D_802DE460;
		if (prev_counter == 0x14) {
			return;
		}
		func_80018D7C_1997C(0xEB);
		break;
	case 0x14:
		prev_counter = D_802DE460;
		if (prev_counter == 0x14) {
			return;
		}
		func_80018D7C_1997C(0xEC);
		func_800074BC_80BC(func_802D4F74_18DA84);
		func_800072CC_7ECC((u64)0x1E);
		flag_value = *(s32*)(D_80159320);
		flag_value = flag_value & 0xFFBFFFFF;
		*(s32*)(D_80159320) = flag_value;
		D_802DE460 = 0;
		break;
	}
}


void func_802D5290_18DDA0(void) {
	D_8004DC58 = 0;
	D_802DE460 = 0;
	func_80007410_8010(func_802D4F74_18DA84);
}

s32 func_802D52C4_18DDD4(void) {
	D_80052554 -= 0x55;
	if (D_80052554 < 0x401) {
		D_80052554 = 0x400;
		func_800073B8_7FB8(0x2A);
		return 1;
	}
	return 0;
}

void func_802D531C_18DE2C(void) {
	func_800072CC_7ECC(0x2A);
	D_80052554 = 0x38A4;
	func_800EFEB4_FEE64(func_802D52C4_18DDD4, 1, 1);
	func_80013468_14068(1);
	D_801493E0 = 0;
}

void func_802D536C_18DE7C(void) {
	s16 sp1E;
	s16 var_v1;
	sp1E = 0xBD - D_8004D1B9;
	var_v1 = sp1E;
	if ((var_v1 < 0xB5) && (D_802DE464 >= 0xA)) {
		func_8009BF64_AAF14(var_v1);
		var_v1 = sp1E;
	}
	if (D_802DE464 < 0xA) {
		D_802DE464 += 1;
	}
	if ((var_v1 == 0) || (((s8)buildingInstances[0x37].hitPoints <= 0) && ((s8)buildingInstances[0x3F].hitPoints <= 0) && ((s8)buildingInstances[0x39].hitPoints <= 0) && ((s8)buildingInstances[0x3E].hitPoints <= 0))) {
		func_800074BC_80BC(func_802D536C_18DE7C);
	}
}



void func_802D5434_18DF44(void) {
	func_800074BC_80BC(func_802D536C_18DE7C);
	func_800076D4_82D4(5);
}

void func_802D5460_18DF70(void) {
	func_8011BF7C_12AF2C(0x37);
	func_8011BF7C_12AF2C(0x3F);
	func_8011BF7C_12AF2C(0x39);
	func_8011BF7C_12AF2C(0x3E);
	D_802DE464 = 0;
	func_80007410_8010(func_802D536C_18DE7C);
}

void func_802D54AC_18DFBC(void) {
	if ((D_80051008 >> 0xC) & 0x10) {
		func_8011C080_12B030(0x37);
		func_800AE190_BD140(3);
	}
	if ((D_800510C8 >> 0xC) & 0x10) {
		func_8011C080_12B030(0x3F);
		func_800AE190_BD140(3);
	}
	if ((D_80051038 >> 0xC) & 0x10) {
		func_8011C080_12B030(0x39);
		func_800AE190_BD140(3);
	}
	if ((D_800510B0 >> 0xC) & 0x10) {
		func_8011C080_12B030(0x3E);
		func_800AE190_BD140(3);
	}
	func_800074BC_80BC(func_802D536C_18DE7C);
	func_800076D4_82D4(5);
}

void func_802D5578_18E088(void) {
	u16 temp_t3;
	if (!(vehicleInstances[84].unk20 & 0x8000)) {
		func_800074BC_80BC(func_802D5578_18E088);
	}
	if ((vehicleInstances[84].unk0 < 0x1000) && (vehicleInstances[84].unk4 < -0x6B00)) {
		vehicleInstances[84].unk20 = (u16)(vehicleInstances[84].unk20 & 0xFBFF);
		func_800074BC_80BC(func_802D5578_18E088);
	}
	temp_t3 = D_802DE466 + 1;
	D_802DE466 = temp_t3;
	if (((temp_t3 & 0xFFFF) == 0x9C4) && (D_80048030 == 0xF)) {
		func_80007690_8290();
	}
}



void func_802D562C_18E13C(void) {
	func_80092ADC_A1A8C();
	D_802DE466 = 0;
	func_80007410_8010(func_802D5578_18E088);
}

void func_802D5660_18E170(void) {
	D_8014D182 += 1;
	D_80052554 -= D_8014D182 * 8;
	if (D_8014D182 >= 0x32) {
		func_800072CC_7ECC(0x29);
		func_800073B8_7FB8(0x2A);
		func_800074BC_80BC(func_802D5660_18E170);
		func_800076D4_82D4(0x10);
		func_80123AC4_132A74(&D_8004FB00);
	}
}

void func_802D56E8_18E1F8(void) {
	D_8014D182 = 0;
	func_800072CC_7ECC(0x2A);
	func_80007410_8010(func_802D5660_18E170);
}

void func_802D5720_18E230(void) {
	extern s32 func_802D64D0_18EFE0(void);
	D_80157F94 = 0xFF;
	func_800EFEB4_FEE64(func_802D64D0_18EFE0, 6, 1);
	func_80013468_14068(2);
}

void func_802D5760_18E270(void) {
	extern s32 func_802D6904_18F414(void);
	D_80157F94 = 0xFF;
	func_800EFEB4_FEE64(func_802D6904_18F414, 7, 1);
	func_80013468_14068(3);
}

s32 func_802D57A0_18E2B0(void) {
	s16 var_v0;
	s32 temp_s0;
	s32 temp_s0_10;
	s32 temp_s0_11;
	s32 temp_s0_12;
	s32 temp_s0_2;
	s32 temp_s0_3;
	s32 temp_s0_4;
	s32 temp_s0_5;
	s32 temp_s0_6;
	s32 temp_s0_7;
	s32 temp_s0_8;
	s32 temp_s0_9;
	s32 temp_s1;
	s32 temp_s1_10;
	s32 temp_s1_11;
	s32 temp_s1_12;
	s32 temp_s1_2;
	s32 temp_s1_3;
	s32 temp_s1_4;
	s32 temp_s1_5;
	s32 temp_s1_6;
	s32 temp_s1_7;
	s32 temp_s1_8;
	s32 temp_s1_9;
	s32 var_a0;
	s32 var_a0_3;
	s8 var_a0_2;
	u16 temp_t2;
	u16 temp_t8;
	u8 temp_t3;
	u8 temp_t5;
	u8 temp_v0;
	u8 *temp_v0_2;
	u8 *temp_v0_3;
	u8 *temp_v0_4;
	u8 *temp_v0_5;
	u8 *temp_v0_6;
	u8 *temp_v0_7;
	u8 *temp_v0_8;

	D_80157F96 = 0;
	switch (D_80157F8C) {
	default:
		return 0;
	case 0:
		temp_v0 = func_8011D260_12C210(0x46, -0x25);
		D_80159DDF = temp_v0;
		osSyncPrintf(&D_802DE2F0, temp_v0 & 0xFF);
		D_80159DE0 = 0;
		D_80159DE2 = 0;
		D_80159DE4 = 0;
		D_80157F8E = 0;
		D_80157F8C += 1;
		D_80157F84 = 400.0f;
		D_80157F88 = -2.0f;
		D_80157F78 = 400.0f;
		D_80157F7C = -2.0f;
		D_80157F80 = 300.0f;
		D_802DE468 = 0x4600;
		D_802DE46A = -0x2500;
		func_80013468_14068(4);
		return 0;
	case 1:
		temp_s1 = func_800038E0_44E0() & 0xFFFF;
		temp_s0 = func_800038E0_44E0() & 0xFFFF;
		func_800C9530_D84E0((s16) (((temp_s1 % 1200) + D_802DE468) - 0x320), (s16) (((temp_s0 % 1200) + D_802DE46A) - 0x320), ((func_800038E0_44E0() % 20) + 0xA) & 0xFFFF, 0xE1, 0xFF, 0xFF, 0x96);
		temp_s1_2 = func_800038E0_44E0() & 0xFFFF;
		temp_s0_2 = func_800038E0_44E0() & 0xFFFF;
		func_800C9530_D84E0((s16) (((temp_s1_2 % 1200) + D_802DE468) - 0x320), (s16) (((temp_s0_2 % 1200) + D_802DE46A) - 0x320), ((func_800038E0_44E0() % 20) + 0xA) & 0xFFFF, 0xE1, 0xFF, 0xFF, 0x96);
		temp_s1_3 = func_800038E0_44E0() & 0xFFFF;
		temp_s0_3 = func_800038E0_44E0() & 0xFFFF;
		func_800C9530_D84E0((s16) (((temp_s1_3 % 1200) + D_802DE468) - 0x320), (s16) (((temp_s0_3 % 1200) + D_802DE46A) - 0x320), ((func_800038E0_44E0() % 20) + 0xA) & 0xFFFF, 0xE1, 0xFF, 0xFF, 0x96);
		D_80157F8E += 1;
		if (D_80157F8E >= 0x1F) {
			D_80157F8E = 0;
			D_80157F8C += 1;
		}
		return 0;
	case 2:
		var_v0 = D_80157F8E;
		D_80159DE2 += 1;
		if (var_v0 < 0x4B) {
			temp_s1_4 = func_800038E0_44E0() & 0xFFFF;
			temp_s0_4 = func_800038E0_44E0() & 0xFFFF;
			func_800C9530_D84E0((s16) (((temp_s1_4 % 1600) + D_802DE468) - 0x3E8), (s16) (((temp_s0_4 % 1600) + D_802DE46A) - 0x3E8), ((func_800038E0_44E0() % 30) + 0x14) & 0xFFFF, 0xE1, 0xFF, 0xFF, 0x96);
			temp_s1_5 = func_800038E0_44E0() & 0xFFFF;
			temp_s0_5 = func_800038E0_44E0() & 0xFFFF;
			func_800C9530_D84E0((s16) (((temp_s1_5 % 1600) + D_802DE468) - 0x3E8), (s16) (((temp_s0_5 % 1600) + D_802DE46A) - 0x3E8), ((func_800038E0_44E0() % 30) + 0x14) & 0xFFFF, 0xE1, 0xFF, 0xFF, 0x96);
			temp_s1_6 = func_800038E0_44E0() & 0xFFFF;
			temp_s0_6 = func_800038E0_44E0() & 0xFFFF;
			func_800C9530_D84E0((s16) (((temp_s1_6 % 1600) + D_802DE468) - 0x3E8), (s16) (((temp_s0_6 % 1600) + D_802DE46A) - 0x3E8), ((func_800038E0_44E0() % 30) + 0x14) & 0xFFFF, 0xE1, 0xFF, 0xFF, 0x96);
			goto block_12;
		}
		if (var_v0 < 0x55) {
			temp_s1_7 = func_800038E0_44E0() & 0xFFFF;
			temp_s0_7 = func_800038E0_44E0() & 0xFFFF;
			func_800C9530_D84E0((s16) (((temp_s1_7 % 1000) + D_802DE468) - 0x2F3), (s16) (((temp_s0_7 % 1000) + D_802DE46A) - 0x2F3), ((func_800038E0_44E0() % 30) + 0xC8) & 0xFFFF, 0x96, 0xC8, 0xFF, 0xC8);
			temp_s1_8 = func_800038E0_44E0() & 0xFFFF;
			temp_s0_8 = func_800038E0_44E0() & 0xFFFF;
			func_800C9530_D84E0((s16) (((temp_s1_8 % 1000) + D_802DE468) - 0x2F3), (s16) (((temp_s0_8 % 1000) + D_802DE46A) - 0x2F3), ((func_800038E0_44E0() % 30) + 0xC8) & 0xFFFF, 0x96, 0xC8, 0xFF, 0xC8);
			temp_s1_9 = func_800038E0_44E0() & 0xFFFF;
			temp_s0_9 = func_800038E0_44E0() & 0xFFFF;
			func_800C9530_D84E0((s16) (((temp_s1_9 % 1000) + D_802DE468) - 0x2F3), (s16) (((temp_s0_9 % 1000) + D_802DE46A) - 0x2F3), ((func_800038E0_44E0() % 30) + 0xC8) & 0xFFFF, 0x96, 0xC8, 0xFF, 0xC8);
			temp_s1_10 = func_800038E0_44E0() & 0xFFFF;
			temp_s0_10 = func_800038E0_44E0() & 0xFFFF;
			func_800C9530_D84E0((s16) (((temp_s1_10 % 1000) + D_802DE468) - 0x2F3), (s16) (((temp_s0_10 % 1000) + D_802DE46A) - 0x2F3), ((func_800038E0_44E0() % 30) + 0xC8) & 0xFFFF, 0x96, 0xC8, 0xFF, 0xC8);
			temp_s1_11 = func_800038E0_44E0() & 0xFFFF;
			temp_s0_11 = func_800038E0_44E0() & 0xFFFF;
			func_800C9530_D84E0((s16) (((temp_s1_11 % 1000) + D_802DE468) - 0x2F3), (s16) (((temp_s0_11 % 1000) + D_802DE46A) - 0x2F3), ((func_800038E0_44E0() % 30) + 0xC8) & 0xFFFF, 0x96, 0xC8, 0xFF, 0xC8);
			temp_s1_12 = func_800038E0_44E0() & 0xFFFF;
			temp_s0_12 = func_800038E0_44E0() & 0xFFFF;
			func_800C9530_D84E0((s16) (((temp_s1_12 % 1000) + D_802DE468) - 0x2F3), (s16) (((temp_s0_12 % 1000) + D_802DE46A) - 0x2F3), ((func_800038E0_44E0() % 30) + 0xC8) & 0xFFFF, 0x96, 0xC8, 0xFF, 0xC8);
block_12:
			var_v0 = D_80157F8E;
		}
		var_a0 = 0x8A;
		if (var_v0 == 0x46) {
			do {
				u8 *p = (u8 *)D_80052A94 + var_a0 - 0x5200;
				temp_t8 = ((u16 *)p)[0];
				temp_t3 = p[1];
				var_a0 += 2;
				p[1] = (s8) (((temp_t8 + 4) & 0x3F) | (temp_t3 & 0xFFC0));
			} while (var_a0 != 0x90);
			var_v0 = D_80157F8E;
		}
		var_a0_2 = var_v0 & 7;
		if (var_a0_2 == 7) {
			var_a0_3 = 0x86;
			do {
				u8 *base = (u8 *)D_80052A94;
				temp_v0_3 = base + var_a0_3 - 0x5000;
				temp_v0_3[1] = (s8) (((temp_v0_3[0] + 1) & 0x3F) | (temp_v0_3[1] & 0xFFC0));
				temp_v0_4 = base + var_a0_3 - 0x4E00;
				temp_v0_4[1] = (u8) (((temp_v0_4[0] + 1) & 0x3F) | (temp_v0_4[1] & 0xFFC0));
				temp_v0_5 = base + (-0x26 << 9) + var_a0_3;
				temp_v0_5[1] = (u8) (((temp_v0_5[0] + 1) & 0x3F) | (temp_v0_5[1] & 0xFFC0));
				temp_v0_6 = temp_v0_5 + 0x200;
				temp_v0_6[1] = (u8) (((temp_v0_6[0] + 1) & 0x3F) | (temp_v0_6[1] & 0xFFC0));
				temp_v0_7 = temp_v0_5 + 0x400;
				temp_v0_7[1] = (u8) (((temp_v0_7[0] + 1) & 0x3F) | (temp_v0_7[1] & 0xFFC0));
				temp_v0_8 = temp_v0_5 + 0x600;
				temp_t2 = *(u16 *)temp_v0_8;
				temp_t5 = temp_v0_8[1];
				var_a0_3 += 2;
				temp_v0_8[1] = (s8) (((temp_t2 + 1) & 0x3F) | (temp_t5 & 0xFFC0));
			} while (var_a0_3 != 0x94);
			var_v0 = D_80157F8E;
			var_a0_2 = var_v0 & 7;
		}
		D_8015273E = var_a0_2;
		D_80157F8E = var_v0 + 1;
		if (var_v0 >= 0x65) {
			D_80157F8E = 0;
			D_80157F8C += 1;
		}
		return 0;
	case 3: {
		void *bldg = (u8 *)&buildingInstances + D_80159DDF * 0x18;
		*(s16 *)((u8 *)bldg + 2) = (s16) (func_800B84D0_C7480(*(s16 *)bldg, *(s16 *)((u8 *)bldg + 4)) >> 8);
		D_80159DE2 = 0;
		D_8015273E = 0;
		D_80159DDF = 0xFF;
		return 1;
	}
	}
}



#ifdef NON_MATCHING
s32 func_802D64D0_18EFE0(void) {
	s16 step;
	s16 substep;
	s16 alienIdx;
	s32 v0;
	AlienInstance *alien;
	BuildingInstance *building;

	step = D_80157F94;
	D_80157F96 = 0;

	if (step != (s16) 0xFF) {
		alienIdx = step * 5;
		func_800800E4_8F094(*(u8 *) ((u8 *) &D_800481B2 + alienIdx * 16));
		func_80080510_8F4C0(D_80157F95);
		step = D_80157F94;
		alien = &alienInstances[step];
		alien->unk6 = alien->unkE;
		((void (*)(u8)) *(s32 *) ((u8 *) &D_802566C8 + ((alienIdx * 4 - alienIdx) * 4 + alienIdx) * 8))((u8) step);
	}

	substep = D_80157F8E;
	switch (D_80157F8C) {
	case 0:
		func_8011D260_12C210(0x4A, -0x7);
		D_80159DDF = (u8) v0;
		D_80159DE0 = 0;
		D_80159DE2 = 0;
		D_80159DE4 = 0;
		D_80157F8E = 0;
		D_80052554 = 0x400;
		D_80157F98 = func_800CDB40_DCAF0(0x4AF0, 0x3B6, -0x664);
		D_80157F9A = func_800CDB40_DCAF0(0x4AFC, 0x3B6, -0x69C);
		func_800072CC_7ECC((u64)0x2A);
		D_80157F8C++;
		v0 = func_8007956C_8851C(0x12);
		alien = &alienInstances[v0];
		building = buildingInstances;
		alien->unkE = alien->unkE | 0x100;
		alien->unk0 = buildingInstances[97].xCoord + 0x80;
		alien->unk14 = buildingInstances[97].xCoord + 0x600;
		alien->unkE = alien->unkE & 0xF7FFFFFF;
		alien->unk24 = 2;
		alien->unk4 = buildingInstances[97].zCoord;
		alien->unk18 = buildingInstances[97].zCoord;
		func_8007A198_89148(v0);
		D_80157F94 = (s16) v0;
		break;
	case 1:
		if (substep >= 0xD8) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E = substep + 1;
		}
		break;
	case 2:
		func_800E35E0_F2590(0xA0);
		D_80157F8C++;
		break;
	case 3:
		func_800E35E0_F2590(0xFF);
		D_80157F8C++;
		break;
	case 4:
		func_800E35E0_F2590(0xA0);
		D_80157F8C++;
		break;
	case 5:
		func_800CDD7C_DCD2C(D_80157F98);
		func_800CDD7C_DCD2C(D_80157F9A);
		func_800DFBA8_EEB58(0x4AFC, 0x3A2, -0x680, 0xB4, 6);
		func_800C7E18_D6DC8();
		func_800CA5EC_D959C(0x4AFC, 0x3A2, -0x680, 0x28, 0x32, 0xFF, 0x28, 0x32, 0xA, 0x19, 0xB4, 0x5A, 0x50, 0x2D, 0xFF, 0x32);
		func_800CA5EC_D959C(0x4AFC, 0x3A2, -0x680, -0x28, 0x32, 0xFF, -0x28, 0x32, 0xA, 0x19, 0xB4, 0x5A, 0x50, 0x2D, 0xFF, 0x32);
		func_800E35E0_F2590(0x50);
		D_80157F8C++;
		break;
	case 6:
		if (substep >= 0x33) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E = substep + 1;
		}
		break;
	case 7:
		if (substep >= 0x2) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E = substep + 1;
		}
		break;
	case 8:
		func_800072CC_7ECC((u64)0x28);
		func_800073B8_7FB8((u64)0x2A);
		D_80159DDF = 0xFF;
		func_80079910_888C0(D_80157F94);
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D64D0_18EFE0.s")
#endif

#ifdef NON_MATCHING
s32 func_802D6904_18F414(void) {
	s16 step;
	s16 substep;
	s16 alienIdx;
	s32 v0;
	AlienInstance *alien;

	D_80157F96 = 0;
	D_80157F76 = 0x12C;
	D_80157FAC = 0xE;
	D_80157FAE = 0xB;
	D_80157FB0 = -0x9;

	osSyncPrintf(D_802DE30C, D_80157F8C, D_80157F8E);

	alienIdx = D_80157F94;
	if (alienIdx != (s16) 0xFF) {
		s32 idx5 = alienIdx * 5;
		if (*(u8 *) ((u8 *) &D_800481B2 + idx5 * 16) != 0) {
			func_800800E4_8F094((u8) alienIdx);
			func_80080510_8F4C0(D_80157F95);
			alienIdx = D_80157F94;
			alien = &alienInstances[alienIdx];
			alien->unk6 = alien->unkE;
			idx5 = alien->specIndex;
			((void (*)(u8)) *(s32 *) ((u8 *) &D_802566C8 + ((idx5 * 4 - idx5) * 4 + idx5) * 8))((u8) alienIdx);
		} else {
			D_80157F94 = 0xFF;
		}
	}

	substep = D_80157F8E;
	switch (D_80157F8C) {
	case 0:
		D_80157F8E = 0;
		D_80157F8C++;
		D_80157F84 = 200.0f;
		D_80157F88 = 0.0f;
		D_80157F78 = 400.0f;
		D_80157F7C = -2.0f;
		D_80157F80 = 100.0f;
		v0 = func_8007956C_8851C(0x12);
		if (v0 != (s16) 0xFF) {
			alien = &alienInstances[v0];
			alien->unkE = alien->unkE & 0xF7FFFE5F;
			alien->unk0 = 0x4C80;
			alien->unk4 = -0x6780;
			alien->unk14 = 0x4C80;
			alien->unk18 = -0x6380;
			alien->unkE = alien->unkE | 0x100;
			alien->unk24 = 2;
			alien->unkE = alien->unkE;
			alien->unk2A = 0x4000;
			func_8007A198_89148(v0);
			alien->unkE = alien->unkE;
			D_80157F94 = (s16) v0;
		}
		alienIdx = D_80157F94;
		alien = &alienInstances[alienIdx];
		D_80157F98 = func_800CDB40_DCAF0(alien->unk0, alien->unk2, alien->unk4);
		break;
	case 1:
		if (substep >= 0x38) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E = substep + 1;
		}
		break;
	case 2:
		func_800CDD7C_DCD2C(D_80157F98);
		func_800DFBA8_EEB58(0x4C7C, 0x350, -0x675C, 0xB4, 6);
		D_80157F8C++;
		break;
	case 3:
		if (substep >= 0x5) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E = substep + 1;
		}
		break;
	case 4:
		func_80124B5C_133B0C(0x4C7C, 0x350, -0x675C, 0x2711, 0x300);
		D_80157F8C++;
		break;
	case 5:
		if (substep >= 0x29) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E = substep + 1;
		}
		break;
	case 6:
		alienIdx = D_80157F94;
		alien = &alienInstances[alienIdx];
		osSyncPrintf(D_802DE318, alien->unk0 + 0x96, alien->unk2, alien->unk4);
		func_80087AAC_96A5C(D_80157F95);
		alienIdx = D_80157F94;
		((u8 *) &D_800481C4)[alienIdx * 5 * 16] = 0x14;
		D_80157F8C++;
		break;
	case 7:
		D_80157F94 = alienIdx;
		if (alienIdx != (s16) 0xFF) {
			func_80087AFC_96AAC((u8) alienIdx);
		}
		substep = D_80157F8E;
		if (substep >= 0x1F) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E = substep + 1;
		}
		break;
	case 8:
		D_80159DDF = 0xFF;
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D6904_18F414.s")
#endif

void func_802D6D20_18F830(void) {
	u8 selector;
	s32 result;
	VehicleInstance *vehicle;

	selector = D_80048030;

	if (selector >= 0x11) {
		return;
	}

	switch (selector) {
	case 0x0:
		result = func_80004818_5418(-0x25, -0x32, 0x1);
		if (result != 0) {
			func_800076D4_82D4(0x1);
		}
		break;

	case 0x1:
		result = func_801393A0_148350(0x7);
		if (result != 0) {
			func_800076D4_82D4(0x2);
		}
		break;

	case 0x2:
		result = func_80004818_5418(-0x3E, -0x5C, 0x2);
		if (result != 0) {
			func_800076D4_82D4(0x3);
		}
		break;

	case 0x3:
		result = func_8000726C_7E6C((0x0ULL << 32) | 0xA);
		if (result == 0) {
			func_800076D4_82D4(0x4);
		}
		break;

	case 0x4:
		vehicle = D_80052B34;
		if (vehicle->unk1A == 0x7) {
			func_800076D4_82D4(0x6);
		}
		break;

	case 0x5:
		result = func_80004818_5418(-0x61, 0x3, 0x3);
		if (result != 0) {
			func_800076D4_82D4(0x7);
		}
		break;

	case 0x6:
		result = func_80004818_5418(-0x67, 0x10, 0x10);
		if (result == 0) {
			func_800076D4_82D4(0x8);
		}
		break;

	case 0x7:
		result = func_80004818_5418(-0x21, 0x38, 0x2);
		if (result != 0) {
			func_800076D4_82D4(0x9);
		}
		break;

	case 0x8:
		result = func_8000726C_7E6C((0x0ULL << 32) | 0x24);
		if (result == 0) {
			result = func_80004818_5418(-0x4E, 0x61, 0x1);
			if (result != 0) {
				func_800076D4_82D4(0xA);
			}
		} else {
			func_800076D4_82D4(0xA);
		}
		break;

	case 0x9:
		result = func_8000726C_7E6C((0x0ULL << 32) | 0x14);
		if (result != 0) {
			func_800076D4_82D4(0xB);
		}
		break;

	case 0xA:
		result = func_80004818_5418(0x0, 0x55, 0x2);
		if (result != 0) {
			func_800076D4_82D4(0xC);
		}
		break;

	case 0xB:
		result = func_8000726C_7E6C((0x0ULL << 32) | 0x30);
		if (result != 0) {
			func_800076D4_82D4(0xD);
		}
		break;

	case 0xC:
		result = func_8000726C_7E6C((0x0ULL << 32) | 0x1C);
		if (result != 0) {
			func_800076D4_82D4(0xE);
		}
		break;

	case 0xD:
		result = func_8000726C_7E6C((0x0ULL << 32) | 0x1E);
		if (result != 0) {
			func_800076D4_82D4(0xF);
		}
		break;
	}
}

s32 func_802D6F7C_18FA8C(void) {
	f32 sp5C;
	f32 sp58;
	f32 sp54;
	f32 sp50;
	f32 sp4C;
	f32 sp48;
	void *sp30;
	void *sp2C;
	f32 temp_f0;
	f32 temp_f0_2;
	f32 temp_f14;
	f32 temp_f14_2;
	f32 temp_f16;
	f32 temp_f18;
	f32 temp_f2;
	f32 temp_f2_2;
	f64 temp_f20;
	s16 temp_t2;
	s16 temp_t5;
	s16 temp_t8;
	s16 temp_t9;
	s32 temp_a1;
	s32 temp_v0;
	s32 var_v1;
	s32 var_v1_2;
	s32 var_v1_3;
	s32 var_v1_4;
	void *var_a0;
	void *var_a0_2;
	void *var_a0_3;
	void *var_a0_4;

	sp5C = (f32)((s16)D_80257DB4 >> 1);
	sp30 = func_80011F90_12B90(&D_9052A00);
	sp2C = func_80011F90_12B90(&D_9052AC0);
	temp_f20 = (f64)sp5C;
	sp58 = (f32)((((f64)(f32)sins(D_80052B34->unk6) / 32768.0) * temp_f20) + (f64)D_80052B34->unk4C);
	temp_f0 = D_8004DCAC - sp58;
	temp_f14 = (f32)((f64)D_80052B34->unk54 - (((f64)(f32)coss(D_80052B34->unk6) / 32768.0) * temp_f20));
	temp_f2 = temp_f14 - D_8004DCB0;
	sp54 = temp_f14;
	sp48 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
	temp_f16 = (f32)coss((func_80003824_4424(sp58 - D_8004DCAC, sp54 - D_8004DCB0) - (s16)D_80052B34->unk6) & 0xFFFF);
	D_8004DCAC = sp58;
	D_8004DCB0 = sp54;
	var_v1 = 0xB;
	var_a0 = (u8 *)sp30 + 0xB0;
	do {
		temp_t5 = ((struct { s16 unk8; } *)var_a0)->unk8;
		var_a0 = (u8 *)var_a0 - 0x10;
		((struct { s16 unk18; } *)var_a0)->unk18 = (s16)(temp_t5 + (s32)((f32)(-((f64)temp_f16 / 32768.0) * (f64)-sp48) * 21.0f));
		var_v1 -= 1;
	} while (var_v1 != 0);
	var_v1_2 = 0xB;
	var_a0_2 = (u8 *)sp30 + 0xB0;
	temp_a1 = ((s16)((struct { s16 unk18; } *)sp30)->unk18 >> 0xC) << 0xC;
	do {
		temp_t9 = ((struct { s16 unk8; } *)var_a0_2)->unk8;
		var_a0_2 = (u8 *)var_a0_2 - 0x10;
		((struct { s16 unk18; } *)var_a0_2)->unk18 = (s16)(temp_t9 - temp_a1);
		var_v1_2 -= 1;
	} while (var_v1_2 != 0);
	sp50 = (f32)((f64)D_80052B34->unk4C - (((f64)(f32)sins(D_80052B34->unk6) / 32768.0) * temp_f20));
	temp_f0_2 = D_8004DCB4 - sp50;
	temp_f14_2 = (f32)((((f64)(f32)coss(D_80052B34->unk6) / 32768.0) * temp_f20) + (f64)D_80052B34->unk54);
	temp_f2_2 = temp_f14_2 - D_8004DCB8;
	sp4C = temp_f14_2;
	sp48 = sqrtf((temp_f0_2 * temp_f0_2) + (temp_f2_2 * temp_f2_2));
	temp_f18 = (f32)coss((func_80003824_4424(sp50 - D_8004DCB4, sp4C - D_8004DCB8) - (s16)D_80052B34->unk6) & 0xFFFF);
	D_8004DCB4 = sp50;
	D_8004DCB8 = sp4C;
	var_v1_3 = 0xB;
	var_a0_3 = (u8 *)sp2C + 0xB0;
	do {
		temp_t8 = ((struct { s16 unk8; } *)var_a0_3)->unk8;
		var_a0_3 = (u8 *)var_a0_3 - 0x10;
		((struct { s16 unk18; } *)var_a0_3)->unk18 = (s16)(temp_t8 + (s32)((f32)(-((f64)temp_f18 / 32768.0) * (f64)-sp48) * 21.0f));
		var_v1_3 -= 1;
	} while (var_v1_3 != 0);
	var_v1_4 = 0xB;
	var_a0_4 = (u8 *)sp2C + 0xB0;
	do {
		temp_t2 = ((struct { s16 unk8; } *)var_a0_4)->unk8;
		temp_v0 = var_v1_4;
		var_a0_4 = (u8 *)var_a0_4 - 0x10;
		((struct { s16 unk18; } *)var_a0_4)->unk18 = (s16)(temp_t2 - (((s16)((struct { s16 unk18; } *)sp2C)->unk18 >> 0xC) << 0xC));
		var_v1_4 -= 1;
	} while (var_v1_4 != 0);
	return temp_v0;
}



void func_802D7334_18FE44(void) {
	gSPDisplayList(D_8005BB2C++, D_9052C10);
}

void func_802D7360_18FE70(void) {
	gSPDisplayList(D_8005BB2C++, D_9052C70);
}

void func_802D738C_18FE9C(u8 arg0) {
	s16 sp5E;
	s16 sp5C;
	s16 sp5A;
	s16 sp58;
	s16 sp56;
	s16 sp54;
	s16 sp52;
	s16 sp50;
	s32 sp44;
	s32 sp40;
	s16 sp3E;
	s16 sp3A;
	s16 sp38;
	s16 sp34;
	Unk8014DD50 *sp2C;
	Unk8014DD50 *sp28;
	s16 temp_a3;
	s16 temp_t4;
	s16 temp_v0_3;
	s16 var_v1;
	s32 temp_a2_2;
	s32 temp_t6_3;
	s32 temp_v0_2;
	s8 temp_t0;
	s8 temp_t1;
	s8 temp_t2;
	u8 temp_t6;
	u8 temp_t6_2;
	Unk8014DD50 *temp_a2;
	AlienInstance *temp_s0;
	Unk8014DD50 *temp_v0;
	Unk8014DD50 *temp_v1;

	temp_t6 = arg0 & 0xFF;
	temp_s0 = &alienInstances[temp_t6];
	temp_a3 = temp_s0->unkC;
	temp_v1 = &D_8014DD50[temp_a3];
	temp_t0 = temp_v1->unkC;
	temp_a2 = &D_8014DD50[temp_t0];
	temp_t1 = temp_a2->unkC;
	temp_t2 = D_8014DD50[temp_t1].unkD;
	sp3E = (s16)temp_s0->specIndex;
	sp28 = temp_a2;
	arg0 = temp_t6;
	sp2C = temp_v1;
	sp5E = temp_a3;
	sp5C = (s16)temp_t0;
	sp58 = (s16)temp_t1;
	sp5A = (s16)temp_t2;
	sp56 = (s16)D_8014DD50[temp_t2].unkD;
	func_800808F0_8F8A0(temp_t6, (s16 *)((u8 *)temp_s0 + 0xE));
	temp_t4 = temp_s0->unk6;
	temp_v1->unk6 = temp_t4;
	temp_a2->unk6 = (s16)-temp_t4;
	func_80086164_95114(arg0, sp5C);
	sp50 = 0x3C;
	sp52 = -8;
	sp54 = 0x70;
	func_800A931C_B82CC((s8)sp5E, &sp50, &sp44);
	sp50 = (s16)sp44;
	sp52 = (s16)((s32)sp44 >> 16);
	sp54 = (s16)((s32)sp44 >> 8);
	func_800A931C_B82CC((s8)sp3E, &sp50, &sp44);
	{
		AlienSpec *temp_v0_spec = &alienSpecs[sp3E];
		temp_v0_spec->unk20 = (s16)sp44;
		temp_v0_spec->unk22 = (s16)((s32)sp44 >> 16);
		temp_v0_spec->unk24 = (s16)((s32)sp44 >> 8);
	}
	temp_a2_2 = func_80084E54_93E04(D_80052B34, temp_s0);
	if (currentLevel == 1) {
		var_v1 = 0x3C;
	} else {
		var_v1 = 0x1E;
	}
	sp34 = var_v1;
	sp40 = temp_a2_2;
	if ((func_80084FE8_93F98(arg0, 0x1000) != 0) && (temp_a2_2 < 0x7D0)) {
		temp_t6_2 = temp_s0->unk26 + 1;
		temp_s0->unk26 = temp_t6_2;
		if ((var_v1 + 0x28) < (temp_t6_2 & 0xFF)) {
			temp_s0->unk1E = 0x28;
			temp_s0->unk20 = (s32)(temp_s0->unk20 & ~0x2000);
			temp_s0->unk26 = 0U;
		}
		if (func_80087188_96138(arg0, 0, 0x28) != 0) {
			temp_s0->unk36 = 0;
			temp_s0->unk1E = 6;
			temp_t6_3 = temp_s0->unk20 | 0xA000;
			temp_s0->unk20 = temp_t6_3;
			temp_s0->unk20 = (s32)(temp_t6_3 | 0x1000);
		}
	} else {
		temp_s0->unk26 = 0U;
		temp_s0->unk1E = 0;
	}
	temp_v0_2 = temp_s0->unk20;
	if (temp_v0_2 & 0x9000) {
		if (temp_v0_2 & 0x04000000) {
			sp38 = sp58;
		} else {
			sp38 = sp5A;
		}
		sp3A = sp56;
		if (func_80081F18_90EC8(arg0, 2, 2, &sp38, D_802DDC88) == 2) {
			temp_s0->unk20 = (s32)(temp_s0->unk20 & 0xFFFF7FFF);
		}
	}
	temp_v0_3 = temp_s0->unk1E;
	if (temp_v0_3 != 0) {
		temp_s0->unk1E = (s16)(temp_v0_3 - 1);
	}
}




void func_802D763C_19014C(u8 arg0) {
	AlienInstance *sp2C;
	sp2C = &alienInstances[arg0];
	if (sp2C->unk20 & 0x600) {
		func_800DF848_EE7F8(sp2C->unk0, (s16)(sp2C->unk2 + 0x14), sp2C->unk4, (u16)(&D_8025668C)[sp2C->specIndex * 0x34], 0);
		sp2C->unk24 = func_800C2274_D1224(sp2C->unk0, (s16)(sp2C->unk2 + 0x64), sp2C->unk4, 2);
		sp2C->unk2C = 0x5A;
		sp2C->unk3D = 0;
		func_800C3BD8_D2B88(sp2C->unk0, sp2C->unk2, sp2C->unk4, ((&D_8025668C)[sp2C->specIndex * 0x34] + 0x32) & 0xFFFF, 0x5A, 0xF0, 0x78, 0);
	}
}


void func_802D775C_19026C(s32 arg0) {
	u8 sp73;
	s32 sp68;
	s32 sp64;
	s32 sp60;
	s16 sp50;
	s16 sp4E;
	s16 sp4C;
	Unk8014DD50 *sp44;
	Unk8014DD50 *sp40;
	Unk8014DD50 *sp3C;
	Unk8014DD50 *sp34;
	s16 temp_a1;
	s16 temp_a1_2;
	s16 temp_v0_2;
	s16 temp_v1;
	s32 temp_t6;
	u16 temp_v0_3;
	u8 temp_t2;
	AlienInstance *temp_a0;
	AlienInstance *temp_s0;
	AlienInstance *temp_t1_alien;
	AlienInstance *temp_v1_alien;

	temp_t6 = arg0 & 0xFF;
	temp_s0 = &alienInstances[temp_t6];
	if (!(temp_s0->unk20 & 0x100000)) {
		func_802D763C_19014C(temp_t6);
		return;
	}
	{
		Unk8014DD50 *temp_t1;
		Unk8014DD50 *temp_t3;
		Unk8014DD50 *temp_t4;
		temp_t1 = &D_8014DD50[D_8014DD50[temp_s0->unkC].unkC];
		sp44 = temp_t1;
		temp_t3 = &D_8014DD50[temp_t1->unkC];
		sp40 = temp_t3;
		temp_t4 = &D_8014DD50[temp_t3->unkD];
		temp_t2 = temp_t4->unkD;
		sp3C = temp_t4;
	}
	if (temp_s0->unk2C < 0x51) {
		Unk8014DD50 *temp_v0;
		temp_v0 = &D_8014DD50[temp_t2];
		sp34 = temp_v0;
		sp73 = temp_t2;
		func_80128428_1373D8(temp_s0, (s16)(temp_v0->unk0 + sp44->unk0), (s16)(temp_v0->unk2 + sp44->unk2), (s16)(temp_v0->unk4 + sp44->unk4), &sp68, &sp64, &sp60);
		temp_v1 = temp_s0->unk2C;
		if (temp_v1 >= 0x49) {
			sp34->unk2 = (s16)(sp34->unk2 + 0xA);
			if (temp_s0->unk24 != 0xFC) {
				func_800C1ECC_D0E7C((s16)sp68, (s16)sp64, (s16)sp60, temp_s0->unk3C, 2);
			}
		} else if (temp_v1 == 0x48) {
			sp34->unk2 = (s16)(sp34->unk2 + 0xA);
			temp_v0_2 = func_8007956C_8851C(0xD);
			temp_v1_alien = &alienInstances[temp_v0_2];
			temp_s0->unk3C = (u8)temp_v0_2;
			temp_s0->unk26 = 0U;
			temp_v1_alien->unk48 = (s16)(sp64 + 0xA);
			temp_a1 = temp_v1_alien->unk48;
			temp_v1_alien->unk1B = (u8)temp_s0->unk1B;
			temp_v1_alien->unk2E = (s16)sp68;
			temp_v1_alien->unk0 = (s16)sp68;
			temp_v1_alien->unk32 = (s16)sp60;
			temp_v1_alien->unk4 = (s16)sp60;
			temp_v1_alien->unk30 = temp_a1;
			temp_v1_alien->unk2 = temp_a1;
			temp_a1_2 = temp_s0->unk6;
			temp_v1_alien->unk20 = (s32)(temp_v1_alien->unk20 | 0x40000000);
			temp_v1_alien->unk12 = 0x200;
			temp_v1_alien->unk6 = temp_a1_2;
			temp_v1_alien->unkE = temp_a1_2;
			func_8007A2A0_89250(temp_v0_2, temp_a1_2);
		} else if (temp_s0->unk26 == 0) {
			temp_a0 = &alienInstances[(s8)temp_s0->unk3C];
			if (temp_a0->unk20 & 0x600) {
				func_80088E10_97DC0((s16)sp73);
				temp_s0->unk26 = 1U;
			} else {
				temp_a0->unk48 = (s16)(sp64 + 0xA);
				sp34->unk2 = (s16)(sp34->unk2 + 0xA);
				if (temp_s0->unk24 != 0xFC) {
					func_800C1ECC_D0E7C((s16)sp68, (s16)sp64, (s16)sp60, temp_s0->unk3C, 2);
				}
			}
		}
	}
	temp_v0_3 = sp3C->unkA;
	if ((s32)temp_v0_3 < 0x1000) {
		sp3C->unkA = (u16)(temp_v0_3 + 0x400);
		sp40->unkA = (u16)(sp40->unkA + 0x400);
	}
	if (temp_s0->unk2C < 0x48) {
		sp44->unk6 = (u16)(sp44->unk6 + 0x96);
		if (((s16)temp_s0->unk2C % (s32)((func_800038E0_44E0() % 7) + 1)) == 0) {
			sp4C = func_800038E0_44E0();
			sp4E = func_800038E0_44E0();
			sp50 = func_800038E0_44E0();
			func_800DFA34_EE9E4((s16)((((s32)(u16)sp4C % 100) + temp_s0->unk0) - 0x32), (s16)((((s32)(u16)sp4E % 100) + temp_s0->unk2) - 0x32), (s16)((((s32)(u16)sp50 % 100) + temp_s0->unk4) - 0x32), ((func_800038E0_44E0() % 20) + 0x14) & 0xFFFF, 0);
		}
	}
	if (temp_s0->unk2C == 1) {
		func_800DF848_EE7F8(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, (u32)((f64)(&D_8025668C)[temp_s0->specIndex * 0x34] * 1.5) & 0xFFFF, 6);
	}
}



s32 func_802D7D08_190818(u8 arg0, s32 arg1, s32 arg2) {
	s32 sp24;
	AlienInstance *alien;
	alien = &alienInstances[arg0];
	sp24 = 0;
	alien->unkA = func_8009395C_A290C(arg0, alien->unk6);
	alien->unk8 = func_8009395C_A290C(arg0, (s16)(alien->unk6 + 0x4000));
	if (((func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8) + 0x12C) < alien->unk2) {
		func_80088760_97710(alien);
	}
	if (alien->unk20 & 0x40000000) {
		alien->unk6 = alien->unkE;
		if (D_80222A70 < alien->unk2) {
			alien->unk10 = (s16)(alien->unk10 + 0x30);
		}
		if (alien->unk47 & 4) {
			alien->unk12 = 0;
		}
		if ((alien->unk47 & 2) && ((alien->unk3A == 0) || (alien->unk10 != 0))) {
			alien->unk20 = (s32)(alien->unk20 | 0x40001000);
			alien->unk36 = 0;
			sp24 = 1;
			alien->unk10 = (s16)arg2;
			alien->unk2C = (s16)arg1;
		}
		alien->unk3A = alien->unk10;
	} else {
		alien->unk12 = 0;
		if (alien->unk2C != 0) {
			alien->unk2C = (s16)(alien->unk2C - 1);
		} else {
			alien->unk20 = (s32)(alien->unk20 | 0x40001000);
			alien->unk36 = 0;
			sp24 = 1;
			alien->unk10 = (s16)arg2;
			alien->unk2C = (s16)arg1;
		}
		if (alien->unk47 & 1) {
			alien->unk2C = 0;
		}
	}
	return sp24;
}


void func_802D7EBC_1909CC(u8 arg0) {
	s32 sp24;
	AlienInstance *alien;
	alien = &alienInstances[arg0];
	if ((alien->unk20 & 0x2000) && (alien->unk2C >= 0xF)) {
		func_80088760_97710(alien);
	}
	if (alien->unk2C == 0xE) {
		sp24 = func_80084F00_93EB0(D_80052B34, alien) - (&D_80257A0C)[D_80052B34->unk1A * 0x38] - (&D_8025668C)[alien->specIndex * 0x34];
		if ((func_80084FE8_93F98(arg0, 0x800) != 0) && (sp24 < 0x8C)) {
			alien->unk20 = alien->unk20 | 0x2000;
		}
	}
}



void func_802D7FC0_190AD0(u8 arg0) {
	s16 sp3E;
	s16 sp3C;
	s32 sp34;
	s16 temp_v0;
	s32 temp_v0_3;
	s8 temp_v0_2;
	AlienInstance *temp_a1;
	AlienInstance *temp_s0;

	temp_s0 = &alienInstances[arg0];
	temp_v0 = temp_s0->unk48;
	if (temp_v0 != 0) {
		temp_s0->unk2 = temp_v0;
		temp_s0->unk48 = 0;
	} else {
		sp34 = func_802D7D08_190818(arg0, 0x14, 0x180);
	}
	if (temp_s0->unk47 & 8) {
		func_80088760_97710(temp_s0);
	}
	temp_a1 = (AlienInstance *)((u8 *)temp_s0 + 0xE);
	if (temp_s0->unk20 & 0x40000000) {
		if ((sp34 != 0) && !(temp_s0->unk47 & 1)) {
			temp_s0->unk12 = *(s16*)(D_802566C0 + (temp_s0->specIndex * 0x68));
		}
		func_800808F0_8F8A0(arg0, temp_a1);
		if (temp_s0->unk20 & 0x1000) {
			temp_v0_2 = D_8014DD50[temp_s0->unkC].unkC;
			sp3C = (s16)temp_v0_2;
			sp3E = (s16)D_8014DD50[temp_v0_2].unkD;
			if (func_80081F18_90EC8(arg0, 2, 2, &sp3C, &D_802DDCD0) == 2) {
				temp_s0->unk20 = (s32)(temp_s0->unk20 & ~0x1000);
			}
		}
	} else {
		func_802D7EBC_1909CC(arg0);
	}
	temp_v0_3 = temp_s0->unk20;
	if ((temp_v0_3 & 0x2000) && (D_80052A8C & 1)) {
		temp_s0->unk20 = (s32)(temp_v0_3 | 0x80000000);
	}
}



void func_802D8150_190C60(s32 arg0) {
	u8 sp2F;
	s32 temp_a2;
	s32 temp_v1;
	u8 temp_a1;
	AlienInstance *temp_s0;
	AlienInstance *temp_v0;

	temp_a2 = arg0 & 0xFF;
	temp_s0 = &alienInstances[temp_a2];
	temp_a1 = temp_s0->unk25;
	sp2F = temp_s0->specIndex;
	if (!(temp_s0->unk20 & 0x100000)) {
		if (temp_a1 != 0xFF) {
			temp_v0 = &alienInstances[temp_a1];
			if (temp_v0->specIndex == 0x1A) {
				temp_v0->unk24 = (u8)(temp_v0->unk24 - 1);
			}
		}
		if (temp_s0->unk20 & 0x600) {
			func_80137468_146418(temp_a2, 0xD);
			if ((temp_s0->unk47 & 8) || (temp_s0->unk20 & 0x2000)) {
				temp_s0->unk20 = (s32)(temp_s0->unk20 | 0x100000);
				func_80124B5C_133B0C(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, 0x12C, 0xC8);
				func_800DF848_EE7F8(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, ((&D_8025668C)[sp2F * 0x34] * 3) & 0xFFFF, 4);
				temp_s0->unk2C = 1;
				return;
			}
			func_800DF848_EE7F8(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, ((&D_8025668C)[sp2F * 0x34] * 2) & 0xFFFF, 0);
			temp_s0->unk10 = (s16)(temp_s0->unk10 + (func_800038E0_44E0() >> 7) + 0x300);
			temp_s0->unk20 = (s32)(temp_s0->unk20 | 0x40000000);
			temp_s0->unk14 = (s16)(0x1000 - (func_800038E0_44E0() >> 5));
			temp_s0->unk18 = (s16)(0x1000 - (func_800038E0_44E0() >> 5));
			temp_s0->unk26 = 1U;
			temp_s0->unk2C = 0x50;
			temp_s0->unk12 = 0x300;
			goto block_9;
		}
		goto block_9;
	}
block_9:
	if ((temp_s0->unk10 <= 0) && (temp_s0->unk26 != 0)) {
		temp_s0->unk10 = (s16)(temp_s0->unk10 + (func_800038E0_44E0() >> 7) + 0x300);
		temp_s0->unk26 = 0U;
		if (temp_s0->unk20 & 0x600) {
			func_800DF848_EE7F8(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, ((&D_8025668C)[sp2F * 0x34] * 2) & 0xFFFF, 0);
		}
		temp_s0->unk24 = func_800C2274_D1224(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, 2);
	}
	temp_v1 = temp_s0->unk20;
	if ((!(temp_v1 & 0x40000000) || (temp_s0->unk47 & 1)) && (temp_s0->unk2C > 0)) {
		if (temp_v1 & 0x600) {
			func_800DF848_EE7F8(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, ((&D_8025668C)[sp2F * 0x34] * 2) & 0xFFFF, 2);
		}
		temp_s0->unk2C = 1;
		return;
	}
	temp_s0->unk8 = (s16)(temp_s0->unk8 + temp_s0->unk18);
	temp_s0->unkA = (s16)(temp_s0->unkA + temp_s0->unk14);
	if (temp_s0->unk26 == 0) {
		func_800C1ECC_D0E7C(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, temp_s0->unk24, 2);
	}
}



void func_802D84A0_190FB0(u8 arg0) {
	s32 sp18;
	AlienInstance *alien;
	sp18 = 0;
	alien = &alienInstances[arg0];
	if (alien->unk20 & 0x600) {
		if ((func_80085448_943F8(arg0) != 0) && (func_80129354_138304((s32) alien, sp18, sp18, sp18, sp18) != 0)) {
			func_80137468_146418(arg0, 0x65);
			*(s16*)&alien->unk1E = 0x1E;
		}
	}
}

void func_802D852C_19103C(u8 arg0) {
	AlienInstance *alien;
	func_80091470_A0420(arg0);
	alien = &alienInstances[arg0];
	if (!(alien->unk20 & 0x4000)) {
		func_8009170C_A06BC(arg0);
	}
	if ((alien->unk20 & 0x100) && (func_800B325C_C220C((s8)((s16)alien->unk0 >> 8), (s8)((s16)alien->unk4 >> 8), 0x800) != 0) && (func_80129354_138304((s32)alien, 0, 0, 0, 0) != 0)) {
		func_80137468_146418(arg0, 0x65);
		*(s16*)&alien->unk1E = 0x1E;
	}
}

void func_802D85F8_191108(s32 arg0) {
	AlienInstance *sp20;
	s16 temp_v0;
	s32 temp_s0;
	u32 temp_t5;
	AlienInstance *temp_a2;
	AlienInstance *var_a2;

	temp_s0 = arg0 & 0xFF;
	temp_a2 = &alienInstances[temp_s0];
	if (!(temp_a2->unk20 & 0x4000) && ((sp20 = temp_a2, (func_8008E478_9D428(temp_s0 & 0xFF, temp_a2) != 0)) || (sp20 = temp_a2, (func_8008E30C_9D2BC(temp_s0 & 0xFF, 0x80000000, temp_a2) != 0)))) {
		sp20 = temp_a2;
		func_802D84A0_190FB0(temp_s0 & 0xFF);
		var_a2 = temp_a2;
	} else {
		sp20 = temp_a2;
		func_802D852C_19103C(temp_s0 & 0xFF);
		var_a2 = temp_a2;
		if ((D_80052A8C & 0x3C) == (temp_s0 & 0x3C)) {
			s32 temp_v1 = var_a2->unk20;
			if ((temp_v1 & 0x100) && ((temp_t5 = *(u32 *)(D_80050AE0 + ((u8)(var_a2->unk38) * 0x18)) >> 0xC, ((temp_t5 & 1) == 0)) || (temp_t5 & 4))) {
				var_a2->unk20 = (s32)(temp_v1 & ~0x100);
			}
		}
	}
	sp20 = var_a2;
	func_8008076C_8F71C(temp_s0 & 0xFF);
	temp_v0 = var_a2->unk1E;
	if (temp_v0 > 0) {
		var_a2->unk1E = (s16)(temp_v0 - 4);
		return;
	}
	var_a2->unk1E = 0;
}



void func_802D8724_191234(s32 arg0) {
	AlienInstance *sp28;
	s32 sp24;
	AlienInstance *temp_a2;
	AlienInstance *var_a2;
	s16 temp_v0;
	s32 temp_a0;
	s32 temp_s0;
	u32 temp_t5;

	temp_s0 = arg0 & 0xFF;
	temp_a2 = &alienInstances[temp_s0];
	if (!(temp_a2->unk20 & 0x4000) && ((sp28 = temp_a2, (func_8008E478_9D428(temp_s0 & 0xFF, temp_a2) != 0)) || (sp28 = temp_a2, (func_8008E30C_9D2BC(temp_s0 & 0xFF, 0x80000000, temp_a2) != 0)))) {
		sp28 = temp_a2;
		func_80085900_948B0(temp_s0 & 0xFF, 0x3E8, temp_a2);
		func_802D84A0_190FB0(temp_s0 & 0xFF);
		var_a2 = temp_a2;
	} else {
		sp28 = temp_a2;
		func_802D852C_19103C(temp_s0 & 0xFF);
		var_a2 = temp_a2;
		temp_a0 = var_a2->unk20;
		if ((temp_a0 & 0x100) && ((D_80052A8C & 0x3F) == (temp_s0 & 0x3F)) && ((temp_t5 = *(u32 *)(D_80050AE0 + ((u8)(var_a2->unk38) * 0x18)) >> 0xC, ((temp_t5 & 1) == 0)) || (temp_t5 & 0x10))) {
			var_a2->unk20 = (s32)(temp_a0 & ~0x100);
		}
	}
	temp_v0 = var_a2->unk1E;
	sp24 = temp_s0;
	if (temp_v0 != 0) {
		var_a2->unk1E = (s16)(temp_v0 - 1);
	}
	func_8008076C_8F71C(temp_s0 & 0xFF);
	func_800A53C0_B4370(temp_s0 & 0xFF, 0x100, 0x1000);
	func_8008E978_9D928(temp_s0 & 0xFF, func_8008E524_9D4D4(temp_s0 & 0xFF, 0x190, 2));
	func_8008EF1C_9DECC(temp_s0 & 0xFF);
	func_80137468_146418(sp24, 7);
}



void func_802D8898_1913A8(u8 arg0) {
	AlienInstance *sp3C;
	s16 temp_a0;
	s16 temp_v1_2;
	s16 temp_v1_3;
	s32 temp_a0_2;
	s32 temp_a1;
	s32 temp_t2;
	s32 temp_v1;
	AlienInstance *var_v0;

	var_v0 = &alienInstances[arg0];
	temp_v1 = var_v0->unk20;
	if (temp_v1 & 0x600) {
		if (!(temp_v1 & 0x100000)) {
			temp_t2 = temp_v1 | 0x40000000;
			var_v0->unk2C = 0x7FFF;
			var_v0->unk10 = 0;
			var_v0->unk20 = temp_t2;
			var_v0->unk38 = 0;
			var_v0->unk14 = (s16)(arg0 & 1);
			if (temp_t2 & 0x600) {
				func_800DF848_EE7F8(var_v0->unk0, var_v0->unk2, var_v0->unk4, (u32)((f64)(&D_8025668C)[var_v0->specIndex * 0x34] * 0.75) & 0xFFFF, 0);
			}
		} else {
			if (temp_v1 & 0x40000000) {
				temp_a1 = D_80222A70;
				if (temp_a1 < var_v0->unk2) {
					temp_a0 = var_v0->unk14;
					if ((temp_a0 != 0) && (temp_v1_2 = var_v0->unk38, ((temp_v1_2 < -9) == 0))) {
						var_v0->unk38 = (s16)(temp_v1_2 - 1);
					} else {
						temp_v1_3 = var_v0->unk38;
						if ((temp_a0 == 0) && (temp_v1_3 < 0xA)) {
							var_v0->unk38 = (s16)(temp_v1_3 + 1);
						}
					}
					temp_a0_2 = var_v0->unk38 * 0xC8;
					var_v0->unkE = (s16)(var_v0->unkE + temp_a0_2);
					var_v0->unk6 = (s16)(var_v0->unk6 + temp_a0_2);
					var_v0->unk10 = (s16)(var_v0->unk10 + 0x60);
					var_v0->unk12 = (s16)(var_v0->unk12 + 0x10);
				}
				var_v0->unk8 = (s16)(var_v0->unk38 << 8);
				var_v0->unkA = (s16)(var_v0->unk10 * -4);
				if (!(var_v0->unk2C & 3)) {
					sp3C = var_v0;
					func_800DEA08_ED9B8(var_v0->unk0, var_v0->unk2, var_v0->unk4, 0xFA, 2, 2, 0x1E, 0xC8, 0x82, 0x82, 0x82);
				}
				if ((temp_a1 < var_v0->unk30) && (var_v0->unk2 < temp_a1)) {
					var_v0->unk38 = 0;
					var_v0->unk12 = (s16)((s16)var_v0->unk12 >> 1);
					var_v0->unk10 = (s16)((s16)var_v0->unk10 >> 1);
				} else {
					sp3C = var_v0;
					func_80137468_146418(arg0, 0x66);
				}
			}
			func_8008AAFC_99AAC(arg0, (&D_8025668C)[var_v0->specIndex * 0x34], 3);
		}
	}
}


void func_802D8BAC_1916BC(u8 arg0) {
	s16 sp3C;
	s16 sp36;
	AlienInstance *sp1C;
	s16 temp_a0;
	s16 temp_a1_2;
	s16 temp_a2;
	s16 temp_v0_2;
	s16 temp_v1;
	s16 var_a2;
	s16 var_a3;
	s16 var_t1;
	s16 var_v1;
	s32 temp_v0;
	s8 temp_a1;
	u8 temp_t6;
	AlienInstance *temp_t0;

	temp_t6 = arg0 & 0xFF;
	temp_t0 = &alienInstances[temp_t6];
	temp_a1 = D_8014DD50[temp_t0->unkC].unkC;
	sp1C = temp_t0;
	arg0 = temp_t6;
	sp3C = (s16)D_8014DD50[temp_a1].unkD;
	func_80086230_951E0(temp_t6, temp_a1, 0x4000);
	temp_v0 = func_800877E8_96798(arg0, 0x12C, 0x190);
	temp_v1 = temp_t0->unk0 - temp_t0->unk14;
	temp_a1_2 = -temp_v1;
	temp_a0 = temp_t0->unk4 - temp_t0->unk18;
	if (temp_a1_2 < temp_v1) {
		var_t1 = temp_v1;
	} else {
		var_t1 = temp_a1_2;
	}
	temp_a2 = -temp_a0;
	var_a3 = temp_a2;
	if (temp_a2 < temp_a0) {
		var_a3 = temp_a0;
	}
	if (var_a3 < var_t1) {
		if (temp_a1_2 < temp_v1) {
			var_a2 = temp_v1;
		} else {
			var_a2 = temp_v1 * -1;
		}
	} else {
		var_v1 = temp_a2;
		if (temp_a2 < temp_a0) {
			var_v1 = temp_a0;
		}
		var_a2 = var_v1;
	}
	if (temp_v0 != 0) {
		sp36 = var_a2;
		sp1C = temp_t0;
		if ((func_80084FE8_93F98(arg0, 0x800) != 0) && (var_a2 < 0x3E8) && !(temp_t0->unk20 & 0x8000)) {
			sp1C = temp_t0;
			if (func_800871CC_9617C(arg0, 0, 0x28) != 0) {
				temp_t0->unk4B = 0;
				temp_t0->unk20 = (s32)(temp_t0->unk20 | 0x8000);
				temp_t0->unk1E = 0x14;
			}
		}
	}
	sp1C = temp_t0;
	func_800A3D00_B2CB0(arg0, sp3C, 2, &D_802DDCD8);
	temp_v0_2 = temp_t0->unk1E;
	if (temp_v0_2 != 0) {
		temp_t0->unk1E = (s16)(temp_v0_2 - 1);
	}
}



void func_802D8D84_191894(s32 arg0) {
	s16 sp66;
	s16 sp64;
	s16 sp62;
	s16 sp5E;
	s16 sp5A;
	AlienInstance *sp4C;
	s16 temp_v0_2;
	s32 temp_s1;
	s8 temp_a2;
	AlienInstance *temp_s0;
	Unk8014DD50 *temp_v0;

	temp_s1 = arg0 & 0xFF;
	temp_s0 = &alienInstances[temp_s1];
	temp_a2 = D_8014DD50[temp_s0->unkC].unkC;
	temp_v0 = &D_8014DD50[temp_a2];
	sp64 = (s16)temp_v0->unkD;
	if (!(temp_s0->unk20 & 0x100000)) {
		sp4C = (AlienInstance *)temp_v0;
		sp66 = (s16)temp_a2;
		func_80137468_146418(temp_s1, 0xF);
		if (temp_s0->unk20 & 0x600) {
			temp_s0->unk2C = 0x32;
			func_80088E40_97DF0(temp_s1 & 0xFF, sp66, temp_v0->unk0, temp_v0->unk2, (s32)temp_v0->unk4, 0, 0xA, 0);
			func_80087C50_96C00(temp_s1 & 0xFF);
		}
	} else {
		sp4C = (AlienInstance *)temp_v0;
		func_80087C74_96C24(temp_s1 & 0xFF, temp_a2);
		if (((s16)temp_s0->unk2C % 6) == 0) {
			func_80128428_1373D8(temp_s0, temp_v0->unk0, (s16)(temp_v0->unk2 - 0x8000), temp_v0->unk4, &sp62, &sp5E, &sp5A);
			if (D_80031420 & 3) {
				func_800CA5EC_D959C(sp62, sp5E, sp5A, 0, 1, 0, 0x32, 5, 6, 0x80, 0, 0xB4 - (func_800038E0_44E0() % 80), 0, 0xFF);
			}
		}
		if ((func_80084FE8_93F98(temp_s1 & 0xFF, 0x800) == 0) && !(temp_s0->unk20 & 0x8000) && (func_80087188_96138(temp_s1 & 0xFF, 0, 0x28) != 0)) {
			temp_s0->unk4B = 0;
			temp_s0->unk20 = (s32)(temp_s0->unk20 | 0x8000);
			temp_s0->unk1E = (s16)((func_800038E0_44E0() % 10) + 8);
		}
		func_800A3D00_B2CB0(temp_s1 & 0xFF, sp64, 2, &D_802DDCD8);
		if (temp_s0->unk2C == 1) {
			func_800DF848_EE7F8(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, (u32)((f64)(&D_8025668C)[temp_s0->specIndex * 0x34] * 1.5) & 0xFFFF, 4);
		}
	}
	temp_v0_2 = temp_s0->unk1E;
	if (temp_v0_2 != 0) {
		temp_s0->unk1E = (s16)(temp_v0_2 - 1);
	}
}



void func_802D90C8_191BD8(u8 arg0) {
	AlienInstance *alien;
	alien = &alienInstances[arg0];
	alien->unk20 = (s32) (alien->unk20 & 0xBFFFEFFF);
	func_800873A8_96358(arg0);
}


void func_802D911C_191C2C(u8 arg0) {
	s8 sp43;
	s8 sp42;
	s32 sp34;
	Unk8014DD50 *sp30;
	Unk8014DD50 *sp2C;
	s16 temp_a0_2;
	s16 temp_v0_3;
	s16 temp_v1_2;
	s32 temp_a0;
	s32 temp_f6;
	s32 temp_t0;
	s32 temp_t4;
	s32 temp_t4_2;
	s32 temp_t7;
	s32 temp_t8;
	s32 temp_v0;
	s32 temp_v0_2;
	s32 temp_v0_4;
	s32 temp_v1;
	s8 temp_a0_3;
	s8 temp_a0_4;
	s8 temp_a1;
	s8 temp_a1_2;
	u8 temp_t6;
	AlienInstance *temp_s0;

	temp_t6 = arg0 & 0xFF;
	temp_s0 = &alienInstances[temp_t6];
	if (temp_s0->unk47 & 1) {
		arg0 = temp_t6;
		func_8008064C_8F5FC(temp_t6);
	} else {
		arg0 = temp_t6;
		func_8008076C_8F71C(temp_t6);
	}
	temp_v0 = temp_s0->unk0 - temp_s0->unk14;
	temp_v1 = temp_s0->unk4 - temp_s0->unk18;
	temp_a0 = (temp_v0 * temp_v0) + (temp_v1 * temp_v1);
	if ((temp_a0 >= 0x225511) || (temp_s0->unk47 & 1)) {
		temp_t0 = temp_s0->unk20 | 0x100;
		temp_s0->unk20 = temp_t0;
		temp_s0->unk20 = (s32)(temp_t0 & ~0x840);
	} else if (temp_a0 >= 0xF4241) {
		temp_t4 = temp_s0->unk20 | 0x800;
		temp_s0->unk20 = temp_t4;
		temp_s0->unk20 = (s32)(temp_t4 & ~0x140);
	} else {
		temp_t8 = temp_s0->unk20 | 0x140;
		temp_s0->unk20 = temp_t8;
		temp_s0->unk20 = (s32)(temp_t8 & ~0x800);
	}
	temp_v0_2 = temp_s0->unk20;
	if (temp_v0_2 & 0x1000) {
		temp_v0_3 = temp_s0->unk2C;
		if (temp_v0_3 != 0) {
			temp_s0->unk2C = (s16)(temp_v0_3 - 1);
		} else {
			temp_s0->unk10 = (s16)(temp_s0->unk10 + 0x40);
		}
		if ((temp_s0->unk10 < 0) && (D_80222A70 < temp_s0->unk2)) {
			temp_s0->unk1E = 0;
			if (temp_s0->unk20 & 0x08000000) {
				func_800871CC_9617C(arg0, 0, 0x18);
			} else {
				func_80129354_138304(temp_s0, 0, temp_s0->unk14, temp_s0->unk16, (s32)temp_s0->unk18);
			}
			temp_s0->unk20 = (s32)(temp_s0->unk20 & ~0x1000);
		}
		temp_v0_4 = temp_s0->unk20;
		if (!(temp_v0_4 & 0x40000000)) {
			temp_s0->unk20 = (s32)(temp_v0_4 | 0x40000000);
			temp_s0->unk2C = 0;
		}
	} else if (temp_v0_2 & 0x40000000) {
		if (temp_s0->unk2 < D_80222A70) {
			temp_a0_2 = temp_s0->unk10;
			if (temp_a0_2 < -0x60) {
				temp_s0->unk10 = (s16)(temp_a0_2 + 0x40);
			}
		}
		if (temp_s0->unk2 < (D_80222A70 - 0x14)) {
			temp_s0->unk20 = (s32)(temp_s0->unk20 & 0xBFFFFFFF);
		}
	} else if (((func_800038E0_44E0() % 100) == 0) && (temp_s0->unk1E == 0)) {
		temp_t4_2 = (s16)temp_s0->unk0 >> 8;
		temp_t7 = (s16)temp_s0->unk4 >> 8;
		temp_a1 = (s8)(temp_t7 - 1);
		temp_a0_3 = (s8)(temp_t4_2 - 1);
		sp34 = (s32)temp_a0_3;
		sp42 = (s8)temp_t7;
		sp43 = (s8)temp_t4_2;
		if ((func_800B325C_C220C(temp_a0_3, temp_a1, 0x1000) != 0) && (func_800B325C_C220C(sp43, sp42, 0x1000) != 0)) {
			temp_a1_2 = (s8)(sp42 + 1);
			if (func_800B325C_C220C(sp43, temp_a1_2, 0x1000) != 0) {
				temp_a0_4 = (s8)(sp43 + 1);
				sp34 = (s32)temp_a0_4;
				if ((func_800B325C_C220C(temp_a0_4, temp_a1, 0x1000) != 0) && (func_800B325C_C220C(sp43, sp42, 0x1000) != 0) && (func_800B325C_C220C(sp43, temp_a1_2, 0x1000) != 0) && (func_800B325C_C220C(sp43, temp_a1, 0x1000) != 0) && (func_800B325C_C220C(sp43, temp_a1_2, 0x1000) != 0)) {
					temp_s0->unk20 = (s32)(temp_s0->unk20 | 0x40001000);
					temp_s0->unk2C = 6;
					temp_s0->unk10 = 0;
				}
			}
		}
	} else {
		temp_s0->unk10 = 0;
	}
	if (temp_s0->unk2 < (D_80222A70 + 5)) {
		func_800E24B8_F1468(arg0);
	}
	{
		Unk8014DD50 *temp_a1_3;
		Unk8014DD50 *temp_a3;
		temp_a1_3 = &D_8014DD50[D_8014DD50[temp_s0->unkC].unkC];
		temp_s0->unkA = (s16)(temp_s0->unk10 * -8);
		temp_a3 = &D_8014DD50[temp_a1_3->unkD];
		temp_a3->unkA = (s16)temp_s0->unkA;
		sp2C = temp_a3;
		sp30 = temp_a1_3;
		temp_v1_2 = temp_s0->unk1E;
		temp_f6 = (s32)(((f64)(f32)sins(((arg0 + D_80052A8C) * 0x7D0) & 0xFFFF) / 32768.0) * D_802DE400);
		temp_a1_3->unk6 = (s16)temp_f6;
		temp_a3->unk6 = (s16)temp_f6;
		if (temp_v1_2 != 0) {
			temp_s0->unk1E = (s16)(temp_v1_2 - 1);
		}
	}
}


void func_802D95A8_1920B8(u8 arg0, s16 arg1, s16 arg2) {
	AlienInstance *alien;
	alien = &alienInstances[arg0];
	alien->unk20 |= 0x1000;
	if ((func_800038E0_44E0() & 1) && arg2 != -1) {
		alien->unk26 = arg2;
	} else {
		alien->unk26 = arg1;
	}
	alien->unk36 = 0;
}



void func_802D962C_19213C(u8 arg0, s16 arg1, s16 arg2) {
	u8 sp77;
	u8 sp76;
	s32 sp60;
	s16 sp5C;
	s32 sp58;
	s16 sp54;
	AlienSpec *sp48;
	s16 var_v0_2;
	s32 var_a0;
	u8 temp_t5;
	u8 temp_v0;
	u8 temp_v0_2;
	u8 var_v0;
	AlienInstance *temp_s0;
	AlienSpec *temp_v1;
	AlienSpec *temp_v1_2;

	temp_s0 = &alienInstances[arg0];
	temp_v0 = temp_s0->unk26;
	sp76 = temp_s0->specIndex;
	if (temp_s0->unk20 & 0x1000) {
		if (arg1 == temp_v0) {
			temp_s0->unk2A = (s16)(temp_s0->unk2A + 0x1000);
		} else {
			temp_s0->unk2A = (s16)(temp_s0->unk2A - 0x1000);
		}
		sp77 = temp_v0;
		func_80081E5C_90E0C((s16)temp_v0);
		if (D_8014DD5E[temp_v0][0] == 0) {
			temp_v0_2 = temp_s0->unk36;
			if (temp_v0_2 == 3) {
				temp_s0->unk20 = (s32)(temp_s0->unk20 & ~0x1000);
				return;
			}
			func_80081C84_90C34(temp_v0 & 0xFF, (u8 *)&D_802DDCF8 + (temp_v0_2 * 0x10));
			temp_t5 = temp_s0->unk36 + 1;
			var_v0 = temp_t5 & 0xFF;
			temp_s0->unk36 = temp_t5;
			if (var_v0 == 3) {
				func_80137468_146418(arg0, 0x64);
				if (arg1 == temp_s0->unk26) {
					sp60 = func_800879A4_96954(arg0, 0, 1);
				}
				var_a0 = sp60;
				if (arg2 == temp_s0->unk26) {
					temp_v1 = &alienSpecs[sp76];
					sp48 = temp_v1;
					temp_v1->unk2C = (s16)-temp_v1->unk2C;
					var_a0 = func_800879A4_96954(arg0, 0x96, 1);
					temp_v1->unk2C = (s16)-temp_v1->unk2C;
				}
				temp_v1_2 = &alienSpecs[sp76];
				if (var_a0 != 0) {
					sp48 = temp_v1_2;
					func_80122524_1314D4(D_80052B34, 0x190, temp_s0->unk0, temp_s0->unk4);
				}
				if (arg2 == temp_s0->unk26) {
					var_v0_2 = -temp_v1_2->unk2C;
				} else {
					var_v0_2 = temp_v1_2->unk2C;
				}
				func_80128428_1373D8(temp_s0, var_v0_2, temp_v1_2->unk2E, temp_v1_2->unk30, (s32 *)&sp5C, &sp58, (s32 *)&sp54);
				func_800DEE5C_EDE0C(sp5C, (s16)(sp58 + 5), sp54, 0x50, 0x14);
				func_800C541C_D43CC(sp5C, sp54, sp54, 0, -1, 0, 0x64, 0xFF, 0x28, 0x14, 0xFF, 0xFF, 0x80);
				func_800DEA08_ED9B8(sp5C, sp54, sp54, 0x96, 8, 6, 0x28, 0xC8, 0xA6, 0x85, 0x2F);
				func_80135D44_144CF4((s32)sp5C, sp58, (s32)sp54, 0x40400000);
				var_v0 = temp_s0->unk36;
			}
			if (var_v0 == 4) {
				temp_s0->unk20 = (s32)(temp_s0->unk20 & ~0x1000);
			}
		}
	}
}



void func_802D9964_192474(u8 arg0) {
	s16 sp4E;
	s16 sp4C;
	s16 sp4A;
	s16 sp46;
	s16 sp44;
	AlienInstance *sp18;
	s16 temp_a0;
	s16 temp_a0_2;
	s16 temp_a1_2;
	s16 temp_a1_3;
	s16 temp_v0;
	s16 var_v0;
	s16 var_v0_2;
	s16 var_v0_3;
	s16 var_v0_4;
	s16 var_v0_5;
	s16 var_v0_6;
	s16 var_v1;
	s16 var_v1_2;
	s16 var_v1_3;
	s16 var_v1_4;
	s16 var_v1_5;
	s16 var_v1_6;
	s8 temp_a1;
	s8 temp_a2;
	s8 temp_v1;
	u8 temp_t6;
	AlienInstance *temp_a3;

	temp_t6 = arg0 & 0xFF;
	temp_a3 = &alienInstances[temp_t6];
	temp_v1 = D_8014DD50[temp_a3->unkC].unkC;
	temp_a1 = D_8014DD50[temp_v1].unkD;
	temp_a2 = D_8014DD50[temp_a1].unkD;
	sp18 = temp_a3;
	arg0 = temp_t6;
	sp4E = (s16)temp_v1;
	sp4A = (s16)temp_a1;
	sp4C = (s16)temp_a2;
	func_802D962C_19213C(temp_t6, temp_a1, temp_a2);
	if (D_80052B34->unk1A == 0) {
		func_800877E8_96798(arg0, 0x73, 0x78);
	} else {
		func_800877E8_96798(arg0, 0x2BC, 0x320);
	}
	if (!(sp18->unk20 & 0x1000) && !(sp18->unk47 & 1)) {
		sp44 = sp18->unk4 - D_80052B34->unk4;
		sp46 = sp18->unk0 - D_80052B34->unk0;
		if (func_80086230_951E0(arg0, sp4E, 0x2000) == 0) {
			temp_a1_2 = -sp46;
			temp_a0 = -sp44;
			if (temp_a1_2 < sp46) {
				var_v1 = sp46;
			} else {
				var_v1 = temp_a1_2;
			}
			var_v0 = temp_a0;
			if (temp_a0 < sp44) {
				var_v0 = sp44;
			}
			if (var_v0 < var_v1) {
				var_v0_2 = temp_a1_2;
				if (temp_a1_2 < sp46) {
					var_v1_2 = sp46;
				} else {
					goto block_17;
				}
			} else {
				var_v0_2 = temp_a0;
				if (temp_a0 < sp44) {
					var_v0_2 = sp44;
				}
block_17:
				var_v1_2 = var_v0_2;
			}
			if ((var_v1_2 >= 0x79) && (sp18->unk4E != 0) && (func_80087188_96138(arg0, 0, 0x20, sp46) != 0)) {
				sp18->unk1E = 8;
			}
		}
		temp_a1_3 = -sp46;
		temp_a0_2 = -sp44;
		if (temp_a1_3 < sp46) {
			var_v1_3 = sp46;
		} else {
			var_v1_3 = temp_a1_3;
		}
		var_v0_3 = temp_a0_2;
		if (temp_a0_2 < sp44) {
			var_v0_3 = sp44;
		}
		if (var_v0_3 < var_v1_3) {
			var_v0_4 = temp_a1_3;
			if (temp_a1_3 < sp46) {
				var_v1_4 = sp46;
			} else {
				goto block_33;
			}
		} else {
			var_v0_4 = temp_a0_2;
			if (temp_a0_2 < sp44) {
				var_v0_4 = sp44;
			}
block_33:
			var_v1_4 = var_v0_4;
		}
		if (var_v1_4 < 0x79) {
			var_v1_5 = temp_a1_3;
			if (temp_a1_3 < sp46) {
				var_v1_5 = sp46;
			}
			var_v0_5 = temp_a0_2;
			if (temp_a0_2 < sp44) {
				var_v0_5 = sp44;
			}
			if (var_v0_5 < var_v1_5) {
				var_v0_6 = temp_a1_3;
				if (temp_a1_3 < sp46) {
					var_v1_6 = sp46;
				} else {
					goto block_45;
				}
			} else {
				var_v0_6 = temp_a0_2;
				if (temp_a0_2 < sp44) {
					var_v0_6 = sp44;
				}
block_45:
				var_v1_6 = var_v0_6;
			}
			if (var_v1_6 >= 0x73) {
				func_802D95A8_1920B8(arg0, sp4A, sp4C);
			}
		}
		func_80090A6C_9FA1C(arg0, sp4C, 0xBB8);
		func_80090A6C_9FA1C(arg0, sp4A, 0xBB8);
	}
	temp_v0 = sp18->unk1E;
	if (temp_v0 != 0) {
		sp18->unk1E = (s16)(temp_v0 - 1);
	}
}


void func_802D9C60_192770(u8 arg0) {
	s32 sp6C;
	s32 sp68;
	s32 sp64;
	s32 sp60;
	s32 sp5C;
	s16 sp5A;
	s16 sp58;
	s16 sp56;
	s16 sp54;
	s16 sp52;
	Unk8014DD50 *sp40;
	Unk8014DD50 *sp3C;
	Unk8014DD50 *sp38;
	s32 sp34;
	s16 temp_v0_2;
	s16 temp_v0_3;
	s16 temp_v0_4;
	s16 temp_v0_5;
	s32 temp_s0;
	s32 temp_s0_2;
	s32 temp_s0_3;
	s32 temp_s0_4;
	s32 temp_s0_5;
	s32 temp_s0_6;
	s8 temp_a0;
	s8 temp_a1;
	s8 temp_a2_2;
	s8 temp_t0;
	s8 temp_t1;
	u8 temp_t6;
	AlienInstance *temp_s1;

	temp_t6 = arg0 & 0xFF;
	temp_s1 = &alienInstances[temp_t6];
	if (temp_s1->unk20 & 0x600) {
		temp_a1 = D_8014DD50[temp_s1->unkC].unkC;
		arg0 = temp_t6;
		sp40 = &D_8014DD50[temp_a1];
		temp_t0 = sp40->unkD;
		sp5A = (s16) temp_a1;
		sp3C = &D_8014DD50[temp_t0];
		temp_t1 = sp3C->unkD;
		sp38 = &D_8014DD50[temp_t1];
		sp58 = (s16) temp_t0;
		sp56 = (s16) temp_t1;
		sp54 = (s16) sp3C->unkC;
		sp52 = (s16) sp38->unkC;
		temp_s0 = func_8008916C_9811C(temp_t6, temp_a1);
		func_80128428_1373D8(temp_s1, sp40->unk0, sp40->unk2, sp40->unk4, (s32 *) &sp6C, (s32 *) &sp68, (s32 *) &sp64);
		func_800C80F0_D70A0(((-(s32) sp40->unk6 - temp_s1->unk6) + 0x4000) & 0xFFFF, 0, 0, func_800C7924_D68D4((s16)sp6C, (s16)sp68, (s16)sp64, 0x40, -8, (&D_8025668C)[temp_s1->specIndex * 0x34], temp_s0, 1));
		func_800E093C_EF8EC((s16)sp6C, (s16)sp68, (s16)sp64, 0);
		func_800E093C_EF8EC((s16)sp6C, (s16)sp68, (s16)sp64, 0x1E);
		temp_s0_2 = temp_s1->unk6 & 0xFFFF;
		temp_s1->unk14 = (s16) sp6C;
		temp_s1->unk16 = (s16) sp68;
		temp_s1->unk18 = (s16) sp64;
		sp60 = (s32) (((f64) (f32) coss(temp_s0_2 & 0xFFFF) / 32768.0) * 6.0);
		sp5C = (s32) (((f64) (f32) sins(temp_s0_2 & 0xFFFF) / 32768.0) * 6.0);
		temp_s0_3 = func_8008916C_9811C(arg0, (s8) sp58);
		func_80128428_1373D8(temp_s1, sp3C->unk0, sp3C->unk2, sp3C->unk4, (s32 *) &sp6C, (s32 *) &sp68, (s32 *) &sp64);
		temp_v0_2 = func_800C7924_D68D4((s16)sp6C, (s16)sp68, (s16)sp64, 0x40, -8, (&D_8025668C)[temp_s1->specIndex * 0x34], temp_s0_3, 1);
		func_800C80F0_D70A0((0x4000 - temp_s1->unk6) & 0xFFFF, 0, 0, temp_v0_2);
		func_800C820C_D71BC(0, 0, 0, temp_v0_2);
		temp_a2_2 = (s8) sp5C * -1;
		sp34 = (s32) temp_a2_2;
		func_800C8184_D7134((s8) sp5C * -1, 3, temp_a2_2, temp_v0_2);
		if (sp54 != -1) {
			temp_s0_4 = func_8008916C_9811C(arg0, (s8) sp54);
			func_80128428_1373D8(temp_s1, (s16) (D_8014DD50[(s8)sp54].unk0 + sp3C->unk0), (s16) (D_8014DD50[(s8)sp54].unk2 + sp3C->unk2), (s16) (D_8014DD50[(s8)sp54].unk4 + sp3C->unk4), (s32 *) &sp6C, (s32 *) &sp68, (s32 *) &sp64);
			temp_v0_3 = func_800C7924_D68D4((s16)sp6C, (s16)sp68, (s16)sp64, 0x40, -8, (&D_8025668C)[temp_s1->specIndex * 0x34], temp_s0_4, 1);
			func_800C80F0_D70A0((0x4000 - temp_s1->unk6) & 0xFFFF, 0, 0, temp_v0_3);
			func_800C820C_D71BC(0, 0, 0, temp_v0_3);
			func_800C8184_D7134(temp_t6, 3, (s8) sp34, temp_v0_3);
		}
		temp_s0_5 = func_8008916C_9811C(arg0, (s8) sp56);
		func_80128428_1373D8(temp_s1, sp38->unk0, sp38->unk2, sp38->unk4, (s32 *) &sp6C, (s32 *) &sp68, (s32 *) &sp64);
		temp_v0_4 = func_800C7924_D68D4((s16)sp6C, (s16)sp68, (s16)sp64, 0x40, -8, (&D_8025668C)[temp_s1->specIndex * 0x34], temp_s0_5, 1);
		func_800C80F0_D70A0((0x4000 - temp_s1->unk6) & 0xFFFF, 0, 0, temp_v0_4);
		func_800C820C_D71BC(0, 0, 0, temp_v0_4);
		temp_a0 = (s8) sp60 * -1;
		func_800C8184_D7134(temp_a0, 3, (s8) sp60, temp_v0_4);
		if (sp52 != -1) {
			temp_s0_6 = func_8008916C_9811C(arg0, (s8) sp52);
			func_80128428_1373D8(temp_s1, (s16) (D_8014DD50[(s8)sp52].unk0 + sp38->unk0), (s16) (D_8014DD50[(s8)sp52].unk2 + sp38->unk2), (s16) (D_8014DD50[(s8)sp52].unk4 + sp38->unk4), (s32 *) &sp6C, (s32 *) &sp68, (s32 *) &sp64);
			temp_v0_5 = func_800C7924_D68D4((s16)sp6C, (s16)sp68, (s16)sp64, 0x40, -8, (&D_8025668C)[temp_s1->specIndex * 0x34], temp_s0_6, 1);
			func_800C80F0_D70A0((0x4000 - temp_s1->unk6) & 0xFFFF, 0, 0, temp_v0_5);
			func_800C820C_D71BC(0, 0, 0, temp_v0_5);
			func_800C8184_D7134(temp_t6, 3, (s8) sp34, temp_v0_5);
		}
		func_80088E10_97DC0(sp5A);
		func_80088E10_97DC0(sp58);
		func_80088E10_97DC0(sp56);
	}
}



void func_802DA378_192E88(u8 arg0) {
	if (!(alienInstances[arg0].unk20 & 0x100000)) {
		func_80137468_146418(arg0, 0xF);
		func_802D9C60_192770(arg0);
	}
	func_80089EB4_98E64(arg0, 0x3C, 0, 6, 3);
}

void func_802DA3EC_192EFC(u8 arg0) {
	void *spA4;
	s16 spA0;
	s16 sp9E;
	s16 sp96;
	s32 sp90;
	s32 sp80;
	s32 sp7C;
	s32 sp78;
	s32 sp74;
	s32 sp6C;
	s16 sp68;
	s32 sp60;
	s32 sp5C;
	Unk8014DD50 *sp58;
	Unk8014DD50 *sp54;
	Unk8014DD50 *sp50;
	Unk8014DD50 *sp4C;
	s16 temp_a1;
	s16 temp_v0_2;
	s16 temp_v0_4;
	s16 temp_v0_6;
	s16 temp_v0_7;
	s32 temp_a0;
	s32 temp_a0_3;
	s32 temp_f6;
	s32 temp_v0;
	s32 temp_v0_3;
	s32 var_v0;
	s8 temp_a0_2;
	s8 temp_a2;
	s8 temp_a3;
	s8 temp_v0_5;
	u8 temp_a0_4;
	u8 temp_v1;
	AlienInstance *temp_s0;
	AlienInstance *temp_t3;
	AlienInstance *temp_t4_alien;
	AlienInstance *temp_t5_alien;
	AlienInstance *temp_t8_alien;
	Unk8014DD50 *temp_v0_8;
	Unk8014DD50 *var_a2;

	sp6C = 0;
	temp_s0 = &alienInstances[arg0];
	temp_t3 = &alienInstances[temp_s0->unk25];
	spA4 = temp_t3;
	if (!(temp_t3->unk20 & 0x10000)) {
		if (temp_s0->unk12 != 0) {
			sp5C = (s32) arg0;
			func_80137468_146418(arg0, 0x25E);
		} else {
			sp5C = (s32) arg0;
			func_80137468_146418(arg0, 0x25D);
		}
		temp_v0 = temp_s0->unk0 - D_80052B34->unk0;
		temp_a0 = temp_s0->unk4 - D_80052B34->unk4;
		temp_f6 = (s32) sqrtf((f32) ((temp_v0 * temp_v0) + (temp_a0 * temp_a0)));
		sp90 = temp_f6;
		if ((temp_s0->unk20 & 0xF000) == 0xF000) {
			sp6C = 1;
		}
		if (temp_f6 < 0x212) {
			if (((alienInstances[((u8*)temp_t3)[0]].unk20 & 0x101000) == 0x1000) || ((alienInstances[((u8*)temp_t3)[1]].unk20 & 0x101000) == 0x1000)) {
				temp_s0->unk2A = (s16) (temp_s0->unk2A - 0x400);
			} else if (((alienInstances[((u8*)temp_t3)[2]].unk20 & 0x101000) == 0x1000) || ((alienInstances[((u8*)temp_t3)[3]].unk20 & 0x101000) == 0x1000)) {
				temp_s0->unk2A = (s16) (temp_s0->unk2A + 0x400);
			}
		}
		temp_a2 = D_8014DD50[temp_s0->unkC].unkC;
		spA0 = (s16) temp_a2;
		func_80090948_9F8F8((s16) temp_a2, 0x7D0, temp_a2, 0x50);
		temp_a3 = D_8014DD50[temp_a2].unkD;
		sp9E = (s16) temp_a3;
		func_80090948_9F8F8((s16) temp_a3, 0x7D0, temp_a2, temp_a3);
		temp_a1 = temp_s0->unk2C;
		sp58 = &D_8014DD50[D_8014DD50[temp_a3].unkD];
		sp54 = &D_8014DD50[sp58->unkD];
		temp_a0_2 = sp54->unkD;
		sp50 = &D_8014DD50[temp_a0_2];
		sp96 = (s16) sp50->unkD;
		if ((temp_a1 < 2) || (temp_t3->unk20 & 0x8000)) {
			if (temp_a1 <= 0) {
				if (sp6C != 0) {
					temp_s0->unk2C = (s16) ((func_800038E0_44E0() % 10) + 3);
				} else {
					temp_s0->unk2C = (s16) ((func_800038E0_44E0() % 30) + 0x32);
				}
				var_v0 = temp_t3->unk20;
				if (var_v0 & 0x8000) {
					sp58->unk6 = 0;
					sp54->unk6 = 0;
					var_v0 = temp_t3->unk20;
				}
				temp_t3->unk20 = (s32) (var_v0 & 0xFFFF7FFF);
				func_800A9820_B87D0(arg0, 0x400000);
				func_80137468_146418((u8) sp5C, 0x17);
			}
			sp50->unk2 = 0;
			var_a2 = &D_8014DD50[sp96];
			var_a2->unk2 = 0;
		} else {
			sp50->unk2 = 0x7D00;
			var_a2 = &D_8014DD50[sp96];
			var_a2->unk2 = 0x7D00;
		}
		temp_s0->unk2C = (s16) (temp_s0->unk2C - 1);
		if (sp90 < 0x258) {
			sp4C = var_a2;
			if ((func_80084FE8_93F98(arg0, 0x3E8) != 0) && (temp_s0->unk26 == 0) && (temp_s0->unk1E == 0) && !(temp_t3->unk20 & 0x8000)) {
				temp_s0->unk26 = 0x19U;
				temp_s0->unkA = 0;
				sp58->unk6 = 0;
				sp54->unk6 = 0;
			}
		}
		if (temp_s0->unk26 != 0) {
			temp_v0_2 = temp_s0->unk12 - D_802571B6;
			if (temp_v0_2 < 0) {
				temp_s0->unk12 = 0;
			} else {
				temp_s0->unk12 = temp_v0_2;
			}
			sp50->unk2 = 0;
			temp_v1 = temp_s0->unk26;
			var_a2->unk2 = 0;
			temp_a0_3 = temp_v1 - 0x10;
			if ((s32) temp_v1 >= 0x10) {
				if (temp_a0_3 >= 4) {
					temp_v0_3 = 9 - temp_a0_3;
					temp_s0->unkA = (s16) (temp_v0_3 * -0x1F4);
					sp58->unk6 = (s16) (-temp_v0_3 * 0x3E8);
					sp54->unk6 = (s16) (temp_v0_3 * 0x3E8);
				} else {
					temp_s0->unkA = (s16) (-temp_a0_3 * 0x3E8);
				}
				if (temp_a0_3 == 1) {
					func_80128504_1374B4(temp_s0, 1, &sp80, &sp7C, &sp78);
					sp74 = (s32) temp_s0->unk6;
					if (func_800868A4_95854(arg0, 1, 0, 0) != 0) {
						func_80137468_146418((u8) sp5C, 0x273);
						func_800DEA08_ED9B8((s16)sp80, (s16)sp7C, (s16)sp78, 0xB4, 0xA, 0, 0x1E, 0xC8, 0xA0, 0x96, 0);
						sp60 = sp74;
						sp68 = coss((u16)sp74);
						func_800CA5EC_D959C((s16)sp80, (s16)sp7C, (s16)sp78, (s8) (s32) (((f64) (f32) sp68 / 32768.0) * 100.0), -0x14, (s32) (((f64) (f32) sins((u16)sp74) / 32768.0) * 100.0), 0xB4, 0x19, 0x1E, 0x14, 0xA0, 0x96, 0, 0xC8);
						temp_s0->unk1E = 0x28;
					}
				}
			} else {
				temp_a0_4 = temp_s0->unk26;
				temp_s0->unkA = (s16) (s32) ((((f64) (f32) coss((u32) (((f32) ((s32) temp_v1 % 4) / 4.0f) * D_802DE408) & 0xFFFF) / 32768.0) + 1.0) * D_802DE410);
				sp58->unk6 = (s16) (-(s32) temp_a0_4 * 0x177);
				sp54->unk6 = (s16) (temp_a0_4 * 0x177);
			}
			temp_s0->unk26 = (u8) (temp_s0->unk26 - 1);
		} else {
			if ((temp_s0->unk3C == 0) && ((func_800038E0_44E0() % 150) == 0) && (sp90 < 0xBB8)) {
				temp_s0->unk3C = (s8) ((func_800038E0_44E0() % 50) + 0x32);
			}
			if (temp_s0->unk3C != 0) {
				temp_v0_4 = temp_s0->unk12 - D_802571B6;
				if (temp_v0_4 < 0) {
					temp_s0->unk12 = 0;
				} else {
					temp_s0->unk12 = temp_v0_4;
				}
				func_800808F0_8F8A0(arg0, (void *)((u8 *)temp_s0 + 0xE));
			} else if ((temp_s0->unk20 & 0x5000) == 0x5000) {
				func_8008751C_964CC(arg0, 0x28A, 0x2EE);
			} else {
				func_8008751C_964CC(arg0, 0x1F4, 0x212);
			}
			temp_v0_5 = temp_s0->unk3C;
			if (temp_v0_5 != 0) {
				temp_s0->unk3C = (s8) (temp_v0_5 - 1);
			}
		}
		temp_v0_6 = temp_s0->unk1E;
		if (temp_v0_6 != 0) {
			temp_s0->unk1E = (s16) (temp_v0_6 - 1);
		} else if ((temp_s0->unk26 == 0) && ((sp90 >= 0x321) || (sp6C != 0) || (temp_t3->unk20 & 0x8000))) {
			if (func_80084FE8_93F98(arg0, 0x400) != 0) {
				func_800871CC_9617C(arg0, 0, 0x1E);
			} else {
				func_80087188_96138(arg0, 0, func_800038E0_44E0() % 100);
			}
			if ((sp6C != 0) || (temp_t3->unk20 & 0x8000)) {
				temp_s0->unk1E = 5;
			} else {
				temp_s0->unk1E = (s16) ((func_800038E0_44E0() % 15) + 0xF);
			}
		}
		if ((sp6C != 0) || (temp_t3->unk20 & 0x8000)) {
			if (temp_s0->unk26 == 0) {
				temp_s0->unkA = (s16) (s32) (((f64) (f32) coss((D_80052A8C * 0x5CC60) & 0xFFFF) / 32768.0) * D_802DE418);
				sp58->unk6 = (s16) (u32) (D_802DE428 - ((((f64) (f32) coss((D_80052A8C * 0x3A98) & 0xFFFF) / 32768.0) + 1.0) * D_802DE420));
				sp54->unk6 = (s16) (u32) ((((f64) (f32) coss((D_80052A8C * 0x3A98) & 0xFFFF) / 32768.0) + 1.0) * D_802DE430);
			}
			if (temp_t3->unk20 & 0x8000) {
				temp_v0_7 = temp_s0->unk12 - D_802571B6;
				if (temp_v0_7 < 0) {
					temp_s0->unk12 = 0;
				} else {
					temp_s0->unk12 = temp_v0_7;
				}
			} else {
				D_802571B8 = 0x280;
				D_80257188 = 0;
				D_8025718A = 0;
			}
			if ((sp6C != 0) && (temp_s0->hitPoints < ((s32) D_802571B2 >> 1)) && !(D_80052A8C & 1) && (D_80031420 & 3)) {
				func_800CA5EC_D959C(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, 0, -0x7F, 0, 0x14, 0xC, 8, 0xFF, (s32) D_8013E3C0[currentLevel].unk0, (s32) D_8013E3C0[currentLevel].unk1, (s32) D_8013E3C0[currentLevel].unk2, 0xFF);
			}
			if ((temp_s0->unk20 & 0x80000000) && (D_80031420 & 3)) {
				func_800CA5EC_D959C(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, 0, 0x7F, 0, 0x78, 0xA, 0xA, 0xFF, (s32) D_8013E3C0[currentLevel].unk0, (s32) D_8013E3C0[currentLevel].unk1, (s32) D_8013E3C0[currentLevel].unk2, 0xFF);
			}
		}
		if ((temp_t3->unk20 & 0x8000) && (((s16) temp_s0->unk2C % 3) == 0)) {
			func_800A9738_B86E8(arg0, 0x80000000);
		}
		func_800A92E0_B8290(arg0, 0xF000);
		func_800A9F34_B8EE4(arg0);
	}
}


s32 func_802DB16C_193C7C(u8 arg0, s32 arg1, s32 arg2) {
	u8 sp9F;
	s32 sp98;
	s32 sp94;
	s32 sp90;
	s32 sp8C;
	s32 sp88;
	s32 sp84;
	s32 sp80;
	s16 sp7C;
	s16 sp7A;
	s16 sp78;
	f32 sp70;
	s32 sp5C;
	s16 temp_a0;
	s16 temp_a1;
	s16 temp_a2;
	s16 temp_a3_2;
	s16 temp_v0;
	s32 temp_s0;
	s32 temp_t0;
	s32 temp_t0_2;
	s32 temp_t1;
	s32 temp_t1_2;
	s32 temp_t4;
	s32 temp_t5;
	s32 temp_t8;
	s32 temp_t8_2;
	s32 temp_v0_2;
	s32 temp_v1;
	s32 temp_v1_2;
	s32 temp_v1_3;
	s32 var_t5;
	s32 var_t9;
	s32 var_t9_2;
	s32 var_v0;
	s8 temp_a3;
	AlienInstance *temp_s1;
	AlienInstance *temp_v0_3;

	temp_s0 = arg0 & 0xFF;
	temp_s1 = &alienInstances[temp_s0];
	temp_v0 = temp_s1->unkC;
	temp_a3 = D_8014DD50[temp_v0].unkC;
	temp_v1 = temp_s1->unk20;
	sp7C = temp_v0;
	sp78 = (s16) temp_a3;
	sp9F = temp_s1->specIndex;
	sp7A = (s16) D_8014DD50[temp_a3].unkC;
	if (temp_v1 & 0x4000) {
		if ((func_80081F18_90EC8(temp_s0 & 0xFF, 3, 4, &sp78, arg1) & 0xFF) == 4) {
			temp_s1->unk20 = (s32) (temp_s1->unk20 & ~0x4000);
		}
		if ((temp_s1->unk36 == 2) && (D_8014DD5E[sp78][0] == 0)) {
			func_80128504_1374B4(temp_s1, 1, (s32 *) &sp88, &sp84, (s32 *) &sp80);
			func_800DEE5C_EDE0C((s16)sp88, (s16) (sp84 + 5), (s16)sp80, 0x50, 0xA);
			func_800DEA08_ED9B8((s16)sp88, (s16)sp84, (s16)sp80, 0x1C2, 8, 6, 0x28, 0xDC, 0xA6, 0x85, 0x2F);
			func_800C541C_D43CC((s16)sp88, (s16)sp84, (s16)sp80, 0, 0x7F, 0, 0x78, 0xFF, 0x3C, 0x14, 0x6A, 0x53, 0);
			sp5C = temp_s0;
			func_80137468_146418(temp_s0, 0x259);
			func_80135D44_144CF4((s32) sp88, sp84, (s32) sp80, 0x40A00000);
			if (func_800879A4_96954(temp_s0 & 0xFF, 0x50, 1) != 0) {
				func_80122524_1314D4(D_80052B34, 0x7D0, temp_s1->unk0, temp_s1->unk4);
				if (D_80052B34->unk1A != 0) {
					func_80137468_146418(sp5C, 0x258);
					sp70 = (f32) ((f64) (f32) sins((temp_s1->unk6 + 0x4000) & 0xFFFF) / 32768.0);
					func_800C541C_D43CC(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, (s8) (s32) (sp70 * 127.0f), -0x50, (s32) ((f32) -((f64) (f32) coss((temp_s1->unk6 + 0x4000) & 0xFFFF) / 32768.0) * 127.0f), 0xB4, 0xFF, 0x28, 0x14, 0xFF, 0xFF, 0xC8);
					return 1;
				}
				goto block_11;
			}
			temp_a0 = D_80052B34->unk0;
			temp_a1 = D_80052B34->unk4;
			temp_t0 = temp_a0 - (s32) sp88;
			temp_t1 = temp_a1 - (s32) sp80;
			temp_v0_2 = (temp_t0 * temp_t0) + (temp_t1 * temp_t1);
			if (temp_v0_2 < 0x127690) {
				temp_v1_2 = 0x127690 - temp_v0_2;
				if (!(D_80052B34->unk20 & 2)) {
					temp_v0_3 = &alienInstances[temp_s1->unk25];
					sp8C = temp_v1_2;
					func_80102DDC_111D8C(D_80052B34, func_80003824_4424((f32) -(temp_v0_3->unk0 - temp_a0), (f32) -(temp_v0_3->unk4 - temp_a1)), (s16) (s32) (((f32) temp_v1_2 / D_802DE438) + 8192.0f), (f32) (temp_v1_2 * 0x32) / D_802DE43C);
					D_80052B34->unk22 = (s16) (0x3E8 - (func_800038E0_44E0() % 2000));
					D_80052B34->unk24 = (s16) (0x3E8 - (func_800038E0_44E0() % 2000));
					D_80052B34->unk26 = (s16) (0x3E8 - (func_800038E0_44E0() % 2000));
				}
			}
			goto block_11;
		}
block_11:
		return 1;
	}
	if (temp_v1 & 0x1000) {
		temp_v1_3 = func_80081F18_90EC8(temp_s0 & 0xFF, 3, 3, &sp78, arg1) & 0xFF;
		if (temp_v1_3 == 3) {
			temp_s1->unk20 = (s32) (temp_s1->unk20 & ~0x1000);
		}
		if (temp_v1_3 == 2) {
			sp5C = temp_s0;
			func_80137468_146418(temp_s0, 0x131);
			if (!(D_80052B34->unk20 & 2) && (func_800879A4_96954(temp_s0 & 0xFF, 0x50, 0) != 0)) {
				temp_a2 = temp_s1->unk0;
				temp_a3_2 = temp_s1->unk4;
				temp_t0_2 = D_80052B34->unk0 - temp_a2;
				temp_t1_2 = D_80052B34->unk4 - temp_a3_2;
				if ((sp9F == 0x1D) || (sp9F == 0x1F)) {
					sp98 = 0x3C;
				} else {
					sp98 = 0x2A;
				}
				if (D_80052B34->unk1A == 0) {
					sp94 = temp_t0_2;
					sp90 = temp_t1_2;
					func_80123AC4_132A74(D_80052B34);
				} else {
					sp94 = temp_t0_2;
					sp90 = temp_t1_2;
					func_80122524_1314D4(D_80052B34, 0x3E8, temp_a2, temp_a3_2);
				}
				sp94 = temp_t0_2;
				func_80137468_146418(sp5C, 0x258);
				func_80102D00_111CB0(D_80052B34, (f32) temp_t0_2 / 20.0f, (f32) sp98, (f32) sp90 / 20.0f);
				sp70 = (f32) ((f64) (f32) sins((temp_s1->unk6 + 0x4000) & 0xFFFF) / 32768.0);
				func_800C541C_D43CC(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, (s8) (s32) (sp70 * 127.0f), -0x50, (s32) ((f32) -((f64) (f32) coss((temp_s1->unk6 + 0x4000) & 0xFFFF) / 32768.0) * 127.0f), 0xB4, 0xFF, 0x28, 0x14, 0xFF, 0xFF, 0xC8);
				temp_t8 = func_800038E0_44E0() * 0x7D0;
				var_t9 = temp_t8 >> 0x10;
				if (temp_t8 < 0) {
					var_t9 = (s32) (temp_t8 + 0xFFFF) >> 0x10;
				}
				D_80052B34->unk22 = (s16) (0x3E8 - var_t9);
				temp_t4 = func_800038E0_44E0() * 0x7D0;
				var_t5 = temp_t4 >> 0x10;
				if (temp_t4 < 0) {
					var_t5 = (s32) (temp_t4 + 0xFFFF) >> 0x10;
				}
				D_80052B34->unk24 = (s16) (0x3E8 - var_t5);
				temp_t8_2 = func_800038E0_44E0() * 0x7D0;
				var_t9_2 = temp_t8_2 >> 0x10;
				if (temp_t8_2 < 0) {
					var_t9_2 = (s32) (temp_t8_2 + 0xFFFF) >> 0x10;
				}
				D_80052B34->unk26 = (s16) (0x3E8 - var_t9_2);
				temp_t5 = temp_s1->unk20 & ~0x1000;
				temp_s1->unk20 = temp_t5;
				temp_s1->unk36 = 0U;
				temp_s1->unk20 = (s32) (temp_t5 | 0x2000);
				D_8014DD5E[sp78][0] = 0;
			}
		}
		return 1;
	}
	var_v0 = 0;
	if (temp_v1 & 0x2000) {
		if ((func_80081F18_90EC8(temp_s0 & 0xFF, 3, 2, &sp78, arg2) & 0xFF) == 2) {
			temp_s1->unk20 = (s32) (temp_s1->unk20 & ~0x2000);
		}
		var_v0 = 1;
	}
	return var_v0;
}


void func_802DBA00_194510(u8 arg0) {
	u8 sp43;
	AlienInstance *sp1C;
	s32 temp_a0;
	s32 temp_a1;
	s32 temp_v1;
	s32 var_a0;
	s32 var_a2;
	s32 var_a3;
	s32 var_v0;
	u8 temp_t6;
	AlienInstance *temp_t0;

	temp_t6 = arg0 & 0xFF;
	temp_t0 = &alienInstances[temp_t6];
	arg0 = temp_t6;
	sp1C = temp_t0;
	sp43 = temp_t0->unk25;
	func_800A93A4_B8354(temp_t6, -0xBB, 0x22, 0x147);
	D_8014DD50[temp_t0->unkC].unk4 = -0x96;
	if (func_802DB16C_193C7C(arg0, &D_802DDE18, &D_802DDE24) == 0) {
		sp1C = temp_t0;
		if ((func_800038E0_44E0() % 100) == 0) {
			var_v0 = D_80052B34->unk0 - temp_t0->unk0;
			temp_a0 = -var_v0;
			var_a3 = temp_a0;
			if (temp_a0 < var_v0) {
				var_a3 = var_v0;
			}
			temp_v1 = D_80052B34->unk4 - temp_t0->unk4;
			temp_a1 = -temp_v1;
			var_a2 = temp_a1;
			if (temp_a1 < temp_v1) {
				var_a2 = temp_v1;
			}
			if (var_a2 < var_a3) {
				if (temp_a0 < var_v0) {
				} else {
					var_v0 = temp_a0;
				}
			} else {
				var_a0 = temp_a1;
				if (temp_a1 < temp_v1) {
					var_a0 = temp_v1;
				}
				var_v0 = var_a0;
			}
			if ((var_v0 < 0x320) && !(*(s32 *)(&alienInstances[sp43].pad40[5]) & 0x8000)) {
				temp_t0->unk36 = 0;
				temp_t0->unk20 = (s32)(temp_t0->unk20 | 0x1000);
			}
		}
	}
}



void func_802DBB88_194698(s32 arg0) {
	func_800A93A4_B8354(arg0 & 0xFF, -0xBB, 0x22, 0x147);
}

void func_802DBBBC_1946CC(u8 arg0) {
	u8 sp43;
	s32 sp38;
	s32 sp34;
	AlienInstance *sp1C;
	AlienInstance *sp18;
	s32 temp_a0;
	s32 temp_a1;
	s32 temp_v1;
	s32 var_a0;
	s32 var_a2;
	s32 var_a3;
	s32 var_t1;
	s32 var_t2;
	s32 var_v0;
	s32 var_v0_2;
	u8 temp_t6;
	AlienInstance *temp_t0;
	AlienInstance *temp_t9;

	temp_t6 = arg0 & 0xFF;
	temp_t0 = &alienInstances[temp_t6];
	arg0 = temp_t6;
	sp1C = temp_t0;
	sp43 = temp_t0->unk25;
	func_800A93A4_B8354(temp_t6, -0x88, 0x32, 0xD4);
	temp_t9 = &alienInstances[sp43];
	D_8014DD50[temp_t0->unkC].unk4 = -0x96;
	sp18 = temp_t9;
	if ((temp_t9->unk20 & 0x1000) != 0x1000) {
		sp1C = temp_t0;
		var_v0 = func_802DB16C_193C7C(arg0, &D_802DE0A8, &D_802DE0B4);
		var_t2 = 0x1000;
		var_t1 = 0x320;
	} else {
		sp1C = temp_t0;
		var_v0 = func_802DB16C_193C7C(arg0, &D_802DE0C0, &D_802DE0B4);
		var_t2 = 0x4000;
		var_t1 = 0x7D0;
	}
	if (var_v0 == 0) {
		sp1C = temp_t0;
		sp34 = var_t1;
		sp38 = var_t2;
		if ((func_800038E0_44E0() % 100) == 0) {
			var_v0_2 = D_80052B34->unk0 - temp_t0->unk0;
			temp_a0 = -var_v0_2;
			var_a3 = temp_a0;
			if (temp_a0 < var_v0_2) {
				var_a3 = var_v0_2;
			}
			temp_v1 = D_80052B34->unk4 - temp_t0->unk4;
			temp_a1 = -temp_v1;
			var_a2 = temp_a1;
			if (temp_a1 < temp_v1) {
				var_a2 = temp_v1;
			}
			if (var_a2 < var_a3) {
				if (temp_a0 < var_v0_2) {
				} else {
					var_v0_2 = temp_a0;
				}
			} else {
				var_a0 = temp_a1;
				if (temp_a1 < temp_v1) {
					var_a0 = temp_v1;
				}
				var_v0_2 = var_a0;
			}
			if ((var_v0_2 < var_t1) && !(*(s32 *)(&sp18->pad40[5]) & 0x8000)) {
				temp_t0->unk36 = 0;
				temp_t0->unk20 = (s32)(temp_t0->unk20 | var_t2);
			}
		}
	}
}



void func_802DBDA8_1948B8(s32 arg0) {
	func_800A93A4_B8354(arg0 & 0xFF, -0x88, 0x32, 0xD4);
}

void func_802DBDDC_1948EC(u8 arg0) {
	u8 sp37;
	AlienInstance *sp18;
	s32 temp_a0;
	s32 temp_a1;
	s32 temp_v1;
	s32 var_a0;
	s32 var_a2;
	s32 var_a3;
	s32 var_v0;
	u8 temp_t6;
	AlienInstance *temp_t0;

	temp_t6 = arg0 & 0xFF;
	temp_t0 = &alienInstances[temp_t6];
	arg0 = temp_t6;
	sp18 = temp_t0;
	sp37 = temp_t0->unk25;
	func_800A93A4_B8354(temp_t6, 0xBB, 0x24, 0x145);
	D_8014DD50[temp_t0->unkC].unk4 = -0x96;
	if (func_802DB16C_193C7C(arg0, &D_802DDF00, &D_802DDF0C) == 0) {
		sp18 = temp_t0;
		if ((func_800038E0_44E0() % 100) == 0) {
			var_v0 = D_80052B34->unk0 - temp_t0->unk0;
			temp_a0 = -var_v0;
			var_a3 = temp_a0;
			if (temp_a0 < var_v0) {
				var_a3 = var_v0;
			}
			temp_v1 = D_80052B34->unk4 - temp_t0->unk4;
			temp_a1 = -temp_v1;
			var_a2 = temp_a1;
			if (temp_a1 < temp_v1) {
				var_a2 = temp_v1;
			}
			if (var_a2 < var_a3) {
				if (temp_a0 < var_v0) {
				} else {
					var_v0 = temp_a0;
				}
			} else {
				var_a0 = temp_a1;
				if (temp_a1 < temp_v1) {
					var_a0 = temp_v1;
				}
				var_v0 = var_a0;
			}
			if ((var_v0 < 0x320) && !(*(s32 *)(&alienInstances[sp37].pad40[5]) & 0x8000)) {
				temp_t0->unk36 = 0;
				temp_t0->unk20 = (s32)(temp_t0->unk20 | 0x1000);
			}
		}
	}
}



void func_802DBF64_194A74(s32 arg0) {
	func_800A93A4_B8354(arg0 & 0xFF, 0xBB, 0x24, 0x145);
}

void func_802DBF98_194AA8(u8 arg0) {
	u8 sp43;
	s32 sp38;
	s32 sp34;
	AlienInstance *sp1C;
	AlienInstance *sp18;
	s32 temp_a0;
	s32 temp_a1;
	s32 temp_v1;
	s32 var_a0;
	s32 var_a2;
	s32 var_a3;
	s32 var_t1;
	s32 var_t2;
	s32 var_v0;
	s32 var_v0_2;
	u8 temp_t6;
	AlienInstance *temp_t0;
	AlienInstance *temp_t9;

	temp_t6 = arg0 & 0xFF;
	temp_t0 = &alienInstances[temp_t6];
	arg0 = temp_t6;
	sp1C = temp_t0;
	sp43 = temp_t0->unk25;
	func_800A93A4_B8354(temp_t6, 0x99, 0x32, 0xD4);
	temp_t9 = &alienInstances[sp43];
	D_8014DD50[temp_t0->unkC].unk4 = -0x96;
	sp18 = temp_t9;
	if ((temp_t9->unk20 & 0x4000) != 0x4000) {
		sp1C = temp_t0;
		var_v0 = func_802DB16C_193C7C(arg0, &D_802DE25C, &D_802DE268);
		var_t2 = 0x1000;
		var_t1 = 0x320;
	} else {
		sp1C = temp_t0;
		var_v0 = func_802DB16C_193C7C(arg0, &D_802DE274, &D_802DE268);
		var_t2 = 0x4000;
		var_t1 = 0x7D0;
	}
	if (var_v0 == 0) {
		sp1C = temp_t0;
		sp34 = var_t1;
		sp38 = var_t2;
		if ((func_800038E0_44E0() % 100) == 0) {
			var_v0_2 = D_80052B34->unk0 - temp_t0->unk0;
			temp_a0 = -var_v0_2;
			var_a3 = temp_a0;
			if (temp_a0 < var_v0_2) {
				var_a3 = var_v0_2;
			}
			temp_v1 = D_80052B34->unk4 - temp_t0->unk4;
			temp_a1 = -temp_v1;
			var_a2 = temp_a1;
			if (temp_a1 < temp_v1) {
				var_a2 = temp_v1;
			}
			if (var_a2 < var_a3) {
				if (temp_a0 < var_v0_2) {
				} else {
					var_v0_2 = temp_a0;
				}
			} else {
				var_a0 = temp_a1;
				if (temp_a1 < temp_v1) {
					var_a0 = temp_v1;
				}
				var_v0_2 = var_a0;
			}
			if ((var_v0_2 < var_t1) && !(*(s32 *)(&sp18->pad40[5]) & 0x8000)) {
				temp_t0->unk36 = 0;
				temp_t0->unk20 = (s32)(temp_t0->unk20 | var_t2);
			}
		}
	}
}



void func_802DC184_194C94(s32 arg0) {
	func_800A93A4_B8354(arg0 & 0xFF, 0x99, 0x32, 0xD4);
}

void func_802DC1B8_194CC8(s32 arg0, s32 arg1) {
	s16 sp42;
	s16 sp3E;
	s16 sp3A;
	AlienInstance *temp_s0;
	Unk8014DD50 *temp_v0;
	s32 temp_a1;
	s32 temp_a2;
	s32 temp_a3;

	temp_s0 = &alienInstances[arg0 & 0xFF];
	if (temp_s0->unk20 & 0x600) {
		temp_v0 = &D_8014DD50[D_8014DD50[temp_s0->unkC].unkC];
		temp_a1 = temp_v0->unk0;
		if (temp_a1 < 0) {
			temp_a1 = (temp_a1 + 1) >> 1;
		} else {
			temp_a1 = temp_a1 >> 1;
		}
		temp_a2 = temp_v0->unk2;
		if (temp_a2 < 0) {
			temp_a2 = (temp_a2 + 1) >> 1;
		} else {
			temp_a2 = temp_a2 >> 1;
		}
		temp_a3 = temp_v0->unk4;
		if (temp_a3 < 0) {
			temp_a3 = (temp_a3 + 1) >> 1;
		} else {
			temp_a3 = temp_a3 >> 1;
		}
		func_80128428_1373D8(temp_s0, (s16)temp_a1, (s16)temp_a2, (s16)temp_a3, &sp42, &sp3E, &sp3A);
		func_800DF038_EDFE8(sp42, sp3E, sp3A, (&D_8025668C)[temp_s0->specIndex * 0x34], arg1, 0);
	}
}



#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DC2E4_194DF4.s")

void func_802DC500_195010(u8 arg0) {
	s16 sp9E;
	s32 sp94;
	s32 sp90;
	s32 sp8C;
	s32 sp88;
	s32 sp84;
	s32 sp80;
	s32 sp6C;
	s32 sp68;
	s32 sp64;
	s16 sp72;
	s16 sp70;
	u16 sp74;
	u16 sp5C;
	u16 sp5A;
	u16 sp58;
	u16 sp56;
	u16 sp54;
	s32 sp4C;
	u8 temp_t6;
	u8 var_a0;
	AlienInstance *temp_s0;
	Unk8014DD50 *temp_v0;
	Unk8014DD50 *temp_v1;

	temp_t6 = arg0 & 0xFF;
	var_a0 = temp_t6;
	temp_s0 = &alienInstances[temp_t6];
	sp9E = temp_s0->unkC;
	if (!(temp_s0->unk20 & 0x100000)) {
		arg0 = var_a0;
		func_802DC2E4_194DF4(var_a0);
		var_a0 = arg0;
	}
	sp4C = (s32) var_a0;
	if (((u32) (var_a0 + D_80052A8C) % 12U) == 0) {
		temp_v0 = &D_8014DD50[sp9E];
		sp72 = 0;
		sp70 = (temp_v0->unk6 - temp_s0->unk6) + 0x4000;
		sp74 = temp_v0->unkA;
		func_800044D4_50D4(temp_s0 + 0x14, &sp8C, &sp70);
		func_800044D4_50D4(&D_802DE280, &sp80, &sp70);
		sp8C += temp_s0->unk0;
		sp90 += temp_s0->unk2;
		sp94 += temp_s0->unk4;
		if (D_80031420 & 3) {
			sp54 = func_800038E0_44E0();
			sp56 = func_800038E0_44E0();
			sp58 = func_800038E0_44E0();
			sp5A = func_800038E0_44E0();
			sp5C = func_800038E0_44E0();
			func_800CA5EC_D959C((s16)sp8C, (s16)sp90, (s16)sp94, (s8) ((sp80 - ((s32) sp54 % 20)) + 0xA), (sp84 - ((s32) sp56 % 20)) + 0xA, (sp88 - ((s32) sp58 % 20)) + 0xA, ((s32) sp5A % 30) + 0x50, 8, ((s32) sp5C % 10) + 0xA, (func_800038E0_44E0() % 55) + 0x23, (s32) D_8013E3C0[currentLevel].unk0, (s32) D_8013E3C0[currentLevel].unk1, (s32) D_8013E3C0[currentLevel].unk2, 0xFF);
		}
	}
	func_800821F0_911A0(sp4C, sp9E, 4, &D_802DE280);
	if ((((D_8014F828 >= 3) && (temp_s0->unk2C < 0xFA)) || (alienInstances[temp_s0->unk25].unk20 & 0x100000)) && (temp_s0->unk2C >= 3)) {
		temp_s0->unk2C = 2;
	}
	if (temp_s0->unk2C == 2) {
		func_80128428_1373D8(temp_s0, (s16) ((s16) temp_s0->unk14 / 2), (s16) ((s16) temp_s0->unk16 / 2), (s16) ((s16) temp_s0->unk18 / 2), (s32 *) &sp6C, (s32 *) &sp68, (s32 *) &sp64);
		func_800DF038_EDFE8((s16)sp6C, (s16)sp68, (s16)sp64, (&D_8025668C)[temp_s0->specIndex * 0x34], 6, 0);
		D_8014F828 -= 1;
	}
}



void func_802DC500_195010(u8 arg0);

void func_802DC91C_19542C(u8 arg0) {
	AlienInstance *alien;
	alien = &alienInstances[arg0];
	alien->unk14 = -0x8D;
	alien->unk16 = -0x7;
	alien->unk18 = 0x26;
	func_802DC500_195010(arg0);
	func_800A93A4_B8354(arg0, -0xBB, 0x22, 0x147);
}

void func_802DC98C_19549C(u8 arg0) {
	AlienInstance *alien;
	alien = &alienInstances[arg0];
	alien->unk14 = -0xA8;
	alien->unk16 = 0xB6;
	alien->unk18 = 0x39;
	func_802DC500_195010(arg0);
	func_800A93A4_B8354(arg0, -0x88, 0x32, 0xD4);
}

void func_802DC9FC_19550C(u8 arg0) {
	AlienInstance *alien;
	alien = &alienInstances[arg0];
	alien->unk14 = 0x9B;
	alien->unk16 = -0x11;
	alien->unk18 = 0x25;
	func_802DC500_195010(arg0);
	func_800A93A4_B8354(arg0, 0xBB, 0x24, 0x145);
}

void func_802DCA6C_19557C(u8 arg0) {
	AlienInstance *alien;
	alien = &alienInstances[arg0];
	alien->unk14 = 0x9C;
	alien->unk16 = 0xCA;
	alien->unk18 = 0x58;
	func_802DC500_195010(arg0);
	func_800A93A4_B8354(arg0, 0x99, 0x32, 0xD4);
}

void func_802DCADC_1955EC(u8 arg0) {
	s16 sp7E;
	s16 sp7C;
	u16 sp72;
	s32 sp6C;
	s32 sp68;
	s32 sp64;
	void *sp50;
	void *sp4C;
	s16 temp_s0_2;
	s16 temp_s0_3;
	s16 temp_v0_2;
	s16 temp_v0_3;
	s8 temp_a3;
	s8 temp_ra;
	s8 temp_t4;
	s8 temp_t5;
	u16 temp_a0;
	u16 temp_a0_2;
	u16 temp_v0;
	Unk8014DD50 *temp_a2;
	Unk8014DD50 *temp_s0;
	Unk8014DD50 *temp_t1;
	Unk8014DD50 *temp_t2;
	Unk8014DD50 *temp_t3;
	Unk8014DD50 *temp_v1;
	Unk8014DD50 *temp_v1_2;
	AlienInstance *alien;

	alien = &alienInstances[arg0 & 0xFF];
	temp_t5 = D_8014DD50[alien->unkC].unkC;
	temp_v1 = &D_8014DD50[temp_t5];
	temp_ra = temp_v1->unkD;
	temp_a2 = &D_8014DD50[temp_ra];
	temp_t2 = &D_8014DD50[temp_a2->unkD];
	temp_a3 = temp_t2->unkD;
	temp_t3 = &D_8014DD50[temp_a3];
	temp_t1 = &D_8014DD50[temp_t3->unkD];
	temp_t4 = temp_t1->unkD;
	if (alien->unk2C >= 0x51) {
		temp_t1->unk2 = 0;
		D_8014DD50[temp_t4].unk2 = 0;
		sp7C = (s16) temp_ra;
		sp7E = (s16) temp_t5;
		sp4C = temp_t3;
		sp50 = temp_t2;
		temp_t2->unk6 = (s16) (u32) (D_802DE448 - ((((f64) (f32) coss((D_80052A8C * 0x4E20) & 0xFFFF) / 32768.0) + 1.0) * D_802DE440));
		temp_t3->unk6 = (s16) (u32) ((((f64) (f32) coss((D_80052A8C * 0x4E20) & 0xFFFF) / 32768.0) + 1.0) * D_802DE450);
		func_80090948_9F8F8(sp7E, 0x7D0);
		func_80090948_9F8F8(sp7C, 0x7D0);
	} else {
		temp_t1->unk2 = 0x7D00;
		D_8014DD50[temp_t4].unk2 = 0x7D00;
		temp_a0 = temp_v1->unkA;
		if ((s32) temp_a0 < 0x2710) {
			temp_v1->unkA = (u16) (temp_a0 + 0x3E8);
		}
		temp_v0 = temp_a2->unkA;
		if ((s32) temp_v0 < 0x2710) {
			temp_a2->unkA = (u16) (temp_v0 + 0x3E8);
		}
	}
	if (!(alien->unk20 & 0x100000)) {
		func_8012B21C_13A1CC();
		func_800A92B0_B8260();
		alien->unk2C = 0x10E;
		func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, D_80257184, 8);
		func_80137468_146418(arg0, 0x11);
		return;
	}
	temp_v0_2 = alien->unk2C;
	if (temp_v0_2 < 0xAB) {
		func_800AA340_B92F0(arg0);
		temp_v0_3 = alien->unk2C;
		if ((temp_v0_3 < 0x51) && (temp_v0_3 >= 0x29) && !(D_80052A8C & 7)) {
			func_80128504_1374B4(alien, 1, &sp6C, &sp68, &sp64);
			temp_a0_2 = alien->unk6;
			if (D_80031420 & 3) {
				sp72 = temp_a0_2;
				temp_s0_2 = coss(temp_a0_2);
				func_800CA5EC_D959C((s16)sp6C, (s16)sp68, (s16)sp64, (s8) (s32) (((f64) (f32) temp_s0_2 / 32768.0) * 100.0), -0x14, (s32) (((f64) (f32) sins(temp_a0_2) / 32768.0) * 100.0), 0x64, 0xA, 0x1E, 0x64, (s32) D_8013E3C0[currentLevel].unk0, (s32) D_8013E3C0[currentLevel].unk1, (s32) D_8013E3C0[currentLevel].unk2, 0xFF);
			}
		}
	} else {
		D_80031414 = 1;
		if (temp_v0_2 >= 0xFA) {
			alien->unkA = (s16) (alien->unkA - 0xC8);
			return;
		}
		if (temp_v0_2 < 0xBF) {
			alien->unkA = (s16) (alien->unkA + 0xC8);
			return;
		}
		if (((s32) (temp_v0_2 + 1) % 10) == 0) {
			func_80128504_1374B4(alien, 1, &sp6C, &sp68, &sp64);
			sp72 = (s16) alien->unk6;
			func_800DEA08_ED9B8((s16)sp6C, (s16) ((s32) sp68 + 0x32), (s16)sp64, 0xB4, 0xA, 0, 0x1E, 0xB4, 0xA0, 0x96, 0);
			temp_s0_3 = coss((u16) sp72);
			func_800CA5EC_D959C((s16)sp6C, (s16) ((s32) sp68 + 0x32), (s16)sp64, (s8) (s32) (((f64) (f32) temp_s0_3 / 32768.0) * 100.0), 0x50, (s32) (((f64) (f32) sins((u16) sp72) / 32768.0) * 100.0), 0x64, 0xA, 0x1E, 0x64, 0xA0, 0x96, 0, 0xC8);
		}
	}
}

