```asm
negu    a0,t1
sll     t8,a0,0x3
sh      t8,2(a3)
sh      zero,4(a2)
lh      t6,4(a2)
```

→

```c
alpha0 = (s32)((u32)(-pointCoord) << 19) >> 16;
v3->v.ob[1] = alpha0;

v2->v.ob[2] = 0;
lowerHeight = v2->v.ob[2];
v2->v.ob[1] = (u16)alpha0;
v0->v.ob[2] = lowerHeight;
```

→

```asm
negu    a0,t1
sll     t9,a0,0x13
sra     a0,t9,0x10
sh      a0,2(a3)
sh      zero,4(a2)
lh      t3,4(a2)
sh      a0,2(a2)
```
