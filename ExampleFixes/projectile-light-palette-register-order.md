`incorrect ASM` — With the plain palette selector `weaponFlags & 7`, IDO uses `t5` for the palette address at ROM `0x1347DC`. The temporary register order drifts through the light colors and trail setup. The vertex fade written as a multiplication also schedules the `0x80` load after the flag store.

-> `code changed` — Use `(u8)weaponFlags & 7` to select an `EffectRgb` entry and `0x80 - (i << 2)` for the vertex fade.

-> `correct ASM` — IDO loads the palette address into `t6` and scales the selector in `t5`. The light color stores and the full trail setup match, including the `0x80` load at `0x134918`. UGEN first allocates `t9` for the byte conversion, then `t8` for the selector mask. The assembler merges the two masks into `andi t8,t0,7`. The ROM uses `t9` for that instruction and the following shift and subtraction. The C draft remains wrapped in `NON_MATCHING`.

`incorrect ASM` — The C switch generated default and spark entries at offsets `0x7` and `0x13` of the projectile jump table instead of the two target effect entries.

-> `code changed` — Dispatch on the raw weapon ID. Group `0x63` with `0x60` and group `0x6F` with `0x5E`. When testing the C function, replace the earlier `D_80145160_154110[0]` reference with `1000.0`. Enable the C body in place of the assembly pragma so the compiler generates the divisor and jump table in order.

-> `correct ASM` — The US and PAL jump tables and the preceding double both match the ROM. In the US ROM, entries `0x7` and `0x13` target `0x80125108` and `0x80125070`.
