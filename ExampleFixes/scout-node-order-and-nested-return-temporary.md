`incorrect ASM`: In `func_8008F9E4_9E994`, loading the instance angle between the second and third node assignments emits `sra t8,t2,16` before the third-node lookup and delays `andi a0,s0,0xff` until after the player-speed literal.

-> `code changed`: Complete all five node assignments first, then assign the signed-halfword angle and copy it into the word temporary.

-> `correct ASM`: The argument normalization follows `sll t2,t1,16`; the third-node lookup precedes `sra t8,t2,16; move t2,t8`. Every node-chain register and instruction order matches.

`incorrect ASM`: Nesting `func_8008E524_9D4D4` inside the second argument of `func_8008E978_9D928` leaves a hidden return temporary. With the otherwise-correct declarations, the frame is 0x48, the path end is at sp+0x3e, the moved flag at sp+0x34, the speed at sp+0x2c, and the cached instance pointer at sp+0x24.

-> `code changed`: Declare four byte node indices, a word temporary, the signed-halfword path end, one unused word, the word moved flag, the signed-halfword angle, and the word speed, in that order. Reuse the existing word temporary: `tmpB = func_8008E524_9D4D4(arg0, sp24, 2); func_8008E978_9D928(arg0, tmpB);`.

-> `correct ASM`: The frame becomes 0x40, with the path end at sp+0x36, moved flag at sp+0x2c, speed at sp+0x24, and cached pointer at sp+0x20. The final calls still use `jal func_8008E524_9D4D4; ...; jal func_8008E978_9D928` with `move a1,v0` in the second call's delay slot. Function diff is zero and the complete US ROM checksum passes.
