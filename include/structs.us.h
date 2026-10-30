#ifdef LIBULTRA_REFERENCE
#ifndef LIBULTRA_STRUCTS_US_H
#define LIBULTRA_STRUCTS_US_H
/* Reference: reference/ultralib/src/os/initialize.c. */
typedef struct {
    u32 inst1;
    u32 inst2;
    u32 inst3;
    u32 inst4;
} __osExceptionVector;
#endif
#else
#ifndef STRUCTS_US_H
#define STRUCTS_US_H

#include <PR/sched.h>

typedef union ShadowModelCommand {
    Gwords words;
    s8 bytes[8];
    struct {
        s8 opcode;
        s8 args[7];
    } command;
} ShadowModelCommand;

typedef struct CometJointChain {
    s16 joints[18];
    s16 child;
    s16 root;
} CometJointChain;

typedef struct MissionCommand {
    u8 opcode;
    u8 args[2];
} MissionCommand; /* size = 0x03 */

typedef struct MissionInfo {
    u8 flags;
    u8 command[3];
} MissionInfo;

typedef enum GameplayMode {
	GAMEPLAY_MODE_LEVEL_MAP = 0, // Actually something else?
	GAMEPLAY_MODE_NORMAL = 1, // Normal gameplay
	GAMEPLAY_MODE_PAUSE_MENU = 2, // pause menu
	GAMEPLAY_MODE_LEVEL_START_CUTSCENE = 3, // AI - the cutscene that opens a level: func_800EFEB4_FEE64 enters this mode when called with arg2 != 0 (seen at the Greece start and again after a respawn)
	GAMEPLAY_MODE_UNK4 = 4, // Beacon UI
	GAMEPLAY_MODE_UNK5 = 5,
	GAMEPLAY_MODE_INSIDE = 6, // AI - inside a building, held from entry to exit
	GAMEPLAY_MODE_LOADING_LEVEL = 7, // AI - set by func_80006DDC_79DC while the level loads (seen between FRONTEND and LEVEL_START_CUTSCENE)
	GAMEPLAY_MODE_UNK8 = 8, // AI - set by the gameplay loop (101840.c) when D_80050AD4 is 0xC, as it sets LEVEL_MAP for 3 and INVENTORY for 0xD (pause-menu items); no store of 0xC was found, so this may be unreachable (read)
	GAMEPLAY_MODE_DIALOGUE = 9, // Talking to NPC/Signpost/Daisy
	GAMEPLAY_MODE_END_OF_LEVEL = 0xA, // Show score screens
	GAMEPLAY_MODE_UNKB = 0xB, // Beacon launch cutscene/Shield gen destroyed cutscene
	GAMEPLAY_MODE_LEVEL_ENDING = 0xC, // AI - the level-ending sequence, about 300 frames: entered a few frames after the player hit points reach 0 (seen when drowning, in two runs), and when the attract demo ends; then LEVEL_ENDED. A boss kill or a quit may share it (not checked)
	GAMEPLAY_MODE_FRONTEND = 0xD, // AI - the whole frontend sequence (intro to file select)
	GAMEPLAY_MODE_UNKE = 0xE,
	GAMEPLAY_MODE_LEVEL_ENDED = 0xF, // AI - set when the main loop has ended; followed LEVEL_ENDING in both observed deaths, then the level reloads
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
	GAME_STATE_FLAG_UNK1 = 1, // AI - D_80031420 is the saved options word, not a set of independent flags: bits 0-1 blood setting (0, 1 or 3 stored; a nonzero value shows blood, 3 shows full gore), bit 2 aim option, bits 3-4 music volume 0-3, bits 5-6 sound effect volume 0-3; read from the code (the options menu in 40720.c and the audio setters in 12C80.c)
	GAME_STATE_FLAG_BLACK_ADAM = 2, // AI - bit 1 is the upper bit of the blood setting (mask 3); no separate reader of it was found
	GAME_STATE_FLAG_UNK3 = 4, // AI - the aim option: flips the sign the stick is added to the aim yaw with (101840.c); read from the code
	GAME_STATE_FLAG_UNK4 = 8, // AI - low bit of the music volume (mask 0x18, shift 3)
	GAME_STATE_FLAG_UNK5 = 0x10, // AI - high bit of the music volume (mask 0x18, shift 3)
	GAME_STATE_FLAG_UNK6 = 0x20, // AI - low bit of the sound effect volume (mask 0x60, shift 5)
	GAME_STATE_FLAG_EASY_MODE = 0x40, // AI - bit 6 is the upper bit of the sound effect volume (mask 0x60); no difficulty reader was found
	GAME_STATE_FLAG_UNK8 = 0x80 // AI - no use found; clear in the default 0x7B
} GameStateFlags;

typedef enum PlayerStateFlags {
	PLAYER_STATE_FLAG_MOVING = 0x1, // Player is walking/moving (set at init and while moving, cleared while attacking)
	PLAYER_STATE_FLAG_HURT = 0x2, // Player was just damaged by an enemy (cleared after playing hit reaction)
	PLAYER_STATE_FLAG_SWIMMING = 0x4, // Player is in water/swimming
	PLAYER_STATE_FLAG_AIMING = 0x8, // Player is aiming a weapon (R held, cleared when firing with Z)
	PLAYER_STATE_FLAG_DYING = 0x10, // Player is dying (health <= 0)
	PLAYER_STATE_FLAG_STRUGGLING = 0x20, // Player is struggling to escape an alien's hold (wiggling stick)
	PLAYER_STATE_FLAG_WARPING = 0x200, // Player is warping/teleporting (beacon warp in progress)
	PLAYER_STATE_FLAG_LOW_HEALTH = 0x400, // Player health below 25% (plays tired animation)
	PLAYER_STATE_FLAG_WALL_COLLISION = 0x1000, // Player bumped into an obstacle/wall (pushback)
	PLAYER_STATE_FLAG_COMM_LINK = 0x2000, // Player is using the comm link (L pressed)
	PLAYER_STATE_FLAG_JUST_LANDED = 0x4000 // Player has just landed on the ground
} PlayerStateFlags;

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
	ALIEN_WAVE_TYPE_PROCESSOR = 0x1F, // AI - Stage Processor: row 31 of the wave table is a single type 0x1A alien, and trigger.c queues a trigger on its death that removes the stage's other waves and queues the stage end (read)
} AlienWaveType;

typedef enum {
	ALIEN_TYPE_NOTHING = 0,
	ALIEN_TYPE_HUMAN = 1,
	ALIEN_TYPE_HCU = 2, // Human Capture Unit
	ALIEN_TYPE_BLACK_ADAM = 0x12,
	ALIEN_TYPE_HARVESTER = 0x19, // "King Drone"
	ALIEN_TYPE_PROCESSOR = 0x1A,
	ALIEN_TYPE_BOSS = 0x1B,
} AlienTypeId;

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
	/* 0x06 */ u16 unk6;
} Unk8010ED84Pos; /* size = 0x08 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
} Unk8015FA40Entry; /* size = 0x06 */

typedef struct {
	/* 0x00 */ u8 pad[0xC];
	/* 0x0C */ s16 unkC;
	/* 0x0E */ u8 padE[0x26];
	/* 0x34 */ s16 unk34;
	/* 0x36 */ s16 unk36;
} Unk8010ED84Data; /* size = 0x38 */
typedef struct {
	/* 0x00 */ u8 pad0[0x34];
	/* 0x34 */ s16 unk34;
	/* 0x36 */ s16 unk36;
} Unk8010D234Data; /* size = 0x38 */
typedef union {
	struct {
		/* 0x00 */ s32 unk0;
		/* 0x04 */ s32 unk4;
	};
	/* 0x00 */ u64 flags;
} Flags2x32; /* size = 0x08 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ u16 unk4;
} Unk800A4354; /* size = 0x06 */

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ void *unk8;
	/* 0x0C */ void *unkC;
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
	/* 0x0C */ s16 unkC;
} Frontend52690Unk8Motion;

typedef union {
	s16 position[3];
	struct {
		/* 0x00 */ u8 alpha;
		/* 0x01 */ s8 quadrant;
		/* 0x02 */ u8 phase;
		/* 0x03 */ u8 pad3[3];
		/* 0x06 */ s16 radius;
	} segment;
} FrontendAuraPayload;

typedef struct {
	/* 0x00 */ u8 active;
	/* 0x01 */ u8 flags;
	/* 0x02 */ s16 lifetime;
	/* 0x04 */ s16 next;
	/* 0x06 */ s16 previous;
	/* 0x08 */ s16 position[3];
	/* 0x0E */ s16 velocity[3];
	/* 0x14 */ s16 duration;
	/* 0x16 */ s16 unk16;
	/* 0x18 */ u8 unk18;
	/* 0x19 */ u8 pad19[3];
} Frontend52690InterpolationParticle; /* size = 0x1C */

typedef struct {
	/* 0x00 */ u8 active;
	/* 0x01 */ u8 flags;
	/* 0x02 */ s16 size;
	/* 0x04 */ s16 next;
	/* 0x06 */ s16 previous;
	/* 0x08 */ s16 position[3];
	/* 0x0E */ s16 duration;
	/* 0x10 */ u8 pad10[0xC];
} Frontend52690LineParticle; /* size = 0x1C */

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
	/* 0x00 */ void (*unk0)(s16, s16, s16, s16);
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 pad6[2];
	/* 0x08 */ f32 unk8;
	/* 0x0C */ f32 unkC;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ s16 unk16;
	/* 0x18 */ s16 unk18;
	/* 0x1A */ u8 pad1A[2];
	/* 0x1C */ f32 unk1C;
} UnkE830ModeEntry; /* size = 0x20 */

typedef struct {
	/* 0x00 */ f32 x;
	/* 0x04 */ f32 y;
	/* 0x08 */ f32 z;
} Vec3f; /* size = 0x0C */

typedef union {
	Vec3f vector;
	f32 components[3];
} Vec3fComponents; /* size = 0x0C */

typedef struct {
	/* 0x00 */ s16 x;
	/* 0x02 */ s16 y;
	/* 0x04 */ s16 z;
} Vec3s; /* size = 0x06 */

typedef struct {
	/* 0x00 */ s32 x;
	/* 0x04 */ s32 y;
	/* 0x08 */ s32 z;
} Vec3i; /* size = 0x0C */

typedef union {
	struct {
		/* 0x00 */ union {
			s16 unk0;
			u16 unk0Unsigned;
		};
		/* 0x02 */ union {
			s16 unk2;
			u16 unk2Unsigned;
		};
		/* 0x04 */ s16 unk4;
	};
	s16 components[3];
} Unk800311A0; /* size = 0x06 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ u8 unk2;
	/* 0x03 */ u8 unk3;
	/* 0x04 */ u8 unk4;
	/* 0x05 */ u8 unk5;
} MissionCondEntry; /* size = 0x06 */

/* Two three-byte operands, two byte parameters, and an opcode. */
typedef u8 MissionGameCondition[9];

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

// AI - Animated state for a placed room object instance (per room entry, mirrors Unk800E66A8 offsets 0x14+)
typedef struct {
	/* 0x00 */ u8 pad00[0x8];
	/* 0x08 */ u8 unk8; // AI - orientation (0-3) of the animated element
	/* 0x09 */ u8 pad09[0x07];
	/* 0x10 */ s16 unk10; // AI - animation axis selection value (from room object unk1E)
	/* 0x12 */ u8 pad12[0x02];
	/* 0x14 */ f32 unk14; // AI - animated base offset (X / U)
	/* 0x18 */ f32 unk18; // AI - animated base offset (Y / V)
	/* 0x1C */ f32 unk1C; // AI - animated base offset (Z / W)
	/* 0x20 */ f32 unk20; // AI - animated position/scroll (X)
	/* 0x24 */ f32 unk24; // AI - animated position/scroll (Y)
	/* 0x28 */ f32 unk28; // AI - animated position/scroll (Z)
} Unk80070F7CState; /* size = 0x2C */

// AI - Room object type definition: one entry in a room's 32-entry object catalog (D_8008E0A8_176168[room][type])
// AI - A room object provides the geometry, dimensions, embedded spawns and behavior flags referenced by placed instances (Unk800E66A8)
typedef struct {
	/* 0x00 */ union {
		u8 pad0[8];
		struct { Gfx *unk0; Gfx *unk4; };
	};
	/* 0x08 */ s16 unk8; // AI - local offset X (spawn/entity placement within the room)
	/* 0x0A */ s16 unkA; // AI - local offset Z (spawn/entity placement within the room)
	/* 0x0C */ s16 unkC; // AI - spawned entity/object type
	/* 0x0E */ s16 unkE; // AI - object-local X position (spawn/entity placement)
	/* 0x10 */ s16 unk10; // AI - object-local Y position (height)
	/* 0x12 */ s16 unk12; // AI - object-local Z position
	/* 0x14 */ s16 unk14; // AI - object type in some reinterpretations
	/* 0x16 */ u16 unk16; // AI - room-visit related value (copied to the instance's unkC)
	/* 0x18 */ u16 unk18; // AI - object/room width (dimension, halved for positioning & culling)
	/* 0x1A */ u16 unk1A; // AI - object/room depth (dimension, halved for positioning & culling)
	/* 0x1C */ u8 pad1C[0x2]; // AI - pad1C[0] = signed height offset written to the instance's unk4
	/* 0x1E */ u16 unk1E; // Animation duration in frames
	/* 0x20 */ f32 unk20; // AI - animation speed/magnitude (float, e.g. 0.1 / 2.0 / 5.0 / 25.0)
	/* 0x24 */ s16 unk24; // AI - interaction angle in degrees
	/* 0x26 */ s16 unk26; // AI - base offset for animated geometry (X)
	/* 0x28 */ s16 unk28; // AI - base offset for animated geometry (Y)
	/* 0x2A */ s16 unk2A; // AI - base offset for animated geometry (Z)
	/* 0x2C */ s16 unk2C; // AI - base offset for animated geometry
	/* 0x2E */ s16 unk2E; // AI - base offset for animated geometry
	/* 0x30 */ s16 unk30; // AI - base offset for animated geometry
	/* 0x32 */ s16 unk32; // AI - highlight offset X
	/* 0x34 */ s16 unk34; // AI - highlight offset Z
	/* 0x36 */ s16 unk36; // AI - door offset X
	/* 0x38 */ s16 unk38; // AI - door offset Z
	/* 0x3A */ u8 unk3A; // AI - door sub-type / flags
	/* 0x3B */ u8 unk3B; // AI - door direction flags
	/* 0x3C */ u8 pad3C[0x4];
	/* 0x40 */ s32 unk40; // AI - flag bitfield: rendering variant, animation axis (0x200-0x4000), visit-rehide (0x20000000/0x40000000), etc.
	/* 0x44 */ s32 unk44; // AI - flag bitfield: 1 = skip render, 2 = no visit persist, 4 = no interaction
} Unk80070F7CObj; /* size = 0x48 */

typedef struct {
	/* 0x00 */ f32 unk0;
	/* 0x04 */ f32 unk4;
	/* 0x08 */ f32 unk8;
	/* 0x0C */ s32 unkC;
	/* 0x10 */ s32 unk10;
} Unk165E60Keyframe; /* size = 0x14 */

typedef struct {
	/* 0x00 */ s16 unk0; // start X
	/* 0x02 */ s16 unk2; // start Y
	/* 0x04 */ s16 unk4; // start Z
	/* 0x06 */ s16 unk6[7]; // waypoint coords (X, Y, Z triples)
	/* 0x14 */ s32 unk14; // timing
	/* 0x18 */ s32 unk18;
	/* 0x1C */ s32 unk1C;
	/* 0x20 */ s32 unk20; // step frame id
	/* 0x24 */ s32 unk24;
	/* 0x28 */ s32 unk28;
	/* 0x2C */ s32 unk2C; // character / vehicle id
	/* 0x30 */ s16 unk30; // min frame
	/* 0x32 */ s16 unk32; // max frame
	/* 0x34 */ f32 unk34; // base speed
	/* 0x38 */ s16 unk38; // speed-curve start frame
	/* 0x3A */ s16 unk3A;
	/* 0x3C */ f32 *unk3C; // speed curve pointer (2000.0f sentinel-terminated)
} Unk165E60Path; /* size = 0x40 */

typedef union {
	struct {
		s16 unk0;
		s16 unk2;
		s16 unk4;
		s16 unk6[7];
		s32 unk14;
		s32 unk18;
		s32 unk1C;
		s32 unk20;
		s32 unk24;
		s32 unk28;
		s32 unk2C;
		s16 unk30;
		s16 unk32;
		f32 unk34;
		s16 unk38;
		s16 unk3A;
		f32 *unk3C;
	} metadata;
	struct {
		s16 points[2][6];
	} coordinates;
	struct {
		u8 pad0[0x14];
		s32 headings[2];
	} heading;
	struct {
		u8 pad0[0x20];
		s32 frames[2];
	} animation;
} Unk165E60PathView;

typedef struct {
	/* 0x00 */ Unk165E60Keyframe keyframes[3]; // movement keyframes
	/* 0x3C */ s32 unk3C;
	/* 0x40 */ s32 unk40;
	/* 0x44 */ s32 unk44;
	/* 0x48 */ s16 unk48;
	/* 0x4A */ s16 unk4A;
	/* 0x4C */ s32 unk4C;
	/* 0x50 */ s32 unk50;
	/* 0x54 */ s32 unk54;
	/* 0x58 */ s32 unk58;
	/* 0x5C */ s32 unk5C;
} Unk165E60Timeline; /* size = 0x60 */

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ u8 padC[0x2];
	/* 0x0E */ s16 unkE;
	/* 0x10 */ u8 pad10[0x4];
	/* 0x14 */ Unk165E60PathView *unk14;
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

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 pad1;
	/* 0x02 */ u16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s8 unk8;
	/* 0x09 */ s8 unk9;
	/* 0x0A */ s8 unkA;
	/* 0x0B */ u8 unkB;
	/* 0x0C */ u8 unkC;
	/* 0x0D */ u8 unkD;
	/* 0x0E */ union { u16 word; struct { u8 high; u8 low; } bytes; } unkE;
	/* 0x10 */ u8 unk10;
	/* 0x11 */ u8 unk11;
	/* 0x12 */ u8 unk12;
	/* 0x13 */ u8 unk13;
	/* 0x14 */ u8 unk14;
	/* 0x15 */ u8 unk15;
} Unk84EECEffectBytes; /* size = 0x16 */

typedef struct {
	/* 0x00 */ s16 pad0;
	/* 0x02 */ s16 pad2;
	/* 0x04 */ u8 pad4;
	/* 0x05 */ u8 unk5;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ u8 pad8;
	/* 0x09 */ u8 unk9;
	/* 0x0A */ u8 unkA;
	/* 0x0B */ u8 unkB;
	/* 0x0C */ u8 unkC;
} Unk84EECEffectTail;

typedef struct {
	/* 0x00 */ u16 pad0;
	/* 0x02 */ s16 pad2;
	/* 0x04 */ u8 pad4;
	/* 0x05 */ u8 unk5;
	/* 0x06 */ union { s16 word; struct { u8 high; u8 low; } bytes; } unk6;
	/* 0x08 */ u8 pad8;
	/* 0x09 */ u8 unk9;
	/* 0x0A */ u8 unkA;
	/* 0x0B */ u8 unkB;
	/* 0x0C */ u8 unkC;
	/* 0x0D */ u8 unkD;
} Unk84EECEffectTailUpdate;

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ u8 unk8;
	/* 0x09 */ u8 unk9;
	/* 0x0A */ u8 unkA;
	/* 0x0B */ u8 unkB;
	/* 0x0C */ u8 unkC;
} Unk84EECEffectTailView;

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ union { s16 word; struct { u8 high; u8 low; } bytes; } unk6;
	/* 0x08 */ u8 unk8;
	/* 0x09 */ u8 unk9;
	/* 0x0A */ u8 unkA;
	/* 0x0B */ u8 unkB;
	/* 0x0C */ u8 unkC;
	/* 0x0D */ u8 unkD;
} Unk84EECEffectPositionView;

typedef struct {
	/* 0x00 */ s8 offsetX;
	/* 0x01 */ s8 offsetY;
	/* 0x02 */ s8 offsetZ;
	/* 0x03 */ u8 strength;
	/* 0x04 */ u8 radius;
} Unk84EECEffectRandomData;

typedef struct {
	/* 0x00 */ s8 offsetX;
	/* 0x01 */ s8 offsetY;
	/* 0x02 */ s8 offsetZ;
	/* 0x03 */ u8 strength;
	/* 0x04 */ u8 radius;
	/* 0x05 */ u8 pad5[3];
	/* 0x08 */ u8 unk10;
} Unk84EECEffectTemplateData;

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 unk6;
	/* 0x07 */ u8 unk7;
	/* 0x08 */ u8 unk8;
	/* 0x09 */ u8 unk9;
	/* 0x0A */ u8 unkA;
	/* 0x0B */ u8 unkB;
	/* 0x0C */ u8 unkC;
} UnkScatterEffectTail;

typedef union {
	UnkScatterEffectTail *data;
	s32 randomValue;
} ScatterEffectScratch;

typedef union {
	u32 word;
	struct {
		u16 first;
		u16 second;
	} values;
} EffectRandomPair;

typedef struct {
	/* 0x00 */ u8 pad0[4];
	/* 0x04 */ u8 texture;
	/* 0x05 */ s8 offsetX1;
	/* 0x06 */ s8 offsetX2;
	/* 0x07 */ s8 offsetY1;
	/* 0x08 */ s8 offsetY2;
	/* 0x09 */ u8 pad9[5];
} EffectBillboardFrame; /* size = 0x0E */


/* Cutscene entry: 24 bytes (6 s32), stored in D_80157E90[5] (120 bytes) */
typedef struct {
	/* 0x00 */ Unk84EECEffect effect;
	/* 0x16 */ u8 pad[2];
} CutsceneEntry; /* size = 0x18 */

// AI - Special-effect entry: effect display list + state for interior rendering (D_8008DED0_175F90)
typedef struct {
	/* 0x00 */ Gfx *unk0; // AI - effect display list (NULL = disabled)
	/* 0x04 */ u8 unk4; // AI - effect flags/count
	/* 0x05 */ u8 pad5[3];
	/* 0x08 */ s32 unk8; // AI - enabled flag (0/1)
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
	/* 0x08 */ u8 destination;
	/* 0x09 */ u8 pad9[3];
} FrontendLightTrack; /* size = 0x0C */

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
} FrontendTriData; /* size = 0x04 */

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
	/* 0x06 */ u8 type;
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
	/* 0x12 */ s16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ s16 unk16;
	/* 0x18 */ s16 unk18;
	/* 0x1A */ u8 pad1A[2];
	/* 0x1C */ f32 unk1C;
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
	/* 0x06 */ u16 humansKilled;
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

/* Spawn offset/type for entities spawned relative to the player's vehicle.
   Table is indexed [level - 1][vehicle typeIndex]; x/y offsets are scaled by 2
   into world units, byte 2 (zOffset) is the forward offset. */
typedef struct {
	/* 0x00 */ s8 xOffset; // lateral offset from vehicle
	/* 0x01 */ s8 yOffset; // vertical offset from vehicle
	/* 0x02 */ s8 zOffset; // forward offset from vehicle
	/* 0x03 */ s8 type;    // spawn param
} VehicleSpawnOffset; /* size = 0x04 */

typedef enum VehicleFlags {
	VEHICLE_FLAG_UNK1 = 1, // AI - set whenever the vehicle is moved or pushed (it still needs physics/collision) and cleared once it is grounded with every velocity zero; the collision resolver func_80110FB4_11FF64 runs only while it is set (read)
	VEHICLE_FLAG_AIRBORNE = 2,
	VEHICLE_FLAG_HALF_ON_BRIDGE = 4,
	VEHICLE_FLAG_UNDER_BRIDGE = 8,
	VEHICLE_FLAG_SCUD_LAUNCHED = 0x10, // AI - SCUD nuke launched: blocks a second launch, and the death handler creates the nuke only while it is clear (read)
	VEHICLE_FLAG_UNK6 = 0x20, // AI - a copy of bit 0x20 of the vehicle type word unk4C, set at spawn: on every instance of types 0, 1, 2, 5 to 11 and 13 to 15 and on neither type 4 nor 16 (measured)
	VEHICLE_FLAG_INSIDE_PLAY_BOUNDS = 0x40, // AI - inside the current shield wall bounds (func_800FAC90_109C40 sets it from func_800B0D10_BFCC0); the main vehicle update and the radius scans process only vehicles with it set, so vehicles outside the wall are frozen (read)
	VEHICLE_FLAG_SHIELDED = 0x80, // AI - shielded: the invincibility cheat's shield sets it on the player (flags 0x8161 to 0x81E1 in the word at +0x20), but drowning still took the hit points from 600 to 0 in 19 s with it set, so it does not block that damage (measured); func_8008D634_9C5E4 refuses a Human Capture Unit grab while it is set (read)
	VEHICLE_FLAG_UNK9 = 0x100, // AI - a copy of bit 0x100 of the vehicle type word unk4C, set at spawn: on every instance of the same types as UNK6, and also on type 18, which lacks UNK6 (measured)
	VEHICLE_FLAG_UNKA = 0x200, // AI - no use found on a vehicle instance or its type word
	VEHICLE_FLAG_PATH_GUIDED = 0x400, // AI - driven by the grid path follower, not the player's driving physics: set only by func_800FC90C_10B8BC, which stores the grid-cell targets; the driver input step returns early for it and the death handler counts it as an NPC vehicle (read)
	VEHICLE_FLAG_ON_BRIDGE = 0x800,
	VEHICLE_FLAG_CAPTURED_BY_ALIEN = 0x1000, // AI - set on the player vehicle while a Human Capture Unit holds the on-foot player (func_8008D634_9C5E4) (read)
	VEHICLE_FLAG_DAMAGE_FLASH = 0x2000, // AI - draw damage flash this frame: set with each hit-point loss while drowning and cleared at death; the draw code tests it with the frame counter, so it flickers (measured)
	VEHICLE_FLAG_UNKF = 0x4000, // AI - no use found on a vehicle instance
	VEHICLE_FLAG_ACTIVE = 0x8000 // AI - the vehicle slot is live: the active-vehicle list is built from it, the death handler returns at once when it is clear, and the main update requires it (read); the on-foot entity loses it while the player drives another vehicle (measured)
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
	/* 0x1A */ u8 unk1A; // AI - typeIndex: the index into vehicleTypes, 0 for Adam on foot (measured)
	/* 0x1B */ u8 unk1B;
	/* 0x1C */ s16 unk1C; // AI - hitPoints: 600 (0x258) for Adam at full health; GAMEPLAY_MODE_LEVEL_ENDING began a few frames after it reached 0, seen when drowning (measured)
	/* 0x1E */ s16 unk1E;
	/* 0x20 */ u16 unk20; // AI - bit flags: 0x8000 active, 0x0002 airborne, 0x2000 damage flash, 0x0001 moved this frame (measured)
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
	/* 0x44 */ u8 unk44; // direction bitmask (1=N, 2=S, 4=W, 8=E) ?
	/* 0x45 */ u8 unk45;
	union {
		struct {
			/* 0x46 */ u8 unk46;
			/* 0x47 */ u8 unk47;
		};
		/* 0x46 */ u16 pathFlags;
	};
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

typedef struct {
	u8*name;
	s32 pad;
} NameRef;

typedef struct {s16 x; s16 z;} Vec2_S16;

typedef enum AlienFlags {
	ALIEN_FLAG_UNK1 = 1, // AI - the low three bits together are the walker slot index 0-7, meaningful while UNKK is set (read)
	ALIEN_FLAG_UNK2 = 2, // walker slot index (bit 2)?
	ALIEN_FLAG_UNK3 = 4, // walker slot index (bit 3)?
	ALIEN_FLAG_UNK4 = 8, // AI - no use found in the C sources
	ALIEN_FLAG_UNK5 = 0x10, // AI - an attack countdown is running and the alien does not turn toward its desired heading; cleared when the countdown reaches 0 (read)
	ALIEN_FLAG_TARGET_OBJ = 0x20,
	ALIEN_FLAG_AWAY = 0x40, // in motion toward/away from a target (engagement)?
	ALIEN_FLAG_TARGET_VEHICLE = 0x80,
	ALIEN_FLAG_TARGET_PT = 0x100, // Set when targeting a building? targeting a point (pathing waypoint)?
	ALIEN_FLAG_UNKA = 0x200, // AI - just added to the active list: cleared on its first update, which runs on a frame divisible by 4 (read)
	ALIEN_FLAG_UNKB = 0x400, // AI - in the active-object list D_8014D510 (at most 0x40): set when the alien is added, cleared when it is removed (read)
	ALIEN_FLAG_UNKC = 0x800, // AI - circling: the heading code steers perpendicular to the direction to the target, with UNKH picking the side (read)
	ALIEN_FLAG_UNKD = 0x1000, // AI - an action in progress that differs by alien type, e.g. a hop, a scripted attack animation or heading back to a parent; set with UNKL when a Processor is killed and cleared about 2.4 to 3.4 s later (measured)
	ALIEN_FLAG_UNKE = 0x2000, // AI - an attack in progress for the Siberia, Java and Greece monsters; armed to explode for the flea alien, holding a captured human for the HCU; set on a killed Processor about 2.4 to 3.4 s after the kill (measured)
	ALIEN_FLAG_UNKF = 0x4000, // AI - timed state of the Siberia charger; zombie or down for humans, docked at a Harvester for the HCU (read)
	ALIEN_FLAG_UNKG = 0x8000, // AI - in most monsters a scripted animation is running, cleared when its keyframe table ends (func_800A3D00_B2CB0); aimed at the target on a Java turret child; the Processor uses it to select its skeleton model, and it is set about 4.8 to 6.2 s after a Processor is killed (measured)
	ALIEN_FLAG_UNKH = 0x10000, // AI - in the generic heading code it picks the side of the UNKC circling; several bosses reuse it for unrelated state (read)
	ALIEN_FLAG_UNKI = 0x20000, // AI - a follower slot: the alien target point is offset by its slot (unk27) so followers of one target spread out, and unk38 is the target; read from the code
	ALIEN_FLAG_UNKJ = 0x40000, // AI - the facing (unk6) does not follow the travel heading: set for knockback and circling, and permanently for types with type flag 0x2000 (read)
	ALIEN_FLAG_UNKK = 0x80000, // AI - has a leg-walker slot, whose index is in bits 0-2: set at spawn, cleared when the slot is released (read)
	ALIEN_FLAG_UNKL = 0x100000, // AI - dead: set by the kill routine func_80088760_97710, which returns early if it is already set, and read as destroyed by script opcode 0x9B; the hit points do not change with it (measured: set within 20 to 140 ms of the kill cheat in six aliens of three types, hit points unchanged)
	ALIEN_FLAG_DESPAWNING = 0x200000, // AI - a removal countdown of about 2 seconds is running (func_80087AAC_96A5C); the alien is then removed and drops no item (read)
	ALIEN_FLAG_INVINCIBLE = 0x400000,
	ALIEN_FLAG_W = 0x800000,
	ALIEN_FLAG_X = 0x1000000, // Is boss/special? Disables alien/alien collision?
	ALIEN_FLAG_Y = 0x2000000, // Has a target building?
	ALIEN_FLAG_Z = 0x4000000, // Left/right side leg, flyer aim point flip?
	ALIEN_FLAG_PLAYER = 0x8000000, // Player detected / in range
	ALIEN_FLAG_IN_VIEW = 0x10000000, // AI - on screen: set or cleared each frame by the render visibility test (read)
	ALIEN_FLAG_UNKO = 0x20000000, // AI - the alien's height is not snapped to the terrain: used for teleports and underground states (read)
	ALIEN_FLAG_FALL = 0x40000000, // Falling / in air
	ALIEN_FLAG_UNKP = 0x80000000 // AI - hit this frame: set by the damage routine and cleared for every alien after drawing, so it lasts one frame (read)
} AlienFlags;

typedef struct {
	  union {
	struct {
	/* 0x00 */ s16 unk0; // AI - X position in quarter units, world X times 4 (measured: raw -24704 for a world X of -6176; a vehicle's s16 position is in world units)
	/* 0x02 */ s16 unk2; // AI - Y position; not simply the world Y times 4 (measured: a Processor on ground at world Y about 608 reads raw 1120)
	/* 0x04 */ s16 unk4; // AI - Z position in quarter units (measured: raw -1664 for a world Z of -416)
	/* 0x06 */ s16 unk6; // X orientation
		};
	u8 alienIds[8];
  };
	/* 0x08 */ s16 unk8; // Y orientation
	/* 0x0A */ s16 unkA; // Z orientation
	union {
		/* 0x0C */ s16 unkC;
		struct {
			/* 0x0C */ u8 unkC0;
			/* 0x0D */ s8 unkD;
		};
	};
	/* 0x0E */ s16 unkE; // "Direction"
	union {
		struct {
			/* 0x10 */ s16 unk10; // Y Velocity, are this and Speed actually a single s32?
			/* 0x12 */ s16 unk12; // Speed
		};
		/* 0x10 */ s32 unk10_word;
	};
	/* 0x14 */ s16 unk14; // target x coord
	/* 0x16 */ s16 unk16; // target y coord
	union {
		/* 0x18 */ s16 unk18; // target z coord
		struct {
			/* 0x18 */ u8 unk18Byte;
			/* 0x19 */ u8 unk19Byte;
		};
	};
	/* 0x1A */ u8 typeIndex; // Types are the same every level? e.g. 0x19 is harvester, 0x1B is Boss
	/* 0x1B */ u8 unk1B; // Stage this enemy is considered active part of (0 = stage 1; 1 = stage 2; etc)
	/* 0x1C */ s16 hitPoints;
	union {
		/* 0x1E */ s16 unk1E; // Weapons? 0x1F used as HCU count for harvester?
		struct {
			/* 0x1E */ u8 unk1EByte;
			/* 0x1F */ u8 pad1F;
		};
	};
	/* 0x20 */ s32 unk20; // Bit flags
	union {
		struct {
			/* 0x24 */ u8 unk24; // Human type/behavior. Harvester humans eaten count. Processor child alien spawned count. Black Adam behavior.
			/* 0x25 */ u8 unk25; // Parent alien instance id
		};
		/* 0x24 */ s16 unk24Signed; // Siberia boss target X
	};
	union {
		struct {
			/* 0x26 */ u8 unk26; // Harvester unspawned HCU count
			/* 0x27 */ u8 unk27;
		};
		/* 0x26 */ s16 unk26Signed; // Siberia boss target Z
	};
	/* 0x28 */ s8 unk28; // Last collision tile X
	/* 0x29 */ s8 unk29; // Last collision tile Z
	/* 0x2A */ s16 unk2A; // Desired direction
	/* 0x2C */ s16 unk2C; // Counters
	/* 0x2E */ s16 unk2E; // X coord, used for ??
	/* 0x30 */ s16 unk30; // Y coord, used for ??
	/* 0x32 */ s16 unk32; // Z coord, used for ??
	/* 0x34 */ s16 unk34; // Collision counter?
	/* 0x36 */ u8 unk36; // Anim counter?
	/* 0x37 */ u8 unk37; // Hit counter?
	/* 0x38 */ s16 unk38; // target building/vehicle instance id. Some code loads 0x39 as a u8 by loading it into a u8 var
	/* 0x3A */ s16 unk3A; // Wait counter?
	/* 0x3C */ s8 unk3C; // Processor child AlienType id
	/* 0x3D */ s8 unk3D; // Processor child alien count to spawn.
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
	/* 0x1A */ u8 unk1A; // typeIndex
	/* 0x1B */ u8 unk1B;
	/* 0x1C */ s16 hitPoints;
	/* 0x1E */ s16 unk1E;
	/* 0x20 */ s32 unk20;
	/* 0x24 */ u8 unk24;
	/* 0x25 */ u8 unk25;
} EntityInstance; // Properties shared by VehicleInstance & AlienInstance

/* Common prefix shared by VehicleType & AlienType, mirroring how EntityInstance is
   the common prefix of VehicleInstance & AlienInstance. Cast a VehicleType* or
   AlienType* to EntityType* to access the properties common to both at the same
   byte offsets (e.g. func_80129354_138304). */
typedef struct {
	/* 0x00 */ u32 modelDL; // Model display list pointer
	/* 0x04 */ u8 pad04[0x8];
	/* 0x0C */ s16 unkC;
	/* 0x0E */ u8 pad0E[0x6];
	/* 0x14 */ s16 unk14;
	/* 0x16 */ u8 unk16;
	/* 0x17 */ u8 pad17;
	/* 0x18 */ s32 unk18; // string table index for name
	union {
		/* 0x1C */ s32 weapon1; // First weapon (packed s32; both halfwords index D_80145BE0_154B90)
		struct {
			/* 0x1C */ s16 weapon1A;
			/* 0x1E */ s16 weapon1B;
		};
	};
	/* 0x20 */ s16 unk20;
	/* 0x22 */ s16 unk22;
	/* 0x24 */ s16 unk24;
	/* 0x26 */ s16 unk26;
	union {
		/* 0x28 */ s32 weapon2; // Second weapon (packed s32; both halfwords index D_80145BE0_154B90)
		struct {
			/* 0x28 */ s16 weapon2A;
			/* 0x2A */ s16 weapon2B;
		};
	};
	/* 0x2C */ s16 unk2C;
	/* 0x2E */ s16 unk2E;
	/* 0x30 */ s16 unk30;
	/* 0x32 */ u16 unk32;
	/* 0x34 */ s16 unk34;
	/* 0x36 */ s16 unk36;
	/* 0x38 */ s16 unk38;
	/* 0x3A */ u16 hitPoints;
	/* 0x3C */ s16 unk3C;
	/* 0x3E */ s16 unk3E;
	/* 0x40 */ s16 unk40;
	/* 0x42 */ s16 unk42;
	/* 0x44 */ u32 unk44;
	/* 0x48 */ u32 unk48;
	/* 0x4C */ u32 unk4C;
} EntityType; /* size = 0x50 */

/* Common damage values returned by func_800FAFB8_109F68. */
typedef struct {
	/* 0x00 */ u8 pad0[0x0E];
	/* 0x0E */ s16 frontalDamage;
	/* 0x10 */ s16 sideDamage;
	/* 0x12 */ s16 rearDamage;
} EntityDamageType;

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
	/* 0x18 */ char * unk18; // Ptr to name
	/* 0x1C */ s32 unk1C; // First weapon?
	/* 0x20 */ s16 unk20;
	/* 0x22 */ s16 unk22;
	/* 0x24 */ s16 unk24;
	/* 0x26 */ s16 unk26;
	/* 0x28 */ s32 unk28; // Second weapon?
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
	/* 0x5B */ u8 pad5B;
	/* 0x5C */ void (*unk5C)(u8); // On-death handler function pointer?
	/* 0x60 */ u8 pad60[0x8]; // 0x60 xxxxyyyy xxxx Drops modifier?
} AlienType; /* size = 0x68 */

typedef struct {
	/* 0x00 */ u8 pad0[0x20];
	/* 0x20 */ s16 unk20;
	/* 0x22 */ s16 unk22;
	/* 0x24 */ s16 unk24;
} UnkF9230TypeView;

typedef struct {
	/* 0x00 */ s16 xOffset;
	/* 0x02 */ s16 zOffset;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 alienTypeId;
	/* 0x07 */ u8 pad7;
} AlienWaveEntry; /* size = 0x08 */

typedef struct {
	/* 0x00 */ s8 waveTypeId;
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
	/* 0x00 */ f32 unk0; // AI - eyeX: the camera's eye X in world units, Y at +0x4 and Z at +0x8 (measured)
	/* 0x04 */ f32 unk4;
	/* 0x08 */ f32 unk8;
	/* 0x0C */ f32 unkC; // AI - targetX: X of the point the camera looks at, Y at +0x10 and Z at +0x14 (measured)
	/* 0x10 */ f32 unk10;
	/* 0x14 */ f32 unk14;
	/* 0x18 */ s16 unk18; // AI - targetXInt: the target X truncated to an integer, stored by func_80134CCC_143C7C (read)
	/* 0x1A */ s16 unk1A; // AI - targetZInt: the target Z truncated to an integer (read)
	/* 0x1C */ s16 unk1C; // AI - radius: the orbit radius, copied from Unk80160080.unk4E (read)
	/* 0x1E */ u16 unk1E; // AI - pitch: copied from Unk80160080.unk4A (read)
	/* 0x20 */ s16 unk20;
	/* 0x22 */ u8 pad22[0xE];
	/* 0x30 */ s32 unk30;
	/* 0x34 */ s16 unk34;
	/* 0x36 */ s16 unk36;
	/* 0x38 */ VehicleInstance* unk38;
	/* 0x3C */ s16 unk3C;
	/* 0x3E */ s16 unk3E;
	/* 0x40 */ s32 unk40;
} Unk80052B2C; /* size = 0x44 */

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
	union {
		/* 0x04 */ s16 unk4;
		struct {
			/* 0x04 */ u8 vehicleType;
			/* 0x05 */ u8 vehicleIndex;
		};
	};
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
	/* 0x04 */ u8 pad4[0x4];
	/* 0x08 */ s32 unk8;
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
	/* 0x5E */ s8 unk5E;
	/* 0x5F */ s8 unk5F;
	/* 0x60 */ s8 unk60;
	/* 0x61 */ u8 unk61; // Max fuel (/ 0x100) ?
	/* 0x62 */ u8 unk62;
	/* 0x63 */ u8 unk63;
	/* 0x64 */ u8 unk64;
	/* 0x65 */ u8 pad65;
	/* 0x66 */ s16 unk66;
	/* 0x68 */ u8 pad68[2];
	/* 0x6A */ s16 unk6A;
	/* 0x6C */ u8 pad6C[0x4];
} VehicleType; /* size = 0x70 */

typedef struct {
	/* 0x00 */ s16 soundId;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ u8 pad04[4];
	/* 0x08 */ f32 minPitch;
	/* 0x0C */ f32 maxPitch;
	/* 0x10 */ u8 pad10[4];
	/* 0x14 */ f32 pitchFactor;
} VehicleAudioSpec; /* size = 0x18 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
} WeaponSpecEntry; /* size = 0xA */

typedef struct {
	/* 0x00 */ s16 xCoord;
	/* 0x02 */ s16 yCoord;
	/* 0x04 */ s16 zCoord;
	/* 0x06 */ u8 buildingType;
	/* 0x07 */ u8 unk7; // number of humans inside building
	union {
		struct {
			/* 0x08 */ u8 isDestroyable;
			/* 0x09 */ u8 unk9;
			/* 0x0A */ u8 state;
			/* 0x0B */ union {
                u8 rotation;
                struct {
                    u8 rotationHighFlags : 2;
                    u8 rotationIndex : 4;
                    u8 rotationLowFlags : 2;
                };
            };
		};
		/* 0x08 */ u32 unk8;
		struct { u8 padState[2]; u16 stateAndRotation; };
		struct { u32 statusFlags : 20; u32 lowFlags : 12; };
		struct { u32 padKeyStatus : 20; u32 keyId : 6; u32 padKeyLow : 6; };
		struct { u32 padRotationHigh : 26; u32 rotationIndexWord : 4; u32 padRotationLow : 2; };
	};
	/* 0x0C */ u8 unkC;
	/* 0x0D */ u8 unkD;
	/* 0x0E */ u8 unkE;
	/* 0x0F */ s8 hitPoints;
	/* 0x10 */ u8 unk10;
	/* 0x11 */ s8 unk11;
	union {
		struct {
			/* 0x12 */ u8 door1InteriorId;
			/* 0x13 */ u8 door2InteriorId;
			/* 0x14 */ u8 door3InteriorId;
		};
		/* 0x12 */ u8 doorInteriorIds[3];
	};
	/* 0x15 */ u8 unk15;
	/* 0x16 */ u8 unk16;
	/* 0x17 */ u8 unk17;
} BuildingInstance; /* size = 0x18 */

typedef struct {
	u32 unk0;
	s16 unk4;
	s16 unk6;
	s16 unk8;
	s16 unkA;
} BuildingCollisionVolume;

typedef struct {
	s16 values[16];
} TerrainCollisionRow;

// 0x00 xxyyyyyy yyyyyy = Model
// 0x04 xxyyyyyy yyyyyy = Damaged model
// 0x10 xxyyzzaa yy = Collision data
// 0x18 xxyyzzaa yy = Max health aa = Detail props(00 = Windmill 01 = flag 02 = Fountain effect 04 = Black oblong 05 = Statue's hand 06 = Grass oblong
typedef struct {
	union {
		u8 pad0[0x10];
		struct { void *model; void *damagedModel; u8 padModel[0x8]; };
	};
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ u8 pad16[0x3];
	/* 0x19 */ s8 unk19;
	/* 0x1A */ u8 unk1A[0x6];
} BuildingType; /* size = 0x20 */

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
	union {
		f32 motion[4];
		struct {
	/* 0x0C */ f32 unkC;
	union {
		/* 0x10 */ f32 unk10;
		struct {
			/* 0x10 */ s16 unk10S16;
			/* 0x12 */ s16 unk12S16;
		};
	};
	union {
		/* 0x14 */ f32 unk14;
		/* 0x14 */ s16 unk14S16;
	};
	union {
		/* 0x18 */ s32 unk18;
		/* 0x18 */ f32 unk18F32;
	};
		};
	};
	union {
		struct {
			/* 0x1C */ s8 unk1C;
			/* 0x1D */ s8 unk1D;
		};
		struct {
			/* 0x1C */ u8 unk1C_u8;
			/* 0x1D */ u8 unk1D_u8;
		};
	};
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
	union {
		struct {
			/* 0x00 */ s16 curX;
			/* 0x02 */ s16 posX[4];
			/* 0x0A */ s16 curY;
			/* 0x0C */ s16 posY[4];
			/* 0x14 */ s16 curZ;
			/* 0x16 */ s16 posZ[3];
			union {
				struct {
					/* 0x1C */ s16 posZ3;
					union {
						/* 0x1E */ u16 unk1E;
						struct {
							u16 trailCount : 14;
							u16 trailState : 2;
						};
						struct {
							/* 0x1E */ u8 pad1E;
							/* 0x1F */ u8 unk1F;
						};
					};
				};
				/* 0x1C */ s32 unk1C;
				struct {
					u32 trailPad : 30;
					u32 trailActive : 1;
					u32 trailEnded : 1;
				};
			};
		};
		struct {
			/* 0x00 */ s16 historyX[5];
			/* 0x0A */ s16 historyY[5];
			/* 0x14 */ s16 historyZ[5];
			/* 0x1E */ u16 historyFlags;
		};
	};
	/* 0x20 */ void *unk20; // Owning Projectile pointer
} Unk8015F790; /* size = 0x24 */

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

typedef struct {
	u8 version;
	u8 unk1;
	u8 checksum[2];
	u8 unk4[0x76];
} SaveSlot;

typedef struct {
	u8 name[0x6];
	u8 score[4];
	u8 humansKilled;
	u8 secondsElapsed[3];
} HighScore;

typedef struct {
	u8 version;
	u8 unk1;
	u8 checksum[2];
	u8 unk4;
	HighScore highScores[5];
} HighScores;

typedef struct {
	u8 version;
	u8 unk1;
	u8 checksum[2]; // Whole save file checksum
	HighScores highScores;
	SaveSlot slots[3];
} SaveData;

typedef struct {
	union {
		s16 position[3];
		struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
		};
	};
	/* 0x06 */ u8 pad6[0x2];
	/* 0x08 */ s32 unk8;
	union {
		/* 0x0C */ s32 unkC;
		AlienInstance *alien;
		VehicleInstance *vehicle;
		EntityInstance *entity;
		struct {
			s16 objectHigh;
			s16 objectIndex;
		};
	};
	/* 0x10 */ u8 unk10;
	/* 0x11 */ u8 pad11[0x3];
} Unk8015F9D0; /* size = 0x14 */

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ s32 unkC;
	/* 0x10 */ s32 unk10;
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
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
} Unk80259490; /* size = 0x12 */

typedef struct {
	/* 0x00 */ s8 unk0;
	/* 0x01 */ u8 pad1;
	/* 0x02 */ u8 unk2;
	/* 0x03 */ u8 pad3;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ void *unk8;
	/* 0x0C */ s32 unkC;
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
	/* 0x06 */ union { s16 unk6; u16 unk6Unsigned; };
	/* 0x08 */ union { s16 unk8; u16 unk8Unsigned; };
	/* 0x0A */ union { s16 unkA; u16 unkAUnsigned; };
	/* 0x0C */ s8 unkC;
	/* 0x0D */ s8 unkD;
	/* 0x0E */ s16 unkE;
} Unk8014DD50; /* size = 0x10 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ u16 unk8;
	/* 0x0A */ u16 unkA;
	/* 0x0C */ s8 unkC;
	/* 0x0D */ s8 unkD;
	/* 0x0E */ s16 unkE;
} Unk8014DD50Angles; /* size = 0x10 */

typedef struct {
	  /* 0x00 */ s8 unk0;
	  /* 0x01 */ s8 unk1;
	  /* 0x02 */ u8 pad2[0xB];
	  /* 0x0D */ s8 unkD;
	/* 0x0E */ u8 padE[2];
} Unk8014DD5C; /* size = 0x10 */

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
	union {
		/* 0x00 */ char pad[0x18];
		struct {
			Unk8015F9D0 hit;
			u8 pad14[4];
		};
	};
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
	/* 0x00 */ s16 type;      /* 0 = free, 1 = laser, 2 = laser type 2 */
	union {
		/* 0x02 */ s16 timer;     /* remaining lifetime in frames */
		struct {
			u8 timerHigh;
			u8 timerLow;
		};
	};
	/* 0x04 */ s16 x1;        /* start point */
	/* 0x06 */ s16 y1;
	union {
		struct {
			/* 0x08 */ s16 z1;
			/* 0x0A */ s16 x2;        /* end point */
		};
		/* 0x08 */ AlienInstance *alien; /* type 2 */
	};
	/* 0x0C */ s16 y2;
	/* 0x0E */ s16 z2;
	/* 0x10 */ s32 extra;     /* passed to the draw fn; restores render mode when non-zero */
	/* 0x14 */ u8 colorIdx;   /* index into D_8013DD18_14CCC8 lifetime/color table */
	/* 0x15 */ u8 pad15[3];
} LaserEntry; /* 0x18 bytes */

typedef struct {
	/* 0x00 */ LaserEntry lasers[2];
} LaserEntryPair; /* 0x30 bytes */

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
	/* 0x01 */ u8 lights[4];
} Unk80080588Entry5; /* size = 0x05 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ u8 unk2;
} Unk80080588Entry3; /* size = 0x03 */

typedef Unk80080588Entry3 Unk80080588Rgb;

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ s32 unkC;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ u8 unk14;
	/* 0x15 */ u8 unk15;
	/* 0x16 */ u8 unk16;
	/* 0x17 */ u8 pad17;
	/* 0x18 */ s32 unk18;
} Unk80080588Entry1C; /* size = 0x1C */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 color[3];
	/* 0x09 */ u8 pad9;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ u8 unk10;
} Unk8008C7E4Sub; /* size = 0x12 */

typedef struct {
	/* 0x00 */ u16 x;
	/* 0x02 */ u16 y;
	/* 0x04 */ u16 z;
	/* 0x06 */ u8 color[3];
	/* 0x09 */ u8 pad9;
	/* 0x0A */ s16 velocityX;
	/* 0x0C */ s16 velocityY;
	/* 0x0E */ s16 velocityZ;
	/* 0x10 */ u8 life;
} FrontendLineParticle; /* size = 0x12 */

typedef struct {
	/* 0x00 */ u8 pad0[4];
	/* 0x04 */ s16* pose;
} FrontendObjectResourceHeader; /* size = 0x08 */

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
	/* 0x24 */ s32 unk24;
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
 u32 frameCount;
 struct { u16 start; u16 count; } channels[15];
 u8 pad40[8];
} FrontendStreamHeader; /* size = 0x48 */

typedef struct {
 /* 0x00 */ u8 pad0[8];
 /* 0x08 */ FrontendStreamHeader header;
 /* 0x50 */ s32 unk50;
 /* 0x54 */ void* unk54;
} FrontendStreamSlot; /* size = 0x58 */


typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ s16 unk2;
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
	s8 unk0;
	s8 unk1;
	s8 unk2;
	s8 unk3;
	s8 unk4;
	s8 unk5;
	union {
		s8 values[2];
		struct {
			s8 width;
			s8 height;
		} size;
	} dimensions;
} Unk800AA694Entry; /* size = 0x08 */

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
} Unk800E1980; /* size = 0x14 */

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
	s16 position[3];
	u8 primitive[3];
	u8 environment[3];
} FrontendBillboardColors;

typedef struct {
	s16 position[3];
	u8 primitiveR;
	u8 primitiveG;
	u8 primitiveB;
	u8 environmentR;
	u8 environmentG;
	u8 environmentB;
	u8 age;
	u8 tail[7];
} FrontendInterpolatedParticleState; /* size = 0x14 */

typedef struct {
	u8 colors[6];
	u8 textureFrame;
	u8 pad7;
	u8 rotation;
	u8 alpha;
	u8 environmentAlpha;
	u8 rate;
	u8 tail[8];
} FrontendInterpolatedParticleMotion; /* size = 0x14 */

typedef struct {
	u16 size;
	u8 scale[3];
	u8 velocity[3];
	u8 mode;
	u8 tail[11];
} FrontendInterpolatedParticleShape; /* size = 0x14 */

typedef struct {
	u8 flags[2];
	s16 scale;
	s16 next;
	s16 previous;
	s16 position[3];
	u16 delay;
	u8 unused10;
	u8 alpha;
	u8 tail[0xA];
} FrontendBillboardParticle; /* size = 0x1C */

typedef struct {
    u8 flags[2];
    s16 size;
    s16 next;
    s16 previous;
    s16 position[3];
    u8 color[3];
    u8 age;
    u8 opacity;
    u8 growth;
    u8 pad14[8];
} FrontendGroundParticle; /* size = 0x1C */

typedef struct {
	s16 position[3];
	u8 color[3];
	u8 alpha;
	u8 age;
	u8 padB[9];
} FrontendChildParticleState; /* size = 0x14 */

typedef struct {
	s16 position[3];
	u8 color[3];
	u8 childEffect;
	u8 frame;
	u8 flags;
	u8 tail[8];
} FrontendSolidParticleState; /* size = 0x14 */

typedef struct {
	s8 velocity[3];
	u8 rotation[3];
	s8 angularVelocity[3];
	u8 tail[11];
} FrontendSolidParticleMotion; /* size = 0x14 */

typedef struct {
	u32 displayList;
	u8 tail[16];
} FrontendSolidParticleModel; /* size = 0x14 */

typedef struct {
	/* 0x00 */ AAA70Unk8014F618Head head;
	/* 0x30 */ Vec3f positions[4];
	/* 0x60 */ u16 unk60;
	/* 0x62 */ u8 textureIndices[4];
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

typedef Unk800311A0 Unk80052B40; /* size = 0x06 */

typedef struct {
	/* 0x00 */ Unk80052B40 scale;
	/* 0x06 */ s16 pad6;
} TextAnimationScale; /* size = 0x08 */

typedef union {
	Unk80052B40 position;
	s32 command[2];
} MapMarkerScratch; /* size = 0x08 */

typedef union {
	u8 bytes[0x400];
	u32 words[0x100];
} ScannerTexture; /* size = 0x400 */

typedef union {
	u32 words[9];
	u16 colors[18];
} ScannerPalette; /* size = 0x24 */

typedef struct {
	Unk80052B40 values[3];
} AlienRenderScales;

typedef struct {
	/* 0x00 */ u16 unk0;
	/* 0x02 */ union {
		s16 unk2;
		u16 unk2Unsigned;
	};
	/* 0x04 */ union {
		s16 unk4;
		u16 unk4Unsigned;
	};
} Unk80052B48; /* size = 0x06 */

typedef struct {
	/* 0x00 */ u32 displayList;
	/* 0x04 */ u32 transform;
	/* 0x08 */ Unk80052B40 unk8;
	/* 0x0E */ s16 flags;
} Unk8013FDA8Entry; /* size = 0x10 */

typedef struct {
	s32 model;
	void (*updateMtx)(u8);
	Unk80052B40 offset;
	u16 flags;
} ShadowPartEntry;

typedef struct {
	union {
		struct {
			/* 0x00 */ f32 unk0;
			/* 0x04 */ f32 unk4;
			/* 0x08 */ f32 unk8;
		};
		Vec3f position;
	};
	union {
		struct {
			/* 0x0C */ f32 unkC;
			/* 0x10 */ f32 unk10;
			/* 0x14 */ f32 unk14;
		};
		Vec3f lookAt;
	};
	union {
		struct {
			/* 0x18 */ f32 unk18;
			/* 0x1C */ f32 unk1C;
			/* 0x20 */ f32 unk20;
		};
		Vec3f up;
	};
	union {
		struct {
			/* 0x24 */ f32 unk24;
			/* 0x28 */ f32 unk28;
			/* 0x2C */ f32 unk2C;
		};
		Vec3f desiredLookAt;
	};
	union {
		struct {
			/* 0x30 */ f32 unk30;
			/* 0x34 */ f32 unk34;
			/* 0x38 */ f32 unk38;
		};
		Vec3f vehiclePosition;
	};
	/* 0x3C */ f32 unk3C;
	/* 0x40 */ f32 unk40;
	/* 0x44 */ f32 unk44;
	/* 0x48 */ s16 unk48; // AI - yaw: the camera's current yaw, eased toward unk50 every frame (measured)
	/* 0x4A */ s16 unk4A; // AI - pitch: the camera's current pitch (measured)
	/* 0x4C */ s16 unk4C;
	/* 0x4E */ s16 unk4E; // AI - radius: the orbit radius, 300 at the game's own distance (measured)
	/* 0x50 */ s16 unk50; // AI - yawTarget: the yaw the camera is heading for; func_80133F28_142ED8 eases unk48 toward it (read)
	/* 0x52 */ s16 unk52; // AI - pitchTarget: eased toward by func_80134D44_143CF4 (read)
	/* 0x54 */ s16 unk54;
	/* 0x56 */ s16 unk56; // AI - radiusTarget: the radius being eased toward (read)
	/* 0x58 */ s16 unk58;
	/* 0x5A */ s16 unk5A;
	/* 0x5C */ s16 unk5C;
	/* 0x5E */ s16 unk5E;
	/* 0x60 */ s16 unk60;
	/* 0x62 */ union { s16 unk62; u8 pad62[0x2]; };
	/* 0x64 */ s16 unk64;
	/* 0x66 */ union { s16 unk66; u8 pad66[0x2]; };
	/* 0x68 */ s32 unk68;
	/* 0x6C */ u8 unk6C; // AI - nearFarMode: 1 or 2, flipped by C-UP in func_801358E8_144898 (read)
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
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 pad6[0x2];
	/* 0x08 */ f32 unk8;
	/* 0x0C */ f32 unkC;
	/* 0x10 */ f32 unk10;
	/* 0x14 */ u8 pad14[0x4];
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
	/* 0x00 */ u32 unk0; /* segmented display-list address */
	/* 0x04 */ s16 *unk4; /* animation data */
	/* 0x08 */ s32 unk8;
	/* 0x0C */ u8 unkC;
	/* 0x0D */ u8 padD[0x3];
} Unk8009E4C8; /* stride = 0x10 */

typedef Unk8009E4C8 Unk8009E4C8_Row[0xD];

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
} Unk8007D62C_Entry; /* size = 0x02 */

// AI - Character animation table entry (stride 0x34). unk0 is a flag set, unk30 is a segmented pointer to animation data.
typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ s32 unkC;
	/* 0x10 */ s32 unk10;
	/* 0x14 */ s32 unk14;
	/* 0x18 */ s32 unk18;
	/* 0x1C */ char name[0x10];
	/* 0x2C */ s32 unk2C;
	/* 0x30 */ s32 unk30;
} Unk8009E8E0; /* size = 0x34 */

// AI - Placed room object instance (one entry in the current room's layout, built from the InteriorRoomData record)
// AI - Each instance references an object type from the room's 32-entry catalog (Unk80070F7CObj) via unk0
typedef struct {
	/* 0x00 */ u8 unk0; // AI - room object type index (0-31) into D_800E65BC catalog
	/* 0x01 */ u8 pad1[0x1];
	/* 0x02 */ s16 unk2; // AI - room-space X position
	/* 0x04 */ s16 unk4; // AI - height (Y) offset (from the object's pad1C[0])
	/* 0x06 */ s16 unk6; // AI - room-space Z position
	/* 0x08 */ u8 unk8; // AI - orientation (0-3)
	/* 0x09 */ u8 pad9[0x1];
	/* 0x0A */ union {
		s16 unkA; // Spawned entity/object handle (0 if none).
		u8 handleBytes[2];
	};
	/* 0x0C */ u16 unkC; // AI - room-visit related value (from the object's unk16)
	/* 0x0E */ s16 unkE; // AI - state/sentinel (-1 = unused)
	/* 0x10 */ u16 unk10; // AI - additional state value
	/* 0x12 */ u8 pad12[0x2];
	/* 0x14 */ f32 unk14; // AI - animated offset (X)
	/* 0x18 */ f32 unk18; // AI - animated offset (Y)
	/* 0x1C */ f32 unk1C; // AI - animated offset (Z)
	/* 0x20 */ f32 unk20; // AI - animated position/scroll (X)
	/* 0x24 */ f32 unk24; // AI - animated position/scroll (Y)
	/* 0x28 */ f32 unk28; // AI - animated position/scroll (Z)
	/* 0x2C */ u8 unk2C; // AI - room property byte
	/* 0x2D */ u8 unk2D; // AI - room/doorway ID (low 6 bits = loading-zone target room)
	/* 0x2E */ u8 unk2E; // AI - visited flags (bit 0 = visited, bit 1 = special state)
	/* 0x2F */ u8 pad2F[0x1];
} Unk800E66A8; /* stride 0x30 */

// AI - Per-room configuration record (D_8009C804_1848C4, indexed by room/levelIndex; runtime pointer D_800E65C8)
typedef struct {
	/* 0x00 */ u8 unk0; // AI - interaction/room mode
	/* 0x01 */ u8 pad1[0x3];
	/* 0x04 */ s32 unk4; // AI - spawn coordinate X
	/* 0x08 */ s32 unk8; // AI - spawn coordinate Z
	/* 0x0C */ s32 unkC;
	/* 0x10 */ f32 unk10; // AI - used as a divisor for animation/scroll progress
	/* 0x14 */ f32 unk14; // AI - used as a divisor for animation/scroll progress
	/* 0x18 */ s32 unk18;
	/* 0x1C */ s32 unk1C;
	/* 0x20 */ s32 unk20;
	/* 0x24 */ s32 unk24;
	/* 0x28 */ s16 unk28; // AI - interaction center X (plus D_800E65CC)
	/* 0x2A */ s16 unk2A; // AI - interaction half width
	/* 0x2C */ s32 unk2C;
	union {
		struct {
			/* 0x30 */ s16 unk30;
			/* 0x32 */ s16 unk32;
		};
		/* 0x30 */ s32 musicId;
	};
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
	/* 0x00 */ s8 phaseCount;
	/* 0x01 */ s8 sizeStep;
	/* 0x02 */ s8 heightStep;
	/* 0x03 */ s8 fadeStep;
	/* 0x04 */ s8 drawMode;
	/* 0x05 */ s8 format;
	/* 0x06 */ union {
		s8 values[2];
		struct {
			s8 width;
			s8 height;
		} size;
	} dimensions;
} EffectParticleConfig; /* size = 0x08 */

typedef struct {
	/* 0x00 */ u8 r;
	/* 0x01 */ u8 g;
	/* 0x02 */ u8 b;
	/* 0x03 */ u8 alpha;
} EffectParticleColor; /* size = 0x04 */

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
	/* 0x00 */ void (*callback)(s16, s16);
	/* 0x04 */ s16 timer;
	/* 0x06 */ s16 position[3];
} EffectCallbackState;

typedef struct {
	union {
		/* 0x00 */ s16 angle;
		/* 0x00 */ u16 age;
	};
	/* 0x02 */ u8 color[3];
	/* 0x05 */ u8 pad5[7];
} SpinnerParentState;

typedef struct {
	/* 0x00 */ s16 position[3];
	/* 0x06 */ s8 step[3];
	/* 0x09 */ u8 unit[3];
} SpinnerMotionState;

typedef struct {
	/* 0x00 */ s16 position[3];
	/* 0x06 */ u8 age;
	/* 0x07 */ u8 pad7;
	/* 0x08 */ s16 buildingId;
	/* 0x0A */ u8 padA[2];
} EffectBuildingRecoveryState; /* size = 0x0C */

typedef union {
	struct {
		s16 position[3];
		u8 color[3];
		u8 highlight[3];
	} visual;
	struct {
		u16 life;
		s16 sizeDelta;
		u8 phase;
		u8 growthFrames;
		u8 pad6[6];
	} control;
} EffectFirePayload; /* size = 0x0C */

typedef struct {
	/* 0x00 */ s16 position[3];
	/* 0x06 */ u8 age;
	/* 0x07 */ u8 pad7[5];
} NukeEffectState; /* size = 0x0C */

typedef struct {
	/* 0x00 */ s16 position[3];
	/* 0x06 */ u8 color[3];
	/* 0x09 */ u8 shadowColor[3];
} SpurtVisualState; /* size = 0x0C */

typedef struct {
	/* 0x00 */ s8 velocity[3];
	/* 0x03 */ u8 size;
	/* 0x04 */ u8 kind;
	/* 0x05 */ u8 intensity;
	/* 0x06 */ s16 age;
	/* 0x08 */ u8 alpha;
	/* 0x09 */ u8 pad9[3];
} SpurtEmitterState; /* size = 0x0C */

typedef struct {
	/* 0x00 */ s16 position[3];
	/* 0x06 */ u8 color[3];
	/* 0x09 */ u8 opacity;
	/* 0x0A */ u8 age;
	/* 0x0B */ u8 padB;
} TrailParticleState; /* size = 0x0C */

typedef struct {
	/* 0x00 */ s16 position[3];
	/* 0x06 */ u8 color[3];
	/* 0x09 */ u8 effectId;
	/* 0x0A */ u8 timer;
	/* 0x0B */ u8 flags;
} ChunkEffectState; /* size = 0x0C */

typedef struct {
	/* 0x00 */ s8 velocity[3];
	/* 0x03 */ u8 rotation[3];
	/* 0x06 */ s8 angularVelocity[3];
	/* 0x09 */ u8 pad9[3];
} ChunkMotionState; /* size = 0x0C */

typedef struct {
	/* 0x00 */ s16 position[3];
	/* 0x06 */ u8 color[3];
	/* 0x09 */ u8 opacity;
	/* 0x0A */ s8 velocity[3];
	/* 0x0D */ u8 bounced;
} JetStreamParticleState; /* size = 0x0E */

typedef struct {
	u8 flags[2];
	u16 size;
	s16 next;
	s16 previous;
	JetStreamParticleState particle;
	u8 pad16[6];
} FrontendJetStreamNode; /* size = 0x1C */

typedef struct {
	SpurtVisualState visual;
	u8 mode;
	u8 padD;
} FrontendSpurtVisualState; /* size = 0x0E */

typedef struct {
	s8 velocity[3];
	u8 size;
	u8 spread;
	u8 remaining;
	u16 delay;
	u8 alpha;
	u8 pad9[3];
} FrontendSpurtEmitterState; /* size = 0x0C */

typedef struct {
    s16 position[3];
    u8 color[3];
    u8 pad9;
    u8 active;
    u8 padB;
} SparkEmitterState; /* size = 0x0C */

typedef struct {
	/* 0x00 */ s16 position[3];
	/* 0x06 */ u8 color[3];
	/* 0x09 */ u8 opacity;
	/* 0x0A */ u8 kind;
	/* 0x0B */ u8 childEffect;
} SmokePuffState; /* size = 0x0C */

typedef struct {
	s16 position[3];
	u8 red;
	u8 green;
	u8 blue;
	u8 opacity;
	u8 padA[2];
	s32 age;
	u8 flags;
	u8 pad11[3];
} AnimatedFlareState; /* size = 0x14 */

typedef struct {
	union {
		u16 size;
		s16 position[3];
		u8 bytes[14];
	};
} EffectInterpolationState;

typedef struct {
	union {
		s16 position[3];
		Vec3s positionVector;
	};
	u8 opacity;
	u8 pad7[3];
	u8 paletteIndex;
	u8 padB;
} RingVisualState;

typedef struct {
	s16 width;
	s16 height;
	u8 textureSlices[8];
} RingEmitterState;

typedef union {
	u8 bytes[0x1E4];
	u8 colors[3][8];
} RingPaletteTable;

typedef struct {
	Vec3s position;
	Vec3s velocity;
} FallingRibbonParticleState; /* size = 0x0C */

typedef struct {
	union {
		s16 position[3];
		Vec3s positionVector;
	};
	union {
		s16 previousPosition[3];
		Vec3s previousPositionVector;
	};
} EffectPositionPair;

typedef struct {
	/* 0x00 */ Unk80052B40 position;
	/* 0x06 */ s16 flags;
	/* 0x08 */ u8 pad8[4];
} EffectLightningTrailState;

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	union {
		EffectInterpolationState interpolation;
		AnimatedFlareState animatedFlare;
		FallingRibbonParticleState fallingRibbon;
		Unk80154318Sub ribbonState;
		JetStreamParticleState jetStreamParticle;
		struct {
			union {
				/* 0x08 */ Unk80052B40 spatialVectors[2];
				/* 0x08 */ Gfx *displayList;
				/* 0x08 */ Unk80052B40 positionVector;
				/* 0x08 */ SmokePuffState smokePuff;
				/* 0x08 */ EffectFirePayload firePayload;
				/* 0x08 */ TrailParticleState trailParticle;
				/* 0x08 */ ChunkEffectState chunkEffect;
				/* 0x08 */ ChunkMotionState chunkMotion;
				/* 0x08 */ SparkEmitterState sparkEmitter;
				/* 0x08 */ SpurtVisualState spurtVisual;
				/* 0x08 */ NukeEffectState nukeEffect;
				/* 0x08 */ SpurtEmitterState spurtEmitter;
				/* 0x08 */ EffectCallbackState callbackState;
				/* 0x08 */ SpinnerParentState spinnerState;
				/* 0x08 */ SpinnerMotionState spinnerMotion;
				/* 0x08 */ RingVisualState ringVisual;
				/* 0x08 */ RingEmitterState ringEmitter;
				struct {
					/* 0x08 */ s16 unk8;
					/* 0x0A */ s16 unkA;
					/* 0x0C */ s16 unkC;
					/* 0x0E */ u8 unkE;
					/* 0x0F */ u8 unkF;
					/* 0x10 */ u8 unk10;
					/* 0x11 */ u8 unk11;
					/* 0x12 */ s16 unk12;
				};
				struct {
					/* 0x08 */ s16 position[3];
					/* 0x0E */ s16 previousPosition[3];
				};
				/* 0x08 */ s16 coordinates[6];
				/* 0x08 */ EffectPositionPair positionPair;
				/* 0x08 */ EffectLightningTrailState lightningTrail;
				/* 0x08 */ u8 payload[12];
			};
			union {
				/* 0x14 */ s16 radialRadius;
				struct {
					/* 0x14 */ u8 unk14;
					/* 0x15 */ u8 unk15;
				};
			};
			/* 0x16 */ u8 pad16[6];
		};
	};
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
	/* 0x00 */ u32 unk0;
	/* 0x04 */ u8 unk4;
	/* 0x05 */ u8 unk5;
	/* 0x06 */ u8 pad6[2];
} Unk8007E12CEntry8;

typedef struct {
    /* 0x00 */ FrontendStreamHeader* stream;
    /* 0x04 */ u8 objectIndex;
    /* 0x05 */ u8 flags;
    /* 0x06 */ u8 pad6[2];
} FrontendMovieResource; /* size = 0x08 */

typedef struct {
	/* 0x00 */ s16 position[3];
	/* 0x06 */ u8 color[3];
	/* 0x09 */ u8 highDigits;
	/* 0x0A */ u8 lowDigits;
	/* 0x0B */ u8 riseSpeed;
	/* 0x0C */ u8 alpha;
	/* 0x0D */ u8 padD;
} FloatingNumberState; /* size = 0x0E */

typedef struct {
	/* 0x00 */ s16 x;
	/* 0x02 */ s16 y;
	/* 0x04 */ s16 z;
	/* 0x06 */ u8 color[3];
	/* 0x09 */ u8 height;
	/* 0x0A */ u8 frame;
	/* 0x0B */ u8 kind;
} BubbleParticleState; /* size = 0x0C */

typedef struct {
	/* 0x00 */ s16 x;
	/* 0x02 */ s16 y;
	/* 0x04 */ s16 z;
	/* 0x06 */ u8 color[3];
	/* 0x09 */ u8 topAlpha;
	/* 0x0A */ u8 bottomAlpha;
	/* 0x0B */ s8 phase;
} EffectStripState; /* size = 0x0C */

typedef struct {
	s16 x;
	s16 y;
	s16 z;
	u8 r;
	u8 g;
	u8 b;
	u8 pad9;
	s16 width;
	u8 phase;
	u8 lifetime;
} EffectSparkState; /* size = 0x0E */



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
	/* 0x00 */ s32 w;
	/* 0x04 */ u16 h;
	/* 0x06 */ u16 pad6;
} Unk802E0CC4Entry; /* size = 0x8 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ u8 unk2;
} Unk80152CA0Entry; /* stride = 0x3 */

typedef struct {
	/* 0x00 */ s16 position[3];
	/* 0x06 */ s16 pad6;
	/* 0x08 */ u16 angle;
	/* 0x0A */ s16 padA;
	/* 0x0C */ s16 scale[3];
	/* 0x12 */ u8 duration;
	/* 0x13 */ u8 pad13;
} NukeKeyframe; /* size = 0x14 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ union { s16 unk8; u16 angle; };
	/* 0x0A */ s16 unkA;
	union {
		/* 0x0C */ Unk80052B40 modelScale;
		struct {
			/* 0x0C */ s16 unkC;
			/* 0x0E */ union {
				s16 scaleY;
				struct { u8 unkE; u8 padF; };
			};
			/* 0x10 */ s16 unk10;
		};
	};
	/* 0x12 */ u8 unk12;
	/* 0x13 */ u8 unk13;
	/* 0x14 */ u8 unk14;
	/* 0x15 */ u8 pad15[3];
	/* 0x18 */ union { s32 unk18; NukeKeyframe *keyframe; };
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

typedef union {
	struct {
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
	};
	struct {
		/* 0x00 */ s32 x;
		/* 0x04 */ s32 z;
		/* 0x08 */ s32 anchorX;
		/* 0x0C */ s32 anchorZ;
	} position;
	s32 words[9];
} UnkF9230ShadowLimb; /* size = 0x24 */

typedef struct {
	/* 0x000 */ UnkF9230ShadowLimb limbs[9];
	/* 0x144 */ u8 alienIdx;
	/* 0x145 */ u8 pad145[3];
	/* 0x148 */ LookAt lookAt;
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
	s32 values[9];
} AnimationDirectionTable;

typedef struct {
	f32 values[10];
} AnimationScaleTable;

typedef struct {
	u16 values[5];
} PlayerRenderSettings;

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
	/* 0x00 */ s16 x;
	/* 0x02 */ s16 y;
} TileCoord; /* stride = 0x4 */

typedef struct {
	/* 0x00 */ s8 unk0;
	/* 0x01 */ s8 unk1;
} TileEntry; /* stride = 0x2 */

typedef struct {
	/* 0x00 */ s16 unk0; // X position
	/* 0x02 */ s16 unk2; // Y position
	/* 0x04 */ s16 unk4; // Z position
	/* 0x06 */ s16 unk6; // X velocity
	/* 0x08 */ s16 unk8; // Y velocity
	/* 0x0A */ s16 unkA; // Z velocity
	/* 0x0C */ s16 unkC; // Powerup type
	/* 0x0E */ s16 unkE; // Remaining lifetime
	/* 0x10 */ s16 unk10; // Effect slot index?
} PowerupItem; /* stride = 0x12 */

typedef struct {
	/* 0x00 */ f32 unk0;
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
	/* 0x04 */ u8 *name;
	/* 0x08 */ union { u8 pad08[2]; s16 unk08; };
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
	union {
		struct {
			/* 0x00 */ s32 unk0;
			/* 0x04 */ u16 unk4;
		};
		s16 coordinates[3];
	};
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

/* Gate entry in shield wall. Array: D_8003E0FC_3ECFC[5][8], access [currentLevel-1][idx] */
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
	s16 damageScale;
	u8 padA[2];
} Unk80147090Entry_8012B26C;

typedef struct {
	union {
		f32 motion[4];
		struct {
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
		};
	};
} UnkProjectileCtrl_8012B26C;

/* Message entries store an unused word before the string pointer. */
typedef struct {
	/* 0x00 */ s32 pad;
	/* 0x04 */ u8 *name;
} MessageEntry; /* stride = 0x08 */

typedef struct {
	/* 0x00 */ const char *unk0; // Pointer to label string
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ s32 minimum;
	/* 0x10 */ s32 maximum;
	/* 0x14 */ s16 shift;
	/* 0x16 */ u16 pad16;
	/* 0x18 */ u32 type;
} DebugPropEntry; /* stride = 0x1C */

typedef union {
	u8 byte;
	s8 signedByte;
	s16 halfword;
	s32 word;
	f32 real;
	s8 bytePair[2];
	s16 halfwordPair[3];
} DebugPropertyValue;

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
	/* 0x04 */ f32 unk4;
	/* 0x08 */ f32 unk8;
	/* 0x0C */ f32 unkC;
	/* 0x10 */ f32 unk10;
	/* 0x14 */ f32 unk14;
	/* 0x18 */ s16 unk18;
	/* 0x1A */ s16 unk1A;
	/* 0x1C */ s16 unk1C;
	/* 0x1E */ s16 unk1E;
} FrontendCamEntry; /* size = 0x20 */

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
	/* 0x00 */ s32* unk0;
	/* 0x04 */ Unk80080530_Dst* unk4;
	/* 0x08 */ u8* unk8;
	/* 0x0C */ Unk80080530_Src* unkC;
	/* 0x10 */ Unk80080588Entry5* unk10;
	/* 0x14 */ u8* unk14;
	/* 0x18 */ u8* unk18;
	/* 0x1C */ Unk80080588Entry1C* lightSources;
} FrontendResourcePointers; /* size = 0x20 */

typedef union {
	Lights7 lights;
	Light slots[7];
} FrontendLightingBuffer; /* size = 0x78 */

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
	union {
		/* 0x08 */ s32 unk8;
		struct {
			s32 weaponFlags : 24;
			u32 weaponFlagsLow : 8;
		};
		struct {
			/* 0x08 */ u8 pad8;
			/* 0x09 */ u8 pad9;
			/* 0x0A */ u8 padA;
			/* 0x0B */ s8 unkB;
		};
	};
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
	/* 0x14 */ union { u8 pad14[4]; s32 modelDisplayList; };
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

typedef struct BhGfxBuffer {
	/* 0x00000 */ u8 header[0x280];
	/* 0x00280 */ Gfx displayList[0x1C20];
	/* 0x0E380 */ u8 remaining[0x14780];
} BhGfxBuffer; /* size = 0x22B00 */

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

#pragma pack(1)
typedef struct {
	s32 unk0;
	s32 unk4;
	s32 unk8;
	s32 unkC;
	u16 unk10;
} Unk8031C88; /* size = 0x12 - DMA init descriptor from boot ROM */
#pragma pack()

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
	f32 unk0;
	f32 unk4;
	f32 unk8;
	f32 unkC;
	f32 unk10;
	f32 unk14;
	u8 unk18;
	u8 unk19;
	u8 pad1A[0x2];
} Unk158330SavedObjectState; /* size = 0x1C */

typedef struct {
	s32 unk0;
	Unk158330SavedObjectState objects[16];
	s32 unk1C4;
	f32 unk1C8;
	f32 unk1CC;
} Unk158330SavedRoomState; /* size = 0x1D0 */

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
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 pad1[0x23];
	/* 0x24 */ f32 unk24;
	/* 0x28 */ u8 pad28[0x8];
} Unk8007C698Npc; /* size = 0x30 */

// AI - One exit/door row of a building-interior layout record
typedef struct {
	/* 0x0 */ u8 interiorId;  // destination buildingInteriorToLoadId (-> D_800E65ED)
	/* 0x1 */ u8 objectIndex; // entry object index into D_800E66A8 (-> D_800E65EC)
} InteriorRoomExit; /* size = 0x2 */

// Camera anchor stored in an interior room record.
typedef struct {
	/* 0x00 */ u8 cellX;      // world X = (cellX - 0.5) * 96
	/* 0x01 */ u8 cellZ;      // world Z = (cellZ - 0.5) * 96
	/* 0x02 */ u8 unk2[4];
	/* 0x06 */ u8 height;     // world Y = ((height >> 1) & 0x7F) + 50
	/* 0x07 */ u8 unk7;
} InteriorRoomAnchor; /* size = 0x8 */

// AI - Building-interior layout record. D_800D6460 holds the current level's interior
// asset (0xFE00 bytes = 254 records); the live record is
// D_800D6460 + buildingInteriorToLoadId * sizeof(InteriorRoomData) (pointed to by D_800E65E8).
typedef struct {
	/* 0x00 */ u8 unk00[0x28];        // unreferenced by code
	/* 0x28 */ InteriorRoomAnchor anchor;
	/* 0x30 */ u8 objectType[16];     // bits 0-4 catalogue id, bits 5-6 orientation, bit 7 flag
	/* 0x40 */ u8 objectCellX[16];
	/* 0x50 */ u8 objectCellY[16];
	/* 0x60 */ u8 objectFlags[16];    // bits 2-7 event/room id, bits 0-1 sub-state
	/* 0x70 */ u8 objectRoomId[16];   // low 6 bits loading-zone id, 0x40 flag
	/* 0x80 */ u8 tileMap[10 * 10];   // gridWidth * gridHeight tile ids, 0xFF = solid
	/* 0xE4 */ u8 gridWidth;          // <= 10
	/* 0xE5 */ u8 gridHeight;         // <= 10
	/* 0xE6 */ u8 objectCount;        // <= 16
	/* 0xE7 */ u8 roomSetIndex;       // + D_8009C4C4_184584[currentLevel] = room index
	/* 0xE8 */ u8 viewMode;           // copied to D_800A0960_188A20
	/* 0xE9 */ InteriorRoomExit exitTable[3];
	/* 0xEF */ u8 padEF[0x11];
} InteriorRoomData; /* size = 0x100 */

typedef union {
    u8 bytes[0x80];
    Lights2 lights;
    struct {
        Lights2 lights;
        s32 torchHandles[4];
        u8 padding[0x48];
    } room;
} InteriorLightData;

// Interior light-data storage reused for four torch effect handles.
typedef union {
	s32 handles[4];
	struct {
		s16 unk0;
		s16 unk2;
		s16 unk4;
		s16 unk6;
		s16 unk8;
		s16 unkA;
		s16 unkC;
		s16 unkE;
	} halves;
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
	s32 x;
	s32 y;
	s32 z;
	s32 velocityX;
	s32 velocityY;
	s32 velocityZ;
} Unk800E614CFxMotion;

typedef struct {
	/* 0x000 */ Unk800E614CFxEntry entries[16];
	/* 0x1C0 */ Unk800E614CFxMotion motion;
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

typedef union {
	u32 words[3];
	s8 bytes[12];
} EffectPalette;

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
	s16 unk4;
	s16 unk6;
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
	/* 0x02 */ union {
		u8 unk2;
		struct {
			u8 highFlags : 5;
			u8 direction : 2;
			u8 lowFlags : 1;
		};
	};
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
	/* 0x02 */ union {
		struct { u8 r; u8 g; u8 b; };
		u8 color[3];
	};
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

typedef struct {
	/* 0x00 */ u8 tick;
	/* 0x01 */ u8 frame;
} Unk8016006C; /* size = 0x02 */

/* Terrain cells store flags above the six-bit height. */
typedef struct {
	u16 flags : 10;
	u16 height : 6;
} TerrainCell;

typedef struct {
	u16 terrainObject : 1;
	u16 flag14 : 1;
	u16 flag13 : 1;
	u16 flag12 : 1;
	u16 flag11 : 1;
	u16 flag10 : 1;
	u16 terrainType : 4;
	u16 height : 6;
} TerrainObjectCell;

typedef union {
	u16 col[256];
	TerrainCell cells[256];
	TerrainObjectCell objects[256];
} D_801FEA30_Row;

typedef union {
	s32 word;
	u8 bytes[4];
	struct {
		s16 high;
		s16 low;
	} halves;
} SignedWord;

typedef struct {
	s16 unk0;     // 0x00
	s16 unk2;     // 0x02
	s16 unk4;     // 0x04
	s16 unk6;     // 0x06
	s16 unk8;     // 0x08
} Unk14C280Entry; // 0x0A bytes



typedef u8 MapTextureStrip[2048];

typedef union {
	u16 pixels[8][8][8][4][8][4];
	u8 rows[8][16384];
	u8 bytes[131072];
} MapTexture;

typedef struct {
	s8 x;
	s8 z;
	u8 size;
	u8 music;
} MapStage;

typedef struct {
	u8 r;
	u8 g;
	u8 b;
} EffectRgb;

typedef struct {
	/* 0x00 */ Vec3s position;
	/* 0x06 */ EffectRgb primitive;
	/* 0x09 */ EffectRgb environment;
} EffectEmitterColorState; /* size = 0x0C */

typedef struct {
	u8 r;
	u8 g;
	u8 b;
	u8 unk3;
} TerrainPaletteColor;

typedef struct {
	f32 r;
	f32 g;
	f32 b;
} TerrainLightTint;

typedef struct {
	f64 value;
} InteriorAngleScale;

typedef struct {
    u8 width;
    u8 height;
} InteriorRoomMapSize;

typedef union {
    s32 flat[25 * 8];
    s32 rows[25][8];
    u8 bytes[25 * 32];
} InteriorRoomOffsetTable;

typedef union {
    Gfx *rows[25][8];
    u8 bytes[25 * 32];
} InteriorRoomDisplayListTable;

typedef union {
	s16 flat[22];
	s16 byLevel[7][3];
} InteriorEventBuildings;

typedef union {
	s16 flat[16];
	s16 byLevel[5][3];
} InteriorPrimaryEventBuildings;

#endif

/* Adjacent camera basis vectors share a single six-float storage block. */
typedef struct {
	f32 x, y, z;
	f32 rightX, rightY, rightZ;
} CameraBasis;

typedef struct {
	f64 value;
} ShadowGeometryConstant;

typedef struct {
	f32 value;
} FloatConstant;

typedef struct {
	/* 0x00 */ s16 x;
	/* 0x02 */ s16 z;
} BeaconLevelCoord; /* 4 bytes */

typedef struct {
	/* 0x00 */ BeaconLevelCoord levels[5]; /* 20 bytes - per-level beacon coords */
	/* 0x14 */ u8 ids[4];                  /* 4 bytes - per-level sound IDs */
} LevelBeaconData; /* 0x18 = 24 bytes */

typedef struct {
	/* 0x00 */ u8 r;
	/* 0x01 */ u8 g;
	/* 0x02 */ u8 b;
} BeaconColor; /* 3 bytes */

typedef struct {
	f64 value;
} CameraFadeScale;

typedef union {
	f32 value;
	volatile f32 reload;
} CameraInterpolationStep;

typedef struct {
	f32 x0;
	f32 y0;
	f32 z0;
	f32 x1;
	f32 y1;
	f32 z1;
} FrontendRingOffsets;

typedef union {
	s8 signedValue;
	u8 unsignedValue;
} JointIdByte;

typedef struct {
	s8 middle;
	u8 padding;
	u8 root;
	JointIdByte child;
} SavedJointIds;

/* Pointer and raw-address views of a vehicle reference. */
typedef union {
    VehicleInstance *vehicle;
    u32 address;
} VehicleAddressValue;

/* Word water height with its low signed halfword used by particle effects. */
typedef union {
	s32 value;
	struct { s16 high; s16 low; } halves;
} WaterLevelValue;

typedef struct {
	/* 0x00 */ u8 mapX;
	/* 0x01 */ u8 mapZ;
	/* 0x02 */ u8 unk2;
	/* 0x03 */ u8 unk3;
	/* 0x04 */ u8 directions;
	/* 0x05 */ u8 pad5;
} RoadTileInfo; /* size = 0x06 */

typedef struct {
	s32 shift;
	s32 bias;
} BuildingHeightDecode;

#endif /* LIBULTRA_REFERENCE */
