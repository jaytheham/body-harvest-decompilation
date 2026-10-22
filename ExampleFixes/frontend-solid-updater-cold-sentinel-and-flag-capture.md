## incorrect ASM

In `func_80088BDC_5908C`, the `-6`, `3`, `6`, and `-20` constants had identical allocation benefits: `totalsave=10`, `nocs=6`, and `save=1.666667`. IDO cached the first three in `s6`, `s7`, and `s8`, leaving a gravity-limit reload inside the loop:

```asm
li      s6,-6
beq     s3,s6,exit
li      s8,6
/* ... */
li      s7,3
/* Inside the motion update: */
li      t2,-0x14
```

This displaced the target's cached `-20` and rotated later temporary registers. Once constant caching matched, the impact flag still loaded into `t7` instead of the target `v0`, leaving a second temporary-register rotation around the impact call.

## code changed

Expose the sentinel in a discarded comparison before the real guard. This emits no instructions but changes the sentinel's allocation exposure, leaving a saved register available for the gravity limit:

```c
index = D_800DE826;
if (index == -6) {
    /* IDO: rematerialize this sentinel so the gravity limit stays cached. */
}
if ((index != -5) && (index != -6)) {
    /* Existing motion and lifetime loop. */
}
```

Use two signed-word captures for the linked-node indices and compound assignments for all three coordinate updates. Remove the named old-Y capture: it occupied `v0` and delayed the motion payload address. Reuse the first word capture, after its parent lookup is complete, for the impact flags:

```c
value = entry->unk4;
motionIndex = D_800DE840[value].unk4;
/* ... */
if (height <= 0) {
    value = particle->flags;
    if (value & 1) {
        func_8008EB20_5EFD0(particle->position[0], height,
                          particle->position[2],
                          entry->unk2 / impactScaleDivisor, 0, 0, 0);
    }
}
```

Typed solid-particle and motion payloads replace raw pointer arithmetic and signed-byte casts without changing the generated instructions.

## correct ASM

```asm
li      at,-6
beq     s3,at,exit
li      s8,-0x14
/* ... */
li      s7,6
li      s6,3
/* Motion updates use s8 directly, with no loop-local limit load. */
sb      s8,1(v0)
/* Impact flags and divisor: */
lbu     v0,0xb(s0)
andi    t7,v0,1
beqzl   t7,skip_impact
sll     a0,s3,0x10
lh      t8,2(s1)
/* ... */
div     zero,t8,s7
```

The complete function diff is zero and the stock US ROM build reports `build/bh.us.z64: OK`.
