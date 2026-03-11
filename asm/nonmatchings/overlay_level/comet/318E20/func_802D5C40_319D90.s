nonmatching func_802D5C40_319D90, 0x58

glabel func_802D5C40_319D90
    /* 319D90 802D5C40 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 319D94 802D5C44 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 319D98 802D5C48 24040000 */  addiu      $a0, $zero, 0x0
    /* 319D9C 802D5C4C 0C001C9B */  jal        func_8000726C_7E6C
    /* 319DA0 802D5C50 24050029 */   addiu     $a1, $zero, 0x29
    /* 319DA4 802D5C54 1440000C */  bnez       $v0, .L802D5C88_319DD8
    /* 319DA8 802D5C58 240E0001 */   addiu     $t6, $zero, 0x1
    /* 319DAC 802D5C5C 3C018004 */  lui        $at, %hi(D_80047F9C)
    /* 319DB0 802D5C60 AC2E7F9C */  sw         $t6, %lo(D_80047F9C)($at)
    /* 319DB4 802D5C64 24040000 */  addiu      $a0, $zero, 0x0
    /* 319DB8 802D5C68 0C001CB3 */  jal        func_800072CC_7ECC
    /* 319DBC 802D5C6C 24050029 */   addiu     $a1, $zero, 0x29
    /* 319DC0 802D5C70 240F0028 */  addiu      $t7, $zero, 0x28
    /* 319DC4 802D5C74 3C01802E */  lui        $at, %hi(D_802E7C3C)
    /* 319DC8 802D5C78 3C04802D */  lui        $a0, %hi(func_802D5BFC_319D4C)
    /* 319DCC 802D5C7C AC2F7C3C */  sw         $t7, %lo(D_802E7C3C)($at)
    /* 319DD0 802D5C80 0C001D04 */  jal        func_80007410_8010
    /* 319DD4 802D5C84 24845BFC */   addiu     $a0, $a0, %lo(func_802D5BFC_319D4C)
  .L802D5C88_319DD8:
    /* 319DD8 802D5C88 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 319DDC 802D5C8C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 319DE0 802D5C90 03E00008 */  jr         $ra
    /* 319DE4 802D5C94 00000000 */   nop
endlabel func_802D5C40_319D90
