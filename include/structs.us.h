#ifndef STRUCTS_US_H
#define STRUCTS_US_H

typedef struct {
	/* 0x00 */ u64 unk0;
} BitFlags64; /* size = 0x08 */

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
	/* 0x00 */ s16 unk0;
	/* 0x02 */ u8 pad02[0x16];
} Unk80050ADA; /* size = 0x18 */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ u8 pad02[0x66];
} Unk802566D8; /* size = 0x68 */

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ u8 pad04[0x64];
} Unk8025669C; /* size = 0x68 */

typedef struct {
	/* 0x00 */ u16 button;
	/* 0x02 */ s8 stick_x;
	/* 0x03 */ s8 stick_y;
	/* 0x04 */ s8 errno;
	/* 0x05 */ s8 pad5;
} Unk80047588; /* size = 0x06 */

typedef struct {
    u8 pad0[0x6];
    u8 unk6;
    u8 pad7[0x21];
} Unk_8003CEC0;

typedef struct {
    u16 unk0;
    s16 unk2;
} Unk_8013D91C;

typedef struct {
	/* 0x00 */ u32 pad0[7];   /* 0x00-0x1B */
	/* 0x1C */ s32 unk1C;
	/* 0x20 */ u32 pad20[3];  /* 0x20-0x2B */
	/* 0x2C */ s32 unk2C;
	/* 0x30 */ s32 unk30;
} Unk80031424; /* size = 0x34 */

typedef struct Unk8006AA80Node {
	/* 0x00 */ u16 unk0;
	/* 0x02 */ u8 pad2[0x4];
	/* 0x06 */ s16 unk6;
	/* 0x08 */ u8 pad8[0x24];
	/* 0x2C */ s32 unk2C;
	/* 0x30 */ u8 pad30[0x4];
	/* 0x34 */ struct Unk8006AA80Node *unk34;
} Unk8006AA80Node;

typedef struct Unk8006AA84Node {
	/* 0x00 */ u16 unk0;
	/* 0x02 */ u8 pad2[0x0E];
	/* 0x10 */ s16 unk10;
	/* 0x12 */ u8 pad12[0x1E];
	/* 0x30 */ struct Unk8006AA84Node *unk30;
} Unk8006AA84Node;

typedef struct {
	/* 0x00 */ u8 pad0[0x1A];
	/* 0x1A */ u8 unk1A;
	/* 0x1B */ u8 unk1B;
	/* 0x1C */ u8 pad1C[0x4];
	/* 0x20 */ s32 unk20;
} Unk8004D0F8; /* size = 0x24 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 pad1[5];
	/* 0x06 */ u8 unk6;
	/* 0x07 */ u8 pad7[5];
	/* 0x0C */ u8 unkC;
	/* 0x0D */ u8 padD[5];
	/* 0x12 */ u8 unk12;
	/* 0x13 */ u8 pad13[4];
	/* 0x17 */ u8 unk17;
} Unk8004D1C8; /* size = 0x18 */

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
	/* 0x4C */ f32 unk4C;
	/* 0x50 */ f32 unk50;
	/* 0x54 */ f32 unk54;
	/* 0x58 */ f32 unk58;
} VehicleInstance; /* size = 0x5C */

typedef struct {
	/* 0x00 */ f32 unk0;
	/* 0x04 */ f32 unk4;
	/* 0x08 */ f32 unk8;
	/* 0x0C */ u8 padC[0x2];
	/* 0x0E */ u8 unkE;
	/* 0x0F */ u8 unkF;
	/* 0x10 */ f32 unk10;
} Unk8007CAA8_6A40; /* size = 0x14 */

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
	ALIEN_FLAG_UNKF = 0x4000,
	ALIEN_FLAG_UNKG = 0x8000,
	ALIEN_FLAG_INVINCIBLE = 0x400000,
	ALIEN_FLAG_PLAYER = 0x8000000,
	ALIEN_FLAG_FALL = 0x40000000
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
	/* 0x10 */ s16 unk10; // Y Velocity
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
	/* 0x38 */ s16 unk38; // target building/vehicle instance id
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
	/* 0x4C */ u8 pad4C[0x2];
	/* 0x4E */ s8 unk4E;
	/* 0x4F */ u8 pad4F;
} AlienInstance; /* size = 0x50 */

// 0x00 00000000 -- are these all offset a word too much? is body modifier at 0x0 ?
// 0x04 xxxxxxxx Body modifier
// 0x08 Changes shadow
// 0x0C Collision model size? Maybe only be second h/word
// 0x10 xxxxyyyy Variables xxxx (Drone King Shield size)(Spyder warp beam size) yyyy (Spyder Health goes up to this value from normal then begins to decrease)
// 0x14 More Variables?
// 0x18 xxxxyyyy xxxx Points given on death
// 0x1C Pointer to alien's name
// 0x20 First weapon
// 0x24
// 0x28
// 0x2C Second weapon
// 0x30
// 0x34
// 0x38 xxxxyyyy xxxx Width of main shadow yyyy Depth of main shadow
// 0x3C xxxxyyyy yyyy Health meter size
// 0x40
// 0x44 xxxxyyyy xxxx Max speed? yyyy Turning speed
// 0x48 Pointer to head model/arrangment
// 0x4C ?Pointer to ASM?
// 0x50 ?Pointer to ASM?
// 0x54 xxxxyyyy xxxx Legs modifier yyyy Damage done by rush attack(Spyder)
// 0x58 xxxxyyyy xxxx Material type etc(Flesh, metal) Can use to give other enemies shields(000C)
// 0x5C xxxxyyyy xxxx Height of body off the ground
// 0x60 Pointer to Death animation ASM?
// 0x64 xxxxyyyy xxxx Drops modifier
// 0x68
typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ u8 pad4[0x4];
	/* 0x08 */ s32 unk8;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ u8 padE[0x8];
	/* 0x16 */ u8 unk16;
	/* 0x17 */ u8 pad17;
	/* 0x18 */ s32 unk18; // Ptr to name
	/* 0x1C */ u8 pad1C[0x4];
	/* 0x20 */ s16 unk20;
	/* 0x22 */ s16 unk22;
	/* 0x24 */ s16 unk24;
	/* 0x26 */ s16 unk26;
	/* 0x28 */ u8 pad28[0x4];
	/* 0x2C */ s16 unk2C;
	/* 0x2E */ s16 unk2E;
	/* 0x30 */ s16 unk30;
	/* 0x32 */ u16 unk32;
	/* 0x34 */ u8 pad34[4];
	/* 0x38 */ s16 unk38;
	/* 0x3A */ u8 pad3A[0x4];
	/* 0x3E */ s16 unk3E;
	/* 0x40 */ s16 unk40;
	/* 0x42 */ s16 unk42;
	/* 0x44 */ void *unk44;
	/* 0x48 */ u8 pad48[0x8];
	/* 0x50 */ s8 unk50;
	/* 0x51 */ u8 unk51;
	/* 0x52 */ u8 pad52[0x2];
	/* 0x54 */ s32 unk54;
	/* 0x58 */ s16 unk58;
	/* 0x5A */ u8 pad5A[0xE];
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
	/* 0x0C */ u8 padC[3]; // 0xE = If != 0 wave respawns when destroyed
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

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 pad1[3];
	/* 0x04 */ s32 unk4;
	/* 0x08 */ void* unk8;
} Unk80042DA8; /* size = 0x0C */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
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
	/* 0x00 */ u8 pad0[0xC];
	/* 0x0C */ s16 unkC;
	/* 0x0E */ u8 pad0E[0x8];
	/* 0x16 */ u8 unk16;
	/* 0x17 */ u8 pad17;
	/* 0x18 */ s32 unk18; // string table index for vehicle name
	/* 0x1C */ s32 weapon1;
	/* 0x20 */ u8 pad20[0x8];
	/* 0x28 */ s32 weapon2;
	/* 0x2C */ u8 pad2C[0x8];
	/* 0x34 */ s16 unk34;
	/* 0x36 */ s16 unk36;
	/* 0x38 */ s16 unk38;
	/* 0x3A */ u16 hitPoints;
	/* 0x3C */ u8 pad3C[0x10];
	/* 0x4C */ u32 unk4C;
	/* 0x50 */ u8 pad50[5];
	/* 0x55 */ u8 unk55;
	/* 0x56 */ u8 pad56[2];
	/* 0x58 */ u8 unk58;
	/* 0x59 */ u8 pad59[0x3];
	/* 0x5C */ u8 unk5C;
	/* 0x5D */ u8 unk5D;
	/* 0x5E */ u8 unk5E;
	/* 0x5F */ u8 unk5F;
	/* 0x60 */ u8 unk60;
	/* 0x61 */ u8 unk61; // Max fuel (/ 0x100) ?
	/* 0x62 */ u8 pad62[0xE];
} VehicleSpec; /* size = 0x70 */

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
	/* 0x0C */ u8 padC[3];
	/* 0x0F */ u8 hitPoints;
	/* 0x10 */ u8 unk10;
	/* 0x11 */ s8 unk11;
	/* 0x12 */ u8 door1InteriorId;
	/* 0x13 */ u8 door2InteriorId;
	/* 0x14 */ u8 door3InteriorId;
	/* 0x15 */ u8 pad15[0x3];
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
	/* 0x16 */ u8 pad16[0xA];
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
	/* 0x0C */ u8 padC[0x4];
	/* 0x10 */ f32 unk10;
	/* 0x14 */ f32 unk14;
	/* 0x18 */ f32 unk18;
	/* 0x1C */ u8 pad1C[0x4];
	/* 0x20 */ s32 unk20;
	/* 0x24 */ s32 unk24;
	/* 0x28 */ s16 unk28;
	/* 0x2A */ u8 pad2A[0x6];
} Unk8015F760; /* size = 0x30 */

typedef struct {
	/* 0x00 */ u8 pad00[0x1C];
	/* 0x1C */ s32 unk1C;
	/* 0x20 */ void *unk20;
} Unk8015F790; /* size = 0x24 */

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ u8 padC[0xC];
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
	/* 0x04 */ u8 pad4[0x4];
	/* 0x08 */ s16 unk8;
} Unk80259490; /* size = 0x0A */

typedef struct {
	/* 0x00 */ s8 unk0;
	/* 0x01 */ u8 pad1;
	/* 0x02 */ u8 unk2;
	/* 0x03 */ u8 pad3;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ u8 pad8[0x18];
	/* 0x20 */ s16 unk20;
	/* 0x22 */ s16 unk22;
	/* 0x24 */ s16 unk24;
	/* 0x26 */ u8 pad26[0x1A];
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
	/* 0x00 */ u8 pad0[0x12];
	/* 0x12 */ u16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ u8 unk16;
	/* 0x17 */ u8 pad17[0x5];
	/* 0x1C */ u8 unk1C;
	/* 0x1D */ u8 pad1D[0x9];
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
	/* 0x0C */ u8 unkC;
} Unk80080530_Src; /* size = 0x0D */

typedef struct {
	/* 0x00 */ u8 pad0[0xC];
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ s16 unk14;
	/* 0x16 */ s16 unk16;
	/* 0x18 */ u8 pad18[0x14];
} Unk80080530_Dst; /* size = 0x2C */

typedef struct {
	/* 0x00 */ u8 pad0[0x10];
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
} FrontendStruct; /* size = 0x14 */

typedef struct {
	/* 0x00 */ u8 pad[0x50];
	/* 0x50 */ s32 unk50;
	/* 0x54 */ u8 pad54[0x4];
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
	u16 unk0[256];
} Unk80052A94;

typedef struct {
	/* 0x00 */ u8 pad0[0x6];
	/* 0x06 */ u8 unk6;
	/* 0x07 */ u8 unk7;
	/* 0x08 */ u8 unk8;
	/* 0x09 */ u8 pad9;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ u8 padC;
	/* 0x0D */ u8 unkD;
	/* 0x0E */ u8 padE;
	/* 0x0F */ u8 unkF;
	/* 0x10 */ s8 unk10;
	/* 0x11 */ s8 unk11;
	/* 0x12 */ s8 unk12;
	/* 0x13 */ u8 pad13;
} Unk800E1980; /* size = 0x14 */

typedef struct {
	/* 0x00 */ u8 pad0[0x2];
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 pad6[0x2];
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
	/* 0x000 */ u8 pad0[0xE50];
	/* 0xE50 */ s32 unkE50;
} Unk8007F878_404; /* size = 0xE54 */

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
	/* 0x02 */ u16 unk2;
	/* 0x04 */ u8 pad4[0x2];
	/* 0x06 */ u16 unk6;
	/* 0x08 */ u8 unk8;
	/* 0x09 */ u8 pad9[0x5];
	/* 0x0E */ s16 unkE;
	/* 0x10 */ u8 pad10[0x1E];
	/* 0x2E */ u8 unk2E;
	/* 0x2F */ u8 pad2F[0x1];
} Unk800E66A8; /* stride 0x30 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 pad1[0x3];
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ u8 padC[0x4];
	/* 0x10 */ f32 unk10;
	/* 0x14 */ f32 unk14;
	/* 0x18 */ u8 pad18[0x10];
	/* 0x28 */ s16 unk28;
	/* 0x2A */ s16 unk2A;
	/* 0x2C */ u8 pad2C[0xC];
} Unk9C804; /* stride 0x38 */

typedef struct {
	/* 0x00 */ u8 pad0[0x44];
	/* 0x44 */ s32 unk44;
} Unk800E65BC; /* stride 0x48 */

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
	/* 0x00 */ u8 pad0[2];
	/* 0x02 */ s16 unk2;
	/* 0x04 */ u8 unk4;
	/* 0x05 */ u8 unk5;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ u8 pad8[4];
} UnkFB6F8Entry; /* stride 0xC */

typedef struct {
	 /* 0x00 */ u8 unk0;
	 /* 0x01 */ u8 unk1;
	 /* 0x02 */ u8 unk2;
} Unk80154082; /* size = 0x3 */

typedef struct {
	/* 0x00 */ u8 unk0;
	/* 0x01 */ u8 unk1;
	/* 0x02 */ s16 unk2;
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 pad6[2];
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
	/* 0x02 */ u8 pad2[2];
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
	/* 0x00 */ u8 pad0[0x12];
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
	/* 0x06 */ u8 pad6[6];
	/* 0x0C */ s16 unkC;
	/* 0x0E */ u8 padE[2];
	/* 0x10 */ s16 unk10;
} BeaconDisplayEntry; /* stride = 0x12 */

typedef struct {
	/* 0x00 */ u8 pad0[0x8];
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s32 unkC;
} Unk8003E290Entry; /* 0x10 bytes */

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
} Unk8014FD30Type; /* 0x18 bytes */

typedef struct {
	/* 0x00 */ s16 unk0;
	/* 0x02 */ u8 pad2[2];
	/* 0x04 */ s32 unk4;
} Unk80047578; /* size = 0x08 */


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
	/* 0x02 */ u8 pad2[2];
	/* 0x04 */ s16 unk4;
	/* 0x06 */ u8 pad6[4];
	/* 0x0A */ u8 unkA;
	/* 0x0B */ u8 padB;
} Unk802E4ED8_entry; /* size = 0x0C */

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ u16 unk4;
} Unk802E71B8; /* size = 0x6 */

/* Gate entry in shield wall. Array: D_8003E0FC[5][8], access [currentLevel-1][idx] */
typedef struct {
	/* 0x00 */ s16 unk0; /* world X position */
	/* 0x02 */ s16 unk2; /* world Z position */
	/* 0x04 */ s16 unk4; /* world Y position or other coordinate */
	/* 0x06 */ s8  unk6; /* gate open/close animation state (0=closed, 0x50=fully open) */
	/* 0x07 */ u8  unk7;
	/* 0x08 */ u8  unk8;
	/* 0x09 */ u8  unk9; /* gate type (1 or 2) */
} GateEntry; /* 0xA bytes */

typedef struct {
	/* 0x00 */ s32 unk0;
	/* 0x04 */ s32 unk4;
	/* 0x08 */ s32 unk8;
	/* 0x0C */ u8 pad0C[0xC];
	/* 0x18 */ u32 type;
} DebugPropEntry; /* stride = 0x1C */

typedef struct {
	/* 0x00 */ u8 pad0[0xC];
	/* 0x0C */ s16 unkC;
	/* 0x0E */ u8 padE[2];
	/* 0x10 */ f32 unk10;
	/* 0x14 */ u8 pad14[0xC];
} Unk8013E45C; /* size = 0x20 */

typedef struct {
	s32 unk0;
	char unk4[0x6C];
} UnkFunc8013B5E4;

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
	/* 0x14 */ u16 unk14;
} Unk801470C0Entry; /* size = 0x16 */

#endif
