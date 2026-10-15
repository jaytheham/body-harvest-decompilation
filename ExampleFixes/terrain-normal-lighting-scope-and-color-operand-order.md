### Terrain normal lighting: scoped scale and color operand order

`func_800B2CF0_C1CA0` matches with a signed byte normal array and three float color factors. The height samples and RGB inputs/output are unsigned bytes. Five per-level RGB float entries replace byte-offset pointer arithmetic without changing the table bytes.

Keep the normalization scale in a block containing only the three normal assignments. A separate outer interpolation factor is needed for the target floating-point allocation; declaring both floats in the outer scope enlarges the frame. Declare the dot product and interpolation factor before the two slope floats, color factor array, and normal array to obtain slope homes at 0x2C/0x28, RGB factors at 0x1C/0x20/0x24, and normal bytes at 0x18..0x1A in the 0x38 frame.

Index the tint tables directly with `currentLevel - 1`. Naming an intermediate level changes the integer allocation and hoists its address load into the normal calculation. Write interpolation as `factor * (bright - base) + base`; the algebraically equivalent `base + factor * (bright - base)` reverses the table bases and floating-point operands.

The output multiplication must be `colorFactors[i] * (f32)rgb[i]`. Reversing these C operands changes floating-point allocation throughout the unsigned conversion sequences. Retain the `(u32)` conversion before storing each byte: the target includes the complete unsigned conversion sequence.

Verified with the function diff at zero and `tools/make.ps1` reporting `build/bh.us.z64: OK`, including all four matched scrolling callers.

## Radial-light checkpoint in BF9C0

func_800B2354_C1304 improves from 4712 to 2570 but remains NON_MATCHING. Use a byte radius assigned from the unsigned float conversion, increment it directly, and use nested for loops with limits radius + 1. This removes the separate raw-radius and start/end locals. The declaration order in the retained body gives exact tile-X/Y spills at 0x70/0x6C, fraction X at 0x68, and ring-X/Y halfwords at 0x62/0x60. The frame is still 0x98 rather than 0x90, and the private loop-bound save is 0x48 rather than 0x4C.

Interpret the 19x19 buffer as EffectRgb cells using typed grid indexing and r/g/b field accesses. This improves allocation without changing buffer layout; the raw-byte pointer and typed-grid forms otherwise generate the same address arithmetic. Keep the integer truncation before subtracting arg2 from sqrtf. Removing the redundant outer s32 cast from the falloff's float-to-s16 conversion is neutral, as is using compound subtraction for baseX.

Cached raw coordinate locals, raw ring-word intermediates, a named floating extent, signed/byte fraction changes, a short intensity local, native int permutations, reuse of the distance as the RGB accumulator, and an integer return type did not close the residual. Search-AsmPattern finds only the other NON_MATCHING radial-light function for the setup fragments; its C is not a matched donor. The retained candidate still has setup scheduling differences and the distance/intensity/pixel register permutation. Wrapped ROM verification is OK.

## Ground tile renderer checkpoint (not matched)

BF9C0 func_800B9DB8_C8D68 retains score 5536 from baseline 5753. Move
the vertices[2] declaration after map[2], reverse the origin assignments
(X before Y), and consistently swap firstTile array indices and map
array indices. These source-shape changes preserve the logical X/Y use
and restore the target light-command store order. Separate word origins
score 6678 and grow the frame to 0x128; keep word array origins.
Moving the tileSize assignment around the TLUT load/sync or initializing
it in its declaration is neutral. Halfword origins score 5487 but are
not retained because SH/LH replace the target SW/LW. Word map coordinates
score 6579; halfword worldZ scores 5550. Remaining frame is 0x120 versus
target 0x118, map and vertex homes differ, and loop origin spills and
coordinate reload/scheduling need work. The restored wrapped ROM is OK.

The ground renderer now retains 5228. Declare the word origin array in
a new scope after the lighting commands (5260), and move worldZ, tileZ,
bottom, left, top, right, column, palette, tileX and tile into that scope
(5228). Origin homes move from the original high region to 0x98/0x9C;
the target uses 0x6C/0x68. Named scoped origins score 6270. Fully inline
map divisions score 7529: they remain inside loops rather than producing
the target pre-loop stores, despite the frame becoming correct. Plain
if/else edge assignments are neutral; copying map coordinates to right
and top before modulo scores 6313, all four edges 7563. Explicit word
casts in origin division are neutral. Preserve the scoped array version
under NON_MATCHING; wrapped ROM checksum remains OK.

Further ground-loop trials retain 5228. Word tileX scores 7576, byte
tileZ 5324, word tile 5358, and word bottom 6803. A halfword worldZ
with implicit destination narrowing is neutral, as are halfword/byte
tileSize, unsigned palette, and native-int word origins. A named tile
entry pointer for palette load, byte reload and saturating tile update
scores 7911 and grows the frame to 0x128. The target update pattern at
C92D0 has no matched donor from Search-AsmPattern. Restored the scoped
array candidate under NON_MATCHING and verified the full ROM OK.

Ground loop-shape trials also retain 5228. Early row initialization scores
6198. While/do outer loops score 5657, inner loops 6251, both do loops
6680. A word row with explicit byte mask scores 6671. Unsigned origins
and division by named tileSize are neutral. Literal tile size scores
5312; declaring origins first in the loop scope scores 5304; moving map
before row scores 5260. Volatile map scores 8772 and introduces an extra
saved coordinate-address register, so it is not a useful reload remedy.
Restored the best scoped for-loop candidate; wrapped full ROM is OK.

The ground renderer now retains 5210 by placing visibleCount and
culledCount after vertices[2]. Splitting origins into X/Y one-element
arrays is neutral (reverse declaration order 5232); same-line origin
assignments are neutral. Moving row after vertices scores 5338, map
first 5300, vertices first 5392. Current count homes are 0x106/0x104,
vertex homes 0x108/0x10C, map homes 0x110/0x112; target count homes are
0xF4/0xF2, vertices 0xF8/0xFC, map 0x10C/0x10A. Show-StackLayout picks
the caller file 7F220.c and cannot connect to Docker here; use the
compiled assembly's direct stack operands as evidence. Wrapped ROM OK.

Ground renderer improves 5210 to 4538 by expressing each tile-byte access
as ((u8 (*)[64])D_8021EA30)[tileZ][tileX]. This restores the shared tile
address in t2 for the palette read, post-command byte reload, and update.
Multiplying row by 64 is neutral; unsigned row shift scores 5485; named
linear index 8267. With the 2D view, Y-first origins score 4703, scalar
origins 7197, swapped origin indices 4542, word tileX 7558. Retain the
2D view and original word origin array. Edge coordinate casts remain
neutral; masking origins scores 5220 in the earlier 5210 candidate.
Frame and spills still differ; wrapped ROM is OK.

Ground renderer now retains 4458 with target frame 0x118. Reuse the
expired u8 render-mode parameter as row after the vertex builder call
(4460), then swap map array indices consistently (4458). Row byte home
is now the argument at 0x11B rather than target 0x117, so more work remains.
Reusing the parameter for column/tile/tileX scores 4746/6284/5035.
Pointer addition or += vertex advancement and postfix counters are
neutral; shifts in draw-index calculation score 5009. Vec2_S16 map
scores 4467; map after vertices 4512; counts before map 4488.
The candidate remains NON_MATCHING and the restored ROM is OK.

Ground candidate improves 4458 to 4437 by keeping visibleCount += 1
and func_800B604C on the same physical source line. The count addiu
returns to target position; argument normalization still starts with
a1 rather than a2. A named draw-index word scores 4648. Explicit u16
or u16/s16 index narrowing is neutral; signed-word argument casts are
neutral, an unsigned-halfword left argument scores 4808, prefix count
increment is neutral. The C932C argument-normalization pattern has no
matched donor. Preserve the same-line call under NON_MATCHING; ROM OK.

Ground renderer improves 4437 to 3964 by declaring palette u8 and
removing its redundant & 0xF from the TLUT index (the load assignment
already masks to 15). Together these restore palette s1, tileX s2,
and bottom s3. Either alone is worse: byte palette 4754, no second
mask 4757. Halfword palette 4673, halfword without second mask 4753,
separate load/mask 4692. Word left/top/right/all edges score
5490/5287/5715/6514; copying bottom before modulo scores 5448.
The retained byte/single-mask candidate still differs in coordinate
reloads, spills and scheduling; wrapped full ROM remains OK.

Ground candidate now retains 3420. Use existing Vec2_S16 map with x
for mapPosX and z for mapPosY instead of the halfword array. This
scores 3418 with the reused argument row, but shrinks frame to 0x110.
Restore a local u8 row (3444, target frame 0x118) and declare row first
(3420). This also restores coordinate reloads in edge branches. Swapping
the vector fields scores 3420 with parameter row, 3446 with local row.
Map before startVertices scores 3488; delaying counter declarations and
initialization until the loop scope scores 4384 and loses target initial
stores. Preserve the local-row typed-map version; wrapped ROM OK.

Typed-map origin trials retain 3420. Vec3i or scalar origins score 6717;
origins declared first in the loop scope 3492; Y-first assignments 3555.
The generic gDPLoadTLUT with count/tmem 256 is neutral. Expanding the
initial, loop, or both pal256 helpers into their six SDK commands is
also neutral, so outer helper scope does not account for origin spills.
Restored the compact SDK helper version; wrapped ROM remains OK.

Typed-map candidate improves 3420 to 3165 with u8 tileZ; the assignment
already masks to 255, and a redundant word spill disappears while frame
stays 0x118. Halfword worldZ is neutral, word palette scores 4519, bottom
in outer scope 3388. Individual right/bottom coordinate copies are neutral
in this candidate, swapped map fields 3167. Scoped volatile right read
scores 3973, right/bottom reads 3215, halfword tileSize 3233. Casting
origin coordinates to u8 scores 2843 but is not retained because it
removes the target signed-division checks. Preserve signed origins with
byte tileZ under NON_MATCHING; wrapped full ROM verifies OK.

Ground candidate improves 3165 to 3115 with firstTile[1] ^= 0 after
its X-origin division. This emits no additional instruction but changes
allocation. Y-origin XOR is neutral alone; both XORs also score 3115,
so retain X only. Explicit s16 origin casts and putting worldZ assignment
on the same line as inner for are neutral. A named word draw index
scores 3346; word tileX with XOR scores 6352. Signed division checks
remain intact; candidate stays NON_MATCHING and wrapped ROM is OK.

Ground origin/scope trials retain 3115. Moving origins to outer scope
scores 3415, column first in the loop scope 3305, map after counts 3267.
Split one-element origin arrays are neutral. An if(1) around loop locals
or lighting, or a plain scope around render setup, is neutral. Explicit
byte-masked row increment scores 3970. Keep ordinary u8 row++ and the
existing scopes; restored wrapped ROM is OK.

## Terrain color renderer checkpoint (not matched)

func_800B345C_C240C improves 7341 to 5653 by chaining its level-4 zero
colors as spA0[0] = spA0[1] = spA0[2] = 0. This reproduces ANDI s7,zero,
255 and ANDI s6,zero,255 before the byte stores, and also restores RGB
saved-register allocation across the earlier helper calls. Reverse
chain scores 6629, G/R/B chain 5675; byte final index 7480; removing
unused mode is neutral. Array declarations first/reverse/both score
6409/5987/6085; word X coordinate 6257. Caching the flash timer in the
existing word i is neutral. Zero-color target pattern has no matching
donor. Current frame 0xC0 versus target 0xB8; flash timer allocation,
neighbor/output array homes and later instruction scheduling remain.
Retained chained assignment under NON_MATCHING; full wrapped ROM OK.

Terrain color candidate improves 5653 to 5608 with signed-word row
offset (5613) and halfword baseY (5608). Byte final-loop i scores 5754,
scoping i to its final-loop block 5719, word mapIndex with narrowing
only before neighbor offsets 6319. Do not narrow the entire neighbor
index after +/-1 or +/-256: that changes boundary wrap behavior; the
original narrows the center before adding a signed offset. Removing
unused mode is neutral. Preserve valid neighbor indexing and the signed
row/halfword-base candidate under NON_MATCHING; wrapped ROM is OK.

Terrain-color storage trials retain 5608. EffectRgb input or both RGB
buffers score 11831; output-only RGB is neutral. Explicit short cosine
result or expired word i reuse is neutral; a word cosine result scores
5774, none reduces the 0xC0 frame. Reversed arrays first score 6040
with neighbors/output/input at 0xB8/0xB4/0xB0 versus target AC/A8/A0.
Neighbors first score 5806 (B8/94/98); neighbors before RGB score 5826
(9C/94/98). A transient lock on generated build source cleared on retry.
Restored the best chained-zero coordinate candidate; wrapped ROM OK.

Terrain color improves 5608 to 2584. Cache the flash timer into existing
u8 mode and guard with (u32)mode > 0U. The unsigned guard alone scores
4934; combined with byte cache 4918, restoring the target flash branch
instructions. Word subtraction/cache 6213, halfword timer 6093, word
XOR cache neutral at 5608; explicit implicit-angle variants are neutral.
Before output-ring lookup, compute row remainder first into expired i,
then column remainder into u16 mapIndex, and use [(u16)i][mapIndex].
This changes ring-index allocation (2584), but not into the final target order. Opposite reused
types score 2974, new named word indices 2704. Special-color pass using
mode as byte seed scores 2669, new word seed 2742, scoped output pointer
2822. Keep the two reused ring indices; frame and array/spill homes still
differ. Candidate remains NON_MATCHING; wrapped ROM checksum OK.

Terrain color now retains 2324 with exact frame 0xB8 and buffers AC/A8/A0.
Declare neighbors and output RGB after row/col, then word i, then input
RGB. Moving arrays before i scores 2519 and fixes frame plus two buffers;
putting i between output and input scores 2389 and fixes the final buffer.
Use u16 mode for cached timer and subsequent column remainder (2324).
Word timer remainder scores 3272; expired row-coordinate reuse 2514.
Halfword i scores 3439 unsigned/3744 signed; word mapIndex 3895.
Explicit row assignment narrowing scores 2754, word mode with it 3307.
Assigning divisor 19 to unused arg0/arg1 is neutral; swapped remainder
roles score 2704. That checkpoint was misread: ringX is at 0x961 and the target starts with X;
fixed frame and buffer homes do not imply full matching. Wrapped ROM OK.

Terrain color now retains 831. Correction: TileRing.ringX is offset 0x961,
ringY 0x960. Target divides COLUMN first, then ROW; earlier row-first
notes misinterpreted these offsets. Compute mode=(u16)X-remainder first,
i=(u16)Y-remainder second, and index tiles[i][mode]. Explicit row
narrowing retains the target extra remainder MOVE. Place sp94 before
entry to match its 0x94 home. For the special-color seed, reuse unused
u8 arg0 and remove explicit &0xFF: byte assignment supplies the target
single ANDI. This drops 1856 to 841. Reverse seed multiply source operands
to match MULTU a1,a0 (831). Frame, buffers and instruction structure now
match. Remaining row-coordinate spills are 0x78/0x7C versus 0x7C/0x80;
timer in-place V1 narrowing, divisor A1 allocation and temporary registers
still differ. Word timer caching scores 1661, in-place/short narrowing
1631; word/unsigned/short mode 1617/1817/2266. Compact 831 candidate is
NON_MATCHING and wrapped full ROM verifies OK.

Terrain-color candidate improves 831 to 823 by storing shifted row
offset explicitly: baseXWord=(baseY+row)<<8, add it directly to the
center index, and pass baseY+row to the lighting helper. The shift spill
is now exact at 0x80; normalized row-byte spill remains 0x78 versus 0x7C.
Same-line outer assignment/inner for is neutral. Inlining only helper
row arithmetic scores 1036. Earlier i/mapIndex helper-argument reuse
and register hints are neutral. Twenty-four permutations of scalar
declaration order yield no improvement while preserving instruction
structure. Entry before f0 scores 843, word baseY 1233, i after RGB 961,
word mapIndex 1231. Retain the shifted-row candidate; wrapped ROM OK.

## Terrain color checkpoint: 68, still NON_MATCHING

func_800B345C_C240C improves from 823 to 68. Reuse the existing u16
mapIndex for the row remainder instead of the special-color loop's s32 i.
This restores divisor a1 and the row remainder a0 (773). Declare a new
s16 timer last, after entry. In each flash branch assign the narrowed
counter to timer, then use `timer ^= 0;` on the same line before evaluating
the cosine expression. The signed halfword identity changes temporary
allocation without emitting XOR and restores the entire downstream suffix.
Putting timer earlier increases the frame; word timer identities do not
have the same effect. Implicit assignment narrowing is byte-identical to
the explicit s16 cast here.

Remaining at 68: the initial high-timer narrowing uses t4/t5/t6 instead
of v1/t8/v1, its conversion-control temporaries follow that difference,
and the low-timer SLL uses t5 instead of v1. The normalized row-byte spill
is still 0x78/0x7B instead of 0x7C/0x7F. Frame and all subsequent RGB and
ring-buffer instructions match. This is a checkpoint, not a matched C body.

The frustum func_800B960C_C85BC remains instruction-exact except for its
jump-table load address (score 5). Moving the existing later floating
constant definitions below the function leaves the built ROM unchanged;
IDO still places generated jump tables after the global constant data.
Retain the wrapper and placeholder table when a new TU is disallowed.

A further focused pass on func_800B2354_C1304 retains 2570. Scalar widths,
explicit halfword narrowing, pointer inlining/reuse, scope/declaration
placement, setup ordering, loop-counter widths with explicit narrowing,
identity operations, pre-initialization and dead-read priority probes did
not improve it. Its full ELF symbol has 321 instructions versus target
320; a range-limited diff at the target next-function address clips the
extra final instruction. Use objdump -dz --disassemble=<symbol> on the
built ELF to count the full candidate. The setup has an extra copy of the
narrowed X base, and the frame remains 0x98 rather than 0x90.

## Ground renderer checkpoint: 2935, still NON_MATCHING

The fresh ground-renderer baseline scores 3110 (the older comment was
3115). With Z origin evaluated before X, using firstTile[1] for Z and
firstTile[0] for X, putting u8 tileZ after vertices[2] in the outer
declarations scores 3075. Split each origin assignment into coordinate
assignment and compound division on the same source line:
`firstTile[1] = map.z; firstTile[1] /= 4;` and the corresponding X
statement. This scores 2965. Adding `row ^= 0` after the for-header's
row increment scores 2935 without an emitted XOR. Fresh full builds
confirm 2935 and 458 instructions versus target 457, with frame 0x118.
The origin array still occupies 0x94/0x98 rather than 0x68/0x6C; the
coordinate and vertex homes, initial texture opcode register, and
draw-call normalization/scheduling differ. Retain the wrapper.

Separate scalar or struct origins spill the row and grow the frame;
volatile origins add unwanted accesses. Native int/long changes,
coordinate width/cast variants, parameter reuse, struct and union
representations, loop shapes, declaration placement, padding homes,
SDK command placement, identity forms, and empty-if priority probes
did not beat 2935. Do not remove signed division checks by narrowing
the origin operands to bytes. Reusing palette for the later tile byte
is invalid because the draw call still needs the original palette.

Native builds intermittently fail opening their generated BF9C0.c
input with Permission denied. A diff after that failure scores the
previous binary. Require a successfully linked ROM before evaluating
a trial, retry transient locks, and rebuild the retained best body.

A focused lightning pass retained 3410. Local widths, phase/palette
reuse, distance save aliases, explicit casts, power-of-two arithmetic
forms and priority probes did not improve the original body. Restore
its five constant placeholders when restoring its wrapper.

The ground renderer now retains 2923 (previous checkpoint 2935). Use one
Gfx *gfx local for the loop's clear-geometry command, assigning its two
words on one physical line with the packet-pointer increment. This replaces
that macro's private packet variable and changes allocation without adding
an instruction. The full candidate still has 458 instructions versus target
457; it remains NON_MATCHING. Other shared packet, scope, cache, narrowing
and native-int trials did not improve it. No new source file was added.

## Radial ring-light checkpoint (not matched)

func_800B2854_C1804 now scores 2895, down from 8140. The original
inner counter incorrectly read the high halfword of its saved start;
target LH sp+0x5A reads the low halfword. The negative X distance also
needs the fractional X coordinate added to x * -256, as in the target.
Structured nested for loops and an EffectRgb grid view remove explicit
stack caches and raw RGB pointer offsets. A word unsigned fractional Y
value and a named positive cell size improve allocation; a byte fraction
selects different saved registers. Reuse the signed distance for its
absolute value, and reuse a word intensity for the narrowed falloff and
scaled intensity. Keep the explicit s16 conversions at both assignments.
The remaining differences include loop-limit versus negative-stride
register lifetimes across sqrtf, initial scheduling, and spill locations.
Unsigned negative products, explicit loop limits, delayed constants,
raw coordinate locals, clipping temporaries, and equivalent <= loop
conditions did not improve the retained candidate. It remains wrapped;
full native build reports bh.us.z64: OK with the wrappers restored.

Further terrain-color trials retain 68. Changing timer identities to +=0,
|=0, &= -1, unary plus or a redundant cast loses the useful allocation;
*=1 is neutral like ^=0. Routing the timer through i, comma assignment,
and compound word subtraction is neutral. An explicit byte normalized
row is neutral; a word normalized row changes the frame/homes. Direct
global timer expressions, parameter reuse and wider counters regress.

Radial ring light still retains 2895 after removing the obsolete
absoluteDistance local and its dead assignment. Keep the named positive
cellSize = 256: replacing it with a literal while naming a negative
stride lets IDO cancel the positive 256 and trailing -256, dropping six
required instructions. Naming both constants preserves those operations
but does not move the negative stride into s8. Shared clamp thresholds,
negative subtractions, stride scope/types/identities and typed loop-bound
arrays do not fix that lifetime. A short shared intensity regresses;
native int and moving the word intensity declaration last are neutral.

## Shield-wall line clipping checkpoint (not matched)

func_800B1028_BFFD8 improves 9462 to 8747 by comparing the endpoint
loads directly against the main bounds instead of caching *arg3 and
*arg5 before the comparisons. The target loads the bound before the
endpoint, while the cached form reverses their v0/v1 roles. A named
wall-base pointer regresses to 13332; a named double upper limit is
neutral. A lower-scoring ratio-copy removal was rejected: replacing
all temp_f14 * temp_f2 expressions with temp_f0 changes arithmetic
after temp_f0 has been reused for the scaled height. Preserve temp_f2.
The target frame is 0x58; current frame is 0x40 with an extra saved f20.
Both matched callers confirm the existing signed coordinate, word
endpoint-pointer, byte result-pointer and word return types. This
function has only just been started; continue it before switching again.
The retained body remains NON_MATCHING and the full ROM verifies OK.

Line clipping correction: target C0334/C0338 loads two uninitialized
intersection words, then C05B4/C05B8 writes them back after the loop.
Remove both zero initializers even though doing so raises the weighted
score: keeping either initializer preserves incorrect logic. Typed array
forms regress; a two-word struct is neutral. Remove unused endpoint
cache declarations and put the two uninitialized intersection words
first. This retains score 12568 with the required loads/writebacks,
instead of the lower-scoring but incorrect 8747 version. Float scopes,
separate denominator/ratio locals, native-int local types and equivalent
ratio-copy expressions do not resolve allocation. Delaying the ratio
copy into valid paths also regresses. Continue this function; no match
is claimed. Wrapper restored and full native ROM verified OK.

Line clipping now retains 12221: direct endpoint comparisons in the
sub-wall tests reduce 12568 to 12513, then traverse BoundingBox *wall
from &D_8014FD30.sub[0] to &sub[2], using wall->fields, for 12221.
The unused wallIndex declaration remains for this checkpoint's layout.
Native-int return, endpoint pointer types, and all word locals are
neutral; restore the original shared signature. Chained ratio assignments
are also neutral. A layout-preserving bounds[3] union view with wall[1]
addresses reproduces target field offsets but worsens allocation to
12696; it was reverted. Pointer-plus-index traversal scores 13593.
Continue treating both uninitialized intersection words as required.

Line clipping retains 12101 after matched interpolation donors suggested
updating each integer delta through its current integer value times the
ratio, rather than through its cached float denominator. Compound *=,
reversed multiplication and explicit float casts produce the same code.
This removes recomputed divisions but still has extra float copies and
wrong f14/f16/f20 roles. Named float upper/double lower limits regress;
explicit integer casts are neutral. Direct denominator conversions and
removal of their unused float local are neutral. All 24 permutations of
the four float declarations are neutral. Explicit signed-short, word or
native-int copies of Z, and short copies of X/Z together, are neutral.
Retain original declarations without those redundant copies. Final
wrapped full ROM verifies OK; no function match is claimed.

Terrain spill-order follow-up retains original 68. Signed/unsigned/native
word mode-in-place forms regress, even with unsigned ring-index casts.
Reusing the existing word index i with both early and late signed
narrowing plus XOR-zero reproduces 68; other narrowing placements lose
the useful allocation. Nested XOR/multiply/divide identities and
assignment inside the float expression are neutral at68. Argument casts
on the row alone are neutral; halfword casts on both arguments regress.

A signed-short struct/union member timer scores482: frame0xC0 and array
homes shift eight, but normalized row spill moves to the correct0x7C.
Direct tile array stores without the entry pointer score84: frame0xB8,
normalized row0x7C correct, but shifted row0x84 instead of0x80 and loop
row0x8C instead of0x88. Adding aggregate timer to direct tile stores
returns68; explicit normalized-row storage can also return68 but does
not resolve the joint spill layout. Keep the original simpler pointer
and scalar timer version; its fresh ROM hash and score68 were verified
before wrapping. Full wrapped ROM reports OK.

## Three-pixel line-light rasterizer checkpoint (not matched)

func_800B1A68_C0A18 improves9662 to9405 by removing the root lights
pointer and using the typed 19-column RGB array view directly at each
pixel assignment. This leaf has target571 instructions, current574,
and the exact target frame0x70. Keep the center green overwrite and
asymmetric X-neighbor edge checks: both are present in target assembly.
The matched caller func_800E52E8 confirms two signed-short coordinate
pairs and a three-byte RGB input; no result is consumed.

Moving direction flag zero initialization from before the rounded word
setup to before the delta calculation gives weighted8840, but worsens
opcode ordering. A register-independent opcode-LCS audit gives63 gaps
for9405 versus67 for8840 (ignore operands only for this diagnostic).
Keep9405 as the better instruction-order checkpoint. To recreate8840,
move var_v0=0 immediately before temp_v1_2=var_t1-var_a3.

Discarded: root/scoped/delayed grid pointers; struct quarter color;
separate byte, halfword or word cursors; reusing delta/raw locals as
cursors; native-word/raw-coordinate/step widths; equivalent rounding
increments; fraction-cache reuse; conditional-only step and alternate
absolute-X forms; for/do loops; equivalent byte/struct RGB views;
setup/pixel/whole-function statement grouping. None improved the joint
sequence. The lower instruction counts in some candidates still had
more opcode-order gaps, so do not choose by count or weighted score
alone. Preserve original types and simple statements for now.

This function's focused work began2026-10-15 00:47:56UTC. Continue it
until at least01:17:56UTC before switching functions, per the30-minute
minimum. It remains wrapped; fresh C9405 hash and full wrapped ROM OK
were verified. No new files or matches are claimed.

Line-light follow-up: explicitly enable C before scoring. A wrapped C
variant initially produced zero because the assembly fallback was built;
that result was rejected. Enabled C with an unsigned fraction pair scores
10646; u32 pair9654, single byte10646 and quarter-buffer reuse15654.
Restore9405. A native-int fall-through return scores9815; restore void
and the shared header. The30-minute focused minimum was reached by
01:17:56UTC. The enabled C baseline9405 and full wrapped ROM were
verified again; no new match is claimed.

Lightning trial guard: the next function, func_800C0D1C_CFCCC, returns
s32. A body regex that requires a following void definition matches
nothing. Assert Match.Success and a nonempty body before testing a
candidate; an enabled C body and a successful link alone do not prove
that a scripted substitution changed it. Corrected local-width and
byte-mask trials retained3410. All 64 dependency-valid order/line-group
variants of delta, float factor, brightness and repeated phase store
retained3410 or regressed to3635; no variant matched.

## Vertex-ring builder logic checkpoint (not matched)

func_800B5090_C4040 now retains16780, with916 instructions versus917
target; its previous13468 body contained confirmed logic errors, so the
larger weighted score does not justify restoring it. Increment the map X
byte each column; derive world X from map X instead of world Y. Read
the five texture-hue globals at index0, not currentLevel-1. Use word
scroll thresholds and cell height, signed modulo256 of BH_ABS(scroll+1)
for negative scroll, and signed modulo2 of the map bytes for parity.
The frame factor is900: target shifts compute (((frame*7)*32)+frame)*4,
not0xE5EC. Repeat the frame expression for coss and sins, so the global
can be reloaded after coss. Subtract floating wave products before the
final short conversion; narrowing the product first loses SUB.D.

Clamp one u16 component and save each RGB byte immediately, using a
three-byte RGB array. RingEntry now exposes its existing RGB bytes as
a color[3] union view without changing its six-byte layout. The light
map uses an EffectRgb[19][19] view. East/south/west/north neighbor order
and direct tile-array wrap accesses follow the target. A byte-array
row index currently scores16780; separate byte and word row copies
regress. A mixed signed/unsigned900 product sequence avoids hoisting
900 into a saved register and improves instruction structure substantially;
all-signed, all-unsigned and explicit shift-chain forms do not.

The jump-table placeholder must be removed while enabling this C body
and restored with its wrapper. The generated table follows explicit
later constants, whereas the target table precedes them. Retain the
wrapper under the no-new-files constraint while other differences remain.

Lightning final retained checkpoint: func_800C0678_CF628 now scores1685,
with423 target-aligned current instructions versus425 target and eight
opcode gaps. Use a one-element s16 delta array as the second root local,
separate the later sound angle into its own scoped s16, and remove the
manual sp3C copy/pointer alias. Rewrite delta[0] with ^=0 on the call's
physical line to keep its SH immediately before the palette call instead
of filling the earlier floating-point NOP. Remove redundant byte masks.
The array keeps the target0x40 frame and delta home3C; natural scalar
spilling uses SW/LW and grows the frame. Counter storage unions, grouped
state, bitfields, pointer accesses and cached decrements did not improve
this checkpoint. The best body is wrapped and all five constant
placeholders restored; full native build reports bh.us.z64: OK.
