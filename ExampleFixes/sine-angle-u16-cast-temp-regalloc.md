### Explicit `u16` cast for `sins` phase arguments

When matching IDO output for a call to `sins`, an expression such as
`sins((phase << 12) & 0xFFFF)` may produce the correct instructions but use a
different temporary-register sequence.  Casting the angle explicitly to the
callee's parameter type, `sins((u16)(phase << 12))`, preserves the generated
`sll`/`andi` sequence and can make IDO select the target temporary registers.

This is useful when the structural diff is already exact and only integer
register allocation differs around the trigonometric call.

### Counterexample: vehicle matrix clock loads

For `func_800FFD28_10ECD8`, the guarded score-20 candidate differs only in two clock loads: target LH uses t6/t7, while current uses a0, and the following shifts use that source. Casting the clock through u32, replacing the shift with multiplication by 2048, typed struct/array views of its address, and signed-then-unsigned narrowing retain score 20. A direct u16 argument cast worsens the register cycle (585), a volatile clock view adds address instructions (1020), and reusing the later height temporary adds narrowing/allocation differences (1125). None is an exact match; retain the original masked shift.
