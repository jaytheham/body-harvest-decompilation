## Incorrect ASM

`func_802DAD78_31EEC8` used a scratch register for the root-index load, enlarged the frame to `0x68`, retained the flags in a register after the last joint write, and placed the timer store after the first joint store.

```asm
addiu   sp,sp,-0x68
...
lh      t9,0xc(s0)
...
sh      v0,4(t4)
andi    t5,v1,0x2000
```

## Code changed

Cache the instance root index in the existing first short local before traversing the joint array. Retain the two short gaps and word gap, remove the named instance/joint pointers, and use direct array accesses. The final reset write uses the same-sized `Unk8014DD50VolatileZ` view so the flags are sampled again afterward. Put the timer assignment before the independent `ALIEN_FLAG_Z` clear, followed by the two joint writes.

```c
rootJoint = alienInstances[arg0].unkC;
sp5C = D_8014DD50[rootJoint].unkC;
/* ... */
alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKE;
alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKD;
alienInstances[arg0].unk2C = 0x3C;
alienInstances[arg0].unk20 &= ~ALIEN_FLAG_Z;
D_8014DD50[sp56].unk4 = 0x29;
((Unk8014DD50VolatileZ *)D_8014DD50)[sp52].unk4 = 0x29;
```

## Correct ASM

```asm
addiu   sp,sp,-0x60
...
lh      a3,0xc(s0)
...
and     t4,t7,at
sll     t6,t5,4
li      t8,0x3c
addu    t7,a0,t6
sh      t8,0x2c(s0)
sh      v0,4(t7)
lh      t8,0x52(sp)
sw      t4,0x20(s0)
sll     t9,t8,4
addu    t4,a0,t9
sh      v0,4(t4)
lw      v1,0x20(s0)
andi    t5,v1,0x2000
```
