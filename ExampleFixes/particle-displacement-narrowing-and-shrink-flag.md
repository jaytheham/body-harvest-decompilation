# Particle displacement narrowing and shrink-flag order

Incorrect ASM (`func_800E2830_F17E0`): a signed-short displacement used directly leaves later transient registers one position behind. Assigning the shrink flag after decrementing the count also reverses the flag constant and decrement-result registers.

```asm
lh    t6,2(s0)
addu  t7,t6,v1
...
addiu t2,a1,-1
...
li    t3,1
sh    t3,0x4e(sp)
```

-> Code changed:

```c
/* xOffset is a word; each drift branch assigns a signed-short result. */
xOffset &= 0xFFFF;
D_80153BD0[i].unk0 += xOffset;
D_80153BD0[i].unk2 += velocity;
/* Inside the shrink branch: */
didShrink = 1;
D_80154300--;
```

The halfword normalization preserves the low 16-bit coordinate sum. IDO emits an `andi` into a temporary; the assembler removes that mask before the final halfword store, but its temporary allocation still affects later registers. Set the flag before decrementing the count: the flag store is still scheduled after the count reload, while its constant is allocated first.

-> Correct ASM:

```asm
lh    t7,2(s0)
addu  t8,t7,v1
...
addiu t3,a1,-1
...
li    t2,1
sh    t2,0x4e(sp)
```
