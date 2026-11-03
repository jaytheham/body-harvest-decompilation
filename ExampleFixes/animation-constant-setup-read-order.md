Incorrect ASM: `func_8000CF4C_DB4C` initialized its cached degree constant with `LUI; LDC1 f20` before materializing the single-precision scale and double-precision unit constants, leaving an extra NOP before the loop.

Code changed: after assigning `scale = 4096.0f` and `units = 4096.0`, retain separate discarded reads `if (scale) { }` and `if (units) { }`, then assign the degree constant.

Correct ASM: `LUI 0x4580; MTC1 f24; LUI 0x40B0; MTC1 f23; LUI degree-address; MTC1 zero,f22; LDC1 f20`, immediately followed by the loop. The interpolation function remains NON_MATCHING while its floating temporaries and stack spills are refined.
