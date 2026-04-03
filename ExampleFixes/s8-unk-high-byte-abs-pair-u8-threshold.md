### s8 high-byte tile coord abs-pair with u8 threshold: variable types and branch direction

#### Pattern: abs(x - arg0) < threshold and abs(z - arg1) < threshold

When a function extracts signed tile coordinates by taking the high byte of s16 struct fields
(`(s8)(field >> 8)`) and computes abs-pair distance checks against a threshold parameter:

**Correct parameter types:**
- Tile coord args (`arg0`, `arg1`): `s8` → triggers `sw a0`/`sw a1` saves + `sll/sra` sign-ext
- Threshold arg (`arg2`): `u8` → triggers `sw a2` save + `andi a2, 0xFF` normalization

**3 saves before loads**: `u8 arg2` causes `sw a2, 8(sp)` to appear. All 3 arg saves fill the 
`lw v1` load-delay slots, allowing `lh v0` + `lh a3` to be issued back-to-back early.

**Precomputed named s8 locals for both fields:**
```c
s8 x = (s8)(D_80052B34->unk0 >> 8);  // → loads into v0 (first free named reg), chain via t2,t3,t4
s8 z = (s8)(D_80052B34->unk4 >> 8);  // → loads into a3 (second named reg, deferred-spill back to a3!)
```
- Declaring `x` first forces `lh v0, 0(v1)` early, with chain written back to t4
- Declaring `z` second forces `lh a3, 4(v1)` early, with final `sra a3, t6, 24` schedulable in
  the `bltz` delay slot
- Having two named s8 locals forces IDO to interleave the arg0 sign-ext chain with the unk0>>8
  chain, giving `sra t2, v0, 8` between `sll t6, a0, 24` and `sra a0, t6, 24` (interleaved scheduling)
  which produces the correct t2,t3,t4 register assignment for the unk0 chain.

**Branch direction for abs: `if (dx >= 0) { abs_dx = dx; } else { abs_dx = -dx; }`**
- IDO inverts `if (dx >= 0)` to `bltz t0` (test for negative → jump to negu body)
- The positive case (identity `move v0, t0`) ends up as the `b` delay slot
- `if (dx < 0)` would give `bgez` (wrong direction!)
- WRONG: `if (dx < 0) { abs_dx = -dx; } else { abs_dx = dx; }` → generates `bgez`
- CORRECT: `if (dx >= 0) { abs_dx = dx; } else { abs_dx = -dx; }` → generates `bltz`

**Full matched pattern (func_80004818_5418):**
```c
s32 func_80004818_5418(s8 arg0, s8 arg1, u8 arg2) {
    s8 x = (s8)(D_80052B34->unk0 >> 8);
    s8 z = (s8)(D_80052B34->unk4 >> 8);
    s32 dx, dz, abs_dx, abs_dz;

    dx = x - arg0;
    if (dx >= 0) {
        abs_dx = dx;
    } else {
        abs_dx = -dx;
    }
    if (abs_dx < arg2) {
        dz = z - arg1;
        if (dz >= 0) {
            abs_dz = dz;
        } else {
            abs_dz = -dz;
        }
        if (abs_dz < arg2) {
            return 1;
        }
    }
    return 0;
}
```
