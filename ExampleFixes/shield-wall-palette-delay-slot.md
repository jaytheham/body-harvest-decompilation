## Incorrect ASM

The selected wall palette starts with a plain `bne`. IDO fills the delay slot with a copy of the computed link group and loads the normal red constant afterward.

## Code changed

Compare the narrowed selected group against the inline link-table pointer difference and shift. Initialize `color0` for normal red alongside the right endpoint calculation, then reuse `color0` for the animated phase in the selected branch. The normal branch starts with its first red store.

## Correct ASM

IDO emits `bnel s1,t8` with `sb v1,0xc(...)` in the delay slot and targets the second red store. The first red store still appears at the start of the normal branch. The branch operand and taken label match, while the vertex-pointer register and branch placement still differ in this checkpoint.
