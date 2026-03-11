nonmatching func_800E093C_EF8EC, 0x1A4

glabel func_800E093C_EF8EC
    /* EF8EC 800E093C 3C0E8003 */  lui        $t6, %hi(D_80031420)
    /* EF8F0 800E0940 8DCE1420 */  lw         $t6, %lo(D_80031420)($t6)
    /* EF8F4 800E0944 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* EF8F8 800E0948 AFBF003C */  sw         $ra, 0x3C($sp)
    /* EF8FC 800E094C 31CF0003 */  andi       $t7, $t6, 0x3
    /* EF900 800E0950 AFA40050 */  sw         $a0, 0x50($sp)
    /* EF904 800E0954 AFA50054 */  sw         $a1, 0x54($sp)
    /* EF908 800E0958 AFA60058 */  sw         $a2, 0x58($sp)
    /* EF90C 800E095C 11E0005C */  beqz       $t7, .L800E0AD0_EFA80
    /* EF910 800E0960 AFA7005C */   sw        $a3, 0x5C($sp)
    /* EF914 800E0964 0C000E38 */  jal        func_800038E0_44E0
    /* EF918 800E0968 00000000 */   nop
    /* EF91C 800E096C 0C000E38 */  jal        func_800038E0_44E0
    /* EF920 800E0970 A7A20046 */   sh        $v0, 0x46($sp)
    /* EF924 800E0974 0C000E38 */  jal        func_800038E0_44E0
    /* EF928 800E0978 A7A20048 */   sh        $v0, 0x48($sp)
    /* EF92C 800E097C 0C000E38 */  jal        func_800038E0_44E0
    /* EF930 800E0980 A7A2004A */   sh        $v0, 0x4A($sp)
    /* EF934 800E0984 24080032 */  addiu      $t0, $zero, 0x32
    /* EF938 800E0988 97B80046 */  lhu        $t8, 0x46($sp)
    /* EF93C 800E098C 97AB0048 */  lhu        $t3, 0x48($sp)
    /* EF940 800E0990 240E0050 */  addiu      $t6, $zero, 0x50
    /* EF944 800E0994 0308001A */  div        $zero, $t8, $t0
    /* EF948 800E0998 00003810 */  mfhi       $a3
    /* EF94C 800E099C 24E7FFE7 */  addiu      $a3, $a3, -0x19
    /* EF950 800E09A0 0007CE00 */  sll        $t9, $a3, 24
    /* EF954 800E09A4 0168001A */  div        $zero, $t3, $t0
    /* EF958 800E09A8 00006010 */  mfhi       $t4
    /* EF95C 800E09AC 00194E03 */  sra        $t1, $t9, 24
    /* EF960 800E09B0 258DFFE7 */  addiu      $t5, $t4, -0x19
    /* EF964 800E09B4 3C0C8004 */  lui        $t4, %hi(currentLevel)
    /* EF968 800E09B8 8D8C7F90 */  lw         $t4, %lo(currentLevel)($t4)
    /* EF96C 800E09BC AFAD0014 */  sw         $t5, 0x14($sp)
    /* EF970 800E09C0 AFAE0018 */  sw         $t6, 0x18($sp)
    /* EF974 800E09C4 3C0E8014 */  lui        $t6, %hi(D_8013E3C0)
    /* EF978 800E09C8 000C6880 */  sll        $t5, $t4, 2
    /* EF97C 800E09CC 25CEE3C0 */  addiu      $t6, $t6, %lo(D_8013E3C0)
    /* EF980 800E09D0 01AC6823 */  subu       $t5, $t5, $t4
    /* EF984 800E09D4 01AE1821 */  addu       $v1, $t5, $t6
    /* EF988 800E09D8 01203825 */  or         $a3, $t1, $zero
    /* EF98C 800E09DC 240A007F */  addiu      $t2, $zero, 0x7F
    /* EF990 800E09E0 240F0008 */  addiu      $t7, $zero, 0x8
    /* EF994 800E09E4 AFAF001C */  sw         $t7, 0x1C($sp)
    /* EF998 800E09E8 AFAA0010 */  sw         $t2, 0x10($sp)
    /* EF99C 800E09EC 906FFFFD */  lbu        $t7, -0x3($v1)
    /* EF9A0 800E09F0 87A40052 */  lh         $a0, 0x52($sp)
    /* EF9A4 800E09F4 87A50056 */  lh         $a1, 0x56($sp)
    /* EF9A8 800E09F8 87A6005A */  lh         $a2, 0x5A($sp)
    /* EF9AC 800E09FC 15000002 */  bnez       $t0, .L800E0A08_EF9B8
    /* EF9B0 800E0A00 00000000 */   nop
    /* EF9B4 800E0A04 0007000D */  break      7
  .L800E0A08_EF9B8:
    /* EF9B8 800E0A08 2401FFFF */  addiu      $at, $zero, -0x1
    /* EF9BC 800E0A0C 15010004 */  bne        $t0, $at, .L800E0A20_EF9D0
    /* EF9C0 800E0A10 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EF9C4 800E0A14 17010002 */  bne        $t8, $at, .L800E0A20_EF9D0
    /* EF9C8 800E0A18 00000000 */   nop
    /* EF9CC 800E0A1C 0006000D */  break      6
  .L800E0A20_EF9D0:
    /* EF9D0 800E0A20 97B8004A */  lhu        $t8, 0x4A($sp)
    /* EF9D4 800E0A24 15000002 */  bnez       $t0, .L800E0A30_EF9E0
    /* EF9D8 800E0A28 00000000 */   nop
    /* EF9DC 800E0A2C 0007000D */  break      7
  .L800E0A30_EF9E0:
    /* EF9E0 800E0A30 2401FFFF */  addiu      $at, $zero, -0x1
    /* EF9E4 800E0A34 15010004 */  bne        $t0, $at, .L800E0A48_EF9F8
    /* EF9E8 800E0A38 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EF9EC 800E0A3C 15610002 */  bne        $t3, $at, .L800E0A48_EF9F8
    /* EF9F0 800E0A40 00000000 */   nop
    /* EF9F4 800E0A44 0006000D */  break      6
  .L800E0A48_EF9F8:
    /* EF9F8 800E0A48 2401000A */  addiu      $at, $zero, 0xA
    /* EF9FC 800E0A4C 0301001A */  div        $zero, $t8, $at
    /* EFA00 800E0A50 0000C810 */  mfhi       $t9
    /* EFA04 800E0A54 24010037 */  addiu      $at, $zero, 0x37
    /* EFA08 800E0A58 27290014 */  addiu      $t1, $t9, 0x14
    /* EFA0C 800E0A5C 0041001A */  div        $zero, $v0, $at
    /* EFA10 800E0A60 9079FFFF */  lbu        $t9, -0x1($v1)
    /* EFA14 800E0A64 9078FFFE */  lbu        $t8, -0x2($v1)
    /* EFA18 800E0A68 00005010 */  mfhi       $t2
    /* EFA1C 800E0A6C AFA90020 */  sw         $t1, 0x20($sp)
    /* EFA20 800E0A70 240900FF */  addiu      $t1, $zero, 0xFF
    /* EFA24 800E0A74 254B0023 */  addiu      $t3, $t2, 0x23
    /* EFA28 800E0A78 AFAB0024 */  sw         $t3, 0x24($sp)
    /* EFA2C 800E0A7C AFA90034 */  sw         $t1, 0x34($sp)
    /* EFA30 800E0A80 AFAF0028 */  sw         $t7, 0x28($sp)
    /* EFA34 800E0A84 AFB90030 */  sw         $t9, 0x30($sp)
    /* EFA38 800E0A88 0C03297B */  jal        func_800CA5EC_D959C
    /* EFA3C 800E0A8C AFB8002C */   sw        $t8, 0x2C($sp)
    /* EFA40 800E0A90 240100FB */  addiu      $at, $zero, 0xFB
    /* EFA44 800E0A94 1041000E */  beq        $v0, $at, .L800E0AD0_EFA80
    /* EFA48 800E0A98 304B00FF */   andi      $t3, $v0, 0xFF
    /* EFA4C 800E0A9C 000B6080 */  sll        $t4, $t3, 2
    /* EFA50 800E0AA0 018B6023 */  subu       $t4, $t4, $t3
    /* EFA54 800E0AA4 000C6080 */  sll        $t4, $t4, 2
    /* EFA58 800E0AA8 3C0D8015 */  lui        $t5, %hi(D_80154090)
    /* EFA5C 800E0AAC 01AC6821 */  addu       $t5, $t5, $t4
    /* EFA60 800E0AB0 85AD4090 */  lh         $t5, %lo(D_80154090)($t5)
    /* EFA64 800E0AB4 97AA005E */  lhu        $t2, 0x5E($sp)
    /* EFA68 800E0AB8 3C018015 */  lui        $at, %hi(D_80154326)
    /* EFA6C 800E0ABC 000D70C0 */  sll        $t6, $t5, 3
    /* EFA70 800E0AC0 01CD7023 */  subu       $t6, $t6, $t5
    /* EFA74 800E0AC4 000E7080 */  sll        $t6, $t6, 2
    /* EFA78 800E0AC8 002E0821 */  addu       $at, $at, $t6
    /* EFA7C 800E0ACC A42A4326 */  sh         $t2, %lo(D_80154326)($at)
  .L800E0AD0_EFA80:
    /* EFA80 800E0AD0 8FBF003C */  lw         $ra, 0x3C($sp)
    /* EFA84 800E0AD4 27BD0050 */  addiu      $sp, $sp, 0x50
    /* EFA88 800E0AD8 03E00008 */  jr         $ra
    /* EFA8C 800E0ADC 00000000 */   nop
endlabel func_800E093C_EF8EC
