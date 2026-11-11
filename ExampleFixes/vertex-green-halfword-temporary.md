```asm
subu    t9,t8,t1
sb      t9,0xd(a3)
```

→

```c
u16 color0;
/* ... */
color0 = 0xFF - alpha0;
v3->v.cn[1] = color0;
```

→

```asm
subu    t6,t8,t1
sb      t6,0xd(a3)
```
