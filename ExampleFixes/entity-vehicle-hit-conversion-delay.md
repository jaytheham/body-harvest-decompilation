`incorrect ASM`: In `func_80126B80_135B30`, the exact vehicle-hit branch emits a NOP between `mtc1` and the distance conversion, pushing the shared distance calculation four bytes past its target address.

-> `code changed`: Convert the best distance after the X store and reference it in an empty condition. Remove the empty constant condition from the preceding vehicle-height case.

-> `correct ASM`: The Z halfword store fills the FPU delay, and the common distance calculation starts at the target ROM offset `0x1361A4`. The individual stores in the exact-hit branch still require scheduling changes.
