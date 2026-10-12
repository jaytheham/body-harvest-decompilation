# IDO patterns in outside/101840.c

## Float constants and automatic spills

In func_800FA7F0_1097A0, multiplying by `2.0f` is reduced to addition, while multiplying by `(f32)2.0` produces the target `mul.s`. The explicit conversion is necessary here. A named scale initialized before the calls also preserves multiplication, but reserves a local slot and moves the angle spill.

In func_800FA40C_1093BC and func_800FA7F0_1097A0, repeat `(f64)(distance >> 1)` in the two trig expressions instead of declaring a double temporary. IDO identifies the common conversion and spills it automatically into the target slot. The same approach applies to `(f64)arg2` in func_80102600_1115B0.

func_80107EBC_116E6C matches with natural locals, no padding, and inline `(f64)offset` conversions. Compound assignments for the final coordinate additions preserve the target floating-point operand order.

## Nested switches

func_800FDC30_10CBE0 uses a switch on currentLevel with a nested switch on the vehicle type. Put the type 0x11 case before 0xC in the source. IDO compares 0xC first, but places the 0x11 scan body first, matching both branch layout and register allocation. Use a descending pointer and `do { ...; pointer--; } while (i--);` for the 128-entry scan.

## Boolean and mask types

func_8010F72C_11E6DC needs an `int` return type for the target boolean epilogue. The flag test `(u8)(building->unk8 & 1)` produces the same instructions as the uncast mask, but changes IDO's temporary-register numbering to match the target. Update the declaration in functions.us.h alongside the definition.

## HUD quad: direct position fields and declaration order

func_800A1DD8_B0D88 matches with direct D_8014F618.positions[arg0] fields. A named position pointer makes IDO cache the E7000000 pipe-sync constant across the function, shifting the general registers and removing a constant load. Direct indexed fields restore both constant loads and all registers. Declare the spilled right-Z component fourth among the seven float locals: this reserves a 16-byte frame and places that component at sp+0. Declaring it first makes the frame eight bytes; declaring it last makes the frame 32 bytes. The unsigned scale conversion needs a u32 cast before double multiplication, preserving the target's unsigned conversion correction. Typed positions, texture indices, scale, and camera basis remove raw pointer arithmetic. Verified by diff score 0 and full ROM checksum OK.

## Reticle geometry: automatic extent spill and local order

func_800A2260_B1210 matches after repeating head.unk20 in the two Z midpoint/difference expressions instead of caching it in a named float. IDO then emits the target's early field loads, automatic extent spill at sp+8, and saved s0 texture-coordinate constant. Keep the six geometry floats declared in descending target slot order (6C, 68, 64, 60, 5C, 58) and remove the unused leading word: this yields the exact 0x70 frame. Empty conditions and a global self-assignment were unnecessary and removed. Direct float-to-vertex-field assignments preserve the target truncations without nested s16/s32 casts. Verified with diff score 0 and the full ROM checksum OK.

## Camera shake coordinate negation reuse (partial)

func_80135D44_144CF4 improved from score 405 to 185 after removing the unnecessary X-coordinate float cache and correcting the out-of-range amplitude to 0.0f. Reusing the later attenuation float for the negated coordinate differences, and initializing the scale float to zero for the entry comparison, improved the measured score to 125. The instruction sequence and branch layout match; floating-point register allocation remains different. Separate negation locals, comma expressions, reversed comparisons, literal denominators, and a floating return signature did not close the residual. Retain the rodata placeholder and NON_MATCHING wrapper until the register allocation is resolved.

## Camera initialization vector copies and literal constant (partial)

func_80132740_1416F0 improved from 890 to 85 after replacing the individual word-cast copies with desiredLookAt = lookAt and D_801600F8 = vehiclePosition. Add Vec3f views as anonymous unions in the existing camera struct, preserving the legacy scalar fields and offsets. These typed copies reproduce the target's at-register word copies, load/store scheduling and instruction count. Replacing the interpolation placeholder read with 0.1f resolves the last floating-register swap and leaves score 5: only the generated literal address differs (0x80145708 versus 0x8014567C). Moving the remaining explicit constants below the function does not fix their emission order. Retain the placeholder and NON_MATCHING wrapper under a no-new-files constraint; the retained C has exact operations and registers but needs rodata placement resolved. The camera-shake function's combined literal/lifetime sweep did not improve its score 125.

## Signpost callback stack slots and packed-byte carrier (partial)

func_80136B50_145B00 improved from 405 to 379. A leading unused word aligns the coordinate spills at sp+0x32 and sp+0x30. Keep the signpost index signed-short: a word index causes a word spill and enlarges the frame. Store the raw orientation byte in a u8 local and shift it only in the switch expression; naming the decoded selector instead costs extra register differences. The retained sequence and control flow match, but the index spill remains at sp+0x26 rather than sp+0x28 and the integer registers differ. Moving the packed-byte read before the vehicle guard, using a named vehicle pointer, reusing the unused argument, or adding identity operations to the index did not improve this candidate. The stack-layout helper requires Docker here, so the verified linked disassembly is the stack evidence.

## Matched camera shake update: self-subtraction and trailing constants

func_80135F0C_144EBC reached score 0 and ROM OK. Direct global expressions removed redundant floating-point moves caused by reusing locals across unrelated lifetimes. The zeroing statements D_80160178 -= D_80160178 and D_8016016C -= D_8016016C compile to stores of the shared zero constant, while retaining address promotion that assignment to a zero local did not produce. This also corrected the integer address-register allocation throughout the function. Compound addition preserved the target operand order.

The 0.4 double was the final explicit rodata placeholder in 1416E0.c. Removing that placeholder and using the literal let IDO emit the same bytes at the original address. This required no file split. Removing a placeholder from the middle of the constant block does not offer the same guarantee.

## Matched camera yaw collision: signed remainder and stack homes

func_80136214_1451C4 reached function score 0. Keep the negative-angle test as (temp_s1 < 0) && (temp_s1 % 16384). Adding an explicit != 0 lets IDO simplify the signed remainder to a mask, removing the target's correction branch and subtraction. Using 0x4000U for the second initial angle subtraction keeps the two separate quarter-turn immediate loads; signed constants were merged into one load, shifting the temporary-register sequence throughout the function.

Inline &arg0->lookAt at both vector-helper calls rather than retaining a named vector pointer. IDO still spills and reloads the common address at sp+0x30, while dropping the unnecessary source-local stack home. One unused s16 between the two angle declarations then places them at sp+0x66 and sp+0x62, with vectors at sp+0x54 and sp+0x48 and integer coordinates at sp+0x44, sp+0x40, and sp+0x3C. The camera field at offset 0x66 is a halfword, so use arg0->unk66 rather than casting the padding bytes.
