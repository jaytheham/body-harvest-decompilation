# Frontend name editor temporary homes and scheduling

`func_80078424_488D4` (`0x488D4`), IDO 5.3 `-O2 -mips2`.

## Animation arguments

Incorrect ASM: a `step` local and three halfword animation locals reserved a `0x88` frame; after scoping and reusing the loop index, the frame remained `0x80`. The calculations also loaded `0x31` into `$t9` and `0x23` into `$t6`, with the first and last animation reloads exchanged.

Code changed: declare `changed` before `nameLength`, the backup array before `i`, the entry pointer inside the main loop, and the text width followed by its buffer inside the changed-name block. Pass `(frameCounter >> 2) + 0x16`, `0x23 - (frameCounter >> 2)`, `(frameCounter >> 2) + 0x24`, and `0x31 - (frameCounter >> 2)` directly to the four calls. Remove the animation locals and their shared `step` assignment.

Correct ASM: frame `0x78`, backup buffer at `$sp+0x64`, text buffer at `$sp+0x50`; `li $t9,0x23`, `li $t6,0x31`, and reloads from `$sp+0x42`, `$sp+0x3e`, `$sp+0x3a`. CFE reserve fell to 46 bytes; optimized reserve was 64 bytes. The three normalized argument values still hoisted and spilled before the first call.

## Byte writes and copy scheduling

Incorrect ASM: using the read symbol for all filename writes cached an additional saved-register base. Separate length increments scheduled the append `sb` before the length `sra`. A `for` increment on the header line scheduled the copy `sb` in the branch delay slot with displacement `-1`.

Code changed: use `frontendFileNameWrite`, a linker alias of `D_80047FA8`, for the main loop writes; retain the original symbol for backup, clearing, and reads. Delete with `frontendFileNameWrite[--nameLength] = 0x20`, append with `frontendFileNameWrite[nameLength++] = selected + 0x2b`. Express the bounded string copy as `i = 0; while (i < 6 && source[i] != 0x20) { destination[i] = source[i]; i++; }`.

Correct ASM: no persistent filename base; two independent delete sign extensions followed by the target store and move; append `sra` before `sb`; copy `sb $v1,0($a0)`, source increment, branch, destination increment in its delay slot.

## Independent initialization scheduling

Incorrect ASM: separate source lines placed the two field stores in source order and moved the initial loop constant early.

Code changed: write each paired initialization on one line (`unk0 = 0xa0; unk2 = 0x88;` and `unk4 = 0xd2; unk6 = 0xc2;`), and retain `i = 5; do {` on one line with `while (i--)`.

Correct ASM: each field pair stores its second field first; the loop retains `move $v1,$a2` and the target `li $a2,5` position.
