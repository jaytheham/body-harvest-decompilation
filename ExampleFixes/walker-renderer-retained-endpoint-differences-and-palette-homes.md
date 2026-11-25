`incorrect ASM`: `func_800F7790_106740` omitted the target's four endpoint loads, X subtraction, negation, and Z subtraction before halving the geometry offsets. Ordinary unused scalar assignments and a single check of the negated value removed the first subtraction and negation.

-> `code changed`: Reuse the completed triple-X scratch for the live center-X snapshot. Assign the X difference to `phase` and its negation to `angle`; retain `if (angle + angle) {}`. Then overwrite `phase` with the Z difference and retain `if (phase) {}`. Use the center-X snapshot for the following vertex's X store.

-> `correct ASM`: Four loads are followed by `subu`, `negu`, and `subu`, with no add or branch from the discarded checks. Referencing the negation twice preserves its shared child expression through late cleanup. The instruction sequence matches structurally; the complete function still has register-allocation differences.

`incorrect ASM`: The renderer's top palette halfwords occupied `sp+0xCC`, `sp+0xCA`, and `sp+0xC8`, and the first two palette loads were reversed.

-> `code changed`: Move the late `baseRed` and `baseGreen` declarations after `baseBlue`. Initialize `spD2` before `spD0`, then `spCE`, keeping those assignments on one physical line.

-> `correct ASM`: The palette loads use offsets `-2`, `-3`, and `-1`, followed by halfword stores at `sp+0xD0`, `sp+0xD2`, and `sp+0xCE`, respectively. The `0x138` frame and the earlier palette homes remain correct.

`incorrect ASM` -> In `func_800F7790_106740`, the green palette store `sh t8,0xe8(sp)` precedes the vertex cursor's high-half load at ROM offset `0x106950`.

-> `code changed` -> Give the green halfword a union with `s16 value` and `volatile s16 ordered` members. Assign the palette byte through `value` and subtract `0xB4` from `ordered` when calculating the green clamp.

-> `correct ASM` -> `lui a0,0x8006` at `0x106950` precedes `sh t8,0xe8(sp)` at `0x106954`. The cursor's low-half add stays after the first clamp branch at `0x106974`. All three linked clamp blocks match the ROM.


incorrect ASM -> The second texture upload in the linked renderer used addiu t7,v1,8 and sw t7,0(a2) where the target used t6. The following packet also used ori t6,t6,0x200 where the target used t9.

code changed -> For the third triangle, take the current display-list cursor in a local Gfx pointer, set the cursor to the address of the next packet, and pass the local to gSP1Triangle. Remove the two unused word declarations at the end of the renderer's local declarations to keep its 0x138-byte frame.

correct ASM -> The target addiu t6,v1,8 and sw t6,0(a2) appear at 0x1072C4 and 0x1072C8. The next packet uses ori t9,t9,0x200 at 0x1072D8. The final texture-disable command begins with the target lui t8,0xbb00 at 0x1073B4.

incorrect ASM -> The linked cosine conversion uses mfc1 a3,$f4 followed by move t3,a3. IDO assigns the narrowed cosine a save score of 7/3, so the raw conversion takes a3 first.

code changed -> Keep the existing discarded condition after halving the sine and cosine. Include both halfCos / 2 and (u16)halfCos >> 1 in its sum, then mask the sum with 0xffffu. Leave the Z scratch uninitialized until its first assignment and compare the green palette value as u8 before reading blue.

correct ASM -> The narrowed cosine has a save score of 9/3 and claims a3 before the raw conversion. The linked sequence uses mfc1 t0,$f4 and move a3,t0. The sine conversion stays mfc1 a1,$f8.

incorrect ASM -> The first vertex loads palette red into t5, green into t2, and blue into ra. The opacity literal takes t4 ahead of the blue value.

code changed -> After forming the palette row address, initialize the Z scratch before assigning green. Give blue its first definition before loading the tip colors. Add a discarded endpoint check before the fourth vertex to increase the opacity literal's live-block count.

correct ASM -> The Z scratch takes t2, leaving t3 for green. Blue is allocated before red and opacity, producing lbu t5,-6(t1), lbu t3,-5(t1), and lbu t4,-4(t1), followed by li ra,0xff. The linked function matches through the red store at 0x106A2C.
