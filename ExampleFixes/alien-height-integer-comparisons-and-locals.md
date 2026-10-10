# Alien height comparisons and live local slots

Matched `func_800A5554_B4504` with IDO 5.3, verified by the full ROM checksum.

Keep the requested height in the `s32` argument. Use a conditional assignment:

```c
arg1 = airborne != 0 ? D_80052B34->unk2 + 0x12C : arg1 + terrainHeight;
```

This produces the target addition in the condition branch delay slot and an unconditional branch after the airborne override. Do not narrow the requested height or the `unk2 +/- 7` comparison thresholds to `s16`; the assembly compares promoted integer values and narrows only when storing the result.

Use direct `alienInstances[arg0]` and `alienTypes[typeIndex]` field accesses. A named instance pointer or type pointer changed the local slots and instruction scheduling. Compute the speed difference in a named `s32 delta` before the floating-point expression to obtain the target conversion order and registers.

Declare `s32 delta`, `s32 amount`, `s32 terrainHeight`, `u8 typeIndex`, and `s32 airborne`, in that order. Keeping separate amount and terrain-height locals gives the byte spill at `sp+0x23`, the airborne word at `sp+0x1C`, and the compiler-cached instance pointer at `sp+0x18` in a `0x30`-byte frame. Reusing amount for the terrain height preserved the instructions but moved all three spills up four bytes.
