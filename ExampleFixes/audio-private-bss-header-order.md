`incorrect ASM`: Moving the `12C80.c` function declarations out of `functions.us.h` shifts the private available-sounds counter from `0x8006AB14` to `0x8006AB10`, changing the `sh` at ROM `0x146C0` and `lh` at `0x1471C`.

-> `code changed`: Replace the separate private `static s32 soundPlayerSlot` and `static s16 D_8006AB14` with one private `AudioSoundPlayerState` containing the reserved word followed by `availableSounds`, and access the counter through that field.

-> `correct ASM`: The private counter stays at offset 4 (`0x8006AB14`); both instructions use `-0x54EC`, and the full US ROM matches.
