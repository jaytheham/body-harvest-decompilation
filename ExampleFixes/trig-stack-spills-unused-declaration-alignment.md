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
