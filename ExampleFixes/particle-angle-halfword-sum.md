# Particle angle: narrow the phase sum before shifting

Incorrect ASM (`func_800E2830_F17E0`, sine argument at ROM `0xF1A1C`):

```asm
addu a0,s1,t2
sll  t4,a0,11
andi a0,t4,0xffff
```

-> Code changed:

```c
/* Before */
sins((u16)(((i + D_80052A8C) << 11) & 0xFFFF))
/* After */
sins((u16)(i + D_80052A8C) << 11)
```

The halfword sum preserves the low bits passed to `sins`. Keeping both the inner halfword cast and the redundant outer mask instead gives `t5` for the shift, so remove the outer mask and let the parameter conversion narrow the shifted argument.

-> Correct ASM:

```asm
addu t3,s1,t2
sll  t4,t3,11
andi a0,t4,0xffff
```