### Nested if-else eliminates result variable, fixing cfe temp stack offset

When the target assembly uses `v0` directly for the return value (setting `v0 = 1` in a branch delay slot and `v0 = 0` in the else path) instead of a named result variable, declaring `s32 result` in C causes a cfe temp spill to land at the wrong stack offset.

**Observed pattern:** Only two instructions differ — the cfe temp pointer is saved at `sp+0x18` instead of `sp+0x1C`:

```
TARGET:  sw v1,0x1c(sp)     CURRENT:  sw v1,0x18(sp)
TARGET:  lw v1,0x1c(sp)     CURRENT:  lw v1,0x18(sp)
```

Everything else (including structural diff) is identical.

**Root cause:** Declaring `s32 result` consumes a stack slot that pushes the compiler cfe temp (the saved `&alienInstances[arg0]` pointer) from `sp+0x1C` to `sp+0x18`. Instead of fighting the slot with padding variables, **eliminate the `result` variable entirely** and restructure to avoid it.

**The fix:** Change from:
```c
s32 result;
// ...
if (-maxTurn >= diff) {
    inst->unk6 -= maxTurn;
    result = 1;
} else if (maxTurn < diff) {
    inst->unk6 += maxTurn;
    result = 1;
} else {
    return 0;
}
return result;
```

To:
```c
// No result variable!
if (-maxTurn >= diff) {
    inst->unk6 -= maxTurn;
} else {
    if (maxTurn < diff) {
        inst->unk6 += maxTurn;
    } else {
        return 0;    // early return for the 0 case
    }
}
return 1;            // shared epilogue for the 1 cases
```

**Why it works:**
- The nested `if-else` with `return 0` inside and `return 1` at the end generates the same control flow as the target's `v0 = 1` (delay slot) and `v0 = 0` (else branch with shared epilogue).
- Without a `result` variable, the compiler has one fewer declared local, which shifts the cfe temp pointer to the correct `sp+0x1C` offset.
- The structural diff stays clean since the branching logic is equivalent.

**Key insight:** If the target branch delay slot already contains `li v0, 1` (setting the return value unconditionally) and only the else path clears it (`move v0, zero`), the C code doesn't need a `result` variable. Use early return for the zero case and a trailing `return 1` for the non-zero cases.
