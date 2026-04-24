### gSPMatrix macro forces v1 for display-list pointer (vs v0 with explicit local)

**Context:** Functions that write a gSPMatrix (or similar gDma1p-based) display-list entry
to `D_8005BB2C`, then immediately call `func_8008D98C_5DE3C(&D_8005BB2C)`.

**Problem:** The target uses `lw v1, 0(a0)` for the `dl` pointer, but hand-written C with
an explicit `Gfx *dl = D_8005BB2C` local always produces `lw v0, 0(a0)`.

**Root cause:** gDma1p macro declares `Gfx *_g = (Gfx *)(pkt)` inside a block scope `{...}`.
When `pkt` is `D_8005BB2C++` (post-increment), IDO processes the post-increment expression
differently from a plain assignment, allocating the pointer result into v1 instead of v0.

**Solution (score 0):**
```c
gSPMatrix(D_8005BB2C++, (Mtx *)((u32)&D_80031160 & 0x1FFFFFFF), G_MTX_LOAD | G_MTX_MODELVIEW);
return func_8008D98C_5DE3C(&D_8005BB2C);
```

**Wrong forms (score 20 — v0 instead of v1 for dl):**
```c
Gfx *dl;
dl = D_8005BB2C;
D_8005BB2C = dl + 1;
dl->words.w0 = 0x01020040; dl->words.w1 = (s32)&D_80031160 & 0x1FFFFFFF;
return func_8008D98C_5DE3C(&D_8005BB2C);
```
Even declaring `s32 ret;` before `Gfx *dl;` does not change the allocation — IDO still uses v0 for dl.

### Companion: single-line stores enable critical-path store reordering

The two word-store assignments `dl->words.w0 = constant; dl->words.w1 = address;` must be on
**one logical C line** (same preprocessed line). gDma1p's multi-line macro body collapses to
one preprocessed line when the macro is invoked on a single source line.

With both stores on one line, IDO's scheduler freely reorders them by critical path:
- Address computation (lui + addiu + and = 3 ops) → stored BEFORE jal
- Constant (lui + ori = 2 ops, already computed) → stored IN jal delay slot

**Wrong (separate lines — IDO preserves C order, constant stored before jal):**
```c
dl->words.w0 = 0x01020040;
dl->words.w1 = (s32)&D_80031160 & 0x1FFFFFFF;
// → sw t7,0(v0) before jal; sw t9,4(v0) in delay slot (WRONG order)
```

**Correct (one line — IDO reorders, address stored before jal):**
```c
dl->words.w0 = 0x01020040; dl->words.w1 = (s32)&D_80031160 & 0x1FFFFFFF;
// → sw t9,4(v1) before jal; sw t7,0(v1) in delay slot (CORRECT)
```
Or use the gSPMatrix macro (whose body is always on one preprocessed line).

### Register allocation for w0 constant vs w1 address

The constant (0x01020040) must appear FIRST in C order to claim t7 (first t-register).
The address (&D_80031160) appears second and claims t8. IDO then computes:
- `and t9, t8, at` for the masked address (t9 is the store register for w1)
- `sw t7, 0(v1)` in delay slot for the constant (w0)

If address appears first (original order), it claims t7, and the `and` executes before
the `ori` for the constant — producing wrong instruction scheduling (score 260).
