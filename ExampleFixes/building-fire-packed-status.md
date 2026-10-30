`incorrect ASM`: The nonmatching C for `func_8011BF7C_12AF2C` expressed the 20-bit status update as manual shift/OR/XOR operations and referenced a placeholder `const f64` array for the `0.4` height multiplier.

-> `code changed`: Use `inst->statusFlags` for the flag tests and `inst->statusFlags |= 0x10` for the update. Replace the placeholder array reference with the inline double literal `0.4` and delete its const definition. Pass `inst->yCoord + type->unk14 * 0.4` directly to the declared `s16` parameter, removing the explicit intermediate casts.

-> `correct ASM`: IDO emits the target `srl`/`ori`/`xor`/`sll`/`xor`/`sw` update at ROM `0x12B008` through `0x12B01C`, retains the double multiply/add and signed-halfword argument conversion, and generates the double constant at the original rodata location. The function diff score is zero and the full US ROM matches.
