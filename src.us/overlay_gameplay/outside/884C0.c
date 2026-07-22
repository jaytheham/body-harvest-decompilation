#include <ultra64.h>
#include "common.h"
#include "857E0.h"

#define D_8013C1A7_14B157 (&D_8013C178_14B128[0x2F])

const char D_801417B0_150760[] = "explode walker\n";
const char D_801417C0_150770[] = "No mode active components\n";
const char D_801417DC_15078C[] = "Too many objects onscreen\n";
const char D_801417F8_1507A8[] = "%d already active\n";
const char D_8014180C_1507BC[] = "Can't add active obj: SetActiveObjectYPos set\n";
const char D_8014183C_1507EC[] = "Can't add active obj: CheckWithOthers set\n";
const char D_80141868_150818[] = "Can't add active obj: AddActiveObjectComponent set\n";
const char D_8014189C_15084C[] = "Too many walkers on screen\n";
const char D_801418B8_150868[] = "Object %d is not active %d\n";
const char D_801418D4_150884[] = "Trying to free already freed obj %d active %d\n";
const char D_80141904_1508B4[] = "Is %d,%d in shield wall/on invalid tile, Screen centre %d,%d, offset %d,%d\n";
const char D_80141950_150900[] = "Is %d,%d on invalid tile, Screen centre %d,%d, offset %d,%d\n";
const char D_80141990_150940[] = "Object %d\n";
const char D_8014199C_15094C[] = "Type %s\n";
const char D_801419A8_150958[] = "Posn %d,%d,%d\n";
const char D_801419B8_150968[] = "Orien %d,%d,%d\n";
const char D_801419C8_150978[] = "Direction %d\n";
const char D_801419D8_150988[] = "Elevation %d\n";
const char D_801419E8_150998[] = "Speed %d\n";
const char D_801419F4_1509A4[] = "Inc %f,%f,%f\n";
const char D_80141A04_1509B4[] = "Flags 0x%x:";
const char D_80141A10_1509C0[] = "AIRBORNE ";
const char D_80141A1C_1509CC[] = "ON BRIDGE ";
const char D_80141A28_1509D8[] = "HALF ON BRIDGE ";
const char D_80141A38_1509E8[] = "UNDER BRIDGE ";
const char D_80141A48_1509F8[] = "\n";
const char D_80141A4C_1509FC[] = "Object %d\n";
const char D_80141A58_150A08[] = "Type %s\n";
const char D_80141A64_150A14[] = "Human type %d\n";
const char D_80141A74_150A24[] = "Posn %d,%d,%d\n";
const char D_80141A84_150A34[] = "Orien %d,%d,%d\n";
const char D_80141A94_150A44[] = "Direction %d\n";
const char D_80141AA4_150A54[] = "Desired Direction %d\n";
const char D_80141ABC_150A6C[] = "Speed %d\n";
const char D_80141AC8_150A78[] = "Y Velocity %d\n";
const char D_80141AD8_150A88[] = "Flags 0x%x: ";
const char D_80141AE8_150A98[] = " TARGET OBJ";
const char D_80141AF4_150AA4[] = " TARGET VEHICLE";
const char D_80141B04_150AB4[] = " TARGET PT";
const char D_80141B10_150AC0[] = " PLAYER";
const char D_80141B18_150AC8[] = " AWAY";
const char D_80141B20_150AD0[] = " FALL";
const char D_80141B28_150AD8[] = " INVINCIBLE";
const char D_80141B34_150AE4[] = "\n";
const char D_80141B38_150AE8[] = "Hit points %d\n";
const char D_80141B48_150AF8[] = "Collision flags 0x%x\n";
const char D_80141B60_150B10[] = "Target %d @ %d,%d,%d\n";
const char D_80141B78_150B28[] = "Last collision tile %d,%d\n";
const char D_80141B94_150B44[] = "Counters: %d coll %d anim %d hit %d wait %d water %d weapons %d\n";
const char D_80141BD8_150B88[] = "Stage: %d\n";
const char D_80141BE4_150B94[] = "King Drone/Boss extra parameters\n";
const char D_80141C08_150BB8[] = "Counter1 %d, Counter2 %d\n";
const char D_80141C24_150BD4[] = "Extra flags 0x%x\n";
const char D_80141C38_150BE8[] = "Human %d, HCU %d\n";
const char D_80141C4C_150BFC[] = "Draw a gun\n";
const char D_80141C58_150C08[] = "ERROR: trying to process alien type %d\n";
const char D_80141C80_150C30[] = "Problems deleting active object because it is dead\n";
const char D_80141CB4_150C64[] = "Problems deleting active object in off screen\n";
const char D_80141CE4_150C94[] = "%s deleted because of function recursion\n";
const char D_80141D10_150CC0[] = "Vehicle %s force offscreen %s\n";
const char D_80141D30_150CE0[] = "Alien %s force offscreen %s\n";
const char D_80141D50_150D00[] = "Problems deleting active object to force off screen\n";
const char D_80141D88_150D38[] = "Human enters\n";
const char D_80141D98_150D48[] = "Force player off in direction %d\n";
const char D_80141DBC_150D6C[] = "Rioter %d Dead\n";
const char D_80141DCC_150D7C[] = "PROCESSOR DYING:\n";
const char D_80141DE0_150D90[] = "doing processor death\n";
const char D_80141DF8_150DA8[] = "**change to skeleton model**\n";
const f32 D_80141E18_150DC8[1] = { 550.0f };
const f32 D_80141E1C_150DCC[1] = { 1300.0f };
const f64 D_80141E20_150DD0[1] = { 0.95 };
const f64 D_80141E28_150DD8[1] = { 0.95 };
const f64 D_80141E30_150DE0[1] = { 2000.0 };
const f64 D_80141E38_150DE8[1] = { 2000.0 };
const f64 D_80141E40_150DF0[1] = { 15000.0 };
const f64 D_80141E48_150DF8[1] = { 15000.0 };
const f64 D_80141E50_150E00[1] = { 3.141592654 };
const f32 D_80141E58_150E08[1] = { -15000.0f };
const f32 D_80141E5C_150E0C[1] = { 0.0f };
const f64 D_80141E60_150E10[1] = { 3.141592654 };
const f64 D_80141E68_150E18[1] = { 3.141592654 };
const f64 D_80141E70_150E20[1] = { 3.141592654 };
const f64 D_80141E78_150E28[1] = { 3.141592654 };

s16 D_8013BB70_14AB20[14] = {
	0x0001, 0x0000, 0x0000, 0x0000, 0x0028, 0x0001, 0x0001, 0x0000,
	0x0000, 0x0000, 0x0028, 0x0001, 0x0001, 0x0000
};

s16 D_8013BB8C_14AB3C[64] = {
	0x0000, 0x00D1,
	0x0139, 0x002B, 0x0056, 0x003E, 0x00B3, 0x002D, 0x008F, 0x0064,
	0x0064, 0x0064, 0x0064, 0x0064, 0x0064, 0x0032, 0x0000, 0x00A9,
	0x00F5, 0x0010, 0x01D1, 0x002A, 0x0057, 0x005A, 0x009C, 0x002D,
	0x0064, 0x0064, 0x0064, 0x0064, 0x0064, 0x002D, 0x0000, 0x0040,
	0x00D0, 0x0117, 0x00A2, 0x00D8, 0x0072, 0x006D, 0x0064, 0x0064,
	0x0064, 0x0064, 0x0064, 0x0064, 0x0064, 0x0032, 0x0000, 0x013B,
	0x0099, 0x00E6, 0x0064, 0x0064, 0x0064, 0x0064, 0x0064, 0x0064,
	0x0064, 0x0064, 0x0064, 0x0064, 0x0064, 0x0064
};

s16 D_8013BC0C_14ABBC[16] = {
	0x0000, 0x0141, 0x00B4, 0x0141, 0x00F8, 0x00DB, 0x0064, 0x0064,
	0x0064, 0x0064, 0x0064, 0x0064, 0x0064, 0x0064, 0x0028, 0x0028
};

s16 D_8013BC2C_14ABDC[2] = {
	0x0000, 0x0003
};

u8 D_8013BC30_14ABE0[0x9C] = {
	0x00, 0x03, 0x00, 0x50, 0x00, 0x3C, 0x00, 0x2C, 0x00, 0x5A, 0x00, 0x23, 0x00, 0x03, 0x00, 0x03,
	0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03,
	0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x28, 0x00, 0x03, 0x00, 0x50, 0x00, 0x20,
	0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x00, 0x00, 0x08,
	0x00, 0x14, 0x00, 0x02, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x50, 0x00, 0x03, 0x00, 0x03,
	0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03,
	0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03,
	0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10,
	0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10,
	0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10,
};

u32 D_8013BCCC_14AC7C = 0;
u16 D_8013BCD0_14AC80 = 0;
u32 D_8013BCD4_14AC84 = 0x01000100;
u16 D_8013BCD8_14AC88 = 0x0100;

u8 D_8013BCDC_14AC8C[0x24] = {
	0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
};

u8 D_8013BD00_14ACB0[4] = {0x00, 0x00, 0x00, 0x00};
s32 D_8013BD04_14ACB4 = 0;

u8 D_8013BD08_14ACB8[0x30] = {
	0x40, 0x7F, 0x40, 0x00, 0x40, 0x7F, 0x40, 0x00, 0x80, 0xE5, 0x80, 0x00,
	0x80, 0xE5, 0x80, 0x00, 0x28, 0x64, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x7F, 0x00, 0x10, 0x00, 0x7F, 0x00, 0x10, 0x00, 0xE5, 0x00, 0x20, 0x00,
	0xE5, 0x00, 0x20, 0x00, 0x28, 0x64, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00,
};

u8 D_8013BD38_14ACE8[8] = {0x7F, 0x7F, 0x7F, 0x00, 0x7F, 0x7F, 0x7F, 0x00};
u8 D_8013BD40_14ACF0[0x10] = {
	0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF, 0x00,
	0x28, 0x64, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00,
};

u32 D_8013BD50_14AD00[4][65] = {
	{
		0x05006FC8, 0x05006880, 0x05006138, 0x050059F0, 0x050052A8, 0x05004B60, 0x05004418, 0x05003CD0,
		0x0500F588, 0x0500EE40, 0x0500E6F8, 0x0500DFB0, 0x0500D868, 0x0500D120, 0x0500C9D8, 0x0500C290,
		0x050179C8, 0x05017280, 0x05016B38, 0x050163F0, 0x05015CA8, 0x05015560, 0x05014E18, 0x050146D0,
		0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
		0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
		0x0501FE08, 0x0501F6C0, 0x0501EF78, 0x0501E830, 0x0501E0E8, 0x0501D9A0, 0x0501D258, 0x0501CB10,
		0x05028248, 0x05027B00, 0x050273B8, 0x05026C70, 0x05026528, 0x05025DE0, 0x05025698, 0x05024F50,
		0x0C0477E8, 0x0C0470A0, 0x0C046958, 0x0C046210, 0x0C045AC8, 0x0C045380, 0x0C044C38, 0x0C0444F0,
		0x0502D390,
	},
	{
		0x05009618, 0x05009B88, 0x050090B0, 0x050085D8, 0x050075D0, 0x05007B08, 0x05008070, 0x05008B48,
		0x05011FD8, 0x05011AA0, 0x05011568, 0x05011030, 0x05010AF8, 0x050105C0, 0x05010088, 0x0500FB50,
		0x0501A418, 0x05019EE0, 0x050199A8, 0x05019470, 0x05018F38, 0x05018A00, 0x050184C8, 0x05017F90,
		0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
		0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
		0x05022858, 0x05022320, 0x05021DE8, 0x050218B0, 0x05021378, 0x05020E40, 0x05020908, 0x050203D0,
		0x0502AC98, 0x0502A760, 0x0502A228, 0x05029CF0, 0x050297B8, 0x05029280, 0x05028D48, 0x05028810,
		0x0C04A238, 0x0C049D00, 0x0C0497C8, 0x0C049290, 0x0C048D58, 0x0C048820, 0x0C0482E8, 0x0C047DB0,
		0x0502D960,
	},
	{
		0x0500B0C8, 0x0500AE30, 0x0500AB98, 0x0500A900, 0x0500A668, 0x0500A3D0, 0x0500A138, 0x05009EA0,
		0x05013508, 0x05013270, 0x05012FD8, 0x05012D40, 0x05012AA8, 0x05012810, 0x05012578, 0x050122E0,
		0x0501B948, 0x0501B6B0, 0x0501B418, 0x0501B180, 0x0501AEE8, 0x0501AC50, 0x0501A9B8, 0x0501A720,
		0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
		0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
		0x05023D88, 0x05023AF0, 0x05023858, 0x050235C0, 0x05023328, 0x05023090, 0x05022DF8, 0x05022B60,
		0x0502C1C8, 0x0502BF30, 0x0502BC98, 0x0502BA00, 0x0502B768, 0x0502B4D0, 0x0502B238, 0x0502AFA0,
		0x0C04B768, 0x0C04B4D0, 0x0C04B238, 0x0C04AFA0, 0x0C04AD08, 0x0C04AA70, 0x0C04A7D8, 0x0C04A540,
		0x0502DEA0,
	},
	{
		0x0500BC80, 0x0500BB10, 0x0500B9A0, 0x0500B830, 0x0500B6C0, 0x0500B550, 0x0500B3E0, 0x0500B270,
		0x050140C0, 0x05013F50, 0x05013DE0, 0x05013C70, 0x05013B00, 0x05013990, 0x05013820, 0x050136B0,
		0x0501C500, 0x0501C390, 0x0501C220, 0x0501C0B0, 0x0501BF40, 0x0501BDD0, 0x0501BC60, 0x0501BAF0,
		0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
		0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
		0x05024940, 0x050247D0, 0x05024660, 0x050244F0, 0x05024380, 0x05024210, 0x050240A0, 0x05023F30,
		0x0502CD80, 0x0502CC10, 0x0502CAA0, 0x0502C930, 0x0502C7C0, 0x0502C650, 0x0502C4E0, 0x0502C370,
		0x0C04C320, 0x0C04C1B0, 0x0C04C040, 0x0C04BED0, 0x0C04BD60, 0x0C04BBF0, 0x0C04BA80, 0x0C04B910,
		0x0502E0C0,
	},
};

u8 D_8013C160_14B110[0xC] = {
	0xFF, 0xFF, 0xF0, 0xFF,
	0xFA, 0x14, 0xE6, 0xC8,
	0x1E, 0xB4, 0x96, 0x00,
};

s32 D_8013C16C_14B11C = (s32)0xFFFFFF32;
u8 D_8013C170_14B120[8] = {0x28, 0x8C, 0x64, 0x64, 0x82, 0x1E, 0x14, 0x64};
u8 D_8013C178_14B128[0x40] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xF0, 0xFF,
	0xFA, 0x14, 0xE6, 0xC8, 0x1E, 0xB4, 0x96, 0x00,
	0xFF, 0xFA, 0x14, 0xFF, 0x14, 0xF0, 0xB4, 0x96,
	0x00, 0x64, 0x0A, 0x1E, 0xFF, 0xC0, 0x80, 0xFF,
	0xFA, 0x3C, 0xE6, 0x78, 0x50, 0xB4, 0xA0, 0x00,
	0x01, 0x10, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
	0x11, 0x12, 0x14, 0x15, 0x17, 0x18, 0x19, 0x00,
};

u8 D_8013C1B8_14B168[0x34] = {
	0x00, 0x00, 0x10, 0x00, 0x11, 0x00, 0x11, 0x10,
	0x20, 0x00, 0x21, 0x00, 0x21, 0x11, 0x30, 0x00,
	0x40, 0x00, 0x50, 0x00, 0x60, 0x00, 0x70, 0x00,
	0x80, 0x00, 0x90, 0x00, 0xA0, 0x00, 0xB0, 0x00,
	0xC2, 0x00, 0xD2, 0x00, 0xE2, 0x00, 0xF0, 0x00,
	0xC0, 0x00, 0xD0, 0x00, 0xE0, 0x00, 0xF0, 0x00,
	0x00, 0x00, 0x00, 0x00,
};

AlienInstance D_8013C1EC_14B19C = {
	0,      /* unk0 */
	0,      /* unk2 */
	0,      /* unk4 */
	0,      /* unk6 */
	0,      /* unk8 */
	0,      /* unkA */
	-1,     /* unkC */
	0,      /* unkE */
	0,      /* unk10 */
	0,      /* unk12 */
	0,      /* unk14 */
	0,      /* unk16 */
	0,      /* unk18 */
	0x0,   /* specIndex */
	0xFF,      /* unk1B */
	0,      /* hitPoints */
	0,      /* unk1E */
	0,      /* unk20 */
	0,      /* unk24 */
	0xFF,   /* unk25 */
	0,      /* unk26 */
	0,      /* unk27 */
	-1,     /* unk28 */
	-1,     /* unk29 */
	0,      /* unk2A */
	0,      /* unk2C */
	0,      /* unk2E */
	0,      /* unk30 */
	0,      /* unk32 */
	0,      /* unk34 */
	0,      /* unk36 */
	0,      /* unk37 */
	0x00FF, /* unk38 */
	0,      /* unk3A */
	0,      /* unk3C */
	-1,     /* unk3D */
	0xFF,   /* unk3E */
	0xFF,   /* unk3F */
	0,      /* unk40 */
	0,      /* unk42 */
	0,      /* unk44 */
	0xFF,   /* pad46 */
	0,      /* unk47 */
	0,      /* unk48 */
	0xFF,   /* pad4A */
	0,      /* unk4B */
	0,      /* unk4C */
	0,      /* unk4E */
	0,      /* pad4F */
};

u8 D_8013C23C_14B1EC[8] = {0x00, 0x40, 0x00, 0x40, 0x00, 0x40, 0x00, 0x00};
u8 D_8013C244_14B1F4[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
u8 D_8013C24C_14B1FC[0x14] = {
	0x00, 0x60, 0x00, 0x60, 0x00, 0x60, 0x00, 0x40,
	0x00, 0x40, 0x00, 0x40, 0x00, 0x20, 0x00, 0x20,
	0x00, 0x20, 0x00, 0x00,
};

u32 D_8013C260_14B210[2] = {0x00300030, 0x00300000};
u32 D_8013C268_14B218[2] = {0x00400040, 0x00400000};

s16 D_8013C270_14B220[8] = {
	(s16)0xFF6A, (s16)0xFF6A, (s16)0xFEA2, (s16)0xFE3E,
	(s16)0xFE3E, (s16)0xFD76, (s16)0xFD12, (s16)0xFD12,
};

s16 D_8013C280_14B230[8] = {
	0x012C, (s16)0xFED4, 0x0000, 0x0226,
	(s16)0xFDDA, 0x0000, 0x02BC, (s16)0xFD44,
};

s16 D_8013C290_14B240[8] = {
	(s16)0xFF45, (s16)0xFF45, (s16)0xFF90, (s16)0xFF90,
	(s16)0xFFDB, (s16)0xFFDB, (s16)0xFF92, (s16)0xFF92,
};

s16 D_8013C2A0_14B250[8] = {
	(s16)0xFFB5, 0x004B, (s16)0xFF77, 0x0089,
	0x00AF, (s16)0xFF51, 0x00A0, 0x00A0,
};

f32 D_8013C2B0_14B260[3] = {0.25f, 0.5f, 0.75f};

s16 D_8013C2BC_14B26C[10] = {
	0x6000, (s16)0x8000, (s16)0xA000, 0x4000, (s16)0xFFFE,
	(s16)0xC000, 0x2000, 0x0000, (s16)0xE000, 0x0000,
};

Unk8014DD50 D_8013C2D0_14B280 = {0, 0, 0, 0, 0, 0, 0, 1, 0};

u32 D_8013C2E0_14B290[] = {
	0xFFDC0F00, 0x4628003C, 0x0000FF00, 0x00000000, 0x00000400, 0x0000F800,
	0x00010004, 0x00000000, 0x0000FC00, 0x0000E818, 0x0001000B, 0x00000000,
	0x00000000, 0x0000E000, 0x00010008, 0x00000000, 0x00000000, 0x0000E000,
	0x00000014, 0x00000000, 0x0000F830, 0x0000E000, 0x00010014, 0x00000000,
	0x00000000, 0x00000000, 0x00000004, 0x00000000, 0x00000000, 0x00000000,
	0x0000000B, 0x00000000, 0x00000000, 0x00000800, 0x00010008, 0x00000000,
	0x00000000, 0x000017E8, 0x00010014, 0x00000000, 0x00000000, 0x000017E8,
	0x00010014,
};

u32 D_8013C38C_14B33C[2] = {0x8013C2EC, 0x8013C33C};

u32 D_8013C394_14B344[] = {
	0x00000000, 0x00000BB8, 0x0000E000, 0x0001000C, 0x00000000, 0x00000DAC,
	0x0000E2B4, 0x00010009, 0x00000000, 0x00000BB8, 0x0000E834, 0x0001000C,
	0x00000000, 0x00001194, 0x0000DAB2, 0x0001000D, 0x00000000, 0x00001388,
	0x0000EE10, 0x0001000C, 0x00000000, 0x000007D0, 0x0000DAB2, 0x0001000D,
};

u32 D_8013C3F4_14B3A4[] = {
	0x00000000, 0x0000F448, 0x0000DE0C, 0x0001000D, 0x00000000, 0x0000F254,
	0x0000E50A, 0x0001000C, 0x00000000, 0x0000F448, 0x0000E2B4, 0x0001000A,
	0x00000000, 0x0000EE6C, 0x0000E570, 0x0001000C, 0x00000000, 0x0000EC78,
	0x0000F060, 0x0001000A, 0x00000000, 0x0000F830, 0x0000D8F0, 0x0001000C,
	0x00000000, 0x000010B6, 0x02D80678, 0x00010006, 0x00000000, 0x00000000,
	0x00001555, 0x00010006, 0x00000000, 0x00000000, 0x0000E889, 0x00010006,
	0x00000000, 0x00001D5E, 0x0D3A007F, 0x00010006, 0x00000000, 0x00000000,
	0x00000000, 0x00010006, 0x00000000, 0x0000E2D9, 0x0555E000, 0x00010006,
	0x00000000, 0x00000000, 0x00000000, 0x00010006, 0x00000000, 0x00000000,
	0x00000000, 0x00010006, 0x00000000, 0x000007E4, 0xFC4E2C28, 0x00010006,
	0x00000000, 0x00000000, 0x00000000, 0x00010006, 0x00000000, 0x0000F89B,
	0xF99AF48E, 0x00010006, 0x00000000, 0x00000000, 0x0000FEA7, 0x00010006,
};

Unk8014DD50 *D_8013C514_14B4C4[] = {
	(Unk8014DD50 *)0x8013C454, (Unk8014DD50 *)0x8013C464, (Unk8014DD50 *)0x8013C474,
	(Unk8014DD50 *)0x8013C484, (Unk8014DD50 *)0x8013C494, (Unk8014DD50 *)0x8013C4A4,
	(Unk8014DD50 *)0x8013C4B4, (Unk8014DD50 *)0x8013C4C4, (Unk8014DD50 *)0x8013C4D4,
	(Unk8014DD50 *)0x8013C4E4, (Unk8014DD50 *)0x8013C4F4, (Unk8014DD50 *)0x8013C504,
};

u32 D_8013C544_14B4F4[] = {
	0x00000000, 0x00000000, 0x0000FEA7, 0x00010002, 0x00000000, 0x00000000,
	0x00000064, 0x00010001, 0x00000000, 0x00000000, 0x0000FC4F, 0x00010002,
	0x00000000, 0x00000000, 0x000000B4, 0x00010002, 0x00000000, 0x00000000,
	0x0000FCE0, 0x00010002, 0x00000000, 0x00000000, 0x000001F9, 0x00010001,
	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000003E8, 0x00000000,
	0x00010005, 0x00000000, 0x0000F448, 0x00000000, 0x00010003, 0x00000000,
	0x00000000, 0x00000000, 0x00010005, 0x00000000, 0x0000FC18, 0x00000000,
	0x00010005, 0x00000000, 0x00000BB8, 0x00000000, 0x00010003, 0x00000000,
	0x00000000, 0x00000000, 0x00010005,
};

void func_80079510_884C0(u8 arg0)
{
  AlienInstance *inst = &alienInstances[alienInstances[arg0].unk25];
  *((s32 *)&inst->unk8) = 0;
  *((s32 *)&inst->unkC) = 0;
  *((s32 *)&inst->unk10) = 0;
  *((s32 *)&inst->unk14) = 0;
  inst->specIndex = 0;
  inst->hitPoints = 0x32;
  inst->unk1B = 0xFF;
  *((u8*)&inst->unk1E) = 0xFF;
}

s32 func_8007956C_8851C(u8 arg0)
{
	s32 slotIndex;
	s32 specFlags;
	u32 activeCount;

	activeCount = D_8014ECC8;
	if ((activeCount == 0xFF) || ((activeCount >= 0xFE) && ((arg0 == 0x19) || (arg0 == 0x1B))))
	{
		return -1;
	}
	if (currentLevel == 5)
	{
		if (arg0 == 0x14)
		{
			func_80088000_96FB0(-1);
		}
	}

	activeCount = D_8014ECC8;
	slotIndex = D_8014D308[activeCount];
	if (alienInstances[slotIndex].unk20 & 0x600)
	{
		if (activeCount == 0xFE)
		{
			return -1;
		}

		slotIndex = D_8014D308[activeCount + 1];
		D_8014D308[activeCount + 1] = D_8014D308[activeCount];
	}

	alienInstances[slotIndex] = D_8013C1EC_14B19C;
	alienInstances[slotIndex].specIndex = arg0;
	specFlags = alienSpecs[arg0].unk54;
	alienInstances[slotIndex].hitPoints = alienSpecs[arg0].unk3A;
	if (specFlags & 0x400)
	{
		alienInstances[slotIndex].unk20 |= 0x8000100;
	}
	if (specFlags & 0x2000)
	{
		alienInstances[slotIndex].unk20 |= 0x40000;
	}
	if (specFlags & 0x800000)
	{
		alienInstances[slotIndex].unk20 |= 0x400000;
	}

	D_8014ECC8_W = activeCount + 1;
	if ((arg0 == 0x19) || (arg0 == 0x1B))
	{
		alienInstances[slotIndex].unk25 = func_8007956C_8851C(0);
		func_80079510_884C0(slotIndex);
	}
	if (currentLevel == 3)
	{
		if ((arg0 == 9) || (arg0 == 8))
		{
			D_8013BD00_14ACB0[0]++;
		}
	}

	return slotIndex;
}

// https://decomp.me/scratch/tmc2b
// CURRENT(140)
#ifdef NON_MATCHING
// Skip this and aliens freeze when they die, never disappear
void func_800797A4_88754(s32 arg0, u8 arg1)
{
	s16 i;
	s16 nibble;
	if ((arg1) == 0)
	{
		return;
	}
	if ((i && i) && i)   {  }
	if ((arg1) >= 0x19)
	{
		return;
	}
	for (i = 0; i < 4; i++)
	{
		u8 val;
		switch (i)
		{
		  case 0:
			val = D_8013C1B8_14B168[arg1 * 2];
			nibble = ((u32) val) >> 4;
			break;

		  case 1:
			nibble = D_8013C1B8_14B168[arg1 * 2] & 0xF;
			break;

		  case 2:
			val = D_8013C1B8_14B168[(arg1 * 2) + 1];
			nibble = ((u32) val) >> 4;
			break;

		  case 3:
			nibble = D_8013C1B8_14B168[(arg1 * 2) + 1] & 0xF;
			break;
		}

		if (nibble != 0)
		{
			func_800A8A68_B7A18(
					alienInstances[arg0].unk0,
					alienInstances[arg0].unk2,
					alienInstances[arg0].unk4,
					D_8013C1A7_14B157[nibble]);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800797A4_88754.s")
#endif

// CURRENT(60)
#ifdef NON_MATCHING
void func_80079910_888C0(s32 arg0) {
	u8 pad;
	u8 specIndex;
	u8 waveIndex;
	AlienInstance *alien;

	alien = &alienInstances[arg0];
	specIndex = alien->specIndex;
	if (arg0 == 0xFF) {
		return;
	}

	if (specIndex == 1) {
		func_8011C6A8_12B658(arg0);
		if ((alien->unk24 >= 5) && (alien->unk24 < 0xF)) {
			D_80048190--;
		}
	}

	if ((specIndex >= 3) && (specIndex != 0x20)) {
		if (!(alien->unk20 & 0x100000)) {
			waveIndex = alien->unk3E;
			if (waveIndex != 0xFF) {
				D_80223780[waveIndex].unk10--;
				if ((D_80223780[waveIndex].unk10 == 0) && (D_80052ACA != 2)) {
					func_800AF52C_BE4DC(waveIndex);
				}
			}
		}
	}

	if (alien->unk20 & 0x80000) {
		if (alien->hitPoints > 0) {
			func_800F375C_10270C(alien->unk20 & 7);
		} else {
			osSyncPrintf(&D_801417B0_150760);
			func_800F3038_101FE8(alien->unk20 & 7);
		}
		alien->unk20 &= ~0x80000;
	}

	if (alien->unk20 & 0x100000) {
		if (!(alien->unk20 & 0x200000)) {
			func_800797A4_88754(arg0, alienSpecs[specIndex].pad5A[6]);
		}
	}

	alien->specIndex = 0;
	D_8014ECC8--;
	D_8014D308[D_8014ECC8] = arg0;

	if ((specIndex == 0x19) || (specIndex == 0x1B)) {
		func_80079910_888C0(alien->unk25);
	}

	if (currentLevel == 3) {
		if ((specIndex == 9) || (specIndex == 8)) {
			D_8013BD00_14ACB0[0]--;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80079910_888C0.s")
#endif

s16 func_80079B74_88B24(Unk8014DD50 *arg0) {
	s16 idx;

	if (D_8014ECD0 == 0x78) {
		D_8014D300 = 1;
		return -1;
	}

	idx = D_8014EC50[D_8014ECD0];
	D_8014ECD0++;
	D_8014DD50[idx].unkE = 0;
	D_8014DD50[idx] = *arg0;

	if (arg0->unkC != -1) {
		D_8014DD50[idx].unkC = func_80079B74_88B24(arg0 + 1);
	}
	if (arg0->unkD != -1) {
		D_8014DD50[idx].unkD = func_80079B74_88B24(arg0 + D_8014DD50[idx].unkD);
	}
	return idx;
}

s32 func_80079C8C_88C3C(s32 arg0) {
	u8 spec;
	s16 idx;
	spec = alienInstances[arg0].specIndex;

	D_8014D300 = 0;
	if (D_8014ECD0 == 0x78) {
		alienInstances[arg0].unkC = -1;
		osSyncPrintf(&D_801417C0_150770, &alienInstances[arg0]); // No mode active components
		return 0;
	}

	idx = D_8014EC50[D_8014ECD0];
	D_8014ECD0++;
	D_8014DD50[idx].unkE = 0;
	D_8014DD50[idx].unk0 = 0;
	D_8014DD50[idx].unk2 = 0;
	D_8014DD50[idx].unk4 = 0;
	D_8014DD50[idx].unk6 = 0;
	D_8014DD50[idx].unk8 = 0;
	D_8014DD50[idx].unkA = 0;
	D_8014DD50[idx].unkD = -1;

	if (alienSpecs[spec].unk44 != 0) {
		D_8014DD50[idx].unkC = func_80079B74_88B24((Unk8014DD50 *)alienSpecs[spec].unk44);
	} else {
		D_8014DD50[idx].unkC = -1;
	}

	if (D_8014D300 != 0) {
		alienInstances[arg0].unkC = -1;
		func_80079DC0_88D70(idx);
		return 0;
	}

	alienInstances[arg0].unkC = idx;
	return 1;
}

void func_80079DC0_88D70(s32 arg0)
{
	s32 idx;
	while (arg0 != (-1))
	{
		idx = -1;
		if (D_8014DD50[arg0].unkC != idx)
		{
			func_80079DC0_88D70(D_8014DD50[arg0].unkC);
		}
		idx = --D_8014ECD0;
		D_8014EC50[D_8014ECD0] = arg0;
		arg0 = D_8014DD50[arg0].unkD;
	}
}

void func_80079E64_88E14(s32 arg0) {
	u8 state = alienInstances[arg0].specIndex;
	AlienInstance *ai = &alienInstances[arg0];
	if (state == 1) {
		if (!(ai->unk20 & 0x1000)) {
			if (ai->unk24 == 0xF) {
				ai->unk48 = 0xA0;
			} else if (ai->unk24 == 0x10 || ai->unk24 == 0x13) {
				ai->unk48 = 0;
			} else {
				ai->unk48 = 0x40;
			}
		}
		if (ai->unk24 == 1 || ai->unk24 == 0x1D) {
			D_80048194++;
		}
	}
}

// CURRENT(1515)
#ifdef NON_MATCHING
s32 func_80079F08_88EB8(s32 arg0) {
	u8 specIndex;
	s16 floorY;
	s16 hitY;
	u8 hitType;

	specIndex = alienInstances[arg0].specIndex;

	if (((alienInstances[arg0].specIndex == 0xD) && (alienInstances[arg0].unk48 > 0)) || ((alienInstances[arg0].specIndex == 0x12) && (alienInstances[arg0].unk24 == 5))) {
		return 0;
	}

	if (alienInstances[arg0].unk20 & 0x01000000) { alienInstances[arg0].unk10 = 0; return 0; }

	floorY = (s16) (func_800B84D0_C7480(alienInstances[arg0].unk0, alienInstances[arg0].unk4) >> 8);

	if (alienSpecs[specIndex].unk54 & 0x80000001) {
		func_8011DE60_12CE10(1);
	}

	hitType = (u8) func_8011E6FC_12D6AC(alienInstances[arg0].unk0, alienInstances[arg0].unk4, &hitY);

	if (alienSpecs[specIndex].unk54 & 0x80000001) {
		func_8011DE60_12CE10(0);
	}

	if ((alienSpecs[specIndex].unk54 < 0) && (hitType != 0xFF)) {
		if (alienInstances[arg0].unk2 >= hitY) {
			floorY = hitY;
		}
	}

	if (alienSpecs[specIndex].unk54 & 0x81) {
		if ((currentLevel != 4) || (specIndex != 7)) {
			if (floorY < D_80222A70) {
				floorY = (s16) D_80222A70;
			}
		}
	}

	floorY = floorY + alienSpecs[specIndex].unk58;
	if (!(alienSpecs[specIndex].unk54 & 0x40)) {
		if (alienInstances[arg0].unk2 < floorY) {
			alienInstances[arg0].unk2 = floorY;
		}
	}

	if (!(alienSpecs[specIndex].unk54 & 0x841)) {
		alienInstances[arg0].unk2 = floorY;
	}

	if (hitType != 0xFF) {
		if (alienSpecs[specIndex].unk54 & 0x10) {
			if ((alienInstances[arg0].unk2 < (hitY - 0x32)) || !(alienSpecs[specIndex].unk54 & 0x80000001)) {
				if ((currentLevel != 3) || ((specIndex != 9) && (specIndex != 8))) {
					return 1;
				}
			}
		}
	}

	alienInstances[arg0].unk10 = 0;
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80079F08_88EB8.s")
#endif

// https://decomp.me/scratch/PEXJ7
// CURRENT(250)
#ifdef NON_MATCHING
s32 func_8007A198_89148(s32 arg0)
{
	u8 sp24;
	u8 _pad;
	u8 sp2D;
	s32 new_var;
  
	sp2D = alienInstances[arg0].specIndex;
	func_80079F08_88EB8(arg0);
	sp24 = arg0;
	func_80080510_8F4C0(sp24);
	if (alienSpecs[sp2D].unk0 != -1)
	{
		new_var = (s8)func_800F3990_102940(sp24, (u8)alienSpecs[sp2D].unk0) | 0x80000;
		alienInstances[arg0].unk20 &= ~7;
		alienInstances[arg0].unk20 |= new_var;
	}
	func_80079C8C_88C3C(arg0);
	func_80079E64_88E14(arg0);
	alienInstances[arg0].unk20 |= 0x600;
	alienInstances[arg0].unk20 &= ~0x200;
	D_8014D510[D_8014ECCC] = arg0;
	D_8014ECCC++;
	return D_8014ECCC - 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007A198_89148.s")
#endif

// https://decomp.me/scratch/s8PwY
// guess_addActiveObject Skipping seems to result in aliens with no physical presence
s32 func_8007A2A0_89250(s32 arg0)
{
	s16 pad;
	u8 sp34;

	sp34 = alienInstances[arg0].specIndex;
	if (D_8014ECCC == 0x40)
	{
		osSyncPrintf(&D_801417DC_15078C);
		return -1;
	}
	if (alienInstances[arg0].unk20 & 0x600)
	{
		osSyncPrintf(&D_801417F8_1507A8, arg0);
		return -1;
	}
	D_8014D510[D_8014ECCC] = arg0;
	if (func_80079F08_88EB8(arg0) != 0)
	{
		osSyncPrintf(&D_8014180C_1507BC);
		return -1;
	}
	if (alienSpecs[alienInstances[arg0].specIndex].unk54 & 0x3E)
	{
		D_8014D304 = 0;
		if (func_8007F0E8_8E098((u8)arg0, 0, 0) != 0)
		{
			osSyncPrintf(&D_8014183C_1507EC);
			return -1;
		}
	}
	if (func_80079C8C_88C3C(arg0) == 0)
	{
		osSyncPrintf(&D_80141868_150818);
		return -1;
	}
	if ((s8)alienSpecs[sp34].unk50 != (-1))
	{
		s8 slot;
		s32 new_var;

		slot = (s8)func_800F3990_102940((u8)arg0, (u8)alienSpecs[sp34].unk50);
		if (slot == (-1))
		{
			osSyncPrintf(&D_8014189C_15084C);
			func_80079DC0_88D70(alienInstances[arg0].unkC);
			return -1;
		}
		new_var = slot | 0x80000;
		alienInstances[arg0].unk20 &= ~7;
		alienInstances[arg0].unk20 |= new_var;
	}
	if (alienSpecs[sp34].unk54 & 0x02000000)
	{
		alienInstances[arg0].unk3C = func_800CD1F8_DC1A8(0, 0, 0, 0, -0x3C, 0);
		alienInstances[arg0].unk3D = func_800CD1F8_DC1A8(0, 0, 0, 0, -0x3C, 0);
	}
	func_80079E64_88E14(arg0);
	alienInstances[arg0].unk20 |= 0x600;
	D_8014D510[D_8014ECCC] = arg0;
	D_8014ECCC++;
	return D_8014ECCC - 1;
}

s32 func_8007A4F8_894A8(s32 arg0)
{
  u8 alienIdx;
  alienIdx = D_8014D510[arg0];
  if (((u32) arg0) >= D_8014ECCC)
  {
	osSyncPrintf(&D_801418B8_150868, alienIdx, arg0); // Object %d is not active %d
	return 0;
  }
  if (!(alienInstances[alienIdx].unk20 & 0x600))
  {
	osSyncPrintf(&D_801418D4_150884, alienIdx, arg0); // Trying to free already freed obj %d active %d
	return 0;
  }
  alienInstances[alienIdx].unk20 &= ~0x600;
  if (alienInstances[alienIdx].unk20 & 0x80000)
  {
	func_800F375C_10270C((s8) (alienInstances[alienIdx].unk20 & 7));
	alienInstances[alienIdx].unk20 &= ~0x80000;
  }
  if (alienSpecs[alienInstances[alienIdx].specIndex].unk54 & 0x02000000)
  {
	if (alienInstances[alienIdx].unk3C != 0xFB)
	{
	  func_800CD390_DC340((u8) alienInstances[alienIdx].unk3C);
	}
	if (alienInstances[alienIdx].unk3D != 0xFB)
	{
	  func_800CD390_DC340((u8) alienInstances[alienIdx].unk3D);
	}
  }
  if (alienInstances[alienIdx].specIndex == ALIEN_SPEC_HUMAN)
  {
	if (!(alienInstances[alienIdx].unk20 & 0x1000))
	{
	  alienInstances[alienIdx].unk48 = 0;
	}
	if ((alienInstances[alienIdx].unk24 == 1) || (alienInstances[alienIdx].unk24 == 0x1D))
	{
	  D_80048194--;
	}
  }
  func_80079DC0_88D70(alienInstances[alienIdx].unkC);
  D_8014ECCC--;
  D_8014D510[arg0] = D_8014D510[D_8014ECCC];
  return 1;
}

// CURRENT(1037)
#ifdef NON_MATCHING
void func_8007A6B4_89664(u8 arg0)
{
	AlienInstance* alien;
	s16 startX;
	s16 startZ;
	s32 x;
	s32 z;
	s32 diffX;
	s32 diffZ;
	s32 absX;
	s32 absZ;
	s32 stepX;
	s32 stepZ;
	s32 i;
	u8 stage;

	i = 0;
	if (currentLevel == 3) {
		stage = alienInstances[arg0].specIndex;
		if ((stage == 9) || (stage == 8)) {
			return;
		}
	}

	alien = &alienInstances[arg0];
	startX = alien->unk0;
	startZ = alien->unk4;
	diffX = startX - D_80149434;
	diffZ = startZ - D_80149436;
	if ((-diffX) < diffX) { absX = diffX; } else { absX = -diffX; }
	if ((-diffZ) < diffZ) { absZ = diffZ; } else { absZ = -diffZ; }

	stepX = 0;
	if (absZ < absX) {
		if (-diffX > 0) {
			stepX = -0x100;
			stepZ = 0;
		} else {
			stepX = 0x100;
			stepZ = 0;
		}
	} else {
		if (-diffZ > 0) {
			stepZ = -0x100;
		} else {
			stepZ = 0x100;
		}
	}

	if (stepX != 0) {
		x = (s32)((double)D_80149434 + (double)(stepX * 18) * 0.5);
		z = startZ;
	} else if (stepZ != 0) {
		x = startX;
		z = (s32)((double)D_80149436 + (double)(stepZ * 18) * 0.5);
	}

	stage = alien->unk1B;
	alien->unk0 = x;
	alien->unk2E = x;
	alien->unk4 = z;
	alien->unk32 = z;
	if (D_80047F94 == stage) {
		if ((func_800B0D10_BFCC0(alien->unk0, alien->unk4, alienSpecs[alien->specIndex].unkC) == 0) &&
			(func_8007F9C8_8E978(arg0, alien->specIndex) == 0)) {
			return;
		}

		while (1) {
			alien->unk0 -= stepX;
			alien->unk4 -= stepZ;
			osSyncPrintf(&D_80141904_1508B4, alien->unk0, alien->unk4, D_80149434, D_80149436, stepX, stepZ);
			i++;
			if (i >= 10) {
				return;
			}
			if (func_800B0D10_BFCC0(alien->unk0, alien->unk4, alienSpecs[alien->specIndex].unkC) == 0) {
				if (func_8007F9C8_8E978(arg0, alien->specIndex) == 0) {
					return;
				}
			}
		}
	} else if (stage == 0xFF) {
		if (func_8007F9C8_8E978(arg0, alien->specIndex) == 0) {
			return;
		}

		while (1) {
			alien->unk0 -= stepX;
			alien->unk4 -= stepZ;
			osSyncPrintf(&D_80141950_150900, alien->unk0, alien->unk4, D_80149434, D_80149436, stepX, stepZ);
			i++;
			if (i >= 10) {
				return;
			}
			if (func_8007F9C8_8E978(arg0, alien->specIndex) == 0) {
				return;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007A6B4_89664.s")
#endif

void func_8007AA0C_899BC(void)
{
	s32 i;
	s8 *p;
	D_8014ECCC = 0;
	D_8014ECC8 = 0;
	D_8014ECD0 = 0;
	D_80140AC4_14FA74 = 0;
	D_80048184 = -1;
	D_80048180 = 0;
	D_80048190 = 0;
	D_80048194 = 0;
	for (i = 0; i < 0xFF; i++)
	{
		alienInstances[i].specIndex = 0;
		alienInstances[i].unk20 = 0;
		alienInstances[i].unk37 = 0;
		D_8014D308[i] = i;
	}

	for (i = 0; i < 0x40; i++)
	{
		D_8014D510[i] = 0xFF;
	}

	p = D_8014EC50;
	i = 0;
	loop3:
	if (1)
	{
		p[1] = i + 1; p[2] = i + 2; p[3] = i + 3;
		p[0] = i;
		i += 4;
		p += 4;
	}

	if (i != 0x78)
	goto loop3;
}

// https://decomp.me/scratch/Jhhfz
// CURRENT(20)
#ifdef NON_MATCHING
// R on controller 2 debug prints current vehicle info + target info (if any)
// Skipping this stops aliens/humans moving
void func_8007AF8C_89F3C(void);
void func_8007D690_8C640(void);
void func_8007D424_8C3D4(void);
void func_8007FDD8_8ED88(void);

void func_8007AAEC_89A9C(void)
{
  s32 vehIdx;
  VehicleInstance *vehicle;
  AlienInstance *alien;
  alien = D_80158FEC;
  vehicle = D_80052B34;
  func_8007AF8C_89F3C();
  func_8007D690_8C640();
  func_8007D424_8C3D4();
  func_8007FDD8_8ED88();
  if (isButtonNewlyPressed(CONTROLLER_TWO, BUTTON_R) != 0)
  {
	if (vehicle != NULL)
	{
	  osSyncPrintf(&D_80141990_150940, vehicle - vehicleInstances);
	  vehIdx = vehicleSpecs[vehicle->unk1A].unk18 * 2;
	  osSyncPrintf(&D_8014199C_15094C, D_800344B4_350B4[vehIdx]);
	  osSyncPrintf(&D_801419A8_150958, vehicle->unk0, vehicle->unk2, vehicle->unk4);
	  osSyncPrintf(&D_801419B8_150968, vehicle->unk6, vehicle->unkA, vehicle->unk8);
	  osSyncPrintf(&D_801419C8_150978, vehicle->unkE);
	  osSyncPrintf(&D_801419D8_150988, vehicle->unk10);
	  osSyncPrintf(&D_801419E8_150998, vehicle->unk12);
	  osSyncPrintf(&D_801419F4_1509A4, vehicle->unk30, vehicle->unk34, vehicle->unk38);
	  osSyncPrintf(&D_80141A04_1509B4, vehicle->unk20);
	  if (vehicle->unk20 & 2)
	  {
		osSyncPrintf(&D_80141A10_1509C0);
	  }
	  if (vehicle->unk20 & 0x800)
	  {
		osSyncPrintf(&D_80141A1C_1509CC);
	  }
	  if (vehicle->unk20 & 4)
	  {
		osSyncPrintf(&D_80141A28_1509D8);
	  }
	  if (vehicle->unk20 & 8)
	  {
		osSyncPrintf(&D_80141A38_1509E8);
	  }
	  osSyncPrintf(&D_80141A48_1509F8);
	}
	if (alien != NULL)
	{
	  osSyncPrintf(&D_80141A4C_1509FC, alien - alienInstances);
	  osSyncPrintf(&D_80141A58_150A08, alienSpecs[alien->specIndex].unk18);
	  if (alien->specIndex == 1)
	  {
		osSyncPrintf(&D_80141A64_150A14, alien->unk24);
	  }
	  osSyncPrintf(&D_80141A74_150A24, alien->unk0, alien->unk2, alien->unk4);
	  osSyncPrintf(&D_80141A84_150A34, alien->unk6, alien->unkA, alien->unk8);
	  osSyncPrintf(&D_80141A94_150A44, alien->unkE);
	  osSyncPrintf(&D_80141AA4_150A54, alien->unk2A);
	  osSyncPrintf(&D_80141ABC_150A6C, alien->unk12);
	  osSyncPrintf(&D_80141AC8_150A78, alien->unk10);
	  osSyncPrintf(&D_80141AD8_150A88, alien->unk20);
	  if (alien->unk20 & 0x20)
	  {
		osSyncPrintf(&D_80141AE8_150A98);
	  }
	  if (alien->unk20 & 0x80)
	  {
		osSyncPrintf(&D_80141AF4_150AA4);
	  }
	  if (alien->unk20 & 0x100)
	  {
		osSyncPrintf(&D_80141B04_150AB4);
	  }
	  if (alien->unk20 & 0x08000000)
	  {
		osSyncPrintf(&D_80141B10_150AC0);
	  }
	  if (alien->unk20 & 0x40)
	  {
		osSyncPrintf(&D_80141B18_150AC8);
	  }
	  if (alien->unk20 & 0x40000000)
	  {
		osSyncPrintf(&D_80141B20_150AD0);
	  }
	  if (alien->unk20 & 0x400000)
	  {
		osSyncPrintf(&D_80141B28_150AD8);
	  }
	  osSyncPrintf(&D_80141B34_150AE4);
	  osSyncPrintf(&D_80141B38_150AE8, alien->hitPoints);
	  osSyncPrintf(&D_80141B48_150AF8, alien->unk47);
	  osSyncPrintf(&D_80141B60_150B10, alien->unk38, alien->unk14, alien->unk16, alien->unk18);
	  osSyncPrintf(&D_80141B78_150B28, alien->unk28, alien->unk29);
	  osSyncPrintf(&D_80141B94_150B44, alien->unk2C, alien->unk34, alien->unk36, alien->unk37, alien->unk3A, alien->unk40, alien->unk1E);
	  osSyncPrintf(&D_80141BD8_150B88, alien->unk1B);
	  if ((alien->specIndex == 0x19) || (alien->specIndex == 0x1B))
	  {
		AlienInstance *parent;
		  parent = &alienInstances[alien->unk25];
		osSyncPrintf(&D_80141BE4_150B94);
		
		osSyncPrintf(&D_80141C08_150BB8, *((s32 *) (&parent->unk10)), *((s32 *) (&parent->unk14)));
		osSyncPrintf(&D_80141C24_150BD4, parent->unk20);
		if (alien->specIndex == 0x19)
		{
		  osSyncPrintf(&D_80141C38_150BE8, parent->unk1B, ((u8 *) parent)[0x1E]);
		}
	  }
	}
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007AAEC_89A9C.s")
#endif

// CURRENT(5401)
#ifdef NON_MATCHING
void func_8007AF8C_89F3C(void)
{
	AlienInstance *inst;
	AlienInstance *end;
	s32 countTypeA;
	s32 countTypeB;
	s32 countTypeC;
	s32 countTypeD;
	s32 idx;
	u8 type;
	u8 baseTypeA;
	u8 baseTypeB;
	u8 baseTypeC;

	countTypeA = 0;
	countTypeB = 0;
	countTypeC = 0;
	countTypeD = 0;
	inst = alienInstances;
	end = (AlienInstance *)&D_8004D148;
	type = inst->specIndex;
	while (1)
	{
		if ((type == 1) && (inst->unk24 != 0x13))
		{
			countTypeA++;
		}
		else if ((type == 2) || (type == 0x20))
		{
			countTypeB++;
		}
		else if ((type < 3) || (type >= 0x18))
		{
			if (type >= 0x21)
			{
				countTypeC++;
			}
			else if ((type >= 0x18) && (type < 0x20))
			{
				countTypeD++;
			}
		}
		else
		{
			countTypeC++;
		}

		inst++;
		if (!(inst < end))
		{
			break;
		}
		type = inst->specIndex;
	}

	D_8014D507 = countTypeA;
	baseTypeA = countTypeA;
	D_8014D508 = baseTypeA + countTypeB;
	D_8014D509 = D_8014D508 + countTypeC;
	D_8014D50A = D_8014D509 + countTypeD;

	baseTypeB = D_8014D508;
	baseTypeC = D_8014D509;
	inst = alienInstances;
	idx = 0;
	do {
		{
			D_8014D408[baseTypeA - countTypeA] = idx;
			countTypeA--;
		}
		if ((type == 2) || (type == 0x20))
		{
			D_8014D408[baseTypeB - countTypeB] = idx;
			countTypeB--;
		}
		else if ((type < 3) || (type >= 0x18))
		{
			if (type >= 0x21)
			{
				D_8014D408[baseTypeC - countTypeC] = idx;
				countTypeC--;
			}
			else if ((type >= 0x18) && (type < 0x20))
			{
				D_8014D408[D_8014D50A - countTypeD] = idx;
				countTypeD--;
			}
		}
		else
		{
			D_8014D408[baseTypeC - countTypeC] = idx;
			countTypeC--;
		}

		idx++;
		inst++;
	} while (idx != 0xFF);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007AF8C_89F3C.s")
#endif

void func_8007B170_8A120(s32 arg0) {
	if (arg0 == -1) {
		return;
	}
	do {
		func_800039D0_45D0((Unk80052B40 *)&D_8014DD50[arg0], (Unk80052B40 *)&D_8014DD50[arg0].unk6, NULL, D_8005BB38);
		D_8005BB38 += 0x40;
		if (D_8014DD50[arg0].unkC != -1) {
			func_8007B170_8A120(D_8014DD50[arg0].unkC);
		}
		arg0 = D_8014DD50[arg0].unkD;
	} while (arg0 != -1);
}

void func_8007B20C_8A1BC(Unk8014DD50 *arg0) {
	if (arg0 == NULL) {
		return;
	}
	do {
		func_800039D0_45D0((Unk80052B40 *)arg0, (Unk80052B40 *)&arg0->unk6, NULL, D_8005BB38);
		D_8005BB38 += 0x40;
		if (arg0->unkC != -1) {
			func_8007B20C_8A1BC(arg0 + arg0->unkC);
		}
		if (arg0->unkD != -1) {
			arg0 += arg0->unkD;
		} else {
			arg0 = NULL;
		}
	} while (arg0 != NULL);
}

void func_8007B2A0_8A250(u8 arg0)
{
  u8 specIndex = alienInstances[arg0].specIndex;
  if (alienSpecs[specIndex].unk44 != NULL)
  {
	gSPSegment(D_8005BB2C++, 0x07, osVirtualToPhysical((void *) D_8005BB38));
	func_8007B20C_8A1BC((Unk8014DD50 *) alienSpecs[specIndex].unk44);
  }
  gSPDisplayList(D_8005BB2C++, (Gfx *) alienSpecs[specIndex].unk0);
}

// CURRENT(5834)
#ifdef NON_MATCHING
void func_8007B370_8A320(s32 arg0) {
	AlienInstance *alien;
	f32 sinValue;
	s16 phase;
	s16 scale;
	s32 temp;
	u8 specIndex;
	volatile s32 sp88;
	volatile s16 sp78;
	volatile s16 sp7A;
	volatile s16 sp7C;
	volatile s16 sp80;
	volatile s16 sp82;
	volatile s16 sp84;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s32 pad6;
	s32 pad7;
	s32 pad8;
	s32 pad9;
	s32 pad10;
	s32 pad11;
	s32 pad12;
	s32 pad13;
	f32 sp74;

	sp88 = arg0;
	alien = &alienInstances[arg0 & 0xFF];
	phase = alien->unk48;
	if (phase < 0xF) {
		sinValue = (f32)((f64)(f32)sins((u32)((f32)(phase << 0xE) / 15.0f) & 0xFFFF) / 32768.0);
	} else {
		sinValue = (f32)((f64)(f32)sins((u32)((f32)((phase * -0x4000) + 0x50000) / 5.0f) & 0xFFFF) / 32768.0);
	}

	specIndex = alien->specIndex;
	scale = alienSpecs[specIndex].unkC;
	if (specIndex == 0x1A) {
		scale = (s16)(s32)((f64)scale * 1.5);
	}

	sp80 = scale * 10;
	temp = (s32)((f32)sp80 * sinValue);
	sp80 = temp;
	sp82 = (s16)((s16)temp / 2);
	sp84 = temp;
	sp78 = (s16)(alien->unk0 / 4);
	sp7A = (s16)(alien->unk2 / 4);
	sp7C = (s16)(alien->unk4 / 4);

	gSPDisplayList(D_8005BB2C++, (Gfx *)&D_80031230);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_50327B0 + ((D_80052A8C & 7) << 8));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 127, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 2, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 60, 60);
	gSPTexture(D_8005BB2C++, 0x1000, 0x1000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_SURF, G_RM_NOOP2);

	if (alien->unk48 != 0) {
		sp74 = sinValue;
		func_800039D0_45D0((Unk80052B40 *)&sp78, NULL, (Unk80052B40 *)&sp80, D_8005BB38);

		gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
		D_8005BB38 += 0x40;

		gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xC8, 0xC8, 0xFF, (u8)(128.0f * sp74));

		gSPDisplayList(D_8005BB2C++, (Gfx *)&D_50332A0);
		gSPEndDisplayList(D_8005BB2C++);
	}

	gSPDisplayList(D_8005BB2C++, (Gfx *)&D_80031200);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_PASS2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007B370_8A320.s")
#endif

// CURRENT(3823)
#ifdef NON_MATCHING
void func_8007B9CC_8A97C(s32 arg0) {
	AlienInstance *alien;
	AlienSpec *spec;
	Unk80052B40 sp70;
	Unk80052B40 sp68;
	Unk80052B40 sp60;
	s32 sp5C;
	s8 sp50;
	s8 sp51;
	s8 sp52;
	s16 sp4E;
	s16 sp4C;
	u8 specIndex;
	s32 flags;
	s16 yOffset;
	void *model;

	extern Gfx D_50509D8[];

	alien = &alienInstances[arg0 & 0xFF];
	specIndex = alien->specIndex;
	sp60 = *(Unk80052B40 *)&D_8013C23C_14B1EC[0];
	sp5C = alien->unkC;

	if (specIndex == 0x1B) {
		sp50 = 0xFF;
		sp51 = 0xFF;
		sp52 = 0xFF;
		sp4C = alien->unk0;
		sp4E = alien->unk4;

		if (currentLevel == 3) {
			f32 temp_f0;

			temp_f0 = (((s16)(func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8) - alien->unk2) + 0x4B0) / 600.0f;
			func_800B2354_C1304(&sp4C, &sp50, (s16)(temp_f0 * 256.0f), (s16)(temp_f0 * 800.0f));
		} else {
			func_800B2354_C1304(&sp4C, &sp50, 0x100, 0x320);
		}
	}

	sp70.unk2 = alien->unk2 >> 2;
	sp70.unk0 = alien->unk0 >> 2;
	sp70.unk4 = alien->unk4 >> 2;
	sp68.unk0 = 0x4000 - alien->unk6;
	sp68.unk2 = alien->unk44 + alien->unk8;
	sp68.unk4 = alien->unk42 + alien->unkA;

	flags = alien->unk20;
	if (!(flags & 0x40000000) && (alienSpecs[specIndex].unk54 & 0x80)) {
		sp68.unk2 += (s32)(((f64)(f32)sins((D_80052A8C << 11) & 0xFFFF) / 32768.0) * 512.0);
		sp68.unk4 += (s32)(((f64)(f32)coss(((D_80052A8C + 0xC) << 11) & 0xFFFF) / 32768.0) * 512.0);
	}

	spec = &alienSpecs[specIndex];
	if (flags & 0x80000000) {
		func_800038E0_44E0();
	}

	if ((specIndex != 2) && (specIndex != 0x20)) {
		yOffset = alien->unk4C;
		sp60.unk2 += yOffset;
		if (!(spec->unk54 & 0x4000)) {
			sp60.unk0 -= yOffset;
			sp60.unk4 -= yOffset;
		}
	}

	if ((specIndex != 2) && (specIndex != 0x20)) {
		func_800039D0_45D0(&sp70, &sp68, &sp60, D_8005BB38);
	} else {
		func_800039D0_45D0(&sp70, &sp68, (Unk80052B40 *)&D_800311A0, D_8005BB38);
	}

	setRandomSeed(D_80052A8C);
	if ((alien->unk20 & 0x100000) && (gameplayMode != 2)) {
		sp68.unk2 = (func_800038E0_44E0() / 64) + alien->unk8 + alien->unk44;
		sp68.unk4 = (func_800038E0_44E0() / 64) + alien->unkA + alien->unk42;
	}

	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	D_8005BB38 += 0x40;
	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);

	if (sp5C != -1) {
		gSPSegment(D_8005BB2C++, 0x07, osVirtualToPhysical((void *)(D_8005BB38 + 0x40)));
	}

	func_8007B170_8A120(sp5C);

	model = (void *)spec->unk0;
	if ((specIndex == 0x1A) && (alien->unk20 & 0x100000) && (alien->unk20 & 0x8000)) {
		model = D_50509D8;
	}

	gSPDisplayList(D_8005BB2C++, (Gfx *)model);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007B9CC_8A97C.s")
#endif

// https://decomp.me/scratch/mrFc0
// CURRENT(10)
#ifdef NON_MATCHING
// drawComplexObjectShadows e.g. humans
void func_8007BEC0_8AE70(void) {
	s32 i;
	AlienInstance *inst;
	u8 *ptr;

	if (!D_8014ECD0) {
		return;
	}
	ptr = D_8014D510;
	for (i = 0; i < D_8014ECCC; i++, ptr++) {
		u8 new_var;
		new_var = *ptr;
		inst = &alienInstances[new_var];
		if (!(inst->unk20 & 0x200) || (inst->unk20 & 0x80000)) {
			if (currentLevel == 1 && inst->specIndex == 0x22) {
				if (!(inst->unk20 & 0x4000)) {
					continue;
				}
			}
			if (currentLevel == 3) {
				if (inst->specIndex == 9) {
					continue;
				}
				if (inst->specIndex == 8) {
					continue;
				}
			}
			{
				u8 sp58Buf[0xC];
				if (func_8011E6FC_12D6AC(inst->unk0, inst->unk4, (s16 *)(sp58Buf + 4)) != -1) {
					continue;
				}
			}
			if (inst->unk20 & 0x10000000) {
				u8 specIndex = inst->specIndex;
				func_800E988C_F883C(inst, &alienSpecs[specIndex]);
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007BEC0_8AE70.s")
#endif

#ifdef NON_MATCHING
// drawComplexObjects eg: humans, alien torsos & heads
void func_8007C044_8AFF4(void) {
	Unk80052B40 smallScale;
	Unk80052B40 fullScale;
	AlienInstance *inst;
	AlienSpec *spec;
	LookAt *lookAt;
	s16 drewType1;
	s16 drewType2Or20;
	s16 savedX;
	s16 savedY;
	s16 savedZ;
	s16 rotation;
	s16 animIndex;
	s16 colorOffset;
	s32 swappedTexture;
	s32 lod;
	s32 flags;
	s32 color;
	s32 i;
	f32 dx;
	f32 dy;
	f32 dz;
	f32 distance;

	smallScale = *(Unk80052B40 *)D_8013C260_14B210;
	fullScale = *(Unk80052B40 *)D_8013C268_14B218;
	drewType1 = 0;
	drewType2Or20 = 0;
	swappedTexture = 0;

	gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_PASS2);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);

	for (i = 0; i < (s32)D_8014ECCC; i++) {
		u8 alienId;
		u8 specIndex;

		alienId = D_8014D510[i];
		inst = &alienInstances[alienId];
		flags = inst->unk20;

		if ((flags & 0x200) && !(flags & 0x80000)) {
			continue;
		}

		specIndex = inst->specIndex;
		if (specIndex == 0) {
			continue;
		}

		if ((D_80052ACA != 2) &&
			(func_800B93AC_C835C(inst->unk0, inst->unk4, (alienSpecs[specIndex].unkC + 0x100) & 0xFFFF,
				(s16)D_80052B2C->unk0, (s32)D_80052B2C->unk8, 0x4000 - D_80047950) == 0)) {
			inst->unk20 &= 0xEFFFFFFF;
			continue;
		}

		inst->unk20 |= 0x10000000;
		if (specIndex == 1) {
			drewType1 = 1;
			continue;
		}

		if ((specIndex == 2) || (specIndex == 0x20)) {
			drewType2Or20 = 1;
			continue;
		}

		spec = &alienSpecs[specIndex];
		if (spec->unk54 & 0x200000) {
			lookAt = (LookAt *)&D_8014D550[i << 5];
			guLookAtReflect((Mtx *)D_8005BB38, lookAt, D_80047954, D_80047958, D_8004795C, inst->unk0 / 4.0f,
				inst->unk2 / 4.0f, inst->unk4 / 4.0f, 0.0f, 1.0f, 0.0f);

			gSPLookAtX(D_8005BB2C++, lookAt);
			gSPLookAtY(D_8005BB2C++, (u8 *)lookAt + 0x10);
			gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_aLIGHT_1, 0xFFFFFFFF);
			gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_bLIGHT_1, 0xFFFFFFFF);
			gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_aLIGHT_2, 0x808080FF);
			gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_bLIGHT_2, 0x808080FF);
		}

		if (spec->unk54 & 0x10000) {
			gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
		}

		if (inst->unk20 & 0x80000000) {
			func_800710D4_80084(0xFF, 0x32, 0);
		}

		if (specIndex == 0x12) {
			func_800EF9F0_FE9A0(alienId);
		} else {
			func_8007B9CC_8A97C(alienId);
		}

		if (inst->unk20 & 0x80000000) {
			func_80070FB8_7FF68();
		}

		if (spec->unk54 & 0x10000) {
			gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
		}

		if ((spec->unk54 & 0x40000) && (inst->unk48 != 0) && !(inst->unk20 & 0x100000)) {
			func_8007B370_8A320(alienId);
		}
	}

	gSPMatrix(D_8005BB2C++, (Mtx *)((u32)&D_80031160 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	if (drewType1 != 0) {
		gDPPipeSync(D_8005BB2C++);
		gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK);
		gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
		gSPNumLights(D_8005BB2C++, 1);
		gSPLookAtX(D_8005BB2C++, D_8013BD40_14ACF0);
		gSPLookAtY(D_8005BB2C++, D_8013BD38_14ACE8);
		gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_8b, 16, D_5041480);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_8b, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 127, 1024);
		gDPTileSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 2, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, 2, 0, 0, 60, 60);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_8b, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, 1, 0, 0, 60, 60);

		for (i = 0; i < D_8014D507; i++) {
			u8 alienId;
			u8 state;

			alienId = D_8014D408[i];
			inst = &alienInstances[alienId];
			flags = inst->unk20;
			state = inst->unk24;

			if (((flags & 0x600) == 0) || (state == 0x13) || !(flags & 0x10000000)) {
				continue;
			}

			gDPPipeSync(D_8005BB2C++);

			if ((state == 1) || (state == 0x1D)) {
				if (swappedTexture == 0) {
					gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_8b, 16, D_5041880);
					gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_8b, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
					gDPLoadSync(D_8005BB2C++);
					gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 127, 1024);
					gDPTileSync(D_8005BB2C++);
					gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_8b, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
					swappedTexture = 1;
				}

				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_8b, 16, D_5041680);
			} else {
				if (swappedTexture != 0) {
					gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_8b, 16, D_5041480);
					gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_8b, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
					gDPLoadSync(D_8005BB2C++);
					gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 127, 1024);
					gDPTileSync(D_8005BB2C++);
					gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_8b, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
					swappedTexture = 0;
				}

				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_8b, 16, &D_5040A80[(alienId % 5) << 9]);
			}

			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 511, 512);

			savedX = inst->unk0;
			savedY = inst->unk2;
			savedZ = inst->unk4;
			rotation = 0x4000 - inst->unkE;

			dx = savedX - (D_80047954 * 4.0f);
			dy = savedY - (D_80047958 * 4.0f);
			dz = savedZ - (D_8004795C * 4.0f);
			distance = sqrtf((dx * dx) + (dy * dy) + (dz * dz));

			if (distance < D_80141E18_150DC8) {
				lod = 0;
			} else if (distance < 900.0f) {
				lod = 1;
			} else if (distance < D_80141E1C_150DCC) {
				lod = 2;
			} else {
				lod = 3;
			}

			animIndex = 0x40;
			if (!(flags & 0x100000)) {
				if ((flags & 0x40000000) || (state == 3) || (state == 4) || (state == 0x1D)) {
					animIndex = (((alienId + D_80052A8C) & 0xE) >> 1) + 0x10;
				} else if (flags & 0x4000) {
					animIndex = 0x40;
				} else if (state == 1) {
					animIndex = (((alienId + D_80052A8C) & 0x1C) >> 2) + 0x38;
				} else if (inst->unk2 < (D_80222A70 - 0x1E)) {
					animIndex = (((alienId + D_80052A8C) & 0xE) >> 1) + 0x30;
				} else if (inst->unk12 == 0x40) {
					animIndex = ((alienId + D_80052A8C) / 3U) & 7;
				} else if (((flags & 0x8000) && (flags & 0x20)) || (state == 0x10)) {
					if (gameplayMode != 2) {
						inst->unk36++;
					}
					if (inst->unk36 == 0x20) {
						inst->unk36 = 0x10;
					}
					animIndex = (inst->unk36 / 2) + 0x18;
					osSyncPrintf(D_80141C4C_150BFC);
				} else if (inst->unk12 == 0) {
					animIndex = 0;
				} else if ((inst->unk26 == 0) || (state != 0)) {
					animIndex = (((alienId + D_80052A8C) & 0xE) >> 1) + 8;
				} else {
					animIndex = (((alienId + D_80052A8C) & 0xE) >> 1) + 0x28;
				}
			}

			if ((state == 0x14) || (state == 4) || (state == 0xB) || (state == 0xC)) {
				func_800039D0_45D0((Unk80052B40 *)&savedX, (Unk80052B40 *)&rotation, &smallScale, D_8005BB38);
			} else {
				func_800039D0_45D0((Unk80052B40 *)&savedX, (Unk80052B40 *)&rotation, &fullScale, D_8005BB38);
			}

			gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			D_8005BB38 += 0x40;

			if (inst->unk20 & 0x80000000) {
				func_800710D4_80084(0xFF, 0xFF, 0xFF);
			}

			gSPDisplayList(D_8005BB2C++, (Gfx *)D_8013BD50_14AD00[lod][animIndex]);

			if (inst->unk20 & 0x80000000) {
				func_80070FB8_7FF68();
			}

			gSPEndDisplayList(D_8005BB2C++);
		}

		gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);

	if (drewType2Or20 != 0) {
		gSPDisplayList(D_8005BB2C++, (Gfx *)D_80031230);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 16, (u8 *)&D_503CF60[((u32)D_80052A8C % 7) << 9]);
		gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
		gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);

		for (i = D_8014D507; i < D_8014D508; i++) {
			u8 alienId;

			alienId = D_8014D408[i];
			inst = &alienInstances[alienId];
			flags = inst->unk20;

			if ((inst->specIndex == 0) || ((flags & 0x600) == 0) || !(flags & 0x10000000)) {
				continue;
			}

			if (flags & 0x100000) {
				colorOffset = -0x30;
				dx = 1.0f;
			} else if (flags & 0x4000) {
				colorOffset = inst->unk2C * 8;
				dx = 1.0f;
			} else {
				colorOffset = (s16)((sins(((alienId + D_80052A8C) << 13) & 0xFFFF) * 32.0f) / 32768.0f);
				dx = 1.0f;
			}

			if (inst->specIndex == 0x20) {
				dx = (3 - inst->unk26) * 0.5f;
			}

			savedX = D_800311A0.unk0;
			savedY = D_800311A0.unk2;
			savedZ = D_800311A0.unk4;
			D_800311A0.unk2 += colorOffset;
			D_800311A0.unk0 -= colorOffset >> 1;
			D_800311A0.unk4 -= colorOffset >> 1;

			if (inst->unk20 & 0x80000000) {
				gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_aLIGHT_1, 0xFFFFFFFF);
				gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_bLIGHT_1, 0xFFFFFFFF);
				gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_aLIGHT_2, 0x7F7F7FFF);

				color = 0x7F7F7FFF;
			} else if (inst->specIndex == 0x20) {
				gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_aLIGHT_1, 0xE50020FF);
				gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_bLIGHT_1, 0xE50020FF);
				gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_aLIGHT_2, 0x7F0010FF);

				color = 0x7F0010FF;
			} else {
				gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_aLIGHT_1, 0x80E580FF);
				gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_bLIGHT_1, 0x80E580FF);
				gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_aLIGHT_2, 0x407F40FF);

				color = 0x407F40FF;
			}

			gMoveWd(D_8005BB2C++, G_MW_LIGHTCOL, G_MWO_bLIGHT_2, color);

			D_800311A0.unk0 = (s16)((f32)D_800311A0.unk0 * dx);
			D_800311A0.unk2 = (s16)((f32)D_800311A0.unk2 * dx);
			D_800311A0.unk4 = (s16)((f32)D_800311A0.unk4 * dx);
			func_8007B9CC_8A97C(alienId);
			D_800311A0.unk0 = savedX;
			D_800311A0.unk2 = savedY;
			D_800311A0.unk4 = savedZ;
		}

		gSPDisplayList(D_8005BB2C++, (Gfx *)D_80031200);
		gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
	}

	for (i = 0; i < 0xFF; i++) {
		alienInstances[i].unk20 &= 0x7FFFFFFF;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007C044_8AFF4.s")
#endif

// Disable and aliens don't spawn visibly (show on radar tho)
#ifdef NON_MATCHING
/* CURRENT(3753) */
void func_8007D424_8C3D4(void) {
	s32 idx;
	AlienSpec *spec;
	void (*tickCallback)(u8);
	AlienInstance *inst;

	idx = D_80052A8C & 3;
	if (idx >= 0xFF) {
		return;
	}

	inst = &alienInstances[idx];

	do {
		u8 specIndex;

		specIndex = inst->specIndex;
		if (specIndex != 0) {
			s32 flags;
			u8 type;

			flags = inst->unk20;
			if ((flags & 0x100000) && !(flags & 0x600)) {
				type = inst->unk24;
				if ((specIndex == 1) && ((type == 3) || (type == 4) || (type == 0x1D))) {
					func_800AB8CC_BA87C((u8)idx);
				} else {
					func_80079910_888C0(idx);
				}
			}

			if (flags & 0x200000) {
				func_80087AFC_96AAC((u8)idx);
				idx += 4;
				inst = (AlienInstance *)((u8 *)inst + 0x140);
				continue;
			}

			if (!(flags & 0x600)) {
				u8 target;
				u8 idxU8;

				target = inst->unk1B;
				idxU8 = idx;
				if (target != 0xFF) {
					if (D_80047F94 != target) {
						goto skipUpdate;
					}
				}

				inst->unk2E = inst->unk0;
				inst->unk30 = inst->unk2;
				inst->unk32 = inst->unk4;
				if (inst->unk37 != 0) {
					inst->unk37 = 0;
				}

				func_8008030C_8F2BC((u8)idxU8);
				if (!(inst->unk47 & 1) && !(inst->unk20 & 0x10)) {
					func_8008199C_9094C((u8)idxU8);
					inst->unk2A = func_80081390_90340((u8)idxU8);
				}

				spec = &alienSpecs[specIndex];
				tickCallback = (void (*)(u8))spec->unk4C;
				if (tickCallback == NULL) {
					osSyncPrintf(&D_80141C58_150C08, specIndex);
				} else {
					tickCallback((u8)idxU8);
				}

			skipUpdate:
				{
					s32 dx;
					s32 dz;

					dx = inst->unk0 - D_80149434;
					dz = inst->unk4 - D_80149436;
					if ((dx < -0x8FF) || (dx >= 0x900) || (dz < -0x8FF) || (dz >= 0x900)) {
						if ((D_80052ACA != 2) || (specIndex < 0x1B)) {
							spec = &alienSpecs[specIndex];
							if (!(spec->unk54 & 0x08000000)) {
								idx += 4;
								inst = (AlienInstance *)((u8 *)inst + 0x140);
								continue;
							}
						}
					}

					if (func_8007A2A0_89250(idx) == -1) {
						func_8007A6B4_89664((u8)idx);
					}
				}
			}
		}

		idx += 4;
		inst = (AlienInstance *)((u8 *)inst + 0x140);
	} while (idx < 0xFF);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007D424_8C3D4.s")
#endif

// CURRENT(22760)
#ifdef NON_MATCHING
void func_8007D690_8C640(void) {
	s16 sp9A;
	f32 sp80;
	s32 sp60;
	u32 var_fp;
	u32 var_v0;

	var_v0 = D_8014ECCC;
	var_fp = 0;
	if (var_v0 != 0) {
		do {
			s32 temp_s5;
			AlienInstance *temp_s0;
			u8 temp_s1;
			s32 temp_s6;
			AlienSpec *temp_s3_2;

			temp_s5 = D_8014D510[var_fp];
			temp_s0 = &alienInstances[temp_s5];
			temp_s1 = temp_s0->specIndex;
			if (temp_s1 == 0) {
				if (func_8007A4F8_894A8(var_fp) != 0) {
					var_fp = (var_fp - 1) & 0xFF;
				} else {
					osSyncPrintf(D_80141C80_150C30);
				}
				goto block_167;
			}

			temp_s6 = temp_s0->unk20;
			if (temp_s6 & 0x600) {
				temp_s0->unk2E = temp_s0->unk0;
				temp_s0->unk30 = temp_s0->unk2;
				temp_s0->unk32 = temp_s0->unk4;

				if (temp_s6 & 0x200) {
					if (!(D_80052A8C & 3) || (D_80052ACA == 2)) {
						temp_s0->unk20 &= ~0x200;
						goto block_11;
					}
				} else {
block_11:
					if (temp_s0->unk37 != 0) {
						temp_s0->unk37 = temp_s0->unk37 - 1;
					}
					if (temp_s0->unk42 != 0) {
						temp_s0->unk42 = (s16) (s32) ((f64) temp_s0->unk42 * D_80141E20_150DD0);
					}
					if (temp_s0->unk44 != 0) {
						temp_s0->unk44 = (s16) (s32) ((f64) temp_s0->unk44 * D_80141E28_150DD8);
					}

					temp_s3_2 = &alienSpecs[temp_s1];
					if (!(temp_s0->unk20 & 0x100000)) {
						s32 temp_v1;
						f32 var_f0;

						temp_v1 = temp_s3_2->unk54;
						if (!(temp_v1 & 0x20000)) {
							if (temp_v1 & 0x4000) {
								s16 temp_v0_4;

								temp_v0_4 = temp_s3_2->unkC;
								var_f0 = 4.0f;
								if (temp_v0_4 >= 0x65) {
									var_f0 = (f32) ((f64) 4.0f * (((f64) (temp_v0_4 - 0x64) / 50.0) + 1.0));
								}
							} else {
								var_f0 = 0.0f;
							}

							sp80 = var_f0;
							D_8014DD50[temp_s0->unkC].unk2 = (s16) (s32) ((f64) D_8014DD50[temp_s0->unkC].unk2 -
								((f64) ((f32) temp_s0->unk4C * var_f0) * 0.25));
							temp_s0->unk4C = (s16) (s32) (((f64) (f32) sins((((temp_s5 * 9) + D_80052A8C) << 10) & 0xFFFF) / 32768.0) * 4.0);
							D_8014DD50[temp_s0->unkC].unk2 = (s16) (s32) ((f64) D_8014DD50[temp_s0->unkC].unk2 +
								((f64) ((f32) temp_s0->unk4C * var_f0) * 0.25));
						}
					}

					if ((temp_s0->unk1B == 0xFF) || (D_80047F94 == temp_s0->unk1B) || (temp_s0->unk20 & 0x100000)) {
						u8 temp_s4;
						s32 temp_v1_4;

						if (temp_s3_2->unk54 & 0x80000001) {
							func_8011DE60_12CE10(1);
						} else {
							func_8011DE60_12CE10(0);
						}

						temp_s4 = temp_s5 & 0xFF;
						sp60 = temp_s5;
						func_800800E4_8F094(temp_s4);

						temp_v1_4 = temp_s3_2->unk54;
						if ((temp_s6 & 0x40000000) || ((temp_v1_4 & 0x800) != 0)) {
							s32 var_v0_2;

							var_v0_2 = 0x70;
							if ((D_80222A70 >= temp_s0->unk2) && (D_80052ACA != 2)) {
								var_v0_2 = 0x20;
							}
							temp_s0->unk10 -= var_v0_2;

							if (temp_s3_2->unk54 & 0x8000) {
								s16 temp_a0;
								s32 var_v0_3;

								temp_a0 = temp_s0->unkA;
								if (temp_a0 < 0x3E80) {
									temp_s0->unkA = temp_a0 + 0x3E8;
								}
								if ((s32) temp_s5 > 0) {
									var_v0_3 = 1;
								} else if ((s32) temp_s5 < 0) {
									var_v0_3 = -1;
								} else {
									var_v0_3 = 0;
								}
								temp_s0->unk8 = (s16) ((temp_s0->unkA * var_v0_3) >> 3);
							}

							if ((temp_s0->unk20 & 0x02000000) || (D_80052ACA == 2)) {
								sp9A = (s16) (func_800B84D0_C7480(temp_s0->unk0, temp_s0->unk4) >> 8);
							} else {
								func_8011E6FC_12D6AC(temp_s0->unk0, temp_s0->unk4, &sp9A);
							}

							if (!(temp_s3_2->unk54 & 1) && !(temp_s6 & 0x100000)) {
								sp9A += temp_s3_2->unk58;
							}

							if ((temp_s0->unk2 < D_80222A70) && (D_80222A70 < temp_s0->unk30) && (D_80052ACA != 2)) {
								func_800E0E9C_EFE4C(temp_s0->unk0, temp_s0->unk4, (temp_s3_2->unkC * 2) & 0xFFFF);
							}

							if (temp_s0->unk2 < (sp9A - (temp_s0->unk10 >> 5))) {
								temp_s0->unk20 &= 0xBFFFFFFF;
								temp_s0->unk2 = sp9A;
								if (!(temp_s3_2->unk54 & 0x04000000)) {
									temp_s0->unkA = 0;
									temp_s0->unk12 = 0;
									temp_s0->unk10 = 0;
									temp_s0->unkE = temp_s0->unk6;
								}
							}
						} else if (temp_v1_4 & 0x40) {
							sp9A = temp_s3_2->unk58 + (func_800B84D0_C7480(temp_s0->unk0, temp_s0->unk4) >> 8);
							if (temp_s0->unk2 < sp9A) {
								temp_s0->unk2 = sp9A;
							}
						} else if (temp_v1_4 & 0x80) {
							temp_s0->unk2 = temp_s3_2->unk58 + D_80222A70;
						} else if (!(temp_v1_4 & 1) && !(temp_s0->unk20 & 0x20100000)) {
							func_80080510_8F4C0(temp_s4);
						}

						if (temp_s6 & 0x100000) {
							u8 temp_v0_6;

							if ((temp_s1 == 1) && ((temp_v0_6 = temp_s0->unk24, (temp_v0_6 == 3)) || (temp_v0_6 == 4) || (temp_v0_6 == 0x1D))) {
								func_800AB8CC_BA87C(temp_s4);
							}

							temp_s0->unk2C -= 1;
							if ((temp_s0->unk2 < (D_80222A70 - 0x64)) && (temp_s1 != 0x1A) && !(temp_s3_2->unk54 & 0x10000080)) {
								s32 temp_v0_7;

								temp_v0_7 = temp_s0->unk20;
								if (temp_v0_7 & 0x80000) {
									func_800F3190_102140(temp_v0_7 & 7, temp_s0->unk2);
								}
								temp_s0->unk20 &= 0xFFF7FFFF;
								func_800DF848_EE7F8(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, (u16) temp_s3_2->unkC, 0);
								func_80079910_888C0(temp_s5);
							} else {
								void (*temp_v0_8)(u8, s32, s32);

								temp_v0_8 = *(void (**)(u8, s32, s32)) &temp_s3_2->pad5A[2];
								if (temp_v0_8 != NULL) {
									temp_v0_8(temp_s4, 0x28, 0);
								} else {
									func_80089EB4_98E64(temp_s4, 0x28, 0, 2, 0);
								}

								if (temp_s0->unk20 & 0x80000) {
									temp_s0->unk6 = temp_s0->unkE;
								}

								if (temp_s0->unk2C <= 0) {
									if ((func_800B325C_C220C((s8) (temp_s0->unk0 >> 8), (s8) (temp_s0->unk4 >> 8), 0x1000) == 0) &&
										(((func_800B84D0_C7480(temp_s0->unk0, temp_s0->unk4) >> 8) + 0x64) >= temp_s0->unk2)) {
										s16 temp_v0_9;

										temp_v0_9 = alienSpecs[temp_s0->specIndex].unkC;
										if (temp_v0_9 >= 0x96) {
											func_800B8D80_C7D30(temp_s0->unk0, temp_s0->unk4, 0, 1);
										} else if (temp_v0_9 >= 0x64) {
											func_800B8D80_C7D30(temp_s0->unk0, temp_s0->unk4, 0, 0);
										}
									}
									func_80079910_888C0(temp_s5);
								}
							}
						} else if (temp_s6 & 0x200000) {
							func_80087AFC_96AAC(temp_s4);
						} else {
							if ((temp_s3_2->unk54 & 0x40000) && (D_80048180 == 0)) {
								s32 temp_v0_10;
								s32 temp_t5;
								s32 temp_t5_2;
								s16 var_v0_4;
								s32 temp_v1_5;
								s32 temp_t2;
								s32 var_t1;
								s32 var_t0;
								s32 var_v1_2;
								s32 var_v0_7;

								temp_v0_10 = temp_s0->unk2 - D_80052B34->unk2;
								temp_t5 = ((temp_s0->unk0 - D_80052B34->unk0) * 3) >> 2;
								temp_t5_2 = ((temp_s0->unk4 - D_80052B34->unk4) * 3) >> 2;
								var_v0_4 = temp_s3_2->unkC;
								temp_v1_5 = (s32) sqrtf((f32) ((temp_t5 * temp_t5) + (temp_v0_10 * temp_v0_10) + (temp_t5_2 * temp_t5_2)));
								temp_t2 = temp_v1_5;
								if (temp_s1 == 0x1A) {
									var_v0_4 = (s16) (s32) ((f64) var_v0_4 * 1.5);
								}

								if (temp_v1_5 < (vehicleSpecs[D_80052B34->unk1A].unkC + var_v0_4)) {
									if (temp_t5 > 0) {
										var_t1 = 1;
									} else if (temp_t5 < 0) {
										var_t1 = -1;
									} else {
										var_t1 = 0;
									}

									var_t0 = (temp_t5 >= 0) ? temp_t5 : -temp_t5;

									if (temp_t5_2 > 0) {
										var_v1_2 = 1;
									} else if (temp_t5_2 < 0) {
										var_v1_2 = -1;
									} else {
										var_v1_2 = 0;
									}

									var_v0_7 = (temp_t5_2 >= 0) ? temp_t5_2 : -temp_t5_2;
									func_80102D00_111CB0(D_80052B34,
										(f32) ((0.0 - (f64) (var_t0 / temp_t2)) * (f64) (var_t1 * -8)),
										0,
										(f32) ((0.0 - (f64) (var_v0_7 / temp_t2)) * (f64) (var_v1_2 * -8)));

									if (temp_s0->unk48 == 0) {
										temp_s0->unk48 = 0x14;
									}
									if (D_80052B34->unk1A == 0) {
										D_80157A28 |= 0x1000;
									}
								}

								if (temp_s0->unk48 != 0) {
									func_80137468_146418(temp_s5, 0x15);
									temp_s0->unk48 = temp_s0->unk48 - 1;
								}
							}

							if ((currentLevel == 2) && (temp_s1 != 1) && !((sp60 + D_80052A8C) & 0xF) && (func_800BC5DC_CB58C((s16) temp_s5) != 0)) {
								/* Intentionally empty in target control flow. */
							} else {
								if (!(temp_s0->unk20 & 0x40040000) && (temp_s1 != 1)) {
									temp_s0->unk6 = temp_s0->unkE;
								}
								if (!(temp_s0->unk47 & 1) && !(temp_s0->unk20 & 0x10)) {
									func_8008199C_9094C(temp_s4);
									temp_s0->unk2A = func_80081390_90340(temp_s4);
								}
								if (temp_s6 & 0x01000000) {
									s32 temp_s1_2;
									s32 temp_s2;
									AlienInstance *temp_v0_12;

									if (temp_s0->unk2C > 0) {
										temp_s0->unk2C = temp_s0->unk2C - 1;
									}

									temp_v0_12 = &alienInstances[temp_s0->unk25];
									temp_s1_2 = temp_s0->unk0 - temp_v0_12->unk0;
									temp_s2 = temp_s0->unk4 - temp_v0_12->unk4;

									if (D_80052ACA == 2) {
										if (temp_s0->unk47 & 1) {
											func_80088760_97710(temp_s0);
											func_80124B5C_133B0C(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, 0x3E8, 0x100);
										}
										if (((temp_s1_2 * temp_s1_2) + (temp_s2 * temp_s2)) >= 0x27101) {
											func_80084D80_93D30(temp_s4);
										}
									} else {
										if (temp_s0->unk47 & 1) {
											func_80088760_97710(temp_s0);
											func_80124B5C_133B0C(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, 0x50, 0x100);
										} else {
											temp_s0->unk12 = temp_s3_2->unk40;
										}
										if (((temp_s1_2 * temp_s1_2) + (temp_s2 * temp_s2)) >= 0x49DA5) {
											func_80084D80_93D30(temp_s4);
										}
									}
								} else {
									temp_s3_2->unk48(temp_s4);
								}
								goto block_146;
							}
						}
					} else {
block_146:
						if (!(temp_s3_2->unk54 & 1)) {
							s32 temp_v0_13;

							temp_v0_13 = temp_s0->unk20;
							if (!(temp_v0_13 & 0x60000000)) {
								s16 temp_a0_2;

								temp_a0_2 = temp_s0->unk30;
								if (temp_s0->unk2 < (temp_a0_2 - 0x32)) {
									temp_s0->unk2 = temp_a0_2;
									temp_s0->unk20 = temp_v0_13 | 0x40000000;
								}
							}
						}

						if ((D_80052ACA == 2) || (temp_s0->unk20 & 0x100000) || (gameplayMode == 3) || (gameplayMode == 0xB)) {
							/* Nothing to do. */
						} else {
							s32 temp_s1_3;
							s32 temp_s2_2;

							temp_s1_3 = temp_s0->unk0 - D_80149434;
							temp_s2_2 = temp_s0->unk4 - D_80149436;
							if (temp_s3_2->unk54 & 0x08000000) {
								/* Intentionally empty. */
							} else if (((temp_s1_3 < -0xA00) || (temp_s1_3 >= 0xA01) || (temp_s2_2 < -0xA00) || (temp_s2_2 >= 0xA01)) && !(D_80052A8C & 3)) {
								if (func_8007A4F8_894A8(var_fp) != 0) {
									var_fp = (var_fp - 1) & 0xFF;
								} else {
									osSyncPrintf(D_80141CB4_150C64);
								}
								temp_s0->unk0 = temp_s0->unk2E;
								temp_s0->unk2 = temp_s0->unk30;
								temp_s0->unk4 = temp_s0->unk32;
							}
						}
					}

					goto block_167;
				}
			} else {
block_167:
				var_v0 = D_8014ECCC;
			}

			var_fp = (var_fp + 1) & 0xFF;
		} while (var_fp < var_v0);
	}

	func_8011DE60_12CE10(0);
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007D690_8C640.s")
#endif

s32 func_8007E500_8D4B0(AlienInstance *arg0, AlienSpec *arg1, AlienInstance *arg2, AlienSpec *arg3)
{
	s32 var_a0;
	s32 var_a1;
	s32 var_v1;
	s32 var_a2;
	s32 dist;
	if ((arg1->unk16 & 0xF) != 1 && (arg3->unk16 & 0xF) != 1)
	{
		dist = func_80084F00_93EB0((VehicleInstance *) arg0, arg2);
	}
	else
	{
		dist = func_80084E54_93E04(arg0, arg2);
	}
	if (dist < 0)
	{
		var_a1 = 0;
		return var_a1;
	}
	var_a0 = arg1->unk38;
	var_a1 = arg0->unk2;
	var_v1 = arg2->unk2;
	var_a2 = arg3->unk38; 

	if (arg1->unk16 & 0x10)
	{
		var_a1 -= var_a0;
		var_a0 *= 2;
	}
	if (arg3->unk16 & 0x10)
	{
		var_v1 -= var_a2;
		var_a2 *= 2;
	}
	if (((dist < (arg1->unkC + arg3->unkC)) &&
		((var_v1 + var_a2) >= var_a1)) &&
		((var_a1 + var_a0) >= var_v1))
	{
		return 1;
	}
	return 0;
}

// CURRENT(10)
#ifdef NON_MATCHING
s32 func_8007E608_8D5B8(AlienInstance *arg0, AlienInstance *arg1) {
	AlienSpec *spec0;
	AlienSpec *spec1;
	s32 saved0, saved1;

	spec0 = &alienSpecs[arg0->specIndex];

	if (((s8 *)arg1)[0xD] == -2) {
		spec1 = (AlienSpec *)&vehicleSpecs[arg1->specIndex];
	} else {
		spec1 = &alienSpecs[arg1->specIndex];
	}

	saved0 = spec0->unk8;
	saved1 = spec1->unk8;

	if (((s8 *)arg1)[0xD] != -2) {
		if (currentLevel == 1) {
			if (arg0->specIndex == 0xD) {
				if (arg1->specIndex != 9) {
					goto end;
				}
			}
			if (arg1->specIndex == 0xD) {
				if (arg0->specIndex == 9) {
					goto end;
				} else {
					goto end;
				}
			}
		} else if (currentLevel == 2) {
			if (arg0->specIndex == 0xD) {
				goto end;
			}
			if (arg1->specIndex == 0xD) {
				goto end;
			}
		}
	}

end:
	func_8007E500_8D4B0(arg0, spec0, arg1, spec1);
	spec0->unk8 = saved0;
	spec1->unk8 = saved1;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007E608_8D5B8.s")
#endif

// CURRENT(1525)
#ifdef NON_MATCHING
s32 func_8007E734_8D6E4(AlienInstance *arg0, s16 arg1) {
	s16 var_a3;
	s16 temp_v0;
	s32 absDiff;
	s32 magnitude;
	s32 divisor;

	temp_v0 = arg1 - arg0->unkE;
	arg1 = (s16) arg1;
	if ((arg0->specIndex < 3) || (arg0->specIndex == 0x20)) {
		if (temp_v0 <= 0) {
			arg0->unkE = arg1 - 0x4000;
			arg0->unk6 = arg0->unkE;
			return 1;
		}
		return 0;
	}

	if (arg0->unk20 & 0x1A0) {
		var_a3 = arg0->unk2A;
	} else {
		var_a3 = arg0->unkE;
	}

	if (arg0->unk20 & 0x40100000) {
		arg0->unk47 |= 2;
	}

	if (((temp_v0 < 0) && (arg0->unk12 > 0)) || ((temp_v0 > 0) && (arg0->unk12 < 0))) {
		arg0->unk12 = 0;
	}

	temp_v0 = arg1 - var_a3;
	if (((temp_v0 > 0) && (arg0->unk12 >= 0)) || ((temp_v0 < 0) && (arg0->unk12 < 0))) {
		return 1;
	}

	arg0->unk47 |= 2;
	temp_v0 = var_a3 - arg1;
	magnitude = -temp_v0;
	if (magnitude < temp_v0) {
		magnitude = temp_v0;
	} else {
		magnitude = -temp_v0;
	}

	if (magnitude < 0x4000) {
		if ((s16)(arg0->unkE - arg1) < 0) {
			arg0->unk2A = arg1 + 0x800;
		} else {
			arg0->unk2A = arg1 - 0x800;
		}
	} else {
		arg1 += 0x8000;
		if ((s16)(arg0->unkE - arg1) < 0) {
			arg0->unk2A = arg1 + 0x800;
		} else {
			arg0->unk2A = arg1 - 0x800;
		}
	}

	divisor = alienSpecs[arg0->specIndex].unk42;
	if (divisor != 0) {
		temp_v0 = arg0->unk2A - arg0->unkE;
		magnitude = -temp_v0;
		if (magnitude < temp_v0) {
			magnitude = temp_v0;
		} else {
			magnitude = -temp_v0;
		}
		arg0->unk34 = (magnitude / divisor) + 0x1E;
	} else {
		arg0->unk34 = 1;
	}

	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007E734_8D6E4.s")
#endif

// CURRENT(7368)
#ifdef NON_MATCHING
void func_8007E980_8D930(AlienInstance *arg0, s16 arg1, s16 arg2) {
	s16 diffA;
	s16 diffB;
	s16 absA;
	s16 absB;
	s16 chosen;
	s16 chosenDiff;
	s16 absDiff;
	s16 divisor;

	if ((arg0->specIndex < 3) || (arg0->specIndex == 0x20)) {
		arg0->unkE = (arg1 + arg2) / 2;
		if (arg2 >= arg1) {
			arg0->unkE += 0x8000;
		}
		arg0->unk6 = arg0->unkE;
		return;
	}

	diffA = arg0->unkE - arg1;
	absA = -diffA;
	if (absA < diffA) {
		absA = diffA;
	}

	diffB = arg2 - arg0->unkE;
	absB = -diffB;
	if (absB < diffB) {
		absB = diffB;
	}

	chosen = arg2;
	chosenDiff = diffB;
	if (absA < absB) {
		chosen = arg1;
		chosenDiff = diffA;
	}

	if (chosenDiff < 0) {
		func_8007E734_8D6E4(arg0, chosen);
		arg0->unk12 = 0;
	} else {
		arg0->unk12 = 0;
	}

	if (chosen == arg1) {
		arg0->unk2A = chosen - 0x4800;
	} else {
		arg0->unk2A = chosen + 0x4800;
	}

	arg0->unk47 |= 2;

	divisor = alienSpecs[arg0->specIndex].unk42;
	if (divisor != 0) {
		diffA = arg0->unk2A - arg0->unkE;
		absDiff = -diffA;
		if (absDiff < diffA) {
			absDiff = diffA;
		}
		arg0->unk34 = (absDiff / divisor) + 0x1E;
	} else {
		arg0->unk34 = 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007E980_8D930.s")
#endif

#ifdef NON_MATCHING
// CURRENT(659)
s32 func_8007EB74_8DB24(AlienInstance *arg0, AlienInstance *arg1) {
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s16 angle;
	s32 ret;
	s32 flags;
	s32 signA;
	s32 signB;
	u8 specIndex;

	ret = 1;
	angle = func_80003824_4424((f32)-(arg0->unk4 - arg1->unk4), (f32)(arg0->unk0 - arg1->unk0));

	if (((s8 *)arg0)[0xD] != -2) {
		specIndex = arg0->specIndex;
		if (specIndex != 0x1B) {
			if (arg1 == (AlienInstance *)D_80052B34) {
				flags = arg0->unk20;
				if ((flags & 0x08000000) && !(flags & 0x20000)) {
					return 1;
				}
			}

			if (alienSpecs[specIndex].unk54 & 1) {
				signB = 1;
				signA = 1;
				if ((arg1->unk2 - arg0->unk2) < 0) {
					signB = -1;
				} else {
					signB = 1;
				}
				if (arg0->unk10 < 0) {
					signA = -1;
				} else {
					signA = 1;
				}
				if (signB == signA) {
					arg0->unk10 = 0;
				}
			}

			ret = func_8007E734_8D6E4(arg0, angle);
		}
	}

	if (((s8 *)arg1)[0xD] != -2) {
		specIndex = arg1->specIndex;
		if (specIndex != 0x1B) {
			if ((arg0 == (AlienInstance *)D_80052B34) && (arg1->unk20 & 0x08000000) && !(arg0->unk20 & 0x20000)) {
				return 1;
			}

			if (alienSpecs[specIndex].unk54 & 1) {
				signB = 1;
				signA = 1;
				if ((arg0->unk2 - arg1->unk2) < 0) {
					signB = -1;
				} else {
					signB = 1;
				}
				if (arg1->unk10 < 0) {
					signA = -1;
				} else {
					signA = 1;
				}
				if (signB == signA) {
					arg1->unk10 = 0;
				}
			}

			func_8007E734_8D6E4(arg1, angle + 0x8000);
		}
	}

	return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007EB74_8DB24.s")
#endif

void func_8007ED9C_8DD4C(u8 arg0)
{
  alienInstances[arg0].unk0 = alienInstances[arg0].unk2E;
  alienInstances[arg0].unk2 = alienInstances[arg0].unk30;
  alienInstances[arg0].unk4 = alienInstances[arg0].unk32;
  if ((alienInstances[arg0].unk20 & 0x80000) && (alienInstances[arg0].unk20 & 0x600))
  {
	func_800F2D48_101CF8(
		alienInstances[arg0].unk20 & 7,
		alienInstances[arg0].unk0,
		alienInstances[arg0].unk4);
  }
  alienInstances[arg0].unk16 = alienInstances[arg0].unk2;
}

void func_8007EE24_8DDD4(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	s32 mode = inst->unk20;
	inst->unk0 = inst->unk2E;
	inst->unk4 = inst->unk32;
	if ((mode & 0x80000) && (mode & 0x600))
	{
		inst->unk4 = inst->unk32;
		func_800F2D48_101CF8(mode & 7, inst->unk0, inst->unk4);
	}
}

void func_8007EE98_8DE48(AlienInstance *arg0, AlienInstance *arg1) {
	s32 dx;
	s32 dy;
	s32 dz;
	s32 dist;
	s32 combinedSize;
	f32 scale;
	f32 pushX;
	f32 pushY;
	f32 pushZ;
	AlienSpec *spec0;
	AlienSpec *spec1;

	if (((s8 *)arg0)[0xD] == -2) {
		spec0 = (AlienSpec *)&vehicleSpecs[arg0->specIndex];
	} else {
		spec0 = &alienSpecs[arg0->specIndex];
	}

	if (((s8 *)arg1)[0xD] == -2) {
		spec1 = (AlienSpec *)&vehicleSpecs[arg1->specIndex];
	} else {
		spec1 = &alienSpecs[arg1->specIndex];
	}

	combinedSize = spec0->unkC + spec1->unkC;
	dx = arg0->unk0 - arg1->unk0;
	dy = arg0->unk2 - arg1->unk2;
	dz = arg0->unk4 - arg1->unk4;

	dist = (s32)sqrtf((f32)((dx * dx) + (dy * dy) + (dz * dz)));
	if (dist == 0) {
		dist = 1;
	}

	scale = (f32)combinedSize / (f32)(dist * 2);
	pushX = (f32)dx * scale;
	pushY = (f32)dy * scale;
	pushZ = (f32)dz * scale;

	arg0->unk0 = (s16)(s32)((f32)arg0->unk0 + pushX);
	arg0->unk2 = (s16)(s32)((f32)arg0->unk2 + pushY);
	arg0->unk4 = (s16)(s32)((f32)arg0->unk4 + pushZ);

	arg1->unk0 = (s16)(s32)((f32)arg1->unk0 - pushX);
	arg1->unk2 = (s16)(s32)((f32)arg1->unk2 - pushY);
	arg1->unk4 = (s16)(s32)((f32)arg1->unk4 - pushZ);
}

// CURRENT(21299)
#ifdef NON_MATCHING
s32 func_8007F0E8_8E098(u8 arg0, u8 arg1, u8 arg2) {
	AlienInstance *inst;
	AlienSpec *spec;
	VehicleInstance *vehicle;
	AlienInstance *other;
	AlienSpec *otherSpec;
	u8 selfIndex;
	u8 i;
	u8 start;
	u8 specIndex;
	u8 otherIndex;
	u8 otherSpecIndex;
	u8 soundId;
	s16 xA;
	s16 zA;
	s16 xB;
	s16 zB;
	s32 moved;
	s32 collisionCheck;
	s32 recurseFlag;
	s32 ret;

	selfIndex = arg0 & 0xFF;
	start = arg1 & 0xFF;
	inst = &alienInstances[selfIndex];
	specIndex = inst->specIndex;
	soundId = 0xFF;
	moved = 0;
	collisionCheck = 0;
	recurseFlag = 0;
	ret = 0;

	if (inst->unk47 & 0x80) {
		return 0;
	}

	D_8014D304++;
	if (D_8014D304 >= 9) {
		inst->unk47 |= 0x80;
		osSyncPrintf(&D_80141CE4_150C94, alienSpecs[specIndex].unk18);
	}

	spec = &alienSpecs[specIndex];

	if ((inst->unk0 != inst->unk2E) || (inst->unk2 != inst->unk30) || (inst->unk4 != inst->unk32) || (arg2 == 0)) {
		s32 flags;

		flags = spec->unk54;
		if (flags & 0x20) {
			collisionCheck = func_800836D0_92680(selfIndex, &xA, &zA);
			flags = spec->unk54;
		}

		if (flags & 0x10) {
			s32 absSpeed;

			if (flags & 0x80000001) {
				func_8011DE60_12CE10(1);
			}

			moved = func_800831A4_92154(selfIndex, &xB, &zB, &soundId);

			if (spec->unk54 & 0x80000001) {
				func_8011DE60_12CE10(0);
			}

			if (soundId != 0xFF) {
				absSpeed = inst->unk12;
				if (absSpeed < 0) {
					absSpeed = -absSpeed;
				}

				if (soundId != 0) {
					func_8011BEA0_12AE50(soundId, (alienSpecs[inst->specIndex].unk52 * (absSpeed + 1)) / 6400);
				}
			}
		}

		if ((collisionCheck != 0) || (moved != 0)) {
			if (collisionCheck == 0) {
				xA = xB;
				zA = zB;
			}

			if (moved != 0) {
				if ((s16)(xB - xA) < 0) {
					xA = xB;
				}
				if ((s16)(zB - zA) > 0) {
					zA = zB;
				}
			}

			func_8007E980_8D930(inst, xA, zA);

			if (arg2 == 0) {
				if ((currentLevel != 3) || ((specIndex != 9) && (specIndex != 8))) {
					ret = 1;
					goto done;
				}
			} else {
				func_8007ED9C_8DD4C(selfIndex);
				recurseFlag = 1;
			}

			inst->unk47 |= 4;
		}
	}

	if ((spec->unk54 & 8) && ((inst->unk0 != inst->unk2E) || (inst->unk2 != inst->unk30) || (inst->unk4 != inst->unk32) || (arg2 == 0)) && (D_80158FD8 > 0)) {
		for (i = 0; i < D_80158FD8; i = (i + 1) & 0xFF) {
			u8 vehIndex;
			s32 hitType;

			vehIndex = D_80158E80[i];
			vehicle = &vehicleInstances[vehIndex];
			if ((D_80052B34 == vehicle) && ((D_801591AC == 6) || (D_80048180 != 0) || (inst->unk20 & 0x100000))) {
				continue;
			}

			if (func_8007E608_8D5B8(inst, (AlienInstance *)vehicle) == 0) {
				continue;
			}

			func_8010C4EC_11B49C(vehicle);
			if (func_8010E684_11D634(vehicle, inst) == 0) {
				continue;
			}

			if ((specIndex < 3) || (specIndex == 0x20)) {
				func_80080D98_8FD48(selfIndex, vehIndex);
				continue;
			}

			hitType = func_8007EB74_8DB24(inst, (AlienInstance *)vehicle);
			if (arg2 == 0) {
				if ((currentLevel != 3) || ((specIndex != 9) && (specIndex != 8))) {
					ret = 1;
					goto done;
				}
			} else if (D_8014ECD8 == vehIndex) {
				osSyncPrintf(&D_80141D10_150CC0, D_800344B4_350B4[vehicleSpecs[vehicle->unk1A].unk18 * 2], spec->unk18, arg2);
				inst->unk47 |= 0x80;
			} else {
				D_8014ECD8 = vehIndex;
				recurseFlag = 1;
				if (hitType != 0) {
					func_8007ED9C_8DD4C(selfIndex);
				}
			}

			if (D_80052B34 == vehicle) {
				inst->unk47 |= 8;
				if (D_800475F0 >= 0x33) {
					func_80083EF4_92EA4(inst, D_80052B34, -0x63C0, inst->unkE);
				}
			}
		}
	}

	if (!(inst->unk47 & 0x80) && (spec->unk54 & 4) && (start < D_8014ECCC)) {
		for (i = start; i < D_8014ECCC; i = (i + 1) & 0xFF) {
			otherIndex = D_8014D510[i];
			other = &alienInstances[otherIndex];
			otherSpecIndex = other->specIndex;
			otherSpec = &alienSpecs[otherSpecIndex];

			if (!(otherSpec->unk54 & 4) || (selfIndex == otherIndex) || (other->unk47 & 0x80)) {
				continue;
			}

			if ((((otherSpecIndex == 0x1A) || ((otherSpecIndex >= 0x1B) && (otherSpecIndex < 0x20))) && (inst->unk20 & 0x01000000)) ||
				(((specIndex == 0x1A) || ((specIndex >= 0x1B) && (specIndex < 0x20))) && (other->unk20 & 0x01000000))) {
				continue;
			}

			if (func_8007E608_8D5B8(inst, other) == 0) {
				continue;
			}

			if (((specIndex == 0x16) && (otherSpec->unk54 & 0xC1)) || ((otherSpecIndex == 0x16) && (otherSpec->unk54 & 0xC1))) {
				if (specIndex == 0x16) {
					func_80088760_97710(other);
				} else {
					func_80088760_97710(inst);
				}
				continue;
			}

			func_8007EB74_8DB24(inst, other);
			if (arg2 == 0) {
				ret = 1;
				goto done;
			}

			recurseFlag = 1;

			if (inst->unk20 & 0x40000000) {
				if (((inst->unk2 < other->unk2) && (inst->unk10 > 0)) || ((other->unk2 < inst->unk2) && (inst->unk10 < 0))) {
					inst->unk10 = 0;
				}
			}
			func_8007ED9C_8DD4C(selfIndex);

			if (other->unk20 & 0x40000000) {
				if (((other->unk2 < inst->unk2) && (other->unk10 > 0)) || ((inst->unk2 < other->unk2) && (other->unk10 < 0))) {
					other->unk10 = 0;
				}
			}
			func_8007ED9C_8DD4C(otherIndex);

			D_8014ECD4 = selfIndex;
			func_8007F0E8_8E098(otherIndex, 0, arg2);
			D_8014ECD4 = -1;
			if (D_8014ECD4 == otherIndex) {
				osSyncPrintf(&D_80141D30_150CE0, otherSpec->unk18, spec->unk18);
				inst->unk47 |= 0x80;
			}
		}
	}

done:
	if (recurseFlag != 0) {
		func_8007F0E8_8E098(selfIndex, 0, arg2);
	}
	D_8014D304--;
	if (ret != 0) {
		return ret;
	}
	return recurseFlag;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007F0E8_8E098.s")
#endif

s32 func_8007F9C8_8E978(u8 arg0, u8 arg1) {
	s16 var_v1 = -1;

	if (alienSpecs[arg1].unk54 & 1) {
		return 0;
	}
	if (alienSpecs[arg1].unk54 & 2) {
		var_v1 = func_80082A98_91A48(arg0);
	} else if (alienSpecs[arg1].unk54 & 0x10000080) {
		var_v1 = func_80082CA0_91C50(arg0);
	}
	if (var_v1 != -1) {
		return 1;
	}
	if (((u32)(alienSpecs[arg1].unk54 & 0x180000)) >> 0x13 < 3) {
		var_v1 = func_80082B30_91AE0(arg0);
	}
	if (var_v1 == -1 && !(alienSpecs[arg1].unk54 & 0x20000000)) {
		var_v1 = func_80082C04_91BB4(arg0);
	}
	if (var_v1 != -1) {
		return 1;
	}
	return 0;
}

#ifdef NON_MATCHING
// CURRENT(10169)
s32 func_8007FB08_8EAB8(u8 arg0, u8 arg1) {
	s16 result = -1;
	AlienInstance *inst;

	if (alienSpecs[arg1].unk54 & 1) {
		return 0;
	}
	if (alienSpecs[arg1].unk54 & 2) {
		result = func_80082A98_91A48(arg0);
	} else if (alienSpecs[arg1].unk54 & 0x10000080) {
		result = func_80082CA0_91C50(arg0);
	}
	if (result != -1) {
		inst = &alienInstances[arg0];
		if (!(inst->unk20 & 0x600)) {
			return 0;
		}
		inst->unk40++;
		if (arg1 == 1) {
			if (inst->unk40 >= 0x201) {
				func_80088760_97710(inst);
			}
			return 1;
		}
		if (inst->unk40 < 0x33) {
			if (alienSpecs[arg1].unk54 & 0x10000080) {
				func_80088760_97710(inst);
			}
		}
		return 1;
	}
	if (((u32)(alienSpecs[arg1].unk54 & 0x180000)) >> 0x13 < 3) {
		result = func_80082B30_91AE0(arg0);
	}
	if (result == -1) {
		if (!(alienSpecs[arg1].unk54 & 0x20000000)) {
			result = func_80082C04_91BB4(arg0);
		}
	}
	if (result == -1) {
		return 0;
	}
	inst = &alienInstances[arg0];
	func_8007E734_8D6E4(inst, result);
	func_8007EE24_8DDD4(arg0);
	inst->unk47 |= 4;
	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007FB08_8EAB8.s")
#endif

#ifdef NON_MATCHING
// CURRENT(8789)
void func_8007FDD8_8ED88(void)
{
	AlienInstance *inst;
	s32 i;
	s32 next;
	u32 count;
	u8 *activeList;
	u8 specIdx;

	inst = alienInstances;
	i = 0;
	while (i < 0xFF)
	{
		specIdx = inst->specIndex;
		if (specIdx != 0)
		{
			inst->unk47 &= ~0xE;
			if (inst->unk47 & 1)
			{
				inst->unk34--;
				if (inst->unk34 < 0)
				{
					inst->unk34 = 0;
					inst->unk47 &= ~1;
					if (!(alienSpecs[specIdx].unk54 & 0x2000))
					{
						inst->unk20 &= 0xFFFBFFFF;
						inst->unkE = inst->unk6;
					}
				}
			}

			if (inst->unk40 == 0)
			{
				if ((inst->unk0 >> 8) == (inst->unk2E >> 8))
				{
					if ((inst->unk4 >> 8) == (inst->unk32 >> 8))
					{
						goto next_inst;
					}
				}
			}

			func_8007FB08_8EAB8(i & 0xFF, specIdx);
		}

	next_inst:
		i++;
		inst++;
	}

	count = D_8014ECCC;
	if (count != 0)
	{
		activeList = D_8014D510;
		i = 0;
		do
		{
			inst = &alienInstances[*activeList];
			specIdx = inst->specIndex;
			next = i + 1;
			if (alienSpecs[specIdx].unk54 & 0x3E)
			{
				if ((specIdx >= 3) || !(inst->unk20 & 0x100000))
				{
					D_8014ECD8 = -1;
					D_8014D304 = 0;
					func_8007F0E8_8E098(*activeList, next & 0xFF, 1);
					count = D_8014ECCC;
				}
			}
			i = next;
			activeList++;
		} while ((u32)next < count);
	}

	inst = alienInstances;
	while (inst < (AlienInstance *)&D_8004D148)
	{
		specIdx = inst->specIndex;
		if ((alienSpecs[specIdx].unk54 & 0x3E) && (specIdx != 0))
		{
			if (inst->unk47 & 0xE)
			{
				inst->unk47 |= 1;
				if (!(alienSpecs[specIdx].unk54 & 0x2000))
				{
					inst->unk20 &= 0xFFFBFFFF;
					inst->unkE = inst->unk6;
				}
			}
		}
		inst++;
	}

	if (count != 0)
	{
		activeList = D_8014D510;
		i = 0;
		do
		{
			specIdx = *activeList;
			inst = &alienInstances[specIdx];
			if (inst->unk47 & 0x80)
			{
				func_8007A6B4_89664(specIdx & 0xFF);
				inst->unk47 &= 0x7F;
				if (func_8007A4F8_894A8(i) != 0)
				{
					count = D_8014ECCC;
					i--;
					activeList--;
				}
				else
				{
					osSyncPrintf(D_80141D50_150D00);
					count = D_8014ECCC;
			i++;
			activeList++;
				}}
		} while ((u32)i < count);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8007FDD8_8ED88.s")
#endif

void func_800800DC_8F08C(s32 arg0) {
}

// CURRENT(1116)
#ifdef NON_MATCHING
void func_800800E4_8F094(u8 arg0)
{
	s32 sp3C;
	s32 sp38;
	s32 temp_v0;
	s32 var_v1 = 0;
	AlienInstance *inst = &alienInstances[arg0];
	u8 sp37;

	temp_v0 = inst->unk20;
	sp3C = (s32) inst->unk0;
	sp38 = (s32) inst->unk4;
	if (temp_v0 & 0x40000) {
		var_v1 = 0x80;
	}
	if (temp_v0 & 0x80000) {
		sp37 = 0;
		func_800F2ED8_101E88(temp_v0 & 7, inst->unk12, inst->unkE, inst->unk6, var_v1);
		func_800F2890_101840((u8) (inst->unk20 & 7), &sp3C, &sp38, &sp37);
	} else {
		sp37 = 0;
		sp3C += (s32) ((f64) inst->unk12 * ((f64) (f32) coss((u16) inst->unkE) / 32768.0)) >> 5;
		sp38 += (s32) ((f64) inst->unk12 * ((f64) (f32) sins((u16) inst->unkE) / 32768.0)) >> 5;
	}
	if (func_80080418_8F3C8(arg0, sp3C, sp38) != 0) {
		temp_v0 = inst->unk20;
		if (temp_v0 & 0x80000) {
			func_800F375C_10270C((s8) (temp_v0 & 7));
			inst->unk20 = (s32) (inst->unk20 & ~7);
			inst->unk20 = (s32) (inst->unk20 | func_800F3990_102940(arg0, (u8)alienSpecs[inst->specIndex].unk50));
		}
	}
	if ((alienSpecs[inst->specIndex].unk54 & 0x841) || (inst->unk20 & 0x60000000)) {
		inst->unk2 = (s16) (inst->unk2 + ((s16) inst->unk10 >> 5));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800800E4_8F094.s")
#endif

void func_8008030C_8F2BC(u8 arg0)
{
	s32 x = alienInstances[arg0].unk0;
	s32 z = alienInstances[arg0].unk4;

	x += ((s32) ((alienInstances[arg0].unk12 * 4) *
		(((f32) coss(alienInstances[arg0].unkE)) / 32768.0))) >> 5;
	z = (z + (((s32) ((alienInstances[arg0].unk12 * 4) *
		(((f32) sins((u16) alienInstances[arg0].unkE)) / 32768.0))) >> 5)) ^
		(alienInstances[arg0].unkE * 0);
	func_80080418_8F3C8(arg0, x, z);
}

// https://decomp.me/scratch/LBDX5
s32 func_80080418_8F3C8(s32 arg0, s32 arg1, s32 arg2)
{
	s32 bounceResult;
	s16 angle;
	u8 new_var;

	new_var = alienSpecs[alienInstances[arg0].specIndex].unkC;
	bounceResult = func_800B0D10_BFCC0(arg1, arg2, new_var);
	if (bounceResult != 0)
	{
		angle = func_800B0DF4_BFDA4(alienInstances[arg0].unk0, alienInstances[arg0].unk4, new_var, bounceResult);
		if ((angle == 0x4000) || (angle == (-0x4000)))
		{
			arg1 = (s32)alienInstances[arg0].unk0;
			alienInstances[arg0].unkE = 0x8000 - alienInstances[arg0].unkE;
		}
		else
		{
			arg2 = (s32)alienInstances[arg0].unk4;
			alienInstances[arg0].unkE = -alienInstances[arg0].unkE;
		}
		bounceResult = 1;
	}
	alienInstances[arg0].unk0 = (s16)arg1;
	alienInstances[arg0].unk4 = (s16)arg2;
	return bounceResult;
}

void func_80080510_8F4C0(u8 arg0) {
	u8 type = alienInstances[arg0].specIndex;
	s16 sp24;

	if ((alienInstances[arg0].unk20 & 0x02000000) || D_80052ACA == 2) {
		sp24 = (s16)(func_800B84D0_C7480(alienInstances[arg0].unk0, alienInstances[arg0].unk4) >> 8);
	} else {
		func_8011E6FC_12D6AC(alienInstances[arg0].unk0, alienInstances[arg0].unk4, &sp24);
	}

	if (type == 0x12 || type == 2) {
		if (D_80222A70 - 0xA >= sp24) {
			sp24 = (s16)(D_80222A70 - 0xA);
		}
	} else if (type == 1) {
		if (D_80222A70 - 0x28 >= sp24) {
			sp24 = (s16)(D_80222A70 - 0x28);
		}
	}

	alienInstances[arg0].unk2 = alienSpecs[type].unk58 + sp24;
}

void func_8008064C_8F5FC(u8 arg0) {
	u8 specIndex;
	s32 mult;

	specIndex = alienInstances[arg0].specIndex;
	mult = 1;
	if (!(alienInstances[arg0].unk20 & 0x600)) {
		mult = 4;
	}
	if (func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE) == 0) {
		if (alienInstances[arg0].unk12 < alienSpecs[specIndex].unk40) {
			alienInstances[arg0].unk12 += alienSpecs[specIndex].unk3E * mult;
		} else {
			alienInstances[arg0].unk12 -= alienSpecs[specIndex].unk3E * mult;
		}
	} else {
		alienInstances[arg0].unk12 -= mult * alienSpecs[specIndex].unk3E;
		if (alienInstances[arg0].unk12 < 0) {
			alienInstances[arg0].unk12 = 0;
		}
	}
}

void func_8008076C_8F71C(u8 arg0) {
	u8 specIdx = alienInstances[arg0].specIndex;
	s32 mult = 1;
	if (!(alienInstances[arg0].unk20 & 0x600)) {
		mult = 4;
	}
	func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);
	if (alienInstances[arg0].unk12 < alienSpecs[specIdx].unk40) {
		alienInstances[arg0].unk12 += alienSpecs[specIdx].unk3E * mult;
	} else {
		alienInstances[arg0].unk12 -= alienSpecs[specIdx].unk3E * mult;
	}
}

s32 func_80080840_8F7F0(u8 arg0, s32 arg1)
{
  AlienInstance *alien;
  if ((((((&alienInstances[arg0])->unk0 < ((&alienInstances[arg0])->unk14 + arg1)) &&
   (((&alienInstances[arg0])->unk14 - arg1) < (&alienInstances[arg0])->unk0)) &&
	((&alienInstances[arg0])->unk4 < ((&alienInstances[arg0])->unk18 + arg1))) &&
	 (((&alienInstances[arg0])->unk18 - arg1) < (&alienInstances[arg0])->unk4)) &&
	  ((currentLevel != 7) ||
	   (((&alienInstances[arg0])->unk2 < ((&alienInstances[arg0])->unk16 + arg1)) &&
		(((&alienInstances[arg0])->unk16 - arg1) < (&alienInstances[arg0])->unk2))))
  {
	return 1;
  }
  return 0;
}

s32 func_800808F0_8F8A0(u8 arg0, s16 *arg1)
{
	s32 var_v0;
	u8 specIndex;
	s16 unk42;
	var_v0 = 1;
	specIndex = alienInstances[arg0].specIndex;
	unk42 = alienSpecs[specIndex].unk42;
	if (alienSpecs[specIndex].unk54 & 0x40)
	{
		if (alienInstances[arg0].unk2 < alienInstances[arg0].unk16 && alienInstances[arg0].unk10 < 0x80)
		{
			alienInstances[arg0].unk10 += alienSpecs[specIndex].unk3E;
		}
		if (alienInstances[arg0].unk16 < alienInstances[arg0].unk2 && alienInstances[arg0].unk10 >= (-0x7F))
		{
			alienInstances[arg0].unk10 -= alienSpecs[specIndex].unk3E;
		}
	}
	if (!(alienInstances[arg0].unk20 & 0x600))
	{
		var_v0 = 4;
	}
	while (1)
	{
		if (!(alienInstances[arg0].unk20 & 0x10))
		{
			if (((-unk42) * var_v0) >= ((s16) (alienInstances[arg0].unk2A - alienInstances[arg0].unkE)))
			{
				*arg1 -= unk42 * var_v0;
				break;
			}
			if ((unk42 * var_v0) < ((s16) (alienInstances[arg0].unk2A - alienInstances[arg0].unkE)))
			{
				*arg1 += unk42 * var_v0;
				break;
			}
			return 0;
		}
		return 0;
	}
	return 1;
}

// https://decomp.me/scratch/n1AaG
// CURRENT(38)
#ifdef NON_MATCHING
s32 func_80080A54_8FA04(u8 arg0, s16 arg1, s16 arg2)
{
  u8 new_var;
  s16 maxTurn;
  s32 dx;
  s32 dz;
  s16 angle;
  s16 diff;
  s32 result;
  new_var = alienInstances[arg0].specIndex;
  maxTurn = alienSpecs[new_var].unk42;
  dx = arg1 - alienInstances[arg0].unk0;
  dz = arg2 - alienInstances[arg0].unk4;
  angle = func_80003824_4424((f32) dx, (f32) dz);
  diff = angle - alienInstances[arg0].unk6;
  if (-maxTurn >= diff)
  {
	alienInstances[arg0].unk6 -= maxTurn;
	result = 1;
  }
  else if (maxTurn < diff)
  {
	alienInstances[arg0].unk6 += maxTurn;
	result = 1;
  }
  else
  {
	return 0;
  }
  return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80080A54_8FA04.s")
#endif

// set building as target for alien?
void func_80080B44_8FAF4(u8 alienInstanceIndex, u8 buildingInstanceIndex) {
	AlienInstance *alien = &alienInstances[alienInstanceIndex];
	BuildingInstance *building = &buildingInstances[buildingInstanceIndex];
	alien->unk38 = buildingInstanceIndex;
	alien->unk3D = building->unk11;
	alien->unk14 = building->xCoord + 0x80;
	alien->unk16 = building->yCoord;
	alien->unk18 = building->zCoord + 0x80;
	alien->unk20 |= ALIEN_FLAG_TARGET_PT;
}

// https://decomp.me/scratch/RJAQq
// CURRENT(830)
#ifdef NON_MATCHING
void func_80080BC0_8FB70(u8 arg0, s16 arg1, s16 arg2, u8 arg3)
{
	s16 unk0;
	s16 unk4;
	s16 shifted_unk4;
	s16 shifted_unk0;
	s16 shifted_arg1;
	s32 dx;
	s32 dz;
	s16 new_var2;
	s32 abs_dx;
	s32 abs_dz;
	s32 step;
	s32 mask;
	s16 *new_var;
	s32 half;
	unk0 = alienInstances[arg0].unk0;
	unk4 = alienInstances[arg0].unk4;
	new_var = &shifted_unk4;
	new_var2 = unk4 >> arg3;
	shifted_unk4 = (s16)new_var2;
	dz = arg3;
	shifted_unk0 = (s16)(unk0 >> dz);
	shifted_arg1 = (s16)(arg1 >> arg3);
	if ((shifted_unk0 != shifted_arg1) || (shifted_unk4 != ((s16)(arg2 >> arg3))))
	{
		if (shifted_unk0 != shifted_arg1)
		{
			s16 unkE = alienInstances[arg0].unkE;
			if (unkE < 0)
			{
				alienInstances[arg0].unkE = unkE - ((shifted_unk0 - shifted_arg1) << 14);
			}
			else
			{
				alienInstances[arg0].unkE = unkE + ((shifted_unk0 - shifted_arg1) << 14);
			}
			alienInstances[arg0].unk0 = arg1;
			return;
		}
		if (shifted_unk4 != ((s16)(arg2 >> arg3)))
		{
			s16 unkE = alienInstances[arg0].unkE;
			s16 shifted_arg2 = (s16)(arg2 >> dz);
			s32 abs_unkE = ((-unkE) < unkE) ? (unkE) : (-unkE);
			if (abs_unkE >= 0x4001)
			{
				alienInstances[arg0].unkE = unkE + ((shifted_unk4 - shifted_arg2) << 14);
			}
			else
			{
				alienInstances[arg0].unkE = unkE - (((*new_var) - shifted_arg2) << 14);
			}
			(*(alienInstances + arg0)).unk4 = arg2;
		}
	}
	else
	{
		step = 1 << dz;
		mask = step - 1;
		half = step / 2;
		dx = (unk0 & mask) - half;
		dz = (unk4 & mask) - half;
		abs_dx = ((-dx) < dx) ? (dx) : (-dx);
		abs_dz = ((-dz) < dz) ? (dz) : (-dz);
		if (abs_dz < abs_dx)
		{
			if (dx < 0)
			{
				alienInstances[arg0].unk0 = (unk0 & 0xFF00) - 1;
			}
			else
			{
				alienInstances[arg0].unk0 = (unk0 & 0xFF00) + 0x100;
			}
		}
		else if (dz < 0)
		{
			alienInstances[arg0].unk4 = (unk4 & 0xFF00) - 1;
		}
		else
		{
			alienInstances[arg0].unk4 = (unk4 & 0xFF00) + 0x100;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80080BC0_8FB70.s")
#endif

// CURRENT(5404)
#ifdef NON_MATCHING
s32 func_80080D98_8FD48(u8 arg0, s32 arg1) {
	AlienInstance *alien = &alienInstances[arg0];
	VehicleInstance *target;
	f32 speedSq;
	f32 minSpeedSq;
	u8 alienSpec = alien->specIndex;
	u8 humanType;
	u8 targetIdx = arg1;
	u16 randVal;
	u32 flags;
	u32 tempFlags;

	if (alienSpec == 1) {
		humanType = alien->unk24;
		if ((humanType == 1) && (alien->unk20 & 0x4000)) {
			alien->unk2C++;
			return 0;
		}
		if ((humanType == 0x13) || (humanType == 0x18)) {
			return 0;
		}

		if (targetIdx == alien->unk38) {
			flags = alien->unk20;
			if (((flags & 0x80) && !(flags & 0x20000)) || (humanType == 0x1B)) {
				osSyncPrintf(&D_80141D88_150D38);
				if ((currentLevel == 4) && (D_80047F94 == 2)) {
					func_800153D8_15FD8(0xC5);
				}
				func_80079910_888C0(arg0);
				D_801591C4++;
				D_8015EA20--;
				return 0;
			}
		}

		if (alien->unk2 < D_80222A70) {
			return 0;
		}
	}

	if ((alienSpec == 2) && (&vehicleInstances[targetIdx] == D_80052B34) && (D_80052B34->unk1A == 0)) {
		return 0;
	}

	target = &vehicleInstances[targetIdx];
	speedSq = (target->unk30 * target->unk30) + (target->unk38 * target->unk38);
	minSpeedSq = (f32)(((u16)target->unk12) * ((u16)target->unk12));
	if (speedSq < minSpeedSq) {
		speedSq = minSpeedSq;
	}

	if ((speedSq < 16.0f) || (target->unk1A == 0)) {
		if (func_8007EB74_8DB24(alien, (AlienInstance *)target) != 0) {
			func_8007ED9C_8DD4C(arg0);
		}

		alienSpec = alien->specIndex;
		if ((alienSpec == 1) && !(alien->unk20 & 0x1000) && (alien->unk24 == 0)) {
			func_800ABE7C_BAE2C(arg0);
			alienSpec = alien->specIndex;
		}

		if ((alienSpec == 1) && (alien->unk24 == 1) && !(alien->unk20 & 0x4000) && (target->unk1A == 0) && (D_80052AD0 != 0) && !(D_80052A8C & 0xF)) {
			func_80124118_1330C8(D_80052B34, 0x50);
			D_80157A28 |= 2;
			if ((D_80031420 & 3) == 3) {
				randVal = func_800038E0_44E0();
				func_800CA5EC_D959C(
					D_80052B34->unk0,
					D_80052B34->unk2 + 0x32,
					D_80052B34->unk4,
					(s8)((randVal % 120) - 0x3C),
					0x7F,
					(func_800038E0_44E0() % 120) - 0x3C,
					0x14,
					2,
					8,
					0xFF,
					0xFF,
					0,
					0,
					0xFF
				);
			}

			func_80102DDC_111D8C(
				D_80052B34,
				func_80003824_4424((f32)(D_80052B34->unk0 - alien->unk0), (f32)(D_80052B34->unk4 - alien->unk4)),
				0,
				10.0f
			);
			func_80137468_146418(arg0, 2);
		}

		return 1;
	}

	if (!(vehicleSpecs[target->unk1A].unk4C & 0x20)) {
		return 0;
	}

	func_80088760_97710(alien);
	alienSpec = alien->specIndex;
	if (alienSpec == 1) {
		if (D_80052B34->unk1A == 6) {
			alien->unk20 |= 0x100000;
			humanType = alien->unk24;
			if ((humanType == 1) || (humanType == 0x1D)) {
				sins((target->unkE + 0x4000) & 0xFFFF);
				coss((target->unkE + 0x4000) & 0xFFFF);
				D_80159320 |= 0x02000000;
				func_800A8A68_B7A18(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, 0x1B);
			}
		}
		alien->unk26 = 1;
	}

	if (target == D_80052B34) {
		tempFlags = D_80159320 | 0x400;
		D_80159320 = tempFlags;
		((Unk8010ED84Pos *)&D_80159218)->unk0 = alien->unk0;
		((Unk8010ED84Pos *)&D_80159218)->unk2 = alien->unk2;
		((Unk8010ED84Pos *)&D_80159218)->unk4 = alien->unk4;

		if ((alienSpec == 1) && (alien->unk24 != 1) && (alien->unk24 != 0x1D)) {
			D_80159320 = tempFlags | 0x40000000;
		} else {
			D_80159320 &= 0xBFFFFFFF;
		}

		func_80137468_146418(arg0, 2);
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80080D98_8FD48.s")
#endif

// https://decomp.me/scratch/B1BlZ
// CURRENT(1085)
#ifdef NON_MATCHING
s16 func_80081390_90340(u8 arg0) {
	s32 dx = alienInstances[arg0].unk14 - alienInstances[arg0].unk0;
	s32 dz = alienInstances[arg0].unk18 - alienInstances[arg0].unk4;
	s16 angle;
	s32 diff;

	if (alienInstances[arg0].unk20 & 0x1A0) {
		if (alienInstances[arg0].unk20 & 0x40) {
			return (s16)(func_80003824_4424((f32)dx, (f32)dz) + 0x8000);
		}
		return func_80003824_4424((f32)dx, (f32)dz);
	}
	if (alienInstances[arg0].unk20 & 0x800) {
		angle = func_80003824_4424((f32)-dz, (f32)dx);
		diff = (s16)(alienInstances[arg0].unkE - angle);
		if (-diff < diff) {
			diff = (s16)(alienInstances[arg0].unkE - angle);
		} else {
			diff = -(s16)(alienInstances[arg0].unkE - angle);
		}
		if (diff < 0x4000) {
			if (alienInstances[arg0].unk20 & 0x10000) {
				return (s16)(angle - 0x800);
			}
			return (s16)(angle + 0x800);
		}
		angle = (s16)(angle + 0x8000);
		if (alienInstances[arg0].unk20 & 0x10000) {
			return (s16)(angle + 0x800);
		}
		return (s16)(angle - 0x800);
	}
	return alienInstances[arg0].unkE;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80081390_90340.s")
#endif

s32 func_8008153C_904EC(u8 arg0, s16 *arg1)
{
	u8 specIndex = alienInstances[arg0].specIndex;
	s16 result;

	if (alienInstances[arg0].unk20 & 0x1A0) {
		if (alienSpecs[specIndex].unk54 & 0x40) {
			if (alienInstances[arg0].unk2 < alienInstances[arg0].unk16) {
				if (alienInstances[arg0].unk10 < 0x80) {
					alienInstances[arg0].unk10 = (s16)(alienSpecs[specIndex].unk3E + alienInstances[arg0].unk10);
				}
			}
			if (alienInstances[arg0].unk16 < alienInstances[arg0].unk2) {
				if (alienInstances[arg0].unk10 >= -0x7F) {
					alienInstances[arg0].unk10 = (s16)(alienInstances[arg0].unk10 - alienSpecs[specIndex].unk3E);
				}
			}
		}

		result = func_80081390_90340(arg0);

		if ((s16)(result - alienInstances[arg0].unkE) < 0) {
			*arg1 -= alienSpecs[alienInstances[arg0].specIndex].unk42;
		}
		if ((s16)(result - alienInstances[arg0].unkE) > 0) {
			*arg1 += alienSpecs[alienInstances[arg0].specIndex].unk42;
		}
		return 1;
	}
	return 0;
}

// CURRENT(379)
#ifdef NON_MATCHING
void func_800816B0_90660(u8 arg0, void *arg1) {
	AlienInstance *alien = &alienInstances[arg0];
	VehicleInstance *target = arg1;
	u8 idx = alien->unk27;
	s16 trig;

	if (alien->specIndex != 1) {
		trig = sins((u16)target->unkE);
		alien->unk14 = (s16)(s32)((f64)alien->unk14 + (((f64)D_8013C270_14B220[idx] * ((f64)(f32)coss((u16)target->unkE) / 32768.0)) - ((f64)D_8013C280_14B230[idx] * ((f64)(f32)trig / 32768.0))));
		trig = coss((u16)target->unkE);
		alien->unk18 = (s16)(s32)((f64)alien->unk18 + (((f64)D_8013C270_14B220[idx] * ((f64)(f32)sins((u16)target->unkE) / 32768.0)) + ((f64)D_8013C280_14B230[idx] * ((f64)(f32)trig / 32768.0))));
	} else {
		trig = sins((u16)target->unkE);
		alien->unk14 = (s16)(s32)((f64)alien->unk14 + (((f64)D_8013C290_14B240[idx] * ((f64)(f32)coss((u16)target->unkE) / 32768.0)) - ((f64)D_8013C2A0_14B250[idx] * ((f64)(f32)trig / 32768.0))));
		trig = coss((u16)target->unkE);
		alien->unk18 = (s16)(s32)((f64)alien->unk18 + (((f64)D_8013C290_14B240[idx] * ((f64)(f32)sins((u16)target->unkE) / 32768.0)) + ((f64)D_8013C2A0_14B250[idx] * ((f64)(f32)trig / 32768.0))));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800816B0_90660.s")
#endif

s32 func_8008199C_9094C(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];
	s32 flags = alien->unk20;
	AlienInstance *target;

	if ((flags & 0x08000020) && !(flags & 0x01000000)) {
		if ((flags & 0x08000000) || alien->unk38 == 0x100) {
			target = (AlienInstance *)D_80052B34;
		} else {
			target = &alienInstances[alien->unk38];
			if (target->specIndex == ALIEN_SPEC_NOTHING) {
				alien->unk20 = flags & ~0x20020;
				return 0;
			}
		}
		alien->unk14 = target->unk0;
		alien->unk16 = target->unk2;
		alien->unk18 = target->unk4;
		if (flags & 0x20000) {
			func_800816B0_90660(arg0, target);
		}
		return 1;
	}
	if (flags & 0x80) {
		VehicleInstance *vehicle = &vehicleInstances[alien->unk38];
		alien->unk14 = vehicle->unk0;
		alien->unk16 = vehicle->unk2;
		alien->unk18 = vehicle->unk4;
		if (flags & 0x20000) {
			func_800816B0_90660(arg0, vehicle);
		}
		return 1;
	}
	return 0;
}

void func_80081AD4_90A84(u8 arg0, u8 arg1)
{
  s16 cur;
  s32 v0 = 0;
  AlienInstance *inst = &alienInstances[arg0];
  if (inst->unk20 & 0x20000)
  {
	cur = inst->unk38;
	if ((cur ^ 0) == arg1)
	{
	  return;
	}
	alienInstances[cur].unk27 &= ~inst->unk27;
  }
  inst->unk38 = arg1;
  inst->unk20 |= 0x20020;
  if (alienInstances[arg1].unk27 & 1)
  {
	do
	{
	  v0 = (v0 + 1) & 0xFF;
	}
	while (alienInstances[arg1].unk27 & (1 << v0));
  }
  inst->unk27 = v0;
  alienInstances[arg1].unk27 |= 1 << v0;
}

void func_80081BB0_90B60(u8 arg0) {
	AlienInstance *inst;
	s32 v1;
	u8 shift;
	inst = &alienInstances[arg0];
	v1 = inst->unk20;
	if (v1 & 0x20000) {
		inst->unk20 = v1 & ~0x20020;
		shift = inst->unk38;
		alienInstances[shift].unk27 &= ~(1 << inst->unk27);
	}
}

void func_80081C24_90BD4(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	if (!(inst->unk20 & 0x20000)) {
		func_80081AD4_90A84(arg0, inst->unk25);
	}
	func_8008064C_8F5FC(arg0);
}

void func_80081C84_90C34(u8 arg0, Unk8014DD50 *src) {
	Unk8014DD50 *dest = &D_8014E4D0[arg0];
	*dest = *src;
	D_8014DD50[arg0].unkE = src->unkE;
}

void func_80081CF0_90CA0(Unk8014DD50 *arg0, Unk8014DD50 *arg1, s16 arg2) {
	s16 temp_v0;
	s16 temp_v1;
	s16 temp_v0_2;
	s16 temp_v1_2;

	if (*(u8*)&arg1->unkC != 0) {
		temp_v0 = arg0->unk0;
		temp_v1 = arg0->unk2;
		arg0->unk0 = temp_v0 + (arg1->unk0 - temp_v0) / arg2;
		arg0->unk2 = temp_v1 + (arg1->unk2 - temp_v1) / arg2;
		arg0->unk4 = arg0->unk4 + (arg1->unk4 - arg0->unk4) / arg2;
	}
	if (*(u8*)&arg1->unkD != 0) {
		temp_v0_2 = arg0->unk8;
		temp_v1_2 = arg0->unkA;
		arg0->unk8 = temp_v0_2 + (arg1->unk8 - temp_v0_2) / arg2;
		arg0->unkA = temp_v1_2 + (arg1->unkA - temp_v1_2) / arg2;
	}
}

void func_80081E5C_90E0C(s16 arg0)
{
  s16 counter = D_8014DD50[arg0].unkE;
  if (counter != 0)
  {
	func_80081CF0_90CA0(&D_8014DD50[arg0], &D_8014E4D0[arg0], counter);
	D_8014DD50[arg0].unk6 =
		(
			(
				(D_8014E4D0[arg0].unk6 - ((s16) ((u16) D_8014DD50[arg0].unk6))) / counter
			) + (u16) D_8014DD50[arg0].unk6
		);
	D_8014DD50[arg0].unkE--;
  }
}

s8 func_80081F18_90EC8(u8 arg0, u8 arg1, u8 arg2, s16 *arg3, Unk8014DD50 **arg4) {
	u8 i;
	s8 result;

	result = -1;
	if (D_8014DD50[*arg3].unkE == 0) {
		if (alienInstances[arg0].unk36 == arg2) {
			return (s8)arg2;
		}
		for (i = 0; i < arg1; i++) {
			if (arg3[i] != -1) {
				func_80081C84_90C34((u8)arg3[i], arg4[i] + alienInstances[arg0].unk36);
			}
		}
		result = (s8)alienInstances[arg0].unk36;
		alienInstances[arg0].unk36++;
	}
	for (i = 0; i < arg1; i++) {
		if (arg3[i] != -1) {
			func_80081E5C_90E0C(arg3[i]);
		}
	}
	return result;
}

s8 func_80082084_91034(u8 arg0, u8 arg1, u8 arg2, s16 *arg3, Unk8014DD50 **arg4) {
	u8 i;
	s8 result;

	result = -1;
	if (D_8014DD50[*arg3].unkE == 0) {
		if (alienInstances[arg0].unk4B == arg2) {
			return (s8)arg2;
		}
		for (i = 0; i < arg1; i++) {
			if (arg3[i] != -1) {
				func_80081C84_90C34((u8)arg3[i], arg4[i] + alienInstances[arg0].unk4B);
			}
		}
		result = (s8)alienInstances[arg0].unk4B;
		alienInstances[arg0].unk4B++;
	}
	for (i = 0; i < arg1; i++) {
		if (arg3[i] != -1) {
			func_80081E5C_90E0C(arg3[i]);
		}
	}
	return result;
}

void func_800821F0_911A0(s32 arg0, s32 arg1, s32 arg2, u8 *arg3) {
	s32 hi;
	func_80081E5C_90E0C((s16)arg1);
	if (D_8014DD50[arg1].unkE == 0) {
		do {
			hi = func_800038E0_44E0() % arg2;
		} while (hi == alienInstances[arg0].unk36);
		alienInstances[arg0].unk36 = (u8)hi;
		func_80081C84_90C34((u8)arg1, (Unk8014DD50 *)&arg3[hi * 0x10]);
	}
}

void func_800822BC_9126C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
	s32 sp1c;
	s32 sp18;

	func_80081E5C_90E0C(arg1);
	if (D_8014DD50[arg1].unkE == 0) {
		sp18 = arg4;
		if (alienInstances[arg0].unk36 != 0) {
			sp18 = arg3;
			alienInstances[arg0].unk36 = 0;
		} else {
			alienInstances[arg0].unk36 = 1;
		}
		func_80081C84_90C34((u8)arg1, (Unk8014DD50 *)(sp18 + (func_800038E0_44E0() % arg2) * 0x10));
	}
}

// CURRENT(11598)
#ifdef NON_MATCHING
s16 func_80082394_91344(s32 arg0, s32 arg1, s32 arg2) {
	s16 closestAlien;
	f32 levelScale[3];
	s32 closestDist;
	u8 *alienId;
	u8 *alienIdEnd;

	closestAlien = 0xFF;
	levelScale[0] = D_8013C2B0_14B260[0];
	levelScale[1] = D_8013C2B0_14B260[1];
	levelScale[2] = D_8013C2B0_14B260[2];
	closestDist = arg2 << 8;

	if (D_8014D507 > 0) {
		alienId = D_8014D408;
		alienIdEnd = alienId + D_8014D507;
		do {
			u8 idx;
			AlienInstance *alien;
			u8 alienType;
			s32 dx;
			s32 dz;
			s32 negDx;
			s32 negDz;
			s32 absDx;
			s32 absDz;

			idx = *alienId;
			alienId++;
			alien = &alienInstances[idx];

			if (alien->specIndex != 1) {
				continue;
			}

			alienType = alien->unk24;
			if ((alienType == 3) || (alienType == 4) || (alienType == 0x1D) || (alienType == 0x13)) {
				continue;
			}

			dx = arg0 - alien->unk0;
			negDx = -dx;
			if (negDx < dx) {
				absDx = dx;
			} else {
				absDx = negDx;
			}

			dz = arg1 - alien->unk4;
			negDz = -dz;
			if (negDz < dz) {
				absDz = dz;
			} else {
				absDz = negDz;
			}

			if (absDz < absDx) {
				if (negDx >= dx) {
					dx = negDx;
				}
			} else {
				dx = absDz;
			}

			if (dx < closestDist) {
				closestAlien = idx;
				closestDist = dx;
			}
		} while (alienId < alienIdEnd);
	}

	if ((D_80052B34->unk1A == 0) && (D_80048180 == 0)) {
		s32 dx;
		s32 dz;
		s32 negDx;
		s32 negDz;
		s32 absDx;

		if (currentLevel < 4) {
			closestDist = (s32)((f32)closestDist * levelScale[currentLevel]);
		}

		dx = arg0 - D_80052B34->unk0;
		negDx = -dx;
		if (negDx < dx) {
			absDx = dx;
		} else {
			absDx = negDx;
		}

		dz = arg1 - D_80052B34->unk4;
		negDz = -dz;
		if (negDz < dz) {
			negDz = dz;
		}

		if (negDz < absDx) {
			if (negDx >= dx) {
				dx = negDx;
			}
		} else {
			dx = negDz;
		}

		if (dx < closestDist) {
			return 0x100;
		}
	}

	return closestAlien;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082394_91344.s")
#endif

s32 func_800825E8_91598(s16 arg0, s16 arg1, s32 *arg2)
{
  s16 dx;
  s16 dz;
  s32 dist;
  s32 result;
  s32 idx;
  s32 i;
  i = D_8014D507; result = 0xFF; if (i < ((s32) D_8014D50A)) { 
	  do { idx = D_8014D408[i];
	  dx = arg0 - alienInstances[idx].unk0;
	  dz = arg1 - alienInstances[idx].unk4;
	  dist = (dx * dx) + (dz * dz);
	  if (dist < (*arg2))
	  {
		*arg2 = dist;
		result = idx & 0xFF;
	  }
	}
	while (++i < ((s32) D_8014D50A));
  }
  return result;
}

// CURRENT(7713)
#ifdef NON_MATCHING
s32 func_800826E4_91694(s32 arg0, u16 arg1, u16 arg2) {
	AlienInstance *inst;
	s32 distSq[3][3];
	s16 baseX;
	s16 baseZ;
	u32 threshold;
	s32 row;
	s32 col;
	s32 mask;
	s32 result;

	inst = &alienInstances[arg0 & 0xFF];
	threshold = alienSpecs[inst->specIndex].unk8;

	distSq[0][0] = ((inst->unk0 & 0xFF) * (inst->unk0 & 0xFF)) + ((inst->unk4 & 0xFF) * (inst->unk4 & 0xFF));
	distSq[0][1] = (inst->unk4 & 0xFF) * (inst->unk4 & 0xFF);
	distSq[0][2] = ((~inst->unk0 & 0xFF) * (~inst->unk0 & 0xFF)) + ((inst->unk4 & 0xFF) * (inst->unk4 & 0xFF));
	distSq[1][0] = (inst->unk0 & 0xFF) * (inst->unk0 & 0xFF);
	distSq[1][1] = 0;
	distSq[1][2] = (~inst->unk0 & 0xFF) * (~inst->unk0 & 0xFF);
	distSq[2][0] = ((inst->unk0 & 0xFF) * (inst->unk0 & 0xFF)) + ((~inst->unk4 & 0xFF) * (~inst->unk4 & 0xFF));
	distSq[2][1] = (~inst->unk4 & 0xFF) * (~inst->unk4 & 0xFF);
	distSq[2][2] = ((~inst->unk0 & 0xFF) * (~inst->unk0 & 0xFF)) + ((~inst->unk4 & 0xFF) * (~inst->unk4 & 0xFF));

	baseX = (inst->unk0 >> 8) - 1;
	baseZ = (inst->unk4 >> 8) - 1;

	mask = 1;
	result = 0;

	for (row = 0; row < 3; row++) {
		for (col = 0; col < 3; col++, mask <<= 1) {
			s8 x = (s8)(baseX + col);
			s8 z = (s8)(baseZ + row);

			if (distSq[row][col] < threshold) {
				if (((func_800B325C_C220C(x, z, arg1) != 0) || (arg1 == 0)) && (func_800B325C_C220C(x, z, arg2) == 0)) {
					result |= mask;
				}
			}
		}
	}

	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800826E4_91694.s")
#endif

s32 func_800828F0_918A0(u8 arg0, u16 arg1, u16 arg2)
{
  s16 sp20;
  s16 sp1C;
  sp20 = (s8) (alienInstances[arg0].unk0 >> 8);
  sp1C = (s8) (alienInstances[arg0].unk4 >> 8);
  if ((func_800B325C_C220C(sp20, sp1C, arg1) != 0) && (func_800B325C_C220C(sp20, sp1C, arg2) == 0))
  {
	return 1;
  }
  return 0;
}

s32 func_80082990_91940(s16 arg0, s16 arg1)
{
	s32 v1;
	if (arg1 < arg0) {
		v1 = 0x88;
	} else {
		v1 = 0x22;
	}

	if ((0xFF - arg1) < arg0) {
		v1 &= ~0xA0;
	} else {
		v1 &= ~0xA;
	}

	return v1;
}

s16 func_800829EC_9199C(u8 arg0, s32 arg1) {
	s32 col;
	s32 row;
	s32 mask;
	AlienInstance *inst;
	mask = 1;
	for (row = 0; row < 3; row++) {
		for (col = 0; col < 3; col++, mask <<= 1) {
			if (arg1 & mask) {
				inst = &alienInstances[arg0];
				inst->unk28 = (inst->unk0 >> 8) + col - 1;
				inst->unk29 = (inst->unk4 >> 8) + row - 1;
				return D_8013C2BC_14B26C[row * 3 + col];
			}
		}
	}
	return -1;
}

s32 func_80082A98_91A48(u8 arg0)
{
  s16 new_var2;
  s16 sp1C;
  s32 v0;
  u32 new_var;
  new_var = arg0;
  new_var2 = alienInstances[arg0].unk0;
  new_var2 = new_var2 & 0xFF;
  sp1C = alienInstances[arg0].unk4;
  sp1C = sp1C & 0xFF;
  if (func_800828F0_918A0(arg0, 0x1000, 0x800) != 0)
  {
	v0 = func_80082990_91940(new_var2, sp1C);
  }
  else
  {
	return -1;
  }
  return func_800829EC_9199C(new_var, v0);
}

// https://decomp.me/scratch/M9ZDB
// CURRENT(40)
#ifdef NON_MATCHING
s32 func_80082B30_91AE0(u8 arg0)
{
  u8 specIndex;
  s16 xPos;
  s16 zPos;
  s32 threshold;
	s32 xx;
  specIndex = alienInstances[arg0].specIndex;
  xPos = alienInstances[arg0].unk0;
  zPos = alienInstances[arg0].unk4;
  threshold = ((u32) (alienSpecs[specIndex].unk54 & 0x180000)) >> 0x13;
	xx = func_800056D0_62D0(
		  alienInstances[arg0].unk0,
		  alienInstances[arg0].unk4);
  if (D_8003E290[xx].unkC <= threshold)
  {
	return -1;
  }
  return func_800829EC_9199C(arg0, func_80082990_91940(xPos & 0xFF, zPos & 0xFF));
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082B30_91AE0.s")
#endif

s32 func_80082C04_91BB4(u8 arg0)
{
	s16 sp1E;
	s16 sp1C;
	sp1E = alienInstances[arg0].unk0;
	sp1C = alienInstances[arg0].unk4;
	if (func_800B0C4C_BFBFC(sp1E >> 8, sp1C >> 8))
	{
		sp1E &= 0xff;
		sp1C &= 0xff;
		return func_800829EC_9199C(arg0, func_80082990_91940(sp1E, sp1C));
	}
	return -1;
}

 // https://decomp.me/scratch/bCNBv
 // CURRNET(183)
#ifdef NON_MATCHING
/*  3×3 grid scan — searches a 3×3 area of grid cells around an alien's position
 for cells where func_800B325C_C220C returns 0, preferring orthogonal cells.*/
s32 func_80082CA0_91C50(u8 arg0)
{
  s16 startXPos;
  s16 startZPos;
  s32 matchingXOffset;
  s32 matchingZOffset;
  s32 xOffest;
  s32 zOffset;
  s32 curXPos;
  s32 curZPos;
  if (alienInstances[arg0].unk0){}
  startXPos = (alienInstances[arg0].unk0 >> 8) - 1;
  startZPos = (alienInstances[arg0].unk4 >> 8) - 1;
	
  matchingXOffset = -1;
  matchingZOffset = -1;

  for (zOffset = 0, curZPos = startZPos; zOffset != 3; zOffset++, curZPos++)
  {
	for (xOffest = 0, curXPos = startXPos; xOffest != 3; xOffest++, curXPos++)
	{
	  if (func_800B325C_C220C(curXPos, curZPos, 0x1000) == 0)
	  {
		matchingXOffset = xOffest;
		matchingZOffset = zOffset;
		if ((zOffset + xOffest) & 1)
		{
		  alienInstances[arg0].unk28 = curXPos;
		  alienInstances[arg0].unk29 = curZPos;
		  return D_8013C2BC_14B26C[(zOffset * 3) + xOffest];
		}
	  }
	}
  }

  if (matchingXOffset != (-1))
  {
	alienInstances[arg0].unk28 = startXPos + matchingXOffset;
	alienInstances[arg0].unk29 = startZPos + matchingZOffset;
	return D_8013C2BC_14B26C[(matchingZOffset * 3) + matchingXOffset];
  }
  return -1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082CA0_91C50.s")
#endif

s32 func_80082E38_91DE8(u8 arg0, s16 arg1) {
	s32 specIndex = alienInstances[arg0].specIndex;
	u16 new_var;
	s32 new_var2;
	s16 unk2 = alienInstances[arg0].unk2;
	new_var = unk2;
	unk2 = alienSpecs[specIndex].unk38 + new_var;
	new_var2 = unk2;
	if (new_var2 < arg1)
	{
		return 0;
	}
	return 1;
}

// https://decomp.me/scratch/lTDM9
// CURRENT(556)
#ifdef NON_MATCHING
s32 func_80082EB4_91E64(u8 arg0, s16 arg1)
{
  s16 var_v1;
  s16 var_v0;
  s16 sp34;
  u8 specIndex;
  s16 var_t1;
  u8 temp;
  specIndex = alienInstances[arg0].specIndex;
  if ((alienSpecs[specIndex].unk58 + alienSpecs[specIndex].unk38) < alienSpecs[specIndex].unkC)
  {
	var_t1 = alienSpecs[specIndex].unkC;
  }
  else
  {
	var_t1 = alienSpecs[specIndex].unk58 + alienSpecs[specIndex].unk38;
  }
  if (((alienInstances[arg0].unk20 & 0x60100000) || (alienSpecs[specIndex].unk54 & 0xC1)) && (((var_v0 = -1, currentLevel != 3)) || ((specIndex != 9) && (specIndex != 8))))
  {
	var_v1 = alienInstances[arg0].unk2;
	var_v0 = -1;
  }
  else
  {
	temp = func_8011E6FC_12D6AC(alienInstances[arg0].unk0, alienInstances[arg0].unk4, &sp34);
	if (temp != 0xFF)
	{
	  if (func_80082E38_91DE8(arg0, buildingInstances[temp].yCoord) == 0)
	  {
		if (1)
		{
		}
		sp34 = func_800B84D0_C7480(alienInstances[arg0].unk0, alienInstances[arg0].unk4) >> 8;
	  }
	}
 var_v1 = sp34 + var_t1; var_v0 = sp34 - (var_t1 * 2); } if ((var_v1 < arg1) || (!(var_v0 < arg1))) { return 1;
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80082EB4_91E64.s")
#endif

// https://decomp.me/scratch/fQx5r
// CURRENT(131)
#ifdef NON_MATCHING
s32 func_80083060_92010(s16 arg0, s16 arg1, s32 arg2, u8 *arg3)
{
  s32 sp18;
  s32 sp1C;
  s32 sp24;
  s16 var_v1;
  s16 sp22;
  sp24 = alienInstances[arg2].specIndex;
  sp18 = arg1;
  sp1C = arg0;
  *arg3 = func_8011E6FC_12D6AC(sp1C, sp18, &sp22);
  
	var_v1 = (*arg3) != 0xFF
	  ? (func_800B84D0_C7480(sp1C, sp18) >> 8)
	  : sp22;
  
  if ((var_v1 != sp22) && (!(alienSpecs[sp24].unk54 & 0x80000041)))
  {
	return 1;
  }
  if (((*arg3) == 0xFF) && (alienSpecs[sp24].unk54 & 0x20000000))
  {
	return 0;
  }
  if (func_80082EB4_91E64(arg2, sp22) != 0)
  {
	return 1;
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80083060_92010.s")
#endif

// CURRENT(4881)
#ifdef NON_MATCHING
s32 func_800831A4_92154(u8 arg0, s16 *arg1, s16 *arg2, u8 *arg3) {
	AlienInstance *alien;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 i;
	s32 nearCount;
	s32 spanCount;
	s16 baseAngle;
	s16 lowAngle;
	s16 highAngle;
	s16 leftAngle;
	s16 rightAngle;
	s16 angle;
	s16 delta;
	s16 facingDir;
	s32 x;
	s32 z;
	f64 radius;
	u8 hitBuilding;
	u8 blockedBuilding;
	u8 chosenBuilding;
	u8 specIndex;

	alien = &alienInstances[arg0];
	specIndex = alien->specIndex;
	facingDir = alien->unk12;
	baseAngle = alien->unkE;
	radius = (f64)alienSpecs[specIndex].unkC;
	chosenBuilding = 0xFF;
	blockedBuilding = 0xFF;
	hitBuilding = 0xFF;
	if (facingDir < 0) {
		baseAngle += 0x8000;
	}

	nearCount = 0;
	spanCount = 0;

	for (i = 0; i < 8; i++) {
		angle = (s16)(i << 13);
		x = (s32)((((f64)(f32)coss((u16)angle) / 32768.0) * radius) + (f64)alien->unk0);
		z = (s32)((((f64)(f32)sins((u16)angle) / 32768.0) * radius) + (f64)alien->unk4);

		if (func_80083060_92010(x, z, arg0, &hitBuilding) != 0) {
			if ((hitBuilding != 0xFF) && (func_80082E38_91DE8(arg0, buildingInstances[hitBuilding].yCoord) == 0) &&
				((specIndex != 0x16) || ((buildingInstances[hitBuilding].buildingType != D_8015EA28) && (buildingInstances[hitBuilding].buildingType != 0x1F)))) {
				chosenBuilding = hitBuilding;
				continue;
			}

			delta = (s16)(angle - baseAngle);
			alien->unk28 = (s8)(x >> 8);
			alien->unk29 = (s8)(z >> 8);
			blockedBuilding = hitBuilding;
			if (ABS(delta) < 0x4000) {
				nearCount++;
			}
			if (spanCount == 0) {
				lowAngle = angle;
				highAngle = angle;
				spanCount++;
			} else if ((s16)(angle - lowAngle) < 0) {
				lowAngle = angle;
			} else {
				highAngle = angle;
				spanCount++;
			}
		}
	}

	if (chosenBuilding != 0xFF) {
		alien->unk20 |= 0x02000000;
		alien->pad4A = chosenBuilding;
	} else {
		alien->unk20 &= 0xFDFFFFFF;
	}

	if (nearCount == 0) {
		if (spanCount != 0) {
			alien->unk34 = 6;
			alien->unk47 |= 1;
			alien->unk2A = alien->unkE;
		}
		alien->unk28 = -1;
		alien->unk29 = -1;
		return 0;
	}

	for (i = 1; i != 8; i++) {
		s16 offset;

		offset = (s16)(i << 10);
		angle = (s16)(lowAngle - offset);
		x = (s32)((((f64)(f32)coss((u16)angle) / 32768.0) * radius) + (f64)alien->unk0);
		z = (s32)((((f64)(f32)sins((u16)angle) / 32768.0) * radius) + (f64)alien->unk4);
		if ((func_80083060_92010(x, z, arg0, &hitBuilding) != 0) &&
			((hitBuilding == 0xFF) || (func_80082E38_91DE8(arg0, buildingInstances[hitBuilding].yCoord) != 0))) {
			leftAngle = angle;
		}

		angle = (s16)(highAngle + offset);
		x = (s32)((((f64)(f32)coss((u16)angle) / 32768.0) * radius) + (f64)alien->unk0);
		z = (s32)((((f64)(f32)sins((u16)angle) / 32768.0) * radius) + (f64)alien->unk4);
		if ((func_80083060_92010(x, z, arg0, &hitBuilding) != 0) &&
			((hitBuilding == 0xFF) || (func_80082E38_91DE8(arg0, buildingInstances[hitBuilding].yCoord) != 0))) {
			rightAngle = angle;
		}
	}

	*arg1 = leftAngle - 0x400;
	*arg2 = rightAngle + 0x400;
	*arg3 = blockedBuilding;
	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800831A4_92154.s")
#endif

// CURRENT(40932)
#ifdef NON_MATCHING
s32 func_800836D0_92680(u8 arg0, s16 *arg1, s16 *arg2) {
	AlienInstance *alien;
	AlienSpec *spec;
	f32 outA;
	f32 outB;
	s16 minAngle;
	s16 maxAngle;
	s16 range;
	s16 startX;
	s16 startZ;
	s16 absSpeed;
	s32 maxDistSq;
	s32 foundAny;
	s32 row;
	s32 col;
	s32 visibleMask;
	s32 sampleX;
	s32 list;
	s32 quad;

	alien = &alienInstances[arg0];
	spec = &alienSpecs[alien->specIndex];
	startX = (alien->unk0 >> 8) - 1;
	startZ = (alien->unk4 >> 8) - 1;
	range = spec->unkC;
	absSpeed = alien->unk12;
	if (-absSpeed >= absSpeed) {
		absSpeed = -absSpeed;
	}
	maxDistSq = spec->unk32 * absSpeed;
	foundAny = 0;
	visibleMask = 1;
	list = func_800826E4_91694(arg0, 0, 0);

	for (row = 0; row < 3; row++) {
		for (col = 0; col < 3; col++, visibleMask <<= 1) {
			s16 tileX;
			s16 tileZ;
			u32 bits;

			if (!(list & visibleMask)) {
				continue;
			}

			tileX = startX + col;
			tileZ = startZ + row;
			bits = func_80078530_874E0(tileX, tileZ);
			quad = 0;

			while (bits != 0) {
				s32 kind;
				s32 levelIdx;
				s32 hit;

				kind = bits & 0xF;
				levelIdx = (currentLevel << 4) + kind;
				hit = 0;

				if (kind < 0xE) {
					s16 x;
					s16 z;
					s32 dx;
					s32 dz;
					s32 dy;
					s32 maxRange;
					s32 limitY;
					s16 angle;

					x = (tileX << 8) + ((quad & 1) << 7) + 0x40;
					z = (tileZ << 8) + (((quad >> 1) & 1) << 7) + 0x40;
					dx = x - alien->unk0;
					dz = z - alien->unk4;
					dy = range + D_8013BC0C_14ABBC[levelIdx];
					limitY = D_8013BB6C_14AB1C[levelIdx] + (func_800B84D0_C7480(x, z) >> 8);
					maxRange = dy * dy;
					if (((dx * dx) + (dz * dz) < maxRange) && (alien->unk2 < limitY)) {
						if ((maxDistSq < 0x7A121) && (spec->unk32 < 0x4001)) {
							angle = func_80003824_4424((f32)dx, (f32)dz);
							hit = 1;
							minAngle = angle;
							maxAngle = angle;
						} else {
							angle = func_80003824_4424((f32)dx, (f32)dz);
							if (func_80078828_877D8(x, z, angle & 0xFFFF, 0) != 0) {
								alien->unk12 = 0;
							} else {
								angle = func_80003824_4424((f32)dx, (f32)dz);
								hit = 1;
								minAngle = angle;
								maxAngle = angle;
							}
						}
					}
				} else {
					s32 off = quad * 2;
					s16 x0;
					s16 z0;
					s16 x1;
					s16 z1;
					s32 dx0;
					s32 dz0;
					s32 dx1;
					s32 dz1;
					s32 dy;
					s32 rangeSq;
					s32 h;
					s16 angleA;
					s16 angleB;
					s32 actor;
					s16 baseX;
					s16 baseZ;

					baseX = tileX << 8;
					baseZ = tileZ << 8;
					x0 = D_801416B0_150660[off + 0] + baseX;
					x1 = D_801416B0_150660[off + 1] + baseX;
					z0 = D_801416C0_150670[off + 0] + baseZ;
					z1 = D_801416C0_150670[off + 1] + baseZ;
					dx0 = x0 - alien->unk0;
					dz0 = z0 - alien->unk4;
					angleA = func_80003824_4424((f32)dx0, (f32)dz0);
					dy = range + D_8013BC0C_14ABBC[levelIdx];
					rangeSq = dy * dy;
					h = D_8013BB6C_14AB1C[levelIdx] + (func_800B84D0_C7480(x0, z0) >> 8);
					if (((dx0 * dx0) + (dz0 * dz0) < rangeSq) && (alien->unk2 < h)) {
						hit = 1;
					}

					dx1 = alien->unk0 - x1;
					dz1 = alien->unk4 - z1;
					angleB = func_80003824_4424((f32)-dx1, (f32)-dz1);
					h = D_8013BB6C_14AB1C[levelIdx] + (func_800B84D0_C7480(x1, z1) >> 8);
					if (alien->unk2 < h) {
						if (((dx1 * dx1) + (dz1 * dz1)) < rangeSq) {
							hit = 1;
						}
						if (func_8010EF40_11DEF0(
								(f32)x0, (f32)z0, (f32)x1, (f32)z1, (f32)alien->unk0, (f32)alien->unk4,
								(f32)((s32)((((f64)(f32)coss(alien->unkE)) / 32768.0) * (f64)dy) + alien->unk0),
								(f32)((s32)((((f64)(f32)sins(alien->unkE)) / 32768.0) * (f64)dy) + alien->unk4),
								&outA, &outB) != 0) {
							hit = 1;
						}

						if (hit) {
							actor = func_80078D64_87D14(baseX, baseZ, quad);
							if ((actor != -1) && (kind != 0xE)) {
								u8 *entry;

								entry = (u8 *)&D_80259D90[actor];
								if (func_80078FE0_87F90(entry, (VehicleInstance *)alien, &sampleX) != 0) {
									hit = 0;
									func_800792E0_88290(entry, sampleX);
								}
							}
						}
					}

					if (hit) {
						minAngle = angleA;
						maxAngle = angleB;
					}
				}

				if (hit) {
					s16 delta;

					if (!foundAny) {
						foundAny = 1;
						*arg1 = minAngle;
						*arg2 = maxAngle;
					} else {
						delta = minAngle - *arg1;
						if (delta < 0) {
							*arg1 = minAngle;
						}

						delta = maxAngle - *arg2;
						if (delta > 0) {
							*arg2 = maxAngle;
						}
					}
				}

				bits = (u16)(bits >> 4);
				quad++;
			}
		}
	}

	return foundAny;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800836D0_92680.s")
#endif

// https://decomp.me/scratch/cC8xU
// CURRENT(530)
#ifdef NON_MATCHING
void func_80083EF4_92EA4(AlienInstance *arg0, s32 arg1, s16 arg2, s16 arg3)
{
  u8 sp27;
  f32 var_f10;
  f32 var_f0;
  s16 half;
  sp27 = arg0->specIndex;
  if (!(arg0->unk47 & 1))
  {
	arg0->unk47 |= 1;
	func_8007EB74_8DB24(arg0, arg1);
  }
  func_8007F0E8_8E098((arg0 - alienInstances) & 0xFF, arg1 * 0, 1);
  if (arg1 == ((s32) D_80052B34))
  {
	arg0->unk47 |= 8;
  }
  if ((arg0->unk20 & 0x80000) && (arg0->unk20 & 0x600))
  {
	func_800F2D48_101CF8(((unsigned char) arg0->unk20) & 7, arg0->unk0, arg0->unk4);
  }
  half = arg2 / 2;
  if (half >= (alienSpecs[sp27].unk32 * 4))
  {
	arg0->unk20 |= 0x40000;
	arg0->unk2A = arg0->unk6;
	var_f10 = (f32) ((u32) alienSpecs[sp27].unk32);
	var_f0 = ((f32) half) / var_f10;
	if (var_f0 > 10.0f)
	{
	  var_f0 = 10.0f;
	}
	if (alienSpecs[sp27].unk40 != 0)
	{
	  func_801022F4_1112A4(arg0, arg3, (s16) (var_f0 * 32.0f));
	}
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80083EF4_92EA4.s")
#endif

// CURRENT(4565)
#ifdef NON_MATCHING
void func_800840B0_93060(s8 arg0, s16 arg1, s16 *arg2, s16 *arg3) {
	s16 temp_v0;
	s16 var_s3;
	s8 var_s0;
	s32 minus4;
	s32 minus8;
	s32 minus1;
	s32 minus2;
	s32 rand_half;

	var_s0 = arg0;
	var_s3 = arg1;
	minus4 = -5;
	minus8 = -9;
	minus1 = -2;
	minus2 = -3;
	rand_half = 0x8000;

loop:
	if (func_800038E0_44E0() >= 0xFBF5) {
		var_s3 = (s16)-var_s3;
	}

	temp_v0 = (s16)-var_s3;
	if (var_s3 < 0) {
		var_s0 = (s8)(var_s0 & minus4);
	} else {
		var_s0 = (s8)(var_s0 & minus1);
	}

	if (temp_v0 < var_s3) {
		temp_v0 = var_s3;
	}

	if (temp_v0 < 0x4000) {
		var_s0 = (s8)(var_s0 & minus8);
	} else {
		var_s0 = (s8)(var_s0 & minus2);
	}

	if (var_s0 == 0) {
		return;
	}

	if (var_s0 == 1) {
		*arg3 = (s16)(*arg3 - 1);
		return;
	}
	if (var_s0 == 2) {
		*arg2 = (s16)(*arg2 + 1);
		return;
	}
	if (var_s0 == 4) {
		*arg3 = (s16)(*arg3 + 1);
		return;
	}
	if (var_s0 == 8) {
		*arg2 = (s16)(*arg2 - 1);
		return;
	}

	if (func_800B325C_C220C(*((s8 *)arg2 + 1), *((s8 *)arg3 + 1), 0x800) != 0) {
		if ((var_s0 & 1) != 0) {
			if (func_800B325C_C220C(*((s8 *)arg2 + 1), (s8)(*arg3 - 1), 0x800) == 0) {
				var_s0 = (s8)(var_s0 & minus1);
				goto loop;
			}
		}
		if ((var_s0 & 4) != 0) {
			if (func_800B325C_C220C(*((s8 *)arg2 + 1), (s8)(*arg3 + 1), 0x800) == 0) {
				var_s0 = (s8)(var_s0 & minus4);
				goto loop;
			}
		}
		if ((var_s0 & 8) != 0) {
			if (func_800B325C_C220C((s8)(*arg2 - 1), *((s8 *)arg3 + 1), 0x800) == 0) {
				var_s0 = (s8)(var_s0 & minus8);
				goto loop;
			}
		}
		if ((var_s0 & 2) != 0) {
			if (func_800B325C_C220C((s8)(*arg2 + 1), *((s8 *)arg3 + 1), 0x800) == 0) {
				var_s0 = (s8)(var_s0 & minus2);
				goto loop;
			}
		}
		if (func_800038E0_44E0() < rand_half) {
			var_s0 = (s8)(var_s0 & 0xFFF5);
		} else {
			var_s0 = (s8)(var_s0 & 0xFFFA);
		}
		goto loop;
	}

	if ((var_s0 & 1) != 0) {
		if (func_800B325C_C220C(*((s8 *)arg2 + 1), (s8)(*arg3 - 1), 0x800) != 0) {
			var_s0 = (s8)(var_s0 & minus1);
			goto loop;
		}
	}
	if ((var_s0 & 4) != 0) {
		if (func_800B325C_C220C(*((s8 *)arg2 + 1), (s8)(*arg3 + 1), 0x800) != 0) {
			var_s0 = (s8)(var_s0 & minus4);
			goto loop;
		}
	}
	if ((var_s0 & 8) != 0) {
		if (func_800B325C_C220C((s8)(*arg2 - 1), *((s8 *)arg3 + 1), 0x800) != 0) {
			var_s0 = (s8)(var_s0 & minus8);
			goto loop;
		}
	}
	if ((var_s0 & 2) != 0) {
		if (func_800B325C_C220C((s8)(*arg2 + 1), *((s8 *)arg3 + 1), 0x800) != 0) {
			var_s0 = (s8)(var_s0 & minus2);
			goto loop;
		}
	}

	if (func_800038E0_44E0() < rand_half) {
		var_s0 = (s8)(var_s0 & 0xFFF5);
	} else {
		var_s0 = (s8)(var_s0 & 0xFFFA);
	}
	goto loop;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800840B0_93060.s")
#endif


// CURRENT(13111)
#ifdef NON_MATCHING
void func_800844D0_93480(s32 arg0)
{
	s16 sp3C;
	s16 sp3A;
	u8 sp39;
	s32 sp34;
	s8 var_s2;
	s16 temp_s0;
	s16 temp_s1;
	AlienInstance *temp_s3;
	AlienSpec *temp_v0;
	s32 temp_v1;
	s32 temp_a3;

	temp_a3 = arg0 & 0xFF;
	temp_s3 = &alienInstances[temp_a3];
	var_s2 = 0;
	temp_s0 = temp_s3->unk0;
	temp_s1 = temp_s3->unk4;
	sp39 = temp_s3->specIndex;

	sp3C = (s16)(s8)(temp_s0 >> 8);
	sp3A = (s16)(s8)(temp_s1 >> 8);

	if (func_800B325C_C220C((s8)sp3C, (s8)sp3A, 0x800) == 0)
	{
		return;
	}

	temp_v0 = &alienSpecs[sp39];
	temp_v1 = temp_v0->unk54;
	if ((temp_v1 & 0x10) == 0 || (temp_v1 & 1) != 0)
	{
		return;
	}

	sp34 = temp_s3->unk2 - temp_v0->unk58 - 0x32;

	if (func_800B325C_C220C((s8)sp3C, (s8)(sp3A - 1), 0x800) != 0)
	{
		var_s2 = 1;
	}
	else if (sp34 < (func_800B84D0_C7480((s16)((sp3C << 8) + 0x80), (s16)((sp3A << 8) - 0x80)) >> 8))
	{
		var_s2 = 1;
	}

	if (func_800B325C_C220C((s8)(sp3C + 1), (s8)sp3A, 0x800) != 0)
	{
		var_s2 |= 2;
	}
	else if (sp34 < (func_800B84D0_C7480((s16)((sp3C << 8) + 0x180), (s16)((sp3A << 8) + 0x80)) >> 8))
	{
		var_s2 |= 2;
	}

	if (func_800B325C_C220C((s8)sp3C, (s8)(sp3A + 1), 0x800) != 0)
	{
		var_s2 |= 4;
	}
	else if (sp34 < (func_800B84D0_C7480((s16)((sp3C << 8) + 0x80), (s16)((sp3A << 8) + 0x180)) >> 8))
	{
		var_s2 |= 4;
	}

	if (func_800B325C_C220C((s8)(sp3C - 1), (s8)sp3A, 0x800) != 0)
	{
		var_s2 |= 8;
	}
	else if (sp34 < (func_800B84D0_C7480((s16)((sp3C << 8) - 0x80), (s16)((sp3A << 8) + 0x80)) >> 8))
	{
		var_s2 |= 8;
	}

	if (var_s2 != 0)
	{
		func_800840B0_93060(var_s2, temp_s3->unk2A, &sp3C, &sp3A);
		sp3C = (s16)((sp3C << 8) + 0x80);
		sp3A = (s16)((sp3A << 8) + 0x80);
		temp_s3->unk2A = func_80003824_4424((f32)(sp3C - temp_s0), (f32)(sp3A - temp_s1));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800844D0_93480.s")
#endif

// https://decomp.me/scratch/dDCXt
// CURRENT(18)
#ifdef NON_MATCHING
void func_800847D0_93780(u8 arg0)
{
  s32 specIdx = alienInstances[arg0].specIndex;
  AlienSpec *spec = &alienSpecs[specIdx];
  s16 rnd;
  if (spec->unk54 & 0x1000)
  {
	func_80084904_938B4(arg0);
	return;
  }
  rnd = (func_800038E0_44E0() >> 9) - 0x20;
  alienInstances[arg0].unk14 = alienInstances[arg0].unk0;
  alienInstances[arg0].unk18 = alienInstances[arg0].unk4;
  alienInstances[arg0].unk34 = (-rnd < rnd ? rnd : -rnd) + (0x2000 / alienSpecs[specIdx].unk42);
  alienInstances[arg0].unk47 |= 1;
  alienInstances[arg0].unk2A += (rnd < 0 ? -1 : 1) << 13;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800847D0_93780.s")
#endif

// https://decomp.me/scratch/g8Awf
// CURRENT(8)
#ifdef NON_MATCHING
void func_80084904_938B4(u8 arg0)
{
  s16 sp2A;
  u8 new_var;
  s16 temp_a1;
  s16 var_a3;
  temp_a1 = (var_a3 = (func_800038E0_44E0() >> 1) - 0x4000);
  new_var = alienInstances[arg0].specIndex;
  if (!(alienSpecs[new_var].unk54 & 1))
  {
	if (((-temp_a1 < temp_a1) ? temp_a1 : -temp_a1) < 0x2000)
	{
	  var_a3 = (temp_a1 + ((temp_a1 < 0 ? -1 : 1) << 13)) & (0, 0xFFFFFFFFu);
	}
  }
  sp2A = alienInstances[arg0].unk2A + var_a3;
  alienInstances[arg0].unk14 = alienInstances[arg0].unk0 + ((((f32) coss(sp2A)) / 32768.0) * D_80141E30);
  alienInstances[arg0].unk18 = alienInstances[arg0].unk4 + ((((f32) sins(sp2A)) / 32768.0) * D_80141E38);
  if (alienSpecs[new_var].unk40 > 0)
  {
	alienInstances[arg0].unk34 = 0x5DC / (alienSpecs[new_var].unk40 >> 5);
	alienInstances[arg0].unk47 |= 1;
  }
  alienInstances[arg0].unk2A = sp2A;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084904_938B4.s")
#endif

// https://decomp.me/scratch/JTTha
// CURRENT(18)
#ifdef NON_MATCHING
void func_80084AE4_93A94(AlienInstance *arg0, AlienInstance *arg1)
{
  f32 new_var;
  f32 sp24;
  
  f32 sp1C;
  s32 sp18;AlienSpec *spec;
  if (((s8 *) arg1)[13] == (-2))
  {
	spec = (AlienSpec *) (&vehicleSpecs[arg1->specIndex]);
  }
  else
  {
	spec = &alienSpecs[arg1->specIndex];
  }
  sp18 = alienSpecs[arg0->specIndex].unkC + spec->unkC;
  sp24 = (f32) (arg0->unk0 - arg1->unk0);
  new_var = (f32) (arg0->unk2 - arg1->unk2);
  sp1C = (f32) (arg0->unk4 - arg1->unk4);
  arg0->unk10 = (s16) ((s32) (((f32) arg0->unk10) + (new_var * 4.0f)));
  arg0->unkE = func_80003824_4424(sp24, sp1C);
  arg0->unk12 = (s16) ((s32) ((((f32) sp18) - sqrtf((sp24 * sp24) + (sp1C * sp1C))) * 4.0f));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084AE4_93A94.s")
#endif

void func_80084C48_93BF8(VehicleInstance *arg0)
{
	s32 dx;
	s32 dx2;  
	s32 dy;
	s32 dx3;  
	s16 angle;

	dx = D_80052B34->unk0 - arg0->unk0;
	dy = D_80052B34->unk4 - arg0->unk4;
	sqrtf((f32) ((dx * dx) + (dy * dy)));
	angle = func_80003824_4424((f32) dx, (f32) dy);
	// Force player off in direction %d
	osSyncPrintf(&D_80141D98_150D48, angle);
	func_80102DDC_111D8C(D_80052B34, angle, 0x2000, 20.0f);
}

void func_80084CF8_93CA8(AlienInstance *arg0, AlienInstance *arg1)
{
	s32 temp_v0;
	s32 temp_v0_2;

	if (*((s8 *)arg0 + 0x0D) != -2) {
		temp_v0 = arg0->unk20;
		if (!(temp_v0 & 0x100000)) {
			if (temp_v0 & 0x40000000) {
				func_80084AE4_93A94(arg0, arg1);
			}
			goto block_4;
		}
	} else {
block_4:
		if (*((s8 *)arg1 + 0x0D) != -2) {
			temp_v0_2 = arg1->unk20;
			if (!(temp_v0_2 & 0x100000) && (temp_v0_2 & 0x40000000)) {
				func_80084AE4_93A94(arg1, arg0);
			}
		}
	}
}

void func_80084D80_93D30(u8 arg0)
{
	alienInstances[arg0].unk20 &= 0xFEFFFFFF;
	if (D_80052ACA == 2 || alienInstances[arg0].unk20 & 0x100000)
	{
		return;
	}
	func_800A4150_B3100(alienInstances[arg0].unk25);
	if (alienInstances[alienInstances[arg0].unk26].specIndex == ALIEN_SPEC_HARVESTER)
	{
		alienInstances[arg0].unk25 = alienInstances[arg0].unk26;
		if (alienInstances[arg0].specIndex == 3)
		{
			alienInstances[arg0].unk20 |= 0x2020;
			alienInstances[arg0].unk20 &= ~0x800;  
			alienInstances[arg0].unk38 = alienInstances[arg0].unk26 & 0xff;
		}
	}
	alienInstances[arg0].unk26 = 0;
}

// Get X/Z distance between
s32 func_80084E54_93E04(VehicleInstance *vehicle, AlienInstance *alien)
{
	s32 xDiff;
	s32 zDiff;
	s16 zPos;
	s32 halfAbsoluteXDiff;
	s32 halfAbsoluteZDiff;
	s32 absoluteXDiff;
	s32 absoluteZDiff;
	xDiff = vehicle->unk0 - alien->unk0;
	if ((-xDiff) < xDiff)
	{
		absoluteXDiff = xDiff;
	}
	else
	{
		absoluteXDiff = -xDiff;
	}
	halfAbsoluteXDiff = absoluteXDiff;
	if (!halfAbsoluteXDiff) {}
	halfAbsoluteXDiff = halfAbsoluteXDiff >> 1;
	zDiff = vehicle->unk4 - alien->unk4;
	if ((-zDiff) < zDiff)
	{
		absoluteZDiff = zDiff;
	}
	else
	{
		absoluteZDiff = -zDiff;
	}
	halfAbsoluteZDiff = absoluteZDiff >> 1;
	return ((s32) sqrtf(
		(f32) ((halfAbsoluteXDiff * halfAbsoluteXDiff) + (halfAbsoluteZDiff * halfAbsoluteZDiff))
	)) * 2;
}

// get distance between alien and vehicle
s32 func_80084F00_93EB0(VehicleInstance *vehicle, AlienInstance *alien)
{
  s32 hx;
  s32 hy;
  s32 new_var2;
  s32 hz;
  s32 diff = ((0, vehicle->unk0)) - alien->unk0;
  s32 new_var;
  s32 var_v0 = -diff;
  if ((-diff) < diff)
  {
	var_v0 = diff;
  }
  else
  {
	var_v0 = -diff;
  }
  new_var = vehicle->unk2 - alien->unk2;
  hx = var_v0 >> 1;
  diff = new_var;
  new_var = diff;
  var_v0 = -diff;
  if ((-diff) < diff)
  {
	var_v0 = new_var;
  }
  else
  {
	var_v0 = -diff;
  }
  hy = var_v0 >> 1;
  var_v0 = -diff;
  new_var2 = vehicle->unk4 - alien->unk4;
  diff = new_var2;
  if ((-diff) < diff)
  {
	var_v0 = diff;
  }
  else
  {
	var_v0 = -diff;
  }
  hz = var_v0 >> 1;
  return ((s32) sqrtf((f32) (((hx * hx) + (hy * hy)) + (hz * hz)))) * 2;
}

// https://decomp.me/scratch/iDb3d
// CURRENT(24)
#ifdef NON_MATCHING
s32 func_80084FE8_93F98(u8 arg0, u16 arg1)
{
  s32 new_var;
  s32 new_var3;
  s32 var_v1;
	
  new_var3 = D_80052B34->unk0 - alienInstances[arg0].unk0;
  new_var = D_80052B34->unk4 - alienInstances[arg0].unk4;

  if ((func_80003824_4424((f32) new_var3, (f32) new_var) - alienInstances[arg0].unk6) > 
	  (-(func_80003824_4424((f32) new_var3, (f32) new_var) - alienInstances[arg0].unk6)))
  {
	var_v1 = func_80003824_4424((f32) new_var3, (f32) new_var) - alienInstances[arg0].unk6;
  }
  else
  {
	var_v1 = -(func_80003824_4424((f32) new_var3, (f32) new_var) - alienInstances[arg0].unk6);
  }
  if (var_v1 < arg1)
  {
	return 1;
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80084FE8_93F98.s")
#endif

// https://decomp.me/scratch/UfGTS
s32 func_800850DC_9408C(u8 arg0, u16 arg1)
{
	s32 sp24;
	s32 sp20;
	s32 var_v1;
	s16 xx;
	s16 sp30;
	AlienInstance *s0;

	s0 = &alienInstances[arg0];
	sp24 = s0->unk14 - s0->unk0;
	sp20 = s0->unk18 - s0->unk4;
	sp30 = func_80003824_4424(sp24, sp20);
	var_v1 = (-(func_80003824_4424(sp24, sp20) - s0->unk6)) < (sp30 - s0->unk6)
				 ? func_80003824_4424(sp24, sp20) - s0->unk6
				 : -(func_80003824_4424(sp24, sp20) - s0->unk6);

	if (var_v1 < arg1)
	{
		return 1;
	}

	return 0;
}

// https://decomp.me/scratch/iDb3d
// CURRENT(356)
#ifdef NON_MATCHING
s32 func_800851C8_94178(u8 arg0, u8 arg1, u16 arg2) {
	Unk8014DD50 *weapon;
	AlienInstance *alien;
	s32 sp54;
	s32 sp50;
	s32 sp4C;
	s32 var_v1;
	s16 sp44;
	f32 sp34;
	f32 sp30;

	weapon = &D_8014DD50[arg1];
	alien = &alienInstances[arg0];
	func_80128428_1373D8(alien, weapon->unk0, 0, weapon->unk4, &sp54, &sp50, &sp4C);
	sp34 = (f32)(D_80052B34->unk0 - sp54);
	sp30 = (f32)(D_80052B34->unk4 - sp4C);
	sp44 = func_80003824_4424(sp34, sp30);
	if (-(s16)(func_80003824_4424(sp34, sp30) - (alien->unk6 - (u16)weapon->unk6)) < (s16)(sp44 - (alien->unk6 - (u16)weapon->unk6))) {
		var_v1 = (s16)(func_80003824_4424(sp34, sp30) - alien->unk6 + (u16)weapon->unk6);
	} else {
		var_v1 = -(s16)(func_80003824_4424(sp34, sp30) - alien->unk6 + (u16)weapon->unk6);
	}
	if (var_v1 < arg2) {
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800851C8_94178.s")
#endif

s32 func_80085340_942F0(u8 arg0, u16 arg1)
{
	s32 var_v1;
	s32 diff_y;
	s32 diff_x;
	s16 sp22;
	diff_x = alienInstances[arg0].unk0 - D_80052B34->unk0;
	diff_y = alienInstances[arg0].unk4 - D_80052B34->unk4;

	sp22 = func_80003824_4424((f32)diff_x, (f32)diff_y);
	if ((-(func_80003824_4424((f32)diff_x, (f32)diff_y) - D_80052B34->unk6)) < (sp22 - D_80052B34->unk6))
	{
		var_v1 = func_80003824_4424((f32)diff_x, (f32)diff_y) - D_80052B34->unk6;
	}
	else
	{
		var_v1 = -(func_80003824_4424((f32)diff_x, (f32)diff_y) - D_80052B34->unk6);
	}
	if (var_v1 < (s32) arg1)
	{
		return 1;
	}
	return 0;
}

s32 func_80085448_943F8(u8 arg0) {
	s32 dx = D_80052B34->unk0 - alienInstances[arg0].unk0;
	s32 dz = D_80052B34->unk4 - alienInstances[arg0].unk4;
	s32 abs_dx;
	s32 abs_dz;
	s32 max;

	abs_dx = -dx < dx ? dx : -dx;
	abs_dz = -dz < dz ? dz : -dz;
	max = abs_dz < abs_dx
		? -dx < dx ? dx : -dx
		: -dz < dz ? dz : -dz;

	if ((D_80052B34->unk2 < alienInstances[arg0].unk2) && (max < 0x200)) {
		return 1;
	}
	return 0;
}

s32 func_80085524_944D4(u8 arg0) {
	return ((u32)(arg0 + D_80052A8C) % 5U) == 0;
}

void func_8008554C_944FC(u8 arg0)
{
	s32 sp4C;
	s32 sp48;
	s32 sp44;
	s32 sp40;
	s32 sp3C;
	s32 sp38;
	sp4C = alienInstances[arg0].unk0;
	if (alienInstances[arg0].unk20 & 0xC0)
	{
		sp48 = alienInstances[arg0].unk2;
	}
	else
	{
		sp48 = alienInstances[arg0].unk2 + 0x64;
	}
	sp44 = alienInstances[arg0].unk4;
	sp40 = D_80052B34->unk0;
	if (D_80222A70 >= D_80052B34->unk2)
	{
		sp3C = D_80052B34->unk2;
	}
	else
	{
		sp3C = D_80052B34->unk2 + 0x32;
	}
	sp38 = D_80052B34->unk4;
	if (func_80085524_944D4(arg0) != 0)
	{
		if ((func_800862B4_95264(arg0, sp4C, sp48, sp44, sp40, sp3C, sp38) != 0) ||
			(func_80126268_135218((s16) sp4C, (s16) sp48, (s16) sp44, &sp40, &sp3C, &sp38, 0, 6) != (arg0 * 0)))
		{
			alienInstances[arg0].unk4E = 0;
		}
		else
		{
			alienInstances[arg0].unk4E = 1;
		}
	}
}

// https://decomp.me/scratch/NQqt9
// CURRENT(250)
#ifdef NON_MATCHING
void func_80085690_94640(u8 arg0, u16 arg1)
{
  AlienInstance *alien;
  s32 x;

	// why is arg1 going to a2 instead of a temp reg?
  if (func_80084FE8_93F98(arg0, (s32)arg1) != 0)
  {
	alien = &alienInstances[arg0];
	if (alien->unk1E == 0)
	{
	  //specIdx = alien->specIndex;
	  func_80122524_1314D4(
		  D_80052B34,
		  D_80145BE0_154B90[alienSpecs[alien->specIndex].unk0].unk2,
		  alien->unk0,
		  alien->unk4);
	  alien->unk1E = 0x1C;
	}
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085690_94640.s")
#endif

void func_80085748_946F8(u8 arg0) {
	alienInstances[arg0].unk20 |= 0x08000100;
}

s32 func_80085780_94730(u8 arg0) {
	if (alienInstances[arg0].unk20 & 0x80000000) {
		alienInstances[arg0].unk20 |= 0x08000100;
		return 1;
	}
	return 0;
}

s32 func_800857D0_94780(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	if (alienInstances[inst->unk25].unk20 & 0x80000000) {
		inst->unk20 |= 0x08000100;
		return 1;
	}
	return 0;
}

s32 func_80085838_947E8(u8 arg0)
{
	s32 abs_dx;
	s32 abs_dz;
	s32 max;
	s32 dx = D_80052B34->unk0 - alienInstances[arg0].unk0;
	s32 dz = D_80052B34->unk4 - alienInstances[arg0].unk4;

	abs_dx = -dx < dx ? dx : -dx;
	abs_dz = -dz < dz ? dz : -dz;
	max = abs_dz < abs_dx
		? -dx < dx ? dx : -dx
		: -dz < dz ? dz : -dz;

	if (max < 0x1800)
	{
		return 1;
	}
	return 0;
}

s32 func_80085900_948B0(u8 arg0, s32 arg1)
{
	s32 abs_dx;
	s32 abs_dz;
	s32 max;
	s32 dx = D_80052B34->unk0 - alienInstances[arg0].unk0;
	s32 dz = D_80052B34->unk4 - alienInstances[arg0].unk4;

	abs_dx = -dx < dx ? dx : -dx;
	abs_dz = -dz < dz ? dz : -dz;
	max = abs_dz < abs_dx
		? -dx < dx ? dx : -dx
		: -dz < dz ? dz : -dz;

	if (arg1 < max)
	{
		alienInstances[arg0].unk20 |= 0x08000100;
		return 1;
	}
	alienInstances[arg0].unk20 &= ~0x100;
	return 0;
}

s32 func_800859F4_949A4(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	if (func_80084FE8_93F98(arg0, (alienSpecs[inst->specIndex].unk51 * 0xC8) & 0xFFFF) != 0) {
		inst->unk20 |= 0x08000100;
		return 1;
	}
	return 0;
}

s16 func_80085A9C_94A4C(s16 arg0, s16 arg1, s32 arg2, s32 arg3, s16 arg4)
{
	s16 diff;
	diff = arg1 - arg0;
	if (arg4 < diff && arg0 < arg2)
	{
		arg0 += arg4;
	}
	else if (diff < -arg4 && arg3 < arg0)
	{
		arg0 -= arg4;
	}
	return arg0;
}

// https://decomp.me/scratch/K2a1e
// CURRENT(4)
#ifdef NON_MATCHING
s32 func_80085B14_94AC4(u8 arg0, s16 arg1, s32 arg2, s16 arg3, s16 arg4)
{
  u8 sp47;
  s16 temp_t1;
  AlienInstance *temp_ptr;
  s32 var_v0;
  s32 temp_v1;
  s32 temp_dx;
  s32 temp_dy;
  temp_ptr = &alienInstances[arg0];
  sp47 = temp_ptr->specIndex;
  temp_dx = arg3 - temp_ptr->unk0;
  temp_dy = arg4 - temp_ptr->unk4;
  temp_t1 = func_80003824_4424((f32) temp_dx, (f32) temp_dy) - temp_ptr->unk6;

  D_8014DD50[arg1].unk6 = 
	  func_80085A9C_94A4C(D_8014DD50[arg1].unk6, -temp_t1, arg2, -arg2, alienSpecs[sp47].unk42);
  temp_v1 = D_8014DD50[arg1].unk6 + temp_t1;

  var_v0 = -temp_v1 < temp_v1 ? temp_v1 : -temp_v1;
  if ((alienSpecs[sp47].unk42 * 2) < var_v0)
  {
	return 1;
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085B14_94AC4.s")
#endif

s16 func_80085C50_94C00(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5) {
	s16 temp_v0 = arg3 - arg0;
	s16 temp_v1 = arg5 - arg2;
	return func_80003824_4424(sqrtf((f32)((temp_v0 * temp_v0) + (temp_v1 * temp_v1))), (f32) -(s16)(arg4 - arg1));
}

void func_80085CE0_94C90(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
	u8 sp27 = alienInstances[arg0].specIndex;
	(&D_8014DD50[arg1])->unkA = func_80085A9C_94A4C((&D_8014DD50[arg1])->unkA,
		func_80085C50_94C00(alienInstances[arg0].unk0,
			alienInstances[arg0].unk2 + (&D_8014DD50[arg1])->unk2,
			alienInstances[arg0].unk4,
			arg2, arg3, arg4),
		0x71C, -0x1555, alienSpecs[sp27].unk42);
}

void func_80085DC8_94D78(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
	func_80085CE0_94C90(arg0, arg1, arg2, arg3, arg4);
	func_80085B14_94AC4(arg0, arg1, 0x2000, arg2, arg4);
}

// https://decomp.me/scratch/gA9AH
// CURRENT(4)
#ifdef NON_MATCHING
s32 func_80085E2C_94DDC(u8 arg0, s16 arg1, s32 arg2)
{
  u8 sp47;
  s16 sp42;
  s32 temp_v1;
  
  s32 temp_dx;
  s32 temp_dy;
	AlienInstance *temp_ptr;
  temp_ptr = &alienInstances[arg0];
  sp47 = temp_ptr->specIndex;
  temp_dx = D_80052B34->unk0 - temp_ptr->unk0;
  temp_dy = D_80052B34->unk4 - temp_ptr->unk4;
  sp42 = func_80003824_4424((f32) temp_dx, (f32) temp_dy) - temp_ptr->unk6;
  (&D_8014DD50[arg1])->unk6 = func_80085A9C_94A4C((&D_8014DD50[arg1])->unk6, (s16) (sp42 * (-1)), arg2, -arg2, alienSpecs[sp47].unk42);
  temp_v1 = (&D_8014DD50[arg1])->unk6 + sp42;
  if ((alienSpecs[sp47].unk42 * 2) < ((-temp_v1 < temp_v1) ? (temp_v1) : (-temp_v1)))
  {
	return 1;
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085E2C_94DDC.s")
#endif

// https://decomp.me/scratch/26Z9e
// CURRENT(101)
#ifdef NON_MATCHING
s32 func_80085F68_94F18(u8 arg0, s16 arg1, s32 arg2)
{
  s16 new_var3;
  u8 new_var;
  int new_var2;
  u8 sp67;
  s16 sp62;
  s16 new_var4;
  AlienInstance *sp40;

  s32 sp54;
  s32 sp50;
  s32 sp4C;
  sp40 = &alienInstances[arg0];
  sp67 = (new_var = sp40->specIndex);
  new_var3 = arg1;
  func_80128428_1373D8(sp40, D_8014DD50[new_var3].unk0, 0, D_8014DD50[arg1].unk4, &sp54, &sp50, &sp4C);
  new_var2 = D_80052B34->unk0 - sp54;
  sp62 = func_80003824_4424((f32) new_var2, (f32) ((new_var4 = D_80052B34->unk4) - sp4C)) - sp40->unk6;
  (&D_8014DD50[arg1])->unk6 = func_80085A9C_94A4C((&D_8014DD50[arg1])->unk6, (s16) (sp62 * (-1)), arg2, -arg2, alienSpecs[sp67].unk42);
  {
	s32 temp_v1 = (&D_8014DD50[arg1])->unk6 + sp62;
	s32 temp_a0 = -temp_v1;
	if ((alienSpecs[sp67].unk42 * 2) < ((temp_a0 < temp_v1) ? (temp_v1) : (temp_a0)))
	{
	  return 1;
	}
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80085F68_94F18.s")
#endif


s16 func_800860CC_9507C(s16 arg0, s16 arg1, s16 arg2) {
	s16 pad;
	s16 sp1C;
	s16 temp_v1;
	s16 temp_a3;
	temp_v1 = D_80052B34->unk0 - arg0;
	sp1C = D_80052B34->unk2 - arg1;
	temp_a3 = D_80052B34->unk4 - arg2;
	return func_80003824_4424(sqrtf((f32)((temp_v1 * temp_v1) + (temp_a3 * temp_a3))), (f32)-sp1C);
}

void func_80086164_95114(u8 arg0, s16 arg1)
{
	u8 sp27 = alienInstances[arg0].specIndex;
	(&D_8014DD50[arg1])->unkA = func_80085A9C_94A4C((&D_8014DD50[arg1])->unkA,
		func_800860CC_9507C(alienInstances[arg0].unk0,
			alienInstances[arg0].unk2 + (&D_8014DD50[arg1])->unk2,
			alienInstances[arg0].unk4),
		0x71C,
		-0x1555,
		alienSpecs[sp27].unk42);
}

s32 func_80086230_951E0(u8 arg0, s16 arg1, s32 arg2) {
	func_80086164_95114(arg0, arg1);
	return func_80085E2C_94DDC(arg0, arg1, arg2);
}

void func_80086270_95220(Projectile *arg0) {
	Unk80152B80 *entry;
	if (arg0 == NULL) {
		return;
	}
	entry = (Unk80152B80 *)&D_80145BE0_154B90[arg0->unk20];
	if (entry->unkE == 0) {
		return;
	}
	arg0->unk18 = (s32) D_80052B34;
}

#ifdef NON_MATCHING
// CURRENT(15204)
s32 func_800862B4_95264(u8 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
	AlienInstance *inst;
	AlienSpec *spec;
	s32 i;
	s32 minX;
	s32 maxX;
	s32 minZ;
	s32 maxZ;
	s32 absDeltaX;
	s32 absDeltaZ;

	if (alienSpecs[alienInstances[arg0].specIndex].unk54 & 0x00400000) {
		return 0;
	}

	if (arg1 < arg4) {
		minX = arg1 - 0xC8;
		maxX = arg4 + 0xC8;
	} else {
		minX = arg4 - 0xC8;
		maxX = arg1 + 0xC8;
	}

	if (arg3 < arg6) {
		minZ = arg3 - 0xC8;
		maxZ = arg6 + 0xC8;
	} else {
		minZ = arg6 - 0xC8;
		maxZ = arg3 + 0xC8;
	}

	for (i = 0; i < 0xFF; i++) {
		s32 dist;

		if (i == arg0) {
			continue;
		}

		inst = &alienInstances[i];
		if ((inst->unk0 < minX) || (maxX < inst->unk0)) {
			continue;
		}

		if ((inst->unk4 < minZ) || (maxZ < inst->unk4)) {
			continue;
		}

		if (inst->specIndex < 3) {
			continue;
		}

		spec = &alienSpecs[inst->specIndex];
		dist = func_801269BC_13596C(
			arg1 >> 0x1F, arg1,
			arg3 >> 0x1F, arg3,
			arg4 >> 0x1F, arg4,
			arg6 >> 0x1F, arg6,
			inst->unk0 >> 0x1F, inst->unk0,
			inst->unk4 >> 0x1F, inst->unk4);

		if (dist >= spec->unk8) {
			continue;
		}

		absDeltaX = arg1 - arg4;
		if (absDeltaX < 0) {
			absDeltaX = -absDeltaX;
		}

		absDeltaZ = arg3 - arg6;
		if (absDeltaZ < 0) {
			absDeltaZ = -absDeltaZ;
		}

		if (absDeltaZ < absDeltaX) {
			dist = func_801269BC_13596C(
				arg1 >> 0x1F, arg1,
				arg2 >> 0x1F, arg2,
				arg4 >> 0x1F, arg4,
				arg5 >> 0x1F, arg5,
				inst->unk0 >> 0x1F, inst->unk0,
				inst->unk2 >> 0x1F, inst->unk2);
		} else {
			dist = func_801269BC_13596C(
				arg3 >> 0x1F, arg3,
				arg2 >> 0x1F, arg2,
				arg6 >> 0x1F, arg6,
				arg5 >> 0x1F, arg5,
				inst->unk4 >> 0x1F, inst->unk4,
				inst->unk2 >> 0x1F, inst->unk2);
		}

		if (dist < spec->unk8) {
			return 1;
		}
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800862B4_95264.s")
#endif

#ifdef NON_MATCHING
// CURRENT(2432)
s32 func_800865F4_955A4(u8 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
	AlienInstance *alien;
	AlienSpec *spec;
	s32 specIndex;
	s32 sp5C;
	s32 sp58;
	s32 sp54;
	s32 sp48;
	s32 sp44;
	s32 sp40;
	s32 instanceFlags;

	alien = &alienInstances[arg0];
	specIndex = alien->specIndex;
	if (alien->unk1E != 0) {
		return 0;
	}

	spec = &alienSpecs[specIndex];
	if ((spec->unk54 & 0x200) && (alien->unk20 & 0x04000000)) {
		spec->unk20 = -spec->unk20;
		spec->unk2C = -spec->unk2C;
	}

	func_80128504_1374B4(alien, arg1, &sp5C, &sp58, &sp54);
	if (func_800862B4_95264(arg0, sp5C, sp58, sp54, arg2, arg3, arg4) != 0) {
		return 0;
	}

	if (spec->unk54 & 0x100) {
		func_80128428_1373D8(alien, -spec->unk20, spec->unk22, spec->unk24, &sp48, &sp44, &sp40);
		if (func_800862B4_95264(arg0, sp48, sp44, sp40, arg2, arg3, arg4) != 0) {
			return 0;
		}
	}

	func_80086270_95220(func_80129354_138304((s32) alien, arg1, arg2, arg3, arg4));

	if (spec->unk54 & 0x200) {
		instanceFlags = alien->unk20;
		if (instanceFlags & 0x04000000) {
			spec->unk20 = -spec->unk20;
			spec->unk2C = -spec->unk2C;
		}
		alien->unk20 = instanceFlags ^ 0x04000000;
	}

	if ((arg1 == 0) && (spec->unk54 & 0x100)) {
		alien->unk1E = 0;
		spec->unk20 = -spec->unk20;
		func_80086270_95220(func_80129354_138304((s32) alien, arg1, arg2, arg3, arg4));
		spec->unk20 = -spec->unk20;
	}

	if ((arg1 == 1) && (spec->unk54 & 0x01000000)) {
		alien->unk1E = 0;
		spec->unk2C = -spec->unk2C;
		func_80086270_95220(func_80129354_138304((s32) alien, arg1, arg2, arg3, arg4));
		spec->unk2C = -spec->unk2C;
	}

	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800865F4_955A4.s")
#endif

// https://decomp.me/scratch/16XTy
// CURRENT(24)
#ifdef NON_MATCHING
void func_800868A4_95854(u8 arg0, s32 arg1, s16 arg2, s16 arg3)
{
  s32 sp50;
  s32 sp4C;
  s32 sp48;
  f64 sp40;
  f64 sp38;
  f32 sp30;
  f32 sp2C;
  f32 temp_f12;
  sp38 = ((f64) ((f32) coss(alienInstances[arg0].unk6 + arg2))) / 32768.0;
  sp50 = (s32) (((f64) alienInstances[arg0].unk0) + (D_80141E40 * sp38));
  sp40 = ((f64) ((f32) sins((alienInstances[arg0].unk6 + arg2)))) / 32768.0;
  sp48 = (s32) (((f64) alienInstances[arg0].unk4) + (D_80141E48 * sp40));
  temp_f12 = (f32) ((((f64) ((f32) arg3)) * D_80141E50) / (32768.0 * 1.0));
  sp30 = cosf(temp_f12);
  sp2C = sinf(temp_f12) / sp30;
  sp4C = (s32) (((f32) alienInstances[arg0].unk2) + (D_80141E58 * sp2C));
  func_800865F4_955A4(arg0, arg1, sp50, sp4C, sp48);
  temp_f12 = (f32) ((((f64) ((f32) arg3)) * D_80141E50) / (32768.0 * 1.0));
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800868A4_95854.s")
#endif

#ifdef NON_MATCHING
// CURRENT(4523)
s32 func_80086A34_959E4(u8 arg0, s32 arg1, s16 arg2)
{
	f64 sp28;
	AlienSpec* spec;
	f32 sp3C;
	s16 sp44;
	s16 sp46;
	f32 sp48;
	s16 sp4E;
	s16 sp54;
	s16 var_a3;
	s16 temp_v1;
	AlienInstance* temp_s0;
	AlienInstance* var_s1;

	temp_s0 = &alienInstances[arg0];
	temp_v1 = temp_s0->specIndex;
	var_s1 = (AlienInstance*)D_80052B34;
	if (temp_s0->unk1E != 0) {
		return 0;
	}

	if (!(temp_s0->unk20 & 0x08000000) && (temp_s0->unk20 & 0x20)) {
		s16 temp = temp_s0->unk38;
		if (temp != 0x100) {
			var_s1 = &alienInstances[temp];
		}
	}

	spec = &alienSpecs[temp_v1];
	sp46 = (temp_s0->unk0 - var_s1->unk0) >> 2;
	sp44 = (temp_s0->unk4 - var_s1->unk4) >> 2;
	sp3C = sinf((f32)(((f64)(f32)spec->unk3C * D_80141E60_150E10[0]) / 32768.0));
	sp48 = sp3C / cosf((f32)(((f64)(f32)spec->unk3C * D_80141E68_150E18[0]) / (32768.0 * 1.0)));
	sp4E = (s32)sqrtf(sp46 * sp46 + sp44 * sp44) * 4;

	sp28 = (f64)sp4E;
	sp54 = (s16)(s32)((f64)temp_s0->unk0 + sp28 * ((f64)(f32)coss((temp_s0->unk6 + arg2) & 0xFFFF) / 32768.0));
	temp_v1 = (s16)(s32)((f64)temp_s0->unk4 + sp28 * ((f64)(f32)sins((temp_s0->unk6 + arg2) & 0xFFFF) / 32768.0));
	var_a3 = var_s1->unk2 + 0x14;
	if (sp4E == 0) {
		return 0;
	}

	if (sp48 * (f32)sp4E < (f32)(temp_s0->unk2 - var_a3)) {
		var_a3 = (s16)(s32)((f32)temp_s0->unk2 - sp48 * (f32)sp4E);
	}

	if ((f32)(temp_s0->unk2 - var_a3) < -sp48 * (f32)sp4E) {
		var_a3 = (s16)(s32)((f32)temp_s0->unk2 + sp48 * (f32)sp4E);
	}

	return func_800865F4_955A4(arg0, arg1, sp54, var_a3, temp_v1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80086A34_959E4.s")
#endif

#ifdef NON_MATCHING
// CURRENT(3769)
s32 func_80086D70_95D20(u8 arg0, s32 arg1, s16 arg2)
{
	s32 sp60;
	s32 sp5C;
	s32 sp58;
	s16 sp56;
	s16 sp50;
	f32 sp4C;
	s16 sp4A;
	s16 sp48;
	u8 specIndex;
	AlienInstance* var_s0;
	AlienSpec* spec;
	AlienInstance* alien;
	s16 var_a3;
	s16 temp_v1;

	alien = &alienInstances[arg0];
	specIndex = alien->specIndex;
	var_s0 = (AlienInstance *)D_80052B34;
	if (alien->unk1E != 0) {
		return 0;
	}

	if (!(alien->unk20 & 0x08000000) && (alien->unk20 & 0x20)) {
		if (alien->unk38 != 0x100) {
			var_s0 = &alienInstances[alien->unk38];
		}
	}

	func_80128504_1374B4(alien, arg1, &sp60, &sp5C, &sp58);
	spec = &alienSpecs[specIndex];
	sp4A = (s16)((sp60 - var_s0->unk0) >> 2);
	sp48 = (s16)((sp58 - var_s0->unk4) >> 2);
	sp4C = sinf((f32)(((f64)(f32)spec->unk3C * D_80141E70_150E20[0]) / 32768.0));
	sp4C = sp4C / cosf((f32)(((f64)(f32)spec->unk3C * D_80141E78_150E28[0]) / (32768.0 * 1.0)));
	sp50 = (s16)((s32)sqrtf((f32)((sp4A * sp4A) + (sp48 * sp48))) * 4);
	sp56 = (s16)(s32)((f64)sp60 + ((f64)(f32)coss((alien->unk6 + arg2) & 0xFFFF) / 32768.0 * (f64)sp50));
	temp_v1 = (s16)(s32)((f64)sp58 + ((f64)(f32)sins((alien->unk6 + arg2) & 0xFFFF) / 32768.0 * (f64)sp50));
	var_a3 = var_s0->unk2 + 0x14;
	if (sp50 == 0) {
		return 0;
	}
	if (sp4C * (f32)sp50 < (f32)(sp5C - var_a3)) {
		var_a3 = (s16)(s32)((f32)sp5C - sp4C * (f32)sp50);
	}
	if ((f32)(sp5C - var_a3) < -sp4C * (f32)sp50) {
		var_a3 = (s16)(s32)((f32)sp5C + sp4C * (f32)sp50);
	}
	return func_800865F4_955A4(arg0, arg1, sp56, var_a3, temp_v1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80086D70_95D20.s")
#endif

s32 func_800870D8_96088(s32 arg0, s32 arg1)
{
	s32 new_var;
	u32 var_v1;
	if (arg1 != 0)
	{
		var_v1 = ((u32) D_80052A8C) % ((u32) arg1);
	}
	else
	{
		var_v1 = 0;
	}
	if ((arg1 / 2) < ((s32) var_v1))
	{
		return (var_v1 * ((u32) arg0)) - (new_var = ((arg1 * 3) * arg0) / 4);
	}
	return ((arg1 * arg0) / 4) - (var_v1 * arg0);
}

s32 func_80087188_96138(u8 arg0, s32 arg1, s32 arg2) {
	func_80086A34_959E4(arg0, arg1, func_800870D8_96088(0x80, arg2));
}

#ifdef NON_MATCHING
// CURRENT(104)
s32 func_800871CC_9617C(u8 arg0, s32 arg1, s32 arg2)
{
  s16 dx;
  s16 dz;
  s16 angle;
  s16 cos2;
  s16 sin2;
  s16 sin1;
  s16 cos1;
  angle = func_800870D8_96088(0x80, arg2);
  dx = D_80052B34->unk0 - alienInstances[arg0].unk0;
  dz = D_80052B34->unk4 - alienInstances[arg0].unk4;
  cos1 = coss(angle);
  sin1 = sins(angle);
  sin2 = sins(angle);
  cos2 = coss(angle);
  if (func_800865F4_955A4(
	  arg0,
	  arg1,
	  ((alienInstances[arg0].unk0 + (((f32) cos1 / 32768.0) * dx)) + (dz * ((f32) sin1 / 32768.0))),
	  D_80052B34->unk2,
	  ((alienInstances[arg0].unk4 - (dx * ((f32) sin2 / 32768.0))) + (dz * ((f32) cos2 / 32768.0)))) != 0)
  {
	return 1;
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_800871CC_9617C.s")
#endif

void func_8008735C_9630C(u8 arg0) {
	alienInstances[arg0].unk20 |= 0x100;
	func_8008064C_8F5FC(arg0);
}

void func_800873A8_96358(u8 arg0)
{
  if (alienInstances[arg0].unk20 & 0x100)
  {
	if (func_80085838_947E8(arg0) != 0)
	{
		func_8008735C_9630C(arg0);
		return;
	}
  }
  alienInstances[arg0].unk12 = 0;
}

void func_8008741C_963CC(u8 arg0, s16 arg1) {
	u8 specIndex;
	specIndex = alienInstances[arg0].specIndex;
	if (func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE) != 0) {
		arg1 = 0;
	}
	if (arg1 < alienInstances[arg0].unk12) {
		alienInstances[arg0].unk12 -= alienSpecs[specIndex].unk3E;
		if (alienInstances[arg0].unk12 < arg1) {
			alienInstances[arg0].unk12 = arg1;
		}
	}
	if (alienInstances[arg0].unk12 < arg1) {
		alienInstances[arg0].unk12 += alienSpecs[specIndex].unk3E;
		if (arg1 < alienInstances[arg0].unk12) {
			alienInstances[arg0].unk12 = arg1;
		}
	}
}

#ifdef NON_MATCHING
// CURRENT(1215)
s32 func_8008751C_964CC(u8 arg0, s32 arg1, s32 arg2)
{
	AlienInstance *inst;
	s32 tempA0;
	s32 tempA3;
	s32 tempV0;
	s32 tempV1;
	s32 varA1;
	s32 varA2;
	s16 specVal;
	s32 varV0;
	s32 flags;
	u8 specIndex;

	inst = &alienInstances[arg0];
	specIndex = inst->specIndex;
	specVal = *(s16 *)((u8 *)alienSpecs + specIndex * 0x68 + 0x40);
	tempV0 = inst->unk0 - inst->unk14;
	tempV0 = (s16)tempV0;
	tempA3 = -tempV0;
	tempV1 = inst->unk4 - inst->unk18;
	tempV1 = (s16)tempV1;

	varA2 = (tempA3 < tempV0) ? tempV0 : tempA3;

	tempA0 = -tempV1;
	varA1 = (tempA0 < tempV1) ? tempV1 : tempA0;

	if (varA1 < varA2) {
		varV0 = (s16)((tempA3 < tempV0) ? tempV0 : tempA3);
	} else {
		varA1 = (tempA0 < tempV1) ? tempV1 : tempA0;
		varV0 = (s16)varA1;
	}

	flags = inst->unk20;
	if (flags & 0x100) {
		if (flags & 0x40) {
			if ((s16)arg2 < varV0) {
				specVal = -specVal;
			} else if ((s16)arg1 < varV0) {
				specVal = 0;
			}
		} else if (varV0 < (s16)arg1) {
			specVal = -specVal;
		} else if (varV0 < (s16)arg2) {
			specVal = 0;
		}
	}

	if (specVal == 0 && !(inst->unk47 & 1)) {
		inst->unk3A = inst->unk3A - 1;
	} else {
		inst->unk3A = 0xFF;
	}

	if ((inst->unk3A <= 0) && ((inst->unk47 & 1) == 0)) {
		func_800847D0_93780(arg0);
	}

	func_8008741C_963CC(arg0, specVal);

	if (specVal == 0) {
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008751C_964CC.s")
#endif

void func_80087720_966D0(u8 arg0, s32 arg1)
{
  AlienInstance *inst;
 if (arg1 < 0xFA0) { func_8008554C_944FC(arg0); inst = &alienInstances[arg0]; } else { inst = &alienInstances[arg0]; inst->unk4E = 1;
  }
  if ((inst->unk4E == 0) && (arg1 < 0x7D0))
  {
	inst->unk20 |= 0x800;
	inst += 0;
	inst->unk20 &= ~0x100;
	return;
  }
  inst->unk20 |= 0x100;
  inst->unk20 &= ~0x800;
}

s32 func_800877E8_96798(u8 arg0, s16 arg1, s16 arg2) {
	s16 specVal = alienSpecs[alienInstances[arg0].specIndex].unk40;
	s16 sp24 = func_80084E54_93E04(D_80052B34, &alienInstances[arg0]);

	func_80087720_966D0(arg0, sp24);

	if (alienInstances[arg0].unk4E == 0) {
		func_8008064C_8F5FC(arg0);
		return 0;
	}

	if (alienInstances[arg0].unk47 & 0xE) {
		func_8008735C_9630C(arg0);
	} else {
		if (alienInstances[arg0].unk20 & 0x100) {
			if (alienInstances[arg0].unk20 & 0x40) {
				if (arg2 < sp24) {
					specVal *= -1;
				} else if (arg1 < sp24) {
					specVal = 0;
				}
			} else {
				if (sp24 < arg1) {
					specVal *= -1;
				} else if (sp24 < arg2) {
					specVal = 0;
				}
			}
		}
		if (specVal == 0 && !(alienInstances[arg0].unk47 & 1)) {
			alienInstances[arg0].unk3A = alienInstances[arg0].unk3A - 1;
		} else {
			alienInstances[arg0].unk3A = 0xFF;
		}
		if (alienInstances[arg0].unk3A <= 0 && !(alienInstances[arg0].unk47 & 1)) {
			func_800847D0_93780(arg0 & 0xFF);
		}
		func_8008741C_963CC(arg0, specVal);
	}
	return 1;
}

s32 func_800879A4_96954(u8 arg0, s16 arg1, u8 arg2)
{
  u8 sp47;
  s32 sp40;
  s32 sp3C;
  s32 sp38;
  s32 temp_v1;
  s32 temp_a0;
  s32 temp_a1;
  s32 var_v0;
  sp47 = D_80052B34->unk1A;
  func_80128504_1374B4(&alienInstances[arg0], arg2, &sp40, &sp3C, &sp38);
  temp_v1 = D_80052B34->unk0 - sp40;
  temp_a0 = D_80052B34->unk2 - sp3C;
  temp_a1 = D_80052B34->unk4 - sp38;
  if ((s32) sqrtf((temp_v1 * temp_v1) + (temp_a0 * temp_a0) + (temp_a1 * temp_a1)) <
	  (vehicleSpecs[sp47].unkC + arg1))
  {
	return 1;
  }
  else
  {
	return 0;
  }
}
void func_80087AAC_96A5C(u8 arg0) {
	if (!(alienInstances[arg0].unk20 & 0x300000)) {
		alienInstances[arg0].unk12 = 0;
		alienInstances[arg0].unk2C = 0x28;
		alienInstances[arg0].unk20 |= 0x200000;
	}
}

// https://decomp.me/scratch/Ue9P8
void func_80087AFC_96AAC(u8 arg0)
{
	u8 spec_idx;
	s32 step;
	spec_idx = alienInstances[arg0].specIndex;
	step = 4;
	if (alienInstances[arg0].unk20 & 0x600)
	{
		step = 1;
	}
	if (alienInstances[arg0].unk2C > 0)
	{
		if ((alienInstances[arg0].unk2C == 8) ||
			(((alienInstances[arg0].unk20 & 0x600) == 0) && ((alienInstances[arg0].unk2C & (~3)) == 0x20)))
		{
			if ((alienSpecs[spec_idx].unk16 & 0xF) == 1)
			{
				func_800CF80C_DE7BC(
					alienInstances[arg0].unk0,
					alienInstances[arg0].unk2,
					alienInstances[arg0].unk4,
					alienSpecs[spec_idx].unk38, 0xC8, 0xC8, 0xDC, 1);
			}
			else
			{
				func_800CF80C_DE7BC(
					alienInstances[arg0].unk0,
					alienInstances[arg0].unk2,
					alienInstances[arg0].unk4,
					alienSpecs[spec_idx].unkC, 0xC8, 0xC8, 0xDC, 1);
			}
		}
		alienInstances[arg0].unk2C -= step;
	}
	else
	{
		func_80079910_888C0(arg0);
	}
}

void func_80087C50_96C00(u8 arg0) {
	alienInstances[arg0].unk3A = 0;
}

void func_80087C74_96C24(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	if (inst->unk3A != 0) {
		inst->unk3A--;
	} else {
		inst->unk2A = func_800038E0_44E0();
		inst->unk3A = func_800038E0_44E0() >> 10;
		if (func_800038E0_44E0() < 0x2000) {
			inst->unk20 |= 0x40;
		} else {
			inst->unk20 &= ~0x40;
		}
	}
	func_8008064C_8F5FC(arg0);
}

void func_80087D18_96CC8(u8 arg0)
{
  s32 dx;
  s32 dz;
  AlienInstance *inst;
  u8 specIndex;
  specIndex = alienInstances[arg0].specIndex;
  dx = alienInstances[arg0].unk0 - D_80052B34->unk0;
  dz = alienInstances[arg0].unk4 - D_80052B34->unk4;
  if (((s32) sqrtf((f32) (((dx * dx) >> 2) + ((dz * dz) >> 2)))) < 0x258)
  {
	if (func_80084FE8_93F98(arg0, 0x2000) != 0)
	{
	  func_8008741C_963CC(arg0, -alienSpecs[specIndex].unk40);
	  return;
	}
  }
  alienInstances[arg0].unk20 |= 0x40;
  func_8008064C_8F5FC(arg0);
}

s32 func_80087E30_96DE0(void) {
	AlienInstance *alien = &alienInstances[0xFE];
	s32 i = 0xFE;
	do {
		if ((alien->specIndex >= ALIEN_SPEC_HCU || (alien->specIndex == ALIEN_SPEC_HUMAN && (alien->unk24 == 1 || alien->unk24 == 0x1D)))
			&& alien->specIndex < ALIEN_SPEC_PROCESSOR && alien->specIndex != 0x18 && alien->specIndex != 0x17
			&& !(alien->unk20 & 0x100000)) {
			func_80088760_97710(alien);
		}
		alien--;
	} while (i--);
}

void func_80087F08_96EB8(void)
{
  AlienWaveInstance *waves;
  AlienInstance *alien;
  s32 i;
  waves = D_80223780;
 alien = alienInstances; for (i = 0; i < 0xFF; i++, alien++) {
	if ((alien->specIndex == ALIEN_SPEC_HCU) || (alien->specIndex == 0x20))
	{
	  func_80088760_97710(alien);
	}
	else
	  if (((alien->specIndex != ALIEN_SPEC_HUMAN) && (alien->specIndex != 0x18)) && (alien->specIndex != 0x17))
	{
	  if (alien->unk3E != 0xFF)
	  {
		waves[alien->unk3E].unk11 = 1;
	  }
	  func_80087AAC_96A5C(i);
	}
  }

}

void func_80088000_96FB0(s16 arg0)
{
  s32 i;
  for (i = 0; i != 0xFF; i++)
  {
	if (arg0 == i)
	{
		continue;
	}
	if (alienInstances[i].specIndex == ALIEN_SPEC_HUMAN)
	{
		func_80079910_888C0(i);
	}
	else if (alienInstances[i].specIndex != ALIEN_SPEC_NOTHING)
	{
		func_80088760_97710(&alienInstances[i]);
	}  
  }
}

s32 func_800880B8_97068(void)
{
	s16 i;
	u8 new_var;
	AlienInstance *inst;
	for (i = D_8014D509; i < D_8014D50A; i++)
	{
		inst = &alienInstances[new_var = D_8014D408[i]];
		if ((inst->specIndex == ALIEN_SPEC_HARVESTER) && (((s32) inst->unk24) >= (((u8) D_80048168) - 2)))
		{
			return 1;
		}
	}

  return 0;
}

// CURRENT(3783)
#ifdef NON_MATCHING
// 000881d4 Multiplies Adam's weapon damage by 1.8 in easy mode
// 800885C8 halves alien death points in easy
s32 func_80088154_97104(EntityInstance *arg0, s16 arg1, s16 arg2) {
	u8 sp3B;
	AlienSpec *sp30;
	s32 sp2C;
	f64 sp20;
	s32 temp_v0_3;
	s32 temp_v1;
	u8 temp_t0;
	u8 temp_v0;
	u8 temp_v0_2;
	u8 temp_v0_5;
	u8 var_a3;

	temp_v0 = arg0->unk1B;
	var_a3 = arg0->specIndex;
	temp_t0 = var_a3;
	if ((D_80047F94 != temp_v0) && (temp_v0 != 0xFF)) {
		return 0;
	}
	if ((D_8004DCBC != 0) || (currentLevel == 5)) {
		arg1 = (s16)(arg1 >> 1);
	}
	if (D_80052ACD & 0x40) {
		arg1 = (s16)((f32)arg1 * D_80031418);
	}
	if ((arg0->unk20 & ALIEN_FLAG_INVINCIBLE) || (arg0 == (AlienInstance*)D_80140AC4_14FA74)) {
		arg1 = 0;
	}
	if (D_8013BD04_14ACB4 != 0) {
		arg1 *= 10;
	}
	if (arg1 == 0) {
		return 0;
	}
	sp2C = temp_t0;
	if (temp_t0 == 1) {
		temp_v0_2 = arg0->unk24;
		if (temp_v0_2 == 0x13) {
			return 0;
		}
		if ((temp_v0_2 != 1) && (temp_v0_2 != 0x1D)) {
			sp3B = temp_t0;
			func_800E05B4_EF564(arg0->unk0, (s16)((func_800038E0_44E0() % 30) + arg0->unk2 + 0x1E), arg0->unk4, arg1);
			temp_t0 = sp3B;
			var_a3 = arg0->specIndex;
		}
	}

	arg0->unk20 |= 0x80000000;
	if (var_a3 == 0x12) {
		D_80157E74 = (arg2 - arg0->unk6) + 0x2000;
		var_a3 = arg0->specIndex;
	}
	temp_v1 = alienSpecs[var_a3].unk3A;
	sp30 = &alienSpecs[temp_t0];
	if (!(sp30->unk54 & 0x4000) || (arg0->unk20 & ALIEN_FLAG_FALL)) {
		temp_v0_3 = coss((arg2 - arg0->unk6) & 0xFFFF);
		sp20 = (f64)((s32)(arg1 << 0xF) / temp_v1);
		arg0->unk42 = (s16)((f64)arg0->unk42 + (sp20 * ((f64)(f32)temp_v0_3 / 32768.0)));
		arg0->unk44 = (s16)((f64)arg0->unk44 + (sp20 * ((f64)(f32)sins((arg2 - arg0->unk6) & 0xFFFF) / 32768.0)));
		if (arg0->unk42 >= 0x1001) {
			arg0->unk42 = 0x1000;
		}
		if (arg0->unk42 < -0x1000) {
			arg0->unk42 = -0x1000;
		}
		if (arg0->unk44 >= 0x1001) {
			arg0->unk44 = 0x1000;
		}
		if (arg0->unk44 < -0x1000) {
			arg0->unk44 = -0x1000;
		}
	}

	if (arg0->hitPoints > 0) {
		arg0->hitPoints = (s16)(arg0->hitPoints - arg1);
		if (arg0->hitPoints > 0) {
			if ((sp2C >= 2) && (arg0->unk20 & 0x600) && (arg0->unk37 == 0)) {
				arg0->unk37 = 8;
			}
			return 0;
		}
		if (((sp2C == 0x12) && (currentLevel != 5)) || ((currentLevel == 5) && (sp2C == 0x26))) {
			if (arg0->hitPoints < 0xA) {
				arg0->hitPoints = 0xA;
			}
			return 0;
		}
		if (!(arg0->unk20 & 0x300000)) {
			if (sp30->unk14 != 0) {
				if (D_80052ACD & 0x80) {
					D_80052B2C->unk30 = D_80052B2C->unk30 + (sp30->unk14 >> 1);
					func_800CEE00_DDDB0(arg0->unk0, arg0->unk2, arg0->unk4, (s16)(sp30->unk14 >> 1));
				} else {
					D_80052B2C->unk30 = D_80052B2C->unk30 + sp30->unk14;
					func_800CEE00_DDDB0(arg0->unk0, arg0->unk2, arg0->unk4, sp30->unk14);
				}
			}
			if (sp2C == 1) {
				arg0->unk26 = 0;
			}
			if ((sp2C == 3) || (sp2C == 6) || (sp2C == 4)) {
				temp_v0_5 = arg0->unk25;
				if ((temp_v0_5 != 0xFF) && (alienInstances[temp_v0_5].specIndex == 0x19)) {
					func_800AFF9C_BEF4C(temp_v0_5, sp2C, 0x2BC - (currentLevel * 0x46));
				}
			}
			if ((sp2C == 0xD) || (sp2C == 0xE) || (sp2C == 4) || (sp2C == 0x16)) {
				arg0->unkE = arg2;
			}
			if (((currentLevel == 1) && (sp2C == 9)) || ((currentLevel == 2) && (sp2C == 0x26))) {
				arg0->unk20 |= 0x4000;
			}
			if (((sp2C == 0xE) || (sp2C == 0xD) || (sp2C == 4)) && ((s32)sp30->unk3A < arg1)) {
				arg0->unk47 |= 0x20;
			}
			func_80088760_97710(arg0);
		}
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80088154_97104.s")
#endif

// CURRENT(6335)
#ifdef NON_MATCHING
// maybe kill alien?
void func_80088760_97710(AlienInstance* alien) {
	u8 specIndex;

	if (alien->unk20 & 0x300000) {
		return;
	}

	specIndex = alien->specIndex;
	alien->unk2C = 0x14;

	if ((specIndex >= 3) && (specIndex != 0x20)) {
		u8 waveIndex = alien->unk3E;

		if (waveIndex != 0xFF) {
			D_80223780[waveIndex].unk10--;
			if ((D_80223780[waveIndex].unk10 == 0) && (D_80052ACA != 2)) {
				func_800AF52C_BE4DC(waveIndex);
			}
		}
	}

	if (specIndex == 2) {
		s32 alienIndex;
		AlienInstance* target;
		s32 flags;

		flags = alien->unk20;
		if (flags & 0x2000) {
			if (flags & 0x4000) {
				target = &alienInstances[alien->unk25];
				if (!(target->unk20 & 0x300000) && (target->specIndex == 0x19)) {
					alien->hitPoints = 0xA;
					return;
				}
			}

			alienIndex = alien - alienInstances;
			if (D_80048184 == alienIndex) {
				D_80052B34->unk20 &= 0xEFFF;
				alien->unk20 &= ~0x400;
				if (func_80110FB4_11FF64(D_80052B34, 1) != 0) {
					D_80052B34->unk20 |= 0x1000;
					alien->hitPoints = 0xA;
					alien->unk20 |= 0x400;
					return;
				}

				alien->unk20 |= 0x400;
				D_80048184 = -1;
				D_80048180 = 0;
				func_80102DDC_111D8C(D_80052B34, func_800038E0_44E0(), 0x3000, 20.0f);
			} else {
				target = &alienInstances[alien->unk24];
				if (target->unk24 == 0x1D) {
					target->unk24 = 1;
					alienInstances[alien->unk24].unk48 = 0x30;
				} else if (target->unk24 == 4) {
					target->unk24 = 0x14;
					alienInstances[alien->unk24].unk48 = 0xA0;
				} else {
					target->unk24 = 0;
					alienInstances[alien->unk24].unk48 = 0x40;
				}

				target = &alienInstances[alien->unk24];
				flags = target->unk20;
				if (!(flags & 0x100000)) {
					target->unk20 = flags | 0x40004000;
					alienInstances[alien->unk24].unkE = (s16)func_800038E0_44E0();
					alienInstances[alien->unk24].unk12 = (s16)(func_800038E0_44E0() >> 6);
					alienInstances[alien->unk24].unk10 = (s16)((func_800038E0_44E0() >> 8) + 0x200);
					alienInstances[alien->unk24].unk2C = 0x64;
				}
			}
		}
	}

	if ((specIndex == 1) && ((alien->unk24 == 1) || (alien->unk24 == 0x1D)) && (func_8000726C_7E6C(0xB) == 0) && (func_8000726C_7E6C(0xC) == 0)) {
		u16 r1;
		u16 r2;
		u16 r3;

		alien->hitPoints = 0xA;
		alien->unk20 |= 0x4000;
		alien->unk2C = (func_800038E0_44E0() % 0x28) + 0x3C;

		if ((D_80031420 & 3) == 3) {
			r1 = func_800038E0_44E0();
			r2 = func_800038E0_44E0();
			r3 = func_800038E0_44E0();
			func_800CA5EC_D959C(
				alien->unk0,
				alien->unk2,
				alien->unk4,
				(r1 % 0x32) - 0x19,
				0x50,
				(r2 % 0x32) - 0x19,
				0x19,
				5,
				(r3 % 8) + 0xC,
				(func_800038E0_44E0() % 0x23) + 0x69,
				0,
				0xFF,
				0,
				0xFF);
		}
		return;
	}

	if ((specIndex == 0xA) && (alien->unk20 & 0x2000)) {
		D_8004817C--;
		if (D_8004817C == 0) {
			func_8007643C_853EC(alien->unk3F);
		}
	}

	if ((specIndex == 0x1C) && (currentLevel == 4)) {
		alien->unk2C = 0x50;
	}

	if (!(alienSpecs[specIndex].unk54 & 0x8000)) {
		alien->unk12 = 0;
	}

	if (alien->unk47 & 0x20) {
		func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, alienSpecs[specIndex].unkC, 0);
		alien->unk2C = 1;
	} else {
		s32 alienIndex;
		void (*deathCallback)(u8);

		alienIndex = alien - alienInstances;
		deathCallback = alienSpecs[specIndex].unk5C;
		if (deathCallback != NULL) {
			deathCallback(alienIndex & 0xFF);
		} else {
			func_80089EB4_98E64(alienIndex & 0xFF, 0x28, 0, 2, 0);
		}
	}

	if ((alien->unk20 & 0x80000) && (alien->unk20 & 0x600)) {
		func_800F2ED8_101E88(alien->unk20 & 7, 0, alien->unkE, alien->unk6, 0);
	}

	alien->unk20 |= 0x100000;
	if ((alien->unk20 & 0x01000000) && (alienInstances[alien->unk25].specIndex == 0x1A)) {
		func_800A4150_B3100(alien->unk25);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80088760_97710.s")
#endif

void func_80088E10_97DC0(s16 arg0) {
	D_8014DD50[arg0].unk2 += 0x8000;
}

void func_80088E40_97DF0(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s8 arg5, s8 arg6, s8 arg7)
{
	s32 xx;
	s16 sp3A;
	s32 sp34;
	s32 sp30;
	s32 sp2C;

	func_80128428_1373D8(&alienInstances[arg0], arg2, arg3, arg4, &sp34, &sp30, &sp2C);
	func_800DF848_EE7F8(sp34, sp30, sp2C, 0x50, 0);
	xx = func_8008916C_9811C(arg0, arg1);
	sp3A = func_800C7924_D68D4(sp34, sp30, sp2C, 0x40, -8, alienSpecs[alienInstances[arg0].specIndex].unkC, xx, 1);
	func_800C80F0_D70A0((0x4000 - alienInstances[arg0].unk6), 0, 0, sp3A);
	func_800C8184_D7134(arg5, arg6, arg7, sp3A);
	func_80088E10_97DC0(arg1);
}

s32 func_80088F78_97F28(u8 arg0) {
	s32 unk0 = *(s32 *)&alienSpecs[alienInstances[arg0].specIndex];
	if (((u32)unk0 >> 0x18) == 1) {
		unk0 = func_80011FAC_12BAC((void *)unk0);
	} else {
		unk0 = func_80011F90_12B90((void *)unk0);
	}
	return *(s32 *)(unk0 + 4);
}

s32 func_80088FFC_97FAC(s8 **arg0, s16 arg1, s16 arg2)
{
	s32 a3;
	s32 depth;

	a3 = 0;
	depth = 0;
	while (arg2 != -1) {
		do {
			if (**arg0 == 1) {
				depth += 1;
			} else if (**arg0 == -0x43) {
				depth -= 1;
			}
			*arg0 += 8;
		} while (depth != 1 || **arg0 != 6);
		if (arg2 == arg1) {
			a3 = *(s32 *)(*arg0 + 4);
		} else if (D_8014DD50[arg2].unkC != -1) {
			a3 = func_80088FFC_97FAC(arg0, arg1, D_8014DD50[arg2].unkC);
		}
		if (a3 != 0) {
			return a3;
		}
		arg2 = D_8014DD50[arg2].unkD;
	}
	do {
		if (**arg0 == 1) {
			depth += 1;
		} else if (**arg0 == -0x43) {
			depth -= 1;
		}
		*arg0 += 8;
	} while (depth != 0);
	return 0;
}

s32 func_8008916C_9811C(u8 arg0, s16 arg1) {
	s16 padX;
	s16 sp24;
	s32 sp20;
	padX = alienInstances[arg0].unkC;
	sp24 = D_8014DD50[padX].unkC;
	sp20 = *(s32 *)&alienSpecs[alienInstances[arg0].specIndex];
	sp20 = func_80012000_12C00(sp20);
	return func_80088FFC_97FAC(&sp20, arg1, sp24);
}

// https://decomp.me/scratch/6va5T
// CURRENT(272)
#ifdef NON_MATCHING
void func_80089200_981B0(u8 arg0, u32 arg1, s32 arg2)
{
  u16 sp3C;
  u16 sp3A;
  u16 sp38;s32 *new_var;
  // Agent - it seems likely this assignment to a ptr is wrong
  new_var = &arg2;
  if (((D_80052A8C + arg0) % arg1) == (func_800038E0_44E0() % ((s32) arg1)))
  {
	sp38 = func_800038E0_44E0();
	sp3A = func_800038E0_44E0();
	sp3C = func_800038E0_44E0();
	func_800DEA08_ED9B8((s16) (((sp38 % (*new_var)) + alienInstances[arg0].unk0) - ((*new_var) / 2)), (s16) ((sp3A >> 10) + alienInstances[arg0].unk2), (s16) (((sp3C % (*new_var)) + alienInstances[arg0].unk4) - ((*new_var) / 2)), (s16) ((func_800038E0_44E0() + 0x12C) >> 11), 8, 8, 0x32, 0xC8, 0x64, 0x64, 0x64);
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80089200_981B0.s")
#endif

void func_800893C8_98378(s32 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s32 arg7, s32 arg8) {
	s16 temp;
	Unk8014DD50 sp24;

	sp24 = D_8013C2D0_14B280;

	if (D_8014DD50[arg1].unkE == 0) {
		temp = (s16)(func_800038E0_44E0() % (arg3 - arg2) + arg2);
		if (arg4 < D_8014E4D0[arg1].unk6) {
			temp = -temp;
		}
		sp24.unk6 = temp + arg4;
		sp24.unkA = func_800038E0_44E0() % arg6 + arg5;
		sp24.unkE = arg7;
		if (arg7 != arg8) {
			sp24.unkE += func_800038E0_44E0() % (arg8 - arg7);
		}
		func_80081C84_90C34((u8)arg1, &sp24);
	}
	func_80081E5C_90E0C(arg1);
}

// CURRENT(9151)
#ifdef NON_MATCHING
void func_80089574_98524(u8 arg0) {
	u16 sp48;
	u16 sp4A;
	u16 sp4C;
	u8 temp_v0;
	s32 temp_v0_2;
	s8 temp_v1;
	AlienInstance *s0;

	s0 = &alienInstances[arg0];
	temp_v0_2 = s0->unk20;
	if (!(temp_v0_2 & 0x100000)) {
		if (temp_v0_2 & 0x600) {
			temp_v0 = s0->unk24;
			if ((temp_v0 == 1) || (temp_v0 == 0x1D)) {
				if (D_80031420 & 3) {
					sp48 = func_800038E0_44E0();
					sp4A = func_800038E0_44E0();
					sp4C = func_800038E0_44E0();
					func_800CA5EC_D959C(s0->unk0, s0->unk2, s0->unk4,
						(s8)((sp48 % 50) - 0x19),
						0x50,
						(s8)((sp4A % 50) - 0x19),
						0x19,
						5,
						(sp4C % 8) + 0xC,
						(temp_v0 % 0x23) + 0x69,
						0,
						0xFF,
						0,
						0xFF);
				}
				func_80137468_146418(arg0, 0x194);
				temp_v0_2 = s0->unk20;
			} else {
				if ((D_80031420 & 3) == 3) {
					func_800E05B4_EF564(s0->unk0, s0->unk2, s0->unk4, 0xC8);
				}
				if ((temp_v0 == 0x14) || (temp_v0 == 0xB) || (temp_v0 == 0xC) || (temp_v0 == 4)) {
					func_80137468_146418(arg0, 0x274);
				} else {
					func_80137468_146418(arg0, 0x263);
				}
				temp_v0_2 = s0->unk20;
			}
		}
		if (temp_v0_2 & 0x80) {
			D_8015EA24--;
		}
		temp_v1 = s0->unk3D;
		if (temp_v1 != -1) {
			D_80146688_155638[currentLevel - 1][temp_v1].unk0C++;
		} else {
			D_8015EA1C++;
		}
		if (D_80052ACA != 2) {
			temp_v0 = s0->unk24;
			if ((temp_v0 != 1) && (temp_v0 != 0x1D)) {
				if ((temp_v0 == 0x14) || (temp_v0 == 0xB) || (temp_v0 == 0xC) || (temp_v0 == 4)) {
					D_8004816C--;
				}
				func_800AE190_BD140(1);
			}
		}
		temp_v0 = s0->unk24;
		if ((temp_v0 == 0xF) || (temp_v0 == 0x10)) {
			D_8014D180--;
			osSyncPrintf(&D_80141DBC_150D6C, D_8014D180);
		}
		s0->unk2C = 0xFA0;
	} else if ((s0->unk2C == 1) && (temp_v0_2 & 0x600)) {
		temp_v0 = s0->unk24;
		if ((temp_v0 == 1) || (temp_v0 == 0x1D)) {
			if (D_80031420 & 3) {
				sp48 = func_800038E0_44E0();
				sp4A = func_800038E0_44E0();
				sp4C = func_800038E0_44E0();
				func_800CA5EC_D959C(s0->unk0, s0->unk2, s0->unk4,
					(s8)((sp48 % 50) - 0x19),
					0x50,
					(s8)((sp4A % 50) - 0x19),
					0x19,
					5,
					(sp4C % 8) + 0xC,
					(temp_v0 % 0x23) + 0x69,
					0,
					0xFF,
					0,
					0xFF);
			}
		} else if ((D_80031420 & 3) == 3) {
			func_800E05B4_EF564(s0->unk0, s0->unk2, s0->unk4, 0xC8);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_80089574_98524.s")
#endif

void func_80089A2C_989DC(u8 arg0) {
	s32 pad0;
	s32 pad1;
	u8 temp_a0;
	u16 sp4C;
	u16 sp4A;
	u16 sp48;
	s32 temp_v0;
	AlienInstance *s0;

	s0 = &alienInstances[arg0];
	temp_v0 = s0->unk20;
	if (!(temp_v0 & 0x100000)) {
		if ((temp_v0 & 0x600) && (D_80031420 & 3)) {
			s32 temp_t1;

			sp48 = func_800038E0_44E0();
			sp4A = func_800038E0_44E0();
			sp4C = func_800038E0_44E0();
			temp_v0 = func_800038E0_44E0();
			temp_t1 = sp4C;

			func_800CA5EC_D959C(s0->unk0, s0->unk2, s0->unk4,
				(s8)((sp48 % 50) - 0x19),
				0x50,
				((sp4A % 50) - 0x19),
				0x19,
				5,
				((temp_t1 % 8) + 0xC),
				((temp_v0 % 0x23) + 0x69),
				0,
				0xFF,
				0,
				0xFF);
		}

		temp_a0 = s0->unk25;
		s0->unk2C = 0;
		if (temp_a0 != 0xFF) {
			AlienInstance *temp_v0_2;
			AlienInstance *temp_v1;

			temp_v0_2 = &alienInstances[temp_a0];
			temp_v0_2->unk26 += 1;
			if (!(temp_v0_2->unk20 & 0x308000) && (D_8004DCBC == 0)) {
				temp_v0_2->unk2C = 0x96;
			}

			temp_v1 = &alienInstances[temp_v0_2->unk25];
			temp_v1->hitPoints -= 1;
			if (temp_v1->hitPoints == 0) {
				temp_v1->unk20 |= 0x4000;
				func_80087AAC_96A5C(temp_a0);
			}
		}
	}
}

void func_80089C40_98BF0(u8 arg0) {
	if (!(alienInstances[arg0].unk20 & 0x100000)) {
		if (alienInstances[arg0].unk47 & 8) {
			func_80124118_1330C8(D_80052B34, D_80146212_1551C2[alienInstances[arg0].unk26].unk0);
		}
		func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0x28, 0);
		alienInstances[arg0].unk2C = 1;
	} else {
		func_800E0AE0_EFA90(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0);
	}
}

void func_80089D04_98CB4(u8 arg0)
{
  AlienInstance *s0 = &alienInstances[arg0];
  int new_var;
  func_800EF650_FE600(&alienInstances[arg0]);
  if (!(alienInstances[arg0].unk20 & 0x100000))
  {
	if (currentLevel != LEVEL_COMET)
	{
	  alienInstances[arg0].unk2C = 1;
	  return;
	}
	alienInstances[arg0].unk2C = 0x7D00;
	s0->unk24 = 7;
	if ((alienInstances[arg0].unk26 == 0) && (D_80031420 & 3))
	{
	  func_800CA5EC_D959C(alienInstances[arg0].unk0, alienInstances[arg0].unk2 + 0x28, alienInstances[arg0].unk4, 0, 0x7F, 0, 0x32, 3, 0x14, 0xFF, 0, 0xFF, 0, 0xFF);
	}
	func_80137468_146418(arg0, 0x26C);
	func_800B034C_BF2FC();
	return;
  }
  if (alienInstances[arg0].unk2C == 0x7CCE)
  {
	func_800BDDB4_CCD64();
  }
  if ((!(D_80052A8C & 7)) && (D_80031420 & 3))
  {
	new_var = 8;
	func_800CA5EC_D959C(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0, 0x7F, 0, 5, 6, new_var, 0xFF, 0, 0xFF, 0, 0xFF);
  }
}

void func_80089EB4_98E64(u8 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4)
{
	u8 new_var;
	new_var = alienInstances[arg0].specIndex;
	if (!(alienInstances[arg0].unk20 & 0x100000))
	{
		if (alienInstances[arg0].unk20 & 0x600)
		{
			func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16) alienSpecs[new_var].unkC, arg2);
		}
		alienInstances[arg0].unk2C = arg1;
		return;
	}
	if ((alienInstances[arg0].unk2C == 1) && (alienInstances[arg0].unk20 & 0x600))
	{
		func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16) alienSpecs[new_var].unkC, arg3);
	}
}

// https://decomp.me/scratch/RlzKa
void func_80089FAC_98F5C(u8 arg0)
{
	u8 specIndex;
	specIndex = alienInstances[arg0].specIndex;
	if (!(alienInstances[arg0].unk20 & 0x100000))
	{
		func_80137468_146418(arg0, 0xD);
		if (alienInstances[arg0].unk20 & 0x600)
		{
			func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16)(alienSpecs[specIndex].unkC * 2), 0);
			if (!(alienInstances[arg0].unk20 & 0x1000))
			{
				alienInstances[arg0].unk38 = func_800C3BD8_D2B88(alienInstances[arg0].unk0, alienInstances[arg0].unk2 + 0x1E, alienInstances[arg0].unk4, (u16)(((f64)alienSpecs[specIndex].unkC) * 1.5), 0x3C, 0xF0, 0x78, 0);
			}
			alienInstances[arg0].unk2C = 0x3C;
			alienInstances[arg0].unk2A = alienInstances[arg0].unkE + 0x8000;
			alienInstances[arg0].unkE = alienInstances[arg0].unk6;
			alienInstances[arg0].unk12 = -0x100;
			alienInstances[arg0].unk20 &= ~0x40;
		}
	}
	else
	{
		if (alienInstances[arg0].unk2C >= 0x1F)
		{
			func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);
		}
		else if (alienInstances[arg0].unk2C == 0x1E)
		{
			alienInstances[arg0].unk12 = -0x20;
		}
		else
		{
			alienInstances[arg0].unkE -= 0x5FA;
			alienInstances[arg0].unk6 = alienInstances[arg0].unkE;
			func_80087C74_96C24(arg0);
			if (alienInstances[arg0].unk2C == 1)
			{
				alienInstances[arg0].unk38 = -1;
				if (alienInstances[arg0].unk20 & 0x600)
				{
					func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16)alienSpecs[specIndex].unkC, 2);
				}
			}
		}
	}
	if ((alienInstances[arg0].unk2C == 1) && (D_80031420 & 3))
	{
		func_800CA5EC_D959C(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0, 1, 0, 0x50, 4, 0x14, 0x80, D_8013E3C0[(currentLevel * 3) - 3], D_8013E3C0[(currentLevel * 3) - 2], D_8013E3C0[(currentLevel * 3) - 1], 0xFF);
	}
	if (alienInstances[arg0].unk38 != (-3))
	{
		func_800C3D88_D2D38(alienInstances[arg0].unk0, alienInstances[arg0].unk2 + 0x1E, alienInstances[arg0].unk4, alienInstances[arg0].unk38);
	}
	func_80137468_146418(arg0, 0x1F);
	func_80080510_8F4C0(arg0);
}

void func_8008A32C_992DC(u8 arg0) {
	AlienInstance *alien;
	if (alienInstances[arg0].unk20 & 0x600) {
		func_80137468_146418(arg0, 0x10);
		alienInstances[arg0].unk2C = 0x50;
		alien = &alienInstances[alienInstances[arg0].unk25];
		if (alien->unk1B != 0xFF) {
			func_80079910_888C0(alien->unk1B);
		}
		if (*(u8*)&alien->unk1E != 0xFF) {
			func_80079910_888C0(*(u8*)&alien->unk1E);
		}
		alien->unk20 |= 0x4000;
	}
}

// CURRENT(10613)
#ifdef NON_MATCHING
void func_8008A3EC_9939C(u8 arg0) {
	AlienInstance *alien;
	s32 sp84;
	s32 sp80;
	s32 sp7C;
	s16 effectId;
	s16 specEntry;
	s16 baseRadius;
	s16 pitch;
	s16 i;
	s16 radius;
	f32 tempF;
	f64 tempD;

	alien = &alienInstances[arg0];
	specEntry = D_8014DD50[alien->unkC].unkC;

	if (!(alien->unk20 & 0x100000)) {
		func_8008A32C_992DC(arg0);
		if (alien->unk20 & 0x600) {
			u16 randA;

			randA = func_800038E0_44E0();
			func_800F32EC_10229C(alien->unk20 & 7, ((1 << (func_800038E0_44E0() % 3)) | (1 << ((randA % 3) + 3))) & 0xFF);
		}

		pitch = (alien->unk6 + 0x4000) & 0xFFFF;
		tempF = (f32)((f64)(f32)sins(pitch) / 32768.0 * 5.0);
		tempD = (f64)(f32)coss(pitch) / 32768.0;
		func_80088E40_97DF0(
			arg0,
			specEntry,
			D_8014DD50[specEntry].unk0,
			D_8014DD50[specEntry].unk2,
			D_8014DD50[specEntry].unk4,
			(s16)tempF,
			5,
			(s16)(tempD * -5.0));
		func_80128428_1373D8(alien, D_8014DD50[specEntry].unk0, D_8014DD50[specEntry].unk2 - 0x8000, D_8014DD50[specEntry].unk4, &sp84, &sp80, &sp7C);
		func_800E093C_EF8EC((s16)sp84, (s16)sp80, (s16)sp7C, 0);
		return;
	}

	func_80137468_146418(arg0, 0x12);
	if ((alien->unk2C % 6) == 0) {
		if (D_80031420 & 3) {
			func_80128428_1373D8(alien, D_8014DD50[specEntry].unk0, D_8014DD50[specEntry].unk2 - 0x8000, D_8014DD50[specEntry].unk4, &sp84, &sp80, &sp7C);
			tempF = (f32)((f64)(f32)sins((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0);
			tempD = (f64)(f32)coss((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0;
			func_800CA5EC_D959C(
				(s16)sp84,
				(s16)sp80,
				(s16)sp7C,
				(s8)(s32)(tempF * 127.0f),
				0,
				(s8)(s32)(tempD * -127.0),
				0x28,
				0xA,
				0x14,
				0x32,
				D_8013E3C0[currentLevel * 3 - 3],
				D_8013E3C0[currentLevel * 3 - 2],
				D_8013E3C0[currentLevel * 3 - 1],
				0xFF);
		}

		{
			u16 randA;
			u16 randB;
			u16 randC;

		randA = func_800038E0_44E0();
		randB = func_800038E0_44E0();
		randC = func_800038E0_44E0();
		func_800DEA08_ED9B8(
			(s16)(((randA >> 8) + alien->unk0) - 0x80),
			(s16)((randB >> 10) + alien->unk2),
			(s16)(((randC >> 8) + alien->unk4) - 0x80),
			(s16)((func_800038E0_44E0() + 0xFA) >> 9),
			8,
			6,
			0x28,
			0xC8,
			D_8013E3C0[currentLevel * 3 - 3],
			D_8013E3C0[currentLevel * 3 - 2],
			D_8013E3C0[currentLevel * 3 - 1]);
		}
	}

	if (alien->unkA < 0xFA0) {
		alien->unkA += 0x64;
		if (alien->unk2C >= 0x1F) {
			alien->unk2--;
		}
	}

	if (alien->unk2C == 0x10) {
		if (alien->unk20 & 0x600) {
			baseRadius = alienSpecs[alien->specIndex].unkC;
			radius = (baseRadius < 0) ? ((baseRadius + 1) >> 1) : (baseRadius >> 1);
			effectId = func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, (u16)radius, 0);
			for (i = 0; i < alien->unk24; i++) {
				func_800C7924_D68D4(
					alien->unk0,
					alien->unk2,
					alien->unk4,
					0x10,
					effectId,
					(u32)((f64)alienSpecs[alien->specIndex].unkC * 1.5),
					&D_502D390,
					1);
			}
		}
	} else if (alien->unk2C == 1) {
		if (alien->unk20 & 0x600) {
			func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, (u16)alienSpecs[alien->specIndex].unkC, 6);
			if (alien->unk20 & 0x80000) {
				func_800F3038_101FE8(alien->unk20 & 7);
				alien->unk20 &= ~0x80000;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008A3EC_9939C.s")
#endif

s32 func_8008AAFC_99AAC(u8 arg0, s32 arg1, s32 arg2) {
	AlienInstance *alien = &alienInstances[arg0];

	if (alien->specIndex == 0xA) {
		arg2 = 0;
	}
	if ((!(alien->unk20 & 0x40000000) || (alien->unk47 & 1) || (alien->unk2 < D_80222A70)) && alien->unk2C >= 2) {
		if (alien->unk20 & 0x600) {
			if (alien->unk2 < D_80222A70) {
				func_800DF038_EDFE8(alien->unk0, alien->unk2, alien->unk4, (u16)(arg1 * 3), arg2, (s32) &D_8013C16C_14B11C);
				func_800DEF2C_EDEDC(alien->unk0, alien->unk2, alien->unk4, 0xFF, 2);
			} else if (alien->specIndex == 0xA) {
				func_800DFA34_EE9E4(alien->unk0, alien->unk2, alien->unk4, (u16) arg1, arg2);
			} else {
				func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, (u16) arg1, arg2);
			}
			alien->unk2C = 1;
		}
		return 1;
	}
	return 0;
}

// CURRENT(5620)
#ifdef NON_MATCHING
void func_8008AC5C_99C0C(u8 arg0)
{
	s32 sp84;
	s32 sp80;
	s32 sp7C;
	s32 sp68;
	AlienInstance *sp60;
	s16 temp_v0_2;
	s32 var_s5;
	s32 var_s6;
	s32 temp_s1;
	s32 var_s2;
	s8 temp_a0;
	s8 var_s3;
	u8 idx;
	Unk8014DD50 *temp_s0;

	idx = arg0;
	sp60 = &alienInstances[idx];
	if (sp60->unk20 & 0x600)
	{
		func_80137468_146418(idx, 0xF);
		sp68 = 0xF;
		var_s3 = D_8014DD50[sp60->unkC].unkC;
		var_s5 = (s16) ((s32) ((((f64) ((f32) coss(sp60->unk6))) / 32768.0) * 6.0));
		var_s2 = 0;
		var_s6 = (s16) ((s32) ((((f64) ((f32) sins(sp60->unk6))) / 32768.0) * 6.0));

	loop_2:
		temp_s1 = func_8008916C_9811C(idx, (s16) var_s3);
		temp_s0 = &D_8014DD50[var_s3];
		func_80128428_1373D8(sp60, temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, &sp84, &sp80, &sp7C);
		temp_v0_2 = func_800C7924_D68D4((s16) sp84, (s16) sp80, (s16) sp7C, 0x40, -8, 2, temp_s1, 1);
		func_800C80F0_D70A0((0x4000 - (s16) sp60->unk6) & 0xFFFF, 0, 0, temp_v0_2);
		temp_a0 = sp68 * -1;
		sp68 *= -1;
		func_800C820C_D71BC(temp_a0, 0, 0, temp_v0_2);
		func_800C8184_D7134((s8) (var_s6 * -1), 1, (s8) var_s5, temp_v0_2);
		func_80088E10_97DC0((s16) var_s3);
		var_s3 = temp_s0->unkD;
		if (var_s3 != -1)
		{
			if (var_s2 == 1)
			{
				var_s5 *= -1;
				var_s6 *= -1;
			}
			var_s2 += 1;
			if (var_s2 != 2)
			{
				goto loop_2;
			}
		}
		sp60->unk2C = 0x5A;
		sp60->unk12 = 0;
		sp60->unk10 = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008AC5C_99C0C.s")
#endif

void func_8008AF58_99F08(u8 arg0)
{
	s32 inst;
	if (!(alienInstances[arg0].unk20 & 0x100000))
	{
		func_8008AC5C_99C0C(arg0);
		return;
	}
	if (alienInstances[arg0].unk2C == 0x50 ||
		(!(alienInstances[arg0].unk20 & 0x40000000) && (alienInstances[arg0].unk47 & 1)))
	{
		alienInstances[arg0].unk20 |= 0x40000000;
	}
	if ((alienInstances[arg0].unk20 & 0x40000000) || (alienInstances[arg0].unk2C < 0x50))
	{
		func_8008AAFC_99AAC(arg0, alienSpecs[alienInstances[arg0].specIndex].unkC, 2);
	}
}

void func_8008B02C_99FDC(u8 arg0)
{
  if (alienInstances[arg0].unk20 & 0x600)
  {
	if (!(alienInstances[arg0].unk20 & 0x100000))
	{
	  if (alienInstances[arg0].unk20 & 0x600)
	  {
		func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16) alienSpecs[alienInstances[arg0].specIndex].unkC, 0);
	  }
	  alienInstances[arg0].unk2C = 0x7FFF;
	  alienInstances[arg0].unk20 |= 0x40000000;
	}
	func_8008AAFC_99AAC(arg0, alienSpecs[alienInstances[arg0].specIndex].unkC, 3);
  }
}

void func_8008B108_9A0B8(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];
	s32 unk25 = inst->unk25;
	if (!(inst->unk20 & 0x100000)) {
		if (unk25 != 0xFF) {
			if (alienInstances[unk25].specIndex == ALIEN_SPEC_PROCESSOR) {
				alienInstances[unk25].unk24--;
			}
		}
	}
	func_8008B02C_99FDC(arg0);
}

// CURRENT(2897)
#ifdef NON_MATCHING
void func_8008B190_9A140(u8 arg0) {
	AlienInstance *inst;
	s16 cosValue;
	s16 xPos;
	s16 zPos;
	s32 forwardAngle;
	u16 randomA;
	u16 randomB;
	u16 randomC;
	s16 specIndex;

	inst = &alienInstances[arg0];
	specIndex = inst->specIndex;

	if (inst->unk20 & 0x600) {
		func_80089EB4_98E64(arg0, 0x3C, 0, 0, 3);

		if (!(inst->unk20 & 0x100000)) {
			func_80137468_146418(arg0, 0xE);
			inst->unk20 |= 0x40000000;
			inst->unk10 = 0x300;
			inst->unk20 &= ~0x80000;

			xPos = inst->unk0;
			zPos = inst->unk4;

			cosValue = coss((u16) inst->unk6);
			forwardAngle = func_800B84D0_C7480(
				(s16) ((((f64) (f32) cosValue / 32768.0) * 25.0) + xPos),
				(s16) ((((f64) (f32) sins((u16) inst->unk6) / 32768.0) * 25.0) + zPos)) >> 8;

			cosValue = coss((u16) inst->unk6);
			inst->unk38 = func_80003824_4424(
				50.0f,
				(f32) (forwardAngle - (func_800B84D0_C7480(
					(s16) (xPos - (((f64) (f32) cosValue / 32768.0) * 25.0)),
					(s16) (zPos - (((f64) (f32) sins((u16) inst->unk6) / 32768.0) * 25.0))) >> 8)));

			inst->unk12 = 0x280;
			func_800F34AC_10245C(inst->unk20 & 7);
			inst->unk3C = func_800C2274_D1224(inst->unk0, inst->unk2 + 0x64, inst->unk4, 2);
			func_800DF848_EE7F8(inst->unk0, inst->unk2, inst->unk4, (u16) alienSpecs[specIndex].unkC, 0);
		} else if (inst->unk20 & 0x40000000) {
			func_800C1ECC_D0E7C(inst->unk0, inst->unk2, inst->unk4, inst->unk3C, 2);

			if (inst->unk20 & 0x600) {
				D_8014DD50[inst->unkC].unk2 += 2;
				if (inst->unk2C >= 0x30) {
					D_8014DD50[inst->unkC].unkA -= (u16) ((inst->unk38 + 0x8000) / 12);
				}
			}

			if ((inst->unk47 & 1) && (inst->unk2C >= 2)) {
				inst->unk2C = 1;
			}
		} else {
			if (((func_800B84D0_C7480(inst->unk0, inst->unk4) >> 8) < inst->unk2) && (inst->unk2C >= 2)) {
				inst->unk2C = 1;
			} else {
				if (inst->unk26 == 0) {
					if (D_80031420 & 3) {
						func_800CA5EC_D959C(inst->unk0, inst->unk2, inst->unk4,
							0, 1, 0, 0x3C, 8, 0x14, 0x80,
							D_8013E3C0[(currentLevel * 3) - 3], D_8013E3C0[(currentLevel * 3) - 2], D_8013E3C0[(currentLevel * 3) - 1], 0xFF);
					}
					inst->unk26 = 1;
				}

				if ((inst->unk2C % 5) == 0) {
					randomA = func_800038E0_44E0();
					randomB = func_800038E0_44E0();
					randomC = func_800038E0_44E0();
					func_800DFA34_EE9E4(
						(s16) (((randomA % 100) + inst->unk0) - 0x32),
						(s16) ((randomB % 40) + inst->unk2),
						(s16) (((randomC % 100) + inst->unk4) - 0x32),
						(u16) ((func_800038E0_44E0() % 20) + 0x14),
						0);
				}

				if ((inst->unk2C % 10) == 0) {
					func_800DEA08_ED9B8(inst->unk0, inst->unk2, inst->unk4, 0x50, 6, 6, 0x32, 0xC8, 0x28, 0x28, 0x28);
				}
			}
		}

		if (inst->unk2C >= 2) {
			func_800F2D48_101CF8(inst->unk20 & 7, inst->unk0, inst->unk4);
		}

		if (inst->unk2C == 1) {
			func_800F3038_101FE8(inst->unk20 & 7);
			inst->unk20 &= ~0x80000;
			func_800DF848_EE7F8(inst->unk0, inst->unk2, inst->unk4, (u16) ((f64) alienSpecs[specIndex].unkC * 1.5), 0);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008B190_9A140.s")
#endif

void func_8008B870_9A820(u8 arg0) {
	AlienInstance *inst;
	s32 unk20;
	s32 idx;
	inst = &alienInstances[arg0];
	inst->unk2C = 0xC8;
	inst->unk3A = 0x32;
	inst->unk36 = 0;
	inst->unk20 |= 0x1000;
	inst->unk20 &= ~0xA000;
	idx = arg0;
	func_80137468_146418(idx, 0x11);
}

// https://decomp.me/scratch/YKVHR
// CURRENT(250)
#ifdef NON_MATCHING
void func_8008B8E4_9A894(u8 arg0)
{
s16 nodes[2];
	Unk8014DD50 *route;
  s32 effectType;
  s32 delay;
   s16 new_var; 
  s16 waitCounter;
  s32 flags;
  s32 timer;
  
  s16 rand[3];
  AlienInstance *inst;
  if (!(alienInstances[arg0].unk20 & 0x100000))
  {
	osSyncPrintf(D_80141DCC_150D7C);
	func_8008B870_9A820(arg0);
	return;
  }
  osSyncPrintf(D_80141DE0_150D90);
  nodes[0] = D_8014DD50[alienInstances[arg0].unkC].unkC;
  if (nodes[0] != (-1))
  {
	flags = alienInstances[arg0].unk20;
	nodes[1] = D_8014DD50[nodes[0]].unkC;
	if (flags & 0x1000)
	{
	  if (func_80081F18_90EC8(arg0, 2, 5, &nodes[0], &D_8013C38C_14B33C) == 5)
	  {
		alienInstances[arg0].unk20 &= ~0x1000;
		alienInstances[arg0].unk20 |= 0x2000;
	  }
	}
	else
	  if (flags & 0x2000)
	{
	  func_800822BC_9126C(arg0, nodes[0], 6, (s32) D_8013C394_14B344, (s32) D_8013C3F4_14B3A4);
	}
  }
  waitCounter = alienInstances[arg0].unk3A;
  if (waitCounter != 0)
  {
	alienInstances[arg0].unk3A = waitCounter - 1;
  }
  else
  {
	if (alienInstances[arg0].unk2C >= 0x3F)
	{
	  delay = 3;
	  if (alienInstances[arg0].unk2C >= 0x97)
	  {
		delay = 0xA;
	  }
	  else if (alienInstances[arg0].unk2C >= 0x6F)
	  {
		delay = 5;
	  }
	  alienInstances[arg0].unk3A = func_800038E0_44E0(delay) % delay;
	  effectType = func_800038E0_44E0() % 3;
	  rand[0] = func_800038E0_44E0();
	  rand[1] = func_800038E0_44E0();
	  rand[2] = func_800038E0_44E0();
	  func_800DFA34_EE9E4((s16) ((alienInstances[arg0].unk0 - (((u16) rand[0]) % 0x190)) + 0xC8), (s16) ((((u16) rand[1]) % 0xFA) + alienInstances[arg0].unk2), (s16) ((alienInstances[arg0].unk4 - (((u16) rand[2]) % 0x190)) + 0xC8), (u16) ((func_800038E0_44E0() % 0x46) + 0x32), effectType);
	}
  }
  if ((alienInstances[arg0].unk2C == 0x34) || (alienInstances[arg0].unk2C == 0x33))
  {
	func_800E35E0_F2590(0x80);
  }
  if ((alienInstances[arg0].unk2C == 0x34) || (alienInstances[arg0].unk2C == 0xF))
  {
	func_800DF848_EE7F8(alienInstances[arg0].unk0, (s16) (alienInstances[arg0].unk2 + 0x1E), alienInstances[arg0].unk4, 0x1F4, 0xA);
  }
  if (alienInstances[arg0].unk2C == 0x2A)
  {
	osSyncPrintf(D_80141DF8_150DA8);
	  new_var = alienInstances[arg0].unkC;
	route = &D_8014DD50[new_var];
	func_80079DC0_88D70(route->unkC);
	alienInstances[arg0].unk20 |= 0x8000;
	route->unkC = -1;
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008B8E4_9A894.s")
#endif

// CURRENT(2386)
#ifdef NON_MATCHING
void func_8008BC58_9AC08(u8 arg0)
{
	AlienInstance *inst;
	s32 timer;
	s32 sp70;
	s32 sp6C;
	s32 sp68;

	inst = &alienInstances[arg0];
	if (!(inst->unk20 & 0x100000))
	{
		inst->unk2C = 0x60;
		return;
	}

	timer = inst->unk2C;
	if (timer == 0x28)
	{
		func_800D6ADC_E5A8C(inst->unk0, inst->unk2, inst->unk4, 5);
		timer = inst->unk2C;
	}

	if (timer < 0x28)
	{
		u32 divisor = (func_800038E0_44E0() % 5) + 2;
		if (((u32)D_80052A8C % divisor) == 0)
		{
			u16 randA;
			u16 randB;
			u16 randC;
			u16 randD;

			randA = func_800038E0_44E0();
			randB = func_800038E0_44E0();
			randC = func_800038E0_44E0();
			randD = func_800038E0_44E0();
			func_800038E0_44E0();

			func_800DF848_EE7F8(
				(s16)(((randA % 0x190) + inst->unk0) - 0xC8),
				(s16)((randB % 0x2BC) + inst->unk2),
				(s16)(((randC % 0x190) + inst->unk4) - 0xC8),
				(u16)((randD % 0x64) + 0x28),
				timer % 4);
		}
	}

	timer = inst->unk2C;
	if ((timer < 0x50) && (timer >= 0x10))
	{
		VehicleInstance *vehicle;
		AlienInstance *otherAlien;
		s32 idx;
		s32 iter;

		func_80128504_1374B4(inst, 0, &sp70, &sp6C, &sp68);

		idx = timer - 0x10;
		vehicle = &vehicleInstances[idx];
		if ((D_80052B34 != vehicle) && (vehicle->unk1A != 0))
		{
			if (func_80084E54_93E04(inst, vehicle) < 0x2000)
			{
					func_80123E90_132E40(vehicle, 0x7FFF);
			}
		}

		iter = 0;
		while (iter != 0x100)
		{
			if ((idx != 0xFF) && (idx >= 0) && (idx != arg0))
			{
				otherAlien = &alienInstances[idx];
				if (otherAlien->specIndex != 0)
				{
					func_80079910_888C0(idx);
					func_800DF848_EE7F8(otherAlien->unk0, otherAlien->unk2, otherAlien->unk4, (u16)alienSpecs[otherAlien->specIndex].unkC, 0);
				}
			}

			iter += 0x40;
			idx += 0x40;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008BC58_9AC08.s")
#endif

void func_8008BF8C_9AF3C(u8 arg0)
{
  s8 specEntry;
  specEntry = D_8014DD50[alienInstances[arg0].unkC].unkC;
  if (!(alienInstances[arg0].unk20 & 0x100000))
  {
	func_80088E40_97DF0(arg0, specEntry, D_8014DD50[specEntry].unk0, D_8014DD50[specEntry].unk2, D_8014DD50[specEntry].unk4, 0, 0x14, 0);
	alienInstances[arg0].unk2C = 0x23;
	alienInstances[alienInstances[arg0].unk25].unk26--;
	return;
  }
  if (alienInstances[arg0].unk2C == 0x22)
  {
	func_800DF038_EDFE8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16) alienSpecs[alienInstances[arg0].specIndex].unkC, 0, 0);
  }
  if (alienInstances[arg0].unk2C == 1)
  {
	func_800DF038_EDFE8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16) alienSpecs[alienInstances[arg0].specIndex].unkC, 4, 0);
  }
}

// https://decomp.me/scratch/ngB77
// CURRENT(38)
#ifdef NON_MATCHING
void func_8008C0F8_9B0A8(u8 arg0)
{
  u8 specEntry;
  s16 randA;
  s16 randB;
  s32 threshold;
  specEntry = (u8) D_8014DD50[alienInstances[arg0].unkC].unkC;
  if (!(alienInstances[arg0].unk20 & 0x600))
  {
	return;
  }
  func_80137468_146418(arg0, 0x1D);
  if (!(alienInstances[arg0].unk20 & 0x100000))
  {
	alienInstances[arg0].unk20 &= 0xF7FFFE5F;
	alienInstances[arg0].unk47 &= -2;
	alienInstances[arg0].unk38 = (func_800038E0_44E0() % 3) + 3;
	alienInstances[arg0].unk20 |= 0x40000000;
	alienInstances[arg0].unk3A = 0;
	alienInstances[arg0].unk2C = 0xC8;
	func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0x64, 0);
	return;
  }
  if (alienInstances[arg0].unk2C < 4)
  {
	return;
  }
  func_800A5554_B4504(arg0, 0x190, 0x3CA3D70A, (s16) specEntry);
  alienInstances[arg0].unkA += 0x96;
  alienInstances[arg0].unk10 += 0x20;
  if (alienInstances[arg0].unk38 != 0)
  {
	alienInstances[arg0].unk38--;
  }
  else
  {
	alienInstances[arg0].unk38 = (func_800038E0_44E0() % 3) + 3;
	randA = func_800038E0_44E0();
	randB = func_800038E0_44E0();
	func_800DF038_EDFE8((s16) ((alienInstances[arg0].unk0 - (((s32) ((u16) randA)) % 128)) + 0x40), (s16) ((alienInstances[arg0].unk2 - (((s32) ((u16) randB)) % 64)) + 0x20), (alienInstances[arg0].unk4 - (func_800038E0_44E0() % 128)) + 0x40, 0x32, 0, (s32) (&D_8013C178_14B128));
  }
  threshold = D_80222A70;
  if (alienInstances[arg0].unk2 < threshold)
  {
	alienInstances[arg0].unk3A++;
  }
  if (!(alienInstances[arg0].unk47 & 1))
  {
	if (alienInstances[arg0].unk20 & 0x40000000)
	{
	  if (alienInstances[arg0].unk3A < 2)
	  {
		return;
	  }
	}
  }
  ;
  alienInstances[arg0].unk2C = 2;
  if (alienInstances[arg0].unk2 < threshold)
  {
	func_800DF038_EDFE8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (alienSpecs[alienInstances[arg0].specIndex].unkC * 3), 4, (s32) (&D_8013C16C_14B11C));
	func_800DEF2C_EDEDC(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0xFF, 2);
	return;
  }
  func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, (u16) alienSpecs[alienInstances[arg0].specIndex].unkC, 4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008C0F8_9B0A8.s")
#endif

// https://decomp.me/scratch/Pxu4Z
void func_8008C428_9B3D8(u8 arg0)
{
	s16 sp56;
	s16 sp54;
	AlienInstance *inst;
	s32 sp4C;
	s16 newv;
	u16 temp_s2;
	inst = &alienInstances[arg0];
	inst->unk10 = 0x300;
	newv = inst->unk6;
	inst->unk20 |= 0x40000000;
	temp_s2 = newv;
	inst->unk20 &= 0xFFF7FFFF;
	sp56 = inst->unk0;
	sp54 = inst->unk4;
	sp4C = func_800B84D0_C7480(((((((f32)coss(temp_s2))) / 32768.0) * 25.0) + sp56),
							   ((((f32)sins(temp_s2) / 32768.0) * 25.0) + sp54)) >> 8;

	inst->unk14 = func_80003824_4424(
		50.0f,
		(sp4C - (func_800B84D0_C7480(((sp56 - (((f32)coss(temp_s2) / 32768.0) * 25.0))),
		(sp54 - (((f32)sins(temp_s2) / 32768.0) * 25.0))) >> 8)));

	sp4C = func_800B84D0_C7480(((((f32)sins(temp_s2) / 32768.0) * 25.0) + sp56),
							   ((((f32)coss(temp_s2) / 32768.0) * 25.0) + sp54)) >> 8;

	inst->unk16 = func_80003824_4424(
		50.0f,
		(sp4C - (func_800B84D0_C7480((sp56 - (((f32)sins(temp_s2) / 32768.0) * 25.0)),
		(sp54 - (((f32)coss(temp_s2) / 32768.0) * 25.0))) >> 8)));
		
	inst->unk12 = 0x140;
	inst->unk26 = func_800038E0_44E0() % 10;
	inst->unk3C = 1;
	if (currentLevel != 1)
	{
		inst->unk20 |= 0x1000;
		inst->unk2C = 0xC8;
	}
	else
	{
		inst->unk20 &= ~0x1000;
		inst->unk2C = 0x64;
	}
	inst->unk36 = 0;
}

s8 func_8008C7B0_9B760(u8 arg0) {
	s16 sp28[12];

	sp28[0] = D_8014DD50[alienInstances[arg0].unkC].unkC;
	sp28[1] = D_8014DD50[sp28[0]].unkC;
	sp28[2] = D_8014DD50[sp28[0]].unkD;
	sp28[3] = D_8014DD50[sp28[2]].unkC;
	sp28[4] = D_8014DD50[sp28[3]].unkC;
	sp28[5] = D_8014DD50[sp28[3]].unkD;
	sp28[6] = D_8014DD50[sp28[5]].unkC;
	sp28[7] = D_8014DD50[sp28[2]].unkD;
	sp28[8] = D_8014DD50[sp28[7]].unkC;
	sp28[9] = D_8014DD50[sp28[8]].unkC;
	sp28[10] = D_8014DD50[sp28[8]].unkD;
	sp28[11] = D_8014DD50[sp28[10]].unkC;
	return func_80081F18_90EC8(arg0, 0xC, 1, sp28, &D_8013C514_14B4C4);
}

// CURRENT(6775)
#ifdef NON_MATCHING
void func_8008C8B8_9B868(u8 arg0) {
	AlienInstance *inst;
	s32 pad0;
	s32 pad1;
	Unk8014DD50 *temp;
	s16 tmp0;
	s16 x;
	s16 z;
	u16 tempA;
	u16 tempB;
	f32 vecX;
	f32 vecY;
	f32 vecZ;
	f32 tempF;
	u16 randA;
	u16 randB;

	inst = &alienInstances[arg0];
	if (!(inst->unk20 & (ALIEN_FLAG_UNKA | ALIEN_FLAG_UNKB))) {
		return;
	}

	if (!(inst->unk20 & 0x100000)) {
		func_8008C428_9B3D8(arg0);
		func_800DF848_EE7F8(inst->unk0, inst->unk2, inst->unk4, (u16)(alienSpecs[inst->specIndex].unkC / 2), 0);
		return;
	}

	if (inst->unk20 & ALIEN_FLAG_FALL) {
		if (inst->unk20 & (ALIEN_FLAG_UNKA | ALIEN_FLAG_UNKB)) {
			temp = &D_8014DD50[inst->unkC];
			temp->unk2 += 2;
			if (inst->unk2C >= 0x58) {
				tempA = temp->unkA;
				tempB = temp->unk8;
				temp->unkA = tempA - ((inst->unk14 + 0x4000) / 12);
				temp->unk8 = tempB - (inst->unk16 / 12);
			}
		}
	} else {
		if (D_80222A70 < inst->unk2) {
			func_80089200_981B0(arg0, 4, 0x5A);
		}

		if (((currentLevel == 1) && !(inst->unk2C & 7)) || ((currentLevel != 1) && ((inst->unk2C % 20) == 0))) {
			if (!(func_800038E0_44E0() & 3)) {
				randA = func_800038E0_44E0();
				randB = func_800038E0_44E0();
				func_800DF848_EE7F8((inst->unk0 - (randA % 128)) + 0x40, (randB % 64) + inst->unk2, (inst->unk4 - (func_800038E0_44E0() % 128)) + 0x40, 0x32, 0);
			} else {
				randA = func_800038E0_44E0();
				randB = func_800038E0_44E0();
				func_800DF038_EDFE8((inst->unk0 - (randA % 128)) + 0x40, (randB % 64) + inst->unk2, (inst->unk4 - (func_800038E0_44E0() % 128)) + 0x40, 0x32, 0, (s32)&D_8013C178_14B128);
			}
		}

		if ((inst->unk2C % 20) == 0) {
			if (D_80222A70 < inst->unk2) {
				func_800CA5EC_D959C(inst->unk0, inst->unk2, inst->unk4, 0, 1, 0, 0x46, 4, 0xC, 0x80, 0, 0, 0, 0xFF);
			}
		}

		if (inst->unk20 & ALIEN_FLAG_UNKD) {
			if (func_8008C7B0_9B760(arg0) == 1) {
				inst->unk20 &= ~ALIEN_FLAG_UNKD;
			}
		} else {
			tmp0 = D_8014DD50[D_8014DD50[D_8014DD50[inst->unkC].unkC].unkD].unkD;
			if (currentLevel == 1) {
				func_800821F0_911A0(arg0, tmp0, 6, (u8 *)D_8013C544_14B4F4);
			} else {
				func_800821F0_911A0(arg0, D_8014DD50[D_8014DD50[D_8014DD50[tmp0].unkC].unkD].unkC, 6, (u8 *)D_8013C544_14B4F4);
			}
			func_80137468_146418(arg0, 0x14);
		}

		if (inst->unk3C && (D_80222A70 < inst->unk2)) {
			x = inst->unk0;
			z = inst->unk4;
			vecY = 0.0f;
			vecX = (f32)(x / 4) - D_80047954;
			vecZ = (f32)(z / 4) - D_8004795C;
			guNormalize(&vecX, &vecY, &vecZ);
			vecX *= 200.0f;
			vecZ *= 200.0f;
			x = (s16)((f32)x - vecX);
			z = (s16)((f32)z - vecZ);
			tempF = vecZ;
			func_800DEA08_ED9B8(x, (func_800B84D0_C7480((s16)tempF, z) >> 8) + 0x32, z, 0x12C, 0x14, 0, 0x32, 0xFF, 0x88, 0x67, 0x11);
			func_80135D44_144CF4(inst->unk0, inst->unk2, inst->unk4, 3.0f);
			inst->unk3C = 0;
		}
	}

	if (inst->unk2C == 1) {
		func_800DF848_EE7F8(inst->unk0, inst->unk2, inst->unk4, (u16)alienSpecs[inst->specIndex].unkC, 6);
		D_80031410 = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/884C0/func_8008C8B8_9B868.s")
#endif

void func_8008CF50_9BF00(u8 arg0) {
	func_80089EB4_98E64(arg0, 0x1C, 1, 2, 2);
}

void func_8008CF8C_9BF3C(u8 arg0) {
	func_80089EB4_98E64(arg0, 0x28, 2, 4, 3);
}

void func_8008CFC8_9BF78(u8 arg0) {
	func_80089EB4_98E64(arg0, 0x3C, 4, 7, 5);
}

void func_8008D004_9BFB4(u8 arg0) {
	func_80089EB4_98E64(arg0, 0x50, 6, 0xA, 8);
}
