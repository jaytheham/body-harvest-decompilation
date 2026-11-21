`incorrect ASM` In `func_80103308_1122B8`, the walking-pointer loop schedules the next coordinate load after the preceding midpoint spill. An indexed loop fixes the spill order, but it initially emits `lui t0` and reads the carried coordinates from `t1`.

```asm
swc1 f4, 0x44(sp)
lwc1 f10, 4(t0)
```

-> `code changed` Use an index over `D_801593F0` to compute the loop pointer and test the loop bound. Reuse `endpointZ` for the address of `D_801593F0[10]` before storing the endpoint coordinates. Read the three carried coordinates through that address, qualifying just the Z read as volatile. Assign the native spring literal and test `spring < damping` on the same line to order its load before those reads. The reused integer home already advances the temporary-register sequence, so the discarded integer update after the loop is unnecessary.

-> `correct ASM` IDO emits the split cursor initialization, loads the spring coefficient ahead of the carried coordinates, and schedules each midpoint load before the previous spill. Both full ROM checksums pass with C enabled.

```asm
lui   t2, %hi(D_801594E0)
addiu t0, t2, %lo(D_801594E0)
# ...
ldc1  f0, 0x4aa8(at)
lwc1  f30, 0x20(t0)
lwc1  f28, 0x1c(t0)
lwc1  f26, 0x18(t0)
# ...
lwc1  f10, 4(t0)
cvt.d.s f8, f28
cvt.s.d f4, f6
sub.s f6, f28, f10
swc1  f4, 0x44(sp)
```
