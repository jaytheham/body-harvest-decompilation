Incorrect ASM in the first-frame transition in func_8009811C_A70CC. The pitch load led the block and IDO stored the transition mode before copying either angle.

    lh      t8,0x3bc(sp)
    li      t6,1
    lui     at,0x8005
    sb      t6,0x2acc(at)
    lui     at,0x8015
    li      t9,3
    sb      t9,-0x12d4(at)

-> Code changed. Copy the distance, yaw, and pitch in that C order, then save the source camera pointer. Calculate the music index first, and reset the angle within the argument expression. Reuse the stage-pointer union for the integer scratch used elsewhere to keep the original frame size.

    D_8014ED2C = 3;
    cam32C.distance = cam3B8.distance;
    cam32C.yaw = cam3B8.yaw;
    cam32C.pitch = cam3B8.pitch;
    sp324 = &cam3B8;
    /* Other transition fields */
    sp2A0 = (D_8013D3CC_14C37C[currentLevel - 1] + D_80048030) & 0xFF;
    drawItem.stage = &D_8013D3D4_14C384[sp2A0];
    func_80018D7C_1997C((D_8014ED2E = 0, drawItem.stage->music));

-> Correct ASM order. The scheduler starts with the yaw load and keeps its store ahead of the mode store, as in the target.

    lh      t6,0x3ba(sp)
    li      t9,1
    lui     at,0x8005
    sb      t9,0x2acc(at)
    lh      t9,0x3bc(sp)
    sh      t6,0x32e(sp)
    lui     at,0x8015
    li      t7,3
    lui     t6,0x8004
    lw      t6,0x7f90(t6)
    sb      t7,-0x12d4(at)
    addiu   t7,sp,0x3b8
    sh      t9,0x330(sp)
    lh      t8,0x3b8(sp)

    addu    a0,a0,t8
    lui     at,0x8015
    addiu   s3,sp,0x32c
    sh      zero,-0x12d2(at)
    lbu     a0,-0x2c29(a0)

The camera field offsets and the reset-before-music-load instruction order match. Some physical registers still differ.