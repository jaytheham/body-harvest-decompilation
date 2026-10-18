incorrect ASM (`func_802DD240_2BF670`, random call nested in particle argument 4):

```asm
sw      t4,0x38(sp)      # target 0x3c
jal     func_800B84D0_C7480
 sw     t3,0x3c(sp)      # target 0x40
...
lh      a0,0x3e(sp)      # target 0x42
lh      a2,0x3a(sp)      # target 0x3e
```

-> code changed:

```c
s32 particleX;
/* ... */
particleX = (s16)x; height = (func_800B84D0_C7480(x, z) >> 8) + 0x32;
if (!(D_80052A8C & 7)) {
    random = func_800038E0_44E0();
    x = func_800038E0_44E0();
    func_800DEA08_ED9B8(particleX, height, z, (random % 200) + 0x12C,
        (x % 20) + 0xA, 0, 0x32, 0xDC, 0xE1, 0xE1, 0xE1);
}
```

Capture the signed-halfword X value in a word local, then reuse the dead
coordinate word for the second random result. This removes the nested
call's argument temporary without adding a separate random word. Pass
the original `x` to the terrain query so its conversion shares the
captured expression; passing `particleX` converts the value a second time.

-> correct ASM:

```asm
sw      t4,0x3c(sp)
jal     func_800B84D0_C7480
 sw     t3,0x40(sp)
...
lh      a0,0x42(sp)
lh      a2,0x3e(sp)
```

incorrect ASM (coordinate capture and terrain query on separate source lines):

```asm
move    a0,t3
sw      t3,0x40(sp)
move    a1,t4
jal     func_800B84D0_C7480
 sw     t4,0x3c(sp)
```

-> code changed:

```c
particleX = (s16)x; height = (func_800B84D0_C7480(x, z) >> 8) + 0x32;
```

Keep these statements on one source line. IDO then schedules the Z
argument and its spill before the X argument and its spill.

-> correct ASM:

```asm
move    a1,t4
sw      t4,0x3c(sp)
move    a0,t3
jal     func_800B84D0_C7480
 sw     t3,0x40(sp)
```
