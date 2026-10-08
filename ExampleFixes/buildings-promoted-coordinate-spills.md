# Promoted halfword arguments and compiler spill slots

`func_80118670_127620` matches with `(s32)arg0` and `(s32)arg1` passed directly to the distance helper. IDO caches the promoted values across calls using word stores and halfword reloads. Named s32 coordinate locals produced identical instructions but enlarged the frame from 0x28 to 0x30. Direct s16 arguments eliminated the caches. Explicit promotions preserve the caches without reserving named local slots.

Use a shared s32 result assigned in if/else branches for the flag-dependent returns. Verified with the full ROM checksum.

`func_8011C25C_12B20C` required assigning the shifted X center before the Z center and radius. The load/store schedule was already correct, but this source order restored the three shift-result registers (t8, t5, t9). Declaration order retained the stack slots.

`func_8011C594_12B544` matches with the zone count read directly in both the entry guard and do/while bound. Caching the count in a named local let IDO unroll the loop. Assign X, Z, radius in that order and compare the building X field directly. Keep zone initialization and `do {` on the same source line: this moves the building-array low-address instruction before the zone pointer addition. Full ROM checksum passes.

`func_8011C6A8_12B658` accesses `D_80146688_155638[currentLevel - 1][zoneId]` through Unk80146688 fields. Direct alien array fields avoid a v0/v1 pointer permutation. Keep the global decrement on the `else {` line to let IDO interleave the counter load and flag read and place the counter store in the branch delay slot. Keeping them on separate source lines forced a completed store before the flag read. Full ROM checksum passes.

## Hash lookup: direct byte table access

In `func_8011D19C_12C14C`, passing explicitly promoted `(u8)` arguments directly to both helpers produces the required argument caches. A leading unused `u16` before the live `u16` key puts the key at 0x2c. Read `D_8015D0B0[index]` directly in the empty-slot comparison and return instead of assigning a named slot temporary. IDO shares the byte load, selects the target table-base registers, and reserves the correct argument cache slots. The named temporary produced identical logic but different registers and stack offsets.
