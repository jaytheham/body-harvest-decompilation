# Inside intersection floating-point allocation

`incorrect ASM` in `func_8007C1DC_16429C`:

```asm
lwc1 $f0, 8(v1)
...
sub.s $f12, $f14, $f2
```

`code changed`: Cache the starting Z and direction X components, and after computing the squared distance use:

```c
if ((f64)distanceSquared != 0.0) {}
```

`correct ASM` for those calculations:

```asm
lwc1 $f16, 8(v1)
...
sub.s $f0, $f14, $f12
```

The probe emits no instructions. The function still has other floating-point register differences.
