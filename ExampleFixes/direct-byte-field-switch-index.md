# Direct byte-field switch indices

Replacing a named `s8` switch-index temporary with direct field access
changed the index load from `v0` to the target's `a0` in the selected-zone
color switch. The dispatch instructions otherwise retained their order.
The same simplification improved the other zone switches and the alien
texture switch without changing the stack frame.

These observations describe partial register matches. The full function
has not matched, and no successful ROM verification is implied.
