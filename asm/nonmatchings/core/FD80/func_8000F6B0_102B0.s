nonmatching func_8000F6B0_102B0, 0x75C

glabel func_8000F6B0_102B0
    /* 102B0 8000F6B0 27BDFF60 */  addiu      $sp, $sp, -0xA0
    /* 102B4 8000F6B4 3C028000 */  lui        $v0, %hi(osTvType)
    /* 102B8 8000F6B8 8C420300 */  lw         $v0, %lo(osTvType)($v0)
    /* 102BC 8000F6BC AFB50034 */  sw         $s5, 0x34($sp)
    /* 102C0 8000F6C0 AFB40030 */  sw         $s4, 0x30($sp)
    /* 102C4 8000F6C4 AFB00020 */  sw         $s0, 0x20($sp)
    /* 102C8 8000F6C8 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 102CC 8000F6CC AFBE0040 */  sw         $fp, 0x40($sp)
    /* 102D0 8000F6D0 AFB7003C */  sw         $s7, 0x3C($sp)
    /* 102D4 8000F6D4 AFB60038 */  sw         $s6, 0x38($sp)
    /* 102D8 8000F6D8 AFB3002C */  sw         $s3, 0x2C($sp)
    /* 102DC 8000F6DC AFB20028 */  sw         $s2, 0x28($sp)
    /* 102E0 8000F6E0 AFB10024 */  sw         $s1, 0x24($sp)
    /* 102E4 8000F6E4 AFA400A0 */  sw         $a0, 0xA0($sp)
    /* 102E8 8000F6E8 AFA0007C */  sw         $zero, 0x7C($sp)
    /* 102EC 8000F6EC 0000A025 */  or         $s4, $zero, $zero
    /* 102F0 8000F6F0 00008025 */  or         $s0, $zero, $zero
    /* 102F4 8000F6F4 1440000D */  bnez       $v0, .L8000F72C_1032C
    /* 102F8 8000F6F8 0000A825 */   or        $s5, $zero, $zero
    /* 102FC 8000F6FC 3C118007 */  lui        $s1, %hi(D_800680A0)
    /* 10300 8000F700 263180A0 */  addiu      $s1, $s1, %lo(D_800680A0)
    /* 10304 8000F704 3C058007 */  lui        $a1, %hi(D_8006A330)
    /* 10308 8000F708 240E0001 */  addiu      $t6, $zero, 0x1
    /* 1030C 8000F70C AFAE0010 */  sw         $t6, 0x10($sp)
    /* 10310 8000F710 24A5A330 */  addiu      $a1, $a1, %lo(D_8006A330)
    /* 10314 8000F714 02202025 */  or         $a0, $s1, $zero
    /* 10318 8000F718 2406000C */  addiu      $a2, $zero, 0xC
    /* 1031C 8000F71C 0C006E50 */  jal        osCreateScheduler
    /* 10320 8000F720 24070010 */   addiu     $a3, $zero, 0x10
    /* 10324 8000F724 10000019 */  b          .L8000F78C_1038C
    /* 10328 8000F728 00000000 */   nop
  .L8000F72C_1032C:
    /* 1032C 8000F72C 24010002 */  addiu      $at, $zero, 0x2
    /* 10330 8000F730 1441000D */  bne        $v0, $at, .L8000F768_10368
    /* 10334 8000F734 3C118007 */   lui       $s1, %hi(D_800680A0)
    /* 10338 8000F738 3C118007 */  lui        $s1, %hi(D_800680A0)
    /* 1033C 8000F73C 263180A0 */  addiu      $s1, $s1, %lo(D_800680A0)
    /* 10340 8000F740 3C058007 */  lui        $a1, %hi(D_8006A330)
    /* 10344 8000F744 240F0001 */  addiu      $t7, $zero, 0x1
    /* 10348 8000F748 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1034C 8000F74C 24A5A330 */  addiu      $a1, $a1, %lo(D_8006A330)
    /* 10350 8000F750 02202025 */  or         $a0, $s1, $zero
    /* 10354 8000F754 2406000C */  addiu      $a2, $zero, 0xC
    /* 10358 8000F758 0C006E50 */  jal        osCreateScheduler
    /* 1035C 8000F75C 2407001E */   addiu     $a3, $zero, 0x1E
    /* 10360 8000F760 1000000A */  b          .L8000F78C_1038C
    /* 10364 8000F764 00000000 */   nop
  .L8000F768_10368:
    /* 10368 8000F768 263180A0 */  addiu      $s1, $s1, %lo(D_800680A0)
    /* 1036C 8000F76C 3C058007 */  lui        $a1, %hi(D_8006A330)
    /* 10370 8000F770 24180001 */  addiu      $t8, $zero, 0x1
    /* 10374 8000F774 AFB80010 */  sw         $t8, 0x10($sp)
    /* 10378 8000F778 24A5A330 */  addiu      $a1, $a1, %lo(D_8006A330)
    /* 1037C 8000F77C 02202025 */  or         $a0, $s1, $zero
    /* 10380 8000F780 2406000C */  addiu      $a2, $zero, 0xC
    /* 10384 8000F784 0C006E50 */  jal        osCreateScheduler
    /* 10388 8000F788 24070002 */   addiu     $a3, $zero, 0x2
  .L8000F78C_1038C:
    /* 1038C 8000F78C 3C098007 */  lui        $t1, %hi(D_8006A940)
    /* 10390 8000F790 2529A940 */  addiu      $t1, $t1, %lo(D_8006A940)
    /* 10394 8000F794 3C038026 */  lui        $v1, %hi(D_80267080)
    /* 10398 8000F798 3C078029 */  lui        $a3, %hi(D_8028C880)
    /* 1039C 8000F79C 3C088006 */  lui        $t0, %hi(D_8005BB48)
    /* 103A0 8000F7A0 2508BB48 */  addiu      $t0, $t0, %lo(D_8005BB48)
    /* 103A4 8000F7A4 24E7C880 */  addiu      $a3, $a3, %lo(D_8028C880)
    /* 103A8 8000F7A8 24637080 */  addiu      $v1, $v1, %lo(D_80267080)
    /* 103AC 8000F7AC 24020002 */  addiu      $v0, $zero, 0x2
    /* 103B0 8000F7B0 A5220068 */  sh         $v0, 0x68($t1)
    /* 103B4 8000F7B4 A52200F8 */  sh         $v0, 0xF8($t1)
    /* 103B8 8000F7B8 AD230088 */  sw         $v1, 0x88($t1)
    /* 103BC 8000F7BC AD270118 */  sw         $a3, 0x118($t1)
    /* 103C0 8000F7C0 AD030000 */  sw         $v1, 0x0($t0)
    /* 103C4 8000F7C4 AD070004 */  sw         $a3, 0x4($t0)
    /* 103C8 8000F7C8 3C018003 */  lui        $at, %hi(D_80031B84)
    /* 103CC 8000F7CC 3C068007 */  lui        $a2, %hi(D_8006A908)
    /* 103D0 8000F7D0 AC201B84 */  sw         $zero, %lo(D_80031B84)($at)
    /* 103D4 8000F7D4 24C6A908 */  addiu      $a2, $a2, %lo(D_8006A908)
    /* 103D8 8000F7D8 02202025 */  or         $a0, $s1, $zero
    /* 103DC 8000F7DC 0C006E3C */  jal        osScAddClient
    /* 103E0 8000F7E0 27A50080 */   addiu     $a1, $sp, 0x80
    /* 103E4 8000F7E4 0C004A9D */  jal        func_80012A74_13674
    /* 103E8 8000F7E8 00000000 */   nop
    /* 103EC 8000F7EC 3C048007 */  lui        $a0, %hi(D_8006A8D0)
    /* 103F0 8000F7F0 3C058007 */  lui        $a1, %hi(D_80068038)
    /* 103F4 8000F7F4 8CA58038 */  lw         $a1, %lo(D_80068038)($a1)
    /* 103F8 8000F7F8 2484A8D0 */  addiu      $a0, $a0, %lo(D_8006A8D0)
    /* 103FC 8000F7FC 0C0070F4 */  jal        osSendMesg
    /* 10400 8000F800 24060001 */   addiu     $a2, $zero, 0x1
    /* 10404 8000F804 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 10408 8000F808 44810000 */  mtc1       $at, $f0
    /* 1040C 8000F80C 3C018007 */  lui        $at, %hi(D_8006832C)
    /* 10410 8000F810 240A0000 */  addiu      $t2, $zero, 0x0
    /* 10414 8000F814 240B0CEC */  addiu      $t3, $zero, 0xCEC
    /* 10418 8000F818 AC2B832C */  sw         $t3, %lo(D_8006832C)($at)
    /* 1041C 8000F81C AC2A8328 */  sw         $t2, %lo(D_80068328)($at)
    /* 10420 8000F820 3C018006 */  lui        $at, %hi(D_8005BB54)
    /* 10424 8000F824 240C0000 */  addiu      $t4, $zero, 0x0
    /* 10428 8000F828 240D0CEC */  addiu      $t5, $zero, 0xCEC
    /* 1042C 8000F82C AC2DBB54 */  sw         $t5, %lo(D_8005BB54)($at)
    /* 10430 8000F830 AC2CBB50 */  sw         $t4, %lo(D_8005BB50)($at)
    /* 10434 8000F834 3C018006 */  lui        $at, %hi(D_8005BF5C)
    /* 10438 8000F838 240E0000 */  addiu      $t6, $zero, 0x0
    /* 1043C 8000F83C 240F0CEC */  addiu      $t7, $zero, 0xCEC
    /* 10440 8000F840 AC2FBF5C */  sw         $t7, %lo(D_8005BF5C)($at)
    /* 10444 8000F844 AC2EBF58 */  sw         $t6, %lo(D_8005BF58)($at)
    /* 10448 8000F848 3C018006 */  lui        $at, %hi(D_8005C764)
    /* 1044C 8000F84C 24180000 */  addiu      $t8, $zero, 0x0
    /* 10450 8000F850 24190CEC */  addiu      $t9, $zero, 0xCEC
    /* 10454 8000F854 AC39C764 */  sw         $t9, %lo(D_8005C764)($at)
    /* 10458 8000F858 AC38C760 */  sw         $t8, %lo(D_8005C760)($at)
    /* 1045C 8000F85C 3C018006 */  lui        $at, %hi(D_8005CF68)
    /* 10460 8000F860 AC2ACF68 */  sw         $t2, %lo(D_8005CF68)($at)
    /* 10464 8000F864 AC2BCF6C */  sw         $t3, %lo(D_8005CF6C)($at)
    /* 10468 8000F868 3C018006 */  lui        $at, %hi(D_80064F70)
    /* 1046C 8000F86C AC2C4F70 */  sw         $t4, %lo(D_80064F70)($at)
    /* 10470 8000F870 AC2D4F74 */  sw         $t5, %lo(D_80064F74)($at)
    /* 10474 8000F874 3C018006 */  lui        $at, %hi(D_80065F78)
    /* 10478 8000F878 AC2E5F78 */  sw         $t6, %lo(D_80065F78)($at)
    /* 1047C 8000F87C AC2F5F7C */  sw         $t7, %lo(D_80065F7C)($at)
    /* 10480 8000F880 3C018006 */  lui        $at, %hi(D_80066780)
    /* 10484 8000F884 AC386780 */  sw         $t8, %lo(D_80066780)($at)
    /* 10488 8000F888 AC396784 */  sw         $t9, %lo(D_80066784)($at)
    /* 1048C 8000F88C 3C118007 */  lui        $s1, %hi(D_8006809C)
    /* 10490 8000F890 3C138007 */  lui        $s3, %hi(D_8006807C)
    /* 10494 8000F894 3C168007 */  lui        $s6, %hi(D_80068080)
    /* 10498 8000F898 26D68080 */  addiu      $s6, $s6, %lo(D_80068080)
    /* 1049C 8000F89C 2673807C */  addiu      $s3, $s3, %lo(D_8006807C)
    /* 104A0 8000F8A0 2631809C */  addiu      $s1, $s1, %lo(D_8006809C)
    /* 104A4 8000F8A4 AEC00000 */  sw         $zero, 0x0($s6)
    /* 104A8 8000F8A8 AE600000 */  sw         $zero, 0x0($s3)
    /* 104AC 8000F8AC AE200000 */  sw         $zero, 0x0($s1)
    /* 104B0 8000F8B0 3C018007 */  lui        $at, %hi(D_80068094)
    /* 104B4 8000F8B4 E4208094 */  swc1       $f0, %lo(D_80068094)($at)
    /* 104B8 8000F8B8 3C018007 */  lui        $at, %hi(D_80068098)
    /* 104BC 8000F8BC 24040140 */  addiu      $a0, $zero, 0x140
    /* 104C0 8000F8C0 0C003D92 */  jal        setVideoInterfaceXSize
    /* 104C4 8000F8C4 E4208098 */   swc1      $f0, %lo(D_80068098)($at)
    /* 104C8 8000F8C8 0C003D9F */  jal        setVideoInterfaceYSize
    /* 104CC 8000F8CC 240400F0 */   addiu     $a0, $zero, 0xF0
    /* 104D0 8000F8D0 240A0400 */  addiu      $t2, $zero, 0x400
    /* 104D4 8000F8D4 3C018003 */  lui        $at, %hi(D_80035B5C)
    /* 104D8 8000F8D8 AC2A5B5C */  sw         $t2, %lo(D_80035B5C)($at)
    /* 104DC 8000F8DC 0C007D34 */  jal        osViBlack
    /* 104E0 8000F8E0 24040001 */   addiu     $a0, $zero, 0x1
    /* 104E4 8000F8E4 241E0004 */  addiu      $fp, $zero, 0x4
    /* 104E8 8000F8E8 AEDE0000 */  sw         $fp, 0x0($s6)
    /* 104EC 8000F8EC 24170001 */  addiu      $s7, $zero, 0x1
    /* 104F0 8000F8F0 8FB20068 */  lw         $s2, 0x68($sp)
  .L8000F8F4_104F4:
    /* 104F4 8000F8F4 3C0C8007 */  lui        $t4, %hi(D_80068328)
    /* 104F8 8000F8F8 8D8C8328 */  lw         $t4, %lo(D_80068328)($t4)
    /* 104FC 8000F8FC 3C0D8007 */  lui        $t5, %hi(D_8006832C)
    /* 10500 8000F900 8DAD832C */  lw         $t5, %lo(D_8006832C)($t5)
    /* 10504 8000F904 15800002 */  bnez       $t4, .L8000F910_10510
    /* 10508 8000F908 24010CEC */   addiu     $at, $zero, 0xCEC
    /* 1050C 8000F90C 11A10003 */  beq        $t5, $at, .L8000F91C_1051C
  .L8000F910_10510:
    /* 10510 8000F910 3C048003 */   lui       $a0, %hi(D_80037660)
    /* 10514 8000F914 0C00731B */  jal        osSyncPrintf
    /* 10518 8000F918 24847660 */   addiu     $a0, $a0, %lo(D_80037660)
  .L8000F91C_1051C:
    /* 1051C 8000F91C 3C0E8006 */  lui        $t6, %hi(D_8005BB50)
    /* 10520 8000F920 8DCEBB50 */  lw         $t6, %lo(D_8005BB50)($t6)
    /* 10524 8000F924 3C0F8006 */  lui        $t7, %hi(D_8005BB54)
    /* 10528 8000F928 8DEFBB54 */  lw         $t7, %lo(D_8005BB54)($t7)
    /* 1052C 8000F92C 15C00002 */  bnez       $t6, .L8000F938_10538
    /* 10530 8000F930 24010CEC */   addiu     $at, $zero, 0xCEC
    /* 10534 8000F934 11E10003 */  beq        $t7, $at, .L8000F944_10544
  .L8000F938_10538:
    /* 10538 8000F938 3C048003 */   lui       $a0, %hi(D_8003767C)
    /* 1053C 8000F93C 0C00731B */  jal        osSyncPrintf
    /* 10540 8000F940 2484767C */   addiu     $a0, $a0, %lo(D_8003767C)
  .L8000F944_10544:
    /* 10544 8000F944 3C188006 */  lui        $t8, %hi(D_8005BF58)
    /* 10548 8000F948 8F18BF58 */  lw         $t8, %lo(D_8005BF58)($t8)
    /* 1054C 8000F94C 3C198006 */  lui        $t9, %hi(D_8005BF5C)
    /* 10550 8000F950 8F39BF5C */  lw         $t9, %lo(D_8005BF5C)($t9)
    /* 10554 8000F954 17000002 */  bnez       $t8, .L8000F960_10560
    /* 10558 8000F958 24010CEC */   addiu     $at, $zero, 0xCEC
    /* 1055C 8000F95C 13210003 */  beq        $t9, $at, .L8000F96C_1056C
  .L8000F960_10560:
    /* 10560 8000F960 3C048003 */   lui       $a0, %hi(D_80037694)
    /* 10564 8000F964 0C00731B */  jal        osSyncPrintf
    /* 10568 8000F968 24847694 */   addiu     $a0, $a0, %lo(D_80037694)
  .L8000F96C_1056C:
    /* 1056C 8000F96C 3C0A8006 */  lui        $t2, %hi(D_8005C760)
    /* 10570 8000F970 8D4AC760 */  lw         $t2, %lo(D_8005C760)($t2)
    /* 10574 8000F974 3C0B8006 */  lui        $t3, %hi(D_8005C764)
    /* 10578 8000F978 8D6BC764 */  lw         $t3, %lo(D_8005C764)($t3)
    /* 1057C 8000F97C 15400002 */  bnez       $t2, .L8000F988_10588
    /* 10580 8000F980 24010CEC */   addiu     $at, $zero, 0xCEC
    /* 10584 8000F984 11610003 */  beq        $t3, $at, .L8000F994_10594
  .L8000F988_10588:
    /* 10588 8000F988 3C048003 */   lui       $a0, %hi(D_800376AC)
    /* 1058C 8000F98C 0C00731B */  jal        osSyncPrintf
    /* 10590 8000F990 248476AC */   addiu     $a0, $a0, %lo(D_800376AC)
  .L8000F994_10594:
    /* 10594 8000F994 3C0C8006 */  lui        $t4, %hi(D_8005CF68)
    /* 10598 8000F998 8D8CCF68 */  lw         $t4, %lo(D_8005CF68)($t4)
    /* 1059C 8000F99C 3C0D8006 */  lui        $t5, %hi(D_8005CF6C)
    /* 105A0 8000F9A0 8DADCF6C */  lw         $t5, %lo(D_8005CF6C)($t5)
    /* 105A4 8000F9A4 15800002 */  bnez       $t4, .L8000F9B0_105B0
    /* 105A8 8000F9A8 24010CEC */   addiu     $at, $zero, 0xCEC
    /* 105AC 8000F9AC 11A10003 */  beq        $t5, $at, .L8000F9BC_105BC
  .L8000F9B0_105B0:
    /* 105B0 8000F9B0 3C048003 */   lui       $a0, %hi(D_800376C0)
    /* 105B4 8000F9B4 0C00731B */  jal        osSyncPrintf
    /* 105B8 8000F9B8 248476C0 */   addiu     $a0, $a0, %lo(D_800376C0)
  .L8000F9BC_105BC:
    /* 105BC 8000F9BC 3C0E8006 */  lui        $t6, %hi(D_80064F70)
    /* 105C0 8000F9C0 8DCE4F70 */  lw         $t6, %lo(D_80064F70)($t6)
    /* 105C4 8000F9C4 3C0F8006 */  lui        $t7, %hi(D_80064F74)
    /* 105C8 8000F9C8 8DEF4F74 */  lw         $t7, %lo(D_80064F74)($t7)
    /* 105CC 8000F9CC 15C00002 */  bnez       $t6, .L8000F9D8_105D8
    /* 105D0 8000F9D0 24010CEC */   addiu     $at, $zero, 0xCEC
    /* 105D4 8000F9D4 11E10003 */  beq        $t7, $at, .L8000F9E4_105E4
  .L8000F9D8_105D8:
    /* 105D8 8000F9D8 3C048003 */   lui       $a0, %hi(D_800376D8)
    /* 105DC 8000F9DC 0C00731B */  jal        osSyncPrintf
    /* 105E0 8000F9E0 248476D8 */   addiu     $a0, $a0, %lo(D_800376D8)
  .L8000F9E4_105E4:
    /* 105E4 8000F9E4 3C188006 */  lui        $t8, %hi(D_80065F78)
    /* 105E8 8000F9E8 8F185F78 */  lw         $t8, %lo(D_80065F78)($t8)
    /* 105EC 8000F9EC 3C198006 */  lui        $t9, %hi(D_80065F7C)
    /* 105F0 8000F9F0 8F395F7C */  lw         $t9, %lo(D_80065F7C)($t9)
    /* 105F4 8000F9F4 17000002 */  bnez       $t8, .L8000FA00_10600
    /* 105F8 8000F9F8 24010CEC */   addiu     $at, $zero, 0xCEC
    /* 105FC 8000F9FC 13210003 */  beq        $t9, $at, .L8000FA0C_1060C
  .L8000FA00_10600:
    /* 10600 8000FA00 3C048003 */   lui       $a0, %hi(D_800376F0)
    /* 10604 8000FA04 0C00731B */  jal        osSyncPrintf
    /* 10608 8000FA08 248476F0 */   addiu     $a0, $a0, %lo(D_800376F0)
  .L8000FA0C_1060C:
    /* 1060C 8000FA0C 3C0A8006 */  lui        $t2, %hi(D_80066780)
    /* 10610 8000FA10 8D4A6780 */  lw         $t2, %lo(D_80066780)($t2)
    /* 10614 8000FA14 3C0B8006 */  lui        $t3, %hi(D_80066784)
    /* 10618 8000FA18 8D6B6784 */  lw         $t3, %lo(D_80066784)($t3)
    /* 1061C 8000FA1C 15400002 */  bnez       $t2, .L8000FA28_10628
    /* 10620 8000FA20 24010CEC */   addiu     $at, $zero, 0xCEC
    /* 10624 8000FA24 11610003 */  beq        $t3, $at, .L8000FA34_10634
  .L8000FA28_10628:
    /* 10628 8000FA28 3C048003 */   lui       $a0, %hi(D_8003770C)
    /* 1062C 8000FA2C 0C00731B */  jal        osSyncPrintf
    /* 10630 8000FA30 2484770C */   addiu     $a0, $a0, %lo(D_8003770C)
  .L8000FA34_10634:
    /* 10634 8000FA34 3C048007 */  lui        $a0, %hi(D_8006A908)
    /* 10638 8000FA38 2484A908 */  addiu      $a0, $a0, %lo(D_8006A908)
    /* 1063C 8000FA3C 27A50070 */  addiu      $a1, $sp, 0x70
    /* 10640 8000FA40 0C006E9C */  jal        osRecvMesg
    /* 10644 8000FA44 02E03025 */   or        $a2, $s7, $zero
    /* 10648 8000FA48 8FAC0070 */  lw         $t4, 0x70($sp)
    /* 1064C 8000FA4C 3C028003 */  lui        $v0, %hi(D_800313D4)
    /* 10650 8000FA50 244213D4 */  addiu      $v0, $v0, %lo(D_800313D4)
    /* 10654 8000FA54 85830000 */  lh         $v1, 0x0($t4)
    /* 10658 8000FA58 24010002 */  addiu      $at, $zero, 0x2
    /* 1065C 8000FA5C 50770008 */  beql       $v1, $s7, .L8000FA80_10680
    /* 10660 8000FA60 8C4D0000 */   lw        $t5, 0x0($v0)
    /* 10664 8000FA64 106100A7 */  beq        $v1, $at, .L8000FD04_10904
    /* 10668 8000FA68 00000000 */   nop
    /* 1066C 8000FA6C 107E00C1 */  beq        $v1, $fp, .L8000FD74_10974
    /* 10670 8000FA70 00000000 */   nop
    /* 10674 8000FA74 1000FF9F */  b          .L8000F8F4_104F4
    /* 10678 8000FA78 00000000 */   nop
    /* 1067C 8000FA7C 8C4D0000 */  lw         $t5, 0x0($v0)
  .L8000FA80_10680:
    /* 10680 8000FA80 26B50001 */  addiu      $s5, $s5, 0x1
    /* 10684 8000FA84 00157C00 */  sll        $t7, $s5, 16
    /* 10688 8000FA88 2A010002 */  slti       $at, $s0, 0x2
    /* 1068C 8000FA8C 25AE0001 */  addiu      $t6, $t5, 0x1
    /* 10690 8000FA90 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 10694 8000FA94 14200002 */  bnez       $at, .L8000FAA0_106A0
    /* 10698 8000FA98 000FAC03 */   sra       $s5, $t7, 16
    /* 1069C 8000FA9C 26520001 */  addiu      $s2, $s2, 0x1
  .L8000FAA0_106A0:
    /* 106A0 8000FAA0 2A41000B */  slti       $at, $s2, 0xB
    /* 106A4 8000FAA4 14200004 */  bnez       $at, .L8000FAB8_106B8
    /* 106A8 8000FAA8 3C048003 */   lui       $a0, %hi(D_80037728)
    /* 106AC 8000FAAC 24847728 */  addiu      $a0, $a0, %lo(D_80037728)
    /* 106B0 8000FAB0 0C00731B */  jal        osSyncPrintf
    /* 106B4 8000FAB4 00009025 */   or        $s2, $zero, $zero
  .L8000FAB8_106B8:
    /* 106B8 8000FAB8 0C004E06 */  jal        func_80013818_14418
    /* 106BC 8000FABC 00000000 */   nop
    /* 106C0 8000FAC0 0C00130D */  jal        func_80004C34_5834
    /* 106C4 8000FAC4 00000000 */   nop
    /* 106C8 8000FAC8 3C028005 */  lui        $v0, %hi(D_80052ACA)
    /* 106CC 8000FACC 90422ACA */  lbu        $v0, %lo(D_80052ACA)($v0)
    /* 106D0 8000FAD0 24010002 */  addiu      $at, $zero, 0x2
    /* 106D4 8000FAD4 3C0B8005 */  lui        $t3, %hi(D_80052ACC)
    /* 106D8 8000FAD8 10400007 */  beqz       $v0, .L8000FAF8_106F8
    /* 106DC 8000FADC 00000000 */   nop
    /* 106E0 8000FAE0 10410005 */  beq        $v0, $at, .L8000FAF8_106F8
    /* 106E4 8000FAE4 24010005 */   addiu     $at, $zero, 0x5
    /* 106E8 8000FAE8 10410003 */  beq        $v0, $at, .L8000FAF8_106F8
    /* 106EC 8000FAEC 00000000 */   nop
    /* 106F0 8000FAF0 17C2000A */  bne        $fp, $v0, .L8000FB1C_1071C
    /* 106F4 8000FAF4 00171C00 */   sll       $v1, $s7, 16
  .L8000FAF8_106F8:
    /* 106F8 8000FAF8 3C028005 */  lui        $v0, %hi(gameplayMode)
    /* 106FC 8000FAFC 8C422ADC */  lw         $v0, %lo(gameplayMode)($v0)
    /* 10700 8000FB00 24010006 */  addiu      $at, $zero, 0x6
    /* 10704 8000FB04 14410003 */  bne        $v0, $at, .L8000FB14_10714
    /* 10708 8000FB08 00000000 */   nop
    /* 1070C 8000FB0C 10000007 */  b          .L8000FB2C_1072C
    /* 10710 8000FB10 24030002 */   addiu     $v1, $zero, 0x2
  .L8000FB14_10714:
    /* 10714 8000FB14 10000005 */  b          .L8000FB2C_1072C
    /* 10718 8000FB18 24030003 */   addiu     $v1, $zero, 0x3
  .L8000FB1C_1071C:
    /* 1071C 8000FB1C 0003CC03 */  sra        $t9, $v1, 16
    /* 10720 8000FB20 3C028005 */  lui        $v0, %hi(gameplayMode)
    /* 10724 8000FB24 8C422ADC */  lw         $v0, %lo(gameplayMode)($v0)
    /* 10728 8000FB28 03201825 */  or         $v1, $t9, $zero
  .L8000FB2C_1072C:
    /* 1072C 8000FB2C 10400009 */  beqz       $v0, .L8000FB54_10754
    /* 10730 8000FB30 2401000E */   addiu     $at, $zero, 0xE
    /* 10734 8000FB34 10410007 */  beq        $v0, $at, .L8000FB54_10754
    /* 10738 8000FB38 24010007 */   addiu     $at, $zero, 0x7
    /* 1073C 8000FB3C 50410006 */  beql       $v0, $at, .L8000FB58_10758
    /* 10740 8000FB40 00171C00 */   sll       $v1, $s7, 16
    /* 10744 8000FB44 13C20003 */  beq        $fp, $v0, .L8000FB54_10754
    /* 10748 8000FB48 24010010 */   addiu     $at, $zero, 0x10
    /* 1074C 8000FB4C 14410004 */  bne        $v0, $at, .L8000FB60_10760
    /* 10750 8000FB50 00000000 */   nop
  .L8000FB54_10754:
    /* 10754 8000FB54 00171C00 */  sll        $v1, $s7, 16
  .L8000FB58_10758:
    /* 10758 8000FB58 00035403 */  sra        $t2, $v1, 16
    /* 1075C 8000FB5C 01401825 */  or         $v1, $t2, $zero
  .L8000FB60_10760:
    /* 10760 8000FB60 916B2ACC */  lbu        $t3, %lo(D_80052ACC)($t3)
    /* 10764 8000FB64 2A010002 */  slti       $at, $s0, 0x2
    /* 10768 8000FB68 11600002 */  beqz       $t3, .L8000FB74_10774
    /* 1076C 8000FB6C 00000000 */   nop
    /* 10770 8000FB70 24030002 */  addiu      $v1, $zero, 0x2
  .L8000FB74_10774:
    /* 10774 8000FB74 1020FF5F */  beqz       $at, .L8000F8F4_104F4
    /* 10778 8000FB78 00000000 */   nop
    /* 1077C 8000FB7C 02A3082A */  slt        $at, $s5, $v1
    /* 10780 8000FB80 1420FF5C */  bnez       $at, .L8000F8F4_104F4
    /* 10784 8000FB84 00000000 */   nop
    /* 10788 8000FB88 0C003CDA */  jal        func_8000F368_FF68
    /* 1078C 8000FB8C 0000A825 */   or        $s5, $zero, $zero
    /* 10790 8000FB90 0C000C19 */  jal        func_80003064_3C64
    /* 10794 8000FB94 00000000 */   nop
    /* 10798 8000FB98 0C007D50 */  jal        osGetCount
    /* 1079C 8000FB9C 00000000 */   nop
    /* 107A0 8000FBA0 8EC30000 */  lw         $v1, 0x0($s6)
    /* 107A4 8000FBA4 AFA20058 */  sw         $v0, 0x58($sp)
    /* 107A8 8000FBA8 10600003 */  beqz       $v1, .L8000FBB8_107B8
    /* 107AC 8000FBAC 246CFFFF */   addiu     $t4, $v1, -0x1
    /* 107B0 8000FBB0 AE770000 */  sw         $s7, 0x0($s3)
    /* 107B4 8000FBB4 AECC0000 */  sw         $t4, 0x0($s6)
  .L8000FBB8_107B8:
    /* 107B8 8000FBB8 8E6D0000 */  lw         $t5, 0x0($s3)
    /* 107BC 8000FBBC 11A0001D */  beqz       $t5, .L8000FC34_10834
    /* 107C0 8000FBC0 00000000 */   nop
    /* 107C4 8000FBC4 8ECE0000 */  lw         $t6, 0x0($s6)
    /* 107C8 8000FBC8 3C048003 */  lui        $a0, %hi(D_80037750)
    /* 107CC 8000FBCC 15C0000E */  bnez       $t6, .L8000FC08_10808
    /* 107D0 8000FBD0 00000000 */   nop
    /* 107D4 8000FBD4 3C048003 */  lui        $a0, %hi(D_8003773C)
    /* 107D8 8000FBD8 0C00731B */  jal        osSyncPrintf
    /* 107DC 8000FBDC 2484773C */   addiu     $a0, $a0, %lo(D_8003773C)
    /* 107E0 8000FBE0 0C007D34 */  jal        osViBlack
    /* 107E4 8000FBE4 00002025 */   or        $a0, $zero, $zero
    /* 107E8 8000FBE8 240F036D */  addiu      $t7, $zero, 0x36D
    /* 107EC 8000FBEC 3C018003 */  lui        $at, %hi(D_80035B5C)
    /* 107F0 8000FBF0 AC2F5B5C */  sw         $t7, %lo(D_80035B5C)($at)
    /* 107F4 8000FBF4 3C018007 */  lui        $at, %hi(D_80068090)
    /* 107F8 8000FBF8 0C007D54 */  jal        osViSetYScale
    /* 107FC 8000FBFC C42C8090 */   lwc1      $f12, %lo(D_80068090)($at)
    /* 10800 8000FC00 1000000C */  b          .L8000FC34_10834
    /* 10804 8000FC04 AE600000 */   sw        $zero, 0x0($s3)
  .L8000FC08_10808:
    /* 10808 8000FC08 0C00731B */  jal        osSyncPrintf
    /* 1080C 8000FC0C 24847750 */   addiu     $a0, $a0, %lo(D_80037750)
    /* 10810 8000FC10 24180400 */  addiu      $t8, $zero, 0x400
    /* 10814 8000FC14 3C018003 */  lui        $at, %hi(D_80035B5C)
    /* 10818 8000FC18 AC385B5C */  sw         $t8, %lo(D_80035B5C)($at)
    /* 1081C 8000FC1C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 10820 8000FC20 44816000 */  mtc1       $at, $f12
    /* 10824 8000FC24 0C007D54 */  jal        osViSetYScale
    /* 10828 8000FC28 00000000 */   nop
    /* 1082C 8000FC2C 0C007D34 */  jal        osViBlack
    /* 10830 8000FC30 24040001 */   addiu     $a0, $zero, 0x1
  .L8000FC34_10834:
    /* 10834 8000FC34 3C048007 */  lui        $a0, %hi(D_8006A8D0)
    /* 10838 8000FC38 3C058007 */  lui        $a1, %hi(D_80068038)
    /* 1083C 8000FC3C 8CA58038 */  lw         $a1, %lo(D_80068038)($a1)
    /* 10840 8000FC40 2484A8D0 */  addiu      $a0, $a0, %lo(D_8006A8D0)
    /* 10844 8000FC44 0C0070F4 */  jal        osSendMesg
    /* 10848 8000FC48 02E03025 */   or        $a2, $s7, $zero
    /* 1084C 8000FC4C 8E230000 */  lw         $v1, 0x0($s1)
    /* 10850 8000FC50 24010002 */  addiu      $at, $zero, 0x2
    /* 10854 8000FC54 3C048007 */  lui        $a0, %hi(D_8006A8B0)
    /* 10858 8000FC58 14610003 */  bne        $v1, $at, .L8000FC68_10868
    /* 1085C 8000FC5C 2484A8B0 */   addiu     $a0, $a0, %lo(D_8006A8B0)
    /* 10860 8000FC60 2479FFFF */  addiu      $t9, $v1, -0x1
    /* 10864 8000FC64 AE390000 */  sw         $t9, 0x0($s1)
  .L8000FC68_10868:
    /* 10868 8000FC68 3C058007 */  lui        $a1, %hi(D_80068038)
    /* 1086C 8000FC6C 24A58038 */  addiu      $a1, $a1, %lo(D_80068038)
    /* 10870 8000FC70 0C006E9C */  jal        osRecvMesg
    /* 10874 8000FC74 02E03025 */   or        $a2, $s7, $zero
    /* 10878 8000FC78 0C007D50 */  jal        osGetCount
    /* 1087C 8000FC7C 00000000 */   nop
    /* 10880 8000FC80 8FAA0058 */  lw         $t2, 0x58($sp)
    /* 10884 8000FC84 3C038006 */  lui        $v1, %hi(D_8005BB20)
    /* 10888 8000FC88 8C63BB20 */  lw         $v1, %lo(D_8005BB20)($v1)
    /* 1088C 8000FC8C 3C018005 */  lui        $at, %hi(D_80052B38)
    /* 10890 8000FC90 004A5823 */  subu       $t3, $v0, $t2
    /* 10894 8000FC94 AC2B2B38 */  sw         $t3, %lo(D_80052B38)($at)
    /* 10898 8000FC98 001468C0 */  sll        $t5, $s4, 3
    /* 1089C 8000FC9C 3401E378 */  ori        $at, $zero, 0xE378
    /* 108A0 8000FCA0 01B46821 */  addu       $t5, $t5, $s4
    /* 108A4 8000FCA4 3C0E8007 */  lui        $t6, %hi(D_8006A940)
    /* 108A8 8000FCA8 3C0CB800 */  lui        $t4, (0xB8000000 >> 16)
    /* 108AC 8000FCAC 25CEA940 */  addiu      $t6, $t6, %lo(D_8006A940)
    /* 108B0 8000FCB0 000D6900 */  sll        $t5, $t5, 4
    /* 108B4 8000FCB4 00611821 */  addu       $v1, $v1, $at
    /* 108B8 8000FCB8 AC6C0000 */  sw         $t4, 0x0($v1)
    /* 108BC 8000FCBC AC600004 */  sw         $zero, 0x4($v1)
    /* 108C0 8000FCC0 0C003D1E */  jal        func_8000F478_10078
    /* 108C4 8000FCC4 01AE2021 */   addu      $a0, $t5, $t6
    /* 108C8 8000FCC8 0C007D50 */  jal        osGetCount
    /* 108CC 8000FCCC 00000000 */   nop
    /* 108D0 8000FCD0 00147880 */  sll        $t7, $s4, 2
    /* 108D4 8000FCD4 03AFC021 */  addu       $t8, $sp, $t7
    /* 108D8 8000FCD8 3C038003 */  lui        $v1, %hi(D_80031B84)
    /* 108DC 8000FCDC 24631B84 */  addiu      $v1, $v1, %lo(D_80031B84)
    /* 108E0 8000FCE0 AF02005C */  sw         $v0, 0x5C($t8)
    /* 108E4 8000FCE4 8C790000 */  lw         $t9, 0x0($v1)
    /* 108E8 8000FCE8 240A0001 */  addiu      $t2, $zero, 0x1
    /* 108EC 8000FCEC 3A8C0001 */  xori       $t4, $s4, 0x1
    /* 108F0 8000FCF0 01595823 */  subu       $t3, $t2, $t9
    /* 108F4 8000FCF4 AC6B0000 */  sw         $t3, 0x0($v1)
    /* 108F8 8000FCF8 0180A025 */  or         $s4, $t4, $zero
    /* 108FC 8000FCFC 1000FEFD */  b          .L8000F8F4_104F4
    /* 10900 8000FD00 26100001 */   addiu     $s0, $s0, 0x1
  .L8000FD04_10904:
    /* 10904 8000FD04 0C007D50 */  jal        osGetCount
    /* 10908 8000FD08 00009025 */   or        $s2, $zero, $zero
    /* 1090C 8000FD0C 8FA3007C */  lw         $v1, 0x7C($sp)
    /* 10910 8000FD10 3C018005 */  lui        $at, %hi(D_80052B3C)
    /* 10914 8000FD14 2610FFFF */  addiu      $s0, $s0, -0x1
    /* 10918 8000FD18 00036880 */  sll        $t5, $v1, 2
    /* 1091C 8000FD1C 03AD7021 */  addu       $t6, $sp, $t5
    /* 10920 8000FD20 8DCE005C */  lw         $t6, 0x5C($t6)
    /* 10924 8000FD24 38780001 */  xori       $t8, $v1, 0x1
    /* 10928 8000FD28 AFB8007C */  sw         $t8, 0x7C($sp)
    /* 1092C 8000FD2C 004E7823 */  subu       $t7, $v0, $t6
    /* 10930 8000FD30 AC2F2B3C */  sw         $t7, %lo(D_80052B3C)($at)
    /* 10934 8000FD34 8E2A0000 */  lw         $t2, 0x0($s1)
    /* 10938 8000FD38 16EAFEEE */  bne        $s7, $t2, .L8000F8F4_104F4
    /* 1093C 8000FD3C 00000000 */   nop
    /* 10940 8000FD40 8E790000 */  lw         $t9, 0x0($s3)
    /* 10944 8000FD44 3C018007 */  lui        $at, %hi(D_8006808C)
    /* 10948 8000FD48 1720FEEA */  bnez       $t9, .L8000F8F4_104F4
    /* 1094C 8000FD4C 00000000 */   nop
    /* 10950 8000FD50 0C007D6C */  jal        osViSetXScale
    /* 10954 8000FD54 C42C808C */   lwc1      $f12, %lo(D_8006808C)($at)
    /* 10958 8000FD58 3C018007 */  lui        $at, %hi(D_80068090)
    /* 1095C 8000FD5C 0C007D54 */  jal        osViSetYScale
    /* 10960 8000FD60 C42C8090 */   lwc1      $f12, %lo(D_80068090)($at)
    /* 10964 8000FD64 8E2B0000 */  lw         $t3, 0x0($s1)
    /* 10968 8000FD68 256CFFFF */  addiu      $t4, $t3, -0x1
    /* 1096C 8000FD6C 1000FEE1 */  b          .L8000F8F4_104F4
    /* 10970 8000FD70 AE2C0000 */   sw        $t4, 0x0($s1)
  .L8000FD74_10974:
    /* 10974 8000FD74 3C018007 */  lui        $at, %hi(D_80068078)
    /* 10978 8000FD78 A4378078 */  sh         $s7, %lo(D_80068078)($at)
    /* 1097C 8000FD7C 00001025 */  or         $v0, $zero, $zero
    /* 10980 8000FD80 0000A025 */  or         $s4, $zero, $zero
    /* 10984 8000FD84 00008025 */  or         $s0, $zero, $zero
    /* 10988 8000FD88 0000A825 */  or         $s5, $zero, $zero
    /* 1098C 8000FD8C 00009025 */  or         $s2, $zero, $zero
    /* 10990 8000FD90 0C005667 */  jal        func_8001599C_1659C
    /* 10994 8000FD94 24030001 */   addiu     $v1, $zero, 0x1
    /* 10998 8000FD98 0C000442 */  jal        func_80001108_1D08
    /* 1099C 8000FD9C 00000000 */   nop
    /* 109A0 8000FDA0 3C028003 */  lui        $v0, %hi(osViModeTable)
    /* 109A4 8000FDA4 3C0E005F */  lui        $t6, (0x5F0239 >> 16)
    /* 109A8 8000FDA8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 109AC 8000FDAC 24425630 */  addiu      $v0, $v0, %lo(osViModeTable)
    /* 109B0 8000FDB0 240D0400 */  addiu      $t5, $zero, 0x400
    /* 109B4 8000FDB4 35CE0239 */  ori        $t6, $t6, (0x5F0239 & 0xFFFF)
    /* 109B8 8000FDB8 44816000 */  mtc1       $at, $f12
    /* 109BC 8000FDBC AC4D052C */  sw         $t5, 0x52C($v0)
    /* 109C0 8000FDC0 0C007D6C */  jal        osViSetXScale
    /* 109C4 8000FDC4 AC4E0530 */   sw        $t6, 0x530($v0)
    /* 109C8 8000FDC8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 109CC 8000FDCC 44816000 */  mtc1       $at, $f12
    /* 109D0 8000FDD0 0C007D54 */  jal        osViSetYScale
    /* 109D4 8000FDD4 00000000 */   nop
    /* 109D8 8000FDD8 0C007D34 */  jal        osViBlack
    /* 109DC 8000FDDC 24040001 */   addiu     $a0, $zero, 0x1
    /* 109E0 8000FDE0 3C048006 */  lui        $a0, %hi(D_80067DA8)
    /* 109E4 8000FDE4 0C007C5C */  jal        osDestroyThread
    /* 109E8 8000FDE8 24847DA8 */   addiu     $a0, $a0, %lo(D_80067DA8)
    /* 109EC 8000FDEC 3C048006 */  lui        $a0, %hi(D_80067898)
    /* 109F0 8000FDF0 0C007C5C */  jal        osDestroyThread
    /* 109F4 8000FDF4 24847898 */   addiu     $a0, $a0, %lo(D_80067898)
    /* 109F8 8000FDF8 3C048006 */  lui        $a0, %hi(D_800676E8)
    /* 109FC 8000FDFC 0C007C5C */  jal        osDestroyThread
    /* 10A00 8000FE00 248476E8 */   addiu     $a0, $a0, %lo(D_800676E8)
  .L8000FE04_10A04:
    /* 10A04 8000FE04 1000FFFF */  b          .L8000FE04_10A04
    /* 10A08 8000FE08 00000000 */   nop
endlabel func_8000F6B0_102B0
    /* 10A0C 8000FE0C 00000000 */  nop
    /* 10A10 8000FE10 00000000 */  nop
    /* 10A14 8000FE14 00000000 */  nop
    /* 10A18 8000FE18 00000000 */  nop
    /* 10A1C 8000FE1C 00000000 */  nop
