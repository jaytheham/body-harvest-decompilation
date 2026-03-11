nonmatching func_8007FBD0_167C90, 0xA4

glabel func_8007FBD0_167C90
    /* 167C90 8007FBD0 3C01800E */  lui        $at, %hi(D_800E747C)
    /* 167C94 8007FBD4 A420747C */  sh         $zero, %lo(D_800E747C)($at)
    /* 167C98 8007FBD8 3C01800E */  lui        $at, %hi(D_800E73AC)
    /* 167C9C 8007FBDC 240E0001 */  addiu      $t6, $zero, 0x1
    /* 167CA0 8007FBE0 AC2E73AC */  sw         $t6, %lo(D_800E73AC)($at)
    /* 167CA4 8007FBE4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 167CA8 8007FBE8 44812000 */  mtc1       $at, $f4
    /* 167CAC 8007FBEC 3C01800E */  lui        $at, %hi(D_800E73B0)
    /* 167CB0 8007FBF0 3C02800E */  lui        $v0, %hi(D_800E73DF)
    /* 167CB4 8007FBF4 E42473B0 */  swc1       $f4, %lo(D_800E73B0)($at)
    /* 167CB8 8007FBF8 3C01800E */  lui        $at, %hi(D_800E73D4)
    /* 167CBC 8007FBFC AC2073D4 */  sw         $zero, %lo(D_800E73D4)($at)
    /* 167CC0 8007FC00 3C01800E */  lui        $at, %hi(D_800E7398)
    /* 167CC4 8007FC04 AC207398 */  sw         $zero, %lo(D_800E7398)($at)
    /* 167CC8 8007FC08 244273DF */  addiu      $v0, $v0, %lo(D_800E73DF)
    /* 167CCC 8007FC0C 24180001 */  addiu      $t8, $zero, 0x1
    /* 167CD0 8007FC10 A0580000 */  sb         $t8, 0x0($v0)
    /* 167CD4 8007FC14 3C01800E */  lui        $at, %hi(D_800E73DE)
    /* 167CD8 8007FC18 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 167CDC 8007FC1C A03873DE */  sb         $t8, %lo(D_800E73DE)($at)
    /* 167CE0 8007FC20 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 167CE4 8007FC24 3C018004 */  lui        $at, %hi(D_80047F80)
    /* 167CE8 8007FC28 0C020234 */  jal        func_800808D0_168990
    /* 167CEC 8007FC2C A0207F80 */   sb        $zero, %lo(D_80047F80)($at)
    /* 167CF0 8007FC30 3C01800E */  lui        $at, %hi(D_800E742C)
    /* 167CF4 8007FC34 AC20742C */  sw         $zero, %lo(D_800E742C)($at)
    /* 167CF8 8007FC38 3C01800E */  lui        $at, %hi(D_800E7480)
    /* 167CFC 8007FC3C AC207480 */  sw         $zero, %lo(D_800E7480)($at)
    /* 167D00 8007FC40 3C01800E */  lui        $at, %hi(D_800E7390)
    /* 167D04 8007FC44 A4207390 */  sh         $zero, %lo(D_800E7390)($at)
    /* 167D08 8007FC48 3C01800E */  lui        $at, %hi(D_800E739C)
    /* 167D0C 8007FC4C AC20739C */  sw         $zero, %lo(D_800E739C)($at)
    /* 167D10 8007FC50 3C01800E */  lui        $at, %hi(D_800E73A4)
    /* 167D14 8007FC54 AC2073A4 */  sw         $zero, %lo(D_800E73A4)($at)
    /* 167D18 8007FC58 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 167D1C 8007FC5C 3C01800E */  lui        $at, %hi(D_800E73A0)
    /* 167D20 8007FC60 AC2073A0 */  sw         $zero, %lo(D_800E73A0)($at)
    /* 167D24 8007FC64 3C01800E */  lui        $at, %hi(D_800E73A8)
    /* 167D28 8007FC68 A42073A8 */  sh         $zero, %lo(D_800E73A8)($at)
    /* 167D2C 8007FC6C 03E00008 */  jr         $ra
    /* 167D30 8007FC70 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_8007FBD0_167C90
