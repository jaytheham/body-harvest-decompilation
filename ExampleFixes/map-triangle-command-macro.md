`incorrect ASM`: The handwritten triangle command in `func_80095D4C_A4CFC` materialized the payload with `addiu t9,zero,0x204` and the opcode with `lui t6,0xBF00`.

-> `code changed`: Emit the command with `gSP1Triangle(D_8005BB2C++, 0, 1, 2, 0)`.

-> `correct ASM`: The immediate loads use the target registers in `addiu t6,zero,0x204` and `lui t9,0xBF00`.

`incorrect ASM`: With the packet-only alias for the first vertex and three consecutive display-list macros, IDO loads the first vertex into `v0` and uses `v1` for blue and alpha. Eighteen words differ only by those two registers.

-> `code changed`: Between `gSPVertex` and `gSP1Triangle`, add the empty conditions `if (green) {}` and `if (red) {}` in that order.

-> `correct ASM`: The first vertex loads with `lw v1,0(t4)`, blue loads with `lbu v0,0x13(sp)`, and alpha uses `addiu v0,zero,0xFF`. The cursor address still uses `lui t0` and `addiu t0,t0,lo` interleaved with the alpha stores. Both conditions disappear from the emitted instructions and all 111 words match. Removing either condition leaves 12 differing words.
