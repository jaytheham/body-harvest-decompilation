nonmatching func_8011C9D8_12B988, 0x200

glabel func_8011C9D8_12B988
    /* 12B988 8011C9D8 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 12B98C 8011C9DC AFBE0038 */  sw         $fp, 0x38($sp)
    /* 12B990 8011C9E0 AFB20020 */  sw         $s2, 0x20($sp)
    /* 12B994 8011C9E4 0080F025 */  or         $fp, $a0, $zero
    /* 12B998 8011C9E8 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 12B99C 8011C9EC AFB70034 */  sw         $s7, 0x34($sp)
    /* 12B9A0 8011C9F0 AFB60030 */  sw         $s6, 0x30($sp)
    /* 12B9A4 8011C9F4 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 12B9A8 8011C9F8 AFB40028 */  sw         $s4, 0x28($sp)
    /* 12B9AC 8011C9FC AFB30024 */  sw         $s3, 0x24($sp)
    /* 12B9B0 8011CA00 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 12B9B4 8011CA04 AFB00018 */  sw         $s0, 0x18($sp)
    /* 12B9B8 8011CA08 AFA50074 */  sw         $a1, 0x74($sp)
    /* 12B9BC 8011CA0C AFA60078 */  sw         $a2, 0x78($sp)
    /* 12B9C0 8011CA10 AFA7007C */  sw         $a3, 0x7C($sp)
    /* 12B9C4 8011CA14 27A30078 */  addiu      $v1, $sp, 0x78
    /* 12B9C8 8011CA18 00009025 */  or         $s2, $zero, $zero
    /* 12B9CC 8011CA1C 18A0002E */  blez       $a1, .L8011CAD8_12BA88
    /* 12B9D0 8011CA20 00A07025 */   or        $t6, $a1, $zero
    /* 12B9D4 8011CA24 31C40003 */  andi       $a0, $t6, 0x3
    /* 12B9D8 8011CA28 10800010 */  beqz       $a0, .L8011CA6C_12BA1C
    /* 12B9DC 8011CA2C 00802825 */   or        $a1, $a0, $zero
    /* 12B9E0 8011CA30 00127880 */  sll        $t7, $s2, 2
    /* 12B9E4 8011CA34 27B80054 */  addiu      $t8, $sp, 0x54
    /* 12B9E8 8011CA38 01F81021 */  addu       $v0, $t7, $t8
    /* 12B9EC 8011CA3C 2404FFFC */  addiu      $a0, $zero, -0x4
  .L8011CA40_12B9F0:
    /* 12B9F0 8011CA40 24790003 */  addiu      $t9, $v1, 0x3
    /* 12B9F4 8011CA44 03241824 */  and        $v1, $t9, $a0
    /* 12B9F8 8011CA48 8C680000 */  lw         $t0, 0x0($v1)
    /* 12B9FC 8011CA4C 26520001 */  addiu      $s2, $s2, 0x1
    /* 12BA00 8011CA50 24630004 */  addiu      $v1, $v1, 0x4
    /* 12BA04 8011CA54 24420004 */  addiu      $v0, $v0, 0x4
    /* 12BA08 8011CA58 14B2FFF9 */  bne        $a1, $s2, .L8011CA40_12B9F0
    /* 12BA0C 8011CA5C AC48FFFC */   sw        $t0, -0x4($v0)
    /* 12BA10 8011CA60 8FA90074 */  lw         $t1, 0x74($sp)
    /* 12BA14 8011CA64 5249001C */  beql       $s2, $t1, .L8011CAD8_12BA88
    /* 12BA18 8011CA68 00009025 */   or        $s2, $zero, $zero
  .L8011CA6C_12BA1C:
    /* 12BA1C 8011CA6C 8FAC0074 */  lw         $t4, 0x74($sp)
    /* 12BA20 8011CA70 27AB0054 */  addiu      $t3, $sp, 0x54
    /* 12BA24 8011CA74 00125080 */  sll        $t2, $s2, 2
    /* 12BA28 8011CA78 000C6880 */  sll        $t5, $t4, 2
    /* 12BA2C 8011CA7C 01AB2821 */  addu       $a1, $t5, $t3
    /* 12BA30 8011CA80 014B1021 */  addu       $v0, $t2, $t3
    /* 12BA34 8011CA84 2404FFFC */  addiu      $a0, $zero, -0x4
  .L8011CA88_12BA38:
    /* 12BA38 8011CA88 246E0003 */  addiu      $t6, $v1, 0x3
    /* 12BA3C 8011CA8C 01C41824 */  and        $v1, $t6, $a0
    /* 12BA40 8011CA90 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 12BA44 8011CA94 24780007 */  addiu      $t8, $v1, 0x7
    /* 12BA48 8011CA98 03041824 */  and        $v1, $t8, $a0
    /* 12BA4C 8011CA9C AC4F0000 */  sw         $t7, 0x0($v0)
    /* 12BA50 8011CAA0 8C790000 */  lw         $t9, 0x0($v1)
    /* 12BA54 8011CAA4 24680007 */  addiu      $t0, $v1, 0x7
    /* 12BA58 8011CAA8 01041824 */  and        $v1, $t0, $a0
    /* 12BA5C 8011CAAC AC590004 */  sw         $t9, 0x4($v0)
    /* 12BA60 8011CAB0 8C690000 */  lw         $t1, 0x0($v1)
    /* 12BA64 8011CAB4 246A0007 */  addiu      $t2, $v1, 0x7
    /* 12BA68 8011CAB8 01441824 */  and        $v1, $t2, $a0
    /* 12BA6C 8011CABC AC490008 */  sw         $t1, 0x8($v0)
    /* 12BA70 8011CAC0 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 12BA74 8011CAC4 24420010 */  addiu      $v0, $v0, 0x10
    /* 12BA78 8011CAC8 24630004 */  addiu      $v1, $v1, 0x4
    /* 12BA7C 8011CACC 1445FFEE */  bne        $v0, $a1, .L8011CA88_12BA38
    /* 12BA80 8011CAD0 AC4CFFFC */   sw        $t4, -0x4($v0)
    /* 12BA84 8011CAD4 00009025 */  or         $s2, $zero, $zero
  .L8011CAD8_12BA88:
    /* 12BA88 8011CAD8 3C038015 */  lui        $v1, %hi(D_8014D507)
    /* 12BA8C 8011CADC 9063D507 */  lbu        $v1, %lo(D_8014D507)($v1)
    /* 12BA90 8011CAE0 3C118015 */  lui        $s1, %hi(D_8014D408)
    /* 12BA94 8011CAE4 2631D408 */  addiu      $s1, $s1, %lo(D_8014D408)
    /* 12BA98 8011CAE8 1860002F */  blez       $v1, .L8011CBA8_12BB58
    /* 12BA9C 8011CAEC 241700A0 */   addiu     $s7, $zero, 0xA0
    /* 12BAA0 8011CAF0 3C138005 */  lui        $s3, %hi(alienInstances)
    /* 12BAA4 8011CAF4 26738198 */  addiu      $s3, $s3, %lo(alienInstances)
    /* 12BAA8 8011CAF8 2416FE1F */  addiu      $s6, $zero, -0x1E1
    /* 12BAAC 8011CAFC 27B50054 */  addiu      $s5, $sp, 0x54
    /* 12BAB0 8011CB00 24140050 */  addiu      $s4, $zero, 0x50
  .L8011CB04_12BAB4:
    /* 12BAB4 8011CB04 92220000 */  lbu        $v0, 0x0($s1)
    /* 12BAB8 8011CB08 8FAE0074 */  lw         $t6, 0x74($sp)
    /* 12BABC 8011CB0C 00540019 */  multu      $v0, $s4
    /* 12BAC0 8011CB10 00006812 */  mflo       $t5
    /* 12BAC4 8011CB14 026D8021 */  addu       $s0, $s3, $t5
    /* 12BAC8 8011CB18 820B003D */  lb         $t3, 0x3D($s0)
    /* 12BACC 8011CB1C 57CB001F */  bnel       $fp, $t3, .L8011CB9C_12BB4C
    /* 12BAD0 8011CB20 26520001 */   addiu     $s2, $s2, 0x1
    /* 12BAD4 8011CB24 024E001A */  div        $zero, $s2, $t6
    /* 12BAD8 8011CB28 00007810 */  mfhi       $t7
    /* 12BADC 8011CB2C 000FC080 */  sll        $t8, $t7, 2
    /* 12BAE0 8011CB30 02B8C821 */  addu       $t9, $s5, $t8
    /* 12BAE4 8011CB34 8F280000 */  lw         $t0, 0x0($t9)
    /* 12BAE8 8011CB38 15C00002 */  bnez       $t6, .L8011CB44_12BAF4
    /* 12BAEC 8011CB3C 00000000 */   nop
    /* 12BAF0 8011CB40 0007000D */  break      7
  .L8011CB44_12BAF4:
    /* 12BAF4 8011CB44 2401FFFF */  addiu      $at, $zero, -0x1
    /* 12BAF8 8011CB48 15C10004 */  bne        $t6, $at, .L8011CB5C_12BB0C
    /* 12BAFC 8011CB4C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 12BB00 8011CB50 16410002 */  bne        $s2, $at, .L8011CB5C_12BB0C
    /* 12BB04 8011CB54 00000000 */   nop
    /* 12BB08 8011CB58 0006000D */  break      6
  .L8011CB5C_12BB0C:
    /* 12BB0C 8011CB5C A6080038 */  sh         $t0, 0x38($s0)
    /* 12BB10 8011CB60 86040038 */  lh         $a0, 0x38($s0)
    /* 12BB14 8011CB64 26050014 */  addiu      $a1, $s0, 0x14
    /* 12BB18 8011CB68 26060016 */  addiu      $a2, $s0, 0x16
    /* 12BB1C 8011CB6C 0C046CFC */  jal        func_8011B3F0_12A3A0
    /* 12BB20 8011CB70 26070018 */   addiu     $a3, $s0, 0x18
    /* 12BB24 8011CB74 8E090020 */  lw         $t1, 0x20($s0)
    /* 12BB28 8011CB78 A6170012 */  sh         $s7, 0x12($s0)
    /* 12BB2C 8011CB7C 3C038015 */  lui        $v1, %hi(D_8014D507)
    /* 12BB30 8011CB80 01365024 */  and        $t2, $t1, $s6
    /* 12BB34 8011CB84 AE0A0020 */  sw         $t2, 0x20($s0)
    /* 12BB38 8011CB88 354D1100 */  ori        $t5, $t2, 0x1100
    /* 12BB3C 8011CB8C AE0D0020 */  sw         $t5, 0x20($s0)
    /* 12BB40 8011CB90 01406025 */  or         $t4, $t2, $zero
    /* 12BB44 8011CB94 9063D507 */  lbu        $v1, %lo(D_8014D507)($v1)
    /* 12BB48 8011CB98 26520001 */  addiu      $s2, $s2, 0x1
  .L8011CB9C_12BB4C:
    /* 12BB4C 8011CB9C 0243082A */  slt        $at, $s2, $v1
    /* 12BB50 8011CBA0 1420FFD8 */  bnez       $at, .L8011CB04_12BAB4
    /* 12BB54 8011CBA4 26310001 */   addiu     $s1, $s1, 0x1
  .L8011CBA8_12BB58:
    /* 12BB58 8011CBA8 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 12BB5C 8011CBAC 8FB00018 */  lw         $s0, 0x18($sp)
    /* 12BB60 8011CBB0 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 12BB64 8011CBB4 8FB20020 */  lw         $s2, 0x20($sp)
    /* 12BB68 8011CBB8 8FB30024 */  lw         $s3, 0x24($sp)
    /* 12BB6C 8011CBBC 8FB40028 */  lw         $s4, 0x28($sp)
    /* 12BB70 8011CBC0 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 12BB74 8011CBC4 8FB60030 */  lw         $s6, 0x30($sp)
    /* 12BB78 8011CBC8 8FB70034 */  lw         $s7, 0x34($sp)
    /* 12BB7C 8011CBCC 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 12BB80 8011CBD0 03E00008 */  jr         $ra
    /* 12BB84 8011CBD4 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_8011C9D8_12B988
