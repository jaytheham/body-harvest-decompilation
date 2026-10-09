# Partial CFE30 stack and argument findings

These functions remain unmatched. The observations below were checked with
`tools/make.ps1` and the assembly diff; they are not claims of a complete match.

## func_800CC7B0_DB760

The saved C candidate scores 20; it is currently guarded by `NON_MATCHING`. All instructions, registers, real local offsets, and
the `0x68` frame match. Only the cached half-width spill (`0x48` instead of
`0x4C`) and full-entry pointer spill (`0x50` instead of `0x54`) differ.

Removing both the explicit full-entry pointer and the cached half-width local
reduces the frame from `0x70` to `0x68`. IDO still caches both expressions across
the random calls. Removing only one local does not give the desired layout.

The reversed scalar declaration order puts the random halfwords at `0x58` and
`0x5A`, and the unit index at `0x5E`. A local `{ s16 pad; s8 value; }` puts the
second signed velocity at `0x66`; a standalone byte ends up at `0x67`.

The lifetime argument must remain a word in the declaration to preserve the
matched callers' argument conversion. Assigning it directly to the byte field
loads a word. Reading `((u8 *)&arg2)[3]` gives the target `lbu` from its argument
home on big-endian MIPS. A simple `(u8)arg2` cast still loads a word. All four
existing callers were checked and remain exact with the current declaration.

The typed `EffectSparkState` preserves the instruction sequence while removing
the color and width reinterpretation casts. Its final byte is the countdown
decremented through `entry->unk15` in the updater.

An explicit half-width local scoped inside the allocation-success branch fixes
its spill to `0x4C` and leaves only the entry pointer at `0x48` instead of `0x54`
(score 24). Named full-entry locals increase the frame; unions, qualifiers,
unused padding, and declaration permutations tested so far do not finish it.

## func_800DA510_E94C0

A saved candidate at `.match-da510-best.txt` reached score 120. It requires a
word return declaration (`int` or `s32`) for `func_800D16BC_E066C`; the current
guarded definition and header have been restored to their committed types.

Initializing the source payload pointer before the destination entry pointer
reproduces every target spill offset. Changing declarations alone did not do
this. Caching the destination's byte flag before the call then puts its load at
the target position. The only remaining difference is a swap between the
destination pointer spill and the effect ID mask in the call's delay slot.

Widening parameters or adding a return value to the already matched
`func_800D19DC_E098C` changed its assembly and did not solve the caller. Its
committed signature should be retained.

## func_800D702C_E5FDC

The saved `.match-d702c-best.txt` candidate scores 4030 and remains guarded.
More than 25 build-and-compare attempts were made. It is not close enough to
claim a match; scheduling and register differences remain, along with stack
placement differences.

The target reads the signed effect scale from `entry->unk2`, not an unsigned
position component. Both alpha branches read `entry->unkE`, not the model's
byte at offset E. Model offset E is also read as a signed halfword for its Y
scale. A union exposes `scaleY` while retaining the existing byte fields used
elsewhere. The primitive color command supplies white RGB and the computed
alpha.

Passing three separately declared scalar addresses to the matrix helper lets
IDO eliminate other components as dead stores. Use actual three-component
vectors to retain all scale, rotation, and position components. Typed access
to the model scale improves scheduling, but vector declaration permutations,
aggregate padding, local reuse, and byte argument variants did not finish the
match.

With both experimental functions guarded, the full ROM build reports
`build/bh.us.z64: OK`. The corrected headers therefore preserve the matching
baseline. Complete pre-experiment file contents are preserved in
`.match-work-preserved.json`; the D702C experiment sources are collected in
`.match-d702c-experiments.json`.

## func_800E24B8_F1468

The saved `.match-e24b8-best.txt` candidate scores 3839; the C body remains
`NON_MATCHING`. More than 25 attempts tested direct arithmetic, declaration
placement, scope placement, and random-result types. The target's first random
call and speed-magnitude calculation already agree with the original C.

Removing the separate modulo-result locals and hand-written signed division
by two improves the body. Retain a named signed divisor of 30: the target uses
one cached divisor register for the two position modulo operations, including
runtime division checks. The size and lifetime moduli use literal 20 and 10.
Three random halfwords are stored before a fourth random call; the saved
candidate expresses the fourth call as the lifetime argument.

Significant scheduling differences remain: the second position DIV starts too
early relative to the first division checks, and the alien-type load and size
modulo occur in the wrong order. The frame is also too large. Moving the real
halfwords into the branch or changing signedness alone does not finish it.
Searches at F14F0 (8 instructions) and F1494 (9 instructions) returned no
matched reference patterns. Experiment sources are preserved in
`.match-e24b8-experiments.json`.


## func_800E5E3C_F4DEC

More than 25 build-and-diff attempts produced the saved candidate
`.match-e5e3c-best.txt` (score 16). It remains guarded and is not a match.
The 0x58 frame, all instructions, registers, ordering, and other offsets match.
Only the first print's cached entity index uses sp+0x44 instead of sp+0x4C
(one SW and one LW).

Inspect the print formats before trusting reconstructed variadic arguments.
The second format is `shield remove\n`, with no conversions. Removing its
three inferred arguments removes extra moves, callee-save choices, and spills.
The target's A1/A2/A3 contents there are incidental preceding computations.

Copy the whole three-byte entry when compacting the array. Individual byte
assignments generate a different load/store order. Express the following
entry's clears through array fields, and place all three before printing.
The target clears offset 5, then 3, then 4 relative to entry j; this is j+1.

A word newCount avoids redundant signed-halfword truncation. Direct entry
field accesses remove unnecessary byte temporaries and recover branch operand
order. A for loop for compaction schedules SLT before the index's SRA.

Keep the final print and count reload in one comma expression:
`osSyncPrintf(&D_80143F94_152F44), count = D_80152C96;`. This moves the count LH
before restoring the cached type from sp+0x40, exactly matching the target.
Separate statements swap that LH and LW. The first print can remain separate.

Explicit index caches, declaration permutations, scoped locals, scalar type
changes, unused padding, and wider parameter prototypes tested so far do not
fix the last spill. The u8/u8 signature remains intact.


## Shield-update checkpoint after the nuke keyframe match

`func_800E5B78_F4B28` is saved at score 200 in `.match-e5b78-best.txt` and remains guarded. A word timer cache plus explicit count refreshes reproduces the byte-store/count-load/mask sequence. Assigning the short copy index before calculating the new count, then reusing the timer word as the new count, reproduces the target saved-register reuse. Remaining differences are a rotation of loop-invariant registers and the initial copy-bound comparison scheduled after the index conversion instead of before it. Block scopes and a separate word timer cache did not improve this candidate.

`func_800E5E3C_F4DEC` remains at score 16. Plain block scopes around printf and the outer loop preserve score 16. Comma byte-cache expressions add stack space and worsen it to 42. The two accesses to the promoted index still use 0x44(sp) instead of 0x4C(sp); all other instructions match.


## Additional CFE30 experiments (2026-10-09)

The DA510 score-120 candidate has been reconstructed in the guarded C body.
It needs only the `s16 effect` result local: adding an extra word result restores
the same conversions but reserves another home and worsens the frame. Keep the
source payload initialization before the destination pointer, and declare the
byte flag inside the successful-effect branch.

For D5760, Z must be narrowed after adding the origin; the final parent check
reloads the entry link after the child update calls. A named floating-point sine
result evaluated before the origin additions restores more of the target FPU
ordering. The guarded candidate scores 7940 and remains unmatched after over
20 builds; it still retains an extra saved entry pointer.

For E5E3C, optimizer tracing (`-K -Wo,-zdbug:6`, restored afterward) reached the
function despite the later floating-point printing assertion. The named scalar
homes are i=-2, j=-4, newCount=-8, count=-10, type=-16 in the trace. Removing the
type cache and substituting six bytes of unused storage still scores 16; eight
bytes grows the frame and scores 42. An explicit volatile word cache placed
before count reaches the target index home at sp+0x4C with the correct frame,
but changes prologue scheduling and temporary registers (score 652). A union
with volatile-write and ordinary-read members restores the loop registers but
shifts the type spill to sp+0x44 and keeps the prologue differences (score 462).
Neither variant is a match; the simpler score-16 candidate remains guarded.


## Fire allocator after the jet-stream particle match

The guarded `func_800C3BD8_D2B88` candidate now scores 545. Keeping one converted
`EffectFirePayload` pointer through the linked unit phase reset and its later
width/height/step stores restores the missing ADDIU. The instruction count is
correct, but that ADDIU is scheduled before the width clamp instead of after
the lifetime branch; registers also differ. Capture arg5 in the channel word
before the link index assignment. The unused linked-entry pointer can be
removed without changing this candidate.

Converting the shared base globally, converting just the later payload, or
using a separate full-entry view for the phase reset did not match. The separate
converted array base pattern is now proven for CD0B0 (commit 8fae67a2), but its
application here still needs work.

## C56A4 particle allocation (partial, 110)

More than 35 builds tested. A short index plus a word allocation result permits comparing raw v0 with -3, and restores a2 for white and the exact byte-masked loop. Put the constant payload[10]=2 after the parameter-backed field assignments; this fixes all argument load registers. Retain i=0 before those assignments: moving it after all fields makes IDO preserve arg0 in s0 and changes the prologue. Residual: index and self-copy/arg4 use t9/t8 instead of t8/t9, and move s0,zero precedes the payload byte store. Moving the index store before the self-copy fixes the initial narrowing registers but moves the index store early. Converted array bases, named entry pointers, declaration/type permutations, and cached self-copy bytes were worse or neutral. The function remains guarded.

## E24B8 random emitter (partial, 3799)

More than 30 builds tested. A signed-short divisor (30) places the three u16 random caches at target sp24/sp26/sp28 and retains the exact initial random/absolute-speed branch. A shared named word for the last random call avoids nesting but is otherwise neutral. Remaining frame40 versus target30 and major scheduling in the divisions/height lookup. Short arrays, declaration order/scopes, field-first coordinate expressions, explicit argument casts, coordinate locals, integer widths, literal divisors and long literals did not match. Search pattern F14F0 count6 found matched Greece func_802DC500_195010, whose random cache setup is a useful reference. The emitter remains guarded.

## CDDE4 renderer and shield cache follow-up (partial)

CDDE4 reached 1271 with ordinary vectors, frame 0x98, scale/rotation/position at 0x88/0x80/0x78 and direct indexed entry accesses. Its initial scale-Z store is eliminated and repeated scale constants remain separate loads. Long literal suffixes, field-to-field assignments, and an ordinary union alias do not fix this. Volatile aliases preserve the initial store but introduce scheduling differences. More than 40 variants were built; it remains guarded.

For E5E3C, signed print-argument casts preserve score 16; unsigned casts lose the word cache. Named constant locals and cache aggregates move both spills and enlarge the frame. A volatile index assigned within the print reaches 0x4C but changes store/load ordering (259). The ordinary score-16 candidate remains guarded.

Use `rg -uuu` for caller searches in asm: the default ignore rules exclude nonmatching assembly.

## D7870 photon renderer (partial, 510)

Thirty-six variants retained the original best score of 510. The 0x38 frame and nearly all 418 instructions match. Differences are the first loop entry address (two instructions scheduled late and temporary registers) and scale/off0 F0/F2 allocation. Inline scale conversions fix the FPRs but move the entry from S4 to T0 and the coordinate pointer from A3 to S4 (630). Integer scale locals change many saved registers (4116). Float declaration reversal, redundant casts, short-array coordinate views, and scalar/struct scale forms are neutral. Converted array bases, array float locals, and if(1) blocks worsen the output. Keep the ordinary candidate guarded.


## Spark renderer checkpoint (2026-10-10)

`func_800CCD54_DBD04` improves from 2021 to 218 with a do-while loop and `index = D_80154318[index].unk4` at the end. Both changes are needed together: the original infinite loop plus break retains a second saved particle pointer; changing only the link expression does not resolve it. All 215 instructions, scheduling, and the 0x90-byte frame then agree, apart from s0/s1 being exchanged for the graphics cursor and particle pointer. Removing redundant short-to-float casts is neutral. More than 70 compiled variants tested array bases, declarations, pointer types, texture macros, scopes, and loop forms without resolving that swap. The function remains guarded.

When copying prepared variants into the source, update LastWriteTime explicitly before make: Copy-Item can retain the prepared file timestamp and let make reuse an earlier object.


## Smoke allocator checkpoint (2026-10-10)

`func_800C1ECC_D0E7C` improves from 1929 to 154 by passing the original byte `arg3` to C18D0 and removing the literal if(1) block after the allocation. Those changes together restore every instruction and register; the 0x50 frame and root/variant spill slots still differ. Use `arg3` for the initial effect array access as well to reach 136 and the exact 0x48 frame. This shifts the word effect ID, root pointer, short unit ID, and entry pointer spills below their targets while restoring the variant spill to 0x2C. More than 70 builds tested declarations, padding, pointer casts, integer types, scoped values, and grouped locals; the function remains guarded.

Shield removal was also tested with arithmetic identities and explicit comma-expression temporaries in the first printf argument. Simple identities are neutral (16); XOR/shift/multiply/divide identities change a2 to v0 (31), and comma expressions enlarge the frame (42). Removing the named newCount and inlining count-1 changes register allocation substantially. The ordinary score-16 version remains guarded.

### Interpolation-chain initializer: typed payload base and branch scopes

`func_800C613C_D50EC` reached score 72 after 66 trials. A named short linked index and reuse of the primary payload pointer for the final jitter payload reproduce the 0x50 frame, palette at 0x30, and indices at 0x3E/0x40. Keeping the linked entry address as a word restores interleaved palette loads/stores. A scope around only the non-null branch secondary-pointer assignment preserves both payload ADDIU instructions without keeping the entry in S0. The remaining differences are six null-branch stores folded into offsets 8..13 of A2 instead of 0..5 of A1, and three secondary-pointer stack accesses at 0x20 instead of 0x24. Integer bitwise identities preserve the desired base but charge extra expression homes; broader scopes make the linked entry occupy S0 and introduce spills. These are partial results, not a match.

### Water-effect slot initializer

`func_800E614C_F50FC` was tested 23 times. Moving the random angle call before the three slot position stores restores that operation order (score 4649, frame 0x38). The free-slot search still becomes a pointer walk, unlike the target runtime MULTU by 0x1EC, and the clamped X parameter starts in A0 instead of S2. Plain/converted array indexing, word signedness, bitwise address identities, for loops, named slot pointers, preincrement indexing, and increment spelling did not resolve the search. A separate short coordinate introduces redundant narrowing and a 0x40 frame. Reusing arg0 as the angle does not fix its initial allocation. This is not matched.

## Additional CFE30 follow-up trials

After the fifth full ROM match (CD42C), C56A4 trials 40..47 tested moving the loop initialization below the payload kind store, compound/self-mask flag assignments, a scope around root initialization, and delaying the index assignment. None improved the retained score 110.

D7284 was enabled for 23 builds. Its 0x90 frame and most graphics instructions already match at baseline score 2279. Converting payload pointers through the existing short union field, indexing the root alias, and integer pointer conversions did not improve it. Separate locals introduced S0 and extra narrowing; a grouped stack layout increased the frame and changed scheduling. Retain the guarded baseline rather than the grouped experiments.

E5B78 received 25 new builds. Word loop indices, explicit guarded do-while compaction, predecrement/compound/assignment timer forms, byte timer declarations, extra scopes, and a named global-count cache did not improve score 120. Its remaining differences are still the count LH versus timer ANDI and the initial compaction SLT versus SRA order.

C613C post-water-match tests 65..75 found that secondary payload casts through the short union field and two-stage conversions retain score 72; changing primary/jitter casts breaks the register/frame pattern. C1ECC trials 74..81 using named difficulty/type temporaries also worsened its stack layout.

C1ECC trials 82..113 raised the total to 115 builds. Moving the smoke pointer inside the successful allocation block and the root pointer inside the first bounds check reaches score 88: all 201 instructions, registers, frame size, variant slot 0x2C, and index slot 0x42 match. Only effect ID 0x34 versus target 0x3C, root pointer 0x30 versus 0x38, and cached entry 0x28 versus 0x34 remain. Gray declaration scope, register keywords, byte/array/word padding, and payload conversion variants did not improve it. The guarded body retains the score-88 scope arrangement.

C1ECC trials 114..129 tested singleton arrays, grouped locals, and an unsigned cache with signed bounds comparison. A singleton root-pointer array reaches score 72 while preserving all native instructions/registers and frame size. It places root at 0x3C (target 0x38), effect ID at 0x34 (target 0x3C), cached entry at 0x2C (target 0x34), and variant at 0x28 (target 0x2C). The index remains 0x42. That alternative is retained guarded; the simpler scalar scope version remains available in the scope trial notes. Total C1ECC builds: 131.

CA1B0 was compiled for 25 trials. Replace the byte payload with existing SpurtEmitterState and JetStreamParticleState, and read each existing 255.0 constant as array element [0], not an array pointer. This preserves baseline 3380 and avoids generating/reordering rodata. Flattened guards, original-byte allocation calls, root-pointer declaration order, a named origin payload, unsigned comparison constants, scopes, named root/difficulty words, nested success guards, and an integer root address did not improve it. The typed baseline is retained guarded.
