# Height bounds: copy before updating the sampled height

Matched `func_80082EB4_91E64` in `src.us/overlay_gameplay/outside/884C0.c` with an exact assembly diff and `build/bh.us.z64: OK`.

The target reuses the address-taken sampled height as the upper bound. Keeping a separate upper-bound local changed the alien-instance pointer from `a3` to `v1` and changed other register allocation throughout the function.

Use this sequence, with all three values declared `s16`:

```c
lower = (u16)height;
height += extent;
lower = lower - (extent * 2);
```

IDO eliminates the narrowing instructions for the intermediate copy, but preserves the compiler temporary that produces `move t8,v1`. This sequence matches the target's scheduled operations:

```asm
lh    v1,0x34(sp)
sll   t3,t1,1
move  t8,v1
subu  v0,t8,t3
addu  v1,v1,t1
sll   t9,v1,16
sll   t4,v0,16
sra   v1,t9,16
sra   v0,t4,16
```

Casting the copy only in the final subtraction produced the same instruction structure with different temporary registers. Calculating the lower bound directly before updating the height also changed the narrowing order.

For the final range check, express the condition for returning zero:

```c
if ((height >= requestedHeight) && (lower < requestedHeight)) {
    return 0;
} else {
    return 1;
}
```

This matches `bnez` followed by `beqzl` and the shared return. Expressing the complementary outside-range condition produced a different second branch.

The local declaration order is an unused `s16` padding slot, sampled height, lower bound, extent, `u8` type index, and `u8` building index. This places the sampled height at `sp+0x34` and extent at `sp+0x30` with the target's `0x38` frame.
