`incorrect ASM`: In `func_80126B80_135B30`, a separate case-local height halfword leaves the weak-point entry spill at `sp+0x90` and the vertical-hit Z argument reload at `sp+0x8E`.

-> `code changed`: Reuse the existing Y word after its initial value has been copied into the function argument. Keep the explicit word conversion of Y in the upper-height addition.

-> `correct ASM`: The weak-point entry spills and reloads at `sp+0x94`, the vertical-hit Z argument reloads from `sp+0x92`, and the height addition uses the target operand order. The overall function still has register and scheduling differences.
