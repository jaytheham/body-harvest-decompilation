# Preserve table dimensions when indexing

In `func_8010B804_11A7B4`, indexing a signed halfword table as `table[currentLevel * 16 + kind]` produced the correct operations but different registers. Expressing the rows as `((s16 (*)[16])table)[currentLevel][kind]` matched the original assembly exactly. The cast is needed because existing users declare and index this shared table as a flat array.

IDO distinguishes the address expression trees even when both forms simplify to the same shifts and additions. Use the actual row dimensions before adjusting register allocation. A named `s16` local for the loaded limit also reproduced the target value register.

The helper also requires a direct `u16` cast on the angle return; masking with `& 0xFFFF` before the implicit argument conversion generates redundant moves.
