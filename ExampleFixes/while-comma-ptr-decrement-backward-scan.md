### `while (ptr--, i--)` backward pointer scan: `i = 0x10`, `ptr = base + 1`

When a loop scans a struct array backwards with `bnez s1; addiu s1,-1` (delay slot) at the bottom AND also has `addiu s0,-stride` (pointer decrement) just before the branch, the original C pattern is a `while` with a comma-expression:

```c
entry = &D_8014F7DE + 1;  // one element PAST the start
i = 0x10;
while (entry--, i--) {
    // body uses entry after decrement
}
```

IDO -O2 folds the initialization so that:
- `s0 = &D_8014F7DE` (= base + 1 - 1 pre-applied, compiler folds the +1 with the first loop decrement)
- `s1 = 0xF` (= 0x10 - 1, compiler pre-applies the first `i--`)

The loop condition and decrement are moved to the **bottom** (do-while conversion), generating:
- `or v0, s1, zero` at end of body (materializes old `i` value from `i--`, before the decrement in delay slot)
- Same `or v0, s1, zero` as delay slot in any `beql/beqzl` branches that skip to the loop bottom
- `addiu s0, s0, -stride` (pointer decrement, just before branch)
- `bnez s1, loop_top; addiu s1, -1` (delay-slot decrement)

**Key signatures:**
- Init: `addiu s1, zero, 0xF` (not 0x10!)
- Init: `s0 = &base` (not `&base + stride`)
- Loop bottom: `or v0, s1, zero` then `addiu s0, -stride` then `bnez s1` + `addiu s1,-1` delay
- Skip branches: delay slot = `or v0, s1, zero`

Using `do { ... entry--; } while (i-- != 0)` instead generates `sltu v0,zero,s1` + `bnez v0` (different pattern).

Reference matched function: `func_800A9238_B81E8` in B2CB0.c
