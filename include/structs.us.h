#ifndef STRUCTS_US_H
#define STRUCTS_US_H

#include <PR/sched.h>

typedef enum GameplayMode {
	GAMEPLAY_MODE_LEVEL_MAP = 0, // Actually something else?
	GAMEPLAY_MODE_UNK1 = 1, // Normal gameplay
	GAMEPLAY_MODE_UNK2 = 2, // pause menu
	GAMEPLAY_MODE_UNK3 = 3, // Cutscene mode? Or Map?
	GAMEPLAY_MODE_UNK4 = 4, // Beacon UI
	GAMEPLAY_MODE_UNK5 = 5,
	GAMEPLAY_MODE_UNK6 = 6, // entering building?
	GAMEPLAY_MODE_UNK7 = 7, // loading level?
	GAMEPLAY_MODE_UNK8 = 8, // Clue screen? Does nothing?
	GAMEPLAY_MODE_UNK9 = 9, // Talking to NPC/Signpost/Daisy
	GAMEPLAY_MODE_END_OF_LEVEL = 0xA, // Show score screens
	GAMEPLAY_MODE_UNKB = 0xB, // Beacon launch cutscene/Shield gen destroyed cutscene
	GAMEPLAY_MODE_UNKC = 0xC, // When killed/quitting/boss killed
	GAMEPLAY_MODE_UNKD = 0xD,
	GAMEPLAY_MODE_UNKE = 0xE,
	GAMEPLAY_MODE_UNKF = 0xF, // When quitting/changing level after 0xC
	GAMEPLAY_MODE_INVENTORY = 0x10
} GameplayMode;

typedef enum Level {
	LEVEL_GREECE = 1,
	LEVEL_JAVA = 2,
	LEVEL_AMERICA = 3,
	LEVEL_SIBERIA = 4,
	LEVEL_COMET = 5
} Level;

typedef enum GameStateFlags {
	GAME_STATE_FLAG_UNK1 = 1,
	GAME_STATE_FLAG_BLACK_ADAM = 2,
	GAME_STATE_FLAG_UNK3 = 4,
	GAME_STATE_FLAG_UNK4 = 8,
	GAME_STATE_FLAG_UNK5 = 0x10,
	GAME_STATE_FLAG_UNK6 = 0x20,
	GAME_STATE_FLAG_EASY_MODE = 0x40,
	GAME_STATE_FLAG_UNK8 = 0x80
} GameStateFlags;

typedef enum
{
	ANIM_WALKING = 0,
	ANIM_RUNNING = 1,
	ANIM_SWIMMING = 2,
	ANIM_SWIMMING_FAST = 3,
	ANIM_SWIMMING_STANDUP = 4,
	ANIM_DIVING = 5,
	ANIM_SWIM_UNDERWATER = 6,
	ANIM_SWIM_KICK = 7,
	ANIM_FLAILING_FRONT = 8,
	ANIM_FLAILING_BACK = 9,
	ANIM_LAND_ON_FRONT = 10,
	ANIM_LAND_ON_BACK = 11,
	ANIM_ON_FRONT_STANDUP = 12,
	ANIM_ON_BACK_STANDUP = 13,
	ANIM_TURN_RIGHT = 14,
	ANIM_TURN_LEFT = 15,
	ANIM_RUN_TURN_LEFT = 16,
	ANIM_RUN_TURN_RIGHT = 17,
	ANIM_SHOT = 18,
	ANIM_SHOT_LEFTHAND = 19,
	ANIM_SHOT_BACK = 20,
	ANIM_SHOT_RIGHT_HAND = 21,
	ANIM_ROLL_LEFT = 22,
	ANIM_ROLL_RIGHT = 23,
	ANIM_ROLL_FORWARD = 24,
	ANIM_BLASTHIT1 = 25,
	ANIM_BLASTHIT2 = 26,
	ANIM_BLASTHIT3 = 27,
	ANIM_BLASTHIT4 = 28,
	ANIM_BLASTHIT5 = 29,
	ANIM_BLASTHIT6 = 30,
	ANIM_BLASTHIT7 = 31,
	ANIM_BLASTHIT8 = 32,
	ANIM_GET_UP_FROM_BACK = 33,
	ANIM_TREAD_WATER = 34,
	ANIM_DEFAULT = 35,
	ANIM_TIRED = 36,
	ANIM_TIRED_INSERT = 37,
	ANIM_WIPE_VISOR = 38,
	ANIM_BORED = 39,
	ANIM_BACK_FLIP = 40,
	ANIM_WASP_KAK = 41,
	ANIM_COCK_GUN = 42,
	ANIM_QUICK_DRAW = 43,
	ANIM_CRANE_KICK = 44,
	ANIM_KARATE = 45,
	ANIM_ITCH = 46,
	ANIM_SCOTTISH = 47,
	ANIM_USE_COMM_LINK = 48,
	ANIM_VICTORY = 49,
	ANIM_BEACON_HIT = 50,
	ANIM_BITTEN = 51,
	ANIM_CRATE_BREAK = 52,
	ANIM_DOOR_LOCKED = 53,
	ANIM_DOOR_OPEN = 54,
	ANIM_GARAGE_OPEN = 55,
	ANIM_HOLSTER_OBJ = 56,
	ANIM_DUST_OFF = 57,
	ANIM_TREMOR = 58,
	ANIM_LAND = 59,
	ANIM_DRAWING_GUN = 60,
	ANIM_AIMING_GUN_UP = 61,
	ANIM_AIMING_GUN_D = 62,
	ANIM_SHOOTIG_GUN = 63,
	ANIM_SHOOTING_GUN = 64,
	ANIM_LAYING_BOMB = 65,
	ANIM_DRAWING_MACGUN = 66,
	ANIM_AIMING_MACGUN = 67,
	ANIM_SHOOTING_MACGUN = 68,
	ANIM_DRAWING_SHOT_GUN = 69,
	ANIM_AIM_SHOTGUN = 70,
	ANIM_AIM_SHOTGUND = 71,
	ANIM_SHOOT_SHOTGUNUP = 72,
	ANIM_SHOOT_SHOTGUND = 73,
	ANIM_DRAWING_RIFLE = 74,
	ANIM_AIMING_RIFLE = 75,
	ANIM_SHOOTING_WINCHESTER = 76,
	ANIM_DRAWING_ROCKET = 77,
	ANIM_AIM_ROCKET = 78,
	ANIM_AIM_ROCKETD = 79,
	ANIM_SHOOT_ROCKETUP = 80,
	ANIM_SHOOT_ROCKETD = 81,
	ANIM_DRAWING_SHIELD = 82,
	ANIM_AIMING_SHIELD = 83,
	ANIM_SHOOTING_SHIELD = 84,
	ANIM_THROW_GRENADE = 85,
	ANIM_RUN_PISTOL = 86,
	ANIM_SQUASHED = 87,
	ANIM_SHOT_DEAD = 88,
	ANIM_DROWNING = 89,
	ANIM_HEART_ATTACK = 90,
	ANIM_ENTER_VEHICLE = 91,
	ANIM_EXIT_BOAT = 92,
	ANIM_EXIT_BUILDING = 93,
	ANIM_JUMP = 94,
	ANIM_BLACK_ADAM_POWERUP = 95,
	ANIM_START_GREECE_1 = 96,
	ANIM_CUT_DEFAULT = 97,
	ANIM_CUT_TURN_RIGHT = 98,
	ANIM_CUT_TURN_LEFT = 99,
	ANIM_CUT_SWIM_TURN = 100,
	ANIM_RUN_TO_SHIELD = 101,
	ANIM_JUMP_TO_SHIELD = 102,
	ANIM_SWIM_TO_SHIELD = 103,
	ANIM_DIVE_TO_SHIELD = 104,
	ANIM_CUT_SCENE_1_START = 105,
	ANIM_CUT_SCENE_1A = 106,
	ANIM_CUT_SCENE_1B = 107,
	ANIM_CUT_SCENE_1C = 108,
	ANIM_CUT_SCENE_1D = 109
} AnimationType;

typedef enum {
	ALIEN_WAVE_TYPE_UNK1F = 0x1F, // Stage Processor?
} AlienWaveType;

typedef enum {
	ALIEN_SPEC_NOTHING = 0,
	ALIEN_SPEC_HUMAN = 1,
	ALIEN_SPEC_HCU = 2, // Human Capture Unit
	ALIEN_SPEC_BLACK_ADAM = 0x12,
	ALIEN_SPEC_HARVESTER = 0x19, // "King Drone"
	ALIEN_SPEC_PROCESSOR = 0x1A,
	ALIEN_SPEC_BOSS = 0x1B,
} AlienSpecType;

typedef struct {
	/* 0x00 */ f32 v0;
	/* 0x04 */ f32 v1;
	/* 0x08 */ f32 v2;
	/* 0x0C */ f32 v3;
} Float4; /* size = 0x10 */

typedef struct {
	/* 0x00 */ u64 unk0;
} BitFlags64; /* size = 0x08 */

typedef struct {
	/* 0x00 */ f32 unk0;
	/* 0x04 */ f32 unk4;
	/* 0x08 */ f32 unk8;
	/* 0x0C */ f32 unkC;
	/* 0x10 */ f32 unk10;
	/* 0x14 */ f32 unk14;
	/* 0x18 */ f32 unk18;
	/* 0x1C */ f32 unk1C;
	/* 0x20 */ f32 unk20;
	/* 0x24 */ f32 unk24;
	/* 0x28 */ f32 unk28;
	/* 0x2C */ f32 unk2C;
} AAA70Unk8014F618Head; /* size = 0x30 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
} Unk8010ED84Pos; /* size = 0x06 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
} Unk8015FA40Entry; /* size = 0x06 */

typedef struct {
	/* 0x00 */ u8 pad[0xC];
	/* 0x0C */ s16 unkC;
} Unk8010ED84Data; /* size = 0x0E */
typedef struct {
	/* 0x00 */ u8 pad0[0x34];
	/* 0x34 */ s16 unk34;
	/* 0x36 */ s16 unk36;
} Unk8010D234Data; /* size = 0x38 */
typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
} Flags2x32; /* size = 0x08 */

typedef struct {
	s32 unk0;
	u16 unk4;
} Unk800A4354; /* stride 0x6 or 0x8 */

typedef struct {
	/* 0x06 */ u8 unk6;
	/* 0x07 */ u8 unk7;
	s32 unk4;
	void* unk8;
	void* unkC;
} Frontend52690Entry;

typedef struct {
	f32 unk0;
	f32 unk4;
	u8 unk8[4];
	f32 unkC;
	f32 unk10;
} Unk8005BAE8;

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s8 unk6;
	/* 0x07 */ s8 unk7;
	/* 0x08 */ s8 unk8;
	/* 0x09 */ u8 unk9;
	/* 0x0A */ u8 unkA;
} Frontend52690Unk8Motion;

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 outputSize;
	/* 0x0C */ s32 offsetsRelOffset;
	/* 0x10 */ s32 literalsRelOffset;
	/* 0x14 */ s32 controlWords[1];
} LzssHeader; /* size = 0x18 */

struct Unk80013E44_arg0 { s32 unk0; s32 unk4; s32 unk8; };

typedef struct {
	/* 0x00 */ s8 unk0;
	/* 0x01 */ s8 unk1;
} Unk8013CA; /* size = 0x02 */

typedef struct {
	/* 0x00 */ s8 unk0;
	/* 0x01 */ s8 unk1;
	/* 0x02 */ s8 unk2;
} Unk8004773C; /* size = 0x04 */

typedef struct {
	/* 0x00 */ void (*unk0)(s32, s32, s32, s32);
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 pad6[2];
	/* 0x08 */ f32 unk8;
	/* 0x0C */ f32 unkC;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ u8 pad12[0xE];
} UnkE830ModeEntry; /* size = 0x20 */

typedef struct {
	/* 0x00 */ f32 x;
	/* 0x04 */ f32 y;
	/* 0x08 */ f32 z;
} Vec3f; /* size = 0x0C */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
} Unk800311A0; /* size = 0x06 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ u8 unk2;
	/* 0x03 */ u8 unk3;
	/* 0x04 */ u8 unk4;
	/* 0x05 */ u8 unk5;
} MissionCondEntry; /* size = 0x06 */

typedef struct {
	/* 0x00 */ u8 cheatPattern[0xC];
	/* 0x0C */ void (*cheatFunc)(void);
} Cheat; /* size = 0x10 */

typedef struct {
	/* 0x00 */ u8 pad0[9];
	/* 0x09 */ u8 unk9;
} func_80070420_7F3D0_UnkArg0; /* size = 0x0A */

typedef struct {
	/* 0x00 */ u8 pad0[0x8];
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
} Unk80070464Obj; /* size = 0x0C */

typedef struct {
	/* 0x00 */ u8 pad00[0x8];
	/* 0x08 */ u8 unk8;
	/* 0x09 */ u8 pad09[0x07];
	/* 0x10 */ s16 unk10;
	/* 0x12 */ u8 pad12[0x02];
	/* 0x14 */ f32 unk14;
	/* 0x18 */ f32 unk18;
	/* 0x1C */ f32 unk1C;
	/* 0x20 */ f32 unk20;
	/* 0x24 */ f32 unk24;
	/* 0x28 */ f32 unk28;
} Unk80070F7CState; /* size = 0x2C */

typedef struct {
	/* 0x00 */ u8 pad0[0xE];
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ s16 unk16;
	/* 0x18 */ u16 unk18;
	/* 0x1A */ u16 unk1A;
	/* 0x1C */ u8 pad1C[0x2];
	/* 0x1E */ u16 unk1E;
	/* 0x20 */ f32 unk20;
	/* 0x24 */ u8 pad24[0x02];
	/* 0x26 */ s16 unk26;
	/* 0x28 */ s16 unk28;
	/* 0x2A */ s16 unk2A;
	/* 0x2C */ s16 unk2C;
	/* 0x2E */ s16 unk2E;
	/* 0x30 */ s16 unk30;
	/* 0x32 */ u8 pad32[0x0E];
	/* 0x40 */ s32 unk40;
	/* 0x44 */ s32 unk44;
} Unk80070F7CObj; /* size = 0x48 */

typedef struct {
	/* 0x00 */ u8 pad0[0xE];
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ s16 unk16;
	/* 0x18 */ u16 unk18;
	/* 0x1A */ u16 unk1A;
	/* 0x1C */ u8 pad1C[0x2];
	/* 0x1E */ u16 unk1E;
	/* 0x20 */ u8 pad20[0x20];
	/* 0x40 */ s32 unk40;
	/* 0x44 */ s32 unk44;
} Unk800E65BC; /* stride 0x48 - bad copy of Unk80070F7CObj*/

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 pad6[0xE];
	/* 0x14 */ s32 unk14;
	/* 0x18 */ u8 pad18[0x8];
	/* 0x20 */ s32 unk20;
	/* 0x24 */ u8 pad24[0x8];
	/* 0x2C */ s32 unk2C;
	/* 0x30 */ s16 unk30;
	/* 0x32 */ s16 unk32;
	/* 0x34 */ f32 unk34;
	/* 0x38 */ s16 unk38;
	/* 0x3A */ u8 pad3A[0x2];
	/* 0x3C */ f32 *unk3C;
} Unk165E60Path;

typedef struct {
	/* 0x00 */ u8 pad0[0x3C];
	/* 0x3C */ s32 unk3C;
	/* 0x40 */ u8 pad40[0xA];
	/* 0x4A */ s16 unk4A;
	/* 0x4C */ u8 pad4C[0x8];
	/* 0x54 */ s32 unk54;
} Unk165E60Timeline;

typedef struct {
	s16 unk0;
	s16 unk2;
	s16 unk4;
	s16 pad6;
	s16 unk8;
	s16 unkA;
	s8 unkC;
	s8 unkD;
	s8 unkE;
	s8 padF;
} UnkHudVtx;

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ u8 padC[0x2];
	/* 0x0E */ s16 unkE;
	/* 0x10 */ u8 pad10[0x4];
	/* 0x14 */ Unk165E60Path *unk14;
	/* 0x18 */ Unk165E60Timeline *unk18;
} Unk165E60Route;

typedef struct {
	/* 0x00 */ Unk165E60Timeline *unk0;
	/* 0x04 */ u8 pad4[0x10];
	/* 0x14 */ Unk165E60Path *unk14;
	/* 0x18 */ u8 pad18[0x4];
} Unk165E60RouteData;

typedef struct {
	/* 0x00 */ u8 pad0[0x18];
	/* 0x18 */ s32 unk18;
	/* 0x1C */ f32 unk1C;
	/* 0x20 */ u8 pad20[0x3EC];
	/* 0x40C */ s32 unk40C;
} Unk165E60AnimState;

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 pad1;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ u8 unkE;
	/* 0x0F */ u8 unkF;
	/* 0x10 */ u8 unk10;
	/* 0x11 */ u8 unk11;
	/* 0x12 */ u8 unk12;
	/* 0x13 */ u8 unk13;
	/* 0x14 */ u8 unk14;
	/* 0x15 */ u8 unk15;
} Unk84EECEffect; /* size = 0x16 */

/* Cutscene entry: 24 bytes (6 s32), stored in D_80157E90[5] (120 bytes) */
typedef struct {
	/* 0x00 */ Unk84EECEffect effect;
	/* 0x16 */ u8 pad[2];
} CutsceneEntry; /* size = 0x18 */

typedef struct {
	/* 0x00 */ Gfx *unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
} Unk8008DED0Entry; /* stride 0xC */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s8 unk6;
	/* 0x07 */ s8 unk7;
	/* 0x08 */ s8 unk8;
	/* 0x09 */ u8 unk9;
	/* 0x0A */ u8 unkA;
	/* 0x0B */ u8 unkB;
	/* 0x0C */ u8 unkC;
	/* 0x0D */ u8 unkD;
} Unk89408Pos; /* size = 0x0E */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s8 unk6;
	/* 0x07 */ s8 unk7;
	/* 0x08 */ s8 unk8;
	/* 0x09 */ u8 unk9;
	/* 0x0A */ s8 unkA;
	/* 0x0B */ s8 unkB;
	/* 0x0C */ s8 unkC;
	/* 0x0D */ u8 unkD;
} Unk89834Pos; /* size = 0x0E */

typedef struct {
	/* 0x00 */ u8 pad0[0x1A];
	/* 0x1A */ u16 unk1A;
	/* 0x1C */ u8 pad1C[0x16];
	/* 0x32 */ s16 unk32;
	/* 0x34 */ s16 unk34;
	/* 0x36 */ u8 pad36[0x12];
} Unk800768B8Obj; /* size = 0x48 */

typedef struct {
	/* 0x00 */ u8 pad0[0x24];
	/* 0x24 */ s16 unk24;
} Unk8007A168Obj; /* size = 0x26 */

typedef struct {
	/* 0x00 */ u8 pad0[0x18];
	/* 0x18 */ u16 unk18;
	/* 0x1A */ u16 unk1A;
	/* 0x1C */ u8 pad1C[0x1A];
	/* 0x36 */ s16 unk36;
	/* 0x38 */ s16 unk38;
	/* 0x3A */ u8 unk3A;
	/* 0x3B */ u8 unk3B;
	/* 0x3C */ u8 pad3C[0x4];
	/* 0x40 */ s32 unk40;
	/* 0x44 */ u8 pad44[0x4];
} Unk80076678Obj; /* size = 0x48 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ u8 pad02[0x16];
} Unk80050ADA; /* size = 0x18 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ u8 unk4;
	/* 0x05 */ u8 unk5;
	/* 0x06 */ u8 unk6;
	/* 0x07 */ u8 pad7;
	/* 0x08 */ s32 unk8;
} FrontendLightKeyframe; /* size = 0x0C */

typedef struct {
	/* 0x00 */ FrontendLightKeyframe* unk0;
	/* 0x04 */ s32 unk4;
} FrontendLightTrack; /* size = 0x08 */

typedef struct {
	/* 0x00 */ FrontendLightKeyframe* unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ FrontendLightTrack* unkC;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ u8 unk14;
	/* 0x15 */ u8 unk15;
	/* 0x16 */ u8 unk16;
	/* 0x17 */ u8 pad17;
	/* 0x18 */ s32 unk18;
} FrontendLightAnimState; /* size = 0x1C */

typedef struct {
	/* 0x00 */ f32 unk0;
	/* 0x04 */ f32 unk4;
	/* 0x08 */ f32 unk8;
} FrontendInterpPos; /* size = 0x0C */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ u8 unk4;
	/* 0x05 */ u8 unk5;
	/* 0x06 */ u8 unk6;
	/* 0x07 */ u8 unk7;
} FrontendInterpVtxData; /* size = 0x08 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ u8 unk2;
	/* 0x03 */ u8 unk3;
	/* 0x04 */ u8 unk4;
	/* 0x05 */ u8 unk5;
	/* 0x06 */ u8 unk6;
	/* 0x07 */ u8 unk7;
} FrontendTriData; /* size = 0x08 */

typedef struct {
	/* 0x00 */ FrontendTriData *unk0;
	/* 0x04 */ u8 unk4;
	/* 0x05 */ u8 unk5;
	/* 0x06 */ u8 unk6;
	/* 0x07 */ u8 unk7;
} FrontendTriBatch; /* size = 0x08 */

typedef struct {
	/* 0x00 */ FrontendInterpPos *unk0;
	/* 0x04 */ FrontendInterpPos *unk4;
	/* 0x08 */ FrontendInterpVtxData *unk8;
	/* 0x0C */ FrontendTriBatch *unkC;
	/* 0x10 */ s32 unk10;
	/* 0x14 */ s32 unk14;
	/* 0x18 */ f32 unk18;
} FrontendInterpState; /* size = 0x1C */

typedef struct {
	/* 0x00 */ s16 relZ;
	/* 0x02 */ s16 unk02;
	/* 0x04 */ s16 relX;
	/* 0x06 */ u8 spec;
	/* 0x07 */ u8 pad;
} AlienSpawnSlot; /* size = 0x08 */

typedef struct {
	/* 0x00 */ AlienSpawnSlot slots[5];
} AlienSpawnEntry; /* size = 0x28 */

typedef struct {
	u16 unk0;
	s16 unk2;
} Unk_8013D91C;

typedef struct {
	s16 unk0;
	s16 unk2;
	u8 unk4;
	u8 unk5;
	s16 unk6;
} Unk8003E000;

typedef struct {
	/* 0x00 */ u32 pad0[7];   /* 0x00-0x1B */
	/* 0x1C */ s32 unk1C;
	/* 0x20 */ u32 pad20[3];  /* 0x20-0x2B */
	/* 0x2C */ s32 unk2C;
	/* 0x30 */ s32 unk30;
} Unk80031424; /* size = 0x34 */

typedef struct Unk8006AA80Node {
	/* 0x00 */ u16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ s16 unk0C;
	/* 0x0E */ s8 unk0E;
	/* 0x0F */ s8 unk0F;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ u8 pad12[0xE];
	/* 0x20 */ s16 unk20;
	/* 0x22 */ s8 unk22;
	/* 0x23 */ u8 pad23;
	/* 0x24 */ f32 unk24;
	/* 0x28 */ s32 unk28;
	/* 0x2C */ s32 unk2C;
	/* 0x30 */ struct Unk8006AA80Node *unk30;
	/* 0x34 */ struct Unk8006AA80Node *unk34;
} Unk8006AA80Node; /* size = 0x38 */

typedef struct Unk8006AA84Node {
	/* 0x00 */ u16 unk0;
	/* 0x02 */ u8 pad2[0x02];
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ u8 pad0C[0x04];
	/* 0x10 */ s16 unk10;
	/* 0x12 */ u8 pad12[0x1E];
	/* 0x30 */ struct Unk8006AA84Node *unk30;
} Unk8006AA84Node;

typedef struct {
	/* 0x00 */ s32 offset;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 len;
} BhSeqEntry; /* size = 0x8 */

typedef struct {
	/* 0x00 */ s16 revision;
	/* 0x02 */ s16 seqCount;
	/* 0x04 */ BhSeqEntry seqArray[1];
} BhSeqFile;

typedef struct {
	/* 0x00 */ u8 pad0[0x1A];
	/* 0x1A */ u8 unk1A;
	/* 0x1B */ u8 unk1B;
	/* 0x1C */ u8 pad1C[0x4];
	/* 0x20 */ s32 unk20;
} Unk8004D0F8; /* size = 0x24 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ u8 unk2;
	/* 0x03 */ u8 unk3;
} Unk80031620; /* size = 0x04 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ u8 unkC;
	/* 0x0D */ u8 unkD;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ u8 unk12;
	/* 0x13 */ u8 unk13;
	/* 0x14 */ u8 unk14;
	/* 0x15 */ u8 unk15;
} Unk801601F0; /* size = 0x16 */

typedef struct {
	u8 pad0[0x8];
	s32 unk8;
	s16 unkC;
	u8 padE[0x8];
	s16 unk16;
	u8 pad18[0x1C];
	s16 unk34;
	s16 unk36;
	s16 unk38;
	u8 pad3A[0xC];
	u16 unk46;
} Unk80258250Entry;

typedef struct {
	s16 unk0;
	s16 unk2;
	s16 unk4;
	s16 unk6;
	s16 unk8;
	s16 unkA;
	s16 unkC;
	s16 unkE;
	s16 unk10;
} Unk80259D7EEntry;

typedef struct {
	/* 0x00 */ s32 score;
	/* 0x04 */ u16 secondsElapsed;
	/* 0x06 */ s16 humansKilled;
} Unk80052A98; /* size = 0x08 */

typedef struct {
	/* 0x00 */ s16 f0;
	/* 0x02 */ s16 f2;
	/* 0x04 */ s16 f4;
	/* 0x06 */ s16 f6;
} D47D40Entry; /* size = 0x08 */

typedef struct {
	/* 0x00 */ s32 f0;
	/* 0x04 */ s32 f4;
	/* 0x08 */ s32 f8;
	/* 0x0C */ s32 fC;
} D47F40Entry; /* size = 0x10 */

typedef struct {
	/* 0x00 */ u16 unk0;
	/* 0x02 */ u16 unk2;
	/* 0x04 */ u16 unk4;
	/* 0x06 */ u16 unk6;
} Unk800190D4; /* size = 0x08 */

typedef enum VehicleFlags {
	VEHICLE_FLAG_UNK1 = 1,
	VEHICLE_FLAG_AIRBORNE = 2,
	VEHICLE_FLAG_HALF_ON_BRIDGE = 4,
	VEHICLE_FLAG_UNDER_BRIDGE = 8,
	VEHICLE_FLAG_UNK5 = 0x10,
	VEHICLE_FLAG_UNK6 = 0x20,
	VEHICLE_FLAG_UNK7 = 0x40,
	VEHICLE_FLAG_UNK8 = 0x80,
	VEHICLE_FLAG_UNK9 = 0x100,
	VEHICLE_FLAG_UNKA = 0x200,
	VEHICLE_FLAG_UNKB = 0x400,
	VEHICLE_FLAG_ON_BRIDGE = 0x800
} VehicleFlags;

typedef struct {
	/* 0x00 */ s16 unk0; // X position
	/* 0x02 */ s16 unk2; // Y position
	/* 0x04 */ s16 unk4; // Z position
	/* 0x06 */ s16 unk6; // X rotation
	/* 0x08 */ s16 unk8; // Y rotation
	/* 0x0A */ s16 unkA; // Z rotation
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE; // "Direction"
	/* 0x10 */ s16 unk10; // Elevation
	/* 0x12 */ s16 unk12; // Speed
	/* 0x14 */ s16 unk14;
	/* 0x16 */ s16 unk16;
	/* 0x18 */ s16 unk18;
	/* 0x1A */ u8 unk1A; // specIndex
	/* 0x1B */ u8 unk1B;
	/* 0x1C */ s16 unk1C; // hitPoints
	/* 0x1E */ s16 unk1E;
	/* 0x20 */ u16 unk20; // Bit flags
	/* 0x22 */ s16 unk22;
	/* 0x24 */ s16 unk24;
	/* 0x26 */ s16 unk26;
	/* 0x28 */ s16 unk28;
	/* 0x2A */ s16 unk2A;
	/* 0x2C */ u8 pad2C[2];
	/* 0x2E */ s16 unk2E;
	/* 0x30 */ f32 unk30; // "Inc" X
	/* 0x34 */ f32 unk34; // "Inc" Y
	/* 0x38 */ f32 unk38; // "Inc" Z
	/* 0x3C */ s16 unk3C; // fuel
	/* 0x3E */ u8 pad3E[2];
	/* 0x40 */ s16 unk40;
	/* 0x42 */ s16 unk42;
	/* 0x44 */ u8 unk44;
	/* 0x45 */ u8 unk45;
	/* 0x46 */ u8 unk46;
	/* 0x47 */ u8 unk47;
	/* 0x48 */ u8 unk48;
	/* 0x49 */ u8 pad49[3];
	/* 0x4C */ f32 unk4C; // X postion as float
	/* 0x50 */ f32 unk50; // Y position as float
	/* 0x54 */ f32 unk54; // Z position as float
	/* 0x58 */ f32 unk58;
} VehicleInstance; /* size = 0x5C */

typedef struct {
	/* 0x00 */ f32 unk0;
	/* 0x04 */ f32 unk4;
	/* 0x08 */ f32 unk8;
	/* 0x0C */ u8 unkC;
	/* 0x0D */ u8 unkD;
	/* 0x0E */ u8 unkE;
	/* 0x0F */ u8 unkF;
	/* 0x10 */ f32 unk10;
	/* 0x14 */ u8 unk14;
	/* 0x15 */ u8 pad15[0x3];
	/* 0x18 */ s32 unk18;
	/* 0x1C */ s32 unk1C;
} Unk8007CAA8_6A40; /* size = 0x20 */

typedef struct {
	/* 0x00 */ s8 unk0;
	/* 0x01 */ s8 unk1;
	/* 0x02 */ s8 unk2;
	/* 0x03 */ s8 unk3;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ u32 unk8;
	/* 0x0C */ u8 padC[4];
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ s16 unk16;
	/* 0x18 */ s16 unk18;
	/* 0x1A */ s16 unk1A;
	/* 0x1C */ u8 unk1C;
	/* 0x1D */ u8 unk1D;
	/* 0x1E */ u8 unk1E;
	/* 0x1F */ u8 unk1F;
	/* 0x20 */ s16 unk20;
	/* 0x22 */ s16 unk22;
	/* 0x24 */ s16 unk24;
	/* 0x26 */ s16 unk26;
	/* 0x28 */ s16 unk28;
	/* 0x2A */ s16 unk2A;
	/* 0x2C */ u8 unk2C;
	/* 0x2D */ u8 unk2D;
	/* 0x2E */ u8 unk2E;
	/* 0x2F */ u8 unk2F;
	/* 0x30 */ s16 unk30;
	/* 0x32 */ s16 unk32;
	/* 0x34 */ s16 unk34;
	/* 0x36 */ s16 unk36;
	/* 0x38 */ s16 unk38;
	/* 0x3A */ s16 unk3A;
	/* 0x3C */ u8 unk3C;
	/* 0x3D */ u8 unk3D;
	/* 0x3E */ u8 unk3E;
	/* 0x3F */ u8 unk3F;
	/* 0x40 */ s16 unk40;
	/* 0x42 */ s16 unk42;
	/* 0x44 */ s16 unk44;
	/* 0x46 */ s16 unk46;
	/* 0x48 */ s16 unk48;
	/* 0x4A */ s16 unk4A;
	/* 0x4C */ u8 unk4C;
	/* 0x4D */ u8 unk4D;
	/* 0x4E */ u8 unk4E;
	/* 0x4F */ u8 unk4F;
} Unk857E0Obj; /* size = 0x50 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 pad1[3];
	/* 0x04 */ s32 unk4;
} Unk80158F98; /* size = 0x08 */

typedef enum AlienFlags {
	ALIEN_FLAG_UNK1 = 1,
	ALIEN_FLAG_UNK2 = 2,
	ALIEN_FLAG_UNK3 = 4,
	ALIEN_FLAG_UNK4 = 8,
	ALIEN_FLAG_UNK5 = 0x10,
	ALIEN_FLAG_TARGET_OBJ = 0x20,
	ALIEN_FLAG_AWAY = 0x40,
	ALIEN_FLAG_TARGET_VEHICLE = 0x80,
	ALIEN_FLAG_TARGET_PT = 0x100,
	ALIEN_FLAG_UNKA = 0x200,
	ALIEN_FLAG_UNKB = 0x400,
	ALIEN_FLAG_UNKC = 0x800,
	ALIEN_FLAG_UNKD = 0x1000,
	ALIEN_FLAG_UNKE = 0x2000,
	ALIEN_FLAG_UNKF = 0x4000, // Target building?
	ALIEN_FLAG_UNKG = 0x8000,
	ALIEN_FLAG_UNKH = 0x10000,
	ALIEN_FLAG_UNKI = 0x20000,
	ALIEN_FLAG_UNKJ = 0x40000,
	ALIEN_FLAG_UNKK = 0x80000,
	ALIEN_FLAG_UNKL = 0x100000,
	ALIEN_FLAG_UNKM = 0x200000,
	ALIEN_FLAG_INVINCIBLE = 0x400000,
	ALIEN_FLAG_PLAYER = 0x8000000,
	ALIEN_FLAG_UNKN = 0x10000000,
	ALIEN_FLAG_UNKO = 0x20000000,
	ALIEN_FLAG_FALL = 0x40000000,
	ALIEN_FLAG_UNKP = 0x80000000
} AlienFlags;

typedef struct {
	/* 0x00 */ s16 unk0; // X position
	/* 0x02 */ s16 unk2; // Y position
	/* 0x04 */ s16 unk4; // Z position
	/* 0x06 */ s16 unk6; // X orientation
	/* 0x08 */ s16 unk8; // Y orientation
	/* 0x0A */ s16 unkA; // Z orientation
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE; // "Direction"
	/* 0x10 */ s16 unk10; // Y Velocity, are this and Speed actually a single s32?
	/* 0x12 */ s16 unk12; // Speed
	/* 0x14 */ s16 unk14; // target x coord
	/* 0x16 */ s16 unk16; // target y coord
	/* 0x18 */ s16 unk18; // target z coord
	/* 0x1A */ u8 specIndex; // Specs are the same every level? e.g. 0x19 is harvester, 0x1B is Boss
	/* 0x1B */ u8 unk1B; // "Stage" something to do with showing health bar? Used as human count for harvester?
	/* 0x1C */ s16 hitPoints;
	/* 0x1E */ s16 unk1E; // Weapons? Upper byte used as HCU count for harvester?
	/* 0x20 */ s32 unk20; // Bit flags
	/* 0x24 */ u8 unk24; // Human type
	/* 0x25 */ u8 unk25; // parent alien instance id?
	/* 0x26 */ u8 unk26;
	/* 0x27 */ u8 unk27;
	/* 0x28 */ s8 unk28; // Last collision tile X
	/* 0x29 */ s8 unk29; // Last collision tile Z
	/* 0x2A */ s16 unk2A; // Desired direction
	/* 0x2C */ s16 unk2C; // Counters
	/* 0x2E */ s16 unk2E;
	/* 0x30 */ s16 unk30;
	/* 0x32 */ s16 unk32;
	/* 0x34 */ s16 unk34; // Collision counter?
	/* 0x36 */ u8 unk36; // Anim counter?
	/* 0x37 */ u8 unk37; // Hit counter?
	/* 0x38 */ s16 unk38; // target building/vehicle instance id. Some code loads 0x39 as a u8 by loading it into a u8 var
	/* 0x3A */ s16 unk3A; // Wait counter?
	/* 0x3C */ s8 unk3C;
	/* 0x3D */ s8 unk3D;
	/* 0x3E */ u8 unk3E;
	/* 0x3F */ u8 unk3F;
	/* 0x40 */ s16 unk40; // Water counter?
	/* 0x42 */ s16 unk42;
	/* 0x44 */ s16 unk44;
	/* 0x46 */ u8 pad46;
	/* 0x47 */ u8 unk47; // Collision flags
	/* 0x48 */ s16 unk48;
	/* 0x4A */ u8 pad4A;
	/* 0x4B */ u8 unk4B;
	/* 0x4C */ s16 unk4C;
	/* 0x4E */ s8 unk4E;
	/* 0x4F */ u8 pad4F;
} AlienInstance; /* size = 0x50 */

// 0x5C Pointer to Death animation ASM?
// 0x60 xxxxyyyy xxxx Drops modifier
// 0x68
typedef struct {
	/* 0x00 */ s32 unk0; // Body modifier
	/* 0x04 */ u8 pad4[0x4]; // Changes shadow
	/* 0x08 */ s32 unk8; // Collision model size? Maybe only be second h/word
	/* 0x0C */ s16 unkC; // xxxxyyyy Variables xxxx (Drone King Shield size)(Spyder warp beam size) yyyy (Spyder Health goes up to this value from normal then begins to decrease)
	/* 0x0E */ u8 padE[0x2];
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ s16 unk14; // Points given on death
	/* 0x16 */ u8 unk16;
	/* 0x17 */ u8 pad17;
	/* 0x18 */ s32 unk18; // Ptr to name
	/* 0x1C */ u8 pad1C[0x4]; // First weapon?
	/* 0x20 */ s16 unk20;
	/* 0x22 */ s16 unk22;
	/* 0x24 */ s16 unk24;
	/* 0x26 */ s16 unk26;
	/* 0x28 */ u8 pad28[0x4]; // Second weapon?
	/* 0x2C */ s16 unk2C;
	/* 0x2E */ s16 unk2E;
	/* 0x30 */ s16 unk30;
	/* 0x32 */ u16 unk32;
	/* 0x34 */ s16 unk34; // Width of main shadow
	/* 0x36 */ s16 unk36; // Depth of main shadow
	/* 0x38 */ s16 unk38;
	/* 0x3A */ u16 unk3A; // Health meter size
	/* 0x3C */ s16 unk3C;
	/* 0x3E */ s16 unk3E;
	/* 0x40 */ s16 unk40; // Max speed?
	/* 0x42 */ s16 unk42; // Turning speed?
	/* 0x44 */ void *unk44; // Pointer to head model/arrangment?
	/* 0x48 */ void (*unk48)(u8);
	/* 0x4C */ void *unk4C;
	/* 0x50 */ s8 unk50; // Legs modifier?
	/* 0x51 */ u8 unk51;
	/* 0x52 */ u8 unk52; // Damage done by rush attack(Spyder)
	/* 0x53 */ u8 unk53;
	/* 0x54 */ s32 unk54; // xxxxyyyy xxxx Material type etc(Flesh, metal) Can use to give other enemies shields(000C)
	/* 0x58 */ s16 unk58; // Height of body off the ground
	/* 0x5A */ s8 unk5A;
	/* 0x5B */ u8 pad5B[0xD];
} AlienSpec; /* size = 0x68 */

typedef struct {
	/* 0x00 */ s16 xOffset;
	/* 0x02 */ s16 zOffset;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 alienSpecId;
	/* 0x07 */ u8 pad7;
} AlienWaveEntry; /* size = 0x08 */

typedef struct {
	/* 0x00 */ s8 waveSpecId;
	/* 0x01 */ u8 pad1;
	/* 0x02 */ s16 xPosition;
	/* 0x04 */ s16 yPosition;
	/* 0x06 */ u8 pad6[2];
	/* 0x08 */ s32 unk8; // Seconds before wave spawns after triggered
	/* 0x0C */ u8 unkC;
	/* 0x0D */ u8 unkD;
	/* 0x0E */ u8 unkE; // 0xE = If != 0 wave respawns when destroyed
	/* 0x0F */ s8 unkF; // Y axis rotation applied to aliens (0 = facing North, 63 = East)
	/* 0x10 */ u8 unk10; // Count of aliens intially spawned still alive
	/* 0x11 */ u8 unk11;
	/* 0x12 */ u8 unk12; // Must equal the s32 at 80047f94 for trigger type(spec) 1 to check its conditions
	/* 0x13 */ s8 unk13;
} AlienWaveInstance; /* size = 0x14 */

typedef struct {
	/* 0x00 */ f32 unk0;
	/* 0x04 */ f32 unk4;
	/* 0x08 */ f32 unk8;
	/* 0x0C */ f32 unkC;
	/* 0x10 */ f32 unk10;
	/* 0x14 */ f32 unk14;
	/* 0x18 */ s16 unk18;
	/* 0x1A */ s16 unk1A;
	/* 0x1C */ s16 unk1C;
	/* 0x1E */ u16 unk1E;
	/* 0x20 */ s16 unk20;
	/* 0x22 */ u8 pad22[0xE];
	/* 0x30 */ s32 unk30;
	/* 0x34 */ s16 unk34;
	/* 0x36 */ s16 unk36;
	/* 0x38 */ VehicleInstance* unk38;
	/* 0x3C */ s16 unk3C;
	/* 0x3E */ s16 unk3E;
	/* 0x40 */ u8* unk40;
} Unk80052B2C; /* size = 0x44 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
} Unk8014F6D0; /* size = 0x12 */

typedef struct Unk80042DB8 {
	/* 0x00 */ struct Unk80042DB8 *unk0;
	/* 0x04 */ struct Unk80042DB8 *unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ s32 unkC;
	/* 0x10 */ void *unk10;
} Unk80042DB8;

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 pad1[3];
	/* 0x04 */ Unk80042DB8 *unk4;
	/* 0x08 */ Unk80042DB8 *unk8;
} Unk80042DA8; /* size = 0x0C */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 unk6;
	/* 0x07 */ u8 pad7;
} Unk80148620; /* size = 0x08 */

// 0x00 xxxxyyyy yyyy = Model pointer
// 0x0C xxxxxxxx Collision model size
// 0x0E Frontal Armour
// 0x10 Side Armour
// 0x12 Rear Armour
// 0x14 Penalty
// 0x16 Collision Type
// 0x18 Vehicle Name reference
// 0x1C First Weapon
// 0x20 Gun 1 Xposition
// 0x22 Gun 1 Yposition
// 0x24 Gun 1 Zpostiion
// 0x28 Second Weapon
// 0x2C Gun 2 Xposition
// 0x2E Gun 2 Xposition
// 0x30 Gun 2 Xposition
// 0x32 Mass
// 0x3A Hits. Max healt
// 0x3C Arc of Fire
// 0x3E Acceleration
// 0x40 Max Speed
// 0x42 Min Speed. A negative value is reversing max speed
// 0x44 Tension
// 0x45 Damping
// 0x46 Hill Climb
// 0x47 Water Drag
// 0x48 Max Steer
// 0x4C Certain values allow vehicle to drive underwater (hill climb?)
// 0x4D Certain values allow vertical take-off and landing
// 0x4E Water flag? (00 = Drive ON water, 01 = Drive UNDER water)
// 0x50 Launch Angle
// 0x52 Pivot Point
// 0x53 Detail prop (06 = Tank turret 08 = Gun barrels? 0A = tank tracks 0C = Tank barrel? 0E = Left Track 0F = Right Ttrack 15 Propeller 18 = Bulldog turret 19 = Bulldog machinegun) 
// 0x56 Side Grip
// 0x57 Grip
// 0x5A Steer Change
// 0x5C Camera Min
// 0x5D Camera Max
// 0x5E Left/Right position of Adam in vehicle
// 0x60 Front/Back position of Adam in vehicle
// 0x65 Shadow Size
// 0x66 Steer Point (Turning speed)
// 0x6C Shadow X
// 0x6D Shadow Z
typedef struct {
	/* 0x00 */ u32 modelDL; // Model display list pointer
	/* 0x04 */ u8 pad4[0x8];
	/* 0x0C */ s16 unkC;
	/* 0x0E */ u8 pad0E[0x6];
	/* 0x14 */ u16 unk14;
	/* 0x16 */ u8 unk16;
	/* 0x17 */ u8 pad17;
	/* 0x18 */ s32 unk18; // string table index for vehicle name
	/* 0x1C */ s32 weapon1;
	/* 0x20 */ s16 gun1X;
	/* 0x22 */ s16 gun1Y;
	/* 0x24 */ s16 gun1Z;
	/* 0x26 */ u8 pad26[0x2];
	/* 0x28 */ s32 weapon2;
	/* 0x2C */ s16 gun2X;
	/* 0x2E */ s16 gun2Y;
	/* 0x30 */ s16 gun2Z;
	/* 0x32 */ u16 unk32;
	/* 0x34 */ s16 unk34;
	/* 0x36 */ s16 unk36;
	/* 0x38 */ s16 unk38;
	/* 0x3A */ u16 hitPoints;
	/* 0x3C */ s16 arcOfFire;
	/* 0x3E */ u8 unk3E;
	/* 0x3F */ u8 pad3F;
	/* 0x40 */ s16 unk40;
	/* 0x42 */ s16 unk42;
	/* 0x44 */ u8 unk44;
	/* 0x45 */ u8 unk45;
	/* 0x46 */ u8 unk46;
	/* 0x47 */ u8 unk47;
	/* 0x48 */ s16 unk48;
	/* 0x4A */ u8 pad4A[0x2];
	/* 0x4C */ u32 unk4C;
	/* 0x50 */ u8 launchAngle;
	/* 0x51 */ u8 unk51;
	/* 0x52 */ u8 pivotPoint;
	/* 0x53 */ u8 detailProp;
	/* 0x54 */ u8 unk54;
	/* 0x55 */ u8 unk55;
	/* 0x56 */ u8 pad56[2];
	/* 0x58 */ u8 unk58;
	/* 0x59 */ u8 unk59;
	/* 0x5A */ u8 pad5A[0x2];
	/* 0x5C */ u8 unk5C;
	/* 0x5D */ u8 unk5D;
	/* 0x5E */ u8 unk5E;
	/* 0x5F */ u8 unk5F;
	/* 0x60 */ u8 unk60;
	/* 0x61 */ u8 unk61; // Max fuel (/ 0x100) ?
	/* 0x62 */ u8 unk62;
	/* 0x63 */ u8 pad63[0x7];
	/* 0x6A */ s16 unk6A;
	/* 0x6C */ u8 pad6C[0x4];
} VehicleSpec; /* size = 0x70 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ u8 pad04[4];
	/* 0x08 */ f32 unk8;
	/* 0x0C */ f32 unkC;
	/* 0x10 */ u8 pad10[4];
	/* 0x14 */ f32 unk14;
} WeaponLevelSpec; /* size = 0x18 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ u8 pad04[4];
	/* 0x08 */ s16 unk8;
} WeaponSpecEntry; /* size = 0xA */

typedef struct {
	/* 0x00 */ s16 xCoord;
	/* 0x02 */ s16 yCoord;
	/* 0x04 */ s16 zCoord;
	/* 0x06 */ u8 buildingType;
	/* 0x07 */ u8 unk7;
	union {
		struct {
			/* 0x08 */ u8 isDestroyable;
			/* 0x09 */ u8 unk9;
			/* 0x0A */ u8 state;
			/* 0x0B */ u8 rotation;
		};
		/* 0x08 */ u32 unk8;
	};
	/* 0x0C */ u8 unkC;
	/* 0x0D */ u8 unkD;
	/* 0x0E */ u8 unkE;
	/* 0x0F */ s8 hitPoints;
	/* 0x10 */ u8 unk10;
	/* 0x11 */ s8 unk11;
	/* 0x12 */ u8 door1InteriorId;
	/* 0x13 */ u8 door2InteriorId;
	/* 0x14 */ u8 door3InteriorId;
	/* 0x15 */ u8 unk15;
	/* 0x16 */ u8 unk16;
	/* 0x17 */ u8 unk17;
} BuildingInstance; /* size = 0x18 */

// 0x00 xxyyyyyy yyyyyy = Model
// 0x04 xxyyyyyy yyyyyy = Damaged model
// 0x10 xxyyzzaa yy = Collision data
// 0x18 xxyyzzaa yy = Max health aa = Detail props(00 = Windmill 01 = flag 02 = Fountain effect 04 = Black oblong 05 = Statue's hand 06 = Grass oblong
typedef struct {
	/* 0x00 */ u8 pad0[0x10];
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ u8 pad16[0x3];
	/* 0x19 */ s8 unk19;
	/* 0x1A */ u8 unk1A[0x6];
} BuildingSpec; /* size = 0x20 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ u8 pad8[0x4];
	/* 0x0C */ s32 unkC;
	/* 0x10 */ u8 pad10[0x3];
	/* 0x13 */ u8 unk13;
} Unk800522C0; /* size = 0x14 */

typedef struct {
	/* 0x00 */ f32 unk0;
	/* 0x04 */ f32 unk4;
	/* 0x08 */ f32 unk8;
	/* 0x0C */ f32 unkC;
	/* 0x10 */ f32 unk10;
	/* 0x14 */ f32 unk14;
	/* 0x18 */ s32 unk18;
	/* 0x1C */ s8 unk1C;
	/* 0x1D */ s8 unk1D;
	/* 0x1E */ u8 pad1E[0x2];
	/* 0x20 */ s32 unk20;
	/* 0x24 */ s32 unk24;
	/* 0x28 */ s16 unk28;
	/* 0x2A */ s16 unk2A;
	/* 0x2C */ s16 unk2C;
	/* 0x2E */ u8 unk2E;
	/* 0x2F */ u8 pad2F[0x1];
} Projectile; /* size = 0x30 */

typedef struct {
	/* 0x00 */ s16 curX;
	/* 0x02 */ s16 posX[4];
	/* 0x0A */ s16 curY;
	/* 0x0C */ s16 posY[4];
	/* 0x14 */ s16 curZ;
	/* 0x16 */ s16 posZ[4];
	/* 0x1E */ u16 unk1E; /* bitfield: bit 0 = ?, bit 1 = in-use */
	/* 0x20 */ void *unk20; // Owning Projectile pointer
} Unk8015F790; /* size = 0x24 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 pad6[0x2];
	/* 0x08 */ s32 unk8;
	/* 0x0C */ s32 unkC;
	/* 0x10 */ u8 unk10;
	/* 0x11 */ u8 pad11[0x3];
} Unk8015F9D0; /* size = 0x14 */

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ s32 unkC;
	/* 0x10 */ u8 pad10[0x4];
	/* 0x14 */ s32 unk14;
	/* 0x18 */ s16 unk18;
	/* 0x1A */ s16 unk1A;
	/* 0x1C */ s16 unk1C;
	/* 0x1E */ s16 unk1E;
	/* 0x20 */ s32 (*unk20)();
	/* 0x24 */ void (*unk24)(s32, s16);
	/* 0x28 */ u32 unk28;
	/* 0x2C */ u8 unk2C;
	/* 0x2D */ u8 pad2D[3];
} Unk8015FAD0; /* size = 0x30 */

typedef struct {
	/* 0x00 */ s16 yPosition;
	/* 0x02 */ u8 opacity;
	/* 0x03 */ u8 weaponSlot;
} HudWeaponItem; /* size = 0x04 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ u8 pad4[0x2];
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ u8 padC[0x4];
	/* 0x10 */ s16 unk10;
} Unk80259490; /* size = 0x12 */

typedef struct {
	/* 0x00 */ s8 unk0;
	/* 0x01 */ u8 pad1;
	/* 0x02 */ u8 unk2;
	/* 0x03 */ u8 pad3;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ u8 pad8[0x8];
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ u8 pad16[0xA];
	/* 0x20 */ s16 unk20;
	/* 0x22 */ s16 unk22;
	/* 0x24 */ s16 unk24;
	/* 0x26 */ u8 pad26[0xA];
	/* 0x30 */ s16 unk30;
	/* 0x32 */ s16 unk32;
	/* 0x34 */ s16 unk34;
	/* 0x36 */ u8 pad36[0xA];
	/* 0x40 */ s16 unk40;
	/* 0x42 */ s16 unk42;
	/* 0x44 */ s16 unk44;
	/* 0x46 */ u8 pad46[0xA];
} Unk80259D90; /* size = 0x50 */

typedef struct {
	/* 0x00 */ u32 unk0;
	/* 0x04 */ u8 pad4[0x4C];
} Unk80259D98; /* size = 0x50 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s8 unkC;
	/* 0x0D */ s8 unkD;
	/* 0x0E */ s16 unkE;
} Unk8014DD50; /* size = 0x10 */

typedef struct {
	/* 0x00 */ u8  unk0;               /* type identifier */
	/* 0x01 */ s8  unk1;               /* x tile coordinate */
	/* 0x02 */ s8  unk2;               /* z tile coordinate */
	/* 0x03 */ u8  pad3; // size in tiles?
	/* 0x04 */ s32 unk4;               /* spawn counter */
	/* 0x08 */ u8  unk8;               /* alien entity index */
	/* 0x09 */ u8  unk9;
	/* 0x09 */ u8  padA[2];
	/* 0x0C */ void (*unkC)(void *);  /* state callback */
} Unk80222A78; /* size = 0x10 Are these notes correct? */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
} InputStruct_8012B150; /* size = 0x06 */

typedef struct {
	/* 0x00 */ char pad[0x18];
	/* 0x18 */ s32 unk18;
	/* 0x1C */ s32 unk1C;
	/* 0x20 */ s32 unk20;
} OutputStruct_8012B150; /* size = 0x24 */

typedef struct {
	/* 0x00 */ s16 values[8];
} Struct_80140D00; /* size = 0x10 */

typedef struct {
	/* 0x00 */ s16 values[14];
} Struct_80140D10; /* size = 0x1C */

typedef struct {
	/* 0x00 */ s16 unk0;  /* x */
	/* 0x02 */ s16 unk2;  /* y */
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ u8 unk8;   /* active flag / type */
	/* 0x09 */ u8 unk9;
	/* 0x0A */ u8 unkA;
	/* 0x0B */ u8 unkB;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ u16 unk10;
} Unk80152B80; /* particle/effect entry, 18 bytes */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ u8 pad4[0x14];
	/* 0x18 */ s16 unk18;
	/* 0x1A */ s16 unk1A;
	/* 0x1C */ u8 pad1C[0x14];
} Unk80152D00; /* 0x30 bytes */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s32 unk10;
	/* 0x14 */ u8 unk14;
	/* 0x15 */ u8 pad15[3];
} Unk80152D00SubEntry; /* 0x18 bytes */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ u16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ u8 unk16;
	/* 0x17 */ u8 pad17;
	/* 0x18 */ s16 unk18;
	/* 0x1A */ s16 unk1A;
	/* 0x1C */ u8 unk1C;
	/* 0x1D */ u8 pad1D;
	/* 0x1E */ s16 unk1E;
	/* 0x20 */ s16 unk20;
	/* 0x22 */ u8 pad22[0x4];
	/* 0x26 */ u8 unk26;
	/* 0x27 */ u8 unk27;
	/* 0x28 */ s16 unk28;
} MissionData; /* size = 0x2A */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ u16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ u8 unk16;
	/* 0x17 */ u8 pad17;
	/* 0x18 */ s16 unk18;
	/* 0x1A */ s16 unk1A;
	/* 0x1C */ u8 unk1C;
	/* 0x1D */ u8 pad1D;
	/* 0x1E */ s16 unk1E;
	/* 0x20 */ s16 unk20;
	/* 0x22 */ u8 unk22;
	/* 0x23 */ u8 unk23;
	/* 0x24 */ u8 unk24;
	/* 0x25 */ u8 unk25;
	/* 0x26 */ u8 unk26;
	/* 0x27 */ u8 unk27;
	/* 0x28 */ s16 unk28;
} MissionDataNav; /* size = 0x2A */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ u8 unkC;
	/* 0x0D */ u8 padD;
} Unk80080530_Src; /* size = 0x0E */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ u8 unk2;
	/* 0x03 */ u8 unk3;
	/* 0x04 */ u8 unk4;
} Unk80080588Entry5; /* size = 0x05 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ u8 unk2;
} Unk80080588Entry3; /* size = 0x03 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ u8 unk2;
} Unk80080588Rgb; /* size = 0x03 */

typedef struct {
	/* 0x00 */ u8 pad0[0x18];
	/* 0x18 */ s32 unk18;
} Unk80080588Entry1C; /* size = 0x1C */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 pad6[4];
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ u8 unk10;
} Unk8008C7E4Sub; /* size = 0x12 */

typedef struct {
	/* 0x00 */ u8 pad0[0x8];
	/* 0x08 */ void* unk8;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ s16 unk16;
	/* 0x18 */ u8 unk18;
	/* 0x19 */ u8 unk19;
	/* 0x1A */ u8 pad1A[0x2];
	/* 0x1C */ s32 unk1C;
	/* 0x20 */ s32 unk20;
	/* 0x24 */ u8 unk24;
	/* 0x25 */ u8 pad25[3];
	/* 0x28 */ u8 unk28;
	/* 0x29 */ u8 unk29;
	/* 0x2A */ u8 unk2A;
	/* 0x2B */ u8 pad2B;
} Unk80080530_Dst; /* size = 0x2C */

typedef struct {
	/* 0x00 */ u8 pad0[0x10];
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
} FrontendStruct; /* size = 0x14 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 pad6[2];
	/* 0x08 */ f32 unk8;
	/* 0x0C */ f32 unkC;
	/* 0x10 */ f32 unk10;
	/* 0x14 */ u8 pad14[0x2C];
} Unk800801BCEntry; /* size = 0x40 */

typedef struct {
	/* 0x00 */ void* unk0;
	/* 0x04 */ u8 pad4[0x8];
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ s16 unk16;
	/* 0x18 */ u8 unk18;
	/* 0x19 */ u8 unk19;
	/* 0x1A */ u8 pad1A[0x6];
	/* 0x20 */ s32 unk20;
} Unk8007FE8CArg; /* size = 0x24 */

typedef struct {
	/* 0x00 */ u8 pad[0x50];
	/* 0x50 */ s32 unk50;
	/* 0x54 */ void* unk54;
} FrontendStreamSlot; /* size = 0x58 */


typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ u8 pad4[0x14];
	/* 0x18 */ s16 unk18;
	/* 0x1A */ s16 unk1A;
	/* 0x1C */ u8 pad1C[0x14];
} Unk80152D00Pair; /* paired laser timer entry, 0x30 bytes */
typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ u8 pad2[2];
	/* 0x04 */ u8 unk4;
	/* 0x05 */ u8 pad5;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
} Unk800DE130; /* size = 0x0C */

typedef struct {
	/* 0x00 */ u8 type;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
} Unk800AA998Entry; /* size = 0x10 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 unk6;
	/* 0x07 */ u8 unk7;
	/* 0x08 */ u8 unk8;
	/* 0x09 */ u8 unk9;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ u8 unkC;
	/* 0x0D */ u8 unkD;
	/* 0x0E */ s8 unkE;
	/* 0x0F */ u8 unkF;
	/* 0x10 */ s8 unk10;
	/* 0x11 */ s8 unk11;
	/* 0x12 */ s8 unk12;
	/* 0x13 */ u8 unk13;
} Unk800E1980; /* size = 0x14 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ u8 unkE;
	/* 0x0F */ u8 unkF;
	/* 0x10 */ u8 unk10;
	/* 0x11 */ u8 unk11;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ s16 unk16;
	/* 0x18 */ u8 unk18;
	/* 0x19 */ u8 pad19[0x3];
} Unk800DE840; /* size = 0x1C */

typedef struct {
	/* 0x00 */ u8 pad0[0x60];
	/* 0x60 */ u8 unk60;
	/* 0x61 */ u8 unk61;
	/* 0x62 */ u8 unk62;
	/* 0x63 */ u8 unk63;
	/* 0x64 */ u8 unk64;
	/* 0x65 */ u8 unk65;
	/* 0x66 */ u8 unk66;
	/* 0x67 */ u8 unk67;
	/* 0x68 */ u8 unk68;
	/* 0x69 */ u8 unk69;
	/* 0x6A */ u8 unk6A;
	/* 0x6B */ u8 unk6B;
	/* 0x6C */ u8 unk6C;
	/* 0x6D */ u8 unk6D;
	/* 0x6E */ u8 unk6E;
	/* 0x6F */ u8 unk6F;
	/* 0x70 */ u8 unk70;
	/* 0x71 */ u8 unk71;
	/* 0x72 */ u8 unk72;
	/* 0x73 */ u8 unk73;
	/* 0x74 */ u8 unk74;
	/* 0x75 */ u8 unk75;
	/* 0x76 */ u8 unk76;
	/* 0x77 */ u8 unk77;
	/* 0x78 */ u8 unk78;
	/* 0x79 */ u8 unk79;
	/* 0x7A */ u8 unk7A;
	/* 0x7B */ u8 unk7B;
	/* 0x7C */ u8 unk7C;
	/* 0x7D */ u8 unk7D;
	/* 0x7E */ u8 unk7E;
	/* 0x7F */ u8 unk7F;
} Unk8014F618; /* size = 0x80 */

typedef struct {
	/* 0x00 */ Vtx *unk0;
	/* 0x04 */ s8 unk4;
	/* 0x05 */ s8 unk5;
	/* 0x06 */ s8 unk6;
	/* 0x07 */ s8 pad7;
} Unk800B753CEntry; /* size = 0x08 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
} Unk80052B40; /* size = 0x06 */

typedef struct {
	/* 0x00 */ u8 unk0[8];
	/* 0x08 */ Unk80052B40 unk8;
	/* 0x0E */ u8 pad0[2];
} Unk8013FDA8Entry; /* size = 0x10 */

typedef struct {
	s32 model;
	void (*updateMtx)(u8);
	Unk80052B40 offset;
	u16 flags;
} ShadowPartEntry;

typedef struct {
	/* 0x00 */ f32 unk0;
	/* 0x04 */ f32 unk4;
	/* 0x08 */ f32 unk8;
	/* 0x0C */ f32 unkC;
	/* 0x10 */ f32 unk10;
	/* 0x14 */ f32 unk14;
	/* 0x18 */ f32 unk18;
	/* 0x1C */ f32 unk1C;
	/* 0x20 */ f32 unk20;
	/* 0x24 */ f32 unk24;
	/* 0x28 */ f32 unk28;
	/* 0x2C */ f32 unk2C;
	/* 0x30 */ f32 unk30;
	/* 0x34 */ f32 unk34;
	/* 0x38 */ f32 unk38;
	/* 0x3C */ f32 unk3C;
	/* 0x40 */ f32 unk40;
	/* 0x44 */ f32 unk44;
	/* 0x48 */ s16 unk48;
	/* 0x4A */ s16 unk4A;
	/* 0x4C */ s16 unk4C;
	/* 0x4E */ s16 unk4E;
	/* 0x50 */ s16 unk50;
	/* 0x52 */ s16 unk52;
	/* 0x54 */ s16 unk54;
	/* 0x56 */ s16 unk56;
	/* 0x58 */ s16 unk58;
	/* 0x5A */ s16 unk5A;
	/* 0x5C */ s16 unk5C;
	/* 0x5E */ s16 unk5E;
	/* 0x60 */ s16 unk60;
	/* 0x62 */ u8 pad62[0x2];
	/* 0x64 */ s16 unk64;
	/* 0x66 */ u8 pad66[0x2];
	/* 0x68 */ s32 unk68;
	/* 0x6C */ u8 unk6C;
} Unk80160080; /* size = 0x70 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 pad6[0x2];
	/* 0x08 */ f32 unk8;
	/* 0x0C */ f32 unkC;
	/* 0x10 */ f32 unk10;
	/* 0x14 */ u8 pad14[0x284];
	/* 0x298 */ s32 unk298;
	/* 0x29C */ f32 unk29C;
	/* 0x2A0 */ u8 pad2A0[0x164];
	/* 0x404 */ void *unk404;
	/* 0x408 */ void *unk408;
	/* 0x40C */ s32 unk40C;
	/* 0x410 */ f32 unk410;
	/* 0x414 */ f32 unk414;
	/* 0x418 */ f32 unk418;
	/* 0x41C */ u8 unk41C;
	/* 0x41D */ u8 pad41D[0x3];
	/* 0x420 */ void *unk420;
	/* 0x424 */ u8 unk424;
	/* 0x425 */ u8 pad425[0x23];
} Unk80157600; /* size = 0x448. TODO This address outside is actually an array of 0x40 structs? */
// Inside it appears to be solely f32 values

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ s32 unkC;
	/* 0x10 */ s32 unk10;
	/* 0x14 */ s32 unk14;
	/* 0x18 */ u8 unk18;
	/* 0x19 */ u8 pad19[0x3];
	/* 0x1C */ s32 unk1C;
	/* 0x20 */ u8 pad20[0x14];
} Unk8009E8DC; /* size = 0x34 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ s16 unk16;
} Unk801575E0; /* size = 0x18 */

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
} Unk80052B40_fp; /* size = 0x0C */

typedef struct {
	/* 0x000 */ u8 pad0[0x8];
	/* 0x008 */ s32 unk8; /* num animation frames */
	/* 0x00C */ u8 pad0C[0xE44];
	/* 0xE50 */ s32 unkE50;
} Unk8007F878_404; /* size = 0xE54 */

/* 14-byte animation frame data entry (stride = 0xE, array starts at anim_data+0x50) */
typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ u16 unkC;
} AnimFrameData; /* size = 0x0E */

/* 14-byte packed s16/u16 view of AnimFrameData, used for unaligned copy */
typedef struct {
	s16 a; s16 b; s16 c; s16 d; s16 e; s16 f; u16 g;
} AnimFrameData14; /* size = 0x0E */

/* 64-byte per-channel animation state element */
typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 pad6[0x2];
	/* 0x08 */ f32 unk8;
	/* 0x0C */ f32 unkC;
	/* 0x10 */ f32 unk10;
	/* 0x14 */ s32 unk14;
	/* 0x18 */ s32 unk18;
	/* 0x1C */ f32 unk1C;
	/* 0x20 */ f32 unk20;
	/* 0x24 */ s16 unk24;
	/* 0x26 */ s16 unk26;
	/* 0x28 */ s16 unk28;
	/* 0x2A */ s16 unk2A;
	/* 0x2C */ s16 unk2C;
	/* 0x2E */ s16 unk2E;
	/* 0x30 */ u16 unk30;
	/* 0x32 */ s16 unk32;
	/* 0x34 */ s16 unk34;
	/* 0x36 */ s16 unk36;
	/* 0x38 */ s16 unk38;
	/* 0x3A */ s16 unk3A;
	/* 0x3C */ s16 unk3C;
	/* 0x3E */ u8 pad3E[0x2];
} AnimChannelState; /* size = 0x40 */

typedef struct {
	/* 0x00 */ u8 pad0[0x18];
	/* 0x18 */ s32 unk18;
	/* 0x1C */ u8 pad1C[0x3E8];
	/* 0x404 */ void *unk404;
	/* 0x408 */ void *unk408;
	/* 0x40C */ s32 unk40C;
	/* 0x410 */ f32 unk410;
	/* 0x414 */ u8 pad414[0x11];
	/* 0x425 */ u8 unk425;
	/* 0x426 */ u8 unk426;
} Unk8007F878_D6AD8; /* size = 0x428 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
} Unk8007D62C_Entry; /* size = 0x02 */

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ u8 pad4[0x30];
} Unk8009E8E0; /* size = 0x34 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 pad1[0x1];
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ u8 unk8;
	/* 0x09 */ u8 pad9[0x1];
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ u8 pad12[0x2];
	/* 0x14 */ f32 unk14;
	/* 0x18 */ f32 unk18;
	/* 0x1C */ f32 unk1C;
	/* 0x20 */ f32 unk20;
	/* 0x24 */ f32 unk24;
	/* 0x28 */ f32 unk28;
	/* 0x2C */ u8 unk2C;
	/* 0x2D */ u8 unk2D;
	/* 0x2E */ u8 unk2E;
	/* 0x2F */ u8 pad2F[0x1];
} Unk800E66A8; /* stride 0x30 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 pad1[0x3];
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ s32 unkC;
	/* 0x10 */ f32 unk10;
	/* 0x14 */ f32 unk14;
	/* 0x18 */ s32 unk18;
	/* 0x1C */ s32 unk1C;
	/* 0x20 */ s32 unk20;
	/* 0x24 */ s32 unk24;
	/* 0x28 */ s16 unk28;
	/* 0x2A */ s16 unk2A;
	/* 0x2C */ s32 unk2C;
	/* 0x30 */ s16 unk30;
	/* 0x32 */ s16 unk32;
	/* 0x34 */ s16 unk34;
	/* 0x36 */ s16 unk36;
} Unk9C804; /* stride 0x38 */

typedef struct {
	/* 0x00 */ f32 unk0;
	/* 0x04 */ f32 unk4;
	/* 0x08 */ f32 unk8;
	/* 0x0C */ s32 unkC;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
} Unk169EC8Entry; /* stride 0x14 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 unk6;
	/* 0x07 */ u8 unk7;
	/* 0x08 */ u8 unk8;
	/* 0x09 */ u8 unk9;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ u8 unkC;
	/* 0x0D */ u8 unkD;
	/* 0x0E */ u8 unkE;
	/* 0x0F */ u8 unkF;
	/* 0x10 */ s8 unk10;
	/* 0x11 */ s8 unk11;
	/* 0x12 */ s8 unk12;
	/* 0x13 */ u8 unk13;
} UnkFC8E8Entry; /* stride 0x14 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ u8 unk4;
	/* 0x05 */ u8 unk5;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
} UnkFB6F8Entry; /* stride 0xC */

typedef struct {
	 /* 0x00 */ u8 unk0;
	 /* 0x01 */ u8 unk1;
	 /* 0x02 */ u8 unk2;
} Unk80154082; /* size = 0x3 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ u8 pad2[0xA];
} Unk8015408EEntry; /* stride = 0xC */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ u8 unkE;
	/* 0x0F */ u8 unkF;
	/* 0x10 */ u8 unk10;
	/* 0x11 */ u8 unk11;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ u8 unk14;
	/* 0x15 */ u8 unk15;
	/* 0x16 */ u8 pad16[6];
} Unk80154318Entry; /* stride = 0x1C */

typedef struct {
	/* 0x00 */ u32 unk0;
	/* 0x04 */ u8 pad4[0x8];
	/* 0x0C */ u32 unkC;
	/* 0x10 */ u8 pad10[0x8];
} Unk80050AE0; /* stride = 0x18 */

typedef struct {
	u16 unk0;
	u16 unk2;
} Frontend52690Viewport;

typedef struct {
	/* 0x00 */ u8 pad0[0x8];
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ u8 pad14[0x34];
} Unk80076538Obj; /* size = 0x48 */

typedef struct {
	/* 0x00 */ u32 unk0;
	/* 0x04 */ u8 unk4;
	/* 0x05 */ u8 unk5;
	/* 0x06 */ u8 pad6[2];
} Unk8007E12CEntry8;

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s8 unk6;
	/* 0x07 */ s8 unk7;
	/* 0x08 */ s8 unk8;
	/* 0x09 */ u8 unk9;
	/* 0x0A */ u8 unkA;
	/* 0x0B */ u8 unkB;
	/* 0x0C */ u8 unkC;
	/* 0x0D */ u8 unkD;
} Unk80154318Sub;

typedef struct {
	/* 0x00 */ u8 unk0; // type
	/* 0x01 */ u8 unk1;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ u8 unk4; // numUnits
	/* 0x05 */ u8 pad5[1];
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
} Unk801541F8Entry; /* stride = 0xC Special Effect */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
} Unk802E04F8Entry; /* stride = 8 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ u8 unk2;
} Unk80152CA0Entry; /* stride = 0x3 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 pad6[2];
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ u8 unkE;
	/* 0x0F */ u8 padF;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ u8 unk12;
	/* 0x13 */ u8 unk13;
	/* 0x14 */ u8 unk14;
	/* 0x15 */ u8 pad15[3];
	/* 0x18 */ s32 unk18;
	/* 0x1C */ s32 unk1C;
} Unk80153AE0Entry; /* stride = 0x20 */

typedef struct {
	/* 0x000 */ u8 unk0[0x144];
	/* 0x144 */ u8 unk144;
} UnkF9230Arg0;

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ s16 unk16;
	/* 0x18 */ u8 pad18[0xB];
	/* 0x23 */ u8 unk23;
} UnkF9230Func800F4748Entry; /* size = 0x24 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ s16 unk16;
	/* 0x18 */ s16 unk18;
	/* 0x1A */ s16 unk1A;
	/* 0x1C */ s16 unk1C;
	/* 0x1E */ s16 unk1E;
	/* 0x20 */ s16 unk20;
	/* 0x22 */ u8 unk22;
	/* 0x23 */ u8 unk23;
} UnkF9230ShadowLimb; /* size = 0x24 */

typedef struct {
	/* 0x000 */ UnkF9230ShadowLimb limbs[9];
	/* 0x144 */ u8 alienIdx;
	/* 0x145 */ u8 pad145[0x23];
	/* 0x168 */ u8 unk168;
	/* 0x169 */ u8 pad169;
	/* 0x16A */ s16 unk16A;
	/* 0x16C */ s16 unk16C;
	/* 0x16E */ u8 pad16E[0x02];
} UnkF9230ShadowWalker; /* size = 0x170 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
} UnkF9230Func800ED55CArg0; /* size = 0x10 */

typedef struct {
	/* 0x00 */ Vec3f pos;
	/* 0x0C */ Vec3f vel;
} UnkF9230Func80102FA4Point; /* size = 0x18 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
} UnkF9230Func8010065CEntry; /* size = 0x08 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 pad6[2];
	/* 0x08 */ f32 unk8;
	/* 0x0C */ f32 unkC;
	/* 0x10 */ f32 unk10;
} UnkA6C64Keyframe; /* stride = 0x14 */

typedef struct {
	/* 0x00 */ s16 x;
	/* 0x02 */ s16 y;
} TileCoord; /* stride = 0x4 */

typedef struct {
	/* 0x00 */ s8 unk0;
	/* 0x01 */ s8 unk1;
} TileEntry; /* stride = 0x2 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
} BeaconDisplayEntry; /* stride = 0x12 */

typedef struct {
	/* 0x00 */ u8 pad0[0x4];
	/* 0x04 */ f32 unk4;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s32 unkC;
} Unk8003E290Entry; /* 0x10 bytes */

typedef struct {
	/* 0x00 */ s16 minX;
	/* 0x02 */ s16 minZ;
	/* 0x04 */ s16 maxX;
	/* 0x06 */ s16 maxZ;
} BoundingBox; /* 0x08 bytes - Shield wall bounding box */

typedef struct {
	/* 0x00 */ BoundingBox main;   /* Main shield wall bounds */
	/* 0x08 */ BoundingBox sub[2]; /* Overlapping sub-regions (0 = empty if minX == maxX) */
} Unk8014FD30Type; /* 0x18 bytes Stage Shield Wall bounds */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ u8 pad2[2];
	/* 0x04 */ s32 unk4;
} Unk80047578; /* size = 0x08 */

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ s32 unkC;
	/* 0x10 */ s32 unk10;
	/* 0x14 */ s32 unk14;
	/* 0x18 */ s32 unk18;
	/* 0x1C */ s32 unk1C;
} Unk800476C8; /* size = 0x20 */


typedef struct {
	/* 0x00 */ u16 unk0;
	/* 0x02 */ u16 unk2;
	/* 0x04 */ u16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
} Unk_8014D298; /* size = 0x0A */

typedef struct {
	/* 0x00 */ u8 pad0[0x8];
	/* 0x08 */ u8 unk8;
} func_800A9DC0_B8D70_arg; /* size = 0x9 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ u8 pad[0x16];
} Unk80146212; /* size = 0x18 */

/* Entry in D_80146688 zone table, size = 0x10, 0x20 entries per level, indexed as [currentLevel][entry] */
typedef struct {
	/* 0x00 */ s8 unk0;      /* center X in 1/256 world units */
	/* 0x01 */ s8 unk1;      /* center Z in 1/256 world units */
	/* 0x02 */ s8 unk2;      /* half-size in 1/256 world units */
	/* 0x03 */ s8 unk3;      /* 0 = active zone entry */
	/* 0x04 */ u8 pad04[6];
	/* 0x0A */ s16 unk0A;
	/* 0x0C */ s16 unk0C;
	/* 0x0E */ u8 pad0E[2];
} Unk80146688; /* size = 0x10 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 pad6[2];
	/* 0x08 */ s16 unk8;
	/* 0x0A */ u8 unkA;
	/* 0x0B */ u8 padB;
} Unk802E4ED8_entry; /* size = 0x0C */

#pragma pack(1)
typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ u16 unk4;
} Unk802E71B8; /* size = 0x6 */
#pragma pack()

typedef struct {
	/* 0x00 */ u8 pad0[0x0A];
	/* 0x0A */ s16 unk0A;
	/* 0x0C */ u8 padC[0x0E];
	/* 0x1A */ s16 unk1A;
	/* 0x1C */ u8 pad1C[0x1E];
	/* 0x3A */ s16 unk3A;
	/* 0x3C */ u8 pad3C[0x1E];
	/* 0x5A */ s16 unk5A;
} Unk802E70C8; /* size = 0x5C */

/* Gate entry in shield wall. Array: D_8003E0FC[5][8], access [currentLevel-1][idx] */
typedef struct {
	/* 0x00 */ s16 xPosition; /* world X position */
	/* 0x02 */ s16 yPosition; /* world Y position */
	/* 0x04 */ s16 zPosition; /* world Z position */
	/* 0x06 */ s8  openness; /* gate open/close animation state (0=closed, 0x50=fully open) */
	/* 0x07 */ u8  unk7;
	/* 0x08 */ u8  unk8;
	/* 0x09 */ u8  unk9; /* gate type (1 or 2) */
} GateEntry; /* 0xA bytes */

typedef struct {
	s16 x;
	s16 y;
	s16 z;
} UnkPos16_8012B26C;

typedef struct {
	/* 0x00 */ Gfx *unk0;
	/* 0x04 */ Gfx *unk4;
	/* 0x08 */ Gfx *unk8;
	/* 0x0C */ u16 unkC;
	/* 0x0E */ u16 unkE;
	/* 0x10 */ u16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ u8 pad14[0x2];
	/* 0x16 */ s16 unk16;
} UnkBuildingProp_80118774; /* size = 0x18 */

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ void (*unk4)(BuildingInstance *arg0);
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ u8 padE;
	/* 0x0F */ u8 unkF;
	/* 0x10 */ s32 unk10;
} UnkBuildingAction_80118774; /* size = 0x14 */

typedef struct {
	s16 x;
	s16 y;
	s16 z;
	s16 radius;
	u8 pad8[4];
} Unk80147090Entry_8012B26C;

typedef struct {
	f32 unk0;
	s16 unk4;
	s16 unk6;
	s16 unk8;
	s16 unkA;
	union {
		f32 asFloat;
		UnkPos16_8012B26C *asPos;
		s32 asS32;
	} unkC;
} UnkProjectileCtrl_8012B26C;

typedef struct {
	/* 0x00 */ s32 unk0; // Pointer to label string
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ u8 pad0C[0xC];
	/* 0x18 */ u32 type;
} DebugPropEntry; /* stride = 0x1C */

typedef struct {
	/* 0x00 */ u8 pad00[0x8];
	/* 0x08 */ f32 unk8;
	/* 0x0C */ f32 unkC;
	/* 0x10 */ u16 unk10;
	/* 0x12 */ u16 unk12;
	/* 0x14 */ u8 pad14[0xC];
	/* 0x20 */ s32 unk20;
} FrontendAnimState; /* size = 0x24 */

typedef struct {
	/* 0x00 */ u8 *img;
	/* 0x04 */ u8 pad4[0xC];
	/* 0x10 */ u16 unk10;
	/* 0x12 */ u8 pad12[2];
	/* 0x14 */ u8 unk14;
	/* 0x15 */ u8 unk15;
} FrontendTextureInfo; /* size = 0x16 */

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ s32 unkC;
	/* 0x10 */ Vec3f unk10;
	/* 0x1C */ Vec3f unk1C;
	/* 0x28 */ Vec3f unk28;
	/* 0x34 */ s16 unk34;
	/* 0x36 */ s16 unk36;
	/* 0x38 */ s16 unk38;
	/* 0x3A */ s16 unk3A;
	/* 0x3C */ s16 unk3C;
	/* 0x3E */ u8 pad3E[2];
} FrontendCamState; /* size = 0x40 */

typedef struct {
	/* 0x00 */ f32 unk0;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ u8 pad12[2];
	/* 0x14 */ s32 unk14;
} FrontendCamKeyframe; /* size = 0x18 */

typedef struct {
	/* 0x00 */ FrontendCamKeyframe* unk0;
	/* 0x04 */ s32 unk4;
} FrontendCamTrack; /* size = 0x08 */

typedef struct {
	/* 0x00 */ u8 pad0[0x14];
	/* 0x14 */ u8 unk14;
	/* 0x15 */ u8 unk15;
	/* 0x16 */ u8 unk16;
	/* 0x17 */ u8 pad17;
	/* 0x18 */ s32 unk18;
} FrontendLightSource; /* size = 0x1C */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 unk6;
	/* 0x07 */ u8 unk7;
	/* 0x08 */ u8 unk8;
	/* 0x09 */ u8 unk9;
	/* 0x0A */ s8 unkA;
	/* 0x0B */ s8 unkB;
	/* 0x0C */ s8 unkC;
	/* 0x0D */ u8 unkD;
} Unk8008B264NodeSub; /* size = 0x0E */

typedef struct {
	s16 unk0;
	s16 unk2;
	s16 unk4;
	s16 unk6;
	s32 unk8;
	s16 unkC;
	s16 unkE;
	s16 unk10;
	u8 unk12;
	u8 unk13;
	u8 unk14;
	u8 unk15;
	u8 unk16;
	u8 unk17;
} WeaponEntry_80129864;

typedef struct {
	/* 0x00 */ Gfx* displayList;
	/* 0x04 */ f32 scale;
} FrontendItemRenderData; /* size = 0x08 */

typedef struct {
	/* 0x00 */ s32 unk00;
	/* 0x04 */ s32 unk04;
	/* 0x08 */ s32 unk08;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ u8 pad0E[2];
	/* 0x10 */ f32 unk10;
	/* 0x14 */ u8 pad14[4];
	/* 0x18 */ s16 unk18;
	/* 0x1A */ s16 unk1A;
	/* 0x1C */ s16 unk1C;
	/* 0x1E */ s16 unk1E;
} Unk8013E45C; /* size = 0x20 */

typedef struct {
	s32 unk0;
	char unk4[0x6C];
} UnkFunc8013B5E4;

typedef struct {
	/* 0x00 */ u8 name[6];
	/* 0x06 */ u8 pad[2];
	/* 0x08 */ s32 score;
	/* 0x0C */ s16 humansKilled;
	/* 0x0E */ u8 padE[2];
	/* 0x10 */ s32 secondsTaken;
} SaveSummary; /* size = 0x14 */

typedef struct BhGfxTask_s {
	/* 0x00 */ struct BhGfxTask_s *next;
	/* 0x04 */ u32 state;
	/* 0x08 */ u32 flags;
	/* 0x0C */ void *framebuffer;
	/* 0x10 */ OSTask list;
	/* 0x50 */ OSMesgQueue *msgQ;
	/* 0x54 */ OSMesg msg;
	/* 0x58 */ u8 unk58[0x10];
	/* 0x68 */ s16 unk68;
	/* 0x6A */ u8 unk6A[0x1E];
	/* 0x88 */ void *unk88;
	/* 0x8C */ u32 unk8C;
} BhGfxTask; /* size = 0x90 */

typedef struct {
	/* 0x00 */ void *buf;
	/* 0x04 */ s16 numFrames;
} BhAudioBuf;

typedef struct BhAudioTask_s {
	/* 0x00 */ void *outBuf;
	/* 0x04 */ s16 outLen;
	/* 0x06 */ u16 pad;
	/* 0x08 */ OSScTask task;
	/* 0x60 */ u8 unk60[0x10];
	/* 0x70 */ s16 unk70;
	/* 0x72 */ u16 pad2;
	/* 0x74 */ struct BhAudioTask_s *unk74;
	/* 0x78 */ u8 unk78[0x18];
} BhAudioTask; /* size = 0x90 */

typedef struct {
	/* 0x00 */ s16 type;
	/* 0x02 */ u16 pad;
	/* 0x04 */ BhAudioBuf *audioBuf;
} BhAudioMsg;

typedef struct {
	u8 data[0x108];
} BhAudioGlobals; /* size = 0x108 */

typedef struct {
	/* 0x00 */ u8 unk0[0x53];
	/* 0x53 */ u8 unk53;
	/* 0x54 */ u8 unk54;
	/* 0x55 */ u8 unk55;
	/* 0x56 */ u8 unk56;
	/* 0x57 */ u8 unk57;
	/* 0x58 */ u8 unk58;
	/* 0x59 */ u8 unk59;
	/* 0x5A */ u8 unk5A;
	/* 0x5B */ u8 unk5B;
	/* 0x5C */ u8 unk5C;
	/* 0x5D */ u8 unk5D;
	/* 0x5E */ u8 unk5E;
	/* 0x5F */ u8 unk5F[0x04];
	/* 0x63 */ u8 unk63;
	/* 0x64 */ u8 unk64;
	/* 0x65 */ u8 unk65;
	/* 0x66 */ u8 unk66;
	/* 0x67 */ u8 unk67[0x04];
	/* 0x6B */ u8 unk6B;
	/* 0x6C */ u8 unk6C;
	/* 0x6D */ u8 unk6D;
	/* 0x6E */ u8 unk6E;
	/* 0x6F */ u8 unk6F[0x04];
	/* 0x73 */ u8 unk73;
	/* 0x74 */ u8 unk74;
	/* 0x75 */ u8 unk75;
	/* 0x76 */ u8 unk76;
	/* 0x77 */ u8 unk77[0x04];
	/* 0x7B */ u8 unk7B;
	/* 0x7C */ u8 unk7C;
	/* 0x7D */ u8 unk7D;
	/* 0x7E */ u8 unk7E;
} SaveSlot; /* size = 0x7F */

typedef struct {
	s32 unk0;
	s32 unk4;
	s32 unk8;
	s32 unkC;
	u16 unk10;
} Unk8031C88; /* size = 0x14 - DMA init descriptor from boot ROM */

typedef struct {
	s32 unk0;
	s32 unk4;
	s32 unk8;
	s32 unkC;
} Unk80378D0; /* size = 0x10 - DMA range descriptor */

typedef struct {
	u8 pad00[0x04];
	f32 unk04;
	f32 unk08;
	f32 unk0C;
	f32 unk10;
	f32 unk14;
	f32 unk18;
	u8 pad1C[0x04];
	f32 unk20;
	f32 unk24;
	f32 unk28;
	f32 unk2C;
	f32 unk30;
	f32 unk34;
	u8 unk38;
	u8 pad39[0x03];
	f32 unk3C;
	f32 unk40;
	f32 unk44;
	f32 unk48;
	f32 unk4C;
	f32 unk50;
	u8 unk54;
	u8 pad55[0x03];
	f32 unk58;
	f32 unk5C;
	f32 unk60;
	f32 unk64;
	f32 unk68;
	f32 unk6C;
	u8 unk70;
} Unk158330SrcState;

typedef struct {
	u8 pad00[0x14];
	f32 unk14;
	f32 unk18;
	f32 unk1C;
	f32 unk20;
	f32 unk24;
	f32 unk28;
	u8 pad2C[0x18];
	f32 unk44;
	f32 unk48;
	f32 unk4C;
	f32 unk50;
	f32 unk54;
	f32 unk58;
	u8 pad5C[0x18];
	f32 unk74;
	f32 unk78;
	f32 unk7C;
	f32 unk80;
	f32 unk84;
	f32 unk88;
	u8 pad8C[0x14];
	s16 unkA0;
	u8 padA2[0x02];
	f32 unkA4;
	f32 unkA8;
	f32 unkAC;
	f32 unkB0;
	f32 unkB4;
	f32 unkB8;
	u8 padBC[0x12];
	s16 unkD0;
	u8 padD2[0x2E];
	s16 unk102;
	u8 pad104[0x2E];
	s16 unk132;
} Unk158330DstState;

typedef struct {
	char pad0[0x10];
	f32 unk10;
} Unk8007C1DC;

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 pad1[0x23];
	/* 0x24 */ f32 unk24;
	/* 0x28 */ u8 pad28[0x8];
} Unk8007C698Npc; /* size = 0x30 */

typedef struct {
	/* 0x00 */ u8 pad0[0x40];
	/* 0x40 */ u8 unk40;
	/* 0x41 */ u8 pad41[0xF];
	/* 0x50 */ u8 unk50;
} Unk8007C698CellObj;

typedef struct {
	s16 unk0;
	s16 unk2;
	s16 unk4;
	s16 unk6;
	s16 unk8;
	s16 unkA;
	s16 unkC;
	s16 unkE;
} Unk8008DE78;

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ s32 unkC;
	/* 0x10 */ s32 unk10;
	/* 0x14 */ s32 unk14;
	/* 0x18 */ s16 unk18;
	/* 0x1A */ u8 pad1A[2];
} Unk800E614CFxEntry;

typedef struct {
	/* 0x000 */ Unk800E614CFxEntry entries[16];
	/* 0x1C0 */ s32 unk1C0;
	/* 0x1C4 */ s32 unk1C4;
	/* 0x1C8 */ s32 unk1C8;
	/* 0x1CC */ s32 unk1CC;
	/* 0x1D0 */ s32 unk1D0;
	/* 0x1D4 */ s32 unk1D4;
	/* 0x1D8 */ u8 pad1D8[4];
	/* 0x1DC */ s32 unk1DC;
	/* 0x1E0 */ s32 unk1E0;
	/* 0x1E4 */ s16 unk1E4;
	/* 0x1E6 */ s16 unk1E6;
	/* 0x1E8 */ s16 unk1E8;
	/* 0x1EA */ u8 pad1EA[2];
} Unk800E614CFxSlot;

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ u8 unk2;
	/* 0x03 */ u8 unk3;
	/* 0x04 */ u8 unk4;
	/* 0x05 */ u8 unk5;
	/* 0x06 */ u8 unk6;
	/* 0x07 */ u8 unk7;
	/* 0x08 */ u8 unk8;
	/* 0x09 */ u8 unk9;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
} Unk800E0F4CEntry; /* size = 0x10 */

typedef struct {
	s16 x;
	s16 z;
} ShieldWallPoint;

typedef struct {
	s8 startIdx;
	s8 endIdx;
} ShieldWallLink;

typedef struct {
	s16 unk0;
	s16 unk2;
	s16 unk4;
	u8 pad06[0x14];
	u8 unk1A;
	u8 pad1B[0x4];
	s32 unk20;
} CameraAlienRef;

typedef struct {
	s32 unk0;
	s16 unk8;
	s16 unkA;
} UnkBuildDoorMap;

typedef struct {
	s16 unk0;
	s16 unk2;
	s16 unk4;
	u8 unk6;
	u8 pad7[0x11];
} UnkBuildGridCell;

typedef struct {
	/* 0x00 */ s8 unk0;
	/* 0x01 */ s8 unk1;
	/* 0x02 */ u8 unk2;
} SignpostData; /* size = 0x03 */

typedef struct {
	/* 0x00 */ s8 x;     // X map coordinate (<< 8 for actual value)
	/* 0x01 */ s8 z;     // Z map coordinate (<< 8 for actual value)
	/* 0x02 */ u8 state; // Beacon state/type
	/* 0x03 */ u8 timer; // Beacon timer/countdown
} BeaconEntry; /* size = 0x04 */

/* 6-byte ring buffer tile entry for the 19x19 world map ring buffer.
   The ring buffer is stored as RingEntry[20][20] (400 entries, 2400 bytes),
   with only 19x19 tiles actively used (modulo 19 wrapping).
   Fields:
	 tileType: tile type/index from the world map heightmap
	 r:        red vertex color component
	 g:        green vertex color component
	 b:        blue vertex color component
	 pad:      unused padding byte */
typedef struct {
	/* 0x00 */ u16 tileType;
	/* 0x02 */ u8 r;
	/* 0x03 */ u8 g;
	/* 0x04 */ u8 b;
	/* 0x05 */ u8 pad;
} RingEntry; /* size = 0x06 */

/* Wrapper struct for the 19x19 tile ring buffer plus management fields.
   The tiles grid is RingEntry[20][20] (2400 bytes, 0x960), with management
   bytes stored contiguously after it at offsets 0x960-0x965. */
typedef struct {
	/* 0x000 */ RingEntry tiles[20][20];
	/* 0x960 */ s8 ringY;
	/* 0x961 */ s8 ringX;
	/* 0x962 */ u8 pad_962[2];
	/* 0x964 */ u8 mapPosX;
	/* 0x965 */ u8 mapPosY;
} TileRing; /* size = 0x966 */

typedef struct {
	/* 0x00 */ s8 unk0;
	/* 0x01 */ s8 unk1;
} UnkS8Pair; /* size = 0x02 */

typedef struct {
	u32 words[8];
} DListPtrsCopy;

typedef struct {
	/* 0x00 */ s16 distance; // orbit radius
	/* 0x02 */ s16 yaw;      // horizontal angle
	/* 0x04 */ s16 pitch;    // vertical angle
	/* 0x06 */ s16 pad;      // unused
	/* 0x08 */ f32 targetX;  // look-at target X
	/* 0x0C */ f32 targetY;  // look-at target Y
	/* 0x10 */ f32 targetZ;  // look-at target Z
} OrbitCam; /* size = 0x14 */

/* Save slot per-area stats in compressed save format (8 bytes each).
   score: 4 bytes LE (s32)
   humansKilled: 1 byte
   secondsElapsed: 3 bytes LE (24-bit) */
typedef struct {
	/* 0x00 */ u8 score[4];
	/* 0x04 */ u8 humansKilled;
	/* 0x05 */ u8 secondsElapsed[3];
} SaveAreaStat; /* size = 0x08 */

/* Save slot data section (0x76 bytes), starting at offset +4 within a slot.
   The slot itself is 0x7A bytes: 4-byte checksum header + 0x76 byte data. */
typedef struct {
	/* 0x00 */ SaveAreaStat areaStats[6]; // 48 bytes (6 areas)
	/* 0x30 */ u8 levelAndArea;          // low nibble=level, high nibble=area stage
	/* 0x31 */ u8 warpPoint;             // warp point number
	/* 0x32 */ u8 gameStateFlags[4];     // D_80031420
	/* 0x36 */ u8 saveData[6];           // D_80047FA8[0..5]
	/* 0x3C */ u8 weaponSlots[7];        // weaponSlots[0..6]
	/* 0x43 */ u8 keys[8];              // D_8004DC48 (64-bit flags)
	/* 0x4B */ u8 dcPacked;              // (D_8004DC5C << 4) | D_8004DC5E
	/* 0x4C */ u8 artifacts[2];          // D_80048026 (16-bit LE)
	/* 0x4E */ u8 unk48028[2];          // D_80048028 (16-bit LE)
	/* 0x50 */ u8 flags2[8];            // D_8004DC50 (64-bit flags)
	/* 0x58 */ u8 playTime[4];           // D_80052A90 (32-bit LE)
	/* 0x5C */ u8 beacons;               // D_80047F98
	/* 0x5D */ u8 d4d154[4];            // D_8004D154 (32-bit LE)
	/* 0x61 */ u8 d4d158[4];            // D_8004D158 (32-bit LE)
	/* 0x65 */ u8 weaponDamages[7];      // shifted weapon damage values
	/* 0x6C */ u8 objective;             // D_80048030
	/* 0x6D */ u8 gamestateBitflags;     // D_80052ACD
	/* 0x6E */ u8 unkValues[4];          // D_8004815C/E/60/62
	/* 0x72 */ u8 pad[4];                // padding to 0x76 bytes
} SaveSlotData; /* size = 0x76 */

/* Wrapper struct to access save slot data from base + arg0 * 0x7A pointer.
   The 0x53-byte pad puts SaveSlotData at the correct offset within the slot.
   Slot layout: base + 0x4F = slot start, data at +4 within slot = base + 0x53. */
typedef struct {
	/* 0x00 */ u8 pad[0x53];
	/* 0x53 */ SaveSlotData data;
} SaveSlotAccess; /* size = 0x53 + 0x76 = 0xC9 */

#endif
