nonmatching func_80083A58_53F08, 0xBC

glabel func_80083A58_53F08
    /* 53F08 80083A58 3C07800E */  lui        $a3, %hi(D_800DE838)
    /* 53F0C 80083A5C 24E7E838 */  addiu      $a3, $a3, %lo(D_800DE838)
    /* 53F10 80083A60 90E20000 */  lbu        $v0, 0x0($a3)
    /* 53F14 80083A64 AFA40000 */  sw         $a0, 0x0($sp)
    /* 53F18 80083A68 308500FF */  andi       $a1, $a0, 0xFF
    /* 53F1C 80083A6C 28410096 */  slti       $at, $v0, 0x96
    /* 53F20 80083A70 14200003 */  bnez       $at, .L80083A80_53F30
    /* 53F24 80083A74 3C08800E */   lui       $t0, %hi(D_800DE839)
    /* 53F28 80083A78 03E00008 */  jr         $ra
    /* 53F2C 80083A7C 240200FB */   addiu     $v0, $zero, 0xFB
  .L80083A80_53F30:
    /* 53F30 80083A80 2508E839 */  addiu      $t0, $t0, %lo(D_800DE839)
    /* 53F34 80083A84 91030000 */  lbu        $v1, 0x0($t0)
    /* 53F38 80083A88 240A000C */  addiu      $t2, $zero, 0xC
    /* 53F3C 80083A8C 3C09800E */  lui        $t1, %hi(D_800DE130)
    /* 53F40 80083A90 006A0019 */  multu      $v1, $t2
    /* 53F44 80083A94 2529E130 */  addiu      $t1, $t1, %lo(D_800DE130)
    /* 53F48 80083A98 240BFFFA */  addiu      $t3, $zero, -0x6
    /* 53F4C 80083A9C 244F0001 */  addiu      $t7, $v0, 0x1
    /* 53F50 80083AA0 24180096 */  addiu      $t8, $zero, 0x96
    /* 53F54 80083AA4 28610096 */  slti       $at, $v1, 0x96
    /* 53F58 80083AA8 A0EF0000 */  sb         $t7, 0x0($a3)
    /* 53F5C 80083AAC A1180000 */  sb         $t8, 0x0($t0)
    /* 53F60 80083AB0 240200FA */  addiu      $v0, $zero, 0xFA
    /* 53F64 80083AB4 306600FF */  andi       $a2, $v1, 0xFF
    /* 53F68 80083AB8 00007012 */  mflo       $t6
    /* 53F6C 80083ABC 012E2021 */  addu       $a0, $t1, $t6
    /* 53F70 80083AC0 A0850000 */  sb         $a1, 0x0($a0)
    /* 53F74 80083AC4 A0800001 */  sb         $zero, 0x1($a0)
    /* 53F78 80083AC8 A0800004 */  sb         $zero, 0x4($a0)
    /* 53F7C 80083ACC A48B0006 */  sh         $t3, 0x6($a0)
    /* 53F80 80083AD0 1020000E */  beqz       $at, .L80083B0C_53FBC
    /* 53F84 80083AD4 A48B0008 */   sh        $t3, 0x8($a0)
  .L80083AD8_53F88:
    /* 53F88 80083AD8 00CA0019 */  multu      $a2, $t2
    /* 53F8C 80083ADC 0000C812 */  mflo       $t9
    /* 53F90 80083AE0 01396021 */  addu       $t4, $t1, $t9
    /* 53F94 80083AE4 918D0000 */  lbu        $t5, 0x0($t4)
    /* 53F98 80083AE8 544D0004 */  bnel       $v0, $t5, .L80083AFC_53FAC
    /* 53F9C 80083AEC 24C60001 */   addiu     $a2, $a2, 0x1
    /* 53FA0 80083AF0 A1060000 */  sb         $a2, 0x0($t0)
    /* 53FA4 80083AF4 24060096 */  addiu      $a2, $zero, 0x96
    /* 53FA8 80083AF8 24C60001 */  addiu      $a2, $a2, 0x1
  .L80083AFC_53FAC:
    /* 53FAC 80083AFC 30CE00FF */  andi       $t6, $a2, 0xFF
    /* 53FB0 80083B00 29C10096 */  slti       $at, $t6, 0x96
    /* 53FB4 80083B04 1420FFF4 */  bnez       $at, .L80083AD8_53F88
    /* 53FB8 80083B08 01C03025 */   or        $a2, $t6, $zero
  .L80083B0C_53FBC:
    /* 53FBC 80083B0C 03E00008 */  jr         $ra
    /* 53FC0 80083B10 00601025 */   or        $v0, $v1, $zero
endlabel func_80083A58_53F08
