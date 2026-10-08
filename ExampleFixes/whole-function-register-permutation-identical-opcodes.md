# Whole-function register permutation with an identical opcode stream

Observed while attempting `func_8000A3DC_AFDC` (`core/AD60.c`, 24 instructions, marker
`CURRENT(145)`), 2026-10-07 worker 1. The function is **not matched**; this note is the triage
rule for the family.

## Symptom

`check` reports a mid-range score (145 here) that is neither a small stack-slot diff nor a
structure diff. `scripts/ins_diff.py <func> core/AD60 -noregs` reports **target N / ours N, delta +0**
and lists only a couple of rows -- but the *raw* `asm-differ` table
(`tools/asm-differ/diff.py -m <func>`) shows **every row carrying the `r` marker** and no blank
column: same mnemonics, same order, same immediates, same frame and homes (`sw a0,0(sp)` sits at the
identical row on both sides).

Compare the two columns *by role*, not by register. Here every value has an exact counterpart:

| role | target | ours |
|---|---|---|
| `arg0 << 0x11` temp | `t9` | `t8` |
| `arg0 * 2` (lives longest) | `v1` | `a2` |
| `>> 8` derived | `a3` | `v1` |
| `(s8)` scratch / result | `a2` / `t2` | `t0` / `t1` |
| `& 0xFF` branch value | `t0` | `t2` |
| `& 0xFF` result byte | `v0` | `a3` |

The whole t-band is shifted by one (`t8` where the target has `t9`), and the `a`/`v` band is a
circular permutation. That is a **cfe/ugen allocation-order difference, not a source-shape
question**: the front-end temp list was built in a slightly different order, so the allocator
coloured the same live ranges onto different registers.

## Triage rule

If `ins_diff -noregs` says delta +0 *and* every role has a counterpart (no missing/extra
instruction, no different immediate, no moved home), stop permuting declarations -- it is
allocation. Do not re-tread declaration order, casts, or pads expecting the band to move.

See also `hoist-vs-rematerialise-last-callee-saved-slot.md` for the sibling case where the band size
and every home match and only *which* value takes the last callee-saved slot differs.

## Measured (all worse than the committed body, which stays at 145)

| shape | score |
|---|---|
| committed body (baseline) | **145** |
| declaration order permuted (`var_a2` first) | 145 |
| `temp_v1` declared `s32` instead of `s16` | 385 |
| the two `if` blocks swapped | 1330 |
| `temp_t0`/`var_v0` declared `s16` | 1780 |
| `var_v0`/`var_a2` declared `u8` | 1320 |
| single-expression form (`temp_v1 & 0xFF` directly, `u8` temps) | 750 |

`pattern_probe.py` measured every applicable learned transform neutral (`split-products`,
`swap-commutative`, `cast-u8-consts`, `cast-s16-consts` all 145; `pad1`/`pad2`/`swap-last-decls` n/a
-- the locals are not the kinds those transforms act on).

See also `epilogue-reload-register-temp-bank.md` and
`parameter-spill-store-register-temp-bank.md` for the one- and two-row members of the same family;
this one is the whole-function generalisation. The
`struct-copy-register-skip-switch-if-optimizations.md` lever (an empty condition that extends a
value's lifetime without emitting an instruction) was **not** tried here and is the one idea left.

## Sibling variant: a base-address register choice cascades into the parameter home (delta *negative*, not +0)

Symptom variant: `ins_diff -noregs` reports a **negative** delta (ours *short*), and the extra target
instructions are a **parameter home**, a **reload from that home**, and a **materialised sub-pointer** --
all three following from *which register holds a computed base address*.

Measured on `func_800D8000_E6FB0` (`src.us/overlay_gameplay/outside/CFE30.c:8265`, 45 target
instructions, `// CURRENT(604)` re-measured **655**), a same-file clone of the matched
`func_800D76F4_E66A4`. The target holds `&D_80154318[arg3]` in **`$a0`** -- the register the first
argument arrived in -- so it must `sw a0,0x18(sp)` at entry, `lh t9,0x1A(sp)` to recover `(s16)arg0`
afterwards, and `addiu v1,a0,0xE` (the `+0xE` pointer can no longer fold into the base's own
addressing once `v1` is the pointer rather than the base). Ours keeps the base in **`$v1`** and folds
the `+0xE` stores: 42 instructions, delta **-3**, every opcode and home otherwise identical.

The choice is **not source-shape-driven** -- three spellings all measured **655 / 42 instructions**:
(i) the committed `u8 *temp_a0` local; (ii) a struct-pointer local
(`Unk80154318Entry *entry = &D_80154318[arg3];` then `&entry->unk8` / `&entry->unkE`); (iii) direct
array/union access with no base local (`D_80154318[arg3].coordinates`, `&D_80154318[arg3].unkE`).
Do not re-tread spellings on this class; the lever must change which live value the allocator colours
onto `$a0` (an empty-condition lifetime extension is the untried one).

## A partial permutation: three saved-register pointers rotated, seven rows (func_800881C0_170280)

Observed 2026-10-08 (worker B, run 49) on `func_800881C0_170280` (`overlay_gameplay/inside/16AF30.c`,
293 instr, port *Crashes*), committed wrapped at `// CURRENT(40)`. This is the *narrow* end of the
family: the two columns are **identical for 286 of 293 rows**, and the whole 40 points are seven rows
that rename the same three live pointers:

| role | target | ours |
|---|---|---|
| base `&D_800FB7B0[var_t2]` | `$s2` | `$s1` |
| base + 8 (the `&s1->unk8` pointer) | `$s1` | `$s3` |
| the `spAC` copy | `$s3` | `$s2` |

The rotation is self-consistent -- every downstream use is renamed to match, so the differ's table
reads identically in both columns and the score looks impossible to place by eye.

**Identify it in seconds with asm-differ's JSON output, not the table:**

    python3 tools/asm-differ/diff.py -m <func> --format json --no-pager > /tmp/d.json
    # strip the leading `make:` line, then compare rows[i]["base"]["text"] vs ["current"]["text"]

That prints the exact differing rows (7 here) where the colour table prints 1024 rows of noise. Use it
whenever the differ table is content-invisible and the score is small and even.

**What did not move it** (all measured, all >= 40): `pattern_probe.py` (every learned transform neutral
or worse, `swap-commutative` 480); all **120 declaration permutations** of the five locals (best 40,
range 40-117); dropping the `spAC = spAC;` no-ops (40); giving the +8 pointer its own variable (95);
three distinct pointer names base/p8/spAC (1551); computing `spAC` late (235); removing the
`s1 = &D_800FB7B0[var_t2]` rebase between `sp9C.y` and `sp9C.z` (260, and with the field reads moved to
the array expression 1697). So it is cfe callee-saved allocation, not a source-shape question -- park
it as allocation, as the note above says, and do not re-tread declaration order.
