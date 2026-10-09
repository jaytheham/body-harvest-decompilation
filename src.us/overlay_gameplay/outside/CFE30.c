#define OUTSIDE_CFE30_BSS
#include <ultra64.h>
#include "common.h"

const char D_80142EA0_151E50[] = "ERROR: tried to create a new effect at %d\n"; // "ERROR: tried to create a new effect at %d\n"
const char D_80142ECC_151E7C[] = "EFFECTS WARNING : Call to free up an effect which does not exist\n"; // "EFFECTS WARNING : Call to free up an effect which does not exist\n"
const char D_80142F10_151EC0[] = "ERROR : freeing all effect units for unused effect\n"; // "ERROR : freeing all effect units for unused effect\n"
const char D_80142F44_151EF4[] = "Do not allocate because in pause\n"; // "Do not allocate because in pause\n"
const char D_80142F68_151F18[] = "ERROR: tried to allocate a permanent effect\n"; // "ERROR: tried to allocate a permanent effect\n"
const char D_80142F98_151F48[] = "WARNING : Out of space to create a new dynamic effect of type %d.\n"; // "WARNING : Out of space to create a new dynamic effect of type %d.\n"
const char D_80142FDC_151F8C[] = "ERROR: tried to create a unit at %d (firstEmpty = %d, used=%d)\n"; // "ERROR: tried to create a unit at %d (firstEmpty = %d, used=%d)\n"
const char D_8014301C_151FCC[] = "Do not allocate because in pause\n"; // "Do not allocate because in pause\n"
const char D_80143040_151FF0[] = "WARNING - New permanent effect unit (type %d) cannot be allocated - out of space.\n"; // "WARNING - New permanent effect unit (type %d) cannot be allocated - out of space.\n"
const char D_80143094_152044[] = "WARNING - New dynamic effect unit (type %d) cannot be allocated - out of space.\n"; // "WARNING - New dynamic effect unit (type %d) cannot be allocated - out of space.\n"
const char D_801430E8_152098[] = "*** Tried to allocate a unit that is already being used!! ***\n"; // "*** Tried to allocate a unit that is already being used!! ***\n"
const char D_80143128_1520D8[] = "ERROR - call to free invalid unit: index %d from permanent effect %d\n"; // "ERROR - call to free invalid unit: index %d from permanent effect %d\n"
const char D_80143170_152120[] = "ERROR - call to free invalid unit: index %d from effect %d\n"; // "ERROR - call to free invalid unit: index %d from effect %d\n"
const char D_801431AC_15215C[] = "UNIT POOL CRITICAL ERROR - Call to free unused unit %d from permanent effect %d\n"; // "UNIT POOL CRITICAL ERROR - Call to free unused unit %d from permanent effect %d\n"
const char D_80143200_1521B0[] = "UNIT POOL CRITICAL ERROR - Call to free unused unit %d from effect %d\n"; // "UNIT POOL CRITICAL ERROR - Call to free unused unit %d from effect %d\n"
const char D_80143248_1521F8[] = "ERROR : Tried to kill unit from effect which has no units.\n"; // "ERROR : Tried to kill unit from effect which has no units.\n"
const char D_80143284_152234[] = "ERROR : Unit list inconsistency occurred with 2 units left.\n"; // "ERROR : Unit list inconsistency occurred with 2 units left.\n"
const char D_801432C4_152274[] = "EFFECTS WARNING : Call to free up invalid triple effect unit.\n"; // "EFFECTS WARNING : Call to free up invalid triple effect unit.\n"
const char D_80143304_1522B4[] = "EFFECTS WARNING : Call to free up invalid double effect unit.\n"; // "EFFECTS WARNING : Call to free up invalid double effect unit.\n"
const char D_80143344_1522F4[] = "** WARNING: tried to update a smoke trail effect that doesn't exist! **\n"; // "** WARNING: tried to update a smoke trail effect that doesn't exist! **\n"
const char D_80143390_152340[] = "DYNAMIC EFFECTS : Tried to kill smoke puff unit which does not exist!\n"; // "DYNAMIC EFFECTS : Tried to kill smoke puff unit which does not exist!\n"
const char D_801433D8_152388[] = "DYNAMIC EFFECTS : Cancelled new photon effect - couldn't allocated any effect units\n"; // "DYNAMIC EFFECTS : Cancelled new photon effect - couldn't allocated any effect units\n"
const char D_80143430_1523E0[] = "DYNAMIC EFFECTS : Tried to update photon effect which does not exist!\n"; // "DYNAMIC EFFECTS : Tried to update photon effect which does not exist!\n"
const char D_80143478_152428[] = "DYNAMIC EFFECTS : Tried to kill photon effect which does not exist!\n"; // "DYNAMIC EFFECTS : Tried to kill photon effect which does not exist!\n"
const char D_801434C0_152470[] = "EFFECTS WARNING : Call to move a fire effect which doesn't exist\n"; // "EFFECTS WARNING : Call to move a fire effect which doesn't exist\n"
const char D_80143504_1524B4[] = "EFFECTS WARNING : Failed to create sparks system - cannot allocate any units\n"; // "EFFECTS WARNING : Failed to create sparks system - cannot allocate any units\n"
const char D_80143554_152504[] = "EFFECTS WARNING : Failed to create sparks system - cannot allocate any units\n"; // "EFFECTS WARNING : Failed to create sparks system - cannot allocate any units\n"
const char D_801435A4_152554[] = "EFFECTS WARNING : Trapped call to create chunk for explosion which does not exist.\n"; // "EFFECTS WARNING : Trapped call to create chunk for explosion which does not exist.\n"
const char D_801435F8_1525A8[] = "EFFECTS WARNING : Spurt effect not created - could not allocated any units\n"; // "EFFECTS WARNING : Spurt effect not created - could not allocated any units\n"
const char D_80143644_1525F4[] = "** WARNING: tried to update a bubble effect that doesn't exist! **\n"; // "** WARNING: tried to update a bubble effect that doesn't exist! **\n"
const char D_80143688_152638[] = "EFFECTS WARNING: Failed to create a jet stream - could not allocate any units\n"; // "EFFECTS WARNING: Failed to create a jet stream - could not allocate any units\n"
const char D_801436D8_152688[] = "** WARNING: tried to update a jet stream effect that doesn't exist! **\n"; // "** WARNING: tried to update a jet stream effect that doesn't exist! **\n"
const char D_80143720_1526D0[] = "EFFECTS WARNING: Failed to create a water jet - could not allocate any units\n"; // "EFFECTS WARNING: Failed to create a water jet - could not allocate any units\n"
const char D_80143770_152720[] = "EFFECTS WARNING: Failed to create lightning - could not allocate enough units\n"; // "EFFECTS WARNING: Failed to create lightning - could not allocate enough units\n"
const char D_801437C0_152770[] = "EFFECTS WARNING : You have tried to kill a lightning effect which doesn't exist.\n"; // "EFFECTS WARNING : You have tried to kill a lightning effect which doesn't exist.\n"
const char D_80143814_1527C4[] = "** WARNING: tried to update a ring weapon bullet that doesn't exist! **\n"; // "** WARNING: tried to update a ring weapon bullet that doesn't exist! **\n"
const char D_80143860_152810[] = "** WARNING: tried to update a triple spinner that doesn't exist! **\n"; // "** WARNING: tried to update a triple spinner that doesn't exist! **\n"
const char D_801438A8_152858[] = "TRIPLESPINNER draw warning : trajection is zero.\n"; // "TRIPLESPINNER draw warning : trajection is zero.\n"
const char D_801438DC_15288C[] = "Can't create a nuke - one already in progress\n"; // "Can't create a nuke - one already in progress\n"
const char D_8014390C_1528BC[] = "DYNAMIC EFFECTS : Tried to kill minin photon effect which does not exist!\n"; // "DYNAMIC EFFECTS : Tried to kill minin photon effect which does not exist!\n"
const char D_80143958_152908[] = "DYNAMIC EFFECTS : Tried to update mini photon effect which does not exist!\n"; // "DYNAMIC EFFECTS : Tried to update mini photon effect which does not exist!\n"
const char D_801439A4_152954[] = "DYNAMIC EFFECTS : Tried to kill fire ball effect which does not exist!\n"; // "DYNAMIC EFFECTS : Tried to kill fire ball effect which does not exist!\n"
const char D_801439EC_15299C[] = "DYNAMIC EFFECTS : Tried to update fire ball effect which does not exist!\n"; // "DYNAMIC EFFECTS : Tried to update fire ball effect which does not exist!\n"
const char D_80143A38_1529E8[] = "Create group effect\n"; // "Create group effect\n"
const char D_80143A50_152A00[] = "ERROR : Tried to update a dynamic effect with permanent type %d!\n"; // "ERROR : Tried to update a dynamic effect with permanent type %d!\n"
const char D_80143A94_152A44[] = "ERROR : Tried to update a dynamic effect with invalid type!\n"; // "ERROR : Tried to update a dynamic effect with invalid type!\n"
const char D_80143AD4_152A84[] = "ERROR : Tried to update a permanent effect with a normal type %d!\n"; // "ERROR : Tried to update a permanent effect with a normal type %d!\n"
const char D_80143B18_152AC8[] = "ERROR : Tried to update a permanent effect with invalid type!\n"; // "ERROR : Tried to update a permanent effect with invalid type!\n"
const char D_80143B58_152B08[] = "EFFECTS WARNING : Trying to sort unsortable effect\n"; // "EFFECTS WARNING : Trying to sort unsortable effect\n"
const char D_80143B8C_152B3C[] = "AAARRRGH! EFFECTS HAVE REACHED MAX VERTICES - ABORT DRAWING THIS FRAME\n"; // "AAARRRGH! EFFECTS HAVE REACHED MAX VERTICES - ABORT DRAWING THIS FRAME\n"
const char D_80143BD4_152B84[] = "AAARRRGH! CAN'T DRAW EFFECTS - ABOUT TO OVERFLOW\n"; // "AAARRRGH! CAN'T DRAW EFFECTS - ABOUT TO OVERFLOW\n"
const char D_80143C08_152BB8[] = "ERROR : Call to draw an effect of permanent type %d.\n"; // "ERROR : Call to draw an effect of permanent type %d.\n"
const char D_80143C40_152BF0[] = "ERROR : Call to draw an effect of unknown type %d.\n"; // "ERROR : Call to draw an effect of unknown type %d.\n"
const char D_80143C74_152C24[] = "AAARRRGH! EFFECTS HAVE REACHED MAX VERTICES - ABORT DRAWING THIS FRAME\n"; // "AAARRRGH! EFFECTS HAVE REACHED MAX VERTICES - ABORT DRAWING THIS FRAME\n"
const char D_80143CBC_152C6C[] = "AAARRRGH! CAN'T DRAW EFFECTS - ABOUT TO OVERFLOW\n"; // "AAARRRGH! CAN'T DRAW EFFECTS - ABOUT TO OVERFLOW\n"
const char D_80143CF0_152CA0[] = "ERROR : Call to draw a permanent effect of normal type %d.\n"; // "ERROR : Call to draw a permanent effect of normal type %d.\n"
const char D_80143D2C_152CDC[] = "ERROR : Call to draw a permanent effect of unknown type %d.\n"; // "ERROR : Call to draw a permanent effect of unknown type %d.\n"
const char D_80143D6C_152D1C[] = "CheckNum: %d\n"; // "CheckNum: %d\n"
const char D_80143D7C_152D2C[] = "further info: %d,%d,%d,%d,%d,%d,%d,%d\n"; // "further info: %d,%d,%d,%d,%d,%d,%d,%d\n"
const char D_80143DA4_152D54[] = "further info: %d,%d,%d,%d,%d,%d,%d,%d\n"; // "further info: %d,%d,%d,%d,%d,%d,%d,%d\n"
const char D_80143DCC_152D7C[] = "further info: %d,%d,%d,%d,%d,%d,%d,%d\n"; // "further info: %d,%d,%d,%d,%d,%d,%d,%d\n"
const char D_80143DF4_152DA4[] = "trans[X] = %d,%d,%d,%d : %f\n"; // "trans[X] = %d,%d,%d,%d : %f\n"
const char D_80143E14_152DC4[] = "trans[Y] = %d,%d,%d,%d : %f\n"; // "trans[Y] = %d,%d,%d,%d : %f\n"
const char D_80143E34_152DE4[] = "trans[Z] = %d,%d,%d,%d : "; // "trans[Z] = %d,%d,%d,%d : "
const char D_80143E50_152E00[] = " %f\n"; // " %f\n"
const char D_80143E58_152E08[] = "---------------------------\n"; // "---------------------------\n"
const char D_80143E78_152E28[] = "Call to draw generic flat effect with unknown render type.\n"; // "Call to draw generic flat effect with unknown render type.\n"
const char D_80143EB4_152E64[] = "Initialise special effects\n"; // "Initialise special effects\n"
const char D_80143ED0_152E80[] = "\n\nDUMP SPECIAL EFFECTS INFO\n\n"; // "\n\nDUMP SPECIAL EFFECTS INFO\n\n"
const char D_80143EF0_152EA0[] = "Effect %d :  Type %d  numUints %d\n"; // "Effect %d :  Type %d  numUints %d\n"
const char D_80143F14_152EC4[] = "EFFECTS WARNING : Call to CreateExplosion with an unknown type %d.\n"; // "EFFECTS WARNING : Call to CreateExplosion with an unknown type %d.\n"
const char D_80143F58_152F08[] = "Error: too many shields allocated\n"; // "Error: too many shields allocated\n"
const char D_80143F7C_152F2C[] = "removing shield : %d\n"; // "removing shield : %d\n"
const char D_80143F94_152F44[] = "shield remove\n"; // "shield remove\n"
const char D_80143FA4_152F54[] = "removing shield : %d\n"; // "removing shield : %d\n"

const f64 D_80143FC0_152F70[1] = {255.0};
const f64 D_80143FC8_152F78[1] = {255.0};
const f64 D_80143FD0_152F80[1] = {255.0};
const f64 D_80143FD8_152F88[1] = {255.0};
const f64 D_80143FE0_152F90[1] = {255.0};
const f64 D_80143FE8_152F98[1] = {255.0};
const f64 D_80143FF0_152FA0[1] = {255.0};
const f64 D_80143FF8_152FA8[1] = {0.6};
const f32 D_80144000_152FB0[1] = {1.6666666f};
const f32 D_80144004_152FB4[1] = {10000.0f};
const f64 D_80144008_152FB8[1] = {0.33333};
const f32 D_80144010_152FC0[1] = {20.833334f};
const f32 D_80144014_152FC4[1] = {1.6666666f};
const f32 D_80144018_152FC8[1] = {0.8f};
const f32 D_8014401C_152FCC[1] = {0.4f};
const f32 D_80144020_152FD0[1] = {0.4f};
const f32 D_80144024_152FD4[1] = {0.8f};
const f64 D_80144028_152FD8[1] = {300.0};
const u32 jtbl_80144030_152FE0[] = {
    0x800DAC34,
    0x800DAC44,
    0x800DAC24,
    0x800DAC54,
    0x800DAC64,
    0x800DAC74,
    0x800DACA4,
    0x800DACB4,
    0x800DAC94,
    0x800DAC84,
};
const u32 jtbl_80144058_153008[] = {
    0x800DAD7C,
    0x800DAD8C,
    0x800DAD9C,
    0x800DADAC,
    0x800DADBC,
    0x800DADCC,
    0x800DADDC,
    0x800DAE1C,
    0x800DADFC,
    0x800DADEC,
    0x800DAE0C,
    0x800DAE2C,
    0x800DAD6C,
    0x800DAE3C,
    0x800DAE4C,
    0x800DAE5C,
    0x800DAE6C,
    0x800DAE7C,
    0x800DAE8C,
    0x800DAE9C,
    0x800DAEAC,
    0x800DAEBC,
};

const f64 D_801440B0_153060[1] = {180.0};
const f64 D_801440B8_153068[1] = {180.0};
const f64 D_801440C0_153070[1] = {180.0};
const f64 D_801440C8_153078[1] = {180.0};
const f64 D_801440D0_153080[1] = {102.0};
const f32 D_801440D8_153088[1] = {3000.0f};
const f64 D_801440E0_153090[1] = {
    0.00035714285714285714,
};
const f32 D_801440E8_153098[1] = {3001.0f};
const f32 D_801440EC_15309C[1] = {3000.0f};
const f64 D_801440F0_1530A0[1] = {
    3001.0,
};
const f32 D_801440F8_1530A8[1] = {0.003921569f};
const f64 D_80144100_1530B0[1] = {
    3001.0,
};
const f64 D_80144108_1530B8[1] = {
    0.8,
};

const u32 jtbl_80144110_1530C0[] = {
    0x800DD7C0,
    0x800DD7B0,
    0x800DD7D0,
    0x800DD7E0,
    0x800DD7F0,
    0x800DD800,
    0x800DD830,
    0x800DD840,
    0x800DD820,
    0x800DD810,
};
const u32 jtbl_80144138_1530E8[] = {
    0x800DD934,
    0x800DDA20,
    0x800DDA20,
    0x800DDA20,
    0x800DDA20,
    0x800DD944,
    0x800DD954,
    0x800DDA20,
    0x800DD964,
    0x800DDA20,
    0x800DDA20,
    0x800DD974,
    0x800DD924,
    0x800DDA20,
    0x800DD984,
    0x800DD994,
    0x800DD9A4,
    0x800DD9B4,
    0x800DD9C4,
    0x800DD9D4,
    0x800DD9E4,
    0x800DDA20,
};
const f32 D_80144190_153140[1] = {0.6f};

const u32 jtbl_80144194_153144[] = {
    0x800E1F60,
    0x800E1EA8,
    0x800E1E40,
    0x800E1E40,
    0x800E1EA8,
    0x800E1EA8,
    0x800E1EA8,
    0x800E1EA8,
    0x800E1EA8,
    0x800E1E40,
    0x800E1EA8,
    0x800E1E40,
};
const u32 jtbl_801441C4_153174[] = {
    0x800E39F4,
    0x800E3B00,
    0x800E3C10,
    0x800E3D70,
    0x800E4488,
    0x800E3DBC,
    0x800E3F7C,
};
const f64 D_801441E0_153190[1] = {
    1.7
};
const f64 D_801441E8_153198[1] = {
    6000.0,
};
VehicleSpawnOffset D_8013DB10_14CAC0[4][23] = {
	/* Greece */
	{
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0x03, 0x0A, 0x00, 0x19 },
		{ 0x18, 0x11, 0x00, 0x19 },
		{ 0x18, 0x11, 0x00, 0x19 },
		{ 0x13, 0x2B, 0x00, 0x19 },
		{ 0x22, 0x1C, 0x00, 0x19 },
		{ 0x23, 0x20, 0x00, 0x19 },
		{ 0xDF, 0x1E, 0x00, 0x19 },
		{ 0xE3, 0x19, 0x00, 0x19 },
		{ 0x1C, 0x1E, 0x00, 0x19 },
		{ 0x16, 0x1A, 0x00, 0x19 },
		{ 0x17, 0x15, 0x00, 0x19 },
		{ 0x23, 0x1E, 0x00, 0x19 },
		{ 0x1B, 0x19, 0x00, 0x19 },
		{ 0x0F, 0x17, 0x00, 0x19 },
		{ 0x18, 0x22, 0x00, 0x19 },
		{ 0x01, 0x41, 0x00, 0x19 },
		{ 0x00, 0x28, 0x00, 0x19 },
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0x00, 0x00, 0x00, 0x00 },
	},
	/* Java */
	{
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0x00, 0x5D, 0x00, 0x28 },
		{ 0xE8, 0x1D, 0x00, 0x19 },
		{ 0xE2, 0x23, 0x00, 0x19 },
		{ 0x44, 0x28, 0x58, 0x23 },
		{ 0x0F, 0x00, 0x00, 0x19 },
		{ 0x24, 0x23, 0x00, 0x19 },
		{ 0xD8, 0x22, 0x23, 0x19 },
		{ 0xDA, 0x21, 0x21, 0x19 },
		{ 0x15, 0x17, 0x00, 0x19 },
		{ 0x9D, 0x62, 0x00, 0x2D },
		{ 0x12, 0x1C, 0x00, 0x19 },
		{ 0x99, 0x3C, 0x2A, 0x23 },
		{ 0x31, 0x21, 0x53, 0x1F },
		{ 0xDA, 0x1F, 0x1E, 0x19 },
		{ 0x2D, 0x2D, 0x00, 0x19 },
		{ 0xB6, 0x7D, 0x00, 0x28 },
		{ 0x3F, 0x27, 0x00, 0x1E },
		{ 0x00, 0x00, 0x00, 0x19 },
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0x00, 0x00, 0x00, 0x00 },
	},
	/* America */
	{
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0xDA, 0x17, 0x00, 0x14 },
		{ 0xE2, 0x24, 0x06, 0x0F },
		{ 0x28, 0x18, 0x00, 0x14 },
		{ 0x18, 0x18, 0x00, 0x14 },
		{ 0x24, 0x18, 0x00, 0x14 },
		{ 0x35, 0x13, 0x00, 0x19 },
		{ 0xF6, 0x34, 0x00, 0x19 },
		{ 0xFC, 0x18, 0x00, 0x19 },
		{ 0x9E, 0x00, 0x00, 0x32 },
		{ 0xD3, 0x00, 0x00, 0x19 },
		{ 0xC4, 0x00, 0x00, 0x19 },
		{ 0xC9, 0x19, 0x19, 0x14 },
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0xC9, 0x1E, 0x19, 0x19 },
		{ 0x32, 0x13, 0x00, 0x19 },
		{ 0x3A, 0x2E, 0x1F, 0x19 },
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0x1E, 0x00, 0x00, 0x00 },
		{ 0x1E, 0x00, 0x00, 0x00 },
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0x00, 0x00, 0x00, 0x00 },
	},
	/* Siberia */
	{
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0xBE, 0x19, 0x15, 0x14 },
		{ 0x09, 0x32, 0x14, 0x14 },
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0xC6, 0x25, 0x00, 0x32 },
		{ 0xB2, 0x3C, 0x2F, 0x00 },
		{ 0xD3, 0x44, 0x1A, 0x19 },
		{ 0x83, 0x19, 0x18, 0x19 },
		{ 0x00, 0x18, 0x1E, 0x19 },
		{ 0x00, 0x3C, 0x00, 0x19 },
		{ 0x0B, 0x2D, 0x10, 0x19 },
		{ 0x25, 0x14, 0x00, 0x19 },
		{ 0x2F, 0x1B, 0x00, 0x19 },
		{ 0xCB, 0x2E, 0x3A, 0x19 },
		{ 0x1E, 0x00, 0x00, 0x00 },
		{ 0x1E, 0x00, 0x00, 0x00 },
		{ 0x16, 0x37, 0x38, 0x19 },
		{ 0x44, 0x5B, 0x01, 0x28 },
		{ 0x1E, 0x00, 0x00, 0x00 },
		{ 0x1E, 0x00, 0x00, 0x00 },
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0x00, 0x00, 0x00, 0x00 },
		{ 0x00, 0x00, 0x00, 0x00 },
	},
};
u8 D_8013DC80_14CC30[0x70] = {
	0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0xF0, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x01, 0x00, 0xEC, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0xF4, 0x80, 0x01, 0x00, 0xF4, 0x80, 0x01, 0x01, 0x00, 0x80,
	0x01, 0x00, 0xFC, 0x80, 0x01, 0x00, 0xF8, 0x80, 0x01, 0x00, 0xF8, 0x80, 0x01, 0x01, 0x04, 0x80,
};
u32 D_8013DCF0_14CCA0[0xA] = {
	0x05059CA0, 0x05058AA0, 0x05058CA0, 0x05058EA0, 0x050590A0,
	0x050592A0, 0x050594A0, 0x050596A0, 0x050598A0, 0x05059AA0,
};
u8 D_8013DD18_14CCC8[0x08] = {
	0x0A, 0x0A, 0x1E, 0x08, 0x08, 0x0A, 0x0A, 0x00,
};
u32 D_8013DD20_14CCD0[8] = {
	0x050357F0, 0x05035218, 0x05035018, 0x05035430, 0x05035510, 0x050352C8, 0x050356D8, 0x050350B8
};
Unk800E0F4CEntry D_8013DD40_14CCF0[28] = {
	{ 5, 5, 5, 0, 1, 0, 0, 0, 0, 0, 64, 1, 1 },
	{ 5, 5, 5, 0, 1, 0, 0, 0, 0, 0, 64, 1, 1 },
	{ 5, 5, 5, 0, 1, 0, 0, 0, 0, 0, 64, 1, 1 },
	{ 5, 5, 5, 0, 1, 0, 0, 0, 0, 0, 64, 1, 1 },
	{ 5, 5, 5, 0, 1, 0, 0, 0, 0, 0, 64, 1, 1 },
	{ 5, 5, 5, 0, 1, 0, 0, 0, 0, 0, 64, 1, 1 },
	{ 10, 10, 10, 0, 3, 0, 0, 0, 10, 0, 64, 1, 1 },
	{ 10, 10, 10, 0, 3, 0, 0, 0, 10, 0, 64, 1, 1 },
	{ 10, 10, 10, 0, 3, 0, 0, 0, 10, 0, 64, 1, 1 },
	{ 10, 10, 10, 0, 3, 0, 0, 0, 10, 0, 64, 1, 1 },
	{ 10, 10, 10, 0, 3, 0, 0, 0, 10, 0, 64, 1, 1 },
	{ 10, 10, 10, 0, 3, 0, 0, 0, 10, 0, 64, 1, 1 },
	{ 15, 15, 15, 0, 3, 0, 0, 0, 5, 0, 28, 1, 1 },
	{ 15, 15, 15, 0, 4, 0, 0, 0, 5, 0, 28, 1, 1 },
	{ 15, 15, 15, 0, 3, 0, 0, 0, 5, 0, 28, 1, 1 },
	{ 15, 15, 15, 0, 3, 0, 0, 0, 5, 0, 28, 1, 1 },
	{ 15, 15, 15, 0, 3, 0, 0, 0, 5, 0, 28, 1, 1 },
	{ 15, 15, 15, 0, 3, 0, 0, 0, 5, 0, 28, 1, 1 },
	{ 25, 25, 25, 0, 4, 5, 2, 0, 25, 0, 32, 1, 1 },
	{ 40, 40, 40, 0, 8, 30, 10, 0, 50, 0, 36, 100, 3 },
	{ 65, 65, 65, 10, 10, 50, 20, 0, 75, 0, 40, 150, 8 },
	{ 90, 90, 90, 16, 16, 75, 30, 0, 100, 0, 44, 200, 12 },
	{ 127, 127, 127, 32, 32, 100, 40, 0, 150, 0, 48, 300, 15 },
	{ 127, 127, 127, 32, 32, 255, 40, 0, 200, 0, 48, 300, 15 },
	{ 70, 70, 70, 12, 20, 0, 15, 0, 60, 0, 40, 250, 10 },
	{ 220, 220, 220, 32, 32, 255, 50, 0, 125, 0, 48, 300, 20 },
	{ 65, 65, 65, 10, 10, 50, 20, 0, 75, 0, 20, 150, 1 },
	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
};
s32 D_8013DF00_14CEB0[32] = {
	1000, 1000, 1800, 3400, 5200, 7600, 10700, 13100,
	15400, 16900, 18500, 19200, 20100, 20400, 20600, 20500,
	20100, 19300, 18300, 17100, 15900, 14400, 13000, 11200,
	9600, 8000, 6100, 4200, 3100, 2000, 1300, 1200,
};
Unk80154082 D_8013DF80_14CF30 = { 0xB4, 0xFF, 0x32 };
u8 D_8013DF84_14CF34[0x0C] = {
	0xFF, 0xFF, 0x00, 0x46, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
};
u8 D_8013DF90_14CF40[4][3] = {
	{ 0xFF, 0xFF, 0xFF },
	{ 0x32, 0x28, 0x8C },
	{ 0x64, 0x64, 0x82 },
	{ 0x1E, 0x14, 0x64 },
};
u8 D_8013DF9C_14CF4C[4][3] = {
	{ 0xFF, 0xB4, 0xB4 },
	{ 0x96, 0x28, 0x28 },
	{ 0x82, 0x64, 0x64 },
	{ 0x64, 0x14, 0x1E },
};
u8 D_8013DFA8_14CF58[4][3] = {
	{ 0xFA, 0xA0, 0xA0 },
	{ 0xA0, 0xFA, 0xA0 },
	{ 0xA0, 0xA0, 0xFA },
	{ 0x00, 0x00, 0x00 },
};
f32 D_8013DFB4_14CF64[6] = {
	0.8f, 1.5f, 2.0f, 1.0f, 2.25f, 3.5f,
};
f32 D_8013DFCC_14CF7C[6] = {
	0.75f, 1.5f, 2.5f, 3.3f, 4.25f, 6.0f,
};
u8 D_8013DFE4_14CF94[0x10] = {
	0xFA, 0x64, 0xFA, 0x64, 0xFA, 0x64, 0x64, 0x64, 0xFA, 0xFA, 0x64, 0x64, 0xFA, 0xFA, 0xFA, 0x00,
};
EffectParticleConfig D_8013DFF4_14CFA4[15] = {
	{ 0x10, 0x00, 0x00, 0x0F, 0x00, 0x01, 0x10, 0x10 },
	{ 0x01, 0x05, 0x00, 0x3C, 0x00, 0x00, 0x20, 0x20 },
	{ 0x01, 0x03, 0x02, 0x0A, 0x00, 0x00, 0x20, 0x20 },
	{ 0x01, 0x03, 0x02, 0x0A, 0x00, 0x00, 0x20, 0x20 },
	{ 0x01, 0x06, 0x00, 0x02, 0x02, 0x00, 0x20, 0x20 },
	{ 0x01, 0x04, 0x00, 0x03, 0x02, 0x00, 0x20, 0x20 },
	{ 0x01, 0x0A, 0x00, 0x03, 0x02, 0x00, 0x20, 0x20 },
	{ 0x01, 0x00, 0x00, 0x63, 0x00, 0x00, 0x20, 0x20 },
	{ 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x20 },
	{ 0x08, 0x00, 0x00, 0x05, 0x00, 0x00, 0x20, 0x20 },
	{ 0x01, 0x0E, 0x0C, 0x06, 0x00, 0x00, 0x20, 0x20 },
	{ 0x01, 0x0A, 0x0B, 0x08, 0x00, 0x00, 0x20, 0x20 },
	{ 0x01, 0x05, 0x06, 0x07, 0x00, 0x00, 0x20, 0x20 },
	{ 0x08, 0x05, 0x00, 0x0A, 0x00, 0x00, 0x20, 0x20 },
	{ 0x10, 0x03, 0x00, 0x10, 0x00, 0x00, 0x20, 0x20 },
};
u8 D_8013E06C_14D01C[0x3C] = {
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xC8, 0x96, 0x64, 0xFF, 0xC8, 0xC8, 0xC8, 0xFF,
	0xC8, 0xC8, 0xF0, 0xFF, 0xF0, 0xF0, 0xF0, 0xFF, 0xFF, 0xFF, 0xFF, 0x87, 0xFF, 0xFF, 0xFF, 0x96,
	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xB4, 0x46, 0x46, 0x46, 0xC8,
	0x5A, 0x5A, 0x5A, 0xAF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xE6, 0x32, 0xFF,
};
u8 D_8013E0A8_14D058[0x18] = {
	0xFF, 0xFF, 0xFF, 0xFF, 0xF0, 0x64, 0xFF, 0xE6, 0x32, 0xFF, 0xC8, 0x1E, 0xF0, 0xC8, 0x1E, 0xF0,
	0x64, 0x1E, 0xA0, 0x4B, 0x28, 0x64, 0x32, 0x32,
};
u32 D_8013E0C0_14D070[15] = {
	0x05033FA0, 0x0100D800, 0x0100E080, 0x0100E080, 0x0100E280, 0x0100E080, 0x0100E280, 0x0100D800, 0x0100C700, 0x0100C700, 0x0100E080, 0x0100E080, 0x0100E080, 0x0100C700, 0x050474F0
};
u8 D_8013E0FC_14D0AC[0x0C] = {
	0xFF, 0x32, 0x32, 0x64, 0x00, 0x00, 0xFF, 0x32, 0x32, 0x64, 0x00, 0x00,
};
RingPaletteTable D_8013E108_14D0B8 = {{
	0xFF, 0xFF, 0x00, 0xFF, 0xE6, 0x96, 0x3C, 0xFF, 0xAA, 0xE6, 0xFF, 0x8C, 0x5A, 0xB4, 0xDC, 0xB4,
	0x78, 0xBE, 0xFF, 0x78, 0x28, 0x6E, 0xB4, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x07, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x50, 0x48, 0x00, 0x00, 0x00, 0xFC, 0x01, 0x33, 0x00, 0xFC, 0x20, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0xE5, 0x00, 0x00, 0x00, 0x28, 0x00, 0x28,
	0x00, 0x28, 0x18, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x1F, 0x00, 0x1F, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x82, 0x00, 0x00, 0x00, 0x00,
	0x40, 0x12, 0x00, 0x00, 0x00, 0xC5, 0x00, 0xC5, 0x00, 0xC5, 0x20, 0x00, 0x00, 0x00, 0x00, 0x05,
	0x00, 0x00, 0x00, 0x00, 0x11, 0x79, 0x00, 0x00, 0x00, 0x28, 0x00, 0x28, 0x00, 0x28, 0x18, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x0C,
	0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x01, 0xC1, 0x01, 0xC1, 0x01, 0xC1, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xFE, 0xFA, 0xFE, 0xFA, 0xFE, 0xFA, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x24, 0xD5, 0x00, 0x00, 0x00, 0xBB, 0x00, 0xBB, 0x00, 0xBB, 0x0B, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0xD5, 0x00, 0x00, 0xFF, 0x94, 0xFF, 0x94,
	0xFF, 0x94, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x65, 0x00, 0x00,
	0xFF, 0xD8, 0xFF, 0xD8, 0xFF, 0xD8, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x07, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0xBC, 0x04, 0xBC, 0x04, 0xBC, 0x16, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x0E, 0x00, 0x0E, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x05, 0x69, 0x05, 0x69, 0x05, 0x69, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xBE, 0xFA, 0xBE, 0xFA, 0xBE, 0x01, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x05, 0x03, 0x05, 0x03, 0x05, 0x0C, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x22, 0x00,
}};
u8 D_8013E2EC_14D29C[0x08] = {
	0x03, 0x03, 0x06, 0x03, 0x08, 0x00, 0x00, 0x00,
};
s32 D_8013E2F4_14D2A4[5] = {
	(s32)0x8013E120U,
	(s32)0x8013E15CU,
	(s32)0x8013E198U,
	(s32)0x8013E210U,
	(s32)0x8013E24CU,
};
s32 D_8013E308_14D2B8[5] = {
	0x0504B770,
	0x0504BA60,
	0x0504BC98,
	0x0504BE10,
	0x0504BF68,
};
u8 D_8013E31C_14D2CC[0x08] = {
	0xFF, 0xDA, 0x0C, 0x96, 0x62, 0x32, 0x00, 0x00,
};
u8 D_8013E324_14D2D4[0x0C] = {
	0xFF, 0xFF, 0xFF, 0x64, 0x00, 0x00, 0x64, 0xFF, 0x00, 0x00, 0x00, 0x00,
};
u8 D_8013E330_14D2E0[0x14] = {
	0xFF, 0xC3, 0xC3, 0xFF, 0xDC, 0xAA, 0xFF, 0xDC, 0x78, 0xC3, 0xFF, 0xC3, 0xC3, 0xDC, 0xFF, 0xFF,
	0x87, 0xFF, 0x00, 0x00,
};
u8 D_8013E344_14D2F4 = 0;
u8 D_8013E348_14D2F8[10][6] = {
	{0xFA, 0xFF, 0x00, 0x8C, 0x00, 0x00},
	{0xFF, 0xFF, 0x19, 0x39, 0x17, 0x66},
	{0xFF, 0xC0, 0xA5, 0xF4, 0x17, 0x66},
	{0xFF, 0xFF, 0x00, 0xFF, 0x00, 0x00},
	{0x26, 0x90, 0x80, 0xFF, 0xFF, 0xFF},
	{0xA0, 0x90, 0x2A, 0xFF, 0xFF, 0xFF},
	{0x92, 0xFE, 0x1C, 0x00, 0x07, 0x42},
	{0x92, 0xFD, 0x78, 0x00, 0x07, 0x66},
	{0xB0, 0xDB, 0x7A, 0xC4, 0x07, 0x15},
	{0xB0, 0xFF, 0xED, 0xC4, 0x07, 0x15},
};
u8 D_8013E384_14D334[10][6] = {
	{0xE6, 0x3E, 0x04, 0x19, 0x2A, 0x54},
	{0x61, 0x8C, 0x70, 0x12, 0x2C, 0xC9},
	{0x00, 0x79, 0xE9, 0xFF, 0x00, 0x00},
	{0xF5, 0x81, 0xB0, 0x12, 0x1B, 0x8E},
	{0x00, 0x77, 0xE8, 0xFF, 0xFF, 0x00},
	{0xA0, 0x03, 0xF4, 0x00, 0x03, 0x0C},
	{0xFA, 0x1F, 0x16, 0x70, 0x34, 0xB9},
	{0x2A, 0xEA, 0x08, 0x6A, 0x72, 0x15},
	{0xFF, 0xEF, 0x08, 0xFF, 0x22, 0x71},
	{0x12, 0xEF, 0x08, 0xFD, 0x22, 0x71},
};
u8 D_8013E3C0_14D370[0x10] = {
	0x00, 0xB4, 0x00, 0xD2, 0x73, 0x1E, 0x82, 0x00, 0x78, 0x32, 0x14, 0x3C, 0x32, 0x14, 0x3C, 0x00,
};
u8 D_8013E3D0_14D380[0x0C] = {
	0xFF, 0xFF, 0xFA, 0xFF, 0xA0, 0x96, 0xFA, 0x6E, 0x28, 0x82, 0x32, 0x28,
};
u8 D_8013E3DC_14D38C[0x0C] = {
	0xFF, 0xFF, 0xFF, 0xFF, 0xEB, 0xFF, 0xDC, 0x1E, 0x64, 0x64, 0x28, 0xDC,
};
EffectPalette D_8013E3E8_14D398 = { { 0xF0FFFA64, 0xFFF000E6, 0x9600C864 } };
s16 D_8013E3F4_14D3A4 = 0;
s16 D_8013E3F8_14D3A8 = 0;
u32 D_pad14D3AA[3] = { 0 };
u8 D_8013E408_14D3B8 = 0;
EffectRgb D_8013E40C_14D3BC = { 0xFF, 0x80, 0x80 };


void func_800C0E80_CFE30(f32 *mat, f32 *vec, f32 *out) {
	out[0] = vec[0] * mat[0] + vec[1] * mat[3] + vec[2] * mat[6];
	out[1] = vec[0] * mat[1] + vec[1] * mat[4] + vec[2] * mat[7];
	out[2] = vec[0] * mat[2] + vec[1] * mat[5] + vec[2] * mat[8];
}

void func_800C0F14_CFEC4(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = (arg0->y * arg1->z) - (arg0->z * arg1->y);
	arg2->y = (arg0->z * arg1->x) - (arg0->x * arg1->z);
	arg2->z = (arg0->x * arg1->y) - (arg0->y * arg1->x);
}

void func_800C0F84_CFF34(f32 arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg1->x / arg0;
	arg2->y = arg1->y / arg0;
	arg2->z = arg1->z / arg0;
}

f32 func_800C0FAC_CFF5C(Vec3f *arg0) {
	return (arg0->x * arg0->x) + (arg0->y * arg0->y) + (arg0->z * arg0->z);
}

f32 func_800C0FD4_CFF84(Vec3f *arg0) {
	f32 temp_f0;
	f32 var_f12;

	temp_f0 = func_800C0FAC_CFF5C(arg0);
	var_f12 = temp_f0;
	if ((f64) temp_f0 != 0.0) {
		var_f12 = sqrtf(var_f12);
	}
	return var_f12;
}

void func_800C1024_CFFD4(Vec3f *arg0, Vec3f *arg1) {
	f32 temp_f0;

	temp_f0 = func_800C0FD4_CFF84(arg0);
	if ((f64) temp_f0 == 0.0) {
		*arg1 = *arg0;
		return;
	}
	func_800C0F84_CFF34(temp_f0, arg0, arg1);
}

f32 func_800C1090_D0040(Vec3f *arg0, Vec3f *arg1) {
	return (arg0->x * arg1->x) + (arg0->y * arg1->y) + (arg0->z * arg1->z);
}

void func_800C10C0_D0070(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg0->x - arg1->x;
	arg2->y = arg0->y - arg1->y;
	arg2->z = arg0->z - arg1->z;
}

void func_800C10F4_D00A4(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg0->x + arg1->x;
	arg2->y = arg0->y + arg1->y;
	arg2->z = arg0->z + arg1->z;
}

void func_800C1128_D00D8(f32 arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg1->x * arg0;
	arg2->y = arg1->y * arg0;
	arg2->z = arg1->z * arg0;
}

void func_800C1150_D0100(void) {
	f32 sp58[4][4];
	f32 sp34[3][3];
	s16 var_a1;
	s16 var_v0;
	f32 spvec[3];

	guMtxL2F(sp58, (Mtx *)(D_8005BB20 + 0x200));
	for (var_a1 = 0; var_a1 < 3; var_a1++) {
		for (var_v0 = 0; var_v0 < 3; var_v0++) {
			sp34[var_a1][var_v0] = sp58[var_v0][var_a1];
		}
	}
	spvec[0] = -0.5f;
	spvec[1] = 0.5f;
	spvec[2] = 0.0f;
	func_800C0E80_CFE30((f32 *)sp34, spvec, (f32 *)&D_80153AB8);
	spvec[0] = -spvec[0];
	func_800C0E80_CFE30((f32 *)sp34, spvec, (f32 *)&D_80153AC4);
	func_800C0F14_CFEC4(&D_80153AB8, &D_80153AC4, &D_80153AD0);
	func_800C1024_CFFD4(&D_80153AD0, &D_80153AD0);
}

void func_800C1268_D0218(f32 arg0, f32 arg1, f32 arg2) { D_80153BA0.x = arg0; D_80153BA0.y = arg1; D_80153BA0.z = arg2; }

void func_800C1288_D0238(u8 arg0, u8 arg1, s32 arg2) {
	u8 var_v0;

	if (arg0 < 0x1E) {
		D_80154088[arg0].unk1 = 0;
		D_80154088[arg0].unk0 = arg1;
		if (arg2 != 0) {
			D_80154088[arg0].unk1 |= 8;
		}
		D_80154088[arg0].unk4 = 0;
		D_80154088[arg0].unk6 = -6;
		D_80154088[arg0].unk8 = -6;
		D_80154088[arg0].unkA = -6;
		D_80154304++;
		D_8015430C = 0x1E;
		var_v0 = arg0;
		if (arg0 < 0x1E) {
			do {
				if (D_80154088[var_v0].unk0 == 0xFA) {
					D_8015430C = var_v0;
					var_v0 = 0x1E;
				}
				var_v0++;
			} while (var_v0 < 0x1E);
		}
	} else {
		osSyncPrintf(&D_80142EA0_151E50, arg0);
	}
}

void func_800C1384_D0334(u8 arg0) {
	if (D_80154088[arg0].unk0 == 0xFA) {
		osSyncPrintf(&D_80142ECC_151E7C);
		return;
	}
	D_80154088[arg0].unk0 = 0xFA;
	D_80154088[arg0].unk1 = 0;
	D_80154304--;
	if (arg0 < D_8015430C) {
		D_8015430C = arg0;
	}
}

void func_800C1418_D03C8(u8 arg0, s32 arg1)
{
	Unk801541F8Entry *entry;
	if (arg1 != 0)
	{
		entry = &D_801541F8[arg0];
	}
	else
	{
		entry = &D_80154088[arg0];
	}
	if (entry->unk0 == 0xFA)
	{
		osSyncPrintf(&D_80142F10_151EC0);
		return;
	}
	while (entry->unk4 > 0)
	{
		func_800C1A4C_D09FC(entry->unk6, arg0, arg1);
	}
}

u8 func_800C14D4_D0484(u8 arg0) {
	u8 temp_slot;
	u8 result_slot;
	s32 temp;

	if ((gameplayMode == GAMEPLAY_MODE_UNK2) || (gameplayMode == GAMEPLAY_MODE_UNK9)) {
		osSyncPrintf(&D_80142F44_151EF4);
	}

	if (arg0 >= 0xA) {
		temp = 1;
	} else {
		temp = 0;
	}

	if (temp != 0) {
		osSyncPrintf(&D_80142F68_151F18, arg0);
		return 0xFB;
	}

	if (D_80154304 >= 0x1E) {
		osSyncPrintf(&D_80142F98_151F48, arg0);
		temp_slot = 0xFB;
	} else {
		temp_slot = D_8015430C;
		func_800C1288_D0238(temp_slot, arg0, 0);
	}
	result_slot = temp_slot;
	return result_slot;
}

u8 func_800C1598_D0548(u8 arg0) {
	return func_800C14D4_D0484(arg0);
}

void func_800C15C0_D0570(u8 arg0, s32 arg1, s16 arg2, s32 arg3) {
	Unk80154318Entry *unit;
	Unk801541F8Entry *entry;
	s16 i;

	if ((arg2 >= 0) && (arg2 < 0x190)) {
		unit = &D_80154318[arg2];
		unit->unk0 = 1;
		if (arg3 != 0) {
			unit->unk0 |= 2;
		}
		unit->unk1 = arg0;
		unit->unk2 = 1;
		unit->unk4 = -5;

		if (arg1 != 0) {
			entry = &D_801541F8[arg0];
		} else {
			entry = &D_80154088[arg0];
		}

		if (entry->unk4 == 0) {
			entry->unk6 = arg2;
					unit->unk6 = -4;
		} else {
					unit->unk6 = entry->unk8;
			D_80154318[entry->unk8].unk4 = arg2;
		}

		entry->unk8 = arg2;
		entry->unk4++;
		D_8015430E++;
		D_80154310 = 0x190;

		for (i = arg2 + 1; i < 0x190; i++) {
			if (!(D_80154318[i].unk0 & 1)) {
				D_80154310 = i;
				break;
			}
		}

		if (D_8015430E < 0xFA) {
			D_80156ED8 = 0;
		} else if (D_8015430E < 0x15E) {
			D_80156ED8 = 1;
		} else {
			D_80156ED8 = 2;
		}
		return;
	}

	osSyncPrintf(&D_80142FDC_151F8C, arg2, D_80154310, D_8015430E);
}

// AI - Allocate effect slot
s16 func_800C17B4_D0764(u8 arg0, s32 arg1) {
	s16 var_a2;

	if (gameplayMode == 2 || gameplayMode == 9) {
		osSyncPrintf(&D_8014301C_151FCC);
	}
	if (D_8015430E >= 0x190) {
		if (arg1 != 0) {
			osSyncPrintf(&D_80143040_151FF0, D_801541F8[arg0].unk0);
			var_a2 = -3;
		} else {
			osSyncPrintf(&D_80143094_152044, D_80154088[arg0].unk0);
			var_a2 = -3;
		}
	} else {
		var_a2 = D_80154310;
		if (D_80154318[var_a2].unk0 & 1) {
			osSyncPrintf(&D_801430E8_152098);
		}
		func_800C15C0_D0570(arg0, arg1, var_a2, 0);
	}
	return var_a2;
}

// AI - Request effect slot
s16 func_800C18D0_D0880(u8 arg0) {
	return func_800C17B4_D0764(arg0, 0);
}

s16 func_800C18FC_D08AC(u8 arg0, s32 arg1)
{
  s16 temp_v0;
  s16 temp_v0_2;
  temp_v0 = func_800C17B4_D0764(arg0, arg1);
  if (temp_v0 != (-3))
  {
	  temp_v0_2 = func_800C17B4_D0764(arg0, arg1);
	  if (temp_v0_2 == (-3))
	  {
		func_800C1A4C_D09FC(temp_v0, arg0, arg1);
		temp_v0 = -3;
	  } else
	  if (func_800C17B4_D0764(arg0, arg1) == (-3))
	  {
		func_800C1A4C_D09FC(temp_v0, arg0, arg1);
		func_800C1A4C_D09FC(temp_v0_2, arg0, arg1);
		temp_v0 = -3;
	  }
  }
  return temp_v0;
}

s16 func_800C19D4_D0984(u8 arg0, s32 arg1) {
	s16 var_a3;

	var_a3 = func_800C17B4_D0764(arg0, arg1);
	if (var_a3 != -3) {
		if (func_800C17B4_D0764(arg0, arg1) == -3) {
			func_800C1A4C_D09FC(var_a3, arg0, arg1);
			var_a3 = -3;
		}
	}
	return var_a3;
}

void func_800C1A4C_D09FC(s16 arg0, u8 arg1, s32 arg2) {
	typedef struct {
		u8 unk0;
		u8 unk1;
		s16 unk2;
		s16 unk4;
		s16 unk6;
	} Unk80154318Link;

	Unk80154318Entry* unit;
	Unk801541F8Entry* effect;
	if ((arg0 < 0) || (arg0 >= 0x190)) {
		if (arg2 != 0) {
			osSyncPrintf(&D_80143128_1520D8, arg0, arg1);
		} else {
			osSyncPrintf(&D_80143170_152120, arg0, arg1);
		}
		return;
	}

	unit = &D_80154318[arg0];
	if ((unit->unk0 & 1) == 0) {
		if (arg2 != 0) {
			osSyncPrintf(&D_801431AC_15215C, arg0, arg1);
		} else {
			osSyncPrintf(&D_80143200_1521B0, arg0, arg1);
		}
		return;
	}

	if (arg2 != 0) {
		effect = &D_801541F8[arg1];
	} else {
		effect = &D_80154088[arg1];
	}

	switch (effect->unk4) {
		case 0:
			osSyncPrintf(&D_80143248_1521F8);
			effect->unk6 = -6;
			effect->unk8 = -6;
			return;

		case 1:
			effect->unk6 = -6;
			effect->unk8 = -6;
			break;

		case 2:
			if (((Unk80154318Link*) unit)->unk6 == -4) {
				effect->unk6 = unit->unk4;
				((Unk80154318Link*) &D_80154318[effect->unk6])->unk6 = -4;
				((Unk80154318Link*) &D_80154318[effect->unk6])->unk4 = -5;
			} else if (unit->unk4 == -5) {
				effect->unk8 = ((Unk80154318Link*) unit)->unk6;
				((Unk80154318Link*) &D_80154318[effect->unk6])->unk6 = -4;
				((Unk80154318Link*) &D_80154318[effect->unk6])->unk4 = -5;
			} else {
				osSyncPrintf(&D_80143284_152234);
			}
			break;

		default:
			if (((Unk80154318Link*) unit)->unk6 == -4) {
				effect->unk6 = unit->unk4;
				((Unk80154318Link*) &D_80154318[unit->unk4])->unk6 = -4;
			} else if (unit->unk4 == -5) {
				effect->unk8 = ((Unk80154318Link*) unit)->unk6;
				((Unk80154318Link*) &D_80154318[((Unk80154318Link*) unit)->unk6])->unk4 = -5;
			} else {
				((Unk80154318Link*) &D_80154318[unit->unk4])->unk6 = ((Unk80154318Link*) unit)->unk6;
				((Unk80154318Link*) &D_80154318[((Unk80154318Link*) unit)->unk6])->unk4 = unit->unk4;
			}
			break;
	}

	unit->unk0 = 0;
	unit->unk1 = 0xFF;
	effect->unk4--;
	D_8015430E--;
	if (arg0 < D_80154310) {
		D_80154310 = arg0;
	}
}

void func_800C1D40_D0CF0(s16 arg0, u8 arg1, s32 arg2)
{
  s16 sp1E;
  if ((arg0 >= 0) && (arg0 < 0x190) && (arg1 < 0x1E) && (D_80154318[arg0].unk0 & 1))
  {
	sp1E = D_80154318[arg0].unk4;
	func_800C1A4C_D09FC(arg0 & 0xFFFFFFFFu, arg1, arg2);
	arg0 = D_80154318[sp1E].unk4;
	  if (1){}
	  func_800C1A4C_D09FC(sp1E, arg1, arg2);
	  func_800C1A4C_D09FC(arg0, arg1, arg2); 
	return;
  }
  osSyncPrintf(&D_801432C4_152274);
}

void func_800C1E24_D0DD4(s16 arg0, u8 arg1, s32 arg2)
{
	s16 sp1E;
	  u8 sp27;
  
	  if ((arg0 >= 0) && (arg0 < 0x190) && (arg1 < 0x1E) && (D_80154318[arg0].unk0 & 1))
	  {
		sp1E = D_80154318[arg0].unk4;
		sp27 = arg1;
		func_800C1A4C_D09FC(arg0, arg1, arg2);
		func_800C1A4C_D09FC(sp1E, sp27, arg2);
		return;
	  }
	osSyncPrintf(&D_80143304_1522B4);
}

// CURRENT(82)
#ifdef NON_MATCHING
void func_800C1ECC_D0E7C(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4) {
	s32 sp3C;
	s16 sp42;
	u8 temp_v0;
	sp3C = arg3;
	if (sp3C < 0x1E) {
		Unk801541F8Entry *sp38[1];
		sp38[0] = &D_80154088[arg3];
		if (sp38[0]->unk0 == 0) {
			if ((D_80156ED8 != 1) || ((func_800038E0_44E0() % 9) < 6)) {
				if ((D_80156ED8 != 2) || ((func_800038E0_44E0() % 9) < 3)) {
					sp42 = func_800C18D0_D0880(arg3);
					
					if (sp42 != -3) {
						SmokePuffState *puff;
						if ((arg4 == 0) || (arg4 == 2)) {
							D_80154318[sp42].unk2 = (func_800038E0_44E0() % 12) + 0x10;
							puff = &D_80154318[sp42].smokePuff;
							puff->position[0] = (func_800038E0_44E0() % 13) + arg0 - 6;
							puff->position[1] = (func_800038E0_44E0() % 19) + arg1 - 9;
							puff->position[2] = (func_800038E0_44E0() % 13) + arg2 - 6;
							temp_v0 = 0xF5;
							puff->color[0] = temp_v0;
							puff->color[1] = temp_v0;
							puff->color[2] = temp_v0;
							puff->opacity = 0xFF;
							if (arg4 == 0) {
								func_80137368_146318(puff->position[0], puff->position[1], puff->position[2], 4, sp3C);
							}
						} else if (arg4 == 1) {
							D_80154318[sp42].unk2 = (func_800038E0_44E0() % 20) + 0x14;
							puff = &D_80154318[sp42].smokePuff;
							puff->position[0] = (func_800038E0_44E0() % 20) + arg0 - 0xA;
							puff->position[1] = (func_800038E0_44E0() % 20) + arg1 - 0xA;
							puff->position[2] = (func_800038E0_44E0() % 20) + arg2 - 0xA;
							puff->color[0] = (func_800038E0_44E0() % 100) + 0x82;
							puff->color[1] = (func_800038E0_44E0() % 100) + 0x82;
							puff->color[2] = (func_800038E0_44E0() % 100) + 0x82;
							puff->opacity = 0xFF;
							func_80137368_146318(puff->position[0], puff->position[1], puff->position[2], 5, sp3C);
						}
						D_80154318[sp42].smokePuff.kind = arg4;
						sp38[0]->unkA = sp42;
					}
					
				}
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C1ECC_D0E7C.s")
#endif



s32 func_800C21F0_D11A0(s16 arg0, s16 arg1, s16 arg2, u8 arg3)
{
  u8 sp27;
  sp27 = func_800C1598_D0548(0);
  if (sp27 != 0xFB)
  {
	D_80154088[sp27].unk1 |= 1;
	func_800C1ECC_D0E7C(arg0, arg1, arg2, sp27, arg3);
  }
  return sp27;
}

s32 func_800C2274_D1224(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	s32 temp_v0;
	s32 temp_v1;

	temp_v0 = func_800C21F0_D11A0(arg0, arg1, arg2, arg3);
	temp_v1 = temp_v0 & 0xFF;
	if (temp_v0 != 0xFB) {
		D_80154088[temp_v0].unk1 = 1;
	}
	return temp_v1;
}

// CURRENT(0)
// effect type 1
void func_800C22EC_D129C(u8 arg0) {
	s16 unitId;
	s16 nextUnit;
	Unk80154318Sub* motion;

	unitId = D_80154088[arg0].unk6;

	if ((arg0 == 0xFB) || (D_80154088[arg0].unk0 == 0xFA)) {
		osSyncPrintf(&D_80143344_1522F4);
		return;
	}

	if ((unitId == -5) || (unitId == -6)) {
		func_800C1418_D03C8(arg0, 0);
		func_800C1384_D0334(arg0);
		return;
	}

	if (unitId != -5) {
		if (D_80154088[arg0].unk4 > 0) {
		do {
			motion = (Unk80154318Sub*)&D_80154318[unitId].unk8;
			if (D_80154318[unitId].unk11 < 0x14) {
				nextUnit = D_80154318[unitId].unk4;
				func_800C2554_D1504(unitId, arg0);
				unitId = nextUnit;
			} else {
				if (motion->unkA == 1) {
					motion->unk2 -= (func_800038E0_44E0() % 3) + 3;
					motion->unk9 -= 15;
					D_80154318[unitId].unk2 -= (func_800038E0_44E0() % 2) + 2;
				} else {
					motion->unk2 += 1;
					motion->unk6 = ((u8)motion->unk6) - 6;
					motion->unk7 = ((u8)motion->unk7) - 6;
					motion->unk8 = ((u8)motion->unk8) - 6;
					motion->unk9 -= 25;
					D_80154318[unitId].unk2 += (func_800038E0_44E0() % 5) + 5;
				}

				unitId = D_80154318[unitId].unk4;
			}

			if (unitId == -5) {
				break;
			}
			} while (D_80154088[arg0].unk4 > 0);
		}
	}
}

// Kill smoke puff unit?
void func_800C2554_D1504(s16 arg0, u8 arg1) {
	if (arg1 >= 0x1E || D_80154088[arg1].unk0 != 0) {
		osSyncPrintf(&D_80143390_152340);
		return;
	}
	if (arg0 == D_80154088[arg1].unkA) {
		func_800C1418_D03C8(arg1, 0);
		func_800C1384_D0334(arg1);
		return;
	}
	func_800C1A4C_D09FC(arg0, arg1, 0);
}

#ifdef NON_MATCHING
// CURRENT(6462)
void func_800C25F8_D15A8(u8 arg0) {
	s32 dx;
	s32 dy;
	s32 dz;
	Unk801541F8Entry *effect;
	Unk80154318Entry *entry;
	Unk80154318Entry *linkedEntry;
	Unk80154318Entry *deltaEntry;
	Unk80154318Entry *deltaLinked;
	Vec3f delta;
	f32 dot;
	s16 unitId;
	s16 nextId;
	s16 i;
	u8 texType;

	D_80153BCD = 0x20;
	D_80153BCE = 0x20;
	effect = &D_80154088[arg0];

	gDPPipeSync(D_8005BB2C++);

	texType = *(u8 *)&D_80154318[effect->unk6].unk12;
	if ((texType == 0) || (texType == 2)) {
		gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA, G_CC_MODULATEIA);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100E080));
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << 2), (31 << 2));
	} else if (texType == 1) {
		gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100D800));
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << 2), (31 << 2));
	}

	gDPPipeSync(D_8005BB2C++);

	if (effect->unk4 >= 2) {
		deltaEntry = &D_80154318[effect->unk8];
		deltaLinked = &D_80154318[deltaEntry->unk6];
		dx = deltaEntry->unk8 - deltaLinked->unk8;
		dy = deltaEntry->unkA - deltaLinked->unkA;
		dz = deltaEntry->unkC - deltaLinked->unkC;
		delta.x = (f32)dx;
		delta.y = (f32)dy;
		delta.z = (f32)dz;
		dot = func_800C1090_D0040(&D_80153AD0, &delta);
	} else {
		dot = 1.0f;
	}

	if (dot < 0.0f) {
		unitId = effect->unk6;
	} else {
		unitId = effect->unk8;
	}

	i = 0;
	if (effect->unk4 > 0) {
		do {
			entry = &D_80154318[unitId];
			D_80153BB8.x = (f32)entry->unk8;
			D_80153BC4 = &entry->unkE;
			D_80153BCC = entry->unk11;
			D_80153BB8.y = (f32)entry->unkA;
			D_80153BB8.z = (f32)entry->unkC;
			D_80153BC8 = (f32)entry->unk2;
			func_800DB350_EA300();
			D_80156EDA += 4;

			if ((effect->unk1 & 2) && (i < (effect->unk4 - 1))) {
				if (dot < 0.0f) {
					nextId = entry->unk4;
				} else {
					nextId = entry->unk6;
				}

				linkedEntry = &D_80154318[nextId];
				D_80153BC4 = &linkedEntry->unkE;
				D_80153BCC = linkedEntry->unk11;
				D_80153BB8.x = (f32)((f64)((f32)linkedEntry->unk8 + D_80153BB8.x) * 0.5);
				D_80153BB8.y = (f32)((f64)((f32)linkedEntry->unkA + D_80153BB8.y) * 0.5);
				D_80153BB8.z = (f32)((f64)((f32)linkedEntry->unkC + D_80153BB8.z) * 0.5);
				D_80153BC8 = (f32)linkedEntry->unk2;
				func_800DB350_EA300();
				D_80156EDA += 4;
			}

			i++;
			if (dot < 0.0f) {
				unitId = entry->unk4;
			} else {
				unitId = entry->unk6;
			}
		} while (i < effect->unk4);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C25F8_D15A8.s")
#endif

void func_800C2B90_D1B40(u8 arg0, u8 arg1) {
	u8 *arg1Ptr;
	s16 slot;
	s8 *p;
	if ((arg0 == 0xFB) || (D_80156ED8 == 2)) {
		return;
	}

	slot = func_800C17B4_D0764(arg0, 0);
	if (slot == -3) {
		return;
	}

	p = (s8 *)&D_80154318[slot].unk8;
	arg1Ptr = &arg1;
	p[1] = func_800038E0_44E0() % 4;
	p[2] = (func_800038E0_44E0() % 10) + 1;
	p[3] = (func_800038E0_44E0() % 8) + 8;
	if ((func_800038E0_44E0() % 2) == 1) {
		p[3] = -p[3];
	}

	p[4] = (func_800038E0_44E0() % 15) + 10;
	if ((*arg1Ptr >= 0x1A) && ((func_800038E0_44E0() % 2) == 1)) {
		p[4] = -p[4];
	}

	p[0] = *arg1Ptr;
	p[5] = (func_800038E0_44E0() % 200) + 0x19;
	p[6] = (func_800038E0_44E0() % 20) - 10;
	if (p[6] < 0) {
		p[6] -= 5;
	} else {
		p[6] += 5;
	}
}

// Create new photon effect?
s32 func_800C2D50_D1D00(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4, u8 arg5) {
	s16 unitId;
	u8 effectId;
	u8 i;
	s16 posX = arg0;
	s16 posY = arg1;
	s16 posZ = arg2;
	u8* color;

	if (arg3 == 0) {
		return 0xFB;
	}

	effectId = func_800C1598_D0548(1);
	if (effectId != 0xFB) {
		unitId = func_800C18D0_D0880(effectId);
		if (unitId == -3) {
			func_800C1384_D0334(effectId);
			effectId = 0xFB;
			osSyncPrintf(&D_801433D8_152388);
		} else {
			D_80154088[effectId].unkA = unitId;
			D_80154088[effectId].unk1 |= 1;
			color = &D_8013DFE4_14CF94[arg4 * 3];

			D_80154318[unitId].unk2 = arg3;
			D_80154318[unitId].unk8 = posX;
			D_80154318[unitId].unkA = posY;
			D_80154318[unitId].unkC = posZ;
			D_80154318[unitId].unkE = color[0];
			D_80154318[unitId].unkF = color[1];
			D_80154318[unitId].unk10 = color[2];
			D_80154318[unitId].unk11 = arg5;

			for (i = 0; i < 8; i++) {
				func_800C2B90_D1B40(effectId, func_800038E0_44E0() % 0xE6);
			}
		}
	}

	return effectId;
}

// effect type 2
void func_800C2EE4_D1E94(u8 arg0) {
	s16 currentUnitId;
	s16 nextUnitId;
	u8 *root;
	u8 *p;

	currentUnitId = D_80154088[arg0].unkA;
	if (currentUnitId == -6) {
		func_800C1384_D0334(arg0);
		return;
	}

	root = (u8 *)&D_80154318[currentUnitId].unk8;
	currentUnitId = D_80154318[currentUnitId].unk4;
	if (currentUnitId == -5 || currentUnitId == -6) {
		func_800C1418_D03C8(arg0, 0);
		func_800C1384_D0334(arg0);
		return;
	}

	while (currentUnitId != -5 && currentUnitId != -6) {
		p = (u8 *)&D_80154318[currentUnitId].unk8;

		if (((s8 *)p)[4] < 0 && p[0] < 0x19) {
			if (root[9] == 2) {
				nextUnitId = D_80154318[currentUnitId].unk4;
				if (D_80154088[arg0].unk4 < 3) {
					func_800C1418_D03C8(arg0, 0);
					func_800C1384_D0334(arg0);
					return;
				}
				func_800C1A4C_D09FC(currentUnitId, arg0, 0);
				currentUnitId = nextUnitId;
			} else {
				nextUnitId = D_80154318[currentUnitId].unk4;
				func_800C1A4C_D09FC(currentUnitId, arg0, 0);
				func_800C2B90_D1B40(arg0, 0);
				currentUnitId = nextUnitId;
			}
		} else {
			if (((s8 *)p)[3] > 0) {
				if (p[2] < 0xE5) {
					p[2] += ((s8 *)p)[3];
				} else {
					p[2] = 1;
					((s8 *)p)[1] += 1;
					if (((s8 *)p)[1] >= 4) {
						((s8 *)p)[1] = 0;
					}
				}
			} else if (p[2] >= 0x11) {
				p[2] += ((s8 *)p)[3];
			} else {
				p[2] = 0xE5;
				((s8 *)p)[1] -= 1;
				if (((s8 *)p)[1] < 0) {
					((s8 *)p)[1] = 3;
				}
			}

			if (((s8 *)p)[4] > 0 && p[0] >= 0xE6) {
				((s8 *)p)[4] = -((s8 *)p)[4];
			}

			p[0] += ((s8 *)p)[4];
			p[5] += ((s8 *)p)[6];
			if (((s8 *)p)[6] > 0) {
				if (p[5] >= 0xF4) {
					((s8 *)p)[6] = -((s8 *)p)[6];
				}
			} else if (p[5] < 0xC) {
				((s8 *)p)[6] = -((s8 *)p)[6];
			}

			currentUnitId = D_80154318[currentUnitId].unk4;
		}
	}
}

// Update photon effect?
void func_800C31AC_D215C(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	Unk80154318Sub *sub;

	if (arg3 >= 0x1E || D_80154088[arg3].unk0 != 1 || D_80154088[arg3].unk0 == 0xFA
		|| !(D_80154318[D_80154088[arg3].unkA].unk0 & 1)) {
		osSyncPrintf(&D_80143430_1523E0, arg1, arg2);
		return;
	}
	sub = (Unk80154318Sub *)&D_80154318[D_80154088[arg3].unkA].unk8;
	sub->unk0 = arg0;
	sub->unk2 = arg1;
	sub->unk4 = arg2;
	func_80137368_146318(arg0, arg1, arg2, 0, D_80154088[arg3].unkA);
}

// Kill photon effect?
void func_800C3288_D2238(u8 arg0) {
	if (arg0 >= 0x1E || D_80154088[arg0].unk0 != 1) {
		osSyncPrintf(&D_80143478_152428);
		return;
	}
	func_800C1418_D03C8(arg0, 0);
	func_800C1384_D0334(arg0);
}

// CURRENT(25829)
#ifdef NON_MATCHING
void func_800C3300_D22B0(u8 arg0) {
	Unk801541F8Entry *effect;
	Unk80154318Entry *entry;
	Unk80154318Sub *baseSub;
	Unk80154318Sub *sub;
	Vec3f basePos;
	Vec3f left;
	Vec3f right;
	Vec3f point0;
	Vec3f point1;
	f32 distX;
	f32 distY;
	f32 distZ;
	f32 dist;
	f32 stepScale;
	f32 finalScale;
	f32 interpScale;
	f32 lerpX;
	f32 lerpY;
	f32 lerpZ;
	f64 ringDist;
	s8 mode;
	u8 count;

	effect = &D_80154088[arg0 & 0xFF];
	entry = &D_80154318[effect->unkA];
	count = effect->unk4 - 1;
	baseSub = (Unk80154318Sub *)&entry->unk8;

	if (func_800B93AC_C835C(entry->unk8, entry->unkC, (u16)(entry->unk2 * 4), (s16)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f),
			0x4000 - D_80047950) != 0) {
		basePos.x = baseSub->unk0;
		basePos.y = baseSub->unk2;
		basePos.z = baseSub->unk4;

		distX = basePos.x - (D_80153BA0.x * 4.0f);
		distY = basePos.y - (D_80153BA0.y * 4.0f);
		distZ = basePos.z - (D_80153BA0.z * 4.0f);
		dist = sqrtf((distX * distX) + (distY * distY) + (distZ * distZ));

		if (baseSub->unk9 == 0) {
			func_800DC5B8_EB568(&basePos, dist, -1, -1);
		}

		gDPPipeSync(D_8005BB2C++);
		gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER);
		gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
		gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, 0, 0, 0, SHADE, 0, 0, 0, PRIMITIVE, 0, 0, 0, SHADE);
		gDPSetPrimColor(D_8005BB2C++, 0, 0, baseSub->unk6, baseSub->unk7, baseSub->unk8, 0);
		gDPPipeSync(D_8005BB2C++);

		if ((s8)count > 0) {
			ringDist = ((f64)(dist / 4.0f)) + 800.0;

			while ((s8)count > 0) {
				entry = &D_80154318[entry->unk4];
				sub = (Unk80154318Sub *)&entry->unk8;

				stepScale = (f32)((f64)sub->unkD * (1.0 / 256.0));
				interpScale = (f32)(ringDist * stepScale);

				func_800C1128_D00D8(interpScale, &D_80153AB8, &left);
				func_800C1128_D00D8(interpScale, &D_80153AC4, &right);

				finalScale = (f32)(sub->unk2 + 10) / 256.0f;
				stepScale = (f32)sub->unk2 / 256.0f;
				mode = ((s8 *)sub)[1];

				switch (mode) {
					case 0:
						func_800C10F4_D00A4(&basePos, &left, &point0);
						func_800C10F4_D00A4(&basePos, &right, &point1);
						break;
					case 1:
						func_800C10F4_D00A4(&basePos, &right, &point0);
						func_800C10C0_D0070(&basePos, &left, &point1);
						break;
					case 2:
						func_800C10C0_D0070(&basePos, &left, &point0);
						func_800C10C0_D0070(&basePos, &right, &point1);
						break;
					default:
						func_800C10C0_D0070(&basePos, &right, &point0);
						func_800C10F4_D00A4(&basePos, &left, &point1);
						break;
				}

				lerpX = point1.x - point0.x;
				lerpY = point1.y - point0.y;
				lerpZ = point1.z - point0.z;

				D_8005BB34->v.ob[0] = (s16)basePos.x;
				D_8005BB34->v.ob[1] = (s16)basePos.y;
				D_8005BB34->v.ob[2] = (s16)basePos.z;
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = 0;
				D_8005BB34->v.cn[1] = 0;
				D_8005BB34->v.cn[2] = 0;
				D_8005BB34->v.cn[3] = ((u8 *)sub)[0];
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)((lerpX * finalScale) + point0.x);
				D_8005BB34->v.ob[1] = (s16)((lerpY * finalScale) + point0.y);
				D_8005BB34->v.ob[2] = (s16)((lerpZ * finalScale) + point0.z);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = 0;
				D_8005BB34->v.cn[1] = 0;
				D_8005BB34->v.cn[2] = 0;
				D_8005BB34->v.cn[3] = 0x14;
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)((lerpX * stepScale) + point0.x);
				D_8005BB34->v.ob[1] = (s16)((lerpY * stepScale) + point0.y);
				D_8005BB34->v.ob[2] = (s16)((lerpZ * stepScale) + point0.z);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = 0;
				D_8005BB34->v.cn[1] = 0;
				D_8005BB34->v.cn[2] = 0;
				D_8005BB34->v.cn[3] = 0x14;
				D_8005BB34++;

				gDPPipeSync(D_8005BB2C++);
				gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 3), 3, 0);
				gSP1Triangle(D_8005BB2C++, 0, 1, 2, 0);

				D_80156EDA += 3;
				count--;
			}
		}

		gDPPipeSync(D_8005BB2C++);
		gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA, G_CC_MODULATEIA);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, D_100DE80);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 0xFF, 0x400);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0,
				   (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));

		if (baseSub->unk9 != 2) {
			func_800DC18C_EB13C(&basePos, &((u8 *)baseSub)[6], &D_80153B80,
				*((u16 *)((u8 *)&D_80154318[effect->unkA] + 0x1A)), 0xFF);
			D_80156EDA += 4;
		}

		gDPPipeSync(D_8005BB2C++);
		gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
		gDPSetRenderMode(D_8005BB2C++, G_RM_ZB_XLU_SURF, G_RM_ZB_XLU_SURF2);
		gDPPipeSync(D_8005BB2C++);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C3300_D22B0.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(545) */
s16 func_800C3BD8_D2B88(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u16 arg4, u8 arg5, u8 arg6, u8 arg7) {
	s16 slot;
	s32 linkedIndex;
	u16 color;
	s32 channel;
	u16 height;
	s32 temp_u16;
	Unk80154318Entry *base = D_80154318;
	Unk80154318Entry *entry;
	EffectFirePayload *entrySub;

	slot = func_800C19D4_D0984(0xC, 1);
	if (slot != -3) {
		entry = &base[slot];
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;

		channel = arg5;
		linkedIndex = entry->unk4;
		entrySub = (EffectFirePayload *)(s32)((Unk80154318Entry *)(s32)D_80154318)[linkedIndex].payload;
		entrySub->control.phase = 0;

		entry->unkE = arg5;
		entry->unkF = arg6;
		entry->unk10 = arg7;

		if (arg3 < 0x10) {
			arg3 = 0x10;
		}

		height = arg4;
		temp_u16 = height;
		if (height < 0x12) {
			height = 0x12;
			temp_u16 = 0x12;
		}

		if (temp_u16 == 0xFFFF) {
			entry->unk2 = arg3;
		} else {
			entry->unk2 = arg3 / 8;
		}

		entrySub->control.sizeDelta = arg3;
		entrySub->control.life = height;
		entrySub->control.growthFrames = 8;

		entrySub = &entry->firePayload;

		color = (u8)(channel / 2) + channel;
		if ((u16)color >= 0x100) {
			color = 0xFF;
		}
		entrySub->visual.highlight[0] = color;

		channel = arg6;
		color = (u8)(channel / 2) + channel;
		if ((u16)color >= 0x100) {
			color = 0xFF;
		} else {
			color = (u16)color;
		}
		entrySub->visual.highlight[1] = color;

		channel = arg7;
		color = (u8)(channel / 2) + channel;
		if ((u16)color >= 0x100) {
			color = 0xFF;
		} else {
			color = (u16)color;
		}
		entrySub->visual.highlight[2] = color;
	}

	return slot;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C3BD8_D2B88.s")
#endif

// Move fire effect?
void func_800C3D88_D2D38(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	Unk80154318Entry *entry;
	if (arg3 != -3) {
		entry = &D_80154318[arg3];
		if ((entry->unk0 & 1) && (entry->unk1 == 0xC)) {
			entry->unk8 = arg0;
			entry->unkA = arg1;
			entry->unkC = arg2;
			return;
		}
	}
	osSyncPrintf(&D_801434C0_152470);
}

// CURRENT(2033)
#ifdef NON_MATCHING
void func_800C3E2C_D2DDC(void) {
	Unk80154318Entry *entry;
	EffectFirePayload *entrySub;
	Unk80154318Entry *linkedEntry;
	EffectFirePayload *linkedSub;
	s16 idx;
	s16 next;
	s32 sizeQuarter;
	s32 randA;
	s32 randB;
	s32 temp;
	u8 color;

	idx = D_8015428E;
	if ((idx == -5) || (idx == -6)) {
		func_800C1418_D03C8(0xC, 1);
		return;
	}

	if ((idx != -5) && (idx != -6)) {
		do {
			entry = &D_80154318[idx];
			entrySub = (EffectFirePayload *)&entry->unk8;
			linkedEntry = &D_80154318[entry->unk4];
			linkedEntry->firePayload.control.phase++;
			if (linkedEntry->firePayload.control.phase == 0x10) {
				linkedEntry->firePayload.control.phase = 0;
			}
			linkedSub = (EffectFirePayload *)&linkedEntry->unk8;

			if ((func_800038E0_44E0() % 8) == 0) {
				randA = func_800038E0_44E0() & 0xFFFF;
				randB = func_800038E0_44E0() & 0xFFFF;
				temp = func_800038E0_44E0();
				sizeQuarter = entry->unk2 / 4;

				color = func_800DDB60_ECB10(
					(s16)(entrySub->visual.position[0] + ((randA % entry->unk2) / 2) - sizeQuarter),
					(s16)((randB % (entry->unk2 / 2)) + entrySub->visual.position[1]),
					(s16)(entrySub->visual.position[2] + ((temp % entry->unk2) / 2) - sizeQuarter),
					0xC,
					sizeQuarter);

				randA = func_800038E0_44E0() & 0xFFFF;
				randB = func_800038E0_44E0() & 0xFFFF;
				temp = func_800038E0_44E0();
				func_800DDD90_ECD40(
					color,
					(u8)((randA % 50) + 0x46),
					(u8)((randB % 50) + 0x46),
					(u8)((temp % 50) + 0x46));
			}

			func_80137368_146318(entrySub->visual.position[0], entrySub->visual.position[1], entrySub->visual.position[2], 1, idx);

			if (linkedSub->control.life != 0xFFFF) {
				if (linkedSub->control.growthFrames > 0) {
					entry->unk2 += linkedSub->control.sizeDelta / 8;
					entrySub->visual.position[1] += linkedSub->control.sizeDelta / 16;
					linkedSub->control.growthFrames--;
					(linkedSub->control.life)--;
					idx = linkedEntry->unk4;
				} else if (linkedSub->control.life >= 8) {
					(linkedSub->control.life)--;
					idx = linkedEntry->unk4;
				} else if (linkedSub->control.life == 0) {
					next = linkedEntry->unk4;
					func_800C1E24_D0DD4(idx, 0xC, 1);
					idx = next;
				} else {
					entry->unk2 -= linkedSub->control.sizeDelta / 8;
					entrySub->visual.position[1] -= linkedSub->control.sizeDelta / 16;
					(linkedSub->control.life)--;
					idx = linkedEntry->unk4;
				}
			} else {
				idx = linkedEntry->unk4;
			}
		} while ((idx != -5) && (idx != -6));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C3E2C_D2DDC.s")
#endif

void func_800C4274_D3224(void) {
	Vec3f spAC;
	Vec3f spA0;
	s16 unitId;
	s16 nextUnit;
	Unk80154318Sub *sub;
	Unk80154318Entry *entry;

	unitId = D_8015428E;
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);

	if ((unitId != -5) && (unitId != -6)) {
		do {
			entry = &D_80154318[unitId];
			nextUnit = entry->unk4;
			sub = (Unk80154318Sub *)&entry->unk8;

			if (func_800B93AC_C835C(entry->unk8, entry->unkC, (u16)entry->unk2, (s16)(f32)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {
				gDPPipeSync(D_8005BB2C++);
				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1,
					K0_TO_PHYS(D_1007A70[((u8 *)&D_80154318[nextUnit].unkC)[0]]));
				gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
					G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
				gDPLoadSync(D_8005BB2C++);
				gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 0xFF, 0x400);
				gDPPipeSync(D_8005BB2C++);
				gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
				gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
				gDPPipeSync(D_8005BB2C++);

				func_800C1128_D00D8((f32)entry->unk2, &D_80153AB8, &spAC);
				func_800C1128_D00D8((f32)entry->unk2, &D_80153AC4, &spA0);

				D_8005BB34->v.ob[0] = (s16)((f32)sub->unk0 + spAC.x);
				D_8005BB34->v.ob[1] = (s16)((f32)sub->unk2 + spAC.y);
				D_8005BB34->v.ob[2] = (s16)((f32)sub->unk4 + spAC.z);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = ((u8 *)&sub->unk6)[0];
				D_8005BB34->v.cn[1] = ((u8 *)&sub->unk6)[1];
				D_8005BB34->v.cn[2] = ((u8 *)&sub->unk6)[2];
				D_8005BB34->v.cn[3] = 0xFF;
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)((f32)sub->unk0 + spA0.x);
				D_8005BB34->v.ob[1] = (s16)((f32)sub->unk2 + spA0.y);
				D_8005BB34->v.ob[2] = (s16)((f32)sub->unk4 + spA0.z);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0x800;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = ((u8 *)&sub->unk6)[0];
				D_8005BB34->v.cn[1] = ((u8 *)&sub->unk6)[1];
				D_8005BB34->v.cn[2] = ((u8 *)&sub->unk6)[2];
				D_8005BB34->v.cn[3] = 0xFF;
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)((f32)sub->unk0 - spAC.x);
				D_8005BB34->v.ob[1] = (s16)((f32)sub->unk2 - spAC.y);
				D_8005BB34->v.ob[2] = (s16)((f32)sub->unk4 - spAC.z);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0x800;
				D_8005BB34->v.tc[1] = 0x800;
				D_8005BB34->v.cn[0] = ((u8 *)&sub->unk6)[3];
				D_8005BB34->v.cn[1] = ((u8 *)&sub->unk6)[4];
				D_8005BB34->v.cn[2] = ((u8 *)&sub->unk6)[5];
				D_8005BB34->v.cn[3] = 0xFF;
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)((f32)sub->unk0 - spA0.x);
				D_8005BB34->v.ob[1] = (s16)((f32)sub->unk2 - spA0.y);
				D_8005BB34->v.ob[2] = (s16)((f32)sub->unk4 - spA0.z);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0x800;
				D_8005BB34->v.cn[0] = ((u8 *)&sub->unk6)[3];
				D_8005BB34->v.cn[1] = ((u8 *)&sub->unk6)[4];
				D_8005BB34->v.cn[2] = ((u8 *)&sub->unk6)[5];
				D_8005BB34->v.cn[3] = 0xFF;
				D_8005BB34++;

				gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
				gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
				D_80156EDA += 4;
			}

			unitId = D_80154318[nextUnit].unk4;
		} while ((unitId != -5) && (unitId != -6));
	}
}

void func_800C4900_D38B0(s16 arg0) {
	if (arg0 != -3) {
		func_800C1E24_D0DD4(arg0, 0xC, 1);
	}
}

// Draws ripples on shield wall when hit?
void func_800C4938_D38E8(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4) {
	s16 val;
	s16 idx;
	s32 mod;

	val = D_80156ED8;
	if (val == 1) {
		if (func_800038E0_44E0() % 10 < 5) {
			return;
		}
		val = D_80156ED8;
	}
	if (val == 2) {
		return;
	}
	idx = func_800C17B4_D0764(0, 1);
	if (idx == -3) {
		return;
	}
	D_80154318[idx].unk2 = 0xF;
	D_80154318[idx].unk8 = arg0;
	D_80154318[idx].unkA = arg1;
	D_80154318[idx].unkC = arg2;
	D_80154318[idx].payload[10] = arg4;
	D_80154318[idx].payload[11] = arg3;
	mod = func_800038E0_44E0() % 3;
	((u8 *)(s32)D_80154318[idx].payload)[6] = D_8013DFA8_14CF58[(u32)(mod & 0xFF)][0];
	((u8 *)(s32)D_80154318[idx].payload)[7] = D_8013DFA8_14CF58[(u32)(mod & 0xFF)][1];
	((u8 *)(s32)D_80154318[idx].payload)[8] = D_8013DFA8_14CF58[(u32)(mod & 0xFF)][2];
	((u8 *)(s32)D_80154318[idx].payload)[9] = mod;
	func_801372B4_146264(arg0, arg1, arg2, 2);
}

s32 func_800C4A64_D3A14(u8 arg0, u8 arg1) {
	if (arg1 < arg0) {
		return -0xA;
	}
	if (arg0 < arg1) {
		return 0xA;
	}
	return 0;
}

void func_800C4AA0_D3A50(void) {
	s16 idx;
	s16 nextIdx;
	u8 *sub;

	idx = D_801541F8[0].unk6;
	if ((idx == -5) || (idx == -6)) {
		func_800C1418_D03C8(0, 1);
		return;
	}

	if ((idx != -5) && (idx != -6)) {
		do {
			sub = (u8 *)&D_80154318[idx].unk8;
			if (((u8 *)&D_80154318[idx].unk12)[0] < 4) {
				nextIdx = D_80154318[idx].unk4;
				func_800C1A4C_D09FC(idx, 0, 1);
				idx = nextIdx;
			} else {
				sub[0xA] -= 3;
				D_80154318[idx].unk2 += 8;
				sub[6] += func_800C4A64_D3A14(sub[6], D_8013DFA8_14CF58[sub[9]][0]);
				sub[7] += func_800C4A64_D3A14(sub[7], D_8013DFA8_14CF58[sub[9]][1]);
				sub[8] = func_800C4A64_D3A14(sub[8], D_8013DFA8_14CF58[sub[9]][2]) + sub[8];
				if ((sub[6] == D_8013DFA8_14CF58[sub[9]][0]) && (sub[7] == D_8013DFA8_14CF58[sub[9]][1]) && ((0, sub[8] & 0xFF) == D_8013DFA8_14CF58[sub[9]][2])) {
					sub[9] = func_800038E0_44E0() % 3;
				}
				idx = D_80154318[idx].unk4;
			}
		} while ((idx != -5) && (idx != -6));
	}
}

void func_800C4CB8_D3C68(void) {
	s16 index;

	D_80153BCD = 0x20;
	D_80153BCE = 0x20;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100E280));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));

	index = D_801541FE;
	if ((index != -5) && (index != -6)) {
		do {
			D_80153BB8.x = (f32)D_80154318[index].unk8;
			D_80153BB8.y = (f32)D_80154318[index].unkA;
			D_80153BB8.z = (f32)D_80154318[index].unkC;
			D_80153BC4 = &D_80154318[index].unkE;
			D_80153BC8 = (f32)D_80154318[index].unk2;
			D_80153BCC = D_80154318[index].payload[10];

			if (D_80154318[index].payload[11] == 0) {
				func_800DB714_EA6C4();
			} else {
				func_800DBA9C_EAA4C();
			}

			index = D_80154318[index].unk4;
			D_80156EDA += 4;
		} while ((index != -5) && (index != -6));
	}
}


// CURRENT(4247)
// spawn particle?
#ifdef NON_MATCHING
void func_800C4F48_D3EF8(u8 arg0, Vec3f *arg1, u8 arg2, u8 arg3) {
	Vec3f sp34;
	s16 idx;
	s16 sp30;
	s16 sp2E;
	s16 temp;
	Unk80154318Sub *effectUnit;
	Unk80154318Sub *newUnit;

	effectUnit = (Unk80154318Sub *)&D_80154318[D_80154088[arg0].unk6].unk8;
	idx = func_800C17B4_D0764(arg0, 0);
	if (idx == -3) {
		return;
	}

	if (effectUnit->unkA == 1) {
		newUnit = (Unk80154318Sub *)&D_80154318[idx].unk8;
		newUnit->unk0 = effectUnit->unk0;
		newUnit->unk2 = effectUnit->unk2;
		newUnit->unk4 = effectUnit->unk4;

		sp34.x = (f32)((f32)(func_800038E0_44E0() % arg3) / D_80143FC0_152F70[0]);
		if ((func_800038E0_44E0() % 0x15) < 0xA) {
			sp34.x = 0.0f - sp34.x;
		}
		sp34.x += arg1->x;

		sp34.y = (f32)((f32)(func_800038E0_44E0() % arg3) / D_80143FC8_152F78[0]);
		if ((func_800038E0_44E0() % 0x15) < 0xA) {
			sp34.y = 0.0f - sp34.y;
		}
		sp34.y += arg1->y;

		sp34.z = (f32)((f32)(func_800038E0_44E0() % arg3) / D_80143FD0_152F80[0]);
		if ((func_800038E0_44E0() % 0x15) < 0xA) {
			sp34.z = 0.0f - sp34.z;
		}
		sp34.z += arg1->z;

		func_800C1024_CFFD4(&sp34, &sp34);
		newUnit->unk6 = (s8)(s32)((f32)(arg2 / 4) * sp34.x);
		newUnit->unk7 = (s8)(s32)((f32)(arg2 / 4) * sp34.y);
		newUnit->unk9 = 0xFF;
		newUnit->unkA = 0;
		newUnit->unk8 = (s8)(s32)((f32)(arg2 / 4) * sp34.z);
		return;
	}

	sp30 = (func_800038E0_44E0() % (*(s16 *)&effectUnit->unkC * 2)) - *(s16 *)&effectUnit->unkC;
	sp2E = (func_800038E0_44E0() % (*(s16 *)&effectUnit->unkC * 2)) - *(s16 *)&effectUnit->unkC;
	temp = (func_800038E0_44E0() % (*(s16 *)&effectUnit->unkC * 2)) - *(s16 *)&effectUnit->unkC;
	newUnit = (Unk80154318Sub *)&D_80154318[idx].unk8;
	newUnit->unk0 = effectUnit->unk0 + sp30;
	newUnit->unk2 = effectUnit->unk2 + sp2E;
	newUnit->unk4 = effectUnit->unk4 + temp;

	newUnit->unk6 = (s8)-(sp30 / effectUnit->unk9);
	newUnit->unk7 = (s8)-(sp2E / effectUnit->unk9);
	newUnit->unk8 = (s8)-(temp / effectUnit->unk9);
	newUnit->unk9 = 0xC;
	newUnit->unkA = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C4F48_D3EF8.s")
#endif

// CURRENT(2993)
// Spark emitter allocation.
#ifdef NON_MATCHING
void func_800C541C_D43CC(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6, u8 arg7, u8 arg8, u8 arg9, u8 arg10,
						 u8 arg11, u8 arg12) {
	s32 i;
	u8 effect;
	s32 spawnCount;
	s16 idx;
	Unk801541F8Entry *sfx;
	Unk80154318Entry *entry;
	Vec3f sp44;
	i = arg8;
	if (i >= 0x29) {
		i = 0x28;
	}

	if ((D_80156ED8 == 1) || (D_80156ED8 == 2) || ((0x230 - i) < ((((s32)D_8005BB30 - (s32)D_8005BB20) - 0xE380) >> 3))) {
		spawnCount = 0;
	} else {
		spawnCount = i;
	}

	if ((spawnCount == 0) || (func_800B93AC_C835C(arg0, arg2, 0x96, (s16)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) == 0)) {
		return;
	}

	effect = func_800C14D4_D0484(2);
	if (effect == 0xFB) {
		return;
	}

	idx = func_800C17B4_D0764(effect, 0);
	if (idx == -3) {
		osSyncPrintf(&D_80143504_1524B4);
		func_800C1384_D0334(effect);
		return;
	}

	sfx = &D_80154088[effect];
	entry = &D_80154318[idx];

	sfx->unk1 = sfx->unk1;
	sfx->unkA = idx;

	entry->sparkEmitter.position[0] = arg0;
	entry->sparkEmitter.position[2] = arg2;
	entry->sparkEmitter.active = 1;

	sp44.x = arg3;
	sp44.y = arg4;
	sp44.z = arg5;

	entry->unk2 = arg9;
	entry->sparkEmitter.position[1] = arg1;
	entry->sparkEmitter.color[0] = arg10;
	entry->sparkEmitter.color[1] = arg11;
	entry->sparkEmitter.color[2] = arg12;

	func_800C1024_CFFD4(&sp44, &sp44);

	i = 0;
	while (i < spawnCount) {
		func_800C4F48_D3EF8(effect, &sp44, arg6, arg7);
		i = (i + 1) & 0xFF;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C541C_D43CC.s")
#endif


// CURRENT(477)
// spawn radial particle effect?
#ifdef NON_MATCHING
void func_800C56A4_D4654(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4, u8 arg5, u8 arg6) {
	s32 i;
	u8 effect;
	u8 count;
	s16 idx;
	s32 result;

	if (D_80156ED9 == 2) {
		return;
	}

	count = arg5;
	if (count >= 0x29) {
		count = 0x28;
	}

	if ((D_80156ED8 == 1) || (D_80156ED8 == 2)) {
		count = 0;
	}

	if (count == 0) {
		return;
	}
	if (func_800B93AC_C835C(arg0, arg2, (u16)arg3, (s16)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) == 0) {
		return;
	}

	effect = func_800C14D4_D0484(2);
	if (effect == 0xFB) {
		return;
	}

	result = func_800C17B4_D0764(effect, 0);
	idx = result;
	if (result == -3) {
		osSyncPrintf(&D_80143554_152504);
		func_800C1384_D0334(effect);
		return;
	}

	D_80154088[effect].unk1 = D_80154088[effect].unk1;
	D_80154088[effect].unkA = idx;

	D_80154318[idx].unkE = 0xFF;
	D_80154318[idx].unkF = 0xFF;
	D_80154318[idx].unk10 = 0xFF;
	i = 0;
	D_80154318[idx].unk2 = arg6;
	D_80154318[idx].unk8 = arg0;
	D_80154318[idx].unkA = arg1;
	D_80154318[idx].unkC = arg2;
	D_80154318[idx].radialRadius = arg3;
	D_80154318[idx].unk11 = arg4;

	D_80154318[idx].payload[10] = 2;
	while (i < count) {
		func_800C4F48_D3EF8(effect, 0, 0, 0);
		i = (i + 1) & 0xFF;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C56A4_D4654.s")
#endif


// CURRENT(4947)
// effect type 0
#ifdef NON_MATCHING
void func_800C5894_D4844(u8 arg0) {
	Unk801541F8Entry *sp3C;
	Unk80154318Sub *temp_s0;
	Unk80154318Sub *temp_s2;
	s16 temp_s0_3;
	s16 var_s1;
	s16 var_s3;
	u8 temp_s6;
	s32 temp_v0_4;
	s32 temp_v1_3;
	u8 temp_a1;
	Unk80154318Entry *var_a3;

	temp_s6 = arg0;
	sp3C = &D_80154088[temp_s6];
	var_s1 = D_80154318[sp3C->unk6].unk4;
	temp_s2 = (Unk80154318Sub *)&D_80154318[sp3C->unk6].unk8;
	var_s3 = 0;
	if ((var_s1 == -5) || (var_s1 == -6)) {
		func_800C1418_D03C8(temp_s6, 0);
		func_800C1384_D0334(temp_s6);
		return;
	}
	if ((var_s1 != -5) && (var_s1 != -6)) {
loop_5:
		var_s3++;
		if (temp_s2->unkA == 2) {
			temp_a1 = temp_s2->unk9;
			if (temp_a1 == 0) {
				func_800C1418_D03C8(temp_s6, 0);
				func_800C1384_D0334(temp_s6);
				return;
			}
			var_a3 = &D_80154318[var_s1];
			temp_s0 = (Unk80154318Sub *)&var_a3->unk8;
			temp_s0->unk6 = (s8)((temp_s2->unk0 - temp_s0->unk0) / temp_a1);
			temp_s0->unk7 = (s8)((temp_s2->unk2 - temp_s0->unk2) / temp_s2->unk9);
			temp_s0->unk8 = (s8)((temp_s2->unk4 - temp_s0->unk4) / temp_s2->unk9);
			temp_s0->unk0 = (s16)(temp_s0->unk0 + temp_s0->unk6);
			temp_s0->unk2 = (s16)(temp_s0->unk2 + temp_s0->unk7);
			temp_s0->unk4 = (s16)(temp_s0->unk4 + temp_s0->unk8);
			if ((s32)temp_s0->unk9 < 0xEB) {
				temp_s0->unk9 = (u8)(temp_s0->unk9 + 0x14);
			}
			var_s1 = var_a3->unk4;
			goto block_26;
		} else {
			var_a3 = &D_80154318[var_s1];
			temp_s0 = (Unk80154318Sub *)&var_a3->unk8;
			if (((s32)temp_s0->unk9 < 0xF) || !(D_80222A70 < temp_s0->unk2)) {
				if ((s32)sp3C->unk4 < 3) {
					func_800C1418_D03C8(temp_s6, 0);
					func_800C1384_D0334(temp_s6);
					return;
				}
				temp_s0_3 = var_a3->unk4;
				func_800C1A4C_D09FC(var_s1, temp_s6, 0);
				var_s3--;
				var_s1 = temp_s0_3;
				goto block_26;
			} else {
				temp_s0->unk0 = (s16)(temp_s0->unk0 + temp_s0->unk6);
				temp_s0->unk4 = (s16)(temp_s0->unk4 + temp_s0->unk8);
				temp_s0->unk2 = (s16)(temp_s0->unk2 + temp_s0->unk7);
				temp_v0_4 = func_800B84D0_C7480(temp_s0->unk0, temp_s0->unk4);
				temp_s0->unkA++;
				if ((temp_s0->unkA & 0xFF) >= 0xB) {
					temp_v1_3 = temp_s0->unk9 - 0x14;
					if (temp_v1_3 < 0) {
						temp_s0->unk9 = 0;
					} else {
						temp_s0->unk9 = (u8)temp_v1_3;
					}
				}
				temp_v1_3 = temp_v0_4 >> 8;
				if ((s16)temp_v1_3 >= temp_s0->unk2) {
					temp_s0->unk2 = (s16)((s16)temp_v1_3 + 2);
					temp_s0->unk7 = 0;
				}
				if (temp_s0->unk7 < -0x13) {
					temp_s0->unk7 = -0x14;
				} else {
					temp_s0->unk7 = (s8)(temp_s0->unk7 - 1);
				}
				goto block_25;
			}
		}

	block_25:
		var_s1 = var_a3->unk4;
	block_26:
		if ((var_s1 != -5) && (var_s1 != -6)) {
			goto loop_5;
		}
	}

	if (temp_s2->unkA == 2) {
		temp_s2->unk9 = (u8)(temp_s2->unk9 - 1);
		temp_s2->unk6 = (s8)((func_800038E0_44E0() % 55) + 0xC8);
		temp_s2->unk7 = (s8)((func_800038E0_44E0() % 55) + 0xC8);
		temp_s2->unk8 = (s8)((func_800038E0_44E0() % 55) + 0xC8);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C5894_D4844.s")
#endif

void func_800C5D14_D4CC4(u8 arg0) {
	s16 index;
	Unk80154318Entry *entry;
	TrailParticleState *sub;
	s32 blue;
	s32 padding[2];
	u8 red;
	u8 green;

	index = D_80154318[D_80154088[arg0].unk6].unk4;
	sub = &D_80154318[D_80154088[arg0].unk6].trailParticle;

	if ((D_80156EDA < 0x1F5) && (D_80156ED9 != 2) && (D_80153B88 < 0x79)) {
		if (sub->color[0] == 0 && sub->color[1] == 0 && sub->color[2] == 0) {
			red = (func_800038E0_44E0() % 55) + 0xC8;
			green = (func_800038E0_44E0() % 55) + 0xC8;
			blue = ((func_800038E0_44E0() % 55) + 0xC8) & 0xFF;
		} else {
			red = sub->color[0];
			green = sub->color[1];
			blue = sub->color[2];
		}

		if (index != -5 && index != -6) {
			do {
				entry = &D_80154318[index];
				D_8005BB34->v.ob[0] = (s16)((f32)entry->unk8);
				D_8005BB34->v.ob[1] = (s16)((f32)entry->unkA);
				D_8005BB34->v.ob[2] = (s16)((f32)entry->unkC);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = red;
				D_8005BB34->v.cn[1] = green;
				D_8005BB34->v.cn[2] = blue;
				D_8005BB34->v.cn[3] = entry->unk11;
				D_8005BB34++;
				D_8005BB34->v.ob[0] = (s16)((f32)(entry->unk8 - entry->ribbonState.unk6));
				D_8005BB34->v.ob[1] = (s16)((f32)(entry->unkA - entry->ribbonState.unk7));
				D_8005BB34->v.ob[2] = (s16)((f32)(entry->unkC - entry->ribbonState.unk8));
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = red;
				D_8005BB34->v.cn[1] = green;
				D_8005BB34->v.cn[2] = blue;
				D_8005BB34->v.cn[3] = 0x14;
				D_8005BB34++;
				gSPVertex(D_8005BB30++, K0_TO_PHYS(D_8005BB34 - 2), 2, 0);
				gSPLineW3D(D_8005BB30++, 0, 1, entry->unk2, 0);
				gDPPipeSync(D_8005BB30++);
				index = entry->unk4;
			} while (index != -5 && index != -6);
		}

		D_80156EDA += D_80154088[arg0].unk4 * 2;
		D_80153B88 += D_80154088[arg0].unk4;
	}
}


// CURRENT(72)
#ifdef NON_MATCHING
s16 func_800C613C_D50EC(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 *arg4) {
	s32 tempA2;
	EffectInterpolationState *varV0;
	EffectInterpolationState *varA1;
	s16 linkIndex;
	s16 sp40;
	s16 sp3E;
	u8 sp30[0xC];

	sp3E = func_800C18FC_D08AC(1, 1);
	if (sp3E != -3) {
		linkIndex = D_80154318[sp3E].unk4;
		tempA2 = (s32)&D_80154318[linkIndex];
		sp40 = ((Unk80154318Entry *)tempA2)->unk4;
		D_80154318[sp3E].unk2 = arg3;

		if (arg4 == NULL) {
			func_800DFA98_EEA48((s8 (*)[3])sp30);
			varV0 = (EffectInterpolationState *)(s32)&D_80154318[sp3E].interpolation;
			varA1 = (EffectInterpolationState *)(s32)&((Unk80154318Entry *)tempA2)->interpolation;
			varV0->bytes[6] = sp30[0];
			varV0->bytes[7] = sp30[1];
			varV0->bytes[8] = sp30[2];
			varV0->bytes[9] = sp30[3];
			varV0->bytes[10] = sp30[4];
			varV0->bytes[11] = sp30[5];
			varA1->bytes[0] = sp30[6];
			varA1->bytes[1] = sp30[7];
			varA1->bytes[2] = sp30[8];
			varA1->bytes[3] = sp30[9];
			varA1->bytes[4] = sp30[10];
			varA1->bytes[5] = sp30[11];
		} else {
			varV0 = (EffectInterpolationState *)(s32)&D_80154318[sp3E].interpolation;
			if (1) { varA1 = (EffectInterpolationState *)(s32)&((Unk80154318Entry *)tempA2)->interpolation; }
			varV0->bytes[6] = arg4[0];
			varV0->bytes[7] = arg4[1];
			varV0->bytes[8] = arg4[2];
			varV0->bytes[9] = arg4[3];
			varV0->bytes[10] = arg4[4];
			varV0->bytes[11] = arg4[5];
			varA1->bytes[0] = arg4[6];
			varA1->bytes[1] = arg4[7];
			varA1->bytes[2] = arg4[8];
			varA1->bytes[3] = arg4[9];
			varA1->bytes[4] = arg4[10];
			varA1->bytes[5] = arg4[11];
		}

		varV0 = (EffectInterpolationState *)(s32)&D_80154318[sp3E].interpolation;
		varV0->position[0] = arg0;
		varV0->position[1] = arg1;
		varV0->position[2] = arg2;
		varV0->bytes[12] = 0;
		varA1->bytes[6] = func_800038E0_44E0() % 16;
		varA1->bytes[7] = 0;
		varA1->bytes[8] = func_800038E0_44E0() % 256;
		varA1->bytes[9] = 0xFF;
		varA1->bytes[10] = 0xFF;

		if (arg3 < 0x4B) {
			varA1->bytes[11] = 3;
		} else if (arg3 < 0x96) {
			varA1->bytes[11] = 2;
		} else {
			varA1->bytes[11] = 1;
		}

		varV0 = (EffectInterpolationState *)(s32)&D_80154318[sp40].interpolation;
		varV0->size = 0;

		if ((func_800038E0_44E0() % 3) == 1) {
			varV0->bytes[2] = func_800038E0_44E0() % 40;
		} else {
			varV0->bytes[2] = 0;
		}

		if ((func_800038E0_44E0() % 3) == 1) {
			varV0->bytes[3] = func_800038E0_44E0() % 40;
		} else {
			varV0->bytes[3] = 0;
		}

		if ((func_800038E0_44E0() % 3) == 1) {
			varV0->bytes[4] = func_800038E0_44E0() % 40;
		} else {
			varV0->bytes[4] = 0;
		}

		if ((func_800038E0_44E0() % 2) == 1) {
			varV0->bytes[5] = func_800038E0_44E0() % 7;
		} else {
			varV0->bytes[5] = 0;
		}

		if ((func_800038E0_44E0() % 2) == 1) {
			varV0->bytes[6] = func_800038E0_44E0() % 7;
		} else {
			varV0->bytes[6] = 0;
		}

		if ((func_800038E0_44E0() % 2) == 1) {
			varV0->bytes[7] = func_800038E0_44E0() % 7;
		} else {
			varV0->bytes[7] = 0;
		}
	}

	return sp3E;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C613C_D50EC.s")
#endif

// CURRENT(255)
void func_800C6558_D5508(void) {
	s16 idx;
	EffectInterpolationState *entryBytes;
	EffectInterpolationState *linkedBytes;
	EffectInterpolationState *nextBytes;
	s16 entryUnk4;
	s16 linkedIdx;
	s16 nextIdx;
	s32 age;
	u8 steps;

	idx = D_8015420A;
	if ((idx == -5) || (idx == -6)) {
		func_800C1418_D03C8(1, 1);
		return;
	}

	/* Keep these block boundaries for IDO sentinel register allocation. */
	if (1) {
		if (1) {
			if (1) {
				while ((idx != -5) && (idx != -6)) {
					entryBytes = &D_80154318[idx].interpolation;
					entryUnk4 = D_80154318[idx].unk4;
					linkedBytes = &D_80154318[entryUnk4].interpolation;
					linkedIdx = D_80154318[entryUnk4].unk4;

					if (D_80154318[idx].unk14 >= (0x23 / D_80154318[entryUnk4].interpolation.bytes[0xB])) {
						nextIdx = D_80154318[linkedIdx].unk4;
						func_800C1D40_D0CF0(idx, 1, 1);
						idx = nextIdx;
						continue;
					}

					age = entryBytes->bytes[0xC];
					nextBytes = &D_80154318[linkedIdx].interpolation;

					if (age == 0) {
						nextBytes->size = (func_800038E0_44E0() % 11) + 0x3C;
					} else if (age == 1) {
						nextBytes->size += (func_800038E0_44E0() % 11) + 0xF;
					} else if (age < (7 / linkedBytes->bytes[0xB])) {
						nextBytes->size += ((func_800038E0_44E0() % 5) + 5) * linkedBytes->bytes[0xB];
					} else if (age < (0xF / linkedBytes->bytes[0xB])) {
						nextBytes->size += ((func_800038E0_44E0() % 4) + 4) * linkedBytes->bytes[0xB];
						linkedBytes->bytes[0xA] -= ((func_800038E0_44E0() % 7) + 7) * linkedBytes->bytes[0xB];
					} else if (age < (0x18 / linkedBytes->bytes[0xB])) {
						nextBytes->size += ((func_800038E0_44E0() % 4) + 3) * linkedBytes->bytes[0xB];
						linkedBytes->bytes[9] -= ((func_800038E0_44E0() % 5) + 3) * linkedBytes->bytes[0xB];
						if ((linkedBytes->bytes[0xB] * 0xF) < linkedBytes->bytes[0xA]) {
							linkedBytes->bytes[0xA] -= ((func_800038E0_44E0() % 7) + 7) * linkedBytes->bytes[0xB];
						}
					} else if (age < (0x1C / linkedBytes->bytes[0xB])) {
						nextBytes->size += ((func_800038E0_44E0() % 3) + 2) * linkedBytes->bytes[0xB];
						linkedBytes->bytes[9] -= ((func_800038E0_44E0() % 5) + 3) * linkedBytes->bytes[0xB];
						if ((linkedBytes->bytes[0xB] * 0x19) < linkedBytes->bytes[0xA]) {
							linkedBytes->bytes[0xA] -= ((func_800038E0_44E0() % 14) + 0xC) * linkedBytes->bytes[0xB];
						}
					} else {
						nextBytes->size += ((func_800038E0_44E0() % 2) + 2) * linkedBytes->bytes[0xB];
						if ((linkedBytes->bytes[0xB] * 0x19) < linkedBytes->bytes[0xA]) {
							linkedBytes->bytes[0xA] -= ((func_800038E0_44E0() % 14) + 0xC) * linkedBytes->bytes[0xB];
						}
						if ((linkedBytes->bytes[0xB] * 0x25) < linkedBytes->bytes[9]) {
							linkedBytes->bytes[9] -= ((func_800038E0_44E0() % 15) + 0x16) * linkedBytes->bytes[0xB];
						}
					}

					age = entryBytes->bytes[0xC];
					if (age < 3) {
						;
					} else {
						steps = (0x23 / linkedBytes->bytes[0xB]) - age;
						entryBytes->bytes[6] = entryBytes->bytes[6] - ((entryBytes->bytes[6] - linkedBytes->bytes[0]) / steps);
						entryBytes->bytes[7] = entryBytes->bytes[7] - ((entryBytes->bytes[7] - linkedBytes->bytes[1]) / steps);
						entryBytes->bytes[8] = entryBytes->bytes[8] - ((entryBytes->bytes[8] - linkedBytes->bytes[2]) / steps);
						entryBytes->bytes[9] = entryBytes->bytes[9] - ((entryBytes->bytes[9] - linkedBytes->bytes[3]) / steps);
						entryBytes->bytes[0xA] = entryBytes->bytes[0xA] - ((entryBytes->bytes[0xA] - linkedBytes->bytes[4]) / steps);
						entryBytes->bytes[0xB] = entryBytes->bytes[0xB] - ((entryBytes->bytes[0xB] - linkedBytes->bytes[5]) / steps);
					}

					nextBytes->bytes[2] += nextBytes->bytes[5];
					nextBytes->bytes[3] += nextBytes->bytes[6];
					nextBytes->bytes[4] += nextBytes->bytes[7];
					linkedBytes->bytes[6]++;
					if (linkedBytes->bytes[6] == 0x10) {
						linkedBytes->bytes[6] = 0;
					}

					entryBytes->bytes[0xC]++;
					idx = D_80154318[linkedIdx].unk4;
				}
			}
		}
	}
}


// CURRENT(26417)
#ifdef NON_MATCHING
void func_800C6D80_D5D30(void) {
	Unk80052B40 sp158;
	Unk80052B40 sp150;
	Unk80052B40 sp148;
	Unk80052B40 sp140;
	s8 sp13E;
	s8 sp13D;
	s8 sp13C;
	s16 sp13A;
	s16 sp138;
	f32 temp_f0;
	f32 temp_f0_2;
	f32 temp_f0_3;
	f32 temp_f2;
	f32 var_f0;
	s16 temp_a3;
	s16 var_a2;
	s16 var_t1;
	s32 temp_f16;
	u16 temp_u16;
	f64 temp_double;
	u8 *linkedBytes;
	Unk80154318Entry *entry;
	Unk80154318Entry *linked;
	Unk80154318Entry *next;

	var_t1 = D_8015420A;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
	gSPClearGeometryMode(D_8005BB2C++, G_FOG);
	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetRenderMode(D_8005BB2C++, G_RM_PASS, G_RM_AA_ZB_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetTextureLOD(D_8005BB2C++, G_TL_TILE);
	gDPSetCombineLERP(D_8005BB2C++, TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, ENVIRONMENT,
					COMBINED, TEXEL0, 0, ENVIRONMENT, COMBINED);
	gDPPipeSync(D_8005BB2C++);

	if ((var_t1 == -6) || (var_t1 == -5)) {
		return;
	}

	temp_double = D_80143FD8_152F88[0];

	do {
		entry = &D_80154318[var_t1];
		linked = &D_80154318[entry->unk4];
		next = &D_80154318[linked->unk4];
		linkedBytes = (u8 *)&next->unk8;

		temp_u16 = (u16)next->unk8;
		temp_f16 = (s32)((f32)entry->unk2 * ((f32)temp_u16 * 0.03125) * 6.0);
		sp158.unk4 = temp_f16;
		sp158.unk2 = temp_f16;
		sp158.unk0 = temp_f16;

		if (func_800B93AC_C835C(entry->unk8, entry->unkC, temp_f16 & 0xFFFF, (s16)(s32)(D_80047954 * 4.0f),
								(s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {
			Unk80154318Sub *entrySub;
			Unk80154318Sub *linkedSub;

			sp158.unk0 = (s16)(s32)((f32)(((f64)(f32)linkedBytes[2] / temp_double) + 1.0) * (f32)sp158.unk0);
			sp158.unk2 = (s16)(s32)((f32)(((f64)(f32)linkedBytes[3] / temp_double) + 1.0) * (f32)sp158.unk2);

			entrySub = (Unk80154318Sub *)&entry->unk8;
			linkedSub = (Unk80154318Sub *)&linked->unk8;

			sp158.unk4 = (s16)(s32)((f32)(((f64)(f32)linkedBytes[4] / temp_double) + 1.0) * (f32)sp158.unk4);

			sp140.unk0 = entry->unk8;
			sp140.unk2 = entrySub->unk2;
			sp140.unk4 = entrySub->unk4;

			temp_f0 = (D_80153BA0.x * 4.0f) - (f32)entry->unk8;
			temp_f2 = (D_80153BA0.z * 4.0f) - (f32)entrySub->unk4;
			temp_f0_2 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));

			sp150.unk0 = 0;
			sp150.unk2 = ((u8)linkedSub->unk8) << 8;
			sp150.unk4 = 0;
			sp148.unk0 = func_80003824_4424(D_80153B90.z, D_80153B90.x) + 0x8000;
			sp148.unk2 = 0x8000;
			sp148.unk4 = 0x4000 - func_80003824_4424((D_80153BA4 * 4.0f) - (f32)entrySub->unk2, temp_f0_2);

			if (entrySub->unkC < 3) {
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
				gDPSetEnvColor(D_8005BB2C++, 0xFF, 0xFF, 0xFF, 0xFF);
			} else {
				gDPSetPrimColor(D_8005BB2C++, 0, 0, (u8)entrySub->unk6, (u8)entrySub->unk7, (u8)entrySub->unk8,
						(u8)linkedSub->unk9);
				gDPSetEnvColor(D_8005BB2C++, (u8)entrySub->unk9, (u8)entrySub->unkA, (u8)entrySub->unkB,
						(u8)linkedSub->unkA);
			}

			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1,
						  K0_TO_PHYS(&D_50474F0[((u8)linkedSub->unk6) << 9]));
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, 4, 0,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, 4, 0, 0, 255, 1024);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << 2), (31 << 2));

			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1,
						  K0_TO_PHYS(&D_50494F0[((u8)linkedSub->unk6) << 9]));
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0040, 5, 0,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, 5, 0, 0, 255, 1024);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0040, 1, 0,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, 1, 0, 0, (31 << 2), (31 << 2));

			D_8005BB38++;
			func_800039D0_45D0((Unk80052B40 *)&sp140, (Unk80052B40 *)&sp148, (Unk80052B40 *)&sp158, D_8005BB38);
			gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

			func_800039D0_45D0(NULL, (Unk80052B40 *)&sp150, NULL, D_8005BB38 + 1);
			gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

			gSPDisplayList(D_8005BB2C++, D_504B640);
			gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
			gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

			temp_a3 = entry->unk2;
			D_80156EDA += 0x15;
			if (temp_a3 >= 0x4C) {
				sp13C = 0x7F;
				sp13D = 0x6B;
				sp13E = 0x5C;
				sp138 = entry->unk8;
				sp13A = entrySub->unk4;

				if (temp_a3 >= 0x2E) {
					var_f0 = 1.0f;
					if (temp_a3 < 0x64) {
						var_a2 = (entrySub->unkC * 5) + 0x80;
						var_f0 = (f32)temp_a3 / 128.0f;
					} else {
						var_a2 = (entrySub->unkC * 8) + (temp_a3 >> 1) + 0x80;
					}

					temp_f0_3 = ((f32)(0x24 - entrySub->unkC) / 32.0f) * var_f0;
					sp13C = (s8)(u32)(127.0f * temp_f0_3);
					sp13D = (s8)(u32)(107.0f * temp_f0_3);
					sp13E = (s8)(u32)(92.0f * temp_f0_3);

					func_800B2354_C1304(&sp138, &sp13C, var_a2, (entrySub->unkC * 0x12) + 0x80);
				}
			}
		}

		var_t1 = next->unk4;
	} while ((var_t1 != -6) && (var_t1 != -5));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C6D80_D5D30.s")
#endif

// CURRENT(5215)
#ifdef NON_MATCHING
// AI - Spawn a particle/effect entry at (arg0,arg1,arg2) from source effect arg4 with random colour/velocity
s16 func_800C7924_D68D4(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
	Unk80154318Entry *entry;
	Unk80154318Entry *linked;
	u8 *entryBytes;
	u8 *linkedBytes;
	Vec3f sp40;
	f32 f0;
	s16 idx;
	s32 temp;
	u16 arg5U16;
	u8 arg7U8;

	arg5U16 = arg5;
	arg7U8 = arg7;

	if (D_80154214 >= 0x23) {
		return -3;
	}

	if (arg4 == -3) {
		osSyncPrintf("EFFECTS WARNING : invalid source effect\n");
		return -3;
	}

	idx = func_800C18FC_D08AC(2, 1);
	if (idx == -3) {
		return idx;
	}

	entry = &D_80154318[idx];
	linked = &D_80154318[entry->unk4];

	entry->unk2 = arg3 * 4;
	entry->unk8 = arg0;
	entry->unkA = arg1;
	entry->unkC = arg2;

	entryBytes = (u8 *)&entry->unk8;

	entryBytes[6] = (func_800038E0_44E0() % 80) + 0x14;
	entryBytes[7] = (func_800038E0_44E0() % 80) + 0x14;
	entryBytes[8] = (func_800038E0_44E0() % 80) + 0x14;

	*(s32 *)&linked->unk8 = arg6;

	arg5U16 = (u16)((func_800038E0_44E0() % 6) + (arg5U16 / 7) - 3);

	sp40.x = (f32)((func_800038E0_44E0() % 20) - 10);
	if ((func_800038E0_44E0() % 6) + 6 >= 0) {
		sp40.y = (f32)((func_800038E0_44E0() % 6) + 6);
	} else {
		sp40.y = (f32)(-6 - (func_800038E0_44E0() % 6));
	}
	sp40.z = (f32)((func_800038E0_44E0() % 20) - 10);

	if (arg6 == (s32)&D_502D390) {
		sp40.x = sp40.x / 2;
		sp40.y = sp40.y / 2;
		sp40.z = sp40.z / 2;
	}

	func_800C1024_CFFD4(&sp40, &sp40);

	linkedBytes = (u8 *)&D_80154318[linked->unk4].unk8;
	f0 = (f32)arg5U16;
	linkedBytes[0] = (s8)(s32)(f0 * sp40.x);
	temp = (s16)(s32)(f0 * sp40.y);
	if (temp >= 0) {
		linkedBytes[1] = (s8)temp;
	} else {
		linkedBytes[1] = (s8)-temp;
	}
	linkedBytes[2] = (s8)(s32)(f0 * sp40.z);

	linkedBytes[3] = func_800038E0_44E0() % 0xFF;
	linkedBytes[4] = func_800038E0_44E0() % 0xFF;
	linkedBytes[5] = func_800038E0_44E0() % 0xFF;
	linkedBytes[6] = (func_800038E0_44E0() % 20) - 10;
	linkedBytes[7] = (func_800038E0_44E0() % 20) - 10;
	linkedBytes[8] = (func_800038E0_44E0() % 20) - 10;

	if (arg7U8 == 0) {
		entryBytes[0xB] = 0;
	} else if (arg7U8 == 3) {
		entryBytes[0xB] = 0x10;
	} else {
		entryBytes[0xB] = 8;
	}

	if ((u8)(func_800038E0_44E0() % 100) < 0x28 || arg7U8 != 0) {
		entryBytes[0xB] |= 1;
	}

	if (arg7U8 != 0) {
		if ((s16)arg4 != -9) {
			entryBytes[9] = func_800C8C7C_D7C2C(arg0, arg1, arg2, idx, (s16)arg4);
			if (entryBytes[9] != 0xFB) {
				entryBytes[0xB] |= 4;
			}
		}
		entryBytes[0xA] = 0;
	} else if ((func_800038E0_44E0() % 100) >= 0x29) {
		entryBytes[9] = func_800C8C7C_D7C2C(arg0, arg1, arg2, idx, (s16)arg4);
		if (entryBytes[9] != 0xFC) {
			entryBytes[0xB] |= 4;
		}
		entryBytes[0xA] = 0;
	}

	if (arg7U8 == 2) {
		entryBytes[0xB] |= 0x80;
	}

	return idx;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C7924_D68D4.s")
#endif

void func_800C7E18_D6DC8(void) {
	s16 effectIdx;
	s32 randomValue2;
	s32 randomValue;
	s32 i;

	for (i = 0; i < 12; i = (i + 1) & 0xFF) {
		randomValue = func_800038E0_44E0() & 0xFFFF;
		effectIdx = func_800C7924_D68D4(0x4AFC, 0x348, -0x680, (randomValue % 50) + 100, -8, 100,
			((s32 *)D_8013DD20_14CCD0)[func_800038E0_44E0() % 8], 2);
		randomValue2 = func_800038E0_44E0() & 0xFFFF;
		randomValue = func_800038E0_44E0() & 0xFFFF;
		func_800C8184_D7134((randomValue2 % 30) - 15, (randomValue % 20) - 5, (func_800038E0_44E0() % 30) - 15, effectIdx);
		randomValue2 = func_800038E0_44E0() & 0xFFFF;
		randomValue = func_800038E0_44E0() & 0xFFFF;
		func_800C820C_D71BC((randomValue2 % 20) - 10, (randomValue % 20) - 10, (func_800038E0_44E0() % 20) - 10, effectIdx);
	}
}

void func_800C80F0_D70A0(u16 arg0, u16 arg1, u16 arg2, s16 arg3) {
	s8 *p;

	if (arg3 != -3) {
		p = (s8 *)&D_80154318[D_80154318[D_80154318[arg3].unk4].unk4].unk8;
		p[3] = (s8)(arg0 >> 8);
		p[4] = (s8)(arg1 >> 8);
		p[5] = (s8)(arg2 >> 8);
	}
}

void func_800C8184_D7134(s8 arg0, s8 arg1, s8 arg2, s16 arg3) {
	s8 *p;

	if (arg3 != -3) {
		p = (s8 *)&D_80154318[D_80154318[D_80154318[arg3].unk4].unk4].unk8;
		p[0] = arg0;
		p[1] = arg1;
		p[2] = arg2;
	}
}

void func_800C820C_D71BC(s8 arg0, s8 arg1, s8 arg2, s16 arg3) {
	s8 *p;

	if (arg3 != -3) {
		p = (s8 *)&D_80154318[D_80154318[D_80154318[arg3].unk4].unk4].unk8;
		p[6] = arg0;
		p[7] = arg1;
		p[8] = arg2;
	}
}

// CURRENT(4817)
#ifdef NON_MATCHING
void func_800C8294_D7244(void) {
	Unk80154318Entry *linked;
	Unk80154318Entry *entry;
	Unk80154318Entry *next;
	Unk80154318Sub *entrySub;
	s16 hitY;
	s16 effectIdx;
	Unk80052B40_fp sp84;
	u8 *nextBytes;

	sp84.unk0 = *(s32 *)&D_8013E0FC_14D0AC[0];
	effectIdx = D_80154216;
	sp84.unk8 = *(s32 *)&D_8013E0FC_14D0AC[8];
	sp84.unk4 = *(s32 *)&D_8013E0FC_14D0AC[4];

	if ((effectIdx == -5) || (effectIdx == -6)) {
		func_800C1418_D03C8(2, 1);
		return;
	}

	while ((effectIdx != -5) && (effectIdx != -6)) {
		entry = &D_80154318[effectIdx];
		linked = &D_80154318[entry->unk4];
		next = &D_80154318[linked->unk4];

		entrySub = (Unk80154318Sub *)&entry->unk8;
		nextBytes = (u8 *)&next->unk8;

		entry->unk8 += ((s8 *)&next->unk8)[0];
		entry->unkC += ((s8 *)&next->unk8)[2];
		entry->unkA += ((s8 *)&next->unk8)[1];

		func_80137368_146318(entry->unk8, entry->unkA, entry->unkC, 0xD, effectIdx);

		hitY = (s16)(func_800B84D0_C7480(entrySub->unk0, entrySub->unk4) >> 8);

		if ((s8)nextBytes[1] >= -0x13) {
			nextBytes[1] = (u8)((s8)nextBytes[1] - 1);
		} else {
			nextBytes[1] = (u8)-0x14;
		}

		nextBytes[3] = (u8)(nextBytes[3] + (s8)nextBytes[6]);
		nextBytes[4] = (u8)(nextBytes[4] + (s8)nextBytes[7]);
		nextBytes[5] = (u8)(nextBytes[5] + (s8)nextBytes[8]);

		if ((entrySub->unkB & 4) && (entrySub->unkA == 0)) {
			func_800C8E10_D7DC0(entrySub->unk0, entrySub->unk2, entrySub->unk4, entrySub->unk9);
		}

		entrySub->unkA++;
		if (entrySub->unkA == 3U) {
			entrySub->unkA = 0;
		}

		if (D_80222A70 >= entrySub->unk2) {
			if (entrySub->unkB & 0x10) {
				func_800DEA08_ED9B8(entrySub->unk0, (s16)D_80222A70, entrySub->unk4, 0xC8, 0xA, 8, 0x28, 0xDC, 0x96, 0x96,
					0x96);
				func_801371B8_146168(0, 0x16D, entrySub->unk0, ((s16 *)&D_80222A70)[1], entrySub->unk4, -1.0f);
			}

			func_800E0E9C_EFE4C(entrySub->unk0, entrySub->unk4, (u16)(entry->unk2 >> 2));
			func_800C1D40_D0CF0(effectIdx, 2, 1);
			effectIdx = next->unk4;
			continue;
		}

		if (hitY >= entrySub->unk2) {
			if (entrySub->unkB & 1) {
				if (entrySub->unkB & 0x18) {
					if (*(s32 *)&linked->unk8 == (s32)&D_502D390) {
						if ((D_80031420 & 3) == 3) {
							if ((currentLevel == 4) &&
								((func_8000726C_7E6C((u64)0xB) == 0) || (func_8000726C_7E6C((u64)0xC) != 0))) {
								func_800CA5EC_D959C(entrySub->unk0, (s16)(func_800B84D0_C7480(entrySub->unk0, entrySub->unk4) >> 8),
									entrySub->unk4, 0, 0x7F, 0, 0x28, 5, 0x19, 0xFF, 0, 0xFF, 0, 0xFF);
							} else if ((D_80031420 & 3) == 3) {
								func_800DF9C8_EE978(entrySub->unk0, entrySub->unk2, entrySub->unk4, 0x32, 0, (s32)&sp84);
								func_800CA5EC_D959C(entrySub->unk0, (s16)(func_800B84D0_C7480(entrySub->unk0, entrySub->unk4) >> 8),
									entrySub->unk4, 0, 0x7F, 0, 0x28, 5, 0x19, 0xFF, 0xFF, 0, 0, 0xFF);
							}

							func_80137130_1460E0((s32)entrySub, 0xF4, entrySub->unk0, entrySub->unk2, entrySub->unk4);
							func_80137130_1460E0((s32)entrySub, 0xAD, entrySub->unk0, entrySub->unk2, entrySub->unk4);
						}
					} else {
						func_800DF038_EDFE8(entrySub->unk0, entrySub->unk2, entrySub->unk4, (u16)(entry->unk2 / 2), 0, 0);
					}
				} else {
					func_800DF038_EDFE8(entrySub->unk0, entrySub->unk2, entrySub->unk4, (u16)(entry->unk2 / 6), 0, 0);
				}
			}

			func_800C1D40_D0CF0(effectIdx, 2, 1);
			effectIdx = next->unk4;
		} else {
			effectIdx = next->unk4;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C8294_D7244.s")
#endif

// CURRENT(3374)
#ifdef NON_MATCHING
void func_800C8814_D77C4(void) {
	s16 effectIdx;
	s16 nextIdx;
	Unk80154318Entry *entry;
	Unk80154318Entry *linked;
	u8 *entrySubBytes;
	u8 *nextSubBytes;
	Unk80052B40 spEC;
	Unk80052B40 spE4;
	Unk80052B40 spDC;
	s32 pad2[4];
	s32 pad[6];

	effectIdx = D_80154216;
	if ((effectIdx != -6) && (effectIdx != -5)) {
		while (1) {
			entry = &D_80154318[effectIdx];
			spEC.unk4 = entry->unk2;
			spEC.unk2 = entry->unk2;

			linked = &D_80154318[entry->unk4];
			nextIdx = linked->unk4;
			spEC.unk0 = entry->unk2;
			entrySubBytes = (u8 *)&entry->unk8;

			if (func_800B93AC_C835C(entry->unk8, entry->unkC, (u16)entry->unk2, (s16)(D_80047954 * 4.0f),
				(s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {
				gDPSetPrimColor(D_8005BB2C++, 0, 0, entrySubBytes[6], entrySubBytes[7], entrySubBytes[8], 0xFF);

				spDC.unk0 = entry->unk8;
				spDC.unk2 = entry->unkA;
				spDC.unk4 = entry->unkC;

				nextSubBytes = (u8 *)&D_80154318[nextIdx].unk8;
				spE4.unk0 = nextSubBytes[3] << 8;
				spE4.unk2 = nextSubBytes[4] << 8;
				spE4.unk4 = nextSubBytes[5] << 8;

				if (!(entrySubBytes[0xB] & 8)) {
					gDPPipeSync(D_8005BB2C++);
					gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
					gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
					gSPDisplayList(D_8005BB2C++, D_800311D0);
					gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
					gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
					gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
					gDPPipeSync(D_8005BB2C++);
				} else {
					gDPPipeSync(D_8005BB2C++);
					gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
					gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
					gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
					gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG | G_LIGHTING);
					gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_PASS2);
					if (!(entrySubBytes[0xB] & 0x80)) {
						gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
					} else {
						gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
					}
					gDPPipeSync(D_8005BB2C++);
				}

				func_800039D0_45D0(&spDC, &spE4, &spEC, D_8005BB38);

				gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				gSPDisplayList(D_8005BB2C++, (Gfx *)*(u32 *)&linked->unk8);
				gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
			}

			effectIdx = D_80154318[nextIdx].unk4;
			if ((effectIdx == -6) || (effectIdx == -5)) {
				break;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C8814_D77C4.s")
#endif

// CURRENT(663)
u8 func_800C8C7C_D7C2C(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
	s16 idx;
	u8 effect;
	Unk80154318Entry *source;

	if (arg4 == -3) {
		return 0xFB;
	}

	if ((effect = func_800C14D4_D0484(3)) != 0xFB) {
		if ((idx = func_800C17B4_D0764(effect, 0)) == -3) {
			func_800C1384_D0334(effect);
			effect = 0xFB;
		} else {
			if (arg4 == -8) {
				D_80154318[idx].payload[6] = 0xC8;
				D_80154318[idx].payload[7] = 0xC8;
				D_80154318[idx].payload[8] = 0xC8;
				D_80154318[idx].payload[9] = 0x64;
				D_80154318[idx].payload[10] = 0x64;
				D_80154318[idx].payload[11] = 0x64;
			} else {
				source = &D_80154318[arg4];
				D_80154318[idx].payload[6] = source->payload[6];
				D_80154318[idx].payload[7] = source->payload[7];
				D_80154318[idx].payload[8] = source->payload[8];
				D_80154318[idx].payload[9] = D_80154318[source->unk4].payload[0];
				D_80154318[idx].payload[10] = D_80154318[source->unk4].payload[1];
				D_80154318[idx].payload[11] = D_80154318[source->unk4].payload[2];
			}

			D_80154318[idx].unk8 = arg0;
			D_80154318[idx].unkA = arg1;
			D_80154318[idx].unkC = arg2;
			D_80154088[effect].unk2 = arg3;
		}
	}

	return effect;
}


void func_800C8E10_D7DC0(s16 arg0, s16 arg1, s16 arg2, u8 arg3)
{
	s16 idx;
	if (D_80156ED8 == 2)
	{
		if ((func_800038E0_44E0() % 10) < 5)
		{
			return;
		}
	}
	if (arg3 >= 0x1E)
	{
		return;
	}
	if (arg3 == 0xFB)
	{
		return;
	}

	if (D_80154088[arg3].unk0 != 3)
	{
		return;
	}
	idx = func_800C17B4_D0764(arg3, 0);
	if (idx == (-3))
	{
		return;
	}
	D_80154318[idx].unk8 = arg0;
	D_80154318[idx].unkA = arg1;
	D_80154318[idx].unkC = arg2;
	D_80154318[idx].unk2 = (func_800038E0_44E0() % 15) + 0x1E;
	D_80154318[idx].unk11 = 0xFA;
	D_80154318[idx].unkE = D_80154318[D_80154088[arg3].unk6].unkE;
	D_80154318[idx].unkF = D_80154318[D_80154088[arg3].unk6].unkF;
	D_80154318[idx].unk10 = D_80154318[D_80154088[arg3].unk6].unk10;
}

// effect type 3
void func_800C8F5C_D7F0C(u8 arg0) {
	Unk801541F8Entry *effect;
	Unk80154318Entry *entry;
	Unk80052B40 *source;
	TrailParticleState *sub;
	u8 *baseColor;
	u8 *bytes;
	s16 index;
	s16 nextIndex;
	s8 step;

	effect = &D_80154088[arg0];
	source = &D_80154318[effect->unk2].spatialVectors[0];
	index = effect->unk6;
	entry = &D_80154318[index];
	entry->unk8 = source->unk0;
	entry->unkA = source->unk2;
	entry->unkC = source->unk4;

	baseColor = entry->spurtVisual.shadowColor;
	index = entry->unk4;
	if ((index == -5) || (index == -6)) {
		func_800C1418_D03C8(arg0, 0);
		func_800C1384_D0334(arg0);
		return;
	}

	while ((index != -5) && (index != -6)) {
		entry = &D_80154318[index];
		sub = &entry->trailParticle;
		bytes = entry->payload;

		if (D_80154318[index].unk11 < 10) {
			nextIndex = D_80154318[index].unk4;
			func_800C1A4C_D09FC(index, arg0, 0);
			if (effect->unk4 == 1) {
				func_800C1A4C_D09FC(effect->unk6, arg0, 0);
				func_800C1384_D0334(arg0);
				return;
			}
			index = nextIndex;
		} else {
			step = (s8)(0x23 - sub->age);
			if (step > 0) {
				sub->color[0] -= ((s32)sub->color[0] - baseColor[0]) / step;
				sub->color[1] -= ((s32)sub->color[1] - baseColor[1]) / step;
				sub->color[2] -= ((s32)sub->color[2] - baseColor[2]) / step;
			}

			sub->position[1] += (func_800038E0_44E0() % 2) + 1;
			D_80154318[index].unk2 += (func_800038E0_44E0() % 3) + 2;
			bytes[10]++;
			bytes[9] -= 9;
			index = D_80154318[index].unk4;
		}
	}
}

// CURRENT(225)
void func_800C927C_D822C(u8 arg0) {
	Unk801541F8Entry *effect;
	s16 index;

	effect = &D_80154088[arg0];
	index = effect->unk6;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100E080));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
	D_80153BCD = 0x20;
	D_80153BCE = 0x20;
	index = D_80154318[index].unk4;

	if ((index != -5) && (index != -6)) {
		do {
			D_80153BB8.x = (f32)D_80154318[index].unk8;
			D_80153BB8.y = (f32)D_80154318[index].unkA;
			D_80153BB8.z = (f32)D_80154318[index].unkC;
			D_80153BC4 = &D_80154318[index].unkE;
			D_80153BC8 = (f32)D_80154318[index].unk2;
			D_80153BCC = D_80154318[index].unk11;
			func_800DB350_EA300();
			index = D_80154318[index].unk4;
		} while ((index != -5) && (index != -6));
	}

	D_80156EDA_Draw += effect->unk4 * 4;
}

// water surface splash effect generator?
void func_800C9530_D84E0(s16 arg0, s16 arg1, u16 arg2, u8 arg3, u8 arg4, u8 arg5, u8 arg6) {
	s32 pad;
	s16 sp1A;
	s16 temp_a2;
	Unk80154318Entry *entry;
	Unk80154318Sub *var_v0;

	if (D_80154220 < 0x41) {
		sp1A = func_800C17B4_D0764(3, 1);
		if (sp1A != -3) {
			temp_a2 = func_800B84D0_C7480(arg0, arg1) >> 8;
			entry = &D_80154318[sp1A];
			var_v0 = (Unk80154318Sub *)&entry->unk8;
			if (D_80222A70 >= temp_a2) {
				var_v0->unk2 = D_80222A70 + 1;
				var_v0->unkC = 1;
			} else {
				var_v0->unk2 = temp_a2;
				var_v0->unkC = 0;
			}
			var_v0->unk0 = arg0;
			var_v0->unk4 = arg1;
			var_v0->unkA = arg6;
			D_80154318[sp1A].unk2 = arg2;
			var_v0->unk6 = arg3;
			var_v0->unk7 = arg4;
			var_v0->unk8 = arg5;
			var_v0->unk9 = 0;
			var_v0->unkB = (s32)arg2 / 2;
			if (var_v0->unkB == 0) {
				var_v0->unkB = 1;
			}
		}
	}
}


void func_800C9668_D8618(void) {
	s16 var_s0;
	s16 temp_s1;
	u8 *p;

	var_s0 = D_80154222;
	if (var_s0 == -5 || var_s0 == -6) {
		func_800C1418_D03C8(3, 1);
		return;
	}
	while (var_s0 != -5 && var_s0 != -6) {
		p = (u8 *)&D_80154318[var_s0].unk8;
		if (p[10] < 9) {
			temp_s1 = D_80154318[var_s0].unk4;
			func_800C1A4C_D09FC(var_s0, 3, 1);
			var_s0 = temp_s1;
		} else {
			if (p[9] < 4) {
				D_80154318[var_s0].unk2 += p[11];
			}
			p[9] += 1;
			p[10] -= 7;
			var_s0 = D_80154318[var_s0].unk4;
		}
	}
}

// CURRENT(17481)
#ifdef NON_MATCHING
// DrawNonZBufferedEffects?
void func_800C978C_D873C(void) {
	s16 unitId;
	s32 pad[42];
	s32 toggle;
	s32 prevToggle;
	Unk80154318Entry *entry;
	u8 *sub;
	s16 radius;
	s16 sp102;
	s16 spF4;
	s16 spF0;
	s16 spEC;
	s16 spE8;
	s16 y2;
	s16 y3;
	s16 y4;
	f32 four;

	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, -1);
	gSPSetGeometryMode(D_8005BB2C++, G_SHADE);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, D_100E080);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 0xFF, 0x400);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << 2, 31 << 2);
	gDPPipeSync(D_8005BB2C++);

	toggle = 0;
	unitId = D_80154222;
	four = 4.0f;
	if ((D_80156ED9 != 2) && (unitId != -6) && (unitId != -5)) {
		while ((unitId != -6) && (unitId != -5)) {
			prevToggle = toggle;
			if (((D_80156ED9 == 1) && (toggle == 0)) || (D_80156ED9 == 0)) {
				entry = &D_80154318[unitId];
				sub = (u8 *)&entry->unk8;
				if ((func_800703B0_7F360(*(s16 *)&sub[0], *(s16 *)&sub[4]) != 0) &&
					(func_800B93AC_C835C(*(s16 *)&sub[0], *(s16 *)&sub[4], (u16)entry->unk2, (s16)(D_80047954 * four), (s32)(D_8004795C * four), 0x4000 - D_80047950) != 0)) {
					if (sub[0xC] == 1) {
						gDPPipeSync(D_8005BB2C++);
						gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
						gDPSetRenderMode(D_8005BB2C++, G_RM_ZB_XLU_SURF, G_RM_ZB_XLU_SURF2);
					} else {
						gDPPipeSync(D_8005BB2C++);
						gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER);
						gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
					}
					gDPPipeSync(D_8005BB2C++);

					radius = entry->unk2;
					spE8 = radius + *(s16 *)&sub[0];
					spF4 = *(s16 *)&sub[4] - radius;
					spF0 = *(s16 *)&sub[0] - radius;
					spEC = radius + *(s16 *)&sub[4];

					if (sub[0xC] == 1) {
						sp102 = D_80222A70;
						y2 = D_80222A70;
						y3 = D_80222A70;
						y4 = D_80222A70;
					} else {
						sp102 = (func_800B84D0_C7480(spE8, spEC) >> 8) + 1;
						y2 = (func_800B84D0_C7480(spF0, spEC) >> 8) + 1;
						y3 = (func_800B84D0_C7480(spF0, spF4) >> 8) + 1;
						y4 = (func_800B84D0_C7480(spE8, spF4) >> 8) + 1;
					}

					D_8005BB34->v.ob[0] = (f32)spE8;
					D_8005BB34->v.ob[1] = (f32)sp102;
					D_8005BB34->v.ob[2] = (f32)spEC;
					D_8005BB34->v.flag = 0;
					D_8005BB34->v.tc[0] = 0;
					D_8005BB34->v.tc[1] = 0;
					D_8005BB34->v.cn[0] = sub[6];
					D_8005BB34->v.cn[1] = sub[7];
					D_8005BB34->v.cn[2] = sub[8];
					D_8005BB34->v.cn[3] = sub[0xA];
					D_8005BB34++;

					D_8005BB34->v.ob[0] = (f32)spF0;
					D_8005BB34->v.ob[1] = y2;
					D_8005BB34->v.ob[2] = (f32)spEC;
					D_8005BB34->v.flag = 0;
					D_8005BB34->v.tc[0] = 0x800;
					D_8005BB34->v.tc[1] = 0;
					D_8005BB34->v.cn[0] = sub[6];
					D_8005BB34->v.cn[1] = sub[7];
					D_8005BB34->v.cn[2] = sub[8];
					D_8005BB34->v.cn[3] = sub[0xA];
					D_8005BB34++;

					D_8005BB34->v.ob[0] = (f32)spF0;
					D_8005BB34->v.ob[1] = y3;
					D_8005BB34->v.ob[2] = (f32)spF4;
					D_8005BB34->v.flag = 0;
					D_8005BB34->v.tc[0] = 0x800;
					D_8005BB34->v.tc[1] = 0x800;
					D_8005BB34->v.cn[0] = sub[6];
					D_8005BB34->v.cn[1] = sub[7];
					D_8005BB34->v.cn[2] = sub[8];
					D_8005BB34->v.cn[3] = sub[0xA];
					D_8005BB34++;

					D_8005BB34->v.ob[0] = (f32)spE8;
					D_8005BB34->v.ob[1] = y4;
					D_8005BB34->v.ob[2] = (f32)spF4;
					D_8005BB34->v.flag = 0;
					D_8005BB34->v.tc[0] = 0;
					D_8005BB34->v.tc[1] = 0x800;
					D_8005BB34->v.cn[0] = sub[6];
					D_8005BB34->v.cn[1] = sub[7];
					D_8005BB34->v.cn[2] = sub[8];
					D_8005BB34->v.cn[3] = sub[0xA];
					D_8005BB34++;

					D_8005BB34->v.ob[0] = (f32)*(s16 *)&sub[0];
					D_8005BB34->v.ob[1] = (f32)*(s16 *)&sub[2];
					D_8005BB34->v.ob[2] = (f32)*(s16 *)&sub[4];
					D_8005BB34->v.flag = 0;
					D_8005BB34->v.tc[0] = 0x400;
					D_8005BB34->v.tc[1] = 0x400;
					D_8005BB34->v.cn[0] = sub[6];
					D_8005BB34->v.cn[1] = sub[7];
					D_8005BB34->v.cn[2] = sub[8];
					D_8005BB34->v.cn[3] = sub[0xA];
					D_8005BB34++;

					gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 5), 5, 0);
					gSP1Quadrangle(D_8005BB2C++, 0, 1, 4, 3, 0);
					gSP2Triangles(D_8005BB2C++, 2, 4, 1, 0, 4, 2, 3, 0);

					D_80156EDA += 5;
				}
			}

			toggle = (1 - prevToggle) & 0xFF;
			unitId = D_80154318[unitId].unk4;
		}
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
	gSPSetGeometryMode(D_8005BB2C++, G_FOG);
	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C978C_D873C.s")
#endif

// CURRENT(6335)
// CURRENT(3380)
// spawn random water particle?
#ifdef NON_MATCHING
void func_800CA1B0_D9160(u8 arg0) {
	s32 effect;
	s16 newUnitIdx;
	s16 parentIdx;
	Unk80154318Entry *effectUnit;
	SpurtEmitterState *parent;
	Vec3f sp44;
	Vec3f sp38;

	effect = arg0 & 0xFF;
	effectUnit = &D_80154318[D_80154088[effect].unk6];
	parentIdx = effectUnit->unk4;

	if (D_80156ED8 == 1) {
		if ((func_800038E0_44E0() % 9) < 3) {
			return;
		}
	}

	if ((D_80156ED8 == 1) && ((func_800038E0_44E0() % 10) <= 0)) {
		return;
	}

	newUnitIdx = func_800C17B4_D0764(effect, 0);
	if (newUnitIdx != -3) {
		Unk80154318Entry *newUnit;

		newUnit = &D_80154318[newUnitIdx];
		newUnit->unk8 = effectUnit->unk8;
		newUnit->unkA = effectUnit->unkA;
		newUnit->unkC = effectUnit->unkC;

		parent = (SpurtEmitterState *)&D_80154318[parentIdx].unk8;
		newUnit->unk11 = parent->alpha;
		newUnit->unk2 = (func_800038E0_44E0() % (effectUnit->unk2 * 2)) + effectUnit->unk2;

		sp44.x = parent->velocity[0];
		sp44.y = parent->velocity[1];
		sp44.z = parent->velocity[2];
		func_800C1024_CFFD4(&sp44, &sp44);

		sp38.x = (f32)((f64)(f32)(func_800038E0_44E0() % parent->kind) / D_80143FE0_152F90[0]);
		if ((func_800038E0_44E0() % 0x15) < 0xA) {
			sp38.x = 0.0f - sp38.x;
		}
		sp38.x += sp44.x;

		sp38.y = (f32)((f64)(f32)(func_800038E0_44E0() % parent->kind) / D_80143FE8_152F98[0]);
		if ((func_800038E0_44E0() % 0x15) < 0xA) {
			sp38.y = 0.0f - sp38.y;
		}
		sp38.y += sp44.y;

		sp38.z = (f32)((f64)(f32)(func_800038E0_44E0() % parent->kind) / D_80143FF0_152FA0[0]);
		if ((func_800038E0_44E0() % 0x15) < 0xA) {
			sp38.z = 0.0f - sp38.z;
		}
		sp38.z += sp44.z;

		func_800C1024_CFFD4(&sp38, &sp38);

		D_80154318[newUnitIdx].jetStreamParticle.velocity[0] = (s8)((f32)((s32)(parent->size / 4)) * sp38.x);
		D_80154318[newUnitIdx].jetStreamParticle.velocity[1] = (s8)((f32)((s32)(parent->size / 4)) * sp38.y);
		D_80154318[newUnitIdx].jetStreamParticle.velocity[2] = (s8)((f32)((s32)(parent->size / 4)) * sp38.z);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CA1B0_D9160.s")
#endif

// spurt/blood visual effect?
u8 func_800CA5EC_D959C(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6, u16 arg7, u8 arg8,
						u8 arg9, u8 arg10, u8 arg11, u8 arg12, u8 arg13) {
	/* These unused locals preserve the target frame and effect-byte slot. */
	s32 padding[6];
	s16 unused;
	u8 effect;
	s16 unitIdx;
	s16 linkedIdx;
	s16 value;
	Unk80154318Entry *unit;
	SpurtVisualState *unitBytes;
	Unk80154318Entry *linked;
	SpurtEmitterState *linkedSubBytes;

	if (D_80156ED9 == 2) {
		return 0xFB;
	}

	if (func_800B93AC_C835C(arg0, arg2, 0x200, (s16) (D_80047954 * 4.0f), (s32) (D_8004795C * 4.0f), 0x4000 - D_80047950) == 0) {
		return 0xFB;
	}

	effect = func_800C14D4_D0484(4);
	if (effect != 0xFB) {
		unitIdx = func_800C19D4_D0984(effect, 0);
		if (unitIdx == -3) {
			osSyncPrintf(&D_801435F8_1525A8);
			func_800C1384_D0334(effect);
			return 0xFB;
		}

		unit = &D_80154318[unitIdx];
		linkedIdx = unit->unk4;
		D_80154088[effect].unk1 = D_80154088[effect].unk1;
		unit->unk2 = arg7;
		unit->unk8 = arg0;
		unit->unkA = arg1;
		unit->unkC = arg2;

		linked = &D_80154318[linkedIdx];
		linked->spurtEmitter.velocity[0] = arg3;
		linked->spurtEmitter.velocity[1] = arg4;
		linked->spurtEmitter.velocity[2] = arg5;
		linked->spurtEmitter.size = arg6;
		linked->spurtEmitter.kind = arg9;
		linkedSubBytes = &linked->spurtEmitter;

		unit->unkE = arg10;
		unit->unk14 = 0;
		unit->unkF = arg11;
		unit->unk10 = arg12;

		unitBytes = &unit->spurtVisual;

		value = (s16) (arg10 - 0x78);
		if (value < 0) {
			value = 0;
		}
		unitBytes->shadowColor[0] = value;

		value = (s16) (arg11 - 0x78);
		if (value < 0) {
			value = 0;
		}
		unitBytes->shadowColor[1] = value;

		value = (s16) (arg12 - 0x78);
		if (value < 0) {
			value = 0;
		}
		unitBytes->shadowColor[2] = value;

		linkedSubBytes->alpha = arg13;

		if (arg8 >= 0x97) {
			arg8 = 0x96;
		} else if (arg8 == 0) {
			arg8 = 1;
		}
		linkedSubBytes->intensity = arg8;
		linkedSubBytes->age = 0;
	}

	return effect;
}

// effect type 4 - update water spray particles?
void func_800CA848_D97F8(u8 arg0) {
	s16 currentUnitId;
	s16 nextUnitId;
	s16 rootIndex;
	s16 leaderIndex;
	Unk801541F8Entry *effect;
	Unk80154318Entry *root;
	Unk80154318Entry *leader;
	SpurtEmitterState *leaderBytes;
	EffectInterpolationState *rootBytes;
	Unk80154318Entry *current;
	JetStreamParticleState *currentBytes;
	u8 count;
	u8 i;

	effect = &D_80154088[arg0];
	rootIndex = effect->unk6;
	root = &D_80154318[rootIndex];
	leaderIndex = root->unk4;
	leader = &D_80154318[leaderIndex];
	leaderBytes = (SpurtEmitterState *)&leader->unk8;
	rootBytes = (EffectInterpolationState *)&root->unk8;
	currentUnitId = leader->unk4;
	if (currentUnitId != -5 && currentUnitId != -6) {
		/* Preserve the target stride register and temporary allocation. */
		if (1) {
			do {
				current = &D_80154318[currentUnitId];
				currentBytes = (JetStreamParticleState *)&current->unk8;
				if (D_80222A70 >= currentBytes->position[1]) { // if particle reaches current water height
					func_800DEF2C_EDEDC(currentBytes->position[0], (s16)(D_80222A70 + 3), currentBytes->position[2], 0x32, 1);
					func_800C9530_D84E0(currentBytes->position[0], currentBytes->position[2], (u16)current->unk2, rootBytes->bytes[6],
						rootBytes->bytes[7], rootBytes->bytes[8], currentBytes->opacity);
					if (effect->unk4 < 4 && leaderBytes->intensity == 0) {
						func_800C1418_D03C8(arg0, 0);
						func_800C1384_D0334(arg0);
						return;
					}
					nextUnitId = D_80154318[currentUnitId].unk4;
					func_800C1A4C_D09FC(currentUnitId, arg0, 0);
					currentUnitId = nextUnitId;
				} else {
					currentBytes->position[0] += currentBytes->velocity[0];
					currentBytes->position[2] += currentBytes->velocity[2];
					currentBytes->position[1] += currentBytes->velocity[1];
					if (currentBytes->velocity[1] >= -0x13) {
						currentBytes->velocity[1] = currentBytes->velocity[1] - 1;
					} else {
						currentBytes->velocity[1] = -0x14;
					}
					if ((s16)(func_800B84D0_C7480(currentBytes->position[0], currentBytes->position[2]) >> 8) >= currentBytes->position[1]) {
						if (rootBytes->bytes[0xC] == 0) {
							func_800C9530_D84E0(currentBytes->position[0], currentBytes->position[2], D_80154318[currentUnitId].unk2, rootBytes->bytes[6],
								rootBytes->bytes[7], rootBytes->bytes[8], currentBytes->opacity);
						}
						if (effect->unk4 < 4 && leaderBytes->intensity == 0) {
							func_800C1418_D03C8(arg0, 0);
							func_800C1384_D0334(arg0);
							return;
						}
						nextUnitId = D_80154318[currentUnitId].unk4;
						func_800C1A4C_D09FC(currentUnitId, arg0, 0);
						currentUnitId = nextUnitId;
					} else {
						currentUnitId = D_80154318[currentUnitId].unk4;
					}
				}
			} while (currentUnitId != -5 && currentUnitId != -6);
		}
	}
	if ((u16)leaderBytes->age > 0) {
		leaderBytes->age = (u16)leaderBytes->age - 1;
		return;
	}
	count = (func_800038E0_44E0() % 3) + 2;
	for (i = 0; i < count; i++) {
		if (leaderBytes->intensity > 0) {
			func_800CA1B0_D9160(arg0);
			leaderBytes->intensity -= 1;
		}
	}
	rootBytes = (EffectInterpolationState *)&root->unk8;
	if (effect->unk4 < 3) {
		func_800C1418_D03C8(arg0, 0);
		func_800C1384_D0334(arg0);
		return;
	}
	func_80137368_146318(rootBytes->position[0], rootBytes->position[1], rootBytes->position[2], 6, arg0);
}

#ifdef NON_MATCHING
// CURRENT(6336)
void func_800CABC8_D9B78(u8 arg0) {
	f32 temp_f0;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f16;
	f32 temp_f18;
	f32 temp_f20;
	f32 temp_f22;
	f32 temp_f24;
	f32 temp_f26;
	f32 temp_f2;
	s16 var_t4;
	Unk80154318Entry *temp_a1;
	Unk80154318Entry *temp_a1_2;
	Unk80154318Entry *temp_s3;
	temp_s3 = &D_80154318[D_80154088[(u8)arg0].unk6];
	temp_a1 = &D_80154318[temp_s3->unk4];
	var_t4 = temp_a1->unk4;
	if (*(u16 *)&temp_a1->unkE == 0 && D_80156EDA < 0x28B && D_80156ED9 != 2) {
		gDPSetCombineLERP(D_8005BB2C++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100D700));
		gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 127, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (15 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));
		gDPPipeSync(D_8005BB2C++);

		if (var_t4 != -6 && var_t4 != -5) {
			u8 *temp_s3_bytes = (u8 *)&temp_s3->unk8;

			do {
				temp_a1_2 = &D_80154318[var_t4];
					gDPSetPrimColor(D_8005BB2C++, 0, 0, temp_s3_bytes[6], temp_s3_bytes[7], temp_s3_bytes[8], temp_a1_2->unk11);
					gDPSetEnvColor(D_8005BB2C++, temp_s3_bytes[9], temp_s3_bytes[10], temp_s3_bytes[11], temp_a1_2->unk11);
				gDPPipeSync(D_8005BB2C++);

				temp_f16 = (f32)temp_a1_2->unk2;
				temp_f0 = (f32)temp_a1_2->unk8;
				temp_f2 = (f32)temp_a1_2->unkA;
				temp_f12 = (f32)temp_a1_2->unkC;
				temp_f14 = temp_f16 * D_80153AB8.x;
				temp_f18 = temp_f16 * D_80153AB8.y;
				temp_f20 = temp_f16 * D_80153AB8.z;
				temp_f22 = temp_f16 * ((f32 *)&D_80153AB8)[3];
				temp_f24 = temp_f16 * ((f32 *)&D_80153AB8)[4];
				temp_f26 = temp_f16 * ((f32 *)&D_80153AB8)[5];

				D_8005BB34->v.ob[0] = (s16)(temp_f0 + temp_f14);
				D_8005BB34->v.ob[1] = (s16)(temp_f2 + temp_f18);
				D_8005BB34->v.ob[2] = (s16)(temp_f12 + temp_f20);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = 0;
				D_8005BB34->v.cn[1] = 0;
				D_8005BB34->v.cn[2] = 0;
				D_8005BB34->v.cn[3] = 0;
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)(temp_f0 + temp_f22);
				D_8005BB34->v.ob[1] = (s16)(temp_f2 + temp_f24);
				D_8005BB34->v.ob[2] = (s16)(temp_f12 + temp_f26);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0x400;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = 0;
				D_8005BB34->v.cn[1] = 0;
				D_8005BB34->v.cn[2] = 0;
				D_8005BB34->v.cn[3] = 0;
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)(temp_f0 - temp_f14);
				D_8005BB34->v.ob[1] = (s16)(temp_f2 - temp_f18);
				D_8005BB34->v.ob[2] = (s16)(temp_f12 - temp_f20);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0x400;
				D_8005BB34->v.tc[1] = 0x400;
				D_8005BB34->v.cn[0] = 0;
				D_8005BB34->v.cn[1] = 0;
				D_8005BB34->v.cn[2] = 0;
				D_8005BB34->v.cn[3] = 0;
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)(temp_f0 - temp_f22);
				D_8005BB34->v.ob[1] = (s16)(temp_f2 - temp_f24);
				D_8005BB34->v.ob[2] = (s16)(temp_f12 - temp_f26);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0x400;
				D_8005BB34->v.cn[0] = 0;
				D_8005BB34->v.cn[1] = 0;
				D_8005BB34->v.cn[2] = 0;
				D_8005BB34->v.cn[3] = 0;
				D_8005BB34++;

				gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
				gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
				D_80156EDA += 4;
				var_t4 = temp_a1_2->unk4;
			} while (var_t4 != -6 && var_t4 != -5);
		}
	}
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CABC8_D9B78.s")
#endif

s16 func_800CB19C_DA14C(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	s16 temp_v0;
	Unk80154318Entry *entry;

	temp_v0 = func_800C17B4_D0764(4, 1);
	if (temp_v0 != -3) {
		entry = &D_80154318[temp_v0];
		*(u8 *)&entry->unkE = 0xFF;
		*((u8 *)&entry->unkE + 1) = 0xFF;
		*(u8 *)&entry->unk10 = 0xFF;
		*((u8 *)&entry->unk10 + 1) = 0xFF;
		*(u8 *)&entry->unk12 = 0;
		entry->unk14 = 0;
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;
		*((u8 *)&entry->unk12 + 1) = arg3;
	}
	return temp_v0;
}

// Update bubble effect?
void func_800CB23C_DA1EC(s16 arg0, s16 arg1, s16 arg2, u8 arg3, s16 arg4, s32 arg5) {
	u8 *base;

	if (arg4 != -3 && arg4 < 0x190) {
		if (D_80154318[arg4].unk0 & 1) {
			D_80154318[arg4].unk8 = arg0;
			D_80154318[arg4].unkA = arg1;
			D_80154318[arg4].unkC = arg2;
			base = (u8 *)&D_80154318[arg4].unk8;
			base[6] = (func_800038E0_44E0() % 60) + 0xC3;
			base[7] = (func_800038E0_44E0() % 60) + 0xC3;
			base[8] = (func_800038E0_44E0() % 60) + 0xC3;

			if (arg3 == 0) {
				arg3 = 1;
			}
			D_80154318[arg4].unk2 = arg3;

			if (base[0xB] == 0x10 || (base[0xB] >= 0x15 && base[0xB] < 0x1B)) {
				D_80154318[arg4].unk2 = D_80154318[arg4].unk2 * 2;
				*(s16 *)(base + 2) = *(s16 *)(base + 2) + 5;
			}
			base[9] = (arg3 * 4) - 1;
			base[0xC] = arg5;
			return;
		}
	}
	osSyncPrintf(&D_80143644_1525F4);
}

void func_800CB394_DA344(void) {
	s16 var_s1;
	u8 *base;

	var_s1 = D_8015422E;
	if (var_s1 == -5 || var_s1 == -6) {
		func_800C1418_D03C8(4, 1);
		return;
	}

	while (var_s1 != -5 && var_s1 != -6) {
		base = (u8 *)&D_80154318[var_s1].unk8;
		base[6] = (func_800038E0_44E0() % 50) + 0xCD;
		base[7] = (func_800038E0_44E0() % 50) + 0xCD;
		base[8] = 0xFF;
		base[0xA] = base[0xA] + 1;
		if (base[0xA] >= 5) {
			base[0xA] = 0;
		}
		var_s1 = D_80154318[var_s1].unk4;
	}
}

#ifdef NON_MATCHING
// CURRENT(5155)
void func_800CB4F8_DA4A8(void) {
	s16 unitId;
	Unk80154318Entry *entry;
	u8 *entryBytes;
	s16 *entryPos;
	f64 scale;

	if (D_80156EDA >= 0x28B) {
		return;
	}

	if (D_80156ED9 == 2) {
		return;
	}

	D_80153BCD = 0x20;
	unitId = D_8015422E;
	D_80153BCE = 0x20;
	if (unitId == -5) {
		return;
	}

	if (unitId == -6) {
		return;
	}

	scale = D_80143FF8_152FA8;
	while (1) {
		entry = &D_80154318[unitId];
		entryBytes = (u8 *)&entry->unk8;
		entryPos = (s16 *)entryBytes;
		if ((entry->unk14 == 0) || ((D_80052A8C % (entry->unk14 * 2)) < entry->unk14)) {
			if (func_800B93AC_C835C(
					(s16)(entryPos[0] * 4),
					(s16)(entryPos[1] * 4),
					(u16)entry->unk2,
					(s16)(D_80047954 * 4.0f),
					(s32)(D_8004795C * 4.0f),
					0x4000 - D_80047950
				) != 0) {
				gDPPipeSync(D_8005BB2C++);
				gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
				gDPPipeSync(D_8005BB2C++);
				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100DA00));
				gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
				gDPLoadSync(D_8005BB2C++);
				gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
				gDPPipeSync(D_8005BB2C++);
				gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
				gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << 2, 31 << 2);
				gDPPipeSync(D_8005BB2C++);

				D_80153BB8.x = (f32)(entryPos[0] * 4);
				D_80153BB8.y = (f32)((func_800B84D0_C7480((s16)(entryPos[0] * 4), (s16)(entryPos[1] * 4)) >> 8) + 2);
				D_80153BB8.z = (f32)(entryPos[1] * 4);
				D_80153BC4 = &D_80153B84;
				D_80153BC8 = (f32)(entry->unk2 >> 2);
				D_80153BCC = 0x69;
				func_800DAFCC_E9F7C();

				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1,
							   K0_TO_PHYS(&D_100BF00[entryBytes[0xA] << 9]));
				gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
				gDPLoadSync(D_8005BB2C++);
				gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
				gDPPipeSync(D_8005BB2C++);
				gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
				gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << 2, 31 << 2);
				gDPPipeSync(D_8005BB2C++);

				D_80153BB8.x = (f32)(entryPos[0] * 4);
				D_80153BB8.y = (f32)((entryPos[1] + (entryBytes[9] / 50)) * 4);
				D_80153BB8.z = (f32)(entryPos[1] * 4);
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0, 0, 0);
				D_80153BC4 = &entry->unkE;
				D_80153BC8 = (f32)((f64)(f32)entry->unk2 * scale);
				D_80153BCC = 0xFF;
				func_800DB350_EA300();

				gDPPipeSync(D_8005BB2C++);
				gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);
				gDPPipeSync(D_8005BB2C++);
				gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_1010880);
				gDPNoOpTag(D_8005BB2C++, 0xE8000000);
				gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0,
						   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
						   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
				gDPLoadSync(D_8005BB2C++);
				gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 255);
				gDPPipeSync(D_8005BB2C++);
				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1,
							   K0_TO_PHYS(D_8013DC80_14CC30[entryBytes[0xB]]));
				gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
				gDPLoadSync(D_8005BB2C++);
				gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 511, 512);
				gDPPipeSync(D_8005BB2C++);
				gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, G_TX_RENDERTILE, 0,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
				gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << 2, 31 << 2);
				gDPPipeSync(D_8005BB2C++);

				D_80153BB8.x = (f32)(entryPos[0] * 4);
				D_80153BB8.y = (f32)((entryPos[1] + (entryBytes[9] / 50)) * 4);
				D_80153BB8.z = (f32)(entryPos[1] * 4);
				D_80153BC4 = &D_80153B84;
				D_80153BC8 = (f32)((f64)(f32)entry->unk2 * 0.5);
				func_800DB350_EA300();

				gDPPipeSync(D_8005BB2C++);
				gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
				D_80156EDA += 0xC;
			}
		}

		unitId = entry->unk4;
		if (unitId == -5) {
			break;
		}

		if (unitId == -6) {
			break;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CB4F8_DA4A8.s")
#endif

void func_800CBD1C_DACCC(s16 arg0) {
	Unk80154318Entry *entry;

	if (arg0 < 0x190 && arg0 != -3) {
		entry = &D_80154318[arg0];
		func_800C541C_D43CC(
			(s16)(entry->unk8 * 4),
			(s16)((entry->unkA * 4) + 0xF),
			(s16)(entry->unkC * 4),
			0, 0x7F, 0, 0x41, 0xFE, 0x19, 0xF, 0, 0, 0
		);
		func_800C1A4C_D09FC(arg0, 4, 1);
	}

}

void func_800CBDE0_DAD90(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4, u8 arg5, u8 arg6, u8 arg7) {
	s16 temp_v0;
	Unk80154318Entry *entry;

	temp_v0 = func_800C17B4_D0764(5, 1);
	if (temp_v0 != -3) {
		entry = &D_80154318[temp_v0];
		*((u8 *)&entry->unk10 + 1) = 0;
		*(u8 *)&entry->unk12 = 0;
		entry->unk14 = arg7;
		entry->unk2 = arg0;
		entry->unk8 = arg1;
		entry->unkA = arg2;
		entry->unkC = arg3;
		*(u8 *)&entry->unkE = D_8013DF80_14CF30.unk0;
		*((u8 *)&entry->unkE + 1) = D_8013DF80_14CF30.unk1;
		*(u8 *)&entry->unk10 = D_8013DF80_14CF30.unk2;
		if (arg7 == 0) {
			*((u8 *)&entry->unk12 + 1) = 0;
			return;
		}
		*((u8 *)&entry->unk12 + 1) = 0x18;
	}
}

void func_800CBE98_DAE48(void) {
	s16 unitId;
	s16 nextUnitId;
	Unk80154318Entry *entry;
	u8 *base;
	s32 shouldDelete;
	s32 deletedThisIter;
	s8 dir;

	unitId = D_8015423A;
	shouldDelete = 0;
	if (unitId == -5 || unitId == -6) {
		func_800C1418_D03C8(5, 1);
		return;
	}

	while (unitId != -5 && unitId != -6) {
		deletedThisIter = 0;
		entry = &D_80154318[unitId];
		base = (u8 *)&entry->unk8;

		if (entry->unk14 == 0) {
			dir = 1;
			*(s8 *)&base[0xB] = *(s8 *)&base[0xB] + 1;
			if (*(s8 *)&base[0xB] >= 0x18) {
				shouldDelete = 1;
			}
		} else {
			dir = -1;
			*(s8 *)&base[0xB] = *(s8 *)&base[0xB] - 1;
			if (*(s8 *)&base[0xB] <= 0) {
				shouldDelete = 1;
			}
		}

		if (shouldDelete != 0) {
			nextUnitId = entry->unk4;
			func_800C1A4C_D09FC(unitId, 5, 1);
			unitId = nextUnitId;
			deletedThisIter = 1;
		}

		if (*(s8 *)&base[0xB] < 6) {
			base[9] += dir * 0x28;
		} else if (*(s8 *)&base[0xB] < 0xC) {
			base[0xA] += dir * 0x28;
		} else if (*(s8 *)&base[0xB] < 0x12) {
			base[9] -= dir * 0x28;
		} else {
			base[0xA] -= dir * 0x28;
		}

		if (deletedThisIter == 0) {
			unitId = D_80154318[unitId].unk4;
		}
	}
}
#ifdef NON_MATCHING
// CURRENT(8146)
void func_800CC090_DB040(void) {
	s16 spC4[2];
	f32 temp_f0;
	f32 temp_f2;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f16;
	f32 temp_f18;
	f32 temp_f20;
	f32 temp_f22;
	f32 temp_f24;
	f32 temp_f30;
	s16 temp_v0;
	s16 var_a0 = D_8015423A;
	s16 var_v1;
	Unk80154318Entry *temp_s1;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100BCF0));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK,
		G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 7, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK,
		G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), 0);

	if (var_a0 != -5 && var_a0 != -6) {
		temp_f30 = 2.5f;
		temp_f28 = 25.0f;
		temp_f26 = D_80144000_152FB0;
		temp_f24 = 20.0f;
		temp_f22 = D_80144004_152FB4;

		while (1) {
			Unk80154318Sub *var_v0;

			gDPPipeSync(D_8005BB2C++);
			temp_s1 = &D_80154318[var_a0];
			var_v0 = (Unk80154318Sub *)&temp_s1->unk8;

			temp_v0 = temp_s1->unk2;
			var_v1 = -temp_v0;
			if (temp_v0 >= 0) {
				var_v1 = temp_v0;
			}

			if (var_v0->unkB < 0x14) {
				temp_f0 = (f32)var_v1 * ((f32)var_v0->unkB / temp_f24) * temp_f26;
			} else {
				temp_f0 = (f32)var_v1 - (((f32)(var_v0->unkB - 0x14) / temp_f28) * temp_f30);
			}

			temp_f12 = temp_f0 * D_80153AB8.x;
			temp_f2 = temp_f0 * D_80153AB8.y;
			temp_f14 = temp_f0 * D_80153AB8.z;
			temp_f16 = temp_f0 * ((f32 *)&D_80153AB8)[3];
			temp_f20 = temp_f0 * ((f32 *)&D_80153AB8)[4];
			temp_f18 = temp_f0 * ((f32 *)&D_80153AB8)[5];

			D_8005BB34->v.ob[0] = (s16)((f32)var_v0->unk0 + temp_f12);
			D_8005BB34->v.ob[1] = (s16)((f32)var_v0->unk2 + temp_f2 + temp_f22);
			D_8005BB34->v.ob[2] = (s16)((f32)var_v0->unk4 + temp_f14);
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0;
			D_8005BB34->v.tc[1] = 0;
			D_8005BB34->v.cn[0] = (u8)var_v0->unk6;
			D_8005BB34->v.cn[1] = (u8)var_v0->unk7;
			D_8005BB34->v.cn[2] = (u8)var_v0->unk8;
			D_8005BB34->v.cn[3] = var_v0->unk9;
			D_8005BB34++;

			D_8005BB34->v.ob[0] = (s16)((f32)var_v0->unk0 + temp_f16);
			D_8005BB34->v.ob[1] = (s16)((f32)var_v0->unk2 + temp_f2 + temp_f22);
			D_8005BB34->v.ob[2] = (s16)((f32)var_v0->unk4 + temp_f18);
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0x800;
			D_8005BB34->v.tc[1] = 0;
			D_8005BB34->v.cn[0] = (u8)var_v0->unk6;
			D_8005BB34->v.cn[1] = (u8)var_v0->unk7;
			D_8005BB34->v.cn[2] = (u8)var_v0->unk8;
			D_8005BB34->v.cn[3] = var_v0->unk9;
			D_8005BB34++;

			D_8005BB34->v.ob[0] = (s16)((f32)var_v0->unk0 - temp_f12);
			D_8005BB34->v.ob[1] = (s16)((f32)(temp_s1->unk2 >> 1) + ((f32)var_v0->unk2 - temp_f2));
			D_8005BB34->v.ob[2] = (s16)((f32)var_v0->unk4 - temp_f14);
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0x800;
			D_8005BB34->v.tc[1] = 0x40;
			D_8005BB34->v.cn[0] = (u8)var_v0->unk6;
			D_8005BB34->v.cn[1] = (u8)var_v0->unk7;
			D_8005BB34->v.cn[2] = (u8)var_v0->unk8;
			D_8005BB34->v.cn[3] = var_v0->unkA;
			D_8005BB34++;

			D_8005BB34->v.ob[0] = (s16)((f32)var_v0->unk0 - temp_f16);
			D_8005BB34->v.ob[1] = (s16)((f32)(temp_s1->unk2 >> 1) + ((f32)var_v0->unk2 - temp_f20));
			D_8005BB34->v.ob[2] = (s16)((f32)var_v0->unk4 - temp_f18);
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0;
			D_8005BB34->v.tc[1] = 0x40;
			D_8005BB34->v.cn[0] = (u8)var_v0->unk6;
			D_8005BB34->v.cn[1] = (u8)var_v0->unk7;
			D_8005BB34->v.cn[2] = (u8)var_v0->unk8;
			D_8005BB34->v.cn[3] = var_v0->unkA;
			D_8005BB34++;

			gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
			gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);

			spC4[0] = var_v0->unk0;
			spC4[1] = var_v0->unk4;
			if (var_v0->unkB == 5) {
				func_800B99A8_C8958((Unk80152B80 *)spC4, 30, 500, 255, (u8 *)&D_8013DF80_14CF30, 80, 20, 0);
			}

			var_a0 = temp_s1->unk4;
			if (var_a0 == -5 || var_a0 == -6) {
				break;
			}
		}
	}

	D_80156EDA += D_80154238 * 4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CC090_DB040.s")
#endif

s32 func_800CC7B0_DB760(s16 arg0, s16 arg1, s32 arg2, s16 arg3, s16 arg4, s16 arg5) {
	struct { s16 pad; s8 value; } zVelocity;
	s32 randomSize;
	s16 unitId;
	s8 xVelocity;
	u16 randomAlpha;
	u16 randomYVelocity;

	unitId = func_800C17B4_D0764(6, 1);
	if (unitId != -3) {
		D_80154318[unitId].unk2 = arg0;
		((EffectSparkState *)(s32)D_80154318[unitId].payload)->x = (func_800038E0_44E0() % arg1) + arg3 - (arg1 / 2);
		((EffectSparkState *)(s32)D_80154318[unitId].payload)->y = (func_800038E0_44E0() % arg1) + arg4 - (arg1 / 2);
		((EffectSparkState *)(s32)D_80154318[unitId].payload)->z = (func_800038E0_44E0() % arg1) + arg5 - (arg1 / 2);
		((EffectSparkState *)(s32)D_80154318[unitId].payload)->r = 0xFF;
		((EffectSparkState *)(s32)D_80154318[unitId].payload)->g = 0xFF;
		((EffectSparkState *)(s32)D_80154318[unitId].payload)->b = 0xFF;
		((EffectSparkState *)(s32)D_80154318[unitId].payload)->width = arg1;
		((EffectSparkState *)(s32)D_80154318[unitId].payload)->phase = func_800038E0_44E0() % 8;
		((EffectSparkState *)(s32)D_80154318[unitId].payload)->lifetime = ((u8 *)&arg2)[3];
		xVelocity = (func_800038E0_44E0() % 0x46) + 0x37;
		zVelocity.value = (func_800038E0_44E0() % 0x46) + 0x37;
		if ((func_800038E0_44E0() % 0x14) < 0xA) {
			xVelocity = -xVelocity;
		}
		if ((func_800038E0_44E0() % 0x14) < 0xA) {
			zVelocity.value = -zVelocity.value;
		}
		randomYVelocity = func_800038E0_44E0();
		randomAlpha = func_800038E0_44E0();
		randomSize = func_800038E0_44E0();
		func_800C541C_D43CC(arg3, arg4, arg5, xVelocity, (randomYVelocity % 60) + 0x41, zVelocity.value, 0x14, (randomAlpha % 60) + 0x46,
			(randomSize % 4) + 4, 4, 0xC8, 0xC8, 0xFF);
	}
	return unitId;
}

void func_800CCAD4_DBA84(s16 arg0, s16 arg1, s16 arg2) {
	s32 temp_v0;

	temp_v0 = func_800CC7B0_DB760(0xF, 0x14, (func_800038E0_44E0() % 5 + 5) & 0xFF, arg0, (s32)arg1, (s32)arg2);
	if (temp_v0 != -3) {
		D_80154318[temp_v0].unk12 |= 0x80;
	}
}

void func_800CCB60_DBB10(void) {
	s16 unitId;
	s16 nextUnitId;
	EffectSparkState *sub;
	u8 alpha;

	unitId = D_80154246;
	if ((unitId == -5) || (unitId == -6)) {
		func_800C1418_D03C8(6, 1);
		return;
	}

	alpha = 0xFF;

	if ((unitId != -5) && (unitId != -6)) {
		do {
			--D_80154318[unitId].unk15;

			if (D_80154318[unitId].unk15 == 0) {
				nextUnitId = D_80154318[unitId].unk4;
				func_800C1A4C_D09FC(unitId, 6, 1);
				unitId = nextUnitId;
			} else {
				sub = (EffectSparkState *)&D_80154318[unitId].unk8;
				/* Preserve IDO block boundaries for payload loads and sentinel registers. */
				if (1) {
					if (1) {
						if (1) {
							if (1) {
								if ((sub->width & 0x80) == 1) {
									sub->x += D_80156EE4.unk0;
									sub->y += D_80156EE4.unk2;
									sub->z += D_80156EE4.unk4;
								}

							}
						}
					}
				}
				sub->r = (func_800038E0_44E0() % 85) + 0xAA;
				sub->g = (func_800038E0_44E0() % 85) + 0xAA;
				sub->b = alpha;
				sub->phase++;
				if (sub->phase >= 8) {
					sub->phase = 0;
				}

				unitId = D_80154318[unitId].unk4;
			}
		} while ((unitId != -5) && (unitId != -6));
	}
}

// CURRENT(218)
#ifdef NON_MATCHING
void func_800CCD54_DBD04(void) {
	Vec3f dir;
	s16 index;
	Unk80154318Entry *entry;

	D_80153BCD = 0x10;
	D_80153BCE = 0x10;
	index = D_80154246;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	if ((index != -5) && (index != -6)) {
		do {
			entry = &D_80154318[index];

			gDPPipeSync(D_8005BB2C++);
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100E880 + (entry->unk14 << 7)));
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (15 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));
			gDPPipeSync(D_8005BB2C++);

			dir.x = (D_80153BA0.x * 4.0f) - entry->unk8;
			dir.y = (D_80153BA0.y * 4.0f) - entry->unkA;
			dir.z = (D_80153BA0.z * 4.0f) - entry->unkC;
			func_800C1024_CFFD4(&dir, &dir);

			D_80153BB8.x = entry->unk8 + (dir.x * entry->unk12);
			D_80153BB8.y = entry->unkA + (dir.y * entry->unk12);
			D_80153BB8.z = entry->unkC + (dir.z * entry->unk12);
			D_80153BCC = 0xFF;
			D_80153BC8 = entry->unk2;
			D_80153BC4 = &entry->unkE;
			func_800DB350_EA300();

			index = D_80154318[index].unk4;
		} while ((index != -5) && (index != -6));
	}

	D_80156EDA += D_80154244 * 4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CCD54_DBD04.s")
#endif

// Create a jet-stream particle from the emitter.
void func_800CD0B0_DC060(u8 arg0) {
	s16 prevUnitId;
	Unk80154318Entry *base;
	s16 unitId;
	s32 result;
	s32 random;
	JetStreamParticleState *sub;
	Unk80154318Sub *prevSub;

	prevUnitId = D_80154088[arg0].unk6;
	result = func_800C17B4_D0764(arg0, 0);
	unitId = result;
	if (result != -3) {
		random = func_800038E0_44E0();
		/* Convert the array base before indexing to preserve IDO address sharing. */
		base = (Unk80154318Entry *)(s32)D_80154318;
		sub = (JetStreamParticleState *)(s32)base[unitId].payload;
		D_80154318[unitId].unk2 = (random % 40) + 0x14;
		sub->color[0] = 0xFF;
		sub->color[1] = 0xFF;
		sub->color[2] = 0xFF;
		sub->opacity = 0xFF;

		prevSub = (Unk80154318Sub *)(s32)D_80154318[prevUnitId].payload;
		sub->position[0] = prevSub->unk0;
		sub->position[1] = prevSub->unk2;
		sub->position[2] = prevSub->unk4;
		sub->velocity[0] = (func_800038E0_44E0() % 6) + prevSub->unk6 - 3;
		sub->velocity[1] = (func_800038E0_44E0() % 6) + prevSub->unk7 - 3;
		sub->velocity[2] = (func_800038E0_44E0() % 6) + prevSub->unk8 - 3;
		sub->bounced = 0;
	}
}


// Create jet stream effect? - used by Alpha 1 building takeoff/landing, some enemy visual effects
u8 func_800CD1F8_DC1A8(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5) {
	Unk80154318Entry *entry;
	s32 temp_v0;
	u8 sp1F;

	sp1F = func_800C14D4_D0484(5);
	if (sp1F != 0xFB) {
		D_80154088[sp1F].unk1 |= 1;
		temp_v0 = func_800C17B4_D0764(sp1F, 0);
		if (temp_v0 == -3) {
			osSyncPrintf(&D_80143688_152638);
			func_800C1384_D0334(sp1F);
			return 0xFB;
		}
		entry = &D_80154318[temp_v0];
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;
		entry->unkE = arg3;
		entry->unkF = arg4;
		entry->unk10 = arg5;
		entry->unk11 = 1;
	}
	return sp1F;
}

// Update jet stream effect?
void func_800CD2E8_DC298(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	Unk80154318Entry *temp_v0;
	s16 temp_v1;

	if (arg3 != 0xFB) {
		if (D_80154088[arg3].unk0 != 0xFA) {
			temp_v1 = D_80154088[arg3].unk6;
			temp_v0 = &D_80154318[temp_v1];
			temp_v0->unkA = arg1;
			temp_v0->unkC = arg2;
			temp_v0->unk8 = arg0;
			return;
		}
	}
	osSyncPrintf(&D_801436D8_152688);
}

void func_800CD390_DC340(u8 arg0) {
	if (arg0 < 0x1E) {
		if (D_80154088[arg0].unk0 == 5) {
			if (D_80154088[arg0].unk4 < 2) {
				func_800C1418_D03C8(arg0, 0);
				func_800C1384_D0334(arg0);
				return;
			}
			D_80154329[D_80154088[arg0].unk6].unk0 = 0;
		}
	}
}

// effect type 5
// CURRENT(3159)
void func_800CD42C_DC3DC(u8 arg0) {
	Unk801541F8Entry *effect;
	Unk80154318Entry *entry;
	JetStreamParticleState *sub;
	s16 index;
	s16 nextIndex;
	s16 temp;

	effect = &D_80154088[arg0];
	index = effect->unk6;
	index = D_80154318[index].unk4;

	if (((index == -5) || (index == -6)) && (D_80154318[effect->unk6].unk11 == 0)) {
		func_800C1418_D03C8(arg0, 0);
		func_800C1384_D0334(arg0);
		return;
	}

	if ((index != -5) && (index != -6)) {
		/* Preserve the particle loop's register allocation. */
		if (1) {
			do {
				entry = &D_80154318[index];
				sub = (JetStreamParticleState *)&entry->unk8;
				if (entry->unk11 < 0xD) {
					if ((effect->unk4 < 3) && (D_80154318[effect->unk6].unk11 == 0)) {
						func_800C1418_D03C8(arg0, 0);
						func_800C1384_D0334(arg0);
						return;
					}

					nextIndex = D_80154318[index].unk4;
					func_800C1A4C_D09FC(index, arg0, 0);
					index = nextIndex;
				} else {
					if (sub->bounced == 0) {
						sub->opacity = sub->opacity - (func_800038E0_44E0() % 4) - 4;
						D_80154318[index].unk2 = (func_800038E0_44E0() % 3) + D_80154318[index].unk2 + 3;
					} else {
						sub->opacity = sub->opacity - (func_800038E0_44E0() % 6) - 6;
						D_80154318[index].unk2 = (func_800038E0_44E0() % 6) + D_80154318[index].unk2 + 6;
					}

					sub->position[0] += sub->velocity[0];
					sub->position[1] += sub->velocity[1];
					sub->position[2] += sub->velocity[2];
					sub->color[0] -= 4;
					sub->color[1] -= 4;
					sub->color[2] -= 4;

					temp = func_800B84D0_C7480(sub->position[0], sub->position[2]) >> 8;
					if (sub->position[1] < temp) {
						sub->position[1] = temp;
						if (sub->bounced == 0) {
							sub->bounced = 1;
							sub->velocity[0] += (func_800038E0_44E0() % 20) - 10;
							sub->velocity[2] += (func_800038E0_44E0() % 20) - 10;
						}
					}

					index = D_80154318[index].unk4;
				}

			} while ((index != -5) && (index != -6));
		}
	}

	if (D_80154318[effect->unk6].unk11 == 1) {
		func_800CD0B0_DC060(arg0);
	}
}


void func_800CD7FC_DC7AC(u8 arg0) {
	s16 index;

	index = D_8015408E[arg0].unk0;
	index = D_80154318[index].unk4;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100E080));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
		   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
		   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
	D_80153BCD = 0x20;
	D_80153BCE = 0x20;

	while ((index != -5) && (index != -6)) {
		D_80153BB8.x = (f32)D_80154318[index].unk8;
		D_80153BB8.y = (f32)D_80154318[index].unkA;
		D_80153BB8.z = (f32)D_80154318[index].unkC;
		D_80153BC4 = &D_80154318[index].unkE;
		D_80153BC8 = (f32)D_80154318[index].unk2;
		D_80153BCC = D_80154318[index].unk11;
		func_800DB350_EA300();
		D_80156EDA += 4;
		index = D_80154318[index].unk4;
	}
}


void func_800CDA98_DCA48(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s16 temp_v0;
	Unk80154318Entry *entry;

	temp_v0 = func_800C17B4_D0764(9, 1);
	if (temp_v0 != -3) {
		entry = &D_80154318[temp_v0];
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;
		*((u8 *)&entry->unk10 + 1) = 0;
		*(s16*)&entry->unkE = arg3;
		*(u8 *)&entry->unk10 = func_800DDB60_ECB10(arg0, (s16)(arg1 + 0x12), arg2, 8, 0x19);
	}
}

s16 func_800CDB40_DCAF0(s16 arg0, s16 arg1, s16 arg2) {
	Unk80154318Entry *entry;
	s16 index;

	index = func_800C17B4_D0764(9, 1);
	if (index != -3) {
		entry = &D_80154318[index];
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;
		*(s16*)&entry->unkE = 0;
		*((u8 *)&entry->unk10 + 1) = 1;
		*(u8 *)&entry->unk10 = func_800DDB60_ECB10(arg0, (s16)(arg1 - 0x1E), arg2, 8, 0x19);
	}

	return index;
}

void func_800CDBF4_DCBA4(void)
{
	s16 temp_s0_2;
	s16 var_s2;
	var_s2 = D_8015426A;
	if ((var_s2 == (-5)) || (var_s2 == (-6)))
	{
		func_800C1418_D03C8(9, 1);
		return;
	}
	if ((var_s2 != (-5)) && (var_s2 != (-6)))
	{
		do
		{
			s16 temp_t5;
			s16 temp_a2;
			Unk80154318Sub *temp_s0;
			temp_s0 = (Unk80154318Sub *)(&D_80154318[var_s2].unk8);
			if (D_80154318[var_s2].unk11 == 1)
			{
				var_s2 = D_80154318[var_s2].unk4;
			}
			else if ((*((s16 *)(&temp_s0->unk6))) == 0)
			{
				func_80124170_133120(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, 0x2711, 0x300, NULL);
				func_800DFBA8_EEB58(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, 0xB4, 6);
				func_800DDF18_ECEC8(temp_s0->unk8);
				temp_s0_2 = D_80154318[var_s2].unk4;
				func_800C1A4C_D09FC(var_s2, 9, 1);
				var_s2 = temp_s0_2;
			}
			else
			{
				temp_a2 = temp_s0->unk0;
				temp_t5 = temp_s0->unk4;
				*((s16 *)(&temp_s0->unk6)) -= 1;
				var_s2 = D_80154318[var_s2].unk4;
				func_801371B8_146168(temp_s0, 0xFE, temp_a2, temp_s0->unk2, temp_s0->unk4, -1.0f);
			}
		} while ((var_s2 != (-5)) && (var_s2 != (-6)));
	}
}

void func_800CDD7C_DCD2C(s16 arg0) {
	if (arg0 != -3) {
		func_800DDF18_ECEC8(*(&D_80154328 + (arg0 * 0x1C)));
		func_800C1A4C_D09FC(arg0, 9, 1);
	}
}

// CURRENT(2143)
#ifdef NON_MATCHING
void func_800CDDE4_DCD94(void) {
	s32 idx;
	s32 padding;
	
	Unk80052B40 sp88;
	u16 sp78[3];
	Unk80052B40 sp80;
	Unk80052B40 *position;

	sp88.unk4 = 0x46;
	idx = D_8015426A;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_LIGHTING);

	if ((idx != -6) && (idx != -5)) {
		do {
			gDPPipeSync(D_8005BB2C++);

			position = &D_80154318[idx].positionVector;
		if (D_80154318[idx].unk11 == 1) {
			sp78[0] = 0;
			sp78[1] = 0;
			sp78[2] = 0x8000;
			sp88.unk0 = 0x96;
			sp88.unk2 = 0x96;
			sp88.unk4 = 0x96;
		} else {
			sp78[0] = 0;
			sp78[1] = 0;
			sp78[2] = 0;
			sp88.unk0 = 0x46;
			sp88.unk2 = 0x46;
			sp88.unk4 = 0x46;
		}

		sp80.unk0 = position->unk0;
		sp80.unk2 = position->unk2;
		sp80.unk4 = position->unk4;

		func_800039D0_45D0(&sp80, (Unk80052B40 *)sp78, &sp88, D_8005BB38);

		gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		gSPDisplayList(D_8005BB2C++, D_5033E00);
		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

		idx = D_80154318[idx].unk4;
		D_80156EDA += 0x1E;
		} while ((idx != -6) && (idx != -5));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CDDE4_DCD94.s")
#endif
u8 func_800CE040_DCFF0(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5)
{
	f32 dummy1;
	f32 dummy2;
	u8 sp1F;
	s32 temp_v0;
	sp1F = func_800C1598_D0548(9);
	if (sp1F != 0xFB)
	{
		temp_v0 = func_800C18D0_D0880(sp1F);
		if (temp_v0 == (-3))
		{
			osSyncPrintf(&D_80143720_1526D0, (unsigned long)sp1F);
			func_800C1384_D0334(sp1F);
			return 0xFBU;
		}
		D_80154318[temp_v0].unk8 = arg0;
		D_80154318[temp_v0].unkA = arg1;
		D_80154318[temp_v0].unkC = arg2;
		*((s16 *)(&D_80154318[temp_v0].unkE)) = arg3;
		*((s16 *)(&D_80154318[temp_v0].unk10)) = arg4;
		D_80154318[temp_v0].unk12 = arg5;
	}
	return sp1F;
}

s32 func_800CE100_DD0B0(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6) {
	s32 temp_v0;
	Unk80154318Entry *temp_v1;

	if (arg0 < 0x1E && D_80154088[arg0].unk0 == 9) {
		temp_v0 = func_800C17B4_D0764(arg0, 0);
		if (temp_v0 != -3) {
			temp_v1 = &D_80154318[temp_v0];
			temp_v1->unk8 = arg1;
			temp_v1->unkA = arg2;
			temp_v1->unkC = arg3;
			*(s16*)&temp_v1->unkE = arg4;
			*(s16*)&temp_v1->unk10 = arg5;
			temp_v1->unk12 = arg6;
		}
		return 0;
	}
	return -0xD;
}

// CURRENT(5334)
// effect type 6
#ifdef NON_MATCHING
void func_800CE1C0_DD170(u8 arg0) {
	s16 sp74;
	s16 sp72;
	s16 sp70;
	s16 temp_s0_2;
	s16 temp_s0_4;
	s16 temp_s0_5;
	s16 temp_s5;
	s16 temp_v1;
	s16 var_s3;
	s32 temp_s0_3;
	s32 temp_s1_2;
	s32 temp_s2;
	s32 temp_s7;
	s32 var_s6;
	Unk801541F8Entry *temp_fp;
	Unk80154318Entry *temp_s1;
	s16 *temp_s0;
	s16 *temp_s4;

	temp_s7 = arg0 & 0xFF;
	temp_fp = &D_80154088[temp_s7];
	var_s3 = temp_fp->unk6;
	var_s6 = 0;
	if ((var_s3 == -5) || (var_s3 == -6)) {
		func_800C1418_D03C8(temp_s7 & 0xFF, 0);
		func_800C1384_D0334(temp_s7 & 0xFF);
		return;
	}

	temp_s4 = (s16 *)&D_80154318[temp_fp->unk8].unk8;
	func_80137368_146318(temp_s4[0], temp_s4[1], temp_s4[2], 8, temp_s7);
	if ((var_s3 != -5) && (var_s3 != -6)) {
		while (1) {
			temp_s1 = &D_80154318[var_s3];
			temp_s0 = (s16 *)&temp_s1->unk8;
			temp_s4 = temp_s0;
			temp_s0[4] -= 5;
			if (temp_s0[4] < -20) {
				temp_s0[4] = -20;
			}
			temp_s0[0] += temp_s0[3];
			temp_s0[2] += temp_s0[5];
			temp_s0[1] += temp_s0[4];
			temp_s5 = func_8011D260_12C210((s8)(temp_s0[0] >> 8), (s8)(temp_s0[2] >> 8));
			func_800F9D60_108D10(temp_s0[0], temp_s0[2], &sp70, &sp74, &sp72);
			temp_v1 = temp_s0[1];
			if ((temp_v1 >= sp74) && (sp72 >= temp_v1)) {
				if (var_s6 == 0) {
					var_s6 = 1;
					if ((func_800038E0_44E0() % 6) == 0) {
						func_800E049C_EF44C(temp_s0[0], temp_s0[1], temp_s0[2]);
					}
				}

				if ((s32)temp_fp->unk4 < 3) {
					func_800C1418_D03C8(temp_s7 & 0xFF, 0);
					func_800C1384_D0334(temp_s7 & 0xFF);
					return;
				}

				temp_s0_2 = temp_s1->unk4;
				func_800C1A4C_D09FC(var_s3, temp_s7 & 0xFF, 0);
				var_s3 = temp_s0_2;
				if (((buildingInstances[temp_s5].unk8 >> 0xC) & 0x10) && ((func_800038E0_44E0() % 3) == 0)) {
					s32 div = 0x32;

					temp_s0_3 = func_800038E0_44E0() & 0xFFFF;
					temp_s1_2 = func_800038E0_44E0() & 0xFFFF;
					temp_s2 = func_800038E0_44E0() & 0xFFFF;
					func_800DDB60_ECB10((s16)(((temp_s0_3 % div) + temp_s4[0]) - 0x19), (s16)(((temp_s1_2 % div) + temp_s4[1]) - 0x19),
									   (s16)(((temp_s2 % div) + temp_s4[2]) - 0x19), 0xA, (func_800038E0_44E0() % 0x28) + 0x3C);
				}
				func_800DAA1C_E99CC(temp_s5 & 0xFF);
			} else if (D_80222A70 < temp_v1) {
				if (var_s6 == 0) {
					var_s6 = 1;
					if ((func_800038E0_44E0() % 3) == 0) {
						func_800C9530_D84E0(temp_s0[0], temp_s0[2], 0x28, 0xBE, 0xC8, 0xFF, 0xAA);
					}
				}

				if ((s32)temp_fp->unk4 < 3) {
					func_800C1418_D03C8(temp_s7 & 0xFF, 0);
					func_800C1384_D0334(temp_s7 & 0xFF);
					return;
				}

				temp_s0_4 = temp_s1->unk4;
				func_800C1A4C_D09FC(var_s3, temp_s7 & 0xFF, 0);
				var_s3 = temp_s0_4;
			} else if (sp70 < temp_v1) {
				if (var_s6 == 0) {
					var_s6 = 1;
					if (!(func_800038E0_44E0() & 1)) {
						func_800C9530_D84E0(temp_s0[0], temp_s0[2], 0x28, 0x96, 0xA0, 0xFF, 0x96);
					}
				}

				if ((s32)temp_fp->unk4 < 3) {
					func_800C1418_D03C8(temp_s7 & 0xFF, 0);
					func_800C1384_D0334(temp_s7 & 0xFF);
					return;
				}

				temp_s0_5 = temp_s1->unk4;
				func_800C1A4C_D09FC(var_s3, temp_s7 & 0xFF, 0);
				var_s3 = temp_s0_5;
			} else {
				var_s3 = temp_s1->unk4;
			}

			if ((var_s3 == -5) || (var_s3 == -6)) {
				break;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CE1C0_DD170.s")
#endif

#ifdef NON_MATCHING
// CURRENT(26000)
void func_800CE6E8_DD698(u8 arg0) {
	s16 index;
	s16 nextIndex;
	s8 sp42;
	s8 sp43;
	Unk80154318Entry *entry;
	Unk80154318Entry *nextEntry;
	Vtx *vtx;

	index = D_80154088[arg0].unk6;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100BD00));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));

	entry = &D_80154318[index];
	nextEntry = &D_80154318[entry->unk4];
	if (nextEntry->unk8 < entry->unk8) {
		sp42 = 0xF;
		if (nextEntry->unkC < entry->unkC) {
			sp43 = -0xF;
		} else {
			sp43 = 0xF;
		}
	} else {
		sp42 = -0xF;
		sp43 = 0xF;
		if (nextEntry->unkC < entry->unkC) {
			sp43 = -0xF;
		}
	}

	if ((index != -5) && (index != -6)) {
		while (1) {
			entry = &D_80154318[index];
			nextIndex = entry->unk4;
			if (nextIndex != -5) {
				nextEntry = &D_80154318[nextIndex];

				vtx = D_8005BB34;
				vtx->v.ob[0] = entry->unk8;
				vtx->v.ob[1] = (func_800038E0_44E0() % 5) + entry->unkA + 0xF;
				vtx->v.ob[2] = entry->unkC;
				vtx->v.flag = 0;
				vtx->v.tc[0] = 0;
				vtx->v.tc[1] = 0;
				vtx->v.cn[0] = 0x96;
				vtx->v.cn[1] = 0xAA;
				vtx->v.cn[2] = 0xFF;
				vtx->v.cn[3] = 0xB4;

				D_8005BB34++;
				vtx = D_8005BB34;
				vtx->v.ob[0] = entry->unk8;
				vtx->v.ob[1] = entry->unkA - (func_800038E0_44E0() % 5) - 0xF;
				vtx->v.ob[2] = entry->unkC;
				vtx->v.flag = 0;
				vtx->v.tc[0] = 0;
				vtx->v.tc[1] = 0x800;
				vtx->v.cn[0] = 0x96;
				vtx->v.cn[1] = 0xAA;
				vtx->v.cn[2] = 0xFF;
				vtx->v.cn[3] = 0xB4;

				D_8005BB34++;
				vtx = D_8005BB34;
				vtx->v.ob[0] = nextEntry->unk8;
				vtx->v.ob[1] = nextEntry->unkA - (func_800038E0_44E0() % 5) - 0xF;
				vtx->v.ob[2] = nextEntry->unkC;
				vtx->v.flag = 0;
				vtx->v.tc[0] = 0x800;
				vtx->v.tc[1] = 0x800;
				vtx->v.cn[0] = 0x96;
				vtx->v.cn[1] = 0xAA;
				vtx->v.cn[2] = 0xFF;
				vtx->v.cn[3] = 0xB4;

				D_8005BB34++;
				vtx = D_8005BB34;
				vtx->v.ob[0] = nextEntry->unk8;
				vtx->v.ob[1] = (func_800038E0_44E0() % 5) + nextEntry->unkA + 0xF;
				vtx->v.ob[2] = nextEntry->unkC;
				vtx->v.flag = 0;
				vtx->v.tc[0] = 0x800;
				vtx->v.tc[1] = 0;
				vtx->v.cn[0] = 0x96;
				vtx->v.cn[1] = 0xAA;
				vtx->v.cn[2] = 0xFF;
				vtx->v.cn[3] = 0xB4;

				D_8005BB34++;
				vtx = D_8005BB34;
				vtx->v.ob[0] = entry->unk8 + sp43;
				vtx->v.ob[1] = entry->unkA;
				vtx->v.ob[2] = entry->unkC + sp42;
				vtx->v.flag = 0;
				vtx->v.tc[0] = 0;
				vtx->v.tc[1] = 0;
				vtx->v.cn[0] = 0x96;
				vtx->v.cn[1] = 0xAA;
				vtx->v.cn[2] = 0xFF;
				vtx->v.cn[3] = 0xB4;

				D_8005BB34++;
				vtx = D_8005BB34;
				vtx->v.ob[0] = entry->unk8 - sp43;
				vtx->v.ob[1] = entry->unkA;
				vtx->v.ob[2] = entry->unkC - sp42;
				vtx->v.flag = 0;
				vtx->v.tc[0] = 0;
				vtx->v.tc[1] = 0x800;
				vtx->v.cn[0] = 0x96;
				vtx->v.cn[1] = 0xAA;
				vtx->v.cn[2] = 0xFF;
				vtx->v.cn[3] = 0xB4;

				D_8005BB34++;
				vtx = D_8005BB34;
				vtx->v.ob[0] = nextEntry->unk8 - sp43;
				vtx->v.ob[1] = nextEntry->unkA;
				vtx->v.ob[2] = nextEntry->unkC - sp42;
				vtx->v.flag = 0;
				vtx->v.tc[0] = 0x800;
				vtx->v.tc[1] = 0x800;
				vtx->v.cn[0] = 0x96;
				vtx->v.cn[1] = 0xAA;
				vtx->v.cn[2] = 0xFF;
				vtx->v.cn[3] = 0xB4;

				D_8005BB34++;
				vtx = D_8005BB34;
				vtx->v.ob[0] = nextEntry->unk8 + sp43;
				vtx->v.ob[1] = nextEntry->unkA;
				vtx->v.ob[2] = nextEntry->unkC + sp42;
				vtx->v.flag = 0;
				vtx->v.tc[0] = 0x800;
				vtx->v.tc[1] = 0;
				vtx->v.cn[0] = 0x96;
				vtx->v.cn[1] = 0xAA;
				vtx->v.cn[2] = 0xFF;
				vtx->v.cn[3] = 0xB4;

				D_8005BB34++;
				gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 8), 8, 0);
				gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
				gSP2Triangles(D_8005BB2C++, 4, 5, 7, 0, 7, 5, 6, 0);
				D_80156EDA += 8;
			}

			index = nextIndex;
			if ((nextIndex == -5) || (nextIndex == -6)) {
				break;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CE6E8_DD698.s")
#endif

void func_800CEE00_DDDB0(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s16 idx;
	s16 temp;
	s16 rem;
	s16 tens;
	s16 units;
	Unk80154318Entry *entry;
	FloatingNumberState *p;

	if (func_800B93AC_C835C(arg0, arg2, 0xC8, (s16)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) == 0) {
		return;
	}

	idx = func_800C17B4_D0764(8, 1);
	if (idx == -3) {
		return;
	}

	entry = &D_80154318[idx];
	entry->unk2 = arg3 / 50 + 0x19;
	entry->unk8 = arg0;
	entry->unkA = arg1;
	entry->unkC = arg2;

	temp = arg3 / 1000;
	arg3 -= temp * 1000;
	rem = arg3 / 100;
	arg3 -= rem * 100;
	tens = arg3 / 10;
	p = (FloatingNumberState *)&entry->unk8;
	p->highDigits = (temp << 4) | rem;
	units = arg3 - (tens * 10);
	p->lowDigits = (tens << 4) | units;
	p->alpha = 0xFF;
	p->riseSpeed = (arg3 / 300) + 5;

	if (arg3 < 1000) {
		p->color[0] = 0xFF;
		p->color[1] = 0xFF;
		p->color[2] = 0xFF;
	} else {
		p->color[0] = 0xFF;
		p->color[1] = 0xE6;
		p->color[2] = 0x28;
	}
}

void func_800CF070_DE020(void) {
	s16 var_s0;
	s16 temp_s1;
	u8 *p;

	var_s0 = D_8015425E;
	if (var_s0 == -5 || var_s0 == -6) {
		func_800C1418_D03C8(8, 1);
		return;
	}
	while (var_s0 != -5 && var_s0 != -6) {
		p = (u8 *)&D_80154318[var_s0].unk8;
		if (D_80154318[var_s0].unk14 < 8) {
			temp_s1 = D_80154318[var_s0].unk4;
			func_800C1A4C_D09FC(var_s0, 8, 1);
			var_s0 = temp_s1;
		} else {
			p[0xC] = (u8)(p[0xC] - 4);
			*(s16 *)&p[0x2] = (s16)(p[0xB] + *(s16 *)&p[0x2]);
			var_s0 = D_80154318[var_s0].unk4;
		}
	}
}

void func_800CF174_DE124(Vec3f *arg0, u8 arg1) {
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_8013DCF0_14CCA0[arg1]));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
	gDPPipeSync(D_8005BB2C++);
	D_80153BB8.x = arg0->x;
	D_80153BB8.y = arg0->y;
	D_80153BB8.z = arg0->z;
	func_800DB350_EA300();
	D_80156EDA += 4;
}

#ifdef NON_MATCHING
void func_800CF2E0_DE290(void) {
	Unk80154318Entry *entry;
	Unk80154318Sub *ribbon;
	Vec3f right;
	Vec3f left;
	s16 index;
	Vec3f point0;
	Vec3f point3;
	Vec3f point1;
	Vec3f point2;
	s32 pad0; /* Preserve the original local stack layout. */
	s32 pad1;
	f32 extent;
	f64 scale;
	u8 firstTexture;
	u8 lastTexture;
	u8 firstHigh;
	u8 lastHigh;

	index = D_8015425E;
	D_80153BCD = 0x20;
	D_80153BCE = 0x20;
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT,
	TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

	if ((index != -6) && (index != -5)) {
		scale = D_80144008_152FB8[0];
		do {
			entry = &D_80154318[index];
			if (func_800B93AC_C835C(entry->unk8, entry->unkC, (u16)entry->unk2, (s16)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f),
			0x4000 - D_80047950) != 0) {
				gDPPipeSync(D_8005BB2C++);
				ribbon = &entry->ribbonState;

				if ((u32)(D_80052A8C & 3) < 2U) {
					gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0, 0, ribbon->unkC);
				} else {
					gDPSetPrimColor(D_8005BB2C++, 0, 0, 0, 0, 0x80, ribbon->unkC);
				}

				gDPSetEnvColor(D_8005BB2C++, 0xFF, 0xFF, 0xFF, ribbon->unkC);

				D_80153BC8 = (f32)D_80154318[index].unk2;
				extent = D_80154318[index].unk2 * 3.0;
				D_80153BCC = ribbon->unkC;
				D_80153BC4 = &ribbon->unk6;
				func_800C1128_D00D8(extent, &D_80153AB8, &left);
				func_800C1128_D00D8(extent, &D_80153AC4, &right);

				point0.x = ((left.x - right.x) * 0.5) + (f32)ribbon->unk0;
				point0.y = ((left.y - right.y) * 0.5) + (f32)ribbon->unk2;
				point0.z = ((left.z - right.z) * 0.5) + (f32)ribbon->unk4;

				point3.x = ((right.x - left.x) * 0.5) + (f32)ribbon->unk0;
				point3.y = ((right.y - left.y) * 0.5) + (f32)ribbon->unk2;
				point3.z = ((right.z - left.z) * 0.5) + (f32)ribbon->unk4;

				point2.x = (point3.x - point0.x) * scale;
				point2.y = (point3.y - point0.y) * scale;
				point2.z = (point3.z - point0.z) * scale;

				func_800C10F4_D00A4(&point0, &point2, &point1);
				func_800C10C0_D0070(&point3, &point2, &point2);

				firstTexture = ribbon->unk9;
				lastTexture = ribbon->unkA;
				firstHigh = firstTexture >> 4;
				firstTexture = firstTexture & 0xF;
				lastHigh = lastTexture >> 4;
				lastTexture = lastTexture & 0xF;

				if (firstHigh == 0) {
					if (firstTexture == 0) {
						if (lastHigh == 0) {
							func_800CF174_DE124(&point2, lastTexture);
						} else {
							func_800CF174_DE124(&point1, lastHigh);
							func_800CF174_DE124(&point2, lastTexture);
						}
					} else {
						func_800CF174_DE124(&point3, lastTexture);
						func_800CF174_DE124(&point1, firstTexture);
						func_800CF174_DE124(&point2, lastHigh);
					}
				} else {
					func_800CF174_DE124(&point0, firstHigh);
					func_800CF174_DE124(&point3, lastTexture);
					func_800CF174_DE124(&point1, firstTexture);
					func_800CF174_DE124(&point2, lastHigh);
				}
			}

			index = D_80154318[index].unk4;
		} while ((index != -6) && (index != -5));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CF2E0_DE290.s")
#endif

void func_800CF80C_DE7BC(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4, u8 arg5, u8 arg6, u8 arg7) {
	s16 idx;
	Unk80154318Entry *entry;

	idx = func_800C17B4_D0764(0xA, 1);
	if (idx != -3) {
		entry = &D_80154318[idx];
		entry->unk2 = arg3;
		((u8 *)entry)[0x18] = arg7;
		entry->unkA = arg1;
		entry->unkC = arg2;
		entry->unk8 = arg0;
		entry->unkE = D_8013DF80_14CF30.unk0;
		entry->unkF = D_8013DF80_14CF30.unk1;
		entry->unk10 = D_8013DF80_14CF30.unk2;

		arg7 = arg7 & 1;
		if (arg7 == 0) {
			*(s32 *)&entry->unk14 = 1;
			func_801372B4_146264(arg0, arg1, arg2, 3);
		} else {
			*(s32 *)&entry->unk14 = 0x19;
			func_801372B4_146264(arg0, arg1, arg2, 4);
		}

		func_800CBDE0_DAD90(arg3, arg0, arg1, arg2, arg4, arg5, arg6, arg7);
	}
}

#ifdef NON_MATCHING
void func_800CF948_DE8F8(void) {
	s16 curr;
	u8 i;
	s32 distanceX;
	s32 distanceY;
	s32 distanceZ;

	curr = D_80154276;
	if (curr == -5 || curr == -6) {
		func_800C1418_D03C8(0xA, 1);
		return;
	}

	while (curr != -5 && curr != -6) {
		Unk80154318Entry *entry = &D_80154318[curr];
		AnimatedFlareState *flare = &entry->animatedFlare;
		s16 temp_s1;

		if ((flare->flags & 1) == 1) {
			flare->age = flare->age - 1;
		} else {
			flare->age = flare->age + 1;
		}

		if (flare->age <= 0 || flare->age >= 0x19) {
			temp_s1 = entry->unk4;
			func_800C1A4C_D09FC(curr, 0xA, 1);
			curr = temp_s1;
			continue;
		}

		if (flare->age < 0x10) {

			for (i = 0; i < D_80158FD8; i++) {
				s16 radius = entry->unk2;
				VehicleInstance *vehicle = &vehicleInstances[D_80158E80[i]];
				s32 absRadius;
				s32 dx;
				s32 dy;
				s32 dz;
				s32 maxDist;

				absRadius = BH_ABS(radius);

				maxDist = vehicleTypes[vehicle->unk1A].unkC + absRadius + 0x64;

				dx = flare->position[0] - vehicle->unk0;
				if (-dx < dx) {
					distanceX = dx;
				} else {
					distanceX = -dx;
				}

				dy = flare->position[1] - vehicle->unk2;
				if (-dy < dy) {
					distanceY = dy;
				} else {
					distanceY = -dy;
				}

				dz = flare->position[2] - vehicle->unk4;
				if (-dz < dz) {
					distanceZ = dz;
				} else {
					distanceZ = -dz;
				}

				if (distanceX < maxDist && distanceY < maxDist && distanceZ < maxDist) {
					u32 distSq = (distanceX * distanceX) + (distanceY * distanceY) + (distanceZ * distanceZ);
					if ((s32)sqrtf((f32)distSq) < maxDist && entry->unk2 > 0 && !(vehicle->unk20 & VEHICLE_FLAG_AIRBORNE)) {
						func_80102DDC_111D8C(vehicle, func_80003824_4424((f32)-distanceX, (f32)-distanceZ), 0, 9.0f);
					}
				}
			}
		} else if (flare->age == 0x10 && !(flare->flags & 2)) {

			for (i = 0; i < D_8014ECCC; i++) {
				AlienInstance *alien = &alienInstances[D_8014D510[i]];
				s16 radius = entry->unk2;
				distanceX = flare->position[0] - alien->unk0;
				distanceY = flare->position[1] - alien->unk2;
				distanceZ = flare->position[2] - alien->unk4;

				if ((distanceX * distanceX) + (distanceY * distanceY) + (distanceZ * distanceZ) < (s32)(alienTypes[alien->typeIndex].unk8 + (radius * radius))) {
					func_80088760_97710(alien);
				}
			}
		}

		curr = D_80154318[curr].unk4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CF948_DE8F8.s")
#endif

#ifdef NON_MATCHING
void func_800CFD84_DED34(void) {
	s16 curr;
	AnimatedFlareState *flare;
	s16 radius;
	s16 texOffset;
	Unk80052B40 pos;
	Unk80052B40 rot;
	Unk80052B40 scale;

	curr = D_80154276;

	gDPPipeSync(D_8005BB2C++);
	gDPTileSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_PASS, G_RM_AA_ZB_XLU_SURF2);
	gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK | G_FOG | G_LIGHTING);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetTextureLOD(D_8005BB2C++, G_TL_TILE);
	gSPTexture(D_8005BB2C++, 0x1000, 0x1000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM2);

	if (curr != -6 && curr != -5) {
		do {
		flare = &D_80154318[curr].animatedFlare;

		if (flare->age >= 9) {

			if (flare->age < 20) {
				radius = D_80154318[curr].unk2;
				scale.unk0 = (f32)(radius >= 0 ? radius : -radius) * (1.6666666f * (f32)(flare->age - 5));
				scale.unk2 = (f32)(radius >= 0 ? radius : -radius) * (1.6666666f * (f32)(flare->age - 5));
				scale.unk4 = (f32)(radius >= 0 ? radius : -radius) * (1.6666666f * (f32)(flare->age - 5));
			} else {
				radius = D_80154318[curr].unk2;
				scale.unk0 = (f32)(radius >= 0 ? radius : -radius) * (25.0f + 2.5f * (f32)(20 - flare->age));
				scale.unk2 = (f32)(radius >= 0 ? radius : -radius) * (25.0f + 2.5f * (f32)(20 - flare->age));
				scale.unk4 = (f32)(radius >= 0 ? radius : -radius) * (25.0f + 2.5f * (f32)(20 - flare->age));
			}

			if (func_800B93AC_C835C(flare->position[0], flare->position[2], (u16)scale.unk0,
				(s16)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {

				if (flare->age < 20) {
					gDPSetPrimColor(D_8005BB2C++, 0, 0, flare->red, flare->green, flare->blue, (u32)((f32)(flare->age - 8) * 20.833334f));
				} else {
					gDPSetPrimColor(D_8005BB2C++, 0, 0, flare->red, flare->green, flare->blue, (u32)(250.0f + ((f32)(20 - flare->age) * 50.0f)));
				}

				rot.unk0 = flare->age << 10;
				rot.unk2 = 0;
				rot.unk4 = 0;
				pos.unk0 = flare->position[0];
				pos.unk2 = flare->position[1];
				pos.unk4 = flare->position[2];
				texOffset = (flare->age % 8) << 8;

				func_800039D0_45D0(&pos, &rot, &scale, D_8005BB38);

				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, &D_50327B0[texOffset]);
				gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
					G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
				gDPLoadSync(D_8005BB2C++);
				gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 127, 1024);
				gDPPipeSync(D_8005BB2C++);
				gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, G_TX_RENDERTILE, 0,
					G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
				gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (15 << 2), (15 << 2));
				gDPPipeSync(D_8005BB2C++);
				gDPTileSync(D_8005BB2C++);
				gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				gSPDisplayList(D_8005BB2C++, (Gfx *)&D_50332A0);
				gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

				D_80156EDA += 0x2F;
			}
		}

			curr = D_80154318[curr].unk4;
		} while (curr != -6 && curr != -5);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CFD84_DED34.s")
#endif

void func_800D05A8_DF558(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, u8 arg5, u8 arg6) {
	func_800D0614_DF5C4(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 1);
}

#ifdef NON_MATCHING
s16 func_800D0614_DF5C4(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, u8 arg5, u8 arg6, s32 arg7) {
	s16 spread;
	s32 distance;
	Unk80154318Entry *entry;
	SmokePuffState *sub;
	u8 burstCount;
	u8 i;
	Vec3f dir;
	s16 effectId;

	distance = arg3;
	if (func_800B93AC_C835C(arg0, arg2, (arg3 * 2) & 0xFFFF, (s16)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {
		effectId = func_800C17B4_D0764(7, 1);
		if (effectId != -3) {
			entry = &D_80154318[effectId];
			sub = &entry->smokePuff;
			func_801371B8_146168(sub, 0x188, arg0, arg1, arg2, D_80144018_152FC8[0]);

			entry->unk2 = distance;
			sub->position[0] = arg0;
			sub->position[1] = arg1;
			sub->position[2] = arg2;
			sub->color[0] = arg4;
			sub->color[1] = arg5;
			sub->color[2] = arg6;
			sub->opacity = 0xFF;
			sub->kind = 0;
			sub->childEffect = func_800DDB60_ECB10(arg0, arg1, arg2, 9, distance / 6);
			func_800DDE90_ECE40(sub->childEffect, (s8)(distance / 30), 0);

			if (D_80156ED8 == 1) {
				burstCount = 2;
			} else if (D_80156ED8 == 2) {
				burstCount = 0;
			} else {
				burstCount = (func_800038E0_44E0() % 3) + 3;
			}

			if (distance >= 1000) {
				func_80135D44_144CF4(arg0, arg1, arg2, 8.0f);
			} else if (distance >= 501) {
				func_80135D44_144CF4(arg0, arg1, arg2, 3.0f);
			} else if (distance >= 200) {
				func_80135D44_144CF4(arg0, arg1, arg2, 2.0f);
			}

			i = 0;
			if (arg7 == 1) {

		for (; i < (s32)burstCount; i++) {
			spread = ((func_800038E0_44E0() % distance) / 4) + distance / 2;

			dir.x = (f32)(func_800038E0_44E0() % 0xFE) + 1.0f;
			if ((func_800038E0_44E0() % 0xB) < 6) {
				dir.x = 0.0f - dir.x;
			}

			dir.y = (f32)(func_800038E0_44E0() % 0xFE) + 1.0f;
			if ((func_800038E0_44E0() % 0xB) < 6) {
				dir.y = 0.0f - dir.y;
			}

			dir.z = (f32)(func_800038E0_44E0() % 0xFE) + 1.0f;
			if ((func_800038E0_44E0() % 0xB) < 6) {
				dir.z = 0.0f - dir.z;
			}

			func_800C1024_CFFD4(&dir, &dir);
			func_800D16BC_E066C(arg0, arg1, arg2, arg0 + (s32)(dir.x * spread), arg1 + (s16)(s32)(dir.y * spread), arg2 + (s16)(s32)(dir.z * spread), (func_800038E0_44E0() % 6) + 6);
		}
			}
		}
		return effectId;
	}

	return -3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D0614_DF5C4.s")
#endif

void func_800D0C00_DFBB0(void) {
	s16 index = D_80154252;
	s32 soundAge = 8;
	s32 deleteAge = 15;

	if (index == -5 || index == -6) {
		func_800C1418_D03C8(7, 1);
		return;
	}

	while (index != -5 && index != -6) {
		Unk80154318Entry *entry = &D_80154318[index];
		SmokePuffState *puff = &entry->smokePuff;
		s32 age;
		s32 checkedAge;
		s16 nextIndex;
		s32 value;

		if (entry->smokePuff.kind & 0x80) {
			index = D_80154318[index].unk4;
			continue;
		}

		age = puff->kind;
		if (deleteAge == age) {
			nextIndex = entry->unk4;
			func_800C1A4C_D09FC(index, 7, 1);
			index = nextIndex;
			continue;
		}

		checkedAge = age;
		if (soundAge == checkedAge) {
			func_800DDE54_ECE04(puff->childEffect, 0x28);
			age = puff->kind;
			checkedAge = age;
		}

		if (checkedAge >= 6) {
			value = puff->opacity - 0x1E;
			if (value < 0) {
				puff->opacity = 0;
			} else {
				puff->opacity = value;
			}
		}

		puff->kind++;
		if (puff->kind >= 5) {
			value = puff->color[0] + 0xA;
			if (value >= 0x100) {
				puff->color[0] = 0xFF;
			} else {
				puff->color[0] = value;
			}

			value = puff->color[1] + 0xA;
			if (value >= 0x100) {
				puff->color[1] = 0xFF;
			} else {
				puff->color[1] = value;
			}

			value = puff->color[2] + 0xA;
			if (value >= 0x100) {
				puff->color[2] = 0xFF;
			} else {
				puff->color[2] = value;
			}
		}

		index = D_80154318[index].unk4;
	}
}

s16 func_800D0DE4_DFD94(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, u8 arg5, u8 arg6) {
	s32 sp3C;
	s32 sp38;
	s32 sp34;
	s32 sp30;
	s16 sp2E;
	u8 *sp24;

	if (func_800B93AC_C835C(arg0, arg2, (arg3 * 2) & 0xFFFF, (s16)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {
		sp2E = func_800C17B4_D0764(7, 1);
		if (sp2E != -3) {
			D_80154318[sp2E].unk2 = arg3;
			*(u8 *)&D_80154318[sp2E].unk12 = 0xFF;
			D_80154318[sp2E].unk11 = 0xFF;
			D_80154318[sp2E].unk8 = arg0;
			D_80154318[sp2E].unkA = arg1;
			D_80154318[sp2E].unkC = arg2;
			D_80154318[sp2E].unkE = arg4;
			D_80154318[sp2E].unkF = arg5;
			D_80154318[sp2E].unk10 = arg6;
			sp24 = (u8 *)&D_80154318[sp2E].unk8;
			sp24[0xB] = func_800DDB60_ECB10(arg0, arg1, arg2, 9, (s32)arg3 / 2);
			func_800DDE90_ECE40(sp24[0xB], 0, 0);
			func_800DDE54_ECE04(sp24[0xB], 0);
		}
		return sp2E;
	}
	return -3;
}

void func_800D0F5C_DFF0C(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	if (arg0 != -3) {
		Unk80154318Entry *entry = &D_80154318[arg0];
		entry->unk8 = arg1;
		entry->unkA = arg2;
		entry->unkC = arg3;
		func_800DDD30_ECCE0(*(u8 *)((u8 *)entry + 0x13), arg1, arg2, arg3);
	}
}

void func_800D0FE0_DFF90(s16 arg0, u16 arg1) {
	if (arg0 != -3) {
		D_80154318[arg0].unk2 = arg1;
		func_800DDDE4_ECD94(*(u8 *)((u8 *)&D_80154318[arg0] + 0x13), (arg1 / 2));
	}
}

void func_800D1054_E0004(s16 arg0) {
	Unk80154318Entry *entry;
	if (arg0 != -3) {
		entry = &D_80154318[arg0];
		func_800DDE90_ECE40(*(u8 *)((u8 *)entry + 0x13), -0x1E, 0);
		func_800DDE54_ECE04(*(u8 *)((u8 *)entry + 0x13), 0x28);
		func_800C1A4C_D09FC(arg0, 7, 1);
	}
}

#ifdef NON_MATCHING
void func_800D10D0_E0080(void) {
	Unk80052B40 spF0;
	Unk80052B40 spE8;
	Unk80052B40 spE0;
	s16 spD8[2];
	s8 spDC[3];
	f32 temp_f0;
	s16 var_v0;
	s16 var_s5;
	Unk80154318Entry *var_s3;
	SmokePuffState *var_s1;

	var_v0 = D_80154252;
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
	gSPClearGeometryMode(D_8005BB2C++, G_FOG);
	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetRenderMode(D_8005BB2C++, G_RM_PASS, G_RM_AA_ZB_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetTextureLOD(D_8005BB2C++, G_TL_TILE);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM2);

	while ((var_v0 != -6) && (var_v0 != -5)) {
			var_s3 = &D_80154318[var_v0];
			var_s1 = &var_s3->smokePuff;
			if (var_s3->smokePuff.kind < 3) {
				var_s5 = var_s3->unk2 * var_s1->kind;
				var_s5 /= 2;
			} else {
				var_s5 = var_s3->unk2;
			}

			spF0.unk0 = spF0.unk2 = spF0.unk4 = var_s5 * 6;

			if (func_800B93AC_C835C(var_s1->position[0], var_s1->position[2], spF0.unk0,
												(s16)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {
				spE0.unk0 = var_s1->position[0];
				spE0.unk2 = var_s1->position[1];
				spE0.unk4 = var_s1->position[2];

				temp_f0 = sqrtf(((D_80153BA0.x * 4.0f) - var_s1->position[0]) * ((D_80153BA0.x * 4.0f) - var_s1->position[0]) + ((D_80153BA0.z * 4.0f) - var_s1->position[2]) * ((D_80153BA0.z * 4.0f) - var_s1->position[2]));

				spE8.unk0 = func_80003824_4424(D_80153B90.z, D_80153B90.x) + 0x8000;
				spE8.unk2 = 0x8000;
				spE8.unk4 = 0x4000 - func_80003824_4424((D_80153BA0.y * 4.0f) - (f32)var_s1->position[1], temp_f0);

				gDPSetPrimColor(D_8005BB2C++, 0, 0, var_s1->color[0], var_s1->color[1], var_s1->color[2], var_s1->opacity);
				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100B2F0));
				gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
				gDPLoadSync(D_8005BB2C++);
				gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
				gDPPipeSync(D_8005BB2C++);
				gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
						   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
				gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
				gDPPipeSync(D_8005BB2C++);

				D_8005BB38++;
				func_800039D0_45D0(&spE0, &spE8, &spF0, D_8005BB38);
				gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				D_8005BB38++;
				gSPDisplayList(D_8005BB2C++, D_504B640);
				gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

				D_80156EDA += 0x15;
				spDC[0] = var_s1->color[0];
				spDC[1] = var_s1->color[1];
				spDC[2] = var_s1->color[2];
				spD8[0] = var_s1->position[0];
				spD8[1] = var_s1->position[2];
				func_800B2354_C1304(spD8, spDC, (s16)var_s5, 0x12C);
			}

			var_v0 = D_80154318[var_v0].unk4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D10D0_E0080.s")
#endif

// CURRENT(1310)
#ifdef NON_MATCHING
s32 func_800D16BC_E066C(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6) {
	u8 sp47;
	u32 magnitude;
	s16 temp_s2;
	s16 stepX;
	s16 stepY;
	s16 temp_s3;
	s16 temp_s4;
	s16 var_a1;
	s16 temp_v0_3;
	u8 var_s0;
	s32 var_s1;
	s32 var_v1;
	Unk80154318Entry *temp_v1;

	sp47 = func_800C1598_D0548(8);
	if (sp47 != 0xFB) {
		temp_s2 = arg3 - arg0;
		temp_s3 = arg4 - arg1;
		temp_s4 = arg5 - arg2;
		magnitude = (u32)(sqrtf((f32)((temp_s2 * temp_s2) + (temp_s3 * temp_s3) + (temp_s4 * temp_s4))) / 100.0f);
		var_v1 = (u8)magnitude;
		if (var_v1 < 2) {
			var_v1 = 2;
		}
		var_s1 = var_v1;
		if (var_v1 >= 0x10) {
			var_v1 = 0xF;
			var_s1 = 0xF;
		}
		stepX = temp_s2 / var_v1;
		stepY = temp_s3 / var_v1;
		var_a1 = temp_s4 / var_v1;
		
		for (var_s0 = 0; var_s0 <= var_s1; var_s0++) {
				temp_v0_3 = func_800C18D0_D0880(sp47);
				if (temp_v0_3 == -3) {
					osSyncPrintf(&D_80143770_152720);
					func_800C1418_D03C8(sp47, 0);
					func_800C1384_D0334(sp47);
					return 0xFB;
				}
				temp_v1 = &D_80154318[temp_v0_3];
				temp_v1->unkE = arg6;
				temp_v1->unkF = 1;
				temp_v1->unk8 = arg0 + (stepX * var_s0);
				temp_v1->unkA = arg1 + (stepY * var_s0);
				temp_v1->unkC = arg2 + (var_a1 * var_s0);
			}
	}

	return sp47;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D16BC_E066C.s")
#endif

void func_800D19DC_E098C(u8 arg0, u8 arg1) {
	s16 temp_v0 = D_80154088[arg0].unk6;
	*(&D_80154327 + (temp_v0 * 0x1C)) = arg1;
}

// Kill lightning effect?
void func_800D1A1C_E09CC(u8 arg0) {
	if (arg0 != 0xFB) {
		if (D_80154088[arg0].unk0 == 8) {
			func_800C1418_D03C8(arg0, 0);
			func_800C1384_D0334(arg0);
			return;
		}
	}
	osSyncPrintf(&D_801437C0_152770);
}

// CURRENT(3721)
// effect type 7
#ifdef NON_MATCHING
void func_800D1A94_E0A44(u8 arg0) {
	s32 lastIndex;
	RingVisualState *sp34;
	Vec2_S16 sp40;
	Vec2_S16 sp3C;
	EffectRgb sp38;
	s32 var_a1;
	Unk801541F8Entry *temp_t3;
	Unk80154318Entry *temp_v0;

	temp_t3 = &D_80154088[arg0];
	var_a1 = temp_t3->unk6;
	if (var_a1 == -5 || var_a1 == -6) {
		func_800C1418_D03C8(arg0, 0);
		func_800C1384_D0334(arg0);
		return;
	}

	lastIndex = -1;
	while (var_a1 != -5 && var_a1 != -6) {
			temp_v0 = &D_80154318[var_a1];
			sp34 = &temp_v0->ringVisual;
			if (temp_v0->unkE == lastIndex) {
				var_a1 = D_80154318[var_a1].unk4;
			} else {
				if (sp34->opacity == 0) {
					func_800C1418_D03C8(arg0, 0);
					func_800C1384_D0334(arg0);
					return;
				}
				sp34->opacity--;
				var_a1 = D_80154318[var_a1].unk4;
			}
	}

	var_a1 = temp_t3->unk6;
	lastIndex = temp_t3->unk8;
	sp38.b = 0xFF;
	sp38.g = 0xFF;
	sp38.r = 0xFF;
	temp_v0 = &D_80154318[var_a1];
	sp40.x = temp_v0->unk8;
	sp34 = (RingVisualState *)(s32)&temp_v0->ringVisual;
	sp40.z = sp34->position[2];
	temp_v0 = &D_80154318[lastIndex];
	sp3C.x = temp_v0->unk8;
	sp3C.z = temp_v0->unkC;
	func_800B1A68_C0A18(&sp40, &sp3C, &sp38);
	func_80137368_146318(sp34->position[0], sp34->position[1], sp34->position[2], 7, arg0);
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D1A94_E0A44.s")
#endif

// CURRENT(19171)
#ifdef NON_MATCHING
void func_800D1C24_E0BD4(u8 arg0) {
	f32 spF8;
	f32 spF4;
	f32 spF0;
	f32 spEC;
	f32 spE8;
	f32 spE4;
	u8 spBC;
	s32 spB8;
	Unk801541F8Entry *sp74;
	f32 temp_f0;
	f32 temp_f2;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f16;
	f32 temp_f18;
	f32 temp_f20;
	f32 temp_f22;
	f32 temp_f24;
	f32 temp_f30;
	u8 temp_v1;
	u8 var_fp;
	u8 var_s7;
	s32 var_s6;
	s16 var_s3;
	s16 temp_s4;
	Unk80154318Entry *entry;

	sp74 = &D_80154088[arg0 & 0xFF];
	var_s3 = sp74->unk6;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);

	temp_v1 = (u8)(func_800038E0_44E0() % 6);
	if (temp_v1 == 1) {
		spBC = 0xC8;
		var_s7 = 0xC8;
		var_fp = 0xFF;
	} else if (temp_v1 == 2) {
		spBC = 0xFF;
		var_s7 = 0xC8;
		var_fp = 0xC8;
	} else {
		var_s7 = 0xFF;
		var_fp = 0xFF;
		spBC = 0xFF;
	}

	if (((var_s6 = 0x800), (var_s3 != -5)) && (var_s3 != -6)) {
		spB8 = D_80154318[var_s3].unkF;
	}

	temp_f30 = spEC;
	temp_f24 = spF4;
	if (spB8--) {
		temp_f22 = spF8;
		temp_f18 = spE4;
		temp_f16 = spF0;
		temp_f14 = spE8;

		do {
			var_s3 = sp74->unk6;
			if ((var_s3 != -5) && (var_s3 != -6)) {
				temp_f20 = (f32)(((func_800038E0_44E0() % 5) * 4) + 0x14);
				if ((func_800038E0_44E0() % 11) < 6) {
					temp_f20 = -temp_f20;
				}

				entry = &D_80154318[var_s3];
				temp_f0 = (f32)entry->unk8;
				temp_f16 = temp_f0 + temp_f20;
				temp_f18 = temp_f0 - temp_f20;

				temp_f20 = (f32)(((func_800038E0_44E0() % 5) * 4) + 0x14);
				if ((func_800038E0_44E0() % 11) < 6) {
					temp_f20 = -temp_f20;
				}

				temp_f0 = (f32)entry->unkA;
				temp_f14 = temp_f0 - temp_f20;
				temp_f24 = temp_f0 + temp_f20;

				temp_f20 = (f32)(((func_800038E0_44E0() % 5) * 4) + 0x14);
				if ((func_800038E0_44E0() % 11) < 6) {
					temp_f20 = -temp_f20;
				}

				temp_f0 = (f32)entry->unkC;
				temp_f22 = temp_f0 + temp_f20;
				temp_f30 = temp_f0 - temp_f20;
			}

			if ((var_s3 != -5) && (var_s3 != -6)) {
				do {
					temp_s4 = D_80154318[var_s3].unk4;
					if (temp_s4 != -5) {
						gDPPipeSync(D_8005BB2C++);
						gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1,
							K0_TO_PHYS(&D_100B4F0[(func_800038E0_44E0() % 4) << 9]));
						gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
							G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
							G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
						gDPLoadSync(D_8005BB2C++);
						gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 0xFF, 0x400);
						gDPPipeSync(D_8005BB2C++);
						gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
							G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
							G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
						gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0,
							(31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
						gDPPipeSync(D_8005BB2C++);

						D_8005BB34->v.ob[0] = temp_f16;
						D_8005BB34->v.ob[1] = temp_f24;
						D_8005BB34->v.ob[2] = temp_f22;
						D_8005BB34->v.flag = 0;
						D_8005BB34->v.tc[0] = 0;
						D_8005BB34->v.tc[1] = 0;
						D_8005BB34->v.cn[0] = var_s7;
						D_8005BB34->v.cn[1] = var_fp;
						D_8005BB34->v.cn[2] = spBC;
						D_8005BB34->v.cn[3] = 0xFF;
						D_8005BB34++;

						D_8005BB34->v.ob[0] = temp_f18;
						D_8005BB34->v.ob[1] = temp_f14;
						D_8005BB34->v.ob[2] = temp_f30;
						D_8005BB34->v.flag = 0;
						D_8005BB34->v.tc[0] = 0;
						D_8005BB34->v.tc[1] = var_s6;
						D_8005BB34->v.cn[0] = var_s7;
						D_8005BB34->v.cn[1] = var_fp;
						D_8005BB34->v.cn[2] = spBC;
						D_8005BB34->v.cn[3] = 0xFF;
						D_8005BB34++;

						temp_f20 = (f32)(((func_800038E0_44E0() % 5) * 4) + 0x14);
						if ((func_800038E0_44E0() % 11) < 6) {
							temp_f20 = -temp_f20;
						}

						entry = &D_80154318[temp_s4];
						temp_f0 = (f32)entry->unk8;
						temp_f18 = temp_f0 + temp_f20;
						temp_f16 = temp_f0 - temp_f20;

						temp_f20 = (f32)(((func_800038E0_44E0() % 5) * 4) + 0x14);
						if ((func_800038E0_44E0() % 11) < 6) {
							temp_f20 = -temp_f20;
						}

						temp_f0 = (f32)entry->unkA;
						temp_f14 = temp_f0 + temp_f20;
						temp_f24 = temp_f0 - temp_f20;

						temp_f20 = (f32)(((func_800038E0_44E0() % 5) * 4) + 0x14);
						if ((func_800038E0_44E0() % 11) < 6) {
							temp_f20 = -temp_f20;
						}

						temp_f2 = (f32)entry->unkC;
						temp_f30 = temp_f2 + temp_f20;
						temp_f12 = temp_f2 - temp_f20;

						D_8005BB34->v.ob[0] = temp_f18;
						D_8005BB34->v.ob[1] = temp_f14;
						D_8005BB34->v.ob[2] = temp_f30;
						D_8005BB34->v.flag = 0;
						D_8005BB34->v.tc[0] = var_s6;
						D_8005BB34->v.tc[1] = var_s6;
						D_8005BB34->v.cn[0] = var_s7;
						D_8005BB34->v.cn[1] = var_fp;
						D_8005BB34->v.cn[2] = spBC;
						D_8005BB34->v.cn[3] = 0xFF;
						D_8005BB34++;

						D_8005BB34->v.ob[0] = temp_f16;
						D_8005BB34->v.ob[1] = temp_f24;
						D_8005BB34->v.ob[2] = temp_f12;
						D_8005BB34->v.flag = 0;
						D_8005BB34->v.tc[0] = var_s6;
						D_8005BB34->v.tc[1] = 0;
						D_8005BB34->v.cn[0] = var_s7;
						D_8005BB34->v.cn[1] = var_fp;
						D_8005BB34->v.cn[2] = spBC;
						D_8005BB34->v.cn[3] = 0xFF;
						D_8005BB34++;

						gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
						gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 2, 3, 1, 0);

						D_80156EDA += 4;

						temp_f22 = temp_f12;
					}

					var_s3 = temp_s4;
				} while ((temp_s4 != -5) && (temp_s4 != -6));
			}

		} while (spB8--);

		spEC = temp_f30;
		spF4 = temp_f24;
		spF8 = temp_f22;
		spE4 = temp_f18;
		spF0 = temp_f16;
		spE8 = temp_f14;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D1C24_E0BD4.s")
#endif

s16 func_800D249C_E144C(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, u8 arg7) {
	Unk80154318Entry *child;
	Unk80154318Entry *entry;
	s16 sp26;
	s16 child_idx;
	s8 *loop_base;
	s32 s0;

	sp26 = func_800C19D4_D0984(0xB, 1);
	if (sp26 != -3) {
		entry = &D_80154318[sp26];
		child_idx = entry->unk4;
		child = &D_80154318[child_idx];
		entry->unk2 = arg3;
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;
		entry->unkE = 0xF5;
		entry->unkF = 0;
		*(s16*)&entry->unk10 = arg6;
		*(u8*)&entry->unk12 = arg7;
		child->unk2 = 0;
		loop_base = (s8*)&child->unk8;
		child->unk8 = arg4;
		child->unkA = arg5;
		for (s0 = 0; s0 < 8; s0 = (s0 + 1) & 0xFF) {
			loop_base[s0 + 4] = (s8)(func_800038E0_44E0() % 16);
		}
	}
	return sp26;
}

void func_800D25A4_E1554(s16 arg0) {
	*(&D_80154327 + (arg0 * 0x1C)) = 1;
}

// CURRENT(6585)
#ifdef NON_MATCHING
void func_800D25D0_E1580(void) {
	s32 sp50;
	s16 var_s3;
	s16 temp_s5;
	s32 var_s7;
	s32 var_v1;
	s32 dx;
	s32 dz;
	s32 randomX;
	s32 randomZ;
	s32 temp_v0_4;
	s16 temp_v1;
	s16 temp_v1_2;
	s16 temp_v1_3;
	s16 temp_t0;
	u8 temp_v0;
	u8 temp_v0_3;
	u8 temp_t5;
	VehicleInstance *temp_s1;
	RingEmitterState *temp_s2;
	Unk80154318Entry *temp_s4;
	Unk80154318Entry *temp_s6;
	RingVisualState *temp_s0;
	RingEmitterState *temp_s2_2;

	var_s3 = D_80154282;
	if ((var_s3 == -5) || (var_s3 == -6)) {
		func_800C1418_D03C8(0xB, 1);
		return;
	}

	if (var_s3 != -5) {
		if (var_s3 == -6) {
			return;
		}
	} else {
		return;
	}

	var_s7 = sp50;
	do {
	temp_s4 = &D_80154318[var_s3];
	temp_s5 = temp_s4->unk4;
	temp_s0 = &temp_s4->ringVisual;
	if (temp_s4->unkF != 0) {
		temp_s1 = D_80052B34;
		dx = ((s32)temp_s1->unk0 - temp_s0->position[0]) >> 2;
		dz = ((s32)temp_s1->unk4 - temp_s0->position[2]) >> 2;
		temp_s2 = &D_80154318[temp_s5].ringEmitter;
		
		var_s7 = (dx * dx) + (dz * dz);
		if ((f64)var_s7 < ((f64)(temp_s2->width * temp_s2->width) / 12.0)) {
			func_80124118_1330C8(temp_s1, 0x14);
			temp_s1 = D_80052B34;
		}
		if ((D_8013FD78_14ED28 != temp_s1) && (D_8013FD78_14ED28->unk20 & 0x8000)) {
			dx = ((s32)D_8013FD78_14ED28->unk0 - temp_s0->position[0]) >> 2;
			dz = ((s32)D_8013FD78_14ED28->unk4 - temp_s0->position[2]) >> 2;
			
			var_s7 = (dx * dx) + (dz * dz);
			if ((f64)var_s7 < ((f64)(temp_s2->width * temp_s2->width) / 12.0)) {
				func_80124118_1330C8(D_8013FD78_14ED28, 0x14);
			}
		}
	}

	temp_v0 = (u8)temp_s0->opacity;
	temp_s6 = &D_80154318[temp_s5];
	temp_s2_2 = &temp_s6->ringEmitter;
	if ((s32)temp_v0 >= 3) {
		temp_s0->opacity = (u8)(temp_v0 - 3);
	}

	var_v1 = 0;
	do {
		temp_t5 = temp_s2_2->textureSlices[var_v1] + 1;
		temp_s2_2->textureSlices[var_v1] = temp_t5;
		if ((temp_t5 & 0xFF) >= 0x10) {
			temp_s2_2->textureSlices[var_v1] = 0;
		}
		var_v1 = (var_v1 + 1) & 0xFF;
	} while (var_v1 < 8);

	temp_v0_3 = temp_s0->paletteIndex;
	if (temp_v0_3 == 0) {
		func_80137368_146318(temp_s0->position[0], temp_s0->position[1], temp_s0->position[2], 2, var_s3);
	} else if ((temp_v0_3 == 1) && (var_s7 < 0x1E8480)) {
		func_801371B8_146168(temp_s0, 0x10, temp_s0->position[0], temp_s0->position[1], temp_s0->position[2], 0.5f);
		temp_v0_4 = D_80052A8C;
		if (!(temp_v0_4 & 3)) {
			func_801371B8_146168(0, 0xEB, temp_s0->position[0], temp_s0->position[1], temp_s0->position[2], D_8014401C_152FCC[0]);
		}
		if (!(D_80052A8C & 1)) {
			func_80135D44_144CF4(temp_s0->position[0], temp_s0->position[1], temp_s0->position[2], 3.0f);
		}
	}

	if (temp_s0->paletteIndex == 0) {
		temp_s6->unk2 = (s16)((s32)(temp_s4->unk2 * (0xFF - (u8)temp_s0->opacity)) / 255);
		randomX = func_800038E0_44E0() & 0xFFFF;
		randomZ = func_800038E0_44E0() & 0xFFFF;
		temp_v1_3 = temp_s6->ringEmitter.width;
		temp_t0 = temp_s2_2->height;
		func_800DDB60_ECB10((s16)(((randomX % (temp_v1_3 * 2)) + temp_s0->position[0]) - temp_v1_3),
						(s16)(((s16)temp_s6->unk2 / 2) + temp_s0->position[1]),
						(s16)(((randomZ % (temp_t0 * 2)) + temp_s0->position[2]) - temp_t0),
						0xB,
						(func_800038E0_44E0() % 15) + 0xF);
	} else {
		temp_s6->unk2 = temp_s4->unk2;
	}

		var_s3 = D_80154318[temp_s5].unk4;
	} while (var_s3 != -5 && var_s3 != -6);
	if (var_s3 == -6) {
		sp50 = var_s7;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D25D0_E1580.s")
#endif

// CURRENT(4753)
void func_800D2AB0_E1A60(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, u8 arg6, u8 arg7) {

	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_1007A70[arg6]));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK,
			   G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK,
		   G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);
	gDPPipeSync(D_8005BB2C++);

	D_8005BB34->v.ob[0] = (f32)arg0;
	D_8005BB34->v.ob[1] = (f32)arg5;
	D_8005BB34->v.ob[2] = (f32)arg2;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x80;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_8013E108_14D0B8.colors[arg7][0];
	D_8005BB34->v.cn[1] = D_8013E108_14D0B8.colors[arg7][1];
	D_8005BB34->v.cn[2] = D_8013E108_14D0B8.colors[arg7][2];
	D_8005BB34->v.cn[3] = D_8013E108_14D0B8.colors[arg7][3];

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (f32)arg1;
	D_8005BB34->v.ob[1] = (f32)arg5;
	D_8005BB34->v.ob[2] = (f32)arg3;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x780;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_8013E108_14D0B8.colors[arg7][0];
	D_8005BB34->v.cn[1] = D_8013E108_14D0B8.colors[arg7][1];
	D_8005BB34->v.cn[2] = D_8013E108_14D0B8.colors[arg7][2];
	D_8005BB34->v.cn[3] = D_8013E108_14D0B8.colors[arg7][3];

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (f32)arg1;
	D_8005BB34->v.ob[1] = (f32)arg4;
	D_8005BB34->v.ob[2] = (f32)arg3;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x780;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = D_8013E108_14D0B8.colors[arg7][4];
	D_8005BB34->v.cn[1] = D_8013E108_14D0B8.colors[arg7][5];
	D_8005BB34->v.cn[2] = D_8013E108_14D0B8.colors[arg7][6];
	D_8005BB34->v.cn[3] = D_8013E108_14D0B8.colors[arg7][7];

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (f32)arg0;
	D_8005BB34->v.ob[1] = (f32)arg4;
	D_8005BB34->v.ob[2] = (f32)arg2;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x80;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = D_8013E108_14D0B8.colors[arg7][4];
	D_8005BB34->v.cn[1] = D_8013E108_14D0B8.colors[arg7][5];
	D_8005BB34->v.cn[2] = D_8013E108_14D0B8.colors[arg7][6];
	D_8005BB34->v.cn[3] = D_8013E108_14D0B8.colors[arg7][7];

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
}


// CURRENT(30782)
#ifdef NON_MATCHING
void func_800D2ECC_E1E7C(void) {
	s16 screenPosition[2];
	s8 color[3];
	s16 var_v1;
	s32 temp_fp;
	s16 temp_t3;
	s16 temp_t3_2;
	u8 slice;
	s16 temp_t8;
	u8 (*palette)[8];
	RingVisualState *visual;
	RingEmitterState *ring;
	Unk80154318Entry *temp_s5;
	Unk80154318Entry *temp_s6;

	var_v1 = D_80154282;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);

	if ((var_v1 == -5) || (var_v1 == -6)) {
		return;
	}

	temp_fp = 0x1E;
	palette = D_8013E108_14D0B8.colors;
do {
	temp_s5 = &D_80154318[var_v1];
	temp_s6 = &D_80154318[temp_s5->unk4];
	if (func_800B93AC_C835C(temp_s5->unk8, temp_s5->unkC, (temp_s6->unk8 + temp_s6->unkA) & 0xFFFF, (s16)(s32)(D_80047954 * 4.0f),
						   (s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {
		slice = 0;
		ring = &temp_s6->ringEmitter;
		visual = &temp_s5->ringVisual;
		temp_t8 = ring->width / 2;
		func_800D2AB0_E1A60((s16)(visual->position[0] - temp_t8), (s16)(visual->position[0] + temp_t8), (s16)(visual->position[2] + ring->height),
					   (s16)(visual->position[2] + ring->height), visual->position[1], ring->height + visual->position[1], ring->textureSlices[slice], visual->paletteIndex);
		slice++;
		func_800D2AB0_E1A60((s16)(visual->position[0] + (ring->width / 2)), (s16)(visual->position[0] + ring->width),
					   (s16)(visual->position[2] + ring->height), (s16)(visual->position[2] + (ring->height / 2)), visual->position[1],
					   ring->height + visual->position[1], ring->textureSlices[slice], visual->paletteIndex);
		temp_t3 = ring->height / 2;
		slice++;
		func_800D2AB0_E1A60((s16)(visual->position[0] + ring->width), (s16)(visual->position[0] + ring->width), (s16)(visual->position[2] + temp_t3),
					   (s16)(visual->position[2] - temp_t3), visual->position[1], ring->height + visual->position[1], ring->textureSlices[slice],
					   visual->paletteIndex);
		slice++;
		func_800D2AB0_E1A60((s16)(visual->position[0] + ring->width), (s16)(visual->position[0] + (ring->width / 2)),
					   (s16)(visual->position[2] - (ring->height / 2)), (s16)(visual->position[2] - ring->height), visual->position[1],
					   ring->height + visual->position[1], ring->textureSlices[slice], visual->paletteIndex);
		temp_t8 = ring->width / 2;
		slice++;
		func_800D2AB0_E1A60((s16)(visual->position[0] + temp_t8), (s16)(visual->position[0] - temp_t8), (s16)(visual->position[2] - ring->height),
					   (s16)(visual->position[2] - ring->height), visual->position[1], ring->height + visual->position[1],
					   ring->textureSlices[slice], visual->paletteIndex);
		slice++;
		func_800D2AB0_E1A60((s16)(visual->position[0] - (ring->width / 2)), (s16)(visual->position[0] - ring->width),
					   (s16)(visual->position[2] - ring->height), (s16)(visual->position[2] - (ring->height / 2)), visual->position[1],
					   ring->height + visual->position[1], ring->textureSlices[slice], visual->paletteIndex);
		temp_t3_2 = ring->height / 2;
		slice++;
		func_800D2AB0_E1A60((s16)(visual->position[0] - ring->width), (s16)(visual->position[0] - ring->width), (s16)(visual->position[2] - temp_t3_2),
					   (s16)(visual->position[2] + temp_t3_2), visual->position[1], ring->height + visual->position[1],
					   ring->textureSlices[slice], visual->paletteIndex);
		slice++;
		func_800D2AB0_E1A60((s16)(visual->position[0] - ring->width), (s16)(visual->position[0] - (ring->width / 2)),
					   (s16)(visual->position[2] + (ring->height / 2)), (s16)(visual->position[2] + ring->height), visual->position[1],
					   ring->height + visual->position[1], ring->textureSlices[slice], visual->paletteIndex);
		color[0] = palette[visual->paletteIndex][0] - (func_800038E0_44E0() % temp_fp);
		color[1] = palette[visual->paletteIndex][1] - (func_800038E0_44E0() % temp_fp);
		color[2] = palette[visual->paletteIndex][2] - (func_800038E0_44E0() % temp_fp);
		screenPosition[0] = visual->position[0];
		screenPosition[1] = visual->position[2];
		func_800B2354_C1304(screenPosition, color, ring->width, 0x200);
	}
	var_v1 = temp_s6->unk4;
	} while (var_v1 != -5 && var_v1 != -6);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D2ECC_E1E7C.s")
#endif

void func_800D3614_E25C4(u8 arg0) {
	s16 index = D_80154282;

	if (index == -5 || index == -6) {
		return;
	}

	while (1) {
		if (*(s16*)&D_80154318[index].unk10 == arg0) {
			BuildingInstance *inst = &buildingInstances[arg0];
			u32 shifted;
			u32 value;

			func_800C1E24_D0DD4(index, 0xB, 1);
			value = inst->unk8;
			shifted = value >> 0xC;
			inst->unk8 = (((shifted & ~0x10) ^ shifted) << 0xC) ^ value;
			return;
		}

		index = D_80154318[index].unk4;
		index = D_80154318[index].unk4;
		if (index == -5 || index == -6) {
			return;
		}
	}
}

// CURRENT(12594)
#ifdef NON_MATCHING
void func_800D36EC_E269C(void) {
	s16 temp_s3;
	s16 var_v0;
	s32 temp_s1;
	s32 temp_s2;
	s32 temp_s4;
	s32 temp_s5;
	s32 temp_s7;
	u8 temp_v0;
	s32 temp_v1;
	s32 temp_fp;
	s32 lastRandom;
	Unk80052B40 *position;
	UnkFC8E8Entry *temp_s0_2;
	Unk80154318Entry *temp_s6;

	var_v0 = D_8015429A;
	temp_fp = 0x1E;
	if (D_80047F94 == 2) {
		if ((var_v0 == -5) || (var_v0 == -6)) {
			func_800C1418_D03C8(0xD, 1);
			return;
		}
		if ((var_v0 != -5) && (var_v0 != -6)) {
			do {
			temp_s6 = &D_80154318[var_v0];
			temp_s3 = temp_s6->unk2;
			if (func_800B93AC_C835C(temp_s6->unk8, temp_s6->unkC, temp_s3 & 0xFFFF, (s16) (s32) (D_80047954 * 4.0f),
									   (s32) (D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {
				if ((func_800038E0_44E0() % 20) < 4) {
					temp_s2 = func_800038E0_44E0() & 0xFFFF;
					temp_s1 = func_800038E0_44E0() & 0xFFFF;
					lastRandom = func_800038E0_44E0();
					position = &temp_s6->positionVector;
					temp_v1 = temp_s3 / 2;
					temp_v0 = func_800DDB60_ECB10((s16) (((temp_s2 % temp_s3) + temp_s6->unk8) - temp_v1), (s16) (position->unk2 + 0xA),
												  (s16) (((temp_s1 % temp_s3) + position->unk4) - temp_v1), 3,
												  ((s32) (lastRandom % temp_s3) / 4) + 0x28);
					if (temp_v0 != 0xFF) {
						temp_s0_2 = &D_80156EF0[temp_v0 & 0xFF];
						temp_s0_2->unk6 = (s8) ((func_800038E0_44E0() % temp_fp) + 0x50);
						temp_s0_2->unk7 = (s8) ((func_800038E0_44E0() % temp_fp) + 0x50);
						temp_s0_2->unk8 = (s8) ((func_800038E0_44E0() % temp_fp) + 0x50);
						temp_s0_2->unk11 = 4;
					}
				}
				if ((func_800038E0_44E0() % 60) < 5) {
					position = &temp_s6->positionVector;
					temp_s7 = func_800038E0_44E0() & 0xFFFF;
					temp_s4 = func_800038E0_44E0() & 0xFFFF;
					temp_s5 = func_800038E0_44E0() & 0xFFFF;
					temp_s2 = func_800038E0_44E0() & 0xFFFF;
					temp_s1 = func_800038E0_44E0() & 0xFFFF;
					lastRandom = func_800038E0_44E0();
					func_800CA5EC_D959C(temp_s6->unk8, (s16) (position->unk2 + 0xA), position->unk4, (s8) ((temp_s7 % 160) - 0x50),
										 (temp_s4 % 45) + 0x50, (temp_s5 % 160) - 0x50, (temp_s2 % temp_fp) + 0x32,
										 5, (temp_s1 % 12) + 8, (lastRandom % 50) + 0x28, 0xFF,
										 0x5A, 0x1E, 0xFA);
					if ((func_800038E0_44E0() % 20) < 0xF) {
						temp_s1 = func_800038E0_44E0() & 0xFFFF;
						lastRandom = func_800038E0_44E0();
						func_800C7924_D68D4(temp_s6->unk8, (s16) (position->unk2 + 0xA), position->unk4, (s16) ((temp_s1 % 20) + 0x14), -8,
										 (lastRandom % temp_s3) + temp_s3, (s32) &D_A003F40, 3);
					}
				}
			}
			var_v0 = temp_s6->unk4;
			} while (var_v0 != -5 && var_v0 != -6);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D36EC_E269C.s")
#endif

s16 func_800D3C88_E2C38(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5) {
	s32 dummy;
	s16 slot;

	slot = func_800C17B4_D0764(0xE, 1);
	if (slot != -3) {
		D_80154318[slot].unk2 = 6;
		D_80154318[slot].unk8 = arg0;
		D_80154318[slot].unkA = arg1;
		D_80154318[slot].unkC = arg2;
		D_80154318[slot].unk14 = 0;
		*(s16*)&D_80154318[slot].unkE = arg3;
		*(s16*)&D_80154318[slot].unk10 = arg4;
		D_80154318[slot].unk12 = arg5;
		func_800DDB60_ECB10(arg0, arg1, arg2, 0xD, 0x19);
	}
	return slot;
}

void func_800D3D40_E2CF0(void) {
	s16 var_s0;
	s16 temp_s1;
	u8 *p;

	var_s0 = D_801542A6;
	if (var_s0 == -5 || var_s0 == -6) {
		func_800C1418_D03C8(0xE, 1);
		return;
	}
	while (var_s0 != -5 && var_s0 != -6) {
		p = (u8 *)&D_80154318[var_s0].unk8;
		if (D_80154318[var_s0].unk14 == 9) {
			temp_s1 = D_80154318[var_s0].unk4;
			func_800C1A4C_D09FC(var_s0, 0xE, 1);
			var_s0 = temp_s1;
		} else {
			p[0xC] = (u8)(p[0xC] + 1);
			var_s0 = D_80154318[var_s0].unk4;
		}
	}
}

void func_800D3E3C_E2DEC(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, u8 arg6) {
	s32 temp;
	u8 c0;
	u8 c1;
	u8 c2;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPPipeSync(D_8005BB2C++);

	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1,
		K0_TO_PHYS(&D_100B4F0[(func_800038E0_44E0() % 4) << 9]));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
	gDPPipeSync(D_8005BB2C++);

	c0 = (func_800038E0_44E0() % 55) + 0xC8;
	c1 = (func_800038E0_44E0() % 55) + 0x32;
	c2 = (func_800038E0_44E0() % 55) + 0x82;

	temp = func_800038E0_44E0() % 15;
	temp += arg0;
	D_8005BB34->v.ob[0] = temp + 0x14;
	temp = func_800038E0_44E0() % 15;
	temp += arg1;
	D_8005BB34->v.ob[1] = temp + 0x14;
	temp = func_800038E0_44E0() % 15;
	temp += arg2;
	D_8005BB34->v.ob[2] = temp + 0x14;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = c0;
	D_8005BB34->v.cn[1] = c1;
	D_8005BB34->v.cn[2] = c2;
	D_8005BB34->v.cn[3] = arg6;

	D_8005BB34++;
	temp = func_800038E0_44E0() % 15;
	D_8005BB34->v.ob[0] = (arg0 - temp) - 0x14;
	temp = func_800038E0_44E0() % 15;
	D_8005BB34->v.ob[1] = (arg1 - temp) - 0x14;
	temp = func_800038E0_44E0() % 15;
	D_8005BB34->v.ob[2] = (arg2 - temp) - 0x14;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = c0;
	D_8005BB34->v.cn[1] = c1;
	D_8005BB34->v.cn[2] = c2;
	D_8005BB34->v.cn[3] = arg6;

	D_8005BB34++;
	temp = func_800038E0_44E0() % 15;
	temp += arg3;
	D_8005BB34->v.ob[0] = temp + 0x14;
	temp = func_800038E0_44E0() % 15;
	temp += arg4;
	D_8005BB34->v.ob[1] = temp + 0x14;
	temp = func_800038E0_44E0() % 15;
	temp += arg5;
	D_8005BB34->v.ob[2] = temp + 0x14;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x800;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = c0;
	D_8005BB34->v.cn[1] = c1;
	D_8005BB34->v.cn[2] = c2;
	D_8005BB34->v.cn[3] = arg6;

	D_8005BB34++;
	temp = func_800038E0_44E0() % 15;
	D_8005BB34->v.ob[0] = (arg3 - temp) - 0x14;
	temp = func_800038E0_44E0() % 15;
	D_8005BB34->v.ob[1] = (arg4 - temp) - 0x14;
	temp = func_800038E0_44E0() % 15;
	D_8005BB34->v.ob[2] = (arg5 - temp) - 0x14;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x800;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = c0;
	D_8005BB34->v.cn[1] = c1;
	D_8005BB34->v.cn[2] = c2;
	D_8005BB34->v.cn[3] = arg6;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(&D_8005BB34[-4]), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 2, 3, 1, 0);
}


// CURRENT(2425)
#ifdef NON_MATCHING
void func_800D45B4_E3564(void) {
	s16 index;

	index = D_801542A6;
	while (index != -5 && index != -6) {
		s16 dx;
		s16 dy;
		s16 dz;
		s16 quarterX;
		s16 quarterY;
		s16 quarterZ;
		s16 scaleX;
		s16 scaleZ;
		u8 alpha;
		s16 sinVal;
		s16 cosVal;
		s16 stepZ;
		s16 stepX;
		Unk80154318Entry *entry;
		EffectPositionPair *points;

		entry = &D_80154318[index];
		points = &entry->positionPair;

		dx = (s16)(entry->previousPosition[0] - entry->unk8);
		dy = (s16)(entry->previousPosition[1] - entry->unkA);
		dz = (s16)(entry->unk12 - entry->unkC);
		alpha = 0xFF;
		alpha -= entry->unk14 * 0x12;

		cosVal = coss(0x888);
		sinVal = sins(0x888);

		stepZ = (s16)(dz / 4);
		stepX = (s16)(dx / 4);

		scaleX = (s16)((((f32)sinVal / 32768.0) * stepZ) + (stepX * ((f32)cosVal / 32768.0)));
		cosVal = coss(0x888);
		sinVal = sins(0x888);
		scaleZ = (s16)((stepZ * ((f32)cosVal / 32768.0)) - (((f32)sinVal / 32768.0) * stepX));

		func_800D3E3C_E2DEC(points->position[0], points->position[1], points->position[2], points->previousPosition[0], points->previousPosition[1], points->previousPosition[2], alpha);

		quarterY = (s16)(dy / 4);
		func_800D3E3C_E2DEC(points->position[0], points->position[1], points->position[2], scaleX + points->position[0], quarterY + points->position[1], scaleZ + points->position[2], alpha);
		func_800D3E3C_E2DEC(points->previousPosition[0], points->previousPosition[1], points->previousPosition[2], scaleX + points->position[0], quarterY + points->position[1], scaleZ + points->position[2], alpha);

		cosVal = coss(0xF778);
		sinVal = sins(0xF778);
		scaleX = (s16)((((f32)sinVal / 32768.0) * stepZ) + (stepX * ((f32)cosVal / 32768.0)));
		cosVal = coss(0xF778);
		sinVal = sins(0xF778);
		scaleZ = (s16)((stepZ * ((f32)cosVal / 32768.0)) - (((f32)sinVal / 32768.0) * stepX));

		func_800D3E3C_E2DEC(points->position[0], points->position[1], points->position[2], scaleX + points->position[0], quarterY + points->position[1], scaleZ + points->position[2], alpha);
		func_800D3E3C_E2DEC(points->previousPosition[0], points->previousPosition[1], points->previousPosition[2], scaleX + points->position[0], quarterY + points->position[1], scaleZ + points->position[2], alpha);

		index = D_80154318[index].unk4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D45B4_E3564.s")
#endif

s16 func_800D49CC_E397C(s16 arg0, s16 arg1, s16 arg2) {
	s32 padStack;
	s16 slot;
	Unk80154318Entry *entry;

	slot = func_800C17B4_D0764(0xF, 1);
	if (slot != -3) {
		entry = &D_80154318[slot];
		entry->unk2 = 6;
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;
		*(s16 *)&entry->unkE = arg0;
		*(s16 *)&entry->unk10 = arg1;
		entry->unk12 = arg2;
		entry->unk14 = 0;
		func_800DDB60_ECB10(arg0, arg1, arg2, 0xD, 0x1E);
	}
	return slot;
}

void func_800D4A78_E3A28(s16 arg0) {
	if (arg0 != -3) {
		func_800C1A4C_D09FC(arg0, 0xF, 1);
	}
}

// Update ring weapon bullet?
void func_800D4AB0_E3A60(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	if (arg0 != -3) {
		Unk80154318Entry *entry = &D_80154318[arg0];
		if (entry->unk0 & 1) {
			*(s16*)&entry->unkE = arg1;
			*(s16*)&entry->unk10 = arg2;
			entry->unk12 = arg3;
			return;
		}
	}
	osSyncPrintf(&D_80143814_1527C4);
}

void func_800D4B44_E3AF4(void) {
	s16 index;

	index = D_801542B2;
	if (index == -5 || index == -6) {
		func_800C1418_D03C8(0xF, 1);
		return;
	}
	
	while (index != -5 && index != -6) {
		D_80154318[index].unk14++;
		func_80137368_146318(D_80154318[index].unk8, D_80154318[index].unkA, D_80154318[index].unkC, 0xC, index);
		index = D_80154318[index].unk4;
	}
}

// CURRENT(23749)
#ifdef NON_MATCHING
void func_800D4C10_E3BC0(void) {
	s16 index;
	f32 zeroF;
	f32 fortyF;
	f32 distance = 0.0f;
	u8 (*palette)[3];

	index = D_801542B2;
	zeroF = 0.0f;
	fortyF = 40.0f;
	palette = D_8013DFA8_14CF58;
	while (index != -5 && index != -6) {
		Unk80154318Entry *entry;
		Vec3f spFC;
		Vec3f spF0;
		Vec3f spE4;
		f32 len;
		f32 segLen;
		s16 cosVal;
		u32 texAddr;
		u8 steps;
		s16 radius;
		u8 i;
		s32 fadeStep;
		f32 x;
		f32 y;
		f32 z;
		f32 r;
		s16 yLo;
		u8 c0;
		u8 c1;
		u8 c2;
		u8 alpha;
		u8 mod;

		entry = &D_80154318[index];
		spFC.x = (f32)(entry->previousPosition[0] - entry->unk8);
		spFC.y = (f32)(entry->previousPosition[1] - entry->unkA);
		spFC.z = (f32)(entry->previousPosition[2] - entry->unkC);
		len = sqrtf((spFC.x * spFC.x) + (spFC.y * spFC.y) + (spFC.z * spFC.z));

		if (len == zeroF) {
			index = entry->unk4;
			continue;
		}

		texAddr = K0_TO_PHYS(D_100DC00);
		i = 0;
		cosVal = coss(0x4000);
		spE4.x = (f32)((((f32)sins(0x4000) / 32768.0) * spFC.z) +
			((spFC.x) * ((f32)cosVal / 32768.0)));
		spE4.y = zeroF;
		cosVal = coss(0x4000);
		spE4.z = (f32)(((spFC.z) * ((f32)cosVal / 32768.0)) -
			(((f32)sins(0x4000) / 32768.0) * spFC.x));

		func_800C1024_CFFD4(&spE4, &spE4);
		func_800C1024_CFFD4(&spFC, &spF0);
		func_800C1128_D00D8(fortyF, &spF0, &spF0);
		segLen = sqrtf((spF0.x * spF0.x) + (spF0.y * spF0.y) + (spF0.z * spF0.z));

		gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, texAddr);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
			G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
			G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
		gDPPipeSync(D_8005BB2C++);

		x = (f32)entry->previousPosition[0];
		y = (f32)entry->previousPosition[1];
		z = (f32)entry->previousPosition[2];

		steps = len / segLen;
		if (steps >= 0xA) {
			steps = 9;
		}

		radius = (s16)((steps * 8) + 0xA);
		if (steps > 0) {
			fadeStep = 0x96 / steps;
			for (; i < steps; i++) {
				x -= spF0.x;
				y -= spF0.y;
				z -= spF0.z;
				r = (f32)radius;

				mod = i % 3;
				c0 = palette[mod][0];
				c1 = palette[mod][1];
				c2 = palette[mod][2];
				alpha = (i * fadeStep) + 0x64;
				distance += segLen;

				D_8005BB34->v.ob[0] = (s16)(s32)((r * spE4.x) + x);
				yLo = (s16)(s32)(r + y);
				D_8005BB34->v.ob[1] = yLo;
				D_8005BB34->v.ob[2] = (s16)(s32)((r * spE4.z) + z);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = c0;
				D_8005BB34->v.cn[1] = c1;
				D_8005BB34->v.cn[2] = c2;
				D_8005BB34->v.cn[3] = alpha;
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)(s32)(x - (r * spE4.x));
				D_8005BB34->v.ob[1] = yLo;
				D_8005BB34->v.ob[2] = (s16)(s32)(z - (r * spE4.z));
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0x800;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = c0;
				D_8005BB34->v.cn[1] = c1;
				D_8005BB34->v.cn[2] = c2;
				D_8005BB34->v.cn[3] = alpha;
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)(s32)(x - (r * spE4.x));
				D_8005BB34->v.ob[1] = (s16)(s32)(y - r);
				D_8005BB34->v.ob[2] = (s16)(s32)(z - (r * spE4.z));
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0x800;
				D_8005BB34->v.tc[1] = 0x800;
				D_8005BB34->v.cn[0] = c0;
				D_8005BB34->v.cn[1] = c1;
				D_8005BB34->v.cn[2] = c2;
				D_8005BB34->v.cn[3] = alpha;
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)(s32)((r * spE4.x) + x);
				D_8005BB34->v.ob[1] = (s16)(s32)(y - r);
				D_8005BB34->v.ob[2] = (s16)(s32)((r * spE4.z) + z);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0x800;
				D_8005BB34->v.cn[0] = c0;
				D_8005BB34->v.cn[1] = c1;
				D_8005BB34->v.cn[2] = c2;
				D_8005BB34->v.cn[3] = alpha;
				D_8005BB34++;

				gSPVertex(D_8005BB2C++, K0_TO_PHYS(&D_8005BB34[-4]), 4, 0);
				gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 2, 3, 1, 0);

				radius -= 8;
				if (radius <= 0) {
					radius = 1;
				}
			}
		}

		index = entry->unk4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D4C10_E3BC0.s")
#endif

s16 func_800D5424_E43D4(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4, u8 arg5) {
	u8 *base;
	s32 pad;
	s16 sp2E;
	s16 sp2C;

	sp2E = func_800C19D4_D0984(0x10, 1);
	sp2C = D_80154318[sp2E].unk4;
	if (sp2E != -3) {
		D_80154318[sp2E].unk2 = 1;
		D_80154318[sp2E].spinnerMotion.step[0] = 2;
		D_80154318[sp2E].spinnerMotion.step[1] = 1;
		D_80154318[sp2E].spinnerMotion.step[2] = 2;
		D_80154318[sp2E].unk8 = arg0;
		D_80154318[sp2E].unkA = arg1;
		D_80154318[sp2E].unkC = arg2;
		base = (u8 *)(s32)D_80154318[sp2E].payload;
		base[9] = func_800D5FD4_E4F84(arg0, arg1, arg2, arg3, arg4, arg5);
		base[10] = func_800D5FD4_E4F84(arg0, arg1, arg2, arg3, arg4, arg5);
		base[11] = func_800D5FD4_E4F84(arg0, arg1, arg2, arg3, arg4, arg5);
		base = (u8 *)(s32)&D_80154318[sp2C].spinnerState;
		((SpinnerParentState *)base)->angle = 0;
		((SpinnerParentState *)base)->color[0] = arg3;
		((SpinnerParentState *)base)->color[1] = arg4;
		((SpinnerParentState *)base)->color[2] = arg5;
	}
	return sp2E;
}


void func_800D5588_E4538(s16 arg0) {
	if (arg0 != -3) {
		func_800C1E24_D0DD4(arg0, 0x10, 1);
	}
}

// Update triple spinner?
void func_800D55C0_E4570(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	Unk80154318Entry *entry;

	if (arg0 != -3) {
		entry = &D_80154318[arg0];
		if (entry->unk0 & 1) {
			entry->unkE = (u8)(arg1 - entry->unk8);
			entry->unkF = (u8)(arg2 - entry->unkA);
			entry->unk10 = (u8)(arg3 - entry->unkC);
			entry->unk8 = arg1;
			entry->unkA = arg2;
			entry->unkC = arg3;
			return;
		}
	}
	osSyncPrintf(&D_80143860_152810, arg1, arg2, arg3);
}

void func_800D5684_E4634(void) {
	s16 var_s1;

	var_s1 = D_801542BE;
	if (var_s1 == -5 || var_s1 == -6) {
		func_800C1418_D03C8(0x10, 1);
		return;
	}
	while (var_s1 != -5 && var_s1 != -6) {
		var_s1 = D_80154318[var_s1].unk4;
		D_80154318[var_s1].unk8 = (u16)D_80154318[var_s1].unk8 + 1;
		func_80137368_146318(D_80154318[var_s1].unk8, D_80154318[var_s1].unkA, D_80154318[var_s1].unkC, 0xB, var_s1);
		var_s1 = D_80154318[var_s1].unk4;
	}
}

#ifdef NON_MATCHING
// CURRENT(7940)
void func_800D5760_E4710(s16 arg0, u16 arg1, s16 arg2, s16 arg3, u8 arg4) {
	s16 z;
	s16 y;
	s16 x;
	s16 parent;
	u16 angle;
	f32 sine;
	f32 scaleCos;
	f32 scaleSin;
	u32 dist;
	SpinnerParentState *parentState;

	angle = (u16)((((arg2 + (arg4 * 0x78)) << 0x10) / 360) & 0xFFFF);
	parent = D_80154318[arg0].unk4;
	dist = (u32)arg1;
	scaleSin = (f32)(((f32)sins((u16)angle) / 32768.0) * dist);
	scaleCos = (f32)(((f32)coss((u16)angle) / 32768.0) * dist);
	x = ((f32)coss((u16)arg3) / 32768.0) * scaleSin;
	sine = (f32)sins((u16)arg3);
	x += D_80154318[arg0].unk8;
	y = (s32)scaleCos + D_80154318[arg0].unkA;
	z = (s32)((sine / 32768.0) * -scaleSin) + D_80154318[arg0].unkC;

	parentState = &D_80154318[parent].spinnerState;
	if (arg4 == 0) {
		func_800D6084_E5034(D_80154318[arg0].spinnerMotion.unit[0], x, y, z, parentState->color[0], parentState->color[1], parentState->color[2]);
	} else if (arg4 == 1) {
		func_800D6084_E5034(D_80154318[arg0].spinnerMotion.unit[1], x, y, z, parentState->color[0], parentState->color[1], parentState->color[2]);
	} else {
		func_800D6084_E5034(D_80154318[arg0].spinnerMotion.unit[2], x, y, z, parentState->color[0], parentState->color[1], parentState->color[2]);
	}

	if (D_80154318[arg0].unk4 == -5) {
		D_80153BC4 = &D_80153B80;
		D_80153BC8 = 55.0f;
		D_80153BCC = 0xFF;
		D_80153BB8.x = x;
		D_80153BB8.y = y;
		D_80153BB8.z = z;
		func_800DB350_EA300();
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D5760_E4710.s")
#endif

void func_800D5AF4_E4AA4(void) {
	s16 angle;
	s16 curr;
	s16 next;
	s16 parentIndex;
	u16 radius;
	s8 xStep;
	s8 yStep;
	SpinnerMotionState *state;
	Unk80154318Entry *entry;
	Unk80154318Entry *parent;

	D_80153BCD = 0x20;
	D_80153BCE = 0x20;
	D_80153BC4 = &D_80153B80;
	D_80153BC8 = 55.0f;
	D_80153BCC = 0xFF;
	curr = D_801542BE;

	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1,
		K0_TO_PHYS((((func_800038E0_44E0() % 8) << 9) + (u32) &D_100C700)));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));

	while (curr != -5 && curr != -6) {
		entry = &D_80154318[curr];
		state = &entry->spinnerMotion;
		parentIndex = entry->unk4;
		parent = &D_80154318[parentIndex];

		radius = parent->spinnerState.age;
		radius <<= 2;
		if (radius >= 0x29) {
			radius = 0x28;
		}

		angle = (s16)(((u16)parent->unk8 * 15) % 360);
		xStep = state->step[0];
		if (xStep > 0) {
			yStep = state->step[2];
			if (yStep > 0) {
				next = (s16)(0x10000 - func_80003740_4340((f32)(xStep / yStep)));
			} else if (yStep < 0) {
				next = (s16)(func_80003740_4340((f32)(xStep / yStep)) + 0x8000);
			} else {
				next = -0x4000;
			}
		} else if (xStep < 0) {
			yStep = state->step[2];
			if (yStep > 0) {
				next = func_80003740_4340((f32)(xStep / yStep));
			} else if (yStep < 0) {
				next = (s16)(0x8000 - func_80003740_4340((f32)(xStep / yStep)));
			} else {
				next = 0x4000;
			}
		} else {
			yStep = state->step[2];
			if (yStep > 0) {
				next = 0;
			} else if (yStep < 0) {
				next = -0x8000;
			} else {
				osSyncPrintf(D_801438A8_152858);
				return;
			}
		}

		if (gameplayMode == 1) {
			func_800D5760_E4710(curr, radius, angle, next, 0);
			func_800D5760_E4710(curr, radius, angle, next, 1);
			func_800D5760_E4710(curr, radius, angle, next, 2);
		}

		curr = parent->unk4;
	}
}


u8 func_800D5FD4_E4F84(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4, u8 arg5) {
	u8 slot;

	slot = func_800C14D4_D0484(6);
	if (slot != 0xFB) {
		func_800D6084_E5034(slot, arg0, arg1, arg2, arg3, arg4, arg5);
		func_800D6084_E5034(slot, arg0 + 2, arg1, arg2 + 2, arg3, arg4, arg5);
	}
	return slot;
}

void func_800D6084_E5034(u8 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4, u8 arg5, u8 arg6) {
	s16 temp_v0;
	Unk80154318Entry *temp_v1;

	if (arg0 < 0x1E && D_80154088[arg0].unk0 == 6) {
		temp_v0 = func_800C17B4_D0764(arg0, 0);
		if (temp_v0 != -3) {
			temp_v1 = &D_80154318[temp_v0];
			temp_v1->unk8 = arg1;
			temp_v1->unkA = arg2;
			temp_v1->unkC = arg3;
			temp_v1->unkE = arg4;
			temp_v1->unkF = arg5;
			temp_v1->unk10 = arg6;
			temp_v1->unk11 = 0xC8;
		}
	}
}

// effect type 8
void func_800D6140_E50F0(u8 arg0) {
	Unk801541F8Entry *sfx = &D_80154088[arg0];
	s16 next = sfx->unk6;
	Unk80154318Entry *entry;

	if (next == -5 || next == -6) {
		func_800C1418_D03C8(arg0, 0);
		func_800C1384_D0334(arg0);
		return;
	}
	while (next != -5 && next != -6) {
		entry = &D_80154318[next];
		entry->unkE -= 3;
		entry->unkF -= 2;
		entry->unk10 -= 5;
		entry->unk11 -= 0xC;
		if ((u8)entry->unk11 < 0x14) {
			func_800C1A4C_D09FC(next, arg0, 0);
			if (sfx->unk4 < 2) {
				func_800C1418_D03C8(arg0, 0);
				func_800C1384_D0334(arg0);
				return;
			}
		}
		next = entry->unk4;
	}
}

// CURRENT(32643)
#ifdef NON_MATCHING
void func_800D6290_E5240(u8 arg0) {
	s16 index;
	s16 nextIndex;
	s16 deltaZ;
	s16 deltaX;
	Unk80154318Entry *entry;
	Unk80154318Entry *nextEntry;
	TrailParticleState *state;
	TrailParticleState *nextState;

	index = D_80154088[arg0].unk6;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100BD00));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));

	entry = &D_80154318[index];
	nextIndex = entry->unk4;
	nextEntry = &D_80154318[nextIndex];
	if (nextEntry->unk8 < entry->unk8) {
		deltaZ = 0xF;
		if (nextEntry->unkC < entry->unkC) {
			deltaX = -0xF;
		} else {
			deltaX = 0xF;
		}
	} else {
		deltaZ = -0xF;
		deltaX = 0xF;
		if (nextEntry->unkC < entry->unkC) {
			deltaX = -0xF;
		} else {
			deltaX = 0xF;
		}
	}

	if ((index != -5) && (index != -6)) {
		do {
			entry = &D_80154318[index];
			state = &entry->trailParticle;
			nextIndex = entry->unk4;
			if (nextIndex != -5) {
				nextEntry = &D_80154318[nextIndex];
				nextState = &nextEntry->trailParticle;

				D_8005BB34->v.ob[0] = state->position[0];
				D_8005BB34->v.ob[1] = state->position[1] + (func_800038E0_44E0() % 5) + 0xF;
				D_8005BB34->v.ob[2] = state->position[2];
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = state->color[0];
				D_8005BB34->v.cn[1] = state->color[1];
				D_8005BB34->v.cn[2] = state->color[2];
				D_8005BB34->v.cn[3] = state->opacity;

				D_8005BB34++;
				D_8005BB34->v.ob[0] = state->position[0];
				D_8005BB34->v.ob[1] = state->position[1] - (func_800038E0_44E0() % 5) - 0xF;
				D_8005BB34->v.ob[2] = state->position[2];
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0x800;
				D_8005BB34->v.cn[0] = state->color[0];
				D_8005BB34->v.cn[1] = state->color[1];
				D_8005BB34->v.cn[2] = state->color[2];
				D_8005BB34->v.cn[3] = state->opacity;

				D_8005BB34++;
				D_8005BB34->v.ob[0] = nextState->position[0];
				D_8005BB34->v.ob[1] = nextState->position[1] - (func_800038E0_44E0() % 5) - 0xF;
				D_8005BB34->v.ob[2] = nextState->position[2];
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0x800;
				D_8005BB34->v.tc[1] = 0x800;
				D_8005BB34->v.cn[0] = nextState->color[0];
				D_8005BB34->v.cn[1] = nextState->color[1];
				D_8005BB34->v.cn[2] = nextState->color[2];
				D_8005BB34->v.cn[3] = nextState->opacity;

				D_8005BB34++;
				D_8005BB34->v.ob[0] = nextState->position[0];
				D_8005BB34->v.ob[1] = nextState->position[1] + (func_800038E0_44E0() % 5) + 0xF;
				D_8005BB34->v.ob[2] = nextState->position[2];
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0x800;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = nextState->color[0];
				D_8005BB34->v.cn[1] = nextState->color[1];
				D_8005BB34->v.cn[2] = nextState->color[2];
				D_8005BB34->v.cn[3] = nextState->opacity;

				D_8005BB34++;
				D_8005BB34->v.ob[0] = state->position[0] + deltaX;
				D_8005BB34->v.ob[1] = state->position[1];
				D_8005BB34->v.ob[2] = state->position[2] + deltaZ;
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = state->color[0];
				D_8005BB34->v.cn[1] = state->color[1];
				D_8005BB34->v.cn[2] = state->color[2];
				D_8005BB34->v.cn[3] = state->opacity;

				D_8005BB34++;
				D_8005BB34->v.ob[0] = state->position[0] - deltaX;
				D_8005BB34->v.ob[1] = state->position[1];
				D_8005BB34->v.ob[2] = state->position[2] - deltaZ;
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0x800;
				D_8005BB34->v.cn[0] = state->color[0];
				D_8005BB34->v.cn[1] = state->color[1];
				D_8005BB34->v.cn[2] = state->color[2];
				D_8005BB34->v.cn[3] = state->opacity;

				D_8005BB34++;
				D_8005BB34->v.ob[0] = nextState->position[0] - deltaX;
				D_8005BB34->v.ob[1] = nextState->position[1];
				D_8005BB34->v.ob[2] = nextState->position[2] - deltaZ;
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0x800;
				D_8005BB34->v.tc[1] = 0x800;
				D_8005BB34->v.cn[0] = nextState->color[0];
				D_8005BB34->v.cn[1] = nextState->color[1];
				D_8005BB34->v.cn[2] = nextState->color[2];
				D_8005BB34->v.cn[3] = nextState->opacity;

				D_8005BB34++;
				D_8005BB34->v.ob[0] = nextState->position[0] + deltaX;
				D_8005BB34->v.ob[1] = nextState->position[1];
				D_8005BB34->v.ob[2] = nextState->position[2] + deltaZ;
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0x800;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = nextState->color[0];
				D_8005BB34->v.cn[1] = nextState->color[1];
				D_8005BB34->v.cn[2] = nextState->color[2];
				D_8005BB34->v.cn[3] = nextState->opacity;

				D_8005BB34++;
				gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 8), 8, 0);
				gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
				gSP2Triangles(D_8005BB2C++, 7, 4, 5, 0, 7, 5, 6, 0);
				D_80156EDA += 8;
			}

			index = nextIndex;
		} while ((index != -5) && (index != -6));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D6290_E5240.s")
#endif


void func_800D6A84_E5A34(u8 arg0)
{
	D_80153AE0[arg0].unk13 = 0;
	D_80153AE0[arg0].unk14 = 0;
	D_80153AE0[arg0].unk18 = ((s32 *)(&D_8013E2F4_14D2A4))[arg0];
	D_80153AE0[arg0].unk12 = ((u8 *)(&D_8013E2EC_14D29C))[arg0];
	D_80153AE0[arg0].unk1C = ((s32 *)(&D_8013E308_14D2B8))[arg0];
}

// Create nuke?
void func_800D6ADC_E5A8C(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	u8 temp_a0;
	s16 temp_v0_2;
	Unk80154318Entry *entry;

	if (D_80153AB0 == 1) {
		osSyncPrintf(&D_801438DC_15288C);
		return;
	}
	temp_a0 = func_800C14D4_D0484(7);
	if (temp_a0 == 0xFB) {
		return;
	}
	temp_v0_2 = func_800C17B4_D0764(temp_a0, 0);
	if (temp_v0_2 == -3) {
		func_800C1384_D0334(temp_a0);
		return;
	}
	D_80153AB0 = 1;
	entry = &D_80154318[temp_v0_2];
	entry->unkE = 0;
	entry->unk2 = arg3;
	entry->unk8 = arg0;
	entry->unkA = arg1;
	entry->unkC = arg2;
	func_800D6A84_E5A34(0);
	func_800D6A84_E5A34(1);
	func_800D6A84_E5A34(2);
	func_800D6A84_E5A34(3);
	func_800D6A84_E5A34(4);
	func_80014A3C_1563C(0, 0xE8, 0.0f, 0, D_80144020_152FD0[0]);
	func_80135D08_144CB8(3.0f, 1, 0x3C, 1);
}

void func_800D6C18_E5BC8(s16 arg0, u8 arg1) {
	Unk80153AE0Entry *entry;
	NukeKeyframe *data;
	s32 phase;
	s32 currentPhase;

	(void)arg0;
	entry = &D_80153AE0[arg1];
	phase = entry->unk13;
	currentPhase = phase;
	if (phase == 0) {
		data = entry->keyframe;
		entry->unk0 = data->position[0];
		entry->unk2 = data->position[1];
		entry->unk4 = data->position[2];
		entry->unk6 = 0;
		entry->unk8 = 0;
		entry->unkA = 0;
		entry->unkC = data->scale[0];
		entry->scaleY = data->scale[1];
		entry->unk10 = data->scale[2];
		entry->unk13 = phase + 1;
		entry->unk14 = 0;
		entry->keyframe = &data[1];
		return;
	}

	data = entry->keyframe;
	if (data->duration == entry->unk14) {
		entry->unk13 = phase + 1;
		entry->unk14 = 0;
		entry->keyframe = &data[1];
		currentPhase = entry->unk13;
	}

	if (currentPhase < entry->unk12) {
		data = entry->keyframe;
		entry->unk0 += data->position[0] / data->duration;
		entry->unk2 += data->position[1] / data->duration;
		entry->unk4 += data->position[2] / data->duration;
		entry->angle += data->angle / data->duration;
		entry->unkC += data->scale[0] / data->duration;
		entry->scaleY += data->scale[1] / data->duration;
		entry->unk10 += data->scale[2] / data->duration;
		entry->unk14++;
	}
}

// effect type 9
void func_800D6EAC_E5E5C(u8 arg0) {
	s16 next;
	s16 *entryData;
	Unk80154318Entry *entry;

	next = D_80154088[arg0].unk6;
	if (next == -5 || next == -6) {
		func_800C1418_D03C8(arg0, 0);
		func_800C1384_D0334(arg0);
		return;
	}

	entry = &D_80154318[next];
	entryData = &entry->unk8;
	if (((u8 *) entryData)[6] == 0x37) {
		func_800C1A4C_D09FC(next, arg0, 0);
		func_800C1384_D0334(arg0);
		D_80153AB0 = 0;
		return;
	}

	((u8 *) entryData)[6]++;
	func_800D6C18_E5BC8(next, 0);
	func_800D6C18_E5BC8(next, 1);
	func_800D6C18_E5BC8(next, 2);
	func_800D6C18_E5BC8(next, 3);
	func_800D6C18_E5BC8(next, 4);
	if (!(D_80052A8C & 1)) {
		func_80135D08_144CB8(10.0f, 1, 1, 1);
		func_80014A3C_1563C(0, 0xEB, 0.0f, 0, D_80144024_152FD4[0]);
	}
}

#ifdef NON_MATCHING
void func_800D702C_E5FDC(s16 arg0, s32 arg1) {
	struct { Unk80052B40 scale; s16 pad5A; Unk80052B40 rotation; s16 pad62; Unk80052B40 position; } transform;
	Unk80153AE0Entry *sp24;
	s16 temp_v0;
	s32 temp_t8;
	s32 var_a1;
	Unk80153AE0Entry *temp_t1;
	Unk80052B40 *modelScale;
	Unk80154318Entry *temp_v1;

	arg1 = (u8)arg1;
	temp_t8 = arg1;
	temp_t1 = &D_80153AE0[temp_t8];
	temp_v1 = &D_80154318[arg0];
	modelScale = &temp_t1->modelScale;
	temp_v0 = temp_v1->unk2;
	transform.scale.unk0 = modelScale->unk0 * temp_v0;
	transform.rotation.unk0 = temp_t1->angle;
	transform.rotation.unk2 = 0;
	transform.rotation.unk4 = 0;
	transform.scale.unk2 = modelScale->unk2 * temp_v0;
	transform.scale.unk4 = modelScale->unk4 * temp_v0;
	transform.position.unk0 = (temp_v0 * temp_t1->unk0) + temp_v1->unk8;
	transform.position.unk2 = (temp_v0 * temp_t1->unk2) + temp_v1->unkA;
	transform.position.unk4 = (temp_v0 * temp_t1->unk4) + temp_v1->unkC;
	if ((temp_t8 == 3) || (temp_t8 == 4)) {
		temp_v0 = temp_v1->unkE;
		if (temp_v0 < 0xE) {
			var_a1 = 0xFF;
		} else if (temp_v0 >= 0x15) {
			var_a1 = 0;
		} else {
			var_a1 = (0x2F4 - (temp_v0 * 0x24)) & 0xFF;
		}
	} else {
		temp_v0 = temp_v1->unkE;
		if (temp_v0 < 0x28) {
			var_a1 = 0xFF;
		} else {
			var_a1 = ((-temp_v0 * 0x11) + 0x3A7) & 0xFF;
		}
	}
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0xFF, 0xFF, var_a1);
	gDPPipeSync(D_8005BB2C++);
	sp24 = temp_t1;
	func_800039D0_45D0(&transform.position, &transform.rotation, &transform.scale, D_8005BB38);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	gSPDisplayList(D_8005BB2C++, sp24->unk1C);
	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D702C_E5FDC.s")
#endif

// CURRENT(2279)
#ifdef NON_MATCHING
void func_800D7284_E6234(u8 arg0) {
	struct {
		s16 position[2];
		u8 color[3];
		f32 z;
		s16 index;
	} vars;
	Unk80154318Entry *sp2C;
	f32 x;
	f32 y;
	f32 temp_f0;
	f32 temp_f14;
	f32 temp_f2;
	s32 temp_a0;
	s32 var_v0;
	u8 temp_v0_13;
	u8 temp_v0_14;
	SpurtVisualState *var_v1;

	vars.index = D_80154088[arg0].unk6;
	sp2C = &D_80154318[vars.index];
	if (func_800B93AC_C835C(sp2C->unk8, sp2C->unkC, (u16) sp2C->unk2, (s16) (D_80047954 * 4.0f), (s32) (D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {
		gDPPipeSync(D_8005BB2C++);
		gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100B0F0));
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);
		gDPPipeSync(D_8005BB2C++);
		func_800D702C_E5FDC(vars.index, 0);
		func_800D702C_E5FDC(vars.index, 1);
		func_800D702C_E5FDC(vars.index, 2);
		func_800D702C_E5FDC(vars.index, 3);
		func_800D702C_E5FDC(vars.index, 4);
		vars.position[0] = sp2C->unk8;
		vars.position[1] = sp2C->unkC;
		vars.color[0] = 0xFF;
		vars.color[1] = 0xFF;
		vars.color[2] = 0xFF;
		temp_v0_13 = sp2C->unkE;
		var_v1 = &sp2C->spurtVisual;
		if (temp_v0_13 < 4) {
			func_800B2354_C1304(&vars.position[0], &vars.color[0], 0x200, (s16) ((temp_v0_13 << 9) + 0x200));
		} else if (temp_v0_13 < 9) {
			func_800B2354_C1304(&vars.position[0], &vars.color[0], 0x100, (s16) (0x1300 - (temp_v0_13 << 9)));
		}
		x = var_v1->position[0];
		y = var_v1->position[1];
		vars.z = var_v1->position[2];
		temp_f0 = x - (D_80153BA0.x * 4.0f);
		temp_f2 = y - (D_80153BA0.y * 4.0f);
		temp_f14 = vars.z - (D_80153BA0.z * 4.0f);
		sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f14 * temp_f14));
		temp_v0_14 = var_v1->color[0];
		if (temp_v0_14 < 0x51) {
			temp_a0 = 0xFF - (temp_v0_14 * 2);
			var_v0 = temp_a0;
			if (temp_a0 < 0) {
				var_v0 = 0;
			}
			func_800E35E0_F2590(var_v0 & 0xFF);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D7284_E6234.s")
#endif


s16 func_800D7624_E65D4(s16 arg0, s16 arg1, s16 arg2) {
	s16 temp_v0;
	Unk80154318Entry *entry;

	temp_v0 = func_800C17B4_D0764(0x11, 1);
	if (temp_v0 != -3) {
		entry = &D_80154318[temp_v0];
		entry->unk2 = 0x14;
		((u8 *)entry)[0x0E] = 0;
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;
	}
	return temp_v0;
}

// Kill mini photon effect?
void func_800D76A8_E6658(s16 arg0) {
	if (arg0 == -3) {
		osSyncPrintf(&D_8014390C_1528BC);
		return;
	}
	func_800C1A4C_D09FC(arg0, 0x11, 1);
}

// Update mini photon effect?
void func_800D76F4_E66A4(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	u8 *temp_v1;
	s16 *temp_v0;

	if ((arg3 == -3) || (temp_v1 = (u8 *)&D_80154318[arg3], temp_v0 = (s16 *)(temp_v1 + 8), ((*temp_v1 & 1) == 0))) {
		osSyncPrintf(&D_80143958_152908, arg1, arg2);
		return;
	}
	temp_v0[0] = arg0;
	temp_v0[1] = arg1;
	temp_v0[2] = arg2;
}

void func_800D7790_E6740(void) {
	s16 var_s1;
	s16 *temp_v0;

	var_s1 = D_801542CA;
	if (var_s1 == -5 || var_s1 == -6) {
		func_800C1418_D03C8(0x11, 1);
		return;
	}
	while (var_s1 != -5 && var_s1 != -6) {
		D_80154318[var_s1].unkE++;
		temp_v0 = (s16 *)((u8 *)&D_80154318[var_s1] + 8);
		if (D_80154318[var_s1].unkE >= 4) {
			D_80154318[var_s1].unkE = 0;
		}
		func_80137368_146318(temp_v0[0], temp_v0[1], temp_v0[2], 9, var_s1);
		var_s1 = D_80154318[var_s1].unk4;
	}
}

// CURRENT(510)
#ifdef NON_MATCHING
void func_800D7870_E6820(void) {
	s16 idx;
	Unk80154318Entry *entry;
	Unk80052B40 *sub;
	f32 off0;
	f32 scale;
	f32 off1;
	f32 off2;
	f32 off3;
	f32 off4;
	f32 off5;

	idx = D_801542CA;
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);

	if ((idx == -5) || (idx == -6)) {
		return;
	}

	do {
		gDPPipeSync(D_8005BB2C++);
		entry = &D_80154318[idx];

		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100AEF0 + (entry->unkE << 7)));
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0x0000, G_TX_RENDERTILE, 0,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 15 << G_TEXTURE_IMAGE_FRAC, 15 << G_TEXTURE_IMAGE_FRAC);
		gDPPipeSync(D_8005BB2C++);

		sub = &entry->positionVector;
		scale = (f32)entry->unk2;
		off0 = scale * D_80153AB8.x;
		off1 = scale * D_80153AB8.y;
		off2 = scale * D_80153AB8.z;
		off3 = scale * D_80153AB8.rightX;
		off4 = scale * D_80153AB8.rightY;
		off5 = scale * D_80153AB8.rightZ;

		D_8005BB34->v.ob[0] = ((f32)sub->unk0 + off0);
		D_8005BB34->v.ob[1] = ((f32)sub->unk2 + off1);
		D_8005BB34->v.ob[2] = ((f32)sub->unk4 + off2);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = 0xFF;
		D_8005BB34->v.cn[1] = 0x9E;
		D_8005BB34->v.cn[2] = 0x16;
		D_8005BB34->v.cn[3] = 0xFF;

		D_8005BB34++;
		D_8005BB34->v.ob[0] = ((f32)sub->unk0 + off3);
		D_8005BB34->v.ob[1] = ((f32)sub->unk2 + off4);
		D_8005BB34->v.ob[2] = ((f32)sub->unk4 + off5);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x400;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = 0xFF;
		D_8005BB34->v.cn[1] = 0x9E;
		D_8005BB34->v.cn[2] = 0x16;
		D_8005BB34->v.cn[3] = 0xFF;

		D_8005BB34++;
		D_8005BB34->v.ob[0] = ((f32)sub->unk0 - off0);
		D_8005BB34->v.ob[1] = ((f32)sub->unk2 - off1);
		D_8005BB34->v.ob[2] = ((f32)sub->unk4 - off2);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x400;
		D_8005BB34->v.tc[1] = 0x400;
		D_8005BB34->v.cn[0] = 0xFF;
		D_8005BB34->v.cn[1] = 0x9E;
		D_8005BB34->v.cn[2] = 0x16;
		D_8005BB34->v.cn[3] = 0xFF;

		D_8005BB34++;
		D_8005BB34->v.ob[0] = ((f32)sub->unk0 - off3);
		D_8005BB34->v.ob[1] = ((f32)sub->unk2 - off4);
		D_8005BB34->v.ob[2] = ((f32)sub->unk4 - off5);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0x400;
		D_8005BB34->v.cn[0] = 0xFF;
		D_8005BB34->v.cn[1] = 0x9E;
		D_8005BB34->v.cn[2] = 0x16;
		D_8005BB34->v.cn[3] = 0xFF;

		D_8005BB34++;
		D_8005BB34->v.ob[0] = (f32)sub->unk0;
		D_8005BB34->v.ob[1] = (f32)sub->unk2;
		D_8005BB34->v.ob[2] = (f32)sub->unk4;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x200;
		D_8005BB34->v.tc[1] = 0x200;
		D_8005BB34->v.cn[0] = 0xFF;
		D_8005BB34->v.cn[1] = 0xFF;
		D_8005BB34->v.cn[2] = 0xFF;
		D_8005BB34->v.cn[3] = 0xFF;

		D_8005BB34++;
		gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 5), 5, 0);
		gSP2Triangles(D_8005BB2C++, 0, 1, 4, 0, 4, 1, 2, 0);
		gSP2Triangles(D_8005BB2C++, 4, 2, 3, 0, 0, 3, 4, 0);

		D_80156EDA += 5;
		idx = D_80154318[idx].unk4;
	} while ((idx != -5) && (idx != -6));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D7870_E6820.s")
#endif

s16 func_800D7EF8_E6EA8(s16 arg0, s16 arg1, s16 arg2, s16 arg3)
{
	s32 dummy;
	s16 dummy2;
	s16 temp_v0;
	temp_v0 = func_800C17B4_D0764(0x12, 1);
	if (temp_v0 != (-3))
	{
		D_80154318[temp_v0].unk8 = arg0;
		D_80154318[temp_v0].unkA = arg1;
		D_80154318[temp_v0].unk2 = arg3;
		D_80154318[temp_v0].unkC = arg2;
		*((s16 *)(&D_80154318[temp_v0].unkE)) = (s16)(arg0 + 5);
		*((s16 *)(&D_80154318[temp_v0].unk10)) = (s16)(arg1 + 1);
		D_80154318[temp_v0].unk12 = arg2 + 5;
		D_80154318[temp_v0].unk14 = func_800C2274_D1224(arg0, arg1, arg2, 0);
	}
	return temp_v0;
}

// Kill fireball effect?
void func_800D7FB4_E6F64(s16 arg0) {
	if (arg0 == -3) {
		osSyncPrintf(&D_801439A4_152954);
		return;
	}
	func_800C1A4C_D09FC(arg0, 0x12, 1);
}

void func_800D8000_E6FB0(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	Unk80154318Entry *entry;
	s16 *temp_v0;
	s16 *temp_v1;

	if ((arg3 == -3) || (entry = &D_80154318[arg3], temp_v0 = (s16 *)(s32)entry->coordinates, ((entry->unk0 & 1) == 0))) {
		osSyncPrintf(&D_801439EC_15299C); // DYNAMIC EFFECTS : Tried to update fire ball effect which does not exist!
	} else {

		temp_v1 = (s16 *)(s32)entry->previousPosition;
		/* Keep the coordinate bases across this block for IDO. */
		if (1) {
			temp_v1[0] = temp_v0[0];
			temp_v1[1] = temp_v0[1];
			temp_v1[2] = temp_v0[2];
			temp_v0[0] = arg0; temp_v0[2] = arg2; temp_v0[1] = arg1;
		}
	}
}


// CURRENT(250)
void func_800D80B4_E7064(void) {
	s16 s1;
	s16 *coordinates;

	s1 = D_801542D6;
	if (s1 == -5 || s1 == -6) {
		func_800C1418_D03C8(0x12, 1);
		return;
	}
	while (s1 != -5 && s1 != -6) {
		func_800C1ECC_D0E7C(D_80154318[s1].unk8, D_80154318[s1].unkA, D_80154318[s1].unkC, D_80154318[s1].unk14, 0);
		coordinates = (s16 *)(s32)D_80154318[s1].coordinates;
		func_80137368_146318(coordinates[0], coordinates[1], coordinates[2], 0xA, s1);
		s1 = D_80154318[s1].unk4;
	}
}

// CURRENT(12070)
#ifdef NON_MATCHING
void func_800D8190_E7140(void) {
	Unk80154318Entry *entry;
	Vec3f direction;
	s32 current;
	s16 size;
	EffectPositionPair *position;
	f32 two;
	s16 x0;
	s16 y0;
	s16 z0;
	s16 x1;
	s16 y1;
	s16 z1;
	s16 x2;
	s16 y2;
	s16 z2;
	s16 halfZ;
	s16 halfX;
	s16 tipX;
	s16 tipY;
	s16 tipZ;

	two = 2.0f;
	current = D_801542D6;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1,
		K0_TO_PHYS(D_1007A70[func_800038E0_44E0() % 16]));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0,
		(31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
	gDPPipeSync(D_8005BB2C++);

	while ((current != -5) && (current != -6)) {
		entry = &D_80154318[current];
		direction.x = entry->unk8 - entry->previousPosition[0];
		direction.y = entry->unkA - entry->previousPosition[1];
		direction.z = entry->unkC - entry->previousPosition[2];

		position = &entry->positionPair;
		size = entry->unk2;
		if ((direction.x == 0.0f) && (direction.y == 0.0f) && (direction.z == 0.0f)) {
			current = entry->unk4;
			continue;
		}

		func_800C1024_CFFD4(&direction, &direction);
				func_800C1128_D00D8((f32)size, &direction, &direction);

		halfZ = (s16)(direction.z / two);
		halfX = (s16)(direction.x / two);
		tipX = position->position[0] + (s16)(direction.x * 3.0f);
		tipY = position->position[1] + (s16)(direction.y * 3.0f);
		tipZ = position->position[2] + (s16)(direction.z * 3.0f);

		D_8005BB34->v.ob[0] = (f32)(position->position[0] + halfZ);
		D_8005BB34->v.ob[1] = (f32)(position->position[1] + (size / 2));
		D_8005BB34->v.ob[2] = (f32)(position->position[2] - halfX);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[3];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[4];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[5];
		D_8005BB34->v.cn[3] = 0xD2;
		D_8005BB34++;

		D_8005BB34->v.ob[0] = (f32)(position->position[0] - halfZ);
		D_8005BB34->v.ob[1] = (f32)(position->position[1] - (size / 2));
		D_8005BB34->v.ob[2] = (f32)(position->position[2] + halfX);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x800;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[3];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[4];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[5];
		D_8005BB34->v.cn[3] = 0xD2;
		D_8005BB34++;

		D_8005BB34->v.ob[0] = x0 = (f32)(tipX + halfZ);
		D_8005BB34->v.ob[1] = y0 = (f32)(tipY + (size / 2));
		D_8005BB34->v.ob[2] = z0 = (f32)(tipZ - halfX);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0x800;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[0];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[1];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[2];
		D_8005BB34->v.cn[3] = 0xFF;
		D_8005BB34++;

		D_8005BB34->v.ob[0] = x1 = (f32)(tipX - halfZ);
		D_8005BB34->v.ob[1] = y1 = (f32)(tipY - (size / 2));
		D_8005BB34->v.ob[2] = z1 = (f32)(tipZ + halfX);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x800;
		D_8005BB34->v.tc[1] = 0x800;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[0];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[1];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[2];
		D_8005BB34->v.cn[3] = 0xFF;
		D_8005BB34++;

		gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
		gSP2Triangles(D_8005BB2C++, 0, 1, 2, 0, 2, 3, 1, 0);
		gDPPipeSync(D_8005BB2C++);

		D_8005BB34->v.ob[0] = (f32)(position->position[0] + halfZ);
		D_8005BB34->v.ob[1] = (f32)(position->position[1] - (size / 2));
		D_8005BB34->v.ob[2] = (f32)(position->position[2] - halfX);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[3];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[4];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[5];
		D_8005BB34->v.cn[3] = 0xD2;
		D_8005BB34++;

		D_8005BB34->v.ob[0] = (f32)(position->position[0] - halfZ);
		D_8005BB34->v.ob[1] = (f32)(position->position[1] + (size / 2));
		D_8005BB34->v.ob[2] = (f32)(position->position[2] + halfX);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x800;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[3];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[4];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[5];
		D_8005BB34->v.cn[3] = 0xD7;
		D_8005BB34++;

		D_8005BB34->v.ob[0] = x0;
		D_8005BB34->v.ob[1] = y1;
		D_8005BB34->v.ob[2] = z0;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0x800;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[0];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[1];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[2];
		D_8005BB34->v.cn[3] = 0xFF;
		D_8005BB34++;

		D_8005BB34->v.ob[0] = x1;
		D_8005BB34->v.ob[1] = y0;
		D_8005BB34->v.ob[2] = z1;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x800;
		D_8005BB34->v.tc[1] = 0x800;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[0];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[1];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[2];
		D_8005BB34->v.cn[3] = 0xFF;
		D_8005BB34++;

		gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
		gSP2Triangles(D_8005BB2C++, 0, 1, 2, 0, 2, 3, 1, 0);

		x2 = position->position[0] + (s16)(direction.x * 2.5);
		y2 = position->position[1] + (s16)(direction.y * 2.5);
		z2 = position->position[2] + (s16)(direction.z * 2.5);
		halfZ = (s16)(direction.z / 3.0f);
		halfX = (s16)(direction.x / 3.0f);

		D_8005BB34->v.ob[0] = (f32)(x2 + halfZ);
		D_8005BB34->v.ob[1] = (f32)(y2 + (size / 3));
		D_8005BB34->v.ob[2] = (f32)(z2 - halfX);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0x800;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[0];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[1];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[2];
		D_8005BB34->v.cn[3] = 0xD7;
		D_8005BB34++;

		D_8005BB34->v.ob[0] = (f32)(x2 + halfZ);
		D_8005BB34->v.ob[1] = (f32)(y2 - (size / 3));
		D_8005BB34->v.ob[2] = (f32)(z2 - halfX);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x800;
		D_8005BB34->v.tc[1] = 0x800;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[0];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[1];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[2];
		D_8005BB34->v.cn[3] = 0xD7;
		D_8005BB34++;

		D_8005BB34->v.ob[0] = (f32)(x2 - halfZ);
		D_8005BB34->v.ob[1] = (f32)(y2 + (size / 3));
		D_8005BB34->v.ob[2] = (f32)(z2 + halfX);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0x800;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[0];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[1];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[2];
		D_8005BB34->v.cn[3] = 0xD7;
		D_8005BB34++;

		D_8005BB34->v.ob[0] = (f32)(x2 - halfZ);
		D_8005BB34->v.ob[1] = (f32)(y2 - (size / 3));
		D_8005BB34->v.ob[2] = (f32)(z2 + halfX);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x800;
		D_8005BB34->v.tc[1] = 0x800;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[0];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[1];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[2];
		D_8005BB34->v.cn[3] = 0xD7;
		D_8005BB34++;

		D_8005BB34->v.ob[0] = (f32)(x2);
		D_8005BB34->v.ob[1] = (f32)(y2);
		D_8005BB34->v.ob[2] = (f32)(z2);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x400;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[0];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[1];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[2];
		D_8005BB34->v.cn[3] = 0xFF;
		D_8005BB34++;

		gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 5), 5, 0);
		gSP1Triangle(D_8005BB2C++, 4, 0, 1, 0);
		gSP1Triangle(D_8005BB2C++, 4, 0, 2, 0);
		gSP1Triangle(D_8005BB2C++, 4, 2, 3, 0);
		gSP1Triangle(D_8005BB2C++, 4, 3, 1, 0);

		D_80156EDA += 0xD;
		current = entry->unk4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D8190_E7140.s")
#endif

void func_800D8FA0_E7F50(s16 arg0, s16 arg1, s16 arg2) {
	u8 *temp_a0;
	s16 temp_s0;

	temp_s0 = func_800C17B4_D0764(0x13, 1);
	if (temp_s0 != -3) {
		D_80154318[temp_s0].unk2 = (func_800038E0_44E0() % 15) + 1;
		temp_a0 = (u8 *)&D_80154318[temp_s0].unk8;
		*(s16 *)&temp_a0[0] = arg0;
		*(s16 *)&temp_a0[2] = arg1;
		*(s16 *)&temp_a0[4] = arg2;
		temp_a0[6] = (func_800038E0_44E0() % 6) - 3;
		temp_a0[7] = (func_800038E0_44E0() % 6) + 6;
		temp_a0[8] = (func_800038E0_44E0() % 6) - 3;
		func_801372B4_146264(arg0, arg1, arg2, 5);
	}
}

void func_800D90A4_E8054(void) {
	s16 curr;
	s16 next;
	Unk80154318Sub *entrySub;

	curr = D_801542E2;
	if ((curr == -5) || (curr == -6)) {
		func_800C1418_D03C8(0x13, 1);
		return;
	}
	while ((curr != -5) && (curr != -6)) {
		entrySub = (Unk80154318Sub *)(s32)D_80154318[curr].coordinates;
		entrySub->unk0 += entrySub->unk6 + (func_800038E0_44E0() % 5) - 2;
		entrySub->unk2 += entrySub->unk7 + (func_800038E0_44E0() % 5) - 2;
		entrySub->unk4 += entrySub->unk8 + (func_800038E0_44E0() % 5) - 2;
		if (entrySub->unk2 >= D_80222A70) {
			next = D_80154318[curr].unk4;
			func_800C1A4C_D09FC(curr, 0x13, 1);
			curr = next;
		} else {
			curr = D_80154318[curr].unk4;
		}
	}
}


void func_800D9294_E8244(void) {
	s16 var_s2;

	var_s2 = D_801542E2;

	gDPPipeSync(D_8005BB2C++);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xF0, 0xF5, 0xFF, 0xFF);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100ACF0));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x3C, 0x3C);
	gDPPipeSync(D_8005BB2C++);

	D_80153BC4 = &D_80153B80, D_80153BCD = 0x10, D_80153BCE = 0x10, D_80153BCC = 0xFF;

	while ((var_s2 != -5) && (var_s2 != -6)) {
		D_80153BB8.x = (f32)D_80154318[var_s2].unk8;
		D_80153BB8.y = (f32)D_80154318[var_s2].unkA;
		D_80153BB8.z = (f32)D_80154318[var_s2].unkC;
		D_80153BC8 = (f32)D_80154318[var_s2].unk2;
		func_800DB350_EA300();
		D_80156EDA += 4;
		var_s2 = D_80154318[var_s2].unk4;
	}
}

s16 func_800D951C_E84CC(void *arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7) {
	s16 temp_v0;
	s16 temp_a1;
	s16 temp_arg1;
	s16 temp_arg2;
	s16 temp_arg3;
	s16 temp_arg4;
	s16 temp_arg5;
	s16 temp_arg6;
	s16 temp_arg7;
	Unk80154318Entry *entry;
	Unk80154318Entry *linkedEntry;

	temp_v0 = func_800C19D4_D0984(0x14, 1);
	if (temp_v0 != -3) {
		temp_arg7 = arg7;
		temp_arg1 = arg1;
		temp_arg2 = arg2;
		temp_arg3 = arg3;
		temp_arg4 = arg4;
		temp_arg5 = arg5;
		entry = &D_80154318[temp_v0];
		temp_a1 = entry->unk4;
		*(void **)&entry->unk8 = arg0;
		*(s32 *)&entry->unkC = temp_arg7;
		linkedEntry = &D_80154318[temp_a1];
		temp_arg6 = arg6;
		linkedEntry->unk8 = temp_arg1;
		linkedEntry->unkA = temp_arg2;
		linkedEntry->unkC = temp_arg3;
		*(s16*)&linkedEntry->unkE = temp_arg4;
		*(s16*)&linkedEntry->unk10 = temp_arg5;
		linkedEntry->unk12 = temp_arg6;
	}
	return temp_v0;
}

void func_800D95D0_E8580(void) {
	Unk80154318Entry *entry;
	s16 idx;
	s16 next;
	s32 *counter;

	idx = D_801542EE;
	if ((idx == -5) || (idx == -6)) {
		func_800C1418_D03C8(0x14, 1);
		return;
	}
	if ((idx != -5) && (idx != -6)) {
		do {
			entry = &D_80154318[idx];
			counter = (s32*)&entry->unk8;
			next = entry->unk4;
			next = D_80154318[next].unk4;
			if (*(s32*)&entry->unkC != 0) {
				counter[1] = counter[1] - 1;
			} else {
				func_800C1E24_D0DD4(idx, 0x14, 1);
			}
			idx = next;
		} while ((idx != -5) && (idx != -6));
	}
}

void func_800D96B4_E8664(s16 arg0, s16 arg1, s16 arg2, s16 arg3)
{
	s16 new_var;
	Unk80154318Entry *temp_v1;
	new_var = D_80154318[arg0].unk4;
	temp_v1 = &D_80154318[new_var];
	temp_v1->unk8 = arg1;
	temp_v1->unkA = arg2;
	temp_v1->unkC = arg3;
}

void func_800D9704_E86B4(s16 arg0, s16 arg1, s16 arg2, s16 arg3)
{
	s16 new_var;
	s16 new_var2;
	Unk80154318Entry *temp_v1;
	temp_v1 = &D_80154318[new_var2 = D_80154318[arg0].unk4];
	new_var = arg2;
	new_var2 = new_var;
	*(s16 *)&temp_v1->unkE = arg1;
	*(s16 *)&temp_v1->unk10 = new_var2;
	(*temp_v1).unk12 = arg3;
}

void func_800D9754_E8704(s16 arg0) {
	if (arg0 != -3) {
		func_800C1E24_D0DD4(arg0, 0x14, 1);
	}
}

// CURRENT(429)
void func_800D978C_E873C(void) {
	u32 opcode;
	s16 var_v1;
	s32 linkedIndex;
	Unk80154318Entry *entry;
	Unk80154318Entry *linkedEntry;
	Unk80052B40 *spatial;

	opcode = 0x06000000;
	var_v1 = D_801542EE;
	if ((var_v1 != -6) && (var_v1 != -5)) {
		gSPDisplayList(D_8005BB2C++, D_80031230);
		gSPDisplayList(D_8005BB2C++, D_800311D0);
		gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
		gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK | G_LIGHTING);

		if (1) {
			if ((var_v1 != -6) && (var_v1 != -5)) {
				do {
					entry = &D_80154318[var_v1];
					linkedIndex = entry->unk4;
					linkedEntry = &D_80154318[linkedIndex];
					if (func_800B93AC_C835C(linkedEntry->unk8, linkedEntry->unkC, 0x100,
											(s16)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f),
											0x4000 - D_80047950) != 0) {
						spatial = &linkedEntry->spatialVectors[0];
						func_800039D0_45D0(spatial, &((Unk80052B40 *)((s32)spatial | 0))[1], 0, D_8005BB38);
						gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
						{
							Gfx *cmd = D_8005BB2C++;
							cmd->words.w0 = opcode;
							cmd->words.w1 = (u32)entry->displayList;
						}
						{
							Gfx *cmd = D_8005BB2C++;
							cmd->words.w1 = 0;
							cmd->words.w0 = -0x43000000;
						}
					}
					var_v1 = linkedEntry->unk4;
				} while ((var_v1 != -6) && (var_v1 != -5));
			}
		}
	}
}


// Create group effect?
s32 func_800D99F4_E89A4(void *arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
	s16 temp_v0;
	Unk80154318Entry *temp_v1;

	osSyncPrintf(&D_80143A38_1529E8);
	temp_v0 = func_800C19D4_D0984(0x15, 1);
	if (temp_v0 != -3) {
		temp_v1 = &D_80154318[temp_v0];
		*(void **)&temp_v1->unk8 = arg0;
		temp_v1->unkC = arg1;
		*(s16*)&temp_v1->unkE = arg2;
		*(s16*)&temp_v1->unk10 = arg3;
		temp_v1->unk12 = arg4;
	}
	return temp_v0;
}

void func_800D9A8C_E8A3C(s16 arg0, s32 arg1, s16 arg2) {
	s16 new_var;
	new_var = D_80154318[arg0].unk4;
	*(s16 *)((u8 *)&D_80154318[new_var].unk8 + (arg1 * 2)) = arg2;
}

void func_800D9AD4_E8A84(s16 arg0, u8 arg1)
{
	s16 new_var;
	new_var = D_80154318[arg0].unk4;
	D_80154318[new_var].unk14 = arg1;
}

void func_800D9B14_E8AC4(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	Unk80154318Entry *temp_v0;

	temp_v0 = &D_80154318[arg3];
	*(s16*)&temp_v0->unkE = arg0;
	*(s16*)&temp_v0->unk10 = arg1;
	temp_v0->unk12 = arg2;
}

void func_800D9B54_E8B04(void) {
	s32 temp_s2;
	s16 var_s1;
	s16 temp_a1;
	Unk80154318Entry *entry;

	var_s1 = D_801542FA;
	if (var_s1 == -5 || var_s1 == -6) {
		func_800C1418_D03C8(0x15, 1);
		return;
	}
	if (var_s1 != -5 && var_s1 != -6) {
		do {
			entry = &D_80154318[var_s1];
			temp_a1 = entry->unk4;
			temp_s2 = D_80154318[temp_a1].unk4;
			entry->callbackState.callback(var_s1, temp_a1);
			{
				EffectCallbackState *data = (EffectCallbackState *)(s32)&entry->callbackState;

				/* Preserve the payload base for IDO's timer accesses. */
				if (1) {
					if (data->timer != 0) {
						data->timer--;
					} else {
						func_800C1E24_D0DD4(var_s1, 0x15, 1);
					}
				}
			}
			var_s1 = temp_s2;
		} while (temp_s2 != -5 && var_s1 != -6);
	}
}


void func_800D9C60_E8C10(s16 arg0) {
	if (arg0 != -3) {
		func_800C1E24_D0DD4(arg0, 0x15, 1);
	}
}

void func_800D9C98_E8C48(s16 arg0, s16 arg1)
{
	s32 sp2C;
	s16 *entryData = (s16 *)(&D_80154318[arg0].unk8);
	if (entryData[2] & 1)
	{
		s32 rnd;
		sp2C = func_800DEE5C_EDE0C(entryData[3], (s16)((s32)(entryData[4] + (D_80144028_152FD8[0] * (((f64)((f32)sins(0x4000 - (entryData[2] << 10)))) / 32768.0)))), entryData[5], 0x46, 0x18 - entryData[2]);
		rnd = func_800038E0_44E0() % 128;
		rnd += 0x40;
		func_800DDD90_ECD40((u8)sp2C, 0xFF, rnd, 0);
		func_80135D44_144CF4(entryData[3], entryData[4], entryData[5], (f32)(entryData[2] >> 1));
	}
}

void func_800D9DD8_E8D88(s16 arg0, s16 arg1, s16 arg2) {
	if (func_800D99F4_E89A4(&func_800D9C98_E8C48, 0x10, arg0, arg1, (s32) arg2) != -3) {
		func_800153D8_15FD8(0x183);
	}
}

void func_800D9E38_E8DE8(s16 arg0, s16 arg1) {
	s32 temp = D_80154318[arg1].unk8;
	VehicleInstance *vehicle;

	vehicle = &vehicleInstances[temp];

	D_80154318[arg0].previousPosition[0] = vehicle->unk0; D_80154318[arg0].previousPosition[1] = vehicle->unk2 + 0x3C; D_80154318[arg0].previousPosition[2] = vehicle->unk4;

	if ((D_80154318[arg0].unkC % 3) == 0) {
		s16 effectId;
		s16 *entryData = (s16 *)(s32)D_80154318[arg0].coordinates;
		effectId = func_800DEE5C_EDE0C(entryData[3], entryData[4], entryData[5], 0x32, 0x18 - entryData[2]);
		temp = func_800038E0_44E0() & 0x7F;
		temp += 0x80;
		func_800DDD90_ECD40(effectId, (u8)temp, 0, 0xFF);
		func_80135D44_144CF4(entryData[3], entryData[4], entryData[5], (f32)(entryData[2] >> 1));
	}
}


void func_800D9F60_E8F10(s32 arg0) {
	struct {
		s32 temp_v0;
		s16 pad;
		s16 sp26;
	} vars;
	VehicleInstance *vehicle;

	vehicle = &vehicleInstances[arg0];
	vars.temp_v0 = func_800D99F4_E89A4(&func_800D9E38_E8DE8, 0x10, vehicle->unk0, vehicle->unk2, (s32)vehicle->unk4);
	vars.sp26 = (s16)vars.temp_v0;
	if (vars.temp_v0 != -3) {
		func_800153D8_15FD8(0x183);
		func_800D9A8C_E8A3C(vars.sp26, 0, (s16)arg0);
	}
}

void func_800D9FF8_E8FA8(s16 arg0, s16 arg1) {
	Vec3i sp4C;
	Unk80154318Entry *entry0;
	s32 pad;
	s16 *entryData0;
	s16 *entryData1;

	sp4C = *(Vec3i *)D_8013E324_14D2D4;

	entry0 = &D_80154318[arg1];
	entryData0 = entry0->coordinates;

	if (entryData0[0] != -3) {
		entryData1 = (s16 *)(s32)D_80154318[arg0].coordinates;
		func_800D9704_E86B4(entryData0[0], (s16)(entryData1[2] << 11), 0, 0);
		func_800D96B4_E8664(entryData0[0], entryData1[3], entryData1[4], entryData1[5]);
	}

	entryData1 = (s16 *)(s32)D_80154318[arg0].coordinates;
	if (entryData0[1] != -3) {
		func_800D0F5C_DFF0C(entryData0[1], entryData1[3], entryData1[4] + 0x1E, entryData1[5]);
		func_800D0FE0_DFF90(entryData0[1], (u16)((((f64)(f32)sins((u16)(entryData1[2] << 12)) / 32768.0) * 40.0) + 100.0));
	}

	if (entryData1[2] == 8) {
		func_800D1054_E0004(entryData0[1]);
		entryData0[1] = -3;
	}

	if (entryData1[2] == 1) {
		func_800DFBA8_EEB58(entryData1[3], entryData1[4], entryData1[5], 0x1F4, 8);
		func_80124170_133120(entryData1[3], entryData1[4], entryData1[5], 0x9C40, 0x3E8, 0);
	}
}

s16 func_800DA260_E9210(s16 arg0, s16 arg1, s16 arg2) {
	s16 temp_v0;
	s16 temp_v0_2;
	s16 temp_v0_3;
	s32 result;

	result = func_800D99F4_E89A4(&func_800D9FF8_E8FA8, 0x3C, arg0, arg1, arg2);
	temp_v0 = (s16)result;
	if (result != -3) {
		temp_v0_2 = func_800D951C_E84CC(&D_5055C00, arg0, arg1, arg2, 0, 0, 0, 0x3C);
		if (temp_v0_2 == -3) {
			func_800D9C60_E8C10(temp_v0);
			return -3;
		}
		func_800D9A8C_E8A3C(temp_v0, 0, temp_v0_2);
		temp_v0_3 = func_800D0DE4_DFD94(arg0, arg1, arg2, 0x32, 0xE5, 0x96, 0x63);
		if (temp_v0_3 == -3) {
			func_800D9C60_E8C10(temp_v0);
			func_800D9754_E8704(temp_v0_2);
			return -3;
		}
		func_800D9A8C_E8A3C(temp_v0, 1, temp_v0_3);
	}
	return temp_v0;
}

void func_800DA3A8_E9358(s16 arg0, s16 arg1)
{
	s16 *src;
	s16 *dst;

	func_800E52E8_F4298(D_80154318[arg0].coordinates[3], D_80154318[arg0].coordinates[4], D_80154318[arg0].coordinates[5], D_80154318[arg1].coordinates[0], D_80154318[arg1].coordinates[1], D_80154318[arg1].coordinates[2], D_80154318[arg1].unk14);
	src = (s16 *)(s32)D_80154318[arg0].coordinates;
	dst = (s16 *)(s32)D_80154318[arg1].coordinates;
	dst[0] = src[3];
	dst[1] = src[4];
	dst[2] = src[5];

}
s16 func_800DA450_E9400(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	s32 retval;
	s16 temp_v0;

	retval = func_800D99F4_E89A4(&func_800DA3A8_E9358, 0x7FFF, arg0, arg1, (s32) arg2);
	temp_v0 = (s16)retval;
	if (retval != -3) {
		func_800D9A8C_E8A3C(temp_v0, 0, arg0);
		func_800D9A8C_E8A3C(temp_v0, 1, arg1);
		func_800D9A8C_E8A3C(temp_v0, 2, arg2);
		func_800D9AD4_E8A84(temp_v0, arg3);
	}
	return temp_v0;
}

// CURRENT(120)
#ifdef NON_MATCHING
void func_800DA510_E94C0(s16 arg0, s16 arg1) {
	Unk80052B40 *dstPos;
	EffectPositionPair *srcPos;

	s16 effect;
	Vec3f dir;




	srcPos = &D_80154318[arg0].positionPair;
	dstPos = &D_80154318[arg1].positionVector;
	dir.x = srcPos->previousPosition[0] - dstPos->unk0;
	dir.y = srcPos->previousPosition[1] - dstPos->unk2;
	dir.z = srcPos->previousPosition[2] - dstPos->unk4;

	if ((dir.x != 0.0f) || (dir.y != 0.0f) || (dir.z != 0.0f)) {
		func_800C1024_CFFD4(&dir, &dir);
		effect = func_800D16BC_E066C(srcPos->previousPosition[0], srcPos->previousPosition[1], srcPos->previousPosition[2], (s16)((f64)srcPos->previousPosition[0] + (400.0 * (f64)dir.x)),
			(s32)((f64)srcPos->previousPosition[1] + (400.0 * (f64)dir.y)),
			(s32)((f64)srcPos->previousPosition[2] + (400.0 * (f64)dir.z)), 1);
		if (effect != 0xFB) {
			u8 flags;
			flags = D_80154318[arg1].unkF;
			func_800D19DC_E098C(effect, flags);
		}
		dstPos->unk0 = srcPos->previousPosition[0];
		dstPos->unk2 = srcPos->previousPosition[1];
		dstPos->unk4 = srcPos->previousPosition[2];
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DA510_E94C0.s")
#endif


s16 func_800DA6F0_E96A0(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s32 temp_s32;
	s16 temp_s16;

	temp_s32 = func_800D99F4_E89A4(func_800DA510_E94C0, 0x7FFF, arg0, arg1, arg2);
	temp_s16 = temp_s32;
	if (temp_s32 != -3) {
		func_800D9A8C_E8A3C(temp_s16, 0, arg0);
		func_800D9A8C_E8A3C(temp_s16, 1, arg1);
		func_800D9A8C_E8A3C(temp_s16, 2, arg2);
		func_800D9A8C_E8A3C(temp_s16, 3, arg3);
		func_800D9A8C_E8A3C(temp_s16, 4, -3);
	}
	return temp_s16;
}

void func_800DA7CC_E977C(s16 arg0, s16 arg1) {
	u8 *entryUnk8Bytes;
	s32 value;

	entryUnk8Bytes = D_80154318[arg1].payload;
	if (D_80154318[arg1].unk8 != 0xFB) {
		func_800DDD30_ECCE0(entryUnk8Bytes[1], D_80052B34->unk0, (s16)(D_80052B34->unk2 + 0x50), D_80052B34->unk4);
		func_800DDDE4_ECD94(entryUnk8Bytes[1], (u8)(D_80154318[arg0].unkC * 3));
	}

	value = D_80154318[arg0].unkC;
	if ((value % 3) == 0) {
		if (value < 0xA) {
			func_800C541C_D43CC(D_80052B34->unk0, (s16)(D_80052B34->unk2 + 0x3C), D_80052B34->unk4, 0, 0xA, 0, 0x3C, 0xFF, 0x28,
				0x1E, 0xC8, 0xC8, 0xFF);
			return;
		}

		func_800C541C_D43CC(D_80052B34->unk0, (s16)(D_80052B34->unk2 + 0x3C), D_80052B34->unk4, 0, 0xA, 0, 0x28, 0xFF, 1,
			0x14, 0xC8, 0xC8, 0xFF);
	}
}

void func_800DA994_E9944(void) {
	struct {
		s32 temp_v0;
		s16 pad;
		s16 sp26;
	} vars;

	vars.temp_v0 = func_800D99F4_E89A4(&func_800DA7CC_E977C, 0x28, 0, 0, 0);
	vars.sp26 = (s16) vars.temp_v0;
	if (vars.temp_v0 != -3) {
		func_800D9A8C_E8A3C(vars.sp26, 0,
			func_800DDB60_ECB10(D_80052B34->unk0,
				(s16)(D_80052B34->unk2 + 0x50),
				D_80052B34->unk4,
				9,
				0x78));
	}
}

void func_800DAA1C_E99CC(u8 arg0) {
	s16 hpLimit;
	s32 effectId;
	BuildingInstance *building;
	s16 age;
	EffectBuildingRecoveryState *state;

	building = &buildingInstances[arg0];
	hpLimit = buildingTypes[building->buildingType].unk19 >> 2;
	effectId = D_80154282;

	if ((building->statusFlags & 0x10) != 0) {
		while (effectId != -5 && effectId != -6) {
			state = (EffectBuildingRecoveryState *)D_80154318[effectId].payload;
			if (arg0 == D_80154318[effectId].coordinates[4]) {
				age = state->age;
				if (age >= 0xF8) {
					func_800C1E24_D0DD4(effectId, 0xB, 1);
					building->hitPoints = hpLimit;
					building->statusFlags &= ~0x10;
				} else {
					state->age = age + 6;
				}
				effectId = -5;
			} else {
				effectId = D_80154318[effectId].unk4;
				effectId = D_80154318[effectId].unk4;
			}
		}

		if ((D_80052A8C & 7) == 0) {
			if (hpLimit >= building->hitPoints) {
				building->hitPoints++;
			}
		}
	}
}

/* CURRENT(2700) */
// particle effect dispatcher/updater
#ifdef NON_MATCHING
void func_800DABBC_E9B6C(void) {
	s32 i;
	s32 temp;
	u8 type;
	s32 secondType;
	

	for (i = 0; i < 0x1E; i = (i + 1) & 0xFF) { // iterate through effect pool with 30 slots
		type = D_80154088[i].unk0;
		if (type >= 10) {
			if (type == 0xFA) {
				continue;
			}
		} else {
			switch (type) {
				case 0:
					func_800C5894_D4844((u8)i);
					continue;

				case 1:
					func_800C22EC_D129C((u8)i);
					continue;

				case 2:
					func_800C2EE4_D1E94((u8)i);
					continue;

				case 3:
					func_800C8F5C_D7F0C((u8)i);
					continue;

				case 4:
					func_800CA848_D97F8((u8)i);
					continue;

				case 5:
					func_800CD42C_DC3DC((u8)i);
					continue;

				case 6:
					func_800CE1C0_DD170((u8)i);
					continue;

				case 7:
					func_800D1A94_E0A44((u8)i);
					continue;

				case 8:
					func_800D6140_E50F0((u8)i);
					continue;

				case 9:
					func_800D6EAC_E5E5C((u8)i);
					continue;

				default:
					break;
			}
		}

		temp = (type >= 10) ? 1 : 0;
		if (temp != 0) {
			osSyncPrintf(D_80143A50_152A00);
		} else {
			osSyncPrintf(D_80143A94_152A44);
		}
	}

	for (i = 0; i < 0x16; i = (i + 1) & 0xFF) {
		secondType = D_801541F8[i].unk0;
		if (secondType >= 0x20) {
			if (secondType == 0xFA) {
				continue;
			}
		} else { // secondary effect pool?
			switch (secondType - 10) {
				case 0:
					func_800C3E2C_D2DDC();
					continue;

				case 1:
					func_800C4AA0_D3A50();
					continue;

				case 2:
					func_800C6558_D5508();
					continue;

				case 3:
					func_800C8294_D7244();
					continue;

				case 4:
					func_800C9668_D8618();
					continue;

				case 5:
					func_800CB394_DA344();
					continue;

				case 6:
					func_800CBE98_DAE48();
					continue;

				case 7:
					func_800CCB60_DBB10();
					continue;

				case 8:
					func_800CDBF4_DCBA4();
					continue;

				case 9:
					func_800CF070_DE020();
					continue;

				case 10:
					func_800CF948_DE8F8();
					continue;

				case 11:
					func_800D0C00_DFBB0();
					continue;

				case 12:
					func_800D25D0_E1580();
					continue;

				case 13:
					func_800D36EC_E269C();
					continue;

				case 14:
					func_800D3D40_E2CF0();
					continue;

				case 15:
					func_800D4B44_E3AF4();
					continue;

				case 16:
					func_800D5684_E4634();
					continue;

				case 17:
					func_800D7790_E6740();
					continue;

				case 18:
					func_800D80B4_E7064();
					continue;

				case 19:
					func_800D90A4_E8054();
					continue;

				case 20:
					func_800D95D0_E8580();
					continue;

				case 21:
					func_800D9B54_E8B04();
					continue;

				default:
					break;
			}
		}

		if ((i < 10) && (i >= 0)) {
			osSyncPrintf(D_80143AD4_152A84, i);
		} else {
			osSyncPrintf(D_80143B18_152AC8);
		}

	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DABBC_E9B6C.s")
#endif

// CURRENT(1262)
void func_800DAF24_E9ED4(u8 arg0) {
	u8 i;
	u8 count;
	Unk801541F8Entry *entry;

	count = (func_800038E0_44E0() % 3) + 1;
	entry = &D_80154088[arg0];
	for (i = 0; i < count; i++) {
		if (entry->unk4 < 0x96) {
			func_800CA1B0_D9160(arg0);
		}
	}
}

void func_800DAFCC_E9F7C(void) {
	D_8005BB34->v.ob[0] = (s16)(s32)(D_80153BB8.x + D_80153BC8);
	D_8005BB34->v.ob[1] = (s16)(s32)D_80153BB8.y;
	D_8005BB34->v.ob[2] = (s16)(s32)(D_80153BB8.z + D_80153BC8);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_80153BB8.x - D_80153BC8);
	D_8005BB34->v.ob[1] = (s16)(s32)D_80153BB8.y;
	D_8005BB34->v.ob[2] = (s16)(s32)(D_80153BB8.z + D_80153BC8);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = (*(u8 *)&D_80153BCD) << 6;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_80153BB8.x - D_80153BC8);
	D_8005BB34->v.ob[1] = (s16)(s32)D_80153BB8.y;
	D_8005BB34->v.ob[2] = (s16)(s32)(D_80153BB8.z - D_80153BC8);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = (*(u8 *)&D_80153BCD) << 6;
	D_8005BB34->v.tc[1] = (*(u8 *)&D_80153BCE) << 6;
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_80153BB8.x + D_80153BC8);
	D_8005BB34->v.ob[1] = (s16)(s32)D_80153BB8.y;
	D_8005BB34->v.ob[2] = (s16)(s32)(D_80153BB8.z - D_80153BC8);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = (*(u8 *)&D_80153BCE) << 6;
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
}

void func_800DB350_EA300(void) {
	f32 sp4;
	f32 temp_f0;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f16;
	f32 temp_f18;

	temp_f0 = D_80153BC8 * D_80153AB8.x;
	temp_f12 = D_80153BC8 * D_80153AB8.y;
	temp_f14 = D_80153BC8 * D_80153AB8.z;
	temp_f16 = D_80153BC8;
	temp_f16 *= ((f32 *)&D_80153AB8)[3];
	temp_f18 = D_80153BC8;
	temp_f18 *= ((f32 *)&D_80153AB8)[4];
	sp4 = D_80153BC8;
	sp4 *= ((f32 *)&D_80153AB8)[5];

	D_8005BB34->v.ob[0] = (s16)(s32)(D_80153BB8.x + temp_f0);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_80153BB8.y + temp_f12);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_80153BB8.z + temp_f14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_80153BB8.x + temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_80153BB8.y + temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_80153BB8.z + sp4);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = (*(u8 *)&D_80153BCD) << 6;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_80153BB8.x - temp_f0);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_80153BB8.y - temp_f12);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_80153BB8.z - temp_f14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = (*(u8 *)&D_80153BCD) << 6;
	D_8005BB34->v.tc[1] = (*(u8 *)&D_80153BCE) << 6;
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_80153BB8.x - temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_80153BB8.y - temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_80153BB8.z - sp4);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = (*(u8 *)&D_80153BCE) << 6;
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
}

void func_800DB714_EA6C4(void) {
	D_8005BB34->v.ob[0] = (s16)(s32)(D_80153BB8.x + D_80153BC8);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_80153BB8.y + D_80153BC8);
	D_8005BB34->v.ob[2] = (s16)(s32)D_80153BB8.z;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_80153BB8.x - D_80153BC8);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_80153BB8.y + D_80153BC8);
	D_8005BB34->v.ob[2] = (s16)(s32)D_80153BB8.z;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = (*(u8 *)&D_80153BCD) << 6;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_80153BB8.x - D_80153BC8);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_80153BB8.y - D_80153BC8);
	D_8005BB34->v.ob[2] = (s16)(s32)D_80153BB8.z;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = (*(u8 *)&D_80153BCD) << 6;
	D_8005BB34->v.tc[1] = (*(u8 *)&D_80153BCE) << 6;
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_80153BB8.x + D_80153BC8);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_80153BB8.y - D_80153BC8);
	D_8005BB34->v.ob[2] = (s16)(s32)D_80153BB8.z;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = (*(u8 *)&D_80153BCE) << 6;
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
}

/* CURRENT(2775) */
void func_800DBA9C_EAA4C(void) {
	D_8005BB34->v.ob[0] = (s16)(s32)D_80153BB8.x;
	D_8005BB34->v.ob[1] = (s16)(s32)(D_80153BB8.y + D_80153BC8);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_80153BB8.z + D_80153BC8);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (s16)(s32)D_80153BB8.x;
	D_8005BB34->v.ob[1] = (s16)(s32)(D_80153BB8.y + D_80153BC8);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_80153BB8.z - D_80153BC8);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = (u8)D_80153BCD << 6;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (s16)(s32)D_80153BB8.x;
	D_8005BB34->v.ob[1] = (s16)(s32)(D_80153BB8.y - D_80153BC8);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_80153BB8.z - D_80153BC8);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = (u8)D_80153BCD << 6;
	D_8005BB34->v.tc[1] = (u8)D_80153BCE << 6;
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (s16)(s32)D_80153BB8.x;
	D_8005BB34->v.ob[1] = (s16)(s32)(D_80153BB8.y - D_80153BC8);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_80153BB8.z + D_80153BC8);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = (u8)D_80153BCE << 6;
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(&D_8005BB34[-4]), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
}


#ifdef NON_MATCHING
// CURRENT(1200)
void func_800DBE20_EADD0(void) {
	f32 distances[0x1E];
	f32 negOne;
	f32 negTwo;
	f32 four;
	u8 i;
	u8 backPos;
	s16 *position;
	f32 dx;
	f32 dz;

	negOne = -1.0f;
	negTwo = -2.0f;
	four = 4.0f;
	backPos = 0x1D;
	for (i = 0; i < 0x1E; i++) {
		Unk801541F8Entry *effect;

		effect = &D_80154088[i];
		D_80157540[i] = 0xFE;
		if (effect->unk0 == 0xFA) {
			distances[i] = negOne;
		} else if (!(effect->unk1 & 1)) {
			distances[i] = negTwo;
		} else {

		switch (effect->unk0) {
			case 0: {

				position = D_80154318[effect->unkA].position;
				dx = position[0] - (D_80153BA0.x * four);
				dz = position[2] - (D_80153BA0.z * four);
				distances[i] = sqrtf((dx * dx) + (dz * dz));
				break;
			}
			case 1: {

				position = D_80154318[effect->unkA].position;
				dx = position[0] - (D_80153BA0.x * four);
				dz = position[2] - (D_80153BA0.z * four);
				distances[i] = sqrtf((dx * dx) + (dz * dz));
				break;
			}
			case 5: {

				position = D_80154318[effect->unk6].position;
				dx = position[0] - (D_80153BA0.x * four);
				dz = position[2] - (D_80153BA0.z * four);
				distances[i] = sqrtf((dx * dx) + (dz * dz));
				break;
			}
			default:
				osSyncPrintf(D_80143B58_152B08);
				break;
		}
		}
	}

	for (i = 0; i < 0x1E; i++) {
		f32 distance;

		distance = distances[i];
		if (distance == negOne) {
			continue;
		}

		if (distance == negTwo) {
			D_80157540[backPos] = i;
			backPos--;
		} else {
			u8 pos;

			for (pos = 0; pos < 0x1E; pos++) {
				u8 slot;
				u8 end;

				slot = D_80157540[pos];
				end = backPos;
				if (slot == 0xFE) {
					D_80157540[pos] = i;
					pos = 0x1E;
				} else if (distances[slot] < distance) {
					if (pos < backPos) {
						do {
							D_80157540[end] = D_80157540[end - 1];
							end--;
						} while (pos < end);
					}
					D_80157540[pos] = i;
					pos = 0x1E;
				}
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DBE20_EADD0.s")
#endif

// CURRENT(1580)
void func_800DC18C_EB13C(Vec3f *arg0, u8 *arg1, u8 *arg2, u16 arg3, u8 arg4) {
	f32 sp4;
	f32 temp_f0;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f16;
	f32 temp_f18;

	temp_f0 = (f32)arg3 * D_80153AB8.x;
	temp_f12 = (f32)arg3 * D_80153AB8.y;
	temp_f14 = (f32)arg3 * D_80153AB8.z;
	temp_f16 = (f32)arg3 * D_80153AB8.rightX;
	temp_f18 = (f32)arg3 * D_80153AB8.rightY;
	sp4 = (f32)arg3 * D_80153AB8.rightZ;

	D_8005BB34->v.ob[0] = (s16)(s32)(arg0->x + temp_f0);
	D_8005BB34->v.ob[1] = (s16)(s32)(arg0->y + temp_f12);
	D_8005BB34->v.ob[2] = (s16)(s32)(arg0->z + temp_f14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = arg1[0];
	D_8005BB34->v.cn[1] = arg1[1];
	D_8005BB34->v.cn[2] = arg1[2];
	D_8005BB34->v.cn[3] = arg4;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(arg0->x + temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)(arg0->y + temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(arg0->z + sp4);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x800;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = arg1[0];
	D_8005BB34->v.cn[1] = arg1[1];
	D_8005BB34->v.cn[2] = arg1[2];
	D_8005BB34->v.cn[3] = arg4;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(arg0->x - temp_f0);
	D_8005BB34->v.ob[1] = (s16)(s32)(arg0->y - temp_f12);
	D_8005BB34->v.ob[2] = (s16)(s32)(arg0->z - temp_f14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x800;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = arg1[0];
	D_8005BB34->v.cn[1] = arg1[1];
	D_8005BB34->v.cn[2] = arg1[2];
	D_8005BB34->v.cn[3] = arg4;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(arg0->x - temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)(arg0->y - temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(arg0->z - sp4);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = arg1[0];
	D_8005BB34->v.cn[1] = arg1[1];
	D_8005BB34->v.cn[2] = arg1[2];
	D_8005BB34->v.cn[3] = arg4;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)arg0->x;
	D_8005BB34->v.ob[1] = (s16)(s32)arg0->y;
	D_8005BB34->v.ob[2] = (s16)(s32)arg0->z;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0x400;
	D_8005BB34->v.cn[0] = arg2[0];
	D_8005BB34->v.cn[1] = arg2[1];
	D_8005BB34->v.cn[2] = arg2[2];
	D_8005BB34->v.cn[3] = arg4;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 5), 5, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 4, 0, 4, 1, 2, 0);
	gSP2Triangles(D_8005BB2C++, 4, 2, 3, 0, 0, 3, 4, 0);
}

// CURRENT(43188)
#ifdef NON_MATCHING
void func_800DC5B8_EB568(Vec3f *arg0, f32 arg1, s32 arg2, s32 arg3) {
	Vec3f viewDir;
	Vec3f toTarget;
	Vec3f pos;
	Vec3f beamVec;
	Vec3f beamDir;
	f32 beamLen;
	f32 facing;
	f32 angleDelta;
	f32 maxDist;
	f32 four = 4.0f;
	f64 halfTurn = 180.0;
	f32 phase;
	f32 alphaF;
	u32 alpha;
	s32 flicker;
	u8 col[3];
	s32 i;
	u8 strength;

	(void)arg3;

	D_80153BCD = 0x20;
	D_80153BCE = 0x20;

	viewDir.x = D_80153B90.x;
	viewDir.y = D_80153B90.y;
	viewDir.z = D_80153B90.z;
	func_800C1024_CFFD4(&viewDir, &viewDir);

	toTarget.x = (D_80153BA0.x * four) - arg0->x;
	toTarget.y = (D_80153BA0.y * four) - arg0->y;
	toTarget.z = (D_80153BA0.z * four) - arg0->z;
	beamLen = func_800C0FD4_CFF84(&toTarget);
	func_800C1024_CFFD4(&toTarget, &toTarget);

	facing = func_800C1090_D0040(&toTarget, &viewDir);

	if ((((f64)(f32)(s16)(0x4000 - func_80003680_4280(facing)) * halfTurn) / 32768.0) <= halfTurn) {
		angleDelta = (f32)(halfTurn - (((f64)(f32)(s16)(0x4000 - func_80003680_4280(facing)) * halfTurn) / 32768.0));
	} else {
		angleDelta = (f32)-(halfTurn - (((f64)(f32)(s16)(0x4000 - func_80003680_4280(facing)) * halfTurn) / 32768.0));
	}

	if (((f64)angleDelta) < 2.5) {
		strength = 0xFF;
	} else if (((f64)angleDelta) < 5.0) {
		strength = (u8)((f64)(f32)(5.0 - ((f64)angleDelta)) * 102.0);
	}

	alpha = strength;
	if ((arg1 <= 150.0f) && (angleDelta < 15.0f)) {
		alpha = 0xFF;
	}

	maxDist = 3000.0f;
	if ((arg1 > 330.0f) && (arg1 <= (f32)3000.0f)) {
		maxDist = (f32)3000.0f;
		alphaF = (f32)(u32)alpha;
		alpha = (u8)(alphaF * (f32)(0.00035714285714285714 * (f64)((f32)3001.0f - arg1)));
	} else if (maxDist < arg1) {
		alpha = 0;
	}

	if ((s8)arg2 != -1) {
		alpha = (u8)(((f32)alpha * (f32)(s8)arg2) / 100.0f);
	}

	if (D_8013E344_14D2F4 < (u8)alpha) {
		D_8013E344_14D2F4 = alpha;
	}
	if (D_8013E344_14D2F4 >= 0xB5) {
		D_8013E344_14D2F4 = 0xB4;
	}

	if ((angleDelta < 22.0f) && (((f64)angleDelta) > 2.5) && (arg1 < maxDist)) {
		func_800C1128_D00D8(2.0f * facing, &viewDir, &pos);
		func_800C10C0_D0070(&toTarget, &pos, &toTarget);
		func_800C1128_D00D8(beamLen, &toTarget, &beamVec);

		pos.x = (D_80153BA0.x * four) + beamVec.x;
		pos.y = (D_80153BA0.y * four) + beamVec.y;
		pos.z = (D_80153BA0.z * four) + beamVec.z;

		beamDir.x = arg0->x - pos.x;
		beamDir.y = arg0->y - pos.y;
		beamDir.z = arg0->z - pos.z;

		gDPPipeSync(D_8005BB2C++);
		gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, D_100DA00);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
			G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
			G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));

		if (((f64)angleDelta) < 5.0) {
			phase = (f32)(u16)((3001.0 - (f64)arg1) / 16.0);
			flicker = (u16)(s32)(phase * ((f32)0.003921569f * (f32)(0xFF - alpha)));
		} else {
			phase = (f32)(u16)((3001.0 - (f64)arg1) / 16.0);
			flicker = (u16)(s32)(phase / (angleDelta / four));
		}

		if (flicker >= 0x100) {
			flicker = 0xFF;
		}

		phase = (f32)(u16)(arg1 / 20.0f);
		for (i = 0; i < 6; i++) {
			u32 scale = (u32)(D_8013DFB4_14CF64[i] * phase);
			f32 d = D_8013DFCC_14CF7C[i];

			col[0] = D_8013E330_14D2E0[(i * 3) + 0];
			col[1] = D_8013E330_14D2E0[(i * 3) + 1];
			col[2] = D_8013E330_14D2E0[(i * 3) + 2];

			D_80153BB8.x = (f32)(arg0->x - (d * (beamDir.x / four)));
			D_80153BB8.y = (f32)(arg0->y - (d * (beamDir.y / four)));
			D_80153BB8.z = (f32)(arg0->z - (d * (beamDir.z / four)));
			D_80153BC4 = col;
			D_80153BC8 = (f32)(u16)scale;
			D_80153BCC = flicker;
			func_800DB350_EA300();
		}

		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, D_100DC00);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
			G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0,
			G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));

		D_80153BB8.x = (f32)((f64)arg0->x + ((f64)(beamDir.x / 3.0f) * 0.8));
		D_80153BB8.y = (f32)((f64)arg0->y + ((f64)(beamDir.y / 3.0f) * 0.8));
		D_80153BB8.z = (f32)((f64)arg0->z + ((f64)(beamDir.z / 3.0f) * 0.8));
		D_80153BC4 = &D_80153B80;
		D_80153BC8 = (f32)(u16)(phase * 1.0f);
		D_80153BCC = flicker;
		func_800DB350_EA300();

		D_80153BB8.x = arg0->x + ((beamDir.x / 3.0f) * 2.0f);
		D_80153BB8.y = arg0->y + ((beamDir.y / 3.0f) * 2.0f);
		D_80153BB8.z = arg0->z + ((beamDir.z / 3.0f) * 2.0f);
		D_80153BC8 = (f32)(u16)(phase * 3.0);
		func_800DB350_EA300();
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DC5B8_EB568.s")
#endif

// DrawNonZBufferedEffects
void func_800DD5E0_EC590(void) { D_80156EDA = 0; func_800C978C_D873C(); }

#ifdef NON_MATCHING
void func_800DD604_EC5B4(void) {
	u8 i;
	u8 effect;
	s32 type;
	s32 invalid;

	D_80153B88 = 0;
	func_800C8814_D77C4();
	func_800CDDE4_DCD94();
	func_800DBE20_EADD0();
	func_800E7660_F6610();

	gDPPipeSync(D_8005BB30++);
	gSPClearGeometryMode(D_8005BB30++, G_ZBUFFER | G_TEXTURE_ENABLE | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH | G_CLIPPING | 0xFF60CDF8);
	gDPSetCycleType(D_8005BB30++, G_CYC_1CYCLE);
	gSPSetGeometryMode(D_8005BB30++, G_ZBUFFER | G_SHADE | G_SHADING_SMOOTH);
	gDPSetRenderMode(D_8005BB30++, G_RM_AA_ZB_XLU_LINE, G_RM_NOOP2);
	gDPSetCombineMode(D_8005BB30++, G_CC_SHADE, G_CC_SHADE);
	gDPPipeSync(D_8005BB30++);

	func_800DE2E8_ED298();
	func_800CB4F8_DA4A8();

	for (i = 0; i < 0x1E; i++) {
		effect = D_80157540[i];

		if (D_80156EDA >= 0x321) {
			osSyncPrintf(D_80143B8C_152B3C);
			continue;
		}

		if (D_80052ACB != 0) {
			osSyncPrintf(D_80143BD4_152B84);
			continue;
		}

		if (effect == 0xFE) {
			continue;
		}

		type = D_80154088[effect].unk0;
		if (type == 0xFA) {
			continue;
		}

		switch (type) {
			case 1:
				func_800C3300_D22B0(effect);
				continue;
			case 0:
				func_800C25F8_D15A8(effect);
				continue;
			case 2:
				func_800C5D14_D4CC4(effect);
				continue;
			case 3:
				func_800C927C_D822C(effect);
				continue;
			case 4:
				func_800CABC8_D9B78(effect);
				continue;
			case 5:
				func_800CD7FC_DC7AC(effect);
				continue;
			case 9:
				func_800CE6E8_DD698(effect);
				continue;
			case 8:
				func_800D1C24_E0BD4(effect);
				continue;
			case 6:
				func_800D6290_E5240(effect);
				continue;
			case 7:
				func_800D7284_E6234(effect);
				continue;
		}

		if (type >= 10) {
			invalid = 1;
		} else {
			invalid = 0;
		}
		if (invalid != 0) {
			osSyncPrintf(D_80143C08_152BB8, type);
		} else {
			osSyncPrintf(D_80143C40_152BF0, type);
		}
	}

	for (i = 0; i < 0x16; i++) {
		if (D_80156EDA >= 0x321) {
			osSyncPrintf(D_80143C74_152C24);
			continue;
		}

		if (D_80052ACB != 0) {
			osSyncPrintf(D_80143CBC_152C6C);
			continue;
		}

		type = D_801541F8[i].unk0;
		switch (type) {
			case 22:
				func_800C4274_D3224();
				continue;
			case 10:
				func_800C4CB8_D3C68();
				continue;
			case 15:
				func_800CC090_DB040();
				continue;
			case 16:
				func_800CCD54_DBD04();
				continue;
			case 18:
				func_800CF2E0_DE290();
				continue;
			case 21:
				func_800D2ECC_E1E7C();
				continue;
			case 24:
				func_800D45B4_E3564();
				continue;
			case 25:
				func_800D4C10_E3BC0();
				continue;
			case 26:
				func_800D5AF4_E4AA4();
				continue;
			case 27:
				func_800D7870_E6820();
				continue;
			case 28:
				func_800D8190_E7140();
				continue;
			case 29:
				func_800D9294_E8244();
				continue;
			case 11:
			case 12:
			case 13:
			case 14:
			case 17:
			case 19:
			case 20:
			case 23:
			case 31:
				continue;
			case 30:
				func_800D978C_E873C();
				continue;
		}

		if ((type >= 0) && (type < 10)) {
			osSyncPrintf(D_80143CF0_152CA0, type);
		} else {
			osSyncPrintf(D_80143D2C_152CDC, type);
		}
	}

	if ((currentLevel == LEVEL_JAVA) && (func_8000726C_7E6C(0x1EULL) == 0)) {
		func_800E2ED4_F1E84();
	} else if ((currentLevel == LEVEL_SIBERIA) && (D_80052ACA != 2)) {
		func_800E32C4_F2274();
	}

	func_800C6D80_D5D30();
	func_800D10D0_E0080();

	if (D_8013E344_14D2F4 >= 6) {
		func_800E360C_F25BC();
	}

	if (D_80156EDA >= 0x28B) {
		D_80156ED9 = 1;
	} else if (D_80156EDA >= 0x321) {
		D_80156ED9 = 2;
	} else {
		D_80156ED9 = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DD604_EC5B4.s")
#endif

void func_800DDB18_ECAC8(void) {
	u8 i;

	for (i = 0; i < 0x50; i++) {
		D_80156EF0[i].unkA = 0;
	}
	D_80157530 = 0;
	D_80157531 = 0;
}

u8 func_800DDB60_ECB10(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u16 arg4) {
	u8 slot;
	u8 i;
	EffectParticleConfig *params;
	EffectParticleColor *colorParams;

	if ((D_80157530 >= 0x50) || (arg4 == 0)) {
		return 0xFF;
	}

	params = &D_8013DFF4_14CFA4[arg3];
	D_80156EF0[D_80157531].unk0 = arg0;
	D_80156EF0[D_80157531].unk2 = arg1;
	D_80156EF0[D_80157531].unk4 = arg2;
	D_80156EF0[D_80157531].unkC = arg3;
	D_80156EF0[D_80157531].unkF = 0;
	D_80156EF0[D_80157531].unkA = arg4;
	D_80156EF0[D_80157531].unk10 = params->sizeStep;
	D_80156EF0[D_80157531].unk11 = params->heightStep;
	D_80156EF0[D_80157531].unk12 = params->fadeStep;

	if (arg3 == 0xE) {
		D_80156EF0[D_80157531].unkE = 0;
	} else {
		D_80156EF0[D_80157531].unkE = func_800038E0_44E0() % params->phaseCount;
	}

	slot = D_80157531;
	colorParams = &((EffectParticleColor *)D_8013E06C_14D01C)[arg3];
	D_80156EF0[D_80157531].unkD = colorParams->alpha;
	D_80156EF0[D_80157531].unk6 = colorParams->r;
	D_80156EF0[D_80157531].unk7 = colorParams->g;
	D_80156EF0[D_80157531].unk8 = colorParams->b;

	for (i = slot; i < 0x50; i++) {
		if (D_80156EF0[i].unkA == 0) {
			D_80157531 = i;
			i = 0x50;
		}
	}

	D_80157530 += 1;
	return slot;
}

void func_800DDD30_ECCE0(u8 arg0, s16 arg1, s16 arg2, s16 arg3) {
	if (arg0 != 0xFF) {
		UnkFC8E8Entry *entry = &D_80156EF0[arg0];
		entry->unk0 = arg1;
		entry->unk2 = arg2;
		entry->unk4 = arg3;
	}
}

void func_800DDD90_ECD40(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
	if (arg0 != 0xFF) {
		UnkFC8E8Entry *entry = &D_80156EF0[arg0];
		entry->unk6 = arg1;
		entry->unk7 = arg2;
		entry->unk8 = arg3;
	}
}

void func_800DDDE4_ECD94(u8 arg0, u8 arg1) {
	if (arg0 != 0xFF) {
		UnkFC8E8Entry *entry = &D_80156EF0[arg0];
		entry->unkA = arg1;
	}
}

void func_800DDE1C_ECDCC(u8 arg0, u8 arg1)
{
	if (arg0 != 0xFF)
	{
		D_80156EF0[arg0].unkD = arg1;
	}
}

void func_800DDE54_ECE04(u8 arg0, s8 arg1) {
	if (arg0 != 0xFF) {
		D_80156EF0[arg0].unk12 = arg1;
	}
}

void func_800DDE90_ECE40(u8 arg0, s8 arg1, s8 arg2) {
	if (arg0 != 0xFF) {
		D_80156EF0[arg0].unk10 = arg1;
		D_80156EF0[arg0].unk11 = arg2;
	}
}

void func_800DDEE0_ECE90(u8 arg0, u8 arg1) {
	if (arg0 != 0xFF) {
		D_80156EF0[arg0].unkF = arg1;
	}
}

void func_800DDF18_ECEC8(u8 arg0) {
	if (arg0 != 0xFF) {
		D_80156EF0[arg0].unkA = 0;

		if (arg0 < D_80157531) {
			D_80157531 = arg0;
		}

		D_80157530 -= 1;
	}
}

void func_800DDF78_ECF28(s16 arg0)
{
	u8 *entry;
	osSyncPrintf(&D_80143D6C_152D1C, arg0);
	entry = &D_80157608;
	D_80157560 = entry;
	;
	osSyncPrintf(&D_80143D7C_152D2C, D_80157560[0xC], D_80157560[0xD], D_80157560[0xE], D_80157560[0xF], D_80157560[0x10], D_80157560[0x11], D_80157560[0x12], D_80157560[0x13]);
	;
	osSyncPrintf(&D_80143DA4_152D54, D_80157560[0x14], D_80157560[0x15], D_80157560[0x16], D_80157560[0x17], D_80157560[0x18], D_80157560[0x19], D_80157560[0x1A], D_80157560[0x1B]);
	entry = D_80157560;
	osSyncPrintf(&D_80143DCC_152D7C, entry[0x1C], entry[0x1D], entry[0x1E], entry[0x1F], entry[0x20], entry[0x21], entry[0x22], entry[0x23]);
	entry = D_80157560;
	osSyncPrintf(&D_80143DF4_152DA4, entry[0], entry[1], entry[2], entry[3], (f64)(*((f32 *)(&D_80157608))));
	entry = D_80157560;
	osSyncPrintf(&D_80143E14_152DC4, entry[4], entry[5], entry[6], entry[7], (f64)D_8015760C);
	entry = D_80157560;
	osSyncPrintf(&D_80143E34_152DE4, entry[8], entry[9], entry[0xA], entry[0xB]);
	osSyncPrintf(&D_80143E50_152E00, (f64)D_80157610);
	osSyncPrintf(&D_80143E58_152E08);
}

void func_800DE150_ED100(void) {
	s32 i;
	s16 activeCount;
	UnkFC8E8Entry *entry;

	i = 0;
	activeCount = 0;
	do {
		entry = &D_80156EF0[i];
		if (entry->unkA != 0) {
			activeCount++;
			if (entry->unkF == 0) {
				s8 decay;

				decay = entry->unk12;
				if (decay < entry->unkD) {
					entry->unkD = entry->unkD - decay;
					entry->unkE++;
					if (entry->unkE >= D_8013DFF4_14CFA4[entry->unkC].phaseCount) {
						entry->unkE = 0;
					}

					entry->unkA += entry->unk10;
					if (entry->unkA <= 0) {
						func_800DDF18_ECEC8((u8)i);
					}

					entry->unk2 += entry->unk11;
					if (entry->unkC == 0xE) {
						entry->unk6 = D_8013E0A8_14D058[((s32)entry->unkE >> 1) * 3];
						entry->unk7 = D_8013E0A8_14D058[((s32)entry->unkE >> 1) * 3 + 1];
						entry->unk8 = D_8013E0A8_14D058[((s32)entry->unkE >> 1) * 3 + 2];
					}
				} else {
					func_800DDF18_ECEC8((u8)i);
				}
			} else {
				entry->unkF--;
			}
		}
		i = (i + 1) & 0xFF;
	} while (i < 0x50);

	D_80157530 = activeCount;
}

// CURRENT (1470)
#ifdef NON_MATCHING
void func_800DE2E8_ED298(void) {
	s32 i;
	Vec3f *position;

	position = &D_80153BB8;
	i = 0;
	do {
		UnkFC8E8Entry *entry;
		u8 type;
			f32 x, y, z;
		EffectParticleConfig *cfg;
			s32 texOffset;

		entry = &D_80156EF0[i];
		if ((entry->unkA != 0) && (func_800B9228_C81D8(entry->unk0, entry->unk4, (s16)(s32)(D_80047954 * 4.0f), (s16)(s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) && (entry->unkF == 0)) {
			type = entry->unkC;
			cfg = &D_8013DFF4_14CFA4[type];

			if ((type != 0xFF) || (entry->unkE != 0xFF)) {
				gDPPipeSync(D_8005BB2C++);
				if (cfg->format == 0) {

					texOffset = ((cfg->height * entry->unkE) * cfg->width) / 2;
					gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
					gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
					gDPSetAlphaDither(D_8005BB2C++, G_AD_PATTERN);
					gDPLoadTextureBlock_4b(D_8005BB2C++, (D_8013E0C0_14D070[type] + texOffset) & 0x1FFFFFFF, G_IM_FMT_I, cfg->width, cfg->height, 0, G_TX_CLAMP, G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
				} else if (cfg->format == 1) {

					texOffset = (cfg->height * entry->unkE) * cfg->width;
					gDPSetCombineLERP(D_8005BB2C++, SHADE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0);
					gDPLoadTextureBlock(D_8005BB2C++, (D_8013E0C0_14D070[type] + texOffset) & 0x1FFFFFFF, G_IM_FMT_IA, G_IM_SIZ_8b, cfg->width, cfg->height, 0, G_TX_CLAMP, G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
				}

				D_80153BCD = cfg->width;
				D_80153BCE = cfg->height;
				gDPPipeSync(D_8005BB2C++);
			}

			x = entry->unk0;
			y = entry->unk2;
			z = entry->unk4;
			D_80153BB8.x = x;
			D_80153BB8.y = y;
			D_80153BB8.z = z;
			D_80153BC4 = &entry->unk6;
			D_80153BC8 = (f32)entry->unkA;
			D_80153BCC = entry->unkD;

			switch (cfg->drawMode) {
				case 0:
					func_800DB350_EA300();
					break;

				case 2:
					func_800DAFCC_E9F7C();
					break;

				default:
					osSyncPrintf(&D_80143E78_152E28);
					break;
			}
		}

		i = (i + 1) & 0xFF;
	} while (i < 0x50);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DE2E8_ED298.s")
#endif

void func_800DE9B8_ED968(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	func_800DDB60_ECB10(arg0, arg1, arg2, 1, (s32) arg3);
}

void func_800DEA08_ED9B8(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s8 arg4, s8 arg5, u8 arg6, u8 arg7, u8 arg8, u8 arg9, u8 arg10) {
	u8 slot;
	UnkFC8E8Entry *entry;

	slot = func_800DDB60_ECB10(arg0, arg1, arg2, 3, (s32) arg3);
	if (slot != 0xFF) {
		entry = &D_80156EF0[slot];
		entry->unkD = arg7;
		entry->unk12 = (s8) ((s32) arg7 / (s32) arg6);
		entry->unk6 = arg8;
		entry->unk7 = arg9;
		entry->unk8 = arg10;
		entry->unk10 = arg4;
		entry->unk11 = arg5;
	}
}

void func_800DEADC_EDA8C(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	u32 slot;
	s16 val;

	slot = func_800DDB60_ECB10(arg0, arg1, arg2, 2, (func_800038E0_44E0() % 15) + 0x19);
	if (slot != 0xFF) {
		val = arg3 + 0x78;
		if (val >= 0x100) {
			val = 0xFF;
		}
		D_80156EF0[slot & 0xFF].unkD = val;
	}
}

void func_800DEB7C_EDB2C(u16 arg0, u8 arg1, s16 arg2) {
	s16 sp46;
	s16 sp44;
	s32 unused;
	s16 sp3E;
	s16 sp3C;
	u8 sp3B;
	s16 sp38;
	s16 sp36;
	u8 slot;

	sp3E = D_8013DB10_14CAC0[currentLevel - 1][D_80052B34->unk1A].xOffset * 2;
	sp3C = D_8013DB10_14CAC0[currentLevel - 1][D_80052B34->unk1A].yOffset * 2;
	sp3B = D_8013DB10_14CAC0[currentLevel - 1][D_80052B34->unk1A].type + arg0 / 4;
	sp36 = sins(D_80052B34->unk6);
	sp38 = coss(D_80052B34->unk6);
	sp46 = (s16)(s32)(D_80052B34->unk0 + ((f32)sp38 / 32768.0) * sp3E + ((f32)sp36 / 32768.0) * (f64)arg2 + (f64)(func_800038E0_44E0() % 8) - 4.0);
	sp44 = D_80052B34->unk2 + sp3C;
	sp36 = coss(D_80052B34->unk6);
	sp38 = sins(D_80052B34->unk6);
	slot = func_800DDB60_ECB10(sp46, sp44, (s16)(s32)(D_80052B34->unk4 + ((f32)sp38 / 32768.0) * (f64)sp3E - ((f64)(f32)sp36 / 32768.0) * (f64)arg2 + (f64)(func_800038E0_44E0() % 8) - 4.0), 3, sp3B);
	if (slot != 0xFF) {
		D_80156EF0[slot].unkD = (s8)(0xDC - arg1 / 2);
		D_80156EF0[slot].unk6 = arg1;
		D_80156EF0[slot].unk7 = arg1;
		D_80156EF0[slot].unk8 = arg1;
		D_80156EF0[slot].unk10 = (s8)(sp3B / 12);
		D_80156EF0[slot].unk11 = (s8)(sp3B / 8);
	}
}

u8 func_800DEE5C_EDE0C(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4) {
	u8 slot;

	slot = func_800DDB60_ECB10(arg0, arg1, arg2, 6, 0xA);
	func_800DDE54_ECE04(slot, arg4);
	func_800DDE90_ECE40(slot, arg3, 0);
	return slot;
}

void func_800DEED0_EDE80(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4) {
	func_800DDE1C_ECDCC(func_800DDB60_ECB10(arg0, arg1, arg2, 5, (s32) arg3), arg4);
}

void func_800DEF2C_EDEDC(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4) {
	u8 slot;
	u8 var_s0;
	u8 var_s1;

	var_s0 = 0;
	var_s1 = 0;
	for (var_s1 = 0; var_s1 < arg4; var_s1++) {
			slot = func_800DDB60_ECB10(arg0, arg1, arg2, 4, 2);
			func_800DDE1C_ECDCC(slot, arg3);
			func_800DDEE0_ECE90(slot, var_s0);
			var_s0 += 0xC;
	}
}

#ifdef NON_MATCHING
// CURRENT(4882): typed palettes, promoted radii, and byte final-loop index.
s16 func_800DF038_EDFE8(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, s8 *arg5) {
	s16 result;
	s16 i;
	s16 j;
	s32 spreadCount;
	s32 halfRadius;
	s32 radius;
	u16 temp;
	u16 clampedRadius;
	u16 r0;
	u8 tempColors[4][3];
	u8 loopCount;
	u8 k;
	s32 slot;

	func_800038E0_44E0();
	clampedRadius = arg3;
	radius = clampedRadius;

	if (func_800B93AC_C835C(arg0, arg2, (u16)(clampedRadius * 2), (s16) (D_80047954 * 4.0f), (s32) (D_8004795C * 4.0f),
			0x4000 - D_80047950) == 0) {
		return -3;
	}

	if (radius < 0x1E) {
		clampedRadius = 0x1E;
		radius = 0x1E;
	}

	if (radius >= 0x12D) {
		clampedRadius = 0x12C;
	}

	if ((arg1 < (D_80222A70 - 0x32)) && ((currentLevel != 4) || (D_80047F94 != 2) || (gameplayMode != 0xB))) {
		for (i = 0; i < 4; i++) {
			for (j = 0; j < 3; j++) {
				if (currentLevel == 5) {
					tempColors[i][j] = D_8013DF9C_14CF4C[i][j];
				} else {
					tempColors[i][j] = D_8013DF90_14CF40[i][j];
				}
			}
		}

		radius = clampedRadius;
		result = func_800C613C_D50EC(arg0, arg1, arg2, clampedRadius, tempColors[0]);
		spreadCount = radius / 10;
		if (spreadCount > 0) {
			halfRadius = radius >> 1;
			i = 0;
			do {
				r0 = func_800038E0_44E0();
				func_800D8FA0_E7F50((r0 % radius) + arg0 - halfRadius, arg1,
					(func_800038E0_44E0() % radius) + arg2 - halfRadius);
				i++;
			} while (i < spreadCount);
		}
	} else {
		result = func_800C613C_D50EC(arg0, arg1, arg2, clampedRadius, arg5);
	}

	if (result == -3) {
		return result;
	}

	radius = clampedRadius;
	if (radius >= 0x12C) {
		func_80135D44_144CF4(arg0, arg1, arg2, 8.0f);
	} else if (radius >= 0x96) {
		func_80135D44_144CF4(arg0, arg1, arg2, 3.0f);
	} else if (radius >= 0x50) {
		func_80135D44_144CF4(arg0, arg1, arg2, 2.0f);
	}

	if (radius >= 0x51) {
		spreadCount = radius / 10;
		func_800DEE5C_EDE0C(arg0, arg1, arg2, spreadCount + 0x14, 6);
		func_80137234_1461E4(0x15F, arg0, arg1, arg2, spreadCount);
	}

	func_800DDE1C_ECDCC(func_800DDB60_ECB10(arg0, arg1, arg2, 7, radius * 8), 0xB4);
	slot = func_800DDB60_ECB10(arg0, arg1, arg2, 7, radius * 6);
	func_800DDE1C_ECDCC(slot, 0x6E);
	func_800DDEE0_ECE90(slot, 1);

	if (D_80153B87 == 0) {
		temp = radius / 6;
		if ((u16) temp >= 0x29) {
			temp = 0x28;
		}
		func_800C541C_D43CC(arg0, arg1, arg2, 0, 0x7F, 0, clampedRadius, 0xB4, temp, 6, 0xFF, 0xFF, 0xFF);
	}

	if (radius < 0x96) {
		func_80137234_1461E4(0xEA, arg0, arg1, arg2, clampedRadius);
	} else if (radius >= 0x191) {
		func_80137234_1461E4(0xE8, arg0, arg1, arg2, clampedRadius);
	} else {
		func_80137234_1461E4(0xE9, arg0, arg1, arg2, clampedRadius);
	}

	loopCount = arg4;
	if (loopCount > 0) {
		k = 0;
		do {
			func_800C7924_D68D4(arg0, arg1, arg2, radius, result, clampedRadius,
				D_8013DD20_14CCD0[func_800038E0_44E0() % 8], 0);
			k = (k + 1) & 0xFF;
		} while (k < loopCount);
	}

	if (radius < 0x96) {
		func_800DEA08_ED9B8(arg0, arg1, arg2, radius, radius / 16, 1, 0x1E, 0xFA, 0x32, 0x32, 0x32);
	} else {
		func_800DEA08_ED9B8(arg0, arg1, arg2, radius, radius / 16, 1, 0x3C, 0xFA, 0x32, 0x32, 0x32);
	}

	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DF038_EDFE8.s")
#endif

s16 func_800DF848_EE7F8(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4) {
	s32 randVal;
	s16 colorRow;
	u8 tempColors[4][3];
	s16 i;
	s16 j;

	colorRow = func_800038E0_44E0() % 10;
	randVal = func_800038E0_44E0();

	for (i = 0; i < 4; i++) {
		for (j = 0; j < 3; j++) {
			if (i < 2) {
				tempColors[i][j] = D_8013E348_14D2F8[colorRow][i * 3 + j];
			} else {
				tempColors[i][j] = D_8013E384_14D334[(s16)(randVal % 10)][i * 3 + j - 6];
			}
		}
	}

	return func_800DF038_EDFE8(arg0, arg1, arg2, arg3, arg4, tempColors[0]);
}

s32 func_800DF9C8_EE978(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, void *arg5) {
	s32 result;

	D_80153B87 = 1;
	result = func_800DF038_EDFE8(arg0, arg1, arg2, arg3, (s32) arg4, arg5);
	D_80153B87 = 0;
	return result;
}

void func_800DFA34_EE9E4(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4) {
	D_80153B87 = 1;
	func_800DF848_EE7F8(arg0, arg1, arg2, arg3, (s32) arg4);
	D_80153B87 = 0;
}

void func_800DFA98_EEA48(s8 arg0[][3]) {
	s32 i;
	s32 j;
	s16 temp;

	for (i = 0; i < 4; i = (i + 1) & 0xFF) {
		for (j = 0; j < 3; j = (j + 1) & 0xFF) {
			temp = D_8013DF84_14CF34[(i * 3) + j] + (func_800038E0_44E0() % 120) - 0x3C;
			if (temp < 0) {
				temp = 0;
			} else if (temp >= 0x100) {
				temp = 0xFF;
			}
			arg0[i][j] = temp;
		}
	}
}

// large explosion effect with smaller random explosions
#ifdef NON_MATCHING
void func_800DFBA8_EEB58(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4) {
	u8 unused; /* Preserve the original local stack layout. */
	s8 sp68[4][3];
	u16 tempS1;
	u16 tempS2;
	u16 tempS3;
	s32 count;
	s32 radius;

	func_800DF038_EDFE8(arg0, arg1, arg2, arg3, 0, D_8013DF84_14CF34);
	func_80135D44_144CF4(arg0, arg1, arg2, 10.0f);

	count = arg4;
	arg4 = 1;
	radius = arg3;
	if (count >= 2) {
		do {
			func_800DFA98_EEA48(sp68);
			func_801371B8_146168(0, 0xE8, arg0, arg1, arg2, 0.6f);
			tempS1 = func_800038E0_44E0();
			tempS2 = func_800038E0_44E0();
			tempS3 = func_800038E0_44E0();
			arg3 = ((func_800038E0_44E0() % (radius / 2)) + radius) - (radius / 4);
			func_800DF9C8_EE978(
				((tempS1 % radius) * 2) + arg0 - radius,
				((tempS2 % radius) * 2) + arg1 - radius,
				((tempS3 % radius) * 2) + arg2 - radius,
				arg3,
				0,
				sp68);
			arg4++;
		} while (arg4 < count);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DFBA8_EEB58.s")
#endif

void func_800DFE68_EEE18(s16 arg0, s16 arg1, s16 arg2) {
	func_800DEA08_ED9B8(arg0, arg1, arg2, 0xF, 2, 1, 0x14, 0xFF, 0xFF, 0xFA, 0xDC);
}

void func_800DFEE4_EEE94(s16 arg0, s16 arg1, s16 arg2) {
	func_800DEA08_ED9B8(arg0, arg1, arg2, 0xF, 2, 1, 0x14, 0xFF, 0xFF, 0xFA, 0xDC);
	func_800C541C_D43CC(arg0, arg1, arg2, 0, 0x7F, 0, 0x32, 0xFA, func_800038E0_44E0() % 4, 3, 0xFF, 0xFF, 0xDC);
}

void func_800DFFC4_EEF74(s16 arg0, s16 arg1, s16 arg2) {
	if (D_80031420 & 3) {
		func_800DEA08_ED9B8(arg0, arg1, arg2, 0x28, 8, 4, 0x14, 0xC8, D_8013E3C0[currentLevel * 3 - 3], D_8013E3C0[currentLevel * 3 - 2], D_8013E3C0[currentLevel * 3 - 1]);
		func_800CA5EC_D959C(arg0, arg1, arg2, 0, 0x7F, 0, 0x32, 4, func_800038E0_44E0() % 4, 0xFF, D_8013E3C0[currentLevel * 3 - 3], D_8013E3C0[currentLevel * 3 - 2], D_8013E3C0[currentLevel * 3 - 1], 0xFF);
	}
}

void func_800E00F4_EF0A4(u8 arg0, u8 arg1) {
	Unk801541F8Entry *entry = &D_801541F8[arg1];

	entry->unk0 = arg0;
	entry->unk1 = 0;
	entry->unk4 = 0;
	entry->unk6 = -6;
	entry->unk8 = -6;
}

// Init Special Effects?
void func_800E0134_EF0E4(void) {
	u8 i;
	u16 j;
	u16 k;
	LaserEntry *entry;
	u8 tempA3;
	u8 tempA0;

	osSyncPrintf(&D_80143EB4_152E64);
	D_80153AB0 = 0;
	D_80153B87 = 0;
	D_80156ED9 = 0;

	tempA0 = 0x28;
	tempA3 = 0xFF;
	D_80153B80 = tempA3;
	*(&D_80153B80 + 1) = tempA3;
	*(&D_80153B80 + 2) = tempA3;
	D_80153B84 = tempA0;
	*(&D_80153B84 + 1) = tempA0;
	*(&D_80153B84 + 2) = tempA0;

	func_800A1764_B0714();
	func_800E2668_F1618();
	func_800DDB18_ECAC8();

	for (i = 0; i < 0x1E; i++) {
		D_80154088[i].unk0 = 0xFA;
		D_80154088[i].unk4 = 0;
	}

	for (i = 0; i < 0x16; i++) {
		D_801541F8[i].unk0 = 0xFA;
		D_801541F8[i].unk4 = 0;
	}

	for (k = 0; k < 0x190; k++) {
		D_80154318[k].unk0 = 0;
		D_80154318[k].unk1 = 0xFF;
	}

	entry = D_80152D00;
	for (j = 0; j < 0x40; j++) {
		entry[j].type = 0;
	}

	D_80154310 = 0;
	D_8015430E = 0;
	D_80154304 = 0;

	func_800E00F4_EF0A4(0x0A, 0x00);
	func_800E00F4_EF0A4(0x0B, 0x01);
	func_800E00F4_EF0A4(0x0C, 0x02);
	func_800E00F4_EF0A4(0x0D, 0x03);
	func_800E00F4_EF0A4(0x0E, 0x04);
	func_800E00F4_EF0A4(0x0F, 0x05);
	func_800E00F4_EF0A4(0x10, 0x06);
	func_800E00F4_EF0A4(0x13, 0x09);
	func_800E00F4_EF0A4(0x12, 0x08);
	func_800E00F4_EF0A4(0x14, 0x0A);
	func_800E00F4_EF0A4(0x11, 0x07);
	func_800E00F4_EF0A4(0x15, 0x0B);
	func_800E00F4_EF0A4(0x16, 0x0C);
	func_800E00F4_EF0A4(0x17, 0x0D);
	func_800E00F4_EF0A4(0x18, 0x0E);
	func_800E00F4_EF0A4(0x19, 0x0F);
	func_800E00F4_EF0A4(0x1A, 0x10);
	func_800E00F4_EF0A4(0x1B, 0x11);
	func_800E00F4_EF0A4(0x1C, 0x12);
	func_800E00F4_EF0A4(0x1D, 0x13);
	func_800E00F4_EF0A4(0x1E, 0x14);
	func_800E00F4_EF0A4(0x1F, 0x15);

	D_8015430C = 0;
	if (currentLevel == 1) {
		func_801184E4_127494(0);
	} else if (currentLevel == 2) {
		func_801184E4_127494(1);
	}

	func_800E552C_F44DC();
}

// Debug - Print Special Effects Info
void func_800E03FC_EF3AC(void) {
	u8 i;

	osSyncPrintf(&D_80143ED0_152E80);
	for (i = 0; i < 0x1E; i++) {
		if (D_80154088[i].unk0 != 0xFA) {
			osSyncPrintf(&D_80143EF0_152EA0, i, D_80154088[i].unk0, D_80154088[i].unk4);
		}
	}
}

void func_800E049C_EF44C(s16 arg0, s16 arg1, s16 arg2) {
	s32 pad;
	u16 sp42;
	u16 sp40;

	sp40 = func_800038E0_44E0();
	sp42 = func_800038E0_44E0();
	func_800CA5EC_D959C(arg0, arg1, arg2, (s8) (((s32) sp40 % 10) - 0x14), 0x7F, ((s32) sp42 % 10) - 0x14, 0x28, 6, (func_800038E0_44E0() % 3) + 3, 0xA0, 0xB4, 0xBE, 0xFF, 0xC8);
}

void func_800E05B4_EF564(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s32 pad;
	u16 sp52;
	u16 sp50;
	u16 sp4E;

	if ((D_80031420 & 3) == 3) {
		arg3 = arg3 / 16;
		if (arg3 <= 0) {
			arg3 = 1;
		}
		if (arg3 >= 16) {
			arg3 = 0xF;
		}

		sp4E = func_800038E0_44E0();
		sp50 = func_800038E0_44E0();
		sp52 = func_800038E0_44E0();
		pad = func_800038E0_44E0();

		func_800CA5EC_D959C(arg0, arg1, arg2,
			(s8) (((s32) sp4E % 120) - 0x3C), 0x7F, ((s32) sp50 % 120) - 0x3C,
			arg3 + 0xF, 4, ((s32) sp52 % arg3) + arg3,
			(pad % 90) + 0x28,
			0xC8, 0, 0x14, 0xFF);
	}
}

void func_800E0764_EF714(s16 arg0) {
	s32 pad;
	u16 sp52;
	u16 sp50;
	u16 sp4E;
	u16 sp4C;

	if ((D_80031420 & 3) == 3) {
		arg0 = arg0 / 16;
		if (arg0 <= 0) {
			arg0 = 1;
		}
		if (arg0 >= 0x10) {
			arg0 = 0xF;
		}
		sp4C = func_800038E0_44E0();
		sp4E = func_800038E0_44E0();
		sp50 = func_800038E0_44E0();
		sp52 = func_800038E0_44E0();
		pad = func_800038E0_44E0();
		func_800CA5EC_D959C(D_80052B34->unk0, (s16) (((s32) sp4C % 20) + D_80052B34->unk2 + 0x1E), D_80052B34->unk4, (s8) (((s32) sp4E % 120) - 0x3C), 0x7F, ((s32) sp50 % 120) - 0x3C, arg0 + 0xF, 4, ((s32) sp52 % arg0) + arg0, (pad % 90) + 0x28, 0xC8, 0, 0x14, 0xFF);
	}
}

void func_800E093C_EF8EC(s16 arg0, s16 arg1, s16 arg2, u16 arg3) {
	s32 effectIndex;
	u16 rand0;
	u16 rand1;
	u16 rand2;

	if (D_80031420 & 3) {
		rand2 = func_800038E0_44E0();
		rand1 = func_800038E0_44E0();
		rand0 = func_800038E0_44E0();
		effectIndex = func_800CA5EC_D959C(arg0, arg1, arg2, (s8) (((s32) rand2 % 50) - 0x19), 0x7F,
			((s32) rand1 % 50) - 0x19, 0x50, 8, ((s32) rand0 % 10) + 0x14,
			(func_800038E0_44E0() % 0x37) + 0x23,
			D_8013E3C0[currentLevel * 3 - 3], D_8013E3C0[currentLevel * 3 - 2], D_8013E3C0[currentLevel * 3 - 1], 0xFF);
		if (effectIndex != 0xFB) {
			*(s16 *)&D_80154318[D_80154088[(u8) effectIndex].unk8].unkE = arg3;
		}
	}
}

void func_800E0AE0_EFA90(s16 arg0, s16 arg1, s16 arg2, u16 arg3) {
	s32 effectIndex;
	u16 sp4A;
	u16 sp48;
	u16 sp46;

	if (D_80031420 & 3) {
		sp46 = func_800038E0_44E0();
		sp48 = func_800038E0_44E0();
		sp4A = func_800038E0_44E0();
		effectIndex = func_800CA5EC_D959C(arg0, arg1, arg2, (s8) (((s32) sp46 % 50) - 0x19), 0x50,
			((s32) sp48 % 50) - 0x19, 0x19, 5, ((s32) sp4A % 8) + 0xC,
			(func_800038E0_44E0() % 0x23) + 0x69,
			D_8013E3C0[currentLevel * 3 - 3], D_8013E3C0[currentLevel * 3 - 2], D_8013E3C0[currentLevel * 3 - 1], 0xFF);
		if (effectIndex != 0xFB) {
			*(s16 *)&D_80154318[D_80154088[(u8) effectIndex].unk8].unkE = arg3;
		}
	}
}

void func_800E0C8C_EFC3C(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5) {
	func_800CA5EC_D959C(arg0, arg1, arg2, arg3, arg4, arg5, 0x37, 7, (func_800038E0_44E0() % 9) + 0xA, 0x64, 0xDC, 0xBE, 0x2D, 0xFF);
}

void func_800E0D28_EFCD8(s16 arg0, s16 arg1, s16 arg2) {
	u8 i;
	u8 temp_v0;
	Unk801541F8Entry *spEffect;
	Unk80154318Entry *fxEntry;

	for (i = 0; i < 0x1E; i++) {
		spEffect = &D_80154088[i];
		if (spEffect->unk0 == 4) {
			fxEntry = &D_80154318[spEffect->unk6];
			if ((fxEntry->unk14 == 1) && (arg0 == fxEntry->unk8) && (arg1 == fxEntry->unkA) && (arg2 == fxEntry->unkC)) {
				func_800DAF24_E9ED4(i);
				return;
			}
		}
	}

	temp_v0 = func_800CA5EC_D959C(arg0, arg1, arg2, 1, 0x78, 1, 0x28, 3, 0, 0x5A, 0x96, 0xB4, 0xFF, 0x6E);
	if (temp_v0 != 0xFB) {
		spEffect = &D_80154088[temp_v0];
		D_80154318[spEffect->unk6].unk14 = 1;
	}
}

void func_800E0E9C_EFE4C(s16 arg0, s16 arg1, u16 arg2)
{
	u16 *new_var;
	new_var = &arg2;
	func_800DDB60_ECB10(arg0, (s16)((((s32)arg2) / 2) + D_80222A70), arg1, 0, (s32)(*new_var));
	func_800DEF2C_EDEDC(arg0, (s16)(D_80222A70 + 4), arg1, 0x64, 2);
	func_801372B4_146264(arg0, (s16)(D_80222A70 + 4), arg1, 1);
}

// CURRENT(26761)
#ifdef NON_MATCHING
void func_800E0F4C_EFEFC(s16 arg0, s16 arg1, s16 arg2, s32 arg3) {
	Unk800E0F4CEntry *entry;
	u16 radius;
	EffectPalette sp5C;

	sp5C = D_8013E3E8_14D398;

	if (arg3 < 0x16) {
		func_80137234_1461E4(0xEA, arg0, arg1, arg2, 0);
	} else if (arg3 >= 0x19) {
		func_80137234_1461E4(0xE8, arg0, arg1, arg2, 0);
	} else {
		func_80137234_1461E4(0xE9, arg0, arg1, arg2, 0);
	}

	if (arg3 == 0) {
		func_800DFE68_EEE18(arg0, arg1, arg2);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if ((arg3 == 2) || (arg3 == 3)) {
		func_800DFEE4_EEE94(arg0, arg1, arg2);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if (arg3 == 1) {
		func_800DDB60_ECB10(arg0, D_80222A70 + 0xD, arg2, 0, 0x19);
		func_800DEF2C_EDEDC(arg0, D_80222A70 + 4, arg2, 0x32, 1);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if (arg3 == 4) {
		func_800C4938_D38E8(arg0, arg1, arg2, 0, 0x50);
		func_800C541C_D43CC(arg0, arg1, arg2, 0, 0x7F, 0, 0x32, 0xFA, (func_800038E0_44E0() % 4) + 4, 3, 0xBE, 0xFF, 0xE6);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if (arg3 == 5) {
		func_800C4938_D38E8(arg0, arg1, arg2, 1, 0x50);
		func_800C541C_D43CC(arg0, arg1, arg2, 0, 0x7F, 0, 0x32, 0xFA, (func_800038E0_44E0() % 4) + 4, 3, 0xBE, 0xFF, 0xE6);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if (arg3 == 6) {
		func_800DFFC4_EEF74(arg0, arg1, arg2);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if (arg3 == 7) {
		radius = (func_800038E0_44E0() % 40) + 0x28;
		func_800DF038_EDFE8(arg0, arg1, arg2, radius, 0, sp5C.bytes);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if (arg3 == 8) {
		func_800DDB60_ECB10(arg0, D_80222A70 + 0x12, arg2, 0, 0x23);
		func_800DEF2C_EDEDC(arg0, D_80222A70 + 3, arg2, 0x32, 2);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if ((arg3 == 9) || (arg3 == 0xA)) {
		radius = (func_800038E0_44E0() % 40) + 0x28;
		func_800DF038_EDFE8(arg0, arg1, arg2, radius, 0, sp5C.bytes);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if (arg3 == 0xB) {
		radius = (func_800038E0_44E0() % 40) + 0x28;
		func_800DF038_EDFE8(arg0, arg1, arg2, radius, 0, sp5C.bytes);
		func_800C4938_D38E8(arg0, arg1, arg2, 0, 0x50);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if (arg3 == 0xC) {
		radius = (func_800038E0_44E0() % 40) + 0x28;
		func_800DF038_EDFE8(arg0, arg1, arg2, radius, 0, sp5C.bytes);
		func_800C4938_D38E8(arg0, arg1, arg2, 1, 0x50);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if (arg3 == 0xD) {
		func_800DFFC4_EEF74(arg0, arg1, arg2);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if (arg3 == 0xE) {
		radius = (func_800038E0_44E0() % 8) + 8;
		func_800DF9C8_EE978(arg0, arg1, arg2, radius, 0, D_8013E3D0_14D380);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if (arg3 == 0xF) {
		func_800DDB60_ECB10(arg0, D_80222A70 + 0x12, arg2, 0, 0x23);
		func_800DEF2C_EDEDC(arg0, D_80222A70 + 3, arg2, 0x32, 2);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if ((arg3 == 0x10) || (arg3 == 0x11)) {
		radius = (func_800038E0_44E0() % 8) + 8;
		func_800DF9C8_EE978(arg0, arg1, arg2, radius, 0, D_8013E3D0_14D380);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if (arg3 == 0x12) {
		radius = (func_800038E0_44E0() % 8) + 8;
		func_800DF9C8_EE978(arg0, arg1, arg2, radius, 0, D_8013E3D0_14D380);
		func_800C4938_D38E8(arg0, arg1, arg2, 0, 0x50);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if (arg3 == 0x13) {
		radius = (func_800038E0_44E0() % 8) + 8;
		func_800DF9C8_EE978(arg0, arg1, arg2, radius, 0, D_8013E3D0_14D380);
		func_800C4938_D38E8(arg0, arg1, arg2, 1, 0x50);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if (arg3 == 0x14) {
		func_800DFFC4_EEF74(arg0, arg1, arg2);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if ((arg1 < D_80222A70) && (D_80222A70 < (arg1 + 0xC8))) {
		entry = &D_8013DD40_14CCF0[arg3];
		radius = entry->unkA << 2;
		func_800E0E9C_EFE4C(arg0, arg2, radius);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if ((arg3 >= 0x15) && (arg3 < 0x1D)) {
		entry = &D_8013DD40_14CCF0[arg3];
		func_800DF038_EDFE8(arg0, arg1, arg2, entry->unk8, 0, NULL);
	} else if (arg3 == 0x1D) {
		func_800DF038_EDFE8(arg0, arg1, arg2, 0x96, 0, (s8 *)D_8013E3DC_14D38C);
		entry = &D_8013DD40_14CCF0[arg3];
	} else if (arg3 == 0x1E) {
		func_800DDB60_ECB10(arg0, arg1, arg2, 0xE, 0x18);
		entry = &D_8013DD40_14CCF0[arg3];
	} else {
		if (arg3 != 0x1F) {
			osSyncPrintf(D_80143F14_152EC4, arg3);
		}
		return;
	}

	if ((entry->unk9 != 0) && (D_80222A70 < arg1)) {
		func_800C3BD8_D2B88(arg0, arg1, arg2, entry->unk9, (func_800038E0_44E0() % 50) + 0x78, 0xFF, 0xAA, 0x1E);
	}
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E0F4C_EFEFC.s")
#endif

void func_800E1C10_F0BC0(void) {
	D_80153B90.x = (f32)D_80153BAC - D_80153BA0.x;
	D_80153B90.y = (f32)D_80153BAE - D_80153BA0.y;
	D_80153B90.z = (f32)D_80153BB0 - D_80153BA0.z;
	D_80156EE4.unk0 = D_80052B34->unk0 - D_80156EDC.unk0;
	D_80156EE4.unk2 = D_80052B34->unk2 - D_80156EDC.unk2;
	D_80156EE4.unk4 = D_80052B34->unk4 - D_80156EDC.unk4;
	func_800DABBC_E9B6C();
	func_800DE150_ED100();
	if (D_8013E3F4_14D3A4 < (s32)D_80154304) {
		D_8013E3F4_W = D_80154304;
	}
	if (D_8013E3F8_14D3A8 < D_8015430E) {
		D_8013E3F8_W = D_8015430E;
	}
	D_80156EDC.unk0 = D_80052B34->unk0;
	D_80156EDC.unk2 = D_80052B34->unk2;
	D_80156EDC.unk4 = D_80052B34->unk4;
}

#ifdef NON_MATCHING
void func_800E1D48_F0CF8(u16 arg0, u8 arg1) {
	s32 skipSecondCall = 0;
	s32 shouldClamp = 0;
	s16 tempA2;

	if (D_80052B34->unk3C == 0) {
		return;
	}

	if ((func_800038E0_44E0() % 100) < (arg0 + 30)) {
		switch (currentLevel) {
			case 1:
				if ((D_80052B34->unk1A == 4) || (D_80052B34->unk1A == 7) || (D_80052B34->unk1A == 8) || (D_80052B34->unk1A == 0x10)) {
					shouldClamp = 1;
				}
				break;

			case 2:
				switch (D_80052B34->unk1A) {
					case 5:
						return;

					case 7:
					case 8:
					case 0xE:
					case 0x10:
						shouldClamp = 1;
						break;

					default:
						break;
				}
				break;

			case 3: {
				s32 vehicleType;
				vehicleType = D_80052B34->unk1A;
				if ((vehicleType == 1) || (vehicleType == 5) || (vehicleType == 0xE)) {
					shouldClamp = 1;
				}
				break;
			}

			case 4:
				switch (D_80052B34->unk1A) {
				    case 2:
				        skipSecondCall = 1;
				        shouldClamp = 1;
				        break;
				    case 0x11:
				        shouldClamp = 1;
				        break;
				    default:
				        break;
				}
				break;

			default:
				break;
		}

		if (shouldClamp != 0) {
			if (arg1 >= 0xC9) {
				arg1 = 0xC8;
			}
		}

		if (((shouldClamp == 0) && (arg1 < 0xA7)) || ((shouldClamp != 0) && (arg1 < 0xC9))) {
			tempA2 = D_8013DB10_14CAC0[currentLevel - 1][D_80052B34->unk1A].zOffset;
			func_800DEB7C_EDB2C(arg0, arg1, tempA2);
			if ((tempA2 != 0) && (skipSecondCall == 0)) {
				func_800DEB7C_EDB2C(arg0, arg1, -tempA2);
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E1D48_F0CF8.s")
#endif

// CURRENT(6532)
#ifdef NON_MATCHING
void func_800E1F70_F0F20(VehicleInstance *arg0) {
	s16 randA;
	s16 randB;
	s16 randC;
	u8 temp;

	if (-arg0->unk58 < arg0->unk58) {
		temp = arg0->unk58;
	} else {
		temp = -arg0->unk58;
	}

	if (arg0->unk1A == 0) {
		if ((func_800038E0_44E0() % 30) < (temp + 10)) {
			randA = func_800038E0_44E0();
			randB = func_800038E0_44E0();
			randC = func_800038E0_44E0();
			func_800DEED0_EDE80(
				(((u16)randA % 28) + D_80052B34->unk0) - 14,
				D_80222A70 + 3,
				(((u16)randB % 28) + D_80052B34->unk4) - 14,
				(((u16)randC % 5) + temp + 10),
				(func_800038E0_44E0() % 10) + temp + 45);
		}
	} else if ((func_800038E0_44E0() % 40) < (temp + 10)) {
		if (vehicleTypes[arg0->unk1A].unk4C & 0x20000) {
			randA = func_800038E0_44E0();
			randB = func_800038E0_44E0();
			randC = func_800038E0_44E0();
			func_800DEED0_EDE80(
				(((u16)randA % 40) + arg0->unk0) - 20,
				D_80222A70 + 3,
				(((u16)randB % 40) + arg0->unk4) - 20,
				(((u16)randC % 40) + vehicleTypes[arg0->unk1A].unkC),
				(func_800038E0_44E0() % 10) + ((s32)temp / 2) + 60);
		} else {
			randA = func_800038E0_44E0();
			randB = func_800038E0_44E0();
			randC = func_800038E0_44E0();
			func_800DEED0_EDE80(
				(((u16)randA % 40) + arg0->unk0) - 20,
				D_80222A70 + 3,
				(((u16)randB % 40) + arg0->unk4) - 20,
				(((u16)randC % 20) + (vehicleTypes[arg0->unk1A].unkC / 2)),
				(func_800038E0_44E0() % 10) + ((s32)temp / 2) + 60);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E1F70_F0F20.s")
#endif

// CURRENT(3839)
#ifdef NON_MATCHING
void func_800E24B8_F1468(u8 arg0) {
	AlienInstance *alien;
	s32 temp_v0;
	s32 temp_a0;
	s32 temp_t9;
	s32 var_a1;
	s16 divisor;
	u16 sp28;
	u16 sp26;
	u16 sp24;

	temp_v0 = func_800038E0_44E0();
	alien = &alienInstances[arg0];
	temp_t9 = ((s16) alien->unk12) >> 5;
	temp_a0 = -temp_t9;
	if (temp_a0 < temp_t9) {
		var_a1 = temp_t9;
	} else {
		var_a1 = temp_a0;
	}

	if ((temp_v0 % 40) < (var_a1 + 10)) {
		sp24 = func_800038E0_44E0();
		sp26 = func_800038E0_44E0();
		sp28 = func_800038E0_44E0();
		temp_v0 = func_800038E0_44E0();
		divisor = 30;
func_800DEED0_EDE80( (sp24 % divisor) + alien->unk0 - 15, D_80222A70 + 5, (sp26 % divisor) + alien->unk4 - 15, (sp28 % 20) + alienTypes[alien->typeIndex].unkC / 2, (temp_v0 % 10) + 50);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E24B8_F1468.s")
#endif

void func_800E2668_F1618(void) {

	if (currentLevel == 2) {
		D_801541F0.unk0 = 0x96;
		D_801541F0.unk1 = 0xDC;
		D_801541F0.unk2 = 0xF0;
		D_80154082.unk0 = 0x96;
		D_80154082.unk1 = 0xDC;
		D_80154082.unk2 = 0xF0;
	} else if (currentLevel == 4) {
		D_801541F0.unk0 = 0xF0;
		D_801541F0.unk1 = 0xF0;
		D_801541F0.unk2 = 0xF0;
		D_80154082.unk0 = 0xF0;
		D_80154082.unk1 = 0xF0;
		D_80154082.unk2 = 0xF0;
	}
	D_80154300 = 0;
	D_80154308 = 0x34;
}

void func_800E26FC_F16AC(s8 arg0, s8 arg1, s8 arg2) {
	D_80154082.unk0 = arg0;
	D_80154082.unk1 = arg1;
	D_80154082.unk2 = arg2;
}

void func_800E2720_F16D0(s32 arg0) {
	D_80154308 = arg0 / 6;
	if (D_80154308 >= 0xC9) {
		D_80154308 = 0xC8;
	}
}

void func_800E2750_F1700(u8 arg0) {
	D_80153BD0[arg0].unk0 = (s16)((func_800038E0_44E0() % D_80068084) * 0x10);
	D_80153BD0[arg0].unk2 = 0;
	if (currentLevel == LEVEL_JAVA) {
		D_80153BD0[arg0].unk4 = (s16)((func_800038E0_44E0() % 125) + 75);
	} else if (currentLevel == LEVEL_SIBERIA) {
		D_80153BD0[arg0].unk4 = (s16)((func_800038E0_44E0() % 75) + 25);
	}
}

// CURRENT(10695)
#ifdef NON_MATCHING
void func_800E2830_F17E0(void) {
	Unk800311A0 *entry;
	s32 count;
	s32 i;
	s32 yLimit;
	s16 xOffset;
	s16 didShrink;
	didShrink = 0;
	if (D_8013E408_14D3B8 == 5) {
		if ((D_80154300) < D_80154308) {
			func_800E2750_F1700(D_80154300);
			(D_80154300) += 1;
		}
		D_8013E408_14D3B8 = 0;
	} else {
		D_8013E408_14D3B8++;
	}

	D_80154080 = (s8)(func_80003824_4424(D_80153B90.z, D_80153B90.x) / 2048);
	if ((D_80154080 >= 8) && (D_80154080 < 16)) {
		D_80154080 = 15 - D_80154080;
	} else if ((D_80154080 < -7) && (D_80154080 >= -15)) {
		D_80154080 = -15 - D_80154080;
	} else if ((D_80154080 == 16) || (D_80154080 == -16)) {
		D_80154080 = 0;
	}

	if ((D_80154082.unk0 < D_801541F0.unk0) && (D_801541F0.unk0 >= 3)) {
		D_801541F0.unk0 -= 3;
	} else if ((D_801541F0.unk0 < D_80154082.unk0) && (D_801541F0.unk0 < 0xFD)) {
		D_801541F0.unk0 += 3;
	}

	if ((D_80154082.unk1 < D_801541F0.unk1) && (D_801541F0.unk1 >= 3)) {
		D_801541F0.unk1 -= 3;
	} else if ((D_801541F0.unk1 < D_80154082.unk1) && (D_801541F0.unk1 < 0xFD)) {
		D_801541F0.unk1 += 3;
	}

	if ((D_80154082.unk2 < D_801541F0.unk2) && (D_801541F0.unk2 >= 3)) {
		D_801541F0.unk2 -= 3;
	} else if ((D_801541F0.unk2 < D_80154082.unk2) && (D_801541F0.unk2 < 0xFD)) {
		D_801541F0.unk2 += 3;
	}

	count = (D_80154300);
	i = 0;
	if (count > 0) {
		do {

			if (currentLevel == LEVEL_SIBERIA) {
				xOffset = (s16)(s32)((((f32)sins((u16)(((i + D_80052A8C) << 11) & 0xFFFF)) / 32768.0) *
									(((s32)D_80154300 / 5) + 0x10)) + ((D_80154080 * (u16)D_80153BD0[i].unk4 * 2) >> 4));
			} else {
				xOffset = (s16)((s32)((u16)D_80153BD0[i].unk4 * D_80154080 * 2) >> 4);
			}

			yLimit = D_80068088 * 0x10;
			entry = &D_80153BD0[i];
			entry->unk2 += (u16)entry->unk4;
			entry->unk0 += xOffset;

			if (yLimit < entry->unk2) {
				if ((D_80154308 < count) && (didShrink == 0)) {
					(D_80154300) = count - 1;
					count = (D_80154300);
					didShrink = 1;
					if (count != i) {
						D_80153BD0[i] = D_80153BD0[count];
						i = (i - 1) & 0xFF;
					}
				} else {
					func_800E2750_F1700(i);
					count = (D_80154300);
				}
			} else {
				if ((D_80068084 * 0x10) < entry->unk0) {
					entry->unk0 = 0;
					if (currentLevel == LEVEL_JAVA) {
						entry->unk4 = (func_800038E0_44E0() % 100) + 0x4B;
					} else if (currentLevel == LEVEL_SIBERIA) {
						entry->unk4 = (func_800038E0_44E0() % 75) + 0x19;
					}
					count = (D_80154300);
				} else if (entry->unk0 < 0) {
					entry->unk0 = D_80068084 * 0x10;
					if (currentLevel == LEVEL_JAVA) {
						entry->unk4 = (func_800038E0_44E0() % 100) + 0x4B;
					} else if (currentLevel == LEVEL_SIBERIA) {
						entry->unk4 = (func_800038E0_44E0() % 75) + 0x19;
					}
					count = (D_80154300);
				}
			}

			i = (i + 1) & 0xFF;
		} while (i < count);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E2830_F17E0.s")
#endif

void func_800E2DB4_F1D64(void) {
	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, 0xFFFFFFFF);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0);
}

void func_800E2ED4_F1E84(void) {
	Unk800311A0 *entry;
	s32 scroll;
	u8 i;

	if (D_801493CC == 0) {
		func_800E2DB4_F1D64();

		if (D_80154080 < 0) {
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100E480[0 - D_80154080]));
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (15 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));
			scroll = 0x200;
		} else {
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100E480[D_80154080]));
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (15 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));
			scroll = 0;
		}

		gDPPipeSync(D_8005BB2C++);

		for (i = 0; i < D_80154300; i++) {

			gDPSetPrimColor(D_8005BB2C++, 0, 0, D_801541F0.unk0, D_801541F0.unk1, D_801541F0.unk2, 0x23);

			gDPPipeSync(D_8005BB2C++);

			gSPTextureRectangle(D_8005BB2C++, ((D_80153BD0[i].unk0 >> 4) * 4), ((D_80153BD0[i].unk2 >> 4) * 4), (((D_80153BD0[i].unk0 >> 4) + 0x10) << 2), (((D_80153BD0[i].unk2 >> 4) + 0x10) << 2), G_TX_RENDERTILE, scroll, 0, 0x0400, 0x0400);

			gDPPipeSync(D_8005BB2C++);

		}
	}
}

void func_800E32C4_F2274(void) {
	Unk800311A0 *entry;
	u16 tileSize;
	s32 temp;
	s32 widthShift;
	s32 heightShift;
	s32 scale;
	s32 i;

	if (D_801493CC == 0) {
		func_800E2DB4_F1D64();

		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100AD70));
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (15 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));
		gDPPipeSync(D_8005BB2C++);

		entry = D_80153BD0;
		for (i = 0; i < D_80154300; i++) {
			gDPSetPrimColor(D_8005BB2C++, 0, 0, D_801541F0.unk0, D_801541F0.unk1, D_801541F0.unk2, 0xDC);
			gDPPipeSync(D_8005BB2C++);

			tileSize = entry[i].unk4;
			widthShift = 4;
			if (tileSize < 0x28) {
				heightShift = 0xB;
				scale = 2;
			} else if (tileSize < 0x41) {
				widthShift = 3;
				heightShift = 0xB;
				scale = 3;
			} else if (tileSize < 0x50) {
				widthShift = 2;
				heightShift = 0xB;
				scale = 4;
			} else if (tileSize < 0x5F) {
				widthShift = 3;
				heightShift = 0xA;
				scale = 5;
			} else {
				widthShift = 1;
				heightShift = 0xB;
				scale = 8;
			}

			temp = widthShift << heightShift;
			gSPTextureRectangle(D_8005BB2C++, (entry[i].unk0 >> 4) * 4, (entry[i].unk2 >> 4) * 4, ((entry[i].unk0 >> 4) + scale) * 4, ((entry[i].unk2 >> 4) + scale) * 4, G_TX_RENDERTILE, 0, 0, temp, temp);
			gDPPipeSync(D_8005BB2C++);

		}
	}
}

void func_800E35E0_F2590(u8 arg0)
{
	if (D_8013E344_14D2F4 < arg0)
	{
		D_8013E344_14D2F4 = arg0;
	}
}

void func_800E360C_F25BC(void) {
	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 255, 255, 255, D_8013E344_14D2F4);
	gDPPipeSync(D_8005BB2C++);
	gDPFillRectangle(D_8005BB2C++, 0, 0, D_80068084, D_80068088);
	D_8013E344_14D2F4 = 0;
}

void func_800E3738_F26E8(u16 arg0, u8 arg1) {
	s32 timer;
	u16 phase;
	s32 phaseMod;

	timer = D_80052A8C;
	phase = (timer * 24) + timer + arg0;
	phaseMod = phase % 300;
	if (phaseMod < 100) {
		u8 red;
		u8 green;

		green = 0xFA - phase;
		red = phase + 0x96;
		gDPSetColor(D_8005BB2C++, G_SETPRIMCOLOR, (green << 24) | (red << 16) | 0x9600 | (arg1 & 0xFF));
		gDPSetColor(D_8005BB2C++, G_SETENVCOLOR, (red << 24) | 0x960000 | (green << 8) | (arg1 & 0xFF));
		return;
	}
	if (phaseMod < 200) {
		u8 red;
		u8 green;

		red = 0x15E - phase;
		green = phase + 0x32;
		gDPSetColor(D_8005BB2C++, G_SETPRIMCOLOR, 0x96000000 | (red << 16) | (green << 8) | (arg1 & 0xFF));
		gDPSetColor(D_8005BB2C++, G_SETENVCOLOR, (red << 24) | (green << 16) | 0x9600 | (arg1 & 0xFF));
		return;
	} else {
		u8 red;
		u8 green;

		red = phase - 0x32;
		green = 0x1C2 - phase;
		gDPSetColor(D_8005BB2C++, G_SETPRIMCOLOR, (red << 24) | 0x960000 | (green << 8) | (arg1 & 0xFF));
		gDPSetColor(D_8005BB2C++, G_SETENVCOLOR, 0x96000000 | (green << 16) | (red << 8) | (arg1 & 0xFF));
	}
}

#ifdef NON_MATCHING
void func_800E3928_F28D8(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s32 arg6, s16 arg7, u8 arg8) {
	s16 rot;
	s16 x1;
	s16 z1;
	s16 x2;
	s16 z2;
	u8 red0;
	u8 green0;
	u8 blue0;
	u8 alpha0;
	u8 red1;
	u8 alpha1;
	u8 green1;
	u8 blue1;
	s16 size;
	u8 maxStep;
	f32 stepScale;

	rot = func_80003824_4424((f32)(arg3 - arg0), (f32)(arg5 - arg2));
	rot = (s16)(rot + 0x4000);

	maxStep = D_8013DD18_14CCC8[arg8];
	stepScale = (f32)(0xFF / maxStep);

	switch (arg8) {
		case 0:
			if (arg7 == maxStep) {
				red0 = 0xFA;
				green0 = 0x50;
				blue0 = 0x64;
				alpha0 = 0xFF;
				red1 = 0xFF;
				alpha1 = 0xFF;
				green1 = 0;
				blue1 = 0;
			} else {
				red0 = 0x96;
				green0 = 0;
				blue0 = 0;
				alpha0 = ((u8)((f32)arg7 * stepScale) >> 1);
				red1 = 0x96;
				alpha1 = 0;
				green1 = 0;
				blue1 = 0;
			}
			size = 0xC;
			break;
		case 1:
			if (arg7 == maxStep) {
				red0 = 0xFF;
				green0 = 0x96;
				blue0 = 0;
				alpha0 = 0xFF;
				red1 = 0xFF;
				alpha1 = 0x96;
				green1 = 0;
				blue1 = 0x32;
			} else {
				red0 = 0x96;
				green0 = 0;
				blue0 = 0;
				alpha0 = ((u8)((f32)arg7 * stepScale) >> 1);
				red1 = 0x96;
				alpha1 = 0;
				green1 = 0;
				blue1 = 0;
			}
			size = 0xA;
			break;
		case 2:
			if (arg7 >= maxStep - 1) {
				red0 = 0xFF;
				green0 = 0xFF;
				blue0 = 0x78;
				alpha0 = 0xFF;
				red1 = 0xFF;
				alpha1 = 0x64;
				green1 = 0x64;
				blue1 = 0x32;
				func_80135D44_144CF4(arg3, arg4, arg5, 2.0f);
			} else {
				red0 = 0xAA;
				green0 = 0xAA;
				blue0 = 0x64;
				alpha0 = ((u8)((f32)arg7 * stepScale) >> 1);
				red1 = 0xFF;
				alpha1 = 0xFF;
				green1 = 0xFF;
				blue1 = 0;
			}
			size = 0x1E;
			break;
		case 3:
			alpha0 = 0xFF;
			red0 = 0xFF;
			blue0 = 0x78;
			green0 = 0xFF;
			alpha1 = 0x64;
			red1 = 0xFF;
			green1 = 0x64;
			blue1 = 0x32;
			size = 0xF;
			break;
		case 5:
			if (arg7 == maxStep) {
				red0 = 0xFF;
				green0 = 0xFF;
				blue0 = 0x78;
				alpha0 = 0xFF;
				red1 = 0xFF;
				alpha1 = 0x64;
				green1 = 0x64;
				blue1 = 0x32;
			} else {
				red0 = 255.0f - (f32)(s16)(maxStep - arg7) * stepScale;
				green0 = 0;
				blue0 = 0;
				alpha0 = ((u8)((f32)arg7 * stepScale) >> 1);
				red1 = 0xFF;
				alpha1 = 0x64;
				green1 = 0x64;
				blue1 = 0;
			}
			size = 0xA;
			break;
		case 6:
			if (arg7 == maxStep) {
				red0 = 0xDC;
				green0 = 0x8C;
				blue0 = 0;
				alpha0 = 0xFF;
				red1 = 0xDC;
				alpha1 = 0x8C;
				green1 = 0;
				blue1 = 0xFF;
			} else {
				s16 rem = (s16)(maxStep - arg7);
				f32 color;

				color = (((35.0f / (f32)(u32)maxStep) * rem) * 3.0f) + 220.0f;
				red0 = color > 255.0f ? 255.0f : color;
				color = (((115.0f / (f32)(u32)maxStep) * rem) * 3.0f) + 140.0f;
				green0 = color > 255.0f ? 255.0f : color;
				color = ((f32)rem * stepScale) * 3.0f;
				blue0 = color > 255.0f ? 255.0f : color;
				alpha0 = ((u8)((f32)arg7 * stepScale) >> 1);
				red1 = red0;
				alpha1 = green0;
				green1 = blue0;
				blue1 = 0;
			}
			size = 0xC;
			break;
		case 4:
			if (arg7 > (maxStep >> 1)) {
				red0 = 0xFF;
				green0 = 0xFF;
				blue0 = 0;
				alpha0 = 0x46;
				red1 = 0xFF;
				alpha1 = 0xFF;
				green1 = 0;
				blue1 = 0;
			} else {
				s32 half = maxStep >> 1;
				s16 rem = (s16)(half - arg7);
				s32 dec;

				red0 = 0xFF;
				green0 = 255.0f - ((f32)rem * stepScale) * 2.0f;
				dec = 0x46 - ((rem * 0x46) / half);
				if (dec < 0) {
					dec = 0;
				}
				blue0 = 0;
				alpha0 = (u8)dec;
				red1 = 0xFF;
				alpha1 = 0xFF;
				green1 = 0;
				blue1 = 0;
			}
			size = 0x14;
			break;
	}

	if (arg8 == 3) {
		x1 = (s16)((f32)(D_8013DD18_14CCC8[arg8] - arg7 + size) * D_80153AB8.x);
		z1 = (s16)((f32)(D_8013DD18_14CCC8[arg8] - arg7 + size) * D_80153AB8.z);
		x2 = (s16)((f32)(D_8013DD18_14CCC8[arg8] - arg7 + size) * D_80153AC4.x);
		z2 = (s16)((f32)(D_8013DD18_14CCC8[arg8] - arg7 + size) * D_80153AC4.z);
	} else {
		x1 = ((f32)coss((u16)rot) / 32768.0) * (D_8013DD18_14CCC8[arg8] + size - arg7);
		z1 = ((f32)sins((u16)rot) / 32768.0) * (D_8013DD18_14CCC8[arg8] + size - arg7);
		x2 = ((f32)coss((u16)rot) / 32768.0) * (D_8013DD18_14CCC8[arg8] + size - arg7);
		z2 = ((f32)sins((u16)rot) / 32768.0) * (D_8013DD18_14CCC8[arg8] + size - arg7);
	}

	D_8005BB34->v.ob[0] = arg0;
	D_8005BB34->v.ob[1] = arg1;
	D_8005BB34->v.ob[2] = arg2;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = -0x20;
	D_8005BB34->v.tc[1] = -0x20;
	D_8005BB34->v.cn[0] = red0;
	D_8005BB34->v.cn[1] = green0;
	D_8005BB34->v.cn[2] = blue0;
	D_8005BB34->v.cn[3] = alpha0;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg3;
	D_8005BB34->v.ob[1] = arg4;
	D_8005BB34->v.ob[2] = arg5;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x7E0;
	D_8005BB34->v.tc[1] = -0x20;
	D_8005BB34->v.cn[0] = red0;
	D_8005BB34->v.cn[1] = green0;
	D_8005BB34->v.cn[2] = blue0;
	D_8005BB34->v.cn[3] = alpha0;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg0 + x1;
	D_8005BB34->v.ob[1] = arg1;
	D_8005BB34->v.ob[2] = arg2 + z1;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = -0x20;
	D_8005BB34->v.tc[1] = 0x1E0;
	D_8005BB34->v.cn[0] = red1;
	D_8005BB34->v.cn[1] = alpha1;
	D_8005BB34->v.cn[2] = green1;
	D_8005BB34->v.cn[3] = blue1;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg0 - x1;
	D_8005BB34->v.ob[1] = arg1;
	D_8005BB34->v.ob[2] = arg2 - z1;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = -0x20;
	D_8005BB34->v.tc[1] = 0x1E0;
	D_8005BB34->v.cn[0] = red1;
	D_8005BB34->v.cn[1] = alpha1;
	D_8005BB34->v.cn[2] = green1;
	D_8005BB34->v.cn[3] = blue1;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg3 + x2;
	D_8005BB34->v.ob[1] = arg4;
	D_8005BB34->v.ob[2] = arg5 + z2;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x7E0;
	D_8005BB34->v.tc[1] = 0x1E0;
	D_8005BB34->v.cn[0] = red1;
	D_8005BB34->v.cn[1] = alpha1;
	D_8005BB34->v.cn[2] = green1;
	D_8005BB34->v.cn[3] = blue1;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg3 - x2;
	D_8005BB34->v.ob[1] = arg4;
	D_8005BB34->v.ob[2] = arg5 - z2;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x7E0;
	D_8005BB34->v.tc[1] = 0x1E0;
	D_8005BB34->v.cn[0] = red1;
	D_8005BB34->v.cn[1] = alpha1;
	D_8005BB34->v.cn[2] = green1;
	D_8005BB34->v.cn[3] = blue1;
	D_8005BB34++;

	gDPPipeSync(D_8005BB2C++);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
	gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
	gSPSetGeometryMode(D_8005BB2C++, G_SHADING_SMOOTH);
	gDPPipeSync(D_8005BB2C++);
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 6), 6, 0);
	gSP2Triangles(D_8005BB2C++, 0, 4, 2, 0, 0, 1, 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 3, 1, 0, 3, 5, 1, 0);

	if (arg6 != 0) {
		gDPPipeSync(D_8005BB2C++);
		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
		gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E3928_F28D8.s")
#endif

void func_800E4CEC_F3C9C(AlienInstance *arg0, u8 arg1) {
	Unk80052B40 position;
	s32 unused;
	u8 red, green, blue;
	s32 unused2;
	SignedWord sourceX, sourceY, sourceZ, hitX, hitY, hitZ;

	func_80128504_1374B4(arg0, 0, &sourceX.word, &sourceY.word, &sourceZ.word);
	hitY.word = 0;
	hitX.word = sourceX.word;
	hitZ.word = sourceZ.word;

	func_80126268_135218((s16) sourceX.word, sourceY.halves.low, (s16) sourceZ.word, &hitX.word, &hitY.word, &hitZ.word, 1, 5);

	if (func_800B325C_C220C((s8) (hitX.word >> 8), (s8) (hitZ.word >> 8), 0x1000) != 0) {
		if (!(D_80052A8C & 7)) {
			func_800E0E9C_EFE4C(hitX.halves.low, hitZ.halves.low, 0xC8);
			func_800DEA08_ED9B8(hitX.halves.low, hitY.halves.low, hitZ.halves.low, 0x32, 0xA, 8, 0x1E, 0xC8, 0xC8, 0xC8, 0xFF);
		}
	} else {
		if (!(D_80052A8C & 7)) {
			func_800DEA08_ED9B8(hitX.halves.low, hitY.halves.low, hitZ.halves.low, 0x32, 0xA, 0, 0x1E, 0xC8, 0x88, 0x67, 0x11);
		}
		if (!(D_80052A8C & 1)) {
			func_800C541C_D43CC(hitX.halves.low, hitY.halves.low, hitZ.halves.low, 0, 0x7F, 0, 0x32, 0xFF, 0x28, 0xA, 0x6A, 0x53, 0);
		}
	}

	func_800E3928_F28D8((s16) sourceX.word, sourceY.halves.low, (s16) sourceZ.word, hitX.halves.low, hitY.word, hitZ.word, 0, (s32) arg1, 3);

	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);

	gDPSetPrimColor(D_8005BB2C++, 0, 0, red, green, blue, 0xFF);

	position.unk0 = (s16) sourceX.word;
	position.unk2 = (s16) sourceY.word;
	position.unk4 = (s16) sourceZ.word;
	func_800039D0_45D0(&position, 0, 0, D_8005BB38);

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	gSPDisplayList(D_8005BB2C++, &D_50332A0);
	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
}

// CURRENT(380)
#ifdef NON_MATCHING
void func_800E5044_F3FF4(void) {
	LaserEntry *entry;
	LaserEntry *end;
	s32 arg4, arg5, arg6, arg7, arg8;

	gDPPipeSync(D_8005BB2C++);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH | G_FOG | G_LIGHTING);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);

	end = &D_80152D00[64];
	entry = D_80152D00;
	do {
		if (entry->type == 1) {
			arg4 = entry->y2;
			arg5 = entry->z2;
			arg6 = entry->extra;
			arg7 = entry->timer;
			arg8 = entry->colorIdx;
			func_800E3928_F28D8(entry->x1, entry->y1, entry->z1, entry->x2, arg4, arg5, arg6, arg7, arg8);
		} else if (entry->type == 2) {
			func_800E4CEC_F3C9C(entry->alien, entry->timerLow);
		}
		entry++;
	} while (entry != end);

	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5044_F3FF4.s")
#endif

void func_800E520C_F41BC(void) {
	s32 i;

	for (i = 0; i < 64; i++) {
		if (D_80152D00[i].type != 0) {
			if (D_80152D00[i].type == 1) {
				D_80152D00[i].timer--;
				if (D_80152D00[i].timer <= 0) {
					D_80152D00[i].type = 0;
				}
			}
			if (D_80152D00[i].type == 2) {
				D_80152D00[i].timer--;
				if (D_80152D00[i].timer <= 0) {
					D_80152D00[i].type = 0;
				}
			}
		}
	}
}

void func_800E52E8_F4298(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, u8 arg6) {
	u8 i;
	u8 slot;
	u8 minValue;
	u8 minSlot;
	Vec2_S16 start;
	Vec2_S16 end;
	EffectRgb color;
	s16 temp;

	color = D_8013E40C_14D3BC;
	start.x = arg0;
	start.z = arg2;
	end.x = arg3;
	end.z = arg5;

	slot = 0x40;
	for (i = 0; i < 0x40; i++) {
		if (D_80152D00[i].type == 0) {
			slot = i;
			break;
		}
	}

	if (slot == 0x40) {
		minValue = D_8013DD18_14CCC8[2];
		for (i = 0; i < 0x40; i++) {
			temp = D_80152D00[i].timer;
			if (minValue >= temp) {
				minSlot = i;
				minValue = temp;
			}
		}
		slot = minSlot;
	}

	D_80152D00[slot].timer = D_8013DD18_14CCC8[arg6];
	D_80152D00[slot].extra = 0;
	D_80152D00[slot].colorIdx = arg6;
	D_80152D00[slot].x1 = arg0;
	D_80152D00[slot].y1 = arg1;
	D_80152D00[slot].z1 = arg2;
	D_80152D00[slot].x2 = arg3;
	D_80152D00[slot].y2 = arg4;
	D_80152D00[slot].z2 = arg5;
	D_80152D00[slot].type = 1;

	func_800B1A68_C0A18(&start, &end, &color);
}

void func_800E5450_F4400(AlienInstance *arg0, s32 arg1) {
	u8 i;
	u8 slot;
	u8 minValue;
	u8 minSlot;
	s16 temp;
	LaserEntry *entry;
	
	slot = 0x40;
	for (i = 0; i < 0x40; i++) {
		if (D_80152D00[i].type == 0) {
			slot = i;
			break;
		}
	}
	
	if (slot == 0x40) {
		minValue = D_8013DD18_14CCC8[2];
		for (i = 0; i < 0x40; i++) {
			temp = D_80152D00[i].timer;
			if (minValue >= temp) {
				minSlot = i;
				minValue = temp;
			}
		}
		slot = minSlot;
	}
	
	entry = &D_80152D00[slot];
	entry->timer = 10;
	entry->alien = arg0;
	entry->type = 2;
}

void func_800E5520_F44D0(s32 arg0, s32 arg1) {
}

void func_800E552C_F44DC(void) {
	D_80152C96 = 0;
}

// CURRENT(28573)
#ifdef NON_MATCHING
void func_800E5538_F44E8(void) {
	Unk80052B40 position;
	Unk80052B40 rotation;
	Unk80052B40 scale;
	f64 temp_f20;
	s16 var_a2;
	s32 var_a3;
	s16 var_t0;
	s16 var_t1;
	s16 var_t2;
	s32 temp_a0;
	s32 temp_s5;
	s32 var_s2;
	Unk80152CA0Entry *entry;

	temp_s5 = D_80052A8C;
	temp_s5 = (temp_s5 * 4) & 0xFF;
	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_ZB_XLU_SURF, G_RM_ZB_XLU_SURF2);
	gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);

	var_s2 = 0;
	if (D_80152C96 > 0) {
		temp_f20 = D_801441E0_153190[0];
		do {
			entry = &D_80152CA0[var_s2];
						var_a3 = 0x64;
			if (entry->unk1 != 0) {
				temp_a0 = 0x40 - (temp_s5 / 2);
				if (entry->unk1 == 2) {
					var_t0 = vehicleInstances[entry->unk0].unk0;
					var_t1 = vehicleInstances[entry->unk0].unk2;
					var_t2 = vehicleInstances[entry->unk0].unk4;
					var_a2 = vehicleTypes[vehicleInstances[entry->unk0].unk1A].unkC * 28;
				} else {
					var_t0 = buildingInstances[entry->unk0].xCoord;
					var_t1 = buildingInstances[entry->unk0].yCoord;
					var_t2 = buildingInstances[entry->unk0].zCoord;
					var_a2 = buildingTypes[buildingInstances[entry->unk0].buildingType].unk14 * 15;
				}

								if (entry->unk2 != 0) {
					var_a3 = (s16)entry->unk2;
				}

				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x64, 0xA0, 0xF0, (f64)var_a3 * temp_f20);

				scale.unk0 = ((temp_a0 >= 0 ? temp_a0 : -temp_a0) * 2) + var_a2;
				scale.unk2 = ((temp_a0 >= 0 ? temp_a0 : -temp_a0) * 2) + var_a2;
				scale.unk4 = ((temp_a0 >= 0 ? temp_a0 : -temp_a0) * 2) + var_a2;

				if (entry->unk2 != 0) {
										scale.unk0 += ((0x64 - entry->unk2) * scale.unk0) / 0xC8;
					scale.unk2 += ((0x64 - entry->unk2) * scale.unk2) / 0xC8;
					scale.unk4 += ((0x64 - entry->unk2) * scale.unk4) / 0xC8;
				}

				rotation.unk0 = temp_s5 << 8;
				rotation.unk2 = 0;
				rotation.unk4 = 0;
				position.unk0 = var_t0;
				position.unk2 = var_t1;
				position.unk4 = var_t2;
								func_800039D0_45D0(&position, &rotation, &scale, D_8005BB38 += 0x40);

				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, (s16)(((s32)(((temp_s5 / 4) % 8) << 8) / 2)) + (u32)&D_50327B0);
				gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
				gDPLoadSync(D_8005BB2C++);
				gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 1024);
				gDPPipeSync(D_8005BB2C++);
				gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
				gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (15 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));
				gSPTexture(D_8005BB2C++, 0x1000, 0x1000, 0, G_TX_RENDERTILE, G_ON);
				gDPPipeSync(D_8005BB2C++);
				gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEI_PRIM, G_CC_PASS2);
				gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				gSPDisplayList(D_8005BB2C++, (u32)&D_50332A0);
				gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
			}

			var_s2++;
			var_s2 &= 0xFF;
		} while (var_s2 < D_80152C96);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5538_F44E8.s")
#endif

// CURRENT(120): timer/count reload ordering and compaction-loop sign extension.
#ifdef NON_MATCHING
void func_800E5B78_F4B28(void)
{
	Unk80152CA0Entry *entry;
	s16 i;
	s16 j;
	s32 timer;
	s32 count;
	s32 one;

	one = 1;
	for (i = 0; i < D_80152C96; i++)
	{
		entry = &D_80152CA0[i];
		timer = entry->unk2;
		if (timer != 0)
		{
			entry->unk2 = timer - 1;
			timer = entry->unk2;
		}
		if (one == timer)
		{
			if (entry->unk1 == 2)
			{
				vehicleInstances[entry->unk0].unk20 &= ~VEHICLE_FLAG_UNK8;
			}
			else if (one == entry->unk1)
			{
				buildingInstances[entry->unk0].statusFlags &= ~0x1000;
			}
			j = i;
			count = D_80152C96 - 1;
			for (; j < count; j++)
			{
				D_80152CA0[j] = D_80152CA0[j + 1];
			}
			D_80152C96 = count;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5B78_F4B28.s")
#endif

// Allocate shield (temporary shield around Adam, triggered by Defender cheat and by unused item pickup
void func_800E5CF4_F4CA4(u8 arg0, u8 arg1) {
	Unk80152CA0Entry *entry;
	s16 count;

	if (arg0 == 2 && (vehicleInstances[arg1].unk20 & VEHICLE_FLAG_UNK8)) {
		return;
	}
	if (arg0 == 1 && ((buildingInstances[arg1].unk8 >> 12) & 0x1000)) {
		return;
	}

	count = D_80152C96;
	entry = &D_80152CA0[count];
	entry->unk1 = arg0;
	entry->unk0 = arg1;
	entry->unk2 = 0;

	if (count >= 0x20) {
		osSyncPrintf(&D_80143F58_152F08);
		return;
	}

	D_80152C96 = count + 1;

	if (arg0 == 2) {
		vehicleInstances[arg1].unk20 |= 0x80;
		return;
	}
	if (arg0 == 1) {
		u32 val = buildingInstances[arg1].unk8;
		u32 shifted = val >> 12;
		buildingInstances[arg1].unk8 = ((((shifted | 0x1000) ^ shifted) << 12) ^ val);
	}
}

// CURRENT(16)
// Remove a matching shield and compact its entry list.
#ifdef NON_MATCHING
void func_800E5E3C_F4DEC(u8 arg0, u8 arg1) {
	s16 i;
	s16 j;
	s32 newCount;
	s16 count;
	s32 type;

	osSyncPrintf(&D_80143F7C_152F2C, arg1);
	count = D_80152C96;
	type = arg0;

	for (i = 0; i <= count; i++) {
		if (type == D_80152CA0[i].unk1) {
			if (arg1 == D_80152CA0[i].unk0) {
				if (D_80152CA0[i].unk1 == 2) {
					vehicleInstances[D_80152CA0[i].unk0].unk20 &= ~0x80;
				} else if (D_80152CA0[i].unk1 == 1) {
					buildingInstances[D_80152CA0[i].unk0].statusFlags &= ~0x1000;
				}

				newCount = count - 1;
				for (j = i; j < count - 1; j++) {
					D_80152CA0[j] = D_80152CA0[j + 1];
				}

				D_80152C96 = newCount;
				D_80152CA0[j + 1].unk2 = 0;
				D_80152CA0[j + 1].unk0 = 0;
				D_80152CA0[j + 1].unk1 = 0;
				osSyncPrintf(&D_80143F94_152F44), count = D_80152C96;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5E3C_F4DEC.s")
#endif

void func_800E6028_F4FD8(u8 arg0, u8 arg1) {
	s16 i;

	osSyncPrintf(&D_80143FA4_152F54, (s32) arg1);
	for (i = 0; i < D_80152C96; i++) {
		if ((arg0 == D_80152CA0[i].unk1) && (arg1 == D_80152CA0[i].unk0)) {
			D_80152CA0[i].unk2 = 0x64;
			break;
		}
	}
}

s32 func_800E60CC_F507C(u8 arg0, u8 arg1) {
	s16 i;

	for (i = 0; i < D_80152C96; i++) {
		if (arg0 == D_80152CA0[i].unk1 && arg1 == D_80152CA0[i].unk0) {
			return 1;
		}
	}
	return 0;
}

#ifdef NON_MATCHING
void func_800E614C_F50FC(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	Unk800E614CFxSlot *slot;
	s32 slotIdx;
	s32 hundred = 100;
	Unk800E614CFxMotion *motion;
	s16 angle;

	if (arg0 > 0x7A00) {
		arg0 = 0x7A00;
	}
	if (arg0 < -0x7A00) {
		arg0 = -0x7A00;
	}

	if (arg2 > 0x7A00) {
		arg2 = 0x7A00;
	}
	if (arg2 < -0x7A00) {
		arg2 = -0x7A00;
	}

	if ((currentLevel == 1 || currentLevel == 3) && D_80052ACA != 2) {
		slotIdx = 0;
		while (((Unk800E614CFxSlot *)(s32)&D_80153300[slotIdx])->unk1E6 != 0) {
			slotIdx++;
		}

		if (arg3 != 0) {
			s32 i;



			i = arg3;
			while (i--) {
				Unk800E614CFxEntry *entry;
				s32 z;

				entry = &D_80153300[slotIdx].entries[i];
				entry->unk0 = (func_800038E0_44E0() * 2) + (arg0 << 8);
				z = (func_800038E0_44E0() * 2) + (arg2 << 8);
				entry->unk8 = z;
				entry->unk4 = func_800B84D0_C7480((s16) (entry->unk0 >> 8), (s16) (z >> 8));
				if (entry->unk4 < ((D_80222A70 + 0xC8) << 8)) {
					entry->unk4 = (((func_800038E0_44E0() % hundred) + D_80222A70) + 0xC8) << 8;
				}
				entry->unkC = 0;
				entry->unk10 = 0;
				entry->unk14 = 0;
				entry->unk18 = func_800038E0_44E0() & 0x1F;

			}
		}

		slot = &D_80153300[slotIdx];
		angle = func_800038E0_44E0();
		slot->motion.x = arg0 << 8;
		slot->motion.y = arg1 << 8;
		slot->motion.z = arg2 << 8;

		{


			motion = &slot->motion;
			motion->velocityX = (s32) (((f32)coss((u16) angle) / 32768.0) * (f32)(D_800313F4 * hundred));
			motion->velocityZ = (s32) (((f32)sins((u16) angle) / 32768.0) * (f32)(D_800313F4 * hundred));
		}

		motion->velocityY = 0;
		slot->unk1DC = 0;
		slot->unk1E0 = 0x708;
		slot->unk1E8 = 0x32;
		slot->unk1E6 = arg3;
		slot->unk1E4 = func_800038E0_44E0();
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E614C_F50FC.s")
#endif

#ifdef NON_MATCHING
void func_800E64B4_F5464(void) {
	s32 slotCount = 4;
	Unk800E614CFxSlot *slot;
	s32 pad[2];
	Unk800E614CFxEntry *entry;
	s32 activeCount;
	Unk800E614CFxMotion *motion;

	activeCount = 0;
	if (currentLevel != 1) {
		return;
	}

	if (slotCount--) {
		do {
			s32 fxCount;

			slot = &D_80153300[slotCount];
			fxCount = slot->unk1E6;
			motion = &slot->motion;
			if (fxCount != 0) {

				slot->motion.x += slot->motion.velocityX;
				slot->motion.z += slot->motion.velocityZ;
				slot->unk1DC += slot->unk1E0;
				motion->y = func_800B84D0_C7480((s16) (slot->motion.x >> 8), (s16) (slot->motion.z >> 8));
				if (motion->y < (D_80222A70 << 8)) {
					motion->y = D_80222A70 << 8;
				}

				motion->y += slot->unk1DC;
				if (motion->x >= 0x7A0001) {
					motion->velocityX = -0x1770;
					motion->velocityZ = 0;
					slot->unk1E4 = -0x8000;
				}
				if (motion->x < (s32) 0xFF860000) {
					motion->velocityX = 0x1770;
					motion->velocityZ = 0;
					slot->unk1E4 = 0;
				}

				if (motion->z >= 0x7A0001) {
					motion->velocityX = 0;
					motion->velocityZ = -0x1770;
					slot->unk1E4 = -0x4000;
				}
				if (motion->z < (s32) 0xFF860000) {
					motion->velocityX = 0;
					motion->velocityZ = 0x1770;
					slot->unk1E4 = 0x4000;
				}

				if (slot->unk1E8-- <= 0) {

					slot->unk1E8 = func_800038E0_44E0() & 0x24;
					slot->unk1E0 = 0;
					slot->unk1E4 += (func_800038E0_44E0() & 0x1FFF) - 0xFFF;
					motion->velocityX = (s32) (((f32) coss((u16) slot->unk1E4) / 32768.0) * D_801441E8_153198[0]);
					motion->velocityZ = (s32) (((f32) sins((u16) slot->unk1E4) / 32768.0) * D_801441E8_153198[0]);
				}

				if (func_800047FC_53FC((s16) ((((motion->x >> 8) - D_80052B34->unk0) >> 8))) + func_800047FC_53FC((s16) ((((motion->z >> 8) - D_80052B34->unk4) >> 8))) >= 0x1F5) {
					slot->unk1E6 = 0;
				} else {

					activeCount++;
					while (fxCount--) {
						entry = &slot->entries[fxCount];
						entry->unk0 += (entry->unkC += (entry->unk0 < motion->x) ? 0x46 : -0x46);

						entry->unk4 += (entry->unk10 += (entry->unk4 < motion->y) ? 0x1E : -0x14);

						entry->unk8 += (entry->unk14 += (entry->unk8 < motion->z) ? 0x46 : -0x46);
						entry->unk18--;

						if (entry->unk18 < 0) {
							entry->unk18 = 0x1F;
						}

						if (entry->unk10 > 0x6A4) {
							entry->unk10 = 0x6A4;
						}
						if (entry->unk10 < -0x6A4) {
							entry->unk10 = -0x6A4;
						}

						if (entry->unkC > 0x1B58) {
							entry->unkC = 0x1B58;
						}
						if (entry->unkC < -0x1B58) {
							entry->unkC = -0x1B58;
						}

						if (entry->unk14 > 0x1B58) {
							entry->unk14 = 0x1B58;
						}
						if (entry->unk14 < -0x1B58) {
							entry->unk14 = -0x1B58;
						}

					}
				}
			}

		} while (slotCount--);
	}

	if (!(D_80052A8C & 0x1F) && (activeCount < 4)) {
		s16 cosVal;
		s16 sinVal;

		cosVal = coss((u16) func_800038E0_44E0());
		sinVal = sins((u16) func_800038E0_44E0());
		func_800E614C_F50FC(
		(s16) (s32) (((((f32) cosVal / 32768.0) * 256.0) * 12.0) + D_80052B34->unk0),
		0,
		(s16) (s32) (((((f32) sinVal / 32768.0) * 256.0) * 12.0) + D_80052B34->unk4),
		(s16) ((func_800038E0_44E0() % 16) + 1));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E64B4_F5464.s")
#endif

#ifdef NON_MATCHING
void func_800E6A38_F59E8(void) {
	s32 slotCount = 4;
	Unk800E614CFxSlot *slot;
	Unk800E614CFxEntry *entry;
	s32 remain;
	s16 baseX;
	s16 baseY;
	s16 baseZ;
	s16 angle;
	s32 radius;
	s16 xOff;
	s16 zOff;
	s16 yTop;
	Vtx *vtx0;
	Vtx *vtx1;
	Vtx *vtx2;
	Vtx *vtx3;
	Vtx *vtx4;
	Vtx *vtx5;

	if ((currentLevel != 1) || (D_80052ACA == 2)) {
		return;
	}

	gDPPipeSync(D_8005BB2C++);
	gDPTileSync(D_8005BB2C++);
	gDPLoadSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_LIGHTING);
	gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, D_5039AB0);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 511, 512);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_4b, 4, 0x0000, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 252, 124);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_5039EB0);
	gDPTileSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 15);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gDPPipeSync(D_8005BB2C++);
	gDPTileSync(D_8005BB2C++);
	gDPLoadSync(D_8005BB2C++);

	while (slotCount--) {
		slot = &D_80153300[slotCount];
		remain = slot->unk1E6;
		if (remain != 0) {
			if (remain--) {
			entry = &slot->entries[remain];
			do {


				baseX = (s16)((s32)entry->unk0 >> 8);
				baseY = (s16)(D_8013DF00_14CEB0[entry->unk18] + entry->unk4 >> 8);
				baseZ = (s16)((s32)entry->unk8 >> 8);
				angle = func_80003824_4424((f32)entry->unk14, (f32)entry->unkC);

				if ((entry->unk18 >= 0x1B) || (entry->unk18 < 0xB)) {
					radius = (s16)(entry->unk18 & 3);
					if ((s32)radius == 3) {
						radius = 1;
					}
				} else {
					radius = 2;
				}

				radius = (s16)(radius * 20);
				xOff = (s16)(((f32)coss((u16)-angle) / 32768.0) * (radius + 20));
				zOff = (s16)((((f32)sins((u16)-angle) / 32768.0) * (radius + 20)));

				yTop = baseY + 0x14;
				vtx0 = D_8005BB34;
				D_8005BB34->v.ob[0] = baseX;
				D_8005BB34++;
				vtx0->v.ob[1] = baseY;
				vtx0->v.ob[2] = baseZ;
				vtx0->v.tc[0] = 0x1000;
				vtx0->v.tc[1] = 0x0800;

				vtx1 = D_8005BB34;
				D_8005BB34->v.ob[0] = baseX;
				D_8005BB34++;
				vtx1->v.ob[1] = yTop;
				vtx1->v.ob[2] = baseZ;
				vtx1->v.tc[0] = 0x1000;
				vtx1->v.tc[1] = 0;

				vtx2 = D_8005BB34;
				D_8005BB34->v.ob[0] = baseX + xOff;
				D_8005BB34++;
				vtx2->v.ob[1] = yTop;
				vtx2->v.ob[2] = baseZ + zOff;
				vtx2->v.tc[0] = 0;
				vtx2->v.tc[1] = 0x0800;

				vtx3 = D_8005BB34;
				D_8005BB34->v.ob[0] = baseX - xOff;
				D_8005BB34++;
				vtx3->v.ob[1] = yTop;
				vtx3->v.ob[2] = baseZ - zOff;
				vtx3->v.tc[0] = 0x1000;
				vtx3->v.tc[1] = 0;

				entry--;
				vtx4 = D_8005BB34;
				D_8005BB34->v.ob[0] = baseX + (entry[1].unkC >> 7);
				D_8005BB34++;
				vtx4->v.ob[1] = baseY + (entry[1].unk10 >> 7) + 0x14;
				vtx4->v.ob[2] = baseZ + (entry[1].unk14 >> 7);
				vtx4->v.tc[0] = 0;
				vtx4->v.tc[1] = 0x0800;

				vtx5 = D_8005BB34;
				vtx5->v.ob[0] = vtx4->v.ob[0];
				D_8005BB34++;
				vtx5->v.ob[1] = vtx4->v.ob[1];
				vtx5->v.ob[2] = vtx4->v.ob[2];
				vtx5->v.tc[0] = 0;
				vtx5->v.tc[1] = 0;

				vtx5->v.cn[0] = 0;
				vtx4->v.cn[0] = 0;
				vtx3->v.cn[0] = 0;
				vtx2->v.cn[0] = 0;
				vtx1->v.cn[0] = 0;
				vtx0->v.cn[0] = 0;
				vtx5->v.cn[1] = 0;
				vtx4->v.cn[1] = 0;
				vtx3->v.cn[1] = 0;
				vtx2->v.cn[1] = 0;
				vtx1->v.cn[1] = 0;
				vtx0->v.cn[1] = 0;
				vtx5->v.cn[2] = 0;
				vtx4->v.cn[2] = 0;
				vtx3->v.cn[2] = 0;
				vtx2->v.cn[2] = 0;
				vtx1->v.cn[2] = 0;
				vtx0->v.cn[2] = 0;
				vtx0->v.cn[3] = vtx1->v.cn[3] = vtx2->v.cn[3] = vtx3->v.cn[3] = vtx4->v.cn[3] = vtx5->v.cn[3] = 0xFF;

				gSPVertex(D_8005BB2C++, K0_TO_PHYS(vtx0), 6, 0);
				gSP1Triangle(D_8005BB2C++, 0, 1, 4, 0);
				gSP1Triangle(D_8005BB2C++, 2, 3, 5, 0);

			} while (remain--);
			}
		}
	}

	gDPTileSync(D_8005BB2C++);
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA, G_CC_PASS2);
	gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E6A38_F59E8.s")
#endif

// displayFXUnderWater
void func_800E71F8_F61A8(void) {
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(&D_80031160), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
}

// displayFXOnWater - Ripples, splashes etc
void func_800E7234_F61E4(void) {
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(&D_80031160), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	func_800DD604_EC5B4();
	func_800E6A38_F59E8();
	func_800CFD84_DED34();
	func_800E5538_F44E8();
}

void func_800E72A0_F6250(void)
{
	if (currentLevel == 2 && func_8000726C_7E6C(0x1E) == 0)
	{
		func_800E2830_F17E0();
	}
	else if (currentLevel == 4)
	{
		func_800E2830_F17E0();
	}
	func_800E1C10_F0BC0();
	if (D_80052ACB == 0)
	{
		func_800E64B4_F5464();
	}
	func_800E5B78_F4B28();
	func_800E520C_F41BC();
}

void func_800E7338_F62E8(void)
{
	s16 new_var;
	u16 sp2C;
	s32 sp28;
	u16 sp26;
	if (((s32)D_80157532) > 0)
	{
		if (D_8015753C == 1)
		{
			D_80157536 = D_80052B34->unk0;
			D_80157538 = D_80052B34->unk4;
		}
		if (!(--D_80157534))
		{
			sp28 = (sp26 = func_800038E0_44E0(), func_800B84D0_C7480(D_80157536, D_80157538));
			sp2C = func_800038E0_44E0();
			func_800DF038_EDFE8((s16)((((sp26 % (D_8015753A * 2)) & 0xFFFFFFFF) + D_80157536) - D_8015753A), new_var = (s16)((sp28 >> 8) + 0x28), (s16)(((sp2C % (D_8015753A * 2)) + D_80157538) - D_8015753A), (u16)((func_800038E0_44E0() % 50) + 0x32), 0, 0);
			D_80157534 = *((u8 *)(&D_80157533));
			D_80157532--;
		}
	}
}

void func_800E74DC_F648C(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4, u8 arg5) {
	D_80157532 = arg3;
	if (arg4 < arg3) {
		arg3 = arg4;
	}
	D_80157533 = arg4 / arg3;
	D_80157534 = D_80157533;
	D_80157536 = arg0;
	D_80157538 = arg1;
	D_8015753A = arg2;
	D_8015753C = arg5;
}

void func_800E75A0_F6550(s16 arg0, s16 arg1, s16 arg2) {
	if (currentLevel == LEVEL_GREECE || currentLevel == LEVEL_AMERICA) {
		func_800DEADC_EDA8C(arg0, (s16)(func_800B84D0_C7480(arg0, arg1) >> 8), arg1, arg2);
		return;
	}
	if (currentLevel == LEVEL_JAVA) {
		func_800C9530_D84E0(arg0, arg1, 0xF, 0x96, 0x96, 0xC8, (arg2 / 4) + 0x3C);
	}
}

void func_800E7660_F6610(void) {
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK | G_FOG | G_LIGHTING);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPPipeSync(D_8005BB2C++);
}

void func_800E77B4_F6764(void) {
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_PASS2);
	gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK | G_FOG | G_LIGHTING);
	gDPPipeSync(D_8005BB2C++);
}

void func_800E7894_F6844(s16 arg0, s16 arg1, s16 arg2) {
	func_800E7660_F6610();
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(((func_800038E0_44E0() % 8) << 9) + (s32)&D_100C700));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));
	gDPPipeSync(D_8005BB2C++);
	D_80153BCD = 0x20;
	D_80153BCE = 0x20;
	D_80153BB8.x = (f32)arg0;
	D_80153BB8.y = (f32)arg1;
	D_80153BB8.z = (f32)arg2;
	D_80153BC4 = &D_80153B80;
	D_80153BC8 = 100.0f;
	D_80153BCC = 0xFF;
	func_800DB350_EA300();
	func_800E77B4_F6764();
}
