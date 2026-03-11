nonmatching func_800CCB60_DBB10, 0x1F4

glabel func_800CCB60_DBB10
    /* DBB10 800CCB60 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* DBB14 800CCB64 AFB00018 */  sw         $s0, 0x18($sp)
    /* DBB18 800CCB68 3C108015 */  lui        $s0, %hi(D_80154246)
    /* DBB1C 800CCB6C 86104246 */  lh         $s0, %lo(D_80154246)($s0)
    /* DBB20 800CCB70 2403FFFB */  addiu      $v1, $zero, -0x5
    /* DBB24 800CCB74 AFBF003C */  sw         $ra, 0x3C($sp)
    /* DBB28 800CCB78 AFBE0038 */  sw         $fp, 0x38($sp)
    /* DBB2C 800CCB7C AFB70034 */  sw         $s7, 0x34($sp)
    /* DBB30 800CCB80 AFB60030 */  sw         $s6, 0x30($sp)
    /* DBB34 800CCB84 AFB5002C */  sw         $s5, 0x2C($sp)
    /* DBB38 800CCB88 AFB40028 */  sw         $s4, 0x28($sp)
    /* DBB3C 800CCB8C AFB30024 */  sw         $s3, 0x24($sp)
    /* DBB40 800CCB90 AFB20020 */  sw         $s2, 0x20($sp)
    /* DBB44 800CCB94 12030003 */  beq        $s0, $v1, .L800CCBA4_DBB54
    /* DBB48 800CCB98 AFB1001C */   sw        $s1, 0x1C($sp)
    /* DBB4C 800CCB9C 2402FFFA */  addiu      $v0, $zero, -0x6
    /* DBB50 800CCBA0 16020005 */  bne        $s0, $v0, .L800CCBB8_DBB68
  .L800CCBA4_DBB54:
    /* DBB54 800CCBA4 24040006 */   addiu     $a0, $zero, 0x6
    /* DBB58 800CCBA8 0C030506 */  jal        func_800C1418_D03C8
    /* DBB5C 800CCBAC 24050001 */   addiu     $a1, $zero, 0x1
    /* DBB60 800CCBB0 1000005D */  b          .L800CCD28_DBCD8
    /* DBB64 800CCBB4 8FBF003C */   lw        $ra, 0x3C($sp)
  .L800CCBB8_DBB68:
    /* DBB68 800CCBB8 5203005B */  beql       $s0, $v1, .L800CCD28_DBCD8
    /* DBB6C 800CCBBC 8FBF003C */   lw        $ra, 0x3C($sp)
    /* DBB70 800CCBC0 12020058 */  beq        $s0, $v0, .L800CCD24_DBCD4
    /* DBB74 800CCBC4 241E00FF */   addiu     $fp, $zero, 0xFF
    /* DBB78 800CCBC8 3C158015 */  lui        $s5, %hi(D_80154318)
    /* DBB7C 800CCBCC 3C138015 */  lui        $s3, %hi(D_80156EE4)
    /* DBB80 800CCBD0 26736EE4 */  addiu      $s3, $s3, %lo(D_80156EE4)
    /* DBB84 800CCBD4 26B54318 */  addiu      $s5, $s5, %lo(D_80154318)
    /* DBB88 800CCBD8 24170001 */  addiu      $s7, $zero, 0x1
    /* DBB8C 800CCBDC 2416001C */  addiu      $s6, $zero, 0x1C
    /* DBB90 800CCBE0 24140055 */  addiu      $s4, $zero, 0x55
  .L800CCBE4_DBB94:
    /* DBB94 800CCBE4 02160019 */  multu      $s0, $s6
    /* DBB98 800CCBE8 00102400 */  sll        $a0, $s0, 16
    /* DBB9C 800CCBEC 00044403 */  sra        $t0, $a0, 16
    /* DBBA0 800CCBF0 01002025 */  or         $a0, $t0, $zero
    /* DBBA4 800CCBF4 24050006 */  addiu      $a1, $zero, 0x6
    /* DBBA8 800CCBF8 02E03025 */  or         $a2, $s7, $zero
    /* DBBAC 800CCBFC 00007012 */  mflo       $t6
    /* DBBB0 800CCC00 02AE8821 */  addu       $s1, $s5, $t6
    /* DBBB4 800CCC04 922F0015 */  lbu        $t7, 0x15($s1)
    /* DBBB8 800CCC08 25F8FFFF */  addiu      $t8, $t7, -0x1
    /* DBBBC 800CCC0C 331900FF */  andi       $t9, $t8, 0xFF
    /* DBBC0 800CCC10 17200007 */  bnez       $t9, .L800CCC30_DBBE0
    /* DBBC4 800CCC14 A2380015 */   sb        $t8, 0x15($s1)
    /* DBBC8 800CCC18 0C030693 */  jal        func_800C1A4C_D09FC
    /* DBBCC 800CCC1C 86320004 */   lh        $s2, 0x4($s1)
    /* DBBD0 800CCC20 00128400 */  sll        $s0, $s2, 16
    /* DBBD4 800CCC24 00104C03 */  sra        $t1, $s0, 16
    /* DBBD8 800CCC28 10000039 */  b          .L800CCD10_DBCC0
    /* DBBDC 800CCC2C 01208025 */   or        $s0, $t1, $zero
  .L800CCC30_DBBE0:
    /* DBBE0 800CCC30 26300008 */  addiu      $s0, $s1, 0x8
    /* DBBE4 800CCC34 860A000A */  lh         $t2, 0xA($s0)
    /* DBBE8 800CCC38 314B0080 */  andi       $t3, $t2, 0x80
    /* DBBEC 800CCC3C 16EB000D */  bne        $s7, $t3, .L800CCC74_DBC24
    /* DBBF0 800CCC40 00000000 */   nop
    /* DBBF4 800CCC44 860C0000 */  lh         $t4, 0x0($s0)
    /* DBBF8 800CCC48 866D0000 */  lh         $t5, 0x0($s3)
    /* DBBFC 800CCC4C 860F0002 */  lh         $t7, 0x2($s0)
    /* DBC00 800CCC50 86080004 */  lh         $t0, 0x4($s0)
    /* DBC04 800CCC54 018D7021 */  addu       $t6, $t4, $t5
    /* DBC08 800CCC58 A60E0000 */  sh         $t6, 0x0($s0)
    /* DBC0C 800CCC5C 86780002 */  lh         $t8, 0x2($s3)
    /* DBC10 800CCC60 01F8C821 */  addu       $t9, $t7, $t8
    /* DBC14 800CCC64 A6190002 */  sh         $t9, 0x2($s0)
    /* DBC18 800CCC68 86690004 */  lh         $t1, 0x4($s3)
    /* DBC1C 800CCC6C 01095021 */  addu       $t2, $t0, $t1
    /* DBC20 800CCC70 A60A0004 */  sh         $t2, 0x4($s0)
  .L800CCC74_DBC24:
    /* DBC24 800CCC74 0C000E38 */  jal        func_800038E0_44E0
    /* DBC28 800CCC78 00000000 */   nop
    /* DBC2C 800CCC7C 0054001A */  div        $zero, $v0, $s4
    /* DBC30 800CCC80 00005810 */  mfhi       $t3
    /* DBC34 800CCC84 256C00AA */  addiu      $t4, $t3, 0xAA
    /* DBC38 800CCC88 16800002 */  bnez       $s4, .L800CCC94_DBC44
    /* DBC3C 800CCC8C 00000000 */   nop
    /* DBC40 800CCC90 0007000D */  break      7
  .L800CCC94_DBC44:
    /* DBC44 800CCC94 2401FFFF */  addiu      $at, $zero, -0x1
    /* DBC48 800CCC98 16810004 */  bne        $s4, $at, .L800CCCAC_DBC5C
    /* DBC4C 800CCC9C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DBC50 800CCCA0 14410002 */  bne        $v0, $at, .L800CCCAC_DBC5C
    /* DBC54 800CCCA4 00000000 */   nop
    /* DBC58 800CCCA8 0006000D */  break      6
  .L800CCCAC_DBC5C:
    /* DBC5C 800CCCAC A20C0006 */  sb         $t4, 0x6($s0)
    /* DBC60 800CCCB0 0C000E38 */  jal        func_800038E0_44E0
    /* DBC64 800CCCB4 00000000 */   nop
    /* DBC68 800CCCB8 0054001A */  div        $zero, $v0, $s4
    /* DBC6C 800CCCBC 920F000C */  lbu        $t7, 0xC($s0)
    /* DBC70 800CCCC0 16800002 */  bnez       $s4, .L800CCCCC_DBC7C
    /* DBC74 800CCCC4 00000000 */   nop
    /* DBC78 800CCCC8 0007000D */  break      7
  .L800CCCCC_DBC7C:
    /* DBC7C 800CCCCC 2401FFFF */  addiu      $at, $zero, -0x1
    /* DBC80 800CCCD0 16810004 */  bne        $s4, $at, .L800CCCE4_DBC94
    /* DBC84 800CCCD4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DBC88 800CCCD8 14410002 */  bne        $v0, $at, .L800CCCE4_DBC94
    /* DBC8C 800CCCDC 00000000 */   nop
    /* DBC90 800CCCE0 0006000D */  break      6
  .L800CCCE4_DBC94:
    /* DBC94 800CCCE4 25F80001 */  addiu      $t8, $t7, 0x1
    /* DBC98 800CCCE8 00006810 */  mfhi       $t5
    /* DBC9C 800CCCEC 331900FF */  andi       $t9, $t8, 0xFF
    /* DBCA0 800CCCF0 25AE00AA */  addiu      $t6, $t5, 0xAA
    /* DBCA4 800CCCF4 2B210008 */  slti       $at, $t9, 0x8
    /* DBCA8 800CCCF8 A20E0007 */  sb         $t6, 0x7($s0)
    /* DBCAC 800CCCFC A21E0008 */  sb         $fp, 0x8($s0)
    /* DBCB0 800CCD00 14200002 */  bnez       $at, .L800CCD0C_DBCBC
    /* DBCB4 800CCD04 A218000C */   sb        $t8, 0xC($s0)
    /* DBCB8 800CCD08 A200000C */  sb         $zero, 0xC($s0)
  .L800CCD0C_DBCBC:
    /* DBCBC 800CCD0C 86300004 */  lh         $s0, 0x4($s1)
  .L800CCD10_DBCC0:
    /* DBCC0 800CCD10 2401FFFB */  addiu      $at, $zero, -0x5
    /* DBCC4 800CCD14 12010003 */  beq        $s0, $at, .L800CCD24_DBCD4
    /* DBCC8 800CCD18 2401FFFA */   addiu     $at, $zero, -0x6
    /* DBCCC 800CCD1C 1601FFB1 */  bne        $s0, $at, .L800CCBE4_DBB94
    /* DBCD0 800CCD20 00000000 */   nop
  .L800CCD24_DBCD4:
    /* DBCD4 800CCD24 8FBF003C */  lw         $ra, 0x3C($sp)
  .L800CCD28_DBCD8:
    /* DBCD8 800CCD28 8FB00018 */  lw         $s0, 0x18($sp)
    /* DBCDC 800CCD2C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* DBCE0 800CCD30 8FB20020 */  lw         $s2, 0x20($sp)
    /* DBCE4 800CCD34 8FB30024 */  lw         $s3, 0x24($sp)
    /* DBCE8 800CCD38 8FB40028 */  lw         $s4, 0x28($sp)
    /* DBCEC 800CCD3C 8FB5002C */  lw         $s5, 0x2C($sp)
    /* DBCF0 800CCD40 8FB60030 */  lw         $s6, 0x30($sp)
    /* DBCF4 800CCD44 8FB70034 */  lw         $s7, 0x34($sp)
    /* DBCF8 800CCD48 8FBE0038 */  lw         $fp, 0x38($sp)
    /* DBCFC 800CCD4C 03E00008 */  jr         $ra
    /* DBD00 800CCD50 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800CCB60_DBB10
