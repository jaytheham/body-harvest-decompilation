# Graphics task boot-end symbol and assignment order

`func_8000F478_10078` matches with the SDK `rspbootTextEnd` symbol bound to
`0x8002DEE0`, the start of `D_8002DEE0_2EAE0`. These are distinct C symbols
for the same linked address. Using the graphics microcode symbol in both the
boot-size subtraction and the `ucode` assignment lets IDO reuse its address,
removing the target's second LUI/ADDIU pair and changing register allocation.
The SDK already declares `rspbootTextEnd` in `PR/ucode.h`.

After data pointer/size, type, flags, and boot size, assign microcode fields in
this order: `ucode`, `ucode_data`, `ucode_size`, `ucode_data_size`, then
`ucode_boot`. Swapping the middle pointer and size assignments changes the
allocation of t9/t0 and the scheduling of their address/constant loads.

Retain a task pointer alias assigned after the data-pointer store. Using the
parameter directly throughout produces an extra stack store before
`osScGetCmdQ`; the alias reproduces the target's existing argument reload.
Use `&task->unk68` for the completion message instead of byte-pointer offset
arithmetic. All other temporary values can be removed.

Verified with `tools/make.ps1`: `build/bh.us.z64: OK`, and an exact function diff.
