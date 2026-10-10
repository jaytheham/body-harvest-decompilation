# Aggregate double constant preserves rodata and FPR order

In `func_80070294_158354`, a literal `180.0` generated an extra constant after the explicit rodata placeholders. Accessing the existing one-element double array preserved its address but made IDO evaluate the memory operand first and changed floating register allocation.

Representing the same eight bytes as a const struct with one `f64 value` member preserved the explicit rodata position and produced the same expression evaluation and registers as the literal. A scalar const double moved to a different rodata location. The struct type belongs in structs.us.h and its extern declaration in variables.us.h. The complete ROM verified OK.

## Several constants in an angle-fitting function

`func_800F4258_103208` uses seven separate double constants and one float constant. Represent the doubles with the one-member `ShadowGeometryConstant` struct and reference `.value`; keep the float array access. This preserves the existing rodata definitions and every constant address without a new translation unit.

With scalar angle locals, IDO cached the converted angle sum across `cosf` and `sinf`, adding a double spill and removing the target's halfword and float reloads. Storing the angle in `s16 angle[2]` and reading element 1 prevents that reuse and places the halfword at sp+0x3e. Keep the offset as a scalar float: making it an array hoists its first reload and changes the FPR order.

For the first cosine argument, reuse the no-longer-needed `s32 dx` for the raw angle result, assign it to `angle[1]`, and convert `(s16)dx` directly. Read `angle[1]` for the sine argument. This preserves the raw v1 value for the halfword store and uses t4 for sign extension. A separate raw-angle local produces the same instructions but enlarges the frame; reusing the distance float instead changes FPR allocation.

Verified with a zero function diff and `build/bh.us.z64: OK`.
