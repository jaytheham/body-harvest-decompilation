nonmatching func_800DFA98_EEA48, 0x110

glabel func_800DFA98_EEA48
    /* EEA48 800DFA98 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* EEA4C 800DFA9C AFB50028 */  sw         $s5, 0x28($sp)
    /* EEA50 800DFAA0 AFB40024 */  sw         $s4, 0x24($sp)
    /* EEA54 800DFAA4 AFB30020 */  sw         $s3, 0x20($sp)
    /* EEA58 800DFAA8 0080A825 */  or         $s5, $a0, $zero
    /* EEA5C 800DFAAC AFBF002C */  sw         $ra, 0x2C($sp)
    /* EEA60 800DFAB0 AFB2001C */  sw         $s2, 0x1C($sp)
    /* EEA64 800DFAB4 AFB10018 */  sw         $s1, 0x18($sp)
    /* EEA68 800DFAB8 AFB00014 */  sw         $s0, 0x14($sp)
    /* EEA6C 800DFABC 24130078 */  addiu      $s3, $zero, 0x78
    /* EEA70 800DFAC0 0000A025 */  or         $s4, $zero, $zero
  .L800DFAC4_EEA74:
    /* EEA74 800DFAC4 00147080 */  sll        $t6, $s4, 2
    /* EEA78 800DFAC8 3C0F8014 */  lui        $t7, %hi(D_8013DF84)
    /* EEA7C 800DFACC 0014C080 */  sll        $t8, $s4, 2
    /* EEA80 800DFAD0 0314C023 */  subu       $t8, $t8, $s4
    /* EEA84 800DFAD4 25EFDF84 */  addiu      $t7, $t7, %lo(D_8013DF84)
    /* EEA88 800DFAD8 01D47023 */  subu       $t6, $t6, $s4
    /* EEA8C 800DFADC 01CF8821 */  addu       $s1, $t6, $t7
    /* EEA90 800DFAE0 02B89021 */  addu       $s2, $s5, $t8
    /* EEA94 800DFAE4 00008025 */  or         $s0, $zero, $zero
  .L800DFAE8_EEA98:
    /* EEA98 800DFAE8 0C000E38 */  jal        func_800038E0_44E0
    /* EEA9C 800DFAEC 00000000 */   nop
    /* EEAA0 800DFAF0 0053001A */  div        $zero, $v0, $s3
    /* EEAA4 800DFAF4 02304021 */  addu       $t0, $s1, $s0
    /* EEAA8 800DFAF8 91090000 */  lbu        $t1, 0x0($t0)
    /* EEAAC 800DFAFC 0000C810 */  mfhi       $t9
    /* EEAB0 800DFB00 02506021 */  addu       $t4, $s2, $s0
    /* EEAB4 800DFB04 03291821 */  addu       $v1, $t9, $t1
    /* EEAB8 800DFB08 2463FFC4 */  addiu      $v1, $v1, -0x3C
    /* EEABC 800DFB0C 00035400 */  sll        $t2, $v1, 16
    /* EEAC0 800DFB10 000A5C03 */  sra        $t3, $t2, 16
    /* EEAC4 800DFB14 16600002 */  bnez       $s3, .L800DFB20_EEAD0
    /* EEAC8 800DFB18 00000000 */   nop
    /* EEACC 800DFB1C 0007000D */  break      7
  .L800DFB20_EEAD0:
    /* EEAD0 800DFB20 2401FFFF */  addiu      $at, $zero, -0x1
    /* EEAD4 800DFB24 16610004 */  bne        $s3, $at, .L800DFB38_EEAE8
    /* EEAD8 800DFB28 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EEADC 800DFB2C 14410002 */  bne        $v0, $at, .L800DFB38_EEAE8
    /* EEAE0 800DFB30 00000000 */   nop
    /* EEAE4 800DFB34 0006000D */  break      6
  .L800DFB38_EEAE8:
    /* EEAE8 800DFB38 26100001 */  addiu      $s0, $s0, 0x1
    /* EEAEC 800DFB3C 05610003 */  bgez       $t3, .L800DFB4C_EEAFC
    /* EEAF0 800DFB40 01601825 */   or        $v1, $t3, $zero
    /* EEAF4 800DFB44 10000005 */  b          .L800DFB5C_EEB0C
    /* EEAF8 800DFB48 00001825 */   or        $v1, $zero, $zero
  .L800DFB4C_EEAFC:
    /* EEAFC 800DFB4C 28610100 */  slti       $at, $v1, 0x100
    /* EEB00 800DFB50 54200003 */  bnel       $at, $zero, .L800DFB60_EEB10
    /* EEB04 800DFB54 320D00FF */   andi      $t5, $s0, 0xFF
    /* EEB08 800DFB58 240300FF */  addiu      $v1, $zero, 0xFF
  .L800DFB5C_EEB0C:
    /* EEB0C 800DFB5C 320D00FF */  andi       $t5, $s0, 0xFF
  .L800DFB60_EEB10:
    /* EEB10 800DFB60 29A10003 */  slti       $at, $t5, 0x3
    /* EEB14 800DFB64 01A08025 */  or         $s0, $t5, $zero
    /* EEB18 800DFB68 1420FFDF */  bnez       $at, .L800DFAE8_EEA98
    /* EEB1C 800DFB6C A1830000 */   sb        $v1, 0x0($t4)
    /* EEB20 800DFB70 26940001 */  addiu      $s4, $s4, 0x1
    /* EEB24 800DFB74 328E00FF */  andi       $t6, $s4, 0xFF
    /* EEB28 800DFB78 29C10004 */  slti       $at, $t6, 0x4
    /* EEB2C 800DFB7C 1420FFD1 */  bnez       $at, .L800DFAC4_EEA74
    /* EEB30 800DFB80 01C0A025 */   or        $s4, $t6, $zero
    /* EEB34 800DFB84 8FBF002C */  lw         $ra, 0x2C($sp)
    /* EEB38 800DFB88 8FB00014 */  lw         $s0, 0x14($sp)
    /* EEB3C 800DFB8C 8FB10018 */  lw         $s1, 0x18($sp)
    /* EEB40 800DFB90 8FB2001C */  lw         $s2, 0x1C($sp)
    /* EEB44 800DFB94 8FB30020 */  lw         $s3, 0x20($sp)
    /* EEB48 800DFB98 8FB40024 */  lw         $s4, 0x24($sp)
    /* EEB4C 800DFB9C 8FB50028 */  lw         $s5, 0x28($sp)
    /* EEB50 800DFBA0 03E00008 */  jr         $ra
    /* EEB54 800DFBA4 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_800DFA98_EEA48
