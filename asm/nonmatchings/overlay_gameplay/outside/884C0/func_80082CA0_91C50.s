nonmatching func_80082CA0_91C50, 0x198

glabel func_80082CA0_91C50
    /* 91C50 80082CA0 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 91C54 80082CA4 308E00FF */  andi       $t6, $a0, 0xFF
    /* 91C58 80082CA8 000E7880 */  sll        $t7, $t6, 2
    /* 91C5C 80082CAC 01EE7821 */  addu       $t7, $t7, $t6
    /* 91C60 80082CB0 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 91C64 80082CB4 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 91C68 80082CB8 000F7900 */  sll        $t7, $t7, 4
    /* 91C6C 80082CBC 01F83821 */  addu       $a3, $t7, $t8
    /* 91C70 80082CC0 84E30004 */  lh         $v1, 0x4($a3)
    /* 91C74 80082CC4 84E20000 */  lh         $v0, 0x0($a3)
    /* 91C78 80082CC8 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 91C7C 80082CCC 00034203 */  sra        $t0, $v1, 8
    /* 91C80 80082CD0 2508FFFF */  addiu      $t0, $t0, -0x1
    /* 91C84 80082CD4 0002F203 */  sra        $fp, $v0, 8
    /* 91C88 80082CD8 AFB70034 */  sw         $s7, 0x34($sp)
    /* 91C8C 80082CDC 27DEFFFF */  addiu      $fp, $fp, -0x1
    /* 91C90 80082CE0 00085400 */  sll        $t2, $t0, 16
    /* 91C94 80082CE4 AFB60030 */  sw         $s6, 0x30($sp)
    /* 91C98 80082CE8 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 91C9C 80082CEC AFB40028 */  sw         $s4, 0x28($sp)
    /* 91CA0 80082CF0 AFB20020 */  sw         $s2, 0x20($sp)
    /* 91CA4 80082CF4 001ECC00 */  sll        $t9, $fp, 16
    /* 91CA8 80082CF8 000ABC03 */  sra        $s7, $t2, 16
    /* 91CAC 80082CFC AFBF003C */  sw         $ra, 0x3C($sp)
    /* 91CB0 80082D00 AFB30024 */  sw         $s3, 0x24($sp)
    /* 91CB4 80082D04 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 91CB8 80082D08 AFB00018 */  sw         $s0, 0x18($sp)
    /* 91CBC 80082D0C AFA40060 */  sw         $a0, 0x60($sp)
    /* 91CC0 80082D10 0019F403 */  sra        $fp, $t9, 16
    /* 91CC4 80082D14 2415FFFF */  addiu      $s5, $zero, -0x1
    /* 91CC8 80082D18 2416FFFF */  addiu      $s6, $zero, -0x1
    /* 91CCC 80082D1C A7B70058 */  sh         $s7, 0x58($sp)
    /* 91CD0 80082D20 00009025 */  or         $s2, $zero, $zero
    /* 91CD4 80082D24 24140003 */  addiu      $s4, $zero, 0x3
    /* 91CD8 80082D28 AFA70040 */  sw         $a3, 0x40($sp)
  .L80082D2C_91CDC:
    /* 91CDC 80082D2C 00179E00 */  sll        $s3, $s7, 24
    /* 91CE0 80082D30 00136603 */  sra        $t4, $s3, 24
    /* 91CE4 80082D34 01809825 */  or         $s3, $t4, $zero
    /* 91CE8 80082D38 00008025 */  or         $s0, $zero, $zero
    /* 91CEC 80082D3C 03C08825 */  or         $s1, $fp, $zero
  .L80082D40_91CF0:
    /* 91CF0 80082D40 00112600 */  sll        $a0, $s1, 24
    /* 91CF4 80082D44 00132E00 */  sll        $a1, $s3, 24
    /* 91CF8 80082D48 00057603 */  sra        $t6, $a1, 24
    /* 91CFC 80082D4C 00046E03 */  sra        $t5, $a0, 24
    /* 91D00 80082D50 01A02025 */  or         $a0, $t5, $zero
    /* 91D04 80082D54 01C02825 */  or         $a1, $t6, $zero
    /* 91D08 80082D58 0C02CC97 */  jal        func_800B325C_C220C
    /* 91D0C 80082D5C 24061000 */   addiu     $a2, $zero, 0x1000
    /* 91D10 80082D60 14400011 */  bnez       $v0, .L80082DA8_91D58
    /* 91D14 80082D64 02507821 */   addu      $t7, $s2, $s0
    /* 91D18 80082D68 31F80001 */  andi       $t8, $t7, 0x1
    /* 91D1C 80082D6C 0200A825 */  or         $s5, $s0, $zero
    /* 91D20 80082D70 1300000D */  beqz       $t8, .L80082DA8_91D58
    /* 91D24 80082D74 0240B025 */   or        $s6, $s2, $zero
    /* 91D28 80082D78 02540019 */  multu      $s2, $s4
    /* 91D2C 80082D7C 8FB90040 */  lw         $t9, 0x40($sp)
    /* 91D30 80082D80 00105840 */  sll        $t3, $s0, 1
    /* 91D34 80082D84 3C028014 */  lui        $v0, %hi(D_8013C2BC)
    /* 91D38 80082D88 A3310028 */  sb         $s1, 0x28($t9)
    /* 91D3C 80082D8C A3370029 */  sb         $s7, 0x29($t9)
    /* 91D40 80082D90 00004812 */  mflo       $t1
    /* 91D44 80082D94 00095040 */  sll        $t2, $t1, 1
    /* 91D48 80082D98 014B6021 */  addu       $t4, $t2, $t3
    /* 91D4C 80082D9C 004C1021 */  addu       $v0, $v0, $t4
    /* 91D50 80082DA0 10000019 */  b          .L80082E08_91DB8
    /* 91D54 80082DA4 8442C2BC */   lh        $v0, %lo(D_8013C2BC)($v0)
  .L80082DA8_91D58:
    /* 91D58 80082DA8 26100001 */  addiu      $s0, $s0, 0x1
    /* 91D5C 80082DAC 1614FFE4 */  bne        $s0, $s4, .L80082D40_91CF0
    /* 91D60 80082DB0 26310001 */   addiu     $s1, $s1, 0x1
    /* 91D64 80082DB4 26520001 */  addiu      $s2, $s2, 0x1
    /* 91D68 80082DB8 1654FFDC */  bne        $s2, $s4, .L80082D2C_91CDC
    /* 91D6C 80082DBC 26F70001 */   addiu     $s7, $s7, 0x1
    /* 91D70 80082DC0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 91D74 80082DC4 12A10010 */  beq        $s5, $at, .L80082E08_91DB8
    /* 91D78 80082DC8 2402FFFF */   addiu     $v0, $zero, -0x1
    /* 91D7C 80082DCC 02D40019 */  multu      $s6, $s4
    /* 91D80 80082DD0 8FAE0040 */  lw         $t6, 0x40($sp)
    /* 91D84 80082DD4 03D56821 */  addu       $t5, $fp, $s5
    /* 91D88 80082DD8 00155040 */  sll        $t2, $s5, 1
    /* 91D8C 80082DDC A1CD0028 */  sb         $t5, 0x28($t6)
    /* 91D90 80082DE0 87AF0058 */  lh         $t7, 0x58($sp)
    /* 91D94 80082DE4 3C028014 */  lui        $v0, %hi(D_8013C2BC)
    /* 91D98 80082DE8 01F6C021 */  addu       $t8, $t7, $s6
    /* 91D9C 80082DEC A1D80029 */  sb         $t8, 0x29($t6)
    /* 91DA0 80082DF0 0000C812 */  mflo       $t9
    /* 91DA4 80082DF4 00194840 */  sll        $t1, $t9, 1
    /* 91DA8 80082DF8 012A5821 */  addu       $t3, $t1, $t2
    /* 91DAC 80082DFC 004B1021 */  addu       $v0, $v0, $t3
    /* 91DB0 80082E00 10000001 */  b          .L80082E08_91DB8
    /* 91DB4 80082E04 8442C2BC */   lh        $v0, %lo(D_8013C2BC)($v0)
  .L80082E08_91DB8:
    /* 91DB8 80082E08 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 91DBC 80082E0C 8FB00018 */  lw         $s0, 0x18($sp)
    /* 91DC0 80082E10 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 91DC4 80082E14 8FB20020 */  lw         $s2, 0x20($sp)
    /* 91DC8 80082E18 8FB30024 */  lw         $s3, 0x24($sp)
    /* 91DCC 80082E1C 8FB40028 */  lw         $s4, 0x28($sp)
    /* 91DD0 80082E20 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 91DD4 80082E24 8FB60030 */  lw         $s6, 0x30($sp)
    /* 91DD8 80082E28 8FB70034 */  lw         $s7, 0x34($sp)
    /* 91DDC 80082E2C 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 91DE0 80082E30 03E00008 */  jr         $ra
    /* 91DE4 80082E34 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_80082CA0_91C50
