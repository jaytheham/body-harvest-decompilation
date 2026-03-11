nonmatching func_800B0A88_BFA38, 0x10C

glabel func_800B0A88_BFA38
    /* BFA38 800B0A88 3C0E8005 */  lui        $t6, %hi(D_80052A94)
    /* BFA3C 800B0A8C 8DCE2A94 */  lw         $t6, %lo(D_80052A94)($t6)
    /* BFA40 800B0A90 00057A40 */  sll        $t7, $a1, 9
    /* BFA44 800B0A94 0004C840 */  sll        $t9, $a0, 1
    /* BFA48 800B0A98 01CFC021 */  addu       $t8, $t6, $t7
    /* BFA4C 800B0A9C 03191821 */  addu       $v1, $t8, $t9
    /* BFA50 800B0AA0 94660000 */  lhu        $a2, 0x0($v1)
    /* BFA54 800B0AA4 94670002 */  lhu        $a3, 0x2($v1)
    /* BFA58 800B0AA8 30C9003F */  andi       $t1, $a2, 0x3F
    /* BFA5C 800B0AAC 30EA003F */  andi       $t2, $a3, 0x3F
    /* BFA60 800B0AB0 012A1023 */  subu       $v0, $t1, $t2
    /* BFA64 800B0AB4 00024023 */  negu       $t0, $v0
    /* BFA68 800B0AB8 0102082A */  slt        $at, $t0, $v0
    /* BFA6C 800B0ABC 01403825 */  or         $a3, $t2, $zero
    /* BFA70 800B0AC0 10200003 */  beqz       $at, .L800B0AD0_BFA80
    /* BFA74 800B0AC4 01203025 */   or        $a2, $t1, $zero
    /* BFA78 800B0AC8 10000002 */  b          .L800B0AD4_BFA84
    /* BFA7C 800B0ACC 00402025 */   or        $a0, $v0, $zero
  .L800B0AD0_BFA80:
    /* BFA80 800B0AD0 01002025 */  or         $a0, $t0, $zero
  .L800B0AD4_BFA84:
    /* BFA84 800B0AD4 2881000A */  slti       $at, $a0, 0xA
    /* BFA88 800B0AD8 54200004 */  bnel       $at, $zero, .L800B0AEC_BFA9C
    /* BFA8C 800B0ADC 94650202 */   lhu       $a1, 0x202($v1)
    /* BFA90 800B0AE0 03E00008 */  jr         $ra
    /* BFA94 800B0AE4 24020001 */   addiu     $v0, $zero, 0x1
    /* BFA98 800B0AE8 94650202 */  lhu        $a1, 0x202($v1)
  .L800B0AEC_BFA9C:
    /* BFA9C 800B0AEC 30AB003F */  andi       $t3, $a1, 0x3F
    /* BFAA0 800B0AF0 00EB1023 */  subu       $v0, $a3, $t3
    /* BFAA4 800B0AF4 00024023 */  negu       $t0, $v0
    /* BFAA8 800B0AF8 0102082A */  slt        $at, $t0, $v0
    /* BFAAC 800B0AFC 10200003 */  beqz       $at, .L800B0B0C_BFABC
    /* BFAB0 800B0B00 01602825 */   or        $a1, $t3, $zero
    /* BFAB4 800B0B04 10000002 */  b          .L800B0B10_BFAC0
    /* BFAB8 800B0B08 00402025 */   or        $a0, $v0, $zero
  .L800B0B0C_BFABC:
    /* BFABC 800B0B0C 01002025 */  or         $a0, $t0, $zero
  .L800B0B10_BFAC0:
    /* BFAC0 800B0B10 2881000A */  slti       $at, $a0, 0xA
    /* BFAC4 800B0B14 54200004 */  bnel       $at, $zero, .L800B0B28_BFAD8
    /* BFAC8 800B0B18 94670200 */   lhu       $a3, 0x200($v1)
    /* BFACC 800B0B1C 03E00008 */  jr         $ra
    /* BFAD0 800B0B20 24020001 */   addiu     $v0, $zero, 0x1
    /* BFAD4 800B0B24 94670200 */  lhu        $a3, 0x200($v1)
  .L800B0B28_BFAD8:
    /* BFAD8 800B0B28 30EC003F */  andi       $t4, $a3, 0x3F
    /* BFADC 800B0B2C 00AC1023 */  subu       $v0, $a1, $t4
    /* BFAE0 800B0B30 00024023 */  negu       $t0, $v0
    /* BFAE4 800B0B34 0102082A */  slt        $at, $t0, $v0
    /* BFAE8 800B0B38 10200003 */  beqz       $at, .L800B0B48_BFAF8
    /* BFAEC 800B0B3C 01803825 */   or        $a3, $t4, $zero
    /* BFAF0 800B0B40 10000002 */  b          .L800B0B4C_BFAFC
    /* BFAF4 800B0B44 00402025 */   or        $a0, $v0, $zero
  .L800B0B48_BFAF8:
    /* BFAF8 800B0B48 01002025 */  or         $a0, $t0, $zero
  .L800B0B4C_BFAFC:
    /* BFAFC 800B0B4C 2881000A */  slti       $at, $a0, 0xA
    /* BFB00 800B0B50 14200003 */  bnez       $at, .L800B0B60_BFB10
    /* BFB04 800B0B54 00E61023 */   subu      $v0, $a3, $a2
    /* BFB08 800B0B58 03E00008 */  jr         $ra
    /* BFB0C 800B0B5C 24020001 */   addiu     $v0, $zero, 0x1
  .L800B0B60_BFB10:
    /* BFB10 800B0B60 00024023 */  negu       $t0, $v0
    /* BFB14 800B0B64 0102082A */  slt        $at, $t0, $v0
    /* BFB18 800B0B68 10200003 */  beqz       $at, .L800B0B78_BFB28
    /* BFB1C 800B0B6C 01002025 */   or        $a0, $t0, $zero
    /* BFB20 800B0B70 10000001 */  b          .L800B0B78_BFB28
    /* BFB24 800B0B74 00402025 */   or        $a0, $v0, $zero
  .L800B0B78_BFB28:
    /* BFB28 800B0B78 2881000A */  slti       $at, $a0, 0xA
    /* BFB2C 800B0B7C 14200003 */  bnez       $at, .L800B0B8C_BFB3C
    /* BFB30 800B0B80 00001025 */   or        $v0, $zero, $zero
    /* BFB34 800B0B84 03E00008 */  jr         $ra
    /* BFB38 800B0B88 24020001 */   addiu     $v0, $zero, 0x1
  .L800B0B8C_BFB3C:
    /* BFB3C 800B0B8C 03E00008 */  jr         $ra
    /* BFB40 800B0B90 00000000 */   nop
endlabel func_800B0A88_BFA38
