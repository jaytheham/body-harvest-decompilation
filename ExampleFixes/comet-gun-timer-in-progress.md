# Comet gun timer: matched

`func_802E14F4_325644` is now matched (diff score 0, full ROM verification OK).
Use ordinary `u8 savedIdx`, `s16 parentIdx`, and a grandparent pointer.
Initialize `parentIdx = savedIdx = alienInstances[arg0].unk25`, and use
`(u8)parentIdx` for parent array accesses. Crucially, the first state call
reads `alienInstances[arg0].unk25` directly; the later call uses `savedIdx`.
Reading the field directly changes which shared value IDO assigns to a2,
producing the target lbu a2 / andi t8,a2 and byte save ordering. Passing
parentIdx to the first call instead gives score 85 despite identical values
before that call. No artificial address-taking or identity arithmetic is needed.

## Historical experiments (superseded; rejected address tricks must not be used)

`func_802E14F4_325644` currently scores 28. Every instruction, register and
stack access matches except the instance pointer spill: current 0x20,
target 0x24. The parent spill at 0x1C and saved byte at 0x2F are correct.

Use two byte locals: `savedIdx = parentIdx = alienInstances[arg0].unk25`.
The first parent-state call uses `parentIdx`; the second uses
`(&savedIdx)[0]`. Indexed access makes the saved scalar addressable without
an extra pointer declaration. Plain scalar access keeps the value live in
a register across the first call and produces the wrong spill/reload.
The parent pointer index `(u8)(savedIdx ^ 0)` preserves the target redundant
byte normalization. Computing the grandparent pointer before incrementing
the timer reproduces the target address scheduling.

A four-byte saved-index array with element 3 reproduced the registers, but
swapped two nearby stores and put the pointer spills in different slots.
A named saved-index pointer reproduced the instructions, but placed the
instance and parent spills at 0x1C and 0x18. Removing that pointer and using
indexed scalar access produced the current candidate.

Word live parent indices enlarge the frame and change initial registers.
Word grandparent indices defer its address calculation until after the
timer branch. XOR expressions on the instance index shift scratch registers
without fixing its spill. Explicit array-base accesses are equivalent to
the current direct instance accesses.

The current candidate is not matched; full ROM verification still fails.

Further experiments: switching the pointer declaration order or moving them
to function scope preserves score 28. A late instance alias, a constant array
base local, or a reusable call-result local puts both pointer spills at 0x1C
and 0x18. Direct parent accesses through `(u8)(parentIdx ^ 0)` do reuse its
address across calls, but shrink the frame to 0x28 and place the byte at 0x27.
Padding that form restores the frame and byte while leaving the pointer
spills too low. Mixing plain and XOR instance indices emits a second address
calculation. An indexed assignment to the saved byte changes the initial
register allocation; initializing its indexed form first emits an unwanted
zero-byte store. None of these forms matches yet.

Declaring an explicit instance pointer first moves the saved byte down four
bytes without fixing its spill. Changing the argument to `int` and casting
its indices to byte removes the argument store and changes initial scheduling;
the original byte signature is restored. Reversing the two byte assignments
shrinks the frame and changes registers. XOR on the loaded parent byte shifts
scratch registers, while early indexed reads of the saved byte shrink the
frame and swap two stores. `(&alienInstances[arg0])[0]` is equivalent to the
plain direct accesses. Promoting the index with `arg0 + 0` produces a shift/add
stride sequence instead of the target multiplication. Current source remains
the plain direct-access score-28 candidate.

Moving the timer increment before grandparent-pointer construction changes
load/store ordering and keeps the same wrong spill. A named `s16` timer
loaded after increment produces the same score 28; a word timer local moves
both spills down four bytes. A four-byte struct with its index at offset 3
does not fix the gap: plain member access keeps the index in a register;
indexed address access reproduces the instructions but puts pointer spills
at 0x1C and 0x18. A separate byte instance-index copy introduces saved `s0`
and a larger frame. These experiments have been removed from current source.
Pattern searches at 0x3256D0 for four and six instructions found only other
unmatched functions, so no matched reference for this exact spill sequence
was available.

A single saved byte changes initial register ownership and shrinks the frame;
assigning a separate live byte only in the first call does not restore it.
A pointer-field aggregate preserves instructions but enlarges the frame and
still spills the instance at 0x20. These variants are removed.

New diagnostic direction: IDO's `-K` retains intermediate files. A temporary
`-K` addition to CFLAGS followed by the required `tools/make.ps1` produced
`318E20.B`, `.T`, `.G`, `.O` and `.s` in the repository root. Normal Makefile
flags were restored immediately, and diff score 28 was verified unchanged.
The intermediate files are available for inspection of actual allocation.

Additional declaration tests: register grandparent, u8 pointer to alienIds,
and pointer to the full alienIds array all reproduce score 28 and the same
instance spill at sp+0x20. One-element parent pointer array scores 3076;
one-element instance pointer array scores 3750 and introduces an initial
pointer store. Direct grandparent access in the condition scores 4269,
deferring address computation and shrinking the frame. Best scalar pointer
candidate restored after these tests. Debug g3 ECOFF local symbols place
savedIdx at FP-1, parentIdx at FP-2, parentInst at FP-8, grandparent at FP-12;
the compiler instance temporary then occupies FP-16. Register keyword does
not remove the local pointer home from this allocation.

A u16 live parent index with explicit byte conversion at the first call
scores 975 and changes register allocation. A one-byte saved index array
scores 522, moving pointer spills and changing scratch registers. A named
instance pointer with indexed address access only for the final decrement
scores 2965 and introduces an initial store. Restricting grandparent to a
block ending after the timer check preserves score 28 and the same spill.
These candidates were removed; the scalar pointer baseline is restored.

Indexed parent pointer accesses, a two-pointer ancestor struct, and reuse
of the grandparent variable for the instance after its final ancestor use
all preserve score 28. These variants were removed. Diagnostic option
-Wo,-zdbug:6 reaches this function before crashing in a later function
(wrapper_ecvt assertion). It identifies the instance expression as global
hash {1447|0}, bit 5, uixa(array base, umpy(argument, 80)); parent pointer
expression is bit 18 and grandparent variable bit 20. The instance is
assigned constrained register 2, parent expression register 8, grandparent
variable register 7. -zdbug:5 crashes before reaching this function, so it
does not yield usable live-range information. Normal build flags restored.

Isolating this function for -Wo,-zdbug:5 still triggers wrapper_ecvt,
so the diagnostic formatter itself needs floating-point formatting; other
functions are not the cause. A subsequent isolated -K -Wc,-d compile
produced compact intermediate files (B 2736 bytes, G 1856, O 2592, s 3449)
but no tree diagnostics. Full source and normal CFLAGS were restored,
the full source was touched after the diagnostic process ended, and the
normal build plus score-28 comparison were verified. Root intermediate
B/G/O/s files now describe the isolated baseline, while T still contains
the earlier full-file g3 symbols.

Current source was externally simplified: parent index uses savedIdx
directly and second call uses the plain scalar, with a comment to remove
variables. Building this authoritative version gives score 818: the early
saved-byte store and parent index mask are missing, and registers differ.
These edits were preserved. The older score-28 form remains documented above.
Read-only reference tools/ido-reference-uopttemp.c from n64decomp/ido
(master, IDO 7.1 decompilation) shows gettemp reuses equal-size temporary
slots marked not_spilled by findbbtemps for each basic block. This suggests
examining basic-block lifetime/reuse rather than more declaration synonyms.
Its relevance to 5.3 remains an inference requiring actual build evidence.

Moving grandparent assignment into the short-circuit condition on the
simplified candidate scores 4215 and defers its multiplication. The prior
simplified source (score 818) was restored and rebuilt.
Using compiler Uopcode/Bcrec definitions plus uini instruction lengths and
bread constant sizing successfully decoded all isolated baseline records:
B has 182 records, O has 180. See tools/318E20.B.decoded.txt and
tools/318E20.O.decoded.txt. O explicitly contains Urstr/Urlod instance
register 3 at FP-16 and parent register 9 at FP-20, followed by Udef local
size 20. Thus the spill displacement is already selected by uopt; ugen and
assembler cannot be responsible for the four-byte mismatch. O is from the
older score-28 candidate, not the current simplified score-818 source.

Const-qualified grandparent pointer initialized inside its own block does
not remove its reserved home: simplified candidate stays score 818. The
current source now restores the target early byte save using indexed scalar
access at the second call and uses (u8)(savedIdx + 0) in the parent lookup.
This explicit promotion/conversion produces the same needed redundant mask
as the former XOR-zero expression, restoring score 28 with every instruction
and register matching except the instance spill at sp+0x20 vs sp+0x24.
Normal build verification still fails.

User explicitly rejected indexed scalar address access (&savedIdx)[0]
as implausible original code. Do not restore it or equivalent artificial
address-taking tricks. Also removed the artificial +0 conversion. Matching
must proceed from ordinary scalar/struct/array code. Separate ordinary
assignments savedIdx = instance parent index; parentIdx = savedIdx, and
parent lookup through parentIdx are the latest tested candidate.
Branch-path instance assignment trial gave score 72 and was removed.

Ordinary scalar trials after rejecting address-taking: reusing parentIdx
for grandparent traversal and passing savedIdx to both calls scores 1909.
Using s32 parentIdx, u8 savedIdx, separate assignments, byte-cast parent
array index, and plain savedIdx second-call argument scores 474. This
naturally emits early sb and later lbu of savedIdx; pointer spills match
sp+0x24 and sp+0x1C, but frame is 0x38, saved byte 0x37, and an extra
andi normalizes savedIdx when copying into parentIdx. Chaining assignment
with the word parentIdx is the latest candidate tested this turn.
Chained word/byte assignment scored 1305, so separate assignments restored.

Further ordinary scalar tests: loading the word parentIdx first scores
1305, same as chained word assignment. Separate savedIdx byte assignment
followed by u16 parentIdx = savedIdx scores 129 and restores frame 0x30
and saved byte at 0x2F. Signed s16 parentIdx produces the same score 129;
the current source uses s16. Initial load is t8, normalization is a2 =
t8 & 0xFF, multiply uses a2, and sb uses t8 after the a0 normalization.
Target instead loads a2, normalizes t8, multiplies t8, then saves a2 before
the a0 normalization. Rest of instruction/register sequence matches,
except pointer spills are current instance 0x20 and parent 0x18 versus
target 0x24 and 0x1C. Chained halfword assignment scores 1331 and was removed.
No address-taking tricks or artificial identity conversions are present.

New best conventional candidate scores 85. Starting from s16 parentIdx
and u8 savedIdx with plain calls, remove named parentInst and replace
its reads with alienInstances[(u8)parentIdx].field. Keep grandparent
precomputed before timer increment. This restores every pointer spill
and all frame offsets, including instance 0x24, parent 0x1C, saved byte
0x2F. Only initial lbu/mask register direction and sb/a0-mask ordering
differ. Separate assignments and parentIdx = savedIdx = byte-field
produce identical score 85; current source uses the latter ordinary chain.
Direct savedIdx parent pointer lookup scores 818. Removing the byte cast
from the signed halfword parent array index scores 2960. Those rejected
variants were removed. No indexed scalar addresses or artificial identity
operations are present in the score-85 candidate.

Reduced-local ordinary byte parentIdx candidate scores 1080, shrinking
the frame and losing the desired byte-save behavior. Reduced-local u32
parentIdx scores 1097, adding saved s0 and enlarging the frame. Both
were removed; conventional signed-halfword score-85 candidate restored.

Assignment inside the parent lookup (parentIdx = savedIdx) retains score
85. Passing savedIdx to both calls in the reduced-local halfword candidate
scores 725 and shrinks the frame. Separate reads of instance.unk25 for
savedIdx and parentIdx score 945, changing base/stride registers and
instruction ordering. All three variants were removed; score 85 restored.

Normal declaration initializers savedIdx = byte-field and parentIdx =
savedIdx retain score 85. Signed-byte parentIdx instead of signed-halfword
also retains score 85 when assigned through savedIdx; loading it first
via savedIdx = parentIdx = byte-field scores 1282. Baseline signed-halfword
chain restored after these trials.

Target pattern 0x32566C count 4 found no reference matches. Unsigned
halfword parentIdx with no narrowing casts scores 1080 and shrinks the
frame. Const u8 savedIdx and const s16 parentIdx declaration initializers
retain score 85. Both experiments removed; baseline restored.

Restricting parentIdx to the timer block and rereading instance.unk25
for the later parent access scores 2995 and recomputes the pointer.
Using savedIdx for that later access instead scores 3330; it still fails
to common the parent address. Those trials were removed. Direct truth
tests on both func_80084FE8 calls (omitting != 0) retain score 85 and
are kept as ordinary C simplification in the current source.

Register-qualified savedIdx retains score 85. An ordinary s16 timer
local assigned with timer = ++instance.unk2C and used for both thresholds
scores 129, moving both pointer spills down four bytes without improving
the initial conversion. Both experiments removed; score-85 source restored.

Explicit (u8) conversion of parentIdx at the first call retains score
85, so the unnecessary cast was removed. Reassigning parentIdx = savedIdx
in the timer branch immediately before the first call also retains score
85; redundant reassignment removed. Baseline direct truth tests restored.

Separate ordinary u8 parentIdx call variable and s16 ancestorIdx lookup
variable plus u8 savedIdx scores 725, merging into the shared-byte result.
Changing savedIdx to s8 in that three-index form scores 995: initial lbu
a2 and andi t8,a2 now match, but saved value is moved to t0 and spilled
with sw/lw at 0x20 instead of sb/lbu at 0x2F, shifting other registers.
Both trials were removed; conventional score-85 source restored.

- Using an `s8` saved byte with the ordinary two-index version scores 1575: IDO emits a signed load and additional conversions/spills. Restored the `u8` saved byte (score 85).

- Separate signed-byte assignment followed by explicit `(u8)` conversion into the halfword index scores 1348; introduces word spill and stack-byte reload. Restored ordinary unsigned-byte version.

Additional ordinary tests before the match: byte parent index 1080; exchanged call arguments 572; separate parent-first assignments 1287; word parent index with direct accesses 3189; reversed declarations 89; signed parent conversion 85 (both calls using saved byte 725); combined timer/shooting conditions each 85; explicit index bitmask 3125; reusable ancestor halfword 1849; single halfword index 1287. The direct first-call field read is the decisive change.

`func_802E1274_3253C4` also matches using the already matched `func_802E193C_325A8C` implementation with the threshold changed from 0x33 to 0x29. The s32 parent index and explicit byte array index conversion eliminate a redundant mask after the known unsigned-byte field load, while changing allocation relative to a u8 index. Verified full ROM OK and diff 0.
