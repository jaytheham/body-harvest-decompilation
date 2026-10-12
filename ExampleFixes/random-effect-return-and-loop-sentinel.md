# Random effect return and loop sentinel

Matched `func_8008BC58_9AC08` with IDO 5.3 -O2 -mips2 -32.

The fifth random call looked unused in the initial C, but its return in v0 feeds the final `% 4` particle argument. Using the instance timer introduced an extra halfword load and changed argument scheduling. Saving the random return in an s32 local restores the entire particle sequence.

Keep the initial vehicle index separate from the alien loop index. Copy it into the loop index after vehicle damage, then reuse the original index local for the 0xFF sentinel. An invalid-index OR guard followed by `continue` gives the target constant register allocation; the equivalent positive AND guard colors the loop bound, instance stride, type stride and type base differently. A named sentinel on the left of the comparison preserves `beql s3,s1`; a literal is canonicalized to the reverse operand order.

Place the effect and initial index locals before the three address-taken coordinate locals to preserve their stack offsets. The full ROM verifies `build/bh.us.z64: OK`.
