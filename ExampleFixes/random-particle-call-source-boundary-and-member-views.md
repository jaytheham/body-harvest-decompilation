# Random particle calls: source boundaries and member views

Java `func_802DCE34_1F5B44` matches all 195 instructions with a 0x48-byte
frame. The complete ROM checksum passes and the function diff is zero.

Use direct `alienInstances[id]` and `alienTypes[typeIndex]` accesses during
movement. Declared pointers reserved source-local slots and enlarged the
frame, although IDO already caches the two addresses in registers. Keep the
six signed-halfword coordinate/dimension/index locals, a shared word result,
and a signed-halfword displacement. Cache the terrain result in the word,
and reuse it for the fourth random draw. Three unsigned-halfword random
samples then occupy sp+0x30, sp+0x32, and sp+0x34.

## Member-reference weighting without another pointer local

For the three particle position reads, use the read-only member view:

```c
((const AlienInstance *)&alienInstances[id])->unk0
```

Do the same for `unk2` and `unk4`. Ordinary indexed field access has different
CFE expression weighting: it emits the coordinate load before the remainder
and changes the addition's operands. A named instance pointer gives the
correct member weighting but adds a local slot. The explicitly typed member
view produces the member form without that slot. No byte alias of the ID,
manual pointer arithmetic, padding, or extra storage is needed.

## The final random draw and emission must share one expression

```c
result = func_800038E0_44E0(),
func_800DF848_EE7F8(/* three position expressions */, (result % 40) + 30, 0);
```

Using separate statements on separate lines leaves all values, registers,
and stack slots correct, but changes AS1's scheduling of the third random
sample load and the Y-coordinate calculation around the signed-remainder
checks. Retained UGEN output contains an extra `.loc` boundary between the
fourth draw and the argument calculations. A comma expression removes that
boundary. Two semicolon-separated statements on the same physical line also
match, but the comma form can be formatted across lines clearly. A bare scope,
changing the random assignments' line grouping, or placing only the emission
on one line does not fix the boundary.

Inlining the fourth random call also fixes the scheduling, but creates a
word call-result temporary after the user locals. Inlining both terrain
queries removes the named word result and restores the frame, yet shifts the
three sample slots four bytes upward. The shared result plus the comma
expression reproduces both storage and scheduling.

## Wrap the phase before shifting

Use `(D_80052A8C & 31) << 11` for sine and
`((D_80052A8C + 12) & 31) << 11` for cosine. The u16 parameters still produce
the target shift and final mask. Wrapping after the shift instead coalesces
the first raw tick load and the second addition into a0, changing four words.
This is another instance of the pattern in `angle-coordinate-spills.md`.

Redundant argument casts can be removed once these forms are in place;
the existing helper prototype supplies the required signed/unsigned
halfword conversions. The vertical acceleration can use `unk10 += 24.0`.

## Joint emission calls use the same source-boundary rule

Java `func_802D9CB8_1F29C8` also matches with a comma expression joining the terrain-height result assignment and the effect call. Separate statements moved the X/Z spill reloads before the radius multiply; sharing one expression puts them after the multiply, with the unsigned conversion setup in the target order. An extra explicit `u32` cast on the radius was byte-identical and unnecessary.

For its three `func_80088E40_97DF0` calls, use direct `D_8014DD50[jointIndex].unk0/unk2/unk4` coordinate reads. Reading through cached node pointers hoisted X/Y loads before the constant stack arguments. The indexed reads reproduce the target ordering while IDO still reuses the existing cached joint addresses. This removed all other scheduling differences without adding instructions.

Verified by the complete ROM checksum and function diff score 0.
