### Incorrect ASM

```asm
/* func_80110FB4_11FF64, first general double-precision height check */
ldc1    $f4,0x4d50(at)
cvt.d.w $f16,$f10
cvt.d.w $f8,$f18
mul.d   $f6,$f16,$f4
```

### Code changed

```c
/* Before: the first coefficient was read directly in the expression. */
if ((arg0->unk20 & VEHICLE_FLAG_AIRBORNE) &&
    (((f64)spD6 - (f64)vehicleType->unk36 * D_80144D50_153D00.value) <
     (f64)D_8015919C) && (spD6 >= spD2)) {
    /* Existing collision handling. */
}

/* After: reuse the existing f64 var_f0 used for the later coefficients. */
if (arg0->unk20 & VEHICLE_FLAG_AIRBORNE) {
    var_f0 = D_80144D50_153D00.value;
    if ((((f64)spD6 - (f64)vehicleType->unk36 * var_f0) <
         (f64)D_8015919C) && (spD6 >= spD2)) {
        /* Existing collision handling. */
    }
}
```

### Correct ASM

```asm
/* The coefficient uses $f0; subsequent floating temporaries also match. */
ldc1    $f0,0x4d50(at)
cvt.d.w $f6,$f4
cvt.d.w $f16,$f10
mul.d   $f18,$f6,$f0
```
