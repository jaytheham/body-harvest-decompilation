# Marker color argument conversions

The marker calls at ROM `0xA9504` and `0xA952C` pass blue directly with
`sw`, while converting red and green independently with `andi`. Declaring
all three colors as `u8` caused IDO to share a conversion with the blue
stack argument. Explicit caller masks with `s32` red and green also
created a shared conversion temporary.

Using `u8` red and green parameters and an `s32` blue parameter, and
passing the caller's integer color directly, improved these sequences.
The second call matched structurally.
