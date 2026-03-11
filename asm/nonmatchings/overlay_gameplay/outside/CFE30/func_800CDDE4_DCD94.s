nonmatching func_800CDDE4_DCD94, 0x25C

glabel func_800CDDE4_DCD94
    /* DCD94 800CDDE4 27BDFF68 */  addiu      $sp, $sp, -0x98
    /* DCD98 800CDDE8 AFB00018 */  sw         $s0, 0x18($sp)
    /* DCD9C 800CDDEC 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* DCDA0 800CDDF0 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* DCDA4 800CDDF4 8E020000 */  lw         $v0, 0x0($s0)
    /* DCDA8 800CDDF8 3C068015 */  lui        $a2, %hi(D_8015426A)
    /* DCDAC 800CDDFC 84C6426A */  lh         $a2, %lo(D_8015426A)($a2)
    /* DCDB0 800CDE00 AFB5002C */  sw         $s5, 0x2C($sp)
    /* DCDB4 800CDE04 240E0046 */  addiu      $t6, $zero, 0x46
    /* DCDB8 800CDE08 244F0008 */  addiu      $t7, $v0, 0x8
    /* DCDBC 800CDE0C AFBF003C */  sw         $ra, 0x3C($sp)
    /* DCDC0 800CDE10 AFBE0038 */  sw         $fp, 0x38($sp)
    /* DCDC4 800CDE14 AFB70034 */  sw         $s7, 0x34($sp)
    /* DCDC8 800CDE18 AFB60030 */  sw         $s6, 0x30($sp)
    /* DCDCC 800CDE1C AFB40028 */  sw         $s4, 0x28($sp)
    /* DCDD0 800CDE20 AFB30024 */  sw         $s3, 0x24($sp)
    /* DCDD4 800CDE24 AFB20020 */  sw         $s2, 0x20($sp)
    /* DCDD8 800CDE28 AFB1001C */  sw         $s1, 0x1C($sp)
    /* DCDDC 800CDE2C A7AE008C */  sh         $t6, 0x8C($sp)
    /* DCDE0 800CDE30 AE0F0000 */  sw         $t7, 0x0($s0)
    /* DCDE4 800CDE34 3C15E700 */  lui        $s5, (0xE7000000 >> 16)
    /* DCDE8 800CDE38 AC550000 */  sw         $s5, 0x0($v0)
    /* DCDEC 800CDE3C AC400004 */  sw         $zero, 0x4($v0)
    /* DCDF0 800CDE40 8E020000 */  lw         $v0, 0x0($s0)
    /* DCDF4 800CDE44 3C19BA00 */  lui        $t9, (0xBA001402 >> 16)
    /* DCDF8 800CDE48 37391402 */  ori        $t9, $t9, (0xBA001402 & 0xFFFF)
    /* DCDFC 800CDE4C 24580008 */  addiu      $t8, $v0, 0x8
    /* DCE00 800CDE50 AE180000 */  sw         $t8, 0x0($s0)
    /* DCE04 800CDE54 AC400004 */  sw         $zero, 0x4($v0)
    /* DCE08 800CDE58 AC590000 */  sw         $t9, 0x0($v0)
    /* DCE0C 800CDE5C 8E020000 */  lw         $v0, 0x0($s0)
    /* DCE10 800CDE60 3C0BBA00 */  lui        $t3, (0xBA000E02 >> 16)
    /* DCE14 800CDE64 356B0E02 */  ori        $t3, $t3, (0xBA000E02 & 0xFFFF)
    /* DCE18 800CDE68 244A0008 */  addiu      $t2, $v0, 0x8
    /* DCE1C 800CDE6C AE0A0000 */  sw         $t2, 0x0($s0)
    /* DCE20 800CDE70 AC400004 */  sw         $zero, 0x4($v0)
    /* DCE24 800CDE74 AC4B0000 */  sw         $t3, 0x0($v0)
    /* DCE28 800CDE78 8E020000 */  lw         $v0, 0x0($s0)
    /* DCE2C 800CDE7C 3C0E0055 */  lui        $t6, (0x552078 >> 16)
    /* DCE30 800CDE80 3C0DB900 */  lui        $t5, (0xB900031D >> 16)
    /* DCE34 800CDE84 244C0008 */  addiu      $t4, $v0, 0x8
    /* DCE38 800CDE88 AE0C0000 */  sw         $t4, 0x0($s0)
    /* DCE3C 800CDE8C 35AD031D */  ori        $t5, $t5, (0xB900031D & 0xFFFF)
    /* DCE40 800CDE90 35CE2078 */  ori        $t6, $t6, (0x552078 & 0xFFFF)
    /* DCE44 800CDE94 AC4E0004 */  sw         $t6, 0x4($v0)
    /* DCE48 800CDE98 AC4D0000 */  sw         $t5, 0x0($v0)
    /* DCE4C 800CDE9C 8E020000 */  lw         $v0, 0x0($s0)
    /* DCE50 800CDEA0 3C190002 */  lui        $t9, (0x20001 >> 16)
    /* DCE54 800CDEA4 2416FFFA */  addiu      $s6, $zero, -0x6
    /* DCE58 800CDEA8 244F0008 */  addiu      $t7, $v0, 0x8
    /* DCE5C 800CDEAC AE0F0000 */  sw         $t7, 0x0($s0)
    /* DCE60 800CDEB0 37390001 */  ori        $t9, $t9, (0x20001 & 0xFFFF)
    /* DCE64 800CDEB4 3C18B700 */  lui        $t8, (0xB7000000 >> 16)
    /* DCE68 800CDEB8 AC580000 */  sw         $t8, 0x0($v0)
    /* DCE6C 800CDEBC 10D60054 */  beq        $a2, $s6, .L800CE010_DCFC0
    /* DCE70 800CDEC0 AC590004 */   sw        $t9, 0x4($v0)
    /* DCE74 800CDEC4 2417FFFB */  addiu      $s7, $zero, -0x5
    /* DCE78 800CDEC8 10D70051 */  beq        $a2, $s7, .L800CE010_DCFC0
    /* DCE7C 800CDECC 3C140503 */   lui       $s4, %hi(D_5033E00)
    /* DCE80 800CDED0 3C138015 */  lui        $s3, %hi(D_80156EDA)
    /* DCE84 800CDED4 3C128006 */  lui        $s2, %hi(D_8005BB38)
    /* DCE88 800CDED8 2652BB38 */  addiu      $s2, $s2, %lo(D_8005BB38)
    /* DCE8C 800CDEDC 26736EDA */  addiu      $s3, $s3, %lo(D_80156EDA)
    /* DCE90 800CDEE0 26943E00 */  addiu      $s4, $s4, %lo(D_5033E00)
    /* DCE94 800CDEE4 241E0001 */  addiu      $fp, $zero, 0x1
    /* DCE98 800CDEE8 8E020000 */  lw         $v0, 0x0($s0)
  .L800CDEEC_DCE9C:
    /* DCE9C 800CDEEC 000658C0 */  sll        $t3, $a2, 3
    /* DCEA0 800CDEF0 01665823 */  subu       $t3, $t3, $a2
    /* DCEA4 800CDEF4 244A0008 */  addiu      $t2, $v0, 0x8
    /* DCEA8 800CDEF8 AE0A0000 */  sw         $t2, 0x0($s0)
    /* DCEAC 800CDEFC 3C0C8015 */  lui        $t4, %hi(D_80154318)
    /* DCEB0 800CDF00 258C4318 */  addiu      $t4, $t4, %lo(D_80154318)
    /* DCEB4 800CDF04 000B5880 */  sll        $t3, $t3, 2
    /* DCEB8 800CDF08 016C8821 */  addu       $s1, $t3, $t4
    /* DCEBC 800CDF0C AC400004 */  sw         $zero, 0x4($v0)
    /* DCEC0 800CDF10 AC550000 */  sw         $s5, 0x0($v0)
    /* DCEC4 800CDF14 922D0011 */  lbu        $t5, 0x11($s1)
    /* DCEC8 800CDF18 34048000 */  ori        $a0, $zero, 0x8000
    /* DCECC 800CDF1C 240F0046 */  addiu      $t7, $zero, 0x46
    /* DCED0 800CDF20 17CD0009 */  bne        $fp, $t5, .L800CDF48_DCEF8
    /* DCED4 800CDF24 26220008 */   addiu     $v0, $s1, 0x8
    /* DCED8 800CDF28 240E0096 */  addiu      $t6, $zero, 0x96
    /* DCEDC 800CDF2C A7A00080 */  sh         $zero, 0x80($sp)
    /* DCEE0 800CDF30 A7A00082 */  sh         $zero, 0x82($sp)
    /* DCEE4 800CDF34 A7AE008A */  sh         $t6, 0x8A($sp)
    /* DCEE8 800CDF38 A7AE0088 */  sh         $t6, 0x88($sp)
    /* DCEEC 800CDF3C A7AE008C */  sh         $t6, 0x8C($sp)
    /* DCEF0 800CDF40 10000007 */  b          .L800CDF60_DCF10
    /* DCEF4 800CDF44 A7A40084 */   sh        $a0, 0x84($sp)
  .L800CDF48_DCEF8:
    /* DCEF8 800CDF48 A7A00082 */  sh         $zero, 0x82($sp)
    /* DCEFC 800CDF4C A7A00080 */  sh         $zero, 0x80($sp)
    /* DCF00 800CDF50 A7AF008A */  sh         $t7, 0x8A($sp)
    /* DCF04 800CDF54 A7AF0088 */  sh         $t7, 0x88($sp)
    /* DCF08 800CDF58 A7AF008C */  sh         $t7, 0x8C($sp)
    /* DCF0C 800CDF5C A7A00084 */  sh         $zero, 0x84($sp)
  .L800CDF60_DCF10:
    /* DCF10 800CDF60 84580000 */  lh         $t8, 0x0($v0)
    /* DCF14 800CDF64 27A40078 */  addiu      $a0, $sp, 0x78
    /* DCF18 800CDF68 27A50080 */  addiu      $a1, $sp, 0x80
    /* DCF1C 800CDF6C A7B80078 */  sh         $t8, 0x78($sp)
    /* DCF20 800CDF70 84590002 */  lh         $t9, 0x2($v0)
    /* DCF24 800CDF74 27A60088 */  addiu      $a2, $sp, 0x88
    /* DCF28 800CDF78 8E470000 */  lw         $a3, 0x0($s2)
    /* DCF2C 800CDF7C A7B9007A */  sh         $t9, 0x7A($sp)
    /* DCF30 800CDF80 844A0004 */  lh         $t2, 0x4($v0)
    /* DCF34 800CDF84 0C000E74 */  jal        func_800039D0_45D0
    /* DCF38 800CDF88 A7AA007C */   sh        $t2, 0x7C($sp)
    /* DCF3C 800CDF8C 8E020000 */  lw         $v0, 0x0($s0)
    /* DCF40 800CDF90 3C0C0104 */  lui        $t4, (0x1040040 >> 16)
    /* DCF44 800CDF94 358C0040 */  ori        $t4, $t4, (0x1040040 & 0xFFFF)
    /* DCF48 800CDF98 244B0008 */  addiu      $t3, $v0, 0x8
    /* DCF4C 800CDF9C AE0B0000 */  sw         $t3, 0x0($s0)
    /* DCF50 800CDFA0 AC4C0000 */  sw         $t4, 0x0($v0)
    /* DCF54 800CDFA4 8E4D0000 */  lw         $t5, 0x0($s2)
    /* DCF58 800CDFA8 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* DCF5C 800CDFAC 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* DCF60 800CDFB0 01A17024 */  and        $t6, $t5, $at
    /* DCF64 800CDFB4 AC4E0004 */  sw         $t6, 0x4($v0)
    /* DCF68 800CDFB8 8E4F0000 */  lw         $t7, 0x0($s2)
    /* DCF6C 800CDFBC 8E020000 */  lw         $v0, 0x0($s0)
    /* DCF70 800CDFC0 3C0A0600 */  lui        $t2, (0x6000000 >> 16)
    /* DCF74 800CDFC4 25F80040 */  addiu      $t8, $t7, 0x40
    /* DCF78 800CDFC8 24590008 */  addiu      $t9, $v0, 0x8
    /* DCF7C 800CDFCC AE580000 */  sw         $t8, 0x0($s2)
    /* DCF80 800CDFD0 AE190000 */  sw         $t9, 0x0($s0)
    /* DCF84 800CDFD4 AC540004 */  sw         $s4, 0x4($v0)
    /* DCF88 800CDFD8 AC4A0000 */  sw         $t2, 0x0($v0)
    /* DCF8C 800CDFDC 8E020000 */  lw         $v0, 0x0($s0)
    /* DCF90 800CDFE0 3C0CBD00 */  lui        $t4, (0xBD000000 >> 16)
    /* DCF94 800CDFE4 244B0008 */  addiu      $t3, $v0, 0x8
    /* DCF98 800CDFE8 AE0B0000 */  sw         $t3, 0x0($s0)
    /* DCF9C 800CDFEC AC400004 */  sw         $zero, 0x4($v0)
    /* DCFA0 800CDFF0 AC4C0000 */  sw         $t4, 0x0($v0)
    /* DCFA4 800CDFF4 866D0000 */  lh         $t5, 0x0($s3)
    /* DCFA8 800CDFF8 86260004 */  lh         $a2, 0x4($s1)
    /* DCFAC 800CDFFC 25AE001E */  addiu      $t6, $t5, 0x1E
    /* DCFB0 800CE000 10D60003 */  beq        $a2, $s6, .L800CE010_DCFC0
    /* DCFB4 800CE004 A66E0000 */   sh        $t6, 0x0($s3)
    /* DCFB8 800CE008 54D7FFB8 */  bnel       $a2, $s7, .L800CDEEC_DCE9C
    /* DCFBC 800CE00C 8E020000 */   lw        $v0, 0x0($s0)
  .L800CE010_DCFC0:
    /* DCFC0 800CE010 8FBF003C */  lw         $ra, 0x3C($sp)
    /* DCFC4 800CE014 8FB00018 */  lw         $s0, 0x18($sp)
    /* DCFC8 800CE018 8FB1001C */  lw         $s1, 0x1C($sp)
    /* DCFCC 800CE01C 8FB20020 */  lw         $s2, 0x20($sp)
    /* DCFD0 800CE020 8FB30024 */  lw         $s3, 0x24($sp)
    /* DCFD4 800CE024 8FB40028 */  lw         $s4, 0x28($sp)
    /* DCFD8 800CE028 8FB5002C */  lw         $s5, 0x2C($sp)
    /* DCFDC 800CE02C 8FB60030 */  lw         $s6, 0x30($sp)
    /* DCFE0 800CE030 8FB70034 */  lw         $s7, 0x34($sp)
    /* DCFE4 800CE034 8FBE0038 */  lw         $fp, 0x38($sp)
    /* DCFE8 800CE038 03E00008 */  jr         $ra
    /* DCFEC 800CE03C 27BD0098 */   addiu     $sp, $sp, 0x98
endlabel func_800CDDE4_DCD94
