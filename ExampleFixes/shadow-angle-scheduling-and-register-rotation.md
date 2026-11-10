`incorrect ASM`: In `func_800F9118_1080C8`, the negative angle's subtraction and mask are adjacent at the end of the last vertex. The target has an earlier `addiu s1,s5,-0x4000`, a separate `andi t5,s1,0xffff`, and a copy into `s1` before the trig branch.

-> `code changed`: Assign `terrain.value = heading - 0x4000` before the last vertex's alpha store. After advancing the vertex pointer, assign `terrain.value = (u16)terrain.value`. Pass that word directly to the negative branch's `coss` and `sins`, which take an unsigned halfword.

-> `correct ASM`: The subtraction is at `0x1085D4`. The mask and copy are at `0x10864C` and `0x10866C`, and both trig paths have their target call and delay-slot order. The enabled C draft has the target length of 441 instructions.

`incorrect ASM`: With the angle sequence in order, the renderer still uses `li at,8` for the packet guard and has 210 differing instruction words, all involving registers.

-> `code changed`: Widen and narrow the first masked heading twice with `(s32)(s64)(s32)(s64)`. Reuse `terrain.value` for the final count limit. Keep the empty equality test on the same line as `terrain.value = 8` before the packet guard.

-> `correct ASM`: The conversions emit no extra instructions, and the packet guard uses `li t1,8; beq t1,t2`. The linked draft has 75 differing words. Of those, 63 are explained by a `t8`/`t9` swap beginning at the sine offset's sign extension, and 12 occur in the descriptor setup. The assembly fallback remains selected in both ROM builds.
