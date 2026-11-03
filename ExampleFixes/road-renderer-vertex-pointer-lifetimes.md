# Road renderer vertex pointer lifetimes (partial)

`func_800B753C_C64EC` remains NON_MATCHING.

## Incorrect ASM

The initial renderer C did not compile because of declarations after statements. Its first compilable version lacked physical-address masks for palette and texture loads, advanced the vertex buffer by five vertices for four copies, omitted the target signed-halfword quad counter, and used a padded temporary structure. It produced a 0x13D8 frame versus target 0x1348. Source vertex pointer loads occurred after destination-pointer writes, unlike the target order.

## Code changed

Use C89 declarations, separate index/count arrays, and shared locals for both rendering phases. Use K0_TO_PHYS on palette/texture arguments, preserve unmasked vertex addresses, advance once per copied vertex, and use the normal gSP2Triangles indices. Keep the signed halfword bucket conversion and memory-backed line count. Match the signed material remainder and guard the vertex command with the remaining line count. Preserve the target quad counter. Capture each source vertex pointer before advancing the destination pointer; reload it before each copy rather than retaining one pointer for the whole quad.

## Correct ASM

Palette and texture commands now include the target physical-address masks, copied quads advance by four vertices, and the source pointer loads move before destination-pointer stores. The frame shrinks to 0x1350, eight bytes above target. The comparison score improves from 69629 to 31453; substantial scheduling, register, and stack differences remain.
