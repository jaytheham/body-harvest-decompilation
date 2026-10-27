# Chunk constructor halfword spill and velocity registers

incorrect ASM:
```asm
sh t2, 0x3a(sp)
lh t3, 0x3a(sp)
```

code changed:
```c
/* The mode parameter is u8; two halfword pads align the saved indices. */
s16 pad;
s16 idx;
s16 padLink;
s16 linkedIdx;
```

correct ASM:
```asm
sh t2, 0x38(sp)
lh t3, 0x38(sp)
```

incorrect ASM:
```asm
mfc1 t9, $f10
sb   t9, 0(v0)
```

code changed:
```c
motion->velocity[0] = (u8)((s8)((f32)(u32)arg5 * sp40.x));
```

correct ASM:
```asm
mfc1 t1, $f10
sb   t1, 0(v0)
```
