# HUD spill homes and color-packet register interference

`func_8009D96C_AC91C`, `src.us/overlay_gameplay/outside/AAA70.c`.

Incorrect ASM: floating values spilled at `sp+0x38/sp+0x34`, the alien flash timer stored before the texture/entity stores, and the final panel used `subu t0,t6,t9` with `addiu a1,t0,0xAF` / `addiu a3,t0,0xD2`. The target used float homes `0x3C/0x38`, a later flash-timer store, and panel base `v1`. A local midpoint alone changed other register allocations.

-> Code changed: pack the register-only halfwords among the main locals. Keep panel height beside the vehicle-type byte and blink period beside the flash timer; use a word scratch value for building health, explicitly narrowing its level-five division result to `s16`. Keep the building maximum as `s16`. This removes four bytes of CFE automatic storage while retaining the `0xA8` frame and every main local home, moving the compiler's float spills upward one word. After each health fraction, assign the texture before the timer; assign the alien type after the entity ID, and vehicle/building types before their entity IDs. Reuse the word scratch for `value = 0x30 - panelHeight * 6`, placing that assignment before the final `gDPSetPrimColor`, then use `value` in the two Y coordinates. UOPT tracing showed the macro's temporary Gfx pointer competing for `v1` in the same block; moving the scratch definition earlier changes their coloring order without moving the final machine arithmetic ahead of the color packet.

-> Correct ASM:
```asm
swc1 $f2,0x3c(sp)
swc1 $f12,0x38(sp)
...
subu v1,t6,t9
sll t8,a0,2
move t1,t7
addiu a2,t1,0x2c
move a0,t8
addiu a1,v1,0xaf
addiu a3,v1,0xd2
```
All 1034 instructions match; full US and EU ROM checksums both pass. The earlier scale, unsigned-conversion, minimum and rectangle-shift corrections are documented in `hud-scales-widths-and-declaration-homes.md`.
