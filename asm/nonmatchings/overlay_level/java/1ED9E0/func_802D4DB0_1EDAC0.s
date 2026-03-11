nonmatching func_802D4DB0_1EDAC0, 0x84

glabel func_802D4DB0_1EDAC0
    /* 1EDAC0 802D4DB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EDAC4 802D4DB4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EDAC8 802D4DB8 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1EDACC 802D4DBC AFA5001C */  sw         $a1, 0x1C($sp)
    /* 1EDAD0 802D4DC0 AFA60020 */  sw         $a2, 0x20($sp)
    /* 1EDAD4 802D4DC4 AFA70024 */  sw         $a3, 0x24($sp)
    /* 1EDAD8 802D4DC8 24050001 */  addiu      $a1, $zero, 0x1
    /* 1EDADC 802D4DCC 0C0305ED */  jal        func_800C17B4_D0764
    /* 1EDAE0 802D4DD0 2404000D */   addiu     $a0, $zero, 0xD
    /* 1EDAE4 802D4DD4 00022400 */  sll        $a0, $v0, 16
    /* 1EDAE8 802D4DD8 00047403 */  sra        $t6, $a0, 16
    /* 1EDAEC 802D4DDC 2401FFFD */  addiu      $at, $zero, -0x3
    /* 1EDAF0 802D4DE0 1041000F */  beq        $v0, $at, .L802D4E20_1EDB30
    /* 1EDAF4 802D4DE4 01C02025 */   or        $a0, $t6, $zero
    /* 1EDAF8 802D4DE8 000278C0 */  sll        $t7, $v0, 3
    /* 1EDAFC 802D4DEC 01E27823 */  subu       $t7, $t7, $v0
    /* 1EDB00 802D4DF0 3C188015 */  lui        $t8, %hi(D_80154318)
    /* 1EDB04 802D4DF4 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* 1EDB08 802D4DF8 000F7880 */  sll        $t7, $t7, 2
    /* 1EDB0C 802D4DFC 01F81821 */  addu       $v1, $t7, $t8
    /* 1EDB10 802D4E00 87B90026 */  lh         $t9, 0x26($sp)
    /* 1EDB14 802D4E04 87A8001A */  lh         $t0, 0x1A($sp)
    /* 1EDB18 802D4E08 87A9001E */  lh         $t1, 0x1E($sp)
    /* 1EDB1C 802D4E0C 87AA0022 */  lh         $t2, 0x22($sp)
    /* 1EDB20 802D4E10 A4790002 */  sh         $t9, 0x2($v1)
    /* 1EDB24 802D4E14 A4680008 */  sh         $t0, 0x8($v1)
    /* 1EDB28 802D4E18 A469000A */  sh         $t1, 0xA($v1)
    /* 1EDB2C 802D4E1C A46A000C */  sh         $t2, 0xC($v1)
  .L802D4E20_1EDB30:
    /* 1EDB30 802D4E20 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EDB34 802D4E24 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EDB38 802D4E28 00801025 */  or         $v0, $a0, $zero
    /* 1EDB3C 802D4E2C 03E00008 */  jr         $ra
    /* 1EDB40 802D4E30 00000000 */   nop
endlabel func_802D4DB0_1EDAC0
