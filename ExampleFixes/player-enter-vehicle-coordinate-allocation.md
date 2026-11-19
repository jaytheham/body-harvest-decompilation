`incorrect ASM` — Using the two-dimensional waypoint array for Y and Z in the enter-vehicle blend left the subsequent vehicle-type stride as `sll t2,t2,0x4` at US ROM offset `0xFCD20` and `addu t5,t5,t2` at `0xFCD24`.

-> `code changed` — Read Y and Z from the flat signed-halfword view of the same union, at `waypointIndex + 2` and `waypointIndex + 4`.

-> `correct ASM` — Both offsets use the target register sequence `sll t6,t6,0x4` followed by `addu t2,t2,t6`.

`incorrect ASM` — With the flat waypoint view, reading `temp_v0_3->unk2` in the later height check yielded `lw t3,0xb0(sp)` at `0xFCE6C` and `addiu t5,sp,0x78` at `0xFCE80`.

-> `code changed` — Spell that one field access as `(*temp_v0_3).unk2`.

-> `correct ASM` — The effect setup uses the target `lw t5,0xb0(sp)` and `addiu t6,sp,0x78`. The movement block also recovers `andi t3,v0,0x2` at `0xFD808`, followed by the target branch register.

`incorrect ASM` — Casting both height sums to signed halfwords at assignment left the later water-height load at `0xFD1C4` in `t6` and the turn-difference sign extension at `0xFD888` in `t8`.

-> `code changed` — Mask the vehicle height to `0xFFFF` before its signed-halfword cast. Keep the player height in the integer scratch variable and cast it to `s16` at the two range comparisons.

-> `correct ASM` — The water-height load uses `lui t8,0x8022` and `lw t8,0x2a70(t8)`. The turn difference uses `sra t2,t7,0x10`, with `t2` passed to the animation call at `0xFD8A0`.
