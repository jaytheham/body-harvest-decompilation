incorrect ASM (`func_802DB620_2BDA50`, direct instance access with the random term first):

```asm
lh      t0,0(s0)
mfhi    t1
addu    t2,t0,t1
...
sw      v1,0x48(sp)
...
lw      v1,0x48(sp)
```

-> code changed:

```c
effectX = alienInstances[arg0].unk0 + (func_800038E0_44E0() % 90) - 0x2D;
effectY = alienInstances[arg0].unk2 + (func_800038E0_44E0() % 160);
effectZ = alienInstances[arg0].unk4 + (func_800038E0_44E0() % 90) - 0x2D;
```

Use direct instance accesses throughout this handler. A named alien pointer
retains the wrong scheduling at the final sound call. With direct accesses,
put each coordinate field before its random term: the random calls remain
in their original order, but the field and remainder get the target scratch
registers. This also moves the cached palette pointer up four bytes without
changing the 0x60 frame or any coordinate homes. Hoisting raw random calls
into a new word did not fix those differences.

-> correct ASM:

```asm
lh      t1,0(s0)
mfhi    t0
addu    t2,t0,t1
...
sw      v1,0x4c(sp)
...
lw      v1,0x4c(sp)
```
