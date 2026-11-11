`incorrect ASM`: In `func_80126B80_135B30`, writing all three alien coordinates through the cached hit pointer uses a register-relative Z store and omits the address setup required by the target. This shifts the rest of the function four bytes earlier.

-> `code changed`: Keep the X and Y stores through the hit pointer and write Z through the existing global record.

-> `correct ASM`: The Z store uses `sh t8,-0x62c(at)`, and the following `lui at` and alien-pointer store occupy their target ROM offsets. The function ends at the target offset and the X and Y store bases still differ.
