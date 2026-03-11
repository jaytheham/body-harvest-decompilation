nonmatching func_8008AD40_172E00, 0x1C8

glabel func_8008AD40_172E00
    /* 172E00 8008AD40 3C0C8010 */  lui        $t4, %hi(D_800FCA78)
    /* 172E04 8008AD44 258CCA78 */  addiu      $t4, $t4, %lo(D_800FCA78)
    /* 172E08 8008AD48 918D0000 */  lbu        $t5, 0x0($t4)
    /* 172E0C 8008AD4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 172E10 8008AD50 AFA50024 */  sw         $a1, 0x24($sp)
    /* 172E14 8008AD54 AFA60028 */  sw         $a2, 0x28($sp)
    /* 172E18 8008AD58 00057400 */  sll        $t6, $a1, 16
    /* 172E1C 8008AD5C 0006C400 */  sll        $t8, $a2, 16
    /* 172E20 8008AD60 29A10014 */  slti       $at, $t5, 0x14
    /* 172E24 8008AD64 00183403 */  sra        $a2, $t8, 16
    /* 172E28 8008AD68 000E2C03 */  sra        $a1, $t6, 16
    /* 172E2C 8008AD6C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 172E30 8008AD70 AFA40020 */  sw         $a0, 0x20($sp)
    /* 172E34 8008AD74 14200003 */  bnez       $at, .L8008AD84_172E44
    /* 172E38 8008AD78 AFA7002C */   sw        $a3, 0x2C($sp)
    /* 172E3C 8008AD7C 1000005E */  b          .L8008AEF8_172FB8
    /* 172E40 8008AD80 240200FF */   addiu     $v0, $zero, 0xFF
  .L8008AD84_172E44:
    /* 172E44 8008AD84 3C088010 */  lui        $t0, %hi(D_800FCA79)
    /* 172E48 8008AD88 2508CA79 */  addiu      $t0, $t0, %lo(D_800FCA79)
    /* 172E4C 8008AD8C 910E0000 */  lbu        $t6, 0x0($t0)
    /* 172E50 8008AD90 24090014 */  addiu      $t1, $zero, 0x14
    /* 172E54 8008AD94 87B80022 */  lh         $t8, 0x22($sp)
    /* 172E58 8008AD98 01C90019 */  multu      $t6, $t1
    /* 172E5C 8008AD9C 3C078010 */  lui        $a3, %hi(D_800FC8E8)
    /* 172E60 8008ADA0 24E7C8E8 */  addiu      $a3, $a3, %lo(D_800FC8E8)
    /* 172E64 8008ADA4 0018C880 */  sll        $t9, $t8, 2
    /* 172E68 8008ADA8 00067080 */  sll        $t6, $a2, 2
    /* 172E6C 8008ADAC 00056880 */  sll        $t5, $a1, 2
    /* 172E70 8008ADB0 97B80032 */  lhu        $t8, 0x32($sp)
    /* 172E74 8008ADB4 00007812 */  mflo       $t7
    /* 172E78 8008ADB8 00EF2021 */  addu       $a0, $a3, $t7
    /* 172E7C 8008ADBC A4990000 */  sh         $t9, 0x0($a0)
    /* 172E80 8008ADC0 93B9002F */  lbu        $t9, 0x2F($sp)
    /* 172E84 8008ADC4 A48E0004 */  sh         $t6, 0x4($a0)
    /* 172E88 8008ADC8 A48D0002 */  sh         $t5, 0x2($a0)
    /* 172E8C 8008ADCC 3C0E800A */  lui        $t6, %hi(D_800A2690)
    /* 172E90 8008ADD0 93AF002F */  lbu        $t7, 0x2F($sp)
    /* 172E94 8008ADD4 25CE2690 */  addiu      $t6, $t6, %lo(D_800A2690)
    /* 172E98 8008ADD8 001968C0 */  sll        $t5, $t9, 3
    /* 172E9C 8008ADDC 01AE5021 */  addu       $t2, $t5, $t6
    /* 172EA0 8008ADE0 A498000A */  sh         $t8, 0xA($a0)
    /* 172EA4 8008ADE4 A08F000C */  sb         $t7, 0xC($a0)
    /* 172EA8 8008ADE8 814F0001 */  lb         $t7, 0x1($t2)
    /* 172EAC 8008ADEC 81580002 */  lb         $t8, 0x2($t2)
    /* 172EB0 8008ADF0 81590003 */  lb         $t9, 0x3($t2)
    /* 172EB4 8008ADF4 A080000F */  sb         $zero, 0xF($a0)
    /* 172EB8 8008ADF8 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 172EBC 8008ADFC A08F0010 */  sb         $t7, 0x10($a0)
    /* 172EC0 8008AE00 A0980011 */  sb         $t8, 0x11($a0)
    /* 172EC4 8008AE04 0C000E38 */  jal        func_800038E0_44E0
    /* 172EC8 8008AE08 A0990012 */   sb        $t9, 0x12($a0)
    /* 172ECC 8008AE0C 3C088010 */  lui        $t0, %hi(D_800FCA79)
    /* 172ED0 8008AE10 2508CA79 */  addiu      $t0, $t0, %lo(D_800FCA79)
    /* 172ED4 8008AE14 91050000 */  lbu        $a1, 0x0($t0)
    /* 172ED8 8008AE18 24090014 */  addiu      $t1, $zero, 0x14
    /* 172EDC 8008AE1C 8FAA0018 */  lw         $t2, 0x18($sp)
    /* 172EE0 8008AE20 00A90019 */  multu      $a1, $t1
    /* 172EE4 8008AE24 3C078010 */  lui        $a3, %hi(D_800FC8E8)
    /* 172EE8 8008AE28 814E0000 */  lb         $t6, 0x0($t2)
    /* 172EEC 8008AE2C 93B8002F */  lbu        $t8, 0x2F($sp)
    /* 172EF0 8008AE30 24E7C8E8 */  addiu      $a3, $a3, %lo(D_800FC8E8)
    /* 172EF4 8008AE34 3C0C8010 */  lui        $t4, %hi(D_800FCA78)
    /* 172EF8 8008AE38 0018C880 */  sll        $t9, $t8, 2
    /* 172EFC 8008AE3C 258CCA78 */  addiu      $t4, $t4, %lo(D_800FCA78)
    /* 172F00 8008AE40 30AB00FF */  andi       $t3, $a1, 0xFF
    /* 172F04 8008AE44 30A300FF */  andi       $v1, $a1, 0xFF
    /* 172F08 8008AE48 00006812 */  mflo       $t5
    /* 172F0C 8008AE4C 00ED2021 */  addu       $a0, $a3, $t5
    /* 172F10 8008AE50 3C0D800A */  lui        $t5, %hi(D_800A2698)
    /* 172F14 8008AE54 004E001A */  div        $zero, $v0, $t6
    /* 172F18 8008AE58 25AD2698 */  addiu      $t5, $t5, %lo(D_800A2698)
    /* 172F1C 8008AE5C 032D3021 */  addu       $a2, $t9, $t5
    /* 172F20 8008AE60 15C00002 */  bnez       $t6, .L8008AE6C_172F2C
    /* 172F24 8008AE64 00000000 */   nop
    /* 172F28 8008AE68 0007000D */  break      7
  .L8008AE6C_172F2C:
    /* 172F2C 8008AE6C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 172F30 8008AE70 15C10004 */  bne        $t6, $at, .L8008AE84_172F44
    /* 172F34 8008AE74 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 172F38 8008AE78 14410002 */  bne        $v0, $at, .L8008AE84_172F44
    /* 172F3C 8008AE7C 00000000 */   nop
    /* 172F40 8008AE80 0006000D */  break      6
  .L8008AE84_172F44:
    /* 172F44 8008AE84 00007810 */  mfhi       $t7
    /* 172F48 8008AE88 A08F000E */  sb         $t7, 0xE($a0)
    /* 172F4C 8008AE8C 90CE0003 */  lbu        $t6, 0x3($a2)
    /* 172F50 8008AE90 90CF0000 */  lbu        $t7, 0x0($a2)
    /* 172F54 8008AE94 90D80001 */  lbu        $t8, 0x1($a2)
    /* 172F58 8008AE98 90D90002 */  lbu        $t9, 0x2($a2)
    /* 172F5C 8008AE9C 28A10014 */  slti       $at, $a1, 0x14
    /* 172F60 8008AEA0 A08E000D */  sb         $t6, 0xD($a0)
    /* 172F64 8008AEA4 A08F0006 */  sb         $t7, 0x6($a0)
    /* 172F68 8008AEA8 A0980007 */  sb         $t8, 0x7($a0)
    /* 172F6C 8008AEAC 1020000E */  beqz       $at, .L8008AEE8_172FA8
    /* 172F70 8008AEB0 A0990008 */   sb        $t9, 0x8($a0)
  .L8008AEB4_172F74:
    /* 172F74 8008AEB4 00690019 */  multu      $v1, $t1
    /* 172F78 8008AEB8 00006812 */  mflo       $t5
    /* 172F7C 8008AEBC 00ED7021 */  addu       $t6, $a3, $t5
    /* 172F80 8008AEC0 85CF000A */  lh         $t7, 0xA($t6)
    /* 172F84 8008AEC4 55E00004 */  bnel       $t7, $zero, .L8008AED8_172F98
    /* 172F88 8008AEC8 24630001 */   addiu     $v1, $v1, 0x1
    /* 172F8C 8008AECC A1030000 */  sb         $v1, 0x0($t0)
    /* 172F90 8008AED0 312300FF */  andi       $v1, $t1, 0xFF
    /* 172F94 8008AED4 24630001 */  addiu      $v1, $v1, 0x1
  .L8008AED8_172F98:
    /* 172F98 8008AED8 307800FF */  andi       $t8, $v1, 0xFF
    /* 172F9C 8008AEDC 2B010014 */  slti       $at, $t8, 0x14
    /* 172FA0 8008AEE0 1420FFF4 */  bnez       $at, .L8008AEB4_172F74
    /* 172FA4 8008AEE4 03001825 */   or        $v1, $t8, $zero
  .L8008AEE8_172FA8:
    /* 172FA8 8008AEE8 91990000 */  lbu        $t9, 0x0($t4)
    /* 172FAC 8008AEEC 01601025 */  or         $v0, $t3, $zero
    /* 172FB0 8008AEF0 272D0001 */  addiu      $t5, $t9, 0x1
    /* 172FB4 8008AEF4 A18D0000 */  sb         $t5, 0x0($t4)
  .L8008AEF8_172FB8:
    /* 172FB8 8008AEF8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 172FBC 8008AEFC 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 172FC0 8008AF00 03E00008 */  jr         $ra
    /* 172FC4 8008AF04 00000000 */   nop
endlabel func_8008AD40_172E00
