# Expression type and arithmetic spelling decide what the compiler folds, CSEs, or emits

**Shared rule.** The **type/signedness written at the use site** - and whether an arithmetic op is spelled as an operator or as a hand-expanded sequence - decides whether IDO folds/CSEs a value, keeps it as a real `multu`, reloads it, or loads it signed vs unsigned. None of these levers needs a header edit: change the cast or the local's declared type at the use site.

## A signed multiplier folds/CSEs into a constant multiply; make it `u32` to force `multu`

When a function multiplies a global by 3 twice - once for an array index (`arr[currentLevel * 3 + i]`) and once for a bit position (`1 << (currentLevel * three + i + 0x1D)`) - IDO constant-propagates a local `s32 three = 3;` and CSEs the two `currentLevel * 3` expressions, emitting the second as a **register copy** of the first (`move a0, t6` / `addu t3, a0, v0`) and deleting the multiply. The N64 ROM instead carries a real **unsigned** multiply there: preheader `addiu a3, zero, 3`, in-loop `multu a0, a3` / `mflo`. A `move`+reuse reads to asm-differ as a whole register-band rotation and scores in the 1700s. The lever is the **signedness of the multiplier variable**:

```c
u32 three;          /* not s32 */
three = 3;
... D_8009CE34_184EF4[currentLevel * 3 + var_v0 - 3]
... (D_80048026 & (1 << (currentLevel * three + var_v0 + 0x1D)))
```

`u32 three` builds the exponent as an unsigned node that does not unify with the signed `currentLevel * 3` index, so the multiply survives as `multu`. Measured on `src.us/overlay_gameplay/inside/158330.c`:

| function | `s32 three` | `u32 three` |
|---|---|---|
| `func_8007A6DC_16279C` | 1710 | **145** |
| `func_8007A634_1626F4` | 1735 | **290** |

Both then compile to the target's exact instruction count (42 = 42, delta 0); the residue is a one-slot temp-bank rotation. Variants measured neutral or worse on `func_8007A6DC_16279C` (base 145): `three = 3U` 145, `u32 three = 3;` 145, `(u32)currentLevel * three` 145; `u16 three` **1710** (folds again), making the *index* also use `three` 1375, a named `s32 base` for the index 940, splitting the `&&` into nested `if`s 1710, moving the `three = 3;` assignment inside the `if` 1710, a dummy extra use of `three` 1710. Related but distinct: `s32-index-shift-chain-vs-multu.md` (a named-variable *index* choosing shift-chain vs `multu` for array strides); this note is about the *multiplier constant*'s signedness deciding whether the multiply is CSE-folded away at all.

## Decompiled `>> 2` + negative fixup is IDO's signed `/4` idiom, spelled inside-out

Symptom: a function scores in the high hundreds with `ins_diff` reporting a **small non-zero delta** (`+3` on 192 instructions) and the first real INSERT/DELETE sitting in a short division block. The differ table shows rows like:

    bgez   s2,LBL
    sra    s1,s2,0x2      <- the positive case, in the branch's delay slot
    addiu  s2,s1,3
    move   s2,t8
    subu   a0,s2,s4

where the target has

    bgez   s2,LBL
     sra   t8,s2,0x2      <- delay slot: the positive-case result
    addiu at,s2,0x3
    sra    t8,at,0x2      <- negative case overwrites the same temp
    subu  a0,t8,s4

Cause: the source wrote the *expanded* form of a signed power-of-two division

```c
var_s0 = var_s2 >> 2;
if (var_s2 < 0) {
    var_s0 = (var_s2 + 3) >> 2;
}
```

but that expansion **is** what IDO emits for `var_s2 / 4`; it is not a shape the compiler reproduces from the two-statement spelling. Writing it as a division makes IDO emit the target's exact sequence (positive-case `sra` in the `bgez` delay slot, negative case overwriting the **same** temporary):

```c
var_s0 = var_s2 / 4;          /* -> bgez / sra(delay) / addiu at,src,3 / sra */
```

Measured on `func_8009EE30_ADDE0` (`src.us/overlay_gameplay/outside/AAA70.c`, 192 instr): **823 -> 13 in one edit**. Closing the 3-instruction count deficit also realigns the whole TU tail, so the score falls far more than the instruction count suggests. How to spot it: `grep -nE ">> [0-9]+;" <file>.c` next to an `if (x < 0)` whose body shifts `(x + k)` by the same amount, with `k == (1 << shift) - 1`; the target's own `.s` confirms it (the positive-case `sra` appears in the branch's **delay slot**). Related forms seen in this repo (same class, check the target before rewriting): `/ 2` -> `sra` + `addiu 1`; `/ 8` -> `addiu 7`. Also applies to unsigned cases (`srl`), where the fixup block should be **absent** - if the target has no fixup, the operand is unsigned. Do not re-tread the residual: once the division was fixed here the residual was only 2 rows (a single `f32` local home, ours `0x80` vs the target's `0x78`); declaration permutations measured worse - swapping the two `f32` declarations **18**, `s16` first **18**, a phantom pad first **36**, last **44**, mid **44**, floats moved last **26** (baseline 13).

## Union member signedness controls CSE: store/read through the other member to kill a reload

`func_80094DE0_A3D90` (`overlay_gameplay/outside/9BFF0.c`) and its matched greece twin `func_802D738C_18FE9C` (`overlay_level/greece/18D7E0.c`). The shared global `D_8014DD50[]` entry has

```c
/* 0x06 */ union { s16 unk6; u16 unk6Unsigned; };
```

Both write `entry[sp5E].unk6` from `alienInstances[arg0].unk6`, then negate it into `entry[sp5C].unk6`. The ROM reads the source field **once**, negates it, and stores both:

    lh   $t4,0x6($s0)
    negu $t5,$t4
    sh   $t4,0x6($v1)
    sh   $t5,0x6($a2)      # delay slot

The guess used `.unk6` on both sides and got a **reload** of the field before the negation (`lh $t4,0x6($v1)`), i.e. `delta +1` (179 vs 178 instructions, asm-differ **543**). Spelling the assignment target and the read through the **unsigned** member, exactly as the donor does -

```c
D_8014DD50[sp5E].unk6Unsigned = alienInstances[arg0].unk6;
D_8014DD50[sp5C].unk6 = -D_8014DD50[sp5E].unk6Unsigned;
```

- removed the reload and the extra instruction: **543 -> 4** (the residual 4 was the unrelated stack home fixed in `declaration-order-and-phantom-stack-homes.md`). Why: the two union members are the same 2 bytes, but their signedness changes the expression's type nodes, so the negation formed from the unsigned member keeps the loaded value in the register instead of re-reading the signed lvalue. **Rule:** when a guess reloads a field it has just stored, check whether the struct field is a union and spell the store/read through the *other* member (signed <-> unsigned). Do **not** retype the shared union - the signedness belongs at the use site.

## A byte read of an `s8`-declared global needs the u8 cast to emit `lbu`

Symptom: two builds agree instruction-for-instruction (same count, delta +0, every home and register equal) apart from a handful of rows where the target reads a byte with `lbu` and ours reads it with `lb`. The score looks disproportionate to a one-opcode difference because `asm-differ` charges those rows plus the whole rest of the table.

Measured case: `func_800DBA9C_EAA4C` (`overlay_gameplay/outside/CFE30.c`, 225 instructions). Re-measured baseline **800** - the recorded `/* CURRENT(2775) */` was stale in our favour. `ins_diff -noregs` gave **225 vs 225, delta +0**, and the only real rows were four `lbu` vs `lb`. The four reads were the `tc[]` texture-coordinate fields, spelled in the guess as `(s16)(D_80153BCD << 6)` / `(s16)(D_80153BCE << 6)`. Both globals are declared **`s8`** (`include/variables.us.h:2403-2404`), so `X << 6` loads **signed** (`lb`); the ROM loads them unsigned (`lbu`, then `sll ...,6`). Two options:

- retype the globals to `u8` - **do not**: they are shared, and the sibling `func_800DB714_EA6C4` (and this function's own colour reads) already depend on the current declaration;
- **cast at the use site** - the spelling the already-matched same-shape twin uses: `(*(u8 *)&D_80153BCD) << 6`. Four one-line edits measured **800 -> 0**.

Lever, and why the chunk matcher earned its keep here: the chunk index scored `func_800DBA9C_EAA4C` at 84% lift, 1.00x ratio, graftable, against the matched `func_800DB714_EA6C4` in the *same file* - the upright/flat cross pair, identical shape with the `±scale` on a different axis. `donor_patch.py`'s draft was therefore the *same body with the other axis*, and its gap list pointed straight at the `tc[]` rows. The donor's **literal spelling** (`(*(u8 *)&X) << 6`, not the bare global) is what made the loads unsigned - its *shape* was already present in the guess, but its *spelling* was not. **Note for the next run.** Read the delta list for opcode-level differences the normaliser hides (`lbu` vs `lb`, `li` vs `addiu`) before concluding "allocation"; and when a twin's body is byte-identical in shape, diff its *casts and literal spellings* against the guess.

## Negate the operand, not the constant: `x * -k` builds the chain in `$at` and rotates the temp bank

Symptom: the function's *logic* is right and the only differing rows are a consistent register rotation - our chain starts in `$at`/`$t9` where the target starts in `$t9`/`$t1`, and every later temporary is one slot behind, so a 98-instruction function scores 265 with `ins_diff -noregs` delta +0 and nothing structural in the block list.

Measured on `func_8011F818_12E7C8` (`overlay_gameplay/outside/buildings.c`, 98 instr). The body computed

```c
D_80052B48.unk4 = (s16)((s32)arg0->unkD * -0x154);
```

which IDO lowers to `negu $at,$t8` plus a shift-add chain accumulating in `$t9`. The `$at` destination is the tell - it is the assembler scratch, not the expression bank - and it displaced every following temporary (the whole gSP macro block one slot behind). Spelling the negation on the operand and multiplying by the positive constant

```c
D_80052B48.unk4 = (s16)(-arg0->unkD * 0x154);
```

took the score **265 -> 0** in one edit (gate PASSED, `build/bh.us.z64: OK`). Variants measured on that line (base 265): dropping the `(s32)` cast 265, operand flip `-0x154 * arg0->unkD` 265, `(s16)`-cast operand 265, `* -340` 265, a named `s32 t = arg0->unkD;` local 275; the cast-preserving form `(s16)(-(s32)arg0->unkD * 0x154)` also reaches **0**, so the lever is the sign's position, not the cast.

**Rule:** when the entire residual is a temp-bank rotation and one operand of a multiply is a negative constant, move the sign onto the variable (`-x * k`) rather than the constant (`x * -k`). `$at` used as an expression destination is the signature; declaration permutations do not move it.
