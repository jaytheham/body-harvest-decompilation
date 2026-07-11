#include <ultra64.h>
#include "common.h"

const char D_80145A30_1549E0[] = "select ";
const char D_80145A38_1549E8[] = "%d,";
const char D_80145A3C_1549EC[] = "\n";
const char D_80145A40_1549F0[] = "No space left in inventory for the new item.\n";
const char D_80145A70_154A20[] = "Give vehicle its weapon %d\n";
const char D_80145A8C_154A3C[] = "Initialise Ammunition\n";
const char D_80145AA4_154A54[] = "Weapon %d not valid\n";
const char D_80145ABC_154A6C[] = "Weapon %d not valid\n";
const char D_80145AD4_154A84[] = "New weapon down\n";



s16 D_80140D40_14FCF0[] = {
	0x0000, 0x0000, -0x8000, 0x0064, 0x0032, 0x03E7, 0x0019, 0x0003,
	-0x8000, 0x0014, 0x0064, -0x8000, -0x8000, -0x8000, 0x0064, 0x00C8,
	0x0019, 0x0014, 0x0064, 0x0064,
};

u8 D_80140D68_14FD18[] = {
	0xFF, 0x64, 0x64, 0xD2, 0xFF, 0xFF, 0x87, 0xFF, 0x87, 0x00, 0x00, 0x00,
};

u8 D_80140D74_14FD24[] = {
	0x64, 0x1E, 0x1E, 0x1E, 0x50, 0x64, 0x28, 0x50, 0x28, 0x00, 0x00, 0x00,
	0x61, 0x62, 0x65, 0x66, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00,
};

void func_80139050_148000(void) {
	s32 var_s0;
	u8* var_s1;

	for (var_s1 = weaponSlots, var_s0 = 0; var_s0 != 7; var_s0 += 1, var_s1 += 1){
	
		if (var_s0 == D_8004794A) {
			osSyncPrintf(&D_80145A30_1549E0); // select 
		}
		osSyncPrintf(&D_80145A38_1549E8, *var_s1); // %d,
	}
	osSyncPrintf(&D_80145A3C_1549EC); // .
}

void func_801390F4_1480A4(s16 arg0) {
	if (D_80052B34->unk1A == 0) {
		D_80047948 = arg0 - 1;
	}
	vehicleSpecs[D_80052B34->unk1A].weapon1 = D_80031424[arg0];
}

s32 func_80139150_148100(u8 arg0, u16 arg1) {
		
	if (D_80048140[arg0] == D_80140D40_14FCF0[arg0]) {
		return 0;
	}
	if (D_80048140[arg0] == -0x8000) {
		return 1;
	}
	if (arg1 == -0x8000) {
		D_80048140[arg0] = D_80140D40_14FCF0[arg0];
	}
	D_80048140[arg0] += arg1;
	if (D_80140D40_14FCF0[arg0] < D_80048140[arg0]) {
		D_80048140[arg0] = D_80140D40_14FCF0[arg0];
	}
	return 1;
}

// guess_giveItem
s32 func_801391DC_14818C(s32 arg0, s16 arg1)
{
  s32 pad1;
  s32 pad2;
  s32 result;
  s32 pad3;
  s32 i;
  u8 *p;
  u8 prev;
  if (func_801393A0_148350(arg0) != 0)
  {
	return (s16) func_80139150_148100(arg0, arg1);
  }
  p = weaponSlots;
  if (weaponSlots[6] != 0)
  {
	if (weaponSlots[0] != 1)
	{
	  osSyncPrintf(&D_80145A40_1549F0); // No space left in inventory for the new item
	  return 0;
	}
	for (i = 1; i < 7; i++)
	{
	  weaponSlots[i - 1] = weaponSlots[i];
	}

	weaponSlots[6] = 0;
  }
	for (i = 6; i > 0; i--) {
		if (arg0 < weaponSlots[i-1]) {
			weaponSlots[i] = weaponSlots[i -1];
			continue;
		} 
		if (weaponSlots[i -1] != 0) {
			break;
		}
	}
	weaponSlots[i] = arg0;

  result = func_80139150_148100(arg0, arg1);
  func_80139050_148000();
  return result;
}

void func_801392FC_1482AC(s32 arg0)
{
  s32 i;
  for (i = 0; (i < 7) && (arg0 != weaponSlots[i]); i++)
  { }

  if (i == 7)
  {
	  return;
  }
	// odd way to write a for loop :D
	while (i++ < 7)
	{
		weaponSlots[i - 1] = weaponSlots[i];
	}
	weaponSlots[6] = 0;
	func_8013B5E4_14A594(0);
	func_8013B004_149FB4();
	func_80139050_148000();
}

s32 func_801393A0_148350(s32 arg0) {
	s32 i;
	if (arg0 == 1) {
		return 0;
	}
	for (i = 0; i < 7; i++) {
		if (arg0 == weaponSlots[i]) {
			return i + 1;
		}
	}
	return 0;
}

void func_80139460_148410(void) {
	s32 i;

	for (i = 2; i < 11; i++) {
		if (func_801393A0_148350(i) != 0) {
			D_801601E8 |= 1 << i;
			func_801392FC_1482AC(i);
		}
	}
	D_801601D8 = -1;
}

void func_801394DC_14848C(void)
{
  s32 bit;
  s32 i;
  for (i = 2; i != 0xB; i++)
  {
	bit = 1 << i;
	if (bit & D_801601E8)
	{
	  func_801391DC_14818C(i, 0);
	  bit = 1 << i;
	  D_801601E8 &= ~bit;
	}
  }

  if (currentLevel == LEVEL_COMET)
  {
	D_80048140[3] = 0x64;
	D_80048140[4] = 0x190;
	D_80048140[6] = 0x18;
  }
}

// https://decomp.me/scratch/cGhwK
// CURRENT(585)
#ifdef NON_MATCHING
void func_8013958C_14853C(void) {
	s32 weapon1;
	s32 *src;
	s32 weapon2;
	u8 *weaponOffset;
	s32 val;

	D_80031474.unk2C = 0;
	D_80031474.unk30 = 1;
	val = D_8003142C;
	weaponOffset = (u8 *)&D_80031424;
	weapon1 = *(s32 *)(weaponOffset + 0x2C);
	src = &D_80031430;
	if (weapon1 == val) {
		D_800314A0 = D_8003147C;
	}
	weapon2 = *(s32 *)(weaponOffset + 0x30);
	weaponOffset = (u8 *)0xC;
	if (weapon2 == val) {
		D_800314A4 = D_8003147C;
	}

loop:
	val = src[0];
	if (weapon1 == val) D_80031474.unk2C = *(s32 *)((u8 *)&D_80031474 + (s32)weaponOffset);
	if (weapon2 == val) D_80031474.unk30 = *(s32 *)((u8 *)&D_80031474 + (s32)weaponOffset);

	val = src[1];
	if (weapon1 == val) D_80031474.unk2C = *(s32 *)((u8 *)&D_80031474 + (s32)weaponOffset + 4);
	if (weapon2 == val) D_80031474.unk30 = *(s32 *)((u8 *)&D_80031474 + (s32)weaponOffset + 4);

	val = src[2];
	if (weapon1 == val) D_80031474.unk2C = *(s32 *)((u8 *)&D_80031474 + (s32)weaponOffset + 8);
	if (weapon2 == val) D_80031474.unk30 = *(s32 *)((u8 *)&D_80031474 + (s32)weaponOffset + 8);

	val = src[3];
	src += 4;
	if (weapon1 == val) D_80031474.unk2C = *(s32 *)((u8 *)&D_80031474 + (s32)weaponOffset + 0xC);
	if (weapon2 == val) D_80031474.unk30 = *(s32 *)((u8 *)&D_80031474 + (s32)weaponOffset + 0xC);

	weaponOffset += 0x10;
	if (src != &D_80031450) goto loop;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013958C_14853C.s")
#endif

void func_801396A8_148658(s32 arg0) {
	func_801392FC_1482AC(0xB);
	func_801392FC_1482AC(0xC);
	func_801392FC_1482AC(0xD);
	func_801392FC_1482AC(0xE);
	func_801392FC_1482AC(0x10);
	func_801392FC_1482AC(0x11);
	func_801392FC_1482AC(0xF);
	func_801394DC_14848C();
	func_8013A1CC_14917C();
	
	if (!(vehicleSpecs[arg0].unk4C & 0x04000000)) {
		D_801601D0 = D_801601D4;
	}
	func_8013B004_149FB4();
	func_800EA2B0_F9260(D_80047948);
	vehicleSpecs[arg0].weapon1 = D_80031450;
	D_801601DC = 0;
	D_801601E4 = 0;
}

void func_80139778_148728(void) {
	u8 temp_v1;
	VehicleSpec *temp_v0;
	
	D_801601D4 = D_801601D0;
	((Unk80031424*)D_80031424)->unk2C = (s32) vehicleSpecs[D_80052B34->unk1A].weapon1;
	((Unk80031424*)D_80031424)->unk30 = (s32) vehicleSpecs[D_80052B34->unk1A].weapon2;
	temp_v1 = D_80052B34->unk1A;
	if (temp_v1 == 0x13) {
		func_80139460_148410();
		func_801391DC_14818C(0xD, -0x8000);
		func_801391DC_14818C(0xE, 0);
		func_801391DC_14818C(0x10, 0);
		func_801391DC_14818C(0x11, 0);
		func_801391DC_14818C(0xF, 0);
		func_8013A1CC_14917C();
	} else {
		temp_v0 = &vehicleSpecs[temp_v1];
		if (!(temp_v0->unk4C & 0x04000000)) {
			osSyncPrintf(&D_80145A70_154A20, temp_v0->weapon1, &D_80031424); // Give vehicle its weapon %d
			func_80139460_148410();
			if (D_80031450) {
				func_801391DC_14818C(0xB, -0x8000);
				if (D_80031454 && ((currentLevel != LEVEL_GREECE) || (D_80052B34->unk1A != 8))) {
					func_801391DC_14818C(0xC, -0x8000);
				}

				if ((currentLevel == LEVEL_GREECE) && (D_80052B34->unk1A == 6) && !func_8000726C_7E6C(1)) {
					D_80048156 = 0;
				}
			}
			func_8013A1CC_14917C();
			func_8013958C_14853C();
		}
	}
	func_8013B004_149FB4();
	D_801601DC = 0;
	D_801601E4 = 0;
}

s16 func_8013994C_1488FC(u8 arg0) {
	return D_80048140[weaponSlots[hudWeaponItems[arg0].weaponSlot]];
}

// Initialize ammunition? guess_initInventory ?
void func_80139984_148934(void) {
	if (D_80047F98 == 0) {
		D_80048140[0] = 0;
		D_80048140[1] = 0;
		D_80048140[2] = -0x8000;
		D_80048140[3] = 0;
		D_80048140[4] = 0;
		D_80048140[5] = 0;
		D_80048140[6] = 0;
		D_80048140[7] = 0;
		D_80048140[8] = -0x8000;
		D_80048140[9] = 0;
		D_80048140[10] = 0;
		D_80048140[11] = -0x8000;
		D_80048140[12] = -0x8000;
		D_80048140[13] = -0x8000;
		D_80048140[14] = 0;
		D_80048140[16] = 0;
		D_80048140[17] = 0;
		D_80048140[15] = 0;
		D_80048140[18] = 0;
		D_80048140[19] = 0;
	} else {
		D_80048140[2] = -0x8000;
		D_80048140[8] = -0x8000;
		D_80048140[11] = -0x8000;
		D_80048140[12] = -0x8000;
		D_80048140[13] = -0x8000;
	}
	if (currentLevel == LEVEL_COMET) {
		func_801391DC_14818C(3, 0xA);
		func_801391DC_14818C(5, 0x64);
		func_801391DC_14818C(6, 5);
		if (D_80052ACD & 0x10) {
			func_800A8E18_B7DC8(0x15);
			func_800A8E18_B7DC8(0x15);
			func_800A8E18_B7DC8(0x19);
			func_800A8E18_B7DC8(0x19);
			func_800A8E18_B7DC8(0x17);
			func_800A8E18_B7DC8(0x18);
		}
	}
	if (D_80052ACD & 4) {
		D_80031424[2] = 0xD;
		D_80031424[3] = 0xF;
		D_80031424[4] = 0xB;
		D_80031424[5] = 0x6D;
		D_80031424[6] = 0x66;
		D_80031424[9] = 0x1D;
	} else {
		D_80031424[2] = 1;
		D_80031424[3] = 2;
		D_80031424[4] = 3;
		D_80031424[5] = 4;
		D_80031424[6] = 0x29;
		D_80031424[9] = 0x14;
	}
	osSyncPrintf(&D_80145A8C_154A3C); // Initialise Ammunition
}

void func_80139B34_148AE4(void) {
	s32 temp_v1;
	
	D_801601E4 = 0;
	D_801601E0 = 0;
	D_801601DC = 0;
	D_801601D8 = -1;
	temp_v1 = 1;
	vehicleSpecs[0].weapon1 = temp_v1;
	D_801601D0 = 0;
	D_8004794A = 0;
	D_80047948 = temp_v1;
	D_801601E8 = 0;
	switch (currentLevel) {
	default:
		D_8003144C = 0;
		return;
	case 1:
		D_8003144C = 0x5E;
		return;
	case 2:
		D_8003144C = 0x5B;
		return;
	case 3:
		D_8003144C = 0x5A;
		return;
	case 4:
		D_8003144C = 0x5C;
		return;
	}
}

// CURRENT(2300)
#ifdef NON_MATCHING
void func_80139BF8_148BA8(void) {
	D_801601CC = 0;
	if (weaponSlots[0] >= 2) {
		hudWeaponItems[D_801601CC].weaponSlot = 0;
		D_801601CC = 1;
	}
	if (weaponSlots[1] >= 2) {
		hudWeaponItems[D_801601CC].weaponSlot = 1;
		D_801601CC += 1;
	}
	if (weaponSlots[2] >= 2) {
		hudWeaponItems[D_801601CC].weaponSlot = 2;
		D_801601CC += 1;
	}
	if ((weaponSlots + 3)[0] >= 2) {
		hudWeaponItems[D_801601CC].weaponSlot = 3;
		D_801601CC += 1;
	}
	if ((weaponSlots + 3)[1] >= 2) {
		hudWeaponItems[D_801601CC].weaponSlot = 4;
		D_801601CC += 1;
	}
	if ((weaponSlots + 3)[2] >= 2) {
		hudWeaponItems[D_801601CC].weaponSlot = 5;
		D_801601CC += 1;
	}
	if ((weaponSlots + 3)[3] >= 2) {
		hudWeaponItems[D_801601CC].weaponSlot = 6;
		D_801601CC += 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_80139BF8_148BA8.s")
#endif

// Vehicle weapon UI related?
// CURRENT(4135)
#ifdef NON_MATCHING
void func_80139D58_148D08(void) {
	VehicleInstance* vehicle;
	u8* slots3;
	u8 value;
	u8 mode;
	u8 slot0;
	u8 slot1;
	u8 slot2;

	D_801601CC = 0;
	vehicle = D_80052B34;
	mode = vehicle->unk1A;
	if (mode == 0x13) {
		mode = 3;
		slots3 = weaponSlots + mode;

		if (weaponSlots[0] >= 0xD) {
			hudWeaponItems[0].weaponSlot = 0;
			D_801601CC = 1;
		}

		if (weaponSlots[1] >= 0xD) {
			hudWeaponItems[D_801601CC].weaponSlot = 1;
			D_801601CC++;
		}

		if (weaponSlots[2] >= 0xD) {
			hudWeaponItems[D_801601CC].weaponSlot = 2;
			D_801601CC++;
		}

		value = *slots3;
		if (value >= 0xD) {
			hudWeaponItems[D_801601CC].weaponSlot = mode;
			D_801601CC++;
		}

		value = *(slots3 + 1);
		if (value >= 0xD) {
			hudWeaponItems[D_801601CC].weaponSlot = mode + 1;
			D_801601CC++;
		}

		value = *(slots3 + 2);
		if (value >= 0xD) {
			hudWeaponItems[D_801601CC].weaponSlot = mode + 2;
			D_801601CC++;
		}

		value = *(slots3 + 3);
		if (value >= 0xD) {
			hudWeaponItems[D_801601CC].weaponSlot = mode + 3;
			D_801601CC++;
		}

		mode = vehicle->unk1A;
	}

	if ((vehicleSpecs[mode].unk4C << 5) < 0) {
		slot0 = weaponSlots[0];
		slot1 = weaponSlots[1];
		slot2 = weaponSlots[2];
		mode = 3;

		if ((slot0 >= 2) && (slot0 < 6)) {
			hudWeaponItems[D_801601CC].weaponSlot = 0;
			D_801601CC++;
		}

		if ((slot1 >= 2) && (slot1 < 6)) {
			hudWeaponItems[D_801601CC].weaponSlot = 1;
			D_801601CC++;
		}

		slots3 = weaponSlots + mode;
		if ((slot2 >= 2) && (slot2 < 6)) {
			hudWeaponItems[D_801601CC].weaponSlot = 2;
			D_801601CC++;
		}

		value = *slots3;
		if ((value >= 2) && (value < 6)) {
			hudWeaponItems[D_801601CC].weaponSlot = mode;
			D_801601CC++;
		}

		value = *(slots3 + 1);
		if ((value >= 2) && (value < 6)) {
			hudWeaponItems[D_801601CC].weaponSlot = mode + 1;
			D_801601CC++;
		}

		value = *(slots3 + 2);
		if ((value >= 2) && (value < 6)) {
			hudWeaponItems[D_801601CC].weaponSlot = mode + 2;
			D_801601CC++;
		}

		value = *(slots3 + 3);
		if ((value >= 2) && (value < 6)) {
			hudWeaponItems[D_801601CC].weaponSlot = mode + 3;
			D_801601CC++;
		}
	} else {
		slot0 = weaponSlots[0];
		slot1 = weaponSlots[1];
		slot2 = weaponSlots[2];
		mode = 3;

		if ((slot0 == 0xB) || (slot0 == 0xC)) {
			hudWeaponItems[D_801601CC].weaponSlot = 0;
			D_801601CC++;
		}

		if ((slot1 == 0xB) || (slot1 == 0xC)) {
			hudWeaponItems[D_801601CC].weaponSlot = 1;
			D_801601CC++;
		}

		slots3 = weaponSlots + mode;
		if ((slot2 == 0xB) || (slot2 == 0xC)) {
			hudWeaponItems[D_801601CC].weaponSlot = 2;
			D_801601CC++;
		}

		value = *slots3;
		if ((value == 0xB) || (value == 0xC)) {
			hudWeaponItems[D_801601CC].weaponSlot = mode;
			D_801601CC++;
		}

		value = *(slots3 + 1);
		if ((value == 0xB) || (value == 0xC)) {
			hudWeaponItems[D_801601CC].weaponSlot = mode + 1;
			D_801601CC++;
		}

		value = *(slots3 + 2);
		if ((value == 0xB) || (value == 0xC)) {
			hudWeaponItems[D_801601CC].weaponSlot = mode + 2;
			D_801601CC++;
		}

		value = *(slots3 + 3);
		if ((value == 0xB) || (value == 0xC)) {
			hudWeaponItems[D_801601CC].weaponSlot = mode + 3;
			D_801601CC++;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_80139D58_148D08.s")
#endif

void func_8013A1CC_14917C(void) {
	if (D_80052B34->unk1A == 0) {
		func_80139BF8_148BA8();
	} else {
		func_80139D58_148D08();
	}
	func_8013B004_149FB4();
}

// CURRENT (16)
#ifdef NON_MATCHING
void func_8013A218_1491C8(s16 arg0, s16 arg1, u8 arg2) {
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, ((u32)&D_1009C70[arg2 << 7]) & 0x1FFFFFFF);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (15 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));
	gDPPipeSync(D_8005BB2C++);
	{ s32 _yl = arg1 * 4;
	gSPTextureRectangle(D_8005BB2C++, MAX((s16)(arg0 << 2), 0), MAX((s16)_yl, 0),
					MAX((s16)((arg0 + 8) << 2), 0), MAX((s16)((arg1 + 8) << 2), 0), G_TX_RENDERTILE,
					-(((s16)(arg0 << 2) < 0) ? MIN((((s16)(arg0 << 2) << 11) >> 7), 0) : 0),
					-((_yl < 0) ? MIN((((s16)_yl) << 11) >> 7, 0) : 0),
					0x0800, 0x0800);
	}
	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013A218_1491C8.s")
#endif

// CURRENT(300)
#ifdef NON_MATCHING
void func_8013A4C8_149478(s16 arg0, s32 arg1) {
	u8 sp1E;
	u8 sp1D;
	u8 var_a2;
	u8 var_a3;
	s32 sp18;
	s16 temp_a1;

	if (arg0 == -0x8000) {
		var_a2 = 0xE;
		var_a3 = 0xE;
		sp1D = 0xE;
	} else {
		var_a2 = arg0 / 100;
		arg0 -= var_a2 * 100;
		var_a3 = arg0 / 10;
		arg0 -= var_a3 * 10;
		sp1D = arg0;
	}

	temp_a1 = ((s16*)&arg1)[1] + 4;
	sp18 = temp_a1;
	sp1E = var_a3;

	func_8013A218_1491C8(0x2C - D_8014F1FA, temp_a1, var_a2);
	func_8013A218_1491C8(0x33 - D_8014F1FA, ((s16*)&sp18)[1], sp1E);
	func_8013A218_1491C8(0x3A - D_8014F1FA, ((s16*)&sp18)[1], sp1D);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013A4C8_149478.s")
#endif

void func_8013A630_1495E0(void) {
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_TEXTURE_ENABLE | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH | G_CLIPPING | 0xFF60CDF8);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_ZB_XLU_SURF, G_RM_ZB_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gSPSetGeometryMode(D_8005BB2C++, G_SHADE);
}

#ifdef NON_MATCHING
// CURRENT(27704)
void func_8013A764_149714(u8 arg0) {
	s16 ammo;
	s16 yPos;
	s16 x0;
	s16 y0;
	s16 s0;
	s16 t0;
	u8 state;
	s32 pad0;
	s32 pad1;
	HudWeaponItem* item;
	u8* color;

	if (D_8014F1FA >= 0x51) {
		return;
	}

	ammo = func_8013994C_1488FC(arg0);
	func_8013A630_1495E0();

	if (ammo == 0) {
		state = 0;
	} else if (D_801601D0 == arg0) {
		state = 1;
	} else {
		state = 2;
	}

	item = &hudWeaponItems[arg0];
	color = &D_80140D68_14FD18[state * 3];

	gDPSetPrimColor(D_8005BB2C++, 0, 0, color[0], color[1], color[2], item->opacity);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_80260500);
	gDPTileSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x100, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 255);
	gDPPipeSync(D_8005BB2C++);
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE,
				 PRIMITIVE, K4, TEXEL0, 0, 0, 0, PRIM_LOD_FRAC, PRIMITIVE);

	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1,
				  D_8025CCC0 + (((s32*) &D_80031474)[weaponSlots[item->weaponSlot]] * 0x240));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
			   G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 287, 683);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 3, 0, G_TX_RENDERTILE, 0,
			   G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (23 << G_TEXTURE_IMAGE_FRAC), (23 << G_TEXTURE_IMAGE_FRAC));
	gDPPipeSync(D_8005BB2C++);

	if (D_801601D0 != arg0) {
		x0 = (item->yPosition + 2) * 4;
		y0 = (0x1B - D_8014F1FA) * 4;
		yPos = item->yPosition + 1;
		gSPTextureRectangle(D_8005BB2C++, x0, y0, (item->yPosition + 0x10) * 4, (0x29 - D_8014F1FA) * 4,
					  G_TX_RENDERTILE, 0, 0, 0x06DB, 0x06DB);
	} else {
		x0 = (item->yPosition + 3) * 4;
		y0 = (0x15 - D_8014F1FA) * 4;
		yPos = item->yPosition + 4;
		gSPTextureRectangle(D_8005BB2C++, x0, y0, (item->yPosition + 0x15) * 4, (0x27 - D_8014F1FA) * 4,
					  G_TX_RENDERTILE, 0, 0, 0x0555, 0x0555);
	}

	color = &D_80140D74_14FD24[state * 3];
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0,
				 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, color[0], color[1], color[2], item->opacity);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, D_100ADF0);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 127, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));
	gDPPipeSync(D_8005BB2C++);

	x0 = yPos * 4;
	y0 = (0x27 - D_8014F1FA) * 4;
	s0 = -(((x0 < 0) ? MIN(((x0 * (s16) 0x800) >> 7), 0) : 0));
	t0 = -(((y0 < 0) ? MIN(((y0 * (s16) 0x800) >> 7), 0) : 0));

	gSPTextureRectangle(D_8005BB2C++, MAX(x0, 0), MAX(y0, 0), MAX((yPos + 0x10) * 4, 0), MAX((0x47 - D_8014F1FA) * 4, 0),
				  G_TX_RENDERTILE, s0, t0, 0x400, 0x400);
	gDPPipeSync(D_8005BB2C++);

	if (state == 1) {
		gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0xFF, 0xFF, item->opacity);
	}

	func_8013A4C8_149478(ammo, yPos);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013A764_149714.s")
#endif

void func_8013AF58_149F08(void) {
	u8 i;

	if (D_80157590 != 3) {
		func_8013A630_1495E0();
		if ((D_801601DC == 0) && (D_801601CC > 0)) {
			func_8013A764_149714(D_801601D3);
			return;
		}
		for (i = 0; i < D_801601CC; i++) {
			func_8013A764_149714(i);
		}
	}
}

void func_8013B004_149FB4(void) {
	D_8004794A = hudWeaponItems[D_801601D0].weaponSlot;
	func_801390F4_1480A4(weaponSlots[D_8004794A]);
}

// CURRENT(13285)
void func_8013B054_14A004(void) {
	if (D_80048188 != 0) {
		return;
	}

	if (D_80052B34 == D_8013FD78_14ED28) {
		D_801601D8 = D_80140D17_14FCC7[vehicleSpecs[D_80052B34->unk1A].weapon1];
	} else {
		D_801601D8 = vehicleSpecs[D_80052B34->unk1A].weapon1 + 0x18;
	}

	if (D_800313D0_31FD0 == 0) {
		return;
	}

	switch (D_801601D8) {
		case 0x19:
			D_801601D8 = 0xD8;
			if (D_800313D0_31FD0 == 2) {
				D_801601D8 += 0xC;
			}
			return;
		case 0x1A:
			D_801601D8 = 0xD9;
			if (D_800313D0_31FD0 == 2) {
				D_801601D8 += 0xC;
			}
			return;
		case 0x1B:
			D_801601D8 = 0xDA;
			if (D_800313D0_31FD0 == 2) {
				D_801601D8 += 0xC;
			}
			return;
		case 0x2C:
			D_801601D8 = 0xDF;
			if (D_800313D0_31FD0 == 2) {
				D_801601D8 += 0xC;
			}
			return;
		case 0x67:
			D_801601D8 = 0xDE;
			if (D_800313D0_31FD0 == 2) {
				D_801601D8 += 0xC;
			}
			return;
		case 0x63:
			D_801601D8 = 0xDD;
			if (D_800313D0_31FD0 == 2) {
				D_801601D8 += 0xC;
			}
			return;
		case 0x1C:
			D_801601D8 = 0xDB;
			if (D_800313D0_31FD0 == 2) {
				D_801601D8 += 0xC;
			}
			return;
		case 0x41:
			D_801601D8 = 0xDC;
			if (D_800313D0_31FD0 == 2) {
				D_801601D8 += 0xC;
			}
			return;
		case 0x76:
			D_801601D8 = 0xE0;
			if (D_800313D0_31FD0 == 2) {
				D_801601D8 += 0xC;
			}
			return;
		case 0x73:
			D_801601D8 = 0xE1;
			if (D_800313D0_31FD0 == 2) {
				D_801601D8 += 0xC;
			}
			return;
		case 0x72:
			D_801601D8 = 0xE2;
			if (D_800313D0_31FD0 == 2) {
				D_801601D8 += 0xC;
			}
			return;
		case 0x74:
			D_801601D8 = 0xE3;
			if (D_800313D0_31FD0 == 2) {
				D_801601D8 += 0xC;
			}
			return;
		default:
			return;
	}
}

void func_8013B298_14A248(void) {
	s32 old_value;

	old_value = D_801601D0;
	if (D_801601CC != 0) {
		if (D_801601D0 == 0) {
			D_801601D0 = D_801601CC - 1;
		} else {
			D_801601D0 -= 1;
		}
		func_8013B004_149FB4();
		if (old_value != D_801601D0) {
			func_8013B054_14A004();
		}
	}
}

void func_8013B30C_14A2BC(void) {
	s32 old_value;

	old_value = D_801601D0;
	if (D_801601CC != 0) {
		if (!(D_801601D0 < (D_801601CC - 1))) {
			D_801601D0 = 0;
		} else {
			D_801601D0 += 1;
		}
		func_8013B004_149FB4();
		if (old_value != D_801601D0) {
			func_8013B054_14A004();
		}
	}
}

void func_8013B384_14A334(void) {
	s16 temp_v0;
	s16 temp_a1;
	s16 var_a2;
	s16 var_a3;
	s8 var_t1;

	temp_v0 = (s16)((D_801601CC - D_801601D0) * 0x12 - 0x12);
	temp_a1 = (s16)(temp_v0 / 6);
	var_a2 = 0xAF;
	if (currentLevel == 5) {
		var_a2 = 0xC3;
	}
	var_a3 = (s16)(((s16)var_a2 + temp_v0) - (temp_a1 * D_801601E4) - 4);
	var_t1 = (s8)(D_801601CC - 1);
	if (var_t1 >= 0) {
		do {
			if (var_t1 == D_801601D0) {
				var_a3 = (s16)(var_a3 - 0x18);
				hudWeaponItems[var_t1].opacity = 0xFF;
			} else {
				var_a3 = (s16)(var_a3 - 0x12);
				hudWeaponItems[var_t1].opacity = (u8)(D_801601E4 * 0x26);
			}
			hudWeaponItems[var_t1].yPosition = var_a3;
			var_t1 -= 1;
		} while (var_t1 >= 0);
	}
}

// CURRENT(735)
#ifdef NON_MATCHING
s32 func_8013B480_14A430(s16 arg0) {
	u8 temp_v0;
	s32 var_v0;

	if (arg0 == 1) {
		return 0;
	}
	temp_v0 = D_80052B34->unk1A;
	if (temp_v0 == 0) {
		return arg0 < 0xB;
	}
	if (temp_v0 == 0x13) {
		if ((arg0 < 0xD) ^ 1) {
			return arg0 < 0x14;
		}
	} else {
		if (vehicleSpecs[temp_v0].unk4C & 0x04000000) {
			var_v0 = (arg0 < 6);
			if (var_v0 == 0) {
				return (arg0 == 0xB);
			}
			return var_v0;
		}
		var_v0 = (arg0 == 0xB);
		if (var_v0 == 0) {
			var_v0 = (arg0 == 0xC);
		}
		return var_v0;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/148000/func_8013B480_14A430.s")
#endif

s32 func_8013B534_14A4E4(void) {
	s32 temp_v0;
	u8 temp_v1;

	temp_v0 = func_8013994C_1488FC(D_801601D3);
	D_8004794A = hudWeaponItems[D_801601D0].weaponSlot;
	if (D_801601D0 < D_801601CC) {
		temp_v1 = weaponSlots[D_8004794A];
		if ((temp_v1 != 0) && (temp_v0 != 0) && (func_8013B480_14A430((s16) temp_v1) != 0)) {
			return 1;
		}
	}
	osSyncPrintf(&D_80145AA4_154A54, D_801601D0); // Weapon %d not valid
	return 0;
}

s32 func_8013B5E4_14A594(s32 arg0) {
	if (func_8013B534_14A4E4() != 0) {
		return 1;
	}

	if (D_801601D0 == 0) {
		vehicleSpecs[D_80052B34->unk1A].weapon1 = 0;
		return 1;
	}

	osSyncPrintf(&D_80145ABC_154A6C, D_801601D0); // Weapon %d not valid
	if (arg0 == 0) {
		func_8013B298_14A248();
	} else {
		func_8013B30C_14A2BC();
	}

	func_8013B5E4_14A594(arg0);
	return 0;
}

// guess_doWeaponChange
void func_8013B688_14A638(void) {
	VehicleInstance* temp_v0;

	temp_v0 = D_80052B34;
	if ((temp_v0->unk1A == 0)
		&& ((temp_v0->unk20 & 0x1000)
			|| ((temp_v0->unk20 & 2) && ((D_80159320 << 8) >= 0)))) {
		D_801601DC = 0;
		D_801601E4 = 0;
		func_8013B384_14A334();
		return;
	}

	func_8013994C_1488FC(D_801601D3);
	func_8013A1CC_14917C();

	if (func_8013B5E4_14A594(0) == 0) {
		if ((D_801601DC == 0) || (D_801601DC == 1)) {
			D_801601DC = 2;
		}
	} else {
		if (isButtonNewlyPressed(0, 0x800) != 0) {
			if (D_801601DC == 3) {
				func_8013B298_14A248();
				func_8013B5E4_14A594(0);
				D_801601E0 = 0x23;
			} else {
				D_801601DC = 2;
			}
		}

		if (isButtonNewlyPressed(0, 0x400) != 0) {
			if (D_801601DC == 3) {
				osSyncPrintf(&D_80145AD4_154A84);
				func_8013B30C_14A2BC();
				func_8013B5E4_14A594(1);
				D_801601E0 = 0x23;
			} else {
				D_801601DC = 2;
			}
		}
	}

	if (D_801601DC == 2) {
		if (D_801601E4 == 6) {
			D_801601DC = 3;
			D_801601E0 = 0x23;
		} else {
			D_801601E4 += 1;
		}
	} else if (D_801601DC == 1) {
		if (D_801601E4 == 0) {
			D_801601DC = 0;
		} else {
			D_801601E4 -= 1;
		}
	} else if (D_801601DC == 3) {
		if (D_801601E0 == 0) {
			D_801601DC = 1;
			if (D_801601D8 != -1) {
				func_8001A650_1B250(D_801601D8);
				D_801601D8 = -1;
			}
		} else {
			D_801601E0 -= 1;
		}
	}

	func_8013B384_14A334();
}

s32 func_8013B8C8_14A878(void) {
	if (D_801601DC == 0) {
		return 0;
	}
	return 1;
}
