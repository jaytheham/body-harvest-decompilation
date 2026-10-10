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

## Vehicle landing particles: implicit byte conversions

`func_80107970_116920` matches all 339 instructions and passes the full ROM checksum. Pass the float results from `func_800FB014` and `func_800FB098` directly to the particle helper's s8 arguments. An explicit `(s8)(s32)` adds sign-extension instructions. Pass `sqrtf((f32)(sp62 + sp60)) / 3` directly to its u8 argument: this preserves the unsigned conversion sequence using FCSR and the 2^31 correction. Casting through s32 incorrectly replaces it with signed truncation. Integer divisors 2 and 3 preserve div.s; the float literals permit reciprocal multiplication.

Correct both terrain toggle conditions to vehicle type zero OR a negative signed `(flags << 2)`. The previous conditions inverted the flag test. Read the vehicle table directly instead of preserving its pointer across the effect call. Reuse sp62 and sp60 for the clamped angle thresholds instead of adding separate short variables. Keep the word temporary and absolute-value result in one nested block; reuse the absolute result for both explicit if/else branches. Two unused word declarations after sp5E place the float and random short spills correctly. Inline `sp5E >> 1` in both particle coordinates. Use the one-member aggregate for the existing 0.9 constant to preserve its address and FPR order.
