#include <ultra64.h>
#include "common.h"

s32 D_8013D580_14C530 = 0;
u8 D_8013D584_14C534[4] = { 0x03, 0x02, 0x03, 0x03 };
Unk80052B40 D_8013D588_14C538 = { 0x0080, 0x0080, 0x0080 };
u32 D_8013D590_14C540 = 0x000067C1;
u32 D_8013D594_14C544 = 0xFB013401;
u8 D_8013D598_14C548[0x1C] = {
	0x81, 0x81, 0xFF, 0xFF, 0x66, 0x66, 0x77, 0x77, 0x88, 0x88, 0x99, 0x99, 0xAA, 0xAA, 0xBB, 0xBB,
	0xCC, 0xCC, 0xDD, 0xDD, 0xEE, 0xEE, 0xFF, 0xFF, 0x00, 0x01, 0x00, 0x00,
};
s16 D_8013D5B4_14C564 = 0;
s16 D_8013D5B8_14C568 = 0;
s16 D_8013D5BC_14C56C = 0;
s16 D_8013D5C0_14C570[8] = { 0, 0, 0, 1, 0, 0x1388, -1, -100 };
s16 D_8013D5D0_14C580 = 0;
s16 D_8013D5D4_14C584 = 0;
s16 D_8013D5D8_14C588 = 0;
s32 D_8013D5DC_14C58C = 0;
s32 D_8013D5E0_14C590 = 0;
u8 D_8013D5E4_14C594[4] = { 0x00, 0x00, 0x00, 0x00 };
Unk80052B40 D_8013D5E8_14C598 = { 0x0018, -24, 0x0000 };
u8 D_8013D5F0_14C5A0[0x38] = {
	0x07, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xE8, 0xFF, 0xE8, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x18, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00,
	0x07, 0xE0, 0x07, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xE8, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x07, 0xE0, 0xFF, 0xFF, 0xFF, 0xFF,
};
Unk80052B40 D_8013D628_14C5D8 = { 0x0018, -24, 0x0000 };
u8 D_8013D630_14C5E0[0x38] = {
	0x08, 0x00, 0x08, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xE8, 0xFF, 0xE8, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x08, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x18, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00,
	0x08, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xE8, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF,
};
f32 D_8013D668_14C618 = 1.0f;
u8 D_8013D66C_14C61C[4] = { 0x00, 0x05, 0x00, 0x02 };
u8 D_8013D670_14C620[0x0C] = {
	0x00, 0x00, 0x02, 0x00, 0x03, 0x00, 0x00, 0x00,
	0x0F, 0x11, 0x04, 0x00,
};
u32 D_8013D67C_14C62C = 0x80142518;
u32 D_8013D680_14C630[14] = {
	0x80142528, 0x80142534, 0x8014253C, 0x80142540, 0x80142548, 0x80142550, 0x80142558,
	0x80142560, 0x80142568, 0x80142570, 0x80142578, 0x80142580, 0x8014258C, 0x80142598,
};
u32 D_8013D6B8_14C668 = 0x801425A0;
u32 D_8013D6BC_14C66C[14] = {
	0x801425B0, 0x801425BC, 0x801425C4, 0x801425CC, 0x801425D4, 0x801425DC, 0x801425E4,
	0x801425EC, 0x801425F4, 0x801425FC, 0x80142604, 0x8014260C, 0x80142618, 0x80142624,
};
u32 D_8013D6F4_14C6A4 = 0x8014262C;
u32 D_8013D6F8_14C6A8[14] = {
	0x8014263C, 0x80142644, 0x8014264C, 0x80142654, 0x8014265C, 0x80142664, 0x8014266C,
	0x80142674, 0x8014267C, 0x80142684, 0x8014268C, 0x80142694, 0x801426A0, 0x801426AC,
};
u32 D_8013D730_14C6E0 = 4;
s32 D_8013D734_14C6E4 = 0;
s16 D_8013D738_14C6E8[6] = { 0, 0, 0, 0, 0, 0 };
Unk80052B40 D_8013D744_14C6F4 = { 0, 0, 0 };
Unk80052B40 D_8013D74C_14C6FC = { 0, 0, 0 };
u16 D_8013D754_14C704 = 0;
s32 D_8013D758_14C708 = 0;
s32 D_8013D75C_14C70C = 0;
s32 D_8013D760_14C710 = 0;
s32 D_8013D764_14C714 = 0;
u8 D_8013D768_14C718 = 0;
s32 D_8013D76C_14C71C = 0;
s32 D_8013D770_14C720 = 10;
s32 D_8013D774_14C724 = 0;
u8 D_8013D778_14C728[0x10] = {
	0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00,
};
u8 D_8013D788_14C738[0xB8] = {
	0x00, 0x00, 0xF8, 0xD6, 0x00, 0x01, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0xE8, 0x56, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0xE8, 0x56, 0x00, 0x01, 0x00, 0x32, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0xE8, 0x56, 0x00, 0x01, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0xE8, 0x56, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x06, 0xBD, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x10, 0xDA, 0x00, 0x01, 0x00, 0x32, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x10, 0xDA, 0x00, 0x01, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x11, 0x11, 0x00, 0x01, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x08,
};
u8 D_8013D840_14C7F0[0x48] = {
	0x80, 0x13, 0xD7, 0x80, 0x80, 0x13, 0xD7, 0xE0, 0x00, 0x42, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x42, 0x00, 0x00, 0x00, 0x4F, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x02, 0xFF, 0xBE, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0xFF, 0xBE, 0x00, 0x00, 0x00, 0x4F, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x02,
};
s32 D_8013D888_14C838 = 0;
u8 D_8013D88C_14C83C[4] = { 0x00, 0x00, 0x00, 0x00 };
s8 D_8013D890_14C840 = 0;
u8 D_8013D894_14C844 = 0;
u8 D_8013D898_14C848[0x18] = {
	0xEC, 0xDF, 0xE1, 0x04, 0x00, 0x7C, 0x68, 0x50,
	0xB2, 0x80, 0x32, 0x88, 0x39, 0xC4, 0x60, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x02, 0x0A, 0x11, 0x16,
};
u8 D_8013D8B0_14C860[0x10] = {
	0x32, 0x64, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

void func_800A3D00_B2CB0(u8 arg0, s16 arg1, s16 arg2, s32 arg3) {
	if (!(alienInstances[arg0].unk20 & 0x8000)) {
		return;
	}

	func_80081E5C_90E0C(arg1);
	if (D_8014DD5E[arg1][0] == 0) {
		if (arg2 == alienInstances[arg0].unk4B) {
			alienInstances[arg0].unk20 &= ~0x8000;
			return;
		}

		func_80081C84_90C34(arg1, (Unk8014DD50 *)((alienInstances[arg0].unk4B * 0x10) + arg3));
		alienInstances[arg0].unk4B++;
	}
}

u8 func_800A3DC8_B2D78(void) {
	u8 var_v0;
	u8 temp_a2;
	AlienInstance* alien;

	for (var_v0 = D_8014D509; var_v0 < D_8014D50A; var_v0++) {
		temp_a2 = D_8014D408[var_v0];
		alien = &alienInstances[temp_a2];
		
		if (alien->specIndex == 0x19) {
			if (alien->unk3C != 0) {
				alien->unk3C = (s8) (alien->unk3C - 1);
				osSyncPrintf(D_80142740_1516F0, temp_a2); // Found parent %d
				return temp_a2;
			}
		}
	}
	return 0xFF;
}

// CURRENT (132)
#ifdef NON_MATCHING
s32 func_800A3E74_B2E24(u8 arg0) {
	AlienInstance *parent;
	AlienInstance *child;
	s32 parentType;
	s32 dir;
	s16 groundY;
	u8 childIndex;

	parent = &alienInstances[arg0];
	parentType = parent->unk3C;
	osSyncPrintf(D_80142754_151704, parentType);
	childIndex = func_8007956C_8851C((u8) parent->unk3C);
	osSyncPrintf(D_8014276C_15171C, childIndex);
	if (childIndex == 0xFF) {
		return 0;
	}

	child = &alienInstances[childIndex];
	child->unk20 |= 0x01000000;
	if (parentType == 0xA) {
		child->unk3A = 0x64;
	}

	if (parentType == 0xD) {
		dir = (func_800038E0_44E0() % 0xFA0) + parent->unk6;
		dir -= 0x7D0;
	} else {
		dir = parent->unk6;
	}

	child->unkE = dir;
	child->unk6 = dir;
	child->unk0 = (s16) (s32) ((((f64) (f32) coss((u16) parent->unk6) / 32768.0) * 100.0) + (f64) parent->unk0);
	child->unk4 = (s16) (s32) ((((f64) (f32) sins((u16) parent->unk6) / 32768.0) * 100.0) + (f64) parent->unk4);
	child->unk25 = arg0;
	child->unk26 = func_800A3DC8_B2D78();
	child->unk12 = 0x460;
	child->unk14 = (s16) (s32) ((((f64) (f32) coss((u16) dir) / 32768.0) * 400.0) + (f64) parent->unk0);
	child->unk16 = parent->unk2;
	child->unk18 = (s16) (s32) ((((f64) (f32) sins((u16) dir) / 32768.0) * 400.0) + (f64) parent->unk4);
	child->unk2C = 0x1E;

	if (D_802566D4[(child->specIndex * 0x1A)] & 1) {
		groundY = func_800B84D0_C7480(child->unk0, child->unk4) >> 8;
		func_8011E6FC_12D6AC(child->unk0, child->unk4, &groundY);
		child->unk2 = groundY + 0x19;
	} else {
		func_80080510_8F4C0(childIndex);
	}

	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A3E74_B2E24.s")
#endif

void func_800A4150_B3100(u8 arg0) {
	s32 temp_v1;
	AlienInstance* temp_v0;

	temp_v0 = (arg0 ) + alienInstances;
	temp_v1 = temp_v0->unk20;
	if (!(temp_v1 & 0x100000) &&
		(temp_v0->unk3D == 0) &&
		!(temp_v1 & 0x4000) &&
		(temp_v1 & 0x1000)) {

		temp_v0->unk20 = (s32) (temp_v1 | 0x4000);
		temp_v0->unk2C = 0;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A41B0_B3160.s")

#ifdef NON_MATCHING
void func_800A4C28_B3BD8(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];
	AlienSpec *spec = &alienSpecs[alien->specIndex];
	Unk8014DD50 *node;
	u8 *levelTable = (u8 *)D_8013D786_14C736;
	u8 *routeTable = (u8 *)D_8014E4D6;
	s16 coords[3];
	s32 point[3];
	s16 direction;
	s32 originalSpecValue;
	s8 nextNode;
	s8 nextNextNode;
	s8 nextNextNextNode;
	s8 result;

	if (currentLevel < 4) {
		nextNode = D_8014DD50[alien->unkC].unkC;
		node = &D_8014DD50[nextNode];
		direction = node->unkC;
		nextNextNode = D_8014DD50[node->unkD].unkD;
		nextNextNextNode = D_8014DD50[nextNextNode].unkD;
	} else {
		nextNode = D_8014DD50[alien->unkD].unkC;
		node = &D_8014DD50[nextNode];
		direction = node->unkC;
		nextNextNode = D_8014DD50[node->unkD].unkD;
		nextNextNextNode = D_8014DD50[nextNextNode].unkD;
		func_80086230_951E0(arg0, nextNextNode, 0x2000);
		func_80086230_951E0(arg0, nextNextNextNode, 0x2000);
	}

	if (D_8014DD50[nextNextNextNode].unkD != -1) {
		func_80090948_9F8F8(nextNextNode, 0x7D0);
		func_80090948_9F8F8(nextNextNextNode, 0x7D0);
	} else if (currentLevel != 4) {
		nextNextNode = -1;
		nextNextNextNode = -1;
	}

	func_80085E2C_94DDC(arg0, direction, 0x4000);
	if (alien->unk20 & 0x2000) {
		if (currentLevel < 4) {
			coords[0] = direction;
			coords[1] = node->unkE;
			coords[2] = node->unk4;
			if (node->unkE == 0 && alien->unk36 < 5) {
				*((s16 *)(levelTable + (alien->unk36 * 0x10))) = direction;
			}
			*((s16 *)(routeTable + (nextNode * 0x10))) = direction;
			result = func_80081F18_90EC8(arg0, 2, 6, coords, (Unk8014DD50 **)&D_8013D840_14C7F0);
			if (alien->unk36 == 3) {
				originalSpecValue = spec->unk24;
				point[0] = (s32)((f32)sins((u16)direction) * ((f32)originalSpecValue / 32768.0f));
				func_80128428_1373D8(alien, (s16)point[0], spec->unk22, (s16)((f32)((f32)coss((u16)direction) * ((f32)originalSpecValue / 32768.0f)) + node->unk4), &point[0], &point[1], &point[2]);
				func_800C56A4_D4654((s16)point[2], (s16)point[1], (s16)point[0], 0x8C, 0xF, 3, 0x28);
			}
			if (result == 4) {
				alien->unk1E = 0;
				originalSpecValue = spec->unk24;
				spec->unk20 = (s16)((f32)sins((u16)direction) * ((f32)originalSpecValue / 32768.0f));
				spec->unk24 = (s16)((f32)((f32)coss((u16)direction) * ((f32)originalSpecValue / 32768.0f)) + node->unk4);
				if (func_80084FE8_93F98(arg0, 0x3FFF) == 0) {
					func_80086D70_95D20(arg0, 0, (s16)-direction);
				} else {
					func_800871CC_9617C(arg0, 0, 0);
				}
				spec->unk24 = (s16)originalSpecValue;
				if (alien->unk3A != 0) {
					alien->unk36 = 2;
				}
			}
			if (result == 6) {
				alien->unk20 &= 0xFFBFDFFF;
			}
		} else {
			if (D_8013D888_14C838 != 0) {
				coords[0] = -0x3D;
				coords[1] = 9;
				coords[2] = 0x72;
				func_800A931C_B82CC(nextNextNode, coords, point);
			} else {
				coords[0] = 0x3D;
				coords[1] = 9;
				coords[2] = 0x72;
				func_800A931C_B82CC(nextNextNextNode, coords, point);
			}
			coords[0] = (s16)point[0];
			coords[1] = (s16)point[1];
			coords[2] = (s16)point[2];
			func_800A931C_B82CC(alien->unkD, coords, point);
			spec->unk20 = (s16)point[0];
			spec->unk22 = (s16)point[1];
			spec->unk24 = (s16)point[2];
			spec->unk1C = (D_80047F94 == 2) ? 0x33 : 0x2F;
			if (!(alien->unk20 & 0x5000) && (func_80084FE8_93F98(arg0, 0x27D0) != 0) && (func_800871CC_9617C(arg0, 0, 0) != 0)) {
				alien->unk1E = 0x28;
				alien->unk4B = 0;
				alien->unk20 |= 0x8000;
				D_8013D888_14C838 = (D_8013D888_14C838 == 0);
			}
			if (alien->unk1E != 0) {
				alien->unk1E--;
			}
		}
	} else if ((func_80084FE8_93F98(arg0, 0x3FFF) != 0) && ((alien->unk20 & 0x1000) == 0)) {
		alien->unk20 |= 0x2000;
		alien->unk36 = 0;
		alien->unk3A = (s16)(currentLevel * 0x12C);
		*((s16 *)(levelTable + 0)) = direction;
		func_80137468_146418(arg0, 0x17);
	} else if (alien->unk3A != 0) {
		alien->unk3A--;
	}

	func_800A41B0_B3160(arg0);
	if (alien->unk20 & 0x800000) {
		alien->unk20 &= 0xFF7FFFFF;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A4C28_B3BD8.s")
#endif

s32 func_800A52F8_B42A8(u8 arg0, s32 arg1, s32 arg2, s32 arg3) {
	s32 temp_a0;
	s32 var_v0;
	s32 var_v1;

	var_v1 = 0;
	if (alienInstances[arg0].unk10 < -arg2) {
		var_v1 = arg1;
	} else {
		if (alienInstances[arg0].unk10 < arg2) {
			var_v0 = arg3 - alienInstances[arg0].unk2;
			temp_a0 = arg1 * 4;
			if (alienInstances[arg0].unk10 < 0) {
				var_v0 -= alienInstances[arg0].unk10;
			}
			if (temp_a0 < var_v0) {
				var_v1 = arg1;
			} else if (var_v0 >= 0) {
				var_v1 = (f32) (((temp_a0 - var_v0) * 0x70) + (arg1 * var_v0)) / temp_a0;
			}
		}
	}
	alienInstances[arg0].unk10 += var_v1;
	return var_v1;
}

#ifdef NON_MATCHING
void func_800A53C0_B4370(s32 arg0, s16 arg1, s16 arg2) {
	s16 abs_arg1;
	AlienInstance *entry;
	s32 sign;
	entry = &alienInstances[arg0 & 0xFF];
	if (entry->unk20 & 0x10) {
		abs_arg1 = (-arg1 < arg1) ? arg1 : -arg1;
		if (entry->unk8 > 0) {
			sign = 1;
		} else {
			sign = 0;
			if (entry->unk8 < 0) {
				sign = -1;
			}
		}
		entry->unk8 = entry->unk8 - sign * abs_arg1;
	} else {
		s16 lookup = alienSpecs[entry->specIndex].unk42;
		s16 diff = entry->unk2A - entry->unkE;
		if (-lookup >= diff) {
			entry->unk8 = entry->unk8 - arg1;
		} else if (lookup < diff) {
			entry->unk8 = entry->unk8 + arg1;
		} else {
			abs_arg1 = (-arg1 < arg1) ? arg1 : -arg1;
			if (entry->unk8 > 0) {
				sign = 1;
			} else {
				sign = 0;
				if (entry->unk8 < 0) {
					sign = -1;
				}
			}
			entry->unk8 = entry->unk8 - sign * abs_arg1;
		}
	}
	if (arg2 < entry->unk8) {
		entry->unk8 = arg2;
		return;
	}
	if (entry->unk8 < -arg2) {
		entry->unk8 = -arg2;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A53C0_B4370.s")
#endif

#ifdef NON_MATCHING
void func_800A5554_B4504(u8 arg0, s32 arg1, s32 arg2, s16 arg3) {
	u8 sp23;
	s32 sp1C;
	AlienInstance *entry;
	AlienSpec *spec;
	s32 temp_f10;
	s32 var_a0;
	s16 var_a3;

	entry = &alienInstances[arg0];
	sp1C = 0;
	sp23 = entry->specIndex;
	func_80137468_146418(arg0, 0x1C);
	func_8008076C_8F71C(arg0);
	func_800A53C0_B4370(arg0, 0x1F4, 0x1388);
	if (entry->unk20 & 0x08000000) {
		sp1C = D_80052B34->unk20 & 2;
		if (sp1C != 0 && D_80222A70 >= D_80052B34->unk2) {
			sp1C = 0;
		}
	}
	spec = &alienSpecs[sp23];
	temp_f10 = (s32)(((f32)(entry->unk12 - entry->unk2C) / (f32)spec->unk40) * 8000.0f * 2.0f);
	if (temp_f10 == 0 || entry->unk12 >= (spec->unk40 - spec->unk3E * 2)) {
		if (entry->unkA >= 0xFA1) {
			entry->unkA = (s16)(entry->unkA - 0xC8);
		}
	} else {
		entry->unkA = (s16)(entry->unkA + temp_f10);
	}
	if (entry->unkA >= 0xFA1) {
		entry->unkA = entry->unkA;
	} else {
		entry->unkA = 0xFA0;
	}
	if (entry->unkA < 0x1F40) {
		entry->unkA = entry->unkA;
	} else {
		entry->unkA = 0x1F40;
	}
	var_a0 = func_800B84D0_C7480(entry->unk0, entry->unk4) >> 8;
	if (var_a0 < D_80222A70) {
		var_a0 = D_80222A70;
	}
	if (entry->unk16 >= var_a0) {
		var_a0 = entry->unk16;
	}
	var_a3 = (s16)(arg1 + var_a0);
	if (sp1C != 0) {
		var_a3 = (s16)(D_80052B34->unk2 + 0x12C);
	}
	if (var_a3 < entry->unk2) {
		if (var_a3 > (s16)(entry->unk2 - 7)) {
			entry->unk2 = var_a3;
		} else {
			entry->unk2 = (s16)(entry->unk2 - 7);
		}
	} else if (var_a3 > entry->unk2) {
		if (var_a3 < (s16)(entry->unk2 + 7)) {
			entry->unk2 = var_a3;
		} else {
			entry->unk2 = (s16)(entry->unk2 + 7);
		}
	}
	entry->unk2C = entry->unk12;
	D_8014DD50[arg3].unk6 = (s16)((u16)D_8014DD50[arg3].unk6 + 0x2EE0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5554_B4504.s")
#endif

#ifdef NON_MATCHING
void func_800A57E4_B4794(u8 arg0) {
	s16 sp2E;
	s32 sp20;
	AlienInstance *entry;
	s32 angle_diff;
	s32 neg_angle;

	entry = &alienInstances[arg0];
	angle_diff = (s16)(func_80003824_4424((f32)(entry->unk0 - D_80052B34->unk0), (f32)(entry->unk4 - D_80052B34->unk4)) - D_80052B34->unk6);
	if (!(entry->unk47 & 1)) {
		neg_angle = -angle_diff;
		if ((neg_angle < angle_diff ? angle_diff : neg_angle) < 0x4000) {
			entry->unk20 = (s32)(entry->unk20 & 0xF7FF7FFF);
			sp20 = (s16)(angle_diff > 0 ? D_80052B34->unk6 + 0x6000 : D_80052B34->unk6 - 0x6000) & 0xFFFF;
			sp2E = angle_diff;
			entry->unk14 = (s16)(s32)(((f64)(f32)coss(sp20) / 32768.0) * D_80142778 + (f64)D_80052B34->unk0);
			entry->unk18 = (s16)(s32)(((f64)(f32)sins(sp20) / 32768.0) * D_80142780 + (f64)D_80052B34->unk4);
			entry->unk16 = D_80052B34->unk2;
		}
	}
	neg_angle = -angle_diff;
	if ((neg_angle < angle_diff ? angle_diff : neg_angle) >= 0x6001) {
		entry->unk20 = (s32)(entry->unk20 | 0x8000);
	}
	if (entry->unk20 & 0x8000) {
		func_8008751C_964CC(arg0, 0x258, 0x28A);
		entry->unk20 = (s32)(entry->unk20 | 0x08000000);
		return;
	}
	func_8008064C_8F5FC(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A57E4_B4794.s")
#endif

Unk8014F6D0* func_800A5A10_B49C0() {
	s32 i;

	i = 16;
	while (i--) {
		if (D_8014F6D0[i].unkC == -1) {
			return &D_8014F6D0[i];
		}
	}

	return NULL;
}

// activateSaveBeacon?
void func_800A5A50_B4A00(s32 arg0, s32 arg1) {
	s32 sp1C;

	D_8014F800 = 1;
	osSyncPrintf(D_80142790_151740, arg0); // Activate beacon %d
	if (D_80151DD0 == 0) {
		D_80047F9C = arg0 + 1;
		sp1C = func_80009F18_AB18(arg1);
		func_80116784_125734();
		if (sp1C == 1) {
			D_80052A98[currentLevel - 1].score = (s32) D_80052B2C->unk30;
			D_80052A98[currentLevel - 1].humansKilled = (s16) D_8004816A;
			D_80052A98[currentLevel - 1].secondsElapsed = (s16) ((u32) D_80052A90 / 1000U);
			D_800476A0 = 1;
			return;
		}
		if (sp1C == 2) {
			func_800A5F24_B4ED4(arg0);
		}
	}
}

// checkIfActivatingSaveBeacon?
void func_800A5B30_B4AE0(s32 arg0, s16 arg1) {
	if ((isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A) != 0) &&
		(D_80052B34->unk1A == 0) &&
		(D_8004794C == 0) &&
		(D_80048188 != 1)) {
		func_800A5A50_B4A00((s32) (*(s16*)((u8*)&D_8015FAEE + (arg1 * 0x30)) - 0x1000) / 2, 1);
	}
}

#ifdef NON_MATCHING
void func_800A5BD0_B4B80(s32 arg0) {
	s32 sp4C;
	s32 sp48;
	s32 sp44;
	s32 sp40;

	sp4C = ((s8*)&D_8003154C)[currentLevel * 0x18 + arg0 * 4 - 0x18] << 8;
	sp48 = ((s8*)&D_8003154C)[currentLevel * 0x18 + arg0 * 4 - 0x17] << 8;
	sp40 = func_800B84D0_C7480((s16)sp4C, (s16)sp48) >> 8;
	if (currentLevel == LEVEL_AMERICA && arg0 == 0) {
		sp40 = 0x7D0;
	}
	sp44 = arg0 * 2;
	func_8012D684_13C634(func_8012D700_13C6B0(4, (sp44 + 0x1000) & 0xFFFF, (s16)sp4C, (s16)sp40, sp48, 0, 0, 0, 0x19, 0x19, 0x50, func_800A5B30_B4AE0, NULL));
	func_8012D684_13C634(func_8012D700_13C6B0(5, (sp44 + 0x1001) & 0xFFFF, (s16)sp4C, (s16)sp40, sp48, 0, 0, 0, 0xF, 0xF, 0x50, NULL, func_8012E1F8_13D1A8));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5BD0_B4B80.s")
#endif

// guess_initBeacons
#ifdef NON_MATCHING
void func_800A5D3C_B4CEC(void) {
	s32 sentinel;
	s32 i;
	s32 j;
	s32 k;
	BeaconDisplayEntry *entry;

	sentinel = -1;
	entry = &D_8014F7DE;
	j = 0xF;
	do {
		entry->unkC = sentinel;
		entry--;
	} while (j-- != 0);

	D_8014F7F0 = 0;
	D_8014F7F4 = 0;
	osSyncPrintf(&D_801427A4);

	k = 0;
	i = 0;
	do {
		if (i < D_80047F98) {
			((u8 *)&D_8003154C + currentLevel * 0x18 + k * 4)[-0x15] = 0;
			((u8 *)&D_8003154C + currentLevel * 0x18 + k * 4)[-0x16] = 8;
			func_800A5BD0_B4B80(i);
			osSyncPrintf(&D_801427B0, i);
		} else {
			((u8 *)&D_8003154C + currentLevel * 0x18 + k * 4)[-0x15] = 0;
			((u8 *)&D_8003154C + currentLevel * 0x18 + k * 4)[-0x16] = 0;
			osSyncPrintf(&D_801427C4, i);
		}
		i = (k + 1) & 0xFF;
		k = i;
	} while (i < 6);

	D_8014F804 = sentinel;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5D3C_B4CEC.s")
#endif

// warpFromSaveBeacon
void func_800A5EA8_B4E58(u8 arg0) {
	osSyncPrintf(D_801427D8_151788, arg0); // teleport to:%d
	D_8013D890_14C840 = 1;
	D_8013D894_14C844 = arg0;
}

void func_800A5EE8_B4E98(u8 arg0) {
	D_8013D890_14C840 = 4;
	D_80157A3C = 0;
	func_800EC450_FB400();
	func_800153D8_15FD8(0xD7);
}

// https://decomp.me/scratch/xqKk4
#ifdef NON_MATCHING
void func_800A5F24_B4ED4(s32 arg0) {
	u8 sp27;

	if (D_8013D890_14C840 == 0) {
		osSyncPrintf(&D_801427E8, (s32)arg0);
		sp27 = arg0 * 4;
		osSyncPrintf(&D_801427F4, (u32)D_80031536[currentLevel * 0x18 + sp27]);
		osSyncPrintf(&D_80142800, (u32)D_8003153A[currentLevel * 0x18 + sp27]);
		if (D_8003153A[currentLevel * 0x18 + sp27] >= 4) {
			func_800A5EA8_B4E58((u8)(arg0 + 2));
		} else {
			func_800A5EA8_B4E58(0);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5F24_B4ED4.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A6020_B4FD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A68CC_B587C.s")

// Launch beacon?
#ifdef NON_MATCHING
void func_800A6FD4_B5F84(void) {
	u8 sp1F;

	sp1F = D_80047F9B;
	osSyncPrintf(&D_8014280C, (s32)sp1F);
	if (currentLevel != LEVEL_SIBERIA || sp1F != 3) {
		func_80013314_13F14();
		D_80052AE0 = gameplayMode;
		gameplayMode = GAMEPLAY_MODE_END_OF_LEVEL;
	}
	*((u8*)&D_8003154C + currentLevel * 0x18 + sp1F * 4 - 0x16) = 1;
	*((u8*)&D_8003154C + currentLevel * 0x18 + sp1F * 4 - 0x15) = 0x1E;
	D_80048025 |= 1 << sp1F;
	D_80047F98++;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A6FD4_B5F84.s")
#endif

// displayBeacons
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A70B8_B6068.s")

#ifdef NON_MATCHING
s16 func_800A7B84_B6B34(s16 arg0, s16 arg1) {
	s32 i;
	u8 *ptr;
	VehicleInstance *item;

	i = D_80158FD8;
	if (i == 0) {
		return i;
	}
	i--;
	ptr = D_80158E80 + i;
	do {
		item = vehicleInstances + *ptr;
		func_8010C4EC_11B49C(item);
		ptr--;
		if (func_8010CF7C_11BF2C(arg0, arg1) != 0) {
			return func_80123AC4_132A74(item);
		}
	} while (i--);
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A7B84_B6B34.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A7C6C_B6C1C.s")

// CURRENT(8051)
#ifdef NON_MATCHING
void func_800A854C_B74FC(void) {
	s16 sp8C;
	s16 sp8A;
	s16 sp88;
	f32 sp7C;
	s16 sp78;
	BeaconDisplayEntry *entry;
	f32 dist;
	f32 deltaX;
	f32 deltaZ;
	f32 distCopy;
	s16 yLimit;
	s32 i;

	entry = &D_8014F7DE;
	i = 0xF;
	do {
		if (entry->unkC != -1) {
			entry->unk0 = (s16)(entry->unk0 + entry->unk6);
			entry->unk4 = (s16)(entry->unk4 + entry->unkA);
			entry->unk2 = (s16)(entry->unk2 + entry->unk8);
			func_800F9D60_108D10(entry->unk0, entry->unk4, &sp8C, &sp8A, &sp88);

			yLimit = sp88;
			if (sp88 < sp8C) {
				yLimit = sp8C;
			}
			if (((currentLevel != 4) || (D_80047F94 != 2)) && (yLimit < D_80222A70)) {
				yLimit = (s16)D_80222A70;
			}

			if (entry->unk2 < yLimit) {
				entry->unk2 = yLimit;
				entry->unk8 = 0;
				if (D_80222A70 < yLimit) {
					if (sp8C < sp88) {
						entry->unk6 = (s16)((entry->unk6 + (func_800038E0_44E0() & 0xF)) - 8);
						entry->unkA = (s16)((entry->unkA + (func_800038E0_44E0() & 0xF)) - 8);
					} else {
						entry->unk6 = (s16)((entry->unk6 + yLimit) - func_800F9FAC_108F5C((s16)(entry->unk0 + 0x1E), entry->unk4));
						entry->unkA = (s16)((entry->unkA + yLimit) - func_800F9FAC_108F5C(entry->unk0, (s16)(entry->unk4 + 0x1E)));
					}

					if (entry->unk6 < -0x1E) {
						entry->unk6 = -0x1E;
					}
					if (entry->unk6 >= 0x1F) {
						entry->unk6 = 0x1E;
					}
					if (entry->unkA < -0x1E) {
						entry->unkA = -0x1E;
					}
					if (entry->unkA >= 0x1F) {
						entry->unkA = 0x1E;
					}
				}
			} else {
				entry->unk6 = (s16)(entry->unk6 - (entry->unk6 >> 2));
				if (D_80222A70 < entry->unk2) {
					entry->unk8 = (s16)(entry->unk8 - 3);
				}
				entry->unkA = (s16)(entry->unkA - (entry->unkA >> 2));
			}

			deltaX = (f32)(D_80052B34->unk0 - entry->unk0);
			deltaZ = (f32)(D_80052B34->unk4 - entry->unk4);
			dist = sqrtf((deltaX * deltaX) + (deltaZ * deltaZ));
			distCopy = dist;
			sp78 = 0x12C;
			if (D_80052B34->unk1A == 0) {
				sp78 = 0x96;
			}

			if ((dist < (f32)(D_80257A0C[(D_80052B34->unk1A * 0x70) >> 1] + sp78)) && (0.0f < dist) && (yLimit == entry->unk2)) {
				s16 accel;

				sp7C = distCopy;
				if (D_80052B34->unk2 == (func_800B84D0_C7480(D_80052B34->unk0, D_80052B34->unk4) >> 8)) {
					accel = (s16)((D_80257A0C[(D_80052B34->unk1A * 0x70) >> 1] + sp78 - (s16)sp7C) >> 2);
					entry->unk6 = (s16)(((f32)accel * deltaX) / sp7C);
					entry->unkA = (s16)(((f32)accel * deltaZ) / sp7C);
				}
			}

			{
				u8 alpha;
				s32 lod;

				alpha = 0x40;
				if (entry->unkE < 0x10) {
					alpha = (u8)(entry->unkE * 4);
				}

				if (entry->unkE < 0x64) {
					lod = (entry->unkE / 0x32) + 1;
				} else {
					lod = 0;
				}

				func_800CB23C_DA1EC((s16)(entry->unk0 >> 2), (s16)(entry->unk2 >> 2), (s16)(entry->unk4 >> 2), alpha, entry->unk10, lod);
			}

			if (entry->unkC != 9) {
				entry->unkE--;
				if (entry->unkE == -1) {
					func_800CBD1C_DACCC(entry->unk10);
					entry->unkC = -1;
				}
			}
		}

		entry--;
	} while (i--);

	if (D_8014F7F0 != 0) {
		D_8014F7F0--;
	}

	if (D_8014F7F4 != 0) {
		D_8014F7F4--;
		if (D_8014F7F4 == 0) {
			func_800E5E3C_F4DEC(2, *((u8 *)D_80052B2C + 0x35));
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A854C_B74FC.s")
#endif

#ifdef NON_MATCHING
void func_800A8A68_B7A18(s16 arg0, s16 arg1, s16 arg2, s32 arg3) {
	Unk8014F6D0 *entry;

	entry = func_800A5A10_B49C0();
	if (entry == NULL) {
		if (arg3 != 9) {
			return;
		}
		entry = &D_8014F6D0;
	}
	if (arg3 != 9) {
		entry->unk10 = func_800CB19C_DA14C((s16)(arg0 >> 2), (s16)(arg1 >> 2), (s16)(arg2 >> 2), (u8)arg3);
		if (entry->unk10 == -3) {
			entry->unkC = -1;
			return;
		}
	}
	if (arg1 < D_80222A70) {
		entry->unk2 = arg1;
		entry->unk8 = -2;
	} else {
		entry->unk2 = (s16)((arg1 - (func_800038E0_44E0() % 128)) + 0x40);
		entry->unk8 = (s16)((func_800038E0_44E0() % 16) + 0x14);
	}
	entry->unk0 = (s16)((arg0 - (func_800038E0_44E0() % 128)) + 0x40);
	entry->unk4 = (s16)((arg2 - (func_800038E0_44E0() % 128)) + 0x40);
	entry->unk6 = (s16)(0x20 - (func_800038E0_44E0() % 64));
	entry->unkA = (s16)(0x20 - (func_800038E0_44E0() % 64));
	entry->unkC = (s16)arg3;
	entry->unkE = (s16)((func_800038E0_44E0() & 0x7F) + 0x1F4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A8A68_B7A18.s")
#endif

#ifdef NON_MATCHING
void func_800A8C44_B7BF4(s16 arg0, s16 arg1, s16 arg2) {
	s16 sp1C;
	s32 rand2;
	s32 i;
	s32 slot;

	sp1C = (s16)(func_800038E0_44E0() % 100);
	rand2 = func_800038E0_44E0();
	i = 0;
	slot = 0;
	if (sp1C < 0x1E) {
		s32 offset = rand2 % 7;
		do {
			s32 idx;
			u8 wtype;
			idx = (slot + offset) & 0xFF;
			if (idx >= 7) {
				idx = (idx - 7) & 0xFF;
			}
			wtype = weaponSlots[idx];
			i = i + 1;
			slot = i & 0xFF;
			if (wtype == 3) {
				func_800A8A68_B7A18(arg0, arg1, arg2, 0xB);
				return;
			}
			if (wtype == 6) {
				func_800A8A68_B7A18(arg0, arg1, arg2, 0xD);
				return;
			}
			if (wtype == 5) {
				func_800A8A68_B7A18(arg0, arg1, arg2, 0x11);
				return;
			}
			if (wtype == 4) {
				func_800A8A68_B7A18(arg0, arg1, arg2, 0x1);
				return;
			}
			if (wtype == 0xA) {
				func_800A8A68_B7A18(arg0, arg1, arg2, 0xF);
				return;
			}
			i = slot;
		} while (slot < 7);
	}
	if (sp1C < 0x4B) {
		func_800A8A68_B7A18(arg0, arg1, arg2, 0x1);
		return;
	}
	if (sp1C < 0x61) {
		func_800A8A68_B7A18(arg0, arg1, arg2, 0x10);
		return;
	}
	if (sp1C < 0x61) {
		func_800A8A68_B7A18(arg0, arg1, arg2, 0xA);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A8C44_B7BF4.s")
#endif

#ifdef NON_MATCHING
// CURRENT(4305)
s32 func_800A8E18_B7DC8(s32 arg0) {
	s32 result;
	VehicleInstance* temp_v0;
	VehicleInstance* temp_a2;
	u16 temp_v1;

	result = 0;
	if ((u32)arg0 < 0x1C) {
		switch (arg0) {
			case 0:
				result = func_801391DC_14818C(9, -0x8000);
				break;
			case 1:
				temp_a2 = &vehicleInstances[0];
				if (temp_a2->unk1C != 0) {
					temp_v0 = D_80052B34;
					temp_v1 = vehicleSpecs[temp_v0->unk1A].hitPoints;
					if (temp_v0->unk1C < temp_v1) {
						if (arg0 == 1) {
							temp_v0->unk1C += temp_v1 / 4;
							result = 1;
							temp_v1 = vehicleSpecs[temp_v0->unk1A].hitPoints;
							if (temp_v1 < temp_v0->unk1C) {
								temp_v0->unk1C = temp_v1;
							}
						} else {
							temp_v0->unk1C = temp_v1;
							result = 1;
						}
					} else {
						temp_v1 = vehicleSpecs[temp_a2->unk1A].hitPoints;
						if (temp_a2->unk1C < temp_v1) {
							if (arg0 == 1) {
								temp_a2->unk1C += temp_v1 / 4;
								result = 1;
								if (temp_v1 < temp_a2->unk1C) {
									temp_a2->unk1C = temp_v1;
								}
							} else {
								temp_a2->unk1C = temp_v1;
								result = 1;
							}
						}
					}
				}
				break;

			case 2:
				result = func_801391DC_14818C(1, -0x8000);
				break;

			case 3:
				result = func_801391DC_14818C(2, -0x8000);
				break;

			case 4:
				if ((currentLevel == 4) && (D_80047F94 == 0)) {
					result = func_801391DC_14818C(3, 0);
				} else {
					result = func_801391DC_14818C(3, 0xA);
				}
				break;

			case 5:
				result = func_801391DC_14818C(4, 0xA);
				break;

			case 6:
				result = func_801391DC_14818C(5, 0x64);
				break;

			case 7:
				result = func_801391DC_14818C(6, 5);
				break;

			case 8:
				result = func_801391DC_14818C(7, 3);
				break;

			case 9:
				if (func_800E60CC_F507C(2, *((u8*) D_80052B2C + 0x35)) != 0) {
					D_8014F7F4 += 0x258;
					result = 1;
				} else {
					D_8014F7F4 = 0x258;
					func_800E5CF4_F4CA4(2, *((u8*) D_80052B2C + 0x35));
					result = 1;
				}
				break;

			case 10:
				result = func_80139150_148100(3, 5);
				break;

			case 11:
				result = func_80139150_148100(3, 0x14);
				break;

			case 12:
				result = func_80139150_148100(6, 3);
				break;

			case 13:
				result = func_80139150_148100(6, 0xA);
				break;

			case 14:
				result = func_80139150_148100(0xA, 0x19);
				break;

			case 15:
				result = func_80139150_148100(5, 0x32);
				break;

			case 16:
				result = func_80139150_148100(4, 0x14);
				break;

			case 17:
				D_8004DC5C++;
				if (D_8004DC5C == 3) {
					result = func_801391DC_14818C(0xA, 0x32);
					func_800DA994_E9944();
					func_8001A650_1B250(0x15);
				}
				break;

			case 18:
				D_8004DC5E++;
				break;

			case 19:
				result = func_80139150_148100(0xE, 0x14);
				break;

			case 20:
				result = func_80139150_148100(0xE, 0xA);
				break;

			case 21:
				result = func_80139150_148100(0x10, 3);
				break;

			case 22:
				result = func_80139150_148100(0x11, 5);
				break;

			case 23:
				result = func_80139150_148100(0xF, 0x1E);
				break;

			case 24:
				result = func_80139150_148100(0xF, 0xF);
				break;

			case 25:
				result = func_80139150_148100(3, 2);
				break;

			case 26:
				break;

			case 27:
				break;

		}
	}

	if (result != 0) {
		func_80139020_147FD0(arg0);
	}

	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A8E18_B7DC8.s")
#endif

// guess_givePowerUp
void func_800A9238_B81E8() {
	s16* powerupTypePtr = &D_80047F7E + 1;
	s16 powerupType;
	s32 i = 0x10;
	s16 negOne = -1;
	
	while (powerupTypePtr--, i--) {
		powerupType = *powerupTypePtr;
		if (negOne != powerupType) {
			osSyncPrintf(D_80142820_1517D0, powerupType); // Giving delayed powerup %d
			func_800A8E18_B7DC8(*powerupTypePtr);
		}
	}
}

void func_800A92B0_B8260(void) {
	s32 i;
	
	i = 16;
	while (i--) {
		D_8014F6D0[i].unkC = -1;
	} ;
}
