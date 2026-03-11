nonmatching func_802D5E98_1EEBA8, 0x100

glabel func_802D5E98_1EEBA8
    /* 1EEBA8 802D5E98 3C058005 */  lui        $a1, %hi(buildingInstances)
    /* 1EEBAC 802D5E9C 3C068005 */  lui        $a2, %hi(vehicleInstances)
    /* 1EEBB0 802D5EA0 24C6DCD0 */  addiu      $a2, $a2, %lo(vehicleInstances)
    /* 1EEBB4 802D5EA4 24A50AD8 */  addiu      $a1, $a1, %lo(buildingInstances)
    /* 1EEBB8 802D5EA8 84A40DC8 */  lh         $a0, 0xDC8($a1)
    /* 1EEBBC 802D5EAC 84CE119C */  lh         $t6, 0x119C($a2)
    /* 1EEBC0 802D5EB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EEBC4 802D5EB4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EEBC8 802D5EB8 01C41023 */  subu       $v0, $t6, $a0
    /* 1EEBCC 802D5EBC 04400003 */  bltz       $v0, .L802D5ECC_1EEBDC
    /* 1EEBD0 802D5EC0 00021823 */   negu      $v1, $v0
    /* 1EEBD4 802D5EC4 10000001 */  b          .L802D5ECC_1EEBDC
    /* 1EEBD8 802D5EC8 00401825 */   or        $v1, $v0, $zero
  .L802D5ECC_1EEBDC:
    /* 1EEBDC 802D5ECC 28610500 */  slti       $at, $v1, 0x500
    /* 1EEBE0 802D5ED0 1020000A */  beqz       $at, .L802D5EFC_1EEC0C
    /* 1EEBE4 802D5ED4 00000000 */   nop
    /* 1EEBE8 802D5ED8 84CF11A0 */  lh         $t7, 0x11A0($a2)
    /* 1EEBEC 802D5EDC 84B80DCC */  lh         $t8, 0xDCC($a1)
    /* 1EEBF0 802D5EE0 01F81023 */  subu       $v0, $t7, $t8
    /* 1EEBF4 802D5EE4 04400003 */  bltz       $v0, .L802D5EF4_1EEC04
    /* 1EEBF8 802D5EE8 00021823 */   negu      $v1, $v0
    /* 1EEBFC 802D5EEC 10000001 */  b          .L802D5EF4_1EEC04
    /* 1EEC00 802D5EF0 00401825 */   or        $v1, $v0, $zero
  .L802D5EF4_1EEC04:
    /* 1EEC04 802D5EF4 28610500 */  slti       $at, $v1, 0x500
    /* 1EEC08 802D5EF8 14200015 */  bnez       $at, .L802D5F50_1EEC60
  .L802D5EFC_1EEC0C:
    /* 1EEC0C 802D5EFC 3C038005 */   lui       $v1, %hi(D_80052B34)
    /* 1EEC10 802D5F00 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 1EEC14 802D5F04 84790000 */  lh         $t9, 0x0($v1)
    /* 1EEC18 802D5F08 03241023 */  subu       $v0, $t9, $a0
    /* 1EEC1C 802D5F0C 04400003 */  bltz       $v0, .L802D5F1C_1EEC2C
    /* 1EEC20 802D5F10 00022023 */   negu      $a0, $v0
    /* 1EEC24 802D5F14 10000001 */  b          .L802D5F1C_1EEC2C
    /* 1EEC28 802D5F18 00402025 */   or        $a0, $v0, $zero
  .L802D5F1C_1EEC2C:
    /* 1EEC2C 802D5F1C 288100C8 */  slti       $at, $a0, 0xC8
    /* 1EEC30 802D5F20 10200010 */  beqz       $at, .L802D5F64_1EEC74
    /* 1EEC34 802D5F24 24040000 */   addiu     $a0, $zero, 0x0
    /* 1EEC38 802D5F28 84680004 */  lh         $t0, 0x4($v1)
    /* 1EEC3C 802D5F2C 84A90DCC */  lh         $t1, 0xDCC($a1)
    /* 1EEC40 802D5F30 01091023 */  subu       $v0, $t0, $t1
    /* 1EEC44 802D5F34 04400003 */  bltz       $v0, .L802D5F44_1EEC54
    /* 1EEC48 802D5F38 00021823 */   negu      $v1, $v0
    /* 1EEC4C 802D5F3C 10000001 */  b          .L802D5F44_1EEC54
    /* 1EEC50 802D5F40 00401825 */   or        $v1, $v0, $zero
  .L802D5F44_1EEC54:
    /* 1EEC54 802D5F44 2861015E */  slti       $at, $v1, 0x15E
    /* 1EEC58 802D5F48 10200006 */  beqz       $at, .L802D5F64_1EEC74
    /* 1EEC5C 802D5F4C 00000000 */   nop
  .L802D5F50_1EEC60:
    /* 1EEC60 802D5F50 24040000 */  addiu      $a0, $zero, 0x0
    /* 1EEC64 802D5F54 0C001CB3 */  jal        func_800072CC_7ECC
    /* 1EEC68 802D5F58 2405000D */   addiu     $a1, $zero, 0xD
    /* 1EEC6C 802D5F5C 10000003 */  b          .L802D5F6C_1EEC7C
    /* 1EEC70 802D5F60 00000000 */   nop
  .L802D5F64_1EEC74:
    /* 1EEC74 802D5F64 0C001CEE */  jal        func_800073B8_7FB8
    /* 1EEC78 802D5F68 2405000D */   addiu     $a1, $zero, 0xD
  .L802D5F6C_1EEC7C:
    /* 1EEC7C 802D5F6C 3C0A8005 */  lui        $t2, %hi(D_8004EE88)
    /* 1EEC80 802D5F70 854AEE88 */  lh         $t2, %lo(D_8004EE88)($t2)
    /* 1EEC84 802D5F74 3C04802D */  lui        $a0, %hi(func_802D5E98_1EEBA8)
    /* 1EEC88 802D5F78 5D400004 */  bgtzl      $t2, .L802D5F8C_1EEC9C
    /* 1EEC8C 802D5F7C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1EEC90 802D5F80 0C001D2F */  jal        func_800074BC_80BC
    /* 1EEC94 802D5F84 24845E98 */   addiu     $a0, $a0, %lo(func_802D5E98_1EEBA8)
    /* 1EEC98 802D5F88 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D5F8C_1EEC9C:
    /* 1EEC9C 802D5F8C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EECA0 802D5F90 03E00008 */  jr         $ra
    /* 1EECA4 802D5F94 00000000 */   nop
endlabel func_802D5E98_1EEBA8
