### Explicit `u16` cast for `sins` phase arguments

When matching IDO output for a call to `sins`, an expression such as
`sins((phase << 12) & 0xFFFF)` may produce the correct instructions but use a
different temporary-register sequence.  Casting the angle explicitly to the
callee's parameter type, `sins((u16)(phase << 12))`, preserves the generated
`sll`/`andi` sequence and can make IDO select the target temporary registers.

This is useful when the structural diff is already exact and only integer
register allocation differs around the trigonometric call.
