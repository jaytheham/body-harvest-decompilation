#include <ultra64.h>
#include "common.h"
#include "overlay_gameplay/outside/A40B0.h"

u32 D_8013CB70_14BB20[] = {
	0x00000000, 0x00000000, 0x01000001, 0x00000030,
	0x00000000, 0x00000000, 0x01000003,
};
Unk8014DD50 *D_8013CB8C_14BB3C = (Unk8014DD50 *)&D_8013CB4C_14BAFC;
u32 D_8013CB90_14BB40 = (u32)&D_8013CB68_14BB18[1];
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
	{"Max Speed", (s32)vehicleTypes, (s32)&vehicleTypes[0].unk40, 0, 32767, 4, 0, 0x00000002},
	{"Min Speed", (s32)vehicleTypes, (s32)&vehicleTypes[0].unk42, -32768, 0, 4, 0, 0x00000002},
	{"Acceleration", (s32)vehicleTypes, (s32)&vehicleTypes[0].unk3E, 0, 255, 3, 0, 0x00000000},
	{"Max Steer", (s32)vehicleTypes, (s32)&vehicleTypes[0].unk48, 0, 32767, 3, 0, 0x00000002},
	{"Steer Change", (s32)vehicleTypes, (s32)&vehicleTypes[0].pad5A[0], 0, 255, 4, 0, 0x00000000},
	{"Steer Point", (s32)vehicleTypes, (s32)&vehicleTypes[0].unk66, -32768, 32767, 3, 0, 0x00000002},
	{"Pivot Point", (s32)vehicleTypes, (s32)&vehicleTypes[0].pivotPoint, 0, 255, 3, 0, 0x00000000},
	{"Hill Climb", (s32)vehicleTypes, (s32)&vehicleTypes[0].unk46, 0, 255, 4, 0, 0x00000000},
	{"Water Drag", (s32)vehicleTypes, (s32)&vehicleTypes[0].unk47, 0, 255, 4, 0, 0x00000000},
	{"Arc of Fire", (s32)vehicleTypes, (s32)&vehicleTypes[0].arcOfFire, 0, 32767, 3, 0, 0x00000002},
	{"Launch Angle", (s32)vehicleTypes, (s32)&vehicleTypes[0].launchAngle, 0, 255, 3, 0, 0x00000000},
	{"1st Weapon", (s32)vehicleTypes, (s32)&vehicleTypes[0].weapon1, 0, 99, 4, 0, 0x00000003},
	{"2nd Weapon", (s32)vehicleTypes, (s32)&vehicleTypes[0].weapon2, 0, 62, 4, 0, 0x00000003},
	{"Gun 1 Xpos", (s32)vehicleTypes, (s32)&vehicleTypes[0].gun1X, -32768, 32767, 3, 0, 0x00000002},
	{"Gun 1 Ypos", (s32)vehicleTypes, (s32)&vehicleTypes[0].gun1Y, -32768, 32767, 3, 0, 0x00000002},
	{"Gun 1 Zpos", (s32)vehicleTypes, (s32)&vehicleTypes[0].gun1Z, -32768, 32767, 3, 0, 0x00000002},
	{"Mass", (s32)vehicleTypes, (s32)&vehicleTypes[0].unk32, 0, 32767, 3, 0, 0x00000002},
	{"Hits", (s32)vehicleTypes, (s32)&vehicleTypes[0].hitPoints, 0, 32767, 3, 0, 0x00000002},
	{"Grip", (s32)vehicleTypes, (s32)&vehicleTypes[0].pad56[1], 0, 255, 3, 0, 0x00000000},
	{"Side Grip", (s32)vehicleTypes, (s32)&vehicleTypes[0].pad56[0], 0, 255, 3, 0, 0x00000000},
	{"Frontal Armour", (s32)vehicleTypes, (s32)&vehicleTypes[0].pad0E[0], 0, 32767, 3, 0, 0x00000002},
	{"Side Armour", (s32)vehicleTypes, (s32)&vehicleTypes[0].pad0E[2], 0, 32767, 3, 0, 0x00000002},
	{"Rear Armour", (s32)vehicleTypes, (s32)&vehicleTypes[0].pad0E[4], 0, 32767, 3, 0, 0x00000002},
	{"Camera Min", (s32)vehicleTypes, (s32)&vehicleTypes[0].unk5C, 0, 255, 3, 0, 0x00000000},
	{"Camera Max", (s32)vehicleTypes, (s32)&vehicleTypes[0].unk5D, 0, 255, 3, 0, 0x00000000},
	{"Tension", (s32)vehicleTypes, (s32)&vehicleTypes[0].unk44, 0, 255, 3, 0, 0x00000000},
	{"Damping", (s32)vehicleTypes, (s32)&vehicleTypes[0].unk45, 0, 255, 3, 0, 0x00000000},
	{"Penalty", (s32)vehicleTypes, (s32)&vehicleTypes[0].unk14, -32768, 32767, 3, 0, 0x00000002},
	{"Shadow Size", (s32)vehicleTypes, (s32)&vehicleTypes[0].pad65, 0, 255, 3, 0, 0x00000000},
	{"Shadow X", (s32)vehicleTypes, (s32)&vehicleTypes[0].shadowWidth, 0, 1000, 3, 0, 0x00000000},
	{"Shadow Z", (s32)vehicleTypes, (s32)&vehicleTypes[0].shadowDepth, 0, 255, 3, 0, 0x00000000},
	{"Collision type", (s32)vehicleTypes, (s32)&vehicleTypes[0].unk16, 0, 3, 3, 0, 0x00000000},
	{"Red", (s32)&D_80047743, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{"Green", (s32)&D_80047744, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{"Blue", (s32)&D_80047745, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{"Alpha", (s32)&D_800313F4_31FF4, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{"Near Clip", (s32)&D_800313F8_31FF8, 0x00000000, 0, 1000, 4, 0, 0x00000002},
	{"Far Clip", (s32)&D_800313FC_31FFC, 0x00000000, 0, 1000, 4, 0, 0x00000002},
	{"Primitive R", (s32)&D_8013D94C_14C8FC, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{"Primitive G", (s32)&D_8013D950_14C900, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{"Primitive B", (s32)&D_8013D954_14C904, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{"Environment R", (s32)&D_8013D940_14C8F0, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{"Environment G", (s32)&D_8013D944_14C8F4, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{"Environment B", (s32)&D_8013D948_14C8F8, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{"Not Used", (s32)&D_8013D948_14C8F8, 0x00000000, 0, 255, 4, 0, 0x00000000},
	{"TestNum1", (s32)&D_80047710, 0x00000000, -32768, 32767, 3, 0, 0x00000002},
	{"TestNum2", (s32)&D_80047712, 0x00000000, -32768, 32767, 3, 0, 0x00000002},
	{"TestNum3", (s32)&D_80047714, 0x00000000, -32768, 32767, 3, 0, 0x00000002},
	{"TestNum4", (s32)&D_80047716, 0x00000000, -32768, 32767, 3, 0, 0x00000002},
	{"TestNum5", (s32)&D_80047718, 0x00000000, -32768, 32767, 3, 0, 0x00000002},
	{"TestNum6", (s32)&D_8004771A, 0x00000000, -32768, 32767, 3, 0, 0x00000002},
	{"TestNum7", (s32)&D_8004771C, 0x00000000, -32768, 32767, 3, 0, 0x00000002},
	{"TestNum8", (s32)&D_8004771E, 0x00000000, -32768, 32767, 3, 0, 0x00000002},
	{0, 0, 0, 0, 0, 0, 0, 0},
};

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
	drawText("%@%s%@", 3, arg1, entry->unk0, 0x1C, arg1);
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
		drawText("%s", D_800344B0_350B0[value + 24].name);
		return;
	}
	}
	switch (entry->type)
	{
	case 0:
	case 1:
	case 2:
	case 3:
		drawText("%d", value);
		return;
	case 4:
		drawText("%d", value);
		return;
	case 5:
	{
		floatValue = value;
		drawText("%f", ((f64)floatValue * 180.0) / 32767.0);
		return;
	}
	case 6:
		drawText("%d, %d", value2, value);
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
	/* IDO emits these unused menu strings in the original rodata order. */
	(void) "%X%Y";
	(void) "%@>";
	(void) "%C";
	(void) "%C";
	(void) "%@MAIN MENU";
	(void) "%@Vehicles";
	(void) "%@Aliens";
	(void) "%@Requests";
	(void) "%@Global variables";
	(void) "%@Timing bars";
	(void) "%@Keys";
	(void) "%@Terrain";
	(void) "%@CutCam";
	(void) "%@GLOBALS MENU";
	(void) "%@Testing";
	(void) "%@Camera";
	(void) "%@Colours";
	(void) "%@Fog";
	(void) "%@TESTING MENU";
	(void) "%@COLOURS MENU";
	(void) "%@FOG MENU";
	(void) "%@TIMING BARS MENU";
	(void) "%@Off";
	(void) "%@On";
	(void) "%@Scale +";
	(void) "%@Scale -";
	(void) "%@KEYS MENU";
	(void) "%C";
	(void) "%@%c";
	(void) "%C";
}
