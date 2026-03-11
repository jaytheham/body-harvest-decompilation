nonmatching func_8008F8D4_9E884, 0x110

glabel func_8008F8D4_9E884
    /* 9E884 8008F8D4 308E00FF */  andi       $t6, $a0, 0xFF
    /* 9E888 8008F8D8 000E7880 */  sll        $t7, $t6, 2
    /* 9E88C 8008F8DC 01EE7821 */  addu       $t7, $t7, $t6
    /* 9E890 8008F8E0 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 9E894 8008F8E4 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 9E898 8008F8E8 000F7900 */  sll        $t7, $t7, 4
    /* 9E89C 8008F8EC 01F81821 */  addu       $v1, $t7, $t8
    /* 9E8A0 8008F8F0 8C790020 */  lw         $t9, 0x20($v1)
    /* 9E8A4 8008F8F4 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 9E8A8 8008F8F8 AFA40030 */  sw         $a0, 0x30($sp)
    /* 9E8AC 8008F8FC 33288000 */  andi       $t0, $t9, 0x8000
    /* 9E8B0 8008F900 01C02025 */  or         $a0, $t6, $zero
    /* 9E8B4 8008F904 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 9E8B8 8008F908 11000032 */  beqz       $t0, .L8008F9D4_9E984
    /* 9E8BC 8008F90C AFA50034 */   sw        $a1, 0x34($sp)
    /* 9E8C0 8008F910 87A90036 */  lh         $t1, 0x36($sp)
    /* 9E8C4 8008F914 3C0B8015 */  lui        $t3, %hi(D_8014DD5C)
    /* 9E8C8 8008F918 3C0C8014 */  lui        $t4, %hi(D_8013C738)
    /* 9E8CC 8008F91C 00095100 */  sll        $t2, $t1, 4
    /* 9E8D0 8008F920 016A5821 */  addu       $t3, $t3, $t2
    /* 9E8D4 8008F924 816BDD5C */  lb         $t3, %lo(D_8014DD5C)($t3)
    /* 9E8D8 8008F928 258CC738 */  addiu      $t4, $t4, %lo(D_8013C738)
    /* 9E8DC 8008F92C AFAC0010 */  sw         $t4, 0x10($sp)
    /* 9E8E0 8008F930 24050002 */  addiu      $a1, $zero, 0x2
    /* 9E8E4 8008F934 24060003 */  addiu      $a2, $zero, 0x3
    /* 9E8E8 8008F938 27A7002C */  addiu      $a3, $sp, 0x2C
    /* 9E8EC 8008F93C AFA30024 */  sw         $v1, 0x24($sp)
    /* 9E8F0 8008F940 A3AE0033 */  sb         $t6, 0x33($sp)
    /* 9E8F4 8008F944 A7A9002C */  sh         $t1, 0x2C($sp)
    /* 9E8F8 8008F948 0C0207C6 */  jal        func_80081F18_90EC8
    /* 9E8FC 8008F94C A7AB002E */   sh        $t3, 0x2E($sp)
    /* 9E900 8008F950 00023E00 */  sll        $a3, $v0, 24
    /* 9E904 8008F954 00076E03 */  sra        $t5, $a3, 24
    /* 9E908 8008F958 24010002 */  addiu      $at, $zero, 0x2
    /* 9E90C 8008F95C 01A03825 */  or         $a3, $t5, $zero
    /* 9E910 8008F960 8FA30024 */  lw         $v1, 0x24($sp)
    /* 9E914 8008F964 14410013 */  bne        $v0, $at, .L8008F9B4_9E964
    /* 9E918 8008F968 93A40033 */   lbu       $a0, 0x33($sp)
    /* 9E91C 8008F96C A460001E */  sh         $zero, 0x1E($v1)
    /* 9E920 8008F970 00002825 */  or         $a1, $zero, $zero
    /* 9E924 8008F974 24060022 */  addiu      $a2, $zero, 0x22
    /* 9E928 8008F978 AFA30024 */  sw         $v1, 0x24($sp)
    /* 9E92C 8008F97C 0C021C62 */  jal        func_80087188_96138
    /* 9E930 8008F980 A3AD002B */   sb        $t5, 0x2B($sp)
    /* 9E934 8008F984 8FA30024 */  lw         $v1, 0x24($sp)
    /* 9E938 8008F988 1040000A */  beqz       $v0, .L8008F9B4_9E964
    /* 9E93C 8008F98C 83A7002B */   lb        $a3, 0x2B($sp)
    /* 9E940 8008F990 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* 9E944 8008F994 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* 9E948 8008F998 24010001 */  addiu      $at, $zero, 0x1
    /* 9E94C 8008F99C 240F000F */  addiu      $t7, $zero, 0xF
    /* 9E950 8008F9A0 15C10003 */  bne        $t6, $at, .L8008F9B0_9E960
    /* 9E954 8008F9A4 24180005 */   addiu     $t8, $zero, 0x5
    /* 9E958 8008F9A8 10000002 */  b          .L8008F9B4_9E964
    /* 9E95C 8008F9AC A46F001E */   sh        $t7, 0x1E($v1)
  .L8008F9B0_9E960:
    /* 9E960 8008F9B0 A478001E */  sh         $t8, 0x1E($v1)
  .L8008F9B4_9E964:
    /* 9E964 8008F9B4 24010003 */  addiu      $at, $zero, 0x3
    /* 9E968 8008F9B8 54E10007 */  bnel       $a3, $at, .L8008F9D8_9E988
    /* 9E96C 8008F9BC 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 9E970 8008F9C0 8C790020 */  lw         $t9, 0x20($v1)
    /* 9E974 8008F9C4 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
    /* 9E978 8008F9C8 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
    /* 9E97C 8008F9CC 03214024 */  and        $t0, $t9, $at
    /* 9E980 8008F9D0 AC680020 */  sw         $t0, 0x20($v1)
  .L8008F9D4_9E984:
    /* 9E984 8008F9D4 8FBF001C */  lw         $ra, 0x1C($sp)
  .L8008F9D8_9E988:
    /* 9E988 8008F9D8 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 9E98C 8008F9DC 03E00008 */  jr         $ra
    /* 9E990 8008F9E0 00000000 */   nop
endlabel func_8008F8D4_9E884
