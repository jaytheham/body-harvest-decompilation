### u8 parameters produce double `andi` and `sw argN, home-area(sp)`

When a function takes byte-sized arguments (`u8`) and passes them to another function
that also takes `u8`, IDO generates a characteristic double-`andi` pattern **plus** an
explicit `sw argN, 0x20(sp)` to the home area even if that slot is never read back.

**Recognition signs:**
- `andi s1, a0, 0xff` ← save byte value to callee-saved register at function entry
- `sw a0, 0x20(sp)` ← save **all** incoming byte args to their home slots (even unused ones)
- `lbu aN, 0x27(sp)` / `lbu aN, 0x2F(sp)` ← reload byte args for later function call
- `andi a0, s1, 0xff` ← double-mask when passing the saved byte value to a u8 parameter

**Cause:** when *any* u8 argument needs to be byte-extracted from the home area via
`lbu`, IDO saves **all** incoming args to the home area. The saved register gets the
double-andi because it is `u8` in a callee-save register being re-passed to another
`u8` parameter.

**Fix:** declare the function with `u8` (not `s32`) for the byte-sized parameters.
Replace `s32 arg0, s32 arg1, ..., s32 arg3` with `u8 arg0, u8 arg1, ..., u8 arg3`
and remove any explicit `arg & 0xFF` masking inside the body — the compiler will
generate the andi automatically.

**Example (func_800B41C8_C3178):**
```c
// ❌ WRONG – generates `move s1, a0` (deferred mask, missing sw a0)
void func_800B41C8_C3178(s32 arg0, s32 arg1, u8 *arg2, s32 arg3) {
    s16 b = arg0 & 0xFF;
    func_800B4050_C3000(b, arg1, arg2, arg3);
    ...
}

// ✅ CORRECT – generates `andi s1,a0,0xff` + `sw a0,0x20(sp)` + double andi
void func_800B41C8_C3178(u8 arg0, u8 arg1, u8 *arg2, u8 arg3) {
    s16 i;
    func_800B4050_C3000(arg0, arg1, arg2, arg3);
    ...
}
```

**Also note:** follow the counter-based inner loop with a `for` loop, not `do-while`,
to get the correct instruction scheduling for the loop initialiser vs the array base
address computation.  The DecompHints converting-do-while-to-for-loops.md pattern
applies here.
