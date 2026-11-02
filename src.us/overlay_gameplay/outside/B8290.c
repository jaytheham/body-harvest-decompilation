#include <ultra64.h>
#include "common.h"
#include "version_shift.h"



/* Keep the death-effect literal pool before the human AI pool in B8290_tail.c. */

const ShadowGeometryConstant D_80142900_1518B0 = {0.9};


s32 D_8013D8C0_14C870[6] = { 0x00000000, 0x00000258, 0x00000258, 0x00000320, 0x00000320, 0x00000258 };
u32 D_8013D8D8_14C888[6] = { 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 };

Vec2_S16 D_8013D8F0_14C8A0[] = {
	{-0x0100, -0x0100}, {0x0000, -0x0100}, {0x0100, -0x0100}, {0x0100, 0x0000},
	{0x0100, 0x0100}, {0x0000, 0x0100}, {-0x0100, 0x0100}, {-0x0100, 0x0000},
};

s32 D_8013D910_14C8C0[3] = { 0, 0, 0 };
Unk_8013D91C D_8013D91C[6] = {
	{ 0x0000, 0x0000 },
	{ 0x0000, 0x0258 },
	{ 0x0000, 0x0258 },
	{ 0x0000, 0x0320 },
	{ 0x0000, 0x0320 },
	{ 0x0000, 0x0258 },
};

// AI - Clear global if flag match
void func_800A92E0_B8290(u8 arg0, s32 arg1) {
	if ((alienInstances[arg0].unk20 & arg1) == arg1) {
		D_80140AC4_14FA74 = 0;
	}
}

// AI - Add type position offsets
void func_800A931C_B82CC(s8 arg0, s16 *arg1, s32 *arg2) {
	func_800044D4_50D4(arg1, arg2, &D_8014DD50[(s32)arg0].unk6);
	arg2[0] += D_8014DD50[(s32)arg0].unk0;
	arg2[1] += D_8014DD50[(s32)arg0].unk2;
	arg2[2] += D_8014DD50[(s32)arg0].unk4;
}

// AI - Position child relative to parent with rotation
void func_800A93A4_B8354(u8 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s16 rotX;
	s16 temp;
	s16 rotY;
	s16 trig0;
	s16 trig1;
	s16 offA;
	s16 offB;
	s16 offC;
	u8 parentIndex;
	AlienInstance *parent;

	parentIndex = alienInstances[arg0].unk25;
	parent = &alienInstances[parentIndex];
	if ((parent->unk20 << 11) < 0) {
		func_80088760_97710(&alienInstances[arg0]);
	}

	rotX = parent->unk6;
	temp = parent->unkA;
	rotY = parent->unk8;

	alienInstances[arg0].unk0 = parent->unk0;
	alienInstances[arg0].unk2 = parent->unk2;
	alienInstances[arg0].unk4 = parent->unk4;
	alienInstances[arg0].unkE = parent->unkE;
	alienInstances[arg0].unk6 = rotX;
	alienInstances[arg0].unkA = temp;
	alienInstances[arg0].unk8 = rotY;

	trig0 = coss(temp);
	trig1 = sins(temp);
	offA = (s32)((arg2 * ((f32)trig0 / 32768.0)) - (((f32)trig1 / 32768.0) * arg3));

	trig0 = sins(temp);
	trig1 = coss(temp);
	offB = (s32)((((f32)trig1 / 32768.0) * arg3) + (arg3 * ((f32)trig0 / 32768.0)));

	temp = arg1;
	trig0 = coss(rotY);
	trig1 = sins(rotY);
	offC = (s32)((temp * ((f32)trig0 / 32768.0)) - (((f32)trig1 / 32768.0) * offA));

	trig0 = sins(rotY);
	trig1 = coss(rotY);
	alienInstances[arg0].unk2 += (s16)(s32)((((f32)trig1 / 32768.0) * offA) + (temp * ((f32)trig0 / 32768.0)));

	trig0 = coss(rotX);
	trig1 = sins(rotX);
	alienInstances[arg0].unk0 = (s32)(alienInstances[arg0].unk0 + ((offC * ((f32)trig1 / 32768.0)) + (offB * ((f32)trig0 / 32768.0))));

	trig0 = sins(rotX);
	trig1 = coss(rotX);
	alienInstances[arg0].unk4 = (s32)(alienInstances[arg0].unk4 + (((-offC) * ((f32)trig1 / 32768.0)) + (offB * ((f32)trig0 / 32768.0))));
}
// AI - Propagate flag set to squad
void func_800A9738_B86E8(u8 arg0, s32 arg1)
{
	AlienInstance *a;
	s32 i, idx;
	alienInstances[arg0].unk20 |= arg1;
	a = &alienInstances[alienInstances[arg0].unk25];
	for (i = 0; i < 4; i++)
	{
		idx = a->alienIds[i];
		if (alienInstances[idx].typeIndex != 0)
		{
			alienInstances[idx].unk20 |= arg1;
		}
	}
}

// https://decomp.me/scratch/I9lkq
// AI - Propagate flag clear to squad
void func_800A9820_B87D0(u8 arg0, s32 arg1)
{
	AlienInstance *a;
	s32 i, idx;
	alienInstances[arg0].unk20 &= ~arg1;
	a = &alienInstances[alienInstances[arg0].unk25];
	for (i = 0; i < 4; i++)
	{
		idx = a->alienIds[i];
		if (alienInstances[idx].typeIndex != 0)
		{
			alienInstances[idx].unk20 &= ~arg1;
		}
	}
}

// AI - Navigate zone hierarchy
void func_800A9908_B88B8(u8 arg0, s32 arg1) {
	s16 sp38[4];
	s32 sp30;
	s32 sp34;
	s32 sp3C;

	sp38[0] = D_8014DD50[alienInstances[arg0].unkC].unkC;
	sp38[1] = D_8014DD50[sp38[0]].unkC;
	sp38[2] = D_8014DD50[sp38[0]].unkD;
	sp38[3] = D_8014DD50[sp38[2]].unkC;
	if (func_80081F18_90EC8(arg0, 4, 3, sp38, arg1) == 3) {
		alienInstances[arg0].unk36 = 0;
	}
}

// AI - Rotate to face player
void func_800A99B8_B8968(u8 arg0)
{
  int new_var;
  int new_var2;
  s16 step;
  step = alienTypes[alienInstances[arg0].typeIndex].unk42;
  new_var = D_80052B34->unk0 - alienInstances[arg0].unk0;
  new_var2 = D_80052B34->unk4 - alienInstances[arg0].unk4;
  new_var = func_80003824_4424(new_var, new_var2);
  if (-step >= (s16)(new_var - alienInstances[arg0].unk6))
  {
	alienInstances[arg0].unk6 -= step;
  }
  else if (step < (s16)(new_var - alienInstances[arg0].unk6))
	{
	  alienInstances[arg0].unk6 += step;
	} 
}

s32 func_800A9A90_B8A40(u8 arg0, s32 arg1, f32 arg2) {
	u8 typeIndex;
	s32 hpDelta;
	s32 i;
	AlienInstance *parent;

	typeIndex = alienInstances[arg0].typeIndex;
	parent = &alienInstances[alienInstances[arg0].unk25];

	if ((u32)D_80052A8C % 100 == 0) {
		hpDelta = D_8013D8D8_14C888[0] - alienInstances[arg0].hitPoints;

		for (i = 1; i < arg1; i++) {
			if (parent->alienIds[i - 1] != 0xFF) {
				hpDelta = (hpDelta + D_8013D8D8_14C888[i]) - alienInstances[parent->alienIds[i - 1]].hitPoints;
			}
		}

		D_8013D8D8_14C888[0] = alienInstances[arg0].hitPoints;

		for (i = 1; i < arg1; i++) {
			if (parent->alienIds[i - 1] != 0xFF) {
				D_8013D8D8_14C888[i] = alienInstances[parent->alienIds[i - 1]].hitPoints;
			}
		}

		if (((f32)alienTypes[typeIndex].unk3A * arg2) < (f32)hpDelta) {
			return 1;
		}
	}
	return 0;
}

// AI - Clear teleport flags callback
void func_800A9DC0_B8D70(func_800A9DC0_B8D70_arg *arg0) {
	s32 idx = arg0->unk8;
	AlienInstance *temp2 = &alienInstances[alienInstances[idx].unk25];
	AlienInstance *temp = &alienInstances[idx];
	
	temp2->unk20 &= ~ALIEN_FLAG_UNKH;
	temp->unk20 &= ~(ALIEN_FLAG_UNKO | ALIEN_FLAG_INVINCIBLE);
}

// AI - Teleport alien to position
void func_800A9E1C_B8DCC(Unk80222A78 *arg0)
{
  u8 alienIdx;
	u8 temp;
  AlienInstance *alien;
  s32 x;
  s32 z;
  s32 a1, a2;
  alienIdx = arg0->unk8;
  alien = &alienInstances[alienIdx];
  x = (arg0->unk1 << 8) + 0x80;
  z = (arg0->unk2 << 8) + 0x80;
  alien->unk0 = x;
  alien->unk4 = z;
  alien->unk2 += 0x8000;
  alien->unk20 |= ALIEN_FLAG_UNKO;
  if (alien->unk20 & ALIEN_FLAG_UNKK)
  {
	temp = alien->unk20 & 7;
	func_800F2D48_101CF8(temp, x, z);
  }
  arg0->unk4 += 9;
  arg0->unkC = func_800A9DC0_B8D70;
  func_800AE454_BD404(arg0);
	a1 = D_80052B34->unk0 - alien->unk0;
	a2 = D_80052B34->unk4 - alien->unk4;
  alien->unkE = func_80003824_4424(a1, a2);
}

// AI - Detect stuck and teleport
s32 func_800A9F34_B8EE4(u8 arg0) {
	AlienInstance *alien;
	u8 parentIndex;
	Unk80222A78 callback;
	s32 x;
	s32 z;
	s32 rndX;
	s32 rndZ;
	s32 absDx;
	s32 lateral;
	s32 dx;
	s32 terrainHeight;
	s32 dz;
	s32 angle;
	s32 effectY;

	alien = &alienInstances[arg0];
	parentIndex = alien->unk25;
	if (!(alienInstances[parentIndex].unk20 & ALIEN_FLAG_UNKH)) {

		x = alien->unk0;
		z = alien->unk4;
		rndX = alienInstances[parentIndex].unk24Signed + (func_800038E0_44E0() % 1000) - 1000;
		rndZ = alienInstances[parentIndex].unk26Signed + (func_800038E0_44E0() % 1000) - 1000;

		dx = x - rndX;
		angle = -dx;
		absDx = angle < dx ? dx : angle;

		dz = z - rndZ;
		angle = -dz;
		lateral = angle < dz ? dz : angle;

		sqrtf((f32)((absDx * absDx) + (lateral * lateral)));

		if (alien->unk12 >= 0) {
			absDx = (s32)(((f32)sins((u16)(alien->unk6 - 0x4000)) / 32768.0) * 256.0);
			lateral = (s32)(((f32)coss((u16)(alien->unk6 - 0x4000)) / 32768.0) * -256.0);
		} else {
			absDx = (s32)(((f32)sins((u16)(alien->unk6 + 0x4000)) / 32768.0) * 256.0);
			lateral = (s32)(((f32)coss((u16)(alien->unk6 + 0x4000)) / 32768.0) * -256.0);
		}

		terrainHeight = func_800B84D0_C7480(alien->unk0 - absDx, alien->unk4 - lateral) >> 8;
		if (terrainHeight > ((func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8) + 5)) {
			alienInstances[parentIndex].unk20 |= ALIEN_FLAG_UNKH;
			alien->unk12 = 0;
			if (1) {
				alien->unk20 |= ALIEN_FLAG_INVINCIBLE;

				callback.unk1 = rndX >> 8;
				callback.unk2 = rndZ >> 8;
				callback.unk8 = arg0;
				callback.unk0 = 2;
				callback.unk4 = D_8014F820 + 8;
				callback.unkC = func_800A9E1C_B8DCC;
				func_800AE454_BD404(&callback);
			}

			func_800CF80C_DE7BC(alien->unk0, alien->unk2, alien->unk4, ((SignedWord *)D_8013D8C0_14C870)[currentLevel + 1].halves.low, 0xA0, 0xFF, 0, 3);

			x = (s16)rndX;
			z = (s16)rndZ;
			effectY = func_800B84D0_C7480(x, z) >> (alienTypes[27].unk58 + 8);
			func_800CF80C_DE7BC(x, effectY, z, ((SignedWord *)D_8013D8C0_14C870)[currentLevel + 1].halves.low, 0xA0, 0xFF, 0, 2);
			return 1;
		}

	}
	return 0;
}

// CURRENT(2251)


void func_800AA340_B92F0(u8 arg0) {
	s16 outer;
	s16 phase;
	AlienInstance *alien;
	s32 phaseOffset;
	s16 beamLength;
	u16 sampleX;
	u16 sampleY;
	u16 sampleZ;
	f32 volume;
	s16 width;
	u16 angle;
	s32 height;
	s32 randomX;
	s32 randomY;
	s32 randomZ;
	s32 halfWidth;
	s32 halfHeight;
	s32 halfDepth;
	s32 depth;
	s16 segment;
	u8 beamCount;
	u8 segmentCount;
	s16 beamHeight;
	u8 emitDebris;
	s32 previousY;
	s32 previousZ;
	emitDebris = 0;
	D_80031414 = 1;
	func_80089200_981B0(arg0, 2, 300);
	alien = &alienInstances[arg0];
	phase = alien->unk2C;
	if (phase >= 81)
	{
		if (phase >= 131)
		{
			beamCount = 1;
			segmentCount = 6;
			beamHeight = ((-phase) * 4) + 680;
			alien->unkA = (s32) ((((f32) coss(D_80052A8C * 20000)) / 32768.0) * 200.0);
			if ((func_800038E0_44E0() % (-4)) == 0)
			{
				emitDebris = 1;
			}
		}
		else
			if ((phase < 131) && (phase >= 91))
		{
			beamCount = 2;
			segmentCount = 4;
			beamHeight = ((-phase) * 4) + 680;
			alien->unkA = (s32) ((((f32) coss(D_80052A8C * 20000)) / 32768.0) * 400.0);
			if ((func_800038E0_44E0() % (-2)) == 0)
			{
				emitDebris = 1;
			}
		}
		else
		{
			beamCount = 4;
			segmentCount = 3;
			beamHeight = 320;
			alien->unkA = (s32) ((((f32) coss(D_80052A8C * 20000)) / 32768.0) * 800.0);
			emitDebris = 1;
		}
		if (emitDebris)
		{
			width = alienTypes[27].unk34 - 200;
			depth = (s16) (alienTypes[27].unk36 - 200);
			height = (s16) (alienTypes[27].unk38 - 200);
			sampleX = (u16) func_800038E0_44E0();
			sampleY = (u16) func_800038E0_44E0();
			sampleZ = (u16) func_800038E0_44E0();
			halfWidth = width >> 1;
			halfHeight = height >> 1;
			halfDepth = depth >> 1;
			emitDebris = func_800DDB60_ECB10(((sampleX % width) + alien->unk0) - halfWidth, ((sampleY % height) + alien->unk2) - halfHeight, ((sampleZ % depth) + alien->unk4) - halfDepth, 7, (func_800038E0_44E0() % 300) + 200);
			func_800DDE1C_ECDCC_S32(emitDebris, 255);
			func_800DDEE0_ECE90(emitDebris, 1);
			func_801371B8_146168(0, 232, alien->unk0, alien->unk2, alien->unk4, (f32) ((((f32) (func_800038E0_44E0() % 100)) / 500.0f) + D_80142900_1518B0.value));
			sampleX = (u16) func_800038E0_44E0();
			sampleY = (u16) func_800038E0_44E0();
			sampleZ = (u16) func_800038E0_44E0();
			func_800DFA34_EE9E4(((sampleX % width) + alien->unk0) - halfWidth, ((sampleY % height) + alien->unk2) - halfHeight, ((sampleZ % depth) + alien->unk4) - halfDepth, (u16) ((func_800038E0_44E0() % 50) + 30), 0);
			func_800E35E0_F2590(120);
		}
		outer = 0;
		if (beamCount > 0)
		{
			do
			{
				segment = 1;
				halfDepth = alien->unk0;
				previousY = alien->unk2 + 100;
				previousZ = alien->unk4;
				beamLength = (s16) (((s16) ((func_800038E0_44E0() % 500) + 500)) / segmentCount);
				switch (beamCount)
				{
					case 1:
						angle = func_800038E0_44E0() % 65536;
						break;

					case 2:
						phaseOffset = (u16) (D_80052A8C * 12800);
						angle = ((alien->unk6 + (outer * ((s16) (65536 / beamCount)))) + phaseOffset) + 0x4000;
						break;

					case 4:
						phaseOffset = (u16) (D_80052A8C * 6400);
						angle = ((alien->unk6 + (outer * ((s16) (65536 / beamCount)))) + phaseOffset) + 0x4000;
						break;

				}

				phaseOffset = ((f64) beamLength) + ((f64) beamHeight);
				if ((segmentCount + 1) >= 2)
				{
					halfHeight = (s16) (32768 / segmentCount);
					do
					{
						randomY = alien->unk0;
						randomZ = alien->unk4;
						randomX = func_800B84D0_C7480(randomY, randomZ) >> 8;
						randomY += ((((f32) sins(angle)) / 32768.0) * beamLength) * segment;
						randomZ += ((-(((f32) coss(angle)) / 32768.0)) * beamLength) * segment;
						randomX += (((f32) sins((u16) (segment * halfHeight))) / 32768.0) * beamHeight;
						func_800D16BC_E066C(randomY, randomX, randomZ, halfDepth, previousY, previousZ, 1);
						halfDepth = randomY;
						previousY = randomX;
						previousZ = randomZ;
						segment++;
					}
					while (segment < (segmentCount + 1));
				}
				outer++;
			}
			while (outer < beamCount);
		}
	}
	else
	{
		if (phase == 80)
		{
			func_800DF848_EE7F8(alienInstances[arg0].unk0, alien->unk2, alien->unk4, alienTypes[27].unkC, 0);
			func_800E35E0_F2590(255);
			func_800C3BD8_D2B88(alien->unk0, alien->unk2, alien->unk4, (u16) (alienTypes[27].unkC * 1.5), 80, 240, 120, 0);
			phase = alien->unk2C;
		}
		if ((phase >= 41) && (phase < 70))
		{
			volume = 1.2f;
			angle = (phase * 5000) - 400000;
			for (outer = 0; outer < 2; outer++)
			{
				randomY = alien->unk0;
				randomZ = alien->unk4;
				func_800B84D0_C7480(randomY, randomZ);
				randomY += ((((f32) sins(angle)) / 32768.0) * (alien->unk2C - 80)) * 30.0;
				randomZ += ((-(((f32) coss(angle)) / 32768.0)) * (alien->unk2C - 80)) * 30.0;
				func_801371B8_146168(0, 232, alien->unk0, alien->unk2, alien->unk4, volume);
				func_800DFA34_EE9E4(randomY, func_800B84D0_C7480(randomY, randomZ) >> 8, randomZ, 76, 0);
				angle += 2500;
			}

			phase = alien->unk2C;
		}
		if ((phase < 40) && (((phase % 10) == 0) || (phase == 1)))
		{
			depth = func_800038E0_44E0() % 400;
			depth += alien->unk0;
			depth -= 200;
			halfWidth = alien->unk2;
			height = ((func_800038E0_44E0() % 400) + alien->unk4) - 200;
			sampleZ = (u16) func_800038E0_44E0();
			func_800D16BC_E066C(depth, halfWidth, height, ((sampleZ % 2000) + depth) - 1000, 3000, ((func_800038E0_44E0() % 2000) + height) - 1000, 5);
			if (alien->unk2C == 1)
			{
				func_800DF848_EE7F8(depth, halfWidth, height, (u16) (alienTypes[27].unkC * 2), 8);
				func_800B8D80_C7D30(depth, height, 1, 2);
				func_800BED24_CDCD4();
			}
			else
			{
				func_800DF848_EE7F8(depth, halfWidth, height, alienTypes[27].unkC, 8);
			}
			func_800E35E0_F2590(255);
		}
		phase = alien->unkA;
		if (phase < 3000)
		{
			alien->unkA = phase + 50;
		}
	}
}
