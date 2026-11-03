# Ground-renderer row copies and triangle base

func_800B604C_C4FFC remains unmatched. This checkpoint reduces the comparison score from 103614 to 33396 and reaches the target 1340-instruction function length. Its frame is still 0x368 rather than 0x350.

Incorrect ASM: five vertex copies use destination offsets 0, 16, 32, 48, 64 followed by one pointer increment of 80. Code changed: copy each source vertex into the current destination and advance the global destination by one Vtx after each assignment. Correct ASM: five individual pointer increments of 16 between the copy groups.

Incorrect ASM: fixed four- and five-column paths contain nested per-vertex copy loops. Code changed: explicitly copy each fixed-width row, retaining the outer row loop. Correct ASM: target unrolled struct-copy groups for those two paths.

Incorrect ASM: vertex packets use destination slot zero while triangle indices include a four-vertex offset. Code changed: use destination slot four in gSPVertex. Correct ASM: the target 0x0408 prefix in the vertex packets.

Incorrect ASM: cached bucket counts suppress the target repeated LH instructions. Code changed: test counts[bucket] against -1 and use the array directly in the triangle-loop bound. Correct ASM: the sentinel comparison and live count reloads around texture and triangle writes.

Incorrect ASM: the order-array LHU precedes tile setup. Code changed: load the order immediately before triangle emission. Correct ASM: the order load follows the tile packet stores.

Incorrect ASM: independent triangle offsets are applied after doubling the raw order. Code changed: keep order as s32 and add four when loading it from the u16 order array. Subtract four from each subsequent triangle argument offset. Correct ASM: ADDIU 4 precedes the common SLL 1, matching the target shared vertex-index base.

Incorrect ASM: texture setup retains palette one, texture-T mask one, and two-bit mirror-field extraction. Code changed: use palette zero, mask five, and mask the individual tile flag bits before shifting. Correct ASM: target palette/mask constants and ANDI 0x2000 / ANDI 0x4000 before the mirror-field shifts.

Incorrect ASM: texture pointers lack physical-address masking. Code changed: apply K0_TO_PHYS to the indexed texture address. Correct ASM: the target AND with 0x1FFFFFFF.

Incorrect ASM: general paths narrow the culling-mode word to a byte. Code changed: keep modeByte as s32 and read D_8014F854 without the u8 conversion; retain the separate direct-byte read in the initial fast path. Correct ASM: full-word mode comparisons in the general paths.

Incorrect ASM: clipped rectangle dimensions are narrowed before multiplication. Code changed: preserve word dimensions for the area product and narrow their loop uses explicitly. Correct ASM: MULTU consumes the full coordinate differences before their signed-halfword conversions.