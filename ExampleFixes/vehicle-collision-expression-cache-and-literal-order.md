`lwc1 $f12, 0x54($sp)` before the mass calculation and a delayed Z-velocity load at the later angle call -> keep `if (sp50) {}` immediately after the relative-speed square root -> `lwc1 $f14, 0x50($sp)` before the mass calculation and `lwc1 $f12, 0x54($sp)` in the angle-call delay slot.

`swc1 $f2, 0x58($sp)` and `lwc1 $f6, 0x58($sp)` for a named scaled-speed cache -> retain scalar `sp44` and repeat `(f32)((f64)sp4C * 0.001)` at the final impulse call -> IDO caches the common expression with `swc1 $f2, 0x30($sp)` and `lwc1 $f6, 0x30($sp)`, while retaining the separate `sp44` store at `0x44($sp)`.

`ldc1 $f8, 0x4ce0($at)` with the old constant carrier occupying `0x80144BA0..0x80144CD8` -> replace the vehicle functions' carrier-backed coefficient references with their original typed literals and remove the unused carrier -> `ldc1 $f8, 0x4ba0($at)`; the compiler emits the entire constant block in its original order, with a zero function diff and full US ROM checksum OK.
