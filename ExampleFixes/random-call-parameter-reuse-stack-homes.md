# Reuse a consumed parameter for the second random result

Incorrect ASM:
```asm
addiu sp,sp,-0x40
sw t8,0x3c(sp)
sh v0,0x2e(sp)
lhu a3,0x2e(sp)
```

Code changed:
```c
/* Before */
u16 random;
random = func_800038E0_44E0();
func_800DF038_EDFE8(dx + x, dy + y, dz + z,
    random % 50 + 200, func_800038E0_44E0() & 1, 0);
/* After: arg0 is the building index, already consumed */
u16 random[2];
random[0] = func_800038E0_44E0();
arg0 = func_800038E0_44E0();
func_800DF038_EDFE8(dx + x, dy + y, dz + z,
    random[0] % 50 + 200, arg0 & 1, 0);
```

Correct ASM:
```asm
addiu sp,sp,-0x38
sw t8,0x34(sp)
sh v0,0x24(sp)
lhu a3,0x24(sp)
```

Observed in `func_802D63E8_2B8818`. A separate named word for the second
random result retained the larger frame. Parameter reuse removed it, and the
two-element array moved the first random halfword from sp+0x26 to sp+0x24.
