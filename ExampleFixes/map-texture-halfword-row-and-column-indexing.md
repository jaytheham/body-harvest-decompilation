`incorrect ASM`: The byte-indexed map texture row pass shifts row and column directly into `v1` and `a1`, omitting the copies around the shifts. The byte-indexed column pass begins four instructions earlier than the target.

-> `code changed`: Use halfword offsets and an array of 8192 halfwords for the row stride. Index the row offset and column offset separately. For the column pass, apply the row offset before indexing the 1024-halfword strip.

-> `correct ASM`: The row pass emits the target move/shift/move shape. The isolated column comparison restores the target loop entry and exit offsets at `A84A0` and `A84F4`. Operand registers and some scheduling still differ.
