### Preventing IDO strip-mining for 16-byte stride typed-struct pointer loops

**Problem:** A do-while loop iterating over a `D47F40Entry *` (size 0x10) with word stores to all 4 fields generates IDO strip-mining: extra `subu a1, end, start; andi t6, a1, 0x3f; beqz t6, skip_remainder; ...` wrapper around the actual loop.

IDO detects 16-byte stride pointer loops and applies a 4x-unrolling strip-mine optimisation (64-byte blocks = cache-line-aligned). This NEVER fires for 8-byte stride (e.g. `D47D40Entry *`).

**Fix:** Add `ptr++; ptr--;` (net-zero increment pair) at the **end** of the loop body. This confuses IDO's loop analyser, preventing it from recognising the stride pattern:

```c
// WRONG - strip-mines (generates subu/andi wrapper):
do {
    ptr++;
    (ptr - 1)->f4 = 0;
    ...
} while (ptr != end);

// RIGHT - no strip-mining (score 10 vs 1630):
do {
    ptr++;
    (ptr - 1)->f4 = 0;
    (ptr - 1)->f8 = 0;
    (ptr - 1)->fC = 0;
    (ptr - 1)->f0 = 0;
    ptr++;
    ptr--;
} while (ptr != end);
```

**Remaining issue (score 10, not 0):** The `ptr++; ptr--` trick suppresses IDO's "critical-path scheduling" heuristic that places the loop-iterator's `lui` before the end-pointer's `lui`. Without the trick, the loop matches structurally but strip-mines; with the trick, no strip-mining but the two `lui` instructions in the prologue are in reversed order:

```
TARGET:  lui v1, 0x8004; lui v0, 0x8004; addiu v0, 0x7f60; addiu v1, 0x7f40
CURRENT: lui v0, 0x8004; lui v1, 0x8004; addiu v0, 0x7f60; addiu v1, 0x7f40
```

Everything else (addiu order, bne operands, stores) matches perfectly.

**Variable ordering for correct v0/v1 assignment:**
- Declare `end` FIRST (→ v0), `ptr` SECOND (→ v1)
- The `end` FIRST declaration gives the correct inner-loop register assignment (v1=ptr advances, v0=end constant, `bne v1, v0`)

**Observed in:** `func_800048E8_54E8_54E8` (core/53F0.c), which has structurally identical neighbours `func_800048B8_54B8` (8-byte struct, also NON_MATCHING) and `func_80004918_5518` (8-byte struct, also NON_MATCHING).
