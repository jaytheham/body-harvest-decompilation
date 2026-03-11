nonmatching func_802D5BA0_1EE8B0, 0x58

glabel func_802D5BA0_1EE8B0
    /* 1EE8B0 802D5BA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EE8B4 802D5BA4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EE8B8 802D5BA8 3C04802E */  lui        $a0, %hi(D_802E0E30)
    /* 1EE8BC 802D5BAC 0C00731B */  jal        osSyncPrintf
    /* 1EE8C0 802D5BB0 24840E30 */   addiu     $a0, $a0, %lo(D_802E0E30)
    /* 1EE8C4 802D5BB4 3C01802E */  lui        $at, %hi(D_802E0FB0)
    /* 1EE8C8 802D5BB8 3C04802E */  lui        $a0, %hi(D_802E0E3C)
    /* 1EE8CC 802D5BBC A4200FB0 */  sh         $zero, %lo(D_802E0FB0)($at)
    /* 1EE8D0 802D5BC0 0C00731B */  jal        osSyncPrintf
    /* 1EE8D4 802D5BC4 24840E3C */   addiu     $a0, $a0, %lo(D_802E0E3C)
    /* 1EE8D8 802D5BC8 3C04802D */  lui        $a0, %hi(func_802D5590_1EE2A0)
    /* 1EE8DC 802D5BCC 0C001D2F */  jal        func_800074BC_80BC
    /* 1EE8E0 802D5BD0 24845590 */   addiu     $a0, $a0, %lo(func_802D5590_1EE2A0)
    /* 1EE8E4 802D5BD4 3C04802D */  lui        $a0, %hi(func_802D5ADC_1EE7EC)
    /* 1EE8E8 802D5BD8 0C001D04 */  jal        func_80007410_8010
    /* 1EE8EC 802D5BDC 24845ADC */   addiu     $a0, $a0, %lo(func_802D5ADC_1EE7EC)
    /* 1EE8F0 802D5BE0 0C001DB5 */  jal        func_800076D4_82D4
    /* 1EE8F4 802D5BE4 24040009 */   addiu     $a0, $zero, 0x9
    /* 1EE8F8 802D5BE8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EE8FC 802D5BEC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EE900 802D5BF0 03E00008 */  jr         $ra
    /* 1EE904 802D5BF4 00000000 */   nop
endlabel func_802D5BA0_1EE8B0
