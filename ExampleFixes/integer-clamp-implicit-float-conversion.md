# Integer clamp comparisons and register allocation

Matched example: `func_801095BC_11856C` in `src.us/overlay_gameplay/outside/101840.c`.

A correction is truncated from a double expression to `s32`, then clamped against float limits. Explicitly assigning the correction to an existing float temporary before each comparison produced the right instructions, floating-point registers, and stack slots, but kept the integer correction in `v1` instead of the target `v0`.

Compare the integer directly with each float limit instead:

```c
value = (s32)((f64)signedForce * (scaledPitch * scaledPitch));
signedForce = -maxCorrection;
if (maxCorrection < value) {
    value = (s32)maxCorrection;
}
if (value < signedForce) {
    value = (s32)signedForce;
}
```

The usual arithmetic conversions generate the same integer-to-float conversions as the explicit temporary assignments. IDO 5.3 changes the allocation of the integer value, producing the exact target assembly. Removing those redundant float assignments resolved the last eight register differences without changing the frame or instruction order.
