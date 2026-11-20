Incorrect ASM. In the zoom case that restores cam3CC, IDO reused a saved constant and emitted the lock store without a new load of 1.

    addiu   t7,sp,0x3cc
    sw      t7,0x320(sp)
    sw      s5,0x284(sp)

-> Code changed. Give the map lock a signed state member and an unsigned raw member. In this zoom case, write 1U through the raw member.

    sp320[0] = &cam3CC;
    mapLock.bits = 1U;

-> Correct ASM shape. IDO emits a separate immediate for the lock store.

    li      t7,1
    ...
    sw      t7,0x284(sp)
