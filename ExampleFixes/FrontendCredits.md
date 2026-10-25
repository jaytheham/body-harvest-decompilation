Incorrect ASM: `func_8007BFC4_4C474` uses a `0x170` frame, with the hold counter at `sp+0x160` and the start index at `sp+0x162`, despite matching every other instruction.

-> Code changed: declare `lineCount`, `currentLine`, `fadeCounter`, `startIndex`, `holdCounter`, and `lineText` in that order, followed by `u8 textBuffer[52]` and `s16 lineOffsets[100]`. The pointer home fits between the counters and the buffer.

-> Correct ASM: `addiu sp,sp,-0x168`; the counters use `sp+0x15E` and `sp+0x160`, the buffer remains at `sp+0x124`, and the offsets remain at `sp+0x5C`. Both complete ROMs match.

Incorrect ASM: a separate row local and a separately decremented word cursor add stack homes and change the loop-tail registers.

-> Code changed: repeat `(0xC - startIndex) + currentLine` for the row expression, use an `s16` cursor, and put `--currentLine` directly in the do/while condition. Reuse the dead line-count local for copying the text.

-> Correct ASM: the row base stays in `s5`, the row stays in `s0`, and the tail uses `addiu s2,s2,-1; sll t9,s2,16; sra t8,t9,16; blez t8,...; move s2,t8` without extra stack homes.
