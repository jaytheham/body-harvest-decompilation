# Shared tail-recursive retries and parameter state

`func_800840B0_93060` matches using the signed byte and halfword parameters themselves as retry state. Separate narrow locals create additional loop-carried values and change saved-register allocation. Direct `arg1 = -arg1` preserves the target in-place negation; `arg1 *= -1` introduces an extra temporary and shifts subsequent register allocation. Compute the separate negative angle unconditionally, then compare it against the angle for the magnitude test.

Each collision branch uses a `do { ... } while (0)` block, breaking after the first rejected direction, followed by one recursive retry call. IDO turns the tail calls into backward branches and emits one shared parameter-normalization sequence per collision branch. Calling recursively from every rejection produces separate normalization sequences; a plain while loop with continue removes the required normalization.

Use `(s8)*coordinate` for the signed low byte: IDO emits the target `lb` at byte offset 1 without source pointer arithmetic. The complete ROM checksum verified OK.
