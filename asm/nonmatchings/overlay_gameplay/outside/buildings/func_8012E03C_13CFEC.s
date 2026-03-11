nonmatching func_8012E03C_13CFEC, 0xD8

glabel func_8012E03C_13CFEC
    /* 13CFEC 8012E03C AFA40000 */  sw         $a0, 0x0($sp)
    /* 13CFF0 8012E040 00047400 */  sll        $t6, $a0, 16
    /* 13CFF4 8012E044 AFA50004 */  sw         $a1, 0x4($sp)
    /* 13CFF8 8012E048 0005C400 */  sll        $t8, $a1, 16
    /* 13CFFC 8012E04C AFA60008 */  sw         $a2, 0x8($sp)
    /* 13D000 8012E050 00064C00 */  sll        $t1, $a2, 16
    /* 13D004 8012E054 3C078016 */  lui        $a3, %hi(D_8015FF50)
    /* 13D008 8012E058 00093403 */  sra        $a2, $t1, 16
    /* 13D00C 8012E05C 00182C03 */  sra        $a1, $t8, 16
    /* 13D010 8012E060 000E2403 */  sra        $a0, $t6, 16
    /* 13D014 8012E064 24E7FF50 */  addiu      $a3, $a3, %lo(D_8015FF50)
    /* 13D018 8012E068 24030018 */  addiu      $v1, $zero, 0x18
  .L8012E06C_13D01C:
    /* 13D01C 8012E06C 90EB002C */  lbu        $t3, 0x2C($a3)
    /* 13D020 8012E070 51600022 */  beql       $t3, $zero, .L8012E0FC_13D0AC
    /* 13D024 8012E074 00601025 */   or        $v0, $v1, $zero
    /* 13D028 8012E078 8CE20000 */  lw         $v0, 0x0($a3)
    /* 13D02C 8012E07C 84E80018 */  lh         $t0, 0x18($a3)
    /* 13D030 8012E080 00026403 */  sra        $t4, $v0, 16
    /* 13D034 8012E084 01886823 */  subu       $t5, $t4, $t0
    /* 13D038 8012E088 008D082A */  slt        $at, $a0, $t5
    /* 13D03C 8012E08C 1420001A */  bnez       $at, .L8012E0F8_13D0A8
    /* 13D040 8012E090 01887021 */   addu      $t6, $t4, $t0
    /* 13D044 8012E094 01C4082A */  slt        $at, $t6, $a0
    /* 13D048 8012E098 54200018 */  bnel       $at, $zero, .L8012E0FC_13D0AC
    /* 13D04C 8012E09C 00601025 */   or        $v0, $v1, $zero
    /* 13D050 8012E0A0 8CE20004 */  lw         $v0, 0x4($a3)
    /* 13D054 8012E0A4 84E8001C */  lh         $t0, 0x1C($a3)
    /* 13D058 8012E0A8 00027C03 */  sra        $t7, $v0, 16
    /* 13D05C 8012E0AC 01E8C023 */  subu       $t8, $t7, $t0
    /* 13D060 8012E0B0 00B8082A */  slt        $at, $a1, $t8
    /* 13D064 8012E0B4 14200010 */  bnez       $at, .L8012E0F8_13D0A8
    /* 13D068 8012E0B8 01E8C821 */   addu      $t9, $t7, $t0
    /* 13D06C 8012E0BC 0325082A */  slt        $at, $t9, $a1
    /* 13D070 8012E0C0 5420000E */  bnel       $at, $zero, .L8012E0FC_13D0AC
    /* 13D074 8012E0C4 00601025 */   or        $v0, $v1, $zero
    /* 13D078 8012E0C8 8CE20008 */  lw         $v0, 0x8($a3)
    /* 13D07C 8012E0CC 84E8001A */  lh         $t0, 0x1A($a3)
    /* 13D080 8012E0D0 00024C03 */  sra        $t1, $v0, 16
    /* 13D084 8012E0D4 01285023 */  subu       $t2, $t1, $t0
    /* 13D088 8012E0D8 00CA082A */  slt        $at, $a2, $t2
    /* 13D08C 8012E0DC 14200006 */  bnez       $at, .L8012E0F8_13D0A8
    /* 13D090 8012E0E0 01285821 */   addu      $t3, $t1, $t0
    /* 13D094 8012E0E4 0166082A */  slt        $at, $t3, $a2
    /* 13D098 8012E0E8 54200004 */  bnel       $at, $zero, .L8012E0FC_13D0AC
    /* 13D09C 8012E0EC 00601025 */   or        $v0, $v1, $zero
    /* 13D0A0 8012E0F0 03E00008 */  jr         $ra
    /* 13D0A4 8012E0F4 00601025 */   or        $v0, $v1, $zero
  .L8012E0F8_13D0A8:
    /* 13D0A8 8012E0F8 00601025 */  or         $v0, $v1, $zero
  .L8012E0FC_13D0AC:
    /* 13D0AC 8012E0FC 24E7FFD0 */  addiu      $a3, $a3, -0x30
    /* 13D0B0 8012E100 1460FFDA */  bnez       $v1, .L8012E06C_13D01C
    /* 13D0B4 8012E104 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 13D0B8 8012E108 2402FFFF */  addiu      $v0, $zero, -0x1
    /* 13D0BC 8012E10C 03E00008 */  jr         $ra
    /* 13D0C0 8012E110 00000000 */   nop
endlabel func_8012E03C_13CFEC
