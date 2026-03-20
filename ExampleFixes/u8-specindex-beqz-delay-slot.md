### `u8 specIndex` at function scope → `lbu v0` in beqz delay slot

When a function begins with `if (flags & FLAG) { /* active path */ }` and the active path's first operation is loading `specIndex` from the alien instance, declaring `u8 specIndex = alienInstances[arg0].specIndex` **before the if block** (at function scope) causes IDO to:
1. Assign v0 to specIndex (first temp register)
2. Move the specIndex load into the beqz delay slot (`lbu v0, 0x1a(v1)`)
3. Use v0 for the subsequent `multu v0, t1` (specIndex × 0x68)

Without this, a `s16 result` declaration pre-claims v0 (for the jal return value), causing IDO to use t3 for specIndex and put `move v0, zero` in the delay slot instead (a cascading one-register shift throughout the whole function).

The specIndex load in the delay slot is "safe" even for the branch-taken (early-exit) path because the return-0 label overwrites v0 with `move v0, zero` anyway.

After the jal (which overwrites v0 with the return value), use inline `alienInstances[arg0].specIndex` for post-call space accesses (IDO reloads from memory) rather than the named `specIndex` variable.

**Key pattern**:
```c
s32 func_name(u8 arg0, s16 *arg1)
{
    u8 specIndex = alienInstances[arg0].specIndex; /* → v0, enables beqzl delay slot lbu */
    s16 result;  /* → v0 after jal (no conflict: different live ranges) */

    if (alienInstances[arg0].unk20 & 0x1A0) {
        if (alienSpecs[specIndex].unk54 & 0x40) { ... }
        result = func_call(arg0);
        if (...result...) { *arg1 -= alienSpecs[alienInstances[arg0].specIndex].unk42; }
        if (...result...) { *arg1 += alienSpecs[alienInstances[arg0].specIndex].unk42; }
        return 1;
    }
    return 0;
}
```
