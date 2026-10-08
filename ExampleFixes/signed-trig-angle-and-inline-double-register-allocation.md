# Signed short angles and inline double literals

`func_802E3A4C_327B9C` initially had the right instructions but wrong integer registers after its first sine call. The matching source uses a signed short angle and explicitly converts it to unsigned short for every trig call:

```c
s16 angle;
s16 cosine;
s16 sine;
angle = func_800038E0_44E0();
cosine = coss((u16)angle);
sine = sins((u16)angle);
```

The first cosine argument uses an `andi` of the raw random return while that return is stored as a halfword. The first sine argument is loaded with `lhu` from the named angle and cached as a word. Subsequent cosine/sine calls reload the unsigned low half of that cached word. An unsigned short angle with casts to `u32` reproduced all these instructions, but assigned different integer registers throughout the rest of the function. Using the signed short and necessary unsigned conversion matched exactly.

The `45.0` coefficient must be an inline literal. Using the original const double placeholder as an array read caused reversed multiply operands, different FPU registers, and an extra spill that grew the frame from 0x78 to 0x80. Removing the placeholder definition/declaration and using `45.0` generated the correct rodata and registers.

Other details: copy the packed six-byte parameter struct with assignment; express random selection as signed `% 8 + 8`; build the three linked table indices by reusing a signed short local; load the parent byte into a separate byte local but pass the original instance field to the helper; explicitly assign the final audio handle to the existing word local to avoid an additional CFE temporary. Coordinate output words may use `SignedWord` and `.halves.low` for the final signed halfword arguments.

Verified full ROM OK after cleanup and correct helper parameter declarations. Changes to source types can affect register allocation even when all emitted operations and stack offsets are already identical.
