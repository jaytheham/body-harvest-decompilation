nonmatching func_802D6840_1EF550, 0x3C

glabel func_802D6840_1EF550
    /* 1EF550 802D6840 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EF554 802D6844 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EF558 802D6848 3C01802E */  lui        $at, %hi(D_802E0FB6)
    /* 1EF55C 802D684C A4200FB6 */  sh         $zero, %lo(D_802E0FB6)($at)
    /* 1EF560 802D6850 0C004D1A */  jal        func_80013468_14068
    /* 1EF564 802D6854 24040007 */   addiu     $a0, $zero, 0x7
    /* 1EF568 802D6858 3C04802D */  lui        $a0, %hi(func_802D6338_1EF048)
    /* 1EF56C 802D685C 24846338 */  addiu      $a0, $a0, %lo(func_802D6338_1EF048)
    /* 1EF570 802D6860 2405000D */  addiu      $a1, $zero, 0xD
    /* 1EF574 802D6864 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 1EF578 802D6868 00003025 */   or        $a2, $zero, $zero
    /* 1EF57C 802D686C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EF580 802D6870 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EF584 802D6874 03E00008 */  jr         $ra
    /* 1EF588 802D6878 00000000 */   nop
endlabel func_802D6840_1EF550
