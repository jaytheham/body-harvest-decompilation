Incorrect ASM: `func_800770D8_86088` with a scalar or `Vec3f` scale omits the target `mov.s f2,f0`, `mov.s f12,f0`, and three `swc1` stores around `guScale`. Loading the object index inside the guard also omits the target unconditional delay-slot load.

Code changed: use `f32 scale[3]`, assign `scale[2] = scale[0] = ...`, calculate `scale[1]` separately, and pass the three elements to `guScale`. Load the object index before the guard. Use a named timer local for the initial count and later signed coordinate seed.

Correct ASM: the scale conversion, two register copies, three stores, and guarded index/address sequence match the target instruction order and registers. Eight stack-offset instructions still differ, so this function retains its NON_MATCHING wrapper. The normal ROM build remains OK.
