Incorrect ASM in `func_802DF290_3233E0`: the coordinate registers were correct, but the two adjacent upper-address loads were reversed.

```asm
lui     t2,0x802e
lui     t1,0x802e
cvt.d.w f18,f16
mul.d   f10,f6,f8
lw      t2,0x7c68(t2)
lw      t1,0x7c60(t1)
```

-> Code changed: retain the X assignment before the Z assignment on one physical source line. Keep both discarded checks on their own shared physical line, and pass the global X to the helper. The scalar check preserves the paired-load ordering; the global check preserves the X cache across the later RNG region.

```c
/* Before */
sp40 = D_802E7C68;
if ((f64)D_802E7C60 + 0.0) {}

/* After: the physical line grouping matters. */
sp28 = D_802E7C60; sp40 = D_802E7C68;
if ((f64)sp28 + 0.0) {} if ((f64)D_802E7C60 + 0.0) {}
```

-> Correct ASM: the upper-address loads reverse while the following word loads retain their target order. The native `-Wa,-R` trace showed equal scheduling costs for the upper-address loads, with source line number deciding the original order.

```asm
lui     t1,0x802e
lui     t2,0x802e
cvt.d.w f18,f16
mul.d   f10,f6,f8
lw      t2,0x7c68(t2)
lw      t1,0x7c60(t1)
```

Incorrect ASM: the shared stride/trigger constant occupied `t1`, the X coordinate occupied `t0`, and the later modulo divisor also used `t1`.

```asm
li      t1,0x50
/* Later RNG region: */
li      t1,0xf
lw      t0,0x7c60(t0)
```

-> Code changed: precede the existing trigger checks with one discarded condition containing ten distinct comparisons, combined with bitwise OR. Keeping them in one condition increases the constant's references without adding ten separate basic blocks. Distinct XOR operands prevent the comparisons from collapsing into one shared expression. Ten terms were the smallest tested matching count; eight and nine retained the wrong register order.

```c
if (((D_8014D17C ^ 1) == 0x50) |
    ((D_8014D17C ^ 2) == 0x50) |
    ((D_8014D17C ^ 3) == 0x50) |
    ((D_8014D17C ^ 4) == 0x50) |
    ((D_8014D17C ^ 5) == 0x50) |
    ((D_8014D17C ^ 6) == 0x50) |
    ((D_8014D17C ^ 7) == 0x50) |
    ((D_8014D17C ^ 8) == 0x50) |
    ((D_8014D17C ^ 9) == 0x50) |
    ((D_8014D17C ^ 10) == 0x50)) {}
```

-> Correct ASM: the discarded condition emits no instructions. With the paired coordinate loads and checks above, the constants use `t0`, X uses `t1`, and the complete function matches. Native US and EU ROM builds both report `OK`.

```asm
li      t0,0x50
/* Later RNG region: */
li      t0,0xf
lw      t1,0x7c60(t1)
```
