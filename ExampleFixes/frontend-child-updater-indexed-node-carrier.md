## incorrect ASM

In `func_800894A0_59950`, a named `Unk800DE840 *cur` shared between the initial head copy and the child loop produced separate node-address carriers. The loop calculated the node in `v0`, copied it into a saved pointer, and copied the payload into another saved pointer in the branch delay slot:

```asm
addu    v0,v1,t5
lbu     t6,0x11(v0)
addiu   s0,v0,8
move    s2,v0
slti    at,t6,0xa
beqz    at,update
move    s1,s0
```

Changing only the post-call size and next-link accesses to direct array expressions fixed the loop's saved pointers but left an extra array-base load and incorrect prefix registers.

## code changed

Remove the named node pointer completely and reuse the same short index for the initial head lookup and the subsequent child walk. Capture the parent's color address before replacing the head index with its next link:

```c
srcPos = (Vec3s *)&D_800DE840[entry130->unk2].unk8;
idx = entry130->unk6;
D_800DE840[idx].unk8 = srcPos->x;
D_800DE840[idx].unkA = srcPos->y;
D_800DE840[idx].unkC = srcPos->z;
headBytes = &D_800DE840[idx].unk11;
idx = D_800DE840[idx].unk4;
```

Use `D_800DE840[idx]` for all node header accesses in the child loop, with one typed payload pointer for the position, colors, alpha, and age. An explicit second payload pointer is unnecessary: the compound position update around the random call generates the required second address carrier itself.

## correct ASM

```asm
lh      a2,6(s4)
/* Head node address and copies: */
addu    s1,v1,t0
sh      t1,8(s1)
/* ... */
lh      a2,4(s1)
addiu   s3,s1,0x11
/* Child loop: */
addu    s1,v1,t4
lbu     t5,0x11(s1)
addiu   s0,s1,8
move    s2,s0
slti    at,t5,0xa
beqzl   at,update
lbu     t9,0xa(s0)
```

The complete function diff is zero and the stock US ROM build reports `build/bh.us.z64: OK`.
