`incorrect ASM`: In `func_8000D8DC_E4DC`, the equivalent timing denominator `end - current` loads the end value first. A near-matching ratio-use variant emits `lwc1 $f20,0x20($a2)` followed by `lwc1 $f18,0x1C($a2)`; the target loads current first.

-> `code changed`: Spell each denominator as `-ch->unk1C + ch->unk20`. IDO folds the negation and addition into the same subtraction, while preserving the changed first-reference order for the loads.

-> `correct ASM`: `lwc1 $f18,0x1C($a2)`; `lwc1 $f20,0x20($a2)`; later `sub.s $f4,$f20,$f18`. No extra negation or addition survives. This fixes the timing-load region; the complete function remains unmatched because the ratio and converted Y goal still exchange `$f12` and `$f16`.
