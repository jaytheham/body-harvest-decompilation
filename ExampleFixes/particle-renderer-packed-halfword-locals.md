`incorrect ASM`

In `func_800E6A38_F59E8`, the slot pointer uses a spill home four bytes below the target. The frame is already the correct `0x128` bytes.

```asm
/* F5D64 */ sw v0,0x50(sp)
/* F60A8 */ lw v0,0x50(sp)
```

-> `code changed`

Move the existing `radius` declaration immediately after `angle`, before the first pointer. Move the existing `xOff` declaration immediately after `baseZ`, before the word-sized `remain`. Each halfword fills an existing two-byte alignment gap. Keep all calculations and assignments unchanged.

```c
s32 slotCount = 4;
s16 angle;
s16 radius;
Unk800E614CFxSlot *slot;
Unk800E614CFxEntry *entry;
s16 baseX;
s16 baseY;
s16 baseZ;
s16 xOff;
s32 remain;
s16 zOff;
s16 yTop;
```

-> `correct ASM`

```asm
/* F5D64 */ sw v0,0x54(sp)
/* F60A8 */ lw v0,0x54(sp)
```

The frame, all other stack accesses, and instruction order remain exact. Six texture-coordinate register references still prevent a full function match.
