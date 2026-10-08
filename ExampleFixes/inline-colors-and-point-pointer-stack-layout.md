# Inline colors and point-pointer declaration order

`func_800FC568_10B518` generates twelve vertices and their line display-list commands. Once the logic matched, the only difference was an unused packet-pointer spill at `sp+0` instead of `sp+4`.

Inlining the four byte color constants aligned that spill, but moved the saved vertex pointer from `sp+0x2c` to `sp+0x30`. Declaring the point pointer at function scope, before the saved vertex pointer, brought the latter back to `sp+0x2c` while keeping the packet spill at `sp+4`. All instructions and the complete ROM checksum then matched. Keeping the point pointer inside the loop or retaining the four named color locals does not produce the same layout.

For an isolated stack-slot mismatch, inspect declaration order and the homes of constant locals before adding padding. Moving an existing pointer declaration can resolve the layout without extra variables.
