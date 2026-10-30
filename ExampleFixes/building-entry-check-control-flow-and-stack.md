# Building entry checks: func_8011815C_12710C

`incorrect ASM`: The success action appeared before the failure handling, and the failure handling duplicated the timer and printf sequence. The initial assignment to D_80052540 also emitted redundant SLL/SRA narrowing instructions.

-> `code changed`: Put failure handling in the else arm, return from that arm, and place the success action after the conditional. Combine failure conditions with short-circuit OR so they share the sound call and timer/printf tail. Remove the redundant s16 cast on the already narrowed buildingId. Pass the key flag as the single u64 parameter declared for func_8000726C_7E6C.

-> `correct ASM`: The failure block occupies 0x1272B4–0x12733C and the success action starts at 0x127340. The redundant narrowing instructions disappear.

`incorrect ASM`: All instructions matched except doorData at sp+0x2A, found at sp+0x2C, building at sp+0x1C, and buildingId at sp+0x20.

-> `code changed`: Order declarations as s16 doorData, s32 canEnter, s32 buildingId, Unk80148620 *found, s16 doorId, BuildingInstance *building.

-> `correct ASM`: The same 0x38-byte frame uses doorData at sp+0x36, found at sp+0x28, building at sp+0x18, and buildingId at sp+0x1C. The function matches byte for byte.
