nonmatching func_800B9AC8_C8A78, 0x160

glabel func_800B9AC8_C8A78
    /* C8A78 800B9AC8 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* C8A7C 800B9ACC 3C0E8014 */  lui        $t6, %hi(D_8013DAE0)
    /* C8A80 800B9AD0 91CEDAE0 */  lbu        $t6, %lo(D_8013DAE0)($t6)
    /* C8A84 800B9AD4 AFBF002C */  sw         $ra, 0x2C($sp)
    /* C8A88 800B9AD8 AFB50028 */  sw         $s5, 0x28($sp)
    /* C8A8C 800B9ADC AFB40024 */  sw         $s4, 0x24($sp)
    /* C8A90 800B9AE0 AFB30020 */  sw         $s3, 0x20($sp)
    /* C8A94 800B9AE4 AFB2001C */  sw         $s2, 0x1C($sp)
    /* C8A98 800B9AE8 AFB10018 */  sw         $s1, 0x18($sp)
    /* C8A9C 800B9AEC 19C00045 */  blez       $t6, .L800B9C04_C8BB4
    /* C8AA0 800B9AF0 AFB00014 */   sw        $s0, 0x14($sp)
    /* C8AA4 800B9AF4 3C128015 */  lui        $s2, %hi(D_80152B80)
    /* C8AA8 800B9AF8 26522B80 */  addiu      $s2, $s2, %lo(D_80152B80)
    /* C8AAC 800B9AFC 00008825 */  or         $s1, $zero, $zero
    /* C8AB0 800B9B00 24150001 */  addiu      $s5, $zero, 0x1
    /* C8AB4 800B9B04 27B40040 */  addiu      $s4, $sp, 0x40
    /* C8AB8 800B9B08 24130012 */  addiu      $s3, $zero, 0x12
  .L800B9B0C_C8ABC:
    /* C8ABC 800B9B0C 02330019 */  multu      $s1, $s3
    /* C8AC0 800B9B10 00007812 */  mflo       $t7
    /* C8AC4 800B9B14 024F8021 */  addu       $s0, $s2, $t7
    /* C8AC8 800B9B18 92020008 */  lbu        $v0, 0x8($s0)
    /* C8ACC 800B9B1C 58400035 */  blezl      $v0, .L800B9BF4_C8BA4
    /* C8AD0 800B9B20 26310001 */   addiu     $s1, $s1, 0x1
    /* C8AD4 800B9B24 96030010 */  lhu        $v1, 0x10($s0)
    /* C8AD8 800B9B28 18600003 */  blez       $v1, .L800B9B38_C8AE8
    /* C8ADC 800B9B2C 2478FFFF */   addiu     $t8, $v1, -0x1
    /* C8AE0 800B9B30 1000002F */  b          .L800B9BF0_C8BA0
    /* C8AE4 800B9B34 A6180010 */   sh        $t8, 0x10($s0)
  .L800B9B38_C8AE8:
    /* C8AE8 800B9B38 92190009 */  lbu        $t9, 0x9($s0)
    /* C8AEC 800B9B3C 920A000A */  lbu        $t2, 0xA($s0)
    /* C8AF0 800B9B40 920D000B */  lbu        $t5, 0xB($s0)
    /* C8AF4 800B9B44 00590019 */  multu      $v0, $t9
    /* C8AF8 800B9B48 02002025 */  or         $a0, $s0, $zero
    /* C8AFC 800B9B4C 02802825 */  or         $a1, $s4, $zero
    /* C8B00 800B9B50 86060004 */  lh         $a2, 0x4($s0)
    /* C8B04 800B9B54 86070006 */  lh         $a3, 0x6($s0)
    /* C8B08 800B9B58 00004012 */  mflo       $t0
    /* C8B0C 800B9B5C 00084A03 */  sra        $t1, $t0, 8
    /* C8B10 800B9B60 A3A90040 */  sb         $t1, 0x40($sp)
    /* C8B14 800B9B64 004A0019 */  multu      $v0, $t2
    /* C8B18 800B9B68 00005812 */  mflo       $t3
    /* C8B1C 800B9B6C 000B6203 */  sra        $t4, $t3, 8
    /* C8B20 800B9B70 A3AC0041 */  sb         $t4, 0x41($sp)
    /* C8B24 800B9B74 004D0019 */  multu      $v0, $t5
    /* C8B28 800B9B78 00007012 */  mflo       $t6
    /* C8B2C 800B9B7C 000E7A03 */  sra        $t7, $t6, 8
    /* C8B30 800B9B80 0C02CA15 */  jal        func_800B2854_C1804
    /* C8B34 800B9B84 A3AF0042 */   sb        $t7, 0x42($sp)
    /* C8B38 800B9B88 92180008 */  lbu        $t8, 0x8($s0)
    /* C8B3C 800B9B8C 8619000E */  lh         $t9, 0xE($s0)
    /* C8B40 800B9B90 03191023 */  subu       $v0, $t8, $t9
    /* C8B44 800B9B94 00024400 */  sll        $t0, $v0, 16
    /* C8B48 800B9B98 00081403 */  sra        $v0, $t0, 16
    /* C8B4C 800B9B9C 1C400005 */  bgtz       $v0, .L800B9BB4_C8B64
    /* C8B50 800B9BA0 28410100 */   slti      $at, $v0, 0x100
    /* C8B54 800B9BA4 0C02E655 */  jal        func_800B9954_C8904
    /* C8B58 800B9BA8 322400FF */   andi      $a0, $s1, 0xFF
    /* C8B5C 800B9BAC 10000009 */  b          .L800B9BD4_C8B84
    /* C8B60 800B9BB0 860A0004 */   lh        $t2, 0x4($s0)
  .L800B9BB4_C8B64:
    /* C8B64 800B9BB4 54200006 */  bnel       $at, $zero, .L800B9BD0_C8B80
    /* C8B68 800B9BB8 A2020008 */   sb        $v0, 0x8($s0)
    /* C8B6C 800B9BBC 0C02E655 */  jal        func_800B9954_C8904
    /* C8B70 800B9BC0 322400FF */   andi      $a0, $s1, 0xFF
    /* C8B74 800B9BC4 10000003 */  b          .L800B9BD4_C8B84
    /* C8B78 800B9BC8 860A0004 */   lh        $t2, 0x4($s0)
    /* C8B7C 800B9BCC A2020008 */  sb         $v0, 0x8($s0)
  .L800B9BD0_C8B80:
    /* C8B80 800B9BD0 860A0004 */  lh         $t2, 0x4($s0)
  .L800B9BD4_C8B84:
    /* C8B84 800B9BD4 860B000C */  lh         $t3, 0xC($s0)
    /* C8B88 800B9BD8 014B6021 */  addu       $t4, $t2, $t3
    /* C8B8C 800B9BDC A60C0004 */  sh         $t4, 0x4($s0)
    /* C8B90 800B9BE0 860D0004 */  lh         $t5, 0x4($s0)
    /* C8B94 800B9BE4 5DA00003 */  bgtzl      $t5, .L800B9BF4_C8BA4
    /* C8B98 800B9BE8 26310001 */   addiu     $s1, $s1, 0x1
    /* C8B9C 800B9BEC A6150004 */  sh         $s5, 0x4($s0)
  .L800B9BF0_C8BA0:
    /* C8BA0 800B9BF0 26310001 */  addiu      $s1, $s1, 0x1
  .L800B9BF4_C8BA4:
    /* C8BA4 800B9BF4 322E00FF */  andi       $t6, $s1, 0xFF
    /* C8BA8 800B9BF8 29C1000F */  slti       $at, $t6, 0xF
    /* C8BAC 800B9BFC 1420FFC3 */  bnez       $at, .L800B9B0C_C8ABC
    /* C8BB0 800B9C00 01C08825 */   or        $s1, $t6, $zero
  .L800B9C04_C8BB4:
    /* C8BB4 800B9C04 8FBF002C */  lw         $ra, 0x2C($sp)
    /* C8BB8 800B9C08 8FB00014 */  lw         $s0, 0x14($sp)
    /* C8BBC 800B9C0C 8FB10018 */  lw         $s1, 0x18($sp)
    /* C8BC0 800B9C10 8FB2001C */  lw         $s2, 0x1C($sp)
    /* C8BC4 800B9C14 8FB30020 */  lw         $s3, 0x20($sp)
    /* C8BC8 800B9C18 8FB40024 */  lw         $s4, 0x24($sp)
    /* C8BCC 800B9C1C 8FB50028 */  lw         $s5, 0x28($sp)
    /* C8BD0 800B9C20 03E00008 */  jr         $ra
    /* C8BD4 800B9C24 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_800B9AC8_C8A78
