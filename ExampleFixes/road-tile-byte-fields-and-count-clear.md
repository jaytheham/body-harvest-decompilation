# Road tile byte fields and count clearing

`func_800B753C_C64EC` remains `NON_MATCHING`; these are partial logic and layout corrections.

## Incorrect ASM

The road entry flag reads use signed byte loads:

```asm
lb      t8,6(v1)
lb      t6,5(v1)
```

The `SetTile` payload also includes palette bit 20 and lacks vertical mask bit 16: its constant part is `0x00104050`.

## Code changed

```c
typedef struct {
    Vtx *unk0;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 pad7;
} Unk800B753CEntry;
/* ... */
gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 4,
    (rawMode % 2) << 7, G_TX_RENDERTILE, 0,
    entry->unk6 & 3, 5, G_TX_NOLOD,
    entry->unk5 & 3, 5, G_TX_NOLOD);
```

Keep the raw texture byte in one workspace for both bucket division and texture selection. The matched producer stores texture indices `0..15` and mirror flags `0..1` in these fields. The unsigned field correction preserves the complete native ROM checksum with the consumer's assembly fallback active.

## Correct ASM

```asm
lbu     t9,5(v0)
lbu     t6,6(v0)
```

The target's fixed payload is `0x00014050`: palette zero, vertical mask five, and horizontal mask five.

## Incorrect ASM

Explicitly retained count and end pointers add cached address copies before clearing:

```asm
addiu   a2,sp,counts
move    v1,a2
move    a0,end
```

## Code changed

```c
i = 0;
while (i < 8) {
    counts[i++] = -1;
}
```

Use this array loop for both clears. Three used word vertex workspaces, with the fourth vertex expressed as `v0 + 3`, replace the four original word workspaces. Place the word iterator before the index array and the group after the raw-mode workspace.

## Correct ASM

IDO reduces the indexed clear to the target pointer-loop instruction shape:

```asm
addiu   pointer,pointer,2
sltu    at,pointer,end
bnez    at,loop
sh      minusOne,-2(pointer)
```

The frame is `0x1348`, counts begin at `0x11c`, indices at `0x12c`, and the group home is `0x1340`. Other register assignments and loop schedules still differ.
