## incorrect ASM

In `func_80088E18_592C8`, indexing both linked nodes directly through their next fields left the list cursor in `a2`, used scratch registers for the two link indices, and issued the third multiply before the primitive-color packet and scale stores. Excess padding also produced a `0x108` frame instead of `0xD8`.

```asm
lh      a2,-0x17da(a2)
/* ... */
multu   a2,s6
/* ... */
lh      t7,4(v1)
multu   t7,s6
```

A chained scale assignment additionally introduced a halfword reload from the stack. The target needs three stores of the original size value.

## code changed

Capture the two link indices in separate signed words before indexing their nodes:

```c
parentIndex = entry->unk4;
parent = &D_800DE840[parentIndex];
motionIndex = parent->unk4;
nextLink = &D_800DE840[motionIndex];
```

Write the scale components in reverse order on one source line, without chaining assignments:

```c
spC4.unk4 = entry->unk2; spC4.unk2 = entry->unk2; spC4.unk0 = entry->unk2;
```

Declare `nextLink` after the three transform vectors, remove excess padding, and retain one unused word after the two index captures. This preserves the vectors at `sp+0xC4`, `sp+0xBC`, and `sp+0xB4` in a `0xD8` frame. Increment `D_8005BB38` after `gSPMatrix`, rather than inside its physical-address argument. Typed motion, flags, and model payload views replace byte-offset reads without changing the match.

## correct ASM

```asm
addiu   sp,sp,-0xd8
/* ... */
lh      t0,-0x17da(t0)
/* ... */
multu   t0,s6
lh      a2,4(v1)
lh      a0,2(v1)
multu   a2,s6
sh      a0,0xc8(sp)
sh      a0,0xc6(sp)
sh      a0,0xc4(sp)
addiu   a0,sp,0xb4
addiu   a2,sp,0xc4
/* ... */
lh      a3,4(s4)
/* ... */
multu   a3,s6
```

The function diff is zero and the stock US ROM build reports `build/bh.us.z64: OK`.
