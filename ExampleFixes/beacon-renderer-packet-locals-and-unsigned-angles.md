# Beacon renderer: packet locals, unsigned angles, and inline color expressions

Matched `func_800A70B8_B6068` with IDO 5.3 `-O2 -mips2 -32`; full ROM verification reports OK.

An otherwise exact variant reserved a 0xF8 frame instead of 0xF0. Declaration permutations could align all stack homes, but could not remove the final eight bytes. Reuse one `Gfx *gfx` for the pipe-sync and geometry-clear commands and write their words directly. The two macro-local packet pointers otherwise reserve excess CFE storage. Keep each pair of word assignments on one source line: IDO then emits the target's word-one store before its word-zero store while retaining the target constant registers.

Use unsigned halfword views for rotation assignment and the chained zero initialization `D_80052B48.unk0 = D_80052B48.unk4Unsigned = 0`. A signed inner assignment introduces a halfword reload; splitting the chain changes scheduling. Assign the double rotation expression directly to the unsigned angle view to retain the unsigned floating-point conversion sequence. The rotation multiplier is 1.2, not a radians constant; remove its rodata placeholder so the inline literal replaces it at the original address.

Read beacon state and timer through the array after helper calls and within primitive-color macro arguments. Caching state across helpers removes required reloads. Computing color before the macro also moves the timer read ahead of the packet's first-word store. Integer display-list address locals retain the segmented symbol addresses across calls, whereas pointer locals rematerialize them.

Preserve the launch height's intermediate global stores: timer difference, squared difference times six, division by ten, addition of 90, and signed-halfword terrain height. A separate squared-value store is absent from the target. Reuse the signed halfword ring counter for that initial terrain height; inline the other terrain query divided by 256.
