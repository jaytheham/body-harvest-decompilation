# Glow age checks and named branch constants

func_800D0C00_DFBB0 matches with SmokePuffState payload access, a while loop, and two signed word locals holding the loaded byte age. Keeping the locals as u8 changes copy timing and register selection; signed word age and checkedAge preserve the target lbu into v1 followed by a move into v0 in the first branch delay slot.

Use named signed word constants for the age comparisons: deleteAge = 15 and soundAge = 8, with the constant variable on the left of each equality. Literal constants, including literals written on the left, normalize the comparisons and reverse the encoded bne operands. The named constants retain the target s6/v1 and s7/v0 operand order.

Read the next link through D_80154318[index].unk4 at the ordinary loop exits. This lets IDO retain the entry directly in s2, instead of constructing it in v1 and copying it into s2. Use puff->kind++ followed by a field comparison to preserve the unmasked byte store and the temporary-register mask used for the comparison.

The original byte arithmetic had wrong offsets: age is payload + 0xA, opacity is +9, the child effect index is +0xB, and RGB is +6 through +8. Typed payload members correct these accesses.
