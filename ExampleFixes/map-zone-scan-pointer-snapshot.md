Incorrect ASM. The inner zone scan reads the current record through the advancing pointer and stores that same pointer when the distance improves. IDO omits the target pointer copy.

    lb      ...,0(cursor)
    lb      ...,1(cursor)
    mtc1    ...

-> Code changed. Snapshot the record in the existing union after calculating the coordinate differences. Use that record for selection and advance through it in the loop condition.

    drawItem.zone = var_t2;
    /* Update the closest zone when the distance improves. */
    sp30C = drawItem.zone;
    /* At the loop test */
    } while ((var_t2 = &drawItem.zone[1], var_t0) < (zoneCount * 0x10));

-> Correct ASM order. The pointer copy returns between the signed-byte loads and the floating-point conversion. The increment remains in the backedge delay slot.

    lb      t9,0(a1)
    lb      t6,1(a1)
    move    s0,a1
    mtc1    t9,$f4
    ...
    bnez    at,a8564
     addiu  a1,s0,0x10

The target uses t2 for the cursor and a3 for the copied pointer. The scan now has no structural diff rows.
