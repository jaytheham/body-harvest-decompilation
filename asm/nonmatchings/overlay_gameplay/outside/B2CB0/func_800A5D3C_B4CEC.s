nonmatching func_800A5D3C_B4CEC, 0x16C

glabel func_800A5D3C_B4CEC
    /* B4CEC 800A5D3C 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* B4CF0 800A5D40 AFBE0038 */  sw         $fp, 0x38($sp)
    /* B4CF4 800A5D44 3C048015 */  lui        $a0, %hi(D_8014F7DE)
    /* B4CF8 800A5D48 AFBF003C */  sw         $ra, 0x3C($sp)
    /* B4CFC 800A5D4C AFB70034 */  sw         $s7, 0x34($sp)
    /* B4D00 800A5D50 AFB60030 */  sw         $s6, 0x30($sp)
    /* B4D04 800A5D54 AFB5002C */  sw         $s5, 0x2C($sp)
    /* B4D08 800A5D58 AFB40028 */  sw         $s4, 0x28($sp)
    /* B4D0C 800A5D5C AFB30024 */  sw         $s3, 0x24($sp)
    /* B4D10 800A5D60 AFB20020 */  sw         $s2, 0x20($sp)
    /* B4D14 800A5D64 AFB1001C */  sw         $s1, 0x1C($sp)
    /* B4D18 800A5D68 AFB00018 */  sw         $s0, 0x18($sp)
    /* B4D1C 800A5D6C 2484F7DE */  addiu      $a0, $a0, %lo(D_8014F7DE)
    /* B4D20 800A5D70 241EFFFF */  addiu      $fp, $zero, -0x1
    /* B4D24 800A5D74 2403000F */  addiu      $v1, $zero, 0xF
  .L800A5D78_B4D28:
    /* B4D28 800A5D78 00601025 */  or         $v0, $v1, $zero
    /* B4D2C 800A5D7C A49E000C */  sh         $fp, 0xC($a0)
    /* B4D30 800A5D80 2484FFEE */  addiu      $a0, $a0, -0x12
    /* B4D34 800A5D84 1460FFFC */  bnez       $v1, .L800A5D78_B4D28
    /* B4D38 800A5D88 2463FFFF */   addiu     $v1, $v1, -0x1
    /* B4D3C 800A5D8C 3C018015 */  lui        $at, %hi(D_8014F7F0)
    /* B4D40 800A5D90 AC20F7F0 */  sw         $zero, %lo(D_8014F7F0)($at)
    /* B4D44 800A5D94 3C018015 */  lui        $at, %hi(D_8014F7F4)
    /* B4D48 800A5D98 3C048014 */  lui        $a0, %hi(D_801427A4)
    /* B4D4C 800A5D9C AC20F7F4 */  sw         $zero, %lo(D_8014F7F4)($at)
    /* B4D50 800A5DA0 0C00731B */  jal        osSyncPrintf
    /* B4D54 800A5DA4 248427A4 */   addiu     $a0, $a0, %lo(D_801427A4)
    /* B4D58 800A5DA8 3C178014 */  lui        $s7, %hi(D_801427C4)
    /* B4D5C 800A5DAC 3C168014 */  lui        $s6, %hi(D_801427B0)
    /* B4D60 800A5DB0 3C148004 */  lui        $s4, %hi(D_80047F98)
    /* B4D64 800A5DB4 3C138004 */  lui        $s3, %hi(currentLevel)
    /* B4D68 800A5DB8 3C128003 */  lui        $s2, %hi(D_8003154C)
    /* B4D6C 800A5DBC 2652154C */  addiu      $s2, $s2, %lo(D_8003154C)
    /* B4D70 800A5DC0 26737F90 */  addiu      $s3, $s3, %lo(currentLevel)
    /* B4D74 800A5DC4 26947F98 */  addiu      $s4, $s4, %lo(D_80047F98)
    /* B4D78 800A5DC8 26D627B0 */  addiu      $s6, $s6, %lo(D_801427B0)
    /* B4D7C 800A5DCC 26F727C4 */  addiu      $s7, $s7, %lo(D_801427C4)
    /* B4D80 800A5DD0 00008825 */  or         $s1, $zero, $zero
    /* B4D84 800A5DD4 00008025 */  or         $s0, $zero, $zero
    /* B4D88 800A5DD8 24150008 */  addiu      $s5, $zero, 0x8
  .L800A5DDC_B4D8C:
    /* B4D8C 800A5DDC 8E8E0000 */  lw         $t6, 0x0($s4)
    /* B4D90 800A5DE0 00116080 */  sll        $t4, $s1, 2
    /* B4D94 800A5DE4 020E082A */  slt        $at, $s0, $t6
    /* B4D98 800A5DE8 50200012 */  beql       $at, $zero, .L800A5E34_B4DE4
    /* B4D9C 800A5DEC 8E690000 */   lw        $t1, 0x0($s3)
    /* B4DA0 800A5DF0 8E6F0000 */  lw         $t7, 0x0($s3)
    /* B4DA4 800A5DF4 00114080 */  sll        $t0, $s1, 2
    /* B4DA8 800A5DF8 02002025 */  or         $a0, $s0, $zero
    /* B4DAC 800A5DFC 000FC080 */  sll        $t8, $t7, 2
    /* B4DB0 800A5E00 030FC023 */  subu       $t8, $t8, $t7
    /* B4DB4 800A5E04 0018C0C0 */  sll        $t8, $t8, 3
    /* B4DB8 800A5E08 0258C821 */  addu       $t9, $s2, $t8
    /* B4DBC 800A5E0C 03281021 */  addu       $v0, $t9, $t0
    /* B4DC0 800A5E10 A040FFEB */  sb         $zero, -0x15($v0)
    /* B4DC4 800A5E14 0C0296F4 */  jal        func_800A5BD0_B4B80
    /* B4DC8 800A5E18 A055FFEA */   sb        $s5, -0x16($v0)
    /* B4DCC 800A5E1C 02C02025 */  or         $a0, $s6, $zero
    /* B4DD0 800A5E20 0C00731B */  jal        osSyncPrintf
    /* B4DD4 800A5E24 02002825 */   or        $a1, $s0, $zero
    /* B4DD8 800A5E28 1000000D */  b          .L800A5E60_B4E10
    /* B4DDC 800A5E2C 26310001 */   addiu     $s1, $s1, 0x1
    /* B4DE0 800A5E30 8E690000 */  lw         $t1, 0x0($s3)
  .L800A5E34_B4DE4:
    /* B4DE4 800A5E34 02E02025 */  or         $a0, $s7, $zero
    /* B4DE8 800A5E38 02002825 */  or         $a1, $s0, $zero
    /* B4DEC 800A5E3C 00095080 */  sll        $t2, $t1, 2
    /* B4DF0 800A5E40 01495023 */  subu       $t2, $t2, $t1
    /* B4DF4 800A5E44 000A50C0 */  sll        $t2, $t2, 3
    /* B4DF8 800A5E48 024A5821 */  addu       $t3, $s2, $t2
    /* B4DFC 800A5E4C 016C1021 */  addu       $v0, $t3, $t4
    /* B4E00 800A5E50 A040FFEB */  sb         $zero, -0x15($v0)
    /* B4E04 800A5E54 0C00731B */  jal        osSyncPrintf
    /* B4E08 800A5E58 A040FFEA */   sb        $zero, -0x16($v0)
    /* B4E0C 800A5E5C 26310001 */  addiu      $s1, $s1, 0x1
  .L800A5E60_B4E10:
    /* B4E10 800A5E60 323000FF */  andi       $s0, $s1, 0xFF
    /* B4E14 800A5E64 2A010006 */  slti       $at, $s0, 0x6
    /* B4E18 800A5E68 1420FFDC */  bnez       $at, .L800A5DDC_B4D8C
    /* B4E1C 800A5E6C 02008825 */   or        $s1, $s0, $zero
    /* B4E20 800A5E70 8FBF003C */  lw         $ra, 0x3C($sp)
    /* B4E24 800A5E74 3C018015 */  lui        $at, %hi(D_8014F804)
    /* B4E28 800A5E78 AC3EF804 */  sw         $fp, %lo(D_8014F804)($at)
    /* B4E2C 800A5E7C 8FBE0038 */  lw         $fp, 0x38($sp)
    /* B4E30 800A5E80 8FB00018 */  lw         $s0, 0x18($sp)
    /* B4E34 800A5E84 8FB1001C */  lw         $s1, 0x1C($sp)
    /* B4E38 800A5E88 8FB20020 */  lw         $s2, 0x20($sp)
    /* B4E3C 800A5E8C 8FB30024 */  lw         $s3, 0x24($sp)
    /* B4E40 800A5E90 8FB40028 */  lw         $s4, 0x28($sp)
    /* B4E44 800A5E94 8FB5002C */  lw         $s5, 0x2C($sp)
    /* B4E48 800A5E98 8FB60030 */  lw         $s6, 0x30($sp)
    /* B4E4C 800A5E9C 8FB70034 */  lw         $s7, 0x34($sp)
    /* B4E50 800A5EA0 03E00008 */  jr         $ra
    /* B4E54 800A5EA4 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800A5D3C_B4CEC
