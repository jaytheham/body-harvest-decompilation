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

## A negated condition spelling moves an independent store across the block (`== 0` vs `!x`)

`func_8007EE0C_4F2BC` (`overlay_gameplay/frontend/40720.c`, 32-instr leaf) is a straight-line body: a guard, two 12-byte `Vec3f` copies, then three scalar stores - five statements, no locals, no frame. The committed body wrote the guard as `if (D_80094938 == 0)` and measured a flat **110** (`ins_diff` delta **+0**, every row a register name - it reads as a pure temp-bank rotation, so it is easy to park). It is not: the build **hoisted the third statement's store to the top of the block** and filled the branch differently.

    TARGET                              OURS (== 0)
    2  lui   v0,%hi(D_800D7A18)         2  lui   v0,%hi(D_800D7A18)
    3  bnez  t6,<epilogue>              3  addiu v0,v0,%lo(...)
    4  addiu v0,v0,%lo(...)  <delay>    4  bnez  t6,<epilogue>
    6  lw    t7,0(v0)   # vec1          5  nop                      <delay>
    7  lw    at,0(a0)   ...             6  lh    t7,24(a0)   # unk34 HOISTED
    13 lw    t1,0(v0)   # vec2          7  lw    t8,0(v0)
    20 lw    t6,0(v0)   # unk34         8  sh    t7,52(t8)
    23 lh    t9,26(a0)  # unk3A         9  lw    t9,0(v0)   # vec1
    ...                                 ...
    27 lw    t3,0(v0)   # unk3C         27 lw    t0,0(v0)   # unk3C

**Lever: write the guard negated - `if (!D_80094938)` - and nothing else changes. 110 -> 0.** The negation is not a semantic edit (both spell the same test); it changes the IR the scheduler sees, so the independent `unk34` store is no longer lifted to the block head and the `addiu` of the base lands in the `bnez` delay slot instead of before the branch. Measured neighbours, all worse or equal: `if (0 == D_80094938)` **110** (this is the key control, the same semantics in the original spelling keeps the defect), `if (D_80094938 == 0)` re-measured **110**, `unk34` first in source **700**, `unk34` second **790**, `unk34` last **710**, all three scalars first **2200**, splitting both `Vec3f` copies into `x/y/z` scalar stores **2595**, a `FrontendCamState *s` local for the cast target **1190** (one `[v0]` load instead of five), reordering the two `Vec3f` copies **170**.

**Rule.** When the residual is flat across body permutations and `ins_diff` shows delta +0 with only register names, before parking: (1) dump the target and our `.o` **sequentially** (`cmp2.py`) - a hoisted *whole statement* is visible there while difflib's aligned block list hides it; (2) if one statement of a run sits at a different position in ours, try the **other spelling of the guard condition** (`x == 0` <-> `!x`), which reorders the scheduler's basic-block fill without changing a single opcode's meaning. Same family as the statement-position lever above, one level up: the lever is the *shape of the controlling expression*, not the statement order inside the body.

## Floating point containment checks with signed extents

`func_8010CF7C_11BF2C` in `101840.c` matches all 174 instructions and verifies the full ROM. Put switch case 3 before cases 0, 1, and 2 to reproduce the target body order; the dispatcher still tests the numeric cases in order. For the axis-aligned cases, use `absX = -dx < dx ? dx : -dx` and a separate temporary for the Z magnitude. Reusing one temporary for both axes swapped f12/f14 in the X selection; separating the X result took the final score from 80 to zero.

The rotated case accepts a coordinate between an extent and its negation in either order: `(extent <= value && value <= -extent) || (value <= extent && -extent <= value)`. A single `-extent <= value && value <= extent` test is incorrect for negative extents and omits the target's second comparison path.

## Countdown corner collision checks

`func_8010DC00_11CBB0` matched all 272 instructions and the full ROM checksum. Use a four-entry indexed `while (i--)` inside an `if (1)` block to preserve the original redundant constant entry guard. An empty block before the loop kept the guard but spilled double intermediates; enclosing the loop kept the target floating registers. The first absolute-value bound is inline, with a named `negX = -xDelta` used in `radius >= (negX < xDelta ? xDelta : negX)`. A named absolute-X result rotated four registers; the inline expression with a named negation matched them and retained the required frame. Keep the second absolute-value result named. A two-halfword trig scratch array places its first element at sp+0x4C; a scalar halfword occupied sp+0x4E. Avoid explicit float casts of the integer center/radius in the last two trig expressions: the target promotes those integers directly to double and reuses them across calls.

### Countdown loops can change whole-function allocation

`func_801001B4_10F164` matched using array indexing and `i = 32; while (i--)` for both the drawing loop and the clearing loop. The equivalent `i = 31; do { ... } while (i--)` produced identical loop-body instructions but scheduled the initial counter load earlier and kept the display-list address in t0 instead of the target t2. Explicit pointer cursors also moved the counter into a saved register. With a 32-bit counter, the predecrement test visits indices 31 through 0 and IDO folds the first test, reproducing the target without an entry branch. A 16-bit counter adds narrowing instructions at the latch.

### Revisit: terrain clamp index allocation

`func_800F384C_1027FC` now matches all 81 instructions, with a 0x38-byte frame and a verified full ROM checksum. Reuse the word result for the initial alien type index and keep the height in a separate word. This fixes the initial V1/T9 lookup allocation and the floating addition operand order.

Two volatile halfwords control the remaining scheduling: qualify the coordinate parameter and the local terrain-height output. The parameter prevents an early coordinate load in the clamp branch delay slot. The output preserves the final store before that coordinate load, retaining the target V1 store, branch-likely epilogue, and second coordinate load in the call delay slot. Either qualification alone leaves differences. IDO requires the parameter qualification in the header too. The terrain helper takes an ordinary `s16 *`; the explicit cast at its output argument permits the existing helper to initialize the volatile local. Removing the stale partial-match comment and adding that cast retained score zero and `build/bh.us.z64: OK`.

### Partial airborne controller: unsigned conversion and double negation

func_801047C8_113778 remains NON_MATCHING after 20 compiled variants; retained score 3485 versus 5016. Define WeaponSpecEntry short fields at offsets 4 and 6 and VehicleType.unk66, replacing pointer-offset reads. Convert all 14 weapon-table rows to shorts with an explicit big-endian byte comparison. Preserve the target unsigned conversion sequence using (f32)(u32)type->unk3E: conversion directly from u8 removes the conditional 2^32 adjustment. Place two unused words after maxSteer to preserve table/maxSteer stack slots 0x38/0x34. Explicit if/else for primary-stick absolute value preserves the redundant branch. Replace the secondary-stick hand-written shifts with multiplication by 59 and remove the named negated-input temporary; this improves generated scheduling. Negate the double result before converting to f32, producing neg.d rather than neg.s after conversion. In the brake block, reuse a local double across the speed call and then all three velocity components to prevent repeated constant reloads. Literal double constants improve code generation but still have pool-placement differences; no new file was created, and the candidate is rewrapped.


### Terrain texture-coordinate flag-result copy: narrowing trials

Twelve compiled variants of `func_800FC7E0_10B790` did not resolve the missing `move v1,v0` between its two flag tests. The baseline word result remains score 340. An unsigned-halfword result or narrowing the call result scores 330 but introduces a narrowing operation instead of the target copy; signed-halfword storage scores 1005. An unsigned word is unchanged, while a volatile word scores 1855 and adds memory traffic. Narrowing only the first or second flag test scores 540 or 440. Introducing a separate result after the first conditional is coalesced for a word, or scores 440 for either halfword type. An explicit signed-word cast of the unsigned-halfword second use still scores 330. These scores are not evidence of a match: retain the ordinary word candidate and its NON_MATCHING wrapper. Restoring it verified `build/bh.us.z64: OK`.


### Terrain slope query: pointer and delta register swap

A revisit of `func_800FAA08_1099B8` retained score 145: all instructions and addresses match, but the cell pointer uses a2 rather than a3 and both signed height deltas use a3 rather than a2. `Search-AsmPattern.ps1 -Offset 0x109A28 -Count 6` finds the matched terrain checker `func_800B0A88_BFA38`; its masked unsigned cell reads are a useful reference, but replacing this query's bitfield reads with `u16` array reads and `& 0x3F` leaves the swap unchanged.

Nineteen further compiled variants, plus the baseline, gave no exact match. Register declarations, pointer const qualification, declaration reordering, signed-word casts of heights, an enclosing scope, unsigned return storage, and word-sized deltas with explicit signed-halfword assignments retain 145. Explicit halfword casts of each height score 500. Reusing arg0 for the delta scores 1545; a one-element delta array scores 2922; separate first/second delta locals score 195 regardless of declaration order. A halfword return scores 1375. Reusing the delta for the final return scores 840; reusing the expired word fraction temporary retains 145, while reusing the halfword fraction temporary scores 1375. Keep the original typed cell-access candidate wrapped NON_MATCHING. Restoring it verified `build/bh.us.z64: OK`.


### Vehicle wobble update: move the short capture after the preceding store

`func_80108B48_117AF8` improves from score 425 to 215 by moving `temp = arg0->unk22` immediately after the `unk8` position update. This changes the relative load priority of offsets 0x22 and 0x24 and restores the target placement of the offset-8 store at ROM 0x117B8C. The function still has temporary-register differences and the offset-0xA/0x26 loads in the opposite order; it remains NON_MATCHING.

Nineteen variants plus the baseline were compiled. Explicitly caching `unk16` for the position update and halving did not improve allocation: short and word caches produced the same scores, from 655 to 1730 depending on capture position. Capturing it after the 0x24 increment, 0x22 increment, or 0x24 damping scores 1685 when both uses consume the cache and 1160 when only the position uses it. The simpler later `unk22` capture is retained. The adjacent matched `func_80108CA8_117C58` confirms the position/halving/clamp sequence; an assembly-pattern search of the damping section found no matching reference. Rewrapping the improved candidate verified `build/bh.us.z64: OK`.


A further twenty compiled wobble-update variants improve the retained score from 215 to 205 by reversing the commutative angle addition to `arg0->unk26 + arg0->unkA`. Reusing the expired adjustment word for the `unk16` cache scores 1555 or 1695. Removing the named `unk22` capture scores 835; matching the neighboring function's explicit short cast does not change that. An independent word cache immediately before the angle update scores 1405 with the named capture, or 835 without it. Widening the height capture to signed/unsigned word or unsigned halfword scores 410; widening the pitch capture scores 220, and both word captures score 415. A halfword adjustment and moving the height capture after the angle store retain 215. On the 205 candidate, naming the float decay constant at three different points and enclosing the middle update in a block all retain 205. The operand reversal is retained without extra locals; the function remains NON_MATCHING and the restored full ROM verifies OK.


### Vehicle respawn search: residual loop-update scheduling

A baseline and nineteen further valid builds of `func_800FD858_10C808` retain score 395. All instructions from the fallback at ROM 0x10C8FC onward match. The target starts the vehicle stride calculation before the search comparison and leaves the counter copy and byte-cursor decrement at the loop latch; IDO instead schedules those two loop updates before the comparison and postpones the stride calculation. Moving the vehicle assignment before the comparison or before the loop does not change this emitted code.

An inverted continue guard, explicit else/continue, for syntax, unsigned or long counters, a search scope, and a guarded do/while with a bare postdecrement test all retain 395. An if(1) enclosure scores 600; an explicit nonzero outer guard scores 935; explicit `i-- != 0` tests in while, for, or guarded-do forms score 1110. A perpetual loop with a break scores 2025, a signed-halfword counter scores 2390, and a one-element counter array scores 1655. Breaking from the search then testing the remaining index scores 3160. Reusing the expired counter for the later building result scores 1066. None improves the original candidate; its NON_MATCHING wrapper was restored and the full ROM verifies OK. The assembly search at 0x10C83C finds a shared byte-array cursor setup in the matched comet-overlay function, but that common setup alone does not resolve this loop's scheduling.


### Walker anchor update: type index and floating register trials

Twenty verified builds, including the baseline, retain score 780 for `func_800F2980_101930`. Inlining the type index scores 1367; also inlining the pre-angle difference retains 1367. Byte/halfword type-index locals and reuse of the later word loop counter for that index retain 780. Moving the state-byte assignment before the type lookup or first metadata load scores 1885; before the second metadata load scores 1230, and before the third scores 1035. Direct metadata array accesses, word state/count locals, explicit double promotion of float trig results, and removing outer short casts on word-converted stores retain 780. An unsigned angle scores 1385, unsigned anchor coordinates score 5350, swapping anchor declaration order scores 804, and an unsigned loop counter scores 1190. None improves the baseline, which remains NON_MATCHING; restoring it verifies `build/bh.us.z64: OK`.

An initial trial batch accidentally used truncated tool-output metadata as source and failed compilation. Its stale assembly scores were discarded completely. All results above come from reruns whose build commands completed successfully before diffing. For automated trials, check the build exit status and extract candidate source separately from potentially truncated diff output. Never treat a stale object diff after a failed build as experimental evidence.


### Terrain coordinate helper: returning the masked word restores the copy

`func_800FC7E0_10B790` improves from score 340 to 205 when declared with an s32 return and returning the map-helper result. The target leaves that result in v0 through its epilogue; both identified callers discard the return value. This supports the word-return candidate, although it remains NON_MATCHING. The function and shared declaration now use s32. All instructions through the first coordinate reversal, including `move v1,v0` in the branch delay slot, match. The second flag test still reads v0 rather than v1, and IDO adds `move v0,v1` at the return in place of the target nop.

Twenty-three additional valid variants plus the original baseline were tested. With a void return, assignments embedded in the first condition or comma expression, a copy after the first branch, enum result storage, and separate short/word boolean locals all retain 340. Reusing the word for the initial terrain index scores 900; overwriting it with the first/second reversed coordinate scores 375/350. With the word return, separate cached and returned locals, chained assignments, copies made before or after the first branch, explicit signed/unsigned word return casts, and int/unsigned-int/unsigned-long result locals all retain 205. Duplicating the return inside the second conditional scores 810. Keep the single result local and one final return. Rewrapping the improved candidate verifies the full ROM after rebuilding the shared header: `build/bh.us.z64: OK`. No new files were created.


Nine further terrain-coordinate return trials retain score 205. Omitting the final return reverts to 340; returning through a self-assignment or an extra scope retains 205. Changing the shared return declaration from s32 (long) to native int, with long, int, or unsigned-int local storage, also retains 205 after successful header rebuilds. Separate cached-flag assignments in both first-conditional arms retain 205 whether placed before or after the coordinate store. A default cached copy followed by another else-only copy scores 433. The existing block-scoped if/else register-copy example provides a useful pattern, but duplicate equal assignments do not recover this routine's second-test register or remove the epilogue move. Restored the retained s32 declaration and NON_MATCHING candidate and verified `build/bh.us.z64: OK`.


### Terrain slope query: aggregate and phase-limited lifetime trials

Sixteen semantics-preserving compiled variants retain score 145 for `func_800FAA08_1099B8`. Using the existing terrain-object cell view, either ordering of a local pointer/delta aggregate, or named short/word grid coordinates (assigned inside the branches or before the test) leaves 145 unchanged. A one-element pointer array scores 2092. Reusing the second magnitude local for the deltas scores 2240; reusing the first magnitude only during the first phase scores 1365. Reusing the fractional-coordinate short only for the second delta, after its last triangle-selection test, scores 195. Word first/second magnitudes with explicit short assignment casts score 700/575. A volatile delta scores 4792. A typed row pointer with a short or word column index scores 1235.

Two broader reuse experiments overwrote values needed by the second triangle-selection test or final maximum comparison. Their scores are excluded because the candidates change behavior. Limit reuse to the actual completed lifetime, rather than replacing every reference to a local mechanically. None of the valid variants resolves the pointer/delta register swap. Restored the simpler NON_MATCHING candidate and verified `build/bh.us.z64: OK`.


### Second vehicle collision query: indexed induction and expired scratch reuse

`func_8010E040_11CFF0` matches with `i = 8; if (1) { while (i-- >= 5) { ... } }`, reading both corner arrays at index i. IDO strength-reduces this to two descending pointers and an end-pointer comparison. The explicit pointer version hoists address setup ahead of the constant entry guard; the indexed version retains the target guard but initially puts the X-array LUI ahead of the vehicle load. Assigning the vehicle X coordinate to the existing negX scratch before computing xDelta restores the target load order without changing the final register allocation. Reusing xDelta itself fixes scheduling but swaps v0/v1 throughout the loop.

Scope the circle-path dx/dz floats inside its conditional and keep two unused word declarations before the two-halfword trig scratch. Together these produce frame 0x70 and trig slot 0x4C. The complete function has 272 matching instructions, score zero, and verifies `build/bh.us.z64: OK`. No new files or shared declarations were needed.


Twenty more valid wobble-update builds retain score 205. Reusing the expired height short for the heading scores 1285; widening the cached angle short to word scores 400, and widening both shorts scores 405. Reusing the adjustment word for the angle scores 845, or 1290 with height-to-heading reuse. Naming the incremented angle before its store scores 1920. Capturing the heading in the adjustment word after the angle store scores 1560. Embedded heading assignments score 2065 (word) or 1500 (short); a comma expression scores 1560. A separate second adjustment word retains 205, while reusing the angle short for that adjustment scores 355. Naming the first decay operand scores 620 (word) or 715 (reused short). Capturing a separate heading short before the height store, with or without a nested scope, scores 1695. Short or native-int adjustment storage and scopes around the angle section or height-short lifetime retain 205. None resolves the early heading register; restored the unchanged NON_MATCHING candidate.


Twenty further valid terrain-slope trials retain score 145. Reusing arg0/arg1 for both deltas scores 1545/365, for the first magnitude 1505/405, and for the second magnitude 815/640. Naming the first height before subtracting through diff scores 510 in the first phase and 290 in the second. Using the second-magnitude short for that height scores 1140/290; using the first-magnitude short only during the first phase scores 690. A return-word height cache scores 670/290. Chaining the first delta assignment through either magnitude or the return word retains 145. Word/unsigned-word fractional-X locals score 1375/1755. Reusing diff for the final result scores 840, while ternary magnitude assignments retain 145. A first-magnitude height cache in the second phase was excluded because it overwrites a value still needed by the final comparison. Restored the original NON_MATCHING candidate; the full ROM verifies OK.


### Dead vehicle renderer: explicit cursor and equivalent initializer trials

Twenty valid further builds of `func_80101C14_110BC4` retain score 110. Explicit descending byte cursors initialized before or after the counter, unsigned-word/native-int counters, and a shifted constant retain 110. Unsigned scale literals score 695. Naming a scale used to derive the initial counter, initializing it at entry, deriving it by doubling the initial counter value, and native-int/unsigned-word scale locals score 2965. Reassigning the scale after the vehicle-render call restores 110. Explicit vehicle-type base assignment or pointer addition scores 1685; explicit vehicle-array base assignment scores 2515; naming the vehicle index scores 2245. Casting the type index to s32 scores 3010. Removing outer scale-store short casts and scopes around the body or counter retain 110. None resolves the three saved-register rotation. An initial explicit vehicle-base trial failed C89 compilation because an assignment preceded a declaration; that stale diff was not inspected and the corrected version was rebuilt successfully. Restored the original NON_MATCHING candidate and verified the full ROM.


### Building/vehicle collision scan: named byte reload changes stride lowering

`func_8010E480_11D430` improves from 2120 to 755 by reloading the post-call object index into its existing u8 index local, then using that local to index vehicleInstances. IDO emits the target shift/subtract stride sequence instead of the previous multu/mflo and also restores the v0 vehicle / v1 selector allocation. Signed-word, native-int, or signed-halfword casts on the direct reload score 785, as do signed-word/native-int initial index locals; unsigned casts or an unsigned-word index retain 2120. Reversing the pointer comparison alone scores 2115. The named byte reload is retained; the frame and instruction count match, but the successful impulse block still precedes the loop latch instead of following it.

Twenty-three valid control-flow/index trials were compiled. A post-loop success flag scores 4945; testing the remaining index scores 3969; assigning the helper results directly to a success flag scores 3970. Infinite while/for forms with a return on exhausted count score 7075. A word/native-int/unsigned-word return accumulator scores 2424; a halfword accumulator scores 2415. Duplicating the impulse and return in both successful cases scores 5390, or 4675 with a signed reload cast and 4615 with the named reload. Initial flag and duplicate-body transformations affected only the first case because JavaScript replace replaces one occurrence; those behavior-changing candidates were excluded and the applicable variants rerun with both branches handled. Retained the named byte reload under NON_MATCHING and verified build/bh.us.z64: OK.


Thirteen further collision-scan variants improve 755 to 745 by reversing the pointer comparison to vehicle != D_80159D5C. Inverting the second helper guard to an explicit continue, adding an else/continue, guarded-do syntax, for syntax, an unsigned counter, and a loop scope retain 755. A short counter scores 3390. On the reversed-comparison candidate, a separate byte reload index scores 2220; separate signed-word/native-int reload indices score 950. Reusing the expired building X/Z shorts for the reload scores 950/1030. Retain the existing byte local and reversed comparison; the helper-success block placement still differs. Rewrapped the 745 candidate and verified the full ROM.
