# Named pointer for captured `next` causes phantom slot + misses v0→s1 split live range

## Symptom
A linked list traversal loop where the "next" pointer must be captured BEFORE the body modifies it (via `alLink`) shows:
1. `addiu s2, sp, 0x44` instead of `addiu s2, sp, 0x40` (OSMesg buffer at wrong offset)
2. `lw s1, 0(s0)` instead of `lw v0, 0(s0)` at the start of the loop
3. Missing `move s1, v0` in the delay slot of the beqz
4. `sw s1, 4(s2)` instead of `sw v0, 4(s2)` inside the loop body

## Root Cause
When `Unk80042DB8 *temp_v0` (or any named pointer/integer variable) is declared as a user variable to capture `var_s0_2->unk0` before the loop body runs, IDO:
1. Allocates it directly to s1 (one-step load `lw s1, 0(s0)`) rather than computing via v0 first
2. Also allocates a phantom 4-byte "home" stack slot for the variable, displacing the OSMesg buffer address

The TARGET behavior requires IDO to:
1. Load `s0->unk0` into v0 (as a compiler-managed expression result, not named variable)
2. In the delay slot of the conditional `beqz`, copy `v0 → s1` for post-call use
3. Use v0 directly for the pre-call store (`sw v0, 4(s2)`)
4. Use s1 for the post-call loop test (`bnez s1`)

## The Problem
The captured next pointer is needed both BEFORE function calls (for `D_80042DA8.unk4 = temp_v0`) and AFTER function calls (for loop control and advance). Without a named variable, `var_s0_2->unk0` would be modified by `alLink` before the while-condition evaluates it, making direct inline access semantically incorrect.

## Current Status (func_80000D0C_190C)
Score 215, NON_MATCHING. The cleanest correct code (with proper semantics) uses a named `Unk80042DB8 *temp_v0`, which gives 4 instruction differences. No way found to have:
- Semantically correct linked list traversal (next captured before body modifications)
- AND no phantom stack slot for the captured pointer
- AND v0→s1 split live range behavior

## Pattern Reference
```c
/* NON_MATCHING - 4 differences */
var_s0_2 = D_80042DA8.unk4;
if (var_s0_2 != NULL) {
    Unk80042DB8 *temp_v0; /* ← named ptr causes phantom slot */
    do {
        temp_v0 = var_s0_2->unk0;    /* loaded to s1 directly (not v0) */
        if ((u32)(var_s0_2->unkC + 1) < (u32) D_800431A0) {
            if (var_s0_2 == D_80042DA8.unk4) {
                D_80042DA8.unk4 = temp_v0;  /* sw s1 instead of sw v0 */
            }
            alUnlink((ALLink*)var_s0_2);
            if (D_80042DA8.unk8 != NULL) {
                alLink((ALLink*)var_s0_2, (ALLink*)D_80042DA8.unk8);
            } else {
                D_80042DA8.unk8 = var_s0_2;
                var_s0_2->unk0 = NULL;
                var_s0_2->unk4 = NULL;
            }
        }
        var_s0_2 = temp_v0;
    } while (temp_v0 != NULL);
}
```

## Key Observations
- Pointer and non-pointer (s32/u32) named variables BOTH cause phantom slots
- Function-level AND block-scoped declarations both cause phantom slots
- The not-last exemption does NOT suppress phantom slots for pointer declarations
- The TARGET code must have used `temp_v0` as a compiler-managed uopt temp (no user declaration), but the semantics require it to be captured before `alLink` modifies `var_s0_2->unk0`
- The v0→s1 split live range happens naturally when IDO treats the value as an expression result (not named), loading to v0 first, then saving to callee-save s1 in the beqz delay slot
