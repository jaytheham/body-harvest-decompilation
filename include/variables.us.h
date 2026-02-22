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

typedef enum GameplayMode {
    GAMEPLAY_MODE_LEVEL_MAP = 0,
    GAMEPLAY_MODE_UNK1 = 1,
    GAMEPLAY_MODE_UNK2 = 2,
    GAMEPLAY_MODE_UNK3 = 3,
    GAMEPLAY_MODE_UNK4 = 4,
    GAMEPLAY_MODE_UNK5 = 5,
    GAMEPLAY_MODE_UNK6 = 6,
    GAMEPLAY_MODE_UNK7 = 7,
    GAMEPLAY_MODE_UNK8 = 8,
    GAMEPLAY_MODE_UNK9 = 9,
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
extern u8 D_80031160;
extern u32 D_800313CC;
extern s16 D_800313C8;
extern s16 D_800313D0;
extern u8 D_800313F4;
extern s16 D_800313F8;
extern s16 D_800313FC;
extern s32 D_80031410;
extern s32 D_80031414;
extern s32 D_80031420;
extern u32 D_80031424[];
extern s32 D_8003144C;
extern s32 D_80031450;
extern s32 D_80031454;
extern s8 D_800314C4;
extern s32 D_80031B84;
extern u64 D_80035610;
extern u8 D_80036840[]; // Rumble pak(tm) detected!
extern u8 D_8003DFD4[];
extern u8 D_8003E000[];
extern s16 D_8003E0EE[];
extern u8 D_8003E0FC[];

extern Unk80042DA8 D_80042DA8;
extern u8 D_80042DB8;
extern u8 D_80043243;
extern OSMesgQueue D_80043388;
extern OSPfs D_80047610;
extern Unk80047588 currentControllerStates[4];
extern u16 D_800475D8[];
extern u16 previousControllerButtonStates[4];
extern u32 D_800475F8;
extern s32 D_80047584;
extern u32 D_8004767C;
extern u32 D_80047680;
extern u32 D_80047688;
extern u32 D_8004768C;
extern u32 D_80047690;
extern u32 D_80047698;
extern s16 D_800476A0;
extern s16 D_800476A2;
extern u8 D_80047743;
extern u8 D_80047744;
extern u8 D_80047745;
extern s16 D_8004794A;
extern s16 D_80047948;
extern u8 D_8004794C;
extern f32 D_80047954;
extern f32 D_80047958;
extern f32 D_8004795C;
extern s16 D_80047F7E; // Last item of an array of powerup values?
extern s32 D_80047B70;
extern s8 D_80047F80;
extern s32 D_80047F88;
extern s32 D_80047F8C;
extern s32 D_80047F94;
extern u8 D_80047F97;
extern s32 D_80047F98;
extern s32 currentSaveFileIndex;
extern Level currentLevel; // 80047f90
extern s32 D_80047F9C;
extern s32 D_80047FA0;
extern s16 D_80048026;
extern s16 D_80048028;
extern u8 D_80048024;
extern u8 D_80048025;
extern s32 showDemoText;
extern u8 weaponSlots[7];
extern s16 D_80048140[];
extern s16 D_80048156;
extern s8 D_80048168;
extern s16 D_8004816A;
extern s16 D_8004816E;
extern s16 D_80048170;
extern s16 D_80048176;
extern s32 D_80048178;
extern s32 D_80048188;
extern AlienInstance alienInstances[]; // alien instances
extern s32 D_8004D148;
extern s32 D_8004D150;
extern s32 D_8004D154;
extern s32 D_8004D158;
extern u8 D_8004D160;
extern u8 D_80047F93;
extern s32 D_8004DC48;
extern s32 D_8004DC4C;
extern s16 D_8004DC60;
extern s16 D_8004DCA8;
extern u16 D_8004DC5E;
extern Unk8004DCD0 D_8004DCD0[]; // vehicle instances?
extern u8 D_80050AE0[];
extern u8 D_80050AF0[];

extern BuildingInstance buildingInstances[0xFF];
extern u32 buildingInteriorToLoadId;
extern s32 D_80052540;
extern s32 D_80052544;
extern s16 D_80052546;
extern u8 D_80052547;
extern u32 D_80052A90; // millseconds played in current level
extern s32 D_80052A88;
extern s32 D_80052A8C;
extern u8* D_80052A94;
extern Unk80052A98 D_80052A98[];
extern u16 D_80052A9C;
extern s32 D_80052AA0;
extern u16 D_80052AA4;
extern s16 D_80052AC8;
extern s8 D_80052ACA;
extern s8 D_80052ACC;
extern u8 D_80052ACD; // bitfield? x02 = black adam model
extern s32 D_80052AD0;
extern s32 D_80052AD8;
extern Unk80052B2C D_80052AE8;
extern s32 D_80052550;
extern s32 D_80052558;
extern GameplayMode gameplayMode; // 80052adc
extern Unk80052B2C* D_80052B2C;
extern Unk80052B34* D_80052B34;
extern Gfx *D_8005BB2C;
extern s32 D_8005BB48[];

extern s32 D_8006AB88;
extern s32 D_80068084;
extern s32 D_80068088;

extern s8 D_80090A7D;
extern s32 D_80094900;
extern s32 D_80094938;
extern s16 currentFrontendState;
extern u8 D_800949D4;
extern MissionData D_800909B0[42];

extern f64 D_800AEA68;

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
extern u8* D_800D7A4C;
extern s32 D_800D8520;
extern s8 D_800D8524;
extern f32 D_800D8528;
extern FrontendStreamSlot D_800D8578[];
extern FrontendStreamSlot* D_800D8550[];
extern u8 D_800DE0BE;
extern u8 D_800DE0BF;
extern u8 D_800DE0EB;
extern Unk800DE130 D_800DE130[];
extern u8 D_800DE838;
extern u8 D_800DE839;
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

extern s32 D_8013BD04;
extern s8 D_8013D890; // Triggers beacon warp
extern u8 D_8013D894; // Beacon warp destination
extern s8 D_8013D9AC;
extern s8 D_8013D9B0;
extern s32 D_8013D9B4;
extern u8 D_8013DAE0; /* particle/effect count */
extern u8 D_8013DAE4; /* particle/effect free index */
extern s32 D_8013FCD0;

extern s32 D_80140AC4;
extern s32 D_80140AC8;
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
extern Struct_80140D00 D_80140D00;
extern s16 D_80140D40[];
extern u8 D_80140D90[];
extern u8 D_80140DA8[];
extern u8 D_80140DC0[];
extern f32 D_801411A0;
extern u8 D_80142740[]; // Found parent %d
extern u8 D_80142790[]; // Activate Beacon %d
extern u8 D_801427D8[]; // teleport to:%d
extern u8 D_80142820[]; // Giving delayed powerup %d
extern char D_80142D94; /* osSyncPrintf format string - particle pool full warning */
extern u8 D_80144E20[];
extern u8 D_80144E2C[];
extern f64 D_80144F08;
extern f32 D_80144F30;
extern f32 D_80144F34;
extern f32 D_80144FC8;
extern u8 D_801454C0[];
extern u8 D_801454C8[];
extern u8 D_801454D0[];
extern u8 D_801454D8[];
extern u8 D_801454E0[];
extern u8 D_801454E8[];
extern char D_80145A30; // select 
extern char D_80145A38; // %d,
extern char D_80145A3C; // .
extern u8 D_80145A40;
extern char D_80145A70;
extern char D_80145A8C;
extern char D_80145AA4;
extern u8 D_80145BE0[];
extern Unk80148620 D_80148620[];
extern s16 D_801483A4[];
extern s16 D_80148690;
extern s32 D_80149380;
extern s32 D_80149398;
extern s32 D_8014939C;
extern s32 D_801493A0;
extern s32 D_801493A4;
extern s32 D_801493CC;
extern s16 D_801493D4;
extern s16 D_801493D8;
extern s16 D_801493DC;
extern s16 D_801493E0;
extern s16 D_801493E2;
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
extern s32 D_8014945C;
extern s32 isCheatingEnabled; // 80149460
extern u8* D_801494B8;
extern u8 D_801494BC;
extern s32 D_80149B44;
extern u8 D_8014D200[];
extern u8 D_8014D298[][10];
extern s32 D_8014D2E8;
extern s32 D_8014D2EC;
extern u8 D_8014D408[]; // unknown size, maybe 0x101
extern u8 D_8014D509;
extern u8 D_8014D50A;
extern Unk8014DD50 D_8014DD50[];
extern s16 D_8014DD5E[][8];
extern Unk8014F6D0 D_8014F6D0[0x10];
extern s32 D_8014F800;
extern s16 D_8014F832;
extern s32 D_8014F838;
extern f32 D_8014F850;
extern u8* D_8014F8A0; /* pointer to world tile data */
extern u8 D_8014FDD0[];

extern u8 D_80151DD0;
extern Unk80152B80 D_80152B80[15]; /* particle/effect array */
extern u8 D_80152B88; /* unk8 field of first particle/effect entry */
extern s16 D_80152C90;
extern s16 D_80157590;
extern s16 D_80157A3C;
extern s16 D_8015904C;
extern InputStruct_8012B150 D_80159050[];
extern s16 D_80159260;
extern s32 D_80159320;
extern s16 D_80159DC8;
extern s16 D_80159DCA;
extern s16 D_80159DCC;
extern s8 D_80159DDE;
extern u8 D_8015EA29;
extern f32 D_8015EA2C;
extern f32 D_8015EA30;
extern s16 D_8015EA4A;
extern s16 D_8015EA52;
extern s32 D_8015EB80;
extern s32 D_8015F9E4;
extern s16 D_8015F9F8[8][4];
extern s16 D_8015FAEE;
extern Unk8015FAD0 D_8015FAD0[0x19];
extern Unk8015FAF0 D_8015FAF0[];
extern u8 D_8015FF80;
extern s32 D_8015FF84;

extern HudWeaponItem hudWeaponItems[7];
extern s32 D_801601CC;
extern s32 D_801601D0;
extern u8 D_801601D3;
extern s32 D_801601D0;
extern s32 D_801601D4;
extern s32 D_801601D8;
extern s32 D_801601DC;
extern s32 D_801601E0;
extern s32 D_801601E4;
extern s32 D_801601E8;

extern u8 D_801FEA30[];

extern u16 D_8021FA30[][0x10];
extern u8 D_80221A30[][0x40];

extern u32 D_80222A30[];
extern s32 D_80222A70;
// 223780 alien waves?
// 224680 missions?
extern AlienSpec alienSpecs[0x30];
extern VehicleSpec vehicleSpecs[0x14];
extern BuildingSpec buildingSpecs[0x20];
extern Unk80259490 D_80259490; // vehicle instances?
extern u8 D_80259D92[][0x50];
extern Unk80259D98 D_80259D98[];

extern u8 D_D03E780[];


#endif
