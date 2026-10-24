## Incorrect ASM

`func_800CB4F8_DA4A8` used signed modulo and the opposite blink condition, read Y where the target reads Z, and indexed the texture-address table as bytes. Its palette setup emitted a no-op tag instead of a tile sync. After correcting those errors, the optimizer still combined the two blink-period reads:

```asm
lbu   v1, 0x14(s4)
beqz  v1, skip_period
sll   t5, v1, 1
move  v0, v1
```

The original byte table also generated an unscaled index and `lbu` instead of the target's word lookup.

## Code changed

Use `BubbleParticleState` for the XYZ coordinates, color bytes, height, frame, and kind. Read Z for culling, terrain-height queries, and the rendered Z coordinate; retain Y for the bubble's height calculation. Make the timer operand unsigned and render the nonzero-period case when the remainder is at least the period:

```c
if ((((volatile Unk80154318Entry *)&D_80154318[unitId])->unk14 == 0) ||
    (((u32)D_80052A8C % (entry->unk14 * 2)) >= entry->unk14)) {
    /* Render the bubble. */
}
```

Only the first read is volatile, preserving the target's separate zero check and subsequent period read. Declare `D_8013DC80_14CC30` as a 28-element `u32` texture-address table, retaining all 112 original data bytes. Replace `gDPNoOpTag(..., 0xE8000000)` with `gDPTileSync(...)`. Read the next link through the original array index to remove the redundant saved header copy and its stack spill. Inline `0.6` and remove its obsolete literal-pool placeholder.

## Correct ASM

All 521 instruction words match, with the 0x60-byte frame, unsigned modulo, separate period loads, scaled word table lookup, and tile-sync command:

```asm
lbu   t4, 0x14(s4)
beqz  t4, skip_period
lbu   v0, 0x14(s4)
sll   t6, v0, 1
divu  zero, t5, t6

sll   t8, t5, 2
addu  t6, t6, t8
lw    t6, -0x2380(t6)
```
