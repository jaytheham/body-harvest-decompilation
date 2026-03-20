### `s8` local used before branch forces early `lh` load via delay-slot scheduling

When a function reads a `s8` value from a double-indirect struct lookup (`D_8014DD50[inst->unkC].unkC`) and the result is used as BOTH a function argument AND an array index before the function call, assigning it to a named `s8 specEntry` BEFORE the `if` check forces IDO to:
1. Load `inst->unkC` BEFORE loading `inst->unk20` (the branch condition)
2. Pre-compute the double-indirect pointer `t2 = D_8014DD50[inst->unkC]`
3. Schedule `lb specEntry, 0xC(t2)` in the branch delay slot

Without the named variable (inlining all 4 occurrences of `D_8014DD50[inst->unkC].unkC`), IDO loads `inst->unk20` first (needed for the branch) and the scheduler does NOT hoist the `D_8014DD50` chain before the branch.

**Trade-off**: The named `s8 specEntry` creates a phantom home slot (+8 bytes frame, +4 bytes for inst save offset). Score with named variable: 34 (only sp-offset differences). Score without: 1420 (wrong prologue ordering).

Use: `s8 specEntry; AlienInstance *inst;` (declaration order may not matter) + compute specEntry before the if check.
