# IDO patterns in outside/101840.c

## Float constants and automatic spills

In func_800FA7F0_1097A0, multiplying by `2.0f` is reduced to addition, while multiplying by `(f32)2.0` produces the target `mul.s`. The explicit conversion is necessary here. A named scale initialized before the calls also preserves multiplication, but reserves a local slot and moves the angle spill.

In func_800FA40C_1093BC and func_800FA7F0_1097A0, repeat `(f64)(distance >> 1)` in the two trig expressions instead of declaring a double temporary. IDO identifies the common conversion and spills it automatically into the target slot. The same approach applies to `(f64)arg2` in func_80102600_1115B0.

func_80107EBC_116E6C matches with natural locals, no padding, and inline `(f64)offset` conversions. Compound assignments for the final coordinate additions preserve the target floating-point operand order.

## Nested switches

func_800FDC30_10CBE0 uses a switch on currentLevel with a nested switch on the vehicle type. Put the type 0x11 case before 0xC in the source. IDO compares 0xC first, but places the 0x11 scan body first, matching both branch layout and register allocation. Use a descending pointer and `do { ...; pointer--; } while (i--);` for the 128-entry scan.

## Boolean and mask types

func_8010F72C_11E6DC needs an `int` return type for the target boolean epilogue. The flag test `(u8)(building->unk8 & 1)` produces the same instructions as the uncast mask, but changes IDO's temporary-register numbering to match the target. Update the declaration in functions.us.h alongside the definition.
