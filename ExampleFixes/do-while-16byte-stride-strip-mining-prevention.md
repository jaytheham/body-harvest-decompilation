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
