# Gate-ring spill home and unsigned phase mask

## Incorrect ASM

`func_800BC760_CB710` initially matched every instruction except a phase spill at SP+78 instead of SP+84. The original source declared a double radius temporary and a separate word-sized angle temporary.

## Code changed

Remove the double radius temporary and convert the existing integer radius at its uses. Reuse the phase-helper word for the inner radius, inline the phase helper, and derive both trigonometric angles from the loop index. Inline the alpha expressions so the terrain-height local retains its original lifetime. These changes remove twelve bytes of automatic locals while preserving the target floating-point caches and frame size. Finally change the signed frame-counter mask `D_80052A8C & 0x1F` to `((u32)D_80052A8C & 0x1FU)`.

## Correct ASM

The phase save/reload moves from SP+78 to SP+84 while the frame remains 0xF0. After the storage cleanup, the final two differences were `move v1,t1` and `andi s3,v1,0xFF`. The unsigned mask changes them to target `move v0,t1` and `andi s3,v0,0xFF`, without emitting an extra instruction. The function is byte-for-byte matched.
