`incorrect ASM`: In `func_800DABBC_E9B6C`, a signed word `type` with `switch (type)` loses the target selector copy. A byte `type` retains a copy but loads the field into `v0`, moves it to `a1`, and uses `a1` for the jump-table index. The target loads into `a1`, compares that value, and copies it to `v0` in the range branch's delay slot.

-> `code changed`: Keep `s32 type`, pass it to the permanent-type diagnostic, and use `switch (type ^ 0)`. Include `case 0xFA` in the switch instead of an outer sentinel guard. Use `u8 i` with ordinary `i++` in both pool loops. Preserve case order and derive the case numbers from the target jump tables, rather than from the order of the call instructions.

-> `correct ASM`: The first pool emits `lbu a1`, `slti at,a1,10`, `bnez`, and `move v0,a1` in the delay slot. Its sentinel branch is `beql v0,at`, and the table index uses `v0`. Both byte loops emit the target narrowing and loop-bound sequence. All dispatcher instructions and both generated jump tables match.

`incorrect ASM`: Leaving the later beam renderer's thirteen C constant placeholders at file scope places them ahead of the newly generated dispatcher tables. Both table references move by 0x60, and the beam's floating-point loads reference displaced constants.

-> `code changed`: Move those unchanged constants into `CFE30_beam_late_rodata.s`, and include it alongside the extracted function-specific assembly using a multi-argument `GLOBAL_ASM` pragma. Remove this support pragma when enabling the beam C implementation.

-> `correct ASM`: The dispatcher tables occupy 0x80144030 and 0x80144058, followed by the beam constants at 0x801440B0. Both complete US and EU ROM checksums pass.
