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

## Vehicle death: cache the existing divisor and retain the offset lifetime

func_80123AC4_132A74 matches without splitting rodata. Cache D_80145160_154110[0] in the existing double divisor before the two-iteration loop. Inline reads reload it across helper calls and lose the saved f20 register, changing the frame. Assign 0.25 to the existing offset double and place an empty if (offset) {} immediately before caching the divisor. The check is optimized away, but it orders the offset's LUI/MTC1 setup before the divisor's LUI/LDC1, reproducing the target interleave. Without that check the entire residual is this five-instruction setup order (score 280). The original one-element constant array remains byte-for-byte at its original address; an aggregate is unnecessary, and a scalar const moves into data. Zero function diff and full-ROM checksum OK confirm the match.

## Beam renderer partial checkpoint

In func_80128E48_137DF8, the ROM's middle-point factor is the existing 0.7 constant, rather than the initial reconstruction's 0.5. Changing its one-element double array to ShadowGeometryConstant and reading .value keeps the eight-byte placeholder and restores the target's late ldc1 and computed-value-first mul.d. No new translation unit is needed.

Repeat the half-distance expressions in sqrtf and the three direction conversions instead of declaring three integer carriers: IDO shares the expressions across sqrtf, generates exactly three word saves, and retains the normalized directions. Multiply sqrtf's result by integer 2; 2.0f becomes add.s, and 2.0 introduces double arithmetic. The retained candidate is still NON_MATCHING; endpoint parameter stores and frame/register allocation remain.
## Java death effect: retained rodata limitation

func_802DD8E8_1F65F8 remains NON_MATCHING after 20 compiled variants. A literal 70.0 (or an automatic const double declared last) matches every instruction, register and stack offset, but IDO places it at 0xfa8 instead of 0xf80 with the existing placeholders. Moving the following global constant definitions after the function still puts them before the generated literal. Array, struct-member and scalar alias reads preserve the address but swap f0/f2. Do not create another file when the task excludes that option. A named u8 firstChild fixes the skeleton byte chain; declaring the sine halfword after the flags and first two byte locals places it at sp+0x28 without an artificial padding array. The wrapped full ROM verifies OK.


func_802D5FE4_1EECF4 remains NON_MATCHING after 20 compiled variants. Correct the second scale from zero to 1.5 and read the existing 1.7 constant as an array element when testing its address. A literal 1.7 restores the target f20/f22 order, but its generated constant lands at 0xfa8 instead of 0xeb0. The existing aggregate type retains the address but does not fix the hoisting or floating register order in this loop. Preserve the literal-based closest implementation under NON_MATCHING when additional files are excluded.

## Frontend orbit particles: retained constant-address limitation

`func_8008F1E0_5F690` remains NON_MATCHING. Use the target's rounded `6.2831853070000001` multiplied by the float angle and divided by `360.0`; full-precision pi divided by 180 is not the same instruction sequence. Cache each quadrant's argument in one `f32 trigAngle` shared by cosf and sinf. Declare that local after the three-float direction array: the array then starts at sp+0x90 and the frame remains 0xA0.

This produces every target instruction, register, and stack offset except the two constant addresses (diff score 10). The existing trailing jump-table and float placeholders put the generated doubles at different addresses. Array reads, aggregate reads, scalar linker aliases, and explicit double caches were tested; the caches change the frame, constant hoisting, or floating-register order. Keep the literal-based C wrapped when new translation units are excluded.
