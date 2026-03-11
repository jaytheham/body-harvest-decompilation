nonmatching func_802D77BC_2B9BEC, 0x5C

glabel func_802D77BC_2B9BEC
    /* 2B9BEC 802D77BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B9BF0 802D77C0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B9BF4 802D77C4 0C004D1A */  jal        func_80013468_14068
    /* 2B9BF8 802D77C8 2404000C */   addiu     $a0, $zero, 0xC
    /* 2B9BFC 802D77CC 3C028005 */  lui        $v0, %hi(buildingInstances)
    /* 2B9C00 802D77D0 24420AD8 */  addiu      $v0, $v0, %lo(buildingInstances)
    /* 2B9C04 802D77D4 944F0E1A */  lhu        $t7, 0xE1A($v0)
    /* 2B9C08 802D77D8 240E006E */  addiu      $t6, $zero, 0x6E
    /* 2B9C0C 802D77DC A04E0E22 */  sb         $t6, 0xE22($v0)
    /* 2B9C10 802D77E0 31F8F03F */  andi       $t8, $t7, 0xF03F
    /* 2B9C14 802D77E4 37190400 */  ori        $t9, $t8, 0x400
    /* 2B9C18 802D77E8 A4590E1A */  sh         $t9, 0xE1A($v0)
    /* 2B9C1C 802D77EC 3C018015 */  lui        $at, %hi(D_8014D17C)
    /* 2B9C20 802D77F0 3C04802D */  lui        $a0, %hi(func_802D75E4_2B9A14)
    /* 2B9C24 802D77F4 A420D17C */  sh         $zero, %lo(D_8014D17C)($at)
    /* 2B9C28 802D77F8 0C001D04 */  jal        func_80007410_8010
    /* 2B9C2C 802D77FC 248475E4 */   addiu     $a0, $a0, %lo(func_802D75E4_2B9A14)
    /* 2B9C30 802D7800 0C0B5DA7 */  jal        func_802D769C_2B9ACC
    /* 2B9C34 802D7804 00000000 */   nop
    /* 2B9C38 802D7808 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2B9C3C 802D780C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2B9C40 802D7810 03E00008 */  jr         $ra
    /* 2B9C44 802D7814 00000000 */   nop
endlabel func_802D77BC_2B9BEC
