nonmatching func_80007690_8290, 0x44

glabel func_80007690_8290
    /* 8290 80007690 3C028005 */  lui        $v0, %hi(D_80048030)
    /* 8294 80007694 24428030 */  addiu      $v0, $v0, %lo(D_80048030)
    /* 8298 80007698 904E0000 */  lbu        $t6, 0x0($v0)
    /* 829C 8000769C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 82A0 800076A0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 82A4 800076A4 3C048003 */  lui        $a0, %hi(D_80036DA4)
    /* 82A8 800076A8 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 82AC 800076AC A04F0000 */  sb         $t7, 0x0($v0)
    /* 82B0 800076B0 31E500FF */  andi       $a1, $t7, 0xFF
    /* 82B4 800076B4 0C00731B */  jal        osSyncPrintf
    /* 82B8 800076B8 24846DA4 */   addiu     $a0, $a0, %lo(D_80036DA4)
    /* 82BC 800076BC 0C006994 */  jal        func_8001A650_1B250
    /* 82C0 800076C0 24040001 */   addiu     $a0, $zero, 0x1
    /* 82C4 800076C4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 82C8 800076C8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 82CC 800076CC 03E00008 */  jr         $ra
    /* 82D0 800076D0 00000000 */   nop
endlabel func_80007690_8290
