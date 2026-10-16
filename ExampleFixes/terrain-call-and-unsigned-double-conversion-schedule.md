### Terrain result beside an unsigned double conversion call

`func_802D736C_256AAC` matches all 309 instructions and passes the full US ROM checksum.

The target converts the scaled alien-type size directly from double to unsigned halfword. Passing an intermediate float changes `cvt.w.d` to `cvt.w.s`, changes the 2^31 fallback constant, and adds rounding. Keep the double expression directly in the effect call:

```c
tmp32 = func_800B84D0_C7480((s32)posX, (s32)posZ) >> 8; func_800DF848_EE7F8((s32)posX, (s16)tmp32, (s32)posZ, (f64)alienTypes[alienInstances[alienIdx].typeIndex].unkC * 0.75, 2);
```

`posX` and `posZ` remain signed halfwords. Their explicit word promotions preserve the target's repeated sign extension and word-sized argument caches at `sp+0x44/0x40`. Plain halfword arguments remove those caches; word locals reserve different stack homes.

The terrain assignment and following effect call must share a source line. On separate lines, IDO schedules the cached-coordinate reloads before `lui at,0x41e0` and the effect-type constant. Joining the statements moves the constants earlier and the reloads after the double multiply, removing the final four differing instructions (score 240).

Use direct instance-array and joint-array accesses throughout. Retaining named joint pointers changes the later effect-call scheduling even after removing the named instance pointer. Unused words preserve the old pointer homes. Put the five joint halfwords first, then the two coordinate halfwords, float, and shared terrain/angle word. This restores the `0xA0` frame, joint homes at `0x9E` through `0x96`, and the float at `0x8C`.

Reuse the terrain word for both later raw angles and let `sins`/`coss` narrow them through their `u16` parameters. Separate masked halfword angles change the addition registers. The unused former angle homes can be represented by one three-halfword padding array. Grouping the former pointer/padding words into a seven-word array preserves the exact ROM.
