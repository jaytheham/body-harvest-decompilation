# Beacon loop control flow and coordinate narrowing

`func_800A7C6C_B6C1C` matched with direct beacon array access, a byte vehicle-loop counter, and signed word distances/radius.

Use an early `continue` for the rectangular distance rejection:

```c
if (absX > range || absZ > range) {
    continue;
}
if ((s32)sqrtf((f32)(u32)(absX * absX + absZ * absZ)) < range) {
    /* Apply the collision response. */
}
```

The equivalent nested positive bounds test caused IDO to preserve the vehicle-count address in FP and rematerialize the vehicle-array address. The early continue instead preserved the vehicle-array base in FP, cached the count in A1 across paths without calls, and restored the target loop instructions and register allocation.

Keep shifted beacon coordinates in `s32` locals (`x = beacon.x << 8`) and let the terrain/effect helper parameters narrow them to `s16`. Explicitly narrowing the assignment produced the same instruction count but changed temporary registers and moved a timer store. Raw word locals also preserve the full shifted coordinates for the vehicle-destruction helper. This distinction resolved the last differences.

Repeated direct `D_8003154C[currentLevel - 1][i]` access lets IDO retain a row base and generate the target negative member offsets. A cached entry pointer introduced extra pointer adjustments and merged address recalculations across branches.

Remove both the placeholder jump table and the explicit `0.3f` rodata declaration. The literal effect scale generates its constant after the compiler's jump table; retaining the explicit declaration placed it before the table and shifted the table address by four bytes.

Use `vehicleTypes[vehicle->unk1A].unkC`, not a byte-offset lookup: the type stride is `0x70`. The squared-distance sum must convert as unsigned, while the square-root result compares as a signed word.
