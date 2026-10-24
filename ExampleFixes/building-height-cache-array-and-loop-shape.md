# Building height-cache decoder (`func_8011DBA0_12CB50`)

## Array-address operand order

Incorrect ASM: flat `&maps[startIndex << 12]` emits the map-offset operand before the base in `addu`; the decoder entry address also has reversed operands.

Code changed: view the maps as rows of 64 halfwords and use `maps[startIndex << 6]`. View the decoder entries as single-entry rows and use `unkTable[value >> 13]`.

Correct ASM: `addu $a1,$ra,$t7` for the map cursor and `addu $v1,$t0,$t9` for the decoder entry.

## Cached index reload

Incorrect ASM: direct global indexing and `D_8015EB68++` put the cached index in `$v1`.

Code changed: reload `startIndex = D_8015EB68`, write `D_8015EB60[startIndex]`, then assign `D_8015EB68 = startIndex + 1`.

Correct ASM: the initial and post-loop index loads use `$a2`, matching the target.

## Queue shift

Incorrect ASM: a do/while cursor starting at queue element 1 reverses the order of the start/end address setup.

Code changed: start at queue element 0 and use `while (pendingPtr++ < &D_8015EB70[7]) { pendingPtr[-1] = *pendingPtr; }`.

Correct ASM: initialize the end address before the element-1 cursor; copy all seven entries with the target `lbu`, `sltu`, increment, branch, and delay-slot store.

## Live-range boundaries

Incorrect ASM: the decoder cursor/value/count registers are permuted, and the pending-count address uses `$a3` instead of `$t0`.

Code changed: retain `if (unkPtr && value) {}` after loading the encoded value, and `count = D_8015EB6C; if (count) {}` immediately before setting the timeout to 2. Keep prefix cursor increment and the existing loop-entry block.

Correct ASM: the cursor/value/count use `$a1`/`$a2`/`$a3`, and the pending-count address uses `$t0`. Its final `lh $t6,0($t0)` hoists before the timeout store.
