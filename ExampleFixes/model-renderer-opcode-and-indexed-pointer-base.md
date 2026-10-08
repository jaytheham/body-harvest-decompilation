# Model renderer opcode and indexed pointer base

`func_800D978C_E873C` initially differed only in two temporary constants and the base used to calculate the rotation pointer. A named `u32 opcode = 0x06000000` used for the per-entry display-list command made IDO allocate the initial opcode and the `-5` sentinel to the target temporary registers. Plain word stores reproduce the commands without signed lvalue casts.

The position pointer is `&linkedEntry->spatialVectors[0]`. Plain `&spatial[1]` folded its offset into the saved entry pointer, producing `addiu a1,s0,0xE`; the target uses `addiu a1,a0,6`. Indexing through `&((Unk80052B40 *)((s32)spatial | 0))[1]` preserved the position pointer as the base while retaining array access. The integer view and bitwise identity are necessary for this code generation: reversing pointer forms, adding zero, ordinary casts, and named rotation pointers did not reproduce it.

Keep the scope around the second sentinel guard and do loop. It preserves the target register allocation and 0x50-byte frame. The formatted function and command-store cleanup passed full-ROM verification.
