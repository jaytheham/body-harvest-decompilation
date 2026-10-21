incorrect ASM (`func_80110FB4_11FF64`, ROM 0x1208A8):

```asm
li      s8,-1
addiu   s7,sp,0xd8
addiu   s6,sp,0xda
/* ... */
mfc1    s5,$f8
```

-> code changed:

```c
/* Before: the building-height cache and later X coordinate share bestX. */
bestX = 0;
/* Inside the guarded building-volume loop, before its body and at its latch: */
bestX = (s16)topHeight.raw[0];
/* The overlap comparisons read bestX. */
/* After the building traversal: */
if (bestX) {}

/* After: reuse the existing traversal counter for the building-height cache. */
/* gridX already has a defined value from the earlier terrain traversal. */
/* Inside the guarded building-volume loop, before its body and at its latch: */
gridX = (s16)topHeight.raw[0];
/* Change those overlap comparisons to read gridX. */
/* After the building traversal: */
if (gridX) {}

/* Keep bestX for the later X-coordinate calculations. */
```

This separates the later X coordinate from the building-height cache without
adding a local or changing the frame. The normal IDO build gives the exact
query-pointer setup and X register below. The building loop still needs a
separate register-allocation correction; this example verifies the later setup.

-> correct ASM:

```asm
li      s7,-1
addiu   s6,sp,0xd8
addiu   s5,sp,0xda
/* ... */
mfc1    s8,$f8
```
