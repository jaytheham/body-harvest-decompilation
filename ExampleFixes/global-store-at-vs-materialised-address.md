# A global store via `$at` (`lui $at` + `sw Rt,%lo(sym)($at)`) vs a materialised address

## Symptom

A function measures a few-hundred-point score while the instruction *stream* is identical
instruction-for-instruction (`ins_diff.py -noregs` reports `target N / ours N, delta +0`) and every
frame size, argument home and stack slot agrees. The whole residual is in the head of the function.

## What the difference looks like

```
TARGET:   lui   $t1,%hi(D_8006AA70)
          addiu $t1,$t1,%lo(D_8006AA70)
          sw    $a1,0($t1)
CURRENT:  lui   $at,%hi(D_8006AA70)
          sw    $a1,%lo(D_8006AA70)($at)
```

IDO has two ways to store to a plain global: materialise the address into a real register (`lui` +
`addiu` + store at offset 0) or use `$at` as the base and fold `%lo(sym)` into the store's immediate
field (two instructions, address never live in a register). The target uses the first; this build
used the second.

## The useful part: it is not a symbol or type property

`func_800119F4_125F4` in `src.us/core/loader.c` is **matched** and contains the same statement
(`D_8006AA6C = arg0;`) - and it **materialises** (`lui $v0,%hi / addiu $v0,$v0,%lo / sw $a0,0($v0)`).
So the same global-store idiom can produce either form depending on what else the function does. Do
not "fix" it by retyping the symbol or by moving the declaration.

## Triage rule

When the *only* remaining differences are (a) this `$at`-vs-register choice for a global store and
(b) a one-register shift of the whole temp band (`t6,t7,t8` where the target has `t7,t8,t9`), the
function is **allocation/scheduling**, not structure. Source-shape churn does not move it: on
`func_80011A40_12640` (34 instructions, best 1704) every permutation measured *worse* -

| shape | score |
|---|---|
| committed guess | 1704 |
| named pointer locals for the two array bases | 2784 (frame `0x20 -> 0x28`) |
| `s32 *p; p = &D_8006AA70; *p = arg1;` | 1750 (frame grew, store *still* the `$at` form) |
| assignment as the call's first argument | 1783 |

Give it a genuine C-shape idea (something that gives the address a second use, or removes the extra
live copy of the argument) or move on - do not spend the attempt budget on declaration orders.

## Resolved: unsigned address arguments through a C89 call

Both `func_80011A40_12640` and `func_80011B60_12760` now match exactly.
Keep the ordinary `u8, s32` function signatures and direct array indexing.
Inside each function, declare `extern s32 func_800101F0_10DF0();` to preserve
an unprototyped C89 call, then use:

```c
D_8006AA70 = arg1;
func_800101F0_10DF0((u32)D_8006AA70, (u32)startTable[index],
                  endTable[index] - startTable[index]);
return endTable[index] - startTable[index] + arg1;
```

The shared helper prototype takes signed arguments. Without the local
unprototyped declaration it coerces unsigned casts back to signed nodes.
Preserving unsigned address arguments, while leaving the subtraction signed,
produces the target table-load ordering, materialized global-store address,
extra argument moves, and register allocation. No named locals are needed.
Keep the shared helper prototype for existing callers. K&R definitions of
these two functions are unnecessary; their existing typed definitions match.

Verified both function diffs and the full ROM: `build/bh.us.z64: OK`.
