# Aggregate double constant preserves rodata and FPR order

In `func_80070294_158354`, a literal `180.0` generated an extra constant after the explicit rodata placeholders. Accessing the existing one-element double array preserved its address but made IDO evaluate the memory operand first and changed floating register allocation.

Representing the same eight bytes as a const struct with one `f64 value` member preserved the explicit rodata position and produced the same expression evaluation and registers as the literal. A scalar const double moved to a different rodata location. The struct type belongs in structs.us.h and its extern declaration in variables.us.h. The complete ROM verified OK.

## Several constants in an angle-fitting function

`func_800F4258_103208` uses seven separate double constants and one float constant. Represent the doubles with the one-member `ShadowGeometryConstant` struct and reference `.value`; keep the float array access. This preserves the existing rodata definitions and every constant address without a new translation unit.

With scalar angle locals, IDO cached the converted angle sum across `cosf` and `sinf`, adding a double spill and removing the target's halfword and float reloads. Storing the angle in `s16 angle[2]` and reading element 1 prevents that reuse and places the halfword at sp+0x3e. Keep the offset as a scalar float: making it an array hoists its first reload and changes the FPR order.

For the first cosine argument, reuse the no-longer-needed `s32 dx` for the raw angle result, assign it to `angle[1]`, and convert `(s16)dx` directly. Read `angle[1]` for the sine argument. This preserves the raw v1 value for the halfword store and uses t4 for sign extension. A separate raw-angle local produces the same instructions but enlarges the frame; reusing the distance float instead changes FPR allocation.

Verified with a zero function diff and `build/bh.us.z64: OK`.

## Collision response: aggregate constant and reused double local

func_80113808_1227B8 matches all 313 instructions and passes the full ROM checksum. Represent its existing 0.73 constant with ShadowGeometryConstant and use .value. An array element swaps the constant load and converted speed between f4 and f16 even when multiplication operands are reversed. A separate named double fixes that region but changes the earlier float variables from f0/f2 to f2/f0. The aggregate expression preserves both regions.

In case 3, use one block-local f64 damping. Load the first 0.9 constant before the speed helper, then overwrite damping with the second 0.9 constant before scaling all three velocities. Reusing that local retains both original rodata addresses, assigns the constant to f0, and prevents repeated loads across velocity stores. No new translation unit is required.

Declare the spilled Z difference between the two other float locals to place it at sp+0x28. Compute the X difference before assigning that Z difference to restore the target load/subtract scheduling. Divide by integer 2 rather than 2.0f to preserve the two div.s instructions.

## Airborne controller: operand order and temporary slots

`func_80104E00_113DB0` matches all 314 instructions and the full ROM checksum. Its existing 0.1 array constant always puts the constant first in `mul.d`, even when the C operands are reversed. Use `ShadowGeometryConstant` and `(f64)arg0->unk34 * constant.value` to preserve the original address and put the converted velocity first.

Assign maxSteer directly from `vehicleTypes[arg0->unk1A].unk48` before assigning the type pointer. IDO then stores the pointer before the float conversion and uses the controller-pointer move to fill its latency, eliminating an extra nop. Write negative stick scaling as `-arg1->stick_x * 80` or `* 40`; multiplication by -80/-40 uses AT for negation and shifts the subsequent temporary-register cycle. Keep the original stick and its absolute value in separate word locals.

Three unused word declarations after type, maxSteer, and sp2C preserve their stack slots. Declare stickX, an unused halfword, trig, then absStickX to place the trig spill at sp+0x20. Negate the double cosine ratio before multiplying by sp2C to retain neg.d before mul.d. Cast the unsigned vehicle byte through u32 before float conversion to retain the target unsigned-conversion adjustment. Reuse a block-local double for the two damping constants and three velocity stores.
