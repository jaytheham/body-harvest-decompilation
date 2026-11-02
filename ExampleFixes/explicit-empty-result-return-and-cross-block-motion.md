`incorrect ASM`: In `func_800FD858_10C808`, a reverse list search has an inner `if (vehicle->unk3C == 0) ... else if (func_800E60CC_F507C(2, arg0) != 0) ...`, followed by an unconditional return. AS1 hoists the loop-latch `move a1,v0` and `addiu v1,v1,-1` immediately after the list byte load, leaving the vehicle-index multiplication after the comparison. The remaining instructions, registers, and stack slots already match.

-> `code changed`: Add an explicit final `else { return; }` to that inner conditional, retaining the unconditional return after the conditional. The explicit return handles the audio-query zero result with identical behavior while preserving the compiler control-flow shape.

-> `correct ASM`: The list load is followed by `sll t9,a2,2; subu t9,t9,a2; bne a2,t8,...; sll t9,t9,3`. The latch copy and pointer decrement remain at the branch target. The complete function matches and normal US and EU ROM checksums pass.
