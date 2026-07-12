#include <ultra64.h>
#include "common.h"

const char D_801442E0_153290[16] = "NO ANIM STORED";
const char D_801442F0_1532A0[24] = "Player start swimming\n";
const char D_80144308_1532B8[24] = "Player stops swimming\n";
const char D_80144320_1532D0[16] = "START ANIM %d\n";
const char D_80144330_1532E0[36] = "attempt to exit to point %d,%d,%d\n";
const char D_80144354_153304[28] = "UNKNOWN DOOR YAW! = %3.2f\n";
const char D_80144370_153320[32] = "Animate player stop swimming\n";
const char D_80144390_153340[20] = "PLAYER IS DYING\n";
const char D_801443A4_153354[24] = "Selecting weapon:%d\n";
const char D_801443BC_15336C[20] = "play shot anim\n";
const f64 D_801443D0_153380[1] = {180.0};
const f64 D_801443D8_153388[1] = {180.0};
const f64 D_801443E0_153390[1] = {180.0};
const f64 D_801443E8_153398[1] = {3.141592654};
const f64 D_801443F0_1533A0[1] = {3.141592654};
const f64 D_801443F8_1533A8[1] = {3.141592654};
const f64 D_80144400_1533B0[1] = {3.141592654};
const f64 D_80144408_1533B8[1] = {180.0};
const f32 D_80144410_1533C0[1] = {0.9f};
const f32 D_80144414_1533C4[1] = {0.8f};
const f32 D_80144418_1533C8[1] = {0.7f};
const f32 D_8014441C_1533CC[1] = {0.6f};
const u32 jtbl_80144420_1533D0[] = {
	0x800EB5F0, 0x800EB5F0, 0x800EB624, 0x800EB624, 0x800EB5F8, 0x800EB600, 0x800EB608, 0x800EB610, 0x800EB618, 0x800EB620, 0x800EB624, 0x800EB624, 0x800EB624, 0x800EB624, 0x800EB624, 0x800EB624, 0x800EB624, 0x800EB5F0,
};
const f64 D_80144468_153418[1] = {3.141592654};
const f64 D_80144470_153420[1] = {180.0};
const f64 D_80144478_153428[1] = {70.0};
const f64 D_80144480_153430[1] = {180.0};
const f64 D_80144488_153438[1] = {180.0};
const f64 D_80144490_153440[1] = {70.0};
const f64 D_80144498_153448[1] = {0.8};
const u32 jtbl_801444A0_153450[] = {
	0x800EDB50, 0x800EDF40, 0x800ED938, 0x800ED908, 0x800ED850, 0x800ED834,
};
const f32 D_801444B8_153468[1] = {0.03f};
const f64 D_801444C0_153470[1] = {70.0};
const f64 D_801444C8_153478[1] = {0.1};
const f64 D_801444D0_153480[1] = {0.01};
const f64 D_801444D8_153488[1] = {0.1};
const f32 D_801444E0_153490[1] = {0.01f};
const f64 D_801444E8_153498[1] = {0.1};

u8 D_8013E450_14D400[0x0C] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF,
};

u8 D_8013E45C_14D40C[4] = {
	0xFF, 0xFF, 0xFF, 0xFF,
};

u8 D_8013E460_14D410[4] = {
	0xFF, 0xFF, 0xFF, 0xFF,
};

u8 D_8013E464_14D414[0x0C] = {
	0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x01, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00,
};

u8 D_8013E470_14D420[4] = {
	0x01, 0x00, 0x1B, 0x50,
};

u8 D_8013E474_14D424[4] = {
	0x00, 0x00, 0x00, 0x00,
};

u8 D_8013E478_14D428[0x18] = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x3C,
	0x00, 0x01, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
};

u8 D_8013E490_14D440[0x10C] = {
	0x01, 0x00, 0x49, 0xF0, 0xFF, 0xFF, 0x00, 0x37, 0x00, 0x26, 0x28, 0xA0, 0x00, 0x00, 0x00, 0x46,
	0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00, 0x45, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x01, 0x00, 0x4D, 0xB0, 0xFF, 0xF4, 0x00, 0x3F, 0x00, 0x26, 0x28, 0xA0, 0x00, 0x00, 0x00, 0x4B,
	0x00, 0x00, 0x00, 0x4C, 0x00, 0x00, 0x00, 0x4A, 0x00, 0x01, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
	0x01, 0x00, 0x4D, 0xB0, 0xFF, 0xFA, 0x00, 0x3A, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43,
	0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00, 0x42, 0xFF, 0xFF, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
	0x01, 0x00, 0x54, 0xE0, 0xFF, 0xF9, 0x00, 0x2A, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4E,
	0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x4D, 0x00, 0x01, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
	0x01, 0x00, 0x58, 0xC8, 0xFF, 0xF8, 0x00, 0x3C, 0x00, 0x26, 0x1F, 0x40, 0x00, 0x00, 0x00, 0x23,
	0x00, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00, 0x41, 0x00, 0x08, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
	0x01, 0x00, 0x5C, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x53,
	0x00, 0x00, 0x00, 0x54, 0x00, 0x00, 0x00, 0x52, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
	0x01, 0x00, 0x50, 0xA0, 0x00, 0x01, 0x00, 0x36, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x23,
	0x00, 0x00, 0x00, 0x55, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x0B, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
	0x01, 0x00, 0x1B, 0x50, 0xFF, 0xF1, 0x00, 0x37, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46,
	0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00, 0x45, 0x00, 0x02, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
	0x01, 0x00, 0x62, 0x98, 0xFF, 0xF4, 0x00, 0x3C, 0x00, 0x26, 0x28, 0xA0,
};

u8 D_8013E59C_14D54C[0x10] = {
	0x00, 0x00, 0x00, 0x57, 0x00, 0x00, 0x00, 0x58, 0x00, 0x00, 0x00, 0x58, 0x00, 0x00, 0x00, 0x59,
};

Unk8009E8DC D_8013E5AC_14D55C[] = {
	{0x030002F0, 0x00000805, 0x00000004, 0x00000001, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "walking"},
	{0x03000CE0, 0x00000801, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "running"},
	{0x0300BBF0, 0x00000005, 0x00000004, 0x00000003, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "swimming"},
	{0x0300B200, 0x00000001, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "swimming fast"},
	{0x0300CC50, 0x0000001A, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "swimming standup"},
	{0x0300D100, 0x0000004A, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "diving"},
	{0x03035A00, 0x00000005, 0x00000004, 0x00000003, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "swim underwater"},
	{0x03036070, 0x00000001, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "swim kick"},
	{0x0300D5B0, 0x00000049, 0x00000003, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "flailing front"},
	{0x0300DB40, 0x00000049, 0x00000003, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "flailing back"},
	{0x0300E0D0, 0x0000001A, 0x0000000C, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "land on front"},
	{0x0300E820, 0x0000001A, 0x0000000D, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "land on back"},
	{0x0300EE90, 0x0000001A, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "on front standup"},
	{0x0300F7A0, 0x0000001A, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "on back standup"},
	{0x03014610, 0x0000010A, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "turn right"},
	{0x03014160, 0x0000010A, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "turn left"},
	{0x030409D0, 0x0000000A, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "run turn left"},
	{0x03040BE0, 0x0000000A, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "run turn right"},
	{0x03012050, 0x00001042, 0x00000023, 0x00000004, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "shot"},
	{0x030127A0, 0x00001042, 0x00000023, 0x00000004, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "shot lefthand"},
	{0x03013800, 0x00001042, 0x00000023, 0x00000004, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "shot back"},
	{0x03012E10, 0x00001042, 0x00000023, 0x00000004, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "shot right hand"},
	{0x030393C0, 0x0000084A, 0x00000023, 0x00000004, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "roll left"},
	{0x03039CD0, 0x0000084A, 0x00000023, 0x00000004, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "roll right"},
	{0x0303AFD0, 0x0000084A, 0x00000023, 0x00000004, 0x000000B4, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "roll forward"},
	{0x0302F0F0, 0x00000842, 0x00000021, 0x00000004, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "blasthit1"},
	{0x0302F760, 0x00000842, 0x00000021, 0x00000004, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "blasthit2"},
	{0x0302FEB0, 0x00000842, 0x00000021, 0x00000004, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "blasthit3"},
	{0x03030600, 0x00000842, 0x00000021, 0x00000004, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "blasthit4"},
	{0x03030C70, 0x00000842, 0x00000021, 0x00000004, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "blasthit5"},
	{0x030312E0, 0x00000842, 0x00000021, 0x00000004, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "blasthit6"},
	{0x03031950, 0x00000842, 0x00000021, 0x00000004, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "blasthit7"},
	{0x030320A0, 0x00000842, 0x00000021, 0x00000004, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "blasthit8"},
	{0x0303A6C0, 0x0000084A, 0x00000023, 0x00000004, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "get up from back"},
	{0x0300C5E0, 0x00000001, 0x00000003, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "tread water"},
	{0x03000000, 0x00004801, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "default"},
	{0x03013E70, 0x00000011, 0x00000008, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "tired"},
	{0x03035390, 0x00000002, 0x00000024, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "tired insert"},
	{0x03014AC0, 0x00000002, 0x00000024, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "wipe visor"},
	{0x030109C0, 0x00000002, 0x00000024, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "bored"},
	{0x030100B0, 0x0000001A, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "back flip"},
	{0x030113C0, 0x00000002, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "wasp kak"},
	{0x03002E80, 0x00000002, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "cock gun"},
	{0x03028E20, 0x0000001A, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "quick draw"},
	{0x030298F0, 0x00000002, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "crane kick"},
	{0x0302A2E0, 0x00000002, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "karate"},
	{0x0302AA30, 0x00000002, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "itch"},
	{0x0302B260, 0x00000002, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "scottish"},
	{0x030016D0, 0x00000058, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "use comm-link"},
	{0x0302C190, 0x00000008, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "victory"},
	{0x0302C720, 0x00000008, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "beacon hit"},
	{0x0302CE70, 0x00000008, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "bitten"},
	{0x0302D4E0, 0x00000008, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "crate break"},
	{0x03036CC0, 0x0000004A, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "door locked"},
	{0x030368F0, 0x0000084A, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "door open"},
	{0x03038430, 0x0000084A, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "garage open"},
	{0x03037830, 0x0000004A, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "holster obj"},
	{0x0302DC30, 0x00000008, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "dust off"},
	{0x03036360, 0x00000008, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "tremor"},
	{0x03045630, 0x0000004A, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "land"},
	{0x030035D0, 0x0000243A, 0x0000003F, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "drawing gun"},
	{0x03038B80, 0x00000414, 0x00000000, 0x0000003E, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "aiming gun UP"},
	{0x03038CB0, 0x00000410, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "aiming gun D"},
	{0x03038DE0, 0x000000BD, 0x00000000, 0x00000040, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "shootig gun"},
	{0x030390D0, 0x000000B8, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "shooting gun"},
	{0x03009510, 0x000000DA, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "laying bomb"},
	{0x030039A0, 0x0000243A, 0x00000044, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "drawing macgun"},
	{0x030040F0, 0x00000418, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "aiming macgun"},
	{0x030040F0, 0x000000B9, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "shooting macgun"},
	{0x030043E0, 0x0000243A, 0x00000048, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "drawing shot gun"},
	{0x030047B0, 0x00000414, 0x00000000, 0x00000047, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "aim shotgun"},
	{0x030048E0, 0x00000410, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "aim shotgunD"},
	{0x03004A10, 0x000000BD, 0x00000000, 0x00000049, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "shoot shotgunUp"},
	{0x030054E0, 0x000000B8, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "shoot shotgunD"},
	{0x03005FB0, 0x0000243A, 0x0000004C, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "drawing rifle"},
	{0x03005FB0, 0x00000438, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "aiming rifle"},
	{0x03006380, 0x000000B9, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "shooting winchester"},
	{0x03006990, 0x0000243A, 0x00000050, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "drawing rocket"},
	{0x030076A0, 0x00000414, 0x00000000, 0x0000004F, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "aim rocket"},
	{0x030077D0, 0x00000410, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "aim rocketD"},
	{0x03007900, 0x000000AD, 0x00000000, 0x00000051, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "shoot rocketUp"},
	{0x030082F0, 0x000000A8, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "shoot rocketD"},
	{0x03037540, 0x0000243A, 0x00000054, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "drawing shield"},
	{0x03037410, 0x00000438, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "aiming shield"},
	{0x03037410, 0x000000B9, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "shooting shield"},
	{0x0303B640, 0x000000DA, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "throw grenade"},
	{0x03009FE0, 0x000008B9, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "run pistol"},
	{0x03014E10, 0x00000058, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "squashed"},
	{0x03015D30, 0x00000858, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "shot dead"},
	{0x03016870, 0x00000058, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "drowning"},
	{0x0302E540, 0x00000058, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "heart attack"},
	{0x0300A9D0, 0x00004058, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "enter vehicle"},
	{0x03008CE0, 0x00004058, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "exit boat"},
	{0x03047DF0, 0x0000084A, 0x00000023, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "exit building"},
	{0x03037CE0, 0x00000059, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "jump"},
	{0x03045AE0, 0x00000818, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "black adam powerup"},
	{0x03047160, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00, {0x00, 0x00, 0x00}, 0x00000000, "Start Greece 1"},
	{0x03000000, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00, {0x00, 0x00, 0x00}, 0x00000061, "Cut default"},
	{0x03014610, 0x0000010A, 0x00000023, 0x00000000, 0x00000000, 0x00000001, 0x00, {0x00, 0x00, 0x00}, 0x00000061, "Cut turn right"},
	{0x03014160, 0x0000010A, 0x00000023, 0x00000000, 0x00000000, 0x00000001, 0x00, {0x00, 0x00, 0x00}, 0x00000061, "Cut turn left"},
	{0x0300C5E0, 0x0000010A, 0x00000023, 0x00000000, 0x00000000, 0x00000001, 0x00, {0x00, 0x00, 0x00}, 0x00000064, "Cut swim turn"},
	{0x03000CE0, 0x00000801, 0x00000004, 0x00000000, 0x00000000, 0x00000001, 0x64, {0x00, 0x00, 0x00}, 0x00000065, "RunToShield"},
	{0x03001B80, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00, {0x00, 0x00, 0x00}, 0x00000023, "JumpToShield"},
	{0x0300B200, 0x00000001, 0x00000004, 0x00000000, 0x00000000, 0x00000001, 0x64, {0x00, 0x00, 0x00}, 0x00000067, "SwimToShield"},
	{0x03002730, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00, {0x00, 0x00, 0x00}, 0x00000022, "DiveToShield"},
	{0x030016D0, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x05, {0x00, 0x00, 0x00}, 0x0000006A, "Cut Scene 1 Start"},
	{0x03000CE0, 0x00000801, 0x00000004, 0x00000000, 0x00000000, 0x00000001, 0x02, {0x00, 0x00, 0x00}, 0x0000006B, "Cut Scene 1A"},
	{0x030035D0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00, {0x00, 0x00, 0x00}, 0x0000006C, "Cut Scene 1B"},
	{0x03002E80, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x05, {0x00, 0x00, 0x00}, 0x0000006D, "Cut Scene 1C"},
	{0x03002E80, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00, {0x00, 0x00, 0x00}, 0x00000023, "Cut Scene 1D"},
};


f32 D_8013FC04_14EBB4[2] = {0.0f, 0.0f};

s16 D_8013FC0C_14EBBC[2] = {0, 0};

f32 D_8013FC10_14EBC0 = 0.0f;
s32 D_8013FC14_14EBC4[9] = {0x640, 0x1F40, 0, 0xDAC0, 0xBB80, 0x9C40, 0x7D00, 0x5DC0, 0xFA00};
s32 D_8013FC38_14EBE8[9] = {0x1A, 0x1F, 0x1B, 0x20, 0x19, 0x1E, 0x1C, 0x1D, 0x1B};
s32 D_8013FC5C_14EC0C[9] = {0x12, 0x12, 0x15, 0x14, 0x14, 0x14, 0x13, 0x12, 0x15};
f32 D_8013FC80_14EC30[10] = {0.8f, 0.7f, 0.6f, 0.5f, 0.4f, 0.0f, 0.4f, 0.5f, 0.6f, 0.7f};
s32 D_8013FCA8_14EC58[3] = {75, -1761607786, 1677721600};
u32 D_8013FCB4_14EC64[1] = {0};

void func_800EA280_F9230(void) { D_80047948 = 0; D_80157E7C = 4; }

void func_800EA298_F9248(s16 arg0) {
	s16 temp = 0xC000 - arg0;
	D_80157A40 = temp;
}

void func_800EA2B0_F9260(s32 arg0) { D_801575DC = arg0; }

// https://decomp.me/scratch/4eqv8
void func_800EA2BC_F926C(void)
{
  if (D_80052B34->unk1A == 0)
  {
	func_800EB534_FA4E4(&D_80157600, ANIM_SCOTTISH, 0, 0);
  }
}

// CURRENT(8)
#ifdef NON_MATCHING
void func_800EA2FC_F92AC(s16 arg0) {
	Unk8009E8DC *anim;

	if (arg0 >= 0x6E) {
		func_8000CDFC_D9FC(D_80157600.unk404, &D_80157600, 0x10, D_8013E5AC_14D55C[35].unk0, 1);
		return;
	}

	if ((arg0 == D_80157600.unk40C) && (((Unk8007F878_404 *)D_80157600.unk404)->unkE50 != 0)) {
		return;
	}

	anim = &D_8013E5AC_14D55C[arg0];
	D_80157600.unk40C = arg0;
	func_8000CDFC_D9FC(D_80157600.unk404, &D_80157600, 0x10, anim->unk0, 1);
	if (anim->unk4 & 1) {
		func_8000D278_DE78(D_80157600.unk404, &D_80157600, 0x10, anim->unk8);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA2FC_F92AC.s")
#endif

void *func_800EA3E8_F9398(s16 arg0) {
	if (arg0 >= 0x6E) {
		return &D_801442E0_153290;
	}
	return D_8013E5AC_14D55C[arg0].pad20;
}

// guess_initAnimations
// CURRENT(1205)
#ifdef NON_MATCHING
void func_800EA434_F93E4(void) {
	f32 temp_zero;

	D_8004818C = 0;
	D_80157600.unk404 = func_8000C6F4_D2F4();
	D_80157600.unk408 = func_8000C6F4_D2F4();
	D_80157600.unk410 = 1.0f;
	D_80157A34 = 0;
	func_8000C790_D390(&D_80157600, &D_8003BAE0, 0x10);
	temp_zero = 0.0f;
	D_80157600.unk40C = 0x27;
	func_800EB534_FA4E4(&D_80157600, ANIM_DEFAULT, 7, temp_zero);
	D_80157600.unkC = 145.0f;
	D_80157600.unk10 = temp_zero;
	D_80157600.unk8 = temp_zero;
	D_801575D0 = 0;
	D_80157A28 = 1;
	D_801575DC = (s32) D_80047948;
	D_80157A38 = 2;
	D_80157A3C = 0x40;
	D_80157A48.unk404 = func_8000C6F4_D2F4();
	D_80157A48.unk408 = func_8000C6F4_D2F4();
	D_80157A48.unk410 = 1.0f;
	func_8000C790_D390(&D_80157A48, &D_8003BAE0, 0x10);
	D_80157E70 = 0;
	D_80157A48.unkC = 145.0f;
	D_80157A48.unk8 = temp_zero;
	D_80157A48.unk10 = temp_zero;
	D_80157A48.unk40C = 0x27;
	func_800EB534_FA4E4(&D_80157A48, ANIM_DEFAULT, 7, temp_zero);
	D_801575E0.unk0 = 0;
	D_801575E0.unk2 = 0;
	D_801575E0.unk4 = 0;
	D_801575E0.unk6 = 0;
	D_801575E0.unk8 = 0;
	D_801575E0.unkA = 0;
	D_801575E0.unkC = 0;
	D_801575E0.unkE = 0;
	D_801575E0.unk10 = 0;
	D_801575E0.unk12 = 0;
	D_801575E0.unk14 = 0;
	D_801575E0.unk16 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA434_F93E4.s")
#endif

void func_800EA5B8_F9568(void) {
	func_8000C764_D364(D_80157A04);
	func_8000C764_D364(D_80157A08);
	func_8000C764_D364(D_80157E4C);
	func_8000C764_D364(D_80157E50);
	D_80048188 = 0;
}

// CURRENT(3950)
#ifdef NON_MATCHING
f32 func_800EA604_F95B4(s16 *arg0, Vec3f *arg1) {
	f32 diffX;
	s32 pad0;
	f32 diffY;
	f32 diffZ;
	f32 result;
	f32 absDiffY;
	s32 xPart;
	s32 yPart;
	s32 zPart;
	s32 angle;

	if (arg0[0] < 0) {
		xPart = (arg0[0] + 3) >> 2;
	} else {
		xPart = arg0[0] >> 2;
	}
	diffX = arg1->x - xPart;

	if (arg0[1] < 0) {
		yPart = (arg0[1] + 3) >> 2;
	} else {
		yPart = arg0[1] >> 2;
	}
	diffY = arg1->y - (yPart + 0xE);

	if (arg0[2] < 0) {
		zPart = (arg0[2] + 3) >> 2;
	} else {
		zPart = arg0[2] >> 2;
	}
	diffZ = arg1->z - zPart;
	angle = func_80003824_4424(sqrtf((diffX * diffX) + (diffZ * diffZ)), (diffY >= 0.0f) ? diffY : -diffY);

	if (diffY < 0.0f) {
		absDiffY = (f32)(((f64)(f32) (angle & 0xFFFF) * D_801443D0_153380) / 32768.0);
		absDiffY = (f32)((f64) absDiffY / 40.0);
		result = (f32)(((f64) absDiffY * 0.5) + 0.5);
	} else {
		result = (f32)(0.5 - ((((f64)(f32) (angle & 0xFFFF) * D_801443D8_153388) / 32768.0 / 40.0) * 0.5));
	}

	if (result < 0.0f) {
		result = 0.0f;
	}
	if (result > 1.0f) {
		result = 1.0f;
	}

	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA604_F95B4.s")
#endif

// CURRENT(400)
#ifdef NON_MATCHING
s32 func_800EA7DC_F978C(s16 arg0, Vec3f *arg1, Vec3f *arg2, s32 arg3, f32 arg4) {
	s32 temp_v1;
	s32 var_a0;
	s32 var_v0;
	s32 var_v0_2;

	temp_v1 = (arg3 & 0xFFFF) - (func_80003824_4424(arg1->z - arg2->z, arg1->x - arg2->x) & 0xFFFF);
	var_a0 = temp_v1;
	if (temp_v1 >= 0) {
		var_v0 = temp_v1;
	} else {
		var_v0 = -temp_v1;
	}
	if (var_v0 >= 0x8001) {
		if (temp_v1 > 0) {
			var_a0 = temp_v1 - 0x10000;
		} else {
			var_a0 = temp_v1 + 0x10000;
		}
	}
	if (var_a0 >= 0) {
		var_v0_2 = var_a0;
	} else {
		var_v0_2 = -var_a0;
	}
	if (var_v0_2 < (s16) (s32) ((f64) ((arg4 / 2) * 32768.0f) / D_801443E0_153390)) {
		return 0;
	}
	if ((var_a0 >= 0) && (arg0 >= -4)) {
		return 2;
	}
	if ((var_a0 < 0) && (arg0 < 5)) {
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA7DC_F978C.s")
#endif

// CURRENT(2310)
#ifdef NON_MATCHING
void func_800EA8F8_F98A8(VehicleInstance *arg0, s16 arg1, s16 arg2) {
	s32 abs_diff;
	s32 v1;
	s32 level;
	s32 step;
	s32 offset;
	s32 entry_flags;
	s32 entry_val;
	s32 neg_step;

	D_8015757C = 0;

	// Load current angle and calculate difference
	v1 = (s16)(arg0->unkE - arg1);

	// Calculate absolute value
	if (v1 >= 0) {
		abs_diff = v1;
	} else {
		abs_diff = -v1;
	}

	// Check if difference is too large
	if (abs_diff >= 0xA001) {
		D_8015757C = 1;
		v1 = (s16)(arg0->unkE - arg1);
	}

	// First condition: v1 < -0x4000
	if (v1 < -0x4000) {
		level = D_80157A0C;
		if (level != 0xE) {
			if (!(D_80157A28 & 4)) {
				// Calculate offset into state array
			offset = level * 0x34;

			// Access state entry
			entry_flags = D_8013E5AC_14D55C[level].unk4;

			// Modify state at 0x2DC
			if (entry_flags & 0x20) {
				D_8013E5AC_14D55C[14].unk4 |= 0x20;
			} else {
				D_8013E5AC_14D55C[14].unk4 &= ~0x20;
			}

			// Modify state at 0x2E0
			if (!(entry_flags & 0x100)) {
				D_8013E5AC_14D55C[14].unk8 = level;
			} else {
				entry_val = D_8013E5AC_14D55C[level].unk8;
				D_8013E5AC_14D55C[14].unk8 = entry_val;
			}

			func_800EB534_FA4E4(&D_80157600, ANIM_TURN_RIGHT, 0, 0);

			// Calculate step
			step = (s16)(arg1 - arg0->unkE) / 7;
			D_801575D4 = step;
				v1 = (s16)(arg0->unkE - arg1);
				goto clamp_angle;
			}
		}
	}

	if (v1 >= 0x4001) {
		// Second condition: v1 >= 0x4001
		level = D_80157A0C;
		if (level != 0xF) {
			if (!(D_80157A28 & 4)) {
				// Calculate offset into state array
			offset = level * 0x34;

			// Access state entry
			entry_flags = D_8013E5AC_14D55C[level].unk4;

			// Modify state at 0x310
			if (entry_flags & 0x20) {
				D_8013E5AC_14D55C[15].unk4 |= 0x20;
			} else {
				D_8013E5AC_14D55C[15].unk4 &= ~0x20;
			}

			// Modify state at 0x314
			if (!(entry_flags & 0x100)) {
				D_8013E5AC_14D55C[15].unk8 = level;
			} else {
				entry_val = D_8013E5AC_14D55C[level].unk8;
				D_8013E5AC_14D55C[15].unk8 = entry_val;
			}

			func_800EB534_FA4E4(&D_80157600, ANIM_TURN_LEFT, 0, 0);

			// Calculate step
			step = (s16)(arg0->unkE - arg1) / 7;
			D_801575D4 = step;
				v1 = (s16)(arg0->unkE - arg1);
				goto clamp_angle;
			}
		}
	}

	// Default case
	level = D_80157A0C;
	offset = level * 0x34;

	entry_flags = D_8013E5AC_14D55C[level].unk4;

	if (!(entry_flags & 0x100)) {
		D_801575D4 = 0x5DC;
		v1 = (s16)(arg0->unkE - arg1);
	}

clamp_angle:
	// Clamp angle
	step = D_801575D4;
	neg_step = -step;

	if (v1 < neg_step) {
		arg0->unkE = arg0->unkE + step;
	} else if (step < v1) {
		arg0->unkE = arg0->unkE - step;
	} else {
		arg0->unkE = arg1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA8F8_F98A8.s")
#endif

typedef struct {
	/* 0x00 */ u8 pad0[0x18];
	/* 0x18 */ s16 unk18;
	/* 0x1A */ s16 unk1A;
	/* 0x1C */ s16 unk1C;
	/* 0x1E */ s16 unk1E;
} UnkF9230AnimEntry; /* size = 0x20 */

typedef struct {
	/* 0x00 */ u8 pad0[0x20];
	/* 0x20 */ s16 unk20;
	/* 0x22 */ s16 unk22;
	/* 0x24 */ s16 unk24;
} UnkF9230SpecView;

// CURRENT(5156)
#ifdef NON_MATCHING
void func_800EABE0_F9B90(VehicleInstance *arg0) {
	Vec3f sp2C;
	u16 sp2A;
	s32 temp;
	s16 temp_v0;
	UnkF9230SpecView *spec;
	f32 temp_f2;

	temp = D_80159020->unk0;
	if (temp < 0) {
		temp += 3;
	}
	sp2C.x = (f32)(temp >> 2);

	temp = D_80159020->unk2;
	if (temp < 0) {
		temp += 3;
	}
	sp2C.y = (f32)(temp >> 2);

	temp = D_80159020->unk4;
	if (temp < 0) {
		temp += 3;
	}
	sp2C.z = (f32)(temp >> 2);

	temp_f2 = func_800EA604_F95B4((s16 *)arg0, &sp2C);
	temp_v0 = *(s16 *)((u8 *)D_8013E45C_14D40C + (D_801575DC << 5) + 0x1E);
	sp2A = (u16)(s16)(s32)(((f32)temp_v0 * (1.0f - temp_f2)) + ((f32)-temp_v0 * temp_f2));

	spec = func_800FAFB8_109F68(arg0);
	spec->unk20 = *(s16 *)((u8 *)D_8013E45C_14D40C + (D_801575DC << 5) + 0x18);
	spec->unk22 = (s16)(s32)(((f64)(*(s16 *)((u8 *)D_8013E45C_14D40C + (D_801575DC << 5) + 0x1C)) * ((f64)(f32)sins(sp2A) / 32768.0)) + (((f64)(f32)(*(s16 *)((u8 *)D_8013E45C_14D40C + (D_801575DC << 5) + 0x1A)) * 64.0) / (f64)(f32)D_80157A3C));
	spec->unk24 = (s16)(s32)(((f64)(f32)coss(sp2A) / 32768.0) * (f64)(*(s16 *)((u8 *)D_8013E45C_14D40C + (D_801575DC << 5) + 0x1C)));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EABE0_F9B90.s")
#endif

void func_800EADF8_F9DA8(VehicleInstance *arg0, s16 arg1) {
	s32 flags;
	s32 state;
	s16 curDir;
	s16 directionDiff;
	s32 index;

	flags = D_80157A28 & 4;

	if (flags == 4) {
		if (D_80157A0C != 0x64) {
			func_800EB534_FA4E4(&D_80157600, ANIM_CUT_SWIM_TURN, 0, 0);
			flags = D_80157A28 & 4;
		}
	} else {
		state = D_80157A0C;
		if ((state != 0x61) && (state != 0x62) && (state != 0x63)) {
			func_800EB534_FA4E4(&D_80157600, ANIM_CUT_DEFAULT, 0, 0);
			flags = D_80157A28 & 4;
		}
	}

	if (flags == 4) {
		D_801575D4 = 0x5DC;
		curDir = arg0->unkE;
		directionDiff = curDir - arg1;
	} else {
		curDir = arg0->unkE;
		state = D_80157A0C;
		directionDiff = curDir - arg1;

		if ((directionDiff < -0x4000) && (state != 0x63) && (flags == 0)) {
			func_800EB534_FA4E4(&D_80157600, ANIM_CUT_TURN_LEFT, 0, 0);
			D_801575D4 = (s16)(arg1 - arg0->unkE) / 10;
			curDir = arg0->unkE;
			directionDiff = curDir - arg1;
		} else if ((directionDiff >= 0x4001) && (state != 0x62) && (flags == 0)) {
			func_800EB534_FA4E4(&D_80157600, ANIM_CUT_TURN_RIGHT, 0, 0);
			D_801575D4 = (s16)(arg0->unkE - arg1) / 10;
			curDir = arg0->unkE;
			directionDiff = curDir - arg1;
		} else {
			index = state << 2;
			index = index - state;
			index = (index << 2) + state;
			index <<= 2;

			if (!(D_8013E5AC_14D55C[state].unk4 & 0x100)) {
				D_801575D4 = 0x5DC;
				curDir = arg0->unkE;
				directionDiff = curDir - arg1;
			}
		}
	}

	if (directionDiff < -D_801575D4) {
		arg0->unkE = curDir + D_801575D4;
	} else if (D_801575D4 < directionDiff) {
		arg0->unkE = curDir - D_801575D4;
	} else {
		arg0->unkE = arg1;
	}
}

void func_800EB05C_FA00C(void) {
	osSyncPrintf(D_801442F0_1532A0); // Player start swimming
	D_80157A28 |= 4;
}

void func_800EB090_FA040(void) {
	osSyncPrintf(D_80144308_1532B8); // Player stops swimming
	D_80157A28 &= ~4;
}

// CURRENT(5740)
#ifdef NON_MATCHING
void func_800EB0C8_FA078(VehicleInstance *arg0) {
	f32 speedScale;
	f32 xDiff;
	f32 zDiff;
	f32 xStep;
	f32 zStep;
	f32 slopeDeg;
	s32 stateFlags;

	stateFlags = D_8013E5AC_14D55C[D_80157600.unk40C].unk0;
	speedScale = 1.0f;

	if (stateFlags & 0x10) {
		func_800FB430_10A3E0(arg0, 0);
		stateFlags = D_8013E5AC_14D55C[D_80157A0C].unk0;
	}

	if (stateFlags & 0x800) {
		f32 sinYaw;
		f32 cosYaw;

		func_800FB430_10A3E0(arg0, 0);

		xDiff = D_80157600.unk8 - D_80157600.unk414;
		zDiff = D_80157600.unk10 - D_80157600.unk418;
		xDiff /= 4.0f;
		zDiff /= 4.0f;

		cosYaw = cosf((f32)(((f64)(f32)arg0->unkE * D_801443E8_153398) / 32768.0));
		sinYaw = sinf((f32)(((f64)(f32)arg0->unkE * D_801443F0_1533A0) / 32768.0));
		xStep = (cosYaw * zDiff) - (sinYaw * xDiff);

		sinYaw = sinf((f32)(((f64)(f32)arg0->unkE * D_801443F8_1533A8) / 32768.0));
		cosYaw = cosf((f32)(((f64)(f32)arg0->unkE * D_80144400_1533B0) / 32768.0));
		zStep = (cosYaw * xDiff) + (sinYaw * zDiff);

		slopeDeg = (f32)(((f64)(f32)func_800FA690_109640(arg0->unk0, arg0->unk4, arg0->unkE) * D_80144408_1533B8) /
				 32768.0);
		if (slopeDeg < -10.0f) {
			u16 flags = D_80052B34->unk20;

			if (!(flags & 0x800) && !(flags & 4) && !(D_80157A28 & 4)) {
				if (slopeDeg < -10.0f) {
					speedScale = D_80144410_1533C0;
				}
				if (slopeDeg < -15.0f) {
					speedScale = D_80144414_1533C4;
				}
				if (slopeDeg < -20.0f) {
					speedScale = D_80144418_1533C8;
				}
				if (slopeDeg < -25.0f) {
					speedScale = D_8014441C_1533CC;
				}
			}
		}

		xStep *= speedScale;
		zStep *= speedScale;

		if (D_80048188 != 0) {
			s16 *path;
			s16 pathX;
			s16 pathZ;
			s32 delta;
			s32 absDelta;

			path = (s16 *)&D_801575E0 + D_801575E0.unk4;
			pathX = path[3];
			if (pathX != 0x7FFF) {
				pathZ = path[7];
				delta = (s16)(pathX - arg0->unk0);

				if (delta < 0) {
					absDelta = -delta;
				} else {
					absDelta = delta;
				}

				if (xStep >= 0.0f) {
					zDiff = xStep;
				} else {
					zDiff = -xStep;
				}

				if ((f32)absDelta < zDiff) {
					xDiff = pathX;
				} else {
					xDiff = arg0->unk4C + xStep;
				}

				delta = (s16)(pathZ - arg0->unk4);
				if (delta < 0) {
					absDelta = -delta;
				} else {
					absDelta = delta;
				}

				if ((f32)absDelta < (zStep >= 0.0f ? zStep : -zStep)) {
					zDiff = pathZ;
				} else {
					zDiff = arg0->unk54 + zStep;
				}
			} else {
				xDiff = arg0->unk4C + xStep;
				zDiff = arg0->unk54 + zStep;
			}
		} else {
			xDiff = arg0->unk4C + xStep;
			zDiff = arg0->unk54 + zStep;
		}

		func_800FB44C_10A3FC(arg0, xDiff);
		func_800FB484_10A434(arg0, zDiff);
	}

	D_80157600.unk414 = D_80157600.unk8;
	D_80157600.unk418 = D_80157600.unk10;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EB0C8_FA078.s")
#endif

// CURRENT(1351)
#ifdef NON_MATCHING
void func_800EB534_FA4E4(void *arg0, s32 arg1, s32 arg2, f32 arg3) {
	Unk80157600 *player = arg0;
	s32 state;
	s32 shouldAnimate = 0;
	s32 turnOffset = 0;

	if (player == &D_80157A48) {
		osSyncPrintf(D_80144320_1532D0);
	}

	state = player->unk40C;

	if (state >= 0x5C) {
		if (state == 0x5C) {
			shouldAnimate = 1;
		}
	} else if (state >= 0x29) {
		if (state == 0x5B) {
			shouldAnimate = 1;
		}
	} else {
		switch (state) {
		case 0x17:
			turnOffset = 0x4000;
			break;
		case 0x18:
			turnOffset = -0x4000;
			break;
		case 0x19:
			turnOffset = -0x6000;
			break;
		case 0x1A:
			turnOffset = -0x2000;
			break;
		case 0x1B:
			turnOffset = 0x6000;
			break;
		case 0x1C:
			turnOffset = 0x2000;
			break;
		}
	}

	if (turnOffset != 0) {
		D_80052B34->unkE += turnOffset;
		D_80157600.unk2 = 0;
		shouldAnimate = 1;
	}

	if (arg2 != 0) {
		shouldAnimate = 1;
	}

	if ((player->unk40C == 0x16) || (player->unk40C == 0x17)) {
		shouldAnimate = 0;
		D_80157600.unk0 = 0;
		D_80157600.unk2 = 0;
		D_80157600.unk4 = 0;
	} else if (player->unk40C == 0x18) {
		D_80052B34->unkE += 0x8000;
		D_80157600.unk2 = 0;
	} else if (player->unk40C == 0x10) {
		D_80052B34->unkE = D_8013E5AC_14D55C[player->unk40C].unk10;
		D_80157600.unk2 = 0;
	}

	if (arg1 != -1) {
		if ((arg1 == player->unk40C) && (((Unk8007F878_404 *)player->unk404)->unkE50 != 0)) {
			return;
		}

		player->unk40C = arg1;
		if (D_8013E5AC_14D55C[arg1].unk4 & 4) {
			func_8000D71C_E31C(player->unk404, player->unk408, (AnimChannelState *)player, 0x10,
				D_8013E5AC_14D55C[arg1].unk0,
				D_8013E5AC_14D55C[D_8013E5AC_14D55C[arg1].unkC].unk0, arg3, shouldAnimate);
		} else {
			func_8000CDFC_D9FC(player->unk404, (AnimChannelState *)player, 0x10,
				D_8013E5AC_14D55C[arg1].unk0, shouldAnimate);
		}

		player->unk414 = 0.0f;
		player->unk418 = 0.0f;
		player->unk8 = 0.0f;
		player->unk10 = 0.0f;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EB534_FA4E4.s")
#endif

void func_800EB7CC_FA77C(Unk80157600 *arg0, s32 arg1, s32 arg2, f32 arg3) {
	s32 animIdx;
	s32 animCheck;
	Unk8009E8DC *anim;

	animIdx = arg0->unk40C;
	animCheck = animIdx;
	anim = &D_8013E5AC_14D55C[animIdx];
	if (anim->unk4 & 8) {
		return;
	}

	if (arg3 > 0.0f) {
		if (arg2 != animCheck) {
			if (animCheck >= 3) {
				func_800EB534_FA4E4(arg0, arg2, 0, arg3);
				return;
			}
		}

		if (((Unk8007F878_404*)arg0->unk404)->unkE50 == 0) {
			func_800EB534_FA4E4(arg0, arg2, D_8013E5AC_14D55C[arg2].unk8, arg3);
		}
	} else {
		if ((animCheck < 0x24) || (animCheck == 0x3B)) {
			func_800EB534_FA4E4(arg0, arg1, 0, 0.0f);
		}
	}
}

// CURRENT(125)
#ifdef NON_MATCHING
void func_800EB8A4_FA854(Unk80157600 *arg0, f32 arg1) {
	Unk8009E8DC *anim;
	s32 animIdx;

	if (((Unk8007F878_404*)arg0->unk404)->unkE50 != 0) {
		return;
	}

	animIdx = arg0->unk40C;
	anim = &D_8013E5AC_14D55C[animIdx];

	if (anim->unk14 != 0) {
		if (anim->unk4 & 1) {
			s32 animArg2;

			animArg2 = anim->unk8;
			if (anim->unk18 == arg0->unk41C) {
				func_800EB534_FA4E4(arg0, anim->unk1C, 0, arg1);
				arg0->unk41C = 0;
				return;
			}

			func_800EB534_FA4E4(arg0, animIdx, animArg2, arg1);
			arg0->unk41C++;
			return;
		}
		func_800EB534_FA4E4(arg0, anim->unk1C, 0, arg1);
		return;
	}

	if (anim->unk4 & 1) {
		func_800EB534_FA4E4(arg0, animIdx, anim->unk8, arg1);
		return;
	}
	if (anim->unk4 & 2) {
		func_800EB534_FA4E4(arg0, anim->unk8, 0, arg1);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EB8A4_FA854.s")
#endif

s16 func_800EB9B4_FA964(void *arg0) {
	return ((s16 *)arg0)[0xD];
}

f32 func_800EB9BC_FA96C(void *arg0) {
	return ((f32 *)arg0)[0x7];
}

s32 func_800EB9C4_FA974(s32 arg0, Unk80157600 *arg1)
{
	int new_var;
	Unk8013E45C *temp_v0;
	s16 temp_v1;
	temp_v0 = &((Unk8013E45C *)D_8013E45C_14D40C)[arg0];
	temp_v1 = temp_v0->unkC;
	new_var = 0;
	if ((((temp_v0->unkC == arg1->unk298) && (temp_v0->unk10 == arg1->unk29C)) || (((-1.0f) == temp_v0->unk10) && (temp_v0->unkC < (*((volatile s32 *)(&arg1->unk298)))))) || (((-1.0f) == temp_v0->unk10) && (temp_v0->unkC == (-1))))
	{
		return 1;
	}
	return new_var;
}

// CURRENT(420)
#ifdef NON_MATCHING
void func_800EBA54_FAA04(Unk80052B40 *arg0, s32 arg1, AnimChannelState *arg2) {
	s16 temp_a3;
	s32 temp_v0;

	if (arg1 == 5) {
		if ((arg2->unk18 == 3) && (arg2->unk1C == 1.0f)) {
			func_800E0E9C_EFE4C(arg0->unk0, arg0->unk4, 0x32);
		}
	} else if (arg1 == 0x30) {
		if ((arg2->unk18 == 1) && (arg2->unk1C == 1.0f)) {
			func_801371B8_146168(D_80052B34, 0x8D, D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, -1.0f);
		}
	} else if (arg1 == 0x2A) {
		if ((arg2->unk18 == 2) && (arg2->unk1C == 1.0f)) {
			func_801371B8_146168(D_80052B34, 0x8D, D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, -1.0f);
		}
	} else if ((arg1 == 0) && (((temp_v0 = arg2->unk18), (temp_v0 == 3)) || (temp_v0 == 8)) && (arg2->unk1C == 1.0f)) {
		temp_a3 = D_80052B34->unk2;
		if (temp_a3 < D_80222A70) {
			temp_v0 = func_800038E0_44E0(D_80052B34, 0x3E7);
			func_801371B8_146168(
				D_80052B34,
				(s16) ((temp_v0 & 1) + 0xA0),
				D_80052B34->unk0,
				D_80052B34->unk2,
				D_80052B34->unk4,
				-1.0f
			);
			func_800DEF2C_EDEDC(D_80052B34->unk0, (s16) (D_80222A70 + 3), D_80052B34->unk4, 0x3C, 1);
			return;
		}
		func_801371B8_146168(D_80052B34, 0x3E7, D_80052B34->unk0, temp_a3, D_80052B34->unk4, -1.0f);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EBA54_FAA04.s")
#endif

void func_800EBC94_FAC44(VehicleInstance *arg0, OSContPad *arg1) {
	s32 var_v1;
	s8 var_v0;

	arg0->unk22 = 0;
	func_800FB430_10A3E0(arg0, 0);
	var_v0 = arg1->stick_x;
	if (var_v0 >= 0x3E) {
		var_v0 = 0x3D;
	}
	if (var_v0 < -0x3D) {
		var_v0 = -0x3D;
	}
	if (currentControllerStates[0].button & 0x10) {
		var_v1 = (s16)((s32)(var_v0 * var_v0 * var_v0) >> 8);
	} else {
		var_v1 = (s16)((s32)(var_v0 * var_v0 * var_v0) >> 8);
		var_v1 *= 2;
	}
	arg0->unkE += var_v1;
}

void func_800EBD5C_FAD0C(s32 arg0) {
	D_80157A28 |= 0x1000;
	func_80001144_1D44(0x46, 0xA, 0xA);
}

// Exit vehicle to point x,y,z
void func_800EBD9C_FAD4C(s16 arg0, s16 arg1, s16 arg2) {
	if (D_80048188 == 0) {
		D_80048188 = 1;
		D_801575E0.unk0 = 1;
		D_801575E0.unk4 = 0;
		D_801575E0.unkE = arg2;
		D_801575E0.unk6 = arg0;
		D_80157600.unk8 = 0.0f;
		D_80157600.unk10 = 0.0f;
		D_801575E0.unkA = arg1;
		osSyncPrintf(D_80144330_1532E0, arg0, arg1, arg2); // attempt to exit to point %d,%d,%d
		D_8015760C = 145.0f;
		if ((D_80222A70 - 0x24) >= arg1) {
			func_800EB05C_FA00C();
			return;
		}
		func_800EB090_FA040();
	}
}

// CURRENT(4219)
#ifdef NON_MATCHING
void func_800EBE74_FAE24(s16 arg0, s16 arg1, s16 arg2, VehicleInstance *arg3) {
	VehicleInstance *vehicle;
	f64 temp_f20;
	s16 xOff;
	s16 yOff;
	s16 zOff;
	s16 x;
	s16 z;
	f32 temp_f0;
	f32 xOffF;
	f32 zOffF;

	D_80048188 = 1;
	D_8004818C = 1;
	temp_f20 = D_80144468_153418;

	vehicle = &vehicleInstances[arg1];

	D_801575E0.unk0 = 0;
	D_801575E0.unk4 = 0;

	xOff = (s8)vehicleSpecs[vehicle->unk1A].unk5E;
	yOff = (s8)vehicleSpecs[vehicle->unk1A].unk5F;
	zOff = (s8)vehicleSpecs[vehicle->unk1A].unk60;

	temp_f0 = cosf((f32) (((f64) (f32) vehicle->unk6 * temp_f20) / 32768.0));

	xOffF = (f32) xOff;
	zOffF = (f32) zOff;
	x = vehicle->unk0 + (s16) (s32) ((xOffF * temp_f0) - (sinf((f32) (((f64) (f32) vehicle->unk6 * temp_f20) / 32768.0)) * zOffF));

	temp_f0 = sinf((f32) (((f64) (f32) vehicle->unk6 * temp_f20) / 32768.0));
	z = vehicle->unk4 + (s16) (s32) ((cosf((f32) (((f64) (f32) vehicle->unk6 * temp_f20) / 32768.0)) * zOffF) + (xOffF * temp_f0));

	D_801575E0.unk6 = x;
	D_801575E0.unkA = vehicle->unk2 + yOff;
	D_801575E0.unkE = z;
	D_801575E0.unk12 = func_80003824_4424((f32) (s16) (arg3->unk0 - x), (f32) (s16) (arg3->unk4 - z)) + 0x8000;

	D_80157E80 = arg0;
	D_80157E82 = arg1;
	D_80157E84 = arg2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EBE74_FAE24.s")
#endif

// CURRENT(378)
#ifdef NON_MATCHING
void func_800EC0D0_FB080(s32 arg0) {
	s16 sp46;
	s16 sp44;
	s16 sp42;
	s16 sp40;
	f64 sp3C;
	s16 sp3A;
	f32 sp2C;
	f32 sp28;
	s32 temp_f6;
	UnkBuildingProp_80118774 *temp_v1;

	D_80048188 = 1;
	D_801575E0.unk0 = 2;
	D_801575E0.unk4 = 0;
	D_801575E0.unk2 = 2;
	if (D_80157F68 <= 0) {
		temp_v1 = &D_80148390_157340[((u8 *)func_801164C4_125474(D_80052542, D_80052546))[8]];
		if (temp_v1->unk0 == 0) {
			if (D_80157F68 <= 0) {
				gameplayMode = 6;
				D_80048188 = 0;
			}
		} else {
			if (temp_v1->unk12 == 3) {
				D_801575E0.unk16 = 0x37;
			} else {
				D_801575E0.unk16 = 0x36;
			}
			func_801165FC_1255AC(D_80052543, D_80052547, &sp46, &sp44, &sp42, &sp40);
			temp_f6 = (s32)(((f64)(f32)sp40 * D_80144470_153420) / 32768.0);
			switch (temp_f6) {
				case 0:
				case 0x168:
					sp3A = 0x4000;
					sp2C = 0.0f;
					sp28 = -75.0f;
					break;

				case -0x5A:
				case 0x10E:
					sp3A = -0x8000;
					sp2C = 75.0f;
					sp28 = 0.0f;
					break;

				case -0x10E:
				case 0x5A:
					sp3A = 0;
					sp2C = -75.0f;
					sp28 = 0.0f;
					break;

				case -0xB4:
				case 0xB4:
					sp3A = -0x4000;
					sp2C = 0.0f;
					sp28 = 75.0f;
					break;

				default:
					osSyncPrintf(D_80144354_153304, temp_f6);
					break;
			}
			D_801575E0.unk6 = (s16)(sp46 + (s32)sp2C);
			D_801575E0.unkE = (s16)(sp42 + (s32)sp28);
			D_801575E0.unk8 = 0x7FFF;
			D_801575E0.unkC = 0x7FFF;
			D_801575E0.unk10 = 0x7FFF;
			D_801575E0.unkA = sp44;
			D_801575E0.unk12 = sp3A;
		}
	}
	(void)arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EC0D0_FB080.s")
#endif

void func_800EC330_FB2E0(void) {
	Unk800522C0 *temp_v0;

	temp_v0 = func_801164C4_125474(D_80052542, D_80052546);
	D_8016018C = 1;
	if (D_80148390_157340[((u8 *)temp_v0)[8]].unk0 != 0) {
		D_80048188 = 1;
		D_801575E0.unk0 = 3;
	}
}

#ifdef NON_MATCHING
void func_800EC3A0_FB350(s16 arg0) {
	switch (arg0) {
		case 4:
			if ((D_80048188 == 0) && (arg0 != D_801575E0.unk0)) {
				D_80048188 = 1;
				D_801575E0.unk0 = arg0;
				D_80157600.unk420 = &D_8013E450_14D400;
				D_80157600.unk424 = 0;
				D_801575E0.unk6 = 0x7FFF;
				D_801575E0.unkA = 0x7FFF;
				D_801575E0.unkE = 0x7FFF;
				return;
			}
			return;

		case 5:
			D_80048188 = 1;
			D_801575E0.unk0 = arg0;
			return;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EC3A0_FB350.s")
#endif

void func_800EC450_FB400(void) { D_80157A28 |= 0x200; }

void func_800EC468_FB418(void) { D_80157A28 &= ~0x200; }

#ifdef NON_MATCHING
// CURRENT(18034)
void func_800EC484_FB434(VehicleInstance *arg0, OSContPad *arg1) {
	s32 padB8;
	s32 padBC;
	s16 spBA;
	f32 spB0;
	s32 spA8;
	s16 sp96;
	f32 sp90;
	f32 sp8C;
	f32 sp88;
	f32 sp84;
	f32 sp80;
	f32 sp7C;
	f32 sp78;
	f32 sp74;
	f32 sp68;
	s16 sp64;
	f32 temp_f0;
	f32 temp_f16;
	f32 var_f2;
	f32 var_f12;
	s16 var_t0;
	s16 var_v1;
	s32 temp_t6;
	s32 var_a2;
	s32 var_a2_2;
	s32 temp_v1_2;
	s8 var_a0;
	s8 var_v0;

	func_800056D0_62D0(arg0->unk0, arg0->unk4);
	func_800FA690_109640(arg0->unk0, arg0->unk4, arg0->unkE);
	D_80157A10 = 1.0f;

	if ((D_80048188 != 0) || (D_8013E5AC_14D55C[D_80157A0C].unk4 & 0x40)) {
		func_800137F0_143F0(D_80157A28);
		if ((D_80157A0C == 0x12) || (D_80157A0C == 0x15) || (D_80157A0C == 0x14) || (D_80157A0C == 0x13)) {
			if ((f32)((f64)sqrtf((f32)((arg1->stick_x * arg1->stick_x) + (arg1->stick_y * arg1->stick_y))) / D_80144478_153428) > 0.0f) {
				func_800EB534_FA4E4(&D_80157600, ANIM_WALKING, 0, 0.0f);
			}
		}
		func_800ED78C_FC73C(arg0, arg1);
	} else {
		var_a2 = D_80157A28;
		temp_t6 = var_a2 | 1;

		if (var_a2 & 0x200) {
			if (D_80157A0C != 0x23) {
				func_800EB534_FA4E4(&D_80157600, ANIM_DEFAULT, 0, 0.0f);
				var_a2 = D_80157A28;
			}
			func_800137F0_143F0(var_a2);
			if (D_80157600.unk40C == 0x38) {
				temp_f0 = D_80157600.unk410 * 2.0f;
			} else {
				temp_f0 = D_80157600.unk410;
			}
			func_8000CF4C_DB4C(D_80157600.unk404, &D_80157600, 0x10, temp_f0);
		} else {
			D_80157A28 = temp_t6;
			D_80157A28 = temp_t6 & ~8;

			func_800FB430_10A3E0(arg0, 0.0f);
			func_8000345C_405C(0x20);

			if (!(D_80157A28 & 4) && ((arg0->unk2 < (D_80222A70 - 0x24)) || (D_80159320 & 0x1000))) {
				D_801575C0 = (s16)((s32)((((f64)(f32)coss((u16)arg0->unkE) / 32768.0) * 16.0) + (f64)arg0->unk0));
				var_v1 = (s16)((s32)((((f64)(f32)sins((u16)arg0->unkE) / 32768.0) * 16.0) + (f64)arg0->unk4));
				spBA = (s16)(func_800B84D0_C7480(D_801575C0, var_v1) >> 8);
				D_801575C2 = var_v1;
				if ((((D_80222A70 - 0x24) >= spBA) && (spBA < (func_800B84D0_C7480(arg0->unk0, arg0->unk4) >> 8))) || (D_80159320 & 0x1000)) {
					func_800EB05C_FA00C();
					func_800EB534_FA4E4(&D_80157600, ANIM_DIVING, 0, 0.0f);
				}
			}

			var_a2_2 = D_80157A28;

			if ((arg1->button & 0x20) && ((D_80157A28 & 4) == 0)) {
				D_80157A28 |= 0x2000;
				var_a2_2 = D_80157A28;
			} else if ((arg1->button & 0x10) && ((D_80157A28 & 4) == 0)) {
				D_80157A28 |= 8;
				func_800EABE0_F9B90(arg0);

				var_a0 = arg1->stick_x;
				var_v0 = arg1->stick_y;

				if ((var_a0 >= -4) && (var_a0 < 5)) {
					var_a0 = 0;
				}
				if ((var_v0 >= -4) && (var_v0 < 5)) {
					var_v0 = 0;
				}
				if (var_a0 >= 0x3E) {
					var_a0 = 0x3D;
				}
				if (var_a0 < -0x3D) {
					var_a0 = -0x3D;
				}
				if (var_v0 >= 0x40) {
				}

				sp80 = (f32)((s16)D_80159020->unk0 / 4);
				sp84 = (f32)((s16)D_80159020->unk2 / 4);
				sp88 = (f32)((s16)D_80159020->unk4 / 4);
				sp96 = (s16)var_a0;
				sp74 = D_80047954;
				sp78 = D_80047958;
				sp7C = D_8004795C;

				D_80157570 = func_800EA7DC_F978C((s16)var_a0, (Vec3f *)&sp80, (Vec3f *)&sp74, 0x4000 - D_80157578, 40.0f);

				if (sp96 >= 0) {
					var_v1 = sp96;
				} else {
					var_v1 = -sp96;
				}

				temp_f16 = (f32)D_8003E820[var_v1] / 61.0f;
				if ((D_8013FC0C_14EBBC[0] - sp96) >= 0) {
					var_f2 = (f32)(D_8013FC0C_14EBBC[0] - sp96);
				} else {
					var_f2 = (f32)-(D_8013FC0C_14EBBC[0] - sp96);
				}

				if (var_f2 < D_8013FC10_14EBC0) {
					var_f2 = D_8013FC10_14EBC0 - 1.0f;
					if (D_8013FC10_14EBC0 < 1.0f) {
						var_f2 = 0.0f;
					}
				}

				var_f12 = (f32)(((f64)var_f2 / 40.0) + 1.0);
				if (var_f12 > 2.0f) {
					var_f12 = 2.0f;
				}

				D_8013FC0C_14EBBC[0] = sp96;
				D_8013FC10_14EBC0 = var_f2;

				if (sp96 < 0) {
					D_801575CC = (s32)((f32)(s16)(s32)(((f64)temp_f16 * -2.5 * 32768.0) / D_80144480_153430) * var_f12);
				} else {
					D_801575CC = (s32)((f32)(s16)(s32)(((f64)temp_f16 * 2.5 * 32768.0) / D_80144488_153438) * var_f12);
				}

				if (currentControllerStates[0].button & 0x8000) {
					D_801575CC *= 2;
				}

				arg0->unkE += D_801575CC;

				if (arg1->button & 2) {
					func_800EB534_FA4E4(&D_80157600, ANIM_ROLL_LEFT, 0, sp68);
				} else if (arg1->button & 1) {
					func_800EB534_FA4E4(&D_80157600, ANIM_ROLL_RIGHT, 0, sp68);
				} else if (arg1->button & 4) {
					func_800EB534_FA4E4(&D_80157600, ANIM_ROLL_FORWARD, 0, sp68);
				} else if ((D_80157A0C != 0x16) && (D_80157A0C != 0x17) && (D_80157A0C != 0x18)) {
					if (arg1->button & 0x2000) {
						D_80157A28 &= ~8;
						spA8 = *(s32 *)((u8 *)D_8013E460_14D410 + (D_801575DC << 5));
						func_800EB534_FA4E4(&D_80157600, spA8, 0, func_800EA604_F95B4((s16 *)arg0, (Vec3f *)&sp80));
						D_80157A28 &= ~1;
					} else {
						D_80157A28 |= 1;
						if ((D_8013E5AC_14D55C[D_80157A0C].unk4 & 8) == 0) {
							func_800EB534_FA4E4(&D_80157600, *(s32 *)((u8 *)D_8013E45C_14D40C + (D_801575DC << 5)), 0,
												func_800EA604_F95B4((s16 *)arg0, (Vec3f *)&sp80));
						}
					}
				}
				var_a2_2 = D_80157A28;
			} else if ((arg1->button & 0x2000) && ((D_80157A28 & 4) == 0)) {
				sp80 = (f32)((s16)D_80159020->unk0 / 4);
				sp84 = (f32)((s16)D_80159020->unk2 / 4);
				sp88 = (f32)((s16)D_80159020->unk4 / 4);

				temp_f0 = func_800EA604_F95B4((s16 *)arg0, (Vec3f *)&sp80);

				if (arg1->button & 2) {
					func_800EB534_FA4E4(&D_80157600, ANIM_ROLL_LEFT, 0, temp_f0);
				} else if (arg1->button & 1) {
					func_800EB534_FA4E4(&D_80157600, ANIM_ROLL_RIGHT, 0, temp_f0);
				} else if (arg1->button & 4) {
					func_800EB534_FA4E4(&D_80157600, ANIM_ROLL_FORWARD, 0, temp_f0);
				} else if ((D_80157A0C != 0x16) && (D_80157A0C != 0x17) && (D_80157A0C != 0x18)) {
					sp68 = temp_f0;
					func_800EBC94_FAC44(arg0, arg1);
					if ((D_8013E5AC_14D55C[D_80157600.unk40C].unk4 & 0x480) == 0) {
						func_800EB534_FA4E4(&D_80157600, *(s32 *)((u8 *)D_8013E460_14D410 + (D_801575DC << 5)), 0, temp_f0);
					}
					D_80157A28 &= ~1;
				}
				var_a2_2 = D_80157A28;
			} else {
				D_80157A28 |= 1;
				arg0->unk22 = 0;

				temp_f0 = sqrtf((f32)((arg1->stick_x * arg1->stick_x) + (arg1->stick_y * arg1->stick_y)));
				sp8C = temp_f0;
				sp90 = (f32)((f64)temp_f0 / D_80144490_153440);
				spB0 = sp90 * 15.0f;

				var_t0 = func_80003824_4424((f32)arg1->stick_x, (f32)-arg1->stick_y) - D_80157A40;
				D_8013E5AC_14D55C[16].unk10 = (s32)var_t0;

				if (D_8013E5AC_14D55C[D_80157A0C].unk4 & 0x480) {
					sp64 = var_t0;
					func_800EB534_FA4E4(&D_80157600, ANIM_DEFAULT, 0, 0.0f);
					var_t0 = sp64;
				}

				if (((f64)sp8C > 10.0) && (D_80157A0C != 0x10)) {
					if ((D_80157A0C == 0) && (D_80144498_153448 <= (f64)D_8013FC04_14EBB4[0]) && !(D_80159320 & 0x800000)) {
						s16 angleDiff = (s16)(arg0->unkE - var_t0);
						if ((angleDiff >= 0x4000) || (angleDiff < -0x3FFF)) {
							sp64 = var_t0;
							func_800EB534_FA4E4(&D_80157600, ANIM_RUN_TURN_LEFT, 0, 0.0f);
							D_8013E5AC_14D55C[16].unk10 = var_t0;
						} else {
							sp64 = var_t0;
							func_800EA8F8_F98A8(arg0, (s16)(func_80003824_4424((f32)arg1->stick_x, (f32)-arg1->stick_y) - D_80157A40), sp90);
						}
					} else {
						sp64 = var_t0;
						func_800EA8F8_F98A8(arg0, (s16)(func_80003824_4424((f32)arg1->stick_x, (f32)-arg1->stick_y) - D_80157A40), sp90);
					}
				}

				if (D_80157A0C == 0x10) {
					sp64 = var_t0;
					func_800DEA08_ED9B8((s16)(s32)arg0->unk4C, (s16)(s32)arg0->unk50, (s16)(s32)arg0->unk54, 0xA, 2, 1, 0x1E, 0xC1, 0xB4, 0x96,
										0x64);
				}

				if (D_80157A0C == 0x10) {
					s32 var_a0_2 = var_t0 - arg0->unkE;
					if (var_a0_2 < 0) {
						s16 temp_v1_5 = arg0->unkE;
						arg0->unkE = (s16)(s32)((f64)temp_v1_5 + ((f64)(var_t0 - temp_v1_5) * ((f64)(f32)func_800EB9B4_FA964(&D_80157600) / 7.0)));
						var_a0_2 = var_t0 - arg0->unkE;
					}
					if (var_a0_2 > 0) {
						s16 temp_v1_6 = arg0->unkE;
						arg0->unkE = (s16)(s32)((f64)temp_v1_6 - ((f64)(var_t0 - temp_v1_6) * ((f64)(f32)func_800EB9B4_FA964(&D_80157600) / 7.0)));
					}
				}

				temp_t6 = D_8013E5AC_14D55C[D_80157A0C].unk4;
				if (temp_t6 & 0x100) {
					spB0 = 0.0f;
				}
				if (!(temp_t6 & 0x800)) {
					func_800FB430_10A3E0(arg0, spB0);
				}

				if ((D_80157A28 & 4) && ((!(arg0->unk20 & 2) && ((D_80222A70 - 0x24) < arg0->unk2)) || (D_80222A70 < arg0->unk2))) {
					D_801575C0 = (s16)(s32)((f64)arg0->unk0 - (((f64)(f32)coss((u16)arg0->unkE) / 32768.0) * 16.0));
					D_801575C2 = (s16)(s32)((f64)arg0->unk4 - (((f64)(f32)sins((u16)arg0->unkE) / 32768.0) * 16.0));

					if ((D_80222A70 - 0x24) < (s16)(func_800B84D0_C7480(D_801575C0, D_801575C2) >> 8)) {
						func_800EB090_FA040();
						if (!(arg0->unk20 & 2)) {
							func_800EB534_FA4E4(&D_80157600, ANIM_SWIMMING_STANDUP, 0, 0.0f);
							osSyncPrintf(D_80144370_153320);
						}
					}
				}

				if ((D_80157A0C == 5) && (((s16)arg0->unk12 >> 5) < 0xA)) {
					func_800FB430_10A3E0(arg0, 20.0f);
				}

				var_a2_2 = D_80157A28;
				if (((var_a2_2 & 4) == 4) && (D_80157A0C != 5)) {
					if (D_80157A0C == 2) {
						func_800FB430_10A3E0(arg0, 5.0f);
						func_80137130_1460E0(arg0, (s16)((D_80052A8C & 1) + 0xA0), arg0->unk0, arg0->unk2, arg0->unk4);
					} else {
						func_800FB430_10A3E0(arg0, 0.0f);
					}
					var_a2_2 = D_80157A28;
				}
			}

			func_800137F0_143F0(var_a2_2);
			func_800ED78C_FC73C(arg0, arg1);
		}
	}

	arg0->unk6 = arg0->unkE;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EC484_FB434.s")
#endif

// CURRENT(4925)
#ifdef NON_MATCHING
s32 func_800ED55C_FC50C(UnkF9230Func800ED55CArg0 *arg0, s32 arg1) {
	s32 compareAngle;
	s32 bestDiff;
	s32 bestResult;
	s32 angleDiff;
	s16 i;
	s32 localThresholds[9];
	s32 localHighResults[9];
	s32 localLowResults[9];
	s32 *src;
	s32 *dst;
	s32 playerAngle;

	playerAngle = (s16)arg0->unkE;

	src = D_8013FC14_14EBC4;
	dst = localThresholds;
	while (src != (D_8013FC14_14EBC4 + 9)) {
		dst[0] = src[0];
		dst[1] = src[1];
		dst[2] = src[2];
		src += 3;
		dst += 3;
	}

	src = D_8013FC38_14EBE8;
	dst = localHighResults;
	while (src != (D_8013FC38_14EBE8 + 9)) {
		dst[0] = src[0];
		dst[1] = src[1];
		dst[2] = src[2];
		src += 3;
		dst += 3;
	}

	src = D_8013FC5C_14EC0C;
	dst = localLowResults;
	while (src != (D_8013FC5C_14EC0C + 9)) {
		dst[0] = src[0];
		dst[1] = src[1];
		dst[2] = src[2];
		src += 3;
		dst += 3;
	}

	compareAngle = (playerAngle + 0x10000) % 0x10000;
	compareAngle = ((arg1 + 0x18000) % 0x10000) - compareAngle;
	compareAngle = (compareAngle + 0x14000) % 0x10000;
	angleDiff = localThresholds[0] - compareAngle;
	if (angleDiff < 0) {
		angleDiff = -angleDiff;
	}

	bestDiff = 0xFA00;
	bestResult = 0x1A;

	if (angleDiff < 0xFA00) {
		bestDiff = angleDiff;
		bestResult = localLowResults[0];
		if (D_80157A3E >= 0x46) {
			bestResult = localHighResults[0];
		}
	}

	for (i = 1; i < 9; i += 2) {
		angleDiff = localThresholds[i] - compareAngle;
		if (angleDiff < 0) {
			angleDiff = -angleDiff;
		}

		if (angleDiff < bestDiff) {
			bestDiff = angleDiff;
			if (D_80157A3E >= 0x46) {
				bestResult = localHighResults[i];
			} else {
				bestResult = localLowResults[i];
			}
		}

		angleDiff = localThresholds[i + 1] - compareAngle;
		if (angleDiff < 0) {
			angleDiff = -angleDiff;
		}

		if (angleDiff < bestDiff) {
			bestDiff = angleDiff;
			if (D_80157A3E >= 0x46) {
				bestResult = localHighResults[i + 1];
			} else {
				bestResult = localLowResults[i + 1];
			}
		}

		i++;
		i--;
	}

	return bestResult;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800ED55C_FC50C.s")
#endif

#ifdef NON_MATCHING
void func_800ED78C_FC73C(VehicleInstance *arg0, OSContPad *arg1) {
	f32 spAC;
	s32 spA4;
	s32 spA0;
	f32 sp9C;
	f32 sp98;
	f32 sp94;
	s16 sp92;
	s16 sp90;
	s16 sp7E;
	s16 sp7C;
	s8 sp7A;
	s8 sp79;
	s8 sp78;
	f32 sp74;
	f32 sp60;
	f32 sp5C;
	f32 temp_f0_2;
	f32 temp_f12;
	f32 temp_f12_2;
	f32 temp_f12_3;
	f32 temp_f14;
	f32 temp_f14_2;
	f32 temp_f18;
	f32 temp_f18_2;
	f32 var_f0_2;
	f32 var_f2;
	f32 var_f2_2;
	f32 var_f2_3;
	f64 temp_f0;
	f64 temp_f0_3;
	f64 var_f0;
	s16 temp_a1_3;
	s16 temp_a2;
	s16 temp_a2_2;
	s16 temp_a2_3;
	s16 temp_a3;
	s16 temp_a3_2;
	s16 temp_v0_8;
	s16 temp_v1;
	s16 temp_v1_2;
	s16 temp_v1_3;
	s16 temp_v1_4;
	s16 temp_v1_7;
	s16 var_a3;
	s32 temp_a0;
	s32 temp_a0_2;
	s32 temp_a0_3;
	s32 temp_a1;
	s32 temp_a1_2;
	s32 temp_t5;
	s32 temp_v0;
	s32 temp_v1_6;
	s32 temp_v1_8;
	s32 var_a3_2;
	s32 var_v0;
	s32 var_v0_2;
	s8 temp_v0_6;
	s8 temp_v1_5;
	u16 temp_v0_7;
	s16 *temp_v0_2;
	VehicleInstance *temp_v0_3;
	s16 *temp_v0_4;
	VehicleInstance *temp_v0_5;

	if (D_8013E5AC_14D55C[D_80157600.unk40C].unk0 & 0x4000) {
		func_80133E94_142E44((s32) (D_80157600.unkC / 4.0f));
	}
	temp_v0 = D_80048188;
	if (temp_v0 != 0) {
		switch (D_801575E0.unk0) {
		case 0:
			if (D_80157600.unk40C != 0) {
				func_800EB534_FA4E4(&D_80157600, ANIM_WALKING, 0, 0);
			}
			spAC = 1.0f;
			if (D_80157600.unk424 == 0) {
				temp_a1 = *(s32 *)D_80157600.unk420;
				if (D_80157600.unk40C != temp_a1) {
					func_800EB534_FA4E4(&D_80157600, temp_a1, 0, 0);
				}
			}
			if (((Unk8007F878_404 *)D_80157600.unk404)->unkE50 == 0) {
				D_80157600.unk424 = (u8) (D_80157600.unk424 + 1);
				D_80157600.unk420 = (void *) ((u8 *) D_80157600.unk420 + 4);
				temp_a1_2 = *(s32 *)D_80157600.unk420;
				if (temp_a1_2 == 0xFF) {
					D_80048188 = 0;
					func_800EB534_FA4E4(&D_80157600, ANIM_DEFAULT, 0, 0);
				} else if (D_80157600.unk40C != temp_a1_2) {
					func_800EB534_FA4E4(&D_80157600, temp_a1_2, 0, 0);
				}
			}
			break;
		case 1:
			func_80136198_145148(1);
			D_80048188 = 0;
			func_800EB534_FA4E4(&D_80157600, ANIM_DEFAULT, 0, 0);
			break;
		case 2:
			if ((arg0->unkE & 0xFFFF) != (D_801575E0.unk12 & 0xFFFF)) {
				func_800EADF8_F9DA8(arg0, *((s16 *) &D_801575E0 + D_801575E0.unk4 + 9));
			} else if (D_80157600.unk40C != D_801575E0.unk16) {
				func_800EB534_FA4E4(&D_80157600, (s32) D_801575E0.unk16, 0, 0);
			} else if ((func_80118114_1270C4(D_80052542) != 0) && (D_80052544 == 0)) {
				if ((f64) D_8015EA30 == 0.0) {
					if ((((Unk8007F878_404 *)D_80157600.unk404)->unkE50 == 0) || (func_800EB9B4_FA964(&D_80157600) == 3)) {
						func_800153D8_15FD8(0x33);
						D_8015EA30 = D_801444B8_153468;
					}
				} else {
					if (((Unk8007F878_404 *)D_80157600.unk404)->unkE50 == 0) {
						func_800EB534_FA4E4(&D_80157600, ANIM_DEFAULT, 0, 0);
					}
					if ((f64) D_8015EA2C >= 1.0) {
						D_80048188 = 0;
						func_800EB534_FA4E4(&D_80157600, ANIM_DEFAULT, 0, 0);
					}
				}
			} else if (((Unk8007F878_404 *)D_80157600.unk404)->unkE50 == 0) {
				if (D_80157F68 <= 0) {
					gameplayMode = 6;
					D_80048188 = 0;
				} else {
					func_800EB534_FA4E4(&D_80157600, ANIM_DEFAULT, 0, 0);
				}
			}
			if (arg0->unk20 & 0x1000) {
				D_80048188 = 0;
			}
			if ((buildingInstances[D_80052540].unk8 >> 0xC) & 4) {
				D_80048188 = 0;
			}
			if ((D_80048188 == 0) && (arg0->unk1C <= 0)) {
				arg0->unk1C = 1;
			}
			break;
		case 3:
			if (vehicleInstances[D_80157E82].unk1C <= 0) {
				D_80048188 = 0;
			}
			temp_a1_3 = *((s16 *) &D_801575E0 + D_801575E0.unk4 + 9);
			if ((arg0->unkE & 0xFFFF) != (temp_a1_3 & 0xFFFF)) {
				func_800EADF8_F9DA8(arg0, temp_a1_3);
				D_801575C8 = 0;
				D_801575C4 = 0.0f;
			} else {
				if (D_80157600.unk40C != 0x5B) {
					func_800EB534_FA4E4(&D_80157600, ANIM_ENTER_VEHICLE, 0, 0);
				}
				if ((D_801575C8 == 0) && (func_800EB9B4_FA964(&D_80157600) == 5)) {
					func_800153D8_15FD8(0xF6);
					D_801575C8 = 1;
				}
				if (func_800EB9B4_FA964(&D_80157600) >= 5) {
					temp_v0_2 = (s16 *) &D_801575E0 + D_801575E0.unk4;
					temp_v1 = arg0->unk0;
					temp_a2 = arg0->unk2;
					temp_f18 = D_801575C4 + 1.0f;
					temp_a3 = arg0->unk4;
					D_801575C4 = temp_f18;
					temp_f14 = (f32) temp_v1 + (f32) ((f64) ((f32) (temp_v0_2[3] - temp_v1) * temp_f18) / 6.0);
					temp_f12 = (f32) ((f64) ((f32) (temp_v0_2[7] - temp_a3) * temp_f18) / 6.0);
					sp60 = (f32) temp_a2 + (f32) ((f64) ((f32) (temp_v0_2[5] - temp_a2) * temp_f18) / 6.0);
					sp5C = (f32) temp_a3 + temp_f12;
					func_800FB44C_10A3FC(arg0, temp_f14);
					func_800FB468_10A418(arg0, sp60);
					func_800FB484_10A434(arg0, sp5C);
					temp_v0_3 = &vehicleInstances[D_80157E82];
					temp_v1_2 = (vehicleSpecs[temp_v0_3->unk1A].unk38 * 6) + temp_v0_3->unk2;
					temp_a2_2 = (s32) D_80157600.unkC + arg0->unk2;
					if (((temp_v1_2 - 0xC8) < temp_a2_2) && (temp_a2_2 < (temp_v1_2 + 0x32))) {
						func_800E35E0_F2590(0xAA);
						func_80001144_1D44(0x32, 0xF, 5);
					}
				}
				if ((f64) D_801575C4 == 6.0) {
					func_800FB44C_10A3FC(arg0, (f32) ((s16 *) &D_801575E0)[D_801575E4 + 3]);
					func_800FB484_10A434(arg0, (f32) ((s16 *) &D_801575E0)[D_801575E4 + 7]);
					D_80048188 = 0;
					D_8004818C = 0;
					func_800EB534_FA4E4(&D_80157600, ANIM_DEFAULT, 0, 0);
					func_800FD510_10C4C0(D_80157E80, D_80157E82);
					func_800FDC30_10CBE0(D_80157E84);
					sp7C = arg0->unk0;
					sp78 = 0xC8;
					sp79 = 0xC8;
					sp7A = 0xC8;
					sp7E = arg0->unk4;
					func_800B99A8_C8958((Unk80152B80 *) &sp7C, 0x25, 0xD3, 0x84, (u8 *) &sp78, 0x34, 7, 0);
				}
				arg0->unk30 = 0.0f;
				arg0->unk34 = 0.0f;
				arg0->unk38 = 0.0f;
			}
			break;
		case 4:
			if ((D_80157600.unk40C != 0x5B) && (D_80157600.unk40C != 0x5C)) {
				D_801575C8 = 0;
				D_801575C4 = 0.0f;
				if (D_80157A28 & 4) {
					func_800EB534_FA4E4(&D_80157600, ANIM_EXIT_BOAT, 8, 0);
				} else {
					func_800EB534_FA4E4(&D_80157600, ANIM_ENTER_VEHICLE, 8, 0);
				}
			}
			if ((D_801575C8 == 0) && (func_800EB9B4_FA964(&D_80157600) == 5)) {
				func_800153D8_15FD8(0xF6);
				D_801575C8 = 1;
			}
			if (func_800EB9B4_FA964(&D_80157600) >= 5) {
				temp_v0_4 = (s16 *) &D_801575E0 + D_801575E0.unk4;
				temp_v1_3 = arg0->unk0;
				temp_a2_3 = arg0->unk2;
				temp_a3_2 = arg0->unk4;
				temp_f14_2 = (f32) temp_v1_3 + (f32) ((f64) ((f32) (temp_v0_4[3] - temp_v1_3) * D_801575C4) / 24.0);
				temp_f12_2 = (f32) ((f64) ((f32) (temp_v0_4[7] - temp_a3_2) * D_801575C4) / 24.0);
				sp60 = (f32) temp_a2_3 + (f32) ((f64) ((f32) (temp_v0_4[5] - temp_a2_3) * D_801575C4) / 24.0);
				sp5C = (f32) temp_a3_2 + temp_f12_2;
				func_800FB44C_10A3FC(arg0, temp_f14_2);
				func_800FB468_10A418(arg0, sp60);
				func_800FB484_10A434(arg0, sp5C);
			} else {
				temp_v0_5 = &vehicleInstances[D_80052B1C];
				temp_v1_4 = (vehicleSpecs[temp_v0_5->unk1A].unk38 * 6) + temp_v0_5->unk2;
				sp92 = temp_v1_4;
				sp90 = (s32) D_80157600.unkC + arg0->unk2;
				func_800FB44C_10A3FC(arg0, (f32) temp_v0_5->unk0);
				func_800FB484_10A434(arg0, (f32) vehicleInstances[D_80052B1C].unk4);
				if (((temp_v1_4 - 0x64) < sp90) && (sp90 < (temp_v1_4 + 0x5A))) {
					func_800E35E0_F2590(0xAA);
					func_80001144_1D44(0x32, 0xF, 5);
				}
			}
			temp_f18_2 = D_801575C4;
			temp_f0 = (f64) temp_f18_2;
			if (temp_f0 != 24.0) {
				if ((D_80222A70 >= arg0->unk2) && (temp_f0 > 19.0)) {
					D_801575C4 = temp_f18_2;
					goto block_76;
				}
			} else {
block_76:
				func_800FB44C_10A3FC(arg0, (f32) ((s16 *) &D_801575E0)[D_801575E0.unk4 + 3]);
				func_800FB468_10A418(arg0, (f32) ((s16 *) &D_801575E0)[D_801575E0.unk4 + 5]);
				func_800FB484_10A434(arg0, (f32) ((s16 *) &D_801575E0)[D_801575E4 + 7]);
				if ((D_80222A70 - 0x24) >= arg0->unk2) {
					func_800EB05C_FA00C();
					D_801575C4 = 24.0f;
					func_800EB534_FA4E4(&D_80157600, ANIM_TREAD_WATER, 4, 0);
				} else {
					func_800EB090_FA040();
					func_800EB534_FA4E4(&D_80157600, ANIM_DEFAULT, 0, 0);
				}
				D_80048188 = 0;
				sp7C = arg0->unk0;
				sp78 = 0xC8;
				sp79 = 0xC8;
				sp7A = 0xC8;
				sp7E = arg0->unk4;
				func_800B99A8_C8958((Unk80152B80 *) &sp7C, 0x25, 0xD3, 0x84, (u8 *) &sp78, 0x34, 7, 0);
			}
			arg0->unk30 = 0.0f;
			arg0->unk34 = 0.0f;
			arg0->unk38 = 0.0f;
			D_801575C4 = temp_f18_2 + 1.0f;
			break;
		}
	}
	if (temp_v0 == 0) {
		func_80136198_145148(0);
		temp_a0 = D_80157A28;
		var_v0 = temp_a0 & 0x10;
		if ((var_v0 != 0x10) && (((VehicleInstance *) D_80052B34)->unk1C <= 0)) {
			if (temp_a0 & 4) {
				D_80157A38 = 3;
			}
			func_800EB534_FA4E4(&D_80157600, ((s32 *) D_8013E59C_14D54C)[D_80157A38], 0, 0);
			D_80157A28 |= 0x10;
			osSyncPrintf(D_80144390_153340);
			var_v0 = D_80157A28 & 0x10;
		}
		if (var_v0 == 0x10) {
			func_8000CF4C_DB4C(D_80157600.unk404, &D_80157600, 0x10, D_80157600.unk410);
			return;
		}
		if ((f64) ((f32) arg0->unk1C / (f32) vehicleSpecs[arg0->unk1A].hitPoints) < 0.25) {
			D_80157A28 = temp_a0 | 0x400;
			if (D_80157600.unk40C == 0x24) {
				arg0->unk1C = (s16) (arg0->unk1C + 1);
			}
		} else if ((temp_a0 & 0x400) == 0x400) {
			D_80157A28 = temp_a0 & ~0x400;
			if (D_80157600.unk40C == 0x24) {
				func_800EB534_FA4E4(&D_80157600, ANIM_DEFAULT, 0, 0);
			}
		}
		temp_a0_2 = D_80157A28;
		if ((temp_a0_2 & 4) == 4) {
			spA4 = ANIM_SWIMMING;
			spA0 = ANIM_TREAD_WATER;
			if (D_80157600.unk40C != 0) {
				arg0->unk2 = (s16) (arg0->unk2 - 5);
			}
		} else {
			spA4 = ANIM_WALKING;
			if ((D_80222A70 - 0x24) >= arg0->unk2) {
				func_800EB05C_FA00C();
			}
			if ((temp_a0_2 & 0x400) == 0x400) {
				spA0 = ANIM_TIRED;
			} else {
				spA0 = ANIM_DEFAULT;
			}
		}
		temp_v0_6 = arg1->stick_x;
		temp_v1_5 = arg1->stick_y;
		temp_f0_2 = sqrtf((f32) ((temp_v0_6 * temp_v0_6) + (temp_v1_5 * temp_v1_5)));
		sp74 = temp_f0_2;
		if (D_801444C0_153470 < (f64) temp_f0_2) {
			sp74 = 70.0f;
		}
		temp_a0_3 = D_80157A28;
		temp_v1_6 = temp_a0_3 & 4;
		if (temp_v1_6 != 4) {
			temp_f0_3 = (f64) sp74;
			if (temp_f0_3 <= 10.0) {
				var_f2 = (f32) ((f64) D_8013FC04_14EBB4[0] - D_801444C8_153478);
				D_8013FC04_14EBB4[0] = var_f2;
				if (var_f2 < 0.0f) {
					var_f2 = 0.0f;
					D_8013FC04_14EBB4[0] = 0.0f;
				}
				spAC = var_f2;
			} else if (temp_f0_3 <= 30.0) {
				var_f2_2 = D_8013FC04_14EBB4[0];
				var_f0 = (f64) var_f2_2;
				if (D_801444D0_153480 < var_f0) {
					var_f2_2 = (f32) (var_f0 - D_801444D8_153488);
					D_8013FC04_14EBB4[0] = var_f2_2;
					var_f0 = (f64) var_f2_2;
				}
				if (var_f0 < D_801444D0_153480) {
					var_f2_2 = D_801444E0_153490;
					D_8013FC04_14EBB4[0] = var_f2_2;
				}
				spAC = var_f2_2;
			} else {
				var_f2_3 = D_8013FC04_14EBB4[0];
				temp_f12_3 = (f32) ((temp_f0_3 - 30.0) / 40.0);
				if (temp_f12_3 <= var_f2_3) {
					var_f0_2 = var_f2_3 - temp_f12_3;
				} else {
					var_f0_2 = -(var_f2_3 - temp_f12_3);
				}
				if ((f64) var_f0_2 < D_801444E8_153498) {
					D_8013FC04_14EBB4[0] = temp_f12_3;
					var_f2_3 = D_8013FC04_14EBB4[0];
				} else {
					if (temp_f12_3 < var_f2_3) {
						var_f2_3 = (f32) ((f64) var_f2_3 - D_801444E8_153498);
						goto block_125;
					}
					if (var_f2_3 < temp_f12_3) {
						var_f2_3 = (f32) ((f64) var_f2_3 + D_801444E8_153498);
block_125:
						D_8013FC04_14EBB4[0] = var_f2_3;
					}
				}
				spAC = var_f2_3;
			}
		} else {
			spAC = (f32) ((f64) sp74 / D_801444C0_153470);
		}
		temp_v0_7 = arg0->unk20;
		if ((temp_v0_7 & 2) && !(temp_v0_7 & 0x800) && (temp_v1_6 == 0)) {
			D_801575F8 += 1;
			temp_t5 = D_801575D8 + 1;
			D_801575D8 = temp_t5;
			if ((temp_t5 == 4) && (arg0->unk34 > 0.0f)) {
				temp_v0_8 = arg0->unkE - D_80157A2C;
				temp_v1_7 = -temp_v0_8;
				var_a3 = temp_v1_7;
				if (temp_v1_7 < temp_v0_8) {
					var_a3 = temp_v0_8;
				}
				if (var_a3 < 0x4000) {
					func_800EB534_FA4E4(&D_80157600, ANIM_FLAILING_FRONT, 0, 0);
				} else {
					func_800EB534_FA4E4(&D_80157600, ANIM_FLAILING_BACK, 0, 0);
				}
			}
		} else if (temp_v0_7 & 0x1000) {
			if (D_80157600.unk40C != 9) {
				func_800EB534_FA4E4(&D_80157600, ANIM_FLAILING_BACK, 0, 0);
			}
		} else if (D_80157600.unk40C == 8) {
			func_800EB534_FA4E4(&D_80157600, ANIM_ON_FRONT_STANDUP, 0, 0);
		} else if (D_80157600.unk40C == 9) {
			func_800EB534_FA4E4(&D_80157600, ANIM_ON_BACK_STANDUP, 0, 0);
		} else {
			D_801575D8 = 0;
		}
		if (((temp_a0_3 & 2) == 2) && (D_80157A34 == 0)) {
			func_80001144_1D44(0x46, 0xA, 0xA);
			if (!(arg0->unk20 & 2) && ((D_80157A28 & 4) != 4)) {
				func_800EB534_FA4E4(&D_80157600, func_800ED55C_FC50C(arg0, D_80157A2C), 0, 0);
			}
			D_80157A28 &= ~2;
			D_80157A34 = 5;
			func_80071148_800F8(1, 2);
		}
		if (D_80157E78 != 0) {
			D_80157E78 -= 1;
		}
		if (D_80157A34 != 0) {
			if (sp74 == 0.0f) {
				D_80157A34 = 0;
			} else {
				D_80157A34 -= 1;
			}
		}
		if ((temp_a0_3 & 0x1000) == 0x1000) {
			D_80157A28 = temp_a0_3 & ~0x1000;
		}
		if ((temp_a0_3 & 0x4000) == 0x4000) {
			D_80157A28 = temp_a0_3 & ~0x4000;
			if (!(arg0->unk20 & 2) && ((D_80157A28 & 4) != 4) && (D_801575F8 >= 0xB)) {
				func_800EB534_FA4E4(&D_80157600, ANIM_LAND, 7, 0);
			}
			D_801575F8 = 0;
		}
		if ((temp_a0_3 & 0x2000) == 0x2000) {
			if (D_80157600.unk40C != 0x30) {
				func_800EB534_FA4E4(&D_80157600, ANIM_USE_COMM_LINK, 0, 0);
			}
			if (((Unk8007F878_404 *) D_80157600.unk404)->unkE50 == 0) {
				func_800EB534_FA4E4(&D_80157600, ANIM_DEFAULT, 0, 0);
				func_8001A068_1AC68();
				D_80157A28 &= ~0x2000;
			}
		} else if (D_801575DC != D_80047948) {
			if ((temp_a0_3 & 4) != 4) {
				func_800EB534_FA4E4(&D_80157600, ANIM_HOLSTER_OBJ, 0, 0);
			}
			if ((func_800EB9B4_FA964(&D_80157600) >= 2) && ((s32) func_800EB9BC_FA96C(&D_80157600) == 6)) {
				osSyncPrintf(D_801443A4_153354, D_80047948);
				if ((D_80047948 >= 0xA) || (D_80047948 < 0)) {
					D_80047948 = 1;
				}
				if ((D_80047948 == 1) && (func_800EF0B0_FE060(D_8013E490_14D440) == 0)) {
					D_80047948 = 0;
				}
				D_801575DC = (s32) D_80047948;
			}
		}
		if (D_8013E5AC_14D55C[D_80157600.unk40C].unk0 & 0x80) {
			D_801575D0 = 0;
			if (func_800EB9C4_FA974(D_801575DC, &D_80157600) != 0) {
				D_80159236 = vehicleSpecs[arg0->unk1A].weapon1;
				func_800EABE0_F9B90(arg0);
				var_a3_2 = D_80158FEC;
				if (D_80158FEC != 0) {

				} else {
					var_a3_2 = D_80158FF4;
				}
				func_8012B150_13A100((s32) arg0, 0, (InputStruct_8012B150 *) D_80158FF4, var_a3_2);
			}
			if ((((Unk8007F878_404 *) D_80157600.unk404)->unkE50 == 0) && ((D_80157A28 & 1) == 1)) {
				if ((D_80157A28 & 8) == 8) {
					D_80157600.unk40C = (s32) *(&D_8013E45C_14D40C + (D_801575DC << 5));
				} else {
					func_800EB534_FA4E4(&D_80157600, ANIM_DEFAULT, 0, 0);
				}
			}
		}
		temp_v1_8 = D_80157600.unk40C;
		if (((D_80157A28 & 8) != 8) && (temp_v1_8 == ((s32 *) D_8013E45C_14D40C)[D_801575DC])) {
			func_800EB534_FA4E4(&D_80157600, ANIM_DEFAULT, 0, 0);
		}
		if (D_8013E5AC_14D55C[temp_v1_8].unk0 & 0x480) {
			sp94 = (f32) ((s16) D_80159020->unk0 / 4);
			sp98 = (f32) ((s16) D_80159020->unk2 / 4);
			sp9C = (f32) ((s16) D_80159020->unk4 / 4);
			spAC = func_800EA604_F95B4((s16 *) arg0, (Vec3f *) &sp94);
		}
		var_v0_2 = D_80157A28 & 8;
		if ((temp_v1_8 == 0x23) || (temp_v1_8 == 0x24)) {
			D_801575D0 += 1;
		} else if (D_801575D0 >= 0x65) {
			D_801575D0 = 0x64;
		}
		if (var_v0_2 == 8) {
			D_801575D0 = 0;
		}
		if ((D_801575D0 == 0x63) && (D_801575DC == 0)) {
			func_800EB534_FA4E4(&D_80157600, ANIM_COCK_GUN, 0, 0);
			var_v0_2 = D_80157A28 & 8;
			D_801575D0 = 0x64;
		}
		if (var_v0_2 != 8) {
			func_800EB7CC_FA77C(&D_80157600, spA0, spA4, spAC);
		}
		goto block_211;
	}
block_211:
	func_800EB8A4_FA854(&D_80157600, spAC);
	if (D_8013E5AC_14D55C[D_80157600.unk40C].unk0 & 4) {
	func_8000D8DC_E4DC((Unk8007F878_404 *) D_80157600.unk404, (Unk8007F878_404 *) D_80157600.unk408,
			   (AnimChannelState *) &D_80157600, 0x10, spAC, D_80157600.unk410);
	} else {
		if (D_80157600.unk40C == 0x38) {
			func_8000CF4C_DB4C(D_80157600.unk404, &D_80157600, 0x10, D_80157600.unk410);
		}
		func_8000CF4C_DB4C(D_80157600.unk404, &D_80157600, 0x10, D_80157600.unk410);
	}
	if ((arg0->unk20 & 0x1000) && (D_80157A28 & 0x20)) {
		func_8000CF4C_DB4C(D_80157600.unk404, &D_80157600, 0x10, D_80157600.unk410);
	}
	func_800EBA54_FAA04((Unk80052B40 *) arg0, D_80157600.unk40C, (AnimChannelState *) &D_80157600);
	if (D_80157600.unk40C != 0) {
		D_8013FC04_14EBB4[0] = 0.0f;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800ED78C_FC73C.s")
#endif

// CURRENT(200)
#ifdef NON_MATCHING
// Cont 2 button attempts to use weapon model 0 when changing weapon
s32 func_800EF0B0_FE060(s32 arg0) {
	s32 buf[2];
	s32 *ptr;
	s32 count;
	s32 sum;
	s8 byte;

	ptr = (s32 *)func_80012000_12C00(arg0);
	count = 0;
	sum = 0;

	do {
		buf[0] = ptr[0];
		ptr += 2;
		count++;
		buf[1] = ptr[-1];
		byte = *(s8 *)buf;
		sum += byte;
	} while (byte != -0x48 || count >= 0x39);

	if (currentControllerStates[CONTROLLER_TWO].button & BUTTON_Z) {
		return byte = 0;
	}

	if ((sum == -0x88E) && (count == 0x38)) {
		return 1;
	}

	return byte;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EF0B0_FE060.s")
#endif

// CURRENT(6578)
#ifdef NON_MATCHING
// This checks the player modifier and writes values that cause either
// normal or black adam to be rendered
void func_800EF14C_FE0FC(VehicleInstance *arg0) {
	struct {
		s32 unk0;
		s32 unk4;
		s32 unk8;
	} spAC;
	Unk80052B40 spA8;
	Unk80052B40 spA4;
	Unk80052B40 sp9C;
	f32 sp6C[10];
	struct {
		s32 unk0;
		s32 unk4;
		u16 unk8;
	} sp60;
	s32 i;
	u16 timer;

	for (i = 0; i < 10; i++) {
		((s32 *)sp6C)[i] = ((s32 *)D_8013FC80_14EC30)[i];
	}

	*(volatile s32 *)&sp60.unk0 = D_8013FCA8_14EC58[0];
	*(volatile s32 *)&sp60.unk4 = D_8013FCA8_14EC58[1];
	*(volatile u16 *)&sp60.unk8 = ((u16 *)D_8013FCA8_14EC58)[4];

	if (D_80157A3C != 0) {
		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
		gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);

		func_800039D0_45D0(NULL, NULL, &D_800311A0, D_8005BB38);
		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
		D_8005BB38 += 0x40;

		spA8.unk0 = ((s16 *)arg0)[0];
		spA8.unk2 = ((s16 *)arg0)[1];
		spA8.unk4 = ((s16 *)arg0)[2];
		spA4.unk2 = 0;
		spA4.unk4 = 0;
		spA4.unk0 = 0x4000 - ((s16 *)arg0)[7];
		sp9C.unk2 = (s16)(0x1000 / (D_80157A3C + 1));
		sp9C.unk0 = D_80157A3C;
		sp9C.unk4 = D_80157A3C;

		func_800039D0_45D0(&spA8, &spA4, &sp9C, D_8005BB38);
		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		D_8005BB38 += 0x40;

		spAC.unk0 = 0;
		spAC.unk8 = 0;
		spA4.unk0 = D_80157600.unk2 << 3;
		spA4.unk2 = D_80157600.unk4 << 3;
		spA4.unk4 = D_80157600.unk0 << 3;
		spAC.unk4 = (s32)(D_80157600.unkC * 65536.0f);

		func_8000C81C_D41C(&spAC.unk0, &spA4, NULL, (s32 *)D_8005BB38);
		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		D_8005BB38 += 0x40;

		gSPSegment(D_8005BB2C++, 0x07, D_8005BB38 & 0x1FFFFFFF);
		gSPSegment(D_8005BB2C++, 0x06, func_80011FAC_12BAC(((s32 *)D_8013E470_14D420)[D_801575DC << 3]));

		func_8000CC3C_D83C(&D_80157600, 0x10);

		sp9C.unk2 = 0x100;
		sp9C.unk0 = 0x100;
		sp9C.unk4 = 0x100;
		if ((D_80157600.unk40C == 0x38) && (func_800EB9B4_FA964(&D_80157600) == 3)) {
			if (((u16 *)D_8013FCB4_14EC64)[0] == 0) {
				func_800D0614_DF5C4(D_80052B34->unk0, D_80052B34->unk2 + 0x36, D_80052B34->unk4, 0x55, 0xFA, 0xA0, 0x50,
								 0);
				func_80001144_1D44(0x14, 0, 5);
				func_801371B8_146168(0, 0x16A, D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, 1.0f);
				((u16 *)D_8013FCB4_14EC64)[0] = 5;
			}

			sp9C.unk2 = (s16)(sp6C[(s32)func_800EB9BC_FA96C(&D_80157600)] * 256.0f);
			sp9C.unk0 = sp9C.unk2;
			sp9C.unk4 = sp9C.unk2;
		}

		i = D_8005BB38;
		D_8005BB38 += 0x40;
		func_800039D0_45D0(NULL, NULL, &sp9C, i);

		timer = (u16)D_8013FCB4_14EC64[0];
		if (timer > 0) {
			((u16 *)D_8013FCB4_14EC64)[0] = timer;
			if (gameplayMode == 1) {
				timer = timer - 1;
				((u16 *)D_8013FCB4_14EC64)[0] = timer;
			}
		}

		if (timer >= 6) {
			((u16 *)D_8013FCB4_14EC64)[0] = 5;
		}

		if (D_80052ACD & 2) {
			gSPDisplayList(D_8005BB2C++, (Gfx *)((s32)&D_50408F0 & 0x1FFFFFFF));
			return;
		}

		gSPDisplayList(D_8005BB2C++, (Gfx *)((s32)&D_10031E0 & 0x1FFFFFFF));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EF14C_FE0FC.s")
#endif

// CURRENT(491)
#ifdef NON_MATCHING
s32 func_800EF650_FE600(AlienInstance *arg0) {
	s32 pad;
	s32 pad2;
	s32 sp34;
	s32 pad3;
	f32 sp2C;

	sp34 = arg0->unk12 >> 5;
	if (sp34 < 2) {
		sp34 = 2;
	}
	if (sp34 >= 0xF) {
		sp34 = 0xE;
	}

	func_800EBA54_FAA04((Unk80052B40 *) arg0, D_80157A48.unk40C, &D_80157A48);

	{
			if (((temp & 0x40000000) == 0) && (D_80157E70 == 0)) {
				osSyncPrintf(D_801443BC_15336C);
				func_800EB534_FA4E4(&D_80157A48, (D_80157E74 >> 0xE) + 0x14, 0, 0);
			}
			D_80157E78 = 0x1E;
	}

	if (D_80157E78 != 0) {
		D_80157E78--;
	}

	if ((arg0->unk20 & 0x1000) && ((D_8013E5AC_14D55C[D_80157A48.unk40C].unk4 & 0x480) == 0)) {
		arg0->unk12 = 0;
		func_800EB534_FA4E4(&D_80157A48, *(s32 *) (D_8013E464_14D414 + (D_80157E7C << 5)), 0, 0);
	}

	if (D_8013E5AC_14D55C[D_80157A48.unk40C].unk4 & 0x80) {
		if (func_800EB9C4_FA974(D_80157E7C, &D_80157A48) != 0) {
			func_80087188_96138((((s32) arg0 - (s32) alienInstances) / 0x50) & 0xFF, 0, 0x18);
		}

		if ((((Unk8007F878_404 *) D_80157A48.unk404)->unkE50 == 0) && ((arg0->unk20 & 0x1000) == 0)) {
			func_800EB534_FA4E4(&D_80157A48, ANIM_DEFAULT, 0, 0);
		}
	}

	if (((arg0->unk24 == 3) || (arg0->unk24 == 5)) && (D_80157A48.unk40C != ANIM_BLACK_ADAM_POWERUP)) {
		func_800EB534_FA4E4(&D_80157A48, ANIM_BLACK_ADAM_POWERUP, 0, 0);
	}

	if ((arg0->unk24 == 6) && (D_80157A48.unk40C != ANIM_TIRED)) {
		func_800EB534_FA4E4(&D_80157A48, ANIM_TIRED, 0, 0);
	}

	if ((arg0->unk24 == 7) && (D_80157A48.unk40C != ANIM_SHOT_DEAD)) {
		func_800EB534_FA4E4(&D_80157A48, ANIM_SHOT_DEAD, 0, 0);
	}

	sp2C = (f32) ((f64) (sp34 - 2) / 12.0);
	func_800EB7CC_FA77C(&D_80157A48, ANIM_DEFAULT, ANIM_WALKING, sp2C);
	func_800EB8A4_FA854(&D_80157A48, sp2C);

	if (D_8013E5AC_14D55C[D_80157A48.unk40C].unk4 & 4) {
		func_8000D8DC_E4DC(
			D_80157A48.unk404,
			D_80157A48.unk408,
			&D_80157A48,
			0x10,
			sp2C,
			D_80157A48.unk410
		);
	} else {
		func_8000CF4C_DB4C(D_80157A48.unk404, &D_80157A48, 0x10, *(s32 *) &D_80157A48.unk410);
	}

	if (D_8013E5AC_14D55C[D_80157A48.unk40C].unk4 & 0x480) {
		return 1;
	}
	if (D_8013E5AC_14D55C[D_80157A48.unk40C].unk4 & 0x50) {
		return 2;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EF650_FE600.s")
#endif

// CURRENT(252)
#ifdef NON_MATCHING
void func_800EF9F0_FE9A0(s16 arg0)
{
	s32 modelDisplayList;
	AlienInstance *alien;
	Unk80052B40 sp5C;
	s32 spPad[2];
	Unk80052B40 sp48;
	alien = &alienInstances[arg0];
	modelDisplayList = alienSpecs[alien->specIndex].unk0;
	func_800039D0_45D0(NULL, NULL, &D_800311A0, D_8005BB38);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, (G_MTX_NOPUSH | G_MTX_LOAD) | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	sp48.unk2 = 0;
	sp48.unk4 = 0;
	sp5C.unk0 = alien->unk0;
	sp5C.unk2 = alien->unk2;
	sp5C.unk4 = alien->unk4;
	sp48.unk0 = 0x4000 - alien->unk6;
	func_800039D0_45D0(&sp5C, &sp48, &D_800311A0, D_8005BB38);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, (G_MTX_NOPUSH | G_MTX_MUL) | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	sp5C.unk0 = (sp5C.unk4 = 0);
	sp48.unk0 = D_80157A48.unk2 << 3;
	sp48.unk2 = D_80157A48.unk4 << 3;
	sp48.unk4 = D_80157A48.unk0 << 3;
	sp5C.unk2 = (s16)D_80157A48.unkC;
	func_800039D0_45D0(&sp5C, &sp48, NULL, D_8005BB38);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, (G_MTX_NOPUSH | G_MTX_MUL) | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gSPSegment(D_8005BB2C++, 0x07, D_8005BB38 & 0x1FFFFFFF);
	func_8000CC3C_D83C((AnimChannelState *)(&D_80157A48), 0x10);
	gSPDisplayList(D_8005BB2C++, modelDisplayList);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EF9F0_FE9A0.s")
#endif

void func_800EFC28_FEBD8(u8 arg0) {
	s16 idx;
	AlienInstance *alien;

	idx = func_8007956C_8851C(0x12);
	alien = &alienInstances[idx];
	alien->unk0 = D_80052B34->unk0;
	alien->unk4 = D_80052B34->unk4 + 0x50;
	if (arg0 == 0) {
		alienSpecs[arg0].unk0 = (s32)&D_5040770;
		alien->unk24 = 0x10;
	}
}
