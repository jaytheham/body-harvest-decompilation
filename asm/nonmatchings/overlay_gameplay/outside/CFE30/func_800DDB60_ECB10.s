nonmatching func_800DDB60_ECB10, 0x1D0

glabel func_800DDB60_ECB10
    /* ECB10 800DDB60 3C098015 */  lui        $t1, %hi(D_80157530)
    /* ECB14 800DDB64 91297530 */  lbu        $t1, %lo(D_80157530)($t1)
    /* ECB18 800DDB68 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* ECB1C 800DDB6C AFBF0014 */  sw         $ra, 0x14($sp)
    /* ECB20 800DDB70 29210050 */  slti       $at, $t1, 0x50
    /* ECB24 800DDB74 AFA40030 */  sw         $a0, 0x30($sp)
    /* ECB28 800DDB78 AFA50034 */  sw         $a1, 0x34($sp)
    /* ECB2C 800DDB7C AFA60038 */  sw         $a2, 0x38($sp)
    /* ECB30 800DDB80 10200006 */  beqz       $at, .L800DDB9C_ECB4C
    /* ECB34 800DDB84 AFA7003C */   sw        $a3, 0x3C($sp)
    /* ECB38 800DDB88 97A20042 */  lhu        $v0, 0x42($sp)
    /* ECB3C 800DDB8C 3C068015 */  lui        $a2, %hi(D_80157531)
    /* ECB40 800DDB90 24C67531 */  addiu      $a2, $a2, %lo(D_80157531)
    /* ECB44 800DDB94 54400004 */  bnel       $v0, $zero, .L800DDBA8_ECB58
    /* ECB48 800DDB98 90C80000 */   lbu       $t0, 0x0($a2)
  .L800DDB9C_ECB4C:
    /* ECB4C 800DDB9C 10000060 */  b          .L800DDD20_ECCD0
    /* ECB50 800DDBA0 240200FF */   addiu     $v0, $zero, 0xFF
    /* ECB54 800DDBA4 90C80000 */  lbu        $t0, 0x0($a2)
  .L800DDBA8_ECB58:
    /* ECB58 800DDBA8 24070014 */  addiu      $a3, $zero, 0x14
    /* ECB5C 800DDBAC 3C058015 */  lui        $a1, %hi(D_80156EF0)
    /* ECB60 800DDBB0 01070019 */  multu      $t0, $a3
    /* ECB64 800DDBB4 24A56EF0 */  addiu      $a1, $a1, %lo(D_80156EF0)
    /* ECB68 800DDBB8 93AC003F */  lbu        $t4, 0x3F($sp)
    /* ECB6C 800DDBBC 93AB003F */  lbu        $t3, 0x3F($sp)
    /* ECB70 800DDBC0 87AF0032 */  lh         $t7, 0x32($sp)
    /* ECB74 800DDBC4 87B80036 */  lh         $t8, 0x36($sp)
    /* ECB78 800DDBC8 87B9003A */  lh         $t9, 0x3A($sp)
    /* ECB7C 800DDBCC 000C68C0 */  sll        $t5, $t4, 3
    /* ECB80 800DDBD0 2401000E */  addiu      $at, $zero, 0xE
    /* ECB84 800DDBD4 00007012 */  mflo       $t6
    /* ECB88 800DDBD8 00AE1821 */  addu       $v1, $a1, $t6
    /* ECB8C 800DDBDC 3C0E8014 */  lui        $t6, %hi(D_8013DFF4)
    /* ECB90 800DDBE0 25CEDFF4 */  addiu      $t6, $t6, %lo(D_8013DFF4)
    /* ECB94 800DDBE4 01AE2021 */  addu       $a0, $t5, $t6
    /* ECB98 800DDBE8 A06B000C */  sb         $t3, 0xC($v1)
    /* ECB9C 800DDBEC 93AB003F */  lbu        $t3, 0x3F($sp)
    /* ECBA0 800DDBF0 A46F0000 */  sh         $t7, 0x0($v1)
    /* ECBA4 800DDBF4 A4780002 */  sh         $t8, 0x2($v1)
    /* ECBA8 800DDBF8 A4790004 */  sh         $t9, 0x4($v1)
    /* ECBAC 800DDBFC 808F0001 */  lb         $t7, 0x1($a0)
    /* ECBB0 800DDC00 80980002 */  lb         $t8, 0x2($a0)
    /* ECBB4 800DDC04 80990003 */  lb         $t9, 0x3($a0)
    /* ECBB8 800DDC08 A060000F */  sb         $zero, 0xF($v1)
    /* ECBBC 800DDC0C A462000A */  sh         $v0, 0xA($v1)
    /* ECBC0 800DDC10 A06F0010 */  sb         $t7, 0x10($v1)
    /* ECBC4 800DDC14 A0780011 */  sb         $t8, 0x11($v1)
    /* ECBC8 800DDC18 15610003 */  bne        $t3, $at, .L800DDC28_ECBD8
    /* ECBCC 800DDC1C A0790012 */   sb        $t9, 0x12($v1)
    /* ECBD0 800DDC20 1000001D */  b          .L800DDC98_ECC48
    /* ECBD4 800DDC24 A060000E */   sb        $zero, 0xE($v1)
  .L800DDC28_ECBD8:
    /* ECBD8 800DDC28 0C000E38 */  jal        func_800038E0_44E0
    /* ECBDC 800DDC2C AFA40018 */   sw        $a0, 0x18($sp)
    /* ECBE0 800DDC30 3C068015 */  lui        $a2, %hi(D_80157531)
    /* ECBE4 800DDC34 24C67531 */  addiu      $a2, $a2, %lo(D_80157531)
    /* ECBE8 800DDC38 90C80000 */  lbu        $t0, 0x0($a2)
    /* ECBEC 800DDC3C 24070014 */  addiu      $a3, $zero, 0x14
    /* ECBF0 800DDC40 8FA40018 */  lw         $a0, 0x18($sp)
    /* ECBF4 800DDC44 01070019 */  multu      $t0, $a3
    /* ECBF8 800DDC48 3C058015 */  lui        $a1, %hi(D_80156EF0)
    /* ECBFC 800DDC4C 808D0000 */  lb         $t5, 0x0($a0)
    /* ECC00 800DDC50 24A56EF0 */  addiu      $a1, $a1, %lo(D_80156EF0)
    /* ECC04 800DDC54 3C098015 */  lui        $t1, %hi(D_80157530)
    /* ECC08 800DDC58 00006012 */  mflo       $t4
    /* ECC0C 800DDC5C 00AC1821 */  addu       $v1, $a1, $t4
    /* ECC10 800DDC60 00000000 */  nop
    /* ECC14 800DDC64 004D001A */  div        $zero, $v0, $t5
    /* ECC18 800DDC68 00007010 */  mfhi       $t6
    /* ECC1C 800DDC6C A06E000E */  sb         $t6, 0xE($v1)
    /* ECC20 800DDC70 91297530 */  lbu        $t1, %lo(D_80157530)($t1)
    /* ECC24 800DDC74 15A00002 */  bnez       $t5, .L800DDC80_ECC30
    /* ECC28 800DDC78 00000000 */   nop
    /* ECC2C 800DDC7C 0007000D */  break      7
  .L800DDC80_ECC30:
    /* ECC30 800DDC80 2401FFFF */  addiu      $at, $zero, -0x1
    /* ECC34 800DDC84 15A10004 */  bne        $t5, $at, .L800DDC98_ECC48
    /* ECC38 800DDC88 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* ECC3C 800DDC8C 14410002 */  bne        $v0, $at, .L800DDC98_ECC48
    /* ECC40 800DDC90 00000000 */   nop
    /* ECC44 800DDC94 0006000D */  break      6
  .L800DDC98_ECC48:
    /* ECC48 800DDC98 93AF003F */  lbu        $t7, 0x3F($sp)
    /* ECC4C 800DDC9C 3C198014 */  lui        $t9, %hi(D_8013E06C)
    /* ECC50 800DDCA0 2739E06C */  addiu      $t9, $t9, %lo(D_8013E06C)
    /* ECC54 800DDCA4 000FC080 */  sll        $t8, $t7, 2
    /* ECC58 800DDCA8 03192021 */  addu       $a0, $t8, $t9
    /* ECC5C 800DDCAC 908B0003 */  lbu        $t3, 0x3($a0)
    /* ECC60 800DDCB0 908C0000 */  lbu        $t4, 0x0($a0)
    /* ECC64 800DDCB4 908D0001 */  lbu        $t5, 0x1($a0)
    /* ECC68 800DDCB8 908E0002 */  lbu        $t6, 0x2($a0)
    /* ECC6C 800DDCBC 29010050 */  slti       $at, $t0, 0x50
    /* ECC70 800DDCC0 310A00FF */  andi       $t2, $t0, 0xFF
    /* ECC74 800DDCC4 310200FF */  andi       $v0, $t0, 0xFF
    /* ECC78 800DDCC8 A06B000D */  sb         $t3, 0xD($v1)
    /* ECC7C 800DDCCC A06C0006 */  sb         $t4, 0x6($v1)
    /* ECC80 800DDCD0 A06D0007 */  sb         $t5, 0x7($v1)
    /* ECC84 800DDCD4 1020000E */  beqz       $at, .L800DDD10_ECCC0
    /* ECC88 800DDCD8 A06E0008 */   sb        $t6, 0x8($v1)
  .L800DDCDC_ECC8C:
    /* ECC8C 800DDCDC 00470019 */  multu      $v0, $a3
    /* ECC90 800DDCE0 00007812 */  mflo       $t7
    /* ECC94 800DDCE4 00AFC021 */  addu       $t8, $a1, $t7
    /* ECC98 800DDCE8 8719000A */  lh         $t9, 0xA($t8)
    /* ECC9C 800DDCEC 57200004 */  bnel       $t9, $zero, .L800DDD00_ECCB0
    /* ECCA0 800DDCF0 24420001 */   addiu     $v0, $v0, 0x1
    /* ECCA4 800DDCF4 A0C20000 */  sb         $v0, 0x0($a2)
    /* ECCA8 800DDCF8 24020050 */  addiu      $v0, $zero, 0x50
    /* ECCAC 800DDCFC 24420001 */  addiu      $v0, $v0, 0x1
  .L800DDD00_ECCB0:
    /* ECCB0 800DDD00 304B00FF */  andi       $t3, $v0, 0xFF
    /* ECCB4 800DDD04 29610050 */  slti       $at, $t3, 0x50
    /* ECCB8 800DDD08 1420FFF4 */  bnez       $at, .L800DDCDC_ECC8C
    /* ECCBC 800DDD0C 01601025 */   or        $v0, $t3, $zero
  .L800DDD10_ECCC0:
    /* ECCC0 800DDD10 252C0001 */  addiu      $t4, $t1, 0x1
    /* ECCC4 800DDD14 3C018015 */  lui        $at, %hi(D_80157530)
    /* ECCC8 800DDD18 A02C7530 */  sb         $t4, %lo(D_80157530)($at)
    /* ECCCC 800DDD1C 01401025 */  or         $v0, $t2, $zero
  .L800DDD20_ECCD0:
    /* ECCD0 800DDD20 8FBF0014 */  lw         $ra, 0x14($sp)
    /* ECCD4 800DDD24 27BD0030 */  addiu      $sp, $sp, 0x30
    /* ECCD8 800DDD28 03E00008 */  jr         $ra
    /* ECCDC 800DDD2C 00000000 */   nop
endlabel func_800DDB60_ECB10
