## Incorrect ASM

Enabling `func_8012B26C_13A21C` left the explicit trailing padding and floor-hit string before the compiler-generated jump table:

```asm
# Constants retain their original addresses.
D_80145200_1541B0: .double 0.1
D_80145208_1541B8: .double 0.05
# Explicit trailing globals occupy the generated table's intended position.
D_801453A4_154354: .word 0, 0, 0
D_801453B0_154360: .asciz "Hit floor\n"
# Generated table follows these globals at the wrong address.
```

## Code changed

Represent the two doubles with the existing one-member `ShadowGeometryConstant` struct and access `.value`. Arrays preserve addresses but change floating-point operand ownership; scalar const doubles move into data.

Remove the explicit three-word padding object. Move only `D_801453B0_154360` to `1312D0_rodata.c`, following the existing data-only C pattern. Declare its extern in `variables.us.h`, add the source to `shared_overlay_files.txt`, and add rodata boundaries at US ROM 0x154360 and EU ROM 0x154EC0. Keep the matched floor-hit function unchanged.

## Correct ASM

```asm
# US ROM 0x1541B0
D_80145200_1541B0: .double 0.1
D_80145208_1541B8: .double 0.05
# US ROM 0x1541C0
# Generated 101-word jump table.
# Input-section alignment supplies twelve zero bytes at 0x154354.
# US ROM 0x154360
D_801453B0_154360: .asciz "Hit floor\n"
```

The stock build reproduces the target bytes throughout 0x153FD0..0x1541C0 and 0x154354..0x154370. Jump-table entries still depend on completing the enclosing function's instruction match.
