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
