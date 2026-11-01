Incorrect ASM (`func_800AA340_B92F0`): one set of word scratches used for samples, next coordinates, previous coordinates, and the debris flag selects the wrong saved registers. An explicit cosine mask also gives the last shift a fresh register (`sll t5,t4,5`) instead of updating `t4`.

Code changed: separate the three unsigned-short RNG samples, three word next-point coordinates, and three word previous-point coordinates. Initialize the previous point in X/Y/Z order. Keep the initial debris flag in a separate byte, then reuse that byte for the particle ID after its last flag read. Pass the counter product directly to `coss`, whose parameter supplies the unsigned-short conversion.

Correct ASM: the initial alien index uses `s1`, the debris flag uses `s0`, the RNG samples normalize into `s0/s1/s2`, and the previous point loads Y/X/Z into `s5/s4/s6`. The cosine angle now ends with `sll t4,t4,5` and `andi a0,t4,0xffff`, fixing the following temporary-register cycle.

Incorrect ASM: the beam-height conversion occurs after the integer-division trap checks, and its early temporary interferes with the beam-length conversion.

Code changed: cache both doubles, in length/height order, before calculating the integer angle step:

```c
beamScale = beamLength;
heightScale = beamHeight;
halfHeight = (s16)(32768 / segmentCount);
```

Correct ASM: `mtc1 s0,f18`, `mtc1 t5,f4`, `mflo s7`, then the `cvt.d.w f22,f18` and `cvt.d.w f24,f4` conversions interleave before the division checks. This matches the preheader sequence; the complete function remains NON_MATCHING while its frame and later floating temporaries are unresolved.

Incorrect ASM: spelling the 0.9 constant as a one-element array reverses the addition operands, and replacing the explicit constant with a literal moves it behind the message string.

Code changed: retain its explicit rodata position with `const ShadowGeometryConstant D_80142900_1518B0 = {0.9};` and read its `.value` member.

Correct ASM: `ldc1 f8,0x2900(at)` and `add.d f10,f6,f8`, with the following 1.2f constant and message string still at their original addresses.