nonmatching func_800D1A94_E0A44, 0x190

glabel func_800D1A94_E0A44
    /* E0A44 800D1A94 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* E0A48 800D1A98 AFA40048 */  sw         $a0, 0x48($sp)
    /* E0A4C 800D1A9C 93AE004B */  lbu        $t6, 0x4B($sp)
    /* E0A50 800D1AA0 3C188015 */  lui        $t8, %hi(D_80154088)
    /* E0A54 800D1AA4 27184088 */  addiu      $t8, $t8, %lo(D_80154088)
    /* E0A58 800D1AA8 000E7880 */  sll        $t7, $t6, 2
    /* E0A5C 800D1AAC 01EE7823 */  subu       $t7, $t7, $t6
    /* E0A60 800D1AB0 000F7880 */  sll        $t7, $t7, 2
    /* E0A64 800D1AB4 01F85821 */  addu       $t3, $t7, $t8
    /* E0A68 800D1AB8 85650006 */  lh         $a1, 0x6($t3)
    /* E0A6C 800D1ABC 2409FFFB */  addiu      $t1, $zero, -0x5
    /* E0A70 800D1AC0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* E0A74 800D1AC4 10A90003 */  beq        $a1, $t1, .L800D1AD4_E0A84
    /* E0A78 800D1AC8 240AFFFA */   addiu     $t2, $zero, -0x6
    /* E0A7C 800D1ACC 14AA0008 */  bne        $a1, $t2, .L800D1AF0_E0AA0
    /* E0A80 800D1AD0 00000000 */   nop
  .L800D1AD4_E0A84:
    /* E0A84 800D1AD4 93A4004B */  lbu        $a0, 0x4B($sp)
    /* E0A88 800D1AD8 0C030506 */  jal        func_800C1418_D03C8
    /* E0A8C 800D1ADC 00002825 */   or        $a1, $zero, $zero
    /* E0A90 800D1AE0 0C0304E1 */  jal        func_800C1384_D0334
    /* E0A94 800D1AE4 93A4004B */   lbu       $a0, 0x4B($sp)
    /* E0A98 800D1AE8 1000004B */  b          .L800D1C18_E0BC8
    /* E0A9C 800D1AEC 8FBF001C */   lw        $ra, 0x1C($sp)
  .L800D1AF0_E0AA0:
    /* E0AA0 800D1AF0 50A90023 */  beql       $a1, $t1, .L800D1B80_E0B30
    /* E0AA4 800D1AF4 85780006 */   lh        $t8, 0x6($t3)
    /* E0AA8 800D1AF8 10AA0020 */  beq        $a1, $t2, .L800D1B7C_E0B2C
    /* E0AAC 800D1AFC 2408001C */   addiu     $t0, $zero, 0x1C
    /* E0AB0 800D1B00 3C078015 */  lui        $a3, %hi(D_80154318)
    /* E0AB4 800D1B04 24E74318 */  addiu      $a3, $a3, %lo(D_80154318)
    /* E0AB8 800D1B08 2406FFFF */  addiu      $a2, $zero, -0x1
  .L800D1B0C_E0ABC:
    /* E0ABC 800D1B0C 00A80019 */  multu      $a1, $t0
    /* E0AC0 800D1B10 0000C812 */  mflo       $t9
    /* E0AC4 800D1B14 00F91021 */  addu       $v0, $a3, $t9
    /* E0AC8 800D1B18 904C000E */  lbu        $t4, 0xE($v0)
    /* E0ACC 800D1B1C 24440008 */  addiu      $a0, $v0, 0x8
    /* E0AD0 800D1B20 00801825 */  or         $v1, $a0, $zero
    /* E0AD4 800D1B24 54CC0004 */  bnel       $a2, $t4, .L800D1B38_E0AE8
    /* E0AD8 800D1B28 908D0006 */   lbu       $t5, 0x6($a0)
    /* E0ADC 800D1B2C 1000000F */  b          .L800D1B6C_E0B1C
    /* E0AE0 800D1B30 84450004 */   lh        $a1, 0x4($v0)
    /* E0AE4 800D1B34 908D0006 */  lbu        $t5, 0x6($a0)
  .L800D1B38_E0AE8:
    /* E0AE8 800D1B38 55A00009 */  bnel       $t5, $zero, .L800D1B60_E0B10
    /* E0AEC 800D1B3C 906E0006 */   lbu       $t6, 0x6($v1)
    /* E0AF0 800D1B40 93A4004B */  lbu        $a0, 0x4B($sp)
    /* E0AF4 800D1B44 0C030506 */  jal        func_800C1418_D03C8
    /* E0AF8 800D1B48 00002825 */   or        $a1, $zero, $zero
    /* E0AFC 800D1B4C 0C0304E1 */  jal        func_800C1384_D0334
    /* E0B00 800D1B50 93A4004B */   lbu       $a0, 0x4B($sp)
    /* E0B04 800D1B54 10000030 */  b          .L800D1C18_E0BC8
    /* E0B08 800D1B58 8FBF001C */   lw        $ra, 0x1C($sp)
    /* E0B0C 800D1B5C 906E0006 */  lbu        $t6, 0x6($v1)
  .L800D1B60_E0B10:
    /* E0B10 800D1B60 25CFFFFF */  addiu      $t7, $t6, -0x1
    /* E0B14 800D1B64 A06F0006 */  sb         $t7, 0x6($v1)
    /* E0B18 800D1B68 84450004 */  lh         $a1, 0x4($v0)
  .L800D1B6C_E0B1C:
    /* E0B1C 800D1B6C 50A90004 */  beql       $a1, $t1, .L800D1B80_E0B30
    /* E0B20 800D1B70 85780006 */   lh        $t8, 0x6($t3)
    /* E0B24 800D1B74 14AAFFE5 */  bne        $a1, $t2, .L800D1B0C_E0ABC
    /* E0B28 800D1B78 00000000 */   nop
  .L800D1B7C_E0B2C:
    /* E0B2C 800D1B7C 85780006 */  lh         $t8, 0x6($t3)
  .L800D1B80_E0B30:
    /* E0B30 800D1B80 2408001C */  addiu      $t0, $zero, 0x1C
    /* E0B34 800D1B84 856F0008 */  lh         $t7, 0x8($t3)
    /* E0B38 800D1B88 03080019 */  multu      $t8, $t0
    /* E0B3C 800D1B8C 3C078015 */  lui        $a3, %hi(D_80154318)
    /* E0B40 800D1B90 240200FF */  addiu      $v0, $zero, 0xFF
    /* E0B44 800D1B94 24E74318 */  addiu      $a3, $a3, %lo(D_80154318)
    /* E0B48 800D1B98 240C00FF */  addiu      $t4, $zero, 0xFF
    /* E0B4C 800D1B9C A3AC003A */  sb         $t4, 0x3A($sp)
    /* E0B50 800D1BA0 A3A20039 */  sb         $v0, 0x39($sp)
    /* E0B54 800D1BA4 A3A20038 */  sb         $v0, 0x38($sp)
    /* E0B58 800D1BA8 27A40040 */  addiu      $a0, $sp, 0x40
    /* E0B5C 800D1BAC 27A5003C */  addiu      $a1, $sp, 0x3C
    /* E0B60 800D1BB0 0000C812 */  mflo       $t9
    /* E0B64 800D1BB4 00F91821 */  addu       $v1, $a3, $t9
    /* E0B68 800D1BB8 846D0008 */  lh         $t5, 0x8($v1)
    /* E0B6C 800D1BBC 01E80019 */  multu      $t7, $t0
    /* E0B70 800D1BC0 24630008 */  addiu      $v1, $v1, 0x8
    /* E0B74 800D1BC4 A7AD0040 */  sh         $t5, 0x40($sp)
    /* E0B78 800D1BC8 846E0004 */  lh         $t6, 0x4($v1)
    /* E0B7C 800D1BCC AFA30034 */  sw         $v1, 0x34($sp)
    /* E0B80 800D1BD0 27A60038 */  addiu      $a2, $sp, 0x38
    /* E0B84 800D1BD4 A7AE0042 */  sh         $t6, 0x42($sp)
    /* E0B88 800D1BD8 0000C012 */  mflo       $t8
    /* E0B8C 800D1BDC 00F84821 */  addu       $t1, $a3, $t8
    /* E0B90 800D1BE0 85390008 */  lh         $t9, 0x8($t1)
    /* E0B94 800D1BE4 852C000C */  lh         $t4, 0xC($t1)
    /* E0B98 800D1BE8 A7B9003C */  sh         $t9, 0x3C($sp)
    /* E0B9C 800D1BEC 0C02C69A */  jal        func_800B1A68_C0A18
    /* E0BA0 800D1BF0 A7AC003E */   sh        $t4, 0x3E($sp)
    /* E0BA4 800D1BF4 8FA30034 */  lw         $v1, 0x34($sp)
    /* E0BA8 800D1BF8 93AD004B */  lbu        $t5, 0x4B($sp)
    /* E0BAC 800D1BFC 24070007 */  addiu      $a3, $zero, 0x7
    /* E0BB0 800D1C00 84640000 */  lh         $a0, 0x0($v1)
    /* E0BB4 800D1C04 84650002 */  lh         $a1, 0x2($v1)
    /* E0BB8 800D1C08 84660004 */  lh         $a2, 0x4($v1)
    /* E0BBC 800D1C0C 0C04DCDA */  jal        func_80137368_146318
    /* E0BC0 800D1C10 AFAD0010 */   sw        $t5, 0x10($sp)
    /* E0BC4 800D1C14 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800D1C18_E0BC8:
    /* E0BC8 800D1C18 27BD0048 */  addiu      $sp, $sp, 0x48
    /* E0BCC 800D1C1C 03E00008 */  jr         $ra
    /* E0BD0 800D1C20 00000000 */   nop
endlabel func_800D1A94_E0A44
