nonmatching func_800A6FD4_B5F84, 0xE4

glabel func_800A6FD4_B5F84
    /* B5F84 800A6FD4 3C028004 */  lui        $v0, %hi(D_80047F9B)
    /* B5F88 800A6FD8 90457F9B */  lbu        $a1, %lo(D_80047F9B)($v0)
    /* B5F8C 800A6FDC 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* B5F90 800A6FE0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* B5F94 800A6FE4 3C048014 */  lui        $a0, %hi(D_8014280C)
    /* B5F98 800A6FE8 2484280C */  addiu      $a0, $a0, %lo(D_8014280C)
    /* B5F9C 800A6FEC A3A5001F */  sb         $a1, 0x1F($sp)
    /* B5FA0 800A6FF0 0C00731B */  jal        osSyncPrintf
    /* B5FA4 800A6FF4 AFA50018 */   sw        $a1, 0x18($sp)
    /* B5FA8 800A6FF8 3C038004 */  lui        $v1, %hi(currentLevel)
    /* B5FAC 800A6FFC 8C637F90 */  lw         $v1, %lo(currentLevel)($v1)
    /* B5FB0 800A7000 24010004 */  addiu      $at, $zero, 0x4
    /* B5FB4 800A7004 8FA50018 */  lw         $a1, 0x18($sp)
    /* B5FB8 800A7008 14610003 */  bne        $v1, $at, .L800A7018_B5FC8
    /* B5FBC 800A700C 24010003 */   addiu     $at, $zero, 0x3
    /* B5FC0 800A7010 50A1000E */  beql       $a1, $at, .L800A704C_B5FFC
    /* B5FC4 800A7014 93B9001F */   lbu       $t9, 0x1F($sp)
  .L800A7018_B5FC8:
    /* B5FC8 800A7018 0C004CC5 */  jal        func_80013314_13F14
    /* B5FCC 800A701C AFA50018 */   sw        $a1, 0x18($sp)
    /* B5FD0 800A7020 3C028005 */  lui        $v0, %hi(gameplayMode)
    /* B5FD4 800A7024 24422ADC */  addiu      $v0, $v0, %lo(gameplayMode)
    /* B5FD8 800A7028 8C4E0000 */  lw         $t6, 0x0($v0)
    /* B5FDC 800A702C 3C018005 */  lui        $at, %hi(D_80052AE0)
    /* B5FE0 800A7030 240F000A */  addiu      $t7, $zero, 0xA
    /* B5FE4 800A7034 AC2E2AE0 */  sw         $t6, %lo(D_80052AE0)($at)
    /* B5FE8 800A7038 AC4F0000 */  sw         $t7, 0x0($v0)
    /* B5FEC 800A703C 3C038004 */  lui        $v1, %hi(currentLevel)
    /* B5FF0 800A7040 8FA50018 */  lw         $a1, 0x18($sp)
    /* B5FF4 800A7044 8C637F90 */  lw         $v1, %lo(currentLevel)($v1)
    /* B5FF8 800A7048 93B9001F */  lbu        $t9, 0x1F($sp)
  .L800A704C_B5FFC:
    /* B5FFC 800A704C 0003C080 */  sll        $t8, $v1, 2
    /* B6000 800A7050 3C048005 */  lui        $a0, %hi(D_80048025)
    /* B6004 800A7054 3C068004 */  lui        $a2, %hi(D_80047F98)
    /* B6008 800A7058 0303C023 */  subu       $t8, $t8, $v1
    /* B600C 800A705C 24C67F98 */  addiu      $a2, $a2, %lo(D_80047F98)
    /* B6010 800A7060 24848025 */  addiu      $a0, $a0, %lo(D_80048025)
    /* B6014 800A7064 0018C0C0 */  sll        $t8, $t8, 3
    /* B6018 800A7068 00194080 */  sll        $t0, $t9, 2
    /* B601C 800A706C 8CCD0000 */  lw         $t5, 0x0($a2)
    /* B6020 800A7070 908F0000 */  lbu        $t7, 0x0($a0)
    /* B6024 800A7074 03084821 */  addu       $t1, $t8, $t0
    /* B6028 800A7078 8FBF0014 */  lw         $ra, 0x14($sp)
    /* B602C 800A707C 3C0A8003 */  lui        $t2, %hi(D_8003154C)
    /* B6030 800A7080 24190001 */  addiu      $t9, $zero, 0x1
    /* B6034 800A7084 254A154C */  addiu      $t2, $t2, %lo(D_8003154C)
    /* B6038 800A7088 00B9C004 */  sllv       $t8, $t9, $a1
    /* B603C 800A708C 012A1021 */  addu       $v0, $t1, $t2
    /* B6040 800A7090 240B0001 */  addiu      $t3, $zero, 0x1
    /* B6044 800A7094 240C001E */  addiu      $t4, $zero, 0x1E
    /* B6048 800A7098 25AE0001 */  addiu      $t6, $t5, 0x1
    /* B604C 800A709C 01F84025 */  or         $t0, $t7, $t8
    /* B6050 800A70A0 A04BFFEA */  sb         $t3, -0x16($v0)
    /* B6054 800A70A4 A04CFFEB */  sb         $t4, -0x15($v0)
    /* B6058 800A70A8 ACCE0000 */  sw         $t6, 0x0($a2)
    /* B605C 800A70AC A0880000 */  sb         $t0, 0x0($a0)
    /* B6060 800A70B0 03E00008 */  jr         $ra
    /* B6064 800A70B4 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_800A6FD4_B5F84
