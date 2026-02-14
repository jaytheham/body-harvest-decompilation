#ifndef STRUCTS_US_H
#define STRUCTS_US_H

typedef struct {
    u8 pad0[9];
    u8 unk9;
} UnkArg0;

typedef struct {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    u8 pad10[4];
    f32 unk14;
    u8 pad18[0x24];
    s16 unk3C;
    s16 unk3E;
} UnkArg1;

typedef struct {
    u16 unk0;
    s8 unk2;
    s8 unk3;
} Unk80047588;

typedef struct {
    s32 unk0;
    s16 unk4;
    s16 unk6;
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
} Unk80052B34;

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    u8 pad6[0xA];
    s16 unk10;
    u8 pad12[0x8];
    u8 unk1A;
    u8 pad1B[0x5];
    s32 unk20;
    u8 unk24;
    u8 pad25;
    u8 unk26;
    u8 pad27[0x5];
    s16 unk2C;
    u8 pad2E[0x6];
    s16 unk34;
    u8 pad36[0x2];
    s32 unk38;
    s8 unk3C;
    s8 unk3D;
    u8 pad3E[0xD];
    u8 unk4B;
    u8 pad4C[0x4];
} Unk80048198;

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
} Unk80052B2C;

typedef struct {
    u8 pad0[0xC];
    s16 unkC;
    u8 padE[4];
} Unk8014F6D0;

typedef struct {
// 0x00 xxxxyyyy yyyy = Model pointer
// 0x0C xxxxxxxx Collision model size
// 0x18 xxxxxxxx Vehicle name modifier
// 0x1C xxxxxxxx 1st Weapon
// 0x28 xxxxxxxx 2nd Weapon
// 0x38 xxxxyyyy yyyy = Hits (Max health)
// 0x3C xxxxyyyy xxxx = Arc of Fire, yyyy = Max speed
// 0x4C xxyyzzaa	xx = Hill climb/ff goes underwater yy = Helicopter mode(0F<) zz = Water flag(00 Boat, 01 Land vehicle) aa = 
// 0x50 xxyyzzaa aa = Detail prop(06 = Tank turret 08 = Gun barrels? 0A = tank tracks 0C = Tank barrel? 0E = Left Track 0F = Right Ttrack 15 Propeller 18 = Bulldog turret 19 = Bulldog machinegun) 
// 0x5C xxyyzzzz xx = Camera Min, yy = Camera Max, zzzz = East/West position of Adam in vehilce
// 0x60 xxxxyyyy xxxx = North/South Position of Adam in vehicle
// 0x64 xxxxyyyy yyyy = Steer Point (Turning speed)
// 0x6C xxyyzzzz xxyy = Shadow X & Shadow Z
    u8 pad0[0x39];
    u16 hitPoints;
    u8 pad3c[0x24];
    u8 unk60;
    u8 unk61;
    u8 pad62[0xE];
} VehicleSpec;

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

#endif
