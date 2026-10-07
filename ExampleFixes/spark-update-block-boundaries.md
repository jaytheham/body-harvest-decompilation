# Spark updater: typed payload and IDO block boundaries

`func_800CCB60_DBB10` in `CFE30.c` matches with IDO 5.3 -O2 -mips2 -32.

Use direct effect-array access for lifetime and link fields, and an `EffectSparkState` pointer for the payload. Keeping a separate entry pointer added a redundant move and changed saved-register allocation. The width is a signed halfword at payload offset 0xA; the old generic sub-struct described it as a byte.

Compare the byte lifetime directly with zero after decrement. The redundant `& 0xFF` changed the temporary-register sequence.

Four nested `if (1)` blocks around the width check preserve the target codegen. Without the blocks, IDO folds the width load into the entry base and repeats the payload-pointer addition in the first random call's delay slot. One to three blocks fix those instructions but swap the initial -5/-6 constants between v0 and v1. Four blocks also fix that swap. The mask comparison with 1 is present in the target even though a 0x80 mask cannot equal 1; preserve it.

Validation: function diff score 0 and full ROM checksum `build/bh.us.z64: OK`.
