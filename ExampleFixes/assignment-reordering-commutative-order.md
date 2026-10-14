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


**Confirmed example (nested subtraction controls an addition's operands):** In Comet `func_802D7C1C_31BD6C`, `jointY + countdown * 2 - 90` emitted `addu t2,t1,v0`. Reversing the C addition, using a shift, and regrouping the constant all kept that order. Writing `jointY - (90 - countdown * 2)` produced the target `addu t2,v0,t1` followed by the same `addiu -90`, with no extra instructions. Keep the joint index load before the initial flag branch. Inline the indexed alien coordinates, unsigned effect sizes, and random remainder in their calls; named pointer, size, and remainder locals changed call scheduling and stack homes. Two unused words after the signed joint index restore the 0x60 frame and index at sp+0x5E. Function diff score 0 and full ROM checksum OK.

### Slope samples: mix direct array access with the coordinate pointer

`func_8008E524_9D4D4` matched with direct `alienInstances[arg0]` accesses for the entry checks, heading, type index, center-sample case, and final height comparison. Keep the named instance pointer only for the X/Z coordinate fields in the two calculated sample cases. Using the pointer everywhere leaves case 1 as LH X, SH X, LH Z instead of LH X, LH Z, SH X. Using direct array access everywhere fixes that ordering but changes floating operand ordering and register allocation, with an extra NOP in case 2. The mixed access form matches every instruction and the full ROM checksum. Constant-condition wrappers did not fix the store ordering and additionally swapped saved registers. Keep the original short locals and frame layout; no new file is needed.

### Java death effects: direct array call coordinates

In func_802DB7A4_1F44B4, keep the named AlienInstance pointer for flags and counters, but pass alienInstances[arg0].unk0, .unk2, and .unk4 to the effect calls. Pointer-only arguments scheduled coordinate loads before constant stack arguments and the final radius calculation; direct indexed arguments produced the target ordering without extra address instructions. A separate u8 typeIndex and s16 storedType[2], assigning storedType[1], preserve the initial byte in v1 and its signed-halfword spill at sp+0x4E for the last call. Test the clear FALL case first when assigning 0x4B versus 1: the target uses bltzl with the set-case store in its delay slot. Diff score 0 and full ROM checksum OK.


### Floating zero terms in the Java effect callback

func_802DC738_1F5448 retains the target floating multiply and divide chain with an integer zero coefficient: ((f64)(f32)sins(angle) / 32768.0) * 0. Spelling the coefficient 0.0 folds the entire term away. For the Z expression, putting (jointZ + coefficient * sineRatio) on the left and cosineRatio * 0 on the right makes IDO evaluate the cosine term first, matching the target arithmetic and floating registers. Plain s32 input coordinates with s16 argument casts produce the target halfword reloads and cached word spills; making input coordinates SignedWord unions introduces extra alias-driven reloads. SignedWord remains appropriate for output coordinates passed by address. This candidate is still NON_MATCHING (847), with only register and stack differences after more than 20 builds.


### Java skeleton controller: reuse the preceding joint store

func_802D7B68_1F0878 matches all instructions and the full ROM checksum. Search-AsmPattern found the same skeleton update in matched func_80094DE0_A3D90 and func_802D738C_18FE9C. Write the root angle through unk6Unsigned, assign the child angle from its negated stored value, and then call func_80086164_95114. Negating the alien field directly keeps a second halfword load because the preceding skeleton store may alias it. Using the stored skeleton value retains one load and both target stores.

Use direct alienInstances[arg0] accesses, as in the reference: IDO still caches the address in s0, but an explicit AlienInstance pointer declaration adds a stack slot and enlarges the frame. Declare the two-element joint array before an unused halfword and the saved delay halfword to put them at sp+0x38 and sp+0x34. Place unk1E = 6 after both flag updates in C; this colors the constant in t3 while the target scheduling still emits the halfword store before the flags. Redundant narrowing casts can be removed without changing the checksum.


### Java death animation: corrected chain and promoted coordinates

func_802D9CB8_1F29C8 remains NON_MATCHING at 1187 after 20 compiled variants. Replace double-scaled skeleton indices with ordinary D_8014DD50 array access, and retain exactly five signed children rather than reading a sixth child for the last animation call. Use the s16 joint locals directly: byte aliases cause IDO to spill and reload bytes instead of the target halfwords. Initialize the alien pointer after func_80089EB4_98E64 to match the target load order.

The periodic effect radius is an unsigned conversion directly from the double product of the alien type radius and 0.75. An intermediate f32 and signed cast remove the required unsigned conversion sequence. Explicitly narrow the saved coordinates into s32 locals before the terrain call; IDO caches words and emits the target redundant short argument conversions. Put the five joint halfwords first, followed by the terrain word and float, to obtain the target frame 0xA0 and float slot 0x8C. Word angle locals without an explicit mask improve the addition registers; sins and coss already narrow their arguments. Remaining differences are call-load scheduling and temporary registers. Separate coordinate temporaries, comma operands, argument casts, source-line splitting, and signed/unsigned angle alternatives did not resolve these. Rewrapping restores the full ROM checksum.


### Java turn controller: integer float multiplier and short type-index home

func_802DD294_1F5FA4 is retained NON_MATCHING at score 10 after 34 compiled variants. Capture its s16 type index between the current-health read and damage subtraction, before either sound call. This gives the target opening temporary registers. Declare the s32 damage difference after the other word locals and immediately before the type index: its home is sp+0x20 and the type index is sp+0x1E in the target 0x38 frame. Reuse the angle-adjustment word, but read unkA and the final unk1E directly rather than reusing the damage variable; that removes extra moves and permits hoisting the final 0x320 argument into a2 during floating setup.

Use an integer 2 as the second floating multiplier. Spelling it 2.0f causes IDO to replace the multiply with an add and changes the floating register sequence. Keep both explicit clamp stores, including the unchanged-value cases. The turn-speed call takes 0x1F4 rather than 0x400. Remove the decompiler halfword aliases and use word temporaries for arithmetic. Every instruction now matches except one swapped floating multiply operand pair. Changing the existing array constant into a scalar resolves the operand order, but IDO places that scalar in .data at 0x802E0D4C, breaking its required .rodata address; restore both its definition and header. Named floating intermediates, casts, pointer dereferences, comma expressions, and arithmetic identities did not resolve the last pair. Rewrapping restores the full ROM checksum.


### Java two-joint controller: negative remainder divisor

func_802DD5CC_1F62DC remains NON_MATCHING at 2568 after 24 compiled variants. Matched func_80094DE0_A3D90 and func_802D738C_18FE9C confirm the root / unkC / unkC / unkD / unkD skeleton chain. The coordinate transforms take the saved first child and root, not the alien ID; capture their three word outputs into the short input array between calls and write the final outputs to alienTypes fields unk20, unk22 and unk24. Passing the address of D_802E09C0_1F96D0 supplies the animation table pointer correctly. Reusing padding for a selected-joint word removes two scoped halfword homes and restores the target 0x68 frame.

IDO simplifies a byte counter modulo positive 4 to ANDI and a branch, even through a named signed temporary. Using modulo -4 instead retains the target BGEZ / ANDI / BEQZ / ADDIU -4 sequence. For this zero test the divisors are mathematically equivalent. An explicit s16 counter introduces unwanted sign-extension shifts; a direct int cast of the byte field avoids these. Cache the terrain height as a word before assigning the alien height and passing its signed low halfword to the effect callback, otherwise IDO reloads the global with LH. Remaining differences are register coloring and instruction scheduling. Rewrapping restores the full ROM checksum.

### Pulsing billboard: declare the real global basis type

`func_8008D510_5D9C0` matches after declaring `D_800DE0C0` as the existing `CameraBasis` rather than `f32[]`, and using its six fields. Casting the array to a struct at the use sites leaves all six MUL.S operands reversed; changing the actual declaration fixes them and preserves every existing match. Use a `FrontendRingOffsets` local for the six products, keep separate width/height floats, and inline the signed-short pulse-table conversion into their definitions. The animation index `D_800E1D6B` is signed, requiring LB and post-increment/decrement reloads. Function diff zero and full ROM checksum OK; no rodata changed.


Frontend func_8008B264_5B714 matches with a separate u8 copy of its u8 effect-ID parameter and a reused s16 chain index for the initial parent lookup. Read the final next link as `nodes[index].next` instead of through the cached node pointer: the latter reserves a second containing-node pointer across random calls, spills the effect ID, and changes all saved registers. Keep the cached pointer for size and early-release accesses. Express both random size increments with `node->size += random() % bound + bound`; the expanded `node->size = node->size + ...` produces the same instructions but exchanges the LH and MFHI destination registers. No integer address cast is needed on the typed payload view. Diff zero and full ROM checksum OK.
