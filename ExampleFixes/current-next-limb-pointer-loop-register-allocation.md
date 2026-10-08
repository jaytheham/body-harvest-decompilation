# Current and next limb pointers preserve loop register allocation

`func_800F32EC_10229C` initially matched every instruction except the multiply at ROM offset `0x102380`: C used `multu v1,s6`, whereas the target used `multu s1,s6`. The loop index is a `u8`; IDO also keeps its narrowed value in `v1` for the bit-mask shift and loop comparison.

The original C named only `&walker->limbs[i + 1]` and independently accessed `walker->limbs[i + 1]` for call arguments. The matching version names both the current limb and its next element:

```c
UnkF9230ShadowLimb *limb = &walker->limbs[i];
UnkF9230ShadowLimb *next = &limb[1];

if (next->unk23 == 1) {
    next->unk23 = 2;
}
if (arg1 & (1 << i)) {
    next->unk23 = 1;
    next->unk22 = func_800C2274_D1224(
        limb[1].unk14, limb[1].unk16, limb[1].unk18, 0);
}
```

This produces the target's `s1` multiply, current-limb base in `v0`, and next-limb pointer in `s0`. The next pointer survives the call for the returned byte store; the current pointer is used only to load the call arguments.

Both details matter. Keeping independent `walker->limbs[i + 1]` call accesses generated a second offset computation. Keeping only the current-limb pointer made that pointer survive the call instead, removing the target's `addiu s0,v0,0x24` and changing the argument load order.

The final typed array accesses reproduce the entire function exactly, with full ROM verification reporting `build/bh.us.z64: OK`.