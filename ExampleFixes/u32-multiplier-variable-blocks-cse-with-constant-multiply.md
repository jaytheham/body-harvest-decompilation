### A signed named multiplier folds/CSEs into an adjacent same-value constant multiply; make it `u32` to force `multu`

When a function multiplies a global by 3 twice - once for an array index (`arr[currentLevel * 3 + i]`)
and once for a bit position (`1 << (currentLevel * three + i + 0x1D)`) - IDO 5.3 constant-propagates a
local `s32 three = 3;` and CSEs the two `currentLevel * 3` expressions, emitting the second as a **register
copy** of the first (`move a0, t6` / `addu t3, a0, v0`) and deleting the multiply. The N64 ROM instead
carries a real **unsigned** multiply there: preheader `addiu a3, zero, 3`, in-loop `multu a0, a3` /
`mflo`. A `move`+reuse reads to asm-differ as a whole register-band rotation and scores in the 1700s.

The lever is the **signedness of the multiplier variable**:

```c
u32 three;          /* not s32 */
three = 3;
... D_8009CE34_184EF4[currentLevel * 3 + var_v0 - 3]
... (D_80048026 & (1 << (currentLevel * three + var_v0 + 0x1D)))
```

`u32 three` builds the exponent as an unsigned node that does not unify with the signed `currentLevel * 3`
index, so the multiply survives as `multu`. Measured on `src.us/overlay_gameplay/inside/158330.c`:

| function | `s32 three` | `u32 three` |
|---|---|---|
| `func_8007A6DC_16279C` | 1710 | **145** |
| `func_8007A634_1626F4` | 1735 | **290** |

Both then compile to the target's exact instruction count (42 = 42, delta 0); the residue is a one-slot
temp-bank rotation.

Variants measured neutral or worse on `func_8007A6DC_16279C` (base 145): `three = 3U` 145, `u32 three = 3;`
145, `(u32)currentLevel * three` 145; `u16 three` **1710** (folds again), making the *index* also use
`three` 1375, a named `s32 base` for the index 940, splitting the `&&` into nested `if`s 1710, moving the
`three = 3;` assignment inside the `if` 1710, a dummy extra use of `three` 1710.

Related but distinct: `ExampleFixes/s32-index-shift-chain-vs-multu.md` (a named-variable *index* choosing
shift-chain vs `multu` for array strides). This note is about the *multiplier constant*'s signedness
deciding whether the multiply is CSE-folded away at all.
