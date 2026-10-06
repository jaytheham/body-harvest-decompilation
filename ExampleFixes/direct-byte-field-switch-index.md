# Direct byte-field switch indices

Observed in the still-unmatched `func_8009811C_A70CC` in `A49A0.c`.

Replacing a named `s8` switch-index temporary with direct field access
changed the index load from `v0` to the target's `a0` in the selected-zone
color switch. The dispatch instructions otherwise retained their order.
The same simplification improved the other zone switches and the alien
texture switch without changing the stack frame.

This does not generalize to every byte-field condition. Inlining the
alien-type filter's reused integer temporary worsened the function diff.
An explicit empty default arm in the selected-zone switch compiled
identically and did not fix its branch-likely or speculative-load differences.

These observations describe partial register matches. The full function
has not matched, and no successful ROM verification is implied.
