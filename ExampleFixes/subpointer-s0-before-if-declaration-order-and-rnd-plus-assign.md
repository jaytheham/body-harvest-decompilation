### Sub-pointer before if + declaration order + rnd += for a2 self-modify

#### Pattern

Functions with early-exit (`if (condition) { ... }`) that access a struct via a sub-pointer
(`(s16 *)&D_80154318[arg0].unk8`) used across many function calls, and also compute a
`% 128 + 0x40` random value for a `u8` argument.

#### Key Lessons

**1. Declare the sub-pointer BEFORE the if** so IDO computes the struct base in v0 (pure temp)
and assigns the sub-pointer to s0 (callee-save) outside the if, then uses it inside:

```c
// CORRECT: entryData declared before the if, condition checks entryData[2]
s16 *entryData = (s16 *)&D_80154318[arg0].unk8;
if (entryData[2] & 1) { ... }

// WRONG: declaring inside the if or using D_80154318[arg0].unkC directly
if (D_80154318[arg0].unkC & 1) { ... }
```

This triggers the "early exit" optimization: base address goes into v0 (pre-prologue),
s0 = v0+8 is set inside the if body after the prologue saves old s0. Without this,
IDO CSEs entryData[2] == unkC from the condition into v0, preventing the proper s0 setup.

**2. Declare sp2C BEFORE entryData** to get sp2C at sp+0x2C (not sp+0x28):

```c
s32 sp2C;                                   // first → gets sp+0x2C (highest user slot)
s16 *entryData = (s16 *)&D_80154318[arg0].unk8;  // second → s0, no stack slot needed
```

The IDO cfe temp for the sins() return value occupies sp+0x28, pushing sp2C up to sp+0x2C.

**3. For `add.d` operand order**: put `entryData[4]` FIRST in the double addition
to get `add.d f10, f4, f8` (scaled_sins result f4 second op → first in add due to scheduling):

```c
(s16)(s32)(entryData[4] + ((f64)(f32)sins(...) / 32768.0) * D_80144028_152FD8)
// not: ((f64)(f32)sins(...) / 32768.0) * D_80144028_152FD8 + entryData[4]
```

**4. Remove explicit `& 0xFFFF` from sins() argument** — rely on implicit unsigned short
conversion. This generates `subu a0, t4, t3` then `andi t5, a0, 0xffff` as a SEPARATE
instruction before the jal (not in the delay slot).

**5. For `% 128 + 0x40` as a u8 arg**: use explicit `rnd += 0x40` compound assignment
and pass `rnd` (not `rnd & 0xFF`) to the u8 parameter. IDO generates:
- `addiu a2, a2, 0x40` (self-modify on a2 holding rnd)
- `andi t4, a2, 0xff; move a2, t4` (u8 truncation pattern for the callee)

```c
// CORRECT: compound assignment + implicit u8 truncation
s32 rnd;
rnd = func_800038E0_44E0() % 128;
rnd += 0x40;
func_call(..., rnd, ...);  // rnd passed to u8 param, implicit & 0xFF

// WRONG: explicit & 0xFF in expression (generates addiu t4, a2, 0x40 — no self-modify)
func_call(..., ((func_800038E0_44E0() % 128) + 0x40) & 0xFF, ...);
```

**6. Declare `rnd` at the TOP of the if block** (C89 style, declarations before statements):

```c
if (...) {
    s32 rnd;         // declaration at top
    sp2C = func1(...);
    rnd = func2() % 128;
    rnd += 0x40;
    func3(..., rnd, ...);
}
```

#### Context

Observed in `func_800D9C98_E8C48_E8C48` (CFE30.c). The function uses a sin-based
position calculation for a special effect, then randomizes color and spawns particle effects.
