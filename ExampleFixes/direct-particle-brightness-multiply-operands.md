# Direct field operands versus a cached brightness local

`func_800B9AC8_C8A78` initially differed only in the operand order of three `multu` instructions. Reversing each multiplication in C did not change IDO's canonical order. Changing the cached brightness type or adding an unsigned cast did not fix it either.

Keep the `s32 brightness` local for the active-entry test, but read `D_80152B80[i].unk8` directly in each RGB multiplication. IDO reuses the existing byte load while giving the direct field expression the target operand order. Use a `u8 color[3]` buffer to agree with the called rendering routine's declaration.

The named `s32` brightness also retains the target stack placement: changing it to `u8` moved the color buffer from `sp+0x40` to `sp+0x44`.

Verified with `build/bh.us.z64: OK` and `CURRENT (0)`.
