# Scheduler stack guards and translation-unit alignment

Matched `func_8000F6B0_102B0` with IDO 5.3 -O2 -mips2 -32.

The stack guard is one `u64` containing `0xCEC`, rather than two independent
word globals. Assign and compare the complete guard. Tentative definitions
selected by `CORE_FD80_BSS` in `include/variables.us.h` reproduce the shared
address load and low-word-first initialization stores. External declarations
alone emit an extra `lui` and store the high word first. See also
[the earlier tentative-definition fix](tentative-bss-definitions-u64-stores-and-folded-increment.md).

Use `1U - D_80031B84_32784` for the buffer swap. The unsigned literal gets its
own `li` instead of sharing the signed saved-register constant used throughout
the scheduler. This also restores the target saved-register allocation.
In the task-completion case, decrement the pending count after the elapsed-time
assignment; IDO schedules that decrement after `osGetCount`, leaving the hang
counter reset in the call's delay slot.

An otherwise exact function was missing sixteen zero bytes before its
unreachable epilogue. Compiler assembly revealed `.align 5` there: alignment
is relative to the object, not the final ROM address. The old `0xFD80` split
fell inside the preceding boot thread's epilogue. Its C compilation ended at
`0xFD90`, shifting the scheduler object's origin by sixteen bytes and hence
its 32-byte alignment phase. Reunite the boot and scheduler code in one
translation unit starting at `0xFB00`. The scheduler epilogue then starts at
`0x10A20` naturally. Remove its separate assembly placeholder and start the
next code segment at `0x10A50`. No padding instructions or object patches are
needed.

Unused local slots and declaration order retain the target `0xA0` frame,
client at `sp+0x80`, message at `sp+0x70`, and task timestamps at `sp+0x5C`.
The graphics display-list terminator uses `BhGfxBuffer.displayList[0x1C1F]`
instead of byte-pointer arithmetic. The thread entry has an unused `void *`
argument, consistent with `osCreateThread`.

Verified: function diff score 0, including the epilogue through `0x10A50`, and
full-ROM checksum `build/bh.us.z64: OK`.
