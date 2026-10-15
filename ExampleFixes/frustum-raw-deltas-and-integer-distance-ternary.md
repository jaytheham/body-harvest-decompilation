# Preserve raw deltas in the frustum test

func_800B93AC_C835C uses two different coordinate precisions. Keep diffX and diffZ as the raw s32 subtractions. Cast each to s16 only for the initial square root and angle-helper arguments. The final absolute-value and distance calculation uses the original s32 deltas. Truncating the delta assignments loses that distinction and removes the target's parallel raw and converted spills.

Keep the original s32 radius and camera-Z parameters. Cast the radius to u16 at both comparisons and camera Z to s16 at subtraction. Narrow parameter declarations can make the callee match while adding conversions to already matched callers; the full ROM check caught this.

Use division by 2 for the half-angle, rather than a right shift. IDO emits a signed division rounding sequence even though the global is an unsigned halfword promoted to int. Preserve the sentinel comparison with -0x8000U to match the target immediate.

Reuse one angle local: add the half-angle in place, pass it directly to sins (whose prototype already narrows to u16), then subtract the full angle in place before the second sins call. An inline subtraction as the call argument produces an extra temporary and moves. A separate angle/edge local leaves a phantom stack slot.

The integer clipping distance is assigned once. Reusing it for the later square root gives it a persistent argument-register binding and moves its reload ahead of the angle calculation. Instead reuse the Z magnitude after its square has been consumed:

```c
angle = absX * absX;
angle += absZ * absZ;
absZ = angle > 0 ? (s32)sqrtf((f32)angle) : 0;
if (absZ >= 0xFA0) {
    return 0;
}
return 1;
```

The integer cast inside the ternary preserves separate integer paths; without it, float promotion changes the conversion and branch sequence. Reusing absZ produces the target move of zero into v0 after the second multiply. The inverted final guard matches the target branch-delay return value.

Declaration order matters for the stack: two unused leading s32 locals, clipping distance, angle, raw X delta, raw Z delta, X magnitude, Z magnitude. This gives the 0x50 frame, distance at 0x44, angle at 0x40, raw spills at 0x2C/0x28, converted spills at 0x24/0x20, and shared double at 0x18. Both the function diff and complete ROM verified exact.
