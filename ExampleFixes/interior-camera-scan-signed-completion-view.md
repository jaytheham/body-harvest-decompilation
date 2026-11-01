`func_800813B4_169474` (partial candidate, CURRENT(140)):

```asm
# Incorrect: clearing an already-zero u8 was optimized away.
bne a3,t9,nextMarker
nop
b secondScan
lb a3,0x2f(sp)
```

-> Change the completion byte to `CameraScanCompletion`, initialize and test its unsigned `value`, and clear its signed `signedValue` on the first scan's successful endpoint. Keep both views one byte wide.

->

```asm
# Correct: signed-view assignment retains the original register clear.
bne a3,t9,nextMarker
nop
move t1,zero
b secondScan
lb a3,0x2f(sp)
```
