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
