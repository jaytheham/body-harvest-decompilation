`incorrect ASM`: In `func_80126B80_135B30`, the vertical-hit branch loads the previous best distance after all three coordinate stores.

-> `code changed`: Convert the best distance after storing X and retain an empty check of the converted value before storing the remaining coordinates.

-> `correct ASM`: IDO loads the distance before the vehicle-height halfwords and issues `mtc1` before the Z store. The conversion remains in the branch delay slot, and the exact-hit flag store and scratch-register choices still differ.
