#ifndef VARIABLES_US_H
#define VARIABLES_US_H

#include "PR/sched.h"

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
extern OSMesgQueue D_80036840;
extern u8 D_80047678;
extern u32 D_800313CC;
extern Unk80047588 D_80047588;
extern u32 D_8004767C;
extern u32 D_80047680;
extern u32 D_80047688;
extern u32 D_8004768C;
extern u32 D_80047690;
extern u32 D_80047698;
extern s16 D_800476A2;
extern f32 D_80047954;
extern f32 D_80047958;
extern f32 D_8004795C;
extern s32 D_80047FA0;
extern s32 D_8004D148;
extern Level currentLevel;
extern GameplayMode gameplayMode;
extern s16 D_80052AC8;
extern u8 D_80052ACD;
extern s32 D_80052AD0;
extern Unk80052B2C* D_80052B2C;
extern Unk80052B34* D_80052B34;

extern s32 D_8013BD04;
extern s32 D_8013FCD0;

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

extern s16 D_80157A3C;
extern s16 D_80159260;
extern s32 D_80159320;

extern VehicleSpec D_80257A00; // is an array

#endif
