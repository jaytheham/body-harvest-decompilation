# Nuke keyframes: separate word phase caches

`func_800D6C18_E5BC8` in `CFE30.c` matches with IDO 5.3 -O2 -mips2 -32.

The keyframes have stride 0x14: signed position halfwords at 0/2/4, an unsigned angle at 8, signed scale halfwords at C/E/10, and a byte duration at 12. Use a typed keyframe pointer and `&data[1]` for advancement. An alias in the destination record keeps the original integer pointer field available to existing matched code without changing its layout.

Keep the initial phase in a word local, then copy it into a separate word `currentPhase`. When advancing, store `phase + 1` to the byte field and refresh `currentPhase` from that field. This produces the original phase in v1, the promoted phase in a0, and the target `andi a0,t9,0xFF` after the byte store. A single byte local introduced an extra mask and move; one word local changed the promotion and register allocation.

Write the duration comparison as `data->duration == entry->unk14`. IDO emits the destination timer load first, but assigns it t7 and the duration t8 as required. The opposite source comparison swapped those registers.

Unsigned halfword angle fields still promote to signed int for division, so the target uses `div`, not `divu`. Keep position and scale divisions as direct compound assignments, with a fresh duration read for each; their complete instruction sequence already matches.

Validation: function diff score 0 and full ROM checksum `build/bh.us.z64: OK`.
