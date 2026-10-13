### Struct field split: s32 to two s16 fields

When assembly uses lh at offset unk_N but the struct has s32 unkN, the s32 field should be split into two s16 fields:

- s32 unk38 s16 unk38; s16 unk3A;

This allows clean ->unk3A struct access instead of _(s16_)((u8\*)ptr + 0x3A) casts.

### Java alien attack effect

func_802DB468_1F4178 matched using SignedWord outputs from func_80128504 and halves.low when passing the coordinates to the effect helper. This reproduces lh at word+2 without pointer arithmetic. Declare the distance before the alien pointer to place its spill at 0x6c, and insert an unused halfword before the cosine local to place it at 0x56. Write the attack flag before assigning unk2C to recover the target temporary registers. Use ALIEN_FLAG_UNKP for the high-bit test and ordinary signed division by two for unk4C; manually adding one before division rounded negative values twice. Full ROM checksum verified OK.
