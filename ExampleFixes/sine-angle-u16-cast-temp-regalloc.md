### Explicit `u16` cast for `sins` phase arguments

When matching IDO output for a call to `sins`, an expression such as
`sins((phase << 12) & 0xFFFF)` may produce the correct instructions but use a
different temporary-register sequence.  Casting the angle explicitly to the
callee's parameter type, `sins((u16)(phase << 12))`, preserves the generated
`sll`/`andi` sequence and can make IDO select the target temporary registers.

This is useful when the structural diff is already exact and only integer
register allocation differs around the trigonometric call.

### Counterexample: vehicle matrix clock loads

For `func_800FFD28_10ECD8`, the original score-20 residual consisted of two clock loads: target LH used t6/t7, while current used a0, with the following shifts using that source. Casting through u32, multiplication by 2048, typed address views, and signed-then-unsigned narrowing did not resolve it. A direct u16 argument cast scored 585, a volatile clock view 1020, and reusing the height temporary 1125.

The exact fix is to mask the clock **before** shifting: pass `(D_80052A8E & 0x1F) << 11` to each trig helper, replacing `(D_80052A8E << 11) & 0xFFFF`. Since the helper accepts u16, only the low five input bits contribute. IDO folds the source mask into the target final ANDI 0xFFFF, preserving the instruction sequence while assigning the signed clock loads to the target temporary registers instead of a0. This is a different lever from changing the argument cast or multiplication spelling. Named unsigned/word angle variables scored 585/1400; a signed angle local scored 60.

Remove the explicit double cast around the float trig result: division by 32768.0 performs the same promotion. Both calls retain exact code after this cleanup. Verified all 251 instructions, frame 0x28, function score 0, and `build/bh.us.z64: OK`. Removed the NON_MATCHING wrapper and committed the match without creating files.
