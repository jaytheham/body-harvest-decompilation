incorrect ASM (`func_80088154_97104`, selector and flags sharing the wrong registers):

```asm
lw      v0,0x20(s0)       # target: v1
...
lbu     v1,0x24(s0)       # target: v0
bnel    v1,at,next_test
...
lw      v0,0x20(s0)       # target: v1
or      t9,v0,at
```

-> code changed:

```c
s32 scratch;
s32 originalTypeIndex;
s32 flagsOrDivisor;
u8 savedTypeByte;
u8 childIndex;
s32 knockbackScale;
AlienType *originalType;
s32 savedTypeIndex;

/* Cache the flags, rather than caching the human-state selector. */
flagsOrDivisor = arg0->unk20;
if ((flagsOrDivisor & ALIEN_FLAG_INVINCIBLE) ||
    (arg0 == (AlienInstance*)D_80140AC4_14FA74)) {
    arg1 = 0;
}
/* Keep the later human-state comparisons as direct arg0->unk24 reads.
 * After the random/blood calls, reload flagsOrDivisor from arg0->unk20. */

flagsOrDivisor |= ALIEN_FLAG_UNKP;
arg0->unk20 = flagsOrDivisor;

/* Later, reuse that word for the divisor, not the integer quotient. */
flagsOrDivisor = alienTypes[scratch].unk3A;
originalType = &alienTypes[originalTypeIndex];
originalType = (&originalType)[0];

/* Inside the knockback branch, after coss: */
knockbackScale = (s32)(arg1 << 0xF) / flagsOrDivisor;
/* Convert knockbackScale to f64 in both knockback expressions. */
```

The selector and divisor previously occupied one local word. IDO joined
their disconnected lifetimes, and the divisor's use across `coss` forbade
`v0` for the selector too. Cache and update the flags in that word instead.
The separate `flagsOrDivisor |= ...` statement matters: spelling only
`arg0->unk20 = flagsOrDivisor | ...` produces different allocation.

Keep the declaration order shown, the pointer identity, and the byte save
`savedTypeByte = originalTypeIndex & 0xFF`. Together with the independent
quotient word, these reproduce the `0x48` frame, type save at `sp+0x2c`,
pointer save at `sp+0x30`, divisor spill at `sp+0x3c`, and the integer
temporary sequence. Verified by `build/bh.us.z64: OK` after source cleanup.

-> correct ASM:

```asm
lw      v1,0x20(s0)
...
sw      t0,0x2c(sp)
lbu     v0,0x24(s0)
bnel    v0,at,next_test
...
lw      v1,0x20(s0)
or      t9,v1,at
...
sw      t8,0x30(sp)
...
sw      v1,0x3c(sp)
...
mflo    t1
mtc1    t1,$f18
```
