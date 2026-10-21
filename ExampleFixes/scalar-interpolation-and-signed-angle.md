## Incorrect ASM

In `func_80109C84_118C34`, the complete instruction sequence and stack layout matched, but two register pairs remained:

```asm
div.s $f6, $f0, $f2
lwc1  $f8, scale_constant(at)
/* ... */
lh    t9, 6(s0)
subu  t0, v0, t9
```

## Code changed

Declare both adjacent interpolation constants as scalar floats, rather than one-element arrays. Keep the offset before the scaled ratio in the expression. Both declarations are required; changing only the scale constant leaves the addition and subsequent floating-point register sequence different.

```c
extern const f32 D_80144C30_153BE0;
extern const f32 D_80144C34_153BE4;
/* ... */
factor = (f64)(f32)sins((u32)(D_80144C34_153BE4 +
    (floatScratch / speedFactor) * D_80144C30_153BE0)) / 32768.0;
```

Normalize the relative angle with a signed 16-bit cast. Remove the inner unsigned cast on the atan result:

```c
integerScratch = (s16)(func_80003824_4424(velocityX, velocityZ) - vehicle->unk6);
```

## Correct ASM

```asm
div.s $f8, $f0, $f2
lwc1  $f6, scale_constant(at)
/* ... */
lh    t6, 6(s0)
subu  t0, v0, t6
```

The full US ROM checksum verifies with the C function enabled.
