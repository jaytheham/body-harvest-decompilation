# Inline a shared clamp shift

Incorrect ASM:
```asm
lui a2,0x8022
addiu a2,a2,0x2a70
lw t7,0(a2)
```

Code changed:
```c
/* Before */
temp = snowThickness >> 2;
snowThickness = temp >= 11 ? temp : 10;
/* After: remove the temp declaration */
snowThickness = (snowThickness >> 2) >= 11 ? (snowThickness >> 2) : 10;
```

Correct ASM:
```asm
lui a1,0x8022
addiu a1,a1,0x2a70
lw t7,0(a1)
```

Observed in `func_802D5754_2B7B84`. IDO still computes the shared shift
once in v1, but removing its named local changes the water-level address
register from a2 to a1 at every use, without changing the frame or instructions.
