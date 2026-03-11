nonmatching func_800050C4_5CC4, 0x4C

glabel func_800050C4_5CC4
    /* 5CC4 800050C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 5CC8 800050C8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 5CCC 800050CC 3C048007 */  lui        $a0, %hi(D_8006A8D0)
    /* 5CD0 800050D0 3C058007 */  lui        $a1, %hi(D_80068038)
    /* 5CD4 800050D4 24A58038 */  addiu      $a1, $a1, %lo(D_80068038)
    /* 5CD8 800050D8 2484A8D0 */  addiu      $a0, $a0, %lo(D_8006A8D0)
    /* 5CDC 800050DC 0C006E9C */  jal        osRecvMesg
    /* 5CE0 800050E0 24060001 */   addiu     $a2, $zero, 0x1
    /* 5CE4 800050E4 3C048004 */  lui        $a0, %hi(D_80047F93)
    /* 5CE8 800050E8 0C004785 */  jal        func_80011E14_12A14
    /* 5CEC 800050EC 90847F93 */   lbu       $a0, %lo(D_80047F93)($a0)
    /* 5CF0 800050F0 0C001332 */  jal        func_80004CC8_58C8
    /* 5CF4 800050F4 00000000 */   nop
    /* 5CF8 800050F8 0C00134E */  jal        func_80004D38_5938
    /* 5CFC 800050FC 00000000 */   nop
    /* 5D00 80005100 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 5D04 80005104 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 5D08 80005108 03E00008 */  jr         $ra
    /* 5D0C 8000510C 00000000 */   nop
endlabel func_800050C4_5CC4
