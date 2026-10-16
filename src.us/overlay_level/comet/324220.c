#include <ultra64.h>
#include "common.h"

const f64 D_802E7BA0_32BCF0[] = { 628.3185308 };
const f64 D_802E7BA8_32BCF8[] = { 3.141592654 };
const f64 D_802E7BB0_32BD00[] = { 628.3185308 };
const f64 D_802E7BB8_32BD08[] = { 402.123859712 };
const f64 D_802E7BC0_32BD10[] = { 402.123859712 };
const f64 D_802E7BC8_32BD18[] = { 270.176968244 };
const f64 D_802E7BD0_32BD20[] = { 270.176968244 };

s32 func_802E00D0_324220(s32 arg0, s32 arg1) {
	if ((arg0 < -0x2C00) || (arg0 >= -0x1EFF) || (arg1 < -0xD00) || (arg1 >= 0xE01)) {
		return 0;
	}
	return 1;
}

void func_802E0104_324254(VehicleInstance *vehicle) {
	s32 idx = *(u8 *)&vehicle->unk8;
	AlienInstance *parent = &alienInstances[alienInstances[idx].unk25];
	AlienInstance *alien = &alienInstances[idx];

	parent->unk20 &= ~ALIEN_FLAG_UNKD;
	alien->unk20 &= ~(ALIEN_FLAG_UNKO | ALIEN_FLAG_INVINCIBLE);
}

void func_802E015C_3242AC(Unk80222A78 *vehicle);

void func_802E015C_3242AC(Unk80222A78 *vehicle) {
	AlienInstance *alien;
	s32 pad;
	s32 u, v;

	{
		u8 typeIndex;
		typeIndex = vehicle->unk8;
		alien = &alienInstances[typeIndex];
	}

	u = (vehicle->unk1 << 8) + 0x80;
	v = (vehicle->unk2 << 8) + 0x80;

	alien->unk0 = u;
	alien->unk4 = v;
	alien->unk2 = alien->unk2 + 0x8000;
	alien->unk20 = alien->unk20 | ALIEN_FLAG_UNKO;

	vehicle->unk4 = vehicle->unk4 + 9;
	vehicle->unkC = (void (*)(void *))func_802E0104_324254;

	func_800AE454_BD404(vehicle);

	u = D_80052B34->unk0 - alien->unk0;
	v = D_80052B34->unk4 - alien->unk4;

	u = func_80003824_4424((f32)u, (f32)v);
	alien->unkE = u;

	alien->unk3A = 0xFF;
}


s32 func_802E0234_324384(u8 arg0) {
	AlienInstance *parent;
	Unk80222A78 trigger;
	s32 targetX;
	s32 height;
	s32 targetZ;
	s32 deltaZ;
	s32 deltaX;
	s32 range;
	s16 angle;
	AlienType *type;
	u8 typeIndex;

	typeIndex = alienInstances[arg0].typeIndex;
	parent = &alienInstances[alienInstances[arg0].unk25];
	if (parent->unk20 & (ALIEN_FLAG_UNKJ | ALIEN_FLAG_UNKH | ALIEN_FLAG_UNKG | ALIEN_FLAG_UNKF | ALIEN_FLAG_UNKE)) {
		return 0;
	}
	deltaX = alienInstances[arg0].unk0 - D_80052B34->unk0;
	deltaZ = alienInstances[arg0].unk4 - D_80052B34->unk4;
	angle = func_80003824_4424((f32)deltaX, (f32)deltaZ) + 0x8000;
	/* Keep the instance address ahead of the heading in IDO's register allocation. */
	if (alienInstances[arg0].unk0) {}
	range = (func_800038E0_44E0() % 500) + 0x3E8;
	targetX = (f32)coss(angle) / 32768.0 * range + D_80052B34->unk0;
	targetZ = (f32)sins(angle) / 32768.0 * range + D_80052B34->unk4;
	targetX = ((targetX >> 8) << 8) + 0x80;
	targetZ = ((targetZ >> 8) << 8) + 0x80;
	if (func_802E00D0_324220(targetX, targetZ) == 0) {
		return 0;
	}
	parent->unk20 |= ALIEN_FLAG_UNKD;
	alienInstances[arg0].unk12 = 0;
	alienInstances[arg0].unk20 |= ALIEN_FLAG_INVINCIBLE;
	height = func_800B84D0_C7480((s16)targetX, (s16)targetZ);
	type = &alienTypes[typeIndex];
	height = (height >> 8) + type->unk58;
	trigger.unk1 = targetX >> 8;
	trigger.unk2 = targetZ >> 8;
	trigger.unk8 = arg0;
	trigger.unk0 = 2;
	trigger.unk4 = D_8014F820 + 8;
	trigger.unkC = (void (*)(void *))func_802E015C_3242AC;
	func_800AE454_BD404(&trigger);
	func_800CF80C_DE7BC(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (s16)(s32)(type->unkC * 1.5), 0xC8, 0xC8, 0xDC, 3);
	func_800CF80C_DE7BC((s16)targetX, (s16)height, (s16)targetZ, (s16)(s32)(type->unkC * 1.5), 0xC8, 0xC8, 0xDC, 2);
	return 1;
}

#ifdef NON_MATCHING
void func_802E0588_3246D8(u8 arg0) {
	s32 joint0;
	s32 joint1;
	s32 joint2;
	s32 joint3;
	s32 joint4;
	s32 joint5;
	f32 rotation;
	f32 *rotationPtr = &rotation;
	s16 delta;
	s32 radius;
	f32 offset2;
	f32 speed[1];
	s32 yaw;
	f64 turn[2];
	union { f32 value; volatile f32 reload; } offset0;

	speed[0] = alienInstances[arg0].unk12 / 32;
	joint0 = D_8014DD50[alienInstances[arg0].unkC].unkC;
	joint1 = D_8014DD50[joint0].unkD;
	joint2 = D_8014DD50[joint1].unkD;
	joint3 = D_8014DD50[joint2].unkD;
	joint4 = D_8014DD50[joint3].unkD;
	joint5 = D_8014DD50[joint4].unkD;
	yaw = alienInstances[arg0].unk6;
	delta = yaw - D_802E7184_32B2D4;
	radius = D_8014DD50[joint0].unk0;
	*rotationPtr = (speed[0] / (200.0 * 3.141592654)) * 65536.0;
	turn[0] = (f32)((radius * 2) * 3.141592654 * ((f32)delta / 65536.0f));
	offset0.value = (turn[0] / 628.3185308) * 65536.0;
	D_8014DD50[joint0].unkAUnsigned += rotation + offset0.value;
	offset0.value = offset0.reload;
	D_8014DD50[joint1].unkAUnsigned += rotation - offset0.value;
	D_8014DD50[joint2].unkAUnsigned += (f32)((speed[0] / (128.0 * 3.141592654)) * 65536.0) + (f32)((turn[0] / 402.123859712) * 65536.0);
	D_8014DD50[joint3].unkAUnsigned += rotation - (f32)((turn[0] / 402.123859712) * 65536.0);
	offset2 = (turn[0] / 270.176968244) * 65536.0;
	D_8014DD50[joint4].unkAUnsigned += (f32)((speed[0] / (86.0 * 3.141592654)) * 65536.0) + offset2;
	D_8014DD50[joint5].unkAUnsigned += rotation - offset2;
	D_802E7184_32B2D4 = yaw;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E0588_3246D8.s")
#endif

void func_802E0B64_324CB4(u8 arg0) {
	u8 sp6F;
	s16 sp6C;
	s16 sp6A;
	s16 sp68;
	f32 sp64;
	f32 sp60;
	f32 sp5C;
	f32 sp58;
	s32 sp54;
	s32 sp50;
	s32 sp4C;
	s32 sp4C_2;
	s32 sp44;
	s32 sp40;
	s32 sp3C;
	s16 temp_s0;

	sp6C = alienInstances[arg0].unk6;
	sp6F = alienInstances[arg0].typeIndex;
	sp6A = alienInstances[arg0].unkA;
	sp68 = alienInstances[arg0].unk8;

	temp_s0 = coss((u16)sp6C);
	sp64 = (((f32)coss((u16)sp6A) / 32768.0) * (((f32)temp_s0 / 32768.0) * 173.0));
	temp_s0 = sins((u16)sp6C);
	sp60 = (((f32)coss((u16)sp6A) / 32768.0) * (((f32)temp_s0 / 32768.0) * 173.0));
	temp_s0 = coss((u16)sp6C);
	sp5C = (((f32)coss((u16)sp6A) / 32768.0) * (((f32)temp_s0 / 32768.0) * -360.0));
	temp_s0 = sins((u16)sp6C);
	sp58 = (((f32)coss((u16)sp6A) / 32768.0) * (((f32)temp_s0 / 32768.0) * -360.0));
	alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKO;

	sp44 = func_800B84D0_C7480(alienInstances[arg0].unk0, alienInstances[arg0].unk4) >> 8;
	sp50 = func_800B84D0_C7480((s16)((f32)alienInstances[arg0].unk0 + sp64), (s16)((f32)alienInstances[arg0].unk4 + sp60)) >> 8;

	sp54 = func_800B84D0_C7480((s16)((f32)alienInstances[arg0].unk0 + sp5C), (s16)((f32)alienInstances[arg0].unk4 + sp58)) >> 8;
	sp40 = (sp54 * 173 - sp50 * -360) / 533;
	if (sp40 < sp44) {
		sp54 = sp54 < sp44 ? sp44 : sp54;
		sp50 = sp50 < sp44 ? sp44 : sp50;
		sp40 = sp44;
	}
	D_802E7C38 = func_80003824_4424((f32)(((f32)coss((u16)sp6A) / 32768.0) * 533.0), (f32)(sp54 - sp50));

	sp6C += 0x4000;
	temp_s0 = coss((u16)sp6C);
	sp64 = (((f32)coss((u16)sp68) / 32768.0) * (((f32)temp_s0 / 32768.0) * 197.0));
	temp_s0 = sins((u16)sp6C);
	sp60 = (((f32)coss((u16)sp68) / 32768.0) * (((f32)temp_s0 / 32768.0) * 197.0));
	temp_s0 = coss((u16)sp6C);
	sp5C = (((f32)coss((u16)sp68) / 32768.0) * (((f32)temp_s0 / 32768.0) * -197.0));
	temp_s0 = sins((u16)sp6C);
	sp58 = (((f32)coss((u16)sp68) / 32768.0) * (((f32)temp_s0 / 32768.0) * -197.0));
	sp4C = func_800B84D0_C7480((s16)((f32)alienInstances[arg0].unk0 + sp64), (s16)((f32)alienInstances[arg0].unk4 + sp60)) >> 8;

	sp4C_2 = func_800B84D0_C7480((s16)((f32)alienInstances[arg0].unk0 + sp5C), (s16)((f32)alienInstances[arg0].unk4 + sp58)) >> 8;
	sp3C = (sp4C_2 * 197 - sp4C * -197) / 394;
	if (sp3C < sp44) {
		sp3C = sp44;
		sp4C = sp54 < sp44 ? sp44 : sp54;
		sp4C_2 = sp50 < sp44 ? sp44 : sp50;
	}
	sp44 = func_80003824_4424((f32)(((f32)coss((u16)sp68) / 32768.0) * 394.0), (f32)(sp4C_2 - sp4C));
	D_802E7C3A = sp44;
	alienInstances[arg0].unk2 = (sp3C < sp40 ? sp40 : sp3C) + alienTypes[sp6F].unk58;

	if (D_802E7C38 - alienInstances[arg0].unkA < -0x1FF) {
		alienInstances[arg0].unkA -= 0x200;
	} else if (D_802E7C38 - alienInstances[arg0].unkA >= 0x200) {
		alienInstances[arg0].unkA += 0x200;
	} else {
		alienInstances[arg0].unkA = D_802E7C38_R;
	}
	if (sp44 - alienInstances[arg0].unk8 < -0x1FF) {
		alienInstances[arg0].unk8 -= 0x200;
	} else if (sp44 - alienInstances[arg0].unk8 >= 0x200) {
		alienInstances[arg0].unk8 += 0x200;
	} else {
		alienInstances[arg0].unk8 = sp44;
	}
}


int func_802E1274_3253C4(u8 arg0) {
	s32 idx;
	AlienInstance *parent;

	idx = alienInstances[arg0].unk25;
	parent = &alienInstances[alienInstances[(u8)idx].unk25];
	alienInstances[arg0].unk2C++;
	if (alienInstances[arg0].unk2C >= 0x51 || parent->alienIds[1] == 0xFF && alienInstances[arg0].unk2C >= 0x29) {
		if (func_80084FE8_93F98(idx, 0x800)) {
			alienInstances[arg0].unk2C = 0;
			return 1;
		}
	}
	return 0;
}

void func_802E1324_325474(u8 arg0) {
	AlienInstance *inst;
	s16 result;

	inst = &alienInstances[arg0];
	*(s16 *)&inst->unk1E = 0;
	result = func_80003824_4424(110.0f, 80.0f);
	func_800868A4_95854(arg0, 0, 0, (s16)(result + inst->unkA));
	*(s16 *)&inst->unk1E = 0;
	result = func_80003824_4424(110.0f, 80.0f);
	func_800868A4_95854(arg0, 1, 0, (s16)(result + inst->unkA));
}

s32 func_802E13D4_325524(u8 arg0, u8 arg1) {
	s16 sp2E;
	s16 sp28[2];
	s8 sp27;

	sp2E = (s16)((s8 *)D_8014DD5C)[alienInstances[arg1].unkC * 0x10];
	sp28[0] = func_802DFF84_3240D4(arg0);
	sp28[1] = (s16)((s8 *)D_8014DD5C)[sp28[0] * 0x10];
	sp27 = func_80081F18_90EC8(arg0, 2, 0xC, sp28, (Unk8014DD50 **)&D_802E703C_32B18C);
	func_80081F18_90EC8(arg1, 1, 9, &sp2E, (Unk8014DD50 **)&D_802E7044_32B194);
	if ((alienInstances[arg0].unk36 >= 2) && (alienInstances[arg0].unk36 < 0xB) && (D_80052A8C % 3U == 0)) {
		func_802E1324_325474(arg1);
	}
	if (sp27 == 0xC) {
		return 0;
	}
	return 1;
}

int func_802E14F4_325644(u8 arg0) {
	u8 savedIdx;
	s16 parentIdx;
	AlienInstance *grandparent;

	parentIdx = savedIdx = alienInstances[arg0].unk25;
	grandparent = &alienInstances[alienInstances[(u8)parentIdx].unk25];
	alienInstances[arg0].unk2C++;

	if (alienInstances[arg0].unk2C >= 0x51 || grandparent->alienIds[1] == 0xFF && alienInstances[arg0].unk2C >= 0x33) {
		if (func_80084FE8_93F98(alienInstances[arg0].unk25, 0x800)) {
			alienInstances[arg0].unk26 = 4;
			alienInstances[arg0].unk2C = 0;
		}
	}


	if (alienInstances[arg0].unk26 > 0) {
		if (func_80084FE8_93F98(savedIdx, 0x800) && !(alienInstances[(u8)parentIdx].unk47 & 1) && (D_80052A8C & 1)) {
			osSyncPrintf(D_802E7AD0_32BC20);
			alienInstances[arg0].unk26--;
			return 1;
		}
	}
	return 0;
}

void func_802E1630_325780(u8 arg0) {
	alienInstances[arg0].unk1E = 0;
	func_800868A4_95854(arg0, 0, 0, alienInstances[arg0].unkA + func_80003824_4424(110.0f, 80.0f));
}

s32 func_802E16A8_3257F8(u8 arg0, u8 arg1) {
	s16 params[2];
	s32 sp48;
	s32 sp44;
	s32 sp40;
	s32 sp3C;
	s32 sp38;
	s32 sp34;
	s8 sp33;

	if (alienInstances[arg0].unk4B < 8) {
		func_80128428_1373D8(&alienInstances[arg1], 8, -0x2E, 0x44, &sp3C, &sp38, &sp34);
		func_80128428_1373D8(&alienInstances[arg1], 8, -0x31, 0x89, &sp48, &sp44, &sp40);
		func_800D16BC_E066C((s16)sp48, (s16)sp44, (s16)sp40, (s16)sp3C, sp38, sp34, 1);
		func_80128428_1373D8(&alienInstances[arg1], 0x30, -0x51, 0x71, &sp48, &sp44, &sp40);
		func_800D16BC_E066C((s16)sp48, (s16)sp44, (s16)sp40, (s16)sp3C, sp38, sp34, 1);
		func_80128428_1373D8(&alienInstances[arg1], 7, -0x72, 0x58, &sp48, &sp44, &sp40);
		func_800D16BC_E066C((s16)sp48, (s16)sp44, (s16)sp40, (s16)sp3C, sp38, sp34, 1);
		func_80128428_1373D8(&alienInstances[arg1], -0x20, -0x51, 0x71, &sp48, &sp44, &sp40);
		func_800D16BC_E066C((s16)sp48, (s16)sp44, (s16)sp40, (s16)sp3C, sp38, sp34, 1);
	}
	params[0] = func_802DFFC8_324118(arg0);
	params[1] = D_8014DD5C[params[0]].unk0;
	sp33 = func_80082084_91034(arg0, 2, 9, params, D_802E6D58_32AEA8);
	if (sp33 == 3 || sp33 == 5 || sp33 == 7) {
		func_802E1630_325780(arg1);
		alienInstances[arg0].unk12 -= 0x280;
	}
	if (sp33 == 9) {
		return 0;
	}
	return 1;
}

int func_802E193C_325A8C(u8 arg0) {
	s32 idx;
	AlienInstance *parent;

	idx = alienInstances[arg0].unk25;
	parent = &alienInstances[alienInstances[(u8)idx].unk25];
	alienInstances[arg0].unk2C++;
	if (alienInstances[arg0].unk2C >= 0x51 || parent->alienIds[1] == 0xFF && alienInstances[arg0].unk2C >= 0x33) {
		if (func_80084FE8_93F98(idx, 0x800)) {
			alienInstances[arg0].unk2C = 0;
			return 1;
		}
	}
	return 0;
}

void func_802E19EC_325B3C(u8 arg0) {
	u8 typeIndex;
	Unk802E71B8 sp28;
	s32 sp1C[3];

	typeIndex = alienInstances[arg0].typeIndex;
	sp28 = D_802E7188_32B2D8;
	alienInstances[arg0].unk1E = 0;
	func_800A931C_B82CC(((s8 *)&alienInstances[arg0])[0x0D], (s16 *)&sp28, sp1C);
	alienTypes[typeIndex].unk20 = (s16)sp1C[0];
	alienTypes[typeIndex].unk22 = (s16)sp1C[1];
	alienTypes[typeIndex].unk24 = (s16)sp1C[2];
	func_800868A4_95854(arg0, 0, (s16)(-(s32)(u16)D_8014DD50[alienInstances[arg0].unkC].unk6), (s16)(alienInstances[arg0].unkA + (u16)D_8014DD50[alienInstances[arg0].unkC].unkA + 0xFA0));
}

int func_802E1AE4_325C34(u8 arg0, u8 arg1) {
	s16 sp40[3];
	Unk802E71B8 sp38;
	s32 pad0;
	s32 temp_v0_2;
	s32 temp_v1;
	s8 result;

	sp38 = D_802E7190_32B2E0;

	sp40[0] = func_802DFF84_3240D4(arg0);
	sp40[1] = D_8014DD5C[sp40[0]].unk0;
	sp40[2] = alienInstances[arg1].unkC;

	temp_v0_2 = func_800860CC_9507C(alienInstances[arg1].unk0, alienInstances[arg1].unk2, alienInstances[arg1].unk4);

	temp_v1 = temp_v0_2 + 0x1388;
	D_802E70C8_32B218[0].unkA = temp_v0_2 + 0x1770;
	D_802E70C8_32B218[1].unkA = temp_v1;
	D_802E70C8_32B218[3].unkA = temp_v1;
	D_802E70C8_32B218[5].unkA = temp_v1;

	result = func_80081F18_90EC8(arg0, 2, 8, sp40, D_802E7148_32B298);

	if (result == 2 || result == 4 || result == 6) {
		func_802E19EC_325B3C(arg1);
		alienInstances[arg0].unk12 -= 0x280;
	}

	if (result == 8) {
		return 0;
	}
	return 1;
}

int func_802E1C34_325D84(u8 arg0) {
	AlienInstance *inst;
	u8 parentIdx;
	AlienInstance *parent;

	inst = &alienInstances[arg0];
	parentIdx = inst->unk25;
	parent = &alienInstances[alienInstances[parentIdx].unk25];
	inst->unk2C++;

	if (inst->unk2C >= 0x51 || parent->alienIds[2] == 0xFF && inst->unk2C >= 0x33) {
		inst->unk2C = 0;
		return 1;
	}
	return 0;
}

void func_802E1CC0_325E10(u8 arg0) {
	u8 typeIndex;
	Unk802E71B8 sp78;
	s32 sp6C[3];
	s32 sp68;
	s32 sp64;
	s32 sp60;
	f32 sp5C;
	f32 sp58;

	typeIndex = alienInstances[arg0].typeIndex;
	sp78 = D_802E7198_32B2E8;
	alienInstances[arg0].unk1E = 0;
	func_800A931C_B82CC(alienInstances[arg0].unkD, sp78.coordinates, sp6C);
	alienTypes[typeIndex].unk20 = sp6C[0];
	alienTypes[typeIndex].unk22 = sp6C[1];
	alienTypes[typeIndex].unk24 = sp6C[2];
	func_800868A4_95854(arg0, 0, -D_8014DD50[alienInstances[arg0].unkC].unk6Unsigned, alienInstances[arg0].unkA + D_8014DD50[alienInstances[arg0].unkC].unkAUnsigned);
	func_80135D44_144CF4(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 3.0f);
	sp5C = (f32)((f64)(f32)sins((u16)(alienInstances[arg0].unk6 + 0x4000)) / 32768.0);
	sp58 = (f32)-((f64)(f32)coss((u16)(alienInstances[arg0].unk6 + 0x4000)) / 32768.0);
	func_80128428_1373D8(&alienInstances[arg0], alienTypes[typeIndex].unk20, alienTypes[typeIndex].unk22, alienTypes[typeIndex].unk24, &sp68, &sp64, &sp60);
	func_800C541C_D43CC((s16)sp68, (s16)sp64, (s16)sp60, (s8)(s32)(sp5C * 127.0f), 0x28, (s8)(s32)(sp58 * 127.0f), 0x64, 0x4B, 0x0A, 0x06, 0xFF, 0xFF, 0xFF);
	func_80137468_146418(arg0, 0x25C);
}

int func_802E1EFC_32604C(u8 arg0, u8 arg1) {
	s16 params[3];
	s8 result;

	params[0] = func_802DFFC8_324118(arg0);
	params[1] = D_8014DD5C[params[0]].unk0;
	params[2] = alienInstances[arg1].unkC;
	result = func_80082084_91034(arg0, 3, 4, params, D_802E6E20_32AF70);
	if (result == 2) {
		func_802E1CC0_325E10(arg1);
		alienInstances[arg0].unk12 -= 0x280;
	}
	if (result == 4) {
		return 0;
	} else {
		return 1;
	}
}

s32 func_802E1FE0_326130(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];
	AlienInstance *parent = &alienInstances[alien->unk25];

	if (((u32)D_80052A8C % 60U) == 0 || ((u8 *)parent)[0] == 0xFF) {
		alien->unk1E = 20;
		return 1;
	}
	return 0;
}

void func_802E205C_3261AC(u8 arg0) {
	u8 typeIndex;
	s32 output[3];
	s16 root;
	s16 joint;
	Unk802E71B8 first;
	Unk802E71B8 second;

	typeIndex = alienInstances[arg0].typeIndex;
	first = D_802E71A0_32B2F0;
	second = D_802E71A8_32B2F8;
	root = func_802DFF04_324054(arg0);
	joint = D_8014DD5C[root].unk0;
	func_800A931C_B82CC(joint, first.coordinates, output);
	first.coordinates[0] = output[0];
	first.coordinates[1] = output[1];
	first.coordinates[2] = output[2];
	func_800A931C_B82CC(root, first.coordinates, output);
	alienTypes[typeIndex].unk20 = output[0];
	alienTypes[typeIndex].unk22 = output[1];
	alienTypes[typeIndex].unk24 = output[2];
	func_800A931C_B82CC(joint, second.coordinates, output);
	second.coordinates[0] = output[0];
	second.coordinates[1] = output[1];
	second.coordinates[2] = output[2];
	func_800A931C_B82CC(root, second.coordinates, output);
	alienTypes[typeIndex].unk2C = output[0];
	alienTypes[typeIndex].unk2E = output[1];
	alienTypes[typeIndex].unk30 = output[2];
}


void func_802E21C4_326314(u8 arg0) {
	s16 joint[1];
	s32 pad;
	Unk8014DD50 *part;

	joint[0] = D_8014DD5C[func_802DFF04_324054(arg0)].unk0;
	func_802E205C_3261AC(arg0);
	if (func_80086D70_95D20(arg0, 0, func_800870D8_96088(0x80, 0x20) - (part = &D_8014DD50[joint[0]])->unk6Unsigned) != 0) {
		alienInstances[arg0].unk1E = 0;
		func_80086D70_95D20(arg0, 1, func_800870D8_96088(0x80, 0x20) - part->unk6Unsigned);
		func_80137468_146418(arg0, 0x262);
	}
}

s32 func_802E22A4_3263F4(u8 arg0) {
	s16 val;
	s8 result;
	AlienInstance *parentAlien = &alienInstances[alienInstances[arg0].unk25];

	func_802E21C4_326314(arg0);

	if (alienInstances[arg0].unk1E != 0) {
		alienInstances[arg0].unk1E--;
	}

	if (parentAlien->alienIds[0] != 0xFF) {
		val = alienInstances[parentAlien->alienIds[0]].unkC;
		if ((result = func_80081F18_90EC8(arg0, 1, 3, &val, &D_802E7180_32B2D0)) == 2) {
			alienInstances[arg0].unk1E = 100;
		}
		if (result == 3) {
			return 0;
		}
	}

	return 1;
}

void func_802E1630_325780(u8 arg0);
void func_802E19EC_325B3C(u8 arg0);
void func_802E1CC0_325E10(u8 arg0);

void func_802E2390_3264E0(u8 arg0) {
	AlienInstance *parent;
	s16 sp7C[7];
	s8 sp7B;
	s32 temp_s0;

	parent = &alienInstances[alienInstances[arg0].unk25];

	if (parent->alienIds[1] == 0xFF || parent->alienIds[2] == 0xFF) {
		parent->unk20 &= ~ALIEN_FLAG_UNKJ;
		return;
	}

	if (parent->unk20 & ALIEN_FLAG_UNKJ) {
		s32 temp_s3;
		s16 temp_s2;
		s32 temp_s1;

		D_802571B8 = 0;

		sp7C[0] = func_802DFF04_324054(arg0);
		sp7C[1] = D_8014DD50[sp7C[0]].unkC;
		sp7C[2] = D_8014DD50[sp7C[1]].unkC;
		sp7C[3] = D_8014DD50[sp7C[1]].unkD;
		sp7C[4] = D_8014DD50[sp7C[3]].unkC;
		sp7C[5] = D_8014DD50[sp7C[3]].unkD;
		sp7C[6] = D_8014DD50[sp7C[4]].unkC;

		sp7B = func_80081F18_90EC8(arg0, 7, 8, sp7C, D_802E6C18_32AD68);
		if (sp7B == 1) {
			func_80137468_146418(arg0, 0x11);

			if (alienInstances[arg0].unk26 == 0) {
				switch (alienInstances[arg0].unk3C) {
				case 0:
					temp_s3 = (s32)((f64)(f32)sins(alienInstances[arg0].unk6) / 32768.0 * 800.0);
					temp_s1 = (s32)((f64)(f32)coss(alienInstances[arg0].unk6) / 32768.0 * -800.0);
					temp_s0 = alienInstances[arg0].unk0 + temp_s3;
					temp_s1 = alienInstances[arg0].unk4 + temp_s1;
					if (func_802E00D0_324220(temp_s0, temp_s1) != 0) {
						func_800AFB38_BEAE8(temp_s0, temp_s1, 0xC, arg0, 0);
						alienInstances[arg0].unk26++;
					}
					temp_s3 = (s32)((f64)(f32)sins((u16)(alienInstances[arg0].unk6 + 0x8000)) / 32768.0 * 800.0);
					temp_s1 = (s32)((f64)(f32)coss((u16)(alienInstances[arg0].unk6 + 0x8000)) / 32768.0 * -800.0);
					temp_s0 = alienInstances[arg0].unk0 + temp_s3;
					temp_s1 = alienInstances[arg0].unk4 + temp_s1;
					if (func_802E00D0_324220(temp_s0, temp_s1) != 0) {
						func_800AFB38_BEAE8(temp_s0, temp_s1, 0xC, arg0, 0);
						alienInstances[arg0].unk26++;
					}
					alienInstances[arg0].unk3C = 1;
				break;
				case 1:
					for (temp_s2 = 0; temp_s2 < 3; temp_s2++) {
						temp_s3 = (s32)((f64)(f32)sins((u16)(alienInstances[arg0].unk6 + (temp_s2 << 0xD) + 0x2000)) / 32768.0 * 800.0);
						temp_s1 = (s32)((f64)(f32)coss((u16)(alienInstances[arg0].unk6 + (temp_s2 << 0xD) + 0x2000)) / 32768.0 * -800.0);
						temp_s0 = alienInstances[arg0].unk0 + temp_s3;
						temp_s1 = alienInstances[arg0].unk4 + temp_s1;
						if (func_802E00D0_324220(temp_s0, temp_s1) != 0) {
							func_800AFB38_BEAE8(temp_s0, temp_s1, 9, arg0, 0);
							alienInstances[arg0].unk26++;
						}
					}
					alienInstances[arg0].unk3C = 2;
				break;
				case 2:
					for (temp_s2 = 0; temp_s2 < 6; temp_s2++) {
						temp_s0 = (u16)(temp_s2 * 0x2AAA);
					temp_s3 = (s32)((f64)(f32)sins((u16)temp_s0) / 32768.0 * 800.0);
						temp_s1 = (s32)((f64)(f32)coss((u16)temp_s0) / 32768.0 * 800.0);
						temp_s0 = alienInstances[arg0].unk0 + temp_s3;
						temp_s1 = alienInstances[arg0].unk4 + temp_s1;
						if (func_802E00D0_324220(temp_s0, temp_s1) != 0) {
							func_800AFB38_BEAE8(temp_s0, temp_s1, 0xA, arg0, 0);
							alienInstances[arg0].unk26++;
						}
					}
					alienInstances[arg0].unk3C = 0;
				break;
				}
			}
		}

		if (sp7B == 5) {
			if (alienInstances[parent->alienIds[1]].typeIndex == 0x1D) {
				func_802E1630_325780(parent->alienIds[1]);
			} else {
				func_802E1CC0_325E10(parent->alienIds[1]);
			}
			if (alienInstances[parent->alienIds[2]].typeIndex == 0x1E) {
				func_802E1324_325474(parent->alienIds[2]);
			} else {
				func_802E19EC_325B3C(parent->alienIds[2]);
			}
			alienInstances[arg0].unk12 -= 0x280;
		}

		if (sp7B == 8) {
			parent->unk20 &= ~ALIEN_FLAG_UNKJ;
			alienInstances[parent->alienIds[1]].unk20 &= ~ALIEN_FLAG_INVINCIBLE;
			alienInstances[parent->alienIds[2]].unk20 &= ~ALIEN_FLAG_INVINCIBLE;
		}
	} else if (alienInstances[arg0].unk26 == 0 && alienInstances[arg0].unk2C == 0 && !(parent->unk20 & 0x1F000) && func_80084FE8_93F98(arg0, 0x800) != 0 && parent->alienIds[1] != 0xFF && parent->alienIds[2] != 0xFF && (alienInstances[parent->alienIds[1]].typeIndex != 0x1F || (alienInstances[parent->alienIds[1]].unk20 & ALIEN_FLAG_UNKF)) &&
				(alienInstances[parent->alienIds[2]].typeIndex != 0x22 || (alienInstances[parent->alienIds[2]].unk20 & ALIEN_FLAG_UNKF))) {
				parent->unk20 |= ALIEN_FLAG_UNKJ;
				alienInstances[arg0].unk36 = 0;
				alienInstances[arg0].unk2C = (func_800038E0_44E0() % 100) + 100;
				alienInstances[parent->alienIds[1]].unk20 |= ALIEN_FLAG_INVINCIBLE;
				alienInstances[parent->alienIds[2]].unk20 |= ALIEN_FLAG_INVINCIBLE;
	
	} else {
		D_802571B8 = 0x300;
	}

	if (alienInstances[arg0].unk26 == 0) {
		if (alienInstances[arg0].unk2C != 0) {
			alienInstances[arg0].unk2C--;
		}
	}
}


void func_802E2B78_326CC8(u8 arg0) {
	AlienInstance *parent;
	s16 sp3A;
	s16 pad38;
	s32 pad34;
	Unk8014DD50 *root;
	s16 jointIndex;

	sp3A = func_802DFF04_324054(arg0);
	if (D_802571B2 < alienInstances[arg0].hitPoints) {
		alienInstances[arg0].hitPoints = D_802571B2;
	}
	if (D_802E4E80_328FD0 == 0) {
		func_8011C080_12B030(0x71);
		func_8011C080_12B030(0x7A);
		func_8011C080_12B030(0x91);
		func_8011C080_12B030(0x9A);
		D_802E4E80_328FD0 = 1;
		func_80137468_146418(arg0, 0x11);
	}
	if (D_802E7C58 != 0x100) {
		return;
	}
	parent = &alienInstances[alienInstances[arg0].unk25];
	func_800A92E0_B8290(arg0, 0x1000);
	if (alienInstances[arg0].unk12 == 0) {
		func_80137468_146418(arg0, 0x25D);
		func_80137468_146418(arg0, 0x270);
	} else {
		func_80137468_146418(arg0, 0x25E);
		func_80137468_146418(arg0, 0x269);
	}
	func_802E0588_3246D8(arg0);
	func_802E0B64_324CB4(arg0);
	if (func_802E0018_324168(arg0) != 0) {
		alienInstances[arg0].unk47 |= 1;
		func_8007ED9C_8DD4C(arg0);
	}
	func_802E2390_3264E0(arg0);
	if (D_802E6810_32A960 == 0) {
		root = &D_8014DD50[sp3A];
		func_80085E2C_94DDC(arg0, root->unkC, 0x3000);
		jointIndex = root->unkC;
		D_8014DD50[jointIndex].unkA = func_80085A9C_94A4C(D_8014DD50[jointIndex].unkA, func_80085C50_94C00(alienInstances[arg0].unk0, (s16)(alienInstances[arg0].unk2 + D_8014DD50[jointIndex].unk2 + root->unk2), alienInstances[arg0].unk4, D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4), 0x71C, -0x1555, 0x100);
	}
	if (alienInstances[arg0].unk3A >= 3) {
		alienInstances[arg0].unk3A -= 2;
	}
	if (alienInstances[arg0].unk3A < 3 && (parent->unk20 & (ALIEN_FLAG_UNKJ | ALIEN_FLAG_UNKH | ALIEN_FLAG_UNKG | ALIEN_FLAG_UNKF | ALIEN_FLAG_UNKE))) {
		alienInstances[arg0].unk3A = 2;
	}
	if (!(parent->unk20 & ALIEN_FLAG_UNKD)) {
		if (alienInstances[arg0].unk26 != 0) {
			if (func_80084E54_93E04((EntityInstance *)&alienInstances[arg0], (EntityInstance *)D_80052B34) >= 0x7D1) {
				func_8008751C_964CC(arg0, 0x320, 0x3E8);
			} else {
				func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);
				alienInstances[arg0].unk12 = 0;
			}
		} else {
			func_8008751C_964CC(arg0, 0x3E8, 0x578);
		}
		if (alienInstances[arg0].unk26 == 0 && parent->alienIds[1] == 0xFF && (parent->alienIds[0] == 0xFF || !(alienInstances[parent->alienIds[0]].unk20 & ALIEN_FLAG_INVINCIBLE)) && ((func_80085340_942F0(arg0, 0x2000) != 0 && alienInstances[arg0].unk24 == 0 && (func_800038E0_44E0() % 50) == 0) || (alienInstances[arg0].unk47 & 8))) {
			func_802E0234_324384(arg0);
			alienInstances[arg0].unk24 = 0x3C;
		}
		if (alienInstances[arg0].unk24 != 0) {
			alienInstances[arg0].unk24--;
		}
		if (parent->unk20 & ALIEN_FLAG_UNKK) {
			if (func_802E22A4_3263F4(arg0) == 0) {
				parent->unk20 = parent->unk20 & ~ALIEN_FLAG_UNKK;
			}
		}
		if (parent->unk20 & ALIEN_FLAG_UNKE) {
			if (alienInstances[parent->alienIds[1]].typeIndex != 0x1D || func_802E16A8_3257F8(arg0, parent->alienIds[1]) == 0) { parent->unk20 &= ~ALIEN_FLAG_UNKE; }
		}
		if (parent->unk20 & ALIEN_FLAG_UNKF) {
			if (alienInstances[parent->alienIds[2]].typeIndex != 0x1E || func_802E13D4_325524(arg0, parent->alienIds[2]) == 0) { parent->unk20 &= ~ALIEN_FLAG_UNKF; }
		}
		if (parent->unk20 & ALIEN_FLAG_UNKG) {
			if (alienInstances[parent->alienIds[1]].typeIndex != 0x1F || func_802E1EFC_32604C(arg0, parent->alienIds[1]) == 0) { parent->unk20 &= ~ALIEN_FLAG_UNKG; }
		}
		if (parent->unk20 & ALIEN_FLAG_UNKH) {
			if (alienInstances[parent->alienIds[2]].typeIndex != 0x22 || func_802E1AE4_325C34(arg0, parent->alienIds[2]) == 0) { parent->unk20 &= ~ALIEN_FLAG_UNKH; }
		}
	}
	if (!(parent->unk20 & ALIEN_FLAG_UNKJ)) {
		if (parent->alienIds[0] == 0xFF || !(alienInstances[parent->alienIds[0]].unk20 & ALIEN_FLAG_INVINCIBLE)) {
			if (!(parent->unk20 & ALIEN_FLAG_UNKK)) {
				if (func_802E1FE0_326130(arg0) != 0) {
					alienInstances[arg0].unk36 = 0;
					parent->unk20 |= ALIEN_FLAG_UNKK;
				}
			}
		}
		if (alienInstances[parent->alienIds[1]].typeIndex == 0x1D) {
			if (func_802E14F4_325644(parent->alienIds[1]) != 0 && !(parent->unk20 & ALIEN_FLAG_UNKE)) {
				alienInstances[arg0].unk4B = 0;
				parent->unk20 |= ALIEN_FLAG_UNKE;
			}
		}
		if (alienInstances[parent->alienIds[2]].typeIndex == 0x1E) {
			if (func_802E1274_3253C4(parent->alienIds[2]) != 0 && !(parent->unk20 & ALIEN_FLAG_UNKF)) {
				alienInstances[arg0].unk36 = 0;
				alienInstances[parent->alienIds[2]].unk36 = 0;
				parent->unk20 |= ALIEN_FLAG_UNKF;
			}
		}
		if (alienInstances[parent->alienIds[1]].typeIndex == 0x1F) {
			if (func_802E1C34_325D84(parent->alienIds[1]) != 0 && (alienInstances[parent->alienIds[1]].unk20 & ALIEN_FLAG_UNKF) && !(parent->unk20 & ALIEN_FLAG_UNKG)) {
				alienInstances[arg0].unk4B = 0;
				parent->unk20 |= ALIEN_FLAG_UNKG;
			}
		}
		if (alienInstances[parent->alienIds[2]].typeIndex == 0x22) {
			if (func_802E193C_325A8C(parent->alienIds[2]) != 0 && (alienInstances[parent->alienIds[2]].unk20 & ALIEN_FLAG_UNKF) && !(parent->unk20 & ALIEN_FLAG_UNKH)) {
				alienInstances[arg0].unk36 = 0;
				parent->unk20 |= ALIEN_FLAG_UNKH;
			}
		}
	}
}

void func_802E33B0_327500(u8 arg0) {
	u8 pad;
	u8 parentIndex;
	s16 temp_v0;
	s16 temp_v1;
	s32 sp2C[3];
	Unk802E71B8 sp24;

	parentIndex = alienInstances[arg0].unk25;
	sp24 = D_802E71B0_32B300;
	temp_v0 = func_802DFF04_324054(parentIndex);
	temp_v1 = D_8014DD5C[temp_v0].unk0;
	func_800A931C_B82CC(temp_v1, sp24.coordinates, sp2C);
	sp24.coordinates[0] = sp2C[0];
	sp24.coordinates[1] = sp2C[1];
	sp24.coordinates[2] = sp2C[2];
	func_800A931C_B82CC(temp_v0, sp24.coordinates, sp2C);
	sp24.coordinates[0] = sp2C[0];
	sp24.coordinates[1] = sp2C[1];
	sp24.coordinates[2] = sp2C[2];
	sp2C[0] = (s32)((f32)sp2C[0] * D_802E6814_32A964);
	sp2C[1] = (s32)((f32)sp2C[1] * D_802E6814_32A964);
	sp2C[2] = (s32)((f32)sp2C[2] * D_802E6814_32A964);
	func_800A93A4_B8354(arg0, sp2C[0], sp2C[1], sp2C[2]);
	alienInstances[arg0].unkA = D_8014DD50[temp_v0].unkAUnsigned + D_8014DD50[temp_v1].unkAUnsigned + alienInstances[arg0].unkA;
	alienInstances[arg0].unk6 = alienInstances[arg0].unk6 - D_8014DD50[temp_v0].unk6Unsigned - D_8014DD50[temp_v1].unk6Unsigned;
}

void func_802E3550_3276A0(u8 arg0) {
	func_800A93A4_B8354(arg0, -0x3B, 0x117, 0xA9);
}

void func_802E3584_3276D4(u8 arg0, s16 arg1, s16 arg2, Unk802E71B8 *arg3) {
	s16 pad;
	s16 sp34;
	s32 sp2C[3];
	s16 sp20[3];

	sp34 = D_8014DD50[arg2].unkC;

	func_800A931C_B82CC(sp34, arg3->coordinates, sp2C);

	sp20[0] = sp2C[0];
	sp20[1] = sp2C[1];
	sp20[2] = sp2C[2];
	func_800A931C_B82CC(arg2, sp20, sp2C);

	sp20[0] = sp2C[0];
	sp20[1] = sp2C[1];
	sp20[2] = sp2C[2];
	func_800A931C_B82CC(arg1, sp20, sp2C);

	sp20[0] = sp2C[0];
	sp20[1] = sp2C[1];
	sp20[2] = sp2C[2];

	sp2C[0] = (s32)((f32)sp2C[0] * D_802E6814_32A964);
	sp2C[1] = (s32)((f32)sp2C[1] * D_802E6814_32A964);
	sp2C[2] = (s32)((f32)sp2C[2] * D_802E6814_32A964);

	func_800A93A4_B8354(arg0, sp2C[0], sp2C[1], sp2C[2]);

	alienInstances[arg0].unkA = D_8014DD50[arg1].unkAUnsigned + D_8014DD50[arg2].unkAUnsigned + D_8014DD50[sp34].unkAUnsigned + alienInstances[arg0].unkA;
	 alienInstances[arg0].unk6 = alienInstances[arg0].unk6 - D_8014DD50[arg1].unk6Unsigned - D_8014DD50[arg2].unk6Unsigned - D_8014DD50[sp34].unk6Unsigned;
}


void func_802E3744_327894(u8 arg0) {
	Unk802E71B8 sp20;
	s32 temp_v0;
	s16 temp;

	sp20 = D_802E71B8_32B308;
	temp_v0 = func_802DFF04_324054(D_800481BD[arg0][0]);
	temp = D_8014DD50[temp_v0].unkC;
	temp = D_8014DD50[temp].unkD;
	func_802E3584_3276D4(arg0, temp_v0, temp, &sp20);
}


void func_802E37D4_327924(u8 arg0) {
	func_800A93A4_B8354(arg0, -0x96, -0x25, 0xD4);
}

void func_802E3808_327958(u8 arg0) {
	Unk802E71B8 sp20;
	s32 temp_v0;
	s16 temp;

	sp20 = D_802E71C0_32B310;

	temp_v0 = func_802DFF04_324054(D_800481BD[arg0][0]);

	temp = D_8014DD50[temp_v0].unkC;
	temp = D_8014DD50[temp].unkD;
	temp = D_8014DD50[temp].unkD;

	func_802E3584_3276D4(arg0, temp_v0, temp, &sp20);
}


void func_802E38A4_3279F4(u8 arg0) {
	func_800A93A4_B8354(arg0, 0x91, -0x25, 0xBB);
}

void func_802E38D8_327A28(u8 arg0) {
	Unk802E71B8 sp38;
	s32 temp_v0;
	s16 temp;

	sp38 = D_802E71C8_32B318;

	temp_v0 = func_802DFF04_324054(alienInstances[arg0].unk25);

	temp = D_8014DD50[temp_v0].unkC;
	temp = D_8014DD50[temp].unkD;

	func_802E3584_3276D4(arg0, temp_v0, temp, &sp38);

	if (D_802E7C54 < 0x100) {
		func_800C56A4_D4654(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (s16)(D_802E7C54 + 0x64), 0xF, 3, 0x28);
		D_802E7C54 += 2;
	} else if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKF)) {
		alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKF;
		alienInstances[arg0].unk20 &= ~ALIEN_FLAG_INVINCIBLE;
	}

	temp_v0 = func_80011F90_12B90(D_D040F50);
	func_80004214_4E14(D_802E7C54, temp_v0);
}

void func_802E3A18_327B68(u8 arg0) {
	func_800A93A4_B8354(arg0, -0x96, -0x25, 0xD4);
}

void func_802E3A4C_327B9C(u8 arg0) {
	Unk802E71B8 sp70;
	s32 rnd;
	SignedWord startX;
	SignedWord startY;
	SignedWord startZ;
	SignedWord endX;
	SignedWord endY;
	SignedWord endZ;
	s16 angle;
	u8 parentIndex;
	AlienInstance *sp4C;
	f32 sp48;
	s16 lookupIndex;
	s16 coss_val;
	s16 sins_val;

	sp70 = D_802E71D0_32B320;
	parentIndex = alienInstances[arg0].unk25;
	sp4C = &alienInstances[alienInstances[parentIndex].unk25];

	rnd = func_802DFF04_324054(alienInstances[arg0].unk25);
	lookupIndex = D_8014DD50[rnd].unkC;
	lookupIndex = D_8014DD50[lookupIndex].unkD;
	lookupIndex = D_8014DD50[lookupIndex].unkD;
	func_802E3584_3276D4(arg0, rnd, lookupIndex, &sp70);

	if (!(sp4C->unk20 & ALIEN_FLAG_UNKG)) {
		rnd = func_800038E0_44E0();
		rnd %= 8;
		rnd += 8;
		if (!(rnd & D_80052A8C)) {
			angle = func_800038E0_44E0();
			sp48 = D_802E7C50 * (1.0 / 256.0);
			coss_val = coss((u16)angle);
			sins_val = sins((u16)angle);

			func_80128428_1373D8(&alienInstances[arg0],
				(s32)((((f32)coss_val / 32768.0) * 68.0 + 7.0) * sp48),
				(s32)((((f32)sins_val / 32768.0) * 68.0 + -11.0) * sp48),
				(s32)(sp48 * 130.0f), &startX.word, &startY.word, &startZ.word);

			coss_val = coss((u16)angle);
			sins_val = sins((u16)angle);

			func_80128428_1373D8(&alienInstances[arg0],
				(s32)((((f32)coss_val / 32768.0) * 45.0 + 7.0) * sp48),
				(s32)((((f32)sins_val / 32768.0) * 45.0 + -20.0) * sp48),
				(s32)(sp48 * 328.0f), &endX.word, &endY.word, &endZ.word);

			func_800D16BC_E066C(startX.halves.low, startY.halves.low, startZ.halves.low, endX.halves.low, endY.word, endZ.word, 2);
		}
	}

	if (D_802E7C50 < 0x100) {
		func_800C56A4_D4654(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (s16)(D_802E7C50 + 0x64), 0xF, 3, 0x28);
		D_802E7C50 += 2;
	} else {
		if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKF)) {
			alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKF;
			alienInstances[arg0].unk20 &= ~ALIEN_FLAG_INVINCIBLE;
		}
	}

	rnd = func_80011F90_12B90(&D_D040F10);
	func_80004214_4E14(D_802E7C52, rnd);
}

void func_802E3E30_327F80(u8 arg0) {
	func_800A93A4_B8354(arg0, 0x91, -0x25, 0xBB);
}

void func_802E3E64_327FB4(u8 arg0) {
	s16 pad;
	s16 sp94;
	s16 sp84[8];
	s32 temp_v0;
	s8 result;
	s16 pad7C[4];
	AlienInstance *inst;
	s32 pad6C;
	Unk8014DD50 *temp_ptr;
	s32 sp64;
	s32 sp60;
	s32 sp5C;
	f32 sp58;
	s8 sp4C;

	temp_v0 = func_802DFF04_324054(arg0);
	inst = &alienInstances[arg0];
	sp94 = D_8014DD50[temp_v0].unkC;

	if (!(inst->unk20 & ALIEN_FLAG_UNKL)) {
		inst->unk20 &= ~ALIEN_FLAG_UNKD;
		inst->unk2C = 0x12C;
		func_800DF038_EDFE8(inst->unk0, inst->unk2, inst->unk4, alienTypes[inst->typeIndex].unkC, 3, 0);
		D_8014D17C = 0;
		func_80088000_96FB0(arg0);
		D_8013FD78_14ED28->unk3C = 0;
		return;
	}

	func_802E205C_3261AC(arg0);

	if (D_8014D17C == 0 && !(D_80052A8C & 3) && (D_80031420 & 3)) {
		func_80128504_1374B4(inst, 0, &sp64, &sp60, &sp5C);

		temp_ptr = &D_8014DD50[sp94];
		sp58 = (f32)((f64)(f32)sins((u16)-(s32)(u16)temp_ptr->unk6) / 32768.0);
		coss((u16)-(s32)(u16)temp_ptr->unk6);

		sp4C = (s32)(sp58 * 128.0f);
		func_800CA5EC_D959C(
			sp64, sp60, sp5C,
			sp4C, 0x28, sp4C,
			0x28, 6, 8, 0x78,
			0xFF, 0, 0, 0xFF);

		func_80128504_1374B4(inst, 1, &sp64, &sp60, &sp5C);

		func_800CA5EC_D959C(
			sp64, sp60, sp5C,
			sp4C, 0x28, sp4C,
			0x28, 6, 8, 0x78,
			0xFF, 0, 0, 0xFF);
	}

	if (inst->unk2C == 0x10E) {
		inst->unk36 = 0;
		inst->unk20 |= ALIEN_FLAG_UNKD;
	}

	if (inst->unk20 & ALIEN_FLAG_UNKD) {
		temp_v0 = inst->unkC;
		temp_v0 = D_8014DD50[temp_v0].unkC;
		temp_v0 = D_8014DD50[temp_v0].unkD;
		sp84[0] = temp_v0;
		sp84[1] = (u16)func_802DFF04_324054(arg0);
		sp84[2] = D_8014DD50[sp84[1]].unkC;
		sp84[4] = D_8014DD50[sp84[2]].unkD;
		sp84[3] = D_8014DD50[sp84[2]].unkC;
		sp84[6] = D_8014DD50[sp84[4]].unkD;
		sp84[5] = D_8014DD50[sp84[4]].unkC;
		sp84[7] = D_8014DD50[sp84[6]].unkC;

		result = func_80081F18_90EC8(arg0, 8, 9, sp84, D_802E7658_32B7A8);

		if (result == 4) {
			D_8014D17C = 0;
			D_8014D17E = arg0;
			func_80007410_8010(&func_802DF940_323A90);
		}

		if (result == 9) {
			inst->unk20 &= ~ALIEN_FLAG_UNKD;
		}
	}
}

void func_802E4214_328364(u8 arg0) {
	u8 temp = alienInstances[arg0].unk25;
	s16 sp3C;
	u16 angle;
	AlienInstance *sp34;
	s16 cosine;
	s16 sp30;

	sp34 = &alienInstances[alienInstances[temp].unk25];

	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKL)) {
		alienInstances[arg0].unk2C = 2;
		func_800DF038_EDFE8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, alienTypes[alienInstances[arg0].typeIndex].unkC, 3, 0);
		sp3C = func_800C7924_D68D4(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0x40, -8, 0x64, alienTypes[alienInstances[arg0].typeIndex].unk0, 1);

		angle = 0x4000 - alienInstances[arg0].unk6;
		func_800C80F0_D70A0(0x4000 - alienInstances[arg0].unk6, 0, 0, sp3C);

		sp30 = sins((u32)angle);
		cosine = coss((u32)angle);
		func_800C8184_D7134(((f32)sp30 / 32768.0 * 20.0), 0x28, ((f32)cosine / 32768.0 * -20.0), sp3C);
		sp34->alienIds[0] = 0xFF;
	}
}

void func_802E43FC_32854C(u8 arg0, s16 arg1) {
	u8 sp5F;
	s16 params[4];
	s32 pad;
	SignedWord pad4C;
	SignedWord pad48;
	SignedWord pad44;

	sp5F = alienInstances[arg0].unk25;
	func_80085DC8_94D78(sp5F, D_8014DD5C[func_802DFF04_324054(sp5F)].unk0, alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4);
	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKL)) {
		alienInstances[arg0].unk20 &= ~(ALIEN_FLAG_UNKE | ALIEN_FLAG_UNKD);
		alienInstances[arg0].unk36 = 0;
		alienInstances[arg0].unk2C = 100;
		func_800DF038_EDFE8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, alienTypes[alienInstances[arg0].typeIndex].unkC, 3, 0);
		D_802E6810_32A960 = 1;
	}
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKD) {
		s8 temp_v0;

		params[0] = arg1;
		params[1] = D_8014DD5C[arg1].unk0;
		params[2] = func_802DFF04_324054(sp5F);
		params[3] = D_8014DD5C[sp5F].unk0;
		temp_v0 = func_80081F18_90EC8(arg0, 2, 0xE, params, D_802E79F8_32BB48);
		if (temp_v0 == 0xD) {
			alienInstances[arg0].unk20 = (alienInstances[arg0].unk20 | ALIEN_FLAG_UNKE);
			alienInstances[arg0].unk10 = 0x600;
			alienInstances[arg0].unk12 = 0x400;
			alienInstances[arg0].unkE += 0x8000;
			alienInstances[arg0].unk20 = (alienInstances[arg0].unk20 | (ALIEN_FLAG_FALL | ALIEN_FLAG_UNKJ));
		}
		if (temp_v0 == 0xE) {
			alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKD;
		}
	}
	func_80128428_1373D8(&alienInstances[arg0], 0, 0, 100, &pad4C.word, &pad48.word, &pad44.word);
	if (alienInstances[arg0].unk38 != -3) {
		func_800C3D88_D2D38(pad4C.halves.low, pad48.halves.low, pad44.halves.low, alienInstances[arg0].unk38);
	}
	if (alienInstances[arg0].unk2C == 0x50) {
		alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKD;
	} else {
		if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKE) {
			if (alienInstances[arg0].unk20 & ALIEN_FLAG_FALL) {
				alienInstances[arg0].unk2C = 3;
			} else {
				alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKE;
				alienInstances[arg0].unk2C = 2;
			}
		}
	}
	if (alienInstances[arg0].unk2C == 2) {
		func_800C4900_D38B0(alienInstances[arg0].unk38);
		func_800DF038_EDFE8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, alienTypes[alienInstances[arg0].typeIndex].unkC, 3, 0);
		D_802E6810_32A960 = 0;
	}
}

void func_802E46B8_328808(u8 arg0, s32 arg1, s32 arg2) {
	unsigned char new_var3;
	u8 old_unk25;
	AlienInstance *parent;
	u8 new_idx;
	AlienInstance *new_var2;
	AlienInstance *new_inst;

	new_var2 = &alienInstances[arg0];
 old_unk25 = new_var2->unk25;
	new_var3 = arg2;
	new_idx = func_8007956C_8851C(new_var3);
	new_inst = &alienInstances[new_idx];
	new_inst->unk25 = old_unk25;
	parent = &alienInstances[alienInstances[old_unk25].unk25];
 parent->alienIds[arg1 - 1] = new_idx;
	D_80140AB0_14FA60[arg1] = new_inst;
	osSyncPrintf(D_802E7AE4_32BC34, new_idx, arg2);
}

void func_802E4774_3288C4(u8 arg0) {
	u8 sp47;
	AlienInstance *parent;
	Unk802E71B8 sp38;

	sp47 = alienInstances[arg0].unk25;
	sp38 = D_802E7A08_32BB58;
	{
	parent = &alienInstances[alienInstances[sp47].unk25];
	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKL)) {
		parent->unk20 &= ~ALIEN_FLAG_UNKF;
		parent->alienIds[2] = 0xFF;
		alienInstances[arg0].unk38 = func_800C3BD8_D2B88(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0xC8, 0xFFFF, 0xF0, 0x78, 0);
	}
	}
	{
	s16 temp_v0;
	s16 var_a2;
	temp_v0 = func_802DFF04_324054(sp47);
	var_a2 = D_8014DD50[temp_v0].unkC;
	var_a2 = D_8014DD50[var_a2].unkD;

	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKE) && alienInstances[arg0].unk2C >= 3) {
		func_802E3584_3276D4(arg0, temp_v0, var_a2, &sp38);
	}
	func_802E43FC_32854C(arg0, var_a2);
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKE) {
		alienInstances[arg0].unkA += 0xBB8;
		alienInstances[arg0].unk8 += 0x3E8;
	}
	if (alienInstances[arg0].unk2C == 2) {
		D_802E7C54 = 2;
		func_802E46B8_328808(arg0, 3, 0x22);
	}
	}
}

void func_802E4918_328A68(u8 arg0) {
	u8 sp47;
	AlienInstance *parent;
	Unk802E71B8 sp38;

	sp47 = alienInstances[arg0].unk25;
	sp38 = D_802E7A10_32BB60;
	{
	parent = &alienInstances[alienInstances[sp47].unk25];
	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKL)) {
		parent->unk20 &= ~ALIEN_FLAG_UNKE;
		parent->alienIds[1] = 0xFF;
		alienInstances[arg0].unk38 = func_800C3BD8_D2B88(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0xC8, 0xFFFF, 0xF0, 0x78, 0);
	}
	}
	{
	s16 temp_v0;
	s16 var_a2;
	temp_v0 = func_802DFF04_324054(sp47);
	var_a2 = D_8014DD50[temp_v0].unkC;
	var_a2 = D_8014DD50[var_a2].unkD;
	var_a2 = D_8014DD50[var_a2].unkD;
	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKE) && alienInstances[arg0].unk2C >= 3) {
		func_802E3584_3276D4(arg0, temp_v0, var_a2, &sp38);
	}
	func_802E43FC_32854C(arg0, var_a2);
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKE) {
		alienInstances[arg0].unkA += 0xBB8;
		alienInstances[arg0].unk8 += 0x3E8;
	}
	if (alienInstances[arg0].unk2C == 2) {
		D_802E7C50 = 2;
		func_802E46B8_328808(arg0, 2, 0x1F);
	}
	}
}

void func_802E4ACC_328C1C(u8 arg0) {
	u8 sp47;
	AlienInstance *parent;
	Unk802E71B8 sp38;

	sp47 = alienInstances[arg0].unk25;
	sp38 = D_802E7A18_32BB68;
	{
	parent = &alienInstances[alienInstances[sp47].unk25];

	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKL)) {
		parent->unk20 &= ~ALIEN_FLAG_UNKH;
		parent->alienIds[2] = 0xFF;
		alienInstances[arg0].unk38 = func_800C3BD8_D2B88(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0xC8, 0xFFFF, 0xF0, 0x78, 0);
		if (parent->unk20 & ALIEN_FLAG_UNKI) {
			alienInstances[parent->alienIds[0]].unk20 &= ~ALIEN_FLAG_INVINCIBLE;
		}
		parent->unk20 |= ALIEN_FLAG_UNKI;
	}

	}
	{
	s16 temp_v0;
	s16 var_a2;
	temp_v0 = func_802DFF04_324054(sp47);
	var_a2 = D_8014DD50[temp_v0].unkC;

	var_a2 = D_8014DD50[var_a2].unkD;


	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKE) && alienInstances[arg0].unk2C >= 3) {
		func_802E3584_3276D4(arg0, temp_v0, var_a2, &sp38);
 
	}

	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKE) {
		 alienInstances[arg0].unkA += 0xBB8;
		 alienInstances[arg0].unk8 += 0x3E8;
	}
	func_802E43FC_32854C(arg0, var_a2);
	}
}

void func_802E4CB4_328E04(u8 arg0) {
	u8 sp47;
	AlienInstance *parent;
	Unk802E71B8 sp38;

	sp47 = alienInstances[arg0].unk25;
	sp38 = D_802E7A20_32BB70;
	{
	parent = &alienInstances[alienInstances[sp47].unk25];

	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKL)) {
		parent->alienIds[1] = 0xFF;
		parent->unk20 &= ~ALIEN_FLAG_UNKG;
		alienInstances[arg0].unk38 = func_800C3BD8_D2B88(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0xC8, 0xFFFF, 0x4C, 0xA9, 0xF5);
		if (parent->unk20 & ALIEN_FLAG_UNKI) {
			alienInstances[parent->alienIds[0]].unk20 &= ~ALIEN_FLAG_INVINCIBLE;
		}
		parent->unk20 |= ALIEN_FLAG_UNKI;
	}

	}
	{
	s16 temp_v0;
	s16 var_a2;
	temp_v0 = func_802DFF04_324054(sp47);
	var_a2 = D_8014DD50[temp_v0].unkC;

	var_a2 = D_8014DD50[var_a2].unkD;
	var_a2 = D_8014DD50[var_a2].unkD;

	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKE) && alienInstances[arg0].unk2C >= 3) {
		func_802E3584_3276D4(arg0, temp_v0, var_a2, &sp38);
 
	}

	func_802E43FC_32854C(arg0, var_a2);
	}
}
