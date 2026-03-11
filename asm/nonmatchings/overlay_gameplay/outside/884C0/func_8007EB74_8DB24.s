nonmatching func_8007EB74_8DB24, 0x228

glabel func_8007EB74_8DB24
    /* 8DB24 8007EB74 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 8DB28 8007EB78 240E0001 */  addiu      $t6, $zero, 0x1
    /* 8DB2C 8007EB7C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 8DB30 8007EB80 AFAE001C */  sw         $t6, 0x1C($sp)
    /* 8DB34 8007EB84 84A80004 */  lh         $t0, 0x4($a1)
    /* 8DB38 8007EB88 84990004 */  lh         $t9, 0x4($a0)
    /* 8DB3C 8007EB8C 84B80000 */  lh         $t8, 0x0($a1)
    /* 8DB40 8007EB90 848F0000 */  lh         $t7, 0x0($a0)
    /* 8DB44 8007EB94 03281823 */  subu       $v1, $t9, $t0
    /* 8DB48 8007EB98 00034823 */  negu       $t1, $v1
    /* 8DB4C 8007EB9C 01F81023 */  subu       $v0, $t7, $t8
    /* 8DB50 8007EBA0 44823000 */  mtc1       $v0, $f6
    /* 8DB54 8007EBA4 44892000 */  mtc1       $t1, $f4
    /* 8DB58 8007EBA8 AFA5003C */  sw         $a1, 0x3C($sp)
    /* 8DB5C 8007EBAC AFA40038 */  sw         $a0, 0x38($sp)
    /* 8DB60 8007EBB0 468033A0 */  cvt.s.w    $f14, $f6
    /* 8DB64 8007EBB4 0C000E09 */  jal        func_80003824_4424
    /* 8DB68 8007EBB8 46802320 */   cvt.s.w   $f12, $f4
    /* 8DB6C 8007EBBC 8FA40038 */  lw         $a0, 0x38($sp)
    /* 8DB70 8007EBC0 00023C00 */  sll        $a3, $v0, 16
    /* 8DB74 8007EBC4 00075403 */  sra        $t2, $a3, 16
    /* 8DB78 8007EBC8 808B000D */  lb         $t3, 0xD($a0)
    /* 8DB7C 8007EBCC 2401FFFE */  addiu      $at, $zero, -0x2
    /* 8DB80 8007EBD0 01403825 */  or         $a3, $t2, $zero
    /* 8DB84 8007EBD4 11610036 */  beq        $t3, $at, .L8007ECB0_8DC60
    /* 8DB88 8007EBD8 8FA6003C */   lw        $a2, 0x3C($sp)
    /* 8DB8C 8007EBDC 9082001A */  lbu        $v0, 0x1A($a0)
    /* 8DB90 8007EBE0 2401001B */  addiu      $at, $zero, 0x1B
    /* 8DB94 8007EBE4 3C0C8005 */  lui        $t4, %hi(D_80052B34)
    /* 8DB98 8007EBE8 50410032 */  beql       $v0, $at, .L8007ECB4_8DC64
    /* 8DB9C 8007EBEC 80CD000D */   lb        $t5, 0xD($a2)
    /* 8DBA0 8007EBF0 8D8C2B34 */  lw         $t4, %lo(D_80052B34)($t4)
    /* 8DBA4 8007EBF4 00027880 */  sll        $t7, $v0, 2
    /* 8DBA8 8007EBF8 01E27823 */  subu       $t7, $t7, $v0
    /* 8DBAC 8007EBFC 14CC0009 */  bne        $a2, $t4, .L8007EC24_8DBD4
    /* 8DBB0 8007EC00 000F7880 */   sll       $t7, $t7, 2
    /* 8DBB4 8007EC04 8C830020 */  lw         $v1, 0x20($a0)
    /* 8DBB8 8007EC08 00036900 */  sll        $t5, $v1, 4
    /* 8DBBC 8007EC0C 05A10005 */  bgez       $t5, .L8007EC24_8DBD4
    /* 8DBC0 8007EC10 00037380 */   sll       $t6, $v1, 14
    /* 8DBC4 8007EC14 05C20004 */  bltzl      $t6, .L8007EC28_8DBD8
    /* 8DBC8 8007EC18 01E27821 */   addu      $t7, $t7, $v0
    /* 8DBCC 8007EC1C 1000005B */  b          .L8007ED8C_8DD3C
    /* 8DBD0 8007EC20 24020001 */   addiu     $v0, $zero, 0x1
  .L8007EC24_8DBD4:
    /* 8DBD4 8007EC24 01E27821 */  addu       $t7, $t7, $v0
  .L8007EC28_8DBD8:
    /* 8DBD8 8007EC28 000F78C0 */  sll        $t7, $t7, 3
    /* 8DBDC 8007EC2C 3C188025 */  lui        $t8, %hi(D_802566D4)
    /* 8DBE0 8007EC30 030FC021 */  addu       $t8, $t8, $t7
    /* 8DBE4 8007EC34 8F1866D4 */  lw         $t8, %lo(D_802566D4)($t8)
    /* 8DBE8 8007EC38 00072C00 */  sll        $a1, $a3, 16
    /* 8DBEC 8007EC3C 00056403 */  sra        $t4, $a1, 16
    /* 8DBF0 8007EC40 33190001 */  andi       $t9, $t8, 0x1
    /* 8DBF4 8007EC44 13200012 */  beqz       $t9, .L8007EC90_8DC40
    /* 8DBF8 8007EC48 01802825 */   or        $a1, $t4, $zero
    /* 8DBFC 8007EC4C 84C80002 */  lh         $t0, 0x2($a2)
    /* 8DC00 8007EC50 84890002 */  lh         $t1, 0x2($a0)
    /* 8DC04 8007EC54 24030001 */  addiu      $v1, $zero, 0x1
    /* 8DC08 8007EC58 24020001 */  addiu      $v0, $zero, 0x1
    /* 8DC0C 8007EC5C 01095023 */  subu       $t2, $t0, $t1
    /* 8DC10 8007EC60 05410003 */  bgez       $t2, .L8007EC70_8DC20
    /* 8DC14 8007EC64 00000000 */   nop
    /* 8DC18 8007EC68 10000001 */  b          .L8007EC70_8DC20
    /* 8DC1C 8007EC6C 2403FFFF */   addiu     $v1, $zero, -0x1
  .L8007EC70_8DC20:
    /* 8DC20 8007EC70 848B0010 */  lh         $t3, 0x10($a0)
    /* 8DC24 8007EC74 05610003 */  bgez       $t3, .L8007EC84_8DC34
    /* 8DC28 8007EC78 00000000 */   nop
    /* 8DC2C 8007EC7C 10000001 */  b          .L8007EC84_8DC34
    /* 8DC30 8007EC80 2402FFFF */   addiu     $v0, $zero, -0x1
  .L8007EC84_8DC34:
    /* 8DC34 8007EC84 54430003 */  bnel       $v0, $v1, .L8007EC94_8DC44
    /* 8DC38 8007EC88 AFA40038 */   sw        $a0, 0x38($sp)
    /* 8DC3C 8007EC8C A4800010 */  sh         $zero, 0x10($a0)
  .L8007EC90_8DC40:
    /* 8DC40 8007EC90 AFA40038 */  sw         $a0, 0x38($sp)
  .L8007EC94_8DC44:
    /* 8DC44 8007EC94 AFA6003C */  sw         $a2, 0x3C($sp)
    /* 8DC48 8007EC98 0C01F9CD */  jal        func_8007E734_8D6E4
    /* 8DC4C 8007EC9C A7A7002A */   sh        $a3, 0x2A($sp)
    /* 8DC50 8007ECA0 8FA40038 */  lw         $a0, 0x38($sp)
    /* 8DC54 8007ECA4 8FA6003C */  lw         $a2, 0x3C($sp)
    /* 8DC58 8007ECA8 87A7002A */  lh         $a3, 0x2A($sp)
    /* 8DC5C 8007ECAC AFA2001C */  sw         $v0, 0x1C($sp)
  .L8007ECB0_8DC60:
    /* 8DC60 8007ECB0 80CD000D */  lb         $t5, 0xD($a2)
  .L8007ECB4_8DC64:
    /* 8DC64 8007ECB4 2401FFFE */  addiu      $at, $zero, -0x2
    /* 8DC68 8007ECB8 51A10034 */  beql       $t5, $at, .L8007ED8C_8DD3C
    /* 8DC6C 8007ECBC 8FA2001C */   lw        $v0, 0x1C($sp)
    /* 8DC70 8007ECC0 90C2001A */  lbu        $v0, 0x1A($a2)
    /* 8DC74 8007ECC4 2401001B */  addiu      $at, $zero, 0x1B
    /* 8DC78 8007ECC8 3C0E8005 */  lui        $t6, %hi(D_80052B34)
    /* 8DC7C 8007ECCC 5041002F */  beql       $v0, $at, .L8007ED8C_8DD3C
    /* 8DC80 8007ECD0 8FA2001C */   lw        $v0, 0x1C($sp)
    /* 8DC84 8007ECD4 8DCE2B34 */  lw         $t6, %lo(D_80052B34)($t6)
    /* 8DC88 8007ECD8 00024880 */  sll        $t1, $v0, 2
    /* 8DC8C 8007ECDC 01224823 */  subu       $t1, $t1, $v0
    /* 8DC90 8007ECE0 148E000B */  bne        $a0, $t6, .L8007ED10_8DCC0
    /* 8DC94 8007ECE4 00094880 */   sll       $t1, $t1, 2
    /* 8DC98 8007ECE8 8CCF0020 */  lw         $t7, 0x20($a2)
    /* 8DC9C 8007ECEC 000FC100 */  sll        $t8, $t7, 4
    /* 8DCA0 8007ECF0 07030008 */  bgezl      $t8, .L8007ED14_8DCC4
    /* 8DCA4 8007ECF4 01224821 */   addu      $t1, $t1, $v0
    /* 8DCA8 8007ECF8 8C990020 */  lw         $t9, 0x20($a0)
    /* 8DCAC 8007ECFC 00194380 */  sll        $t0, $t9, 14
    /* 8DCB0 8007ED00 05020004 */  bltzl      $t0, .L8007ED14_8DCC4
    /* 8DCB4 8007ED04 01224821 */   addu      $t1, $t1, $v0
    /* 8DCB8 8007ED08 10000020 */  b          .L8007ED8C_8DD3C
    /* 8DCBC 8007ED0C 24020001 */   addiu     $v0, $zero, 0x1
  .L8007ED10_8DCC0:
    /* 8DCC0 8007ED10 01224821 */  addu       $t1, $t1, $v0
  .L8007ED14_8DCC4:
    /* 8DCC4 8007ED14 000948C0 */  sll        $t1, $t1, 3
    /* 8DCC8 8007ED18 3C0A8025 */  lui        $t2, %hi(D_802566D4)
    /* 8DCCC 8007ED1C 01495021 */  addu       $t2, $t2, $t1
    /* 8DCD0 8007ED20 8D4A66D4 */  lw         $t2, %lo(D_802566D4)($t2)
    /* 8DCD4 8007ED24 34018000 */  ori        $at, $zero, 0x8000
    /* 8DCD8 8007ED28 00E12821 */  addu       $a1, $a3, $at
    /* 8DCDC 8007ED2C 314B0001 */  andi       $t3, $t2, 0x1
    /* 8DCE0 8007ED30 11600012 */  beqz       $t3, .L8007ED7C_8DD2C
    /* 8DCE4 8007ED34 0005C400 */   sll       $t8, $a1, 16
    /* 8DCE8 8007ED38 848C0002 */  lh         $t4, 0x2($a0)
    /* 8DCEC 8007ED3C 84CD0002 */  lh         $t5, 0x2($a2)
    /* 8DCF0 8007ED40 24030001 */  addiu      $v1, $zero, 0x1
    /* 8DCF4 8007ED44 24020001 */  addiu      $v0, $zero, 0x1
    /* 8DCF8 8007ED48 018D7023 */  subu       $t6, $t4, $t5
    /* 8DCFC 8007ED4C 05C10003 */  bgez       $t6, .L8007ED5C_8DD0C
    /* 8DD00 8007ED50 00000000 */   nop
    /* 8DD04 8007ED54 10000001 */  b          .L8007ED5C_8DD0C
    /* 8DD08 8007ED58 2403FFFF */   addiu     $v1, $zero, -0x1
  .L8007ED5C_8DD0C:
    /* 8DD0C 8007ED5C 84CF0010 */  lh         $t7, 0x10($a2)
    /* 8DD10 8007ED60 05E10003 */  bgez       $t7, .L8007ED70_8DD20
    /* 8DD14 8007ED64 00000000 */   nop
    /* 8DD18 8007ED68 10000001 */  b          .L8007ED70_8DD20
    /* 8DD1C 8007ED6C 2402FFFF */   addiu     $v0, $zero, -0x1
  .L8007ED70_8DD20:
    /* 8DD20 8007ED70 54430003 */  bnel       $v0, $v1, .L8007ED80_8DD30
    /* 8DD24 8007ED74 00C02025 */   or        $a0, $a2, $zero
    /* 8DD28 8007ED78 A4C00010 */  sh         $zero, 0x10($a2)
  .L8007ED7C_8DD2C:
    /* 8DD2C 8007ED7C 00C02025 */  or         $a0, $a2, $zero
  .L8007ED80_8DD30:
    /* 8DD30 8007ED80 0C01F9CD */  jal        func_8007E734_8D6E4
    /* 8DD34 8007ED84 00182C03 */   sra       $a1, $t8, 16
    /* 8DD38 8007ED88 8FA2001C */  lw         $v0, 0x1C($sp)
  .L8007ED8C_8DD3C:
    /* 8DD3C 8007ED8C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 8DD40 8007ED90 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 8DD44 8007ED94 03E00008 */  jr         $ra
    /* 8DD48 8007ED98 00000000 */   nop
endlabel func_8007EB74_8DB24
