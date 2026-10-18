Incorrect ASM in `func_800826E4_91694` after seeding cardinal distances
in north/east/south/west order:

```asm
mflo    v1     # east squared
mflo    a3     # south squared
mflo    t0     # west squared
```

Code changed to seed north/south/west/east, then square
north/east/south/west:

```c
distSq[0][1] = alienInstances[arg0].unk4 & 0xFF;
distSq[2][1] = ~alienInstances[arg0].unk4 & 0xFF;
distSq[1][0] = alienInstances[arg0].unk0 & 0xFF;
distSq[1][2] = ~alienInstances[arg0].unk0 & 0xFF;
distSq[0][1] = distSq[0][1] * distSq[0][1];
distSq[1][2] = distSq[1][2] * distSq[1][2];
distSq[2][1] = distSq[2][1] * distSq[2][1];
distSq[1][0] = distSq[1][0] * distSq[1][0];
```

Correct ASM:

```asm
mflo    t0     # east squared
mflo    v1     # south squared
mflo    a3     # west squared
```

Incorrect ASM with two inner-loop byte coordinate locals:

```asm
sw      t4,0x4c(sp)
lw      s3,0x4c(sp)
```

Code changed from named `s8 x` and `s8 z` to passing
`(s8)(baseX + col)` and `(s8)(baseZ + row)` directly at both terrain calls.

Correct ASM, with every other instruction unchanged:

```asm
sw      t4,0x50(sp)
lw      s3,0x50(sp)
```

Incorrect ASM in the already matched caller `func_800836D0_92680` after
enabling the callee's `u8` parameter definition:

```asm
sw      s0,0x40(sp)
andi    s0,a0,0xff
sll     t6,s0,2
```

Code changed from `func_800826E4_91694(col, 0, 0)` to
`func_800826E4_91694(arg0, 0, 0)`. The loop variable `col` is `u32`;
the original `arg0` is already `u8`. Declare the callee's prototype in
`include/functions.us.h`.

Correct ASM:

```asm
andi    t6,a0,0xff
sll     t7,t6,2
addu    t7,t7,t6
```

Both function diffs are zero and the complete stock ROM build verifies OK.
