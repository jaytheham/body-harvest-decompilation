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

## Companion airborne controller: paired lookups and flag reload

`func_801047C8_113778` matches all 398 instructions without new files. Keep type and weapon-table pointer assignments first, then read maxSteer through `vehicleTypes[arg0->unk1A].unk48`, rather than `type->unk48`. IDO shares the vehicle lookup but schedules the halfword load early and assigns it t3, while the weapon index starts at t9. Reading maxSteer before both pointers also hoists the load, but changes the register cycle and pointer-store order.

Reuse absStickX for the second controller absolute-value if/else; a separate word local selects v0 instead of a0. The explicit else preserves the redundant branch. Apply velocity acceleration before setting the airborne flag to interleave the weapon-table reload, flag read, short-to-float conversion, and flag store.

Keep a word gap after maxSteer and another after sp2A, followed by a halfword gap before trig. This preserves sp2C at sp+0x2c, sp2A at sp+0x2a, and trig at sp+0x20. The four existing constants 0.9, 300, and the two separate 0.0833333333 values use ShadowGeometryConstant.value to preserve rodata addresses and FPR order. The two 0.97 constants remain arrays and share a block-local damping variable.

Inside the negative-velocity clamp, read the flags through a volatile VehicleInstance view before clearing velocity. This retains the target redundant halfword reload, and the optimizer still uses the original s0 pointer. Only that second flag read needs volatility. The first read remains ordinary typed access. Full ROM verified OK.

## Cached collision geometry and interleaved corner assignments

`func_8010C4EC_11B49C` matches all 339 instructions and the full ROM checksum. Assign the cached vehicle-type pointer before the cached vehicle pointer; this retains the target reload of the type pointer. Read the radius branch vehicle index from the argument rather than the cached vehicle global. Negate the signed dimension before shifting without narrowing it back to s16.

Write positive X/Z corner assignments first (indices 0 and 1), followed by the negated X/Z assignments (indices 2 and 3). Initialize the four slope globals with one chained zero assignment afterward. IDO schedules the resulting stores in the target order; writing the C statements in assembly store order produces substantially different scheduling.

Represent the existing 1.2 constant with `ShadowGeometryConstant.value`. This fixes the multiply operand order and the floating-register cycle through the later slope calculations while preserving all rodata bytes. Keep one unused word after the spilled float, removing the second unused word: the helper result then occupies sp+0x1e and its low byte is read at sp+0x1f. Use `(u8)sp1E` rather than byte-pointer arithmetic. No new file is needed.

The companion `func_8010CA38_11B9E8` matches all 337 instructions with the same corner order, zero assignment chain, and one-word stack gap. Its cache order differs: assign the vehicle pointer first, then the type pointer, and test the argument vehicle index for zero. Use the second existing 1.2 constant as `ShadowGeometryConstant.value`. Correct the companion cache declarations to `VehicleInstance *` and `VehicleType *`; updating the containment function locals to these types retains its zero diff. Both geometry preparation functions and the full ROM verify exactly.
