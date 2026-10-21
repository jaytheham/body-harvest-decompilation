### Incorrect ASM

In `func_8010EF40_11DEF0`, separate slope and coordinate locals produced a 0x28 frame and an extra coordinate store:

```asm
addiu sp,sp,-0x28
...
swc1  $f14,0x18(sp)
swc1  $f14,0($t9)
```

### Code changed

Reuse the swap scratch for each zero-tested delta and the line intercept. Reuse the slope for the resulting coordinate:

```c
f32 slope;
f32 intercept;

/* Both lower/upper-bound swaps use intercept as their scratch. */
intercept = arg7 - arg5;
if (0.0 == intercept) {
    /* Degenerate horizontal line. */
}
slope = intercept / (arg6 - arg4);
*arg8 = arg0;
intercept = arg5 - slope * arg4;
slope = intercept + slope * arg0;
*arg9 = slope;
```

Apply the same scratch reuse to the other clipping orientation.

### Correct ASM

```asm
addiu sp,sp,-0x18
...
swc1  $f0,0($t9)
```

The instruction sequence, endpoint reloads, and frame now match; the extra coordinate stack store is gone. This is a partial fix: floating-point register allocation still differs, with a normal-build diff score of 225. The function remains `NON_MATCHING`.
