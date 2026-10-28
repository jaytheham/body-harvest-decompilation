`incorrect ASM`

In `func_802DF940_323A90`, `ldc1 $f2, 0x7BD8($at)` loaded the generated `1000.0` literal after the next unmatched function's seven explicit double placeholders. Referencing a named constant instead changed floating-register allocation.

-> `code changed`

Keep the inline `1000.0` expressions. Remove their explicit placeholder and move the following function's seven double placeholders into `.late_rodata`, attached as a second input to its existing `GLOBAL_ASM` block. This preserves the read-only target assembly and puts those placeholders in IDO's literal pass.

-> `correct ASM`

`ldc1 $f2, 0x7B98($at)`, with every other instruction unchanged. The complete US and EU ROM checksums pass.
