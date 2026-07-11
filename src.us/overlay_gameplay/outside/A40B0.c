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
const u32 jtbl_80142308_1512B8[] = {0x800953B0, 0x800953B8, 0x800953C0, 0x800953C8, 0x800953D0, 0x800953C0, 0x800953F8, 0x80095408};
const f64 D_80142328_1512D8[] = {1000.0};
const u32 jtbl_80142330_1512E0[] = {0x80095494, 0x80095494, 0x80095494, 0x80095494, 0x800954AC, 0x800954C4, 0x80095508, 0x00000000};
const f64 D_80142350_151300[] = {180.0};
const f64 D_80142358_151308[] = {32767.0};
const u32 jtbl_80142360_151310[] = {0x80095798, 0x800957A4, 0x800957B0, 0x800957BC, 0x800957C8, 0x800957B0, 0x800957F4, 0x80095800};
const f64 D_80142380_151330[] = {1000.0};
const u32 jtbl_80142388_151338[] = {0x800958F0, 0x800958F8, 0x80095900, 0x80095908, 0x80095910, 0x80095900, 0x80095934, 0x00000000};
const f64 D_801423A8_151358[] = {1000.0};

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
	{(s32)0x80141F30, (s32)0x80257A00, (s32)0x80257A40, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x04, 0x00, 0x00}, 0x00000002},
	{(s32)0x80141F3C, (s32)0x80257A00, (s32)0x80257A42, {0xFF, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00}, 0x00000002},
	{(s32)0x80141F48, (s32)0x80257A00, (s32)0x80257A3E, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000000},
	{(s32)0x80141F58, (s32)0x80257A00, (s32)0x80257A48, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x80141F64, (s32)0x80257A00, (s32)0x80257A5A, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x04, 0x00, 0x00}, 0x00000000},
	{(s32)0x80141F74, (s32)0x80257A00, (s32)0x80257A66, {0xFF, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x80141F80, (s32)0x80257A00, (s32)0x80257A52, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000000},
	{(s32)0x80141F8C, (s32)0x80257A00, (s32)0x80257A46, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x04, 0x00, 0x00}, 0x00000000},
	{(s32)0x80141F98, (s32)0x80257A00, (s32)0x80257A47, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x04, 0x00, 0x00}, 0x00000000},
	{(s32)0x80141FA4, (s32)0x80257A00, (s32)0x80257A3C, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x80141FB0, (s32)0x80257A00, (s32)0x80257A50, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000000},
	{(s32)0x80141FC0, (s32)0x80257A00, (s32)0x80257A1C, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x63, 0x00, 0x04, 0x00, 0x00}, 0x00000003},
	{(s32)0x80141FCC, (s32)0x80257A00, (s32)0x80257A28, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3E, 0x00, 0x04, 0x00, 0x00}, 0x00000003},
	{(s32)0x80141FD8, (s32)0x80257A00, (s32)0x80257A20, {0xFF, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x80141FE4, (s32)0x80257A00, (s32)0x80257A22, {0xFF, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x80141FF0, (s32)0x80257A00, (s32)0x80257A24, {0xFF, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x80141FFC, (s32)0x80257A00, (s32)0x80257A32, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x80142004, (s32)0x80257A00, (s32)0x80257A3A, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x8014200C, (s32)0x80257A00, (s32)0x80257A57, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000000},
	{(s32)0x80142014, (s32)0x80257A00, (s32)0x80257A56, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000000},
	{(s32)0x80142020, (s32)0x80257A00, (s32)0x80257A0E, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x80142030, (s32)0x80257A00, (s32)0x80257A10, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x8014203C, (s32)0x80257A00, (s32)0x80257A12, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x80142048, (s32)0x80257A00, (s32)0x80257A5C, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000000},
	{(s32)0x80142054, (s32)0x80257A00, (s32)0x80257A5D, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000000},
	{(s32)0x80142060, (s32)0x80257A00, (s32)0x80257A44, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000000},
	{(s32)0x80142068, (s32)0x80257A00, (s32)0x80257A45, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000000},
	{(s32)0x80142070, (s32)0x80257A00, (s32)0x80257A14, {0xFF, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x80142078, (s32)0x80257A00, (s32)0x80257A65, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000000},
	{(s32)0x80142084, (s32)0x80257A00, (s32)0x80257A6C, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xE8, 0x00, 0x03, 0x00, 0x00}, 0x00000000},
	{(s32)0x80142090, (s32)0x80257A00, (s32)0x80257A6D, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000000},
	{(s32)0x8014209C, (s32)0x80257A00, (s32)0x80257A16, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0x00, 0x00}, 0x00000000},
	{(s32)0x801420AC, (s32)0x80047743, 0x00000000, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x04, 0x00, 0x00}, 0x00000000},
	{(s32)0x801420B0, (s32)0x80047744, 0x00000000, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x04, 0x00, 0x00}, 0x00000000},
	{(s32)0x801420B8, (s32)0x80047745, 0x00000000, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x04, 0x00, 0x00}, 0x00000000},
	{(s32)0x801420C0, (s32)0x800313F4, 0x00000000, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x04, 0x00, 0x00}, 0x00000000},
	{(s32)0x801420C8, (s32)0x800313F8, 0x00000000, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xE8, 0x00, 0x04, 0x00, 0x00}, 0x00000002},
	{(s32)0x801420D4, (s32)0x800313FC, 0x00000000, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xE8, 0x00, 0x04, 0x00, 0x00}, 0x00000002},
	{(s32)0x801420E0, (s32)0x8013D94C, 0x00000000, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x04, 0x00, 0x00}, 0x00000000},
	{(s32)0x801420EC, (s32)0x8013D950, 0x00000000, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x04, 0x00, 0x00}, 0x00000000},
	{(s32)0x801420F8, (s32)0x8013D954, 0x00000000, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x04, 0x00, 0x00}, 0x00000000},
	{(s32)0x80142104, (s32)0x8013D940, 0x00000000, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x04, 0x00, 0x00}, 0x00000000},
	{(s32)0x80142114, (s32)0x8013D944, 0x00000000, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x04, 0x00, 0x00}, 0x00000000},
	{(s32)0x80142124, (s32)0x8013D948, 0x00000000, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x04, 0x00, 0x00}, 0x00000000},
	{(s32)0x80142134, (s32)0x8013D948, 0x00000000, {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x04, 0x00, 0x00}, 0x00000000},
	{(s32)0x80142140, (s32)0x80047710, 0x00000000, {0xFF, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x8014214C, (s32)0x80047712, 0x00000000, {0xFF, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x80142158, (s32)0x80047714, 0x00000000, {0xFF, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x80142164, (s32)0x80047716, 0x00000000, {0xFF, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x80142170, (s32)0x80047718, 0x00000000, {0xFF, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x8014217C, (s32)0x8004771A, 0x00000000, {0xFF, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x80142188, (s32)0x8004771C, 0x00000000, {0xFF, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{(s32)0x80142194, (s32)0x8004771E, 0x00000000, {0xFF, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0x00, 0x03, 0x00, 0x00}, 0x00000002},
	{0, 0, 0, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 0},
};

// https://decomp.me/scratch/tIoTN
// CURRENT(8220)
#ifdef NON_MATCHING
// Debug - display property
void func_80095100_A40B0(s16 arg0, s16 arg1)
{
  s32 s0;
  s32 sp38;
  DebugPropEntry *v0;
  u8 *v1;
  s0 = 0;
  if (arg0 < 0x20)
  {
	v0 = &D_8013CBC0[arg0];
	v1 = (u8 *)&vehicleSpecs[D_80052B34->unk1A] + ((v0->unk8 - v0->unk4) & 0xFFFFFFFFu);
  }
  else if (arg0 < 0x35)
  {
	v0 = &D_8013CBC0[arg0];
	v1 = (u8 *) v0->unk4;
  }
  else if (arg0 < 0x40)
  {
	v0 = &D_8013CBC0[arg0];
	v1 = (u8 *)&D_801601F0[alienSpecs[D_8013CBA4].unk50] + v0->unk8 - v0->unk4;
  }
  else if (arg0 < 0x51)
  {
	v0 = &D_8013CBC0[arg0];
	v1 = (u8 *)&alienSpecs[D_8013CBA4] + (v0->unk8 - v0->unk4);
  }
  else if (arg0 < 0x60)
  {
	v0 = &D_8013CBC0[arg0];
	v1 = (u8 *) v0->unk4;
  }
  else if (arg0 < 0x64)
  {
	v0 = &D_8013CBC0[arg0];
	v1 = (u8 *)&D_8003E290[D_8013CBBC] + (v0->unk8 - v0->unk4);
  }
  else
  {
	v0 = &D_8013CBC0[arg0];
	v1 = (u8 *)&D_80140768_14F718[vehicleSpecs[D_80052B34->unk1A].unk55] + v0->unk8 - v0->unk4;
  }
  drawText(D_801421A0, 3, arg1, v0->unk0, 0x1C, arg1);
  switch (v0->type)
  {
	case 0:
	  s0 = *(u8 *)v1;
	  break;
	case 1:
	  s0 = *(s8 *)v1;
	  break;
	case 2:
	case 5:
	  s0 = *(s16 *)v1;
	  break;
	case 3:
	  s0 = *(s32 *)v1;
	  break;
	case 4:
	  s0 = (s32)(f32)((f64)(f32)(*(f32 *)v1) * D_80142328);
	  break;
	case 6:
	  sp38 = *(s8 *)v1;
	  s0 = *(s8 *)(v1 + 1);
	  break;
	case 7:
	  sp38 = *(s16 *)v1;
	  s0 = *(s16 *)(v1 + 4);
	  break;
	default:
	  s0 = *(s32 *)v1;
	  break;
  }

  if (((D_8014ECF0 == 0) || (D_8014ECF0 == 1)) != 0)
  {
	if ((D_8013CBB4 == 0xB) || (D_8013CBB4 == 0xC))
	{
	  drawText(D_801421A8, D_80034574[s0 * 2]);
	  return;
	}
  }
  if (v0->type >= 7)
  {
	return;
  }
  switch (v0->type)
  {
	case 0:
	case 1:
	case 2:
	case 3:
	  drawText(D_801421AC, s0);
	  return;
	case 4:
	  drawText(D_801421B0, s0);
	  return;
	case 5:
	{
	  f32 f18 = (f32) s0;
	  drawText(D_801421B4, (((f64) f18) * D_80142350) / D_80142358);
	  return;
	}
	case 6:
	  drawText(D_801421B8, sp38, s0);
	  return;
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A40B0/func_80095100_A40B0.s")
#endif

// Debug - menu navigation?
// CURRENT(9198)
#ifdef NON_MATCHING
void func_80095530_A44E0(s16 arg0) {
	typedef struct {
		s32 unk0;
		s32 unk4;
		s32 unk8;
		s32 unkC;
		s32 unk10;
		s16 unk14;
		u16 pad16;
		u32 type;
	} DebugPropEntryNav;

	DebugPropEntry *entry;
	DebugPropEntryNav *entryNav;
	u8 *propPtr;
	s32 value;
	s32 value2;
	u32 type;
	s16 shift;
	s16 propIndex;
	s32 alienIndex;

	propIndex = arg0;
	if (propIndex < 0x20) {
		entry = &D_8013CBC0_14BB70[propIndex];
		propPtr = (u8 *)&vehicleSpecs[D_80052B20->unk1A] + (entry->unk8 - entry->unk4);
	} else if (arg0 < 0x35) {
		entry = &D_8013CBC0_14BB70[arg0];
		propPtr = (u8 *) entry->unk4;
	} else if (arg0 < 0x40) {
		entry = &D_8013CBC0_14BB70[arg0];
		alienIndex = alienSpecs[D_8013CBA4_14BB54].unk50;
		propPtr = (u8 *)&D_801601F0[alienIndex] + (entry->unk8 - entry->unk4);
	} else if (arg0 < 0x51) {
		entry = &D_8013CBC0_14BB70[arg0];
		propPtr = (u8 *)&alienSpecs[D_8013CBA4_14BB54] + (entry->unk8 - entry->unk4);
	} else if (arg0 < 0x60) {
		entry = &D_8013CBC0_14BB70[arg0];
		propPtr = (u8 *) entry->unk4;
	} else if (arg0 < 0x64) {
		entry = &D_8013CBC0_14BB70[arg0];
		propPtr = (u8 *)&D_8003E290[D_8013CBBC_14BB6C] + (entry->unk8 - entry->unk4);
	} else {
		entry = &D_8013CBC0_14BB70[arg0];
		propPtr = (u8 *)&D_80140768_14F718[vehicleSpecs[D_80052B34->unk1A].unk55] + (entry->unk8 - entry->unk4);
	}

	entryNav = (DebugPropEntryNav *) entry;
	type = entryNav->type;
	value2 = arg0;

	switch (type) {
	case 0:
		value = *(u8 *) propPtr;
		break;
	case 1:
		value = *(s8 *) propPtr;
		break;
	case 2:
	case 5:
		value = *(s16 *) propPtr;
		break;
	case 3:
		value = *(s32 *) propPtr;
		break;
	case 4:
		value = (s32)(f32)((f64)(f32)*(f32 *)propPtr * D_80142380_151330);
		break;
	case 6:
		value2 = *(s8 *) propPtr;
		value = *(s8 *) (propPtr + 1);
		break;
	case 7:
		value2 = *(s16 *) propPtr;
		value = *(s16 *) (propPtr + 4);
		break;
	default:
		value = *(s32 *) propPtr;
		break;
	}

	if (currentControllerStates[0].button & 0x200) {
		value--;
	}
	if (currentControllerStates[0].button & 0x100) {
		value++;
	}

	shift = entryNav->unk14;
	if (type == 6) {
		value2 += currentControllerStates[0].stick_x >> shift;
		value -= currentControllerStates[0].stick_y >> shift;
		if (value2 < entryNav->unkC) {
			value2 = entryNav->unkC;
		}
		if (value2 > entryNav->unk10) {
			value2 = entryNav->unk10;
		}
	} else {
		value += (currentControllerStates[0].stick_y >> shift) + (currentControllerStates[0].stick_x >> (shift + 2));
	}

	if (value < entryNav->unkC) {
		value = entryNav->unkC;
	}
	if (value > entryNav->unk10) {
		value = entryNav->unk10;
	}

	if (type < 7) {
		switch (type) {
		case 0:
		case 1:
			*(s8 *) propPtr = value;
			break;
		case 2:
		case 5:
			*(s16 *) propPtr = value;
			break;
		case 3:
			*(s32 *) propPtr = value;
			break;
		case 4:
			*(f32 *) propPtr = (f32) ((f64) value / D_801423A8_151358);
			break;
		case 6:
			*(s8 *) propPtr = value2;
			*(s8 *) (propPtr + 1) = value;
			break;
		default:
			*(s32 *) propPtr = value;
			break;
		}
	} else {
		*(s32 *) propPtr = value;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A40B0/func_80095530_A44E0.s")
#endif

// Debug - display menu items
#ifdef NON_MATCHING
void func_8009594C_A48FC(s16 arg0, s16 arg1) {
	s32 var_s0;
	s32 var_s1;
	s32 temp_s2;

	var_s0 = 0;
	if (arg1 > 0) {
		var_s1 = arg0;
		do {
			temp_s2 = var_s0 + 1;
			func_80095100_A40B0(var_s1, temp_s2);
			var_s0 = temp_s2;
			var_s1 += 1;
		} while (temp_s2 != arg1);
	}
	D_8014ECF4 = arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A40B0/func_8009594C_A48FC.s")
#endif

void func_800959DC_A498C(void) {
}
