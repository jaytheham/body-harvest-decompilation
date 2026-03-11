nonmatching func_802D7598_2B99C8, 0x4C

glabel func_802D7598_2B99C8
    /* 2B99C8 802D7598 3C028005 */  lui        $v0, %hi(buildingInstances)
    /* 2B99CC 802D759C 24420AD8 */  addiu      $v0, $v0, %lo(buildingInstances)
    /* 2B99D0 802D75A0 944E0E1A */  lhu        $t6, 0xE1A($v0)
    /* 2B99D4 802D75A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B99D8 802D75A8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B99DC 802D75AC 3C04802E */  lui        $a0, %hi(D_802E2F3C)
    /* 2B99E0 802D75B0 31CFF03F */  andi       $t7, $t6, 0xF03F
    /* 2B99E4 802D75B4 A44F0E1A */  sh         $t7, 0xE1A($v0)
    /* 2B99E8 802D75B8 0C00731B */  jal        osSyncPrintf
    /* 2B99EC 802D75BC 24842F3C */   addiu     $a0, $a0, %lo(D_802E2F3C)
    /* 2B99F0 802D75C0 3C018015 */  lui        $at, %hi(D_8014D17C)
    /* 2B99F4 802D75C4 3C04802D */  lui        $a0, %hi(func_802D7540_2B9970)
    /* 2B99F8 802D75C8 A420D17C */  sh         $zero, %lo(D_8014D17C)($at)
    /* 2B99FC 802D75CC 0C001D04 */  jal        func_80007410_8010
    /* 2B9A00 802D75D0 24847540 */   addiu     $a0, $a0, %lo(func_802D7540_2B9970)
    /* 2B9A04 802D75D4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2B9A08 802D75D8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2B9A0C 802D75DC 03E00008 */  jr         $ra
    /* 2B9A10 802D75E0 00000000 */   nop
endlabel func_802D7598_2B99C8
