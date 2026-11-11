`incorrect ASM`: In `func_80096BC4_A5B74`, IDO uses `lui s1,%hi(D_8005BB2C)` for the display-list cursor address and `lui t5,%hi(D_8005BB34)` for the vertex cursor address. The selected-group branch compares from `ra`.

-> `code changed`: Remove the four empty conditions at the loop end. Keep the right point, level address, and coordinate table live in a single empty bitwise-OR condition after setting vertex heights. Assign the default alpha with `bright = (u32)tile * 0 + 0x46` to preserve the tile cursor lifetime without another condition.

-> `correct ASM`: The cursor address loads use `lui ra,%hi(D_8005BB2C)` and `lui t4,%hi(D_8005BB34)`. The selected-group comparison uses `s1`, and the tile cursor stays in `s0`. The function retains its 0x4FC-byte size and the number of differing instruction words falls from 203 to 165. The function still uses its assembly fallback while the remaining differences are being resolved.
