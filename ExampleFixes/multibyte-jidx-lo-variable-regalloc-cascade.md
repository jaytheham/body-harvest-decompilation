### Multi-byte character index: removing `lo` variable fixes cascade register allocation

**Symptom:** Large register allocation mismatch (score ~505) across the entire function. Tables D_80031650_32250 and D_80031720_32320 are in wrong registers, constant 0x20 is in wrong register, jidx in wrong register, ptr[1] in wrong register.

**Root Cause:** In a text-parsing loop with a multi-byte character case, the pattern:
```c
u8 lo = ptr[1];
s32 jidx = *ptr & 0x7F;
jidx = (jidx << 8) + lo;
result += D_80031720_32320[jidx * 2 + 1];
```
...causes the named `u8 lo` variable to occupy `$a1` (the first free argument register), pushing `jidx` to `$a2`. This cascades: `D_80031720_32320` base can't occupy `$a3`, so it goes to `$t1`; then `D_80031650_32250` goes to `$t2` (instead of `$t1`); and the constant 0x20 goes to `$a3` (instead of `$a2`).

**Fix:** Remove the named `lo` variable. Compute `ptr[1]` inline:
```c
s32 jidx = (*ptr & 0x7F) << 8;
jidx += ptr[1];
result += D_80031720_32320[jidx * 2 + 1];
```
With `s32 jidx` as the only declared variable, IDO allocates:
- `jidx` → `$a1` (first free arg register)
- `ptr[1]` loaded in delay slot of `beql` → `$t2` (temp)
- `D_80031650_32250` base → `$t1`
- `D_80031720_32320` base → `$a3` (freed from initial *ptr check)
- constant `0x20` → `$a2` (freed from ptr variable)

**Score:** 505 → 10 (only the switch jtbl load address remains wrong, unrelated to this fix).

**Note on remaining jtbl mismatch:** The switch jtbl address (`lui at, 0x8003` vs `0x8004`) requires all functions in the file that generate jtbls to be compiled simultaneously (`drawText`, `func_8000B044_BC44`). Until those are matched, the compiled `.rodata` for this function lands at the wrong ROM offset.

Applied in `func_8000A2B8_AEB8` (AD60.c).
