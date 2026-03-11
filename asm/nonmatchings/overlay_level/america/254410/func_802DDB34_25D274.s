nonmatching func_802DDB34_25D274, 0x34

glabel func_802DDB34_25D274
    /* 25D274 802DDB34 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 25D278 802DDB38 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 25D27C 802DDB3C AFA40018 */  sw         $a0, 0x18($sp)
    /* 25D280 802DDB40 308E00FF */  andi       $t6, $a0, 0xFF
    /* 25D284 802DDB44 01C02025 */  or         $a0, $t6, $zero
    /* 25D288 802DDB48 2405007C */  addiu      $a1, $zero, 0x7C
    /* 25D28C 802DDB4C 24060012 */  addiu      $a2, $zero, 0x12
    /* 25D290 802DDB50 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 25D294 802DDB54 24070015 */   addiu     $a3, $zero, 0x15
    /* 25D298 802DDB58 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 25D29C 802DDB5C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 25D2A0 802DDB60 03E00008 */  jr         $ra
    /* 25D2A4 802DDB64 00000000 */   nop
endlabel func_802DDB34_25D274
