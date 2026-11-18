`incorrect ASM`: In `func_800ED78C_FC73C`, assigning the selected target through one local produced `lw a3,...`, then `beqz a3,...` with a `nop` in the delay slot.

-> `code changed`: Pass `D_80158FEC != NULL ? (s32)D_80158FEC : (s32)D_80158FF4` as the fourth argument of `func_8012B150_13A100`, matching its other calls in `101840.c`.

-> `correct ASM`: IDO loads the alien pointer into `v0` and emits `beqz v0,...` with `move a3,v0` in the delay slot at ROM offset `0xFDD00`. This fixes the target-selection sequence. The function still has other differences.
