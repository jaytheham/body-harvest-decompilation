nonmatching func_802D5A78_1EE788, 0x64

glabel func_802D5A78_1EE788
    /* 1EE788 802D5A78 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EE78C 802D5A7C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EE790 802D5A80 3C04802E */  lui        $a0, %hi(D_802E0E10)
    /* 1EE794 802D5A84 0C00731B */  jal        osSyncPrintf
    /* 1EE798 802D5A88 24840E10 */   addiu     $a0, $a0, %lo(D_802E0E10)
    /* 1EE79C 802D5A8C 3C018016 */  lui        $at, %hi(D_801591C4)
    /* 1EE7A0 802D5A90 A42091C4 */  sh         $zero, %lo(D_801591C4)($at)
    /* 1EE7A4 802D5A94 3C01802E */  lui        $at, %hi(D_802E0FB2)
    /* 1EE7A8 802D5A98 A4200FB2 */  sh         $zero, %lo(D_802E0FB2)($at)
    /* 1EE7AC 802D5A9C 3C01802E */  lui        $at, %hi(D_802E0FB4)
    /* 1EE7B0 802D5AA0 240E000A */  addiu      $t6, $zero, 0xA
    /* 1EE7B4 802D5AA4 A42E0FB4 */  sh         $t6, %lo(D_802E0FB4)($at)
    /* 1EE7B8 802D5AA8 3C01802E */  lui        $at, %hi(D_802E0FB0)
    /* 1EE7BC 802D5AAC A4200FB0 */  sh         $zero, %lo(D_802E0FB0)($at)
    /* 1EE7C0 802D5AB0 0C004D1A */  jal        func_80013468_14068
    /* 1EE7C4 802D5AB4 24040008 */   addiu     $a0, $zero, 0x8
    /* 1EE7C8 802D5AB8 3C04802D */  lui        $a0, %hi(func_802D57F4_1EE504)
    /* 1EE7CC 802D5ABC 248457F4 */  addiu      $a0, $a0, %lo(func_802D57F4_1EE504)
    /* 1EE7D0 802D5AC0 2405000E */  addiu      $a1, $zero, 0xE
    /* 1EE7D4 802D5AC4 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 1EE7D8 802D5AC8 00003025 */   or        $a2, $zero, $zero
    /* 1EE7DC 802D5ACC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EE7E0 802D5AD0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EE7E4 802D5AD4 03E00008 */  jr         $ra
    /* 1EE7E8 802D5AD8 00000000 */   nop
endlabel func_802D5A78_1EE788
