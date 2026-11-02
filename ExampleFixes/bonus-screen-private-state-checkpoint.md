# Bonus timer checkpoint (renderer remains NON_MATCHING)

`lbu timer; addiu bonusScore,timer,1; ...` and a different branch delay slot -> replace the named temporary with `if (timer + 1 < 30) timer = timer + 1; else timer = 30;` -> target timer reload, increment, comparison and branch-delay instruction sequence.

External aliases caused extra address caching and stack spills -> use separate function-private state scalars at their original fixed BSS positions, with reserved preceding words and byte padding -> target stack frame and state-access structure.

The whole function does not yet match: threshold register allocation and the ordering of format-address setup around alpha stores remain. When compiling this C, move initialized CA4/CA8/CAC/CB0 into this function as static variables and leave following initialized data after it; preserve data ordering.
