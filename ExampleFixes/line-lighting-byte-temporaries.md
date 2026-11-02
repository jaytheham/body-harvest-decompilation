`incorrect ASM`: `func_800B1A68_C0A18` retained extra endpoint aliases, spilled the color pointer early, and narrowed integer loop coordinates at different points.

-> `code changed`: Read endpoint struct fields directly, use two unsigned word locals for the fractional bytes, and keep separate signed-byte loop coordinates. Pack the four active halfword locals before the fractional words, removing unused endpoint-copy declarations.

-> `correct ASM`: The initial setup, signed-byte coordinate copies, 0x70 frame, quarter-color homes at 0x6c-0x6e, and stride home at 0x28 match.

`incorrect ASM`: Red-channel additions chose different temporary registers, and the center-pixel blue load followed the red store.

-> `code changed`: Narrow each red sum explicitly to `u16` before its byte-field assignment.

-> `correct ASM`: UGEN elides the redundant narrowing instruction while retaining its temporary-allocation effects; all color updates, including the center-pixel load/store schedule, match.

`incorrect ASM`: Loop-tail error arithmetic preceded coordinate updates and narrowed their results in the opposite order.

-> `code changed`: Update the coordinate first, put the error update on a separate source line, and narrow the doubled error delta to `s8` inside the final signed-byte sum. Narrow the cached stride to `s8` in both negative-error branches.

-> `correct ASM`: `subu; sll; addu coordinate; addu error; sll coordinate; sll error; sra coordinate; b; sra error` and the final alternate-branch shift temporary match exactly. The full native US ROM checksum passes.