# Level-selection table and later assembly data

`func_800E1D48_F0CF8` has a matching instruction stream when enabled. Remove its twelve-entry placeholder jump table. The later beam table and shield scale constant must follow the new generated table; leaving their C const placeholders ahead of it moves the generated table from 0x80144194 to 0x801441B8. Moving those C declarations later in the file did not change emission order.

Use the asm processor late-rodata mechanism on the still assembly-backed beam renderer. `CFE30_beam_late_rodata.s` prefixes the untouched target instruction stream with the seven beam jump-table words and the double 1.7. This preserves data order without editing `asm/nonmatchings`. When enabling the beam or shield renderer later, account for these late-data placeholders as well as generated constants.

Initialize both flags in their declarations (`s32 skipSecondCall = 0; s32 shouldClamp = 0;`). This removes the unnecessary constant `if (1)` while preserving the same instruction stream. Simple assignment statements, a plain scope, chained assignments, and a comma statement all changed the subsequent switch temporary allocation. Declaration initialization was the natural equivalent that matched.

Validated with function diff score 0 and full ROM checksum OK.

The earlier effects dispatcher `func_800DD604_EC5B4` also matches immediately after removing its two placeholder tables. The explosion float 0.6 must follow those generated tables. A normal C const declaration is emitted ahead of generated switch tables even when written later in the source, shifting both table addresses by four bytes. `CFE30_explosion_late_rodata.s` places this float with the still assembly-backed explosion function. Remove this support pragma when enabling that function and let the C literal generate its constant. Full ROM checksum OK and dispatcher diff score 0.
