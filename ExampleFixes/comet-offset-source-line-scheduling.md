Incorrect ASM in `func_802DC8F4_320A44`:

```asm
li      t5,0x14
li      t7,0x78
li      t9,-0x28
sh      t9,0x88(sp)
sh      t7,0x86(sp)
sh      t5,0x84(sp)
```

-> Code changed: split the three independent assignments onto separate source lines.

```c
/* Before */
offset[0] = 0x14; offset[1] = 0x78; offset[2] = -0x28;

/* After */
offset[0] = 0x14;
offset[1] = 0x78;
offset[2] = -0x28;
```

-> Correct ASM: the loads of constants and registers stay identical, while the stores follow the target order.

```asm
li      t5,0x14
li      t7,0x78
li      t9,-0x28
sh      t5,0x84(sp)
sh      t7,0x86(sp)
sh      t9,0x88(sp)
```
