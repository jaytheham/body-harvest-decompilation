# Register-band and temp-bank rotation with an identical opcode stream

**Shared rule / triage.** If `ins_diff -noregs` reports delta +0, every home and immediate agrees, and every role has an exact counterpart (no missing/extra instruction), then the residual is **cfe/ugen allocation**: the front-end temp list was built in a slightly different order, so the allocator coloured the same live ranges onto different registers. The differ's colour table then reads *identically in both columns* and the score looks impossible to place by eye. Identify the exact differing rows with asm-differ's JSON output, not the table:

    python3 tools/asm-differ/diff.py -m <func> --format json --no-pager > /tmp/d.json
    # strip the leading `make:` line, then compare rows[i]["base"]["text"] vs ["current"]["text"]

A source-shape lever sometimes *does* move the band (the first two cases below); when it does not, stop permuting declarations/casts/pads and park it as allocation.

## The holder of the loop condition decides the cfe temp bank

Symptom: a small function whose opcode stream, strides, homes and frame all match, and whose *only* differing rows are the copies made at each loop exit:

    TARGET:   or $a0,$t0,$zero   or $a0,$a3,$zero   or $a0,$a1,$zero   or $a0,$a2,$zero
    OURS:     or $t1,$t0,$zero   or $t1,$a3,$zero   or $t1,$a1,$zero   or $t1,$a2,$zero

asm-differ scores this **20** (four rows x 5). The copies are provably dead (the destination is never read), so this presents as the documented cfe temp-bank family. Cause: the guess spelled each loop as `} while (counter--);` - the post-decrement value is a *dead temporary* in cfe's temp bank. The original source instead keeps the counter's value in a variable and tests **that**:

```c
counter = N;
do {
    arg0 = counter;        /* arg0 is a dead parameter, reused as the holder */
    *dst++ = *src++;
    counter -= 1;
} while (arg0 != 0);       /* IDO folds arg0 == counter: bnez counter; addiu counter,-1 */
```

The observed `or $a0,...` is that assignment, and because the destination is a *parameter*, the copy lands in the parameter's own register (`$a0`) instead of a fresh temp. Measured on `func_80076FE0_47490` (`overlay_gameplay/frontend/40720.c`, 27 instructions) - a near-copy of the matched `core/E830.c` `func_8000DC30_E830`, differing only in constants (`0x6`->`0x7`, innermost `0x1F`->`0xF`) and element width (`lh`/`sh` stride 2 -> `lw`/`sw` stride 4). Adopting the donor's statement shape **verbatim, including its reuse of the two parameters as loop counters and the `arg0 = <counter>` assignments at each loop exit**, reached `check` **0 on the first compile**: 20 -> 0. Instruction counts agree (27 = 27). Corollaries:

- **Do not try to reproduce this with a no-op that keeps the parameter live.** An `if (!arg0) {}` inside the body makes the counters take `$a0` and the score goes to 95; what is wanted is not `arg0` staying live, it is an **assignment to** `arg0`, which puts the copy in `arg0`'s own register.
- **A good recorded marker does not rule the donor out.** The seam rule "a good marker means the guess already beats the donor's body" is about transplanting the donor's *whole body*; when the donor is a near-copy differing only in literals and element width, copying its **statement shape** can still convert - here 0.74 points/instruction looked "already closer". Diff the two `.s` files and read the donor's C before believing the marker.
- Returning the parameters to `s32` and casting to the pointer type inside the body is free when the prototype is unprototyped (`include/functions.us.h` declares `void func_80076FE0_47490();`), so the donor's C can be adopted literally without touching any header.

## A named entry pointer can rotate the whole saved-register band; direct array access fixes it

`func_80088B9C_170C5C` (`src.us/overlay_gameplay/inside/16AF30.c`, 152 instructions, marker `CURRENT(3176)`, re-measured **3176**). `check` reported 3176 with the **entire** instruction table carrying the `r` marker - same mnemonics, same order, same immediates, same frame (`0x40`) and the same save set (`s0..s8, ra`), but four callee-saved registers permuted in a ring:

| role | target | ours |
|---|---|---|
| `&D_8005BB2C` | `s3` | `s2` |
| `effect` | `s2` | `s1` |
| `&D_800FB6D0` | `s1` | `s0` |
| loop `entry` | `s0` | `s3` |

(`s4`-`s8` agreed.) The loop also carried four extra `nop`s because our scheduler did not hoist the field loads: ours emitted `lh/mtc1/nop/cvt.s.w/swc1` per field, the target issues the loads first. Two levers are needed; each alone is worse than both:

1. **Read the five fields into named locals before the stores** so the loads batch: `posX = D_800FB7B0[effect].unk8; ... alpha = D_800FB7B0[effect].unk12;` then the six stores. `entry = &D_800FB7B0[effect]` + named locals -> **571**.
2. **Drop the named `entry` pointer and index the array directly at every use** (`D_800FB6D0.x = D_800FB7B0[effect].unk8;`, `D_800FB6DC = &D_800FB7B0[effect].unkE;`, ...). **571 -> 110.** The whole `s0..s3` rotation disappears: the compiler makes the array element the CSE temp (target `s0`) instead of a source-level local, and the "save as first used" order then matches the target's (`&gfx, effect, &D_800FB6D0, entry`).

The named-locals-only shape with a named `entry` still measured 571; the direct-store shape with no named locals measured **480**. So: named locals *and* direct array access. Residual (110, parked): 22 rows, all caller-saved temp choice - the `0x20` byte constant lands in `t4` where the target has `t5`, `0xE7000000` in `t5`/`t6` where the target has `a0`/`a0`, the loop's five field loads in `a0-a3`/`t0` where the target has `t7/t8/t9/t7/t8`, and `mflo` in `t7` vs `t6`. Nothing structural is left; it is the temp-bank family (`epilogue-reload-register-temp-bank.md`). **Not the lever:** declaration order of the loop locals (`entry` first vs last) and hoisting them to function scope both re-measured **571** - byte-neutral.

## Whole-function register permutation with an identical opcode stream

`func_8000A3DC_AFDC` (`core/AD60.c`, 24 instructions, marker `CURRENT(145)`) - **not matched**; this is the triage rule for the family. `check` reports **145**; `scripts/ins_diff.py <func> core/AD60 -noregs` reports **target N / ours N, delta +0** and lists only a couple of rows, but the *raw* `asm-differ` table (`tools/asm-differ/diff.py -m <func>`) shows **every row carrying the `r` marker** and no blank column - same mnemonics, same order, same immediates, same frame and homes (`sw a0,0(sp)` sits at the identical row on both sides). Compare the two columns *by role*, not by register:

| role | target | ours |
|---|---|---|
| `arg0 << 0x11` temp | `t9` | `t8` |
| `arg0 * 2` (lives longest) | `v1` | `a2` |
| `>> 8` derived | `a3` | `v1` |
| `(s8)` scratch / result | `a2` / `t2` | `t0` / `t1` |
| `& 0xFF` branch value | `t0` | `t2` |
| `& 0xFF` result byte | `v0` | `a3` |

The whole t-band is shifted by one (`t8` where the target has `t9`), and the `a`/`v` band is a circular permutation. That is a **cfe/ugen allocation-order difference, not a source-shape question**. Measured (all worse than the committed body, which stays at 145):

| shape | score |
|---|---|
| committed body (baseline) | **145** |
| declaration order permuted (`var_a2` first) | 145 |
| `temp_v1` declared `s32` instead of `s16` | 385 |
| the two `if` blocks swapped | 1330 |
| `temp_t0`/`var_v0` declared `s16` | 1780 |
| `var_v0`/`var_a2` declared `u8` | 1320 |
| single-expression form (`temp_v1 & 0xFF` directly, `u8` temps) | 750 |

`pattern_probe.py` measured every applicable learned transform neutral (`split-products`, `swap-commutative`, `cast-u8-consts`, `cast-s16-consts` all 145; `pad1`/`pad2`/`swap-last-decls` n/a - the locals are not the kinds those transforms act on). See also `epilogue-reload-register-temp-bank.md` and `parameter-spill-store-register-temp-bank.md` for the one- and two-row members of the same family; this one is the whole-function generalisation. The `struct-copy-register-skip-switch-if-optimizations.md` lever (an empty condition that extends a value's lifetime without emitting an instruction) was **not** tried here and is the one idea left.

### Sibling variant: a base-address register choice cascades into the parameter home (delta *negative*, not +0)

`func_800D8000_E6FB0` (`src.us/overlay_gameplay/outside/CFE30.c:8265`, 45 target instructions, `// CURRENT(604)` re-measured **655**), a same-file clone of the matched `func_800D76F4_E66A4`. The target holds `&D_80154318[arg3]` in **`$a0`** - the register the first argument arrived in - so it must `sw a0,0x18(sp)` at entry, `lh t9,0x1A(sp)` to recover `(s16)arg0` afterwards, and `addiu v1,a0,0xE` (the `+0xE` pointer can no longer fold into the base's own addressing once `v1` is the pointer rather than the base). Ours keeps the base in **`$v1`** and folds the `+0xE` stores: 42 instructions, delta **-3**, every opcode and home otherwise identical. Not source-shape-driven - three spellings all measured **655 / 42 instructions**: (i) the committed `u8 *temp_a0` local; (ii) a struct-pointer local (`Unk80154318Entry *entry = &D_80154318[arg3];` then `&entry->unk8` / `&entry->unkE`); (iii) direct array/union access with no base local (`D_80154318[arg3].coordinates`, `&D_80154318[arg3].unkE`). The lever must change which live value the allocator colours onto `$a0` (an empty-condition lifetime extension is the untried one).

### A partial permutation: three saved-register pointers rotated, seven rows

`func_800881C0_170280` (`overlay_gameplay/inside/16AF30.c`, 293 instr, committed wrapped at `// CURRENT(40)`). This is the *narrow* end of the family: the two columns are **identical for 286 of 293 rows**, and the whole 40 points are seven rows that rename the same three live pointers:

| role | target | ours |
|---|---|---|
| base `&D_800FB7B0[var_t2]` | `$s2` | `$s1` |
| base + 8 (the `&s1->unk8` pointer) | `$s1` | `$s3` |
| the `spAC` copy | `$s3` | `$s2` |

The rotation is self-consistent - every downstream use is renamed to match, so the differ's table reads identically in both columns. Identify it in seconds with the asm-differ JSON output above. **What did not move it** (all measured, all >= 40): `pattern_probe.py` (every learned transform neutral or worse, `swap-commutative` 480); all **120 declaration permutations** of the five locals (best 40, range 40-117); dropping the `spAC = spAC;` no-ops (40); giving the +8 pointer its own variable (95); three distinct pointer names base/p8/spAC (1551); computing `spAC` late (235); removing the `s1 = &D_800FB7B0[var_t2]` rebase between `sp9C.y` and `sp9C.z` (260, and with the field reads moved to the array expression 1697). So it is cfe callee-saved allocation, not a source-shape question - park it as allocation.

See also `hoist-vs-rematerialise-last-callee-saved-slot.md` for the sibling case where the band size and every home match and only *which* value takes the last callee-saved slot differs.


### A single caller-saved temp on a CSE'd RDP opcode constant (4 rows, score 20)

`func_80081058_51508` (`src.us/overlay_gameplay/frontend/40720.c`, 142 instr, wrapped `#ifdef
NON_MATCHING` body with no `// CURRENT(n)` marker of its own). Unwrapped it re-measures **20**, and the
two columns are identical for **138 of 142** rows. The four differing rows all rename ONE live value:
the `G_LINE3D` opcode word `0xB5000000`, materialised once (`lui`) by cfe CSE across the three
`gSPLineW3D(D_8005BB2C++, ...)` expansions and held live across them. The target colours it **`$t5`**,
ours **`$t4`**; its `lui` plus the three `sw t5,0(v0)` stores are the entire score. Every other temp
agrees (`t6/t7/t8/t9/at`), the homes, the frame and the store order agree, `ins_diff` delta **+0**.
Both `$t4` and `$t5` are dead at that point, so the choice is a cfe temp-rotation offset, not a
source-shape question - and the constant cannot be respelled because it is emitted inside the
`gSPLineW3D` macro.

Measured, all >= 20 (baseline 20): `pattern_probe.py` every learned transform neutral
(`pad1`/`pad2`/`swap-last-decls`/`cast-s16-consts` 20, `cast-u8-consts` 25); an empty `if (vtx) { }`
extending the vtx pointer's life *before* the gfx block 20; a third unused `s32 pad;` local 20;
swapped `vtx`/`buffer` declarations 20; `~0` for the `gSPClearGeometryMode` `-1` 20; an empty
`if (vtx) { }` *after* the last line command 2845. Park as allocation.
