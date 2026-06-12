### s32 temp var + (u32) cast forces separate registers for comparison vs multiplication

When a `u8` parameter is used both for a comparison (`arg0 < 8`) and as a multiplier (`arg0 * 0x170`), and you need these to use **different registers** (v1 for the comparison, a2 for the multiplication), declare a temp as `s32` (not `u8`) and cast the multiplication operand to `(u32)`.

**Symptom:** Target uses `sll t0, a2, 0x2` but current generates `sll t0, v1, 0x2`. Also, target has `lbu a2, 0x2B(sp)` to reload a2 after a function call, but current omits it because it uses v1 instead.

**Root cause:** With `u8 temp_v1 = arg0;` and `arg0 * 0x170`, the compiler sees both `temp_v1` and `arg0` as the same `u8`-derived value, deduplicates them, and uses only `v1` for all operations. This prevents a2 from being saved/restored around function calls, causing missing `lbu a2` instructions.

**Fix:**
```c
// ❌ BAD - u8 temp_v1 causes register deduplication
void func(u8 arg0) {
    u8 temp_v1;
    temp_v1 = arg0;
    // ...
    if (temp_v1 < 8 && ...) {
        *(s16*)&D_arr[arg0 * 0x170] = val;  // uses v1, not a2
    }
}

// ✅ GOOD - s32 temp_v1 + (u32) cast keeps registers separate
void func(u8 arg0) {
    s32 temp_v1;
    temp_v1 = arg0;
    // ...
    if (temp_v1 < 8 && ...) {
        *(s16*)&D_arr[(u32)arg0 * 0x170] = val;  // uses a2
    }
}
```

**Why this works:**
- `s32 temp_v1 = arg0` creates a 32-bit variable (promoted from u8) that the compiler tracks independently from the original `arg0` parameter
- `(u32)arg0 * 0x170` creates an expression of type `u32` that the compiler cannot deduplicate with `s32 temp_v1`
- The compiler saves/restores `a2` (the zero-extended arg0) around function calls because it's needed for the (u32) cast expression
- `temp_v1` in `v1` is used for the comparison (`slti at, v1, 8`)
- `arg0` in `a2` is used for the multiplication (`sll t0, a2, 2`)
- Stack layout is correct because `s32` (not `u8`) temp_v1 reserves the expected word-sized stack slot at the expected offset
