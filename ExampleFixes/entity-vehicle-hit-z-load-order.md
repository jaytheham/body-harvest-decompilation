# Vehicle hit Z load order

```asm
# Selected instructions from the case 2 path in func_80126B80_135B30
sh      v0,2(s4)
lh      t6,0xa8(sp)
mtc1    t4,$f4
```

-> Write `hit.pointer->unk4 = hitZ;` before
`hit.pointer->unk2 = (s16)scratch;`.

->

```asm
# These three instructions now follow the target order.
lh      t6,0xa8(sp)
mtc1    t4,$f4
sh      v0,2(s4)
```
