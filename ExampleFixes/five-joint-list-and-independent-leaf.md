# Five-joint list and an independently cached leaf

America func_802DAAF0_25A230 matches all 251 instructions and the full ROM checksum.

The target passes five joint IDs to func_80081F18_90EC8, followed by a separately cached leaf ID used by func_802DA054_259794. Declare six scalar halfwords first, then the leaf halfword, then a five-element halfword array. The leaf occupies sp+0x92 and the array occupies sp+0x88 through sp+0x90. A six-element array followed by a separate leaf temporary has the wrong lifetime: it rotates the initial load registers, adds an array store, and reloads the wrong value after the helper.

Traverse the joint chain into scalar locals before the initialization check, then fill the five-element array only on the active path. Pass the saved scalar joint IDs to the later helper, preserving the leaf independently of the mutable array.

Use real three-element arrays for the transform input halfwords and output words. Pass the low signed byte of each saved joint ID, not its high byte. The final world transform writes X/Y/Z to the three scalars in descending stack order: sp+0x7C, sp+0x78, and sp+0x74. Reversing the output pointers reverses the effect coordinates.

A u16 angle scratch passed directly to sins and coss preserves the target narrowing and argument copies. Recompute it from the instance heading between calls, retaining the second heading load. Keep the existing float sine ratio; the unused cosine call still belongs in the function.

Move the instance pointer and terrain-height word into the two existing padding slots above the world-coordinate outputs. This removes eight excess frame bytes without changing the required array homes, restoring the target 0xA0 frame.
