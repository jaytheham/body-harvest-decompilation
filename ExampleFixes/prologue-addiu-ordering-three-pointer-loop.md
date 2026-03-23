### Three-pointer do-while loop: `addiu s4, s3, s0, li s1` prologue ordering stubborn case

When a `do { ... } while (i--)` loop uses **three** global address pointers — two same-page args (`&D_8004D150`, `&D_8004D154`) cached in s3/s4 for function calls inside a conditional, plus an iterator pointer (`&D_801497BA`) in s0 — the target assembly emits prologue addius in order `s4, s3, s0, li s1`.

**Target pattern:**
```asm
lui   s0, 0x8015      ; iterator
lui   s3, 0x8005      ; arg-ptr 1 (same page as arg-ptr 2)
lui   s4, 0x8005      ; arg-ptr 2
sw    ra, ...
addiu s4, s4, lo(D_8004D154)   ; ← s4 FIRST (last-used function arg)
addiu s3, s3, lo(D_8004D150)   ; ← s3 SECOND
addiu s0, s0, lo(D_801497BA)   ; ← s0 THIRD (iterator, first-used in loop body)
li    s1, 0x7F                 ; ← loop counter last
li    s2, 2                    ; ← comparison constant
```

**Root cause:** IDO schedules the prologue addiu completions in "latest-first-use" order — the function-argument pointers (used only inside a conditional branch) complete before the iterator pointer (used immediately at the loop top). However, reproducing this scheduling via C source requires the comma trick for **exactly 2** pointers (`func_800FAC90_109C40` shows this works for 2 pointers). With 3 address variables, all tried code variants produce `addiu s0` (iterator) first regardless of declaration/assignment order or comma operator usage.

**Attempted fixes (all produced score 105, wrong addiu order):**
- Declaration initializer order: ptr154 first, ptr150 second, entry third
- Inner `{}` scope for entry/i after outer ptr declarations
- Flat comma: `entry = ..., ptr150 = ..., ptr154 = ...`
- Nested paren comma: `entry = ..., (ptr150 = ..., ptr154 = ...)`
- Nested comma with inner-scope `i`: `entry = ..., (ptr150 = ..., ptr154 = ...); {s32 i = 0x7F; do{...}while(i--)}`
- Separate sequential statements in order: ptr154, ptr150, entry, i
- Combined same-type declaration: `s32 *ptr150 = ..., *ptr154 = ...`
- `if(1)` wrapper
- Exact NON_MATCHING pattern from sibling function `func_80076390_85340`

**Fix:** Wrap in `#ifdef NON_MATCHING`. C code is semantically correct (function body perfectly matches, 67 lines); only the 4-instruction prologue addiu sequence is in the wrong order.

**Example (func_800762E0_85290):**
```c
#ifdef NON_MATCHING
void func_800762E0_85290(void) {
    s32 *ptr154 = &D_8004D154;
    s32 *ptr150 = &D_8004D150;
    {
        u8 *entry = &D_801497BA;
        s32 i = 0x7F;
        do {
            if ((entry[0] == 2) && (func_80076208_851B8(entry[1]) != 0)) {
                func_800078E4_84E4(entry[1], ptr150);
                func_800078CC_84CC(entry[1], ptr154);
                func_80073DC0_82D70(entry[4]);
            }
            entry -= 6;
        } while (i--);
    }
    D_80149474 = 0xFF;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/.../func_800762E0_85290.s")
#endif
```
