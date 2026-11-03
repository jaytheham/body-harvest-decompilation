# Movement deltas, output lifetimes, and the final line tie

In `func_800EB0C8_FA078`, reusing the input delta locals for the final world coordinates kept X globally cached in F14 and kept the Z input in F2 through the rotation calls:

```asm
sub.s $f14,$f6,$f8
div.s $f14,$f14,$f0
swc1  $f14,0x38(sp)
/* ... */
lwc1  $f2,0x34(sp)
lwc1  $f18,0x20(sp)
mul.s $f4,$f18,$f2
```

-> Give the final coordinates separate locals. Use the existing block-local trigonometric temporary for both absolute-step comparisons, rather than the Z input delta. Keep the final X local first and the final Z local last so the final Z spill occupies `sp+0x24`; the integer state-flags local takes the remaining unused word near the top.

```c
f32 finalX;
s32 stateFlags;
f32 speedScale;
f32 xDiff, zDiff;
f32 xStep, zStep;
f32 slopeDeg;
f32 finalZ;
/* ... */
if (xStep >= 0) {
    temp = xStep;
} else {
    temp = -xStep;
}
if ((f32)absDelta < temp) {
    finalX = pathX;
} else {
    finalX = arg0->unk4C + xStep;
}
/* ... */
temp = zStep >= 0.0f ? zStep : -zStep;
if ((f32)absDelta < temp) {
    finalZ = pathZ;
} else {
    finalZ = arg0->unk54 + zStep;
}
```

-> The X delta uses F0, the saved trigonometric result reloads into F2, and the Z delta reloads into F18. The final coordinates use F16/F0, including the required final Z spill/reload at `sp+0x24`:

```asm
sub.s $f0,$f6,$f8
div.s $f0,$f0,$f14
swc1  $f0,0x38(sp)
/* ... */
lwc1  $f2,0x20(sp)
lwc1  $f18,0x34(sp)
mul.s $f4,$f2,$f18
```

The remaining mismatch was an address load one instruction late:

```asm
swc1 $f2,0x3c(sp)
lui  at,0x8014
```

-> Keep the last speed condition and its constant assignment on one physical source line:

```c
if (slopeDeg < -25.0f) { speedScale = 0.6f; }
```

-> The stock `-Wa,-R` trace showed the spill assigned the condition's line and the address load assigned the body's line. Equalizing those lines resolves their scheduling tie:

```asm
lui  at,0x8014
swc1 $f2,0x3c(sp)
```

The trace-enabled object was SHA256-identical to the native object. The complete function has score 0; full US and EU ROM checksums pass. Retain integer `0` in the X-step comparison above: replacing it with `0.0f` changes the floating temporary allocation.
