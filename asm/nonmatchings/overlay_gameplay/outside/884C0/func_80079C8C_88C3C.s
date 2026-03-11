nonmatching func_80079C8C_88C3C, 0x134

glabel func_80079C8C_88C3C
    /* 88C3C 80079C8C 00047080 */  sll        $t6, $a0, 2
    /* 88C40 80079C90 01C47021 */  addu       $t6, $t6, $a0
    /* 88C44 80079C94 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 88C48 80079C98 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 88C4C 80079C9C 000E7100 */  sll        $t6, $t6, 4
    /* 88C50 80079CA0 01CF2821 */  addu       $a1, $t6, $t7
    /* 88C54 80079CA4 3C098015 */  lui        $t1, %hi(D_8014ECD0)
    /* 88C58 80079CA8 90A7001A */  lbu        $a3, 0x1A($a1)
    /* 88C5C 80079CAC 3C018015 */  lui        $at, %hi(D_8014D300)
    /* 88C60 80079CB0 2529ECD0 */  addiu      $t1, $t1, %lo(D_8014ECD0)
    /* 88C64 80079CB4 AC20D300 */  sw         $zero, %lo(D_8014D300)($at)
    /* 88C68 80079CB8 8D220000 */  lw         $v0, 0x0($t1)
    /* 88C6C 80079CBC 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 88C70 80079CC0 24010078 */  addiu      $at, $zero, 0x78
    /* 88C74 80079CC4 14410008 */  bne        $v0, $at, .L80079CE8_88C98
    /* 88C78 80079CC8 AFBF0014 */   sw        $ra, 0x14($sp)
    /* 88C7C 80079CCC 2408FFFF */  addiu      $t0, $zero, -0x1
    /* 88C80 80079CD0 3C048014 */  lui        $a0, %hi(D_801417C0)
    /* 88C84 80079CD4 A4A8000C */  sh         $t0, 0xC($a1)
    /* 88C88 80079CD8 0C00731B */  jal        osSyncPrintf
    /* 88C8C 80079CDC 248417C0 */   addiu     $a0, $a0, %lo(D_801417C0)
    /* 88C90 80079CE0 10000033 */  b          .L80079DB0_88D60
    /* 88C94 80079CE4 00001025 */   or        $v0, $zero, $zero
  .L80079CE8_88C98:
    /* 88C98 80079CE8 3C068015 */  lui        $a2, %hi(D_8014EC50)
    /* 88C9C 80079CEC 00C23021 */  addu       $a2, $a2, $v0
    /* 88CA0 80079CF0 80C6EC50 */  lb         $a2, %lo(D_8014EC50)($a2)
    /* 88CA4 80079CF4 3C0A8015 */  lui        $t2, %hi(D_8014DD50)
    /* 88CA8 80079CF8 254ADD50 */  addiu      $t2, $t2, %lo(D_8014DD50)
    /* 88CAC 80079CFC 0006C900 */  sll        $t9, $a2, 4
    /* 88CB0 80079D00 032A1821 */  addu       $v1, $t9, $t2
    /* 88CB4 80079D04 00075880 */  sll        $t3, $a3, 2
    /* 88CB8 80079D08 01675823 */  subu       $t3, $t3, $a3
    /* 88CBC 80079D0C 000B5880 */  sll        $t3, $t3, 2
    /* 88CC0 80079D10 01675821 */  addu       $t3, $t3, $a3
    /* 88CC4 80079D14 2408FFFF */  addiu      $t0, $zero, -0x1
    /* 88CC8 80079D18 24580001 */  addiu      $t8, $v0, 0x1
    /* 88CCC 80079D1C 000B58C0 */  sll        $t3, $t3, 3
    /* 88CD0 80079D20 3C048025 */  lui        $a0, %hi(D_802566C4)
    /* 88CD4 80079D24 AD380000 */  sw         $t8, 0x0($t1)
    /* 88CD8 80079D28 A460000E */  sh         $zero, 0xE($v1)
    /* 88CDC 80079D2C A4600000 */  sh         $zero, 0x0($v1)
    /* 88CE0 80079D30 A4600002 */  sh         $zero, 0x2($v1)
    /* 88CE4 80079D34 A4600004 */  sh         $zero, 0x4($v1)
    /* 88CE8 80079D38 A4600006 */  sh         $zero, 0x6($v1)
    /* 88CEC 80079D3C A4600008 */  sh         $zero, 0x8($v1)
    /* 88CF0 80079D40 A460000A */  sh         $zero, 0xA($v1)
    /* 88CF4 80079D44 A068000D */  sb         $t0, 0xD($v1)
    /* 88CF8 80079D48 008B2021 */  addu       $a0, $a0, $t3
    /* 88CFC 80079D4C 8C8466C4 */  lw         $a0, %lo(D_802566C4)($a0)
    /* 88D00 80079D50 5080000C */  beql       $a0, $zero, .L80079D84_88D34
    /* 88D04 80079D54 A068000C */   sb        $t0, 0xC($v1)
    /* 88D08 80079D58 AFA30018 */  sw         $v1, 0x18($sp)
    /* 88D0C 80079D5C AFA50020 */  sw         $a1, 0x20($sp)
    /* 88D10 80079D60 0C01E6DD */  jal        func_80079B74_88B24
    /* 88D14 80079D64 A7A60024 */   sh        $a2, 0x24($sp)
    /* 88D18 80079D68 8FA30018 */  lw         $v1, 0x18($sp)
    /* 88D1C 80079D6C 8FA50020 */  lw         $a1, 0x20($sp)
    /* 88D20 80079D70 87A60024 */  lh         $a2, 0x24($sp)
    /* 88D24 80079D74 2408FFFF */  addiu      $t0, $zero, -0x1
    /* 88D28 80079D78 10000002 */  b          .L80079D84_88D34
    /* 88D2C 80079D7C A062000C */   sb        $v0, 0xC($v1)
    /* 88D30 80079D80 A068000C */  sb         $t0, 0xC($v1)
  .L80079D84_88D34:
    /* 88D34 80079D84 3C0C8015 */  lui        $t4, %hi(D_8014D300)
    /* 88D38 80079D88 8D8CD300 */  lw         $t4, %lo(D_8014D300)($t4)
    /* 88D3C 80079D8C 00C02025 */  or         $a0, $a2, $zero
    /* 88D40 80079D90 24020001 */  addiu      $v0, $zero, 0x1
    /* 88D44 80079D94 51800006 */  beql       $t4, $zero, .L80079DB0_88D60
    /* 88D48 80079D98 A4A6000C */   sh        $a2, 0xC($a1)
    /* 88D4C 80079D9C 0C01E770 */  jal        func_80079DC0_88D70
    /* 88D50 80079DA0 A4A8000C */   sh        $t0, 0xC($a1)
    /* 88D54 80079DA4 10000002 */  b          .L80079DB0_88D60
    /* 88D58 80079DA8 00001025 */   or        $v0, $zero, $zero
    /* 88D5C 80079DAC A4A6000C */  sh         $a2, 0xC($a1)
  .L80079DB0_88D60:
    /* 88D60 80079DB0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 88D64 80079DB4 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 88D68 80079DB8 03E00008 */  jr         $ra
    /* 88D6C 80079DBC 00000000 */   nop
endlabel func_80079C8C_88C3C
