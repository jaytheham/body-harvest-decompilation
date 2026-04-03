### 4-element sequential loop initialization: store order and loop-top tricks

For a DO-WHILE loop that initializes 4-element groups of an `s32` array with sequential values (e.g., `D_8006AAD0[0..15] = 0..15`) and zeros a parallel array, where the loop counter advances by 4 per iteration:

**Target assembly pattern:**
```asm
addiu t7,a0,1   ← loop top (addiu is FIRST instruction)
addiu t8,a0,2
addiu t9,a0,3
sw a0,0(v0)     ← store index 0 (base value)
addiu a0,a0,4   ← increment the counter
sw t9,0xc(v0)   ← store index 3 (DESCENDING: C,8,4)
sw t8,8(v0)
sw t7,4(v0)
sw zero,4(v1)   ← zero out parallel array
...
bne a0,a1,loop
sw zero,-0x10(v1)  ← delay slot (zeroes index 0 after v1 advance)
```

**Key rules:**

1. **Loop top = `addiu t7,a0,1`**: Write *index [1] FIRST* in the loop body. IDO then picks `addiu t7` as the first instruction (the loop-top).
   ```c
   do {
       v0[1] = arg0 + 1;  // ← FIRST in source → addiu t7 at loop top
       v0[2] = arg0 + 2;
       v0[3] = arg0 + 3;
       v0[0] = arg0;      // ← LAST v0 store (sw a0 at loop top+3)
       arg0 += 4;
       ...
   } while (arg0 != 0x10);
   ```

2. **Prevent loop unrolling**: Add `arg0++; arg0--;` at the end of the loop body. Without this, IDO at -O2 detects the loop runs exactly 4 times and fully unrolls it.

3. **Loop limit literal**: Use `0x10` directly in the while condition instead of a separate `n` variable. This puts `li a1,0x10` before the loop and generates the same result, but avoids an extra declaration.

4. **Register assignment**: With declarations `s32 *v0; s32 *v1;` at function scope, IDO assigns `$v0` to C-var `v0` and `$v1` to C-var `v1`. Swapping their initialization order in C would swap register assignments.

**Remaining mismatch (score 170, not 0):**
- The `addiu v1,v1,...` and `addiu v0,v0,...` init instructions are in reversed order compared to target — this is a pure IDO scheduling artifact that cannot be controlled from C.
- Store order in the loop body: current generates ASCENDING (4,8,C) while target has DESCENDING (C,8,4) order between the three index-1/2/3 stores. Using comma operators (`v0[1]=..., v0[2]=..., ...`) produces descending order but then the diff score is HIGHER (310 vs 170), so semicolons are better.
- Increment `addiu a0,a0,4` position: target puts it between `sw a0,0(v0)` and the index-1/2/3 stores, IDO always schedules it at the end.

**Observed behavior (function `func_80012080_12C80`):**
- ALL instruction variants tried (comma operators, block-scoped temps, reversed [3,2,1,0] store order, moving increment earlier) either produced worse scores or broke the loop structure (loop peeling / extra basic blocks).
- Score 170 is achievable by: `[1,2,3,0]` store order + semicolons + `arg0++/--` trick.
