`incorrect ASM` -> In `func_80126B80_135B30`, IDO copies the squared object distance to `$f20` and truncates it again for the late integer weak-point comparison.

`code changed` -> Reuse the floating `objDist` local for the horizontal weak-point line-distance result after committing the best distance to `distSqBest`.

`correct ASM` -> The weak-point comparison reloads the integer distance with `lw t2,0x108(sp)` and no second floating-point truncation. The complete function still has unmatched instructions.
