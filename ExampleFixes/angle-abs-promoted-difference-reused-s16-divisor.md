# Promoted angle difference and reused s16 divisor

`func_8007E734_8D6E4` matched with two different angle-difference widths.

For the turning threshold, the target subtracts two signed halfwords without
truncating the result. Keep the subtraction inline in `BH_ABS`:

```c
magnitude = BH_ABS(baseAngle - desiredAngle);
```

Using an earlier `s16` difference removes the target's fresh `subu` and changes
the behavior around angle wraparound. An absolute value does not make these
forms equivalent: truncation to a halfword changes the magnitude.

For the final duration calculation, the target does truncate the difference:

```c
diff = alien->unk2A - alien->unkE; /* separate s16 local */
magnitude = BH_ABS(diff);
alien->unk34 = magnitude / divisor + 0x1E;
```

Register allocation also depended on local reuse. Reassigning the initial
`s16` angle-difference local to `alienTypes[alien->typeIndex].unk42` kept the
divisor in `v0`. A separate `s16` local for the final difference placed it in
`v1`, with the negation in `a1` and the absolute value in `a2`. A separate
`s32` divisor swapped `v0` and `v1`; reusing the base-angle local for the final
difference retained it in `a3`.

The cleaned implementation passed the full ROM checksum with
`tools/make.ps1`: `build/bh.us.z64: OK`.
