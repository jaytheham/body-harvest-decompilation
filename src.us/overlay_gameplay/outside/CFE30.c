#include <ultra64.h>
#include "common.h"

const char D_80142EA0_151E50[] = "ERROR: tried to create a new effect at %d\n";
const char D_80142ECC_151E7C[] = "EFFECTS WARNING : Call to free up an effect which does not exist\n";
const char D_80142F10_151EC0[] = "ERROR : freeing all effect units for unused effect\n";
const char D_80142F44_151EF4[] = "Do not allocate because in pause\n";
const char D_80142F68_151F18[] = "ERROR: tried to allocate a permanent effect\n";
const char D_80142F98_151F48[] = "WARNING : Out of space to create a new dynamic effect of type %d.\n";
const char D_80142FDC_151F8C[] = "ERROR: tried to create a unit at %d (firstEmpty = %d, used=%d)\n";
const char D_8014301C_151FCC[] = "Do not allocate because in pause\n";
const char D_80143040_151FF0[] = "WARNING - New permanent effect unit (type %d) cannot be allocated - out of space.\n";
const char D_80143094_152044[] = "WARNING - New dynamic effect unit (type %d) cannot be allocated - out of space.\n";
const char D_801430E8_152098[] = "*** Tried to allocate a unit that is already being used!! ***\n";
const char D_80143128_1520D8[] = "ERROR - call to free invalid unit: index %d from permanent effect %d\n";
const char D_80143170_152120[] = "ERROR - call to free invalid unit: index %d from effect %d\n";
const char D_801431AC_15215C[] = "UNIT POOL CRITICAL ERROR - Call to free unused unit %d from permanent effect %d\n";
const char D_80143200_1521B0[] = "UNIT POOL CRITICAL ERROR - Call to free unused unit %d from effect %d\n";
const char D_80143248_1521F8[] = "ERROR : Tried to kill unit from effect which has no units.\n";
const char D_80143284_152234[] = "ERROR : Unit list inconsistency occurred with 2 units left.\n";
const char D_801432C4_152274[] = "EFFECTS WARNING : Call to free up invalid triple effect unit.\n";
const char D_80143304_1522B4[] = "EFFECTS WARNING : Call to free up invalid double effect unit.\n";
const char D_80143344_1522F4[] = "** WARNING: tried to update a smoke trail effect that doesn't exist! **\n";
const char D_80143390_152340[] = "DYNAMIC EFFECTS : Tried to kill smoke puff unit which does not exist!\n";
const char D_801433D8_152388[] = "DYNAMIC EFFECTS : Cancelled new photon effect - couldn't allocated any effect units\n";
const char D_80143430_1523E0[] = "DYNAMIC EFFECTS : Tried to update photon effect which does not exist!\n";
const char D_80143478_152428[] = "DYNAMIC EFFECTS : Tried to kill photon effect which does not exist!\n";
const char D_801434C0_152470[] = "EFFECTS WARNING : Call to move a fire effect which doesn't exist\n";
const char D_80143504_1524B4[] = "EFFECTS WARNING : Failed to create sparks system - cannot allocate any units\n";
const char D_80143554_152504[] = "EFFECTS WARNING : Failed to create sparks system - cannot allocate any units\n";
const char D_801435A4_152554[] = "EFFECTS WARNING : Trapped call to create chunk for explosion which does not exist.\n";
const char D_801435F8_1525A8[] = "EFFECTS WARNING : Spurt effect not created - could not allocated any units\n";
const char D_80143644_1525F4[] = "** WARNING: tried to update a bubble effect that doesn't exist! **\n";
const char D_80143688_152638[] = "EFFECTS WARNING: Failed to create a jet stream - could not allocate any units\n";
const char D_801436D8_152688[] = "** WARNING: tried to update a jet stream effect that doesn't exist! **\n";
const char D_80143720_1526D0[] = "EFFECTS WARNING: Failed to create a water jet - could not allocate any units\n";
const char D_80143770_152720[] = "EFFECTS WARNING: Failed to create lightning - could not allocate enough units\n";
const char D_801437C0_152770[] = "EFFECTS WARNING : You have tried to kill a lightning effect which doesn't exist.\n";
const char D_80143814_1527C4[] = "** WARNING: tried to update a ring weapon bullet that doesn't exist! **\n";
const char D_80143860_152810[] = "** WARNING: tried to update a triple spinner that doesn't exist! **\n";
const char D_801438A8_152858[] = "TRIPLESPINNER draw warning : trajection is zero.\n";
const char D_801438DC_15288C[] = "Can't create a nuke - one already in progress\n";
const char D_8014390C_1528BC[] = "DYNAMIC EFFECTS : Tried to kill minin photon effect which does not exist!\n";
const char D_80143958_152908[] = "DYNAMIC EFFECTS : Tried to update mini photon effect which does not exist!\n";
const char D_801439A4_152954[] = "DYNAMIC EFFECTS : Tried to kill fire ball effect which does not exist!\n";
const char D_801439EC_15299C[] = "DYNAMIC EFFECTS : Tried to update fire ball effect which does not exist!\n";
const char D_80143A38_1529E8[] = "Create group effect\n";
const char D_80143A50_152A00[] = "ERROR : Tried to update a dynamic effect with permanent type %d!\n";
const char D_80143A94_152A44[] = "ERROR : Tried to update a dynamic effect with invalid type!\n";
const char D_80143AD4_152A84[] = "ERROR : Tried to update a permanent effect with a normal type %d!\n";
const char D_80143B18_152AC8[] = "ERROR : Tried to update a permanent effect with invalid type!\n";
const char D_80143B58_152B08[] = "EFFECTS WARNING : Trying to sort unsortable effect\n";
const char D_80143B8C_152B3C[] = "AAARRRGH! EFFECTS HAVE REACHED MAX VERTICES - ABORT DRAWING THIS FRAME\n";
const char D_80143BD4_152B84[] = "AAARRRGH! CAN'T DRAW EFFECTS - ABOUT TO OVERFLOW\n";
const char D_80143C08_152BB8[] = "ERROR : Call to draw an effect of permanent type %d.\n";
const char D_80143C40_152BF0[] = "ERROR : Call to draw an effect of unknown type %d.\n";
const char D_80143C74_152C24[] = "AAARRRGH! EFFECTS HAVE REACHED MAX VERTICES - ABORT DRAWING THIS FRAME\n";
const char D_80143CBC_152C6C[] = "AAARRRGH! CAN'T DRAW EFFECTS - ABOUT TO OVERFLOW\n";
const char D_80143CF0_152CA0[] = "ERROR : Call to draw a permanent effect of normal type %d.\n";
const char D_80143D2C_152CDC[] = "ERROR : Call to draw a permanent effect of unknown type %d.\n";
const char D_80143D6C_152D1C[] = "CheckNum: %d\n";
const char D_80143D7C_152D2C[] = "further info: %d,%d,%d,%d,%d,%d,%d,%d\n";
const char D_80143DA4_152D54[] = "further info: %d,%d,%d,%d,%d,%d,%d,%d\n";
const char D_80143DCC_152D7C[] = "further info: %d,%d,%d,%d,%d,%d,%d,%d\n";
const char D_80143DF4_152DA4[] = "trans[X] = %d,%d,%d,%d : %f\n";
const char D_80143E14_152DC4[] = "trans[Y] = %d,%d,%d,%d : %f\n";
const char D_80143E34_152DE4[] = "trans[Z] = %d,%d,%d,%d : ";
const char D_80143E50_152E00[] = " %f\n";
const char D_80143E58_152E08[] = "---------------------------\n";
const char D_80143E78_152E28[] = "Call to draw generic flat effect with unknown render type.\n";
const char D_80143EB4_152E64[] = "Initialise special effects\n";
const char D_80143ED0_152E80[] = "\n\nDUMP SPECIAL EFFECTS INFO\n\n";
const char D_80143EF0_152EA0[] = "Effect %d :  Type %d  numUints %d\n";
const char D_80143F14_152EC4[] = "EFFECTS WARNING : Call to CreateExplosion with an unknown type %d.\n";
const char D_80143F58_152F08[] = "Error: too many shields allocated\n";
const char D_80143F7C_152F2C[] = "removing shield : %d\n";
const char D_80143F94_152F44[] = "shield remove\n";
const char D_80143FA4_152F54[] = "removing shield : %d\n";

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
u8 D_8013DB10_14CAC0[0x170] = {
	0x00, 0x00, 0x00, 0x00, 0x03, 0x0A, 0x00, 0x19, 0x18, 0x11, 0x00, 0x19, 0x18, 0x11, 0x00, 0x19,
	0x13, 0x2B, 0x00, 0x19, 0x22, 0x1C, 0x00, 0x19, 0x23, 0x20, 0x00, 0x19, 0xDF, 0x1E, 0x00, 0x19,
	0xE3, 0x19, 0x00, 0x19, 0x1C, 0x1E, 0x00, 0x19, 0x16, 0x1A, 0x00, 0x19, 0x17, 0x15, 0x00, 0x19,
	0x23, 0x1E, 0x00, 0x19, 0x1B, 0x19, 0x00, 0x19, 0x0F, 0x17, 0x00, 0x19, 0x18, 0x22, 0x00, 0x19,
	0x01, 0x41, 0x00, 0x19, 0x00, 0x28, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x5D, 0x00, 0x28, 0xE8, 0x1D, 0x00, 0x19, 0xE2, 0x23, 0x00, 0x19, 0x44, 0x28, 0x58, 0x23,
	0x0F, 0x00, 0x00, 0x19, 0x24, 0x23, 0x00, 0x19, 0xD8, 0x22, 0x23, 0x19, 0xDA, 0x21, 0x21, 0x19,
	0x15, 0x17, 0x00, 0x19, 0x9D, 0x62, 0x00, 0x2D, 0x12, 0x1C, 0x00, 0x19, 0x99, 0x3C, 0x2A, 0x23,
	0x31, 0x21, 0x53, 0x1F, 0xDA, 0x1F, 0x1E, 0x19, 0x2D, 0x2D, 0x00, 0x19, 0xB6, 0x7D, 0x00, 0x28,
	0x3F, 0x27, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xDA, 0x17, 0x00, 0x14,
	0xE2, 0x24, 0x06, 0x0F, 0x28, 0x18, 0x00, 0x14, 0x18, 0x18, 0x00, 0x14, 0x24, 0x18, 0x00, 0x14,
	0x35, 0x13, 0x00, 0x19, 0xF6, 0x34, 0x00, 0x19, 0xFC, 0x18, 0x00, 0x19, 0x9E, 0x00, 0x00, 0x32,
	0xD3, 0x00, 0x00, 0x19, 0xC4, 0x00, 0x00, 0x19, 0xC9, 0x19, 0x19, 0x14, 0x00, 0x00, 0x00, 0x00,
	0xC9, 0x1E, 0x19, 0x19, 0x32, 0x13, 0x00, 0x19, 0x3A, 0x2E, 0x1F, 0x19, 0x00, 0x00, 0x00, 0x00,
	0x1E, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBE, 0x19, 0x15, 0x14, 0x09, 0x32, 0x14, 0x14,
	0x00, 0x00, 0x00, 0x00, 0xC6, 0x25, 0x00, 0x32, 0xB2, 0x3C, 0x2F, 0x00, 0xD3, 0x44, 0x1A, 0x19,
	0x83, 0x19, 0x18, 0x19, 0x00, 0x18, 0x1E, 0x19, 0x00, 0x3C, 0x00, 0x19, 0x0B, 0x2D, 0x10, 0x19,
	0x25, 0x14, 0x00, 0x19, 0x2F, 0x1B, 0x00, 0x19, 0xCB, 0x2E, 0x3A, 0x19, 0x1E, 0x00, 0x00, 0x00,
	0x1E, 0x00, 0x00, 0x00, 0x16, 0x37, 0x38, 0x19, 0x44, 0x5B, 0x01, 0x28, 0x1E, 0x00, 0x00, 0x00,
	0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
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
u8 D_8013DD20_14CCD0[0x20] = {
	0x05, 0x03, 0x57, 0xF0, 0x05, 0x03, 0x52, 0x18, 0x05, 0x03, 0x50, 0x18, 0x05, 0x03, 0x54, 0x30,
	0x05, 0x03, 0x55, 0x10, 0x05, 0x03, 0x52, 0xC8, 0x05, 0x03, 0x56, 0xD8, 0x05, 0x03, 0x50, 0xB8,
};
u8 D_8013DD40_14CCF0[0x1C0] = {
	0x05, 0x05, 0x05, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x01, 0x00, 0x01,
	0x05, 0x05, 0x05, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x01, 0x00, 0x01,
	0x05, 0x05, 0x05, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x01, 0x00, 0x01,
	0x05, 0x05, 0x05, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x01, 0x00, 0x01,
	0x05, 0x05, 0x05, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x01, 0x00, 0x01,
	0x05, 0x05, 0x05, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x01, 0x00, 0x01,
	0x0A, 0x0A, 0x0A, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x40, 0x00, 0x01, 0x00, 0x01,
	0x0A, 0x0A, 0x0A, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x40, 0x00, 0x01, 0x00, 0x01,
	0x0A, 0x0A, 0x0A, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x40, 0x00, 0x01, 0x00, 0x01,
	0x0A, 0x0A, 0x0A, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x40, 0x00, 0x01, 0x00, 0x01,
	0x0A, 0x0A, 0x0A, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x40, 0x00, 0x01, 0x00, 0x01,
	0x0A, 0x0A, 0x0A, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x40, 0x00, 0x01, 0x00, 0x01,
	0x0F, 0x0F, 0x0F, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x1C, 0x00, 0x01, 0x00, 0x01,
	0x0F, 0x0F, 0x0F, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x1C, 0x00, 0x01, 0x00, 0x01,
	0x0F, 0x0F, 0x0F, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x1C, 0x00, 0x01, 0x00, 0x01,
	0x0F, 0x0F, 0x0F, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x1C, 0x00, 0x01, 0x00, 0x01,
	0x0F, 0x0F, 0x0F, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x1C, 0x00, 0x01, 0x00, 0x01,
	0x0F, 0x0F, 0x0F, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x1C, 0x00, 0x01, 0x00, 0x01,
	0x19, 0x19, 0x19, 0x00, 0x04, 0x05, 0x02, 0x00, 0x19, 0x00, 0x00, 0x20, 0x00, 0x01, 0x00, 0x01,
	0x28, 0x28, 0x28, 0x00, 0x08, 0x1E, 0x0A, 0x00, 0x32, 0x00, 0x00, 0x24, 0x00, 0x64, 0x00, 0x03,
	0x41, 0x41, 0x41, 0x0A, 0x0A, 0x32, 0x14, 0x00, 0x4B, 0x00, 0x00, 0x28, 0x00, 0x96, 0x00, 0x08,
	0x5A, 0x5A, 0x5A, 0x10, 0x10, 0x4B, 0x1E, 0x00, 0x64, 0x00, 0x00, 0x2C, 0x00, 0xC8, 0x00, 0x0C,
	0x7F, 0x7F, 0x7F, 0x20, 0x20, 0x64, 0x28, 0x00, 0x96, 0x00, 0x00, 0x30, 0x01, 0x2C, 0x00, 0x0F,
	0x7F, 0x7F, 0x7F, 0x20, 0x20, 0xFF, 0x28, 0x00, 0xC8, 0x00, 0x00, 0x30, 0x01, 0x2C, 0x00, 0x0F,
	0x46, 0x46, 0x46, 0x0C, 0x14, 0x00, 0x0F, 0x00, 0x3C, 0x00, 0x00, 0x28, 0x00, 0xFA, 0x00, 0x0A,
	0xDC, 0xDC, 0xDC, 0x20, 0x20, 0xFF, 0x32, 0x00, 0x7D, 0x00, 0x00, 0x30, 0x01, 0x2C, 0x00, 0x14,
	0x41, 0x41, 0x41, 0x0A, 0x0A, 0x32, 0x14, 0x00, 0x4B, 0x00, 0x00, 0x14, 0x00, 0x96, 0x00, 0x01,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
u8 D_8013DF00_14CEB0[0x80] = {
	0x00, 0x00, 0x03, 0xE8, 0x00, 0x00, 0x03, 0xE8, 0x00, 0x00, 0x07, 0x08, 0x00, 0x00, 0x0D, 0x48,
	0x00, 0x00, 0x14, 0x50, 0x00, 0x00, 0x1D, 0xB0, 0x00, 0x00, 0x29, 0xCC, 0x00, 0x00, 0x33, 0x2C,
	0x00, 0x00, 0x3C, 0x28, 0x00, 0x00, 0x42, 0x04, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00, 0x4B, 0x00,
	0x00, 0x00, 0x4E, 0x84, 0x00, 0x00, 0x4F, 0xB0, 0x00, 0x00, 0x50, 0x78, 0x00, 0x00, 0x50, 0x14,
	0x00, 0x00, 0x4E, 0x84, 0x00, 0x00, 0x4B, 0x64, 0x00, 0x00, 0x47, 0x7C, 0x00, 0x00, 0x42, 0xCC,
	0x00, 0x00, 0x3E, 0x1C, 0x00, 0x00, 0x38, 0x40, 0x00, 0x00, 0x32, 0xC8, 0x00, 0x00, 0x2B, 0xC0,
	0x00, 0x00, 0x25, 0x80, 0x00, 0x00, 0x1F, 0x40, 0x00, 0x00, 0x17, 0xD4, 0x00, 0x00, 0x10, 0x68,
	0x00, 0x00, 0x0C, 0x1C, 0x00, 0x00, 0x07, 0xD0, 0x00, 0x00, 0x05, 0x14, 0x00, 0x00, 0x04, 0xB0,
};
Unk80154082 D_8013DF80_14CF30 = { 0xB4, 0xFF, 0x32 };
u8 D_8013DF84_14CF34[0x0C] = {
	0xFF, 0xFF, 0x00, 0x46, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
};
u8 D_8013DF90_14CF40[0x0C] = {
	0xFF, 0xFF, 0xFF, 0x32, 0x28, 0x8C, 0x64, 0x64, 0x82, 0x1E, 0x14, 0x64,
};
u8 D_8013DF9C_14CF4C[0x0C] = {
	0xFF, 0xB4, 0xB4, 0x96, 0x28, 0x28, 0x82, 0x64, 0x64, 0x64, 0x14, 0x1E,
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
u8 D_8013DFF4_14CFA4[0x78] = {
	0x10, 0x00, 0x00, 0x0F, 0x00, 0x01, 0x10, 0x10, 0x01, 0x05, 0x00, 0x3C, 0x00, 0x00, 0x20, 0x20,
	0x01, 0x03, 0x02, 0x0A, 0x00, 0x00, 0x20, 0x20, 0x01, 0x03, 0x02, 0x0A, 0x00, 0x00, 0x20, 0x20,
	0x01, 0x06, 0x00, 0x02, 0x02, 0x00, 0x20, 0x20, 0x01, 0x04, 0x00, 0x03, 0x02, 0x00, 0x20, 0x20,
	0x01, 0x0A, 0x00, 0x03, 0x02, 0x00, 0x20, 0x20, 0x01, 0x00, 0x00, 0x63, 0x00, 0x00, 0x20, 0x20,
	0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x20, 0x08, 0x00, 0x00, 0x05, 0x00, 0x00, 0x20, 0x20,
	0x01, 0x0E, 0x0C, 0x06, 0x00, 0x00, 0x20, 0x20, 0x01, 0x0A, 0x0B, 0x08, 0x00, 0x00, 0x20, 0x20,
	0x01, 0x05, 0x06, 0x07, 0x00, 0x00, 0x20, 0x20, 0x08, 0x05, 0x00, 0x0A, 0x00, 0x00, 0x20, 0x20,
	0x10, 0x03, 0x00, 0x10, 0x00, 0x00, 0x20, 0x20,
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
u8 D_8013E0C0_14D070[0x3C] = {
	0x05, 0x03, 0x3F, 0xA0, 0x01, 0x00, 0xD8, 0x00, 0x01, 0x00, 0xE0, 0x80, 0x01, 0x00, 0xE0, 0x80,
	0x01, 0x00, 0xE2, 0x80, 0x01, 0x00, 0xE0, 0x80, 0x01, 0x00, 0xE2, 0x80, 0x01, 0x00, 0xD8, 0x00,
	0x01, 0x00, 0xC7, 0x00, 0x01, 0x00, 0xC7, 0x00, 0x01, 0x00, 0xE0, 0x80, 0x01, 0x00, 0xE0, 0x80,
	0x01, 0x00, 0xE0, 0x80, 0x01, 0x00, 0xC7, 0x00, 0x05, 0x04, 0x74, 0xF0,
};
u8 D_8013E0FC_14D0AC[0x0C] = {
	0xFF, 0x32, 0x32, 0x64, 0x00, 0x00, 0xFF, 0x32, 0x32, 0x64, 0x00, 0x00,
};
u8 D_8013E108_14D0B8[0x1E4] = {
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
};
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
u8 D_8013E348_14D2F8[0x3C] = {
	0xFA, 0xFF, 0x00, 0x8C, 0x00, 0x00, 0xFF, 0xFF, 0x19, 0x39, 0x17, 0x66, 0xFF, 0xC0, 0xA5, 0xF4,
	0x17, 0x66, 0xFF, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x26, 0x90, 0x80, 0xFF, 0xFF, 0xFF, 0xA0, 0x90,
	0x2A, 0xFF, 0xFF, 0xFF, 0x92, 0xFE, 0x1C, 0x00, 0x07, 0x42, 0x92, 0xFD, 0x78, 0x00, 0x07, 0x66,
	0xB0, 0xDB, 0x7A, 0xC4, 0x07, 0x15, 0xB0, 0xFF, 0xED, 0xC4, 0x07, 0x15,
};
u8 D_8013E384_14D334[0x3C] = {
	0xE6, 0x3E, 0x04, 0x19, 0x2A, 0x54, 0x61, 0x8C, 0x70, 0x12, 0x2C, 0xC9, 0x00, 0x79, 0xE9, 0xFF,
	0x00, 0x00, 0xF5, 0x81, 0xB0, 0x12, 0x1B, 0x8E, 0x00, 0x77, 0xE8, 0xFF, 0xFF, 0x00, 0xA0, 0x03,
	0xF4, 0x00, 0x03, 0x0C, 0xFA, 0x1F, 0x16, 0x70, 0x34, 0xB9, 0x2A, 0xEA, 0x08, 0x6A, 0x72, 0x15,
	0xFF, 0xEF, 0x08, 0xFF, 0x22, 0x71, 0x12, 0xEF, 0x08, 0xFD, 0x22, 0x71,
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
u8 D_8013E3E8_14D398[0x0C] = {
	0xF0, 0xFF, 0xFA, 0x64, 0xFF, 0xF0, 0x00, 0xE6, 0x96, 0x00, 0xC8, 0x64,
};
s16 D_8013E3F4_14D3A4 = 0;
s16 D_8013E3F8_14D3A8 = 0;
u32 D_pad14D3AA[3] = { 0 };
u32 D_8013E408_14D3B8 = 0;
u8 D_8013E40C_14D3BC[4] = {
	0xFF, 0x80, 0x80, 0x00,
};


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

#ifdef NON_MATCHING
// CURRENT(90)
void func_800C1288_D0238(u8 arg0, u8 arg1, s32 arg2) {
	u8 var_v0;

	if (arg0 < 0x1E) {
		D_80154088[arg0].unk1 = 0;
		D_80154088[arg0].unk0 = arg1;
		if (arg2 != 0) {
			D_80154088[arg0].unk1 = 8;
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C1288_D0238.s")
#endif

void func_800C1384_D0334(u8 arg0) {
	if (D_80154088[arg0].unk0 == 0xFA) {
		osSyncPrintf(&D_80142ECC_151E7C); // EFFECTS WARNING : Call to free up an effect which does not exist
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
		osSyncPrintf(&D_80142F10_151EC0); // ERROR : freeing all effect units for unused effect
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
		osSyncPrintf(&D_80142F44_151EF4); // Do not allocate because in pause
	}

	if (arg0 >= 0xA) {
		temp = 1;
	} else {
		temp = 0;
	}

	if (temp != 0) {
		osSyncPrintf(&D_80142F68_151F18, arg0); // ERROR: tried to allocate a permanent effect
		return 0xFB;
	}

	if (D_80154304 >= 0x1E) {
		osSyncPrintf(&D_80142F98_151F48, arg0); // WARNING : Out of space to create a new dynamic effect of type %d
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

s16 func_800C17B4_D0764(u8 arg0, s32 arg1) {
	s16 var_a2;

	if (gameplayMode == 2 || gameplayMode == 9) {
		osSyncPrintf(&D_8014301C_151FCC); // Do not allocate because in pause
	}
	if (D_8015430E >= 0x190) {
		if (arg1 != 0) {
			osSyncPrintf(&D_80143040_151FF0, D_801541F8[arg0].unk0); // WARNING - New permanent effect unit (type %d) cannot be allocated - out of space
			var_a2 = -3;
		} else {
			osSyncPrintf(&D_80143094_152044, D_80154088[arg0].unk0); // WARNING - New dynamic effect unit (type %d) cannot be allocated - out of space
			var_a2 = -3;
		}
	} else {
		var_a2 = D_80154310;
		if (D_80154318[var_a2].unk0 & 1) {
			osSyncPrintf(&D_801430E8_152098); // *** Tried to allocate a unit that is already being used!! ***
		}
		func_800C15C0_D0570(arg0, arg1, var_a2, 0);
	}
	return var_a2;
}

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
  osSyncPrintf(&D_801432C4_152274); // EFFECTS WARNING : Call to free up invalid triple effect unit
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
	osSyncPrintf(&D_80143304_1522B4); // EFFECTS WARNING : Call to free up invalid double effect unit
}

#ifdef NON_MATCHING
// CURRENT(1969)
void func_800C1ECC_D0E7C(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4) {
	Unk80154318Sub *temp_s0_2;
	s32 sp3C;
	Unk801541F8Entry *sp38;
	s16 sp42;
	u8 temp_v0;
	sp3C = arg3 & 0xFF;
	if (sp3C < 0x1E) {
		sp38 = &D_80154088[sp3C];
		if (sp38->unk0 == 0) {
			temp_v0 = D_80156ED8;
			if (temp_v0 == 1) {
				if ((func_800038E0_44E0() % 9) < 6) {
					goto block_5;
				}
			} else {
block_5:
				if ((temp_v0 != 2) || ((func_800038E0_44E0() % 9) < 3)) {
					sp42 = func_800C18D0_D0880(sp3C & 0xFF);
					if (sp42 != -3) {
						if ((arg4 == 0) || (arg4 == 2)) {
							D_80154318[sp42].unk2 = (func_800038E0_44E0() % 12) + 0x10;
							temp_s0_2 = (Unk80154318Sub *) &D_80154318[sp42].unk8;
							temp_s0_2->unk0 = (func_800038E0_44E0() % 13) + arg0 - 6;
							temp_s0_2->unk2 = (func_800038E0_44E0() % 19) + arg1 - 9;
							temp_s0_2->unk4 = (func_800038E0_44E0() % 13) + arg2 - 6;
							temp_v0 = 0xF5;
							temp_s0_2->unk6 = temp_v0;
							temp_s0_2->unk7 = temp_v0;
							temp_s0_2->unk8 = temp_v0;
							temp_s0_2->unk9 = 0xFF;
							if (arg4 == 0) {
								func_80137368_146318(temp_s0_2->unk0, temp_s0_2->unk2, temp_s0_2->unk4, 4, sp3C);
							}
						} else if (arg4 == 1) {
							D_80154318[sp42].unk2 = (func_800038E0_44E0() % 20) + 0x14;
							temp_s0_2 = (Unk80154318Sub *) &D_80154318[sp42].unk8;
							temp_s0_2->unk0 = (func_800038E0_44E0() % 20) + arg0 - 0xA;
							temp_s0_2->unk2 = (func_800038E0_44E0() % 20) + arg1 - 0xA;
							temp_s0_2->unk4 = (func_800038E0_44E0() % 20) + arg2 - 0xA;
							temp_s0_2->unk6 = (func_800038E0_44E0() % 100) + 0x82;
							temp_s0_2->unk7 = (func_800038E0_44E0() % 100) + 0x82;
							temp_s0_2->unk8 = (func_800038E0_44E0() % 100) + 0x82;
							temp_s0_2->unk9 = 0xFF;
							func_80137368_146318(temp_s0_2->unk0, temp_s0_2->unk2, temp_s0_2->unk4, 5, sp3C);
						}
						D_80154329[sp42].unk1 = arg4;
						sp38->unkA = sp42;
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

#ifdef NON_MATCHING
// CURRENT(230)
void func_800C22EC_D129C(u8 arg0) {
	s16 nextUnit;
	s16 unitId;

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
			Unk80154318Entry* unit;
			Unk80154318Sub* motion;

			unit = &D_80154318[unitId];
			motion = (Unk80154318Sub*)&unit->unk8;
			if (unit->unk11 < 0x14) {
				nextUnit = unit->unk4;
				func_800C2554_D1504(unitId, arg0);
				unitId = nextUnit;
			} else {
				if (motion->unkA == 1) {
					motion->unk2 -= (func_800038E0_44E0() % 3) + 3;
					motion->unk9 -= 15;
					unit->unk2 -= (func_800038E0_44E0() % 2) + 2;
				} else {
					motion->unk2 += 1;
					motion->unk6 = ((u8)motion->unk6) - 6;
					motion->unk7 = ((u8)motion->unk7) - 6;
					motion->unk8 = ((u8)motion->unk8) - 6;
					motion->unk9 -= 25;
					unit->unk2 += (func_800038E0_44E0() % 5) + 5;
				}

				unitId = unit->unk4;
			}

			if (unitId == -5) {
				break;
			}
			} while (D_80154088[arg0].unk4 > 0);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C22EC_D129C.s")
#endif

void func_800C2554_D1504(s16 arg0, u8 arg1) {
	if (arg1 >= 0x1E || D_80154088[arg1].unk0 != 0) {
		osSyncPrintf(&D_80143390_152340); // DYNAMIC EFFECTS : Tried to kill smoke puff unit which does not exist!
		return;
	}
	if (arg0 == D_80154088[arg1].unkA) {
		func_800C1418_D03C8(arg1, 0);
		func_800C1384_D0334(arg1);
		return;
	}
	func_800C1A4C_D09FC(arg0, arg1, 0);
}

// CURRENT(8646)
#ifdef NON_MATCHING
void func_800C25F8_D15A8(s32 arg0) {
	Unk801541F8Entry *effect;
	Unk80154318Entry *entry;
	Unk80154318Entry *linkedEntry;
	Vec3f delta;
	f32 dot;
	s16 unitId;
	s16 nextId;
	s16 i;

	D_80153BCD = 0x20;
	D_80153BCE = 0x20;
	effect = &D_80154088[arg0 & 0xFF];

	gDPPipeSync(D_8005BB2C++);

	if ((D_80154318[effect->unk6].unk12 == 0) || (D_80154318[effect->unk6].unk12 == 2)) {
		gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA, G_CC_MODULATEIA);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, D_100E080);
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
	} else if (D_80154318[effect->unk6].unk12 == 1) {
		gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, D_100D800);
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
		entry = &D_80154318[effect->unk8];
		linkedEntry = &D_80154318[entry->unk6];
		delta.x = (f32)(entry->unk8 - linkedEntry->unk8);
		delta.y = (f32)(entry->unkA - linkedEntry->unkA);
		delta.z = (f32)(entry->unkC - linkedEntry->unkC);
		dot = func_800C1090_D0040(&D_80153AD0, &delta);
	} else {
		dot = 1.0f;
	}

	if (dot < 0.0f) {
		unitId = effect->unk6;
	} else {
		unitId = effect->unk8;
	}

	if (effect->unk4 > 0) {
		i = 0;
		do {
			entry = &D_80154318[unitId];
			D_80153BB8.x = (f32)entry->unk8;
			D_80153BB8.y = (f32)entry->unkA;
			D_80153BB8.z = (f32)entry->unkC;
			D_80153BC4 = &entry->unkE;
			D_80153BCC = entry->unk11;
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

void func_800C3288_D2238(u8 arg0) {
	if (arg0 >= 0x1E || D_80154088[arg0].unk0 != 1) {
		osSyncPrintf(&D_80143478_152428); // DYNAMIC EFFECTS : Tried to kill photon effect which does not exist!
		return;
	}
	func_800C1418_D03C8(arg0, 0);
	func_800C1384_D0334(arg0);
}

// CURRENT(25829)
#ifdef NON_MATCHING
void func_800C3300_D22B0(s32 arg0) {
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
				gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 3) & 0x1FFFFFFF), 3, 0);
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
/* CURRENT(1025) */
s16 func_800C3BD8_D2B88(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u16 arg4, u8 arg5, u8 arg6, u8 arg7) {
	s16 slot;
	u16 color;
	u16 height;
	u16 temp_u16;
	Unk80154318Entry *entry;
	Unk80154318Entry *linkedEntry;
	Unk80154318Sub *entrySub;

	slot = func_800C19D4_D0984(0xC, 1);
	if (slot != -3) {
		entry = &D_80154318[slot];
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;

		linkedEntry = &D_80154318[entry->unk4];
		((u8 *)linkedEntry)[0xC] = 0;

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

		entrySub = (Unk80154318Sub *)&linkedEntry->unk8;
		entrySub->unk2 = arg3;
		entrySub->unk0 = height;
		entrySub->unk7 = 8;

		entrySub = (Unk80154318Sub *)&entry->unk8;

		color = arg5;
		color = (u8)(color / 2) + color;
		if ((u16)color >= 0x100) {
			color = 0xFF;
		}
		entrySub->unk9 = color;

		color = arg6;
		color = (u8)(color / 2) + color;
		if ((u16)color >= 0x100) {
			color = 0xFF;
		} else {
			color = (u16)color;
		}
		entrySub->unkA = color;

		color = arg7;
		color = (u8)(color / 2) + color;
		if ((u16)color >= 0x100) {
			color = 0xFF;
		} else {
			color = (u16)color;
		}
		entrySub->unkB = color;
	}

	return slot;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C3BD8_D2B88.s")
#endif

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
	osSyncPrintf(&D_801434C0_152470); // EFFECTS WARNING : Call to move a fire effect which doesn't exist
}

#ifdef NON_MATCHING
// CURRENT(2821)
void func_800C3E2C_D2DDC(void) {
	s32 idx;
	Unk80154318Entry *entry;
	Unk80154318Entry *linkedEntry;
	Unk80154318Sub *entrySub;
	Unk80154318Sub *linkedSub;
	s32 sizeQuarter;
	s32 randB;
	s32 randA;
	s32 temp;
	s32 mod8;
	u8 color;

	idx = D_8015428E;
	if ((idx == -5) || (idx == -6)) {
		func_800C1418_D03C8(0xC, 1);
		return;
	}

	while ((idx != -5) && (idx != -6)) {
		entry = &D_80154318[idx];
		entrySub = (Unk80154318Sub *)&entry->unk8;
		linkedEntry = &D_80154318[entry->unk4];

		((u8 *)linkedEntry)[0xC]++;
		if (((u8 *)linkedEntry)[0xC] == 0x10) {
			((u8 *)linkedEntry)[0xC] = 0;
		}
		linkedSub = (Unk80154318Sub *)&linkedEntry->unk8;

		temp = func_800038E0_44E0();
		mod8 = temp & 7;
		if ((temp < 0) && (mod8 != 0)) {
			mod8 -= 8;
		}
		if (mod8 == 0) {
			randA = func_800038E0_44E0() & 0xFFFF;
			randB = func_800038E0_44E0() & 0xFFFF;
			mod8 = func_800038E0_44E0();
			sizeQuarter = entry->unk2 / 4;

			color = func_800DDB60_ECB10(
				(s16)(entrySub->unk0 + ((randA % entry->unk2) / 2) - sizeQuarter),
				(s16)((randB % (entry->unk2 / 2)) + entrySub->unk2),
				(s16)(entrySub->unk4 + ((mod8 % entry->unk2) / 2) - sizeQuarter),
				0xC,
				sizeQuarter);

			randA = func_800038E0_44E0() & 0xFFFF;
			randB = func_800038E0_44E0() & 0xFFFF;
			func_800DDD90_ECD40(
				color,
				(u8)((randA % 50) + 0x46),
				(u8)((randB % 50) + 0x46),
				(u8)((func_800038E0_44E0() % 50) + 0x46));
		}

		func_80137368_146318(entrySub->unk0, entrySub->unk2, entrySub->unk4, 1, idx);

		if (*(u16 *)linkedSub != 0xFFFF) {
			if (((u8 *)linkedSub)[5] > 0) {
				entry->unk2 += linkedSub->unk2 / 8;
				entrySub->unk2 += linkedSub->unk2 / 16;
				((u8 *)linkedSub)[5]--;
				(*(u16 *)linkedSub)--;
				idx = linkedEntry->unk4;
				continue;
			}

			if (*(u16 *)linkedSub >= 8) {
				(*(u16 *)linkedSub)--;
				idx = linkedEntry->unk4;
				continue;
			}

			if (*(u16 *)linkedSub == 0) {
				idx = linkedEntry->unk4;
				func_800C1E24_D0DD4(idx, 0xC, 1);
				idx = linkedEntry->unk4;
				continue;
			}

			entry->unk2 -= linkedSub->unk2 / 8;
			entrySub->unk2 -= linkedSub->unk2 / 16;
			(*(u16 *)linkedSub)--;
		}

		idx = linkedEntry->unk4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C3E2C_D2DDC.s")
#endif

// CURRENT(58)
#ifdef NON_MATCHING
void func_800C4274_D3224(void) {
	s16 unitId;
	s16 nextUnit;
	Vec3f spAC;
	Vec3f spA0;
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
					(void *)((u32)(&D_1007A70[((u8 *)&D_80154318[nextUnit].unkC)[0] << 9]) & 0x1FFFFFFF));
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

				gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
				gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
				D_80156EDA += 4;
			}

			unitId = D_80154318[nextUnit].unk4;
		} while ((unitId != -5) && (unitId != -6));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C4274_D3224.s")
#endif

void func_800C4900_D38B0(s16 arg0) {
	if (arg0 != -3) {
		func_800C1E24_D0DD4(arg0, 0xC, 1);
	}
}

// Draws ripples on shield wall when hit?
#ifdef NON_MATCHING
void func_800C4938_D38E8(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4) {
	s32 val;
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
	((u8 *)&D_80154318[idx])[0x12] = arg4;
	((u8 *)&D_80154318[idx])[0x13] = arg3;
	mod = func_800038E0_44E0() % 3;
	D_80154318[idx].unkE = D_8013DFA8_14CF58[(u32)(mod & 0xFF)][0];
	D_80154318[idx].unkF = D_8013DFA8_14CF58[(u32)(mod & 0xFF)][1];
	D_80154318[idx].unk10 = D_8013DFA8_14CF58[(u32)(mod & 0xFF)][2];
	D_80154318[idx].unk11 = mod;
	func_801372B4_146264(arg0, arg1, arg2, 2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C4938_D38E8.s")
#endif

s32 func_800C4A64_D3A14(u8 arg0, u8 arg1) {
	if (arg1 < arg0) {
		return -0xA;
	}
	if (arg0 < arg1) {
		return 0xA;
	}
	return 0;
}

// CURRENT(1023)
#ifdef NON_MATCHING
void func_800C4AA0_D3A50(void) {
	s16 idx;
	s16 nextIdx;
	Unk80154318Entry *entry;
	u8 *sub;
	s32 blue;

	idx = D_801541F8[0].unk6;
	if ((idx == -5) || (idx == -6)) {
		func_800C1418_D03C8(0, 1);
		return;
	}

	if ((idx != -5) && (idx != -6)) {
		while (1) {
			entry = &D_80154318[idx];
			sub = (u8 *)&entry->unk8;
			if (((u8 *)&entry->unk12)[0] < 4) {
				func_800C1A4C_D09FC(idx, 0, 1);
				nextIdx = entry->unk4;
				idx = nextIdx;
			} else {
				sub[0xA] -= 3;
				entry->unk2 += 8;
				sub[6] += func_800C4A64_D3A14(sub[6], D_8013DFA8_14CF58[sub[9]][0]);
				sub[7] += func_800C4A64_D3A14(sub[7], D_8013DFA8_14CF58[sub[9]][1]);
				blue = sub[8] + func_800C4A64_D3A14(sub[8], D_8013DFA8_14CF58[sub[9]][2]);
				sub[8] = blue;
				if ((sub[6] == D_8013DFA8_14CF58[sub[9]][0]) && (sub[7] == D_8013DFA8_14CF58[sub[9]][1]) && ((blue & 0xFF) == D_8013DFA8_14CF58[sub[9]][2])) {
					sub[9] = func_800038E0_44E0() % 3;
				}
				idx = entry->unk4;
			}
			if (idx == -5) {
				break;
			}
			if (idx == -6) {
				break;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C4AA0_D3A50.s")
#endif

// CURRENT(?)
#ifdef NON_MATCHING
void func_800C4CB8_D3C68(void) {
	Unk80154318Entry *entry;
	u8 *entryBytes;
	s16 index;

	D_80153BCD = 0x20;
	D_80153BCE = 0x20;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, ((u32) D_100E280 & 0x1FFFFFFF));
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
		while (1) {
			entry = &D_80154318[index];
			entryBytes = (u8 *) entry;
			D_80153BB8.x = (f32) entry->unk8;
			D_80153BC4 = &entry->unkE;
			D_80153BCC = entryBytes[0x12];
			D_80153BB8.y = (f32) entry->unkA;
			D_80153BB8.z = (f32) entry->unkC;
			D_80153BC8 = (f32) entry->unk2;

			if (entryBytes[0x13] == 0) {
				func_800DB714_EA6C4();
			} else {
				func_800DBA9C_EAA4C();
			}

			D_80156EDA += 4;
			index = entry->unk4;
			if ((index == -5) || (index == -6)) {
				break;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C4CB8_D3C68.s")
#endif

// CURRENT(5791)
#ifdef NON_MATCHING
void func_800C4F48_D3EF8(u8 arg0, Vec3f *arg1, u8 arg2, u8 arg3) {
	f32 sp3C;
	volatile f32 sp38;
	f32 sp34;
	f32 temp_f0;
	s16 idx;
	s16 scale;
	s16 sp30;
	s16 sp2E;
	s16 temp;
	u8 *effectUnit;
	u8 *newUnit;

	effectUnit = (u8 *)&D_80154318[D_80154088[arg0].unk6] + 8;
	idx = func_800C17B4_D0764(arg0, 0);
	if (idx == -3) {
		return;
	}

	if (effectUnit[0xA] == 1) {
		newUnit = (u8 *)&D_80154318[idx] + 8;
		*(s16 *)&newUnit[0] = *(s16 *)&effectUnit[0];
		*(s16 *)&newUnit[2] = *(s16 *)&effectUnit[2];
		*(s16 *)&newUnit[4] = *(s16 *)&effectUnit[4];

		sp34 = (f32)((f64)(f32)(func_800038E0_44E0() % arg3) / D_80143FC0_152F70);
		if ((func_800038E0_44E0() % 0x15) < 0xA) {
			temp_f0 = sp34;
			sp34 = 0.0f - temp_f0;
		}
		sp34 += arg1->x;

		sp38 = (f32)((f64)(f32)(func_800038E0_44E0() % arg3) / D_80143FC8_152F78);
		if ((func_800038E0_44E0() % 0x15) < 0xA) {
			temp_f0 = sp38;
			sp38 = 0.0f - temp_f0;
		}
		sp38 += arg1->y;

		sp3C = (f32)((f64)(f32)(func_800038E0_44E0() % arg3) / D_80143FD0_152F80);
		if ((func_800038E0_44E0() % 0x15) < 0xA) {
			temp_f0 = sp3C;
			sp3C = 0.0f - temp_f0;
		}
		sp3C += arg1->z;

		func_800C1024_CFFD4((Vec3f *)&sp34, (Vec3f *)&sp34);
		scale = arg2;
		scale = scale / 4;
		((s8 *)newUnit)[6] = (s8)(s32)((f32)scale * sp34);
		((s8 *)newUnit)[7] = (s8)(s32)((f32)scale * sp38);
		newUnit[9] = 0xFF;
		newUnit[0xA] = 0;
		((s8 *)newUnit)[8] = (s8)(s32)((f32)scale * sp3C);
		return;
	}

	sp30 = (func_800038E0_44E0() % (*(s16 *)&effectUnit[0xC] * 2)) - *(s16 *)&effectUnit[0xC];
	sp2E = (func_800038E0_44E0() % (*(s16 *)&effectUnit[0xC] * 2)) - *(s16 *)&effectUnit[0xC];
	temp = (func_800038E0_44E0() % (*(s16 *)&effectUnit[0xC] * 2)) - *(s16 *)&effectUnit[0xC];
	newUnit = (u8 *)&D_80154318[idx] + 8;
	*(s16 *)&newUnit[0] = *(s16 *)&effectUnit[0] + sp30;
	*(s16 *)&newUnit[2] = *(s16 *)&effectUnit[2] + sp2E;
	*(s16 *)&newUnit[4] = *(s16 *)&effectUnit[4] + temp;

	((s8 *)newUnit)[6] = (s8)-(sp30 / (s32)effectUnit[9]);
	((s8 *)newUnit)[7] = (s8)-(sp2E / (s32)effectUnit[9]);
	((s8 *)newUnit)[8] = (s8)-(temp / (s32)effectUnit[9]);
	newUnit[9] = 0xC;
	newUnit[0xA] = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C4F48_D3EF8.s")
#endif

// CURRENT(3535)
#ifdef NON_MATCHING
void func_800C541C_D43CC(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6, u8 arg7, u8 arg8, u8 arg9, u8 arg10,
						 u8 arg11, u8 arg12) {
	f32 sp44;
	f32 sp48;
	f32 sp4C;
	s32 i;
	u8 spawnCount;
	s16 idx;
	Vec3f *vec;
	Unk801541F8Entry *sfx;
	Unk80154318Entry *entry;
	spawnCount = arg8;
	if (spawnCount >= 0x29) {
		spawnCount = 0x28;
	}

	if ((D_80156ED8 == 1) || (D_80156ED8 == 2) || ((0x230 - spawnCount) < ((((s32)D_8005BB30 - (s32)D_8005BB20) - 0xE380) >> 3))) {
		spawnCount = 0;
	}

	if ((spawnCount == 0) || (func_800B93AC_C835C(arg0, arg2, 0x96, (s16)(s32)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) == 0)) {
		return;
	}

	effect = func_800C14D4_D0484(2);
	if (effect == 0xFB) {
		return;
	}

	idx = func_800C17B4_D0764(effect & 0xFF, 0);
	if (idx == -3) {
		osSyncPrintf(&D_80143504_1524B4);
		func_800C1384_D0334(effect & 0xFF);
		return;
	}

	sfx = &D_80154088[effect];
	entry = &D_80154318[idx];

	((u8 *)sfx)[1] = ((u8 *)sfx)[1];
	*(s16 *)((u8 *)sfx + 0xA) = idx;

	*(s16 *)((u8 *)entry + 8) = arg0;
	*(s16 *)((u8 *)entry + 0xA) = arg1;
	*(s16 *)((u8 *)entry + 0xC) = arg2;
	((u8 *)entry)[0x12] = 1;
	*(s16 *)((u8 *)entry + 2) = arg9;
	((u8 *)entry)[0xE] = arg10;
	((u8 *)entry)[0xF] = arg11;
	((u8 *)entry)[0x10] = arg12;

	sp44 = arg3;
	sp48 = arg4;
	sp4C = arg5;
	vec = (Vec3f *)&sp44;
	func_800C1024_CFFD4(vec, vec);

	i = 0;
	while (i < spawnCount) {
		func_800C4F48_D3EF8(effect & 0xFF, (s32)vec, arg6 & 0xFF, arg7 & 0xFF);
		i = (i + 1) & 0xFF;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C541C_D43CC.s")
#endif

// CURRENT(690)
#ifdef NON_MATCHING
void func_800C56A4_D4654(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4, u8 arg5, u8 arg6) {
	s32 count;
	u8 effect;
	s16 idx;
	s32 i;

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

	idx = func_800C17B4_D0764(effect, 0);
	if (idx == -3) {
		osSyncPrintf(&D_80143554_152504);
		func_800C1384_D0334(effect);
		return;
	}

	D_80154088[effect].unk1 = D_80154088[effect].unk1;
	D_80154088[effect].unkA = idx;

	D_80154318[idx].unkE = 0xFF;
	D_80154318[idx].unkF = 0xFF;
	D_80154318[idx].unk10 = 0xFF;
	((u8 *)&D_80154318[idx])[0x12] = 2;
	i = 0;
	D_80154318[idx].unk2 = arg6;
	D_80154318[idx].unk8 = arg0;
	D_80154318[idx].unkA = arg1;
	D_80154318[idx].unkC = arg2;
	*(s16 *)&D_80154318[idx].unk14 = arg3;
	D_80154318[idx].unk11 = arg4;

	while (i < count) {
		func_800C4F48_D3EF8(effect, 0, 0, 0);
		i = (i + 1) & 0xFF;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C56A4_D4654.s")
#endif

// CURRENT(6828)
#ifdef NON_MATCHING
void func_800C5894_D4844(u8 arg0) {
	Unk801541F8Entry *sp3C;
	Unk80154318Entry *var_a3;
	Unk80154318Sub *temp_s0;
	Unk80154318Sub *temp_s2;
	s16 temp_s0_3;
	s16 var_s1;
	s16 var_s3;
	u8 temp_s6;
	s32 temp_v0_4;
	s32 temp_v1_3;
	u8 temp_a1;

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
			goto block_25;
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
					temp_v0_4 = temp_s0->unk9 - 0x14;
					if (temp_v0_4 < 0) {
						temp_s0->unk9 = 0;
					} else {
						temp_s0->unk9 = (u8)temp_v0_4;
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

// CURRENT(2690)
#ifdef NON_MATCHING
void func_800C5D14_D4CC4(s32 arg0) {
	Unk801541F8Entry *sp3C;
	s16 var_t1;
	u8 var_t2;
	u8 var_t3;
	s32 var_t4;
	Unk80154318Entry *colorEntry;
	Unk80154318Entry *entry;

	sp3C = &D_80154088[arg0 & 0xFF];
	colorEntry = &D_80154318[sp3C->unk6];
	var_t1 = colorEntry->unk4;

	if ((D_80156EDA < 0x1F5) && (D_80156ED9 != 2) && (D_80153B88 < 0x79)) {
		var_t2 = colorEntry->unkE;
		if (colorEntry->unkE == 0 && colorEntry->unkF == 0 && colorEntry->unk10 == 0) {
			var_t2 = (func_800038E0_44E0() % 55) + 0xC8;
			var_t3 = (func_800038E0_44E0() % 55) + 0xC8;
			var_t4 = ((func_800038E0_44E0() % 55) + 0xC8) & 0xFF;
		} else {
			var_t3 = colorEntry->unkF;
			var_t4 = colorEntry->unk10;
		}

		if (var_t1 != -5 && var_t1 != -6) {
			do {
				entry = &D_80154318[var_t1];
				D_8005BB34->n.ob[0] = entry->unk8;
				D_8005BB34->n.ob[1] = entry->unkA;
				D_8005BB34->n.ob[2] = entry->unkC;
				D_8005BB34->n.flag = 0;
				D_8005BB34->n.tc[0] = 0;
				D_8005BB34->n.tc[1] = 0;
					D_8005BB34->v.cn[0] = var_t2;
					D_8005BB34->v.cn[1] = var_t3;
					D_8005BB34->v.cn[2] = var_t4;
					D_8005BB34->v.cn[3] = entry->unk11;
				D_8005BB34++;
				D_8005BB34->n.ob[0] = (s16)(entry->unk8 - (s8)entry->unkE);
				D_8005BB34->n.ob[1] = (s16)(entry->unkA - (s8)entry->unkF);
				D_8005BB34->n.ob[2] = (s16)(entry->unkC - (s8)entry->unk10);
				D_8005BB34->n.flag = 0;
				D_8005BB34->n.tc[0] = 0;
				D_8005BB34->n.tc[1] = 0;
					D_8005BB34->v.cn[0] = var_t2;
					D_8005BB34->v.cn[1] = var_t3;
					D_8005BB34->v.cn[2] = var_t4;
					D_8005BB34->v.cn[3] = 0x14;
				D_8005BB34++;
				gSPVertex(D_8005BB30++, (Vtx *)((u32)(D_8005BB34 - 2) & 0x1FFFFFFF), 2, 0);
				gSPLineW3D(D_8005BB30++, 0, 1, entry->unk2 & 0xFF, 0);
				gDPPipeSync(D_8005BB30++);
				var_t1 = entry->unk4;
			} while (var_t1 != -5 && var_t1 != -6);
		}

		D_80156EDA += sp3C->unk4 * 2;
		D_80153B88 += sp3C->unk4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C5D14_D4CC4.s")
#endif

// CURRENT(3264)
#ifdef NON_MATCHING
s16 func_800C613C_D50EC(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 *arg4) {
	s16 sp3E;
	s16 sp40;
	Unk80154318Entry *tempA3;
	Unk80154318Entry *tempA2;
	u8 *varV0;
	u8 *varA1;
	u8 sp30[0xC];
	u8 *tempS0;

	sp3E = func_800C18FC_D08AC(1, 1);
	if (sp3E != -3) {
		tempA3 = &D_80154318[sp3E];
		tempA2 = &D_80154318[tempA3->unk4];
		tempA3->unk2 = arg3;
		sp40 = tempA2->unk4;

		if (arg4 == NULL) {
			func_800DFA98_EEA48(sp30);
			varV0 = (u8 *) &D_80154318[sp3E];
			varV0 += 8;
			varA1 = (u8 *) tempA2;
			varA1 += 8;
			varV0[6] = sp30[0];
			varV0[7] = sp30[1];
			varV0[8] = sp30[2];
			varV0[9] = sp30[3];
			varV0[10] = sp30[4];
			varV0[11] = sp30[5];
			varA1[0] = sp30[6];
			varA1[1] = sp30[7];
			varA1[2] = sp30[8];
			varA1[3] = sp30[9];
			varA1[4] = sp30[10];
			varA1[5] = sp30[11];
		} else {
			varV0 = (u8 *) &tempA3->unk8;
			varA1 = (u8 *) &tempA2->unk8;
			varV0[6] = arg4[0];
			varV0[7] = arg4[1];
			varV0[8] = arg4[2];
			varV0[9] = arg4[3];
			varV0[10] = arg4[4];
			varV0[11] = arg4[5];
			varA1[0] = arg4[6];
			varA1[1] = arg4[7];
			varA1[2] = arg4[8];
			varA1[3] = arg4[9];
			varA1[4] = arg4[10];
			varA1[5] = arg4[11];
		}

		varV0 = (u8 *) &tempA3->unk8;
		*(s16 *) &varV0[0] = arg0;
		*(s16 *) &varV0[2] = arg1;
		*(s16 *) &varV0[4] = arg2;
		varV0[12] = 0;
		varA1[6] = func_800038E0_44E0() % 16;
		varA1[7] = 0;
		varA1[8] = func_800038E0_44E0() % 256;
		varA1[9] = 0xFF;
		varA1[10] = 0xFF;

		if (arg3 < 0x4B) {
			varA1[11] = 3;
		} else if (arg3 < 0x96) {
			varA1[11] = 2;
		} else {
			varA1[11] = 1;
		}

		tempS0 = (u8 *) &D_80154318[sp40];
		tempS0 += 8;
		*(s16 *) &tempS0[0] = 0;

		if ((func_800038E0_44E0() % 3) == 1) {
			tempS0[2] = func_800038E0_44E0() % 40;
		} else {
			tempS0[2] = 0;
		}

		if ((func_800038E0_44E0() % 3) == 1) {
			tempS0[3] = func_800038E0_44E0() % 40;
		} else {
			tempS0[3] = 0;
		}

		if ((func_800038E0_44E0() % 3) == 1) {
			tempS0[4] = func_800038E0_44E0() % 40;
		} else {
			tempS0[4] = 0;
		}

		if ((func_800038E0_44E0() % 2) == 1) {
			tempS0[5] = func_800038E0_44E0() % 7;
		} else {
			tempS0[5] = 0;
		}

		if ((func_800038E0_44E0() % 2) == 1) {
			tempS0[6] = func_800038E0_44E0() % 7;
		} else {
			tempS0[6] = 0;
		}

		if ((func_800038E0_44E0() % 2) == 1) {
			tempS0[7] = func_800038E0_44E0() % 7;
		} else {
			tempS0[7] = 0;
		}
	}

	return sp3E;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C613C_D50EC.s")
#endif

// CURRENT(10655)
#ifdef NON_MATCHING
void func_800C6558_D5508(void) {
	Unk80154318Entry *entry;
	Unk80154318Entry *linked;
	Unk80154318Entry *next;
	u8 *entryBytes;
	u8 *linkedBytes;
	u8 *nextBytes;
	s16 idx;
	s16 linkedIdx;
	s16 nextIdx;
	u8 age;
	u8 scale;
	u8 steps;
	s32 randVal;

	idx = D_8015420A;
	if ((idx == -5) || (idx == -6)) {
		func_800C1418_D03C8(1, 1);
		return;
	}

	while ((idx != -5) && (idx != -6)) {
		entry = &D_80154318[idx];
		entryBytes = (u8*) &entry->unk8;
		linked = &D_80154318[entry->unk4];
		linkedBytes = (u8*) &linked->unk8;
		linkedIdx = linked->unk4;

		if (entry->unk14 >= (0x23 / ((u8*) linked)[0x13])) {
			nextIdx = D_80154318[linkedIdx].unk4;
			func_800C1D40_D0CF0(idx, 1, 1);
			idx = nextIdx;
			continue;
		}

		age = entryBytes[0xC];
		scale = linkedBytes[0xB];
		next = &D_80154318[linkedIdx];
		nextBytes = (u8*) &next->unk8;

		if (age == 0) {
			next->unk8 = (func_800038E0_44E0() % 11) + 0x3C;
		} else if (age == 1) {
			next->unk8 += (func_800038E0_44E0() % 11) + 0xF;
		} else if (age < (7 / scale)) {
			next->unk8 += ((func_800038E0_44E0() % 5) + 5) * scale;
		} else if (age < (0xF / scale)) {
			randVal = func_800038E0_44E0();
			next->unk8 += ((randVal % 4) + 4) * scale;
			linkedBytes[0xA] -= ((func_800038E0_44E0() % 7) + 7) * scale;
		} else if (age < (0x18 / scale)) {
			randVal = func_800038E0_44E0();
			next->unk8 += ((randVal % 4) + 3) * scale;
			linkedBytes[9] -= ((func_800038E0_44E0() % 5) + 3) * scale;
			if ((linkedBytes[0xB] * 0xF) < linkedBytes[0xA]) {
				linkedBytes[0xA] -= ((func_800038E0_44E0() % 7) + 7) * linkedBytes[0xB];
			}
		} else if (age < (0x1C / scale)) {
			next->unk8 += ((func_800038E0_44E0() % 3) + 2) * scale;
			linkedBytes[9] -= ((func_800038E0_44E0() % 5) + 3) * scale;
			if ((linkedBytes[0xB] * 0x19) < linkedBytes[0xA]) {
				linkedBytes[0xA] -= ((func_800038E0_44E0() % 14) + 0xC) * linkedBytes[0xB];
			}
		} else {
			randVal = func_800038E0_44E0();
			next->unk8 += ((randVal % 2) + 2) * scale;
			if ((linkedBytes[0xB] * 0x19) < linkedBytes[0xA]) {
				linkedBytes[0xA] -= ((func_800038E0_44E0() % 14) + 0xC) * linkedBytes[0xB];
			}
			if ((linkedBytes[0xB] * 0x25) < linkedBytes[9]) {
				linkedBytes[9] -= ((func_800038E0_44E0() % 15) + 0x16) * linkedBytes[0xB];
			}
		}

		age = entryBytes[0xC];
		if (age < 3) {
			;
		} else {
			steps = ((0x23 / linkedBytes[0xB]) - age) & 0xFF;
			entryBytes[6] = entryBytes[6] - ((entryBytes[6] - linkedBytes[0]) / steps);
			entryBytes[7] = entryBytes[7] - ((entryBytes[7] - linkedBytes[1]) / steps);
			entryBytes[8] = entryBytes[8] - ((entryBytes[8] - linkedBytes[2]) / steps);
			entryBytes[9] = entryBytes[9] - ((entryBytes[9] - linkedBytes[3]) / steps);
			entryBytes[0xA] = entryBytes[0xA] - ((entryBytes[0xA] - linkedBytes[4]) / steps);
			entryBytes[0xB] = entryBytes[0xB] - ((entryBytes[0xB] - linkedBytes[5]) / steps);
		}

		nextBytes[2] += nextBytes[5];
		nextBytes[3] += nextBytes[6];
		nextBytes[4] += nextBytes[7];
		linkedBytes[6]++;
		if (linkedBytes[6] == 0x10) {
			linkedBytes[6] = 0;
		}

		entryBytes[0xC]++;
		idx = next->unk4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C6558_D5508.s")
#endif

// CURRENT(37116)
#ifdef NON_MATCHING
void func_800C6D80_D5D30(void) {
	s16 sp15C;
	s16 sp15A;
	s16 sp158;
	s16 sp154;
	s16 sp152;
	s16 sp150;
	s16 sp14C;
	s16 sp14A;
	s16 sp148;
	s16 sp144;
	s16 sp142;
	s16 sp140;
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

	do {
		entry = &D_80154318[var_t1];
		linked = &D_80154318[entry->unk4];
		next = &D_80154318[linked->unk4];

		temp_u16 = (u16)next->unk8;
		temp_f16 = (s32)((f64)(f32)entry->unk2 * ((f64)(f32)temp_u16 * 0.03125) * 6.0);
		sp15C = temp_f16;
		sp15A = temp_f16;
		sp158 = temp_f16;

		if (func_800B93AC_C835C(entry->unk8, entry->unkC, temp_f16 & 0xFFFF, (s16)(s32)(D_80047954 * 4.0f),
								(s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {
			u8 *linkedBytes;
			Unk80154318Sub *entrySub;
			Unk80154318Sub *linkedSub;

			linkedBytes = (u8 *)&next->unk8;
			sp158 = (s16)(s32)((f32)(((f64)linkedBytes[2] / D_80143FD8_152F88) + 1.0) * (f32)sp158);
			sp15A = (s16)(s32)((f32)(((f64)linkedBytes[3] / D_80143FD8_152F88) + 1.0) * (f32)sp15A);
			sp15C = (s16)(s32)((f32)(((f64)linkedBytes[4] / D_80143FD8_152F88) + 1.0) * (f32)sp15C);

			entrySub = (Unk80154318Sub *)&entry->unk8;
			linkedSub = (Unk80154318Sub *)&linked->unk8;

			sp140 = entry->unk8;
			sp142 = entrySub->unk2;
			sp144 = entrySub->unk4;

			temp_f0 = (D_80153BA0.x * 4.0f) - (f32)entry->unk8;
			temp_f2 = (D_80153BA0.z * 4.0f) - (f32)entrySub->unk4;
			temp_f0_2 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));

			sp150 = 0;
			sp152 = ((u8)linkedSub->unk8) << 8;
			sp154 = 0;
			sp148 = func_80003824_4424(D_80153B90.z, D_80153B90.x) + 0x8000;
			sp14A = 0x8000;
			sp14C = 0x4000 - func_80003824_4424((D_80153BA4 * 4.0f) - (f32)entrySub->unk2, temp_f0_2);

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
						  ((u32)&D_50474F0[((u8)linkedSub->unk6) << 9]) & 0x1FFFFFFF);
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
						  ((u32)&D_50494F0[((u8)linkedSub->unk6) << 9]) & 0x1FFFFFFF);
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

			D_8005BB38 += 0x40;
			func_800039D0_45D0((Unk80052B40 *)&sp140, (Unk80052B40 *)&sp148, (Unk80052B40 *)&sp158, D_8005BB38);
			gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

			D_8005BB38 += 0x40;
			func_800039D0_45D0(NULL, (Unk80052B40 *)&sp150, NULL, D_8005BB38 + 0x40);
			gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

			D_8005BB38 += 0x40;
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

// CURRENT(200)
#ifdef NON_MATCHING
s16 func_800C7924_D68D4(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
	Unk80154318Entry *entry;
	Unk80154318Entry *linked;
	u8 *entryBytes;
	u8 *linkedBytes;
	Vec3f sp40;
	s16 idx;
	s16 temp;
	s16 arg4S16;
	u16 arg5U16;
	u8 arg7U8;

	arg4S16 = arg4;
	arg5U16 = arg5;
	arg7U8 = arg7;

	if (D_80154214 >= 0x23) {
		return -3;
	}

	if (arg4S16 == -3) {
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
	linkedBytes = (u8 *)&linked->unk8;

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
		sp40.x /= 2.0f;
		sp40.y /= 2.0f;
		sp40.z /= 2.0f;
	}

	func_800C1024_CFFD4(&sp40, &sp40);

	if ((s16)arg5U16 >= 0) {
		linkedBytes[0] = (s8)(s32)((f32)arg5U16 * sp40.x);
		temp = (s16)(s32)((f32)arg5U16 * sp40.y);
		if (temp >= 0) {
			linkedBytes[1] = (s8)temp;
		} else {
			linkedBytes[1] = (s8)-temp;
		}
		linkedBytes[2] = (s8)(s32)((f32)arg5U16 * sp40.z);
	} else {
		linkedBytes[0] = (s8)(s32)(((f32)arg5U16 + 4294967296.0f) * sp40.x);
		temp = (s16)(s32)(((f32)arg5U16 + 4294967296.0f) * sp40.y);
		if (temp >= 0) {
			linkedBytes[1] = (s8)temp;
		} else {
			linkedBytes[1] = (s8)-temp;
		}
		linkedBytes[2] = (s8)(s32)(((f32)arg5U16 + 4294967296.0f) * sp40.z);
	}

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

	if ((func_800038E0_44E0() % 100) < 0x28 || arg7U8 != 0) {
		entryBytes[0xB] |= 1;
	}

	if (arg7U8 != 0) {
		if (arg4S16 != -9) {
			entryBytes[9] = func_800C8C7C_D7C2C(arg0, arg1, arg2, idx, arg4S16);
			if (entryBytes[9] != 0xFB) {
				entryBytes[0xB] |= 4;
			}
		}
		entryBytes[0xA] = 0;
	} else if ((func_800038E0_44E0() % 100) >= 0x29) {
		entryBytes[9] = func_800C8C7C_D7C2C(arg0, arg1, arg2, idx, arg4S16);
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

// CURRENT(7757)
#ifdef NON_MATCHING
void func_800C8294_D7244(void) {
	s16 effectIdx;
	s16 targetY;
	s16 hitY;
	Unk80052B40_fp sp84;
	s32 *groundPtr;
	Unk80154318Entry *entry;
	Unk80154318Entry *linked;
	Unk80154318Entry *next;
	s16 *entrySub;
	u8 *entrySubBytes;
	u8 *nextBytes;

	effectIdx = D_80154216;
	sp84.unk0 = *(s32 *)&D_8013E0FC_14D0AC[0];
	sp84.unk8 = *(s32 *)&D_8013E0FC_14D0AC[8];
	sp84.unk4 = *(s32 *)&D_8013E0FC_14D0AC[4];
	groundPtr = &D_80222A70;

	if ((effectIdx == -5) || (effectIdx == -6)) {
		func_800C1418_D03C8(2, 1);
		return;
	}

	while ((effectIdx != -5) && (effectIdx != -6)) {
		entry = &D_80154318[effectIdx];
		linked = &D_80154318[entry->unk4];
		next = &D_80154318[linked->unk4];

		entry->unk8 += ((s8 *)&next->unk8)[0];
		entry->unkC += ((s8 *)&next->unk8)[2];
		entry->unkA += ((s8 *)&next->unk8)[1];

		func_80137368_146318(entry->unk8, entry->unkA, entry->unkC, 0xD, effectIdx);

		entrySub = &entry->unk8;
		entrySubBytes = (u8 *)entrySub;
		nextBytes = (u8 *)&next->unk8;
		hitY = (s16)(func_800B84D0_C7480(entrySub[0], entrySub[2]) >> 8);

		if ((s8)nextBytes[1] >= -0x13) {
			nextBytes[1] = (u8)((s8)nextBytes[1] - 1);
		} else {
			nextBytes[1] = (u8)-0x14;
		}

		nextBytes[3] = (u8)(nextBytes[3] + (s8)nextBytes[6]);
		nextBytes[4] = (u8)(nextBytes[4] + (s8)nextBytes[7]);
		nextBytes[5] = (u8)(nextBytes[5] + (s8)nextBytes[8]);

		if ((entrySubBytes[0xB] & 4) && (entrySubBytes[0xA] == 0)) {
			func_800C8E10_D7DC0(entrySub[0], entrySub[1], entrySub[2], entrySubBytes[9]);
		}

		entrySubBytes[0xA]++;
		if (entrySubBytes[0xA] == 3) {
			entrySubBytes[0xA] = 0;
		}

		targetY = entrySub[1];
		if (*groundPtr >= targetY) {
			if (entrySubBytes[0xB] & 0x10) {
				func_800DEA08_ED9B8(entrySub[0], (s16)*groundPtr, entrySub[2], 0xC8, 0xA, 8, 0x28, 0xDC, 0x96, 0x96,
					0x96);
				func_801371B8_146168(0, 0x16D, entrySub[0], ((s16 *)groundPtr)[1], entrySub[2], -1.0f);
			}

			func_800E0E9C_EFE4C(entrySub[0], entrySub[2], (u16)(entry->unk2 >> 2));
			func_800C1D40_D0CF0(effectIdx, 2, 1);
			effectIdx = next->unk4;
			continue;
		}

		if (hitY >= targetY) {
			if (entrySubBytes[0xB] & 1) {
				if (entrySubBytes[0xB] & 0x18) {
					if (*(s32 *)&linked->unk8 == (s32)&D_502D390) {
						if ((D_80031420 & 3) == 3) {
							if ((currentLevel == 4) &&
								((func_8000726C_7E6C((u64)0xB) == 0) || (func_8000726C_7E6C((u64)0xC) != 0))) {
								func_800CA5EC_D959C(entrySub[0], (s16)(func_800B84D0_C7480(entrySub[0], entrySub[2]) >> 8),
									entrySub[2], 0, 0x7F, 0, 0x28, 5, 0x19, 0xFF, 0, 0xFF, 0, 0xFF);
							} else if ((D_80031420 & 3) == 3) {
								func_800DF9C8_EE978(entrySub[0], targetY, entrySub[2], 0x32, 0, (s32)&sp84);
								func_800CA5EC_D959C(entrySub[0], (s16)(func_800B84D0_C7480(entrySub[0], entrySub[2]) >> 8),
									entrySub[2], 0, 0x7F, 0, 0x28, 5, 0x19, 0xFF, 0xFF, 0, 0, 0xFF);
							}

							func_80137130_1460E0((s32)entrySub, 0xF4, entrySub[0], targetY, entrySub[2]);
							func_80137130_1460E0((s32)entrySub, 0xAD, entrySub[0], targetY, entrySub[2]);
						}
					} else {
						func_800DF038_EDFE8(entrySub[0], targetY, entrySub[2], (u16)(entry->unk2 / 2), 0, 0);
					}
				} else {
					func_800DF038_EDFE8(entrySub[0], targetY, entrySub[2], (u16)(entry->unk2 / 6), 0, 0);
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

// CURRENT(3860)
#ifdef NON_MATCHING
void func_800C8814_D77C4(void) {
	s16 effectIdx;
	s16 nextIdx;
	Unk80154318Entry *entry;
	Unk80154318Entry *linked;
	u8 *entrySubBytes;
	u8 *nextSubBytes;
	Unk80052B40 spDC;
	Unk80052B40 spE4;
	Unk80052B40 spEC;
	s32 pad[6];

	effectIdx = D_80154216;
	if ((effectIdx != -6) && (effectIdx != -5)) {
		while (1) {
			entry = &D_80154318[effectIdx];
			spEC.unk4 = entry->unk2;
			spEC.unk2 = entry->unk2;
			spEC.unk0 = entry->unk2;

			linked = &D_80154318[entry->unk4];
			nextIdx = linked->unk4;
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

				gSPMatrix(D_8005BB2C++, (void *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				D_8005BB38 += 0x40;
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
#ifdef NON_MATCHING
u8 func_800C8C7C_D7C2C(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
	s16 idx;
	u8 effect;
	Unk80154318Entry *entry;
	Unk801541F8Entry *sfx;
	u8 *entryBytes;
	u8 *srcBytes;

	if (arg4 == -3) {
		return 0xFB;
	}

	if ((effect = func_800C14D4_D0484(3)) != 0xFB) {
		if ((idx = func_800C17B4_D0764(effect, 0)) == -3) {
			func_800C1384_D0334(effect);
			effect = 0xFB;
		} else {
			entry = &D_80154318[idx];
			entryBytes = (u8 *)entry;
			if (arg4 == -8) {
				entryBytes[0xE] = 0xC8;
				entryBytes[0xF] = 0xC8;
				entryBytes[0x10] = 0xC8;
				entryBytes[0x11] = 0x64;
				entryBytes[0x12] = 0x64;
				entryBytes[0x13] = 0x64;
			} else {
				srcBytes = (u8 *)&D_80154318[arg4];
				entryBytes[0xE] = srcBytes[0xE];
				entryBytes[0xF] = srcBytes[0xF];
				entryBytes[0x10] = srcBytes[0x10];
				entryBytes[0x11] = ((u8 *)&D_80154318[D_80154318[arg4].unk4])[0x8];
				entryBytes[0x12] = ((u8 *)&D_80154318[D_80154318[arg4].unk4])[0x9];
				entryBytes[0x13] = ((u8 *)&D_80154318[D_80154318[arg4].unk4])[0xA];
			}

			sfx = &D_80154088[effect];
			entry->unk8 = arg0;
			entry->unkA = arg1;
			entry->unkC = arg2;
			sfx->unk2 = arg3;
		}
	}

	return effect;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C8C7C_D7C2C.s")
#endif

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

// CURRENT(1700)
#ifdef NON_MATCHING
void func_800C8F5C_D7F0C(u8 arg0) {
	Unk801541F8Entry *effect;
	Unk80154318Entry *entry;
	Unk80154318Entry *next;
	Unk80154318Sub *sub;
	u8 *baseBytes;
	u8 *subBytes;
	s32 index;
	s32 nextIndex;
	s8 step;

	effect = &D_80154088[arg0];
	next = &D_80154318[effect->unk2];
	entry = &D_80154318[effect->unk6];
	entry->unk8 = next->unk8;
	entry->unkA = next->unkA;
	entry->unkC = next->unkC;

	baseBytes = &entry->unk11;
	if ((entry->unk4 == -5) || (entry->unk4 == -6)) {
		func_800C1418_D03C8(arg0, 0);
		func_800C1384_D0334(arg0);
		return;
	}
	index = (s16)entry->unk4;

	while ((index != -5) && (index != -6)) {
		entry = &D_80154318[index];
		sub = (Unk80154318Sub *)&entry->unk8;
		subBytes = (u8 *)sub;

		if (entry->unk11 < 10) {
			nextIndex = entry->unk4;
			func_800C1A4C_D09FC(index, arg0, 0);
			if (effect->unk4 == 1) {
				func_800C1A4C_D09FC(effect->unk6, arg0, 0);
				func_800C1384_D0334(arg0);
				return;
			}
			index = (s16)nextIndex;
		} else {
			step = (s8)(0x23 - sub->unkA);
			if (step > 0) {
				subBytes[6] -= ((s32)subBytes[6] - baseBytes[0]) / step;
				subBytes[7] -= ((s32)subBytes[7] - baseBytes[1]) / step;
				subBytes[8] -= ((s32)subBytes[8] - baseBytes[2]) / step;
			}

			sub->unk2 += (func_800038E0_44E0() % 2) + 1;
			entry->unk2 += (func_800038E0_44E0() % 3) + 2;
			sub->unkA++;
			sub->unk9 -= 9;
			index = (s16)entry->unk4;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C8F5C_D7F0C.s")
#endif

#ifdef NON_MATCHING
// CURRENT(2700)
void func_800C927C_D822C(u8 arg0) {
	Unk801541F8Entry *effect;
	Unk80154318Entry *entry;
	s16 index;

	effect = &D_80154088[arg0];
	index = effect->unk6;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)D_100E080 & 0x1FFFFFFF));
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
			entry = &D_80154318[index];
			D_80153BB8.x = (f32)entry->unk8;
			D_80153BC4 = &entry->unkE;
			D_80153BCC = entry->unk11;
			D_80153BB8.y = (f32)entry->unkA;
			D_80153BB8.z = (f32)entry->unkC;
			D_80153BC8 = (f32)entry->unk2;
			func_800DB350_EA300();
			index = entry->unk4;
		} while ((index != -5) && (index != -6));
	}

	D_80156EDA += effect->unk4 * 4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C927C_D822C.s")
#endif

// CURRENT(298)
#ifdef NON_MATCHING
void func_800C9530_D84E0(s16 arg0, s16 arg1, u16 arg2, u8 arg3, u8 arg4, u8 arg5, u8 arg6) {
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
			entry->unk2 = arg2;
			var_v0->unk6 = arg3;
			var_v0->unk7 = arg4;
			var_v0->unk9 = 0;
			var_v0->unk8 = arg5;
			var_v0->unkB = (s32)arg2 / 2;
			if (!(var_v0->unkB & 0xFF)) {
				var_v0->unkB = 1;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C9530_D84E0.s")
#endif

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

					gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 5) & 0x1FFFFFFF), 5, 0);
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
#ifdef NON_MATCHING
void func_800CA1B0_D9160(u8 arg0) {
	s32 effect;
	s16 newUnitIdx;
	s16 parentIdx;
	Unk80154318Entry *effectUnit;
	u8 *parentBytes;
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

		parentBytes = (u8 *)&D_80154318[parentIdx].unk8;
		newUnit->unk11 = parentBytes[8];
		newUnit->unk2 = (func_800038E0_44E0() % (effectUnit->unk2 * 2)) + effectUnit->unk2;

		sp44.x = (f32)(s8)parentBytes[0];
		sp44.y = (f32)(s8)parentBytes[1];
		sp44.z = (f32)(s8)parentBytes[2];
		func_800C1024_CFFD4(&sp44, &sp44);

		sp38.x = (f32)((f64)(f32)(func_800038E0_44E0() % parentBytes[4]) / D_80143FE0_152F90);
		if ((func_800038E0_44E0() % 0x15) < 0xA) {
			sp38.x = 0.0f - sp38.x;
		}
		sp38.x += sp44.x;

		sp38.y = (f32)((f64)(f32)(func_800038E0_44E0() % parentBytes[4]) / D_80143FE8_152F98);
		if ((func_800038E0_44E0() % 0x15) < 0xA) {
			sp38.y = 0.0f - sp38.y;
		}
		sp38.y += sp44.y;

		sp38.z = (f32)((f64)(f32)(func_800038E0_44E0() % parentBytes[4]) / D_80143FF0_152FA0);
		if ((func_800038E0_44E0() % 0x15) < 0xA) {
			sp38.z = 0.0f - sp38.z;
		}
		sp38.z += sp44.z;

		func_800C1024_CFFD4(&sp38, &sp38);

		((u8 *)&D_80154318[newUnitIdx].unk8)[0xA] = (s8)((f32)((s32)(parentBytes[3] / 4)) * sp38.x);
		((u8 *)&D_80154318[newUnitIdx].unk8)[0xB] = (s8)((f32)((s32)(parentBytes[3] / 4)) * sp38.y);
		((u8 *)&D_80154318[newUnitIdx].unk8)[0xC] = (s8)((f32)((s32)(parentBytes[3] / 4)) * sp38.z);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CA1B0_D9160.s")
#endif

// CURRENT(4556)
#ifdef NON_MATCHING
s32 func_800CA5EC_D959C(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6, u16 arg7, u8 arg8,
						u8 arg9, u8 arg10, u8 arg11, u8 arg12, u8 arg13) {
	u8 effect;
	s16 unitIdx;
	s16 linkedIdx;
	s16 value;
	u8 colorR;
	u8 colorG;
	u8 colorB;
	Unk80154318Entry *unit;
	u8 *unitBytes;
	u8 *linkedBytes;
	u8 *linkedSubBytes;
	u8 intensity;

	colorR = arg10;
	colorG = arg11;
	colorB = arg12;

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

		D_80154088[effect].unk1 = D_80154088[effect].unk1;

		unit = &D_80154318[unitIdx];
		linkedIdx = unit->unk4;
		unit->unk2 = arg7;
		unit->unk8 = arg0;
		unit->unkA = arg1;
		unit->unkC = arg2;

		linkedBytes = (u8 *) &D_80154318[linkedIdx];
		linkedBytes[8] = arg3;
		linkedBytes[9] = arg4;
		linkedBytes[0xA] = arg5;
		linkedBytes[0xB] = arg6;
		linkedBytes[0xC] = arg9;
		linkedSubBytes = &linkedBytes[8];

		unit->unkE = colorR;
		unit->unk14 = 0;
		unit->unkF = colorG;
		unit->unk10 = colorB;

		unitBytes = (u8 *) &unit->unk8;

		value = (s16) (colorR - 0x78);
		if (value < 0) {
			value = 0;
		}
		unitBytes[9] = value;

		value = (s16) (colorG - 0x78);
		if (value < 0) {
			value = 0;
		}
		unitBytes[0xA] = value;

		value = (s16) (colorB - 0x78);
		if (value < 0) {
			value = 0;
		}
		unitBytes[0xB] = value;

		linkedSubBytes[8] = arg13;

		intensity = arg8;
		if (intensity >= 0x97) {
			intensity = 0x96;
		} else if (intensity == 0) {
			intensity = 1;
		}
		linkedSubBytes[5] = intensity;
		*((s16 *) &linkedSubBytes[6]) = 0;
	}

	return effect;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CA5EC_D959C.s")
#endif

/* CURRENT(3911) */
#ifdef NON_MATCHING
void func_800CA848_D97F8(u8 arg0) {
	s16 currentUnitId;
	s16 nextUnitId;
	Unk801541F8Entry *effect;
	Unk80154318Entry *root;
	Unk80154318Entry *leader;
	u8 *leaderBytes;
	u8 *rootBytes;
	Unk80154318Entry *current;
	Unk80154318Sub *currentBytes;
	u8 count;
	u8 i;

	arg0 &= 0xFF;
	effect = &D_80154088[arg0];
	root = &D_80154318[effect->unk6];
	leader = &D_80154318[root->unk4];
	leaderBytes = (u8 *)&leader->unk8;
	rootBytes = (u8 *)&root->unk8;
	currentUnitId = leader->unk4;
	if (currentUnitId != -5 && currentUnitId != -6) {
		while (1) {
			current = &D_80154318[currentUnitId];
			currentBytes = (Unk80154318Sub *)&current->unk8;
			if (D_80222A70 >= currentBytes->unk2) {
				func_800DEF2C_EDEDC(currentBytes->unk0, (s16)(D_80222A70 + 3), currentBytes->unk4, 0x32, 1);
				func_800C9530_D84E0(currentBytes->unk0, currentBytes->unk4, (u16)current->unk2, rootBytes[6],
					rootBytes[7], rootBytes[8], currentBytes->unk9);
				if (effect->unk4 < 4 && leaderBytes[5] == 0) {
					func_800C1418_D03C8(arg0, 0);
					func_800C1384_D0334(arg0);
					return;
				}
				nextUnitId = current->unk4;
				func_800C1A4C_D09FC(currentUnitId, arg0, 0);
				currentUnitId = nextUnitId;
			} else {
				currentBytes->unk0 += (s8)currentBytes->unkA;
				currentBytes->unk4 += (s8)currentBytes->unkC;
				currentBytes->unk2 += (s8)currentBytes->unkB;
				if ((s8)currentBytes->unkB >= -0x13) {
					currentBytes->unkB = (u8)((s8)currentBytes->unkB - 1);
				} else {
					currentBytes->unkB = (u8)-0x14;
				}
				if ((s16)(func_800B84D0_C7480(currentBytes->unk0, currentBytes->unk4) >> 8) >= currentBytes->unk2) {
					if (rootBytes[0xC] == 0) {
						func_800C9530_D84E0(currentBytes->unk0, currentBytes->unk4, (u16)current->unk2, rootBytes[6],
							rootBytes[7], rootBytes[8], currentBytes->unk9);
					}
					if (effect->unk4 < 4 && leaderBytes[5] == 0) {
						func_800C1418_D03C8(arg0, 0);
						func_800C1384_D0334(arg0);
						return;
					}
					nextUnitId = current->unk4;
					func_800C1A4C_D09FC(currentUnitId, arg0, 0);
					currentUnitId = nextUnitId;
				} else {
					currentUnitId = current->unk4;
				}
			}
			if (currentUnitId == -5 || currentUnitId == -6) {
				break;
			}
		}
	}
	if (*((u16 *)&leaderBytes[6]) > 0) {
		*((u16 *)&leaderBytes[6]) -= 1;
		return;
	}
	count = (func_800038E0_44E0() % 3) + 2;
	for (i = 0; i < count; i++) {
		if (leaderBytes[5] > 0) {
			func_800CA1B0_D9160(arg0);
			leaderBytes[5] -= 1;
		}
	}
	if (effect->unk4 < 3) {
		func_800C1418_D03C8(arg0, 0);
		func_800C1384_D0334(arg0);
		return;
	}
	func_80137368_146318(root->unk8, root->unkA, root->unkC, 6, arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CA848_D97F8.s")
#endif

#ifdef NON_MATCHING
// CURRENT(6336)
void func_800CABC8_D9B78(s32 arg0) {
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
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, (void *)((u32)D_100D700 & 0x1FFFFFFF));
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

				gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
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
	osSyncPrintf(&D_80143644_1525F4); // ** WARNING: tried to update a bubble effect that doesn't exist! **
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
				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (u8 *)((u32)D_100DA00 & 0x1FFFFFFF));
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
							   (u8 *)((u32)&D_100BF00[entryBytes[0xA] << 9] & 0x1FFFFFFF));
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
							   (u8 *)(((u32 *)D_8013DC80_14CC30)[entryBytes[0xB]] & 0x1FFFFFFF));
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
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)D_100BCF0 & 0x1FFFFFFF));
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

			gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
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

#ifdef NON_MATCHING
// CURRENT(210)
s16 func_800CC7B0_DB760(s16 arg0, s16 arg1, u8 arg2, s16 arg3, s16 arg4, s16 arg5) {
	s32 sp4C;
	Unk80154318Entry *temp_v1;
	u16 sp58;
	u16 sp5A;
	s16 sp5E;
	s8 sp66;
	s8 var_s0;
	Unk80154318Sub *temp_s0;

	sp5E = func_800C17B4_D0764(6, 1);
	if (sp5E != -3) {
		temp_v1 = &D_80154318[sp5E];
		temp_v1->unk2 = arg0;
		temp_s0 = (Unk80154318Sub *)&temp_v1->unk8;
		sp4C = arg1 / 2;
		temp_s0->unk0 = (func_800038E0_44E0() % arg1) + arg3 - sp4C;
		temp_s0->unk2 = (func_800038E0_44E0() % arg1) + arg4 - sp4C;
		temp_s0->unk4 = (func_800038E0_44E0() % arg1) + arg5 - sp4C;
		*(u8 *)&temp_s0->unk6 = 0xFF;
		*(u8 *)&temp_s0->unk7 = 0xFF;
		*(u8 *)&temp_s0->unk8 = 0xFF;
		*(s16 *)&temp_s0->unkA = arg1;
		temp_s0->unkC = func_800038E0_44E0() % 8;
		temp_s0->unkD = arg2;
		var_s0 = (func_800038E0_44E0() % 0x46) + 0x37;
		sp66 = (func_800038E0_44E0() % 0x46) + 0x37;
		if ((func_800038E0_44E0() % 0x14) < 0xA) {
			var_s0 = -var_s0;
		}
		if ((func_800038E0_44E0() % 0x14) < 0xA) {
			sp66 = -sp66;
		}
		sp58 = func_800038E0_44E0();
		sp5A = func_800038E0_44E0();
		func_800C541C_D43CC(arg3, arg4, arg5, var_s0, (sp58 % 60) + 0x41, sp66, 0x14, (sp5A % 60) + 0x46,
			(func_800038E0_44E0() % 4) + 4, 4, 0xC8, 0xC8, 0xFF);
	}
	return sp5E;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CC7B0_DB760.s")
#endif

void func_800CCAD4_DBA84(s16 arg0, s16 arg1, s16 arg2) {
	s32 temp_v0;

	temp_v0 = func_800CC7B0_DB760(0xF, 0x14, (func_800038E0_44E0() % 5 + 5) & 0xFF, arg0, (s32)arg1, (s32)arg2);
	if (temp_v0 != -3) {
		D_80154318[temp_v0].unk12 |= 0x80;
	}
}

// CURRENT(1279)
#ifdef NON_MATCHING
void func_800CCB60_DBB10(void) {
	s16 unitId;
	s16 nextUnitId;
	Unk80154318Entry *entry;
	Unk80154318Sub *sub;
	u8 alpha;

	unitId = D_80154246;
	if ((unitId == -5) || (unitId == -6)) {
		func_800C1418_D03C8(6, 1);
		return;
	}

	alpha = 0xFF;

	if ((unitId != -5) && (unitId != -6)) {
		do {
			entry = &D_80154318[unitId];
			entry->unk15--;

			if ((entry->unk15 & 0xFF) == 0) {
				nextUnitId = entry->unk4;
				func_800C1A4C_D09FC(unitId, 6, 1);
				unitId = nextUnitId;
			} else {
				sub = (Unk80154318Sub *)&entry->unk8;
				if ((entry->unk12 & 0x80) == 1) {
					sub->unk0 += D_80156EE4.unk0;
					sub->unk2 += D_80156EE4.unk2;
					sub->unk4 += D_80156EE4.unk4;
				}

				sub->unk6 = (func_800038E0_44E0() % 85) + 0xAA;
				sub->unk7 = (func_800038E0_44E0() % 85) + 0xAA;
				sub->unk8 = alpha;
				sub->unkC++;
				if (sub->unkC >= 8) {
					sub->unkC = 0;
				}

				unitId = entry->unk4;
			}
		} while ((unitId != -5) && (unitId != -6));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CCB60_DBB10.s")
#endif

#ifdef NON_MATCHING
// CURRENT(1836)
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
		while (1) {
			entry = &D_80154318[index];

			gDPPipeSync(D_8005BB2C++);
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)(D_100E880 + (entry->unk14 << 7)) & 0x1FFFFFFF));
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (15 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));
			gDPPipeSync(D_8005BB2C++);

			dir.x = (D_80153BA0.x * 4.0f) - (f32)entry->unk8;
			dir.y = (D_80153BA0.y * 4.0f) - (f32)entry->unkA;
			dir.z = (D_80153BA0.z * 4.0f) - (f32)entry->unkC;
			func_800C1024_CFFD4(&dir, &dir);

			D_80153BB8.x = (f32)entry->unk8 + (dir.x * (f32)entry->unk12);
			D_80153BB8.y = (f32)entry->unkA + (dir.y * (f32)entry->unk12);
			D_80153BB8.z = (f32)entry->unkC + (dir.z * (f32)entry->unk12);
			D_80153BCC = 0xFF;
			D_80153BC8 = (f32)entry->unk2;
			D_80153BC4 = &entry->unkE;
			func_800DB350_EA300();

			index = entry->unk4;
			if ((index == -5) || (index == -6)) {
				break;
			}
		}
	}

	D_80156EDA += D_80154244 * 4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CCD54_DBD04.s")
#endif

#ifdef NON_MATCHING
// CURRENT(4159)
void func_800CD0B0_DC060(u8 arg0) {
	s16 prevUnitId;
	s16 unitId;
	Unk80154318Entry *entry;
	Unk80154318Sub *sub;
	Unk80154318Sub *prevSub;

	prevUnitId = D_80154088[arg0].unk6;
	unitId = func_800C17B4_D0764(arg0, 0);
	if (unitId != -3) {
		entry = &D_80154318[unitId];
		entry->unk2 = (func_800038E0_44E0() % 40) + 0x14;
		entry->unkE = 0xFF;
		entry->unkF = 0xFF;
		entry->unk10 = 0xFF;
		entry->unk11 = 0xFF;

		sub = (Unk80154318Sub *)&entry->unk8;
		prevSub = (Unk80154318Sub *)&D_80154318[prevUnitId].unk8;
		sub->unk0 = prevSub->unk0;
		sub->unk2 = prevSub->unk2;
		sub->unk4 = prevSub->unk4;
		sub->unkA = (func_800038E0_44E0() % 6) + prevSub->unk6 - 3;
		sub->unkB = (func_800038E0_44E0() % 6) + prevSub->unk7 - 3;
		sub->unkD = 0;
		sub->unkC = (func_800038E0_44E0() % 6) + prevSub->unk8 - 3;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CD0B0_DC060.s")
#endif

u8 func_800CD1F8_DC1A8(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5) {
	Unk80154318Entry *entry;
	s32 temp_v0;
	u8 sp1F;

	sp1F = func_800C14D4_D0484(5);
	if (sp1F != 0xFB) {
		D_80154088[sp1F].unk1 |= 1;
		temp_v0 = func_800C17B4_D0764(sp1F, 0);
		if (temp_v0 == -3) {
			osSyncPrintf(&D_80143688_152638); // EFFECTS WARNING: Failed to create a jet stream - could not allocate any units
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
	osSyncPrintf(&D_801436D8_152688); // ** WARNING: tried to update a jet stream effect that doesn't exist! **
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

#ifdef NON_MATCHING
// CURRENT(3159)
void func_800CD42C_DC3DC(s32 arg0) {
	Unk801541F8Entry *effect;
	Unk80154318Entry *entry;
	Unk89834Pos *sub;
	s16 index;
	s16 nextIndex;
	s16 temp;
	u8 effectId;

	effectId = arg0 & 0xFF;
	effect = &D_80154088[effectId];
	index = D_80154318[effect->unk6].unk4;

	if (((index == -5) || (index == -6)) && (D_80154318[effect->unk6].unk11 == 0)) {
		func_800C1418_D03C8(effectId, 0);
		func_800C1384_D0334(effectId);
		return;
	}

	if ((index != -5) && (index != -6)) {
		do {
			entry = &D_80154318[index];
			sub = (Unk89834Pos *)&entry->unk8;
			if (entry->unk11 < 0xD) {
				if ((effect->unk4 < 3) && (D_80154318[effect->unk6].unk11 == 0)) {
					func_800C1418_D03C8(effectId, 0);
					func_800C1384_D0334(effectId);
					return;
				}

				nextIndex = entry->unk4;
				func_800C1A4C_D09FC(index, effectId, 0);
				index = nextIndex;
			} else {
				if (sub->unkD == 0) {
					sub->unk9 = (u8)(sub->unk9 - (func_800038E0_44E0() % 4) - 4);
					entry->unk2 = (s16)(entry->unk2 + (func_800038E0_44E0() % 3) + 3);
				} else {
					sub->unk9 = (u8)(sub->unk9 - (func_800038E0_44E0() % 6) - 6);
					entry->unk2 = (s16)(entry->unk2 + (func_800038E0_44E0() % 6) + 6);
				}

				sub->unk0 = (s16)(sub->unk0 + sub->unkA);
				sub->unk2 = (s16)(sub->unk2 + sub->unkB);
				sub->unk4 = (s16)(sub->unk4 + sub->unkC);
				sub->unk6 = (s8)(sub->unk6 - 4);
				sub->unk7 = (s8)(sub->unk7 - 4);
				sub->unk8 = (s8)(sub->unk8 - 4);

				temp = (s16)(func_800B84D0_C7480(sub->unk0, sub->unk4) >> 8);
				if (sub->unk2 < temp) {
					sub->unk2 = temp;
					if (sub->unkD == 0) {
						sub->unkD = 1;
						sub->unkA = (s8)(sub->unkA + (func_800038E0_44E0() % 20) - 10);
						sub->unkC = (s8)(sub->unkC + (func_800038E0_44E0() % 20) - 10);
					}
				}

				index = entry->unk4;
			}

		} while ((index != -5) && (index != -6));
	}

	if (D_80154318[effect->unk6].unk11 == 1) {
		func_800CD0B0_DC060(effectId);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CD42C_DC3DC.s")
#endif

// CURRENT(2500)
#ifdef NON_MATCHING
void func_800CD7FC_DC7AC(u8 arg0) {
	s16 index;
	Unk80154318Entry *entry;

	index = D_80154318[D_80154088[arg0].unk6].unk4;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)D_100E080 & 0x1FFFFFFF));
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

	if ((index != -5) && (index != -6)) {
		do {
			entry = &D_80154318[index];
			D_80153BB8.x = (f32)entry->unk8;
			D_80153BC4 = &entry->unkE;
			D_80153BCC = entry->unk11;
			D_80153BB8.y = (f32)entry->unkA;
			D_80153BB8.z = (f32)entry->unkC;
			D_80153BC8 = (f32)entry->unk2;
			func_800DB350_EA300();
			D_80156EDA += 4;
			index = entry->unk4;
		} while ((index != -5) && (index != -6));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CD7FC_DC7AC.s")
#endif

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

// CURRENT(3858)
#ifdef NON_MATCHING
void func_800CDDE4_DCD94(void) {
	s16 idx;
	Unk80154318Entry *entry;
	Unk80052B40 sp78;
	Unk80052B40 sp80;
	Unk80052B40 sp88;
	s32 offset;

	idx = D_8015426A;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_LIGHTING);

	if ((idx != -6) && (idx != -5)) {
		do {
			gDPPipeSync(D_8005BB2C++);

			offset = ((s32)idx << 3) - idx;
			offset <<= 2;
			entry = (Unk80154318Entry *)((u8 *)D_80154318 + offset);
		if (entry->unk11 == 1) {
			sp78.unk0 = 0;
			sp78.unk2 = 0;
			sp78.unk4 = 0x8000;
			sp88.unk0 = 0x96;
			sp88.unk2 = 0x96;
			sp88.unk4 = 0x96;
		} else {
			sp78.unk0 = 0;
			sp78.unk2 = 0;
			sp78.unk4 = 0;
			sp88.unk0 = 0x46;
			sp88.unk2 = 0x46;
			sp88.unk4 = 0x46;
		}

		sp80.unk0 = entry->unk8;
		sp80.unk2 = entry->unkA;
		sp80.unk4 = entry->unkC;

		func_800039D0_45D0(&sp80, &sp78, &sp88, D_8005BB38);

		gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		D_8005BB38 += 0x40;
		gSPDisplayList(D_8005BB2C++, (Gfx *)0x05033E00);
		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

		D_80156EDA += 0x1E;
		idx = entry->unk4;
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
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)D_100BD00 & 0x1FFFFFFF));
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
				gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 8) & 0x1FFFFFFF), 8, 0);
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

// CURRENT(4564)
#ifdef NON_MATCHING
void func_800CEE00_DDDB0(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s16 idx;
	s16 var_s0;
	s16 temp;
	s16 rem;
	s16 tens;
	s16 temp_a2;
	Unk80154318Entry *entry;
	u8 *p;

	var_s0 = arg3;

	temp_a2 = D_80047950;
	if (func_800B93AC_C835C(arg0, arg2, 0xC8, (s16)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f), 0x4000 - temp_a2) == 0) {
		return;
	}

	idx = func_800C17B4_D0764(8, 1);
	if (idx == -3) {
		return;
	}

	temp = var_s0 / 50;
	entry = &D_80154318[idx];
	entry->unk2 = temp + 0x19;
	entry->unk8 = arg0;
	entry->unkA = arg1;
	entry->unkC = arg2;

	temp = var_s0 / 1000;
	var_s0 -= temp * 1000;
	rem = var_s0 / 100;
	var_s0 -= rem * 100;
	tens = var_s0 / 10;
	p = (u8 *)&entry->unk8;
	p[9] = (temp << 4) | rem;
	p[0xA] = (tens << 4) | (var_s0 - (tens * 10));
	p[0xC] = 0xFF;
	p[0xB] = (var_s0 / 300) + 5;

	if (arg3 < 1000) {
		p[6] = 0xFF;
		p[7] = 0xFF;
		p[8] = 0xFF;
	} else {
		p[6] = 0xFF;
		p[7] = 0xE6;
		p[8] = 0x28;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CEE00_DDDB0.s")
#endif

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

// CURRENT(25)
#ifdef NON_MATCHING
void func_800CF174_DE124(Vec3f *arg0, s32 arg1) {
	arg1 = (u8)arg1;
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, (D_8013DCF0_14CCA0[arg1] & 0x1FFFFFFF));
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CF174_DE124.s")
#endif

// CURRENT(11193)
#ifdef NON_MATCHING
void func_800CF2E0_DE290(void) {
	s16 curr;
	Unk80154318Entry *entry;
	Unk80154318Sub *sub;
	Vec3f spFC;
	Vec3f spF0;
	Vec3f spE0;
	Vec3f spD4;
	Vec3f spC8;
	Vec3f spBC;
	f32 temp_f20;
	f64 scale;
	u8 temp_s2;
	u8 temp_s1;
	u8 temp_t5;
	u8 temp_t6;
	u8 temp_t4;
	u8 temp_t7;

	D_80153BCD = 0x20;
	D_80153BCE = 0x20;
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT,
					 TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
	scale = D_80144008_152FB8;

	curr = D_8015425E;
	if ((curr != -6) && (curr != -5)) {
		do {
		entry = &D_80154318[curr];
		if (func_800B93AC_C835C(entry->unk8, entry->unkC, (u16)entry->unk2, (s16)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f),
						   0x4000 - D_80047950) != 0) {
			gDPPipeSync(D_8005BB2C++);
			sub = (Unk80154318Sub *)&entry->unk8;

			if ((u32)(D_80052A8C & 3) < 2U) {
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0, 0, sub->unkC);
			} else {
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0, 0, 0x80, sub->unkC);
			}

			gDPSetEnvColor(D_8005BB2C++, 0xFF, 0xFF, 0xFF, sub->unkC);

			D_80153BC8 = (f32)entry->unk2;
			temp_f20 = (f32)((f64)entry->unk2 * 3.0);
			D_80153BCC = sub->unkC;
			D_80153BC4 = (void *)&sub->unk6;
			func_800C1128_D00D8(temp_f20, &D_80153AB8, &spF0);
			func_800C1128_D00D8(temp_f20, &D_80153AC4, &spFC);

			spE0.x = (f32)(((f64)(spF0.x - spFC.x) * 0.5) + (f64)sub->unk0);
			spE0.y = (f32)(((f64)(spF0.y - spFC.y) * 0.5) + (f64)sub->unk2);
			spE0.z = (f32)(((f64)(spF0.z - spFC.z) * 0.5) + (f64)sub->unk4);

			spD4.x = (f32)(((f64)(spFC.x - spF0.x) * 0.5) + (f64)sub->unk0);
			spD4.y = (f32)(((f64)(spFC.y - spF0.y) * 0.5) + (f64)sub->unk2);
			spD4.z = (f32)(((f64)(spFC.z - spF0.z) * 0.5) + (f64)sub->unk4);

			spBC.x = (f32)((f64)(spD4.x - spE0.x) * scale);
			spBC.y = (f32)((f64)(spD4.y - spE0.y) * scale);
			spBC.z = (f32)((f64)(spD4.z - spE0.z) * scale);

			func_800C10F4_D00A4(&spE0, &spBC, &spC8);
			func_800C10C0_D0070(&spD4, &spBC, &spBC);

			temp_s2 = sub->unk9;
			temp_s1 = sub->unkA;
			temp_t5 = (temp_s2 >> 4) & 0xFF;
			temp_t6 = (temp_s1 >> 4) & 0xFF;
			temp_t4 = temp_s2 & 0xF;
			temp_t7 = temp_s1 & 0xF;

			if (temp_t5 == 0) {
				if (temp_t4 == 0) {
					if (temp_t6 == 0) {
						func_800CF174_DE124(&spBC, temp_t7);
					} else {
						func_800CF174_DE124(&spC8, temp_t6);
						func_800CF174_DE124(&spBC, temp_t7);
					}
				} else {
					func_800CF174_DE124(&spD4, temp_t7);
					func_800CF174_DE124(&spC8, temp_t4);
					func_800CF174_DE124(&spBC, temp_t6);
				}
			} else {
				func_800CF174_DE124(&spE0, temp_t5);
				func_800CF174_DE124(&spD4, temp_t7);
				func_800CF174_DE124(&spC8, temp_t4);
				func_800CF174_DE124(&spBC, temp_t6);
			}
		}

		curr = entry->unk4;
		} while ((curr != -6) && (curr != -5));
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
// CURRENT(2320)
void func_800CF948_DE8F8(void) {
	s16 curr;

	curr = D_80154276;
	if (curr == -5 || curr == -6) {
		func_800C1418_D03C8(0xA, 1);
		return;
	}

	while (curr != -5 && curr != -6) {
		u8 *entry = (u8 *)&D_80154318[curr];
		u8 *data = (u8 *)entry + 8;
		s16 temp_s1;

		if ((data[0x10] & 1) == 1) {
			*(s32 *)&data[0xC] = *(s32 *)&data[0xC] - 1;
		} else {
			*(s32 *)&data[0xC] = *(s32 *)&data[0xC] + 1;
		}

		if (*(s32 *)&data[0xC] <= 0 || *(s32 *)&data[0xC] >= 0x19) {
			temp_s1 = *(s16 *)&entry[4];
			func_800C1A4C_D09FC(curr, 0xA, 1);
			curr = temp_s1;
			continue;
		}

		if (*(s32 *)&data[0xC] < 0x10) {
			s32 i;

			for (i = 0; i < D_80158FD8; i = (i + 1) & 0xFF) {
				s16 radius = *(s16 *)&entry[2];
				VehicleInstance *vehicle = &vehicleInstances[D_80158E80[i]];
				s32 absRadius;
				s32 dx;
				s32 absX;
				s32 dy;
				s32 absY;
				s32 dz;
				s32 absZ;
				s32 maxDist;

				absRadius = -radius;
				if (absRadius < radius) {
					absRadius = radius;
				}

				maxDist = *(s16 *)((u8 *)D_80257A0C + (vehicle->unk1A * 0x70));
				maxDist = maxDist + absRadius + 0x64;

				dx = *(s16 *)&data[0] - vehicle->unk0;
				if (-dx < dx) {
					absX = dx;
				} else {
					absX = -dx;
				}

				dy = *(s16 *)&data[2] - vehicle->unk2;
				if (-dy < dy) {
					absY = dy;
				} else {
					absY = -dy;
				}

				dz = *(s16 *)&data[4] - vehicle->unk4;
				if (-dz < dz) {
					absZ = dz;
				} else {
					absZ = -dz;
				}

				if (absX < maxDist && absY < maxDist && absZ < maxDist) {
					u32 distSq = (absX * absX) + (absY * absY) + (absZ * absZ);
					if ((s32)sqrtf((f32)distSq) < maxDist && *(s16 *)&entry[2] > 0 && !(vehicle->unk20 & 2)) {
						func_80102DDC_111D8C(vehicle, func_80003824_4424((f32)-absX, (f32)-absZ), 0, 9.0f);
					}
				}
			}
		} else if (*(s32 *)&data[0xC] == 0x10 && !(data[0x10] & 2)) {
			u32 i;

			for (i = 0; i < D_8014ECCC; i = (i + 1) & 0xFF) {
				AlienInstance *alien = &alienInstances[D_8014D510[i]];
				s32 dx = *(s16 *)&data[0] - alien->unk0;
				s32 dy = *(s16 *)&data[2] - alien->unk2;
				s32 dz = *(s16 *)&data[4] - alien->unk4;
				s16 radius = *(s16 *)&entry[2];

				if ((dx * dx) + (dy * dy) + (dz * dz) < (s32)(alienSpecs[alien->specIndex].unk8 + (radius * radius))) {
					func_80088760_97710(alien);
				}
			}
		}

		curr = *(s16 *)&entry[4];
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CF948_DE8F8.s")
#endif

#ifdef NON_MATCHING
// CURRENT(2388)
void func_800CFD84_DED34(void) {
	typedef struct {
		u8 unk0;
		u8 unk1;
		s16 radius;
		s16 next;
		s16 prev;
		s16 x;
		s16 y;
		s16 z;
		u8 r;
		u8 g;
		u8 b;
		u8 a;
		s32 life;
		u8 flags;
		u8 unk19;
		u8 pad1A[2];
	} UnkTrailEntry;

	s16 curr;
	s32 padStack0;
	s32 padStack1;
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
		UnkTrailEntry *entry = (UnkTrailEntry *)&D_80154318[curr];

		if (entry->life >= 9) {
			Unk80052B40 pos;
			Unk80052B40 rot;
			Unk80052B40 scale;
			s16 absRadius;
			f32 size;

			if (entry->radius >= 0) {
				absRadius = entry->radius;
			} else {
				absRadius = -entry->radius;
			}

			if (entry->life < 20) {
				size = D_80144014_152FC4 * (f32)(entry->life - 5);
			} else {
				size = 25.0f + (2.5f * (f32)(20 - entry->life));
			}

			scale.unk0 = (s16)((f32)absRadius * size);
			scale.unk2 = (s16)((f32)absRadius * size);
			scale.unk4 = (s16)((f32)absRadius * size);

			if (func_800B93AC_C835C(entry->x, entry->z, (u16)scale.unk0,
				(s16)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {
				u8 alpha;
				s16 texOffset;

				if (entry->life < 20) {
					alpha = (u8)((f32)(entry->life - 8) * D_80144010_152FC0);
				} else {
					alpha = (u8)(250.0f + ((f32)(20 - entry->life) * 50.0f));
				}

				gDPSetPrimColor(D_8005BB2C++, 0, 0, entry->r, entry->g, entry->b, alpha);

				rot.unk0 = 0;
				rot.unk2 = 0;
				rot.unk4 = entry->life << 10;
				pos.unk0 = entry->x;
				pos.unk2 = entry->y;
				pos.unk4 = entry->z;
				texOffset = (entry->life % 8) << 8;

				func_800039D0_45D0(&pos, &rot, &scale, D_8005BB38);

				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_50327B0 + texOffset);
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
				gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				D_8005BB38 += 0x40;
				gSPDisplayList(D_8005BB2C++, (Gfx *)&D_50332A0);
				gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

				D_80156EDA += 0x2F;
			}
		}

			curr = entry->next;
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
// CURRENT(14358)
s16 func_800D0614_DF5C4(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, u8 arg5, u8 arg6, s32 arg7) {
	s16 effectId;
	u16 distanceU16;
	s32 distance;
	Unk80154318Entry *entry;
	Unk80154318Sub *sub;
	s32 burstCount;

	distanceU16 = arg3;
	distance = distanceU16;
	if (func_800B93AC_C835C(arg0, arg2, (distanceU16 * 2) & 0xFFFF, (s16)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {
		effectId = func_800C17B4_D0764(7, 1);
		if (effectId != -3) {
			entry = &D_80154318[effectId];
			sub = (Unk80154318Sub *)&entry->unk8;
			func_801371B8_146168(sub, 0x188, arg0, arg1, arg2, D_80144018_152FC8);

			entry->unk2 = distance;
			sub->unk0 = arg0;
			sub->unk2 = arg1;
			sub->unk4 = arg2;
			sub->unk6 = arg4;
			sub->unk7 = arg5;
			sub->unk8 = arg6;
			sub->unk9 = 0xFF;
			sub->unkA = 0;
			sub->unkB = func_800DDB60_ECB10(arg0, arg1, arg2, 9, distance / 6);
			func_800DDE90_ECE40(sub->unkB, (s8)(distance / 30), 0);

			if (D_80156ED8 == 1) {
				burstCount = 2;
			} else if (D_80156ED8 == 2) {
				burstCount = 0;
			} else {
				burstCount = (func_800038E0_44E0() % 3) + 3;
				burstCount &= 0xFF;
			}

			if (distance >= 1000) {
				func_80135D44_144CF4(arg0, arg1, arg2, 8.0f);
			} else if (distance >= 501) {
				func_80135D44_144CF4(arg0, arg1, arg2, 3.0f);
			} else if (distance >= 200) {
				func_80135D44_144CF4(arg0, arg1, arg2, 2.0f);
			}

			if (arg7 == 1 && burstCount > 0) {
		s32 i;
		s32 halfDistance;
		Vec3f dir;
		s16 spread;
		s16 x;
		s16 y;
		s16 z;

		halfDistance = distance / 2;
		i = 0;
		do {
			spread = ((func_800038E0_44E0() % distance) / 4) + halfDistance;

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
			x = arg0 + (s16)(s32)(dir.x * spread);
			y = arg1 + (s16)(s32)(dir.y * spread);
			z = arg2 + (s16)(s32)(dir.z * spread);
			func_800D16BC_E066C(arg0, arg1, arg2, x, y, z, (func_800038E0_44E0() % 6) + 6);
			i = (i + 1) & 0xFF;
		} while (i < burstCount);
			}
		}
		return effectId;
	}

	return -3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D0614_DF5C4.s")
#endif

// CURRENT(2618)
#ifdef NON_MATCHING
void func_800D0C00_DFBB0(void) {
	s16 var_s1 = D_80154252;

	if (var_s1 == -5 || var_s1 == -6) {
		func_800C1418_D03C8(7, 1);
		return;
	}

	do {
		Unk80154318Entry *temp_s2 = &D_80154318[var_s1];
		u8 *temp_s0 = (u8 *)temp_s2 + 8;
		u8 temp_v1;
		u8 temp_v0;
		s16 temp_s0_2;
		s32 temp_v0_2;
		s32 temp_v0_3;
		s32 temp_v0_4;
		u8 temp_t1;

		if (*(u8 *)&temp_s2->unk12 & 0x80) {
			var_s1 = temp_s2->unk4;
			continue;
		}

		temp_v1 = temp_s0[2];
		temp_v0 = temp_v1;
		if (temp_v1 == 0xF) {
			temp_s0_2 = temp_s2->unk4;
			func_800C1A4C_D09FC(var_s1, 7, 1);
			var_s1 = temp_s0_2;
			continue;
		}

		if (temp_v0 == 8) {
			func_800DDE54_ECE04(temp_s0[3], 0x28);
			temp_v1 = temp_s0[2];
			temp_v0 = temp_v1;
		}

		if (temp_v0 >= 6) {
			temp_v0_2 = temp_s0[1] - 0x1E;
			if (temp_v0_2 < 0) {
				temp_s0[1] = 0;
			} else {
				temp_s0[1] = temp_v0_2;
			}
		}

		temp_t1 = temp_v1 + 1;
		temp_s0[2] = temp_t1;
		if (temp_t1 >= 5) {
			temp_v0_2 = ((u8 *)temp_s2)[6] + 0xA;
			if (temp_v0_2 >= 0x100) {
				((u8 *)temp_s2)[6] = 0xFF;
			} else {
				((u8 *)temp_s2)[6] = temp_v0_2;
			}

			temp_v0_3 = ((u8 *)temp_s2)[7] + 0xA;
			if (temp_v0_3 >= 0x100) {
				((u8 *)temp_s2)[7] = 0xFF;
			} else {
				((u8 *)temp_s2)[7] = temp_v0_3;
			}

			temp_v0_4 = ((u8 *)temp_s2)[8] + 0xA;
			if (temp_v0_4 >= 0x100) {
				((u8 *)temp_s2)[8] = 0xFF;
			} else {
				((u8 *)temp_s2)[8] = temp_v0_4;
			}
		}

		var_s1 = temp_s2->unk4;
	} while (var_s1 != -5 && var_s1 != -6);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D0C00_DFBB0.s")
#endif

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
// CURRENT(6934)
void func_800D10D0_E0080(void) {
	Unk80052B40 spF0;
	Unk80052B40 spE8;
	Unk80052B40 spE0;
	s16 spD8[2];
	u8 spDC[3];
	f32 temp_f0;
	f32 temp_f2;
	s16 var_v0;
	s32 var_s5;
	Unk80154318Entry *var_s3;
	u8 *var_s1;

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

	var_v0 = D_80154252;
	if ((var_v0 != -6) && (var_v0 != -5)) {
		do {
			var_s3 = &D_80154318[var_v0];
			var_s1 = (u8 *)&var_s3->unk8;
			if (*(u8 *)&var_s3->unk12 < 3) {
				var_s5 = var_s3->unk2 * var_s1[0xA];
				if (var_s5 < 0) {
					var_s5 = (var_s5 + 1) >> 1;
				} else {
					var_s5 >>= 1;
				}
			} else {
				var_s5 = var_s3->unk2;
			}

			spF0.unk0 = var_s5 * 6;
			spF0.unk2 = var_s5 * 6;
			spF0.unk4 = var_s5 * 6;

			if (func_800B93AC_C835C(((Unk80052B40 *)var_s1)->unk0, ((Unk80052B40 *)var_s1)->unk4, (u16)spF0.unk0,
												(s16)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {
				spE0.unk0 = ((Unk80052B40 *)var_s1)->unk0;
				spE0.unk2 = ((Unk80052B40 *)var_s1)->unk2;
				spE0.unk4 = ((Unk80052B40 *)var_s1)->unk4;

				temp_f0 = (D_80153BA0.x * 4.0f) - (f32)((Unk80052B40 *)var_s1)->unk0;
				temp_f2 = (D_80153BA0.z * 4.0f) - (f32)((Unk80052B40 *)var_s1)->unk4;
				temp_f0 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));

				spE8.unk0 = func_80003824_4424(D_80153B90.z, D_80153B90.x) + 0x8000;
				spE8.unk2 = 0x8000;
				spE8.unk4 = 0x4000 - func_80003824_4424((D_80153BA0.y * 4.0f) - (f32)((Unk80052B40 *)var_s1)->unk2, temp_f0);

				gDPSetPrimColor(D_8005BB2C++, 0, 0, var_s1[6], var_s1[7], var_s1[8], var_s1[9]);
				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, ((u32)D_100B2F0 & 0x1FFFFFFF));
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

				D_8005BB38 += 0x40;
				func_800039D0_45D0(&spE0, &spE8, &spF0, D_8005BB38);
				gSPMatrix(D_8005BB2C++, (D_8005BB38 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				D_8005BB38 += 0x40;
				gSPDisplayList(D_8005BB2C++, D_504B640);
				gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

				D_80156EDA += 0x15;
				spDC[0] = var_s1[6];
				spDC[1] = var_s1[7];
				spDC[2] = var_s1[8];
				spD8[0] = ((Unk80052B40 *)var_s1)->unk0;
				spD8[1] = ((Unk80052B40 *)var_s1)->unk4;
				func_800B2354_C1304(spD8, spDC, (s16)var_s5, 0x12C);
			}

			var_v0 = var_s3->unk4;
		} while ((var_v0 != -6) && (var_v0 != -5));
	}
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D10D0_E0080.s")
#endif

#ifdef NON_MATCHING
// CURRENT(3865)
s16 func_800D16BC_E066C(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6) {
	s16 sp50;
	s32 pad4C;
	s32 pad48;
	s32 pad44;
	s32 pad40;
	s32 pad3C;
	u8 sp47;
	s16 temp_s2;
	s16 temp_s3;
	s16 temp_s4;
	s16 var_a1;
	s32 temp_at;
	s32 temp_lo;
	s32 temp_t1;
	s16 temp_v0_3;
	s32 var_s0;
	s32 var_s1;
	s32 var_v1;
	u32 temp_v0_2;
	Unk80154318Entry *base;
	Unk80154318Entry *temp_v1;

	sp47 = func_800C1598_D0548(8);
	if (sp47 != 0xFB) {
		temp_s2 = arg3 - arg0;
		temp_s3 = arg4 - arg1;
		temp_s4 = arg5 - arg2;
		temp_v0_2 = (u32)(sqrtf((f32)((temp_s2 * temp_s2) + (temp_s3 * temp_s3) + (temp_s4 * temp_s4))) / 100.0f);
		var_v1 = (s32)(temp_v0_2 & 0xFF);
		if (var_v1 < 2) {
			var_v1 = 2;
		}
		var_s1 = var_v1;
		if (var_v1 >= 0x10) {
			var_v1 = 0xF;
			var_s1 = 0xF;
		}
		var_s0 = 0;
		if (var_s1 >= 0) {
			base = D_80154318;
			temp_s2 = temp_s2 / var_s1;
			temp_s3 = temp_s3 / var_s1;
			var_a1 = temp_s4 / var_s1;
			do {
				temp_v0_3 = (sp50 = var_a1, func_800C18D0_D0880(sp47));
				if (temp_v0_3 == -3) {
					osSyncPrintf(&D_80143770_152720);
					func_800C1418_D03C8(sp47, 0);
					func_800C1384_D0334(sp47);
					return 0xFB;
				}
				temp_v1 = &base[temp_v0_3];
				temp_v1->unkE = arg6;
				temp_v1->unkF = 1;
				temp_v1->unk8 = arg0 + (temp_s2 * var_s0);
				temp_v1->unkA = arg1 + (temp_s3 * var_s0);
				temp_lo = var_a1 * var_s0;
				temp_t1 = (var_s0 + 1) & 0xFF;
				temp_at = var_s1 < temp_t1;
				var_s0 = temp_t1;
				temp_v1->unkC = arg2 + temp_lo;
				var_a1 = sp50;
			} while (temp_at == 0);
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

void func_800D1A1C_E09CC(u8 arg0) {
	if (arg0 != 0xFB) {
		if (D_80154088[arg0].unk0 == 8) {
			func_800C1418_D03C8(arg0, 0);
			func_800C1384_D0334(arg0);
			return;
		}
	}
	osSyncPrintf(&D_801437C0_152770); // EFFECTS WARNING : You have tried to kill a lightning effect which doesn't exist
}

// CURRENT(3721)
#ifdef NON_MATCHING
void func_800D1A94_E0A44(u8 arg0) {
	Unk80154318Sub *sp34;
	s16 sp42;
	s16 sp40;
	s16 sp3E;
	s16 sp3C;
	u8 sp38[3];
	s16 var_a1;
	Unk801541F8Entry *temp_t3;
	Unk80154318Entry *temp_v0;

	temp_t3 = &D_80154088[arg0];
	var_a1 = temp_t3->unk6;
	if (var_a1 == -5 || var_a1 == -6) {
		func_800C1418_D03C8(arg0, 0);
		func_800C1384_D0334(arg0);
		return;
	}

	if (var_a1 != -5 && var_a1 != -6) {
		while (1) {
			temp_v0 = &D_80154318[var_a1];
			sp34 = (Unk80154318Sub *)&temp_v0->unk8;
			if ((u8)temp_v0->unkE == 0xFF) {
				var_a1 = temp_v0->unk4;
			} else {
				if (((u8 *)sp34)[6] == 0) {
					func_800C1418_D03C8(arg0, 0);
					func_800C1384_D0334(arg0);
					return;
				}
				((u8 *)sp34)[6]--;
				var_a1 = temp_v0->unk4;
			}
			if (var_a1 == -5 || var_a1 == -6) {
				break;
			}
		}
	}

	sp38[2] = 0xFF;
	sp38[1] = 0xFF;
	sp38[0] = 0xFF;
	temp_v0 = &D_80154318[temp_t3->unk6];
	sp40 = temp_v0->unk8;
	sp34 = (Unk80154318Sub *)&temp_v0->unk8;
	sp42 = sp34->unk4;
	temp_v0 = &D_80154318[temp_t3->unk8];
	sp3C = temp_v0->unk8;
	sp3E = temp_v0->unkC;
	func_800B1A68_C0A18(&sp40, &sp3C, (s8 *)sp38, (Unk80152D00 *)D_80154318);
	func_80137368_146318(sp34->unk0, sp34->unk2, sp34->unk4, 7, arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D1A94_E0A44.s")
#endif

// CURRENT(19171)
#ifdef NON_MATCHING
void func_800D1C24_E0BD4(s32 arg0) {
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
	f32 temp_f26;
	f32 temp_f28;
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
		var_s7 = 0xC8;
		var_fp = 0xFF;
		spBC = 0xC8;
	} else if (temp_v1 == 2) {
		var_s7 = 0xC8;
		var_fp = 0xC8;
		spBC = 0xFF;
	} else {
		var_s7 = 0xFF;
		var_fp = 0xFF;
		spBC = 0xFF;
	}

	if (((var_s6 = 0x800), (var_s3 != -5)) && (var_s3 != -6)) {
		spB8 = *(&D_80154327 + (var_s3 * 0x1C));
	}

	temp_f30 = spEC;
	temp_f24 = spF4;
	if (spB8 != 0) {
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
							(void *)((u32)(&D_100B4F0[(func_800038E0_44E0() % 4) << 9]) & 0x1FFFFFFF));
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

						D_8005BB34->v.ob[0] = (s16)(s32)temp_f16;
						D_8005BB34->v.ob[1] = (s16)(s32)temp_f24;
						D_8005BB34->v.ob[2] = (s16)(s32)temp_f22;
						D_8005BB34->v.flag = 0;
						D_8005BB34->v.tc[0] = 0;
						D_8005BB34->v.tc[1] = 0;
						D_8005BB34->v.cn[0] = var_s7;
						D_8005BB34->v.cn[1] = var_fp;
						D_8005BB34->v.cn[2] = spBC;
						D_8005BB34->v.cn[3] = 0xFF;
						D_8005BB34++;

						D_8005BB34->v.ob[0] = (s16)(s32)temp_f18;
						D_8005BB34->v.ob[1] = (s16)(s32)temp_f14;
						D_8005BB34->v.ob[2] = (s16)(s32)temp_f30;
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

						D_8005BB34->v.ob[0] = (s16)(s32)temp_f18;
						D_8005BB34->v.ob[1] = (s16)(s32)temp_f14;
						D_8005BB34->v.ob[2] = (s16)(s32)temp_f30;
						D_8005BB34->v.flag = 0;
						D_8005BB34->v.tc[0] = var_s6;
						D_8005BB34->v.tc[1] = var_s6;
						D_8005BB34->v.cn[0] = var_s7;
						D_8005BB34->v.cn[1] = var_fp;
						D_8005BB34->v.cn[2] = spBC;
						D_8005BB34->v.cn[3] = 0xFF;
						D_8005BB34++;

						D_8005BB34->v.ob[0] = (s16)(s32)temp_f16;
						D_8005BB34->v.ob[1] = (s16)(s32)temp_f24;
						D_8005BB34->v.ob[2] = (s16)(s32)temp_f12;
						D_8005BB34->v.flag = 0;
						D_8005BB34->v.tc[0] = var_s6;
						D_8005BB34->v.tc[1] = 0;
						D_8005BB34->v.cn[0] = var_s7;
						D_8005BB34->v.cn[1] = var_fp;
						D_8005BB34->v.cn[2] = spBC;
						D_8005BB34->v.cn[3] = 0xFF;
						D_8005BB34++;

						gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
						gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 2, 3, 1, 0);

						D_80156EDA += 4;

						temp_f22 = temp_f12;
					}

					var_s3 = temp_s4;
				} while ((temp_s4 != -5) && (temp_s4 != -6));
			}

			spB8--;
		} while (spB8 != 0);

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
	s32 temp;
	s32 temp2;
	s32 temp_v0_4;
	s16 temp_v1;
	s16 temp_v1_2;
	s16 temp_v1_3;
	s16 temp_t0;
	u8 temp_v0;
	u8 temp_v0_3;
	u8 temp_t5;
	VehicleInstance *temp_s1;
	Unk80154318Entry *temp_s2;
	Unk80154318Entry *temp_s4;
	Unk80154318Entry *temp_s6;
	Unk80154318Sub *temp_s0;
	Unk80154318Sub *temp_s2_2;
	u8 *temp_v0_2;

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
loop_6:
	temp_s4 = (Unk80154318Entry *)((u8 *)D_80154318 + ((((s32)var_s3 << 3) - var_s3) << 2));
	temp_s5 = temp_s4->unk4;
	temp_s0 = (Unk80154318Sub *)&temp_s4->unk8;
	if (temp_s4->unkF != 0) {
		temp_s1 = D_80052B34;
		temp = ((s32)temp_s1->unk0 - temp_s0->unk0) >> 2;
		temp2 = ((s32)temp_s1->unk4 - temp_s0->unk4) >> 2;
		temp_s2 = (Unk80154318Entry *)((u8 *)D_80154318 + ((((s32)temp_s5 << 3) - temp_s5) << 2));
		temp_v1 = temp_s2->unk8;
		var_s7 = (temp * temp) + (temp2 * temp2);
		if ((f64)var_s7 < ((f64)(temp_v1 * temp_v1) / 12.0)) {
			func_80124118_1330C8(temp_s1, 0x14);
			temp_s1 = D_80052B34;
		}
		if ((D_8013FD78_14ED28 != temp_s1) && (D_8013FD78_14ED28->unk20 & 0x8000)) {
			temp = ((s32)D_8013FD78_14ED28->unk0 - temp_s0->unk0) >> 2;
			temp2 = ((s32)D_8013FD78_14ED28->unk4 - temp_s0->unk4) >> 2;
			temp_v1_2 = temp_s2->unk8;
			var_s7 = (temp * temp) + (temp2 * temp2);
			if ((f64)var_s7 < ((f64)(temp_v1_2 * temp_v1_2) / 12.0)) {
				func_80124118_1330C8(D_8013FD78_14ED28, 0x14);
			}
		}
	}

	temp_v0 = (u8)temp_s0->unk6;
	temp_s6 = (Unk80154318Entry *)((u8 *)D_80154318 + ((((s32)temp_s5 << 3) - temp_s5) << 2));
	temp_s2_2 = (Unk80154318Sub *)&temp_s6->unk8;
	if ((s32)temp_v0 >= 3) {
		temp_s0->unk6 = (u8)(temp_v0 - 3);
	}

	var_v1 = 0;
	do {
		temp_v0_2 = (u8 *)temp_s2_2 + var_v1;
		temp_t5 = temp_v0_2[4] + 1;
		temp_v0_2[4] = temp_t5;
		if ((temp_t5 & 0xFF) >= 0x10) {
			temp_v0_2[4] = 0;
		}
		var_v1 = (var_v1 + 1) & 0xFF;
	} while (var_v1 < 8);

	temp_v0_3 = temp_s0->unkA;
	if (temp_v0_3 == 0) {
		func_80137368_146318(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, 2, var_s3);
	} else if ((temp_v0_3 == 1) && (var_s7 < 0x1E8480)) {
		func_801371B8_146168(temp_s0, 0x10, temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, 0.5f);
		temp_v0_4 = D_80052A8C;
		if (!(temp_v0_4 & 3)) {
			func_801371B8_146168(0, 0xEB, temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, D_8014401C_152FCC);
		}
		if (!(temp_v0_4 & 1)) {
			func_80135D44_144CF4(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, 3.0f);
		}
	}

	if (temp_s0->unkA == 0) {
		temp_s6->unk2 = (s16)((s32)(temp_s4->unk2 * (0xFF - (u8)temp_s0->unk6)) / 255);
		temp = func_800038E0_44E0() & 0xFFFF;
		temp2 = func_800038E0_44E0() & 0xFFFF;
		temp_v1_3 = temp_s6->unk8;
		temp_t0 = temp_s2_2->unk2;
		func_800DDB60_ECB10((s16)(((temp % (temp_v1_3 * 2)) + temp_s0->unk0) - temp_v1_3),
						(s16)(((s16)temp_s6->unk2 / 2) + temp_s0->unk2),
						(s16)(((temp2 % (temp_t0 * 2)) + temp_s0->unk4) - temp_t0),
						0xB,
						(func_800038E0_44E0() % 15) + 0xF);
	} else {
		temp_s6->unk2 = temp_s4->unk2;
	}

	var_s3 = temp_s6->unk4;
	if (var_s3 != -5) {
		if (var_s3 == -6) {
			sp50 = var_s7;
		} else {
			goto loop_6;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D25D0_E1580.s")
#endif

// CURRENT(4753)
#ifdef NON_MATCHING
void func_800D2AB0_E1A60(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, u8 arg6, u8 arg7) {
	s16 sp0;
	s16 temp;
	s16 temp2;
	s16 temp3;
	s16 temp5;
	u8 *color;

	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)(D_1007A70 + (arg6 << 9)) & 0x1FFFFFFF));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK,
			   G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK,
		   G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);
	gDPPipeSync(D_8005BB2C++);

	sp0 = (s16)(f32)arg0;
	D_8005BB34->v.ob[0] = sp0;
	temp = (s16)(f32)arg5;
	D_8005BB34->v.ob[1] = temp;
	temp2 = (s16)(f32)arg2;
	D_8005BB34->v.ob[2] = temp2;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x80;
	D_8005BB34->v.tc[1] = 0;
	color = &D_8013E108_14D0B8[arg7 * 8];
	D_8005BB34->v.cn[0] = color[0];
	D_8005BB34->v.cn[1] = color[1];
	D_8005BB34->v.cn[2] = color[2];
	D_8005BB34->v.cn[3] = color[3];

	D_8005BB34++;
	arg1 = (s16)(f32)arg1;
	D_8005BB34->v.ob[0] = arg1;
	D_8005BB34->v.ob[1] = temp;
	temp3 = (s16)(f32)arg3;
	D_8005BB34->v.ob[2] = temp3;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x780;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = color[0];
	D_8005BB34->v.cn[1] = color[1];
	D_8005BB34->v.cn[2] = color[2];
	D_8005BB34->v.cn[3] = color[3];

	D_8005BB34++;
	temp5 = (s16)(f32)arg4;
	D_8005BB34->v.ob[0] = arg1;
	D_8005BB34->v.ob[1] = temp5;
	D_8005BB34->v.ob[2] = temp3;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x780;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = color[4];
	D_8005BB34->v.cn[1] = color[5];
	D_8005BB34->v.cn[2] = color[6];
	D_8005BB34->v.cn[3] = color[7];

	D_8005BB34++;
	D_8005BB34->v.ob[0] = sp0;
	D_8005BB34->v.ob[1] = temp5;
	D_8005BB34->v.ob[2] = temp2;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x80;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = color[4];
	D_8005BB34->v.cn[1] = color[5];
	D_8005BB34->v.cn[2] = color[6];
	D_8005BB34->v.cn[3] = color[7];

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D2AB0_E1A60.s")
#endif

// CURRENT(30782)
#ifdef NON_MATCHING
void func_800D2ECC_E1E7C(void) {
	s8 sp80;
	s8 sp81;
	s8 sp82;
	s16 sp7C;
	s16 sp7E;
	s16 var_v1;
	s32 temp_fp;
	s16 temp_t3;
	s16 temp_t3_2;
	u8 temp_t6;
	u8 temp_t6_2;
	u8 temp_t6_3;
	u8 temp_t6_4;
	u8 temp_t6_5;
	s16 temp_t8;
	u8 *temp_s7;
	Unk80154318Sub *temp_s0;
	Unk80154318Sub *temp_s3;
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
	temp_s7 = D_8013E108_14D0B8;
loop_3:
	temp_s5 = &D_80154318[var_v1];
	temp_s6 = &D_80154318[temp_s5->unk4];
	if (func_800B93AC_C835C(temp_s5->unk8, temp_s5->unkC, (temp_s6->unk8 + temp_s6->unkA) & 0xFFFF, (s16)(s32)(D_80047954 * 4.0f),
						   (s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {
		temp_s3 = (Unk80154318Sub *)&temp_s6->unk8;
		temp_s0 = (Unk80154318Sub *)&temp_s5->unk8;
		temp_t8 = temp_s3->unk0 / 2;
		func_800D2AB0_E1A60((s16)(temp_s0->unk0 - temp_t8), (s16)(temp_s0->unk0 + temp_t8), (s16)(temp_s0->unk4 + temp_s3->unk2),
					   (s16)(temp_s0->unk4 + temp_s3->unk2), temp_s0->unk2, temp_s3->unk2 + temp_s0->unk2, temp_s3->unk4, temp_s0->unkA);
		func_800D2AB0_E1A60((s16)(temp_s0->unk0 + (temp_s3->unk0 / 2)), (s16)(temp_s0->unk0 + temp_s3->unk0),
					   (s16)(temp_s0->unk4 + temp_s3->unk2), (s16)(temp_s0->unk4 + (temp_s3->unk2 / 2)), temp_s0->unk2,
					   temp_s3->unk2 + temp_s0->unk2, *((u8 *)temp_s3 + 5), temp_s0->unkA);
		temp_t6 = 2 & 0xFF;
		temp_t3 = temp_s3->unk2 / 2;
		func_800D2AB0_E1A60((s16)(temp_s0->unk0 + temp_s3->unk0), (s16)(temp_s0->unk0 + temp_s3->unk0), (s16)(temp_s0->unk4 + temp_t3),
					   (s16)(temp_s0->unk4 - temp_t3), temp_s0->unk2, temp_s3->unk2 + temp_s0->unk2, *((u8 *)temp_s3 + 4 + temp_t6),
					   temp_s0->unkA);
		temp_t6_2 = (temp_t6 + 1) & 0xFF;
		func_800D2AB0_E1A60((s16)(temp_s0->unk0 + temp_s3->unk0), (s16)(temp_s0->unk0 + (temp_s3->unk0 / 2)),
					   (s16)(temp_s0->unk4 - (temp_s3->unk2 / 2)), (s16)(temp_s0->unk4 - temp_s3->unk2), temp_s0->unk2,
					   temp_s3->unk2 + temp_s0->unk2, *((u8 *)temp_s3 + 4 + temp_t6_2), temp_s0->unkA);
		temp_t6_3 = (temp_t6_2 + 1) & 0xFF;
		temp_t8 = temp_s3->unk0 / 2;
		func_800D2AB0_E1A60((s16)(temp_s0->unk0 + temp_t8), (s16)(temp_s0->unk0 - temp_t8), (s16)(temp_s0->unk4 - temp_s3->unk2),
					   (s16)(temp_s0->unk4 - temp_s3->unk2), temp_s0->unk2, temp_s3->unk2 + temp_s0->unk2,
					   *((u8 *)temp_s3 + 4 + temp_t6_3), temp_s0->unkA);
		temp_t6_4 = (temp_t6_3 + 1) & 0xFF;
		func_800D2AB0_E1A60((s16)(temp_s0->unk0 - (temp_s3->unk0 / 2)), (s16)(temp_s0->unk0 - temp_s3->unk0),
					   (s16)(temp_s0->unk4 - temp_s3->unk2), (s16)(temp_s0->unk4 - (temp_s3->unk2 / 2)), temp_s0->unk2,
					   temp_s3->unk2 + temp_s0->unk2, *((u8 *)temp_s3 + 4 + temp_t6_4), temp_s0->unkA);
		temp_t6_5 = (temp_t6_4 + 1) & 0xFF;
		temp_t3_2 = temp_s3->unk2 / 2;
		func_800D2AB0_E1A60((s16)(temp_s0->unk0 - temp_s3->unk0), (s16)(temp_s0->unk0 - temp_s3->unk0), (s16)(temp_s0->unk4 - temp_t3_2),
					   (s16)(temp_s0->unk4 + temp_t3_2), temp_s0->unk2, temp_s3->unk2 + temp_s0->unk2,
					   *((u8 *)temp_s3 + 4 + temp_t6_5), temp_s0->unkA);
		func_800D2AB0_E1A60((s16)(temp_s0->unk0 - temp_s3->unk0), (s16)(temp_s0->unk0 - (temp_s3->unk0 / 2)),
					   (s16)(temp_s0->unk4 + (temp_s3->unk2 / 2)), (s16)(temp_s0->unk4 + temp_s3->unk2), temp_s0->unk2,
					   temp_s3->unk2 + temp_s0->unk2, *((u8 *)temp_s3 + 4 + ((temp_t6_5 + 1) & 0xFF)), temp_s0->unkA);
		sp80 = temp_s7[temp_s0->unkA * 8] - (func_800038E0_44E0() % temp_fp);
		sp81 = temp_s7[(temp_s0->unkA * 8) + 1] - (func_800038E0_44E0() % temp_fp);
		sp82 = temp_s7[(temp_s0->unkA * 8) + 2] - (func_800038E0_44E0() % temp_fp);
		sp7C = temp_s0->unk0;
		sp7E = temp_s0->unk4;
		func_800B2354_C1304(&sp7C, &sp80, temp_s3->unk0, 0x200);
	}
	var_v1 = temp_s6->unk4;
	if ((var_v1 != -5) && (var_v1 != -6)) {
		goto loop_3;
	}
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
	s32 temp_v0;
	s32 temp_v1;
	s32 temp_fp;
	s16 *temp_s0;
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
		loop_7:
			temp_s6 = &D_80154318[var_v0];
			temp_s3 = temp_s6->unk2;
			if (func_800B93AC_C835C(temp_s6->unk8, temp_s6->unkC, temp_s3 & 0xFFFF, (s16) (s32) (D_80047954 * 4.0f),
									   (s32) (D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {
				if ((func_800038E0_44E0() % 20) < 4) {
					temp_s2 = func_800038E0_44E0() & 0xFFFF;
					temp_s1 = func_800038E0_44E0() & 0xFFFF;
					temp_s0 = &temp_s6->unk8;
					temp_v1 = temp_s3 / 2;
					temp_v0 = func_800DDB60_ECB10((s16) (((temp_s2 % temp_s3) + temp_s6->unk8) - temp_v1), (s16) (temp_s0[1] + 0xA),
												  (s16) (((temp_s1 % temp_s3) + temp_s0[2]) - temp_v1), 3,
												  ((s32) (func_800038E0_44E0() % temp_s3) / 4) + 0x28);
					if (temp_v0 != 0xFF) {
						temp_s0_2 = &D_80156EF0[temp_v0 & 0xFF];
						temp_s0_2->unk6 = (s8) ((func_800038E0_44E0() % temp_fp) + 0x50);
						temp_s0_2->unk7 = (s8) ((func_800038E0_44E0() % temp_fp) + 0x50);
						temp_s0_2->unk8 = (s8) ((func_800038E0_44E0() % temp_fp) + 0x50);
						temp_s0_2->unk11 = 4;
					}
				}
				if ((func_800038E0_44E0() % 60) < 5) {
					temp_s0 = &temp_s6->unk8;
					temp_s7 = func_800038E0_44E0() & 0xFFFF;
					temp_s4 = func_800038E0_44E0() & 0xFFFF;
					temp_s5 = func_800038E0_44E0() & 0xFFFF;
					temp_s2 = func_800038E0_44E0() & 0xFFFF;
					temp_s1 = func_800038E0_44E0() & 0xFFFF;
					func_800CA5EC_D959C(temp_s6->unk8, (s16) (temp_s0[1] + 0xA), temp_s0[2], (s8) ((temp_s7 % 160) - 0x50),
										 (temp_s4 % 45) + 0x50, (temp_s5 % 160) - 0x50, (temp_s2 % temp_fp) + 0x32,
										 5, (temp_s1 % 12) + 8, (func_800038E0_44E0() % 50) + 0x28, 0xFF,
										 0x5A, 0x1E, 0xFA);
					if ((func_800038E0_44E0() % 20) < 0xF) {
						temp_s1 = func_800038E0_44E0() & 0xFFFF;
						func_800C7924_D68D4(temp_s6->unk8, (s16) (temp_s0[1] + 0xA), temp_s0[2], (s16) ((temp_s1 % 20) + 0x14), -8,
										 (func_800038E0_44E0() % temp_s3) + temp_s3, (s32) &D_A003F40, 3);
					}
				}
			}
			var_v0 = temp_s6->unk4;
			if ((var_v0 != -5) && (var_v0 != -6)) {
				goto loop_7;
			}
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

#ifdef NON_MATCHING
// CURRENT(2240)
void func_800D3E3C_E2DEC(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, u8 arg6) {
	s16 temp;
	u8 c0;
	u8 c1;
	u8 c2;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPPipeSync(D_8005BB2C++);

	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1,
		((((func_800038E0_44E0() % 4) << 9) + (s32)&D_100B4F0) & 0x1FFFFFFF));
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

	c0 = (u8)((func_800038E0_44E0() % 0x37) + 0xC8);
	c1 = (u8)((func_800038E0_44E0() % 0x37) + 0x32);
	c2 = (u8)((func_800038E0_44E0() % 0x37) + 0x82);

	temp = func_800038E0_44E0() % 0xF;
	D_8005BB34->v.ob[0] = (arg0 + temp) + 0x14;
	temp = func_800038E0_44E0() % 0xF;
	D_8005BB34->v.ob[1] = (arg1 + temp) + 0x14;
	temp = func_800038E0_44E0() % 0xF;
	D_8005BB34->v.ob[2] = (arg2 + temp) + 0x14;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = c0;
	D_8005BB34->v.cn[1] = c1;
	D_8005BB34->v.cn[2] = c2;
	D_8005BB34->v.cn[3] = arg6;

	D_8005BB34++;
	temp = func_800038E0_44E0() % 0xF;
	D_8005BB34->v.ob[0] = (arg0 - temp) - 0x14;
	temp = func_800038E0_44E0() % 0xF;
	D_8005BB34->v.ob[1] = (arg1 - temp) - 0x14;
	temp = func_800038E0_44E0() % 0xF;
	D_8005BB34->v.ob[2] = (arg2 - temp) - 0x14;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = c0;
	D_8005BB34->v.cn[1] = c1;
	D_8005BB34->v.cn[2] = c2;
	D_8005BB34->v.cn[3] = arg6;

	D_8005BB34++;
	temp = func_800038E0_44E0() % 0xF;
	D_8005BB34->v.ob[0] = (arg3 + temp) + 0x14;
	temp = func_800038E0_44E0() % 0xF;
	D_8005BB34->v.ob[1] = (arg4 + temp) + 0x14;
	temp = func_800038E0_44E0() % 0xF;
	D_8005BB34->v.ob[2] = (arg5 + temp) + 0x14;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x800;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = c0;
	D_8005BB34->v.cn[1] = c1;
	D_8005BB34->v.cn[2] = c2;
	D_8005BB34->v.cn[3] = arg6;

	D_8005BB34++;
	temp = func_800038E0_44E0() % 0xF;
	D_8005BB34->v.ob[0] = (arg3 - temp) - 0x14;
	temp = func_800038E0_44E0() % 0xF;
	D_8005BB34->v.ob[1] = (arg4 - temp) - 0x14;
	temp = func_800038E0_44E0() % 0xF;
	D_8005BB34->v.ob[2] = (arg5 - temp) - 0x14;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x800;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = c0;
	D_8005BB34->v.cn[1] = c1;
	D_8005BB34->v.cn[2] = c2;
	D_8005BB34->v.cn[3] = arg6;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, D_8005BB34 - 4, 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 2, 1, 0, 0, 3, 2, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D3E3C_E2DEC.s")
#endif

// CURRENT(2425)
#ifdef NON_MATCHING
void func_800D45B4_E3564(void) {
	s16 index;
	s32 minusSix;

	index = D_801542A6;
	if (index == -5) {
		return;
	}

	minusSix = -6;
	if (index == minusSix) {
		return;
	}

	while (1) {
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
		f64 stepZ;
		f64 stepX;
		Unk80154318Entry *entry;
		s16 *points;

		entry = &D_80154318[index];
		points = &entry->unk8;

		dx = (s16)(*(s16 *)&entry->unkE - entry->unk8);
		dy = (s16)(*(s16 *)&entry->unk10 - entry->unkA);
		dz = (s16)(entry->unk12 - entry->unkC);
		alpha = (u8)((0xFF - (entry->unk14 * 0x12)) & 0xFF);

		cosVal = coss(0x888);
		sinVal = sins(0x888);

		quarterZ = (s16)(dz / 4);
		stepZ = (f64)quarterZ;
		quarterX = (s16)(dx / 4);
		stepX = (f64)quarterX;

		scaleX = (s16)((((f64)(f32)sinVal / 32768.0) * stepZ) + (((f64)(f32)cosVal / 32768.0) * stepX));
		cosVal = coss(0x888);
		sinVal = sins(0x888);
		scaleZ = (s16)((((f64)(f32)cosVal / 32768.0) * stepZ) - (((f64)(f32)sinVal / 32768.0) * stepX));

		func_800D3E3C_E2DEC(points[0], points[1], points[2], points[3], points[4], points[5], alpha);

		quarterY = (s16)(dy / 4);
		func_800D3E3C_E2DEC(points[0], points[1], points[2], (s16)(points[0] + scaleX), (s16)(points[1] + quarterY), (s16)(points[2] + scaleZ), alpha);
		func_800D3E3C_E2DEC(points[3], points[4], points[5], (s16)(points[0] + scaleX), (s16)(points[1] + quarterY), (s16)(points[2] + scaleZ), alpha);

		cosVal = coss(0xF778);
		sinVal = sins(0xF778);
		scaleX = (s16)((((f64)(f32)sinVal / 32768.0) * stepZ) + (((f64)(f32)cosVal / 32768.0) * stepX));
		cosVal = coss(0xF778);
		sinVal = sins(0xF778);
		scaleZ = (s16)((((f64)(f32)cosVal / 32768.0) * stepZ) - (((f64)(f32)sinVal / 32768.0) * stepX));

		func_800D3E3C_E2DEC(points[0], points[1], points[2], (s16)(points[0] + scaleX), (s16)(points[1] + quarterY), (s16)(points[2] + scaleZ), alpha);
		func_800D3E3C_E2DEC(points[3], points[4], points[5], (s16)(points[0] + scaleX), (s16)(points[1] + quarterY), (s16)(points[2] + scaleZ), alpha);

		index = D_80154318[index].unk4;
		if (index == -5 || index == minusSix) {
			return;
		}
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
	osSyncPrintf(&D_80143814_1527C4); // ** WARNING: tried to update a ring weapon bullet that doesn't exist! **
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
	u8 (*palette)[3];

	index = D_801542B2;
	zeroF = 0.0f;
	fortyF = 40.0f;
	palette = D_8013DFA8_14CF58;
	if (index == -5 || index == -6) {
		return;
	}

	while (index != -5 && index != -6) {
		Unk80154318Entry *entry;
		f32 spFC[3];
		f32 spF0[3];
		f32 spE4[3];
		f32 len;
		f32 segLen;
		s16 cosVal;
		u32 texAddr;
		s32 steps;
		s16 radius;
		s32 i;
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
		s32 mod;

		entry = &D_80154318[index];
		spFC[0] = (f32)(*(s16 *)&entry->unkE - entry->unk8);
		spFC[1] = (f32)(*(s16 *)&entry->unk10 - entry->unkA);
		spFC[2] = (f32)(*(s16 *)&entry->unk12 - entry->unkC);
		len = sqrtf((spFC[0] * spFC[0]) + (spFC[1] * spFC[1]) + (spFC[2] * spFC[2]));

		if (len == zeroF) {
			index = entry->unk4;
			continue;
		}

		texAddr = ((u32)D_100DC00) & 0x1FFFFFFF;
		cosVal = coss(0x4000);
		spE4[0] = (f32)((((f64)(f32)sins(0x4000) / 32768.0) * (f64)spFC[2]) +
			(((f64)spFC[0]) * ((f64)(f32)cosVal / 32768.0)));
		spE4[1] = zeroF;
		cosVal = coss(0x4000);
		spE4[2] = (f32)((((f64)spFC[2]) * ((f64)(f32)cosVal / 32768.0)) -
			(((f64)(f32)sins(0x4000) / 32768.0) * (f64)spFC[0]));

		func_800C1024_CFFD4((Vec3f *)spE4, (Vec3f *)spE4);
		func_800C1024_CFFD4((Vec3f *)spFC, (Vec3f *)spF0);
		func_800C1128_D00D8(fortyF, (Vec3f *)spF0, (Vec3f *)spF0);
		segLen = sqrtf((spF0[0] * spF0[0]) + (spF0[1] * spF0[1]) + (spF0[2] * spF0[2]));

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

		x = (f32)*(s16 *)&entry->unkE;
		y = (f32)*(s16 *)&entry->unk10;
		z = (f32)*(s16 *)&entry->unk12;

		steps = (s32)(len / segLen);
		if (steps < 0) {
			steps = 0;
		}
		if (steps >= 0xA) {
			steps = 9;
		}

		radius = (s16)((steps * 8) + 0xA);
		if (steps > 0) {
			fadeStep = 0x96 / steps;
			for (i = 0; i < steps; i++) {
				x -= spF0[0];
				y -= spF0[1];
				z -= spF0[2];
				r = (f32)radius;

				mod = i % 3;
				c0 = palette[mod][0];
				c1 = palette[mod][1];
				c2 = palette[mod][2];
				alpha = (u8)((i * fadeStep) + 0x64);

				D_8005BB34->v.ob[0] = (s16)(s32)((r * spE4[0]) + x);
				yLo = (s16)(s32)(r + y);
				D_8005BB34->v.ob[1] = yLo;
				D_8005BB34->v.ob[2] = (s16)(s32)((r * spE4[2]) + z);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = c0;
				D_8005BB34->v.cn[1] = c1;
				D_8005BB34->v.cn[2] = c2;
				D_8005BB34->v.cn[3] = alpha;
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)(s32)(x - (r * spE4[0]));
				D_8005BB34->v.ob[1] = yLo;
				D_8005BB34->v.ob[2] = (s16)(s32)(z - (r * spE4[2]));
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0x800;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = c0;
				D_8005BB34->v.cn[1] = c1;
				D_8005BB34->v.cn[2] = c2;
				D_8005BB34->v.cn[3] = alpha;
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)(s32)(x - (r * spE4[0]));
				D_8005BB34->v.ob[1] = (s16)(s32)(y - r);
				D_8005BB34->v.ob[2] = (s16)(s32)(z - (r * spE4[2]));
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0x800;
				D_8005BB34->v.tc[1] = 0x800;
				D_8005BB34->v.cn[0] = c0;
				D_8005BB34->v.cn[1] = c1;
				D_8005BB34->v.cn[2] = c2;
				D_8005BB34->v.cn[3] = alpha;
				D_8005BB34++;

				D_8005BB34->v.ob[0] = (s16)(s32)((r * spE4[0]) + x);
				D_8005BB34->v.ob[1] = (s16)(s32)(y - r);
				D_8005BB34->v.ob[2] = (s16)(s32)((r * spE4[2]) + z);
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0x800;
				D_8005BB34->v.cn[0] = c0;
				D_8005BB34->v.cn[1] = c1;
				D_8005BB34->v.cn[2] = c2;
				D_8005BB34->v.cn[3] = alpha;
				D_8005BB34++;

				gSPVertex(D_8005BB2C++, D_8005BB34 - 4, 4, 0);
				gSP2Triangles(D_8005BB2C++, 0, 2, 1, 0, 0, 3, 2, 0);

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

// CURRENT(1450)
#ifdef NON_MATCHING
s16 func_800D5424_E43D4(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4, u8 arg5) {
	u8 *base2;
	Unk80154318Entry *entry;
	s16 sp2E;
	s16 sp2C;
	u8 *base;

	sp2E = func_800C19D4_D0984(0x10, 1);
	sp2C = D_80154318[sp2E].unk4;
	if (sp2E != -3) {
		entry = &D_80154318[sp2E];
		entry->unk2 = 1;
		entry->unkF = (u8)1;
		entry->unk10 = entry->unkE = 2;
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;
		base = (u8 *)&entry->unk8;
		base[9] = func_800D5FD4_E4F84(arg0, arg1, arg2, arg3, arg4, arg5);
		base[10] = func_800D5FD4_E4F84(arg0, arg1, arg2, arg3, arg4, arg5);
		base[11] = func_800D5FD4_E4F84(arg0, arg1, arg2, arg3, arg4, arg5);
		base2 = (u8 *)&D_80154318[sp2C].unk8;
		*(s16 *)base2 = 0;
		base2[2] = arg3;
		base2[3] = arg4;
		base2[4] = arg5;
	}
	return sp2E;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D5424_E43D4.s")
#endif

void func_800D5588_E4538(s16 arg0) {
	if (arg0 != -3) {
		func_800C1E24_D0DD4(arg0, 0x10, 1);
	}
}

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
	osSyncPrintf(&D_80143860_152810, arg1, arg2, arg3); // ** WARNING: tried to update a triple spinner that doesn't exist! **
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
// CURRENT(8242)
void func_800D5760_E4710(s16 arg0, u16 arg1, s16 arg2, u16 arg3, u8 arg4) {
	Unk80154318Entry *entry;
	Unk80154318Sub *sub;
	u8 *parentBytes;
	u16 dist;
	f32 scaleSin;
	f32 scaleCos;
	s16 angle;
	s16 parent;
	s16 x;
	s16 y;
	s16 z;

	angle = (s16)((((arg2 + (arg4 * 0x78)) << 0x10) / 360) & 0xFFFF);
	entry = &D_80154318[arg0];
	sub = (Unk80154318Sub *)&entry->unk8;
	parent = entry->unk4;
	dist = arg1 & 0xFFFF;
	scaleSin = (f32)(((f64)(f32)sins((u16)angle) / 32768.0) * dist);
	scaleCos = (f32)(((f64)(f32)coss((u16)angle) / 32768.0) * dist);
	x = (s16)((s32)(((f64)(f32)coss(arg3) / 32768.0) * (f64)scaleSin) + entry->unk8);
	y = (s16)((s32)scaleCos + entry->unkA);
	z = (s16)((s32)((((f64)(f32)sins(arg3) / 32768.0) * (f64)-scaleSin)) + entry->unkC);

	parentBytes = (u8 *)&D_80154318[parent].unk8;
	if (arg4 == 0) {
		func_800D6084_E5034(sub->unk9, x, y, z, parentBytes[2], parentBytes[3], parentBytes[4]);
	} else if (arg4 == 1) {
		func_800D6084_E5034(sub->unkA, x, y, z, parentBytes[2], parentBytes[3], parentBytes[4]);
	} else {
		func_800D6084_E5034(sub->unkB, x, y, z, parentBytes[2], parentBytes[3], parentBytes[4]);
	}

	if (parent == -5) {
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

// CURRENT(5385)
#ifdef NON_MATCHING
void func_800D5AF4_E4AA4(void) {
	s16 angle;
	s16 curr;
	s16 next;
	u16 radius;
	s8 xStep;
	s8 yStep;
	s8 *entryBytes;
	s32 mode;
	Unk80154318Entry *entry;
	Unk80154318Entry *parent;
	s16 negSix;

	D_80153BCD = 0x20;
	D_80153BCE = 0x20;
	D_80153BC4 = &D_80153B80;
	D_80153BC8 = 55.0f;
	D_80153BCC = 0xFF;
	curr = D_801542BE;

	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1,
		((((func_800038E0_44E0() % 8) << 9) + (u32) &D_100C700) & 0x1FFFFFFF));
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

	if (curr == -5) {
		return;
	}

	negSix = -6;
	if (curr == negSix) {
		return;
	}

	while (1) {
		entry = &D_80154318[curr];
		entryBytes = (s8 *)&entry->unk8;
		parent = &D_80154318[entry->unk4];

		radius = ((u16)parent->unk8) << 2;
		if (radius >= 0x29) {
			radius = 0x28;
		}

		angle = (s16)(((u16)parent->unk8 * 15) % 360);
		xStep = entryBytes[6];
		if (xStep > 0) {
			yStep = entryBytes[8];
			if (yStep > 0) {
				next = (s16)(0x10000 - func_80003740_4340((f32)(xStep / yStep)));
			} else if (yStep < 0) {
				next = (s16)(func_80003740_4340((f32)(xStep / yStep)) + 0x8000);
			} else {
				next = -0x4000;
			}
			mode = gameplayMode;
		} else if (xStep < 0) {
			yStep = entryBytes[8];
			if (yStep > 0) {
				next = func_80003740_4340((f32)(xStep / yStep));
			} else if (yStep < 0) {
				next = (s16)(0x8000 - func_80003740_4340((f32)(xStep / yStep)));
			} else {
				next = 0x4000;
			}
			mode = gameplayMode;
		} else {
			yStep = entryBytes[8];
			next = 0;
			if (yStep > 0) {
				mode = gameplayMode;
			} else if (yStep < 0) {
				next = -0x8000;
				mode = gameplayMode;
			} else {
				osSyncPrintf(D_801438A8_152858);
				return;
			}
		}

		if (mode == 1) {
			func_800D5760_E4710(curr, radius, angle, next, 0);
			func_800D5760_E4710(curr, radius, angle, next, 1);
			func_800D5760_E4710(curr, radius, angle, next, 2);
		}

		curr = parent->unk4;
		if (curr == -5) {
			return;
		}
		if (curr == negSix) {
			return;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D5AF4_E4AA4.s")
#endif

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
	Vtx *vtx;

	index = D_80154088[arg0 & 0xFF].unk6;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)D_100BD00 & 0x1FFFFFFF));
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
				vtx->v.cn[0] = entry->unkE;
				vtx->v.cn[1] = entry->unkF;
				vtx->v.cn[2] = entry->unk10;
				vtx->v.cn[3] = entry->unk11;

				D_8005BB34++;
				vtx = D_8005BB34;
				vtx->v.ob[0] = entry->unk8;
				vtx->v.ob[1] = entry->unkA - (func_800038E0_44E0() % 5) - 0xF;
				vtx->v.ob[2] = entry->unkC;
				vtx->v.flag = 0;
				vtx->v.tc[0] = 0;
				vtx->v.tc[1] = 0x800;
				vtx->v.cn[0] = entry->unkE;
				vtx->v.cn[1] = entry->unkF;
				vtx->v.cn[2] = entry->unk10;
				vtx->v.cn[3] = entry->unk11;

				D_8005BB34++;
				vtx = D_8005BB34;
				vtx->v.ob[0] = nextEntry->unk8;
				vtx->v.ob[1] = nextEntry->unkA - (func_800038E0_44E0() % 5) - 0xF;
				vtx->v.ob[2] = nextEntry->unkC;
				vtx->v.flag = 0;
				vtx->v.tc[0] = 0x800;
				vtx->v.tc[1] = 0x800;
				vtx->v.cn[0] = nextEntry->unkE;
				vtx->v.cn[1] = nextEntry->unkF;
				vtx->v.cn[2] = nextEntry->unk10;
				vtx->v.cn[3] = nextEntry->unk11;

				D_8005BB34++;
				vtx = D_8005BB34;
				vtx->v.ob[0] = nextEntry->unk8;
				vtx->v.ob[1] = (func_800038E0_44E0() % 5) + nextEntry->unkA + 0xF;
				vtx->v.ob[2] = nextEntry->unkC;
				vtx->v.flag = 0;
				vtx->v.tc[0] = 0x800;
				vtx->v.tc[1] = 0;
				vtx->v.cn[0] = nextEntry->unkE;
				vtx->v.cn[1] = nextEntry->unkF;
				vtx->v.cn[2] = nextEntry->unk10;
				vtx->v.cn[3] = nextEntry->unk11;

				D_8005BB34++;
				vtx = D_8005BB34;
				vtx->v.ob[0] = entry->unk8 + deltaX;
				vtx->v.ob[1] = entry->unkA;
				vtx->v.ob[2] = entry->unkC + deltaZ;
				vtx->v.flag = 0;
				vtx->v.tc[0] = 0;
				vtx->v.tc[1] = 0;
				vtx->v.cn[0] = entry->unkE;
				vtx->v.cn[1] = entry->unkF;
				vtx->v.cn[2] = entry->unk10;
				vtx->v.cn[3] = entry->unk11;

				D_8005BB34++;
				vtx = D_8005BB34;
				vtx->v.ob[0] = entry->unk8 - deltaX;
				vtx->v.ob[1] = entry->unkA;
				vtx->v.ob[2] = entry->unkC - deltaZ;
				vtx->v.flag = 0;
				vtx->v.tc[0] = 0;
				vtx->v.tc[1] = 0x800;
				vtx->v.cn[0] = entry->unkE;
				vtx->v.cn[1] = entry->unkF;
				vtx->v.cn[2] = entry->unk10;
				vtx->v.cn[3] = entry->unk11;

				D_8005BB34++;
				vtx = D_8005BB34;
				vtx->v.ob[0] = nextEntry->unk8 - deltaX;
				vtx->v.ob[1] = nextEntry->unkA;
				vtx->v.ob[2] = nextEntry->unkC - deltaZ;
				vtx->v.flag = 0;
				vtx->v.tc[0] = 0x800;
				vtx->v.tc[1] = 0x800;
				vtx->v.cn[0] = nextEntry->unkE;
				vtx->v.cn[1] = nextEntry->unkF;
				vtx->v.cn[2] = nextEntry->unk10;
				vtx->v.cn[3] = nextEntry->unk11;

				D_8005BB34++;
				vtx = D_8005BB34;
				vtx->v.ob[0] = nextEntry->unk8 + deltaX;
				vtx->v.ob[1] = nextEntry->unkA;
				vtx->v.ob[2] = nextEntry->unkC + deltaZ;
				vtx->v.flag = 0;
				vtx->v.tc[0] = 0x800;
				vtx->v.tc[1] = 0;
				vtx->v.cn[0] = nextEntry->unkE;
				vtx->v.cn[1] = nextEntry->unkF;
				vtx->v.cn[2] = nextEntry->unk10;
				vtx->v.cn[3] = nextEntry->unk11;

				D_8005BB34++;
				gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 8) & 0x1FFFFFFF), 8, 0);
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
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D6290_E5240.s")
#endif

void func_800D6A84_E5A34(u8 arg0)
{
  D_80153AE0[arg0].unk13 = 0;
  D_80153AE0[arg0].unk14 = 0;
  D_80153AE0[arg0].unk18 = ((s32 *) (&D_8013E2F4_14D2A4))[arg0];
  D_80153AE0[arg0].unk12 = ((u8 *) (&D_8013E2EC_14D29C))[arg0];
  D_80153AE0[arg0].unk1C = ((s32 *) (&D_8013E308_14D2B8))[arg0];
}

void func_800D6ADC_E5A8C(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	u8 temp_a0;
	s16 temp_v0_2;
	Unk80154318Entry *entry;

	if (D_80153AB0 == 1) {
		osSyncPrintf(&D_801438DC_15288C); // Can't create a nuke - one already in progress
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

// CURRENT(675)
#ifdef NON_MATCHING
void func_800D6C18_E5BC8(s16 arg0, u8 arg1) {
	Unk80153AE0Entry *entry;
	s16 *data;
	u8 phase;

	(void)arg0;
	entry = &D_80153AE0[arg1];
	if ((phase = entry->unk13) == 0) {
		data = (s16 *)entry->unk18;
		entry->unk0 = data[0];
		entry->unk2 = data[1];
		entry->unk4 = data[2];
		((s16 *)entry)[3] = 0;
		entry->unk8 = 0;
		entry->unkA = 0;
		entry->unkC = data[6];
		((s16 *)entry)[7] = data[7];
		entry->unk10 = data[8];
		phase++;
		entry->unk13 = phase;
		entry->unk14 = 0;
		entry->unk18 = (s32)(data + 10);
		return;
	}

	data = (s16 *)entry->unk18;
	if (entry->unk14 == ((u8 *)data)[0x12]) {
		phase++;
		entry->unk13 = phase;
		entry->unk14 = 0;
		entry->unk18 = (s32)((u8 *)data + 0x14);
	}

	if ((u8)phase < entry->unk12) {
		data = (s16 *)entry->unk18;
		entry->unk0 += data[0] / ((u8 *)data)[0x12];
		entry->unk2 += data[1] / ((u8 *)data)[0x12];
		entry->unk4 += data[2] / ((u8 *)data)[0x12];
		entry->unk8 = (u16)((((u16 *)data)[4] / ((u8 *)data)[0x12]) + (u16)entry->unk8);
		entry->unkC += data[6] / ((u8 *)data)[0x12];
		((s16 *)entry)[7] += data[7] / ((u8 *)data)[0x12];
		entry->unk10 += data[8] / ((u8 *)data)[0x12];
		entry->unk14++;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D6C18_E5BC8.s")
#endif

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

// CURRENT(?)
#ifdef NON_MATCHING
void func_800D702C_E5FDC(s16 arg0, s32 arg1) {
	s16 sp54;
	s16 sp56;
	s16 sp58;
	s16 pad5A;
	u16 sp5C;
	s16 sp5E;
	s16 sp60;
	s16 pad62;
	s16 sp64;
	s16 sp66;
	s16 sp68;
	Unk80153AE0Entry *sp24;
	s16 temp_v0;
	s32 temp_t8;
	s32 var_a1;
	u8 temp_v0_2;
	u8 temp_v0_3;
	Unk80153AE0Entry *temp_t1;
	Unk80154318Entry *temp_v1;

	temp_t8 = arg1 & 0xFF;
	temp_t1 = &D_80153AE0[temp_t8];
	temp_v1 = &D_80154318[arg0];
	temp_v0 = *(u16 *)&temp_v1->unk8;
	sp54 = temp_t1->unkC * temp_v0;
	sp5C = *(u16 *)&temp_t1->unk8;
	sp5E = 0;
	sp60 = 0;
	sp56 = temp_t1->unkE * temp_v0;
	sp58 = temp_t1->unk10 * temp_v0;
	sp64 = (temp_v0 * temp_t1->unk0) + temp_v1->unk8;
	sp66 = (temp_v0 * temp_t1->unk2) + temp_v1->unkA;
	sp68 = (temp_v0 * temp_t1->unk4) + temp_v1->unkC;
	if ((temp_t8 == 3) || (temp_t8 == 4)) {
		temp_v0_2 = temp_t1->unkE;
		if (temp_v0_2 < 0xE) {
			var_a1 = 0xFF;
		} else if (temp_v0_2 >= 0x15) {
			var_a1 = 0;
		} else {
			var_a1 = (0x2F4 - (temp_v0_2 * 0x24)) & 0xFF;
		}
	} else {
		temp_v0_3 = temp_t1->unkE;
		if (temp_v0_3 < 0x28) {
			var_a1 = 0xFF;
		} else {
			var_a1 = ((temp_v0_3 * -0x11) + 0x3A7) & 0xFF;
		}
	}
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0, 0, var_a1);
	gDPPipeSync(D_8005BB2C++);
	sp24 = temp_t1;
	func_800039D0_45D0((Unk80052B40 *)&sp64, (Unk80052B40 *)&sp5C, (Unk80052B40 *)&sp54, D_8005BB38);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gSPDisplayList(D_8005BB2C++, sp24->unk1C);
	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D702C_E5FDC.s")
#endif

// CURRENT(8632)
#ifdef NON_MATCHING
void func_800D7284_E6234(u8 arg0) {
	volatile s16 sp8E;
	s32 sp88_pad0;
	s32 sp84_pad1;
	f32 sp88;
	u8 sp6A;
	u8 sp69;
	u8 sp68;
	s16 sp66;
	s16 sp64;
	Unk80154318Entry *sp2C;
	Unk80154318Sub *sp28;
	f32 temp_f0;
	f32 temp_f14;
	f32 temp_f2;
	s32 temp_a0;
	s32 var_v0;
	u8 temp_v0_13;
	u8 temp_v0_14;
	Unk80154318Sub *var_v1;

	sp8E = D_80154088[arg0].unk6;
	sp2C = &D_80154318[sp8E];
	if (func_800B93AC_C835C(sp2C->unk8, sp2C->unkC, (u16) sp2C->unk2, (s16) (D_80047954 * 4.0f), (s32) (D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) {
		gDPPipeSync(D_8005BB2C++);
		gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)D_100B0F0 & 0x1FFFFFFF));
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);
		gDPPipeSync(D_8005BB2C++);
		func_800D702C_E5FDC(sp8E, 0);
		func_800D702C_E5FDC(sp8E, 1);
		func_800D702C_E5FDC(sp8E, 2);
		func_800D702C_E5FDC(sp8E, 3);
		func_800D702C_E5FDC(sp8E, 4);
		sp2C = &D_80154318[sp8E];
		sp64 = sp2C->unk8;
		sp66 = sp2C->unkC;
		sp68 = 0xFF;
		sp69 = 0xFF;
		sp6A = 0xFF;
		temp_v0_13 = sp2C->unkE;
		var_v1 = (Unk80154318Sub *)&sp2C->unk8;
		if (temp_v0_13 < 4) {
			sp28 = var_v1;
			func_800B2354_C1304(&sp64, &sp68, 0x200, (s16) ((temp_v0_13 << 9) + 0x200));
			var_v1 = sp28;
		} else if (temp_v0_13 < 9) {
			sp28 = var_v1;
			func_800B2354_C1304(&sp64, &sp68, 0x100, (s16) (0x1300 - (temp_v0_13 << 9)));
			var_v1 = sp28;
		}
		sp28 = var_v1;
		sp88 = (f32) var_v1->unk4;
		temp_f0 = (f32) var_v1->unk0 - (D_80153BA0.x * 4.0f);
		temp_f2 = (f32) var_v1->unk2 - (D_80153BA0.y * 4.0f);
		temp_f14 = sp88 - (D_80153BA0.z * 4.0f);
		sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f14 * temp_f14));
		temp_v0_14 = var_v1->unk6;
		if (temp_v0_14 < 0x51) {
			temp_a0 = 0xFF - (temp_v0_14 * 2);
			var_v0 = temp_a0;
			if (temp_a0 < 0) {
				var_v0 = 0;
			}
			sp28 = var_v1;
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

void func_800D76A8_E6658(s16 arg0) {
	if (arg0 == -3) {
		osSyncPrintf(&D_8014390C_1528BC); // DYNAMIC EFFECTS : Tried to kill minin photon effect which does not exist!
		return;
	}
	func_800C1A4C_D09FC(arg0, 0x11, 1);
}

void func_800D76F4_E66A4(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	u8 *temp_v1;
	s16 *temp_v0;

	if ((arg3 == -3) || (temp_v1 = (u8 *)&D_80154318[arg3], temp_v0 = (s16 *)(temp_v1 + 8), ((*temp_v1 & 1) == 0))) {
		osSyncPrintf(&D_80143958_152908, arg1, arg2); // DYNAMIC EFFECTS : Tried to update mini photon effect which does not exist!
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

// CURRENT(950)
#ifdef NON_MATCHING
void func_800D7870_E6820(void) {
	s16 idx;
	Unk80154318Entry *entry;
	Unk80154318Sub *sub;
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

	while (1) {
		gDPPipeSync(D_8005BB2C++);
		entry = &D_80154318[idx];

		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)(D_100AEF0 + (entry->unkE << 7)) & 0x1FFFFFFF));
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

		sub = (Unk80154318Sub *)&entry->unk8;
		scale = (f32)entry->unk2;
		off0 = scale * D_80153AB8.x;
		off1 = scale * D_80153AB8.y;
		off2 = scale * D_80153AB8.z;
		off3 = scale * ((f32 *)&D_80153AB8)[3];
		off4 = scale * ((f32 *)&D_80153AB8)[4];
		off5 = scale * ((f32 *)&D_80153AB8)[5];

		D_8005BB34->v.ob[0] = (s16)(s32)((f32)sub->unk0 + off0);
		D_8005BB34->v.ob[1] = (s16)(s32)((f32)sub->unk2 + off1);
		D_8005BB34->v.ob[2] = (s16)(s32)((f32)sub->unk4 + off2);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = 0xFF;
		D_8005BB34->v.cn[1] = 0x9E;
		D_8005BB34->v.cn[2] = 0x16;
		D_8005BB34->v.cn[3] = 0xFF;

		D_8005BB34++;
		D_8005BB34->v.ob[0] = (s16)(s32)((f32)sub->unk0 + off3);
		D_8005BB34->v.ob[1] = (s16)(s32)((f32)sub->unk2 + off4);
		D_8005BB34->v.ob[2] = (s16)(s32)((f32)sub->unk4 + off5);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x400;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = 0xFF;
		D_8005BB34->v.cn[1] = 0x9E;
		D_8005BB34->v.cn[2] = 0x16;
		D_8005BB34->v.cn[3] = 0xFF;

		D_8005BB34++;
		D_8005BB34->v.ob[0] = (s16)(s32)((f32)sub->unk0 - off0);
		D_8005BB34->v.ob[1] = (s16)(s32)((f32)sub->unk2 - off1);
		D_8005BB34->v.ob[2] = (s16)(s32)((f32)sub->unk4 - off2);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x400;
		D_8005BB34->v.tc[1] = 0x400;
		D_8005BB34->v.cn[0] = 0xFF;
		D_8005BB34->v.cn[1] = 0x9E;
		D_8005BB34->v.cn[2] = 0x16;
		D_8005BB34->v.cn[3] = 0xFF;

		D_8005BB34++;
		D_8005BB34->v.ob[0] = (s16)(s32)((f32)sub->unk0 - off3);
		D_8005BB34->v.ob[1] = (s16)(s32)((f32)sub->unk2 - off4);
		D_8005BB34->v.ob[2] = (s16)(s32)((f32)sub->unk4 - off5);
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0x400;
		D_8005BB34->v.cn[0] = 0xFF;
		D_8005BB34->v.cn[1] = 0x9E;
		D_8005BB34->v.cn[2] = 0x16;
		D_8005BB34->v.cn[3] = 0xFF;

		D_8005BB34++;
		D_8005BB34->v.ob[0] = (s16)(s32)(f32)sub->unk0;
		D_8005BB34->v.ob[1] = (s16)(s32)(f32)sub->unk2;
		D_8005BB34->v.ob[2] = (s16)(s32)(f32)sub->unk4;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x200;
		D_8005BB34->v.tc[1] = 0x200;
		D_8005BB34->v.cn[0] = 0xFF;
		D_8005BB34->v.cn[1] = 0xFF;
		D_8005BB34->v.cn[2] = 0xFF;
		D_8005BB34->v.cn[3] = 0xFF;

		D_8005BB34++;
		gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 5) & 0x1FFFFFFF), 5, 0);
		gSP2Triangles(D_8005BB2C++, 0, 1, 4, 0, 4, 1, 2, 0);
		gSP2Triangles(D_8005BB2C++, 4, 2, 3, 0, 0, 3, 4, 0);

		D_80156EDA += 5;
		idx = D_80154318[idx].unk4;
		if ((idx == -5) || (idx == -6)) {
			break;
		}
	}
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
	*((s16 *) (&D_80154318[temp_v0].unkE)) = (s16) (arg0 + 5);
	*((s16 *) (&D_80154318[temp_v0].unk10)) = (s16) (arg1 + 1);
	D_80154318[temp_v0].unk12 = arg2 + 5;
	D_80154318[temp_v0].unk14 = func_800C2274_D1224(arg0, arg1, arg2, 0);
  }
  return temp_v0;
}

void func_800D7FB4_E6F64(s16 arg0) {
	if (arg0 == -3) {
		osSyncPrintf(&D_801439A4_152954); // DYNAMIC EFFECTS : Tried to kill fire ball effect which does not exist!
		return;
	}
	func_800C1A4C_D09FC(arg0, 0x12, 1);
}

// CURRENT(604)
#ifdef NON_MATCHING
void func_800D8000_E6FB0(s32 arg0, s16 arg1, s16 arg2, s16 arg3) {
	u8 *temp_a0;
	s16 *temp_v0;
	s16 *temp_v1;

	if ((arg3 == -3) || (temp_a0 = (u8 *)&D_80154318[arg3], temp_v0 = (s16 *)(temp_a0 + 8), ((*temp_a0 & 1) == 0))) {
		osSyncPrintf(&D_801439EC_15299C); // DYNAMIC EFFECTS : Tried to update fire ball effect which does not exist!
		return;
	}

	temp_v1 = (s16 *)(temp_a0 + 0xE);
	temp_v1[0] = temp_v0[0];
	temp_v1[1] = temp_v0[1];
	temp_v1[2] = temp_v0[2];
	temp_v0[1] = arg1;
	temp_v0[2] = arg2;
	temp_v0[0] = (s16) arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D8000_E6FB0.s")
#endif

// CURRENT(250)
#ifdef NON_MATCHING
void func_800D80B4_E7064(void) {
	s16 s1;

	s1 = D_801542D6;
	if (s1 == -5 || s1 == -6) {
		func_800C1418_D03C8(0x12, 1);
		return;
	}
	while (s1 != -5 && s1 != -6) {
		func_800C1ECC_D0E7C(D_80154318[s1].unk8, D_80154318[s1].unkA, D_80154318[s1].unkC, D_80154318[s1].unk14, 0);
		func_80137368_146318(D_80154318[s1].unk8, D_80154318[s1].unkA, D_80154318[s1].unkC, 0xA, s1);
		s1 = D_80154318[s1].unk4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D80B4_E7064.s")
#endif

// CURRENT(47959)
#ifdef NON_MATCHING
void func_800D8190_E7140(void) {
	typedef struct {
		/* 0x00 */ u8 unk0;
		/* 0x01 */ u8 unk1;
		/* 0x02 */ s16 unk2;
		/* 0x04 */ s16 unk4;
		/* 0x06 */ s16 unk6;
		/* 0x08 */ s16 unk8;
		/* 0x0A */ s16 unkA;
		/* 0x0C */ s16 unkC;
		/* 0x0E */ s16 unkE;
		/* 0x10 */ s16 unk10;
		/* 0x12 */ s16 unk12;
		/* 0x14 */ u8 unk14;
		/* 0x15 */ u8 unk15;
		/* 0x16 */ u8 pad16[6];
	} Unk80154318Entry14;

	Unk80154318Entry14 *entry;
	Vec3f direction;
	s16 current;
	s16 size;
	s16 x0;
	s16 y0;
	s16 z0;
	s16 x1;
	s16 y1;
	s16 z1;
	s16 x2;
	s16 y2;
	s16 z2;
	s16 radius2;
	s16 radius3;
	s16 halfZ;
	s16 halfX;
	s16 tipX;
	s16 tipY;
	s16 tipZ;

	current = D_801542D6;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1,
		(void *)((u32)(&D_1007A70[(func_800038E0_44E0() % 16) << 9]) & 0x1FFFFFFF));
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
		entry = (Unk80154318Entry14 *)&D_80154318[current];
		direction.x = entry->unk8 - entry->unkE;
		direction.y = entry->unkA - entry->unk10;
		direction.z = entry->unkC - entry->unk12;

		if ((direction.x == 0.0f) && (direction.y == 0.0f) && (direction.z == 0.0f)) {
			current = entry->unk4;
			continue;
		}

		func_800C1024_CFFD4(&direction, &direction);
		size = entry->unk2;
		func_800C1128_D00D8((f32)size, &direction, &direction);

		halfZ = (s16)(direction.z / 2.0f);
		halfX = (s16)(direction.x / 2.0f);
		tipX = entry->unk8 + (s16)(direction.x * 3.0f);
		tipY = entry->unkA + (s16)(direction.y * 3.0f);
		tipZ = entry->unkC + (s16)(direction.z * 3.0f);
		radius2 = size / 2;

		D_8005BB34->v.ob[0] = entry->unk8 + halfZ;
		D_8005BB34->v.ob[1] = entry->unkA + radius2;
		D_8005BB34->v.ob[2] = entry->unkC - halfX;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = 0;
		D_8005BB34->v.cn[1] = 0;
		D_8005BB34->v.cn[2] = 0;
		D_8005BB34->v.cn[3] = D_8013E31C_14D2CC[3];
		D_8005BB34++;

		D_8005BB34->v.ob[0] = entry->unk8 - halfZ;
		D_8005BB34->v.ob[1] = entry->unkA - radius2;
		D_8005BB34->v.ob[2] = entry->unkC + halfX;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x800;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = 0;
		D_8005BB34->v.cn[1] = 0;
		D_8005BB34->v.cn[2] = 0;
		D_8005BB34->v.cn[3] = D_8013E31C_14D2CC[3];
		D_8005BB34++;

		x0 = tipX + halfZ;
		y0 = tipY + radius2;
		z0 = tipZ - halfX;
		D_8005BB34->v.ob[0] = x0;
		D_8005BB34->v.ob[1] = y0;
		D_8005BB34->v.ob[2] = z0;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0x800;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[0];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[1];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[2];
		D_8005BB34->v.cn[3] = 0xFF;
		D_8005BB34++;

		x1 = tipX - halfZ;
		y1 = tipY - radius2;
		z1 = tipZ + halfX;
		D_8005BB34->v.ob[0] = x1;
		D_8005BB34->v.ob[1] = y1;
		D_8005BB34->v.ob[2] = z1;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x800;
		D_8005BB34->v.tc[1] = 0x800;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[0];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[1];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[2];
		D_8005BB34->v.cn[3] = 0xFF;
		D_8005BB34++;

		gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
		gSP2Triangles(D_8005BB2C++, 0, 1, 2, 0, 2, 3, 1, 0);
		gDPPipeSync(D_8005BB2C++);

		D_8005BB34->v.ob[0] = entry->unk8 + halfZ;
		D_8005BB34->v.ob[1] = entry->unkA - radius2;
		D_8005BB34->v.ob[2] = entry->unkC - halfX;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = 0;
		D_8005BB34->v.cn[1] = 0;
		D_8005BB34->v.cn[2] = 0;
		D_8005BB34->v.cn[3] = D_8013E31C_14D2CC[3];
		D_8005BB34++;

		D_8005BB34->v.ob[0] = entry->unk8 - halfZ;
		D_8005BB34->v.ob[1] = entry->unkA + radius2;
		D_8005BB34->v.ob[2] = entry->unkC + halfX;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x800;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = 0;
		D_8005BB34->v.cn[1] = 0;
		D_8005BB34->v.cn[2] = 0;
		D_8005BB34->v.cn[3] = D_8013E31C_14D2CC[3];
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

		gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
		gSP2Triangles(D_8005BB2C++, 0, 1, 2, 0, 2, 3, 1, 0);

		x2 = entry->unk8 + (s16)(direction.x * 2.5);
		y2 = entry->unkA + (s16)(direction.y * 2.5);
		z2 = entry->unkC + (s16)(direction.z * 2.5);
		halfZ = (s16)(direction.z / 3.0f);
		halfX = (s16)(direction.x / 3.0f);
		radius3 = size / 3;

		D_8005BB34->v.ob[0] = x2 + halfZ;
		D_8005BB34->v.ob[1] = y2 + radius3;
		D_8005BB34->v.ob[2] = z2 - halfX;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0x800;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[0];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[1];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[2];
		D_8005BB34->v.cn[3] = 0xD7;
		D_8005BB34++;

		D_8005BB34->v.ob[0] = x2 + halfZ;
		D_8005BB34->v.ob[1] = y2 - radius3;
		D_8005BB34->v.ob[2] = z2 - halfX;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x800;
		D_8005BB34->v.tc[1] = 0x800;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[0];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[1];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[2];
		D_8005BB34->v.cn[3] = 0xD7;
		D_8005BB34++;

		D_8005BB34->v.ob[0] = x2 - halfZ;
		D_8005BB34->v.ob[1] = y2 + radius3;
		D_8005BB34->v.ob[2] = z2 + halfX;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0x800;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[0];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[1];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[2];
		D_8005BB34->v.cn[3] = 0xD7;
		D_8005BB34++;

		D_8005BB34->v.ob[0] = x2 - halfZ;
		D_8005BB34->v.ob[1] = y2 - radius3;
		D_8005BB34->v.ob[2] = z2 + halfX;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x800;
		D_8005BB34->v.tc[1] = 0x800;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[0];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[1];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[2];
		D_8005BB34->v.cn[3] = 0xD7;
		D_8005BB34++;

		D_8005BB34->v.ob[0] = x2;
		D_8005BB34->v.ob[1] = y2;
		D_8005BB34->v.ob[2] = z2;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x400;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = D_8013E31C_14D2CC[0];
		D_8005BB34->v.cn[1] = D_8013E31C_14D2CC[1];
		D_8005BB34->v.cn[2] = D_8013E31C_14D2CC[2];
		D_8005BB34->v.cn[3] = 0xFF;
		D_8005BB34++;

		gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 5) & 0x1FFFFFFF), 5, 0);
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

// CURRENT(1123)
#ifdef NON_MATCHING
void func_800D90A4_E8054(void) {
	s16 curr;
	s16 next;
	Unk80154318Entry *entry;
	Unk80154318Sub *entrySub;

	curr = D_801542E2;
	if ((curr == -5) || (curr == -6)) {
		func_800C1418_D03C8(0x13, 1);
		return;
	}
	while ((curr != -5) && (curr != -6)) {
		entry = &D_80154318[curr];
		entrySub = (Unk80154318Sub *)&entry->unk8;
		entrySub->unk0 = entrySub->unk0 + entrySub->unk6 + (func_800038E0_44E0() % 5) - 2;
		entrySub->unk2 = entrySub->unk2 + entrySub->unk7 + (func_800038E0_44E0() % 5) - 2;
		entrySub->unk4 = entrySub->unk4 + entrySub->unk8 + (func_800038E0_44E0() % 5) - 2;
		if (entrySub->unk2 >= D_80222A70) {
			next = entry->unk4;
			func_800C1A4C_D09FC(curr, 0x13, 1);
			curr = next;
		} else {
			curr = entry->unk4;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D90A4_E8054.s")
#endif

void func_800D9294_E8244(void) {
	s16 var_s2;

	var_s2 = D_801542E2;

	gDPPipeSync(D_8005BB2C++);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xF0, 0xF5, 0xFF, 0xFF);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, ((u32)D_100ACF0 & 0x1FFFFFFF));
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
 temp_v1 = &D_80154318[new_var2 = D_80154318[arg0].unk4]; new_var = arg2; new_var2 = new_var;
  *(s16*)&temp_v1->unkE = arg1;
  *(s16*)&temp_v1->unk10 = new_var2;
  (*temp_v1).unk12 = arg3;
}

void func_800D9754_E8704(s16 arg0) {
	if (arg0 != -3) {
		func_800C1E24_D0DD4(arg0, 0x14, 1);
	}
}

// CURRENT(1924)
#ifdef NON_MATCHING
void func_800D978C_E873C(void) {
	s16 var_v1;
	Unk80154318Entry *entry;
	Unk80154318Entry *linkedEntry;
	Unk80052B40 *spatial;

	var_v1 = D_801542EE;
	if ((var_v1 != -6) && (var_v1 != -5)) {
		gSPDisplayList(D_8005BB2C++, D_80031230);
		gSPDisplayList(D_8005BB2C++, D_800311D0);
		gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
		gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK | G_LIGHTING);

		if ((var_v1 != -6) && (var_v1 != -5)) {
			do {
				entry = &D_80154318[var_v1];
				linkedEntry = &D_80154318[entry->unk4];
				if (func_800B93AC_C835C(linkedEntry->unk8, linkedEntry->unkC, 0x100,
										(s16)(D_80047954 * 4.0f), (s32)(D_8004795C * 4.0f),
										0x4000 - D_80047950) != 0) {
					spatial = (Unk80052B40 *)&linkedEntry->unk8;
					func_800039D0_45D0(spatial, (Unk80052B40 *)((u8 *)spatial + 6), 0, D_8005BB38);
					gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
					D_8005BB38 += 0x40;
					gSPDisplayList(D_8005BB2C++, *(Gfx **)&entry->unk8);
					gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
				}
				var_v1 = linkedEntry->unk4;
			} while ((var_v1 != -6) && (var_v1 != -5));
			}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D978C_E873C.s")
#endif

s32 func_800D99F4_E89A4(void *arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
	s16 temp_v0;
	Unk80154318Entry *temp_v1;

	osSyncPrintf(&D_80143A38_1529E8); // Create group effect
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

// CURRENT(553)
#ifdef NON_MATCHING
void func_800D9B54_E8B04(void) {
	s16 temp_s2;
	s16 var_s1;
	s16 temp_a1;
	s16 temp_v1;
	s16 *ptr;

	var_s1 = D_801542FA;
	if (var_s1 == -5 || var_s1 == -6) {
		func_800C1418_D03C8(0x15, 1);
		return;
	}
	if (var_s1 != -5 && var_s1 != -6) {
		do {
			temp_a1 = D_80154318[var_s1].unk4;
			temp_s2 = D_80154318[temp_a1].unk4;
			(*(void (**)(s16, s16))&D_80154318[var_s1].unk8)(var_s1, temp_a1);
			ptr = (s16 *)((s8 *)&D_80154318[var_s1].unk8 + 4);
			temp_v1 = *ptr;
			if (temp_v1 != 0) {
				*ptr = temp_v1 - 1;
			} else {
				func_800C1E24_D0DD4(var_s1, 0x15, 1);
			}
			var_s1 = temp_s2;
		} while (temp_s2 != -5 && temp_s2 != -6);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D9B54_E8B04.s")
#endif

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

// CURRENT(1905)
#ifdef NON_MATCHING
void func_800D9E38_E8DE8(s16 arg0, s16 arg1) {
	Unk80154318Entry *entry;
	s16 *entryData;
	VehicleInstance *vehicle;
	u8 effectId;

	entry = &D_80154318[arg0];
	entryData = (s16 *)&entry->unk8;
	vehicle = &vehicleInstances[D_80154318[arg1].unk8];

	entryData[4] = vehicle->unk2 + 0x3C;
	entryData[3] = vehicle->unk0;
	entryData[5] = vehicle->unk4;

	if ((entryData[2] % 3) == 0) {
		effectId = func_800DEE5C_EDE0C(entryData[3], entryData[4], entryData[5], 0x32, 0x18 - entryData[2]);
		func_800DDD90_ECD40(effectId, ((func_800038E0_44E0() & 0x7F) + 0x80) & 0xFF, 0, 0xFF);
		func_80135D44_144CF4(entryData[3], entryData[4], entryData[5], (f32)(entryData[2] >> 1));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D9E38_E8DE8.s")
#endif

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

// CURRENT(878)
#ifdef NON_MATCHING
void func_800D9FF8_E8FA8(s16 arg0, s16 arg1) {
	typedef struct {
		s32 w0;
		s32 w1;
		s32 w2;
	} CopyWords;
	CopyWords sp4C;
	Unk80154318Entry *entry0;
	Unk80154318Entry *entry1;
	s16 *entryData0;
	s16 *entryData1;

	sp4C = *(CopyWords *)D_8013E324_14D2D4;

	entry0 = &D_80154318[arg1];
	entryData0 = (s16 *)&entry0->unk8;

	if (entryData0[0] != -3) {
		entry1 = &D_80154318[arg0];
		entryData1 = (s16 *)&entry1->unk8;
		func_800D9704_E86B4(entryData0[0], (s16)(entryData1[2] << 11), 0, 0);
		func_800D96B4_E8664(entryData0[0], entryData1[3], entryData1[4], entryData1[5]);
	}

	entry1 = &D_80154318[arg0];
	entryData1 = (s16 *)&entry1->unk8;
	if (entryData0[1] != -3) {
		func_800D0F5C_DFF0C(entryData0[1], entryData1[3], entryData1[4] + 0x1E, entryData1[5]);
		func_800D0FE0_DFF90(entryData0[1], (u16)((((f64)(f32)sins((entryData1[2] << 12) & 0xFFFF) / 32768.0) * 40.0) + 100.0));
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D9FF8_E8FA8.s")
#endif

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

#ifdef NON_MATCHING
void func_800DA3A8_E9358(s16 arg0, s16 arg1) {
	Unk80154318Entry *sp2C;
	Unk80154318Entry *sp28;

	sp2C = &D_80154318[arg0];
	sp28 = &D_80154318[arg1];
	func_800E52E8_F4298(sp2C->unkE, sp2C->unk10, sp2C->unk12, sp28->unk8, (s32) sp28->unkA, (s32) sp28->unkC, (s32) sp28->unk14);
	(&sp28->unk8)[0] = (&sp2C->unk8)[3];
	(&sp28->unk8)[1] = (&sp2C->unk8)[4];
	(&sp28->unk8)[2] = (&sp2C->unk8)[5];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DA3A8_E9358.s")
#endif

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

// CURRENT(2153)
#ifdef NON_MATCHING
void func_800DA510_E94C0(s16 arg0, s16 arg1) {
	Unk80154318Entry *src;
	Unk80154318Entry *dst;
	Vec3f dir;
	s16 *srcPos;
	s16 effect;

	src = &D_80154318[arg0];
	dst = &D_80154318[arg1];
	srcPos = &src->unk8;

	dir.x = srcPos[3] - dst->unk8;
	dir.y = srcPos[4] - dst->unkA;
	dir.z = srcPos[5] - dst->unkC;

	if ((dir.x != 0.0f) || (dir.y != 0.0f) || (dir.z != 0.0f)) {
		func_800C1024_CFFD4(&dir, &dir);
		effect = func_800D16BC_E066C(srcPos[3], srcPos[4], srcPos[5], (s16)((f64)srcPos[3] + (400.0 * (f64)dir.x)),
			(s32)((f64)srcPos[4] + (400.0 * (f64)dir.y)),
			(s32)((f64)srcPos[5] + (400.0 * (f64)dir.z)), 1);
		if (effect != 0xFB) {
			func_800D19DC_E098C(effect & 0xFF, dst->unkF);
		}
		dst->unk8 = srcPos[3];
		dst->unkA = srcPos[4];
		dst->unkC = srcPos[5];
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

// CURRENT(45)
#ifdef NON_MATCHING
void func_800DA7CC_E977C(s16 arg0, s16 arg1) {
	u8 *entryUnk8Bytes;
	s16 value;

	entryUnk8Bytes = (u8 *)&D_80154318[arg1].unk8;
	if (*(s16 *)entryUnk8Bytes != 0xFB) {
		func_800DDD30_ECCE0(entryUnk8Bytes[1], D_80052B34->unk0, (s16)(D_80052B34->unk2 + 0x50), D_80052B34->unk4);
		value = D_80154318[arg0].unkC;
		func_800DDDE4_ECD94(entryUnk8Bytes[1], (value * 3) & 0xFF);
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DA7CC_E977C.s")
#endif

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

// CURRENT(3180)
#ifdef NON_MATCHING
void func_800DAA1C_E99CC(s32 arg0) {
	s32 hpLimit;
	s16 effectId;
	s16 stopA;
	s16 stopB;
	u8 buildingId;
	u32 buildingFlags;
	BuildingInstance *building;
	Unk80154318Entry *effect;

	buildingId = arg0 & 0xFF;
	building = &buildingInstances[buildingId];
	hpLimit = buildingSpecs[building->buildingType].unk19 >> 2;
	buildingFlags = building->unk8;
	effectId = D_80154282;

	if (((buildingFlags >> 12) & 0x10) != 0) {
		stopA = -5;
		if (effectId != stopA) {
			stopB = -6;
			if (effectId != stopB) {
				while (1) {
					effect = &D_80154318[effectId];
					if (buildingId == *(s16 *) &effect->unk10) {
						if (effect->unkE >= 0xF8) {
							func_800C1E24_D0DD4((s16) effectId, 0xB, 1);
							effectId = -5;
							buildingFlags = building->unk8;
							building->hitPoints = hpLimit;
							building->unk8 = ((((buildingFlags >> 12) & -0x11) ^ (buildingFlags >> 12)) << 12) ^ buildingFlags;
						} else {
							effect->unkE += 6;
							effectId = -5;
						}
					} else {
						effectId = D_80154318[effect->unk4].unk4;
					}

					if ((effectId == stopA) || (effectId == stopB)) {
						break;
					}
				}
			}
		}

		if ((D_80052A8C & 7) == 0) {
			if (hpLimit >= (s8) building->hitPoints) {
				building->hitPoints++;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DAA1C_E99CC.s")
#endif

/* CURRENT(2700) */
#ifdef NON_MATCHING
void func_800DABBC_E9B6C(void) {
	s32 i;
	s32 temp;
	u8 type;
	s32 tmp2;

	for (i = 0; i < 0x1E; i = (i + 1) & 0xFF) {
		if ((type = D_80154088[i].unk0) < 10) {
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

		if (type == 0xFA) {
			continue;
		}

		temp = (type < 10) ? 0 : 1;
		if (temp != 0) {
			osSyncPrintf(D_80143A50_152A00);
		} else {
			osSyncPrintf(D_80143A94_152A44);
		}
	}

	i = 0;
	while (1) {
		if ((type = D_801541F8[i].unk0) < 0x20) {
			switch (type - 10) {
				case 0:
					func_800C3E2C_D2DDC();
					goto next2;

				case 1:
					func_800C4AA0_D3A50();
					goto next2;

				case 2:
					func_800C6558_D5508();
					goto next2;

				case 3:
					func_800C8294_D7244();
					goto next2;

				case 4:
					func_800C9668_D8618();
					goto next2;

				case 5:
					func_800CB394_DA344();
					goto next2;

				case 6:
					func_800CBE98_DAE48();
					goto next2;

				case 7:
					func_800CCB60_DBB10();
					goto next2;

				case 8:
					func_800CDBF4_DCBA4();
					goto next2;

				case 9:
					func_800CF070_DE020();
					goto next2;

				case 10:
					func_800CF948_DE8F8();
					goto next2;

				case 11:
					func_800D0C00_DFBB0();
					goto next2;

				case 12:
					func_800D25D0_E1580();
					goto next2;

				case 13:
					func_800D36EC_E269C();
					goto next2;

				case 14:
					func_800D3D40_E2CF0();
					goto next2;

				case 15:
					func_800D4B44_E3AF4();
					goto next2;

				case 16:
					func_800D5684_E4634();
					goto next2;

				case 17:
					func_800D7790_E6740();
					goto next2;

				case 18:
					func_800D80B4_E7064();
					goto next2;

				case 19:
					func_800D90A4_E8054();
					goto next2;

				case 20:
					func_800D95D0_E8580();
					goto next2;

				case 21:
					func_800D9B54_E8B04();
					goto next2;

				default:
					break;
			}
		}

		if (type == 0xFA) {
			goto next2;
		}

		if ((i < 10) && (i >= 0)) {
			osSyncPrintf(D_80143AD4_152A84, i);
		} else {
			osSyncPrintf(D_80143B18_152AC8);
		}

	next2:
		i = (i + 1) & 0xFF;
		if (i >= 0x16) {
			break;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DABBC_E9B6C.s")
#endif

// CURRENT(1262)
#ifdef NON_MATCHING
void func_800DAF24_E9ED4(u8 arg0) {
	u8 i;
	u8 count;
	Unk801541F8Entry *entry;

	entry = &D_80154088[arg0];
	for (i = 0; i < count; i++) {
		if (entry->unk4 < 0x96) {
			func_800CA1B0_D9160(arg0);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DAF24_E9ED4.s")
#endif

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
	gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
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
	gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
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
	gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
}

/* CURRENT(2775) */
#ifdef NON_MATCHING
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
	D_8005BB34->v.tc[0] = (s16)(D_80153BCD << 6);
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
	D_8005BB34->v.tc[0] = (s16)(D_80153BCD << 6);
	D_8005BB34->v.tc[1] = (s16)(D_80153BCE << 6);
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
	D_8005BB34->v.tc[1] = (s16)(D_80153BCE << 6);
	D_8005BB34->v.cn[0] = ((u8 *)D_80153BC4)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_80153BC4)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_80153BC4)[2];
	D_8005BB34->v.cn[3] = D_80153BCC;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DBA9C_EAA4C.s")
#endif

#ifdef NON_MATCHING
// CURRENT(2840)
void func_800DBE20_EADD0(void) {
	f32 distances[0x1E];
	f32 negOne;
	f32 negTwo;
	f32 four;
	u8 i;
	u8 backPos;

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
		} else if (effect->unk0 == 0) {
			Unk80154318Entry *unit;
			f32 dx;
			f32 dz;

			unit = &D_80154318[effect->unkA];
			dx = (f32)unit->unk8 - (D_80153BA0.x * four);
			dz = (f32)unit->unkC - (D_80153BA0.z * four);
			distances[i] = sqrtf((dx * dx) + (dz * dz));
		} else if (effect->unk0 == 1) {
			Unk80154318Entry *unit;
			f32 dx;
			f32 dz;

			unit = &D_80154318[effect->unkA];
			dx = (f32)unit->unk8 - (D_80153BA0.x * four);
			dz = (f32)unit->unkC - (D_80153BA0.z * four);
			distances[i] = sqrtf((dx * dx) + (dz * dz));
		} else if (effect->unk0 == 5) {
			Unk80154318Entry *unit;
			f32 dx;
			f32 dz;

			unit = &D_80154318[effect->unk6];
			dx = (f32)unit->unk8 - (D_80153BA0.x * four);
			dz = (f32)unit->unkC - (D_80153BA0.z * four);
			distances[i] = sqrtf((dx * dx) + (dz * dz));
		} else {
			osSyncPrintf(&D_80143B58_152B08);
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

				slot = D_80157540[pos];
				if (slot == 0xFE) {
					D_80157540[pos] = i;
					pos = 0x1E;
				} else if (distances[slot] < distance) {
					if (pos < backPos) {
						u8 end;

						for (end = backPos; pos < end; end--) {
							D_80157540[end] = D_80157540[end - 1];
						}
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
#ifdef NON_MATCHING
void func_800DC18C_EB13C(Vec3f *arg0, u8 *arg1, u8 *arg2, s32 arg3, u8 arg4) {
	f32 temp_f0;
	f32 temp_f2;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f16;
	f32 temp_f18;
	volatile f32 sp4;

	temp_f2 = (f32)(u16)arg3;
	temp_f0 = D_80153AB8.x;
	temp_f0 *= temp_f2;
	temp_f12 = D_80153AB8.y;
	temp_f12 *= temp_f2;
	temp_f14 = D_80153AB8.z;
	temp_f14 *= temp_f2;
	temp_f16 = ((f32 *)&D_80153AB8)[3];
	temp_f16 *= temp_f2;
	temp_f18 = ((f32 *)&D_80153AB8)[4];
	temp_f18 *= temp_f2;
	sp4 = ((f32 *)&D_80153AB8)[5];
	sp4 *= temp_f2;

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
	gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 5) & 0x1FFFFFFF), 5, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 4, 0, 4, 1, 2, 0);
	gSP2Triangles(D_8005BB2C++, 4, 2, 3, 0, 0, 3, 4, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DC18C_EB13C.s")
#endif

// CURRENT(54017)
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
	f64 absAngleDelta;
	f32 phase;
	f32 alphaF;
	s32 alpha;
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

	toTarget.x = (D_80153BA0.x * 4.0f) - arg0->x;
	toTarget.y = (D_80153BA0.y * 4.0f) - arg0->y;
	toTarget.z = (D_80153BA0.z * 4.0f) - arg0->z;
	beamLen = func_800C0FD4_CFF84(&toTarget);
	func_800C1024_CFFD4(&toTarget, &toTarget);

	facing = func_800C1090_D0040(&toTarget, &viewDir);

	if ((((f64)(f32)(s16)(0x4000 - func_80003680_4280(facing)) * D_80144BB0_153B60) / 32768.0) <= D_80144BB8_153B68) {
		angleDelta = (f32)(D_80144BB8_153B68 - (((f64)(f32)(s16)(0x4000 - func_80003680_4280(facing)) * D_80144BC0_153B70) / 32768.0));
	} else {
		angleDelta = (f32)-(D_80144BB8_153B68 - (((f64)(f32)(s16)(0x4000 - func_80003680_4280(facing)) * D_80144BC8_153B78) / 32768.0));
	}

	absAngleDelta = (f64)angleDelta;
	strength = 0xFF;
	if (absAngleDelta < 2.5) {
		strength = 0xFF;
	} else if (absAngleDelta < 5.0) {
		strength = (u8)((f64)(f32)(5.0 - absAngleDelta) * D_80144BD0_153B80);
	}

	alpha = strength;
	if ((arg1 <= 150.0f) && (angleDelta < 15.0f)) {
		alpha = 0xFF;
	}

	maxDist = D_80144BF0_153BA0;
	if ((arg1 > 330.0f) && (arg1 <= (f32)D_80144BD8_153B88)) {
		maxDist = (f32)D_80144BD8_153B88;
		alphaF = (f32)alpha;
		if (alpha < 0) {
			alphaF += 4294967296.0f;
		}
		alpha = (u8)(s32)(alphaF * (f32)(D_80144BE0_153B90 * (f64)((f32)D_80144BE8_153B98 - arg1)));
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

	if ((angleDelta < 22.0f) && (absAngleDelta > 2.5) && (arg1 < maxDist)) {
		func_800C1128_D00D8(2.0f * facing, &viewDir, &pos);
		func_800C10C0_D0070(&toTarget, &pos, &toTarget);
		func_800C1128_D00D8(beamLen, &toTarget, &beamVec);

		pos.x = (D_80153BA0.x * 4.0f) + beamVec.x;
		pos.y = (D_80153BA0.y * 4.0f) + beamVec.y;
		pos.z = (D_80153BA0.z * 4.0f) + beamVec.z;

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

		if (absAngleDelta < 5.0) {
			phase = (f32)(u16)((D_80144AF0_153AA0 - (f64)arg1) / 16.0);
			flicker = (u16)(s32)(phase * ((f32)D_80144AF8_153AA8 * (f32)(0xFF - alpha)));
		} else {
			phase = (f32)(u16)((D_80144B00_153AB0 - (f64)arg1) / 16.0);
			flicker = (u16)(s32)(phase / (angleDelta / 4.0f));
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

			D_80153BB8.x = (f32)(arg0->x - (d * (beamDir.x / 4.0f)));
			D_80153BB8.y = (f32)(arg0->y - (d * (beamDir.y / 4.0f)));
			D_80153BB8.z = (f32)(arg0->z - (d * (beamDir.z / 4.0f)));
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

		D_80153BB8.x = (f32)((f64)arg0->x + ((f64)(beamDir.x / 3.0f) * D_80144B08_153AB8));
		D_80153BB8.y = (f32)((f64)arg0->y + ((f64)(beamDir.y / 3.0f) * D_80144B08_153AB8));
		D_80153BB8.z = (f32)((f64)arg0->z + ((f64)(beamDir.z / 3.0f) * D_80144B08_153AB8));
		D_80153BC4 = &D_80153B80;
		D_80153BC8 = (f32)(u16)(phase * 1.0f);
		D_80153BCC = flicker;
		func_800DB350_EA300();

		D_80153BB8.x = arg0->x + ((beamDir.x / 3.0f) * 2.0f);
		D_80153BB8.y = arg0->y + ((beamDir.y / 3.0f) * 2.0f);
		D_80153BB8.z = arg0->z + ((beamDir.z / 3.0f) * 2.0f);
		D_80153BC8 = (f32)(u16)((f64)phase * 3.0);
		func_800DB350_EA300();
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DC5B8_EB568.s")
#endif

// DrawNonZBufferedEffects
void func_800DD5E0_EC590(void) { D_80156EDA = 0; func_800C978C_D873C(); }

// CURRENT(5435)
#ifdef NON_MATCHING
void func_800DD604_EC5B4(Gfx **arg0) {
	u8 i;
	u8 type;

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
		type = D_80157540[i];

		if (D_80156EDA >= 0x321) {
			osSyncPrintf(D_80143B8C_152B3C);
			continue;
		}

		if (D_80052ACB != 0) {
			osSyncPrintf(D_80143BD4_152B84);
			continue;
		}

		if (type == 0xFE) {
			continue;
		}

		type = D_80154088[type].unk0;
		if (type == 0xFA) {
			continue;
		}

		if (type < 10) {
			switch (type) {
				case 0:
					func_800C3300_D22B0();
					continue;
				case 1:
					func_800C25F8_D15A8();
					continue;
				case 2:
					func_800C5D14_D4CC4();
					continue;
				case 3:
					func_800C927C_D822C();
					continue;
				case 4:
					func_800CABC8_D9B78();
					continue;
				case 5:
					func_800CD7FC_DC7AC();
					continue;
				case 6:
					func_800CE6E8_DD698();
					continue;
				case 7:
					func_800D1C24_E0BD4();
					continue;
				case 8:
					func_800D6290_E5240();
					continue;
				case 9:
					func_800D7284_E6234();
					continue;
			}
		}

		if (type >= 10) {
			osSyncPrintf(D_80143C08_152BB8);
		} else {
			osSyncPrintf(D_80143C40_152BF0);
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
		switch (type - 10) {
			case 0:
				func_800C4274_D3224();
				continue;
			case 1:
				func_800C4CB8_D3C68();
				continue;
			case 2:
				func_800CC090_DB040();
				continue;
			case 3:
				func_800CCD54_DBD04();
				continue;
			case 4:
				func_800CF2E0_DE290();
				continue;
			case 5:
				func_800D2ECC_E1E7C();
				continue;
			case 6:
				func_800D45B4_E3564();
				continue;
			case 7:
				func_800D4C10_E3BC0();
				continue;
			case 8:
				func_800D5AF4_E4AA4();
				continue;
			case 9:
				func_800D7870_E6820();
				continue;
			case 10:
				func_800D8190_E7140();
				continue;
			case 11:
				func_800D9294_E8244();
				continue;
			case 12:
				func_800D978C_E873C();
				continue;
		}

		if (type < 10) {
			osSyncPrintf(D_80143CF0_152CA0);
		} else {
			osSyncPrintf(D_80143D2C_152CDC);
		}
	}

	if (currentLevel == LEVEL_SIBERIA) {
		if (func_8000726C_7E6C(0x1EULL) == 0) {
			func_800E2ED4_F1E84();
		}
	} else if ((currentLevel == LEVEL_JAVA) && (D_80052ACA != 2)) {
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

// CURRENT(5379)
#ifdef NON_MATCHING
u8 func_800DDB60_ECB10(s16 arg0, s16 arg1, s16 arg2, s32 arg3, s32 arg4) {
	u8 slot;
	u8 i;
	u8 arg3_8;
	u16 arg4_16;
	s8 *params;
	u8 *colorParams;
	UnkFC8E8Entry *entry;

	arg3_8 = arg3;
	arg4_16 = arg4;

	if ((D_80157530 >= 0x50) || (arg4_16 == 0)) {
		return 0xFF;
	}

	slot = D_80157531;
	entry = &D_80156EF0[slot];
	params = (s8 *)&D_8013DFF4_14CFA4[arg3_8 * 8];

	entry->unk0 = arg0;
	entry->unk2 = arg1;
	entry->unk4 = arg2;
	entry->unkC = arg3_8;
	entry->unkF = 0;
	entry->unkA = arg4_16;
	entry->unk10 = params[1];
	entry->unk11 = params[2];
	entry->unk12 = params[3];

	if (arg3_8 == 0xE) {
		entry->unkE = 0;
	} else {
		entry->unkE = func_800038E0_44E0() % params[0];
	}

	colorParams = &D_8013E06C_14D01C[arg3_8 * 4];
	entry->unk6 = colorParams[0];
	entry->unk7 = colorParams[1];
	entry->unk8 = colorParams[2];
	entry->unkD = colorParams[3];

	for (i = slot; i < 0x50; i++) {
		if (D_80156EF0[i].unkA == 0) {
			D_80157531 = i;
			i = 0x50;
		}
	}

	D_80157530 += 1;
	return slot;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DDB60_ECB10.s")
#endif

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
					if (entry->unkE >= (s8)D_8013DFF4_14CFA4[entry->unkC * 8]) {
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

// CURRENT (23293)
#ifdef NON_MATCHING
void func_800DE2E8_ED298(void) {
	s32 i;

	i = 0;
	do {
		UnkFC8E8Entry *entry;
		u8 type;
		s8 *cfg;

		entry = &D_80156EF0[i];
		if ((entry->unkA != 0) && (func_800B9228_C81D8(entry->unk0, entry->unk4, (s16)(s32)(D_80047954 * 4.0f), (s16)(s32)(D_8004795C * 4.0f), 0x4000 - D_80047950) != 0) && (entry->unkF == 0)) {
			type = entry->unkC;
			cfg = (s8 *)&D_8013DFF4_14CFA4[type * 8];

			if ((type != 0xFF) || (entry->unkE != 0xFF)) {
				gDPPipeSync(D_8005BB2C++);
				if (cfg[5] == 0) {
					s32 texOffset;
					s32 loadCount;
					s32 wordsPerLine;

					texOffset = (cfg[7] * entry->unkE) * cfg[6];
					gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
					gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
					gDPSetAlphaDither(D_8005BB2C++, G_AD_PATTERN);
					gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1,
						(void *)((((u32 *)D_8013E0C0_14D070)[type] + (texOffset / 2)) & 0x1FFFFFFF));
					gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
						G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
						G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
					gDPLoadSync(D_8005BB2C++);

					loadCount = (((cfg[7] * cfg[6]) + 3) >> 2) - 1;
					if (loadCount >= 0x7FF) {
						loadCount = 0x7FF;
					}

					wordsPerLine = cfg[6] / 0x10;
					if (wordsPerLine <= 0) {
						wordsPerLine = 1;
					}

					gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, loadCount, (wordsPerLine + 0x7FF) / wordsPerLine);
					gDPPipeSync(D_8005BB2C++);
					gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, (((cfg[6] >> 1) + 7) >> 3), 0, G_TX_RENDERTILE, 0,
						G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
						G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
					gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, ((cfg[7] - 1) << 2) & 0xFFF, ((cfg[6] - 1) << 2) & 0xFFF);
				} else if (cfg[5] == 1) {
					s32 texOffset;
					s32 loadCount;
					s32 wordsPerLine;

					texOffset = (cfg[7] * entry->unkE) * cfg[6];
					gDPSetCombineLERP(D_8005BB2C++, SHADE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0);
					gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1,
						(void *)((((u32 *)D_8013E0C0_14D070)[type] + texOffset) & 0x1FFFFFFF));
					gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
						G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
						G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
					gDPLoadSync(D_8005BB2C++);

					loadCount = (((cfg[7] * cfg[6]) + 1) >> 1) - 1;
					if (loadCount >= 0x7FF) {
						loadCount = 0x7FF;
					}

					wordsPerLine = cfg[6] / 8;
					if (wordsPerLine <= 0) {
						wordsPerLine = 1;
					}

					gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, loadCount, (wordsPerLine + 0x7FF) / wordsPerLine);
					gDPPipeSync(D_8005BB2C++);
					gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, ((cfg[6] + 7) >> 3), 0, G_TX_RENDERTILE, 0,
						G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
						G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
					gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, ((cfg[7] - 1) << 2) & 0xFFF, ((cfg[6] - 1) << 2) & 0xFFF);
				}

				D_80153BCD = cfg[6];
				D_80153BCE = cfg[7];
				gDPPipeSync(D_8005BB2C++);
			}

			D_80153BB8.x = (f32)entry->unk0;
			D_80153BB8.y = (f32)entry->unk2;
			D_80153BB8.z = (f32)entry->unk4;
			D_80153BC4 = &entry->unk6;
			D_80153BC8 = (f32)entry->unkA;
			D_80153BCC = entry->unkD;

			switch (cfg[4]) {
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

// https://decomp.me/scratch/BrqyY
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

// CURRENT (3200)
#ifdef NON_MATCHING
void func_800DEB7C_EDB2C(u16 arg0, u8 arg1, s16 arg2) {
	s16 sp46;
	s16 sp44;
	s16 sp3E;
	s16 sp3C;
	u8 sp3B;
	s16 sp38;
	s16 sp36;
	u8 slot;
	UnkFC8E8Entry *entry;

	sp3E = *((s8*)D_8013DB10_14CAC0 + currentLevel * 0x5C + D_80052B34->unk1A * 4 - 0x5C) * 2;
	sp3C = *((s8*)D_8013DB10_14CAC0 + currentLevel * 0x5C + D_80052B34->unk1A * 4 - 0x5B) * 2;
	sp3B = (u8)(*((s8*)D_8013DB10_14CAC0 + currentLevel * 0x5C + D_80052B34->unk1A * 4 - 0x59) + arg0 / 4);
	sp36 = sins(D_80052B34->unk6);
	sp38 = coss(D_80052B34->unk6);
	sp46 = (s16)(s32)((f64)D_80052B34->unk0 + ((f64)(f32)sp38 / 32768.0) * (f64)sp3E + ((f64)(f32)sp36 / 32768.0) * (f64)arg2 + (f64)(func_800038E0_44E0() % 8) - 4.0);
	sp44 = D_80052B34->unk2 + sp3C;
	sp36 = coss(D_80052B34->unk6);
	sp38 = sins(D_80052B34->unk6);
	slot = func_800DDB60_ECB10(sp46, sp44, (s16)(s32)((f64)D_80052B34->unk4 + ((f64)(f32)sp38 / 32768.0) * (f64)sp3E - ((f64)(f32)sp36 / 32768.0) * (f64)arg2 + (f64)(func_800038E0_44E0() % 8) - 4.0), 3, sp3B);
	if (slot != 0xFF) {
		entry = &D_80156EF0[slot];
		entry->unkD = (s8)(0xDC - arg1 / 2);
		entry->unk6 = arg1;
		entry->unk7 = arg1;
		entry->unk8 = arg1;
		entry->unk10 = (s8)(sp3B / 12);
		entry->unk11 = (s8)(sp3B / 8);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DEB7C_EDB2C.s")
#endif

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

// CURRENT(80)
#ifdef NON_MATCHING
void func_800DEF2C_EDEDC(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4) {
	u8 slot;
	u8 var_s0;
	u8 var_s1;

	var_s0 = 0;
	var_s1 = 0;
	if (arg4 > 0) {
		do {
			slot = func_800DDB60_ECB10(arg0, arg1, arg2, 4, 2);
			func_800DDE1C_ECDCC(slot, arg3);
			func_800DDEE0_ECE90(slot, var_s0);
			var_s0 += 0xC;
		} while (++var_s1 < arg4);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DEF2C_EDEDC.s")
#endif

#ifdef NON_MATCHING
// CURRENT(18263)
s32 func_800DF038_EDFE8(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, s8 *arg5) {
	s16 result;
	s16 i;
	s16 j;
	s16 spreadCount;
	s16 halfRadius;
	s16 radius;
	s16 temp;
	u16 clampedRadius;
	u16 r0;
	u8 tempColors[12];
	u8 loopCount;
	s32 slot;

	clampedRadius = arg3;
	func_800038E0_44E0();
	radius = clampedRadius;

	if (func_800B93AC_C835C(arg0, arg2, clampedRadius * 2, (s16) (D_80047954 * 4.0f), (s16) (D_8004795C * 4.0f),
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
					tempColors[(i * 3) + j] = D_8013DF9C_14CF4C[(i * 3) + j];
				} else {
					tempColors[(i * 3) + j] = D_8013DF90_14CF40[(i * 3) + j];
				}
			}
		}

		radius = clampedRadius;
		result = func_800C613C_D50EC(arg0, arg1, arg2, clampedRadius, tempColors);
		spreadCount = radius / 10;
		if (spreadCount > 0) {
			halfRadius = radius >> 1;
			for (i = 0; i < spreadCount; i++) {
				r0 = func_800038E0_44E0() & 0xFFFF;
				func_800D8FA0_E7F50((r0 % radius) + arg0 - halfRadius, arg1,
					(func_800038E0_44E0() % radius) + arg2 - halfRadius);
			}
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
		i = 0;
		do {
			func_800C7924_D68D4(arg0, arg1, arg2, radius, result, clampedRadius,
				((s32 *) D_8013DD20_14CCD0)[func_800038E0_44E0() % 8], 0);
			i = (i + 1) & 0xFF;
		} while (i < loopCount);
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

// CURRENT(946)
#ifdef NON_MATCHING
void func_800DF848_EE7F8(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4) {
	s16 colorRow;
	s16 i;
	s16 j;
	s16 randMod;
	s32 randVal;
	u8 tempColors[12];

	colorRow = func_800038E0_44E0() % 10;
	randVal = func_800038E0_44E0();

	for (i = 0; i < 4; i++) {
		for (j = 0; j < 3; j++) {
			if (i < 2) {
				tempColors[(i * 3) + j] = D_8013E348_14D2F8[((((s16) colorRow << 2) - colorRow) << 1) + (i * 3) + j];
			} else {
				randMod = randVal % 10;
				tempColors[(i * 3) + j] = D_8013E384_14D334[(((randMod << 2) - randMod) << 1) + (i * 3) + j - 6];
			}
		}
	}

	func_800DF038_EDFE8(arg0, arg1, arg2, arg3, arg4, tempColors);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DF848_EE7F8.s")
#endif

void func_800DF9C8_EE978(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, s32 arg5) {
	D_80153B87 = 1;
	func_800DF038_EDFE8(arg0, arg1, arg2, arg3, (s32) arg4, arg5);
	D_80153B87 = 0;
}

void func_800DFA34_EE9E4(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4) {
	D_80153B87 = 1;
	func_800DF848_EE7F8(arg0, arg1, arg2, arg3, (s32) arg4);
	D_80153B87 = 0;
}

// CURRENT(1165)
#ifdef NON_MATCHING
void func_800DFA98_EEA48(s8 *arg0) {
	s32 i;
	s32 j;
	s16 temp;

	i = 0;
	do {
		j = 0;
		while (j < 3) {
			temp = (func_800038E0_44E0() % 120) + D_8013DF84_14CF34[(i * 3) + j] - 0x3C;
			if (temp < 0) {
				temp = 0;
			} else if (temp >= 0x100) {
				temp = 0xFF;
			}
			arg0[(i * 3) + j] = temp;
			j = (j + 1) & 0xFF;
		}
		i = (i + 1) & 0xFF;
	} while (i < 4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DFA98_EEA48.s")
#endif

#ifdef NON_MATCHING
// CURRENT(4815)
void func_800DFBA8_EEB58(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4) {
	s8 sp68[0x10];
	s32 i;
	s8 *tempS5;
	s32 sp5C;
	s32 halfArg3;
	s32 quarterArg3;
	f32 tempF20;
	s32 tempS1;
	s32 tempS2;
	s32 tempS3;

	arg3 = (u16)arg3;
	func_800DF038_EDFE8(arg0, arg1, arg2, (u16)arg3, 0, D_8013DF84_14CF34);
	func_80135D44_144CF4(arg0, arg1, arg2, 10.0f);

	i = 1;
	tempS5 = sp68;
	if (arg4 >= 2) {
		if (arg3 >= 0) {
			halfArg3 = arg3 >> 1;
		} else {
			halfArg3 = (arg3 + 1) >> 1;
		}

		if (arg3 >= 0) {
			quarterArg3 = arg3 >> 2;
		} else {
			quarterArg3 = (arg3 + 3) >> 2;
		}

		tempF20 = D_80144190_153140;
		sp5C = arg4;

		do {
			func_800DFA98_EEA48(tempS5);
			func_801371B8_146168(0, 0xE8, arg0, arg1, arg2, tempF20);
			tempS1 = func_800038E0_44E0() & 0xFFFF;
			tempS2 = func_800038E0_44E0() & 0xFFFF;
			tempS3 = func_800038E0_44E0() & 0xFFFF;
			func_800DF9C8_EE978(
				((tempS1 % arg3) * 2) + arg0 - arg3,
				((tempS2 % arg3) * 2) + arg1 - arg3,
				((tempS3 % arg3) * 2) + arg2 - arg3,
				(((func_800038E0_44E0() % halfArg3) + arg3) - quarterArg3) & 0xFFFF,
				0,
				tempS5);
			i = (i + 1) & 0xFF;
		} while (i < sp5C);
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

// guess_initSpecialEffects
void func_800E0134_EF0E4(void) {
	u8 i;
	u16 j;
	u16 k;
	Unk80152D00SubEntry *entry;
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

	entry = (Unk80152D00SubEntry *) D_80152D00;
	for (j = 0; j < 0x40; j++) {
		entry[j].unk0 = 0;
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

// debug_printSpecialEffectsInfo
void func_800E03FC_EF3AC(void) {
	u8 i;

	osSyncPrintf(&D_80143ED0_152E80); // DUMP SPECIAL EFFECTS INFO
	for (i = 0; i < 0x1E; i++) {
		if (D_80154088[i].unk0 != 0xFA) {
			// Effect %d :  Type %d  numUints %d
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

#ifdef NON_MATCHING
// CURRENT(725)
void func_800E0D28_EFCD8(s16 arg0, s16 arg1, s16 arg2) {
	u8 i;
	s32 temp_v0;
	s32 stride;
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
	stride = sizeof(Unk801541F8Entry);
	if (temp_v0 != 0xFB) {
		spEffect = (Unk801541F8Entry *) ((u8 *) D_80154088 + (temp_v0 * stride));
		D_80154318[spEffect->unk6].unk14 = 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E0D28_EFCD8.s")
#endif

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
	typedef struct {
		s32 unk0;
		s32 unk4;
		s32 unk8;
	} Unk800E0F4CSp5C;
	s32 pad0;
	s32 pad1;
	Unk800E0F4CSp5C sp5C;

	sp5C = *((Unk800E0F4CSp5C*)D_8013E3E8_14D398);

	if (arg3 < 0x16) {
		func_80137234_1461E4(0xEA, arg0, arg1, arg2, 0);
	} else if (arg3 >= 0x19) {
		func_80137234_1461E4(0xE8, arg0, arg1, arg2, 0);
	} else {
		func_80137234_1461E4(0xE9, arg0, arg1, arg2, 0);
	}

	entry = &((Unk800E0F4CEntry *)D_8013DD40_14CCF0)[arg3];

	if (arg3 == 0) {
		func_800DFE68_EEE18(arg0, arg1, arg2);
	} else if ((arg3 == 2) || (arg3 == 3)) {
		func_800DFEE4_EEE94(arg0, arg1, arg2);
	} else if (arg3 == 1) {
		func_800DDB60_ECB10(arg0, D_80222A70 + 0xD, arg2, 0, 0x19);
		func_800DEF2C_EDEDC(arg0, D_80222A70 + 4, arg2, 0x32, 1);
	} else if (arg3 == 4) {
		func_800C4938_D38E8(arg0, arg1, arg2, 0, 0x50);
		func_800C541C_D43CC(arg0, arg1, arg2, 0, 0x7F, 0, 0x32, 0xFA, (func_800038E0_44E0() % 4) + 4, 3, 0xBE, 0xFF, 0xE6);
	} else if (arg3 == 5) {
		func_800C4938_D38E8(arg0, arg1, arg2, 1, 0x50);
		func_800C541C_D43CC(arg0, arg1, arg2, 0, 0x7F, 0, 0x32, 0xFA, (func_800038E0_44E0() % 4) + 4, 3, 0xBE, 0xFF, 0xE6);
	} else if (arg3 == 6) {
		func_800DFFC4_EEF74(arg0, arg1, arg2);
	} else if (arg3 == 7) {
		func_800DF038_EDFE8(arg0, arg1, arg2, ((func_800038E0_44E0() % 40) + 0x28) & 0xFFFF, 0, (s8 *)&sp5C);
	} else if (arg3 == 8) {
		func_800DDB60_ECB10(arg0, D_80222A70 + 0x12, arg2, 0, 0x23);
		func_800DEF2C_EDEDC(arg0, D_80222A70 + 3, arg2, 0x32, 2);
	} else if ((arg3 == 9) || (arg3 == 0xA)) {
		func_800DF038_EDFE8(arg0, arg1, arg2, ((func_800038E0_44E0() % 40) + 0x28) & 0xFFFF, 0, (s8 *)&sp5C);
	} else if (arg3 == 0xB) {
		func_800DF038_EDFE8(arg0, arg1, arg2, ((func_800038E0_44E0() % 40) + 0x28) & 0xFFFF, 0, (s8 *)&sp5C);
		func_800C4938_D38E8(arg0, arg1, arg2, 0, 0x50);
	} else if (arg3 == 0xC) {
		func_800DF038_EDFE8(arg0, arg1, arg2, ((func_800038E0_44E0() % 40) + 0x28) & 0xFFFF, 0, (s8 *)&sp5C);
		func_800C4938_D38E8(arg0, arg1, arg2, 1, 0x50);
	} else if (arg3 == 0xD) {
		func_800DFFC4_EEF74(arg0, arg1, arg2);
	} else if (arg3 == 0xE) {
		func_800DF9C8_EE978(arg0, arg1, arg2, ((func_800038E0_44E0() % 8) + 8) & 0xFFFF, 0, (s32)D_8013E3D0_14D380);
	} else if (arg3 == 0xF) {
		func_800DDB60_ECB10(arg0, D_80222A70 + 0x12, arg2, 0, 0x23);
		func_800DEF2C_EDEDC(arg0, D_80222A70 + 3, arg2, 0x32, 2);
	} else if ((arg3 == 0x10) || (arg3 == 0x11)) {
		func_800DF9C8_EE978(arg0, arg1, arg2, ((func_800038E0_44E0() % 8) + 8) & 0xFFFF, 0, (s32)D_8013E3D0_14D380);
	} else if (arg3 == 0x12) {
		func_800DF9C8_EE978(arg0, arg1, arg2, ((func_800038E0_44E0() % 8) + 8) & 0xFFFF, 0, (s32)D_8013E3D0_14D380);
		func_800C4938_D38E8(arg0, arg1, arg2, 0, 0x50);
	} else if (arg3 == 0x13) {
		func_800DF9C8_EE978(arg0, arg1, arg2, ((func_800038E0_44E0() % 8) + 8) & 0xFFFF, 0, (s32)D_8013E3D0_14D380);
		func_800C4938_D38E8(arg0, arg1, arg2, 1, 0x50);
	} else if (arg3 == 0x14) {
		func_800DFFC4_EEF74(arg0, arg1, arg2);
	} else if ((arg1 < D_80222A70) && (D_80222A70 < (arg1 + 0xC8))) {
		func_800E0E9C_EFE4C(arg0, arg2, (entry->unkA << 2) & 0xFFFF);
	} else if ((arg3 >= 0x15) && (arg3 < 0x1D)) {
		func_800DF038_EDFE8(arg0, arg1, arg2, entry->unk8, 0, NULL);
	} else if (arg3 == 0x1D) {
		func_800DF038_EDFE8(arg0, arg1, arg2, 0x96, 0, (s8 *)D_8013E3DC_14D38C);
	} else if (arg3 == 0x1E) {
		func_800DDB60_ECB10(arg0, arg1, arg2, 0xE, 0x18);
	} else if (arg3 != 0x1F) {
		osSyncPrintf(D_80143F14_152EC4, arg3);
		return;
	}

	if ((entry->unk9 != 0) && (D_80222A70 < arg1)) {
		func_800C3BD8_D2B88(arg0, arg1, arg2, entry->unk9, (func_800038E0_44E0() % 50) + 0x78, 0xFF, 0xAA, 0x1E);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E0F4C_EFEFC.s")
#endif

// This matches if the two vars assigned in the ifs are declared as separate variables
// instead of reusing the same variable from the compare
#ifdef NON_MATCHING
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
		D_8013E3F4_14D3A4 = D_80154304;
	}
	if (D_8013E3F8_14D3A8 < D_8015430E) {
		D_8013E3F8_14D3A8 = D_8015430E;
	}
	D_80156EDC.unk0 = D_80052B34->unk0;
	D_80156EDC.unk2 = D_80052B34->unk2;
	D_80156EDC.unk4 = D_80052B34->unk4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E1C10_F0BC0.s")
#endif

// CURRENT(3027)
#ifdef NON_MATCHING
void func_800E1D48_F0CF8(u16 arg0, u8 arg1) {
	s32 shouldClamp;
	s32 skipSecondCall;
	s32 level;
	s16 tempA2;

	if (D_80052B34->unk3C == 0) {
		return;
	}

	shouldClamp = 0;
	skipSecondCall = 0;
	if ((func_800038E0_44E0() % 100) < (arg0 + 30)) {
		level = currentLevel;
		switch (level) {
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

			case 3:
				if ((D_80052B34->unk1A == 1) || (D_80052B34->unk1A == 5) || (D_80052B34->unk1A == 0xE)) {
					shouldClamp = 1;
				}
				break;

			case 4:
				if (D_80052B34->unk1A == 2) {
					skipSecondCall = 1;
					shouldClamp = 1;
				} else if (D_80052B34->unk1A == 0x11) {
					shouldClamp = 1;
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

		if (shouldClamp == 0) {
			if (arg1 < 0xA7) {
				return;
			}
		} else if (arg1 >= 0xC9) {
			return;
		}

		tempA2 = D_8013DAB6_14CA66[(level * 0x5C) + (D_80052B34->unk1A * 4)];
		func_800DEB7C_EDB2C(arg0, arg1, tempA2);
		if ((tempA2 != 0) && (skipSecondCall == 0)) {
			func_800DEB7C_EDB2C(arg0, arg1, -tempA2);
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
				(((u16)randC % 5) + temp + 10) & 0xFF,
				(func_800038E0_44E0() % 10) + temp + 45);
		}
	} else if ((func_800038E0_44E0() % 40) < (temp + 10)) {
		if (D_80257A4C[arg0->unk1A].unk0 & 0x20000) {
			randA = func_800038E0_44E0();
			randB = func_800038E0_44E0();
			randC = func_800038E0_44E0();
			func_800DEED0_EDE80(
				(((u16)randA % 40) + arg0->unk0) - 20,
				D_80222A70 + 3,
				(((u16)randB % 40) + arg0->unk4) - 20,
				(((u16)randC % 40) + D_80257A0C[arg0->unk1A * 0x38]) & 0xFF,
				(func_800038E0_44E0() % 10) + ((s32)temp / 2) + 60);
		} else {
			randA = func_800038E0_44E0();
			randB = func_800038E0_44E0();
			randC = func_800038E0_44E0();
			func_800DEED0_EDE80(
				(((u16)randA % 40) + arg0->unk0) - 20,
				D_80222A70 + 3,
				(((u16)randB % 40) + arg0->unk4) - 20,
				(((u16)randC % 20) + (D_80257A0C[arg0->unk1A * 0x38] / 2)) & 0xFF,
				(func_800038E0_44E0() % 10) + ((s32)temp / 2) + 60);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E1F70_F0F20.s")
#endif

// CURRENT(6629)
#ifdef NON_MATCHING
void func_800E24B8_F1468(u8 arg0) {
	s16 sp24;
	s16 sp26;
	s16 sp28;
	AlienInstance *alien;
	s32 temp_v0;
	s32 temp_a0;
	s32 temp_t9;
	s32 var_a1;
	s16 specValue;

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
		s32 divisor;
		s32 temp1;
		s32 temp2;
		s32 temp3;

		sp24 = func_800038E0_44E0();
		sp26 = func_800038E0_44E0();
		sp28 = func_800038E0_44E0();
		temp_v0 = func_800038E0_44E0();
		divisor = 30;
		temp1 = (u16)sp24 % divisor;
		temp2 = (u16)sp26 % divisor;
		temp3 = (u16)sp28 % 20;

		specValue = alienSpecs[alien->specIndex].unkC;
		if (specValue < 0) {
			specValue = (specValue + 1) >> 1;
		} else {
			specValue = specValue >> 1;
		}

		func_800DEED0_EDE80(
			(s16) ((temp1 + alien->unk0) - 15),
			(s16) (D_80222A70 + 5),
			(s16) ((temp2 + alien->unk4) - 15),
			((temp3 + specValue) & 0xFF),
			((temp_v0 % 10) + 50));
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
	Unk800311A0 *replace;
	s32 count;
	u8 i;
	s32 yLimit;
	u16 speed;
	s16 xOffset;
	s16 didShrink;
	didShrink = 0;
	if (D_8013E408_14D3B8 == 5) {
		if ((*(volatile s32 *)&D_80154300) < D_80154308) {
			func_800E2750_F1700((*(volatile s32 *)&D_80154300) & 0xFF);
			(*(volatile s32 *)&D_80154300) += 1;
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

	count = (*(volatile s32 *)&D_80154300);
	i = (u8)(count - count);
	if (count > 0) {
		do {
			yLimit = D_80068088 * 0x10;
			entry = &D_80153BD0[i];
			speed = entry->unk4;

			if (currentLevel == LEVEL_SIBERIA) {
				xOffset = (s16)(s32)((((f64)(f32)sins((u16)(((i + D_80052A8C) << 11) & 0xFFFF)) / 32768.0) *
									(f64)(((s32)D_80154300 / 5) + 0x10)) + (f64)((D_80154080 * speed * 2) >> 4));
			} else {
				xOffset = (s16)((s32)(speed * D_80154080 * 2) >> 4);
			}

			entry->unk2 += speed;
			entry->unk0 += xOffset;

			if (yLimit < entry->unk2) {
				if ((D_80154308 < count) && (didShrink == 0)) {
					(*(volatile s32 *)&D_80154300) = count - 1;
					count = (*(volatile s32 *)&D_80154300);
					didShrink = 1;
					if (count != i) {
						replace = &D_80153BD0[count];
						*(s32 *)&entry->unk0 = *(s32 *)&replace->unk0;
						i = (i - 1) & 0xFF;
						entry->unk4 = replace->unk4;
					}
				} else {
					func_800E2750_F1700(i & 0xFF);
					count = (*(volatile s32 *)&D_80154300);
				}
			} else {
				if ((D_80068084 * 0x10) < entry->unk0) {
					entry->unk0 = 0;
					if (currentLevel == LEVEL_JAVA) {
						entry->unk4 = (func_800038E0_44E0() % 100) + 0x4B;
					} else if (currentLevel == LEVEL_SIBERIA) {
						entry->unk4 = (func_800038E0_44E0() % 75) + 0x19;
					}
					count = (*(volatile s32 *)&D_80154300);
				} else if (entry->unk0 < 0) {
					entry->unk0 = D_80068084 * 0x10;
					if (currentLevel == LEVEL_JAVA) {
						entry->unk4 = (func_800038E0_44E0() % 100) + 0x4B;
					} else if (currentLevel == LEVEL_SIBERIA) {
						entry->unk4 = (func_800038E0_44E0() % 75) + 0x19;
					}
					count = (*(volatile s32 *)&D_80154300);
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

// CURRENT(7084)
#ifdef NON_MATCHING
void func_800E2ED4_F1E84(void) {
	Gfx *dl;
	Unk800311A0 *entry;
	s32 scroll;
	u8 i;
	u8 next;

	if (D_801493CC == 0) {
		func_800E2DB4_F1D64();

		if (D_80154080 < 0) {
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (u32)(&D_100E480[(-D_80154080) * 0x80]) & 0x1FFFFFFF);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (15 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));
			scroll = 0x200;
		} else {
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (u32)(&D_100E480[D_80154080 * 0x80]) & 0x1FFFFFFF);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (15 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));
			scroll = 0;
		}

		gDPPipeSync(D_8005BB2C++);

		i = 0;
		if (D_80154300 > 0) {
			do {
				entry = &D_80153BD0[i];

			gDPSetPrimColor(D_8005BB2C++, 0, 0, D_801541F0.unk0, D_801541F0.unk1, D_801541F0.unk2, 0x23);

			gDPPipeSync(D_8005BB2C++);

			gSPTextureRectangle(D_8005BB2C++, ((entry->unk0 >> 4) * 4), ((entry->unk2 >> 4) * 4), ((entry->unk2 >> 4) + 0x10) * 4, ((entry->unk0 >> 4) + 0x10) * 4, G_TX_RENDERTILE, scroll, 0, 0x0400, 0x0400);

			gDPPipeSync(D_8005BB2C++);

				next = (i + 1) & 0xFF;
				i = next;
			} while (next < D_80154300);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E2ED4_F1E84.s")
#endif

#ifdef NON_MATCHING
// CURRENT(7717)
void func_800E32C4_F2274(void) {
	Gfx *dl;
	Unk800311A0 *entry;
	s16 tileSize;
	s16 temp;
	s32 widthShift;
	s32 heightShift;
	s32 scale;

	if (D_801493CC == 0) {
		func_800E2DB4_F1D64();

		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (u32) D_100AD70 & 0x1FFFFFFF);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (15 << G_TEXTURE_IMAGE_FRAC), (15 << G_TEXTURE_IMAGE_FRAC));
		gDPPipeSync(D_8005BB2C++);

		entry = D_80153BD0;
		if (D_80154300 > 0) {
			do {
				gDPSetPrimColor(D_8005BB2C++, 0, 0, D_801541F0.unk0, D_801541F0.unk1, D_801541F0.unk2, 0xDC);
				gDPPipeSync(D_8005BB2C++);

				tileSize = entry->unk4;
				widthShift = 4;
				heightShift = 0xB;
				if (tileSize < 0x28) {
					scale = 2;
				} else if (tileSize < 0x41) {
					widthShift = 3;
					scale = 3;
				} else if (tileSize < 0x50) {
					widthShift = 2;
					scale = 4;
				} else if (tileSize < 0x5F) {
					widthShift = 3;
					heightShift = 0xA;
					scale = 5;
				} else {
					scale = 8;
				}

				temp = (widthShift << heightShift) & 0xFFFF;
				gSPTextureRectangle(D_8005BB2C++, ((entry->unk0 >> 4) * 4), ((entry->unk2 >> 4) * 4), ((entry->unk2 >> 4) + scale) * 4, ((entry->unk0 >> 4) + scale) * 4, G_TX_RENDERTILE, 0, 0, temp, temp);
				gDPPipeSync(D_8005BB2C++);

				entry++;
			} while (--D_80154300 > 0);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E32C4_F2274.s")
#endif

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

// CURRENT(820)
#ifdef NON_MATCHING
	void func_800E3738_F26E8(u16 arg0, u8 arg1) {
		u16 phase;
		s32 phaseMod;

		phase = (D_80052A8C * 25) + arg0;
		phaseMod = phase % 300;
		if (phaseMod < 100) {
			u8 red;
			u8 green;

			green = 0xFA - phase;
			red = phase + 0x96;
			gDPSetColor(D_8005BB2C++, G_SETPRIMCOLOR, (green << 24) | (red << 16) | 0x9600 | arg1);
			gDPSetColor(D_8005BB2C++, G_SETENVCOLOR, (red << 24) | 0x960000 | (green << 8) | arg1);
			return;
		}
		if (phaseMod < 200) {
			u8 red;
			u8 green;

			red = 0x15E - phase;
			green = phase + 0x32;
			gDPSetColor(D_8005BB2C++, G_SETPRIMCOLOR, 0x96000000 | (red << 16) | (green << 8) | arg1);
			gDPSetColor(D_8005BB2C++, G_SETENVCOLOR, (red << 24) | (green << 16) | 0x9600 | arg1);
			return;
		} else {
			u8 red;
			u8 green;

			red = phase - 0x32;
			green = 0x1C2 - phase;
			gDPSetColor(D_8005BB2C++, G_SETPRIMCOLOR, (red << 24) | 0x960000 | (green << 8) | arg1);
			gDPSetColor(D_8005BB2C++, G_SETENVCOLOR, 0x96000000 | (green << 16) | (red << 8) | arg1);
		}
	}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E3738_F26E8.s")
#endif

#ifdef NON_MATCHING
// CURRENT(500)
void func_800E3928_F28D8(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s32 arg6, s16 arg7, u8 arg8) {
	s16 rot;
	s16 size;
	s16 x1;
	s16 z1;
	s16 x2;
	s16 z2;
	u8 alpha0;
	u8 red0;
	u8 green0;
	u8 blue0;
	u8 alpha1;
	u8 red1;
	u8 green1;
	u8 blue1;
	u8 maxStep;
	f32 stepScale;

	rot = func_80003824_4424((f32)(arg3 - arg0), (f32)(arg5 - arg2));
	rot = (s16)(rot + 0x4000);

	maxStep = D_8013DD18_14CCC8[arg8];
	stepScale = (f32)(0xFF / maxStep);

	switch (arg8) {
		case 0:
			if (arg7 == maxStep) {
				alpha0 = 0xFF;
				red0 = 0xFA;
				green0 = 0x64;
				blue0 = 0xFF;
				alpha1 = 0xFF;
				red1 = 0xFF;
				green1 = 0;
				blue1 = 0;
			} else {
				alpha0 = (u8)(((s32)((f32)arg7 * stepScale) & 0xFF) >> 1);
				red0 = 0x96;
				green0 = 0;
				blue0 = 0;
				alpha1 = 0;
				red1 = 0x96;
				green1 = 0;
				blue1 = 0;
			}
			size = 0xC;
			break;
		case 1:
			if (arg7 == maxStep) {
				alpha0 = 0xFF;
				red0 = 0xFF;
				green0 = 0;
				blue0 = 0;
				alpha1 = 0x96;
				red1 = 0xFF;
				green1 = 0;
				blue1 = 0x32;
			} else {
				alpha0 = (u8)(((s32)((f32)arg7 * stepScale) & 0xFF) >> 1);
				red0 = 0x96;
				green0 = 0;
				blue0 = 0;
				alpha1 = 0;
				red1 = 0x96;
				green1 = 0;
				blue1 = 0;
			}
			size = 0xA;
			break;
		case 2:
			if (arg7 >= (s16)(maxStep - 1)) {
				alpha0 = 0xFF;
				red0 = 0xFF;
				green0 = 0x78;
				blue0 = 0xFF;
				alpha1 = 0x64;
				red1 = 0xFF;
				green1 = 0x64;
				blue1 = 0x32;
				func_80135D44_144CF4(arg3, arg4, arg5, 2.0f);
			} else {
				alpha0 = (u8)(((s32)((f32)arg7 * stepScale) & 0xFF) >> 1);
				red0 = 0xAA;
				green0 = 0x64;
				blue0 = 0xFF;
				alpha1 = 0xFF;
				red1 = 0xFF;
				green1 = 0xFF;
				blue1 = 0;
			}
			size = 0x1E;
			break;
		case 3:
			alpha0 = 0xFF;
			red0 = 0xFF;
			green0 = 0x78;
			blue0 = 0xFF;
			alpha1 = 0x64;
			red1 = 0xFF;
			green1 = 0x64;
			blue1 = 0x32;
			size = 0xF;
			break;
		case 4:
			if (arg7 == maxStep) {
				alpha0 = 0xFF;
				red0 = 0xFF;
				green0 = 0x78;
				blue0 = 0xFF;
				alpha1 = 0x64;
				red1 = 0xFF;
				green1 = 0x64;
				blue1 = 0x32;
			} else {
				alpha0 = (u8)(((s32)((f32)arg7 * stepScale) & 0xFF) >> 1);
				red0 = (u8)(0xFF - (s32)((f32)(maxStep - arg7) * stepScale));
				green0 = 0;
				blue0 = 0;
				alpha1 = 0x64;
				red1 = 0xFF;
				green1 = 0x64;
				blue1 = 0;
			}
			size = 0xA;
			break;
		case 5:
			if (arg7 == maxStep) {
				alpha0 = 0xFF;
				red0 = 0xDC;
				green0 = 0;
				blue0 = 0xFF;
				alpha1 = 0x8C;
				red1 = 0xDC;
				green1 = 0;
				blue1 = 0xFF;
			} else {
				s16 rem = (s16)(maxStep - arg7);
				f32 t0 = (((523.0f / maxStep) * rem) * 3.0f) + 220.0f;
				f32 t1 = (((115.0f / maxStep) * rem) * 3.0f) + 140.0f;
				f32 t2 = ((f32)rem * stepScale) * 3.0f;

				if (t0 > 255.0f) {
					red0 = 0xFF;
				} else {
					red0 = (u8)t0;
				}

				if (t1 > 255.0f) {
					alpha1 = 0xFF;
				} else {
					alpha1 = (u8)t1;
				}

				if (t2 > 255.0f) {
					green0 = 0xFF;
				} else {
					green0 = (u8)t2;
				}

				alpha0 = (u8)(((s32)((f32)arg7 * stepScale) & 0xFF) >> 1);
				blue0 = green0;
				red1 = red0;
				green1 = 0;
				blue1 = 0;
			}
			size = 0xC;
			break;
		case 6:
		default:
			if (arg7 > (maxStep >> 1)) {
				alpha0 = 0x46;
				red0 = 0xFF;
				green0 = 0;
				blue0 = 0xFF;
				alpha1 = 0xFF;
				red1 = 0xFF;
				green1 = 0;
				blue1 = 0;
			} else {
				s16 half = (s16)(maxStep >> 1);
				s16 rem = (s16)(half - arg7);
				s16 dec = (s16)(0x46 - (((u32)rem * 0x46) / half));

				if (dec < 0) {
					dec = 0;
				}
				alpha0 = (u8)dec;
				red0 = (u8)(0xFF - (s32)(((f32)rem * stepScale) * 2.0f));
				green0 = 0;
				blue0 = 0;
				alpha1 = 0xFF;
				red1 = 0xFF;
				green1 = 0;
				blue1 = 0;
			}
			size = 0x14;
			break;
	}

	if (arg8 == 3) {
		s16 n = (s16)(D_8013DD18_14CCC8[arg8] - arg7 + size);
		x1 = (s16)((f32)n * D_80153AB8.x);
		z1 = (s16)((f32)n * D_80153AB8.z);
		x2 = (s16)((f32)n * D_80153AC4.x);
		z2 = (s16)((f32)n * D_80153AC4.z);
	} else {
		u16 angle;
		s16 n;
		f64 scale;

		angle = (u16)rot;
		n = (s16)(D_8013DD18_14CCC8[arg8] + size - arg7);
		scale = (f64)n;

		x1 = (s16)(((f64)coss(angle) / 32768.0) * scale);
		z1 = (s16)(((f64)sins(angle) / 32768.0) * scale);
		x2 = (s16)(((f64)coss(angle) / 32768.0) * scale);
		z2 = (s16)(((f64)sins(angle) / 32768.0) * scale);
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
	gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 6) & 0x1FFFFFFF), 6, 0);
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

// CURRENT(1348)
#ifdef NON_MATCHING
void func_800E4CEC_F3C9C(s32 arg0, u8 arg1) {
	s16 sp84, sp82, sp80;
	s32 sp70, sp68, sp64, sp60, sp5C;
	s16 sp6E, sp6C, sp62, sp5E, sp66;
	u8 sp7B, sp7A, sp79;
	
	func_80128504_1374B4((AlienInstance *) arg0, 0, &sp70, &sp6C, &sp68);
	sp60 = 0;
	sp64 = sp70;
	sp5C = sp68;
	
	func_80126268_135218((s16) sp70, sp6E, (s16) sp68, &sp64, &sp60, &sp5C, 1, 5);
	
	if (func_800B325C_C220C((s8) (sp64 >> 8), (s8) (sp5C >> 8), 0x1000) != 0) {
		if (!(D_80052A8C & 7)) {
			func_800E0E9C_EFE4C(sp66, sp5E, 0xC8);
			func_800DEA08_ED9B8(sp66, sp62, sp5E, 0x32, 0xA, 8, 0x1E, 0xC8, 0xC8, 0xC8, 0xFF);
		}
	} else {
		if (!(D_80052A8C & 7)) {
			func_800DEA08_ED9B8(sp66, sp62, sp5E, 0x32, 0xA, 0, 0x1E, 0xC8, 0x88, 0x67, 0x11);
		}
		if (!(D_80052A8C & 1)) {
			func_800C541C_D43CC(sp66, sp62, sp5E, 0, 0x7F, 0, 0x32, 0xFF, 0x28, 0xA, 0x6A, 0x53, 0);
		}
	}
	
	func_800E3928_F28D8((s16) sp70, sp6E, (s16) sp68, sp66, sp60, sp5C, 0, (s32) arg1, 3);
	
	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
	
	gDPSetPrimColor(D_8005BB2C++, 0, 0, sp7B, sp7A, sp79, 0xFF);
	
	sp80 = (s16) sp70;
	sp82 = (s16) sp6C;
	sp84 = (s16) sp68;
	func_800039D0_45D0((Unk80052B40 *) &sp80, 0, 0, D_8005BB38);
	
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gSPDisplayList(D_8005BB2C++, D_50332A0);
	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E4CEC_F3C9C.s")
#endif

// CURRENT(380)
#ifdef NON_MATCHING
// DisplayLasers
void func_800E5044_F3FF4(void) {
	Unk80152D00SubEntry *entry;
	Unk80152D00SubEntry *end;
	s16 type1;

	gDPPipeSync(D_8005BB2C++);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH | G_FOG | G_LIGHTING);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);

	entry = (Unk80152D00SubEntry *) D_80152D00;
	end = (Unk80152D00SubEntry *) &D_80153300;
	type1 = 1;
	do {
		if (entry->unk0 == type1) {
			s16 arg4 = entry->unkC;
			s16 arg5 = entry->unkE;
			s32 arg6 = entry->unk10;
			s16 arg7 = entry->unk2;
			u8 arg8 = entry->unk14;
			s16 arg0 = entry->unk4;
			s16 arg1 = entry->unk6;
			s16 arg2 = entry->unk8;
			s16 arg3 = entry->unkA;

			func_800E3928_F28D8(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
		} else if (entry->unk0 == 2) {
			func_800E4CEC_F3C9C(*(s32 *) &entry->unk8, ((u8 *) &entry->unk2)[1]);
		}
		entry++;
	} while (entry != end);

	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5044_F3FF4.s")
#endif

// CURRENT(12125)
#ifdef NON_MATCHING
void func_800E520C_F41BC(void) {
	Unk80152D00Pair *entry;

	entry = D_80152D00;
	do {
		if (entry->unk0 != 0) {
			if (entry->unk0 == 1) {
				entry->unk2--;
				if (entry->unk2 <= 0) {
					entry->unk0 = 0;
				}
			}
			if (entry->unk0 == 2) {
				entry->unk2--;
				if (entry->unk2 <= 0) {
					entry->unk0 = 0;
				}
			}
		}
		if (entry->unk18 != 0) {
			if (entry->unk18 == 1) {
				entry->unk1A--;
				if (entry->unk1A <= 0) {
					entry->unk18 = 0;
				}
			}
			if (entry->unk18 == 2) {
				entry->unk1A--;
				if (entry->unk1A <= 0) {
					entry->unk18 = 0;
				}
			}
		}
		entry++;
	} while (entry != &D_80153300);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E520C_F41BC.s")
#endif

#ifdef NON_MATCHING
void func_800E52E8_F4298(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, u8 arg6) {
	u8 i;
	u8 slot;
	u8 minValue;
	u8 minSlot;
	s16 start[2];
	s16 end[2];
	u8 color[3];

	start[0] = arg0;
	start[1] = arg2;
	end[0] = arg3;
	end[1] = (s16) arg5;

	color[0] = D_8013E40C_14D3BC[0];
	color[1] = D_8013E40C_14D3BC[1];
	color[2] = D_8013E40C_14D3BC[2];

	slot = 0x40;
	for (i = 0; i < 0x40; i++) {
		if (((Unk80152D00SubEntry *) D_80152D00)[i].unk0 == 0) {
			slot = i;
			break;
		}
	}

	if (slot == 0x40) {
		minValue = D_8013DD18_14CCC8[2];
		for (i = 0; i < 0x40; i++) {
			if (minValue >= ((Unk80152D00SubEntry *) D_80152D00)[i].unk2) {
				minSlot = i;
				minValue = ((Unk80152D00SubEntry *) D_80152D00)[i].unk2;
			}
		}
		slot = minSlot;
	}

	((Unk80152D00SubEntry *) D_80152D00)[slot].unk10 = 0;
	((Unk80152D00SubEntry *) D_80152D00)[slot].unk14 = arg6;
	((Unk80152D00SubEntry *) D_80152D00)[slot].unk0 = 1;
	((Unk80152D00SubEntry *) D_80152D00)[slot].unk2 = D_8013DD18_14CCC8[arg6];
	((Unk80152D00SubEntry *) D_80152D00)[slot].unk4 = arg0;
	((Unk80152D00SubEntry *) D_80152D00)[slot].unk6 = arg1;
	((Unk80152D00SubEntry *) D_80152D00)[slot].unk8 = arg2;
	((Unk80152D00SubEntry *) D_80152D00)[slot].unkA = arg3;
	((Unk80152D00SubEntry *) D_80152D00)[slot].unkC = (s16) arg4;
	((Unk80152D00SubEntry *) D_80152D00)[slot].unkE = (s16) arg5;

	func_800B1A68_C0A18(start, end, color, D_80152D00);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E52E8_F4298.s")
#endif

#ifdef NON_MATCHING
void func_800E5450_F4400(s32 arg0, s32 arg1) {
	u8 i;
	u8 slot;
	u8 minValue;
	u8 minSlot;
	s16 temp;
	Unk80152B80 *entry;
	
	slot = 0x40;
	for (i = 0; i < 0x40; i++) {
		if (D_80152D00[i].unk0 == 0) {
			slot = i;
			break;
		}
	}
	
	if (slot == 0x40) {
		minValue = D_8013DD1A;
		for (i = 0; i < 0x40; i++) {
			temp = D_80152D00[i].unk2;
			if (minValue >= temp) {
				minSlot = i;
				minValue = temp;
			}
		}
		slot = minSlot;
	}
	
	entry = &D_80152D00[slot];
	entry->unk2 = 10;
	*(s32 *)&entry->unk8 = arg0;
	entry->unk0 = 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5450_F4400.s")
#endif

void func_800E5520_F44D0(s32 arg0, s32 arg1) {
}

void func_800E552C_F44DC(void) {
	D_80152C96 = 0;
}

// CURRENT(28573)
#ifdef NON_MATCHING
void func_800E5538_F44E8(void) {
	s16 spCC;
	s16 spCA;
	s16 spC8;
	s16 spC4;
	s16 spC2;
	s16 spC0;
	s16 spBC;
	s16 spBA;
	s16 spB8;
	f64 temp_f20;
	s16 temp_t9;
	s16 var_a2;
	s16 var_a3;
	s16 var_t0;
	s16 var_t1;
	s16 var_t2;
	s32 temp_a0;
	s32 temp_s5;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s32 pad6;
	s32 pad7;
	s32 temp_t7;
	s32 var_s2;
	u8 temp_v0_4;
	u8 temp_v0_7;
	u8 temp_v1_2;
	VehicleInstance *vehicle;
	BuildingInstance *building;
	Unk80152CA0Entry *entry;
	s32 segment;
	s32 alpha;

	gDPPipeSync(D_8005BB2C++);
	temp_s5 = D_80052A8C;
	temp_s5 = (temp_s5 * 4) & 0xFF;
	gDPSetRenderMode(D_8005BB2C++, G_RM_ZB_XLU_SURF, G_RM_ZB_XLU_SURF2);
	gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);

	var_s2 = 0;
	if (D_80152C96 > 0) {
		temp_f20 = D_801441E0_153190;
		do {
			entry = &D_80152CA0[var_s2];
			temp_v0_4 = entry->unk1;
			var_a3 = 0x64;
			if (temp_v0_4 != 0) {
				temp_a0 = 0x40 - (temp_s5 / 2);
				if (temp_v0_4 == 2) {
					vehicle = &vehicleInstances[entry->unk0];
					var_t0 = vehicle->unk0;
					var_t1 = vehicle->unk2;
					var_t2 = vehicle->unk4;
					var_a2 = D_80257A0C[vehicle->unk1A] * 28;
				} else {
					building = &buildingInstances[entry->unk0];
					var_t0 = building->xCoord;
					var_t1 = building->yCoord;
					var_t2 = building->zCoord;
					var_a2 = buildingSpecs[building->buildingType].unk14 * 15;
				}

				temp_v0_7 = entry->unk2;
				if (temp_v0_7 != 0) {
					var_a3 = temp_v0_7;
				}

				alpha = (s32)((f64)var_a3 * temp_f20);
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x64, 0xA0, 0xF0, alpha & 0xFF);

				if (temp_a0 < 0) {
					temp_t7 = -temp_a0;
				} else {
					temp_t7 = temp_a0;
				}
				spB8 = (temp_t7 * 2) + var_a2;
				if (temp_a0 < 0) {
					temp_t7 = -temp_a0;
				} else {
					temp_t7 = temp_a0;
				}
				spBA = (temp_t7 * 2) + var_a2;
				if (temp_a0 < 0) {
					temp_t7 = -temp_a0;
				} else {
					temp_t7 = temp_a0;
				}
				spBC = (temp_t7 * 2) + var_a2;

				if (entry->unk2 != 0) {
					temp_v1_2 = entry->unk2;
					spB8 += ((0x64 - temp_v1_2) * spB8) / 0xC8;
					spBA += ((0x64 - entry->unk2) * spBA) / 0xC8;
					spBC += ((0x64 - entry->unk2) * spBC) / 0xC8;
				}

				spC0 = temp_s5 << 8;
				spC2 = 0;
				spC4 = 0;
				spC8 = var_t0;
				spCA = var_t1;
				spCC = var_t2;
				segment = D_8005BB38 + 0x40;
				D_8005BB38 = segment;
				func_800039D0_45D0((Unk80052B40 *)&spC8, (Unk80052B40 *)&spC0, (Unk80052B40 *)&spB8, segment);

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
				gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				D_8005BB38 += 0x40;
				gSPDisplayList(D_8005BB2C++, (u32)&D_50332A0);
				gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
			}

			temp_t7 = (var_s2 + 1) & 0xFF;
			var_s2 = temp_t7;
		} while (temp_t7 < D_80152C96);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5538_F44E8.s")
#endif

// CURRENT(1674)
#ifdef NON_MATCHING
// Remove shield (wtf is a shield?)
void func_800E5B78_F4B28(void) {
	Unk80152CA0Entry *entry;
	s16 i;
	s16 j;
	s16 count;
	u32 val;
	u32 shifted;

	count = D_80152C96;
	for (i = 0; i < count; i++) {
		entry = &D_80152CA0[i];

		// Decrement the counter if not 0
		if (entry->unk2 != 0) {
			entry->unk2--;
		}

		// If counter reaches 1, remove the shield
		if (entry->unk2 == 1) {
			// Clear the flag from the target
			if (entry->unk1 == 2) {
				// Vehicle shield
				vehicleInstances[entry->unk0].unk20 &= ~0x80;
			} else if (entry->unk1 == 1) {
				// Building shield
				val = buildingInstances[entry->unk0].unk8;
				shifted = val >> 12;
				buildingInstances[entry->unk0].unk8 = ((((shifted & ~0x1000) ^ shifted) << 12) ^ val);
			}

			// Remove this entry by copying remaining entries down
			count--;
			for (j = i; j < count; j++) {
				D_80152CA0[j] = D_80152CA0[j + 1];
			}
			D_80152C96 = count;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5B78_F4B28.s")
#endif

// Allocate shield (wtf is a shield?)
void func_800E5CF4_F4CA4(u8 arg0, u8 arg1) {
	Unk80152CA0Entry *entry;
	s16 count;

	if (arg0 == 2 && (vehicleInstances[arg1].unk20 & 0x80)) {
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
		osSyncPrintf(&D_80143F58_152F08); // Error: too many shields allocated
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

// CURRENT(4465)
#ifdef NON_MATCHING
// Remove shield (wtf is a shield?)
void func_800E5E3C_F4DEC(u8 arg0, u8 arg1) {
	s16 var_s2;
	s16 var_v0;
	s16 temp_a1_2;
	s16 temp_a2_2;
	s32 var_a3;
	u8 temp_a1;
	u8 temp_v0;
	Unk80152CA0Entry *temp_v1;

	osSyncPrintf(&D_80143F7C_152F2C, (s32) arg1);
	temp_a2_2 = D_80152C96;
	var_s2 = 0;
	var_a3 = arg0;

	if (temp_a2_2 >= 0) {
		do {
			temp_v1 = &D_80152CA0[var_s2];
			temp_v0 = temp_v1->unk1;
			if (var_a3 == temp_v0) {
				temp_a1 = temp_v1->unk0;
				if (arg1 == temp_a1) {
					if (temp_v0 == 2) {
						vehicleInstances[temp_a1].unk20 &= ~0x80;
					} else if (temp_v0 == 1) {
						u32 temp_v1_2;
						u32 temp_a0;

						temp_v1_2 = buildingInstances[temp_a1].unk8;
						temp_a0 = temp_v1_2 >> 0xC;
						buildingInstances[temp_a1].unk8 = ((((temp_a0 & ~0x1000) ^ temp_a0) << 0xC) ^ temp_v1_2);
					}

					temp_a1_2 = temp_a2_2 - 1;
					var_v0 = var_s2;
					if (var_s2 < temp_a1_2) {
						do {
							temp_v1 = &D_80152CA0[var_v0];
							temp_v1->unk0 = (temp_v1 + 1)->unk0;
							temp_v1->unk1 = (temp_v1 + 1)->unk1;
							temp_v1->unk2 = (temp_v1 + 1)->unk2;
							var_v0 += 1;
						} while (var_v0 < temp_a1_2);
					}

					D_80152C96 = temp_a1_2;
					temp_v1 = &D_80152CA0[var_v0];
					((u8 *)temp_v1)[5] = 0;
					((u8 *)temp_v1)[3] = 0;
					osSyncPrintf(&D_80143F94_152F44, (s32) temp_a1_2, (s32) temp_a2_2, var_a3);
					((u8 *)temp_v1)[4] = 0;
					temp_a2_2 = D_80152C96;
				}
			}
			var_s2 += 1;
		} while (temp_a2_2 >= var_s2);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5E3C_F4DEC.s")
#endif

void func_800E6028_F4FD8(u8 arg0, u8 arg1) {
	s16 i;

	osSyncPrintf(&D_80143FA4_152F54, (s32) arg1); // removing shield : %d
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
// CURRENT(15923)
void func_800E614C_F50FC(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	Unk800E614CFxSlot *slots;
	Unk800E614CFxSlot *slot;
	s32 slotIdx;

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
		slots = (Unk800E614CFxSlot *) &D_80153300;
		slotIdx = 0;
		while (slots[slotIdx].unk1E6 != 0) {
			slotIdx++;
		}

		if (arg3 != 0) {
			s32 i;
			s32 xBase;
			s32 zBase;

			xBase = arg0 << 8;
			zBase = arg2 << 8;

			for (i = arg3 - 1;; i--) {
				Unk800E614CFxEntry *entry;
				s32 z;

				entry = &slots[slotIdx].entries[i];
				entry->unk0 = (func_800038E0_44E0() * 2) + xBase;
				z = (func_800038E0_44E0() * 2) + zBase;
				entry->unk8 = z;
				entry->unk4 = func_800B84D0_C7480((s16) (entry->unk0 >> 8), (s16) (z >> 8));
				if (entry->unk4 < ((D_80222A70 + 0xC8) << 8)) {
					entry->unk4 = (((func_800038E0_44E0() % 100) + D_80222A70) + 0xC8) << 8;
				}
				entry->unkC = 0;
				entry->unk10 = 0;
				entry->unk14 = 0;
				entry->unk18 = func_800038E0_44E0() & 0x1F;

				if (i == 0) {
					break;
				}
			}
		}

		slot = &slots[slotIdx];
		slot->unk1C0 = arg0 << 8;
		slot->unk1C4 = arg1 << 8;
		slot->unk1C8 = arg2 << 8;

		{
			s16 angle;
			s32 scale;

			angle = func_800038E0_44E0();
			scale = D_800313F4 * 100;
			slot->unk1CC = (s32) ((((f64) coss((u16) angle)) / 32768.0) * (f64) scale);
			slot->unk1D0 = 0;
			slot->unk1D4 = (s32) ((((f64) sins((u16) angle)) / 32768.0) * (f64) scale);
		}

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

// CURRENT(9670)
#ifdef NON_MATCHING
void func_800E64B4_F5464(void) {
	Unk800E614CFxSlot *slot;
	s32 pad0;
	s32 pad1;
	Unk800E614CFxEntry *entry;
	s32 slotCount;
	s32 activeCount;
	f64 scale;

	activeCount = 0;
	if (currentLevel != 1) {
		return;
	}

	scale = D_801441E8_153198;
	slot = &D_801538C4;
	for (slotCount = 4; slotCount != 0; slotCount--) {
		s16 fxCount;

		fxCount = slot->unk1E6;
		if (fxCount != 0) {
			s32 x;
			s32 z;
			s32 distance;

			x = slot->unk1C0 + slot->unk1CC;
			slot->unk1C0 = x;
			z = slot->unk1C8 + slot->unk1D4;
			slot->unk1C8 = z;
			slot->unk1DC += slot->unk1E0;
			slot->unk1C4 = func_800B84D0_C7480((s16) (x >> 8), (s16) (z >> 8));
			if (slot->unk1C4 < (D_80222A70 << 8)) {
				slot->unk1C4 = D_80222A70 << 8;
			}

			slot->unk1C4 += slot->unk1DC;
			if (slot->unk1C0 >= 0x7A0001) {
				slot->unk1CC = -0x1770;
				slot->unk1D4 = 0;
				slot->unk1E4 = -0x8000;
			}
			if (slot->unk1C0 < (s32) 0xFF860000) {
				slot->unk1CC = 0x1770;
				slot->unk1D4 = 0;
				slot->unk1E4 = 0;
			}

			if (slot->unk1C8 >= 0x7A0001) {
				slot->unk1CC = 0;
				slot->unk1D4 = -0x1770;
				slot->unk1E4 = -0x4000;
			}
			if (slot->unk1C8 < (s32) 0xFF860000) {
				slot->unk1CC = 0;
				slot->unk1D4 = 0x1770;
				slot->unk1E4 = 0x4000;
			}

			if (slot->unk1E8-- <= 0) {
				s16 angle;

				slot->unk1E8 = func_800038E0_44E0() & 0x24;
				slot->unk1E0 = 0;
				angle = (slot->unk1E4 + (func_800038E0_44E0() & 0x1FFF)) - 0xFFF;
				slot->unk1E4 = angle;
				slot->unk1CC = (s32) (((f64) (f32) coss((u16) angle) / 32768.0) * scale);
				slot->unk1D4 = (s32) (((f64) (f32) sins((u16) slot->unk1E4) / 32768.0) * scale);
			}

			distance = func_800047FC_53FC((s16) ((((slot->unk1C0 >> 8) - D_80052B34->unk0) >> 8)));
			distance += func_800047FC_53FC((s16) ((((slot->unk1C8 >> 8) - D_80052B34->unk4) >> 8)));
			if (distance >= 0x1F5) {
				slot->unk1E6 = 0;
			} else {
				s32 remain;

				activeCount++;
				remain = fxCount;
				entry = &slot->entries[fxCount - 1];
				while (remain != 0) {
					s32 delta;

					delta = -0x46;
					if (entry->unk0 < slot->unk1C0) {
						delta = 0x46;
					}
					entry->unkC += delta;
					entry->unk0 += entry->unkC;

					delta = -0x14;
					if (entry->unk4 < slot->unk1C4) {
						delta = 0x1E;
					}
					entry->unk10 += delta;
					entry->unk4 += entry->unk10;

					delta = -0x46;
					if (entry->unk8 < slot->unk1C8) {
						delta = 0x46;
					}
					entry->unk18--;
					entry->unk14 += delta;
					entry->unk8 += entry->unk14;

					if (entry->unk18 < 0) {
						entry->unk18 = 0x1F;
					}

					if (entry->unk10 > 0x6A4) {
						entry->unk10 = 0x6A4;
					} else if (entry->unk10 < -0x6A4) {
						entry->unk10 = -0x6A4;
					}

					if (entry->unkC > 0x1B58) {
						entry->unkC = 0x1B58;
					} else if (entry->unkC < -0x1B58) {
						entry->unkC = -0x1B58;
					}

					if (entry->unk14 > 0x1B58) {
						entry->unk14 = 0x1B58;
					} else if (entry->unk14 < -0x1B58) {
						entry->unk14 = -0x1B58;
					}

					entry--;
					remain--;
				}
			}
		}

		slot--;
	}

	if (!(D_80052A8C & 0x1F) && (activeCount < 4)) {
		s16 cosVal;
		s16 sinVal;
		s32 random;

		random = func_800038E0_44E0();
		cosVal = coss((u16) random);
		sinVal = sins((u16) func_800038E0_44E0());
		func_800E614C_F50FC(
			(s16) (s32) (((((f64) (f32) cosVal / 32768.0) * 256.0) * 12.0) + (f64) D_80052B34->unk0),
			0,
			(s16) (s32) (((((f64) (f32) sinVal / 32768.0) * 256.0) * 12.0) + (f64) D_80052B34->unk4),
			(s16) ((func_800038E0_44E0() % 16) + 1));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E64B4_F5464.s")
#endif

// CURRENT(15873)
#ifdef NON_MATCHING
void func_800E6A38_F59E8(void) {
	Unk800E614CFxSlot *slot;
	Unk800E614CFxEntry *entry;
	s32 slotCount;

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
	gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 15);
	gDPLoadSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_4b, 0, 0, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gDPPipeSync(D_8005BB2C++);
	gDPTileSync(D_8005BB2C++);
	gDPLoadSync(D_8005BB2C++);

	slot = &D_801538C4;
	for (slotCount = 0; slotCount < 3; slotCount++) {
		s16 remain;

		remain = slot->unk1E6;
		if (remain != 0) {
			entry = &slot->entries[remain - 1];
			while (remain != 0) {
				s16 baseX;
				s16 baseY;
				s16 baseZ;
				s16 angle;
				s16 radius;
				s16 xOff;
				s16 zOff;
				s16 yTop;
				s16 animType;
				Vtx *vtx0;
				Vtx *vtx1;
				Vtx *vtx2;
				Vtx *vtx3;
				Vtx *vtx4;
				Vtx *vtx5;

				baseX = (s16)((s32)entry->unk0 >> 8);
				baseY = (s16)(((s32 *)D_8013DF00_14CEB0)[entry->unk18] + entry->unk4 >> 8);
				baseZ = (s16)((s32)entry->unk8 >> 8);
				angle = func_80003824_4424((f32)entry->unk14, (f32)entry->unkC);
				animType = entry->unk18;

				if ((animType < 0xB) || (animType >= 0x1B)) {
					radius = animType & 3;
					if (radius == 3) {
						radius = 1;
					}
				} else {
					radius = 2;
				}

				radius = (radius * 20) + 20;
				xOff = (s16)((((f64)(f32)coss((u16)-angle) / 32768.0) * (f64)radius));
				zOff = (s16)((((f64)(f32)sins((u16)-angle) / 32768.0) * (f64)radius));
				yTop = baseY + 0x14;

				vtx0 = D_8005BB34;
				D_8005BB34++;
				vtx0->v.ob[0] = baseX;
				vtx0->v.ob[1] = baseY;
				vtx0->v.ob[2] = baseZ;
				vtx0->v.flag = 0;
				vtx0->v.tc[0] = 0x1000;
				vtx0->v.tc[1] = 0x0800;

				vtx1 = D_8005BB34;
				D_8005BB34++;
				vtx1->v.ob[0] = baseX;
				vtx1->v.ob[1] = yTop;
				vtx1->v.ob[2] = baseZ;
				vtx1->v.flag = 0;
				vtx1->v.tc[0] = 0x1000;
				vtx1->v.tc[1] = 0;

				vtx2 = D_8005BB34;
				D_8005BB34++;
				vtx2->v.ob[0] = baseX + xOff;
				vtx2->v.ob[1] = yTop;
				vtx2->v.ob[2] = baseZ + zOff;
				vtx2->v.flag = 0;
				vtx2->v.tc[0] = 0;
				vtx2->v.tc[1] = 0x0800;

				vtx3 = D_8005BB34;
				D_8005BB34++;
				vtx3->v.ob[0] = baseX - xOff;
				vtx3->v.ob[1] = yTop;
				vtx3->v.ob[2] = baseZ - zOff;
				vtx3->v.flag = 0;
				vtx3->v.tc[0] = 0x1000;
				vtx3->v.tc[1] = 0;

				entry--;
				vtx4 = D_8005BB34;
				D_8005BB34++;
				vtx4->v.ob[0] = baseX + (s16)((s32)entry->unk10 >> 7);
				vtx4->v.ob[1] = baseY + (s16)((s32)entry->unk14 >> 7) + 0x14;
				vtx4->v.ob[2] = baseZ + (s16)((s32)entry->unk18 >> 7);
				vtx4->v.flag = 0;
				vtx4->v.tc[0] = 0;
				vtx4->v.tc[1] = 0x0800;

				vtx5 = D_8005BB34;
				D_8005BB34++;
				*vtx5 = *vtx4;
				vtx5->v.tc[1] = 0;

				vtx0->v.cn[0] = 0;
				vtx0->v.cn[1] = 0;
				vtx0->v.cn[2] = 0;
				vtx0->v.cn[3] = 0xFF;
				vtx1->v.cn[0] = 0;
				vtx1->v.cn[1] = 0;
				vtx1->v.cn[2] = 0;
				vtx1->v.cn[3] = 0xFF;
				vtx2->v.cn[0] = 0;
				vtx2->v.cn[1] = 0;
				vtx2->v.cn[2] = 0;
				vtx2->v.cn[3] = 0xFF;
				vtx3->v.cn[0] = 0;
				vtx3->v.cn[1] = 0;
				vtx3->v.cn[2] = 0;
				vtx3->v.cn[3] = 0xFF;
				vtx4->v.cn[0] = 0;
				vtx4->v.cn[1] = 0;
				vtx4->v.cn[2] = 0;
				vtx4->v.cn[3] = 0xFF;
				vtx5->v.cn[0] = 0;
				vtx5->v.cn[1] = 0;
				vtx5->v.cn[2] = 0;
				vtx5->v.cn[3] = 0xFF;

				gSPVertex(D_8005BB2C++, vtx0, 6, 0);
				gSP1Triangle(D_8005BB2C++, 0, 1, 4, 0);
				gSP1Triangle(D_8005BB2C++, 2, 3, 5, 0);

				remain--;
			}
		}

		slot--;
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
	gSPMatrix(D_8005BB2C++, (Mtx *)((u32) &D_80031160 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
}

// displayFXOnWater - Ripples, splashes etc
void func_800E7234_F61E4(void) {
	gSPMatrix(D_8005BB2C++, (Mtx *)((u32) &D_80031160 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	func_800DD604_EC5B4(&D_8005BB2C);
	func_800E6A38_F59E8();
	func_800CFD84_DED34();
	func_800E5538_F44E8();
}

#ifdef NON_MATCHING
void func_800E72A0_F6250(void)
{
	Level *new_var;
	if ((*(new_var = &currentLevel)) == 2)
	{
		if (func_8000726C_7E6C(0x1E) == 0)
		{
			func_800E2830_F17E0();
		}
	}
	else if ((*new_var) == 4)
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E72A0_F6250.s")
#endif

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

#ifdef NON_MATCHING
void func_800E74DC_F648C(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4, u8 arg5) {
	temp_t2 = arg3;
	D_80157532 = temp_t2;
	var_v1 = temp_t2;
	if ((s32)arg4 < (s32)temp_t2) {
		var_v1 = arg4;
	}
	temp_lo = (s32)arg4 / (s32)var_v1;
	D_80157533 = temp_lo;
	D_80157534 = temp_lo;
	D_80157536 = arg0;
	D_80157538 = arg1;
	D_8015753A = arg2;
	D_8015753C = arg5;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E74DC_F648C.s")
#endif

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
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (((func_800038E0_44E0() % 8) << 9) + (s32)&D_100C700) & 0x1FFFFFFF);
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
