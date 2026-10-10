### cfe temp stack gap: declared variable vs compiler-generated spill

When a value needs to be preserved across function calls and is used as a (s16) parameter multiple times, the compiler may create a cfe temp (compiler-generated spill) at a **higher stack address** than an equivalent declared local variable.

**Observed pattern (score 8, only stack offset differs):**
- Target has a cfe temp at `sp+0x30` with a 4-byte gap at `sp+0x2C`
- Current C has the same value as a declared `s32` at `sp+0x2C` (packed contiguously)

**Key insight:** Removing unnecessary outer `(s16)` casts from intermediate calculations fixed register allocation but the stack offset for the stored spill value remains 4 bytes off.

**The pattern:**

```c
// Target layout (compiler-generated):
// sp+0x24: first_value  (sw in delay slot)
// sp+0x28: second_value (sw before jal)
// sp+0x2C: [gap - alignment]
// sp+0x30: spilled_shifted_return_value (cfe temp)

// C code produces:
// sp+0x24: first_value
// sp+0x28: second_value
// sp+0x2C: spilled_shifted_return_value (declared variable, no gap)
```

**Workaround:** `#ifdef NON_MATCHING` with `#pragma GLOBAL_ASM` since the C code produces the exact same instruction sequence, differing only in the stack offset by 4 bytes. The gap at `sp+0x2C` is created by IDO treating the spill as a cfe temp rather than a declared local.

**Variables that were tried without success:**
- Adding `s32` padding variables (shifts all offsets or grows frame to 0x40)
- Reversing declaration order
- Using `(0, expr)` comma operator
- Inline computation without declaration (triggers callee-save register usage)
- Different cast patterns on sp24/sp28 assignments
- Anonymous inner blocks for scoping

### Inline one delta to control the paired save slots

In func_800B9228_C81D8, both named s32 deltas produced a0 at sp+0x18 and a2 at sp+0x1C. The target instead saves a0 at sp+0x20 while retaining a2 at sp+0x1C. Remove the named Z delta and repeat (arg1 - arg3) in the angle call and absolute-value calculation. IDO caches this expression and preserves it across the call, with exactly the target save slots and no new instructions. Inlining the X delta instead exchanges the two slots and still fails.

Declare the temporary angle halfword before the saved half-angle halfword so the latter occupies sp+0x34. Verified with a full ROM checksum match.

### Reviewed instance: the gap can be 8 bytes, and neither block size nor declaration order moves it (func_800E5E3C_F4DEC)

`overlay_gameplay/outside/CFE30.c`, 123 instructions, score **16**, `ins_diff -noregs` delta **+0** - the same mechanism as above, but the gap is two slots. IDO spills the masked `arg1` copy (a cfe temp created for the `osSyncPrintf(&D_80143F7C_152F2C, arg1)` argument and still live in the loop test) at `sp+0x44`; the target has it at `sp+0x4C`. The `type` local is at `sp+0x40` in both and the frame is `0x58` in both, so the whole divergence is which slot the spill gets.

Measured variants (one compile each, file restored after every probe; baseline re-measured **16**):

| variant | score |
|---|---|
| declaration order permuted, reversed, `type` first/last, assignment order swapped | 16 |
| `(u8)` cast on the call argument / on the loop-test operand | 16 |
| `s32 count`, `s32 j` (declared-block 16/20/24 bytes) | 16 (or 12384 when the type change alters codegen) |
| named copy local (`s32`/`s16`/`u8 arg1Copy`, declared first/middle/last, used in the loop test) | 42 / 238 / 669 - all worse |
| declared-but-unused pad, 4 or 8 bytes, first or last | 42, and the frame grows |

So the spill slot is not a declared-block-size or declaration-order question here: the target allocates 8 bytes at `sp+0x44`/`sp+0x48` for something this reconstruction does not declare, and a pad is *charged* rather than free (unlike `func_800FD510_10C4C0`). Parked at 16.

### Counter-instance: declaration order DOES move the gap when a halfword local sits above a 4-byte pad (func_80113310_1222C0)

`overlay_gameplay/outside/101840.c`, 318 instructions, score **26 -> 0**. The five differing rows are all stack
offsets in two groups: the named `s32 wasAboveWater` at `sp+0x40` (target) vs `sp+0x3C` (ours), and a cfe temp
spill of a loaded `D_80222A70` halfword at `sp+0x48` vs `sp+0x42`. Declared block:
`s16 sp4E; s16 sp4C; s16 sp4A; s32 pad; s16 varA2; s32 wasAboveWater;`.

The one lever that closed it: move `s16 varA2;` **above** `s32 pad;`, giving `... sp4A; varA2; pad; wasAboveWater;`.
Score 26 -> 0, both homes land, frame unchanged at `0x58`. Neighbouring variants measured: `pad` last 8; no `pad`
201; `pad` as `s16` 6; `s32 varA2` 1603; `s16 wasAboveWater` 418; the trio reversed 60.

So unlike the `func_800E5E3C_F4DEC` instance above, here the spill slot *is* a declaration-order question: ordering
the 4-byte pad **after** the halfword locals carves the 2-byte hole the temp needs, and the temp only lands correctly
once the locals are ordered that way. Try this reorder before parking a gap-class residual.

### Reviewed instance: a byte local's position among the word locals moves its own spill home, but not the frame (func_80088760_97710)

`overlay_gameplay/outside/884C0.c`, 428 instructions, score **97 -> 73**. `ins_diff -noregs` delta **+0** and the
asm-differ table flags only **10** rows: a `u8` local spilled at `sp+0x5F` (target) vs `sp+0x67` (ours) with its two
reloads, and the three `u16` locals homed at `sp+0x52/0x54/0x56` (target, ascending) vs `sp+0x54/0x56/0x58` (ours,
descending under the committed `u16 r1; u16 r2; u16 r3;`). The frame is `0x60` (target) vs `0x68` (ours); every other
row, home and the whole 14-argument tail are byte-identical (the argument stores at `sp+0x10..0x34` agree exactly).

Two connected levers, both measured (one compile each, file restored after every probe, baseline re-measured 97):

| variant | score |
|---|---|
| `u16` trio declared in the target's ascending order (`r1, r2, r3` reversed to `r3, r2, r1`) | 89 |
| `u8` local moved out of first position - to the **middle** of the word/pointer locals | **73** |
| `u8` local moved to **last** | 133 |
| the two together (byte middle + ascending `u16`s) | **73** - the floor |
| byte local declared `s32` / `u32` / `s16` | 1336 / 1488 / 3496 (changes codegen) |
| extra declared-but-unused pad, 2/4/8 bytes, first/middle/last | 73-193, never better; an unused pad is not allocated at all (`pad8` first measured 73) |

So the byte home *does* respond to declaration position (it moved 4 bytes with the reorder and 8 with the ascending
halfwords), but the **frame stays 8 bytes oversized** no matter the order, and the three `u16` homes stay 2 bytes high
regardless of type (ascending vs descending is the only thing that moves them). The three word/pointer locals are all
register-allocated (removing `alienIndex` outright and inlining its one `alien - alienInstances` use measured 165),
so the extra 8 bytes are not a declared-local that can be dropped. Parked at 73: source order lands the ordering but
cannot shed the frame, which is the residual cfe frame reservation.

### Partial paired-trig collision response: inline calls and promoted arguments

func_801073FC_1163AC remains NON_MATCHING after 22 variants; score 274, reduced from 3463. Inline both coss calls in the X velocity difference and both sins calls in the Z difference. A named first s16 result stores at sp+0x3E, while the compiler-generated return temporary uses the target sp+0x3A. Replace the two named word-angle locals with repeated (u32) casts of the existing u16 angles in the trig calls. These casts retain the two argument saves at sp+0x34/sp+0x30 while removing eight bytes from the frame. Keep one unused word after the two input-speed floats to preserve the target gap before the velocity differences.

Use integer 2 for the final impulse multiplications; 2.0f becomes addition to itself. Return 1 inside the first collision-class branch, then continue with the other class below it. This restores the target return layout.

Assign the scaled speed to its named float, but repeat the literal scaling expression for the final impulse. IDO then preserves the product in both the named slot and the expired argument temporary at sp+0x30, as the target does. Reading an aggregate constant again cannot share that product across helper calls; a named double also enlarges the frame. The retained literal candidate differs in one constant-pool address and the scheduling of the angle-helper float loads. Existing rodata placeholders remain, no new file was created, and the wrapped ROM passes verification.

### Dispatcher integer conversion before calls (partial)

func_8010FAFC_11EAAC remains NON_MATCHING after 21 variants, score 40 versus initial 8988. Every switch path must reach the shared entry increment; continue incorrectly bypasses it. Use if (i--) and a do/while (i--) loop to preserve the raw counter copies and decrement delay slots. Reuse one function-scope word temporary for the first four entry payloads and the computed damage. Self-assign the weight variable with the float-to-integer conversion before copying it to the shared temporary. Separate input and output variables let IDO delay the calculation past later calls and introduce an extra saved floating-point register. A nested scope around the weight calculation restores the final weight-test register. Literal 3000.0 restores constant-load scheduling, while reading the explicit array moves the load earlier. The retained candidate has the target instruction count and stack size; remaining differences are six register operands and the constant/jump-table addresses. Restored the placeholder and wrapper because generated rodata lands after existing constants; no new file was created.

### Partial four-point terrain sampler

After 20 compiled variants, func_800FA018_108FC8 remains NON_MATCHING at score 4601 versus 5674. Remove the named double half-distance and repeat the converted shifted distance in the paired cosine/sine expressions. IDO creates a shared conversion temporary and reduces the frame by eight bytes. Keep the signed-word intermediate cast before narrowing each float coordinate to s16, as in matched neighbor func_800FA40C. Order the nine short outputs h0, h1, temporary, h4, h5, h2, h3, h6, h7; the original declaration placed h2/h3/h5 in the wrong slots. Moving short declarations into a nested block improves allocation; array outputs and named angle variants do not match. Remaining differences are chiefly the vehicle pointer retained in S0 instead of reloaded from the argument slot, frame offsets, and temporary scheduling. Explicit double casts on the float trig result are unnecessary because division by 32768.0 promotes it. No new files were created.

### Dispatcher constant aggregate follow-up

For the guarded score-40 `func_8010FAFC_11EAAC`, changing the existing 3000.0 array to ShadowGeometryConstant and assigning scale from .value retains the 0x60 frame and correct constant address, but moves its LDC1 ahead of the half/twenty setup (score 335). The generated jump table still lands at 0x80144D90 instead of the target 0x80144D20 after removing the placeholder. Moving the scale assignment after the cached table pointers does not resolve this. Assigning the computed impulse directly to speed instead of first overwriting the inner weight, or inserting a float conversion local, worsens allocation to 3477. Restore the original literal-based guarded candidate and placeholder; no new translation unit was created.


## Walker update dispatcher: shared increment and byte-local placement

`func_800F4DB0_103D60` improves from 26550 to 215 after 56 compiled variants and remains guarded. Replace raw alien offsets with `AlienInstance` fields and root word casts with `limbs[0].words`. Verify the alien-release helper: `func_8007A4F8_894A8` takes one signed word argument and returns a signed word; the four-argument local declaration forced extra saved values and argument copies.

Use a byte `for` counter with `continue` paths reaching one shared increment. Explicitly incrementing the byte before each `continue` created word stack mirrors and duplicated updates. Inline each animation-table count in its loop condition, since the target reloads it at every latch. Materialize each three-state OR as a ternary returning 1 or 0 to retain the Boolean branch sequence. Use a switch for states 2, 4 and 8, and continue after the final height update to retain the store followed by a branch with an index reload in its delay slot.

Remove unnecessary named state, alien index, pointer, root coordinate, frame, and absolute-value temporaries. Compute the speed correction as a word ternary with the nonnegative arm first; use `BH_ABS` for the root heading test. Put the alien Y operand before the table Y operand in the limb-height addition: this restores the temporary-register cycle for the entire remainder of the function. Declare the two byte locals together after the three word locals, followed by one unused word. This gives frame 0x68, index 0x5B, interpolation byte 0x5A, pointer spill 0x60, and helper argument spill 0x48.

The retained code has 446 of the target 447 instructions. The only substantive residual is the initial index cache: the target copies the loaded byte into both s1 and a3, whereas the candidate uses only s1 for the first flag comparison. All later instructions and register operands agree. Refuted: unsigned array indices and flag views; comparison operand swaps; byte masking and casts; signed/unsigned/halfword index aliases and a signed/unsigned union; alias reuse for the doubled frame; array counters; do/while increments; if(1) and do/while(0) wrappers; moving initialization out of the for header. No files were created.


## Vehicle collision result selection (partial follow-up)

`func_8011049C_11F44C` remains guarded at its existing score 510 after 29 additional compiled variants. All instructions through the two collision loops and their latches match exactly, including the 0x90 frame. The target loads accumulated flags into v0, tests bit 1, and uses a branch-likely zero return; IDO instead hoists the zero return before the test, keeping flags in t5. The target also retains an unreachable final zero assignment. The sole caller treats the result as a signed word and forwards nonzero results, so there is no evidence for narrowing the return type.

Refuted: explicit inner and outer else returns, duplicate zero returns, nested ternaries, assigning result codes to the accumulator, unsigned or register-qualified accumulation, a one-element accumulator array, checkFlags snapshots, a scoped final snapshot, if(1), while(1), while(flags & 1), do/while(0) with an early break, and masked switches. A repeated bit-1 test before returning 6 prevents the early zero hoist and restores the first branch-likely, but retains an additional conditional branch and uses v0 for the mask instead of the flags. Splitting the inner OR adds a reload and duplicate return-9 path. Returning flags & 1 on the false path lowers the score to 430, but removes another target instruction; it is not retained as an improvement. Restore the existing structured candidate and NON_MATCHING wrapper rather than retaining control-flow experiments. No files were created.


## Walker allocation follow-up: radii and dual index webs

`func_800F3990_102940` improves from 4269 to 1716 after over 50 valid variants and remains guarded. Replace the four named doubles with two signed-short radius locals and inline double conversions of the cached X/Z coordinates. Load the outer radius before the inner radius, before the half-count guard. Keeping the radii as named immutable locals retains their loop-invariant conversions across trig/helper calls; directly indexing the mutable global table inside every expression prevents that hoist and scores 17446.

Use a byte selected-slot cursor, copy it to a word result before the diagnostic call, and return that word result. The paired limb loop needs a word raw index and a word masked index: index++, i = index & 0xFF, index = i. Use the raw index for the first limb pair and the masked index for the second pair and latch. This pressure makes IDO spill the selected-slot word, retaining duplicated stores at the search exits, a word reload for printf, and a halfword reload for the return. A single counter keeps the slot in a saved register and omits those instructions. A byte masked index emits another ANDI and enlarges the frame to 0xF0; keep both indices as words.

Use do/while inside the positive half-count guard to remove the extra entry BLEZ. Declare the masked counter at function scope and initialize it before computing the half count; leave the raw counter scoped inside the guard. Put the angle-step short immediately after the walker pointer declaration. Remove the two temporary padding words after obtaining the dual-counter loop, but keep one unused word where the old unused half-count product temporary was declared. This restores frame 0xC0 and angle-step offset 0xBA. Remove the unused half-count product assignment, redundant explicit double promotion of the float trig results, and the outer short casts on already word-converted coordinates. These cleanups were separately compiled without altering the score.

Refuted: directly reusing the slot cursor as the limb index, cached result arrays/shorts, moving a result address into an unused pointer, all four doubles inlined, removing the outer half-count guard instead of using do/while, and moving the raw counter rather than the masked counter to function scope. An unused pointer to the type parameter initially improved its spill behavior, but becomes unnecessary once both counter webs are retained; remove it. Scalar byte and word copies of the type argument do not recover the missing pre-printf mask. Adding the type argument as a fourth unused printf argument changes all early saved registers and is not retained.

The remaining differences include the missing early type-argument mask and byte save in the printf delay slot, base-angle load scheduling, the selected-slot and half-count stack homes, and the two counter register assignments. The source is structured and uses existing typed limb/alien accesses. No files were created; the restored NON_MATCHING ROM passes verification.


### Collision result return-layout follow-up

Eighteen further variants of `func_8011049C_11F44C` leave its structured baseline at score 510. An inner switch of bit 8 scores 1385; switching the combined boolean OR scores 1520. An inner do/while(0), with or without an outer else and duplicate final zero return, scores 500 but still loads flags into t5, hoists zero into v0, and removes the target's unreachable final zero. A redundant bit-8 test before returning 6 scores 470 without matching the instruction layout. Returning the accumulator on the no-bit-1 path scores 650. These changes do not justify replacing the simpler baseline with redundant control flow.

An inverted outer else plus a duplicate final zero scores 1265; a repeated guarded bit-1 condition scores 1220; ordinary outer else plus duplicate zero and an else that clears the accumulator both retain 510. A ternary result scores 610. Volatile accumulation scores 1304, a final volatile read through the accumulator address scores 1156, and a halfword accumulator scores 1505. Signed-long accumulation, a cast of the zero literal to int, and a halfword cast of the inner boolean retain 510. The pattern search at ROM 0x11F754 finds a short shared load/mask/zero-return sequence in matched `func_8007FB08_8EAB8`; its conditional-return source does not establish how to preserve this function's extra zero instruction. Retained the baseline NON_MATCHING candidate and verified `build/bh.us.z64: OK`.


### Walker lifecycle: reuse existing index locals

Sixteen additional valid variants of `func_800F4DB0_103D60` retain score 215. Reusing the later limb counter for helper indices scores 1853, while reusing it only for the flag comparison scores 223. Reusing the animation byte for either purpose retains 215; reusing the padding word scores 423 for helper calls or 223 for the comparison. Inspection of the 223 variant confirms that the missing S1/A3 copy is still absent and the later scratch home moves from sp+0x48 to sp+0x4C, so it is not an improvement.

A new signed word helper index captured before the active-slot test scores 415; a signed byte scores 1495. Capturing those locals before the periodic test or immediately before the release paths scores 532 and 1612 respectively. A working animation-byte index for all body references scores 7934, or 8618 with a volatile outer counter; a working word index scores 3762, or 3168 with a volatile counter. None reproduces the target's independent helper-call and flag-comparison copies. All builds were checked for successful compilation before diffing. Restore the simpler NON_MATCHING candidate; the full ROM verifies OK.
