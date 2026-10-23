## Incorrect ASM

The independent factor is computed before the phase conversion. Its literal is consequently emitted before `3001.0` in the constant pool.

```asm
li      t9,0xff
subu    t3,t9,s0
mtc1    t3,$f16
lui     at,0x8014
lwc1    $f8,0x40e0(at)
cvt.s.w $f6,$f16
lwc1    $f4,0xf4(sp)
```

## Code changed

In `func_800DC5B8_EB568`, replace the expression assigning directly to `flicker`:

```c
beamLen = (f32)(u16)((3001.0 - (f64)arg1) / 16);
flicker = (u16)(beamLen * (0.003921569f * (f32)(0xFF - alpha)));
```

with an update of the existing float before narrowing:

```c
beamLen = (f32)(u16)((3001.0 - (f64)arg1) / 16);
beamLen *= 0.003921569f * (f32)(0xFF - alpha);
flicker = (u16)beamLen;
```

## Correct ASM

The phase conversion precedes the factor calculation. The constant pool emits `3001.0`, then the float factor, in the target order.

```asm
cvt.w.d $f6,$f4
/* unsigned conversion handling */
andi    t3,t9,0xffff
mtc1    t3,$f16
/* convert the phase to float */
cvt.s.w $f6,$f4
lui     at,0x8014
lwc1    $f18,0x40f8(at)
/* conversion setup */
mul.s   $f16,$f18,$f6
nop
mul.s   $f10,$f8,$f16
```
