### s32 loop-byte variable inside `if` block: register shift by one

When a function scans a null-terminated byte string (like `do { c = ptr[1]; ptr++; } while (c != 0xA && ...)`) with an outer `if` guard checking the first byte, IDO 5.3 allocates the loop byte variable `c` (s32) to one register HIGHER than ideal:

**Target allocation**: outer temp = a1, `c` = a1 (reuse), 0xA = a2, 0x40 = a3, 0x3B = t0  
**Actual allocation** (with s32 c inside if): `c` = a2, 0xA = a3, 0x40 = t0, 0x3B = a1

The CAUSE: the semicolon constant 0x3B (a short-lived temp for `bnel`) gets a1 before c does, because IDO allocates constants before the loop-variable assignment in its internal ordering. c then gets a2 (the next free register), shifting all constants up by one.

**Attempted fixes (none worked)**:
- `u8 c` vs `s32 c` (u8 gives `andi` instead of fresh `lbu`, score ~505)
- Block-scoped vs function-scope c (same allocation either way)
- Declaring c first in the declaration list (no effect)
- Pre-assigning `c = *arg0` before the `if` (gets c into a1 correctly, scores ~250, BUT generates spurious `sw a1,4(sp)` dead code at end and reversed beq operands)
- Named variables for 0xA/0x40 constants (pushes allocation to wrong registers, score ~790)
- Reversed C comparison syntax `(0xA != c)` vs `(c != 0xA)` (no effect on beq operand order)

**Key insight**: For the target's allocation, the code would need IDO to allocate `c` before the 0x3B constant. Pre-assigning `c` before the `if` achieves this BUT causes:
1. Extra `sw a1,4(sp)` dead instruction (O32 argument home store for a1)
2. Reversed branch operands (`beq a1,a2` instead of `beq a2,a1`) - not fixable via comparison reversal
3. Missing second `lbu a1,0(a0)` inside the `if`

**Best score achieved**: 265 (structurally clean, no extra instructions) or 250 (correct register allocation but with 3 structural issues). The permuter is likely needed to close the gap.

**Function**: `func_800172E0_17EE0` (ROM 17EE0), src.us/core/12C80.c
