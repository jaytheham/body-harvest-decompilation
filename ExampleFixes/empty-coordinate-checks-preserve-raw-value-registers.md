Incorrect ASM in `func_80082CA0_91C50`:

```asm
addu    v0,t7,t8
lh      v1,4(v0)
sw      s8,0x38(sp)
lh      s8,0(v0)
sra     t2,v1,8
addiu   v1,t2,-1
sra     t9,s8,8
```

Code changed after calculating the two signed halfword grid origins:

```c
startXPos = (alienInstances[arg0].unk0 >> 8) - 1;
startZPos = (alienInstances[arg0].unk4 >> 8) - 1;
```

to:

```c
startXPos = (alienInstances[arg0].unk0 >> 8) - 1;
startZPos = (alienInstances[arg0].unk4 >> 8) - 1;
/* Preserve the coordinate value webs used by IDO's register allocator. */
if (alienInstances[arg0].unk0) {}
if (alienInstances[arg0].unk4) {}
```

Correct ASM:

```asm
addu    a3,t7,t8
lh      v1,4(a3)
lh      v0,0(a3)
sw      s8,0x38(sp)
sra     t0,v1,8
addiu   t0,t0,-1
sra     s8,v0,8
```

The checks emit no branches or additional loads. They preserve the raw
coordinate value webs, keeping X in V0, Z in V1, and the instance pointer in
A3. Unlike introducing named coordinate locals, they retain the 0x60-byte
frame and the signed halfword origin spill at `0x58(sp)`. This follows the
empty pointer check in the nearby matched `func_800844D0_93480`.

The complete function has zero diff and the stock build reports
`build/bh.us.z64: OK`.
