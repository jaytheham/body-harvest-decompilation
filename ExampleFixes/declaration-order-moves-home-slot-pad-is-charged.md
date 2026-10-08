# Declaration order of existing locals moves a stack home; an added pad is charged

Symptom: the compiled body is instruction-for-instruction identical to the target except one
stored/reloaded local sits one 4-byte slot lower (measured on `func_802D9128_31D278`,
`overlay_level/comet/318E20.c`, 96 instr, score **8**): target `sh/lh $t9/$v1,0x4e($sp)`,
ours `0x4a($sp)`.

Two levers, measured on that frame (frame `0x50` in both):

| lever | result |
|---|---|
| add a declared-but-unused padding local (tried `s32` first; `s16` first; `s16`+`s16` first; `s32`/`u8` last) | the scalar home does move to the target slot `0x4e`, but the frame grows `0x50 -> 0x58` (score 34) |
| **reorder the two existing declarations** (`s16 parentId;` before `AlienInstance *inst;`) | **0** - the slot lands at `0x4e`, frame stays `0x50`, no instruction changes |

So when only one scalar home is off and register allocation is otherwise identical, try
**declaration order of the existing locals first**: IDO homes locals top-down, so the first-declared
local gets the highest offset. Adding a *new* local to chase the slot is charged 8 bytes of frame on
this shape, and a pad declared last reserves nothing at all.

Do not reach for the phantom-pad recipe (`ExampleFixes/phantom-s16-slot-between-array-and-scalar.md`)
until reordering the existing declarations has been measured.

## Second case: *inserting* the result local between the other two moves its home up a slot

Measured on `func_802D5DFC_1EEB0C` (`overlay_level/java/1ED9E0.c`, 36 instr, marker
`CURRENT(8)`). Three `s32` locals homed in the frame `0x38`: `sp24`, `sp28`, `sp30`. The target
homes them `0x24 / 0x28 / 0x30`, i.e. with a **4-byte hole at `0x2C`** — the marker had read that
hole as a "cfe temp at 0x30 vs declared at 0x2C". The whole residual was two rows (`sw v1,0x30` vs
`0x2C`, `lh a1,0x32` vs `0x2E`); everything else identical, frame identical.

Declaration orders measured (score from a real compile of the unwrapped body):

| decl order | score |
|---|---|
| `sp24; sp28; sp30;` (committed guess) | 8 |
| `sp30; sp24; sp28;` | 8 |
| `sp28; sp24; sp30;` | 8 |
| `sp24; sp28; sp30; sp2C;` (unused pad last) | 32 |
| `sp2C; sp24; sp28; sp30;` (unused pad first) | 40 |
| **`sp24; sp30; sp28;`** (result local moved between the other two) | **0** |

So with three same-typed locals the home is **not** simply declaration-ascending: moving the
*third* declaration to the middle gave `sp24@0x24, sp28@0x28, sp30@0x30` — the holes and offsets the
target had. Try permutations of the existing declarations before adding anything, and note that an
added unused pad is placed at the **top** slot and shifts every used local *down* (that is why the
pad variants scored worse, not frame growth: the frame stayed `0x38`).



## Third case: a pad *above* the result local moves its home down; a second pad below restores the frame

Measured on `func_802DAFD0_1F3CE0` (`overlay_level/java/1ED9E0.c`, 95 instr, marker `CURRENT(360)` - honest,
re-measured 360; advance to 195, not closed). The target homes `sp48[2]` at `0x48` and `sp47` at `0x47` with
frame `0x50`, and touches **nothing** at `0x4C..0x4F` - a live 4-byte slot sits *above* the result array, and
the 31 bytes below it are unused. The guess put its 12-byte pad first, homing `sp48` at `0x40`.

| decl block, in order | frame | `sp48` | `sp47` | score |
|---|---|---|---|---|
| `s32 pad[3]; s16 sp48[2]; s8 sp47;` (guess) | 0x50 | 0x40 | 0x3f | 360 |
| `s32 pad; s16 sp48[2]; s8 sp47;` | 0x48 | 0x40 | 0x3f | 426 |
| `s16 sp48[2]; s8 sp47; s32 pad[3];` | 0x50 | 0x4c | 0x4b | 340 |
| `s16 sp48[2]; s8 sp47;` | 0x40 | 0x3c | 0x3b | 502 |
| **`s32 pad; s16 sp48[2]; s8 sp47; s32 pad2[3];`** | **0x50** | **0x48** | **0x47** | **315** |

Two rules, both measured. (i) The first-declared local takes the top slot, so a result array reaches `0x48`
(rather than the top `0x4C`) only when a 4-byte declaration precedes it - and the frame is kept at the target's
`0x50` by a **second** pad below it. (ii) A single unused scalar/array pad placed first or last is eliminated
and reserves nothing (426 / 502); a pad in the *middle* is kept. So the pad-above/pad-below pair is the way to
move a home down without changing the frame.

The allocator lever on top of it: routing the `unkC` read through a named temp local
(`s8 tmp; tmp = D_8014DD50[arg1].unkC; sp48[1] = tmp;` instead of the direct assignment) changed which
register carried it from `t8` to the target's `v0` and closed the whole first half of the function,
**315 -> 195**. Same statements, only the named local added; the temp's signedness matters (`s32` 306,
`u8` 395, `s16`/`s8` 195).
