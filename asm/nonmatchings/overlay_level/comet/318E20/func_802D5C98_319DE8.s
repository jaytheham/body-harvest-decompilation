nonmatching func_802D5C98_319DE8, 0x58

glabel func_802D5C98_319DE8
    /* 319DE8 802D5C98 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 319DEC 802D5C9C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 319DF0 802D5CA0 24040000 */  addiu      $a0, $zero, 0x0
    /* 319DF4 802D5CA4 0C001C9B */  jal        func_8000726C_7E6C
    /* 319DF8 802D5CA8 2405002A */   addiu     $a1, $zero, 0x2A
    /* 319DFC 802D5CAC 1440000C */  bnez       $v0, .L802D5CE0_319E30
    /* 319E00 802D5CB0 240E0002 */   addiu     $t6, $zero, 0x2
    /* 319E04 802D5CB4 3C018004 */  lui        $at, %hi(D_80047F9C)
    /* 319E08 802D5CB8 AC2E7F9C */  sw         $t6, %lo(D_80047F9C)($at)
    /* 319E0C 802D5CBC 24040000 */  addiu      $a0, $zero, 0x0
    /* 319E10 802D5CC0 0C001CB3 */  jal        func_800072CC_7ECC
    /* 319E14 802D5CC4 2405002A */   addiu     $a1, $zero, 0x2A
    /* 319E18 802D5CC8 240F0028 */  addiu      $t7, $zero, 0x28
    /* 319E1C 802D5CCC 3C01802E */  lui        $at, %hi(D_802E7C3C)
    /* 319E20 802D5CD0 3C04802D */  lui        $a0, %hi(func_802D5BFC_319D4C)
    /* 319E24 802D5CD4 AC2F7C3C */  sw         $t7, %lo(D_802E7C3C)($at)
    /* 319E28 802D5CD8 0C001D04 */  jal        func_80007410_8010
    /* 319E2C 802D5CDC 24845BFC */   addiu     $a0, $a0, %lo(func_802D5BFC_319D4C)
  .L802D5CE0_319E30:
    /* 319E30 802D5CE0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 319E34 802D5CE4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 319E38 802D5CE8 03E00008 */  jr         $ra
    /* 319E3C 802D5CEC 00000000 */   nop
endlabel func_802D5C98_319DE8
