Incorrect ASM in the slope section of `func_80113CEC_122C9C`: the heading
`sh ...,0x10(s0)` occurs before the height load, leaving a `nop` between
`mtc1 t1,$f16` and `cvt.d.w $f0,$f16`.

→ Code changed: calculate the signed word result before assigning the heading,
then test that result. Keep the height conversion separate from the store.

```c
factor = (f64)vehicle->unk12;
result = (s32)(((((f64)(f32)oldSine / 32768.0) * factor) +
                (f64)vehicle->unk34) -
               (((f64)(f32)shortValue / 32768.0) * factor));
vehicle->unk10 = angle;
if (result < -4) {
    vehicle->unk20 |= VEHICLE_FLAG_AIRBORNE;
}
```

→ Correct ASM: the scheduler fills the conversion latency with the heading
store, matching this target section without the extra `nop`.

```asm
lh        t1,0x12(s0)
cvt.s.w   $f8,$f6
lwc1      $f6,0x34(s0)
mtc1      t1,$f16
sh        s1,0x10(s0)
cvt.d.w   $f0,$f16
```
