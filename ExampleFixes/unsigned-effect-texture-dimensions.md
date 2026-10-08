# Unsigned effect texture dimensions

In `func_800DBA9C_EAA4C`, four texture-coordinate expressions differed only in `lb` versus the target `lbu`. The shared dimension globals are declared as signed bytes, so cast each dimension to `u8` before shifting it left by six. This preserves the global declarations and their other users while generating unsigned loads here.

The nearby matched renderer `func_800DB714_EA6C4` reads the same dimensions through unsigned byte lvalues. Direct value casts give the same instructions without pointer reinterpretation.

Verified with `CURRENT (0)` and `build/bh.us.z64: OK`.
