#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80073DC0_82D70.s")

// Resets a bunch of memory? For missions?
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074204_831B4.s")

// https://decomp.me/scratch/igaHA
#ifdef NON_MATCHING
s32 func_8007447C_8342C(u8 arg0) {
	s32 var_v0 = arg0 == 0x98;
	if (var_v0 == 0) {
		var_v0 = arg0 == 0x9A;
		if (var_v0 == 0) {
			var_v0 = arg0 == 0x99;
			if (var_v0 == 0) {
				var_v0 = arg0 == 0x9B;
				if (var_v0 == 0) {
					var_v0 = arg0 == 0xAD;
					if (var_v0 == 0) {
						var_v0 = arg0 == 0xAF;
					}
				}
			}
		}
	}
	return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_8007447C_8342C.s")
#endif

// https://decomp.me/scratch/aFHOH
#ifdef NON_MATCHING
s32 func_800744E0_83490(s32 arg0) {
	return arg0 >= 0x9C && arg0 < 0xA6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800744E0_83490.s")
#endif

// readMissionByteWithIncrement
u8 func_80074500_834B0(void) {
	
	D_801494BC = *D_801494B8;
	D_801494B8 += 1;
	return D_801494BC;
}

// readMissionByteWithIncrementCopy
s32 func_8007452C_834DC(void) {
	
	D_801494BC = *D_801494B8;
	D_801494B8 += 1;
	return D_801494BC;
}

// readMissionByteWithoutIncrement
u8 func_80074558_83508(void) {
	D_801494BC = *D_801494B8;
	return D_801494BC;
}

// readMissionObject
// Needs jumptable data
#ifdef NON_MATCHING
void func_80074578_83528(u8 *arg0) {
	arg0[0] = func_80074500_834B0();

	switch (arg0[0]) {
		case 0x98:
		case 0x99:
		case 0x9A:
		case 0x9B:
		case 0xAF:
			arg0[1] = func_8007452C_834DC();
			break;
		case 0xAD:
			arg0[1] = func_8007452C_834DC();
			arg0[2] = func_8007452C_834DC();
			break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074578_83528.s")
#endif

s32 func_800745F0_835A0(void) {
	func_80074578_83528(&D_80149AF8[D_80149B40 * 3]);
	return D_80149B40++ & 0xFF;
}

void func_8007463C_835EC(void) {
	u8 *entry;

	entry = D_801497C8 + D_80149B30 * 3;
	if (++D_80149B30 >= 0xFE) {
		osSyncPrintf(D_801411F0);
		D_80149B4A = 1;
	}
	entry[0] = func_80074500_834B0();
	entry[1] = func_8007452C_834DC();
	if (entry[0] == 0x9E) {
		if (func_80074558_83508() == 0xB4) {
			func_80074500_834B0();
			entry[2] = func_800745F0_835A0();
		}
	} else {
		entry[2] = 0;
	}
}

void func_800746F8_836A8(void) {
	u8 *temp_a1;

	temp_a1 = D_801497C8 + D_80149B30 * 3;
	if (++D_80149B30 >= 0xFE) {
		osSyncPrintf(D_8014121C, temp_a1);
		D_80149B4A = 1;
	}
	*temp_a1 = 0xA9;
}

// readMissionByteWithIncrementCopyWrapper
void func_80074768_83718(void) {
	*(&D_8004D160 + (D_80149B44 * 2)) = func_8007452C_834DC();
	D_80149B44 += 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800747A8_83758.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074970_83920.s")

// readMissionInfo
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074B2C_83ADC.s")

// guess_readMissionCondition
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074CA0_83C50.s")

// readMissionConditions
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80074FA8_83F58.s")

#ifdef NON_MATCHING
void func_80075148_840F8(void) {
	s32 count;
	MissionCondEntry *entry;
	s16 matchId;
	
	count = D_80149B28;
	if (count != 0) {entry = &D_801494C0[--count], matchId = D_80149B48;do {
			if (entry->unk1 == matchId && entry->unk0 == 1) {
				entry->unk4 = (u8)D_80149B30;
			}
			entry--;
		} while (count--);
	}
	
	while (func_800744E0_83490(func_80074558_83508() & 0xFF)) {
		func_8007463C_835EC();
	}
	
	func_800746F8_836A8();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80075148_840F8.s")
#endif

#ifdef NON_MATCHING
void func_80075210_841C0(void) {
	MissionCondEntry *entry;
	s16 matchId;
	s32 count;
	
	count = D_80149B28;
	if (count != 0) {
		matchId = D_80149B48;
		entry = &D_801494C0[--count];
		do {
			if (entry->unk1 == matchId && entry->unk0 == 2) {
				entry->unk4 = (u8)D_80149B30;
			}
			entry--;
		} while (count--);
	}
	
	while (func_800744E0_83490(func_80074558_83508() & 0xFF)) {
		func_8007463C_835EC();
	}
	
	func_800746F8_836A8();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80075210_841C0.s")
#endif

void func_800752D8_84288(void)
{
  MissionCondEntry *entry;
  s16 matchId;
  s32 count;
  count = D_80149B28;
 if (count--) { entry = &D_801494C0[count], matchId = D_80149B48; do {
	  if ((entry->unk1 == matchId) && (entry->unk0 == 3))
	  {
		entry->unk4 = (u8) D_80149B30;
	  }
	  entry--;
	}
	while (count--);
  }
  while (func_800744E0_83490(func_80074558_83508() & 0xFF))
  {
	func_8007463C_835EC();
  }

  func_800746F8_836A8();
}


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800753A0_84350.s")

void func_80075574_84524(void) {
	s32 sp24[1];
	u8 *var_s0;

	sp24[0] = 0;
	if (func_80074558_83508() != 0x87) {
		var_s0 = &D_8014CFF0[sp24[0] * 2];
		do {
			var_s0[0] = func_80074500_834B0();
			var_s0[1] = func_80074500_834B0();
			var_s0 += 2;
		} while (func_80074558_83508() != 0x87);
	}
}

void func_800755E0_84590(void)
{
  Unk8004D1C8 *var_v0;
  Unk8004D1C8 * var_v1;
  s32 i;
	s32 new_var;
  func_80074204_831B4();
  new_var = 0x10;
  
  for (i = 0; &D_8004D1C8[new_var] != &D_8004D1C8[i]; i++)
  {
	D_8004D1C8[i].unk6 = 0;
	D_8004D1C8[i].unkC = 0;
	D_8004D1C8[i].unk12 = 0;
	D_8004D1C8[i].unk0 = 0;
  }
  D_8004D150 = 0;
}

void func_8007562C_845DC(void) {
  s32 i;

  for (i = 0; i < 4; i++) {
	if ((D_8013BAC0[currentLevel - 1][i] >= 0) && (func_80076208_851B8(D_8013BAC0[currentLevel - 1][i]) != 0)) {
	  func_800078E4_84E4(D_8013BAC0[currentLevel - 1][i], &D_8004D150);
	}
  }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800756DC_8468C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80075AA4_84A54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80075E50_84E00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80076088_85038.s")

s32 func_80076208_851B8(s32 arg0) {
  return func_800078B8_84B8(arg0, &D_8004D150);
}

#ifdef NON_MATCHING
s32 func_8007622C_851DC(s32 arg0) {
	s32 v0;
	s32 *ptr;
	s32 v1;

	ptr = &D_801494B4;
	v1 = 15;
	do {
		v0 = v1;
		if (arg0 == *ptr--) {
			return v0;
		}
	} while (v1--);

	v1 = 15;
	if (D_801494B4 != 0) {
		while (v1--) {
			if (D_80149478[v1] != 0) {
				v0 = v1;
			} else {
				break;
			}
		}
	}
	D_80149478[v1] = arg0;
	return v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_8007622C_851DC.s")
#endif

// Remove the current callback from the list of callbacks (to call each frame?)
// https://decomp.me/scratch/GkpO5
#ifdef NON_MATCHING
void func_800762A8_85258(void (*callback))
{
  s32 var_v1;
  s32*var_a1 = &D_801494B4;
  var_v1 = 0xF;
  if (!var_a1) { } 
  do {
	if ((s32)callback == *var_a1)
	{
	  *var_a1 = 0;
	  return;
	}
  } while(var_a1--, var_v1--);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800762A8_85258.s")
#endif

#ifdef NON_MATCHING
void func_800762E0_85290(void) {
	s32 *ptr154 = &D_8004D154;
	s32 *ptr150 = &D_8004D150;
	{
		u8 *entry = &D_801497BA;
		s32 i = 0x7F;
		do {
			if ((entry[0] == 2) && (func_80076208_851B8(entry[1]) != 0)) {
				func_800078E4_84E4(entry[1], ptr150);
				func_800078CC_84CC(entry[1], ptr154);
				func_80073DC0_82D70(entry[4]);
			}
			entry -= 6;
		} while (i--);
	}
	D_80149474 = 0xFF;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800762E0_85290.s")
#endif

#ifdef NON_MATCHING
void func_80076390_85340(void) {
  s32 *ptr158 = &D_8004D158;
  s32 *ptr150 = &D_8004D150;
  {
	u8 *entry = &D_801497BA;
	s32 i = 0x7F;

	do {
	  if ((entry[0] == 3) && (func_800078B8_84B8(entry[1], ptr150) != 0)) {
		func_800078E4_84E4(entry[1], ptr150);
		func_800078CC_84CC(entry[1], ptr158);
		func_80073DC0_82D70(entry[4], 0, 0);
	  }
	  entry -= 6;
	} while (i--);
  }
  func_80013460();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_80076390_85340.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_8007643C_853EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_800765C4_85574.s")

void func_80076754_85704(void)
{
  s32 var_s0;
  var_s0 = 0x17;
  do
  {
	func_8007643C_853EC(var_s0);
  }
  while (var_s0--);
  D_8004D158 = 0;
  D_8004D154 = -1;
}

#ifdef NON_MATCHING
void func_8007679C_8574C(s16 arg0) {
	MissionCondEntry *entry;
	s32 i;

	entry = D_801494C0;
	i = 0x7F;
	do {
		if (entry->unk1 == arg0 && entry->unk0 == 1) {
			func_80073DC0_82D70(entry->unk4, i, arg0);
			break;
		}
		entry++;
	} while (i--);
	func_800078CC_84CC(arg0, &D_8004D150);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/missions/func_8007679C_8574C.s")
#endif
