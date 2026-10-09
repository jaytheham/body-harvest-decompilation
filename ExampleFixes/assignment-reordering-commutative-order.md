### Assignment reorderings

`a->x = X; a->y = Y;` may be reordered as `a->y = Y; a->x = X;` if `X`/`a`/`Y`/`b` involve large computations. However, the computations, stack restores and register allocation of `X`/`Y` are still done in original order.

Similarly, the compiler can reorder stores to disjoint globals. This can be used to observe whether a temporary variable was used for an address -- alias analysis does not look at variable values.

If `x` and `y` are stack variables and `X`/`Y` don't involve function calls or branches, the assignment order is generally irrelevant -- the emission order instead depends on when they are used.

### Order of commutative operations

`a + b` and `b + a` tend to generate the same code, and similar for ==, !=, ^, &, |. The order used is not currently known; it seems to depend on at least whether a and b include array indexing, and type casts can also matter (even casting a variable to its own type). Maybe it depends on when a and b were created, and on their complexity? Speculation: this normalization might be done to make deduplication passes more powerful.

**Confirmed example**: `(s16)var_a2 + temp_v0` vs `var_a2 + temp_v0` — adding a redundant `(s16)` cast to `var_a2` changed `addu t4,v0,a2` to `addu t4,a2,v0`, fixing a single-instruction mismatch in `func_8013B384_14A334`. The cast changes how IDO sorts the operands in the commutative `addu`.

**Confirmed example (f32)**: In `func_80014208_14E08`, the expression `D_80032D88 + ((f32)arg1 / D_80038300)` produced `add.s $f0,$f10,$f16` (wrong). Swapping C operands to `((f32)arg1 / D_80038300) + D_80032D88` made no difference. Adding a redundant `(f32)` cast to the global: `(f32)D_80032D88 + ((f32)arg1 / D_80038300)` produced `add.s $f0,$f16,$f10` (correct). The redundant float cast on the LEFT operand made it appear first in the `add.s` instruction.

**Confirmed example (f32, bc1fl delay slot)**: In `func_800819C0_51E70`, the expression `temp_f0 + arg0->unkC` (both f32, temp_f0 cached in $f0, unkC loaded into $f10 via bc1fl delay slot) produced `add.s $f16,$f10,$f0` (wrong). Swapping C operand order made no difference. Adding a redundant `(f32)` cast to the LEFT operand: `(f32)temp_f0 + arg0->unkC` produced `add.s $f16,$f0,$f10` (correct). Pattern: when one float is a cached local variable and the other is a fresh struct load (scheduled into a bc1fl delay slot), the redundant `(f32)` cast on the cached variable forces it to appear as `fs` in the `add.s`.

**Confirmed example (arithmetic no-op to force left operand first)**: In `func_80084508_549B8`, the expression `v1 + delta` (s32 + s8, in a `blezl` delay-slot context) produced `addu t4,a0,v1` (wrong, delta=a0 first). Swapping to `delta + v1` made no difference. Adding a redundant type cast `(s32)v1` swapped register allocation entirely (breaking other instructions). The fix was using an arithmetic no-op: `(v1 + 0) + delta` — adding `+0` to v1 creates a "freshly computed" intermediate expression, which IDO treats as the primary (left) operand in the commutative `addu`, producing `addu t4,v1,a0` (correct). Pattern: `(x + 0) + y` forces `x` as rs when plain `x + y` incorrectly generates `y` as rs, and type casts cause unwanted register allocation changes.

**Confirmed example (named integer constants in branches)**: In `func_8008DFA0_5E450`, a cached `s32 kind = entry->unkC` and direct `u8` field accesses gave the correct `lbu a0,0xC(v0); bne s3,a0,...; move v1,a0`, but comparisons with literal `0xA`/`0xD` emitted `bne v1,s1` and `beq v1,s3`. Reversing the literal comparison in C did not reverse the assembly operands. Declaring `s32 ten = 0xA; s32 thirteen = 0xD;` and writing `ten == kind`, `ten != kind`, and `thirteen != kind` produced the exact target operand order (`s1,v1` and `s3,v1`) without changing register allocation or adding instructions. Keep the first type-13 test as a direct byte-field comparison. Using a byte local or casting the cached kind to `u8` introduced extra masks or copies. The complete ROM verified OK.

The same function's frame field at offset `0xE` is `u8`: direct `entry->unkE++` and comparison with the signed animation-table byte reproduce the target's zero extension. Correcting the struct field replaced raw byte-pointer access and an explicit increment temporary. Byte loop counters with `remaining--` and `i++` also reproduced the target's `andi`/`move` loop tail.
**Confirmed example (f32 dot product: the operand's access form decides the order)**: In
`func_80083820_53CD0` (frontend, `52690.c`), a 3-element dot product declared as
`f32 func_80083820_53CD0(f32 *arg0, f32 *arg1)` and written
`(arg0[0] * arg1[0]) + (arg0[1] * arg1[1]) + (arg1[2] * arg0[2])` produced
`add.s $f0,$f16,$f4` (wrong: the partial sum and the third product swapped) with a score of 10.
Reversing the C operands of the third term (`arg0[2] * arg1[2]`) did **not** fix it - it also
reordered the two `lwc1 0x8(...)` loads and made things worse (score 20). The fix was to change
the parameter type to the struct form and access fields, i.e. an exact copy of the matched twin
`func_800C1090_D0040`'s shape:

```c
f32 func_80083820_53CD0(Vec3f *arg0, Vec3f *arg1) {
	return (arg0->x * arg1->x) + (arg0->y * arg1->y) + (arg0->z * arg1->z);
}
```

score 0, ROM OK. So for this function the final commutative `add.s` put the partial sum in `fs`
only when the operands came from struct field access (`arg0->x`) rather than flat array indexing
(`arg0[i]`). Note this is the opposite choice to
`float-matrix-vector-multiply-pointer-type.md`, where a 3x3 matrix-vector multiply needed the
flat `f32 *` form - the winning form is per-function, so try the matched twin's exact shape
(types included) before guessing.

**Confirmed example (switch case, complex left operand - swap the SOURCE to get the complex one first)**: In `func_80071F08_159FC8` (`overlay_gameplay/inside/158330.c`, 254 instr) the switch bodies compute `D_800E6A78.unk54 = (D_800E65BC[value].unk1A / 2) + D_800E66A8[D_800E65EC].unk6 + 0xF;` - the `/ 2` is IDO's signed `bgez`/`sra`/`sra` idiom and `unk6` is already loaded. The target emits `addu t7,t5,t6` (the division result first); our source order produced `addu t7,t6,t5`. Swapping the SOURCE operands to `unk6 + (unk1A / 2)` produced the target order - the compiler re-orders a commutative `+` to put the freshly-computed complex operand first, so writing the simple operand first is what lands it. The same swap applied to switch case 1 (`unk2 + (unk1A / 2)`) fixed both its operand order and a downstream temp-bank choice (dest `$t5` -> `$t6`) that the swap exposed. 675 -> 535 in two source edits.
