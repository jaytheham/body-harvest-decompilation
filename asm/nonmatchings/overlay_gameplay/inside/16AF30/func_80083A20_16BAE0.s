nonmatching func_80083A20_16BAE0, 0x4E8

glabel func_80083A20_16BAE0
    /* 16BAE0 80083A20 308E00FF */  andi       $t6, $a0, 0xFF
    /* 16BAE4 80083A24 000E7880 */  sll        $t7, $t6, 2
    /* 16BAE8 80083A28 01EE7823 */  subu       $t7, $t7, $t6
    /* 16BAEC 80083A2C 000F7880 */  sll        $t7, $t7, 2
    /* 16BAF0 80083A30 3C188010 */  lui        $t8, %hi(D_800FB6FE)
    /* 16BAF4 80083A34 030FC021 */  addu       $t8, $t8, $t7
    /* 16BAF8 80083A38 8718B6FE */  lh         $t8, %lo(D_800FB6FE)($t8)
    /* 16BAFC 80083A3C 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 16BB00 80083A40 3C098010 */  lui        $t1, %hi(D_800FB7B0)
    /* 16BB04 80083A44 0018C880 */  sll        $t9, $t8, 2
    /* 16BB08 80083A48 0338C823 */  subu       $t9, $t9, $t8
    /* 16BB0C 80083A4C 0019C880 */  sll        $t9, $t9, 2
    /* 16BB10 80083A50 0338C823 */  subu       $t9, $t9, $t8
    /* 16BB14 80083A54 0019C840 */  sll        $t9, $t9, 1
    /* 16BB18 80083A58 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 16BB1C 80083A5C AFB00014 */  sw         $s0, 0x14($sp)
    /* 16BB20 80083A60 AFA40048 */  sw         $a0, 0x48($sp)
    /* 16BB24 80083A64 27280008 */  addiu      $t0, $t9, 0x8
    /* 16BB28 80083A68 2529B7B0 */  addiu      $t1, $t1, %lo(D_800FB7B0)
    /* 16BB2C 80083A6C 01C02025 */  or         $a0, $t6, $zero
    /* 16BB30 80083A70 AFB10018 */  sw         $s1, 0x18($sp)
    /* 16BB34 80083A74 AFA5004C */  sw         $a1, 0x4C($sp)
    /* 16BB38 80083A78 AFA60050 */  sw         $a2, 0x50($sp)
    /* 16BB3C 80083A7C AFA70054 */  sw         $a3, 0x54($sp)
    /* 16BB40 80083A80 0C020CE4 */  jal        func_80083390_16B450
    /* 16BB44 80083A84 01098021 */   addu      $s0, $t0, $t1
    /* 16BB48 80083A88 00021C00 */  sll        $v1, $v0, 16
    /* 16BB4C 80083A8C 00035403 */  sra        $t2, $v1, 16
    /* 16BB50 80083A90 2401FFFD */  addiu      $at, $zero, -0x3
    /* 16BB54 80083A94 10410117 */  beq        $v0, $at, .L80083EF4_16BFB4
    /* 16BB58 80083A98 01401825 */   or        $v1, $t2, $zero
    /* 16BB5C 80083A9C 920B000A */  lbu        $t3, 0xA($s0)
    /* 16BB60 80083AA0 24010001 */  addiu      $at, $zero, 0x1
    /* 16BB64 80083AA4 000A6080 */  sll        $t4, $t2, 2
    /* 16BB68 80083AA8 1561009B */  bne        $t3, $at, .L80083D18_16BDD8
    /* 16BB6C 80083AAC 018A6023 */   subu      $t4, $t4, $t2
    /* 16BB70 80083AB0 000C6080 */  sll        $t4, $t4, 2
    /* 16BB74 80083AB4 018A6023 */  subu       $t4, $t4, $t2
    /* 16BB78 80083AB8 860F0000 */  lh         $t7, 0x0($s0)
    /* 16BB7C 80083ABC 000C6040 */  sll        $t4, $t4, 1
    /* 16BB80 80083AC0 3C0E8010 */  lui        $t6, %hi(D_800FB7B0)
    /* 16BB84 80083AC4 25CEB7B0 */  addiu      $t6, $t6, %lo(D_800FB7B0)
    /* 16BB88 80083AC8 258D0008 */  addiu      $t5, $t4, 0x8
    /* 16BB8C 80083ACC 01AE8821 */  addu       $s1, $t5, $t6
    /* 16BB90 80083AD0 A62F0000 */  sh         $t7, 0x0($s1)
    /* 16BB94 80083AD4 86180002 */  lh         $t8, 0x2($s0)
    /* 16BB98 80083AD8 A6380002 */  sh         $t8, 0x2($s1)
    /* 16BB9C 80083ADC 86190004 */  lh         $t9, 0x4($s0)
    /* 16BBA0 80083AE0 0C000E38 */  jal        func_800038E0_44E0
    /* 16BBA4 80083AE4 A6390004 */   sh        $t9, 0x4($s1)
    /* 16BBA8 80083AE8 93B00057 */  lbu        $s0, 0x57($sp)
    /* 16BBAC 80083AEC 0050001A */  div        $zero, $v0, $s0
    /* 16BBB0 80083AF0 00004010 */  mfhi       $t0
    /* 16BBB4 80083AF4 44882000 */  mtc1       $t0, $f4
    /* 16BBB8 80083AF8 16000002 */  bnez       $s0, .L80083B04_16BBC4
    /* 16BBBC 80083AFC 00000000 */   nop
    /* 16BBC0 80083B00 0007000D */  break      7
  .L80083B04_16BBC4:
    /* 16BBC4 80083B04 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16BBC8 80083B08 16010004 */  bne        $s0, $at, .L80083B1C_16BBDC
    /* 16BBCC 80083B0C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16BBD0 80083B10 14410002 */  bne        $v0, $at, .L80083B1C_16BBDC
    /* 16BBD4 80083B14 00000000 */   nop
    /* 16BBD8 80083B18 0006000D */  break      6
  .L80083B1C_16BBDC:
    /* 16BBDC 80083B1C 468021A0 */  cvt.s.w    $f6, $f4
    /* 16BBE0 80083B20 3C01800A */  lui        $at, %hi(D_800A5450)
    /* 16BBE4 80083B24 D42A5450 */  ldc1       $f10, %lo(D_800A5450)($at)
    /* 16BBE8 80083B28 46003221 */  cvt.d.s    $f8, $f6
    /* 16BBEC 80083B2C 462A4403 */  div.d      $f16, $f8, $f10
    /* 16BBF0 80083B30 462084A0 */  cvt.s.d    $f18, $f16
    /* 16BBF4 80083B34 0C000E38 */  jal        func_800038E0_44E0
    /* 16BBF8 80083B38 E7B20034 */   swc1      $f18, 0x34($sp)
    /* 16BBFC 80083B3C 24010015 */  addiu      $at, $zero, 0x15
    /* 16BC00 80083B40 0041001A */  div        $zero, $v0, $at
    /* 16BC04 80083B44 00004810 */  mfhi       $t1
    /* 16BC08 80083B48 2921000A */  slti       $at, $t1, 0xA
    /* 16BC0C 80083B4C 10200005 */  beqz       $at, .L80083B64_16BC24
    /* 16BC10 80083B50 C7A60034 */   lwc1      $f6, 0x34($sp)
    /* 16BC14 80083B54 44802000 */  mtc1       $zero, $f4
    /* 16BC18 80083B58 00000000 */  nop
    /* 16BC1C 80083B5C 46062201 */  sub.s      $f8, $f4, $f6
    /* 16BC20 80083B60 E7A80034 */  swc1       $f8, 0x34($sp)
  .L80083B64_16BC24:
    /* 16BC24 80083B64 8FAA004C */  lw         $t2, 0x4C($sp)
    /* 16BC28 80083B68 C7AA0034 */  lwc1       $f10, 0x34($sp)
    /* 16BC2C 80083B6C C5500000 */  lwc1       $f16, 0x0($t2)
    /* 16BC30 80083B70 46105480 */  add.s      $f18, $f10, $f16
    /* 16BC34 80083B74 0C000E38 */  jal        func_800038E0_44E0
    /* 16BC38 80083B78 E7B20034 */   swc1      $f18, 0x34($sp)
    /* 16BC3C 80083B7C 0050001A */  div        $zero, $v0, $s0
    /* 16BC40 80083B80 00005810 */  mfhi       $t3
    /* 16BC44 80083B84 448B2000 */  mtc1       $t3, $f4
    /* 16BC48 80083B88 16000002 */  bnez       $s0, .L80083B94_16BC54
    /* 16BC4C 80083B8C 00000000 */   nop
    /* 16BC50 80083B90 0007000D */  break      7
  .L80083B94_16BC54:
    /* 16BC54 80083B94 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16BC58 80083B98 16010004 */  bne        $s0, $at, .L80083BAC_16BC6C
    /* 16BC5C 80083B9C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16BC60 80083BA0 14410002 */  bne        $v0, $at, .L80083BAC_16BC6C
    /* 16BC64 80083BA4 00000000 */   nop
    /* 16BC68 80083BA8 0006000D */  break      6
  .L80083BAC_16BC6C:
    /* 16BC6C 80083BAC 468021A0 */  cvt.s.w    $f6, $f4
    /* 16BC70 80083BB0 3C01800A */  lui        $at, %hi(D_800A5458)
    /* 16BC74 80083BB4 D42A5458 */  ldc1       $f10, %lo(D_800A5458)($at)
    /* 16BC78 80083BB8 46003221 */  cvt.d.s    $f8, $f6
    /* 16BC7C 80083BBC 462A4403 */  div.d      $f16, $f8, $f10
    /* 16BC80 80083BC0 462084A0 */  cvt.s.d    $f18, $f16
    /* 16BC84 80083BC4 0C000E38 */  jal        func_800038E0_44E0
    /* 16BC88 80083BC8 E7B20038 */   swc1      $f18, 0x38($sp)
    /* 16BC8C 80083BCC 24010015 */  addiu      $at, $zero, 0x15
    /* 16BC90 80083BD0 0041001A */  div        $zero, $v0, $at
    /* 16BC94 80083BD4 00006010 */  mfhi       $t4
    /* 16BC98 80083BD8 2981000A */  slti       $at, $t4, 0xA
    /* 16BC9C 80083BDC 10200005 */  beqz       $at, .L80083BF4_16BCB4
    /* 16BCA0 80083BE0 C7A60038 */   lwc1      $f6, 0x38($sp)
    /* 16BCA4 80083BE4 44802000 */  mtc1       $zero, $f4
    /* 16BCA8 80083BE8 00000000 */  nop
    /* 16BCAC 80083BEC 46062201 */  sub.s      $f8, $f4, $f6
    /* 16BCB0 80083BF0 E7A80038 */  swc1       $f8, 0x38($sp)
  .L80083BF4_16BCB4:
    /* 16BCB4 80083BF4 8FAD004C */  lw         $t5, 0x4C($sp)
    /* 16BCB8 80083BF8 C7AA0038 */  lwc1       $f10, 0x38($sp)
    /* 16BCBC 80083BFC C5B00004 */  lwc1       $f16, 0x4($t5)
    /* 16BCC0 80083C00 46105480 */  add.s      $f18, $f10, $f16
    /* 16BCC4 80083C04 0C000E38 */  jal        func_800038E0_44E0
    /* 16BCC8 80083C08 E7B20038 */   swc1      $f18, 0x38($sp)
    /* 16BCCC 80083C0C 0050001A */  div        $zero, $v0, $s0
    /* 16BCD0 80083C10 00007010 */  mfhi       $t6
    /* 16BCD4 80083C14 448E2000 */  mtc1       $t6, $f4
    /* 16BCD8 80083C18 16000002 */  bnez       $s0, .L80083C24_16BCE4
    /* 16BCDC 80083C1C 00000000 */   nop
    /* 16BCE0 80083C20 0007000D */  break      7
  .L80083C24_16BCE4:
    /* 16BCE4 80083C24 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16BCE8 80083C28 16010004 */  bne        $s0, $at, .L80083C3C_16BCFC
    /* 16BCEC 80083C2C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16BCF0 80083C30 14410002 */  bne        $v0, $at, .L80083C3C_16BCFC
    /* 16BCF4 80083C34 00000000 */   nop
    /* 16BCF8 80083C38 0006000D */  break      6
  .L80083C3C_16BCFC:
    /* 16BCFC 80083C3C 468021A0 */  cvt.s.w    $f6, $f4
    /* 16BD00 80083C40 3C01800A */  lui        $at, %hi(D_800A5460)
    /* 16BD04 80083C44 D42A5460 */  ldc1       $f10, %lo(D_800A5460)($at)
    /* 16BD08 80083C48 46003221 */  cvt.d.s    $f8, $f6
    /* 16BD0C 80083C4C 462A4403 */  div.d      $f16, $f8, $f10
    /* 16BD10 80083C50 462084A0 */  cvt.s.d    $f18, $f16
    /* 16BD14 80083C54 0C000E38 */  jal        func_800038E0_44E0
    /* 16BD18 80083C58 E7B2003C */   swc1      $f18, 0x3C($sp)
    /* 16BD1C 80083C5C 24010015 */  addiu      $at, $zero, 0x15
    /* 16BD20 80083C60 0041001A */  div        $zero, $v0, $at
    /* 16BD24 80083C64 00007810 */  mfhi       $t7
    /* 16BD28 80083C68 29E1000A */  slti       $at, $t7, 0xA
    /* 16BD2C 80083C6C 10200005 */  beqz       $at, .L80083C84_16BD44
    /* 16BD30 80083C70 C7A6003C */   lwc1      $f6, 0x3C($sp)
    /* 16BD34 80083C74 44802000 */  mtc1       $zero, $f4
    /* 16BD38 80083C78 00000000 */  nop
    /* 16BD3C 80083C7C 46062201 */  sub.s      $f8, $f4, $f6
    /* 16BD40 80083C80 E7A8003C */  swc1       $f8, 0x3C($sp)
  .L80083C84_16BD44:
    /* 16BD44 80083C84 8FB8004C */  lw         $t8, 0x4C($sp)
    /* 16BD48 80083C88 C7AA003C */  lwc1       $f10, 0x3C($sp)
    /* 16BD4C 80083C8C 27A40034 */  addiu      $a0, $sp, 0x34
    /* 16BD50 80083C90 C7100008 */  lwc1       $f16, 0x8($t8)
    /* 16BD54 80083C94 00802825 */  or         $a1, $a0, $zero
    /* 16BD58 80083C98 46105480 */  add.s      $f18, $f10, $f16
    /* 16BD5C 80083C9C 0C020C05 */  jal        func_80083014_16B0D4
    /* 16BD60 80083CA0 E7B2003C */   swc1      $f18, 0x3C($sp)
    /* 16BD64 80083CA4 93B90053 */  lbu        $t9, 0x53($sp)
    /* 16BD68 80083CA8 C7A60034 */  lwc1       $f6, 0x34($sp)
    /* 16BD6C 80083CAC 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 16BD70 80083CB0 07210003 */  bgez       $t9, .L80083CC0_16BD80
    /* 16BD74 80083CB4 00194083 */   sra       $t0, $t9, 2
    /* 16BD78 80083CB8 27210003 */  addiu      $at, $t9, 0x3
    /* 16BD7C 80083CBC 00014083 */  sra        $t0, $at, 2
  .L80083CC0_16BD80:
    /* 16BD80 80083CC0 44882000 */  mtc1       $t0, $f4
    /* 16BD84 80083CC4 00000000 */  nop
    /* 16BD88 80083CC8 46802020 */  cvt.s.w    $f0, $f4
    /* 16BD8C 80083CCC 46060202 */  mul.s      $f8, $f0, $f6
    /* 16BD90 80083CD0 4600428D */  trunc.w.s  $f10, $f8
    /* 16BD94 80083CD4 440A5000 */  mfc1       $t2, $f10
    /* 16BD98 80083CD8 00000000 */  nop
    /* 16BD9C 80083CDC A22A0006 */  sb         $t2, 0x6($s1)
    /* 16BDA0 80083CE0 C7B00038 */  lwc1       $f16, 0x38($sp)
    /* 16BDA4 80083CE4 46100482 */  mul.s      $f18, $f0, $f16
    /* 16BDA8 80083CE8 4600910D */  trunc.w.s  $f4, $f18
    /* 16BDAC 80083CEC 440C2000 */  mfc1       $t4, $f4
    /* 16BDB0 80083CF0 00000000 */  nop
    /* 16BDB4 80083CF4 A22C0007 */  sb         $t4, 0x7($s1)
    /* 16BDB8 80083CF8 C7A6003C */  lwc1       $f6, 0x3C($sp)
    /* 16BDBC 80083CFC A22F0009 */  sb         $t7, 0x9($s1)
    /* 16BDC0 80083D00 A220000A */  sb         $zero, 0xA($s1)
    /* 16BDC4 80083D04 46060202 */  mul.s      $f8, $f0, $f6
    /* 16BDC8 80083D08 4600428D */  trunc.w.s  $f10, $f8
    /* 16BDCC 80083D0C 440E5000 */  mfc1       $t6, $f10
    /* 16BDD0 80083D10 10000078 */  b          .L80083EF4_16BFB4
    /* 16BDD4 80083D14 A22E0008 */   sb        $t6, 0x8($s1)
  .L80083D18_16BDD8:
    /* 16BDD8 80083D18 0C000E38 */  jal        func_800038E0_44E0
    /* 16BDDC 80083D1C A7A30032 */   sh        $v1, 0x32($sp)
    /* 16BDE0 80083D20 8603000C */  lh         $v1, 0xC($s0)
    /* 16BDE4 80083D24 0003C040 */  sll        $t8, $v1, 1
    /* 16BDE8 80083D28 0058001A */  div        $zero, $v0, $t8
    /* 16BDEC 80083D2C 0000C810 */  mfhi       $t9
    /* 16BDF0 80083D30 03234023 */  subu       $t0, $t9, $v1
    /* 16BDF4 80083D34 17000002 */  bnez       $t8, .L80083D40_16BE00
    /* 16BDF8 80083D38 00000000 */   nop
    /* 16BDFC 80083D3C 0007000D */  break      7
  .L80083D40_16BE00:
    /* 16BE00 80083D40 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16BE04 80083D44 17010004 */  bne        $t8, $at, .L80083D58_16BE18
    /* 16BE08 80083D48 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16BE0C 80083D4C 14410002 */  bne        $v0, $at, .L80083D58_16BE18
    /* 16BE10 80083D50 00000000 */   nop
    /* 16BE14 80083D54 0006000D */  break      6
  .L80083D58_16BE18:
    /* 16BE18 80083D58 A7A80030 */  sh         $t0, 0x30($sp)
    /* 16BE1C 80083D5C 0C000E38 */  jal        func_800038E0_44E0
    /* 16BE20 80083D60 00000000 */   nop
    /* 16BE24 80083D64 8603000C */  lh         $v1, 0xC($s0)
    /* 16BE28 80083D68 00034840 */  sll        $t1, $v1, 1
    /* 16BE2C 80083D6C 0049001A */  div        $zero, $v0, $t1
    /* 16BE30 80083D70 00005010 */  mfhi       $t2
    /* 16BE34 80083D74 01436023 */  subu       $t4, $t2, $v1
    /* 16BE38 80083D78 15200002 */  bnez       $t1, .L80083D84_16BE44
    /* 16BE3C 80083D7C 00000000 */   nop
    /* 16BE40 80083D80 0007000D */  break      7
  .L80083D84_16BE44:
    /* 16BE44 80083D84 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16BE48 80083D88 15210004 */  bne        $t1, $at, .L80083D9C_16BE5C
    /* 16BE4C 80083D8C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16BE50 80083D90 14410002 */  bne        $v0, $at, .L80083D9C_16BE5C
    /* 16BE54 80083D94 00000000 */   nop
    /* 16BE58 80083D98 0006000D */  break      6
  .L80083D9C_16BE5C:
    /* 16BE5C 80083D9C A7AC002E */  sh         $t4, 0x2E($sp)
    /* 16BE60 80083DA0 0C000E38 */  jal        func_800038E0_44E0
    /* 16BE64 80083DA4 00000000 */   nop
    /* 16BE68 80083DA8 8603000C */  lh         $v1, 0xC($s0)
    /* 16BE6C 80083DAC 87B90032 */  lh         $t9, 0x32($sp)
    /* 16BE70 80083DB0 87A60030 */  lh         $a2, 0x30($sp)
    /* 16BE74 80083DB4 00036840 */  sll        $t5, $v1, 1
    /* 16BE78 80083DB8 004D001A */  div        $zero, $v0, $t5
    /* 16BE7C 80083DBC 00194080 */  sll        $t0, $t9, 2
    /* 16BE80 80083DC0 01194023 */  subu       $t0, $t0, $t9
    /* 16BE84 80083DC4 00084080 */  sll        $t0, $t0, 2
    /* 16BE88 80083DC8 860B0000 */  lh         $t3, 0x0($s0)
    /* 16BE8C 80083DCC 01194023 */  subu       $t0, $t0, $t9
    /* 16BE90 80083DD0 00084040 */  sll        $t0, $t0, 1
    /* 16BE94 80083DD4 3C0A8010 */  lui        $t2, %hi(D_800FB7B0)
    /* 16BE98 80083DD8 254AB7B0 */  addiu      $t2, $t2, %lo(D_800FB7B0)
    /* 16BE9C 80083DDC 25090008 */  addiu      $t1, $t0, 0x8
    /* 16BEA0 80083DE0 87A5002E */  lh         $a1, 0x2E($sp)
    /* 16BEA4 80083DE4 012A8821 */  addu       $s1, $t1, $t2
    /* 16BEA8 80083DE8 01666021 */  addu       $t4, $t3, $a2
    /* 16BEAC 80083DEC 15A00002 */  bnez       $t5, .L80083DF8_16BEB8
    /* 16BEB0 80083DF0 00000000 */   nop
    /* 16BEB4 80083DF4 0007000D */  break      7
  .L80083DF8_16BEB8:
    /* 16BEB8 80083DF8 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16BEBC 80083DFC 15A10004 */  bne        $t5, $at, .L80083E10_16BED0
    /* 16BEC0 80083E00 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16BEC4 80083E04 14410002 */  bne        $v0, $at, .L80083E10_16BED0
    /* 16BEC8 80083E08 00000000 */   nop
    /* 16BECC 80083E0C 0006000D */  break      6
  .L80083E10_16BED0:
    /* 16BED0 80083E10 A62C0000 */  sh         $t4, 0x0($s1)
    /* 16BED4 80083E14 00007010 */  mfhi       $t6
    /* 16BED8 80083E18 860D0002 */  lh         $t5, 0x2($s0)
    /* 16BEDC 80083E1C 01C32023 */  subu       $a0, $t6, $v1
    /* 16BEE0 80083E20 00047C00 */  sll        $t7, $a0, 16
    /* 16BEE4 80083E24 01A57021 */  addu       $t6, $t5, $a1
    /* 16BEE8 80083E28 000FC403 */  sra        $t8, $t7, 16
    /* 16BEEC 80083E2C A62E0002 */  sh         $t6, 0x2($s1)
    /* 16BEF0 80083E30 860F0004 */  lh         $t7, 0x4($s0)
    /* 16BEF4 80083E34 03002025 */  or         $a0, $t8, $zero
    /* 16BEF8 80083E38 01F8C021 */  addu       $t8, $t7, $t8
    /* 16BEFC 80083E3C A6380004 */  sh         $t8, 0x4($s1)
    /* 16BF00 80083E40 92190009 */  lbu        $t9, 0x9($s0)
    /* 16BF04 80083E44 2418000C */  addiu      $t8, $zero, 0xC
    /* 16BF08 80083E48 00D9001A */  div        $zero, $a2, $t9
    /* 16BF0C 80083E4C 00004012 */  mflo       $t0
    /* 16BF10 80083E50 00084823 */  negu       $t1, $t0
    /* 16BF14 80083E54 A2290006 */  sb         $t1, 0x6($s1)
    /* 16BF18 80083E58 920A0009 */  lbu        $t2, 0x9($s0)
    /* 16BF1C 80083E5C 17200002 */  bnez       $t9, .L80083E68_16BF28
    /* 16BF20 80083E60 00000000 */   nop
    /* 16BF24 80083E64 0007000D */  break      7
  .L80083E68_16BF28:
    /* 16BF28 80083E68 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16BF2C 80083E6C 17210004 */  bne        $t9, $at, .L80083E80_16BF40
    /* 16BF30 80083E70 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16BF34 80083E74 14C10002 */  bne        $a2, $at, .L80083E80_16BF40
    /* 16BF38 80083E78 00000000 */   nop
    /* 16BF3C 80083E7C 0006000D */  break      6
  .L80083E80_16BF40:
    /* 16BF40 80083E80 00AA001A */  div        $zero, $a1, $t2
    /* 16BF44 80083E84 00005812 */  mflo       $t3
    /* 16BF48 80083E88 000B6023 */  negu       $t4, $t3
    /* 16BF4C 80083E8C A22C0007 */  sb         $t4, 0x7($s1)
    /* 16BF50 80083E90 920D0009 */  lbu        $t5, 0x9($s0)
    /* 16BF54 80083E94 15400002 */  bnez       $t2, .L80083EA0_16BF60
    /* 16BF58 80083E98 00000000 */   nop
    /* 16BF5C 80083E9C 0007000D */  break      7
  .L80083EA0_16BF60:
    /* 16BF60 80083EA0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16BF64 80083EA4 15410004 */  bne        $t2, $at, .L80083EB8_16BF78
    /* 16BF68 80083EA8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16BF6C 80083EAC 14A10002 */  bne        $a1, $at, .L80083EB8_16BF78
    /* 16BF70 80083EB0 00000000 */   nop
    /* 16BF74 80083EB4 0006000D */  break      6
  .L80083EB8_16BF78:
    /* 16BF78 80083EB8 008D001A */  div        $zero, $a0, $t5
    /* 16BF7C 80083EBC 00007012 */  mflo       $t6
    /* 16BF80 80083EC0 000E7823 */  negu       $t7, $t6
    /* 16BF84 80083EC4 A22F0008 */  sb         $t7, 0x8($s1)
    /* 16BF88 80083EC8 A2380009 */  sb         $t8, 0x9($s1)
    /* 16BF8C 80083ECC A220000A */  sb         $zero, 0xA($s1)
    /* 16BF90 80083ED0 15A00002 */  bnez       $t5, .L80083EDC_16BF9C
    /* 16BF94 80083ED4 00000000 */   nop
    /* 16BF98 80083ED8 0007000D */  break      7
  .L80083EDC_16BF9C:
    /* 16BF9C 80083EDC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16BFA0 80083EE0 15A10004 */  bne        $t5, $at, .L80083EF4_16BFB4
    /* 16BFA4 80083EE4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16BFA8 80083EE8 14810002 */  bne        $a0, $at, .L80083EF4_16BFB4
    /* 16BFAC 80083EEC 00000000 */   nop
    /* 16BFB0 80083EF0 0006000D */  break      6
  .L80083EF4_16BFB4:
    /* 16BFB4 80083EF4 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 16BFB8 80083EF8 8FB00014 */  lw         $s0, 0x14($sp)
    /* 16BFBC 80083EFC 8FB10018 */  lw         $s1, 0x18($sp)
    /* 16BFC0 80083F00 03E00008 */  jr         $ra
    /* 16BFC4 80083F04 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_80083A20_16BAE0
