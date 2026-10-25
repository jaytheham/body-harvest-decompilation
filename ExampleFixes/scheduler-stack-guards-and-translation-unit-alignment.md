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

### Save-code controller thread (func_80000ED4_1AD4)

The controller-message handler matched every executable instruction, stack home, and register, but its unreachable epilogue lacked four NOPs. With core/1050 starting at ROM 0x1050, IDO's object-relative 32-byte alignment landed sixteen bytes early. Start the existing C unit at 0x1000 instead, including the unchanged handwritten boot instructions as an inline GLOBAL_ASM block before the save code. Merge the two code entries in bh.us.yaml and regenerate the linker input (or remove the separate core/1000 object entries from the existing bh.ld). The standalone boot assembly remains untouched. asm_processor cannot directly include that complete assembly file because its .include/.set preamble is unsupported; the inline block contains only its labels and instructions. No new file or artificial padding is needed. Verified function diff zero and full ROM OK on 2026-10-12.

Follow-up (2026-10-25): the boot instructions now live in `src.us/core/entry.s` and `core/1050.c` pulls them in with `#pragma GLOBAL_ASM("src.us/core/entry.s")`, so the entry reads as handwritten assembly instead of an inline block, with the bytes and the ROM unchanged. The entry cannot be a separate object, and the cause is measured. IDO's `.align 5` before the unreachable epilogue is resolved relative to the start of the object. The standalone `1050.c.o` places the epilogue at object offset 0xBC0 after two padding NOPs, while the ROM has it at 0x1C20 after six, and 0x1C20 is 32-byte aligned only when the object starts on a 32-byte boundary at or before 0x1050. The entry's code ends at 0x1037 and 0x1038 to 0x104F are NOPs, so a C object starting at 0x1050 begins 16 bytes past a boundary and its padding lands 16 bytes early. No function between 0x1050 and 0x1AD4 starts on a 32-byte boundary (starts 0x1050, 0x1330, 0x151C, 0x16D4, 0x1714, 0x18D4, 0x190C, 0x1AD4), so no other split point helps. Three splat layouts were tried and all failed with the same SHA-1 (362925f5...), with `func_80000ED4_1AD4` exactly 16 bytes short: a `hasm` entry at 0x1000 plus C at 0x1050; the same with a `pad` subsegment at 0x1040; and the same with `subalign: 32` on the C subsegment (splat applies `SUBALIGN` per segment, not per object, and padding or subalign only moves whole objects, it cannot change bytes IDO laid out inside one). A C rewrite of the entry is not possible either, because its `addi` instructions are marked handwritten and IDO never emits them.

Other N64 decomps do not hit this. sm64, mk64, GoldenEye, Banjo-Kazooie and Diddy Kong Racing have 0x50 entries followed by C at 16 mod 32 and rely on 16-byte object alignment only, but none has an `.align 5` epilogue after the entry that depends on placement (mk64 builds `main.c` with `-g`, which suppresses it). OoT, Majora's Mask and Pokemon Snap use 0x60 entries, so the next object starts at 0 mod 32. Body Harvest has the 0x50 entry and the 32-byte-aligned epilogue together, which fits the entry and the save code having been one assembled unit; keeping them in one object, with the entry in its own file, preserves that.
