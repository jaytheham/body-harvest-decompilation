#include <ultra64.h>
#include "common.h"
#include "version_shift.h"

const char D_801446A0_153650[] = "Error in walker index"; // "Error in walker index"
const char D_801446B8_153668[] = "Attempt to get info on unallocated walker ID"; // "Attempt to get info on unallocated walker ID"
const char D_801446E8_153698[] = "Error in walker index"; // "Error in walker index"
const char D_80144700_1536B0[] = "Attempt to force unallocated walker ID"; // "Attempt to force unallocated walker ID"
const char D_80144728_1536D8[] = "Error in walker index"; // "Error in walker index"
const char D_80144740_1536F0[] = "Attempt to move unallocated walker ID"; // "Attempt to move unallocated walker ID"
const char D_80144768_153718[] = "Error in walker index"; // "Error in walker index"
const char D_80144780_153730[] = "Attempt to move unallocated walker ID"; // "Attempt to move unallocated walker ID"
const char D_801447A8_153758[] = "Error in walker index"; // "Error in walker index"
const char D_801447C0_153770[] = "Attempt to move unallocated walker ID"; // "Attempt to move unallocated walker ID"
const char D_801447E8_153798[] = "Error in walker index"; // "Error in walker index"
const char D_80144800_1537B0[] = "Attempt to move unallocated walker ID"; // "Attempt to move unallocated walker ID"
const char D_80144828_1537D8[] = "Error in walker index"; // "Error in walker index"
const char D_80144840_1537F0[] = "Attempt to move unallocated walker ID"; // "Attempt to move unallocated walker ID"
const char D_80144868_153818[] = "Error in walker index"; // "Error in walker index"
const char D_80144880_153830[] = "Attempt to move unallocated walker ID"; // "Attempt to move unallocated walker ID"
const char D_801448A8_153858[] = "FREE WALKER %d: %d walkers allocated\n"; // "FREE WALKER %d: %d walkers allocated\n"
const char D_801448D0_153880[] = "Error in walker index"; // "Error in walker index"
const char D_801448E8_153898[] = "Attempt to free unallocated walker ID %d\n"; // "Attempt to free unallocated walker ID %d\n"
const char D_80144914_1538C4[] = "CANNOT ALLOCATE NEW WALKER!!!\n"; // "CANNOT ALLOCATE NEW WALKER!!!\n"
const char D_80144934_1538E4[] = "ALLOCATE WALKER %d: %d walkers allocated\n"; // "ALLOCATE WALKER %d: %d walkers allocated\n"
const char D_80144960_153910[] = "-----------------------------\n"; // "-----------------------------\n"
const char D_80144980_153930[] = "\t%d,%d\n"; // "\t%d,%d\n"
const char D_80144988_153938[] = "\t%d\n"; // "\t%d\n"
const char D_80144990_153940[] = "\t%f\n"; // "\t%f\n"
const char D_80144998_153948[] = "\t%f\n"; // "\t%f\n"
const char D_801449A0_153950[] = "\t%d\n"; // "\t%d\n"
const char D_801449A8_153958[] = "AARRGGH!! Alien buggered off leaving it's legs behind!\n"; // "AARRGGH!! Alien buggered off leaving it's legs behind!\n"

const ShadowGeometryConstant D_801449E0_153990 = {0.99};
const f32 D_801449E8_153998[1] = {0.99};

const ShadowGeometryConstant D_801449F0_1539A0 = {180};

const ShadowGeometryConstant D_801449F8_1539A8 = {180};

const ShadowGeometryConstant D_80144A00_1539B0 = {3.14};

const ShadowGeometryConstant D_80144A08_1539B8 = {180};

const ShadowGeometryConstant D_80144A10_1539C0 = {3.14};

const ShadowGeometryConstant D_80144A18_1539C8 = {180};

const f64 D_80144A20_1539D0[1] = {180};

const f64 D_80144A28_1539D8[1] = {3.141592654};

const f64 D_80144A30_1539E0[1] = {180};

const f64 D_80144A38_1539E8[1] = {1.2};

const char D_80144A40_1539F0[] = "Max static count %d\n"; // "Max static count %d\n"

const f64 D_80144A58_153A08[1] = {2608};

const f64 D_80144A60_153A10[1] = {2000};

const f64 D_80144A68_153A18[1] = {2000};

const f64 D_80144A70_153A20[1] = {2000};

const f64 D_80144A78_153A28[1] = {0.01};

const ShadowGeometryConstant D_80144A80_153A30 = {0.01};

const f64 D_80144A88_153A38[1] = {1.414213562};

const f64 D_80144A90_153A40[1] = {0.9};

const f64 D_80144A98_153A48[1] = {0.1666666667};

const f64 D_80144AA0_153A50[1] = {0.9};

const f64 D_80144AA8_153A58[1] = {0.1666666667};

const f64 D_80144AB0_153A60[1] = {0.1};

const f64 D_80144AB8_153A68[1] = {0.9};

const f64 D_80144AC0_153A70[1] = {0.9};

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
VehicleInstance *D_8013FD78_14ED28 = (VehicleInstance *)OVERLAY_PTR(0x800505C8);
s32 D_8013FD7C_14ED2C = 0;
s32 D_8013FD80_14ED30 = 0x00FB0000;
s16 D_8013FD84_14ED34 = 0;
s32 D_8013FD88_14ED38 = 0;
s32 D_8013FD8C_14ED3C = 0;
s32 D_8013FD90_14ED40[5] = {-256, -256, -256, -256, -256};
s32 D_8013FDA4_14ED54 = 0;
Unk8013FDA8Entry D_8013FDA8_14ED58[156] = {
	{0x00000000, 0x00000000, {0, 0, 0}, 0x0000},
	{0x09043D50, OVERLAY_PTR(0x800FEB04), {0, 0, -12}, 0x0007},
	{0x05030F18, OVERLAY_PTR(0x800FF334), {0, 9, 59}, 0x000B},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {-55, 1, 32}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {-15, 23, -15}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {0, 41, 63}, 0x0007},
	{0x0904FC88, OVERLAY_PTR(0x800FF794), {0, 62, 0}, 0x0005},
	{0x050445A0, OVERLAY_PTR(0x800FEB04), {3, 16, -1}, 0x000B},
	{0x0904F7E0, OVERLAY_PTR(0x800FF90C), {0, 8, 28}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {9, 2, 28}, 0x0017},
	{0x090517D0, OVERLAY_PTR(0x800FF80C), {55, 31, 35}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {2, 0, 30}, 0x0006},
	{0x090517D0, OVERLAY_PTR(0x800FF88C), {-55, 31, 35}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {2, 0, 30}, 0x0006},
	{0x090528E8, OVERLAY_PTR(0x800FE910), {0, 0, 0}, 0x0007},
	{0x090528E8, OVERLAY_PTR(0x800FE910), {-75, 0, 0}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {-32, 62, 26}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {-30, 53, 10}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {0, 227, 302}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {-23, 36, 0}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {-32, 58, 33}, 0x0007},
	{0x05030F18, OVERLAY_PTR(0x800FF334), {0, 13, 69}, 0x000B},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {-57, 15, 41}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {-23, 36, 0}, 0x0007},
	{0x0905FBB0, OVERLAY_PTR(0x800FF794), {0, 0, -36}, 0x0005},
	{0x0905FD78, OVERLAY_PTR(0x800FF90C), {0, 93, 12}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {0, 3, 26}, 0x0006},
	{0x0A04EB10, OVERLAY_PTR(0x800FF794), {0, 0, 0}, 0x0005},
	{0x0A04F1D8, OVERLAY_PTR(0x800FF90C), {0, 121, 80}, 0x0005},
	{0x0A04F580, OVERLAY_PTR(0x800FE910), {0, 0, 0}, 0x0007},
	{0x0A04F898, OVERLAY_PTR(0x800FE910), {0, 0, 0}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {-22, 0, 150}, 0x0017},
	{0x05030BA0, OVERLAY_PTR(0x800FF334), {0, 73, -80}, 0x000B},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {0, 87, 39}, 0x0007},
	{0x0A0520C0, OVERLAY_PTR(0x800FF794), {0, 82, 0}, 0x0005},
	{0x0A0523C8, OVERLAY_PTR(0x800FF90C), {0, 7, 0}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {7, 3, 44}, 0x0017},
	{0x05030E30, OVERLAY_PTR(0x800FF334), {-90, -15, 146}, 0x000B},
	{0x05030E30, OVERLAY_PTR(0x800FF334), {95, -15, 146}, 0x000B},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {6, -3, 269}, 0x0017},
	{0x0A057FF8, OVERLAY_PTR(0x800FED60), {0, 0, 0}, 0x0007},
	{0x0A057DB0, OVERLAY_PTR(0x800FE910), {-11, -424, 46}, 0x0007},
	{0x0A057DB0, OVERLAY_PTR(0x800FE954), {-11, -424, -46}, 0x0007},
	{0x05030FF8, OVERLAY_PTR(0x800FF334), {0, 0, 80}, 0x000B},
	{0x05032038, OVERLAY_PTR(0x800FF5A8), {-2, 52, 47}, 0x000B},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {0, 23, 52}, 0x0007},
	{0x0A05D690, OVERLAY_PTR(0x800FF984), {0, 81, 0}, 0x0005},
	{0x0A05D8A0, OVERLAY_PTR(0x800FE910), {0, 0, 0}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {0, 9, 206}, 0x0006},
	{0x0A05C9B0, OVERLAY_PTR(0x800FF90C), {0, 63, 77}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {0, 0, 191}, 0x0006},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {27, 42, 10}, 0x0007},
	{0x00000000, OVERLAY_PTR(0x800FE910), {0, 59, -45}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {-15, 75, -17}, 0x0017},
	{0x05030BA0, OVERLAY_PTR(0x800FF334), {-83, 9, 112}, 0x000B},
	{0x05030BA0, OVERLAY_PTR(0x800FF334), {81, 9, 112}, 0x000B},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {146, 14, 65}, 0x0017},
	{0x0A06A430, OVERLAY_PTR(0x800FF794), {0, 0, -13}, 0x0005},
	{0x050445A0, OVERLAY_PTR(0x800FEB04), {11, 94, 0}, 0x000B},
	{0x0A06A938, OVERLAY_PTR(0x800FF90C), {0, 68, 51}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {0, 2, 115}, 0x0006},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {38, 83, 49}, 0x0007},
	{0x0A06E760, OVERLAY_PTR(0x800FF794), {0, 87, 295}, 0x0005},
	{0x0A06E520, OVERLAY_PTR(0x800FF90C), {-2, 40, 9}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {-12, 2, 44}, 0x0017},
	{0x05030E30, OVERLAY_PTR(0x800FF334), {0, 16, 136}, 0x000B},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {-82, 9, 74}, 0x0017},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {0, 0, 0}, 0x0017},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {30, 47, 16}, 0x0007},
	{0x0B04F860, OVERLAY_PTR(0x800FEB5C), {0, 0, 0}, 0x0005},
	{0x0B04FAE8, OVERLAY_PTR(0x800FECD4), {-32, 0, 51}, 0x0027},
	{0x0B04FAE8, OVERLAY_PTR(0x800FEC78), {-32, 0, -47}, 0x0027},
	{0x0B04FAE8, OVERLAY_PTR(0x800FECD4), {34, 0, 51}, 0x0007},
	{0x0B04FAE8, OVERLAY_PTR(0x800FEC78), {34, 0, -47}, 0x0006},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {22, 38, 9}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {22, 38, 9}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {30, 56, 3}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {48, 47, 21}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {36, 52, 12}, 0x0007},
	{0x05031F30, OVERLAY_PTR(0x800FF5A8), {0, 74, 86}, 0x000B},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {23, -28, 217}, 0x0007},
	{0x05031DB0, OVERLAY_PTR(0x800FF5A8), {0, 38, 44}, 0x000B},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {46, -54, 119}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {47, 95, 74}, 0x0007},
	{0x0B05EF00, OVERLAY_PTR(0x800FF794), {0, 77, 0}, 0x0005},
	{0x0B05F778, OVERLAY_PTR(0x800FF90C), {0, 10, 0}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {11, 0, 45}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {38, 64, 20}, 0x0007},
	{0x0B0659E8, OVERLAY_PTR(0x800FF794), {0, 95, -35}, 0x0005},
	{0x0B065600, OVERLAY_PTR(0x800FF90C), {0, 18, 0}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {22, 38, 9}, 0x0007},
	{0x0B04B808, OVERLAY_PTR(0x800FE9AC), {0, 1, -6}, 0x0007},
	{0x0B04B490, OVERLAY_PTR(0x800FEA2C), {49, 122, -56}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FEAA0), {22, 38, 9}, 0x0007},
	{0x0B0694D0, OVERLAY_PTR(0x800FF794), {0, 59, -12}, 0x0005},
	{0x050445A0, OVERLAY_PTR(0x800FEB04), {-14, 41, 39}, 0x000B},
	{0x0B069960, OVERLAY_PTR(0x800FF90C), {0, 31, 75}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {0, -6, 136}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {38, 55, 24}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {37, 95, 86}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {22, 38, 9}, 0x0007},
	{0x050523D0, OVERLAY_PTR(0x800FE9AC), {79, 88, 0}, 0x0007},
	{0x050523D0, OVERLAY_PTR(0x800FE9AC), {-79, 88, 0}, 0x0007},
	{0x05052028, OVERLAY_PTR(0x800FFA00), {0, 74, -74}, 0x0007},
	{0x05051650, OVERLAY_PTR(0x800FF90C), {-37, 71, -57}, 0x0025},
	{0x05051B48, OVERLAY_PTR(0x800FFCB8), {0, 0, 0}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF2BC), {0, 31, 67}, 0x0007},
	{0x05051650, OVERLAY_PTR(0x800FF90C), {38, 71, -57}, 0x0045},
	{0x05051B48, OVERLAY_PTR(0x800FFCB8), {0, 0, 0}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF2BC), {0, 31, 67}, 0x0007},
	{0x00000000, OVERLAY_PTR(0x800FE910), {32, 31, 8}, 0x0007},
	{0x00000000, OVERLAY_PTR(0x800FFCB8), {0, 0, 71}, 0x0005},
	{0x00000000, OVERLAY_PTR(0x800FE910), {0, 0, 45}, 0x0005},
	{0x00000000, OVERLAY_PTR(0x800FFC3C), {8, 0, 36}, 0x0005},
	{0x00000000, OVERLAY_PTR(0x800FF2BC), {0, 0, 25}, 0x0007},
	{0x00000000, OVERLAY_PTR(0x800FF90C), {-75, 30, 0}, 0x0085},
	{0x00000000, OVERLAY_PTR(0x800FE910), {-4, 11, 32}, 0x0007},
	{0x00000000, OVERLAY_PTR(0x800FE910), {-32, -5, 39}, 0x0027},
	{0x00000000, OVERLAY_PTR(0x800FE910), {-33, 6, 8}, 0x0007},
	{0x00000000, OVERLAY_PTR(0x800FE910), {-33, 31, 8}, 0x0007},
	{0x00000000, OVERLAY_PTR(0x800FFCB8), {0, 0, 71}, 0x0005},
	{0x00000000, OVERLAY_PTR(0x800FE910), {0, 0, 45}, 0x0005},
	{0x00000000, OVERLAY_PTR(0x800FFC3C), {8, 0, 36}, 0x0005},
	{0x00000000, OVERLAY_PTR(0x800FF2BC), {0, 0, 25}, 0x0007},
	{0x00000000, OVERLAY_PTR(0x800FE910), {-8, 76, -125}, 0x0087},
	{0x00000000, OVERLAY_PTR(0x800FE910), {0, 0, 0}, 0x0007},
	{0x00000000, OVERLAY_PTR(0x800FE910), {0, 0, 0}, 0x0007},
	{0x0C04E5F8, OVERLAY_PTR(0x800FF794), {0, 72, -15}, 0x0005},
	{0x0C04E230, OVERLAY_PTR(0x800FF90C), {5, 7, -8}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {-4, 0, 66}, 0x0006},
	{0x0C052F70, OVERLAY_PTR(0x800FF794), {0, 48, 14}, 0x0005},
	{0x0C052888, OVERLAY_PTR(0x800FF90C), {0, 78, 25}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {0, -30, 154}, 0x0006},
	{0x05031BC0, OVERLAY_PTR(0x800FF5A8), {0, 67, 148}, 0x000B},
	{0x05031BC0, OVERLAY_PTR(0x800FF5A8), {0, 97, -157}, 0x000B},
	{0x0C057DB0, OVERLAY_PTR(0x800FEDBC), {0, 32, 163}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {-54, 158, 103}, 0x0007},
	{0x0C05A0D8, OVERLAY_PTR(0x800FF794), {0, 45, 135}, 0x0005},
	{0x0C059F30, OVERLAY_PTR(0x800FF90C), {0, 25, 0}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {19, 2, 30}, 0x0017},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {74, 0, 8}, 0x0017},
	{0x05031F30, OVERLAY_PTR(0x800FF5A8), {0, 92, 48}, 0x000B},
	{0x05031F30, OVERLAY_PTR(0x800FF5A8), {0, 55, 48}, 0x000B},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {0, -50, 143}, 0x0007},
	{0x05030E30, OVERLAY_PTR(0x800FF334), {0, 96, -45}, 0x000B},
	{0x0C05ED20, OVERLAY_PTR(0x800FE910), {0, 120, 45}, 0x000B},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {0, 99, 89}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {31, 52, 17}, 0x0007},
	{0x0C067C68, OVERLAY_PTR(0x800FF720), {0, 87, -219}, 0x0005},
	{0x0C0679D0, OVERLAY_PTR(0x800FF390), {0, 25, 223}, 0x000A},
	{0x0C06A120, OVERLAY_PTR(0x800FF794), {4, 94, -82}, 0x0007},
	{0x0C064CB8, OVERLAY_PTR(0x800FF794), {0, 44, -71}, 0x0005},
	{0x0C064850, OVERLAY_PTR(0x800FF90C), {0, 14, -20}, 0x0005},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {0, 0, 0}, 0x0006},
	{0x0C04F5B0, OVERLAY_PTR(0x800FF164), {3, 45, 63}, 0x0007},
	{0x050312E8, OVERLAY_PTR(0x800FF258), {39, 82, -8}, 0x0007}
};
WeaponSpecEntry D_80140768_14F718[14] = {
	{0, 0, 0, 20, 0},
	{35, 30, 33, 20, 6000},
	{44, 30, 34, 20, 6000},
	{48, 15, 4, 20, 8000},
	{71, 34, 35, 20, 5000},
	{100, 32, 36, 20, 5000},
	{56, 31, 36, 20, 5000},
	{71, 0, 2, 8, 8000},
	{0, 0, 2, 5, 6000},
	{64, 0, 2, 5, 9000},
	{87, 0, 250, 7, 5000},
	{52, 0, 2, 10, 8000},
	{93, 0, 2, 5, 8000},
	{8, 25, 18, 20, 5750}
};
RoadTileInfo D_801407F4_14F7A4[] = {
	{0xE0, 0xE0, 0x10, 0x5B, 0x0A, 0x00},
	{0x80, 0x80, 0x0A, 0xAA, 0x0C, 0x00},
	{0xE0, 0xE0, 0x20, 0x00, 0x0A, 0x00},
	{0x80, 0x80, 0x0A, 0xAA, 0x0C, 0x00},
	{0x40, 0x40, 0x00, 0x00, 0x05, 0x00},
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{0x80, 0x80, 0x0A, 0xAA, 0x03, 0x00},
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{0xE0, 0xE0, 0x10, 0x5B, 0x0A, 0x00},
	{0x40, 0x40, 0x00, 0x00, 0x05, 0x00},
	{0x80, 0x80, 0x00, 0x00, 0x03, 0x00},
	{0x80, 0x80, 0x00, 0x00, 0x0C, 0x00},
	{0x80, 0x80, 0x0A, 0xAA, 0x03, 0x00},
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{0xC0, 0xC0, 0x00, 0x00, 0x0A, 0x00},
	{0x80, 0x80, 0x00, 0x00, 0x0F, 0x00},
	{0x40, 0x80, 0x00, 0x00, 0x04, 0x00},
	{0x80, 0xC4, 0x00, 0x00, 0x02, 0x00},
	{0x80, 0x80, 0x00, 0x00, 0x0E, 0x00},
	{0x80, 0x80, 0x00, 0x00, 0x07, 0x00},
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	{0x80, 0x80, 0x00, 0x00, 0x0C, 0x00},
	{0x80, 0x80, 0x00, 0x00, 0x03, 0x00}
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
s16 D_801409EC_14F99C = 0;
s16 D_801409F0_14F9A0 = 0;
u8 D_801409F4_14F9A4[4] = {0};

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

void func_800F2980_101930(UnkF9230ShadowWalker *walker) {
	s32 sp7C;
	s32 sp78;
	s32 pad1;
	s32 pad2;
	s16 sp6E;
	s16 sp6C;
	s16 sp6A;
	s16 sp68;
	s16 var_s4;
	s16 var_v0;
	s32 var_s3;
	u8 temp_s0;
	Unk801601F0 *temp_v0;

	var_s4 = walker->limbs[0].unk23;
	temp_v0 = &D_801601F0[(u8)var_s4];
	sp6E = temp_v0->unk10;
	sp6C = temp_v0->unk6;
	sp6A = temp_v0->unk4;
	temp_s0 = temp_v0->unkC;
	var_s4 = temp_v0->unkE;
	if (walker->limbs[0].unk22 & 0x80) {
		sp68 = walker->limbs[0].unk1A;
		var_v0 = walker->limbs[0].unk18;
	} else {
		var_v0 = walker->limbs[0].unk18;
		sp68 = var_v0;
	}
	if (walker->limbs[0].unk22 == 0x10) {
		sp68 = 0;
	}
	sp7C = (s32)(walker->limbs[0].position.x + (walker->limbs[0].unk1C * ((f32)coss(var_v0) / 32768.0)));
	sp78 = (s32)(walker->limbs[0].position.z + (walker->limbs[0].unk1C * ((f32)sins(walker->limbs[0].unk18) / 32768.0)));
	walker->limbs[0].position.anchorX = sp7C;
	walker->limbs[0].position.anchorZ = sp78;
	var_s3 = 0;
	if (temp_s0 / 2 > 0) {
		do {
			s32 pre_angle = sp68 - var_s4;
			if (walker->limbs[var_s3 + 1].unk23 == 0) {
				var_v0 = pre_angle - 0x4000;
				walker->limbs[var_s3 + 1].unk6 = (s32) ((((f32) coss(var_v0) / 32768.0) * sp6C) + sp7C);
				walker->limbs[var_s3 + 1].unk8 = (s32) ((((f32) sins(var_v0) / 32768.0) * sp6C) + sp78);
				walker->limbs[var_s3 + 1].unk1A = (s32) ((((f32) coss(var_v0) / 32768.0) * sp6A) + sp7C);
				walker->limbs[var_s3 + 1].unk1C = (s32) ((((f32) sins(var_v0) / 32768.0) * sp6A) + sp78);
				var_v0 = sp68 + var_s4 + 0x4000;
				walker->limbs[var_s3 + (temp_s0 / 2) + 1].unk6 = (s32) ((((f32) coss(var_v0) / 32768.0) * sp6C) + sp7C);
				walker->limbs[var_s3 + (temp_s0 / 2) + 1].unk8 = (s32) ((((f32) sins(var_v0) / 32768.0) * sp6C) + sp78);
				walker->limbs[var_s3 + (temp_s0 / 2) + 1].unk1A = (s32) ((((f32) coss(var_v0) / 32768.0) * sp6A) + sp7C);
				walker->limbs[var_s3 + (temp_s0 / 2) + 1].unk1C = (s32) ((((f32) sins(var_v0) / 32768.0) * sp6A) + sp78);
				var_s4 += sp6E;
			}
			var_s3 += 1;
		} while (var_s3 != (temp_s0 / 2));
	}
}

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

	walker->limbs[0].words[0] = arg1;
	walker->limbs[0].words[1] = arg2;
	walker->limbs[0].words[4] = arg1;
	walker->limbs[0].words[5] = arg2;
	walker->limbs[0].words[2] = arg1;
	walker->limbs[0].words[3] = arg2;
	walker->limbs[0].unk1C = 0;

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

void func_800F3038_101FE8(u8 arg0)
{
	UnkF9230ShadowWalker *walker;
	u8 count;
	u8 i;
	if (arg0 >= 9)
	{
		osSyncPrintf(D_80144768_153718);
	}
	if (D_80157FF0[arg0] != (-1))
	{
		osSyncPrintf(D_80144780_153730);
	}
	walker = &D_80158000[arg0];
	count = D_801601F0[walker->limbs[0].unk23].unkC;
	walker->limbs[0].unk22 = 2;
	if (count > 0)
	{
		i = 0;
		do
		{
			UnkF9230ShadowLimb *limb = &walker->limbs[i];
			UnkF9230ShadowLimb *next = limb + 1;
			if (next->unk23 == 1)
			{
				next->unk23 = 2;
			}
			if (next->unk23 == 0)
			{
				next->unk23 = 1;
			}
			i++;
		} while (i < count);
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

void func_800F3190_102140(u8 arg0)
{
	UnkF9230ShadowWalker *walker;
	u8 count;
	u8 i;
	if (arg0 >= 9)
	{
		osSyncPrintf(D_801447A8_153758);
	}
	if (D_80157FF0[arg0] != (-1))
	{
		osSyncPrintf(D_801447C0_153770);
	}
	walker = &D_80158000[arg0];
	walker->limbs[0].unk22 = 8;
	count = D_801601F0[walker->limbs[0].unk23].unkC;

	for (i = 0; i < count; i++)
	{
		UnkF9230ShadowLimb *limb = &walker->limbs[i];
		UnkF9230ShadowLimb *next = limb + 1;
		if (next->unk23 == 1)
		{
			next->unk23 = 2;
		}
		if (next->unk23 == 0)
		{
			next->unk23 = 1;
		}
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

void func_800F32EC_10229C(u8 arg0, u8 arg1)
{
	UnkF9230ShadowWalker *walker;
	u8 i;
	u8 count;

	if (arg0 >= 9)
	{
		osSyncPrintf(D_801447E8_153798);
	}
	if (D_80157FF0[arg0] != -1)
	{
		osSyncPrintf(D_80144800_1537B0);
	}
	walker = &D_80158000[arg0];
	walker->limbs[0].unk22 = 4;
	count = D_801601F0[walker->limbs[0].unk23].unkC;

	for (i = 0; i < count; i++)
	{
		UnkF9230ShadowLimb *limb = &walker->limbs[i];
		UnkF9230ShadowLimb *next = &limb[1];

		if (next->unk23 == 1)
		{
			next->unk23 = 2;
		}
		if (arg1 & (1 << i))
		{
			next->unk23 = 1;
			next->unk22 = func_800C2274_D1224(limb[1].unk14, limb[1].unk16, limb[1].unk18, 0);
		}
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

void func_800F34AC_10245C(u8 arg0) {
	UnkF9230ShadowWalker *walker;
	
	if (arg0 >= 9) {
		osSyncPrintf(D_80144828_1537D8);
	}
	if (D_80157FF0[arg0] != -1) {
		osSyncPrintf(D_80144840_1537F0);
	}
	walker = &D_80158000[arg0];
	walker->limbs[0].unk22 = 0x10;
	walker->limbs[0].words[0] = walker->limbs[0].words[4];
	walker->limbs[0].words[1] = walker->limbs[0].words[5];
	walker->unk16A = alienInstances[walker->alienIdx].unk2 + D_8014DD50[alienInstances[walker->alienIdx].unkC].unk2;
}

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

// Free walker
void func_800F375C_10270C(s8 arg0) {
	osSyncPrintf(D_801448A8_153858, arg0, D_80157FF8);
	if (arg0 >= 8 || arg0 < -1) {
		osSyncPrintf(D_801448D0_153880, arg0);
		return;
	}
	if (D_80157FF0[arg0] != -1 && arg0 != -1) {
		osSyncPrintf(D_801448E8_153898, arg0);
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

s32 func_800F384C_1027FC(UnkF9230Arg0 *arg0, s16 arg1, volatile s16 arg2, s16 arg3) {
	volatile s16 sp36;
	f32 var_f2;
	s32 sp36_s32;
	s32 height;

	func_8011E6FC_12D6AC(arg2, arg3, (s16 *)&sp36);
	sp36_s32 = alienInstances[arg0->unk144].typeIndex;
	height = alienTypes[sp36_s32].unk58;

	if (height < 0x33) {
		var_f2 = 3.0f;
	} else {
		var_f2 = 2.0f;
	}

	sp36_s32 = sp36;
	if ((f32)sp36_s32 < (f32)arg1 - (f32)height * var_f2) {
		sp36_s32 = (s16)((f32)arg1 - (f32)height * var_f2);
	} else if ((f32)arg1 - (f32)height * var_f2 < (f32)sp36_s32) {
		sp36_s32 = (s16)((f32)arg1 + (f32)height * var_f2);
	}

	if (arg1 < sp36_s32) {
		sp36 = (s16)sp36_s32;
		sp36_s32 = (s16)(func_800B84D0_C7480(arg2, arg3) >> 8);
	}

	return sp36_s32;
}

#ifdef NON_MATCHING
s16 func_800F3990_102940(u8 arg0, u8 arg1) {
	UnkF9230ShadowWalker *walker;
	s16 angleStep;
	u8 slot;
	s32 resultSlot;
	u8 alienIdx;
	s16 innerRadius;
	s16 outerRadius;
	s32 i;
	s32 pad3;
	s16 baseAngle;
	s16 alienX;
	s16 alienZ;
	s16 alienY;
	s32 halfCount;
	AlienInstance *inst;

	alienIdx = arg0;
	inst = &alienInstances[alienIdx];
	alienX = inst->unk0;
	alienZ = inst->unk4;
	alienY = inst->unkE;
	if (D_80157FF8 >= 8) {
		osSyncPrintf(D_80144914_1538C4);
		return -1;
	}

	for (slot = 0; slot < 8; slot++) {
		if (D_80157FF0[slot] != -1) {
			D_80157FF0[slot] = -1;
			break;
		}
	}

	resultSlot = slot;
	D_80157FF8 = D_80157FF8 + 1;
	osSyncPrintf(D_80144934_1538E4, slot, D_80157FF8);

	walker = &D_80158000[slot];
	halfCount = D_801601F0[arg1].unkC;

	walker->limbs[0].words[0] = alienX;
	walker->limbs[0].words[1] = alienZ;
	walker->limbs[0].words[4] = alienX;
	walker->limbs[0].words[5] = alienZ;
	walker->limbs[0].unk18 = alienY;
	walker->limbs[0].unk1A = alienY;
	walker->limbs[0].unk1C = 0;
	walker->limbs[0].unk22 = 0;
	walker->limbs[0].unk20 = 0;
	walker->alienIdx = alienIdx;
	baseAngle = D_801601F0[arg1].unkE;
	walker->limbs[0].words[2] = alienX;
	walker->limbs[0].words[3] = alienZ;
	walker->limbs[0].unk1E = 0;
	walker->limbs[0].unk23 = arg1;

	angleStep = D_801601F0[arg1].unk10;
	outerRadius = D_801601F0[arg1].unk6;
	innerRadius = D_801601F0[arg1].unk4;
	i = 0;
	halfCount = halfCount / 2;

	if (halfCount > 0) {
		s32 index;

		index = 0;
		do {
			UnkF9230ShadowLimb *a;
			UnkF9230ShadowLimb *an;
			UnkF9230ShadowLimb *b;
			UnkF9230ShadowLimb *bn;
			s16 y;

			a = &walker->limbs[index + 1];
			a->unk23 = 0;
			an = &walker->limbs[index + 1];

			an->unk14 = (s32)((((f32)coss((u16)((walker->limbs[0].unk18 - baseAngle) - 0x4000)) / 32768.0) * (f64)innerRadius) + (f64)alienX);
			an->unk18 = (s32)((((f32)sins((u16)((walker->limbs[0].unk18 - baseAngle) - 0x4000)) / 32768.0) * (f64)innerRadius) + (f64)alienZ);
			y = D_8014DD50[inst->unkC].unk2 + inst->unk2;
			an->unk16 = y;
			an->unk0 = (s32)((((f32)coss((u16)((walker->limbs[0].unk18 - baseAngle) - 0x4000)) / 32768.0) * (f64)outerRadius) + (f64)alienX);
			an->unk4 = (s32)((((f32)sins((u16)((walker->limbs[0].unk18 - baseAngle) - 0x4000)) / 32768.0) * (f64)outerRadius) + (f64)alienZ);
			an->unk2 = func_800F384C_1027FC((UnkF9230Arg0 *)walker, an->unk16, an->unk0, an->unk4);
			an->unkA = an->unk0;
			an->unkC = an->unk4;

			b = &walker->limbs[i + 1 + halfCount];
			b->unk23 = 0;
			bn = &walker->limbs[i + 1 + halfCount];

			bn->unk14 = (s32)((((f32)coss((u16)((walker->limbs[0].unk18 + baseAngle) + 0x4000)) / 32768.0) * (f64)innerRadius) + (f64)alienX);
			bn->unk18 = (s32)((((f32)sins((u16)((walker->limbs[0].unk18 + baseAngle) + 0x4000)) / 32768.0) * (f64)innerRadius) + (f64)alienZ);
			y = D_8014DD50[inst->unkC].unk2 + inst->unk2;
			bn->unk16 = y;
			bn->unk0 = (s32)((((f32)coss((u16)((walker->limbs[0].unk18 + baseAngle) + 0x4000)) / 32768.0) * (f64)outerRadius) + (f64)alienX);
			bn->unk4 = (s32)((((f32)sins((u16)((walker->limbs[0].unk18 + baseAngle) + 0x4000)) / 32768.0) * (f64)outerRadius) + (f64)alienZ);
			bn->unk2 = func_800F384C_1027FC((UnkF9230Arg0 *)walker, bn->unk16, bn->unk0, bn->unk4);
			bn->unkA = bn->unk0;
			bn->unkC = bn->unk4;

			index++;
			i = index & 0xFF;
			index = i;
			baseAngle += angleStep;
		} while (i < halfCount);
	}

	func_800F2980_101930(walker);
	func_800F49A4_103954(walker);
	return resultSlot;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F3990_102940.s")
#endif

s16 func_800F3EE4_102E94(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s32 arg4, u8 arg5)
{
	float new_var;
	f64 ratio;
	ratio = arg0 / (f32)arg5;
	if (ratio < 0.5)
	{
		return arg1 + ((s16)(arg3 - arg1) * (f32)(ratio / 0.5));
	}
	new_var = (s16)(arg3 - arg2) * ((f32)(1.0 - ((f32)(ratio - 0.5) / (0.5 * 1.0))));
	return (s32)(new_var + arg2) ^ 0;
}

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

void func_800F4258_103208(UnkF9230ShadowWalker *arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 *arg5, s16 *arg6)
{
	s16 angle[2];
	f32 angleOffset;
	s32 dx;
	s32 dz;
	f32 dist;
	f32 distSq;
	s16 baseX;
	s16 baseR;

	dx = arg3 - arg1;
	dz = arg4 - arg2;
	baseX = D_801601F0[arg0->limbs[0].unk23].unk0;
	baseR = D_801601F0[arg0->limbs[0].unk23].unk2;
	distSq = (f32)((dx * dx) + (dz * dz));
	if (distSq <= 0.0f)
	{
		dist = 0.0f;
	}
	else
	{
		dist = sqrtf(distSq);
	}
	distSq = (-(((baseR * baseR) - (dist * dist)) - (baseX * baseX))) / ((2 * dist) * baseX);
	if (distSq > D_801449E0_153990.value)
	{
		distSq = D_801449E8_153998[0];
	}
	angleOffset = (((f32)((s16)(0x4000 - func_80003680_4280(distSq)))) * D_801449F0_1539A0.value) / 32768.0;
	dx = ((((((f32)func_80003824_4424(dx, dz))) * D_801449F8_1539A8.value) / 32768.0));
	angle[1] = dx;
	*arg5 = (cosf(((((f32)(s16)dx) + angleOffset) * D_80144A00_1539B0.value) / D_80144A08_1539B8.value) * baseX) + arg1;
	*arg6 = (sinf(((((f32)angle[1]) + angleOffset) * D_80144A10_1539C0.value) / D_80144A18_1539C8.value) * baseX) + arg2;
}

s32 func_800F450C_1034BC(u8 arg0, u8 arg1) {
	u32 angle;

	osSyncPrintf(D_80144960_153910);
	osSyncPrintf(D_80144980_153930, arg0, arg1);
	angle = ((u32)arg0 << 0xF) / arg1;
	angle = (u16)angle;
	osSyncPrintf(D_80144988_153938, (s32)angle, angle);
	{
		f32 cos_val;
	cos_val = (f32)coss(angle) / 32768.0;
	osSyncPrintf(D_80144990_153940, cos_val);

	if ((s32)arg0 < (s32)arg1 / 2) {
		cos_val = 1.0 - cos_val;
	} else {
		cos_val = (cos_val >= 0.0f ? cos_val : -cos_val) + 1.0;
	}

	cos_val /= 2;
	osSyncPrintf(D_80144998_153948, cos_val);
	angle = (u32)((f32)(u32)arg1 * cos_val);
	angle = (u8)angle;
	osSyncPrintf(D_801449A0_153950, (s32)angle);
	}
	return angle;
}

void func_800F4748_1036F8(UnkF9230ShadowWalker *arg0, u8 arg1, u8 arg2)
{
	UnkF9230ShadowLimb *entry;
	s32 tempA;
	UnkF9230ShadowLimb *next;
	u8 animLerp;
	u8 pad_42;
	s16 sp40;
	s16 sp3E;
	s16 sp3A_pad;
	s16 sp3A;
	entry = &arg0->limbs[arg2];
	next = &entry[1];
	animLerp = D_801601F0[arg0->limbs[0].unk23].unk12;
	if (entry[1].unk23 == 0)
	{
		if (arg0->limbs[0].unk22 == 0x10)
		{
			next->unkA = (func_800038E0_44E0() % 10) + next->unk0;
			next->unkC = (func_800038E0_44E0() % 10) + next->unk4;
			return;
		}
		tempA = func_800F41E0_103190(next->unk0, next->unk6, arg1, animLerp);
		next->unkC = func_800F41E0_103190(next->unk4, next->unk8, arg1, animLerp);
		next->unkA = tempA;
		sp40 = func_800F384C_1027FC((UnkF9230Arg0 *)arg0, next->unk16, next->unk0, next->unk4);
		sp3E = func_800F384C_1027FC((UnkF9230Arg0 *)arg0, next->unk16, next->unk6, next->unk8);
		sp3A = next->unk2;
		next->unk2 = func_800F3EE4_102E94(arg1, sp40, sp3E, (sp40 + D_801601F0[arg0->limbs[0].unk23].unk13), 0x20, animLerp);
		if ((D_801601F0[arg0->limbs[0].unk23].unk14 == 2) || ((D_801601F0[arg0->limbs[0].unk23].unk14 == 1) && (D_801601F0[arg0->limbs[0].unk23].unk8 >= 0x10)))
		{
			if ((sp3E == next->unk2) && (next->unk2 < sp3A))
			{
				func_80137468_146418(arg0->alienIdx, 6);
			}
		}
	}
}

#ifdef NON_MATCHING
void func_800F49A4_103954(UnkF9230ShadowWalker *walker) {
	UnkF9230ShadowLimb *entry;
	s16 spB2;
	s16 animFrame;
	s16 footX;
	s16 footZ;
	s16 rootY;
	s16 spA8;
	s16 spA6;
	s16 currX;
	s16 currZ;
	s16 yawDeg;
	s16 posX;
	s16 posZ;
	s16 distA;
	u8 limbCount;
	u8 animLerp;
	s16 distB;
	s16 legRadius;
	u8 parentAlien;
	s32 i;

	parentAlien = walker->alienIdx;
	posX = (s16)walker->limbs[0].words[4];
	posZ = (s16)walker->limbs[0].words[5];

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
			entry->unk16 = alienInstances[parentAlien].unk2 + D_8014DD50[alienInstances[parentAlien].unkC].unk2;
		}

		spB2 = entry->unk16;
		animFrame = walker->limbs[0].unk1E;

		if (!(animLerp < animFrame)) {
			if (!(i & 1)) {
				func_800F4748_1036F8(walker, (u8)animFrame, (u8)i);
				animFrame = walker->limbs[0].unk1E;
			}
		}

		if (!(animFrame < animLerp)) {
			if ((i % 2) == 1) {
				func_800F4748_1036F8(walker, (u8)(animFrame - animLerp), (u8)i);
			}
		}

		currX = entry->unkA;
		currZ = entry->unkC;
		rootY = entry->unk2;

		yawDeg = (s16)(((f64)(f32)func_80003824_4424((f32)(currX - footX), (f32)(currZ - footZ)) * 180.0) / 32768.0);

		distA = (s16)sqrtf((f32)(((currX - posX) * (currX - posX)) + ((currZ - posZ) * (currZ - posZ))));
		distB = (s16)sqrtf((f32)(((footX - posX) * (footX - posX)) + ((footZ - posZ) * (footZ - posZ))));

		func_800F4258_103208(walker, distB, spB2, distA, rootY, &spA8, &spA6);

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

#ifdef NON_MATCHING
void func_800F4DB0_103D60(void) {
	s32 var_fp;
	UnkF9230ShadowWalker *walker;
	s32 limb;
	u8 i;
	u8 lerp;
	s32 pad;

	var_fp = 1;
	for (i = 0; i < 8; i++) {
		if (D_80157FF0[i] == -1) {

			walker = &D_80158000[i];
			if (((i + D_80052A8C) & 0xF) == 0) {
				if ((((walker->limbs[0].unk22 == 2) || (walker->limbs[0].unk22 == 4) || (walker->limbs[0].unk22 == 8)) ? 1 : 0) == 0 && walker->limbs[0].unk22 != 0x10) {
					if ((alienInstances[walker->alienIdx].typeIndex == 0) || !(alienInstances[walker->alienIdx].unk20 & 0x80000) || ((alienInstances[walker->alienIdx].unk20 & 0x80000) && (i != (alienInstances[walker->alienIdx].unk20 & 7)))) {
						if (alienInstances[walker->alienIdx].typeIndex != 0) {
							if (alienInstances[walker->alienIdx].unk20 & 0x600) {
								func_8007A4F8_894A8(walker->alienIdx);
								func_800DF848_EE7F8(alienInstances[walker->alienIdx].unk0, alienInstances[walker->alienIdx].unk2, alienInstances[walker->alienIdx].unk4, (u16)alienTypes[alienInstances[walker->alienIdx].typeIndex].unkC, 0);
								func_800F3038_101FE8(i);
							} else {
								func_80079910_888C0(walker->alienIdx);
								func_800F375C_10270C(i);
							}
						}
						osSyncPrintf(D_801449A8_153958);
						continue;
					}
				}
			}
			if ((alienInstances[walker->alienIdx].unk1B != 0xFF) && (D_80047F94 != alienInstances[walker->alienIdx].unk1B)) {
				walker->limbs[0].unk22 = 0;
			}
			if ((walker->limbs[0].unk22 == 0) || (walker->limbs[0].unk22 == 4)) {
				for (limb = 0; limb < D_801601F0[walker->limbs[0].unk23].unkC; limb = (limb + 1) & 0xFF) {
					if (walker->limbs[limb + 1].unk23 == 0) {
						walker->limbs[limb + 1].unk16 = alienInstances[walker->alienIdx].unk2 + D_8014DD50[alienInstances[walker->alienIdx].unkC].unk2;
					}
				}
				if (walker->limbs[0].unk22 == 0) {
					continue;
				}
			}

			if (((walker->limbs[0].unk22 == 2) || (walker->limbs[0].unk22 == 4) || (walker->limbs[0].unk22 == 8)) ? 1 : 0) {

				walker->unk168 = walker->unk168 + 1;
				walker->unk16C = walker->unk16C - ((walker->unk16C >> 3) >= 0 ? (walker->unk16C >> 3) : -(walker->unk16C >> 3)) - 2;

				switch (walker->limbs[0].unk22) {
				case 2:
					if (walker->unk168 == 0x28) {
						func_800F375C_10270C(i);
					}
					break;
				case 8:
					if (walker->unk16C < 0) {
						walker->unk16C = walker->unk16C / 2;
					}
					if (walker->unk168 == 0x78) {
						func_800F375C_10270C(i);
					}
					break;
				case 4:
					for (limb = 0; limb < D_801601F0[walker->limbs[0].unk23].unkC; limb = (limb + 1) & 0xFF) {
						if (walker->limbs[limb + 1].unk23 != 2) {
							var_fp = 0;
						}
					}
					if (var_fp != 0) {
						func_800F375C_10270C(i);
					}
					break;
				}

				walker->unk16A = walker->unk16A + walker->unk16C;
				continue;
			} else {
				lerp = D_801601F0[walker->limbs[0].unk23].unk12;

				if (walker->limbs[0].unk1E == 0) {

					walker->limbs[0].words[0] = walker->limbs[0].words[2];
					walker->limbs[0].words[4] = walker->limbs[0].words[2];
					walker->limbs[0].words[1] = walker->limbs[0].words[3];
					walker->limbs[0].words[5] = walker->limbs[0].words[3];
					for (limb = 0; limb < D_801601F0[walker->limbs[0].unk23].unkC; limb = (limb + 1) & 0xFF) {
						if (walker->limbs[limb + 1].unk23 == 0) {
							walker->limbs[limb + 1].unk14 = walker->limbs[limb + 1].unk1A;
							walker->limbs[limb + 1].unk18 = walker->limbs[limb + 1].unk1C;
						}
					}

					func_800F2980_101930(walker);
					if (walker->limbs[0].unk18 == walker->limbs[0].unk1A) {

						if ((BH_ABS(walker->limbs[0].unk1C) < 0xC) && (walker->limbs[0].unk22 != 0x10)) {
							walker->limbs[0].unk22 = 0;
						}
					}
				}

				if (((lerp * 2) == walker->limbs[0].unk1E) || (lerp == walker->limbs[0].unk1E)) {
					for (limb = 0; limb < D_801601F0[walker->limbs[0].unk23].unkC; limb = (limb + 1) & 0xFF) {
						if (walker->limbs[limb + 1].unk23 == 0) {
							if (((lerp * 2) == walker->limbs[0].unk1E) && ((limb % 2) == 1)) {
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

				walker->limbs[0].words[4] = func_800F41E0_103190(walker->limbs[0].words[0], walker->limbs[0].words[2], walker->limbs[0].unk1E, (lerp * 2));
				walker->limbs[0].words[5] = func_800F41E0_103190(walker->limbs[0].words[1], walker->limbs[0].words[3], walker->limbs[0].unk1E, (lerp * 2));
				func_800F49A4_103954(walker);

				walker->limbs[0].unk1E = (walker->limbs[0].unk1E + 1) % ((lerp * 2) + 1);
				if (!(walker->limbs[0].unk22 & 0x80)) {
					walker->limbs[0].unk1A = walker->limbs[0].unk18;
				}
			}
		}
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

#ifdef NON_MATCHING
void func_800F554C_1044FC(s32 *arg0, s32 *arg1, s32 *arg2, u8 arg3) {
	f32 sinA;
	f32 cosA;
	f32 sinB;
	f32 radiusThird;
	s32 baseRed;
	s32 angleA;
	s32 cosBValue;
	s32 sinAComp;
	s32 cosAComp;
	s32 baseGreen;
	f32 radius;
	u8 *levelColor;
	s16 colorA;
	s16 colorB;
	s16 colorC;
	s16 colorAClamped;
	s16 colorBClamped;
	s16 colorCClamped;
	s32 sinBComp;
	s32 cosBComp;
	s32 baseBlue;
	s16 colorTopA;
	s16 colorTopB;
	s16 colorTopC;
	u8 cR;
	u8 cG;
	u8 cB;

	if (&angleA) {}
	if (&colorA) {}
	if (&colorB) {}
	if (&colorC) {}
	radius = D_801601F0[arg3].unk8;
	if (D_8013FCD0_14EC80 != 0) {
		radius *= 2;
	}

	angleA = func_80003824_4424((f32)(arg0[2] - arg2[2]), (f32)(arg0[0] - arg2[0]));
	cosBValue = angleA + 0x4000;
	sinA = (f32)((f64)(f32)sins((u16)cosBValue) / 32768.0);
	cosBValue = angleA + 0x4000;
	cosA = (f32)((f64)(f32)coss((u16)cosBValue) / 32768.0);

	sinB = (f32)((f64)(f32)sins(angleA) / 32768.0);
	cosBValue = coss(angleA);

	levelColor = &D_8013FCD4_14EC84[currentLevel * 9];
	colorA = levelColor[0x24];
	colorB = levelColor[0x25];
	colorC = levelColor[0x26];
	colorAClamped = (colorA - 0xB4 < 0) ? 0 : colorA - 0xB4;
	colorBClamped = (colorB - 0xB4 < 0) ? 0 : colorB - 0xB4;
	colorCClamped = (colorC - 0xB4 < 0) ? 0 : colorC - 0xB4;
	colorTopA = D_8013FCD4_14EC84[currentLevel * 9 + 0x2A];
	colorTopB = D_8013FCD4_14EC84[currentLevel * 9 + 0x2B];
	colorTopC = D_8013FCD4_14EC84[currentLevel * 9 + 0x2C];
	cR = D_8013FCD4_14EC84[currentLevel * 9 + 0x27];
	cG = D_8013FCD4_14EC84[currentLevel * 9 + 0x28];
	cB = D_8013FCD4_14EC84[currentLevel * 9 + 0x29];

	radiusThird = radius / 3.0f;

	D_8005BB34->v.ob[0] = arg0[0];
	D_8005BB34->v.ob[1] = arg0[1];
	D_8005BB34->v.ob[2] = arg0[2];
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	sinAComp = (s32)(radiusThird * sinA);
	cosAComp = (s32)(radiusThird * cosA);
	sinBComp = (s32)(radiusThird * sinB);
	cosBComp = (s32)(radiusThird * (f32)((f64)(f32)cosBValue / 32768.0));


	D_8005BB34->v.ob[0] = (arg0[0] + sinAComp) - sinBComp;
	D_8005BB34->v.ob[1] = arg0[1];
	D_8005BB34->v.ob[2] = (arg0[2] + cosAComp) - cosBComp;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0x80;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (arg0[0] - sinAComp) - sinBComp;
	D_8005BB34->v.ob[1] = arg0[1];
	D_8005BB34->v.ob[2] = (arg0[2] - cosAComp) - cosBComp;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0x80;
	D_8005BB34->v.cn[0] = 0;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg1[0];
	D_8005BB34->v.ob[1] = arg1[1];
	D_8005BB34->v.ob[2] = arg1[2];
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = cR;
	D_8005BB34->v.cn[1] = cG;
	D_8005BB34->v.cn[2] = cB;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	sinAComp = (s16)(s32)(radius * sinA);
	cosAComp = (s16)(s32)(radius * cosA);
	sinBComp = (s16)(s32)((2 * radiusThird) * sinB);
	cosBComp = (s16)(s32)((2 * radiusThird) * (f32)((f64)(f32)cosBValue / 32768.0));

	D_8005BB34->v.ob[0] = (arg1[0] + sinAComp) - sinBComp;
	D_8005BB34->v.ob[1] = (s32)((f32)arg1[1] - ((2 * radiusThird) / 2));
	D_8005BB34->v.ob[2] = (arg1[2] + cosAComp) - cosBComp;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x80;
	D_8005BB34->v.cn[0] = cR;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = cB;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (arg1[0] - sinAComp) - sinBComp;
	D_8005BB34->v.ob[1] = (s32)((f32)arg1[1] - ((2 * radiusThird) / 2));
	D_8005BB34->v.ob[2] = (arg1[2] - cosAComp) - cosBComp;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x80;
	D_8005BB34->v.cn[0] = cR;
	D_8005BB34->v.cn[1] = 0;
	D_8005BB34->v.cn[2] = cB;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (arg1[0] + sinAComp) - sinBComp;
	D_8005BB34->v.ob[1] = (s32)((f32)arg1[1] - ((2 * radiusThird) / 2));
	D_8005BB34->v.ob[2] = (arg1[2] + cosAComp) - cosBComp;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x80;
	D_8005BB34->v.cn[0] = colorAClamped;
	D_8005BB34->v.cn[1] = colorBClamped;
	D_8005BB34->v.cn[2] = colorCClamped;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (arg1[0] - sinAComp) - sinBComp;
	D_8005BB34->v.ob[1] = (s32)((f32)arg1[1] - ((2 * radiusThird) / 2));
	D_8005BB34->v.ob[2] = (arg1[2] - cosAComp) - cosBComp;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x80;
	D_8005BB34->v.cn[0] = colorAClamped;
	D_8005BB34->v.cn[1] = colorBClamped;
	D_8005BB34->v.cn[2] = colorCClamped;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;


	D_8005BB34->v.ob[0] = arg1[0] - (sinBComp / 2);
	D_8005BB34->v.ob[1] = (s16)(s32)((f32)arg1[1] + radius * 2);
	D_8005BB34->v.ob[2] = arg1[2] - (cosBComp / 2);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = colorTopA;
	D_8005BB34->v.cn[1] = colorTopB;
	D_8005BB34->v.cn[2] = colorTopC;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg1[0] - sinBComp;
	D_8005BB34->v.ob[1] = (s16)(s32)((f32)arg1[1] + (radius / 2));
	D_8005BB34->v.ob[2] = arg1[2] - cosBComp;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = cR;
	D_8005BB34->v.cn[1] = cG;
	D_8005BB34->v.cn[2] = cB;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg1[0] - sinBComp;
	D_8005BB34->v.ob[1] = (s16)(s32)((f32)arg1[1] + (radius / 2));
	D_8005BB34->v.ob[2] = arg1[2] - cosBComp;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = colorAClamped;
	D_8005BB34->v.cn[1] = colorBClamped;
	D_8005BB34->v.cn[2] = colorCClamped;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg2[0];
	D_8005BB34->v.ob[1] = arg2[1];
	D_8005BB34->v.ob[2] = arg2[2];
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x280;
	D_8005BB34->v.tc[1] = 0x400;
	D_8005BB34->v.cn[0] = (baseRed = colorA);
	D_8005BB34->v.cn[1] = (baseGreen = colorB);
	D_8005BB34->v.cn[2] = (baseBlue = colorC);
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg2[0] + sinAComp / 2;
	D_8005BB34->v.ob[1] = (s16)(s32)((f32)arg2[1] - (2 * radiusThird));
	D_8005BB34->v.ob[2] = arg2[2] + cosAComp / 2;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x400;
	D_8005BB34->v.cn[0] = baseRed;
	D_8005BB34->v.cn[1] = baseGreen;
	D_8005BB34->v.cn[2] = baseBlue;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg2[0] - sinAComp / 2;
	D_8005BB34->v.ob[1] = (s16)(s32)((f32)arg2[1] - (2 * radiusThird));
	D_8005BB34->v.ob[2] = arg2[2] - cosAComp / 2;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x400;
	D_8005BB34->v.cn[0] = baseRed;
	D_8005BB34->v.cn[1] = baseGreen;
	D_8005BB34->v.cn[2] = baseBlue;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;


	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_FOG);
	gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA, G_CC_PASS2);
	gDPPipeSync(D_8005BB2C++);
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 14), 14, 0);
	gDPLoadTextureBlock(D_8005BB2C++, D_1014080, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
	gDPPipeSync(D_8005BB2C++);
	gSP1Triangle(D_8005BB2C++, 3, 8, 5, 0);
	gSP1Triangle(D_8005BB2C++, 4, 8, 3, 0);
	gSP1Triangle(D_8005BB2C++, 8, 9, 5, 0);
	gSP1Triangle(D_8005BB2C++, 4, 9, 8, 0);
	gSP1Triangle(D_8005BB2C++, 0, 1, 4, 0);
	gSP1Triangle(D_8005BB2C++, 0, 4, 3, 0);
	gSP1Triangle(D_8005BB2C++, 0, 5, 2, 0);
	gSP1Triangle(D_8005BB2C++, 0, 3, 5, 0);
	gDPLoadTextureBlock(D_8005BB2C++, D_1013E80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
	gDPPipeSync(D_8005BB2C++);
	gSP1Triangle(D_8005BB2C++, 11, 10, 6, 0);
	gSP1Triangle(D_8005BB2C++, 11, 6, 12, 0);
	gSP1Triangle(D_8005BB2C++, 11, 10, 7, 0);
	gSP1Triangle(D_8005BB2C++, 11, 10, 13, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F554C_1044FC.s")
#endif

#ifdef NON_MATCHING
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
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 0x13), 19, 0);
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

#ifdef NON_MATCHING
void func_800F7790_106740(s32 *arg0, s32 *arg1, s32 *arg2, u8 arg3) {
	Vec3fComponents direction;
	f32 sp120[3];
	f32 sp11C;
	s32 trigResult;
	s32 phase;
	s32 xTri;
	s32 angle;
	s32 cosTerm;
	s16 halfSin;
	s16 xStep;
	s16 zStep;
	s16 yStep;
	s32 sinTerm;
	f32 spF8;
	f32 spF4;
	f32 radiusScaled;
	f32 radius;
	s16 spEA;
	s16 spE8;
	s16 spE6;
	s16 spE4;
	s16 spE2;
	s16 spE0;
	u8 *levelColor;
	s32 zTri;
	s16 halfCos;
	u8 cR;
	s16 baseRed;
	u8 cG;
	s16 baseGreen;
	s16 spD2;
	s16 spD0;
	s16 spCE;
	u8 cB;
	s16 baseBlue;
	s32 pad2;
	s32 pad;

	/* Keep the addressed parameter and color halfwords in their target homes. */
	if (&arg0) {}
	if (&spEA) {}
	if (&spE8) {}
	if (&spE6) {}
	radius = (f32)D_801601F0[arg3].unk8;
	radiusScaled = (radius * 3.0f) / 4;
	if (D_8013FCD0_14EC80 != 0) {
		radiusScaled *= 4;
		radius *= 2;
	}

	direction.vector.x = (f32)(arg1[0] - arg0[0]);
	direction.vector.y = (f32)(arg1[1] - arg0[1]);
	direction.vector.z = (f32)(arg1[2] - arg0[2]);
	spF8 = radiusScaled;
	spF4 = radius;
	func_800F54AC_10445C(&direction.vector, &direction.vector);

	trigResult = func_80003824_4424((f32)(arg0[2] - arg2[2]), (f32)(arg0[0] - arg2[0]));
	angle = trigResult;
	phase = trigResult + 0x4000;
	sp11C = (f32)((f64)(f32)sins((u16)phase) / 32768.0);
	phase = angle + 0x4000;
	trigResult = coss((u16)phase);

	gDPPipeSync(D_8005BB2C++);

	{
		s32 i;

		for (i = 0; i < 3; i++) {
			sp120[i] = direction.components[i] * 127.0f;
		}
	}

	levelColor = &D_8013FCD4_14EC84[currentLevel * 9];
	spEA = levelColor[-9]; spE8 = levelColor[-8]; spE6 = levelColor[-7];
	spE4 = (spEA - 0xB4 < 0) ? 0 : spEA - 0xB4;
	spE2 = (spE8 - 0xB4 < 0) ? 0 : spE8 - 0xB4;
	spE0 = (spE6 - 0xB4 < 0) ? 0 : spE6 - 0xB4;
	spD0 = levelColor[-2]; spD2 = levelColor[-3]; spCE = levelColor[-1];
	cR = levelColor[-6];
	cG = levelColor[-5];
	cB = levelColor[-4];

	D_8005BB34->v.ob[0] = arg0[0];
	D_8005BB34->v.ob[1] = arg0[1];
	D_8005BB34->v.ob[2] = arg0[2];
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = cR;
	D_8005BB34->v.cn[1] = cG;
	D_8005BB34->v.cn[2] = cB;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	sinTerm = (s32)(sp11C * spF8);
	cosTerm = (s32)((f32)((f64)(f32)trigResult / 32768.0) * spF8);
	if (sinTerm + cosTerm) {}
	xStep = (s16)(s32)(direction.vector.x * spF4);
	yStep = (s16)(s32)(direction.vector.y * spF4);
	zStep = (s16)(s32)(direction.vector.z * spF4);
	xTri = ((s16)xStep) * 3;
	zTri = ((s16)zStep) * 3;

	D_8005BB34->v.ob[0] = arg1[0] + (s16)sinTerm + xTri;
	D_8005BB34->v.ob[1] = arg1[1] + yStep;
	D_8005BB34->v.ob[2] = arg1[2] + (s16)cosTerm + zTri;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0x200;
	D_8005BB34->v.cn[0] = cR;
	D_8005BB34->v.cn[1] = cG;
	D_8005BB34->v.cn[2] = cB;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg1[0] - (s16)sinTerm + xTri;
	D_8005BB34->v.ob[1] = arg1[1] + yStep;
	D_8005BB34->v.ob[2] = arg1[2] - (s16)cosTerm + zTri;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0x200;
	D_8005BB34->v.cn[0] = cR;
	D_8005BB34->v.cn[1] = cG;
	D_8005BB34->v.cn[2] = cB;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg1[0] + (xStep * 4);
	D_8005BB34->v.ob[1] = arg1[1] + (yStep * 4) + 5;
	D_8005BB34->v.ob[2] = arg1[2] + (zStep * 4);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = spD2;
	D_8005BB34->v.cn[1] = spD0;
	D_8005BB34->v.cn[2] = spCE;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	halfSin = (s16)sinTerm / 2;
	halfCos = (s16)cosTerm / 2;

	D_8005BB34->v.ob[0] = arg1[0];
	D_8005BB34->v.ob[1] = arg1[1];
	D_8005BB34->v.ob[2] = arg1[2];
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = spE4;
	D_8005BB34->v.cn[1] = spE2;
	D_8005BB34->v.cn[2] = spE0;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg1[0] + halfSin;
	D_8005BB34->v.ob[1] = (s16)(s32)((f32)arg1[1] - spF4);
	D_8005BB34->v.ob[2] = arg1[2] + halfCos;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0x200;
	D_8005BB34->v.cn[0] = spE4;
	D_8005BB34->v.cn[1] = spE2;
	D_8005BB34->v.cn[2] = spE0;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg1[0] - halfSin;
	D_8005BB34->v.ob[1] = (s16)(s32)((f32)arg1[1] - spF4);
	D_8005BB34->v.ob[2] = arg1[2] - halfCos;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x400;
	D_8005BB34->v.tc[1] = 0x200;
	D_8005BB34->v.cn[0] = spE4;
	D_8005BB34->v.cn[1] = spE2;
	D_8005BB34->v.cn[2] = spE0;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg2[0];
	D_8005BB34->v.ob[1] = arg2[1];
	D_8005BB34->v.ob[2] = arg2[2];
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	baseRed = spEA;
	D_8005BB34->v.cn[0] = baseRed;
	baseGreen = spE8;
	D_8005BB34->v.cn[1] = baseGreen;
	baseBlue = spE6;
	D_8005BB34->v.cn[2] = baseBlue;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg2[0] + halfSin;
	D_8005BB34->v.ob[1] = (s16)(s32)((f32)arg2[1] - spF4);
	D_8005BB34->v.ob[2] = arg2[2] + halfCos;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x200;
	D_8005BB34->v.cn[0] = baseRed;
	D_8005BB34->v.cn[1] = baseGreen;
	D_8005BB34->v.cn[2] = baseBlue;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg2[0] - halfSin;
	D_8005BB34->v.ob[1] = (s16)(s32)((f32)arg2[1] - spF4);
	D_8005BB34->v.ob[2] = arg2[2] - halfCos;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x200;
	D_8005BB34->v.cn[0] = baseRed;
	D_8005BB34->v.cn[1] = baseGreen;
	D_8005BB34->v.cn[2] = baseBlue;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;


	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_FOG);
	gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA, G_CC_PASS2);
	gDPPipeSync(D_8005BB2C++);
	gDPLoadTextureBlock(D_8005BB2C++, D_1014480, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_CLAMP, G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 10), 10, 0);
	gSP1Triangle(D_8005BB2C++, 0, 1, 3, 0);
	gSP1Triangle(D_8005BB2C++, 0, 3, 2, 0);
	gSP1Triangle(D_8005BB2C++, 0, 2, 1, 0);
	gSP1Triangle(D_8005BB2C++, 1, 2, 3, 0);
	gDPLoadTextureBlock(D_8005BB2C++, D_1014680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_CLAMP, G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
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
	s16 spD2;
	s16 spD0;
	s32 spC4[3];
	s32 spB8[3];
	s32 spAC[3];
	union {
		s32 angle;
		f32 trig;
	} scratch;
	s32 heading;
	s32 reach;
	s32 frameGroup;
	s32 i;
	UnkF9230ShadowLimb *nextEntry;
	Unk80052B40 sp8C;
	Unk80052B40 sp84;
	s16 sp82;
	s16 sp80;

	if (D_80157FF0[arg0] != -1) {
		return;
	}

	walker = &D_80158000[arg0];
	sp82 = D_801601F0[walker->limbs[0].unk23].unkA / 20;

	for (i = 0; i < 6; i++) {
		if (walker->limbs[i + 1].unk23 == 1) {

		gDPPipeSync(D_8005BB2C++);

		if (i < 3) {
			scratch.angle = D_801601F0[walker->limbs[0].unk23].unk10 * i + D_801601F0[walker->limbs[0].unk23].unkE;
			scratch.angle = (s16)(0x4000 - scratch.angle);
		} else {
			scratch.angle = (s16)(((D_801601F0[walker->limbs[0].unk23].unk10 * (i - 3)) + D_801601F0[walker->limbs[0].unk23].unkE) - 0x4000);
		}

		sp84.unk0 = walker->limbs[0].unk18 + 0x4000;
		if ((i % 2) == 1) {
			sp84.unk2 = (s16)(walker->unk168 * 0x2BC);
		} else {
			sp84.unk2 = -walker->unk168 * 0x190;
		}
		frameGroup = i % 3;
		sp84.unk4 = (s16)(walker->unk168 * 0x12C * frameGroup);

		heading = scratch.angle & 0xFFFF;
		scratch.trig = coss(heading & 0xFFFF);
		reach = frameGroup * sp82 + 10;
		sp8C.unk0 = (s16)(s32)((f64)walker->limbs[0].words[4] - (((f64)scratch.trig) / 32768.0) * (f64)(walker->unk168 * reach));
		func_8011E6FC_12D6AC(walker->limbs[0].unk12, walker->limbs[0].unk16, &sp80);
		sp8C.unk2 = sp80 + walker->unk16A;
		sp8C.unk4 = (s16)(s32)((f64)walker->limbs[0].words[5] - (((f64)(f32)sins(heading & 0xFFFF)) / 32768.0) * (f64)(walker->unk168 * reach));

		if (walker->limbs[0].unk22 == 8) {
			reach = D_80222A70 - 0x64;

			if (sp8C.unk2 > reach) {
				sp8C.unk2 = reach;
			}
		}

		D_8005BB38++;
		func_800039D0_45D0(&sp8C, &sp84, NULL, D_8005BB38);
		gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

		spAC[0] = (s32)((((f64)(f32)coss(heading & 0xFFFF)) / 32768.0) * (f64)D_801601F0[walker->limbs[0].unk23].unk4);
		spAC[2] = (s32)((((f64)(f32)sins(heading & 0xFFFF)) / 32768.0) * (f64)D_801601F0[walker->limbs[0].unk23].unk4);
		spAC[1] = D_801601F0[walker->limbs[0].unk23].unkA;
		spB8[0] = (s32)((((f64)(f32)coss(heading & 0xFFFF)) / 32768.0) * (f64)D_801601F0[walker->limbs[0].unk23].unk6);
		spB8[2] = (s32)((((f64)(f32)sins(heading & 0xFFFF)) / 32768.0) * (f64)D_801601F0[walker->limbs[0].unk23].unk6);
		spB8[1] = 0;
		func_800F4258_103208(walker, D_801601F0[walker->limbs[0].unk23].unk4, spAC[1], D_801601F0[walker->limbs[0].unk23].unk6, 0, &spD2, &spD0);
		spC4[2] = (s32)((((f64)(f32)sins(heading & 0xFFFF)) / 32768.0) * (f64)spD2);
		spC4[0] = (s32)((((f64)(f32)coss(heading & 0xFFFF)) / 32768.0) * (f64)spD2);
		spC4[1] = spD0;

		switch (D_801601F0[walker->limbs[0].unk23].unk14) {
			case 0:
				func_800F7790_106740(spB8, spC4, spAC, walker->limbs[0].unk23);
				break;
			case 1:
				func_800F554C_1044FC(spB8, spC4, spAC, walker->limbs[0].unk23);
				break;
			case 2:
				func_800F63D0_105380(spB8, spC4, spAC, walker->limbs[0].unk23);
				break;
		}

		if (walker->limbs[0].unk22 == 4) {
			nextEntry = &walker->limbs[i + 1];

			if (walker->unk168 == 1) {
				func_800DF038_EDFE8((s16)(spAC[0] + sp8C.unk0), (s16)(spAC[1] + sp8C.unk2), (s16)(spAC[2] + sp8C.unk4), 0x46, 0, 0);
			}

			func_800C1ECC_D0E7C((s16)(spAC[0] + sp8C.unk0), (s16)(spAC[1] + sp8C.unk2), (s16)(spAC[2] + sp8C.unk4), nextEntry->unk22, 0);
			func_8011E6FC_12D6AC(sp8C.unk0, sp8C.unk4, &sp80);
			if (sp80 >= sp8C.unk2) {
				nextEntry->unk23 = 2;
				func_800DF038_EDFE8(sp8C.unk0, sp80, sp8C.unk4, 0x46, 0, 0);
			}
		}

		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
		}
	}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F842C_1073DC.s")
#endif

#ifdef NON_MATCHING
void func_800F8B24_107AD4(s32 arg0) {
	Unk80052B40 sp140;
	Unk80052B40 sp138;
	UnkF9230ShadowWalker *walker;
	s32 x0, y0, z0, x1, z1, x2, y2, z2;
	u8 count;
	s16 y1;
	int i;
	s32 sp100[3];
	s32 spF4[3];
	s32 spE8[3];
	Mtx spA8;

	if (D_80157FF0[arg0] != -1) {
		return;
	}

	walker = &D_80158000[arg0];
	i = walker->alienIdx;

	if ((func_800B93AC_C835C(walker->limbs[0].unk12, walker->limbs[0].unk16, (u16)D_801601F0[walker->limbs[0].unk23].unk6, (s16)D_80052B2C->unk0,
	(s32)D_80052B2C->unk8, 0x4000 - D_80047950)
	!= 0)
	|| (walker->limbs[0].unk22 == 8)) {
		if (D_801601F0[walker->limbs[0].unk23].unk14 != 0) {
			gDPPipeSync(D_8005BB2C++);
			guLookAtReflect(&spA8, &walker->lookAt, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 50.0f, 0.0f, 1.0f, 0.0f);
			gSPLookAt(D_8005BB2C++, &walker->lookAt);
			gDPPipeSync(D_8005BB2C++);
		}

		gSPLightColor(D_8005BB2C++, LIGHT_1, 0xFFFFFFFF);
		gSPLightColor(D_8005BB2C++, LIGHT_2, 0x808080FF);

		if (((walker->limbs[0].unk22 == 2) || (walker->limbs[0].unk22 == 4) || (walker->limbs[0].unk22 == 8)) ? 1 : 0) {
			func_800F842C_1073DC(arg0);
		}

		if (walker->limbs[0].unk22 == 0x10) {
			AlienInstance *alien;

			alien = &alienInstances[i];
			sp140.unk0 = alien->unk0;
			sp140.unk2 = D_8014DD50[alien->unkC].unk2 + alien->unk2;
			sp140.unk4 = alien->unk4;
			func_800039D0_45D0(&sp140, NULL, NULL, D_8005BB38);
			gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			D_8005BB38++;

			sp138.unk0 = -walker->limbs[0].unk18;
			sp138.unk2 = -(u16)D_8014DD50[alien->unkC].unkA;
			sp138.unk4 = 0;
			func_800039D0_45D0(NULL, &sp138, NULL, D_8005BB38);
			gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			D_8005BB38++;

			sp140.unk2 = walker->unk16A;
			for (i = 0; i < 3; i++) {
				sp140.components[i] = -sp140.components[i];
			}
			func_800039D0_45D0(&sp140, NULL, NULL, D_8005BB38);
			gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			D_8005BB38++;

		}

		count = D_801601F0[walker->limbs[0].unk23].unkC;
		i = 0;
		if (count > 0) {
			UnkF9230ShadowLimb *cursor = &walker->limbs[0];
			do {
				UnkF9230ShadowLimb *entry;

				entry = &cursor[1];
				if (cursor[1].unk23 == 0) {

					x0 = entry->unkA;
					y0 = entry->unk2;
					z0 = entry->unkC;
					x1 = entry->unk1E;
					if (walker->limbs[0].unk22 == 0x10) {
						y1 = walker->unk16A;
					} else {
						y1 = entry->unk16;
					}

					z1 = entry->unk20;
					x2 = entry->unkE;
					y2 = entry->unk10;
					z2 = entry->unk12;
					sp100[0] = x0;
					sp100[1] = y0;
					sp100[2] = z0;
					spF4[0] = x1;
					spF4[1] = y1;
					spF4[2] = z1;
					spE8[0] = x2;
					spE8[1] = y2;
					spE8[2] = z2;

					if (walker->limbs[0].unk22 == 4) {
						spE8[0] += func_800038E0_44E0() % 16 - 8;
						spE8[2] += func_800038E0_44E0() % 16 - 8;
					}

					switch (D_801601F0[walker->limbs[0].unk23].unk14) {
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
				i++;
				cursor++;
			} while (i != count);
		}

		if (walker->limbs[0].unk22 & 0x10) {
			gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800F8B24_107AD4.s")
#endif

#ifdef NON_MATCHING
void func_800F9118_1080C8(s32 arg0) {
	s32 index;
	s16 oldX;
	s16 rearY;
	s32 centerX;
	s32 thirdSin;
	s16 oldZ;
	s16 centerY;
	s32 cosOffset;
	s32 sinOffset;
	s32 sumZ;
	s32 sumX;
	s16 minusX;
	s16 heading;
	s16 radius;
	s16 centerZ;
	s16 groundY;
	u8 count;
	int countWord;
	s32 divisor;
	s32 terrain;
	UnkF9230ShadowWalker *walker;

	if (D_80157FF0[arg0] == -1) {
		walker = &D_80158000[arg0];
		if ((func_8011E6FC_12D6AC(walker->limbs[0].unk12, walker->limbs[0].unk16, &groundY) == -1) &&
			(walker->limbs[0].unk22 != 0x10)) {
			count = D_801601F0[walker->limbs[0].unk23].unkC;
			centerZ = D_801601F0[walker->limbs[0].unk23].unk8;
			if (D_8013FCD0_14EC80 != 0) {
				centerZ *= 2;
			}
			radius = centerZ;
			if (func_800B93AC_C835C(walker->limbs[0].unk12, walker->limbs[0].unk16,
					(u16)D_801601F0[walker->limbs[0].unk23].unk6, (s16)D_80052B2C->unk0,
					(s32)D_80052B2C->unk8, 0x4000 - D_80047950) != 0) {
				if (func_800E95BC_F856C(walker->limbs[0].words[4],
						func_800B84D0_C7480(walker->limbs[0].unk12, walker->limbs[0].unk16) >> 8,
						walker->limbs[0].words[5]) == 0) {
					
					for (index = 0; index != count; index++) {
							UnkF9230ShadowLimb *limb = &walker->limbs[index + 1];

							if (limb->unk23 == 0) {
								terrain = count / 2;
								if (walker->limbs[0].unk22 & 0x80) {
									heading = walker->limbs[0].unk1A;
								} else {
									heading = walker->limbs[0].unk18;
								}
								if (index >= terrain) {
									heading += 0x8000;
								}
								sinOffset = heading & 0xFFFF;
								cosOffset = (s16)(s32)((((f64)(f32)coss(sinOffset & 0xFFFF)) / 32768.0) * (f64)radius);
								sinOffset = (s16)(s32)((((f64)(f32)sins(sinOffset & 0xFFFF)) / 32768.0) * (f64)radius);
								oldX = limb->unkA;
								oldZ = limb->unkC;
								terrain = func_800B84D0_C7480(oldX, oldZ);
								divisor = 3;
								sumZ = cosOffset / divisor;
								thirdSin = sinOffset / divisor;

								D_8005BB34->v.ob[0] = oldX + sumZ;
								sumX = terrain >> 8;
								D_8005BB34->v.ob[1] = sumX;
								D_8005BB34->v.ob[2] = oldZ + thirdSin;
								D_8005BB34->v.flag = 0;
								D_8005BB34->v.tc[0] = 0x100;
								D_8005BB34->v.tc[1] = 0;
								D_8005BB34->v.cn[0] = 0;
								D_8005BB34->v.cn[1] = 0;
								D_8005BB34->v.cn[2] = 0;
								D_8005BB34->v.cn[3] = 0;
								D_8005BB34++;

								D_8005BB34->v.ob[0] = oldX - sumZ;
								D_8005BB34->v.ob[1] = sumX;
								D_8005BB34->v.ob[2] = oldZ - thirdSin;
								D_8005BB34->v.flag = 0;
								D_8005BB34->v.tc[0] = 0x200;
								D_8005BB34->v.tc[1] = 0;
								D_8005BB34->v.cn[0] = 0;
								D_8005BB34->v.cn[1] = 0;
								D_8005BB34->v.cn[2] = 0;
								D_8005BB34->v.cn[3] = 0;
								D_8005BB34++;

								centerX = limb->unk1E;
								centerZ = limb->unk20;
								func_8011E6FC_12D6AC(centerX, centerZ, &centerY);
								D_8005BB34->v.ob[0] = centerX;
								D_8005BB34->v.ob[1] = centerY;
								D_8005BB34->v.ob[2] = centerZ;
								D_8005BB34->v.flag = 0;
								D_8005BB34->v.tc[0] = 0x80;
								D_8005BB34->v.tc[1] = 0;
								D_8005BB34->v.cn[0] = 0;
								D_8005BB34->v.cn[1] = 0;
								D_8005BB34->v.cn[2] = 0;
								D_8005BB34->v.cn[3] = 0x80;
								D_8005BB34++;

								oldX = limb->unkE;
								oldZ = limb->unk12;
								sumX = oldX + cosOffset;
								sumZ = oldZ + sinOffset;
								func_8011E6FC_12D6AC(sumX, sumZ, &rearY);
								D_8005BB34->v.ob[0] = sumX;
								minusX = oldX - cosOffset;
								centerX = oldZ - sinOffset;
								D_8005BB34->v.ob[1] = rearY;
								D_8005BB34->v.ob[2] = sumZ;
								D_8005BB34->v.flag = 0;
								D_8005BB34->v.tc[0] = 0;
								D_8005BB34->v.tc[1] = 0x180;
								D_8005BB34->v.cn[0] = 0;
								D_8005BB34->v.cn[1] = 0;
								D_8005BB34->v.cn[2] = 0;
								D_8005BB34->v.cn[3] = 0x80;
								D_8005BB34++;

								func_8011E6FC_12D6AC(minusX, centerX, &rearY);
								D_8005BB34->v.ob[0] = minusX;
								D_8005BB34->v.ob[1] = rearY;
								D_8005BB34->v.ob[2] = centerX;
								D_8005BB34->v.flag = 0;
								D_8005BB34->v.tc[0] = 0x100;
								D_8005BB34->v.tc[1] = 0x180;
								D_8005BB34->v.cn[0] = 0;
								D_8005BB34->v.cn[1] = 0;
								D_8005BB34->v.cn[2] = 0;
								D_8005BB34->v.cn[3] = 0x80;
								D_8005BB34++;

								cosOffset = heading - 0x4000;
								cosOffset &= 0xFFFF;
								if (index >= ((s32)D_801601F0[walker->limbs[0].unk23].unkC / 2)) {
									cosOffset = heading + 0x4000;
									cosOffset &= 0xFFFF;
									coss(cosOffset & 0xFFFF);
									sins(cosOffset & 0xFFFF);
								} else {
									coss(cosOffset & 0xFFFF);
									sins(cosOffset & 0xFFFF);
								}

								if (8 != count) {
									gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 5), 5, 0);
									gSP1Triangle(D_8005BB2C++, 0, 1, 3, 0);
									gSP1Triangle(D_8005BB2C++, 1, 4, 3, 0);
									gSP1Triangle(D_8005BB2C++, 2, 3, 4, 0);
								}
							}
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
	textureAddr = K0_TO_PHYS(D_5047470);
	gDPLoadTextureBlock(D_8005BB2C++, textureAddr, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
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

	sp1C = func_800F9C40_108BF0(arg0 - D_80159218.x);
	if ((u32)(func_800F9C40_108BF0(arg2 - D_80159218.z) + sp1C) < 0x9C4U) {
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

s16 func_800F9E0C_108DBC(s16 arg0, s16 arg1, s16 *arg2, s16 *arg3, s16 *arg4, s16 *arg5, s16 *arg6) {
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

s16 func_800FA018_108FC8(VehicleInstance *arg0, s16 arg1, s32 arg2) {
	VehicleType *type;
	s16 h0, h1, temp, h4, h5;
	volatile s16 h2, h3;
	s16 h6, h7;
	f32 xOff, zOff;

	if (&arg0 == NULL) {
	}
	type = &vehicleTypes[arg0->unk1A];
	xOff = (f32)(((f32)coss((u16)arg1) / 32768.0) * (f64)(arg2 >> 1));
	zOff = (f32)(((f32)sins((u16)arg1) / 32768.0) * (f64)(arg2 >> 1));
	/* Zero-index type reads retain IDO's three pointer snapshots. */
	func_800F9D60_108D10((s16)(s32)((f32)arg0[arg0->unk1A * 0].unk0 - xOff), (s16)(s32)((f32)arg0[arg0->unk1A * 0].unk4 - zOff), &h0, &temp, &h4);
	func_800F9D60_108D10((s16)(s32)((f32)arg0[arg0->unk1A * 0].unk0 + xOff), (s16)(s32)((f32)arg0[arg0->unk1A * 0].unk4 + zOff), &h1, &temp, &h5);

	xOff = (f32)(((f32)coss((u16)arg1) / 32768.0) * (f64)(arg2 >> 2));
	zOff = (f32)(((f32)sins((u16)arg1) / 32768.0) * (f64)(arg2 >> 2));
	func_800F9D60_108D10((s16)(s32)((f32)arg0[arg0->unk1A * 0].unk0 - xOff), (s16)(s32)((f32)arg0[arg0->unk1A * 0].unk4 - zOff), (s16 *)&h2, &temp, &h6);
	func_800F9D60_108D10((s16)(s32)((f32)arg0->unk0 + xOff), (s16)(s32)((f32)arg0->unk4 + zOff), (s16 *)&h3, &temp, &h7);

	if (!(type->unk4C & 0x100)) {
		if (D_80222A70 >= h0) {
			h0 = D_80222A70;
		}
		if (D_80222A70 >= h1) {
			h1 = D_80222A70;
		}
		if (D_80222A70 >= h2) {
			h2 = D_80222A70;
		}
		if (D_80222A70 >= h3) {
			h3 = D_80222A70;
		}
	}

	if ((arg0->unk20 & VEHICLE_FLAG_ON_BRIDGE) || (arg0->unk20 & VEHICLE_FLAG_HALF_ON_BRIDGE)) {
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
		h0 = *(s16 *)&h2;
	}
	if (h3 >= h1) {
		h1 = *(s16 *)&h3;
	}

	return func_80003824_4424((f32)arg2, (f32)(h0 - h1));
}

s32 func_800FA40C_1093BC(VehicleInstance *vehicle, s16 angle, s32 distance) {
	VehicleType *type;
	s16 height0;
	s16 height1;
	f32 xOffset;
	f32 zOffset;

	type = &vehicleTypes[vehicle->unk1A];
	xOffset = (f32)(((f64)(f32)coss((u16)angle) / 32768.0) * (f64)(distance >> 1));
	zOffset = (f32)(((f64)(f32)sins((u16)angle) / 32768.0) * (f64)(distance >> 1));
	height0 = (s16)(func_800B85CC_C757C((s16)(s32)((f32)vehicle->unk0 - xOffset), (s16)(s32)((f32)vehicle->unk4 - zOffset)) >> 8);
	height1 = (s16)(func_800B85CC_C757C((s16)(s32)((f32)vehicle->unk0 + xOffset), (s16)(s32)((f32)vehicle->unk4 + zOffset)) >> 8);
	if ((vehicle == D_80052B34) && (D_80159320 & 0x400)) {
		func_800F9CB0_108C60((s16)(s32)((f32)vehicle->unk0 - xOffset), &height0, (s16)(s32)((f32)vehicle->unk4 - zOffset));
		func_800F9CB0_108C60((s16)(s32)((f32)vehicle->unk0 + xOffset), &height1, (s16)(s32)((f32)vehicle->unk4 + zOffset));
	}
	if (!(type->unk4C & 0x100)) {
		if (D_80222A70 >= height0) {
			height0 = (s16)D_80222A70;
		}
		if (D_80222A70 >= height1) {
			height1 = (s16)D_80222A70;
		}
	}
	return func_80003824_4424((f32)distance, (f32)(height0 - height1));
}

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

s16 func_800FA7F0_1097A0(VehicleInstance *arg0, s16 arg1, s32 arg2) {
	VehicleType *type;
	s16 h1;
	s16 h2;
	f32 xOff;
	f32 zOff;

	type = &vehicleTypes[arg0->unk1A];
	xOff = (f32)(((f64)(f32)coss((u16)arg1) / 32768.0) * (f64)(arg2 >> 1));
	zOff = (f32)(((f64)(f32)sins((u16)arg1) / 32768.0) * (f64)(arg2 >> 1));
	h1 = (s16)(func_800B85CC_C757C((s16)(s32)((f32)arg0->unk0 - (xOff * (f32)2.0)), (s16)(s32)((f32)arg0->unk4 - (zOff * (f32)2.0))) >> 8);
	h2 = (s16)(func_800B85CC_C757C((s16)(s32)((f32)arg0->unk0 + xOff), (s16)(s32)((f32)arg0->unk4 + zOff)) >> 8);

	if (!(type->unk4C & 0x100)) {
		if (D_80222A70 >= h1) {
			h1 = (s16)D_80222A70;
		}
		if (D_80222A70 >= h2) {
			h2 = (s16)D_80222A70;
		}
	}

	return func_80003824_4424((f32)((f64)arg2 * 1.5), (f32)(h1 - h2));
}

s16 func_800FAA08_1099B8(s16 arg0, s16 arg1) {
	s16 temp_v1;
	s16 var_a0;
	s16 var_v0;
	s16 diff;
	s32 ret;
	s32 temp_v0;

	temp_v1 = arg0 & 0xFF;
	temp_v0 = 0xFF - (s16)(arg1 & 0xFF);
	if (temp_v0 < temp_v1) {
		diff = D_80052A94[(s16)(arg1 >> 8)].cells[(s16)(arg0 >> 8) + 0x100].height
			- D_80052A94[(s16)(arg1 >> 8)].cells[(s16)(arg0 >> 8) + 0x101].height;
	} else {
		diff = D_80052A94[(s16)(arg1 >> 8)].cells[(s16)(arg0 >> 8)].height
			- D_80052A94[(s16)(arg1 >> 8)].cells[(s16)(arg0 >> 8) + 1].height;
	}
	if (diff >= 0) {
		var_a0 = diff;
	} else {
		var_a0 = -diff;
	}
	if (temp_v0 < temp_v1) {
		diff = D_80052A94[(s16)(arg1 >> 8)].cells[(s16)(arg0 >> 8) + 1].height
			- D_80052A94[(s16)(arg1 >> 8)].cells[(s16)(arg0 >> 8) + 0x101].height;
	} else {
		diff = D_80052A94[(s16)(arg1 >> 8)].cells[(s16)(arg0 >> 8)].height
			- D_80052A94[(s16)(arg1 >> 8)].cells[(s16)(arg0 >> 8) + 0x100].height;
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
			var_s0->unk20 = var_s0->unk20 & ~VEHICLE_FLAG_INSIDE_PLAY_BOUNDS;
		} else {
			var_s0->unk20 = var_s0->unk20 | VEHICLE_FLAG_INSIDE_PLAY_BOUNDS;
		}
		var_s0++;
	} while (var_s0 != end);
}

void func_800FAD10_109CC0(void) {
	s32 i;
	D_80158FD8 = 0;
	for (i = 0; i < 128; i++) {
		if (vehicleInstances[i].unk20 & 0x8000) {
			D_80158E80[D_80158FD8++] = i;
		}
	}
	D_80159320 &= ~0x2000;
}

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
	VehicleType *type = &vehicleTypes[arg0->unk1A];
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
	arg0->unk20 = type->unk4C;
	arg0->unk1C = type->hitPoints;
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
	arg0->unk3C = (s16)(type->unk61 << 8);
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
		return &vehicleTypes[arg0->unk1A];
	}
	return &alienTypes[arg0->unk1A];
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

s32 func_800FB160_10A110(VehicleInstance *arg0) {
	f32 sp1C;
	f32 sp18;
	f32 var_f16;
	f32 var_f2;


	sp1C = func_800FB014_109FC4(arg0);
	sp18 = func_800FB098_10A048(arg0);
	var_f16 = (-sp1C < sp1C) ? sp1C : -sp1C;
	var_f2 = (-sp18 < sp18) ? sp18 : -sp18;
	
	if ((f64)(var_f2 + var_f16) < 1.0) {
		return (arg0->unk58 < 0.0f) ? arg0->unk6 : -arg0->unk6;
	}
	return func_80003824_4424(sp1C, sp18);
}

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
		func_800E0E9C_EFE4C(arg0->unk0, arg0->unk4, (u16)(vehicleTypes[arg0->unk1A].unkC + arg0->unk12));
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

#ifdef NON_MATCHING
void func_800FB504_10A4B4(void) {
	s32 i;
	s32 bestScore;
	s16 bestIndex;
	VehicleType *type;
	AlienInstance *scanAlien;
	s16 pitchClamp;
	s32 nextX;
	s32 tmp;
	s32 nextZ;
	s32 targetDist;
	AlienInstance *targetAlien;
	s16 steerClamp;
	s16 yaw;
	s32 diff;
	s16 cosVal;
	f32 scale;
	s32 selectedInput;
	WeaponEntry_80129864 *animBase;
	s32 animFrame;
	s32 worldX;
	s32 worldY;
	s32 worldZ;
	s32 restoreSpeed;

	bestIndex = -1;
	yaw = D_80159318;

	if (!D_80052B34) {
		D_80158FF4 = NULL;
		return;
	}

	type = &vehicleTypes[D_80052B34->unk1A];
	steerClamp = type->arcOfFire >= 0 ? type->arcOfFire : -type->arcOfFire;

	pitchClamp = D_80052B2C->unk36;

	if (D_80050AD4 == 1) {
		if (type->unk4C & 0x08000000) {
			restoreSpeed = type->gun2X;
			if (type->gun2X < 0) {
				type->gun2X = -type->gun2X;
			}
		}
		func_80128504_1374B4((AlienInstance *) D_80052B34, 1, &worldX, &worldY, &worldZ);
	} else {
		if (type->unk4C & 0x08000000) {
			restoreSpeed = type->gun1X;
			if (type->gun1X < 0) {
				type->gun1X = -type->gun1X;
			}
		}
		func_80128504_1374B4((AlienInstance *) D_80052B34, 0, &worldX, &worldY, &worldZ);
	}

	if (!(type->unk4C & 0x00800000)) {
		s32 hasPitch = type->unk4C & 0x00010000;
		if ((hasPitch || (type->unk4C & 0x00080000)) && ((currentControllerStates[0].button & 0x10) || ((currentLevel == 2) && (D_80052B34->unk1A == 1)))) {
			if (hasPitch) {
				diff = D_8004758A;
				pitchClamp -= (diff * diff * diff) >> 8;
			} else {
				pitchClamp = 0;
			}

			targetDist = D_8004758B;
			targetDist = (targetDist * targetDist * targetDist) >> 9;
			if (D_80031420_32020 & 4) {
				yaw += targetDist;
			} else {
				yaw -= targetDist;
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
		if ((currentControllerStates[0].button & 0x10) && (D_80052B34->unk20 & VEHICLE_FLAG_AIRBORNE)) {
			D_801591BC = 1;
		} else {
			D_801591BC = 0;
		}
	}

	D_80158FF0 = 0;

	if (!D_80159048) {
		bestScore = 0x17E8;
		i = 0xFF;
		if (i--) {
		do {
			scanAlien = &alienInstances[i];

			if (scanAlien->typeIndex >= 2) {
				s16 angleDiff;

				if (!(scanAlien->unk20 & 0x00100000) && !(scanAlien->unk20 & 0x00400000) &&
					(scanAlien->typeIndex != 0) && (scanAlien->typeIndex != 1)) {
					nextX = (worldX - scanAlien->unk0) >> 1;
					nextZ = (worldZ - scanAlien->unk4) >> 1;
					if ((u32)((nextX * nextX) + (nextZ * nextZ)) < 0x3C8000) {
						angleDiff = func_80003824_4424((f32) nextX, (f32) nextZ);
						tmp = func_800F9C50_108C00(D_80052B34->unk6 - D_80052B2C->unk36, angleDiff) - 0x8000;
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
			}
		} while (i--);
		}

		if (bestIndex == -1) {
			D_80158FEC = NULL;
		} else {
			D_80158FEC = &alienInstances[bestIndex];
		}
	}

	targetAlien = D_80158FEC;
	if (targetAlien != NULL) {
		nextX = (worldX - targetAlien->unk0) >> 1;
		nextZ = (worldZ - targetAlien->unk4) >> 1;
		targetDist = (s32) sqrtf((f32) ((nextX * nextX) + (nextZ * nextZ)));
	}

	if (currentControllerStates[0].button & 0x10) {
	} else {
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

	if ((D_80052B34->unk1A == 0) || (D_80052B34->unk20 & VEHICLE_FLAG_AIRBORNE)) {
		if (yaw < -0x1F40) {
			yaw = -0x1F40;
		}
	} else if (yaw < -0x7D0) {
		yaw = -0x7D0;
	}

	if (steerClamp < pitchClamp) {
		pitchClamp = steerClamp;
	}

	if (pitchClamp < -steerClamp) {
		pitchClamp = -steerClamp;
	}

	diff = func_800F9C50_108C00(D_80052B2C->unk36, pitchClamp);
	tmp = -diff < diff ? diff : -diff;

	if (tmp < D_8015929C) {
		D_80052B2C->unk36 = pitchClamp;
	} else {
		tmp = diff < 0 ? D_8015929C : -D_8015929C;
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
	tmp = -diff < diff ? diff : -diff;

	if (tmp < 0x190) {
		D_80159318 = yaw;
	} else {
		tmp = diff < 0 ? 0x190 : -0x190;
		D_80159318 += tmp;
	}

	if (type->arcOfFire < 0) {
		D_80052B2C->unk36 += 0x8000;
	}

	if ((D_80052B34->unk20 & VEHICLE_FLAG_AIRBORNE) && (vehicleTypes[D_80052B34->unk1A].unk4C & 0x20000000)) {
		D_80159318 = -D_80052B34->unkA;
	}

	D_8015F9F0 = 0x2C;
	nextX = (s32) ((((f64) (f32) coss((u16) D_80159318) / 32768.0) * ((f64) (f32) coss((D_80052B34->unk6 - D_80052B2C->unk36) & 0xFFFF) / 32768.0) * D_80144A60_153A10[0]) + (f64) worldX);
	tmp = (s32) ((((f64) (f32) sins((u16) D_80159318) / 32768.0) * D_80144A68_153A18[0]) + (f64) worldY);
	nextZ = (s32) ((((f64) (f32) coss((u16) D_80159318) / 32768.0) * ((f64) (f32) sins((D_80052B34->unk6 - D_80052B2C->unk36) & 0xFFFF) / 32768.0) * D_80144A70_153A20[0]) + (f64) worldZ);

	selectedInput = D_801493A0 << 8;
	if (nextX < selectedInput) {
		scale = (f32) (selectedInput - worldX) / (f32) (nextX - worldX);
		nextX = selectedInput;
		tmp = (s32) ((f32) worldY + ((f32) (tmp - worldY) * scale));
		nextZ = (s32) ((f32) worldZ + ((f32) (nextZ - worldZ) * scale));
	}

	selectedInput = D_801493A4 << 8;
	if (nextZ < selectedInput) {
		scale = (f32) (selectedInput - worldZ) / (f32) (nextZ - worldZ);
		nextZ = selectedInput;
		nextX = (s32) ((f32) worldX + ((f32) (nextX - worldX) * scale));
		tmp = (s32) ((f32) worldY + ((f32) (tmp - worldY) * scale));
	}

	selectedInput = D_80149398 << 8;
	if (selectedInput < nextX) {
		scale = (f32) (selectedInput - worldX) / (f32) (nextX - worldX);
		nextX = selectedInput;
		tmp = (s32) ((f32) worldY + ((f32) (tmp - worldY) * scale));
		nextZ = (s32) ((f32) worldZ + ((f32) (nextZ - worldZ) * scale));
	}

	selectedInput = D_8014939C << 8;
	if (selectedInput < nextZ) {
		scale = (f32) (selectedInput - worldZ) / (f32) (nextZ - worldZ);
		nextZ = selectedInput;
		nextX = (s32) ((f32) worldX + ((f32) (nextX - worldX) * scale));
		tmp = (s32) ((f32) worldY + ((f32) (tmp - worldY) * scale));
	}

	D_80159000.unk0 = nextX;
	D_80159000.unk2 = tmp;
	D_80159000.unk4 = nextZ;

	if (D_80050AD4 == 1) {
		selectedInput = type->weapon2;
	} else {
		selectedInput = type->weapon1;
	}

	animBase = (WeaponEntry_80129864 *) &D_80145BE0_154B90[selectedInput];
	animFrame = (u16)animBase->unk0;
	if (animFrame >= 0x1195) {
		((WeaponEntry_80129864 *)D_80145BE0_154B90)[selectedInput].unk0 = 0x1194;
	}

	D_801591A8 = 1;
	if (D_80050AD4 == 1) {
		nextX = 1;
	} else {
		nextX = 0;
	}

	tmp = D_80158FEC != NULL ? (s32) D_80158FEC : (s32) D_80158FF4;

	func_8012B150_13A100((s32) D_80052B34, nextX, (InputStruct_8012B150 *) D_80158FF4, tmp);

	D_801591B4 = D_801591F8.hit.unk8;
	((WeaponEntry_80129864 *)D_80145BE0_154B90)[selectedInput].unk0 = animFrame;
	D_80159028.unk0 = D_801591F8.hit.unk0;
	D_80159028.unk2 = D_801591F8.hit.unk2;
	D_80159028.unk4 = D_801591F8.hit.unk4;
	D_801591A8 = 0;

	if (type->unk4C & 0x08000000) {
		if (D_80050AD4 == 1) {
			type->gun2X = restoreSpeed;
		} else {
			type->gun1X = restoreSpeed;
		}
	}
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_800FB504_10A4B4.s")
#endif

s32 func_800FC1CC_10B17C(void) {
	s32 bestDist;
	s16 i;
	VehicleInstance *playerVehicle;
	VehicleInstance **selected;

	bestDist = 0x7FFFFFFF;
	playerVehicle = D_80052B20;
	i = D_80158FD8;

	if (D_80159320 & 2) {
		return 0;
	}

	if (i--) {
		do {
			VehicleInstance *vehicle = &vehicleInstances[D_80158E80[i]];

			if (vehicle->unk1A != 0x12) {
				if (vehicle != D_80052B34) {
					s32 x = (D_80052B34->unk0 - vehicle->unk0) >> 4;
					s32 y = (D_80052B34->unk2 - vehicle->unk2) >> 4;
					s32 z = (D_80052B34->unk4 - vehicle->unk4) >> 4;
					s32 dist = (x * x) + (y * y) + (z * z);

					if (dist < bestDist) {
						bestDist = dist;
						D_80158F8C = vehicle;
					}
				}
			}
		} while (i--);
	}

	if (bestDist >= 0x384) {
		if ((u32)(D_80052A8C - D_801409E8_14F998) >= 0x3D) {
			func_8001A650_1B250(0xD);
			D_801409E8_14F998 = D_80052A8C;
		}
		D_80158F8C = 0;
		return 0;
	}

	i = 12;
	while (i--) {
		UnkF9230Func80102FA4Point *point = &D_801593F0[i];

		point->pos.x = playerVehicle->unk0;
		point->pos.y = playerVehicle->unk2;
		point->pos.z = playerVehicle->unk4;
		point->vel.x = 0.0f;
		point->vel.y = 0.0f;
		point->vel.z = 0.0f;
	}

	func_8001A650_1B250(9);
	D_80159188.x = 0.0f;
	D_80159188.y = 0.0f;
	D_80159188.z = 0.0f;
	D_80158E60 = 400.0f;
	D_80159320 |= 2;
	D_80159320 &= 0x7FFFFFFF;

	return 1;
}

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

	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 3), 3, 0);
	gSP1Triangle(D_8005BB2C++, 0, 1, 2, 0);
}

void func_800FC568_10B518(void) {
	s16 counter;
	UnkF9230Func80102FA4Point *point;
	Vtx *startVtx;

	counter = 12;

	startVtx = D_8005BB34;
	while (counter--) {
		point = &D_801593F0[counter];

		D_8005BB34->v.ob[0] = (s16)point->pos.x;
		D_8005BB34->v.ob[1] = (s16)point->pos.y;
		D_8005BB34->v.ob[2] = (s16)point->pos.z;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = 0x8E;
		D_8005BB34->v.cn[1] = 0x63;
		D_8005BB34->v.cn[2] = 0x3C;
		D_8005BB34->v.cn[3] = 0xFF;
		D_8005BB34++;
	}

	gDPPipeSync(D_8005BB30++);
	gSPVertex(D_8005BB30++, startVtx, 12, 0);
	gSPLine3D(D_8005BB30++, 0, 1, 0);
	gSPLine3D(D_8005BB30++, 1, 2, 0);
	gSPLine3D(D_8005BB30++, 2, 3, 0);
	gSPLine3D(D_8005BB30++, 3, 4, 0);
	gSPLine3D(D_8005BB30++, 4, 5, 0);
	gSPLine3D(D_8005BB30++, 5, 6, 0);
	gSPLine3D(D_8005BB30++, 6, 7, 0);
	gSPLine3D(D_8005BB30++, 7, 8, 0);
	gSPLine3D(D_8005BB30++, 8, 9, 0);
	gSPLine3D(D_8005BB30++, 9, 10, 0);
	gSPLine3D(D_8005BB30++, 10, 11, 0);
	gDPPipeSync(D_8005BB30++);
}

void func_800FC7E0_10B790(s8 arg0, s8 arg1, s16 *arg2, s16 *arg3) {
	RoadTileInfo *entry;
	u16 result;
	TerrainObjectCell *tile;
	u8 idx;

	tile = &D_80052A94[arg1].objects[arg0];
	
	entry = D_801407F4_14F7A4;
	idx = tile->terrainType;
	if (tile->flag10) {
		idx += 16;
	}
	*arg2 = entry[idx].mapX;
	*arg3 = entry[idx].mapZ;
	result = func_800B325C_C220C_U16(arg0, arg1, 0xFFFF);
	if ((s16)(((result & 0x4000) == 0) ^ ((arg0 & 1) == 0)) != 0) {
		*arg2 = 0x100 - *arg2;
	}
	if ((s16)(((result & 0x2000) == 0) ^ ((arg1 & 1) == 0)) != 0) {
		*arg3 = 0x100 - *arg3;
	}
}


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
	arg0->unk20 |= VEHICLE_FLAG_PATH_GUIDED;
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
	VehicleInstance *vehicle;
	VehicleType *type;
	Unk80259490 *spawn;
	f32 squaredRadius;
	s32 i;
	s32 buildingIndex;
	f64 scale;
	s16 groundY;
	s16 spawnValue;


	D_80159300 = 0;
	D_8013FD88_14ED38 = 0;
	if (vehicleTypes[0].unk14 != 0x3039) {
		func_80006DAC_79AC(0, 1);
		return;
	}

	{
		VehicleType *typeWalker;
		for (typeWalker = &vehicleTypes[0x13]; typeWalker-- >= &vehicleTypes[1];){
			if ((currentLevel != 3) || (typeWalker != &vehicleTypes[0xD])) {
				squaredRadius = (f32)(SQ(typeWalker->unk34 >> 1) + SQ(typeWalker->unk36 >> 1));
				if (typeWalker->unk16 != 1) {
					squaredRadius += (f32)SQ(typeWalker->unk38 >> 1);
				}
				typeWalker->unk8 = (s32)squaredRadius;
				typeWalker->unkC = sqrtf(squaredRadius);
			}
		}
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
	D_80050AD4 = D_80050AD0 = 0;
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
	D_80159020 = (VehicleInstance *)&D_80159028;
	D_80158F90 = 0;
	D_80158FEC = 0;
	D_80158FF4 = &D_80159000.unk0;
	D_80149438 = 0;
	D_8015930C = D_80159234 = 0;
	D_80047724 = 6;
	D_80047726 = 0x258;
	D_80047728 = 0x4B0;

	i = 50;
	while (i--) {
		D_80159050[i].unk0 = D_80159050[i].unk2 = D_80159050[i].unk4 = 0;
	}

	scale = D_80144A78_153A28[0]; i = 127; do {
		vehicle = &vehicleInstances[i];
		spawn = &D_80259490[i];
		spawnValue = spawn->unk6;
		type = &vehicleTypes[(u8)spawnValue & 0xFF];
		vehicle->unk1A = (u8)(spawnValue + type->unk14 * 0);
		func_800FAE84_109E34(vehicle);
		func_800FB44C_10A3FC(vehicle, (spawn->unk0 << 8) + 0x80);
		func_800FB484_10A434(vehicle, (spawn->unk2 << 8) + 0x80);
		buildingIndex = func_8011E6FC_12D6AC(vehicle->unk0, vehicle->unk4, &groundY);
		func_800FB468_10A418(vehicle, groundY);
		if (buildingIndex != -1) {
			vehicle->unk20 |= VEHICLE_FLAG_ON_BRIDGE;
		}
		vehicle->unkE = 0x4000U - spawn->unk8;
		vehicle->unk6 = 0x4000 - spawn->unk8;
		vehicle->unk46 = (i & 0x3F) | (vehicle->unk46 & 0xFFC0);
		D_80158BD0[i] = spawn->unkE;
		if ((spawn->unk6 != 0) || (i == 0)) {
			vehicle->unk20 |= 0x8000 | VEHICLE_FLAG_UNK1;
		}
		if ((currentLevel == 1) && (vehicle->unk1A == 0x12) && (D_80047F98 > 0)) {
			vehicle->unk20 &= 0x7FFF;
		}
		if ((spawn->unkC & 0x400) && ((currentLevel != 3) || (vehicle->unk1A != 0xD))) {
			func_800FC90C_10B8BC(vehicle, &spawn->unk0);
		}
		spawnValue = spawn->unkA;
		if (spawnValue == 1) {
			vehicle->unk3C = 1;
		} else {
			vehicle->unk3C = (f32)(type->unk61 << 8) * ((f32)spawnValue * scale);
		}
		vehicle->unk1C = (f32)(u32)type->hitPoints * ((f32)spawn->unk10 * scale);
	} while (i--);

	if (D_80158FD8 == 1) {}
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
	D_80052B34->unk20 |= VEHICLE_FLAG_AIRBORNE;
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
		D_80052B34->unk20 |= VEHICLE_FLAG_AIRBORNE;
		func_800FB3E8_10A398(D_80052B34, 1.0f);
		D_80052B34->unk2E++;
	}
}

void func_800FD410_10C3C0(VehicleType *type) {
	switch (type->unk58) {
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

	if ((currentLevel == 2) && (((s32) (type - vehicleTypes)) == 7)) {   
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

// Set new player vehicle
// `vehicleGroup` is deliberately declared but unused: the original reserves a 4-byte stack
// home at 0x28 that no instruction touches, and this declaration reproduces it (the
// first-declared local gets the highest offset, so `wasAudioActive` stays at 0x2C).
// The index into vehicleInstances must stay inline: a named `vehicleGroup` used as the
// subscript allocates a variable register (a0) instead of the target's first temp (t3).
// AI - Vehicle entry path; reads D_80052AE8, D_80052B34 and D_8013FD88.
void func_800FD510_10C4C0(s32 arg0, s16 arg1) {
	Unk80052B2C *playerData;
	VehicleType *type;
	s32 wasAudioActive;
	s16 vehicleGroup;

	wasAudioActive = 0;
	if (func_800E60CC_F507C(2, *((u8 *)D_80052B2C + 0x35)) != 0) {
		func_800E5E3C_F4DEC(2, *((u8 *)D_80052B2C + 0x35));
		wasAudioActive = 1;
	}

	playerData = &((Unk80052B2C *)&D_80052AE8)[(s16)arg0];
	playerData->unk34 = arg1;
	D_80159318 = 0;

	playerData->unk38 = &vehicleInstances[playerData->unk34];
	D_80052B34 = playerData->unk38;
	type = &vehicleTypes[D_80052B34->unk1A];

	if (*(s16 *)((u8 *)type + 0x3C) < 0) {
		playerData->unk36 = -0x7FFF;
	} else {
		playerData->unk36 = 0;
	}

	D_801591EA = 0;
	D_80052B34->unk2E = 0xFA;
	D_801493DC = 0;
	D_80159230 = 0;
	D_8015F9EC = 0;
	D_80052B34->unk20 |= VEHICLE_FLAG_UNK1;

	func_800FD410_10C3C0(type);

	if (D_80052B34->unk1A != 0) {
		D_8015930A = D_80159232;
		D_8015930C = D_80159234;
		D_8013FD88_14ED38 = 1;
		func_80001144_1D44(0x10, 0, 0);
		func_8001A650_1B250(*(s16 *)((u8 *)&vehicleTypes[D_80052B34->unk1A].unk18 + sizeof(s16)));
		func_80139778_148728();
	}

	if (type->weapon1 != 0) {
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
		func_801371B8_146168(0, *(s16 *)((u8 *)type + 0x68), D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, -1.0f);
	}

	D_801591D8 = 0;
	D_801591D6 = 0;
	D_8004DCAC = (f32)D_80052B34->unk0;
	D_8004DCB0 = (f32)D_80052B34->unk4;
	D_8004DCB4 = (f32)D_80052B34->unk0;
	D_8004DCB8 = (f32)D_80052B34->unk4;
}

#ifdef NON_MATCHING
void func_800FD858_10C808(s16 arg0) {
	VehicleInstance *vehicle;
	Unk80259490 *spawnData;
	s32 i;
	s16 yRotation;
	s32 buildingIndex;

	i = D_80158FD8;
	while (i--) {
			if (arg0 == D_80158E80[i]) {
				vehicle = &vehicleInstances[arg0];
				if (vehicle->unk3C == 0) {
					vehicle->unk3C = vehicleTypes[vehicle->unk1A].unk61 << 8;
				} else if (func_800E60CC_F507C(2, arg0) != 0) {
					func_800E5E3C_F4DEC(2, arg0);
					vehicle->unk3C = vehicleTypes[vehicle->unk1A].unk61 << 8;
				}
				return;
			}
	}

	vehicle = &vehicleInstances[arg0];
	vehicle->unk20 |= (0x8000 | VEHICLE_FLAG_UNK1);
	func_800FAD10_109CC0();
	spawnData = &D_80259490[arg0];
	vehicle->unk1C = vehicleTypes[vehicle->unk1A].hitPoints;
	func_800FB44C_10A3FC(vehicle, (spawnData->unk0 << 8) + 0x80);
	func_800FB484_10A434(vehicle, (spawnData->unk2 << 8) + 0x80);
	buildingIndex = func_8011E6FC_12D6AC(vehicle->unk0, vehicle->unk4, &yRotation);
	func_800FB468_10A418(vehicle, yRotation);
	if (buildingIndex != -1) {
		vehicle->unk20 |= VEHICLE_FLAG_ON_BRIDGE;
	}
	vehicle->unkE = 0x4000U - spawnData->unk8;
	vehicle->unk6 = 0x4000 - spawnData->unk8;
	vehicle->unk3C = (s16)((f32)spawnData->unkA * D_80144A80_153A30.value * (f32)(vehicleTypes[spawnData->unk6].unk61 << 8));
	vehicle->unk1C = vehicleTypes[vehicle->unk1A].hitPoints;
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

void func_800FDC30_10CBE0(s16 arg0) {
	VehicleInstance *v;
	VehicleInstance *v2;
	s32 i;

	v = &vehicleInstances[D_80158E80[arg0]];
	v->unk20 &= 0x7FFF;
	D_80159320 |= 0x2000;
	switch (currentLevel) {
	case 1:
		switch (v->unk1A) {
		case 0x11:
			i = 127;
			v2 = &vehicleInstances[127];
			do {
				if ((v2->unk1A == 0x11) && (v2->unk20 & 0x8000)) {// if Plane Training Target?
					return;
				}
				v2--;
			} while (i--);
			D_8004DC58 = 5;
			break;
		case 0xC:
			func_800AE190_BD140(0xA);// ambulance dying adds 10 to human meter (during mission, NPC vehicle dying adds 2 more separately)
			return;
		}
		break;
	case 4:
		if (v->unk1A == 0xE) {
			func_800FDB00_10CAB0();
		}
		break;
	}
}

void func_800FDD48_10CCF8(s16 arg0) {
	s16 temp_v0 = func_800FADF8_109DA8(arg0);
	if (temp_v0 != -1) {
		func_800FDC30_10CBE0(temp_v0);
	}
}

// https://decomp.me/scratch/BaeVc
// AI - Mark a vehicle as destroyed, clearing its active flag and updating the tracked-vehicle list
void func_800FDD8C_10CD3C(VehicleInstance *arg0)
{
	s16 i = 0x80;
	while (i-- && arg0 != &vehicleInstances[i]);

	if (i >= 0)
	{
		func_800FDD48_10CCF8(i);
	}
}

void func_800FDE00_10CDB0(void) {
	extern VehicleInstance *D_80158F8C;

	if ((D_80159320 & 2) && (D_80158F8C->unkC == -2)) {
		D_80158F8C->unk30 = D_80159188.x;
		D_80158F8C->unk34 = D_80159188.y;
		D_80158F8C->unk38 = D_80159188.z;
		D_80158F8C->unk12 = 0;
		D_80158F8C->unk58 = 0.0f;
		D_80158F8C->unk20 |= (VEHICLE_FLAG_UNK1 | VEHICLE_FLAG_AIRBORNE);
		D_80158F8C = 0;
		D_80159320 &= ~2;
		D_80159320 |= 0x80000000;
	}
}

// AI - Eject the player from a destroyed vehicle and find a safe landing spot on the ground (disembark)
#ifdef NON_MATCHING
void func_800FDEA8_10CE58(Unk80052B2C *arg0, s32 arg1)
{
  VehicleInstance *vehicle;
  VehicleInstance *player;
  s16 halfTypeUnk36;
  s16 halfTypeUnk34;
  VehicleType *type;
  s32 changedAudio;
  u16 yaw;
  s16 scanIndex;
  s16 temp;
  union
  {
    s16 signedValue;
    u16 unsignedValue;
  } scanAngle;
  f32 tmpA;
  f32 tmpB;
  f64 scale;
  s32 foundSpot;
  s16 s0;
  s16 s1;
  s16 lockX;
  s16 lockZ;
  s16 lockY;
  s16 s2;
  s16 s3;
  s16 i;
  s32 hitAdjusted;
  s32 stepCount;
  s32 maxStepCount;
  vehicle = arg0->unk38;
  player = vehicleInstances;
  i = vehicle->unk1A;
  type = (VehicleType *)(s32)&vehicleTypes[i];
  changedAudio = 0;
  halfTypeUnk36 = vehicleTypes[i].unk36 >> 1;
  halfTypeUnk34 = vehicleTypes[i].unk34 >> 1;
  foundSpot = 0;
  stepCount = 0;
  if (i != 0)
  {
    if ((type->unk59 == 4) || (type->unk59 == 8))
    {
      D_80158E74 = D_80052B34;
      D_80159234 = D_8015930C;
      D_80159232 = D_8015930A;
      D_8015930C = 0;
      D_8015930A = 0;
    }
    else
    {
      D_80158E74 = 0;
    }
    if (func_800E60CC_F507C(2, (u8) arg0->unk34) != 0)
    {
      func_800E5E3C_F4DEC(2, (u8) arg0->unk34);
      changedAudio = 1;
    }
    if (D_8015920C != 0)
    {
      D_8015930E = 0;
      D_8015930C = 0;
      D_80159310 = 0;
      D_8015920C = 0;
    }
    func_800FDE00_10CDB0();
    vehicleInstances[0].unk1A = 0;
    vehicleInstances[0].unk20 = (s16) vehicleTypes[0].unk4C;
    vehicleInstances[0].unkE = vehicle->unkE;
    vehicleInstances[0].unk10 = vehicle->unk10;
    vehicleInstances[0].unk6 = vehicle->unk6;
    vehicleInstances[0].unk3C = 0x2710;
    func_800FB430_10A3E0(vehicleInstances, (f32) vehicle->unk12);
    player->unk20 |= 0x8000 | VEHICLE_FLAG_INSIDE_PLAY_BOUNDS;
    if (player->unk1C <= 0)
    {
      player->unk1C = 1;
    }
    else
    {
      player->unk1C = player->unk1C;
    }
    D_80159320 |= 0x2000;
    if (vehicle->unk20 & VEHICLE_FLAG_UNDER_BRIDGE)
    {
      player->unk20 |= VEHICLE_FLAG_UNDER_BRIDGE;
    }
    func_800FB468_10A418(player, (f32) vehicle->unk2);
    yaw = vehicle->unk6 + 0x4000;
    halfTypeUnk36 += 0x24;
    halfTypeUnk34 += 0x24;
    if (currentControllerStates[0].stick_x < 0)
    {
      halfTypeUnk34 = -halfTypeUnk34;
    }
    if ((currentControllerStates[0].stick_x >= 0) && (halfTypeUnk34 < 0))
    {
      if (halfTypeUnk34)
      {
      }
      halfTypeUnk34 = -halfTypeUnk34;
    }
    D_8015931A = 0;
    D_8013FD84_14ED34 = 0;
    scanAngle.unsignedValue = 0;
    hitAdjusted = 0;
    if (arg1 != 0)
    {
      maxStepCount = 9;
    }
    else
    {
      maxStepCount = 8;
    }
    scale = D_80144A88_153A38[0];
    i = maxStepCount;
    do
    {
      if (stepCount < maxStepCount)
      {
        stepCount = 0;
      }
      scanIndex = i - 1;
      if (i != 0)
      {
        do
        {
          s2 = (s16) ((s32) (((((f64) ((f32) coss(scanAngle.unsignedValue & 0xFFFF))) / 32768.0) * ((f64) halfTypeUnk34)) * scale));
          s3 = (s16) ((s32) (((((f64) ((f32) sins(scanAngle.unsignedValue & 0xFFFF))) / 32768.0) * ((f64) halfTypeUnk36)) * scale));
          if (scanIndex == 8)
          {
            func_800FB44C_10A3FC(player, (f32) vehicle->unk0);
            func_800FB484_10A434(player, (f32) vehicle->unk4);
          }
          else
          {
            s1 = coss(yaw & 0xFFFF);
            func_800FB44C_10A3FC(player, (f32) ((((f64) vehicle->unk0) + ((((f64) ((f32) s1)) / 32768.0) * ((f64) s2))) - ((((f64) ((f32) sins(yaw & 0xFFFF))) / 32768.0) * ((f64) s3))));
            s1 = sins(yaw & 0xFFFF);
            func_800FB484_10A434(player, (f32) (((((f64) ((f32) coss(yaw & 0xFFFF))) / 32768.0) * ((f64) s3)) + (((f64) vehicle->unk4) + ((((f64) ((f32) s1)) / 32768.0) * ((f64) s2)))));
          }
          func_80115604_1245B4(player);
          temp = func_800F9D60_108D10(player->unk0, player->unk4, &lockY, &lockZ, &lockX);
          if (((D_80222A70 - 0x24) >= lockX) && ((D_80222A70 - 0x24) < player->unk2))
          {
            hitAdjusted = 1;
            func_800FB3E8_10A398(player, -36.0f);
          }
          if ((func_80110FB4_11FF64(player, 1) == 0) && (player->unk2 >= lockY))
          {
            s32 allow = 1;
            if ((((arg1 == 0) && ((lockX + 0x64) < player->unk2)) && ((D_80222A70 + 0x64) < player->unk2)) && (stepCount < maxStepCount))
            {
              stepCount++;
              allow = 0;
            }
            else
              if (((arg1 == 0) && (player->unk2 < (lockX - 0x32))) && (lockZ < (vehicleTypes[0].unk38 + player->unk2)))
            {
              allow = 0;
            }
            else
            {
              s0 = 0x95;
              do
              {
                if ((D_80259D90[s0].unk0 >= 0xE) && (func_8010EF40_11DEF0((f32) D_80259D90[s0].unk10, (f32) D_80259D90[s0].unk14, (f32) D_80259D90[s0].unk30, (f32) D_80259D90[s0].unk34, (f32) vehicle->unk0, (f32) vehicle->unk4, (f32) player->unk0, (f32) player->unk4, &tmpA, &tmpB) != 0))
                {
                  allow = 0;
                  break;
                }
              }
              while (s0--);
            }
            if (allow != 0)
            {
              foundSpot = 1;
              if ((vehicleTypes[0].unk38 + player->unk2) < lockZ)
              {
                player->unk20 |= VEHICLE_FLAG_UNDER_BRIDGE;
                if (player->unk2 < lockY)
                {
                  player->unk2 = lockY;
                }
              }
              else
              {
                if (temp != (-1))
                {
                  player->unk20 |= VEHICLE_FLAG_ON_BRIDGE;
                }
                if (player->unk2 < lockX)
                {
                  if (arg0->unk34 && arg0->unk34)
                  {
                  }
                  player->unk2 = lockX;
                }
              }
              if (arg1 == 0)
              {
                s0 = player->unk0;
                s1 = player->unk2;
                s2 = player->unk4;
                func_800FB44C_10A3FC(player, (f32) vehicle->unk0);
                func_800FB468_10A418(player, (f32) vehicle->unk2);
                func_800FB484_10A434(player, (f32) vehicle->unk4);
                D_80159300 = 0x18;
                func_800EA434_F93E4();
                func_800EBD9C_FAD4C(s0, s1, s2);
              }
              else
              {
                D_80157A28 &= ~PLAYER_STATE_FLAG_SWIMMING;
              }
              break;
            }
          }
          {
            if (hitAdjusted != 0)
            {
              hitAdjusted = 0;
              func_800FB3E8_10A398(player, 36.0f);
            }
            s2 = scanIndex;
            scanAngle.signedValue += (s2 & 1) ? (0xA000) : (0x8000);
            scanIndex = s2 - 1;
          }
        }
        while (s2);
      }
      if (foundSpot == 0)
      {
        func_800FB468_10A418(player, (f32) (player->unk2 + 0x14));
      }
    }
    while (foundSpot == 0);
    if (arg1 != 0)
    {
      player->unk30 = vehicle->unk30;
      player->unk34 = vehicle->unk34;
      player->unk38 = vehicle->unk38;
    }
    D_80050AD4 = 0;
    func_800FD510_10C4C0(0, 0);
    player->unk20 |= VEHICLE_FLAG_AIRBORNE;
    func_801396A8_148658(vehicle->unk1A);
    if (changedAudio != 0)
    {
      func_800E5CF4_F4CA4(2, 0);
    }
    if (arg0 == (&D_80052AE8))
    {
      D_80052B2C->unk38 = vehicleInstances;
    }
    func_800FD4D4_10C484(type);
    func_801371B8_146168(D_80052B34, type->unk6A, D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, -1.0f);
    if (D_8004816A >= ((u8) D_800314C4))
    {
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
	if (D_80052B34->unk20 & VEHICLE_FLAG_AIRBORNE) {
		func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, 0, 0, D_8005BB38);
		return;
	}
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = func_800FA40C_1093BC(D_80052B34, (s16)(D_80052B34->unk6 + 0x4000), vehicleTypes[D_80052B34->unk1A].unk34) + D_80052B34->unk8;
	D_80052B48.unk4 = func_800FA40C_1093BC(D_80052B34, D_80052B34->unk6, vehicleTypes[D_80052B34->unk1A].unk36) - D_80052B34->unkA;
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

void func_800FEDBC_10DD6C(s32 arg0) {
	f32 posX;
	f32 posY;
	f32 posZ;
	u8 red;
	u8 green;
	u8 blue;
	s32 dirX;
	f32 tempSin;
	f32 tempCos;

	guMtxXFML(&D_801592C0, 160.0f, 134.0f, -10.0f, &posX, &posY, &posZ);

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
			func_800CA5EC_D959C((s16)(s32)posX, (s16)(s32)posY, (s16)(s32)posZ, 0, -0xA, 0, 0x1E, 5, 2, 5, red, green, blue, 0xFF);

			tempSin = (f32)((f32)sins((u16)(D_80052B34->unkE + 0x4000)) / 32768.0);
			tempCos = (f32)-((f32)coss((u16)(D_80052B34->unkE + 0x4000)) / 32768.0);
			dirX = (s32)(tempSin * 127.0f);

			func_800CA5EC_D959C(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, dirX, 0x50,
				(s32)(tempCos * 127.0f), 0x78, 6, 4, 0x64, 0, 0xFF, 0, 0xFF);

			if (D_80159320 & 0x02000000) {
				D_80159320 &= ~0x02000000;
				func_800CA5EC_D959C(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, dirX, 0x50,
					(s32)(tempCos * 127.0f), 0x78, 6, 0x14, 0x64, 0, 0xFF, 0, 0xFF);
			}

			func_80137130_1460E0(0, 0xAB, (s16)(s32)posX, (s16)(s32)posY, (s32)posZ);
			func_80137130_1460E0(0, 0xD4, (s16)(s32)posX, (s16)(s32)posY, (s32)posZ);
		}
	}

	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = (s16)((D_80052A8C * 0x3E8) & 0x1FFF);
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

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

// AI - Builds the vehicle's model-view matrix from its position/rotation and draws it
void func_800FFD28_10ECD8(VehicleInstance *arg0) {
	VehicleType *typePtr;
	s16 yOffset;

	typePtr = &vehicleTypes[arg0->unk1A];

	func_800039D0_45D0(NULL, NULL, &D_800311A0, D_8005BB38);

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	D_80052B40.unk0 = arg0->unk0;
	D_80052B40.unk2 = arg0->unk2;
	D_80052B40.unk4 = arg0->unk4;

	D_80052B48.unk0 = (s16)(0x4000 - arg0->unk6);
	D_80052B48.unk2 = (s16)-arg0->unk8;
	D_80052B48.unk4 = arg0->unkA;

	if ((D_80222A70 == arg0->unk2) && !(typePtr->unk4C & 0x100)) {
		D_80052B48.unk2 = (s16)(s32)(((f32)sins((D_80052A8E & 0x1F) << 11) / 32768.0) * 512.0) + D_80052B48.unk2;
		D_80052B48.unk4 = (s16)(s32)(((f32)coss((D_80052A8E & 0x1F) << 11) / 32768.0) * 512.0) + D_80052B48.unk4;
	}

	if (typePtr->unk55 != 0) {
		D_80052B40.unk2 += D_80140768_14F718[typePtr->unk55].unk0;
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
		D_80052B40.unk2 += D_801591C6;
		D_801591C6 = 0;
	}

	func_800039D0_45D0(&D_80052B40, &D_80052B48, NULL, D_8005BB38);

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);

	if (((arg0 == D_80052B34) || (arg0 == D_80158E74)) && (currentLevel == 3) && (arg0->unk1A == 0x11)) {
		if (arg0 == D_80052B34) {
			D_80052B48.unk0 = D_8015930A;
		} else {
			D_80052B48.unk0 = D_80159232;
		}

		D_80052B48.unk2 = 0;
		D_80052B48.unk4 = 0;

		func_800039D0_45D0(NULL, &D_80052B48, NULL, D_8005BB38);

		gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	}
}

void func_80100114_10F0C4(VehicleInstance *arg0) {
	D_80052B40.unk0 = (s16)(s32)arg0->unk4C;
	D_80052B40.unk2 = (s16)(s32)arg0->unk50;
	D_80052B40.unk4 = (s16)(s32)arg0->unk54;
	D_80052B48.unk0 = (s16)(0x4000 - arg0->unk6);
	D_80052B48.unk2 = (s16)-arg0->unk8;
	D_80052B48.unk4 = (s16)arg0->unkA;
	func_800039D0_45D0(&D_80052B40, &D_80052B48, 0, (s32)&D_801592C0);
}

void func_801001B4_10F164(void) {
	s32 x;
	s32 y;
	s32 z;
	int i;

	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(&D_80031160), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	i = 32;
	while (i--) {
		x = D_80159328[i];
		y = D_80159368[i];
		z = D_801593A8[i];

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

			gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 5), 5, 0);
			gDPPipeSync(D_8005BB2C++);
			gSP2Triangles(D_8005BB2C++, 0, 1, 2, 0, 0, 3, 4, 0);
			gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
		}

	}

	gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
	gDPPipeSync(D_8005BB2C++);

	i = 32;
	while (i--) {
		D_80159328[i] = 0;
		D_80159368[i] = 0;
		D_801593A8[i] = 0;
	}

	D_801593E8 = 0;
}

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

// DisplayVehicles
void func_8010065C_10F60C(s32 arg0) {
	s32 index;
	s32 i;
	VehicleType *type;
	s32 count;
	s32 matrixCount;
	s32 listIndex;
	void (*updateMtx)(s32);
	VehicleInstance *vehicle;
	Unk8013FDA8Entry *shadowPart;
	u8 *model;

	D_801592C0 = D_80031120_31D20;

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
	if (D_80052B34->unk1A == 0) {
		D_80159264 = 1;
	} else {
		D_80159264 = 0;
	}

	if (arg0 == 0) {
		i = 8;
		while (i--) {
			D_80158B90[i].unk6 = -0x8000;
		}
		D_801593EA = 0;
		guLookAtReflect(D_8005BB38, &D_801592A0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 50.0f, 0.0f, 1.0f,
			0.0f);
	}

	if ((currentLevel == 2) && (arg0 == 0)) {
		vehicle = func_80109960_118910();

		func_8012D700_13C6B0(2, 0x7FFF, vehicle->unk0 + 0xB, vehicle->unk2 + 0x39, vehicle->unk4, 0, 0, 0, 0x5D,
			D_8013FD74_14ED24, 0x19, &func_80100638_10F5E8, &func_8012E1F8_13D1A8);
		func_8012D700_13C6B0(7, 0x7FFE, vehicle->unk0 + 0x67, vehicle->unk2 + 0x69, vehicle->unk4, 0, 0, 0, 0x15,
			0x89, 0x3F, &func_801005CC_10F57C, NULL);
		func_8012D700_13C6B0(7, 0x7FFD, vehicle->unk0 - 0x4F, vehicle->unk2 + 0x69, vehicle->unk4, 0, 0, 0, 0x15,
			0x89, 0x3F, &func_801005CC_10F57C, NULL);
		func_8012D700_13C6B0(7, 0x7FFC, vehicle->unk0 + 0x47, vehicle->unk2 + 0x69, vehicle->unk4 + 0x95, 0, 0, 0,
			D_8013FD70_14ED20, 0x14, 0x40, &func_801005CC_10F57C, NULL);
		func_8012D700_13C6B0(7, 0x7FFB, vehicle->unk0 - 0x32, vehicle->unk2 + 0x69, vehicle->unk4 + 0x95, 0, 0, 0,
			D_8013FD70_14ED20, 0x14, 0x40, &func_801005CC_10F57C, NULL);
		func_8012D700_13C6B0(7, 0x7FFA, vehicle->unk0 + 0x47, vehicle->unk2 + 0x69, vehicle->unk4 - 0x98, 0, 0, 0,
			D_8013FD70_14ED20, 0x14, 0x40, &func_801005CC_10F57C, NULL);
		func_8012D700_13C6B0(7, 0x7FF9, vehicle->unk0 - 0x32, vehicle->unk2 + 0x69, vehicle->unk4 - 0x98, 0, 0, 0,
			D_8013FD70_14ED20, 0x14, 0x40, &func_801005CC_10F57C, NULL);
	}

	if (arg0 == 0) {
		D_80158FE0 = 0;
	}

	index = D_80158FD8;
	if (index--) {
		do {
			vehicle = &vehicleInstances[D_80158E80[index]];
			type = &vehicleTypes[vehicle->unk1A];

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
				D_8005BB34->v.flag = 0;
				D_8005BB34->v.tc[0] = 0;
				D_8005BB34->v.tc[1] = 0;
				D_8005BB34->v.cn[0] = 0x8E;
				D_8005BB34->v.cn[1] = 0x63;
				D_8005BB34->v.cn[2] = 0x3C;
				D_8005BB34->v.cn[3] = 0xFF;

				D_8005BB34[1].v.ob[0] = vehicle->unk0;
				D_8005BB34[1].v.ob[1] = vehicle->unk2;
				D_8005BB34[1].v.ob[2] = vehicle->unk4;
				D_8005BB34[1].v.flag = 0;
				D_8005BB34[1].v.tc[0] = 0;
				D_8005BB34[1].v.tc[1] = 0;
				D_8005BB34[1].v.cn[0] = 0x8E;
				D_8005BB34[1].v.cn[1] = 0x63;
				D_8005BB34[1].v.cn[2] = 0x3C;
				D_8005BB34[1].v.cn[3] = 0xFF;

				gDPPipeSync(D_8005BB30++);
				gSPVertex(D_8005BB30++, D_8005BB34, 2, 0);
				gSPLine3D(D_8005BB30++, 0, 1, 0);
				gDPPipeSync(D_8005BB30++);

				D_8005BB34 += 2;
				D_801593EA++;
			}

			if ((vehicle->unk0 < (D_801493B0 - 0x200)) || ((D_801493AC + 0x200) < vehicle->unk0)) {
				continue;
			}
			if ((vehicle->unk4 < (D_801493B8 - 0x200)) || ((D_801493B4 + 0x200) < vehicle->unk4)) {
				continue;
			}

			D_80158F00[D_80158FE0] = D_80158E80[index];
			D_80158FE0++;
			/* Preserve IDO's boundary between the list update and camera setup. */
			if (arg0) {}

			if ((func_800B93AC_C835C(vehicle->unk0, vehicle->unk4, (u16)vehicleTypes[vehicle->unk1A].unkC, (s16)D_80052B2C->unk0,
				D_80052B2C->unk8, 0x4000 - D_80047950) == 0)) {
				continue;
			}
			if (!(vehicle->unk20 & 0x8000)) {
				continue;
			}
			if ((D_801493E0 == 0) && (vehicle == D_80052B34)) {
				continue;
			}

			gSPLookAt(D_8005BB2C++, &D_801592A0);
			gSPLightColor(D_8005BB2C++, LIGHT_1, 0xFFFFFFFF);
			gSPLightColor(D_8005BB2C++, LIGHT_2, 0x808080FF);

			if ((vehicle->unk20 & 0x2000) && !((index + D_80052A8C) & 3)) {
				func_800710D4_80084(0xFF, 0xFF, 0xFF);
			}

			if ((currentLevel == 2) && (vehicle->unk1A == 1) && (vehicle == D_80052B34)) {
				gSPClearGeometryMode(D_8005BB2C++, G_FOG);
				gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
			}

			if (vehicle->unk1A == 0) {
				gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
				func_800FB3E8_10A398(D_80052B34, D_80159238);
				func_800FB40C_10A3BC(D_80052B34, D_8015923C);
				func_800EF14C_FE0FC(D_80052B34);
				func_800FB3E8_10A398(D_80052B34, -D_80159238);
				func_800FB40C_10A3BC(D_80052B34, -D_8015923C);
				gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
			} else {
				func_800FFD28_10ECD8(vehicle);

				if (((currentLevel == 4) && ((vehicle->unk1A == 6) || (vehicle->unk1A == 0xD))) ||
					(vehicle->unk1A == 0x13)) {
					func_80100114_10F0C4(vehicle);
				}

				gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);
				if (type->modelDL != 0) {
					gSPDisplayList(D_8005BB2C++, type->modelDL);
				}

				if ((type->unk4C & 0x01000000) && (vehicle == D_80052B34)) {
					D_80052B40.unk0 = type->unk5E * 2;
					D_80052B40.unk2 = type->unk5F * 2;
					D_80052B40.unk4 = type->unk60 * 2;
					D_80052B50.unk0 = 0x37;
					D_80052B50.unk2 = 0x37;
					D_80052B50.unk4 = 0x37;
					func_800039D0_45D0(&D_80052B40, 0, &D_80052B50, D_8005BB38);

					gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
					D_8005BB38++;
					gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
					gSPDisplayList(D_8005BB2C++, D_50445A0);
					gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
					gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
				}

				matrixCount = 0;
				count = type->unk54;
				listIndex = type->detailProp;
				if (count--) {
					shadowPart = &D_8013FDA8_14ED58[listIndex];
					do {
						model = (u8 *)shadowPart->displayList;

						if (shadowPart->flags & 0x40) {
							i = 3;
							while (i--) {
								matrixCount--;
								gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
							}
						}
						if (shadowPart->flags & 0x80) {
							i = 4;
							while (i--) {
								matrixCount--;
								gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
							}
						}
						if (shadowPart->flags & 0x100) {
							i = 5;
							while (i--) {
								matrixCount--;
								gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
							}
						}

						if ((currentLevel == 4) && (vehicle->unk1A == 0xD) && (vehicle->unk20 & VEHICLE_FLAG_SCUD_LAUNCHED)) {
							count--;
						}

						if ((vehicle == D_80052B34) || (vehicle == D_80158E74) ||
							((currentLevel == 2) && (vehicle->unk1A == 5))) {
							updateMtx = (void (*)(s32))shadowPart->transform;
							if ((vehicle == D_80052B34) && (updateMtx == func_800FF5A8_10E558)) {
								if (D_8015930C >= 0x2619) {
									if (model == D_5032130) {
										model = D_5031990;
									}
									if (model == D_5032038) {
										model = D_50318A0;
									}
									if (model == D_5031F30) {
										model = D_50317A0;
									}
									if (model == D_5031DB0) {
										model = D_5031650;
									}
									if (model == D_5031BC0) {
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
							} else if ((vehicle == D_80158E74) &&
								(updateMtx == func_800FF5A8_10E558)) {
								if (D_80159234 >= 0x2619) {
									if (model == D_5032130) {
										model = D_5031990;
									}
									if (model == D_5032038) {
										model = D_50318A0;
									}
									if (model == D_5031F30) {
										model = D_50317A0;
									}
									if (model == D_5031DB0) {
										model = D_5031650;
									}
									if (model == D_5031BC0) {
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
							gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
							D_8005BB38++;
							matrixCount++;
						} else {
							gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
							D_8005BB38++;
						}

						if ((((u8 *)shadowPart->displayList != D_50312E8) || (vehicle == D_80158E78) ||
							(((u8 *)shadowPart->displayList == D_50312E8) &&
							(((listIndex == type->unk63) &&
							((D_80050AD4 == 0) || (vehicle == D_8013FD78_14ED28))) ||
							((listIndex == type->unk64) &&
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
										gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH);
										D_80052B50.unk0 = -0x100;
										D_80052B50.unk2 = 0x100;
										D_80052B50.unk4 = 0x100;
										func_800039D0_45D0(NULL, 0, &D_80052B50, D_8005BB38);
										gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
										D_8005BB38++;
									} else {
										gSPClearGeometryMode(D_8005BB2C++, G_CULL_FRONT);
										gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);
									}

									if ((model == D_50445A0) || (model == D_9043D50)) {
										gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
									}
									gSPDisplayList(D_8005BB2C++, model);
									if ((model == D_50445A0) || (model == D_9043D50)) {
										gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
									}
									break;
							}

							if (shadowPart->flags & 0x10) {
								gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
								shadowPart->unk8.unk0 = -shadowPart->unk8.unk0;
								func_800FF258_10E208(listIndex);
								gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
								D_8005BB38++;
								gSPDisplayList(D_8005BB2C++, model);
								shadowPart->unk8.unk0 = -shadowPart->unk8.unk0;
							}
						}

						listIndex++;
						if (((shadowPart++)->flags & 2) && (matrixCount > 0)) {
							gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
							matrixCount--;
						}
					} while (count--);
				}

				while (matrixCount--) {
					gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
				}
			}

			if ((currentLevel == 2) && (vehicle->unk1A == 1) && (vehicle == D_80052B34)) {
				gSPSetGeometryMode(D_8005BB2C++, G_FOG);
				gDPSetRenderMode(D_8005BB2C++,
					AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL | G_RM_FOG_SHADE_A,
					AA_EN | Z_CMP | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL |
					GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM));
			}

			if (D_80159320 & 0x100000) {
				func_80070FB8_7FF68();
			}
			if (vehicle->unk20 & 0x2000) {
				func_80070FB8_7FF68();
				vehicle->unk20 &= ~0x2000;
			}
		} while (index--);
	}

	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
}

// DisplayDeadVehicles
void func_80101C14_110BC4(void) {
	s32 i;

	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);

	i = 0x80;
	while (i--) {
		VehicleInstance *vehicle = &vehicleInstances[D_80158E80[i]];
		VehicleType *type;

		if (currentLevel != 1) {
			continue;
		}

		if (vehicle->unk1A != 0x11) {
			continue;
		}
		if (vehicle->unk20 & 0x8000) {
			continue;
		}

		type = &vehicleTypes[vehicle->unk1A];
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
		if (func_800B93AC_C835C(vehicle->unk0, vehicle->unk4, (u16)vehicleTypes[vehicle->unk1A].unkC, (s16)D_80052B2C->unk0, (s32)D_80052B2C->unk8, 0x4000 - D_80047950) == 0) {
			continue;
		}
		if (vehicle->unk1E >= 0x81) {
			continue;
		}

		/* Preserve IDO's saved-register allocation for the drawing state. */
		if (type->unkC == D_80052B50.unk0 + (D_8005BB38 != 0)) {}
		func_800FFD28_10ECD8(vehicle);

		D_80052B50.unk0 = 0x100 - (vehicle->unk1E << 1);
		D_80052B50.unk2 = 0x100 - (vehicle->unk1E << 1);
		D_80052B50.unk4 = 0x100;
		/* Keep the scale constant live across the same drawing blocks. */
		if (vehicle->unk1E == 0x100) {}
		func_800039D0_45D0(0, 0, &D_80052B50, D_8005BB38);

		gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

		D_8005BB38++;
		gSPDisplayList(D_8005BB2C++, type->modelDL);

		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

		gDPPipeSync(D_8005BB2C++);
	}

	gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
}

void func_80101EF4_110EA4(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6) {
	Unk8013FDA8Entry *entry;
	s16 scale;
	s32 flags;
	Mtx *sp40;
	s32 count;
	s32 i;
	s32 loops;
	VehicleType *type;

	type = &vehicleTypes[arg0];
	i = type->detailProp;
	sp40 = D_8005BB38;
	D_8005BB38 = sp40 + 1;

	scale = 256.0 / ((f32)type->unkC * 0.125);
	loops = type->unk54;
	count = 0;

	D_80052B40.unk0 = arg1 >> 2;
	D_80052B40.unk2 = arg2 >> 2;
	D_80052B40.unk4 = arg3 >> 2;

	D_80052B48.unk0 = arg4;
	D_80052B48.unk2 = arg6;
	D_80052B48.unk4 = arg5;

	D_80052B50.unk0 = scale;
	D_80052B50.unk2 = scale;
	D_80052B50.unk4 = scale;
	func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, sp40);

	{
		gSPMatrix(D_8005BB2C++, K0_TO_PHYS(sp40), G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
		gSPDisplayList(D_8005BB2C++, type->modelDL);
	}

	flags = loops--;
	if (flags) {
		entry = &D_8013FDA8_14ED58[i];
		do {
			/* Preserve IDO's shared physical-address mask register. */
			if (0x1FFFFFFFU == count) {}

			func_800FE910_10D8C0(i);

			if (entry->flags & 1) {
				gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				count++;
			} else {
				gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			}

			if ((u8 *)entry->displayList != D_50312E8) {
				switch (i) {
				case 0xF:
					func_802D4CD0_18D7E0(0x18, 0);
					break;
				case 0xE:
					func_802D4CD0_18D7E0(0x19, 0);
					break;
				default:
					if (entry->flags & 0x20) {
						gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH);

						D_80052B50.unk0 = -0x100;
						D_80052B50.unk2 = 0x100;
						D_80052B50.unk4 = 0x100;
						func_800039D0_45D0(0, 0, &D_80052B50, D_8005BB38);

						gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
					} else {
						gSPClearGeometryMode(D_8005BB2C++, G_CULL_FRONT);
						gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);
					}

					if (((u8 *)entry->displayList != D_50445A0) && ((u8 *)entry->displayList != D_9043D50)) {
						gSPDisplayList(D_8005BB2C++, entry->displayList);
					}
				}
			}

			flags = entry->flags;
			i++;
			entry++;

			if (flags & 2) {
				count--;
				gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
			}

			flags = loops--;
		} while (flags);
	}

	flags = count--;
	if (flags) {
		do {
			gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
			flags = count--;
		} while (flags);
	}
}

void func_801022F4_1112A4(VehicleInstance *arg0, s16 arg1, s16 arg2) {
	s16 temp_s0;
	f32 temp_f14;
	f32 temp_f20;
	s32 diff;
	s32 pad1;
	
	if (arg0->unkC == -2) {
		temp_s0 = coss((u16)arg0->unkE);
		temp_f20 = (f32)((((f32)coss(arg1) / 32768.0) * arg2) + (((f32)temp_s0 / 32768.0) * arg0->unk58));
		
		temp_s0 = sins((u16)arg0->unkE);
		temp_f14 = (f32)((((f32)sins(arg1) / 32768.0) * arg2) + (((f32)temp_s0 / 32768.0) * arg0->unk58));
		
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
		
		arg0->unk20 |= VEHICLE_FLAG_UNK1;
	} else {
		temp_s0 = coss((u16)arg0->unkE);
		temp_f20 = (f32)((((f32)coss(arg1) / 32768.0) * arg2) + (((f32)temp_s0 / 32768.0) * arg0->unk12));
		
		temp_s0 = sins((u16)arg0->unkE);
		temp_f14 = (f32)((((f32)sins(arg1) / 32768.0) * arg2) + (((f32)temp_s0 / 32768.0) * arg0->unk12));
		
		arg0->unk12 = (s32)sqrtf((temp_f20 * temp_f20) + (temp_f14 * temp_f14));
		arg0->unkE = func_80003824_4424(temp_f20, temp_f14);
		
		diff = func_800F9C50_108C00(arg0->unkE, arg0->unk6);
		if ((diff >= 0x4001) || (diff < -0x4000)) {
			arg0->unkE += 0x8000;
			arg0->unk12 = -arg0->unk12;
		}
	}
}

void func_80102600_1115B0(VehicleInstance *arg0, s16 arg1, f32 arg2) {
	f32 temp_f20;
	f32 temp_f22;
	s16 diff;
	s16 temp;

	temp = coss((u16)arg0->unkE);
	temp_f22 = (f32)((((f32)coss((u16)arg1) / 32768.0) * (f64)arg2) + (((f32)temp / 32768.0) * (f64)arg0->unk58));
	temp = sins((u16)arg0->unkE);
	temp_f20 = (f32)((((f32)sins((u16)arg1) / 32768.0) * (f64)arg2) + (((f32)temp / 32768.0) * (f64)arg0->unk58));

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

	arg0->unk20 |= VEHICLE_FLAG_UNK1;
}

void func_801027E8_111798(VehicleInstance *arg0, f32 arg1, f32 arg2, f32 arg3)
{
	s32 temp_v0;
	f32 sp38;
	f32 sp34;
	f32 sp30;
	f32 sp2C;
	f32 sp28;

	sp38 = (((((f32)coss(arg0->unkE) / 32768.0) * ((f32)coss(arg0->unk10) / 32768.0)) * arg0->unk58) + arg1);
	sp34 = (((((f32)sins(arg0->unkE) / 32768.0) * ((f32)coss(arg0->unk10) / 32768.0)) * arg0->unk58) + arg3);
	sp30 = ((((f32)sins(arg0->unk10) / 32768.0) * (arg0->unk58)) + (arg2));

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
	arg0->unk20 |= VEHICLE_FLAG_UNK1;
}

void func_80102A0C_1119BC(VehicleInstance *arg0, s16 arg1, s16 arg2, f32 arg3)
{
	s32 temp_v0;
	f32 sp50;
  f32 sp4C;
  f32 sp48;
  f32 horizontalLength;
  f32 temp_f22;
  s16 inputYawCos;
  s16 vehicleYawCos;
  s16 vehiclePitchCos;
  if ((arg0->unk1C <= 0) || ((gameplayMode != 1) && (arg0 == D_80052B34)))
  {
	return;
  }
  
  vehiclePitchCos = coss(arg0->unk10);
  vehicleYawCos = coss(arg0->unkE);
  inputYawCos = coss(arg1);
  sp50 = (((((f32)coss(arg2) / 32768.0) * ((f32)inputYawCos / 32768.0)) * arg3) + ((((f32)vehicleYawCos / 32768.0) * ((f32)vehiclePitchCos / 32768.0)) * arg0->unk58));
  vehiclePitchCos = coss(arg0->unk10);
  vehicleYawCos = sins(arg0->unkE);
  inputYawCos = sins(arg1);
  sp4C = (((((f32)coss(arg2) / 32768.0) * ((f32)inputYawCos / 32768.0)) * arg3) + ((((f32)vehicleYawCos / 32768.0) * ((f32)vehiclePitchCos / 32768.0)) * arg0->unk58));
  inputYawCos = sins(arg0->unk10);
  sp48 = ((((f32)sins(arg2) / 32768.0) * arg3) + (((f32)inputYawCos / 32768.0) * arg0->unk58));

  horizontalLength = (sp50 * sp50) + (sp4C * sp4C);
  temp_f22 = sqrtf((sp48 * sp48) + horizontalLength);
  horizontalLength = sqrtf(horizontalLength);
  arg0->unkE = func_80003824_4424(sp50, sp4C);
  arg0->unk10 = func_80003824_4424(horizontalLength, sp48);
  func_800FB430_10A3E0(arg0, temp_f22);
  temp_v0 = func_800F9C50_108C00(arg0->unkE, arg0->unk6);
  if ((temp_v0 >= 0x4001) || (temp_v0 < (-0x4000)))
  {
	arg0->unkE += 0x8000;
	func_800FB430_10A3E0(arg0, -arg0->unk12);
  }
  if (arg0 == D_80052B34)
  {
	D_80157A2C = arg1;
  }
  arg0->unk20 |= VEHICLE_FLAG_UNK1;
}


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
		if (!(arg0->unk20 & VEHICLE_FLAG_AIRBORNE)) {
			arg0->unk20 |= VEHICLE_FLAG_AIRBORNE;
			arg0->unk10 = 0;
			func_800FB3E8_10A398(arg0, 1.0f);
		}
	}
	arg0->unk20 |= VEHICLE_FLAG_UNK1;
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
			if (!(arg0->unk20 & VEHICLE_FLAG_AIRBORNE))
			{
				arg0->unk20 |= VEHICLE_FLAG_AIRBORNE;
				arg0->unk10 = 0;
				func_800FB3E8_10A398(arg0, 1.0f);
			}
		}
		arg0->unk20 |= VEHICLE_FLAG_UNK1;
		if (arg0 == D_80052B34)
		{
			D_80157A2C = arg1;
		}
	}
}

#ifdef NON_MATCHING
void func_80102FA4_111F54(void) {
	UnkF9230Func80102FA4Point *points;
	UnkF9230Func80102FA4Point *cur;
	UnkF9230Func80102FA4Point *prev;
	f64 damping;
	f64 spring;
	s32 padding;
	f32 chain[3];
	s32 i;
	f32 groundY;
	f32 midX;
	f32 midY;
	f32 midZ;
	f32 newX;
	f32 newY;
	f32 newZ;
	f32 posX;
	f32 posY;
	f32 posZ;

	points = D_801593F0;
	damping = D_80144A90_153A40[0];

	D_801593F0[11].vel.x = (f32)(D_801593F0[11].vel.x * damping);
	D_801593F0[11].vel.y = (f32)((D_801593F0[11].vel.y * damping) - 4);
	D_801593F0[11].vel.z = (f32)(D_801593F0[11].vel.z * damping);
	D_801593F0[11].pos.x += D_801593F0[11].vel.x;
	D_801593F0[11].pos.y += D_801593F0[11].vel.y;
	D_801593F0[11].pos.z += D_801593F0[11].vel.z;

	spring = D_80144A98_153A48[0];
	chain[2] = D_801594E0[1].pos.x;
	chain[1] = D_801594E0[1].pos.y;
	chain[0] = D_801594E0[1].pos.z;

	cur = D_801594E0;
	do {
		posX = cur->pos.x;
		posY = cur->pos.y;
		posZ = cur->pos.z;
		prev = cur - 1;

		midX = (f32)(chain[2] - (((chain[2] - prev->pos.x)) * 0.5));
		midY = (f32)(chain[1] - (((chain[1] - prev->pos.y)) * 0.5));
		midZ = (f32)(chain[0] - (((chain[0] - prev->pos.z)) * 0.5));

		cur->vel.x = (f32)((cur->vel.x * damping) + (midX - posX));
		cur->vel.y = (f32)(((cur->vel.y * damping) + (midY - posY)) - 4);
		cur->vel.z = (f32)((cur->vel.z * damping) + (midZ - posZ));

		newX = (f32)(posX + (cur->vel.x * spring));
		newY = (f32)(posY + (cur->vel.y * spring));
		newZ = (f32)(posZ + (cur->vel.z * spring));

		cur->pos.x = newX;
		chain[2] = newX;
		cur->pos.y = newY;
		chain[1] = newY;
		cur->pos.z = newZ;
		chain[0] = newZ;
		if ((midX + midY + midZ + newX + newY + newZ + posX + posY + posZ) * 0.5 * D_80144A98_153A48[0] * damping < (posZ + newZ + midZ + posY + newY + midY + posX + newX + midX) * 0.5 * D_80144A98_153A48[0] * damping) {}
	} while ((u32)cur-- >= (u32)D_80159420);

	D_801593F0[0].vel.x = (f32)(D_801593F0[0].vel.x * damping);
	D_801593F0[0].vel.y = (f32)((D_801593F0[0].vel.y * damping) - 4);
	D_801593F0[0].vel.z = (f32)(D_801593F0[0].vel.z * damping);
	D_801593F0[0].pos.x += D_801593F0[0].vel.x;
	D_801593F0[0].pos.y += D_801593F0[0].vel.y;
	D_801593F0[0].pos.z += D_801593F0[0].vel.z;

	cur = D_801594E0;
	i = 10;
	do {
		groundY = func_800F9F64_108F14((s16)(s32)cur->pos.x, (s16)(s32)cur->pos.z);
		if (groundY < cur->pos.y) {
			return;
		}
		cur--;
	} while (i--);
	D_80159320 &= 0x7FFFFFFF;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80102FA4_111F54.s")
#endif

#ifdef NON_MATCHING
void func_80103308_1122B8(VehicleInstance *arg0, VehicleInstance *arg1)
{
  UnkF9230Func80102FA4Point *point;
  f32 new_var;
  f32 midX;
  f32 midY;
  f32 midZ;
  f32 loopX;
  f32 loopY;
  f32 loopZ;
  s32 unused;
  f32 chainX;
  f32 chainY;
  f32 chainZ;
  f32 posX;
  f32 posY;
  f32 posZ;
  f64 damping;
  f64 spring;
  f64 half;
  f32 lastX;
  f32 lastY;
  f32 lastZ;
  f32 oldX;
  f32 oldY;
  f32 oldZ;
  half = 0.5;
  damping = D_80144AA0_153A50[0];
  midX = (f32) (arg0->unk0 - ((((f32) arg0->unk0) - D_801593F0[10].pos.x) * 0.5));
  midY = (f32) (arg0->unk2 - ((((f32) arg0->unk2) - D_801593F0[10].pos.y) * 0.5));
  midZ = (f32) (arg0->unk4 - ((((f32) arg0->unk4) - D_801593F0[10].pos.z) * 0.5));
  unused = arg0->unk6;
  point = D_801594E0;
  D_801593F0[11].vel.x = (f32) ((midX - D_801593F0[11].pos.x) + (D_801593F0[11].vel.x * damping));
  D_801593F0[11].vel.y = (f32) (((midY - D_801593F0[11].pos.y) + (D_801593F0[11].vel.y * damping)) - 4.0);
  D_801593F0[11].vel.z = (f32) ((midZ - D_801593F0[11].pos.z) + (D_801593F0[11].vel.z * damping));
  D_801593F0[11].pos.x = (f32) arg0->unk0;
  D_801593F0[11].pos.y = (f32) (arg0->unk2 + 0x26);
  D_801593F0[11].pos.z = (f32) arg0->unk4;
 if (1) { }
  spring = D_80144AA8_153A58[0];
  chainZ = D_801594E0[1].pos.z;
  chainY = D_801594E0[1].pos.y;
  chainX = D_801594E0[1].pos.x;
  do
  {
    posX = point->pos.x;
    posY = point->pos.y;
    posZ = point->pos.z;
    loopX = (f32) (chainX - ((chainX - point[-1].pos.x) * 0.5));
    loopY = (f32) (chainY - ((chainY - point[-1].pos.y) * 0.5));
    loopZ = (f32) (chainZ - ((chainZ - point[-1].pos.z) * 0.5));
    new_var = point->vel.x;
    point->vel.x = (f32) ((new_var * damping) + (loopX - posX));
    point->vel.y = (f32) (((point->vel.y * damping) + (loopY - posY)) - 4.0);
    point->vel.z = (f32) ((point->vel.z * damping) + (loopZ - posZ));
    chainX = (f32) (posX + (point->vel.x * spring));
    chainY = (f32) (posY + (point->vel.y * spring));
    chainZ = (f32) (posZ + (point->vel.z * spring));
    point->pos.x = chainX;
    point->pos.y = chainY;
    point->pos.z = chainZ;
  }
  while ((point--) >= D_80159420);
  oldX = D_801593F0[1].pos.x;
  oldY = D_801593F0[1].pos.y;
  oldZ = D_801593F0[1].pos.z;
  lastZ = oldZ;
  lastY = oldY;
  lastX = oldX;
  lastX = (f32) (oldX - ((oldX - ((f32) arg1->unk0)) * 0.5));
  lastY = (f32) (oldY - ((oldY - ((f32) arg1->unk2)) * 0.5));
  lastZ = (f32) (oldZ - ((oldZ - ((f32) arg1->unk4)) * 0.5));
  D_801593F0[0].vel.x = (f32) ((lastX - D_801593F0[0].pos.x) + (D_801593F0[0].vel.x * damping));
  D_801593F0[0].vel.y = (f32) (((lastY - D_801593F0[0].pos.y) + (D_801593F0[0].vel.y * damping)) - 4.0);
  D_801593F0[0].vel.z = (f32) ((lastZ - D_801593F0[0].pos.z) + (D_801593F0[0].vel.z * damping));
  D_801593F0[0].pos.x = (f32) arg1->unk0;
  unused++;
  unused--;
  unused = arg1->unk2;
  D_801593F0[0].pos.y = (f32) (vehicleTypes[arg1->unk1A].unk38 + unused);
  D_801593F0[0].pos.z = (f32) arg1->unk4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/101840/func_80103308_1122B8.s")
#endif

void func_80103760_112710(VehicleInstance *arg0, VehicleInstance *arg1) {
	VehicleType *type0;
	VehicleType *type1;
	UnkF9230Func80102FA4Point *point;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s16 dz;
	s16 x0;
	s16 y0;
	s16 z0;
	f32 dist;
	f32 oneMinus;
	f32 ratio;
	f32 temp;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s32 pad6;
	s32 pad7;
	s16 dx;
	s16 dy;
	f32 invDist;
	s32 i;
	u32 mass0;

	type0 = &vehicleTypes[arg0->unk1A];
	type1 = func_800FAFB8_109F68(arg1);

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
		arg1->unk20 |= VEHICLE_FLAG_UNK1;
	} else {
		func_800FB3C4_10A374(arg1, D_80159188.x);
		func_800FB3E8_10A398(arg1, D_80159188.y);
		func_800FB40C_10A3BC(arg1, D_80159188.z);
	}

	dx = arg0->unk0 - arg1->unk0;
	dy = arg0->unk2 - arg1->unk2;
	dz = arg0->unk4 - arg1->unk4;
	if (dy) { }

	dist = (f32)(s32)sqrtf((f32)((dx * dx) + (dy * dy) + (dz * dz)));
	if (D_80158E60) { }
	invDist = D_80158E60 / dist;
	mass0 = type0->unk32;
	oneMinus = type0->unk32 + type1->unk32;
	ratio = (f32)mass0 / oneMinus;
	oneMinus = 1.0f - ratio;

	x0 = (s16)(s32)((f32)arg0->unk0 - ((f32)dx * oneMinus));
	y0 = (s16)(s32)((f32)arg0->unk2 - ((f32)dy * oneMinus));
	z0 = (s16)(s32)((f32)arg0->unk4 - ((f32)dz * oneMinus));

	if (D_80158E60 <= dist) {
		f64 damping;
		f64 impulseScale;
		if ((D_80158E60 * 2) <= dist) {
			func_800FDE00_10CDB0();
			return;
		}

		dx = arg0->unk0 - x0;
		dy = arg0->unk2 - y0;
		dz = arg0->unk4 - z0;

		dx = (s16)(s32)((f32)dx * invDist);
		dy = (s16)(s32)((f32)dy * invDist);
		dz = (s16)(s32)((f32)dz * invDist);

		impulseScale = D_80144AB0_153A60[0];
		func_80102D00_111CB0(
			arg0,
			(f32)(((x0 + dx) - arg0->unk0) * impulseScale),
			(f32)(((y0 + dy) - arg0->unk2) * impulseScale),
			(f32)(((z0 + dz) - arg0->unk4) * impulseScale));

		dx = arg1->unk0 - x0;
		dy = arg1->unk2 - y0;
		dz = arg1->unk4 - z0;

		dx = (s16)(s32)((f32)dx * invDist);
		dy = (s16)(s32)((f32)dy * invDist);
		dz = (s16)(s32)((f32)dz * invDist);

		dx = (x0 + dx) - arg1->unk0;
		dy = (y0 + dy) - arg1->unk2;
		dz = (z0 + dz) - arg1->unk4;

		if (arg1->unk1A == 0x11) {
			dy = 0;
			if ((arg1->unk6 + 0x2000) & 0x4000) {
				dx = 0;
			} else {
				dz = 0;
			}
		}

		func_80102D00_111CB0(arg1, (f32)dx, (f32)dy, (f32)dz);

		if (ratio) { }
		damping = D_80144AB8_153A68[0];
		arg1->unk30 = (f32)((f64)arg1->unk30 * damping);
		arg1->unk34 = (f32)((f64)arg1->unk34 * damping);
		arg1->unk38 = (f32)((f64)arg1->unk38 * damping);
	}

	i = 2;
	do {
		func_80103308_1122B8(arg0, arg1);
	} while (i--);

	point = &D_801593F0[11];
	i = 0xB;
	if (1) {
		do {
			if (point != (void *)&D_8013FD88_14ED38) { }
			temp = func_800F9F64_108F14((s16)(s32)point->pos.x, (s16)(s32)point->pos.z);
			temp += 15;
			if (point->pos.y < temp) {
				point->pos.y = temp;
			}
			point--;
		} while (i--);

	}
	if (arg1->unk2 >= arg0->unk2 + 0x78) {
		func_800FDE00_10CDB0();
	}
}


void func_80103D18_112CC8(VehicleInstance *arg0, VehicleInstance *arg1)
{
  func_80103760_112710(arg0, D_80158F8C);
  arg1->unk12 = 0;
  arg0->unk20 |= VEHICLE_FLAG_UNK1;
  if ((arg1->unkC == -2) && (arg1->unk20 & VEHICLE_FLAG_AIRBORNE))
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
void func_80103E54_112E04(VehicleInstance *arg0, OSContPad *arg1) {
	VehicleType *type;
	f32 typeSteer;
	s32 controlState;
	s16 volume;
	s32 direction;
	s32 absStick;
	s32 stickX;
	s32 buttons;
	f64 controlValue;
	f64 speed;
	s32 *directionState;
	s32 *directionTimer;
	f32 *acceleration;
	OSContPad *controller;

	acceleration = &D_80158E58;
	directionTimer = &D_80159254;
	directionState = &D_8015924C;
	typeSteer = vehicleTypes[arg0->unk1A].unk48;
	type = &vehicleTypes[arg0->unk1A];
	controller = arg1;

	if (!(arg0->unk20 & VEHICLE_FLAG_AIRBORNE) || (type->unk4C & 0x20000000)) {
		if ((D_80159320 & 0x40000) && (arg0->unk1A != 0x13)) {
			D_80158E5C = 0.0f;
		} else {
			stickX = controller->stick_x;
			if (-stickX < stickX) {
				absStick = stickX;
			} else {
				absStick = -stickX;
			}
			D_80158E5C = (f32)(((f64)(f32)(absStick * stickX) / 300.0) * (f64)typeSteer);
		}

		if (!(arg0->unk20 & VEHICLE_FLAG_AIRBORNE)) {
			D_80158E5C /= sqrtf((f32)(((f64)(arg0->unk58 >= 0.0f ? arg0->unk58 : -arg0->unk58) * 0.008333333) + 1.0));
		}

		(*acceleration) = 0.0f;
		func_80103DD0_112D80();
		controlState = controller->button & 0xC000;
		if ((controlState == 0xC000) && (!(vehicleTypes[arg0->unk1A].unk4C & 0x10000000) || (vehicleTypes[arg0->unk1A].unk4C & 0x400100))) {
			if (!(D_80159320 & 0x04000000)) {
				controlValue = (f64)arg0->unk58 * 2.0;

				if (controlValue >= 0.0) {
					volume = (s16)(u32)controlValue;
				} else {
					volume = (s16)(u32)-controlValue;
				}

				arg0->unk30 += ((f64)(f32)coss(arg0->unkE) / 32768.0) * (f64)arg0->unk58;
				arg0->unk38 += ((f64)(f32)sins(arg0->unkE) / 32768.0) * (f64)arg0->unk58;
				func_800FB430_10A3E0(arg0, 0.0f);
				arg0->unkE = arg0->unk6;
			}

			D_80159320 |= 0x04000000;
			D_80158C58[arg0 - vehicleInstances] = arg0->unk58;
			if ((arg0 == D_80052B34) && !(arg0->unk20 & VEHICLE_FLAG_AIRBORNE) && (D_80222A70 != arg0->unk2) && (type->unk66 != 0) && (func_800FB11C_10A0CC(arg0) > 5.0f)) {
				if (D_80159272 == 0) {
					D_80159272 = 1;
					func_80001144_1D44(((u8 *)&volume)[1], 0x14, 5);
				}
			} else {
				D_80159272 = 0;
			}

			controlValue = 0.05;
		} else {
			direction = *directionState;
			if ((direction == 0) && ((f64)arg0->unk58 < -0.05)) {
				direction = -1;
			}
			if ((direction == 0) && (0.05 < (f64)arg0->unk58)) {
				direction = 1;
			}

			controlValue = 0.05;
			if (controlState == 0) {
				(*directionTimer) = 0;
				direction = 0;
				D_8013FD88_14ED38 = 1;
			}

			D_80159320 &= ~0x04000000;
			buttons = controller->button;
			if (buttons & 0x8000) {
				if (D_8013FD88_14ED38 == 1) {
					/* Preserve IDO's latch-address priority without extra instructions. */
					if (arg0 != (void *)&D_8013FD88_14ED38) { }
					if (arg0 != (void *)&D_8013FD88_14ED38) { }
					if (arg0 != (void *)&D_8013FD88_14ED38) { }
					if (arg0 != (void *)&D_8013FD88_14ED38) { }
					if (arg0 != (void *)&D_8013FD88_14ED38) { }
					if (arg0 != (void *)&D_8013FD88_14ED38) { }
					if (arg0 != (void *)&D_8013FD88_14ED38) { }
					if (arg0 != (void *)&D_8013FD88_14ED38) { }
					if (arg0 != (void *)&D_8013FD88_14ED38) { }
					if (arg0 != (void *)&D_8013FD88_14ED38) { }
					*directionState = direction;
					/* Keep the save and call arguments in distinct allocator blocks. */
					if (arg0 != (void *)&D_8013FD88_14ED38) { }
					func_80001144_1D44(0x28U, 5, 3);
					controlValue = 0.05;
					D_8013FD88_14ED38 = 0;
					direction = *directionState;
				}

				speed = arg0->unk58;
				if ((speed < -0.05) || (direction >= 0) || (++(*directionTimer) > D_80047724) || (D_80222A70 == arg0->unk2)) {
					(*acceleration) = (f32)((f64)(*acceleration) + 1.0);
					buttons = controller->button;
				} else {
					arg0->unk58 = (f32)(speed * 0.5);
					buttons = controller->button;
				}
			}

			*directionState = direction;
			if (buttons & 0x4000) {
				speed = arg0->unk58;
				D_8015924C = direction;
				if ((controlValue < speed) || ((*directionState = direction) <= 0) || (--(*directionTimer) < -D_80047724) || (D_80222A70 == arg0->unk2)) {
					if (D_8013FD88_14ED38 == 1) {
						func_80001144_1D44(0x14U, 5, 3);
						controlValue = 0.05;
						D_8013FD88_14ED38 = 0;
					}

					(*acceleration) = (f32)((f64)(*acceleration) - 1.0);
					if ((arg0 == D_80052B34) && !(arg0->unk20 & VEHICLE_FLAG_AIRBORNE) && (D_80222A70 != arg0->unk2) && (type->unk66 != 0) && ((f64)arg0->unk58 > 10.0)) {
						if (D_80159272 == 0) {
							D_80159272 = 1;
						}
					} else {
						D_80159272 = 0;
					}

					if (arg0->unk20 & VEHICLE_FLAG_AIRBORNE) {
						if (arg0->unkA < 0xBB8) {
							if (controlValue < (f64)arg0->unk58) {
								arg0->unk58 = (f32)((f64)arg0->unk58 * 0.94);
							}
						}
						(*acceleration) = 0.0f;
					} else {
						if (controlValue < (f64)arg0->unk58) {
							arg0->unk58 = (f32)((f64)arg0->unk58 * 0.94);
						}
					}
				} else {
					arg0->unk58 = (f32)(speed * 0.5);
					D_80159272 = 0;
				}
			}
		}

		if (D_80159272 != 0) {
			func_801371B8_146168(arg0, 0x18B, arg0->unk0, arg0->unk2, arg0->unk4, -1.0f);
			controlValue = 0.05;
		}

		if ((arg0 == D_80052B34) && (D_80159272 != 0) && (!(currentControllerStates[0].button & 0x4000) || ((f64)arg0->unk58 <= controlValue)) && !(D_80159320 & 0x04000000)) {
			D_80159272 = 0;
		}

		if (arg0->unk3C <= 0) {
			controlState = !type->unk66;
			(*acceleration) = 0.0f;
			if (controlState) {
				D_80158E5C = 0.0f;
			}
			arg0->unk3C = 0;
		}

		D_80158E58 /= 16;
	}
}

// Helicopter (and plane?) controls.
void func_801047C8_113778(VehicleInstance *arg0, OSContPad *arg1) {
	VehicleType *type;
	WeaponSpecEntry *tableEntry;
	f32 maxSteer;
	s32 pad0;
	f32 sp2C;
	s16 sp2A;
	s32 pad1;
	s16 pad2;
	s16 trig;
	s32 typeFlags;
	s32 stickX;
	s32 absStickX;

	type = &vehicleTypes[arg0->unk1A];
	tableEntry = &D_80140768_14F718[type->unk55];
	maxSteer = vehicleTypes[arg0->unk1A].unk48;

	D_80158E5C = 0.0f;
	D_80158E58 = 0.0f;
	arg0->unk28 = 0;
	arg0->unk2A = 0;

	func_80103DD0_112D80();

	if (D_801591AC == 0 && arg0->unk3C != 0) {
		typeFlags = type->unk4C;
		if (!(typeFlags & 0x10000) || !(D_80159320 & 0x40000)) {
			if (arg0->unk1A == 0 || (typeFlags & 0x20000000)) {
				func_8011DE60_12CE10(1);
			}

			sp2A = arg0->unk2 - func_800F9FAC_108F5C(arg0->unk0, arg0->unk4);

			if (arg0->unk1A == 0 || (type->unk4C & 0x20000000)) {
				func_8011DE60_12CE10(0);
			}

			if (D_80159304 == 0 || currentLevel != 3 || arg0->unk1A != 0xD) {
				u32 buttons = currentControllerStates[0].button;
				if (buttons & 0x8000) {
					func_80001144_1D44(0x1E, 5, 3);
					arg0->unk34 += (f32)tableEntry->unk6;
					arg0->unk20 |= VEHICLE_FLAG_AIRBORNE;
					buttons = currentControllerStates[0].button;
				}

				if (buttons & 0x4000) {
					func_80001144_1D44(0x14, 5, 3);
					arg0->unk34 -= (f32)tableEntry->unk6;
				}
			}

			arg0->unk34 = (f32)((f64)arg0->unk34 * 0.9);

			if (sp2A >= 0x97 || (currentLevel == 3 && arg0->unk1A == 0xD)) {
				arg0->unk2A = (s16)(arg1->stick_y * 80);
				arg0->unk28 = (s16)(-arg1->stick_x * 40);
			}

			stickX = arg1->stick_x;
			if (-stickX < stickX) {
				absStickX = stickX;
			} else {
				absStickX = -stickX;
			}


			D_80158E5C = (f32)(((f64)(f32)(absStickX * stickX) / 300.0) * (f64)maxSteer);

			if (currentControllerStates[1].stick_x >= 0) {
				absStickX = currentControllerStates[1].stick_x;
			} else {
				absStickX = -currentControllerStates[1].stick_x;
			}

			if (absStickX >= 0xB) {
				arg0->unk28 += -currentControllerStates[1].stick_x * 59;
			}

			typeFlags = arg0->unk20 & VEHICLE_FLAG_AIRBORNE;
			if (typeFlags == 0 && arg0->unk34 < 0.0f) {
				typeFlags = ((volatile VehicleInstance *)arg0)->unk20 & VEHICLE_FLAG_AIRBORNE;
				arg0->unk34 = 0.0f;
			}

			if (typeFlags != 0 && !(currentControllerStates[0].button & 0x10)) {
				trig = sins((u16)arg0->unkA);
				sp2C = (f32)((((f64)(f32)trig / 32768.0) * (f64)((f32)(u32)type->unk3E * D_801591F0)) * 0.0833333333);

				trig = coss((u16)arg0->unk6);
				func_801027E8_111798(arg0,
					(f32)(((f64)(f32)trig / 32768.0) * (f64)sp2C),
					0.0f,
					(f32)(((f64)(f32)sins((u16)arg0->unk6) / 32768.0) * (f64)sp2C));

				trig = sins((u16)arg0->unk8);
				sp2C = (f32)((((f64)(f32)trig / 32768.0) * (f64)((f32)(u32)type->unk3E * D_801591F0)) * 0.0833333333);

				trig = sins((u16)arg0->unk6);
				func_801027E8_111798(arg0,
					(f32)(((f64)(f32)trig / 32768.0) * (f64)sp2C),
					0.0f,
					(f32)((-((f64)(f32)coss((u16)arg0->unk6) / 32768.0)) * (f64)sp2C));
			}

			if (currentControllerStates[0].button & 0x4000) {
				f64 damping;
				damping = 0.97;
				func_800FB430_10A3E0(D_80052B34, (f32)((f64)D_80052B34->unk58 * damping));
				damping = 0.97;
				D_80052B34->unk30 = (f32)((f64)D_80052B34->unk30 * damping);
				D_80052B34->unk34 = (f32)((f64)D_80052B34->unk34 * damping);
				D_80052B34->unk38 = (f32)((f64)D_80052B34->unk38 * damping);
			}

			if (arg0->unk3C <= 0) {
				if (vehicleTypes[D_80052B34->unk1A].unk66 == 0) {
					D_80158E5C = 0.0f;
				}

				D_80158E58 = 0.0f;
				arg0->unk3C = 0;
			}
		}
	}
}

void func_80104E00_113DB0(VehicleInstance *arg0, OSContPad *arg1) {
	VehicleType *type;
	s32 pad0;
	f32 maxSteer;
	s32 pad1;
	f32 sp2C;
	s32 pad2;
	s32 stickX;
	s16 pad3;
	s16 trig;
	s32 absStickX;

	maxSteer = (f32)vehicleTypes[arg0->unk1A].unk48;
	type = &vehicleTypes[arg0->unk1A];

	func_800F9F00_108EB0(arg0->unk0, arg0->unk4);

	D_80158E5C = 0.0f;
	D_80158E58 = 0.0f;
	arg0->unk28 = 0;
	arg0->unk2A = 0;

	func_80103DD0_112D80();

	if (D_801591AC == 0 && arg0->unk3C != 0 && (!(type->unk4C & 0x10000) || !(D_80159320 & 0x40000))) {
		if (currentControllerStates[0].button & 0x8000) {
			arg0->unk34 += 20.0f;
		}

		if (currentControllerStates[0].button & 0x4000) {
			arg0->unk34 -= 20.0f;
		}

		if (arg1->button & 0x10) {
			arg0->unk28 = (s16)(-arg1->stick_x * 80);
		} else {
			arg0->unk34 = (f32)((f64)arg0->unk34 - ((f64)arg0->unk34 * 0.1));
			arg0->unk2A = (s16)(arg1->stick_y * 80);
			arg0->unk28 = (s16)(-arg1->stick_x * 40);

			stickX = arg1->stick_x;
			if (-stickX < stickX) {
				absStickX = stickX;
			} else {
				absStickX = -stickX;
			}

			D_80158E5C = (f32)(((f64)(f32)(absStickX * stickX) / 300.0) * (f64)maxSteer);
		}

		if (!(arg0->unk20 & VEHICLE_FLAG_AIRBORNE) && arg0->unk34 < 0.0f) {
			arg0->unk34 = 0.0f;
		}

		trig = sins((u16)arg0->unkA);
		sp2C = (f32)((((f64)(f32)trig / 32768.0) * (f64)((f32)(u32)type->unk3E * D_801591F0)) / 12.0);

		trig = coss((u16)arg0->unk6);
		func_80102D00_111CB0(arg0, (f32)(((f64)(f32)trig / 32768.0) * (f64)sp2C), 0.0f,
							(f32)(((f64)(f32)sins((u16)arg0->unk6) / 32768.0) * (f64)sp2C));

		trig = sins((u16)arg0->unk8);
		sp2C = (f32)((((f64)(f32)trig / 32768.0) * (f64)((f32)(u32)type->unk3E * D_801591F0)) / 12.0);

		trig = sins((u16)arg0->unk6);
		func_80102D00_111CB0(arg0, (f32)(((f64)(f32)trig / 32768.0) * (f64)sp2C), 0.0f,
							(f32)((-((f64)(f32)coss((u16)arg0->unk6) / 32768.0)) * (f64)sp2C));

		if (currentControllerStates[0].button & 0x4000) {
			f64 damping;
			damping = 0.97;
			func_800FB430_10A3E0(D_80052B34, (f32)((f64)D_80052B34->unk58 * damping));
			damping = 0.97;
			D_80052B34->unk30 = (f32)((f64)D_80052B34->unk30 * damping);
			D_80052B34->unk34 = (f32)((f64)D_80052B34->unk34 * damping);
			D_80052B34->unk38 = (f32)((f64)D_80052B34->unk38 * damping);
		}

		if (arg0->unk3C <= 0) {
			if (vehicleTypes[D_80052B34->unk1A].unk66 == 0) {
				D_80158E5C = 0.0f;
			}

			D_80158E58 = 0.0f;
			arg0->unk3C = 0;
		}
	}
}

/* Handle player vehicle controls, weapons, steering, and gear changes. */
void func_801052E8_114298(Unk80052B2C *arg0, OSContPad *arg1) {
	f32 threshold;
	VehicleType *type;
	VehicleInstance *vehicle;
	s32 align;
	s16 angle;
	s32 weaponIndex;
	s16 recoil;
	s16 maxSpeed;
	s16 gear;
	s16 delay;
	f32 speed;
	f32 *gears;
	f32 steering;
	s32 worldX;
	s32 worldY;
	s32 worldZ;

	vehicle = arg0->unk38;
	type = &vehicleTypes[vehicle->unk1A];
	if (D_801591AC != 0 || D_8015930E != 0 || D_801493E2 == 0) {
		return;
	}
	D_80158E58 = 0.0f;
	D_80158E5C = 0.0f;
	if ((type->unk4C & 0x100000) && !(vehicle->unk20 & VEHICLE_FLAG_AIRBORNE) &&
		((&arg1)[0]->button & 0x8000) && !(D_80159320 & 0x40000)) {
		vehicle->unk20 |= VEHICLE_FLAG_AIRBORNE;
		vehicle->unk2E++;
		func_800FB3E8_10A398(vehicle, 1.0f);
	}
	if (type->weapon1 != 0x41 &&
		(((vehicle->unk20 & VEHICLE_FLAG_AIRBORNE) && (type->unk4C & 0x20000000)) ||
		 (D_80222A70 >= vehicle->unk2 && (type->unk4C & 0x10000000)) ||
		 (D_80222A70 < vehicle->unk2 && !(vehicle->unk20 & VEHICLE_FLAG_AIRBORNE) && (type->unk4C & 0x20)) ||
		 (D_80222A70 - vehicle->unk2 < (type->unk38 >> 1) && (type->unk4C & 0x20)))) {
		if (vehicle->unk1A != 0) {
			if (type->unk4C & 0x100000) {
				if (vehicle->unk2 < D_80222A70) {
					func_80104E00_113DB0(arg0->unk38, arg1);
				} else {
					func_801047C8_113778(arg0->unk38, arg1);
				}
			} else {
				func_80103E54_112E04(arg0->unk38, arg1);
			}
		} else if (!(D_80159320 & 0x200000)) {
			func_800EC484_FB434(arg0->unk38, arg1);
		}
		if (vehicle->unk1A == 0 && D_80222A70 >= vehicle->unk2 && !(D_80157A28 & 8)) {
			vehicle->unk20 |= VEHICLE_FLAG_AIRBORNE;
			if (currentControllerStates[0].button & 0x4000) vehicle->unk2E += 10;
			if (currentControllerStates[0].button & 0x8000) vehicle->unk2E -= 10;
		}
		if ((type->unk4C & 0x20000000) && D_8015926C < vehicle->unk2E) {
			vehicle->unk2E = D_8015926C;
		}
	}
	if ((type->unk4C & 0x08000000) && vehicle->unk1E == 0) {
		if (D_80050AD4 == 0) {
			type->gun1X = -type->gun1X;
			weaponIndex = type->unk63;
			if (weaponIndex != 0) {
				D_8013FDA8_14ED58[weaponIndex].unk8.unk0 = -D_8013FDA8_14ED58[weaponIndex].unk8.unk0;
			}
		} else {
			type->gun2X = -type->gun2X;
			weaponIndex = type->unk64;
			if (weaponIndex != 0) {
				D_8013FDA8_14ED58[weaponIndex].unk8.unk0 = -D_8013FDA8_14ED58[weaponIndex].unk8.unk0;
			}
		}
	}
	if (currentLevel == 1 && vehicle->unk1A == 8 && (D_80050AD4 == 0 || D_80050AD4 == 1)) {
		if (D_80052B2C->unk36 < 0) D_80050AD4 = 0;
		else D_80050AD4 = 1;
	}
	if (D_80050AD4 == 0 && type->weapon1 == 0x41) D_80050AD4 = 1;
	if (D_80050AD4 == 1 && type->weapon2 == 0) D_80050AD4 = 0;
	do {
		switch (currentLevel) {
		case 1:
			if (vehicle->unk1A == 5 && (currentControllerStates[0].button & 0x2000)) {
				angle = vehicle->unk6 - D_80052B2C->unk36;
				func_80128504_1374B4((AlienInstance *)vehicle, 0, &worldX, &worldY, &worldZ);
				if (D_801409F4_14F9A4[0] == 0) {
					D_8015927C = func_800CE040_DCFF0(worldX, worldY, worldZ,
						((f32)coss(angle) / 32768.0) * 60.0, 30, ((f32)sins(angle) / 32768.0) * 60.0);
					D_801409F4_14F9A4[0] = 1;
				} else {
					if (func_800CE100_DD0B0(D_8015927C, worldX, worldY, worldZ,
						((f32)coss(angle) / 32768.0) * 60.0, 30, ((f32)sins(angle) / 32768.0) * 60.0) == -13) D_801409F4_14F9A4[0] = 0;
				}
				continue;
			} else D_801409F4_14F9A4[0] = 0;
			break;
		case 2: break;
		case 3:
			if (vehicle->unk1A == 3) continue;
			break;
		case 4:
			if (vehicle->unk1A == 13 && D_80050AD4 == 0 && func_8000726C_7E6C(5)) {
				func_8000345C_405C(0x2000);
				if (arg1->button & 0x2000) {
					if (!(vehicle->unk20 & 0x10)) {
						D_801591AC = 2;
						D_80159316 = D_80149440;
					} else func_8001A650_1B250(10);
				}
				continue;
			} else if (vehicle->unk1A == 14 && (currentControllerStates[0].button & 0x2000) && vehicle->unk3C != 0) {
				vehicle->unk3C = 0;
				D_80258062 = 0;
				continue;
			} else if (vehicle->unk1A == 5 && isButtonNewlyPressed(0, 0x2000) && vehicle->unk1E == 0) {
				if (D_80158F8C != 0) { func_800FDE00_10CDB0(); continue; }
				if (func_800FC1CC_10B17C()) vehicle->unk1E = 20;
				continue;
			}
			break;
		}
		{
			if (!(D_80159320 & 0x10000)) {
				if ((type->unk4C & 0x800000) && (currentControllerStates[0].button & 0x10)) {
					D_80159320 |= 0x80000;
					if (vehicle->unk1E == 0 && (currentControllerStates[0].button & 0x2000)) {
						D_80159236 = type->weapon2;
						recoil = D_80145BE0_154B90[D_80159236].unk6 / ((type->unk32 >> 7) + 1);
						func_80102DDC_111D8C(vehicle, (s16)(vehicle->unk6 - D_80052B2C->unk36 - 0x8000), 0, recoil);
						vehicle->unk26 += -((f32)coss(D_80052B2C->unk36) / 32768.0) * (recoil << 4);
						vehicle->unk24 += ((f32)sins(-D_80052B2C->unk36) / 32768.0) * (recoil << 4);
						func_8012B150_13A100((s32)vehicle, 1, (InputStruct_8012B150 *)D_80158FF4, D_80158FEC != NULL ? (s32)D_80158FEC : (s32)D_80158FF4);
					}
				} else D_80159320 &= ~0x80000;
			} else D_80159320 &= ~0x80000;
			if (!(D_80159320 & 0x10000) && (arg1->button & 0x2000) && D_80050AD4 < 2 && D_80031414 == 0 && vehicle->unk1E == 0 && vehicle->unk1A != 0) {
				if (D_80050AD4 == 0) D_80159236 = type->weapon1;
				else D_80159236 = type->weapon2;
				recoil = D_80145BE0_154B90[D_80159236].unk6 / ((type->unk32 >> 7) + 1);
				func_80102DDC_111D8C(vehicle, (s16)(vehicle->unk6 - D_80052B2C->unk36 - 0x8000), 0, recoil);
				vehicle->unk26 += -((f32)coss(D_80052B2C->unk36) / 32768.0) * (recoil << 4);
				vehicle->unk24 += ((f32)sins(-D_80052B2C->unk36) / 32768.0) * (recoil << 4);
				func_8012B150_13A100((s32)vehicle, (D_80050AD4 == 0 ? 0 : 1), (InputStruct_8012B150 *)D_80158FF4, D_80158FEC != NULL ? (s32)D_80158FEC : (s32)D_80158FF4);
			}
		}
		break;
	} while (0);
	if (vehicle->unk20 & 0x400) return;
	if (vehicle == D_80052B34 && (D_80159320 & 0x4000000)) {
		vehicle->unk22 = D_80158E5C * 1.5;
		speed = func_800FB11C_10A0CC(vehicle);
		if (speed < 16.0f) vehicle->unk22 *= speed * 0.0625;
	} else if (type->unk66 != 0) {
		speed = D_80158E5C * 0.1666666667;
		vehicle->unk22 = func_80003824_4424(type->unk66 + ((f64)vehicle->unk58 + (f64)vehicle->unk58), speed);
		if (vehicle->unk58 >= 0.0f) speed = vehicle->unk58;
		else speed = -vehicle->unk58;
		if (speed < 16.0f) vehicle->unk22 *= speed * 0.0625;
		if (vehicle->unk58 < 0.0f) vehicle->unk22 = -vehicle->unk22;
	} else if (vehicle->unk1A != 0) vehicle->unk22 = D_80158E5C;
	if (vehicle->unk1A != 0 && D_8004DCBC == 0 && currentControllerStates[0].stick_x < 30 && currentControllerStates[0].stick_x >= -29 && !(vehicle->unk20 & 2) && !(type->unk4C & 0x400000) && (vehicle != D_80052B34 || !(D_80159320 & 0x4000000))) {
		if (D_80052A94[vehicle->unk4 >> 8].objects[vehicle->unk0 >> 8].terrainObject && !D_80052A94[vehicle->unk4 >> 8].objects[vehicle->unk0 >> 8].flag10) {
			switch (D_80052A94[vehicle->unk4 >> 8].objects[vehicle->unk0 >> 8].terrainType) {
			case 14:
				if (vehicle->unk12 >= 17) {
					align = (s16)((vehicle->unk6 & 0x3FFF) - 0x2000);
					if (align & 7) align = (s16)(align | 8);
					vehicle->unk22 -= align >> 4;
					vehicle->unkE += func_800F9C50_108C00(vehicle->unk6, vehicle->unkE) >> 4;
				}
				break;
			case 10: case 11: case 15:
				if (vehicle->unk12 >= 17) {
					align = (s16)(((vehicle->unk6 + 0x2000) & 0x3FFF) - 0x2000);
					if (align & 7) align = (s16)(align | 8);
					vehicle->unk22 -= align >> 4;
					vehicle->unkE += func_800F9C50_108C00(vehicle->unk6, vehicle->unkE) >> 4;
				}
				break;
			}
		}
	}
	steering = ((D_801591EC * D_80158E58 * ((f32)(u32)type->unk3E * D_801591F0)) * (f32)((u32)type->unk3E + 40.0)) / ((vehicle->unk12 >= 0 ? vehicle->unk12 : -vehicle->unk12) + 30.0);
	if (!(type->unk4C & 0x400000)) {
		if (D_80159320 & 0x4000000) func_80102DDC_111D8C(vehicle, vehicle->unk6, 0, steering);
		else func_800FB3A0_10A350(vehicle, steering);
	} else func_80102DDC_111D8C(vehicle, vehicle->unk6, 0, steering);
	maxSpeed = type->unk40;
	if (vehicle->unk12 < type->unk42) func_800FB430_10A3E0(vehicle, type->unk42);
	if (maxSpeed < vehicle->unk12) func_800FB430_10A3E0(vehicle, maxSpeed);
	delay = D_801409F0_Read;
	vehicle->unk20 |= 1;
	if (delay != 0) delay--;
	gears = D_801408B4_14F864[type->unk62];
	D_8004DCC4 = vehicle->unk58 * 16.0f;
	D_8004DCC8 = maxSpeed;
	D_801409F0_Begin = delay;
	switch (type->unk62) {
	case 0: case 1: case 2:
		gear = D_801409EC_Read;
		D_8004DCC0 = D_8004DCC4 / gears[gear];
		/* Separate address uses preserve IDO's engine register-cache order.
		 * The empty comparisons emit no instructions. */
		if (gears != &D_8004DCC4) { }
		if (gears != &D_8004DCC4) { }
		if (gears != &D_8004DCC4) { }
		if (gears != &D_8004DCC4) { }
		if (gears != &D_8004DCC0) { }
		if (gears != &D_8004DCC0) { }
		if (gears != &D_8004DCC0) { }
		if (gears != &D_8004DCC0) { }
		if (gears != &D_8004DCC0) { }
		if (gears != &D_8004DCC0) { }
		if (gears != &D_8004DCC0) { }
		if (gears != &D_8004DCC0) { }
		if (gears != &D_8004DCC0) { }
		if (gears != &D_8004DCC0) { }
		if (gears != &D_8004DCC0) { }
		if (gears != &D_8004DCC0) { }
		if (gears != &D_8004DCC0) { }
		if (gears != &D_8004DCC0) { }
		if (D_8004DCC0 < gears[9] && gear > 0 && delay == 0) {
			gear--;
			delay = 10;
		}
		threshold = gears[8];
		D_801409EC_14F99C = gear;
		D_801409F0_14F9A0 = delay;
		if (threshold < D_8004DCC0) {
			D_801409EC_Update = gear;
			D_801409F0_Update = delay;
			if (gear < 7) {
				D_801409EC_Shift = gear;
				D_801409F0_Shift = delay;
				if (delay == 0) {
					gear++;
					D_801409EC_Next = gear;
					/* Keep the reset in the delay update chain before IDO folds % 1. */
					D_801409F0_Next = delay = (delay % 1) + 10;
				}
			}
		}
		if (threshold < D_8004DCC0) D_8004DCC0 = threshold;
		break;
	case 3: gear = D_801409EC_Read;
		D_8004DCC0 = D_8004DCC4 / gears[gear]; break;
	case 4: case 5: gear = D_801409EC_Read;
		D_8004DCC0 = D_8015930C / gears[gear]; break;
	case 6: D_8004DCC0 = 0.0f; break;
	}
	D_8004DCC0 = D_8004DCC0 > gears[10] ? D_8004DCC0 : gears[10];
}

void func_80106628_1155D8(VehicleInstance *arg0) {
	VehicleType *type;
	s16 gridAngleX;
	s16 gridAngleY;
	s8 gridX;
	s8 gridY;
	u8 tileType;
	u8 nextMoveMask;
	u8 moveMask;
	s16 mapX;
	s16 mapY;
	u16 tileWord;
	s16 pad62;
	s16 tempS16;
	s32 absSteerDelta;
	u8 pad5B;
	s8 pad5A;
	s8 stepY;
	s8 stepX;
	s16 steerDelta;
	s16 tileFlipX;
	s16 tileFlipY;
	s32 pad48;
	s32 steerStep;

	type = &vehicleTypes[arg0->unk1A];
	arg0->unk20 |= VEHICLE_FLAG_UNK1;
	func_80014508_15108(arg0, 1, 1);

	if (-(arg0->unk0 - arg0->unk40) < (arg0->unk0 - arg0->unk40)) {
		gridAngleX = (arg0->unk0 - arg0->unk40);
	} else {
		gridAngleX = -(arg0->unk0 - arg0->unk40);
	}

	if (-(arg0->unk4 - arg0->unk42) < (arg0->unk4 - arg0->unk42)) {
		gridAngleY = (arg0->unk4 - arg0->unk42);
	} else {
		gridAngleY = -(arg0->unk4 - arg0->unk42);
	}

	if ((gridAngleX < 0x61) && (gridAngleY < 0x61)) {
		gridX = arg0->unk47;
		gridY = arg0->unk48;

		tileWord = func_800B325C_C220C(gridX, gridY, 0xFFFF);
		tileType = (tileWord & 0x7C0) >> 6;
		nextMoveMask = D_801407F4_14F7A4[tileType].directions;
		tileFlipX = ((tileWord & 0x4000) == 0) ^ ((gridX & 1) == 0);
		tileFlipY = ((tileWord & 0x2000) == 0) ^ ((gridY & 1) == 0);
		moveMask = 0;

		if (tileFlipX != 0) {
			if (nextMoveMask & 8) {
				moveMask = 4;
			}
			if (nextMoveMask & 4) {
				moveMask |= 8;
			}
		} else {
			moveMask = nextMoveMask;
			moveMask &= 0xC;
		}

		if (tileFlipY != 0) {
			if (nextMoveMask & 1) {
				moveMask |= 2;
			}
			if (nextMoveMask & 2) {
				moveMask |= 1;
			}
		} else {
			moveMask |= nextMoveMask & 3;
		}

		nextMoveMask = moveMask;
		if (nextMoveMask & arg0->unk44) {
			if ((func_800038E0_44E0() >= 0xC351) &&
				((tileType == 0xF) || (tileType == 0x12) || (tileType == 0x13))) {
				if (arg0->unk44 & 3) {
					nextMoveMask = moveMask & 0xC;
				}
				if (arg0->unk44 & 0xC) {
					nextMoveMask &= 3;
				}
			} else {
				/* Keep the candidate byte live across the junction query. */
				if (moveMask) {}
				nextMoveMask = arg0->unk44;
			}
		} else {
			if (arg0->unk44 & 3) {
				nextMoveMask = moveMask & 0xC;
			} else {
				nextMoveMask = moveMask & 3;
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
			if (func_800038E0_44E0() >= 0x8000) {
				nextMoveMask = 1;
			} else {
				nextMoveMask = 2;
			}
		} else if ((nextMoveMask & 0xC) == 0xC) {
			if (func_800038E0_44E0() >= 0x8000) {
				nextMoveMask = 8;
			} else {
				nextMoveMask = 4;
			}
		}

		if (tileType == 0xB) {
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
		} else if (tileType == 0xA) {
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
		} else if (tileType == 0xE) {
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

		if (arg0->unk44 == 1U) {
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

		arg0->unk44 = nextMoveMask;
		arg0->unk47 = gridX;
		arg0->unk48 = gridY;
		arg0->unk40 = (gridX << 8) + mapX;
		arg0->unk42 = (gridY << 8) + mapY;
	}

	gridAngleX = arg0->unk40 - arg0->unk0;
	gridAngleY = arg0->unk42 - arg0->unk4;
	tempS16 = func_80003824_4424((f32)gridAngleX, (f32)gridAngleY);
	if ((steerDelta = func_800F9C50_108C00(tempS16, arg0->unk6), -func_800F9C50_108C00(tempS16, arg0->unk6) < steerDelta)) {
		absSteerDelta = func_800F9C50_108C00(tempS16, arg0->unk6);
	} else {
		absSteerDelta = -func_800F9C50_108C00(tempS16, arg0->unk6);
	}

	if (((u32)arg0->pathFlags >> 14) == 1) {
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

	steerDelta = (type->unk40 * arg0->unk45) / 100;
	if (arg0->unk20 & VEHICLE_FLAG_ON_BRIDGE) {
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

void func_80107184_116134(VehicleInstance *arg0, s32 arg1, s32 arg2, f32 arg3)
{
	s32 headingDelta;
	f32 slope;
	f32 aspectRatio;
	f32 velocityX;
	f32 impulse;
	u32 wrappedAngle;
	s16 relativeAngle;
	s16 trigValue;
	s32 pad;
	relativeAngle = func_80003824_4424((f32) arg1, (f32) arg2) - arg0->unk6;
	wrappedAngle = (u16)relativeAngle;
	trigValue = sins(wrappedAngle);
	slope = (((f32) trigValue / 32768.0) / ((f32) coss(wrappedAngle) / 32768.0));
	aspectRatio = ((f32) vehicleTypes[arg0->unk1A].unk36) / ((f32) vehicleTypes[arg0->unk1A].unk34);
	trigValue = coss(arg0->unkE);
	velocityX = (((((f32) coss(arg0->unk10) / 32768.0) * ((f32) trigValue / 32768.0)) * arg0->unk12) + arg0->unk30);
	trigValue = sins(arg0->unkE);
	headingDelta = func_800F9C50_108C00(
	  func_80003824_4424(
		  velocityX,
		  (((((f32) coss(arg0->unk10) / 32768.0) * ((((f32) trigValue)) / 32768.0)) * arg0->unk12) + arg0->unk38)), arg0->unk6);
	if (slope < 0.0f)
	{
	aspectRatio = -aspectRatio;
	}
	impulse = aspectRatio < slope ? (f32)(headingDelta * (arg3 * 0.5)) : -(f32)(headingDelta * (arg3 * 0.5));
	arg0->unk22 = ((f32) arg0->unk22) + impulse;
}

s32 func_801073FC_1163AC(VehicleInstance *arg0, VehicleInstance *arg1, s32 arg2, s32 arg3) {
	VehicleType *sp6C;
	VehicleType *sp68;
	u16 sp66;
	u16 sp64;
	f32 sp60;
	f32 sp5C;
	s32 pad;
	f32 sp54;
	f32 sp50;
	f32 sp4C;
	s16 sp4A;
	f32 sp44;
	f32 sp40;

	sp6C = &vehicleTypes[arg0->unk1A];
	sp68 = &vehicleTypes[arg1->unk1A];

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
	sp54 = (f32)((((f32)coss((u32)sp66) / 32768.0) * sp60) - (((f32)coss((u32)sp64) / 32768.0) * sp5C));
	sp50 = (f32)((((f32)sins((u32)sp66) / 32768.0) * sp60) - (((f32)sins((u32)sp64) / 32768.0) * sp5C));
	sp4C = sqrtf((sp54 * sp54) + (sp50 * sp50));
	if (sp50) {}
	sp40 = (f32)sp6C->unk32 / (f32)(sp6C->unk32 + sp68->unk32);
	if ((sp6C->unk16 == 1) || (sp68->unk16 == 1)) {
		sp4A = func_80003824_4424((f32)(arg1->unk0 - arg0->unk0), (f32)(arg1->unk4 - arg0->unk4));
		func_80102DDC_111D8C(arg0, sp4A, 0, -((f64)((1.0f - sp40) * sp4C) * 1.5));
		func_80102DDC_111D8C(arg1, sp4A, 0, ((f64)(sp4C * sp40) * 1.5));
	} else {
		sp4A = func_80003824_4424(sp54, sp50);
		sp44 = (f32)((f64)sp4C * 0.001);
		func_80102DDC_111D8C(arg0, sp4A, 0, -((f64)((1.0f - sp40) * sp4C) * 1.5));
		func_80102DDC_111D8C(arg1, sp4A, 0, ((f64)(sp4C * sp40) * 1.5));
		func_80107184_116134(arg0, arg2, arg3, (1.0f - sp40) * sp44 * 2);
		func_80107184_116134(arg1, (arg0->unk0 + arg2) - arg1->unk0, (arg0->unk4 + arg3) - arg1->unk4, (f32)((f64)sp4C * 0.001) * sp40 * 2);
	}
	return 1;
}

void func_80107890_116840(VehicleInstance *arg0) {
	VehicleType *typePtr;
	WeaponSpecEntry *tableEntry;
	s16 retVal;

	typePtr = &vehicleTypes[arg0->unk1A];
	tableEntry = &D_80140768_14F718[typePtr->unk55];

	if (typePtr->unk4C & 0x20000000) {
		retVal = func_800FA018_108FC8(arg0, arg0->unk6, typePtr->unk36);
		if (tableEntry->unk8 < arg0->unkA - retVal) {
			func_80123E90_132E40(arg0, (s16)((arg0->unkA - retVal - tableEntry->unk8) >> 2));
		}
		// If SCUD missile?
		if (currentLevel == LEVEL_SIBERIA && arg0->unk1A == 0xE) {
			func_800FDB58_10CB08(arg0);
		}
	}
}

void func_80107970_116920(VehicleInstance *arg0, s32 arg1) {
	s16 sp66;
	s16 sp64;
	s16 sp62;
	s16 sp60;
	s16 sp5E;
	s32 pad0;
	s32 pad1;
	f32 sp50;
	f32 sp4C;
	u16 sp4A;
	u16 sp48;

	sp5E = vehicleTypes[arg0->unk1A].unkC;

	if (D_80222A70 < arg1) {
		if (((s32)(vehicleTypes[arg0->unk1A].unk4C << 2) < 0) && (arg0->unk12 >= 0x15)) {
			func_801371B8_146168(arg0, 0xD2, arg0->unk0, arg0->unk2, arg0->unk4, -1.0f);
			func_800FB430_10A3E0(arg0, (f32)((f64)arg0->unk58 * 0.7));
		}
	}

	if ((arg0->unk2 < D_80222A70) && (arg0->unk2 >= arg1)) {
		func_800FB238_10A1E8(arg0, arg0->unk0, arg0->unk4, 0x64);
		arg0->unk2E = arg0->unk2 - arg1;
		arg0->unk34 = arg0->unk34 / 2;

		if (vehicleTypes[arg0->unk1A].unk4C & 0x100) {
			arg0->unk20 |= VEHICLE_FLAG_AIRBORNE;
		}
		return;
	}

	if (arg1 >= arg0->unk2) {
		arg0->unk2 = arg1;
		arg0->unk2E = 0;
		arg0->unk20 &= ~VEHICLE_FLAG_AIRBORNE;
		arg0->unk34 = 0.0f;
		if (arg0->unk1A == 0) {
			D_80157A28 |= PLAYER_STATE_FLAG_JUST_LANDED;
		}
	}

	arg0->unk10 = 0;
	arg0->unk34 = 0.0f;
	if ((arg0->unk1A == 0) || ((s32)(vehicleTypes[arg0->unk1A].unk4C << 2) < 0)) {
		func_8011DE60_12CE10(1);
	}

	sp66 = func_800FA018_108FC8(arg0, arg0->unk6, vehicleTypes[arg0->unk1A].unk36);
	sp64 = func_800FA018_108FC8(arg0, arg0->unk6 + 0x4000, vehicleTypes[arg0->unk1A].unk34);

	if ((arg0->unk1A == 0) || ((s32)(vehicleTypes[arg0->unk1A].unk4C << 2) < 0)) {
		func_8011DE60_12CE10(0);
	}

	{
		s32 temp;
		s32 maxAbs;
		sp62 = func_800F9C50_108C00(sp66, arg0->unkA);
		temp = func_800F9C50_108C00(sp64, arg0->unk8);

		if (-sp62 < sp62) {
			maxAbs = sp62;
		} else {
			maxAbs = -sp62;
		}
		sp62 = maxAbs - 0x1555;

		if (-temp < temp) {
			maxAbs = temp;
		} else {
			maxAbs = -temp;
		}
		sp60 = maxAbs - 0x1555;

		if (sp62 < 0) {
			sp62 = 0;
		}
		if (sp60 < 0) {
			sp60 = 0;
		}

	}
	if (arg0 == D_80052B34) {
		if (D_80052B34->unk1A != 0) {
			func_80123E90_132E40(arg0, (s16)(sp62 / 240));
			func_80123E90_132E40(arg0, (s16)(sp60 / 240));

			sp48 = func_800038E0_44E0();
			sp4A = func_800038E0_44E0();
			sp4C = func_800FB014_109FC4(arg0);
			sp50 = func_800FB098_10A048(arg0);

			func_800C541C_D43CC((s16)(((sp48 % sp5E) + arg0->unk0) - (sp5E >> 1)), arg1, (s16)(((sp4A % sp5E) + arg0->unk4) - (sp5E >> 1)), sp4C,
				0x4B, sp50, 0x5A, 0x64, sqrtf((f32)(sp62 + sp60)) / 3, 3, 0xB4, 0xA0, 0x3C);
		}

		D_80159320 &= ~0x800;
	}
}

void func_80107EBC_116E6C(VehicleInstance *arg0) {
	f32 varX;
	f32 varY;
	VehicleType *type;
	s32 offset;
	s16 trig;

	type = &vehicleTypes[arg0->unk1A];
	offset = (s8)type->pivotPoint * 4;
	trig = coss((u16)arg0->unkE);
	varX = (f32)((((f64)(f32)coss((u16)arg0->unk10) / 32768.0) * ((f64)(f32)trig / 32768.0) * (f64)arg0->unk58) + (f64)arg0->unk4C + (f64)arg0->unk30);

	trig = sins((u16)arg0->unkE);
	varY = (f32)((((f64)(f32)coss((u16)arg0->unk10) / 32768.0) * ((f64)(f32)trig / 32768.0) * (f64)arg0->unk58) + (f64)arg0->unk54 + (f64)arg0->unk38);

	if (arg0->unk20 & VEHICLE_FLAG_AIRBORNE) {
		func_800FB3E8_10A398(arg0, (f32)((((f64)(f32)sins((u16)arg0->unk10) / 32768.0) * (f64)arg0->unk58) + (f64)arg0->unk34));
	}

	if (offset != 0) {
		varX = (f32)((f64)varX - (((f64)(f32)coss((u16)(arg0->unk6 + arg0->unk22)) / 32768.0) * (f64)offset));
		varY = (f32)((f64)varY - (((f64)(f32)sins((u16)(arg0->unk6 + arg0->unk22)) / 32768.0) * (f64)offset));

		varX += ((f32)coss((u16)arg0->unk6) / 32768.0) * (f64)offset;
		varY += ((f32)sins((u16)arg0->unk6) / 32768.0) * (f64)offset;
	}

	func_800FB44C_10A3FC(arg0, varX);
	func_800FB484_10A434(arg0, varY);
}

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

void func_801081F0_1171A0(VehicleInstance *arg0, VehicleType *arg1) {
	f32 damping;
	WeaponSpecEntry *tableEntry;
	u8 pad0[8];
	s16 counter;
	s16 sp44;
	u8 pad1[12];
	s16 temp;
	u8 pad2[8];
	s16 speedDelta;
	s32 tableIndex;
	s32 pad3;
	VehicleInstance *player;
	s32 turn;
	s32 temp_v0;
	f64 velocityDamping;

	damping = (f32) ((f64) arg1->unk45 * (1.0 / 256.0));
	tableEntry = &D_80140768_14F718[arg1->unk55];
	tableIndex = func_800FAE60_109E10(arg0);

	if (func_800E60CC_F507C(2, (u8) (sp44 = func_800FAE60_109E10(arg0))) != 0) {
		func_800E5E3C_F4DEC(2, (u8) sp44);
	}

	coss((u16) arg0->unk10);
	sins((u16) arg0->unk10);

	if (!(arg1->unk4C & 0x20000)) {
		temp_v0 = D_80159268;
		if (temp_v0 != 0) {
			switch (temp_v0) {
				case 1:
					D_8015926C = 0xBB8;
					if ((arg0->unk10 > 0) && ((s16) (arg0->unk10 + 0x6A8) < 0)) {
						arg0->unk10 = 0;
						arg0->unk6 += 0x8000;
						arg0->unkE += 0x8000;
						arg0->unk8 += 0x8000;
						arg0->unk28 = arg0->unk8;
						D_80159268 = 2;
					} else {
						arg0->unk10 = (s16) (arg0->unk10 + 0x6A8);
						arg0->unk28 = 0;
						arg0->unk2A = -arg0->unk10;
						func_800FB3E8_10A398(arg0, -25.0f);
						D_801593EC = 0;
					}
					break;

				case 2:
					temp_v0 = D_801593EC;
					arg0->unk10 = 0;
					arg0->unk2A = 0;
					temp = func_800065A4_71A4(0x7FFF, 0, (u16) (temp_v0 << 12));
					arg0->unk8 = temp;
					arg0->unk28 = temp;
					temp_v0 = func_80003824_4424((f32) (D_80052B34->unk0 - 0x3600), (f32) (D_80052B34->unk4 - 0x5000));
					player = D_80052B34;
					turn = player->unk6 - temp_v0;
					if (turn >= 0x1F5) {
						player->unk6 = player->unk6 - 0x1F4;
						player = D_80052B34_Read;
						turn = player->unk6 - temp_v0;
					}
					if (turn < -0x1F4) {
						player->unk6 = player->unk6 + 0x1F4;
					}

					counter = D_801593EC + 1;
					D_801593EC_Write = counter;
					if (counter >= 0x10) {
						D_80159268 = 4;
					}
					break;

				case 4:
					D_80159268 = 0;
					D_8015930E = 0;
					D_8015926C = 0x7D0;
					D_801593EC = 0;
					break;

			}
		} else {
			if (D_80159320 & 0x80000) {
				if ((arg0->unkA >= 0 ? arg0->unkA : -arg0->unkA) < 0x180) {
					D_80159230 = arg0->unkA;
				} else if (arg0->unkA > 0) {
					D_80159230 = -0x180;
				} else {
					D_80159230 = 0x180;
				}
			} else {
				D_80159230 = currentControllerStates[0].stick_y * (((currentLevel == 4) && (arg0->unk1A == 0xE)) ? 0x10 : 6);
			}

			coss((u16) (-arg0->unkA - D_80159230));
			sins((u16) (-arg0->unkA - D_80159230));
			arg0->unk10 = -arg0->unkA - D_80159230;
			arg0->unk2A = -arg0->unk10;

			if (arg0->unk2A <= -0x2001) {
				arg0->unk2A = -0x2000;
			}
			if (arg0->unk2A >= 0x4001) {
				arg0->unk2A = 0x4000;
			}

			temp = tableEntry->unk2 - BH_ABS(arg0->unk12);
			if (temp > 0) {
				arg0->unk2A = (s16) (arg0->unk2A + (temp * 0x32));
			}

			if (arg0->unkA > 0) {
				func_800FB430_10A3E0(arg0, (f32) ((f64) (arg0->unk58 + (f32) 1.0) * (1.0 + ((f64) arg0->unkA / 221920.0))));
			} else {
				func_800FB430_10A3E0(arg0, (f32) ((f64) arg0->unk58 * (1.0 + ((f64) arg0->unkA / 221920.0))));
			}
		}
	}

	temp_v0 = func_800F9C50_108C00(arg0->unk2A, arg0->unkA);
	arg0->unk26 += temp_v0 / arg1->unk44;
	temp_v0 = func_800F9C50_108C00(arg0->unk28, arg0->unk8);
	arg0->unk24 += temp_v0 / arg1->unk44;
	arg0->unkA = arg0->unkA + arg0->unk26;
	arg0->unk8 = arg0->unk8 + arg0->unk24;
	arg0->unk6 = arg0->unk6 + arg0->unk22 + arg0->unk16;
	arg0->unk26 = arg0->unk26 * damping;
	arg0->unk24 = arg0->unk24 * damping;
	velocityDamping = 0.9;
	arg0->unk22 = arg0->unk22 * damping;
	arg0->unk16 = arg0->unk16 * damping;
	arg0->unk30 = (f32) ((f64) arg0->unk30 * velocityDamping);
	arg0->unk34 = (f32) ((f64) arg0->unk34 * velocityDamping);
	arg0->unk38 = (f32) ((f64) arg0->unk38 * velocityDamping);

	func_800FB430_10A3E0(arg0, arg0->unk58 * (f32) 1.0);
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
		arg0->unk28 = (arg0->unk12 >= 0 ? -8 : 8) * temp;
	}
}

void func_8010895C_11790C(VehicleInstance *arg0)
{
	s32 sp24;
	s32 temp_a2;
	temp_a2 = D_80222A70 < arg0->unk2;
	if (vehicleTypes[arg0->unk1A].unk4C & 0x200000)
	{
		arg0->unk26 = ((0.7 * (((func_800F9C50_108C00(-0x1333, arg0->unkA) / 20) + arg0->unk26))));
		arg0->unk34 = arg0->unk34 - 1.9500000000000001;
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
		func_800FB238_10A1E8(arg0, arg0->unk0, arg0->unk4, (s16)(vehicleTypes[arg0->unk1A].unkC + arg0->unk12));
	}
}

void func_80108B48_117AF8(VehicleInstance *arg0) {
	s16 temp_a1;
	s16 temp;
	s32 yawStep;
	s32 temp_v0;

	if (arg0->unkA > 0) {
		temp_v0 = -0x32;
	} else {
		temp_v0 = 0x32;
	}
	arg0->unk26 = arg0->unk26 + temp_v0;
	temp_a1 = arg0->unk8;
	arg0->unk26 = arg0->unk26 - (arg0->unk26 >> 4);
	if (temp_a1 > 0) {
		temp_v0 = -0x32;
	} else {
		temp_v0 = 0x32;
	}
	arg0->unk24 = arg0->unk24 + temp_v0;
	arg0->unk24 = arg0->unk24 - (arg0->unk24 >> 4);
	arg0->unk8 = temp_a1 + arg0->unk24;
	arg0->unkA = arg0->unkA + arg0->unk26;
	arg0->unk22 += 0x28;
	temp = arg0->unk22;
	yawStep = arg0->unk16;
	arg0->unk6 = arg0->unk6 + temp + yawStep;
	arg0->unk16 = yawStep >> 1;
	if (D_80052A8C & 1) {
		arg0->unk34 = arg0->unk34 - 1.0f;
		temp = arg0->unk22;
	}
	if (temp >= 0x7D1) {
		arg0->unk22 = 0x7D0;
		temp = arg0->unk22;
	}
	if (temp < -0x7D0) {
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

void func_80108D80_117D30(VehicleInstance *arg0, VehicleType *arg1) {
	s32 terrainHeight;
	f32 angularDamping;
	f32 speed;
	s16 angularStep;
	s16 headingCorrection;
	f32 drag;
	WeaponSpecEntry *weaponSpec;
	s32 vehicleIndex;
	s16 weaponIndex;
	s16 sinHeading;
	s16 cosHeading;

	angularDamping = (f32)((f64)arg1->unk45 * 0.00390625);
	drag = (f32)((f64)arg1->unk47 / 255.0);
	vehicleIndex = func_800FAE60_109E10(arg0);

	if (arg0 == D_80052B34) {
		D_80159320 &= ~0x800;
	}

	arg0->unk26 += func_800F9C50_108C00(arg0->unk2A, arg0->unkA) / arg1->unk44;
	arg0->unk24 += func_800F9C50_108C00(arg0->unk28, arg0->unk8) / arg1->unk44;

	angularStep = arg0->unk26;
	arg0->unkA = (s16)(arg0->unkA + angularStep);
	arg0->unk8 = (s16)(arg0->unk8 + arg0->unk24);
	arg0->unk6 = (s16)(arg0->unk6 + arg0->unk22 + arg0->unk16);

	arg0->unk26 = (s16)(s32)((f32)angularStep * angularDamping);
	arg0->unk24 = (s16)(s32)((f32)arg0->unk24 * angularDamping);
	arg0->unk22 = (s16)(s32)((f32)arg0->unk22 * angularDamping);
	arg0->unk16 = (s16)(s32)((f32)arg0->unk16 * angularDamping);

	arg0->unk30 = arg0->unk30 * drag;
	arg0->unk34 = arg0->unk34 * drag;
	arg0->unk38 = arg0->unk38 * drag;

	if (arg0->unk1A != 0) {
		headingCorrection = (s16)(func_800F9C50_108C00(arg0->unk6, arg0->unkE) / 5);
		arg0->unkE = (s16)(arg0->unkE + headingCorrection);
		angularStep = (s16)(s32)((((speed = arg0->unk58) - D_80158C58[vehicleIndex]) * (f32)arg1->unk44) * 30.0f);
		if (angularStep >= 0x1556) {
			angularStep = 0x1555;
		}
		/* The clamped acceleration is calculated, but pitch response is disabled. */
		arg0->unk2A = angularStep * 0;
		arg0->unk28 = 0.0f < speed ? -headingCorrection * 3 : 0;
	}

	func_800FB430_10A3E0(arg0, arg0->unk58 * drag);
	cosHeading = coss((u16)arg0->unkE);
	sinHeading = sins((u16)arg0->unkE);
	func_800FB3E8_10A398(arg0, (f32)((func_800F9EC4_108E74(
		(s16)(s32)((((f64)(f32)cosHeading / 32768.0) * (f64)arg0->unk12) + (f64)arg0->unk0),
		(s16)(s32)((((f64)(f32)sinHeading / 32768.0) * (f64)arg0->unk12) + (f64)arg0->unk4)) + arg0->unk2E - arg0->unk2) / 5));

	if ((D_80222A70 < arg0->unk2) || ((arg0->unk2 < D_80222A70) && !(arg1->unk4C & 0x100))) {
		func_800FB468_10A418(arg0, (f32)D_80222A70);
		arg0->unk10 = 0;
		arg0->unk34 = 0.0f;
	}

	if (arg0->unk2E < 0x14) {
		arg0->unk2E = 0x14;
	}

	terrainHeight = func_800F9EC4_108E74(arg0->unk0, arg0->unk4);

	if ((arg0->unk1A == 0) && (arg0->unk2 < D_80222A70)) {
		arg0->unk2E = (s16)(arg0->unk2E + 4);
	}

	if ((arg0->unk1A == 0) && ((D_80222A70 - 0x24) < terrainHeight) &&
		(func_800FAA08_1099B8((s16)(s32)arg0->unk4C, (s16)(s32)arg0->unk54) < 0xA)) {
		arg0->unk20 &= ~VEHICLE_FLAG_AIRBORNE;
		arg0->unk2E = 1;
	} else {
		arg0->unk20 = (u16)(arg0->unk20 | VEHICLE_FLAG_AIRBORNE);
	}

	if (arg0 == D_80052B34) {
		weaponSpec = D_80140768_14F718;
		weaponIndex = arg1->unk55;
		if (weaponIndex != 0) {
			weaponSpec = &weaponSpec[weaponIndex];
			if ((f32)weaponSpec->unk4 <= func_800FB11C_10A0CC(arg0)) {
				arg0->unk20 = (u16)(arg0->unk20 | VEHICLE_FLAG_AIRBORNE);
				arg0->unk2E = (s16)(arg0->unk2E + 1);
				func_800FB3E8_10A398(arg0, 1.0f);
				if (arg1->unk62 == 5) {
					func_801371B8_146168(arg0, 4, arg0->unk0, arg0->unk2, arg0->unk4, -1.0f);
				}
			}
		}
	}
}

void func_80109370_118320(VehicleInstance *arg0, VehicleType *arg1) {
	s32 temp_v1;
	s32 temp_v0;
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
		temp_v1 = -0x3E8;
	} else {
		temp_v1 = 0x3E8;
	}
	arg0->unk24 = arg0->unk24 + temp_v1;
	arg0->unk30 = arg0->unk30 / temp_f0;
	arg0->unk8 = arg0->unk8 + arg0->unk24;
	arg0->unk34 = arg0->unk34 - 5.0f;
	arg0->unk38 = arg0->unk38 / temp_f0;
	temp_v0 = arg0->unk16;
	arg0->unkA = arg0->unkA + arg0->unk26;
	arg0->unk6 = arg0->unk6 + arg0->unk22 + temp_v0;
	arg0->unk16 = temp_v0 >> 1;
	func_800FB430_10A3E0(arg0, (f32)(arg0->unk12 >> 1));
	if (arg0->unk34 < -20.0f) {
		arg0->unk34 = -20.0f;
	}
	if (!(arg1->unk4C & 0x100)) {
		arg0->unk34 += 6.0f;
		if (arg0->unk34 > 20.0f) arg0->unk34 = 20.0f;
		if (D_80222A70 < arg0->unk50 + arg0->unk34) {
			arg0->unk20 &= ~VEHICLE_FLAG_AIRBORNE;
			func_800FB468_10A418(arg0, (f32)D_80222A70);
			arg0->unk34 = 0.0f;
		}
	}
}

void func_801095BC_11856C(VehicleInstance *vehicle) {
	f64 scaledPitch;
	s32 maxTilt;
	VehicleType *type;
	f32 force;
	s32 tiltAngle;
	f32 steeringForce;
	f32 maxCorrection;
	f32 signedForce;
	s16 sine;
	s32 value;

	type = &vehicleTypes[vehicle->unk1A];
	tiltAngle = type->unk46 << 8;
	maxCorrection = (f32)(type->unk48 * 240);
	if ((vehicle->unk1A != 0) || !(vehicle->unk20 & VEHICLE_FLAG_ON_BRIDGE)) {
		if (!(vehicle->unk20 & VEHICLE_FLAG_HALF_ON_BRIDGE)) {
			maxTilt = -vehicle->unk2A < vehicle->unk2A ? vehicle->unk2A : -vehicle->unk2A;
			if (maxTilt >= 0x961) {
				sine = sins((u16)vehicle->unk2A);
				force = (f32)((((f64)(f32)coss((u16)tiltAngle) / 32768.0) * (2.5 * ((f64)(f32)sine / 32768.0))) *
						  (f64)D_8015922C->unk4);
				func_80102DDC_111D8C(vehicle, vehicle->unk6, 0, force);
			}

			maxTilt = -vehicle->unk28 < vehicle->unk28 ? vehicle->unk28 : -vehicle->unk28;
			if (maxTilt >= 0x961) {
				value = (u16)tiltAngle;
				sine = sins((u16)vehicle->unk28);
				force = (f32)((((f64)(f32)coss((u16)value) / 32768.0) * (2.5 * ((f64)(f32)sine / 32768.0))) *
						  (f64)D_8015922C->unk4);
				func_80102DDC_111D8C(vehicle, (s16)(vehicle->unk6 - 0x4000), 0, force);
			}

			steeringForce = (f32)((f64)vehicle->unk58 / 10000.0);
			if (0.05 < (f64)steeringForce) {
				steeringForce = 0.05f;
			}
			if ((f64)steeringForce < -0.05) {
				steeringForce = -0.05f;
			}

			if (vehicle->unk28 > 0) {
				signedForce = steeringForce;
			} else {
				signedForce = -steeringForce;
			}

			scaledPitch = (f64)vehicle->unk28 * 0.0625;
			value = (s32)((f64)signedForce * (scaledPitch * scaledPitch));
			signedForce = -maxCorrection;
			if (maxCorrection < value) {
				value = (s32)maxCorrection;
			}
			if (value < signedForce) {
				value = (s32)signedForce;
			}

			if (vehicle->unk12 >= 0) {
				vehicle->unk16 = -value;
			} else {
				vehicle->unk16 = value;
			}
		}
	}
}

void func_801098E8_118898(VehicleInstance *vehicle) {
	D_8015922C = &D_8003E290_3EE90[func_800056D0_62D0(vehicle->unk0, vehicle->unk4)];
	if ((vehicle->unk20 & VEHICLE_FLAG_ON_BRIDGE) && (currentLevel != LEVEL_COMET)) {
		D_8015922C = &D_8003E3A0_3EFA0;
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

// https://decomp.me/scratch/vVocw
void func_8010999C_11894C(VehicleInstance *vehicle)
{
	s32 xIndex;
	s16 xAdjust;
	s32 zIndex;
	s16 hitHeight;
	s16 ceilingHeight;
	s16 floorHeight;
	s16 zAdjust;
	s32 xOffset;
	s32 zOffset;

	xAdjust = 0;
	zAdjust = 0;
	if (vehicle->unk20 & VEHICLE_FLAG_AIRBORNE)
	{
		if (!(vehicleTypes[vehicle->unk1A].unk4C & 0x20000))
		{
			if (!(D_80159320 & 0x1800000))
			{
				for (xIndex = -1, xOffset = -0x1E; xIndex != 2; xIndex++, xOffset += 0x1E)
				{
					for (zIndex = -1, zOffset = -0x1E; zIndex != 2; zIndex++, zOffset += 0x1E)
					{
						if (((func_800F9D60_108D10(vehicle->unk0 + xOffset, vehicle->unk4 + zOffset, &hitHeight, &ceilingHeight, &floorHeight) != (-1)) && (vehicle->unk2 < floorHeight)) && (ceilingHeight < vehicle->unk2))
						{
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

void func_80109B34_118AE4(VehicleInstance *arg0, f32 arg1, f32 arg2) {
	func_800FB430_10A3E0(arg0, 0.0f);
	arg0->unk30 = arg1;
	arg0->unk38 = arg2;
}

void func_80109B74_118B24(VehicleInstance *arg0) {
	if ((gameplayMode != 0xB) && (D_8015922C->unk8 == 0x1F5) && !(arg0->unk20 & VEHICLE_FLAG_AIRBORNE)) {
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
void func_80109C84_118C34(VehicleInstance *vehicle, VehicleType *type) {
	s16 angleValue;
	u8 weaponIndex;
	s16 bridgeHeight;
	f32 speedFactor;
	f32 traction;
	f32 motionValue;
	WeaponSpecEntry *weaponSpec;
	f32 velocityX;
	f32 velocityZ;
	f32 speedMagnitude;
	f32 floatScratch;
	s16 pitchCorrection;
	s16 travelSign;
	s16 rollCorrection;
	s32 firstX;
	s32 firstZ;
	s32 secondX;
	s32 integerScratch;
	s32 vehicleIndex;
	s16 referenceAngle;
	s16 angleScratch;
	f64 factor;

	motionValue = (f32) ((f64) type->unk45 * 0.00390625);
	vehicleIndex = func_800FAE60_109E10(vehicle);
	func_801098E8_118898(vehicle);
	func_80109B74_118B24(vehicle);

	if ((vehicle != D_80052B34) && !(vehicle->unk20 & VEHICLE_FLAG_PATH_GUIDED)) {
		func_800FB430_10A3E0(vehicle, (f32) ((f64) vehicle->unk58 * 0.9));
	}

	if (!(vehicle->unk20 & VEHICLE_FLAG_UNDER_BRIDGE) && (vehicle->unk20 & VEHICLE_FLAG_HALF_ON_BRIDGE) &&
		(func_80108138_1170E8(vehicle->unk0, vehicle->unk2, vehicle->unk4) != 0)) {
		vehicle->unk20 &= (u16)~VEHICLE_FLAG_HALF_ON_BRIDGE;
		vehicle->unk20 |= VEHICLE_FLAG_ON_BRIDGE;
	}

	if ((vehicle->unk20 & VEHICLE_FLAG_ON_BRIDGE) && (func_80108138_1170E8(vehicle->unk0, vehicle->unk2, vehicle->unk4) == 0)) {
		vehicle->unk20 &= ~VEHICLE_FLAG_ON_BRIDGE;
		if ((f64) bridgeHeight < ((f64) vehicle->unk2 - ((f64) type->unk36 * 0.33))) {
			vehicle->unk20 |= VEHICLE_FLAG_UNK1 | VEHICLE_FLAG_AIRBORNE;
			vehicle->unk20 &= ~VEHICLE_FLAG_HALF_ON_BRIDGE;
			return;
		}

		vehicle->unk20 = (u16) (vehicle->unk20 | (VEHICLE_FLAG_UNK1 | VEHICLE_FLAG_HALF_ON_BRIDGE));
		return;
	}

	angleValue = func_800F9C50_108C00(vehicle->unk2A, vehicle->unkA);
	vehicle->unk26 += angleValue / type->unk44;
	angleValue = func_800F9C50_108C00(vehicle->unk28, vehicle->unk8);
	vehicle->unk24 += angleValue / type->unk44;
	vehicle->unkA = vehicle->unkA + vehicle->unk26;
	vehicle->unk8 = vehicle->unk8 + vehicle->unk24;
	vehicle->unk6 = vehicle->unk6 + vehicle->unk22 + vehicle->unk16;
	vehicle->unk26 = vehicle->unk26 * motionValue;
	vehicle->unk24 = vehicle->unk24 * motionValue;
	vehicle->unk22 = vehicle->unk22 * motionValue;
	func_801095BC_11856C(vehicle);

	if (type->unk4C & 0x400000) {
		func_800FB430_10A3E0(vehicle, 0.0f);
		if (D_80222A70 >= vehicle->unk2) {
			traction = (f32) ((f64)(u32)type->unk47 / 255.0);
		} else if (!(type->unk4C & 0x40000000)) {
			traction = D_8015922C->unk0;
		} else {
			traction = 0.98f;
		}
		vehicle->unk30 = (f32) (vehicle->unk30 * traction);
		vehicle->unk38 = (f32) (vehicle->unk38 * traction);
	} else if (vehicle->unk1A == 0) {
		factor = 0.78;
		vehicle->unk30 = (f32) ((f64) vehicle->unk30 * factor);
		vehicle->unk38 = (f32) ((f64) vehicle->unk38 * factor);
	} else if ((vehicle == D_80052B34) && (D_80159320 & 0x04000000)) {

		func_800FB430_10A3E0(vehicle, 0.0f);
		floatScratch = func_800FB11C_10A0CC(vehicle);
		speedFactor = (f32) type->unk40;
		vehicle->unkE = vehicle->unk6;

		if (floatScratch < speedFactor) {
			factor = (f64) (f32) sins((u32) (10000.0f + (floatScratch / speedFactor) * 6384.0f)) / 32768.0;
		} else {
			factor = 1.0;
		}

		speedFactor = (f32) (factor * 0.96);
		vehicle->unk30 = (f32) (vehicle->unk30 * speedFactor);
		vehicle->unk38 = (f32) (vehicle->unk38 * speedFactor);
	} else {

		velocityX = (f32) (((f64) (f32) coss(vehicle->unkE + 0x4000) / 32768.0) * (f64) vehicle->unk58);
		velocityZ = (f32) (((f64) (f32) sins(vehicle->unkE + 0x4000) / 32768.0) * (f64) vehicle->unk58);
		floatScratch = vehicle->unk58;
		if (floatScratch < 0.0f) {
			travelSign = -1;
		} else {
			travelSign = 1;
		}
		speedMagnitude = sqrtf((velocityX * velocityX) + (velocityZ * velocityZ));
		integerScratch = (s16) (func_80003824_4424(velocityX, velocityZ) - vehicle->unk6);
		velocityX = (f32) (((f64) (f32) coss(integerScratch) / 32768.0) * (f64)speedMagnitude * 0.31);
		velocityZ = (f32) (((f64) (f32) sins(integerScratch) / 32768.0) * (f64)speedMagnitude);
		traction = D_8015922C->unk0;
		floatScratch = (f32) (D_80222A70 - vehicle->unk2) / (f32) ((s16) type->unk38 >> 1);

		if (!(type->unk4C & 0x10000000) && (D_80222A70 >= vehicle->unk2)) {
			if (floatScratch > 0.0f) {
				traction *= 1.0f - (floatScratch / 4);
			} else {
				traction = 0.93f;
			}
		}

		if (D_80222A70 == vehicle->unk2) {
			traction = (f32) ((f64)(u32)type->unk47 / 255.0);
		}

		if ((currentLevel == 4) && (vehicle->unk1A == 0x11)) {
			traction = 0.98f;
		}

		if (type->unk4C & 0x20000) {
			traction = (f32) ((f64) traction - 0.2);
		}

		velocityX *= traction;
		velocityZ *= traction;
		referenceAngle = func_80003824_4424(vehicle->unk30, vehicle->unk38);
		angleScratch = sins(vehicle->unk6 - referenceAngle);
		factor = (-((f64) (f32) sins(vehicle->unk6 - referenceAngle) / 32768.0) < ((f64) (f32) angleScratch / 32768.0)) ? (f64) (f32) sins(vehicle->unk6 - referenceAngle) / 32768.0 : -((f64) (f32) sins(vehicle->unk6 - referenceAngle) / 32768.0);

		vehicle->unk30 = (f32) ((f64) vehicle->unk30 * ((f64) traction - (0.1 * factor)));
		angleScratch = sins(vehicle->unk6 - referenceAngle);
		factor = (-((f64) (f32) sins(vehicle->unk6 - referenceAngle) / 32768.0) < ((f64) (f32) angleScratch / 32768.0)) ? (f64) (f32) sins(vehicle->unk6 - referenceAngle) / 32768.0 : -((f64) (f32) sins(vehicle->unk6 - referenceAngle) / 32768.0);

		vehicle->unk38 = (f32) ((f64) vehicle->unk38 * ((f64) traction - (0.1 * factor)));
		floatScratch = sqrtf((velocityX * velocityX) + (velocityZ * velocityZ));
		func_800FB430_10A3E0(vehicle, floatScratch);
		vehicle->unkE = (s16) (func_80003824_4424(velocityX, velocityZ) - 0x4000);
		if (travelSign == -1) {
			func_800FB430_10A3E0(vehicle, vehicle->unk58 * (f32) travelSign);
			vehicle->unkE = (s16) (vehicle->unkE + 0x8000);
		}
		vehicle->unkE = (s16) (vehicle->unkE + vehicle->unk6);
	}

	if (type->unk4C & 0x200000) {
		rollCorrection = vehicle->unk22 * -0x20;
		if (rollCorrection >= 0x3E81) {
			rollCorrection = 0x3E80;
		}
		if (rollCorrection < -0x3E80) {
			rollCorrection = -0x3E80;
		}
		if (vehicle->unk12 <= 0) {
			rollCorrection = 0;
		}
		D_801591EA += (s32) (rollCorrection - D_801591EA) / 7;
		vehicle->unk8 = D_801591EA;
	} else {

		motionValue = vehicle->unk58;
		if (motionValue >= 0.0f) {
			floatScratch = motionValue;
		} else {
			floatScratch = -motionValue;
		}

pitchCorrection = (s32) ((((f64) (sqrtf(floatScratch) * (f32) vehicle->unk22) * ((f64) D_80159242 / 10.0)) - (f64) (f32) (angleValue = vehicle->unk28)) * 0.25);
		vehicle->unk28 = (s16) (angleValue + pitchCorrection);

		if (((f64) func_800FB11C_10A0CC(vehicle) > 5.0) && (D_80222A70 != vehicle->unk2)) {
			if (!(vehicle->unk20 & 0x800) && !(vehicle->unk20 & 4)) {

				angleScratch = coss(vehicle->unk6);
				firstX = (s32) ((((f64) (f32) sins(vehicle->unk6) / 32768.0) * (f64) ((s16) type->unk34 >> 1)) +
					((f64) vehicle->unk0 - (((f64) (f32) angleScratch / 32768.0) * (f64) ((s16) type->unk36 >> 1))));

				angleScratch = sins(vehicle->unk6);
				firstZ = (s32) (((f64) vehicle->unk4 - (((f64) (f32) angleScratch / 32768.0) * (f64) ((s16) type->unk36 >> 1))) -
					(((f64) (f32) coss(vehicle->unk6) / 32768.0) * (f64) ((s16) type->unk34 >> 1)));

				angleScratch = coss(vehicle->unk6);
				secondX = (s32) (((f64) vehicle->unk0 - (((f64) (f32) angleScratch / 32768.0) * (f64) ((s16) type->unk36 >> 1))) -
					(((f64) (f32) sins(vehicle->unk6) / 32768.0) * (f64) ((s16) type->unk34 >> 1)));

				angleScratch = sins(vehicle->unk6);
				integerScratch = (s32) ((((f64) (f32) coss(vehicle->unk6) / 32768.0) * (f64) ((s16) type->unk34 >> 1)) +
					((f64) vehicle->unk4 - (((f64) (f32) angleScratch / 32768.0) * (f64) ((s16) type->unk36 >> 1))));

				if (pitchCorrection > 0) {
					func_800E75A0_F6550((s16)secondX, integerScratch, 0);
					func_800E75A0_F6550((s16)firstX, (s16)firstZ, (s16) (pitchCorrection >> 5));
				} else if (pitchCorrection < 0) {
					func_800E75A0_F6550((s16)firstX, (s16)firstZ, 0);
					func_800E75A0_F6550((s16)secondX, integerScratch, (s16) (-pitchCorrection >> 5));
				} else {
					func_800E75A0_F6550((s16)firstX, (s16)firstZ, 0);
					func_800E75A0_F6550((s16)secondX, integerScratch, 0);
				}
			}
		}
	}

	if (((type->unk4C & 0x80000000) || (D_80222A70 != vehicle->unk2)) && !(type->unk4C & 0x20000000)) {

		if ((vehicle != D_80052B34) || (vehicle->unk1A != 0x13)) {

			referenceAngle = vehicle->unk2A;
			vehicle->unkA += (D_80158C58[vehicleIndex] - vehicle->unk58) * (f32) (type->unk44 * 20);
			angleValue = vehicle->unkA - referenceAngle;
			if (angleValue >= 0xE39) {
				angleValue = 0xE38;
			}
			if (angleValue < -0xE38) {
				angleValue = -0xE38;
			}
			vehicle->unkA = (s16) (referenceAngle + angleValue);
		}

		if (vehicle->unk1A != 0x13) {
			angleValue = vehicle->unk28;
			angleScratch = vehicle->unk8 - angleValue;

			if (angleScratch >= 0xE39) {
				vehicle->unk8 = (s16) (angleValue + 0xE38);
			}
			if (angleScratch < -0xE38) {
				vehicle->unk8 = (s16) (angleValue - 0xE38);
			}
		}
	}

	if (vehicle == D_80052B34) {
		weaponSpec = D_80140768_14F718;
		weaponIndex = type->unk55;
		if (weaponIndex != 0) {
			weaponSpec = &weaponSpec[weaponIndex];
			speedFactor = func_800FB11C_10A0CC(vehicle);
			if ((f32) weaponSpec->unk4 <= speedFactor) {
				vehicle->unk20 = (u16) (vehicle->unk20 | VEHICLE_FLAG_AIRBORNE);
				vehicle->unk2E = (s16) ((vehicle->unk2 - func_800F9D24_108CD4(vehicle->unk0, vehicle->unk4)) + 2);
				if (type->unk62 == 5) {
					func_800156C8_162C8(0x10);
					func_801371B8_146168(vehicle, 4, vehicle->unk0, vehicle->unk2, vehicle->unk4, -1.0f);
				}
			}
		}
	}
}

void func_8010ADA4_119D54(VehicleInstance *arg0, VehicleType *arg1) {
	s16 temp_a2;
	s16 sp84;
	s16 sp82;
	f64 pad78;
	s16 sp76;
	s16 temp_v0;
	s16 sp72;
	s16 heightEnd;
	s16 heightStart;
	s32 pad68;
	s32 pad64;
	f32 sp60;
	f32 temp_f2;
	f32 temp_f12_2;
	f32 var_f14;
	f32 sp50;
	f32 sp4C;
	u32 temp_t8;

	temp_t8 = (s8)(arg0->unk0 >> 8);
	sp84 = (s16)func_8011D260_12C210(temp_t8, 0x4D);
	sp82 = (s16)func_8011D260_12C210(temp_t8, 0x42);
	sp76 = buildingInstances[sp84].xCoord + 0xC;
	temp_a2 = buildingInstances[sp82].zCoord + 0x202;
	sp72 = buildingInstances[sp84].zCoord - 0x204;
	heightEnd = buildingInstances[sp82].yCoord + 0x84;
	heightStart = buildingInstances[sp84].yCoord + 0x84;
	sp60 = (f32)(sp72 - arg0->unk4) / (f32)(sp72 - temp_a2);
	func_800FAE60_109E10(arg0);

	temp_v0 = func_8011D260_12C210((s8) (D_80052B34->unk0 >> 8), (s8) (D_80052B34->unk4 >> 8));
	sp50 = arg0->unk58;

	if ((((f64)sp60) != 0.0) && (((f64)sp60) != 1.0)) {
		D_8013FD70_14ED20 = 0x30;
		D_8013FD74_14ED24 = 0x8C;
	} else {
		D_8013FD70_14ED20 = 0x20;
		D_8013FD74_14ED24 = 0xAF;
	}

	if (D_80052B34->unk20 & VEHICLE_FLAG_ON_BRIDGE) {
		if (temp_v0 == sp84) {
			D_80159248 = -1;
		}
		if (temp_v0 == sp82) {
			D_80159248 = 1;
		}
	}

	if (D_80159320 & 0x800000) {
		temp_f2 = D_80052B34->unk54;
		temp_f12_2 = arg0->unk54;
		var_f14 = temp_f2 - temp_f12_2;

		if ((temp_f12_2 <= temp_f2 ? var_f14 : -var_f14) > 15.0f) {
			if ((temp_f12_2 <= temp_f2 ? var_f14 : -var_f14) < 117.0f) {
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

	if ((func_8000726C_7E6C(0xBULL) != 0) ||
		(func_8000726C_7E6C(0xCULL) == 0)) {
		D_80159248 = 0;
	}

	switch (D_80159248) {
	case -1:
		if (((f64)sp60) != 0.0) {
			func_801371B8_146168(arg0, 0x32, arg0->unk0, arg0->unk2, arg0->unk4, 0.3f);
			arg0->unk58 = (f32) ((f64) arg0->unk58 - ((f64)(u32)arg1->unk3E * 0.001));
		}
		break;
	case 1:
		if (((f64)sp60) != 1.0) {
			func_801371B8_146168(arg0, 0x32, arg0->unk0, arg0->unk2, arg0->unk4, 0.3f);
			arg0->unk58 = (f32) ((f64) arg0->unk58 + ((f64)(u32)arg1->unk3E * 0.001));
		}
		break;
	}

	if ((f64) arg0->unk58 < ((f64) -arg1->unk40 * 0.001)) {
		arg0->unk58 = (f64) -arg1->unk40 * 0.001;
	}
	if (((f64) arg1->unk40 * 0.001) < (f64) arg0->unk58) {
		arg0->unk58 = (f64) arg1->unk40 * 0.001;
	}

	sp60 += arg0->unk58;
	arg0->unk26 = (s16) ((f64) arg0->unk26 + ((f64) (arg0->unk58 - sp50) * 10000.0));

	if (sp60 < 0.0) {
		func_80137130_1460E0(0, 0xD1, arg0->unk0, arg0->unk2, arg0->unk4);
		sp60 = 0.0f;
		arg0->unk58 = 0.0f;
	}
	if (sp60 > 1.0) {
		func_80137130_1460E0(0, 0xD1, arg0->unk0, arg0->unk2, arg0->unk4);
		sp60 = 1.0f;
		arg0->unk58 = 0.0f;
	}

	temp_t8 = (u32) ((sp60 * 16384.0f) + 40960.0f);
	sp4C = ((f64)(f32)sins(temp_t8) / 32768.0) + 0.70710678;
	arg0->unk20 |= VEHICLE_FLAG_UNK1 | VEHICLE_FLAG_AIRBORNE;
	arg0->unk20 &= ~VEHICLE_FLAG_ON_BRIDGE;

	func_800FB44C_10A3FC(arg0, sp76);
	sp50 = (f32) (-((f64) (f32) coss(arg0->unkA) / 32768.0) * 15.0);
	func_800FB468_10A418(arg0,
		(((f32) heightStart - (sp4C * -737.0f)) +
		(sp60 * (f32) (heightEnd - heightStart))) + sp50);
	func_800FB484_10A434(arg0, (f32)sp72 - (sp60 * (f32)(sp72 - temp_a2)));

	D_80159246 = (s16) (((f64) (f32) coss(temp_t8) / 32768.0) * -1400.0);
	arg0->unk26 = 0;
	arg0->unkA = 0;
	arg0->unk24 = 0;
	arg0->unk8 = 0;
	arg0->unk6 = -0x4000;
	arg0->unk58 *= ((f64)(u32)arg1->unk47 / 255.0);

	if ((f64) ((arg0->unk58 >= 0.0f) ? arg0->unk58 : -arg0->unk58) < 0.0003) {
		arg0->unk58 = 0.0f;
	}
	D_80159250 = 0;
}

void func_8010B5C8_11A578(VehicleInstance *arg0, VehicleType *arg1) {
	func_800FB430_10A3E0(arg0, 0.0f);
	arg0->unk30 = 0.0f;
	arg0->unk34 = 0.0f;
	arg0->unk38 = 0.0f;
}

void func_8010B60C_11A5BC(VehicleInstance *arg0, VehicleType *arg1)
{
	f32 temp_f0;
	temp_f0 = arg1->unk45 * 0.00390625;
	arg0->unk26 += (func_800F9C50_108C00(arg0->unk2A, arg0->unkA) / arg1->unk44);
	arg0->unk24 += (func_800F9C50_108C00(arg0->unk28, arg0->unk8) / arg1->unk44);

	arg0->unkA = arg0->unkA + arg0->unk26;
	arg0->unk8 = arg0->unk8 + arg0->unk24;
	arg0->unk6 = arg0->unk6 + arg0->unk22 + arg0->unk16;
	arg0->unk26 = arg0->unk26 * temp_f0;
	arg0->unk24 = arg0->unk24 * temp_f0;
	arg0->unk22 = arg0->unk22 * temp_f0;
	arg0->unk16 = arg0->unk16 * temp_f0;
	func_800FB430_10A3E0(arg0, arg0->unk58 / 4);
	arg0->unk30 = arg0->unk30 / 4;
	arg0->unk34 = arg0->unk34 / 4;
	arg0->unk38 = arg0->unk38 / 4;
	func_801098E8_118898(arg0);
	func_801095BC_11856C(arg0);
}

s32 func_8010B804_11A7B4(s32 arg0, VehicleInstance *arg1, s16 arg2, s16 arg3) {
	VehicleType *type;
	s32 pad;
	s32 damage;
	s32 speed;
	s16 limit;
	type = &vehicleTypes[arg1->unk1A];
	speed = func_800FB11C_10A0CC(arg1);
	damage = type->unk32 * speed;
	arg2 &= 0xFFF0;
	arg3 &= 0xFFF0;
	if (arg1->unk1A != 0) {
		func_80122524_1314D4((EntityInstance *)arg1, (s16)(speed >> 4), arg2, arg3);
	}
	limit = ((s16 (*)[16])D_8013BB6C_14AB1C)[currentLevel][arg0];
	if (limit * 300 < damage ||
		((type->unk4C & 0x20000000) && (arg1->unk20 & VEHICLE_FLAG_AIRBORNE))) {
		if (func_80078828_877D8(arg2, arg3, (u16)func_800FB160_10A110(arg1), 1) != 0) {
			func_80014180_14D80((s8)arg0);
			return 1;
		}
	}
	return 0;
}

s32 func_8010B970_11A920(u8 *arg0, VehicleInstance *arg1) {
	VehicleType *sp1C;
	s32 sp18;

	sp1C = &vehicleTypes[arg1->unk1A];
	if (func_80078FE0_87F90(arg0, arg1, &sp18) != 0 ||
			((sp1C->unk4C & 0x20000000) && (arg1->unk20 & VEHICLE_FLAG_AIRBORNE))) {
		func_800792E0_88290(arg0, sp18);
		func_80014180_14D80(0);
		return 1;
	}
	return 0;
}

void func_8010BA04_11A9B4(void) {
	VehicleType *type;
	s32 pad1;
	VehicleInstance *otherVehicle;
	s32 pad2;
	s32 modeTemp;
	s32 temp;
	u16 flags;
	f32 tempF0;

	type = &vehicleTypes[D_80052B34->unk1A];

	if ((D_8015930E == 0) && (currentLevel == 1) && (D_80052B34->unk1A == 3)) {
		if ((D_80052B34->unk0 < 0x3601) || (D_80052B34->unk4 >= -0x5400)) {
			if (!(D_80052B34->unk20 & VEHICLE_FLAG_AIRBORNE)) {
				D_80158BD0[D_80052B34 - vehicleInstances] = 0x20;
				func_800FDEA8_10CE58(D_80052B2C, 0);
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
		D_80159238 = (f32)((f64)((D_80052B34->unk54 - otherVehicle->unk54) * tempF0) * (0.845));
		D_8015923C = tempF0 * 418.0f;
		D_80052B34->unk30 = 0.0f;
		D_80052B34->unk34 = 0.0f;
		D_80052B34->unk38 = 0.0f;
		func_800FB40C_10A3BC(D_80052B34, D_8015EA38 - D_8015EA34);
	}

	if (!(D_80052B34->unk20 & VEHICLE_FLAG_AIRBORNE) && (D_80159320 & 0x00400000) && (D_80159268 != 0)) {
		D_8015930E = 0;
		D_80159268 = 0;
	}

	if ((D_80052B34->unk1A != 0) && (D_80052B34->unk2 >= D_80222A70) && (D_801591AC != 6)) {
		func_800E1D48_F0CF8((u16)(u32)func_800FB11C_10A0CC(D_80052B34), (u8)(u32)(((f32)D_80052B34->unk1C * 255.0f) / (f32)type->hitPoints));
	}

	if ((D_80052B34->unk1A != 0) && !(D_80052B34->unk20 & VEHICLE_FLAG_AIRBORNE) && (func_800F9C50_108C00(D_80052B34->unk6, D_80052B34->unkE) >= 0x4000)) {
		D_80052B34->unkE += 0x8000;
		D_80052B34->unk12 = -D_80052B34->unk12;
		D_80052B34->unk10 = -D_80052B34->unk10;

		if (D_80052B34->unk12 < (vehicleTypes[D_80052B34->unk1A].unk42 * 2)) {
			D_80052B34->unk34 = -(D_80052B34->unk12 >> 1);
			D_80052B34->unk12 >>= 1;
			D_80052B34->unk20 |= 2;
			temp = func_800038E0_44E0();
			D_80052B34->unk24 = D_80052B34->unk24 + (temp & 0x3FF) - 0x1FF;
			temp = func_800038E0_44E0();
			D_80052B34->unk22 = D_80052B34->unk22 + (temp & 0x3FF) - 0x1FF;
			temp = func_800038E0_44E0();
			D_80052B34->unk26 = D_80052B34->unk26 + (temp & 0x3FF) - 0x1FF;
		}
	}

	if (D_801591C0 < 4) {
		D_801591C0--;
	} else {
		D_801591C0 = (s16)(D_801591C0 - (D_801591C0 >> 2));
	}

	if (D_801591C0 < 0) {
		D_801591C0 = 0;
	}

	modeTemp = D_80050AD4;
	if (modeTemp == 3) {
		gameplayMode = 0;
		modeTemp = D_80050AD4 = D_80050AD0;
	}

	if (modeTemp == 0xD) {
		gameplayMode = 0x10;
		modeTemp = D_80050AD4 = D_80050AD0;
	}

	if (modeTemp == 0xC) {
		gameplayMode = 8;
		D_80050AD4 = D_80050AD0;
	}

	if ((currentControllerStates[0].button & 4) && (gameplayMode != 3) && (gameplayMode != 0xB) && (D_80159300 == 0)) {
		flags = D_80052B34->unk20;
		if (!(flags & VEHICLE_FLAG_PATH_GUIDED)) {
			if (!(flags & VEHICLE_FLAG_AIRBORNE) || ((D_80222A70 >= D_80052B34->unk2) && !((vehicleTypes[D_80052B34->unk1A].unk4C & 0x20000000) && (vehicleTypes[D_80052B34->unk1A].unk4C & 0x100)))) {
				if (!((currentLevel == 4) && (D_80052B34->unk1A == 0xE)) && (D_80159264 == 0)) {
					func_800FDEA8_10CE58(D_80052B2C, 0);
				}
			}
		}
	}

	if ((D_80050AD4 >= 2) && ((currentLevel != 3) || (D_80052B34->unk1A != 3))) {
		func_8000345C_405C(0x2000);
	}

	if (!(D_80159320 & 2) && (D_80158E60 > 700.0f)) {
		D_80158E60 -= 10.0f;
	}
}

void func_8010C14C_11B0FC(void) {
	static s32 state = 0;
	static s32 timer;
	s32 sp3C;
	s32 sp38;
	s32 sp34;

	switch (state) {
		case 0:
			D_80159312 = 0;
			func_8001A650_1B250(8);
			D_8013B934_14A8E4 = 1000;
			func_800153D8_15FD8(0xD0);
			state++;
			timer = 0;
			break;

		case 1:
			D_80159308 = func_800065A4_71A4(0, -0x1B58, timer);
			timer += 0x2C8;
			if (timer >= 0x10000) {
				func_800156C8_162C8(0xD0);
				func_800153D8_15FD8(0xD1);
				state++;
				timer = 0;
			}
			break;

		case 2:
			if (timer++ >= 10) {
				func_800153D8_15FD8(0x63);
				state++;
				timer = 0;
				func_80128428_1373D8((AlienInstance *) D_80052B34, 0, 0x64, -0xD8, &sp3C, &sp38, &sp34);
				func_800DF038_EDFE8((s16) sp3C, (s16) sp38, (s16) sp34, 0x46, 0, 0);
				return;
			}
			break;

		case 3:
			D_80159312 += timer;
			timer++;
			if (D_80159312 >= 0x1A9) {
				state++;
				timer = 0;
			}
			break;

		case 4:
			vehicleInstances[D_80159316].unk20 |= VEHICLE_FLAG_SCUD_LAUNCHED;
			D_80158E64 = &vehicleInstances[63];
			D_80158E64->unk1A = 0xE;
			func_800FAE84_109E34(D_80158E64);
			func_800FB44C_10A3FC(D_80158E64, D_80159284);
			func_800FB468_10A418(D_80158E64, D_80159288);
			func_800FB484_10A434(D_80158E64, D_8015928C);
			func_800FB430_10A3E0(D_80158E64, 30.0f);
			D_80158E64->unk6 = D_8015927E;
			D_80158E64->unkA = D_80159280;
			D_80158E64->unk8 = D_80159282;
			D_80158E64->unk20 |= (0x8000 | VEHICLE_FLAG_INSIDE_PLAY_BOUNDS | VEHICLE_FLAG_AIRBORNE);
			func_800FAD10_109CC0();
			func_800FD510_10C4C0(0, 0x3F);
			vehicleTypes[14].unk42 = 0xC8;
			func_80107EBC_116E6C(D_80158E64);
			D_801591AC = 0;
			D_8015930E = 0;
			D_80159312 = 0;
			D_80159308 = 0;
			state = 0;
			break;
	}
}

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

void func_8010C4EC_11B49C(VehicleInstance *arg0) {
	f32 sp24;
	s32 pad;
	s16 sp1E;
	s16 v0;
	s16 a0;
	u8 temp_v0;
	f32 neg34;
	f32 neg38;

	sp1E = func_800FAE60_109E10(arg0);
	if (arg0 != D_80159D5C) {
		D_80159D64 = &vehicleTypes[arg0->unk1A];
		D_80159D5C = arg0;
		if (D_80159D64->unk16 == 1) {
			D_80159D34 = (f32)(D_80159D64->unk36 >> 1);
			D_80159D38 = 0.0f;
			D_80159D3C = 0.0f;
			D_80159D40 = (f32)(-D_80159D64->unk34 >> 1);
		} else {
			D_80159D34 = (f32)(((f32)coss(D_80159D5C->unk6) / 32768.0) * (D_80159D64->unk36 >> 1));
			D_80159D38 = (f32)(((f32)sins(D_80159D5C->unk6) / 32768.0) * (D_80159D64->unk36 >> 1));
			D_80159D3C = (f32)(((f32)sins(D_80159D5C->unk6) / 32768.0) * (D_80159D64->unk34 >> 1));
			D_80159D40 = (f32)(-((f32)coss(D_80159D5C->unk6) / 32768.0) * (D_80159D64->unk34 >> 1));
		}

		D_80159D78[0] = D_80159D34 + D_80159D3C;
		D_80159D98[0] = D_80159D38 + D_80159D40;
		D_80159D78[1] = D_80159D34 - D_80159D3C;
		D_80159D98[1] = D_80159D38 - D_80159D40;
		neg34 = -D_80159D34;
		D_80159D78[2] = neg34 - D_80159D3C;
		neg38 = -D_80159D38;
		D_80159D98[2] = neg38 - D_80159D40;
		D_80159D78[3] = neg34 + D_80159D3C;
		D_80159D98[3] = neg38 + D_80159D40;
		D_80159D14 = D_80159D18 = D_80159D1C = D_80159D20 = 0.0f;

		if ((func_800E60CC_F507C(2, (u8)sp1E) != 0) || (D_80159D64->unk16 == 1)) {
			D_80159D6C = 2;
			temp_v0 = arg0->unk1A;
			if (temp_v0 == 0) {
				D_80159D54 = 14.0f;
			} else if (D_80159D64->unk16 == 1) {
				D_80159D54 = vehicleTypes[temp_v0].unkC;
			} else {
				D_80159D54 = (f32)(vehicleTypes[temp_v0].unkC * D_80144CF8_153CA8.value);
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
		D_80159D1C = sp24 / (f32)((f32)sins(D_80159D5C->unk6) / 32768.0);
		sp24 = (f32)(D_80159D64->unk34 >> 1);
		D_80159D20 = sp24 / (f32)((f32)coss(D_80159D5C->unk6) / 32768.0);
		D_80159D6C = 3;
	}
}

void func_8010CA38_11B9E8(VehicleInstance *arg0) {
	f32 sp24;
	s32 pad;
	s16 sp1E;
	s16 v0;
	s16 a0;
	u8 temp_v0;
	f32 neg34;
	f32 neg38;

	sp1E = func_800FAE60_109E10(arg0);
	if (arg0 == D_80159D60) {
		return;
	}
	D_80159D60 = arg0;
	D_80159D68 = &vehicleTypes[arg0->unk1A];
	if (arg0->unk1A == 0) {
		D_80159D44 = (f32)(D_80159D68->unk36 >> 1);
		D_80159D48 = 0.0f;
		D_80159D4C = 0.0f;
		D_80159D50 = (f32)(-D_80159D68->unk34 >> 1);
	} else {
		D_80159D44 = (f32)(((f32)coss(D_80159D60->unk6) / 32768.0) * (D_80159D68->unk36 >> 1));
		D_80159D48 = (f32)(((f32)sins(D_80159D60->unk6) / 32768.0) * (D_80159D68->unk36 >> 1));
		D_80159D4C = (f32)(((f32)sins(D_80159D60->unk6) / 32768.0) * (D_80159D68->unk34 >> 1));
		D_80159D50 = (f32)(-((f32)coss(D_80159D60->unk6) / 32768.0) * (D_80159D68->unk34 >> 1));
	}

	D_80159D78[4] = D_80159D44 + D_80159D4C;
	D_80159D98[4] = D_80159D48 + D_80159D50;
	D_80159D78[5] = D_80159D44 - D_80159D4C;
	D_80159D98[5] = D_80159D48 - D_80159D50;
	neg34 = -D_80159D44;
	D_80159D78[6] = neg34 - D_80159D4C;
	neg38 = -D_80159D48;
	D_80159D98[6] = neg38 - D_80159D50;
	D_80159D78[7] = neg34 + D_80159D4C;
	D_80159D98[7] = neg38 + D_80159D50;
	D_80159D24 = D_80159D28 = D_80159D2C = D_80159D30 = 0.0f;

	if ((func_800E60CC_F507C(2, (u8)sp1E) != 0) || (D_80159D68->unk16 == 1)) {
		D_80159D70 = 2;
		temp_v0 = arg0->unk1A;
		if (temp_v0 == 0) {
			D_80159D58 = 14.0f;
		} else if (D_80159D68->unk16 == 1) {
			D_80159D58 = vehicleTypes[temp_v0].unkC;
		} else {
			D_80159D58 = (f32)(vehicleTypes[temp_v0].unkC * D_80144D00_153CB0.value);
		}
		D_80159D58 *= D_80159D58;
		return;
	}

	v0 = D_80159D60->unk6;
	if (((v0 < 100) && (v0 >= -99)) || (((a0 = v0 - 0x8000), (a0 < 100)) && (a0 >= -99))) {
		D_80159D70 = 1;
		return;
	}

	a0 = v0 - 0x4000;
	if (((a0 < 100) && (a0 >= -99)) || (((s16)(v0 + 0x4000) < 100) && ((s16)(v0 + 0x4000) >= -99))) {
		D_80159D70 = 0;
		return;
	}

	D_80159D24 = D_80159D50 / D_80159D4C;
	D_80159D28 = D_80159D48 / D_80159D44;
	sp24 = (f32)(D_80159D68->unk36 >> 1);
	D_80159D2C = sp24 / (f32)((f32)sins(D_80159D60->unk6) / 32768.0);
	sp24 = (f32)(D_80159D68->unk34 >> 1);
	D_80159D30 = sp24 / (f32)((f32)coss(D_80159D60->unk6) / 32768.0);
	D_80159D70 = 3;
}

s32 func_8010CF7C_11BF2C(s16 arg0, s16 arg1) {
	VehicleInstance *vehicle;
	VehicleType *type;
	f32 dx;
	f32 dz;
	f32 temp;
	f32 absX;
	s32 count;

	vehicle = D_80159D5C;
	dx = arg0 - vehicle->unk0;
	dz = arg1 - vehicle->unk4;
	count = 0;

	switch (D_80159D6C) {
		case 3:
			temp = (-D_80159D14 * dx) + dz;
			if (((D_80159D1C <= temp) && (temp <= -D_80159D1C)) || ((temp <= D_80159D1C) && (-D_80159D1C <= temp))) {
				count = 1;
			}

			temp = (-D_80159D18 * dx) + dz;
			if (((D_80159D20 <= temp) && (temp <= -D_80159D20)) || ((temp <= D_80159D20) && (-D_80159D20 <= temp))) {
				count++;
			}
			break;
		case 0:
			absX = -dx < dx ? dx : -dx;
			type = D_80159D64;
			if (absX <= (type->unk34 >> 1)) {
				temp = -dz < dz ? dz : -dz;
				if (temp <= (type->unk36 >> 1)) {
					count = 2;
				}
			}
			break;

		case 1:
			absX = -dx < dx ? dx : -dx;
			type = D_80159D64;
			if (absX <= (type->unk36 >> 1)) {
				temp = -dz < dz ? dz : -dz;
				if (temp <= (type->unk34 >> 1)) {
					count = 2;
				}
			}
			break;

		case 2:
			if (((dx * dx) + (dz * dz)) < D_80159D54) {
				count = 2;
			}
			break;

	}

	return count == 2;
}

s32 func_8010D234_11C1E4(s16 arg0, s16 arg1) {
	VehicleInstance *vehicle;
	VehicleType *type;
	f32 dx;
	f32 dz;
	f32 temp;
	f32 absX;
	s32 count;

	vehicle = D_80159D60;
	dx = arg0 - vehicle->unk0;
	dz = arg1 - vehicle->unk4;
	count = 0;

	switch (D_80159D70) {
		case 3:
			temp = (-D_80159D24 * dx) + dz;
			if (((D_80159D2C <= temp) && (temp <= -D_80159D2C)) || ((temp <= D_80159D2C) && (-D_80159D2C <= temp))) {
				count = 1;
			}

			temp = (-D_80159D28 * dx) + dz;
			if (((D_80159D30 <= temp) && (temp <= -D_80159D30)) || ((temp <= D_80159D30) && (-D_80159D30 <= temp))) {
				count++;
			}
			break;
		case 0:
			absX = -dx < dx ? dx : -dx;
			type = D_80159D68;
			if (absX <= (type->unk34 >> 1)) {
				temp = -dz < dz ? dz : -dz;
				if (temp <= (type->unk36 >> 1)) {
					count = 2;
				}
			}
			break;

		case 1:
			absX = -dx < dx ? dx : -dx;
			type = D_80159D68;
			if (absX <= (type->unk36 >> 1)) {
				temp = -dz < dz ? dz : -dz;
				if (temp <= (type->unk34 >> 1)) {
					count = 2;
				}
			}
			break;

		case 2:
			if (((dx * dx) + (dz * dz)) < D_80159D58) {
				count = 2;
			}
			break;

	}

	return count == 2;
}

s32 func_8010D4EC_11C49C(s16 arg0, s16 arg1, s16 *arg2, s16 *arg3, VehicleInstance *arg4)
{
	f32 slopeMain[1];
	f32 interceptMain;
	s32 absFirst;
	s32 pad;
	s32 sideFlags[4];
	s32 distSq;
	f32 x0;
	s32 bestDist;
	s32 worstDist;
	s32 closestCorner;
	s32 farthestCorner;
	s32 i;
	s16 chosenCorner;
	s32 startSide;
	s16 firstAng;
	s16 secondAng;
	s16 centerAng;
	s16 firstCorner;
	s16 secondCorner;
	f32 x1;
	f32 z1;
	f32 xIn;
	f32 zIn;
	f32 slopeEdge;
	f32 interceptEdge;
	f32 z0;
	f32 x2;
	f32 z2;
	f32 xHit;
	f32 zHit;

	bestDist = 0x7FFFFFFF;
	worstDist = 0;
	closestCorner = -1;
	farthestCorner = -1;

	func_80003824_4424(*arg3 - arg1, *arg2 - arg0);
	secondCorner = -1;
	firstCorner = -1;
	func_8010C4EC_11B49C(arg4);

	/* These empty tests preserve IDO's ordering of cached spill slots. */
	if (arg4->unk54 + arg4->unk4C) {}
	if (closestCorner >= 0)
	{
		if (D_80159D78[closestCorner]) {}
		if (D_80159D98[closestCorner]) {}
	}
	x0 = *arg2;
	z0 = *arg3;

	i = 4;
	if ((x0 <= arg0 ? arg0 - x0 : -(arg0 - x0)) < 5.0f)
	{
		x0 = arg0 + 5.0f;
	}

	slopeMain[0] = (z0 - arg1) / (x0 - arg0);
	slopeMain[0] = slopeMain[0]; /* Preserve IDO main-slope register allocation. */
	interceptMain = arg1 - (slopeMain[0] * arg0);

	while (i--)
	{
		sideFlags[i] = interceptMain <
			((D_80159D5C->unk54 + D_80159D98[i]) -
			 (slopeMain[0] * (D_80159D78[i] + D_80159D5C->unk4C)));
	}

	for (i = 3;i--;)
	{
		if (sideFlags[3] == sideFlags[i])
		{
			continue;
		}

		xIn = *arg2;
		zIn = *arg3;

		i = 4;
		while (i--)
		{
			distSq = ((s32)((D_80159D78[i] + arg4->unk4C) - arg0) * (s32)((D_80159D78[i] + arg4->unk4C) - arg0)) + ((s32)((D_80159D98[i] + arg4->unk54) - arg1) * (s32)((D_80159D98[i] + arg4->unk54) - arg1));

			if (distSq < bestDist)
			{
				bestDist = distSq;
				closestCorner = i;
			}

			if (distSq > worstDist)
			{
				worstDist = distSq;
				farthestCorner = i;
			}
		}

		x1 = D_80159D78[closestCorner] + arg4->unk4C;
		z1 = D_80159D98[closestCorner] + arg4->unk54;

		slopeEdge = (arg1 - z1) / (arg0 - x1);
		interceptEdge = z1 - (slopeEdge * x1);
		startSide = interceptEdge < (zIn - (xIn * slopeEdge));

		i = 4;
		while (i--)
		{
			if ((i == closestCorner) || (i == farthestCorner))
			{
				continue;
			}

			x2 = D_80159D78[i] + D_80159D5C->unk4C;
			z2 = D_80159D98[i] + D_80159D5C->unk54;
			if (startSide == (interceptEdge < (z2 - (slopeEdge * x2))))
			{
				if (firstCorner == -1)
				{
					firstCorner = i;
					firstAng = func_80003824_4424(z2 - arg1, x2 - arg0);
				}
				else
				{
					secondCorner = i;
					secondAng = func_80003824_4424(z2 - arg1, x2 - arg0);
				}
			}
		}

		if (secondCorner == -1)
		{
			chosenCorner = firstCorner;
		}
		else
		{
			centerAng = func_80003824_4424(z1 - arg1, x1 - arg0);
			firstAng = func_800F9C50_108C00(centerAng, firstAng);
			secondAng = func_800F9C50_108C00(centerAng, secondAng);
			absFirst = firstAng >= 0 ? firstAng : -firstAng;
			if ((secondAng >= 0 ? secondAng : -secondAng) < absFirst)
			{
				chosenCorner = firstCorner;
			}
			else
			{
				chosenCorner = secondCorner;
			}
		}

		if (chosenCorner == -1)
		{
			*arg2 = -0x7FFF;
			*arg3 = -0x7FFF;
			return 0;
		}

		x1 = D_80159D78[closestCorner] + arg4->unk4C;
		z1 = D_80159D98[closestCorner] + arg4->unk54;
		xIn = D_80159D78[chosenCorner] + arg4->unk4C;
		zIn = D_80159D98[chosenCorner] + arg4->unk54;

		if ((xIn <= x1 ? x1 - xIn : -(x1 - xIn)) < 5.0f)
		{
			xIn = x1 + 5.0f;
		}

		if ((zIn <= z1 ? z1 - zIn : -(z1 - zIn)) < 5.0f)
		{
			zIn = z1 + 5.0f;
		}

		slopeEdge = (zIn - z1) / (xIn - x1);
		interceptEdge = z1 - (slopeEdge * x1);

		sideFlags[0] = interceptEdge < (D_80159D5C->unk54 - (slopeEdge * D_80159D5C->unk4C));
		sideFlags[1] = interceptEdge < (arg1 - (slopeEdge * arg0));

		xHit = x2 = (interceptMain - interceptEdge) / (slopeEdge - slopeMain[0]);
		zHit = z2 = (slopeMain[0] * xHit) + interceptMain;

		if ((D_80144D08_153CB8[0] < zHit) || (zHit < -32768.0) ||
			(D_80144D10_153CC0[0] < xHit) || (xHit < -32768.0))
		{
			*arg2 = -0x7FFF;
			*arg3 = -0x7FFF;
		}
		else
		{
			*arg2 = x2;
			*arg3 = z2;
		}

		return sideFlags[0] != sideFlags[1];
	}

	return 0;
}

s32 func_8010DC00_11CBB0(s32 arg0, s32 arg1, s32 arg2) {
	VehicleInstance *vehicle;
	f32 dx;
	f32 dz;
	s32 i;
	s32 xDelta;
	s32 zDelta;
	s32 negX;
	s32 absZ;
	s16 trig[2];

	if (D_80159D6C == 2) {
		vehicle = D_80159D5C;
		dx = (f32)(vehicle->unk0 - arg0);
		dz = (f32)(vehicle->unk4 - arg1);
		return sqrtf((dx * dx) + (dz * dz)) <= (f32)(D_80159D64->unkC + arg2);
	}

	i = 4;
	if (1) {
	while (i--) {
		xDelta = ((s32)D_80159D78[i] + D_80159D5C->unk0) - arg0;
		zDelta = ((s32)D_80159D98[i] + D_80159D5C->unk4) - arg1;


		negX = -xDelta;
		if (arg2 >= (negX < xDelta ? xDelta : negX)) {
			absZ = -zDelta < zDelta ? zDelta : -zDelta;

			if ((arg2 >= absZ) && (((xDelta * xDelta) + (zDelta * zDelta)) < (arg2 * arg2))) {
				return 1;
			}
		}
	}
	}

	trig[0] = coss(D_80159D5C->unk6);
	if (func_8010CF7C_11BF2C((s16)(s32)((((f32)trig[0] / 32768.0) * arg2) + arg0),
			(s16)(s32)((((f32)sins(D_80159D5C->unk6) / 32768.0) * arg2) + arg1)) != 0) {
		return 1;
	}

	trig[0] = coss(D_80159D5C->unk6);
	if (func_8010CF7C_11BF2C((s16)(s32)(arg0 - ((((f32)trig[0] / 32768.0) * arg2))),
			(s16)(s32)(arg1 - ((((f32)sins(D_80159D5C->unk6) / 32768.0) * arg2)))) != 0) {
		return 1;
	}

	trig[0] = sins(D_80159D5C->unk6);
	if (func_8010CF7C_11BF2C((s16)(s32)(arg0 - ((((f32)trig[0] / 32768.0) * arg2))),
			(s16)(s32)((((f32)coss(D_80159D5C->unk6) / 32768.0) * arg2) + arg1)) != 0) {
		return 1;
	}

	trig[0] = sins(D_80159D5C->unk6);
	if (func_8010CF7C_11BF2C((s16)(s32)((((f32)trig[0] / 32768.0) * arg2) + arg0),
			(s16)(s32)(arg1 - ((((f32)coss(D_80159D5C->unk6) / 32768.0) * arg2)))) != 0) {
		return 1;
	}

	return 0;
}

s32 func_8010E040_11CFF0(s32 arg0, s32 arg1, s32 arg2) {
	VehicleInstance *vehicle;
	s32 i;
	s32 xDelta;
	s32 zDelta;
	s32 negX;
	s32 absZ;
	s32 pad;
	s32 pad2;
	s16 trig[2];

	if (D_80159D70 == 2) {
		f32 dx;
		f32 dz;
		vehicle = D_80159D60;
		dx = (f32)(vehicle->unk0 - arg0);
		dz = (f32)(vehicle->unk4 - arg1);
		return sqrtf((dx * dx) + (dz * dz)) <= (f32)(D_80159D68->unkC + arg2);
	}

	i = 8;
	if (1) {
		while (i-- >= 5) {
			negX = D_80159D60->unk0;
			xDelta = ((s32)D_80159D78[i] + negX) - arg0;
			zDelta = ((s32)D_80159D98[i] + D_80159D60->unk4) - arg1;

			negX = -xDelta;
			if (arg2 >= (negX < xDelta ? xDelta : negX)) {
				absZ = -zDelta < zDelta ? zDelta : -zDelta;

				if ((arg2 >= absZ) && (((xDelta * xDelta) + (zDelta * zDelta)) < (arg2 * arg2))) {
					return 1;
				}
			}
		}
	}

	trig[0] = coss(D_80159D60->unk6);
	if (func_8010D234_11C1E4((s16)(s32)((((f32)trig[0] / 32768.0) * arg2) + arg0),
			(s16)(s32)((((f32)sins(D_80159D60->unk6) / 32768.0) * arg2) + arg1)) != 0) {
		return 1;
	}

	trig[0] = coss(D_80159D60->unk6);
	if (func_8010D234_11C1E4((s16)(s32)(arg0 - ((((f32)trig[0] / 32768.0) * arg2))),
			(s16)(s32)(arg1 - ((((f32)sins(D_80159D60->unk6) / 32768.0) * arg2)))) != 0) {
		return 1;
	}

	trig[0] = sins(D_80159D60->unk6);
	if (func_8010D234_11C1E4((s16)(s32)(arg0 - ((((f32)trig[0] / 32768.0) * arg2))),
			(s16)(s32)((((f32)coss(D_80159D60->unk6) / 32768.0) * arg2) + arg1)) != 0) {
		return 1;
	}

	trig[0] = sins(D_80159D60->unk6);
	if (func_8010D234_11C1E4((s16)(s32)((((f32)trig[0] / 32768.0) * arg2) + arg0),
			(s16)(s32)(arg1 - ((((f32)coss(D_80159D60->unk6) / 32768.0) * arg2)))) != 0) {
		return 1;
	}

	return 0;
}

s32 func_8010E480_11D430(void) {
	BuildingInstance *building;
	VehicleInstance *vehicle;
	s16 x;
	s16 z;
	s32 i;
	u8 index;
	s32 radius;

	i = D_80152C96;
	while (i--) {
		index = D_80152CA0[i].unk0;
		vehicle = &vehicleInstances[index];
		if (vehicle != D_80159D5C) {
			switch (D_80152CA0[i].unk1) {
			case 1:
				building = &buildingInstances[index];
				x = building->xCoord;
				z = building->zCoord;
				x = (x << 8) + 0x80;
				z = (z << 8) + 0x80;
				if (func_8010DC00_11CBB0(x, z, 0x12)) {
					goto hit;
				}
				vehicle = &vehicleInstances[(s32)D_80152CA0[i].unk0];
			case 2:
				x = vehicle->unk0;
				z = vehicle->unk4;
				radius = vehicleTypes[vehicle->unk1A].unkC / 12;
				/* Preserve IDO's pointer allocation; both updates compile away here. */
				vehicle = &vehicle[1];
				vehicle = &vehicle[-1];
				if (func_8010DC00_11CBB0(x, z, radius)) {
					goto hit;
				}
			default:
				continue;
			}
		}
	}
	return 0;
hit:
	func_80102D00_111CB0(D_80159D5C, (D_80159D5C->unk0 - x) * 0.0625, 0.0f, (D_80159D5C->unk4 - z) * 0.0625);
	return 1;
}

s32 func_8010E684_11D634(VehicleInstance *arg0, AlienInstance *arg1) {
	AlienType *type;
	f32 playerX;
	f32 alienX;
	f32 playerZ;
	f32 alienZ;
	s32 deltaX;
	s32 deltaZ;
	s32 i;

	type = &alienTypes[arg1->typeIndex];
	if (D_80159D6C == 2) {
		return 1;
	}

	playerX = arg0->unk0;
	alienX = arg1->unk0;
	playerZ = arg0->unk4;
	alienZ = arg1->unk4;

	for (i = 0; i < 4; i++) {
		deltaX = (s32)((D_80159D78[i] + playerX) - alienX);
		deltaZ = (s32)((D_80159D98[i] + playerZ) - alienZ);

		if (((deltaX * deltaX) + (deltaZ * deltaZ)) < type->unk8) {
			return 1;
		}
	}

	D_80159D78[4] =
		(((f32)coss(arg0->unk6) / 32768.0) * type->unkC) + arg1->unk0;
	D_80159D98[4] =
		(((f32)sins(arg0->unk6) / 32768.0) * type->unkC) + arg1->unk4;
	D_80159D78[5] =
		(arg1->unk0 - (((f32)coss(arg0->unk6) / 32768.0) * type->unkC));
	D_80159D98[5] =
		(arg1->unk4 - (((f32)sins(arg0->unk6) / 32768.0) * type->unkC));
	D_80159D78[6] =
		(arg1->unk0 - (((f32)sins(arg0->unk6) / 32768.0) * type->unkC));
	D_80159D98[6] =
		(((f32)coss(arg0->unk6) / 32768.0) * type->unkC) + arg1->unk4;
	D_80159D78[7] =
		(((f32)sins(arg0->unk6) / 32768.0) * type->unkC) + arg1->unk0;
	D_80159D98[7] =
		(arg1->unk4 - (((f32)coss(arg0->unk6) / 32768.0) * type->unkC));

	for (i = 4; i < 8; i++) {
		if (func_8010CF7C_11BF2C((s16)(s32)D_80159D78[i], (s16)(s32)D_80159D98[i]) != 0) {
			return 1;
		}
	}

	return 0;
}

s32 func_8010EA54_11DA04(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 *arg4) {
	s16 camX;
	s16 camY;
	int temp;
	f32 hit[2];
	s32 absX;
	s32 absY;
	f32 savedX[1];
	s16 y;
	s32 padding; /* Preserve the converted-coordinate stack homes. */
	f32 endpoints[3];

	y = arg1;
	camX = D_80159D5C->unk0;
	temp = (s16)(((arg0 - arg2) >> 1) + arg0) - camX;
	if (temp >= 0) {
		absX = temp;
	} else {
		absX = -temp;
	}
	camY = D_80159D5C->unk4;
	temp = (s16)(((y - arg3) >> 1) + y) - camY;
	if (temp >= 0) {
		absY = temp;
	} else {
		absY = -temp;
	}
	if ((absY + absX) >= ((D_80159D64->unkC * 2) + 0x200)) {
		return 0;
	}

	savedX[0] = arg0;
	endpoints[2] = arg1;
	endpoints[1] = arg2;
	endpoints[0] = arg3;
	if (func_8010EF40_11DEF0(savedX[0], endpoints[2], endpoints[1], endpoints[0], D_80159D78[0] + camX, D_80159D98[0] + camY, D_80159D78[1] + camX, D_80159D98[1] + camY, &hit[1], &hit[0]) ||
		func_8010EF40_11DEF0(savedX[0], endpoints[2], endpoints[1], endpoints[0], D_80159D78[1] + D_80159D5C->unk0, D_80159D98[1] + D_80159D5C->unk4, D_80159D78[2] + D_80159D5C->unk0, D_80159D98[2] + D_80159D5C->unk4, &hit[1], &hit[0]) ||
		func_8010EF40_11DEF0(savedX[0], endpoints[2], endpoints[1], endpoints[0], D_80159D78[2] + D_80159D5C->unk0, D_80159D98[2] + D_80159D5C->unk4, D_80159D78[3] + D_80159D5C->unk0, D_80159D98[3] + D_80159D5C->unk4, &hit[1], &hit[0]) ||
		func_8010EF40_11DEF0(savedX[0], endpoints[2], endpoints[1], endpoints[0], D_80159D78[3] + D_80159D5C->unk0, D_80159D98[3] + D_80159D5C->unk4, D_80159D78[0] + D_80159D5C->unk0, D_80159D98[0] + D_80159D5C->unk4, &hit[1], &hit[0])) {
		*arg4 = func_800F9D24_108CD4((s16)(s32)hit[1], (s16)(s32)hit[0]);
		return 1;
	}
	*arg4 = 0;
	return 0;
}

void func_8010ED84_11DD34(f32 *arg0, f32 *arg1, s32 arg2) {
	f32 dist;
	f32 mag;
	f32 scale;

	dist = D_80159D68->unkC;
	if (arg2 != 0) {
		mag = sqrtf((D_80159D34 * D_80159D34) + (D_80159D38 * D_80159D38));
		if (mag < 1.0) {
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
	if (mag < 1.0) {
		*arg0 = 0.0f;
		*arg1 = 0.0f;
		return;
	}
	scale = dist / mag;
	*arg0 = D_80159D60->unk0 + (D_80159D3C * scale);
	*arg1 = D_80159D60->unk4 + (D_80159D40 * scale);
}

#ifdef NON_MATCHING
int func_8010EF40_11DEF0(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 *arg8, f32 *arg9)
{
	f32 slope;
	f32 intercept;
	if (arg2 < arg0)
	{
		intercept = arg2;
		arg2 = arg0;
		if (arg0 == arg1) {} arg0 = intercept;
	}
	if (arg3 < arg1)
	{
		intercept = arg3;
		arg3 = arg1;
		if (arg0 == arg1) {} arg1 = intercept;
	}
	if (arg0 == arg2)
	{
		if (arg4 == arg6)
		{
			return 0;
		}
		if (!(((arg4 <= arg0) && (arg0 <= arg6)) || ((arg0 <= arg4) && (arg6 <= arg0))))
		{
			return 0;
		}
		intercept = arg7 - arg5;
		if (0.0 == intercept)
		{
			*arg8 = arg0;
			*arg9 = arg5;
			if ((arg5 + arg5 + arg5 + arg5 + arg5 + arg5 + arg5 + arg5 + arg5) == 0.0f) {} return (arg1 <= arg5) && (arg5 <= arg3);
		}
		slope = intercept / (arg6 - arg4);
		*arg8 = arg0;
		intercept = arg5 - slope * arg4;
		slope = intercept + slope * arg0;
		*arg9 = slope;
		return (arg1 <= slope) && (slope <= arg3);
	}
	if (arg5 == arg7)
	{
		return 0;
	}
	if (!(((arg5 <= arg1) && (arg1 <= arg7)) || ((arg1 <= arg5) && (arg7 <= arg1))))
	{
		return 0;
	}
	intercept = arg6 - arg4;
	if (0.0 == intercept)
	{
		*arg8 = arg4;
		*arg9 = arg1;
		return (arg0 <= arg4) && (arg4 <= arg2);
	}
	slope = (arg7 - arg5) / intercept;
	intercept = arg5 - slope * arg4;
	slope = (arg1 - intercept) / slope;
	*arg8 = slope;
	*arg9 = arg1;
	if ((arg4 + arg4 + arg4 + arg4 + arg4 + arg4) == 0.0f) {} return (arg0 <= slope) && (slope <= arg2);
}
#else
#pragma GLOBAL_ASM("src.us/overlay_gameplay/outside/101840_late_rodata.s")
#endif

void func_8010F218_11E1C8(void) {
	VehicleInstance *vehicle;

	vehicle = D_80052B34;
	if (!(vehicleTypes[vehicle->unk1A].unk4C & 0x10000000) || (vehicle->unk1A == 0)) {
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

	temp_v0 = vehicleTypes[arg0->unk1A].unk55;
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

int func_8010F72C_11E6DC(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s32 idx;
	BuildingInstance *building;
	s32 selected;

	idx = (s16)func_8011D260_12C210((s8)(arg0 >> 8), (s8)(arg2 >> 8));
	if (idx == -1) {
		return 0;
	}

	building = &buildingInstances[idx];
	if ((building->buildingType != 0x1F) && (building->buildingType != D_8015EA28)) {
		return 0;
	}

	if ((arg1 + arg3) < building->yCoord) {
		return 0;
	}

	if ((u8)(building->unk8 & 1)) {
		selected = arg0;
	} else {
		selected = arg2;
	}
	arg0 = (selected & 0xFF) >> 2;
	return (arg0 < 9) || (arg0 >= 0x38);
}

void func_8010F834_11E7E4(VehicleInstance *arg0, s32 arg1, s32 arg2, s32 arg3) {
	f32 x;
	f32 y;
	f32 z;
	f32 length;

	x = arg0->unk0 - arg1;
	y = arg0->unk2 - arg2;
	z = arg0->unk4 - arg3;
	length = sqrtf(x * x + y * y + z * z);
	if (length != 0.0f) {
		x /= length;
		y /= length;
		z /= length;
		if (!(arg0->unk20 & VEHICLE_FLAG_AIRBORNE)) {
			y = 0.0f;
		} else if (y > 0.0f) {
			y *= 2;
		}
		arg0->unk30 = 0.0f;
		arg0->unk34 = 0.0f;
		arg0->unk38 = 0.0f;
		func_80102D00_111CB0(arg0, x * 10.0f, y * 10.0f, z * 10.0f);
	}
}

void func_8010F93C_11E8EC(VehicleInstance *arg0, Unk80052B40 *arg1) {
	func_8010F834_11E7E4(arg0, arg1->unk0, arg1->unk2, arg1->unk4);
}

void func_8010F96C_11E91C(VehicleInstance *arg0, Unk80052B40_fp *arg1)
{
  Unk80052B40_fp *temp = arg1;
  func_8010F834_11E7E4(arg0, arg1->unk0 >> 16, temp->unk4 >> 16, temp->unk8 >> 16);
}

void func_8010F9B4_11E964(VehicleInstance *arg0, s32 arg1) {
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

s32 func_8010FAFC_11EAAC(VehicleInstance *arg0) {
	Unk80158F98 *entry;
	s32 i;
	s32 ret;
	f64 scale;
	f64 twenty;
	f64 half;
	VehicleType *vtype;
	AlienType *atype;
	s32 speed;

	entry = D_80158F98;
	i = D_80158FDC;
	ret = 0;
	if (i--) {
		half = 0.5;
		twenty = 20.0;
		scale = 3000.0;
		atype = alienTypes;
		vtype = vehicleTypes;

		do {
			switch (entry->unk0) {
				case 1: {
					speed = entry->unk4;
					if (speed != 0) {
						func_8010F93C_11E8EC(arg0, (Unk80052B40 *)speed);
					}
					break;
				}

				case 10: {
					speed = entry->unk4;
					if (speed != 0) {
						func_8010F834_11E7E4(arg0, ((EntityInstance *)speed)->unk0, ((EntityInstance *)speed)->unk2, ((EntityInstance *)speed)->unk4);
					}
					break;
				}

				case 11: {
					speed = entry->unk4;
					if (speed != 0) {
						func_8010F96C_11E91C(arg0, (Unk80052B40_fp *)speed);
					}
					break;
				}

				case 12: {
					speed = entry->unk4;
					if (speed != 0) {
						func_8010F9B4_11E964(arg0, speed);
					}
					break;
				}

				case 2:
					arg0->unk20 &= ~entry->unk4;
					break;

				case 3:
					arg0->unk20 |= entry->unk4;
					break;

				case 4:
					arg0->unk20 |= VEHICLE_FLAG_ON_BRIDGE;
					arg0->unk20 &= ~VEHICLE_FLAG_AIRBORNE;
					func_800FB468_10A418(arg0, (f32)entry->unk4);
					if (arg0->unk34 < 0.0f) {
						arg0->unk34 = 0.0f;
					}
					if (currentLevel != 4) {
						break;
					}
					if (arg0->unk1A != 0xE) {
						break;
					}
					func_800FDB58_10CB08(arg0);
					ret = 1;
					break;

				case 5:
					arg0->unk20 &= ~VEHICLE_FLAG_ON_BRIDGE;
					D_80159320 |= 0x200000;
					break;

				case 6:
					func_800FB468_10A418(arg0, (f32)entry->unk4);
					arg0->unk34 = 0.0f;
					if (currentLevel != 4) {
						break;
					}
					if (arg0->unk1A != 0xE) {
						break;
					}
					func_800FDB58_10CB08(arg0);
					ret = 1;
					break;

				case 7: {
					AlienInstance *other;
					s32 weight;
					f32 speedF;

					speedF = func_800FB11C_10A0CC(arg0);
					speed = (s32)((f64)((f32)(vtype[arg0->unk1A].unk32 >= 0x1771 ? vtype[arg0->unk1A].unk32 : 0x1770) * speedF) / scale);
					other = (AlienInstance *)entry->unk4;

					if ((twenty < (f64)func_800FB11C_10A0CC(arg0)) && (atype[other->typeIndex].unk32 < 0x7D1)) {
						func_80088154_97104((EntityInstance *)entry->unk4, speed, func_800FB160_10A110(arg0));
					}

					func_80083EF4_92EA4(other, arg0, (s16)(vtype[arg0->unk1A].unk32 * arg0->unk12), arg0->unkE);
					if (D_800475F0 >= 0x33) {
						func_80083EF4_92EA4((AlienInstance *)entry->unk4, arg0, -0x63C0, (s16)-((AlienInstance *)entry->unk4)->unkE);
					}

					if (((AlienInstance *)entry->unk4)->typeIndex >= 3) {
						func_800FB430_10A3E0(arg0, (f32)((f64)arg0->unk58 * half));
						func_800FB11C_10A0CC(arg0);
						weight = atype[other->typeIndex].unk32;
						if (weight >= 0x1771) {
							break;
						}
					}
					break;
				}

				case 8:
					break;

				case 9:
					func_80088154_97104((EntityInstance *)entry->unk4, 0x7FFE, arg0->unk6);
					break;
			}

			entry++;
		} while (i--);
	}

	return ret;
}


s32 func_8010FF84_11EF34(VehicleInstance *arg0, s32 arg1)
{
	AlienInstance *alien;
	s32 i;
	s32 *noLog;
	AlienType *type;
	i = 0xFF;
	noLog = &arg1;
	while (i--)
	{
		alien = &alienInstances[i];
		if (alien->unk20 & (ALIEN_FLAG_UNKA | ALIEN_FLAG_UNKB) &&
			(((!(alien->unk20 & ALIEN_FLAG_UNKL)) || (alien->typeIndex == 0x1A)) || (alien->typeIndex == 0x1B)))
		{
			type = &alienTypes[alien->typeIndex];
			if ((type->unk54 & 8) &&
				(func_8007E608_8D5B8(alien, arg0)) &&
				(func_8010E684_11D634(arg0, alien)))
			{
				if ((alien->typeIndex < 3) || (alien->typeIndex == 0x20))
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
					if (!(arg0->unk20 & VEHICLE_FLAG_AIRBORNE))
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

// Push player away from shield wall
// Skipping call lets player go through shield walls
s32 func_80110144_11F0F4(VehicleInstance *arg0, s32 arg1) {
	s16 temp_v0;
	s32 var_s4;
	s32 var_v0;
	s32 i;

	i = 4;
	while (i--) {
		var_s4 = func_800B0D10_BFCC0((s32) (D_80159D78[i] + arg0->unk4C), (s32) (D_80159D98[i] + arg0->unk54), 0);
		if ((var_s4 != 0) &&
			(func_800BD688_CC638((s16) (s32) (D_80159D78[i] + arg0->unk4C), (s16) (s32) arg0->unk50, (s16) (s32) (D_80159D98[i] + arg0->unk54), arg0) != 0)) {
			if (arg1 == 0) {
				temp_v0 = func_800B0DF4_BFDA4((s32) (D_80159D78[i] + arg0->unk4C), (s32) (D_80159D98[i] + arg0->unk54), 0, var_s4);
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
					func_800C4938_D38E8((s16) (s32) (D_80159D78[i] + arg0->unk4C), (s16) (arg0->unk2 + 0x2D), (s16) (s32) (D_80159D98[i] + arg0->unk54), var_s4, 0x78);
					func_800EBD5C_FAD0C((s16) (s32) temp_v0);
				}
			}

			return 10;
		}
	}

	return 0;
}

void func_801103B4_11F364(VehicleInstance *arg0, VehicleType *arg1) {
	PowerupItem *entry;
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

s32 func_8011049C_11F44C(VehicleInstance *arg0, VehicleType *arg1, s32 arg2) {
	union {
		s32 unused;
		Unk8015FAD0 *volume;
	} scratch;
	s32 checkFlags;
	s32 var_s6;
	s16 maxY;
	s16 minY;
	s32 xMax;
	s32 zMax;
	s32 xMin;
	s32 zMin;
	s32 flags;
	union {
		int accumulated;
		volatile int sampled;
	} collisionFlags;
	s32 outY;

	collisionFlags.accumulated = 0;
	outY = 0;
	maxY = arg0->unk2 + arg1->unk38;
	minY = arg0->unk2;

	var_s6 = 4;
	while (var_s6--) {
		checkFlags = func_8012DDA8_13CD58((s16) (s32) (D_80159D78[var_s6] + arg0->unk4C), (s16) (s32) arg0->unk50,
			(s16) (s32) (D_80159D98[var_s6] + arg0->unk54), arg1->unk38, arg0, arg2, &outY);
		if (checkFlags & 1) {
			if ((arg0->unk20 & VEHICLE_FLAG_AIRBORNE) != 0) {
				if (arg2 == 0) {
					if (!(checkFlags & 4) && (arg2 == 0)) {
						func_8010FAC8_11EA78(0xB, scratch.unused);
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
			if (arg2 == 0) {
				func_8010FAC8_11EA78(6, outY);
			}
		}
	}

	var_s6 = 25;
	while (var_s6--) {
		scratch.volume = &D_8015FAD0[var_s6];
		if (scratch.volume->unk2C >= 4) {
			if (((scratch.volume->unk4 >> 16) + scratch.volume->unk1C) >= minY) {
				if (maxY >= ((scratch.volume->unk4 >> 16) - scratch.volume->unk1C)) {
					xMax = (scratch.volume->unk0 >> 16) + scratch.volume->unk18;
					zMax = (scratch.volume->unk8 >> 16) + scratch.volume->unk1A;
					xMin = (scratch.volume->unk0 >> 16) - scratch.volume->unk18;
					zMin = (scratch.volume->unk8 >> 16) - scratch.volume->unk1A;

					if (func_8010CF7C_11BF2C((s16) xMax, (s16) zMax) || func_8010CF7C_11BF2C((s16) xMax, (s16) zMin) ||
						func_8010CF7C_11BF2C((s16) xMin, (s16) zMax) || func_8010CF7C_11BF2C((s16) xMin, (s16) zMin)) {
						checkFlags = func_8012DF90_13CF40(scratch.volume, arg0, arg2);
						if (checkFlags & 1) {
							if ((arg0->unk20 & VEHICLE_FLAG_AIRBORNE) != 0) {
								if (arg2 == 0) {
									if (!(checkFlags & 4)) {
										func_8010FAC8_11EA78(0xB, (s32) scratch.volume);
									}
								}
							}
							collisionFlags.accumulated |= checkFlags;
						}

						if ((checkFlags & 2) && (arg2 == 0)) {
							func_8010FAC8_11EA78(6, (scratch.volume->unk4 >> 16) + scratch.volume->unk1C);
						}
					}
				}
			}
		}
	}

	flags = collisionFlags.sampled;
	if (flags & 1) {
		if ((arg0->unk20 & VEHICLE_FLAG_AIRBORNE) || (flags & 8)) {
			return 9;
		}
		return 6;
	}
	return 0;
}

s32 func_80110818_11F7C8(VehicleInstance *arg0, VehicleType *arg1, s32 arg2) {
	s16 sp76;
	s16 sp74;
	u8 temp_v0_2;
	s16 temp_s7;

	sp76 = func_800FAE60_109E10(arg0);
	sp74 = func_800FADF8_109DA8(sp76);

	temp_s7 = D_80158FD8;
	while (temp_s7--) {
		temp_v0_2 = D_80158E80[temp_s7];
		if (((arg0 != D_80158E64) || (temp_s7 != D_80159316)) && ((u32)temp_v0_2 != sp76) && ((currentLevel != 2) || (arg0->unk1A != 0) || (vehicleInstances[temp_v0_2].unk1A != 5))) {
				VehicleInstance *var_s2 = &vehicleInstances[temp_v0_2];
				if ((var_s2->unk1A != 0) || (arg0->unk1A != 5)) {
					s32 deltaX = arg0->unk0 - var_s2->unk0;
					s32 deltaZ = arg0->unk4 - var_s2->unk4;
					s32 bound = vehicleTypes[var_s2->unk1A].unkC + arg1->unkC;
					s32 absX = deltaX >= 0 ? deltaX : -deltaX;
					
					if (absX < bound) {
						s32 absZ = deltaZ >= 0 ? deltaZ : -deltaZ;
						if (absZ < bound) {
							s32 var_s4;
							func_8010CA38_11B9E8(var_s2);
							var_s4 = 0;
							if ((D_80159D6C == 2) && (D_80159D70 == 2)) {
								if ((func_8007E500_8D4B0((EntityInstance *)arg0, (EntityType *)arg1, (EntityInstance *)var_s2, (EntityType *)&vehicleTypes[var_s2->unk1A]) != 0) && (func_801073FC_1163AC(arg0, var_s2, 0, 0) != 0)) {
									var_s4 = 1;
											}
										} else {
											if (((vehicleTypes[var_s2->unk1A].unk38 + var_s2->unk2) >= arg0->unk2) && ((vehicleTypes[arg0->unk1A].unk38 + arg0->unk2) >= var_s2->unk2)) {
									if (D_80159D6C == 2) {
									if ((func_8010E040_11CFF0(arg0->unk0, arg0->unk4, arg1->unkC) != 0) && (func_801073FC_1163AC(arg0, var_s2, 0, 0) != 0)) {
											var_s4 = 1;
										}
										} else if (D_80159D70 == 2) {
										if ((func_8010DC00_11CBB0(var_s2->unk0, var_s2->unk4, vehicleTypes[var_s2->unk1A].unkC) != 0) && (func_801073FC_1163AC(arg0, var_s2, 0, 0) != 0)) {
											var_s4 = 1;
										}
										} else {
											s32 i;
											i = 0;
											do {
											if ((func_8010D234_11C1E4((s16)(s32)(D_80159D78[i] + (f32)arg0->unk0), (s16)(s32)(D_80159D98[i] + (f32)arg0->unk4)) != 0) && (func_801073FC_1163AC(arg0, var_s2, (s32)D_80159D78[i], (s32)D_80159D98[i]) != 0)) {
												var_s4 = 1; break;
											}
											i++;
										} while (i < 4);
											i = 4;
											do {
												if ((func_8010CF7C_11BF2C((s16)(s32)(D_80159D78[i] + (f32)var_s2->unk0), (s16)(s32)(D_80159D98[i] + (f32)var_s2->unk4)) != 0) && (func_801073FC_1163AC(arg0, var_s2, (s32)D_80159D78[i], (s32)D_80159D98[i]) != 0)) {
													var_s4 = 1; break;
												}
												i++;
											} while (i < 8);
									}
								} else { continue; }
							}
							if (var_s4 != 0) {
								if ((currentLevel == 4) && (arg0->unk1A == 0x10)) {
									s32 tempVal = vehicleTypes[var_s2->unk1A].unk61 << 8;
									if (var_s2->unk3C < tempVal) { var_s2->unk3C = tempVal; D_8014D17C++; }
								}
							if ((arg0->unk20 & VEHICLE_FLAG_PATH_GUIDED) && (var_s2->unk1A == 0)) {
									if (arg2 == 0) {
									func_80124118_1330C8(var_s2, (s16)(s32)(arg0->unk58 * 10.0f));
									if (arg0->unk20 & VEHICLE_FLAG_AIRBORNE) { func_8010FAC8_11EA78(1, var_s2); }
									}
									return 7;
								}
							if ((arg0->unk1A == 0) && !(var_s2->unk20 & VEHICLE_FLAG_PATH_GUIDED)) {
									if (!(currentControllerStates[0].button & BUTTON_C_DOWN) && (D_80052A88 == 0) && (arg2 == 0)) {
									if (arg0->unk20 & VEHICLE_FLAG_AIRBORNE) { func_8010FAC8_11EA78(1, var_s2); }
										return 7;
									}
									if (arg2 != 0) { return 7; }
					if (func_80076088_85038(D_80158BD0[D_80158E80[temp_s7]]) == 0) {
						if (D_80158BD0[D_80158E80[temp_s7]] == 3) { func_8001A650_1B250(0xD6); return 7; }
										if (((currentLevel != 1) || (var_s2->unk1A != 0x12)) && ((currentLevel != 4) || (var_s2->unk1A != 0x12)) && (var_s2->unk1A != 0x13)) {
											func_8001A650_1B250(0x12);
										}
										return 7;
									}
									if (D_80159300 != 0) { return 7; }
					if (func_800E60CC_F507C(2, D_80158E80[temp_s7]) != 0) { return 7; }
									D_80158E68[0] = arg0->unk0;
									D_80158E68[1] = arg0->unk4;
									D_80158E70[0] = 0xC8;
									D_80158E70[1] = 0xC8;
									D_80158E70[2] = 0xC8;
					func_800EBE74_FAE24(0, D_80158E80[temp_s7], sp74, D_80052B34);
									D_80159300 = 0x18;
									D_80052A88 = 0;
									return 0;
								}
							if ((arg0->unk20 & VEHICLE_FLAG_AIRBORNE) && (arg2 == 0)) { func_8010FAC8_11EA78(1, var_s2); }
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

/* IDO counts these cold reads when allocating registers, then removes their
 * empty checks. Keep the height snapshot separate from the bridge coordinates.
 * Arguments must be side-effect-free signed height locals. */
#define IDO_HEIGHT_READ4(value) if (value) {} if (value) {} if (value) {} if (value) {}
#define IDO_HEIGHT_READ16(value) IDO_HEIGHT_READ4(value) IDO_HEIGHT_READ4(value) IDO_HEIGHT_READ4(value) IDO_HEIGHT_READ4(value)
#define IDO_HEIGHT_COLD_SPAN(value) do { IDO_HEIGHT_READ16(value) IDO_HEIGHT_READ16(value) IDO_HEIGHT_READ16(value) IDO_HEIGHT_READ16(value) } while (0)
#define IDO_SIGNED_HEIGHT_READS(value) \
    ((value) + (value) + (value) + (value) + (value) + (value) + (value) + \
     (value) + (value) + (value) + (value) + (value) + (value) + (value) + \
     (value) + (value) + (value) + (value) + (value) + (value) + (value))

s32 func_80110FB4_11FF64(VehicleInstance *arg0, s32 arg1) {
	f64 var_f0;
	VehicleType *vehicleType;
	s16 spDA;
	s16 spD8;
	s16 spD6;
	union { u16 raw[1]; s16 signedValue; } topHeight;
	s16 spD2;
	s16 spD0;
	s16 spCE;
	s16 spCC;
	s16 spCA;
	s16 spC8;
	BuildingCollisionVolume *spawn;
	s32 spC0;
	s32 foundSurface;
	s32 foundBlocking;
	s32 minX;
	s32 maxX;
	s32 maxZ;
	s32 minZ;
	s32 gridX;
	u32 j;
	s32 bestY;
	f32 sp98;
	f32 sp94;
	Unk80259D90 *entry;
	f32 *xPoint;
	f32 *zPoint;
	s32 i;
	s32 bestX;
	s32 sp7C;
	BuildingInstance *building;
	BuildingType *buildingType;
	s32 sp70;
	s32 height;

	arg1 = (&arg1)[0];
	func_800FAE60_109E10(arg0);
	vehicleType = &vehicleTypes[arg0->unk1A];
	D_80159320 &= 0xDFFFFFFF;

	if (currentLevel == 2) {
		if (arg0->unk1A == 5) {
			return 0;
		}
	}

	func_8010C4EC_11B49C(arg0);
	height = vehicleType->unk38;
	spD2 = arg0->unk2;
	topHeight.raw[0] = arg0->unk2 + (height & 0xFFFF);

	if (arg1 == 0) {
		func_801103B4_11F364(arg0, vehicleType);
	}

	bestY = func_8011049C_11F44C(arg0, vehicleType, arg1);
	if (bestY != 0) {
		return bestY;
	}

	j = 7;
	if (currentLevel == 1) {
		UnkF9230Func8010065CEntry *strip = &D_80158B90[7];

		do {
			if ((strip->unk6 != -0x8000) && (((s16)topHeight.raw[0]) >= strip->unk2) && (strip->unk6 >= spD2) && (func_8010CF7C_11BF2C(strip->unk0, strip->unk4) != 0)) {
				if (arg1 == 0) {
					func_800FB430_10A3E0(arg0, (f32) (arg0->unk12 >> 1));
					arg0->unk30 = arg0->unk30 / 2;
					arg0->unk38 = arg0->unk38 / 2;
				}
				return 9;
			}
			strip--;
		} while (j--);
	}

	foundBlocking = 0;
	foundSurface = 0;
	minZ = 0x7FFF;
	minX = 0x7FFF;
	maxZ = -0x8000;
	maxX = -0x8000;

	{
		xPoint = D_80159D78;
		zPoint = D_80159D98;
		do {
			bestY = *xPoint + arg0->unk0;
			if (minX >= bestY) minX = bestY;
			if (bestY >= maxX) maxX = bestY;
			bestY = *zPoint + arg0->unk4;
			if (minZ >= bestY) minZ = bestY;
			if (bestY >= maxZ) maxZ = bestY;
			zPoint++;
			xPoint++;
		} while (zPoint < &D_80159D98[4]);
	}

	minZ &= ~0x7F; minX &= ~0x7F;
	minX |= 0x40; minZ |= 0x40;
	gridX = minX;

	while (gridX < maxX + 0x80) {
		i = minZ;
		while (i < maxZ + 0x80) {
			bestY = func_80078B58_87B08(gridX, (s16) i);

			if (bestY > 0) {

				if (((func_800F9D24_108CD4((s16)gridX, (s16) i) + ((TerrainCollisionRow *)D_8013BB8C_14AB3C)[currentLevel].values[bestY - 16]) >= arg0->unk2) && (func_8010DC00_11CBB0(gridX, i, ((TerrainCollisionRow *)D_8013BC2C_14ABDC)[currentLevel].values[bestY - 16]) != 0)) {
					bestY = func_8010B804_11A7B4(bestY, arg0, gridX, (s16) i);
					foundSurface = 1;
					if (bestY == 0) {
						if (arg1 == 0) {
							func_8010FAC8_11EA78(0xC, func_80078BC8_87B78(gridX, (s16) i));
						}
					} else {
						foundBlocking = 1;
					}
				}
			}
			i += 0x80;
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
		gridX = 0x95;
		entry = &D_80259D90[0x95];
		do {
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
		
			entry--;
		} while (gridX--);
	}

	if (!(vehicleTypes[arg0->unk1A].unk4C & 0x20000000)) {
		if (currentLevel == 1) {
			gridX = 3;
			xPoint = &D_80159D78[3]; zPoint = &D_80159D98[3];
		do {
				if (func_8010F72C_11E6DC((s16) (s32) (*xPoint + arg0->unk4C), (s16) (s32) arg0->unk50,
										(s16) (s32) (*zPoint + arg0->unk54), vehicleType->unk38) != 0) {
					return 6;
				}
			
			xPoint--;
			zPoint--;
		} while (gridX--);
		}
	}

	building = &buildingInstances[func_80117508_1264B8((s16) (arg0->unk4 - 0x400)) - 1];
	while (1) {
		building++; if (((building - buildingInstances) >= 0xFF) || (arg0->unk4 < (building->zCoord - 0x400))) {
			break;
		}

		if ((building->statusFlags & 1) && !(building->statusFlags & 0x20000)) {
			buildingType = &buildingTypes[building->buildingType];
			spawn = D_80052560;
			spawn = &spawn[buildingType->unk1A[2]];

			j = buildingType->unk1A[3];
			if (j--) {
				height = topHeight.signedValue;
			do {
				spD8 = building->yCoord + spawn->unk8;
				spD6 = building->yCoord + spawn->unkA;
				spCA = spawn->unk4;
				spC8 = spawn->unk6;
				func_80116554_125504((s16) (building->unk8 & 3), &spCA, &spC8);
				spCA += building->xCoord;
				spC8 += building->zCoord;

				if ((((height >= spD8) && (spD6 >= height)) || ((spD2 >= spD8) && (spD6 >= spD2)) || ((spD8 >= spD2) && (height >= spD8)) ||
					 ((spD6 >= spD2) && (height >= spD6))) &&
					(func_8010CF7C_11BF2C(spCA, spC8) != 0)) {
					if (arg1 == 0) {
						if ((arg0->unk20 & VEHICLE_FLAG_AIRBORNE) && !(vehicleType->unk4C & 0x20000000)) {
							func_8010FAC8_11EA78(0xA, (s32) building);
						}
						func_800FB430_10A3E0(arg0, (f32) (arg0->unk12 >> 1));
						arg0->unk30 = arg0->unk30 / 2;
						arg0->unk38 = arg0->unk38 / 2;
						if ((currentLevel == 4) && (arg0->unk1A == 2) && (arg0->unk12 >= 0xB) && !(((u32) building->unk8 >> 0xC) & 0x1000) &&
							((buildingType->unk10 * buildingType->unk12) < 0x10000)) {
							func_8011C080_12B030((u8)(building - buildingInstances));
						}
					}
					IDO_HEIGHT_COLD_SPAN(height); return 9;
				}
				height = topHeight.signedValue; spawn--;
			} while (j--);
			}
		}
	}


	bestY = -1;
	spC0 = 0;
	do {
	if ((D_80159260 != 0) && (D_80159262 == 0) && (arg0 == D_80052B34)) {
		continue;
	}

	if ((arg0->unk1A == 0) || (vehicleTypes[arg0->unk1A].unk4C & 0x20000000)) {
		func_8011DE60_12CE10(1);
	}

	xPoint = &D_80159D78[3]; zPoint = &D_80159D98[3];
	gridX = 3;
	do {
		bestX = (s32) (*xPoint + (f32) arg0->unk0);
		sp7C = (s32) (*zPoint + (f32) arg0->unk4);
		if ((func_800F9D60_108D10((s16) bestX, (s16) sp7C, &spDA, &spD8, &spD6) != -1) && (spDA < spD6) && (spD6 >= bestY)) {
			bestY = spD6;
			spCC = spDA;
			spD0 = spD6;
			spCE = spD8;
			sp98 = (f32) bestX;
			sp94 = (f32) sp7C;
		}
	
			xPoint--;
			zPoint--;
		} while (gridX--);

	if ((func_800F9D60_108D10(arg0->unk0, arg0->unk4, &spDA, &spD8, &spD6) != -1) && (spDA < spD6) && (spD6 >= bestY)) {
		bestY = spD6;
		sp98 = (f32) arg0->unk0;
		sp94 = (f32) arg0->unk4;
		spCC = spDA;
		spCE = spD8;
		spD0 = spD6;
	}

	if ((arg0->unk1A == 0) || (vehicleTypes[arg0->unk1A].unk4C & 0x20000000)) {
		func_8011DE60_12CE10(0);
	}

	if (bestY >= 0) {
		spC0 = 5;
		spDA = spCC;
		bestX = sp98;
		spD8 = spCE;
		spD6 = spD0;
		sp7C = sp94;
		building = &buildingInstances[func_8011D260_12C210(bestX >> 8, sp7C >> 8)];
		sp70 = building->buildingType;
	}

	if (arg0->unk1A == 0) {
		if (spC0 == 0) {
			if (arg1 == 0) {
				func_8010FAC8_11EA78(2, 0x80C);
			}
			continue;
		}
		if (((s16)topHeight.raw[0]) < spD8) {
			if (arg1 == 0) {
				func_8010FAC8_11EA78(3, 8);
			}
			continue;
		}
		if ((spD6 + 0x14) < spD2) {
			if (arg1 == 0) {
				func_8010FAC8_11EA78(2, 0x808);
			}
			continue;
		}
		if ((arg0->unk20 & VEHICLE_FLAG_AIRBORNE) && ((f32) (spD6 - 0x20) <= D_8015919C) && (spD6 >= spD2)) {
			if (arg1 == 0) {
				func_8010FAC8_11EA78(4, spD6);
			}
			continue;
		}
		if ((arg0->unk20 & VEHICLE_FLAG_AIRBORNE) && (spD6 >= spD2) && (spD8 < ((s16)topHeight.raw[0]))) {
			if (arg1 == 0) {
				func_8010FAC8_11EA78(5, 0);
				func_8010FAC8_11EA78(0xA, (s32) building);
			}
			return 9;
		}
		if (!(arg0->unk20 & VEHICLE_FLAG_AIRBORNE) || (arg0->unk20 & VEHICLE_FLAG_ON_BRIDGE) || (D_80222A70 >= arg0->unk2)) {
			if ((spDA < spD6) && !(arg0->unk20 & VEHICLE_FLAG_ON_BRIDGE) && !(arg0->unk20 & VEHICLE_FLAG_UNDER_BRIDGE) && ((spD6 - spD2) < 0x20) &&
				(func_801081AC_11715C(arg0->unk0, arg0->unk4) != 0)) {
				if (arg1 == 0) {
					func_8010FAC8_11EA78(3, 0x800);
					func_8010FAC8_11EA78(2, 2);
					func_8010FAC8_11EA78(6, spD6);
				}
			} else {
				if ((spD2 < spD6) && ((spD6 - spD2) >= 0x20) && (arg0->unk20 & VEHICLE_FLAG_ON_BRIDGE)) {
					return 5;
				}
				if ((spD2 < spD6) && ((spD2 + 0x20) >= spD6) && (arg0->unk20 & VEHICLE_FLAG_ON_BRIDGE)) {
					if (arg1 == 0) {
						func_8010FAC8_11EA78(6, spD6);
					}
					continue;
				}
				if ((spDA < spD6) && !(arg0->unk20 & VEHICLE_FLAG_ON_BRIDGE) && !(arg0->unk20 & VEHICLE_FLAG_UNDER_BRIDGE) && ((spD6 - spD2) < 0x20) &&
					(func_801081AC_11715C(arg0->unk0, arg0->unk4) == 0)) {
					if (arg1 == 0) {
						func_8010FAC8_11EA78(3, 4);
						func_8010FAC8_11EA78(2, 2);
						func_8010FAC8_11EA78(6, spD6);
					}
				} else {
					if (((spD8 < ((s16)topHeight.raw[0])) && (((s16)topHeight.raw[0]) < spD6)) || ((spD8 < spD2) && (((s16)topHeight.raw[0]) < spD6)) || ((spD2 < spD8) && (spD8 < ((s16)topHeight.raw[0]))) ||
						((spD2 < spD6) && (spD6 < ((s16)topHeight.raw[0])))) {
						if (arg1 != 0) return 5;
						bestY = (s32)(vehicleType->unk38 + D_8015919C);
						if ((spD8 >= bestY) && (spD8 < ((s16)topHeight.raw[0])) && (((s16)topHeight.raw[0]) < spD6)) return 5;
						return 5;
					}

				}
			}
		}
		continue;
	}

	if (spC0 == 0) {
		if (arg1 == 0) {
			func_8010FAC8_11EA78(2, 0x80C);
		}
		continue;
	}
	if (IDO_SIGNED_HEIGHT_READS(spD2)) {} if (((s16)(u16)topHeight.signedValue) < spD8) {
		if (arg1 == 0) {
			func_8010FAC8_11EA78(3, 8);
		}
		continue;
	}
	if ((spD6 < spD2) && (arg0->unk20 & VEHICLE_FLAG_AIRBORNE)) {
		if ((D_80222A70 < arg0->unk2) && (arg1 == 0)) {
			func_8010FAC8_11EA78(2, 0x808);
		}
		continue;
	}
	if (arg0->unk20 & VEHICLE_FLAG_AIRBORNE) {
		var_f0 = D_80144D50_153D00.value;
		if ((((f64) spD6 - ((f64) vehicleType->unk36 * var_f0)) < (f64) D_8015919C) && (spD6 >= spD2)) {
			if (arg1 == 0) {
				if ((arg0 == D_80052B34) && (D_801591AC == 6)) {
					return 5;
				}
				func_8010FAC8_11EA78(4, spD6);
			}
			continue;
		}
	}

	var_f0 = D_80144D58_153D08.value;
	if ((arg0->unk20 & VEHICLE_FLAG_AIRBORNE) && !(vehicleTypes[arg0->unk1A].unk4C & 0x20000000) && (spD6 >= spD2) && (spD8 < ((s16)(u16)topHeight.signedValue))) {
		if (arg1 == 0) {
			func_8010FAC8_11EA78(5, 0);
			func_8010FAC8_11EA78(0xA, (s32) building);
		}
		return 9;
	}

	if (!(arg0->unk20 & VEHICLE_FLAG_AIRBORNE) || (vehicleTypes[arg0->unk1A].unk4C & 0x20000000) || (arg0->unk20 & VEHICLE_FLAG_ON_BRIDGE) || (D_80222A70 >= arg0->unk2)) {
		if (arg0->unk20 & VEHICLE_FLAG_HALF_ON_BRIDGE) {
			if (arg1 == 0) {
				func_8010FAC8_11EA78(2, 2);
			}
			continue;
		}

		if ((spDA < spD6) && !(arg0->unk20 & VEHICLE_FLAG_ON_BRIDGE) && !(arg0->unk20 & VEHICLE_FLAG_UNDER_BRIDGE) && ((f64) (spD6 - spD2) < ((f64) vehicleType->unk36 * var_f0)) && (gridX = func_80108138_1170E8(arg0->unk0, arg0->unk2, arg0->unk4), var_f0 = D_80144D60_153D10.value, gridX != 0)) {
			if (arg1 == 0) {
				func_8010FAC8_11EA78(3, 0x800);
				func_8010FAC8_11EA78(2, 2);
			}

		} else {

			if ((spD6 >= spD2) && (sp70 != D_8015EA28)) {
				if (!(arg0->unk20 & VEHICLE_FLAG_AIRBORNE) && (((f64) vehicleType->unk36 * var_f0) <= (f64) (spD6 - spD2)) && (arg0->unk20 & VEHICLE_FLAG_ON_BRIDGE)) {
					return 6;
				}
			}

			if ((spD6 >= spD2) && !(arg0->unk20 & VEHICLE_FLAG_AIRBORNE) && ((f64) spD6 <= ((f64) spD2 + ((f64) vehicleType->unk36 * var_f0))) && (arg0->unk20 & VEHICLE_FLAG_ON_BRIDGE)) {
			} else {
				if ((vehicleType->unk4C & 0x20) && (spDA < spD6) && !(arg0->unk20 & VEHICLE_FLAG_ON_BRIDGE) && !(arg0->unk20 & VEHICLE_FLAG_UNDER_BRIDGE) &&
					((f64) (spD6 - spD2) < ((f64) vehicleType->unk36 * var_f0)) && (func_80108138_1170E8(arg0->unk0, arg0->unk2, arg0->unk4) == 0)) {
					if (arg1 == 0) {
						func_8010FAC8_11EA78(3, 4);
						func_8010FAC8_11EA78(2, 2);
					}

				} else {

					if (((((s16)(u16)topHeight.signedValue) >= spD8) && (spD6 >= ((s16)(u16)topHeight.signedValue))) || ((spD2 >= spD8) && (spD6 >= spD2)) || ((spD8 >= spD2) && (((s16)(u16)topHeight.signedValue) >= spD8)) || ((spD6 >= spD2) && (((s16)(u16)topHeight.signedValue) >= spD6))) {
						bestY = (s32)(vehicleType->unk38 + D_8015919C);
						if ((spD8 >= bestY) && (spD8 < ((s16)(u16)topHeight.signedValue)) && (((s16)(u16)topHeight.signedValue) < spD6)) {
							return 5;
						}

						if ((arg1 == 0) && (currentLevel == 4) && (((arg0->unk1A == 2) && (arg0->unk12 >= 0xB)) || ((arg0->unk1A == 0x11) && (arg0->unk12 >= 0x10)))) {
							building = &buildingInstances[func_8011D260_12C210(bestX >> 8, sp7C >> 8)];
							buildingType = &buildingTypes[building->buildingType];

							if (!(((u32) building->unk8 >> 0xC) & 0x1000) && (((buildingType->unk10 * buildingType->unk12) < 0x10000) || (buildingType->model == &D_C0067F0))) {
								func_8011C080_12B030((u8)(building - buildingInstances));
							}
						}

						if (arg1 == 0) {
							func_800FB430_10A3E0(arg0, (f32) (arg0->unk12 >> 1));
							arg0->unk30 = arg0->unk30 / 2;
							arg0->unk38 = arg0->unk38 / 2;
						}
						return 9;
					}

				}
			}

		}
		continue;
	}

	} while (0);

	gridX = func_8010FF84_11EF34(arg0, arg1);
	if (gridX != 0) {
		return gridX;
	}

	func_8010E480_11D430();
	gridX = func_80110144_11F0F4(arg0, arg1);
	if (gridX != 0) {
		return gridX;
	}

	if (((D_80222A70 >= arg0->unk2) && !(vehicleTypes[arg0->unk1A].unk4C & 0x20)) ||
		(!(vehicleTypes[arg0->unk1A].unk4C & 0x20) && !(vehicleTypes[arg0->unk1A].unk4C & 0x20000000) && (vehicleTypes[arg0->unk1A].unk4C & 0x10000000))) {
		xPoint = &D_80159D78[3]; zPoint = &D_80159D98[3];
		gridX = 3;
		do {
			height = func_800F9D24_108CD4((s16) (s32) (*xPoint + (f32) arg0->unk0), (s16) (s32) (*zPoint + (f32) arg0->unk4));
			if ((D_80222A70 < height) && (height >= spD2)) {
				return 6;
			}
		
			xPoint--;
			zPoint--;
		} while (gridX--);
	}

	else if ((! (arg0->unk20 & VEHICLE_FLAG_AIRBORNE) || ((arg0->unk1A == 0) && (D_80222A70 >= arg0->unk2))) && !(arg0->unk20 & VEHICLE_FLAG_ON_BRIDGE) && !(arg0->unk20 & VEHICLE_FLAG_HALF_ON_BRIDGE)) {
		gridX = 3;
		xPoint = &D_80159D78[3]; zPoint = &D_80159D98[3];
		do {
			if ((func_800FAA08_1099B8((s16) (s32) (*xPoint + arg0->unk4C), (s16) (s32) (*zPoint + arg0->unk54)) >= 0xA) &&
				((func_800B84D0_C7480((s16) (s32) (*xPoint + arg0->unk4C), (s16) (s32) (*zPoint + arg0->unk54)) >> 8) >= D_80222A70) &&
				(func_80115824_1247D4(arg0, gridX) != 0)) {
				return 6;
			}
		
			xPoint--;
			zPoint--;
		} while (gridX--);
	}

	gridX = func_80110818_11F7C8(arg0, vehicleType, arg1);
	if (gridX != 0) {
		return gridX;
	}

	return 0;
}

#undef IDO_SIGNED_HEIGHT_READS
#undef IDO_HEIGHT_COLD_SPAN
#undef IDO_HEIGHT_READ16
#undef IDO_HEIGHT_READ4

s16 func_8011290C_1218BC(VehicleInstance *arg0) {
	volatile s16 sp26;
	s16 var_v1;
	VehicleType *type;

	type = &vehicleTypes[arg0->unk1A];
	if ((arg0->unk1A == 0) || (type->unk4C & 0x20000000)) {
		func_8011DE60_12CE10(1);
	}

	if ((!(arg0->unk20 & VEHICLE_FLAG_ON_BRIDGE) && !(arg0->unk20 & VEHICLE_FLAG_HALF_ON_BRIDGE)) || (arg0->unk20 & VEHICLE_FLAG_UNDER_BRIDGE)) {
		arg0->unk2A = func_800FA40C_1093BC(arg0, arg0->unk6, type->unk36);
		arg0->unk28 = func_800FA40C_1093BC(arg0, (s16)(arg0->unk6 - 0x4000), type->unk34);
		var_v1 = func_800FA7F0_1097A0(arg0, arg0->unkE, type->unk36 + arg0->unk12);
	} else {
		arg0->unk2A = func_800FA018_108FC8(arg0, arg0->unk6, type->unk36);
		arg0->unk28 = func_800FA018_108FC8(arg0, (s16)(arg0->unk6 - 0x4000), type->unk34);
		var_v1 = func_800FA018_108FC8(arg0, arg0->unkE, type->unk36);
	}

	if ((arg0->unk1A == 0) || (type->unk4C & 0x20000000)) {
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

void func_80112A98_121A48(s32 centerX, s32 centerZ, s32 radius) {
	VehicleInstance *vehicle;
	Unk80259490 *spawnData;
	s32 buildingIndex;
	s16 spawnX;
	s16 spawnZ;
	s32 i;
	s32 quarterRange;
	s16 groundHeight;

	if (radius == 0) {
		/* The full reset deliberately excludes slot zero. */
		i = 127;
		do {
			vehicle = &vehicleInstances[i];
			spawnData = &D_80259490[i];
			spawnX = ((spawnData->unk0 << 8) + 0x80);
			spawnZ = ((spawnData->unk2 << 8) + 0x80);

			if (spawnData->unk6 == 0) {
				vehicle->unk20 &= 0xFFFF7FFF;
			} else {

				vehicle->unk20 |= (0x8000 | VEHICLE_FLAG_UNK1);
				func_800FB44C_10A3FC(vehicle, spawnX);
				func_800FB484_10A434(vehicle, spawnZ);
				buildingIndex = func_8011E6FC_12D6AC(vehicle->unk0, vehicle->unk4, &groundHeight);
				func_800FB468_10A418(vehicle, groundHeight);

				if (buildingIndex != -1) {
					vehicle->unk20 |= VEHICLE_FLAG_ON_BRIDGE;
				}

				vehicle->unkE = -spawnData->unk8 + 0x4000;
				vehicle->unk6 = -spawnData->unk8 + 0x4000;
				vehicle->unk3C = ((f32)(vehicleTypes[spawnData->unk6].unk61 << 8) * ((f32)spawnData->unkA / 100.0));

				vehicle->unk1C = ((f32)(u32)vehicleTypes[vehicle->unk1A].hitPoints * ((f32)spawnData->unk10 / 100.0));
			}

		} while (i-- > 1);
	} else {

		i = D_80158FD8;
		if (i-- > 0) {

			do {
				vehicle = &vehicleInstances[D_80158E80[i]];

				if (vehicle != D_80052B34) {
					quarterRange = radius >> 2;

					if (func_80112A64_121A14(centerX, centerZ, vehicle->unk0, vehicle->unk4) < (quarterRange * quarterRange)) {
						spawnData = &D_80259490[vehicle->unk46 & 0x3F];
						spawnX = ((spawnData->unk0 << 8) + 0x80);
						spawnZ = ((spawnData->unk2 << 8) + 0x80);

						if (spawnData->unk6 == 0) {
							vehicle->unk20 &= 0xFFFF7FFF;
						} else {
							/* Health uses the loop slot, rather than the selected list entry. */
							VehicleInstance *vehicleByI = &vehicleInstances[i];

							vehicle->unk20 |= (0x8000 | VEHICLE_FLAG_UNK1);
							func_800FB44C_10A3FC(vehicle, spawnX);
							func_800FB484_10A434(vehicle, spawnZ);
							buildingIndex = func_8011E6FC_12D6AC(vehicle->unk0, vehicle->unk4, &groundHeight);
							func_800FB468_10A418(vehicle, groundHeight);

							if (buildingIndex != -1) {
								vehicle->unk20 |= VEHICLE_FLAG_ON_BRIDGE;
							}

							vehicle->unkE = -spawnData->unk8 + 0x4000;
							vehicle->unk6 = -spawnData->unk8 + 0x4000;
							vehicle->unk3C = ((f32)(vehicleTypes[spawnData->unk6].unk61 << 8) * ((f32)spawnData->unkA / 100.0));

							vehicle->unk1C = ((f32)(u32)vehicleTypes[vehicleByI->unk1A].hitPoints * ((f32)spawnData->unk10 / 100.0));
						}
					}
				}

			} while (i-- > 0);
		}
	}

	func_800FAC90_109C40();
	func_800FAD10_109CC0();
}

void func_80112F98_121F48(void)
{
	s32 i;
	f64 scale;
	u16 angle;
	s16 yawCos;
	scale = D_80144D68_153D18[0];
	i = 0x80;
	while (i--)
	{
		VehicleInstance *vehicle = &vehicleInstances[i];

		if ((vehicle->unk1A == 0x11) && (!(vehicle->unk20 & 0x8000)))
		{
			if (vehicle->unk1E >= 0x100)
			{
				continue;
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
	}
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

// Sets vehicle is airborne flag, and other things?
// AI - Updates vehicle physics flags (airborne, bridge, water) based on terrain and height checks
void func_80113310_1222C0(VehicleInstance *arg0) {
	VehicleType *type;
	WeaponSpecEntry *tableEntry;
	s16 sp4E;
	s16 sp4C;
	s16 sp4A;
	s16 varA2;
	s32 pad;
	s32 wasAboveWater;

	type = &vehicleTypes[arg0->unk1A];
	tableEntry = &D_80140768_14F718[type->unk55];
	wasAboveWater = D_80222A70 < arg0->unk2;

	if ((arg0->unk1A == 0) || (type->unk4C & 0x20000000)) {
		func_8011DE60_12CE10(1);
	}

	func_800F9D60_108D10(arg0->unk0, arg0->unk4, &sp4E, &sp4C, &sp4A);

	if ((arg0->unk1A == 0) || (type->unk4C & 0x20000000)) {
		func_8011DE60_12CE10(0);
	}

	if (arg0->unk1A == 0) {
		sp4E = func_800F9D24_108CD4(arg0->unk0, arg0->unk4);
	}

	if (!(type->unk4C & 0x100) && (sp4E < D_80222A70)) {
		sp4E = D_80222A70;
	}

	varA2 = sp4E;
	if ((arg0->unk20 & VEHICLE_FLAG_ON_BRIDGE) && (sp4A >= sp4E)) {
		varA2 = sp4A;
	}

	if (!(arg0->unk20 & VEHICLE_FLAG_AIRBORNE)) {
		if ((varA2 + 0x32) < arg0->unk2) {
			arg0->unk20 |= VEHICLE_FLAG_AIRBORNE;
		} else if ((arg0->unk1A != 0) || ((varA2 - 0x20) < arg0->unk2) || (varA2 == sp4E)) {
			func_800FB468_10A418(arg0, (f32)varA2);
		}
	} else {
		if (arg0->unk2 < varA2) {
			func_80107890_116840(arg0);
			func_80107970_116920(arg0, varA2);
			func_800FB468_10A418(arg0, (f32)varA2);
		} else if ((type->unk4C & 0x20000000) && (arg0->unk2 < D_80222A70) && ((arg0 != D_80052B34) || (D_801591AC != 6))) {
			if (arg0->unkA < tableEntry->unk8) {
				if (!(type->unk4C & 0x100)) {
					func_80107890_116840(arg0);
					func_80107970_116920(arg0, D_80222A70);
				} else if ((f32)tableEntry->unk2 < arg0->unk58) {
					if (type->unk4C & 0x20000) {
						arg0->unk2 = (type->unk38 >> 1) + D_80222A70 + 1;
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
		} else if ((type->unk4C & 0x20000000) && (D_8015926C < (arg0->unk2 - func_800F9F00_108EB0(arg0->unk0, arg0->unk4)))) {
			if (arg0->unk34 > 0.0f) {
				arg0->unk34 = 0.0f;
			}

			if (!(type->unk4C & 0x20000)) {
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

	if ((D_80222A70 >= arg0->unk2) && (arg0->unk1A != 0) && (arg0 == D_80052B34) && !(type->unk4C & 0x10000000)) {
		if (wasAboveWater) {
			func_800FB238_10A1E8(arg0, arg0->unk0, arg0->unk4, (s16)(vehicleTypes[arg0->unk1A].unkC + arg0->unk12));
		} else if (((f64)arg0->unk58 > 5.0) && (D_80052A8C & 1)) {
			func_800E1F70_F0F20(arg0);
			func_801372B4_146264(arg0->unk0, arg0->unk2, arg0->unk4, 1);
		}
	}
}

s32 func_80113808_1227B8(VehicleInstance *arg0) {
	f32 temp_f0;
	f32 sp28;
	f32 temp_f2;
	s32 var_a2;

	var_a2 = 0;
	func_8010FABC_11EA6C();

	if (arg0->unk20 & VEHICLE_FLAG_UNK1) {
		var_a2 = func_80110FB4_11FF64(arg0, 0);
		if (var_a2 != 0) {
			if ((arg0 == D_80052B34) && (D_801591AC == 6)) {
				func_80113248_1221F8(arg0);
				return 1;
			}

			if (arg0->unk20 & VEHICLE_FLAG_AIRBORNE) {
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
				temp_f2 = arg0->unk4C - temp_f0;
				sp28 = arg0->unk54 - D_80159198;
				if ((var_a2 == 5) || (var_a2 == 6) || (var_a2 == 8) || (var_a2 == 9)) {
					if (arg0 == D_80052B34) {
						func_800FB44C_10A3FC(arg0, (temp_f2 / 2) + temp_f0);
						func_800FB484_10A434(arg0, D_80159198);
						var_a2 = func_80110FB4_11FF64(arg0, 1);
						if (var_a2 != 0) {
							func_800FB44C_10A3FC(arg0, D_80159194);
							func_800FB484_10A434(arg0, (sp28 / 2) + D_80159198);
							var_a2 = func_80110FB4_11FF64(arg0, 1);
						}
					}
				}
			}

			if (arg0->unk1A != 0) {
				if ((D_80159320 & 0x20000000) && (arg0 == D_80052B34) && (arg0->unk20 & VEHICLE_FLAG_AIRBORNE)) {
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
						func_800FB430_10A3E0(arg0, (f32)((f64)temp_f0 * D_80144D70_153D20.value));
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
				func_800FB430_10A3E0(arg0, (f32)(-(arg0->unk12 >> 4)));
				arg0->unk30 = (f32)((f64)arg0->unk30 * 0.9375);
				arg0->unk34 = (f32)((f64)arg0->unk34 * 0.9375);
				arg0->unk38 = (f32)((f64)arg0->unk38 * 0.9375);
				break;

			case 3: {
				f64 damping;
				damping = D_80144D78_153D28[0];
				func_800FB430_10A3E0(arg0, (f32)((f64)arg0->unk12 * damping));
				damping = D_80144D80_153D30[0];
				arg0->unk30 = (f32)((f64)arg0->unk30 * damping);
				arg0->unk34 = (f32)((f64)arg0->unk34 * damping);
				arg0->unk38 = (f32)((f64)arg0->unk38 * damping);
				break;

			}
			case 10:
				break;

			default:
				func_800FB430_10A3E0(arg0, 0.0f);
				if (!(arg0->unk20 & VEHICLE_FLAG_AIRBORNE)) {
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


void func_80113CEC_122C9C(void) {
	s32 remainingVehicles;
	u32 vehicleIndex;
	s32 value;
	s16 groundAngle;
	s16 shortValue;
	s16 height;
	s16 angle;
	u8 playerType;
	u8 destroyedType;
	s32 flags;
	s32 absDeltaX;
	s32 result;
	s32 scratch;
	VehicleInstance *vehicle;
	s32 radius;
	VehicleType *type;
	f64 factor;
	s16 x;
	s16 y;
	s16 z;
	s16 yaw;
	s32 waterHeight;
	s32 typeIndex;
	s16 oldSine;
	s32 spawnX;

	if (D_80159320 & 0x2000) {
		func_800FAD10_109CC0();
	}
	if (D_80159300 != 0) {
		D_80159300 -= 1;
	}
	if (currentLevel == 3) {
		func_802D4CD0_18D7E0(5, 0);
	}
	D_801591F0 = (f32)((f64)D_80047726 / D_80144D88_153D38[0]);
	D_801591EC = (f32)((f64)D_80047728 / D_80144D88_153D38[0]);
	D_80159D5C = 0;
	D_80159D60 = 0;
	if (D_80159260 != 0) {
		D_80159260 -= 1;
		if (D_80159260 == 0) {
			D_8015930E = 0;
			D_8015EA30 = D_80144D90_153D40[0];
			D_80159320 &= 0xFFEFFFFF;
			func_801165FC_1255AC(D_80052543, 0, &x, &y, &z, &yaw);
			radius = vehicleTypes[((VehicleInstance *)((VehicleAddressValue *)&D_80052B34)->address)->unk1A].unk36;
			shortValue = coss((u16)(-0x4000 - yaw));
			factor = (f64) (f32) shortValue / 32768.0;
			spawnX = (s32) ((f64) x + (factor * (f64)radius));
			x = spawnX;
			shortValue = sins((u16)(-0x4000U - yaw));
			factor = (f32) shortValue / 32768.0;
			z = (s32) (z + factor * (f64)radius);
			angle = D_80052B34->unk0 - x;
			shortValue = D_80052B34->unk4 - z;
			scratch = -angle;
			if (scratch < angle) {
				absDeltaX = angle;
			} else {
				absDeltaX = scratch;
			}
			value = -shortValue;
			if (value < shortValue) {
				result = shortValue;
			} else {
				result = value;
			}
			if ((result + absDeltaX) < (radius * 2)) {
				shortValue = coss((u16)(0x4000 - yaw));
				func_800FB44C_10A3FC(D_80052B34, (f32) ((((f64) (f32) shortValue / 32768.0) * 2 * (f64)radius) + (f64) x));
				func_800FB468_10A418(D_80052B34, (f32) y);
				shortValue = sins((u16)(0x4000U - yaw));
				func_800FB484_10A434(D_80052B34, (f32) ((((f64) (f32) shortValue / 32768.0) * 2 * (f64)radius) + (f64) z));
			}
		}
		if ((D_80052B34->unk1A == 0x11) && (currentLevel == 3)) {
			func_800FB430_10A3E0(D_80052B34, 40.0f);
		} else {
			func_800FB430_10A3E0(D_80052B34, 8.0f);
		}
		D_80052B34->unk30 = 0.0f;
		D_80052B34->unk38 = 0.0f;
	}
	if ((currentLevel == 1) && (D_80052B34->unk1A == 8)) {
		func_802D4CD0_18D7E0(0x17, 0);
	}
	value = func_800F9D24_108CD4(D_80052B34->unk0, D_80052B34->unk4);
	waterHeight = D_80222A70;
	if (((waterHeight - 0x24) >= value) && (waterHeight >= D_80052B34->unk2)) {
		D_80159320 |= 0x1000;
	} else {
		D_80159320 &= ~0x1000;
	}
	if (gameplayMode != 0xB) {
		playerType = D_80052B34->unk1A;
		if ((playerType == 0) && (D_80159300 == 0)) {
			if ((D_80159320 & 0x1000) || ((D_80052B34->unk2 < waterHeight) && (currentLevel == 5))) {
				func_8010F218_11E1C8();
			} else if (!(D_80157A28 & PLAYER_STATE_FLAG_SWIMMING)) {
				D_8015931A = 0;
				if (D_8013FD84_14ED34 != 0) {
					if (D_8013FD84_14ED34 == 0x1E) {
						func_800E0E9C_EFE4C(D_80052B34->unk0, D_80052B34->unk4, vehicleTypes[D_80052B34->unk1A].unkC);
					}
					func_800CC7B0_DB760(5, 0x28, 5, D_80052B34->unk0, (s32) D_80052B34->unk2, (s32) D_80052B34->unk4);
					D_8013FD84_14ED34 -= 1;
				}
			} else {
				func_8010F218_11E1C8();
			}
		} else if (D_80052B34->unk2 < (waterHeight - 0x28)) {
			if (vehicleTypes[playerType].unk4C & 0x10000000) {
				D_8015931A = 0;
				D_8013FD84_14ED34 = 0;
			} else {
				func_8010F218_11E1C8();
			}
			if (D_80159320 & 0x20000) {
				func_80123E90_132E40(D_80052B34, 0xA);
				func_801371B8_146168(D_80052B34, 0xFE, D_80052B34->unk0, ((WaterLevelValue *)&D_80222A70)->halves.low, (s32) D_80052B34->unk4, 0.5f);
				if (!(D_80052A8C & 7)) {
					func_800DEA08_ED9B8(D_80052B34->unk0, (s16) (D_80052B34->unk2 + 0x32), D_80052B34->unk4, 0xC8, 4, 4, 0x28, 0xC8, 0xFF, 0xD2, 0xAA);
				}
			}
		} else if (vehicleTypes[playerType].unk4C & 0x10000000) {
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
	if (D_80052B34->unk3C > 0) {
		if (vehicleTypes[D_80052B34->unk1A].unk4C & 0x400000) {
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
		D_80159232 += D_80159234;
		D_80159234 -= 0x29;
		if ((D_80159234 > 0) && (D_80158E74 != NULL) && (D_80052ACA != 2)) {
			func_80014508_15108(D_80158E74, 1, D_80159234);
		} else {
			D_80159234 = 0;
		}
	} else {
		if (D_8015930C != 0) {
			D_8015930C = (s32)((f64)(f32)D_8015930C * D_80144D98_153D48.value);
		}
		D_80159234 = D_8015930C;
	}
	D_8015930A += D_8015930C;
	if (((currentLevel * 0x64) + D_80052B34->unk1A) == 0x12E) {
		D_801591C2 += D_80052B34->unk12 * 0x1CD;
	}
	factor = D_80144DA0_153D50[0];
	D_801591D0 = (f32) ((f64) D_801591D0 * factor);
	D_801591CC = (f32) ((f64) D_801591CC * factor);
	D_801591CA += D_801591C8;
	if (D_80158C50 > 0) {
		D_80158C52 -= 0xA3;
	}
	D_80158C50 += D_80158C52;
	if (D_80158C50 < 0) {
		D_80158C50 = 0;
		D_80158C52 = (s16) (s32) ((f64) -D_80158C52 * D_80144DA8_153D58.value);
	}
	if (D_80158C50 >= 0x1771) {
		D_80158C50 = 0x1770;
		D_80158C52 = (s16) (s32) ((f64) -D_80158C52 * D_80144DB0_153D60.value);
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
		if (D_8015931C-- == 0) {
			if (D_80052B34 == D_80158E6C) {
				func_800FDEA8_10CE58(D_80052B2C, 1);
			}
			func_800E0F4C_EFEFC(D_80158E6C->unk0, D_80158E6C->unk2, D_80158E6C->unk4, 0x18);
			func_80135D44_144CF4(D_80158E6C->unk0, D_80158E6C->unk2, D_80158E6C->unk4, 3.0f);
			func_800FDD8C_10CD3C(D_80158E6C);
		}
	}
	if (D_80159320 & 2) {
		func_80103D18_112CC8(D_80052B34, D_80158F8C);
	}
	if (D_80159320 & 0x80000000) {
		func_80102FA4_111F54();
	}
	remainingVehicles = D_80158FD8;
	while (remainingVehicles--) {
		vehicleIndex = D_80158E80[remainingVehicles];
		vehicle = &vehicleInstances[vehicleIndex];
		flags = vehicle->unk20;
		type = &vehicleTypes[vehicle->unk1A];
		if ((flags & 0x8000) && (flags & VEHICLE_FLAG_INSIDE_PLAY_BOUNDS)) {
			D_80159194 = vehicle->unk4C;
			D_80159198 = vehicle->unk54;
			D_8015919C = vehicle->unk50;
			D_801591A0 = vehicle->unk6;
			D_801591A2 = vehicle->unkA;
			D_801591A4 = vehicle->unk8;
			if ((vehicle == D_80052B34) && ((gameplayMode == 3) || (D_801493E2 == 0))) {
				func_80113808_1227B8(vehicle);
			} else {
				if (vehicle->unk1E != 0) {
					if (vehicle->unk1E-- == D_80145BE0_154B90[D_80159236].unk15) {
						func_80015674_16274(D_80145BE0_154B90[D_80159236].unkC);
					}
				}
				if ((currentLevel == 1) && (vehicle->unk1A == 0xC) && (D_80222A70 >= vehicle->unk2)) {
					func_80123E90_132E40(vehicle, 0x7FFF);
				}
				if (gameplayMode != 2) {
					shortValue = vehicle->unk1A;
					if ((currentLevel != 4) || (shortValue != 0xF)) {
						if (shortValue == 0) {
							if ((D_80157A28 & PLAYER_STATE_FLAG_SWIMMING) && (((u32)D_80052A8C % 60U) < 0x1EU)) {
								if (vehicle->unk2 < (D_80222A70 - 0xA)) {
									func_800D8FA0_E7F50(vehicle->unk0, (s16)(vehicle->unk2 + 0xA), vehicle->unk4);
									func_800D8FA0_E7F50(vehicle->unk0, (s16)(vehicle->unk2 + 0xA), vehicle->unk4);
								}
							}
						} else if ((vehicle->unk2 < (D_80222A70 - 0xA)) && (((u32)D_80052A8C % 60U) < 0x1EU)) {
							func_800D8FA0_E7F50(vehicle->unk0, (s16)(vehicle->unk2 + 0xA), vehicle->unk4);
							func_800D8FA0_E7F50(vehicle->unk0, (s16)(vehicle->unk2 + 0xA), vehicle->unk4);
						}
					}
				}
				if (type->weapon1 == 0x41) {
					vehicle->unk3C = 0;
				}
				D_80159244 = 0;
				typeIndex = vehicle->unk1A;
				if ((typeIndex == 5) && (currentLevel == 2)) {
					func_8010ADA4_119D54(vehicle, type);
					D_801591A0 = vehicle->unk6;
					D_801591A2 = vehicle->unkA;
					D_801591A4 = vehicle->unk8;

				} else if ((typeIndex == 0x11) && (currentLevel == 1)) {
					func_8010B5C8_11A578(vehicle, type);
					D_801591A0 = vehicle->unk6;
					D_801591A2 = vehicle->unkA;
					D_801591A4 = vehicle->unk8;

				} else {
					if ((vehicle->unk20 & VEHICLE_FLAG_PATH_GUIDED) && ((currentLevel != 3) || (typeIndex != 0xD))) {
						func_80106628_1155D8(vehicle);

					} else {

						if (!(((vehicle->unk0 >= (D_80052B34->unk0 - 0x1200)) && ((D_80052B34->unk0 + 0x1200) >= vehicle->unk0) && (vehicle->unk4 >= (D_80052B34->unk4 - 0x1200)) && ((D_80052B34->unk4 + 0x1200) >= vehicle->unk4)) || ((remainingVehicles & 3) == (D_80052A8C & 3)) || ((currentLevel == 3) && (typeIndex == 0xD)) || ((currentLevel == 4) && ((typeIndex == 0x11) || (typeIndex == 0x12))))) {
							continue;
						}
					}

					if ((vehicle == D_80052B34) && (vehicle->unk1A != 0)) {
						func_80014508_15108(vehicle, D_8015930E, D_8015930C);
					}
					if (!(vehicle->unk20 & VEHICLE_FLAG_AIRBORNE)) {
						groundAngle = func_8011290C_1218BC(vehicle);
						oldSine = sins(vehicle->unk10);
						angle = groundAngle;
						shortValue = sins(angle);
						factor = (f64)vehicle->unk12;
						result = (s32) (((((f64) (f32) oldSine / 32768.0) * factor) + (f64) vehicle->unk34) - (((f64) (f32) shortValue / 32768.0) * factor));
						vehicle->unk10 = angle;
						if (result < -4) {
							vehicle->unk20 = (vehicle->unk20 | VEHICLE_FLAG_AIRBORNE);
							if (vehicle->unk26 >= 0x191) {
								vehicle->unk26 = 0x190;
							}
							if (vehicle->unk26 < -0x190) {
								vehicle->unk26 = -0x190;
							}
							if (vehicle->unk22 >= 0x191) {
								vehicle->unk22 = 0x190;
							}
							if (vehicle->unk22 < -0x190) {
								vehicle->unk22 = -0x190;
							}
							if (vehicle->unk24 >= 0x191) {
								vehicle->unk24 = 0x190;
							}
							if (vehicle->unk24 < -0x190) {
								vehicle->unk24 = -0x190;
							}
						}
					}
					if ((vehicle == D_80052B34) && (D_801591AC == 6)) {
						destroyedType = vehicle->unk1A;
						if (vehicleTypes[destroyedType].unk4C & 0x20000000) {
							if (((currentLevel == 4) && (destroyedType == 5)) || ((currentLevel == 4) && (destroyedType == 9)) || ((currentLevel == 3) && (destroyedType == 8)) || ((currentLevel == 3) && (destroyedType == 7)) || ((currentLevel == 2) && (destroyedType == 6))) {
								func_80108B48_117AF8(vehicle);
							} else {
								func_80108CA8_117C58(vehicle);
							}
							if (D_801591B8-- == 0) {
								/* Preserve the two random-value stack homes. */
								s32 particlePadding;
								u16 randomY;
								u16 randomX;
								radius = (s16) type->unkC / 2;
								result = radius >> 1;
								randomX = func_800038E0_44E0();
								randomY = func_800038E0_44E0();
								value = func_800038E0_44E0();
								func_800E0F4C_EFEFC((s16) (((randomX % radius) + vehicle->unk0) - result), (s16) (((randomY % radius) + vehicle->unk2) - result), (s16) (((value % radius) + vehicle->unk4) - result), 0x16);
								D_801591B8 = func_800038E0_44E0() & 0xB;
							}
						} else {
							func_8010895C_11790C(vehicle);
						}
						if (func_800F9FAC_108F5C(vehicle->unk0, vehicle->unk4) >= vehicle->unk2) {
							func_80113248_1221F8(vehicle);
							continue;
						}
					} else {
						waterHeight = D_80222A70;
						height = vehicle->unk2;
						scratch = vehicle->unk20 & VEHICLE_FLAG_AIRBORNE;
						if (waterHeight >= height) {
							if (scratch != 0) {
								if (vehicle->unk1A == 0) {
									func_80108D80_117D30(vehicle, type);
								} else if ((type->unk4C & 0x10000000) && (type->unk55 != 0)) {
									func_801081F0_1171A0(vehicle, type);
								} else {
									func_80109370_118320(vehicle, type);
								}
							} else if (type->unk4C & 0x10000000) {
								func_80109C84_118C34(vehicle, type);
							} else if ((waterHeight - height) < ((s16) type->unk38 >> 1)) {
								func_80109C84_118C34(vehicle, type);
							} else {
								func_8010B60C_11A5BC(vehicle, type);
							}
						} else if (scratch != 0) {
							if ((type->unk4C & 0x20000000) && (vehicle == D_80052B34) && (vehicle->unk3C != 0)) {
								func_801081F0_1171A0(vehicle, type);
							} else {
								func_8010895C_11790C(vehicle);
							}
						} else if (type->unk4C & 0x20) {
							func_80109C84_118C34(vehicle, type);
						} else {
							func_8010B60C_11A5BC(vehicle, type);
						}
					}
				}

				if ((vehicle == D_80052B34) && (vehicle->unk1A == 0)) {
					if (!(vehicle->unk20 & VEHICLE_FLAG_AIRBORNE) || (D_80222A70 >= vehicle->unk2)) {
						D_80159320 &= 0xFFDFFFFF;
					}
					if (!(D_80159320 & 0x200000)) {
						func_800EB0C8_FA078(vehicle);
					}
				}

				waterHeight = D_80222A70;
				height = vehicle->unk2;
				if ((height == (u32)waterHeight) || ((vehicleTypes[vehicle->unk1A].unk4C & 0x20000) && (height < (waterHeight + 0xC8)))) {
					func_800E1F70_F0F20(vehicle);
				}
				func_80107EBC_116E6C(vehicle);
				func_8010999C_11894C(vehicle);
				func_80113310_1222C0(vehicle);
				if ((vehicle == D_80052B34) && (D_80159320 & 0x400)) {
					if (D_80159D5C != D_80052B34) {
						func_8010C4EC_11B49C(D_80052B34);
					}
					if (func_8010CF7C_11BF2C(D_80159218.x, D_80159218.z) == 0) {
						D_80159320 &= ~0x400;
					}
				}
				if (func_80113808_1227B8(vehicle) == 0) {
					if ((currentLevel == 2) && (vehicle->unk1A == 1)) {
						func_800FB44C_10A3FC(vehicle, D_80159194);
						func_800FB484_10A434(vehicle, D_80159198);
						vehicle->unk6 = D_801591A0;
						vehicle->unk22 = 0;
					}
					flags = vehicle->unk20;
					if (!(flags & VEHICLE_FLAG_AIRBORNE) && (flags & VEHICLE_FLAG_UNK1) && (vehicle->unk12 == 0) && (vehicle->unk26 == 0) && (vehicle->unk24 == 0) && (vehicle->unk22 == 0) && (vehicle->unk30 == 0.0f) && (vehicle->unk34 == 0.0f) && (vehicle->unk38 == 0.0f)) {
						vehicle->unk20 = (flags & ~VEHICLE_FLAG_UNK1);
					}
					D_80158C58[vehicleIndex] = vehicle->unk58;
					if (vehicle == D_80052B34) {
						value = type->unk4C;
						if ((value & 0x20000000) && !(value & 0x20000) && (vehicle->unk20 & VEHICLE_FLAG_AIRBORNE)) {
							if ((vehicle->unk0 == (s32) D_80159194) && (vehicle->unk2 == (s32) D_8015919C) && (vehicle->unk4 == (s32) D_80159198)) {
								osSyncPrintf(D_80144A40_1539F0, D_80159306);
								if (++D_80159306 > 20) {
									D_80159306 = 0;
									func_80123AC4_132A74(vehicle);
								}
							} else {
								D_80159306 = 0;
							}
						}
					}
				}

			}
		}
	}
	if (currentLevel == 4) {
		func_80115CC0_124C70();
	}
	if (D_80159320 & 0x2000) {
		func_800FAD10_109CC0();
	}
	D_80159050[D_8015904C].unk0 = D_80052B2C->unk38->unk0;
	D_80159050[D_8015904C].unk2 = D_80052B2C->unk38->unk2;
	D_80159050[D_8015904C].unk4 = D_80052B2C->unk38->unk4;
	D_8015904C++;
	D_8015904C %= 50;
}


void func_80115604_1245B4(VehicleInstance *arg0)
{
	s32 *base;
	s32 height;
	s32 i;
	base = (s32 *)((func_800FAE60_109E10(arg0) * 0x10) + ((s32)D_80159510));
	i = 3; do
	{
		height = func_800B84D0_C7480((s16)((s32)(D_80159D78[i] + arg0->unk4C)), (s16)((s32)(D_80159D98[i] + arg0->unk54))) >> 8;
		if ((!(vehicleTypes[arg0->unk1A].unk4C & 0x100)) && (height < D_80222A70))
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
	if ((!(vehicleTypes[arg0->unk1A].unk4C & 0x100)) && (temp_v1 < D_80222A70))
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

	if (!(vehicleTypes[arg0->unk1A].unk4C & 0x100) && (var_v1 < D_80222A70)) {
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
	D_8013FD78_14ED28->unk20 |= (0x8000 | VEHICLE_FLAG_INSIDE_PLAY_BOUNDS | VEHICLE_FLAG_UNK1);
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

void func_80115A74_124A24(void) {
	s32 i;
	s16 value;
	s32 xRange;
	s32 zRange;

	if ((currentLevel == 1) && !(D_80159320 & 0x400000) && (D_80052B34->unk1A == 3)) {
		D_80159320 |= 0x400000;
		func_802D4CD0_18D7E0(7, 0);
		setRandomSeed(0xFEEDABED);
		xRange = 12;
		zRange = 10;
		for (i = 115; i < 121; i++) {
			VehicleInstance *vehicle;

			vehicle = &vehicleInstances[i];
			vehicle->unk1A = 0x11;
			func_800FAE84_109E34(vehicle);
			do {
				func_800FB44C_10A3FC(vehicle, (f32)(((func_800038E0_44E0() % xRange) + 0x4B) << 8));
				func_800FB484_10A434(vehicle, (f32)(((func_800038E0_44E0() % zRange) - 0x66) << 8));
				func_800FB468_10A418(vehicle, (f32)(func_800F9D24_108CD4(vehicle->unk0, vehicle->unk4) + 0x190));
				value = vehicle->unk0;
			} while ((value >= 0x4E00) && (value < 0x5501) && (vehicle->unk4 >= -0x6400) && (vehicle->unk4 < 0x5E01));
			value = func_800038E0_44E0();
			do {} while (0);
			vehicle->unkE = value;
			vehicle->unk6 = value;
			vehicle->unk46 |= 0x3F;
			D_80158BD0[i] = 2;
			vehicle->unk20 = vehicle->unk20 | (0x8000 | VEHICLE_FLAG_INSIDE_PLAY_BOUNDS);
			vehicle->unk20 = vehicle->unk20 & -2;
		}
	}
	func_800FAD10_109CC0();
}

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
				func_800FB44C_10A3FC(var_s0, (f32)((s16)((var_s0->unk0 & 0xFF00) + 0xC3)));
				var_s3 = var_s0;
			}
			else
			{
				var_s0->unk6 = -0x8000;
				var_s0->unkE = var_s0->unk6;
				func_800FB484_10A434(var_s0, (f32)((s16)((var_s0->unk4 & 0xFF00) + 0x37)));
				var_s4 = var_s0;
			}
		}
		var_s0++;
	} while (var_s1--);
	var_s0 = vehicleInstances;
	var_s1 = 0x7F; do {
		if (var_s0->unk1A == 0x12)
		{
			if (var_s2 & 1)
			{
				if (var_s4->unk20 & 0x8000)
				{
					func_800FB44C_10A3FC(var_s0, (var_s4->unk4C + 452.0f) + ((f32)((var_s2 >> 1) * 0x165)));
					func_800FB484_10A434(var_s0, var_s4->unk54);
					var_s0->unk6 = -0x8000;
					var_s0->unkE = var_s0->unk6;
				}
			}
			else if (var_s3->unk20 & 0x8000)
			{
				func_800FB44C_10A3FC(var_s0, var_s3->unk4C);
				func_800FB484_10A434(var_s0, (var_s3->unk54 + 452.0f) + ((f32)((var_s2 >> 1) * 0x165)));
				var_s0->unk6 = -0x4000;
				var_s0->unkE = var_s0->unk6;
			}
			var_s0->unk20 |= 1;
			func_800FB430_10A3E0(var_s0, 0.0f);
			var_s2++;
		}
		var_s0++;
	} while (var_s1--);
}
