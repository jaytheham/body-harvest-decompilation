incorrect ASM
```asm
# func_8008A094_5A544: a named template-index pointer displaces the head spill.
sw      v1,0x2c(sp)
lw      v0,0x2c(sp)
lw      t9,0x2c(sp)
```
-> code changed
```c
/* Replace the template-index pointer with an addressed scalar read.
 * Capture the full head before allocation, then derive its payload afterward.
 * The second array slot preserves the target 0x60-byte frame. */
Unk800DE840 *head[2];

templateIndex = D_800DE840[headIndex].unk4;
head[0] = &D_800DE840[headIndex];
index = func_80083B7C_5402C(arg0);
if (index == -3) {
    return;
}
particle = (JetStreamParticleState *)&head[0]->unk8;
/* Copy the three positions, then select the emitter. */
emitter = (FrontendSpurtEmitterState *)&D_800DE840[(&templateIndex)[0]].unk8;
```
-> correct ASM
```asm
sw      v1,0x30(sp)
lw      v0,0x30(sp)
lw      t9,0x30(sp)
```

incorrect ASM
```asm
# The exact head-spill candidate initially swaps the index and node registers.
lui     v1,0x800e
addu    v1,v1,t7
lh      v1,-0x1eca(v1)
sll     t8,v1,3
subu    t8,t8,v1
# ...
addu    v0,t8,t9
lh      t0,4(v0)
sw      v0,0x30(sp)
```
-> code changed
```c
headIndex = D_800DE130[arg0].unk6;
headIndex &= -1;
/* This identity compound assignment changes IDO allocation without emitting
 * an instruction. Keep it with the two-slot head array and addressed index. */
```
-> correct ASM
```asm
lui     v0,0x800e
addu    v0,v0,t7
lh      v0,-0x1eca(v0)
sll     t8,v0,3
subu    t8,t8,v0
# ...
addu    v1,t8,t9
lh      t0,4(v1)
sw      v1,0x30(sp)
```
