incorrect ASM (`func_80080D98_8FD48`, cached alien pointer and flag update before position stores):

```asm
lw      t3,0(t0)
ori     t4,t3,0x400
sw      t4,0(t0)
lh      t5,0(s0)
sh      t5,0(v0)
lh      t6,2(s0)
sh      t6,2(v0)
lh      t7,4(s0)
sh      t7,4(v0)
```

-> code changed:

Remove the named alien pointer and use `alienInstances[arg0]` throughout the function. Declare the position global as the existing `Vec3s` type, and copy its three components before updating the contact flags:

```c
D_80159218.x = alienInstances[arg0].unk0;
D_80159218.y = alienInstances[arg0].unk2;
D_80159218.z = alienInstances[arg0].unk4;
D_80159320 |= 0x400;
```

Direct array accesses preserve the known source object for alias analysis, allowing the three loads to precede the three stores without coordinate temporaries. The source order assigns the coordinate temporaries before the flag temporaries, while scheduling moves the flag load ahead of the coordinate loads.

-> correct ASM (the complete function and US ROM match):

```asm
lw      t7,0(t0)
lbu     t9,0x1a(s0)
lh      t4,0(s0)
lh      t5,2(s0)
lh      t6,4(s0)
addiu   v0,v0,-0x6de8
ori     t8,t7,0x400
sw      t8,0(t0)
sh      t4,0(v0)
sh      t5,2(v0)
bne     t1,t9,human_state_done
sh      t6,4(v0)
```
