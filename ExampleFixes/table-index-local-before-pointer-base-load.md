Incorrect ASM in func_8007568C_15D74C. The room property byte was copied to a local first and the masked index was written inside the subscript, so IDO loaded the table pointer before it started the index.

    lbu     t2,0x2c(s0)
    lw      t7,%lo(D_800E65C4)(t7)
    andi    t8,t2,0xfc
    sra     t9,t8,0x2
    sll     t4,t9,0x2
    addu    t5,t7,t4

-> Code changed. Assign the masked index to its own local straight from the struct field, then subscript the table with that local.

    paletteIndex = (entry->unk2C & 0xFC) >> 2;
    textureOffset = D_800E65C4[paletteIndex];

-> Correct ASM. The index is finished before the table pointer is loaded, and the temporary registers that follow fall into the target order.

    lbu     t2,0x2c(s0)
    andi    t7,t2,0xfc
    sra     t8,t7,0x2
    lw      t9,%lo(D_800E65C4)(t9)
    sll     t4,t8,0x2
    addu    t5,t9,t4

Copying the byte to a local and reassigning that local (`r = entry->unk2C; r = (r & 0xFC) >> 2;`) gives the same instruction order, but the byte lands in `t0` instead of `t2`.

The same function passes the view angle to func_8007C428_1644E8 as `(u16)((s32)((u32)(s32)(angle) << 16) >> 16)`, the form func_80074FF0_15D0B0 uses. A plain `(u16)(s32)` cast or `& 0xFFFF` loads the last argument (`li 0x238e`) before the first stack argument is stored instead of after the third.
