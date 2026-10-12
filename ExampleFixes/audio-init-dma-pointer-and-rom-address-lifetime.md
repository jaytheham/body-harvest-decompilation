# Audio initialization: DMA pointer types and ROM address lifetime

`func_80012A74_13674` matched with the complete ROM checksum passing.

The DMA helper `func_8000F5A8_101A8` originally declared its destination as
`s32`. Changing that parameter to `void *` in both its declaration and definition
fixed two differences in the caller: the order of the `a1`/`a0` moves before DMA,
and the bank-file reload into `a1` rather than `v1` after `alBnkfNew`. The helper
passes the destination directly to `osPiStartDma`; its destination cast is then
unnecessary. The complete ROM checksum also verified the other callers.

The existing `D_963A70_2` declaration needed a linker definition at `0x963A70`
in the tracked `undefined_syms.us.txt`. Do not put C-only aliases in the ignored,
generated `undefined_syms_auto.txt`: local builds can pass using that file, but
fresh extraction does not recreate the alias and clean builds fail to link.
The size calculation uses `D_963A70`, while `alBnkfNew` uses `D_963A70_2`.
These represent the same ROM boundary but keep IDO from preserving the bank-table
address across the DMA call. Replacing the alias with `D_963A70` kept the wrong
boundary in `s2` and rematerialized the bank-file ROM start.

For the sequence DMA calls and `alSeqFileNew`, a shared `u8 *seqRom` local
initialized to `D_BBB9B0` produced the target allocation: ROM address in `s2`,
addresses of the sequence-file globals in `s0`. Direct symbol arguments with
an integer cast in `alSeqFileNew` preserved the address but swapped `s0`/`s2`.

Replace the old `ALSeqFile *seqFile` local with `seqRom`, accessing sequence
lengths through `((ALSeqFile *)D_8006AB44)->seqArray[j].len`. Adding the ROM local
without removing the old file local enlarged the frame from `0x190` to `0x198`.
The ALSeqFile view is necessary here: `BhSeqFile` exposes a halfword length for
other callers, while this maximum-length scan loads the full word at offset 8.
