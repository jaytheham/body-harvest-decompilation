nonmatching func_800E0AE0_EFA90, 0x1AC

glabel func_800E0AE0_EFA90
    /* EFA90 800E0AE0 3C0E8003 */  lui        $t6, %hi(D_80031420)
    /* EFA94 800E0AE4 8DCE1420 */  lw         $t6, %lo(D_80031420)($t6)
    /* EFA98 800E0AE8 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* EFA9C 800E0AEC AFBF003C */  sw         $ra, 0x3C($sp)
    /* EFAA0 800E0AF0 31CF0003 */  andi       $t7, $t6, 0x3
    /* EFAA4 800E0AF4 AFA40050 */  sw         $a0, 0x50($sp)
    /* EFAA8 800E0AF8 AFA50054 */  sw         $a1, 0x54($sp)
    /* EFAAC 800E0AFC AFA60058 */  sw         $a2, 0x58($sp)
    /* EFAB0 800E0B00 11E0005E */  beqz       $t7, .L800E0C7C_EFC2C
    /* EFAB4 800E0B04 AFA7005C */   sw        $a3, 0x5C($sp)
    /* EFAB8 800E0B08 0C000E38 */  jal        func_800038E0_44E0
    /* EFABC 800E0B0C 00000000 */   nop
    /* EFAC0 800E0B10 0C000E38 */  jal        func_800038E0_44E0
    /* EFAC4 800E0B14 A7A20046 */   sh        $v0, 0x46($sp)
    /* EFAC8 800E0B18 0C000E38 */  jal        func_800038E0_44E0
    /* EFACC 800E0B1C A7A20048 */   sh        $v0, 0x48($sp)
    /* EFAD0 800E0B20 0C000E38 */  jal        func_800038E0_44E0
    /* EFAD4 800E0B24 A7A2004A */   sh        $v0, 0x4A($sp)
    /* EFAD8 800E0B28 97B80046 */  lhu        $t8, 0x46($sp)
    /* EFADC 800E0B2C 24080032 */  addiu      $t0, $zero, 0x32
    /* EFAE0 800E0B30 97AB0048 */  lhu        $t3, 0x48($sp)
    /* EFAE4 800E0B34 0308001A */  div        $zero, $t8, $t0
    /* EFAE8 800E0B38 00003810 */  mfhi       $a3
    /* EFAEC 800E0B3C 24E7FFE7 */  addiu      $a3, $a3, -0x19
    /* EFAF0 800E0B40 0007CE00 */  sll        $t9, $a3, 24
    /* EFAF4 800E0B44 0168001A */  div        $zero, $t3, $t0
    /* EFAF8 800E0B48 00006010 */  mfhi       $t4
    /* EFAFC 800E0B4C 258DFFE7 */  addiu      $t5, $t4, -0x19
    /* EFB00 800E0B50 3C0C8004 */  lui        $t4, %hi(currentLevel)
    /* EFB04 800E0B54 00194E03 */  sra        $t1, $t9, 24
    /* EFB08 800E0B58 8D8C7F90 */  lw         $t4, %lo(currentLevel)($t4)
    /* EFB0C 800E0B5C 240E0019 */  addiu      $t6, $zero, 0x19
    /* EFB10 800E0B60 AFAE0018 */  sw         $t6, 0x18($sp)
    /* EFB14 800E0B64 AFAD0014 */  sw         $t5, 0x14($sp)
    /* EFB18 800E0B68 3C0E8014 */  lui        $t6, %hi(D_8013E3C0)
    /* EFB1C 800E0B6C 000C6880 */  sll        $t5, $t4, 2
    /* EFB20 800E0B70 25CEE3C0 */  addiu      $t6, $t6, %lo(D_8013E3C0)
    /* EFB24 800E0B74 01AC6823 */  subu       $t5, $t5, $t4
    /* EFB28 800E0B78 01AE1821 */  addu       $v1, $t5, $t6
    /* EFB2C 800E0B7C 01203825 */  or         $a3, $t1, $zero
    /* EFB30 800E0B80 240A0050 */  addiu      $t2, $zero, 0x50
    /* EFB34 800E0B84 240F0005 */  addiu      $t7, $zero, 0x5
    /* EFB38 800E0B88 AFAF001C */  sw         $t7, 0x1C($sp)
    /* EFB3C 800E0B8C AFAA0010 */  sw         $t2, 0x10($sp)
    /* EFB40 800E0B90 906FFFFD */  lbu        $t7, -0x3($v1)
    /* EFB44 800E0B94 87A40052 */  lh         $a0, 0x52($sp)
    /* EFB48 800E0B98 87A50056 */  lh         $a1, 0x56($sp)
    /* EFB4C 800E0B9C 87A6005A */  lh         $a2, 0x5A($sp)
    /* EFB50 800E0BA0 15000002 */  bnez       $t0, .L800E0BAC_EFB5C
    /* EFB54 800E0BA4 00000000 */   nop
    /* EFB58 800E0BA8 0007000D */  break      7
  .L800E0BAC_EFB5C:
    /* EFB5C 800E0BAC 2401FFFF */  addiu      $at, $zero, -0x1
    /* EFB60 800E0BB0 15010004 */  bne        $t0, $at, .L800E0BC4_EFB74
    /* EFB64 800E0BB4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EFB68 800E0BB8 17010002 */  bne        $t8, $at, .L800E0BC4_EFB74
    /* EFB6C 800E0BBC 00000000 */   nop
    /* EFB70 800E0BC0 0006000D */  break      6
  .L800E0BC4_EFB74:
    /* EFB74 800E0BC4 97B8004A */  lhu        $t8, 0x4A($sp)
    /* EFB78 800E0BC8 15000002 */  bnez       $t0, .L800E0BD4_EFB84
    /* EFB7C 800E0BCC 00000000 */   nop
    /* EFB80 800E0BD0 0007000D */  break      7
  .L800E0BD4_EFB84:
    /* EFB84 800E0BD4 2401FFFF */  addiu      $at, $zero, -0x1
    /* EFB88 800E0BD8 15010004 */  bne        $t0, $at, .L800E0BEC_EFB9C
    /* EFB8C 800E0BDC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EFB90 800E0BE0 15610002 */  bne        $t3, $at, .L800E0BEC_EFB9C
    /* EFB94 800E0BE4 00000000 */   nop
    /* EFB98 800E0BE8 0006000D */  break      6
  .L800E0BEC_EFB9C:
    /* EFB9C 800E0BEC 24010023 */  addiu      $at, $zero, 0x23
    /* EFBA0 800E0BF0 0041001A */  div        $zero, $v0, $at
    /* EFBA4 800E0BF4 07010004 */  bgez       $t8, .L800E0C08_EFBB8
    /* EFBA8 800E0BF8 33190007 */   andi      $t9, $t8, 0x7
    /* EFBAC 800E0BFC 13200002 */  beqz       $t9, .L800E0C08_EFBB8
    /* EFBB0 800E0C00 00000000 */   nop
    /* EFBB4 800E0C04 2739FFF8 */  addiu      $t9, $t9, -0x8
  .L800E0C08_EFBB8:
    /* EFBB8 800E0C08 2729000C */  addiu      $t1, $t9, 0xC
    /* EFBBC 800E0C0C 9079FFFF */  lbu        $t9, -0x1($v1)
    /* EFBC0 800E0C10 9078FFFE */  lbu        $t8, -0x2($v1)
    /* EFBC4 800E0C14 AFA90020 */  sw         $t1, 0x20($sp)
    /* EFBC8 800E0C18 00005010 */  mfhi       $t2
    /* EFBCC 800E0C1C 254B0069 */  addiu      $t3, $t2, 0x69
    /* EFBD0 800E0C20 240900FF */  addiu      $t1, $zero, 0xFF
    /* EFBD4 800E0C24 AFA90034 */  sw         $t1, 0x34($sp)
    /* EFBD8 800E0C28 AFAB0024 */  sw         $t3, 0x24($sp)
    /* EFBDC 800E0C2C AFAF0028 */  sw         $t7, 0x28($sp)
    /* EFBE0 800E0C30 AFB90030 */  sw         $t9, 0x30($sp)
    /* EFBE4 800E0C34 0C03297B */  jal        func_800CA5EC_D959C
    /* EFBE8 800E0C38 AFB8002C */   sw        $t8, 0x2C($sp)
    /* EFBEC 800E0C3C 240100FB */  addiu      $at, $zero, 0xFB
    /* EFBF0 800E0C40 1041000E */  beq        $v0, $at, .L800E0C7C_EFC2C
    /* EFBF4 800E0C44 304B00FF */   andi      $t3, $v0, 0xFF
    /* EFBF8 800E0C48 000B6080 */  sll        $t4, $t3, 2
    /* EFBFC 800E0C4C 018B6023 */  subu       $t4, $t4, $t3
    /* EFC00 800E0C50 000C6080 */  sll        $t4, $t4, 2
    /* EFC04 800E0C54 3C0D8015 */  lui        $t5, %hi(D_80154090)
    /* EFC08 800E0C58 01AC6821 */  addu       $t5, $t5, $t4
    /* EFC0C 800E0C5C 85AD4090 */  lh         $t5, %lo(D_80154090)($t5)
    /* EFC10 800E0C60 97AA005E */  lhu        $t2, 0x5E($sp)
    /* EFC14 800E0C64 3C018015 */  lui        $at, %hi(D_80154326)
    /* EFC18 800E0C68 000D70C0 */  sll        $t6, $t5, 3
    /* EFC1C 800E0C6C 01CD7023 */  subu       $t6, $t6, $t5
    /* EFC20 800E0C70 000E7080 */  sll        $t6, $t6, 2
    /* EFC24 800E0C74 002E0821 */  addu       $at, $at, $t6
    /* EFC28 800E0C78 A42A4326 */  sh         $t2, %lo(D_80154326)($at)
  .L800E0C7C_EFC2C:
    /* EFC2C 800E0C7C 8FBF003C */  lw         $ra, 0x3C($sp)
    /* EFC30 800E0C80 27BD0050 */  addiu      $sp, $sp, 0x50
    /* EFC34 800E0C84 03E00008 */  jr         $ra
    /* EFC38 800E0C88 00000000 */   nop
endlabel func_800E0AE0_EFA90
