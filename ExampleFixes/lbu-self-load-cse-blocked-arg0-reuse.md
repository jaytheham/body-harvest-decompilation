# `lbu a0, 0(a0)` self-load blocked by IDO's CSE — arg0 register reuse pattern

## Overview

A unique pattern where IDO repurposes the first argument register (`a0`) as the loop
char variable after saving the pointer to `v0`. The assembly instruction `lbu a0, 0(a0)`
loads a byte from the memory pointed to by `a0` INTO `a0` itself (self-overwrite).

**Function:** `func_80017394_17F94` in `src.us/core/12C80.c`

## Target assembly structure

```asm
lbu  a2, 0(a0)        ; load initial char into a2 (for 4 initial exit checks)
li   a3, 0xa          ; constant 0xA in a3 (lives entire function)
move v1, zero         ; sum = 0
beq  a3, a2, exit     ; if char == '\n', exit
 move v0, a0          ; [delay slot] save ptr to v0
...                   ; 3 more beq checks using a2
addiu a1, ..., -1     ; len--
beqz  a1, exit        ; if len==0, exit
 lui  t5, 0x8003      ; [delay slot] start loading table address
lbu  a0, 0(a0)        ; THE SELF-LOAD: loop char into a0 (arg0 repurposed!)
addiu t5, t5, 0x1720  ; finish table address
li   a2, 0x5e         ; 0x5E constant in a2 (reused from freed initial char temp)
...
```

## Key register allocation in target

- `a2`: initial char temp (lbu a2, 0(a0)) → reused for 0x5E constant in loop
- `a0`: freed arg0 pointer → repurposed as loop char (via self-load `lbu a0, 0(a0)`)
- `a3`: 0xA constant (lives entire function for both initial check and loop exit)
- `t5`: table base (fits because a3 is freed from loop char duty)

## The CSE problem

IDO's GVN/CSE caches `*arg0 = a2` (from the initial check load `lbu a2, 0(a0)`).
When the loop char assignment `var_a0 = *arg0` occurs inside the nested if block,
IDO substitutes the cached value instead of generating a fresh load:

- **Desired:** `lbu a0, 0(a0)` (fresh self-load, a0 repurposed)
- **Actual:** `andi a3, a2, 0xff` (CSE copy from a2 to a3)

This causes a register cascade:
1. loop char → a3 (instead of a0)
2. 0xA constant → t0 (instead of a3, which is now taken by loop char)
3. All constants shift by 1 register
4. Table base → s0 (callee-save) → requires full stack frame (+4 instructions)

## What was tried (all unsuccessful)

1. Inline `*arg0` in condition, `var_a0 = *arg0` inside (score 1880 best)
2. Volatile cast: `*(volatile u8*)arg0` → forced fresh load but to a3, not a0
3. Separate `temp_a2` variable for initial check + `var_a0` for loop char
4. Single variable (no second assignment, loop char = initial check var)
5. `s16 var_a1` separate length counter + `u8 temp_a2` separate initial check var
6. Various declaration orders
7. `var_v0 = arg0` placement (inside/outside outer if, after/before load)
8. Adding extra pointer variable (only shifted constants by 2 instead of 1)
9. goto-based loop structure (score 2685, worse)

## Root cause

IDO's CSE is function-wide and persists across basic block boundaries. The CSE
entry for `*arg0 = a2` remains valid because:
- No store through arg0 between initial check and loop char assignment
- No function calls between the two loads
- No volatile qualifier

The `volatile` cast prevents CSE but does NOT trigger the dead-register coalescing
that would produce `lbu a0, 0(a0)` — instead it gives `lbu a3, 0(a0)`.

## Best achieved score

**1880** with the inline `*arg0` approach (no named temp for initial check):

```c
s16 func_80017394_17F94(u8 *arg0, s16 arg1) {
    s32 var_v1;
    u8 *var_v0;
    u8 var_a0;

    var_v1 = 0;
    var_v0 = arg0;
    if (*arg0 != 0xA && *arg0 != 0 && *arg0 != 0x40 && *arg0 != 0x3B) {
        arg1--;
        if (arg1 != 0) {
            var_a0 = *arg0;  // ← CSE'd to: andi a3, a2, 0xff
            // ... loop body
        }
    }
    return var_v1;
}
```

## Conclusion

The self-load `lbu a0, 0(a0)` requires IDO to dead-register coalesce the loop char
variable with the freed arg0 register AND skip the CSE substitution. This combination
is not achievable with known C89 patterns — the CSE always wins over coalescing for
non-volatile loads when a cached value is available. This function was marked
NON_MATCHING with best-effort C code preserved.
