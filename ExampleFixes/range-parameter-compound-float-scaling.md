Incorrect ASM in `func_80082394_91344`, with the rest of the function exact:

```asm
mtc1    s0,$f6
cvt.s.w $f8,$f6
lwc1    $f4,0x38(t6)
mul.s   $f10,$f4,$f8
```

Code changed:

```c
arg2 = (s32)((f32)arg2 * levelScale[currentLevel - 1]);
```

to:

```c
arg2 *= levelScale[currentLevel - 1];
```

Correct ASM:

```asm
mtc1    s0,$f4
cvt.s.w $f6,$f4
lwc1    $f8,0x38(t6)
mul.s   $f10,$f6,$f8
```

The compound assignment preserves the integer range parameter's input
affinity while performing the same single-precision scaling and integer
conversion. It removes unnecessary casts and takes the function from
score 25 to zero. The complete stock ROM build verifies OK.
