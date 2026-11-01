Incorrect ASM: the six-byte initialization copies in `func_80076A10_859C0` use `lwl`/`lwr` when a split `u32` data symbol is cast to the short-first vector type. The vectors also sit eight bytes above their target homes and the prologue schedules the second copy differently.

Code changed: declare six-byte `Unk80052B40` views in `variables.us.h` and define their addresses as aliases of the existing split data symbols in both tracked version symbol files. Copy the typed views directly. Declare the terrain-pattern word and outer counter before the three vectors.

Correct ASM: each vector copies with the target `lw`/`sw` and `lhu`/`sh` sequence; the position, rotation, and scale homes are `sp+0xA8`, `sp+0xA0`, and `sp+0x98`. The full prologue and initial bounds checks match, with frame `0xB8`. The function still has later differences, retains its NON_MATCHING wrapper, and is preserved as an improvement rather than a completed match.
