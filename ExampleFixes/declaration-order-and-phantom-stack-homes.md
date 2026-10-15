# Declaration order and phantom stack homes (IDO homes locals top-down)

## 1. Re-order existing declarations; an added pad is charged

`func_802D9128_31D278` (`overlay_level/comet/318E20.c`, 96 instr, score **8**): the body is instruction-identical to the target except one `sh/lh $t9/$v1,0x4e($sp)` sits at `0x4a($sp)`; frame `0x50` in both.

| lever | result |
|---|---|
| **reorder the two existing declarations** (`s16 parentId;` before `AlienInstance *inst;`) | **0** - the slot lands at `0x4e`, frame stays `0x50`, no instruction changes |


## 2. Inserting the result local between the other two moves its home up a slot

`func_802D5DFC_1EEB0C` (`overlay_level/java/1ED9E0.c`, 36 instr, marker `CURRENT(8)`). Three `s32` locals homed in a `0x38` frame: `sp24`, `sp28`, `sp30`. The target homes them `0x24 / 0x28 / 0x30` with a **4-byte hole at `0x2C`**; the whole residual was two rows (`sw v1,0x30` vs `0x2C`, `lh a1,0x32` vs `0x2E`), frame identical.

| decl order | score |
|---|---|
| `sp24; sp28; sp30;` | 8 |
| **`sp24; sp30; sp28;`** (result local moved between the other two) | **0** |

With three same-typed locals the home is **not** declaration-ascending: moving the third declaration to the middle gave the target's holes/offsets. An added unused pad is placed at the **top** slot and shifts every used local *down* (frame stayed `0x38`).

## 3. A pad *above* the result local moves its home down; a second pad *below* restores the frame

`func_802DAFD0_1F3CE0` (`overlay_level/java/1ED9E0.c`, 95 instr, marker `CURRENT(360)`, honest, re-measured 360; advanced to 195, not closed). The target homes `sp48[2]` at `0x48` and `sp47` at `0x47` with frame `0x50`, and touches **nothing** at `0x4C..0x4F`.

| decl block, in order | frame | `sp48` | `sp47` | score |
|---|---|---|---|---|
| **`s32 pad; s16 sp48[2]; s8 sp47; s32 pad2[3];`** | **0x50** | **0x48** | **0x47** | **315** |

Declaring `s32 pad; s16 sp48[2]; s8 sp47; s32 pad2[3];` places the array and byte at the target offsets without changing the 0x50 frame. Assigning the `unkC` read first to `s8 tmp`, then `sp48[1] = tmp`, changes the carrying register from `t8` to the target `v0`. The enclosing function remains unmatched.

## 4. The home is set by the declaration *position*, not the pairwise order

`func_8009EE30_ADDE0` (`AAA70.c`, 192 instr, 13): the residual is one or two rows in the home of an address-taken local (`addiu s8,sp,0x80` vs the target's `0x78`), `ins_diff -noregs` delta +0, same frame. The lever was the **position** of each declaration over the whole declaration list — the pair had to sit at positions 2 and 3 (0-based) with `sp7C` before `sp78`, with an unrelated `s32 var_s2;` declared *between* them:

    s32 var_s0;
    s32 var_s2;     /* an unrelated declaration BETWEEN the two floats: this is the lever */
    f32 sp7C;
    f32 sp78;
    s32 var_s1;
    s32 var_v1;
    s16 var_s4;

13 -> **0** on the first compile, 192 = 192 instructions, gate PASSED.

## 5. A declared-but-unused local reserves a phantom home (cheap, no instruction cost)

`func_800FD510_10C4C0` (`src.us/overlay_gameplay/outside/101840.c`, 210 instr): asm-differ **812**. The body is instruction-identical to the target except (a) the WAS-audio flag local lands at `0x28(sp)` where the target has `0x2C(sp)` and never touches `0x28`, and (b) a register band is shifted (the target computes `&vehicleInstances[...]` in `t3/t4/t5`, ours in `a0/t3/t4`, adding one `move a0,a1`). Three fixes, all required:

1. Declare `s32 wasAudioActive;` **before** `s16 vehicleGroup;` -> 812 -> 800, and the slots agree.
2. Keep `s16 vehicleGroup;` declared but **never used** -> reproduces the target's untouched `0x28` slot at no instruction cost; frame `0x38` in both.
3. Write the array subscript **inline** (`playerData->unk38 = &vehicleInstances[playerData->unk34];`) so the value stays in the first temp (`t3`) instead of a variable register (`a0`) -> 800 -> **0**.

Confirmed both ways: `bh.sh check func_800FD510_10C4C0` -> 0 and `bh.sh gate` -> `build/bh.us.z64: OK`. A declared-but-unused local of the right size is cheaper to reason about than a dead init (`x = 0;`), which also shifts the register-allocation order.

### Inverse instance: a *redundant but used* temp charges a frame slot too

`func_802DBCB0_1F49C0` (`src.us/overlay_level/java/1ED9E0.c`, 75 instr, no marker): everything matched register-for-register (`allblocks ... delta +0`, 75 = 75) but the score sat at **58**; target frame `-0x28`, ours `-0x30` (`sw a0,0x28(sp)` vs `0x30(sp)`, and the cfe pointer spill `0x20(sp)` vs `0x24(sp)`). Cause: a declared temp holding a sub-expression **used twice** still gets a home (`u32 temp_t5 = ((u32)buildingInstances[new_var].unk8) >> 0xC;` used in two tests). Inlining the expression at both uses restores the frame and took **58 -> 0** on the first compile.

## 6. Phantom 2-byte slot between a 4-byte array and a scalar (sp34/sp38 pattern)

Layout seen in the target:

```
sp3E   (s16)   @ 0x3E
[gap]          @ 0x3C   <- 2 bytes (array alignment)
sp38[2](s16)   @ 0x38   <- 4-byte aligned array
[gap]          @ 0x36   <- 2 bytes  (target only!)
sp34   (s16)   @ 0x34
```

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

Related: `phantom-stack-gap-local-pointer.md` (4-byte pointer home), `cfe-temp-stack-gap-declared-vs-temp.md` (cfe temp vs declared gap), `s16array-before-alien-s32-last-stack-layout.md` (sibling `func_802D7FC0_190AD0` matched with an array + `s32` scalar producing a 4-byte gap).
