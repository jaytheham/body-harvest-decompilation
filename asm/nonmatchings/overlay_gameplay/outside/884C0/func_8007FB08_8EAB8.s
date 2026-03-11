nonmatching func_8007FB08_8EAB8, 0x2D0

glabel func_8007FB08_8EAB8
    /* 8EAB8 8007FB08 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 8EABC 8007FB0C AFA5002C */  sw         $a1, 0x2C($sp)
    /* 8EAC0 8007FB10 93AE002F */  lbu        $t6, 0x2F($sp)
    /* 8EAC4 8007FB14 3C188025 */  lui        $t8, %hi(alienSpecs)
    /* 8EAC8 8007FB18 27186680 */  addiu      $t8, $t8, %lo(alienSpecs)
    /* 8EACC 8007FB1C 000E7880 */  sll        $t7, $t6, 2
    /* 8EAD0 8007FB20 01EE7823 */  subu       $t7, $t7, $t6
    /* 8EAD4 8007FB24 000F7880 */  sll        $t7, $t7, 2
    /* 8EAD8 8007FB28 01EE7821 */  addu       $t7, $t7, $t6
    /* 8EADC 8007FB2C 000F78C0 */  sll        $t7, $t7, 3
    /* 8EAE0 8007FB30 01F81821 */  addu       $v1, $t7, $t8
    /* 8EAE4 8007FB34 8C620054 */  lw         $v0, 0x54($v1)
    /* 8EAE8 8007FB38 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 8EAEC 8007FB3C AFA40028 */  sw         $a0, 0x28($sp)
    /* 8EAF0 8007FB40 30590001 */  andi       $t9, $v0, 0x1
    /* 8EAF4 8007FB44 13200003 */  beqz       $t9, .L8007FB54_8EB04
    /* 8EAF8 8007FB48 2407FFFF */   addiu     $a3, $zero, -0x1
    /* 8EAFC 8007FB4C 1000009E */  b          .L8007FDC8_8ED78
    /* 8EB00 8007FB50 00001025 */   or        $v0, $zero, $zero
  .L8007FB54_8EB04:
    /* 8EB04 8007FB54 30480002 */  andi       $t0, $v0, 0x2
    /* 8EB08 8007FB58 11000009 */  beqz       $t0, .L8007FB80_8EB30
    /* 8EB0C 8007FB5C 3C011000 */   lui       $at, (0x10000080 >> 16)
    /* 8EB10 8007FB60 93A4002B */  lbu        $a0, 0x2B($sp)
    /* 8EB14 8007FB64 0C020AA6 */  jal        func_80082A98_91A48
    /* 8EB18 8007FB68 AFA30020 */   sw        $v1, 0x20($sp)
    /* 8EB1C 8007FB6C 00023C00 */  sll        $a3, $v0, 16
    /* 8EB20 8007FB70 00074C03 */  sra        $t1, $a3, 16
    /* 8EB24 8007FB74 01203825 */  or         $a3, $t1, $zero
    /* 8EB28 8007FB78 1000000B */  b          .L8007FBA8_8EB58
    /* 8EB2C 8007FB7C 8FA30020 */   lw        $v1, 0x20($sp)
  .L8007FB80_8EB30:
    /* 8EB30 8007FB80 34210080 */  ori        $at, $at, (0x10000080 & 0xFFFF)
    /* 8EB34 8007FB84 00415024 */  and        $t2, $v0, $at
    /* 8EB38 8007FB88 11400007 */  beqz       $t2, .L8007FBA8_8EB58
    /* 8EB3C 8007FB8C 93A4002B */   lbu       $a0, 0x2B($sp)
    /* 8EB40 8007FB90 0C020B28 */  jal        func_80082CA0_91C50
    /* 8EB44 8007FB94 AFA30020 */   sw        $v1, 0x20($sp)
    /* 8EB48 8007FB98 00023C00 */  sll        $a3, $v0, 16
    /* 8EB4C 8007FB9C 00075C03 */  sra        $t3, $a3, 16
    /* 8EB50 8007FBA0 01603825 */  or         $a3, $t3, $zero
    /* 8EB54 8007FBA4 8FA30020 */  lw         $v1, 0x20($sp)
  .L8007FBA8_8EB58:
    /* 8EB58 8007FBA8 2401FFFF */  addiu      $at, $zero, -0x1
    /* 8EB5C 8007FBAC 10E10054 */  beq        $a3, $at, .L8007FD00_8ECB0
    /* 8EB60 8007FBB0 93AC002B */   lbu       $t4, 0x2B($sp)
    /* 8EB64 8007FBB4 000C6880 */  sll        $t5, $t4, 2
    /* 8EB68 8007FBB8 01AC6821 */  addu       $t5, $t5, $t4
    /* 8EB6C 8007FBBC 3C0E8005 */  lui        $t6, %hi(alienInstances)
    /* 8EB70 8007FBC0 25CE8198 */  addiu      $t6, $t6, %lo(alienInstances)
    /* 8EB74 8007FBC4 000D6900 */  sll        $t5, $t5, 4
    /* 8EB78 8007FBC8 01AE3021 */  addu       $a2, $t5, $t6
    /* 8EB7C 8007FBCC 84C20040 */  lh         $v0, 0x40($a2)
    /* 8EB80 8007FBD0 00072C00 */  sll        $a1, $a3, 16
    /* 8EB84 8007FBD4 00057C03 */  sra        $t7, $a1, 16
    /* 8EB88 8007FBD8 1440002A */  bnez       $v0, .L8007FC84_8EC34
    /* 8EB8C 8007FBDC 00C02025 */   or        $a0, $a2, $zero
    /* 8EB90 8007FBE0 01E02825 */  or         $a1, $t7, $zero
    /* 8EB94 8007FBE4 AFA30020 */  sw         $v1, 0x20($sp)
    /* 8EB98 8007FBE8 AFA60018 */  sw         $a2, 0x18($sp)
    /* 8EB9C 8007FBEC 0C01F9CD */  jal        func_8007E734_8D6E4
    /* 8EBA0 8007FBF0 A7A70026 */   sh        $a3, 0x26($sp)
    /* 8EBA4 8007FBF4 0C01FB89 */  jal        func_8007EE24_8DDD4
    /* 8EBA8 8007FBF8 93A4002B */   lbu       $a0, 0x2B($sp)
    /* 8EBAC 8007FBFC 8FA30020 */  lw         $v1, 0x20($sp)
    /* 8EBB0 8007FC00 8FA60018 */  lw         $a2, 0x18($sp)
    /* 8EBB4 8007FC04 87A70026 */  lh         $a3, 0x26($sp)
    /* 8EBB8 8007FC08 8C620054 */  lw         $v0, 0x54($v1)
    /* 8EBBC 8007FC0C 90D80047 */  lbu        $t8, 0x47($a2)
    /* 8EBC0 8007FC10 3C011000 */  lui        $at, (0x10000080 >> 16)
    /* 8EBC4 8007FC14 30480002 */  andi       $t0, $v0, 0x2
    /* 8EBC8 8007FC18 37190004 */  ori        $t9, $t8, 0x4
    /* 8EBCC 8007FC1C 11000009 */  beqz       $t0, .L8007FC44_8EBF4
    /* 8EBD0 8007FC20 A0D90047 */   sb        $t9, 0x47($a2)
    /* 8EBD4 8007FC24 93A4002B */  lbu        $a0, 0x2B($sp)
    /* 8EBD8 8007FC28 0C020AA6 */  jal        func_80082A98_91A48
    /* 8EBDC 8007FC2C AFA60018 */   sw        $a2, 0x18($sp)
    /* 8EBE0 8007FC30 00023C00 */  sll        $a3, $v0, 16
    /* 8EBE4 8007FC34 00074C03 */  sra        $t1, $a3, 16
    /* 8EBE8 8007FC38 01203825 */  or         $a3, $t1, $zero
    /* 8EBEC 8007FC3C 1000000B */  b          .L8007FC6C_8EC1C
    /* 8EBF0 8007FC40 8FA60018 */   lw        $a2, 0x18($sp)
  .L8007FC44_8EBF4:
    /* 8EBF4 8007FC44 34210080 */  ori        $at, $at, (0x10000080 & 0xFFFF)
    /* 8EBF8 8007FC48 00415024 */  and        $t2, $v0, $at
    /* 8EBFC 8007FC4C 11400007 */  beqz       $t2, .L8007FC6C_8EC1C
    /* 8EC00 8007FC50 93A4002B */   lbu       $a0, 0x2B($sp)
    /* 8EC04 8007FC54 0C020B28 */  jal        func_80082CA0_91C50
    /* 8EC08 8007FC58 AFA60018 */   sw        $a2, 0x18($sp)
    /* 8EC0C 8007FC5C 00023C00 */  sll        $a3, $v0, 16
    /* 8EC10 8007FC60 00075C03 */  sra        $t3, $a3, 16
    /* 8EC14 8007FC64 01603825 */  or         $a3, $t3, $zero
    /* 8EC18 8007FC68 8FA60018 */  lw         $a2, 0x18($sp)
  .L8007FC6C_8EC1C:
    /* 8EC1C 8007FC6C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 8EC20 8007FC70 10E10002 */  beq        $a3, $at, .L8007FC7C_8EC2C
    /* 8EC24 8007FC74 240C0001 */   addiu     $t4, $zero, 0x1
    /* 8EC28 8007FC78 A4CC0040 */  sh         $t4, 0x40($a2)
  .L8007FC7C_8EC2C:
    /* 8EC2C 8007FC7C 10000052 */  b          .L8007FDC8_8ED78
    /* 8EC30 8007FC80 24020001 */   addiu     $v0, $zero, 0x1
  .L8007FC84_8EC34:
    /* 8EC34 8007FC84 8CCD0020 */  lw         $t5, 0x20($a2)
    /* 8EC38 8007FC88 31AE0600 */  andi       $t6, $t5, 0x600
    /* 8EC3C 8007FC8C 51C0004E */  beql       $t6, $zero, .L8007FDC8_8ED78
    /* 8EC40 8007FC90 00001025 */   or        $v0, $zero, $zero
    /* 8EC44 8007FC94 93B8002F */  lbu        $t8, 0x2F($sp)
    /* 8EC48 8007FC98 244F0001 */  addiu      $t7, $v0, 0x1
    /* 8EC4C 8007FC9C 24010001 */  addiu      $at, $zero, 0x1
    /* 8EC50 8007FCA0 17010009 */  bne        $t8, $at, .L8007FCC8_8EC78
    /* 8EC54 8007FCA4 A4CF0040 */   sh        $t7, 0x40($a2)
    /* 8EC58 8007FCA8 84D90040 */  lh         $t9, 0x40($a2)
    /* 8EC5C 8007FCAC 2B210201 */  slti       $at, $t9, 0x201
    /* 8EC60 8007FCB0 14200011 */  bnez       $at, .L8007FCF8_8ECA8
    /* 8EC64 8007FCB4 00000000 */   nop
    /* 8EC68 8007FCB8 0C0221D8 */  jal        func_80088760_97710
    /* 8EC6C 8007FCBC 00C02025 */   or        $a0, $a2, $zero
    /* 8EC70 8007FCC0 10000041 */  b          .L8007FDC8_8ED78
    /* 8EC74 8007FCC4 24020001 */   addiu     $v0, $zero, 0x1
  .L8007FCC8_8EC78:
    /* 8EC78 8007FCC8 84C80040 */  lh         $t0, 0x40($a2)
    /* 8EC7C 8007FCCC 29010033 */  slti       $at, $t0, 0x33
    /* 8EC80 8007FCD0 10200007 */  beqz       $at, .L8007FCF0_8ECA0
    /* 8EC84 8007FCD4 00000000 */   nop
    /* 8EC88 8007FCD8 8C690054 */  lw         $t1, 0x54($v1)
    /* 8EC8C 8007FCDC 3C011000 */  lui        $at, (0x10000080 >> 16)
    /* 8EC90 8007FCE0 34210080 */  ori        $at, $at, (0x10000080 & 0xFFFF)
    /* 8EC94 8007FCE4 01215024 */  and        $t2, $t1, $at
    /* 8EC98 8007FCE8 11400003 */  beqz       $t2, .L8007FCF8_8ECA8
    /* 8EC9C 8007FCEC 00000000 */   nop
  .L8007FCF0_8ECA0:
    /* 8ECA0 8007FCF0 0C0221D8 */  jal        func_80088760_97710
    /* 8ECA4 8007FCF4 00C02025 */   or        $a0, $a2, $zero
  .L8007FCF8_8ECA8:
    /* 8ECA8 8007FCF8 10000033 */  b          .L8007FDC8_8ED78
    /* 8ECAC 8007FCFC 24020001 */   addiu     $v0, $zero, 0x1
  .L8007FD00_8ECB0:
    /* 8ECB0 8007FD00 8C6B0054 */  lw         $t3, 0x54($v1)
    /* 8ECB4 8007FD04 3C010018 */  lui        $at, (0x180000 >> 16)
    /* 8ECB8 8007FD08 93A4002B */  lbu        $a0, 0x2B($sp)
    /* 8ECBC 8007FD0C 01616024 */  and        $t4, $t3, $at
    /* 8ECC0 8007FD10 000C6CC2 */  srl        $t5, $t4, 19
    /* 8ECC4 8007FD14 2DA10003 */  sltiu      $at, $t5, 0x3
    /* 8ECC8 8007FD18 50200008 */  beql       $at, $zero, .L8007FD3C_8ECEC
    /* 8ECCC 8007FD1C 2401FFFF */   addiu     $at, $zero, -0x1
    /* 8ECD0 8007FD20 0C020ACC */  jal        func_80082B30_91AE0
    /* 8ECD4 8007FD24 AFA30020 */   sw        $v1, 0x20($sp)
    /* 8ECD8 8007FD28 00023C00 */  sll        $a3, $v0, 16
    /* 8ECDC 8007FD2C 00077403 */  sra        $t6, $a3, 16
    /* 8ECE0 8007FD30 01C03825 */  or         $a3, $t6, $zero
    /* 8ECE4 8007FD34 8FA30020 */  lw         $v1, 0x20($sp)
    /* 8ECE8 8007FD38 2401FFFF */  addiu      $at, $zero, -0x1
  .L8007FD3C_8ECEC:
    /* 8ECEC 8007FD3C 54E1000B */  bnel       $a3, $at, .L8007FD6C_8ED1C
    /* 8ECF0 8007FD40 2401FFFF */   addiu     $at, $zero, -0x1
    /* 8ECF4 8007FD44 8C6F0054 */  lw         $t7, 0x54($v1)
    /* 8ECF8 8007FD48 000FC080 */  sll        $t8, $t7, 2
    /* 8ECFC 8007FD4C 07020007 */  bltzl      $t8, .L8007FD6C_8ED1C
    /* 8ED00 8007FD50 2401FFFF */   addiu     $at, $zero, -0x1
    /* 8ED04 8007FD54 0C020B01 */  jal        func_80082C04_91BB4
    /* 8ED08 8007FD58 93A4002B */   lbu       $a0, 0x2B($sp)
    /* 8ED0C 8007FD5C 00023C00 */  sll        $a3, $v0, 16
    /* 8ED10 8007FD60 0007CC03 */  sra        $t9, $a3, 16
    /* 8ED14 8007FD64 03203825 */  or         $a3, $t9, $zero
    /* 8ED18 8007FD68 2401FFFF */  addiu      $at, $zero, -0x1
  .L8007FD6C_8ED1C:
    /* 8ED1C 8007FD6C 10E10015 */  beq        $a3, $at, .L8007FDC4_8ED74
    /* 8ED20 8007FD70 93A8002B */   lbu       $t0, 0x2B($sp)
    /* 8ED24 8007FD74 00084880 */  sll        $t1, $t0, 2
    /* 8ED28 8007FD78 01284821 */  addu       $t1, $t1, $t0
    /* 8ED2C 8007FD7C 3C0A8005 */  lui        $t2, %hi(alienInstances)
    /* 8ED30 8007FD80 254A8198 */  addiu      $t2, $t2, %lo(alienInstances)
    /* 8ED34 8007FD84 00094900 */  sll        $t1, $t1, 4
    /* 8ED38 8007FD88 00072C00 */  sll        $a1, $a3, 16
    /* 8ED3C 8007FD8C 00055C03 */  sra        $t3, $a1, 16
    /* 8ED40 8007FD90 012A3021 */  addu       $a2, $t1, $t2
    /* 8ED44 8007FD94 00C02025 */  or         $a0, $a2, $zero
    /* 8ED48 8007FD98 AFA60018 */  sw         $a2, 0x18($sp)
    /* 8ED4C 8007FD9C 0C01F9CD */  jal        func_8007E734_8D6E4
    /* 8ED50 8007FDA0 01602825 */   or        $a1, $t3, $zero
    /* 8ED54 8007FDA4 0C01FB89 */  jal        func_8007EE24_8DDD4
    /* 8ED58 8007FDA8 93A4002B */   lbu       $a0, 0x2B($sp)
    /* 8ED5C 8007FDAC 8FA60018 */  lw         $a2, 0x18($sp)
    /* 8ED60 8007FDB0 24020001 */  addiu      $v0, $zero, 0x1
    /* 8ED64 8007FDB4 90CC0047 */  lbu        $t4, 0x47($a2)
    /* 8ED68 8007FDB8 358D0004 */  ori        $t5, $t4, 0x4
    /* 8ED6C 8007FDBC 10000002 */  b          .L8007FDC8_8ED78
    /* 8ED70 8007FDC0 A0CD0047 */   sb        $t5, 0x47($a2)
  .L8007FDC4_8ED74:
    /* 8ED74 8007FDC4 00001025 */  or         $v0, $zero, $zero
  .L8007FDC8_8ED78:
    /* 8ED78 8007FDC8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 8ED7C 8007FDCC 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 8ED80 8007FDD0 03E00008 */  jr         $ra
    /* 8ED84 8007FDD4 00000000 */   nop
endlabel func_8007FB08_8EAB8
