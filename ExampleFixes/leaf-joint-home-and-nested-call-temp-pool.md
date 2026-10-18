incorrect ASM (`func_802DDFF0_2C0420`):

```asm
lb      ra,0xc(t9)       # root takes the leaf's register
...
lb      t9,0xc(t6)
sh      t9,0xb0(sp)      # extra joint-index spill
```

-> code changed:

```c
/* Traverse with scalar indices and direct D_8014DD50 accesses. */
s16 joint11;
s16 joints[12];
/* ... */
joint11 = D_8014DD50[joint10].unkC;
/* Fill entries 0 through 10 from the other scalar indices. */
joints[11] = joint11;
(void)&joint11;
```

The apparent thirteenth array store is the adjacent leaf local's home.
Replace the thirteen-element array and duplicate `joints[12]` assignment
with twelve elements and the addressed leaf local immediately before it.

-> correct ASM:

```asm
lb      t5,0xc(t9)
...
lb      ra,0xc(t6)
...
lb      t7,0xc(t9)
...
sh      t7,0xa8(sp)      # leaf local
jal     func_80081F18_90EC8
 sh     t7,0xa6(sp)      # array entry 11
```

incorrect ASM:

```asm
lh      v1,0x6(s0)
addiu   t6,v1,0x4000
andi    a0,t6,0xffff
```

-> code changed:

```c
scratch = alienInstances[arg0].unk6;
scratch += 0x4000;
velocityX = (f32)((f32)sins(scratch) / 32768.0 * 15.0);
velocityZ = (f32)((f32)coss(scratch) / 32768.0 * -15.0);
```

Let the trig functions' `u16` parameters supply the mask instead of masking
the word assignment. Keep frame parity inline in the four angle updates
instead of assigning it to this reused word.

-> correct ASM:

```asm
lh      v1,0x6(s0)
addiu   v1,v1,0x4000
andi    a0,v1,0xffff
```

incorrect ASM:

```asm
sw      t7,0x5c(sp)      # target 0x60
sw      t6,0x58(sp)      # target 0x5c
sw      t6,0x54(sp)      # target 0x58
sw      t9,0x50(sp)      # target 0x54
sw      v1,0x48(sp)      # target 0x4c
```

-> code changed:

```c
scratch = func_8008916C_9811C(arg0, rootJoint);
effectIndex = func_800C7924_D68D4(worldX, worldY, worldZ,
    0x40, -8, alienTypes[alienInstances[arg0].typeIndex].unkC,
    scratch, 1);
/* In the later particle branch: */
scratch = func_800038E0_44E0() % 80;
/* Pass 0xB4 - scratch to func_800CA5EC_D959C. */
```

Hoist both non-final nested call arguments into the existing scratch word.
Hoisting only one leaves IDO's pooled word expression temporary alive.
Keep declarations ordered as coordinates, scratch word, animation byte,
result word, effect halfword to retain the target local homes.

-> correct ASM:

```asm
sw      t7,0x60(sp)
sw      t6,0x5c(sp)
sw      t6,0x58(sp)
sw      t9,0x54(sp)
sw      v1,0x4c(sp)
```
