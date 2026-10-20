### Incorrect ASM

```asm
/* func_80110FB4_11FF64, aircraft height comparisons */
lh      a1,0xd4(sp)
lh      v1,0xd2(sp)
```

### Code changed

```c
union { u16 raw[1]; s16 signedValue; } topHeight;

/* Keep this read form in the aircraft branch: */
if ((s16)topHeight.raw[0] < spD8) {
    /* ... */
}

/* Before: the general branch used the same read form. */
if ((s16)topHeight.raw[0] < spD8) {
    /* ... */
}

/* After: use this equivalent form throughout the general branch. */
if ((s16)(u16)topHeight.signedValue < spD8) {
    /* ... */
}
```

### Correct ASM

```asm
/* Aircraft height comparisons now have a separate value range. */
lh      v1,0xd4(sp)
lh      a3,0xd2(sp)
```
