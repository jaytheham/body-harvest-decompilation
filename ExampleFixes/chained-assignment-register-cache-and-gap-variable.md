### Chained assignment avoids stack spill for temporary; function-scope variable creates alignment gap

**Pattern:** A value computed once and stored to two struct fields (`unk6` and `unkE`) where the target
computes it once in a register and stores twice, but separate assignments cause recomputation.

**Symptom diff (before fix):**
```
subu    v0,t5,t4       | subu    t5,v0,t4
sh      v0,6(t7)       | sh      t5,6(t6)
lw      t8,0(s0)       | lh      t7,0x48(sp)
sh      v0,0xe(t8)     | subu    t8,v0,t7
                        > sh      t8,0xe(t9)
```

**Root cause:** Two separate statements `a->x = expr; a->y = expr;` cause the compiler to reload
the expression's operands for the second assignment (because the first store through `a` could
alias the operands). Using a declared temp variable forces a stack spill (growing frame by 4).

**Fix:** Use chained assignment: `a->y = a->x = expr;`
This tells the compiler the expression only needs to be evaluated once. The value is kept in
a register (or cfe temp at bottom of stack), avoiding both recomputation and extra stack growth.

---

### Function-scope variable at gap position matches frame layout

**Pattern:** Target has a 4-byte gap at a specific stack offset (e.g., `sp+0x3C`) between s16
variables and the next s16/pointer, but removing extra local variables eliminates the gap
and shifts variables up by 4 bytes.

**Symptom:** 
- Stack size matches (`-0x48`)
- All s16 var offsets at 0x46-0x40 correct  
- But pointer and s16 below the gap are 4 bytes too high (0x38 instead of 0x34, 0x3E instead of 0x3A)

**Fix:** Declare a `s32` variable at function scope BEFORE the shifted variables, assign to it
inside a conditional block (so the variable is used and not eliminated), but don't let it be the
last declaration. This creates the 4-byte gap at the expected position without growing the frame.

```c
// Target layout: sp40(0x40), [4-byte gap at 0x3C], sp3A(0x3A), sp34(0x34)
// Requires:
s16 sp46, sp44, sp42, sp40;  // top
s32 sp38;                     // creates 4-byte gap at 0x3C-0x3F
s16 sp3A;                     // lands at 0x3A
void *sp34;                   // lands at 0x34

// Use sp38 in a conditional path so it stays live:
if (condition) {
    sp38 = someFunction();
    if (sp38 != 0) {
        otherFunction(sp38);
    }
}
```

The function-scope `s32 sp38` occupies the gap at `sp+0x3C`, pushing `sp3A` and `sp34` down by
4 bytes to their target positions without growing the total frame size.
