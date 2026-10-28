`move a0,s0; andi t8,a0,0xff; jal func_80087A40_16FB00; move a0,t8` in `func_8008B1A8_173268`

-> Change `func_80087A40_16FB00(i & 0xFF)` to `func_80087A40_16FB00(i)` when its declared parameter is already `u8`; apply the same change to `func_80089BCC_171C8C`.

-> `jal func_80087A40_16FB00; andi a0,s0,0xff`, matching the target delay slot and removing two instructions per call.
