# IDO CSE/GVN dead-code `move v0,t6` in jal delay slot

## Symptom
Target assembly has `sll t6,v0,2 ; negu t7,t6` for a pair of array accesses with one positive and one negative index, followed by `jal func ; move v0,t6` (dead instruction in delay slot). The `lw` for the second argument appears BEFORE the jal, with the dead `move v0,t6` filling the delay slot.

## Root cause
IDO's GVN (Global Value Numbering) pass deduplicates a repeated inline expression `D_global * 4` when it appears twice in the same function-call argument list. It computes it once into `t6` via `sll t6, v0, 2`. Separately, IDO emits `or v0, t6, zero` (= `move v0, t6`) as a "home-register update" — assigning the CSE result back to v0 (which originally held `D_global`). This `or v0, t6, zero` instruction is dead (v0 is overwritten immediately by the callee's return) but IDO schedules it as-is, and the delay-slot filler picks it up as the last movable instruction before the jal.

## Key rule
- **Inline the expression twice**: `D_global * 4` must appear literally twice in the C source (once per argument). An intermediate `temp_t6 = D_global * 4` variable prevents the CSE home-register update from appearing.
- For the negative-offset argument, use `+ (-(D_global * 4))` (explicit unary minus on the product), NOT `- (D_global * 4)`. The subtraction form forces IDO to compute the FULL address (lui + addiu + subu + lw 0), whereas the addition-of-negation form uses the hi/lo split (lui + negu + addu + lw %lo).

## Correct pattern (score 0)
```c
func_8000DC9C_E89C(
    *(s32*)((u8*)D_8005BB48 + D_80031B84 * 4),
    *(s32*)((u8*)D_8005BB4C + (-(D_80031B84 * 4)))
);
```

## Wrong patterns
- `temp_t6 = D_80031B84 * 4; ... temp_t6 ... (-temp_t6)` → `sll t6, v0, 2` but `lw a1` lands in delay slot (score 260)
- `D_8005BB48[D_80031B84], D_8005BB4C[-D_80031B84]` → `negu t7, v0; sll t8, t7, 2` (negate before shift; score 675)
- `(u8*)D_8005BB4C - D_80031B84 * 4` → full address lui+addiu+subu+lw 0 (no hi/lo split)

## Generated assembly
```
lui  a0, %hi(D_8005BB48)
lui  a1, %hi(D_8005BB4C)
sll  t6, v0, 2               ; D_global * 4
negu t7, t6                  ; -(D_global * 4)
addu a1, a1, t7
addu a0, a0, t6
lw   a0, %lo(D_8005BB48)(a0)
lw   a1, %lo(D_8005BB4C)(a1)
jal  func
 or  v0, t6, zero             ; delay slot — dead CSE home-register update
```
