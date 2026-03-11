nonmatching func_802D5CF0_319E40, 0x58

glabel func_802D5CF0_319E40
    /* 319E40 802D5CF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 319E44 802D5CF4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 319E48 802D5CF8 24040000 */  addiu      $a0, $zero, 0x0
    /* 319E4C 802D5CFC 0C001C9B */  jal        func_8000726C_7E6C
    /* 319E50 802D5D00 2405002B */   addiu     $a1, $zero, 0x2B
    /* 319E54 802D5D04 1440000C */  bnez       $v0, .L802D5D38_319E88
    /* 319E58 802D5D08 240E0003 */   addiu     $t6, $zero, 0x3
    /* 319E5C 802D5D0C 3C018004 */  lui        $at, %hi(D_80047F9C)
    /* 319E60 802D5D10 AC2E7F9C */  sw         $t6, %lo(D_80047F9C)($at)
    /* 319E64 802D5D14 24040000 */  addiu      $a0, $zero, 0x0
    /* 319E68 802D5D18 0C001CB3 */  jal        func_800072CC_7ECC
    /* 319E6C 802D5D1C 2405002B */   addiu     $a1, $zero, 0x2B
    /* 319E70 802D5D20 240F0028 */  addiu      $t7, $zero, 0x28
    /* 319E74 802D5D24 3C01802E */  lui        $at, %hi(D_802E7C3C)
    /* 319E78 802D5D28 3C04802D */  lui        $a0, %hi(func_802D5BFC_319D4C)
    /* 319E7C 802D5D2C AC2F7C3C */  sw         $t7, %lo(D_802E7C3C)($at)
    /* 319E80 802D5D30 0C001D04 */  jal        func_80007410_8010
    /* 319E84 802D5D34 24845BFC */   addiu     $a0, $a0, %lo(func_802D5BFC_319D4C)
  .L802D5D38_319E88:
    /* 319E88 802D5D38 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 319E8C 802D5D3C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 319E90 802D5D40 03E00008 */  jr         $ra
    /* 319E94 802D5D44 00000000 */   nop
endlabel func_802D5CF0_319E40
