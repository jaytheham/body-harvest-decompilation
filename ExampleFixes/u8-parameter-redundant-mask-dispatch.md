`move a0,s0; andi t8,a0,0xff; jal func_80087A40_16FB00; move a0,t8` in `func_8008B1A8_173268`

-> Change `func_80087A40_16FB00(i & 0xFF)` to `func_80087A40_16FB00(i)` when its declared parameter is already `u8`; apply the same change to `func_80089BCC_171C8C`.

-> `jal func_80087A40_16FB00; andi a0,s0,0xff`, matching the target delay slot and removing two instructions per call.


`incorrect ASM`: In `func_80086D88_16EE48`, calls to the assembly-backed `func_80085F28_16DFE8` and `func_80086B34_16EBF4` passed the loop index with `move a0,s0` instead of `andi a0,s0,0xFF` when their byte prototypes were missing.

-> `code changed`: Declare both helpers with `u8` parameters in `include/functions.us.h`, keep the masked loop increment, and pass `i` directly to all typed byte-argument helpers. Select the update through the slot's `unk0` byte and remove the placeholder jump-table constant.

-> `correct ASM`: IDO emits the required byte mask in each helper call's delay slot and generates the jump table at its original address. All 66 instructions and the complete ROM match.
