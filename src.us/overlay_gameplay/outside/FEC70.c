#define FEC70_BSS
#include <ultra64.h>
#include "common.h"
#include "overlay_gameplay/outside/1416E0.h"
#include "core/loader.h"
#include "core/53F0.h"
#include "core/12C80.h"
#include "overlay_gameplay/outside/trigger.h"
#include "version_shift.h"

const char D_801444F0_1534A0[] = "**** ERROR: Cutscenes: RaiseAtlantis: Building not present ****\n"; // "**** ERROR: Cutscenes: RaiseAtlantis: Building not present ****\n"
const char D_80144534_1534E4[] = "**** ERROR: Cutscenes: BridgeBlowerUpper: Building not present ****\n"; // "**** ERROR: Cutscenes: BridgeBlowerUpper: Building not present ****\n"
const char D_8014457C_15352C[] = "**** ERROR: Cutscenes: AlphaTransmute: Building not present ****\n"; // "**** ERROR: Cutscenes: AlphaTransmute: Building not present ****\n"

#ifndef NON_MATCHING_FF61C
const u32 jtbl_801445C0_153570[] = {
	OVERLAY_PTR(0x800F0858), OVERLAY_PTR(0x800F0B3C), OVERLAY_PTR(0x800F08EC), OVERLAY_PTR(0x800F08D4), OVERLAY_PTR(0x800F0938), 0x0
};

const f64 D_801445D8_153588[1] = {6.283185307};
const f64 D_801445E0_153590[1] = {360.0};
const f64 D_801445E8_153598[1] = {6.283185307};
const f64 D_801445F0_1535A0[1] = {360.0};
const f64 D_801445F8_1535A8[1] = {6.283185307};
const f64 D_80144600_1535B0[1] = {360.0};
const f64 D_80144608_1535B8[1] = {6.283185307};
const f64 D_80144610_1535C0[1] = {360.0};
#endif

u32 D_8013FCC4_14EC70[1] = {(u32)&vehicleInstances[63]};
s32 D_8013FCC4_14EC74[3] = {-136, 2021168790, -1774437316};

#ifdef NON_MATCHING
s32 func_800EFCC0_FEC70(s32 *arg0) {
	s32 i;
	s32 *src;
	s32 *src1;
	s32 *src2;
	s32 *src3;
	s32 *src4;
	s32 *srcEnd;
	CutsceneEntry *cutsceneData;

	i = 0;
	src = (s32 *)D_80157E90;
	cutsceneData = D_80157E90;

	do {
		arg0[0] = src[0];
		arg0[1] = src[1];
		arg0[2] = src[2];
		arg0[3] = src[3];
		arg0[4] = src[4];
		arg0[5] = src[5];
		i++;
		arg0 += 6;
		src += 6;
	} while (i != 1);

	// Test if this is actually an unrolled for loop
	if (i != 5) {
		src1 = (s32 *)&cutsceneData[i];
		src2 = (s32 *)&cutsceneData[i + 1];
		src3 = (s32 *)&cutsceneData[i + 2];
		src4 = (s32 *)&cutsceneData[i + 3];
		srcEnd = (s32 *)&cutsceneData[i + 7];

		do {
			src4 += 24;
			arg0 += 24;
			arg0[-24] = src1[0];
			arg0[-23] = src1[1];
			src1 += 24;
			src2 += 24;
			arg0[-22] = src1[-22];
			src3 += 24;
			arg0[-21] = src1[-21];
			arg0[-20] = src1[-20];
			arg0[-19] = src1[-19];
			arg0[-18] = src1[-18];

			arg0[-17] = src2[-24];
			arg0[-16] = src2[-23];
			arg0[-15] = src2[-22];
			arg0[-14] = src2[-21];
			arg0[-13] = src2[-20];
			arg0[-12] = src2[-19];

			arg0[-11] = src3[-24];
			arg0[-10] = src3[-23];
			arg0[-9] = src3[-22];
			arg0[-8] = src3[-21];
			arg0[-7] = src3[-20];
			arg0[-6] = src3[-19];

			arg0[-5] = src4[-24];
			arg0[-4] = src4[-23];
			arg0[-3] = src4[-22];
			arg0[-2] = src4[-21];
			arg0[-1] = src4[-20];
			arg0[0] = src4[-19];
		} while (src4 != srcEnd);
	}

	return 5;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/FEC70/func_800EFCC0_FEC70.s")
#endif

void func_800EFE50_FEE00(u8 arg0) {
	func_800101F0_10DF0((s32)D_80157E90,
		(void *)(((s32)&D_3058A40 & 0xFFFFFF) + ((arg0 * 0x78) & 0xFFFF) + (s32)&D_8F4960),
		0x78);
}

/// Cutscene stuff
/// 800EFEB4 is called and triggers cutscenes (may need to be followed by 80013468)
/// Greece values:
/// a0 = cutscene code pointer?
/// 800F1DDC = 0
/// 802D52C4 = 1
/// 800F1134 = 4
/// 802D57A0 = 5
/// 802D64D0 = 6
/// 802D6904 = 7
/// 
/// a1 = cutscene number
/// 0 = Alpha Zero landing at stage start
/// 1 = Bridge lowering
/// 2 = Beacon launch
/// 3 = ?
/// 4 = Destroying Shield Generator
/// 5 = Raising Atlantis
/// 6 = Dark Adam blowing up bridge
/// 7 = Dark Adam blowing up planes
/// 	
/// a2 = bool, pause gameplay while cutscene active?
void func_800EFEB4_FEE64(void *arg0, s16 arg1, s32 arg2)
{
	int new_var;
	if (D_80052AD0 != 0)
	{
		if (arg1 == 1)
		{
			D_8015EA2C = 0.0f;
		}
		D_800476A2 = 0;
		D_80047968 = 0;
		func_800EFE50_FEE00(arg1);
		D_80157F6A = arg1 & 0xffffffff;
		if (arg2 != 0)
		{
			gameplayMode = 3;
		}
		else
		{
			gameplayMode = 0xB;
		}
		if (arg1 != 3)
		{
			D_801493E2 = 0;
		}
		D_80157F8C = 0;
		D_80157F8E = 0;
		new_var = 0;
		D_80157F90 = new_var;
		D_80157F70 = arg0;
		if (arg0 != NULL)
		{
			((void (*)(void))arg0)();
		}
		func_800F0340_FF2F0((u8 *)D_80157E90, 0, 5);
	}
}

void func_800EFFB4_FEF64(void) {
	s16 temp;

	switch (currentLevel) {
		case 1:
			if (func_8011D260_12C210(0x46, -0x25) == -1) {
				osSyncPrintf(&D_801444F0_1534A0); // **** ERROR: Cutscenes: RaiseAtlantis: Building not present ****
			}

			if (func_8011D260_12C210(0x4A, -7) == -1) {
				osSyncPrintf(&D_80144534_1534E4); // **** ERROR: Cutscenes: BridgeBlowerUpper: Building not present ****
			}

			if (func_8011D260_12C210(-0x13, -0x1F) == -1) {
				osSyncPrintf(&D_8014457C_15352C); // **** ERROR: Cutscenes: AlphaTransmute: Building not present ****
			}
			/* fallthrough */
		case 2:
		default:
			temp = -1;
			break;
	}

	D_80157F68 = temp;
	D_80157F70 = 0;
	D_80157F8C = 0;
	D_80157F8E = 0;
	D_80068080 = 0;
	D_8004DC60 = 0x25;
	D_80157FB4 = 0;
	D_80157F96 = 0;
}

void func_800F0094_FF044(void) {
	if (-1 == D_80157F68) {
		D_8004DC60 = 0;
		return;
	}

	if (D_80157FB4 == 0) {
		if (D_80157F68 != 0) {
			D_80157FB4 = func_800F066C_FF61C();
			goto block_22;
		}
	}

	D_8015EA2C = 0.0f;
	D_801493E0 = 1;
	if ((D_80052ACA != 2) || (currentLevel == LEVEL_COMET)) {
		D_801493E2 = 1;
	}
	D_80157FB4 = 0;
	D_80159DDF = 0xFF;
	D_80157F68 = -1;
	D_80068080 = 0;
	if (D_80052550 != 0) {
		gameplayMode = GAMEPLAY_MODE_INSIDE;
		D_80047968 = 1;
	} else {
		gameplayMode = GAMEPLAY_MODE_NORMAL;
		D_80157590 = 0;
		D_8004DC60 = 0;
	}
	func_80013324_13F24();
	{
		s16 temp_a0;
		s16 temp_a1;
		s32 temp_v1_2;
		s32 temp_t0;

		temp_a0 = D_80052B2C->unk3C;
		temp_a1 = D_80052B2C->unk3E;
		temp_v1_2 = (temp_a0 >> 8) + 0x77;
		temp_t0 = (temp_a1 >> 8) + 0x77;
		func_800B4050_C3000((u8)temp_v1_2, (u8)temp_t0, (u8 *)D_801FEA30, 0);
	}
	D_800476A2 = 1;
	return;

block_22:
	D_80157F90++;
	if ((D_80157F70 != 0) && (((s32 (*)(void))D_80157F70)() != 0)) {
		D_80157F8C = 0;
		D_80157F8E = 0;
		D_80157F70 = 0;
	}
}

void func_800F0234_FF1E4(void) {
	D_80157F68 = 0;
	D_80157F8C = 0;
	D_80157F8E = 0;
	D_80157F70 = 0;
	D_80157F96 = 0;
	D_80047968 = 1;
}

s32 func_800F026C_FF21C(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	int temp_v0;
	s32 temp_v1;

	temp_v0 = arg0 - arg2;
	temp_v1 = arg1 - arg3;
	return (s32) sqrtf((f32) ((temp_v0 * temp_v0) + (temp_v1 * temp_v1)));
}

s32 func_800F02E4_FF294(void) {
	return 0;
}

void func_800F02EC_FF29C(s16 arg0)
{
  D_80157F4C = (void *) ((((s32) arg0) * 24) + ((s32) D_80157F58));
  D_80157F50 = (void *) ((s32)D_80157F4C + 0x18);
  D_80157F64 = *((s16 *) ((s32)D_80157F4C + 0xC));
  D_80157F54 = 0;
}

#ifdef NON_MATCHING
void func_800F0340_FF2F0(u8 *arg0, s16 arg1, s32 arg2)
{
  volatile long new_var;
  Unk84EECEffect *entry;
  s16 *entryS16;
  D_80157F58 = arg0;
  D_80157F5C = 0;
  D_80157F60 = (s16) arg1;
  D_80157F68 = arg2 - ((s16) (new_var = arg1));
  func_800F02EC_FF29C(D_80157F60 + D_80157F5C);
  entry = (entryS16 = D_80157F4C);
  entryS16 = (s16 *) entry;
  switch (entry->unk11)
  {
	case 0:
	  D_80157586 = entry->unk6;
	  entry = entryS16;
	  D_80157588 = entry->unk8;
	  D_8015758A = entry->unkA;
	  break;

	case 1:
	  D_80157586 = D_80052B34->unk0 >> 2;
	  D_80157588 = D_80052B34->unk2 >> 2;
	  D_80157588 += ((int) vehicleTypes[D_80052B34->unk1A].unk38) >> 3;
	  D_8015758A = D_80052B34->unk4 >> 2;
	  break;

	case 2:
	  D_80157586 = (buildingInstances[entryS16[7]].xCoord >> 2) + (u16) D_80159DE0;
	  D_80157588 = (buildingInstances[entryS16[7]].yCoord >> 2) + D_80159DE2;
	  D_80157588 += buildingTypes[buildingInstances[entryS16[7]].buildingType].unk14 >> 3;
	  D_8015758A = (u16) D_80159DE4 + (buildingInstances[entryS16[7]].zCoord >> 2);
	  break;

	case 3:
	  D_80157586 = vehicleInstances[entryS16[7]].unk0 >> 2;
	  D_80157588 = vehicleInstances[entryS16[7]].unk2 >> 2;
	  D_8015758A = vehicleInstances[entryS16[7]].unk4 >> 2;
	  break;

  }

  if (entry->unk10 == 0)
  {
	D_80157580 = D_80157586 + entryS16[0];
	D_80157582 = D_80157588 + entryS16[1];
	D_80157584 = D_8015758A + entryS16[2];
  }
  else
  {
	D_80157580 = entryS16[0];
	D_80157582 = entryS16[1];
	D_80157584 = entryS16[2];
  }
  D_80157590 = 3;
  D_8004DC60 = 0x25;
  D_80157FB0 = 0;
  D_80157FAE = D_80157FB0;
  D_80157FAC = D_80157FAE;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/FEC70/func_800F0340_FF2F0.s")
#endif

#ifdef NON_MATCHING_FF61C
s32 func_800F066C_FF61C(void) {
	static u8 orbitOffsetReservation[8];
	static f32 D_80157FC8;
	static s16 D_80157FCC;
	static s16 D_80157FCE;
	s32 finished;
	s16 z;
	f32 orbitXOffset;
	s16 x, y;
	s16 targetX, targetY, targetZ;
	struct {
		union { volatile s16 stored; s16 value; } z;
		union { volatile s16 stored; s16 value; } y;
		union { volatile s16 stored; s16 value; } x;
	} savedTarget;
	CutsceneCameraKeyframe *entry;
	f32 trig;
	f32 ratio;
	s32 frame;


	finished = 0;
	entry = D_80157F4C;

	switch (entry->targetMode) {
	case 0:
		savedTarget.x.stored = entry->targetX;
		targetY = entry->targetY;
		targetX = savedTarget.x.stored;
		savedTarget.z.stored = entry->targetZ;
		targetZ = savedTarget.z.stored;
		break;
	case 1:
		savedTarget.x.stored = D_80052B34->unk0 >> 2;
		targetY = D_80052B34->unk2;
		targetX = savedTarget.x.stored;
		targetY >>= 2;
		targetY += vehicleTypes[D_80052B34->unk1A].unk38 >> 3;
		savedTarget.z.stored = D_80052B34->unk4 >> 2;
		targetZ = savedTarget.z.stored;
		break;
	case 2: {
		BuildingInstance *building = &buildingInstances[entry->targetIndex];
		s32 rawZ;
		s16 height;

		u16 shiftedX = (s32)(s64)building->xCoord >> 2;
		y = buildingInstances[entry->targetIndex].yCoord;
		savedTarget.x.stored = (u32)(shiftedX + D_80159DE0) & 0xFFFF;
		targetY = ((s32)(s64)y >> 2) + D_80159DE2;
		height = (s32)(s64)buildingTypes[building->buildingType].unk14 >> 3;
		targetY += height;
		rawZ = (building->zCoord >> 2) + D_80159DE4;
		savedTarget.z.stored = rawZ;
		targetZ = rawZ;
		/* Prioritize the left shift over the halfword store in the IDO scheduler. */
#line 101
		targetZ = (u32)targetZ & 0xFFFF;
		targetX = (u32)savedTarget.x.value & 0xFFFF;
		break;
	}
	case 3: {
		VehicleInstance *vehicle = &vehicleInstances[entry->targetIndex];

		targetX = vehicle->unk0 >> 2;
		targetY = vehicle->unk2 >> 2;
		targetZ = vehicle->unk4 >> 2;
		break;
	}
	default:
		targetZ = savedTarget.z.value;
		targetX = savedTarget.x.value;
		targetY = savedTarget.y.value;
		break;
	}

	switch (entry->cameraMode) {
	case 0: {
		s16 x_0, y_0, z_0;

		x_0 = (s32)(s64)entry->cameraX;
		y_0 = entry->cameraY;
		z_0 = entry->cameraZ;
		/* IDO counts these comparisons when allocating the camera coordinates. */
		if ((targetY == entry->targetY) || (targetY == entry->targetY)) {}
		D_80157586 = targetX;
		D_80157588 = targetY;
		D_8015758A = (s64)targetZ;
		D_80157580 = (s32)(s64)D_80157586 + x_0;
		D_80157582 = D_80157588 + y_0;
		D_80157584 = (s64)D_8015758A + z_0;
		D_80157FC0 = x_0;
		D_80157FC2 = y_0;
		D_80157FC4 = z_0;
		break;
	}
	case 3:
		if ((s32)(s64)D_80157F54 == 0) {
			D_80068080 = 8;
		}
		/* fall through */
	case 2:
		D_80157580 = entry->cameraX;
		D_80157582 = entry->cameraY;
		D_80157584 = entry->cameraZ;
		D_80157586 = targetX;
		D_80157588 = targetY;
		D_8015758A = targetZ;
		break;
	case 4: {
		s16 x_1, y_1, z_1;
		s32 frameDuration;

		D_80157F78 = 0.0f;
		frame = D_80157F54;
		D_80157F74 = 0;
		x_1 = entry->cameraX;
		y_1 = entry->cameraY;
		z_1 = entry->cameraZ;

		frameDuration = D_80157F64;
		if (frameDuration == frame) {
			D_80157580 = x_1;
			D_80157582 = y_1;
			D_80157584 = z_1;
			D_80157586 = targetX;
			D_80157588 = targetY;
			D_8015758A = targetZ;
		} else {
			savedTarget.z.stored = targetZ;
			savedTarget.x.stored = targetX;
			ratio = (f32)D_80157F54 / (f32)(u32)D_80157F64;
			D_80157580 = (s16)(D_80157580 + (x_1 - D_80157580) * ratio);
			D_80157582 = (s16)(D_80157582 + (y_1 - D_80157582) * ratio);
			D_80157584 = (s16)(D_80157584 + (z_1 - D_80157584) * ratio);
			targetX = D_80157586;
			targetZ = D_8015758A;
			D_80157586 = (s16)(targetX + (savedTarget.x.stored - targetX) * ratio);
			D_80157588 = (s16)(D_80157588 + (targetY - D_80157588) * ratio);
			D_8015758A = (s16)(targetZ + (savedTarget.z.stored - targetZ) * ratio);
		}
		break;
	}
	case 1:
		if (D_80157F54 == 0) {
			D_80157FC8 = 0.0f;
			x = entry->cameraX - (s32)(s64)targetX;
			y = (s64)entry->cameraY - targetY;
			z = entry->cameraZ;
			D_80157FC0 = x;
			D_80157FC2 = y;
			D_80157FC4 = z - targetZ;
		}

		if (targetY == entry->targetY || targetY == entry->cameraY) {
		}
		/* IDO counts these address references during register allocation. */
		if ((void *)entry != (void *)&D_80157586) {}
		if ((void *)entry != (void *)&D_80157586) {}
		savedTarget.y.stored = targetY;
		savedTarget.x.stored = targetX;
		savedTarget.z.stored = targetZ;
		trig = sinf((f32)((D_80157FC8 * 6.283185307) / 360.0));
		ratio = cosf((f32)((D_80157FC8 * 6.283185307) / 360.0));
		x = D_80157FC0;
		z = D_80157FC4;
		orbitXOffset = (0,ratio) * z + x * trig;
		trig = cosf((f32)((D_80157FC8 * 6.283185307) / 360.0));
		ratio = sinf((f32)((D_80157FC8 * 6.283185307) / 360.0));

		targetX = (s64)savedTarget.x.stored;
		z = D_80157FC4;
		y = D_80157FC2;
		x = D_80157FC0;
		D_80157586 = targetX;
		targetY = savedTarget.y.stored;
		targetZ = (u32)savedTarget.z.value & 0xFFFF;
		D_80157588 = targetY;
		D_8015758A = targetZ;
		D_80157580 = (s16)((f32)D_80157586 + orbitXOffset);
		D_80157582 = D_80157588 + y;
		D_80157584 = (s16)((f32)D_8015758A + ((x * trig) - (ratio * z)));

		if (D_80157F54 < 8) {
			D_80157FC8 += (f32)(D_80157F54 / 2);
		} else {
			u32 remainingFrames = (u32)D_80157F64 - (u32)D_80157F54;

			if (remainingFrames < 8U) {
				D_80157FC8 += (f32)(remainingFrames >> 1);
			} else {
				D_80157FC8 += 4.0f;
			}
		}
		break;
	}

	D_80157586 = D_80157586 + D_80157FAC;
	D_80157588 = D_80157588 + D_80157FAE;
	D_8015758A = D_8015758A + D_80157FB0;

	if (D_80157F64 == ++D_80157F54) {
		D_80157F5C++;
		if (D_80157F5C == D_80157F68) {
			finished = 1;
		} else {
			func_800F02EC_FF29C((s16)(D_80157F60 + D_80157F5C));
		}
	}

	targetX = D_80157586;
	D_80157F08.unkC = targetX;
	D_80157F08.unk10 = D_80157588;
	targetZ = D_8015758A;
	D_80157F08.unk14 = targetZ;
	D_80157F08.unk3C = targetX * 4;
	D_80157F08.unk3E = targetZ * 4;
	D_80157F08.unk18 = targetX;
	D_80157F08.unk1A = targetZ;
	D_80157F08.unk0 = (f32)(D_80157580 * 4);
	D_80157F08.unk4 = (f32)(D_80157582 * 4);
	D_80157F08.unk8 = (f32)(D_80157584 * 4);

	if (((D_80157FCE >> 8) != (targetZ >> 8)) || ((D_80157FCC >> 8) != (targetX >> 8))) {
		func_80076FCC_85F7C(targetX, targetZ);
		D_80157FCE = targetZ = D_8015758A;
		D_80157FCC = targetX = D_80157586;
	}

	func_800B4050_C3000((targetX >> 6) + 0x77, (targetZ >> 6) + 0x77, (u8 *)D_801FEA30, 0);
	return finished;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/FEC70/func_800F066C_FF61C.s")
#endif

// Spawn boss after delay and dialogue
void func_800F1004_FFFB4(void) {
	AlienInstance *alien;
	s16 z;

	D_80157FD0--;
	if ((D_80157FD0 == 0x32) && (D_80047F9C != 5)) {
		switch (currentLevel) {
			case LEVEL_GREECE:
				func_80018D7C_1997C(0xFF);
				break;
			case LEVEL_JAVA:
				func_80018D7C_1997C(0xE2);
				break;
			case LEVEL_AMERICA:
				func_80018D7C_1997C(0xFA);
				break;
			case LEVEL_SIBERIA:
				func_80018D7C_1997C(0xE6);
				break;
			case LEVEL_COMET:
				func_80018D7C_1997C(0xFA);
				break;
		}

		func_80014A3C_1563C(0, 0x17B, 0.0f, 0, 0.3f);
	}

	if (D_80157FD0 <= 0) {
		alien = &alienInstances[D_80157F94];
		z = alien->unk4 - 0x3E8;
		func_800B0710_BF6C0(alien->unk0, z);
		func_800074BC_80BC(func_800F1004_FFFB4);
	}
}

#ifdef NON_MATCHING
// Boss fight cutscene & setup
void func_800F1134_1000E4(void) {
	s32 p3X;
	s32 p3Z;
	s16 minX;
	s16 maxX;
	s16 minZ;
	s16 maxZ;
	s16 y;
	s16 ringY;
	s32 timer;
	s32 sfxVol;
	s16 i;
	s16 angle;
	s16 xOffset;
	s16 zOffset;
	u8 color[4];
	Unk80152B80 pos;
	s32 localDl[3];
	BuildingInstance *building;
	AlienInstance *alien;
	VehicleInstance *vehicle;

	localDl[0] = D_8013FCC4_14EC74[0];
	localDl[1] = D_8013FCC4_14EC74[1];
	localDl[2] = D_8013FCC4_14EC74[2];

	func_80013468_14068(0x11);
	D_80157FA4 = &buildingInstances[func_80120634_12F5E4()];
	D_80159DDF = func_80120634_12F5E4();

	alien = &alienInstances[D_80157F94];
	p3X = alien->unk0;
	p3Z = alien->unk4;

	if (currentLevel == LEVEL_AMERICA) {
		building = &buildingInstances[D_80159DDF];
		y = building->xCoord;
		ringY = building->zCoord;
		maxZ = ringY + 0x64;
		maxX = y + 0x78;
		minZ = ringY - 0x50;
		minX = y - 0x78;
		p3Z = minZ;
		p3X = y;
	} else {
		building = &buildingInstances[D_80159DDF];
		y = building->xCoord;
		ringY = building->zCoord;
		p3X = y - 0x64;
		maxX = y + 0x64;
		maxZ = ringY + 0x78;
		minX = y + 0x50;
		minZ = ringY - 0x78;
		p3Z = ringY;
	}

	if ((u16)D_80157F8C < 10) {
		switch ((u16)D_80157F8C) {
		case 0:
			D_80157FA8 = 1;
			D_801493E0 = 0;

			if (D_80157F8E == 1) {
				func_8012B21C_13A1CC();
			}

			if (D_80157F8E == 0x5E) {
				func_800B91C8_C8178((p3X >> 8) + 1, p3Z >> 8, 0x14);
			}

			if (D_80157F8E >= 0x5B) {
				if ((D_80052A8C & 1) == 0) {
					func_80014A3C_1563C(0, 0xEB, 0.0f, 0, 0.8f);
					func_80135D08_144CB8(10.0f, 1, 1, 1);
				}
			}

			timer = D_80157F8E + 1;
			D_80157F8E = timer;
			if (timer >= 0x8D) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 1:
			if (D_80157F8E == 0xA) {
				building = D_80157FA4;
				y = building->yCoord;
				p3X = building->xCoord;
				p3Z = building->zCoord;

				D_80157FD2 = func_800CD1F8_DC1A8(p3X, y, p3Z, 0, -35, 0);
				D_80157FD4 = func_800CD1F8_DC1A8(maxX, y, maxZ, 0, -35, 0);
				D_80157FD6 = func_800CD1F8_DC1A8(minX, y, minZ, 0, -35, 0);
				func_80135D44_144CF4(p3X, y, p3Z, 3.0f);

				func_800DF9C8_EE978(p3X, y, p3Z, 0x32, 0, 0);
				func_800DF9C8_EE978(maxX, y, maxZ, 0x32, 0, 0);
				func_800DF9C8_EE978(minX, y, minZ, 0x32, 0, 0);
			}

			timer = D_80157F8E + 1;
			D_80157F8E = timer;
			if (timer >= 0xD) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 2:
			if (D_80157F8E >= 0x15) {
				building = D_80157FA4;
				building->yCoord += D_80157F8E / 10;
			}

			building = D_80157FA4;
			y = building->yCoord;
			func_800CD2E8_DC298(p3X, y, p3Z, D_80157FD3);
			func_800CD2E8_DC298(maxX, y, maxZ, D_80157FD5);
			func_800CD2E8_DC298(minX, y, minZ, D_80157FD7);

			timer = D_80157F8E + 1;
			D_80157F8E = timer;
			if (timer >= 0x60) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 3:
			y = func_800B84D0_C7480(p3X, p3Z) >> 8;
			if (D_80157F8E == 0) {
				building = D_80157FA4;
				building->xCoord = p3X;
				building->zCoord = p3Z;
				building->yCoord = y;
			}

			D_80159DE2 = 200 - (D_80157F8E * 2);
			if ((s16)D_80159DE2 < 0) {
				D_80159DE2 = 0;
			}

			building = D_80157FA4;
			y = building->yCoord + (D_80159DE2 * 4);
			if (D_80159DE2 == 2) {
				building = &buildingInstances[D_80159DDF];
				func_80135D44_144CF4(building->xCoord, building->yCoord, building->zCoord, 2.0f);
			}

			if (D_80157F8E < 0x64) {
				func_800CD2E8_DC298(p3X, y, p3Z, D_80157FD3);
				func_800CD2E8_DC298(maxX, y, maxZ, D_80157FD5);
				func_800CD2E8_DC298(minX, y, minZ, D_80157FD7);
			}

			timer = D_80157F8E + 1;
			D_80157F8E = timer;
			if (timer >= 0x6A) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 4:
			D_80052ACC = 0;
			D_8015930E = 0;

			building = D_80157FA4;
			y = building->yCoord;
			p3X = building->xCoord;
			p3Z = building->zCoord;

			if (D_80157F8E == 0) {
				func_800CD390_DC340(D_80157FD3);
				func_800CD390_DC340(D_80157FD5);
				func_800CD390_DC340(D_80157FD7);
			}

			func_800C56A4_D4654(p3X, y + 0x32, p3Z, 0x190, 0x14, 5, 2);

			timer = D_80157F8E + 1;
			D_80157F8E = timer;
			if (timer >= 0x33) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 5:
			building = D_80157FA4;
			y = building->yCoord;
			p3X = building->xCoord;
			p3Z = building->zCoord;

			if (D_80157F8E < 0x1E) {
				func_800C56A4_D4654(p3X, y + 0x32, p3Z, 0x190, 0x14, 5, 2);
			}

			if ((D_80157F8E % 0x12) == 0) {
				func_800D05A8_DF558(p3X, y, p3Z, 0x3E8, 0xFA, 0x64, 0x14);
				ringY = y + 0x1E;
				func_800DEE5C_EDE0C(p3X, ringY, p3Z, 0xA, 2);
				func_800DEE5C_EDE0C(p3X, ringY, p3Z, 0xD, 1);

				color[0] = 0xFA;
				color[1] = 0x64;
				color[2] = 0x14;
				pos.unk0 = p3X;
				pos.unk2 = y;
				pos.unk4 = p3Z;
				func_800B99A8_C8958(&pos, 0x1E, 0x1F4, 0xFF, color, 0x50, 0xA, 0);
			}

			if (D_80157F8E == 0x30) {
				func_800DF9C8_EE978(p3X, y, p3Z, 0x190, 0, localDl);
			}

			timer = D_80157F8E + 1;
			D_80157F8E = timer;
			if (timer >= 0x33) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 6:
			building = D_80157FA4;
			y = building->yCoord;
			p3X = building->xCoord;
			p3Z = building->zCoord;

			D_80052ACA = 2;
			func_8012D84C_13C7FC();

			if (D_80157F8E == 0) {
				D_801493E0 = 1;
				if (D_80052B34->unk1A != 0) {
					func_800FDEA8_10CE58(D_80052B2C, 1);
				}

				func_8011592C_1248DC(p3X, p3Z);
				func_800FD510_10C4C0(0, 0x72);

				for (i = 0; i < D_80158FD8; i++) {
					vehicle = &vehicleInstances[D_80158E80[i]];
					if (vehicle->unk1A != 0x13) {
						vehicle->unk20 &= 0x7FFF;
					}
				}

				D_8013FD78_14ED28->unkA = 0;
				func_800FAD10_109CC0();
				D_80052B34->unk6 = -0x41E3;

				ringY = y + 0x1E;
				func_800DEE5C_EDE0C(p3X, ringY, p3Z, 0xD, 2);
				func_800DEE5C_EDE0C(p3X, ringY, p3Z, 0xF, 1);
				func_800E35E0_F2590(0xFF);
			}

			timer = D_80157F8E;
			D_80157F8E = timer + 1;
			if (timer > 0) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 7:
			building = D_80157FA4;
			y = building->yCoord;
			p3X = building->xCoord;
			p3Z = building->zCoord;

			if (D_80157F8E < 5) {
				sfxVol = (0xFF - (D_80157F8E * 0x33)) & 0xFF;
				func_800E35E0_F2590(sfxVol);
			}

			ringY = y + 0x1E;
			for (i = 0; i < 6; i++) {
				if (D_80157F8E == 0) {
					D_80157FDC[i] = func_800DA6F0_E96A0(p3X, ringY, p3Z, 1);
				} else {
					angle = (i * 0x2AAA) & 0xFFFF;
					xOffset = (s16)((coss(angle) / 32768.0) * (D_80157F8E * 40));
					zOffset = (s16)((sins(angle) / 32768.0) * (D_80157F8E * 40));
					func_800D9B14_E8AC4(p3X + xOffset, ringY, p3Z + zOffset, D_80157FDC[i]);
				}
			}

			timer = D_80157F8E + 1;
			D_80157F8E = timer;
			if (timer >= 0x47) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 8:
			if (D_80157F8E == 0) {
				for (i = 0; i < 6; i++) {
					func_800D9C60_E8C10(D_80157FDC[i]);
				}
				D_80159DDF = 0xFF;
			}

			timer = D_80157F8E + 1;
			D_80157F8E = timer;
			if (timer >= 0x15) {
				D_80157F8E = 0;
				D_80157F8C++;
			}
			break;

		case 9:
			D_80157FD0 = 100;
			func_80007410_8010(func_800F1004_FFFB4);
			func_800FAC90_109C40();
			return;
		}
	}

	return;
}
#else
#if defined(VERSION_US)
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/FEC70/func_800F1134_1000E4.s", "src.us/overlay_gameplay/outside/FEC70_remaining_late_rodata.us.s")
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/FEC70/func_800F1134_1000E4.s", "src.us/overlay_gameplay/outside/FEC70_remaining_late_rodata.eu.s")
#endif
#endif

// Cutscene - Alpha 1 landing at start of levels 1-4 (Comet uses func_802D67A8 in Comet overlay)
int func_800F1DDC_100D8C(void) {
	f32 speed;
	s32 level;
	s16 p3X;
	s16 p3Z;
	s16 maxX;
	s16 maxZ;
	s16 minX;
	s16 minZ;
	f32 f12;
	f32 temp;
	s32 x;
	s32 z;
	s32 flag;
	s32 once;

	flag = 1;
	D_80157F96 = flag;
  // cutscene would be skippable, but D_80031B50 is never set to 1 in finished game
	if ((currentControllerStates[0].button & 0x9000) && ((s16)D_80157F8C > 0) && (D_80031B50_32750 == flag)) {
		buildingInstances[D_80159DDF].yCoord =
			func_800B84D0_C7480(buildingInstances[D_80159DDF].xCoord, buildingInstances[D_80159DDF].zCoord) >> 8;
		D_80159DE2 = 0;

		func_800CD390_DC340(D_80157F9E);
		func_800CD390_DC340(D_80157F9F);
		func_800CD390_DC340(D_80157FA0);

		if (currentLevel == LEVEL_GREECE) {
			func_800FB44C_10A3FC(D_80052B34, -5296.0f);
			func_800FB484_10A434(D_80052B34, -7936.0f);
			func_800FB468_10A418(D_80052B34, (f32)func_800F9F00_108EB0(D_80052B34->unk0, D_80052B34->unk4));
		} else if (currentLevel == LEVEL_JAVA) {
			func_800FB44C_10A3FC(D_80052B34, -256.0f);
			func_800FB484_10A434(D_80052B34, 26624.0f);
			func_800FB468_10A418(D_80052B34, (f32)func_800F9F00_108EB0(D_80052B34->unk0, D_80052B34->unk4));
		} else if (currentLevel == LEVEL_AMERICA) {
			func_800FB44C_10A3FC(D_80052B34, -19712.0f);
			func_800FB484_10A434(D_80052B34, 13312.0f);
			func_800FB468_10A418(D_80052B34, (f32)func_800F9F00_108EB0(D_80052B34->unk0, D_80052B34->unk4));
		} else {
			func_800FB44C_10A3FC(D_80052B34, 14336.0f);
			func_800FB484_10A434(D_80052B34, 24576.0f);
			func_800FB468_10A418(D_80052B34, (f32)func_800F9F00_108EB0(D_80052B34->unk0, D_80052B34->unk4));
		}

		f12 = 0.0f;
		D_8015EA2C = f12;
		func_800F0234_FF1E4();
		return 1;
	}

	D_80159DDF = func_80120634_12F5E4();

	level = currentLevel;
	if (level == LEVEL_AMERICA) {
		x = buildingInstances[D_80159DDF].xCoord;
		z = buildingInstances[D_80159DDF].zCoord;
		p3Z = z + 0x64;
		maxX = x + 0x78;
		maxZ = z - 0x50;
		minX = x - 0x78;
		minZ = maxZ;
		p3X = x;
	} else {
		x = buildingInstances[D_80159DDF].xCoord;
		z = buildingInstances[D_80159DDF].zCoord;
		p3X = x - 0x64;
		maxX = x + 0x64;
		maxZ = z + 0x78;
		minX = x + 0x50;
		minZ = z - 0x78;
		p3Z = z;
	}

	switch (D_80157F8C) {
	case 0:
		D_801493E0 = 0;
		if (D_80157F8E == 0) {
			func_80013468_14068(0);
		}

		D_80159DE0 = 0;
		D_80159DE2 = 0;
		D_80159DE4 = 0;
		D_8005254C = D_80159DDF << 4;
		D_80157F92 = 0;
		f12 = 0.0f;
		D_8015EA2C = f12;

		if (currentLevel == LEVEL_AMERICA) {
			D_80052B34->unkE = 0x4000;
		} else {
			D_80052B34->unkE = -0x8000;
		}

		func_800FB44C_10A3FC(D_80052B34, (f32)buildingInstances[D_80159DDF].xCoord);
		func_800FB468_10A418(D_80052B34, f12);
		func_800FB484_10A434(D_80052B34, (f32)buildingInstances[D_80159DDF].zCoord);

		D_80157F8E = 0;
		D_80157F9E = D_80157F9F = D_80157FA0 = 0xFF;
		D_80157F8C = (s16)D_80157F8C + 1;

		if (currentLevel == LEVEL_GREECE) {
			temp = 15.9f;
			D_80159DE2 = 0x28F;
			D_80157FE4_Write = temp;
		} else {
			temp = 13.7f;
			D_80159DE2 = 0x1F4;
			D_80157FE4_Write = temp;
		}
		/* Retain the float temporary through IDO's branch-store optimization. */
		if (temp) {
		}

		D_80157F9E = func_800CD1F8_DC1A8(p3X, buildingInstances[D_80159DDF].yCoord, p3Z, 0, -35, 0);
		D_80157F9F = func_800CD1F8_DC1A8(maxX, buildingInstances[D_80159DDF].yCoord, maxZ, 0, -35, 0);
		D_80157FA0 = func_800CD1F8_DC1A8(minX, buildingInstances[D_80159DDF].yCoord, minZ, 0, -35, 0);

		if (D_80157F8E++ >= 2) {
			D_80157F8E = 0;
			D_80157F8C = (s16)D_80157F8C + 1;
		}
		break;

	case 1:
		speed = D_80157FE4;
		D_80159DE2 -= speed;
		if (((D_80159DE2 >= 0x8001) || (D_80159DE2 == 0)) && (speed != 0.0f)) {
			D_80159DE2 = 0;
			level = buildingInstances[D_80159DDF].yCoord;
			/* Keep call setup ahead of the store; IDO removes this single-pass loop. */
			for (once = 1; once; func_80135D44_144CF4(x, level, z, 2.0f), once = 0) {
				D_80157FE4_Write = 0.0f;
			}
		} else if (speed != 0.0f) {
			speed -= 0.2;
			D_80157FE4_Write = speed;
		}

		func_800CD2E8_DC298(p3X, (s16)(buildingInstances[D_80159DDF].yCoord + (D_80159DE2 * 4)), p3Z, D_80157F9E);
		func_800CD2E8_DC298(maxX, (s16)(buildingInstances[D_80159DDF].yCoord + (D_80159DE2 * 4)), maxZ, D_80157F9F);
		func_800CD2E8_DC298(minX, (s16)(buildingInstances[D_80159DDF].yCoord + (D_80159DE2 * 4)), minZ, D_80157FA0);

		if (D_80157F8E++ >= 0x79) {
			D_80157F8E = 0;
			D_80157F8C = (s16)D_80157F8C + 1;
		}
		break;

	case 2:
		if (D_80157F8E == 0) {
			func_800CD390_DC340(D_80157F9E);
			func_800CD390_DC340(D_80157F9F);
			func_800CD390_DC340(D_80157FA0);
			D_801493E0 = 1;
		}

		D_8015EA2C += 0.04511;

		if (D_80157F8E++ >= 0x14) {
			D_80157F8E = 0;
			D_80157F8C = (s16)D_80157F8C + 1;
		}
		break;

	case 3:
		func_800EC3A0_FB350(4);

		if (D_80157F8E++ >= 2) {
			D_80157F8E = 0;
			D_80157F8C = (s16)D_80157F8C + 1;
		}
		break;

	case 4:
		func_800EC484_FB434(D_80052B34, currentControllerStates);
		func_800EB0C8_FA078(D_80052B34);

		temp = func_800B84D0_C7480(D_80052B34->unk0, D_80052B34->unk4) >> 8;
		if (D_80157F8E < 0x17) {
			func_800FB468_10A418(D_80052B34, ((f32)temp + 44.0f) - ((f32)(D_80157F8E * 2)));
		} else {
			if (D_8015EA2C >= 0.0) {
				D_8015EA2C -= 0.022;
			} else {
				D_8015EA2C = 0.0f;
				D_8005254C = -1;
			}
			func_800FB468_10A418(D_80052B34, (f32)temp);
		}

		if (D_80157F8E++ >= 0xB5) {
			D_80157F8E = 0;
			D_80157F8C = (s16)D_80157F8C + 1;
		}
		break;

	case 5:
		D_80159DDF = 0xFF;
		D_8015EA2C = 0.0f;
		D_8005254C = -1;
		return 1;
	}

	return 0;
}


static void func_800F2888_101838(void) {
}
