nonmatching func_802D6DBC_1EFACC, 0x3C

glabel func_802D6DBC_1EFACC
    /* 1EFACC 802D6DBC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EFAD0 802D6DC0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EFAD4 802D6DC4 3C01802E */  lui        $at, %hi(D_802E0FB8)
    /* 1EFAD8 802D6DC8 A4200FB8 */  sh         $zero, %lo(D_802E0FB8)($at)
    /* 1EFADC 802D6DCC 0C004D1A */  jal        func_80013468_14068
    /* 1EFAE0 802D6DD0 24040005 */   addiu     $a0, $zero, 0x5
    /* 1EFAE4 802D6DD4 3C04802D */  lui        $a0, %hi(func_802D68F4_1EF604)
    /* 1EFAE8 802D6DD8 248468F4 */  addiu      $a0, $a0, %lo(func_802D68F4_1EF604)
    /* 1EFAEC 802D6DDC 2405000B */  addiu      $a1, $zero, 0xB
    /* 1EFAF0 802D6DE0 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 1EFAF4 802D6DE4 24060001 */   addiu     $a2, $zero, 0x1
    /* 1EFAF8 802D6DE8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EFAFC 802D6DEC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EFB00 802D6DF0 03E00008 */  jr         $ra
    /* 1EFB04 802D6DF4 00000000 */   nop
endlabel func_802D6DBC_1EFACC
