`func_80082CBC_5316C` incorrect ASM: removing the `#line` directives emitted `addiu s8,s8,1` before `addiu t7,s6,0x10` at ROM 0x539F4.

-> Code changed: move `varFp++` from before the `varS4`/`tempS6` bound-selection if/else to immediately after it, before assigning `sp114.unk0`.

-> Correct ASM: `addiu t7,s6,0x10` followed by `addiu s8,s8,1`; the complete US ROM checksum matches without source-line directives.
