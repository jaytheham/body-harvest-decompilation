```asm
# func_800E64B4_F5464: incorrect reload for each trig result
lui      at, %hi(D_801441E8_153198)
ldc1     $f4, %lo(D_801441E8_153198)(at)
cvt.s.w  $f8, $f6
cvt.d.s  $f10, $f8
div.d    $f16, $f10, $f20
mul.d    $f18, $f4, $f16
```
->
```diff
-const f64 D_801441E8_153198[1] = {6000.0};
-motion->velocityX = (s32)(((f32)coss((u16)slot->unk1E4) / 32768.0) * D_801441E8_153198[0]);
-motion->velocityZ = (s32)(((f32)sins((u16)slot->unk1E4) / 32768.0) * D_801441E8_153198[0]);
+motion->velocityX = (s32)(((f32)coss((u16)slot->unk1E4) / 32768.0) * 6000.0);
+motion->velocityZ = (s32)(((f32)sins((u16)slot->unk1E4) / 32768.0) * 6000.0);
```
->
```asm
# Correct: one scale load before the loop, retained across calls
ldc1     $f20, %lo(D_801441E8_153198)(at)
# Each trig result uses the saved scale and the divisor in f22
mtc1     v0, $f4
nop
cvt.s.w  $f6, $f4
cvt.d.s  $f8, $f6
div.d    $f10, $f8, $f22
mul.d    $f16, $f10, $f20
```
