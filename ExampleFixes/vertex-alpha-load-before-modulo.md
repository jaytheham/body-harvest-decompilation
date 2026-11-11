```asm
bnez    at,a5f20
li      t3,0xff
```

→

```c
tileGroup = D_8013D510_14C4C0 << 4;
alpha0 = tileGroup % modBase;
bright = 0xFF;
alpha2 = (tileGroup + 0x200) % 0x1FF; if (alpha0 >= 0x100) {
    alpha0 = modBase - alpha0;
}
```

→

```asm
lui     v1,0x8014
lh      v1,-0x2af0(v1)
li      ra,0xff
sll     t6,v1,0x4
div     zero,t6,s4
```
