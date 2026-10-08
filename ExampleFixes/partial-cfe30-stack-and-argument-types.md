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
