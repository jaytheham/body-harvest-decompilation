incorrect ASM:

```mips
mfc1  v1, $f4
# Only the used sine-width narrowing survives; the target also has a
# discarded named-short update through v0.
```

-> code changed:

```c
rawWidth = (s32)(width * sine);
if ((u32)rawWidth + (s16)rawWidth + (s16)rawWidth) {}
discardedShort = (s16)rawWidth;
/* Other projections and vertex attributes. */
vertex->v.ob[0] = x + (usedShort = (s16)(s64)rawWidth) + step * 3;
/* Reuse usedShort for the opposite vertex and the later half-width. */
halfWidth = usedShort / 2;
```

The repeated plain short conversion remains a shared child of the discarded
sum. Casting through `s64` **before** narrowing gives the used value a distinct
conversion image. Moving the `s64` cast after the `s16` cast did not retain both
images. The intermediate conversions emit no extra 64-bit instructions here.

-> correct ASM for the previously missing discarded update:

```mips
mfc1  v1, $f4
sll   v0, v1, 16
sra   t9, v0, 16
move  v0, t9
```

`func_800F63D0_105380` is still unmatched as a whole: the separately retained
used narrowing is currently later and spilled, whereas the target computes it
beside this update and caches it in `t0`.
