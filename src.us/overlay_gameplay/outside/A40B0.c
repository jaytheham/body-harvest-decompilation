#include <ultra64.h>
#include "common.h"

const char D_80141F30_150EE0[] = "Max Speed";
const char D_80141F3C_150EEC[] = "Min Speed";
const char D_80141F48_150EF8[] = "Acceleration";
const char D_80141F58_150F08[] = "Max Steer";
const char D_80141F64_150F14[] = "Steer Change";
const char D_80141F74_150F24[] = "Steer Point";
const char D_80141F80_150F30[] = "Pivot Point";
const char D_80141F8C_150F3C[] = "Hill Climb";
const char D_80141F98_150F48[] = "Water Drag";
const char D_80141FA4_150F54[] = "Arc of Fire";
const char D_80141FB0_150F60[] = "Launch Angle";
const char D_80141FC0_150F70[] = "1st Weapon";
const char D_80141FCC_150F7C[] = "2nd Weapon";
const char D_80141FD8_150F88[] = "Gun 1 Xpos";
const char D_80141FE4_150F94[] = "Gun 1 Ypos";
const char D_80141FF0_150FA0[] = "Gun 1 Zpos";
const char D_80141FFC_150FAC[] = "Mass";
const char D_80142004_150FB4[] = "Hits";
const char D_8014200C_150FBC[] = "Grip";
const char D_80142014_150FC4[] = "Side Grip";
const char D_80142020_150FD0[] = "Frontal Armour";
const char D_80142030_150FE0[] = "Side Armour";
const char D_8014203C_150FEC[] = "Rear Armour";
const char D_80142048_150FF8[] = "Camera Min";
const char D_80142054_151004[] = "Camera Max";
const char D_80142060_151010[] = "Tension";
const char D_80142068_151018[] = "Damping";
const char D_80142070_151020[] = "Penalty";
const char D_80142078_151028[] = "Shadow Size";
const char D_80142084_151034[] = "Shadow X";
const char D_80142090_151040[] = "Shadow Z";
const char D_8014209C_15104C[] = "Collision type";
const char D_801420AC_15105C[] = "Red";
const char D_801420B0_151060[] = "Green";
const char D_801420B8_151068[] = "Blue";
const char D_801420C0_151070[] = "Alpha";
const char D_801420C8_151078[] = "Near Clip";
const char D_801420D4_151084[] = "Far Clip";
const char D_801420E0_151090[] = "Primitive R";
const char D_801420EC_15109C[] = "Primitive G";
const char D_801420F8_1510A8[] = "Primitive B";
const char D_80142104_1510B4[] = "Environment R";
const char D_80142114_1510C4[] = "Environment G";
const char D_80142124_1510D4[] = "Environment B";
const char D_80142134_1510E4[] = "Not Used";
const char D_80142140_1510F0[] = "TestNum1";
const char D_8014214C_1510FC[] = "TestNum2";
const char D_80142158_151108[] = "TestNum3";
const char D_80142164_151114[] = "TestNum4";
const char D_80142170_151120[] = "TestNum5";
const char D_8014217C_15112C[] = "TestNum6";
const char D_80142188_151138[] = "TestNum7";
const char D_80142194_151144[] = "TestNum8";
const char D_801421A0_151150[] = "%@%s%@";
const char D_801421A8_151158[] = "%s";
const char D_801421AC_15115C[] = "%d";
const char D_801421B0_151160[] = "%d";
const char D_801421B4_151164[] = "%f";
const char D_801421B8_151168[] = "%d, %d";
const char D_801421C0_151170[] = "%X%Y";
const char D_801421C8_151178[] = "%@>";
const char D_801421CC_151180[] = "%C";
const char D_801421D0_151188[] = "%C";
const char D_801421D4_151190[] = "%@MAIN MENU";
const char D_801421E0_15119C[] = "%@Vehicles";
const char D_801421EC_1511A8[] = "%@Aliens";
const char D_801421F8_1511B4[] = "%@Requests";
const char D_80142204_1511C0[] = "%@Global variables";
const char D_80142218_1511D4[] = "%@Timing bars";
const char D_80142228_1511E4[] = "%@Keys";
const char D_80142230_1511F0[] = "%@Terrain";
const char D_8014223C_1511FC[] = "%@CutCam";
const char D_80142248_151208[] = "%@GLOBALS MENU";
const char D_80142258_151214[] = "%@Testing";
const char D_80142264_151220[] = "%@Camera";
const char D_80142270_15122C[] = "%@Colours";
const char D_8014227C_151238[] = "%@Fog";
const char D_80142284_151244[] = "%@TESTING MENU";
const char D_80142294_151250[] = "%@COLOURS MENU";
const char D_801422A4_15125C[] = "%@FOG MENU";
const char D_801422B0_151268[] = "%@TIMING BARS MENU";
const char D_801422C4_151274[] = "%@Off";
const char D_801422CC_151280[] = "%@On";
const char D_801422D4_15128C[] = "%@Scale +";
const char D_801422E0_151298[] = "%@Scale -";
const char D_801422EC_1512A4[] = "%@KEYS MENU";
const char D_801422F8_1512B0[] = "%C";
const char D_801422FC_1512B4[] = "%@%c";
const char D_80142304_1512B8[] = "%C";

u32 D_8013CB70_14BB20[] = {
	0x00000000, 0x00000000, 0x01000001, 0x00000030,
	0x00000000, 0x00000000, 0x01000003,
};
Unk8014DD50 *D_8013CB8C_14BB3C = (Unk8014DD50 *)0x8013CB4C;
u32 D_8013CB90_14BB40 = 0x8013CB6C;
u32 D_8013CB94_14BB44 = 0;
u32 D_8013CB98_14BB48 = 0;
u32 D_8013CB9C_14BB4C = 0;
u32 D_8013CBA0_14BB50 = 0xFF000000;
u8 D_8013CBA4_14BB54 = 3;
u32 D_8013CBA8_14BB58 = 0;
u32 D_8013CBAC_14BB5C = 0;
u32 D_8013CBB0_14BB60 = 0x03000000;
s16 D_8013CBB4_14BB64 = 0;
u32 D_8013CBB8_14BB68 = 0;
u8 D_8013CBBC_14BB6C = 0;
DebugPropEntry D_8013CBC0_14BB70[] = {
	{D_80141F30_150EE0, (s32)0x80257A00, (s32)0x80257A40, 0, 32767, 4, 0, 0x00000002},
	{D_80141F3C_150EEC, (s32)0x80257A00, (s32)0x80257A42, -32768, 0, 4, 0, 0x00000002},
	{D_80141F48_150EF8, (s32)0x80257A00, (s32)0x80257A3E, 0, 255, 3, 0, 0x00000000},
	{D_80141F58_150F08, (s32)0x80257A00, (s32)0x80257A48, 0, 32767, 3, 0, 0x00000002},
	{D_80141F64_150F14, (s32)0x80257A00, (s32)0x80257A5A, 0, 255, 4, 0, 0x00000000},
	{D_80141F74_150F24, (s32)0x80257A00, (s32)0x80257A66, -32768, 32767, 3, 0, 0x00000002},
	{D_80141F80_150F30, (s32)0x80257A00, (s32)0x80257A52, 0, 255, 3, 0, 0x00000000},
	{D_80141F8C_150F3C, (s32)0x80257A00, (s32)0x80257A46, 0, 255, 4, 0, 0x00000000},
	{D_80141F98_150F48, (s32)0x80257A00, (s32)0x80257A47, 0, 255, 4, 0, 0x00000000},
	{D_80141FA4_150F54, (s32)0x80257A00, (s32)0x80257A3C, 0, 32767, 3, 0, 0x00000002},
	{D_80141FB0_150F60, (s32)0x80257A00, (s32)0x80257A50, 0, 255, 3, 0, 0x00000000},
	{D_80141FC0_150F70, (s32)0x80257A00, (s32)0x80257A1C, 0, 99, 4, 0, 0x00000003},
	{D_80141FCC_150F7C, (s32)0x80257A00, (s32)0x80257A28, 0, 62, 4, 0, 0x00000003},
	{D_80141FD8_150F88, (s32)0x80257A00, (s32)0x80257A20, -32768, 32767, 3, 0, 0x00000002},
	{D_80141FE4_150F94, (s32)0x80257A00, (s32)0x80257A22, -32768, 32767, 3, 0, 0x00000002},
	{D_80141FF0_150FA0, (s32)0x80257A00, (s32)0x80257A24, -32768, 32767, 3, 0, 0x00000002},
	{D_80141FFC_150FAC, (s32)0x80257A00, (s32)0x80257A32, 0, 32767, 3, 0, 0x00000002},
	{D_80142004_150FB4, (s32)0x80257A00, (s32)0x80257A3A, 0, 32767, 3, 0, 0x00000002},
	{D_8014200C_150FBC, (s32)0x80257A00, (s32)0x80257A57, 0, 255, 3, 0, 0x00000000},
	{D_80142014_150FC4, (s32)0x80257A00, (s32)0x80257A56, 0, 255, 3, 0, 0x00000000},
	{D_80142020_150FD0, (s32)0x80257A00, (s32)0x80257A0E, 0, 32767, 3, 0, 0x00000002},
	{D_80142030_150FE0, (s32)0x80257A00, (s32)0x80257A10, 0, 32767, 3, 0, 0x00000002},
	{D_8014203C_150FEC, (s32)0x80257A00, (s32)0x80257A12, 0, 32767, 3, 0, 0x00000002},
	{D_80142048_150FF8, (s32)0x80257A00, (s32)0x80257A5C, 0, 255, 3, 0, 0x00000000},
	{D_80142054_151004, (s32)0x80257A00, (s32)0x80257A5D, 0, 255, 3, 0, 0x00000000},
	{D_80142060_151010, (s32)0x80257A00, (s32)0x80257A44, 0, 255, 3, 0, 0x00000000},
	{D_80142068_151018, (s32)0x80257A00, (s32)0x80257A45, 0, 255, 3, 0, 0x00000000},
	{D_80142070_151020, (s32)0x80257A00, (s32)0x80257A14, -32768, 32767, 3, 0, 0x00000002},
	{D_80142078_151028, (s32)0x80257A00, (s32)0x80257A65, 0, 255, 3, 0, 0x00000000},
	{D_80142084_151034, (s32)0x80257A00, (s32)0x80257A6C, 0, 1000, 3, 0, 0x00000000},
	{D_80142090_151040, (s32)0x80257A00, (s32)0x80257A6D, 0, 255, 3, 0, 0x00000000},
	{D_8014209C_15104C, (s32)0x80257A00, (s32)0x80257A16, 0, 3, 3, 0, 0x00000000},
	{D_801420AC_15105C, (s32)0x80047743, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{D_801420B0_151060, (s32)0x80047744, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{D_801420B8_151068, (s32)0x80047745, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{D_801420C0_151070, (s32)0x800313F4, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{D_801420C8_151078, (s32)0x800313F8, 0x00000000, 0, 1000, 4, 0, 0x00000002},
	{D_801420D4_151084, (s32)0x800313FC, 0x00000000, 0, 1000, 4, 0, 0x00000002},
	{D_801420E0_151090, (s32)0x8013D94C, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{D_801420EC_15109C, (s32)0x8013D950, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{D_801420F8_1510A8, (s32)0x8013D954, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{D_80142104_1510B4, (s32)0x8013D940, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{D_80142114_1510C4, (s32)0x8013D944, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{D_80142124_1510D4, (s32)0x8013D948, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{D_80142134_1510E4, (s32)0x8013D948, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{D_80142140_1510F0, (s32)0x80047710, 0x00000000, -32768, 32767, 3, 0, 0x00000002},
	{D_8014214C_1510FC, (s32)0x80047712, 0x00000000, -32768, 32767, 3, 0, 0x00000002},
	{D_80142158_151108, (s32)0x80047714, 0x00000000, -32768, 32767, 3, 0, 0x00000002},
	{D_80142164_151114, (s32)0x80047716, 0x00000000, -32768, 32767, 3, 0, 0x00000002},
	{D_80142170_151120, (s32)0x80047718, 0x00000000, -32768, 32767, 3, 0, 0x00000002},
	{D_8014217C_15112C, (s32)0x8004771A, 0x00000000, -32768, 32767, 3, 0, 0x00000002},
	{D_80142188_151138, (s32)0x8004771C, 0x00000000, -32768, 32767, 3, 0, 0x00000002},
	{D_80142194_151144, (s32)0x8004771E, 0x00000000, -32768, 32767, 3, 0, 0x00000002},
	{0, 0, 0, 0, 0, 0, 0, 0},
};

// https://decomp.me/scratch/tIoTN
// Debug - display property
void func_80095100_A40B0(s16 arg0, s16 arg1)
{
	s32 value;
	s32 value2;
	DebugPropEntry *entry;
	f32 floatValue;
	DebugPropertyValue *propPtr;

	entry = &D_8013CBC0_14BB70[arg0];
	if (arg0 < 0x20)
	{
	propPtr = (DebugPropertyValue *)&((u8 *)&vehicleTypes[D_80052B34->unk1A])[(u32)(entry->unk8 - entry->unk4)];
	}
	else if (arg0 < 0x35)
	{
	propPtr = (DebugPropertyValue *)entry->unk4;
	}
	else if (arg0 < 0x40)
	{
	propPtr = (DebugPropertyValue *)&((u8 *)&D_801601F0[alienTypes[D_8013CBA4_14BB54].unk50])[entry->unk8 - entry->unk4];
	}
	else if (arg0 < 0x51)
	{
	propPtr = (DebugPropertyValue *)&((u8 *)&alienTypes[D_8013CBA4_14BB54])[(u32)(entry->unk8 - entry->unk4)];
	}
	else if (arg0 < 0x60)
	{
	propPtr = (DebugPropertyValue *)entry->unk4;
	}
	else if (arg0 < 0x64)
	{
	propPtr = (DebugPropertyValue *)&((u8 *)&D_8003E290_3EE90[D_8013CBBC_14BB6C])[(u32)(entry->unk8 - entry->unk4)];
	}
	else
	{
	propPtr = (DebugPropertyValue *)&((u8 *)&D_80140768_14F718[vehicleTypes[D_80052B34->unk1A].unk55])[entry->unk8 - entry->unk4];
	}
	drawText(D_801421A0_151150, 3, arg1, entry->unk0, 0x1C, arg1);
	switch (entry->type)
	{
	case 0:
		value = propPtr->byte;
		break;
	case 1:
		value = propPtr->signedByte;
		break;
	case 2:
	case 5:
		value = propPtr->halfword;
		break;
	case 3:
		value = propPtr->word;
		break;
	case 4:
		floatValue = propPtr->real;
		floatValue = (f64)floatValue * 1000.0;
		value = floatValue;
		break;
	case 6:
		value2 = propPtr->signedByte;
		value = propPtr->bytePair[1];
		break;
	case 7:
		value2 = propPtr->halfword;
		value = propPtr->halfwordPair[2];
		break;
	default:
		value = propPtr->word;
		break;
	}

	if (D_8014ECF0 == 0 || D_8014ECF0 == 1)
	{
	if ((D_8013CBB4_14BB64 == 0xB) || (D_8013CBB4_14BB64 == 0xC))
	{
		drawText(D_801421A8_151158, D_800344B0_350B0[value + 24].name);
		return;
	}
	}
	switch (entry->type)
	{
	case 0:
	case 1:
	case 2:
	case 3:
		drawText(D_801421AC_15115C, value);
		return;
	case 4:
		drawText(D_801421B0_151160, value);
		return;
	case 5:
	{
		floatValue = value;
		drawText(D_801421B4_151164, ((f64)floatValue * 180.0) / 32767.0);
		return;
	}
	case 6:
		drawText(D_801421B8_151168, value2, value);
		return;
	}
}

// Debug - menu navigation?
void func_80095530_A44E0(s16 arg0) {
	DebugPropEntry *entry;
	s32 value2;
	DebugPropertyValue *propPtr;
	s32 value;
	f32 floatValue;

	entry = &D_8013CBC0_14BB70[arg0];
	if (arg0 < 0x20) {
		propPtr = (DebugPropertyValue *)&((u8 *)&vehicleTypes[D_80052B20->unk1A])[entry->unk8 - entry->unk4];
	} else if (arg0 < 0x35) {
		propPtr = (DebugPropertyValue *) entry->unk4;
	} else if (arg0 < 0x40) {
		propPtr = (DebugPropertyValue *)&((u8 *)&D_801601F0[alienTypes[D_8013CBA4_14BB54].unk50])[entry->unk8 - entry->unk4];
	} else if (arg0 < 0x51) {
		propPtr = (DebugPropertyValue *)&((u8 *)&alienTypes[D_8013CBA4_14BB54])[(u32)(entry->unk8 - entry->unk4)];
	} else if (arg0 < 0x60) {
		propPtr = (DebugPropertyValue *) entry->unk4;
	} else if (arg0 < 0x64) {
		propPtr = (DebugPropertyValue *)&((u8 *)&D_8003E290_3EE90[D_8013CBBC_14BB6C])[(u32)(entry->unk8 - entry->unk4)];
	} else {
		propPtr = (DebugPropertyValue *)&((u8 *)&D_80140768_14F718[vehicleTypes[D_80052B34->unk1A].unk55])[entry->unk8 - entry->unk4];
	}

	switch (entry->type) {
	case 0:
		value = propPtr->byte;
		break;
	case 1:
		value = propPtr->signedByte;
		break;
	case 2:
	case 5:
		value = propPtr->halfword;
		break;
	case 3:
		value = propPtr->word;
		break;
	case 4:
		floatValue = propPtr->real;
		floatValue = (f64)floatValue * 1000.0;
		value = floatValue;
		break;
	case 6:
		value2 = propPtr->signedByte;
		value = propPtr->bytePair[1];
		break;
	case 7:
		value2 = propPtr->halfword;
		value = propPtr->halfwordPair[2];
		break;
	default:
		value = propPtr->word;
		break;
	}

	if (currentControllerStates[1].button & 0x200) {
		value--;
	}
	if (currentControllerStates[1].button & 0x100) {
		value++;
	}

	if (entry->type == 6) {
		value -= currentControllerStates[1].stick_y >> entry->shift;
		value2 += currentControllerStates[1].stick_x >> entry->shift;
		if (value2 < entry->minimum) {
			value2 = entry->minimum;
		}
		if (value2 > entry->maximum) {
			value2 = entry->maximum;
		}
	} else {
		value += (currentControllerStates[1].stick_y >> entry->shift);
		value += currentControllerStates[1].stick_x >> (entry->shift + 2);
	}

	if (value < entry->minimum) {
		value = entry->minimum;
	}
	if (value > entry->maximum) {
		value = entry->maximum;
	}

	switch (entry->type) {
		case 0:
			propPtr->signedByte = value;
			break;
		case 1:
			propPtr->signedByte = value;
			break;
		case 2:
		case 5:
			propPtr->halfword = value;
			break;
		case 3:
			propPtr->word = value;
			break;
		case 4:
			propPtr->real = (f32) ((f64)(f32) value / 1000.0);
			break;
		case 6:
			propPtr->signedByte = value2;
			propPtr->bytePair[1] = value;
			break;
		default:
			propPtr->word = value;
		}
}

// https://decomp.me/scratch/hG8iA
// Debug - display menu items
void func_8009594C_A48FC(s16 arg0, s16 arg1)
{
	s32 var_s0;

	for (var_s0 = 0; var_s0 < arg1; var_s0++)
	{
		func_80095100_A40B0(arg0 + var_s0, var_s0 + 1);
	}
	D_8014ECF4 = arg1;
}

// Debug - main method (stubbed)
void func_800959DC_A498C(void) {
}
