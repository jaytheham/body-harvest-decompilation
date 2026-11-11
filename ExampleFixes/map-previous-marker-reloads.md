# Incorrect ASM

In `func_8009811C_A70CC`, the previous marker's null test and color
switch shared a cached pointer. Adding a separate read for the switch
exposed a second difference. IDO cached the previous fade address
across its guard and stores.

```asm
lb      a0,3(v0)
...
swc1    $f10,0(v0)
```

# Code changed

Use `D_8013D528_14C4D8_Color` for the switch and retain the separate
`D_8013D528_14C4D8_Label` read for the draw coordinates. Read the
previous fade through `D_8014ED1C_Label` in its guard and calculation
and store through `D_8014ED1C`. Both aliases resolve to their
original addresses in the US and PAL linkers.

# Correct ASM

```asm
lui     at,%hi(D_8014ED1C)
cvt.s.d $f4,$f6
swc1    $f4,%lo(D_8014ED1C)(at)
lui     t7,%hi(D_8013D528_14C4D8)
lw      t7,%lo(D_8013D528_14C4D8)(t7)
lb      a0,3(t7)
```
