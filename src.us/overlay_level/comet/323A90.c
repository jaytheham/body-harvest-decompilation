#include <ultra64.h>
#include "common.h"
#include "version_shift.h"

const f64 D_802E7B90_32BCE0[] = { 1000.0 };

void func_802DF940_323A90(void) {
	s32 randomYaw;
	s32 randomPitch;
	s32 x;
	s32 y;
	s32 z;
	s32 newAlienIndex;
	s32 yaw;
	s32 pitch;
	s32 spawnResult;
	s16 shortX;
	s16 shortY;
	s16 shortZ;
	s16 yawCos;
	s16 pitchSin;
	s16 pitchCos;
	s16 yawSin;

	x = alienInstances[D_8014D17E].unk0;
	y = alienInstances[D_8014D17E].unk2;
	z = alienInstances[D_8014D17E].unk4;
	if (D_8014D17C == 0) {
		D_802E7C58 = 0x100;
		D_802E7C6C = func_800D0DE4_DFD94((s16)x, (s16)y, (s16)z, 0xC800, 0, 0xFF, 0x6E);
		func_801371B8_146168(0, 0x18A, (s16)x, (s16)y, (s32)(s16)z, -1.0f);
	} else {
		if (D_8014D17C < 0x39) {
			D_802E7C58 -= 4;
			func_802DF188_3232D8();
			func_80137468_146418(D_8014D17E, 0x260);
			func_800D0FE0_DFF90(D_802E7C6C, (s32)(D_802E7C58 * 0xC8) / 25);
			shortX = (s16)x;
			shortY = (s16)y;
			shortZ = (s16)z;
			func_800D0F5C_DFF0C(D_802E7C6C, shortX, shortY, shortZ);
			randomYaw = func_800038E0_44E0();
			randomPitch = func_800038E0_44E0() >> 1;
			yaw = randomYaw;
			yawSin = sins(yaw);
			pitch = randomPitch;
			pitchCos = coss(pitch);
			pitchSin = sins(pitch);
			yawCos = coss(yaw);
			func_800D16BC_E066C(shortX, shortY, shortZ, (s16)((f32)pitchCos / 32768.0 * (1000.0 * ((f32)yawSin / 32768.0)) + x), (s32)(((f32)pitchSin / 32768.0) * 1000.0 + y), (s32)(((f32)coss(pitch) / 32768.0) * (1000.0 * ((f32)yawCos / 32768.0)) + z), 1);
		} else if (D_8014D17C == 0x39) {
			spawnResult = func_8007956C_8851C(0x12);
			newAlienIndex = spawnResult;
			if (spawnResult != 0xFF) {
				shortX = (s16)x;
				shortZ = (s16)z;
				osSyncPrintf(&D_802E7AB0_32BC00, y, func_800B84D0_C7480(shortX, shortZ) >> 8);
				alienInstances[newAlienIndex].unk0 = x;
				alienInstances[newAlienIndex].unk2 = y;
				alienInstances[newAlienIndex].unk4 = z;
				alienInstances[newAlienIndex].unk2E = x;
				alienInstances[newAlienIndex].unk30 = y;
				alienInstances[newAlienIndex].unk32 = z;
				alienInstances[newAlienIndex].unk24 = 5;
				alienInstances[newAlienIndex].unk20 = ALIEN_FLAG_FALL;
				alienInstances[newAlienIndex].unk6 = alienInstances[D_8014D17E].unk6;
				func_800D1054_E0004(D_802E7C6C);
				func_800E35E0_F2590(0xFF);
				shortY = (s16)y;
				func_800DEA08_ED9B8(shortX, shortY, shortZ, 0xC8, 8, 4, 0x3C, 0xD2, 0xFF, 0xFF, 0xFF);
				func_800C541C_D43CC(shortX, shortY, shortZ, 0, -0x80, 0, 0x50, 0xFF, 0x14, 6, 0xFF, 0xFF, 0xFF);
				func_800074BC_80BC(&func_802DF940_323A90);
				func_80079910_888C0(D_8014D17E);
				func_8007A2A0_89250(newAlienIndex);
				D_8014D17E = (s16)newAlienIndex;
			}
		}
	}
	D_8014D17C++;
}


void func_802DFE68_323FB8() {
	AlienInstance *inst;
	s32 alien_index;

	func_80088000_96FB0(-1);
	func_800AE2C0_BD270();
	alien_index = func_8007956C_8851C(0x12);
	if (alien_index != 0xFF) {
		inst = &alienInstances[alien_index];
		inst->unk0 = -0x2AD8;
		inst->unk2 = 0;
		inst->unk4 = 0;
		inst->unk20 |= (ALIEN_FLAG_PLAYER | ALIEN_FLAG_TARGET_PT);
		inst->unk24 = 2;
		inst->unkE = 0;
		D_8014D17E = alien_index;
	}
	D_8014D17C = 0;
	func_80007410_8010(&func_802DF290_3233E0);
}

s16 func_802DFF04_324054(u8 arg0) {
	s8 chain;

	chain = D_8014DD50[alienInstances[arg0].unkC].unkC;
	chain = D_8014DD50[chain].unkD;
	chain = D_8014DD50[chain].unkD;
	chain = D_8014DD50[chain].unkD;
	chain = D_8014DD50[chain].unkD;
	chain = D_8014DD50[chain].unkD;
	return D_8014DD50[chain].unkD;
}

// AI - Walks D_8014DD50 to the tip of the alien chain and returns that entry's unkD.
s16 func_802DFF84_3240D4(u8 arg0) {
	s32 chain;

	chain = func_802DFF04_324054(arg0);
	chain = D_8014DD50[chain].unkC;
	return D_8014DD50[chain].unkD;
}

s16 func_802DFFC8_324118(u8 arg0) {
	s32 chain;

	chain = func_802DFF04_324054(arg0);
	chain = D_8014DD50[chain].unkC;
	chain = D_8014DD50[chain].unkD;
	return D_8014DD50[chain].unkD;
}

s32 func_802E0018_324168(u8 arg0) {
	AlienInstance *inst;
	s16 val;

	inst = &alienInstances[arg0];
	val = inst->unk0;
	if (val < -0x2C00) {
		func_8007E734_8D6E4(inst, 0x4000);
		return 1;
	}
	if (val >= -0x1EFF) {
		func_8007E734_8D6E4(inst, -0x4000);
		return 1;
	}
	val = inst->unk4;
	if (val < -0xD00) {
		func_8007E734_8D6E4(inst, -0x8000);
		return 1;
	}
	if (val >= 0xE01) {
		func_8007E734_8D6E4(inst, 0);
		return 1;
	}
	return 0;
}
