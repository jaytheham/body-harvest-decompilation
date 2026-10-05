# s16 joint local before coordinate structs

In `func_802E205C_3261AC`, all instructions and registers already matched, but a `s32 joint` local before two six-byte coordinate structs enlarged the frame from 0x48 to 0x50. Changing the joint to `s16` kept the same signed-byte argument conversion while placing the output at 0x38, root at 0x36, and coordinate structs at 0x2C and 0x24, producing a full ROM match.

Moving the `s32` joint after the coordinate structs restored the frame size but left both structs four bytes too high. Match both local width and declaration order when only stack offsets differ.
