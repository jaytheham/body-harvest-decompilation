#ifndef VARIABLES_US_H
#define VARIABLES_US_H

#include "PR/sched.h"

typedef enum Controller {
	CONTROLLER_ONE = 0,
	CONTROLLER_TWO = 1,
	CONTROLLER_THREE = 2,
	CONTROLLER_FOUR = 3
} Controller;

enum ButtonEnum {
	BUTTON_NONE = 0,
	BUTTON_D_RIGHT = 0x0100,
	BUTTON_D_LEFT = 0x0200,
	BUTTON_D_DOWN = 0x0400,
	BUTTON_D_UP = 0x0800,
	BUTTON_START = 0x1000,
	BUTTON_Z = 0x2000,
	BUTTON_B = 0x4000,
	BUTTON_A = 0x8000,
	BUTTON_C_RIGHT = 0x0001,
	BUTTON_C_LEFT = 0x0002,
	BUTTON_C_DOWN = 0x0004,
	BUTTON_C_UP = 0x0008,
	BUTTON_R = 0x0010,
	BUTTON_L = 0x0020
};
typedef u16 Button;

// declared here because Controller and Button are needed
s32 isButtonNewlyPressed(Controller controllerNum, Button buttonMask);

typedef enum GameplayMode {
	GAMEPLAY_MODE_LEVEL_MAP = 0,
	GAMEPLAY_MODE_UNK1 = 1,
	GAMEPLAY_MODE_UNK2 = 2, // pause menu?
	GAMEPLAY_MODE_UNK3 = 3, // Cutscene mode?
	GAMEPLAY_MODE_UNK4 = 4,
	GAMEPLAY_MODE_UNK5 = 5,
	GAMEPLAY_MODE_UNK6 = 6, // inside building?
	GAMEPLAY_MODE_UNK7 = 7,
	GAMEPLAY_MODE_UNK8 = 8,
	GAMEPLAY_MODE_UNK9 = 9, // talking to an NPC?
	GAMEPLAY_MODE_END_OF_LEVEL = 0xA,
	GAMEPLAY_MODE_UNKB = 0xB,
	GAMEPLAY_MODE_UNKC = 0xC,
	GAMEPLAY_MODE_UNKD = 0xD,
	GAMEPLAY_MODE_UNKE = 0xE,
	GAMEPLAY_MODE_UNKF = 0xF,
	GAMEPLAY_MODE_INVENTORY = 0x10
} GameplayMode;

typedef enum Level {
	LEVEL_GREECE = 1,
	LEVEL_JAVA = 2,
	LEVEL_AMERICA = 3,
	LEVEL_SIBERIA = 4,
	LEVEL_COMET = 5
} Level;

extern u8 D_80047678;
extern s32 D_80031120;
extern u8 D_30130;
extern u8 D_3F320;
extern u8 D_1003990[];
extern u8 D_1010C80[];
extern u8 D_1011C80[];
extern u8 D_1012C80[];
extern u8 D_1013080[];
extern u8 D_80031160;
extern Unk800311A0 D_800311A0;
extern Mtx D_80031120_31D20;
extern Gfx D_800311D0[];
extern Gfx D_80031200[];
extern Gfx D_80031230[];
extern Gfx D_80031260[];
extern u32 D_800312F0_31EF0;
extern s32 D_800312F4_31EF4;
extern u32 D_800312F8_31EF8;
extern s32 D_800312FC_31EFC;
extern s32 D_80031300_31F00;
extern s32 D_80031304;
extern Unk80047FB8 D_80031310_31F10[5];
extern s32 D_80031374_31F74[]; /* weapon damage shift table */
extern s32 D_800313C4_31FC4;
extern s16 D_800313C8_31FC8;
extern s32 D_800313CC;
extern f32 D_80036C88;
extern s16 D_800313C8;
extern s16 D_800313D0; // Language
extern s16 D_800313E4_31FE4;
extern u16 D_80031648_32248;
extern u8 D_800313E8;
extern u8 D_800313EC;
extern u8 D_800313F0;
extern u8 D_800313F4; // World fog alpha value
extern s16 D_800313F8; // World fog near distance
extern u16 D_80257184;
extern s16 D_80257188;
extern s16 D_8025718A;
extern u16 D_802571B2;
extern s16 D_802571B6;
extern s16 D_802571B8;
extern s16 D_800313FC; // World fog far distance
extern s32 leomecha_bss_0004;
extern s32 D_80031410;
extern s32 D_80031414;
extern s32 D_80031420;
extern u32 D_80031424[];
extern s32 D_8003142C;
extern s32 D_80031430[];
extern s32 D_8003144C;
extern s32 D_80031450;
extern s32 D_80031454;
extern Unk80031424 D_80031474;
extern s32 D_8003147C;
extern s32 D_800314A0;
extern s32 D_800314A4;
extern s8 D_800314C4;
extern s16 D_800314D0_320D0[];
extern s16 D_80031650_32250[];
extern s8 D_80031720_32320[]; // maxHumanDeathsAllowed?
extern OSMesg D_800314CC;
extern u8 D_80031B58_32758;
extern Vp D_80031B60_32760[];
extern s32 D_80031B84;
extern s32 D_80031C68_32868[];
extern s8 D_80031CA4;
extern s16 D_80031CD4_328D4;
extern f32 D_800323BC_32FBC[];
extern s8 D_80033C5C_3485C[];
extern u8 D_80033C6C_3486C;
extern u8 D_80033C6C_W;
extern s8 D_80033C70_34870[];
extern u8 D_80033C80_34880;
extern u8 D_80033C80_W;
extern s8 D_80033C84_34884[];
extern u8 D_80033C88_34888;
extern u8 D_80033C88_W;
extern s16 D_80033C90_34890;
extern s16 D_80033C94_34894;
extern Unk800190D4 D_8003429C[];
extern u8 D_80034453_35053[];
extern char D_8003828C_38E8C;
extern char D_800382A0_38EA0; /* osSyncPrintf format string */
extern char D_800382C8_38EC8; /* osSyncPrintf format string */
extern f32 D_80032D88_33988;
extern f32 D_800382F0_38EF0;
extern f64 D_800382F8_38EF8;
extern f32 D_80038300_38F00;
extern WeaponLevelSpec D_80032EB8_33AB8[][21];
extern WeaponLevelSpec D_800330B0_33CB0[][21];
extern f32 D_80038324_38F24;
extern f32 D_80038328_38F28;
extern f32 D_8003832C_38F2C;
extern f64 D_80038330_38F30;
extern f32 D_80038338_38F38;
extern f32 D_8004DCC0;
extern u64 D_80035610;
extern char D_80037100_37D00[];
extern f32 D_80037120_37D20;
extern f32 D_80037124_37D24;
extern f32 D_80037128_37D28;
extern f32 D_8003712C_37D2C;
extern f32 D_80037130_37D30;
extern f32 D_80037578_38178;
extern f64 D_80037580_38180;
extern f64 D_80037600_38200;
extern f32 D_80037450_38050;
extern f32 D_80037454_38054;
extern f32 D_80037650_38250;
extern f32 D_80037654_38254;
extern f32 D_80037658_38258;
extern f64 D_80037138_37D38;
extern u8 D_80036840[]; // Rumble pak(tm) detected!
extern char D_8003685C_3745C; /* osSyncPrintf format string - save version mismatch */
extern char D_80036870_37470; /* osSyncPrintf format string - save checksum mismatch */
extern char D_80036884_37484; /* osSyncPrintf format string - save score */
extern char D_80036894_37494; /* osSyncPrintf format string - save humans killed */
extern char D_800368A0_374A0; /* osSyncPrintf format string - save seconds elapsed */
extern char D_800368AC_374AC; /* osSyncPrintf format string */
extern char D_800368C4_374C4; /* osSyncPrintf format string - save level/warp */
extern char D_800368DC_374DC; /* osSyncPrintf format string - save warp point */
extern char D_800368F4_374F4; /* osSyncPrintf format string - save play time */
extern char D_80036904_37504; /* osSyncPrintf format string */
extern char D_80036910_37510; /* osSyncPrintf format string - save weapon slot */
extern char D_8003692C_3752C; /* osSyncPrintf format string */
extern char D_80036930_37530; /* osSyncPrintf format string */
extern char D_80036938_37538; /* osSyncPrintf format string */
extern char D_80036940_37540; /* osSyncPrintf format string - save D_80048026 */
extern char D_8003696C_3756C; /* osSyncPrintf format string */
extern char D_80036984_37584; /* osSyncPrintf format string */
extern char D_8003698C_3758C; /* osSyncPrintf format string - save D_80047F98 */
extern char D_800369A0_375A0; /* osSyncPrintf format string - save D_8004D154 */
extern char D_800369B4_375B4; /* osSyncPrintf format string - save D_8004D158 */
extern char D_800369C4_375C4; /* osSyncPrintf format string */
extern char D_800369D0_375D0; /* osSyncPrintf format string */
extern char D_80036A04_37604; /* osSyncPrintf format string - save weapon damage */
extern char D_80036A20_37620; /* osSyncPrintf format string - save D_80048030 */
extern char D_80036A38_37638; /* osSyncPrintf format string - save D_80052ACD */
extern char D_80036A48_37648; /* osSyncPrintf format string - save D_8004815x */
extern char D_80036A68_37668; /* osSyncPrintf format string */
extern char D_80036A6C_3766C; /* osSyncPrintf format string */
extern char D_80036A8C_3768C; /* osSyncPrintf format string - load score */
extern char D_80036AA0_376A0; /* osSyncPrintf format string - load humansKilled */
extern char D_80036AAC_376AC; /* osSyncPrintf format string - load secondsElapsed */
extern char D_80036AB8_376B8; /* osSyncPrintf format string */
extern char D_80036AD4_376D4; /* osSyncPrintf format string - load level/warp */
extern char D_80036AEC_376EC; /* osSyncPrintf format string - load warp point */
extern char D_80036AFC_376FC; /* osSyncPrintf format string - load D_80031420 */
extern char D_80036B0C_3770C; /* osSyncPrintf format string */
extern char D_80036B18_37718; /* osSyncPrintf format string - load weapon slot */
extern char D_80036B1C_3771C; /* osSyncPrintf format string */
extern char D_80036B20_37720; /* osSyncPrintf format string */
extern char D_80036B28_37728; /* osSyncPrintf format string - load bitflags */
extern char D_80036B30_37730; /* osSyncPrintf format string - load D_80048026 */
extern char D_80036B60_37760; /* osSyncPrintf format string */
extern char D_80036B78_37778; /* osSyncPrintf format string - load D_8004DC50 */
extern char D_80036B80_37780; /* osSyncPrintf format string - load D_80047F98 */
extern char D_80036B94_37794; /* osSyncPrintf format string - load D_80047F98 clamped */
extern char D_80036BA4_377A4; /* osSyncPrintf format string - load D_8004D154 */
extern char D_80036BB8_377B8; /* osSyncPrintf format string - load D_8004D158 */
extern char D_80036BC8_377C8; /* osSyncPrintf format string */
extern char D_80036BD4_377D4; /* osSyncPrintf format string - load weapon damage */
extern char D_80036BF4_377F4; /* osSyncPrintf format string - load D_80048030 */
extern char D_80036C0C_3780C; /* osSyncPrintf format string - load old D_80052ACD */
extern char D_80036C1C_3781C; /* osSyncPrintf format string - load new D_80052ACD */
extern char D_80036C2C_3782C; /* osSyncPrintf format string - load D_8004815x */
extern char D_80036C4C_3784C; /* osSyncPrintf format string */
extern char D_80036C50_37850; /* osSyncPrintf format string - load failed */
extern char D_80036D68_37968;
extern char D_80036D6C_3796C;
extern char D_80036D70_37970;
extern Unk80052B40 D_800315C4_321C4;
extern Unk80052B40 D_800315CC_321CC;
extern s32 D_800315D4_321D4;
extern Vtx D_800315D8_321D8[];
extern s32 D_800315D4_W;
extern f32 D_80031618_32218;
extern s32 D_8003161C_3221C;
extern char D_80036D74_37974; /* osSyncPrintf format string - callback table full warning */
extern char D_80036DA4_379A4;
extern char D_80036DBC_379BC;
extern char D_80036DD0_379D0; /* osSyncPrintf format string */
extern char D_80036DD8_379D8; /* osSyncPrintf format string */
extern char D_80036DE4_379E4; /* osSyncPrintf format string */
extern char D_80036DF4_379F4; /* osSyncPrintf format string */
extern char D_80036E0C_37A0C; /* osSyncPrintf format string */
extern char D_80036E20_37A20; /* osSyncPrintf format string */
extern char D_80036E34_37A34; /* osSyncPrintf format string */
extern char D_80036E38_37A38; /* osSyncPrintf format string */
extern char D_80036E48_37A48; /* osSyncPrintf format string */
extern char D_80036E58_37A58; /* osSyncPrintf format string */
extern char D_80036E74_37A74; /* osSyncPrintf format string */
extern char D_80036E90_37A90; /* osSyncPrintf format string */
extern char D_80036E9C_37A9C; /* osSyncPrintf format string */
extern char D_80036EAC_37AAC; /* osSyncPrintf format string */
extern char D_80036EBC_37ABC; /* osSyncPrintf format string */
extern char D_80036ECC_37ACC; /* osSyncPrintf format string */
extern char D_80036EE0_37AE0; /* osSyncPrintf format string */
extern char D_80036EEC_37AEC; /* osSyncPrintf format string */
extern char D_80036EFC_37AFC; /* osSyncPrintf format string */
extern char D_80036F1C_37B1C; /* osSyncPrintf format string */
extern char D_80036F38_37B38; /* osSyncPrintf format string */
extern char D_80036F50_37B50; /* osSyncPrintf format string */
extern char D_80036F6C_37B6C; /* osSyncPrintf format string */
extern char D_80036F90_37B90; /* osSyncPrintf format string */
extern char D_80036FB4_37BB4; /* osSyncPrintf format string */
extern char D_80036FC8_37BC8; /* osSyncPrintf format string */
extern u8 D_80036C64[];
extern u8 D_80036C74[];
extern u8 D_8004337D;
extern u16 D_8003D000_3DC00[];
extern u16 D_8003D800_3E400[];
extern u8 D_8003DFD4[];
extern u8 D_8003DFD4_3EBD4[];
extern u8 D_8003E000[];
extern s16 D_8003E0EE[];
extern GateEntry D_8003E0FC[5][8]; // shield wall gates by level

extern Unk80042DA8 D_80042DA8;
extern Unk80042DB8 D_80042DB8;
extern Unk80042DB8 D_80042DCC;
extern u32 D_800431A0;
extern s32 D_800431A4;
extern s32 D_800431A8;
extern s32 D_800431AC;
extern f32 D_800431B4;
extern u8 D_80043243;
extern OSMesgQueue D_80043388;
extern OSPfs D_80047610;
extern Unk80047588 currentControllerStates[4]; // 0x80047588

extern u16 D_800475D8[];
extern u16 D_800475DA;
extern u16 D_800475DC;
extern u16 D_800475DE;
extern u16 previousControllerButtonStates[4]; // 0x800475E0
extern u16 D_800475E2;
extern u16 D_800475E4;
extern u16 D_800475E6;
extern u16 D_80047588;
extern u16 D_80047588_W;
extern s8 D_8004758A;
extern u16 D_8004758E;
extern u16 D_80047594;
extern u16 D_8004759A;
extern s8 D_800475A2;
extern Unk80047588 D_800475B2;
extern u32 D_800475F8;
extern u32 D_800475FC;
extern s32 D_80047600;
extern s32 D_80047604;
extern s32 D_80047584;
extern u32 D_8004767C;
extern u32 D_80047680;
extern u32 D_80047688;
extern u32 D_8004768C;
extern u32 D_80047690;
extern u32 D_80047698;
extern s16 D_800476A0;
extern s16 D_800476A2; // enables input?
extern s32 D_800476A4;
extern s32 D_800476A8;
extern s32 D_800476AC;
extern s32 D_800476B0;
extern Unk800476C8 D_800476C8[2];
extern Unk800476C8 D_80047708;
extern s16 D_80047720;
extern s16 D_80047722;
extern s32 D_8004772C;
extern s32 D_80047730;
extern s32 D_80047734;
extern u8 D_80047738;
extern u8 D_80047739;
extern u8 D_8004773A;
extern Unk8004773C D_8004773C;
extern Unk8004773C D_80047740;
extern u8 D_80047743; // World fog red value
extern u8 D_80047744; // World fog green value
extern u8 D_80047745; // World fog blue value
extern u16 D_80047748;
extern s16 D_8004794A;
extern s16 D_80047948;
extern u8 D_8004794C;
extern s16 D_80047950;
extern f32 D_80047954;
extern f32 D_80047958;
extern f32 D_8004795C;
extern s16 D_80047970[256];
extern s32 D_80047B70;
extern u8 D_80047F80;
extern Unk80047FB8 D_80047FB8[5];
extern Unk80047FB8 D_8004801C;
extern s32 D_80048020;
extern u8 D_800431C8;
extern u8 D_800431C9;
extern s32 D_80047F88;
extern s32 D_80047F8C;
extern s32 D_80047F94;
extern u8 D_80047F97;
extern s32 D_80047F98;
extern s32 currentSaveFileIndex;
extern Level currentLevel; // 80047f90
extern s32 D_80047F9C; // WarpPointNumber
extern s32 D_80047FA0;
extern u8 D_80047FA8[6]; /* save data bytes */
extern u8 D_80047FAE;
extern s16 D_80048026;
extern s16 D_80048028;
extern s32 D_8004802C;
extern u8 D_80048024;
extern u8 D_80048025;
extern s32 showDemoText;
extern u8 weaponSlots[7]; // 80048138
extern u8 D_80048139;
extern u8 D_8004813A;
extern u8 D_8004813F;
extern s16 D_80048140[];
extern s16 D_8004815C;
extern s16 D_8004815E;
extern s16 D_80048160;
extern s16 D_80048162;
extern s16 D_80048156;
extern s8 D_80048168; // numHumansEatenToSpawnMutant
extern s16 D_8004816A; // numHumansKilled
extern s16 D_8004816E;
extern s16 D_80048170;
extern s16 D_80048176;
extern s16 D_800481A4[];
extern u8 D_800481B2[];
extern s16 D_800481B6;
extern u8 D_800481BD;
extern s32 D_80048178;
extern s32 D_8004817C;
extern s32 D_80048180;
extern s32 D_80048184;
extern s32 D_80048188;
extern s32 D_80048190;
extern s32 D_80048194;
extern AlienInstance alienInstances[]; // 0x80048198
extern s16 D_800481DD[];
extern AlienWaveEntry D_8003BCC0[][12];
extern u8 D_8003BCC6;
extern char D_80142B6C_151B1C;
extern char D_80142B7C_151B2C;
extern char D_80142BA0_151B50;
extern s32 D_8004D148; // is Snared cheat disabled
extern s32 D_8004D150;
extern s32 D_8004D154;
extern s32 D_8004D158;
extern u8 D_8004D160[];
extern u8 D_8004D161[];
extern u8 D_8004D180[];
extern u8 D_8004D1B0[];
extern u8 D_8004D1B1;
extern u8 D_8004D1B9;
extern s16 D_8004D1C0;
extern u8 D_8004D348[];
extern u8 D_8004D350[];
extern Unk8004D1C8 D_8004D1C8[];
extern u8 D_80047F93;
extern AlienInstance D_8004D0F8[]; // alien array base
extern BitFlags64 D_8004DC48;
extern Flags2x32 D_8004DC50;
extern u32 D_8004DC54; // same address as D_8004DC50.unk4
extern s32 D_8004DC40;
extern u8 D_8004DC5C;
extern s16 D_8004DC60;
extern s16 D_8004DCA8;
extern u16 D_8004DC5E;
extern s32 D_8004DC68[4];
extern s32 D_8004DC74; /* = D_8004DC68[3] */
extern VehicleInstance vehicleInstances[]; // 8004DCD0
extern Unk80050ADA D_80050ADA[]; // 0x80050ADA
extern u8 D_80050ADE[];
extern u8 D_80050AE0[];
extern BuildingInstance D_80050AF0[];
extern s8 D_80050C0B;
extern s8 D_800519E7;
extern u32 D_80051008;
extern u32 D_80051038;
extern u32 D_800510B0;
extern u32 D_800510C8;

extern BuildingInstance buildingInstances[0xFF];
extern u32 buildingInteriorToLoadId;
extern Unk800522C0 D_800522C0[0x20];
extern s32 D_8015EB7C;
extern Unk800522C0 D_8005252C;
extern s32 D_80052540;
extern s16 D_80052542;
extern s32 D_80052544;
extern s16 D_80052546;
extern u8 D_80052547;
extern u32 D_80052A90; // millseconds played in current level
extern s32 D_80052A88;
extern s32 D_80052A8C;
extern Unk80052A94 *D_80052A94; // This is a ptr to a [512][512] array of Heightmap data? Is 256x256 s16?
extern s8 D_8015273E;
extern s16 D_802DE468;
extern s16 D_802DE46A;
extern char D_802DE2F0_196E00[];
extern u8 D_8021F250[];
extern Unk80052A98 D_80052A98[]; // LevelStats
extern u16 D_80052A9C;
extern s32 D_80052AA0;
extern u16 D_80052AA4;
extern s16 D_80052AC8;
extern u8 D_80052ACA;
extern u8 D_80052ACB; // Rendering Flags? 1=Shadows 2=Objects
extern u8 D_80052ACC;
extern u8 D_80052ACD; // bitfield? x02 = black adam model
extern s32 D_80052AD0;
extern s32 D_80052AD4;
extern s32 D_80052AD8;
extern Unk80052B2C D_80052AE8;
extern s32 D_80052550;
extern s32 D_80052558;
extern GameplayMode gameplayMode; // 80052adc
extern Unk80052B2C* D_80052B2C;
extern s32 D_80052B38;
extern s32 D_80052B3C;
extern VehicleInstance* D_80052B34; // Ptr to active vehicle instance
extern Unk80052B40 D_80052B40;
extern Unk80052B40 D_80052B48;
extern Unk80052B40 D_80052B50;
extern Mtx D_80052B60;
extern Mtx D_80052BA0;
extern s8 D_80053BDF;
extern s8 D_80052BE0[0x1000];
extern s16 D_80053BE0;
extern s16 D_80053BE2;
extern s16 D_80053BE4;
extern f32 D_80053BE8;
extern f32 D_80053BEC;
extern s16 D_80053BF0;
extern u8 D_80053BF1;
extern s16 D_80053BF2;
extern u8 D_80053BF3;
extern s16 D_80053BF4;
extern u8 D_80053BF5;
extern s16 D_80053BF6;
extern s16 D_80053BF8;
extern u8 D_80053BF9;
extern s16 D_80053BFA;
extern u8 D_80053BFB;
extern s16 D_80053BFC;
extern u8 D_80053BFD;
extern s16 D_80053BFE;
extern s16 D_80053C80;
extern s16 D_80053C82;
extern s16 D_80053C84;
extern s16 D_80053C86;
extern s16 D_80053C88;
extern s16 D_80053C90;
extern s16 D_80053C92;
extern s16 D_80053C94;
extern s16 D_80053C96;
extern s32 D_80053C8C;
extern s32 D_80053C98;
extern s32 D_80054668[];
extern s32 D_80054680;
extern Gfx *D_8005BB2C;
extern Gfx *D_8005BB30;
extern Vtx *D_8005BB34;
extern s32 D_8005BB38;
extern s32 D_8005BB3C;
extern s32 D_8005BB40;
extern s32 D_8006AA6C;
extern u16 D_8013D50C;
extern s16 D_8013D510;
extern s32 D_8013D580;
extern TileEntry D_801479B0[];
extern u8 D_80147C30_156BE0[];
extern u16 D_80147F00_156EB0[5][6];
extern TileCoord D_801475F0[];
extern s8 D_8014667F_15562F[];
extern Unk80146688 D_80146688_155638[][0x20];
extern f32 D_801424E0;
extern f32 D_8014ED0C;
extern f32 D_8014ED10;
extern f32 D_8014ED14;
extern s32 D_8015EA14;
extern s32 D_8015EA18;
extern s32 D_8015EA1C;
extern u8 D_80050AE9;
extern u8 D_3058A40[];
extern u8 D_3059BA0[];
extern u8 D_305AFA0[];
extern u8 D_8F4960[];
extern s8 D_800319C1_325C1;
extern u8 D_5040770[];
extern u8 D_5055C00;
extern u8 D_80157E90[];
extern u8 D_1009C70[];
extern u8 D_1001B50[];
extern u8 D_10031E0[];
extern u8* D_8005BB20;
extern s32 D_8005BB24;
extern s32 D_8005BB28;
extern u8 D_801CE710;
extern s32 D_8005BB48[];
extern s32 D_8005BB4C[];
extern s32 D_8005BB50;
extern s32 D_8005BB54;
extern s32 D_8005BF58;
extern s32 D_8005BF5C;
extern s32 D_8005C764;

extern Unk8006AA80Node *D_8006AA80;
extern Unk8006AA84Node *D_8006AA84;
extern Unk8006AA84Node *D_8006AA88[];
extern s32 D_8006AAD0[];
extern s32 D_8006ABB8[];
extern s32 D_80031CA0_328A0;
extern s16 D_80033B4C_3474C;
extern Unk80031424 *D_8006AB18[];
extern ALCSeq *D_8006AB20[];
extern ALCSeq *D_8006AB28;
extern ALHeap D_8006AB98;
extern ALSeqpConfig D_8006AB50[];
extern ALBankFile *D_8006AB48;
extern ALBankFile *D_8006AB4C;
extern BhSeqFile *D_8006AB3C;
extern s32 D_8006AB38;
extern Unk8006AA84Node *D_8006AAC8;
extern u8 D_80165710;
extern u8 D_801ABC10;
extern u8 D_963A70[];
extern u8 D_BBB9B0[];
extern BhAudioGlobals D_80033B54_34754;
extern s32 D_8006AB10;
extern s16 D_8006AB14;
extern s32 D_8006AB88;
extern u8 D_80032228_32E28[];
extern s16 D_80031F04_32B04[];
extern f32 D_80032430_33030[];
extern f32 D_80032A78_33678[];
extern s8 D_80032310_32F10;
extern f32 D_8003833C_38F3C;
extern f32 D_80038340_38F40;
extern f64 D_80038348_38F48;
extern f32 D_80038350_38F50;
extern f64 D_80038358_38F58;
extern s16 D_80032EBA_33ABA[];
extern s16 D_80031CAC_328AC;
extern s16 D_80031CA8_328A8;
extern s16 D_80031CB0_328B0;
extern s8 D_80031CB4_328B4;
extern s32 D_80031CB8_328B8;
extern s32 D_80031CBC_328BC;
extern s32 D_80031CD8_328D8;
extern s16 D_80031CDC_328DC;
extern s32 D_80031CE0_328E0;
extern s32 D_80031CEC_328EC;
extern s32 D_80031CF0_328F0;
extern s32 D_80031CF8_328F8;
extern s32 D_80031CFC_328FC;
extern s32 D_80031D00_32900;
extern s32 D_80031D10_32910;
extern s16 D_80031D14_32914;
extern s16 D_80031D18_32918;
extern s32 D_800314C8_320C8;
extern BhSeqFile *D_8006AB44;
extern s32 D_8006AB30[];
extern ALBank *D_8006AB90;
extern ALBank *D_8006AB8C;
extern s16 D_80033A68_34668[][16];
extern s16 D_80033A74_34674[];
extern s8 D_80031CD0_328D0[];
extern s32 D_80031CE4_328E4[];
extern s8 D_80031D1C_3291C[];
extern s32 D_80031D20_32920[];
extern s32 D_8006ABA8;
extern u16 D_3DA800;
extern s32 D_80068084;
extern s32 D_80068088;
extern f32 D_80068090;
extern f32 D_8006808C;
extern s32 D_8006809C;

extern f32 D_8008DDF0;
extern f32 D_8008DDF4_175EB4;
extern f32 D_8008DDF8_175EB8;
extern f32 D_8008DDFC_175EBC;

extern MissionData D_800909B0[42];
extern s8 D_80090A7D;
extern s32 D_80094900;
extern s32 D_80094938;
extern s16 currentFrontendState;
extern u8 D_800949D4;
extern FrontendAnimState D_8009499C;
extern s32 D_8009E8D8;

extern f32 D_800A08F8;
extern f64 D_800A4D08;
extern f64 D_800A4D10;
extern f64 D_800A4D18;
extern f64 D_800A4D20;
extern f64 D_800A4D28;
extern f64 D_800A4D30;
extern f64 D_800A4D38;
extern f64 D_800A4D40;
extern f64 D_800A4D48;
extern char D_800ADC18_7E0C8;
extern char D_800ADC1C_7E0CC;
extern char D_800ADC30_7E0E0;
extern char D_800ADC3C_7E0EC;
extern char D_800ADC48_7E0F8;
extern char D_800ADFDC_7E48C;
extern char D_800ADFE0_7E490;
extern char D_800AE094_7E544;
extern char D_800AE098_7E548;
extern char D_800AE09C_7E54C;
extern char D_800AE958_7EE08; /* osSyncPrintf format string */
extern char D_800AE97C_7EE2C; /* osSyncPrintf format string */
extern f64 D_800AEA68_7EF18;

extern MissionData D_800D6DC0[42];
extern u8 D_800D6D88;
extern u8 D_800D6D89;
extern u8 D_800D6D8A;
extern s16 D_800D74A4;
extern s16 D_800D74A6;
extern s16 D_800D74AA;
extern u8 D_800D6DA8[];
extern u8 D_800D7971;
extern MissionData D_800D747A;
extern s32* D_800D7A18;
extern Unk80080530_Dst* D_800D7A1C;
extern Unk80080588Entry5* D_800D7A28;
extern Unk80080588Entry1C* D_800D7A34;
extern Unk80080588Entry3* D_800D7A38;
extern Unk80080588Rgb D_800D7A86;
extern u8* D_800D7A4C;
extern s32 D_800D8520;
extern s8 D_800D8524;
extern f32 D_800D8528;
extern FrontendStreamSlot D_800D8578[];
extern FrontendStreamSlot* D_800D8550[];
extern s32 D_800DE068;
extern u8 D_800DE0BE;
extern u8 D_800DE0BF;
extern u8 D_800DE0EB;
extern Unk800DE130 D_800DE130[];
extern u8 D_800DE838;
extern u8 D_800DE839;
extern u8 D_800DE818;
extern s16 D_800DE80E;
extern s16 D_800DE81A;
extern Unk800DE840 D_800DE840[];
extern f32 D_800DE0F0[];
extern f32 D_800DE100[];
extern s16 D_800DE10C;
extern s16 D_800DE10E;
extern s16 D_800DE110;

extern u8 D_800E198D;
extern u8 D_800E198F;
extern s8 D_800E1992;
extern Unk800E1980 D_800E1980[];
extern u8 D_800E1D68;
extern u8 D_800E1D69;
extern Vec3f D_800E6A10;
extern Unk8007CAA8_6A40 D_800E6A40;
extern s32 D_800E6A64;
extern s16 D_800E6A66;
extern s16 D_800E6A74;
extern s32 D_800E730C;
extern f32 D_800E7314;
extern f32 D_800E7318;
extern s16 D_800E733C;
extern Vec3f D_800E7340;

extern s32 D_8013BD04_14ACB4;
extern s32 D_8013C16C_14B11C;
extern u8 D_8013C1A7[];
extern u8 D_8013C1B8_14B168[];
extern s16 D_8013C2BC_14B26C[];
extern Unk8014DD50 D_8013C2D0_14B280;
extern Unk8014DD50 *D_8013C514_14B4C4[];
extern Unk8014DD50 *D_8013C610_14B5C0[];
extern u8 D_8013C618_14B5C8[];
extern u8 D_8013C638_14B5E8[];
extern u8 D_8013C658_14B608[];
extern u8 D_8013C678_14B628[];
extern u8 D_8013C698_14B648[];
extern u8 D_8013C6B8_14B668[];
extern Unk8014DD50 *D_8013C738;
extern Unk8014DD50 D_8013C9DC_14B98C;
extern Unk8014DD50 D_8013C9EC_14B99C;
extern Unk8013CA D_8013CA00;
extern Unk8013CA D_8013CA0A;
extern s8 D_8013CA0C_14B9BC[];
extern Unk8014DD50 D_8013CA24[];
extern Unk8014DD50 *D_8013CB40_14BAF0;
extern Unk80154082 D_8013CB48_14BAF8;
extern s8 D_8013D890_14C840; // Triggers beacon warp
extern u8 D_8013D894_14C844; // Beacon warp destination
extern s16 D_8013D8F0_14C8A0[];
extern Ambient D_8013D958_14C908;
extern Light D_8013D960_14C910;
extern Ambient D_8013D970_14C920;
extern Light D_8013D978_14C928;
extern s8 D_8013D9AC_14C95C;
extern s8 D_8013D9B0_14C960;
extern s32 D_8013D9B4_14C964;
extern u8 D_8013DAE0_14CA90; /* particle/effect count */
extern u8 D_8013DAE4_14CA94; /* particle/effect free index */
extern Unk80154082 D_8013DF80_14CF30;
extern u8 D_8013DF84_14CF34[];
extern s32 D_8013FCD0_14EC80;
extern VehicleInstance *D_8013FD78_14ED28;
extern u8 D_801407F4_14F7A4[];

extern AlienInstance *D_80140AB0_14FA60[];
extern Unk8013FDA8Entry D_8013FDA8_14ED58[];
extern s32 D_80140AC4_14FA74;
extern s32 D_80140AC8_14FA78;
extern u8 D_80140C70[4];
extern u8 D_80140C74[4];
extern s32 D_80140C84;
extern s32 D_80140C88;
extern s32 D_80140C8C;
extern s32 D_80140C90;
extern s32 D_80140C94;
extern s32 D_80140C98;
extern s32 D_80140C9C;
extern s32 D_80140CA0;
extern s32 D_80140C78;
extern s16 D_80140CFC;
extern char D_80140DD8[];
extern char D_80140DEC[];
extern char D_80140E08[];
extern char D_80140E1C[];
extern char D_80140E3C[];
extern char D_80140E58[];
extern char D_80140E6C[];
extern char D_80140E88[];
extern char D_80140EA0[];
extern char D_80140EC0[];
extern char D_80140ED0[];
extern char D_80140EE4[];
extern char D_80140EF8[];
extern char D_80140F10[];
extern char D_80140F28[];
extern char D_80140F40[];
extern char D_80140F58[];
extern char D_80140F70[];
extern char D_80140F84[];
extern char D_80140F98[];
extern char D_80140FB0[];
extern char D_80140FC4[];
extern char D_80140FDC[];
extern char D_80140FF4[];
extern char D_8014100C[];
extern char D_80141020[];
extern char D_80141034[];
extern char D_80141050[];
extern char D_80141068[];
extern char D_8014107C[];
extern char D_80141090[];
extern char D_801410A4[];
extern char D_801410BC[];
extern char D_801410C0[];
extern char D_801410C8[];
extern char D_801410DC[];
extern char D_801410F8[];
extern char D_80141114[];
extern char D_80141130[];
extern char D_8014114C[];
extern char D_80141168[];
extern char D_80141184[];
extern char D_801411F0_1501A0[];
extern char D_8014121C_1501CC[];
extern char D_80036FE4_37BE4; /* osSyncPrintf format string */
extern char D_80036FF0_37BF0; /* osSyncPrintf format string */
extern char D_80036FF4_37BF4; /* osSyncPrintf format string */
extern char D_80036FFC_37BFC; /* osSyncPrintf format string */
extern char D_80037000_37C00; /* osSyncPrintf format string */
extern char D_80037018_37C18; /* osSyncPrintf format string */
extern char D_80037034_37C34; /* osSyncPrintf format string */
extern char D_80037038_37C38; /* osSyncPrintf format string */
extern char D_80037070_37C70; /* osSyncPrintf format string */
extern char D_800370A8_37CA8; /* osSyncPrintf format string */
extern char D_800370B0_37CB0; /* osSyncPrintf format string */
extern char D_800370B4_37CB4; /* osSyncPrintf format string */
extern char D_800370B8_37CB8; /* osSyncPrintf format string */
extern char D_800370D4_37CD4; /* osSyncPrintf format string */
extern char D_80037660_38260; /* osSyncPrintf format string */
extern char D_8003767C_3827C; /* osSyncPrintf format string */
extern char D_80037694_38294; /* osSyncPrintf format string */
extern char D_800376AC_382AC; /* osSyncPrintf format string */
extern char D_800376C0_382C0; /* osSyncPrintf format string */
extern char D_800376D8_382D8; /* osSyncPrintf format string */
extern char D_800376F0_382F0; /* osSyncPrintf format string */
extern char D_8003770C_3830C; /* osSyncPrintf format string */
extern char D_80037728_38328; /* osSyncPrintf format string */
extern char D_8003773C_3833C; /* osSyncPrintf format string */
extern char D_80037750_38350; /* osSyncPrintf format string */
extern char D_80037764_38364; /* osSyncPrintf format string */
extern char D_801417C0_150770; /* osSyncPrintf format string - alien action table full warning */
extern char D_801417DC;
extern char D_801417F8;
extern char D_8014180C;
extern char D_8014183C;
extern char D_80141868;
extern char D_801439EC;
extern char D_8014189C;
extern char D_801418B8_150868;
extern char D_801418D4_150884;
extern char D_80141990;
extern char D_8014199C;
extern char D_801419A8;
extern char D_801419B8;
extern char D_801419C8;
extern char D_801419D8;
extern char D_801419E8;
extern char D_801419F4;
extern char D_80141A04;
extern char D_80141A10;
extern char D_80141A1C;
extern char D_80141A28;
extern char D_80141A38;
extern u8 D_80154220;
extern char D_80141A48;
extern char D_80141A4C;
extern char D_80141A58;
extern char D_80141A64;
extern char D_80141A74;
extern char D_80141A84;
extern char D_80141A94;
extern char D_80141AA4;
extern char D_80141ABC;
extern char D_80141AC8;
extern char D_80141AD8;
extern char D_80141AE8;
extern char D_80141AF4;
extern char D_80141B04;
extern char D_80141B10;
extern char D_80141B18;
extern char D_80141B20;
extern char D_80141B28;
extern char D_80141B34;
extern char D_80141B38;
extern char D_80141B48;
extern char D_80141B60;
extern char D_80141B78;
extern char D_80141B94;
extern char D_80141BD8;
extern char D_80141BE4;
extern char D_80141C08;
extern char D_80141C24;
extern char D_80141C38;
extern s32 D_8014D304;
extern s32 D_802566D4[];
extern char D_80141D98_150D48;
extern f64 D_80141E30;
extern f64 D_80141E38;
extern f64 D_80141E40;
extern f64 D_80141E48;
extern f64 D_80141E50;
extern f32 D_80141E58;
extern char D_80141E80_150E30;
extern f64 D_80141EE0;
extern u8 D_80140AA4_14FA54[];
extern Struct_80140D00 D_80140D00_14FCB0;
extern Struct_80140D10 D_80140D10_14FCC0;
extern u8 D_80140D2C_14FCDC[];
extern s16 D_80140D40_14FCF0[];
extern u8 D_80140D68_14FD18[];
extern u8 D_80140D74_14FD24[];
extern u8 D_80140D90[];
extern u8 D_80140DA8[];
extern u8 D_80140DC0[];
extern f32 D_801411A0;
extern s32 D_801416D0_150680[];
extern s32 D_80141734_1506E4[];
extern f64 D_801426C0;
extern f64 D_801426C8;
extern u8 D_80142740_1516F0[]; // Found parent %d
extern f64 D_80142778;
extern f64 D_80142780;
extern u8 D_80142790_151740[]; // Activate Beacon %d
extern u8 D_801427D8_151788[]; // teleport to:%d
extern u8 D_80142820_1517D0[]; // Giving delayed powerup %d
extern char D_80142C40_151BF0;
extern char D_80142D94; /* osSyncPrintf format string - particle pool full warning */
extern char D_80142EA0_151E50;
extern char D_80142ECC_151E7C;
extern char D_80142F10_151EC0;
extern char D_80142F44_151EF4;
extern char D_80142F68_151F18;
extern char D_80142F98_151F48;
extern char D_8014301C_151FCC;
extern char D_80143040_151FF0;
extern char D_80143094_152044;
extern char D_801430E8_152098;
extern char D_80143720;
extern u8 D_80144E20[];
extern u8 D_80144E2C[];
extern f64 D_80144F08;
extern f32 D_80144F30_153EE0;
extern f32 D_80144F34_153EE4;
extern f64 D_80144FA0_153F50;
extern f32 D_80144FC8;
extern u8 D_801454C0[];
extern u8 D_801454C8[];
extern u8 D_801454D0[];
extern u8 D_801454D8[];
extern u8 D_801454E0[];
extern u8 D_801454E8[];
extern char D_80145A30_1549E0; // select 
extern char D_80145A38_1549E8; // %d,
extern char D_80145A3C_1549EC; // .
extern char D_80145A40_1549F0;
extern char D_80145A70_154A20;
extern char D_80145A8C_154A3C;
extern char D_80145AA4_154A54;
extern u8 D_80145BE0_154B90[];
extern Unk80050ADA D_80145BE2[];
extern Unk80148620 D_80148620_1575D0[];
extern s32 D_80148390_157340[];
extern s16 D_801483A4[];
extern s16 D_80148690;
extern s32 D_80149380;
extern s32 D_80149384;
extern s32 D_80149388;
extern s32 D_8014938C;
extern s32 D_80149390;
extern s32 D_80149394;
extern s32 D_80149398;
extern s32 D_8014939C;
extern s32 D_801493A0;
extern s32 D_801493A4;
extern s32 D_801493CC;
extern s16 D_801493D4;
extern u16 D_801493D6;
extern s16 D_801493D8;
extern s16 D_801493DA;
extern s16 D_801493DC;
extern s16 D_801493E0;
extern s16 D_801493E2;
extern u8 D_801493E6;
extern f32 D_801493E8;
extern f32 D_801493EC;
extern f32 D_801493F0;
extern f32 D_801493F4;
extern f32 D_801493F8;
extern f32 D_801493FC;
extern f32 D_80149400;
extern s16 D_80149404;
extern s32 D_80149408;
extern s16 D_80149406;
extern s16 D_80149430;
extern s16 D_80149432;
extern s16 D_80149434;
extern s16 D_80149436;
extern s16 D_80149440;
extern u32 D_80149444;
extern u8 D_80149441;
extern u8 D_80149448;
extern u8 D_80149449;
extern u8 D_8014944A;
extern u8 D_8014944B;
extern u8 cheatInputBuffer[0xA];
extern u8 D_80149452; // cheat input buffer boundary
extern u8 D_80149459; // cheat input buffer end
extern s32 D_8014945C;
extern s32 isCheatingEnabled; // 80149460
extern s16 D_80149474;
extern s32 D_80149478[16];
extern s32 D_801494B4;
extern u8* D_801494B8;
extern u8 D_801494BC;
extern MissionCondEntry D_801494C0[];
extern u8 D_801497BA;
extern u8 D_801497C8[];
extern u8 D_80149AF8[];
extern s32 D_80149B30; // Number of mission commands?
extern s32 D_80149B40; // numberOfCommandObjects
extern s32 D_80149B44; // numberOfCharacters
extern s16 D_80149B4A;
extern u8 D_8014D200[];
extern u8 D_8014D298[][10];
extern s32 D_8014D2E8;
extern s32 D_8014D2EC;
extern s32 D_8014D2F0;
extern s32 D_8014D2F4;
extern s32 D_8014D300;
extern s8 D_8014D308[];
extern u8 D_8014D408[]; // unknown size, maybe 0x101
extern u8 D_8014D507;
extern u8 D_8014D509;
extern u8 D_8014D50A;
extern u8 D_8014D510[];
extern u8 D_8014D550[];
extern Unk8014DD50 D_8014DD50[];
extern s16 D_8014DD54[];
extern s8 D_8014DD5C[];
extern s8 D_8014DD5D[];
extern Unk802E71B8 D_802E71B8;
extern Unk802E71B8 D_802E71C0;
extern s16 D_8014DD5E[][8];
extern s8 D_8014EC50[];
extern s32 D_8014ECC8;
extern u32 D_8014ECCC;
extern s32 D_8014ECD0;
extern s32 D_8014ECE0;
extern Unk8014DD50 D_8014E4D0[];
extern Unk8014F6D0 D_8014F6D0[0x10];
extern s32 D_8014F800;
extern s32 D_8014F820;
extern s32 D_8014F824;
extern s32 D_8014F828;
extern s16 D_8014F830;
extern s16 D_8014F832;
extern s16 D_8014F834;
extern s32 D_8014F838;
extern s16 D_8014F83C;
extern s16 D_8014F83E;
extern s16 D_8014F840;
extern s16 D_8014F842;
extern s16 D_8014F844;
extern s16 D_8014F846;
extern s16 D_8014F848;
extern f32 D_8014F84C;
extern f32 D_8014F850;
extern u16 D_8014F89A;
extern u8 D_8014F89C;
extern u8 D_8014F89D;
extern s16 (*D_8014F8A0)[256]; /* pointer to world tile data (256x256 s16 array) */
extern u16 D_8014FD28;
extern Unk8014FD30Type D_8014FD30;
extern u8 D_8014FD48[];
extern u16 D_8014FDC8;
extern u8 D_8014FDD0[];

extern u8 D_80151DD0;
extern u8 D_80151DD8[];
extern Unk80152B80 D_80152B80[15]; /* particle/effect array */
extern Unk80152D00 D_80152D00[];
extern u8 D_80152B88; /* unk8 field of first particle/effect entry */
extern Unk80152D00Pair D_80153300; /* one past end of D_80152D00 */
extern s16 D_80152C90;
extern u8 D_80152740[];
extern s16 D_80157590; // outside camera status
extern s16 D_80157A3C;
extern VehicleInstance *D_80159020;
extern AlienInstance *D_80158FEC; // Target alien instance
extern s16 *D_80158FF4;
extern s16 D_8015904C;
extern InputStruct_8012B150 D_80159050[];
extern s16 D_80159248;
extern s16 D_80159260;
extern u16 D_80159274;
extern s16 D_80159278;
extern s16 D_8015927A;
extern Mtx D_801592C0;
extern s32 D_80159300;
extern s16 D_80159308;
extern s16 D_8015931C;
extern s32 D_80159320;
extern s16 D_80159318;
extern s16 D_80159316;
extern s32 D_80159DC4;
extern s16 D_80159DC8;
extern s16 D_80159DCA;
extern s16 D_80159DCC;
extern s8 D_80159DDE;
extern u8 D_8015EA28;
extern u8 D_8015EA29;
extern f32 D_8015EA2C;
extern f32 D_8015EA30;
extern f32 D_8015EA34;
extern f32 D_8015EA38;
extern s16 D_8015EA4A;
extern s16 D_8015EA52;
extern u8 D_8015EB67;
extern s16 D_8015EB6A;
extern s16 D_8015EB6E;
extern u8 D_8015EB70;
extern u8 D_8015EB77;
extern s32 D_8015EB80;
extern Unk8015F760 D_8015EB90[64];
extern Unk8015F790 D_8015F790[16];
extern s32 D_8015F9E4;
extern s32 D_8015F9E8;
extern s16 D_8015F9F8[8][4];
extern s16 D_8015FA38;
extern s16 D_8015FAEE;
extern Unk8015FAD0 D_8015FAD0[0x19];
extern u8 D_8015FF80;
extern s32 D_8015FF84;

extern HudWeaponItem hudWeaponItems[7];
extern s32 D_801601CC;
extern s32 D_801601D0; // Current weapon index?
extern u8 D_801601D3;
extern s32 D_801601D0;
extern s32 D_801601D4;
extern s32 D_801601D8;
extern s32 D_801601DC;
extern s32 D_801601E0;
extern s32 D_801601E4;
extern s32 D_801601E8;

extern u8 D_801FEA30[];

extern u8 D_8021EA30[0x1000]; // Texture map
extern u16 D_8021FA30[][0x10]; // Terrain objects 0x1f20 total size
extern u8 D_80221A30[][0x40]; // Terrain object groups 0x1000 total size
extern u8 D_80260700[0x4000]; // Landscape colors
extern s32 D_80264700[0x100]; // Landscape palettes
extern u8 D_80265A80[];
extern u8 D_80266E80[];

extern u32 D_80222A30[]; // terrain object model pointers
extern s32 D_80222A70;
extern Unk80222A78 D_80222A78[0xD0]; // trigger array (does this actually start at 70 or 74?)

extern s32 D_80223778;
extern AlienWaveInstance D_80223780[0xC0]; // Alien Wave Instances 80223780

// 80224680 missions

extern u8 D_80254E80[]; // Tile palette data
extern VehicleSpec vehicleSpecs[0x14]; // 0x80257A00 (actually 0x15 in size?)
extern u8 D_80257A3A[];

extern BuildingSpec buildingSpecs[0x20]; // 0x80259090
extern u8 D_802590A4[];
extern u8 D_802590A8[];
extern u8 D_802590A9[];
extern Unk80259490 D_80259490; // vehicle instances as loaded from ROM, how is different from 8004DCD0?
extern Unk80259D90 D_80259D90[];
extern u8 D_80259D92[][0x50];
extern s16 D_80259D94;
extern s16 D_80259D96;
extern s8 D_80259DE2;
extern s16 D_80259DE4;
extern s16 D_80259DE6;
extern u8 D_80259E30[];
extern Unk80259D98 D_80259D98[];

extern u8 D_D03E780[];

extern f32 D_8014F1E4;
extern f32 D_8014F1E8;
extern s16 D_8014F1F6;
extern s16 D_8014F1F8;
extern s16 D_8014F1FA;
extern s16 D_8014F1F4;
extern f32 D_8014F1EC;
extern f32 D_8014F1F0;
extern s32 D_8013D75C_14C70C;
extern s32 D_8013D758_14C708;
extern s32 D_8013D760_14C710;
extern s32 D_8013D764_14C714;
extern u32 D_8014F20C;
extern s8 D_8014F202;
extern s8 D_8014F203;
extern s32 D_8014F204;
extern s32 D_8014F208;
extern s32 D_8014F210[0x20][8];
extern s32 D_8014F5F0[8];
extern s32 D_8014F610;
extern Unk80052B40 D_8013D588;
extern Unk80052B40 D_8013D5E8;
extern s16 D_8013D5B4_14C564;
extern s16 D_8013D5B8_14C568;
extern s16 D_8013D5BC_14C56C;
extern s16 D_8013D5C0_14C570[];
extern BuildingInstance *D_80158FE8;
extern u32 D_8014D1B8[];
extern Unk8014F618 D_8014F618;

extern AlienSpec alienSpecs[0x30]; // 80256680
extern Unk8025669C D_8025669C[];  // 8025669C
extern Unk8014DD50 *D_802DDC88_196798;
extern Unk8014DD50 *D_802DDCD0_1967E0;
extern s32 D_802DDCD8_1967E8;
extern Unk8014DD50 D_802DDCF8_196808[];

extern s32 D_80145BE8_154B98[][6];
extern s16 D_8014EDD8;
extern u16 D_8014EDDA;
extern u16 D_8014EDDC;
extern u8 D_8014EDE0[];
extern s32 D_80050AD0;
extern s32 D_80050AD4;
extern s32 D_80052AE0;
extern u8 D_800A427C[];
extern u8 *D_800A428C[];
extern u8 *D_800A42C8[];
extern u8 *D_800A4304[];
extern s32 D_800A4340;
extern s8 D_800A4343;
extern s32 D_800A4344;
extern s16 D_800A4348;
extern u8 D_800A56EC[];
extern u8 D_800A56F0[];
extern u16 D_800FCB1E;
extern s32 D_800FCF4C;
extern u8 D_3767C0[];
extern u8 D_8025CCC0[];
extern u8 D_80260500[];
extern u8 D_801F1210[];
extern u8 D_801FEA10[];
extern u8 D_80264B00[];
extern u8 D_80265880[];
extern s16 D_8014ED40;
extern s16 D_8014ED42;
extern s16 D_8014ED44;
extern s16 D_8014ED46;
extern s16 D_8014ED48;
extern s16 D_8014ED4A;
extern s16 D_8014ED4C;
extern s16 D_8014ED4E;
extern s16 D_8014ED50;
extern s16 D_8014ED52;
extern s16 D_8014ED54;
extern s16 D_8014ED56;
extern s16 D_80158C50;
extern f32 D_80158C58[];
extern f32 D_80159194;
extern f32 D_80159198;
extern f32 D_8015919C;
extern s16 D_801591A0;
extern s16 D_801591A2;
extern s16 D_801591A4;
extern s32 D_801591A8;
extern s32 D_801591AC;
extern s32 D_801591B0;
extern s16 D_801591C0;
extern s16 D_801591C2;
extern s16 D_801591C8;
extern s16 D_801591CA;
extern s16 D_80159232;
extern s16 D_80159246;
extern s16 D_8015930A;
extern s16 D_80159314;
extern s16 D_80159328[0x20];
extern s16 D_80159368[0x20];
extern s16 D_801593A8[0x20];
extern s16 D_801593E8;
extern s16 D_801591D4;
extern s32 D_800476C0;
extern s32 __additional_scanline;
extern s32 __osActiveQueue2;
extern s16 D_80152C96;
extern s32 D_8016017C;
extern s32 D_80160180;
extern s16 D_80160184;
extern s32 D_80160188;
extern s16 D_80160146;
extern s16 D_80160148;
extern s8 D_8016014A; // Vehicle camera rotation amount (0-7)
extern s32 D_80160154;
extern s32 D_8016018C;
extern s32 D_80160190;
extern f32 D_8016011C;
extern f32 D_80160120;
extern f32 D_80160124;
extern f32 D_80160128;
extern f32 D_8016012C;
extern f32 D_80160130;
extern f32 D_80160134;
extern f32 D_80160138;
extern s16 D_80160104;
extern s32 D_8016013C;
extern s32 D_80160140;
extern s16 D_80160144;
extern s32 D_8016014C;
extern s32 D_80160158;
extern s8 D_8016015E;
extern s8 D_8016015F;
extern Vec3f D_801600F8;
extern char D_80145650;
extern f32 D_8014567C;
extern s32 D_801591BC;
extern f32 D_801456D8_154688;
extern f32 D_801456DC_15468C;
extern f32 D_801456F8;
extern f32 D_8014569C;
extern s16 D_8015929C;
extern s32 D_801493D0;
extern s32 D_801600F0;
extern Unk80160080 D_80160080;
extern s32 D_80160160;
extern s16 D_80160164;
extern s16 D_80160166;
extern s16 D_80160168;
extern f32 D_8016016C;
extern f32 D_80160170;
extern f32 D_80160174;
extern f32 D_80160178;
extern Unk169EC8Entry *D_800E7488;
extern u8 D_800E7486;
extern s32 D_800E732C;
extern u8 D_800E6F00[];
extern s32 D_800E6A68;
extern s16 D_800E6A86;
extern VehicleInstance D_800E6A78;
extern s32 gzip_data_0000;
extern Unk8009E8E0 D_8009E8E0_1869A0[];
extern Unk8009E8DC D_8009E8DC_18699C[];
extern f64 D_800A4D90;
extern f64 D_800A4F28_18CFE8;
extern f64 D_800A4F30_18CFF0;
extern f64 D_800A4F38;
extern u8 D_800A4F70[];
extern f32 D_800A0980_188A40;
extern s32 D_800A0964_188A24;
extern char D_800A4DC0_18CE80;
extern char D_800A4FD8;
extern char D_800A5168;
extern s32 D_800E6A1C;
extern s32 D_800E6A20;
extern s32 D_800E6A24;
extern s32 D_800E6A28;
extern s32 D_800E6A2C;
extern s32 D_800E6A30;
extern Unk8007F878_D6AD8 D_800E6AD8;
extern s32 D_800E7304;
extern f32 D_800E659C;
extern f32 D_800E65A0;
extern f32 D_800E65A4;
extern s32 D_800E65A8;
extern Unk9C804 *D_800E65C8;
extern s32 D_800E65CC;
extern f32 D_800E65E0;
extern Unk9C804 D_8009C804[];
extern Unk800E66A8 D_800E66A8[];
extern s32 D_800E668C;
extern s32 D_800E6460;
extern s32 D_800E6464;
extern s32 D_800E6A70;
extern s16 D_8009CE14[];
extern s16 D_8009CE34[];
extern s32 D_8009C4C8;
extern s32 D_8009C4E4[];
extern s32 D_800E7328;
extern s32 D_801575A0;
extern Gfx* D_801575A8;
extern Gfx* D_801575AC;
extern s32 D_801575B0;
extern s32 D_801575DC;
extern Gfx D_802C9480[];
extern Gfx D_802C9EA8[];
extern char D_80144260_153210;
extern s32 D_80158FDC;
extern s32 D_80157A28;
extern s16 D_80157A2C;
extern s16 D_80157A40;
extern s16 D_800E7390;
extern s32 D_800E7398;
extern s32 D_800E739C;
extern s32 D_800E73A0;
extern s32 D_800E73A4;
extern s16 D_800E73A8;
extern s32 D_800E73AC;
extern f32 D_800E73B0;
extern Vec3f D_800E73C8;
extern s32 D_800E73D4;
extern s8 D_800E73DE;
extern s16 D_800E73D8;
extern s16 D_800E73DA;
extern s16 D_800E73DC;
extern s8 D_800E73DF;
extern s16 D_800E73E0; // indoorCameraYaw
extern s16 D_800E73E4; // indoorCameraPitch
extern f32 D_800E73E8;
extern Vec3f D_800E73F0;
extern Vec3f D_800E7400;
extern Vec3f D_800E7410;
extern Vec3f D_800E7458;
extern s32 D_800E7464;
extern s16 D_800E7468;
extern s16 D_800E746A;
extern s32 D_800E746C;
extern s16 D_800E7470;
extern s16 D_800E7472;
extern Vec3f D_800E7430;
extern s32 D_800E742C;
extern s16 D_800E744C;
extern s16 D_800E744E;
extern s16 D_800E7450;
extern f32 D_800E7474;
extern f32 D_800E7478;
extern s16 D_800E747C;
extern s32 D_800E7480;
extern s32 D_80157E7C;
extern s16 D_80156EDA;
extern u8 D_80153AB0;
extern Vec3f D_80153AB8;
extern Vec3f D_80153AC4;
extern Vec3f D_80153AD0;
extern Vec3f D_80153BA0;
extern OSContPad D_800475B8[4];
extern OSContPad D_800475D0;
extern u8 D_8015FAFC;
extern u8 D_8015FAF8;
extern char D_8003843C; /* osSyncPrintf format string */
extern u8 D_80033CC0;
extern u8 D_80033DBA;
extern u8 D_80033EB4;
extern u8 D_80033FAE;
extern u8 D_800340A8;
extern u8 D_800341A2;
extern u16 D_8004771A;
extern s16 D_8004771C;
extern u8 D_801FE810[];
extern s32 D_8003445C;
extern void *D_80034460;
extern void *D_80034464;
extern s32 D_80034468;
extern s32 D_8003446C;
extern s32 D_80034470;
extern s32 D_80034474;
extern s32 D_80034478;
extern u16 D_80034480;
extern s32 D_8003447C;
extern s32 D_80034484;
extern s32 D_80034488;
extern s32 D_80034490_35090;
extern s32 D_80034498_35098;
extern s32 D_80034494;
extern s32 D_8003449C;
extern s32 D_800344A0;
extern u16 D_800344A2;
extern s32 D_800344A4;
extern u8 D_800344A8;
extern s32 D_800344B4[]; // pointers to strings for names of many things, each entry is actually 2x s32 in size, first is pointer to string
extern void *D_8006C550;
extern void *D_8006C554;
extern s32 D_800E7490;
extern s32 D_800EAC90;
extern s32 D_800EAD90;
extern s32 D_800EAE98;
extern f32 D_80160194;
extern f32 D_80160198;
extern f32 D_8016019C;
extern f32 D_801601A0;
extern f32 D_801601A4;
extern f32 D_801601A8;
extern f64 D_80037610_38210;
extern s32 D_80258390; // English sign strings
extern s32 D_80258F90; // English sign string offsets (actually u16/s16?)
extern u8 D_80258330; // signposts
extern s16 D_80047710;
extern s16 D_80047712;
extern s16 D_80157580; // outside camera x?
extern s16 D_80157582; // outside camera y?
extern s16 D_80157584; // outside camera z?
extern s16 D_8015758C;
extern s16 D_8015758E;
extern s16 D_8013B8F0;
extern s16 D_8013B910_14A8C0[6];
extern s16 D_8013B91C_14A8CC[6];
extern s16 D_8013B928_14A8D8[6];
extern s16 D_8013B934_14A8E4;
extern s32 D_8013BAC0_14AA70[][4];
extern s32 D_8013FD7C_14ED2C;
extern s16 D_801493A8;
extern s16 D_801493AA;
extern s16 D_8004794E;
extern Unk80052B2C D_80157F08;
extern s16 D_80157F68;
extern s8 D_80157F6A;
extern s16 D_80157F94;
extern u8 D_80157F95;
extern s16 D_80157F9A;
extern s16 D_80157F96;
extern s16 D_80157F98;
extern s16 D_80157FD0;
extern f32 D_8014462C_1535DC;
extern s16 D_8013B8F4_14A8A4;
extern s16 D_8013B8F8_14A8A8;
extern s16 D_8013B8FC_14A8AC;
extern s16 D_8013B900_14A8B0;
extern s8 D_8013B908_14A8B8;
extern s8 D_8013B90C_14A8BC;
extern s16 D_8014940E;
extern s16 D_80157574;
extern s16 D_80157576;
extern f32 D_80031404;
extern char D_8013BA80_14AA30[];
extern f32 D_8003140C;
extern s16 D_80047964;
extern f32 D_80047960;
extern char D_80144204[];
extern s32 D_801493AC;
extern s32 D_801493B0;
extern s32 D_801493B4;
extern s32 D_801493B8;
extern s32 D_801493BC;
extern s32 D_801493C0;
extern s32 D_801493C4;
extern s32 D_801493C8;
extern s16 D_80153BAC;
extern s16 D_80153BAE;
extern s16 D_80153BB0;
extern s16 D_80157586;
extern s16 D_80157588;
extern s16 D_8015758A;
extern s32 D_8013E438_14D3E8;
extern s32 D_8013E450;
extern Unk8013E45C D_8013E45C[];
extern char D_801441F0[];
extern f64 D_80144240;
extern f64 D_80144248;
extern f64 D_80144250;
extern char D_801442E0_153290;
extern char D_801442F0_1532A0;
extern char D_80144308_1532B8;
extern char D_80144330_1532E0[];
extern f64 D_801443E0_153390;
extern char D_801444F0_1534A0;
extern char D_80144534_1534E4;
extern char D_8014457C_15352C;
extern char D_80144768_153718;
extern char D_80144780_153730;
extern char D_801447A8_153758;
extern char D_801447C0_153770;
extern s32 D_80157A04;
extern s32 D_80157A08;
extern s32 D_80157E4C;
extern s32 D_80157E50;
extern char D_8013E5AC_14D55C[];
extern u8 D_8013E5B0_14D560[];
extern Unk80157600 D_80157600;
extern Unk80157600 D_80157A48;
extern Unk80157600 D_8013D1B0;
extern Unk801575E0 D_801575E0;
extern f32 D_8015760C;
extern s32 D_8004818C;
extern s32 D_801575D0;
extern s32 D_80157A34;
extern s32 D_80157A38;
extern s32 D_80157E70;
extern char D_8003BAE0;
extern char D_80144828[];
extern char D_80144840[];
extern s32 D_8013ECC8_14DC78;
extern u8 D_8014DD52[];
extern char D_80144868;
extern char D_80144880;
extern char D_801446A0_153650;
extern char D_801446B8_153668;
extern char D_80144728_1536D8;
extern char D_80144740_1536F0;
extern char D_801448A8_153858;
extern char D_801448D0_153880;
extern char D_801448E8_153898;
extern u8 D_80157FF8;
extern s8 D_80157FF0[];
extern u8 D_80158000[];
extern u8 D_80158020[];
extern u8 D_80158022[];
extern Unk80158F98 D_80158F98[];
extern s32 D_8015920C;
extern s32 D_80159510[];
extern f32 D_80159D78[];
extern f32 D_80159D98[];
extern u8 D_80159DDF;
extern s16 D_80159DE0;
extern u16 D_80159DE2;
extern s16 D_80159DE4;
extern s16 D_80159304;
extern s16 D_8015930E;
extern s16 D_80159310;
extern s32 D_80047968;
extern s32 D_80157F70;
extern s16 D_80157F76;
extern f32 D_80157F78;
extern f32 D_80157F7C;
extern f32 D_80157F80;
extern f32 D_80157F84;
extern f32 D_80157F88;
extern s16 D_80157F8C;
extern s16 D_80157F8E;
extern s16 D_80157F90;
extern s16 D_80157FAC;
extern s16 D_80157FAE;
extern s16 D_80157FB0;
extern s32 D_80157FB4;
extern s32 D_8006807C;
extern s32 D_80068080;
extern f32 D_80068094;
extern f32 D_80068098;
extern s32 D_80068328;
extern s32 D_8006832C;
extern VehicleInstance D_80050A74;
extern VehicleInstance D_8004FB00;
extern VehicleInstance D_8004F990;
extern VehicleInstance D_8004F9EC;
extern VehicleInstance D_8004FA48;
extern s16 D_8015930C;
extern char D_800A4BCC_18CC8C[];
extern u8 D_8009E4C8_186588[];
extern char D_800A4CE8[];
extern char D_800A4BB0_18CC70[];
extern u8 D_8009E4D4_186594[];
extern void *D_80157F4C;
extern void *D_80157F50;
extern s32 D_80157F54;
extern void *D_80157F58;
extern s32 D_80157F64;
extern s32 D_800E65B4;
extern s32 D_800E65B8;
extern u8 D_8008DE58_175F18;
extern s32 D_800E662C;
extern s16 D_800E6632;
extern s32 D_800E65D8;
extern Unk800E65BC *D_800E65BC;
extern s16 D_80047D40[];
extern s16 D_80047F40[];
extern s16 D_80047F60[];
extern s16 D_80047F7E; // Last item of an array of powerup values?
extern u8 D_800FC8F5;
extern u8 D_800FC8F7;
extern u8 D_800FC8FA;
extern UnkFC8E8Entry D_800FC8E8;
extern s8 D_800FB6FA;
extern u8 D_800FCA78;
extern u8 D_800FCA79;
extern s32 D_800FCA80;
extern s32 D_800FCA84;
extern s16 D_800FCA90;
extern s16 D_800FCA92;
extern u8 D_800FCAD8;
extern s16 D_800FCF20;
extern u16 D_800A436C;
extern s16 D_800A4370;
extern s16 D_800FCF22;
extern s16 D_800FCF24;
extern s16 D_800FCF26;
extern s16 D_800FCF28;
extern s32 D_800FCF3C;
extern s32 D_800FCF40;
extern u16 D_800A2EB0_18AF70[];
extern u8 D_800A26B0_18A770[];
extern u16 D_800A37B0_18B870[];
extern u8 D_800A2FB0_18B070[];
extern u16 D_800A40B0_18C170[];
extern u8 D_800A38B0_18B970[];
typedef struct {
	s32 unk0;
	u16 unk4;
} Unk800A4354; /* stride 0x6 or 0x8 */
extern Unk800A4354 D_800A4354;
extern Unk800A4354 D_800A435C;
extern Unk800A4354 D_800A4364;

extern u8 D_8004DCEA;
extern s16 D_8004DCEC;
extern u8 D_8003CEC6[];
extern u16 D_8006C6C4;
extern u16 D_8006C6C6;
extern s32 D_800E65AC;
extern s16 D_800FCF44;
extern s16 D_800FCF46;
extern u8 D_800A5538;
extern u8 D_8025F540;
extern u8 D_8025F780;
extern s8 D_800A26A0_18A760;
extern s16 D_800FB6A0;
extern s16 D_800FB6A2;
extern s16 D_800FCA7A;
extern s16 D_800FCA7C;
extern s16 D_800FCA7E;
extern s8 D_800FB6FE;
extern s8 D_800FB7B0;
extern s8 D_800FB7B4;
extern s8 D_800FB7BE;
extern s8 D_800FB7C4;
extern u8 D_800FB7AC;
extern u8 D_800FB7AD;
extern u8 D_8006AC10; // english comms strings
extern u8 D_8006C410;
extern u8 D_8006C450; // english comms strings offsets
extern UnkFB6F8Entry D_800FB6F8[];

extern Unk80154082 D_80154082;
extern Unk80154082 D_801541F0;
extern Unk800311A0 D_80153BD0[];
extern s32 D_80154300;
extern u8 D_80154304;
extern s32 D_80154308;
extern u8 D_8015430C;
extern s16 D_8015430E;
extern s16 D_80154310;
extern u8 D_8013E3C0[];
extern u8 D_8013E344_14D2F4;
extern s16 D_80154222;
extern s16 D_801542A6;
extern s16 D_801542B2;
extern s16 D_801542BE;
extern s16 D_801542CA;
extern s16 D_801542D6;
extern s16 D_80154282;
extern s16 D_8015422E;
extern s16 D_8015425E;
extern s16 D_801542EE;
extern s16 D_801542FA;
extern Unk80154318Entry D_80154318[];
extern u8 D_80154327;
extern u8 D_80154328;
extern Unk80154318Entry D_80154329[];
extern Unk801541F8Entry D_80154088[]; // Special effects
extern Unk801541F8Entry D_801541F8[];
extern u8 D_80156ED8;
extern Unk800311A0 D_80156EDC;
extern Unk800311A0 D_80156EE4;
extern UnkFC8E8Entry D_80156EF0[];
extern u8 D_8013DFA8_14CF58[][3];
extern u8 D_80157530;
extern u8 D_80157531;
extern u8 D_80157532;
extern s8 D_80157533;
extern u8 D_80157534;
extern s16 D_80157536;
extern s16 D_80157538;
extern s16 D_8015753A;
extern u8 D_8015753C;
extern s8 D_80153B87;
extern Vec3f D_80153B90;
extern s16 D_8013E3F4_14D3A4;
extern s16 D_8013E3F8_14D3A8;
extern s16 D_8013E3F8_W;
extern Unk80153AE0Entry D_80153AE0[];
extern u8 D_8013E2EC_14D29C[8];
extern s32 D_8013E2F4_14D2A4[5];
extern s32 D_8013E308_14D2B8[5];
extern Unk80152CA0Entry D_80152CA0[];
extern char D_801432C4_152274;
extern char D_80143304_1522B4;
extern char D_80143390_152340;
extern char D_80143430_1523E0;
extern char D_801436D8_152688;
extern char D_80143644_1525F4;
extern char D_80143688_152638;
extern char D_80143478_152428;
extern char D_80143814_1527C4;
extern char D_80143860_152810;
extern char D_801437C0_152770;
extern char D_8014390C_1528BC;
extern char D_80143958_152908;
extern char D_801439A4_152954;
extern char D_80143A38_1529E8;
extern char D_801438DC_15288C;
extern char D_80143ED0_152E80;
extern char D_80143EF0_152EA0;
extern char D_80143F58_152F08;
extern char D_80143FA4_152F54;
extern f32 D_80144020_152FD0;
extern f64 D_80144028_152FD8;
extern UnkFunc8013B5E4 D_80257A1C[];
extern UnkFunc8013B5E4 D_80257A4C[];
extern char D_80145ABC_154A6C[];
extern u8 D_801592A0;
extern u8 D_801592B0;
extern VehicleInstance* D_80158E6C;
extern s32 D_80158E74;
extern u8 D_80158E80[];
extern s16 D_80158FD8;
extern u8 D_80047F9B;
extern char D_8014280C;
extern u8 D_8003154C;
extern u8 D_80031534[];
extern u8 D_80031535[];
extern u8 D_80031536[]; // is actually an array of beacon data
extern u8 D_80031537[];
extern u8 D_8003153A[];
extern BeaconDisplayEntry D_8014F7DE;
extern s32 D_8014F7F0;
extern s32 D_8014F7F4;
extern s32 D_8014F804;
extern char D_801427A4;
extern char D_801427B0;
extern char D_801427C4;
extern char D_801427E8;
extern char D_801427F4;
extern char D_80142800;
extern f32 D_80142E20_151DD0;
extern f32 D_80142E24_151DD4;
extern f32 D_80142E48_151DF8;
extern u16 D_8014FD2A;
extern Unk8003E290Entry D_8003E3A0;
extern Unk8003E290Entry D_8003E290[];
extern u8 D_8003E460_3F060[];
extern Unk8003E290Entry *D_8015922C;
extern Unk80047578 D_80047578;
extern OSMesgQueue D_800433A8;
extern OSThread D_800433C8;
extern OSMesg D_800433A0;
extern OSMesg D_800433A4;
extern OSMesg D_800433C0;
extern s32 D_800475E8;
extern s32 D_800475EC;
extern s32 D_800475F0;
extern s32 D_800475F4;
extern s32 D_80047694;
extern u8 D_800431C0; // Save file data. 0x89 bytes, then 0x7A per save slot
extern s32 D_80047684;
extern u8 D_80047608;

extern u8 D_80048030;
extern u8 D_80048038[];
extern char D_80142BDC_151B8C;
extern u8 D_8014CFF0[];
extern char D_80142BEC_151B9C;
extern u8 D_8014CFF1[];
extern char D_80142BB8_151B68;
extern char D_80142C00_151BB0;
extern char D_80142AB0_151A60;
extern char D_80142AD0_151A80;
extern char D_80142AE0_151A90;
extern char D_80142B00_151AB0;
extern char D_80142B10_151AC0;
extern char D_80142B28_151AD8;
extern char D_80142B38_151AE8;
extern s32 D_802DD170[];
extern Gfx D_9052C10[];
extern Gfx D_9052C70[];
extern u8 D_9052A00[];
extern u8 D_9052AC0[];
extern void (*D_802DDBF4_196704[])(s32);
extern Unk8014DD50 *D_802DDE18_196928;
extern Unk8014DD50 *D_802DDE24_196934;
extern Unk8014DD50 *D_802DDF00_196A10;
extern Unk8014DD50 *D_802DDF0C_196A1C;
extern Unk8014DD50 *D_802DE0A8_196BB8;
extern Unk8014DD50 *D_802DE0B4_196BC4;
extern Unk8014DD50 *D_802DE0C0_196BD0;
extern Unk8014DD50 *D_802DE25C_196D6C;
extern Unk8014DD50 *D_802DE268_196D78;
extern Unk8014DD50 *D_802DE274_196D84;
extern u8 D_802DE280_196D90[];
extern u16 D_802DE2C0_196DD0[];
extern char D_802DE2D0_196DE0; /* osSyncPrintf format string */
extern f32 D_802DE438_196F48;
extern f32 D_802DE43C_196F4C;
extern f64 D_802DE400_196F10;
extern f32 D_802DE408_196F18;
extern f64 D_802DE410_196F20;
extern f64 D_802DE418_196F28;
extern f64 D_802DE420_196F30;
extern f64 D_802DE428_196F38;
extern f64 D_802DE430_196F40;
extern u16 D_802DE466;
extern s16 D_8004DC58;
extern f32 D_8004DCAC;
extern f32 D_8004DCB0;
extern f32 D_8004DCB4;
extern f32 D_8004DCB8;
extern s16 D_802DE460;
extern s16 D_802DE462;
extern s16 D_8014D182;
extern s16 D_802DE464;
extern s16 D_80257DB4;
extern u8 D_80158BD0[];
extern s16 D_80052554;
extern Unk80146212 D_80146212_1551C2[];
extern s16 D_80146492[];
extern s32 D_802E4E84[];
extern char D_802E7AE4[];
extern char D_802E7A30[];
extern char D_802E7A40[];
extern Unk802E4ED8_entry D_802E4ED8[9];
extern f64 D_802E7B00;
extern char D_802E7A60[];
extern s16 D_802E7C30;
extern s16 D_802E7C32;
extern s16 D_802E7C34;
extern s16 D_802E7C36;
extern s32 D_802E4E80;
extern BuildingInstance *D_80157FA4;
extern s32 D_802E7C3C;
extern s16 D_802E7C40;
extern char D_802E7A7C_32BBCC[];
extern s16 D_802E4FB4[];
extern s16 D_8014D17C;
extern s16 D_8014D17E;
extern Unk8014DD50 *D_802E566C;
extern void (*D_802DF350[])(s32);

/* core/loader */
extern s16 D_80068078;
extern OSIoMesg D_8006A330[];
extern OSMesgQueue D_80067F58;
extern OSMesgQueue D_80067F70;
extern s32 D_8006AA60;
extern s32 D_8006AA64;
extern s32 D_8006AA68;
extern char D_80037780[];
extern char D_80037794[];
extern char D_800377A8[];
extern char D_800377BC[];
extern char D_800377D0[];
extern char D_800377E4[];
extern char D_800377F8[];
extern char D_80037780_38380[];
extern char D_80037794_38394[];
extern char D_800377A8_383A8[];
extern char D_800377BC_383BC[];
extern char D_800377D0_383D0[];
extern char D_800377E4_383E4[];
extern char D_800377F8_383F8[];
extern char D_80037808[];
extern char D_8003781C[];
extern char D_80037838[];
extern char D_80037850[];
extern char D_80037870[];
extern char D_8003788C[];
extern char D_800378A8[];
extern s32 D_802B2080;
extern u8 D_955300[];
extern s32 D_80031B90_32790[];
extern s32 D_80031BAC_327AC[];
extern s32 D_80031BC4_327C4[];
extern s32 D_37F840;
extern s32 D_803DA800;
#ifndef OVERLAY_ENTRY_AS_FUNC
extern u8 func_80070270[];
#endif
extern u8 D_40720[];
extern u8 D_7F220[];
extern u8 D_158330[];
extern u8 D_18D7E0[];
extern u8 D_800AED70[];
extern u8 D_800E1D70[];
extern u8 D_800A5720[];
extern u8 D_800FCF50[];
extern OSMesgQueue D_80067F88;
extern s32 D_80031BDC_327DC[];
extern s32 D_80031BF0_327F0[];
extern s32 D_80031C04_32804[];
extern s32 D_80031C18_32818[];
extern s32 D_80031C2C_3282C[];
extern s32 D_80031C40_32840[];
extern s32 D_80031C50_32850[];
extern s32 D_8006AA70;
extern s32 D_8006AA74;
extern u8 D_43A340;
extern u8 D_4EBF80;
extern u8 D_500A00;
extern u8 D_55B0A0;
extern u8 D_579D50;
extern u8 D_791C20;
extern u8 D_7A4400;
extern char D_80038000_38C00[];
extern char D_80038018_38C18[];
extern char D_8003802C_38C2C[];
extern char D_80038034_38C34;
extern char D_80038064_38C64;
extern char D_80038094_38C94;
extern char D_800380C4[];
extern char D_800380E4[];
extern char D_80038104_38D04;
extern char D_8003810C_38D0C;
extern char D_8003811C_38D1C;
extern char D_8003813C_38D3C;
extern char D_80038158_38D58;
extern char D_80038174_38D74;
extern char D_80038198_38D98;
extern char D_800381C0_38DC0;
extern char D_800381D0_38DD0;
extern char D_80038204_38E04;
extern char D_80038218_38E18;
extern char D_80038244_38E44;
extern char D_8003825C_38E5C;
extern char D_80038288_38E88;
extern char D_800383B0_38FB0;
extern char D_800383BC_38FBC;
extern char D_800383C8_38FC8;
extern char D_800383CC_38FCC;
extern char D_800383D4_38FD4;
extern char D_800383DC_38FDC;
extern char D_800383E0_38FE0;
extern char D_800383E4_38FE4;
extern char D_800383EC_38FEC;
extern char D_800383F8_38FF8;
extern char D_80038404_39004;
extern char D_8003840C_3900C;
extern char D_80038418_39018;
extern char D_80038424_39024;
extern char D_8003845C_3905C; /* osSyncPrintf format string */
extern char D_80038470_39070; /* osSyncPrintf format string */
extern char D_80038480_39080; /* osSyncPrintf format string */
extern char D_80038484_39084; /* osSyncPrintf format string */
extern char D_8003849C_3909C; /* osSyncPrintf format string */
extern char D_800384A8_390A8; /* osSyncPrintf format string */
extern char D_800384B4_390B4; /* osSyncPrintf format string */
extern char D_800384C4_390C4; /* osSyncPrintf format string */
extern char D_800384C8_390C8; /* osSyncPrintf format string */
extern char D_800384E0_390E0;
extern char D_80038500_39100;
extern char D_80038530_39130;
extern char D_80038534_39134;
extern char D_8003853C_3913C;
extern char D_80038540_39140;
extern char D_80038554_39154;
extern char D_8003855C_3915C;
extern char D_8003856C_3916C;
extern char D_80038574_39174;
extern char D_80038588_39188;
extern char D_80038590_39190;
extern char D_800385A4_391A4;
extern char D_800385A8_391A8;
extern char D_800385BC_391BC;
extern char D_800385C4_391C4;
extern char D_800385D8_391D8;
extern char D_800385E0_391E0; /* osSyncPrintf format string */
extern char D_800385E4_391E4; /* osSyncPrintf format string */
extern char D_80038614_39214; /* osSyncPrintf format string */
extern char D_80038618_39218; /* osSyncPrintf format string */

/* core/FB00 */
extern Acmd *D_8003FB20[];
extern BhAudioTask *D_8003FB28[];
extern Acmd *D_8003FB2C;
extern OSThread D_8003FB38;
extern OSMesgQueue D_8003FCE8;
extern OSMesg D_8003FD00[8];
extern OSMesgQueue D_8003FD20;
extern OSMesg D_8003FD38[8];
extern ALGlobals D_8003FD58;
extern OSThread D_80067388;
extern void *D_8005C760;

/* core/E830 */
extern f64 D_80037628;
extern f64 D_80037630;
extern f64 D_80037638;
extern f64 D_80037640;
extern s32 D_8005BAEC;
extern s32 __osCurrentTime;
extern s16 D_80059CD0;
extern s16 D_80059CD2;
extern s16 D_80059CD4;
extern s16 D_80059CD6;
extern s16 D_80059CD8;
extern f32 D_80059CE0;
extern f64 D_80037620;
extern f64 D_80037648_38248;
extern f32 D_80037650;
extern f32 D_80037654;
extern f32 D_80037658;
extern UnkE830ModeEntry D_80031A90[];
extern UnkE830ModeEntry *D_80059CDC;
extern s16 D_80267080[];
extern s16 FrameBufferB[];
/* core/FB00 — thread structs, stacks, OS mode tables */
extern OSThread D_80067388;
extern OSThread D_80067538;
extern OSThread D_800676E8;
extern OSThread D_80067898;
extern OSThread D_80067DA8;
extern OSThread D_80067A48;
extern OSMesgQueue D_80067FA0;
extern OSMesgQueue D_80067FB8;
extern OSMesgQueue D_80067FD0;
extern OSMesg D_80067FE8;
extern OSMesg D_80067FEC;
extern OSMesg D_80067FF0[];
extern OSMesg D_80068030;
extern OSMesg D_80068034;
extern OSMesg D_8006A7E0[];
extern OSMesg D_8006A8A8;
extern OSMesg D_8006A8C8;
extern OSMesg D_8006A8E8;
extern OSMesg D_8006A920[];
extern u8 D_8005CF68[];
extern s32 D_8005CF6C;
extern u8 D_80064F70[];
extern s32 D_80064F74;
extern s32 D_80065F78;
extern s32 D_80065F7C;
extern u8 D_80066780[];
extern s32 D_80066784;
extern OSMesg D_80068038;
extern OSMesg D_800314CC_320CC;
extern OSMesgQueue __osSiAccessQueue;
extern s32 __osSiAccessQueueEnabled;
extern OSMesg siacs_bss_0000;
extern OSMesg D_80068040[];
extern OSMesgQueue D_80068060;
extern OSMesgQueue D_8006A8B0;
extern OSMesgQueue D_8006A8D0;
extern OSMesgQueue D_8006A8F0;
extern s16 D_8006C558;
extern u16 D_8006C55A;
extern u16 D_8006C55C;
extern u16 D_8006C55E;
extern u16 D_8006C560;
extern u16 D_8006C564;
extern u16 D_8006C566;
extern u16 D_8006C568;
extern u16 D_8006C56A;
extern s8 D_8006C56C;
extern s8 D_8006C56D;
extern s8 D_8006C56E;
extern s32 D_8006C570;
extern u16 D_8006C574;
extern u16 D_8006C576;
extern u32 D_8006C578;
extern s32 D_80035B5C;
extern OSViMode D_80035B30;
extern OSViMode D_800356D0;
extern OSViMode D_80035F90;
extern OSViMode D_800356D0_362D0;
extern OSViMode D_80035B30_36730;
extern OSViMode D_80035F90_36B90;
typedef struct {
	f32 unk0;
	f32 unk4;
	u8 unk8[4];
	f32 unkC;
	f32 unk10;
} Unk8005BAE8;
extern Unk8005BAE8 *D_8005BAE8;

/* overlay_gameplay/outside/A40B0 */
extern s32 D_8014ECF4;
extern s16 D_8014ECF0;
extern s16 D_8013CBB4;
extern u8 D_8013CBA4;
extern u8 D_8013CBBC;
extern Unk8014DD50 *D_8013CB8C;
extern DebugPropEntry D_8013CBC0[];
extern u8 D_802566D0[];
extern u8 D_802566BA[];
extern void (*D_802566C8[])(u8);
extern Unk802566D8 D_802566D8[];
extern s8 D_80257A55[];
extern u8 D_80140768[];
extern WeaponSpecEntry D_80140768_14F718[];
extern u8 D_801470C0_156070[];
extern u8 D_801601F0[];
extern s32 D_80034574[];
extern u8 D_801421A0[];
extern u8 D_801421A8[];
extern u8 D_801421AC[];
extern u8 D_801421B0[];
extern u8 D_801421B4[];
extern u8 D_801421B8[];
extern f64 D_80142328;
extern f64 D_80142350;
extern f64 D_80142358;
extern Unk_8003CEC0 D_8003CEC0[5];
extern Unk_8013D91C D_8013D91C[6];

/* overlay_level/java/1ED9E0 */
extern char D_802E0D84_1F9A94[];
extern const char D_802E0DA8_1F9AB8[];
extern char D_802E0E10_1F9B20[];
extern char D_802E0E30[];
extern char D_802E0E3C_1F9B4C[];
extern char D_802E0E60_1F9B70[];
extern Unk802E04F8Entry D_802E04F8_1F9208[];
extern s16 D_802E0FB0;
extern s16 D_802E0FB2;
extern s16 D_802E0FB4;
extern s16 D_802E0FB6;
extern s16 D_802E0FB8;
extern s16 D_801591C4;
extern s16 D_80159218;
extern s16 D_8015921C;
extern s16 D_800481AA[];
extern s32 D_800481B8[];
extern s16 D_800481D2[];
extern s16 D_802E0FB0;
/* java/1ED9E0 — additional externs for NON_MATCHING C bodies */
extern u8 D_802D48D0;
extern u8 D_802D4AD0;
extern VehicleInstance D_8004DFB0;
extern s16 D_8004EE88;
extern u8 D_802E04A0_1F91B0;
extern s32 D_802E06E0[];
extern s32 D_80256DEC;
extern char D_802E0D6C_1F9A7C[];
extern f64 D_802E0EA8;
extern s32 D_502D390;
extern s16 D_802E0DC0;
extern s16 D_802E0DE8;
extern s16 D_802E0E04;
extern char D_802E0E18_1F9B28[];
extern char D_802E0E24_1F9B34[];
extern u8 D_802CA8D0;
extern u8 D_802D48CF;
extern Unk80031620 D_80031620[];
extern s16 D_80031634[];
extern u8 D_8003153E[];
extern Unk8014DD50 *D_802E0608;
extern Unk8014DD50 *D_802E0B08;
extern Unk8014DD50 *D_802E0C9C;
extern s16 D_802E30F4;
extern s32 D_802E3098;
extern s32 D_802E3094;
extern s32 D_802E30EC;
extern char D_802E2EE8_2C5318;
extern f32 D_802E0F88;
extern f32 D_802E0F8C;
extern char D_802E0E74[];
extern char D_802E0E7C[];
extern char D_802E0FBA[];
extern char D_802E0E48;
extern char D_802E0E50[];
extern char D_802E0E58[];
extern f64 D_802E0ED8;
extern f32 D_802E0EE0;
extern f32 D_802E0EE4;
extern f32 D_802E0EE8;
extern f64 D_802E0EF0;
extern f64 D_802E0EF8;
extern f32 D_802E0F00;
extern f32 D_802E0F04;
extern f32 D_802E0F78;
extern f64 D_802E0F08;
extern f64 D_802E0F10;
extern f64 D_802E0F18;
extern void (*D_802E04A4[])(s32);
extern char D_802E0D50[];
extern s8 D_802E0570;
extern s8 D_802E0580;
extern f64 D_802E0EB0;
extern s32 D_80053C98;
extern s32 D_802E3100;
extern VehicleInstance *D_80158F8C;
extern f64 D_80144AC0_153A70;
extern s32 D_80149B28; // numberOfMissionConditions
extern s16 D_80149B48; // numberOfMissions
extern u16 D_80159DE8[];
extern u8 D_8015D0B0[];
extern s8 D_80031D28_32928[];
extern f32 D_80031D2C_3292C[];
extern f32 D_80031D34_32934[];
extern f32 D_80031D3C_3293C[];
extern f32 D_80031D44_32944[];
extern Float4 D_80033C9C_3489C;
extern s8 D_80031D4C_3294C;
extern f32 D_80031D50_32950;
extern f32 D_80031D54_32954;
extern f32 D_80031D58_32958;
extern f32 D_80031D5C_3295C;
extern f32 D_80031D60_32960;
extern f32 D_80031D64_32964;
extern s32 D_80031D74_32974[];
extern f32 D_80033CAC_348AC[];

extern OSSched D_800680A0;
extern OSMesgQueue D_8006A908;
extern BhGfxTask D_8006A940[];
extern u64 D_8002F310_2FF10[];
extern u64 D_8003F060_3FC60[];
extern u64 D_8002DEE0_2EAE0[];
extern u64 D_8003E860_3F460[];
extern u64 D_80160300[];
extern u64 D_80161700[];
extern u64 D_80165700[];
extern u64 D_80160B00[];

/* loadLevelData */
extern Unk8031C88 D_80031C88_32888;
extern s32 D_800378CC_384CC;
extern Unk80378D0 D_800378D0_384D0;
extern char D_800378E0_384E0;
extern char D_800378F4_384F4;
extern char D_80037908_38508;
extern char D_8003791C_3851C;
extern char D_80037930_38530;
extern char D_80037944_38544;
extern char D_80037958_38558;
extern char D_8003796C_3856C;
extern char D_80037980_38580;
extern char D_80037994_38594;
extern char D_800379B4_385B4;
extern char D_800379C8_385C8;
extern char D_800379DC_385DC;
extern char D_80037A10_38610;
extern char D_80037A24_38624;
extern char D_80037A58_38658;
extern char D_80037A6C_3866C;
extern char D_80037AA0_386A0;
extern char D_80037AB4_386B4;
extern char D_80037AE8_386E8;
extern char D_80037AFC_386FC;
extern char D_80037B30_38730;
extern char D_80037B44_38744;
extern char D_80037B78_38778;
extern char D_80037B8C_3878C;
extern char D_80037BC0_387C0;
extern char D_80037BD4_387D4;
extern char D_80037C08_38808;
extern char D_80037C1C_3881C;
extern char D_80037C50_38850;
extern char D_80037C64_38864;
extern char D_80037C74_38874;
extern char D_80037C88_38888;
extern char D_80037C9C_3889C;
extern char D_80037CB0_388B0;
extern char D_80037CC4_388C4;
extern char D_80037CD8_388D8;
extern char D_80037CEC_388EC;
extern char D_80037D00_38900;
extern char D_80037D14_38914;
extern char D_80037D28_38928;
extern char D_80037D5C_3895C;
extern char D_80037D70_38970;
extern char D_80037DA4_389A4;
extern char D_80037DB8_389B8;
extern char D_80037DC8_389C8;
extern char D_80037DDC_389DC;
extern char D_80037E10_38A10;
extern char D_80037E24_38A24;
extern char D_80037E64_38A64;
extern char D_80037E78_38A78;
extern char D_80037E98_38A98;
extern char D_80037EAC_38AAC;
extern char D_80037EE0_38AE0;
extern char D_80037EF4_38AF4;
extern char D_80037F14_38B14;
extern char D_80037F28_38B28;
extern char D_80037F5C_38B5C;
extern char D_80037F70_38B70;
extern char D_80037FA4_38BA4;
extern char D_80037FB8_38BB8;
extern char D_80037FEC_38BEC;
extern u8 D_80224680;
extern u8 D_80224E80[];
extern u8 D_80052560[];
extern u16 D_80257A14;

#endif
