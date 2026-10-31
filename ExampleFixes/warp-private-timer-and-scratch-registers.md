# Private warp timer and IDO temporary registers

## incorrect ASM

In `func_800A68CC_B587C`, an external byte accessed through a constant
pointer gave the wrong timer register webs and floating-point spill slots.
A separate increment before the player height update also rotated the
otherwise identical scratch registers (`t1`, `t2`, `t3`), leaving score 260.

## code changed

Use a function-private `static u8 warpTimer`, preceded by an unused two-word
static reservation. Anchor this object's BSS at `0x8014F800` (EU
`0x8014F830`), placing the timer at offset 8. Make `u8 cachedTimer` the last
automatic declaration and use it for the case 5 draw argument. Compare the
private byte directly after the call, then use a standalone `warpTimer++`.
In case 4, reuse the existing signed-short temporary to capture the height
counter before clearing the timer. In case 3, update the player's height
before incrementing the timer.

## correct ASM

Case 5 keeps its raw timer load in `a1` and its narrowed increment in `v0`,
with the byte store after the conditional state store. Case 4 loads the
height counter before clearing the timer. Case 3 retains the target
instruction order while assigning the scratch-register cycle correctly.
The function diff is zero and the normal US and EU ROM builds match.
