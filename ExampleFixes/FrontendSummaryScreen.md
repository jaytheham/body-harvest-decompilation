Incorrect ASM: `func_8007C7F4_4CCA4` uses a temporary for the halfword counter increment and adds another mask when copying the narrowed result back; declaring the counter as a word creates an extra saved masked copy and enlarges the frame.

-> Code changed: keep `u16 fadeTimer` and assign the word-sized display timer with `timer = ++fadeTimer` inside the existing limit check.

-> Correct ASM: `addiu s0,s0,1; andi s4,s0,0xFFFF; move s0,s4`, with the original 0x40 frame and no extra saved copy. The following conditional input test also retains its target branch-likely delay slot.

Incorrect ASM: clearing the human-loss field before reading the player score delays the player pointer load; storing elapsed seconds before zeroing the accumulators puts the halfword store immediately after `mflo`.

-> Code changed: assign the summary score before clearing human losses, then assign elapsed seconds after initializing the fade, score, human-loss, and total-time accumulators.

-> Correct ASM: the player-pointer load precedes the first global-state store, the human-loss clear precedes the score store, and three accumulator clears separate `mflo t1` from `sh t1,0x24(a1)`.

Incorrect ASM: the shared US summary omits the three PAL flag tests and the expanded localized messages, shortening the PAL function and shifting subsequent code.

-> Code changed: under `VERSION_EU`, test `D_80052ACD & 0x80` in each language case. The expanded messages have four narrative lines in English/French and five in German, with later score, time, and human-loss rows. Retain the ordinary summary in each alternate branch and map its strings to the PAL messages.

-> Correct ASM: the PAL cases retain their `lbu`/`andi 0x80` dispatches and both complete sets of text calls; US retains its original three summary blocks. Both complete ROMs match.
