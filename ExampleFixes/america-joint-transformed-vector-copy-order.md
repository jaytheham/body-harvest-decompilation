incorrect ASM: In the first transformed-vector copy in `func_802DD104_25C844`, IDO emitted `lw t7,0x80(sp)` / `sh t7,0x92(sp)` before the X component, while the target copies X before Y.

-> code changed: Order the assignments as `sp90[0] = sp7C[0]; sp90[1] = sp7C[1]; sp90[2] = sp7C[2];`, replacing the Y/X/Z order.

-> correct ASM: The copy uses `lw t7,0x7C(sp); lw t6,0x80(sp); lw t8,0x84(sp)` and stores those values at `0x90`, `0x92`, and `0x94`. This copy now matches the target; the complete function remains unmatched.
