```asm
sb      t2,0xe(a3)
sb      t2,0xe(a2)
sb      t2,0xe(t0)
li      t3,0xff
b       a5f68
sb      t2,0xe(a1)
```

→

```c
bright = 0xFF;
if (alpha2 >= 0x100) {
    alpha2 = modBase - alpha2;
}
v3->v.cn[2] = alpha2;
v2->v.cn[2] = alpha2;
v1->v.cn[2] = alpha2;
v0->v.cn[2] = alpha2;
```

→

```asm
sb      t2,0xe(a3)
sb      t2,0xe(a2)
sb      t2,0xe(t0)
b       a5f68
sb      t2,0xe(a1)
```
