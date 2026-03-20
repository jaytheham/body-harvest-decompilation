### Struct field split: s32 to two s16 fields

When assembly uses lh at offset unk_N but the struct has s32 unkN, the s32 field should be split into two s16 fields:

- s32 unk38 s16 unk38; s16 unk3A;

This allows clean ->unk3A struct access instead of _(s16_)((u8\*)ptr + 0x3A) casts.
