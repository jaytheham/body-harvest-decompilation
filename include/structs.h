#ifndef STRUCTS_H
#define STRUCTS_H

typedef struct {
    u8 pad[9];
    u8 unk9;
} UnkArg0;

typedef struct {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    u8 pad[4];
    f32 unk14;
    u8 pad2[0x24];
    s16 unk3C;
    s16 unk3E;
} UnkArg1;

typedef struct {
    u8 pad[0x34];
    s16 unk34;
    char pad1[0x02];
    s32 unk38;
} Unk80048198;

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    u8 pad[0x13];
    u8 unk1A;
    u8 pad2[0x5];
    u16 unk20;
} Unk80052B34;

typedef struct {
    char pad0[0x34];
    s16 unk34;
    char pad1[0x02];
    s32 unk38;
} Unk80052B2C;

#endif
