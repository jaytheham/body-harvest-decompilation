# Three-word initialization and loop index scheduling

incorrect ASM:
```asm
addiu t6, sp, 0x84
lw    t1, 4(t7)
sw    at, 0(t6)
lw    at, 8(t7)
lui   s3, %hi(D_80154216)
```

code changed:
```c
effectIdx = D_80154216;
sp84 = D_8013E0FC_14D0AC;
```

correct ASM:
```asm
lui   s4, %hi(D_80154216)
lh    s4, %lo(D_80154216)(s4)
addiu t6, sp, 0x84
sw    at, 0(t6)
lw    at, 8(t7)
```
