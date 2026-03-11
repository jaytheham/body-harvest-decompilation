nonmatching func_802D659C_31A6EC, 0xD4

glabel func_802D659C_31A6EC
    /* 31A6EC 802D659C 44800000 */  mtc1       $zero, $f0
    /* 31A6F0 802D65A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 31A6F4 802D65A4 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 31A6F8 802D65A8 24422B34 */  addiu      $v0, $v0, %lo(D_80052B34)
    /* 31A6FC 802D65AC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 31A700 802D65B0 44050000 */  mfc1       $a1, $f0
    /* 31A704 802D65B4 0C03ED0C */  jal        func_800FB430_10A3E0
    /* 31A708 802D65B8 8C440000 */   lw        $a0, 0x0($v0)
    /* 31A70C 802D65BC 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 31A710 802D65C0 24422B34 */  addiu      $v0, $v0, %lo(D_80052B34)
    /* 31A714 802D65C4 44800000 */  mtc1       $zero, $f0
    /* 31A718 802D65C8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 31A71C 802D65CC 24040009 */  addiu      $a0, $zero, 0x9
    /* 31A720 802D65D0 E5C00030 */  swc1       $f0, 0x30($t6)
    /* 31A724 802D65D4 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 31A728 802D65D8 E5E00034 */  swc1       $f0, 0x34($t7)
    /* 31A72C 802D65DC 8C580000 */  lw         $t8, 0x0($v0)
    /* 31A730 802D65E0 0C004D1A */  jal        func_80013468_14068
    /* 31A734 802D65E4 E7000038 */   swc1      $f0, 0x38($t8)
    /* 31A738 802D65E8 0C0B7F9A */  jal        func_802DFE68_323FB8
    /* 31A73C 802D65EC 00000000 */   nop
    /* 31A740 802D65F0 00002025 */  or         $a0, $zero, $zero
    /* 31A744 802D65F4 24050023 */  addiu      $a1, $zero, 0x23
    /* 31A748 802D65F8 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 31A74C 802D65FC 00003025 */   or        $a2, $zero, $zero
    /* 31A750 802D6600 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A754 802D6604 0C001CB3 */  jal        func_800072CC_7ECC
    /* 31A758 802D6608 2405000A */   addiu     $a1, $zero, 0xA
    /* 31A75C 802D660C 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A760 802D6610 0C001CB3 */  jal        func_800072CC_7ECC
    /* 31A764 802D6614 2405000B */   addiu     $a1, $zero, 0xB
    /* 31A768 802D6618 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A76C 802D661C 0C001CB3 */  jal        func_800072CC_7ECC
    /* 31A770 802D6620 2405000C */   addiu     $a1, $zero, 0xC
    /* 31A774 802D6624 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A778 802D6628 0C001CB3 */  jal        func_800072CC_7ECC
    /* 31A77C 802D662C 2405000D */   addiu     $a1, $zero, 0xD
    /* 31A780 802D6630 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A784 802D6634 0C001CB3 */  jal        func_800072CC_7ECC
    /* 31A788 802D6638 2405000E */   addiu     $a1, $zero, 0xE
    /* 31A78C 802D663C 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A790 802D6640 0C001CB3 */  jal        func_800072CC_7ECC
    /* 31A794 802D6644 2405000F */   addiu     $a1, $zero, 0xF
    /* 31A798 802D6648 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A79C 802D664C 0C001CB3 */  jal        func_800072CC_7ECC
    /* 31A7A0 802D6650 24050010 */   addiu     $a1, $zero, 0x10
    /* 31A7A4 802D6654 24040000 */  addiu      $a0, $zero, 0x0
    /* 31A7A8 802D6658 0C001CB3 */  jal        func_800072CC_7ECC
    /* 31A7AC 802D665C 24050011 */   addiu     $a1, $zero, 0x11
    /* 31A7B0 802D6660 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 31A7B4 802D6664 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 31A7B8 802D6668 03E00008 */  jr         $ra
    /* 31A7BC 802D666C 00000000 */   nop
endlabel func_802D659C_31A6EC
