# Marker color argument conversions

Partial observation from the still-unmatched `func_8009811C_A70CC`.

The marker calls at ROM `0xA9504` and `0xA952C` pass blue directly with
`sw`, while converting red and green independently with `andi`. Declaring
all three colors as `u8` caused IDO to share a conversion with the blue
stack argument. Explicit caller masks with `s32` red and green also
created a shared conversion temporary.

Using `u8` red and green parameters and an `s32` blue parameter, and
passing the caller's integer color directly, improved these sequences.
The second call matched structurally. In the first, the red conversion
remains early and the green conversion uses the red register.

The callee reads blue with `lbu` from stack offset `0x13`; preserve its
byte semantics with `arg4 &= 0xFF` in its C implementation. A byte load
alone does not distinguish a byte parameter from a masked word parameter.
The callee remains NON_MATCHING and will need its own build comparison
when reached in reverse declaration order. This is not a full match.

Use `rg --no-ignore` when searching the assembly directories: ordinary
`rg` skips the ignored nonmatching assembly files.
