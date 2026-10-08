# Preserve a constant floating multiply with a late conditional fold

Matched `func_8007F188_4F638` in `src.us/overlay_gameplay/frontend/40720.c` with IDO 5.3, -O2 -mips2 -32.

The final mismatch was the operand order of `mul.s f4,f12,f2`: the target multiplies one by the Z sine. Writing `1.0f * sine` removes the multiply too early. Writing `sine / 1.0f` preserves a multiply after reciprocal lowering, but places the sine first.

Reuse a float whose previous value is dead and assign the same constant in both arms of a conditional:

```c
if (angle) {
    sinX = 1.0f;
} else {
    sinX = 1.0f;
}
result->x = 0.0f - (sinX * sinZ);
```

The conditional disappears later while the multiply retains the constant as its first operand. Reusing the existing float avoids the extra four-byte local home and enlarged frame caused by a new `one` variable. In this function the resulting frame is 0x50 and the entire ROM matches.

The first angle parameter is s16, consistent with its callers; reusing it for the s16 cosine result reproduces the target's store/load behavior. An explicit zero case for the distance retains the otherwise dead move in the target.

The basis uses array views of its Vec3f storage. Converting the entire basis to a float array preserved the instruction sequence but changed floating register assignment. Keep representation changes separate from the late constant-fold fix and check the full ROM after cleanup.
