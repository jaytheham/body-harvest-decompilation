#ifndef VARIABLES_US_H
#define VARIABLES_US_H

#include "PR/sched.h"

typedef enum Controller {
    CONTROLLER_ONE = 0,
    CONTROLLER_TWO = 1,
    CONTROLLER_THREE = 2,
    CONTROLLER_FOUR = 3
} Controller;

typedef enum Button {
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
} Button;

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

extern OSMesgQueue D_80043388;
extern OSPfs D_80047610;
extern u8 D_80036840[]; // Rumble pak(tm) detected!
extern u8 D_80047678;
extern u32 D_800313CC;
extern Unk80047588 D_80047588;
extern u32 D_8004767C;
extern u32 D_80047680;
extern u32 D_80047688;
extern u32 D_8004768C;
extern u32 D_80047690;
extern u32 D_80047698;
extern s16 D_800476A0;
extern s16 D_800476A2;
extern u8 D_8004794C;
extern f32 D_80047954;
extern f32 D_80047958;
extern f32 D_8004795C;
extern s16 D_80047F7E; // Last item of an array of powerup values?
extern Level currentLevel; // 80047f90
extern s32 D_80047F9C;
extern s32 D_80047FA0;
extern s16 D_80048026;
extern s16 D_8004816A;
extern s32 D_80048188;
extern Unk80048198 D_80048198[];
extern s32 D_8004D148;
extern s32 D_8004D150;
extern u8 D_8004D160;
extern u16 D_8004DC5E;

// 50AD8 building instances?
extern u32 D_80052A90;
extern Unk80052A98 D_80052A98[];
extern s16 D_80052AC8;
extern u8 D_80052ACD;
extern s32 D_80052AD0;
extern GameplayMode gameplayMode; // 80052adc
extern Unk80052B2C* D_80052B2C;
extern Unk80052B34* D_80052B34;

extern s32 D_8013BD04;
extern s8 D_8013D890; // Triggers beacon warp
extern u8 D_8013D894; // Beacon warp destination
extern s32 D_8013FCD0;

extern u8 D_80142740[]; // Found parent %d
extern u8 D_80142790[]; // Activate Beacon %d
extern u8 D_801427D8[]; // teleport to:%d
extern u8 D_80142820[]; // Giving delayed powerup %d
extern s16 D_80149406;
extern s16 D_80149430;
extern s16 D_80149432;
extern s16 D_80149434;
extern s16 D_80149436;
extern s16 D_80149440;
extern u8 D_80149441;
extern u8 D_80149448;
extern u8 D_80149449;
extern u8 D_8014944A;
extern u8 D_8014944B;
extern s32 D_80149B44;
extern u8 D_8014D408[]; // unknown size, maybe 0x101
extern u8 D_8014D509;
extern u8 D_8014D50A;
extern s16 D_8014DD5E[][8];
extern Unk8014F6D0 D_8014F6D0[0x10];
extern s32 D_8014F800;

extern u8 D_80151DD0;
extern s16 D_80157A3C;
extern s16 D_80159260;
extern s32 D_80159320;
extern s16 D_8015FAEE;

// 223780 alien waves?
// 224680 missions?
// 25667C alien specs?
extern VehicleSpec D_80257A00[0x14];
// 259090 building specs?
// 259490 vehicle instances?

#endif
