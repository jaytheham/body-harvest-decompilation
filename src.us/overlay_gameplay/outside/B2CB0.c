#include <ultra64.h>
#include "common.h"

u8 D_8013D778_14C730[0x8] = {
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

void func_800A3D00_B2CB0(u8 arg0, s16 arg1, s16 arg2, s32 arg3) {
	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKG)) {
		return;
	}

	func_80081E5C_90E0C(arg1);
	if (D_8014DD50[arg1].unkE == 0) {
		if (arg2 == alienInstances[arg0].unk4B) {
			alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKG;
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
		
		if (alien->typeIndex == ALIEN_TYPE_HARVESTER) {
			if (alien->unk3C != 0) {
				alien->unk3C = (s8) (alien->unk3C - 1);
				osSyncPrintf("Found parent %d\n", temp_a2);
				return temp_a2;
			}
		}
	}
	return 0xFF;
}

// Spawn child alien of arg0 alien instance. Returns 1 if successful, 0 if not.
s32 func_800A3E74_B2E24(u8 parentIndex)
{
	AlienInstance *parent;
	u8 pad;
	u8 childIndex;
	s32 childType;
	s32 dir;
	s16 groundY;

	parent = &alienInstances[parentIndex];
	childType = parent->unk3C;
	osSyncPrintf("making alien type %d:\n", childType);
	childIndex = func_8007956C_8851C((u8)parent->unk3C);
	osSyncPrintf("made at %d\n", childIndex);
	if (childIndex == 0xFF)
	{
		return 0;
	}
	alienInstances[childIndex].unk20 |= 0x01000000;
	if (childType == 0xA)
	{
		alienInstances[childIndex].unk3A = 0x64;
	}
	if (childType == 0xD)
	{
		dir = (func_800038E0_44E0() % 0xFA0) + parent->unk6;
		dir -= 0x7D0;
	}
	else
	{
		dir = parent->unk6;
	}
	alienInstances[childIndex].unkE = dir;
	alienInstances[childIndex].unk6 = dir;
	alienInstances[childIndex].unk0 = ((((f32)coss(parent->unk6)) / 32768.0) * 100.0) + parent->unk0;
	alienInstances[childIndex].unk4 = ((((f32)sins(parent->unk6)) / 32768.0) * 100.0) + parent->unk4;
	alienInstances[childIndex].unk25 = parentIndex;
	alienInstances[childIndex].unk26 = func_800A3DC8_B2D78();
	alienInstances[childIndex].unk12 = 0x460;
	alienInstances[childIndex].unk14 = ((((f32)coss(dir)) / 32768.0) * 400.0) + parent->unk0;
	alienInstances[childIndex].unk16 = parent->unk2;
	alienInstances[childIndex].unk18 = ((((f32)sins(dir)) / 32768.0) * 400.0) + parent->unk4;
	alienInstances[childIndex].unk2C = 0x1E;
	if (alienTypes[alienInstances[childIndex].typeIndex].unk54 & 1)
	{
		groundY = func_800B84D0_C7480(alienInstances[childIndex].unk0, alienInstances[childIndex].unk4) >> 8;
		func_8011E6FC_12D6AC(alienInstances[childIndex].unk0, alienInstances[childIndex].unk4, &groundY);
		alienInstances[childIndex].unk2 = groundY + 0x19;
	}
	else
	{
		func_80080510_8F4C0(childIndex);
	}
	return 1;
}

void func_800A4150_B3100(u8 arg0) {
	s32 temp_v1;
	AlienInstance* temp_v0;

	temp_v0 = (arg0 ) + alienInstances;
	temp_v1 = temp_v0->unk20;
	if (!(temp_v1 & 0x100000) &&
		(temp_v0->unk3D == 0) &&
		!(temp_v1 & 0x4000) &&
		(temp_v1 & 0x1000)) {

		temp_v0->unk20 = (s32) (temp_v1 | ALIEN_FLAG_UNKF);
		temp_v0->unk2C = 0;
	}
}

// Processor behavior with minion spawning - enemyspecs.unk4C
void func_800A41B0_B3160(u8 arg0) {
	s16 node2;
	s16 node3;
	s16 timer;
	s16 levelStep;
	s8 armA;
	s8 armB;
	f32 cosDir;
	f32 sinDir;
	s16 pad; /* Retains the halfword before typeIndex in the stack layout. */
	s16 typeIndex;
	s32 x;
	s32 y;
	s32 z;
	f32 side;
	f32 forward;
	s16 rootNode;
	s16 chain;
	s16 node1;
	u16 randA;

	typeIndex = alienInstances[arg0].typeIndex;
	rootNode = alienInstances[arg0].unkC;

	if (rootNode != -1) {

		chain = D_8014DD50[rootNode].unkC;
		if (currentLevel < 4) {

			node1 = D_8014DD50[chain].unkD;
			node2 = D_8014DD50[node1].unkD;
			node3 = D_8014DD50[node2].unkD;
			armA = D_8014DD50[node3].unkD;
			if (armA == -1) {
				armA = node2;
				armB = node3;
			} else {
				armB = D_8014DD50[armA].unkD;
			}
		} else {
			armA = D_8014DD50[chain].unkD;
			armB = D_8014DD50[armA].unkD;
		}
	}

	if (alienInstances[arg0].unk20 & 0x1000) {
		alienInstances[arg0].unk2C++;

		if (alienInstances[arg0].unk20 & 0x4000) {
			if (rootNode != 0xFF) {
				D_8014DD50[armA].unk6Unsigned = (-alienInstances[arg0].unk2C << 9) + 0x2000;
				D_8014DD50[armB].unk6 = -D_8014DD50[armA].unk6Unsigned;
			}

			if (alienInstances[arg0].unk2C >= 0x11) {
				alienInstances[arg0].unk20 &= ~0x5000;
			}
		} else {
			timer = alienInstances[arg0].unk2C;

			if ((timer < 0x10) && (rootNode != 0xFF)) {
				D_8014DD50[armA].unk6Unsigned = timer << 7;
				D_8014DD50[armB].unk6 = -D_8014DD50[armA].unk6Unsigned;
			} else if ((timer < 0x18) && (rootNode != 0xFF)) {
				D_8014DD50[armA].unk6Unsigned = timer << 7;
				D_8014DD50[armB].unk6 = -D_8014DD50[armA].unk6Unsigned;
			} else if (rootNode != 0xFF) {
				D_8014DD50[armA].unk6Unsigned = 0x2000;
				D_8014DD50[armB].unk6Unsigned = 0xE000;
			}

			if ((currentLevel == 1) || (currentLevel == 3)) {
				levelStep = 0xF;
			} else {
				levelStep = 0xA;
			}

			if ((timer >= 0x10) && (alienTypes[typeIndex].unk3A / 10 < alienInstances[arg0].hitPoints) && ((timer % levelStep) == 0) && (alienInstances[arg0].unk3D != 0)) {

				func_80137468_146418(arg0, 0x19);
				cosDir = (f32) ((f32) coss((u16) alienInstances[arg0].unk6) / 32768.0);
				sinDir = (f32) ((f32) sins((u16) alienInstances[arg0].unk6) / 32768.0);
				randA = func_800038E0_44E0();

				func_800CA5EC_D959C(
					(s16) (s32) ((f32) alienInstances[arg0].unk0 + (180.0f * cosDir)),
					(s16) (alienInstances[arg0].unk2 + 0xA),
					(s16) (s32) ((f32) alienInstances[arg0].unk4 + (180.0f * sinDir)),
					(s8)(127.0f * cosDir),
					0x1E,
					(s8)(127.0f * sinDir),
					0x3C,
					4,
					(randA % 5) + 4,
					(func_800038E0_44E0() % 90) + 0x28,
					0xF0,
					0xC8,
					0x14,
					0xFF);

				randA = func_800038E0_44E0();
				func_800CA5EC_D959C(
					(s16) (s32) ((f32) alienInstances[arg0].unk0 + (180.0f * cosDir)),
					(s16) (alienInstances[arg0].unk2 + 0x1E),
					(s16) (s32) ((f32) alienInstances[arg0].unk4 + (180.0f * sinDir)),
					(s8)(127.0f * cosDir),
					0x28,
					(s8)(127.0f * sinDir),
					0x46,
					4,
					(randA % 5) + 4,
					(func_800038E0_44E0() % 90) + 0x28,
					0xF0,
					0xC8,
					0x14,
					0xFF);

				randA = func_800038E0_44E0();
				func_800CA5EC_D959C(
					(s16) (s32) ((f32) alienInstances[arg0].unk0 + (180.0f * cosDir)),
					(s16) (alienInstances[arg0].unk2 + 0x32),
					(s16) (s32) ((f32) alienInstances[arg0].unk4 + (180.0f * sinDir)),
					(s8)(127.0f * cosDir),
					0x32,
					(s8)(127.0f * sinDir),
					0x46,
					4,
					(randA % 5) + 4,
					(func_800038E0_44E0() % 90) + 0x28,
					0xF0,
					0xC8,
					0x14,
					0xFF);

				if (alienInstances[arg0].unk3D != 0) {
					alienInstances[arg0].unk3D--;
				}

				if (func_800A3E74_B2E24(arg0) == 0) {
					func_800A4150_B3100(arg0);
				} else {
					alienInstances[arg0].unk24++;
				}
			}
		}
	} else if (alienInstances[arg0].unk26 != 0) {
		alienInstances[arg0].unk26--;
	}

	if ((alienInstances[arg0].unk20 & ALIEN_FLAG_UNKP) && (alienTypes[typeIndex].unk3A / 10 < alienInstances[arg0].hitPoints)) { // minions only spawn when processor is damaged
		if (!((currentLevel == 4) && (alienInstances[arg0].unk1B == 2))) { // if Siberia stage 3, disallow minion spawning in case 3 below
			if (((currentLevel < 3) && (alienInstances[arg0].unk24 < 0xC)) || ((currentLevel >= 3) && (alienInstances[arg0].unk24 < 6))) { // Greece and Java, max minions 12; America and Siberia, max minions 6
				if ((alienInstances[arg0].unk26 == 0) && !(alienInstances[arg0].unk20 & 0x1000)) {
					alienInstances[arg0].unk20 |= 0x1000;
					alienInstances[arg0].unk20 &= ~0x4000;
					alienInstances[arg0].unk2C = 0;
					alienInstances[arg0].unk26 = (u8) ((func_800038E0_44E0() % 0x32) + 0x14);

					// minion spawn type and amount
					switch (currentLevel) {
					case 1: // Greece = 6 Fleas
						alienInstances[arg0].unk3C = 0xD;
						alienInstances[arg0].unk3D = 6;
						break;
					case 2: // Java = 3 Doodlebugs (red flying kamikaze)
						alienInstances[arg0].unk3C = 0xA;
						alienInstances[arg0].unk3D = 3;
						break;
					case 3: // America = 3 Torabugs (purple flying gunship)
						alienInstances[arg0].unk3C = 0xA;
						alienInstances[arg0].unk3D = 3;
						break;
					case 4: // Siberia
						if (alienInstances[arg0].unk1B == 2) { // stage 3 = 2 Sharks (lightning fish) - doesn't happen in finished game. branch explicitly skipped with check above
							alienInstances[arg0].unk3C = 7;
							alienInstances[arg0].unk3D = 2;
						} else { // stages 1, 2, 4 = 3 Doodlebugs (red flying kamikaze)
							alienInstances[arg0].unk3C = 0xA;
							alienInstances[arg0].unk3D = 3;
						}
						break;
					default:
						break;
					}
				}

				if (alienInstances[arg0].pad46 == 0) {

					side = (f32) ((f32) sins((u16) (alienInstances[arg0].unk6 + 0x4000)) / 32768.0);
					forward = (f32) -((f32) coss((u16) (alienInstances[arg0].unk6 + 0x4000)) / 32768.0);

					switch (currentLevel) {
					case 1:
						node1 = 320;
						break;
					case 4:
						node1 = 200;
						break;
					default:
						node1 = 250;
					}
					x = (s32) ((f32) alienInstances[arg0].unk0 + (side * node1));
					y = (s32) (alienInstances[arg0].unk2 + 0x50);
					z = (s32) ((f32) alienInstances[arg0].unk4 + (forward * node1));

					if (alienInstances[arg0].unk20 & 0x600) {
						if (D_80031420 & 3) {
							func_800CA5EC_D959C(
								x,
								y,
								z,
								(s8) (s32) (side * 127.0f),
								0,
								(s32) (forward * 127.0f),
								0x46,
								7,
								0x14,
								0xC8,
								D_8013E3C0[currentLevel * 3 - 3],
								D_8013E3C0[currentLevel * 3 - 2],
								D_8013E3C0[currentLevel * 3 - 1],
								0xFF);
						}

						func_800DEA08_ED9B8((s16) x, (s16) y, (s16) z, (s16) ((func_800038E0_44E0() + 0x1C2) >> 9), 0xC, 6, 0x28, 0xFF, D_8013E3C0[currentLevel * 3 - 3], D_8013E3C0[currentLevel * 3 - 2], D_8013E3C0[currentLevel * 3 - 1]);
						alienInstances[arg0].pad46 = 0xA;
					}
				}
			}
		}
	}

	if (alienInstances[arg0].pad46 != 0) {
		alienInstances[arg0].pad46--;
	}
}

// Processor behavior - enemyspecs.unk48
void func_800A4C28_B3BD8(u8 arg0) {
	u8 typeIndex;
	s8 rootNode;
	s8 nextNode;
	s8 childNode;
	s16 siblingNode;
	s8 siblingNext;
	s8 nextNextNode;
	s8 nextNextNextNode;
	s16 animationNodes[2];
	s8 result;
	u16 direction;
	s32 x;
	s32 y;
	s32 z;
	s32 originalTypeValue;
	s16 coords[3];
	s32 point[3];
	s16 pad; /* Keeps the saved sine and compiler spill slots at their original offsets. */
	s16 sinDirection;
	s16 cosDirection;

	typeIndex = alienInstances[arg0].typeIndex;

	if (currentLevel < 4) {
		nextNode = D_8014DD50[alienInstances[arg0].unkC].unkC;
		childNode = D_8014DD50[nextNode].unkC;
		siblingNode = D_8014DD50[nextNode].unkD;
		nextNextNode = D_8014DD50[siblingNode].unkD;
		nextNextNextNode = D_8014DD50[nextNextNode].unkD;
	} else {
		rootNode = alienInstances[arg0].unkD;
		nextNode = D_8014DD50[rootNode].unkC;
		siblingNode = D_8014DD50[nextNode].unkD;
		siblingNext = D_8014DD50[siblingNode].unkD;
		nextNextNode = D_8014DD50[siblingNext].unkD;
		nextNextNextNode = D_8014DD50[nextNextNode].unkD;
		func_80086230_951E0(arg0, (s8)nextNextNode, 0x2000);
		func_80086230_951E0(arg0, nextNextNextNode, 0x2000);
	}

	if (D_8014DD50[nextNextNextNode].unkD != -1) {
		func_80090948_9F8F8((s8)nextNextNode, 0x7D0);
		func_80090948_9F8F8(nextNextNextNode, 0x7D0);
	} else if (currentLevel != 4) {
		nextNextNode = -1;
		nextNextNextNode = -1;
	}

	func_80085E2C_94DDC(arg0, nextNode, 0x4000);
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKE) {
		if (currentLevel < 4) {
			animationNodes[0] = nextNode;
			animationNodes[1] = childNode;
			direction = D_8014DD50[nextNode].unk6Unsigned;
			if (D_8014DD50[nextNode].unkE == 0 && alienInstances[arg0].unk36 < 5) {
				D_8013D786_14C736[alienInstances[arg0].unk36][0] = direction;
			}
			D_8014E4D6[nextNode][0] = direction;
			result = func_80081F18_90EC8(arg0, 2, 6, animationNodes, (Unk8014DD50 **)&D_8013D840_14C7F0);
			if (alienInstances[arg0].unk36 == 3) {
				sinDirection = sins(direction);
				cosDirection = coss(direction);
				/* Pointer casts preserve IDO's member-access weighting and FP operand order. */
				func_80128428_1373D8(
					&alienInstances[arg0],
					(s16)(((f32)sinDirection / 32768.0) * ((AlienType *)&alienTypes[typeIndex])->unk24),
					alienTypes[typeIndex].unk22,
					(s16)(((f32)cosDirection / 32768.0) * ((AlienType *)&alienTypes[typeIndex])->unk24 + ((Unk8014DD50 *)&D_8014DD50[nextNode])->unk4),
					&x, &y, &z);
				func_800C56A4_D4654((s16)x, (s16)y, (s16)z, 0x8C, 0xF, 3, 0x28);
			}
			if (result == 4) {
				originalTypeValue = alienTypes[typeIndex].unk24;
				alienInstances[arg0].unk1E = 0;
				alienTypes[typeIndex].unk20 = (s16)(((f32)sins(direction) / 32768.0) * originalTypeValue);
				alienTypes[typeIndex].unk24 = (s16)((f64)D_8014DD50[nextNode].unk4 + ((f32)coss(direction) / 32768.0) * originalTypeValue);
				if (func_80084FE8_93F98(arg0, 0x3FFF) == 0) {
					func_80086D70_95D20(arg0, 0, (s16)-(u32)direction);
				} else {
					func_800871CC_9617C(arg0, 0, 0);
				}
				alienTypes[typeIndex].unk24 = (s16)originalTypeValue;
				if (alienInstances[arg0].unk3A != 0) {
					alienInstances[arg0].unk36 = 2;
				}
			}
			if (result == 6) {
				alienInstances[arg0].unk20 &= ~(ALIEN_FLAG_INVINCIBLE | ALIEN_FLAG_UNKE);
			}
		} else {
			if (D_8013D888_14C838 != 0) {
				coords[0] = -0x3D;
				coords[1] = 9;
				coords[2] = 0x72;
				func_800A931C_B82CC((s8)nextNextNode, coords, point);
			} else {
				coords[0] = 0x3D;
				coords[1] = 9;
				coords[2] = 0x72;
				func_800A931C_B82CC(nextNextNextNode, coords, point);
			}
			coords[0] = (s16)point[0];
			coords[1] = (s16)point[1];
			coords[2] = (s16)point[2];
			func_800A931C_B82CC(rootNode, coords, point);
			alienTypes[typeIndex].unk20 = (s16)point[0];
			alienTypes[typeIndex].unk22 = (s16)point[1];
			alienTypes[typeIndex].unk24 = (s16)point[2];
			if (D_80047F94 == 2) {
				alienTypes[typeIndex].unk1C = 0x33;
			} else {
				alienTypes[typeIndex].unk1C = 0x2F;
			}
			if (!(alienInstances[arg0].unk20 & (ALIEN_FLAG_UNKF | ALIEN_FLAG_UNKD)) && (func_80084FE8_93F98(arg0, 0x27D0) != 0) && (func_800871CC_9617C(arg0, 0, 0) != 0)) {
				alienInstances[arg0].unk1E = 0x28;
				alienInstances[arg0].unk4B = 0;
				alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKG;
				D_8013D888_14C838 = (D_8013D888_14C838 == 0);
			}
			if (alienInstances[arg0].unk1E != 0) {
				alienInstances[arg0].unk1E--;
			}
		}
	} else if ((func_80084FE8_93F98(arg0, 0x3FFF) != 0) && ((alienInstances[arg0].unk20 & ALIEN_FLAG_UNKD) == 0)) {
		alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKE;
		alienInstances[arg0].unk3A = (s16)(currentLevel * 0x12C);
		alienInstances[arg0].unk36 = 0;
		D_8013D786_14C736[0][0] = direction;
		func_80137468_146418(arg0, 0x17);
	} else if (alienInstances[arg0].unk3A != 0) {
		alienInstances[arg0].unk3A--;
	}

	func_800A41B0_B3160(arg0);
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_W) {
		alienInstances[arg0].unk20 &= ~ALIEN_FLAG_W;
	}
}

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

void func_800A53C0_B4370(u8 arg0, s16 arg1, s16 arg2) {
	s32 sp_idx;
	s32 abs_arg1;
	s32 sign;
	sp_idx = alienInstances[arg0].typeIndex;
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNK5) {
		if (-arg1 < arg1) {
			abs_arg1 = arg1;
		} else {
			abs_arg1 = -arg1;
		}
		sign = (alienInstances[arg0].unk8 > 0) ? 1 : (alienInstances[arg0].unk8 < 0) ? -1 : 0;
		alienInstances[arg0].unk8 = alienInstances[arg0].unk8 - sign * abs_arg1;
	} else {
		s16 lookup = alienTypes[sp_idx].unk42;
		s16 diff = alienInstances[arg0].unk2A - alienInstances[arg0].unkE;
		if (-lookup >= diff) {
			alienInstances[arg0].unk8 = alienInstances[arg0].unk8 - arg1;
		} else if (lookup < diff) {
			alienInstances[arg0].unk8 = alienInstances[arg0].unk8 + arg1;
		} else {
			if (-arg1 < arg1) {
				abs_arg1 = arg1;
			} else {
				abs_arg1 = -arg1;
			}
			sign = (alienInstances[arg0].unk8 > 0) ? 1 : (alienInstances[arg0].unk8 < 0) ? -1 : 0;
			alienInstances[arg0].unk8 = alienInstances[arg0].unk8 - sign * abs_arg1;
		}
	}
	if (arg2 < alienInstances[arg0].unk8) {
		alienInstances[arg0].unk8 = arg2;
		return;
	}
	if (alienInstances[arg0].unk8 < -arg2) {
		alienInstances[arg0].unk8 = -arg2;
	}
}

void func_800A5554_B4504(u8 arg0, s32 arg1, f32 arg2, s16 arg3) {
	s32 delta;
	s32 amount;
	s32 terrainHeight;
	u8 typeIndex;
	s32 airborne;

	airborne = 0;
	typeIndex = alienInstances[arg0].typeIndex;
	func_80137468_146418(arg0, 0x1C);
	func_8008076C_8F71C(arg0);
	func_800A53C0_B4370(arg0, 0x1F4, 0x1388);
	if ((s32)(alienInstances[arg0].unk20 << 4) < 0) {
		airborne = D_80052B34->unk20 & VEHICLE_FLAG_AIRBORNE;
		if (airborne != 0 && D_80222A70 >= D_80052B34->unk2) {
			airborne = 0;
		}
	}
	delta = alienInstances[arg0].unk12 - alienInstances[arg0].unk2C;
	{
		amount = (s32)(((f32)delta / (f32)alienTypes[typeIndex].unk40) * 8000.0f * 2);
		if (amount == 0 || alienInstances[arg0].unk12 >= (alienTypes[typeIndex].unk40 - alienTypes[typeIndex].unk3E * 2)) {
			if (alienInstances[arg0].unkA >= 0xFA1) {
				alienInstances[arg0].unkA = alienInstances[arg0].unkA - 0xC8;
			}
		} else {
			alienInstances[arg0].unkA = alienInstances[arg0].unkA + amount;
		}
	}
	if (alienInstances[arg0].unkA >= 0xFA1) {
		alienInstances[arg0].unkA = alienInstances[arg0].unkA;
	} else {
		alienInstances[arg0].unkA = 0xFA0;
	}
	if (alienInstances[arg0].unkA < 0x1F40) {
		alienInstances[arg0].unkA = alienInstances[arg0].unkA;
	} else {
		alienInstances[arg0].unkA = 0x1F40;
	}
	{
		terrainHeight = func_800B84D0_C7480(alienInstances[arg0].unk0, alienInstances[arg0].unk4) >> 8;
		if (terrainHeight < D_80222A70) {
			terrainHeight = D_80222A70;
		}
		if (alienInstances[arg0].unk16 >= terrainHeight) {
			terrainHeight = alienInstances[arg0].unk16;
		}
		{
			arg1 = airborne != 0 ? D_80052B34->unk2 + 0x12C : arg1 + terrainHeight;
			if (arg1 < alienInstances[arg0].unk2) {
				if (arg1 > (alienInstances[arg0].unk2 - 7)) {
					alienInstances[arg0].unk2 = arg1;
				} else {
					alienInstances[arg0].unk2 = (alienInstances[arg0].unk2 - 7);
				}
			} else if (arg1 > alienInstances[arg0].unk2) {
				if (arg1 < (alienInstances[arg0].unk2 + 7)) {
					alienInstances[arg0].unk2 = arg1;
				} else {
					alienInstances[arg0].unk2 = (alienInstances[arg0].unk2 + 7);
				}
			}
		}
	}
	alienInstances[arg0].unk2C = alienInstances[arg0].unk12;
	D_8014DD50[arg3].unk6 = (s16)((u16)D_8014DD50[arg3].unk6 + 0x2EE0);
}

void func_800A57E4_B4794(u8 arg0) {
	s32 dx;
	s32 dz;
	s16 angleDifference;
	s16 angle;

	dx = alienInstances[arg0].unk0 - D_80052B34->unk0;
	dz = alienInstances[arg0].unk4 - D_80052B34->unk4;
	angleDifference = func_80003824_4424(dx, dz) - D_80052B34->unk6;
	if (!(alienInstances[arg0].unk47 & 1)) {
		if ((-angleDifference < angleDifference ? angleDifference : -angleDifference) < 0x4000) {
			alienInstances[arg0].unk20 &= 0xF7FF7FFF;
			angle = (s16)(angleDifference > 0 ? D_80052B34->unk6 + 0x6000 : D_80052B34->unk6 - 0x6000);
			alienInstances[arg0].unk14 = (s16)(s32)(((f32)coss(angle) / 32768.0) * 600.0 + D_80052B34->unk0);
			alienInstances[arg0].unk18 = (s16)(s32)(((f32)sins(angle) / 32768.0) * 600.0 + D_80052B34->unk4);
			alienInstances[arg0].unk16 = D_80052B34->unk2;
		}
	}
	if ((-angleDifference < angleDifference ? angleDifference : -angleDifference) >= 0x6001) {
		alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKG;
	}
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKG) {
		func_8008751C_964CC(arg0, 0x258, 0x28A);
		alienInstances[arg0].unk20 |= ALIEN_FLAG_PLAYER;
	} else {
		func_8008064C_8F5FC(arg0);
	}
}
