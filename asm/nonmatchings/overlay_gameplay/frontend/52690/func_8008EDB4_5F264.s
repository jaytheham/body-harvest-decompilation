nonmatching func_8008EDB4_5F264, 0x110

glabel func_8008EDB4_5F264
    /* 5F264 8008EDB4 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 5F268 8008EDB8 AFB50028 */  sw         $s5, 0x28($sp)
    /* 5F26C 8008EDBC AFB40024 */  sw         $s4, 0x24($sp)
    /* 5F270 8008EDC0 AFB30020 */  sw         $s3, 0x20($sp)
    /* 5F274 8008EDC4 0080A825 */  or         $s5, $a0, $zero
    /* 5F278 8008EDC8 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 5F27C 8008EDCC AFB2001C */  sw         $s2, 0x1C($sp)
    /* 5F280 8008EDD0 AFB10018 */  sw         $s1, 0x18($sp)
    /* 5F284 8008EDD4 AFB00014 */  sw         $s0, 0x14($sp)
    /* 5F288 8008EDD8 24130078 */  addiu      $s3, $zero, 0x78
    /* 5F28C 8008EDDC 0000A025 */  or         $s4, $zero, $zero
  .L8008EDE0_5F290:
    /* 5F290 8008EDE0 00147080 */  sll        $t6, $s4, 2
    /* 5F294 8008EDE4 3C0F800B */  lui        $t7, %hi(D_800AA688)
    /* 5F298 8008EDE8 0014C080 */  sll        $t8, $s4, 2
    /* 5F29C 8008EDEC 0314C023 */  subu       $t8, $t8, $s4
    /* 5F2A0 8008EDF0 25EFA688 */  addiu      $t7, $t7, %lo(D_800AA688)
    /* 5F2A4 8008EDF4 01D47023 */  subu       $t6, $t6, $s4
    /* 5F2A8 8008EDF8 01CF8821 */  addu       $s1, $t6, $t7
    /* 5F2AC 8008EDFC 02B89021 */  addu       $s2, $s5, $t8
    /* 5F2B0 8008EE00 00008025 */  or         $s0, $zero, $zero
  .L8008EE04_5F2B4:
    /* 5F2B4 8008EE04 0C000E38 */  jal        func_800038E0_44E0
    /* 5F2B8 8008EE08 00000000 */   nop
    /* 5F2BC 8008EE0C 0053001A */  div        $zero, $v0, $s3
    /* 5F2C0 8008EE10 02304021 */  addu       $t0, $s1, $s0
    /* 5F2C4 8008EE14 91090000 */  lbu        $t1, 0x0($t0)
    /* 5F2C8 8008EE18 0000C810 */  mfhi       $t9
    /* 5F2CC 8008EE1C 02506021 */  addu       $t4, $s2, $s0
    /* 5F2D0 8008EE20 03291821 */  addu       $v1, $t9, $t1
    /* 5F2D4 8008EE24 2463FFC4 */  addiu      $v1, $v1, -0x3C
    /* 5F2D8 8008EE28 00035400 */  sll        $t2, $v1, 16
    /* 5F2DC 8008EE2C 000A5C03 */  sra        $t3, $t2, 16
    /* 5F2E0 8008EE30 16600002 */  bnez       $s3, .L8008EE3C_5F2EC
    /* 5F2E4 8008EE34 00000000 */   nop
    /* 5F2E8 8008EE38 0007000D */  break      7
  .L8008EE3C_5F2EC:
    /* 5F2EC 8008EE3C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5F2F0 8008EE40 16610004 */  bne        $s3, $at, .L8008EE54_5F304
    /* 5F2F4 8008EE44 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5F2F8 8008EE48 14410002 */  bne        $v0, $at, .L8008EE54_5F304
    /* 5F2FC 8008EE4C 00000000 */   nop
    /* 5F300 8008EE50 0006000D */  break      6
  .L8008EE54_5F304:
    /* 5F304 8008EE54 26100001 */  addiu      $s0, $s0, 0x1
    /* 5F308 8008EE58 05610003 */  bgez       $t3, .L8008EE68_5F318
    /* 5F30C 8008EE5C 01601825 */   or        $v1, $t3, $zero
    /* 5F310 8008EE60 10000005 */  b          .L8008EE78_5F328
    /* 5F314 8008EE64 00001825 */   or        $v1, $zero, $zero
  .L8008EE68_5F318:
    /* 5F318 8008EE68 28610100 */  slti       $at, $v1, 0x100
    /* 5F31C 8008EE6C 54200003 */  bnel       $at, $zero, .L8008EE7C_5F32C
    /* 5F320 8008EE70 320D00FF */   andi      $t5, $s0, 0xFF
    /* 5F324 8008EE74 240300FF */  addiu      $v1, $zero, 0xFF
  .L8008EE78_5F328:
    /* 5F328 8008EE78 320D00FF */  andi       $t5, $s0, 0xFF
  .L8008EE7C_5F32C:
    /* 5F32C 8008EE7C 29A10003 */  slti       $at, $t5, 0x3
    /* 5F330 8008EE80 01A08025 */  or         $s0, $t5, $zero
    /* 5F334 8008EE84 1420FFDF */  bnez       $at, .L8008EE04_5F2B4
    /* 5F338 8008EE88 A1830000 */   sb        $v1, 0x0($t4)
    /* 5F33C 8008EE8C 26940001 */  addiu      $s4, $s4, 0x1
    /* 5F340 8008EE90 328E00FF */  andi       $t6, $s4, 0xFF
    /* 5F344 8008EE94 29C10004 */  slti       $at, $t6, 0x4
    /* 5F348 8008EE98 1420FFD1 */  bnez       $at, .L8008EDE0_5F290
    /* 5F34C 8008EE9C 01C0A025 */   or        $s4, $t6, $zero
    /* 5F350 8008EEA0 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 5F354 8008EEA4 8FB00014 */  lw         $s0, 0x14($sp)
    /* 5F358 8008EEA8 8FB10018 */  lw         $s1, 0x18($sp)
    /* 5F35C 8008EEAC 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 5F360 8008EEB0 8FB30020 */  lw         $s3, 0x20($sp)
    /* 5F364 8008EEB4 8FB40024 */  lw         $s4, 0x24($sp)
    /* 5F368 8008EEB8 8FB50028 */  lw         $s5, 0x28($sp)
    /* 5F36C 8008EEBC 03E00008 */  jr         $ra
    /* 5F370 8008EEC0 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_8008EDB4_5F264
