nonmatching func_800FD858_10C808, 0x2A8

glabel func_800FD858_10C808
    /* 10C808 800FD858 3C028016 */  lui        $v0, %hi(D_80158FD8)
    /* 10C80C 800FD85C 84428FD8 */  lh         $v0, %lo(D_80158FD8)($v0)
    /* 10C810 800FD860 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 10C814 800FD864 00043400 */  sll        $a2, $a0, 16
    /* 10C818 800FD868 00402825 */  or         $a1, $v0, $zero
    /* 10C81C 800FD86C 00067403 */  sra        $t6, $a2, 16
    /* 10C820 800FD870 01C03025 */  or         $a2, $t6, $zero
    /* 10C824 800FD874 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 10C828 800FD878 AFB10018 */  sw         $s1, 0x18($sp)
    /* 10C82C 800FD87C AFB00014 */  sw         $s0, 0x14($sp)
    /* 10C830 800FD880 AFA40040 */  sw         $a0, 0x40($sp)
    /* 10C834 800FD884 10400031 */  beqz       $v0, .L800FD94C_10C8FC
    /* 10C838 800FD888 2442FFFF */   addiu     $v0, $v0, -0x1
    /* 10C83C 800FD88C 3C0F8016 */  lui        $t7, %hi(D_80158E80)
    /* 10C840 800FD890 25EF8E80 */  addiu      $t7, $t7, %lo(D_80158E80)
    /* 10C844 800FD894 004F1821 */  addu       $v1, $v0, $t7
  .L800FD898_10C848:
    /* 10C848 800FD898 90780000 */  lbu        $t8, 0x0($v1)
    /* 10C84C 800FD89C 0006C880 */  sll        $t9, $a2, 2
    /* 10C850 800FD8A0 0326C823 */  subu       $t9, $t9, $a2
    /* 10C854 800FD8A4 14D80025 */  bne        $a2, $t8, .L800FD93C_10C8EC
    /* 10C858 800FD8A8 0019C8C0 */   sll       $t9, $t9, 3
    /* 10C85C 800FD8AC 0326C823 */  subu       $t9, $t9, $a2
    /* 10C860 800FD8B0 3C088005 */  lui        $t0, %hi(vehicleInstances)
    /* 10C864 800FD8B4 2508DCD0 */  addiu      $t0, $t0, %lo(vehicleInstances)
    /* 10C868 800FD8B8 0019C880 */  sll        $t9, $t9, 2
    /* 10C86C 800FD8BC 03288021 */  addu       $s0, $t9, $t0
    /* 10C870 800FD8C0 8609003C */  lh         $t1, 0x3C($s0)
    /* 10C874 800FD8C4 24040002 */  addiu      $a0, $zero, 0x2
    /* 10C878 800FD8C8 30D100FF */  andi       $s1, $a2, 0xFF
    /* 10C87C 800FD8CC 1520000B */  bnez       $t1, .L800FD8FC_10C8AC
    /* 10C880 800FD8D0 00000000 */   nop
    /* 10C884 800FD8D4 920A001A */  lbu        $t2, 0x1A($s0)
    /* 10C888 800FD8D8 3C0C8025 */  lui        $t4, %hi(D_80257A61)
    /* 10C88C 800FD8DC 000A58C0 */  sll        $t3, $t2, 3
    /* 10C890 800FD8E0 016A5823 */  subu       $t3, $t3, $t2
    /* 10C894 800FD8E4 000B5900 */  sll        $t3, $t3, 4
    /* 10C898 800FD8E8 018B6021 */  addu       $t4, $t4, $t3
    /* 10C89C 800FD8EC 918C7A61 */  lbu        $t4, %lo(D_80257A61)($t4)
    /* 10C8A0 800FD8F0 000C6A00 */  sll        $t5, $t4, 8
    /* 10C8A4 800FD8F4 1000007D */  b          .L800FDAEC_10CA9C
    /* 10C8A8 800FD8F8 A60D003C */   sh        $t5, 0x3C($s0)
  .L800FD8FC_10C8AC:
    /* 10C8AC 800FD8FC 0C039833 */  jal        func_800E60CC_F507C
    /* 10C8B0 800FD900 322500FF */   andi      $a1, $s1, 0xFF
    /* 10C8B4 800FD904 10400079 */  beqz       $v0, .L800FDAEC_10CA9C
    /* 10C8B8 800FD908 24040002 */   addiu     $a0, $zero, 0x2
    /* 10C8BC 800FD90C 0C03978F */  jal        func_800E5E3C_F4DEC
    /* 10C8C0 800FD910 322500FF */   andi      $a1, $s1, 0xFF
    /* 10C8C4 800FD914 920E001A */  lbu        $t6, 0x1A($s0)
    /* 10C8C8 800FD918 3C188025 */  lui        $t8, %hi(D_80257A61)
    /* 10C8CC 800FD91C 000E78C0 */  sll        $t7, $t6, 3
    /* 10C8D0 800FD920 01EE7823 */  subu       $t7, $t7, $t6
    /* 10C8D4 800FD924 000F7900 */  sll        $t7, $t7, 4
    /* 10C8D8 800FD928 030FC021 */  addu       $t8, $t8, $t7
    /* 10C8DC 800FD92C 93187A61 */  lbu        $t8, %lo(D_80257A61)($t8)
    /* 10C8E0 800FD930 0018CA00 */  sll        $t9, $t8, 8
    /* 10C8E4 800FD934 1000006D */  b          .L800FDAEC_10CA9C
    /* 10C8E8 800FD938 A619003C */   sh        $t9, 0x3C($s0)
  .L800FD93C_10C8EC:
    /* 10C8EC 800FD93C 00402825 */  or         $a1, $v0, $zero
    /* 10C8F0 800FD940 2463FFFF */  addiu      $v1, $v1, -0x1
    /* 10C8F4 800FD944 1440FFD4 */  bnez       $v0, .L800FD898_10C848
    /* 10C8F8 800FD948 2442FFFF */   addiu     $v0, $v0, -0x1
  .L800FD94C_10C8FC:
    /* 10C8FC 800FD94C 00064080 */  sll        $t0, $a2, 2
    /* 10C900 800FD950 01064023 */  subu       $t0, $t0, $a2
    /* 10C904 800FD954 000840C0 */  sll        $t0, $t0, 3
    /* 10C908 800FD958 01064023 */  subu       $t0, $t0, $a2
    /* 10C90C 800FD95C 3C098005 */  lui        $t1, %hi(vehicleInstances)
    /* 10C910 800FD960 2529DCD0 */  addiu      $t1, $t1, %lo(vehicleInstances)
    /* 10C914 800FD964 00084080 */  sll        $t0, $t0, 2
    /* 10C918 800FD968 01098021 */  addu       $s0, $t0, $t1
    /* 10C91C 800FD96C 960A0020 */  lhu        $t2, 0x20($s0)
    /* 10C920 800FD970 A7A60042 */  sh         $a2, 0x42($sp)
    /* 10C924 800FD974 354B8001 */  ori        $t3, $t2, 0x8001
    /* 10C928 800FD978 0C03EB44 */  jal        func_800FAD10_109CC0
    /* 10C92C 800FD97C A60B0020 */   sh        $t3, 0x20($s0)
    /* 10C930 800FD980 87A60042 */  lh         $a2, 0x42($sp)
    /* 10C934 800FD984 3C188026 */  lui        $t8, %hi(D_80259490)
    /* 10C938 800FD988 27189490 */  addiu      $t8, $t8, %lo(D_80259490)
    /* 10C93C 800FD98C 000678C0 */  sll        $t7, $a2, 3
    /* 10C940 800FD990 01E67821 */  addu       $t7, $t7, $a2
    /* 10C944 800FD994 000F7840 */  sll        $t7, $t7, 1
    /* 10C948 800FD998 01F88821 */  addu       $s1, $t7, $t8
    /* 10C94C 800FD99C 86390000 */  lh         $t9, 0x0($s1)
    /* 10C950 800FD9A0 920C001A */  lbu        $t4, 0x1A($s0)
    /* 10C954 800FD9A4 3C0E8025 */  lui        $t6, %hi(D_80257A3A)
    /* 10C958 800FD9A8 00194200 */  sll        $t0, $t9, 8
    /* 10C95C 800FD9AC 25090080 */  addiu      $t1, $t0, 0x80
    /* 10C960 800FD9B0 44892000 */  mtc1       $t1, $f4
    /* 10C964 800FD9B4 000C68C0 */  sll        $t5, $t4, 3
    /* 10C968 800FD9B8 01AC6823 */  subu       $t5, $t5, $t4
    /* 10C96C 800FD9BC 46802120 */  cvt.s.w    $f4, $f4
    /* 10C970 800FD9C0 000D6900 */  sll        $t5, $t5, 4
    /* 10C974 800FD9C4 01CD7021 */  addu       $t6, $t6, $t5
    /* 10C978 800FD9C8 95CE7A3A */  lhu        $t6, %lo(D_80257A3A)($t6)
    /* 10C97C 800FD9CC 02002025 */  or         $a0, $s0, $zero
    /* 10C980 800FD9D0 44052000 */  mfc1       $a1, $f4
    /* 10C984 800FD9D4 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* 10C988 800FD9D8 A60E001C */   sh        $t6, 0x1C($s0)
    /* 10C98C 800FD9DC 862A0002 */  lh         $t2, 0x2($s1)
    /* 10C990 800FD9E0 02002025 */  or         $a0, $s0, $zero
    /* 10C994 800FD9E4 000A5A00 */  sll        $t3, $t2, 8
    /* 10C998 800FD9E8 256C0080 */  addiu      $t4, $t3, 0x80
    /* 10C99C 800FD9EC 448C3000 */  mtc1       $t4, $f6
    /* 10C9A0 800FD9F0 00000000 */  nop
    /* 10C9A4 800FD9F4 468031A0 */  cvt.s.w    $f6, $f6
    /* 10C9A8 800FD9F8 44053000 */  mfc1       $a1, $f6
    /* 10C9AC 800FD9FC 0C03ED21 */  jal        func_800FB484_10A434
    /* 10C9B0 800FDA00 00000000 */   nop
    /* 10C9B4 800FDA04 86040000 */  lh         $a0, 0x0($s0)
    /* 10C9B8 800FDA08 86050004 */  lh         $a1, 0x4($s0)
    /* 10C9BC 800FDA0C 0C0479BF */  jal        func_8011E6FC_12D6AC
    /* 10C9C0 800FDA10 27A60032 */   addiu     $a2, $sp, 0x32
    /* 10C9C4 800FDA14 87AD0032 */  lh         $t5, 0x32($sp)
    /* 10C9C8 800FDA18 AFA2002C */  sw         $v0, 0x2C($sp)
    /* 10C9CC 800FDA1C 02002025 */  or         $a0, $s0, $zero
    /* 10C9D0 800FDA20 448D4000 */  mtc1       $t5, $f8
    /* 10C9D4 800FDA24 00000000 */  nop
    /* 10C9D8 800FDA28 46804220 */  cvt.s.w    $f8, $f8
    /* 10C9DC 800FDA2C 44054000 */  mfc1       $a1, $f8
    /* 10C9E0 800FDA30 0C03ED1A */  jal        func_800FB468_10A418
    /* 10C9E4 800FDA34 00000000 */   nop
    /* 10C9E8 800FDA38 8FAE002C */  lw         $t6, 0x2C($sp)
    /* 10C9EC 800FDA3C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 10C9F0 800FDA40 3C028025 */  lui        $v0, %hi(vehicleSpecs)
    /* 10C9F4 800FDA44 11C10004 */  beq        $t6, $at, .L800FDA58_10CA08
    /* 10C9F8 800FDA48 24427A00 */   addiu     $v0, $v0, %lo(vehicleSpecs)
    /* 10C9FC 800FDA4C 960F0020 */  lhu        $t7, 0x20($s0)
    /* 10CA00 800FDA50 35F80800 */  ori        $t8, $t7, 0x800
    /* 10CA04 800FDA54 A6180020 */  sh         $t8, 0x20($s0)
  .L800FDA58_10CA08:
    /* 10CA08 800FDA58 862D000A */  lh         $t5, 0xA($s1)
    /* 10CA0C 800FDA5C 862E0006 */  lh         $t6, 0x6($s1)
    /* 10CA10 800FDA60 86390008 */  lh         $t9, 0x8($s1)
    /* 10CA14 800FDA64 448D5000 */  mtc1       $t5, $f10
    /* 10CA18 800FDA68 000E78C0 */  sll        $t7, $t6, 3
    /* 10CA1C 800FDA6C 01EE7823 */  subu       $t7, $t7, $t6
    /* 10CA20 800FDA70 24084000 */  addiu      $t0, $zero, 0x4000
    /* 10CA24 800FDA74 000F7900 */  sll        $t7, $t7, 4
    /* 10CA28 800FDA78 46805420 */  cvt.s.w    $f16, $f10
    /* 10CA2C 800FDA7C 862A0008 */  lh         $t2, 0x8($s1)
    /* 10CA30 800FDA80 004FC021 */  addu       $t8, $v0, $t7
    /* 10CA34 800FDA84 01194823 */  subu       $t1, $t0, $t9
    /* 10CA38 800FDA88 93080061 */  lbu        $t0, 0x61($t8)
    /* 10CA3C 800FDA8C 240B4000 */  addiu      $t3, $zero, 0x4000
    /* 10CA40 800FDA90 016A6023 */  subu       $t4, $t3, $t2
    /* 10CA44 800FDA94 A609000E */  sh         $t1, 0xE($s0)
    /* 10CA48 800FDA98 A60C0006 */  sh         $t4, 0x6($s0)
    /* 10CA4C 800FDA9C 3C018014 */  lui        $at, %hi(D_80144A80)
    /* 10CA50 800FDAA0 0008CA00 */  sll        $t9, $t0, 8
    /* 10CA54 800FDAA4 44994000 */  mtc1       $t9, $f8
    /* 10CA58 800FDAA8 D4244A80 */  ldc1       $f4, %lo(D_80144A80)($at)
    /* 10CA5C 800FDAAC 460084A1 */  cvt.d.s    $f18, $f16
    /* 10CA60 800FDAB0 468042A0 */  cvt.s.w    $f10, $f8
    /* 10CA64 800FDAB4 46249182 */  mul.d      $f6, $f18, $f4
    /* 10CA68 800FDAB8 920A001A */  lbu        $t2, 0x1A($s0)
    /* 10CA6C 800FDABC 000A60C0 */  sll        $t4, $t2, 3
    /* 10CA70 800FDAC0 46005421 */  cvt.d.s    $f16, $f10
    /* 10CA74 800FDAC4 018A6023 */  subu       $t4, $t4, $t2
    /* 10CA78 800FDAC8 000C6100 */  sll        $t4, $t4, 4
    /* 10CA7C 800FDACC 46268482 */  mul.d      $f18, $f16, $f6
    /* 10CA80 800FDAD0 004C6821 */  addu       $t5, $v0, $t4
    /* 10CA84 800FDAD4 95AE003A */  lhu        $t6, 0x3A($t5)
    /* 10CA88 800FDAD8 A60E001C */  sh         $t6, 0x1C($s0)
    /* 10CA8C 800FDADC 4620910D */  trunc.w.d  $f4, $f18
    /* 10CA90 800FDAE0 440B2000 */  mfc1       $t3, $f4
    /* 10CA94 800FDAE4 00000000 */  nop
    /* 10CA98 800FDAE8 A60B003C */  sh         $t3, 0x3C($s0)
  .L800FDAEC_10CA9C:
    /* 10CA9C 800FDAEC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 10CAA0 800FDAF0 8FB00014 */  lw         $s0, 0x14($sp)
    /* 10CAA4 800FDAF4 8FB10018 */  lw         $s1, 0x18($sp)
    /* 10CAA8 800FDAF8 03E00008 */  jr         $ra
    /* 10CAAC 800FDAFC 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800FD858_10C808
