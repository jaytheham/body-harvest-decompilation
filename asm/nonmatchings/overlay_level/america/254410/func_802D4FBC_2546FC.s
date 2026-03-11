nonmatching func_802D4FBC_2546FC, 0x88

glabel func_802D4FBC_2546FC
    /* 2546FC 802D4FBC 3C02802E */  lui        $v0, %hi(D_802E0E34)
    /* 254700 802D4FC0 24420E34 */  addiu      $v0, $v0, %lo(D_802E0E34)
    /* 254704 802D4FC4 844E0000 */  lh         $t6, 0x0($v0)
    /* 254708 802D4FC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 25470C 802D4FCC 24010096 */  addiu      $at, $zero, 0x96
    /* 254710 802D4FD0 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 254714 802D4FD4 A44F0000 */  sh         $t7, 0x0($v0)
    /* 254718 802D4FD8 84580000 */  lh         $t8, 0x0($v0)
    /* 25471C 802D4FDC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 254720 802D4FE0 57010015 */  bnel       $t8, $at, .L802D5038_254778
    /* 254724 802D4FE4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 254728 802D4FE8 0C001DB5 */  jal        func_800076D4_82D4
    /* 25472C 802D4FEC 24040001 */   addiu     $a0, $zero, 0x1
    /* 254730 802D4FF0 0C004D1A */  jal        func_80013468_14068
    /* 254734 802D4FF4 24040010 */   addiu     $a0, $zero, 0x10
    /* 254738 802D4FF8 00002025 */  or         $a0, $zero, $zero
    /* 25473C 802D4FFC 24050014 */  addiu      $a1, $zero, 0x14
    /* 254740 802D5000 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 254744 802D5004 00003025 */   or        $a2, $zero, $zero
    /* 254748 802D5008 24040000 */  addiu      $a0, $zero, 0x0
    /* 25474C 802D500C 0C001CB3 */  jal        func_800072CC_7ECC
    /* 254750 802D5010 2405001E */   addiu     $a1, $zero, 0x1E
    /* 254754 802D5014 3C018015 */  lui        $at, %hi(D_801493E0)
    /* 254758 802D5018 A42093E0 */  sh         $zero, %lo(D_801493E0)($at)
    /* 25475C 802D501C 3C018005 */  lui        $at, %hi(D_8004816C)
    /* 254760 802D5020 0C0B5464 */  jal        func_802D5190_2548D0
    /* 254764 802D5024 A420816C */   sh        $zero, %lo(D_8004816C)($at)
    /* 254768 802D5028 3C04802D */  lui        $a0, %hi(func_802D4FBC_2546FC)
    /* 25476C 802D502C 0C001D2F */  jal        func_800074BC_80BC
    /* 254770 802D5030 24844FBC */   addiu     $a0, $a0, %lo(func_802D4FBC_2546FC)
    /* 254774 802D5034 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D5038_254778:
    /* 254778 802D5038 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 25477C 802D503C 03E00008 */  jr         $ra
    /* 254780 802D5040 00000000 */   nop
endlabel func_802D4FBC_2546FC
