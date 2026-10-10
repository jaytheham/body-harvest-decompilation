# Keep a variable divisor separate from an equal literal

Partial match in `func_80096BC4_A5B74`, IDO 5.3, `-O2 -mips2 -32`. The function remains unmatched; its diff score improved from 10406 to 7236.

The target computes two signed remainders with divisor 511. The first uses a saved register and includes the divide-by-zero and signed-overflow checks. The second loads 511 into `at` and emits a division without those checks.

Initializing the named divisor directly to 511 lets IDO share it with the later literal. Both divisions then use the register and emit checks. A late-folding initializer prevents that sharing:

```c
modBase = selectedGroup * 0 + 0x1FF;
if (modBase) {}
```

`selectedGroup` is the preceding helper's signed word result. The multiplication contributes zero and emits no multiplication instruction. The empty test emits no branch but keeps the first divisor in a saved register before entering the loop. Using the already constant loop count in place of `selectedGroup` folds too early and does not fix the second division.

The target also copies the shifted phase back into its working register between the first division and its checks. Reuse the now-dead signed word tile-group temporary and assign the shifted value explicitly:

```c
tileGroup = D_8013D510_14C4C0 << 4;
bright = tileGroup % modBase;
alpha0 = bright;
alpha2 = (tileGroup + 0x200) % 0x1FF;
```

This reproduces the division, value copy, checks, first remainder read, literal load, addition, second division, and second remainder read in target order. Register allocation and other sections still differ. An overall score alone does not establish this result: inspect both division sequences after a stock build.


## Loop shape also affects global address allocation

A later partial draft improved from 6286 to 5761 by spelling the loop as a guarded `do` and retaining an empty coordinate-pointer test at the bottom:

```c
coords = D_801475F0_1565A0;
loop = 0x20;
modBase = selectedGroup * 0 + 0x1FF;
if (modBase) {}
if (loop--) {
    do {
        /* Existing tile body. */
        if (coords) {}
        tile++;
    } while (loop--);
}
```

The guard alone was assembly-neutral. In combination with the empty pointer test, IDO retained the coordinate-table address in a saved register and changed the phase load inside the selected branch from a cached address plus `lh 0(base)` to the target's direct `lui` / `lh offset(base)`. The test emitted no branch or extra memory access. Moving the divisor initialization inside the guard made the result worse.

This is a local code-generation observation, not a general rule. The function still lacks a target instruction and differs elsewhere, including the phase update at the end. Verify instruction sequences as well as the overall diff score.
