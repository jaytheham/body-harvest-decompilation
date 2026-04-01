### `u8` index argument with inline struct access generates `sw a0, 0x20(sp)` home save

When a function takes a `u8` arg used as a struct array index, and s16 args need to be
reloaded from the stack after a `jal`, IDO saves **all** incoming args (including the `u8`
index) to their home area (`sw a0, 0x20(sp)`, `sw a1, 0x24(sp)`, `sw a2, 0x28(sp)`) even
if the `u8` slot is never read back via `lbu`.

**Recognition signs in target assembly:**
- `andi tX, a0, 0xFF` at function entry (u8 zero-extension of index)
- `sw a0, 0x20(sp)` before `jal` even though `lbu/lh 0x23(sp)` never appears
- `lh a0, 0x2a(sp)` / `lh tX, 0x26(sp)` after jal for s16 arg reloads
- frame = -0x20, v1 (CSE'd struct pointer) spilled at `0x1c(sp)`

**Cause:** declaring `arg0` as `u8` causes IDO to home ALL incoming args to the stack
when it also needs to home the s16 args for cross-call reloads. The `u8`  index arg gets
`sw a0` even if its stack home is unused.

**Key:** do NOT declare a named local pointer. Use inline array access (`alienInstances[arg0].field`)
so the compiler CSE-lifts the pointer into a uopt temp at `0x1c(sp)` with `0x18` empty.

```c
// ❌ WRONG – s32 arg0 with masking, missing sw a0 home save
void func(s32 arg0, s16 arg1, s16 arg2) {
    alienInstances[arg0 & 0xFF].unk20 |= 0x1000;
    ...
}

// ✅ CORRECT – u8 arg0, inline access, no named pointer
void func(u8 arg0, s16 arg1, s16 arg2) {
    alienInstances[arg0].unk20 = alienInstances[arg0].unk20 | 0x1000;
    if ((func_800038E0_44E0() & 1) && (arg2 != -1)) {
        alienInstances[arg0].unk26 = (u8)arg2;
    } else {
        alienInstances[arg0].unk26 = (u8)arg1;
    }
    alienInstances[arg0].unk36 = 0;
}
```
