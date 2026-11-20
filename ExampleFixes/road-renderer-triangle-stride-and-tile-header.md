`incorrect ASM` In `func_800B753C_C64EC`, IDO strength-reduced the triangle loop test to a two-byte index, with `sll s6,s5,1` for the limit and an increment of two in the back edge.

-> `code changed` Give the triangle pass its own word-sized quad index. Index the current batch through `&indices[group][rowOffset]`, spell the triangle vertices as `quad * 4` plus their individual offsets, and end the loop with `quad != run`.

-> `correct ASM` The compiler uses the last vertex encoded in the triangle command for the loop test. The limit is `(run << 3) + 6`, and the back edge tests an index that advances by eight.

`incorrect ASM` Assembling the static tile-header fields in separate bitwise expressions hoisted `lui ra,0xF548` and applied the line-width bits with a separate `ori` after masking the texture-memory offset.

-> `code changed` Combine the static CI8 tile fields and line width in the single header operand `0xF5480800U`, and OR it with `_SHIFTL((rawMode % 2) << 7, 0, 9)`.

-> `correct ASM` IDO emits `lui at,0xF548` and `ori at,at,0x800` together in the loop, followed by the texture-memory calculation and one OR with the header.

`incorrect ASM` The remaining batch count used `lh` and `sh` at `sp+0x118`, two bytes above its target stack slot.

-> `code changed` Declare `s16 lineCount[2]` immediately after the bucket halfword and access `lineCount[1]`.

-> `correct ASM` The count loads and stores use `sp+0x116` in both passes. The function retains its `0x1348` stack frame.

`incorrect ASM` In `func_800B753C_C64EC`, the bucket reset used `addiu v1,sp,0x11c`, and display-list packets loaded through `lw v0,0(s4)`.

-> `code changed` Add a single discarded comparison using the draw-entry pointer in both triangle loops. Keeping the pointer references in one expression raised its IDO save priority from 4000 to 6666.67, above the packet load's 6324.25.

-> `correct ASM` The bucket cursor starts with `addiu v0,sp,0x11c`, and the packets load through `lw v1,0(s4)` in both passes.

`incorrect ASM` Vertex-copy pointer loads used `lw ...,0(a2)`.

-> `code changed` Assign `quad = rowOffset << 1` before the vertex index load, then access `indices[group][i + (quad >> 1)]`. Reuse the word-sized quad local that the triangle loop resets.

-> `correct ASM` Vertex-copy pointer loads use `lw ...,0(a1)`, with the original `0x1348` stack frame and function length.

`incorrect ASM` In `func_800B753C_C64EC`, the texture mode's `lbu` and signed `bgez` used `t3` in the collection and draw loops.

-> `code changed` Reuse the signed halfword `run` for the mode during texture grouping. After vertex upload, copy the batch length from `run` into the word-sized `rawMode` local, then reuse `run` for the mode in each draw loop.

-> `correct ASM` The texture mode loads and sign tests use `s3` in both collection loops and both draw loops.

`incorrect ASM` Both loop bounds used `addiu s7,s7,0x6`. The road table base loaded into `s5`. Retained Ucode showed that the empty `quad == rawMode` check created another encoded bound that occupied `s6` until AS1 removed the check.

-> `code changed` Copy the first triangle loop's count into a word-sized `drawLimit`, use `quad != drawLimit` at its back edge, and remove the first loop's empty comparison.

-> `correct ASM` Both loop bounds use `addiu s6,s6,0x6`, and the road table base loads with `lui s7,0x8015` and `addiu s7,s7,-0x758`.

`incorrect ASM` The first comparison of the batch count in each pass loaded `sp+0x116` into a compiler temporary and used that temporary in `slti`.

-> `code changed` Give the road entry carrier a second union member, `s32 remaining`. Load `lineCount[1]` into that member for the clamp before the carrier holds any road entry pointer.

-> `correct ASM` Both passes load the comparison with `lh v0,0x116(sp)` and test it with `slti at,v0,0x9`.

`incorrect ASM` The shared road iterator advanced with `addiu t1,t1,0x1` in the texture grouping loops.

-> `code changed` Use the row offset directly in the first vertex scan's index, `indices[group][i++ + rowOffset]`, while keeping the source pointer alias for vertex records `0x12` and `0x13`.

-> `correct ASM` The grouping loops advance with `addiu a3,a3,0x1`, and the two-quad upload loop uses `a3` for its iterator.

`incorrect ASM` The second upload loop used a positive displacement for the paired halfword load and branched to the pointer setup before the next pair.

-> `code changed` Reuse `i` for the second upload loop and read `indices[group][rowOffset + i]` directly.

-> `correct ASM` The paired halfword load uses displacement `-2`, and the loop branch targets the first halfword load of the next pair at ROM offset `0xC70A0`.
