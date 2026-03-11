nonmatching func_800A9E1C_B8DCC, 0x118

glabel func_800A9E1C_B8DCC
    /* B8DCC 800A9E1C 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* B8DD0 800A9E20 AFBF0014 */  sw         $ra, 0x14($sp)
    /* B8DD4 800A9E24 90820008 */  lbu        $v0, 0x8($a0)
    /* B8DD8 800A9E28 3C198005 */  lui        $t9, %hi(alienInstances)
    /* B8DDC 800A9E2C 27398198 */  addiu      $t9, $t9, %lo(alienInstances)
    /* B8DE0 800A9E30 0002C080 */  sll        $t8, $v0, 2
    /* B8DE4 800A9E34 0302C021 */  addu       $t8, $t8, $v0
    /* B8DE8 800A9E38 0018C100 */  sll        $t8, $t8, 4
    /* B8DEC 800A9E3C 03191821 */  addu       $v1, $t8, $t9
    /* B8DF0 800A9E40 80880001 */  lb         $t0, 0x1($a0)
    /* B8DF4 800A9E44 846B0002 */  lh         $t3, 0x2($v1)
    /* B8DF8 800A9E48 80890002 */  lb         $t1, 0x2($a0)
    /* B8DFC 800A9E4C 8C6D0020 */  lw         $t5, 0x20($v1)
    /* B8E00 800A9E50 34018000 */  ori        $at, $zero, 0x8000
    /* B8E04 800A9E54 00087200 */  sll        $t6, $t0, 8
    /* B8E08 800A9E58 01616021 */  addu       $t4, $t3, $at
    /* B8E0C 800A9E5C 25C80080 */  addiu      $t0, $t6, 0x80
    /* B8E10 800A9E60 3C012000 */  lui        $at, (0x20000000 >> 16)
    /* B8E14 800A9E64 00097A00 */  sll        $t7, $t1, 8
    /* B8E18 800A9E68 25E90080 */  addiu      $t1, $t7, 0x80
    /* B8E1C 800A9E6C 01A17025 */  or         $t6, $t5, $at
    /* B8E20 800A9E70 000E7B00 */  sll        $t7, $t6, 12
    /* B8E24 800A9E74 00803825 */  or         $a3, $a0, $zero
    /* B8E28 800A9E78 A4680000 */  sh         $t0, 0x0($v1)
    /* B8E2C 800A9E7C A4690004 */  sh         $t1, 0x4($v1)
    /* B8E30 800A9E80 A46C0002 */  sh         $t4, 0x2($v1)
    /* B8E34 800A9E84 05E1000F */  bgez       $t7, .L800A9EC4_B8E74
    /* B8E38 800A9E88 AC6E0020 */   sw        $t6, 0x20($v1)
    /* B8E3C 800A9E8C 01C02025 */  or         $a0, $t6, $zero
    /* B8E40 800A9E90 00082C00 */  sll        $a1, $t0, 16
    /* B8E44 800A9E94 00093400 */  sll        $a2, $t1, 16
    /* B8E48 800A9E98 30980007 */  andi       $t8, $a0, 0x7
    /* B8E4C 800A9E9C 00065C03 */  sra        $t3, $a2, 16
    /* B8E50 800A9EA0 0005CC03 */  sra        $t9, $a1, 16
    /* B8E54 800A9EA4 03002025 */  or         $a0, $t8, $zero
    /* B8E58 800A9EA8 03202825 */  or         $a1, $t9, $zero
    /* B8E5C 800A9EAC 01603025 */  or         $a2, $t3, $zero
    /* B8E60 800A9EB0 AFA3001C */  sw         $v1, 0x1C($sp)
    /* B8E64 800A9EB4 0C03CB52 */  jal        func_800F2D48_101CF8
    /* B8E68 800A9EB8 AFA70038 */   sw        $a3, 0x38($sp)
    /* B8E6C 800A9EBC 8FA3001C */  lw         $v1, 0x1C($sp)
    /* B8E70 800A9EC0 8FA70038 */  lw         $a3, 0x38($sp)
  .L800A9EC4_B8E74:
    /* B8E74 800A9EC4 8CEC0004 */  lw         $t4, 0x4($a3)
    /* B8E78 800A9EC8 3C0E800B */  lui        $t6, %hi(func_800A9DC0_B8D70)
    /* B8E7C 800A9ECC 25CE9DC0 */  addiu      $t6, $t6, %lo(func_800A9DC0_B8D70)
    /* B8E80 800A9ED0 258D0009 */  addiu      $t5, $t4, 0x9
    /* B8E84 800A9ED4 ACED0004 */  sw         $t5, 0x4($a3)
    /* B8E88 800A9ED8 ACEE000C */  sw         $t6, 0xC($a3)
    /* B8E8C 800A9EDC AFA3001C */  sw         $v1, 0x1C($sp)
    /* B8E90 800A9EE0 0C02B915 */  jal        func_800AE454_BD404
    /* B8E94 800A9EE4 00E02025 */   or        $a0, $a3, $zero
    /* B8E98 800A9EE8 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* B8E9C 800A9EEC 8FA3001C */  lw         $v1, 0x1C($sp)
    /* B8EA0 800A9EF0 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* B8EA4 800A9EF4 84780000 */  lh         $t8, 0x0($v1)
    /* B8EA8 800A9EF8 846B0004 */  lh         $t3, 0x4($v1)
    /* B8EAC 800A9EFC 848F0000 */  lh         $t7, 0x0($a0)
    /* B8EB0 800A9F00 84990004 */  lh         $t9, 0x4($a0)
    /* B8EB4 800A9F04 01F82823 */  subu       $a1, $t7, $t8
    /* B8EB8 800A9F08 032B3023 */  subu       $a2, $t9, $t3
    /* B8EBC 800A9F0C 44863000 */  mtc1       $a2, $f6
    /* B8EC0 800A9F10 44852000 */  mtc1       $a1, $f4
    /* B8EC4 800A9F14 468033A0 */  cvt.s.w    $f14, $f6
    /* B8EC8 800A9F18 0C000E09 */  jal        func_80003824_4424
    /* B8ECC 800A9F1C 46802320 */   cvt.s.w   $f12, $f4
    /* B8ED0 800A9F20 8FBF0014 */  lw         $ra, 0x14($sp)
    /* B8ED4 800A9F24 8FA3001C */  lw         $v1, 0x1C($sp)
    /* B8ED8 800A9F28 27BD0038 */  addiu      $sp, $sp, 0x38
    /* B8EDC 800A9F2C 03E00008 */  jr         $ra
    /* B8EE0 800A9F30 A462000E */   sh        $v0, 0xE($v1)
endlabel func_800A9E1C_B8DCC
