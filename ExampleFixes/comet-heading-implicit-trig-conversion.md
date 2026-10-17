# Comet heading: implicit trig argument conversion

Incorrect ASM: explicit `angle &= 0xFFFF` before the sine/cosine pair makes the case-5 heading load use a GP temporary (`lh t7,6(s0)`) instead of `v0`. It also advances the temporary-register phase, producing widespread later register differences.

Code changed: remove the explicit mask in cases 5, 6, and 9 of `func_802DE7C4_322914`. Keep the signed word heading and its in-place half/quarter-turn additions. Pass it directly to `sins(angle)` and `coss(angle)`; their existing unsigned-halfword parameter declarations already supply the required conversion.

Correct ASM: `lh v0,6(s0); andi a0,v0,0xffff; jal sins`, with the normalized argument saved in the call delay slot and reused for cosine. Case-5 and case-6 coordinate temporary phases now agree with the target. Native full-ROM comparison reduces this function's diff score from 1278 to 223 without changing its 625-instruction length or 0xF0 frame. The function is not yet fully matched: traversal registers, one case-6 pointer register, a later state-test register, and the argument-cache stack displacement remain different.
