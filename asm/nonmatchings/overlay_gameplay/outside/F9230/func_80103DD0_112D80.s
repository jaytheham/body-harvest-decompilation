nonmatching func_80103DD0_112D80, 0x84

glabel func_80103DD0_112D80
    /* 112D80 80103DD0 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 112D84 80103DD4 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 112D88 80103DD8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 112D8C 80103DDC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 112D90 80103DE0 904E001A */  lbu        $t6, 0x1A($v0)
    /* 112D94 80103DE4 24010013 */  addiu      $at, $zero, 0x13
    /* 112D98 80103DE8 51C10017 */  beql       $t6, $at, .L80103E48_112DF8
    /* 112D9C 80103DEC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 112DA0 80103DF0 8443003C */  lh         $v1, 0x3C($v0)
    /* 112DA4 80103DF4 240105DC */  addiu      $at, $zero, 0x5DC
    /* 112DA8 80103DF8 58600013 */  blezl      $v1, .L80103E48_112DF8
    /* 112DAC 80103DFC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 112DB0 80103E00 54610007 */  bnel       $v1, $at, .L80103E20_112DD0
    /* 112DB4 80103E04 24010002 */   addiu     $at, $zero, 0x2
    /* 112DB8 80103E08 0C006994 */  jal        func_8001A650_1B250
    /* 112DBC 80103E0C 24040003 */   addiu     $a0, $zero, 0x3
    /* 112DC0 80103E10 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 112DC4 80103E14 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 112DC8 80103E18 8443003C */  lh         $v1, 0x3C($v0)
    /* 112DCC 80103E1C 24010002 */  addiu      $at, $zero, 0x2
  .L80103E20_112DD0:
    /* 112DD0 80103E20 54610007 */  bnel       $v1, $at, .L80103E40_112DF0
    /* 112DD4 80103E24 246FFFFE */   addiu     $t7, $v1, -0x2
    /* 112DD8 80103E28 0C006994 */  jal        func_8001A650_1B250
    /* 112DDC 80103E2C 2404000E */   addiu     $a0, $zero, 0xE
    /* 112DE0 80103E30 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 112DE4 80103E34 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 112DE8 80103E38 8443003C */  lh         $v1, 0x3C($v0)
    /* 112DEC 80103E3C 246FFFFE */  addiu      $t7, $v1, -0x2
  .L80103E40_112DF0:
    /* 112DF0 80103E40 A44F003C */  sh         $t7, 0x3C($v0)
    /* 112DF4 80103E44 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80103E48_112DF8:
    /* 112DF8 80103E48 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 112DFC 80103E4C 03E00008 */  jr         $ra
    /* 112E00 80103E50 00000000 */   nop
endlabel func_80103DD0_112D80
