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

## The same rotation happens in the FP bank, and there it is shape-proof

`func_8007C1DC_16429C` (`src.us/overlay_gameplay/inside/158330.c`, 61 instructions, marker
`CURRENT(215)` stale - re-measured **265**) is a small line/segment intersection test whose
`ins_diff -noregs` is **delta +0** with every block an encoding alias, i.e. the whole residual is
allocation. Unlike the integer cases above, the rotation is in the **floating-point** registers, and
its tell is that the C's own temporary names already mirror the target's registers while the register
*numbers* are permuted:

    target: lwc1 $f16,8(v1)   lwc1 $f18,8(a0)   lwc1 $f14,8(v0)   sub.s $f0,$f14,$f18   div.s $f12,...
    ours:   lwc1 $f0,8(v1)    lwc1 $f14,8(a0)   lwc1 $f12,8(v0)   sub.s $f2,$f12,$f14   div.s $f18,...

Every source-shape lever measured **neutral at 265**: fully inlining the three `f32` temporaries,
reversing their declaration order, splitting the quadratic (`t_f18 = a*a; t_f18 += b*b;`), dropping
`temp_f18` and comparing the expression inline, and collapsing to a single temp local. The `mul.s`
split lever (the note `split-assignment-drives-mul-operand-order.md`) measured **worse (295)** here,
and `pattern_probe`'s learned transforms were neutral (`swap-commutative` 311). Conclusion: an FP
temp-bank rotation is cfe-internal the same way an integer one is - when the C's temp names already
match the roles, do not permute the source; park as allocation.

## A per-case mask temp rotated from the switch dispatch delay slots (78 instr, score 130)

`func_8007899C_160A5C` (`src.us/overlay_gameplay/inside/158330.c`, 78 instructions) is a four-case
`switch` over `D_800E66A8[arg1].unk8` that permutes the bits of `arg0` differently per case. It is a
fresh, measured body (no `// CURRENT(n)` marker) and unwraps to **130** with `ins_diff -noregs`
**78 = 78, delta +0** - the entire residual is register allocation. Reading the two listings
index-for-index shows the shape is exact: two `b`-delay-slot `nop`s, both `andi` chains, the frame
`0x8` with `ret` homed at `0x7($sp)`, and every branch target agree.

The rotation is concentrated in the **dispatch delay slots**. IDO hoists each case's `arg0 & 4` mask
into the delay slot of that case's `beq $v0,$at` compare, and colours them in creation order:

    target:  case1 mask $t7   case2 mask $t9   case3 mask $t1
    ours:    case1 mask $t7   case2 mask $t4   case3 mask $t1

The single wrong colour (`t4` for case 2) then cascades through the case-1 and case-2 bodies
(14 register rows total; case 3's body is byte-identical). Note the rotated temporary is **reused
later within the same case**, so it is not a liveness conflict - both colourings are valid, and the
choice is cfe-internal.

**38 measured variants, floor 130** (control = the committed body, reproduced 130 exactly, so the
harness was live; a fresh `.o` per variant). Declaration site (`mask2`/`mask3` block-scoped vs
function-scope) **neutral**; the two-statement `mask = arg0; mask &= 4;` vs the one-statement
`mask = arg0 & 4;` **210**; a named `mask1` in case 1 (uniform with case 2/3) 230; `s32`/`s8`/`u8`
masks 210 / 1185 / 210; inline `if (arg0 & 4)` in all three cases 210; swapping the case 2/3 bodies
240; the switch selector cast `(u8)`, stored in a local, or `& 0xFF` - all **130 neutral**; a
`default: break;` and `mask != 0` forms neutral; `case 0` in braces neutral; dropping every `& 0xFF`
160; making case 1 uniform with `& 0xFF` 230; `ret` as `s32`/`int` 2965; the four `if`s as compound
`|=` 160. No source shape moves the dispatch mask's colour.

## A named pointer is not always the lever, and a low marker is not evidence

`func_802D7B68_1F0878` (`src.us/overlay_level/java/1ED9E0.c`, 209 instructions, marker
`CURRENT(1291)`, re-measured **1306**) and `func_802D5F28_2B8358`
(`src.us/overlay_level/siberia/2B7100.c`, 190 instructions, marker `CURRENT(93)`, re-measured
**985**) are both `ins_diff -noregs` **delta +0** with an identical instruction count, identical
frame and identical stack homes, so both are this family. Measured levers on the java one (one
compile each, file restored afterwards):

| variant | score |
|---|---|
| base | 1306 |
| prologue re-spelled `alienInstances[arg0].<f>` instead of `s0-><f>` | 1306 |
| **whole body** re-spelled (every `s0->` -> `alienInstances[arg0].`) | 1306 |
| `AlienInstance *s0;` moved to the top of the declaration block | 1443 |

- **The "drop the named pointer and index the array directly" lever that converted the case above
  is byte-neutral here.** When the pointer is a single materialised base (`s0 = &alienInstances[arg0]`,
  kept in `$s0` on both sides) IDO canonicalises the two spellings. Try it, but do not expect it to
  break a rotation on its own.
- **A low recorded marker is not evidence of a near-match.** `func_802D5F28_2B8358` carries
  `CURRENT(93)` and re-measures **985** - the marker was written against a body that is no longer in
  the tree. Re-measure before treating a sub-1-point-per-instruction marker on an unlogged function as
  cheap; the same file also carries `CURRENT(4)` (really 136) and `CURRENT(5)` (a rodata-placement item
  that scores 5 only because asm-differ cannot see the generated jump table's base).
- The whole score here sits in the **caller-saved argument bank**: target colours the
  `D_8014DD50[..].unkC` chain `$a3, $t0, $a2(base), $t1`, ours `$a2, $a3, $t0, $t1`. Every home, the
  frame and the literals agree, so the stores match and only the bank membership differs - park as
  allocation (the permuter, not more spellings, is the only lever left).

## A named *intermediate* pointer is the lever when declaration order is not (482 -> 321)

`func_802DAD00_2BD130` (`src.us/overlay_level/siberia/2B7100.c`, 111 instructions, marker
`CURRENT(674)`, re-measured **482** - the marker was stale). `ins_diff -noregs` reports 111 = 111,
delta **+0**, and every block it lists is encoding-level (`li` vs `addiu`, `move` vs `or`,
`jal LBL` vs `jal <addr>`). Two levers, both measured:

- **Declaration order fixes the stack homes but barely moves the score.** With `s16 sp4E;` hoisted
  out of the `else` and the order `s16 sp4A; s16 sp4E; s32 sp44, sp40, sp3C; s16 sp3A;` the target's
  `sp3A@0x3A, sp3C@0x3C, sp40@0x40, sp44@0x44` are reproduced exactly and `sp4A` lands on `0x4A`
  (target `0x4A`), giving **482 -> 415**. Sixteen other orders measured worse (419-537); a
  two-byte-pad pair can reproduce the target's `sp4A@0x4A`/`sp4E@0x4E` hole pattern on paper, but the
  pads themselves cost more than they recover. `sp4E`'s home (`0x48` vs the target's `0x4E`) never
  closed.
- **Naming the intermediate pointer is what actually rotates the band.** Replacing the inline
  `sp4A = D_8014DD50[alien->unkC].unkC;` with
  `node = &D_8014DD50[alien->unkC]; sp4A = node->unkC;` (with `Unk8014DD50 *node;` declared
  immediately after `s16 sp4A;`) took **415 -> 321 in one edit**: the whole second half of the
  function (everything after the `bltz`) then matched row for row, where it had been a full
  permutation. So when a whole-body rotation resists declaration order, try giving the *address that
  is computed once and dereferenced twice* its own named pointer - it changes the cfe temp list's
  build order without changing the instruction count.

The `node` pointer costs the frame (`0x50 -> 0x58`) because it takes a stack slot; using it for the
call's three field reads measured **2153**, and declaring it inside the `if` block does not compile.
Parked at **321** (committed wrapped, improvement landed): residual is the +8 frame, the head rows
(`lh v0`/`lh t9`, `sll t9,v0`/`sll t2,t9`, and the address landing in `t2` vs `v0`), and the two
homes above.


## A wrapped body that does not compile has an unverifiable marker

`func_802DC4D0_2BE900` (`src.us/overlay_level/siberia/2B7100.c`, 337 instructions, marker
`CURRENT(4162)`) could not compile at all, so nothing could confirm its marker. The build failed on
`func_802DB8D8_2BDD08(..., D_802E3054_2C5484)` - the parameter is `f32` and the TU declares the symbol
`const f32[]`; the target asm reads it as `lwc1 %lo(D_802E3054_2C5484)($at)`, so the source form is
`D_802E3054_2C5484[0]`. After that one-word fix it measures **3792** (marker `CURRENT(4162)`) - a
wrapped body that never compiled has no reproducible marker, so **make it build, then re-measure**.

Six declaration permutations of the three `s16` locals (`sp8C`, `sp88`, `sp90`; each moved first, each
moved last, and the `(s16)` cast dropped) each measured **exactly 3792** - byte-neutral. `ins_diff
-noregs` reports 337 vs **332**, delta **-5**, and `allblocks -noregs` puts the earliest INSERT/DELETE
blocks in the header (the `sp8C`/`sp88`/`sp90` chain plus one field-width row), so this is a
structural reconstruction gap over 337 instructions, not a pure rotation. Do not re-tread declaration
order here.

## A leading run of Gfx macro blocks rotates the whole t-band (one lever, 380 -> 360)

`func_800E5044_F3FF4` (`src.us/overlay_gameplay/outside/CFE30.c`, 114 instructions, committed
wrapped at `// CURRENT(380)` - **re-measured 380**, so the marker is accurate). `ins_diff -noregs`
reports 114 = 114, delta **+0**, and every block it lists is encoding-level (`li` vs `addiu`,
`%hi/%lo` vs the resolved address, `jal <name>` vs `jal <addr>`), so nothing structural is left.
Read role-for-role:

- **The s-band trades two roles.** Target colours `entry -> s0`, `type1 -> s2`, `end -> s3`, the
  literal `2 -> s4`; ours is `entry -> s0`, `end -> s2`, `type1 -> s3`, `2 -> s4`. The visible tell
  is the loop test (`bnel s0,s3` vs `bnel s0,s2`) - everything else in the s-band agrees.
- **The t-band is rotated from the second macro block on.** The prologue's first block
  (`gDPPipeSync`) agrees exactly (t6/t7); after it every constant and every `pkt+8` pointer is one
  or two roles late (`0x80008000` -> target t2, ours t3; `0xB900031D` -> target t4, ours t5; the
  closing `gSPTexture`/`gSPSetGeometryMode` pair -> target t5/t6/t4, ours t3/t4/t9).
- **The loop body repeats it**: the nine argument locals load into `t7,t8,t9,t2,t3` (target) and
  `v0,v1,t0,t1,t2` (ours), while the four that go straight to the call agree (`a0-a3`).

Measured (one compile each, file restored afterwards; baseline **380**):

| variant | score |
|---|---|
| declaration order permuted (`type1` first, `end` first, `entry,type1,end`) | 380 |
| assignment order permuted (`type1 = 1;` before `end = ...`) | 380 |
| `s32 type1` / `u8 type1` / `s16 type1 = 1;` at the declaration | 380 |
| drop the `end` local, fold `(LaserEntry *)&D_80153300` into the loop test | **360** |
| the nine argument locals re-declared `s32` | 3257 |
| the argument locals inlined into the call | 1207 |

The s-band is not source-shape-driven here, and the single lever that moved anything moved four
rows, not the band. Park as the cfe temp-bank family; the permuter is the only lever left.

## A hoisted global-address register steals the loop counter saved register (160 floor)

`func_800970C0_A6070` (`src.us/overlay_gameplay/outside/A49A0.c`, 225 instructions, no reproducible
marker) unwraps and compiles: `allblocks -noregs` reports 225 = 225, delta **+0**, and *every* block it
prints is encoding-level (`li` vs `addiu`, `move` vs `or`, `%hi/%lo` vs the resolved address), so the
score of **160** is register allocation only. The two rows that set it are the hoisted base pointer and
the inner loop counter:

    target  lui $t5,%hi(D_8005BB34)  ...  or $s0,$zero,$zero    (col -> s0)
    ours    lui $t4,%hi(D_8005BB34)  ...  move $t5,$zero        (col -> t5)

Our build hoists the global address into `t4`, which leaves `t5` free for the counter; the target does
the reverse. Every later row follows from those two choices (`lw a1,0(t5)` vs `lw a0,0(t4)`;
`addiu a0,s0,-4` vs `addiu v0,t5,-4`; `sll t9,a0,8` vs `sll t9,v0,8`). So a whole-function score in
the hundreds on a `-noregs` delta of +0 is this family - a register-name cascade - not a missing
statement, and no declaration sweep will close it.

Measured (baseline 160, file restored after each): `col s32` 1533, `row s32` 1533, both `s32` 160,
`x0`/`x1` `s16` 635, `x1` `s16` only 575, `tileRow` `u32` 160, the four `Vtx` declarations moved below
`col`/`row` 170. `pattern_probe` measures every learned transform neutral or worse (`swap-commutative`
165; `cast-u8-consts` and `cast-s16-consts` do not compile). Park; the permuter is the only lever left.
