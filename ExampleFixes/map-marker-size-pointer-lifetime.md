Incorrect ASM. The current marker's color switch reloads its selected zone pointer before reading the size.

    sw      t9,4(v1)
    lw      s0,0x30c(sp)
    lb      t0,2(s0)

-> Code changed. Read the current marker's size in the draw call. Reuse the former size scratch for the previous marker's signed X coordinate in its own argument.

    func_800966EC_A569C(NULL, sp30C->unk0 * 256, sp30C->unk1 * 256,
                       sp30C->unk2 * D_8014ED18_Marker, 1);
    /* Later, in the previous marker call */
    (temp_t3 = ((const volatile Unk80146688 *)D_8013D528_14C4D8_Label)->unk0,
     temp_t3 * 256)

-> Correct ASM order. The size load at 0xa8d38 follows the color command, using the zone pointer already in s0.

    sw      t9,4(v1)
    lb      ...,2(s0)
