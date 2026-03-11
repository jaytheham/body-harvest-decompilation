nonmatching func_80011B60_12760, 0x88

glabel func_80011B60_12760
    /* 12760 80011B60 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 12764 80011B64 AFA40020 */  sw         $a0, 0x20($sp)
    /* 12768 80011B68 93A20023 */  lbu        $v0, 0x23($sp)
    /* 1276C 80011B6C 3C188003 */  lui        $t8, %hi(D_80031BDC)
    /* 12770 80011B70 27181BDC */  addiu      $t8, $t8, %lo(D_80031BDC)
    /* 12774 80011B74 3C198003 */  lui        $t9, %hi(D_80031BF0)
    /* 12778 80011B78 00027880 */  sll        $t7, $v0, 2
    /* 1277C 80011B7C 01F83821 */  addu       $a3, $t7, $t8
    /* 12780 80011B80 27391BF0 */  addiu      $t9, $t9, %lo(D_80031BF0)
    /* 12784 80011B84 8CE3FFFC */  lw         $v1, -0x4($a3)
    /* 12788 80011B88 3C098007 */  lui        $t1, %hi(D_8006AA70)
    /* 1278C 80011B8C 01F94021 */  addu       $t0, $t7, $t9
    /* 12790 80011B90 8D0AFFFC */  lw         $t2, -0x4($t0)
    /* 12794 80011B94 2529AA70 */  addiu      $t1, $t1, %lo(D_8006AA70)
    /* 12798 80011B98 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1279C 80011B9C AFA50024 */  sw         $a1, 0x24($sp)
    /* 127A0 80011BA0 AD250000 */  sw         $a1, 0x0($t1)
    /* 127A4 80011BA4 00A02025 */  or         $a0, $a1, $zero
    /* 127A8 80011BA8 AFA80018 */  sw         $t0, 0x18($sp)
    /* 127AC 80011BAC AFA7001C */  sw         $a3, 0x1C($sp)
    /* 127B0 80011BB0 01E01025 */  or         $v0, $t7, $zero
    /* 127B4 80011BB4 00602825 */  or         $a1, $v1, $zero
    /* 127B8 80011BB8 0C00407C */  jal        func_800101F0_10DF0
    /* 127BC 80011BBC 01433023 */   subu      $a2, $t2, $v1
    /* 127C0 80011BC0 8FA7001C */  lw         $a3, 0x1C($sp)
    /* 127C4 80011BC4 8FA80018 */  lw         $t0, 0x18($sp)
    /* 127C8 80011BC8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 127CC 80011BCC 8CECFFFC */  lw         $t4, -0x4($a3)
    /* 127D0 80011BD0 8D0BFFFC */  lw         $t3, -0x4($t0)
    /* 127D4 80011BD4 8FAE0024 */  lw         $t6, 0x24($sp)
    /* 127D8 80011BD8 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 127DC 80011BDC 016C6823 */  subu       $t5, $t3, $t4
    /* 127E0 80011BE0 03E00008 */  jr         $ra
    /* 127E4 80011BE4 01AE1021 */   addu      $v0, $t5, $t6
endlabel func_80011B60_12760
