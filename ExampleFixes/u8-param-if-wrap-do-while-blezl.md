### `u8` param + `if (field > 0) { do { ... } while (field > 0); }` generates `blezl`/`bgtzl`

When a function loops while a struct field `> 0`, the control flow structure determines
whether the compiler emits `blezl` (branch-likely, delay-slot nullified on not-taken path)
or plain `blez` (delay slot always executed).

**Recognition signs:**
- Initial check: `blezl t8, early_exit` with `lw ra, 0x1c(sp)` in delay slot
- Loop back: `bgtzl t9, loop` with `lh a0, 6(s0)` in delay slot
- `andi s1, a0, 0xFF` at entry (u8 zero-extension into callee-saved s1)

**Key:** The `blezl` delay slot contains `lw ra, 0x1c(sp)` — only useful on the taken
(early return) path. To get this, the index (`arg0 & 0xFF`) must be computed into `s1`
*before* the branch, so the delay slot can be freed for `lw ra`.

**Fix:** Use `u8` parameter type and wrap the do-while inside `if (field > 0) { }`:

```c
// ❌ WRONG – s32 param + early return → blez (no delay slot load of ra)
void func(s32 arg0) {
    if ((s32) D_array[arg0 & 0xFF].unk4 <= 0) return;
    do {
        func_callee(D_array[arg0 & 0xFF].unk6, arg0 & 0xFF);
    } while ((s32) D_array[arg0 & 0xFF].unk4 > 0);
}

// ✅ CORRECT – u8 param + if-wrap → blezl/bgtzl with lw ra in blezl delay slot
void func(u8 arg0) {
    if (D_array[arg0].unk4 > 0) {
        do {
            func_callee(D_array[arg0].unk6, arg0);
        } while (D_array[arg0].unk4 > 0);
    }
}
```

**What changed:**
1. `s32 arg0` → `u8 arg0`: removes need for `& 0xFF` masking, compiler still emits
   `andi s1, a0, 0xFF` for zero-extension
2. `if (field <= 0) return;` → `if (field > 0) { ... }`: wraps the entire body
   including do-while in an if-block, giving the compiler room to schedule `lw ra`
   into the `blezl` delay slot since the early-exit path is separate
3. Removed `(s32)` casts on `u8` struct field (unnecessary — integer promotion
   already promotes to `int`/`s32`)
4. Removed `& 0xFF` on `arg0` (redundant for `u8`)
