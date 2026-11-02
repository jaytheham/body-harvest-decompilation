## Incorrect ASM

`func_800AC5BC_BB56C` differed in six floating-register operands. The direct `vehicleTypes[index].unk36` expression assigned the width conversion to f4/f6 and the constant/product to f8/f10. Target uses f4/f6 for the constant/product and f8/f10 for the width conversion. The instruction sequence, frame, and remaining registers were already exact.

Enabling `func_800ABCC8_BAC78` alone also moved both generated jump tables forward 16 bytes: two trailing explicit 1000.0 placeholders were emitted before them. With the constants fixed, a zero function diff still left one wrong table entry at ROM 0x15197C: 0x800ABE00 instead of the target 0x800ABE68.

## Code changed

Keep the width access typed and direct, but pass its address through a word view:

```c
limit = speedAbs * 30.0f +
    (((VehicleType *)(s32)&vehicleTypes[D_80052B34->unk1A])->unk36 >> 1);
```

A named VehicleType pointer fixed floating allocation but introduced an extra address instruction; the inline address view preserves the target instructions. Its casts are needed for code generation. Native UGEN tracing was checked against the normal compiler using identical object hashes before investigating the temporary allocation.

Remove the dispatcher's two placeholder jump tables and the collision function's two 1000.0 placeholders together. Let the C compiler emit the tables and the trailing literals in function order. In the dispatcher's second switch, remove case 13 from the run-towards-player group. Keep case 13 in the first switch.

## Correct ASM

```asm
mtc1    at,f4
sra     t3,t2,1
mtc1    t3,f8
mul.s   f6,f12,f4
...
cvt.s.w f10,f8
```

Both functions have zero assembly diffs. The inactive case-13 entry points to the default handler. Complete native US and EU ROM checks both return OK.
