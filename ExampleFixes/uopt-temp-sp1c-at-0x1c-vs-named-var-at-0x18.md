### uopt temp for arg2 lands at 0x1c; named s32 local displaces it to 0x18

When a function spills `arg2 & 0xFFFF` across a `jal` call (in the delay slot)
and that value is used afterwards for a comparison, the spill slot placement
depends on whether you declare a named `s32` local or let the compiler create
a uopt temp.

**Symptom**: `sw v1, 0x1c(sp)` (target) vs `sw v1, 0x18(sp)` (current).
Any named `s32` local in the function creates a phantom slot at `0x1c` (the
higher user slot), pushing the spilled arg2 value down to `0x18`.

**Wrong (named local — phantom takes 0x1c, sp1C goes to 0x18):**
```c
s32 sp1C = arg2;
s32 diff = arg1 - arg0;
f32 temp_f0 = (f32)(((f64)(f32)sins(((sp1C >> 1) - 0x4000)) / 32768.0) + 1.0);
if (sp1C < 0x8000) { ... }
return arg1;
```

**Correct (no named sp1C — uopt temp for arg2 goes to 0x1c):**
```c
s32 diff = arg1 - arg0;
f32 temp_f0 = (f32)(((f64)(f32)sins(((s32)arg2 >> 1) - 0x4000) / 32768.0) + 1.0);
if ((s32)arg2 < 0x8000) { ... }
return arg1;
```

Removing the named `s32 sp1C = arg2` causes the compiler to create a **uopt temp**
for the `andi v1, a2, 0xffff` value (arg2 & 0xFFFF). This uopt temp naturally
lands at `sp+0x1c` — matching the target. The named variable `diff = arg1 - arg0`
(declared first) is a phantom that doesn't persist across the `jal`, so by the
not-last rule its slot is removed, leaving only the uopt temp at `0x1c`.

**Why diff = arg1 - arg0 is still needed**: Declaring `s32 diff = arg1 - arg0`
BEFORE the `sins()` call forces the compiler to load `arg1` first (into `a0`)
and `arg0` second (into `a1`) after the jal returns. Without this, the compiler
loads `arg0` into `a0` first (because it appears first in `(f32)arg0 + ...`),
giving the wrong a0/a1 register allocation.

**Also required**: omit `& 0xFFFF` from the `sins()` argument. With the explicit
mask, IDO generates `addiu t7, ...; andi a0, t7, 0xffff` (wrong order). Without
it, IDO generates the correct `addiu a0, a0, offset; andi t7, a0, 0xffff; ... jal`.
See also: `sins-coss-int-expr-no-0xffff.md`.

From `func_80006654_7254` in `src.us/core/53F0.c` (score went 30 → 8 → 0).
