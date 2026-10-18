incorrect ASM (`func_802DCC50_2BF080`, separate locals passed as an array):

```asm
sh      v0,0x96(sp)
...
addiu   a3,sp,0x96       # only one scalar is actually addressed
jal     func_80081F18_90EC8
```

-> code changed:

```c
s16 joints[12];
/* Traverse into scalar indices before filling the array. */
joints[0] = rootJoint;
joints[1] = joint1;
/* ... */
joints[11] = joint11;
animationResult = func_80081F18_90EC8(arg0, 12, 4, joints,
    &D_802E2734_2C4B64);
```

Retain the separately used `joint8` local. Keep the final leaf in an `s8`
scalar until the array-fill phase; loading it directly into `joints[11]`
changes the table-base register and instruction order. Cache the sibling
node used for both `unkC` and `unkD` reads, but use scalar indices and
direct array accesses for the later nodes.

-> correct ASM:

```asm
addiu   a3,sp,0x78
...
sh      v0,0x78(sp)
sh      v1,0x7a(sp)
...
jal     func_80081F18_90EC8
 sh     t5,0x8c(sp)
```

incorrect ASM (word mask in a trig argument):

```asm
lh      a0,0x6(s1)
addiu   t6,a0,0x4000
jal     sins
 andi   a0,t6,0xffff
```

-> code changed:

```c
directionX = (f64)(f32)sins((u16)(alienInstances[arg0].unk6 + 0x4000)) / 32768.0;
directionZ = -((f64)(f32)coss((u16)(alienInstances[arg0].unk6 + 0x4000)) / 32768.0);
```

Cast the argument to `u16` instead of applying `& 0xFFFF` to a word
expression. Recompute it for each call, as the target does.

-> correct ASM:

```asm
lh      a0,0x6(s1)
addiu   a0,a0,0x4000
andi    t6,a0,0xffff
jal     sins
 move   a0,t6
```

incorrect ASM (treating generated integer coordinates as fixed-point values):

```asm
lw      a0,0x70(sp)
sra     t6,a0,0x10
sll     t8,t6,0x10
sra     a0,t8,0x10
```

-> code changed:

```c
func_800DEA08_ED9B8(worldX, worldY, worldZ, /* ... */);
func_800B84D0_C7480(worldX, worldZ);
```

Remove the `>> 16` expressions. These callees take signed halfword
coordinates; the target uses the low halfwords of the generated words.

-> correct ASM:

```asm
lh      a0,0x72(sp)
lh      a2,0x6a(sp)
```

incorrect ASM (leaf-first position sums):

```asm
lw      t0,0x4c(sp)
...
lw      v1,0x50(sp)
```

-> code changed:

```c
D_8014DD50[joint6].unk0 + D_8014DD50[joint7].unk0 + D_8014DD50[joint8].unk0
/* Use the same order for unk2 and unk4. */
```

-> correct ASM:

```asm
lw      v1,0x50(sp)
...
lw      t0,0x4c(sp)
```
