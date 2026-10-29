# Normalize warning: remove the unused argument

Incorrect ASM in `func_80083014_16B0D4`:
```asm
jal osSyncPrintf
lw a1,0x18(sp)
```

Code changed:
```c
osSyncPrintf(D_800A4F70_18D030, arg0);
/* -> */
osSyncPrintf(D_800A4F70_18D030);
```

Correct ASM:
```asm
jal osSyncPrintf
addiu a0,a0,0x4f70
```
