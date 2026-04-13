### Typed forward declarations inflate frame and change saved-register allocation

**Pattern:** Adding explicit typed forward declarations (returning `s32`, `s16`, etc.) for helper functions in the same source file causes IDO to increase the frame size and remap all saved registers for the calling function — even though the call sites are identical.

**Cause:** IDO O2 schedules register usage based on the return type of callees. When helpers are implicitly declared (C89 implicit `int` return), IDO allocates one set of saved registers and one frame size. When explicit typed prototypes are present (e.g., `s32 func_A(...)` or `s16 func_B(...)`), IDO changes its entire allocation plan for the calling function.

**Symptom:** Frame size jumps (e.g. 0xA0 → 0xB0), saved registers shift (s7→s8, s2→s3, etc.), resulting in thousands of differences.

**Fix:** Do NOT add forward declarations to the C source file inside `#ifdef NON_MATCHING`. Instead:
1. Ensure the helper functions are also wrapped in `#ifdef NON_MATCHING` / `#else #pragma GLOBAL_ASM` blocks **earlier in the same file**.
2. When building with `NON_MATCHING=1`, helpers are compiled from their C implementations, making them visible as proper declarations to later functions in the same translation unit — no explicit prototypes needed.
3. When building without `NON_MATCHING`, all functions fall back to `#pragma GLOBAL_ASM` so no C declarations are present.

**Example (AD60.c, func_8000B044_BC44):**
```c
// WRONG: adds explicit declarations → frame 0xB0, wrong regalloc
s32 func_8000A2B8_AEB8(u8 *arg0, s16 arg1);
s16 func_8000A43C_B03C(s8 *arg0);

#ifdef NON_MATCHING
void func_8000B044_BC44(void) {
    // ...calls to both helpers...
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000B044_BC44.s")
#endif

// CORRECT: no explicit declarations; helpers defined earlier in #ifdef NON_MATCHING blocks
#ifdef NON_MATCHING
void func_8000B044_BC44(void) {
    // ...calls to both helpers — they are visible because they're compiled from C above...
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/AD60/func_8000B044_BC44.s")
#endif
```

**Key insight:** The `#ifdef NON_MATCHING` wrapper on the calling function relies on all required helper declarations being provided implicitly by the same-file C implementations of those helpers, which are only active during `NON_MATCHING=1` builds. This is the correct pattern — don't break it by adding extra forward declarations.

**Contrast with** `void-forward-declaration-v0-vs-v1-regalloc.md`: that case adds a `void` declaration to fix a `v0/v1` issue. The present case is the opposite: adding non-void typed declarations causes damage. Both effects come from IDO's sensitivity to declared return types when scheduling registers around call sites.
