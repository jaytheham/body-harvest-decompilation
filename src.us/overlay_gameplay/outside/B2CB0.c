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

#ifdef NON_MATCHING
// Update alien Processor? Sets child spawn type among other things.
void func_800A41B0_B3160(u8 arg0) {
	s8 armA;
	s8 armB;
	f32 cosDir;
	f32 sinDir;
	s16 typeIndex;
	s32 x;
	s32 y;
	s32 z;
	f32 side;
	u16 randA;
	f32 fx;
	f32 fz;
	s8 velX;
	s8 velZ;
	s16 swing;

	typeIndex = alienInstances[arg0].typeIndex;

	if (alienInstances[arg0].unkC != -1) {
		s8 n0;

		n0 = D_8014DD50[alienInstances[arg0].unkC].unkC;
		if (currentLevel < 4) {
			s8 n1;
			s8 n2;
			s8 n3;

			n1 = D_8014DD50[n0].unkD;
			n2 = D_8014DD50[n1].unkD;
			n3 = D_8014DD50[n2].unkD;
			if (D_8014DD50[n3].unkD == -1) {
				armA = n2;
				armB = n3;
			} else {
				armA = D_8014DD50[n3].unkD;
				armB = D_8014DD50[D_8014DD50[n3].unkD].unkD;
			}
		} else {
			armA = D_8014DD50[n0].unkD;
			armB = D_8014DD50[armA].unkD;
		}
	}

	if (alienInstances[arg0].unk20 & 0x1000) {
		alienInstances[arg0].unk2C++;

		if (alienInstances[arg0].unk20 & 0x4000) {
			if (alienInstances[arg0].unkC != 0xFF) {
				swing = (s16) ((alienInstances[arg0].unk2C * -0x200) + 0x2000);
				D_8014DD50[armA].unk6 = swing;
				D_8014DD50[armB].unk6 = -swing;
			}

			if (alienInstances[arg0].unk2C >= 0x11) {
				alienInstances[arg0].unk20 &= ~0x5000;
			}
		} else {
			s16 timer = alienInstances[arg0].unk2C;
			s16 levelStep;

			if ((timer < 0x10) && (alienInstances[arg0].unkC != 0xFF)) {
				swing = (s16) (timer << 7);
				D_8014DD50[armA].unk6 = swing;
				D_8014DD50[armB].unk6 = -swing;
			} else if ((timer < 0x18) && (alienInstances[arg0].unkC != 0xFF)) {
				swing = (s16) (timer << 7);
				D_8014DD50[armA].unk6 = swing;
				D_8014DD50[armB].unk6 = -swing;
			} else if (alienInstances[arg0].unkC != 0xFF) {
				D_8014DD50[armA].unk6 = 0x2000;
				D_8014DD50[armB].unk6 = (s16) 0xE000;
			}

			if ((currentLevel == 1) || (currentLevel == 3)) {
				levelStep = 0xF;
			} else {
				levelStep = 0xA;
			}

			if ((timer >= 0x10) && (alienTypes[typeIndex].unk3A / 10 < alienInstances[arg0].hitPoints) && ((timer % levelStep) == 0) && (alienInstances[arg0].unk3D != 0)) {
				s16 randB;

				func_80137468_146418(arg0, 0x19);
				cosDir = (f32) ((f32) coss((u16) alienInstances[arg0].unk6) / 32768.0);
				sinDir = (f32) ((f32) sins((u16) alienInstances[arg0].unk6) / 32768.0);
				randA = func_800038E0_44E0();
				randB = func_800038E0_44E0();
				fx = 180.0f * cosDir;
				fz = 180.0f * sinDir;
				velX = (s8) (s32) (127.0f * cosDir);
				velZ = (s8) (s32) (127.0f * sinDir);

				func_800CA5EC_D959C(
					(s16) (s32) ((f32) alienInstances[arg0].unk0 + fx),
					(s16) (alienInstances[arg0].unk2 + 0xA),
					(s16) (s32) ((f32) alienInstances[arg0].unk4 + fz),
					velX,
					0x1E,
					velZ,
					0x3C,
					4,
					(randA % 5) + 4,
					(randB % 90) + 0x28,
					0xF0,
					0xC8,
					0x14,
					0xFF);

				randA = func_800038E0_44E0();
				randB = func_800038E0_44E0();
				func_800CA5EC_D959C(
					(s16) (s32) ((f32) alienInstances[arg0].unk0 + fx),
					(s16) (alienInstances[arg0].unk2 + 0x1E),
					(s16) (s32) ((f32) alienInstances[arg0].unk4 + fz),
					velX,
					0x28,
					velZ,
					0x46,
					4,
					(randA % 5) + 4,
					(randB % 90) + 0x28,
					0xF0,
					0xC8,
					0x14,
					0xFF);

				randA = func_800038E0_44E0();
				randB = func_800038E0_44E0();
				func_800CA5EC_D959C(
					(s16) (s32) ((f32) alienInstances[arg0].unk0 + fx),
					(s16) (alienInstances[arg0].unk2 + 0x32),
					(s16) (s32) ((f32) alienInstances[arg0].unk4 + fz),
					velX,
					0x32,
					velZ,
					0x46,
					4,
					(randA % 5) + 4,
					(randB % 90) + 0x28,
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

	if ((alienInstances[arg0].unk20 & ALIEN_FLAG_UNKP) && (alienTypes[typeIndex].unk3A / 10 < alienInstances[arg0].hitPoints)) {
		if (!((currentLevel == 4) && (alienInstances[arg0].unk1B == 2))) {
			if (alienInstances[arg0].unk24 < (currentLevel < 3 ? 0xC : 6)) {
				if ((alienInstances[arg0].unk26 == 0) && !(alienInstances[arg0].unk20 & 0x1000)) {
					alienInstances[arg0].unk20 |= 0x1000;
					alienInstances[arg0].unk20 &= ~0x4000;
					alienInstances[arg0].unk2C = 0;
					alienInstances[arg0].unk26 = (u8) ((func_800038E0_44E0() % 0x32) + 0x14);

					switch (currentLevel) {
					case 1:
						alienInstances[arg0].unk3C = 0xD;
						alienInstances[arg0].unk3D = 6;
						break;
					case 2:
						alienInstances[arg0].unk3C = 0xA;
						alienInstances[arg0].unk3D = 3;
						break;
					case 3:
						alienInstances[arg0].unk3C = 0xA;
						alienInstances[arg0].unk3D = 3;
						break;
					case 4:
						if (alienInstances[arg0].unk1B == 2) {
							alienInstances[arg0].unk3C = 7;
							alienInstances[arg0].unk3D = 2;
						} else {
							alienInstances[arg0].unk3C = 0xA;
							alienInstances[arg0].unk3D = 3;
						}
						break;
					default:
						break;
					}
				}

				if (alienInstances[arg0].pad46 == 0) {
					f32 forward;

					side = (f32) ((f32) sins((u16) (alienInstances[arg0].unk6 + 0x4000)) / 32768.0);
					forward = (f32) -((f32) coss((u16) (alienInstances[arg0].unk6 + 0x4000)) / 32768.0);

					x = (s32) ((f32) alienInstances[arg0].unk0 + (side * (currentLevel == 1 ? 0x140 : currentLevel == 4 ? 0xC8 : 0xFA)));
					y = (s32) (alienInstances[arg0].unk2 + 0x50);
					z = (s32) ((f32) alienInstances[arg0].unk4 + (forward * (currentLevel == 1 ? 0x140 : currentLevel == 4 ? 0xC8 : 0xFA)));

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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A41B0_B3160.s")
#endif

// CURRENT (17849)
#ifdef NON_MATCHING
void func_800A4C28_B3BD8(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];
	u8 typeIndex = alien->typeIndex;
	Unk8014DD50 *node;
	s32 pad[2];
	u8 *levelTable = (u8 *)D_8013D786_14C736;
	u8 *routeTable = (u8 *)D_8014E4D6;
	s16 coords[3];
	s32 point[3];
	s16 direction;
	s32 originalTypeValue;
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
	if (alien->unk20 & ALIEN_FLAG_UNKE) {
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
				point[0] = (s32)((f64)(f32)sins((u16)direction) * ((f64)alienTypes[typeIndex].unk24 / 32768.0));
				func_80128428_1373D8(alien, (s16)point[0], alienTypes[typeIndex].unk22, (s16)((f64)(f32)coss((u16)direction) * ((f64)alienTypes[typeIndex].unk24 / 32768.0) + (f64)node->unk4), &point[0], &point[1], &point[2]);
				func_800C56A4_D4654((s16)point[2], (s16)point[1], (s16)point[0], 0x8C, 0xF, 3, 0x28);
			}
			if (result == 4) {
				alien->unk1E = 0;
				originalTypeValue = alienTypes[typeIndex].unk24;
				alienTypes[typeIndex].unk20 = (s16)((f64)(f32)sins((u16)direction) * ((f64)originalTypeValue / 32768.0));
				alienTypes[typeIndex].unk24 = (s16)((f64)(f32)coss((u16)direction) * ((f64)originalTypeValue / 32768.0) + (f64)node->unk4);
				if (func_80084FE8_93F98(arg0, 0x3FFF) == 0) {
					func_80086D70_95D20(arg0, 0, (s16)-direction);
				} else {
					func_800871CC_9617C(arg0, 0, 0);
				}
				alienTypes[typeIndex].unk24 = (s16)originalTypeValue;
				if (alien->unk3A != 0) {
					alien->unk36 = 2;
				}
			}
			if (result == 6) {
				alien->unk20 &= ~(ALIEN_FLAG_INVINCIBLE | ALIEN_FLAG_UNKE);
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
			alienTypes[typeIndex].unk20 = (s16)point[0];
			alienTypes[typeIndex].unk22 = (s16)point[1];
			alienTypes[typeIndex].unk24 = (s16)point[2];
			alienTypes[typeIndex].unk1C = (D_80047F94 == 2) ? 0x33 : 0x2F;
			if (!(alien->unk20 & (ALIEN_FLAG_UNKF | ALIEN_FLAG_UNKD)) && (func_80084FE8_93F98(arg0, 0x27D0) != 0) && (func_800871CC_9617C(arg0, 0, 0) != 0)) {
				alien->unk1E = 0x28;
				alien->unk4B = 0;
				alien->unk20 |= ALIEN_FLAG_UNKG;
				D_8013D888_14C838 = (D_8013D888_14C838 == 0);
			}
			if (alien->unk1E != 0) {
				alien->unk1E--;
			}
		}
	} else if ((func_80084FE8_93F98(arg0, 0x3FFF) != 0) && ((alien->unk20 & ALIEN_FLAG_UNKD) == 0)) {
		alien->unk20 |= ALIEN_FLAG_UNKE;
		alien->unk36 = 0;
		alien->unk3A = (s16)(currentLevel * 0x12C);
		*((s16 *)(levelTable + 0)) = direction;
		func_80137468_146418(arg0, 0x17);
	} else if (alien->unk3A != 0) {
		alien->unk3A--;
	}

	func_800A41B0_B3160(arg0);
	if (alien->unk20 & ALIEN_FLAG_W) {
		alien->unk20 &= ~ALIEN_FLAG_W;
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

// CURRENT (5097)
#ifdef NON_MATCHING
void func_800A5554_B4504(u8 arg0, s32 arg1, s32 arg2, s16 arg3) {
	AlienInstance *entry;
	s32 sp1C;
	u8 sp23;
	AlienType *type;

	entry = &alienInstances[arg0];
	sp1C = 0;
	sp23 = entry->typeIndex;
	func_80137468_146418(arg0, 0x1C);
	func_8008076C_8F71C(arg0);
	func_800A53C0_B4370(arg0, 0x1F4, 0x1388);
	if ((s32)(entry->unk20 << 4) < 0) {
		sp1C = D_80052B34->unk20 & VEHICLE_FLAG_AIRBORNE;
		if (sp1C != 0 && D_80222A70 >= D_80052B34->unk2) {
			sp1C = 0;
		}
	}
	type = &alienTypes[sp23];
	{
		s32 temp_f10 = (s32)(((f32)(entry->unk12 - entry->unk2C) / (f32)type->unk40) * 8000.0f * 2.0f);
		if (temp_f10 == 0 || entry->unk12 >= (type->unk40 - type->unk3E * 2)) {
			if (entry->unkA >= 0xFA1) {
				entry->unkA = (s16)(entry->unkA - 0xC8);
			}
		} else {
			entry->unkA = (s16)(entry->unkA + temp_f10);
		}
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
	{
		s32 var_a0 = func_800B84D0_C7480(entry->unk0, entry->unk4) >> 8;
		if (var_a0 < D_80222A70) {
			var_a0 = D_80222A70;
		}
		if (entry->unk16 >= var_a0) {
			var_a0 = entry->unk16;
		}
		{
			s32 temp_var = (s16)(arg1 + var_a0);
			if (sp1C != 0) {
				temp_var = (s16)(D_80052B34->unk2 + 0x12C);
			}
			if (temp_var < entry->unk2) {
				if (temp_var > (s16)(entry->unk2 - 7)) {
					entry->unk2 = temp_var;
				} else {
					entry->unk2 = (s16)(entry->unk2 - 7);
				}
			} else if (temp_var > entry->unk2) {
				if (temp_var < (s16)(entry->unk2 + 7)) {
					entry->unk2 = temp_var;
				} else {
					entry->unk2 = (s16)(entry->unk2 + 7);
				}
			}
		}
	}
	entry->unk2C = entry->unk12;
	D_8014DD50[arg3].unk6 = (s16)((u16)D_8014DD50[arg3].unk6 + 0x2EE0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5554_B4504.s")
#endif

const f64 D_80142778_151728[1] = {600.0};
const f64 D_80142780_151730[2] = {600.0, 0.0};

// CURRENT (403)
#ifdef NON_MATCHING
void func_800A57E4_B4794(u8 arg0) {
	s16 sp20;
	s16 sp2E;
	s16 a1;

	a1 = (s16)(func_80003824_4424((f32)(alienInstances[arg0].unk0 - D_80052B34->unk0), (f32)(alienInstances[arg0].unk4 - D_80052B34->unk4)) - D_80052B34->unk6);
	if (!(alienInstances[arg0].unk47 & 1)) {
		if ((-a1 < a1 ? a1 : -a1) < 0x4000) {
			alienInstances[arg0].unk20 &= 0xF7FF7FFF;
			sp2E = a1;
			sp20 = (s16)(a1 > 0 ? D_80052B34->unk6 + 0x6000 : D_80052B34->unk6 - 0x6000);
			alienInstances[arg0].unk14 = (s16)(s32)(((f32)coss(sp20) / 32768.0) * D_80142778_151728[0] + D_80052B34->unk0);
			alienInstances[arg0].unk18 = (s16)(s32)(((f32)sins(sp20) / 32768.0) * D_80142780_151730[0] + D_80052B34->unk4);
			alienInstances[arg0].unk16 = D_80052B34->unk2;
		}
	}
	if ((-a1 < a1 ? a1 : -a1) >= 0x6001) {
		alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKG;
	}
	if (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKG) {
		func_8008751C_964CC(arg0, 0x258, 0x28A);
		alienInstances[arg0].unk20 |= ALIEN_FLAG_PLAYER;
	} else {
		func_8008064C_8F5FC(arg0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A57E4_B4794.s")
#endif
