nonmatching func_802D69EC_2B8E1C, 0x60

glabel func_802D69EC_2B8E1C
    /* 2B8E1C 802D69EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B8E20 802D69F0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B8E24 802D69F4 0C004D1A */  jal        func_80013468_14068
    /* 2B8E28 802D69F8 2404000E */   addiu     $a0, $zero, 0xE
    /* 2B8E2C 802D69FC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 2B8E30 802D6A00 44816000 */  mtc1       $at, $f12
    /* 2B8E34 802D6A04 24050028 */  addiu      $a1, $zero, 0x28
    /* 2B8E38 802D6A08 24060046 */  addiu      $a2, $zero, 0x46
    /* 2B8E3C 802D6A0C 0C04D742 */  jal        func_80135D08_144CB8
    /* 2B8E40 802D6A10 24070032 */   addiu     $a3, $zero, 0x32
    /* 2B8E44 802D6A14 3C018015 */  lui        $at, %hi(D_8014D17C)
    /* 2B8E48 802D6A18 3C04802D */  lui        $a0, %hi(func_802D6768_2B8B98)
    /* 2B8E4C 802D6A1C A420D17C */  sh         $zero, %lo(D_8014D17C)($at)
    /* 2B8E50 802D6A20 24846768 */  addiu      $a0, $a0, %lo(func_802D6768_2B8B98)
    /* 2B8E54 802D6A24 24050018 */  addiu      $a1, $zero, 0x18
    /* 2B8E58 802D6A28 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 2B8E5C 802D6A2C 00003025 */   or        $a2, $zero, $zero
    /* 2B8E60 802D6A30 24040000 */  addiu      $a0, $zero, 0x0
    /* 2B8E64 802D6A34 0C001CEE */  jal        func_800073B8_7FB8
    /* 2B8E68 802D6A38 24050018 */   addiu     $a1, $zero, 0x18
    /* 2B8E6C 802D6A3C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2B8E70 802D6A40 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2B8E74 802D6A44 03E00008 */  jr         $ra
    /* 2B8E78 802D6A48 00000000 */   nop
endlabel func_802D69EC_2B8E1C
