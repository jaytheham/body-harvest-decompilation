# Declaration order and phantom stack homes (IDO homes locals top-down)

**Shared rule.** IDO 5.3 homes declared locals **top-down in declaration order**: the first-declared homed local takes the highest frame offset, and the frame is `align8(fixed + L)` where `L` is the *counted* size of the declared locals (small aggregates and unused vars round up to a 4-byte slot). A stack-home residual — one stored/reloaded local sitting a slot off while `ins_diff -noregs` is delta +0 and the frame size agrees — is therefore a **declaration** question, not an allocator one. Levers, in the order to try them:

1. **Re-order the existing declarations** (cheapest; usually free).
2. **Move a declaration to a different *position*** in the whole declaration list — the position, not the pairwise order, is the lever.
3. **Declare an extra local that is never used** — IDO reserves its layout slot but does not count its size, so a phantom 2- or 4-byte home appears without growing the frame.
4. Adding a **used** local is charged frame (or a variable register) — reach for it last.

## 1. Re-order existing declarations; an added pad is charged

`func_802D9128_31D278` (`overlay_level/comet/318E20.c`, 96 instr, score **8**): the body is instruction-identical to the target except one `sh/lh $t9/$v1,0x4e($sp)` sits at `0x4a($sp)`; frame `0x50` in both.

| lever | result |
|---|---|
| add a declared-but-unused padding local (tried `s32` first; `s16` first; `s16`+`s16` first; `s32`/`u8` last) | the scalar home moves to the target's `0x4e`, but the frame grows `0x50 -> 0x58` (score 34) |
| **reorder the two existing declarations** (`s16 parentId;` before `AlienInstance *inst;`) | **0** - the slot lands at `0x4e`, frame stays `0x50`, no instruction changes |

So when only one scalar home is off and register allocation is otherwise identical, try **declaration order of the existing locals first**; adding a *new* local to chase the slot is charged 8 bytes of frame on this shape, and a pad declared last reserves nothing at all.

## 2. Inserting the result local between the other two moves its home up a slot

`func_802D5DFC_1EEB0C` (`overlay_level/java/1ED9E0.c`, 36 instr, marker `CURRENT(8)`). Three `s32` locals homed in a `0x38` frame: `sp24`, `sp28`, `sp30`. The target homes them `0x24 / 0x28 / 0x30` with a **4-byte hole at `0x2C`**; the whole residual was two rows (`sw v1,0x30` vs `0x2C`, `lh a1,0x32` vs `0x2E`), frame identical.

| decl order | score |
|---|---|
| `sp24; sp28; sp30;` | 8 |
| `sp30; sp24; sp28;` | 8 |
| `sp28; sp24; sp30;` | 8 |
| `sp24; sp28; sp30; sp2C;` (unused pad last) | 32 |
| `sp2C; sp24; sp28; sp30;` (unused pad first) | 40 |
| **`sp24; sp30; sp28;`** (result local moved between the other two) | **0** |

With three same-typed locals the home is **not** declaration-ascending: moving the third declaration to the middle gave the target's holes/offsets. An added unused pad is placed at the **top** slot and shifts every used local *down* (frame stayed `0x38`).

## 3. A pad *above* the result local moves its home down; a second pad *below* restores the frame

`func_802DAFD0_1F3CE0` (`overlay_level/java/1ED9E0.c`, 95 instr, marker `CURRENT(360)`, honest, re-measured 360; advanced to 195, not closed). The target homes `sp48[2]` at `0x48` and `sp47` at `0x47` with frame `0x50`, and touches **nothing** at `0x4C..0x4F`.

| decl block, in order | frame | `sp48` | `sp47` | score |
|---|---|---|---|---|
| `s32 pad[3]; s16 sp48[2]; s8 sp47;` (guess) | 0x50 | 0x40 | 0x3f | 360 |
| `s32 pad; s16 sp48[2]; s8 sp47;` | 0x48 | 0x40 | 0x3f | 426 |
| `s16 sp48[2]; s8 sp47; s32 pad[3];` | 0x50 | 0x4c | 0x4b | 340 |
| `s16 sp48[2]; s8 sp47;` | 0x40 | 0x3c | 0x3b | 502 |
| **`s32 pad; s16 sp48[2]; s8 sp47; s32 pad2[3];`** | **0x50** | **0x48** | **0x47** | **315** |

(i) The first-declared local takes the top slot, so a result array reaches `0x48` (rather than the top `0x4C`) only when a 4-byte declaration precedes it — and the frame is kept at the target's `0x50` by a **second** pad below it. (ii) A single unused scalar/array pad placed first or last is eliminated and reserves nothing (426 / 502); a pad in the *middle* is kept. On top of the layout, routing the `unkC` read through a named temp local (`s8 tmp; tmp = D_8014DD50[arg1].unkC; sp48[1] = tmp;` instead of the direct assignment) changed the carrying register from `t8` to the target's `v0` and took **315 -> 195** (temp signedness matters: `s32` 306, `u8` 395, `s16`/`s8` 195).

## 4. The home is set by the declaration *position*, not the pairwise order

`func_8009EE30_ADDE0` (`AAA70.c`, 192 instr, 13): the residual is one or two rows in the home of an address-taken local (`addiu s8,sp,0x80` vs the target's `0x78`), `ins_diff -noregs` delta +0, same frame. Swapping the two declarations, adding pads, and declaring the pair as an array all measured **worse**. The lever was the **position** of each declaration over the whole declaration list — the pair had to sit at positions 2 and 3 (0-based) with `sp7C` before `sp78`, with an unrelated `s32 var_s2;` declared *between* them:

    s32 var_s0;
    s32 var_s2;     /* an unrelated declaration BETWEEN the two floats: this is the lever */
    f32 sp7C;
    f32 sp78;
    s32 var_s1;
    s32 var_v1;
    s16 var_s4;

13 -> **0** on the first compile, 192 = 192 instructions, gate PASSED. 42 other placements measured 9-38; the best non-winning shape (9) was the permuter's own output, which put the two floats at positions 1 and 3. Cost of the sweep: 44 variants, each one `tools/asm-differ/diff.py -m <func>` run (~2 s) — a single tool call. Run the permuter first when the body is large: here `-j2 --stack-diffs --stop-on-zero`, 17k iterations, produced exactly one output — the first half of the answer.

## 5. A declared-but-unused local reserves a phantom home (cheap, no instruction cost)

`func_800FD510_10C4C0` (`src.us/overlay_gameplay/outside/101840.c`, 210 instr): asm-differ **812** (762 on an earlier attempt). The body is instruction-identical to the target except (a) the WAS-audio flag local lands at `0x28(sp)` where the target has `0x2C(sp)` and never touches `0x28`, and (b) a register band is shifted (the target computes `&vehicleInstances[...]` in `t3/t4/t5`, ours in `a0/t3/t4`, adding one `move a0,a1`). Three fixes, all required:

1. Declare `s32 wasAudioActive;` **before** `s16 vehicleGroup;` -> 812 -> 800, and the slots agree.
2. Keep `s16 vehicleGroup;` declared but **never used** -> reproduces the target's untouched `0x28` slot at no instruction cost; frame `0x38` in both.
3. Write the array subscript **inline** (`playerData->unk38 = &vehicleInstances[playerData->unk34];`) so the value stays in the first temp (`t3`) instead of a variable register (`a0`) -> 800 -> **0**.

Confirmed both ways: `bh.sh check func_800FD510_10C4C0` -> 0 and `bh.sh gate` -> `build/bh.us.z64: OK`. A declared-but-unused local of the right size is cheaper to reason about than a dead init (`x = 0;`), which also shifts the register-allocation order.

### Inverse instance: a *redundant but used* temp charges a frame slot too

`func_802DBCB0_1F49C0` (`src.us/overlay_level/java/1ED9E0.c`, 75 instr, no marker): everything matched register-for-register (`allblocks ... delta +0`, 75 = 75) but the score sat at **58**; target frame `-0x28`, ours `-0x30` (`sw a0,0x28(sp)` vs `0x30(sp)`, and the cfe pointer spill `0x20(sp)` vs `0x24(sp)`). Cause: a declared temp holding a sub-expression **used twice** still gets a home (`u32 temp_t5 = ((u32)buildingInstances[new_var].unk8) >> 0xC;` used in two tests). Inlining the expression at both uses restores the frame and took **58 -> 0** on the first compile. Two further levers reached the 58, both from the matched same-file twin `func_802DBDDC_1F4AEC`: (i) reading the building index through a declared `u8 new_var` rather than inlining `alienInstances[arg0].unk38` -> 163 -> 58; (ii) flipping the compare operands to `(arg0 & 0x3C) == (D_80052A8C & 0x3C)` -> 198 -> 163. Declaration-order permutations of the three locals are **neutral** (temps are not homed by declaration order).

## 6. Phantom 2-byte slot between a 4-byte array and a scalar (sp34/sp38 pattern)

Layout seen in the target:

```
sp3E   (s16)   @ 0x3E
[gap]          @ 0x3C   <- 2 bytes (array alignment)
sp38[2](s16)   @ 0x38   <- 4-byte aligned array
[gap]          @ 0x36   <- 2 bytes  (target only!)
sp34   (s16)   @ 0x34
```

C `s16 sp3E; s16 sp38[2]; s16 sp34;` compiles to the same layout **except** `sp34` lands at `0x36` (free 2 bytes at `0x34-0x35`); the frame is right (`0x60`). Established facts:

- Frame follows `frame = align8(fixed + L)`; here `fixed = 0x38`. `L = 40` -> frame `0x60`; any construct that makes the compiler count `L = 42` (or a 4-byte slot for a small var) -> frame `0x68`. So the target cannot have an extra 2 bytes of counted locals — the gap must be a *phantom* (slot reserved, size not counted).
- Small aggregates/unused vars round up to **4-byte slots**: an unused `s16`, a `struct { s16 x; }`, and `s16 arr[1]` all pushed the frame `0x60 -> 0x68`.
- `s16 sp38[2]` sits 4-byte aligned (packing `offset = align_down(N - size, align)`), creating the `0x3C` gap.

**The mechanism that DOES produce the target layout** is a *used* `s16` between the array and the scalar whose value is **rematerializable** (loaded from memory and only stored back), so the optimizer eliminates the variable but IDO still reserves its layout slot and its size is not added to the counted `L`:

```c
s16 sp3E;
s16 sp38[2];
s16 sp36;      /* slot at 0x36, shifts sp34 down to 0x34; size not counted */
s16 sp34;
```

Example use that kept frame `0x60`:

```c
sp36 = alienInstances[arg0].unk6;
D_8014DD50[sp5E].unk6 = sp36;
D_8014DD50[sp5C].unk6 = -sp36;
```

Seen in `func_802D738C_18FE9C` (greece/18D7E0.c) and its sibling `func_802D7B68_1F0878` (java/1ED9E0.c), both still NON_MATCHING with this exact 1-slot diff. **Caution (measured):** *using* the variable makes IDO allocate a **variable register** (`v0` where the target has the temp `t4`), which cascades ~35 register-only diffs. What did NOT work: `sp36 = <const>` used before/after a call -> frame `0x68`; using it in the cooldown (`sp34 = sp36`), the flags result, the `unk1E` tail, or an intermediate of the `unkC` chain -> frame grows and/or regalloc changes; ternary for the cooldown, `s16 sp34[1]`, `struct { s16 x; } sp34` -> frame `0x68`.

### The **unused** declaration form is the fix - no register cost

`func_80094DE0_A3D90` (`overlay_gameplay/outside/9BFF0.c`) reached **score 0** with exactly this layout: the `s16 sp36;` must be **declared and never referenced**. A declaration with no use costs nothing: IDO reserves the 2-byte slot at `0x36` (so `sp34` drops to `0x34`, frame stays `0x60`) and emits no instruction for it, because there is no value to allocate. Recipe:

    s16 sp3E;
    s16 sp38[2];
    s16 sp36;     /* declared, NEVER used */
    s16 sp34;

Two levers together closed the function:

| lever | score |
|---|---|
| committed split body (run 15) | 543 |
| spell the store/negate through the union's `unk6Unsigned` member | **4** |
| add the unused `s16 sp36;` declaration | **0** |

The sibling `func_802D7B68_1F0878` (java/1ED9E0.c) carries the same 1-slot diff and is also a `union { s16 unk6; u16 unk6Unsigned; }` user - try the same two levers.

Related: `phantom-stack-gap-local-pointer.md` (4-byte pointer home), `cfe-temp-stack-gap-declared-vs-temp.md` (cfe temp vs declared gap), `s16array-before-alien-s32-last-stack-layout.md` (sibling `func_802D7FC0_190AD0` matched with an array + `s32` scalar producing a 4-byte gap).
