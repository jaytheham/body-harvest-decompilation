# Promoted halfword arguments and compiler spill slots

`func_80118670_127620` matches with `(s32)arg0` and `(s32)arg1` passed directly to the distance helper. IDO caches the promoted values across calls using word stores and halfword reloads. Named s32 coordinate locals produced identical instructions but enlarged the frame from 0x28 to 0x30. Direct s16 arguments eliminated the caches. Explicit promotions preserve the caches without reserving named local slots.

Use a shared s32 result assigned in if/else branches for the flag-dependent returns. Verified with the full ROM checksum.

`func_8011C25C_12B20C` required assigning the shifted X center before the Z center and radius. The load/store schedule was already correct, but this source order restored the three shift-result registers (t8, t5, t9). Declaration order retained the stack slots.

`func_8011C594_12B544` matches with the zone count read directly in both the entry guard and do/while bound. Caching the count in a named local let IDO unroll the loop. Assign X, Z, radius in that order and compare the building X field directly. Keep zone initialization and `do {` on the same source line: this moves the building-array low-address instruction before the zone pointer addition. Full ROM checksum passes.

`func_8011C6A8_12B658` accesses `D_80146688_155638[currentLevel - 1][zoneId]` through Unk80146688 fields. Direct alien array fields avoid a v0/v1 pointer permutation. Keep the global decrement on the `else {` line to let IDO interleave the counter load and flag read and place the counter store in the branch delay slot. Keeping them on separate source lines forced a completed store before the flag read. Full ROM checksum passes.

## Hash lookup: direct byte table access

In `func_8011D19C_12C14C`, passing explicitly promoted `(u8)` arguments directly to both helpers produces the required argument caches. A leading unused `u16` before the live `u16` key puts the key at 0x2c. Read `D_8015D0B0[index]` directly in the empty-slot comparison and return instead of assigning a named slot temporary. IDO shares the byte load, selects the target table-base registers, and reserves the correct argument cache slots. The named temporary produced identical logic but different registers and stack offsets.

## Alien loop index and scheduling

For `func_8011C8E8_12B898`, a named `s32 alienId = *alienIds` (separate assignment after declarations for C89) moves the byte index load into v0 and the live global count into v1, matching the target. Keeping `alienIds = D_8014D408; do {` on one source line schedules the alien table base before the ID pointer base.

## Variadic target list

`func_8011C9D8_12B988` uses unconditional `va_start` followed by a `for` loop of `va_arg(args, s32)`, which produces the aligned and unrolled target argument-copy sequence. A four-element target array declared after the loop index, alien index, and va_list gives the target frame and array offset. Place the timeout assignment after both flag updates: IDO still schedules the timeout store early, but now places the redundant flag-result move before the global count reload.

## Building effect argument temporaries

For `func_80120334_12F2E4`, inline the instance-index expression, adjusted coordinates, and callback in the call. `(s16)(arg0->yCoord + 0x15)` expresses the target truncation directly. Removing the named index, coordinate, and callback temporaries produces the correct temporary registers and ordering of otherwise identical constant stack arguments.
