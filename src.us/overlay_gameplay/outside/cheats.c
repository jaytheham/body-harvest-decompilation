#include <ultra64.h>
#include "common.h"

// enableCheatAnnull
void func_800731B0_82160(void)
{
	int new_var;
	AlienInstance *alien;
	s32 i;
	s32 temp;
	s32 adist;
	if (D_80052ACA == 2)
	{
		return;
	}
	if (!(currentControllerStates[0].button & BUTTON_D_LEFT))
	{
		return;
	}
	temp = 0xFE;
	alien = &alienInstances[temp];
	i = temp;
	do
	{
		if (((alien->specIndex >= 2) || ((alien->specIndex == 1) && (alien->unk24 == 1))) && (!(alien->unk20 & 0x100000)))
		{
			temp = alien->unk0 - D_80052B34->unk0;
			if (((temp >= 0) ? (temp) : (-temp)) < 0xA00)
			{
				new_var = alien->unk4 - D_80052B34->unk4;
				temp = new_var;
				adist = (temp >= 0) ? (temp) : (-temp);
				if (adist < 0xA00)
				{
					func_80088760_97710(alien);
				}
			}
		}
		alien--;
	} while (i--);
}

// func_800732C8_82278
void enableCheatFarewell() {
	D_80052AC8 = 2;
	D_80052AD0 = 0;
}

// func_800732E0_82290
void enableCheatArsenal() {
	func_801391DC_14818C(5, 0x3E7); // a0 = itemId, a1 = quantity. Machine gun
	if (currentLevel == LEVEL_GREECE) {
		func_801391DC_14818C(7, 3); // T. N. T.
		func_801391DC_14818C(8, -0x8000); // Sunshield
		func_801391DC_14818C(0xA, 0x64); // Tri-Spinner
		return;
	}
	if (currentLevel == LEVEL_JAVA) {
		func_801391DC_14818C(3, 0x64);
		func_801391DC_14818C(4, 0x32);
		func_801391DC_14818C(9, 0x14);
		func_801391DC_14818C(0xA, 0x64);
		return;
	}
	if (currentLevel == LEVEL_AMERICA) {
		func_801391DC_14818C(3, 0x64);
		func_801391DC_14818C(4, 0x32);
		func_801391DC_14818C(0xA, 0x64);
		return;
	}
	if (currentLevel == LEVEL_SIBERIA) {
		func_801391DC_14818C(3, 0x64);
		func_801391DC_14818C(4, 0x32);
		func_801391DC_14818C(6, 0x19);
		func_801391DC_14818C(0xA, 0x64);
		return;
	}
	func_801391DC_14818C(3, 0x64);
	func_801391DC_14818C(4, 0x32);
	func_801391DC_14818C(6, 0x19);
	func_801391DC_14818C(7, 3);
}

// func_80073428_823D8
void enableCheatDurable() {   
	D_80052B34->unk1C = (u16) vehicleSpecs[D_80052B34->unk1A].hitPoints;
	D_80052B34->unk3C = (s16) (vehicleSpecs[D_80052B34->unk1A].unk61 << 8);
	func_800FD410_10C3C0(&(vehicleSpecs[D_80052B34->unk1A]), &vehicleSpecs[0]);
}

// doWanderingCheatEffect
void func_800734AC_8245C() {
	s32 var_v0 = D_80052B34->unk0;
	s32 var_v1 = D_80052B34->unk4;

	D_801591AC = 5;
	var_v0 += currentControllerStates[0].stick_x * 4;
	var_v1 -= currentControllerStates[0].stick_y * 4;
	if (var_v0 < -0x6C00) {
		var_v0 = -0x6C00;
	}
	if (var_v1 < -0x6C00) {
		var_v1 = -0x6C00;
	}
	if (var_v0 >= 0x6C01) {
		var_v0 = 0x6C00;
	}
	if (var_v1 >= 0x6C01) {
		var_v1 = 0x6C00;
	}

	func_800FB44C_10A3FC(D_80052B34, (f32) var_v0);
	func_800FB468_10A418(D_80052B34, (f32) (func_800F9FAC_108F5C((s16) var_v0, (s16) var_v1) + 0xC8));
	func_800FB484_10A434(D_80052B34, (f32) var_v1);
	D_80052B34->unk6 = -0x4000;
	D_80052B34->unk22 = 0;
	D_80052B34->unk30 = 0.0f;
	D_80052B34->unk34 = 0.0f;
	D_80052B34->unk38 = 0.0f;
	D_80052B34->unkE = -0x4000;
	func_800FB430_10A3E0(D_80052B34, 0.0f);
	D_80052B34->unk20 = (u16) (D_80052B34->unk20 | 2);
	if (currentControllerStates[0].button & BUTTON_Z) {
		D_80052B34->unk20 = (u16) (D_80052B34->unk20 | 1);
		func_800762A8_85258(func_800734AC_8245C);
		D_801591AC = 0;
	}

}

// func_8007364C_825FC
void enableCheatWander(void) {
	func_8007622C_851DC(func_800734AC_8245C);
}

// func_80073670_82620
void enableCheatSnared() {
	D_8004D148 = 0;
}

// func_8007367C_8262C
void enableCheatFreed() {
	D_8004D148 = 1;
}

// func_8007368C_8263C
void enableCheatAlfa(void) {
	func_800A8A68_B7A18((s16) (D_80052B34->unk0 + 0x64), (s16) (D_80052B34->unk2 - 0xFA), D_80052B34->unk4, 0x15);
	func_800A8A68_B7A18((s16) (D_80052B34->unk0 + 0x64), (s16) (D_80052B34->unk2 + 0xFA), D_80052B34->unk4, 0x17);
	func_800A8A68_B7A18((s16) (D_80052B34->unk0 - 0xC8), (s16) (D_80052B34->unk2 - 0xC8), D_80052B34->unk4, 0x18);
	func_800A8A68_B7A18((s16) (D_80052B34->unk0 - 0xC8), (s16) (D_80052B34->unk2 + 0xC8), D_80052B34->unk4, 0x19);
}

// func_8007377C_8272C
void enableCheatSnuffle() {
	D_80052ACD ^= 4;
}

// func_80073794_82744
void enableCheatAward() {
	D_80047FA0 = 5;
}

// func_800737A4_82754
void enableCheatSurreal() {
	D_80159320 ^= 0x80;
}

// func_800737BC_8276C
void enableCheatDefender(void) {
	if (!(D_80052B34->unk20 & 0x80)) {
		func_800E5CF4_F4CA4(2, D_80149441);
		return;
	}
	func_800E5E3C_F4DEC(2, D_80149441);
}

// func_80073814_827C4
void enableCheatBleed() {
	func_80124118_1330C8(D_80052B34, 0x7FFF);
}

// enableCheatSuffer
// Turn Harvesters into Mutants
void func_8007383C_827EC(void) {
	s32 i;
	s32 index;
	AlienInstance *alien;

	for (i = D_8014D509; i < D_8014D50A; i++) {

		index = D_8014D408[i];
		alien = &alienInstances[index];
		if (alien->specIndex == 0x19) {
			alien->unk24 = 6;
			func_80087AAC_96A5C(index);
			func_800AFBA4_BEB54(alien->unk0, alien->unk4);
			alien->unk26 = 4;
		}
	}
}

// func_8007391C_828CC
void enableCheatWeasel() {
	D_80052ACD ^= 2;
}

//func_80073934_828E4
void enableCheatUseful() {
	s32 temp_v0;

	temp_v0 = (s16) D_80048026 >> ((currentLevel * 3) - 3);
	if (!(temp_v0 & 1)) {
		D_8004DC5E += 1;
	}
	if (!(temp_v0 & 2)) {
		D_8004DC5E += 1;
	}
	if (!(temp_v0 & 4)) {
		D_8004DC5E += 1;
	}
	D_80048026 |= 7 << ((currentLevel * 3) - 3);
}

// func_800739B8_82968
void enableCheatDwarf() {
	D_80157A3C = 0x68;
}

// func_800739C8_82978
void enableCheatBanana() {
	D_80157A3C = 0x22;
}

// func_800739D8_82988
void enableCheatDundee() {
	func_800EA2BC_F926C();
}

// func_800739F8_829A8
void enableCheatLard() {
	D_8013FCD0 = 1;
}

// func_80073A08_829B8
void enableCheatFeeble() {
	s32 x = D_8013BD04;
	D_8013BD04 = x == 0;
}

// addCharToCheatInputBuffer
// https://decomp.me/scratch/ms2Ub
#ifdef NON_MATCHING
void func_80073A20_829D0(u8 arg0) {
  u8 *var_v0;
  int new_var;
  s32 haveShiftedAllChars = 1;
  if (isCheatingEnabled == 0)
  {
	return;
  }
  haveShiftedAllChars &= 1;
  if (haveShiftedAllChars != 0)
  {
	var_v0 = &cheatInputBuffer[9]; do
	{
		new_var = var_v0 < &cheatInputBuffer[2];
		var_v0 -= 1;
		*(var_v0 + 1) = *var_v0;
		haveShiftedAllChars = new_var;
	}
	while (!haveShiftedAllChars);
  }
  cheatInputBuffer[0] = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073A20_829D0.s")
#endif

// initCheating
void func_80073A74_82A24(void) {
	s32 inputBufferIndex;
	u8 saveFileName[7];

	inputBufferIndex = 0xA;
	getSaveFileName(currentSaveFileIndex, saveFileName);
	while (inputBufferIndex--) {
		cheatInputBuffer[inputBufferIndex] = '-';
	}
	D_8014945C = 0;
	if ((saveFileName[0] == 'I') &&
		(saveFileName[1] == 'C') && 
		(saveFileName[2] == 'H') &&
		(saveFileName[3] == 'E') &&
		(saveFileName[4] == 'A') &&
		(saveFileName[5] == 'T')) {
		isCheatingEnabled = 1;
		return;
	}
	isCheatingEnabled = 0;
}

// activateCheat
#ifdef NON_MATCHING
void func_80073B30_82AE0(s32 arg0) {
	func_8001A650_1B250((s16) (arg0 + 0x77));
	((void (*)(void)) D_8013B94C[arg0 * 4])();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073B30_82AE0.s")
#endif

#ifdef NON_MATCHING
void func_80073B78_82B28(void) {
	u8 *var_s1;
	s32 temp_v0;
	s32 var_a0;
	s32 var_a2;
	s32 var_s0;
	u8 *var_v1;
	u8 temp_t2;
	u8 temp_t9;
	u8 *var_v0;

	if ((currentControllerStates[0].button == 0) || (D_8014945C != 1)) {
		if ((currentControllerStates[0].button != 0) && (D_8014945C == 0)) {
			switch ((s32) currentControllerStates[0].button) {
			case 0x8000:
				func_80073A20_829D0(0x61);
				break;
			case 0x4000:
				func_80073A20_829D0(0x62);
				break;
			case 0x2:
				func_80073A20_829D0(0x77);
				break;
			case 0x4:
				func_80073A20_829D0(0x73);
				break;
			case 0x8:
				func_80073A20_829D0(0x6E);
				break;
			case 0x1:
				func_80073A20_829D0(0x65);
				break;
			case 0x2000:
				func_80073A20_829D0(0x66);
				break;
			case 0x800:
				func_80073A20_829D0(0x75);
				break;
			case 0x400:
				func_80073A20_829D0(0x64);
				break;
			case 0x200:
				func_80073A20_829D0(0x6C);
				break;
			case 0x100:
				func_80073A20_829D0(0x72);
				break;
			}
			D_8014945C = 1;
		} else {
			D_8014945C = 0;
		}
		var_s1 = &D_8013BA80[0];
		var_s0 = 0x14;
		do {
			var_a2 = 4;
			if (*(u8*)(var_s1 + 4) != 0) {
				do {
					temp_v0 = var_a2 + 1;
					temp_t2 = D_8013B940[var_s0][temp_v0];
					var_a2 = temp_v0;
				} while (temp_t2 != 0);
			}
			var_a0 = var_a2 - 1;
			if (var_a2 != 0) {
				var_v0 = &D_8013B940[var_s0][var_a2 - var_a0];
				var_v1 = &cheatInputBuffer[var_a0];
loop_check:
				temp_t9 = *(var_v0 - 1);
				var_v0 += 1;
				var_v1 -= 1;
				if (temp_t9 == *var_v1) {
					var_a0 -= 1;
					if (var_a0 != 0) {
						goto loop_check;
					}
				}
			}
			if (var_a0 == -1) {
				func_80073B30_82AE0(var_s0);
				func_80073A74_82A24();
			}
			var_s1 -= 0x10;
			var_s0 -= 1;
		} while (var_s0 != 0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/cheats/func_80073B78_82B28.s")
#endif
