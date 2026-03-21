### Forcing an s16 local to a specific stack offset using a struct

When IDO places used variables at the lowest available stack slots (overriding declaration order), unused padding variables won't push the real variable to the desired offset.

Use an anonymous struct instead. Struct members always maintain their C-declared order (low-to-high addresses), so the layout is predictable.

**Pattern:** s16 `sp26` needs to land at `sp+0x26`, with saved `$ra` at `sp+0x1C`. The 6-byte gap between `0x1C+4=0x20` and `0x26` is filled with `{ s32 temp_v0; s16 pad; s16 sp26; }`.

**Key:** IDO can optimize away the `sw` for `temp_v0` (the first struct member) when:
1. `temp_v0` is assigned the return value of a function call, AND
2. `sp26 = (s16)temp_v0` appears immediately after (even before the `if` check)
3. The comparison `if (temp_v0 != -3)` uses the raw `v0` register

IDO fuses the two assignments and emits `sh v0, 0x26(sp)` in the delay slot of the `beq`, skipping the `sw` for `temp_v0` entirely.

**C code pattern (matches func_800DA994_E9944 and func_800D9F60_E8F10):**
```c
struct {
    s32 temp_v0;
    s16 pad;
    s16 sp26;
} vars;

vars.temp_v0 = func_800D99F4_E89A4(...);
vars.sp26 = (s16)vars.temp_v0;
if (vars.temp_v0 != -3) {
    func_800153D8_15FD8(0x183);
    func_800D9A8C_E8A3C(vars.sp26, 0, ...);
}
```

**Generated assembly pattern:**
```
jal     func_800D99F4_E89A4
  ...                          ; delay slot
li      at, -3
beq     v0, at, skip
  sh    v0, 0x26(sp)           ; delay slot: stores sp26 = (s16)v0 (no sw for temp_v0!)
...
jal     func_800D9A8C_E8A3C
  move  a1, zero               ; delay slot (or lh for sp26 reload)
```

Note: If instead the `sh` appears inside the `if` body (delay slot of a nested `jal`), additional code refactoring may be required — but the same struct layout still works.
