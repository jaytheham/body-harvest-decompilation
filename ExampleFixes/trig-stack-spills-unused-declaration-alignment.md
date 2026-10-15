# Trig stack spills: unused declarations and double alignment

Matched `func_800868A4_95854` in `src.us/overlay_gameplay/outside/884C0.c`.
The initial C generated the exact instruction sequence and registers, but
the Z coordinate spilled at `sp+0x44` instead of `sp+0x48`, and the angle
spilled at `sp+0x2C` instead of `sp+0x28`. The frame already had the correct
size of `0x58`.

Changing the unused double declaration between the X and Z coordinates to
an `s32` moved the Z spill up four bytes. Moving the trailing unused double
before the float locals preserved the cosine result at `sp+0x30` despite
the changed double alignment. Adding an unused `f32` immediately before
the angle local moved its spill down four bytes without growing the frame.

The final declaration order is:

```c
s32 sp4C;
s32 sp50;
s32 stackPad4C;
s32 sp48;
f64 sp38;
f64 stackPad38;
f32 sp2C;
f32 sp30;
f32 stackPad2C;
f32 temp_f12;
```

IDO reserves slots for unused declarations before used locals. Double
alignment can make a four-byte declaration change move later slots by
eight bytes. Check actual spills after each change instead of assuming a
uniform shift. Verification: `tools/make.ps1` reported
`build/bh.us.z64: OK` with the C function enabled.

## Gate renderer checkpoint (not matched)

In BF9C0.c func_800BC760_CB710, removing explicit angle masks before
unsigned-halfword coss/sins calls reduced the score from 5228 to 3673.
The implicit parameter conversion restores the target ADDU, ANDI, MOVE
argument sequence; introducing a separate angle local instead made the
allocation much worse. Saving the pulse separately and reusing its word
local for the primary loop angle reduced the score to 3533. Moving the
outer radius declaration last and reusing the expired inner radius for
the secondary loop angle reduced it to 3350 and the frame from 0x100
to 0xF8 (target 0xF0). This remains NON_MATCHING: initial phase allocation,
spill slots, and a few instruction orders still differ. The uninitialized
byte read in the radius calculation is present in target assembly too.

Further phase-lifetime trials retain 3350. Unsigned primary-angle storage
scores 3845; byte/halfword saved pulse 3469; computing the phase directly
in pulse 3466. XOR-zero, an explicit u8 fold cast, an else-copy through
pulse, and separate frame load/mask are neutral; signed comparison scores
3545. Reusing pulse for the initial radius scores 5294. Reusing the ground
word for alpha with literal double zero scores 14134; a named double zero
scores 6559. Moving pulse last scores 3453; computing the pre-loop phase
in the existing uninitialized byte scores 3394 and grows the frame.
Restored the 3350 candidate and verified the wrapped full ROM OK.

Gate checkpoint now retains 3321 with the exact 0xF0 frame and initial
byte read at 0xE9. Reuse var_v0 for both the initial uninitialized byte
and later alpha, declaring it after the coordinate shorts. This alone
scores 3290 but retains frame 0xF8. Reuse the expired height word for
phase/primary angle and set expired arg4 to zero for the double offset:
this removes the remaining word home and yields 3321 with frame 0xF0.
Keep that frame-correct candidate despite the small score increase.
Separate explicit trig-result locals grow the frame and score 3457
(short) or 3453 (word); expired arg0 reuse is neutral. Direct short or
implicit destination narrowing is neutral. Moving radius before alpha
or pulse scores 3374/3362; pulse last scores 3346. Phase still uses s2
instead of s3, radius/pulse spills are wrong, and the extra phase MOVE
and loop-entry instruction order remain unresolved.

The frame-correct candidate's phase-in-pulse variant scores 3392; swapping
the two word variable names and a one-element pulse array are neutral.
A conditional with a common outer u8 conversion scores 2561, but is not
retained: its mask sinks past the pose call and the folded branch loses
target instructions, despite the improved register-weighted total. Casts
or masks on each ternary arm restore 3321 and the target-style branch.
Reversing the condition scores 3571; a shared mask after if scores 4096.
Continue prioritizing instruction structure over the numerical score.

## Gate renderer: byte phase and exact instruction checkpoint

func_800BC760_CB710 improves from 3321 to 24, but remains NON_MATCHING.
The fresh candidate has all 683 target instructions, with identical order,
registers and frame 0xF0 except for two operands: its saved phase is at
sp+0x78 rather than target sp+0x84 (SW at CB9A4, LW at CBBC4).

Keep a separate u8 phase before the u8 alpha local. Use phase for the
initial uninitialized byte read in the radius calculation as well as the
later triangular frame pulse. This preserves the target LBU at sp+0xE9
and lets IDO reuse s3 for the initial byte and the live phase. The initial
uninitialized read is in the original assembly; do not initialize it.

Compute a raw word phase from D_80052A8C & 0x1F, then assign the folded
result into the byte phase in each branch. Moving the byte conversion out
of the initial word assignment removes the extra phase-copy instruction.
A word-only saved phase or a manually cached array has the wrong lifetime
and stack home. Let the byte phase survive the first trig loop directly.

Reuse the expired terrain-height word as the alpha-limit word temp_fp.
Use native int for the primary and secondary loop-angle words. The primary
angle word initially holds the inner radius; the secondary-angle word
initially holds the raw frame phase. Native int restores the target operand
order in four primary coss/sins argument ADDUs. Keep a separate double
radius temp_f22 reused for the two rings. An integer radius yields 683
instructions but expands the frame to 0xF8 and changes second-loop setup.

Put the pose structs before the alpha-limit and angle words. The retained
root declaration order is i, temp_s2, temp_s5, phase, var_v0, position,
rotation, temp_fp, var_s2, spCC, pulse, temp_f22. This gives target position
at 0xE0, rotation at 0xD8, outer radius spCC at 0xCC, and phase byte at 0xE9.
Initialize i immediately before the initial vertex-pointer increment, on
the same source line, and use for (; i < 10; i++) for the first ring. Keep
the second ring's explicit i = 0 initialization. This restores loop-entry
instruction order. The alpha limit follows the double-radius assignment.

Use the unsigned unk0Unsigned union view when assigning rotation 0x8000.
The signed view emits li -0x8000; the target uses li 0x8000 before SH.
The view preserves the six-byte Unk800311A0/Unk80052B40 layout.

Further priority reads, identity operations, integer promotions, phase and
alpha widths, initializers/cache arrays, declaration/scope changes,
explicit trig narrowing forms, equivalent products/selectors, zero-offset
forms and matrix-cursor forms did not resolve the final private spill.
Replacing tail SDK commands with shared manual packets changes allocation
throughout the function; it is not a neutral spill-only adjustment here.

A source WriteAllText can fail transiently with a user-mapped section lock.
A script's Retained score alone is not proof that its best body was restored.
Retry the write with a brief bounded delay, inspect the restored phase read
and types, and rebuild before trusting the score. Use successful linked
builds for every score; do not score a previous ELF after compilation fails.

Further gate probes retain score 24. Unused short/word/double declarations
before root word locals alter the frame or other homes. Scoping a single
word local changes allocation; scoping the double radius around both
rings is neutral. A one-byte struct phase preserves instructions but
reads sp+0xE8 instead of target 0xE9 and leaves the private spill at 0x78.
Byte arrays cause much larger differences. Restore scalar u8 phase.

Gate SDK packet probes: manually expanding either geometry-mode macro
with its own scoped pointer is neutral at 24. Sharing a scoped pointer
across the final two, three or four constant packets changes allocation
throughout the function and scores over 5300. Keep the SDK macros.

Scoped phase-cache follow-up: copying phase into s32 or native int before
the first loop preserves all instruction order/registers but scores 193.
It grows the frame from 0xF0 to 0xF8, shifts explicit homes up eight,
and moves the private spill from 0x78 only to 0x7C (target 0x84). Byte
or halfword copies score 7021. Four different scope starts are neutral
within each type. Moving trailing register declarations and moving the
double before word locals do not recover the original frame plus target
spill (best such trial 169, still not retained). Algebraic phase identity
updates perturb allocation or introduce narrowing, and do not improve24.
PR/gu.h declares both coss and sins as signed short return, unsigned
short angle, consistent with the bundled libultra implementations.
Retain the scalar-byte version with only two stack operands different.

Return-declaration audit: terrain and gate callers ignore the result.
Native int, s32, s16 and u8 fall-through returns leave terrain68 and
make gate44. Floating returns leave terrain68/gate24. No declaration
trial improves either function. Restore void definitions/prototypes;
include/functions.us.h has no retained diff from these experiments.

Gate private-spill follow-up retains24 with C explicitly enabled. Zero
offset self-XOR, self-subtraction, AND-zero and comma forms are neutral;
multiply-zero and comma zero-offset uses regress. Comma radius, trig
return and coordinate-expression wrappers are neutral. A reverse-order
eight-byte struct/union holding i, coordinates, phase and alpha preserves
all actual field homes but remains24; a byte pair is neutral, while
three-short aggregates score28. Volatile phase-cache variants score
308/316, so they do not reproduce the target spill. Reusing expired
signed-short arg0/1/2 for zero is neutral; byte arg3 scores4049. Keep
the original scalar version and standard void declarations. A fresh
enabled C score24 and full wrapped ROM OK were verified.

Scoped SDK padding does not resolve gate24. Expanding the initial
set-geometry packet with w0 before w1 is neutral; reversing those writes
scores434 despite the same683 instructions. One to four unused words
before its packet pointer (or in an outer block around the SDK macro)
retain all683 instructions but enlarge the frame toF8/100 and alternate
the phase spill between7C and78. They never produce target84. A long
double radius is neutral24 on this compiler. Keep the original macro.
