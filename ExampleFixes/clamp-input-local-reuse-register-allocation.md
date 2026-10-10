# Clamp input local reuse and register allocation

Confirmed with `func_80018AEC_196EC` (IDO 5.3, `-O2 -mips2 -32`).

The original implementation matched every instruction except three uses of
the increment result: IDO used `a0` where the target used `v0`.

```c
clampedValue = *counter;
value = clampedValue + 1;
clampedValue = value >= 11 ? 10 : value;
```

Cache the input instead, leave the increment inside the ternary, and reuse
the input local for the later state check:

```c
value = *counter;
clampedValue = (value + 1 >= 11) ? 10 : value + 1;
/* Apply the override and store clampedValue through counter. */
if (clampedValue >= 10) {
    value = D_8003449C_3509C;
    if ((value == 0) && (gameplayMode != 0)) {
        /* Save and change gameplayMode. */
    }
}
```

Both changes together produce the target's `lw v1`, `addiu v0,v1,1`, and
`move v1,v0` sequence without disturbing the rest of the function. Changing
only the clamp expression swaps `v0` and `v1` across several later blocks.
An otherwise equivalent local assignment in a later block can therefore be
essential to register allocation in an earlier block.

The final drawing expression also retains `(s32)D_80068088`, although the
global already has type `s32`. Removing that cast reverses the operands of
`addu a3,t0,t7`; reversing the C addition does not repair it. This is another
instance of the cast-sensitive operand ordering described in
`assignment-reordering-commutative-order.md`.

The final complete ROM build reported `build/bh.us.z64: OK`.
