`incorrect ASM`: In the partially matched walker builder `func_800F7790_106740`, computing radius values in two late-declared floats and then copying them into earlier floats does not select the earlier homes. IDO forwards the copies, keeps the original variables as the canonical values, and swaps the target's floating registers:

```asm
cvt.s.w f16,f4
mul.s   f8,f16,f6
div.s   f2,f8,f0
/* Across the normalization and trig calls: */
swc1    f16,0xec(sp)
swc1    f2,0xf0(sp)
```

`code changed`: Compute directly in the two floats declared at the desired homes. Preserve the existing two later float reservations, rather than adding new locals or removing their eight bytes. In this function the earlier declarations are `spF8` followed by `spF4`:

```c
f32 spF8;
f32 spF4;
f32 radiusSlot;
f32 radiusSlot2;
/* Other original declarations remain in their positions. */

spF4 = (f32)D_801601F0[arg3].unk8;
spF8 = (spF4 * 3.0f) / 4;
if (D_8013FCD0_14EC80 != 0) {
    spF8 *= 4;
    spF4 *= 2;
}
```

Remove the later `spF8 = radiusScaled; spF4 = radius;` copies and use `spF8` and `spF4` throughout the geometry calculations. Merely moving the declarations of the old primary floats changes the homes but leaves the floating registers reversed; taking the addresses of the copies also changes the code incorrectly.

`correct ASM`: The original arithmetic now uses the target's registers and spill homes, with the target `0x138` frame:

```asm
cvt.s.w f2,f4
mul.s   f8,f2,f6
div.s   f16,f8,f0
/* Across the normalization and trig calls: */
swc1    f16,0xf8(sp)
swc1    f2,0xf4(sp)
/* Reload for geometry: */
lwc1    f2,0xf4(sp)
lwc1    f16,0xf8(sp)
```

This is a verified register/home correction in an unresolved function, not a full-function match. The two tail padding words were separately removed to restore the frame, and the three upper color declarations were reordered to restore their existing homes before testing this change.
