nonmatching func_802D5D48_319E98, 0x58

glabel func_802D5D48_319E98
    /* 319E98 802D5D48 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 319E9C 802D5D4C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 319EA0 802D5D50 24040000 */  addiu      $a0, $zero, 0x0
    /* 319EA4 802D5D54 0C001C9B */  jal        func_8000726C_7E6C
    /* 319EA8 802D5D58 2405002C */   addiu     $a1, $zero, 0x2C
    /* 319EAC 802D5D5C 1440000C */  bnez       $v0, .L802D5D90_319EE0
    /* 319EB0 802D5D60 240E0004 */   addiu     $t6, $zero, 0x4
    /* 319EB4 802D5D64 3C018004 */  lui        $at, %hi(D_80047F9C)
    /* 319EB8 802D5D68 AC2E7F9C */  sw         $t6, %lo(D_80047F9C)($at)
    /* 319EBC 802D5D6C 24040000 */  addiu      $a0, $zero, 0x0
    /* 319EC0 802D5D70 0C001CB3 */  jal        func_800072CC_7ECC
    /* 319EC4 802D5D74 2405002C */   addiu     $a1, $zero, 0x2C
    /* 319EC8 802D5D78 240F0028 */  addiu      $t7, $zero, 0x28
    /* 319ECC 802D5D7C 3C01802E */  lui        $at, %hi(D_802E7C3C)
    /* 319ED0 802D5D80 3C04802D */  lui        $a0, %hi(func_802D5BFC_319D4C)
    /* 319ED4 802D5D84 AC2F7C3C */  sw         $t7, %lo(D_802E7C3C)($at)
    /* 319ED8 802D5D88 0C001D04 */  jal        func_80007410_8010
    /* 319EDC 802D5D8C 24845BFC */   addiu     $a0, $a0, %lo(func_802D5BFC_319D4C)
  .L802D5D90_319EE0:
    /* 319EE0 802D5D90 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 319EE4 802D5D94 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 319EE8 802D5D98 03E00008 */  jr         $ra
    /* 319EEC 802D5D9C 00000000 */   nop
endlabel func_802D5D48_319E98
