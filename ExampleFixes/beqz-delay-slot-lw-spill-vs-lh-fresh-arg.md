### beqz delay slot: `lw v1, spill` vs `lh t0, arg_area` — two-register arg0 pattern

**Context:** A function with `s16 arg0`, an early jal call to check for duplicates, then struct-by-value
initialization using `arg0` in two roles:
 1. As **raw s16** (stored via sw, used for unk0 and unsigned index via `& 0xFFFF`)
 2. As **fresh signed** load (separately, for D_80031F04 s16 array indexing via `sll ×1`)

**Target assembly pattern (two-register, after successful beqz):**
```
beqz    v0, SUCCESS
 lw     v1, 0x4c(sp)       ← delay slot: reload ARG0 from compiler spill
SUCCESS:
lh      t2, 0x92(sp)       ← first instruction: fresh signed load
andi    t8, v1, 0xffff     ← second: unsigned index from spill value
```

**Current code pattern (one-register, score ~845):**
```
lw      v1, 0x4c(sp)       ← EXTRA (eager) instruction before beqz
beqz    v0, SUCCESS
 lh     t0, 0x92(sp)       ← delay slot: fresh load (only one arg0 path)
SUCCESS:
andi    v0, t0, 0xffff     ← v0 = t0 & 0xffff (t0 serves dual purpose)
```

**Root cause:**

The target function had an explicit `s32 sp4C = arg0` variable that the compiler treats as
DISTINCT from directly reloading arg0 from the parameter home area (sp+0x92). With sp4C as a
separate value, IDO creates two live ranges:
- v1 (from spill at 0x4C) — reloaded in beqz delay slot, used for unk0 and unsigned arrays
- t2 (fresh lh from 0x92) — used only for D_80031F04 signed index multiplication

Without the explicit sp4C, IDO uses a single loaded register (t0 from lh in the delay slot) for
all arg0 uses, producing a single-path pattern that doesn't match.

**The challenge:** IDO's dead-store elimination removes `sw v1, sp4C_addr` if sp4C's value can
always be reloaded from the parameter home area (which it can, since `sw a0, 0x90(sp)` is in
the prologue). Any attempt to make sp4C an explicit 4th declared variable causes IDO to either:
- Generate `lhu a0` directly (skipping v1 entirely), or
- Store `arg0 & 0xFFFF` (pre-anded) instead of raw arg0

**What works (score ~845):**
Two phantom `s32` variables (sp54, sp50) in declaration order AFTER the big struct ensure the
correct frame size (0x90) and place the compiler's AUTO-GENERATED spill at sp+0x4C. The
pre-jal `sw v1, 0x4c(sp)` IS generated correctly. The ONLY remaining issue is the beqz delay
slot scheduling choice.

**Stack layout with two-phantom approach (frame 0x90):**
- sp+0x00..0x3F: outgoing call region
- sp+0x44: saved $ra
- sp+0x4C: compiler-auto-spill for v1 (= arg0)
- sp+0x50..0x53: sp50 phantom (unused s32)
- sp+0x54..0x57: sp54 phantom (unused s32)
- sp+0x58..0x8F: Unk8006AA80Node struct (first declared = highest)

**Field initialization ordering matters:**
1. First: `unk0 = arg0` (src: v1 from spill, uses `sh v1, unk0_offset`)
2. Second: `unk6 = -1; unk0C = 0; unk8 = 0; unk0E = -1` (zero/minus-one batch)
3. Third: array results (unk2, unk24, unk20)
4. Fourth: load unk28 = D_8006AB18[0]->unk1C
5. Last: `unk22 = 0x40; unk0F = -1` (these two li's come as a LATE PAIR after array stores)

**Note on unk0F field type:** The struct field at offset 0x0F must be `s8 unk0F` (not `u8`).
If it's `u8`, the compiler generates `li reg, 0xff` (literal 255). With `s8`, it generates
`li reg, -1` (signed -1), matching the target's pattern where both unk0E and unk0F use the
same immediate value of -1.
