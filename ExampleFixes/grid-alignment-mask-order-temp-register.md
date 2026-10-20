### Incorrect ASM

```asm
ori     s4,v0,0x40
addiu   t7,a0,0x80
ori     t5,a1,0x40
slt     at,s4,t7
move    a1,t5
```

### Code changed

```c
/* Before, in func_80110FB4_11FF64: */
minZ = (minZ & ~0x7F) | 0x40;
minX = (minX & ~0x7F) | 0x40;
gridX = minX;

/* After; retain the statement grouping: */
minZ &= ~0x7F; minX &= ~0x7F;
minX |= 0x40; minZ |= 0x40;
gridX = minX;
```

### Correct ASM

```asm
ori     s4,v0,0x40
addiu   t7,a0,0x80
ori     t6,a1,0x40
slt     at,s4,t7
move    a1,t6
```
