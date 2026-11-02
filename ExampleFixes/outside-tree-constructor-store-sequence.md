incorrect ASM (`func_80076A10_859C0`, partial checkpoint):

```asm
sh      s2,0xa8(sp)
sh      t5,0xac(sp)
move    a0,t7
move    a1,t4
```

-> code changed:

```c
spA8.unk0 = x, spA8.unk4 = z,
spA8.unk2 = (s16)(func_800B84D0_C7480_4Args(x, z, zOff, z) >> 8);
```

-> correct ASM for the argument/store ordering:

```asm
move    a0,t7
move    a1,t4
sh      s1,0xa8(sp)
sh      t5,0xac(sp)
```

This groups position setup and the call on one source statement. The function remains guarded because other differences remain.
