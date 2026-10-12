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

## Current-file-only follow-up (2026-10-11)

D702C: 20 compiled variants tested separate transform vectors, byte payload access, a byte parameter with a matching prototype, pointer/scale assignment order, scalar widths, multiplication order, and removing redundant aliases. The byte-field access is already present in the existing unkE definition; payload[6] is equivalent. No variant improved the retained body, and the parameter/header and function wrapper are restored. A generated variant that accidentally redeclared the parameter was rejected before comparison.

C3BD8: 34 compiled variants remeasured baseline 545. Typed linked-entry/payload forms score 560 or 565. Assignment scopes, signed height, payload store order, explicit color-sum cache and early base initialization do not improve it. A separate promoted width, early width assignment, raw allocation-result cache, and dead width/channel initializations worsen it (1135..1505). Restore the baseline guarded body.

C613C: 28 compiled variants retain baseline 72. Moving the null-branch payload assignment after each of the six primary color stores, a plain scope, and byte-pointer cast accesses are neutral. Literal if(1) assignment scopes score 695. Naming random assignment results scores 227 or 299; removing the linked-index local in those variants scores 876. Naming condition results as well does not improve those scores. The original guarded body is retained.

C56A4: 22 compiled variants remeasure baseline 110. Delaying the index assignment, storing the raw result, or changing loop initialization worsens the match. Keep the original guarded body and correct its stale score marker.

C3E2C matched: compute the linked control payload before updating its phase, retain a named s32 linked index, and access the primary size through D_80154318[idx]. This reproduces the saved pointer lifetimes and removes the duplicate root alias. Testing the signed random remainder as (u32)(rand() % 8) < 1U preserves the target signed-remainder normalization that == 0 optimizes away. Finally write random offset + position for X/Z and position + random offset for Y. Although addition is commutative, these operand orders change IDO temporary allocation throughout the function, resolving score 365 to zero. Verified full ROM checksum OK with the function unwrapped.

C613C follow-up after the fire match: 35 compiled variants tested typed entry pointers, pointer scopes, scalar widths, singleton pointers, cached-entry lifetime, declaration order, and success-block declarations. Assigning tempA2 = (s32)varA1 after each secondary-payload assignment prevents the six null-branch stores from folding into the root address. This reaches score 96 with all 263 instructions and registers matching; only three A1 spill/reload accesses use 0x44 instead of target 0x24. Retain this instruction-correct alternative guarded. Declaration and scope rearrangements did not fix that slot (scores 108..197 or substantial scheduling regressions).

C56A4 follow-up: assignment scopes, word index, duplicate index assignment, payload-kind store positions, and explicit primary/effect pointer aliases did not improve baseline 110. Keep the original guarded body. Two generated effect-pointer variants initialized their pointer after its first use and are invalid candidates; exclude them from matching evidence.

C613C cached-entry follow-up: eight variants tested a singleton word array, a grouped word field, register/unsigned words, and bitwise/arithmetic identity assignments when ending the cached entry lifetime. The singleton array changes scheduling (2346); the other seven retain score 96 and pointer spill 0x44. Keep the existing guarded alternative.

CCD54 follow-up: reverified baseline 218. Search-AsmPattern at DBD18 found matched C4CB8 as a graphics-pointer donor. Twenty-three compiled floating addition/product operand combinations are neutral only when unchanged, otherwise 263..413; eight direct-array field access combinations score 1491..6327; signed/unsigned integer entry-address conversions score 3949, and using the zero-offset unk0 field without integer conversion is neutral. These 35 builds do not fix the graphics cursor/entry s0-s1 exchange; restore baseline guarded. Avoid repeating these variants.

C613C statement-grouping follow-up: 20 variants joined initial linked-entry setup, payload assignments, primary-position stores, secondary palette/state stores, and declarations, separately and in combinations. These do not move the A1 spill from 0x44 to 0x24. Flattening the function scores 494; copying the cached address back to varA1 scores 180; the other variants remain 96. Retain the existing guarded body.

C541C allocator follow-up: baseline 2993 has a 0x60 frame versus target 0x58, an extra branch in the spawn-count guard, and early velocity loads. Forty-eight systematic variants tested guard shapes, vector declaration positions/scopes, removing effect/entry aliases, signed/unsigned address conversions before/after array indexing, and moving vector assignments ahead of primary stores. Removing just the effect alias reaches 2981; converting just the particle entry through a word reaches 2473. The best combination restores the effect alias through a signed word conversion while keeping the particle entry normally typed, reaching 1334. This brings the effect pointer calculation and velocity loads closer to the target order. Both indexed-address and array-base conversions of the effect alias are equivalent at 1334. Converting the particle alias as well scores 2481, and moving vector assignments earlier scores 2119 or 3475. A nested guard with default count inside its else scores 1729. Retain the 1334 candidate guarded; the frame, guard branch, remaining store ordering, and register allocation still need work. No header or new-file changes are needed for this candidate.

C541C declaration/count follow-up: 17 valid declaration variants find that placing Vec3f immediately before the particle-entry pointer improves 1334 to 1305. One generated index-declaration variant omitted idx and failed compilation; exclude it, restore the verified candidate. Twelve count variants test changing the clamped count before assigning spawnCount, shared statement lines, and all word/short/byte combinations for the two count locals. Word reuse scores 1375 or 1415; narrowing locals scores 1590..4600. Explicit conjunction guards with either comparison operand order score 1970. A fresh native build confirms the retained 1305 body; frame remains 0x60 against target 0x58 and the extra guard branch remains. Keep the function guarded.

C3BD8 operand/address follow-up: baseline 545 reverified. All seven independent color-addition operand swaps are neutral, unlike the matched fire updater. Eight early-phase/late-control payload access variants score 560, 630, 1780, 1985, or 2988. Four word-address caches score 3479 when taking the linked address from the global array and 695 through the existing base alias. None improves the retained guarded body. The target creates the linked payload address later; the retained candidate still creates it early. Search-AsmPattern at D2CC0 and the allocator guard D446C yielded no donors. No new files or header changes were made.

## C8814 model renderer follow-up

The correct full-function comparison is func_800C8814_D77C4 to func_800C8C7C_D7C2C, scoring 3374. Initial 20 variants accidentally used the nonexistent C8C00 boundary, truncating the comparison at D7BB0; their partial scores must not be treated as full-function scores. These tested payload arrays, the existing displayList field, moving primary-payload initialization before the linked pointer, a structured do-while, removing unused padding arrays, and vector declaration placement. Retain payload-array access, linked->displayList, and the do-while: fresh builds and complete --show=current comparisons prove their generated assembly is identical to the original HEAD candidate.

Eight full-boundary padding-size combinations (pad2 2..4 words, pad 4..6 words, excluding baseline) score 3549 or 3594, worsening 3374. Function-pointer call casts with Mtx*, void*, or s32* as the last transform argument score 7329; they do not provide evidence about changing the direct-call prototype. The renderer remains guarded, with frame 0x108 against target 0x100, different pointer allocation and remaining instruction scheduling. Nearest matched C820C and C8C7C were read; Search-AsmPattern at D7B18 returns only an unmatched donor. No header changes or new files.

C8814 culling/alias follow-up: twenty angle-local, scale-cache, operand-order, and implicit-condition variants do not improve 3374. Named angle-base locals score 3539; cached final angles 4985..5479; chained scale assignments 6402 or 6542; radius caching 3539; scale-field reuse remains 3374. Reversing camera multiplication operands scores 3384 or 3394. Four explicit intermediate float/integer cast variants are neutral. Seven pointer-address conversion combinations were attempted; recorded scores are 3374 for payload-only conversion, 4747 for linked-pointer conversion with or without payload conversion, and 8488 for primary-pointer conversion with or without payload conversion. Terminal output for the final two combinations was lost across context compaction, so do not use them as measured evidence. The clean baseline was restored and rewrapped.

DA510 full-boundary follow-up: reverified score 120 with the current word-return declaration for D16BC. Eight combinations of sharing the condition, byte declaration/load, and call source lines all remain 120. Twelve argument variants test explicit byte casts, masks, a named byte result before/after the flag load, flag widths, narrowing effect in place, void and comma expressions. Explicit masks score 690, in-place byte narrowing 150, and other variants 120. Eight struct/coordinate-array pointer combinations are neutral without word address conversions; converting both addresses through s32 scores 5192. Three C89 identifier-list definitions of D19DC preserve that already-matched helper at score 0; the caller scores 629 without an explicit byte cast and 120 with one. Restore the ANSI helper and guarded score-120 body. The only remaining mismatch swaps the destination-pointer spill and the argument mask around the call. Search E9658 count 5 and E9660 count 3 finds no donors.

DBE20 sorter follow-up: full comparison to DC18C remeasures the original guarded body at 1200 (frame 0x108 versus target 0xF8). The early FA guard emits an extra branch; target uses a branch-likely store, and target has a separate negative-one store block at the first loop tail. A nested positive outer guard scores 2304 and loses hoisted FE/FA saved constants. Twenty guard variants use early continues, nested negative guards, positive active guards, reversed equality operands, equivalent bit tests, and line grouping. The four families score 2754, 2754, 3499, and 3309; none improves baseline. Seven combinations of removing named -1, -2, and 4 float constants and using literals are all neutral at 1200. Search EAE7C count 8 and EAEC4 count 8 finds no donors. Adjacent matched DBA9C and DC18C source was inspected. Restore the original guarded body. The warning string reference also resolves 0x10 before its target address when this C body is enabled; no layout changes or new files were attempted.

D7870 further follow-up: baseline 510 reverified against actual next D7EF8. Twenty combinations of shared entry/pipe/texture source lines and chained, comma, or same-line scale/product assignments all retain 510. Sixteen expression variants test computing the first product inline before caching scale, a signed halfword mask, copying scale through off0, and reusing scale for the first offset, crossed with index and texture-byte masks. First-product inlining scores 630, copying through off0 540, and reuse 510; masks score 1565..6130. Eight primary/coordinate pointer conversions crossed with first-product inlining score 510, 2335, 510, 2335, 630, 2480, 710, and 2480. No improvement. Preserve original guarded body. Searches E68E4 count 6 and E6A28 count 8 find no donors; adjacent matched D7624/D7EF8 source inspected.

D1A94 ring updater: full baseline remeasures at 1335, not stale 3721. Its loop control flow agrees with the target. Eight combinations of inlining the two post-loop indices and chaining the r/g initializations score 1335, 1379, 2203, or 3344. Twelve named-white variants test s32/u32/int/u8 and assignment before/after the blue store, or shared lines. Separate-line forms score 1314; shared-line forms 1316. Retain the first s32 white variant guarded. All nine s32/int/s16 combinations for the two index locals remain 1314. A fresh build confirms this candidate. The named white changes local layout: Vec2 coordinates and RGB base now agree with target 0x40/0x3C/0x38, but frame remains 0x50 versus 0x48, payload spill is 0x24 versus 0x34, and the colors still use three constant materializations rather than the target's two. Do not interpret the small score improvement as solving constant sharing. Initial pool allocation remains different (loop index a3 instead of a1). Search E0AC8 count 6 finds no donors. Caller search uses rg -uuu; DABBC is the caller. Existing helper declarations and RingVisualState fields are sufficient; no header or new-file changes.

D1A94 pointer/layout follow-up: eight direct-index/opaque-entry combinations are neutral at 1314 without the entry word conversion; converted-entry forms score 3544 or 4983. Twelve color forms (signed -1 values, copying fields, both chain orders, shared lines, and byte-array views) score 1314..1319 and do not remove the third materialized constant. Twelve first-entry lifetime variants move its setup among the index/color stores, crossed with removing the payload word conversion. The converted-payload forms retain 1314 except moving its X load earlier (2273); normal payload forms score 1415 or 2253. Ten local aggregate layouts group the final payload pointer with RGB and both Vec2 buffers, varying declaration placement and padding 0..5 words. These score 1478..1818 and enlarge the frame to 0x58..0x68; none improves the existing 0x50 frame. Restore guarded 1314. E0B48 count 4 finds many short store-pattern donors; E0B40 count 6 finds matched AEC34, whose source and assembly were inspected. Its shared stores use zero, so it does not directly explain the ring updater's repeated 0xFF. Matched E2668 also shares repeated constants across global stores; local RGB trials remain unresolved. No header or new-file changes.

E24B8 emitter follow-up: full baseline is 3799. Six identifier-list definitions of DEED0 preserve its match but score 6642/3799/4149/3799/3799/3799 in the caller; restore ANSI helper. Sixteen argument line splits are neutral. Eight staged-coordinate variants score 3847/4838/4838/3847/5796/7048/2750/4192; retain s16 X/Z caches. Eight split-coordinate arithmetic forms score 2750/3534/2785/4096/2750/3997/4820/5072. Narrow scopes were then tested; the retained body puts speed temporaries in an early block and RNG halfwords in the spawn block. A fresh build verifies 2598, frame 0x48 versus target 0x30, with the alien spill now at target 0x20. Eight idiomatic direct/aliased-pointer, cached/nested-last-RNG and cached/inline-coordinate variants score 4634/4626/3831/3831/5679/3837/5742/2798. Eight further scope combinations retain 2598 when divisor stays outer and score 2750 when divisor moves inward; the attempted ninth build stopped on a PowerShell native-warning exception and was restored, so remaining combinations were not measured. The first scope loop terminal tail was unavailable; do not infer unrecorded scores. Search F1500 count 8 finds matched 8B8E4, whose source/assembly were inspected. Search F15F0 count 5 finds no donors. Rewrap retained emitter; it is still unmatched. No header/new-file changes.

E5E3C further stack-cache probes: eight first-format pointer forms (char/const-char, signed/unsigned address conversions, void bridge, array element zero, and zero-offset view) all score 16; restore original expression. Eight narrower local-scope combinations for j, newCount, and outer i score 16/42/16/16/42/16/16/16. Eight duplicate first-print-argument probes score 1559/1559/16/1559/1884/1559/1559/1559. The unsigned duplicate is instruction-neutral but does not move the cache, so discard all unnecessary print arguments. Search F4DF4 count 6 finds no donor. Adjacent matched E5CF4/E6028 source was inspected. Restore original guarded score-16 body; no full match, header changes, or new files.

CDDE4 scale-store follow-up: fresh baseline 1271, not stale marker 2143. Twelve signed/unsigned scale-array, chained-constant, and rotation-zero-order variants score 1271/1271/919/1184/1271/1271/919/1184/1271/1271/1257/1257. Retain the signed three-short scale array and chained constants. Reordering the chain to Z=X=Y improves 919 to 903. Sixteen initial/branch volatile, cached rotation constant, chain-order, and rotation-Z timing combinations score 919/1833/919/1833/903/1825/903/1825/921/1815/921/1815/929/1819/929/1819; whole-string volatile probes also qualify the final else-chain store, so they are not first-store-only evidence.

Eight focused first-store volatile, zero-chain, and field-copy combinations score 903/1303/920/1320/1168/1373/1168/1373. Eight initial-store pointer-alias and after-index placements score 1303/903/1951/1303/1432/903/2433/1432. Eight switch case/default order/scope and initial-volatile forms score 4291/937/4291/937/5255/1329/5255/1329. Four explicit first-pipe packets interleaving the scale initialization score 1462/923/1462/923. Four final probes swap only the else rotation zeros and move only branch rotation-Z stores: 903/899/929/925. Retain the negative zero order change. A fresh build verifies 899, frame 0x98 and all buffer addresses unchanged. The initial LI/SH is still eliminated, leaving the C function two instructions short; the full-boundary diff consequently includes the following function prologue at its tail. This is not a match. Restore NON_MATCHING.

Search DCD94 count 7 finds matched C4274, whose source was inspected. DCDD8 count 6 finds no donor. DCEE4 count 5 finds matched B1814 and 139984: both sources were inspected, but their comparable shared stores are terrain/global initialization rather than this local scale. CDD7C/CE040 neighbors and the DD604 caller were inspected. No rodata, header, compiler-flag, or new-file changes.

C7924 checkpoint: correct existing warning string, common allocation return, early linked child index capture, incoming halfword source/speed views, and unsigned-byte mode retained. Fresh score 4225 (original 5215). Target mode actually LBU, correcting an earlier mistaken word-width reading. Eight pointer/shared-float/order trials scored 4225, 6395, 7265, 6077, 4225, 6395, 7265, 6077. Direct payload array writes remain best; shared float and payload pointer worsen scheduling. Narrow ANSI parameters scored 6195 but header restored to preserve matched callers. Identifier-list trial output lost; no claimed result. Still differs in division scheduling, third payload address placement, and frame size; rewrapped NON_MATCHING.

C5894 checkpoint (actual boundary C5D14): structured while plus two enclosing blocks reproduces original 4947 without gotos. Existing ribbonState union accesses replace pointer casts. Explicit first division quotient gives 4645; matched inside donor func_80084258_16C318 shows a for-clause payload pointer refresh and direct array next-index access. Combining these with s32 cached divisor gives 1159; equivalent gravity >= -0x13 branch gives 574. Fresh build/diff confirms 574 after formatting. Remaining: frame 0x68 vs 0x50, one missing MOVE in signed-halfword counter decrement, temporary register bank shifted before first division and after loop. Counter/index order and deferred narrowing worsen; inner quotient/divisor scopes neutral, third enclosing block634. More than 80 trial variants total. Retained under NON_MATCHING pending final frame/register match.
C7924 further 16 volatile index/speed/pointer/float trials: no improvement on4225; best alternate4272. Guarded checkpoint unchanged.

C5894 additional 64-trial checkpoint: twelve declaration orders574/598; split for-init and multiline headers574, while-pointer update9879, removing redundant first var_a3 assignment1104, removing pointer entirely1120. Sixteen cast/compound-update forms: first eight574; narrowing first quotient to s8 gives2149. Retained equivalent compound position/alpha/gravity updates and removed velocity narrowing casts, freshly confirmed574. Scalar reuse/scope variants574/590/950/926: reuse quotient as temp_v0_4 AND temp_v1_3 as temp_a1 reduces frame68 to60 at926, a possible future frame lead. Removing redundant temp_s6 is neutral574 but discarded. Explicit initial index cache654; comma counter-decrement/index update769; both849; combining increment and mode-if on one line neutral574. All measured after successful native builds, rewrapped after fresh574 verification. No full match yet.

C5894 follow-up: sixteen width/reuse trials scored574/926/574/1516/598/950/598/1540/598/950/598/1540/582/934/582/1524. Widening counter or saved next index enlarges frame68 to70; explicit halfword counter assignments do not fix missing MOVE. Small-frame reuse remains60 with worse allocation. Joining all three loop paths (removing continues and moving normal next-index assignment into its branch) is neutral574. Removing var_a3, temp_s6, and quotient together gives1306/frame60, with or without joined flow. Four additional height/alpha reuse experiments were rejected: both values are simultaneously live across the age>=11 alpha branch, so sharing their local is semantically invalid; no such edit retained. Donor searches D4ACC count6 found matched9594C and JavaD5DFC, both read, but generic narrowing sequences do not provide a counter-specific solution. Fresh574 checkpoint rewrapped.

C5894 additional register probes: fresh structural diff for word counter plus word saved next index582 confirms the missing MOVE remains; frame70. Sixteen death-block scope/add-negative-one variants574/2794/634, no improvement. Twelve discarded guards (three locals at four death-path points)574/2794/1914, no improvement. Twelve permutations/placements of packed s16 loopState[3] all12445; discarded, scalar locals restored. Workbench L37/L72-L74 read as hypotheses and directly measured, not presumed applicable: https://github.com/akratch/n64-decomp-workbench/blob/main/docs/compiler-laws/ido-5.3.md .
C56A4 fresh110: sixteen reversed result/effect comparisons, swapped state-OR order, and grouped white/counter initialization110 or130. Sixteen result width/cast probes110/615/2040/1165: unsigned result or unsigned return conversion615; explicit idx narrowing neutral110; u16-to-s16 call conversion2040 (unsigned result1165). No improvements retained. Search D4774 count8 and D47D0 count8 found no donors. Full call prototypes and a caller checked. Restored guarded110 candidate.

C56A4 improved checkpoint50: initialize the loop counter inside the particle-kind store: D_80154318[idx].payload[10] = (i = 0) + 2. This expression preserves all argument load registers and moves MOVE S0,zero after the kind SB, exactly as target. Sixteen kind/counter and self-copy-XOR variants scored110/4917/4917/110/50/3189/3189/3589 twice. Keep original plain self-copy; XOR is neutral. Eight paired-byte/index-store forms50/140/50/50/3179/3179/3179/3179. A malformed PowerShell form-list trial aborted and restored the source; corrected forms rebuilt and measured, no stale scores used. Eight repriced index forms50/380/380/50/380/380/380/50. Word index is neutral but retain the appropriate s16. Fresh formatted build confirms50 and structural diff has no residuals: only T8/T9 allocation remains. Guard restored pending full match; this is not a completed function.

C56A4 score50 follow-up: eight local result/index aggregate arrangements and placements are all50; none retained. Matched DA994's local allocation pair was the donor, and D9B14/D9C98/DA7CC indexed-pointer donors were read after D4774 count5 search. Eight index identities scored50/50/50/50/50/50/165/175; signed-16 mask and explicit safe unsigned-left/signed-right shifts worsen, plain assignment retained. Sixteen declaration-order/name variants all50; no changes retained. Fresh50 verification followed by wrapper restoration; remaining residual still solely T8/T9.

C613C follow-up: a late secondary-pointer declaration with an early palette-copy
pointer scored 104/1528/3791 (outer early declaration), or 121/1605/3864
(inner early declaration), for initializers early pointer / word temporary /
linked array payload respectively. None improved the verified 96 baseline.
Sixteen pointer spelling variants also scored 96. Retain the baseline guarded.
Moving secondary declaration alone into the successful-allocation block scored
113: secondary spill 0x30, palette 0x34, primary index 0x42, tertiary index 0x44.

C56A4 follow-up: 16 post-check identity definitions scored
50/3179/4244/3179/4244/3179/380/975 and
50/3179/3469/2369/3469/3179/380/410. Eight cached self-copy variants scored
3134/3134/3134/3329 twice. Four volatile owner-field views stayed 50.
No changes retained from those probes. The score-50 nested counter initialization
remains guarded; register interchange is still unresolved.
