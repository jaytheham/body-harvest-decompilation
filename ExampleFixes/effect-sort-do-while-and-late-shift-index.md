`incorrect ASM`: In `func_800DBE20_EADD0`, a `for` loop with the invalid-effect test as the first positive branch produces an inverted `bnel` path and the wrong saved sentinel registers. Initializing the insertion-shift index before the slot test also emits `andi v0,s2,0xff` before the slot load can use `v0`.

-> `code changed`: Use a `do-while` loop with the valid-effect body under `effect->unk0 != 0xFA` and the invalid-distance assignment in its `else`. Move `end = backPos` into the distance-ordering branch, immediately before the shift loop.

-> `correct ASM`: The invalid effect takes `beql s8,a0` with the negative-one store in its delay slot. The constants occupy the target saved registers, and the insertion path loads the slot into `v0`, computes its distance, then narrows `backPos` into `v0`. These changes reproduce the target branch and insertion sequences.
