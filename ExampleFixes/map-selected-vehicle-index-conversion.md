# Incorrect ASM

```asm
lh      t7,0(v0)
lui     at,%hi(D_8014ED20)
swc1    $f2,%lo(D_8014ED20)(at)
sra     t6,t7,5
mtc1    t6,$f10
```

# Code changed

Keep a use of the narrowed index before the coordinate conversion in
`func_8009811C_A70CC` and pass the X expression directly to the
draw call. IDO then converts the index first and can move the
floating-point X conversion result directly into the argument register.

```c
temp_a2_2 = sp2A0;
if (temp_a2_2 < 0) {}
D_8014ED20 = temp_f2;
func_80097B74_A6B24(temp_a2_2,
    (s32) ((vehicleInstances[sp2A0].unk0 >> 5) / temp_f2),
    (s32) (-(vehicleInstances[sp2A0].unk4 >> 5) / temp_f2),
    0, 0x4000 - vehicleInstances[sp2A0].unk6);
```

# Correct ASM

```asm
lh      t6,0(v0)
sll     a0,t1,16
sra     t9,a0,16
move    a0,t9
sra     t9,t6,5
mtc1    t9,$f10
```
