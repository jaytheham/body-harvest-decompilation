### Do-while 4-byte byte-copy loop: IDO peels first iteration then 4x-unrolls; goto prevents unrolling but changes register allocation

**Problem:** A do-while loop that copies 4 bytes per iteration (with `i += 4` counter, 29 total iterations from 2 to 0x76) gets 4x-unrolled by IDO -O2:
- IDO peels the first iteration (counter 2→6), leaving 28 = 4×7 remaining
- IDO then 4x-unrolls the remaining 28 iterations (counter increments by 16 instead of 4)
- This generates ~48 instructions per macro-iteration instead of 12

This happens in `func_800020E0_2CE0_2CE0` (saves game slot copy function).

**Root cause:** 29 iterations from i=2 to i=0x76. After IDO peels 1 iteration (→ 28 remaining), 28 = 4×7 is cleanly divisible by 4, enabling 4x unrolling.

**Goto workaround:** Replacing `do { ... } while (i != 0x76)` with:
```c
loop:
    i += 4;
    dst += 4;
    dst[-4] = src[0];
    dst[-3] = src[1];
    src += 4;
    dst[-2] = src[-2];
    dst[-1] = src[-1];
    if (i != 0x76) goto loop;
```
The goto structure prevents IDO's induction variable analysis from firing, so NO loop peeling and NO unrolling occur. The loop body is exactly 12 instructions (matching the target), score drops from 6480 to 2465.

**Side effect of goto workaround:** IDO's induction variable analysis (which correctly assigns `a0` to the counter and `a1` to the loop limit 0x76 in the do-while) does NOT fire with goto. Instead:
- Counter `i` goes into `a2` (not `a0`)
- Limit `0x76` goes into `a0` (not `a1`)
- Source/dest loop pointers `v0`/`v1` are swapped

**Trade-off:** Do-while (score 6480): correct registers (a0=i, a1=limit, v1=src, v0=dst) but wrong loop structure (4x unrolled, 36 extra instructions). Goto (score 2465): correct loop structure but wrong register allocation (a2=i, a0=limit, v0/v1 swapped).

**Current state: NON_MATCHING at score 2465** using goto approach.

**Key insight about the target:** The target uses `bne a0, a1` (induction variable in a0, constant limit in a1) with an unrolled loop. This register pattern ONLY appears with do-while (IDO induction variable analysis). The goto approach cannot produce this register assignment without also unrolling. The original C code must have used a do-while in a way that IDO -O2 did NOT peel+unroll, but the exact code pattern that prevents this could not be determined.

**Related:** The `src++; src--` trick (from `do-while-16byte-stride-strip-mining-prevention.md`) does NOT prevent 4-byte stride 4x-unrolling; it merely confuses the v0/v1 assignment.
