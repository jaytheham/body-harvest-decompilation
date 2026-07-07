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
	if (!(alienInstances[arg0].unk20 & 0x8000)) {
		return;
	}

	func_80081E5C_90E0C(arg1);
	if (D_8014DD50[arg1].unkE == 0) {
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
		
		if (alien->specIndex == ALIEN_SPEC_HARVESTER) {
			if (alien->unk3C != 0) {
				alien->unk3C = (s8) (alien->unk3C - 1);
				osSyncPrintf("Found parent %d\n", temp_a2);
				return temp_a2;
			}
		}
	}
	return 0xFF;
}

const char D_80142754_151704[] = "making alien type %d:\n";
const char D_8014276C_15171C[] = "made at %d\n";

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

	if (alienSpecs[child->specIndex].unk54 & 1) {
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

// CURRENT(36663)
#ifdef NON_MATCHING
void func_800A41B0_B3160(u8 arg0) {
	AlienInstance *alien;
	Unk8014DD50 *node;
	s16 routeId;
	s16 timer;
	s16 levelStep;
	s32 flags;
	s8 armA;
	s8 armB;

	alien = &alienInstances[arg0];
	routeId = alien->unkC;

	if (routeId != -1) {
		s8 n0;

		node = D_8014DD50;
		n0 = node[routeId].unkC;
		if (currentLevel < 4) {
			s8 n1;
			s8 n2;
			s8 n3;

			n1 = node[n0].unkD;
			n2 = node[n1].unkD;
			n3 = node[n2].unkD;
			if (n3 == -1) {
				armA = n1;
				armB = n2;
			} else {
				armA = n3;
				armB = node[n3].unkD;
			}
		} else {
			armA = node[n0].unkD;
			armB = node[armA].unkD;
		}
	}

	flags = alien->unk20;
	if (flags & 0x1000) {
		alien->unk2C++;
		timer = alien->unk2C;

		if (flags & 0x4000) {
			if (routeId != 0xFF) {
				s16 swing;

				swing = (s16) (0x2000 - (timer << 9));
				D_8014DD50[armA].unk6 = swing;
				D_8014DD50[armB].unk6 = -swing;
			}

			if (timer >= 0x11) {
				flags &= ~0x5000;
				alien->unk20 = flags;
			}
		} else {
			if ((timer < 0x10) && (routeId != 0xFF)) {
				s16 swing;

				swing = (s16) (timer << 7);
				D_8014DD50[armA].unk6 = swing;
				D_8014DD50[armB].unk6 = -swing;
			} else if ((timer < 0x18) && (routeId != 0xFF)) {
				s16 swing;

				swing = (s16) (timer << 7);
				D_8014DD50[armA].unk6 = swing;
				D_8014DD50[armB].unk6 = -swing;
			} else if (routeId != 0xFF) {
				D_8014DD50[armA].unk6 = 0x2000;
				D_8014DD50[armB].unk6 = (s16) 0xE000;
			}

			levelStep = 0xA;
			if ((currentLevel == 1) || (currentLevel == 3)) {
				levelStep = 0xF;
			}

			if ((timer >= 0x10) && (alienSpecs[alien->specIndex].unk3A / 10 < alien->hitPoints) && ((timer % levelStep) == 0) && (alien->unk3D != 0)) {
				s16 randA;
				s16 randB;
				s8 velX;
				s8 velZ;
				f32 fx;
				f32 fz;
				f32 cosDir;
				f32 sinDir;

				func_80137468_146418(arg0, 0x19);
				cosDir = (f32) ((f64) (f32) coss((u16) alien->unk6) / 32768.0);
				sinDir = (f32) ((f64) (f32) sins((u16) alien->unk6) / 32768.0);
				fx = 180.0f * cosDir;
				fz = 180.0f * sinDir;
				randA = (s16) func_800038E0_44E0();
				randB = (s16) func_800038E0_44E0();
				velX = (s8) (s32) (127.0f * cosDir);
				velZ = (s8) (s32) (127.0f * sinDir);

				func_800CA5EC_D959C(
					(s16) (s32) ((f32) alien->unk0 + fx),
					(s16) (alien->unk2 + 0xA),
					(s16) (s32) ((f32) alien->unk4 + fz),
					velX,
					(s8) (s32) (127.0f * sinDir),
					velZ,
					0x1E,
					(randA % 5) + 4,
					0x3C,
					4,
					(randB % 90) + 0x28,
					0xF0,
					0xC8,
					0x14);

				randA = (s16) func_800038E0_44E0();
				randB = (s16) func_800038E0_44E0();
				func_800CA5EC_D959C(
					(s16) (s32) ((f32) alien->unk0 + fx),
					(s16) (alien->unk2 + 0x1E),
					(s16) (s32) ((f32) alien->unk4 + fz),
					velX,
					velZ,
					(s8) (s32) (((f32) randA / 32768.0f) * 127.0f),
					0x28,
					(randA % 5) + 4,
					0x46,
					4,
					(randB % 90) + 0x28,
					0xF0,
					0xC8,
					0x14);

				randA = (s16) func_800038E0_44E0();
				randB = (s16) func_800038E0_44E0();
				func_800CA5EC_D959C(
					(s16) (s32) ((f32) alien->unk0 + fx),
					(s16) (alien->unk2 + 0x32),
					(s16) (s32) ((f32) alien->unk4 + fz),
					velX,
					velZ,
					(s8) (s32) (((f32) randA / 32768.0f) * 127.0f),
					0x32,
					(randA % 5) + 4,
					0x46,
					4,
					(randB % 90) + 0x28,
					0xF0,
					0xC8,
					0x14);

				if (alien->unk3D != 0) {
					alien->unk3D--;
				}

				if (func_800A3E74_B2E24(arg0) == 0) {
					func_800A4150_B3100(arg0);
				} else {
					alien->unk24++;
				}
				flags = alien->unk20;
			}
		}
	} else if (alien->unk26 != 0) {
		alien->unk26--;
		flags = alien->unk20;
	}

	if ((flags < 0) && (alienSpecs[alien->specIndex].unk3A / 10 < alien->hitPoints)) {
		if (!((currentLevel == 4) && (alien->unk1B == 2))) {
			u8 attackCap;

			if (currentLevel < 3) {
				attackCap = 0xC;
			} else {
				attackCap = 6;
			}

			if (alien->unk24 < attackCap) {
				if ((alien->unk26 == 0) && !(flags & 0x1000)) {
					flags |= 0x1000;
					flags &= ~0x4000;
					alien->unk20 = flags;
					alien->unk2C = 0;
					alien->unk26 = (u8) ((func_800038E0_44E0() % 0x32) + 0x14);

					switch (currentLevel) {
					case 1:
						alien->unk3C = 0xD;
						alien->unk3D = 6;
						break;
					case 2:
						alien->unk3C = 0xA;
						alien->unk3D = 3;
						break;
					case 3:
						alien->unk3C = 0xA;
						alien->unk3D = 3;
						break;
					case 4:
						if (alien->unk1B == 2) {
							alien->unk3C = 7;
							alien->unk3D = 2;
						} else {
							alien->unk3C = 0xA;
							alien->unk3D = 3;
						}
						break;
					}
				}

				if (alien->pad46 == 0) {
					s16 x;
					s16 y;
					s16 z;
					s16 spread;
					s16 dist;
					u8 *color;
					f32 side;
					f32 forward;

					side = (f32) ((f64) (f32) sins((u16) (alien->unk6 + 0x4000)) / 32768.0);
					forward = (f32) -((f64) (f32) coss((u16) (alien->unk6 + 0x4000)) / 32768.0);

					if (currentLevel == 1) {
						dist = 0x140;
					} else if (currentLevel == 4) {
						dist = 0xC8;
					} else {
						dist = 0xFA;
					}

					x = (s16) (s32) ((f32) alien->unk0 + (side * dist));
					y = alien->unk2 + 0x50;
					z = (s16) (s32) ((f32) alien->unk4 + (forward * dist));

					if (alien->unk20 & 0x600) {
						if (D_80031420 & 3) {
							color = &D_8013E3C0[currentLevel * 3 - 3];
							func_800CA5EC_D959C(
								x,
								y,
								z,
								(s8) (s32) (side * 127.0f),
								0,
								(s8) (s32) (forward * 127.0f),
								0x46,
								7,
								0x14,
								0xC8,
								color[0],
								color[1],
								color[2],
								0xFF);
						}

						spread = (s16) ((func_800038E0_44E0() + 0x1C2) >> 9);
						color = &D_8013E3C0[currentLevel * 3 - 3];
						func_800DEA08_ED9B8(x, y, z, spread, 0xC, 6, 0x28, 0xFF, color[0], color[1], color[2]);
						alien->pad46 = 0xA;
					}
				}
			}
		}
	}

	if (alien->pad46 != 0) {
		alien->pad46--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A41B0_B3160.s")
#endif

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

const f64 D_80142778_151728[1] = {600.0};
const f64 D_80142780_151730[2] = {600.0, 0.0};

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
			entry->unk14 = (s16)(s32)(((f64)(f32)coss(sp20) / 32768.0) * D_80142778_151728 + (f64)D_80052B34->unk0);
			entry->unk18 = (s16)(s32)(((f64)(f32)sins(sp20) / 32768.0) * D_80142780_151730 + (f64)D_80052B34->unk4);
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
