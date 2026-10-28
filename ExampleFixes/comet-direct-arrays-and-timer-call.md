Incorrect ASM:

`func_802DD554_3216A4` had a 0x38 frame instead of 0x28. Named instance and joint pointers plus a cached counter changed aliasing and produced `beqzl` with the next counter load in its delay slot. With direct array access, nesting the timer increment in the call still exchanged `li a1,1` and the instance-ID load.

Code changed:

Use direct `alienInstances[arg0]` and `D_8014DD50[joint]` accesses. Keep only three `s16` joint/clamp locals and the `u8` type index; read the counter directly in both comparisons. Declare the joint indices as signed halfwords, following matched `func_802D8D84_191894`. Write the timer increment as a separate statement before the helper call:

```c
alienInstances[arg0].unk48 += 0x2EE0;
if (func_80086D70_95D20(arg0, 1, alienInstances[arg0].unk48)) {
    alienInstances[arg0].unk1E = 0;
}
```

Correct ASM:

```asm
beqz    at,.L802DD6B0_321800
li      a1,1
lh      t3,0x48(v1)
lbu     a0,0x2b(sp)
sw      v1,0x1c(sp)
addiu   t4,t3,0x2ee0
sh      t4,0x48(v1)
jal     func_80086D70_95D20
lh      a2,0x48(v1)
```

The frame is 0x28, the function matches byte for byte, and the full US ROM checksum passes.
