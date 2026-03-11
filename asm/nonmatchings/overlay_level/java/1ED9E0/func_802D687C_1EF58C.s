nonmatching func_802D687C_1EF58C, 0x78

glabel func_802D687C_1EF58C
    /* 1EF58C 802D687C 00067400 */  sll        $t6, $a2, 16
    /* 1EF590 802D6880 0007C400 */  sll        $t8, $a3, 16
    /* 1EF594 802D6884 0018CC03 */  sra        $t9, $t8, 16
    /* 1EF598 802D6888 000E7C03 */  sra        $t7, $t6, 16
    /* 1EF59C 802D688C 032F4023 */  subu       $t0, $t9, $t7
    /* 1EF5A0 802D6890 01040019 */  multu      $t0, $a0
    /* 1EF5A4 802D6894 AFA7000C */  sw         $a3, 0xC($sp)
    /* 1EF5A8 802D6898 03203825 */  or         $a3, $t9, $zero
    /* 1EF5AC 802D689C AFA60008 */  sw         $a2, 0x8($sp)
    /* 1EF5B0 802D68A0 01E03025 */  or         $a2, $t7, $zero
    /* 1EF5B4 802D68A4 00004812 */  mflo       $t1
    /* 1EF5B8 802D68A8 00000000 */  nop
    /* 1EF5BC 802D68AC 00000000 */  nop
    /* 1EF5C0 802D68B0 00AF0019 */  multu      $a1, $t7
    /* 1EF5C4 802D68B4 00005012 */  mflo       $t2
    /* 1EF5C8 802D68B8 012A5821 */  addu       $t3, $t1, $t2
    /* 1EF5CC 802D68BC 00000000 */  nop
    /* 1EF5D0 802D68C0 0179001A */  div        $zero, $t3, $t9
    /* 1EF5D4 802D68C4 00001012 */  mflo       $v0
    /* 1EF5D8 802D68C8 14E00002 */  bnez       $a3, .L802D68D4_1EF5E4
    /* 1EF5DC 802D68CC 00000000 */   nop
    /* 1EF5E0 802D68D0 0007000D */  break      7
  .L802D68D4_1EF5E4:
    /* 1EF5E4 802D68D4 2401FFFF */  addiu      $at, $zero, -0x1
    /* 1EF5E8 802D68D8 14E10004 */  bne        $a3, $at, .L802D68EC_1EF5FC
    /* 1EF5EC 802D68DC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 1EF5F0 802D68E0 15610002 */  bne        $t3, $at, .L802D68EC_1EF5FC
    /* 1EF5F4 802D68E4 00000000 */   nop
    /* 1EF5F8 802D68E8 0006000D */  break      6
  .L802D68EC_1EF5FC:
    /* 1EF5FC 802D68EC 03E00008 */  jr         $ra
    /* 1EF600 802D68F0 00000000 */   nop
endlabel func_802D687C_1EF58C
