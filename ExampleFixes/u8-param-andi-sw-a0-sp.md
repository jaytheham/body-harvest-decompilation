### u8 param generates `andi` + `sw a0, 0(sp)` for leaf functions

When a leaf function takes `u8 arg0` and uses it as a struct array index, IDO 5.3 generates:
1. `andi t6, a0, 0xff` — zero-extend u8 to s32 (from integer promotion)
2. `sw a0, 0(sp)` — save argument to caller's stack (argument home area)

If you use `s32 arg0` + `u8 idx = arg0` instead, the compiler generates:
1. `andi t6, a0, 0xff` — same essential instruction
2. But NO `sw a0, 0(sp)` — missing stack save

If you use `s16 arg0` + `(u8)arg0`, the compiler generates both `andi` and `sw a0, 0(sp)` BUT may swap the instruction order (`li <sizeof>` before `andi`), causing register allocation cascading differences.

**Fix**: Declare the parameter as `u8` (not `s32` or `s16`) when the target has both `andi a0, 0xff` and `sw a0, 0(sp)` as the first two instructions.

Example:
```c
// Target: andi t6, a0, 0xff; li a2, 0x50; sw a0, 0(sp); ...
s32 func(u8 arg0) {
    AlienInstance *alien = &alienInstances[arg0];
    // ...
}
```

Using `u8` ensures arg0 is treated as a byte value, generating the `andi` (zero-extend) and `sw a0, 0(sp)` (save arg) with the correct instruction ordering.

### Confirmed on a non-leaf clone transplant (`func_80089BCC_171C8C`, 2026-10-08)

The mechanism is not limited to leaf functions. `func_80089BCC_171C8C`
(`overlay_gameplay/inside/16AF30.c`, 162 instr) is **non-leaf** (it calls
`func_8008A1D8_172298`) and is a clone of the matched donor `func_800CD7FC_DC7AC`
(`overlay_gameplay/outside/CFE30.c`, `u8 arg0`). The wrapped guess declared
`s32 arg0` + `arg0 & 0xFF`: `check` **225** (marker `CURRENT(192)` stale), and
`ins_diff` aligned *every* instruction except **one missing row** - the
`sw $a0, 0x40($sp)` argument home. Retyping the parameter to `u8 arg0` (dropping
the `& 0xFF`) reproduced the home and `check` went to **0**.

Two mechanical points when the rest of the body is already right:

- The prototype must change with the definition (`include/functions.us.h`,
  `void func_80089BCC_171C8C(u8 arg0);`); `s32` vs `u8` is `conflicting types`.
- `include/functions.us.h` is a make prerequisite, so one prototype line forces a
  **full** rebuild - start `make --jobs=8` in the background, never a foreground
  `check`. The prototype retype also recompiles the caller TU (the sole caller
  passes `i & 0xFF`, which stayed ROM-neutral here); trust the sha1 `gate`, not
  `check` 0 alone.
The same transplant and the same lever landed the sibling `func_8008B534_5B9E4`
(`overlay_gameplay/frontend/52690.c`, 166 instr) off the same donor - the
`while ((index != -5) && (index != -6))` loop restored from the donor (the guess
used a `do/while` with early `return`s and a pointer local) plus the `u8 arg0`
retype; `check` 0, gate PASSED. This file has no header prototype, so only the
definition changed.

### A hoisted global address above the entry `andi` is the same defect (func_80087A40_16FB00, 2026-10-08)

`func_80087A40_16FB00` (`overlay_gameplay/inside/16AF30.c`, 158 instr) is the fourth and last
member of the `func_800CD7FC_DC7AC` (`CFE30.c`) clone family, and here the `u8` retype moves
more than the argument home. With the donor-shaped body committed (`while` loop, direct
`D_800FB6F8[arg0].unk6` / `D_800FB7B0[...]` access) it measured **295** at `objdump` 157
against the target\s

### A hoisted global address above the entry `andi` is the same defect (func_80087A40_16FB00, 2026-10-08)

`func_80087A40_16FB00` (`overlay_gameplay/inside/16AF30.c`, 158 instr) is the fourth and last
member of the `func_800CD7FC_DC7AC` (`CFE30.c`) clone family, and here the `u8` retype moves
more than the argument home. With a donor-shaped body in place (`while` loop, direct
`D_800FB6F8[arg0].unk6` / `D_800FB7B0[...]` access) it measured **295** at `objdump` 157
against the target's 158, and the *first* differing row was the head schedule: with
`s32 arg0` plus an explicit `u8 slot = arg0 & 0xFF;` IDO emits

    lui   v1, %hi(D_8005BB2C)        <-- the first gDPPipeSync base, hoisted above the andi
    addiu v1, v1, %lo(D_8005BB2C)
    andi  t6, a0, 0xFF

where the target emits the `andi` first and the `D_8005BB2C` address after it. Declaring the
parameter `u8` makes the `andi` part of cfe's *entry* code rather than of the subscript
expression, so the andi leads, the argument home `sw $a0, 0x40($sp)` appears, and the four
callee-saved saves that ride with the extra live values come back: **295 -> 0 on the u8 retype
alone**, ROM byte-identical.

So the tell is not only "an `andi` plus a missing `sw a0` home": a *hoisted global address*
sitting above the entry `andi` is the same defect seen from the scheduler's side, and both go
away with the `u8` parameter.
