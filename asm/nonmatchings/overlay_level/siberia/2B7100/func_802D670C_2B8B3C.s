nonmatching func_802D670C_2B8B3C, 0x5C

glabel func_802D670C_2B8B3C
    /* 2B8B3C 802D670C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B8B40 802D6710 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B8B44 802D6714 0C004D1A */  jal        func_80013468_14068
    /* 2B8B48 802D6718 2404000A */   addiu     $a0, $zero, 0xA
    /* 2B8B4C 802D671C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 2B8B50 802D6720 44816000 */  mtc1       $at, $f12
    /* 2B8B54 802D6724 24050028 */  addiu      $a1, $zero, 0x28
    /* 2B8B58 802D6728 24060046 */  addiu      $a2, $zero, 0x46
    /* 2B8B5C 802D672C 0C04D742 */  jal        func_80135D08_144CB8
    /* 2B8B60 802D6730 24070032 */   addiu     $a3, $zero, 0x32
    /* 2B8B64 802D6734 3C018015 */  lui        $at, %hi(D_8014D17C)
    /* 2B8B68 802D6738 A420D17C */  sh         $zero, %lo(D_8014D17C)($at)
    /* 2B8B6C 802D673C 00002025 */  or         $a0, $zero, $zero
    /* 2B8B70 802D6740 24050017 */  addiu      $a1, $zero, 0x17
    /* 2B8B74 802D6744 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 2B8B78 802D6748 00003025 */   or        $a2, $zero, $zero
    /* 2B8B7C 802D674C 3C04802D */  lui        $a0, %hi(func_802D6674_2B8AA4)
    /* 2B8B80 802D6750 0C001D04 */  jal        func_80007410_8010
    /* 2B8B84 802D6754 24846674 */   addiu     $a0, $a0, %lo(func_802D6674_2B8AA4)
    /* 2B8B88 802D6758 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2B8B8C 802D675C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2B8B90 802D6760 03E00008 */  jr         $ra
    /* 2B8B94 802D6764 00000000 */   nop
endlabel func_802D670C_2B8B3C
