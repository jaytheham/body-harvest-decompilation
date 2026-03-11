nonmatching func_8010CA38_11B9E8, 0x544

glabel func_8010CA38_11B9E8
    /* 11B9E8 8010CA38 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 11B9EC 8010CA3C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 11B9F0 8010CA40 0C03EB98 */  jal        func_800FAE60_109E10
    /* 11B9F4 8010CA44 AFA40028 */   sw        $a0, 0x28($sp)
    /* 11B9F8 8010CA48 3C078016 */  lui        $a3, %hi(D_80159D60)
    /* 11B9FC 8010CA4C 24E79D60 */  addiu      $a3, $a3, %lo(D_80159D60)
    /* 11BA00 8010CA50 8FA60028 */  lw         $a2, 0x28($sp)
    /* 11BA04 8010CA54 8CEE0000 */  lw         $t6, 0x0($a3)
    /* 11BA08 8010CA58 A7A2001E */  sh         $v0, 0x1E($sp)
    /* 11BA0C 8010CA5C 3C198025 */  lui        $t9, %hi(vehicleSpecs)
    /* 11BA10 8010CA60 50CE0143 */  beql       $a2, $t6, .L8010CF70_11BF20
    /* 11BA14 8010CA64 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 11BA18 8010CA68 ACE60000 */  sw         $a2, 0x0($a3)
    /* 11BA1C 8010CA6C 90CF001A */  lbu        $t7, 0x1A($a2)
    /* 11BA20 8010CA70 27397A00 */  addiu      $t9, $t9, %lo(vehicleSpecs)
    /* 11BA24 8010CA74 3C018016 */  lui        $at, %hi(D_80159D68)
    /* 11BA28 8010CA78 000FC0C0 */  sll        $t8, $t7, 3
    /* 11BA2C 8010CA7C 030FC023 */  subu       $t8, $t8, $t7
    /* 11BA30 8010CA80 0018C100 */  sll        $t8, $t8, 4
    /* 11BA34 8010CA84 03195821 */  addu       $t3, $t8, $t9
    /* 11BA38 8010CA88 AC2B9D68 */  sw         $t3, %lo(D_80159D68)($at)
    /* 11BA3C 8010CA8C 90CC001A */  lbu        $t4, 0x1A($a2)
    /* 11BA40 8010CA90 55800017 */  bnel       $t4, $zero, .L8010CAF0_11BAA0
    /* 11BA44 8010CA94 8CEC0000 */   lw        $t4, 0x0($a3)
    /* 11BA48 8010CA98 856D0036 */  lh         $t5, 0x36($t3)
    /* 11BA4C 8010CA9C 44804000 */  mtc1       $zero, $f8
    /* 11BA50 8010CAA0 3C018016 */  lui        $at, %hi(D_80159D44)
    /* 11BA54 8010CAA4 000D7043 */  sra        $t6, $t5, 1
    /* 11BA58 8010CAA8 448E2000 */  mtc1       $t6, $f4
    /* 11BA5C 8010CAAC 44805000 */  mtc1       $zero, $f10
    /* 11BA60 8010CAB0 468021A0 */  cvt.s.w    $f6, $f4
    /* 11BA64 8010CAB4 E4269D44 */  swc1       $f6, %lo(D_80159D44)($at)
    /* 11BA68 8010CAB8 3C018016 */  lui        $at, %hi(D_80159D48)
    /* 11BA6C 8010CABC E4289D48 */  swc1       $f8, %lo(D_80159D48)($at)
    /* 11BA70 8010CAC0 3C018016 */  lui        $at, %hi(D_80159D4C)
    /* 11BA74 8010CAC4 E42A9D4C */  swc1       $f10, %lo(D_80159D4C)($at)
    /* 11BA78 8010CAC8 856F0034 */  lh         $t7, 0x34($t3)
    /* 11BA7C 8010CACC 3C018016 */  lui        $at, %hi(D_80159D50)
    /* 11BA80 8010CAD0 000FC023 */  negu       $t8, $t7
    /* 11BA84 8010CAD4 0018C843 */  sra        $t9, $t8, 1
    /* 11BA88 8010CAD8 44992000 */  mtc1       $t9, $f4
    /* 11BA8C 8010CADC 00000000 */  nop
    /* 11BA90 8010CAE0 468021A0 */  cvt.s.w    $f6, $f4
    /* 11BA94 8010CAE4 10000059 */  b          .L8010CC4C_11BBFC
    /* 11BA98 8010CAE8 E4269D50 */   swc1      $f6, %lo(D_80159D50)($at)
    /* 11BA9C 8010CAEC 8CEC0000 */  lw         $t4, 0x0($a3)
  .L8010CAF0_11BAA0:
    /* 11BAA0 8010CAF0 0C007654 */  jal        coss
    /* 11BAA4 8010CAF4 95840006 */   lhu       $a0, 0x6($t4)
    /* 11BAA8 8010CAF8 44824000 */  mtc1       $v0, $f8
    /* 11BAAC 8010CAFC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 11BAB0 8010CB00 44813800 */  mtc1       $at, $f7
    /* 11BAB4 8010CB04 468042A0 */  cvt.s.w    $f10, $f8
    /* 11BAB8 8010CB08 44803000 */  mtc1       $zero, $f6
    /* 11BABC 8010CB0C 3C0B8016 */  lui        $t3, %hi(D_80159D68)
    /* 11BAC0 8010CB10 8D6B9D68 */  lw         $t3, %lo(D_80159D68)($t3)
    /* 11BAC4 8010CB14 3C0F8016 */  lui        $t7, %hi(D_80159D60)
    /* 11BAC8 8010CB18 8DEF9D60 */  lw         $t7, %lo(D_80159D60)($t7)
    /* 11BACC 8010CB1C 46005121 */  cvt.d.s    $f4, $f10
    /* 11BAD0 8010CB20 856D0036 */  lh         $t5, 0x36($t3)
    /* 11BAD4 8010CB24 46262203 */  div.d      $f8, $f4, $f6
    /* 11BAD8 8010CB28 3C018016 */  lui        $at, %hi(D_80159D44)
    /* 11BADC 8010CB2C 000D7043 */  sra        $t6, $t5, 1
    /* 11BAE0 8010CB30 448E5000 */  mtc1       $t6, $f10
    /* 11BAE4 8010CB34 00000000 */  nop
    /* 11BAE8 8010CB38 46805121 */  cvt.d.w    $f4, $f10
    /* 11BAEC 8010CB3C 46244182 */  mul.d      $f6, $f8, $f4
    /* 11BAF0 8010CB40 462032A0 */  cvt.s.d    $f10, $f6
    /* 11BAF4 8010CB44 E42A9D44 */  swc1       $f10, %lo(D_80159D44)($at)
    /* 11BAF8 8010CB48 0C007660 */  jal        sins
    /* 11BAFC 8010CB4C 95E40006 */   lhu       $a0, 0x6($t7)
    /* 11BB00 8010CB50 44824000 */  mtc1       $v0, $f8
    /* 11BB04 8010CB54 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 11BB08 8010CB58 44815800 */  mtc1       $at, $f11
    /* 11BB0C 8010CB5C 46804120 */  cvt.s.w    $f4, $f8
    /* 11BB10 8010CB60 44805000 */  mtc1       $zero, $f10
    /* 11BB14 8010CB64 3C188016 */  lui        $t8, %hi(D_80159D68)
    /* 11BB18 8010CB68 8F189D68 */  lw         $t8, %lo(D_80159D68)($t8)
    /* 11BB1C 8010CB6C 3C0B8016 */  lui        $t3, %hi(D_80159D60)
    /* 11BB20 8010CB70 8D6B9D60 */  lw         $t3, %lo(D_80159D60)($t3)
    /* 11BB24 8010CB74 460021A1 */  cvt.d.s    $f6, $f4
    /* 11BB28 8010CB78 87190036 */  lh         $t9, 0x36($t8)
    /* 11BB2C 8010CB7C 462A3203 */  div.d      $f8, $f6, $f10
    /* 11BB30 8010CB80 3C018016 */  lui        $at, %hi(D_80159D48)
    /* 11BB34 8010CB84 00196043 */  sra        $t4, $t9, 1
    /* 11BB38 8010CB88 448C2000 */  mtc1       $t4, $f4
    /* 11BB3C 8010CB8C 00000000 */  nop
    /* 11BB40 8010CB90 468021A1 */  cvt.d.w    $f6, $f4
    /* 11BB44 8010CB94 46264282 */  mul.d      $f10, $f8, $f6
    /* 11BB48 8010CB98 46205120 */  cvt.s.d    $f4, $f10
    /* 11BB4C 8010CB9C E4249D48 */  swc1       $f4, %lo(D_80159D48)($at)
    /* 11BB50 8010CBA0 0C007660 */  jal        sins
    /* 11BB54 8010CBA4 95640006 */   lhu       $a0, 0x6($t3)
    /* 11BB58 8010CBA8 44824000 */  mtc1       $v0, $f8
    /* 11BB5C 8010CBAC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 11BB60 8010CBB0 44812800 */  mtc1       $at, $f5
    /* 11BB64 8010CBB4 468041A0 */  cvt.s.w    $f6, $f8
    /* 11BB68 8010CBB8 44802000 */  mtc1       $zero, $f4
    /* 11BB6C 8010CBBC 3C0D8016 */  lui        $t5, %hi(D_80159D68)
    /* 11BB70 8010CBC0 8DAD9D68 */  lw         $t5, %lo(D_80159D68)($t5)
    /* 11BB74 8010CBC4 3C188016 */  lui        $t8, %hi(D_80159D60)
    /* 11BB78 8010CBC8 8F189D60 */  lw         $t8, %lo(D_80159D60)($t8)
    /* 11BB7C 8010CBCC 460032A1 */  cvt.d.s    $f10, $f6
    /* 11BB80 8010CBD0 85AE0034 */  lh         $t6, 0x34($t5)
    /* 11BB84 8010CBD4 46245203 */  div.d      $f8, $f10, $f4
    /* 11BB88 8010CBD8 3C018016 */  lui        $at, %hi(D_80159D4C)
    /* 11BB8C 8010CBDC 000E7843 */  sra        $t7, $t6, 1
    /* 11BB90 8010CBE0 448F3000 */  mtc1       $t7, $f6
    /* 11BB94 8010CBE4 00000000 */  nop
    /* 11BB98 8010CBE8 468032A1 */  cvt.d.w    $f10, $f6
    /* 11BB9C 8010CBEC 462A4102 */  mul.d      $f4, $f8, $f10
    /* 11BBA0 8010CBF0 462021A0 */  cvt.s.d    $f6, $f4
    /* 11BBA4 8010CBF4 E4269D4C */  swc1       $f6, %lo(D_80159D4C)($at)
    /* 11BBA8 8010CBF8 0C007654 */  jal        coss
    /* 11BBAC 8010CBFC 97040006 */   lhu       $a0, 0x6($t8)
    /* 11BBB0 8010CC00 44824000 */  mtc1       $v0, $f8
    /* 11BBB4 8010CC04 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 11BBB8 8010CC08 44813800 */  mtc1       $at, $f7
    /* 11BBBC 8010CC0C 468042A0 */  cvt.s.w    $f10, $f8
    /* 11BBC0 8010CC10 44803000 */  mtc1       $zero, $f6
    /* 11BBC4 8010CC14 3C198016 */  lui        $t9, %hi(D_80159D68)
    /* 11BBC8 8010CC18 8F399D68 */  lw         $t9, %lo(D_80159D68)($t9)
    /* 11BBCC 8010CC1C 3C018016 */  lui        $at, %hi(D_80159D50)
    /* 11BBD0 8010CC20 46005121 */  cvt.d.s    $f4, $f10
    /* 11BBD4 8010CC24 872C0034 */  lh         $t4, 0x34($t9)
    /* 11BBD8 8010CC28 46262203 */  div.d      $f8, $f4, $f6
    /* 11BBDC 8010CC2C 000C5843 */  sra        $t3, $t4, 1
    /* 11BBE0 8010CC30 448B2000 */  mtc1       $t3, $f4
    /* 11BBE4 8010CC34 00000000 */  nop
    /* 11BBE8 8010CC38 468021A1 */  cvt.d.w    $f6, $f4
    /* 11BBEC 8010CC3C 46204287 */  neg.d      $f10, $f8
    /* 11BBF0 8010CC40 46265202 */  mul.d      $f8, $f10, $f6
    /* 11BBF4 8010CC44 46204120 */  cvt.s.d    $f4, $f8
    /* 11BBF8 8010CC48 E4249D50 */  swc1       $f4, %lo(D_80159D50)($at)
  .L8010CC4C_11BBFC:
    /* 11BBFC 8010CC4C 3C018016 */  lui        $at, %hi(D_80159D44)
    /* 11BC00 8010CC50 C42C9D44 */  lwc1       $f12, %lo(D_80159D44)($at)
    /* 11BC04 8010CC54 3C018016 */  lui        $at, %hi(D_80159D4C)
    /* 11BC08 8010CC58 C4209D4C */  lwc1       $f0, %lo(D_80159D4C)($at)
    /* 11BC0C 8010CC5C 3C028016 */  lui        $v0, %hi(D_80159D78)
    /* 11BC10 8010CC60 24429D78 */  addiu      $v0, $v0, %lo(D_80159D78)
    /* 11BC14 8010CC64 46006280 */  add.s      $f10, $f12, $f0
    /* 11BC18 8010CC68 3C018016 */  lui        $at, %hi(D_80159D48)
    /* 11BC1C 8010CC6C 3C038016 */  lui        $v1, %hi(D_80159D98)
    /* 11BC20 8010CC70 46006407 */  neg.s      $f16, $f12
    /* 11BC24 8010CC74 E44A0010 */  swc1       $f10, 0x10($v0)
    /* 11BC28 8010CC78 C42E9D48 */  lwc1       $f14, %lo(D_80159D48)($at)
    /* 11BC2C 8010CC7C 3C018016 */  lui        $at, %hi(D_80159D50)
    /* 11BC30 8010CC80 C4229D50 */  lwc1       $f2, %lo(D_80159D50)($at)
    /* 11BC34 8010CC84 46008281 */  sub.s      $f10, $f16, $f0
    /* 11BC38 8010CC88 24639D98 */  addiu      $v1, $v1, %lo(D_80159D98)
    /* 11BC3C 8010CC8C 3C088016 */  lui        $t0, %hi(D_80159D30)
    /* 11BC40 8010CC90 46027180 */  add.s      $f6, $f14, $f2
    /* 11BC44 8010CC94 E44A0018 */  swc1       $f10, 0x18($v0)
    /* 11BC48 8010CC98 44805000 */  mtc1       $zero, $f10
    /* 11BC4C 8010CC9C 46007487 */  neg.s      $f18, $f14
    /* 11BC50 8010CCA0 46006201 */  sub.s      $f8, $f12, $f0
    /* 11BC54 8010CCA4 E4660010 */  swc1       $f6, 0x10($v1)
    /* 11BC58 8010CCA8 25089D30 */  addiu      $t0, $t0, %lo(D_80159D30)
    /* 11BC5C 8010CCAC 46029181 */  sub.s      $f6, $f18, $f2
    /* 11BC60 8010CCB0 E4480014 */  swc1       $f8, 0x14($v0)
    /* 11BC64 8010CCB4 E50A0000 */  swc1       $f10, 0x0($t0)
    /* 11BC68 8010CCB8 46027101 */  sub.s      $f4, $f14, $f2
    /* 11BC6C 8010CCBC E4660018 */  swc1       $f6, 0x18($v1)
    /* 11BC70 8010CCC0 C5060000 */  lwc1       $f6, 0x0($t0)
    /* 11BC74 8010CCC4 46008200 */  add.s      $f8, $f16, $f0
    /* 11BC78 8010CCC8 3C098016 */  lui        $t1, %hi(D_80159D2C)
    /* 11BC7C 8010CCCC 25299D2C */  addiu      $t1, $t1, %lo(D_80159D2C)
    /* 11BC80 8010CCD0 E4640014 */  swc1       $f4, 0x14($v1)
    /* 11BC84 8010CCD4 46029100 */  add.s      $f4, $f18, $f2
    /* 11BC88 8010CCD8 E448001C */  swc1       $f8, 0x1C($v0)
    /* 11BC8C 8010CCDC E5260000 */  swc1       $f6, 0x0($t1)
    /* 11BC90 8010CCE0 C5280000 */  lwc1       $f8, 0x0($t1)
    /* 11BC94 8010CCE4 3C0A8016 */  lui        $t2, %hi(D_80159D28)
    /* 11BC98 8010CCE8 254A9D28 */  addiu      $t2, $t2, %lo(D_80159D28)
    /* 11BC9C 8010CCEC E464001C */  swc1       $f4, 0x1C($v1)
    /* 11BCA0 8010CCF0 E5480000 */  swc1       $f8, 0x0($t2)
    /* 11BCA4 8010CCF4 C5440000 */  lwc1       $f4, 0x0($t2)
    /* 11BCA8 8010CCF8 3C018016 */  lui        $at, %hi(D_80159D24)
    /* 11BCAC 8010CCFC 24040002 */  addiu      $a0, $zero, 0x2
    /* 11BCB0 8010CD00 93A5001F */  lbu        $a1, 0x1F($sp)
    /* 11BCB4 8010CD04 0C039833 */  jal        func_800E60CC_F507C
    /* 11BCB8 8010CD08 E4249D24 */   swc1      $f4, %lo(D_80159D24)($at)
    /* 11BCBC 8010CD0C 14400006 */  bnez       $v0, .L8010CD28_11BCD8
    /* 11BCC0 8010CD10 3C038016 */   lui       $v1, %hi(D_80159D68)
    /* 11BCC4 8010CD14 8C639D68 */  lw         $v1, %lo(D_80159D68)($v1)
    /* 11BCC8 8010CD18 24060001 */  addiu      $a2, $zero, 0x1
    /* 11BCCC 8010CD1C 906D0016 */  lbu        $t5, 0x16($v1)
    /* 11BCD0 8010CD20 14CD0032 */  bne        $a2, $t5, .L8010CDEC_11BD9C
    /* 11BCD4 8010CD24 00000000 */   nop
  .L8010CD28_11BCD8:
    /* 11BCD8 8010CD28 8FAF0028 */  lw         $t7, 0x28($sp)
    /* 11BCDC 8010CD2C 240E0002 */  addiu      $t6, $zero, 0x2
    /* 11BCE0 8010CD30 3C018016 */  lui        $at, %hi(D_80159D70)
    /* 11BCE4 8010CD34 AC2E9D70 */  sw         $t6, %lo(D_80159D70)($at)
    /* 11BCE8 8010CD38 91E2001A */  lbu        $v0, 0x1A($t7)
    /* 11BCEC 8010CD3C 24060001 */  addiu      $a2, $zero, 0x1
    /* 11BCF0 8010CD40 3C038016 */  lui        $v1, %hi(D_80159D58)
    /* 11BCF4 8010CD44 14400005 */  bnez       $v0, .L8010CD5C_11BD0C
    /* 11BCF8 8010CD48 3C014160 */   lui       $at, (0x41600000 >> 16)
    /* 11BCFC 8010CD4C 44815000 */  mtc1       $at, $f10
    /* 11BD00 8010CD50 24639D58 */  addiu      $v1, $v1, %lo(D_80159D58)
    /* 11BD04 8010CD54 10000021 */  b          .L8010CDDC_11BD8C
    /* 11BD08 8010CD58 E46A0000 */   swc1      $f10, 0x0($v1)
  .L8010CD5C_11BD0C:
    /* 11BD0C 8010CD5C 3C188016 */  lui        $t8, %hi(D_80159D68)
    /* 11BD10 8010CD60 8F189D68 */  lw         $t8, %lo(D_80159D68)($t8)
    /* 11BD14 8010CD64 93190016 */  lbu        $t9, 0x16($t8)
    /* 11BD18 8010CD68 14D9000D */  bne        $a2, $t9, .L8010CDA0_11BD50
    /* 11BD1C 8010CD6C 000260C0 */   sll       $t4, $v0, 3
    /* 11BD20 8010CD70 01826023 */  subu       $t4, $t4, $v0
    /* 11BD24 8010CD74 000C6100 */  sll        $t4, $t4, 4
    /* 11BD28 8010CD78 3C0B8025 */  lui        $t3, %hi(D_80257A0C)
    /* 11BD2C 8010CD7C 016C5821 */  addu       $t3, $t3, $t4
    /* 11BD30 8010CD80 856B7A0C */  lh         $t3, %lo(D_80257A0C)($t3)
    /* 11BD34 8010CD84 3C038016 */  lui        $v1, %hi(D_80159D58)
    /* 11BD38 8010CD88 24639D58 */  addiu      $v1, $v1, %lo(D_80159D58)
    /* 11BD3C 8010CD8C 448B3000 */  mtc1       $t3, $f6
    /* 11BD40 8010CD90 00000000 */  nop
    /* 11BD44 8010CD94 46803220 */  cvt.s.w    $f8, $f6
    /* 11BD48 8010CD98 10000010 */  b          .L8010CDDC_11BD8C
    /* 11BD4C 8010CD9C E4680000 */   swc1      $f8, 0x0($v1)
  .L8010CDA0_11BD50:
    /* 11BD50 8010CDA0 000268C0 */  sll        $t5, $v0, 3
    /* 11BD54 8010CDA4 01A26823 */  subu       $t5, $t5, $v0
    /* 11BD58 8010CDA8 000D6900 */  sll        $t5, $t5, 4
    /* 11BD5C 8010CDAC 3C0E8025 */  lui        $t6, %hi(D_80257A0C)
    /* 11BD60 8010CDB0 01CD7021 */  addu       $t6, $t6, $t5
    /* 11BD64 8010CDB4 85CE7A0C */  lh         $t6, %lo(D_80257A0C)($t6)
    /* 11BD68 8010CDB8 3C018014 */  lui        $at, %hi(D_80144D00)
    /* 11BD6C 8010CDBC D4264D00 */  ldc1       $f6, %lo(D_80144D00)($at)
    /* 11BD70 8010CDC0 448E2000 */  mtc1       $t6, $f4
    /* 11BD74 8010CDC4 3C038016 */  lui        $v1, %hi(D_80159D58)
    /* 11BD78 8010CDC8 24639D58 */  addiu      $v1, $v1, %lo(D_80159D58)
    /* 11BD7C 8010CDCC 468022A1 */  cvt.d.w    $f10, $f4
    /* 11BD80 8010CDD0 46265202 */  mul.d      $f8, $f10, $f6
    /* 11BD84 8010CDD4 46204120 */  cvt.s.d    $f4, $f8
    /* 11BD88 8010CDD8 E4640000 */  swc1       $f4, 0x0($v1)
  .L8010CDDC_11BD8C:
    /* 11BD8C 8010CDDC C4600000 */  lwc1       $f0, 0x0($v1)
    /* 11BD90 8010CDE0 46000282 */  mul.s      $f10, $f0, $f0
    /* 11BD94 8010CDE4 10000061 */  b          .L8010CF6C_11BF1C
    /* 11BD98 8010CDE8 E46A0000 */   swc1      $f10, 0x0($v1)
  .L8010CDEC_11BD9C:
    /* 11BD9C 8010CDEC 3C058016 */  lui        $a1, %hi(D_80159D60)
    /* 11BDA0 8010CDF0 8CA59D60 */  lw         $a1, %lo(D_80159D60)($a1)
    /* 11BDA4 8010CDF4 84A20006 */  lh         $v0, 0x6($a1)
    /* 11BDA8 8010CDF8 28410064 */  slti       $at, $v0, 0x64
    /* 11BDAC 8010CDFC 10200002 */  beqz       $at, .L8010CE08_11BDB8
    /* 11BDB0 8010CE00 2841FF9D */   slti      $at, $v0, -0x63
    /* 11BDB4 8010CE04 10200009 */  beqz       $at, .L8010CE2C_11BDDC
  .L8010CE08_11BDB8:
    /* 11BDB8 8010CE08 24018000 */   addiu     $at, $zero, -0x8000
    /* 11BDBC 8010CE0C 00412021 */  addu       $a0, $v0, $at
    /* 11BDC0 8010CE10 00047C00 */  sll        $t7, $a0, 16
    /* 11BDC4 8010CE14 000FC403 */  sra        $t8, $t7, 16
    /* 11BDC8 8010CE18 2B010064 */  slti       $at, $t8, 0x64
    /* 11BDCC 8010CE1C 10200006 */  beqz       $at, .L8010CE38_11BDE8
    /* 11BDD0 8010CE20 2444C000 */   addiu     $a0, $v0, -0x4000
    /* 11BDD4 8010CE24 2B01FF9D */  slti       $at, $t8, -0x63
    /* 11BDD8 8010CE28 14200003 */  bnez       $at, .L8010CE38_11BDE8
  .L8010CE2C_11BDDC:
    /* 11BDDC 8010CE2C 3C018016 */   lui       $at, %hi(D_80159D70)
    /* 11BDE0 8010CE30 1000004E */  b          .L8010CF6C_11BF1C
    /* 11BDE4 8010CE34 AC269D70 */   sw        $a2, %lo(D_80159D70)($at)
  .L8010CE38_11BDE8:
    /* 11BDE8 8010CE38 0004CC00 */  sll        $t9, $a0, 16
    /* 11BDEC 8010CE3C 00196403 */  sra        $t4, $t9, 16
    /* 11BDF0 8010CE40 29810064 */  slti       $at, $t4, 0x64
    /* 11BDF4 8010CE44 10200003 */  beqz       $at, .L8010CE54_11BE04
    /* 11BDF8 8010CE48 24444000 */   addiu     $a0, $v0, 0x4000
    /* 11BDFC 8010CE4C 2981FF9D */  slti       $at, $t4, -0x63
    /* 11BE00 8010CE50 10200006 */  beqz       $at, .L8010CE6C_11BE1C
  .L8010CE54_11BE04:
    /* 11BE04 8010CE54 00045C00 */   sll       $t3, $a0, 16
    /* 11BE08 8010CE58 000B6C03 */  sra        $t5, $t3, 16
    /* 11BE0C 8010CE5C 29A10064 */  slti       $at, $t5, 0x64
    /* 11BE10 8010CE60 10200005 */  beqz       $at, .L8010CE78_11BE28
    /* 11BE14 8010CE64 29A1FF9D */   slti      $at, $t5, -0x63
    /* 11BE18 8010CE68 14200003 */  bnez       $at, .L8010CE78_11BE28
  .L8010CE6C_11BE1C:
    /* 11BE1C 8010CE6C 3C018016 */   lui       $at, %hi(D_80159D70)
    /* 11BE20 8010CE70 1000003E */  b          .L8010CF6C_11BF1C
    /* 11BE24 8010CE74 AC209D70 */   sw        $zero, %lo(D_80159D70)($at)
  .L8010CE78_11BE28:
    /* 11BE28 8010CE78 3C018016 */  lui        $at, %hi(D_80159D50)
    /* 11BE2C 8010CE7C C4269D50 */  lwc1       $f6, %lo(D_80159D50)($at)
    /* 11BE30 8010CE80 3C018016 */  lui        $at, %hi(D_80159D4C)
    /* 11BE34 8010CE84 C4289D4C */  lwc1       $f8, %lo(D_80159D4C)($at)
    /* 11BE38 8010CE88 3C018016 */  lui        $at, %hi(D_80159D24)
    /* 11BE3C 8010CE8C 46083103 */  div.s      $f4, $f6, $f8
    /* 11BE40 8010CE90 E4249D24 */  swc1       $f4, %lo(D_80159D24)($at)
    /* 11BE44 8010CE94 3C018016 */  lui        $at, %hi(D_80159D48)
    /* 11BE48 8010CE98 C42A9D48 */  lwc1       $f10, %lo(D_80159D48)($at)
    /* 11BE4C 8010CE9C 3C018016 */  lui        $at, %hi(D_80159D44)
    /* 11BE50 8010CEA0 C4269D44 */  lwc1       $f6, %lo(D_80159D44)($at)
    /* 11BE54 8010CEA4 3C018016 */  lui        $at, %hi(D_80159D28)
    /* 11BE58 8010CEA8 46065203 */  div.s      $f8, $f10, $f6
    /* 11BE5C 8010CEAC E4289D28 */  swc1       $f8, %lo(D_80159D28)($at)
    /* 11BE60 8010CEB0 846E0036 */  lh         $t6, 0x36($v1)
    /* 11BE64 8010CEB4 000E7843 */  sra        $t7, $t6, 1
    /* 11BE68 8010CEB8 448F2000 */  mtc1       $t7, $f4
    /* 11BE6C 8010CEBC 00000000 */  nop
    /* 11BE70 8010CEC0 468022A0 */  cvt.s.w    $f10, $f4
    /* 11BE74 8010CEC4 E7AA0024 */  swc1       $f10, 0x24($sp)
    /* 11BE78 8010CEC8 0C007660 */  jal        sins
    /* 11BE7C 8010CECC 94A40006 */   lhu       $a0, 0x6($a1)
    /* 11BE80 8010CED0 44823000 */  mtc1       $v0, $f6
    /* 11BE84 8010CED4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 11BE88 8010CED8 44815800 */  mtc1       $at, $f11
    /* 11BE8C 8010CEDC 46803220 */  cvt.s.w    $f8, $f6
    /* 11BE90 8010CEE0 44805000 */  mtc1       $zero, $f10
    /* 11BE94 8010CEE4 3C188016 */  lui        $t8, %hi(D_80159D68)
    /* 11BE98 8010CEE8 8F189D68 */  lw         $t8, %lo(D_80159D68)($t8)
    /* 11BE9C 8010CEEC 3C018016 */  lui        $at, %hi(D_80159D2C)
    /* 11BEA0 8010CEF0 3C0B8016 */  lui        $t3, %hi(D_80159D60)
    /* 11BEA4 8010CEF4 46004121 */  cvt.d.s    $f4, $f8
    /* 11BEA8 8010CEF8 8D6B9D60 */  lw         $t3, %lo(D_80159D60)($t3)
    /* 11BEAC 8010CEFC 462A2183 */  div.d      $f6, $f4, $f10
    /* 11BEB0 8010CF00 C7A40024 */  lwc1       $f4, 0x24($sp)
    /* 11BEB4 8010CF04 46203220 */  cvt.s.d    $f8, $f6
    /* 11BEB8 8010CF08 46082283 */  div.s      $f10, $f4, $f8
    /* 11BEBC 8010CF0C E42A9D2C */  swc1       $f10, %lo(D_80159D2C)($at)
    /* 11BEC0 8010CF10 87190034 */  lh         $t9, 0x34($t8)
    /* 11BEC4 8010CF14 00196043 */  sra        $t4, $t9, 1
    /* 11BEC8 8010CF18 448C3000 */  mtc1       $t4, $f6
    /* 11BECC 8010CF1C 00000000 */  nop
    /* 11BED0 8010CF20 46803120 */  cvt.s.w    $f4, $f6
    /* 11BED4 8010CF24 E7A40024 */  swc1       $f4, 0x24($sp)
    /* 11BED8 8010CF28 0C007654 */  jal        coss
    /* 11BEDC 8010CF2C 95640006 */   lhu       $a0, 0x6($t3)
    /* 11BEE0 8010CF30 44824000 */  mtc1       $v0, $f8
    /* 11BEE4 8010CF34 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 11BEE8 8010CF38 44812800 */  mtc1       $at, $f5
    /* 11BEEC 8010CF3C 468042A0 */  cvt.s.w    $f10, $f8
    /* 11BEF0 8010CF40 44802000 */  mtc1       $zero, $f4
    /* 11BEF4 8010CF44 3C018016 */  lui        $at, %hi(D_80159D30)
    /* 11BEF8 8010CF48 240D0003 */  addiu      $t5, $zero, 0x3
    /* 11BEFC 8010CF4C 460051A1 */  cvt.d.s    $f6, $f10
    /* 11BF00 8010CF50 46243203 */  div.d      $f8, $f6, $f4
    /* 11BF04 8010CF54 C7A60024 */  lwc1       $f6, 0x24($sp)
    /* 11BF08 8010CF58 462042A0 */  cvt.s.d    $f10, $f8
    /* 11BF0C 8010CF5C 460A3103 */  div.s      $f4, $f6, $f10
    /* 11BF10 8010CF60 E4249D30 */  swc1       $f4, %lo(D_80159D30)($at)
    /* 11BF14 8010CF64 3C018016 */  lui        $at, %hi(D_80159D70)
    /* 11BF18 8010CF68 AC2D9D70 */  sw         $t5, %lo(D_80159D70)($at)
  .L8010CF6C_11BF1C:
    /* 11BF1C 8010CF6C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8010CF70_11BF20:
    /* 11BF20 8010CF70 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 11BF24 8010CF74 03E00008 */  jr         $ra
    /* 11BF28 8010CF78 00000000 */   nop
endlabel func_8010CA38_11B9E8
