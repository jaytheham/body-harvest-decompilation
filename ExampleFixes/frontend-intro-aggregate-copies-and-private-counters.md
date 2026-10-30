# Frontend intro movie copies, counters, and discarded division

`func_800768C4_46D74` (`0x46D74`), IDO 5.3 `-O2 -mips2`.

## Timing table copies

Incorrect ASM: element loops used index shifts, sign extension, and one-word copies instead of the target's three-word block-copy loop followed by an unrolled eight-word copy.

Code changed: wrap the eleven start-frame words and eight stop-frame words in `IntroStartFrames` and `IntroStopFrames`; assign each aggregate to its local copy. Preserve a word `elapsedSeconds` between the two local aggregates and keep the message queue pointer and frame-rate local after them.

Correct ASM: the first copy advances source/destination by twelve, then copies its two tail words; the second copies eight words directly. The final frame is `0xc8`, with local copies at `$sp+0x90` and `$sp+0x6c`.

## Private movie state

Incorrect ASM: externally declared movie frame/start/stop globals cached three addresses in saved registers; byte increments lost the target's 24-bit normalization.

Code changed: move the initialized data definitions from `data_64D10.c` into `40720.c` in their original order, with `static s32 movieFrame`, `static s8 startIndex`, and `static s8 stopIndex` inside the movie function. Pass the postincremented index directly to each event helper. Use a word local for indexing the copied table. Extend the US/PAL `.data` mappings to cover the moved definitions.

Correct ASM: each frame/index access rematerializes its LUI and load; increments retain `sll ...,24`, `sra ...,24`, and the byte store in the helper's delay slot.

## Discarded division and register priority

Incorrect ASM: assigning an unused `D_800313D4_31FD4 / framesPerSecond` removed the division entirely. Keeping it with an empty quotient condition restored the division but spilled `result` and cached the message queue in `$s8`.

Code changed: keep `elapsedSeconds = D_800313D4_31FD4 / framesPerSecond; if (elapsedSeconds) {}`. Place `if (result) {}` inside the movie loop before the first drawing call. Keep `OSMesgQueue *messageQueue = &D_8006A8B0` as an initialized local and pass it to `osSendMesg`.

Correct ASM: the target `div` and zero/overflow checks remain, with no `mflo`; result occupies `$s4`, divisor `$s6`, and the message queue address rematerializes in `$a0` for each call.

## Chained byte reset

Incorrect ASM: separate writes to `D_80047739`, `D_8004773A`, and `D_80047738` emitted three direct LUI/store pairs.

Code changed: use `D_80047738 = D_80047739 = D_8004773A = 0`, as in matched `func_80076504_469B4` returned by `Search-AsmPattern.ps1` at `0x46e78`.

Correct ASM: the first two byte addresses are prepared in `$t2`/`$t1` in the prologue; their stores precede the final direct write to `D_80047738`.
