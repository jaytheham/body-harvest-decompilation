nonmatching func_80085E2C_94DDC, 0x13C

glabel func_80085E2C_94DDC
    /* 94DDC 80085E2C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 94DE0 80085E30 000E7880 */  sll        $t7, $t6, 2
    /* 94DE4 80085E34 01EE7821 */  addu       $t7, $t7, $t6
    /* 94DE8 80085E38 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 94DEC 80085E3C 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 94DF0 80085E40 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 94DF4 80085E44 000F7900 */  sll        $t7, $t7, 4
    /* 94DF8 80085E48 01F81821 */  addu       $v1, $t7, $t8
    /* 94DFC 80085E4C 9079001A */  lbu        $t9, 0x1A($v1)
    /* 94E00 80085E50 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 94E04 80085E54 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 94E08 80085E58 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 94E0C 80085E5C AFA40048 */  sw         $a0, 0x48($sp)
    /* 94E10 80085E60 AFA5004C */  sw         $a1, 0x4C($sp)
    /* 94E14 80085E64 AFA60050 */  sw         $a2, 0x50($sp)
    /* 94E18 80085E68 A3B90047 */  sb         $t9, 0x47($sp)
    /* 94E1C 80085E6C 846C0000 */  lh         $t4, 0x0($v1)
    /* 94E20 80085E70 846E0004 */  lh         $t6, 0x4($v1)
    /* 94E24 80085E74 844B0000 */  lh         $t3, 0x0($v0)
    /* 94E28 80085E78 844D0004 */  lh         $t5, 0x4($v0)
    /* 94E2C 80085E7C AFA3002C */  sw         $v1, 0x2C($sp)
    /* 94E30 80085E80 016C3823 */  subu       $a3, $t3, $t4
    /* 94E34 80085E84 01AE4023 */  subu       $t0, $t5, $t6
    /* 94E38 80085E88 44883000 */  mtc1       $t0, $f6
    /* 94E3C 80085E8C 44872000 */  mtc1       $a3, $f4
    /* 94E40 80085E90 468033A0 */  cvt.s.w    $f14, $f6
    /* 94E44 80085E94 0C000E09 */  jal        func_80003824_4424
    /* 94E48 80085E98 46802320 */   cvt.s.w   $f12, $f4
    /* 94E4C 80085E9C 93B80047 */  lbu        $t8, 0x47($sp)
    /* 94E50 80085EA0 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 94E54 80085EA4 87AB004E */  lh         $t3, 0x4E($sp)
    /* 94E58 80085EA8 0018C880 */  sll        $t9, $t8, 2
    /* 94E5C 80085EAC 0338C823 */  subu       $t9, $t9, $t8
    /* 94E60 80085EB0 846F0006 */  lh         $t7, 0x6($v1)
    /* 94E64 80085EB4 0019C880 */  sll        $t9, $t9, 2
    /* 94E68 80085EB8 000B6100 */  sll        $t4, $t3, 4
    /* 94E6C 80085EBC 3C0B8025 */  lui        $t3, %hi(alienSpecs)
    /* 94E70 80085EC0 3C0D8015 */  lui        $t5, %hi(D_8014DD50)
    /* 94E74 80085EC4 0338C821 */  addu       $t9, $t9, $t8
    /* 94E78 80085EC8 0019C8C0 */  sll        $t9, $t9, 3
    /* 94E7C 80085ECC 25ADDD50 */  addiu      $t5, $t5, %lo(D_8014DD50)
    /* 94E80 80085ED0 256B6680 */  addiu      $t3, $t3, %lo(alienSpecs)
    /* 94E84 80085ED4 032B5021 */  addu       $t2, $t9, $t3
    /* 94E88 80085ED8 018D4021 */  addu       $t0, $t4, $t5
    /* 94E8C 80085EDC 004F4823 */  subu       $t1, $v0, $t7
    /* 94E90 80085EE0 8FA60050 */  lw         $a2, 0x50($sp)
    /* 94E94 80085EE4 854C0042 */  lh         $t4, 0x42($t2)
    /* 94E98 80085EE8 00092823 */  negu       $a1, $t1
    /* 94E9C 80085EEC 00057400 */  sll        $t6, $a1, 16
    /* 94EA0 80085EF0 000E2C03 */  sra        $a1, $t6, 16
    /* 94EA4 80085EF4 A7A90042 */  sh         $t1, 0x42($sp)
    /* 94EA8 80085EF8 85040006 */  lh         $a0, 0x6($t0)
    /* 94EAC 80085EFC AFA80028 */  sw         $t0, 0x28($sp)
    /* 94EB0 80085F00 AFAA0024 */  sw         $t2, 0x24($sp)
    /* 94EB4 80085F04 00063823 */  negu       $a3, $a2
    /* 94EB8 80085F08 0C0216A7 */  jal        func_80085A9C_94A4C
    /* 94EBC 80085F0C AFAC0010 */   sw        $t4, 0x10($sp)
    /* 94EC0 80085F10 8FA80028 */  lw         $t0, 0x28($sp)
    /* 94EC4 80085F14 87A90042 */  lh         $t1, 0x42($sp)
    /* 94EC8 80085F18 8FAA0024 */  lw         $t2, 0x24($sp)
    /* 94ECC 80085F1C A5020006 */  sh         $v0, 0x6($t0)
    /* 94ED0 80085F20 850D0006 */  lh         $t5, 0x6($t0)
    /* 94ED4 80085F24 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 94ED8 80085F28 01A91821 */  addu       $v1, $t5, $t1
    /* 94EDC 80085F2C 00032023 */  negu       $a0, $v1
    /* 94EE0 80085F30 0083082A */  slt        $at, $a0, $v1
    /* 94EE4 80085F34 10200003 */  beqz       $at, .L80085F44_94EF4
    /* 94EE8 80085F38 00801025 */   or        $v0, $a0, $zero
    /* 94EEC 80085F3C 10000001 */  b          .L80085F44_94EF4
    /* 94EF0 80085F40 00601025 */   or        $v0, $v1, $zero
  .L80085F44_94EF4:
    /* 94EF4 80085F44 854E0042 */  lh         $t6, 0x42($t2)
    /* 94EF8 80085F48 000E7840 */  sll        $t7, $t6, 1
    /* 94EFC 80085F4C 01E2082A */  slt        $at, $t7, $v0
    /* 94F00 80085F50 10200003 */  beqz       $at, .L80085F60_94F10
    /* 94F04 80085F54 00001025 */   or        $v0, $zero, $zero
    /* 94F08 80085F58 10000001 */  b          .L80085F60_94F10
    /* 94F0C 80085F5C 24020001 */   addiu     $v0, $zero, 0x1
  .L80085F60_94F10:
    /* 94F10 80085F60 03E00008 */  jr         $ra
    /* 94F14 80085F64 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_80085E2C_94DDC
