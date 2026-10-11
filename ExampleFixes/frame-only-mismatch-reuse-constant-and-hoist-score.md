# Frame-only mismatch: reuse a constant local and hoist a halfword score

Matched function: `func_800165EC_171EC` in `src.us/core/12C80.c`.
Compiler: IDO 5.3, `-O2 -mips2 -32`.

The starting C produced every target instruction, register, branch, and stack offset, except the frame was `0x58` instead of `0x50`. Removing the separate `int new_var` wraparound constant reduced the frame, but substituting a literal also reordered arithmetic in the positive wraparound branch.

The successful change reused the existing `s32 age` local for the constant at the start of each age-loop iteration, then overwrote it with the calculated age. This preserved the original add/subtract order:

```c
age = 0x7FFFFFFF;
if (now >= timestamp) {
    age = now - timestamp;
} else if (now >= 0) {
    age = (now + age) - timestamp;
} else {
    age = (age - timestamp) - now;
}
```

The `s16 score` declaration was also moved from the score loop to function scope. The exact matching declaration order was:

```c
s8 i;
s16 score;
s32 age;
s32 maximumAge;
s16 minimumScore;
s8 selectedSlot;
s8 unavailableCount;
```

With this combination, the frame was `0x50`, both call-spill pairs used `sp + 0x3C`, and the maximum-age load/store used `sp + 0x44`. Hoisting the score while keeping other declaration orders could retain the correct frame and spills but place maximumAge at `sp + 0x40`.

This is evidence that a frame-only residual can require changing local lifetime and declaration order together. Test these changes against the full translation unit; do not infer stack layout solely from the size of emitted loads and stores. Preserve the existing maximumAge initialization behavior and final while loop: changing either is a separate code-generation change.

Validation: `tools/make.ps1` reported `build/bh.us.z64: OK`; the function diff score was zero. Redundant float and halfword casts were subsequently removed without changing the match.
