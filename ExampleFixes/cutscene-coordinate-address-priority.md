`incorrect ASM`: In `func_800F066C_FF61C`, the camera mode zero store at US offset `0xFF834` used `sh a0,0(t5)`. The orbit signed frame branch at `0xFFD10` used `bgez v1`.

-> `code changed`: Keep the current frame comparison in camera mode four and read `D_80157F54` directly when converting the interpolation numerator. In the orbit path before saving the target coordinates, compare the entry address twice with `&D_80157586` using empty branches. IDO counts the address references during allocation and emits no instructions for the comparisons.

-> `correct ASM`: The camera mode zero store uses `sh a3,0(t5)`, and the orbit frame branch uses `bgez v0`.

`incorrect ASM`: In the same function, the camera mode zero keyframe loads at `0xFF80C`â€“`0xFF814` used `v0`, `a0`, and `a1` for the X, Y, and Z coordinates.

-> `code changed`: Compare `targetY` with `entry->targetY` twice after loading the three keyframe coordinates and before the first target-coordinate store. Join the comparisons with logical OR and leave the conditional body empty.

-> `correct ASM`: IDO assigns `a0`, `a1`, and `a2` to the X, Y, and Z loads and removes both comparisons from the instruction stream.

`incorrect ASM`: In the mode zero Y sum at US offset `0xFF850`, the addition and store used `t6` for the result.

-> `code changed`: Read the mode zero X keyframe coordinate with `(s32)(s64)entry->cameraX`, keeping the three coordinate reads in X, Y, Z order.

-> `correct ASM`: The Y sum emits `addu t7,t6,a1` and `sh t7,0x7582(at)`.
