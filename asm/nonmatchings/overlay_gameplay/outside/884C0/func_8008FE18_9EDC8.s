nonmatching func_8008FE18_9EDC8, 0x13C

glabel func_8008FE18_9EDC8
    /* 9EDC8 8008FE18 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 9EDCC 8008FE1C AFBF002C */  sw         $ra, 0x2C($sp)
    /* 9EDD0 8008FE20 AFA40050 */  sw         $a0, 0x50($sp)
    /* 9EDD4 8008FE24 AFB00028 */  sw         $s0, 0x28($sp)
    /* 9EDD8 8008FE28 0C01E55B */  jal        func_8007956C_8851C
    /* 9EDDC 8008FE2C 24040002 */   addiu     $a0, $zero, 0x2
    /* 9EDE0 8008FE30 304E00FF */  andi       $t6, $v0, 0xFF
    /* 9EDE4 8008FE34 240100FF */  addiu      $at, $zero, 0xFF
    /* 9EDE8 8008FE38 11C10040 */  beq        $t6, $at, .L8008FF3C_9EEEC
    /* 9EDEC 8008FE3C 304800FF */   andi      $t0, $v0, 0xFF
    /* 9EDF0 8008FE40 93AF0053 */  lbu        $t7, 0x53($sp)
    /* 9EDF4 8008FE44 3C198005 */  lui        $t9, %hi(alienInstances)
    /* 9EDF8 8008FE48 27398198 */  addiu      $t9, $t9, %lo(alienInstances)
    /* 9EDFC 8008FE4C 000FC080 */  sll        $t8, $t7, 2
    /* 9EE00 8008FE50 030FC021 */  addu       $t8, $t8, $t7
    /* 9EE04 8008FE54 0018C100 */  sll        $t8, $t8, 4
    /* 9EE08 8008FE58 03198021 */  addu       $s0, $t8, $t9
    /* 9EE0C 8008FE5C 27A90044 */  addiu      $t1, $sp, 0x44
    /* 9EE10 8008FE60 27AA0040 */  addiu      $t2, $sp, 0x40
    /* 9EE14 8008FE64 27AB003C */  addiu      $t3, $sp, 0x3C
    /* 9EE18 8008FE68 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 9EE1C 8008FE6C AFAA0014 */  sw         $t2, 0x14($sp)
    /* 9EE20 8008FE70 AFA90010 */  sw         $t1, 0x10($sp)
    /* 9EE24 8008FE74 02002025 */  or         $a0, $s0, $zero
    /* 9EE28 8008FE78 00002825 */  or         $a1, $zero, $zero
    /* 9EE2C 8008FE7C 00003025 */  or         $a2, $zero, $zero
    /* 9EE30 8008FE80 2407FFCE */  addiu      $a3, $zero, -0x32
    /* 9EE34 8008FE84 0C04A10A */  jal        func_80128428_1373D8
    /* 9EE38 8008FE88 A3A8004F */   sb        $t0, 0x4F($sp)
    /* 9EE3C 8008FE8C 93A8004F */  lbu        $t0, 0x4F($sp)
    /* 9EE40 8008FE90 3C0D8005 */  lui        $t5, %hi(alienInstances)
    /* 9EE44 8008FE94 25AD8198 */  addiu      $t5, $t5, %lo(alienInstances)
    /* 9EE48 8008FE98 00086080 */  sll        $t4, $t0, 2
    /* 9EE4C 8008FE9C 01886021 */  addu       $t4, $t4, $t0
    /* 9EE50 8008FEA0 000C6100 */  sll        $t4, $t4, 4
    /* 9EE54 8008FEA4 018D1821 */  addu       $v1, $t4, $t5
    /* 9EE58 8008FEA8 8FAE0044 */  lw         $t6, 0x44($sp)
    /* 9EE5C 8008FEAC 8FAF003C */  lw         $t7, 0x3C($sp)
    /* 9EE60 8008FEB0 93B90053 */  lbu        $t9, 0x53($sp)
    /* 9EE64 8008FEB4 93A90053 */  lbu        $t1, 0x53($sp)
    /* 9EE68 8008FEB8 241800E0 */  addiu      $t8, $zero, 0xE0
    /* 9EE6C 8008FEBC 8C6B0020 */  lw         $t3, 0x20($v1)
    /* 9EE70 8008FEC0 A4780048 */  sh         $t8, 0x48($v1)
    /* 9EE74 8008FEC4 A46E0000 */  sh         $t6, 0x0($v1)
    /* 9EE78 8008FEC8 A46F0004 */  sh         $t7, 0x4($v1)
    /* 9EE7C 8008FECC A4790038 */  sh         $t9, 0x38($v1)
    /* 9EE80 8008FED0 A0690025 */  sb         $t1, 0x25($v1)
    /* 9EE84 8008FED4 820A003D */  lb         $t2, 0x3D($s0)
    /* 9EE88 8008FED8 240D0010 */  addiu      $t5, $zero, 0x10
    /* 9EE8C 8008FEDC 356C4000 */  ori        $t4, $t3, 0x4000
    /* 9EE90 8008FEE0 AC6C0020 */  sw         $t4, 0x20($v1)
    /* 9EE94 8008FEE4 A46D002C */  sh         $t5, 0x2C($v1)
    /* 9EE98 8008FEE8 A06A003D */  sb         $t2, 0x3D($v1)
    /* 9EE9C 8008FEEC 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 9EEA0 8008FEF0 24060008 */  addiu      $a2, $zero, 0x8
    /* 9EEA4 8008FEF4 31CF4000 */  andi       $t7, $t6, 0x4000
    /* 9EEA8 8008FEF8 15E0000E */  bnez       $t7, .L8008FF34_9EEE4
    /* 9EEAC 8008FEFC 00000000 */   nop
    /* 9EEB0 8008FF00 86040000 */  lh         $a0, 0x0($s0)
    /* 9EEB4 8008FF04 86050004 */  lh         $a1, 0x4($s0)
    /* 9EEB8 8008FF08 0C0208E5 */  jal        func_80082394_91344
    /* 9EEBC 8008FF0C AFA30034 */   sw        $v1, 0x34($sp)
    /* 9EEC0 8008FF10 240100FF */  addiu      $at, $zero, 0xFF
    /* 9EEC4 8008FF14 10410007 */  beq        $v0, $at, .L8008FF34_9EEE4
    /* 9EEC8 8008FF18 8FA30034 */   lw        $v1, 0x34($sp)
    /* 9EECC 8008FF1C 8C780020 */  lw         $t8, 0x20($v1)
    /* 9EED0 8008FF20 240900E0 */  addiu      $t1, $zero, 0xE0
    /* 9EED4 8008FF24 A4620038 */  sh         $v0, 0x38($v1)
    /* 9EED8 8008FF28 37190020 */  ori        $t9, $t8, 0x20
    /* 9EEDC 8008FF2C AC790020 */  sw         $t9, 0x20($v1)
    /* 9EEE0 8008FF30 A4690048 */  sh         $t1, 0x48($v1)
  .L8008FF34_9EEE4:
    /* 9EEE4 8008FF34 10000002 */  b          .L8008FF40_9EEF0
    /* 9EEE8 8008FF38 24020001 */   addiu     $v0, $zero, 0x1
  .L8008FF3C_9EEEC:
    /* 9EEEC 8008FF3C 00001025 */  or         $v0, $zero, $zero
  .L8008FF40_9EEF0:
    /* 9EEF0 8008FF40 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 9EEF4 8008FF44 8FB00028 */  lw         $s0, 0x28($sp)
    /* 9EEF8 8008FF48 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 9EEFC 8008FF4C 03E00008 */  jr         $ra
    /* 9EF00 8008FF50 00000000 */   nop
endlabel func_8008FE18_9EDC8
