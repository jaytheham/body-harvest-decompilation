nonmatching func_802D9ECC_31E01C, 0x94

glabel func_802D9ECC_31E01C
    /* 31E01C 802D9ECC 308E00FF */  andi       $t6, $a0, 0xFF
    /* 31E020 802D9ED0 000E7880 */  sll        $t7, $t6, 2
    /* 31E024 802D9ED4 01EE7821 */  addu       $t7, $t7, $t6
    /* 31E028 802D9ED8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 31E02C 802D9EDC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 31E030 802D9EE0 000F7900 */  sll        $t7, $t7, 4
    /* 31E034 802D9EE4 01F81821 */  addu       $v1, $t7, $t8
    /* 31E038 802D9EE8 8C790020 */  lw         $t9, 0x20($v1)
    /* 31E03C 802D9EEC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 31E040 802D9EF0 AFA40030 */  sw         $a0, 0x30($sp)
    /* 31E044 802D9EF4 33281000 */  andi       $t0, $t9, 0x1000
    /* 31E048 802D9EF8 01C02025 */  or         $a0, $t6, $zero
    /* 31E04C 802D9EFC AFBF001C */  sw         $ra, 0x1C($sp)
    /* 31E050 802D9F00 11000013 */  beqz       $t0, .L802D9F50_31E0A0
    /* 31E054 802D9F04 AFA50034 */   sw        $a1, 0x34($sp)
    /* 31E058 802D9F08 87A90036 */  lh         $t1, 0x36($sp)
    /* 31E05C 802D9F0C 3C0A802E */  lui        $t2, %hi(D_802E5140)
    /* 31E060 802D9F10 254A5140 */  addiu      $t2, $t2, %lo(D_802E5140)
    /* 31E064 802D9F14 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 31E068 802D9F18 24050001 */  addiu      $a1, $zero, 0x1
    /* 31E06C 802D9F1C 24060002 */  addiu      $a2, $zero, 0x2
    /* 31E070 802D9F20 27A7002C */  addiu      $a3, $sp, 0x2C
    /* 31E074 802D9F24 AFA30024 */  sw         $v1, 0x24($sp)
    /* 31E078 802D9F28 0C0207C6 */  jal        func_80081F18_90EC8
    /* 31E07C 802D9F2C A7A9002C */   sh        $t1, 0x2C($sp)
    /* 31E080 802D9F30 304B00FF */  andi       $t3, $v0, 0xFF
    /* 31E084 802D9F34 24010002 */  addiu      $at, $zero, 0x2
    /* 31E088 802D9F38 15610005 */  bne        $t3, $at, .L802D9F50_31E0A0
    /* 31E08C 802D9F3C 8FA30024 */   lw        $v1, 0x24($sp)
    /* 31E090 802D9F40 8C6C0020 */  lw         $t4, 0x20($v1)
    /* 31E094 802D9F44 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 31E098 802D9F48 01816824 */  and        $t5, $t4, $at
    /* 31E09C 802D9F4C AC6D0020 */  sw         $t5, 0x20($v1)
  .L802D9F50_31E0A0:
    /* 31E0A0 802D9F50 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 31E0A4 802D9F54 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 31E0A8 802D9F58 03E00008 */  jr         $ra
    /* 31E0AC 802D9F5C 00000000 */   nop
endlabel func_802D9ECC_31E01C
