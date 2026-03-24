### Block-scoped `s32 lo` with if/else assignment vs top-level named variable

When a function computes a "clamped" intermediate value (e.g., `clamp(arg1 - K, MIN, MAX)`) and uses it in a `slt` comparison:

**Key pattern (target):**
```asm
addiu v0, a1, -0x4B0     ; intermediate in v0 (first CSE temp)
slti  at, v0, -0x8000    ; check overflow
beqz  at, label           ; if no overflow, branch
 move v1, v0             ; [delay] lo = no-clamp value (v1 = result register)
b     label
 li   v1, -0x8000        ; [delay] lo = clamped value
label:
lh    v0, 0(a0)           ; xCoord in v0 (recycled from intermediate)
slt   at, v0, v1          ; xCoord < lo (v0 vs v1)
```

**What generates this pattern:**
```c
s32 lo;
if (arg1 - 0x4B0 < -0x8000) {
    lo = -0x8000;
} else {
    lo = arg1 - 0x4B0;
}
if (arg0->xCoord >= lo) { ... }
```

- Declare `s32 lo` **inside the if-block** (block-scoped, not at function top level)
- Use `if (CONDITION) { lo = CONSTANT; } else { lo = EXPRESSION; }` (NOT ternary)
- Write the CONDITION using the raw expression `arg1 - 0x4B0 < -0x8000` (not a named variable)

**Why this works:**
- `arg1 - 0x4B0` is an anonymous CSE temp → compiler assigns it to v0 (first free)
- `lo` is the if/else **result** → compiler assigns it to v1 (second free)
- `beqz at, label; move v1, v0` in delay slot is generated because the else-path (no clamp) assigns `lo = arg1-0x4B0` (a register copy) and the compiler schedules this copy in the beqz delay slot
- v0 is then FREE to be recycled as `xCoord = lh v0, 0(a0)`
- The subsequent `slt at, v0, v1` (xCoord vs lo) has the correct operand order

**Wrong approaches and why:**
- `s32 lo, clo` at top-level + if/else: pre-allocates lo→v0 and clo→v1, BUT the jal clobbers v0/v1 causing the compiler to reassign lo to a different register (e.g., a1), causing the sign-extension prologue to use a2 instead of t6/t7
- Pure ternary `((expr) < B ? C : expr)`: swaps v0/v1 roles (result→v0, intermediate→v1), producing the wrong slt operand order
- `s32 lo, clo, hi, chi` at top-level: forces t6 for sign-extension (correct), but causes the compiler to assign lo→v1 and clo→v0 (v0/v1 swapped), yielding `slt at, v1, v0` instead of target's `slt at, v0, v1`

**For the maxY clamping** (after the lo check), use a ternary for the outer condition:
```c
if (arg0->xCoord < ((arg1 + 0x15B0) >= 0x8001 ? (s32)0x8000 : (s32)(arg1 + 0x15B0))) {
    return 1;
}
```
This correctly places maxY computation (`addiu v1, a1, 0x15B0`) in the delay slot of `bnez at, return_0` (the lo comparison branch), avoiding an extra instruction.
