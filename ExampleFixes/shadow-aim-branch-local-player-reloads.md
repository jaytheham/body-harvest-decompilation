incorrect ASM: In `func_800FB504_10A4B4`, subtracting the shifted controller cube directly exchanges the pitch-load and shift scratch registers.

-> code changed: Assign `(controllerCurve * controllerCurve * controllerCurve) >> 8` back to `controllerCurve`, then subtract that word from `pitchClamp`.

-> correct ASM: The pitch load uses T9 and the cube shift uses T8, matching the controller sequence.

incorrect ASM: Reloading `work.player` after the controller/alien branches uses V1 and requires an extra V1-to-S0 move at their join. Assigning the heading call directly to `yaw` also puts the yaw store before the branch instead of in its delay slot.

-> code changed: Define `work.player = D_80052B34` in each of the three preceding branches and remove the joined assignment. In the alien branch, capture the heading result in the existing `diff` word, reload `work.player`, then assign `yaw = diff`, keeping these as separate statements on separate physical source lines.

-> correct ASM: All three player reloads use S0 directly. The alien branch emits the S0 LUI/LW, branch, and yaw SH in the target order, with SH in the delay slot. All 818 instructions match in the unchanged 0x98-byte frame; the native US ROM checksum passes.
