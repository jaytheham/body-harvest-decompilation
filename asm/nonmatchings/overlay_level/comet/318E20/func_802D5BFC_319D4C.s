nonmatching func_802D5BFC_319D4C, 0x44

glabel func_802D5BFC_319D4C
    /* 319D4C 802D5BFC 3C02802E */  lui        $v0, %hi(D_802E7C3C)
    /* 319D50 802D5C00 24427C3C */  addiu      $v0, $v0, %lo(D_802E7C3C)
    /* 319D54 802D5C04 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 319D58 802D5C08 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 319D5C 802D5C0C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 319D60 802D5C10 25CFFFFF */  addiu      $t7, $t6, -0x1
    /* 319D64 802D5C14 05E10006 */  bgez       $t7, .L802D5C30_319D80
    /* 319D68 802D5C18 AC4F0000 */   sw        $t7, 0x0($v0)
    /* 319D6C 802D5C1C 0C00635F */  jal        func_80018D7C_1997C
    /* 319D70 802D5C20 240400E0 */   addiu     $a0, $zero, 0xE0
    /* 319D74 802D5C24 3C04802D */  lui        $a0, %hi(func_802D5BFC_319D4C)
    /* 319D78 802D5C28 0C001D2F */  jal        func_800074BC_80BC
    /* 319D7C 802D5C2C 24845BFC */   addiu     $a0, $a0, %lo(func_802D5BFC_319D4C)
  .L802D5C30_319D80:
    /* 319D80 802D5C30 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 319D84 802D5C34 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 319D88 802D5C38 03E00008 */  jr         $ra
    /* 319D8C 802D5C3C 00000000 */   nop
endlabel func_802D5BFC_319D4C
