`incorrect ASM` — In `func_8007EFD4_167094`, a file-scope scale counter produced a cached `lui/addiu` address and a plain branch. The direct halfword conversion also shifted the temporary register sequence. A separate matrix cursor local matched the register sequence but increased the frame from `0xC0` to `0xC8`.

-> `code changed` — Use automatic scale-table initializers followed by the function-local static counter. Move the subsequent data definitions after the function to preserve their ROM addresses. Mask the scale conversion to its low halfword, use a `u16` intermediate in the default case, and advance the matrix cursor through the spent vehicle parameter between the component assignments.

-> `correct ASM` — IDO emits direct counter loads and stores and the target branch-likely delay slots. The default case uses `addiu t8,a3,0x40` and `mfc1 t3,f18` with all three halfword stores from `t3`. The frame is `0xC0` and the function diff is zero.
