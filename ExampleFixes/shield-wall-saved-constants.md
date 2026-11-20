## Incorrect ASM

In `func_80096BC4_A5B74`, the wall-link sentinel and coordinate table occupied `s7` and `s5`. The color maximum occupied `s6`, while the wall height occupied `s8`. The loop countdown was initialized near the entry branch. The selected color branch also prepared the phase in `t0` instead of `v1`.

## Code changed

Keep the link-group lookup through a direct `currentLevel` read. Initialize the sentinel with `missing = loop * 0 - 1` and retain `missing * 0` in the default alpha expression. Initialize the signed halfword `height` with `loop * 0 + 0x40` before the signed word `maxColor` with `loop * 0 + 0xFF`.

Read the halfword phase into the shared word `tileGroup`. Set `bright = tileGroup * 0 + 0xFF` before scaling `tileGroup` by 16. Keep the active green difference in a signed halfword.

In the countdown variant, initialize a signed word remaining from loop - 1 before the display-list setup. Use if (loop--) for the entry guard and while (remaining--) for the do-while tail.

## Correct ASM

Both level loads use `s4`. The link sentinel uses `s5`, the point table uses `s6`, the wall height uses `s7`, and the color maximum uses `s8`. The phase load and copy use `v1`, with `sll t6,v1,4` before the first signed division and `addiu t0,v1,0x200` before the second. The enabled candidate retains 319 instructions and the 0x40-byte frame. The countdown variant emits li s3,0x1f at A5C10 and keeps the li v1,0x20 and beqz v1 at the loop entry. The remaining setup and palette instructions still differ in these checkpoints.

