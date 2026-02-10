#ifndef STRUCTS_H
#define STRUCTS_H

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
    u8 pad[0x34];
    s16 unk34;
    u8 pad36[0x02];
    s32 unk38;
} Unk80048198;

typedef struct {
    u8 pad0[0x30];
    s32 unk30;
    s16 unk34;
    u8 pad36[0x02];
    Unk80052B34* unk38;
} Unk80052B2C;

typedef struct {
//     0x00 xxxxyyyy yyyy = Model pointer
// 0x04
// 0x08
// 0x0C xxxxxxxx Collision model size
// 0x10
// 0x14
// 0x18 xxxxxxxx Vehicle name modifier
// 0x1C xxxxxxxx 1st Weapon
// 0x20
// 0x24
// 0x28 xxxxxxxx 2nd Weapon
// 0x2C
// 0x30
// 0x34
// 0x38 xxxxyyyy yyyy = Hits (Max health)
// 0x3C xxxxyyyy xxxx = Arc of Fire, yyyy = Max speed
// 0x40
// 0x44
// 0x48
// 0x4C xxyyzzaa	xx = Hill climb/ff goes underwater yy = Helicopter mode(0F<) zz = Water flag(00 Boat, 01 Land vehicle) aa = 
// 0x50 xxyyzzaa aa = Detail prop(06 = Tank turret 08 = Gun barrels? 0A = tank tracks 0C = Tank barrel? 0E = Left Track 0F = Right Ttrack 15 Propeller 18 = Bulldog turret 19 = Bulldog machinegun) 
// 0x54
// 0x58
// 0x5C xxyyzzzz xx = Camera Min, yy = Camera Max, zzzz = East/West position of Adam in vehilce
// 0x60 xxxxyyyy xxxx = North/South Position of Adam in vehicle
// 0x64 xxxxyyyy yyyy = Steer Point (Turning speed)
// 0x68
// 0x6C xxyyzzzz xxyy = Shadow X & Shadow Z
    u8 pad0[0x39];
    u16 hitPoints;
    u8 pad3c[0x24];
    u8 unk60;
    u8 unk61;
    u8 pad62[0xE];
} VehicleSpec;

#endif
