## incorrect ASM

In `func_800885A0_58A50`, assigning the narrowed vertical velocity to the same word used for the parent index left the motion payload in `a0` and the normalized velocity in `v0`:

```asm
addu    a0,t3,t4
/* ... */
mfc1    v1,$f10
sll     t1,v1,0x10
sra     t2,t1,0x10
bltz    t2,negative
move    v0,t2
/* ... */
sb      t2,1(a0)
```

A redundant named node pointer also reserved an extra local word. The two pointer spills occupied `sp+0x30` and `sp+0x2C` rather than `sp+0x34` and `sp+0x30`.

## code changed

Use direct node array access, retaining the word parent-index capture and its `&= -1` identity before the second lookup. Declare that capture and the two typed payload pointers before a single `Vec3f`; retain a halfword gap before each of the two halfword indices. This keeps the vector at `sp+0x40`, the allocated index at `sp+0x3C`, and the motion index at `sp+0x38`, while lowering the optimizer spill reservation from 36 to 32 bytes.

Inline the signed-halfword absolute value in the byte assignment instead of assigning the narrowed result to the parent-index word:

```c
motion->velocity[1] = (s16)((f32)(u32)arg5 * direction.y) >= 0
    ? (s16)((f32)(u32)arg5 * direction.y)
    : -(s16)((f32)(u32)arg5 * direction.y);
```

Keep the unsigned word-to-float conversion and the explicit byte conversion on the first random probability comparison. Typed particle state, motion, and model views replace raw byte-pointer arithmetic.

## correct ASM

```asm
sw      v1,0x34(sp)
/* ... */
sw      a0,0x30(sp)
/* ... */
addu    v0,t3,t4
/* ... */
mfc1    v1,$f10
sll     t1,v1,0x10
sra     t2,t1,0x10
bltz    t2,negative
move    v1,t2
b       done
sb      t2,1(v0)
negative:
negu    t3,v1
sb      t3,1(v0)
```

The function diff is zero and the stock build reports `build/bh.us.z64: OK`.
