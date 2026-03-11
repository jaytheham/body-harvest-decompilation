nonmatching func_802D5DA0_319EF0, 0x38

glabel func_802D5DA0_319EF0
    /* 319EF0 802D5DA0 240E0005 */  addiu      $t6, $zero, 0x5
    /* 319EF4 802D5DA4 3C018004 */  lui        $at, %hi(D_80047F9C)
    /* 319EF8 802D5DA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 319EFC 802D5DAC AC2E7F9C */  sw         $t6, %lo(D_80047F9C)($at)
    /* 319F00 802D5DB0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 319F04 802D5DB4 3C01802E */  lui        $at, %hi(D_802E7C3C)
    /* 319F08 802D5DB8 3C04802D */  lui        $a0, %hi(func_802D5BFC_319D4C)
    /* 319F0C 802D5DBC AC207C3C */  sw         $zero, %lo(D_802E7C3C)($at)
    /* 319F10 802D5DC0 0C001D04 */  jal        func_80007410_8010
    /* 319F14 802D5DC4 24845BFC */   addiu     $a0, $a0, %lo(func_802D5BFC_319D4C)
    /* 319F18 802D5DC8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 319F1C 802D5DCC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 319F20 802D5DD0 03E00008 */  jr         $ra
    /* 319F24 802D5DD4 00000000 */   nop
endlabel func_802D5DA0_319EF0
