# Inside culling cosine delay slot

`incorrect ASM`:

```asm
sw    v1, 0x38(sp)
jal   coss
 andi a0, v1, 0xffff
```

`code changed` in `func_8007C428_1644E8`:

```c
if (1) {
    coss(angle);
}
```

`correct ASM`:

```asm
andi  a0, v1, 0xffff
jal   coss
 sw   v1, 0x38(sp)
```

`incorrect ASM` for the earlier projected coordinates:

```asm
mfc1 v1, $f8
...
mfc1 t0, $f8
```

`code changed` after calculating the radius and before the angle helper:

```c
if (yProj != 0) {}
```

With `xProj` declared before `yProj`, `correct ASM` uses the target registers and spill slots:

```asm
mfc1 t0, $f8
...
sw   t0, 0x34(sp)
...
mfc1 v1, $f8
...
sw   v1, 0x2c(sp)
```
