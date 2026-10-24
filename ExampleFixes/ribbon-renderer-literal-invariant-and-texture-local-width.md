`incorrect ASM`: In `func_800CF2E0_DE290`, assigning `D_80144008_152FB8[0]` to the scale before the loop emits its `lui/ldc1` before the target's initialization of `3.0` and `4.0f`. Removing both padding locals also shrinks the frame to `0x108` and shifts the vectors.

-> `code changed`: Initialize the used `f64 scale` local with the literal `0.33333`. Remove both unused padding locals and declare `lastTexture` as `s32`, retaining the other three texture locals as `u8`.

-> `correct ASM`: All 331 instructions, registers, stack offsets, and their order match with a `0x110` frame. Retiring this renderer's constant placeholder and moving the trailing placeholders into the existing smoke fallback's late rodata restores `ldc1 f24,0x4008(at)`. Both complete US and EU ROM checksums pass.
