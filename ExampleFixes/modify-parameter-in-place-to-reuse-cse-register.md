### Modify parameter in place to reuse CSE temp register for sllv

When a function needs `arg1 * 4` for two different shift operations (a right shift for extraction and a left shift for insertion), but the second shift uses `arg1` directly (producing `sllv t2, a2, a1`) instead of the multiplied value (target has `sllv t2, a2, t6`), the fix is to **modify the parameter in place**:

```c
// WRONG — sllv uses a1 (original arg1) instead of t6 (arg1*4):
temp_t7 = (*arg0 >> (arg1 * 4)) & 0xF;
if (((temp_t7 - 1) % 3) == 0) {
    *arg0 = *arg0 + (arg2 << arg1);        // ← sllv t2,a2,a1
    return temp_t7 + arg2;
}

// CORRECT — modify arg1 first, then both shifts use t6:
arg1 = arg1 * 4;
temp_t7 = (*arg0 >> arg1) & 0xF;
if (((temp_t7 - 1) % 3) == 0) {
    *arg0 = *arg0 + (arg2 << arg1);        // ← sllv t2,a2,t6
    return temp_t7 + arg2;
}
```

**Why this works:** In IDO, after `arg1 = arg1 * 4`, the compiler computes `arg1 * 4` into `t6` via `sll t6, a1, 2`. Since `arg1` is a local copy of the parameter, IDO keeps its new value in the same register where it was computed (`t6`). All subsequent uses of `arg1` in the function naturally reference `t6`, producing `sllv t2, a2, t6` instead of `sllv t2, a2, a1`.

**Alternative approaches that DON'T work:**
- Using `(arg2 << (arg1 * 4))` inline → CSE allocates to `t0` instead of `t6`, shifting all registers
- Using a named `s32` temp variable → gets allocated to `v1`, shifting all registers
- Using `(arg2 << (arg1 << 2))` → compiler doesn't CSE with `arg1 * 4`, adds extra `sll` instruction
- Using `u16` temp var for loaded value + `s32` temp for shift → reorders instructions, breaks delay slot

**Applies to:** Any case where a parameter value is used once as-is and once multiplied by a constant, and you need the multiplied version in a specific temp register (`t6`) rather than the original argument register (`a1`).

**Example:** `func_80078678_87628` in overlay_gameplay/outside/857E0.c
