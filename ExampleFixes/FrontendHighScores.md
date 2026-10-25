Incorrect ASM: sequential `if` clamps omit the target's repeated lower-bound test and intermediate result moves.

-> Code changed: express the slide offsets as `MIN(limit, MAX(0, expression))`, with the limit first in `MIN`. Use the same form for the 300-pixel fade offset and all three 640-pixel text offsets.

-> Correct ASM: IDO emits the target `bgez; move v0,zero/value; slti limit+1; ...; bgez` sequence and keeps the clamped result in `s3`.

Incorrect ASM: signed elapsed-time arithmetic emits `div` with overflow checks; converting separate results to unsigned removes those checks but introduces a result copy and displaces the cached language address.

-> Code changed: load the elapsed time into the `u32 centiseconds` local, compute `minutes = (centiseconds / 60) / 60` and `seconds = (centiseconds / 60) % 60`, then update `centiseconds %= 60` in place.

-> Correct ASM: `divu s0,s6; mflo v0; divu v0,s6; mflo s1; mfhi s2; divu s0,s6; mfhi s0`. The language address remains cached in `fp`, and both complete ROMs match.

Incorrect ASM: a word formal argument followed by an explicit mask misses the original argument home; a narrow caller formal passed to a word callee formal uses `a2` for the mask and a delayed argument copy.

-> Code changed: declare the second argument of both `func_800796D0_49B80` and its callee `func_8007949C_4994C` as `u16`.

-> Correct ASM: the high-score screen emits `sw a1,0x64(sp); andi t6,a1,0xFFFF; move a1,t6` and initializes the timer in the call's delay slot.
