nonmatching guess_deleteSavedData, 0x98

glabel guess_deleteSavedData
    /* 39B0 80002DB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 39B4 80002DB4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 39B8 80002DB8 3C048003 */  lui        $a0, %hi(D_80036C64)
    /* 39BC 80002DBC 0C00731B */  jal        osSyncPrintf
    /* 39C0 80002DC0 24846C64 */   addiu     $a0, $a0, %lo(D_80036C64)
    /* 39C4 80002DC4 3C028004 */  lui        $v0, %hi(D_800431C0)
    /* 39C8 80002DC8 3C038004 */  lui        $v1, %hi(D_8004337D)
    /* 39CC 80002DCC 2463337D */  addiu      $v1, $v1, %lo(D_8004337D)
    /* 39D0 80002DD0 244231C0 */  addiu      $v0, $v0, %lo(D_800431C0)
  .L80002DD4_39D4:
    /* 39D4 80002DD4 24420001 */  addiu      $v0, $v0, 0x1
    /* 39D8 80002DD8 0043082B */  sltu       $at, $v0, $v1
    /* 39DC 80002DDC 1420FFFD */  bnez       $at, .L80002DD4_39D4
    /* 39E0 80002DE0 A040FFFF */   sb        $zero, -0x1($v0)
    /* 39E4 80002DE4 0C00060C */  jal        func_80001830_2430
    /* 39E8 80002DE8 00000000 */   nop
    /* 39EC 80002DEC 0C000873 */  jal        func_800021CC_2DCC
    /* 39F0 80002DF0 00002025 */   or        $a0, $zero, $zero
    /* 39F4 80002DF4 0C000873 */  jal        func_800021CC_2DCC
    /* 39F8 80002DF8 24040001 */   addiu     $a0, $zero, 0x1
    /* 39FC 80002DFC 0C000873 */  jal        func_800021CC_2DCC
    /* 3A00 80002E00 24040002 */   addiu     $a0, $zero, 0x2
    /* 3A04 80002E04 00002025 */  or         $a0, $zero, $zero
    /* 3A08 80002E08 0C00056D */  jal        func_800015B4_21B4
    /* 3A0C 80002E0C 240501B9 */   addiu     $a1, $zero, 0x1B9
    /* 3A10 80002E10 3C0E8004 */  lui        $t6, %hi(D_80047608)
    /* 3A14 80002E14 91CE7608 */  lbu        $t6, %lo(D_80047608)($t6)
    /* 3A18 80002E18 3C048004 */  lui        $a0, %hi(D_80043388)
    /* 3A1C 80002E1C 24843388 */  addiu      $a0, $a0, %lo(D_80043388)
    /* 3A20 80002E20 11C00005 */  beqz       $t6, .L80002E38_3A38
    /* 3A24 80002E24 00002825 */   or        $a1, $zero, $zero
    /* 3A28 80002E28 3C068004 */  lui        $a2, %hi(D_800431C0)
    /* 3A2C 80002E2C 24C631C0 */  addiu      $a2, $a2, %lo(D_800431C0)
    /* 3A30 80002E30 0C007518 */  jal        osEepromLongWrite
    /* 3A34 80002E34 240701BD */   addiu     $a3, $zero, 0x1BD
  .L80002E38_3A38:
    /* 3A38 80002E38 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 3A3C 80002E3C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 3A40 80002E40 03E00008 */  jr         $ra
    /* 3A44 80002E44 00000000 */   nop
endlabel guess_deleteSavedData
