# Incorrect ASM

In `func_800920C0_A1070`, dividing by a bare `12000.0f` moved
`lh t7,0x12(s0)` ahead of the capped value's `mtc1` and delayed the
`lwc1` for the divisor. IDO also shortened the function by eight bytes.

# Code changed

Spell the quotient as `(f32)cappedValue / (0, 12000.0f)` and remove
the file-scope divisor array.

# Correct ASM

IDO emits `mtc1 v1,$f4`, `lui at,0x8014`, `lwc1 $f8,0x1f08(at)`,
`cvt.s.w $f6,$f4`, then `lh t7,0x12(s0)`. The US and EU ROM
checksums both pass.
