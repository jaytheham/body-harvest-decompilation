# Short coordinate after signed division

Incorrect ASM:
```asm
sra a1,v0,8
# signed division adjustment omitted here
addiu a1,a1,100
sll t7,a1,16
sra a1,t7,16
```

Code changed:
```c
/* Before */
func_800D6ADC_E5A8C(x, func_800B84D0_C7480(x, z) / 256 + 100, z, 7);
/* After: x, y, z are s16 locals */
y = func_800B84D0_C7480(x, z) / 256;
func_800D6ADC_E5A8C(x, y + 100, z, 7);
```

Correct ASM:
```asm
sra a1,v0,8
# signed division adjustment omitted here
move t8,a1
addiu a1,t8,100
sll t9,a1,16
sra a1,t9,16
```

Observed in `func_802D6768_2B8B98`. The short assignment produces the
otherwise missing move and changes subsequent temporary register allocation.
