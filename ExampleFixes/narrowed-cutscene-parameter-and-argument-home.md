`incorrect ASM` → `func_800F0340_FF2F0` used a `0x20` frame, wrote the converted second argument with `sw t9,0x1c(sp)`, and omitted the third argument's home.

`code changed` → Declare the third parameter as `s16` in the definition and prototype. Compute the difference from the two parameters directly and remove the volatile local.

`correct ASM` → IDO reserves `0x18` bytes, uses `sra t7,t6,16` for the second argument and emits `sw a2,0x20(sp)` immediately before the call.
