# Abs and source-shape levers that move the schedule and register allocation

**Shared rule.** When the logic is identical (delta +0 or a small count difference) but the schedule/allocations differ, the lever is usually the *shape* the source is written in - ternary vs `if`/`else`, statement *position*, operand re-expression - not a semantic change. Two families: (1) the abs pattern, where the branch form (`beqz` vs `beqzl`, both arms materialised) is worth whole instructions; (2) statement/operand re-expression that shifts a value's live range.

## Abs(dx)/abs(dz) pair: register allocation, `beqz` vs `beqzl`, and the ternary form

When a function computes two absolute values using separate `negu`+`slt`+`beqz` patterns, ordering rules control register allocation:

1. **Compute `dz` BEFORE `neg_dx`** to get dz->a2, neg_dx->a3. If the target shows `negu a3,v0` and `subu a2,t1,t2` (dz in a2, in the branch delay slot), compute dz first - the scheduler fills the `beqz` delay slot with the dz computation (all inputs ready early from load scheduling), pre-allocating a2 for it, leaving a3 for neg_dx.
2. **Use explicit `if`/`else` for the second abs** to get `beqz` (not `beqzl`). The init-then-conditional form (`abs_dz = neg_dz; if (neg_dz < dz) abs_dz = dz;`) makes IDO put neg_dz directly into abs_dz's register (a0) and use `beqzl` with slti in the delay slot; explicit `if (neg_dz < dz) abs_dz = dz; else abs_dz = neg_dz;` forces separate registers (neg_dz->v0, abs_dz->a0) with a `move a0,v0` in the `beqz` delay slot.
3. **Put `unk24--` BEFORE `unk20 |=`** in a modification block for t5/t7 order: the decrement first causes IDO to pre-hoist the `unk20` load into the `beqzl` delay slot (both paths), locking `unk20` into a higher `t` register (t7) and giving `unk24` the next lower `t` register (t5).
4. **The ternary spelling is a third valid form - and it is worth whole instructions.** `func_800E95BC_F856C` (`overlay_gameplay/outside/F7870.c`, 171 instr): the committed init+conditional body is **one instruction short per abs** - IDO folds the second arm into the `beqz` delay slot (`beqz at,L` + `move dst,-d`), giving **163 instructions to the target's 171**. Because a TU packs sequentially, every later symbol landed 0x20 low and `check` reported **4252** for a ~33-row real divergence (`check-score-charges-shipped-tail-on-instr-count-deficit.md`). Rewriting both as ternaries `absDeltaX = (-deltaX < deltaX) ? deltaX : -deltaX;` made IDO materialise **both arms plus the `b`** exactly as the target does: **163 -> 169 instructions, `check` 4252 -> 1965**, with the whole prologue/branch/loop register map falling into place at once (the argument home `sw $a1,0x4C($sp)`, `or $s0,$a2,$zero` + `sll $t3,$s0,8`, and DeltaX->a3 / absDeltaX->a2 / deltaZ->a1 / -deltaZ->a0 / absDeltaZ->v0 all matching). The clue: the abs *inside* `nSteps = ((-dX < dX) ? dX : -dX) >> 8` already matched as a ternary. **Rule:** when the target's abs block shows *two* branches (`beqz` + `b`) with an explicit second arm, the source spelling is a ternary (or an `if`/`else` with both arms materialised), not `x = -d; if (x < d) x = d;`. The extra arm is not cosmetic: it is worth 6 instructions here because it unblocks the register allocator for the rest of the function.

5. **Integer abs from an m2c-style guess, and an inverted m2c branch condition.** `func_802D5E98_1EEBA8` (`overlay_level/java/1ED9E0.c`, 64 instr): the committed body was an m2c transcript (`goto`/`var_*` temps) spelling each of four abs as `v1 = -v0; if (v0 >= 0) v1 = v0;`; `check` measured **1435**. Rewriting all four as ternaries (`v1 = (v0 >= 0) ? v0 : -v0;`) - the rule above, on *integers* - took it to **200** with no other change: the target's shape is `bltz v0,L` + delay `negu v1,v0` / `b L2` + delay `move v1,v0`, i.e. both arms plus the `b`. The remaining 200 was **one row: an inverted branch condition inherited from m2c**:

    TARGET:  1eec88: bgtzl t2,1eec9c      (skip the call when t2 > 0)
    OURS:    1eec88: blezl t2,1eec9c      (skip the call when t2 <= 0)

m2c had transcribed the guard as `if (vehicleInstances[49].unk1C > 0)` where the ROM's condition is `<= 0`; flipping the operator emitted `bgtzl` and took **200 -> 0**, gate PASSED. **Rule:** when the sole differing row in a function's own range is a branch whose *condition* is inverted (`bgtz`/`blez`, `beq`/`bne`, `bltz`/`bgez` at the same address, same operands), an m2c-derived guess is the likely cause (m2c guesses sign/equality direction from the branch layout and is wrong about as often as it is right); flip the operator rather than hunting a register lever - and verify with `gate`, since a flipped condition is a real behaviour change.

Full working pattern (`func_800AB730_BA6E0`):

```c
void func_800AB730_BA6E0(u8 arg0) {
    s32 dx, dz, neg_dx, neg_dz, abs_dx, abs_dz;

    dx = alienInstances[arg0].unk0 - D_80052B34->unk0;  // v0
    dz = alienInstances[arg0].unk4 - D_80052B34->unk4;  // a2 (before neg_dx!)
    neg_dx = -dx;                                         // a3
    if (neg_dx < dx) { abs_dx = dx; } else { abs_dx = neg_dx; }  // a0
    neg_dz = -dz;                                         // v0 (reused)
    if (abs_dx < 0xC9) {
        if (neg_dz < dz) { abs_dz = dz; } else { abs_dz = neg_dz; }  // a0
        if (abs_dz < 0xC9) {
            if (alienInstances[arg0].unk24 != 0xE || D_80052B34->unk1A == 0)
                return;
        }
    }
    alienInstances[arg0].unk24--;         // decrement FIRST
    alienInstances[arg0].unk20 |= 0x08020000;
    alienInstances[arg0].unk20 &= ~0x8020;
    alienInstances[arg0].unk48 = 0xC0;
}
```

Perfectly matched leaf `max(|dx|, |dy|)` then flag set (`func_800918E0_A0890`): when a LEAF function uses `beqzl` for the early exit (`flags&0x100==0` -> clear flag), the matching C pattern is: (1) a **positive** outer check `if (flags & 0x100)` (not negated) so the clear path is the fall-through, matched by `beqzl t9,clear_label`; (2) declarations `dx, neg_dx, abs_dx` / `dy, neg_dy, abs_dy` in that order (-> a0/a1/a2 and a3/t0/t1); (3) **repeat the abs_dx computation** inside the `if (abs_dy < abs_dx)` true-branch (IDO CSEs `abs_dx = neg_dx` into the inner `beqz` delay slot, then jump-threads the dx>0 path past the `slti` label to the `beqzl`, placing `slti at,a0,0x400` in the `b` delay slot); (4) **reuse `neg_dx` as the abs_dy intermediate** in the else-branch; (5) final check uses `dx`, not a separate `dist` (a separate `dist` shifts dist to a2 and generates `slti at,a2,0x400` instead of `slti at,a0,0x400`).

```c
void func_800918E0_A0890(u8 arg0) {
    AlienInstance *alien;
    s32 flags;
    s32 dx, neg_dx, abs_dx;
    s32 dy, neg_dy, abs_dy;

    alien = &alienInstances[arg0];
    flags = alien->unk20;
    if (flags & 0x100) {
        dx = alien->unk0 - alien->unk14;
        neg_dx = -dx;
        if (neg_dx < dx) { abs_dx = dx; } else { abs_dx = neg_dx; }
        dy = alien->unk4 - alien->unk18;
        neg_dy = -dy;
        if (neg_dy < dy) { abs_dy = dy; } else { abs_dy = neg_dy; }
        if (abs_dy < abs_dx) {
            if (neg_dx < dx) { abs_dx = dx; } else { abs_dx = neg_dx; }
            dx = abs_dx;
        } else {
            if (neg_dy < dy) { neg_dx = dy; } else { neg_dx = neg_dy; }
            dx = neg_dx;
        }
        if (dx < 0x400) {
            alien->unk20 = flags | 0x1000;
            return;
        }
    }
    alien->unk20 = flags & ~0x1000;
}
```

## Hoisting a global load into the `lw` delay slot; array re-expression shifts a pointer's live range

Both levers found on `func_800881C0_170280` (`overlay_gameplay/inside/16AF30.c`, 293 instr), measured with `bh.sh check` (asm-differ). Both are `delta +0` (`ins_diff` 293 = 293) and both move the score by large amounts because the function's instruction stream, once re-ordered, misaligns the whole tail.

**1. Re-express a field read through its array expression (987 -> 452).** A field read through a named pointer local (`s1->unkC`) and the same read written through the array expression (`(&D_800FB7B0[var_t2])->unkC`) compile to the same opcodes but give the pointer's live range a different endpoint, which shifts the caller-saved allocation. On this function:

| expression | score |
|---|---|
| `sp9C.x`/`.y`/`.z` all via `s1->unkN` | 987 |
| `sp9C.x` via `(&D_800FB7B0[var_t2])->unk8` only | 792 |
| `sp9C.y` via `(&D_800FB7B0[var_t2])->unkA` only | 792 |
| **both x and y re-expressed** (z was already) | **452** |

The two single-component edits are each worth ~195 and are **additive**. This is the same family as the permuter's empty-`if`/self-assignment live-range constructs, but here it is the *operand spelling* that moves it, which a plain `pattern_probe` run does not try. When a permuter output is an operand re-expression, apply it to **every** component that uses the same pointer, not just the one the output showed.

**2. Hoist a global load to the first statement (452 -> 40).** The target loads `D_800FB79A` at instruction 5, i.e. **in the delay slot of the preceding `lw`**, before the callee-saved register saves:

    lw   v0,0(s0)              # D_8005BB2C
    lui  t2,%hi(D_800FB79A)    <-- the load, hoisted
    lh   t2,%lo(D_800FB79A)(t2)
    sw   s4,0x30(sp)
    addiu t6,v0,8
    sw   ra,0x44(sp)           # ... saves follow

In the previous body the same `s16 var_t2 = D_800FB79A;` read sat *after* the four GBI setup statements, so IDO scheduled it at instruction 32 and the whole register-map/ordering fell one slot out. Moving the assignment to the **first statement of the function body** (above `gDPPipeSync`) reproduces the target's schedule: **452 -> 40**. An initialiser at the declaration (`s16 var_t2 = D_800FB79A;`) measures the **same 40**. Lever to reach for: when the target reads a global very early and ours reads it late, and the target's read sits in a load-delay slot, the *statement position* of the read is the lever - not the declaration order, not a cast. Moving only the read (leaving the GBI statements in place) is what works; moving the GBI statements after it measured **4981**.

Residual and what is refuted: 40 is `delta +0` with the table reading identically in both columns (the documented content-invisible-table case); `allblocks` shows only encoding-equivalent rows (`addiu sp,sp,-N` vs `+N`, `addiu r,r,-N` vs `li r,N`, an `lh`/`lui` pair re-ordered around the prologue) plus one extra `move`. Measured refuted on the 40 body: drop `spAC = s1;` **445**; drop the first or the second `s1 = &D_800FB7B0[var_t2];` re-establish **270**; write the `D_800FB6D0` triplet through the array form **1845**. Do not re-tread those, or the declaration order. Note also: `ins_diff`'s difflib alignment reported three `lh` vs `lb` rows (`REPLACE target[184]` etc.) here; the disassembly shows our reads **are** `lh` (`lh t6,8(s1)`), so those rows were an alignment artifact of the shifted stream - verify an apparent width difference against `objdump` before chasing it (`struct-field-u8-vs-s16-same-offset-register-shift.md` is the real pattern, and it is not this).
