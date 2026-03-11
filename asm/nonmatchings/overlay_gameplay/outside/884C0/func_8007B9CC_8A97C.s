nonmatching func_8007B9CC_8A97C, 0x4F4

glabel func_8007B9CC_8A97C
    /* 8A97C 8007B9CC 308E00FF */  andi       $t6, $a0, 0xFF
    /* 8A980 8007B9D0 000E7880 */  sll        $t7, $t6, 2
    /* 8A984 8007B9D4 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 8A988 8007B9D8 01EE7821 */  addu       $t7, $t7, $t6
    /* 8A98C 8007B9DC 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 8A990 8007B9E0 AFB00018 */  sw         $s0, 0x18($sp)
    /* 8A994 8007B9E4 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 8A998 8007B9E8 000F7900 */  sll        $t7, $t7, 4
    /* 8A99C 8007B9EC 01F88021 */  addu       $s0, $t7, $t8
    /* 8A9A0 8007B9F0 9219001A */  lbu        $t9, 0x1A($s0)
    /* 8A9A4 8007B9F4 3C098014 */  lui        $t1, %hi(D_8013C23C)
    /* 8A9A8 8007B9F8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 8A9AC 8007B9FC AFA40078 */  sw         $a0, 0x78($sp)
    /* 8A9B0 8007BA00 2529C23C */  addiu      $t1, $t1, %lo(D_8013C23C)
    /* 8A9B4 8007BA04 A3B90077 */  sb         $t9, 0x77($sp)
    /* 8A9B8 8007BA08 8D210000 */  lw         $at, 0x0($t1)
    /* 8A9BC 8007BA0C 27A80060 */  addiu      $t0, $sp, 0x60
    /* 8A9C0 8007BA10 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 8A9C4 8007BA14 AD010000 */  sw         $at, 0x0($t0)
    /* 8A9C8 8007BA18 95210004 */  lhu        $at, 0x4($t1)
    /* 8A9CC 8007BA1C 241800FF */  addiu      $t8, $zero, 0xFF
    /* 8A9D0 8007BA20 241900FF */  addiu      $t9, $zero, 0xFF
    /* 8A9D4 8007BA24 A5010004 */  sh         $at, 0x4($t0)
    /* 8A9D8 8007BA28 93AE0077 */  lbu        $t6, 0x77($sp)
    /* 8A9DC 8007BA2C 860D000C */  lh         $t5, 0xC($s0)
    /* 8A9E0 8007BA30 2401001B */  addiu      $at, $zero, 0x1B
    /* 8A9E4 8007BA34 AFAE002C */  sw         $t6, 0x2C($sp)
    /* 8A9E8 8007BA38 15C10032 */  bne        $t6, $at, .L8007BB04_8AAB4
    /* 8A9EC 8007BA3C AFAD005C */   sw        $t5, 0x5C($sp)
    /* 8A9F0 8007BA40 3C0B8004 */  lui        $t3, %hi(currentLevel)
    /* 8A9F4 8007BA44 8D6B7F90 */  lw         $t3, %lo(currentLevel)($t3)
    /* 8A9F8 8007BA48 86040000 */  lh         $a0, 0x0($s0)
    /* 8A9FC 8007BA4C 86050004 */  lh         $a1, 0x4($s0)
    /* 8AA00 8007BA50 24010003 */  addiu      $at, $zero, 0x3
    /* 8AA04 8007BA54 A3AF0050 */  sb         $t7, 0x50($sp)
    /* 8AA08 8007BA58 A3B80051 */  sb         $t8, 0x51($sp)
    /* 8AA0C 8007BA5C A3B90052 */  sb         $t9, 0x52($sp)
    /* 8AA10 8007BA60 A7A4004C */  sh         $a0, 0x4C($sp)
    /* 8AA14 8007BA64 15610022 */  bne        $t3, $at, .L8007BAF0_8AAA0
    /* 8AA18 8007BA68 A7A5004E */   sh        $a1, 0x4E($sp)
    /* 8AA1C 8007BA6C 0C02E134 */  jal        func_800B84D0_C7480
    /* 8AA20 8007BA70 00000000 */   nop
    /* 8AA24 8007BA74 860C0002 */  lh         $t4, 0x2($s0)
    /* 8AA28 8007BA78 00025203 */  sra        $t2, $v0, 8
    /* 8AA2C 8007BA7C 000A4400 */  sll        $t0, $t2, 16
    /* 8AA30 8007BA80 00084C03 */  sra        $t1, $t0, 16
    /* 8AA34 8007BA84 012C6823 */  subu       $t5, $t1, $t4
    /* 8AA38 8007BA88 25AE04B0 */  addiu      $t6, $t5, 0x4B0
    /* 8AA3C 8007BA8C 448E2000 */  mtc1       $t6, $f4
    /* 8AA40 8007BA90 3C014416 */  lui        $at, (0x44160000 >> 16)
    /* 8AA44 8007BA94 44814000 */  mtc1       $at, $f8
    /* 8AA48 8007BA98 468021A0 */  cvt.s.w    $f6, $f4
    /* 8AA4C 8007BA9C 3C014380 */  lui        $at, (0x43800000 >> 16)
    /* 8AA50 8007BAA0 44815000 */  mtc1       $at, $f10
    /* 8AA54 8007BAA4 3C014448 */  lui        $at, (0x44480000 >> 16)
    /* 8AA58 8007BAA8 44812000 */  mtc1       $at, $f4
    /* 8AA5C 8007BAAC 27A4004C */  addiu      $a0, $sp, 0x4C
    /* 8AA60 8007BAB0 46083003 */  div.s      $f0, $f6, $f8
    /* 8AA64 8007BAB4 27A50050 */  addiu      $a1, $sp, 0x50
    /* 8AA68 8007BAB8 460A0402 */  mul.s      $f16, $f0, $f10
    /* 8AA6C 8007BABC 00000000 */  nop
    /* 8AA70 8007BAC0 46040182 */  mul.s      $f6, $f0, $f4
    /* 8AA74 8007BAC4 4600848D */  trunc.w.s  $f18, $f16
    /* 8AA78 8007BAC8 4600320D */  trunc.w.s  $f8, $f6
    /* 8AA7C 8007BACC 44069000 */  mfc1       $a2, $f18
    /* 8AA80 8007BAD0 44074000 */  mfc1       $a3, $f8
    /* 8AA84 8007BAD4 0006C400 */  sll        $t8, $a2, 16
    /* 8AA88 8007BAD8 00183403 */  sra        $a2, $t8, 16
    /* 8AA8C 8007BADC 00075400 */  sll        $t2, $a3, 16
    /* 8AA90 8007BAE0 0C02C8D5 */  jal        func_800B2354_C1304
    /* 8AA94 8007BAE4 000A3C03 */   sra       $a3, $t2, 16
    /* 8AA98 8007BAE8 10000007 */  b          .L8007BB08_8AAB8
    /* 8AA9C 8007BAEC 860D0002 */   lh        $t5, 0x2($s0)
  .L8007BAF0_8AAA0:
    /* 8AAA0 8007BAF0 27A4004C */  addiu      $a0, $sp, 0x4C
    /* 8AAA4 8007BAF4 27A50050 */  addiu      $a1, $sp, 0x50
    /* 8AAA8 8007BAF8 24060100 */  addiu      $a2, $zero, 0x100
    /* 8AAAC 8007BAFC 0C02C8D5 */  jal        func_800B2354_C1304
    /* 8AAB0 8007BB00 24070320 */   addiu     $a3, $zero, 0x320
  .L8007BB04_8AAB4:
    /* 8AAB4 8007BB04 860D0002 */  lh         $t5, 0x2($s0)
  .L8007BB08_8AAB8:
    /* 8AAB8 8007BB08 86090000 */  lh         $t1, 0x0($s0)
    /* 8AABC 8007BB0C 860F0004 */  lh         $t7, 0x4($s0)
    /* 8AAC0 8007BB10 000D7083 */  sra        $t6, $t5, 2
    /* 8AAC4 8007BB14 A7AE0072 */  sh         $t6, 0x72($sp)
    /* 8AAC8 8007BB18 00096083 */  sra        $t4, $t1, 2
    /* 8AACC 8007BB1C 86190006 */  lh         $t9, 0x6($s0)
    /* 8AAD0 8007BB20 86090008 */  lh         $t1, 0x8($s0)
    /* 8AAD4 8007BB24 86080044 */  lh         $t0, 0x44($s0)
    /* 8AAD8 8007BB28 860E000A */  lh         $t6, 0xA($s0)
    /* 8AADC 8007BB2C 860D0042 */  lh         $t5, 0x42($s0)
    /* 8AAE0 8007BB30 8E030020 */  lw         $v1, 0x20($s0)
    /* 8AAE4 8007BB34 000FC083 */  sra        $t8, $t7, 2
    /* 8AAE8 8007BB38 A7AC0070 */  sh         $t4, 0x70($sp)
    /* 8AAEC 8007BB3C A7B80074 */  sh         $t8, 0x74($sp)
    /* 8AAF0 8007BB40 240B4000 */  addiu      $t3, $zero, 0x4000
    /* 8AAF4 8007BB44 01795023 */  subu       $t2, $t3, $t9
    /* 8AAF8 8007BB48 01096021 */  addu       $t4, $t0, $t1
    /* 8AAFC 8007BB4C 01AE7821 */  addu       $t7, $t5, $t6
    /* 8AB00 8007BB50 0003C040 */  sll        $t8, $v1, 1
    /* 8AB04 8007BB54 A7AA0068 */  sh         $t2, 0x68($sp)
    /* 8AB08 8007BB58 A7AC006A */  sh         $t4, 0x6A($sp)
    /* 8AB0C 8007BB5C 0700003B */  bltz       $t8, .L8007BC4C_8ABFC
    /* 8AB10 8007BB60 A7AF006C */   sh        $t7, 0x6C($sp)
    /* 8AB14 8007BB64 93AB0077 */  lbu        $t3, 0x77($sp)
    /* 8AB18 8007BB68 3C0A8025 */  lui        $t2, %hi(D_802566D4)
    /* 8AB1C 8007BB6C 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 8AB20 8007BB70 000BC880 */  sll        $t9, $t3, 2
    /* 8AB24 8007BB74 032BC823 */  subu       $t9, $t9, $t3
    /* 8AB28 8007BB78 0019C880 */  sll        $t9, $t9, 2
    /* 8AB2C 8007BB7C 032BC821 */  addu       $t9, $t9, $t3
    /* 8AB30 8007BB80 0019C8C0 */  sll        $t9, $t9, 3
    /* 8AB34 8007BB84 01595021 */  addu       $t2, $t2, $t9
    /* 8AB38 8007BB88 8D4A66D4 */  lw         $t2, %lo(D_802566D4)($t2)
    /* 8AB3C 8007BB8C 31480080 */  andi       $t0, $t2, 0x80
    /* 8AB40 8007BB90 5100002F */  beql       $t0, $zero, .L8007BC50_8AC00
    /* 8AB44 8007BB94 93AA0077 */   lbu       $t2, 0x77($sp)
    /* 8AB48 8007BB98 8C892A8C */  lw         $t1, %lo(D_80052A8C)($a0)
    /* 8AB4C 8007BB9C 000962C0 */  sll        $t4, $t1, 11
    /* 8AB50 8007BBA0 0C007660 */  jal        sins
    /* 8AB54 8007BBA4 3184FFFF */   andi      $a0, $t4, 0xFFFF
    /* 8AB58 8007BBA8 44825000 */  mtc1       $v0, $f10
    /* 8AB5C 8007BBAC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 8AB60 8007BBB0 44812800 */  mtc1       $at, $f5
    /* 8AB64 8007BBB4 46805420 */  cvt.s.w    $f16, $f10
    /* 8AB68 8007BBB8 44802000 */  mtc1       $zero, $f4
    /* 8AB6C 8007BBBC 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* 8AB70 8007BBC0 44814800 */  mtc1       $at, $f9
    /* 8AB74 8007BBC4 44804000 */  mtc1       $zero, $f8
    /* 8AB78 8007BBC8 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 8AB7C 8007BBCC 460084A1 */  cvt.d.s    $f18, $f16
    /* 8AB80 8007BBD0 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 8AB84 8007BBD4 46249183 */  div.d      $f6, $f18, $f4
    /* 8AB88 8007BBD8 87B9006A */  lh         $t9, 0x6A($sp)
    /* 8AB8C 8007BBDC 2488000C */  addiu      $t0, $a0, 0xC
    /* 8AB90 8007BBE0 00084AC0 */  sll        $t1, $t0, 11
    /* 8AB94 8007BBE4 3124FFFF */  andi       $a0, $t1, 0xFFFF
    /* 8AB98 8007BBE8 46283282 */  mul.d      $f10, $f6, $f8
    /* 8AB9C 8007BBEC 4620540D */  trunc.w.d  $f16, $f10
    /* 8ABA0 8007BBF0 440B8000 */  mfc1       $t3, $f16
    /* 8ABA4 8007BBF4 00000000 */  nop
    /* 8ABA8 8007BBF8 01795021 */  addu       $t2, $t3, $t9
    /* 8ABAC 8007BBFC 0C007654 */  jal        coss
    /* 8ABB0 8007BC00 A7AA006A */   sh        $t2, 0x6A($sp)
    /* 8ABB4 8007BC04 44829000 */  mtc1       $v0, $f18
    /* 8ABB8 8007BC08 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 8ABBC 8007BC0C 44814800 */  mtc1       $at, $f9
    /* 8ABC0 8007BC10 46809120 */  cvt.s.w    $f4, $f18
    /* 8ABC4 8007BC14 44804000 */  mtc1       $zero, $f8
    /* 8ABC8 8007BC18 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* 8ABCC 8007BC1C 44818800 */  mtc1       $at, $f17
    /* 8ABD0 8007BC20 44808000 */  mtc1       $zero, $f16
    /* 8ABD4 8007BC24 87AB006C */  lh         $t3, 0x6C($sp)
    /* 8ABD8 8007BC28 460021A1 */  cvt.d.s    $f6, $f4
    /* 8ABDC 8007BC2C 8E030020 */  lw         $v1, 0x20($s0)
    /* 8ABE0 8007BC30 46283283 */  div.d      $f10, $f6, $f8
    /* 8ABE4 8007BC34 46305482 */  mul.d      $f18, $f10, $f16
    /* 8ABE8 8007BC38 4620910D */  trunc.w.d  $f4, $f18
    /* 8ABEC 8007BC3C 44182000 */  mfc1       $t8, $f4
    /* 8ABF0 8007BC40 00000000 */  nop
    /* 8ABF4 8007BC44 030BC821 */  addu       $t9, $t8, $t3
    /* 8ABF8 8007BC48 A7B9006C */  sh         $t9, 0x6C($sp)
  .L8007BC4C_8ABFC:
    /* 8ABFC 8007BC4C 93AA0077 */  lbu        $t2, 0x77($sp)
  .L8007BC50_8AC00:
    /* 8AC00 8007BC50 3C098025 */  lui        $t1, %hi(alienSpecs)
    /* 8AC04 8007BC54 25296680 */  addiu      $t1, $t1, %lo(alienSpecs)
    /* 8AC08 8007BC58 000A4080 */  sll        $t0, $t2, 2
    /* 8AC0C 8007BC5C 010A4023 */  subu       $t0, $t0, $t2
    /* 8AC10 8007BC60 00084080 */  sll        $t0, $t0, 2
    /* 8AC14 8007BC64 010A4021 */  addu       $t0, $t0, $t2
    /* 8AC18 8007BC68 000840C0 */  sll        $t0, $t0, 3
    /* 8AC1C 8007BC6C 01096021 */  addu       $t4, $t0, $t1
    /* 8AC20 8007BC70 00036800 */  sll        $t5, $v1, 0
    /* 8AC24 8007BC74 05A10003 */  bgez       $t5, .L8007BC84_8AC34
    /* 8AC28 8007BC78 AFAC0024 */   sw        $t4, 0x24($sp)
    /* 8AC2C 8007BC7C 0C000E38 */  jal        func_800038E0_44E0
    /* 8AC30 8007BC80 00000000 */   nop
  .L8007BC84_8AC34:
    /* 8AC34 8007BC84 8FAE002C */  lw         $t6, 0x2C($sp)
    /* 8AC38 8007BC88 24030002 */  addiu      $v1, $zero, 0x2
    /* 8AC3C 8007BC8C 24010020 */  addiu      $at, $zero, 0x20
    /* 8AC40 8007BC90 106E0011 */  beq        $v1, $t6, .L8007BCD8_8AC88
    /* 8AC44 8007BC94 27A40070 */   addiu     $a0, $sp, 0x70
    /* 8AC48 8007BC98 11C1000F */  beq        $t6, $at, .L8007BCD8_8AC88
    /* 8AC4C 8007BC9C 87AF0062 */   lh        $t7, 0x62($sp)
    /* 8AC50 8007BCA0 8602004C */  lh         $v0, 0x4C($s0)
    /* 8AC54 8007BCA4 8FAB0024 */  lw         $t3, 0x24($sp)
    /* 8AC58 8007BCA8 87A80060 */  lh         $t0, 0x60($sp)
    /* 8AC5C 8007BCAC 01E2C021 */  addu       $t8, $t7, $v0
    /* 8AC60 8007BCB0 A7B80062 */  sh         $t8, 0x62($sp)
    /* 8AC64 8007BCB4 8D790054 */  lw         $t9, 0x54($t3)
    /* 8AC68 8007BCB8 332A4000 */  andi       $t2, $t9, 0x4000
    /* 8AC6C 8007BCBC 55400007 */  bnel       $t2, $zero, .L8007BCDC_8AC8C
    /* 8AC70 8007BCC0 8FAE002C */   lw        $t6, 0x2C($sp)
    /* 8AC74 8007BCC4 87AC0064 */  lh         $t4, 0x64($sp)
    /* 8AC78 8007BCC8 01024823 */  subu       $t1, $t0, $v0
    /* 8AC7C 8007BCCC A7A90060 */  sh         $t1, 0x60($sp)
    /* 8AC80 8007BCD0 01826823 */  subu       $t5, $t4, $v0
    /* 8AC84 8007BCD4 A7AD0064 */  sh         $t5, 0x64($sp)
  .L8007BCD8_8AC88:
    /* 8AC88 8007BCD8 8FAE002C */  lw         $t6, 0x2C($sp)
  .L8007BCDC_8AC8C:
    /* 8AC8C 8007BCDC 24010020 */  addiu      $at, $zero, 0x20
    /* 8AC90 8007BCE0 27A50068 */  addiu      $a1, $sp, 0x68
    /* 8AC94 8007BCE4 106E000A */  beq        $v1, $t6, .L8007BD10_8ACC0
    /* 8AC98 8007BCE8 3C068003 */   lui       $a2, %hi(D_800311A0)
    /* 8AC9C 8007BCEC 11C10008 */  beq        $t6, $at, .L8007BD10_8ACC0
    /* 8ACA0 8007BCF0 3C078006 */   lui       $a3, %hi(D_8005BB38)
    /* 8ACA4 8007BCF4 27A40070 */  addiu      $a0, $sp, 0x70
    /* 8ACA8 8007BCF8 27A50068 */  addiu      $a1, $sp, 0x68
    /* 8ACAC 8007BCFC 27A60060 */  addiu      $a2, $sp, 0x60
    /* 8ACB0 8007BD00 0C000E74 */  jal        func_800039D0_45D0
    /* 8ACB4 8007BD04 8CE7BB38 */   lw        $a3, %lo(D_8005BB38)($a3)
    /* 8ACB8 8007BD08 10000005 */  b          .L8007BD20_8ACD0
    /* 8ACBC 8007BD0C 00000000 */   nop
  .L8007BD10_8ACC0:
    /* 8ACC0 8007BD10 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 8ACC4 8007BD14 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 8ACC8 8007BD18 0C000E74 */  jal        func_800039D0_45D0
    /* 8ACCC 8007BD1C 24C611A0 */   addiu     $a2, $a2, %lo(D_800311A0)
  .L8007BD20_8ACD0:
    /* 8ACD0 8007BD20 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 8ACD4 8007BD24 0C000E35 */  jal        setRandomSeed
    /* 8ACD8 8007BD28 8C842A8C */   lw        $a0, %lo(D_80052A8C)($a0)
    /* 8ACDC 8007BD2C 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 8ACE0 8007BD30 3C0B8005 */  lui        $t3, %hi(gameplayMode)
    /* 8ACE4 8007BD34 000FC2C0 */  sll        $t8, $t7, 11
    /* 8ACE8 8007BD38 0701001A */  bgez       $t8, .L8007BDA4_8AD54
    /* 8ACEC 8007BD3C 00000000 */   nop
    /* 8ACF0 8007BD40 8D6B2ADC */  lw         $t3, %lo(gameplayMode)($t3)
    /* 8ACF4 8007BD44 24010002 */  addiu      $at, $zero, 0x2
    /* 8ACF8 8007BD48 11610016 */  beq        $t3, $at, .L8007BDA4_8AD54
    /* 8ACFC 8007BD4C 00000000 */   nop
    /* 8AD00 8007BD50 0C000E38 */  jal        func_800038E0_44E0
    /* 8AD04 8007BD54 00000000 */   nop
    /* 8AD08 8007BD58 860A0008 */  lh         $t2, 0x8($s0)
    /* 8AD0C 8007BD5C 86090044 */  lh         $t1, 0x44($s0)
    /* 8AD10 8007BD60 04410003 */  bgez       $v0, .L8007BD70_8AD20
    /* 8AD14 8007BD64 0002C983 */   sra       $t9, $v0, 6
    /* 8AD18 8007BD68 2441003F */  addiu      $at, $v0, 0x3F
    /* 8AD1C 8007BD6C 0001C983 */  sra        $t9, $at, 6
  .L8007BD70_8AD20:
    /* 8AD20 8007BD70 032A4021 */  addu       $t0, $t9, $t2
    /* 8AD24 8007BD74 01096021 */  addu       $t4, $t0, $t1
    /* 8AD28 8007BD78 0C000E38 */  jal        func_800038E0_44E0
    /* 8AD2C 8007BD7C A7AC006A */   sh        $t4, 0x6A($sp)
    /* 8AD30 8007BD80 860E000A */  lh         $t6, 0xA($s0)
    /* 8AD34 8007BD84 86180042 */  lh         $t8, 0x42($s0)
    /* 8AD38 8007BD88 04410003 */  bgez       $v0, .L8007BD98_8AD48
    /* 8AD3C 8007BD8C 00026983 */   sra       $t5, $v0, 6
    /* 8AD40 8007BD90 2441003F */  addiu      $at, $v0, 0x3F
    /* 8AD44 8007BD94 00016983 */  sra        $t5, $at, 6
  .L8007BD98_8AD48:
    /* 8AD48 8007BD98 01AE7821 */  addu       $t7, $t5, $t6
    /* 8AD4C 8007BD9C 01F85821 */  addu       $t3, $t7, $t8
    /* 8AD50 8007BDA0 A7AB006C */  sh         $t3, 0x6C($sp)
  .L8007BDA4_8AD54:
    /* 8AD54 8007BDA4 3C058006 */  lui        $a1, %hi(D_8005BB2C)
    /* 8AD58 8007BDA8 24A5BB2C */  addiu      $a1, $a1, %lo(D_8005BB2C)
    /* 8AD5C 8007BDAC 8CA20000 */  lw         $v0, 0x0($a1)
    /* 8AD60 8007BDB0 3C0A0102 */  lui        $t2, (0x1020040 >> 16)
    /* 8AD64 8007BDB4 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 8AD68 8007BDB8 24590008 */  addiu      $t9, $v0, 0x8
    /* 8AD6C 8007BDBC ACB90000 */  sw         $t9, 0x0($a1)
    /* 8AD70 8007BDC0 354A0040 */  ori        $t2, $t2, (0x1020040 & 0xFFFF)
    /* 8AD74 8007BDC4 24E7BB38 */  addiu      $a3, $a3, %lo(D_8005BB38)
    /* 8AD78 8007BDC8 AC4A0000 */  sw         $t2, 0x0($v0)
    /* 8AD7C 8007BDCC 8CE80000 */  lw         $t0, 0x0($a3)
    /* 8AD80 8007BDD0 3C061FFF */  lui        $a2, (0x1FFFFFFF >> 16)
    /* 8AD84 8007BDD4 34C6FFFF */  ori        $a2, $a2, (0x1FFFFFFF & 0xFFFF)
    /* 8AD88 8007BDD8 01064824 */  and        $t1, $t0, $a2
    /* 8AD8C 8007BDDC AC490004 */  sw         $t1, 0x4($v0)
    /* 8AD90 8007BDE0 8CEC0000 */  lw         $t4, 0x0($a3)
    /* 8AD94 8007BDE4 8CA20000 */  lw         $v0, 0x0($a1)
    /* 8AD98 8007BDE8 3C0F0100 */  lui        $t7, (0x1000040 >> 16)
    /* 8AD9C 8007BDEC 258D0040 */  addiu      $t5, $t4, 0x40
    /* 8ADA0 8007BDF0 244E0008 */  addiu      $t6, $v0, 0x8
    /* 8ADA4 8007BDF4 ACED0000 */  sw         $t5, 0x0($a3)
    /* 8ADA8 8007BDF8 ACAE0000 */  sw         $t6, 0x0($a1)
    /* 8ADAC 8007BDFC 35EF0040 */  ori        $t7, $t7, (0x1000040 & 0xFFFF)
    /* 8ADB0 8007BE00 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 8ADB4 8007BE04 8CF80000 */  lw         $t8, 0x0($a3)
    /* 8ADB8 8007BE08 2401FFFF */  addiu      $at, $zero, -0x1
    /* 8ADBC 8007BE0C 03065824 */  and        $t3, $t8, $a2
    /* 8ADC0 8007BE10 AC4B0004 */  sw         $t3, 0x4($v0)
    /* 8ADC4 8007BE14 8FB9005C */  lw         $t9, 0x5C($sp)
    /* 8ADC8 8007BE18 1321000D */  beq        $t9, $at, .L8007BE50_8AE00
    /* 8ADCC 8007BE1C 00000000 */   nop
    /* 8ADD0 8007BE20 8CA20000 */  lw         $v0, 0x0($a1)
    /* 8ADD4 8007BE24 3C08BC00 */  lui        $t0, (0xBC001C06 >> 16)
    /* 8ADD8 8007BE28 35081C06 */  ori        $t0, $t0, (0xBC001C06 & 0xFFFF)
    /* 8ADDC 8007BE2C 244A0008 */  addiu      $t2, $v0, 0x8
    /* 8ADE0 8007BE30 ACAA0000 */  sw         $t2, 0x0($a1)
    /* 8ADE4 8007BE34 AC480000 */  sw         $t0, 0x0($v0)
    /* 8ADE8 8007BE38 8CE40000 */  lw         $a0, 0x0($a3)
    /* 8ADEC 8007BE3C AFA20038 */  sw         $v0, 0x38($sp)
    /* 8ADF0 8007BE40 0C006EEC */  jal        osVirtualToPhysical
    /* 8ADF4 8007BE44 24840040 */   addiu     $a0, $a0, 0x40
    /* 8ADF8 8007BE48 8FA30038 */  lw         $v1, 0x38($sp)
    /* 8ADFC 8007BE4C AC620004 */  sw         $v0, 0x4($v1)
  .L8007BE50_8AE00:
    /* 8AE00 8007BE50 0C01EC5C */  jal        func_8007B170_8A120
    /* 8AE04 8007BE54 8FA4005C */   lw        $a0, 0x5C($sp)
    /* 8AE08 8007BE58 8FAC002C */  lw         $t4, 0x2C($sp)
    /* 8AE0C 8007BE5C 8FA90024 */  lw         $t1, 0x24($sp)
    /* 8AE10 8007BE60 3C058006 */  lui        $a1, %hi(D_8005BB2C)
    /* 8AE14 8007BE64 2401001A */  addiu      $at, $zero, 0x1A
    /* 8AE18 8007BE68 24A5BB2C */  addiu      $a1, $a1, %lo(D_8005BB2C)
    /* 8AE1C 8007BE6C 15810009 */  bne        $t4, $at, .L8007BE94_8AE44
    /* 8AE20 8007BE70 8D240000 */   lw        $a0, 0x0($t1)
    /* 8AE24 8007BE74 8E030020 */  lw         $v1, 0x20($s0)
    /* 8AE28 8007BE78 00036AC0 */  sll        $t5, $v1, 11
    /* 8AE2C 8007BE7C 05A10005 */  bgez       $t5, .L8007BE94_8AE44
    /* 8AE30 8007BE80 306E8000 */   andi      $t6, $v1, 0x8000
    /* 8AE34 8007BE84 51C00004 */  beql       $t6, $zero, .L8007BE98_8AE48
    /* 8AE38 8007BE88 8CA20000 */   lw        $v0, 0x0($a1)
    /* 8AE3C 8007BE8C 3C040505 */  lui        $a0, %hi(D_50509D8)
    /* 8AE40 8007BE90 248409D8 */  addiu      $a0, $a0, %lo(D_50509D8)
  .L8007BE94_8AE44:
    /* 8AE44 8007BE94 8CA20000 */  lw         $v0, 0x0($a1)
  .L8007BE98_8AE48:
    /* 8AE48 8007BE98 3C180600 */  lui        $t8, (0x6000000 >> 16)
    /* 8AE4C 8007BE9C 244F0008 */  addiu      $t7, $v0, 0x8
    /* 8AE50 8007BEA0 ACAF0000 */  sw         $t7, 0x0($a1)
    /* 8AE54 8007BEA4 AC440004 */  sw         $a0, 0x4($v0)
    /* 8AE58 8007BEA8 AC580000 */  sw         $t8, 0x0($v0)
    /* 8AE5C 8007BEAC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 8AE60 8007BEB0 8FB00018 */  lw         $s0, 0x18($sp)
    /* 8AE64 8007BEB4 27BD0078 */  addiu      $sp, $sp, 0x78
    /* 8AE68 8007BEB8 03E00008 */  jr         $ra
    /* 8AE6C 8007BEBC 00000000 */   nop
endlabel func_8007B9CC_8A97C
