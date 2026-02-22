#ifndef STRUCTS_US_H
#define STRUCTS_US_H

typedef struct {
    f32 x, y, z;
} Vec3f;

typedef struct {
    u8 pad0[9];
    u8 unk9;
} func_80070420_7F3D0_UnkArg0;

typedef struct {
    u16 button;
    s8 stick_x;
    s8 stick_y;
    s8 errno;
    s8 pad5;
} Unk80047588;

typedef struct {
    u32 pad0[11];  // 0x00-0x2B (44 bytes)
    s32 unk2C;      // 0x2C
    s32 unk30;      // 0x30
} Unk80031424;

typedef struct {
    u8 pad0[0x1A];
    u8 unk1A;
    u8 unk1B;
    u8 pad1C[0x4];
    s32 unk20;
} Unk8004D0F8;

typedef struct {
    s32 score;
    u16 secondsElapsed;
    s16 humansKilled;
} Unk80052A98;

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    u8 pad8[0x6];
    s16 unkE;
    u8 pad10[0xa];
    u8 unk1A;
    u8 unk1B;
    u16 unk1C;
    u8 pad1E[2];
    u16 unk20;
    s16 unk22;
    u8 pad24[0xc];
    f32 unk30;
    f32 unk34;
    f32 unk38;
    u16 unk3C;
} Unk80052B34; // also used at D_8004F038 ?

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    u8 pad6[0x16];
    s16 unk1C;
    u8 pad1E[0x3E];
} Unk8004DCD0; // stride 0x5C

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    u8 pad8[0x4];
    s16 unkC;
    s16 unkE;
    s16 unk10;
    s16 unk12;
    s16 unk14;
    s16 unk16;
    s16 unk18;
    u8 unk1A;
    u8 pad1B;
    s16 unk1C;
    s16 unk1E;
    s32 unk20;
    u8 unk24;
    u8 unk25;
    u8 unk26;
    u8 pad27[0x5];
    s16 unk2C;
    u8 pad2E[0x6];
    s16 unk34;
    u8 unk36;
    u8 pad37;
    s16 unk38;
    s16 unk3A;
    s8 unk3C;
    s8 unk3D;
    u8 pad3E[0xA];
    s16 unk48;
    u8 pad4A;
    u8 unk4B;
    u8 pad4C[0x4];
} AlienInstance;

// 0x00 00000000
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
    u8 pad0[0x42];
    s16 unk42;
    u8 pad44[0x24];
} AlienSpec;

typedef struct {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
    s16 unk18;
    s16 unk1A;
    s16 unk1C;
    s16 unk1E;
    u8 pad20[0x14];
    s16 unk34;
    s16 unk36;
    u8 pad38[0x4];
    s16 unk3C;
    s16 unk3E;
    u8* unk40;
} Unk80052AE8; // size 0x44

typedef struct {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    u8 pad10[0x04];
    f32 unk14;
    u8 pad18[0x04];
    s16 unk1C;
    s16 unk1E;
    u8 pad20[0x10];
    s32 unk30;
    s16 unk34;
    u8 pad36[0x02];
    Unk80052B34* unk38;
    s16 unk3C;
    s16 unk3E;
} Unk80052B2C;

typedef struct {
    u8 pad0[0xC];
    s16 unkC;
    u8 padE[4];
} Unk8014F6D0;

typedef struct {
    u8 unk0;
    u8 pad1[3];
    s32 unk4;
    void* unk8;
} Unk80042DA8;

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
} Unk80148620;

typedef struct {
// 0x00 xxxxyyyy yyyy = Model pointer
// 0x0C xxxxxxxx Collision model size
// 0x18 xxxxxxxx Vehicle name modifier
// 0x3C xxxxyyyy xxxx = Arc of Fire, yyyy = Max speed
// 0x4C xxyyzzaa	xx = Hill climb/ff goes underwater yy = Helicopter mode(0F<) zz = Water flag(00 Boat, 01 Land vehicle) aa = 
// 0x50 xxyyzzaa aa = Detail prop(06 = Tank turret 08 = Gun barrels? 0A = tank tracks 0C = Tank barrel? 0E = Left Track 0F = Right Ttrack 15 Propeller 18 = Bulldog turret 19 = Bulldog machinegun) 
// 0x5C xxyyzzzz xx = Camera Min, yy = Camera Max, zzzz = East/West position of Adam in vehilce
// 0x60 xxxxyyyy xxxx = North/South Position of Adam in vehicle
// 0x64 xxxxyyyy yyyy = Steer Point (Turning speed)
// 0x6C xxyyzzzz xxyy = Shadow X & Shadow Z
    u8 pad0[0x1C];
    s32 weapon1; // 0x1C
    u8 pad20[0x8];
    s32 weapon2; // 0x28
    u8 pad2C[0xE];
    u16 hitPoints; // 0x3A
    u8 pad3C[0x10];
    u32 unk4C;
    u8 pad50[0x10];
    u8 unk60;
    u8 unk61;
    u8 pad62[0xE];
} VehicleSpec;

typedef struct {
    s16 xCoord;
    s16 yCoord;
    s16 zCoord;
    u8 buildingType;
    u8 unk7;
    u8 isDestroyable;
    u8 unk9;
    u8 state;
    u8 rotation;
    u8 padC[3];
    u8 hitPoints;
    u8 unk10;
    u8 unk11;
    u8 door1InteriorId;
    u8 door2InteriorId;
    u8 door3InteriorId;
    u8 pad15[0x3];
} BuildingInstance;

// 0x00 xxyyyyyy yyyyyy = Model
// 0x04 xxyyyyyy yyyyyy = Damaged model
// 0x10 xxyyzzaa yy = Collision data
// 0x18 xxyyzzaa yy = Max health aa = Detail props(00 = Windmill 01 = flag 02 = Fountain effect 04 = Black oblong 05 = Statue's hand 06 = Grass oblong
typedef struct {
    u8 pad0[0x10];
    s16 unk10;
    s16 unk12;
    u8 pad14[0xC];
} BuildingSpec;

typedef struct {
    u8 pad0[0x4];
    void (*callback)(s32, s16);
    u8 unk8;
    u8 pad9[0x3];
    u8 unkC;
    u8 padD[0x23];
} Unk8015FAF0;

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    u8 padC;
    s8 unkD;
    u8 padE[0x34];
    s16 unk42;
    s16 unk44;
} Unk80128428Arg0;

typedef struct {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    u8 padC[0xC];
    s16 unk18;
    s16 unk1A;
    s16 unk1C;
    u8 pad1E[0x2];
    s32 (*unk20)();
    u8 pad24[0x4];
    u32 unk28;
    u8 unk2C;
    u8 pad2D[3];
} Unk8015FAD0;

typedef struct {
    s16 yPosition;
    u8 opacity;
    u8 weaponSlot;
} HudWeaponItem;

typedef struct {
    s16 unk0;
    s16 unk2;
    u8 pad4[0x4];
    s16 unk8;
} Unk80259490;

typedef struct {
    u32 unk0;
    u8 pad4[0x4C];
} Unk80259D98;

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    u8 pad8[4];
    s8 unkC;
    s8 unkD;
    u8 padE[2];
} Unk8014DD50; /* size 0x10 */

typedef struct {
    u8  unk0;               /* type identifier */
    s8  unk1;               /* x tile coordinate */
    s8  unk2;               /* z tile coordinate */
    u8  pad3;
    s32 unk4;               /* spawn counter */
    u8  unk8;               /* alien entity index */
    u8  pad9[3];
    void (*unkC)(void *);  /* state callback */
} Unk80222A78; /* Are these notes correct?? */

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
} InputStruct_8012B150;

typedef struct {
    char pad[0x18];
    s32 unk18;
} OutputStruct_8012B150;

typedef struct {
    s16 values[8];
} Struct_80140D00;

typedef struct {
    s16 unk0;  /* x */
    s16 unk2;  /* y */
    s16 unk4;
    s16 unk6;
    u8 unk8;   /* active flag / type */
    u8 unk9;
    u8 unkA;
    u8 unkB;
    s16 unkC;
    s16 unkE;
    u16 unk10;
} Unk80152B80; /* particle/effect entry, 18 bytes */

typedef struct {
    u8 pad0[0x12];
    u16 unk12;
    s16 unk14;
    u8 unk16;
    u8 pad17[0x5];
    u8 unk1C;
    u8 pad1D[0x9];
    u8 unk26;
    u8 unk27;
    s16 unk28; // 0x2A total
} MissionData;

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    u8 unkC;
} Unk80080530_Src; /* 0xD bytes */

typedef struct {
    u8 pad0[0xC];
    s16 unkC;
    s16 unkE;
    s16 unk10;
    s16 unk12;
    s16 unk14;
    s16 unk16;
    u8 pad18[0x14];
} Unk80080530_Dst; /* 0x2C bytes */

typedef struct {
    u8 pad0[0x10];
    s16 unk10;
    s16 unk12;
} FrontendStruct;

typedef struct {
    u8 pad[0x50];
    s32 unk50;
    u8 pad54[0x4];
} FrontendStreamSlot;

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

#endif
