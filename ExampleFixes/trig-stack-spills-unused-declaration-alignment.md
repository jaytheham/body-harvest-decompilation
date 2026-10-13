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
