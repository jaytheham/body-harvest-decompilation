# Incorrect ASM

```asm
mfc1    t7,$f6
nop
sll     t6,t7,23
mfc1    t7,$f4
```

# Code changed

Narrow the coordinates to halfwords before multiplying by 128.
The callee takes signed halfwords, so the low 16 result bits are
the same. The multiply stays within the signed word range.

```c
func_80096BC4_A5B74((s16) (s32) var_s3->targetX * 128,
    (s16) (s32) var_s3->targetY * 128);
```

# Correct ASM

```asm
mfc1    t8,$f6
mfc1    t7,$f4
sll     t9,t8,23
sra     a0,t9,16
```
