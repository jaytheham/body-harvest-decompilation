nonmatching func_8010BA04_11A9B4, 0x748

glabel func_8010BA04_11A9B4
    /* 11A9B4 8010BA04 3C078005 */  lui        $a3, %hi(D_80052B34)
    /* 11A9B8 8010BA08 24E72B34 */  addiu      $a3, $a3, %lo(D_80052B34)
    /* 11A9BC 8010BA0C 8CE60000 */  lw         $a2, 0x0($a3)
    /* 11A9C0 8010BA10 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 11A9C4 8010BA14 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 11A9C8 8010BA18 90C2001A */  lbu        $v0, 0x1A($a2)
    /* 11A9CC 8010BA1C 3C198016 */  lui        $t9, %hi(D_8015930E)
    /* 11A9D0 8010BA20 8739930E */  lh         $t9, %lo(D_8015930E)($t9)
    /* 11A9D4 8010BA24 000270C0 */  sll        $t6, $v0, 3
    /* 11A9D8 8010BA28 3C0F8025 */  lui        $t7, %hi(vehicleSpecs)
    /* 11A9DC 8010BA2C 01C27023 */  subu       $t6, $t6, $v0
    /* 11A9E0 8010BA30 000E7100 */  sll        $t6, $t6, 4
    /* 11A9E4 8010BA34 25EF7A00 */  addiu      $t7, $t7, %lo(vehicleSpecs)
    /* 11A9E8 8010BA38 01CFC021 */  addu       $t8, $t6, $t7
    /* 11A9EC 8010BA3C 1720002C */  bnez       $t9, .L8010BAF0_11AAA0
    /* 11A9F0 8010BA40 AFB80024 */   sw        $t8, 0x24($sp)
    /* 11A9F4 8010BA44 3C098004 */  lui        $t1, %hi(currentLevel)
    /* 11A9F8 8010BA48 8D297F90 */  lw         $t1, %lo(currentLevel)($t1)
    /* 11A9FC 8010BA4C 24030001 */  addiu      $v1, $zero, 0x1
    /* 11AA00 8010BA50 24010003 */  addiu      $at, $zero, 0x3
    /* 11AA04 8010BA54 54690027 */  bnel       $v1, $t1, .L8010BAF4_11AAA4
    /* 11AA08 8010BA58 44801000 */   mtc1      $zero, $f2
    /* 11AA0C 8010BA5C 54410025 */  bnel       $v0, $at, .L8010BAF4_11AAA4
    /* 11AA10 8010BA60 44801000 */   mtc1      $zero, $f2
    /* 11AA14 8010BA64 84CA0000 */  lh         $t2, 0x0($a2)
    /* 11AA18 8010BA68 29413601 */  slti       $at, $t2, 0x3601
    /* 11AA1C 8010BA6C 54200006 */  bnel       $at, $zero, .L8010BA88_11AA38
    /* 11AA20 8010BA70 94CC0020 */   lhu       $t4, 0x20($a2)
    /* 11AA24 8010BA74 84CB0004 */  lh         $t3, 0x4($a2)
    /* 11AA28 8010BA78 2961AC00 */  slti       $at, $t3, -0x5400
    /* 11AA2C 8010BA7C 5420001D */  bnel       $at, $zero, .L8010BAF4_11AAA4
    /* 11AA30 8010BA80 44801000 */   mtc1      $zero, $f2
    /* 11AA34 8010BA84 94CC0020 */  lhu        $t4, 0x20($a2)
  .L8010BA88_11AA38:
    /* 11AA38 8010BA88 240E0020 */  addiu      $t6, $zero, 0x20
    /* 11AA3C 8010BA8C 24090003 */  addiu      $t1, $zero, 0x3
    /* 11AA40 8010BA90 318D0002 */  andi       $t5, $t4, 0x2
    /* 11AA44 8010BA94 15A00011 */  bnez       $t5, .L8010BADC_11AA8C
    /* 11AA48 8010BA98 3C018005 */   lui       $at, %hi(D_8004DC58)
    /* 11AA4C 8010BA9C 3C0F8005 */  lui        $t7, %hi(vehicleInstances)
    /* 11AA50 8010BAA0 25EFDCD0 */  addiu      $t7, $t7, %lo(vehicleInstances)
    /* 11AA54 8010BAA4 00CFC023 */  subu       $t8, $a2, $t7
    /* 11AA58 8010BAA8 2401005C */  addiu      $at, $zero, 0x5C
    /* 11AA5C 8010BAAC 0301001A */  div        $zero, $t8, $at
    /* 11AA60 8010BAB0 0000C812 */  mflo       $t9
    /* 11AA64 8010BAB4 3C018016 */  lui        $at, %hi(D_80158BD0)
    /* 11AA68 8010BAB8 00390821 */  addu       $at, $at, $t9
    /* 11AA6C 8010BABC 3C048005 */  lui        $a0, %hi(D_80052B2C)
    /* 11AA70 8010BAC0 A02E8BD0 */  sb         $t6, %lo(D_80158BD0)($at)
    /* 11AA74 8010BAC4 8C842B2C */  lw         $a0, %lo(D_80052B2C)($a0)
    /* 11AA78 8010BAC8 0C03F7AA */  jal        func_800FDEA8_10CE58
    /* 11AA7C 8010BACC 00002825 */   or        $a1, $zero, $zero
    /* 11AA80 8010BAD0 3C078005 */  lui        $a3, %hi(D_80052B34)
    /* 11AA84 8010BAD4 10000006 */  b          .L8010BAF0_11AAA0
    /* 11AA88 8010BAD8 24E72B34 */   addiu     $a3, $a3, %lo(D_80052B34)
  .L8010BADC_11AA8C:
    /* 11AA8C 8010BADC A429DC58 */  sh         $t1, %lo(D_8004DC58)($at)
    /* 11AA90 8010BAE0 3C018016 */  lui        $at, %hi(D_8015930E)
    /* 11AA94 8010BAE4 A423930E */  sh         $v1, %lo(D_8015930E)($at)
    /* 11AA98 8010BAE8 3C018016 */  lui        $at, %hi(D_80159268)
    /* 11AA9C 8010BAEC AC239268 */  sw         $v1, %lo(D_80159268)($at)
  .L8010BAF0_11AAA0:
    /* 11AAA0 8010BAF0 44801000 */  mtc1       $zero, $f2
  .L8010BAF4_11AAA4:
    /* 11AAA4 8010BAF4 3C0A8016 */  lui        $t2, %hi(D_80159320)
    /* 11AAA8 8010BAF8 8D4A9320 */  lw         $t2, %lo(D_80159320)($t2)
    /* 11AAAC 8010BAFC 3C018016 */  lui        $at, %hi(D_80159238)
    /* 11AAB0 8010BB00 E4229238 */  swc1       $f2, %lo(D_80159238)($at)
    /* 11AAB4 8010BB04 3C018016 */  lui        $at, %hi(D_8015923C)
    /* 11AAB8 8010BB08 000A5A00 */  sll        $t3, $t2, 8
    /* 11AABC 8010BB0C 05610034 */  bgez       $t3, .L8010BBE0_11AB90
    /* 11AAC0 8010BB10 E422923C */   swc1      $f2, %lo(D_8015923C)($at)
    /* 11AAC4 8010BB14 0C042658 */  jal        func_80109960_118910
    /* 11AAC8 8010BB18 00000000 */   nop
    /* 11AACC 8010BB1C 3C048016 */  lui        $a0, %hi(D_80159250)
    /* 11AAD0 8010BB20 AFA2001C */  sw         $v0, 0x1C($sp)
    /* 11AAD4 8010BB24 0C007660 */  jal        sins
    /* 11AAD8 8010BB28 94849250 */   lhu       $a0, %lo(D_80159250)($a0)
    /* 11AADC 8010BB2C 44822000 */  mtc1       $v0, $f4
    /* 11AAE0 8010BB30 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 11AAE4 8010BB34 44815800 */  mtc1       $at, $f11
    /* 11AAE8 8010BB38 468021A0 */  cvt.s.w    $f6, $f4
    /* 11AAEC 8010BB3C 44805000 */  mtc1       $zero, $f10
    /* 11AAF0 8010BB40 3C078005 */  lui        $a3, %hi(D_80052B34)
    /* 11AAF4 8010BB44 24E72B34 */  addiu      $a3, $a3, %lo(D_80052B34)
    /* 11AAF8 8010BB48 8CE60000 */  lw         $a2, 0x0($a3)
    /* 11AAFC 8010BB4C 8FAC001C */  lw         $t4, 0x1C($sp)
    /* 11AB00 8010BB50 46003221 */  cvt.d.s    $f8, $f6
    /* 11AB04 8010BB54 C4D20054 */  lwc1       $f18, 0x54($a2)
    /* 11AB08 8010BB58 462A4403 */  div.d      $f16, $f8, $f10
    /* 11AB0C 8010BB5C C5840054 */  lwc1       $f4, 0x54($t4)
    /* 11AB10 8010BB60 3C018014 */  lui        $at, %hi(D_80144CD8)
    /* 11AB14 8010BB64 44801000 */  mtc1       $zero, $f2
    /* 11AB18 8010BB68 46049181 */  sub.s      $f6, $f18, $f4
    /* 11AB1C 8010BB6C 46208020 */  cvt.s.d    $f0, $f16
    /* 11AB20 8010BB70 D4304CD8 */  ldc1       $f16, %lo(D_80144CD8)($at)
    /* 11AB24 8010BB74 3C018016 */  lui        $at, %hi(D_80159238)
    /* 11AB28 8010BB78 46003202 */  mul.s      $f8, $f6, $f0
    /* 11AB2C 8010BB7C 460042A1 */  cvt.d.s    $f10, $f8
    /* 11AB30 8010BB80 46305482 */  mul.d      $f18, $f10, $f16
    /* 11AB34 8010BB84 46209120 */  cvt.s.d    $f4, $f18
    /* 11AB38 8010BB88 E4249238 */  swc1       $f4, %lo(D_80159238)($at)
    /* 11AB3C 8010BB8C 3C0143D1 */  lui        $at, (0x43D10000 >> 16)
    /* 11AB40 8010BB90 44813000 */  mtc1       $at, $f6
    /* 11AB44 8010BB94 3C018016 */  lui        $at, %hi(D_8015923C)
    /* 11AB48 8010BB98 46060202 */  mul.s      $f8, $f0, $f6
    /* 11AB4C 8010BB9C E428923C */  swc1       $f8, %lo(D_8015923C)($at)
    /* 11AB50 8010BBA0 E4C20030 */  swc1       $f2, 0x30($a2)
    /* 11AB54 8010BBA4 8CED0000 */  lw         $t5, 0x0($a3)
    /* 11AB58 8010BBA8 3C018016 */  lui        $at, %hi(D_8015EA38)
    /* 11AB5C 8010BBAC E5A20034 */  swc1       $f2, 0x34($t5)
    /* 11AB60 8010BBB0 8CEF0000 */  lw         $t7, 0x0($a3)
    /* 11AB64 8010BBB4 E5E20038 */  swc1       $f2, 0x38($t7)
    /* 11AB68 8010BBB8 C42AEA38 */  lwc1       $f10, %lo(D_8015EA38)($at)
    /* 11AB6C 8010BBBC 3C018016 */  lui        $at, %hi(D_8015EA34)
    /* 11AB70 8010BBC0 C430EA34 */  lwc1       $f16, %lo(D_8015EA34)($at)
    /* 11AB74 8010BBC4 8CE40000 */  lw         $a0, 0x0($a3)
    /* 11AB78 8010BBC8 46105481 */  sub.s      $f18, $f10, $f16
    /* 11AB7C 8010BBCC 44059000 */  mfc1       $a1, $f18
    /* 11AB80 8010BBD0 0C03ED03 */  jal        func_800FB40C_10A3BC
    /* 11AB84 8010BBD4 00000000 */   nop
    /* 11AB88 8010BBD8 3C078005 */  lui        $a3, %hi(D_80052B34)
    /* 11AB8C 8010BBDC 24E72B34 */  addiu      $a3, $a3, %lo(D_80052B34)
  .L8010BBE0_11AB90:
    /* 11AB90 8010BBE0 8CE60000 */  lw         $a2, 0x0($a3)
    /* 11AB94 8010BBE4 94D80020 */  lhu        $t8, 0x20($a2)
    /* 11AB98 8010BBE8 330E0002 */  andi       $t6, $t8, 0x2
    /* 11AB9C 8010BBEC 15C0000D */  bnez       $t6, .L8010BC24_11ABD4
    /* 11ABA0 8010BBF0 3C198016 */   lui       $t9, %hi(D_80159320)
    /* 11ABA4 8010BBF4 8F399320 */  lw         $t9, %lo(D_80159320)($t9)
    /* 11ABA8 8010BBF8 3C028016 */  lui        $v0, %hi(D_80159268)
    /* 11ABAC 8010BBFC 24429268 */  addiu      $v0, $v0, %lo(D_80159268)
    /* 11ABB0 8010BC00 00194A40 */  sll        $t1, $t9, 9
    /* 11ABB4 8010BC04 05230008 */  bgezl      $t1, .L8010BC28_11ABD8
    /* 11ABB8 8010BC08 90C2001A */   lbu       $v0, 0x1A($a2)
    /* 11ABBC 8010BC0C 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 11ABC0 8010BC10 3C018016 */  lui        $at, %hi(D_8015930E)
    /* 11ABC4 8010BC14 51400004 */  beql       $t2, $zero, .L8010BC28_11ABD8
    /* 11ABC8 8010BC18 90C2001A */   lbu       $v0, 0x1A($a2)
    /* 11ABCC 8010BC1C A420930E */  sh         $zero, %lo(D_8015930E)($at)
    /* 11ABD0 8010BC20 AC400000 */  sw         $zero, 0x0($v0)
  .L8010BC24_11ABD4:
    /* 11ABD4 8010BC24 90C2001A */  lbu        $v0, 0x1A($a2)
  .L8010BC28_11ABD8:
    /* 11ABD8 8010BC28 3C0C8022 */  lui        $t4, %hi(D_80222A70)
    /* 11ABDC 8010BC2C 1040006B */  beqz       $v0, .L8010BDDC_11AD8C
    /* 11ABE0 8010BC30 00000000 */   nop
    /* 11ABE4 8010BC34 84CB0002 */  lh         $t3, 0x2($a2)
    /* 11ABE8 8010BC38 8D8C2A70 */  lw         $t4, %lo(D_80222A70)($t4)
    /* 11ABEC 8010BC3C 3C0D8016 */  lui        $t5, %hi(D_801591AC)
    /* 11ABF0 8010BC40 016C082A */  slt        $at, $t3, $t4
    /* 11ABF4 8010BC44 14200065 */  bnez       $at, .L8010BDDC_11AD8C
    /* 11ABF8 8010BC48 00000000 */   nop
    /* 11ABFC 8010BC4C 8DAD91AC */  lw         $t5, %lo(D_801591AC)($t5)
    /* 11AC00 8010BC50 24010006 */  addiu      $at, $zero, 0x6
    /* 11AC04 8010BC54 11A10061 */  beq        $t5, $at, .L8010BDDC_11AD8C
    /* 11AC08 8010BC58 00000000 */   nop
    /* 11AC0C 8010BC5C 0C03EC47 */  jal        func_800FB11C_10A0CC
    /* 11AC10 8010BC60 00C02025 */   or        $a0, $a2, $zero
    /* 11AC14 8010BC64 444FF800 */  cfc1       $t7, $31
    /* 11AC18 8010BC68 24040001 */  addiu      $a0, $zero, 0x1
    /* 11AC1C 8010BC6C 44C4F800 */  ctc1       $a0, $31
    /* 11AC20 8010BC70 3C078005 */  lui        $a3, %hi(D_80052B34)
    /* 11AC24 8010BC74 24E72B34 */  addiu      $a3, $a3, %lo(D_80052B34)
    /* 11AC28 8010BC78 46000124 */  cvt.w.s    $f4, $f0
    /* 11AC2C 8010BC7C 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* 11AC30 8010BC80 4444F800 */  cfc1       $a0, $31
    /* 11AC34 8010BC84 00000000 */  nop
    /* 11AC38 8010BC88 30840078 */  andi       $a0, $a0, 0x78
    /* 11AC3C 8010BC8C 50800013 */  beql       $a0, $zero, .L8010BCDC_11AC8C
    /* 11AC40 8010BC90 44042000 */   mfc1      $a0, $f4
    /* 11AC44 8010BC94 44812000 */  mtc1       $at, $f4
    /* 11AC48 8010BC98 24040001 */  addiu      $a0, $zero, 0x1
    /* 11AC4C 8010BC9C 46040101 */  sub.s      $f4, $f0, $f4
    /* 11AC50 8010BCA0 44C4F800 */  ctc1       $a0, $31
    /* 11AC54 8010BCA4 00000000 */  nop
    /* 11AC58 8010BCA8 46002124 */  cvt.w.s    $f4, $f4
    /* 11AC5C 8010BCAC 4444F800 */  cfc1       $a0, $31
    /* 11AC60 8010BCB0 00000000 */  nop
    /* 11AC64 8010BCB4 30840078 */  andi       $a0, $a0, 0x78
    /* 11AC68 8010BCB8 14800005 */  bnez       $a0, .L8010BCD0_11AC80
    /* 11AC6C 8010BCBC 00000000 */   nop
    /* 11AC70 8010BCC0 44042000 */  mfc1       $a0, $f4
    /* 11AC74 8010BCC4 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 11AC78 8010BCC8 10000007 */  b          .L8010BCE8_11AC98
    /* 11AC7C 8010BCCC 00812025 */   or        $a0, $a0, $at
  .L8010BCD0_11AC80:
    /* 11AC80 8010BCD0 10000005 */  b          .L8010BCE8_11AC98
    /* 11AC84 8010BCD4 2404FFFF */   addiu     $a0, $zero, -0x1
    /* 11AC88 8010BCD8 44042000 */  mfc1       $a0, $f4
  .L8010BCDC_11AC8C:
    /* 11AC8C 8010BCDC 00000000 */  nop
    /* 11AC90 8010BCE0 0480FFFB */  bltz       $a0, .L8010BCD0_11AC80
    /* 11AC94 8010BCE4 00000000 */   nop
  .L8010BCE8_11AC98:
    /* 11AC98 8010BCE8 8CEE0000 */  lw         $t6, 0x0($a3)
    /* 11AC9C 8010BCEC 44CFF800 */  ctc1       $t7, $31
    /* 11ACA0 8010BCF0 8FA90024 */  lw         $t1, 0x24($sp)
    /* 11ACA4 8010BCF4 85D9001C */  lh         $t9, 0x1C($t6)
    /* 11ACA8 8010BCF8 3C01437F */  lui        $at, (0x437F0000 >> 16)
    /* 11ACAC 8010BCFC 952A003A */  lhu        $t2, 0x3A($t1)
    /* 11ACB0 8010BD00 44993000 */  mtc1       $t9, $f6
    /* 11ACB4 8010BD04 44815000 */  mtc1       $at, $f10
    /* 11ACB8 8010BD08 448A9000 */  mtc1       $t2, $f18
    /* 11ACBC 8010BD0C 46803220 */  cvt.s.w    $f8, $f6
    /* 11ACC0 8010BD10 3098FFFF */  andi       $t8, $a0, 0xFFFF
    /* 11ACC4 8010BD14 03002025 */  or         $a0, $t8, $zero
    /* 11ACC8 8010BD18 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* 11ACCC 8010BD1C 46809120 */  cvt.s.w    $f4, $f18
    /* 11ACD0 8010BD20 460A4402 */  mul.s      $f16, $f8, $f10
    /* 11ACD4 8010BD24 05430005 */  bgezl      $t2, .L8010BD3C_11ACEC
    /* 11ACD8 8010BD28 46048203 */   div.s     $f8, $f16, $f4
    /* 11ACDC 8010BD2C 44813000 */  mtc1       $at, $f6
    /* 11ACE0 8010BD30 00000000 */  nop
    /* 11ACE4 8010BD34 46062100 */  add.s      $f4, $f4, $f6
    /* 11ACE8 8010BD38 46048203 */  div.s      $f8, $f16, $f4
  .L8010BD3C_11ACEC:
    /* 11ACEC 8010BD3C 24050001 */  addiu      $a1, $zero, 0x1
    /* 11ACF0 8010BD40 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* 11ACF4 8010BD44 444BF800 */  cfc1       $t3, $31
    /* 11ACF8 8010BD48 44C5F800 */  ctc1       $a1, $31
    /* 11ACFC 8010BD4C 00000000 */  nop
    /* 11AD00 8010BD50 460042A4 */  cvt.w.s    $f10, $f8
    /* 11AD04 8010BD54 4445F800 */  cfc1       $a1, $31
    /* 11AD08 8010BD58 00000000 */  nop
    /* 11AD0C 8010BD5C 30A50078 */  andi       $a1, $a1, 0x78
    /* 11AD10 8010BD60 50A00013 */  beql       $a1, $zero, .L8010BDB0_11AD60
    /* 11AD14 8010BD64 44055000 */   mfc1      $a1, $f10
    /* 11AD18 8010BD68 44815000 */  mtc1       $at, $f10
    /* 11AD1C 8010BD6C 24050001 */  addiu      $a1, $zero, 0x1
    /* 11AD20 8010BD70 460A4281 */  sub.s      $f10, $f8, $f10
    /* 11AD24 8010BD74 44C5F800 */  ctc1       $a1, $31
    /* 11AD28 8010BD78 00000000 */  nop
    /* 11AD2C 8010BD7C 460052A4 */  cvt.w.s    $f10, $f10
    /* 11AD30 8010BD80 4445F800 */  cfc1       $a1, $31
    /* 11AD34 8010BD84 00000000 */  nop
    /* 11AD38 8010BD88 30A50078 */  andi       $a1, $a1, 0x78
    /* 11AD3C 8010BD8C 14A00005 */  bnez       $a1, .L8010BDA4_11AD54
    /* 11AD40 8010BD90 00000000 */   nop
    /* 11AD44 8010BD94 44055000 */  mfc1       $a1, $f10
    /* 11AD48 8010BD98 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 11AD4C 8010BD9C 10000007 */  b          .L8010BDBC_11AD6C
    /* 11AD50 8010BDA0 00A12825 */   or        $a1, $a1, $at
  .L8010BDA4_11AD54:
    /* 11AD54 8010BDA4 10000005 */  b          .L8010BDBC_11AD6C
    /* 11AD58 8010BDA8 2405FFFF */   addiu     $a1, $zero, -0x1
    /* 11AD5C 8010BDAC 44055000 */  mfc1       $a1, $f10
  .L8010BDB0_11AD60:
    /* 11AD60 8010BDB0 00000000 */  nop
    /* 11AD64 8010BDB4 04A0FFFB */  bltz       $a1, .L8010BDA4_11AD54
    /* 11AD68 8010BDB8 00000000 */   nop
  .L8010BDBC_11AD6C:
    /* 11AD6C 8010BDBC 44CBF800 */  ctc1       $t3, $31
    /* 11AD70 8010BDC0 30AC00FF */  andi       $t4, $a1, 0xFF
    /* 11AD74 8010BDC4 0C038752 */  jal        func_800E1D48_F0CF8
    /* 11AD78 8010BDC8 01802825 */   or        $a1, $t4, $zero
    /* 11AD7C 8010BDCC 3C078005 */  lui        $a3, %hi(D_80052B34)
    /* 11AD80 8010BDD0 24E72B34 */  addiu      $a3, $a3, %lo(D_80052B34)
    /* 11AD84 8010BDD4 8CE60000 */  lw         $a2, 0x0($a3)
    /* 11AD88 8010BDD8 90C2001A */  lbu        $v0, 0x1A($a2)
  .L8010BDDC_11AD8C:
    /* 11AD8C 8010BDDC 1040004F */  beqz       $v0, .L8010BF1C_11AECC
    /* 11AD90 8010BDE0 00000000 */   nop
    /* 11AD94 8010BDE4 94CD0020 */  lhu        $t5, 0x20($a2)
    /* 11AD98 8010BDE8 31AF0002 */  andi       $t7, $t5, 0x2
    /* 11AD9C 8010BDEC 15E0004B */  bnez       $t7, .L8010BF1C_11AECC
    /* 11ADA0 8010BDF0 00000000 */   nop
    /* 11ADA4 8010BDF4 84C40006 */  lh         $a0, 0x6($a2)
    /* 11ADA8 8010BDF8 0C03E714 */  jal        func_800F9C50_108C00
    /* 11ADAC 8010BDFC 84C5000E */   lh        $a1, 0xE($a2)
    /* 11ADB0 8010BE00 3C078005 */  lui        $a3, %hi(D_80052B34)
    /* 11ADB4 8010BE04 28414000 */  slti       $at, $v0, 0x4000
    /* 11ADB8 8010BE08 14200044 */  bnez       $at, .L8010BF1C_11AECC
    /* 11ADBC 8010BE0C 24E72B34 */   addiu     $a3, $a3, %lo(D_80052B34)
    /* 11ADC0 8010BE10 8CE60000 */  lw         $a2, 0x0($a3)
    /* 11ADC4 8010BE14 34018000 */  ori        $at, $zero, 0x8000
    /* 11ADC8 8010BE18 3C0F8025 */  lui        $t7, %hi(D_80257A42)
    /* 11ADCC 8010BE1C 84D8000E */  lh         $t8, 0xE($a2)
    /* 11ADD0 8010BE20 03017021 */  addu       $t6, $t8, $at
    /* 11ADD4 8010BE24 A4CE000E */  sh         $t6, 0xE($a2)
    /* 11ADD8 8010BE28 8CE60000 */  lw         $a2, 0x0($a3)
    /* 11ADDC 8010BE2C 84D90012 */  lh         $t9, 0x12($a2)
    /* 11ADE0 8010BE30 00194823 */  negu       $t1, $t9
    /* 11ADE4 8010BE34 A4C90012 */  sh         $t1, 0x12($a2)
    /* 11ADE8 8010BE38 8CE60000 */  lw         $a2, 0x0($a3)
    /* 11ADEC 8010BE3C 84CA0010 */  lh         $t2, 0x10($a2)
    /* 11ADF0 8010BE40 000A5823 */  negu       $t3, $t2
    /* 11ADF4 8010BE44 A4CB0010 */  sh         $t3, 0x10($a2)
    /* 11ADF8 8010BE48 8CE60000 */  lw         $a2, 0x0($a3)
    /* 11ADFC 8010BE4C 90CC001A */  lbu        $t4, 0x1A($a2)
    /* 11AE00 8010BE50 84C20012 */  lh         $v0, 0x12($a2)
    /* 11AE04 8010BE54 000C68C0 */  sll        $t5, $t4, 3
    /* 11AE08 8010BE58 01AC6823 */  subu       $t5, $t5, $t4
    /* 11AE0C 8010BE5C 000D6900 */  sll        $t5, $t5, 4
    /* 11AE10 8010BE60 01ED7821 */  addu       $t7, $t7, $t5
    /* 11AE14 8010BE64 85EF7A42 */  lh         $t7, %lo(D_80257A42)($t7)
    /* 11AE18 8010BE68 00027043 */  sra        $t6, $v0, 1
    /* 11AE1C 8010BE6C 000EC823 */  negu       $t9, $t6
    /* 11AE20 8010BE70 000FC040 */  sll        $t8, $t7, 1
    /* 11AE24 8010BE74 0058082A */  slt        $at, $v0, $t8
    /* 11AE28 8010BE78 10200028 */  beqz       $at, .L8010BF1C_11AECC
    /* 11AE2C 8010BE7C 00000000 */   nop
    /* 11AE30 8010BE80 44999000 */  mtc1       $t9, $f18
    /* 11AE34 8010BE84 00000000 */  nop
    /* 11AE38 8010BE88 468091A0 */  cvt.s.w    $f6, $f18
    /* 11AE3C 8010BE8C E4C60034 */  swc1       $f6, 0x34($a2)
    /* 11AE40 8010BE90 8CE60000 */  lw         $a2, 0x0($a3)
    /* 11AE44 8010BE94 84C90012 */  lh         $t1, 0x12($a2)
    /* 11AE48 8010BE98 00095043 */  sra        $t2, $t1, 1
    /* 11AE4C 8010BE9C A4CA0012 */  sh         $t2, 0x12($a2)
    /* 11AE50 8010BEA0 8CE60000 */  lw         $a2, 0x0($a3)
    /* 11AE54 8010BEA4 94CB0020 */  lhu        $t3, 0x20($a2)
    /* 11AE58 8010BEA8 356C0002 */  ori        $t4, $t3, 0x2
    /* 11AE5C 8010BEAC 0C000E38 */  jal        func_800038E0_44E0
    /* 11AE60 8010BEB0 A4CC0020 */   sh        $t4, 0x20($a2)
    /* 11AE64 8010BEB4 3C078005 */  lui        $a3, %hi(D_80052B34)
    /* 11AE68 8010BEB8 24E72B34 */  addiu      $a3, $a3, %lo(D_80052B34)
    /* 11AE6C 8010BEBC 8CE60000 */  lw         $a2, 0x0($a3)
    /* 11AE70 8010BEC0 304F03FF */  andi       $t7, $v0, 0x3FF
    /* 11AE74 8010BEC4 84CD0024 */  lh         $t5, 0x24($a2)
    /* 11AE78 8010BEC8 01AFC021 */  addu       $t8, $t5, $t7
    /* 11AE7C 8010BECC 270EFE01 */  addiu      $t6, $t8, -0x1FF
    /* 11AE80 8010BED0 0C000E38 */  jal        func_800038E0_44E0
    /* 11AE84 8010BED4 A4CE0024 */   sh        $t6, 0x24($a2)
    /* 11AE88 8010BED8 3C078005 */  lui        $a3, %hi(D_80052B34)
    /* 11AE8C 8010BEDC 24E72B34 */  addiu      $a3, $a3, %lo(D_80052B34)
    /* 11AE90 8010BEE0 8CE60000 */  lw         $a2, 0x0($a3)
    /* 11AE94 8010BEE4 304903FF */  andi       $t1, $v0, 0x3FF
    /* 11AE98 8010BEE8 84D90022 */  lh         $t9, 0x22($a2)
    /* 11AE9C 8010BEEC 03295021 */  addu       $t2, $t9, $t1
    /* 11AEA0 8010BEF0 254BFE01 */  addiu      $t3, $t2, -0x1FF
    /* 11AEA4 8010BEF4 0C000E38 */  jal        func_800038E0_44E0
    /* 11AEA8 8010BEF8 A4CB0022 */   sh        $t3, 0x22($a2)
    /* 11AEAC 8010BEFC 3C078005 */  lui        $a3, %hi(D_80052B34)
    /* 11AEB0 8010BF00 24E72B34 */  addiu      $a3, $a3, %lo(D_80052B34)
    /* 11AEB4 8010BF04 8CE60000 */  lw         $a2, 0x0($a3)
    /* 11AEB8 8010BF08 304D03FF */  andi       $t5, $v0, 0x3FF
    /* 11AEBC 8010BF0C 84CC0026 */  lh         $t4, 0x26($a2)
    /* 11AEC0 8010BF10 018D7821 */  addu       $t7, $t4, $t5
    /* 11AEC4 8010BF14 25F8FE01 */  addiu      $t8, $t7, -0x1FF
    /* 11AEC8 8010BF18 A4D80026 */  sh         $t8, 0x26($a2)
  .L8010BF1C_11AECC:
    /* 11AECC 8010BF1C 3C038016 */  lui        $v1, %hi(D_801591C0)
    /* 11AED0 8010BF20 246391C0 */  addiu      $v1, $v1, %lo(D_801591C0)
    /* 11AED4 8010BF24 84620000 */  lh         $v0, 0x0($v1)
    /* 11AED8 8010BF28 3C088005 */  lui        $t0, %hi(D_80050AD4)
    /* 11AEDC 8010BF2C 25080AD4 */  addiu      $t0, $t0, %lo(D_80050AD4)
    /* 11AEE0 8010BF30 28410004 */  slti       $at, $v0, 0x4
    /* 11AEE4 8010BF34 10200004 */  beqz       $at, .L8010BF48_11AEF8
    /* 11AEE8 8010BF38 0002C883 */   sra       $t9, $v0, 2
    /* 11AEEC 8010BF3C 244EFFFF */  addiu      $t6, $v0, -0x1
    /* 11AEF0 8010BF40 10000003 */  b          .L8010BF50_11AF00
    /* 11AEF4 8010BF44 A46E0000 */   sh        $t6, 0x0($v1)
  .L8010BF48_11AEF8:
    /* 11AEF8 8010BF48 00594823 */  subu       $t1, $v0, $t9
    /* 11AEFC 8010BF4C A4690000 */  sh         $t1, 0x0($v1)
  .L8010BF50_11AF00:
    /* 11AF00 8010BF50 846A0000 */  lh         $t2, 0x0($v1)
    /* 11AF04 8010BF54 3C048005 */  lui        $a0, %hi(D_80050AD0)
    /* 11AF08 8010BF58 24840AD0 */  addiu      $a0, $a0, %lo(D_80050AD0)
    /* 11AF0C 8010BF5C 05410002 */  bgez       $t2, .L8010BF68_11AF18
    /* 11AF10 8010BF60 3C0E8004 */   lui       $t6, %hi(currentControllerStates)
    /* 11AF14 8010BF64 A4600000 */  sh         $zero, 0x0($v1)
  .L8010BF68_11AF18:
    /* 11AF18 8010BF68 8D020000 */  lw         $v0, 0x0($t0)
    /* 11AF1C 8010BF6C 24010003 */  addiu      $at, $zero, 0x3
    /* 11AF20 8010BF70 3C038005 */  lui        $v1, %hi(gameplayMode)
    /* 11AF24 8010BF74 14410005 */  bne        $v0, $at, .L8010BF8C_11AF3C
    /* 11AF28 8010BF78 00000000 */   nop
    /* 11AF2C 8010BF7C 8C820000 */  lw         $v0, 0x0($a0)
    /* 11AF30 8010BF80 24632ADC */  addiu      $v1, $v1, %lo(gameplayMode)
    /* 11AF34 8010BF84 AC600000 */  sw         $zero, 0x0($v1)
    /* 11AF38 8010BF88 AD020000 */  sw         $v0, 0x0($t0)
  .L8010BF8C_11AF3C:
    /* 11AF3C 8010BF8C 3C038005 */  lui        $v1, %hi(gameplayMode)
    /* 11AF40 8010BF90 3C048005 */  lui        $a0, %hi(D_80050AD0)
    /* 11AF44 8010BF94 2401000D */  addiu      $at, $zero, 0xD
    /* 11AF48 8010BF98 24840AD0 */  addiu      $a0, $a0, %lo(D_80050AD0)
    /* 11AF4C 8010BF9C 14410005 */  bne        $v0, $at, .L8010BFB4_11AF64
    /* 11AF50 8010BFA0 24632ADC */   addiu     $v1, $v1, %lo(gameplayMode)
    /* 11AF54 8010BFA4 8C820000 */  lw         $v0, 0x0($a0)
    /* 11AF58 8010BFA8 240C0010 */  addiu      $t4, $zero, 0x10
    /* 11AF5C 8010BFAC AC6C0000 */  sw         $t4, 0x0($v1)
    /* 11AF60 8010BFB0 AD020000 */  sw         $v0, 0x0($t0)
  .L8010BFB4_11AF64:
    /* 11AF64 8010BFB4 2401000C */  addiu      $at, $zero, 0xC
    /* 11AF68 8010BFB8 14410005 */  bne        $v0, $at, .L8010BFD0_11AF80
    /* 11AF6C 8010BFBC 00000000 */   nop
    /* 11AF70 8010BFC0 8C980000 */  lw         $t8, 0x0($a0)
    /* 11AF74 8010BFC4 240F0008 */  addiu      $t7, $zero, 0x8
    /* 11AF78 8010BFC8 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 11AF7C 8010BFCC AD180000 */  sw         $t8, 0x0($t0)
  .L8010BFD0_11AF80:
    /* 11AF80 8010BFD0 95CE7588 */  lhu        $t6, %lo(currentControllerStates)($t6)
    /* 11AF84 8010BFD4 31D90004 */  andi       $t9, $t6, 0x4
    /* 11AF88 8010BFD8 53200037 */  beql       $t9, $zero, .L8010C0B8_11B068
    /* 11AF8C 8010BFDC 8D0C0000 */   lw        $t4, 0x0($t0)
    /* 11AF90 8010BFE0 8C620000 */  lw         $v0, 0x0($v1)
    /* 11AF94 8010BFE4 24010003 */  addiu      $at, $zero, 0x3
    /* 11AF98 8010BFE8 10410032 */  beq        $v0, $at, .L8010C0B4_11B064
    /* 11AF9C 8010BFEC 2401000B */   addiu     $at, $zero, 0xB
    /* 11AFA0 8010BFF0 10410030 */  beq        $v0, $at, .L8010C0B4_11B064
    /* 11AFA4 8010BFF4 3C098016 */   lui       $t1, %hi(D_80159300)
    /* 11AFA8 8010BFF8 8D299300 */  lw         $t1, %lo(D_80159300)($t1)
    /* 11AFAC 8010BFFC 5520002E */  bnel       $t1, $zero, .L8010C0B8_11B068
    /* 11AFB0 8010C000 8D0C0000 */   lw        $t4, 0x0($t0)
    /* 11AFB4 8010C004 8CE60000 */  lw         $a2, 0x0($a3)
    /* 11AFB8 8010C008 94C20020 */  lhu        $v0, 0x20($a2)
    /* 11AFBC 8010C00C 304A0400 */  andi       $t2, $v0, 0x400
    /* 11AFC0 8010C010 15400028 */  bnez       $t2, .L8010C0B4_11B064
    /* 11AFC4 8010C014 304B0002 */   andi      $t3, $v0, 0x2
    /* 11AFC8 8010C018 11600011 */  beqz       $t3, .L8010C060_11B010
    /* 11AFCC 8010C01C 3C0C8022 */   lui       $t4, %hi(D_80222A70)
    /* 11AFD0 8010C020 8D8C2A70 */  lw         $t4, %lo(D_80222A70)($t4)
    /* 11AFD4 8010C024 84CD0002 */  lh         $t5, 0x2($a2)
    /* 11AFD8 8010C028 018D082A */  slt        $at, $t4, $t5
    /* 11AFDC 8010C02C 54200022 */  bnel       $at, $zero, .L8010C0B8_11B068
    /* 11AFE0 8010C030 8D0C0000 */   lw        $t4, 0x0($t0)
    /* 11AFE4 8010C034 90CF001A */  lbu        $t7, 0x1A($a2)
    /* 11AFE8 8010C038 3C028025 */  lui        $v0, %hi(D_80257A4C)
    /* 11AFEC 8010C03C 000FC0C0 */  sll        $t8, $t7, 3
    /* 11AFF0 8010C040 030FC023 */  subu       $t8, $t8, $t7
    /* 11AFF4 8010C044 0018C100 */  sll        $t8, $t8, 4
    /* 11AFF8 8010C048 00581021 */  addu       $v0, $v0, $t8
    /* 11AFFC 8010C04C 8C427A4C */  lw         $v0, %lo(D_80257A4C)($v0)
    /* 11B000 8010C050 00027080 */  sll        $t6, $v0, 2
    /* 11B004 8010C054 05C10002 */  bgez       $t6, .L8010C060_11B010
    /* 11B008 8010C058 30590100 */   andi      $t9, $v0, 0x100
    /* 11B00C 8010C05C 17200015 */  bnez       $t9, .L8010C0B4_11B064
  .L8010C060_11B010:
    /* 11B010 8010C060 3C098004 */   lui       $t1, %hi(currentLevel)
    /* 11B014 8010C064 8D297F90 */  lw         $t1, %lo(currentLevel)($t1)
    /* 11B018 8010C068 24010004 */  addiu      $at, $zero, 0x4
    /* 11B01C 8010C06C 3C0B8016 */  lui        $t3, %hi(D_80159264)
    /* 11B020 8010C070 15210005 */  bne        $t1, $at, .L8010C088_11B038
    /* 11B024 8010C074 00000000 */   nop
    /* 11B028 8010C078 90CA001A */  lbu        $t2, 0x1A($a2)
    /* 11B02C 8010C07C 2401000E */  addiu      $at, $zero, 0xE
    /* 11B030 8010C080 5141000D */  beql       $t2, $at, .L8010C0B8_11B068
    /* 11B034 8010C084 8D0C0000 */   lw        $t4, 0x0($t0)
  .L8010C088_11B038:
    /* 11B038 8010C088 8D6B9264 */  lw         $t3, %lo(D_80159264)($t3)
    /* 11B03C 8010C08C 3C048005 */  lui        $a0, %hi(D_80052B2C)
    /* 11B040 8010C090 00002825 */  or         $a1, $zero, $zero
    /* 11B044 8010C094 55600008 */  bnel       $t3, $zero, .L8010C0B8_11B068
    /* 11B048 8010C098 8D0C0000 */   lw        $t4, 0x0($t0)
    /* 11B04C 8010C09C 0C03F7AA */  jal        func_800FDEA8_10CE58
    /* 11B050 8010C0A0 8C842B2C */   lw        $a0, %lo(D_80052B2C)($a0)
    /* 11B054 8010C0A4 3C078005 */  lui        $a3, %hi(D_80052B34)
    /* 11B058 8010C0A8 3C088005 */  lui        $t0, %hi(D_80050AD4)
    /* 11B05C 8010C0AC 25080AD4 */  addiu      $t0, $t0, %lo(D_80050AD4)
    /* 11B060 8010C0B0 24E72B34 */  addiu      $a3, $a3, %lo(D_80052B34)
  .L8010C0B4_11B064:
    /* 11B064 8010C0B4 8D0C0000 */  lw         $t4, 0x0($t0)
  .L8010C0B8_11B068:
    /* 11B068 8010C0B8 3C0D8004 */  lui        $t5, %hi(currentLevel)
    /* 11B06C 8010C0BC 29810002 */  slti       $at, $t4, 0x2
    /* 11B070 8010C0C0 1420000C */  bnez       $at, .L8010C0F4_11B0A4
    /* 11B074 8010C0C4 00000000 */   nop
    /* 11B078 8010C0C8 8DAD7F90 */  lw         $t5, %lo(currentLevel)($t5)
    /* 11B07C 8010C0CC 24010003 */  addiu      $at, $zero, 0x3
    /* 11B080 8010C0D0 15A10006 */  bne        $t5, $at, .L8010C0EC_11B09C
    /* 11B084 8010C0D4 00000000 */   nop
    /* 11B088 8010C0D8 8CEF0000 */  lw         $t7, 0x0($a3)
    /* 11B08C 8010C0DC 24010003 */  addiu      $at, $zero, 0x3
    /* 11B090 8010C0E0 91F8001A */  lbu        $t8, 0x1A($t7)
    /* 11B094 8010C0E4 13010003 */  beq        $t8, $at, .L8010C0F4_11B0A4
    /* 11B098 8010C0E8 00000000 */   nop
  .L8010C0EC_11B09C:
    /* 11B09C 8010C0EC 0C000D17 */  jal        func_8000345C_405C
    /* 11B0A0 8010C0F0 24042000 */   addiu     $a0, $zero, 0x2000
  .L8010C0F4_11B0A4:
    /* 11B0A4 8010C0F4 3C0E8016 */  lui        $t6, %hi(D_80159320)
    /* 11B0A8 8010C0F8 8DCE9320 */  lw         $t6, %lo(D_80159320)($t6)
    /* 11B0AC 8010C0FC 3C028016 */  lui        $v0, %hi(D_80158E60)
    /* 11B0B0 8010C100 24428E60 */  addiu      $v0, $v0, %lo(D_80158E60)
    /* 11B0B4 8010C104 31D90002 */  andi       $t9, $t6, 0x2
    /* 11B0B8 8010C108 1720000C */  bnez       $t9, .L8010C13C_11B0EC
    /* 11B0BC 8010C10C 3C01442F */   lui       $at, (0x442F0000 >> 16)
    /* 11B0C0 8010C110 C4400000 */  lwc1       $f0, 0x0($v0)
    /* 11B0C4 8010C114 44818000 */  mtc1       $at, $f16
    /* 11B0C8 8010C118 3C014120 */  lui        $at, (0x41200000 >> 16)
    /* 11B0CC 8010C11C 4600803C */  c.lt.s     $f16, $f0
    /* 11B0D0 8010C120 00000000 */  nop
    /* 11B0D4 8010C124 45020006 */  bc1fl      .L8010C140_11B0F0
    /* 11B0D8 8010C128 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 11B0DC 8010C12C 44812000 */  mtc1       $at, $f4
    /* 11B0E0 8010C130 00000000 */  nop
    /* 11B0E4 8010C134 46040201 */  sub.s      $f8, $f0, $f4
    /* 11B0E8 8010C138 E4480000 */  swc1       $f8, 0x0($v0)
  .L8010C13C_11B0EC:
    /* 11B0EC 8010C13C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8010C140_11B0F0:
    /* 11B0F0 8010C140 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 11B0F4 8010C144 03E00008 */  jr         $ra
    /* 11B0F8 8010C148 00000000 */   nop
endlabel func_8010BA04_11A9B4
