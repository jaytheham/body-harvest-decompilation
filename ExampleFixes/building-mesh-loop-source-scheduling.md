`incorrect ASM`

In `func_80120D6C_12FD1C`, the draft emitted a 4-by-4 mesh, used `add.d` for the amplitude-two expression, and loaded the vertex pointer straight into s0. With the corrected loop body, separate initialization lines still placed the loop-count immediate before the two global-address LUIs and the coordinate setup before their ADDIUs.

-> `code changed`

Use descending do/while postdecrement loops to emit 25 vertices and `D_8005BB34++` to retain the v0-to-s0 copy. Spell amplitudes as integer `2` and `6` in the double expressions. Reuse the inner counter for the outer counter's old value, keep its decrement and both row updates on one source line, and retain a discarded row-offset check to match its saved-register allocation. Put `count = 4; zOffset = 0x50; tcY = 0; do {` on one source line.

-> `correct ASM`

The amplitude uses `mul.d`, the vertex pointer moves from v0 to s0, and the 5-by-5 mesh loop matches. The LUIs precede `li t6,4`; both address ADDIUs precede row initialization. The outer latch branches on the old counter and stores its decrement in the delay slot. Both US and EU ROM checksum builds pass.
