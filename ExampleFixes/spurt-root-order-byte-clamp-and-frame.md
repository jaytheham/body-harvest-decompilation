# Spurt allocator: root-pointer order, parameter clamp, and local reservation

`func_800CA5EC_D959C` in `CFE30.c` matches with IDO 5.3 -O2 -mips2 -32.

Compute the root entry pointer and load its linked index before the self-assignment of the effect flag. The target preserves that flag load/store. Placing it first made IDO compute the effect-array address before the root address, shifting many instructions; moving it after root/link setup reduced the diff from 4556 to 518.

Clamp the byte intensity parameter in place rather than copying it to a byte local. This gives the target original load in v1 and its promoted copy in a2. A separate byte local swapped those two registers; a word local changed further instructions. Use the RGB parameters directly, with one reused signed halfword local for the subtract-120/clamp operations.

The target frame is 0x40 with ra at 0x1C and the effect byte at 0x25. `s32 padding[6]`, then an unused s16, then the u8 effect local reproduces those offsets. The six words reserve the otherwise unused frame area. The halfword changes the byte slot from 0x27 to 0x25 without changing the frame. Keep these declarations before the real locals; moving the six-word reservation after the effect does not reserve the required area.

Define typed visual and emitter views in the effect entry union, then address their members directly. This removes byte-pointer arithmetic and payload casts while preserving every instruction. The visual view contains position, RGB, and three shadow-color bytes; the emitter view contains signed velocity, size, kind, intensity, age, and alpha. Both views are 0x0C bytes and preserve the effect entry stride.

Validation: function diff score 0 and full ROM checksum `build/bh.us.z64: OK`, including after typed-view cleanup and addition of the s16(u8,s32) declaration for the called allocator.
