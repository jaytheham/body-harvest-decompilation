#include <ultra64.h>
#include "common.h"

const char D_801446A0_153650[] = "Error in walker index";
const char D_801446B8_153668[] = "Attempt to get info on unallocated walker ID";
const char D_801446E8_153698[] = "Error in walker index";
const char D_80144700_1536B0[] = "Attempt to force unallocated walker ID";
const char D_80144728_1536D8[] = "Error in walker index";
const char D_80144740_1536F0[] = "Attempt to move unallocated walker ID";
const char D_80144768_153718[] = "Error in walker index";
const char D_80144780_153730[] = "Attempt to move unallocated walker ID";
const char D_801447A8_153758[] = "Error in walker index";
const char D_801447C0_153770[] = "Attempt to move unallocated walker ID";
const char D_801447E8_153798[] = "Error in walker index";
const char D_80144800_1537B0[] = "Attempt to move unallocated walker ID";
const char D_80144828_1537D8[] = "Error in walker index";
const char D_80144840_1537F0[] = "Attempt to move unallocated walker ID";
const char D_80144868_153818[] = "Error in walker index";
const char D_80144880_153830[] = "Attempt to move unallocated walker ID";
const char D_801448A8_153858[] = "FREE WALKER %d: %d walkers allocated\n";
const char D_801448D0_153880[] = "Error in walker index";
const char D_801448E8_153898[] = "Attempt to free unallocated walker ID %d\n";
const char D_80144914_1538C4[] = "CANNOT ALLOCATE NEW WALKER!!!\n";
const char D_80144934_1538E4[] = "ALLOCATE WALKER %d: %d walkers allocated\n";
const char D_80144960_153910[] = "-----------------------------\n";
const char D_80144980_153930[] = "\t%d,%d\n";
const char D_80144988_153938[] = "\t%d\n";
const char D_80144990_153940[] = "\t%f\n";
const char D_80144998_153948[] = "\t%f\n";
const char D_801449A0_153950[] = "\t%d\n";
const char D_801449A8_153958[] = "AARRGGH!! Alien buggered off leaving it's legs behind!\n";

const f64 D_801449E0_153990[1] = {0.99};
const f32 D_801449E8_153998[1] = {0.99};

const f64 D_801449F0_1539A0[1] = {180};

const f64 D_801449F8_1539A8[1] = {180};

const f64 D_80144A00_1539B0[1] = {3.14};

const f64 D_80144A08_1539B8[1] = {180};

const f64 D_80144A10_1539C0[1] = {3.14};

const f64 D_80144A18_1539C8[1] = {180};

const f64 D_80144A20_1539D0[1] = {180};

const f64 D_80144A28_1539D8[1] = {3.141592654};

const f64 D_80144A30_1539E0[1] = {180};

const f64 D_80144A38_1539E8[1] = {1.2};

const char D_80144A40_1539F0[] = "Max static count %d\n";

const f64 D_80144A58_153A08[1] = {2608};

const f64 D_80144A60_153A10[1] = {2000};

const f64 D_80144A68_153A18[1] = {2000};

const f64 D_80144A70_153A20[1] = {2000};

const f64 D_80144A78_153A28[1] = {0.01};

const f64 D_80144A80_153A30[1] = {0.01};

const f64 D_80144A88_153A38[1] = {1.414213562};

const f64 D_80144A90_153A40[1] = {0.9};

const f64 D_80144A98_153A48[1] = {0.1666666667};

const f64 D_80144AA0_153A50[1] = {0.9};

const f64 D_80144AA8_153A58[1] = {0.1666666667};

const f64 D_80144AB0_153A60[1] = {0.1};

const f64 D_80144AB8_153A68[1] = {0.9};

const f64 D_80144AC0_153A70[1] = {0.9};

const f64 D_80144AC8_153A78[1] = {300};

const f64 D_80144AD0_153A80[1] = {0.008333333};

const f64 D_80144AD8_153A88[1] = {0.05};

const f64 D_80144AE0_153A90[1] = {-0.05};

const f64 D_80144AE8_153A98[1] = {0.05};

const f64 D_80144AF0_153AA0[1] = {0.05};

const f64 D_80144AF8_153AA8[1] = {0.05};

const f64 D_80144B00_153AB0[1] = {-0.05};

const f64 D_80144B08_153AB8[1] = {0.05};

const f64 D_80144B10_153AC0[1] = {0.94};

const f64 D_80144B18_153AC8[1] = {0.94};

const f64 D_80144B20_153AD0[1] = {0.05};

const f64 D_80144B28_153AD8[1] = {0.9};

const f64 D_80144B30_153AE0[1] = {300};

const f64 D_80144B38_153AE8[1] = {0.0833333333};

const f64 D_80144B40_153AF0[1] = {0.0833333333};

const f64 D_80144B48_153AF8[1] = {0.97};

const f64 D_80144B50_153B00[1] = {0.97};

const f64 D_80144B58_153B08[1] = {0.1};

const f64 D_80144B60_153B10[1] = {300};

const f64 D_80144B68_153B18[1] = {0.97};

const f64 D_80144B70_153B20[1] = {0.97};

const f64 D_80144B78_153B28[1] = {0.1666666667};

const u32 jtbl_80144B80_153B30[] = {
	0x80106498,
	0x80106498,
	0x80106498,
	0x80106574,
	0x801065A0,
	0x801065A0,
	0x801065D8,
	0x00000000,
};

const f64 D_80144BA0_153B50[1] = {0.001};

const f64 D_80144BA8_153B58[1] = {0.7};

const f64 D_80144BB0_153B60[1] = {221920};

const f64 D_80144BB8_153B68[1] = {221920};

const f64 D_80144BC0_153B70[1] = {0.9};

const f64 D_80144BC8_153B78[1] = {0.7};

const f64 D_80144BD0_153B80[1] = {1.9500000000000001};

const f64 D_80144BD8_153B88[1] = {255};

const f64 D_80144BE0_153B90[1] = {10000};

const f64 D_80144BE8_153B98[1] = {0.05};

const f32 D_80144BF0_153BA0[1] = {0.05};

const f64 D_80144BF8_153BA8[1] = {-0.05};

const f32 D_80144C00_153BB0[1] = {-0.05};

const f64 D_80144C08_153BB8[1] = {0.9};

const f64 D_80144C10_153BC0[1] = {0.33};

const f64 D_80144C18_153BC8[1] = {255};

const f32 D_80144C20_153BD0[1] = {0.98};

const f64 D_80144C28_153BD8[1] = {0.78};

const f32 D_80144C30_153BE0[1] = {6384.0f};
const f32 D_80144C34_153BE4[1] = {10000.0f};

const f64 D_80144C38_153BE8[1] = {0.96};

const f64 D_80144C40_153BF0[1] = {0.31};

const f32 D_80144C48_153BF8[1] = {0.93};

const f64 D_80144C50_153C00[1] = {255};

const f32 D_80144C58_153C08[1] = {0.98};

const f64 D_80144C60_153C10[1] = {0.2};

const f64 D_80144C68_153C18[1] = {0.1};

const f64 D_80144C70_153C20[1] = {0.1};

const f32 D_80144C78_153C28[1] = {0.3};

const f64 D_80144C80_153C30[1] = {0.001};

const f32 D_80144C88_153C38[1] = {0.3};

const f64 D_80144C90_153C40[1] = {0.001};

const f64 D_80144C98_153C48[1] = {0.001};

const f64 D_80144CA0_153C50[1] = {0.001};

const f64 D_80144CA8_153C58[1] = {10000};

const f64 D_80144CB0_153C60[1] = {0.70710678};

const f32 D_80144CB8_153C68[1] = {-737};

const f64 D_80144CC0_153C70[1] = {-1400};

const f64 D_80144CC8_153C78[1] = {255};

const f64 D_80144CD0_153C80[1] = {0.0003};

const f64 D_80144CD8_153C88[1] = {0.845};

const u32 jtbl_80144CE0_153C90[] = {
	0x8010C180,
	0x8010C1C8,
	0x8010C23C,
	0x8010C2D0,
	0x8010C31C,
	0x00000000,
};

const f64 D_80144CF8_153CA8[1] = {1.2};

const f64 D_80144D00_153CB0[1] = {1.2};

const f64 D_80144D08_153CB8[1] = {32767};

const f64 D_80144D10_153CC0[1] = {32767};

const f64 D_80144D18_153CC8[1] = {3000};

const u32 jtbl_80144D20_153CD0[] = {
	0x8010FBBC,
	0x8010FC44,
	0x8010FC5C,
	0x8010FC70,
	0x8010FCF4,
	0x8010FD1C,
	0x8010FD78,
	0x8010FF30,
	0x8010FF20,
	0x8010FBDC,
	0x8010FC04,
	0x8010FC24,
};

const f64 D_80144D50_153D00[1] = {0.33};

const f64 D_80144D58_153D08[1] = {0.33};

const f64 D_80144D60_153D10[1] = {0.33};

const f64 D_80144D68_153D18[1] = {1.1};

const f64 D_80144D70_153D20[1] = {0.73};

const f64 D_80144D78_153D28[1] = {0.9};

const f64 D_80144D80_153D30[1] = {0.9};

const f64 D_80144D88_153D38[1] = {1000};

const f32 D_80144D90_153D40[1] = {-0.05};

const f64 D_80144D98_153D48[1] = {0.95};

const f64 D_80144DA0_153D50[1] = {0.69};

const f64 D_80144DA8_153D58[1] = {0.6};

const f64 D_80144DB0_153D60[1] = {0.6};

const f64 D_80144DB8_153D68[1] = {0};

s32 D_8013FCD0_14EC80 = 0;
u8 D_8013FCD4_14EC84[0x9C] = {
	0x8C, 0x00, 0x00, 0x46, 0xFF, 0x28, 0xFF, 0xFF, 0x00, 0xD2, 0x23, 0x00, 0xFF, 0x62, 0x00, 0xFA,
	0x78, 0x00, 0xC3, 0x96, 0x00, 0x82, 0x5A, 0xD7, 0x14, 0x14, 0x5A, 0xAF, 0x8C, 0x05, 0x50, 0xA0,
	0x82, 0x50, 0xDC, 0xE6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC8, 0x00, 0x00,
	0x46, 0xFF, 0x28, 0xFF, 0x6E, 0x00, 0xFF, 0x55, 0x7D, 0xFF, 0xC3, 0x00, 0xFF, 0xFF, 0x00, 0xF0,
	0xB4, 0x00, 0x78, 0xFA, 0xD2, 0xFF, 0xD2, 0xFF, 0x00, 0xA0, 0xAA, 0x1E, 0x6E, 0x3C, 0xA5, 0xFF,
	0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC8, 0x00, 0x00, 0x3C, 0x96, 0x14,
	0xFF, 0xFF, 0x00, 0xEB, 0x6E, 0x00, 0xFF, 0xA0, 0x37, 0xFF, 0xFF, 0x00, 0xA0, 0x00, 0x78, 0x5A,
	0x41, 0x85, 0xC3, 0xE6, 0x78, 0x41, 0x55, 0x69, 0x28, 0x69, 0x5F, 0x73, 0xE1, 0x78, 0x37, 0x37,
	0x37, 0x6E, 0x4B, 0x69, 0xA0, 0x82, 0x7D, 0x00, 0x00, 0x00, 0x00, 0xDC, 0x00, 0x00, 0x00, 0xFF,
	0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x00,
};
s32 D_8013FD70_14ED20 = 0x20;
s32 D_8013FD74_14ED24 = 0xAF;
VehicleInstance *D_8013FD78_14ED28 = (VehicleInstance *)0x800505C8;
s32 D_8013FD7C_14ED2C = 0;
s32 D_8013FD80_14ED30 = 0x00FB0000;
s16 D_8013FD84_14ED34 = 0;
s32 D_8013FD88_14ED38 = 0;
s32 D_8013FD8C_14ED3C = 0;
s32 D_8013FD90_14ED40[5] = {-256, -256, -256, -256, -256};
s32 D_8013FDA4_14ED54 = 0;
Unk8013FDA8Entry D_8013FDA8_14ED58[156] = {
	{{0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}, {0, 0, 0}, {0x00, 0x00}},
	{{0x09, 0x04, 0x3D, 0x50, 0x80, 0x0F, 0xEB, 0x04}, {0, 0, -12}, {0x00, 0x07}},
	{{0x05, 0x03, 0x0F, 0x18, 0x80, 0x0F, 0xF3, 0x34}, {0, 9, 59}, {0x00, 0x0B}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {-55, 1, 32}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {-15, 23, -15}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {0, 41, 63}, {0x00, 0x07}},
	{{0x09, 0x04, 0xFC, 0x88, 0x80, 0x0F, 0xF7, 0x94}, {0, 62, 0}, {0x00, 0x05}},
	{{0x05, 0x04, 0x45, 0xA0, 0x80, 0x0F, 0xEB, 0x04}, {3, 16, -1}, {0x00, 0x0B}},
	{{0x09, 0x04, 0xF7, 0xE0, 0x80, 0x0F, 0xF9, 0x0C}, {0, 8, 28}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {9, 2, 28}, {0x00, 0x17}},
	{{0x09, 0x05, 0x17, 0xD0, 0x80, 0x0F, 0xF8, 0x0C}, {55, 31, 35}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {2, 0, 30}, {0x00, 0x06}},
	{{0x09, 0x05, 0x17, 0xD0, 0x80, 0x0F, 0xF8, 0x8C}, {-55, 31, 35}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {2, 0, 30}, {0x00, 0x06}},
	{{0x09, 0x05, 0x28, 0xE8, 0x80, 0x0F, 0xE9, 0x10}, {0, 0, 0}, {0x00, 0x07}},
	{{0x09, 0x05, 0x28, 0xE8, 0x80, 0x0F, 0xE9, 0x10}, {-75, 0, 0}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {-32, 62, 26}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {-30, 53, 10}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {0, 227, 302}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {-23, 36, 0}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {-32, 58, 33}, {0x00, 0x07}},
	{{0x05, 0x03, 0x0F, 0x18, 0x80, 0x0F, 0xF3, 0x34}, {0, 13, 69}, {0x00, 0x0B}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {-57, 15, 41}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {-23, 36, 0}, {0x00, 0x07}},
	{{0x09, 0x05, 0xFB, 0xB0, 0x80, 0x0F, 0xF7, 0x94}, {0, 0, -36}, {0x00, 0x05}},
	{{0x09, 0x05, 0xFD, 0x78, 0x80, 0x0F, 0xF9, 0x0C}, {0, 93, 12}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {0, 3, 26}, {0x00, 0x06}},
	{{0x0A, 0x04, 0xEB, 0x10, 0x80, 0x0F, 0xF7, 0x94}, {0, 0, 0}, {0x00, 0x05}},
	{{0x0A, 0x04, 0xF1, 0xD8, 0x80, 0x0F, 0xF9, 0x0C}, {0, 121, 80}, {0x00, 0x05}},
	{{0x0A, 0x04, 0xF5, 0x80, 0x80, 0x0F, 0xE9, 0x10}, {0, 0, 0}, {0x00, 0x07}},
	{{0x0A, 0x04, 0xF8, 0x98, 0x80, 0x0F, 0xE9, 0x10}, {0, 0, 0}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {-22, 0, 150}, {0x00, 0x17}},
	{{0x05, 0x03, 0x0B, 0xA0, 0x80, 0x0F, 0xF3, 0x34}, {0, 73, -80}, {0x00, 0x0B}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {0, 87, 39}, {0x00, 0x07}},
	{{0x0A, 0x05, 0x20, 0xC0, 0x80, 0x0F, 0xF7, 0x94}, {0, 82, 0}, {0x00, 0x05}},
	{{0x0A, 0x05, 0x23, 0xC8, 0x80, 0x0F, 0xF9, 0x0C}, {0, 7, 0}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {7, 3, 44}, {0x00, 0x17}},
	{{0x05, 0x03, 0x0E, 0x30, 0x80, 0x0F, 0xF3, 0x34}, {-90, -15, 146}, {0x00, 0x0B}},
	{{0x05, 0x03, 0x0E, 0x30, 0x80, 0x0F, 0xF3, 0x34}, {95, -15, 146}, {0x00, 0x0B}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {6, -3, 269}, {0x00, 0x17}},
	{{0x0A, 0x05, 0x7F, 0xF8, 0x80, 0x0F, 0xED, 0x60}, {0, 0, 0}, {0x00, 0x07}},
	{{0x0A, 0x05, 0x7D, 0xB0, 0x80, 0x0F, 0xE9, 0x10}, {-11, -424, 46}, {0x00, 0x07}},
	{{0x0A, 0x05, 0x7D, 0xB0, 0x80, 0x0F, 0xE9, 0x54}, {-11, -424, -46}, {0x00, 0x07}},
	{{0x05, 0x03, 0x0F, 0xF8, 0x80, 0x0F, 0xF3, 0x34}, {0, 0, 80}, {0x00, 0x0B}},
	{{0x05, 0x03, 0x20, 0x38, 0x80, 0x0F, 0xF5, 0xA8}, {-2, 52, 47}, {0x00, 0x0B}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {0, 23, 52}, {0x00, 0x07}},
	{{0x0A, 0x05, 0xD6, 0x90, 0x80, 0x0F, 0xF9, 0x84}, {0, 81, 0}, {0x00, 0x05}},
	{{0x0A, 0x05, 0xD8, 0xA0, 0x80, 0x0F, 0xE9, 0x10}, {0, 0, 0}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {0, 9, 206}, {0x00, 0x06}},
	{{0x0A, 0x05, 0xC9, 0xB0, 0x80, 0x0F, 0xF9, 0x0C}, {0, 63, 77}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {0, 0, 191}, {0x00, 0x06}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {27, 42, 10}, {0x00, 0x07}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xE9, 0x10}, {0, 59, -45}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {-15, 75, -17}, {0x00, 0x17}},
	{{0x05, 0x03, 0x0B, 0xA0, 0x80, 0x0F, 0xF3, 0x34}, {-83, 9, 112}, {0x00, 0x0B}},
	{{0x05, 0x03, 0x0B, 0xA0, 0x80, 0x0F, 0xF3, 0x34}, {81, 9, 112}, {0x00, 0x0B}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {146, 14, 65}, {0x00, 0x17}},
	{{0x0A, 0x06, 0xA4, 0x30, 0x80, 0x0F, 0xF7, 0x94}, {0, 0, -13}, {0x00, 0x05}},
	{{0x05, 0x04, 0x45, 0xA0, 0x80, 0x0F, 0xEB, 0x04}, {11, 94, 0}, {0x00, 0x0B}},
	{{0x0A, 0x06, 0xA9, 0x38, 0x80, 0x0F, 0xF9, 0x0C}, {0, 68, 51}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {0, 2, 115}, {0x00, 0x06}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {38, 83, 49}, {0x00, 0x07}},
	{{0x0A, 0x06, 0xE7, 0x60, 0x80, 0x0F, 0xF7, 0x94}, {0, 87, 295}, {0x00, 0x05}},
	{{0x0A, 0x06, 0xE5, 0x20, 0x80, 0x0F, 0xF9, 0x0C}, {-2, 40, 9}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {-12, 2, 44}, {0x00, 0x17}},
	{{0x05, 0x03, 0x0E, 0x30, 0x80, 0x0F, 0xF3, 0x34}, {0, 16, 136}, {0x00, 0x0B}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {-82, 9, 74}, {0x00, 0x17}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {0, 0, 0}, {0x00, 0x17}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {30, 47, 16}, {0x00, 0x07}},
	{{0x0B, 0x04, 0xF8, 0x60, 0x80, 0x0F, 0xEB, 0x5C}, {0, 0, 0}, {0x00, 0x05}},
	{{0x0B, 0x04, 0xFA, 0xE8, 0x80, 0x0F, 0xEC, 0xD4}, {-32, 0, 51}, {0x00, 0x27}},
	{{0x0B, 0x04, 0xFA, 0xE8, 0x80, 0x0F, 0xEC, 0x78}, {-32, 0, -47}, {0x00, 0x27}},
	{{0x0B, 0x04, 0xFA, 0xE8, 0x80, 0x0F, 0xEC, 0xD4}, {34, 0, 51}, {0x00, 0x07}},
	{{0x0B, 0x04, 0xFA, 0xE8, 0x80, 0x0F, 0xEC, 0x78}, {34, 0, -47}, {0x00, 0x06}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {22, 38, 9}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {22, 38, 9}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {30, 56, 3}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {48, 47, 21}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {36, 52, 12}, {0x00, 0x07}},
	{{0x05, 0x03, 0x1F, 0x30, 0x80, 0x0F, 0xF5, 0xA8}, {0, 74, 86}, {0x00, 0x0B}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {23, -28, 217}, {0x00, 0x07}},
	{{0x05, 0x03, 0x1D, 0xB0, 0x80, 0x0F, 0xF5, 0xA8}, {0, 38, 44}, {0x00, 0x0B}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {46, -54, 119}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {47, 95, 74}, {0x00, 0x07}},
	{{0x0B, 0x05, 0xEF, 0x00, 0x80, 0x0F, 0xF7, 0x94}, {0, 77, 0}, {0x00, 0x05}},
	{{0x0B, 0x05, 0xF7, 0x78, 0x80, 0x0F, 0xF9, 0x0C}, {0, 10, 0}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {11, 0, 45}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {38, 64, 20}, {0x00, 0x07}},
	{{0x0B, 0x06, 0x59, 0xE8, 0x80, 0x0F, 0xF7, 0x94}, {0, 95, -35}, {0x00, 0x05}},
	{{0x0B, 0x06, 0x56, 0x00, 0x80, 0x0F, 0xF9, 0x0C}, {0, 18, 0}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {22, 38, 9}, {0x00, 0x07}},
	{{0x0B, 0x04, 0xB8, 0x08, 0x80, 0x0F, 0xE9, 0xAC}, {0, 1, -6}, {0x00, 0x07}},
	{{0x0B, 0x04, 0xB4, 0x90, 0x80, 0x0F, 0xEA, 0x2C}, {49, 122, -56}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xEA, 0xA0}, {22, 38, 9}, {0x00, 0x07}},
	{{0x0B, 0x06, 0x94, 0xD0, 0x80, 0x0F, 0xF7, 0x94}, {0, 59, -12}, {0x00, 0x05}},
	{{0x05, 0x04, 0x45, 0xA0, 0x80, 0x0F, 0xEB, 0x04}, {-14, 41, 39}, {0x00, 0x0B}},
	{{0x0B, 0x06, 0x99, 0x60, 0x80, 0x0F, 0xF9, 0x0C}, {0, 31, 75}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {0, -6, 136}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {38, 55, 24}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {37, 95, 86}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {22, 38, 9}, {0x00, 0x07}},
	{{0x05, 0x05, 0x23, 0xD0, 0x80, 0x0F, 0xE9, 0xAC}, {79, 88, 0}, {0x00, 0x07}},
	{{0x05, 0x05, 0x23, 0xD0, 0x80, 0x0F, 0xE9, 0xAC}, {-79, 88, 0}, {0x00, 0x07}},
	{{0x05, 0x05, 0x20, 0x28, 0x80, 0x0F, 0xFA, 0x00}, {0, 74, -74}, {0x00, 0x07}},
	{{0x05, 0x05, 0x16, 0x50, 0x80, 0x0F, 0xF9, 0x0C}, {-37, 71, -57}, {0x00, 0x25}},
	{{0x05, 0x05, 0x1B, 0x48, 0x80, 0x0F, 0xFC, 0xB8}, {0, 0, 0}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0xBC}, {0, 31, 67}, {0x00, 0x07}},
	{{0x05, 0x05, 0x16, 0x50, 0x80, 0x0F, 0xF9, 0x0C}, {38, 71, -57}, {0x00, 0x45}},
	{{0x05, 0x05, 0x1B, 0x48, 0x80, 0x0F, 0xFC, 0xB8}, {0, 0, 0}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0xBC}, {0, 31, 67}, {0x00, 0x07}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xE9, 0x10}, {32, 31, 8}, {0x00, 0x07}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xFC, 0xB8}, {0, 0, 71}, {0x00, 0x05}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xE9, 0x10}, {0, 0, 45}, {0x00, 0x05}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xFC, 0x3C}, {8, 0, 36}, {0x00, 0x05}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xF2, 0xBC}, {0, 0, 25}, {0x00, 0x07}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xF9, 0x0C}, {-75, 30, 0}, {0x00, 0x85}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xE9, 0x10}, {-4, 11, 32}, {0x00, 0x07}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xE9, 0x10}, {-32, -5, 39}, {0x00, 0x27}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xE9, 0x10}, {-33, 6, 8}, {0x00, 0x07}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xE9, 0x10}, {-33, 31, 8}, {0x00, 0x07}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xFC, 0xB8}, {0, 0, 71}, {0x00, 0x05}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xE9, 0x10}, {0, 0, 45}, {0x00, 0x05}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xFC, 0x3C}, {8, 0, 36}, {0x00, 0x05}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xF2, 0xBC}, {0, 0, 25}, {0x00, 0x07}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xE9, 0x10}, {-8, 76, -125}, {0x00, 0x87}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xE9, 0x10}, {0, 0, 0}, {0x00, 0x07}},
	{{0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0xE9, 0x10}, {0, 0, 0}, {0x00, 0x07}},
	{{0x0C, 0x04, 0xE5, 0xF8, 0x80, 0x0F, 0xF7, 0x94}, {0, 72, -15}, {0x00, 0x05}},
	{{0x0C, 0x04, 0xE2, 0x30, 0x80, 0x0F, 0xF9, 0x0C}, {5, 7, -8}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {-4, 0, 66}, {0x00, 0x06}},
	{{0x0C, 0x05, 0x2F, 0x70, 0x80, 0x0F, 0xF7, 0x94}, {0, 48, 14}, {0x00, 0x05}},
	{{0x0C, 0x05, 0x28, 0x88, 0x80, 0x0F, 0xF9, 0x0C}, {0, 78, 25}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {0, -30, 154}, {0x00, 0x06}},
	{{0x05, 0x03, 0x1B, 0xC0, 0x80, 0x0F, 0xF5, 0xA8}, {0, 67, 148}, {0x00, 0x0B}},
	{{0x05, 0x03, 0x1B, 0xC0, 0x80, 0x0F, 0xF5, 0xA8}, {0, 97, -157}, {0x00, 0x0B}},
	{{0x0C, 0x05, 0x7D, 0xB0, 0x80, 0x0F, 0xED, 0xBC}, {0, 32, 163}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {-54, 158, 103}, {0x00, 0x07}},
	{{0x0C, 0x05, 0xA0, 0xD8, 0x80, 0x0F, 0xF7, 0x94}, {0, 45, 135}, {0x00, 0x05}},
	{{0x0C, 0x05, 0x9F, 0x30, 0x80, 0x0F, 0xF9, 0x0C}, {0, 25, 0}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {19, 2, 30}, {0x00, 0x17}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {74, 0, 8}, {0x00, 0x17}},
	{{0x05, 0x03, 0x1F, 0x30, 0x80, 0x0F, 0xF5, 0xA8}, {0, 92, 48}, {0x00, 0x0B}},
	{{0x05, 0x03, 0x1F, 0x30, 0x80, 0x0F, 0xF5, 0xA8}, {0, 55, 48}, {0x00, 0x0B}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {0, -50, 143}, {0x00, 0x07}},
	{{0x05, 0x03, 0x0E, 0x30, 0x80, 0x0F, 0xF3, 0x34}, {0, 96, -45}, {0x00, 0x0B}},
	{{0x0C, 0x05, 0xED, 0x20, 0x80, 0x0F, 0xE9, 0x10}, {0, 120, 45}, {0x00, 0x0B}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {0, 99, 89}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {31, 52, 17}, {0x00, 0x07}},
	{{0x0C, 0x06, 0x7C, 0x68, 0x80, 0x0F, 0xF7, 0x20}, {0, 87, -219}, {0x00, 0x05}},
	{{0x0C, 0x06, 0x79, 0xD0, 0x80, 0x0F, 0xF3, 0x90}, {0, 25, 223}, {0x00, 0x0A}},
	{{0x0C, 0x06, 0xA1, 0x20, 0x80, 0x0F, 0xF7, 0x94}, {4, 94, -82}, {0x00, 0x07}},
	{{0x0C, 0x06, 0x4C, 0xB8, 0x80, 0x0F, 0xF7, 0x94}, {0, 44, -71}, {0x00, 0x05}},
	{{0x0C, 0x06, 0x48, 0x50, 0x80, 0x0F, 0xF9, 0x0C}, {0, 14, -20}, {0x00, 0x05}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {0, 0, 0}, {0x00, 0x06}},
	{{0x0C, 0x04, 0xF5, 0xB0, 0x80, 0x0F, 0xF1, 0x64}, {3, 45, 63}, {0x00, 0x07}},
	{{0x05, 0x03, 0x12, 0xE8, 0x80, 0x0F, 0xF2, 0x58}, {39, 82, -8}, {0x00, 0x07}}
};
WeaponSpecEntry D_80140768_14F718[14] = {
	{0, 0, {0x00, 0x00, 0x00, 0x14}, 0},
	{35, 30, {0x00, 0x21, 0x00, 0x14}, 6000},
	{44, 30, {0x00, 0x22, 0x00, 0x14}, 6000},
	{48, 15, {0x00, 0x04, 0x00, 0x14}, 8000},
	{71, 34, {0x00, 0x23, 0x00, 0x14}, 5000},
	{100, 32, {0x00, 0x24, 0x00, 0x14}, 5000},
	{56, 31, {0x00, 0x24, 0x00, 0x14}, 5000},
	{71, 0, {0x00, 0x02, 0x00, 0x08}, 8000},
	{0, 0, {0x00, 0x02, 0x00, 0x05}, 6000},
	{64, 0, {0x00, 0x02, 0x00, 0x05}, 9000},
	{87, 0, {0x00, 0xFA, 0x00, 0x07}, 5000},
	{52, 0, {0x00, 0x02, 0x00, 0x0A}, 8000},
	{93, 0, {0x00, 0x02, 0x00, 0x05}, 8000},
	{8, 25, {0x00, 0x12, 0x00, 0x14}, 5750}
};
u8 D_801407F4_14F7A4[] = {
	0xE0, 0xE0, 0x10, 0x5B, 0x0A, 0x00,
	0x80, 0x80, 0x0A, 0xAA, 0x0C, 0x00,
	0xE0, 0xE0, 0x20, 0x00, 0x0A, 0x00,
	0x80, 0x80, 0x0A, 0xAA, 0x0C, 0x00,
	0x40, 0x40, 0x00, 0x00, 0x05, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x80, 0x80, 0x0A, 0xAA, 0x03, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0xE0, 0xE0, 0x10, 0x5B, 0x0A, 0x00,
	0x40, 0x40, 0x00, 0x00, 0x05, 0x00,
	0x80, 0x80, 0x00, 0x00, 0x03, 0x00,
	0x80, 0x80, 0x00, 0x00, 0x0C, 0x00,
	0x80, 0x80, 0x0A, 0xAA, 0x03, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0xC0, 0xC0, 0x00, 0x00, 0x0A, 0x00,
	0x80, 0x80, 0x00, 0x00, 0x0F, 0x00,
	0x40, 0x80, 0x00, 0x00, 0x04, 0x00,
	0x80, 0xC4, 0x00, 0x00, 0x02, 0x00,
	0x80, 0x80, 0x00, 0x00, 0x0E, 0x00,
	0x80, 0x80, 0x00, 0x00, 0x07, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x80, 0x80, 0x00, 0x00, 0x0C, 0x00,
	0x80, 0x80, 0x00, 0x00, 0x03, 0x00
};
f32 D_801408B4_14F864[7][11] = {
	{70.0f, 120.0f, 180.0f, 240.0f, 260.0f, 300.0f, 400.0f, 500.0f, 2.0f, 0.8f, 0.5f},
	{90.0f, 170.0f, 250.0f, 400.0f, 500.0f, 700.0f, 900.0f, 1100.0f, 2.0f, 0.8f, 0.7f},
	{90.0f, 140.0f, 200.0f, 300.0f, 400.0f, 500.0f, 600.0f, 700.0f, 2.0f, 0.8f, 0.7f},
	{700.0f, 9999.0f, 9999.0f, 9999.0f, 9999.0f, 9999.0f, 9999.0f, 9999.0f, 2.0f, 0.8f, 0.5f},
	{4600.0f, 9999.0f, 9999.0f, 9999.0f, 9999.0f, 9999.0f, 9999.0f, 9999.0f, 2.0f, 0.8f, 0.4f},
	{1000.0f, 9999.0f, 9999.0f, 9999.0f, 9999.0f, 9999.0f, 9999.0f, 9999.0f, 2.0f, 0.8f, 0.7f},
	{1000.0f, 9999.0f, 9999.0f, 9999.0f, 9999.0f, 9999.0f, 9999.0f, 9999.0f, 2.0f, 0.8f, 0.7f}
};
s32 D_801409E8_14F998 = 0;
s32 D_801409EC_14F99C = 0;
s32 D_801409F0_14F9A0 = 0;
s32 D_801409F4_14F9A4 = 0;
s32 D_801409F8_14F9A8 = 0;

void func_800F2890_101840(u8 arg0, s32 *arg1, s32 *arg2, u8 *arg3) {
	s32 sp1C;
	UnkF9230ShadowWalker *walker;

	if (arg0 >= 9) {
		osSyncPrintf(D_801446A0_153650);
	}

	if (D_80157FF0[arg0] != -1) {
		osSyncPrintf(D_801446B8_153668);
	}

	if (arg0 < 8 && D_80157FF0[arg0] == -1) {
		walker = &D_80158000[arg0];
		*arg1 = *(s32*)&walker->limbs[0].unk10;
		*arg2 = *(s32*)&walker->limbs[0].unk14;
		*arg3 = walker->limbs[0].unk22;
	} else {
		*arg3 = 0xFF;
	}
}

// CURRENT(965)
#ifdef NON_MATCHING
void func_800F2980_101930(UnkF9230ShadowWalker *walker) {
	s32 sp7C;
	s32 sp78;
	s32 pad1;
	s32 pad2;
	s16 sp6E;
	s16 sp6C;
	s16 sp6A;
	volatile s16 sp68;
	s16 var_s4;
	s16 var_v0;
	s32 var_s3;
	u8 temp_s0;
	u8 temp_v1;
	Unk801601F0 *temp_v0;
	u8 temp_a0idx;
	u8 *temp_limb_raw;

	temp_a0idx = walker->limbs[0].unk23;
	temp_v0 = &D_801601F0[temp_a0idx];
	sp6E = temp_v0->unk10;
	sp6C = temp_v0->unk6;
	sp6A = temp_v0->unk4;
	temp_v1 = walker->limbs[0].unk22;
	temp_s0 = temp_v0->unkC;
	var_s4 = temp_v0->unkE;
	if (temp_v1 & 0x80) {
		sp68 = walker->limbs[0].unk1A;
		var_v0 = walker->limbs[0].unk18;
	} else {
		var_v0 = walker->limbs[0].unk18;
		sp68 = var_v0;
	}
	if (temp_v1 == 0x10) {
		sp68 = 0;
	}
	sp7C = (s32) ((((f64) (f32) coss((u16) var_v0) / 32768.0) * (f64) walker->limbs[0].unk1C) +
				 (f64) *(s32 *) &walker->limbs[0].unk0);
	sp78 = (s32) ((((f64) (f32) sins((u16) walker->limbs[0].unk18) / 32768.0) * (f64) walker->limbs[0].unk1C) +
				 (f64) *(s32 *) &walker->limbs[0].unk4);
	*(s32 *) &walker->limbs[0].unk8 = sp7C;
	*(s32 *) &walker->limbs[0].unkC = sp78;
	var_s3 = 0;
	if ((s32) temp_s0 / 2 > 0) {
		do {
			s32 pre_angle = sp68 - var_s4;
			if (walker->limbs[var_s3 + 1].unk23 == 0) {
				var_v0 = (s16) (pre_angle - 0x4000);
				walker->limbs[var_s3 + 1].unk6 = (s16) (s32) ((((f64) (f32) coss((u16) var_v0) / 32768.0) * (f64) sp6C) + (f64) sp7C);
				walker->limbs[var_s3 + 1].unk8 = (s16) (s32) ((((f64) (f32) sins((u16) var_v0) / 32768.0) * (f64) sp6C) + (f64) sp78);
				walker->limbs[var_s3 + 1].unk1A = (s16) (s32) ((((f64) (f32) coss((u16) var_v0) / 32768.0) * (f64) sp6A) + (f64) sp7C);
				walker->limbs[var_s3 + 1].unk1C = (s16) (s32) ((((f64) (f32) sins((u16) var_v0) / 32768.0) * (f64) sp6A) + (f64) sp78);
				var_v0 = (s16) (sp68 + var_s4 + 0x4000);
				walker->limbs[var_s3 + ((s32) temp_s0 / 2) + 1].unk6 = (s16) (s32) ((((f64) (f32) coss((u16) var_v0) / 32768.0) * (f64) sp6C) + (f64) sp7C);
				walker->limbs[var_s3 + ((s32) temp_s0 / 2) + 1].unk8 = (s16) (s32) ((((f64) (f32) sins((u16) var_v0) / 32768.0) * (f64) sp6C) + (f64) sp78);
				walker->limbs[var_s3 + ((s32) temp_s0 / 2) + 1].unk1A = (s16) (s32) ((((f64) (f32) coss((u16) var_v0) / 32768.0) * (f64) sp6A) + (f64) sp7C);
				walker->limbs[var_s3 + ((s32) temp_s0 / 2) + 1].unk1C = (s16) (s32) ((((f64) (f32) sins((u16) var_v0) / 32768.0) * (f64) sp6A) + (f64) sp78);
				var_s4 += sp6E;
			}
			var_s3 += 1;
		} while (var_s3 != ((s32) temp_s0 / 2));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F2980_101930.s")
#endif

// CURRENT(120)
#ifdef NON_MATCHING
void func_800F2D48_101CF8(u8 arg0, s16 arg1, s16 arg2) {
	UnkF9230ShadowWalker *walker;
	u8 count;
	s16 i;
	s16 temp;

	if ((s32)arg0 >= 9) {
		osSyncPrintf(D_801446E8_153698);
	}

	if (D_80157FF0[arg0] != -1) {
		osSyncPrintf(D_80144700_1536B0);
	}

	walker = &D_80158000[arg0];
	if (walker->limbs[0].unk22 == 2) {
		return;
	}

	*(s32 *)&walker->limbs[0].unk0 = (s16)arg1;
	*(s32 *)&walker->limbs[0].unk4 = arg2;
	*(s32 *)&walker->limbs[0].unk14 = arg2;
	*(volatile s32 *)&walker->limbs[0].unk10 = (s16)arg1;
	*(volatile s32 *)&walker->limbs[0].unkC = arg2;
	*(volatile s16 *)&walker->limbs[0].unk1C = 0;
	*((s32 *) (&walker->limbs[0].unk14)) = arg2;
	*(volatile s32 *)&walker->limbs[0].unk8 = (s16)arg1;

	func_800F2980_101930(walker);

	count = D_801601F0[walker->limbs[0].unk23].unkC;
	if (count > 0) {
		i = 0;
		do {
			if (walker->limbs[i + 1].unk23 == 0) {
				temp = walker->limbs[i + 1].unk1A;
				walker->limbs[i + 1].unk1E = temp;
				walker->limbs[i + 1].unk14 = temp;

				temp = walker->limbs[i + 1].unk1C;
				walker->limbs[i + 1].unk20 = temp;
				walker->limbs[i + 1].unk18 = temp;

				temp = walker->limbs[i + 1].unk6;
				walker->limbs[i + 1].unkA = temp;
				walker->limbs[i + 1].unk0 = temp;

				temp = walker->limbs[i + 1].unk8;
				walker->limbs[i + 1].unkC = temp;
				walker->limbs[i + 1].unk4 = temp;
			}
			i += 1;
		} while (i < count);
	}

	walker->limbs[0].unk1E = 0;
	func_800F49A4_103954(walker);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F2D48_101CF8.s")
#endif

// CURRENT(75)
#ifdef NON_MATCHING
void func_800F2ED8_101E88(u8 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4)
{
	UnkF9230ShadowWalker *new_var;
	if (((s32)arg0) >= 9)
	{
		osSyncPrintf(D_80144728_1536D8);
	}
	new_var = &D_80158000[arg0];
	if (D_80157FF0[arg0] != (-1))
	{
		osSyncPrintf(D_80144740_1536F0);
	}
	{
		s32 negArg1;
		u8 state;
		UnkF9230ShadowWalker *walker;
		walker = new_var;
		state = walker->limbs[0].unk22;
		negArg1 = -arg1;
		if (state != 0x10)
		{
			s32 temp_v0;
			temp_v0 = (negArg1 < arg1) ? (arg1) : (negArg1);
			if (((temp_v0 >= 0xD) || (arg2 != walker->limbs[0].unk18)) && (state != 4))
			{
				walker->limbs[0].unk22 = (arg4 & 0x80) | 1;
				state = walker->limbs[0].unk22;
			}
			walker->limbs[0].unk1C = (s16)((D_801601F0[walker->limbs[0].unk23].unk12 * arg1) / 8);
			walker->limbs[0].unk18 = arg2;
			if (state & 0x80)
			{
				walker->limbs[0].unk1A = arg3;
			}
			if (negArg1 == 0)
			{
				*((s32 *)(&walker->limbs[0].unk0)) = *((s32 *)(&walker->limbs[0].unk10));
				*((s32 *)(&walker->limbs[0].unk4)) = *((s32 *)(&walker->limbs[0].unk14));
			}
			func_800F2980_101930(walker);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F2ED8_101E88.s")
#endif

// CURRENT(961)
#ifdef NON_MATCHING
void func_800F3038_101FE8(u8 arg0) {
	UnkF9230ShadowWalker *walker;
	u8 count;
	u8 i;

	if (arg0 >= 9) {
		osSyncPrintf(D_80144768_153718, arg0);
	}
	if (D_80157FF0[arg0] != -1) {
		osSyncPrintf(D_80144780_153730, arg0);
	}

	walker = &D_80158000[arg0];
	count = D_801601F0[walker->limbs[0].unk23].unkC;
	walker->limbs[0].unk22 = 2;

	if (count > 0) {
		i = 0;
		do {
			UnkF9230ShadowLimb *limb = &walker->limbs[i];
			UnkF9230ShadowLimb *next = limb + 1;
			if (next->unk23 == 1) {
				next->unk23 = 2;
			}
			if (next->unk23 == 0) {
				next->unk23 = 1;
			}
			i++;
		} while (i < count);
	}

	walker->unk168 = 0;
	walker->unk16A = 0;
	if (D_801601F0[walker->limbs[0].unk23].unkA >= 0x64) {
		walker->unk16C = 0x1E;
	} else {
		walker->unk16C = 0x3C;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F3038_101FE8.s")
#endif

// CURRENT(1061)
#ifdef NON_MATCHING
void func_800F3190_102140(u8 arg0) {
	UnkF9230ShadowWalker *walker;
	u8 count;
	u8 i;

	if (arg0 >= 9) {
		osSyncPrintf(D_801447A8_153758, arg0);
	}
	if (D_80157FF0[arg0] != -1) {
		osSyncPrintf(D_801447C0_153770, arg0);
	}

	walker = &D_80158000[arg0];
	count = D_801601F0[walker->limbs[0].unk23].unkC;
	walker->limbs[0].unk22 = 8;

	if (count > 0) {
		i = 0;
		do {
			UnkF9230ShadowLimb *limb = &walker->limbs[i];
			UnkF9230ShadowLimb *next = limb + 1;
			if (next->unk23 == 1) {
				next->unk23 = 2;
			}
			if (next->unk23 == 0) {
				next->unk23 = 1;
			}
			i++;
		} while (i < count);
	}

	walker->unk168 = 0;
	walker->unk16A = 0;
	if (D_801601F0[walker->limbs[0].unk23].unkA >= 0x64) {
		walker->unk16C = 0x1E;
	} else {
		walker->unk16C = 0x3C;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F3190_102140.s")
#endif

// https://decomp.me/scratch/RcNAk
// CURRENT(25)
#ifdef NON_MATCHING
void func_800F32EC_10229C(u8 arg0, u8 arg1)
{
  UnkF9230ShadowWalker *walker;
	UnkF9230ShadowLimb *limb;
  u8 i;
  s32 count;
  if (arg0 >= 9)
  {
	osSyncPrintf(D_801447E8_153798);
  }
  if (D_80157FF0[arg0] != (-1))
  {
	osSyncPrintf(D_80144800_1537B0);
  }
  walker = &D_80158000[arg0];
	walker->limbs[0].unk22 = 4;
  count = D_801601F0[walker->limbs[0].unk23].unkC;
  
  if (count > 0)
  {
	i = 0;
	do
	{
	  limb = &walker->limbs[i + 1];
	  if (limb->unk23 == 1)
	  {
		limb->unk23 = 2;
	  }
	  if (arg1 & (1 << i))
	  {
		limb->unk23 = 1;
		limb->unk22 = func_800C2274_D1224(walker->limbs[i + 1].unk14, walker->limbs[i + 1].unk16, walker->limbs[i + 1].unk18, 0);
	  }
	  i++;
	}
	while (i < count);
  }
  walker->unk168 = 0;
  walker->unk16A = 0;
  if (D_801601F0[walker->limbs[0].unk23].unkA >= 0x64)
  {
	walker->unk16C = 0x1E;
  }
  else
  {
	walker->unk16C = 0x3C;
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F32EC_10229C.s")
#endif

// CURRENT(1074)
#ifdef NON_MATCHING
void func_800F34AC_10245C(s32 arg0) {
	UnkF9230ShadowWalker *walker;
	s32 temp = arg0 & 0xFF;
	if (temp >= 9) {
		osSyncPrintf(D_80144828_1537D8, temp);
	}
	if (D_80157FF0[temp] != -1) {
		osSyncPrintf(D_80144840_1537F0, temp);
	}
	walker = &D_80158000[temp];
	walker->limbs[0].unk22 = 0x10;
	*(s32*)&walker->limbs[0].unk0 = *(s32*)&walker->limbs[0].unk10;
	*(s32*)&walker->limbs[0].unk4 = *(s32*)&walker->limbs[0].unk14;
	walker->unk16A = D_8014DD50[alienInstances[walker->alienIdx].unkC].unk2 + alienInstances[walker->alienIdx].unk2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F34AC_10245C.s")
#endif

void func_800F3580_102530(u8 arg0) {
	UnkF9230ShadowWalker *walker = &D_80158000[arg0];
	walker->limbs[0].unk22 = 0;
}

void func_800F35AC_10255C(u8 arg0, s16 arg1) {
	s32 temp_v1;
	
	temp_v1 = arg0;
	
	if (arg0 >= 9) {
		osSyncPrintf(D_80144868_153818);
	}
	
	if (D_80157FF0[arg0] != -1) {
		osSyncPrintf(D_80144880_153830);
	}
	
	if (temp_v1 < 8 && D_80157FF0[arg0] == -1) {
		D_80158000[arg0].limbs[0].unk20 = arg1;
	}
}

void func_800F3670_102620(void) {
	u8 i;
	s32 j;

	D_80157FF8 = 0;
	for (i = 0; i < 8; i++) {
		D_80157FF0[i] = i;
	}
	for (j = 0; j < 12; j = (u8)(j + 1)) {
		D_801601F0[j] =
			*(Unk801601F0 *)(D_801470C0_156070 + currentLevel * 0x108 + j * 0x16 - 0x108);
	}
}

void func_800F375C_10270C(s8 arg0) {
	osSyncPrintf(D_801448A8_153858, arg0, D_80157FF8, &D_80157FF8); // FREE WALKER %d: %d walkers allocated
	if (arg0 >= 8 || arg0 < -1) {
		osSyncPrintf(D_801448D0_153880, arg0); // Error in walker index
		return;
	}
	if (D_80157FF0[arg0] != -1 && arg0 != -1) {
		osSyncPrintf(D_801448E8_153898, arg0); // Attempt to free unallocated walker ID %d
		return;
	}
	if (arg0 == -1) {
		for (arg0 = 0; arg0 < 8; arg0++) {
			D_80157FF0[arg0] = arg0;
		}
		D_80157FF8 = 0;
		return;
	}
	D_80157FF0[arg0] = arg0;
	D_80157FF8--;
}

// CURRENT(540)
#ifdef NON_MATCHING
s16 func_800F384C_1027FC(UnkF9230Arg0 *arg0, s16 arg1, s16 arg2, s16 arg3) {
	s16 sp36;
	f32 var_f2;
	s32 sp36_s32;

	func_8011E6FC_12D6AC(arg2, arg3, &sp36);
	sp36_s32 = alienSpecs[alienInstances[arg0->unk144].specIndex].unk58;

	if (sp36_s32 < 0x33) {
		var_f2 = 3.0f;
	} else {
		var_f2 = 2.0f;
	}

	sp36_s32 = sp36;
	if ((f32)sp36_s32 < (f32)arg1 - (f32)alienSpecs[alienInstances[arg0->unk144].specIndex].unk58 * var_f2) {
		sp36_s32 = (s16)((f32)arg1 - (f32)alienSpecs[alienInstances[arg0->unk144].specIndex].unk58 * var_f2);
	} else if ((f32)arg1 - (f32)alienSpecs[alienInstances[arg0->unk144].specIndex].unk58 * var_f2 < (f32)sp36_s32) {
		sp36_s32 = (s16)((f32)arg1 + (f32)alienSpecs[alienInstances[arg0->unk144].specIndex].unk58 * var_f2);
	}

	if (arg1 < sp36_s32) {
		sp36 = (s16)sp36_s32;
		sp36_s32 = (s16)(func_800B84D0_C7480(arg2, arg3) >> 8);
	}

	return sp36_s32;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F384C_1027FC.s")
#endif

// CURRENT(17608)
#ifdef NON_MATCHING
s16 func_800F3990_102940(u8 arg0, u8 arg1) {
	UnkF9230ShadowWalker *walker;
	s32 slot;
	u8 alienIdx;
	u8 specIdx;
	f64 f22;
	f64 f24;
	f64 f26;
	f64 f28;
	s32 temp;
	s16 spBA;
	s16 baseAngle;
	s16 alienX;
	s16 alienZ;
	s16 alienY;
	s32 halfCount;
	AlienInstance *inst;

	alienIdx = arg0;
	specIdx = arg1;
	inst = &alienInstances[alienIdx];
	alienX = inst->unk0;
	alienZ = inst->unk4;
	if (D_80157FF8 >= 8) {
		osSyncPrintf(D_80144914_1538C4);
		return -1;
	}
	alienY = inst->unkE;

	slot = 0;
	while (1) {
		if (D_80157FF0[slot] != -1) {
			D_80157FF0[slot] = -1;
			break;
		}

		slot = (slot + 1) & 0xFF;
		if (slot >= 8) {
			break;
		}
	}

	D_80157FF8 = D_80157FF8 + 1;
	osSyncPrintf(D_80144934_1538E4, slot, D_80157FF8);

	walker = &D_80158000[slot];

	*(s32 *)&walker->limbs[0].unk0 = alienX;
	*(s32 *)&walker->limbs[0].unk4 = alienZ;
	*(s32 *)&walker->limbs[0].unk10 = alienX;
	*(s32 *)&walker->limbs[0].unk14 = alienZ;
	walker->limbs[0].unk18 = alienY;
	walker->limbs[0].unk1A = alienY;
	walker->limbs[0].unk1C = 0;
	walker->limbs[0].unk22 = 0;
	walker->limbs[0].unk20 = 0;
	walker->alienIdx = alienIdx;
	*(s32 *)&walker->limbs[0].unk8 = alienX;
	*(s32 *)&walker->limbs[0].unkC = alienZ;
	walker->limbs[0].unk1E = 0;
	walker->limbs[0].unk23 = specIdx;

	baseAngle = D_801601F0[specIdx].unkE;
	spBA = D_801601F0[specIdx].unk10;
	halfCount = D_801601F0[specIdx].unkC / 2;

	if (halfCount > 0) {
		s32 i;
		
		f22 = (f64)D_801601F0[specIdx].unk4;
		f24 = (f64)alienX;
		f26 = (f64)alienZ;
		f28 = (f64)D_801601F0[specIdx].unk6;

		i = 0;
		temp = halfCount * 0x24;
		while (i < halfCount) {
			UnkF9230ShadowLimb *a;
			UnkF9230ShadowLimb *an;
			UnkF9230ShadowLimb *b;
			UnkF9230ShadowLimb *bn;
			s16 y;
			s16 ang;

			a = &walker->limbs[i + 1];
			a->unk23 = 0;
			an = &walker->limbs[i + 2];

			ang = (s16)(((walker->limbs[0].unk18 - baseAngle) - 0x4000) & 0xFFFF);
			an->unk10 = (s16)(s32)((((f64)(f32)coss(ang) / 32768.0) * f22) + f24);
			an->unk14 = (s16)(s32)((((f64)(f32)sins(ang) / 32768.0) * f22) + f26);
			y = D_8014DD50[inst->unkC].unk2 + inst->unk2;
			an->unk12 = y;
			an->unk0 = (s16)(s32)((((f64)(f32)coss(ang) / 32768.0) * f28) + f24);
			an->unk4 = (s16)(s32)((((f64)(f32)sins(ang) / 32768.0) * f28) + f26);
			an->unk2 = func_800F384C_1027FC((UnkF9230Arg0 *)walker, an->unk12, an->unk0, an->unk4);
			an->unk6 = an->unk0;
			an->unk8 = an->unk4;

			b = &walker->limbs[i + 1 + halfCount];
			b->unk23 = 0;
			bn = &walker->limbs[i + 2 + halfCount];

			ang = (s16)(((walker->limbs[0].unk18 + baseAngle) + 0x4000) & 0xFFFF);
			bn->unk10 = (s16)(s32)((((f64)(f32)coss(ang) / 32768.0) * f22) + f24);
			bn->unk14 = (s16)(s32)((((f64)(f32)sins(ang) / 32768.0) * f22) + f26);
			y = D_8014DD50[inst->unkC].unk2 + inst->unk2;
			bn->unk12 = y;
			bn->unk0 = (s16)(s32)((((f64)(f32)coss(ang) / 32768.0) * f28) + f24);
			bn->unk4 = (s16)(s32)((((f64)(f32)sins(ang) / 32768.0) * f28) + f26);
			bn->unk2 = func_800F384C_1027FC((UnkF9230Arg0 *)walker, bn->unk12, bn->unk0, bn->unk4);
			bn->unk6 = bn->unk0;
			bn->unk8 = bn->unk4;

			i = (i + 1) & 0xFF;
			baseAngle += spBA;
		}
	}

	func_800F2980_101930(walker);
	func_800F49A4_103954(walker);
	return slot;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F3990_102940.s")
#endif

// CURRENT(1280)
#ifdef NON_MATCHING
s16 func_800F3EE4_102E94(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s32 arg4, u8 arg5) {
	f64 ratio;

	ratio = (f64)((f32)(u32)arg0 / (f32)(u32)arg5);

	if (ratio < 0.5) {
		return (s16)(s32)((f32)arg1 + (f32)(s16)(arg3 - arg1) * (f32)(ratio / 0.5));
	}

	return (s16)(s32)((f32)(s16)(arg3 - arg2) * (f32)(1.0 - (f64)(f32)(ratio - 0.5) / 0.5) + (f32)arg2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F3EE4_102E94.s")
#endif

s16 func_800F4028_102FD8(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, u8 arg5) {
	f32 temp_f0;
	f32 var_f2;
	s16 temp_a1;
	s16 temp_a2;
	s32 temp_t0;
	s32 temp_t6;

	temp_t6 = arg0;
	temp_a2 = arg2;
	temp_a1 = arg1;
	temp_t0 = temp_t6;
	if ((s32)arg5 >= temp_t0) {
		temp_f0 = (f32)((s32)(arg4 * (arg5 - temp_t0)) / (s32)arg5);
		var_f2 = (f32)temp_a1;
		var_f2 += (((f32)(arg3 - temp_a1) * sqrtf((f32)(arg4 * arg4) - (temp_f0 * temp_f0))) / (f32)arg4);
	} else {
		temp_f0 = (f32)((s32)(arg4 * ((temp_t0 - arg5) + 1)) / (s32)arg5);
		var_f2 = (f32)temp_a2;
		var_f2 += (((f32)(arg3 - temp_a2) * sqrtf((f32)(arg4 * arg4) - (temp_f0 * temp_f0))) / (f32)arg4);
	}
	return (s16)(s32)var_f2;
}

s32 func_800F41E0_103190(s32 arg0, s32 arg1, s16 arg2, s16 arg3) {
	return (s32) (((arg3 - arg2) * arg0) + (arg1 * arg2)) / arg3;
}

// CURRENT(1505)
#ifdef NON_MATCHING
void func_800F4258_103208(UnkF9230Func800F4748Entry *arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 *arg5, s16 *arg6) {
	Unk801601F0 *entry;
	f32 dist;
	f32 distSq;
	f32 baseXFloat;
	f32 angleOffset;
	s32 dx;
	s32 dz;
	s16 baseX;
	s16 baseR;
	s16 angle;

	dx = arg3 - arg1;
	dz = arg4 - arg2;
	entry = &(D_801601F0)[arg0->unk23];
	baseX = entry->unk0;
	baseR = entry->unk2;

	distSq = (f32)((dx * dx) + (dz * dz));
	if (distSq <= 0.0f) {
		dist = 0.0f;
	} else {
		dist = sqrtf(distSq);
	}

	baseXFloat = (f32)baseX;
	distSq = -(((f32)(baseR * baseR) - (dist * dist)) - (f32)(baseX * baseX)) / ((2 * dist) * baseXFloat);
	if ((f64)distSq > 0.99) {
		distSq = 0.99f;
	}

	angleOffset = (f32)(((f64)(f32)(s16)(0x4000 - func_80003680_4280(distSq)) * 180.0) / 32768.0);
	angle = (s16)(s32)(((f64)(f32)func_80003824_4424((f32)dx, (f32)dz) * 180.0) / 32768.0);

	*arg5 = (s16)(s32)((cosf((f32)(((f64)((f32)angle + angleOffset) * 3.14) / 180.0)) * baseXFloat) + (f32)arg1);
	*arg6 = (s16)(s32)((sinf((f32)(((f64)((f32)angle + angleOffset) * 3.14) / 180.0)) * baseXFloat) + (f32)arg2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F4258_103208.s")
#endif

// CURRENT(3738)
#ifdef NON_MATCHING
s32 func_800F450C_1034BC(u8 arg0, u8 arg1) {
	s32 angle;
	f32 cos_val;
	f32 result;

	osSyncPrintf(D_80144960_153910);
	angle = ((u32)(arg0 << 0xF) / arg1) & 0xFFFF;
	osSyncPrintf(D_80144980_153930, arg0, arg1);
	osSyncPrintf(D_80144988_153938, angle, angle);
	cos_val = (f32)((f64)(f32)coss(angle) / 32768.0);
	osSyncPrintf(D_80144990_153940, (f64)cos_val);

	if ((s32)arg0 < ((s32)arg1 / 2)) {
		result = (f32)(1.0 - (f64)cos_val);
	} else {
		if (cos_val >= 0.0f) {
			result = cos_val;
		} else {
			result = -cos_val;
		}
		result = (f32)((f64)result + 1.0);
	}

	result = result / 2.0f;
	osSyncPrintf(D_80144998_153948, (f64)result);
	angle = (s32)((f32)arg1 * result) & 0xFF;
	osSyncPrintf(D_801449A0_153950, angle);
	return angle;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F450C_1034BC.s")
#endif

// https://decomp.me/scratch/gNcUf
// CURRENT(28)
#ifdef NON_MATCHING
void func_800F4748_1036F8(UnkF9230Arg0 *arg0, u8 arg1, u8 arg2)
{
  UnkF9230Func800F4748Entry *entry;
  s32 tempA;
  UnkF9230Func800F4748Entry *next;
  u8 animLerp;
  u8 pad_42;
  s16 sp40;
  s16 sp3E;
  s16 sp3A_pad;
  s16 sp3A;
  s32 pad0;
  
  entry = &((UnkF9230Func800F4748Entry *) arg0)[arg2];
  animLerp = D_801601F0[arg0->unk0[0x23]].unk12;
  if (entry[1].unk23 == 0)
  {
	next = entry + 1;
	if (arg0->unk0[0x22] == 0x10)
	{
	  next->unkA = (func_800038E0_44E0() % 10) + next->unk0;
	  next->unkC = (func_800038E0_44E0() % 10) + next->unk4;
	  return;
	}
	tempA = func_800F41E0_103190(next->unk0, next->unk6, arg1, animLerp);
	next->unkC = func_800F41E0_103190(next->unk4, next->unk8, arg1, animLerp);
	next->unkA = tempA;
	sp40 = func_800F384C_1027FC(arg0, next->unk16, next->unk0, next->unk4);
	sp3E = func_800F384C_1027FC(arg0, next->unk16, next->unk6, next->unk8);
	sp3A = next->unk2;
	next->unk2 = func_800F3EE4_102E94(arg1, sp40, sp3E, (s16) (sp40 + D_801601F0[arg0->unk0[0x23]].unk13), 0x20, animLerp);
	if ((D_801601F0[arg0->unk0[0x23]].unk14 == 2) || ((D_801601F0[arg0->unk0[0x23]].unk14 == 1) && (D_801601F0[arg0->unk0[0x23]].unk8 >= 0x10)))
	{
	  if ((sp3E == next->unk2) && (next->unk2 < sp3A))
	  {
		func_80137468_146418(arg0->unk144, 6);
	  }
	}
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F4748_1036F8.s")
#endif

// CURRENT(327)
#ifdef NON_MATCHING
void func_800F49A4_103954(UnkF9230ShadowWalker *walker) {
	UnkF9230ShadowLimb *entry;
	s16 spB2;
	s16 spA8;
	s16 spA6;
	s16 posX;
	s16 posZ;
	s16 animFrame;
	s16 footX;
	s16 footZ;
	s16 currX;
	s16 currZ;
	s16 rootY;
	s16 yawDeg;
	s16 distA;
	s16 distB;
	s16 legRadius;
	u8 limbCount;
	u8 animLerp;
	u8 parentAlien;
	s32 i;

	parentAlien = ((UnkF9230Arg0 *)walker)->unk144;
	posX = (s16)*(s32 *)&walker->limbs[0].unk10;
	posZ = (s16)*(s32 *)&walker->limbs[0].unk14;

	limbCount = D_801601F0[walker->limbs[0].unk23].unkC;
	animLerp = D_801601F0[walker->limbs[0].unk23].unk12;

	for (i = 0; i < limbCount; i = (i + 1) & 0xFF) {
		entry = &walker->limbs[i + 1];
		if (entry->unk23 != 0) {
			continue;
		}

		animFrame = (s16)(animLerp * 2);
		footX = func_800F41E0_103190(entry->unk14, entry->unk1A, walker->limbs[0].unk1E, animFrame);
		footZ = func_800F41E0_103190(entry->unk18, entry->unk1C, walker->limbs[0].unk1E, animFrame);
		entry->unk1E = footX;
		entry->unk20 = footZ;

		if (walker->limbs[0].unk22 == 0x10) {
			entry->unk16 = walker->unk16A;
		} else {
			entry->unk16 = D_8014DD50[alienInstances[parentAlien].unkC].unk2 + alienInstances[parentAlien].unk2;
		}

		spB2 = entry->unk16;
		animFrame = walker->limbs[0].unk1E;

		if (!(animLerp < animFrame)) {
			if (!(i & 1)) {
				func_800F4748_1036F8((UnkF9230Arg0 *)walker, (u8)animFrame, (u8)i);
				animFrame = walker->limbs[0].unk1E;
			}
		}

		if (!(animFrame < animLerp)) {
			if ((i % 2) == 1) {
				func_800F4748_1036F8((UnkF9230Arg0 *)walker, (u8)(animFrame - animLerp), (u8)i);
			}
		}

		currX = entry->unkA;
		currZ = entry->unkC;
		rootY = entry->unk2;

		yawDeg = (s16)(((f64)(f32)func_80003824_4424((f32)(currX - footX), (f32)(currZ - footZ)) * 180.0) / 32768.0);

		distA = (s16)sqrtf((f32)(((currX - posX) * (currX - posX)) + ((currZ - posZ) * (currZ - posZ))));
		distB = (s16)sqrtf((f32)(((footX - posX) * (footX - posX)) + ((footZ - posZ) * (footZ - posZ))));

		func_800F4258_103208((UnkF9230Func800F4748Entry *)walker, distB, spB2, distA, rootY, &spA8, &spA6);

		legRadius = (s16)(sinf((f32)(((f64)yawDeg * 3.141592654) / 180.0f)) * (f32)spA8);
		spA8 = (s16)(cosf((f32)(((f64)yawDeg * 3.141592654) / 180.0f)) * (f32)spA8);

		entry->unkE = posX + spA8;
		entry->unk10 = spA6;
		entry->unk12 = posZ + legRadius;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F49A4_103954.s")
#endif

// CURRENT(26550)
#ifdef NON_MATCHING
void func_800F4DB0_103D60(void) {
	extern void func_8007A4F8_894A8(u8, void *, u8, u8);
	u8 i;
	s32 var_fp;

	var_fp = 1;
	i = 0;
	while (i < 8) {
		if (D_80157FF0[i] == -1) {
			UnkF9230ShadowWalker *walker;
			Unk801601F0 *anim;
			u8 *alienBase;
			u8 state;
			u8 alienIdx;
			s32 limbCount;
			s32 limb;

			walker = &D_80158000[i];
			if (((i + D_80052A8C) & 0xF) == 0) {
				state = walker->limbs[0].unk22;
				if ((state != 2) && (state != 4) && (state != 8) && (state != 0x10)) {
					alienIdx = walker->alienIdx;
					alienBase = (u8 *)&alienInstances[alienIdx];
					if ((alienBase[0x1A] == 0) || !(*(s32 *)&alienBase[0x20] & 0x80000) || ((*(s32 *)&alienBase[0x20] & 0x80000) && ((*(s32 *)&alienBase[0x20] & 7) != i))) {
						if (alienBase[0x1A] != 0) {
							if (*(s32 *)&alienBase[0x20] & 0x600) {
								func_8007A4F8_894A8(alienIdx, (void *)walker, alienIdx, i);
								alienBase = (u8 *)&alienInstances[walker->alienIdx];
								func_800DF848_EE7F8(*(s16 *)&alienBase[0x0], *(s16 *)&alienBase[0x2], *(s16 *)&alienBase[0x4], (u16)alienSpecs[alienBase[0x1A]].unkC, 0);
								func_800F3038_101FE8(i);
							} else {
								func_80079910_888C0(alienIdx);
								func_800F375C_10270C((s8)i);
							}
						}
						osSyncPrintf(D_801449A8_153958);
						i = (i + 1) & 0xFF;
						continue;
					}
				}
			}

			alienBase = (u8 *)&alienInstances[walker->alienIdx];
			if ((alienBase[0x1B] != 0xFF) && (D_80047F94 != alienBase[0x1B])) {
				walker->limbs[0].unk22 = 0;
			}

			state = walker->limbs[0].unk22;
			if ((state == 0) || (state == 4)) {
				anim = &D_801601F0[walker->limbs[0].unk23];
				limbCount = anim->unkC;
				for (limb = 0; limb < limbCount; limb = (limb + 1) & 0xFF) {
					if (walker->limbs[limb + 1].unk23 == 0) {
						alienBase = (u8 *)&alienInstances[walker->alienIdx];
						walker->limbs[limb + 1].unk16 = D_8014DD50[alienBase.unkC].unk2 + *(s16 *)&alienBase[0x2];
					}
				}
				if (walker->limbs[0].unk22 == 0) {
					i = (i + 1) & 0xFF;
					continue;
				}
				state = walker->limbs[0].unk22;
			}

			if ((state == 2) || (state == 4) || (state == 8)) {
				s16 v;
				s16 speed;

				walker->unk168 = walker->unk168 + 1;
				v = walker->unk16C >> 3;
				if (v < 0) {
					v = -v;
				}
				speed = walker->unk16C - v - 2;
				walker->unk16C = speed;

				if (state == 2) {
					if (walker->unk168 == 0x28) {
						func_800F375C_10270C((s8)i);
					}
				} else if (state == 8) {
					if (speed < 0) {
						walker->unk16C = speed / 2;
					}
					if (walker->unk168 == 0x78) {
						func_800F375C_10270C((s8)i);
					}
				} else if (state == 4) {
					anim = &D_801601F0[walker->limbs[0].unk23];
					limbCount = anim->unkC;
					for (limb = 0; limb < limbCount; limb = (limb + 1) & 0xFF) {
						if (walker->limbs[limb + 1].unk23 != 2) {
							var_fp = 0;
						}
					}
					if (var_fp != 0) {
						func_800F375C_10270C((s8)i);
					}
				}

				walker->unk16A = walker->unk16A + walker->unk16C;
			} else {
				Unk801601F0 *animData;
				u8 lerp;
				s16 frame;
				s16 frame2x;

				animData = &D_801601F0[walker->limbs[0].unk23];
				lerp = animData->unk12;

				if (walker->limbs[0].unk1E == 0) {
					s32 x;
					s32 z;

					x = *(s32 *)&walker->limbs[0].unk8;
					z = *(s32 *)&walker->limbs[0].unkC;
					*(s32 *)&walker->limbs[0].unk0 = x;
					*(s32 *)&walker->limbs[0].unk10 = x;
					*(s32 *)&walker->limbs[0].unk4 = z;
					*(s32 *)&walker->limbs[0].unk14 = z;

					limbCount = animData->unkC;
					for (limb = 0; limb < limbCount; limb = (limb + 1) & 0xFF) {
						if (walker->limbs[limb + 1].unk23 == 0) {
							walker->limbs[limb + 1].unk14 = walker->limbs[limb + 1].unk1A;
							walker->limbs[limb + 1].unk18 = walker->limbs[limb + 1].unk1C;
						}
					}

					func_800F2980_101930(walker);
					if (walker->limbs[0].unk18 == walker->limbs[0].unk1A) {
						s16 d;

						d = walker->limbs[0].unk1C;
						if (d < 0) {
							d = -d;
						}
						if ((d < 0xC) && (walker->limbs[0].unk22 != 0x10)) {
							walker->limbs[0].unk22 = 0;
						}
					}
				}

				frame = walker->limbs[0].unk1E;
				frame2x = lerp * 2;
				if ((frame2x == frame) || (lerp == frame)) {
					animData = &D_801601F0[walker->limbs[0].unk23];
					limbCount = animData->unkC;
					for (limb = 0; limb < limbCount; limb = (limb + 1) & 0xFF) {
						if (walker->limbs[limb + 1].unk23 == 0) {
							if ((frame2x == walker->limbs[0].unk1E) && ((limb % 2) == 1)) {
								walker->limbs[limb + 1].unk0 = walker->limbs[limb + 1].unk6;
								walker->limbs[limb + 1].unk4 = walker->limbs[limb + 1].unk8;
							}
							if ((lerp == walker->limbs[0].unk1E) && !(limb & 1)) {
								walker->limbs[limb + 1].unk0 = walker->limbs[limb + 1].unk6;
								walker->limbs[limb + 1].unk4 = walker->limbs[limb + 1].unk8;
							}
						}
					}
				}

				*(s32 *)&walker->limbs[0].unk10 = func_800F41E0_103190(*(s32 *)&walker->limbs[0].unk0, *(s32 *)&walker->limbs[0].unk8, walker->limbs[0].unk1E, frame2x);
				*(s32 *)&walker->limbs[0].unk14 = func_800F41E0_103190(*(s32 *)&walker->limbs[0].unk4, *(s32 *)&walker->limbs[0].unkC, walker->limbs[0].unk1E, frame2x);
				func_800F49A4_103954(walker);

				walker->limbs[0].unk1E = (walker->limbs[0].unk1E + 1) % (frame2x + 1);
				if (!(walker->limbs[0].unk22 & 0x80)) {
					walker->limbs[0].unk1A = walker->limbs[0].unk18;
				}
			}
		}

		i = (i + 1) & 0xFF;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F4DB0_103D60.s")
#endif

void func_800F54AC_10445C(Vec3f *arg0, Vec3f *arg1) {
	f32 x = arg0->x;
	f32 lenSq = (arg0->z * arg0->z) + (x * x + arg0->y * arg0->y);

	if (lenSq == 0.0f) {
		arg1->x = x;
		arg1->y = arg0->y;
		arg1->z = arg0->z;
	} else {
		f32 len = sqrtf(lenSq);
		arg1->x = arg0->x / len;
		arg1->y = arg0->y / len;
		arg1->z = arg0->z / len;
	}
}

// CURRENT(74661)
#ifdef NON_MATCHING
void func_800F554C_1044FC(s32 *arg0, s32 *arg1, s32 *arg2, u8 arg3) {
	f32 radius;
	f32 sinA;
	f32 cosA;
	f32 sinB;
	f32 cosB;
	f32 radiusThird;
	f32 radiusTwoThirds;
	f32 halfRadius;
	s32 angleA;
	s32 angleB;
	s32 sinAComp;
	s32 cosAComp;
	s32 sinBComp;
	s32 cosBComp;
	s32 yDrop;
	s16 halfSinB;
	s16 halfCosB;
	u8 *levelColor;
	s16 colorA;
	s16 colorB;
	s16 colorC;
	s16 colorAClamped;
	s16 colorBClamped;
	s16 colorCClamped;
	s16 colorTopA;
	s16 colorTopB;
	s16 colorTopC;
	u8 cR;
	u8 cG;
	u8 cB;
	Vtx *vtx;

	radius = D_801601F0[arg3].unk8;
	if (D_8013FCD0_14EC80 != 0) {
		radius *= 2.0f;
	}

	angleA = func_80003824_4424((f32)(arg0[2] - arg2[2]), (f32)(arg0[0] - arg2[0]));
	sinA = (f32)((f64)(f32)sins((angleA + 0x4000) & 0xFFFF) / 32768.0);
	cosA = (f32)((f64)(f32)coss((angleA + 0x4000) & 0xFFFF) / 32768.0);

	angleB = arg0[0x23] & 0xFFFF;
	sinB = (f32)((f64)(f32)sins(angleB) / 32768.0);
	cosB = (f32)((f64)(f32)coss(angleB) / 32768.0);

	levelColor = &D_8013FCD4_14EC84[currentLevel * 9];
	colorA = levelColor[0x24];
	colorB = levelColor[0x25];
	colorC = levelColor[0x26];
	colorAClamped = (colorA >= 0xB4) ? (colorA - 0xB4) : 0;
	colorBClamped = (colorB >= 0xB4) ? (colorB - 0xB4) : 0;
	colorCClamped = (colorC >= 0xB4) ? (colorC - 0xB4) : 0;
	colorTopA = levelColor[0x2A];
	colorTopB = levelColor[0x2B];
	colorTopC = levelColor[0x2C];
	cR = levelColor[0x27];
	cG = levelColor[0x28];
	cB = levelColor[0x29];

	radiusThird = radius / 3.0f;
	sinAComp = (s32)(radiusThird * sinA);
	cosAComp = (s32)(radiusThird * cosA);
	sinBComp = (s32)(radiusThird * sinB);
	cosBComp = (s32)(radiusThird * cosB);

	vtx = D_8005BB34;
	vtx->v.ob[0] = arg0[0];
	vtx->v.ob[1] = arg0[1];
	vtx->v.ob[2] = arg0[2];
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0x400;
	vtx->v.tc[1] = 0;
	vtx->v.cn[0] = 0;
	vtx->v.cn[1] = 0;
	vtx->v.cn[2] = 0;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = (arg0[0] + sinAComp) - sinBComp;
	vtx->v.ob[1] = arg0[1];
	vtx->v.ob[2] = (arg0[2] + cosAComp) - cosBComp;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0x400;
	vtx->v.tc[1] = 0x80;
	vtx->v.cn[0] = 0;
	vtx->v.cn[1] = 0;
	vtx->v.cn[2] = 0;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = (arg0[0] - sinAComp) - sinBComp;
	vtx->v.ob[1] = arg0[1];
	vtx->v.ob[2] = (arg0[2] - cosAComp) - cosBComp;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0x400;
	vtx->v.tc[1] = 0x80;
	vtx->v.cn[0] = 0;
	vtx->v.cn[1] = 0;
	vtx->v.cn[2] = 0;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = arg1[0];
	vtx->v.ob[1] = arg1[1];
	vtx->v.ob[2] = arg1[2];
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0;
	vtx->v.cn[0] = cR;
	vtx->v.cn[1] = cG;
	vtx->v.cn[2] = cB;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	radiusTwoThirds = radiusThird * 2.0f;
	sinAComp = (s32)(radius * sinA);
	cosAComp = (s32)(radius * cosA);
	sinBComp = (s32)(radiusTwoThirds * sinB);
	cosBComp = (s32)(radiusTwoThirds * cosB);
	yDrop = (s32)((f32)arg1[1] - (radiusTwoThirds / 2.0f));

	vtx->v.ob[0] = (arg1[0] + sinAComp) - sinBComp;
	vtx->v.ob[1] = yDrop;
	vtx->v.ob[2] = (arg1[2] + cosAComp) - cosBComp;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0x80;
	vtx->v.cn[0] = cR;
	vtx->v.cn[1] = 0;
	vtx->v.cn[2] = cB;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = (arg1[0] - sinAComp) - sinBComp;
	vtx->v.ob[1] = yDrop;
	vtx->v.ob[2] = (arg1[2] - cosAComp) - cosBComp;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0x80;
	vtx->v.cn[0] = cR;
	vtx->v.cn[1] = 0;
	vtx->v.cn[2] = cB;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = (arg1[0] + sinAComp) - sinBComp;
	vtx->v.ob[1] = yDrop;
	vtx->v.ob[2] = (arg1[2] + cosAComp) - cosBComp;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0x80;
	vtx->v.cn[0] = colorAClamped;
	vtx->v.cn[1] = colorBClamped;
	vtx->v.cn[2] = colorCClamped;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = (arg1[0] - sinAComp) - sinBComp;
	vtx->v.ob[1] = yDrop;
	vtx->v.ob[2] = (arg1[2] - cosAComp) - cosBComp;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0x80;
	vtx->v.cn[0] = colorAClamped;
	vtx->v.cn[1] = colorBClamped;
	vtx->v.cn[2] = colorCClamped;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	halfSinB = (sinBComp >= 0) ? (sinBComp >> 1) : ((sinBComp + 1) >> 1);
	halfCosB = (cosBComp >= 0) ? (cosBComp >> 1) : ((cosBComp + 1) >> 1);
	halfRadius = radius / 2.0f;

	vtx->v.ob[0] = arg1[0] - halfSinB;
	vtx->v.ob[1] = (s16)(arg1[1] + (s32)(radius * 2.0f));
	vtx->v.ob[2] = arg1[2] - halfCosB;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0x400;
	vtx->v.tc[1] = 0;
	vtx->v.cn[0] = colorTopA;
	vtx->v.cn[1] = colorTopB;
	vtx->v.cn[2] = colorTopC;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = arg1[0] - sinBComp;
	vtx->v.ob[1] = (s16)(s32)((f32)arg1[1] + halfRadius);
	vtx->v.ob[2] = arg1[2] - cosBComp;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0x400;
	vtx->v.tc[1] = 0;
	vtx->v.cn[0] = cR;
	vtx->v.cn[1] = cG;
	vtx->v.cn[2] = cB;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = arg1[0] - sinBComp;
	vtx->v.ob[1] = (s16)(s32)((f32)arg1[1] + halfRadius);
	vtx->v.ob[2] = arg1[2] - cosBComp;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0x400;
	vtx->v.tc[1] = 0;
	vtx->v.cn[0] = colorAClamped;
	vtx->v.cn[1] = colorBClamped;
	vtx->v.cn[2] = colorCClamped;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = arg2[0];
	vtx->v.ob[1] = arg2[1];
	vtx->v.ob[2] = arg2[2];
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0x280;
	vtx->v.tc[1] = 0x400;
	vtx->v.cn[0] = colorA;
	vtx->v.cn[1] = colorB;
	vtx->v.cn[2] = colorC;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = arg2[0] + halfSinB;
	vtx->v.ob[1] = (s16)(s32)((f32)arg2[1] - radiusTwoThirds);
	vtx->v.ob[2] = arg2[2] + halfCosB;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0x400;
	vtx->v.cn[0] = colorA;
	vtx->v.cn[1] = colorB;
	vtx->v.cn[2] = colorC;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = arg2[0] - halfSinB;
	vtx->v.ob[1] = (s16)(s32)((f32)arg2[1] - radiusTwoThirds);
	vtx->v.ob[2] = arg2[2] - halfCosB;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0x400;
	vtx->v.cn[0] = colorA;
	vtx->v.cn[1] = colorB;
	vtx->v.cn[2] = colorC;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	D_8005BB34 = vtx;

	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_FOG);
	gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA, G_CC_PASS2);
	gDPPipeSync(D_8005BB2C++);
	gSPVertex(D_8005BB2C++, (u32)(D_8005BB34 - 14) & 0x1FFFFFFF, 14, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_1014080);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 256);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31, 31);
	gDPPipeSync(D_8005BB2C++);
	gSP1Triangle(D_8005BB2C++, 3, 8, 5, 0);
	gSP1Triangle(D_8005BB2C++, 4, 8, 3, 0);
	gSP1Triangle(D_8005BB2C++, 8, 9, 5, 0);
	gSP1Triangle(D_8005BB2C++, 4, 9, 8, 0);
	gSP1Triangle(D_8005BB2C++, 1, 4, 0, 0);
	gSP1Triangle(D_8005BB2C++, 4, 3, 0, 0);
	gSP1Triangle(D_8005BB2C++, 5, 1, 0, 0);
	gSP1Triangle(D_8005BB2C++, 3, 5, 0, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_1013E80);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 512);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 15, 15);
	gDPPipeSync(D_8005BB2C++);
	gSP1Triangle(D_8005BB2C++, 11, 10, 6, 0);
	gSP1Triangle(D_8005BB2C++, 11, 6, 12, 0);
	gSP1Triangle(D_8005BB2C++, 11, 7, 10, 0);
	gSP1Triangle(D_8005BB2C++, 11, 10, 13, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F554C_1044FC.s")
#endif

#ifdef NON_MATCHING
// CURRENT(22311)
void func_800F63D0_105380(s32 *arg0, s32 *arg1, s32 *arg2, u8 arg3) {
	f32 sp15C;
	f32 sp160;
	f32 sp164;
	f32 sp158;
	s32 sp150;
	f32 sp13C;
	f32 sp134;
	f32 sp130;
	s32 sp128;
	s32 sp124;
	s32 sp120;
	s16 sp11A;
	s16 sp118;
	s16 sp116;
	s16 sp114;
	s16 sp112;
	s16 sp110;
	s16 sp10C;
	s16 sp10A;
	s16 sp108;
	s16 sp106;
	s16 sp104;
	f32 sp54;
	s32 sp44;
	s32 sp3C;
	s32 sp38;
	s32 sp2C;
	s32 pad[13];
	f32 temp_f0;
	f32 temp_f0_2;
	f32 temp_f12;
	f32 temp_f14;
	f32 var_f16;
	f32 var_f2;
	s16 temp_a2;
	s16 temp_v1_2;
	s16 temp_v1_3;
	s32 temp_f10;
	s32 temp_f10_2;
	s32 temp_f4;
	s32 temp_f6;
	s32 temp_f6_2;
	s32 temp_f6_3;
	s32 temp_f6_4;
	s32 temp_f6_5;
	s32 temp_f8;
	s32 temp_ra_2;
	s32 temp_t2;
	s32 temp_t7;
	s32 temp_t7_2;
	s32 temp_t7_3;
	s32 temp_t7_4;
	s32 temp_t8;
	s32 temp_v0;
	s32 temp_v0_2;
	s32 temp_v0_3;
	s32 temp_v0_4;
	s32 temp_v1_4;
	s32 temp_v1_5;
	s32 var_t5;
	s32 var_t5_2;
	u8 temp_ra;
	u8 *temp_a3;
	Vtx *vtx;

	var_f2 = (f32)D_801601F8[(arg3 & 0xFF) * 0x16];
	var_f16 = (var_f2 * 3.0f) / 4.0f;
	if (D_8013FCD0_14EC80 != 0) {
		var_f16 *= 2.0f;
		var_f2 *= 2.0f;
	}

	temp_f0 = (f32)((f64)var_f16 * D_80144A38_1539E8[0]);
	sp13C = temp_f0;
	sp15C = (f32)(arg1[0] - arg0[0]);
	sp160 = (f32)(arg1[1] - arg0[1]);
	sp134 = var_f16;
	sp130 = var_f2;
	sp54 = temp_f0;
	sp164 = (f32)(arg1[2] - arg0[2]);
	func_800F54AC_10445C((Vec3f *)&sp15C, (Vec3f *)&sp15C);
	temp_v0 = func_80003824_4424((f32)(arg0[2] - arg2[2]), (f32)(arg0[0] - arg2[0]));
	sp150 = temp_v0;
	temp_f14 = (f32)((f64)(f32)sins((temp_v0 + 0x4000) & 0xFFFF) / 32768.0);
	sp158 = temp_f14;
	temp_v0_2 = coss((sp150 + 0x4000) & 0xFFFF);
	gDPPipeSync(D_8005BB2C++);
	temp_f12 = sp130 * 2.0f;
	temp_f6 = (s32)(sp15C * temp_f12);
	temp_f10 = (s32)(sp164 * temp_f12);
	temp_a3 = &D_8013FCD4_14EC84[currentLevel * 9];
	sp11A = temp_a3[0x51];
	sp118 = temp_a3[0x52];
	sp116 = temp_a3[0x53];
	temp_a2 = sp11A - 0x82;
	if (temp_a2 < 0) {
		sp114 = 0;
	} else {
		sp114 = temp_a2;
	}
	temp_v1_2 = sp118 - 0x82;
	if (temp_v1_2 < 0) {
		sp112 = 0;
	} else {
		sp112 = temp_v1_2;
	}
	temp_v1_3 = sp116 - 0x82;
	if (temp_v1_3 < 0) {
		sp110 = 0;
	} else {
		sp110 = temp_v1_3;
	}
	sp10C = temp_a3[0x55];
	sp10A = temp_a3[0x56];
	sp108 = temp_a3[0x57];
	sp106 = temp_a3[0x58];
	sp104 = temp_a3[0x59];
	temp_ra = temp_a3[0x54];
	vtx = D_8005BB34++;
	vtx->v.ob[0] = (s16)((f32)arg0[0] - (sp15C * 4.0f));
	vtx->v.ob[1] = (s16)arg0[1];
	vtx->v.ob[2] = (s16)((f32)arg0[2] - (sp164 * 4.0f));
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0;
	vtx->v.cn[0] = 0;
	vtx->v.cn[1] = 0;
	vtx->v.cn[2] = 0;
	vtx->v.cn[3] = 0xFF;
	vtx++;
	temp_f6_2 = (s32)(sp54 * temp_f14);
	vtx->v.ob[0] = (s16)(arg0[0] + temp_f6_2 + (s16)temp_f6);
	vtx->v.ob[1] = (s16)arg0[1];
	temp_f0_2 = (f32)((f64)(f32)temp_v0_2 / 32768.0);
	temp_f6_3 = (s32)(sp54 * temp_f0_2);
	vtx->v.ob[2] = (s16)(arg0[2] + (s16)temp_f6_3 + (s16)temp_f10);
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0x180;
	vtx->v.cn[0] = 0;
	vtx->v.cn[1] = 0;
	vtx->v.cn[2] = 0;
	vtx->v.cn[3] = 0xFF;
	vtx++;
	vtx->v.ob[0] = (s16)((arg0[0] - temp_f6_2) + (s16)temp_f6);
	vtx->v.ob[1] = (s16)arg0[1];
	vtx->v.ob[2] = (s16)((arg0[2] - (s16)temp_f6_3) + (s16)temp_f10);
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0x180;
	vtx->v.cn[0] = 0;
	vtx->v.cn[1] = 0;
	vtx->v.cn[2] = 0;
	vtx->v.cn[3] = 0xFF;
	vtx++;
	vtx->v.ob[0] = (s16)(arg1[0] - ((s16)temp_f6 / 3));
	vtx->v.ob[1] = (s16)(arg1[1] + ((s16)(s32)(sp160 * temp_f12) / 3));
	vtx->v.ob[2] = (s16)(arg1[2] - (s16)temp_f10);
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0x180;
	vtx->v.cn[0] = (u8)sp108;
	vtx->v.cn[1] = (s8)sp106;
	vtx->v.cn[2] = (s8)sp104;
	vtx->v.cn[3] = 0xFF;
	vtx++;
	vtx->v.ob[0] = (s16)(arg1[0] + temp_f6_2 + (s16)temp_f6);
	vtx->v.ob[1] = (s16)arg1[1];
	vtx->v.ob[2] = (s16)(arg1[2] + (s16)temp_f6_3 + (s16)temp_f10);
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0;
	vtx->v.cn[0] = temp_ra;
	vtx->v.cn[1] = (s8)sp10C;
	vtx->v.cn[2] = (s8)sp10A;
	vtx->v.cn[3] = 0xFF;
	vtx++;
	vtx = D_8005BB34;
	temp_f4 = (s32)(sp134 * temp_f14);
	vtx->v.ob[0] = (s16)((arg1[0] - temp_f6_2) + (s16)temp_f6);
	vtx->v.ob[1] = (s16)arg1[1];
	vtx->v.ob[2] = (s16)((arg1[2] - (s32)(sp13C * temp_f0_2)) + (s16)temp_f10);
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0;
	vtx->v.cn[0] = temp_ra;
	vtx->v.cn[1] = (s8)sp10C;
	vtx->v.cn[2] = (s8)sp10A;
	vtx->v.cn[3] = 0xFF;
	temp_f6_4 = (s32)(sp15C * sp130);
	temp_f8 = (s32)(sp160 * sp134);
	temp_f10_2 = (s32)(sp164 * sp130);
	temp_ra_2 = (s16)temp_f6_4 * 3;
	temp_f6_5 = (s32)(sp134 * temp_f0_2);
	vtx->v.ob[0] = (s16)(arg1[0] + (s16)temp_f4 + temp_ra_2);
	vtx->v.ob[1] = (s16)(arg1[1] + temp_f8);
	temp_t7 = (s16)temp_f10_2 * 3;
	sp2C = (s32)(s16)temp_f6_5;
	sp3C = temp_t7;
	vtx->v.ob[2] = (s16)(arg1[2] + (s16)temp_f6_5 + temp_t7);
	sp44 = (s32)(s16)temp_f4;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0x240;
	vtx->v.tc[1] = 0x258;
	vtx->v.cn[0] = (u8)sp114;
	vtx->v.cn[1] = (s8)sp112;
	vtx->v.cn[2] = (s8)sp110;
	vtx->v.cn[3] = 0xFF;
	vtx++;
	vtx->v.ob[0] = (s16)(arg1[0] + (s16)sp44 + temp_ra_2);
	vtx->v.ob[1] = (s16)(arg1[1] + temp_f8);
	vtx->v.ob[2] = (s16)(arg1[2] + (s16)temp_f6_5 + temp_t7);
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0x258;
	vtx->v.cn[0] = (u8)sp114;
	vtx->v.cn[1] = (s8)sp112;
	vtx->v.cn[2] = (s8)sp110;
	vtx->v.cn[3] = 0xFF;
	vtx++;
	vtx->v.ob[0] = (s16)(arg1[0] - (s16)sp44 + temp_ra_2);
	vtx->v.ob[1] = (s16)(arg1[1] + temp_f8);
	vtx->v.ob[2] = (s16)(arg1[2] - (s16)temp_f6_5 + temp_t7);
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0x258;
	vtx->v.cn[0] = (u8)sp114;
	vtx->v.cn[1] = (s8)sp112;
	vtx->v.cn[2] = (s8)sp110;
	vtx->v.cn[3] = 0xFF;
	vtx++;
	vtx->v.ob[0] = (s16)sp120;
	vtx->v.ob[1] = (s16)sp124;
	vtx->v.ob[2] = (s16)sp128;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0x240;
	vtx->v.tc[1] = 0x258;
	vtx->v.cn[0] = (u8)sp114;
	vtx->v.cn[1] = (s8)sp112;
	vtx->v.cn[2] = (s8)sp110;
	vtx->v.cn[3] = 0xFF;
	vtx++;
	vtx->v.ob[0] = (s16)(sp120 + (s16)temp_t8);
	vtx->v.ob[1] = (s16)((f32)sp124 - sp130);
	vtx->v.ob[2] = (s16)(temp_t7_3 + (s16)temp_t7_4);
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0x258;
	vtx->v.cn[0] = (u8)sp114;
	vtx->v.cn[1] = (s8)sp112;
	vtx->v.cn[2] = (s8)sp110;
	vtx->v.cn[3] = 0xFF;
	vtx++;
	vtx->v.ob[0] = (s16)(temp_t7_2 - (s16)temp_t8);
	vtx->v.ob[1] = (s16)((f32)sp124 - sp130);
	vtx->v.ob[2] = (s16)(sp128 - (s16)temp_t7_4);
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0x258;
	vtx->v.cn[0] = (u8)sp114;
	vtx->v.cn[1] = (s8)sp112;
	vtx->v.cn[2] = (s8)sp110;
	vtx->v.cn[3] = 0xFF;
	vtx++;
	vtx->v.ob[0] = (s16)arg2[0];
	vtx->v.ob[1] = (s16)arg2[1];
	vtx->v.ob[2] = (s16)arg2[2];
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0x240;
	vtx->v.tc[1] = 0;
	vtx->v.cn[0] = (u8)sp11A;
	vtx->v.cn[1] = (s8)sp3C;
	vtx->v.cn[2] = (s8)sp38;
	vtx->v.cn[3] = 0xFF;
	vtx++;
	vtx->v.ob[0] = (s16)(arg2[0] + (s16)temp_t8);
	vtx->v.ob[1] = (s16)((f32)arg2[1] - sp130);
	vtx->v.ob[2] = (s16)(arg2[2] + (s16)temp_t7_4);
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0;
	vtx->v.cn[0] = (u8)sp11A;
	vtx->v.cn[1] = (s8)sp3C;
	vtx->v.cn[2] = (s8)sp38;
	vtx->v.cn[3] = 0xFF;
	vtx++;
	vtx->v.ob[0] = (s16)(arg2[0] - (s16)temp_t8);
	vtx->v.ob[1] = (s16)((f32)arg2[1] - sp130);
	vtx->v.ob[2] = (s16)(arg2[2] - (s16)temp_t7_4);
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0;
	vtx->v.cn[0] = (u8)sp11A;
	vtx->v.cn[1] = (s8)sp3C;
	vtx->v.cn[2] = (s8)sp38;
	vtx->v.cn[3] = 0xFF;
	vtx++;
	vtx->v.ob[0] = (s16)((sp15C * 4.0f) + (f32)arg0[0]);
	vtx->v.ob[1] = (s16)arg0[1];
	vtx->v.ob[2] = (s16)((sp164 * 4.0f) + (f32)arg0[2]);
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0;
	vtx->v.cn[0] = 0;
	vtx->v.cn[1] = 0;
	vtx->v.cn[2] = 0;
	vtx->v.cn[3] = 0xFF;
	D_8005BB34 = vtx;

	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_FOG);
	gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA, G_CC_PASS2);
	gDPPipeSync(D_8005BB2C++);
	gSPVertex(D_8005BB2C++, (u32)((s32)(D_8005BB34 - 0x13) & 0x1FFFFFFF), 19, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_1014880);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 512);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 15, 15);
	gDPPipeSync(D_8005BB2C++);
	gSP1Triangle(D_8005BB2C++, 11, 10, 6, 0);
	gSP1Triangle(D_8005BB2C++, 11, 6, 12, 0);
	gSP1Triangle(D_8005BB2C++, 11, 7, 10, 0);
	gSP1Triangle(D_8005BB2C++, 11, 10, 13, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F63D0_105380.s")
#endif

// CURRENT(56921)
#ifdef NON_MATCHING
void func_800F7790_106740(s32 *arg0, s32 *arg1, s32 *arg2, u8 arg3) {
	f32 sp134;
	f32 sp130;
	f32 sp12C;
	f32 sp120[3];
	f32 sp11C;
	f32 spF8;
	f32 spF4;
	volatile f32 four;
	f32 three;
	s16 spEA;
	s16 spE8;
	s16 spE6;
	s16 spE4;
	s16 spE2;
	s16 spE0;
	s16 spD2;
	s16 spD0;
	s16 spCE;
	s32 sp34;
	s32 sp30;
	s32 pad[32];

	f32 radius;
	f32 radiusScaled;
	s16 angle;
	s32 cosTerm;
	s32 sinTerm;
	s16 xStep;
	s16 yStep;
	s16 zStep;
	s32 xTri;
	s32 zTri;
	s16 halfSin;
	s16 halfCos;
	u8 *levelColor;
	u8 cR;
	u8 cG;
	u8 cB;
	volatile Vtx *vtx;

	radius = (f32)D_801601F0[arg3].unk8;
	four = 4.0f;
	three = 3.0f;
	radiusScaled = (radius * three) / four;
	if (D_8013FCD0_14EC80 != 0) {
		radiusScaled *= four;
		radius *= 2.0f;
	}

	sp12C = (f32)(arg1[0] - arg0[0]);
	sp130 = (f32)(arg1[1] - arg0[1]);
	sp134 = (f32)(arg1[2] - arg0[2]);
	spF8 = radiusScaled;
	spF4 = radius;
	func_800F54AC_10445C((Vec3f *)&sp12C, (Vec3f *)&sp12C);

	angle = func_80003824_4424((f32)(arg0[2] - arg2[2]), (f32)(arg0[0] - arg2[0]));
	sp11C = (f32)((f64)(f32)sins((angle + 0x4000) & 0xFFFF) / 32768.0);
	cosTerm = coss((angle + 0x4000) & 0xFFFF);

	gDPPipeSync(D_8005BB2C++);

	{
		s32 i;

		for (i = 0; i < 3; i++) {
			sp120[i] = (&sp12C)[i] * 127.0f;
		}
	}

	levelColor = &D_8013FCD4_14EC84[(currentLevel * 9) - 9];
	spEA = levelColor[0];
	spE8 = levelColor[1];
	spE6 = levelColor[2];
	spE4 = (spEA >= 0xB4) ? (spEA - 0xB4) : 0;
	spE2 = (spE8 >= 0xB4) ? (spE8 - 0xB4) : 0;
	spE0 = (spE6 >= 0xB4) ? (spE6 - 0xB4) : 0;
	spD0 = levelColor[7];
	spD2 = levelColor[6];
	spCE = levelColor[8];
	cR = levelColor[3];
	cG = levelColor[4];
	cB = levelColor[5];

	vtx = D_8005BB34;
	vtx->v.ob[0] = arg0[0];
	vtx->v.ob[1] = arg0[1];
	vtx->v.ob[2] = arg0[2];
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0;
	vtx->v.cn[0] = cR;
	vtx->v.cn[1] = cG;
	vtx->v.cn[2] = cB;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	sinTerm = (s32)(spF8 * sp11C);
	cosTerm = (s32)(spF8 * (f32)((f64)(f32)cosTerm / 32768.0));
	xStep = (s16)(s32)(sp12C * spF4);
	yStep = (s16)(s32)(sp130 * spF4);
	zStep = (s16)(s32)(sp134 * spF4);
	xTri = ((s16)xStep) * 3;
	zTri = ((s16)zStep) * 3;

	vtx->v.ob[0] = arg1[0] + (s16)sinTerm + xTri;
	vtx->v.ob[1] = arg1[1] + yStep;
	vtx->v.ob[2] = arg1[2] + (s16)cosTerm + zTri;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0x400;
	vtx->v.tc[1] = 0x200;
	vtx->v.cn[0] = cR;
	vtx->v.cn[1] = cG;
	vtx->v.cn[2] = cB;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = arg1[0] - (s16)sinTerm + xTri;
	vtx->v.ob[1] = arg1[1] + yStep;
	vtx->v.ob[2] = arg1[2] - (s16)cosTerm + zTri;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0x400;
	vtx->v.tc[1] = 0x200;
	vtx->v.cn[0] = cR;
	vtx->v.cn[1] = cG;
	vtx->v.cn[2] = cB;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = arg1[0] + (xStep * 4);
	vtx->v.ob[1] = arg1[1] + (yStep * 4) + 5;
	vtx->v.ob[2] = arg1[2] + (zStep * 4);
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0x400;
	vtx->v.tc[1] = 0;
	vtx->v.cn[0] = spD2;
	vtx->v.cn[1] = spD0;
	vtx->v.cn[2] = spCE;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	halfSin = ((s16)sinTerm >= 0) ? ((s16)sinTerm >> 1) : (((s16)sinTerm + 1) >> 1);
	halfCos = ((s16)cosTerm >= 0) ? ((s16)cosTerm >> 1) : (((s16)cosTerm + 1) >> 1);

	vtx->v.ob[0] = arg1[0];
	vtx->v.ob[1] = arg1[1];
	vtx->v.ob[2] = arg1[2];
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0x400;
	vtx->v.tc[1] = 0;
	vtx->v.cn[0] = spE4;
	vtx->v.cn[1] = spE2;
	vtx->v.cn[2] = spE0;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = arg1[0] + halfSin;
	vtx->v.ob[1] = (s16)(s32)((f32)arg1[1] - spF4);
	vtx->v.ob[2] = arg1[2] + halfCos;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0x400;
	vtx->v.tc[1] = 0x200;
	vtx->v.cn[0] = spE4;
	vtx->v.cn[1] = spE2;
	vtx->v.cn[2] = spE0;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = arg1[0] - halfSin;
	vtx->v.ob[1] = (s16)(s32)((f32)arg1[1] - spF4);
	vtx->v.ob[2] = arg1[2] - halfCos;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0x400;
	vtx->v.tc[1] = 0x200;
	vtx->v.cn[0] = spE4;
	vtx->v.cn[1] = spE2;
	vtx->v.cn[2] = spE0;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = arg2[0];
	vtx->v.ob[1] = arg2[1];
	vtx->v.ob[2] = arg2[2];
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0;
	vtx->v.cn[0] = spEA;
	vtx->v.cn[1] = spE8;
	vtx->v.cn[2] = spE6;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = arg2[0] + halfSin;
	vtx->v.ob[1] = (s16)(s32)((f32)arg2[1] - spF4);
	vtx->v.ob[2] = arg2[2] + halfCos;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0x200;
	vtx->v.cn[0] = spEA;
	vtx->v.cn[1] = spE8;
	vtx->v.cn[2] = spE6;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	vtx->v.ob[0] = arg2[0] - halfSin;
	vtx->v.ob[1] = (s16)(s32)((f32)arg2[1] - spF4);
	vtx->v.ob[2] = arg2[2] - halfCos;
	vtx->v.flag = 0;
	vtx->v.tc[0] = 0;
	vtx->v.tc[1] = 0x200;
	vtx->v.cn[0] = spEA;
	vtx->v.cn[1] = spE8;
	vtx->v.cn[2] = spE6;
	vtx->v.cn[3] = 0xFF;
	vtx++;

	D_8005BB34 = (Vtx *)vtx;

	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_FOG);
	gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA, G_CC_PASS2);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_1014480);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 512);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 15, 15);
	gSPVertex(D_8005BB2C++, (u32)(D_8005BB34 - 10) & 0x1FFFFFFF, 10, 0);
	gSP1Triangle(D_8005BB2C++, 1, 3, 0, 0);
	gSP1Triangle(D_8005BB2C++, 3, 2, 0, 0);
	gSP1Triangle(D_8005BB2C++, 2, 1, 0, 0);
	gSP1Triangle(D_8005BB2C++, 1, 2, 3, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_1014680);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 512);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 15, 15);
	gDPPipeSync(D_8005BB2C++);
	gSP1Triangle(D_8005BB2C++, 6, 9, 7, 0);
	gSP1Triangle(D_8005BB2C++, 6, 7, 4, 0);
	gSP1Triangle(D_8005BB2C++, 4, 7, 8, 0);
	gSP1Triangle(D_8005BB2C++, 4, 8, 5, 0);
	gDPPipeSync(D_8005BB2C++);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F7790_106740.s")
#endif

#ifdef NON_MATCHING
void func_800F842C_1073DC(s32 arg0) {
	UnkF9230ShadowWalker *walker;
	Unk801601F0 *anim;
	Unk80052B40 sp84;
	Unk80052B40 sp8C;
	s16 spD2;
	s16 spD0;
	s16 sp80;
	s32 spAC;
	s32 spB0;
	s32 spB4;
	s32 spB8;
	s32 spC4;
	s32 spC8;
	s32 spCC;
	s32 frameGroup;
	s32 i;

	if (D_80157FF0[arg0] != -1) {
		return;
	}

	walker = &D_80158000[arg0];
	anim = &D_801601F0[walker->limbs[0].unk23];

	for (i = 0; i < 6; i++) {
		UnkF9230ShadowLimb *entry = &walker->limbs[i];
		if (entry->unk23 != 1) {
			continue;
		}

		gDPPipeSync(D_8005BB2C++);

		if (i < 3) {
			sp80 = (s16)(0x4000 - ((anim->unk10 * i) + anim->unkE));
		} else {
			sp80 = (s16)(((anim->unk10 * (i - 3)) + anim->unkE) - 0x4000);
		}

		sp84.unk0 = walker->limbs[0].unk18 + 0x4000;
		if ((i & 1) != 0) {
			sp84.unk2 = (s16)(walker->unk168 * 0x2BC);
		} else {
			sp84.unk2 = (s16)(-(s16)(walker->unk168 * 0x190));
		}
		frameGroup = i % 3;
		sp84.unk4 = (s16)(walker->unk168 * (frameGroup * 0x12C));

		sp8C.unk0 = (s16)(s32)((((f64)(f32)coss(sp80)) / 32768.0) * (f64)(walker->unk168 * (frameGroup * sp82 + 0xA)));
		func_8011E6FC_12D6AC(walker->limbs[0].unk12, walker->limbs[0].unk16, &sp80);
		sp8C.unk2 = sp80 + walker->unk16A;
		sp8C.unk4 = (s16)(s32)((((f64)(f32)sins(sp80)) / 32768.0) * (f64)(walker->unk168 * (frameGroup * sp82 + 0xA)));

		if (walker->limbs[0].unk22 == 8) {
			s16 limit = (s16)(D_80222A70 - 0x64);

			if (sp8C.unk2 > limit) {
				sp8C.unk2 = limit;
			}
		}

		D_8005BB38 += 0x40;
		func_800039D0_45D0(&sp8C, &sp84, NULL, D_8005BB38);
		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		D_8005BB38 += 0x40;

		spAC = (s32)((((f64)(f32)coss(sp80)) / 32768.0) * (f64)anim->unk4);
		spB0 = anim->unkA;
		spB4 = (s32)((((f64)(f32)sins(sp80)) / 32768.0) * (f64)anim->unk4);
		spB8 = (s32)((((f64)(f32)coss(sp80)) / 32768.0) * (f64)anim->unk6);
		spC4 = (s32)((((f64)(f32)coss(sp80)) / 32768.0) * (f64)spD2);
		spC8 = spD0;
		spCC = (s32)((((f64)(f32)sins(sp80)) / 32768.0) * (f64)spD2);

		func_800F4258_103208((UnkF9230Func800F4748Entry *)walker, anim->unk4, sp8C.unk2, anim->unk6, 0, &spD2, &spD0);

		switch (anim->unk14) {
			case 0:
				func_800F7790_106740(&spB8, &spC4, &spAC, walker->limbs[0].unk23);
				break;
			case 1:
				func_800F554C_1044FC(&spB8, &spC4, &spAC, walker->limbs[0].unk23);
				break;
			case 2:
				func_800F63D0_105380(&spB8, &spC4, &spAC, walker->limbs[0].unk23);
				break;
		}

		if (walker->limbs[0].unk22 == 4) {
			UnkF9230ShadowLimb *nextEntry = &walker->limbs[1];

			if (walker->unk168 == 1) {
				func_800DF038_EDFE8((s16)(spAC + sp8C.unk0), (s16)(spB0 + sp8C.unk2), (s16)(spB4 + sp8C.unk4), 0x46, 0, 0);
			}

			func_800C1ECC_D0E7C((s16)(spAC + sp8C.unk0), (s16)(spB0 + sp8C.unk2), (s16)(spB4 + sp8C.unk4), nextEntry->unk22, 0);
			func_8011E6FC_12D6AC((s16)(spAC + sp8C.unk0), (s16)(spB4 + sp8C.unk4), &sp80);
			if (sp80 >= sp8C.unk2) {
				nextEntry->unk23 = 2;
				func_800DF038_EDFE8((s16)(spAC + sp8C.unk0), sp80, (s16)(spB4 + sp8C.unk4), 0x46, 0, 0);
			}
		}

		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F842C_1073DC.s")
#endif

// CURRENT(20852)
#ifdef NON_MATCHING
void func_800F8B24_107AD4(s32 arg0) {
	UnkF9230ShadowWalker *walker;
	Unk80052B40 sp140;
	Unk80052B40 sp138;
	s32 sp100[3];
	s32 spF4[3];
	s32 spE8[3];
	Unk801601F0 *anim;
	s32 i;
	s32 updateState;
	u8 state;
	Mtx spA8;

	if (D_80157FF0[arg0] != -1) {
		return;
	}

	walker = &D_80158000[arg0];
	anim = &D_801601F0[walker->limbs[0].unk23];

	if ((func_800B93AC_C835C(walker->limbs[0].unk12, walker->limbs[0].unk16, (u16)anim->unk6, (s16)D_80052B2C->unk0,
						 (s32)D_80052B2C->unk8, 0x4000 - D_80047950)
			!= 0)
		|| (walker->limbs[0].unk22 == 8)) {
		if (anim->unk14 != 0) {
			gDPPipeSync(D_8005BB2C++);
			guLookAtReflect(&spA8, (LookAt *)&walker->pad145[0x148 - 0x145], 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 50.0f, 0.0f, 1.0f, 0.0f);
			gSPLookAtX(D_8005BB2C++, (Light *)&walker->pad145[0x148 - 0x145]);
			gSPLookAtY(D_8005BB2C++, (Light *)&walker->pad145[0x158 - 0x145]);
			gDPPipeSync(D_8005BB2C++);
		}

		gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_aLIGHT_1, 0xFFFFFFFF);
		gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_bLIGHT_1, 0xFFFFFFFF);
		gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_aLIGHT_2, 0x808080FF);
		gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_bLIGHT_2, 0x808080FF);

		state = walker->limbs[0].unk22;
		updateState = 0;
		if ((state == 2) || (state == 4) || (state == 8)) {
			updateState = 1;
		}

		if (updateState != 0) {
			func_800F842C_1073DC(arg0);
			state = walker->limbs[0].unk22;
		}

		if (state == 0x10) {
			AlienInstance *alien;

			alien = &alienInstances[walker->alienIdx];
			sp140.unk0 = alien->unk0;
			sp140.unk2 = D_8014DD50[alien->unkC].unk2 + alien->unk2;
			sp140.unk4 = alien->unk4;
			func_800039D0_45D0(&sp140, NULL, NULL, D_8005BB38);
			gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			D_8005BB38 += 0x40;

			sp138.unk0 = -walker->limbs[0].unk18;
			sp138.unk2 = -D_8014DD50[alien->unkC].unkA;
			sp138.unk4 = 0;
			func_800039D0_45D0(NULL, &sp138, NULL, D_8005BB38);
			gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			D_8005BB38 += 0x40;

			sp140.unk2 = walker->unk16A;
			sp140.unk0 = -sp140.unk0;
			sp140.unk2 = -sp140.unk2;
			sp140.unk4 = -sp140.unk4;
			func_800039D0_45D0(&sp140, NULL, NULL, D_8005BB38);
			gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			D_8005BB38 += 0x40;

			state = walker->limbs[0].unk22;
		}

		for (i = 0; i < anim->unkC; i++) {
			UnkF9230ShadowLimb *entry;
			s16 arg7;

			entry = &walker->limbs[i + 1];
			if (entry->unk23 != 0) {
				continue;
			}

			if (state == 0x10) {
				arg7 = walker->unk16A;
			} else {
				arg7 = entry->unk16;
			}

			sp100[0] = entry->unkA;
			sp100[1] = entry->unk2;
			sp100[2] = entry->unkC;
			spF4[0] = entry->unk1E;
			spF4[1] = arg7;
			spF4[2] = entry->unk20;
			spE8[0] = entry->unk12;
			spE8[1] = entry->unk14;
			spE8[2] = entry->unk16;

			if (walker->limbs[0].unk22 == 4) {
				s32 rnd;
				s32 mod;

				rnd = func_800038E0_44E0();
				mod = rnd & 0xF;
				if ((rnd < 0) && (mod != 0)) {
					mod -= 0x10;
				}
				spE8[0] = spE8[0] + mod - 8;

				rnd = func_800038E0_44E0();
				mod = rnd & 0xF;
				if ((rnd < 0) && (mod != 0)) {
					mod -= 0x10;
				}
				spE8[2] = spE8[2] + mod - 8;
			}

			switch (anim->unk14) {
				case 0:
					func_800F7790_106740(sp100, spE8, spF4, walker->limbs[0].unk23);
					break;
				case 1:
					func_800F554C_1044FC(sp100, spE8, spF4, walker->limbs[0].unk23);
					break;
				case 2:
					func_800F63D0_105380(sp100, spE8, spF4, walker->limbs[0].unk23);
					break;
			}
		}

		if (state & 0x10) {
			gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F8B24_107AD4.s")
#endif

#ifdef NON_MATCHING
// CURRENT(11073)
void func_800F9118_1080C8(s32 arg0) {
	UnkF9230ShadowWalker *walker;
	s32 spBC;
	s16 spB8;
	s16 spAC;
	s16 sp96;
	s16 sp92;
	s32 sp74;
	s32 sp70;
	s32 sp64;
	f64 temp_f20;
	s16 temp_a3;
	s16 temp_fp;
	s16 temp_s1;
	s16 temp_s2_2;
	s16 temp_s3;
	s16 temp_s3_2;
	s16 temp_s4;
	s16 temp_s4_2;
	s16 temp_s6_2;
	s32 temp_s7;
	s16 temp_s7_2;
	s16 temp_v1_3;
	s16 var_s5;
	s16 var_t1;
	s32 temp_lo;
	s32 temp_lo_2;
	s32 temp_s2;
	s32 temp_t3;
	s32 temp_t5;
	s32 temp_v0_2;
	s32 temp_v1_2;
	s32 var_a2;
	u8 temp_s0;
	Unk801601F0 *temp_v1;

	if (D_80157FF0[arg0] == -1) {
		walker = &D_80158000[arg0];
		if ((func_8011E6FC_12D6AC(walker->limbs[0].unk12, walker->limbs[0].unk16, &sp92) == -1) && (walker->limbs[0].unk22 != 0x10)) {
			temp_v1 = &D_801601F0[walker->limbs[0].unk23];
			temp_s0 = temp_v1->unkC;
			var_t1 = temp_v1->unk8;
			if (D_8013FCD0_14EC80 != 0) {
				var_t1 *= 2;
			}
			sp96 = var_t1;
			if (func_800B93AC_C835C(walker->limbs[0].unk12, walker->limbs[0].unk16, (u16)temp_v1->unk6, (s16)D_80052B2C->unk0,
					(s32)D_80052B2C->unk8, 0x4000 - D_80047950) != 0) {
				var_a2 = 0;
				if (func_800E95BC_F856C(*(s32 *)&walker->limbs[0].unk10, func_800B84D0_C7480(walker->limbs[0].unk12, walker->limbs[0].unk16) >> 8,
						*(s32 *)&walker->limbs[0].unk14) == 0) {
					sp74 = (s32)temp_s0;
					if ((s32)temp_s0 > 0) {
						UnkF9230ShadowLimb *var_limb = &walker->limbs[1];
						do {
							spBC = var_a2;
							if (var_limb->unk23 == 0) {
								temp_f20 = (f64)sp96;
								if (walker->limbs[0].unk22 & 0x80) {
									var_s5 = walker->limbs[0].unk1A;
								} else {
									var_s5 = walker->limbs[0].unk18;
								}
								if (var_a2 >= (sp74 / 2)) {
									var_s5 += 0x8000;
								}
								temp_s2 = var_s5 & 0xFFFF;
								temp_s1 = (s16)(s32)((((f64)(f32)coss(temp_s2 & 0xFFFF)) / 32768.0) * temp_f20);
								temp_s3 = var_limb->unk6;
								temp_s4 = var_limb->unk8;
								temp_s2_2 = (s16)(s32)((((f64)(f32)sins(temp_s2 & 0xFFFF)) / 32768.0) * temp_f20);
								temp_v0_2 = func_800B84D0_C7480(temp_s3, temp_s4);
								temp_lo = temp_s1 / 3;
								temp_lo_2 = temp_s2_2 / 3;

								D_8005BB34->v.ob[0] = temp_s3 + temp_lo;
								temp_v1_2 = temp_v0_2 >> 8;
								D_8005BB34->v.ob[1] = (s16)temp_v1_2;
								D_8005BB34->v.ob[2] = temp_s4 + temp_lo_2;
								D_8005BB34->v.flag = 0;
								D_8005BB34->v.tc[0] = 0x100;
								D_8005BB34->v.tc[1] = 0;
								D_8005BB34->v.cn[0] = 0;
								D_8005BB34->v.cn[1] = 0;
								D_8005BB34->v.cn[2] = 0;
								D_8005BB34->v.cn[3] = 0;
								D_8005BB34++;

								D_8005BB34->v.ob[0] = temp_s3 - temp_lo;
								D_8005BB34->v.ob[1] = (s16)temp_v1_2;
								D_8005BB34->v.ob[2] = temp_s4 - temp_lo_2;
								D_8005BB34->v.flag = 0;
								D_8005BB34->v.tc[0] = 0x200;
								D_8005BB34->v.tc[1] = 0;
								D_8005BB34->v.cn[0] = 0;
								D_8005BB34->v.cn[1] = 0;
								D_8005BB34->v.cn[2] = 0;
								D_8005BB34->v.cn[3] = 0;
								D_8005BB34++;

								temp_s7 = var_limb->unk1E;
								temp_fp = var_limb->unk20;
								func_8011E6FC_12D6AC(temp_s7, temp_fp, &spAC);
								D_8005BB34->v.ob[0] = temp_s7;
								D_8005BB34->v.ob[1] = spAC;
								D_8005BB34->v.ob[2] = temp_fp;
								D_8005BB34->v.flag = 0;
								D_8005BB34->v.tc[0] = 0x80;
								D_8005BB34->v.tc[1] = 0;
								D_8005BB34->v.cn[0] = 0;
								D_8005BB34->v.cn[1] = 0;
								D_8005BB34->v.cn[2] = 0;
								D_8005BB34->v.cn[3] = 0x80;
								D_8005BB34++;

								temp_s3_2 = var_limb->unkE;
								temp_s4_2 = var_limb->unk12;
								temp_v1_3 = temp_s3_2 + temp_s1;
								temp_a3 = temp_s4_2 + temp_s2_2;
								sp64 = (s32)temp_a3;
								sp70 = (s32)temp_v1_3;
								func_8011E6FC_12D6AC(temp_v1_3, temp_a3, &spB8);
								D_8005BB34->v.ob[0] = (s16)sp70;
								temp_s6_2 = temp_s3_2 - temp_s1;
								temp_s7_2 = temp_s4_2 - temp_s2_2;
								D_8005BB34->v.ob[1] = spB8;
								D_8005BB34->v.ob[2] = (s16)sp64;
								D_8005BB34->v.flag = 0;
								D_8005BB34->v.tc[0] = 0;
								D_8005BB34->v.tc[1] = 0x180;
								D_8005BB34->v.cn[0] = 0;
								D_8005BB34->v.cn[1] = 0;
								D_8005BB34->v.cn[2] = 0;
								D_8005BB34->v.cn[3] = 0x80;
								D_8005BB34++;

								func_8011E6FC_12D6AC(temp_s6_2, temp_s7_2, &spB8);
								D_8005BB34->v.ob[0] = temp_s6_2;
								D_8005BB34->v.ob[1] = spB8;
								D_8005BB34->v.ob[2] = temp_s7_2;
								D_8005BB34->v.flag = 0;
								D_8005BB34->v.tc[0] = 0x100;
								D_8005BB34->v.tc[1] = 0x180;
								D_8005BB34->v.cn[0] = 0;
								D_8005BB34->v.cn[1] = 0;
								D_8005BB34->v.cn[2] = 0;
								D_8005BB34->v.cn[3] = 0x80;
								D_8005BB34++;

								temp_t5 = (var_s5 - 0x4000) & 0xFFFF;
								if (spBC >= ((s32)D_801601F0[walker->limbs[0].unk23].unkC / 2)) {
									temp_t3 = (var_s5 + 0x4000) & 0xFFFF;
									coss(temp_t3 & 0xFFFF);
									sins(temp_t3 & 0xFFFF);
								} else {
									coss(temp_t5 & 0xFFFF);
									sins(temp_t5 & 0xFFFF);
								}

								if (sp74 != 8) {
									gSPVertex(D_8005BB2C++, D_8005BB34 - 5, 5, 0);
									gSP1Triangle(D_8005BB2C++, 0, 1, 3, 0);
									gSP1Triangle(D_8005BB2C++, 1, 4, 3, 0);
									gSP1Triangle(D_8005BB2C++, 2, 3, 4, 0);
								}
							}
							var_a2 = spBC + 1;
							var_limb++;
						} while (var_a2 != sp74);
					}
				}
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F9118_1080C8.s")
#endif

// DrawLegsShadows ?
void func_800F97FC_1087AC(void) {
	s32 i;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PASS2);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);

	for (i = 0; i < 8; i++) {
		func_800F9118_1080C8(i);
	}

	gDPPipeSync(D_8005BB2C++);
}

// drawLegs
void func_800F98C0_108870(void) {
	s32 i;
	u32 textureAddr;

	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_TEXTURE_ENABLE | G_SHADE | G_CULL_BOTH | G_SHADING_SMOOTH | 0x0000CDF8);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_FOG | G_LIGHTING | G_SHADING_SMOOTH);
	gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
	gDPSetColorDither(D_8005BB2C++, G_CD_BAYER);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetTextureLOD(D_8005BB2C++, G_TL_TILE);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetCombineLERP(D_8005BB2C++, TEXEL0, 0, SHADE, 0, 0, TEXEL0, SHADE, TEXEL0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C0, 0x7C0);
	gSPTexture(D_8005BB2C++, 0x07C0, 0, 0, G_TX_RENDERTILE, G_ON);
	textureAddr = (u32)D_5047470 & 0x1FFFFFFF;
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, textureAddr);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
		   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 31, 256);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
		   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPTileSync(D_8005BB2C++);

	i = 0;
	do {
		func_800F8B24_107AD4(i);
		i++;
	} while (i != 8);

	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, G_TEXTURE_GEN);
	gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK | G_LIGHTING);
	gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
}

s32 func_800F9C40_108BF0(s32 arg0) { return arg0 * arg0; }

s16 func_800F9C50_108C00(s16 arg0, s16 arg1) {
	s16 temp_v1;

	temp_v1 = arg0 - arg1;

	if (temp_v1 >= 0x8000) {
		return (s16)(0x10000 - temp_v1);
	}
	if (temp_v1 < -0x8000) {
		return (s16)(temp_v1 + 0x10000);
	}
	return temp_v1;
}

void func_800F9CB0_108C60(s16 arg0, s16 *arg1, s16 arg2) {
	s32 sp1C;

	sp1C = func_800F9C40_108BF0(arg0 - D_80159218);
	if ((u32)(func_800F9C40_108BF0(arg2 - D_8015921C) + sp1C) < 0x9C4U) {
		*arg1 += 0x14;
	}
}

s16 func_800F9D24_108CD4(s16 arg0, s16 arg1) {
	return (s16)(func_800B84D0_C7480(arg0, arg1) >> 8);
}

s16 func_800F9D60_108D10(s16 arg0, s16 arg1, s16 *arg2, s16 *arg3, s16 *arg4) {
	s32 pad1;
	s16 sp22;
	s16 temp_v0;
	s32 var_v1;

	*arg2 = (s16)(func_800B85CC_C757C(arg0, arg1) >> 8);
	var_v1 = func_8011E6FC_12D6AC(arg0, arg1, &sp22);
	if (var_v1 != -1) {
		*arg3 = buildingInstances[var_v1].yCoord;
		*arg4 = sp22;
	} else {
		temp_v0 = *arg2;
		*arg3 = temp_v0;
		*arg4 = temp_v0;
	}
	return (s16)var_v1;
}

s16 func_800F9E0C_108DBC(s16 arg0, s16 arg1, s16 *arg2, s16 *arg3, s16 *arg4, s32 arg5, s32 arg6) {
	s16 pad1;
	s16 pad2;
	s16 sp2A;
	s32 temp_v0;
	s16 temp_v1;

	*arg2 = (s16)(func_800B85CC_C757C(arg0, arg1) >> 8);
	temp_v0 = func_8011E788_12D738(arg0, arg1, &sp2A, arg5, arg6);
	if (temp_v0 != -1) {
		*arg3 = buildingInstances[temp_v0].yCoord;
		*arg4 = sp2A;
	} else {
		temp_v1 = *arg2;
		*arg3 = temp_v1;
		*arg4 = temp_v1;
	}
	return temp_v0;
}

s16 func_800F9EC4_108E74(s16 arg0, s16 arg1) {
	return (s16)(func_800B85CC_C757C(arg0, arg1) >> 8);
}

s16 func_800F9F00_108EB0(s16 arg0, s16 arg1) {
	s32 var_a1;
	s16 temp_v1;
	s32 var_v1;

	temp_v1 = (s16)(func_800B85CC_C757C(arg0, arg1) >> 8);
	var_v1 = D_80222A70;
	if (var_v1 < temp_v1) {
		var_a1 = temp_v1;
	} else {
		var_a1 = var_v1;
	}
	return (s16)var_a1;
}

s16 func_800F9F64_108F14(s16 arg0, s16 arg1) {
	s16 sp26;
	s16 sp24;
	s16 sp22;
	func_800F9D60_108D10(arg0, arg1, &sp22, &sp26, &sp24);
	return sp24;
}

s16 func_800F9FAC_108F5C(s16 arg0, s16 arg1) {
	s16 sp2E;
	s16 sp2C;
	s16 sp2A;
	s32 var_v1;

	func_800F9D60_108D10(arg0, arg1, &sp2A, &sp2E, &sp2C);
	if (D_80222A70 < sp2C) {
		var_v1 = sp2C;
	} else {
		var_v1 = D_80222A70;
	}
	return (s16) var_v1;
}

// CURRENT(5674)
#ifdef NON_MATCHING
s16 func_800FA018_108FC8(VehicleInstance *arg0, s16 arg1, s32 arg2) {
	VehicleSpec *spec;
	s16 h0, h1, h2, h3, h4, h5, h6, h7, temp;
	f32 xOff, zOff;
	f64 halfDist;
	u16 angle;

	angle = arg1;
	spec = &vehicleSpecs[arg0->unk1A];
	xOff = (f32)(((f64)(f32)coss(angle) / 32768.0) * (halfDist = (f64)(arg2 >> 1)));
	zOff = (f32)(((f64)(f32)sins(angle) / 32768.0) * halfDist);
	func_800F9D60_108D10((s16)((f32)arg0->unk0 - xOff), (s16)((f32)arg0->unk4 - zOff), &h0, &temp, &h4);
	func_800F9D60_108D10((s16)((f32)arg0->unk0 + xOff), (s16)((f32)arg0->unk4 + zOff), &h1, &temp, &h5);

	xOff = (f32)(((f64)(f32)coss(angle) / 32768.0) * (halfDist = (f64)(arg2 >> 2)));
	zOff = (f32)(((f64)(f32)sins(angle) / 32768.0) * halfDist);
	func_800F9D60_108D10((s16)((f32)arg0->unk0 - xOff), (s16)((f32)arg0->unk4 - zOff), &h2, &temp, &h6);
	func_800F9D60_108D10((s16)((f32)arg0->unk0 + xOff), (s16)((f32)arg0->unk4 + zOff), &h3, &temp, &h7);

	if (!(spec->unk4C & 0x100)) {
		if (D_80222A70 >= h0) {
			h0 = (s16)D_80222A70;
		}
		if (D_80222A70 >= h1) {
			h1 = (s16)D_80222A70;
		}
		if (D_80222A70 >= h2) {
			h2 = (s16)D_80222A70;
		}
		if (D_80222A70 >= h3) {
			h3 = (s16)D_80222A70;
		}
	}

	if ((arg0->unk20 & 0x800) || (arg0->unk20 & 4)) {
		if (h4 >= h0) {
			h0 = h4;
		}
		if (h5 >= h1) {
			h1 = h5;
		}
		if (h6 >= h2) {
			h2 = h6;
		}
		if (h7 >= h3) {
			h3 = h7;
		}
	}

	if (h2 >= h0) {
		h0 = h2;
	}
	if (h3 >= h1) {
		h1 = h3;
	}

	return func_80003824_4424((f32)arg2, (f32)(h0 - h1));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FA018_108FC8.s")
#endif

// CURRENT(665)
#ifdef NON_MATCHING
s32 func_800FA40C_1093BC(VehicleInstance *vehicle, s16 angle, s16 distance) {
	VehicleSpec *spec;
	s16 height0;
	s16 height1;
	f32 xOffset;
	f32 zOffset;
	f64 halfDistance;
	u16 savedAngle;

	savedAngle = angle;
	spec = &vehicleSpecs[vehicle->unk1A];
	xOffset = (f32)(((f64)(f32)coss(savedAngle) / 32768.0) * (halfDistance = (f64)(distance >> 1)));
	zOffset = (f32)(((f64)(f32)sins(savedAngle) / 32768.0) * halfDistance);
	height0 = (s16)(func_800B85CC_C757C((s16)(s32)((f32)vehicle->unk0 - xOffset), (s16)(s32)((f32)vehicle->unk4 - zOffset)) >> 8);
	height1 = (s16)(func_800B85CC_C757C((s16)(s32)((f32)vehicle->unk0 + xOffset), (s16)(s32)((f32)vehicle->unk4 + zOffset)) >> 8);
	if ((vehicle == D_80052B34) && (D_80159320 & 0x400)) {
		func_800F9CB0_108C60((s16)(s32)((f32)vehicle->unk0 - xOffset), &height0, (s16)(s32)((f32)vehicle->unk4 - zOffset));
		func_800F9CB0_108C60((s16)(s32)((f32)vehicle->unk0 + xOffset), &height1, (s16)(s32)((f32)vehicle->unk4 + zOffset));
	}
	if (!(spec->unk4C & 0x100)) {
		if (D_80222A70 >= height0) {
			height0 = (s16)D_80222A70;
		}
		if (D_80222A70 >= height1) {
			height1 = (s16)D_80222A70;
		}
	}
	return func_80003824_4424((f32)distance, (f32)(height0 - height1));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FA40C_1093BC.s")
#endif

s16 func_800FA690_109640(s16 arg0, s16 arg1, s16 arg2)
{
	s16 h1;
	s16 new_var;
	f32 cos_val;
	f32 sin_val;
	cos_val = (f32)((((f32)coss((u16)arg2)) / 32768.0) * 50.0);
	sin_val = (f32)((((f32)sins((u16)arg2)) / 32768.0) * 50.0);
	h1 = (s16)(func_800B85CC_C757C((s16)(((f32)arg0) - cos_val), (s16)(((f32)arg1) - sin_val)) >> 8);
	new_var = (s16)(func_800B85CC_C757C((s16)(((f32)arg0) + cos_val), (s16)(((f32)arg1) + sin_val)) >> 8);
	return func_80003824_4424(100.0f, (f32)(h1 - new_var));
}

// CURRENT(3227)
#ifdef NON_MATCHING
s16 func_800FA7F0_1097A0(VehicleInstance *arg0, s16 arg1, s32 arg2) {
	VehicleSpec *spec;
	s16 h1;
	s16 h2;
	f32 xOff;
	f32 zOff;
	f64 halfDist;
	u16 angle;

	angle = arg1;
	spec = &vehicleSpecs[arg0->unk1A];
	halfDist = (f64)(arg2 >> 1);
	xOff = (f32)(((f64)(f32)coss(angle) / 32768.0) * halfDist);
	zOff = (f32)(((f64)(f32)sins(angle) / 32768.0) * halfDist);
	h1 = (s16)(func_800B85CC_C757C((s16)(s32)((f32)arg0->unk0 - (xOff * 2.0f)), (s16)(s32)((f32)arg0->unk4 - (zOff * 2.0f))) >> 8);
	h2 = (s16)(func_800B85CC_C757C((s16)(s32)((f32)arg0->unk0 + xOff), (s16)(s32)((f32)arg0->unk4 + zOff)) >> 8);

	if (!(spec->unk4C & 0x100)) {
		if (D_80222A70 >= h1) {
			h1 = (s16)D_80222A70;
		}
		if (D_80222A70 >= h2) {
			h2 = (s16)D_80222A70;
		}
	}

	return func_80003824_4424((f32)((f64)arg2 * 1.5), (f32)(h1 - h2));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FA7F0_1097A0.s")
#endif

// CURRENT(1375)
#ifdef NON_MATCHING
s16 func_800FAA08_1099B8(s16 arg0, s16 arg1) {
	s16 temp_v1;
	s16 var_a0;
	register s16 diff;
	s16 var_v0;
	register u16 *var_a3;
	s16 ret;
	s32 temp_v0;

	temp_v1 = arg0 & 0xFF;
	temp_v0 = 0xFF - (s16)(arg1 & 0xFF);
	if (temp_v0 < temp_v1) {
		var_a3 = (u16 *)((u8 *)D_80052A94 + ((s16)(arg1 >> 8) << 9) + ((s16)(arg0 >> 8) * 2));
		diff = (var_a3[0x100] & 0x3F) - (var_a3[0x101] & 0x3F);
	} else {
		var_a3 = (u16 *)((u8 *)D_80052A94 + ((s16)(arg1 >> 8) << 9) + ((s16)(arg0 >> 8) * 2));
		diff = (var_a3[0] & 0x3F) - (var_a3[1] & 0x3F);
	}
	if (diff >= 0) {
		var_a0 = diff;
	} else {
		var_a0 = -diff;
	}
	if (temp_v0 < temp_v1) {
		diff = (var_a3[1] & 0x3F) - (var_a3[0x101] & 0x3F);
	} else {
		diff = (var_a3[0] & 0x3F) - (var_a3[0x100] & 0x3F);
	}
	if (diff >= 0) {
		var_v0 = diff;
	} else {
		var_v0 = -diff;
	}
	if (var_v0 < var_a0) {
		ret = var_a0;
	} else {
		ret = var_v0;
	}
	return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FAA08_1099B8.s")
#endif

s16 func_800FAB9C_109B4C(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s32 sp1C;
	s32 sp18;
	f32 temp_f2;
	f32 var_f0;
	s32 temp_v1;
	s32 temp_a0;
	f32 sp30;

	sp1C = func_800B84D0_C7480(arg0, arg1) >> 8;
	temp_v1 = arg2 - arg0;
	temp_a0 = arg3 - arg1;
	sp18 = func_800B84D0_C7480(arg2, arg3) >> 8;
	temp_f2 = (f32)(sp18 - sp1C) / (f32)(s32)sqrtf((f32)(temp_v1 * temp_v1 + temp_a0 * temp_a0)) * 8.0f;
	if (temp_f2 >= 0.0f) {
		var_f0 = temp_f2;
	} else {
		var_f0 = -temp_f2;
	}
	return (s16)(s32)var_f0;
}

void func_800FAC90_109C40(void) {
	VehicleInstance *var_s0;
	VehicleInstance *end;

	var_s0 = vehicleInstances, end = (VehicleInstance *)&D_80050AD0;
	do {
		if (func_800B0D10_BFCC0(var_s0->unk0, var_s0->unk4, 0) != 0) {
			var_s0->unk20 = var_s0->unk20 & ~0x40;
		} else {
			var_s0->unk20 = var_s0->unk20 | 0x40;
		}
		var_s0++;
	} while (var_s0 != end);
}

// CURRENT(535)
#ifdef NON_MATCHING
void func_800FAD10_109CC0(void) {
	VehicleInstance *var_v1;
	s8 var_v0;

	D_80158FD8 = 0;
	var_v1 = vehicleInstances;
	var_v0 = 0;
	do {
		if (var_v1[0].unk20 & 0x8000) {
			D_80158E80[D_80158FD8] = var_v0;
			D_80158FD8++;
		}
		if (var_v1[1].unk20 & 0x8000) {
			D_80158E80[D_80158FD8] = var_v0 + 1;
			D_80158FD8++;
		}
		if (var_v1[2].unk20 & 0x8000) {
			D_80158E80[D_80158FD8] = var_v0 + 2;
			D_80158FD8++;
		}
		if (var_v1[3].unk20 & 0x8000) {
			D_80158E80[D_80158FD8] = var_v0 + 3;
			D_80158FD8++;
		}
		var_v0 += 4;
		var_v1 += 4;
	} while (var_v0 != 0x80);
	D_80159320 &= ~0x2000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FAD10_109CC0.s")
#endif

s16 func_800FADF8_109DA8(s16 arg0) {
	s32 var_v1;

	var_v1 = D_80158FD8;
	if (var_v1--) {
		do {
			if (arg0 == D_80158E80[var_v1]) {
				return var_v1;
			}
		} while (var_v1--);
	}
	return -1;
}

s16 func_800FAE60_109E10(VehicleInstance *arg0) {
	return (s16)(arg0 - vehicleInstances);
}

void func_800FAE84_109E34(VehicleInstance *arg0) {
	VehicleSpec *spec = &vehicleSpecs[arg0->unk1A];
	arg0->unk0 = 0;
	arg0->unk2 = 0;
	arg0->unk4 = 0;
	arg0->unkE = 0;
	arg0->unk10 = 0;
	arg0->unk12 = 0;
	arg0->unk6 = 0;
	arg0->unk8 = 0;
	arg0->unkA = 0;
	arg0->unkC = -2;
	arg0->unk22 = 0;
	arg0->unk24 = 0;
	arg0->unk26 = 0;
	arg0->unk20 = spec->unk4C;
	arg0->unk1C = spec->hitPoints;
	arg0->unk14 = 0;
	arg0->unk16 = 0;
	arg0->unk18 = 0;
	arg0->unk28 = 0;
	arg0->unk2A = 0;
	arg0->unk2E = 0xFA;
	arg0->unk1E = 0;
	arg0->unk30 = 0.0f;
	arg0->unk34 = 0.0f;
	arg0->unk38 = 0.0f;
	arg0->unk3C = (s16)(spec->unk61 << 8);
	arg0->unk40 = 0;
	arg0->unk42 = 0;
	arg0->unk46 = arg0->unk46 & 0xFFC0;
	arg0->unk4C = 0.0f;
	arg0->unk50 = 0.0f;
	arg0->unk54 = 0.0f;
	arg0->unk58 = 0.0f;
	D_80158C58[func_800FAE60_109E10(arg0)] = 0.0f;
}

f32 func_800FAF74_109F24(VehicleInstance *arg0, VehicleInstance *arg1) {
	f32 temp_f0 = arg0->unk4C - arg1->unk4C;
	f32 temp_f2 = arg0->unk54 - arg1->unk54;
	return sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
}

void *func_800FAFB8_109F68(VehicleInstance *arg0) {
	if (arg0->unkC == -2) {
		return &vehicleSpecs[arg0->unk1A];
	}
	return &alienSpecs[arg0->unk1A];
}

f32 func_800FB014_109FC4(VehicleInstance *arg0) {
	s16 sp1E;

	sp1E = coss(arg0->unkE);
	return (f32)(((f64)(f32)coss(arg0->unk10) / 32768.0) * ((f64)(f32)sp1E / 32768.0) * (f64)arg0->unk58 + (f64)arg0->unk30);
}

f32 func_800FB098_10A048(VehicleInstance *arg0) {
	s16 sp1E;

	sp1E = sins(arg0->unkE);
	return (f32)(((f64)(f32)coss(arg0->unk10) / 32768.0) * ((f64)(f32)sp1E / 32768.0) * (f64)arg0->unk58 + (f64)arg0->unk38);
}

f32 func_800FB11C_10A0CC(VehicleInstance *arg0) {
	f32 sp1C = func_800FB014_109FC4(arg0);
	f32 temp_f0 = func_800FB098_10A048(arg0);
	return sqrtf((sp1C * sp1C) + (temp_f0 * temp_f0));
}

// CURRENT(300)
#ifdef NON_MATCHING
s16 func_800FB160_10A110(VehicleInstance *arg0) {
	f32 sp1C;
	f32 sp18;
	f32 var_f16;
	f32 var_f2;
	s16 temp;

	sp1C = func_800FB014_109FC4(arg0);
	sp18 = func_800FB098_10A048(arg0);
	var_f16 = (-sp1C < sp1C) ? sp1C : -sp1C;
	var_f2 = (-sp18 < sp18) ? sp18 : -sp18;
	
	if ((f64)(var_f2 + var_f16) < 1.0) {
		if (arg0->unk58 < 0.0f) {
			return arg0->unk6;
		}
		temp = arg0->unk6;
		temp = -temp;
		return temp;
	}
	return func_80003824_4424(sp1C, sp18);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FB160_10A110.s")
#endif

void func_800FB238_10A1E8(VehicleInstance *arg0, s32 arg1, s32 arg2, s32 arg3) {
	u32 now;
	u32 last;

	(void)arg1;
	(void)arg2;
	(void)arg3;

	now = D_80052A8C;
	last = D_80159258;
	if (now < last) {
		D_80159258 = 0;
		last = 0;
	}

	if (now < D_8015925C) {
		D_8015925C = 0;
	}

	if (((now - last) >= 0xD) && ((f64)arg0->unk58 > 20.0)) {
		func_801371B8_146168(0, 0xD6, arg0->unk0, arg0->unk2, arg0->unk4, -1.0f);
		now = D_80052A8C;
		D_80159258 = now;
	}

	if (((now - D_8015925C) >= 7) && ((f64)arg0->unk58 > 20.0)) {
		func_800E0E9C_EFE4C(arg0->unk0, arg0->unk4, (u16)(vehicleSpecs[arg0->unk1A].unkC + arg0->unk12));
		D_8015925C = D_80052A8C;
	}
}

void func_800FB3A0_10A350(VehicleInstance *arg0, f32 arg1) {
	arg0->unk58 = arg0->unk58 + arg1;
	arg0->unk12 = (s16)(s32)arg0->unk58;
}

void func_800FB3C4_10A374(VehicleInstance *arg0, f32 arg1) {
	arg0->unk4C = arg0->unk4C + arg1;
	arg0->unk0 = (s16)(s32)arg0->unk4C;
}

void func_800FB3E8_10A398(VehicleInstance *arg0, f32 arg1) {
	arg0->unk50 = arg0->unk50 + arg1;
	arg0->unk2 = (s16)(s32)arg0->unk50;
}

void func_800FB40C_10A3BC(VehicleInstance *arg0, f32 arg1) {
	arg0->unk54 = arg0->unk54 + arg1;
	arg0->unk4 = (s16)(s32)arg0->unk54;
}

void func_800FB430_10A3E0(VehicleInstance *arg0, f32 arg1) { arg0->unk58 = arg1; arg0->unk12 = (s16)(s32)arg1; }

void func_800FB44C_10A3FC(VehicleInstance *arg0, f32 arg1) { arg0->unk4C = arg1; arg0->unk0 = (s16)(s32)arg1; }

void func_800FB468_10A418(VehicleInstance *arg0, f32 arg1) { arg0->unk50 = arg1; arg0->unk2 = (s16)(s32)arg1; }

void func_800FB484_10A434(VehicleInstance *arg0, f32 arg1) { arg0->unk54 = arg1; arg0->unk4 = (s16)(s32)arg1; }

void func_800FB4A0_10A450(s16 arg0, s16 arg1, s16 arg2) {
	s32 temp_v0;
	s32 temp_v1;

	temp_v0 = D_801593E8;
	temp_v1 = temp_v0 * 2;
	*(s16 *)((u8 *)D_80159328 + temp_v1) = arg0;
	*(s16 *)((u8 *)D_80159368 + temp_v1) = arg1;
	*(s16 *)((u8 *)D_801593A8 + temp_v1) = arg2;
	D_801593E8 = temp_v0 + 1;
	if (D_801593E8 >= 0x20) {
		D_801593E8 = 0;
	}
}

// CURRENT(21992)
#ifdef NON_MATCHING
void func_800FB504_10A4B4(void) {
	VehicleInstance *vehicle;
	VehicleSpec *spec;
	CameraAlienRef *scanAlien;
	AlienInstance *alien;
	AlienInstance *targetAlien;
	InputStruct_8012B150 *cameraTarget;
	s16 steerClamp;
	s16 pitchClamp;
	s16 pitch;
	s16 yaw;
	s16 bestIndex;
	s16 diff;
	s16 cosVal;
	s16 restoreSigned;
	s32 worldX;
	s32 worldY;
	s32 worldZ;
	s32 restoreSpeed;
	s32 bestScore;
	s32 targetDist;
	s32 nextX;
	s32 nextY;
	s32 nextZ;
	s32 i;
	s32 selectedInput;
	s32 tmp;
	u16 inputButtons;
	u16 animFrame;
	u16 *animBase;

	bestIndex = -1;
	yaw = D_80159318;
	vehicle = D_80052B34;

	if (vehicle == NULL) {
		D_80158FF4 = NULL;
		return;
	}

	spec = &vehicleSpecs[vehicle->unk1A];
	steerClamp = spec->arcOfFire;
	if (steerClamp < 0) {
		steerClamp = -steerClamp;
	}

	pitchClamp = D_80052B2C->unk36;

	if (D_80050AD4 == 1) {
		if (spec->unk4C & 0x08000000) {
			restoreSpeed = spec->gun2X;
			if (restoreSpeed < 0) {
				spec->gun2X = -restoreSpeed;
			}
		}
		func_80128504_1374B4((AlienInstance *) vehicle, 1, &worldX, &worldY, &worldZ);
	} else {
		if (spec->unk4C & 0x08000000) {
			restoreSpeed = spec->gun1X;
			if (restoreSpeed < 0) {
				spec->gun1X = -restoreSpeed;
			}
		}
		func_80128504_1374B4((AlienInstance *) vehicle, 0, &worldX, &worldY, &worldZ);
	}

	if (!(spec->unk4C & 0x00800000)) {
		s32 hasPitch = spec->unk4C & 0x00010000;
		inputButtons = currentControllerStates[0].button;
		if ((hasPitch || (spec->unk4C & 0x00080000)) && ((inputButtons & 0x10) || ((currentLevel == 2) && (D_80052B34->unk1A == 1)))) {
			if (hasPitch) {
				pitchClamp -= (currentControllerStates[0].stick_x * currentControllerStates[0].stick_x * currentControllerStates[0].stick_x) >> 8;
			} else {
				pitchClamp = 0;
			}

			tmp = (currentControllerStates[0].stick_y * currentControllerStates[0].stick_y * currentControllerStates[0].stick_y) >> 9;
			if (D_80031420_32020 & 4) {
				yaw += tmp;
			} else {
				yaw -= tmp;
			}

			D_80159320 |= 0x40000;
		} else {
			yaw = 0;
			pitchClamp = 0;
			D_80159320 &= 0xFFFBFFFF;
		}
	} else {
		D_80159320 &= 0xFFFBFFFF;
		pitchClamp = 0;
		yaw = 0;
		inputButtons = currentControllerStates[0].button;
		if ((inputButtons & 0x10) && (D_80052B34->unk20 & 2)) {
			D_801591BC = 1;
		} else {
			D_801591BC = 0;
		}
	}

	D_80158FF0 = 0;

	if (D_80159048 == 0) {
		bestScore = 0x17E8;
		for (i = 0xFE; i != 0; i--) {
			scanAlien = (CameraAlienRef *) &alienInstances[0xFE + i];

			if (scanAlien->unk1A >= 2) {
				u16 angleDiff;
				s32 dx;
				s32 dz;
				s32 distSq;

				if ((scanAlien->unk20 & 0x00100000) || (scanAlien->unk20 & 0x00400000)) {
					continue;
				}

				if ((scanAlien->unk1A == 0) || (scanAlien->unk1A == 1)) {
					continue;
				}

				dx = (worldX - scanAlien->unk0) >> 1;
				dz = (worldZ - scanAlien->unk4) >> 1;
				distSq = (dx * dx) + (dz * dz);

				if ((u32) distSq >= 0x3C8000) {
					continue;
				}

				angleDiff = func_80003824_4424((f32) dx, (f32) dz);
				diff = func_800F9C50_108C00(D_80052B34->unk6 - D_80052B2C->unk36, angleDiff) - 0x8000;
				tmp = diff;
				if (tmp < -0x8000) {
					tmp += 0x10000;
				}

				if (tmp < 0) {
					tmp = -tmp;
				}

				if (tmp < bestScore) {
					bestScore = tmp;
					bestIndex = i;
				}
			}
		}

		if (bestIndex == -1) {
			D_80158FEC = NULL;
		} else {
			D_80158FEC = &alienInstances[bestIndex];
		}
	}

	targetAlien = D_80158FEC;
	targetDist = 0;
	if (targetAlien != NULL) {
		s32 dx = (worldX - targetAlien->unk0) >> 1;
		s32 dz = (worldZ - targetAlien->unk4) >> 1;
		targetDist = (s32) sqrtf((f32) ((dx * dx) + (dz * dz)));
	}

	inputButtons = currentControllerStates[0].button;
	if (!(inputButtons & 0x10)) {
		targetAlien = D_80158FEC;
		if (targetAlien != NULL) {
			yaw = func_80003824_4424((f32) targetDist, (f32) ((targetAlien->unk2 - worldY) >> 1));
		} else {
			yaw = 0;
		}
		D_80159048 = 0;
	}

	if (yaw >= 0x1F41) {
		yaw = 0x1F40;
	}

	if ((D_80052B34->unk1A == 0) || (D_80052B34->unk20 & 2)) {
		if (yaw < -0x1F40) {
			yaw = -0x1F40;
		}
	} else if (yaw < -0x7D0) {
		yaw = -0x7D0;
	}

	if (steerClamp < pitchClamp) {
		pitchClamp = steerClamp;
	}

	pitch = pitchClamp;
	if (pitch < -steerClamp) {
		pitch = -steerClamp;
	}

	pitchClamp = pitch;

	diff = func_800F9C50_108C00(D_80052B2C->unk36, pitch);
	tmp = -diff;
	if (tmp < diff) {
		tmp = diff;
	}

	if (tmp < D_8015929C) {
		D_80052B2C->unk36 = pitchClamp;
	} else {
		tmp = D_8015929C;
		if (diff >= 0) {
			tmp = -tmp;
		}
		D_80052B2C->unk36 += tmp;
	}

	if ((currentLevel == 4) && (D_80052B34->unk1A == 0xC)) {
		diff = D_80052B2C->unk36;
		if (diff >= 0) {
			tmp = diff;
		} else {
			tmp = -diff;
		}

		if (tmp < 0x4000) {
			cosVal = (s16) (((f64) (f32) coss(diff & 0xFFFF) / 32768.0) * D_80144A58_153A08[0]);
			if (yaw < cosVal) {
				yaw = cosVal;
			}
		}
	}

	diff = func_800F9C50_108C00(D_80159318, yaw);
	tmp = -diff;
	if (tmp < diff) {
		tmp = diff;
	}

	if (tmp < 0x190) {
		D_80159318 = yaw;
	} else {
		if (diff < 0) {
			D_80159318 += 0x190;
		} else {
			D_80159318 -= 0x190;
		}
	}

	if (spec->arcOfFire < 0) {
		D_80052B2C->unk36 += 0x8000;
	}

	if ((D_80052B34->unk20 & 2) && (vehicleSpecs[D_80052B34->unk1A].unk4C & 0x20000000)) {
		D_80159318 = -D_80052B34->unkA;
	}

	D_8015F9F0 = 0x2C;
	cosVal = coss((D_80052B34->unk6 - D_80052B2C->unk36) & 0xFFFF);
	nextX = (s32) ((((f64) (f32) coss((u16) D_80159318) / 32768.0) * ((f64) (f32) cosVal / 32768.0) * D_80144A60_153A10[0]) + (f64) worldX);
	nextY = (s32) ((((f64) (f32) sins((u16) D_80159318) / 32768.0) * D_80144A68_153A18[0]) + (f64) worldY);
	cosVal = sins((D_80052B34->unk6 - D_80052B2C->unk36) & 0xFFFF);
	nextZ = (s32) ((((f64) (f32) coss((u16) D_80159318) / 32768.0) * ((f64) (f32) cosVal / 32768.0) * D_80144A70_153A20[0]) + (f64) worldZ);

	tmp = D_801493A0 << 8;
	if (nextX < tmp) {
		f32 scale = (f32) (tmp - worldX) / (f32) (nextX - worldX);
		nextX = tmp;
		nextY = (s32) ((f32) worldY + ((f32) (nextY - worldY) * scale));
		nextZ = (s32) ((f32) worldZ + ((f32) (nextZ - worldZ) * scale));
	}

	tmp = D_801493A4 << 8;
	if (nextZ < tmp) {
		f32 scale = (f32) (tmp - worldZ) / (f32) (nextZ - worldZ);
		nextZ = tmp;
		nextX = (s32) ((f32) worldX + ((f32) (nextX - worldX) * scale));
		nextY = (s32) ((f32) worldY + ((f32) (nextY - worldY) * scale));
	}

	tmp = D_80149398 << 8;
	if (tmp < nextX) {
		f32 scale = (f32) (tmp - worldX) / (f32) (nextX - worldX);
		nextX = tmp;
		nextY = (s32) ((f32) worldY + ((f32) (nextY - worldY) * scale));
		nextZ = (s32) ((f32) worldZ + ((f32) (nextZ - worldZ) * scale));
	}

	tmp = D_8014939C << 8;
	if (tmp < nextZ) {
		f32 scale = (f32) (tmp - worldZ) / (f32) (nextZ - worldZ);
		nextZ = tmp;
		nextX = (s32) ((f32) worldX + ((f32) (nextX - worldX) * scale));
		nextY = (s32) ((f32) worldY + ((f32) (nextY - worldY) * scale));
	}

	D_80159000.unk0 = nextX;
	D_80159000.unk2 = nextY;
	D_80159000.unk4 = nextZ;

	if (D_80050AD4 == 1) {
		selectedInput = spec->weapon2;
	} else {
		selectedInput = spec->weapon1;
	}

	animFrame = D_80145BE0_154B90[selectedInput].unk0;
	if (animFrame >= 0x1195) {
		animFrame = 0x1194;
		D_80145BE0_154B90[selectedInput].unk0 = animFrame;
	}

	D_801591A8 = 1;
	if (D_80050AD4 == 1) {
		i = 1;
	} else {
		i = 0;
	}

	cameraTarget = (InputStruct_8012B150 *) D_80158FEC;
	if (cameraTarget == NULL) {
		cameraTarget = (InputStruct_8012B150 *) D_80158FF4;
	}

	func_8012B150_13A100((s32) D_80052B34, i, (InputStruct_8012B150 *) D_80158FF4, (s32) cameraTarget);

	D_801591B4 = D_801591F8.unk20;
	animBase[0] = animFrame;
	D_80159028.unk0 = D_801591F8.unk18;
	D_80159028.unk2 = D_801591F8.unk1C;
	D_80159028.unk4 = D_801591F8.unk20;
	D_801591A8 = 0;

	if (spec->unk4C & 0x08000000) {
		restoreSigned = (s16) restoreSpeed;
		if (D_80050AD4 == 1) {
			spec->gun2X = restoreSigned;
		} else {
			spec->gun1X = restoreSigned;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FB504_10A4B4.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(4786) */
s32 func_800FC1CC_10B17C(void) {
	s32 bestDist;
	s16 i;
	s16 count;
	VehicleInstance *playerVehicle;

	bestDist = 0x7FFFFFFF;
	playerVehicle = D_80052B20;
	count = D_80158FD8;

	if (D_80159320 & 2) {
		return 0;
	}

	if (count != 0) {
		i = count - 1;
		do {
			u8 index = D_80158E80[i];
			VehicleInstance *vehicle = &vehicleInstances[index];

			if (vehicle->unk1A != 0x12) {
				if (vehicle != D_80052B34) {
					s32 x = (playerVehicle->unk0 - vehicle->unk0) >> 4;
					s32 y = (playerVehicle->unk2 - vehicle->unk2) >> 4;
					s32 z = (playerVehicle->unk4 - vehicle->unk4) >> 4;
					s32 dist = (x * x) + (y * y) + (z * z);

					if (dist < bestDist) {
						bestDist = dist;
						D_80158F8C = vehicle;
					}
				}
			}
		} while (i-- != 0);
	}

	if (bestDist >= 0x384) {
		if ((u32)(D_80052A8C - D_801409E8_14F998) >= 0x3D) {
			func_8001A650_1B250(0xD);
			D_801409E8_14F998 = D_80052A8C;
			D_80158F8C = 0;
		}
		return 0;
	}

	i = 0xB;
	do {
		UnkF9230Func80102FA4Point *point = &D_801593F0[i];

		point->pos.x = playerVehicle->unk0;
		point->pos.y = playerVehicle->unk2;
		point->pos.z = playerVehicle->unk4;
		point->vel.x = 0.0f;
		point->vel.y = 0.0f;
		point->vel.z = 0.0f;
	} while (i-- != 0);

	func_8001A650_1B250(9);
	D_80159188.x = 0.0f;
	D_80159188.y = 0.0f;
	D_80159188.z = 0.0f;
	D_80158E60 = 400.0f;
	D_80159320 |= 2;
	D_80159320 &= 0x7FFFFFFF;

	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FC1CC_10B17C.s")
#endif

void func_800FC434_10B3E4(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7, s16 arg8, s16 arg9) {
	Vtx *vtx0;
	Vtx *vtx1;
	Vtx *vtx2;

	vtx0 = D_8005BB34++;
	vtx1 = D_8005BB34++;
	vtx2 = D_8005BB34++;

	vtx0->v.cn[0] = vtx1->v.cn[0] = vtx2->v.cn[0] = arg6;
	vtx0->v.cn[1] = vtx1->v.cn[1] = vtx2->v.cn[1] = arg7;
	vtx0->v.cn[2] = vtx1->v.cn[2] = vtx2->v.cn[2] = arg8;
	vtx0->v.cn[3] = vtx1->v.cn[3] = vtx2->v.cn[3] = arg9;

	vtx0->v.ob[0] = arg0;
	vtx0->v.ob[1] = arg1;
	vtx0->v.ob[2] = arg2;
	vtx1->v.ob[0] = arg3 - 50;
	vtx1->v.ob[1] = arg4;
	vtx1->v.ob[2] = arg5;
	vtx2->v.ob[0] = arg3 + 50;
	vtx2->v.ob[1] = arg4;
	vtx2->v.ob[2] = arg5;

	gSPVertex(D_8005BB2C++, (u32)(D_8005BB34 - 3) & 0x1FFFFFFF, 3, 0);
	gSP1Triangle(D_8005BB2C++, 0, 1, 2, 0);
}

#ifdef NON_MATCHING
/* CURRENT(4375) */
void func_800FC568_10B518(void) {
	Vtx *vtx;
	s32 counter;
	u8 color_r, color_g, color_b, color_a;
	s32 j;
	Vec3fPadded *ptr_a2;
	Vtx *startVtx;

	counter = 11;
	ptr_a2 = D_801593F0;
	color_r = 0x8E;
	color_g = 0x63;
	color_b = 0x3C;
	color_a = 0xFF;

	startVtx = D_8005BB34;
	do {
		j = counter;
		counter--;

		vtx = D_8005BB34;
		vtx->v.ob[0] = (s16)ptr_a2[j].pos.x;
		vtx->v.ob[1] = (s16)ptr_a2[j].pos.y;
		vtx->v.ob[2] = (s16)ptr_a2[j].pos.z;
		vtx->v.flag = 0;
		vtx->v.tc[0] = 0;
		vtx->v.tc[1] = 0;
		vtx->v.cn[0] = color_r;
		vtx->v.cn[1] = color_g;
		vtx->v.cn[2] = color_b;
		vtx->v.cn[3] = color_a;
		D_8005BB34++;
	} while (j);

	gDPPipeSync(D_8005BB30++);
	gSPVertex(D_8005BB30++, (u32)startVtx & 0x1FFFFFFF, 12, 0);
	gSPLine3D(D_8005BB30++, 0, 1, 0);
	gSPLine3D(D_8005BB30++, 1, 2, 0);
	gSPLine3D(D_8005BB30++, 2, 3, 0);
	gSPLine3D(D_8005BB30++, 3, 4, 0);
	gSPLine3D(D_8005BB30++, 4, 5, 0);
	gSPLine3D(D_8005BB30++, 5, 6, 0);
	gSPLine3D(D_8005BB30++, 6, 7, 0);
	gSPLine3D(D_8005BB30++, 9, 10, 0);
	gSPLine3D(D_8005BB30++, 7, 8, 0);
	gSPLine3D(D_8005BB30++, 8, 9, 0);
	gSPLine3D(D_8005BB30++, 10, 11, 0);
	gDPPipeSync(D_8005BB30++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FC568_10B518.s")
#endif

#ifdef NON_MATCHING
void func_800FC7E0_10B790(s8 arg0, s8 arg1, s16 *arg2, s16 *arg3) {
	s32 result;
	u32 bits;
	s32 idx;
	u32 val;

	val = D_80052A94[arg1].unk0[arg0];
	bits = (u8)((val << 22) >> 28);
	idx = bits;
	if ((s32)(val << 21) < 0) {
		idx = (u8)(bits + 16);
	}
	*arg2 = D_801407F4_14F7A4[idx * 6];
	*arg3 = D_801407F4_14F7A4[idx * 6 + 1];
	result = func_800B325C_C220C(arg0, arg1, 0xFFFF);
	if ((s16)(((result & 0x4000) == 0) ^ ((arg0 & 1) == 0)) != 0) {
		*arg2 = 0x100 - *arg2;
	}
	if ((s16)(((result & 0x2000) == 0) ^ ((arg1 & 1) == 0)) != 0) {
		*arg3 = 0x100 - *arg3;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FC7E0_10B790.s")
#endif

void func_800FC90C_10B8BC(VehicleInstance *arg0, s16 *arg1) {
	s16 sp36;
	s16 sp34;
	s16 v0 = arg1[0];
	s16 v1 = arg1[1];

	func_800FC7E0_10B790((s8)v0, (s8)v1, &sp36, &sp34);
	func_800FB44C_10A3FC(arg0, (f32)((v0 << 8) + sp36));
	func_800FB484_10A434(arg0, (f32)((v1 << 8) + sp34));
	arg0->unk40 = (v0 << 8) + sp36;
	arg0->unk42 = (v1 << 8) + sp34;
	arg0->unk47 = v0;
	arg0->unk48 = v1;
	arg0->unk45 = 10;
	arg0->unk20 |= 0x400;
	switch (arg1[4]) {
	case 0:
		arg0->unk44 = 8;
		break;
	case 0x4000:
		arg0->unk44 = 1;
		break;
	case 0x8000:
		arg0->unk44 = 4;
		break;
	default:
		arg0->unk44 = 2;
	}
}

#ifdef NON_MATCHING
void func_800FCA5C_10BA0C(void) {
	s16 sp66;
	u8 *var_s0;
	u8 *var_s1;
	VehicleInstance *var_s0_2;
	u8 *temp_s4;
	Unk80258250Entry *entry_80258250;
	Unk80259D7EEntry *entry_80259D7E;
	f32 var_f12;
	f32 var_f6;
	f64 temp_f20;
	s16 temp_a0;
	s16 temp_f10;
	s16 temp_t4;
	s16 temp_v0;
	s32 temp_s3;
	s32 temp_t0;
	s32 temp_t1;
	s32 temp_t6;
	s32 var_s2;
	s32 var_s2_2;
	s8 *var_s5;
	u16 temp_t4_2;
	void *temp_s4_raw;

	D_80159300 = 0;
	D_8013FD88_14ED38 = 0;
	if (vehicleSpecs[0].unk14 != 0x3039) {
		func_80006DAC_79AC(0, 1);
		return;
	}

	var_s0 = (u8 *)&vehicleSpecs[0x13];
	while ((u32)var_s0 >= (u32)&vehicleSpecs[1]) {
		entry_80258250 = (Unk80258250Entry *)var_s0;
		if ((currentLevel != 3) || (var_s0 != (u8 *)&vehicleSpecs[0x14])) {
			temp_t0 = entry_80258250->unk34 >> 1;
			temp_t1 = entry_80258250->unk36 >> 1;
			var_f12 = (f32)((temp_t0 * temp_t0) + (temp_t1 * temp_t1));
			if (entry_80258250->unk16 != 1) {
				temp_t6 = entry_80258250->unk38 >> 1;
				var_f12 += (f32)(temp_t6 * temp_t6);
			}
			entry_80258250->unk8 = (s32)var_f12;
			entry_80258250->unkC = (s16)(s32)sqrtf(var_f12);
		}
		var_s0 -= 0x70;
	}

	D_80158FD8 = 0;
	D_80159268 = 0;
	D_80159318 = 0;
	D_801591EA = 0;
	D_80159226 = 0;
	D_801591BC = 0;
	D_801591F4 = 0;
	D_80159246 = 0;
	D_80159248 = 0;
	D_8015926C = 0x7D0;
	D_8014ED54 = 0;
	D_8015930E = 0;
	D_80158E64 = 0;
	D_80050AD0 = 0;
	D_80050AD4 = 0;
	D_801591AC = 0;
	D_80159320 = 0;
	D_8015931A = 0;
	D_8015920C = 0;
	D_80159260 = 0;
	D_80158E78 = 0;
	D_80159262 = 0;
	D_80159304 = 0x6E;
	D_801591C4 = 0;
	D_80159274 = 0;
	D_8015F9EC = 0;
	D_801591A8 = 0;
	D_80159236 = 0;
	D_8015925C = 0;
	D_80159258 = 0;
	D_80159048 = 0;
	D_80159250 = 0;
	D_8015904C = 0;
	D_801593E8 = 0;
	D_801593EA = 0;
	D_80052B34 = 0;
	D_80052B2C = &D_80052AE8;
	D_80159264 = 0;
	D_80159238 = 0.0f;
	D_8015923C = 0.0f;
	D_80159272 = 0;
	D_80158C50 = 0;
	D_80158C52 = 0;
	D_801591C0 = 0;
	D_8014ED56 = 0;
	D_80158F80 = 0;
	D_801493D8 = 1;
	D_80159240 = 0x125C;
	D_80159242 = 0x38;
	D_8015929E = 0;
	D_8015929C = 0x4B0;
	D_8014ED04 = 0x186A0;
	D_801591C2 = 0;
	D_80159020 = &D_80159028;
	D_80158F90 = 0;
	D_80158FEC = 0;
	D_80158FF4 = &D_80159000;
	D_80149438 = 0;
	D_80159234 = 0;
	D_8015930C = D_80159234;
	D_80047724 = 6;
	D_80047726 = 0x258;
	D_80047728 = 0x4B0;

	var_s1 = D_80259D7E;
	var_s2 = 0x31;
	while (var_s2 != 0) {
		entry_80259D7E = (Unk80259D7EEntry *)var_s1;
		entry_80259D7E->unk4 = 0;
		temp_a0 = entry_80259D7E->unk4;
		var_s1 -= 0x12;
		entry_80259D7E->unk8 = temp_a0;
		entry_80259D7E->unk6 = temp_a0;
		var_s2 -= 1;
	}

	temp_f20 = D_80144A78_153A28[0];
	var_s5 = &D_80158C4F;
	var_s1 = D_80259D7E;
	var_s0_2 = &vehicleInstances[127];
	var_s2_2 = 0x7F;
	while (var_s2_2 != 0) {
		temp_t4 = ((Unk80259D7EEntry *)var_s1)->unk6;
		temp_s4 = &vehicleSpecs[((u8)temp_t4 & 0xFF)];
		var_s0_2->unk1A = (u8)temp_t4;
		func_800FAE84_109E34(var_s0_2);
		func_800FB44C_10A3FC(var_s0_2, (f32)(((s16)((Unk80259D7EEntry *)var_s1)->unk0 << 8) + 0x80));
		func_800FB484_10A434(var_s0_2, (f32)(((s16)((Unk80259D7EEntry *)var_s1)->unk2 << 8) + 0x80));
		temp_s3 = func_8011E6FC_12D6AC(var_s0_2->unk0, var_s0_2->unk4, &sp66);
		func_800FB468_10A418(var_s0_2, (f32)sp66);
		if (temp_s3 != -1) {
			var_s0_2->unk20 |= 0x800;
		}
		var_s0_2->unkE = (s16)(0x4000 - ((Unk80259D7EEntry *)var_s1)->unk8);
		var_s0_2->unk6 = (s16)(0x4000 - ((Unk80259D7EEntry *)var_s1)->unk8);
		var_s0_2->unk46 = (u8)((var_s2_2 & 0x3F) | (var_s0_2->unk46 & 0xFFC0));
		*var_s5 = (s8)((Unk80259D7EEntry *)var_s1)->unkE;
		if ((((Unk80259D7EEntry *)var_s1)->unk6 != 0) || (var_s2_2 == 0)) {
			var_s0_2->unk20 |= 0x8001;
		}
		if ((currentLevel == 1) && (var_s0_2->unk1A == 0x12) && (D_80047F98 > 0)) {
			var_s0_2->unk20 &= 0x7FFF;
		}
		if ((((Unk80259D7EEntry *)var_s1)->unkC & 0x400) && ((currentLevel != 3) || (var_s0_2->unk1A != 0xD))) {
			func_800FC90C_10B8BC(var_s0_2, (s16 *)var_s1);
		}
		temp_v0 = ((Unk80259D7EEntry *)var_s1)->unkA;
		if (temp_v0 == 1) {
			var_s0_2->unk3C = 1;
		} else {
			var_s0_2->unk3C = (s16)(s32)((f64)(f32)(temp_s4[0x61] << 8) * ((f64)(f32)temp_v0 * temp_f20));
		}
		temp_t4_2 = temp_s4[0x3A];
		var_f6 = (f32)temp_t4_2;
		if ((s32)temp_t4_2 < 0) {
			var_f6 += 4294967296.0f;
		}
		temp_f10 = ((Unk80259D7EEntry *)var_s1)->unk10;
		var_s0_2->unk1C = (s16)(s32)((f64)var_f6 * ((f64)(f32)temp_f10 * temp_f20));
		var_s0_2 -= 1;
		var_s1 -= 0x12;
		var_s5 -= 1;
		var_s2_2 -= 1;
	}

	func_800FAD10_109CC0();
	func_800FD510_10C4C0(0, 0);
	func_800FB504_10A4B4();
	if (currentLevel == 5) {
		D_80159320 |= 0x20000;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FCA5C_10BA0C.s")
#endif

void func_800FD0EC_10C09C(void) {
	D_80159310 += 2;
	D_8015930C += D_80159310;
	if (D_8015930C >= 0x261A) {
		D_8015930E = 0;
		D_8015930C = 0x2619;
		D_8015920C = 0;
	}
	if (D_80052B34->unk3C == 0) {
		D_8015930E = 0;
		D_8015920C = 0;
	}
}

void func_800FD168_10C118(void) {
	D_80159310 += 1;
	D_8015930C += D_80159310;
	if (D_8015930C >= 0x1195) {
		D_8015930E = 0;
		D_8015930C = 0x1194;
		D_8015920C = 0;
	}
	if (D_80052B34->unk3C == 0) {
		D_8015930E = 0;
		D_8015920C = 0;
	}
}

void func_800FD1E4_10C194(void) {
	if (D_80159310++ >= 0x10) {
		D_8015930E = 0;
		D_8015920C = 0;
	}
}

void func_800FD218_10C1C8(void) {
	if (D_80159310++ >= 0x15) {
		D_8015930E = 0;
		D_8015920C = 0;
	}
	D_80052B34->unk20 |= 2;
	D_80159304 = func_800065A4_71A4(0, 0x6E, D_80159310 * 2978);
}

void func_800FD2AC_10C25C(void) {
	if (D_80052B34->unk3C != 0 && D_8015920C == 0) {
		D_8015930E = 1;
		D_8015920C = (s32)func_800FD0EC_10C09C;
		D_80159310 = 0;
	}
}

void func_800FD2F8_10C2A8(void) {
	if (D_80052B34->unk3C != 0 && D_8015920C == 0) {
		D_8015930E = 1;
		D_8015920C = (s32)func_800FD0EC_10C09C;
		D_80159310 = 0;
	}
}

void func_800FD344_10C2F4(void) {
	if (D_80052B34->unk3C != 0 && D_8015920C == 0) {
		D_8015930E = 1;
		D_8015920C = (s32)func_800FD168_10C118;
		D_80159310 = 0;
	}
}

extern void func_800FD218_10C1C8(void);

void func_800FD390_10C340(void) {
	if (D_8015920C == 0) {
		D_8015930E = 1;
		D_8015920C = (s32)func_800FD218_10C1C8;
		D_80159310 = 0;
		D_80052B34->unk20 |= 2;
		func_800FB3E8_10A398(D_80052B34, 1.0f);
		D_80052B34->unk2E++;
	}
}

void func_800FD410_10C3C0(VehicleSpec *spec) {
	switch (spec->unk58) {
	case 1:
		func_800FD2AC_10C25C();
		break;
	case 3:
		func_800FD2F8_10C2A8();
		break;
	case 5:
		func_800FD390_10C340();
		break;
	case 7:
		func_800FD344_10C2F4();
		break;
	}

	if ((currentLevel == 2) && (((s32) (spec - vehicleSpecs)) == 7)) {   
		D_80159318 = -0xFB4;
	}
}

void func_800FD4D4_10C484(void *arg0) {
	u8 temp_v0;
	temp_v0 = *(u8 *)((u8 *)arg0 + 0x58);
	if ((temp_v0 == 2) || (temp_v0 == 4) || (temp_v0 == 8)) {
		D_8015930C = 0;
		D_80159310 = 0;
		D_8015920C = 0;
	}
}

// CURRENT(762)
#ifdef NON_MATCHING
// Set new player vehicle
void func_800FD510_10C4C0(s32 arg0, s16 arg1) {
	Unk80052B2C *playerData;
	VehicleSpec *spec;
	s16 vehicleGroup;
	s32 wasAudioActive;

	wasAudioActive = 0;
	if (func_800E60CC_F507C(2, *((u8 *)D_80052B2C + 0x35)) != 0) {
		func_800E5E3C_F4DEC(2, *((u8 *)D_80052B2C + 0x35));
		wasAudioActive = 1;
	}

	playerData = &((Unk80052B2C *)&D_80052AE8)[(s16)arg0];
	playerData->unk34 = arg1;
	D_80159318 = 0;

	vehicleGroup = playerData->unk34;
	playerData->unk38 = &vehicleInstances[vehicleGroup];
	D_80052B34 = playerData->unk38;
	spec = &vehicleSpecs[D_80052B34->unk1A];

	if (*(s16 *)((u8 *)spec + 0x3C) < 0) {
		playerData->unk36 = -0x7FFF;
	} else {
		playerData->unk36 = 0;
	}

	D_801591EA = 0;
	D_80052B34->unk2E = 0xFA;
	D_801493DC = 0;
	D_80159230 = 0;
	D_8015F9EC = 0;
	D_80052B34->unk20 |= 1;

	func_800FD410_10C3C0(spec);

	if (D_80052B34->unk1A != 0) {
		D_8015930A = D_80159232;
		D_8015930C = D_80159234;
		D_8013FD88_14ED38 = 1;
		func_80001144_1D44(0x10, 0, 0);
		func_8001A650_1B250(*(s16 *)((u8 *)&vehicleSpecs[D_80052B34->unk1A].unk18 + sizeof(s16)));
		func_80139778_148728();
	}

	if (spec->weapon1 != 0) {
		D_80050AD4 = 0;
	} else {
		D_80050AD4 = 4;
	}

	if (wasAudioActive != 0) {
		func_800E5CF4_F4CA4(2, (u8)arg1);
	}

	D_80052B34->unkE = D_80052B34->unk6;
	D_80052B34->unk10 = 0;
	D_80052B34->unk30 = 0.0f;
	D_80052B34->unk34 = 0.0f;
	D_80052B34->unk38 = 0.0f;

	if (D_8014940E != 0) {
		D_8013B910_14A8C0[1] = 0x12C;
		D_8013B910_14A8C0[2] = 0x12C;
	}

	if ((D_80052B34->unk1A != 0) && (D_80052B34->unk3C == 0) && ((currentLevel != 2) || (D_80052B34->unk1A != 1))) {
		func_801371B8_146168(0, 0x37, D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, -1.0f);
	} else {
		func_801371B8_146168(0, *(s16 *)((u8 *)spec + 0x68), D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, -1.0f);
	}

	D_801591D8 = 0;
	D_801591D6 = 0;
	D_8004DCAC = (f32)D_80052B34->unk0;
	D_8004DCB0 = (f32)D_80052B34->unk4;
	D_8004DCB4 = (f32)D_80052B34->unk0;
	D_8004DCB8 = (f32)D_80052B34->unk4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FD510_10C4C0.s")
#endif

// CURRENT(7084)
#ifdef NON_MATCHING
void func_800FD858_10C808(s16 arg0) {
	s16 i;
	s16 yRotation;
	s32 buildingIndex;
	VehicleInstance *vehicle;
	Unk80259490 *spawnData;

	if (D_80158FD8 != 0) {
		i = D_80158FD8 - 1;
		do {
			if (arg0 == D_80158E80[i]) {
				vehicle = &vehicleInstances[arg0];
				if (vehicle->unk3C == 0) {
					vehicle->unk3C = vehicleSpecs[vehicle->unk1A].unk61 << 8;
				} else if (func_800E60CC_F507C(2, arg0) != 0) {
					func_800E5E3C_F4DEC(2, arg0);
					vehicle->unk3C = vehicleSpecs[vehicle->unk1A].unk61 << 8;
				}
				return;
			}
		} while (i-- != 0);
	}

	vehicle = &vehicleInstances[arg0];
	vehicle->unk20 |= 0x8001;
	func_800FAD10_109CC0();
	spawnData = &((Unk80259490 *)&D_80259490)[arg0];
	vehicle->unk1C = vehicleSpecs[vehicle->unk1A].hitPoints;
	func_800FB44C_10A3FC(vehicle, (spawnData->unk0 << 8) + 0x80);
	func_800FB484_10A434(vehicle, (spawnData->unk2 << 8) + 0x80);
	buildingIndex = func_8011E6FC_12D6AC(vehicle->unk0, vehicle->unk4, &yRotation);
	func_800FB468_10A418(vehicle, yRotation);
	if (buildingIndex != -1) {
		vehicle->unk20 |= 0x800;
	}
	vehicle->unkE = 0x4000 - spawnData->unk8;
	vehicle->unk6 = 0x4000 - spawnData->unk8;
	vehicle->unk1C = vehicleSpecs[vehicle->unk1A].hitPoints;
	vehicle->unk3C = (s16)((f64)spawnData->unkA * 0.017453292519943295 * (vehicleSpecs[spawnData->unk6].unk61 << 8));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FD858_10C808.s")
#endif

void func_800FDB00_10CAB0(void) {
	func_800156C8_162C8(0x10);
	D_801591AC = 4;
	func_800E7B20_F6AD0((s32)D_80052B34, 3);
	D_80159314 = 0x5A;
	D_80052B2C->unk1C = 0x5DC;
}

void func_800FDB58_10CB08(VehicleInstance *arg0) {
	func_80124170_133120(arg0->unk0, arg0->unk2, arg0->unk4, 0x1D4C0, 0xDAC, arg0);
	func_800FDD8C_10CD3C(arg0);
	func_800D6ADC_E5A8C(arg0->unk0, arg0->unk2, arg0->unk4, 5);
	func_800B8F30_C7EE0((s16)(arg0->unk0 >> 8), (s16)(arg0->unk4 >> 8), 0);
	func_800072CC_7ECC(0x1C);
	if (!(vehicleInstances[D_80159316].unk20 & 0x8000)) {
		func_80006DAC_79AC(0x50, 0);
	}
}

#ifdef NON_MATCHING
void func_800FDC30_10CBE0(s16 arg0) {
	VehicleInstance *v = &vehicleInstances[D_80158E80[arg0]];

	v->unk20 &= 0x7FFF;
	D_80159320 |= 0x2000;

	switch (currentLevel) {
	case 1: {
		s32 type = v->unk1A;
		if (type != 0xC) {
			if (type == 0x11) {
				s32 i = 0x7F;
				VehicleInstance *v2 = &vehicleInstances[127];
				do {
					type = i;
					if (v2->unk1A == 0x11) {
						if (v2->unk20 & 0x8000) {
							return;
						}
					}
					v2--;
				} while (i--);
				D_8004DC58 = 5;
			}
		} else {
			func_800AE190_BD140(0xA);
			return;
		}
		break;
	}
	case 4:
		if (v->unk1A == 0xE) {
			func_800FDB00_10CAB0();
		}
		break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FDC30_10CBE0.s")
#endif

void func_800FDD48_10CCF8(s16 arg0) {
	s16 temp_v0 = func_800FADF8_109DA8(arg0);
	if (temp_v0 != -1) {
		func_800FDC30_10CBE0(temp_v0);
	}
}

#ifdef NON_MATCHING
void func_800FDD8C_10CD3C(VehicleInstance *arg0) {
	s16 i = 0x7F;
	if (arg0 != &vehicleInstances[127]) {
		while (i--) {
			if (arg0 == &vehicleInstances[i]) {
				break;
			}
		}
	}
	if (i >= 0) {
		func_800FDD48_10CCF8(i);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FDD8C_10CD3C.s")
#endif

void func_800FDE00_10CDB0(void) {
	extern VehicleInstance *D_80158F8C;
	extern Vec3f D_80159188;

	if ((D_80159320 & 2) && (D_80158F8C->unkC == -2)) {
		D_80158F8C->unk30 = D_80159188.x;
		D_80158F8C->unk34 = D_80159188.y;
		D_80158F8C->unk38 = D_80159188.z;
		D_80158F8C->unk12 = 0;
		D_80158F8C->unk58 = 0.0f;
		D_80158F8C->unk20 |= 3;
		D_80158F8C = 0;
		D_80159320 &= ~2;
		D_80159320 |= 0x80000000;
	}
}

#ifdef NON_MATCHING
void func_800FDEA8_10CE58(Unk80052B2C *arg0, s32 arg1) {
	VehicleInstance *vehicle;
	VehicleSpec *spec;
	Unk80259D90 *obj;
	f32 tmpA;
	f32 tmpB;
	s16 halfSpecUnk34;
	s16 halfSpecUnk36;
	s16 scanIndex;
	s16 scanAngle;
	s16 lockY;
	s16 lockZ;
	s16 lockX;
	s16 yaw;
	s16 temp;
	s16 s0;
	s16 s1;
	s16 s2;
	s16 s3;
	u16 vehicleYaw;
	s32 changedAudio;
	s32 foundSpot;
	s32 stepCount;
	s32 hitAdjusted;
	s32 maxStepCount;
	s16 i;
	f64 scale;

	vehicle = arg0->unk38;
	spec = &vehicleSpecs[vehicle->unk1A];
	changedAudio = 0;
	halfSpecUnk36 = spec->unk36 >> 1;
	halfSpecUnk34 = spec->unk34 >> 1;
	foundSpot = 0;
	stepCount = 0;

	if (vehicle->unk1A != 0) {
		if ((spec->unk59 == 4) || (spec->unk59 == 8)) {
			D_80158E74 = (s32)D_80052B34;
			D_80159234 = D_8015930C;
			D_80159232 = D_8015930A;
			D_8015930C = 0;
			D_8015930A = 0;
		} else {
			D_80158E74 = 0;
		}

		if (func_800E60CC_F507C(2, (u8)arg0->unk34) != 0) {
			func_800E5E3C_F4DEC(2, (u8)arg0->unk34);
			changedAudio = 1;
		}

		if (D_8015920C != 0) {
			D_8015930E = 0;
			D_8015930C = 0;
			D_80159310 = 0;
			D_8015920C = 0;
		}

		func_800FDE00_10CDB0();
		vehicleInstances[0].unk1A = 0;
		vehicleInstances[0].unk20 = (s16)vehicleSpecs[0].unk4C;
		vehicleInstances[0].unkE = vehicle->unkE;
		vehicleInstances[0].unk10 = vehicle->unk10;
		vehicleInstances[0].unk3C = 0x2710;
		vehicleInstances[0].unk6 = vehicle->unk6;
		func_800FB430_10A3E0(vehicleInstances, (f32)vehicle->unk12);

		vehicleInstances[0].unk20 |= 0x8040;
		if (vehicleInstances[0].unk1C <= 0) {
			vehicleInstances[0].unk1C = 1;
		}

		D_80159320 |= 0x2000;
		if (vehicle->unk20 & 8) {
			vehicleInstances[0].unk20 |= 8;
		}

		func_800FB468_10A418(vehicleInstances, (f32)vehicle->unk2);

		yaw = vehicle->unk6 + 0x4000;
		halfSpecUnk36 += 0x24;
		halfSpecUnk34 += 0x24;
		if (currentControllerStates[0].stick_x < 0) {
			halfSpecUnk34 = -halfSpecUnk34;
		}
		if ((currentControllerStates[0].stick_x >= 0) && (halfSpecUnk34 < 0)) {
			halfSpecUnk34 = -halfSpecUnk34;
		}

		D_8015931A = 0;
		D_8013FD84_14ED34 = 0;
		scanAngle = 0;
		hitAdjusted = 0;
		if (arg1 != 0) {
			maxStepCount = 9;
		} else {
			maxStepCount = 8;
		}

		scale = D_80144A88_153A38[0];
		i = maxStepCount;

		do {
			if (stepCount < maxStepCount) {
				stepCount = 0;
			}

			scanIndex = i - 1;
			if (i != 0) {
				while (1) {
					s2 = (s16)(s32)(((((f64)(f32)coss(scanAngle)) / 32768.0) * (f64)halfSpecUnk34) * scale);
					s3 = (s16)(s32)(((((f64)(f32)sins(scanAngle & 0xFFFF)) / 32768.0) * (f64)halfSpecUnk36) * scale);

					if (scanIndex == 8) {
						func_800FB44C_10A3FC(vehicleInstances, (f32)vehicle->unk0);
						func_800FB484_10A434(vehicleInstances, (f32)vehicle->unk4);
					} else {
						s1 = coss(yaw);
						func_800FB44C_10A3FC(
							vehicleInstances,
							(f32)((((f64)s1 / 32768.0) * (f64)s2) + (f64)vehicle->unk0 - ((((f64)sins(yaw & 0xFFFF)) / 32768.0) * (f64)s3)));
						s1 = sins(yaw & 0xFFFF);
						func_800FB484_10A434(
							vehicleInstances,
							(f32)(((((f64)coss(yaw & 0xFFFF)) / 32768.0) * (f64)s3) + (f64)vehicle->unk4 + ((((f64)s1) / 32768.0) * (f64)s2)));
					}

					func_80115604_1245B4(vehicleInstances);
					temp = func_800F9D60_108D10(vehicleInstances[0].unk0, vehicleInstances[0].unk4, &lockY, &lockZ, &lockX);

					if (((D_80222A70 - 0x24) >= lockX) && ((D_80222A70 - 0x24) < vehicleInstances[0].unk2)) {
						hitAdjusted = 1;
						func_800FB3E8_10A398(vehicleInstances, -36.0f);
					}

					if ((func_80110FB4_11FF64(vehicleInstances, 1) == 0) && (vehicleInstances[0].unk2 >= lockY)) {
						s32 allow = 1;

						if ((arg1 == 0) && ((lockX + 0x64) < vehicleInstances[0].unk2) && ((D_80222A70 + 0x64) < vehicleInstances[0].unk2) && (stepCount < maxStepCount)) {
							stepCount++;
							allow = 0;
						} else {
							if ((arg1 == 0) && (vehicleInstances[0].unk2 < (lockX - 0x32)) && (lockZ < (vehicleSpecs[0].unk38 + vehicleInstances[0].unk2))) {
								allow = 0;
							} else {
								s0 = 0x95;
								while (s0 != 0) {
									obj = &D_80259D90[s0];
									if ((obj->unk0 >= 0xE) &&
										(func_8010EF40_11DEF0(
												(f32)obj->unk10,
												(f32)obj->unk14,
												(f32)obj->unk30,
												(f32)obj->unk34,
												(f32)vehicle->unk0,
												(f32)vehicle->unk4,
												(f32)vehicleInstances[0].unk0,
												(f32)vehicleInstances[0].unk4,
												&tmpA,
												&tmpB) != 0)) {
										allow = 0;
										break;
									}
									s0--;
								}
							}
						}

						if (allow != 0) {
							foundSpot = 1;
							if ((vehicleSpecs[0].unk38 + vehicleInstances[0].unk2) < lockZ) {
								vehicleInstances[0].unk20 |= 8;
								if (vehicleInstances[0].unk2 < lockY) {
									vehicleInstances[0].unk2 = lockY;
								}
							} else {
								if (temp != -1) {
									vehicleInstances[0].unk20 |= 0x800;
								}
								if (vehicleInstances[0].unk2 < lockX) {
									vehicleInstances[0].unk2 = lockX;
								}
							}

							if (arg1 == 0) {
								s0 = vehicleInstances[0].unk0;
								s1 = vehicleInstances[0].unk2;
								s2 = vehicleInstances[0].unk4;
								func_800FB44C_10A3FC(vehicleInstances, (f32)vehicle->unk0);
								func_800FB468_10A418(vehicleInstances, (f32)vehicle->unk2);
								func_800FB484_10A434(vehicleInstances, (f32)vehicle->unk4);
								D_80159300 = 0x18;
								func_800EA434_F93E4();
								func_800EBD9C_FAD4C(s0, s1, s2);
							} else {
								D_80157A28 &= ~4;
							}
						} else {
							goto next_try;
						}
					} else {
next_try:
						if (hitAdjusted != 0) {
							hitAdjusted = 0;
							func_800FB3E8_10A398(vehicleInstances, 36.0f);
						}
						vehicleYaw = 0x8000;
						if (scanIndex & 1) {
							vehicleYaw = 0xA000;
						}
						scanAngle += vehicleYaw;
						scanIndex--;
						if (scanIndex != 0) {
							continue;
						}
					}

					break;
				}
			}

			if (foundSpot == 0) {
				func_800FB468_10A418(vehicleInstances, (f32)(vehicleInstances[0].unk2 + 0x14));
			}
		} while (foundSpot == 0);

		if (arg1 != 0) {
			vehicleInstances[0].unk30 = vehicle->unk30;
			vehicleInstances[0].unk34 = vehicle->unk34;
			vehicleInstances[0].unk38 = vehicle->unk38;
		}

		D_80050AD4 = 0;
		func_800FD510_10C4C0(0, 0);
		vehicleInstances[0].unk20 |= 2;
		func_801396A8_148658(vehicle->unk1A);

		if (changedAudio != 0) {
			func_800E5CF4_F4CA4(2, 0);
		}

		if (arg0 == &D_80052AE8) {
			D_80052B2C->unk38 = vehicleInstances;
		}

		func_800FD4D4_10C484(spec);
		func_801371B8_146168((s32)D_80052B34, spec->unk6A, D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, -1.0f);
		if (D_8004816A >= D_800314C4) {
			func_80123AC4_132A74(D_80052B34);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FDEA8_10CE58.s")
#endif

void func_800FE910_10D8C0(s32 arg0) {
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, 0, 0, D_8005BB38);
}

void func_800FE954_10D904(s32 arg0) {
	D_80052B48.unk0 = 0x7FFF;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FE9AC_10D95C(s32 arg0) {
	D_80052B48.unk0 = (s16)(D_80052A8C * 8754);
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FEA2C_10D9DC(s32 arg0) {
	Unk80052B40 *entry = &D_8013FDA8_14ED58[arg0].unk8;
	D_80052B40.unk0 = entry->unk0;
	D_80052B40.unk2 = entry->unk2;
	D_80052B40.unk4 = entry->unk4 - D_801591C0 * 2;
	func_800039D0_45D0(&D_80052B40, 0, 0, D_8005BB38);
}

void func_800FEAA0_10DA50(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = (s16)func_800038E0_44E0();
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FEB04_10DAB4(s32 arg0) {
	D_80052B50.unk0 = 0x37;
	D_80052B50.unk2 = 0x37;
	D_80052B50.unk4 = 0x37;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, 0, &D_80052B50, D_8005BB38);
}

void func_800FEB5C_10DB0C(s32 arg0) {
	if (D_80052B34->unk20 & 2) {
		func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, 0, 0, D_8005BB38);
		return;
	}
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = func_800FA40C_1093BC(D_80052B34, (s16)(D_80052B34->unk6 + 0x4000), vehicleSpecs[D_80052B34->unk1A].unk34) + D_80052B34->unk8;
	D_80052B48.unk4 = func_800FA40C_1093BC(D_80052B34, D_80052B34->unk6, vehicleSpecs[D_80052B34->unk1A].unk36) - D_80052B34->unkA;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FEC78_10DC28(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = D_801591C2;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FECD4_10DC84(s32 arg0) {
	D_80052B48.unk0 = (s16)((D_80052B34->unk12 > 0 ? -0xD : 0xD) * D_80052B34->unk22);
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = (s16)D_801591C2;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FED60_10DD10(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = D_80159246;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

// CURRENT(1333)
#ifdef NON_MATCHING
void func_800FEDBC_10DD6C(s32 arg0) {
	f32 pos[3];
	s32 red;
	s32 green;
	s32 blue;
	s32 dirX;
	f32 tempSin;
	f32 tempCos;

	guMtxXFML(&D_801592C0, 160.0f, 134.0f, -10.0f, &pos[2], &pos[1], &pos[0]);

	if (D_80159320 & 0x400) {
		red = 0x1E;
		if (D_80159320 & 0x40000000) {
			red = 0xC8;
			green = 0x46;
			blue = 0x1E;
		} else {
			green = 0xC8;
			blue = 0x46;
		}

		if (gameplayMode == 1) {
			func_800CA5EC_D959C((s16)(s32)pos[2], (s16)(s32)pos[1], (s16)(s32)pos[0], 0, -0xA, 0, 0x1E, 5, 2, 5, red, green, blue, 0xFF);

			tempSin = (f32)((f64)(f32)sins((D_80052B34->unkE + 0x4000) & 0xFFFF) / 32768.0);
			tempCos = (f32)-((f64)(f32)coss((D_80052B34->unkE + 0x4000) & 0xFFFF) / 32768.0);
			dirX = (s32)(tempSin * 127.0f);

			func_800CA5EC_D959C(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, (s8)dirX, 0x50,
				(s32)(tempCos * 127.0f), 0x78, 6, 4, 0x64, 0, 0xFF, 0, 0xFF);

			if (D_80159320 & 0x02000000) {
				D_80159320 &= ~0x02000000;
				func_800CA5EC_D959C(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, (s8)dirX, 0x50,
					(s32)(tempCos * 127.0f), 0x78, 6, 0x14, 0x64, 0, 0xFF, 0, 0xFF);
			}

			func_80137130_1460E0(0, 0xAB, (s16)(s32)pos[2], (s16)(s32)pos[1], (s32)pos[0]);
			func_80137130_1460E0(0, 0xD4, (s16)(s32)pos[2], (s16)(s32)pos[1], (s32)pos[0]);
		}
	}

	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = (s16)((D_80052A8C * 0x3E8) & 0x1FFF);
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FEDBC_10DD6C.s")
#endif

void func_800FF164_10E114(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = -D_80158C50;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF1C4_10E174(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = func_800065A4_71A4(0, -0xA28, (u16)(D_80159274 << 11));
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
	guMtxCatL(D_8005BB38, &D_801592C0, &D_801592C0);
}

void func_800FF258_10E208(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = (s16)func_800038E0_44E0();
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF2BC_10E26C(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = (s16)func_800038E0_44E0();
	D_80052B48.unk4 = 0;
	D_80052B50.unk0 = 0x3A1;
	D_80052B50.unk2 = 0x3A1;
	D_80052B50.unk4 = 0x3A1;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, &D_80052B50, D_8005BB38);
}

void func_800FF334_10E2E4(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = D_8015930A;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF390_10E340(s32 arg0) {
	f32 sp54;
	f32 sp50;
	f32 sp4C;
	f32 sp48;
	f32 sp44;
	f32 sp40;

	D_80052B40.unk0 = D_8013FDA8_14ED58[arg0].unk8.unk0;
	D_80052B40.unk2 = D_8013FDA8_14ED58[arg0].unk8.unk2;
	D_80052B40.unk4 = D_8013FDA8_14ED58[arg0].unk8.unk4 + D_80159312;
	func_800039D0_45D0(&D_80052B40, 0, 0, D_8005BB38);
	guMtxCatL(D_8005BB38, &D_801592C0, &D_801592C0);

	guMtxXFML(&D_801592C0, 0.0f, 0.0f, 0.0f, &sp54, &sp50, &sp4C);
	guMtxXFML(&D_801592C0, 0.0f, 0.0f, 4096.0f, &sp48, &sp44, &sp40);

	sp48 = sp48 - sp54;
	sp44 = sp44 - sp50;
	sp40 = sp40 - sp4C;
	D_8015927E = func_80003824_4424(sp48, sp40);
	D_80159280 = -func_80003824_4424(sqrtf((sp48 * sp48) + (sp40 * sp40)), sp44);

	guMtxXFML(&D_801592C0, 4096.0f, 0.0f, 0.0f, &sp48, &sp44, &sp40);

	sp48 -= sp54;
	sp44 -= sp50;
	sp40 -= sp4C;
	D_80159282 = -func_80003824_4424(sqrtf((sp48 * sp48) + (sp40 * sp40)), sp44);
	guMtxXFML(&D_801592C0, 0.0f, -34.0f, 0.0f, &D_80159284, &D_80159288, &D_8015928C);
}

void func_800FF5A8_10E558(s32 arg0) {
	D_80052B48.unk0 = D_8015930A;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF604_10E5B4(s32 arg0) {
	D_80052B48.unk0 = -D_8015930A;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF664_10E614(s32 arg0) {
	D_80052B48.unk0 = D_80159232;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF6C0_10E670(s32 arg0) {
	D_80052B48.unk0 = -D_80159232;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF720_10E6D0(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = D_80159308;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
	guMtxCatL(D_8005BB38, &D_801592C0, &D_801592C0);
}

void func_800FF794_10E744(s32 arg0) {
	D_80052B48.unk0 = D_80052B2C->unk36;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
	guMtxCatL(D_8005BB38, &D_801592C0, &D_801592C0);
}

void func_800FF80C_10E7BC(s32 arg0) {
	s16 temp = D_80052B2C->unk36;

	if (temp < 0) {
		temp = 0;
	}

	if (temp >= 0x2711) {
		D_80052B2C->unk36 = 0x2710;
		temp = 0x2710;
	}

	D_80052B48.unk0 = temp;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF88C_10E83C(s32 arg0) {
	s16 temp = D_80052B2C->unk36;

	if (temp < -0x2710) {
		D_80052B2C->unk36 = -0x2710;
		temp = -0x2710;
	}

	if (temp > 0) {
		temp = 0;
	}

	D_80052B48.unk0 = temp;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF90C_10E8BC(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = -D_80159318;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
	guMtxCatL(&D_801592C0, D_8005BB38, &D_801592C0);
}

void func_800FF984_10E934(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = (s16)((-0xFB4) - D_80159318);
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
	guMtxCatL(&D_801592C0, D_8005BB38, &D_801592C0);
}

void func_800FFA00_10E9B0(s32 arg0) {
	f32 sp4C;
	f32 sp48;
	f32 sp44;
	f32 sp40;
	f32 sp3C;
	f32 sp38;

	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	if (D_80052B34->unk1A == 0x13) {
		D_80052B48.unk4 = (s16)-D_80159318;
	} else {
		D_80052B48.unk4 = 0;
	}

	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
	guMtxCatL(D_8005BB38, &D_801592C0, &D_801592C0);

	guMtxXFML(&D_801592C0, 0.0f, 0.0f, 0.0f, &sp4C, &sp48, &sp44);
	guMtxXFML(&D_801592C0, 0.0f, 0.0f, 1000.0f, &sp40, &sp3C, &sp38);

	sp40 -= sp4C;
	sp3C -= sp48;
	sp38 -= sp44;
	D_8015927E = (s16)(0x4000 - func_80003824_4424(sp40, sp38));

	sp40 = sqrtf((sp40 * sp40) + (sp38 * sp38));
	D_80159280 = (s16)-func_80003824_4424(sp40, sp3C);

	guMtxXFML(&D_801592C0, (f32)D_8013FDA8_14ED58[arg0 + 1].unk8.unk0, (f32)D_8013FDA8_14ED58[arg0 + 1].unk8.unk2,
			 (f32)D_8013FDA8_14ED58[arg0 + 1].unk8.unk4, &D_80159284, &D_80159288, &D_8015928C);
	guMtxXFML(&D_801592C0, (f32)D_8013FDA8_14ED58[arg0 + 4].unk8.unk0, (f32)D_8013FDA8_14ED58[arg0 + 4].unk8.unk2,
			 (f32)D_8013FDA8_14ED58[arg0 + 4].unk8.unk4, &D_80159290, &D_80159294, &D_80159298);
}

void func_800FFC3C_10EBEC(s32 arg0) {
	D_80052B48.unk0 = 0;
	if (arg0 & 1) {
		D_80052B48.unk2 = (s16)D_801591CA;
	} else {
		D_80052B48.unk2 = (s16)-D_801591CA;
	}
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FFCB8_10EC68(s32 arg0) {
	Unk80052B40 *sp = &D_8013FDA8_14ED58[arg0].unk8;

	D_80052B40.unk0 = sp->unk0;
	D_80052B40.unk2 = sp->unk2;
	D_80052B40.unk4 = sp->unk4 - D_801591C0;
	func_800039D0_45D0(&D_80052B40, 0, 0, D_8005BB38);
}

// CURRENT(2040)
#ifdef NON_MATCHING
void func_800FFD28_10ECD8(VehicleInstance *arg0) {
	VehicleSpec *specPtr;
	s16 temp;
	s16 yOffset;

	specPtr = &vehicleSpecs[arg0->unk1A];

	func_800039D0_45D0(NULL, NULL, &D_800311A0, D_8005BB38);

	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	D_80052B40.unk0 = arg0->unk0;
	D_80052B40.unk2 = arg0->unk2;
	D_80052B40.unk4 = arg0->unk4;

	D_80052B48.unk0 = (s16)(0x4000 - arg0->unk6);
	D_80052B48.unk2 = (s16)-arg0->unk8;
	D_80052B48.unk4 = arg0->unkA;

	if ((D_80222A70 == arg0->unk2) && !(specPtr->unk4C & 0x100)) {
		D_80052B48.unk2 += (s16)(s32)(((f64)(f32)sins((u16)(D_80052A8E << 11)) / 32768.0) * 512.0);
		D_80052B48.unk4 += (s16)(s32)(((f64)(f32)coss((u16)(D_80052A8E << 11)) / 32768.0) * 512.0);
	}

	if (specPtr->unk55 != 0) {
		WeaponSpecEntry *tableEntry;

		tableEntry = &D_80140768_14F718[specPtr->unk55];
		D_80052B40.unk2 += tableEntry->unk0;
	}

	if ((arg0->unk1A == 2) && (currentLevel == 3)) {
		yOffset = arg0->unk2 - D_80222A70;
		if (yOffset >= 0x19) {
			yOffset = 0x18;
		}
		if (yOffset < 0) {
			yOffset = 0;
		}
		D_80052B40.unk2 += yOffset;
	}

	if ((currentLevel == 2) && (arg0->unk1A == 5)) {
		D_80052B40.unk2 += 0x1F4;
	}

	if (arg0 == D_80052B34) {
		temp = D_801591C6;
		D_801591C6 = 0;
		D_80052B40.unk2 += temp;
	}

	func_800039D0_45D0(&D_80052B40, &D_80052B48, NULL, D_8005BB38);

	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	if (((arg0 == D_80052B34) || (arg0 == (VehicleInstance *)D_80158E74)) && (currentLevel == 3) && (arg0->unk1A == 0x11)) {
		if (arg0 == D_80052B34) {
			D_80052B48.unk0 = D_8015930A;
		} else {
			D_80052B48.unk0 = D_80159232;
		}

		D_80052B48.unk2 = 0;
		D_80052B48.unk4 = 0;

		func_800039D0_45D0(NULL, &D_80052B48, NULL, D_8005BB38);

		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		D_8005BB38 += 0x40;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FFD28_10ECD8.s")
#endif

void func_80100114_10F0C4(VehicleInstance *arg0) {
	D_80052B40.unk0 = (s16)(s32)arg0->unk4C;
	D_80052B40.unk2 = (s16)(s32)arg0->unk50;
	D_80052B40.unk4 = (s16)(s32)arg0->unk54;
	D_80052B48.unk0 = (s16)(0x4000 - arg0->unk6);
	D_80052B48.unk2 = (s16)-arg0->unk8;
	D_80052B48.unk4 = (s16)arg0->unkA;
	func_800039D0_45D0(&D_80052B40, &D_80052B48, 0, (s32)&D_801592C0);
}

#ifdef NON_MATCHING
// CURRENT(2650)
void func_801001B4_10F164(void) {
	s16 *xPtr;
	s16 *yPtr;
	s16 *zPtr;
	s16 x;
	s16 y;
	s16 z;
	s16 i;

	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gSPMatrix(D_8005BB2C++, (u32)&D_80031160 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	xPtr = &D_80159328[31];
	yPtr = &D_80159368[31];
	zPtr = &D_801593A8[31];
	i = 31;
	do {
		x = *xPtr;
		y = *yPtr;
		z = *zPtr;

		if ((x != 0) || (y != 0) || (z != 0)) {
			D_8005BB34->v.ob[0] = x;
			D_8005BB34->v.ob[1] = y;
			D_8005BB34->v.ob[2] = z;
			D_8005BB34->v.cn[0] = 0xFF;
			D_8005BB34->v.cn[1] = 0xFF;
			D_8005BB34->v.cn[2] = 0xFF;
			D_8005BB34->v.cn[3] = 0xFF;
			D_8005BB34++;

			D_8005BB34->v.ob[0] = x + 0x10;
			D_8005BB34->v.ob[1] = y + 0x40;
			D_8005BB34->v.ob[2] = z;
			D_8005BB34->v.cn[0] = 0xFF;
			D_8005BB34->v.cn[1] = 0xFF;
			D_8005BB34->v.cn[2] = 0xFF;
			D_8005BB34->v.cn[3] = 0xFF;
			D_8005BB34++;

			D_8005BB34->v.ob[0] = x - 0x10;
			D_8005BB34->v.ob[1] = y + 0x40;
			D_8005BB34->v.ob[2] = z;
			D_8005BB34->v.cn[0] = 0xFF;
			D_8005BB34->v.cn[1] = 0xFF;
			D_8005BB34->v.cn[2] = 0xFF;
			D_8005BB34->v.cn[3] = 0xFF;
			D_8005BB34++;

			D_8005BB34->v.ob[0] = x;
			D_8005BB34->v.ob[1] = y + 0x40;
			D_8005BB34->v.ob[2] = z + 0x10;
			D_8005BB34->v.cn[0] = 0xFF;
			D_8005BB34->v.cn[1] = 0xFF;
			D_8005BB34->v.cn[2] = 0xFF;
			D_8005BB34->v.cn[3] = 0xFF;
			D_8005BB34++;

			D_8005BB34->v.ob[0] = x;
			D_8005BB34->v.ob[1] = y + 0x40;
			D_8005BB34->v.ob[2] = z - 0x10;
			D_8005BB34->v.cn[0] = 0xFF;
			D_8005BB34->v.cn[1] = 0xFF;
			D_8005BB34->v.cn[2] = 0xFF;
			D_8005BB34->v.cn[3] = 0xFF;
			D_8005BB34++;

			gSPVertex(D_8005BB2C++, (u32)(D_8005BB34 - 5) & 0x1FFFFFFF, 5, 0);
			gDPPipeSync(D_8005BB2C++);
			gSP2Triangles(D_8005BB2C++, 0, 1, 2, 0, 0, 3, 4, 0);
			gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
		}

		xPtr--;
		yPtr--;
		zPtr--;
	} while (i-- != 0);

	gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
	gDPPipeSync(D_8005BB2C++);

	xPtr = &D_80159328[31];
	yPtr = &D_80159368[31];
	zPtr = &D_801593A8[31];
	i = 31;
	do {
		*xPtr = 0;
		*yPtr = 0;
		*zPtr = 0;
		xPtr--;
		yPtr--;
		zPtr--;
	} while (i-- != 0);

	D_801593E8 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_801001B4_10F164.s")
#endif

void func_801005CC_10F57C(s32 arg0, s32 arg1) {
	VehicleInstance *sp1C;

	if (!(D_80159320 & 0x800000)) {
		sp1C = func_80109960_118910();
		D_8015EA38 = D_8015EA34;
		func_800FB484_10A434(sp1C, D_8015EA34);
		D_80159248 = 0;
		func_800FB430_10A3E0(sp1C, 0);
	}
}

void func_80100638_10F5E8(u8 arg0, u8 arg1) {
	D_80159320 |= 0x800000;
}

// CURRENT(22935)
#ifdef NON_MATCHING
// DisplayVehicles
void func_8010065C_10F60C(s32 arg0) {
	s32 index;
	s32 stackPad[54];
	s32 i;
	s32 count;
	s32 matrixCount;
	s32 *mtxSrc;
	s32 *mtxDst;
	u8 specPart;
	u8 listIndex;
	u8 *vehicleIndexPtr;
	VehicleInstance *vehicle;
	VehicleSpec *spec;
	u8 *specBytes;
	ShadowPartEntry *shadowPart;
	void (*updateMtx)(s32);
	u8 *model;

	mtxSrc = (s32 *)&D_80031120_31D20;
	mtxDst = (s32 *)&D_801592C0;
	for (i = 0; i < (sizeof(Mtx) / sizeof(s32)); i++) {
		*mtxDst++ = *mtxSrc++;
	}

	gDPPipeSync(D_8005BB30++);
	gDPSetCombineMode(D_8005BB30++, G_CC_SHADE, G_CC_PASS2);
	gDPSetRenderMode(D_8005BB30++,
		AA_EN | Z_CMP | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL | G_RM_FOG_SHADE_A,
		AA_EN | Z_CMP | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL |
			GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM));
	gDPSetCycleType(D_8005BB30++, G_CYC_2CYCLE);
	gSPSetGeometryMode(D_8005BB30++, G_FOG);

	if (arg0 == 0) {
		func_801001B4_10F164();
	}

	if (arg0 != 0) {
		func_800FC568_10B518();
	}

	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);

	if (D_80052B34->unk1A != 0) {
		if (D_80159264 != 0) {
			func_800EA5B8_F9568();
		}
	}
	D_80159264 = (D_80052B34->unk1A == 0);

	if (arg0 == 0) {
		i = 7;
		while (i != 0) {
			D_80158B90[i].unk6 = -0x8000;
			i--;
		}
		D_801593EA = 0;
		guLookAtReflect(D_8005BB38, (LookAt *)&D_801592A0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 50.0f, 0.0f, 1.0f,
						0.0f);
	}

	if ((currentLevel == 2) && (arg0 == 0)) {
		VehicleInstance *adam = func_80109960_118910();

		func_8012D700_13C6B0(2, 0x7FFF, adam->unk0 + 0xB, adam->unk2 + 0x39, adam->unk4, 0, 0, 0, 0x5D,
							D_8013FD74_14ED24, 0x19, &func_80100638_10F5E8, &func_8012E1F8_13D1A8);
		func_8012D700_13C6B0(7, 0x7FFE, adam->unk0 + 0x67, adam->unk2 + 0x69, adam->unk4, 0, 0, 0, 0x15,
							0x89, 0x3F, &func_801005CC_10F57C, NULL);
		func_8012D700_13C6B0(7, 0x7FFD, adam->unk0 - 0x4F, adam->unk2 + 0x69, adam->unk4, 0, 0, 0, 0x15,
							0x89, 0x3F, &func_801005CC_10F57C, NULL);
		func_8012D700_13C6B0(7, 0x7FFC, adam->unk0 + 0x47, adam->unk2 + 0x69, adam->unk4 + 0x95, 0, 0, 0,
							D_8013FD70_14ED20, 0x14, 0x40, &func_801005CC_10F57C, NULL);
		func_8012D700_13C6B0(7, 0x7FFB, adam->unk0 - 0x32, adam->unk2 + 0x69, adam->unk4 + 0x95, 0, 0, 0,
							D_8013FD70_14ED20, 0x14, 0x40, &func_801005CC_10F57C, NULL);
		func_8012D700_13C6B0(7, 0x7FFA, adam->unk0 + 0x47, adam->unk2 + 0x69, adam->unk4 - 0x98, 0, 0, 0,
							D_8013FD70_14ED20, 0x14, 0x40, &func_801005CC_10F57C, NULL);
		func_8012D700_13C6B0(7, 0x7FF9, adam->unk0 - 0x32, adam->unk2 + 0x69, adam->unk4 - 0x98, 0, 0, 0,
							D_8013FD70_14ED20, 0x14, 0x40, &func_801005CC_10F57C, NULL);
	}

	if (arg0 == 0) {
		D_80158FE0 = 0;
	}

	if (D_80158FD8 != 0) {
		count = D_80158FD8 - 1;
		vehicleIndexPtr = &D_80158E80[count];
		for (index = count; index != 0; index--, vehicleIndexPtr--) {
			vehicle = &vehicleInstances[*vehicleIndexPtr];
			spec = &vehicleSpecs[vehicle->unk1A];
			specBytes = (u8 *)spec;

			if (arg0 != 0) {
				if (vehicle != D_80052B34) {
					continue;
				}
			} else if (vehicle == D_80052B34) {
				continue;
			}

			if ((currentLevel == 1) && (vehicle->unk1A == 0x11)) {
				D_80158B90[D_801593EA].unk0 = vehicle->unk0;
				D_80158B90[D_801593EA].unk4 = vehicle->unk4;
				D_80158B90[D_801593EA].unk2 = func_800F9D24_108CD4(vehicle->unk0, vehicle->unk4);
				D_80158B90[D_801593EA].unk6 = vehicle->unk2;

				D_8005BB34->v.ob[0] = vehicle->unk0;
				D_8005BB34->v.ob[1] = D_80158B90[D_801593EA].unk2;
				D_8005BB34->v.ob[2] = vehicle->unk4;
				D_8005BB34->v.cn[0] = 0x8E;
				D_8005BB34->v.cn[1] = 0x63;
				D_8005BB34->v.cn[2] = 0x3C;
				D_8005BB34->v.cn[3] = 0xFF;
				D_8005BB34++;

				D_8005BB34->v.ob[0] = vehicle->unk0;
				D_8005BB34->v.ob[1] = vehicle->unk2;
				D_8005BB34->v.ob[2] = vehicle->unk4;
				D_8005BB34->v.cn[0] = 0x8E;
				D_8005BB34->v.cn[1] = 0x63;
				D_8005BB34->v.cn[2] = 0x3C;
				D_8005BB34->v.cn[3] = 0xFF;
				D_8005BB34++;

				gDPPipeSync(D_8005BB30++);
				gSPVertex(D_8005BB30++, (u32)(D_8005BB34 - 2) & 0x1FFFFFFF, 2, 0);
				gDPSetTextureLUT(D_8005BB30++, G_TT_NONE);
				gDPPipeSync(D_8005BB30++);

				D_801593EA++;
			}

			if ((vehicle->unk0 < (D_801493B0 - 0x200)) || ((D_801493AC + 0x200) < vehicle->unk0)) {
				continue;
			}
			if ((vehicle->unk4 < (D_801493B8 - 0x200)) || ((D_801493B4 + 0x200) < vehicle->unk4)) {
				continue;
			}

			D_80158F00[D_80158FE0] = *vehicleIndexPtr;
			D_80158FE0++;

			if ((func_800B93AC_C835C(vehicle->unk0, vehicle->unk4, spec->unkC, (s16)D_80052B2C->unk0,
								D_80052B2C->unk8, 0x4000 - D_80047950) == 0) || !(vehicle->unk20 & 0x8000) ||
				((D_801493E0 == 0) && (vehicle == D_80052B34))) {
				continue;
			}

			gSPLookAtX(D_8005BB2C++, (Light *)&D_801592A0);
			gSPLookAtY(D_8005BB2C++, (Light *)&D_801592B0);
			gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_aLIGHT_1, 0xFFFFFFFF);
			gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_bLIGHT_1, 0xFFFFFFFF);
			gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_aLIGHT_2, 0x808080FF);
			gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_bLIGHT_2, 0x808080FF);

			if ((vehicle->unk20 & 0x2000) && !((index + D_80052A8C) & 3)) {
				func_800710D4_80084(0xFF, 0xFF, 0xFF);
			}

			if ((currentLevel == 2) && (vehicle->unk1A == 1) && (vehicle == D_80052B34)) {
				gSPClearGeometryMode(D_8005BB2C++, G_FOG);
				gDPSetRenderMode(D_8005BB2C++, G_RM_PASS, G_RM_AA_ZB_XLU_SURF2);
			}

			if (vehicle->unk1A == 0) {
				gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);
				func_800FB3E8_10A398(D_80052B34, D_80159238);
				func_800FB40C_10A3BC(D_80052B34, D_8015923C);
				func_800EF14C_FE0FC(D_80052B34);
				func_800FB3E8_10A398(D_80052B34, -D_80159238);
				func_800FB40C_10A3BC(D_80052B34, -D_8015923C);
				gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);
			} else {
				func_800FFD28_10ECD8(vehicle, &D_80159238);

				if (((currentLevel == 4) && ((vehicle->unk1A == 6) || (vehicle->unk1A == 0xD))) ||
					(vehicle->unk1A == 0x13)) {
					func_80100114_10F0C4(vehicle);
				}

				gDPSetTextureLOD(D_8005BB2C++, G_TL_LOD);
				if (*(s32 *)spec != 0) {
					gSPDisplayList(D_8005BB2C++, (Gfx *)(*(s32 *)spec));
				}

				if ((spec->unk4C & 0x01000000) && (vehicle == D_80052B34)) {
					D_80052B40.unk0 = spec->unk5E * 2;
					D_80052B40.unk2 = spec->unk5F * 2;
					D_80052B40.unk4 = spec->unk60 * 2;
					D_80052B50.unk0 = 0x37;
					D_80052B50.unk2 = 0x37;
					D_80052B50.unk4 = 0x37;
					func_800039D0_45D0(&D_80052B40, 0, &D_80052B50, D_8005BB38);

					gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF,
							  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
					D_8005BB38 += 0x40;
					gDPSetTextureLOD(D_8005BB2C++, G_TL_TILE);
					gSPDisplayList(D_8005BB2C++, D_50445A0);
					gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);
					gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
				}

				matrixCount = 0;
				listIndex = specBytes[0x53];
				shadowPart = (ShadowPartEntry *)&D_8013FDA8_14ED58[listIndex];
				for (count = specBytes[0x54] - 1; count != 0; count--) {
					model = (u8 *)shadowPart->model;

					if (shadowPart->flags & 0x40) {
						for (i = 0; i < 2; i++) {
							gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
							matrixCount--;
						}
					}
					if (shadowPart->flags & 0x80) {
						for (i = 0; i < 3; i++) {
							gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
							matrixCount--;
						}
					}
					if (shadowPart->flags & 0x100) {
						for (i = 0; i < 4; i++) {
							gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
							matrixCount--;
						}
					}

					if ((currentLevel == 4) && (vehicle->unk1A == 0xD) && (vehicle->unk20 & 0x10)) {
						count--;
					}

					updateMtx = (void (*)(s32))shadowPart->updateMtx;
					if ((vehicle == D_80052B34) || (vehicle == (VehicleInstance *)D_80158E74) ||
						((currentLevel == 2) && (vehicle->unk1A == 5))) {
						if ((vehicle == D_80052B34) && (updateMtx == func_800FF5A8_10E558)) {
							if (D_8015930C >= 0x2619) {
								if (model == D_5032130) {
									model = D_5031990;
								} else if (model == D_5032038) {
									model = D_50318A0;
								} else if (model == D_5031F30) {
									model = D_50317A0;
								} else if (model == D_5031DB0) {
									model = D_5031650;
								} else if (model == D_5031BC0) {
									model = D_50314B0;
								}
							}

							if ((currentLevel == 4) &&
								(((vehicle->unk1A == 5) && (listIndex == 0x85)) ||
								 ((vehicle->unk1A == 9) && (listIndex == 0x8D)))) {
								func_800FF604_10E5B4(listIndex);
							} else {
								func_800FF5A8_10E558(listIndex);
							}
						} else if ((vehicle == (VehicleInstance *)D_80158E74) &&
								   (updateMtx == func_800FF5A8_10E558)) {
							if (D_80159234 >= 0x2619) {
								if (model == D_5032130) {
									model = D_5031990;
								} else if (model == D_5032038) {
									model = D_50318A0;
								} else if (model == D_5031F30) {
									model = D_50317A0;
								} else if (model == D_5031DB0) {
									model = D_5031650;
								} else if (model == D_5031BC0) {
									model = D_50314B0;
								}
							}

							if ((currentLevel == 4) &&
								(((vehicle->unk1A == 5) && (listIndex == 0x85)) ||
								 ((vehicle->unk1A == 9) && (listIndex == 0x8D)))) {
								func_800FF6C0_10E670(listIndex);
							} else {
								func_800FF664_10E614(listIndex);
							}
						} else {
							updateMtx(listIndex);
						}
					} else if (updateMtx == func_800FEB04_10DAB4) {
						updateMtx(listIndex);
					} else {
						func_800FE910_10D8C0(listIndex);
					}

					if (shadowPart->flags & 1) {
						gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF,
								  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
						matrixCount++;
					} else {
						gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF,
								  G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
					}
					D_8005BB38 += 0x40;

					if (((model != D_50312E8) || (vehicle == D_80158E78) ||
						((model == D_50312E8) &&
						 (((listIndex == specBytes[0x63]) &&
						   ((D_80050AD4 == 0) || (vehicle == D_8013FD78_14ED28))) ||
						  ((listIndex == specBytes[0x64]) &&
						   ((D_80050AD4 == 1) || (vehicle == D_8013FD78_14ED28)))) &&
						 !(D_80159320 & 0x10000) && (D_80031414 == 0) && (vehicle == D_80052B34) &&
						 (D_8015930E == 0) && (gameplayMode == 1) &&
						 (vehicle->unk1E == 0) && (currentControllerStates[0].button & 0x2000))) &&
						((vehicle == D_80052B34) || ((model != D_50445A0) && (model != D_9043D50)))) {
						switch (listIndex) {
							case 14:
								func_802D4CD0_18D7E0(0x18, 0);
								break;
							case 15:
								func_802D4CD0_18D7E0(0x19, 0);
								break;
							default:
								if (shadowPart->flags & 0x20) {
									gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);
									D_80052B50.unk0 = -0x100;
									D_80052B50.unk2 = 0x100;
									D_80052B50.unk4 = 0x100;
									func_800039D0_45D0(NULL, 0, &D_80052B50, D_8005BB38);
									gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF,
											  G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
									D_8005BB38 += 0x40;
								} else {
									gSPSetGeometryMode(D_8005BB2C++, G_FOG);
									gDPSetTextureLOD(D_8005BB2C++, G_TL_LOD);
								}

								if ((model == D_50445A0) || (model == D_9043D50)) {
									gDPSetTextureLOD(D_8005BB2C++, G_TL_TILE);
								}
								gSPDisplayList(D_8005BB2C++, model);
								if ((model == D_50445A0) || (model == D_9043D50)) {
									gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);
								}
								break;
						}

						if (shadowPart->flags & 0x10) {
							gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
							shadowPart->offset.unk0 = -shadowPart->offset.unk0;
							func_800FF258_10E208(listIndex);
							gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF,
									  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
							D_8005BB38 += 0x40;
							gSPDisplayList(D_8005BB2C++, model);
							shadowPart->offset.unk0 = -shadowPart->offset.unk0;
						}
					}

					listIndex++;
					if ((shadowPart->flags & 2) && (matrixCount > 0)) {
						gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
						matrixCount--;
					}
					shadowPart++;
				}

				while (matrixCount != 0) {
					gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
					matrixCount--;
				}
			}

			if ((currentLevel == 2) && (vehicle->unk1A == 1) && (vehicle == D_80052B34)) {
				gDPSetTextureLOD(D_8005BB2C++, G_TL_TILE);
				gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
			}

			if (D_80159320 & 0x100000) {
				func_80070FB8_7FF68();
			}
			if (vehicle->unk20 & 0x2000) {
				func_80070FB8_7FF68();
				vehicle->unk20 &= ~0x2000;
			}
		}
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureLOD(D_8005BB2C++, G_TL_LOD);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010065C_10F60C.s")
#endif

// CURRENT(5000)
#ifdef NON_MATCHING
// DisplayDeadVehicles
void func_80101C14_110BC4(void) {
	s16 i;

	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);

	if (currentLevel == 1) {
		for (i = 0x7F; i >= 0; i--) {
			VehicleInstance *vehicle = &vehicleInstances[D_80158E80[i]];
			VehicleSpec *spec;

			if (vehicle->unk1A != 0x11) {
				continue;
			}
			if (vehicle->unk20 & 0x8000) {
				continue;
			}

			spec = &vehicleSpecs[vehicle->unk1A];
			if (vehicle->unk0 < (D_801493B0 - 0x200)) {
				continue;
			}
			if ((D_801493AC + 0x200) < vehicle->unk0) {
				continue;
			}
			if (vehicle->unk4 < (D_801493B8 - 0x200)) {
				continue;
			}
			if ((D_801493B4 + 0x200) < vehicle->unk4) {
				continue;
			}
			if (func_800B93AC_C835C(vehicle->unk0, vehicle->unk4, spec->unkC, (s16)D_80052B2C->unk0, (s32)D_80052B2C->unk8, 0x4000 - D_80047950) == 0) {
				continue;
			}
			if (vehicle->unk1E >= 0x81) {
				continue;
			}

			func_800FFD28_10ECD8(vehicle);

			D_80052B50.unk0 = (s16)(0x100 - (vehicle->unk1E << 1));
			D_80052B50.unk2 = (s16)(0x100 - (vehicle->unk1E << 1));
			D_80052B50.unk4 = 0x100;
			func_800039D0_45D0(&D_80052B50, 0, 0, D_8005BB38);

			gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			D_8005BB38 += 0x40;

			gSPDisplayList(D_8005BB2C++, (u32)D_8005BB38);

			gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

			gDPPipeSync(D_8005BB2C++);
		}
	}

	gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80101C14_110BC4.s")
#endif

// CURRENT(6685)
#ifdef NON_MATCHING
void func_80101EF4_110EA4(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6) {
	Unk8013FDA8Entry *entry;
	s16 temp;
	s32 sp40;
	s32 count;
	s32 var_v0;
	s32 i;
	s32 loops;
	VehicleSpec *spec = &vehicleSpecs[arg0];

	i = spec->detailProp;
	loops = spec->unk54;
	count = 0;
	sp40 = D_8005BB38;
	D_8005BB38 = sp40 + 0x40;

	D_80052B40.unk0 = arg1 >> 2;
	D_80052B40.unk2 = arg2 >> 2;
	D_80052B40.unk4 = arg3 >> 2;

	D_80052B48.unk0 = (s16)arg4;
	D_80052B48.unk2 = (s16)arg6;
	D_80052B48.unk4 = (s16)arg5;

	temp = (s16)(256.0 / ((f64)(f32)spec->unkC * 0.125));
	D_80052B50.unk0 = temp;
	D_80052B50.unk2 = temp;
	D_80052B50.unk4 = temp;
	func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, sp40);

	gSPMatrix(D_8005BB2C++, sp40 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	gSPDisplayList(D_8005BB2C++, spec->modelDL);

	if (loops != 0) {
		entry = &D_8013FDA8_14ED58[(s32)i];
		for (loops--; ; loops--) {
			func_800FE910_10D8C0(i);

			if (entry->pad0[0] & 1) {
				gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				count++;
				D_8005BB38 += 0x40;
			} else {
				gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				D_8005BB38 += 0x40;
			}

			if (*(u32 *)&entry->unk0[0] != 0x050312E8) {
				if (i == 0xE) {
					func_802D4CD0_18D7E0(0x19, 0);
				} else if (i == 0xF) {
					func_802D4CD0_18D7E0(0x18, 0);
				} else {
					if (entry->pad0[0] & 0x20) {
						gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH);

						D_80052B50.unk0 = -0x100;
						D_80052B50.unk2 = 0x100;
						D_80052B50.unk4 = 0x100;
						func_800039D0_45D0(0, 0, &D_80052B50, D_8005BB38);

						gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
						D_8005BB38 += 0x40;
					} else {
						gSPClearGeometryMode(D_8005BB2C++, G_CULL_FRONT);
						gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);
					}

					if ((*(u32 *)&entry->unk0[0] != 0x050445A0) && (*(u32 *)&entry->unk0[0] != 0x09043D50)) {
						gSPDisplayList(D_8005BB2C++, *(u32 *)&entry->unk0[0]);
					}
				}
			}

			i++;
			entry++;

			if (entry[-1].pad0[0] & 2) {
				gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
				count--;
			}

			if (loops == 0) {
				break;
			}
		}
	}

	var_v0 = count;
	count--;
	if (var_v0 != 0) {
		do {
			gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
			var_v0 = count;
			count--;
		} while (var_v0 != 0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80101EF4_110EA4.s")
#endif

// CURRENT(1466)
#ifdef NON_MATCHING
void func_801022F4_1112A4(VehicleInstance *arg0, s16 arg1, f32 arg2) {
	s16 temp_s0;
	f32 temp_f20, temp_f14;
	s32 diff;
	s32 pad1;
	
	if (arg0->unkC == -2) {
		temp_s0 = coss((u16)arg0->unkE);
		temp_f20 = (f32)((((f64)(f32)coss(arg1) / 32768.0) * (f64)arg2) + (((f64)(f32)temp_s0 / 32768.0) * (f64)arg0->unk58));
		
		temp_s0 = sins((u16)arg0->unkE);
		temp_f14 = (f32)((((f64)(f32)sins(arg1) / 32768.0) * (f64)arg2) + (((f64)(f32)temp_s0 / 32768.0) * (f64)arg0->unk58));
		
		func_800FB430_10A3E0(arg0, sqrtf((temp_f20 * temp_f20) + (temp_f14 * temp_f14)));
		arg0->unkE = func_80003824_4424(temp_f20, temp_f14);
		
		diff = func_800F9C50_108C00(arg0->unkE, arg0->unk6);
		if ((diff >= 0x4001) || (diff < -0x4000)) {
			arg0->unkE += 0x8000;
			func_800FB430_10A3E0(arg0, -arg0->unk58);
		}
		
		if (arg0 == D_80052B34) {
			D_80157A2C = arg1;
		}
		
		arg0->unk20 |= 1;
	} else {
		temp_s0 = coss((u16)arg0->unkE);
		temp_f20 = (f32)((((f64)(f32)coss(arg1) / 32768.0) * (f64)arg2) + (((f64)(f32)temp_s0 / 32768.0) * (f64)arg0->unk12));
		
		temp_s0 = sins((u16)arg0->unkE);
		temp_f14 = (f32)((((f64)(f32)sins(arg1) / 32768.0) * (f64)arg2) + (((f64)(f32)temp_s0 / 32768.0) * (f64)arg0->unk12));
		
		arg0->unk12 = (s16)(s32)sqrtf((temp_f20 * temp_f20) + (temp_f14 * temp_f14));
		arg0->unkE = func_80003824_4424(temp_f20, temp_f14);
		
		diff = func_800F9C50_108C00(arg0->unkE, arg0->unk6);
		if ((diff >= 0x4001) || (diff < -0x4000)) {
			arg0->unkE += 0x8000;
			arg0->unk12 = -arg0->unk12;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_801022F4_1112A4.s")
#endif

// CURRENT(887)
#ifdef NON_MATCHING
void func_80102600_1115B0(VehicleInstance *arg0, s16 arg1, f32 arg2) {
	s16 temp;
	s32 diff;
	f64 temp_f0;
	f32 temp_f20;
	f32 temp_f22;

	temp = coss((u16)arg0->unkE);
	temp_f0 = (f64)arg2;
	temp_f22 = (f32)((((f64)(f32)coss((u16)arg1) / 32768.0) * temp_f0) + (((f64)(f32)temp / 32768.0) * (f64)arg0->unk58));
	temp = sins((u16)arg0->unkE);
	temp_f20 = (f32)((((f64)(f32)sins((u16)arg1) / 32768.0) * temp_f0) + (((f64)(f32)temp / 32768.0) * (f64)arg0->unk58));

	func_800FB430_10A3E0(arg0, sqrtf((temp_f22 * temp_f22) + (temp_f20 * temp_f20)));
	arg0->unkE = func_80003824_4424(temp_f22, temp_f20);

	arg0->unk30 += (f32)(((s16)(s32)temp_f22) >> 1);
	arg0->unk38 += (f32)(((s16)(s32)temp_f20) >> 1);

	diff = func_800F9C50_108C00(arg0->unkE, arg0->unk6);
	if ((diff >= 0x4001) || (diff < -0x4000)) {
		arg0->unkE += 0x8000;
		func_800FB430_10A3E0(arg0, -arg0->unk58);
	}

	if (arg0 == D_80052B34) {
		D_80157A2C = arg1;
	}

	arg0->unk20 |= 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80102600_1115B0.s")
#endif

void func_801027E8_111798(VehicleInstance *arg0, f32 arg1, f32 arg2, f32 arg3)
{
	s32 temp_v0;
	f32 sp38;
	f32 sp34;
	f32 sp30;
	f32 sp2C;
	f32 sp28;

	sp38 = (((((((f32)coss(arg0->unkE))) / 32768.0) * ((((f32)coss(arg0->unk10))) / 32768.0)) * (arg0->unk58)) + (arg1));
	sp34 = (((((((f32)sins(arg0->unkE))) / 32768.0) * ((((f32)coss(arg0->unk10))) / 32768.0)) * (arg0->unk58)) + (arg3));
	sp30 = ((((((f32)sins(arg0->unk10))) / 32768.0) * (arg0->unk58)) + (arg2));

	sp28 = sqrtf((sp30 * sp30) + ((sp38 * sp38) + (sp34 * sp34)));
	sp2C = sqrtf((sp38 * sp38) + (sp34 * sp34));
	arg0->unkE = func_80003824_4424(sp38, sp34);
	arg0->unk10 = func_80003824_4424(sp2C, sp30);
	func_800FB430_10A3E0(arg0, sp28);
	temp_v0 = func_800F9C50_108C00(arg0->unkE, arg0->unk6);
	if ((temp_v0 >= 0x4001) || (temp_v0 < (-0x4000)))
	{
		arg0->unkE += 0x8000;
		func_800FB430_10A3E0(arg0, -arg0->unk12);
	}
	if (arg0 == D_80052B34)
	{
		D_80157A2C = func_80003824_4424(arg1, arg3);
	}
	arg0->unk20 |= 1;
}

// https://decomp.me/scratch/lIfrb
// CURRENT(4905)
#ifdef NON_MATCHING
void func_80102A0C_1119BC(VehicleInstance *arg0, s16 arg1, s16 arg2, f32 arg3)
{
	s32 temp_v0;
	f32 sp48;
  f32 sp4C;
  f32 sp50;
  f32 temp_f22;
  if ((arg0->unk1C <= 0) || ((gameplayMode != 1) && (arg0 == D_80052B34)))
  {
	return;
  }
  
  sp50 = (f32) (((((((f32) coss(arg2))) / 32768.0) * ((((f32) coss(arg1))) / 32768.0)) * (arg3)) + (((((f64) ((f32) coss((u16) arg0->unkE))) / 32768.0) * ((((f32)coss((u16) arg0->unk10))) / 32768.0)) * (arg0->unk58)));
  sp4C = (f32) (((((((f32) coss(arg2))) / 32768.0) * ((((f32) sins(arg1))) / 32768.0)) * (arg3)) + (((((f64) ((f32) sins((u16) arg0->unkE))) / 32768.0) * ((((f32) coss((u16) arg0->unk10))) / 32768.0)) * (arg0->unk58)));
  sp48 = (f32) ((((((f32) sins(arg2))) / 32768.0) * (arg3)) + (((((f32) sins((u16) arg0->unk10))) / 32768.0) * ((f64) arg0->unk58)));
  
  temp_f22 = sqrtf((sp48 * sp48) + ((sp50 * sp50) + (sp4C * sp4C)));
  arg0->unkE = func_80003824_4424(sp50, sp4C);
  arg0->unk10 = func_80003824_4424(sqrtf((sp50 * sp50) + (sp4C * sp4C)), sp48);
  func_800FB430_10A3E0(arg0, temp_f22);
  temp_v0 = func_800F9C50_108C00(arg0->unkE, arg0->unk6);
  if ((temp_v0 >= 0x4001) || (temp_v0 < (-0x4000)))
  {
	arg0->unkE += 0x8000;
	func_800FB430_10A3E0(arg0, -arg0->unk12);
  }
  if (arg0 == D_80052B34)
  {
	D_80157A2C = func_80003824_4424(arg1, arg3);
  }
  arg0->unk20 |= 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80102A0C_1119BC.s")
#endif

void func_80102D00_111CB0(VehicleInstance *arg0, f32 arg1, f32 arg2, f32 arg3) {
	if (arg0->unk1C <= 0) {
		return;
	}
	if (gameplayMode != 1 && arg0 == D_80052B34) {
		return;
	}
	arg0->unk30 += arg1;
	arg0->unk34 += arg2;
	arg0->unk38 += arg3;
	if (arg2 > 0.0f) {
		if (!(arg0->unk20 & 2)) {
			arg0->unk20 |= 2;
			arg0->unk10 = 0;
			func_800FB3E8_10A398(arg0, 1.0f);
		}
	}
	arg0->unk20 |= 1;
	if (arg0 == D_80052B34) {
		D_80157A2C = func_80003824_4424(arg1, arg3);
	}
}

// https://decomp.me/scratch/g7oMu
void func_80102DDC_111D8C(VehicleInstance *arg0, s16 arg1, s16 arg2, f32 arg3)
{
	if ((arg0->unk1C > 0) && ((gameplayMode == 1) || (arg0 != D_80052B34)))
	{

		arg0->unk30 += ((((f32)coss(arg1)) / 32768.0) * (((f32)coss(arg2)) / 32768.0)) * arg3;
		arg0->unk34 += (((f32)sins(arg2)) / 32768.0) * arg3;
		arg0->unk38 += (((((f32)sins(arg1)) / 32768.0) * (((f32)coss(arg2)) / 32768.0)) * arg3);
		if (arg0->unk34 > 0.0f)
		{
			if (!(arg0->unk20 & 2))
			{
				arg0->unk20 |= 2;
				arg0->unk10 = 0;
				func_800FB3E8_10A398(arg0, 1.0f);
			}
		}
		arg0->unk20 |= 1;
		if (arg0 == D_80052B34)
		{
			D_80157A2C = arg1;
		}
	}
}

// CURRENT(10274)
#ifdef NON_MATCHING
s32 func_80102FA4_111F54(void) {
	UnkF9230Func80102FA4Point *points;
	UnkF9230Func80102FA4Point *cur;
	UnkF9230Func80102FA4Point *prev;
	f64 damping;
	f64 spring;
	f32 chainX;
	f32 chainY;
	f32 chainZ;
	s32 i;
	s32 ret;
	f32 targetY;
	f32 groundY;
	f32 midX;
	f32 midY;
	f32 midZ;

	points = (UnkF9230Func80102FA4Point *)D_801593F0;
	damping = D_80144A90_153A40[0];
	spring = D_80144A98_153A48[0];

	points[11].vel.x = (f32)((f64)points[11].vel.x * damping);
	points[11].vel.y = (f32)(((f64)points[11].vel.y * damping) - 4.0);
	points[11].vel.z = (f32)((f64)points[11].vel.z * damping);
	points[11].pos.x += points[11].vel.x;
	points[11].pos.y += points[11].vel.y;
	points[11].pos.z += points[11].vel.z;

	chainX = points[11].pos.x;
	chainY = points[11].pos.y;
	chainZ = points[11].pos.z;

	for (i = 10; i >= 1; i--) {
		cur = &points[i];
		prev = &points[i - 1];

		midX = (f32)((f64)chainX - (((f64)(chainX - prev->pos.x)) * 0.5));
		midY = (f32)((f64)chainY - (((f64)(chainY - prev->pos.y)) * 0.5));
		midZ = (f32)((f64)chainZ - (((f64)(chainZ - prev->pos.z)) * 0.5));

		prev->vel.x = (f32)(((f64)prev->vel.x * damping) + (f64)(midX - cur->pos.x));
		prev->vel.y = (f32)((((f64)prev->vel.y * damping) + (f64)(midY - cur->pos.y)) - 4.0);
		prev->vel.z = (f32)(((f64)prev->vel.z * damping) + (f64)(midZ - cur->pos.z));

		chainX = (f32)((f64)cur->pos.x + ((f64)prev->vel.x * spring));
		chainY = (f32)((f64)cur->pos.y + ((f64)prev->vel.y * spring));
		chainZ = (f32)((f64)cur->pos.z + ((f64)prev->vel.z * spring));

		prev->pos.x = chainX;
		prev->pos.y = chainY;
		prev->pos.z = chainZ;
	}

	points[0].vel.x = (f32)((f64)points[0].vel.x * damping);
	points[0].vel.y = (f32)(((f64)points[0].vel.y * damping) - 4.0);
	points[0].vel.z = (f32)((f64)points[0].vel.z * damping);
	points[0].pos.x += points[0].vel.x;
	points[0].pos.y += points[0].vel.y;
	points[0].pos.z += points[0].vel.z;

	for (i = 10; ; i--) {
		targetY = points[i].pos.y;
		ret = i;
		groundY = (f32)func_800F9F64_108F14((s16)(s32)points[i].pos.x, (s16)(s32)points[i].pos.z);
		if (!(groundY < targetY)) {
			if (i == 0) {
				ret = (s32)&D_80159320;
				D_80159320 &= 0x7FFFFFFF;
			}
			return ret;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80102FA4_111F54.s")
#endif

#ifdef NON_MATCHING
// CURRENT(8943)
void func_80103308_1122B8(VehicleInstance *arg0, VehicleInstance *arg1) {
	UnkF9230Func80102FA4Point *point;
	f32 midX;
	f32 midY;
	f32 midZ;
	f32 chainX;
	f32 chainY;
	f32 chainZ;
	f32 posX;
	f32 posY;
	f32 posZ;
	f64 damping;
	f64 spring;

	damping = D_80144AA0_153A50[0];
	midX = (f32)((f64)arg0->unk0 - ((f64)((f32)arg0->unk0 - D_801593F0[10].pos.x) * 0.5));
	midY = (f32)((f64)arg0->unk2 - ((f64)((f32)arg0->unk2 - D_801593F0[10].pos.y) * 0.5));
	midZ = (f32)((f64)arg0->unk4 - ((f64)((f32)arg0->unk4 - D_801593F0[10].pos.z) * 0.5));

	D_801593F0[11].vel.x = (f32)(((f64)D_801593F0[11].vel.x * damping) + (f64)(midX - D_801593F0[11].pos.x));
	D_801593F0[11].vel.y = (f32)((((f64)D_801593F0[11].vel.y * damping) + (f64)(midY - D_801593F0[11].pos.y)) - 4.0);
	D_801593F0[11].vel.z = (f32)(((f64)D_801593F0[11].vel.z * damping) + (f64)(midZ - D_801593F0[11].pos.z));

	D_801593F0[11].pos.x = (f32)arg0->unk0;
	D_801593F0[11].pos.y = (f32)(arg0->unk2 + 0x26);
	D_801593F0[11].pos.z = (f32)arg0->unk4;

	chainX = D_801594E0[0].pos.x;
	chainY = D_801594E0[0].pos.y;
	chainZ = D_801594E0[0].pos.z;
	spring = D_80144AA8_153A58[0];

	point = D_801594E0;
	while ((u32)point >= (u32)D_80159420) {
		posX = point->pos.x;
		posY = point->pos.y;
		posZ = point->pos.z;

		point--;

		midX = (f32)((f64)chainX - ((f64)(chainX - point->pos.x) * 0.5));
		midY = (f32)((f64)chainY - ((f64)(chainY - point->pos.y) * 0.5));
		midZ = (f32)((f64)chainZ - ((f64)(chainZ - point->pos.z) * 0.5));

		point->vel.x = (f32)(((f64)point->vel.x * damping) + (f64)(midX - posX));
		point->vel.y = (f32)((((f64)point->vel.y * damping) + (f64)(midY - posY)) - 4.0);
		point->vel.z = (f32)(((f64)point->vel.z * damping) + (f64)(midZ - posZ));

		chainX = (f32)((f64)posX + ((f64)point->vel.x * spring));
		point->pos.x = chainX;
		chainY = (f32)((f64)posY + ((f64)point->vel.y * spring));
		point->pos.y = chainY;
		chainZ = (f32)((f64)posZ + ((f64)point->vel.z * spring));
		point->pos.z = chainZ;
	}

	midX = (f32)((f64)D_801593F0[1].pos.x - ((f64)(D_801593F0[1].pos.x - (f32)arg1->unk0) * 0.5));
	midY = (f32)((f64)D_801593F0[1].pos.y - ((f64)(D_801593F0[1].pos.y - (f32)arg1->unk2) * 0.5));
	midZ = (f32)((f64)D_801593F0[1].pos.z - ((f64)(D_801593F0[1].pos.z - (f32)arg1->unk4) * 0.5));

	D_801593F0[0].vel.x = (f32)(((f64)D_801593F0[0].vel.x * damping) + (f64)(midX - D_801593F0[0].pos.x));
	D_801593F0[0].vel.y = (f32)((((f64)D_801593F0[0].vel.y * damping) + (f64)(midY - D_801593F0[0].pos.y)) - 4.0);
	D_801593F0[0].vel.z = (f32)(((f64)D_801593F0[0].vel.z * damping) + (f64)(midZ - D_801593F0[0].pos.z));

	D_801593F0[0].pos.x = (f32)arg1->unk0;
	D_801593F0[0].pos.y = (f32)(vehicleSpecs[arg1->unk1A].unk38 + arg1->unk2);
	D_801593F0[0].pos.z = (f32)arg1->unk4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80103308_1122B8.s")
#endif

// CURRENT(15449)
#ifdef NON_MATCHING
void func_80103760_112710(VehicleInstance *arg0, VehicleInstance *arg1) {
	VehicleSpec *spec0;
	VehicleSpec *spec1;
	UnkF9230Func80102FA4Point *point;
	f32 dist;
	f32 invDist;
	f32 ratio;
	f32 oneMinus;
	f32 temp;
	s16 dx;
	s16 dy;
	s16 dz;
	s16 x0;
	s16 y0;
	s16 z0;
	s16 x1;
	s16 y1;
	s16 z1;
	s16 i;
	u32 mass0;

	spec0 = &vehicleSpecs[arg0->unk1A];
	spec1 = func_800FAFB8_109F68(arg1);

	if (arg1->unkC == -2) {
		if (arg1->unk1A == 0x11) {
			if ((arg1->unk6 + 0x2000) & 0x4000) {
				D_80159188.z = arg1->unk38;
			} else {
				D_80159188.x = arg1->unk30;
			}
		} else {
			D_80159188.x = arg1->unk30;
			D_80159188.z = arg1->unk38;
		}
		D_80159188.y = arg1->unk34;
		arg1->unk20 |= 1;
	} else {
		func_800FB3C4_10A374(arg1, D_80159188.x);
		func_800FB3E8_10A398(arg1, D_80159188.y);
		func_800FB40C_10A3BC(arg1, D_80159188.z);
	}

	dx = arg0->unk0 - arg1->unk0;
	dy = arg0->unk2 - arg1->unk2;
	dz = arg0->unk4 - arg1->unk4;

	dist = (f32)(s32)sqrtf((f32)((dx * dx) + (dy * dy) + (dz * dz)));
	mass0 = spec0->unk32;
	invDist = D_80158E60 / dist;
	ratio = (f32)mass0 / (f32)(mass0 + spec1->unk32);
	oneMinus = 1.0f - ratio;

	x0 = (s16)(s32)((f32)arg0->unk0 - ((f32)dx * oneMinus));
	y0 = (s16)(s32)((f32)arg0->unk2 - ((f32)dy * oneMinus));
	z0 = (s16)(s32)((f32)arg0->unk4 - ((f32)dz * oneMinus));

	if (D_80158E60 <= dist) {
		if ((D_80158E60 * 2.0f) <= dist) {
			func_800FDE00_10CDB0();
			return;
		}

		dx = arg0->unk0 - x0;
		dy = arg0->unk2 - y0;
		dz = arg0->unk4 - z0;

		x1 = (s16)(s32)((f32)dx * invDist);
		y1 = (s16)(s32)((f32)dy * invDist);
		z1 = (s16)(s32)((f32)dz * invDist);

		func_80102D00_111CB0(
			arg0,
			(f32)((f64)((x0 + x1) - arg0->unk0) * D_80144AB0_153A60[0]),
			(f32)((f64)((y0 + y1) - arg0->unk2) * D_80144AB0_153A60[0]),
			(f32)((f64)((z0 + z1) - arg0->unk4) * D_80144AB0_153A60[0]));

		dx = arg1->unk0 - x0;
		dy = arg1->unk2 - y0;
		dz = arg1->unk4 - z0;

		x1 = (s16)(s32)((f32)dx * invDist);
		y1 = (s16)(s32)((f32)dy * invDist);
		z1 = (s16)(s32)((f32)dz * invDist);

		dx = (x0 + x1) - arg1->unk0;
		dy = (y0 + y1) - arg1->unk2;
		dz = (z0 + z1) - arg1->unk4;

		if (arg1->unk1A == 0x11) {
			dy = 0;
			if ((arg1->unk6 + 0x2000) & 0x4000) {
				dx = 0;
			} else {
				dz = 0;
			}
		}

		func_80102D00_111CB0(arg1, (f32)dx, (f32)dy, (f32)dz);

		arg1->unk30 = (f32)((f64)arg1->unk30 * D_80144AB8_153A68[0]);
		arg1->unk34 = (f32)((f64)arg1->unk34 * D_80144AB8_153A68[0]);
		arg1->unk38 = (f32)((f64)arg1->unk38 * D_80144AB8_153A68[0]);
	}

	i = 2;
	do {
		func_80103308_1122B8(arg0, arg1);
	} while (i-- != 0);

	point = &D_801593F0[11];
	i = 0xB;
	do {
		temp = (f32)func_800F9F64_108F14((s16)(s32)point->pos.x, (s16)(s32)point->pos.z) + 15.0f;
		if (point->pos.y < temp) {
			point->pos.y = temp;
		}
		point--;
	} while (i-- != 0);

	if (arg1->unk2 >= arg0->unk2 + 0x78) {
		func_800FDE00_10CDB0();
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80103760_112710.s")
#endif

void func_80103D18_112CC8(VehicleInstance *arg0, VehicleInstance *arg1)
{
  func_80103760_112710(arg0, D_80158F8C);
  arg1->unk12 = 0;
  arg0->unk20 |= 1;
  if ((arg1->unkC == -2) && (arg1->unk20 & 2))
  {
	arg1->unk2A = 0;
	arg1->unk28 = 0;
	arg1->unk26 = (-arg1->unkA) >> 1;
	arg1->unk24 = (-arg1->unk8) >> 1;
	arg1->unk22 *= D_80144AC0_153A70[0];
  }
}

void func_80103DD0_112D80(void) {
	s16 temp_v1;

	if (D_80052B34->unk1A != 0x13) {
		temp_v1 = D_80052B34->unk3C;
		if (temp_v1 > 0) {
			if (temp_v1 == 0x5DC) {
				func_8001A650_1B250(3);
				temp_v1 = D_80052B34->unk3C;
			}
			if (temp_v1 == 2) {
				func_8001A650_1B250(0xE);
				temp_v1 = D_80052B34->unk3C;
			}
			D_80052B34->unk3C = temp_v1 - 2;
		}
	}
}

// Do vehicle acceleration?
#ifdef NON_MATCHING
// CURRENT(10354)
void func_80103E54_112E04(VehicleInstance *arg0, OSContPad *arg1) {
	VehicleSpec *spec;
	f32 specSteer;
	f64 var_f2;
	s32 temp_t9;
	s32 var_a0;
	u16 var_v0;
	s16 sp2A;

	spec = &vehicleSpecs[arg0->unk1A];
	specSteer = spec->unk48;

	if (!(arg0->unk20 & 2) || (spec->unk4C & 0x20000000)) {
		if ((D_80159320 & 0x40000) && (arg0->unk1A != 0x13)) {
			D_80158E5C = 0.0f;
		} else {
			temp_t9 = arg1->stick_x;
			var_a0 = -temp_t9;
			if (var_a0 < temp_t9) {
				var_a0 = temp_t9;
			}
			D_80158E5C = (f32)(((f64)(f32)(var_a0 * temp_t9) / D_80144AC8_153A78[0]) * (f64)specSteer);
		}

		if (!(arg0->unk20 & 2)) {
			f32 temp_f0 = arg0->unk58;
			f32 var_f0;

			if (temp_f0 >= 0.0f) {
				var_f0 = temp_f0;
			} else {
				var_f0 = -temp_f0;
			}
			D_80158E5C /= sqrtf((f32)(((f64)var_f0 * D_80144AD0_153A80[0]) + 1.0));
		}

		D_80158E58 = 0.0f;
		func_80103DD0_112D80();
		temp_t9 = arg1->button & 0xC000;
		if ((temp_t9 == 0xC000) && (!(vehicleSpecs[arg0->unk1A].unk4C & 0x10000000) || (vehicleSpecs[arg0->unk1A].unk4C & 0x400100))) {
			if (!(D_80159320 & 0x04000000)) {
				f64 temp_f2 = (f64)arg0->unk58 * 2.0;

				if (temp_f2 >= 0.0) {
					sp2A = (s16)(u32)temp_f2;
				} else {
					sp2A = (s16)(u32)-temp_f2;
				}

				arg0->unk30 = (f32)((f64)arg0->unk30 + (((f64)(f32)coss(arg0->unkE) / 32768.0) * (f64)arg0->unk58));
				arg0->unk38 = (f32)((f64)arg0->unk38 + (((f64)(f32)sins(arg0->unkE) / 32768.0) * (f64)arg0->unk58));
				func_800FB430_10A3E0(arg0, 0.0f);
				arg0->unkE = arg0->unk6;
			}

			D_80159320 |= 0x04000000;
			D_80158C58[arg0 - vehicleInstances] = arg0->unk58;
			if ((arg0 == D_80052B34) && !(arg0->unk20 & 2) && (D_80222A70 != arg0->unk2) && (*(s16 *)((u8 *)spec + 0x66) != 0) && (func_800FB11C_10A0CC(arg0) > 5.0f)) {
				if (D_80159272 == 0) {
					D_80159272 = 1;
					func_80001144_1D44(*((u8 *)&sp2A + 1), 0x14, 5);
				}
			} else {
				D_80159272 = 0;
			}

			var_f2 = D_80144AD8_153A88[0];
		} else {
			var_a0 = D_8015924C;
			if ((var_a0 == 0) && ((f64)arg0->unk58 < D_80144AE0_153A90[0])) {
				var_a0 = -1;
			}
			if ((var_a0 == 0) && (D_80144AE8_153A98[0] < (f64)arg0->unk58)) {
				var_a0 = 1;
			}

			var_f2 = D_80144AF0_153AA0[0];
			if (temp_t9 == 0) {
				D_80159254 = 0;
				var_a0 = 0;
				D_8013FD88_14ED38 = 1;
			}

			D_80159320 &= ~0x04000000;
			var_v0 = arg1->button;
			if (var_v0 & 0x8000) {
				if (D_8013FD88_14ED38 == 1) {
					D_8015924C = var_a0;
					func_80001144_1D44(0x28U, 5, 3);
					var_f2 = D_80144AF8_153AA8[0];
					D_8013FD88_14ED38 = 0;
					var_a0 = D_8015924C;
				}

				if (((f64)arg0->unk58 < D_80144B00_153AB0[0]) || (var_a0 >= 0) || (++D_80159254 > D_80047724) || (D_80222A70 == arg0->unk2)) {
					D_80158E58 = (f32)((f64)D_80158E58 + 1.0);
				} else {
					arg0->unk58 = (f32)((f64)arg0->unk58 * 0.5);
				}

				var_v0 = arg1->button;
			}

			D_8015924C = var_a0;
			if (var_v0 & 0x4000) {
				D_8015924C = var_a0;
				if ((var_f2 < (f64)arg0->unk58) || (var_a0 <= 0) || (--D_80159254 < -D_80047724) || (D_80222A70 == arg0->unk2)) {
					if (D_8013FD88_14ED38 == 1) {
						func_80001144_1D44(0x14U, 5, 3);
						var_f2 = D_80144B08_153AB8[0];
						D_8013FD88_14ED38 = 0;
					}

					D_80158E58 = (f32)((f64)D_80158E58 - 1.0);
					if ((arg0 == D_80052B34) && !(arg0->unk20 & 2) && (D_80222A70 != arg0->unk2) && (*(s16 *)((u8 *)spec + 0x66) != 0) && ((f64)arg0->unk58 > 10.0)) {
						if (D_80159272 == 0) {
							D_80159272 = 1;
						}
					} else {
						D_80159272 = 0;
					}

					if (arg0->unk20 & 2) {
						if (arg0->unkA < 0xBB8) {
							if (var_f2 < (f64)arg0->unk58) {
								arg0->unk58 = (f32)((f64)arg0->unk58 * D_80144B10_153AC0[0]);
							}
						}
						D_80158E58 = 0.0f;
					} else {
						if (var_f2 < (f64)arg0->unk58) {
							arg0->unk58 = (f32)((f64)arg0->unk58 * D_80144B18_153AC8[0]);
						}
					}
				} else {
					arg0->unk58 = (f32)((f64)arg0->unk58 * 0.5);
					D_80159272 = 0;
				}
			}
		}

		if (D_80159272 != 0) {
			func_801371B8_146168((s32)arg0, 0x18B, arg0->unk0, arg0->unk2, arg0->unk4, -1.0f);
			var_f2 = D_80144B20_153AD0[0];
		}

		if ((arg0 == D_80052B34) && (D_80159272 != 0) && (!(currentControllerStates[0].button & 0x4000) || ((f64)arg0->unk58 <= var_f2)) && !(D_80159320 & 0x04000000)) {
			D_80159272 = 0;
		}

		if (arg0->unk3C <= 0) {
			D_80158E58 = 0.0f;
			if (*(s16 *)((u8 *)spec + 0x66) == 0) {
				D_80158E5C = 0.0f;
			}
			arg0->unk3C = 0;
		}

		D_80158E58 /= 16.0f;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80103E54_112E04.s")
#endif

// CURRENT(5016)
#ifdef NON_MATCHING
void func_801047C8_113778(VehicleInstance *arg0, OSContPad *arg1) {
	VehicleSpec *spec;
	s32 pad0;
	s32 pad1;
	WeaponSpecEntry *tableEntry;
	f32 maxSteer;
	f32 sp2C;
	s16 sp2A;
	s16 trig;
	s32 specFlags;
	s32 stickX;
	s32 absStickX;
	s32 tempS8;
	s32 negInput;

	spec = &vehicleSpecs[arg0->unk1A];
	tableEntry = &D_80140768_14F718[spec->unk55];
	maxSteer = (f32)spec->unk48;

	D_80158E5C = 0.0f;
	D_80158E58 = 0.0f;
	arg0->unk28 = 0;
	arg0->unk2A = 0;

	func_80103DD0_112D80();

	if (D_801591AC == 0 && arg0->unk3C != 0) {
		specFlags = spec->unk4C;
		if (!(specFlags & 0x10000) || !(D_80159320 & 0x40000)) {
			if (arg0->unk1A == 0 || (specFlags & 0x20000000)) {
				func_8011DE60_12CE10(1);
			}

			sp2A = arg0->unk2 - func_800F9FAC_108F5C(arg0->unk0, arg0->unk4);

			if (arg0->unk1A == 0 || (spec->unk4C & 0x20000000)) {
				func_8011DE60_12CE10(0);
			}

			if (D_80159304 == 0 || currentLevel != 3 || arg0->unk1A != 0xD) {
				u16 buttons = currentControllerStates[0].button;
				if (buttons & 0x8000) {
					func_80001144_1D44(0x1E, 5, 3);
					arg0->unk20 |= 2;
					arg0->unk34 += (f32)*(s16 *)((u8 *)tableEntry + 6);
					buttons = currentControllerStates[0].button;
				}

				if (buttons & 0x4000) {
					func_80001144_1D44(0x14, 5, 3);
					arg0->unk34 -= (f32)*(s16 *)((u8 *)tableEntry + 6);
				}
			}

			arg0->unk34 = (f32)((f64)arg0->unk34 * D_80144B28_153AD8[0]);

			if (sp2A >= 0x97 || (currentLevel == 3 && arg0->unk1A == 0xD)) {
				arg0->unk2A = (s16)(arg1->stick_y * 80);
				arg0->unk28 = (s16)(arg1->stick_x * -40);
			}

			stickX = arg1->stick_x;
			absStickX = -stickX;
			if (absStickX < stickX) {
				absStickX = stickX;
			}

			tempS8 = -currentControllerStates[1].stick_x;
			D_80158E5C = (f32)(((f64)(f32)(absStickX * stickX) / D_80144B30_153AE0[0]) * (f64)maxSteer);

			if (currentControllerStates[1].stick_x >= 0) {
				tempS8 = currentControllerStates[1].stick_x;
			}

			if (tempS8 >= 0xB) {
				negInput = -currentControllerStates[1].stick_x;
				arg0->unk28 += (s16)((((negInput << 4) - negInput) << 2) - negInput);
			}

			specFlags = arg0->unk20 & 2;
			if (specFlags == 0 && arg0->unk34 < 0.0f) {
				arg0->unk34 = 0.0f;
				specFlags = arg0->unk20 & 2;
			}

			if (specFlags != 0 && !(currentControllerStates[0].button & 0x10)) {
				trig = sins((u16)arg0->unkA);
				sp2C = (f32)((((f64)(f32)trig / 32768.0) * (f64)((f32)*((u8 *)spec + 0x3E) * D_801591F0)) * D_80144B38_153AE8[0]);

				trig = coss((u16)arg0->unk6);
				func_801027E8_111798(arg0,
					(f32)(((f64)(f32)trig / 32768.0) * (f64)sp2C),
					0.0f,
					(f32)(((f64)(f32)sins((u16)arg0->unk6) / 32768.0) * (f64)sp2C));

				trig = sins((u16)arg0->unk8);
				sp2C = (f32)((((f64)(f32)trig / 32768.0) * (f64)((f32)*((u8 *)spec + 0x3E) * D_801591F0)) * D_80144B40_153AF0[0]);

				trig = sins((u16)arg0->unk6);
				func_801027E8_111798(arg0,
					(f32)(((f64)(f32)trig / 32768.0) * (f64)sp2C),
					0.0f,
					-(f32)(((f64)(f32)coss((u16)arg0->unk6) / 32768.0) * (f64)sp2C));
			}

			if (currentControllerStates[0].button & 0x4000) {
				func_800FB430_10A3E0(D_80052B34, (f32)((f64)D_80052B34->unk58 * D_80144B48_153AF8[0]));
				D_80052B34->unk30 = (f32)((f64)D_80052B34->unk30 * D_80144B50_153B00[0]);
				D_80052B34->unk34 = (f32)((f64)D_80052B34->unk34 * D_80144B50_153B00[0]);
				D_80052B34->unk38 = (f32)((f64)D_80052B34->unk38 * D_80144B50_153B00[0]);
			}

			if (arg0->unk3C <= 0) {
				if (*(s16 *)((u8 *)&vehicleSpecs[D_80052B34->unk1A] + 0x66) == 0) {
					D_80158E5C = 0.0f;
				}

				D_80158E58 = 0.0f;
				arg0->unk3C = 0;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_801047C8_113778.s")
#endif

// CURRENT(3252)
#ifdef NON_MATCHING
void func_80104E00_113DB0(VehicleInstance *arg0, OSContPad *arg1) {
	VehicleSpec *spec;
	f32 maxSteer;
	f32 sp2C;
	s16 trig;
	s8 stickX;
	s8 stickY;
	u8 temp;

	spec = &vehicleSpecs[arg0->unk1A];
	maxSteer = (f32)spec->unk48;

	func_800F9F00_108EB0(arg0->unk0, arg0->unk4);

	D_80158E5C = 0.0f;
	D_80158E58 = 0.0f;
	arg0->unk28 = 0;
	arg0->unk2A = 0;

	func_80103DD0_112D80();

	if (D_801591AC == 0 && arg0->unk3C != 0 && (!(spec->unk4C & 0x10000) || !(D_80159320 & 0x40000))) {
		if (currentControllerStates[0].button & 0x8000) {
			arg0->unk34 += 20.0f;
		}

		if (currentControllerStates[0].button & 0x4000) {
			arg0->unk34 -= 20.0f;
		}

		if (arg1->button & 0x10) {
			arg0->unk28 = (s16)(arg1->stick_x * -80);
		} else {
			arg0->unk34 = (f32)((f64)arg0->unk34 - ((f64)arg0->unk34 * D_80144B58_153B08[0]));
			arg0->unk2A = (s16)(arg1->stick_y * 80);
			arg0->unk28 = (s16)(arg1->stick_x * -40);

			stickX = arg1->stick_x;
			if (-stickX < stickX) {
				stickX = arg1->stick_x;
			} else {
				stickX = -arg1->stick_x;
			}

			D_80158E5C = (f32)(((f64)(f32)(stickX * arg1->stick_x) / D_80144B60_153B10[0]) * (f64)maxSteer);
		}

		if (!(arg0->unk20 & 2) && arg0->unk34 < 0.0f) {
			arg0->unk34 = 0.0f;
		}

		trig = sins((u16)arg0->unkA);
		temp = ((u8 *)spec)[0x3E];
		sp2C = (f32)((((f64)(f32)trig / 32768.0) * (f64)((f32)temp * D_801591F0)) / 12.0);

		trig = coss((u16)arg0->unk6);
		func_80102D00_111CB0(arg0, (f32)(((f64)(f32)trig / 32768.0) * (f64)sp2C), 0.0f,
							(f32)(((f64)(f32)sins((u16)arg0->unk6) / 32768.0) * (f64)sp2C));

		trig = sins((u16)arg0->unk8);
		temp = ((u8 *)spec)[0x3E];
		sp2C = (f32)((((f64)(f32)trig / 32768.0) * (f64)((f32)temp * D_801591F0)) / 12.0);

		trig = sins((u16)arg0->unk6);
		func_80102D00_111CB0(arg0, (f32)(((f64)(f32)trig / 32768.0) * (f64)sp2C), 0.0f,
							-(f32)(((f64)(f32)coss((u16)arg0->unk6) / 32768.0) * (f64)sp2C));

		if (currentControllerStates[0].button & 0x4000) {
			func_800FB430_10A3E0(D_80052B34, (f32)((f64)D_80052B34->unk58 * D_80144B68_153B18[0]));
			D_80052B34->unk30 = (f32)((f64)D_80052B34->unk30 * D_80144B70_153B20[0]);
			D_80052B34->unk34 = (f32)((f64)D_80052B34->unk34 * D_80144B70_153B20[0]);
			D_80052B34->unk38 = (f32)((f64)D_80052B34->unk38 * D_80144B70_153B20[0]);
		}

		if (arg0->unk3C <= 0) {
			if (*(s16 *)((u8 *)&vehicleSpecs[D_80052B34->unk1A] + 0x66) == 0) {
				D_80158E5C = 0.0f;
			}

			D_80158E58 = 0.0f;
				arg0->unk3C = 0;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80104E00_113DB0.s")
#endif

// The button press check is Z to shoot the gun.
// Skiiping this call stops adam responding to input
#ifdef NON_MATCHING
// CURRENT(198379)
void func_801052E8_114298(Unk80052B2C *arg0, OSContPad *arg1) {
	VehicleInstance *vehicle;
	VehicleSpec *spec;
	s32 specMode;
	u16 buttons;

	vehicle = arg0->unk38;
	spec = &vehicleSpecs[vehicle->unk1A];
	specMode = (s32) spec->unk4C;
	buttons = arg1->button;

	if ((D_801591AC == 0) && (D_8015930E == 0) && (D_801493E2 != 0)) {
		D_80158E58 = 0.0f;
		D_80158E5C = 0.0f;

		if ((specMode < 0) && ((vehicle->unk20 & 2) == 0) && ((buttons & 0x8000) != 0) && ((D_80159320 << 13) >= 0)) {
			vehicle->unk20 |= 2;
			vehicle->unk2E++;
			func_800FB3E8_10A398(vehicle, 1.0f);
		}
	}

	if (specMode == 0) {
		if ((vehicle->unk1A == 5) && ((buttons & 0x2000) != 0)) {
			D_801409F4_14F9A4 = 0;
			D_8015927C = 1;
		}
	} else if ((specMode == 2) || (specMode == 3) || (specMode == 4)) {
		return;
	}

	if ((vehicle->unk1A == 0xD) && (D_80050AD4 == 0) && ((buttons & 0x2000) != 0)) {
		D_801591AC = 2;
		D_80159316 = D_80149440;
		return;
	}

	if ((vehicle->unk1A == 0xE) && ((buttons & 0x2000) != 0)) {
		if (vehicle->unk1E == 0) {
			vehicle->unk1E = 0x14;
		}
		return;
	}

	if ((currentLevel == 1) && (vehicle->unk1A == 8) && (D_80159260 == 0) && (D_80050AD4 == 0)) {
		D_801591AC = 2;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_801052E8_114298.s")
#endif

// CURRENT(17202)
#ifdef NON_MATCHING
void func_80106628_1155D8(VehicleInstance *arg0) {
	VehicleSpec *spec;
	s16 gridAngleX;
	s16 gridAngleY;
	s16 mapX;
	s16 mapY;
	s16 absDeltaX;
	s16 absDeltaY;
	s16 tileFlipX;
	s16 tileFlipY;
	s16 tempS16;
	s16 steerDelta;
	s16 absSteerDelta;
	s32 steerStep;
	s8 gridX;
	s8 gridY;
	s8 stepX;
	s8 stepY;
	u8 tileType;
	u8 tileFlags;
	u8 nextMoveMask;
	u8 moveMask;

	spec = &vehicleSpecs[arg0->unk1A];
	arg0->unk20 |= 1;
	func_80014508_15108(arg0, 1, 1);

	gridAngleX = arg0->unk0 - arg0->unk40;
	if (-gridAngleX < gridAngleX) {
		absDeltaX = gridAngleX;
	} else {
		absDeltaX = -gridAngleX;
	}

	gridAngleY = arg0->unk4 - arg0->unk42;
	if (-gridAngleY < gridAngleY) {
		absDeltaY = gridAngleY;
	} else {
		absDeltaY = -gridAngleY;
	}

	if ((absDeltaX < 0x61) && (absDeltaY < 0x61)) {
		gridX = arg0->unk47;
		gridY = arg0->unk48;

		tempS16 = func_800B325C_C220C(gridX, gridY, 0xFFFF);
		tileType = (tempS16 & 0x7C0) >> 6;
		tileFlipX = ((tempS16 & 0x4000) == 0) ^ ((gridX & 1) == 0);
		tileFlipY = ((tempS16 & 0x2000) == 0) ^ ((gridY & 1) == 0);
		tileFlags = D_801407F4_14F7A4[tileType * 6 + 4];
		nextMoveMask = 0;

		if (tileFlipX != 0) {
			if (tileFlags & 8) {
				nextMoveMask = 4;
			}
			if (tileFlags & 4) {
				nextMoveMask = (nextMoveMask | 8) & 0xFF;
			}
		} else {
			nextMoveMask = tileFlags & 0xC;
			moveMask = tileFlags;
		}

		if (tileFlipY != 0) {
			if (tileFlags & 1) {
				nextMoveMask = (nextMoveMask | 2) & 0xFF;
			}
			if (tileFlags & 2) {
				nextMoveMask = (nextMoveMask | 1) & 0xFF;
			}
		} else {
			nextMoveMask = (nextMoveMask | (tileFlags & 3)) & 0xFF;
		}

		moveMask = nextMoveMask;
		if (nextMoveMask & arg0->unk44) {
			if ((func_800038E0_44E0(nextMoveMask, tileFlipX, nextMoveMask, tileFlipY) >= 0xC351) &&
				((tileType == 0xF) || (tileType == 0x12) || (tileType == 0x13))) {
				moveMask = arg0->unk44;
				if (moveMask & 3) {
					nextMoveMask &= 0xC;
				}
				if (moveMask & 0xC) {
					nextMoveMask &= 3;
				}
			} else {
				moveMask = tileType;
				nextMoveMask = arg0->unk44;
			}
		} else {
			moveMask = tileType;
			if (arg0->unk44 & 3) {
				nextMoveMask &= 0xC;
			} else {
				nextMoveMask &= 3;
			}
		}

		if (nextMoveMask == 0) {
			if (arg0->unk44 & 3) {
				nextMoveMask = (~arg0->unk44) & 3;
			} else {
				nextMoveMask = (~arg0->unk44) & 0xC;
			}
		}

		if ((nextMoveMask & 3) == 3) {
			if (func_800038E0_44E0(nextMoveMask, moveMask) >= 0x8000) {
				nextMoveMask = 1;
			} else {
				nextMoveMask = 2;
			}
		} else if ((nextMoveMask & 0xC) == 0xC) {
			if (func_800038E0_44E0(nextMoveMask, moveMask) >= 0x8000) {
				nextMoveMask = 8;
			} else {
				nextMoveMask = 4;
			}
		}

		if (moveMask == 0xB) {
			if (nextMoveMask & 4) {
				if ((func_800B325C_C220C(gridX, gridY, 0x3C0) >> 6) == 0xB) {
					do {
						gridX--;
					} while ((func_800B325C_C220C(gridX, gridY, 0x3C0) >> 6) == 0xB);
				}
				arg0->unk46 = (arg0->unk46 & 0xFF3F) | 0x40;
				if ((gridX + 2) < (s8)arg0->unk47) {
					gridX++;
				}
			} else {
				if ((func_800B325C_C220C(gridX, gridY, 0x3C0) >> 6) == 0xB) {
					do {
						gridX++;
					} while ((func_800B325C_C220C(gridX, gridY, 0x3C0) >> 6) == 0xB);
				}
				arg0->unk46 = (arg0->unk46 & 0xFF3F) | 0x40;
				if ((s8)arg0->unk47 < (gridX - 2)) {
					gridX--;
				}
			}
		} else if (moveMask == 0xA) {
			if (nextMoveMask & 1) {
				if ((func_800B325C_C220C(gridX, gridY, 0x3C0) >> 6) == 0xA) {
					do {
						gridY--;
					} while ((func_800B325C_C220C(gridX, gridY, 0x3C0) >> 6) == 0xA);
				}
				arg0->unk46 = (arg0->unk46 & 0xFF3F) | 0x40;
				if ((gridY + 2) < (s8)arg0->unk48) {
					gridY++;
				}
			} else {
				if ((func_800B325C_C220C(gridX, gridY, 0x3C0) >> 6) == 0xA) {
					do {
						gridY++;
					} while ((func_800B325C_C220C(gridX, gridY, 0x3C0) >> 6) == 0xA);
				}
				arg0->unk46 = (arg0->unk46 & 0xFF3F) | 0x40;
				if ((s8)arg0->unk48 < (gridY - 2)) {
					gridY--;
				}
			}
		} else if (moveMask == 0xE) {
			switch (arg0->unk44) {
			case 1:
				stepX = -1;
				stepY = (tileFlipX != 0) ? -1 : 1;
				break;
			case 2:
				stepX = 1;
				stepY = (tileFlipX != 0) ? -1 : 1;
				break;
			case 8:
				stepY = 1;
				stepX = (tileFlipY != 0) ? -1 : 1;
				break;
			case 4:
				stepY = -1;
				stepX = (tileFlipY != 0) ? -1 : 1;
				break;
			}

			if ((func_800B325C_C220C(gridX, gridY, 0x3C0) >> 6) == 0xE) {
				do {
					gridX += stepY;
					gridY += stepX;
				} while ((func_800B325C_C220C(gridX, gridY, 0x3C0) >> 6) == 0xE);
			}

			arg0->unk46 = (arg0->unk46 & 0xFF3F) | 0x40;
		} else {
			if (nextMoveMask == 1) {
				gridY--;
			}
			if (nextMoveMask == 8) {
				gridX++;
			}
			if (nextMoveMask == 2) {
				gridY++;
			}
			if (nextMoveMask == 4) {
				gridX--;
			}

			arg0->unk46 = (arg0->unk46 & 0xFF3F) | 0x80;
		}

		func_800FC7E0_10B790(gridX, gridY, &mapX, &mapY);

		if (nextMoveMask == 1) {
			mapX += 0x10;
		}
		if (nextMoveMask == 2) {
			mapX -= 0x10;
		}
		if (nextMoveMask == 8) {
			mapY += 0x10;
		}
		if (nextMoveMask == 4) {
			mapY -= 0x10;
		}

		if (arg0->unk44 == 1) {
			mapX += 0x10;
		}
		if (arg0->unk44 == 2) {
			mapX -= 0x10;
		}
		if (arg0->unk44 == 8) {
			mapY += 0x10;
		}
		if (arg0->unk44 == 4) {
			mapY -= 0x10;
		}

		arg0->unk47 = gridX;
		arg0->unk48 = gridY;
		arg0->unk44 = nextMoveMask;
		arg0->unk40 = (gridX << 8) + mapX;
		arg0->unk42 = (gridY << 8) + mapY;
	}

	gridAngleX = arg0->unk40 - arg0->unk0;
	gridAngleY = arg0->unk42 - arg0->unk4;
	tempS16 = func_80003824_4424((f32)gridAngleX, (f32)gridAngleY);
	steerDelta = func_800F9C50_108C00(tempS16, arg0->unk6);
	absSteerDelta = (steerDelta < 0) ? -steerDelta : steerDelta;

	if ((arg0->unk46 >> 14) == 1) {
		arg0->unk45 = 0x28;
	} else {
		arg0->unk45 = 0x1E;
	}

	if (absSteerDelta >= 0x3556) {
		steerStep = 0x5B0;
		arg0->unk45 = 5;
	} else if (absSteerDelta < 0x11C8) {
		steerStep = 0x16C;
	} else if (absSteerDelta < 0x238F) {
		steerStep = 0x2D8;
		arg0->unk45 = 0x14;
	} else {
		steerStep = 0x444;
		arg0->unk45 = 0xA;
	}

	if (absSteerDelta < 0x222) {
		arg0->unk6 = tempS16;
	}

	if (func_800F9C50_108C00(tempS16, arg0->unk6) > 0) {
		arg0->unk6 += steerStep;
	}

	if (func_800F9C50_108C00(tempS16, arg0->unk6) < 0) {
		arg0->unk6 -= steerStep;
	}

	steerDelta = ((*(s16 *)((u8 *)spec + 0x40)) * arg0->unk45) / 100;
	if (arg0->unk20 & 0x800) {
		steerDelta = (f64)steerDelta * 0.5;
	}

	if (steerDelta < arg0->unk12) {
		func_800FB3A0_10A350(arg0, -1.0f);
	}

	if (arg0->unk12 < steerDelta) {
		func_800FB3A0_10A350(arg0, 2.0f);
		if (arg0->unk45 >= 0x3D) {
			func_800FB3A0_10A350(arg0, 1.0f);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80106628_1155D8.s")
#endif

// https://decomp.me/scratch/kngxs
// CURRENT(5064)
#ifdef NON_MATCHING
void func_80107184_116134(VehicleInstance *arg0, s32 arg1, s32 arg2, f32 arg3)
{
	s32 temp_v0;
  f32 sp48;
  s32 pad;
  f32 sp40;
  f32 temp_f0;
	s16 angle;
	s32 sp44;
  angle = (func_80003824_4424((f32) arg1, (f32) arg2) - arg0->unk6);
  sp48 = (((f32) sins(angle) / 32768.0) / ((f32) coss(angle) / 32768.0));
  sp44 = ((f32) vehicleSpecs[arg0->unk1A].unk36) / ((f32) vehicleSpecs[arg0->unk1A].unk34);
  sp40 = (((((f32) coss(arg0->unk10) / 32768.0) * ((f32) coss(arg0->unkE) / 32768.0)) * arg0->unk12) + arg0->unk30);
  temp_v0 = func_800F9C50_108C00(
	  func_80003824_4424(
		  sp40,
		  (((((f32) coss(arg0->unk10) / 32768.0) * ((((f32) sins(arg0->unkE))) / 32768.0)) * arg0->unk12) + arg0->unk38)), arg0->unk6);
  if (sp48 < 0.0f)
  {
	sp44 = -sp44;
  }
  if (sp44 < sp48)
  {
	temp_f0 = (temp_v0 * (arg3 * 0.5));
  }
  else
  {
	temp_f0 = -((f32) (temp_v0 * (arg3 * 0.5)));
  }
  arg0->unk22 = ((f32) arg0->unk22) + temp_f0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80107184_116134.s")
#endif

// CURRENT(3443)
#ifdef NON_MATCHING
s32 func_801073FC_1163AC(VehicleInstance *arg0, VehicleInstance *arg1, s32 arg2, s32 arg3) {
	VehicleSpec *sp6C;
	VehicleSpec *sp68;
	u16 sp66;
	u16 sp64;
	f32 sp60;
	f32 sp5C;
	f32 sp54;
	f32 sp50;
	f32 sp4C;
	s16 sp4A;
	f32 sp44;
	f32 sp40;
	s32 sp34;
	s32 sp30;
	s16 temp_s0;
	s16 temp_s1;

	sp6C = &vehicleSpecs[arg0->unk1A];
	sp68 = &vehicleSpecs[arg1->unk1A];

	switch (currentLevel) {
	case 1:
		if (arg0->unk1A == 0x11) {
			func_800FDD8C_10CD3C(arg0);
			return 0;
		}
		if (arg1->unk1A == 0x11) {
			func_800FDD8C_10CD3C(arg1);
			return 0;
		}
		break;
	case 4:
		if ((arg0->unk1A == 0x11) && (arg1->unk1A != 0x12) && (D_80159300 == 0)) {
			func_80122524_1314D4(arg1, (s16)(arg0->unk12 * 5), arg0->unk0, arg0->unk4);
		}
		break;
	}

	sp66 = func_800FB160_10A110(arg0);
	sp64 = func_800FB160_10A110(arg1);
	sp60 = func_800FB11C_10A0CC(arg0);
	sp5C = func_800FB11C_10A0CC(arg1);
	sp34 = sp66;
	temp_s0 = coss((u16)sp34);
	sp4A = temp_s0;
	sp30 = sp64;
	temp_s1 = coss((u16)sp30);
	sp54 = (f32)((((f64)(f32)temp_s0 / 32768.0) * (f64)sp60) - (((f64)(f32)temp_s1 / 32768.0) * (f64)sp5C));
	temp_s0 = sins((u16)sp34);
	sp4A = temp_s0;
	temp_s1 = sins((u16)sp30);
	sp50 = (f32)((((f64)(f32)temp_s0 / 32768.0) * (f64)sp60) - (((f64)(f32)temp_s1 / 32768.0) * (f64)sp5C));
	sp4C = sqrtf((sp54 * sp54) + (sp50 * sp50));
	sp40 = (f32)sp6C->unk32 / (f32)(sp6C->unk32 + sp68->unk32);
	if ((sp6C->unk16 == 1) || (sp68->unk16 == 1)) {
		sp4A = func_80003824_4424((f32)(arg1->unk0 - arg0->unk0), (f32)(arg1->unk4 - arg0->unk4));
		func_80102DDC_111D8C(arg0, sp4A, 0, (f32)-((f64)((1.0f - sp40) * sp4C) * 1.5));
		func_80102DDC_111D8C(arg1, sp4A, 0, (f32)((f64)(sp4C * sp40) * 1.5));
	} else {
		sp4A = func_80003824_4424(sp54, sp50);
		sp44 = (f32)((f64)sp4C * D_80144BA0_153B50[0]);
		func_80102DDC_111D8C(arg0, sp4A, 0, (f32)-((f64)((1.0f - sp40) * sp4C) * 1.5));
		func_80102DDC_111D8C(arg1, sp4A, 0, (f32)((f64)(sp4C * sp40) * 1.5));
		func_80107184_116134(arg0, arg2, arg3, (1.0f - sp40) * sp44 * 2.0f);
		func_80107184_116134(arg1, (arg0->unk0 + arg2) - arg1->unk0, (arg0->unk4 + arg3) - arg1->unk4, sp44 * sp40 * 2.0f);
	}
	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_801073FC_1163AC.s")
#endif

void func_80107890_116840(VehicleInstance *arg0) {
	VehicleSpec *specPtr;
	WeaponSpecEntry *tableEntry;
	s16 retVal;

	specPtr = &vehicleSpecs[arg0->unk1A];
	tableEntry = &D_80140768_14F718[specPtr->unk55];

	if (specPtr->unk4C & 0x20000000) {
		retVal = func_800FA018_108FC8(arg0, arg0->unk6, specPtr->unk36);
		if (tableEntry->unk8 < arg0->unkA - retVal) {
			func_80123E90_132E40(arg0, (s16)((arg0->unkA - retVal - tableEntry->unk8) >> 2));
		}
		if (currentLevel == LEVEL_SIBERIA && arg0->unk1A == 0xE) {
			func_800FDB58_10CB08(arg0);
		}
	}
}

// CURRENT(14938)
#ifdef NON_MATCHING
void func_80107970_116920(VehicleInstance *arg0, s32 arg1) {
	VehicleSpec *spec;
	s16 sp66;
	s16 sp64;
	s16 sp62;
	s16 sp60;
	s16 sp5E;
	f32 sp50;
	f32 sp4C;
	u16 sp4A;
	u16 sp48;
	s16 temp;
	s16 temp2;
	s16 maxAbs;
	s16 thresholdA;
	s16 thresholdB;
	s16 halfSize;

	spec = &vehicleSpecs[arg0->unk1A];
	sp5E = spec->unkC;

	if (D_80222A70 < arg1) {
		if (((s32)(spec->unk4C << 2) < 0) && (arg0->unk12 >= 0x15)) {
			func_801371B8_146168(arg0, 0xD2, arg0->unk0, arg0->unk2, arg0->unk4, -1.0f);
			func_800FB430_10A3E0(arg0, (f32)((f64)arg0->unk58 * D_80144BA8_153B58[0]));
		}
	}

	if ((arg0->unk2 < D_80222A70) && (arg0->unk2 >= arg1)) {
		func_800FB238_10A1E8(arg0, arg0->unk0, arg0->unk4, 0x64);
		arg0->unk2E = arg0->unk2 - arg1;
		arg0->unk34 = arg0->unk34 / 2.0f;

		if (vehicleSpecs[arg0->unk1A].unk4C & 0x100) {
			arg0->unk20 |= 2;
		}
		return;
	}

	if (arg1 >= arg0->unk2) {
		arg0->unk2 = arg1;
		arg0->unk2E = 0;
		arg0->unk20 &= ~2;
		arg0->unk34 = 0.0f;
		if (arg0->unk1A == 0) {
			D_80157A28 |= 0x4000;
		}
	}

	arg0->unk10 = 0;
	arg0->unk34 = 0.0f;
	if ((arg0->unk1A == 0) || !((s32)(vehicleSpecs[arg0->unk1A].unk4C << 2) < 0)) {
		func_8011DE60_12CE10(1);
		spec = &vehicleSpecs[arg0->unk1A];
	}

	sp66 = func_800FA018_108FC8(arg0, arg0->unk6, spec->unk36);
	sp64 = func_800FA018_108FC8(arg0, arg0->unk6 + 0x4000, vehicleSpecs[arg0->unk1A].unk34);

	if ((arg0->unk1A == 0) || !((s32)(vehicleSpecs[arg0->unk1A].unk4C << 2) < 0)) {
		func_8011DE60_12CE10(0);
	}

	sp62 = func_800F9C50_108C00(sp66, arg0->unkA);
	temp = func_800F9C50_108C00(sp64, arg0->unk8);

	maxAbs = -sp62;
	if (maxAbs < sp62) {
		maxAbs = sp62;
	}
	thresholdA = maxAbs - 0x1555;

	temp2 = -temp;
	if (temp2 < temp) {
		maxAbs = temp;
	} else {
		maxAbs = temp2;
	}
	thresholdB = maxAbs - 0x1555;

	if (thresholdA < 0) {
		thresholdA = 0;
	}
	if (thresholdB < 0) {
		thresholdB = 0;
	}

	if (arg0 == D_80052B34) {
		if (D_80052B34->unk1A != 0) {
			sp62 = thresholdA;
			sp60 = thresholdB;

			func_80123E90_132E40(arg0, (s16)(thresholdA / 240));
			func_80123E90_132E40(arg0, (s16)(thresholdB / 240));

			sp48 = func_800038E0_44E0();
			sp4A = func_800038E0_44E0();
			sp4C = func_800FB014_109FC4(arg0);
			sp50 = func_800FB098_10A048(arg0);

			halfSize = sp5E >> 1;
			func_800C541C_D43CC((s16)(((sp48 % sp5E) + arg0->unk0) - halfSize), arg1, (s16)(((sp4A % sp5E) + arg0->unk4) - halfSize), (s8)(s32)sp4C,
				0x4B, (s8)(s32)sp50, 0x5A, 0x64, (u8)(s32)(sqrtf((f32)(sp62 + sp60)) / 3.0f), 3, 0xB4, 0xA0, 0x3C);
		}

		D_80159320 &= ~0x800;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80107970_116920.s")
#endif

// CURRENT(1435)
#ifdef NON_MATCHING
void func_80107EBC_116E6C(VehicleInstance *arg0) {
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s16 pad4;
	s32 offset;
	s16 trig;
	f32 varX;
	f32 varY;
	f64 dOffset;

	offset = *((s8 *)&vehicleSpecs[arg0->unk1A] + 0x52) * 4;
	trig = coss((u16)arg0->unkE);
	varX = (f32)((((f64)(f32)coss((u16)arg0->unk10) / 32768.0) * ((f64)(f32)trig / 32768.0) * (f64)arg0->unk58) + (f64)arg0->unk4C + (f64)arg0->unk30);

	trig = sins((u16)arg0->unkE);
	varY = (f32)((((f64)(f32)coss((u16)arg0->unk10) / 32768.0) * ((f64)(f32)trig / 32768.0) * (f64)arg0->unk58) + (f64)arg0->unk54 + (f64)arg0->unk38);

	if (arg0->unk20 & 2) {
		func_800FB3E8_10A398(arg0, (f32)((((f64)(f32)sins((u16)arg0->unk10) / 32768.0) * (f64)arg0->unk58) + (f64)arg0->unk34));
	}

	if (offset != 0) {
		dOffset = (f64)offset;
		varX = (f32)((f64)varX - (((f64)(f32)coss((u16)(arg0->unk6 + arg0->unk22)) / 32768.0) * dOffset));
		varY = (f32)((f64)varY - (((f64)(f32)sins((u16)(arg0->unk6 + arg0->unk22)) / 32768.0) * dOffset));

		varX = (f32)((f64)varX + (((f64)(f32)coss((u16)arg0->unk6) / 32768.0) * dOffset));
		varY = (f32)((f64)varY + (((f64)(f32)sins((u16)arg0->unk6) / 32768.0) * dOffset));
	}

	func_800FB44C_10A3FC(arg0, varX);
	func_800FB484_10A434(arg0, varY);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80107EBC_116E6C.s")
#endif

s16 func_80108138_1170E8(s16 arg0, s16 arg1, s16 arg2) {
	s16 sp1E;
	s16 temp_v0;
	s32 var_a0;

	temp_v0 = func_8011E6FC_12D6AC(arg0, arg2, &sp1E);
	var_a0 = sp1E >= (arg1 - 0xA);
	if (var_a0) {
		var_a0 = (temp_v0 + 1) != 0;
	}
	return var_a0;
}

s16 func_801081AC_11715C(s16 arg0, s16 arg1) {
	s16 sp1E;
	return (s16) ((func_8011E6FC_12D6AC(arg0, arg1, &sp1E) + 1) != 0);
}

// CURRENT(14173)
#ifdef NON_MATCHING
void func_801081F0_1171A0(VehicleInstance *arg0, VehicleSpec *arg1) {
	f32 damping;
	WeaponSpecEntry *tableEntry;
	s16 sp44;
	s16 temp;
	s16 temp2;
	s16 temp3;
	s16 steer;
	s16 yawStep;
	s16 speedDelta;
	s32 tableIndex;
	s32 turn;
	s32 temp_v0;
	s32 absTurnLimit;

	damping = (f32) ((f64) arg1->unk45 * (1.0 / 256.0));
	tableEntry = &D_80140768_14F718[arg1->unk55];
	tableIndex = func_800FAE60_109E10(arg0);
	sp44 = func_800FAE60_109E10(arg0);

	if (func_800E60CC_F507C(2, sp44 & 0xFF) != 0) {
		func_800E5E3C_F4DEC(2, (u8) sp44);
	}

	coss((u16) arg0->unk10);
	sins((u16) arg0->unk10);

	if (!(arg1->unk4C & 0x20000)) {
		switch (D_80159268) {
			case 1:
				D_8015926C = 0xBB8;
				if ((arg0->unk10 > 0) && ((s16) (arg0->unk10 + 0x6A8) < 0)) {
					arg0->unk8 = (s16) (arg0->unk8 + 0x8000);
					arg0->unk10 = 0;
					arg0->unk6 = (s16) (arg0->unk6 + 0x8000);
					arg0->unkE = (s16) (arg0->unkE + 0x8000);
					arg0->unk28 = arg0->unk8;
					D_80159268 = 2;
				} else {
					arg0->unk10 = (s16) (arg0->unk10 + 0x6A8);
					arg0->unk28 = 0;
					arg0->unk2A = (s16) -arg0->unk10;
					func_800FB3E8_10A398(arg0, -25.0f);
					D_801593EC = 0;
				}
				break;

			case 2:
				arg0->unk10 = 0;
				arg0->unk2A = 0;
				temp = func_800065A4_71A4(0x7FFF, 0, (u16) (D_801593EC << 12));
				arg0->unk8 = temp;
				arg0->unk28 = temp;
				temp_v0 = func_80003824_4424((f32) (D_80052B34->unk0 - 0x3600), (f32) (D_80052B34->unk4 - 0x5000));
				turn = D_80052B34->unk6 - temp_v0;
				if (turn >= 0x1F5) {
					D_80052B34->unk6 -= 0x1F4;
					turn = D_80052B34->unk6 - temp_v0;
				}
				if (turn < -0x1F4) {
					D_80052B34->unk6 += 0x1F4;
				}

				D_801593EC++;
				if (D_801593EC >= 0x10) {
					D_80159268 = 4;
				}
				break;

			case 4:
				D_80159268 = 0;
				D_8015930E = 0;
				D_8015926C = 0x7D0;
				D_801593EC = 0;
				break;

			case 0:
				if (D_80159320 & 0x80000) {
					steer = arg0->unkA;
					if (steer < 0) {
						steer = -steer;
					}
					if (steer < 0x180) {
						D_80159230 = arg0->unkA;
					} else if (arg0->unkA > 0) {
						D_80159230 = -0x180;
					} else {
						D_80159230 = 0x180;
					}
				} else {
					absTurnLimit = 6;
					if ((currentLevel == 4) && (arg0->unk1A == 0xE)) {
						absTurnLimit = 0x10;
					}
					D_80159230 = (s16) (absTurnLimit * currentControllerStates[0].stick_y);
				}

				coss((u16) (-arg0->unkA - D_80159230));
				sins((u16) (-arg0->unkA - D_80159230));
				arg0->unk10 = (s16) (-arg0->unkA - D_80159230);
				arg0->unk2A = (s16) -arg0->unk10;

				if (arg0->unk2A < -0x2000) {
					arg0->unk2A = -0x2000;
				}
				if (arg0->unk2A > 0x4000) {
					arg0->unk2A = 0x4000;
				}

				steer = arg0->unk12;
				if (steer < 0) {
					steer = -steer;
				}

				temp = (s16) (tableEntry->unk2 - steer);
				if (temp > 0) {
					arg0->unk2A = (s16) (arg0->unk2A + (temp * 0x32));
				}

				if (arg0->unkA > 0) {
					func_800FB430_10A3E0(arg0, (f32) ((f64) (arg0->unk58 + 1.0f) * (1.0 + ((f64) arg0->unkA / D_80144BB0_153B60[0]))));
				} else {
					func_800FB430_10A3E0(arg0, (f32) ((f64) arg0->unk58 * (1.0 + ((f64) arg0->unkA / D_80144BB8_153B68[0]))));
				}
				break;
		}
	}

	arg0->unk26 = (s16) (arg0->unk26 + (func_800F9C50_108C00(arg0->unk2A, arg0->unkA) / arg1->unk44));
	temp = arg0->unk26;
	arg0->unk24 = (s16) (arg0->unk24 + (func_800F9C50_108C00(arg0->unk28, arg0->unk8) / arg1->unk44));
	temp2 = arg0->unk24;
	temp3 = arg0->unk22;
	yawStep = arg0->unk16;

	arg0->unkA = (s16) (arg0->unkA + temp);
	arg0->unk8 = (s16) (arg0->unk8 + temp2);
	arg0->unk6 = (s16) (arg0->unk6 + temp3 + yawStep);

	arg0->unk26 = (s16) (s32) ((f32) temp * damping);
	arg0->unk24 = (s16) (s32) ((f32) temp2 * damping);
	arg0->unk22 = (s16) (s32) ((f32) temp3 * damping);
	arg0->unk16 = (s16) (s32) ((f32) yawStep * damping);

	arg0->unk30 = (f32) ((f64) arg0->unk30 * D_80144BC0_153B70[0]);
	arg0->unk34 = (f32) ((f64) arg0->unk34 * D_80144BC0_153B70[0]);
	arg0->unk38 = (f32) ((f64) arg0->unk38 * D_80144BC0_153B70[0]);

	func_800FB430_10A3E0(arg0, arg0->unk58 * 1.0f);
	temp_v0 = func_800F9C50_108C00(arg0->unk6, arg0->unkE);
	speedDelta = (s16) (s32) ((arg0->unk58 - D_80158C58[tableIndex]) * (f32) arg1->unk44 * 30.0f);

	if (speedDelta >= 0x1556) {
		speedDelta = 0x1555;
	}
	if (speedDelta < -0x1555) {
		speedDelta = -0x1555;
	}

	temp = (s16) (temp_v0 / 5);
	arg0->unkE = (s16) (arg0->unkE + temp);

	if (!(arg1->unk4C & 0x20000)) {
		arg0->unk2A = (s16) (speedDelta * 4);
		if (arg0->unk12 >= 0) {
			arg0->unk28 = (s16) (-8 * temp);
		} else {
			arg0->unk28 = (s16) (8 * temp);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_801081F0_1171A0.s")
#endif

void func_8010895C_11790C(VehicleInstance *arg0)
{
	s32 sp24;
	s32 temp_a2;
	temp_a2 = D_80222A70 < arg0->unk2;
	if (vehicleSpecs[arg0->unk1A].unk4C & 0x200000)
	{
		arg0->unk26 = ((D_80144BC8_153B78[0] * (((func_800F9C50_108C00(-0x1333, arg0->unkA) / 20) + arg0->unk26))));
		arg0->unk34 = arg0->unk34 - D_80144BD0_153B80[0];
	}
	else
	{
		arg0->unk8 = (s16)(arg0->unk8 + arg0->unk24);
		arg0->unk34 = (f32)(arg0->unk34 - 3.0f);
	}
	arg0->unkA = (s16)(arg0->unkA + arg0->unk26);
	arg0->unk6 = (s16)((arg0->unk6 + arg0->unk22) + arg0->unk16);
	arg0->unk16 = arg0->unk16 >> 1;
	if (arg0->unk22 >= 0x7D1)
	{
		arg0->unk22 = 0x7D0;
	}
	if (arg0->unk22 < (-0x7D0))
	{
		arg0->unk22 = -0x7D0;
	}
	if (arg0->unk24 >= 0x7D1)
	{
		arg0->unk24 = 0x7D0;
	}
	if (arg0->unk24 < (-0x7D0))
	{
		arg0->unk24 = -0x7D0;
	}
	if (arg0->unk26 >= 0x7D1)
	{
		arg0->unk26 = 0x7D0;
	}
	if (arg0->unk26 < (-0x7D0))
	{
		arg0->unk26 = -0x7D0;
	}
	if ((arg0->unk2 < D_80222A70) && temp_a2)
	{
		func_800FB238_10A1E8(arg0, arg0->unk0, arg0->unk4, (s16)(vehicleSpecs[arg0->unk1A].unkC + arg0->unk12));
	}
}

#ifdef NON_MATCHING
void func_80108B48_117AF8(VehicleInstance *arg0) {
	s16 temp_a1;
	s16 temp_a3;
	s32 temp_v0;

	if (arg0->unkA > 0) {
		temp_v0 = -0x32;
	} else {
		temp_v0 = 0x32;
	}
	arg0->unk26 = (s16)(arg0->unk26 + temp_v0);
	temp_a1 = arg0->unk8;
	arg0->unk26 = (s16)(arg0->unk26 - (arg0->unk26 >> 4));
	if (temp_a1 > 0) {
		temp_v0 = -0x32;
	} else {
		temp_v0 = 0x32;
	}
	arg0->unk24 = (s16)(arg0->unk24 + temp_v0);
	arg0->unk22 = (s16)(arg0->unk22 + 0x28);
	arg0->unk24 = (s16)(arg0->unk24 - (arg0->unk24 >> 4));
	temp_a3 = arg0->unk16;
	arg0->unk8 = (s16)(temp_a1 + arg0->unk24);
	arg0->unkA = (s16)(arg0->unkA + arg0->unk26);
	arg0->unk6 = (s16)(arg0->unk6 + arg0->unk22 + temp_a3);
	arg0->unk16 = (s16)(temp_a3 >> 1);
	if (D_80052A8C & 1) {
		arg0->unk34 = arg0->unk34 - 1.0f;
	}
	if (arg0->unk22 >= 0x7D1) {
		arg0->unk22 = 0x7D0;
	}
	if (arg0->unk22 < -0x7D0) {
		arg0->unk22 = -0x7D0;
	}
	if (arg0->unk24 >= 0x7D1) {
		arg0->unk24 = 0x7D0;
	}
	if (arg0->unk24 < -0x7D0) {
		arg0->unk24 = -0x7D0;
	}
	if (arg0->unk26 >= 0x7D1) {
		arg0->unk26 = 0x7D0;
	}
	if (arg0->unk26 < -0x7D0) {
		arg0->unk26 = -0x7D0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80108B48_117AF8.s")
#endif

void func_80108CA8_117C58(VehicleInstance *arg0) {
	arg0->unk8 = arg0->unk8 + arg0->unk24;
	arg0->unkA = arg0->unkA + arg0->unk26;
	arg0->unk6 = arg0->unk6 + arg0->unk22 + arg0->unk16;
	arg0->unk16 = arg0->unk16 >> 1;
	arg0->unk34 = arg0->unk34 - 1.0f;
	if (arg0->unk22 >= 0x7D1) {
		arg0->unk22 = 0x7D0;
	}
	if (arg0->unk22 < -0x7D0) {
		arg0->unk22 = -0x7D0;
	}
	if (arg0->unk24 >= 0x7D1) {
		arg0->unk24 = 0x7D0;
	}
	if (arg0->unk24 < -0x7D0) {
		arg0->unk24 = -0x7D0;
	}
	if (arg0->unk26 >= 0x7D1) {
		arg0->unk26 = 0x7D0;
	}
	if (arg0->unk26 < -0x7D0) {
		arg0->unk26 = -0x7D0;
	}
}

#ifdef NON_MATCHING
// CURRENT(6145)
void func_80108D80_117D30(VehicleInstance *arg0, VehicleSpec *arg1) {
	f32 temp_f0;
	f32 temp_f2;
	f32 temp_f12;
	s32 padStack0;
	s32 padStack1;
	s16 sp2E;
	s16 temp_s0;
	s16 temp_s4;
	s16 temp_s5;
	s16 temp_s6;
	s32 temp_v0;
	s32 tableIndex;
	WeaponSpecEntry *tableEntry;

	temp_f0 = (f32)((f64)arg1->unk45 * 0.00390625);
	temp_f2 = (f32)((f64)arg1->unk47 / D_80144BD8_153B88[0]);
	tableIndex = func_800FAE60_109E10(arg0);

	if (arg0 == D_80052B34) {
		D_80159320 &= ~0x800;
	}

	arg0->unk26 = (s16)(arg0->unk26 + (func_800F9C50_108C00(arg0->unk2A, arg0->unkA) / arg1->unk44));
	arg0->unk24 = (s16)(arg0->unk24 + (func_800F9C50_108C00(arg0->unk28, arg0->unk8) / arg1->unk44));

	temp_s0 = arg0->unk26;
	arg0->unkA = (s16)(arg0->unkA + temp_s0);
	arg0->unk8 = (s16)(arg0->unk8 + arg0->unk24);
	arg0->unk6 = (s16)(arg0->unk6 + arg0->unk22 + arg0->unk16);

	arg0->unk26 = (s16)(s32)((f32)temp_s0 * temp_f0);
	arg0->unk24 = (s16)(s32)((f32)arg0->unk24 * temp_f0);
	arg0->unk22 = (s16)(s32)((f32)arg0->unk22 * temp_f0);
	arg0->unk16 = (s16)(s32)((f32)arg0->unk16 * temp_f0);

	arg0->unk30 = arg0->unk30 * temp_f2;
	arg0->unk34 = arg0->unk34 * temp_f2;
	arg0->unk38 = arg0->unk38 * temp_f2;

	if (arg0->unk1A != 0) {
		temp_s0 = (s16)(func_800F9C50_108C00(arg0->unk6, arg0->unkE) / 5);
		arg0->unkE = (s16)(arg0->unkE + temp_s0);
		temp_f12 = arg0->unk58;

		if ((s16)(s32)((f32)((temp_f12 - D_80158C58[tableIndex]) * (f32)arg1->unk44) * 30.0f) < 0x1556) {
			if (0.0f < temp_f12) {
			}
		} else {
			if (0.0f < temp_f12) {
			}
		}

		arg0->unk2A = 0;
		if (0.0f < temp_f12) {
			arg0->unk28 = (s16)(-temp_s0 * 3);
		} else {
			arg0->unk28 = 0;
		}
	}

	func_800FB430_10A3E0(arg0, arg0->unk58 * temp_f2);
	sp2E = coss((u16)arg0->unkE);
	temp_s5 = sins((u16)arg0->unkE);
	temp_v0 = func_800F9EC4_108E74(
		(s16)(s32)((((f64)(f32)sp2E / 32768.0) * (f64)arg0->unk12) + (f64)arg0->unk0),
		(s16)(s32)((((f64)(f32)temp_s5 / 32768.0) * (f64)arg0->unk12) + (f64)arg0->unk4));

	func_800FB3E8_10A398(arg0, (f32)(((temp_v0 + arg0->unk2E) - arg0->unk2) / 5));

	if ((D_80222A70 < arg0->unk2) || ((arg0->unk2 < D_80222A70) && !(arg1->unk4C & 0x100))) {
		func_800FB468_10A418(arg0, (f32)D_80222A70);
		arg0->unk10 = 0;
		arg0->unk34 = 0.0f;
	}

	if (arg0->unk2E < 0x14) {
		arg0->unk2E = 0x14;
	}

	temp_v0 = func_800F9EC4_108E74(arg0->unk0, arg0->unk4);

	if ((arg0->unk1A == 0) && (arg0->unk2 < D_80222A70)) {
		arg0->unk2E = (s16)(arg0->unk2E + 4);
	}

	if ((arg0->unk1A == 0) && ((D_80222A70 - 0x24) < temp_v0) &&
		(func_800FAA08_1099B8((s16)(s32)arg0->unk4C, (s16)(s32)arg0->unk54) < 0xA)) {
		arg0->unk2E = 1;
		arg0->unk20 = (u16)(arg0->unk20 & 0xFFFD);
	} else {
		arg0->unk20 = (u16)(arg0->unk20 | 2);
	}

	if (arg0 == D_80052B34) {
		temp_s6 = arg1->unk55;
		if (temp_s6 != 0) {
			tableEntry = &D_80140768_14F718[temp_s6];
			if ((f32)tableEntry->unk2 <= func_800FB11C_10A0CC(arg0)) {
				arg0->unk20 = (u16)(arg0->unk20 | 2);
				arg0->unk2E = (s16)(arg0->unk2E + 1);
				func_800FB3E8_10A398(arg0, 1.0f);
				if (arg1->unk62 == 5) {
					func_801371B8_146168(arg0, 4, arg0->unk0, arg0->unk2, arg0->unk4, -1.0f);
				}
			}
		}
	}
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80108D80_117D30.s")
#endif

// CURRENT(4000)
#ifdef NON_MATCHING
void func_80109370_118320(VehicleInstance *arg0, VehicleSpec *arg1) {
	s32 temp_v0;
	s32 temp_v1;
	s32 temp_v2;
	f32 temp_f4;
	f32 temp_f16;
	f32 temp_f18;
	f32 temp_f0;

	temp_v0 = arg1->unk4C;
	if ((s32)(temp_v0 << 14) < 0) {
		if (D_80222A70 < (s32)arg0->unk2 + (arg1->unk38 >> 1)) {
			func_801081F0_1171A0(arg0, arg1);
			return;
		}
		func_80123E90_132E40(arg0, 0x7FFF);
		temp_v0 = arg1->unk4C;
	}
	if ((s32)(temp_v0 << 2) < 0) {
		func_801081F0_1171A0(arg0, arg1);
		return;
	}

	func_800FB3E8_10A398(arg0, arg0->unk34);
	temp_f0 = 2.0f;
	if (arg0->unkA > 0) {
		temp_v1 = -0x3E8;
	} else {
		temp_v1 = 0x3E8;
	}
	arg0->unk26 = arg0->unk26 + temp_v1;
	if (arg0->unk8 > 0) {
		temp_v2 = -0x3E8;
	} else {
		temp_v2 = 0x3E8;
	}
	arg0->unk24 = arg0->unk24 + temp_v2;
	temp_f4 = arg0->unk30 / temp_f0;
	arg0->unk8 = arg0->unk8 + arg0->unk24;
	temp_f16 = arg0->unk34 - 6.0f;
	temp_f18 = arg0->unk38 / temp_f0;
	arg0->unk30 = temp_f4;
	arg0->unk34 = temp_f16;
	arg0->unk38 = temp_f18;
	arg0->unk6 = arg0->unk6 + arg0->unk22 + arg0->unk16;
	arg0->unkA = arg0->unkA + arg0->unk26;
	arg0->unk16 = arg0->unk12 >> 1;
	func_800FB430_10A3E0(arg0, (f32)(arg0->unk24 >> 1));
	if (arg0->unk34 > 20.0f) {
		arg0->unk34 = 20.0f;
	}
	if (!(arg1->unk4C & 0x100)) {
		if (D_80222A70 < (s32)(arg0->unk50 + arg0->unk34)) {
			arg0->unk20 &= ~VEHICLE_FLAG_AIRBORNE;
			func_800FB468_10A418(arg0, (f32)D_80222A70);
			arg0->unk34 = 0.0f;
		}
	}
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80109370_118320.s")
#endif

#ifdef NON_MATCHING
// CURRENT(3725)
void func_801095BC_11856C(VehicleInstance *vehicle) {
	s32 sp38;
	f32 sp30;
	s16 sp2A;
	s32 sp20;
	f32 var_f12;
	f32 var_f2;
	f64 temp_f0;
	f64 var_f0;
	s16 temp_a1;
	s32 var_v0;
	s32 var_v1;
	s32 var_v1_2;
	u8 temp_v1;
	VehicleSpec *spec;

	temp_v1 = vehicle->unk1A;
	spec = &vehicleSpecs[temp_v1];
	sp38 = spec->unk46 << 8;
	sp30 = (f32)((((s32)spec->unk48 << 4) - spec->unk48) << 4);
	if ((temp_v1 != 0) || !(vehicle->unk20 & 0x800)) {
		if (!(vehicle->unk20 & 4)) {
			var_v1 = -vehicle->unk2A;
			if (var_v1 < vehicle->unk2A) {
				var_v1 = vehicle->unk2A;
			}
			if (var_v1 >= 0x961) {
				sp2A = sins(vehicle->unk2A & 0xFFFF);
				func_80102DDC_111D8C(vehicle, vehicle->unk6, 0,
					(f32)((((f64)(f32)coss((u16)sp38) / 32768.0) * (((f64)(f32)sp2A / 32768.0) * 2.5)) *
						  (f64)D_8015922C->unk4));
			}

			temp_a1 = vehicle->unk28;
			var_v1_2 = -temp_a1;
			if (var_v1_2 < temp_a1) {
				var_v1_2 = temp_a1;
			}
			if (var_v1_2 >= 0x961) {
				sp20 = sp38;
				sp2A = sins(temp_a1 & 0xFFFF);
				func_80102DDC_111D8C(vehicle, (s16)(vehicle->unk6 - 0x4000), 0,
					(f32)((((f64)(f32)coss((u16)sp20) / 32768.0) * (((f64)(f32)sp2A / 32768.0) * 2.5)) *
						  (f64)D_8015922C->unk4));
			}

			var_f2 = (f32)((f64)vehicle->unk58 / D_80144BE0_153B90[0]);
			var_f0 = (f64)var_f2;
			if (D_80144BE8_153B98[0] < var_f0) {
				var_f2 = D_80144BF0_153BA0[0];
				var_f0 = (f64)var_f2;
			}
			if (var_f0 < D_80144BF8_153BA8[0]) {
				var_f2 = D_80144C00_153BB0[0];
			}

			if (vehicle->unk28 > 0) {
				var_f12 = var_f2;
			} else {
				var_f12 = -var_f2;
			}

			temp_f0 = (f64)vehicle->unk28 * 0.0625;
			var_v0 = (s32)((f64)var_f12 * (temp_f0 * temp_f0));
			if (sp30 < (f32)var_v0) {
				var_v0 = (s32)sp30;
			}
			if ((f32)var_v0 < -sp30) {
				var_v0 = (s32)-sp30;
			}

			if (vehicle->unk12 >= 0) {
				vehicle->unk16 = (s16)-var_v0;
			} else {
				vehicle->unk16 = (s16)var_v0;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_801095BC_11856C.s")
#endif

void func_801098E8_118898(VehicleInstance *vehicle) {
	D_8015922C = &D_8003E290[func_800056D0_62D0(vehicle->unk0, vehicle->unk4)];
	if ((vehicle->unk20 & VEHICLE_FLAG_ON_BRIDGE) && (currentLevel != LEVEL_COMET)) {
		D_8015922C = &D_8003E3A0;
	}
}

VehicleInstance *func_80109960_118910(void)
{
  s32 i;
  for (i = 0x80; i--;)
  {
	if (vehicleInstances[i].unk1A == 5)
	{
	  return &vehicleInstances[i];
	}
  }
}

// CURRENT(657)
#ifdef NON_MATCHING
void func_8010999C_11894C(VehicleInstance *vehicle) {
	s16 floorHeight;
	s16 ceilingHeight;
	s16 hitHeight;
	s16 xAdjust;
	s16 zAdjust;
	s32 xOffset;
	s32 xIndex;
	s32 zOffset;
	s32 zIndex;

	xAdjust = 0;
	if (vehicle->unk20 & 2) {
		zAdjust = 0;
		if (!(vehicleSpecs[vehicle->unk1A].unk4C & 0x20000)) {
			if (!(D_80159320 & 0x1800000)) {
				xOffset = -0x1E;
				for (xIndex = -1; xIndex != 2; xIndex++, xOffset += 0x1E) {
					for (zIndex = -1, zOffset = -0x1E; zIndex != 2; zIndex++, zOffset += 0x1E) {
						if ((func_800F9D60_108D10(vehicle->unk0 + xOffset, vehicle->unk4 + zOffset, &hitHeight, &ceilingHeight, &floorHeight) != -1) &&
							(vehicle->unk2 < floorHeight) && (ceilingHeight < vehicle->unk2)) {
							xAdjust = (s16)(xAdjust + xIndex);
							zAdjust = (s16)(zAdjust + zIndex);
						}
					}
				}

				vehicle->unk30 -= xAdjust;
				vehicle->unk38 -= zAdjust;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010999C_11894C.s")
#endif

void func_80109B34_118AE4(VehicleInstance *arg0, f32 arg1, f32 arg2) {
	func_800FB430_10A3E0(arg0, 0.0f);
	arg0->unk30 = arg1;
	arg0->unk38 = arg2;
}

void func_80109B74_118B24(VehicleInstance *arg0) {
	if ((gameplayMode != 0xB) && (D_8015922C->unk8 == 0x1F5) && !(arg0->unk20 & 2)) {
		if (!(D_80052A8C & 3) && (arg0->unk1A == 0)) {
			func_800C3BD8_D2B88(arg0->unk0, arg0->unk2, arg0->unk4, 0x10, 2, 0xFF, 0xEE, 0);
		}
		if ((currentLevel == 2) && ((arg0->unk1A == 0x10) || (arg0->unk1A == 2))) {
			func_80123E90_132E40(arg0, 4);
			return;
		}
		if (currentLevel == 5) {
			func_80123E90_132E40(arg0, 0x18);
			return;
		}
		func_80123E90_132E40(arg0, 8);
	}
}

#ifdef NON_MATCHING
// CURRENT(41964)
void func_80109C84_118C34(VehicleInstance *arg0, VehicleSpec *arg1) {
	typedef struct {
		u8 pad0[0x40];
		s16 unk40;
	} VehicleSpecView40;

	f32 sp80;
	f32 damping;
	f32 sp74;
	f32 sp70;
	f32 sp6C;
	s16 sp66;
	s16 sp64;
	s32 sp5C;
	s32 sp58;
	s32 sp54;
	s32 tableIndex;
	s16 sp4A;
	s16 sp48;
	s32 sp38;
	f64 sp28;
	f32 temp_f0;
	f32 temp_f2;
	f32 temp_f12;
	f32 temp_f18;
	f32 var_f2;
	f64 var_f0;
	f64 var_f8;
	s16 var_v1;
	u8 temp_t0;
	u8 temp_t6;
	u8 temp_v0;
	s16 sp8A;
	WeaponSpecEntry *tableEntry;
	VehicleSpecView40 *specView;

	damping = (f32) ((f64) arg1->unk45 * 0.00390625);
	specView = (VehicleSpecView40 *) arg1;
	tableIndex = func_800FAE60_109E10(arg0);
	func_801098E8_118898(arg0);
	func_80109B74_118B24(arg0);

	if ((arg0 != D_80052B34) && !(arg0->unk20 & 0x400)) {
		func_800FB430_10A3E0(arg0, (f32) ((f64) arg0->unk58 * D_80144C08_153BB8[0]));
	}

	if (!(arg0->unk20 & 8) && (arg0->unk20 & 4) &&
		(func_80108138_1170E8(arg0->unk0, arg0->unk2, arg0->unk4) != 0)) {
		arg0->unk20 &= (u16)0xFFFB;
		arg0->unk20 |= 0x800;
	}

	if ((arg0->unk20 & 0x800) && (func_80108138_1170E8(arg0->unk0, arg0->unk2, arg0->unk4) == 0)) {
		s32 temp_t0_2 = arg0->unk20 & -0x801;
		u16 temp_t7 = temp_t0_2 | 3;
		u16 temp_t8 = temp_t7 & 0xFFFB;

		arg0->unk20 = temp_t0_2;
		if ((f64) sp8A < ((f64) arg0->unk2 - ((f64) arg1->unk36 * D_80144C10_153BC0[0]))) {
			arg0->unk20 = temp_t7;
			arg0->unk20 = temp_t8;
			return;
		}

		arg0->unk20 = (u16) (arg0->unk20 | 5);
		return;
	}

	arg0->unk26 = (s16) (arg0->unk26 + (func_800F9C50_108C00(arg0->unk2A, arg0->unkA) / (s32) arg1->unk44));
	arg0->unk24 = (s16) (arg0->unk24 + (func_800F9C50_108C00(arg0->unk28, arg0->unk8) / (s32) arg1->unk44));
	arg0->unkA = (s16) (arg0->unkA + arg0->unk26);
	arg0->unk8 = (s16) (arg0->unk8 + arg0->unk24);
	arg0->unk6 = (s16) (arg0->unk6 + arg0->unk22 + arg0->unk16);
	arg0->unk26 = (s16) (s32) ((f32) arg0->unk26 * damping);
	arg0->unk24 = (s16) (s32) ((f32) arg0->unk24 * damping);
	arg0->unk22 = (s16) (s32) ((f32) arg0->unk22 * damping);
	func_801095BC_11856C(arg0);

	if (arg1->unk4C & 0x400000) {
		func_800FB430_10A3E0(arg0, 0.0f);
		if (D_80222A70 >= arg0->unk2) {
			temp_t0 = arg1->unk47;
			var_f8 = (f64) temp_t0;
			if ((s32) temp_t0 < 0) {
				var_f8 += 4294967296.0;
			}
			var_f2 = (f32) (var_f8 / D_80144C18_153BC8[0]);
		} else if (!(arg1->unk4C & 0x40000000)) {
			var_f2 = D_8015922C->unk4;
		} else {
			var_f2 = D_80144C20_153BD0[0];
		}
		arg0->unk30 = (f32) (arg0->unk30 * var_f2);
		arg0->unk38 = (f32) (arg0->unk38 * var_f2);
	} else if (arg0->unk1A == 0) {
		arg0->unk30 = (f32) ((f64) arg0->unk30 * D_80144C28_153BD8[0]);
		arg0->unk38 = (f32) ((f64) arg0->unk38 * D_80144C28_153BD8[0]);
	} else if ((arg0 == D_80052B34) && (D_80159320 & 0x04000000)) {
		s32 angle;

		func_800FB430_10A3E0(arg0, 0.0f);
		temp_f0 = func_800FB11C_10A0CC(arg0);
		arg0->unkE = arg0->unk6;
		temp_f2 = (f32) specView->unk40;

		if (temp_f0 < temp_f2) {
			angle = ((s32) ((temp_f0 / temp_f2) * D_80144C30_153BE0[0] + 0.0f)) & 0xFFFF;
			var_f0 = (f64) (f32) sins(angle) / 32768.0;
		} else {
			var_f0 = 0.0;
		}

		temp_f2 = (f32) (var_f0 * D_80144C38_153BE8[0]);
		arg0->unk30 = (f32) (arg0->unk30 * temp_f2);
		arg0->unk38 = (f32) (arg0->unk38 * temp_f2);
	} else {
		f32 var_f2_2;
		f64 temp_f14;
		f64 var_f0_2;
		f64 var_f0_3;

		sp74 = (f32) (((f64) (f32) coss((arg0->unkE + 0x4000) & 0xFFFF) / 32768.0) * (f64) arg0->unk58);
		temp_f0 = arg0->unk58;
		temp_f2 = (f32) (((f64) (f32) sins((arg0->unkE + 0x4000) & 0xFFFF) / 32768.0) * (f64) temp_f0);
		if (temp_f0 < 0.0f) {
			sp64 = -1;
		} else {
			sp64 = 1;
		}
		sp70 = temp_f2;
		sp6C = sqrtf((sp74 * sp74) + (temp_f2 * temp_f2));
		sp38 = (func_80003824_4424(sp74, sp70) - arg0->unk6) & 0xFFFF;
		sp28 = (f64) sp6C;
		sp74 = (f32) (((f64) (f32) coss(sp38) / 32768.0) * sp28 * D_80144C40_153BF0[0]);
		var_f2_2 = D_8015922C->unk4;
		temp_f18 = (f32) (((f64) (f32) sins(sp38) / 32768.0) * sp28);
		temp_f12 = (f32) (D_80222A70 - arg0->unk2) / (f32) ((s16) arg1->unk38 >> 1);

		if (!(arg1->unk4C & 0x10000000) && (D_80222A70 >= arg0->unk2)) {
			if (temp_f12 > 0.0f) {
				var_f2_2 *= 1.0f - (temp_f12 / 4.0f);
			} else {
				var_f2_2 = D_80144C48_153BF8[0];
			}
		}

		if (D_80222A70 == arg0->unk2) {
			temp_t6 = arg1->unk47;
			var_f8 = (f64) temp_t6;
			if ((s32) temp_t6 < 0) {
				var_f8 += 4294967296.0;
			}
			var_f2_2 = (f32) (var_f8 / D_80144C50_153C00[0]);
		}

		if ((currentLevel == 4) && (arg0->unk1A == 0x11)) {
			var_f2_2 = D_80144C58_153C08[0];
		}

		if (arg1->unk4C & 0x20000) {
			var_f2_2 = (f32) ((f64) var_f2_2 - D_80144C60_153C10[0]);
		}

		sp74 *= var_f2_2;
		sp80 = var_f2_2;
		sp70 = temp_f18 * var_f2_2;
		sp4A = func_80003824_4424(arg0->unk30, arg0->unk38);
		sp48 = sins((arg0->unk6 - sp4A) & 0xFFFF);
		if (-((f64) (f32) sins((arg0->unk6 - sp4A) & 0xFFFF) / 32768.0) < ((f64) (f32) sp48 / 32768.0)) {
			sp80 = var_f2_2;
			var_f0_2 = (f64) (f32) sins((arg0->unk6 - sp4A) & 0xFFFF) / 32768.0;
		} else {
			sp80 = var_f2_2;
			var_f0_2 = -((f64) (f32) sins((arg0->unk6 - sp4A) & 0xFFFF) / 32768.0);
		}

		temp_f14 = (f64) var_f2_2;
		arg0->unk30 = (f32) ((f64) arg0->unk30 * (temp_f14 - (D_80144C68_153C18[0] * var_f0_2)));
		sp28 = temp_f14;
		sp48 = sins((arg0->unk6 - sp4A) & 0xFFFF);
		if (-((f64) (f32) sins((arg0->unk6 - sp4A) & 0xFFFF) / 32768.0) < ((f64) (f32) sp48 / 32768.0)) {
			sp28 = temp_f14;
			var_f0_3 = (f64) (f32) sins((arg0->unk6 - sp4A) & 0xFFFF) / 32768.0;
		} else {
			sp28 = temp_f14;
			var_f0_3 = -((f64) (f32) sins((arg0->unk6 - sp4A) & 0xFFFF) / 32768.0);
		}

		arg0->unk38 = (f32) ((f64) arg0->unk38 * (temp_f14 - (D_80144C70_153C20[0] * var_f0_3)));
		func_800FB430_10A3E0(arg0, sqrtf((sp74 * sp74) + (sp70 * sp70)));
		arg0->unkE = (s16) (func_80003824_4424(sp74, sp70) - 0x4000);
		if (sp64 == -1) {
			func_800FB430_10A3E0(arg0, arg0->unk58 * (f32) sp64);
			arg0->unkE = (s16) (arg0->unkE + 0x8000);
		}
		arg0->unkE = (s16) (arg0->unkE + arg0->unk6);
	}

	if (arg1->unk4C & 0x200000) {
		var_v1 = arg0->unk22 * -0x20;
		if (var_v1 >= 0x3E81) {
			var_v1 = 0x3E80;
		}
		if (var_v1 < -0x3E80) {
			var_v1 = -0x3E80;
		}
		if (arg0->unk12 <= 0) {
			var_v1 = 0;
		}
		D_801591EA += (s32) (var_v1 - D_801591EA) / 7;
		arg0->unk8 = D_801591EA;
	} else {
		s16 temp_v0_3;
		s32 temp_f8_2;
		f32 var_f12;

		temp_f0 = arg0->unk58;
		if (temp_f0 >= 0.0f) {
			var_f12 = temp_f0;
		} else {
			var_f12 = -temp_f0;
		}

		temp_v0_3 = arg0->unk28;
		temp_f8_2 = (s32) ((((f64) (sqrtf(var_f12) * (f32) arg0->unk22) * ((f64) D_80159242 / 10.0)) - (f64) (f32) temp_v0_3) * 0.25);
		arg0->unk28 = (s16) (temp_v0_3 + temp_f8_2);
		sp66 = (s16) temp_f8_2;

		if (((f64) func_800FB11C_10A0CC(arg0) > 5.0) && (D_80222A70 != arg0->unk2)) {
			u16 temp_v0_4 = arg0->unk20;

			if (!(temp_v0_4 & 0x800) && !(temp_v0_4 & 4)) {
				s16 trig;
				s16 lateral0;
				s16 lateral1;
				s16 longitudinal0;
				s16 longitudinal1;
				s16 ax;

				trig = coss((u16) arg0->unk6);
				sp5C = (s32) ((((f64) (f32) sins((u16) arg0->unk6) / 32768.0) * (f64) ((s16) arg1->unk34 >> 1)) +
					((f64) arg0->unk0 - (((f64) (f32) trig / 32768.0) * (f64) ((s16) arg1->unk36 >> 1))));

				trig = sins((u16) arg0->unk6);
				sp58 = (s32) (((f64) arg0->unk4 - (((f64) (f32) trig / 32768.0) * (f64) ((s16) arg1->unk36 >> 1))) -
					(((f64) (f32) coss((u16) arg0->unk6) / 32768.0) * (f64) ((s16) arg1->unk34 >> 1)));

				trig = coss((u16) arg0->unk6);
				sp54 = (s32) (((f64) arg0->unk0 - (((f64) (f32) trig / 32768.0) * (f64) ((s16) arg1->unk36 >> 1))) -
					(((f64) (f32) sins((u16) arg0->unk6) / 32768.0) * (f64) ((s16) arg1->unk34 >> 1)));

				trig = sins((u16) arg0->unk6);
				ax = (s16) (s32) ((((f64) (f32) coss((u16) arg0->unk6) / 32768.0) * (f64) ((s16) arg1->unk34 >> 1)) +
					((f64) arg0->unk4 - (((f64) (f32) trig / 32768.0) * (f64) ((s16) arg1->unk36 >> 1))));

				lateral0 = (s16) sp5C;
				lateral1 = (s16) sp58;
				longitudinal0 = (s16) sp54;
				longitudinal1 = ax;

				if (sp66 > 0) {
					func_800E75A0_F6550(longitudinal0, longitudinal1, 0);
					func_800E75A0_F6550(lateral0, lateral1, (s16) (sp66 >> 5));
				} else if (sp66 < 0) {
					func_800E75A0_F6550(lateral0, lateral1, 0);
					func_800E75A0_F6550(longitudinal0, longitudinal1, (s16) ((s16) -sp66 >> 5));
				} else {
					func_800E75A0_F6550(lateral0, lateral1, 0);
					func_800E75A0_F6550(longitudinal0, longitudinal1, 0);
				}
			}
		}
	}

	if (((arg1->unk4C & 0x80000000) || (D_80222A70 != arg0->unk2)) && !(arg1->unk4C & 0x20000000)) {
		s16 temp_a0_3;

		if ((arg0 != D_80052B34) || (arg0->unk1A != 0x13)) {
			s16 var_v0;

			temp_a0_3 = arg0->unk2A;
			arg0->unkA = (s16) (s32) ((f32) arg0->unkA + ((D_80158C58[tableIndex] - arg0->unk58) * (f32) (arg1->unk44 * 20)));
			var_v0 = arg0->unkA - temp_a0_3;
			if (var_v0 >= 0xE39) {
				var_v0 = 0xE38;
			}
			if (var_v0 < -0xE38) {
				var_v0 = -0xE38;
			}
			arg0->unkA = (s16) (temp_a0_3 + var_v0);
		}

		if (arg0->unk1A != 0x13) {
			s16 temp_v0_5 = arg0->unk28;
			s16 temp_v1_3 = arg0->unk8 - temp_v0_5;

			if (temp_v1_3 >= 0xE39) {
				arg0->unk8 = (s16) (temp_v0_5 + 0xE38);
			}
			if (temp_v1_3 < -0xE38) {
				arg0->unk8 = (s16) (temp_v0_5 - 0xE38);
			}
		}
	}

	if (arg0 == D_80052B34) {
		temp_v0 = arg1->unk55;
		if (temp_v0 != 0) {
			tableEntry = &D_80140768_14F718[temp_v0];
			if ((f32) tableEntry->unk2 <= func_800FB11C_10A0CC(arg0)) {
				arg0->unk20 = (u16) (arg0->unk20 | 2);
				arg0->unk2E = (s16) ((arg0->unk2 - func_800F9D24_108CD4(arg0->unk0, arg0->unk4)) + 2);
				if (arg1->unk62 == 5) {
					func_800156C8_162C8(0x10);
					func_801371B8_146168(arg0, 4, arg0->unk0, arg0->unk2, arg0->unk4, -1.0f);
				}
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80109C84_118C34.s")
#endif

#ifdef NON_MATCHING
// CURRENT(8202)
void func_8010ADA4_119D54(VehicleInstance *arg0, VehicleSpec *arg1) {
	typedef struct {
		u8 pad3E[0x3E];
		u8 unk3E;
		u8 pad3F;
		s16 unk40;
		u8 pad42[5];
		u8 unk47;
	} Unk8010ADA4SpecView;

	s16 sp84;
	s16 sp82;
	s16 sp76;
	s16 sp72;
	s16 sp70;
	s16 sp6E;
	f32 sp60;
	f32 sp50;
	f32 sp4C;
	s32 sp3C;
	f32 sp38;
	f64 sp28;
	f64 temp_f16;
	s16 temp_a2;
	s16 temp_t1;
	s16 temp_v0;
	s16 var_v0;
	s32 temp_t8;
	u16 temp_t3;
	BuildingInstance *temp_a1;
	BuildingInstance *temp_v1;
	Unk8010ADA4SpecView *spec;

	spec = (Unk8010ADA4SpecView *) arg1;

	temp_t8 = arg0->unk0 >> 8;
	sp3C = (s8) temp_t8;
	sp84 = func_8011D260_12C210(temp_t8, 0x4D);
	temp_v0 = func_8011D260_12C210(sp3C, 0x42);
	sp82 = temp_v0;
	temp_v1 = &buildingInstances[sp84];
	sp76 = temp_v1->xCoord + 0xC;
	temp_t1 = temp_v1->zCoord - 0x204;
	temp_a1 = &buildingInstances[temp_v0];
	temp_a2 = temp_a1->zCoord + 0x202;
	sp6E = temp_v1->yCoord + 0x84;
	sp70 = temp_a1->yCoord + 0x84;
	sp72 = temp_t1;
	sp38 = (f32) (temp_t1 - temp_a2);
	sp60 = (f32) (temp_t1 - arg0->unk4) / sp38;
	func_800FAE60_109E10(arg0);

	temp_v0 = func_8011D260_12C210((s8) (D_80052B34->unk0 >> 8), (s8) (D_80052B34->unk4 >> 8));
	temp_f16 = sp60;
	sp50 = arg0->unk58;

	if ((temp_f16 != 0.0) && (temp_f16 != 1.0)) {
		D_8013FD70_14ED20 = 0x30;
		D_8013FD74_14ED24 = 0x8C;
	} else {
		D_8013FD70_14ED20 = 0x20;
		D_8013FD74_14ED24 = 0xAF;
	}

	if (D_80052B34->unk20 & 0x800) {
		if (temp_v0 == sp84) {
			D_80159248 = -1;
		}
		if (temp_v0 == sp82) {
			D_80159248 = 1;
		}
	}

	if (D_80159320 & 0x800000) {
		f32 temp_f2 = D_80052B34->unk54;
		f32 temp_f12_2 = arg0->unk54;
		f32 var_f14 = temp_f2 - temp_f12_2;
		f32 var_f0_2;

		if (temp_f12_2 <= temp_f2) {
			var_f0_2 = var_f14;
		} else {
			var_f0_2 = -var_f14;
		}

		if (var_f0_2 > 15.0f) {
			if (var_f0_2 < 117.0f) {
				if (temp_f12_2 < temp_f2) {
					D_80159248 = -1;
				} else {
					D_80159248 = 1;
				}
			}
		} else {
			D_80159248 = 0;
		}
	}

	sp28 = temp_f16;
	if ((func_8000726C_7E6C(0xB) != 0) ||
		(func_8000726C_7E6C(0xC) == 0)) {
		D_80159248 = 0;
	}
	temp_f16 = sp28;

	switch (D_80159248) {
	case -1:
		if (temp_f16 != 0.0) {
			func_801371B8_146168(arg0, 0x32, arg0->unk0, arg0->unk2, arg0->unk4, D_80144C78_153C28[0]);
			arg0->unk58 = (f32) ((f64) arg0->unk58 - ((f64) spec->unk3E * D_80144C80_153C30[0]));
		}
		break;
	case 1:
		if (temp_f16 != 1.0) {
			func_801371B8_146168(arg0, 0x32, arg0->unk0, arg0->unk2, arg0->unk4, D_80144C88_153C38[0]);
			arg0->unk58 = (f32) ((f64) arg0->unk58 + ((f64) spec->unk3E * D_80144C90_153C40[0]));
		}
		break;
	}

	var_v0 = spec->unk40;
	if ((f64) arg0->unk58 < ((f64) -var_v0 * D_80144C98_153C48[0])) {
		arg0->unk58 = (f64) -var_v0 * D_80144C98_153C48[0];
		var_v0 = spec->unk40;
	}
	if (((f64) var_v0 * D_80144CA0_153C50[0]) < (f64) arg0->unk58) {
		arg0->unk58 = (f64) var_v0 * D_80144CA0_153C50[0];
	}

	sp60 = sp60 + arg0->unk58;
	temp_f16 = sp60;
	arg0->unk26 = (s16) (s32) ((f64) arg0->unk26 + ((f64) (arg0->unk58 - sp50) * D_80144CA8_153C58[0]));

	if (temp_f16 < 0.0) {
		func_80137130_1460E0(0, 0xD1, arg0->unk0, arg0->unk2, arg0->unk4);
		sp60 = 0.0f;
		arg0->unk58 = 0.0f;
		temp_f16 = sp60;
	}
	if (temp_f16 > 1.0) {
		func_80137130_1460E0(0, 0xD1, arg0->unk0, arg0->unk2, arg0->unk4);
		sp60 = 1.0f;
		arg0->unk58 = 0.0f;
	}

	sp3C = (u32) ((sp60 * 16384.0f) + 40960.0f) & 0xFFFF;
	sp4C = (f32) (((f64) (f32) sins(sp3C) / 32768.0) + D_80144CB0_153C60[0]);
	temp_t3 = arg0->unk20 | 3;
	arg0->unk20 = temp_t3;
	arg0->unk20 = temp_t3 & 0xF7FF;

	func_800FB44C_10A3FC(arg0, sp76);
	func_800FB468_10A418(arg0,
		((f32) sp6E - (sp4C * D_80144CB8_153C68[0])) +
		(sp60 * (f32) (sp70 - sp6E)) +
		(f32) (-((f64) (f32) coss(arg0->unkA) / 32768.0) * 15.0));
	func_800FB484_10A434(arg0, (f32) sp72 - (sp60 * sp38));

	D_80159246 = (s16) (s32) (((f64) (f32) coss(sp3C) / 32768.0) * D_80144CC0_153C70[0]);
	arg0->unk26 = 0;
	arg0->unkA = 0;
	arg0->unk24 = 0;
	arg0->unk8 = 0;
	arg0->unk6 = -0x4000;
	arg0->unk58 = (f32) ((f64) arg0->unk58 * ((f64) spec->unk47 / D_80144CC8_153C78[0]));

	if ((f64) ABSF(arg0->unk58) < D_80144CD0_153C80[0]) {
		arg0->unk58 = 0.0f;
	}
	D_80159250 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010ADA4_119D54.s")
#endif

void func_8010B5C8_11A578(VehicleInstance *arg0, f32 arg1) {
	func_800FB430_10A3E0(arg0, 0.0f);
	arg0->unk30 = 0.0f;
	arg0->unk34 = 0.0f;
	arg0->unk38 = 0.0f;
}

// CURRENT(2910)
#ifdef NON_MATCHING
void func_8010B60C_11A5BC(VehicleInstance *arg0, VehicleInstance *arg1) {
	f32 temp_f0;
	f32 temp_f2;

	temp_f0 = (f32) ((f64) arg1->unk45 * 0.00390625);
	arg0->unk26 = (s16) (arg0->unk26 + (func_800F9C50_108C00(arg0->unk2A, arg0->unkA) / arg1->unk44));
	arg0->unk24 = (s16) (arg0->unk24 + (func_800F9C50_108C00(arg0->unk28, arg0->unk8) / arg1->unk44));
	arg0->unk8 = (s16) (arg0->unk8 + arg0->unk24);
	arg0->unkA = (s16) (arg0->unkA + arg0->unk26);
	arg0->unk6 = (s16) (arg0->unk6 + arg0->unk22 + arg0->unk16);
	arg0->unk26 = (s16) (s32) ((f32) arg0->unk26 * temp_f0);
	arg0->unk24 = (s16) (s32) ((f32) arg0->unk24 * temp_f0);
	arg0->unk22 = (s16) (s32) ((f32) arg0->unk22 * temp_f0);
	arg0->unk16 = (s16) (s32) ((f32) arg0->unk16 * temp_f0);
	temp_f2 = 4.0f;
	func_800FB430_10A3E0(arg0, arg0->unk58 / temp_f2);
	arg0->unk30 = arg0->unk30 / temp_f2;
	arg0->unk34 = arg0->unk34 / temp_f2;
	arg0->unk38 = arg0->unk38 / temp_f2;
	func_801098E8_118898(arg0);
	func_801095BC_11856C(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010B60C_11A5BC.s")
#endif

#ifdef NON_MATCHING
s32 func_8010B804_11A7B4(s32 arg0, VehicleInstance *arg1, s16 arg2, s16 arg3) {
	VehicleSpec *sp2C;
	s32 pad28;
	s32 sp24;
	s32 pad20;
	s16 temp_t5;
	s16 temp_t7;
	s16 temp_a1;
	s16 temp_v1;
	s32 temp_lo;
	s32 temp_v0;

	sp2C = &vehicleSpecs[arg1->unk1A];
	temp_v0 = (s32)func_800FB11C_10A0CC(arg1);
	temp_t5 = arg2 & 0xFFF0;
	temp_t7 = arg3 & 0xFFF0;
	temp_lo = (u32)sp2C->unk32 * temp_v0;
	arg2 = temp_t5;
	arg3 = temp_t7;
	temp_a1 = temp_v0 >> 4;

	if (arg1->unk1A != 0) {
		sp24 = temp_lo;
		func_80122524_1314D4(arg1, temp_a1, temp_t5, arg3);
		temp_lo = sp24;
	}

	temp_v1 = D_8013BB6C_14AB1C[currentLevel][arg0];
	if (((temp_v1 * 300) < temp_lo) ||
		((sp2C->unk4C & 0x20000000) && (arg1->unk20 & 2))) {
		if (func_80078828_877D8(arg2, arg3, func_800FB160_10A110(arg1) & 0xFFFF, 1) != 0) {
			func_80014180_14D80((s8)arg0);
			return 1;
		}
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010B804_11A7B4.s")
#endif

s32 func_8010B970_11A920(u8 *arg0, VehicleInstance *arg1) {
	VehicleSpec *sp1C;
	s32 sp18;

	sp1C = &vehicleSpecs[arg1->unk1A];
	if (func_80078FE0_87F90(arg0, arg1, &sp18) != 0 ||
			((sp1C->unk4C & 0x20000000) && (arg1->unk20 & 2))) {
		func_800792E0_88290(arg0, sp18);
		func_80014180_14D80(0);
		return 1;
	}
	return 0;
}

// CURRENT(25049)
#ifdef NON_MATCHING
void func_8010BA04_11A9B4(void) {
	VehicleInstance *vehicle;
	VehicleSpec *spec;
	VehicleInstance *otherVehicle;
	s32 *modePtr;
	s32 modeTemp;
	s32 temp;
	u16 flags;
	f32 tempF0;
	f32 hitPointsF;

	vehicle = D_80052B34;
	spec = &vehicleSpecs[vehicle->unk1A];

	if ((D_8015930E == 0) && (currentLevel == 1) && (vehicle->unk1A == 3)) {
		if ((vehicle->unk0 < 0x3601) || (vehicle->unk4 >= -0x5400)) {
			if (!(vehicle->unk20 & 2)) {
				D_80158BD0[vehicle - vehicleInstances] = 0x20;
				func_800FDEA8_10CE58(D_80052B2C, 0);
				vehicle = D_80052B34;
			} else {
				D_8004DC58 = 3;
				D_8015930E = 1;
				D_80159268 = 1;
			}
		}
	}

	D_80159238 = 0.0f;
	D_8015923C = 0.0f;

	if (D_80159320 & 0x00800000) {
		otherVehicle = func_80109960_118910();
		tempF0 = (f32)((f64)(f32)sins(D_80159250) / 32768.0);
		D_80159238 = (f32)((f64)((vehicle->unk54 - otherVehicle->unk54) * tempF0) * D_80144CD8_153C88);
		D_8015923C = tempF0 * 418.0f;
		vehicle->unk30 = 0.0f;
		vehicle->unk34 = 0.0f;
		vehicle->unk38 = 0.0f;
		func_800FB40C_10A3BC(vehicle, D_8015EA38 - D_8015EA34);
		vehicle = D_80052B34;
	}

	if (!(vehicle->unk20 & 2) && (D_80159320 & 0x00400000) && (D_80159268 != 0)) {
		D_8015930E = 0;
		D_80159268 = 0;
	}

	if ((vehicle->unk1A != 0) && (vehicle->unk2 >= D_80222A70) && (D_801591AC != 6)) {
		temp = (s32)func_800FB11C_10A0CC(vehicle);
		flags = temp & 0xFFFF;
		hitPointsF = spec->hitPoints;
		temp = (s32)(((f32)vehicle->unk1C * 255.0f) / hitPointsF);
		func_800E1D48_F0CF8(flags, temp & 0xFF);
		vehicle = D_80052B34;
	}

	if ((vehicle->unk1A != 0) && !(vehicle->unk20 & 2) && (func_800F9C50_108C00(vehicle->unk6, vehicle->unkE) >= 0x4000)) {
		vehicle = D_80052B34;
		vehicle->unkE += 0x8000;
		vehicle->unk12 = -vehicle->unk12;
		vehicle->unk10 = -vehicle->unk10;

		if (vehicle->unk12 < (((s16 *)((u8 *)spec + 0x42))[0] * 2)) {
			vehicle->unk34 = -(vehicle->unk12 >> 1);
			vehicle->unk12 >>= 1;
			vehicle->unk20 |= 2;
			vehicle->unk24 = (s16)(vehicle->unk24 + (func_800038E0_44E0() & 0x3FF) - 0x1FF);
			vehicle = D_80052B34;
			vehicle->unk22 = (s16)(vehicle->unk22 + (func_800038E0_44E0() & 0x3FF) - 0x1FF);
			vehicle = D_80052B34;
			vehicle->unk26 = (s16)(vehicle->unk26 + (func_800038E0_44E0() & 0x3FF) - 0x1FF);
		}
	}

	if (D_801591C0 < 4) {
		D_801591C0--;
	} else {
		D_801591C0 -= D_801591C0 >> 2;
	}

	if (D_801591C0 < 0) {
		D_801591C0 = 0;
	}

	modePtr = &D_80050AD4;
	modeTemp = *modePtr;
	if (modeTemp == 3) {
		gameplayMode = 0;
		*modePtr = D_80050AD0;
		modeTemp = *modePtr;
	}

	if (modeTemp == 0xD) {
		gameplayMode = 0x10;
		*modePtr = D_80050AD0;
		modeTemp = *modePtr;
	}

	if (modeTemp == 0xC) {
		gameplayMode = 8;
		*modePtr = D_80050AD0;
	}

	if ((currentControllerStates[0].button & 4) && (gameplayMode != 3) && (gameplayMode != 0xB) && (D_80159300 == 0)) {
		vehicle = D_80052B34;
		flags = vehicle->unk20;
		if (!(flags & 0x400)) {
			if (!(flags & 2) || ((D_80222A70 >= vehicle->unk2) && !((vehicleSpecs[vehicle->unk1A].unk4C < 0) && (vehicleSpecs[vehicle->unk1A].unk4C & 0x100)))) {
				if (!((currentLevel == 4) && (vehicle->unk1A == 0xE)) && (D_80159264 == 0)) {
					func_800FDEA8_10CE58(D_80052B2C, 0);
					vehicle = D_80052B34;
				}
			}
		}
	}

	if ((*modePtr >= 2) && ((currentLevel != 3) || (vehicle->unk1A != 3))) {
		func_8000345C_405C(0x2000);
	}

	if (!(D_80159320 & 2) && (D_80158E60 > 700.0f)) {
		D_80158E60 -= 10.0f;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010BA04_11A9B4.s")
#endif

#ifdef NON_MATCHING
void func_8010C14C_11B0FC(void) {
	s32 state;
	s32 temp;
	s32 sp3C;
	s32 sp38;
	s32 sp34;
	VehicleInstance *vehicle;

	state = D_801409F8_14F9A8;
	if ((u32)state >= 5U) {
		return;
	}

	switch (state) {
		case 0:
			D_80159312 = 0;
			func_8001A650_1B250(8);
			D_8013B934_14A8E4 = 1000;
			func_800153D8_15FD8(0xD0);
			D_801409F8_14F9A8++;
			D_80159D10 = 0;
			break;

		case 1:
			temp = D_80159D10;
			D_80159308 = func_800065A4_71A4(0, -0x1B58, temp);
			temp += 0x2C8;
			D_80159D10 = temp;
			if (temp >= 0x10000) {
				func_800156C8_162C8(0xD0);
				func_800153D8_15FD8(0xD1);
				D_801409F8_14F9A8++;
				D_80159D10 = 0;
			}
			break;

		case 2:
			temp = D_80159D10 + 1;
			D_80159D10 = temp;
			if (temp >= 10) {
				func_800153D8_15FD8(0x63);
				D_801409F8_14F9A8++;
				D_80159D10 = 0;
				func_80128428_1373D8((AlienInstance *) D_80052B34, 0, 0x64, -0xD8, &sp3C, &sp38, &sp34);
				func_800DF038_EDFE8((s16) sp3C, (s16) sp38, (s16) sp34, 0x46, 0, 0);
				return;
			}
			break;

		case 3:
			D_80159312 += D_80159D10;
			D_80159D10++;
			if (D_80159312 >= 0x1A9) {
				D_801409F8_14F9A8++;
				D_80159D10 = 0;
			}
			break;

		case 4:
			vehicle = &vehicleInstances[D_80159316];
			vehicle->unk20 |= 0x10;
			D_80158E64 = &vehicleInstances[63];
			vehicleInstances[63].unk1A = 0xE;
			func_800FAE84_109E34(D_80158E64);
			func_800FB44C_10A3FC(D_80158E64, D_80159284);
			func_800FB468_10A418(D_80158E64, D_80159288);
			func_800FB484_10A434(D_80158E64, D_8015928C);
			func_800FB430_10A3E0(D_80158E64, 30.0f);
			D_80158E64->unk6 = D_8015927E;
			D_80158E64->unkA = D_80159280;
			D_80158E64->unk8 = D_80159282;
			D_80158E64->unk20 |= 0x8042;
			func_800FAD10_109CC0();
			func_800FD510_10C4C0(0, 0x3F);
			vehicleSpecs[14].unk42 = 0xC8;
			func_80107EBC_116E6C(D_80158E64);
			D_801591AC = 0;
			D_8015930E = 0;
			D_80159312 = 0;
			D_80159308 = 0;
			D_801409F8_14F9A8 = 0;
			break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010C14C_11B0FC.s")
#endif

void func_8010C454_11B404(void) {
	VehicleInstance *vehicle;

	if (D_80159314-- == 0) {
		vehicle = D_80052B34;
		if (vehicle != vehicleInstances + D_80159316) {
			func_800FD510_10C4C0(0, D_80159316);
			vehicle = D_80052B34;
		}
		func_800E7B20_F6AD0(vehicle, D_801493D8);
		D_801591AC = 0;
		D_8015930E = 0;
	}
}

// CURRENT(4649)
#ifdef NON_MATCHING
void func_8010C4EC_11B49C(VehicleInstance *arg0) {
	f32 sp24;
	s32 pad;
	s32 pad2;
	s16 sp1E;
	s16 v0;
	s16 a0;
	u8 temp_v0;
	f32 neg34;
	f32 neg38;

	sp1E = func_800FAE60_109E10(arg0);
	if (arg0 != D_80159D5C) {
		D_80159D5C = arg0;
		D_80159D64 = &vehicleSpecs[arg0->unk1A];
		if (D_80159D64->unk16 == 1) {
		D_80159D34 = (f32)(D_80159D64->unk36 >> 1);
		D_80159D38 = 0.0f;
		D_80159D3C = 0.0f;
		D_80159D40 = (f32)((s16)-D_80159D64->unk34 >> 1);
		} else {
		D_80159D34 = (f32)(((f64)(f32)coss(D_80159D5C->unk6) / 32768.0) * (f64)(D_80159D64->unk36 >> 1));
		D_80159D38 = (f32)(((f64)(f32)sins(D_80159D5C->unk6) / 32768.0) * (f64)(D_80159D64->unk36 >> 1));
		D_80159D3C = (f32)(((f64)(f32)sins(D_80159D5C->unk6) / 32768.0) * (f64)(D_80159D64->unk34 >> 1));
		D_80159D40 = (f32)(-((f64)(f32)coss(D_80159D5C->unk6) / 32768.0) * (f64)(D_80159D64->unk34 >> 1));
		}

	D_80159D78[0] = D_80159D34 + D_80159D3C;
	neg34 = -D_80159D34;
	D_80159D78[2] = neg34 - D_80159D3C;
	D_80159D98[0] = D_80159D38 + D_80159D40;
	D_80159D78[1] = D_80159D34 - D_80159D3C;
	D_80159D20 = 0.0f;
	neg38 = -D_80159D38;
	D_80159D98[2] = neg38 - D_80159D40;
	D_80159D98[1] = D_80159D38 - D_80159D40;
	D_80159D78[3] = neg34 + D_80159D3C;
	D_80159D1C = D_80159D20;
	D_80159D98[3] = neg38 + D_80159D40;
	D_80159D18 = D_80159D1C;
	D_80159D14 = D_80159D18;

		if ((func_800E60CC_F507C(2, ((u8 *)&sp1E)[1]) != 0) || (D_80159D64->unk16 == 1)) {
		D_80159D6C = 2;
		temp_v0 = D_80159D5C->unk1A;
		if (temp_v0 == 0) {
			D_80159D54 = 14.0f;
		} else if (D_80159D64->unk16 == 1) {
			D_80159D54 = vehicleSpecs[temp_v0].unkC;
		} else {
			D_80159D54 = (f32)((f64)vehicleSpecs[temp_v0].unkC * D_80144CF8_153CA8);
		}
		D_80159D54 *= D_80159D54;
		return;
		}

		v0 = D_80159D5C->unk6;
		if (((v0 < 100) && (v0 >= -99)) || (((a0 = v0 - 0x8000), (a0 < 100)) && (a0 >= -99))) {
		D_80159D6C = 1;
		return;
		}

		a0 = v0 - 0x4000;
		if (((a0 < 100) && (a0 >= -99)) || (((s16)(v0 + 0x4000) < 100) && ((s16)(v0 + 0x4000) >= -99))) {
		D_80159D6C = 0;
		return;
		}

		D_80159D14 = D_80159D40 / D_80159D3C;
		D_80159D18 = D_80159D38 / D_80159D34;
		sp24 = (f32)(D_80159D64->unk36 >> 1);
		D_80159D1C = sp24 / (f32)((f64)(f32)sins(D_80159D5C->unk6) / 32768.0);
		sp24 = (f32)(D_80159D64->unk34 >> 1);
		D_80159D20 = sp24 / (f32)((f64)(f32)coss(D_80159D5C->unk6) / 32768.0);
		D_80159D6C = 3;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010C4EC_11B49C.s")
#endif

// CURRENT(4213)
#ifdef NON_MATCHING
void func_8010CA38_11B9E8(VehicleInstance *arg0) {
	f32 sp24;
	s32 pad;
	s32 pad2;
	s16 sp1E;
	s16 v0;
	s16 a0;
	u8 temp_v0;
	f32 neg44;
	f32 neg48;

	sp1E = func_800FAE60_109E10(arg0);
	if ((void *)arg0 == (void *)D_80159D60) {
		return;
	}

	D_80159D60 = (Unk8010ED84Pos *)arg0;
	D_80159D68 = (Unk8010ED84Data *)&vehicleSpecs[((VehicleInstance *)D_80159D60)->unk1A];
	if (((VehicleInstance *)D_80159D60)->unk1A == 0) {
		D_80159D44 = (f32)(((Unk8010D234Data *)D_80159D68)->unk36 >> 1);
		D_80159D48 = 0.0f;
		D_80159D4C = 0.0f;
		D_80159D50 = (f32)((s16)-((Unk8010D234Data *)D_80159D68)->unk34 >> 1);
	} else {
		D_80159D44 = (f32)(((f64)(f32)coss(((VehicleInstance *)D_80159D60)->unk6) / 32768.0) * (f64)(((Unk8010D234Data *)D_80159D68)->unk36 >> 1));
		D_80159D48 = (f32)(((f64)(f32)sins(((VehicleInstance *)D_80159D60)->unk6) / 32768.0) * (f64)(((Unk8010D234Data *)D_80159D68)->unk36 >> 1));
		D_80159D4C = (f32)(((f64)(f32)sins(((VehicleInstance *)D_80159D60)->unk6) / 32768.0) * (f64)(((Unk8010D234Data *)D_80159D68)->unk34 >> 1));
		D_80159D50 = (f32)(-((f64)(f32)coss(((VehicleInstance *)D_80159D60)->unk6) / 32768.0) * (f64)(((Unk8010D234Data *)D_80159D68)->unk34 >> 1));
	}

	D_80159D78[4] = D_80159D44 + D_80159D4C;
	neg44 = -D_80159D44;
	D_80159D78[6] = neg44 - D_80159D4C;
	D_80159D98[4] = D_80159D48 + D_80159D50;
	D_80159D78[5] = D_80159D44 - D_80159D4C;
	D_80159D30 = 0.0f;
	neg48 = -D_80159D48;
	D_80159D98[6] = neg48 - D_80159D50;
	D_80159D98[5] = D_80159D48 - D_80159D50;
	D_80159D78[7] = neg44 + D_80159D4C;
	D_80159D2C = D_80159D30;
	D_80159D98[7] = neg48 + D_80159D50;
	D_80159D28 = D_80159D2C;
	D_80159D24 = D_80159D28;

	if ((func_800E60CC_F507C(2, ((u8 *)&sp1E)[1]) != 0) || (((VehicleSpec *)D_80159D68)->unk16 == 1)) {
		D_80159D70 = 2;
		temp_v0 = ((VehicleInstance *)D_80159D60)->unk1A;
		if (temp_v0 == 0) {
			D_80159D58 = 14.0f;
		} else if (((VehicleSpec *)D_80159D68)->unk16 == 1) {
			D_80159D58 = vehicleSpecs[temp_v0].unkC;
		} else {
			D_80159D58 = (f32)((f64)vehicleSpecs[temp_v0].unkC * D_80144D00_153CB0);
		}
		D_80159D58 *= D_80159D58;
		return;
	}

	v0 = ((VehicleInstance *)D_80159D60)->unk6;
	if ((((v0 < 100) && (v0 >= -99))) || (((a0 = v0 - 0x8000), (a0 < 100)) && (a0 >= -99))) {
		D_80159D70 = 1;
		return;
	}

	a0 = v0 - 0x4000;
	if ((((a0 < 100) && (a0 >= -99))) || ((((s16)(v0 + 0x4000)) < 100) && (((s16)(v0 + 0x4000)) >= -99))) {
		D_80159D70 = 0;
		return;
	}

	D_80159D24 = D_80159D50 / D_80159D4C;
	D_80159D28 = D_80159D48 / D_80159D44;
	sp24 = (f32)(((Unk8010D234Data *)D_80159D68)->unk36 >> 1);
	D_80159D2C = sp24 / (f32)((f64)(f32)sins(((VehicleInstance *)D_80159D60)->unk6) / 32768.0);
	sp24 = (f32)(((Unk8010D234Data *)D_80159D68)->unk34 >> 1);
	D_80159D30 = sp24 / (f32)((f64)(f32)coss(((VehicleInstance *)D_80159D60)->unk6) / 32768.0);
	D_80159D70 = 3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010CA38_11B9E8.s")
#endif

// CURRENT(12700)
#ifdef NON_MATCHING
s32 func_8010CF7C_11BF2C(s16 arg0, s16 arg1) {
	VehicleInstance *vehicle;
	VehicleSpec *spec;
	f32 dx;
	f32 dz;
	f32 temp;
	s32 count;

	vehicle = D_80159D5C;
	dx = arg0 - vehicle->unk0;
	dz = arg1 - vehicle->unk4;
	count = 0;

	switch (D_80159D6C) {
		case 0:
			temp = -dx;
			if (dx < temp) {
				temp = dx;
			}
			spec = D_80159D64;
			if (temp <= (spec->unk34 >> 1)) {
				temp = -dz;
				if (dz < temp) {
					temp = dz;
				}
				if (temp <= (spec->unk36 >> 1)) {
					count = 2;
				}
			}
			break;

		case 1:
			temp = -dx;
			if (dx < temp) {
				temp = dx;
			}
			spec = D_80159D64;
			if (temp <= (spec->unk36 >> 1)) {
				temp = -dz;
				if (dz < temp) {
					temp = dz;
				}
				if (temp <= (spec->unk34 >> 1)) {
					count = 2;
				}
			}
			break;

		case 2:
			if (((dx * dx) + (dz * dz)) < D_80159D54) {
				count = 2;
			}
			break;

		case 3:
			temp = (-D_80159D14 * dx) + dz;
			if ((-D_80159D1C <= temp) && (temp <= D_80159D1C)) {
				count = 1;
			}

			temp = (-D_80159D18 * dx) + dz;
			if ((-D_80159D20 <= temp) && (temp <= D_80159D20)) {
				count++;
			}
			break;
	}

	return count == 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010CF7C_11BF2C.s")
#endif

// CURRENT(12945)
#ifdef NON_MATCHING
s32 func_8010D234_11C1E4(s16 arg0, s16 arg1) {
	Unk8010ED84Pos *pos;
	Unk8010D234Data *data;
	f32 dx;
	f32 dz;
	f32 temp;
	s32 count;

	pos = D_80159D60;
	dx = arg0 - pos->unk0;
	dz = arg1 - pos->unk4;
	count = 0;

	switch (D_80159D70) {
		case 0:
			temp = -dx;
			if (dx < temp) {
				temp = dx;
			}
			data = (Unk8010D234Data *)D_80159D68;
			if (temp <= (data->unk34 >> 1)) {
				temp = -dz;
				if (dz < temp) {
					temp = dz;
				}
				if (temp <= (data->unk36 >> 1)) {
					count = 2;
				}
			}
			break;

		case 1:
			temp = -dx;
			if (dx < temp) {
				temp = dx;
			}
			data = (Unk8010D234Data *)D_80159D68;
			if (temp <= (data->unk36 >> 1)) {
				temp = -dz;
				if (dz < temp) {
					temp = dz;
				}
				if (temp <= (data->unk34 >> 1)) {
					count = 2;
				}
			}
			break;

		case 2:
			if (((dx * dx) + (dz * dz)) < D_80159D58) {
				count = 2;
			}
			break;

		case 3:
			temp = (-D_80159D24 * dx) + dz;
			if ((-D_80159D2C <= temp) && (temp <= D_80159D2C)) {
				count = 1;
			}

			temp = (-D_80159D28 * dx) + dz;
			if ((-D_80159D30 <= temp) && (temp <= D_80159D30)) {
				count++;
			}
			break;
	}

	return count == 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010D234_11C1E4.s")
#endif

// CURRENT(32922)
#ifdef NON_MATCHING
s32 func_8010D4EC_11C49C(s16 arg0, s16 arg1, s16 *arg2, s16 *arg3, VehicleInstance *arg4) {
	f32 xIn;
	f32 zIn;
	f32 xArg;
	f32 zArg;
	f32 slopeMain;
	f32 interceptMain;
	f32 slopeEdge;
	f32 interceptEdge;
	f32 x0;
	f32 z0;
	f32 x1;
	f32 z1;
	f32 x2;
	f32 z2;
	f32 xHit;
	f32 zHit;
	f32 dx;
	f32 dz;
	s32 sideFlags[4];
	s32 sideA;
	s32 sideB;
	s32 startSide;
	s32 i;
	s32 outer;
	s32 closestCorner;
	s32 farthestCorner;
	s32 bestDist;
	s32 worstDist;
	s32 distSq;
	s32 chosenCorner;
	s32 firstCorner;
	s32 secondCorner;
	s16 firstAng;
	s16 secondAng;
	s16 centerAng;

	func_80003824_4424((f32)(*arg3 - arg1), (f32)(*arg2 - arg0));
	func_8010C4EC_11B49C(arg4);

	xArg = (f32)arg0;
	zArg = (f32)arg1;
	xIn = (f32)*arg2;
	zIn = (f32)*arg3;

	dx = xArg - xIn;
	if (xIn > xArg) {
		dx = -dx;
	}
	if (dx < 5.0f) {
		xIn = xArg + 5.0f;
	}

	slopeMain = (zIn - zArg) / (xIn - xArg);
	interceptMain = zArg - (slopeMain * xArg);

	for (i = 3; i >= 0; i--) {
		z0 = D_80159D5C->unk54 + (&D_80159DA4)[i];
		x0 = D_80159D5C->unk4C + (&D_80159D84)[i];
		sideFlags[i] = interceptMain < (z0 - (x0 * slopeMain));
	}

	bestDist = 0x7FFFFFFF;
	worstDist = 0;
	closestCorner = -1;
	farthestCorner = -1;

	for (outer = 2; outer > 0; outer--) {
		if ((sideFlags[0] == sideFlags[outer]) || (sideFlags[0] == sideFlags[outer + 1])) {
			continue;
		}

		x0 = arg4->unk4C;
		z0 = arg4->unk54;

		for (i = 3; i >= 0; i--) {
			dx = ((&D_80159D84)[i] + x0) - xArg;
			dz = ((&D_80159DA4)[i] + z0) - zArg;
			distSq = ((s32)dx * (s32)dx) + ((s32)dz * (s32)dz);

			if (distSq < bestDist) {
				bestDist = distSq;
				closestCorner = i;
			}

			if (distSq > worstDist) {
				worstDist = distSq;
				farthestCorner = i;
			}
		}

		x1 = D_80159D78[closestCorner] + x0;
		z1 = D_80159D98[closestCorner] + z0;

		slopeEdge = (zArg - z1) / (xArg - x1);
		interceptEdge = z1 - (slopeEdge * x1);
		startSide = interceptEdge < (zIn - (xIn * slopeEdge));

		firstCorner = -1;
		secondCorner = -1;
		for (i = 3; i >= 0; i--) {
			if ((i == closestCorner) || (i == farthestCorner)) {
				continue;
			}

			x2 = D_80159D78[i] + D_80159D5C->unk4C;
			z2 = D_80159D98[i] + D_80159D5C->unk54;
			if (startSide == (interceptEdge < (z2 - (slopeEdge * x2)))) {
				if (firstCorner == -1) {
					firstCorner = i;
					firstAng = func_80003824_4424(z2 - zArg, x2 - xArg);
				} else {
					secondCorner = i;
					secondAng = func_80003824_4424(z2 - zArg, x2 - xArg);
				}
			}
		}

		if (secondCorner == -1) {
			chosenCorner = firstCorner;
		} else {
			centerAng = func_80003824_4424(z1 - zArg, x1 - xArg);
			firstAng = func_800F9C50_108C00(centerAng, firstAng);
			secondAng = func_800F9C50_108C00(centerAng, secondAng);
			chosenCorner = secondCorner;
			if (((secondAng < 0) ? -secondAng : secondAng) < ((firstAng < 0) ? -firstAng : firstAng)) {
				chosenCorner = firstCorner;
			}
		}

		if (chosenCorner == -1) {
			*arg2 = -0x7FFF;
			*arg3 = -0x7FFF;
			return 0;
		}

		x0 = arg4->unk4C;
		z0 = arg4->unk54;
		x1 = D_80159D78[closestCorner] + x0;
		z1 = D_80159D98[closestCorner] + z0;
		xIn = D_80159D78[chosenCorner] + x0;
		zIn = D_80159D98[chosenCorner] + z0;

		dx = xIn - x1;
		if (x1 > xIn) {
			dx = -dx;
		}
		if (dx < 5.0f) {
			xIn = x1 + 5.0f;
		}

		dz = zIn - z1;
		if (z1 > zIn) {
			dz = -dz;
		}
		if (dz < 5.0f) {
			zIn = z1 + 5.0f;
		}

		slopeEdge = (zIn - z1) / (xIn - x1);
		interceptEdge = z1 - (slopeEdge * x1);

		x2 = D_80159D5C->unk4C;
		z2 = D_80159D5C->unk54;
		sideA = interceptEdge < (z2 - (slopeEdge * x2));
		sideB = interceptEdge < (zArg - (slopeEdge * xArg));

		xHit = (interceptMain - interceptEdge) / (slopeEdge - slopeMain);
		zHit = (slopeMain * xHit) + interceptMain;

		if ((D_80144D08_153CB8 < (f64)zHit) || ((f64)zHit < -32768.0) ||
			(D_80144D10_153CC0 < (f64)xHit) || ((f64)xHit < -32768.0)) {
			*arg2 = -0x7FFF;
			*arg3 = -0x7FFF;
		} else {
			*arg2 = (s16)(s32)xHit;
			*arg3 = (s16)(s32)zHit;
		}

		return sideA != sideB;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010D4EC_11C49C.s")
#endif

// CURRENT(4281)
#ifdef NON_MATCHING
s32 func_8010DC00_11CBB0(s32 arg0, s32 arg1, s32 arg2) {
	f32 dx;
	f32 dz;
	f32 *xOffsets;
	f32 *zOffsets;
	s32 i;
	s32 xDelta;
	s32 zDelta;
	s32 absX;
	s32 absZ;
	s16 trig;

	if (D_80159D6C == 2) {
		dx = (f32)(D_80159D5C->unk0 - arg0);
		dz = (f32)(D_80159D5C->unk4 - arg1);
		if (sqrtf((dx * dx) + (dz * dz)) <= (f32)(D_80159D64->unkC + arg2)) {
			return 1;
		}
		return 0;
	}

	xOffsets = &D_80159D84;
	zOffsets = &D_80159DA4;
	for (i = 4; i-- != 0;) {
		xDelta = ((s32)*xOffsets + D_80159D5C->unk0) - arg0;
		zDelta = ((s32)*zOffsets + D_80159D5C->unk4) - arg1;
		xOffsets--;
		zOffsets--;

		absX = -xDelta;
		if (absX < xDelta) {
			absX = xDelta;
		}

		if (arg2 >= absX) {
			absZ = -zDelta;
			if (absZ < zDelta) {
				absZ = zDelta;
			}

			if ((arg2 >= absZ) && (((xDelta * xDelta) + (zDelta * zDelta)) < (arg2 * arg2))) {
				return 1;
			}
		}
	}

	trig = coss(D_80159D5C->unk6);
	if (func_8010CF7C_11BF2C((s16)(s32)((((f64)(f32)trig / 32768.0) * (f64)arg2) + (f64)arg0),
			(s16)(s32)((((f64)(f32)sins(D_80159D5C->unk6) / 32768.0) * (f64)arg2) + (f64)arg1)) != 0) {
		return 1;
	}

	trig = coss(D_80159D5C->unk6);
	if (func_8010CF7C_11BF2C((s16)(s32)((f64)arg0 - ((((f64)(f32)trig / 32768.0) * (f64)arg2))),
			(s16)(s32)((f64)arg1 - ((((f64)(f32)sins(D_80159D5C->unk6) / 32768.0) * (f64)arg2)))) != 0) {
		return 1;
	}

	trig = sins(D_80159D5C->unk6);
	if (func_8010CF7C_11BF2C((s16)(s32)((f64)arg0 - ((((f64)(f32)trig / 32768.0) * (f64)arg2))),
			(s16)(s32)((((f64)(f32)coss(D_80159D5C->unk6) / 32768.0) * (f64)arg2) + (f64)arg1)) != 0) {
		return 1;
	}

	trig = sins(D_80159D5C->unk6);
	if (func_8010CF7C_11BF2C((s16)(s32)((((f64)(f32)trig / 32768.0) * (f64)arg2) + (f64)arg0),
			(s16)(s32)((f64)arg1 - ((((f64)(f32)coss(D_80159D5C->unk6) / 32768.0) * (f64)arg2)))) != 0) {
		return 1;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010DC00_11CBB0.s")
#endif

// CURRENT(1666)
#ifdef NON_MATCHING
s32 func_8010E040_11CFF0(s32 arg0, s32 arg1, s32 arg2) {
	f32 dx;
	f32 dz;
	f32 *xOffsets;
	f32 *zOffsets;
	s32 radius;
	s32 xDelta;
	s32 zDelta;
	s32 absX;
	s32 absZ;
	s16 trig;

	radius = arg2;

	if (D_80159D70 == 2) {
		dx = (f32)(D_80159D60->unk0 - arg0);
		dz = (f32)(D_80159D60->unk4 - arg1);
		return sqrtf((dx * dx) + (dz * dz)) <= (f32)(D_80159D68->unkC + radius);
	}

	xOffsets = &D_80159D94;
	zOffsets = &D_80159DB4;
	for (;;) {
		xDelta = ((s32)*xOffsets + D_80159D60->unk0) - arg0;
		zDelta = ((s32)*zOffsets + D_80159D60->unk4) - arg1;
		xOffsets--;
		zOffsets--;

		absX = (-xDelta < xDelta) ? xDelta : -xDelta;

		if (radius >= absX) {
			absZ = (-zDelta < zDelta) ? zDelta : -zDelta;

			if ((radius >= absZ) && (((xDelta * xDelta) + (zDelta * zDelta)) < (radius * radius))) {
				return 1;
			}
		}

		if ((u32)zOffsets < (u32)&D_80159DAC) {
			break;
		}
 	}

	trig = coss(*(u16 *)((u8 *)D_80159D60 + 6));
	if (func_8010D234_11C1E4((s16)(s32)((((f64)(f32)trig / 32768.0) * (f64)radius) + (f64)arg0),
			(s16)(s32)((((f64)(f32)sins(*(u16 *)((u8 *)D_80159D60 + 6)) / 32768.0) * (f64)radius) + (f64)arg1)) != 0) {
		return 1;
	}

	trig = coss(*(u16 *)((u8 *)D_80159D60 + 6));
	if (func_8010D234_11C1E4((s16)(s32)((f64)arg0 - ((((f64)(f32)trig / 32768.0) * (f64)radius))),
			(s16)(s32)((f64)arg1 - ((((f64)(f32)sins(*(u16 *)((u8 *)D_80159D60 + 6)) / 32768.0) * (f64)radius)))) != 0) {
		return 1;
	}

	trig = sins(*(u16 *)((u8 *)D_80159D60 + 6));
	if (func_8010D234_11C1E4((s16)(s32)((f64)arg0 - ((((f64)(f32)trig / 32768.0) * (f64)radius))),
			(s16)(s32)((((f64)(f32)coss(*(u16 *)((u8 *)D_80159D60 + 6)) / 32768.0) * (f64)radius) + (f64)arg1)) != 0) {
		return 1;
	}

	trig = sins(*(u16 *)((u8 *)D_80159D60 + 6));
	if (func_8010D234_11C1E4((s16)(s32)((((f64)(f32)trig / 32768.0) * (f64)radius) + (f64)arg0),
			(s16)(s32)((f64)arg1 - ((((f64)(f32)coss(*(u16 *)((u8 *)D_80159D60 + 6)) / 32768.0) * (f64)radius)))) != 0) {
		return 1;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010E040_11CFF0.s")
#endif

// CURRENT(7771)
#ifdef NON_MATCHING
s32 func_8010E480_11D430(void) {
	BuildingInstance *building;
	Unk80152CA0Entry *entry;
	VehicleInstance *vehicle;
	s16 x;
	s16 z;
	s32 i;
	u8 index;

	if (D_80152C96 == 0) {
		return 0;
	}

	i = D_80152C96 - 1;
	entry = &D_80152CA0[i];

	for (;;) {
		index = entry->unk0;
		vehicle = &vehicleInstances[index];

		if (D_80159D5C != vehicle) {
			if (entry->unk1 == 1) {
				building = &buildingInstances[index];
				x = (building->xCoord << 8) + 0x80;
				z = (building->zCoord << 8) + 0x80;

				if (func_8010DC00_11CBB0(x, z, 0x12) != 0) {
					goto found;
				}

				vehicle = &vehicleInstances[entry->unk0];
			}

			if (entry->unk1 == 2) {
				x = vehicle->unk0;
				z = vehicle->unk4;
				if (func_8010DC00_11CBB0(x, z, vehicleSpecs[vehicle->unk1A].unkC / 12) != 0) {
					goto found;
				}
			}
		}

		entry--;
		i--;
		if (i == 0) {
			return 0;
		}
	}

found:
	func_80102D00_111CB0(D_80159D5C, (D_80159D5C->unk0 - x) * 0.0625, 0.0f, (D_80159D5C->unk4 - z) * 0.0625);
	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010E480_11D430.s")
#endif

// CURRENT(4450)
#ifdef NON_MATCHING
s32 func_8010E684_11D634(VehicleInstance *arg0, AlienInstance *arg1) {
	AlienSpec *spec;
	f32 playerX;
	f32 alienX;
	f32 playerZ;
	f32 alienZ;
	f32 valueX;
	f32 valueZ;
	s32 deltaX;
	s32 deltaZ;
	s32 i;

	spec = &alienSpecs[arg1->specIndex];
	if (D_80159D6C == 2) {
		return 1;
	}

	playerX = arg0->unk0;
	alienX = arg1->unk0;
	playerZ = arg0->unk4;
	alienZ = arg1->unk4;

	for (i = 0; i < 4; i++) {
		valueX = D_80159D78[i] + playerX;
		valueZ = D_80159D98[i] + playerZ;

		deltaX = (s32)(valueX - alienX);
		deltaZ = (s32)(valueZ - alienZ);

		if (((deltaX * deltaX) + (deltaZ * deltaZ)) < spec->unk8) {
			return 1;
		}
	}

	D_80159D78[4] =
		(((f64)(f32)coss(arg0->unk6) / 32768.0) * (f64)spec->unkC) + (f64)arg1->unk0;
	D_80159D98[4] =
		(((f64)(f32)sins(arg0->unk6) / 32768.0) * (f64)spec->unkC) + (f64)arg1->unk4;
	D_80159D78[5] =
		(f64)arg1->unk0 - (((f64)(f32)coss(arg0->unk6) / 32768.0) * (f64)spec->unkC);
	D_80159D98[5] =
		(f64)arg1->unk4 - (((f64)(f32)sins(arg0->unk6) / 32768.0) * (f64)spec->unkC);
	D_80159D78[6] =
		(f64)arg1->unk0 - (((f64)(f32)sins(arg0->unk6) / 32768.0) * (f64)spec->unkC);
	D_80159D98[6] =
		(((f64)(f32)coss(arg0->unk6) / 32768.0) * (f64)spec->unkC) + (f64)arg1->unk4;
	D_80159D78[7] =
		(((f64)(f32)sins(arg0->unk6) / 32768.0) * (f64)spec->unkC) + (f64)arg1->unk0;
	D_80159D98[7] =
		(f64)arg1->unk4 - (((f64)(f32)coss(arg0->unk6) / 32768.0) * (f64)spec->unkC);

	for (i = 4; i < 8; i++) {
		if (func_8010CF7C_11BF2C((s16)(s32)D_80159D78[i], (s16)(s32)D_80159D98[i]) != 0) {
			return 1;
		}
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010E684_11D634.s")
#endif

// CURRENT(7430)
#ifdef NON_MATCHING
s32 func_8010EA54_11DA04(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 *arg4) {
	f32 sp64;
	f32 sp60;
	f32 sp54;
	f32 sp48;
	f32 sp44;
	f32 sp40;
	s16 camX;
	s16 camY;
	s32 temp;
	s32 absX;
	s32 absY;

	camX = D_80159D5C->unk0;
	temp = (s16)(((arg0 - arg2) >> 1) + arg0) - camX;
	if (temp < 0) {
		absX = -temp;
	} else {
		absX = temp;
	}

	camY = D_80159D5C->unk4;
	temp = (s16)(((arg1 - arg3) >> 1) + arg1) - camY;
	if (temp < 0) {
		absY = -temp;
	} else {
		absY = temp;
	}

	if ((absX + absY) >= ((D_80159D64->unkC * 2) + 0x200)) {
		return 0;
	}

	sp54 = arg0;
	sp48 = arg1;
	sp44 = arg2;
	sp40 = arg3;
	if (func_8010EF40_11DEF0(sp54, sp48, sp44, sp40, D_80159D78[0] + camX, D_80159D98[0] + camY, D_80159D78[1] + camX,
						 D_80159D98[1] + camY, &sp64, &sp60) != 0) {
		goto found;
	}

	camX = D_80159D5C->unk0;
	camY = D_80159D5C->unk4;
	if (func_8010EF40_11DEF0(sp54, sp48, sp44, sp40, D_80159D78[1] + camX, D_80159D98[1] + camY, D_80159D78[2] + camX,
						 D_80159D98[2] + camY, &sp64, &sp60) != 0) {
		goto found;
	}

	camX = D_80159D5C->unk0;
	camY = D_80159D5C->unk4;
	if (func_8010EF40_11DEF0(sp54, sp48, sp44, sp40, D_80159D78[2] + camX, D_80159D98[2] + camY, D_80159D78[3] + camX,
						 D_80159D98[3] + camY, &sp64, &sp60) != 0) {
		goto found;
	}

	camX = D_80159D5C->unk0;
	camY = D_80159D5C->unk4;
	if (func_8010EF40_11DEF0(sp54, sp48, sp44, sp40, D_80159D78[3] + camX, D_80159D98[3] + camY, D_80159D78[0] + camX,
						 D_80159D98[0] + camY, &sp64, &sp60) != 0) {
	found:
		*arg4 = func_800F9D24_108CD4((s16)(s32)sp64, (s16)(s32)sp60);
		return 1;
	}

	*arg4 = 0;
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010EA54_11DA04.s")
#endif

void func_8010ED84_11DD34(f32 *arg0, f32 *arg1, s32 arg2) {
	f32 dist;
	f32 mag;
	f32 scale;

	dist = D_80159D68->unkC;
	if (arg2 != 0) {
		mag = sqrtf((D_80159D34 * D_80159D34) + (D_80159D38 * D_80159D38));
		if ((f64)mag < 1.0) {
			*arg0 = 0.0f;
			*arg1 = 0.0f;
			return;
		}
		scale = dist / mag;
		*arg0 = D_80159D60->unk0 + (D_80159D34 * scale);
		*arg1 = D_80159D60->unk4 + (D_80159D38 * scale);
		return;
	}

	mag = sqrtf((D_80159D3C * D_80159D3C) + (D_80159D40 * D_80159D40));
	if ((f64)mag < 1.0) {
		*arg0 = 0.0f;
		*arg1 = 0.0f;
		return;
	}
	scale = dist / mag;
	*arg0 = D_80159D60->unk0 + (D_80159D3C * scale);
	*arg1 = D_80159D60->unk4 + (D_80159D40 * scale);
}

// CURRENT(6457)
#ifdef NON_MATCHING
s32 func_8010EF40_11DEF0(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 *arg8, f32 *arg9) {
	f32 temp_f0;
	f32 temp_f18;
	f32 var_f20;
	f32 var_f22;
	s32 var_v0;

	var_f20 = arg0;
	var_f22 = arg1;
	if (arg2 < arg0) {
		var_f20 = arg2;
		arg2 = arg0;
	}
	if (arg3 < var_f22) {
		var_f22 = arg3;
		arg3 = arg1;
	}
	if (var_f20 == arg2) {
		if (arg4 == arg6) {
			return 0;
		}
		if ((!(arg4 <= var_f20) || !(var_f20 <= arg6)) && (!(var_f20 <= arg4) || !(arg6 <= var_f20))) {
			return 0;
		}
		temp_f18 = arg7 - arg5;
		if ((f64)temp_f18 == 0.0) {
			*arg8 = var_f20;
			var_v0 = 0;
			*arg9 = arg5;
			if (var_f22 <= arg5) {
				var_v0 = 1;
			}
			if (var_v0 != 0) {
				var_v0 = 0;
				if (arg5 <= arg3) {
					return 1;
				}
			}
			return var_v0;
		}
		temp_f0 = temp_f18 / (arg6 - arg4);
		var_v0 = 0;
		*arg8 = var_f20;
		temp_f18 = (temp_f0 * var_f20) + (arg5 - (temp_f0 * arg4));
		*arg9 = temp_f18;
		if (var_f22 <= temp_f18) {
			var_v0 = 1;
		}
		if (var_v0 != 0) {
			var_v0 = 0;
			if (temp_f18 <= arg3) {
				return 1;
			}
		}
		return var_v0;
	}
	if (arg5 == arg7) {
		return 0;
	}
	if ((!(arg5 <= var_f22) || !(var_f22 <= arg7)) && (!(var_f22 <= arg5) || !(arg7 <= var_f22))) {
		return 0;
	}
	temp_f18 = arg6 - arg4;
	if ((f64)temp_f18 == 0.0) {
		*arg8 = arg4;
		var_v0 = 0;
		*arg9 = var_f22;
		if (var_f20 <= arg4) {
			var_v0 = 1;
		}
		if (var_v0 != 0) {
			var_v0 = 0;
			if (arg4 <= arg2) {
				return 1;
			}
		}
		return var_v0;
	}
	var_v0 = 0;
	temp_f0 = (arg7 - arg5) / temp_f18;
	temp_f18 = (var_f22 - (arg5 - (temp_f0 * arg4))) / temp_f0;
	*arg8 = temp_f18;
	*arg9 = var_f22;
	if (var_f20 <= temp_f18) {
		var_v0 = 1;
	}
	if (var_v0 != 0) {
		var_v0 = 0;
		if (temp_f18 <= arg2) {
			var_v0 = 1;
		}
	}
	return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010EF40_11DEF0.s")
#endif

void func_8010F218_11E1C8(void) {
	VehicleInstance *vehicle;

	vehicle = D_80052B34;
	if (!(vehicleSpecs[vehicle->unk1A].unk4C & 0x10000000) || (vehicle->unk1A == 0)) {
		if ((gameplayMode != 0xB) && (gameplayMode != 3)) {
			if ((currentLevel == 5) && (D_8015931A < 0xC8)) {
				D_8015931A = 0xC8;
			}

			if (D_8015931A < 0) {
				D_8015931A = 0;
			}
			if (D_8015931A >= 0xC9) {
				D_8015931A = 0xC8;
			}

			D_8015931A++;

			if (vehicle->unk1A == 0) {
				if (D_8015931A == 0xC8) {
					func_8001A650_1B250(5);
					vehicle = D_80052B34;
				}
			} else if (D_8015931A < 0xC8) {
				D_8015931A = 0xC8;
			}

			if (D_8015931A >= 0xC9) {
				if (currentLevel != 5) {
					func_80123E90_132E40(vehicle, 8);
					vehicle = D_80052B34;
				}

				if (currentLevel == 5) {
					func_801371B8_146168(vehicle, 0xFE, vehicle->unk0, D_80222A72, vehicle->unk4, 0.5f);
					vehicle = D_80052B34;
				}

				if (vehicle->unk1A == 0) {
					func_800CC7B0_DB760(5, 0x28, 5, vehicle->unk0, vehicle->unk2, vehicle->unk4);

					if (currentLevel == 5) {
						if (!(D_80052A8C & 7)) {
							vehicle = D_80052B34;
							func_800DEA08_ED9B8(vehicle->unk0, vehicle->unk2, vehicle->unk4, 0x1E, 4, 2,
												0x1E, 0xC8, 0xFF, 0xD2, 0xAA);
						}
						func_80123E90_132E40(D_80052B34, 8);
					}

					vehicle = D_80052B34;
				} else if (currentLevel == 5) {
					if (!(D_80052A8C & 7)) {
						func_800DEA08_ED9B8(vehicle->unk0, vehicle->unk2 + 0x32, vehicle->unk4, 0xC8, 4, 4, 0x28,
											0xC8, 0xFF, 0xD2, 0xAA);
						vehicle = D_80052B34;
					}
					func_80123E90_132E40(vehicle, 0x28);
					vehicle = D_80052B34;
				}
			}

			if (D_80159320 & 0x20000) {
				if (vehicle == NULL) {
					func_80123E90_132E40(vehicle, 4);
					vehicle = D_80052B34;
				}

				if (D_8015931A >= 0xC9) {
					func_80123E90_132E40(vehicle, 8);
					vehicle = D_80052B34;
				}
			}

			if (vehicle->unk1C <= 0) {
				D_80157A38 = 3;
				vehicle->unk2E -= 5;
				vehicle = D_80052B34;
				if (vehicle->unk2E < 0x32) {
					vehicle->unk2E = 0x32;
				}
			}

			D_8013FD84_14ED34 = 0x28;
		}
	}
}

void func_8010F5D8_11E588(VehicleInstance *arg0) {
	u8 temp_v0;
	s32 speed;
	s32 neg;
	s32 val;

	temp_v0 = vehicleSpecs[arg0->unk1A].unk55;
	if (temp_v0 != 0 && D_80140768_14F718[temp_v0].unk2 > 0) {
		speed = arg0->unk12;
		neg = -speed;
		if (neg < speed) {
			val = speed;
		} else {
			val = neg;
		}
		func_80123E90_132E40(arg0, (s16)(s32)(sqrtf((f32)(val + 1)) * 40.0f));
	} else {
		speed = arg0->unk12;
		neg = -speed;
		if (neg < speed) {
			val = speed;
		} else {
			val = neg;
		}
		func_80123E90_132E40(arg0, (s16)(s32)(sqrtf((f32)(val + 1)) * 25.0f));
	}
	arg0->unk22 += func_800038E0_44E0() & 0x400;
	arg0->unk26 += func_800038E0_44E0() & 0x400;
	arg0->unk24 += func_800038E0_44E0() & 0x400;
}

// CURRENT(920)
#ifdef NON_MATCHING
s32 func_8010F72C_11E6DC(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	BuildingInstance *building;
	s16 idx;
	s16 temp;

	idx = func_8011D260_12C210((s8)(arg0 >> 8), (s8)(arg2 >> 8));
	if (idx == -1) {
		return 0;
	}

	building = &buildingInstances[idx];
	if ((building->buildingType != 0x1F) && (D_8015EA28 != building->buildingType)) {
		return 0;
	}

	if ((arg1 + arg3) < building->yCoord) {
		return 0;
	}

	temp = arg2;
	if (building->unk8 & 1) {
		temp = arg0;
	}

	temp = (temp & 0xFF) >> 2;
	if (temp < 9) {
		return 1;
	}

	return temp >= 0x38;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010F72C_11E6DC.s")
#endif

// CURRENT(2210)
#ifdef NON_MATCHING
void func_8010F834_11E7E4(Unk80052B40 *arg0, s32 arg1, s32 arg2, s32 arg3) {
	float fx = (float)(arg0->unk0 - arg1);
	float fy = (float)(arg0->unk2 - arg2);
	float fz = (float)(arg0->unk4 - arg3);
	float len = sqrtf(fx * fx + fy * fy + fz * fz);
	float nx;
	float ny;
	float nz;
	u16 flags;

	if (len == 0.0f) {
		return;
	}

	nx = fx / len;
	ny = fy / len;
	nz = fz / len;

	/* read halfword at offset 0x20 from the base pointer (outer struct flag) */
	flags = *(u16 *)((char *)arg0 + 0x20);

	if (!(flags & 2)) {
		ny = 0.0f;
	} else if (0.0f < ny) {
		ny *= 2.0f;
	}

	/* store length into offsets 0x30,0x34,0x38 relative to base */
	*(float *)((char *)arg0 + 0x30) = len;
	*(float *)((char *)arg0 + 0x34) = len;
	*(float *)((char *)arg0 + 0x38) = len;

	/* scale normalized vector by 10 and call handler */
	func_80102D00_111CB0((VehicleInstance *)arg0, nx * 10.0f, ny * 10.0f, nz * 10.0f);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010F834_11E7E4.s")
#endif

void func_8010F93C_11E8EC(Unk80052B40 *arg0, Unk80052B40 *arg1) {
	func_8010F834_11E7E4(arg0, arg1->unk0, arg1->unk2, arg1->unk4);
}

void func_8010F96C_11E91C(Unk80052B40 *arg0, Unk80052B40_fp *arg1)
{
  Unk80052B40_fp *temp = arg1;
  func_8010F834_11E7E4(arg0, arg1->unk0 >> 16, temp->unk4 >> 16, temp->unk8 >> 16);
}

void func_8010F9B4_11E964(Unk80052B40 *arg0, s32 arg1) {
	s32 var_s0;
	s32 var_a2;
	s32 var_a3;
	Unk80259D90 *entry;

	if (arg1 == -1) {
		var_s0 = arg0->unk0 + 1;
		var_a2 = arg0->unk2;
		var_a3 = arg0->unk4;
	} else {
		entry = &D_80259D90[arg1];
		if (entry->unk0 >= 0xE) {
			var_s0 = (entry->unk40 + entry->unk20) / 2;
			var_a2 = (entry->unk42 + entry->unk22) / 2;
			var_a3 = (entry->unk44 + entry->unk24) / 2;
		} else {
			var_s0 = entry->unk4;
			var_a3 = entry->unk6;
			var_a2 = func_800B84D0_C7480(var_s0, var_a3) >> 8;
		}
	}
	func_8010F834_11E7E4(arg0, var_s0, var_a2, var_a3);
}

void func_8010FABC_11EA6C(void) { D_80158FDC = 0; }

void func_8010FAC8_11EA78(u8 arg0, s32 arg1) {
	s32 idx = D_80158FDC;
	D_80158F98[idx].unk0 = arg0;
	D_80158FDC = idx + 1;
	D_80158F98[idx].unk4 = arg1;
}

// CURRENT(8988)
#ifdef NON_MATCHING
s32 func_8010FAFC_11EAAC(VehicleInstance *arg0) {
	Unk80158F98 *entry;
	s32 i;
	s32 ret;
	f64 scale;
	f64 twenty;
	f64 half;
	VehicleSpec *vspec;
	AlienSpec *aspec;

	entry = D_80158F98;
	i = D_80158FDC;
	ret = 0;
	if (i != 0) {
		i--;
		half = 0.5;
		twenty = 20.0;
		scale = D_80144D18_153CC8;
		aspec = alienSpecs;
		vspec = vehicleSpecs;

		do {
			switch (entry->unk0) {
				case 1: {
					VehicleInstance *other;

					other = (VehicleInstance *)entry->unk4;
					if (other != NULL) {
						func_8010F93C_11E8EC((Unk80052B40 *)arg0, (Unk80052B40 *)other);
					}
					continue;
				}

				case 2: {
					VehicleInstance *other;

					other = (VehicleInstance *)entry->unk4;
					if (other != NULL) {
						func_8010F834_11E7E4((Unk80052B40 *)arg0, other->unk0, other->unk2, other->unk4);
					}
					continue;
				}

				case 3: {
					VehicleInstance *other;

					other = (VehicleInstance *)entry->unk4;
					if (other != NULL) {
						func_8010F96C_11E91C((Unk80052B40 *)arg0, (Unk80052B40_fp *)other);
					}
					continue;
				}

				case 4: {
					VehicleInstance *other;

					other = (VehicleInstance *)entry->unk4;
					if (other != NULL) {
						func_8010F9B4_11E964((Unk80052B40 *)arg0, (s32)other);
					}
					continue;
				}

				case 5:
					arg0->unk20 &= ~entry->unk4;
					break;

				case 6:
					arg0->unk20 |= entry->unk4;
					break;

				case 7:
					arg0->unk20 |= 0x800;
					arg0->unk20 &= 0xFFFD;
					func_800FB468_10A418(arg0, (f32)entry->unk4);
					if (arg0->unk34 < 0.0f) {
						arg0->unk34 = 0.0f;
					}
					if (currentLevel != 4) {
						continue;
					}
					if (arg0->unk1A != 0xE) {
						continue;
					}
					func_800FDB58_10CB08(arg0);
					ret = 1;
					continue;

				case 8:
					arg0->unk20 &= 0xF7FF;
					D_80159320 |= 0x200000;
					break;

				case 9:
					func_800FB468_10A418(arg0, (f32)entry->unk4);
					arg0->unk34 = 0.0f;
					if (currentLevel != 4) {
						continue;
					}
					if (arg0->unk1A != 0xE) {
						continue;
					}
					func_800FDB58_10CB08(arg0);
					ret = 1;
					continue;

				case 10: {
					VehicleInstance *other;
					s32 speed;
					s16 value;
					f32 speedF;

					speed = 0x1770;
					if (vspec[arg0->unk1A].unk32 >= 0x1771) {
						speed = vspec[arg0->unk1A].unk32;
					}

					other = (VehicleInstance *)entry->unk4;
					speedF = func_800FB11C_10A0CC(arg0);
					value = (s16)(s32)(((f64)((f32)speed * speedF)) / scale);

					if ((twenty < (f64)func_800FB11C_10A0CC(arg0)) && (aspec[other->unk1A].unk32 < 0x7D1)) {
						func_80088154_97104((VehicleInstance *)entry->unk4, value, func_800FB160_10A110(arg0));
					}

					func_80083EF4_92EA4((AlienInstance *)other, arg0, (s16)(vspec[arg0->unk1A].unk32 * arg0->unk12), arg0->unkE);
					if (D_800475F0 >= 0x33) {
						func_80083EF4_92EA4((AlienInstance *)entry->unk4, arg0, -0x63C0, (s16)-other->unkE);
					}

					if (other->unk1A >= 3) {
						func_800FB430_10A3E0(arg0, (f32)((f64)arg0->unk58 * half));
						func_800FB11C_10A0CC(arg0);
						if (aspec[other->unk1A].unk32 >= 0x1771) {
							continue;
						}
					}
					continue;
				}

				case 11:
					break;

				case 12:
					func_80088154_97104((VehicleInstance *)entry->unk4, 0x7FFE, arg0->unk6);
					break;
			}

			entry++;
		} while (i-- != 0);
	}

	return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8010FAFC_11EAAC.s")
#endif

s32 func_8010FF84_11EF34(VehicleInstance *arg0, s32 arg1)
{
	AlienInstance *alien;
	s32 i;
	s32 *noLog;
	AlienSpec *spec;
	i = 0xFF;
	noLog = &arg1;
	while (i--)
	{
		alien = &alienInstances[i];
		if (alien->unk20 & 0x600 &&
			(((!(alien->unk20 & 0x100000)) || (alien->specIndex == 0x1A)) || (alien->specIndex == 0x1B)))
		{
			spec = &alienSpecs[alien->specIndex];
			if ((spec->unk54 & 8) &&
				(func_8007E608_8D5B8(alien, arg0)) &&
				(func_8010E684_11D634(arg0, alien)))
			{
				if ((alien->specIndex < 3) || (alien->specIndex == 0x20))
				{
					if (!arg1)
					{
						func_80080D98_8FD48((alien - alienInstances), (u8)(arg0 - vehicleInstances));
					}
				}
				else
				{
					if (!arg1)
					{
						func_8010FAC8_11EA78(7, (s32)alien);
					}
					if (!(arg0->unk20 & 2))
					{
						return 6;
					}
					if (!arg1)
					{
						func_8010FAC8_11EA78(1, (s32)alien);
					}
					return 4;
				}
			}
		}
	}

	return 0;
}

// CURRENT(1710)
#ifdef NON_MATCHING
// Push player away from shield wall
// Skipping call lets player go through shield walls
s32 func_80110144_11F0F4(VehicleInstance *arg0, s32 arg1) {
	f32 *var_s2;
	f32 *var_s3;
	s16 temp_v0;
	s32 var_s4;
	s32 var_v0;
	s32 i;

	var_s2 = &D_80159D84;
	var_s3 = &D_80159DA4;

	i = 3;
	while (1) {
		var_s4 = func_800B0D10_BFCC0((s32) (*var_s2 + arg0->unk4C), (s32) (*var_s3 + arg0->unk54), 0);
		if ((var_s4 != 0) &&
			(func_800BD688_CC638((s16) (s32) (*var_s2 + arg0->unk4C), (s16) (s32) arg0->unk50, (s16) (s32) (*var_s3 + arg0->unk54), arg0) != 0)) {
			if (arg1 == 0) {
				temp_v0 = func_800B0DF4_BFDA4((s32) (*var_s2 + arg0->unk4C), (s32) (*var_s3 + arg0->unk54), 0, var_s4);
				if ((temp_v0 == 0x4000) || (temp_v0 == -0x4000)) {
					var_s4 = 1;
					if (temp_v0 == 0x4000) {
						var_v0 = 0x32;
					} else {
						var_v0 = -0x32;
					}
					arg0->unk30 += (f32) var_v0;
				} else {
					var_s4 = 0;
					if (temp_v0 != 0) {
						var_v0 = 0x32;
					} else {
						var_v0 = -0x32;
					}
					// Setting this value causes the pushback
					arg0->unk38 += (f32) var_v0;
				}

				if ((arg0 == D_80052B34) && (D_80158F80 == 0)) {
					D_80158F80 = 6;
					func_800C4938_D38E8((s16) (s32) (*var_s2 + arg0->unk4C), (s16) (arg0->unk2 + 0x2D), (s16) (s32) (*var_s3 + arg0->unk54), var_s4, 0x78);
					func_800EBD5C_FAD0C(temp_v0);
				}
			}

			return 10;
		}

		var_s2--;
		var_s3--;
		if (i-- != 0) {
			continue;
		}
		break;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80110144_11F0F4.s")
#endif

void func_801103B4_11F364(VehicleInstance *arg0, VehicleSpec *arg1) {
	BeaconDisplayEntry *entry;
	s32 i;

	if (arg0 == D_80052B34) {
		entry = &D_8014F7DE + 1;
		i = 0x10;
		while (entry--, i--) {
			if (entry->unkC != -1) {
				if ((arg0->unk2 - 0xA) < entry->unk2 && entry->unk2 < (arg0->unk2 + arg1->unk38 + 0xA) && func_8010DC00_11CBB0(entry->unk0, entry->unk4, 0x14) != 0) {
					if (func_800A8E18_B7DC8(entry->unkC) != 0) {
						func_800153D8_15FD8(0xC5);
					}
					func_800CBD1C_DACCC(entry->unk10);
					entry->unkC = -1;
				}
			}
		}
	}
}

// CURRENT(4651)
#ifdef NON_MATCHING
s32 func_8011049C_11F44C(VehicleInstance *arg0, VehicleSpec *arg1, s32 arg2) {
	VehicleInstance *var_s7;
	VehicleSpec *var_s2;
	s32 var_fp;
	f32 *var_s0;
	f32 *var_s1;
	s32 var_s6;
	Unk8015FAD0 *entry;
	s16 minY;
	s16 maxY;
	s32 outY;
	s32 flagsAccum;
	s32 checkFlags;
	s32 sp8C;
	s32 xPos;
	s32 zPos;
	s32 xMax;
	s32 zMax;
	s32 xMin;
	s32 zMin;
	s32 yCenter;
	s32 yExtent;

	flagsAccum = 0;
	outY = 0;
	minY = arg0->unk2;
	maxY = minY + arg1->unk38;
	var_s2 = arg1;
	var_s7 = arg0;
	var_fp = arg2;
	var_s1 = &D_80159DA4;
	var_s0 = &D_80159D84;
	var_s6 = 3;

	while (1) {
		checkFlags = func_8012DDA8_13CD58((s16) (s32) (*var_s1 + var_s7->unk4C), (s16) (s32) var_s7->unk50,
			(s16) (s32) (*var_s0 + var_s7->unk54), var_s2->unk38, var_s7, var_fp, &outY);
		if (checkFlags & 1) {
			if ((var_s7->unk20 & 2) != 0) {
				if (var_fp == 0) {
					if (!(checkFlags & 4) && (var_fp == 0)) {
						func_8010FAC8_11EA78(0xB, sp8C);
					}
					return 9;
				}
			}
			if (checkFlags & 8) {
				return 9;
			}
			return 6;
		}

		if (checkFlags & 2) {
			if (var_fp == 0) {
				func_8010FAC8_11EA78(6, outY);
			}
		}

		var_s0--;
		var_s1--;
		if (var_s6-- != 0) {
			continue;
		}
		break;
	}

	entry = &D_8015FAD0[0x18];
	var_s6 = 0x18;
	while (1) {
		if (entry->unk2C >= 4) {
			yCenter = entry->unk4 >> 0x10;
			yExtent = entry->unk1C;
			if ((yCenter + yExtent) >= minY) {
				if (maxY >= (yCenter - yExtent)) {
					xPos = entry->unk0 >> 0x10;
					zPos = entry->unk8 >> 0x10;
					xMax = xPos + entry->unk18;
					zMax = zPos + entry->unk1A;
					xMin = xPos - entry->unk18;
					zMin = zPos - entry->unk1A;

					if (func_8010CF7C_11BF2C((s16) xMax, (s16) zMax) || func_8010CF7C_11BF2C((s16) xMax, (s16) zMin) ||
						func_8010CF7C_11BF2C((s16) xMin, (s16) zMax) || func_8010CF7C_11BF2C((s16) xMin, (s16) zMin)) {
						checkFlags = func_8012DF90_13CF40(entry, var_s7, var_fp);
						if (checkFlags & 1) {
							if ((var_s7->unk20 & 2) != 0) {
								if (var_fp == 0) {
									if (!(checkFlags & 4)) {
										func_8010FAC8_11EA78(0xB, (s32) entry);
									}
								}
							}
							flagsAccum |= checkFlags;
						}

						if ((checkFlags & 2) && (var_fp == 0)) {
							func_8010FAC8_11EA78(6, yCenter + yExtent);
						}
					}
				}
			}
		}

		entry--;
		if (var_s6-- != 0) {
			continue;
		}
		break;
	}

	if (flagsAccum & 1) {
		if ((var_s7->unk20 & 2) || (flagsAccum & 8)) {
			return 9;
		}
		return 6;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_8011049C_11F44C.s")
#endif

// https://decomp.me/scratch/kdokH
// CURRENT(6373)
#ifdef NON_MATCHING
s32 func_80110818_11F7C8(VehicleInstance *arg0, VehicleSpec *arg1, s32 arg2) {
	s16 sp76;
	s16 sp74;
	s16 temp_s7;

	sp76 = func_800FAE60_109E10(arg0);
	sp74 = func_800FADF8_109DA8(sp76);

	temp_s7 = D_80158FD8;
	while (temp_s7--) {
			u8 sp44_val = D_80158E80[temp_s7];
			if ((arg0 == D_80158E64) && (temp_s7 == D_80159316)) { continue; }
			if (sp44_val == sp76) { continue; }
			if ((currentLevel == 2) && (arg0->unk1A == 0) && (vehicleInstances[sp44_val].unk1A == 5)) { }
			else {
				VehicleInstance *var_s2 = &vehicleInstances[sp44_val];
				if ((var_s2->unk1A != 0) || (arg0->unk1A != 5)) {
					s32 deltaX = arg0->unk0 - var_s2->unk0;
					s32 deltaZ = arg0->unk4 - var_s2->unk4;
					s32 bound = vehicleSpecs[var_s2->unk1A].unkC + arg1->unkC;
					s32 absX = deltaX >= 0 ? deltaX : -deltaX;
					
					if (absX < bound) {
						s32 absZ = deltaZ >= 0 ? deltaZ : -deltaZ;
						if (absZ < bound) {
							s32 var_s4 = 0;
							func_8010CA38_11B9E8(var_s2);
							if ((D_80159D6C == 2) && (D_80159D70 == 2)) {
								if ((func_8007E500_8D4B0(arg0, arg1, var_s2, &vehicleSpecs[var_s2->unk1A]) != 0) && (func_801073FC_1163AC(arg0, var_s2, 0, 0) != 0)) {
									var_s4 = 1;
								}
							} else {
								if (((vehicleSpecs[var_s2->unk1A].unk38 + var_s2->unk2) >= arg0->unk2) && ((vehicleSpecs[arg0->unk1A].unk38 + arg0->unk2) >= var_s2->unk2)) {
									if (D_80159D6C == 2) {
										if ((func_8010E040_11CFF0(arg0->unk0, arg0->unk4, arg1->unkC) != 0) && (func_801073FC_1163AC(arg0, var_s2, 0, 0) != 0)) {
											var_s4 = 1;
										}
									} else if (D_80159D70 == 2) {
										if ((func_8010DC00_11CBB0(var_s2->unk0, var_s2->unk4, vehicleSpecs[var_s2->unk1A].unkC) != 0) && (func_801073FC_1163AC(arg0, var_s2, 0, 0) != 0)) {
											var_s4 = 1;
										}
									} else {
										f32 *s1 = &D_80159D78;
										f32 *s0 = D_80159D98;
										while ((u32)s0 < (u32)&D_80159D98[4]) {
											if ((func_8010D234_11C1E4((s16)(s32)(*s1 + (f32)arg0->unk0), (s16)(s32)(*s0 + (f32)arg0->unk4)) != 0) && (func_801073FC_1163AC(arg0, var_s2, (s32)*s1, (s32)*s0) != 0)) {
												var_s4 = 1; break;
											}
											s0++; s1++;
										}
										s0 = &D_80159D98[4];
										s1 = (f32 *)((u8 *)D_80159D98 - 0x10);
										while (s0 != &D_80159D98[8]) {
											if ((func_8010CF7C_11BF2C((s16)(s32)(*s1 + (f32)var_s2->unk0), (s16)(s32)(*s0 + (f32)var_s2->unk4)) != 0) && (func_801073FC_1163AC(arg0, var_s2, (s32)*s1, (s32)*s0) != 0)) {
												var_s4 = 1; break;
											}
											s0++; s1++;
										}
									}
								} else { continue; }
							}
							if (var_s4 != 0) {
								if ((currentLevel == 4) && (arg0->unk1A == 0x10)) {
									s32 tempVal = vehicleSpecs[var_s2->unk1A].unk61 << 8;
									if (var_s2->unk3C < tempVal) { var_s2->unk3C = tempVal; D_8014D17C++; }
								}
								if ((arg0->unk20 & 0x400) && (var_s2->unk1A == 0)) {
									if (arg2 == 0) {
										func_80124118_1330C8(var_s2, (s16)(s32)(arg0->unk58 * 10.0f));
										if (arg0->unk20 & 2) { func_8010FAC8_11EA78(1, var_s2); }
									}
									return 7;
								}
								if ((arg0->unk1A == 0) && !(var_s2->unk20 & 0x400)) {
									if (!(currentControllerStates[0].button & BUTTON_C_DOWN) && (D_80052A88 == 0) && (arg2 == 0)) {
										if (arg0->unk20 & 2) { func_8010FAC8_11EA78(1, var_s2); }
										return 7;
									}
									if (arg2 != 0) { return 7; }
									if (func_80076088_85038(D_80158BD0[sp44_val]) == 0) {
										if (D_80158BD0[sp44_val] == 3) { func_8001A650_1B250(0xD6); return 7; }
										if (((currentLevel != 1) || (var_s2->unk1A != 0x12)) && ((currentLevel != 4) || (var_s2->unk1A != 0x12)) && (var_s2->unk1A != 0x13)) {
											func_8001A650_1B250(0x12);
										}
										return 7;
									}
									if (D_80159300 != 0) { return 7; }
									if (func_800E60CC_F507C(2, sp44_val) != 0) { return 7; }
									*(s16 *)((u8 *)D_80158E80 - 0x18) = arg0->unk0;
									*((u8 *)D_80158E80 - 0x10) = 0xC8;
									*((u8 *)D_80158E80 - 0xF) = 0xC8;
									*((u8 *)D_80158E80 - 0xE) = 0xC8;
									*(s16 *)((u8 *)D_80158E80 - 0x16) = arg0->unk4;
									func_800EBE74_FAE24(0, sp44_val, sp74, D_80052B34);
									D_80159300 = 0x18;
									D_80052A88 = 0;
									return 0;
								}
								if ((arg0->unk20 & 2) && (arg2 == 0)) { func_8010FAC8_11EA78(1, var_s2); }
								D_80159320 |= 0x20000000;
								D_80158E7C = var_s2;
								return 6;
							}
							if ((var_s2->unk1A == 0) || (arg0->unk1A == 0)) { D_80052A88 = 0; }
					}}
				}
			}
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80110818_11F7C8.s")
#endif

// CURRENT(57173)
#ifdef NON_MATCHING
s32 func_80110FB4_11FF64(VehicleInstance *arg0, s32 arg1) {
	VehicleSpec *vehicleSpec;
	BuildingInstance *building;
	BuildingSpec *buildingSpec;
	typedef struct {
		s8 unk0;
		u8 pad1[3];
		s16 unk4;
		s16 unk6;
		u8 pad8[0x0A];
		s16 unk12;
		u8 pad14[0x0C];
		s16 unk20;
		s16 unk22;
		s16 unk24;
		u8 pad26[0x1A];
		s16 unk40;
		u8 pad42[2];
		s16 unk44;
	} Unk8025CC20Entry;
	typedef struct {
		u8 pad0[4];
		s16 unk4;
		s16 unk6;
		s16 unk8;
		s16 unkA;
	} Unk80052560Entry;
	Unk8025CC20Entry *entry;
	Unk80052560Entry *spawn;
	s16 spDA;
	s16 spD8;
	s16 spD6;
	s16 spD4;
	s16 spD2;
	s16 spD0;
	s16 spCE;
	s16 spCC;
	s16 spCA;
	s16 spC8;
	s32 spC0;
	f32 sp98;
	f32 sp94;
	s32 sp7C;
	s32 sp70;
	s32 i;
	s32 j;
	s32 foundSurface;
	s32 foundBlocking;
	s32 minX;
	s32 minZ;
	s32 maxX;
	s32 maxZ;
	s32 gridX;
	s32 gridZ;
	s16 bestY;
	s32 bestX;
	s32 zForBest;
	f64 var_f0;

	func_800FAE60_109E10(arg0);
	D_80159320 &= 0xDFFFFFFF;
	vehicleSpec = &vehicleSpecs[arg0->unk1A];

	if (currentLevel == 2) {
		if (arg0->unk1A == 5) {
			goto block_301;
		}
	}

	func_8010C4EC_11B49C(arg0);
	spD2 = arg0->unk2;
	spD4 = spD2 + vehicleSpec->unk38;

	if (arg1 == 0) {
		func_801103B4_11F364(arg0, vehicleSpec);
	}

	i = func_8011049C_11F44C(arg0, vehicleSpec, arg1);
	if (i != 0) {
		return i;
	}

	i = 7;
	if (currentLevel == 1) {
		s16 *strip = D_80158BC8;

		for (; i != 0; i--, strip -= 4) {
			if ((strip[3] != -0x8000) && (spD4 >= strip[1]) && (strip[3] >= spD2) && (func_8010CF7C_11BF2C(strip[0], strip[2]) != 0)) {
				if (arg1 == 0) {
					func_800FB430_10A3E0(arg0, (f32) ((s16) arg0->unk12 >> 1));
					arg0->unk30 = arg0->unk30 / 2.0f;
					arg0->unk38 = arg0->unk38 / 2.0f;
				}
				return 9;
			}
		}
	}

	foundBlocking = 0;
	foundSurface = 0;
	minX = 0x7FFF;
	minZ = 0x7FFF;
	maxX = -0x8000;
	maxZ = -0x8000;

	for (i = 0; i < 4; i++) {
		s32 x = (s32) (D_80159D78[i] + (f32) arg0->unk0);
		s32 z = (s32) (D_80159D98[i] + (f32) arg0->unk4);

		if (x < minX) {
			minX = x;
		}
		if (x > maxX) {
			maxX = x;
		}
		if (z < minZ) {
			minZ = z;
		}
		if (z > maxZ) {
			maxZ = z;
		}
	}

	gridX = (minX & ~0x7F) | 0x40;
	maxX += 0x80;
	gridZ = (minZ & ~0x7F) | 0x40;
	maxZ += 0x80;

	while (gridX < maxX) {
		s32 z = gridZ;
		while (z < maxZ) {
			s32 tileType = func_80078B58_87B08(gridX, (s16) z);

			if (tileType > 0) {
				s32 idx2 = tileType * 2;
				s16 floorY = *(s16 *) ((u8 *) D_8013BB8C_14AB3C + (currentLevel << 5) + idx2 - 0x20);
				s16 slope = *(s16 *) ((u8 *) D_8013BC2C_14ABDC + (currentLevel << 5) + idx2 - 0x20);

				if (((floorY + func_800F9D24_108CD4(gridX, (s16) z)) >= arg0->unk2) && (func_8010DC00_11CBB0(gridX, (s16) z, slope) != 0)) {
					foundSurface = 1;
					if (func_8010B804_11A7B4(tileType, arg0, gridX, (s16) z) == 0) {
						if (arg1 == 0) {
							func_8010FAC8_11EA78(0xC, func_80078BC8_87B78(gridX, (s16) z));
						}
					} else {
						foundBlocking = 1;
					}
				}
			}
			z += 0x80;
		}
		gridX += 0x80;
	}

	if (foundSurface != 0) {
		if (foundBlocking == 0) {
			return 6;
		}
		return 3;
	}

	if ((currentLevel != 3) || (arg0->unk1A != 0xD)) {
		entry = &((Unk8025CC20Entry *) &D_80259D90[0x95])[0x95 - 1];
		for (i = 0x95; i != 0; i--, entry--) {
			if ((entry->unk0 >= 0xE) && (func_80078B58_87B08(entry->unk4, entry->unk6) != 0) &&
				(func_8010EA54_11DA04(entry->unk20, entry->unk24, entry->unk40, entry->unk44, &spD6) != 0) &&
				(((spD6 + entry->unk12) - entry->unk22) >= spD2)) {
				if (func_8010B970_11A920((u8 *) entry, arg0) != 0) {
					return 8;
				}
				if (arg1 == 0) {
					func_8010FAC8_11EA78(0xC, func_80078BC8_87B78(entry->unk4, entry->unk6));
				}
				return 6;
			}
		}
	}

	if (!(vehicleSpecs[arg0->unk1A].unk4C & 0x20000000)) {
		if (currentLevel == 1) {
			for (i = 2; i >= 0; i--) {
				if (func_8010F72C_11E6DC((s16) (s32) ((&D_80159D84)[i] + arg0->unk4C), (s16) (s32) arg0->unk50,
										(s16) (s32) ((&D_80159DA4)[i] + arg0->unk54), vehicleSpec->unk38) != 0) {
					return 6;
				}
			}
		}
	}

	i = func_80117508_1264B8((s16) (arg0->unk4 - 0x400));
	building = &buildingInstances[i - 1];
	while (1) {
		building++;
		i++;
		if ((i >= 0xFF) || (arg0->unk4 < (building->zCoord - 0x400))) {
			break;
		}

		j = (u32) building->unk8 >> 0xC;
		if ((j & 1) && !(j & 0x20000)) {
			buildingSpec = &buildingSpecs[building->buildingType];
			spawn = &((Unk80052560Entry *) D_80052560)[buildingSpec->unk1A[2]];

			for (j = buildingSpec->unk1A[3]; j != 0; j--, spawn--) {
				spD8 = building->yCoord + spawn->unk8;
				spD6 = building->yCoord + spawn->unkA;
				spCA = spawn->unk4;
				spC8 = spawn->unk6;
				func_80116554_125504((s16) (building->unk8 & 3), &spCA, &spC8);
				spCA += building->xCoord;
				spC8 += building->zCoord;

				if ((((spD4 >= spD8) && (spD6 >= spD4)) || ((spD2 >= spD8) && (spD6 >= spD2)) || ((spD8 >= spD2) && (spD4 >= spD8)) ||
					 ((spD6 >= spD2) && (spD4 >= spD6))) &&
					(func_8010CF7C_11BF2C(spCA, spC8) != 0)) {
					if (arg1 == 0) {
						if ((arg0->unk20 & 2) && !(vehicleSpec->unk4C & 0x20000000)) {
							func_8010FAC8_11EA78(0xA, (s32) building);
						}
						func_800FB430_10A3E0(arg0, (f32) ((s16) arg0->unk12 >> 1));
						arg0->unk30 = arg0->unk30 / 2.0f;
						arg0->unk38 = arg0->unk38 / 2.0f;
						if ((currentLevel == 4) && (arg0->unk1A == 2) && (arg0->unk12 >= 0xB) && !(((u32) building->unk8 >> 0xC) & 0x1000) &&
							((buildingSpec->unk10 * buildingSpec->unk12) < 0x10000)) {
							func_8011C080_12B030(i & 0xFF);
						}
					}
					return 9;
				}
			}
		}
	}

	bestY = -1;
	spC0 = 0;
	if ((D_80159260 != 0) && (D_80159262 == 0) && (arg0 == D_80052B34)) {
		goto block_273;
	}

	if ((arg0->unk1A == 0) || (vehicleSpecs[arg0->unk1A].unk4C & 0x20000000)) {
		func_8011DE60_12CE10(1);
	}

	for (i = 2; i >= 0; i--) {
		bestX = (s32) ((&D_80159D84)[i] + (f32) arg0->unk0);
		sp7C = (s32) ((&D_80159DA4)[i] + (f32) arg0->unk4);
		if ((func_800F9D60_108D10((s16) bestX, (s16) sp7C, &spDA, &spD8, &spD6) != -1) && (spDA < spD6) && (spD6 >= bestY)) {
			bestY = spD6;
			spCC = spDA;
			spD0 = spD6;
			spCE = spD8;
			sp98 = (f32) bestX;
			sp94 = (f32) sp7C;
		}
	}

	zForBest = sp7C;
	if ((func_800F9D60_108D10(arg0->unk0, arg0->unk4, &spDA, &spD8, &spD6) != -1) && (spDA < spD6) && (spD6 >= bestY)) {
		bestY = spD6;
		sp98 = (f32) arg0->unk0;
		spCC = spDA;
		spD0 = spD6;
		spCE = spD8;
		sp94 = (f32) arg0->unk4;
	}

	if ((arg0->unk1A == 0) || (vehicleSpecs[arg0->unk1A].unk4C & 0x20000000)) {
		func_8011DE60_12CE10(0);
	}

	if (bestY >= 0) {
		zForBest = (s32) sp94;
		bestX = (s32) sp98;
		spC0 = 5;
		spDA = spCC;
		spD8 = spCE;
		spD6 = spD0;
		building = &buildingInstances[func_8011D260_12C210((s8) (bestX >> 8), (s8) (zForBest >> 8))];
		sp70 = (s32) building->buildingType;
	}

	if (arg0->unk1A == 0) {
		if (spC0 == 0) {
			if (arg1 == 0) {
				func_8010FAC8_11EA78(2, 0x80C);
			}
			goto block_273;
		}
		if (spD4 < spD8) {
			if (arg1 == 0) {
				func_8010FAC8_11EA78(3, 8);
			}
			goto block_273;
		}
		if ((spD6 + 0x14) < spD2) {
			if (arg1 == 0) {
				func_8010FAC8_11EA78(2, 0x808);
			}
			goto block_273;
		}
		if ((arg0->unk20 & 2) && ((f32) (spD6 - 0x20) <= D_8015919C) && (spD6 >= spD2)) {
			if (arg1 == 0) {
				func_8010FAC8_11EA78(4, spD6);
			}
			goto block_273;
		}
		if ((arg0->unk20 & 2) && (spD6 >= spD2) && (spD8 < spD4)) {
			if (arg1 == 0) {
				func_8010FAC8_11EA78(5, 0);
				func_8010FAC8_11EA78(0xA, (s32) building);
			}
			return 9;
		}
		if (!(arg0->unk20 & 2) || (arg0->unk20 & 0x800) || (D_80222A70 >= arg0->unk2)) {
			if ((spDA < spD6) && !(arg0->unk20 & 0x800) && !(arg0->unk20 & 8) && ((spD6 - spD2) < 0x20) &&
				(func_801081AC_11715C(arg0->unk0, arg0->unk4) != 0)) {
				if (arg1 == 0) {
					func_8010FAC8_11EA78(3, 0x800);
					func_8010FAC8_11EA78(2, 2);
					func_8010FAC8_11EA78(6, spD6);
				}
				goto block_273;
			}
			if ((spD2 < spD6) && ((spD6 - spD2) >= 0x20) && (arg0->unk20 & 0x800)) {
				return 5;
			}
			if ((spD2 < spD6) && ((spD2 + 0x20) >= spD6) && (arg0->unk20 & 0x800)) {
				if (arg1 == 0) {
					func_8010FAC8_11EA78(6, spD6);
				}
				goto block_273;
			}
			if ((spDA < spD6) && !(arg0->unk20 & 0x800) && !(arg0->unk20 & 8) && ((spD6 - spD2) < 0x20) &&
				(func_801081AC_11715C(arg0->unk0, arg0->unk4) == 0)) {
				if (arg1 == 0) {
					func_8010FAC8_11EA78(3, 4);
					func_8010FAC8_11EA78(2, 2);
					func_8010FAC8_11EA78(6, spD6);
				}
				goto block_273;
			}
			if (((spD8 < spD4) && (spD4 < spD6)) || ((spD8 < spD2) && (spD4 < spD6)) || ((spD2 < spD8) && (spD8 < spD4)) ||
				((spD2 < spD6) && (spD6 < spD4))) {
				return 5;
			}
			goto block_273;
		}
		goto block_273;
	}

	if (spC0 == 0) {
		if (arg1 == 0) {
			func_8010FAC8_11EA78(2, 0x80C);
		}
		goto block_273;
	}
	if (spD4 < spD8) {
		if (arg1 == 0) {
			func_8010FAC8_11EA78(3, 8);
		}
		goto block_273;
	}
	if ((spD6 < spD2) && (arg0->unk20 & 2)) {
		if ((D_80222A70 < arg0->unk2) && (arg1 == 0)) {
			func_8010FAC8_11EA78(2, 0x808);
		}
		goto block_273;
	}
	if ((arg0->unk20 & 2) && (((f64) spD6 - ((f64) vehicleSpec->unk36 * D_80144D50_153D00)) < (f64) D_8015919C) && (spD6 >= spD2)) {
		if (arg1 == 0) {
			if ((arg0 == D_80052B34) && (D_801591AC == 6)) {
				return 5;
			}
			func_8010FAC8_11EA78(4, spD6);
		}
		goto block_273;
	}

	var_f0 = D_80144D58_153D08;
	if ((arg0->unk20 & 2) && !(vehicleSpecs[arg0->unk1A].unk4C & 0x20000000) && (spD6 >= spD2) && (spD8 < spD4)) {
		if (arg1 == 0) {
			func_8010FAC8_11EA78(5, 0);
			func_8010FAC8_11EA78(0xA, (s32) building);
		}
		return 9;
	}

	if (!(arg0->unk20 & 2) || (vehicleSpecs[arg0->unk1A].unk4C & 0x20000000) || (arg0->unk20 & 0x800) || (D_80222A70 >= arg0->unk2)) {
		if (arg0->unk20 & 4) {
			if (arg1 == 0) {
				func_8010FAC8_11EA78(2, 2);
			}
			goto block_273;
		}

		if ((spDA < spD6) && !(arg0->unk20 & 0x800) && !(arg0->unk20 & 8) && ((f64) (spD6 - spD2) < ((f64) vehicleSpec->unk36 * var_f0))) {
			zForBest = sp7C;
			var_f0 = D_80144D60_153D10;
			if (func_80108138_1170E8(arg0->unk0, arg0->unk2, arg0->unk4) != 0) {
				if (arg1 == 0) {
					func_8010FAC8_11EA78(3, 0x800);
					func_8010FAC8_11EA78(2, 2);
				}
				goto block_273;
			}
		}

		if ((spD6 >= spD2) && (sp70 != D_8015EA28)) {
			if (!(arg0->unk20 & 2) && (((f64) vehicleSpec->unk36 * var_f0) <= (f64) (spD6 - spD2)) && (arg0->unk20 & 0x800)) {
				return 6;
			}
		}

		if ((spD6 < spD2) || (arg0->unk20 & 2) || !((f64) spD6 <= ((f64) spD2 + ((f64) vehicleSpec->unk36 * var_f0))) || !(arg0->unk20 & 0x800)) {
			if ((vehicleSpec->unk4C & 0x20) && (spDA < spD6) && !(arg0->unk20 & 0x800) && !(arg0->unk20 & 8) &&
				((f64) (spD6 - spD2) < ((f64) vehicleSpec->unk36 * var_f0))) {
				zForBest = sp7C;
				if (func_80108138_1170E8(arg0->unk0, arg0->unk2, arg0->unk4) == 0) {
					if (arg1 == 0) {
						func_8010FAC8_11EA78(3, 4);
						func_8010FAC8_11EA78(2, 2);
					}
					goto block_273;
				}
			}

			if (!(((spD4 < spD8) || (spD6 < spD4)) && ((spD2 < spD8) || (spD6 < spD2)) && ((spD8 < spD2) || (spD4 < spD8)))) {
				if ((spD8 >= (s32) ((f32) vehicleSpec->unk38 + D_8015919C)) && (spD8 < spD4) && (spD4 < spD6)) {
					return 5;
				}

				if ((arg1 == 0) && (currentLevel == 4) && (((arg0->unk1A == 2) && (arg0->unk12 >= 0xB)) || ((arg0->unk1A == 0x11) && (arg0->unk12 >= 0x10)))) {
					BuildingInstance *hitBuilding = &buildingInstances[func_8011D260_12C210((s8) (bestX >> 8), (s8) (zForBest >> 8))];
					BuildingSpec *hitSpec = &buildingSpecs[hitBuilding->buildingType];

					if (!(((u32) hitBuilding->unk8 >> 0xC) & 0x1000) && (((hitSpec->unk10 * hitSpec->unk12) < 0x10000) || (*(s32 *) &hitSpec->pad0[0] == (s32) &D_C0067F0))) {
						func_8011C080_12B030(((s32) (hitBuilding - &buildingInstances[0])) & 0xFF);
					}
				}

				if (arg1 == 0) {
					func_800FB430_10A3E0(arg0, (f32) ((s16) arg0->unk12 >> 1));
					arg0->unk30 = arg0->unk30 / 2.0f;
					arg0->unk38 = arg0->unk38 / 2.0f;
				}
				return 9;
			}
			goto block_273;
		}
		goto block_273;
	}

block_273:
	i = func_8010FF84_11EF34(arg0, arg1);
	if (i != 0) {
		return i;
	}

	func_8010E480_11D430();
	i = func_80110144_11F0F4(arg0, arg1);
	if (i != 0) {
		return i;
	}

	if (((D_80222A70 >= arg0->unk2) && !(vehicleSpecs[arg0->unk1A].unk4C & 0x20)) ||
		(!(vehicleSpecs[arg0->unk1A].unk4C & 0x20) && !(vehicleSpecs[arg0->unk1A].unk4C & 0x20000000) && (vehicleSpecs[arg0->unk1A].unk4C & 0x10000000))) {
		for (i = 2; i >= 0; i--) {
			s32 water = func_800F9D24_108CD4((s16) (s32) ((&D_80159D84)[i] + (f32) arg0->unk0), (s16) (s32) ((&D_80159DA4)[i] + (f32) arg0->unk4));
			if ((D_80222A70 < water) && (water >= spD2)) {
				return 6;
			}
		}
	}

	if ((!(arg0->unk20 & 2) || ((arg0->unk1A == 0) && (D_80222A70 >= arg0->unk2))) && !(arg0->unk20 & 0x800) && !(arg0->unk20 & 4)) {
		for (i = 3; i > 0; i--) {
			if ((func_800FAA08_1099B8((s16) (s32) ((&D_80159D84)[i - 1] + arg0->unk4C), (s16) (s32) ((&D_80159DA4)[i - 1] + arg0->unk54)) >= 0xA) &&
				((func_800B84D0_C7480((s16) (s32) ((&D_80159D84)[i - 1] + arg0->unk4C), (s16) (s32) ((&D_80159DA4)[i - 1] + arg0->unk54)) >> 8) >= D_80222A70) &&
				(func_80115824_1247D4(arg0, i) != 0)) {
				return 6;
			}
		}
	}

	i = func_80110818_11F7C8(arg0, vehicleSpec, arg1);
	if (i != 0) {
		return i;
	}

block_301:
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80110FB4_11FF64.s")
#endif

s16 func_8011290C_1218BC(VehicleInstance *arg0) {
	volatile s16 sp26;
	s16 var_v1;
	VehicleSpec *spec;

	spec = &vehicleSpecs[arg0->unk1A];
	if ((arg0->unk1A == 0) || (spec->unk4C & 0x20000000)) {
		func_8011DE60_12CE10(1);
	}

	if ((!(arg0->unk20 & 0x800) && !(arg0->unk20 & 4)) || (arg0->unk20 & 8)) {
		arg0->unk2A = func_800FA40C_1093BC(arg0, arg0->unk6, spec->unk36);
		arg0->unk28 = func_800FA40C_1093BC(arg0, (s16)(arg0->unk6 - 0x4000), spec->unk34);
		var_v1 = func_800FA7F0_1097A0(arg0, arg0->unkE, spec->unk36 + arg0->unk12);
	} else {
		arg0->unk2A = func_800FA018_108FC8(arg0, arg0->unk6, spec->unk36);
		arg0->unk28 = func_800FA018_108FC8(arg0, (s16)(arg0->unk6 - 0x4000), spec->unk34);
		var_v1 = func_800FA018_108FC8(arg0, arg0->unkE, spec->unk36);
	}

	if ((arg0->unk1A == 0) || (spec->unk4C & 0x20000000)) {
		sp26 = var_v1;
		func_8011DE60_12CE10(0);
		var_v1 = sp26;
	}

	return var_v1;
}

s32 func_80112A64_121A14(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
	s32 temp_t6;
	s32 temp_t7;

	temp_t6 = (s32)(arg0 - arg2) >> 2;
	temp_t7 = (s32)(arg1 - arg3) >> 2;
	return (temp_t6 * temp_t6) + (temp_t7 * temp_t7);
}

// CURRENT(12555)
#ifdef NON_MATCHING
void func_80112A98_121A48(s32 arg0, s32 arg1, s32 arg2) {
	s16 yRotation;

	if (arg2 == 0) {
		Unk80259490 *spawnData = &((Unk80259490 *)&D_80259490)[127];
		VehicleInstance *vehicle = &vehicleInstances[127];

		do {
			s16 x = (s16)((spawnData->unk0 << 8) + 0x80);
			s16 z = (s16)((spawnData->unk2 << 8) + 0x80);

			if (spawnData->unk6 == 0) {
				vehicle->unk20 &= 0xFFFF7FFF;
			} else {
				s32 buildingIndex;
				u16 temp;

				vehicle->unk20 |= 0x8001;
				func_800FB44C_10A3FC(vehicle, x);
				func_800FB484_10A434(vehicle, z);
				buildingIndex = func_8011E6FC_12D6AC(vehicle->unk0, vehicle->unk4, &yRotation);
				func_800FB468_10A418(vehicle, yRotation);

				if (buildingIndex != -1) {
					vehicle->unk20 |= 0x800;
				}

				vehicle->unkE = 0x4000 - spawnData->unk8;
				vehicle->unk6 = 0x4000 - spawnData->unk8;
				vehicle->unk3C = (s16)((f64)(vehicleSpecs[spawnData->unk6].unk61 << 8) * ((f64)spawnData->unkA / 100.0));

				temp = vehicleSpecs[vehicle->unk1A].hitPoints;
				vehicle->unk1C = (s16)((f64)(f32)temp * ((f64)spawnData->unk10 / 100.0));
			}

			spawnData--;
			vehicle--;
		} while (spawnData >= &((Unk80259490 *)&D_80259490)[2]);
	} else {
		s16 i;
		u8 *entry;

		if (D_80158FD8 > 0) {
			i = D_80158FD8 - 1;
			entry = &D_80158E80[i];
			do {
				VehicleInstance *vehicle = &vehicleInstances[*entry];

				if (vehicle != D_80052B34) {
					s32 range = arg2 >> 2;

					if (func_80112A64_121A14(arg0, arg1, vehicle->unk0, vehicle->unk4) < (range * range)) {
						Unk80259490 *spawnData = &((Unk80259490 *)&D_80259490)[vehicle->unk46 & 0x3F];
						s16 x = (s16)((spawnData->unk0 << 8) + 0x80);
						s16 z = (s16)((spawnData->unk2 << 8) + 0x80);

						if (spawnData->unk6 == 0) {
							vehicle->unk20 &= 0xFFFF7FFF;
						} else {
							s32 buildingIndex;
							u16 temp;
							VehicleInstance *vehicleByI = &vehicleInstances[i];

							vehicle->unk20 |= 0x8001;
							func_800FB44C_10A3FC(vehicle, x);
							func_800FB484_10A434(vehicle, z);
							buildingIndex = func_8011E6FC_12D6AC(vehicle->unk0, vehicle->unk4, &yRotation);
							func_800FB468_10A418(vehicle, yRotation);

							if (buildingIndex != -1) {
								vehicle->unk20 |= 0x800;
							}

							vehicle->unkE = 0x4000 - spawnData->unk8;
							vehicle->unk6 = 0x4000 - spawnData->unk8;
							vehicle->unk3C = (s16)((f64)(vehicleSpecs[spawnData->unk6].unk61 << 8) * ((f64)spawnData->unkA / 100.0));

							temp = vehicleSpecs[vehicleByI->unk1A].hitPoints;
							vehicle->unk1C = (s16)((f64)(f32)temp * ((f64)spawnData->unk10 / 100.0));
						}
					}
				}
				entry--;
			} while (i-- > 0);
		}
	}

	func_800FAC90_109C40();
	func_800FAD10_109CC0();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80112A98_121A48.s")
#endif

void func_80112F98_121F48(void)
{
	VehicleInstance *vehicle;
	s32 i;
	f64 scale;
	u16 angle;
	s16 yawCos;
	scale = D_80144D68_153D18[0];
	vehicle = &vehicleInstances[127]; // Surely this should be = &vehicles[i] inside the loop
	i = 0x7F;
	do
	{
		if ((vehicle->unk1A == 0x11) && (!(vehicle->unk20 & 0x8000)))
		{
			if (vehicle->unk1E >= 0x100)
			{
				goto loop_update_end;
			}
			vehicle->unk1E++;
			vehicle->unkE += 0x3AF;
			func_800FB430_10A3E0(vehicle, (f32)((vehicle->unk1E) * scale));
			vehicle->unk10 += 0x66;
			vehicle->unk6 = vehicle->unkE;
			vehicle->unkA = vehicle->unk10 * 5;
			vehicle->unk8 += 0x51E;
			angle = (u16)(vehicle->unkE + 0x4000);
			yawCos = coss(angle);
			func_800FB3C4_10A374(vehicle, (f32)((((((f32)coss((u16)vehicle->unk10))) / 32768.0) * ((((f32)yawCos)) / 32768.0)) * ((f64)vehicle->unk58)));
			func_800FB3E8_10A398(vehicle, (f32)(((((f32)sins((u16)vehicle->unk10))) / 32768.0) * (vehicle->unk58)));
			angle = (u16)(vehicle->unkE + 0x4000);
			yawCos = sins(angle);
			func_800FB40C_10A3BC(vehicle, (f32)((((((f32)coss((u16)vehicle->unk10))) / 32768.0) * ((((f32)yawCos)) / 32768.0)) * ((f64)vehicle->unk58)));
		}
		func_801098E8_118898(vehicle);
		func_80109B74_118B24(vehicle);
	loop_update_end:
		vehicle--;

	} while (i--);
}

void func_801131D4_122184(VehicleInstance *arg0) {
	func_800FB44C_10A3FC(arg0, D_80159194);
	func_800FB468_10A418(arg0, D_8015919C);
	func_800FB484_10A434(arg0, D_80159198);
	arg0->unk6 = D_801591A0;
	arg0->unkA = D_801591A2;
	arg0->unk8 = D_801591A4;
}

void func_80113248_1221F8(VehicleInstance *arg0) {
	func_801131D4_122184(arg0);
	func_800FDEA8_10CE58(D_80052B2C, 1);
	func_800FDD8C_10CD3C(arg0);
	func_800E0F4C_EFEFC(arg0->unk0, arg0->unk2, arg0->unk4, 0x18);
	func_80135D44_144CF4(arg0->unk0, arg0->unk2, arg0->unk4, 3.0f);
	D_801591AC = 0;
	D_80158E6C = arg0;
	D_8015931C = 0x64;
	D_80158E74 = 0;
	if ((D_80159320 & 0x400000) && (D_8004DC58 != 5) && (D_8004DC58 != 6) && (D_8004DC58 != 7)) {
		D_8004DC58 = 4;
	}
}

// CURRENT(1361)
#ifdef NON_MATCHING
void func_80113310_1222C0(VehicleInstance *arg0) {
	VehicleSpec *spec;
	WeaponSpecEntry *tableEntry;
	s16 sp4E;
	s16 sp4C;
	s16 sp4A;
	s32 pad;
	s16 varA2;
	s32 wasAboveWater;

	spec = &vehicleSpecs[arg0->unk1A];
	tableEntry = &D_80140768_14F718[spec->unk55];
	wasAboveWater = D_80222A70 < arg0->unk2;

	if ((arg0->unk1A == 0) || (spec->unk4C & 0x20000000)) {
		func_8011DE60_12CE10(1);
	}

	func_800F9D60_108D10(arg0->unk0, arg0->unk4, &sp4E, &sp4C, &sp4A);

	if ((arg0->unk1A == 0) || (spec->unk4C & 0x20000000)) {
		func_8011DE60_12CE10(0);
	}

	if (arg0->unk1A == 0) {
		sp4E = func_800F9D24_108CD4(arg0->unk0, arg0->unk4);
	}

	if (!(spec->unk4C & 0x100) && (sp4E < D_80222A70)) {
		sp4E = D_80222A70;
	}

	varA2 = sp4E;
	if ((arg0->unk20 & 0x800) && (sp4A >= sp4E)) {
		varA2 = sp4A;
	}

	if (!(arg0->unk20 & 2)) {
		if ((varA2 + 0x32) < arg0->unk2) {
			arg0->unk20 |= 2;
		} else if ((arg0->unk1A != 0) || ((varA2 - 0x20) < arg0->unk2) || (varA2 == sp4E)) {
			func_800FB468_10A418(arg0, (f32)varA2);
		}
	} else {
		if (arg0->unk2 < varA2) {
			func_80107890_116840(arg0);
			func_80107970_116920(arg0, varA2);
			func_800FB468_10A418(arg0, (f32)varA2);
		} else if ((spec->unk4C & 0x20000000) && (arg0->unk2 < D_80222A70) && ((arg0 != D_80052B34) || (D_801591AC != 6))) {
			if (arg0->unkA < tableEntry->unk8) {
				if (!(spec->unk4C & 0x100)) {
					func_80107890_116840(arg0);
					func_80107970_116920(arg0, D_80222A70);
				} else if ((f32)tableEntry->unk2 < arg0->unk58) {
					if (spec->unk4C & 0x20000) {
						arg0->unk2 = (spec->unk38 >> 1) + D_80222A70 + 1;
					} else {
						arg0->unk2 = D_80222A70 + 1;
						if (arg0->unk10 < 0) {
							arg0->unk10 = 0;
						}
						if (arg0->unkA > 0) {
							arg0->unkA -= 0x800;
						}
					}

					if (arg0->unk34 < 0.0f) {
						arg0->unk34 = 0.0f;
					}
				}
			} else {
				func_80123E90_132E40(arg0, (arg0->unkA - tableEntry->unk8) >> 3);
			}
		} else if ((spec->unk4C & 0x20000000) && (D_8015926C < (arg0->unk2 - func_800F9F00_108EB0(arg0->unk0, arg0->unk4)))) {
			if (arg0->unk34 > 0.0f) {
				arg0->unk34 = 0.0f;
			}

			if (!(spec->unk4C & 0x20000)) {
				if (arg0->unk10 > 0) {
					arg0->unk10 = 0;
				}
				if (arg0->unkA < 0) {
					arg0->unkA += 0x800;
				}
			}

			func_800FB468_10A418(arg0, (f32)(func_800F9F00_108EB0(arg0->unk0, arg0->unk4) + D_8015926C));
		}
	}

	if ((D_80222A70 >= arg0->unk2) && (arg0->unk1A != 0) && (arg0 == D_80052B34) && !(spec->unk4C & 0x10000000)) {
		if (wasAboveWater) {
			func_800FB238_10A1E8(arg0, arg0->unk0, arg0->unk4, (s16)(vehicleSpecs[arg0->unk1A].unkC + arg0->unk12));
		} else if (((f64)arg0->unk58 > 5.0) && (D_80052A8C & 1)) {
			func_800E1F70_F0F20(arg0);
			func_801372B4_146264(arg0->unk0, arg0->unk2, arg0->unk4, 1);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80113310_1222C0.s")
#endif

// CURRENT(2944)
#ifdef NON_MATCHING
s32 func_80113808_1227B8(VehicleInstance *arg0) {
	f32 temp_f0;
	f32 temp_f2;
	f32 sp28;
	s32 var_a2;

	var_a2 = 0;
	func_8010FABC_11EA6C();

	if (arg0->unk20 & 1) {
		var_a2 = func_80110FB4_11FF64(arg0, 0);
		if (var_a2 != 0) {
			if ((arg0 == D_80052B34) && (D_801591AC == 6)) {
				func_80113248_1221F8(arg0);
				return 1;
			}

			if (arg0->unk20 & 2) {
				if (var_a2 == 9) {
					func_800FB44C_10A3FC(arg0, D_80159194);
					func_800FB484_10A434(arg0, D_80159198);
					var_a2 = func_80110FB4_11FF64(arg0, 1);
					if ((var_a2 == 0) && (arg0->unk34 > 0.0f)) {
						func_800FB430_10A3E0(arg0, 0.0f);
						arg0->unk34 = 0.0f;
					}
				}

				if (var_a2 != 4) {
					func_80107890_116840(arg0);
				}
			} else {
				temp_f0 = D_80159194;
				sp28 = arg0->unk54 - D_80159198;
				temp_f2 = arg0->unk4C - temp_f0;
				if ((var_a2 == 5) || (var_a2 == 6) || (var_a2 == 8) || (var_a2 == 9)) {
					if (arg0 == D_80052B34) {
						func_800FB44C_10A3FC(arg0, (temp_f2 / 2.0f) + temp_f0);
						func_800FB484_10A434(arg0, D_80159198);
						var_a2 = func_80110FB4_11FF64(arg0, 1);
						if (var_a2 != 0) {
							func_800FB44C_10A3FC(arg0, D_80159194);
							func_800FB484_10A434(arg0, (sp28 / 2.0f) + D_80159198);
							var_a2 = func_80110FB4_11FF64(arg0, 1);
						}
					}
				}
			}

			if (arg0->unk1A != 0) {
				if ((D_80159320 & 0x20000000) && (arg0 == D_80052B34) && (arg0->unk20 & 2)) {
					if (currentLevel == 4) {
						if ((arg0->unk1A == 5) && (D_80158E7C->unk2 < arg0->unk2)) {
							func_800FDE00_10CDB0();
						}
						if ((D_80158E7C->unk1A == 5) && (arg0->unk2 < D_80158E7C->unk2)) {
							func_800FDE00_10CDB0();
						}
					}
				} else {
					temp_f0 = arg0->unk58;
					if (temp_f0 > 8.0f) {
						D_80158C52 = (s16)(s32)((f32)D_80158C52 + (temp_f0 * 121.0f));
					} else {
						func_800FB430_10A3E0(arg0, (f32)((f64)temp_f0 * D_80144D70_153D20));
					}
				}
			}
		}
	}

	if (func_8010FAFC_11EAAC(arg0) != 0) {
		return 1;
	}

	if (var_a2 != 0) {
		if ((currentLevel == 4) && (arg0->unk1A == 0xE)) {
			func_800FDB58_10CB08(arg0);
			return 1;
		}

		func_801131D4_122184(arg0);
		arg0->unk22 = 0;

		switch (var_a2) {
			case 2:
				func_800FB430_10A3E0(arg0, (f32)(-((s16)arg0->unk12 >> 4)));
				arg0->unk30 = (f32)((f64)arg0->unk30 * 0.9375);
				arg0->unk34 = (f32)((f64)arg0->unk34 * 0.9375);
				arg0->unk38 = (f32)((f64)arg0->unk38 * 0.9375);
				break;

			case 3:
				func_800FB430_10A3E0(arg0, (f32)((f64)arg0->unk12 * D_80144D78_153D28));
				arg0->unk30 = (f32)((f64)arg0->unk30 * D_80144D80_153D30);
				arg0->unk34 = (f32)((f64)arg0->unk34 * D_80144D80_153D30);
				arg0->unk38 = (f32)((f64)arg0->unk38 * D_80144D80_153D30);
				break;

			case 10:
				break;

			default:
				func_800FB430_10A3E0(arg0, 0.0f);
				if (!(arg0->unk20 & 2)) {
					arg0->unk30 = 0.0f;
					arg0->unk34 = 0.0f;
					arg0->unk38 = 0.0f;
				}
				break;
		}
	}

	func_80115604_1245B4(arg0);
	return 0;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80113808_1227B8.s")
#endif

// CURRENT(40782)
#ifdef NON_MATCHING
void func_80113CEC_122C9C(void) {
	s32 spD4;
	s32 spD0;
	s16 spCA;
	s32 spA8;
	s16 sp96;
	s16 sp94;
	s16 sp92;
	s16 sp90;
	s16 sp86;
	u16 sp7A;
	u16 sp78;
	f64 sp68;
	u8 *sp60;
	f64 temp_f0;
	f64 temp_f0_2;
	f64 temp_f8;
	s16 temp_a0;
	s16 temp_a1;
	s16 temp_a2;
	s16 temp_t0;
	s16 temp_v0;
	s16 temp_v0_10;
	s16 temp_v0_11;
	s16 temp_v0_12;
	s16 temp_v0_13;
	s16 temp_v0_6;
	s16 temp_v0_7;
	s16 temp_v0_8;
	s16 temp_v0_9;
	s16 temp_v1;
	s16 temp_v1_3;
	s16 temp_v1_4;
	s16 var_a2;
	s16 var_v0;
	s16 var_v1;
	s32 temp_f10;
	s32 temp_t1;
	s32 temp_t7;
	s32 temp_v0_15;
	s32 temp_v0_3;
	s32 temp_v0_4;
	s32 temp_v1_6;
	u16 temp_v0_14;
	u16 temp_v0_5;
	u8 temp_a0_2;
	u8 temp_a0_3;
	u8 temp_v0_2;
	u8 temp_v1_2;
	u8 temp_v1_5;
	VehicleInstance *temp_s0;
	VehicleInstance *temp_s0_2;
	VehicleInstance *temp_s1;
	VehicleInstance *temp_s1_2;
	VehicleSpec *temp_s2;
	InputStruct_8012B150 *temp_v1_7;

	if (D_80159320 & 0x2000) {
		func_800FAD10_109CC0();
	}
	if (D_80159300 != 0) {
		D_80159300 -= 1;
	}
	if (currentLevel == 3) {
		func_802D4CD0_18D7E0(5, 0);
	}
	D_801591F0 = (f32)((f64)(&D_80047724)[1] / D_80144D88_153D38);
	D_801591EC = (f32)((f64)(&D_80047724)[2] / D_80144D88_153D38);
	D_80159D5C = 0;
	D_80159D60 = 0;
	if (D_80159260 != 0) {
		D_80159260 -= 1;
		if (D_80159260 == 0) {
			D_8015930E = 0;
			D_8015EA30 = D_80144D90_153D40;
			D_80159320 &= 0xFFEFFFFF;
			func_801165FC_1255AC(D_80052543, 0, &sp96, &sp94, &sp92, &sp90);
			temp_t0 = vehicleSpecs[D_80052B34->unk1A].unk36;
			spA8 = (s32) temp_t0;
			temp_f8 = (f64) (f32) coss((-0x4000 - sp90) & 0xFFFF) / 32768.0;
			temp_f0 = (f64) temp_t0;
			sp68 = temp_f0;
			sp96 = (s16) (s32) ((f64) sp96 + (temp_f8 * temp_f0));
			temp_f10 = (s32) ((f64) sp92 + (((f64) (f32) sins((-0x4000 - sp90) & 0xFFFF) / 32768.0) * temp_f0));
			sp92 = (s16) temp_f10;
			temp_v1 = D_80052B34->unk0 - sp96;
			temp_a1 = -temp_v1;
			temp_a0 = D_80052B34->unk4 - temp_f10;
			if (temp_a1 < temp_v1) {
				var_a2 = temp_v1;
			} else {
				var_a2 = temp_a1;
			}
			temp_v0 = -temp_a0;
			if (temp_v0 < temp_a0) {
				var_v1 = temp_a0;
			} else {
				var_v1 = temp_v0;
			}
			if ((var_v1 + var_a2) < (temp_t0 * 2)) {
				sp68 = temp_f0;
				func_800FB44C_10A3FC(D_80052B34, (f32) ((((f64) (f32) coss((0x4000 - sp90) & 0xFFFF) / 32768.0) * 2.0 * temp_f0) + (f64) sp96));
				func_800FB468_10A418(D_80052B34, (f32) sp94);
				func_800FB484_10A434(D_80052B34, (f32) ((((f64) (f32) sins((0x4000 - sp90) & 0xFFFF) / 32768.0) * 2.0 * temp_f0) + (f64) sp92));
			}
		}
		if ((D_80052B34->unk1A == 0x11) && (currentLevel == 3)) {
			func_800FB430_10A3E0(D_80052B34, 0x42200000);
		} else {
			func_800FB430_10A3E0(D_80052B34, 0x41000000);
		}
		D_80052B34->unk30 = 0.0f;
		D_80052B34->unk38 = 0.0f;
	}
	if ((currentLevel == 1) && (D_80052B34->unk1A == 8)) {
		func_802D4CD0_18D7E0(0x17, 0);
	}
	if (((D_80222A70 - 0x24) >= func_800F9D24_108CD4(D_80052B34->unk0, D_80052B34->unk4)) && (D_80222A70 >= D_80052B34->unk2)) {
		D_80159320 |= 0x1000;
	} else {
		D_80159320 &= ~0x1000;
	}
	if (gameplayMode != 0xB) {
		temp_s1 = D_80052B34;
		temp_v0_2 = temp_s1->unk1A;
		if ((temp_v0_2 == 0) && (D_80159300 == 0)) {
			if ((D_80159320 & 0x1000) || ((temp_s1->unk2 < D_80222A70) && (currentLevel == 5))) {
				func_8010F218_11E1C8();
			} else if (!(D_80157A28 & 4)) {
				D_8015931A = 0;
				if (D_8013FD84_14ED34 != 0) {
					if (D_8013FD84_14ED34 == 0x1E) {
						func_800E0E9C_EFE4C(temp_s1->unk0, temp_s1->unk4, vehicleSpecs[temp_s1->unk1A].unkC);
					}
					func_800CC7B0_DB760(5, 0x28, 5, temp_s1->unk0, (s32) temp_s1->unk2, (s32) temp_s1->unk4);
					D_8013FD84_14ED34 -= 1;
				}
			} else {
				func_8010F218_11E1C8();
			}
		} else if (temp_s1->unk2 < (D_80222A70 - 0x28)) {
			if (vehicleSpecs[temp_v0_2].unk4C & 0x10000000) {
				D_8015931A = 0;
				D_8013FD84_14ED34 = 0;
			} else {
				func_8010F218_11E1C8();
			}
			if (D_80159320 & 0x20000) {
				func_80123E90_132E40(D_80052B34, 0xA);
				func_801371B8_146168(D_80052B34, 0xFE, D_80052B34->unk0, D_80222A72, (s32) D_80052B34->unk4, 0.5f);
				if (!(D_80052A8C & 7)) {
					func_800DEA08_ED9B8(D_80052B34->unk0, (s16) (D_80052B34->unk2 + 0x32), D_80052B34->unk4, 0xC8, 4, 4, 0x28, 0xC8, 0xFF, 0xD2, 0xAA);
				}
			}
		} else if (vehicleSpecs[temp_v0_2].unk4C & 0x10000000) {
			D_8015931A = 0;
			D_8013FD84_14ED34 = 0;
		}
	}
	if (func_8000726C_7E6C(0x32) != 0) {
		func_80112A98_121A48(0, 0, 0);
		func_800073B8_7FB8(0x32);
	}
	switch (D_801591AC) {                           /* irregular */
	case 0:
		func_8010BA04_11A9B4();
		break;
	case 2:
		func_8010C14C_11B0FC();
		break;
	case 4:
		func_8010C454_11B404();
		break;
	}
	if (D_8015920C != 0) {
		((void (*)(void))D_8015920C)();
	}
	temp_s1_2 = D_80052B34;
	if (temp_s1_2->unk3C > 0) {
		if (vehicleSpecs[temp_s1_2->unk1A].unk4C & 0x400000) {
			D_8015930C -= (s16) D_8015930C >> 4;
			if (currentControllerStates[0].button & 0x8000) {
				D_8015930C += 0x415;
			}
			if (currentControllerStates[0].button & 0x4000) {
				D_8015930C -= 0x415;
			}
			if (D_8015930C >= 0x261A) {
				D_8015930C = 0x2619;
			}
			if (D_8015930C < -0x2619) {
				D_8015930C = -0x2619;
			}
		}
		temp_a2 = D_80159234;
		D_80159234 = temp_a2 - 0x29;
		D_80159232 += temp_a2;
		if ((D_80159234 > 0) && (D_80158E74 != NULL) && (D_80052ACA != 2)) {
			func_80014508_15108(D_80158E74, 1, D_80159234);
			var_v0 = D_8015930C;
		} else {
			D_80159234 = 0;
			var_v0 = D_8015930C;
		}
	} else {
		var_v0 = D_8015930C;
		if (var_v0 != 0) {
			temp_t7 = (s32) ((f64) (f32) var_v0 * D_80144D80_153D30);
			var_v0 = (s16) temp_t7;
			D_8015930C = (s16) temp_t7;
		}
		D_80159234 = var_v0;
	}
	D_8015930A += var_v0;
	if (((currentLevel * 0x64) + temp_s1_2->unk1A) == 0x12E) {
		D_801591C2 += temp_s1_2->unk12 * 0x1CD;
	}
	D_801591CA += D_801591C8;
	D_801591D0 = (f32) ((f64) D_801591D0 * D_80144D80_153D30);
	D_801591CC = (f32) ((f64) D_801591CC * D_80144D80_153D30);
	if (D_80158C50 > 0) {
		D_80158C52 -= 0xA3;
	}
	D_80158C50 += D_80158C52;
	if (D_80158C50 < 0) {
		D_80158C50 = 0;
		D_80158C52 = (s16) (s32) ((f64) -D_80158C52 * D_80144D80_153D30);
	}
	if (D_80158C50 >= 0x1771) {
		D_80158C50 = 0x1770;
		D_80158C52 = (s16) (s32) ((f64) -D_80158C52 * D_80144D80_153D30);
	}
	if (D_80158F80 != 0) {
		D_80158F80 -= 1;
	}
	if (D_801591C8 != 0) {
		D_801591C8 -= 0xFA;
	}
	if (D_801591F4 != 0) {
		D_801591F4 -= 1;
	}
	if (D_8015929E != 0) {
		D_8015929E -= 1;
		if (D_8015929E == 0) {
			D_8015930E = 0;
		}
	}
	if (D_8015931C != 0) {
		D_8015931C -= 1;
		if (D_8015931C == 0) {
			temp_s0 = D_80158E6C;
			if (temp_s0 == temp_s1_2) {
				func_800FDEA8_10CE58(D_80052B2C, 1);
			}
			func_800E0F4C_EFEFC(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, 0x18);
			func_80135D44_144CF4(D_80158E6C->unk0, D_80158E6C->unk2, D_80158E6C->unk4, 0x40400000);
			func_800FDD8C_10CD3C(D_80158E6C);
		}
	}
	temp_v0_3 = D_80159320;
	if (temp_v0_3 & 2) {
		func_80103D18_112CC8(D_80052B34, D_80158F8C);
	}
	if (temp_v0_3 & 0x80000000) {
		func_80102FA4_111F54();
	}
	temp_v0_4 = D_80158FD8 - 1;
	if (D_80158FD8 != 0) {
		sp60 = &D_80158E80[temp_v0_4];
		spD4 = temp_v0_4;
		do {
			temp_v1_2 = *sp60;
			temp_s0_2 = &vehicleInstances[temp_v1_2];
			temp_v0_5 = temp_s0_2->unk20;
			spD0 = (s32) temp_v1_2;
			temp_s2 = &vehicleSpecs[temp_s0_2->unk1A];
			if ((temp_v0_5 & 0x8000) && (temp_v0_5 & 0x40)) {
				D_80159194 = temp_s0_2->unk4C;
				D_80159198 = temp_s0_2->unk54;
				D_8015919C = temp_s0_2->unk50;
				D_801591A0 = temp_s0_2->unk6;
				D_801591A2 = temp_s0_2->unkA;
				D_801591A4 = temp_s0_2->unk8;
				if ((temp_s0_2 == D_80052B34) && ((gameplayMode == 3) || (D_801493E2 == 0))) {
					func_80113808_1227B8(temp_s0_2);
				} else {
					temp_v0_6 = temp_s0_2->unk1E;
					if (temp_v0_6 != 0) {
						temp_s0_2->unk1E = (s16) (temp_v0_6 - 1);
						if (temp_v0_6 == 1) {
							func_80015674_16274(0);
						}
					}
					if ((currentLevel == 1) && (temp_s0_2->unk1A == 0xC) && (D_80222A70 >= temp_s0_2->unk2)) {
						func_80123E90_132E40(temp_s0_2, 0x7FFF);
					}
					if ((gameplayMode != 2) && ((temp_a0_2 = temp_s0_2->unk1A, (currentLevel != 4)) || (temp_a0_2 != 0xF))) {
						if (temp_a0_2 == 0) {
							if ((D_80157A28 & 4) && ((u32) ((u32) D_80052A8C % 60U) < 0x1EU)) {
								temp_v0_7 = temp_s0_2->unk2;
								if (temp_v0_7 < (D_80222A70 - 0xA)) {
									func_800D8FA0_E7F50(temp_s0_2->unk0, (s16) (temp_v0_7 + 0xA), temp_s0_2->unk4);
									func_800D8FA0_E7F50(temp_s0_2->unk0, (s16) (temp_s0_2->unk2 + 0xA), temp_s0_2->unk4);
								}
							}
						} else {
							temp_v0_8 = temp_s0_2->unk2;
							if ((temp_v0_8 < (D_80222A70 - 0xA)) && ((u32) ((u32) D_80052A8C % 60U) < 0x1EU)) {
								func_800D8FA0_E7F50(temp_s0_2->unk0, (s16) (temp_v0_8 + 0xA), temp_s0_2->unk4);
								func_800D8FA0_E7F50(temp_s0_2->unk0, (s16) (temp_s0_2->unk2 + 0xA), temp_s0_2->unk4);
							}
						}
					}
					if (temp_s2->unkC == 0x41) {
						temp_s0_2->unk3C = 0;
					}
					D_80159234 = 0;
					temp_a0_3 = temp_s0_2->unk1A;
					if ((temp_a0_3 == 5) && (currentLevel == 2)) {
						func_8010ADA4_119D54(temp_s0_2, temp_s2);
						D_801591A0 = temp_s0_2->unk6;
						D_801591A2 = temp_s0_2->unkA;
						D_801591A4 = temp_s0_2->unk8;
						goto block_212;
					}
					if ((temp_a0_3 == 0x11) && (currentLevel == 1)) {
						func_8010B5C8_11A578(temp_s0_2, 0.0f);
						D_801591A0 = temp_s0_2->unk6;
						D_801591A2 = temp_s0_2->unkA;
						D_801591A4 = temp_s0_2->unk8;
						goto block_212;
					}
					if ((temp_s0_2->unk20 & 0x400) && ((currentLevel != 3) || (temp_a0_3 != 0xD))) {
						func_80106628_1155D8(temp_s0_2);
						goto block_153;
					}
					temp_v1_3 = temp_s0_2->unk0;
					temp_v0_9 = D_80052B34->unk0;
					if (((temp_v1_3 >= (temp_v0_9 - 0x1200)) && ((temp_v0_9 + 0x1200) >= temp_v1_3) && (temp_v0_10 = D_80052B34->unk4, temp_v1_4 = temp_s0_2->unk4, ((temp_v1_4 < (temp_v0_10 - 0x1200)) == 0)) && ((temp_v0_10 + 0x1200) >= temp_v1_4)) || ((D_80052A8C & 3) == (spD4 & 3)) || ((currentLevel == 3) && (temp_a0_3 == 0xD)) || ((currentLevel == 4) && ((temp_a0_3 == 0x11) || (temp_a0_3 == 0x12)))) {
block_153:
						if ((temp_s0_2 == D_80052B34) && (temp_s0_2->unk1A != 0)) {
							func_80014508_15108(temp_s0_2, D_8015930E, D_8015930C);
						}
						if (!(temp_s0_2->unk20 & 2)) {
							spCA = func_8011290C_1218BC(temp_s0_2);
							sp86 = sins(temp_s0_2->unk10);
							temp_v0_11 = sins(spCA & 0xFFFF);
							temp_s0_2->unk10 = (u16) spCA;
							temp_f0_2 = (f64) temp_s0_2->unk12;
							if ((s32) (((((f64) (f32) sp86 / 32768.0) * temp_f0_2) + (f64) temp_s0_2->unk34) - (((f64) (f32) temp_v0_11 / 32768.0) * temp_f0_2)) < -4) {
								temp_s0_2->unk20 = (u16) (temp_s0_2->unk20 | 2);
								if (temp_s0_2->unk26 >= 0x191) {
									temp_s0_2->unk26 = 0x190;
								}
								if (temp_s0_2->unk26 < -0x190) {
									temp_s0_2->unk26 = -0x190;
								}
								if (temp_s0_2->unk22 >= 0x191) {
									temp_s0_2->unk22 = 0x190;
								}
								if (temp_s0_2->unk22 < -0x190) {
									temp_s0_2->unk22 = -0x190;
								}
								if (temp_s0_2->unk24 >= 0x191) {
									temp_s0_2->unk24 = 0x190;
								}
								if (temp_s0_2->unk24 < -0x190) {
									temp_s0_2->unk24 = -0x190;
								}
							}
						}
						if ((temp_s0_2 == D_80052B34) && (D_801591AC == 6)) {
							temp_v1_5 = temp_s0_2->unk1A;
							if (vehicleSpecs[temp_v1_5].unk4C & 0x20000000) {
								if (((currentLevel == 4) && (temp_v1_5 == 5)) || ((currentLevel == 4) && (temp_v1_5 == 9)) || ((currentLevel == 3) && (temp_v1_5 == 8)) || ((currentLevel == 3) && (temp_v1_5 == 7)) || ((currentLevel == 2) && (temp_v1_5 == 6))) {
									func_80108B48_117AF8(temp_s0_2, 4);
								} else {
									func_80108CA8_117C58(temp_s0_2);
								}
								D_801591B8 -= 1;
								if (D_801591B8 == 0) {
									spA8 = (s16) temp_s2->unkC / 2;
									sp78 = func_800038E0_44E0(&D_801591B8);
									sp7A = func_800038E0_44E0();
									temp_v1_6 = spA8 >> 1;
									func_800E0F4C_EFEFC((s16) ((((s32) sp78 % spA8) + temp_s0_2->unk0) - temp_v1_6), (s16) ((((s32) sp7A % spA8) + temp_s0_2->unk2) - temp_v1_6), (s16) (((func_800038E0_44E0() % spA8) + temp_s0_2->unk4) - temp_v1_6), 0x16);
									D_801591B8 = func_800038E0_44E0() & 0xB;
								}
							} else {
								func_8010895C_11790C(temp_s0_2);
							}
							if (func_800F9FAC_108F5C(temp_s0_2->unk0, temp_s0_2->unk4) >= temp_s0_2->unk2) {
								func_80113248_1221F8(temp_s0_2);
							} else {
								goto block_212;
							}
						} else {
							temp_v0_12 = temp_s0_2->unk2;
							temp_t1 = temp_s0_2->unk20 & 2;
							if (D_80222A70 >= temp_v0_12) {
								if (temp_t1 != 0) {
									if (temp_s0_2->unk1A == 0) {
										func_80108D80_117D30(temp_s0_2, temp_s2);
									} else if ((temp_s2->unk4C & 0x10000000) && (temp_s2->unk55 != 0)) {
										func_801081F0_1171A0(temp_s0_2, temp_s2);
									} else {
										func_80109370_118320(temp_s0_2, temp_s2);
									}
								} else if (temp_s2->unk4C & 0x10000000) {
									func_80109C84_118C34(temp_s0_2, temp_s2);
								} else if ((D_80222A70 - temp_v0_12) < ((s16) temp_s2->unk38 >> 1)) {
									func_80109C84_118C34(temp_s0_2, temp_s2);
								} else {
									func_8010B60C_11A5BC(temp_s0_2, D_80052B34);
								}
							} else if (temp_t1 != 0) {
								if ((temp_s2->unk4C & 0x20000000) && (temp_s0_2 == D_80052B34) && (temp_s0_2->unk3C != 0)) {
									func_801081F0_1171A0(temp_s0_2, temp_s2);
								} else {
									func_8010895C_11790C(temp_s0_2);
								}
							} else if (temp_s2->unk4C & 0x20) {
								func_80109C84_118C34(temp_s0_2, temp_s2);
							} else {
								func_8010B60C_11A5BC(temp_s0_2, D_80052B34);
							}
block_212:
							if ((temp_s0_2 == D_80052B34) && (temp_s0_2->unk1A == 0)) {
								if (!(temp_s0_2->unk20 & 2) || (D_80222A70 >= temp_s0_2->unk2)) {
									D_80159320 &= 0xFFDFFFFF;
								}
								if (!(D_80159320 & 0x200000)) {
									func_800EB0C8_FA078(temp_s0_2);
								}
							}
							temp_v0_13 = temp_s0_2->unk2;
							if ((D_80222A70 == temp_v0_13) || ((vehicleSpecs[temp_s0_2->unk1A].unk4C & 0x20000) && (temp_v0_13 < (D_80222A70 + 0xC8)))) {
								func_800E1F70_F0F20(temp_s0_2);
							}
							func_80107EBC_116E6C(temp_s0_2);
							func_8010999C_11894C(temp_s0_2);
							func_80113310_1222C0(temp_s0_2);
							if ((temp_s0_2 == D_80052B34) && (D_80159320 & 0x400)) {
								if (D_80052B34 != D_80159D5C) {
									func_8010C4EC_11B49C(D_80052B34);
								}
								if (func_8010CF7C_11BF2C(((Unk8010ED84Pos *)&D_80159218)->unk0, ((Unk8010ED84Pos *)&D_80159218)->unk4) == 0) {
									D_80159320 &= ~0x400;
								}
							}
							if (func_80113808_1227B8(temp_s0_2) == 0) {
								if ((currentLevel == 2) && (temp_s0_2->unk1A == 1)) {
									func_800FB44C_10A3FC(temp_s0_2, D_80159194);
									func_800FB484_10A434(temp_s0_2, D_80159198);
									temp_s0_2->unk22 = 0;
									temp_s0_2->unk6 = (s16) D_801591A0;
								}
								temp_v0_14 = temp_s0_2->unk20;
								if (!(temp_v0_14 & 2) && (temp_v0_14 & 1) && (temp_s0_2->unk12 == 0) && (temp_s0_2->unk26 == 0) && (temp_s0_2->unk24 == 0) && (temp_s0_2->unk22 == 0) && (temp_s0_2->unk30 == 0.0f) && (temp_s0_2->unk34 == 0.0f) && (temp_s0_2->unk38 == 0.0f)) {
									temp_s0_2->unk20 = (u16) (temp_v0_14 & 0xFFFE);
								}
								D_80158C58[spD0] = temp_s0_2->unk58;
								if (temp_s0_2 == D_80052B34) {
									temp_v0_15 = temp_s2->unk4C;
									if ((temp_v0_15 & 0x20000000) && !(temp_v0_15 & 0x20000) && (temp_s0_2->unk20 & 2)) {
										if (((s32) D_80159194 == temp_s0_2->unk0) && ((s32) D_8015919C == temp_s0_2->unk2) && ((s32) D_80159198 == temp_s0_2->unk4)) {
											func_80123AC4_132A74(temp_s0_2);
										} else {
											D_8015930C = 0;
										}
									}
								}
							}
						}
					}
				}
			}
			sp60 -= 1;
			spD4 -= 1;
		} while (spD4 != 0);
	}
	if (currentLevel == 4) {
		func_80115CC0_124C70();
	}
	if (D_80159320 & 0x2000) {
		func_800FAD10_109CC0();
	}
	temp_v1_7 = &D_80159050[D_8015904C];
	temp_v1_7->unk0 = (s16) D_80052B2C->unk38->unk0;
	temp_v1_7->unk2 = (s16) D_80052B2C->unk38->unk2;
	D_8015904C += 1;
	D_8015904C = (s16) ((s16) D_8015904C % 50);
	temp_v1_7->unk4 = (s16) D_80052B2C->unk38->unk4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80113CEC_122C9C.s")
#endif

void func_80115604_1245B4(VehicleInstance *arg0)
{
	s32 *base;
	s32 height;
	s32 i;
	base = (s32 *)((func_800FAE60_109E10(arg0) * 0x10) + ((s32)D_80159510));
	i = 3; do
	{
		height = func_800B84D0_C7480((s16)((s32)(D_80159D78[i] + arg0->unk4C)), (s16)((s32)(D_80159D98[i] + arg0->unk54))) >> 8;
		if ((!(vehicleSpecs[arg0->unk1A].unk4C & 0x100)) && (height < D_80222A70))
		{
			height = D_80222A70;
		}
		base[i] = height;
	} while (i--);
}

s32 func_80115730_1246E0(VehicleInstance *arg0, s32 arg1)
{
	s32 var_a1;
	s32 temp_v1;
	s32 temp_a3;
	temp_a3 = arg1 * 4;
	temp_v1 = 8;
	var_a1 = temp_v1 = func_800B84D0_C7480((s16)((s32)(D_80159D78[arg1] + arg0->unk4C)), (s16)((s32)(D_80159D98[arg1] + arg0->unk54))) >> temp_v1;
	if ((!(vehicleSpecs[arg0->unk1A].unk4C & 0x100)) && (temp_v1 < D_80222A70))
	{
		var_a1 = D_80222A70;
	}
	return var_a1 - (*((s32 *)((((u8 *)D_80159510) + (func_800FAE60_109E10(arg0) * 0x10)) + temp_a3)));
}

s32 func_80115824_1247D4(VehicleInstance *arg0, s32 arg1) {
	s32 var_v1;
	s32 temp_a3;

	temp_a3 = arg1 * 4;
	var_v1 = func_800B84D0_C7480(
		(s16)(s32)(D_80159D78[arg1] + arg0->unk4C),
		(s16)(s32)(D_80159D98[arg1] + arg0->unk54)) >> 8;

	if (!(vehicleSpecs[arg0->unk1A].unk4C & 0x100) && (var_v1 < D_80222A70)) {
		var_v1 = D_80222A70;
	}

	if (*(s32 *)((u8 *)D_80159510 + (func_800FAE60_109E10(arg0) * 0x10) + temp_a3) < var_v1) {
		return 1;
	}
	return 0;
}

void func_8011592C_1248DC(s16 arg0, s16 arg1) {
	D_80159274 = 0;
	D_80159278 = 0;
	D_8015927A = 0;
	D_8013FD78_14ED28->unk1A = 0x13;
	func_800FAE84_109E34(D_8013FD78_14ED28);
	D_8013FD78_14ED28->unk20 |= 0x8041;
	D_8013FD78_14ED28->unkE = D_8013FD78_14ED28->unk6;
	D_8013FD78_14ED28->unkA = func_800065A4_71A4(-0xA9F, (s16)(D_80052B34->unkA >> 1), (u16)(D_80159274 << 11));
	func_800FB44C_10A3FC(D_8013FD78_14ED28, (f32)arg0);
	func_800FB484_10A434(D_8013FD78_14ED28, (f32)arg1);
	func_800FB468_10A418(D_8013FD78_14ED28, (f32)(func_800B84D0_C7480(arg0, arg1) >> 8));
	D_80159320 |= 0x10000000;
	func_800FAD10_109CC0();
	D_801591CA = 0;
	D_801591C8 = D_801591CA;
}

// CURRENT(455)
#ifdef NON_MATCHING
void func_80115A74_124A24(void) {
	VehicleInstance *var_s0;
	s16 temp_v0;
	s8 *var_s4;
	s32 twelve;
	s32 ten;

	if ((currentLevel == 1) && !(D_80159320 & 0x400000) && (D_80052B34->unk1A == 3)) {
		D_80159320 |= 0x400000;
		func_802D4CD0_18D7E0(7, 0);
		setRandomSeed(0xFEEDABED);
		var_s0 = &vehicleInstances[115];
		var_s4 = &D_80158C43;
		twelve = 12;
		ten = 10;
		do {
			VehicleInstance *temp_s1;

			temp_s1 = var_s0;
			var_s0->unk1A = 0x11;
			func_800FAE84_109E34(var_s0);
		loop_5:
			func_800FB44C_10A3FC(var_s0, (f32)(((func_800038E0_44E0() % twelve) + 0x4B) << 8));
			func_800FB484_10A434(var_s0, (f32)(((func_800038E0_44E0() % ten) - 0x66) << 8));
			func_800FB468_10A418(var_s0, (f32)(func_800F9D24_108CD4(var_s0->unk0, var_s0->unk4) + 0x190));
			temp_v0 = var_s0->unk0;
			if ((temp_v0 >= 0x4E00) && (temp_v0 < 0x5501) && (var_s0->unk4 >= -0x6400)) {
				if (temp_s1->unk4 < 0x5E01) {
					goto loop_5;
				}
			}
			temp_v0 = func_800038E0_44E0();
			temp_s1->unkE = temp_v0;
			temp_s1->unk6 = temp_v0;
			temp_s1->unk46 |= 0x3F;
			*var_s4 = 2;
			var_s4 += 1;
			var_s0 += 1;
			temp_s1->unk20 = temp_s1->unk20 | 0x8040;
			temp_s1->unk20 = temp_s1->unk20 & -2;
		} while (var_s4 != &D_80158C49);
	}
	func_800FAD10_109CC0();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80115A74_124A24.s")
#endif

void func_80115CC0_124C70(void)
{
  VehicleInstance *var_s0;
  VehicleInstance *var_s3;
  VehicleInstance *var_s4;
  s32 var_s1;
  s32 var_s2;
  var_s0 = vehicleInstances;
  var_s2 = 0;
  var_s1 = 0x7F;
  do
  {
	if (var_s0->unk1A == 0x11)
	{
	  if ((var_s0->unk6 + 0x2000) & 0x4000)
	  {
		var_s0->unk6 = -0x4000;
		var_s0->unkE = var_s0->unk6;
		func_800FB44C_10A3FC(var_s0, (f32) ((s16) ((var_s0->unk0 & 0xFF00) + 0xC3)));
		var_s3 = var_s0;
	  }
	  else
	  {
		var_s0->unk6 = -0x8000;
		var_s0->unkE = var_s0->unk6;
 func_800FB484_10A434(var_s0, (f32) ((s16) ((var_s0->unk4 & 0xFF00) + 0x37))); var_s4 = var_s0; } } var_s0++; } while (var_s1--); var_s0 = vehicleInstances; var_s1 = 0x7F; do { if (var_s0->unk1A == 0x12) { if (var_s2 & 1) {
		if (var_s4->unk20 & 0x8000)
		{
		  func_800FB44C_10A3FC(var_s0, (var_s4->unk4C + 452.0f) + ((f32) ((var_s2 >> 1) * 0x165)));
		  func_800FB484_10A434(var_s0, var_s4->unk54);
		  var_s0->unk6 = -0x8000;
		  var_s0->unkE = var_s0->unk6;
		}
	  }
	  else
		if (var_s3->unk20 & 0x8000)
	  {
		func_800FB44C_10A3FC(var_s0, var_s3->unk4C);
		func_800FB484_10A434(var_s0, (var_s3->unk54 + 452.0f) + ((f32) ((var_s2 >> 1) * 0x165)));
		var_s0->unk6 = -0x4000;
		var_s0->unkE = var_s0->unk6;
	  }
	  var_s0->unk20 |= 1;
	  func_800FB430_10A3E0(var_s0, 0.0f);
	  var_s2++;
	}
	var_s0++;
  }
  while (var_s1--);
}
