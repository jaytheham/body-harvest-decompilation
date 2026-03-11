nonmatching func_800ABE7C_BAE2C, 0x144

glabel func_800ABE7C_BAE2C
    /* BAE2C 800ABE7C 308E00FF */  andi       $t6, $a0, 0xFF
    /* BAE30 800ABE80 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* BAE34 800ABE84 000E7880 */  sll        $t7, $t6, 2
    /* BAE38 800ABE88 01EE7821 */  addu       $t7, $t7, $t6
    /* BAE3C 800ABE8C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* BAE40 800ABE90 AFB70030 */  sw         $s7, 0x30($sp)
    /* BAE44 800ABE94 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* BAE48 800ABE98 000F7900 */  sll        $t7, $t7, 4
    /* BAE4C 800ABE9C 01F8B821 */  addu       $s7, $t7, $t8
    /* BAE50 800ABEA0 AFB30020 */  sw         $s3, 0x20($sp)
    /* BAE54 800ABEA4 AFB2001C */  sw         $s2, 0x1C($sp)
    /* BAE58 800ABEA8 86F20000 */  lh         $s2, 0x0($s7)
    /* BAE5C 800ABEAC 86F30004 */  lh         $s3, 0x4($s7)
    /* BAE60 800ABEB0 AFBF0034 */  sw         $ra, 0x34($sp)
    /* BAE64 800ABEB4 0012CA03 */  sra        $t9, $s2, 8
    /* BAE68 800ABEB8 00134203 */  sra        $t0, $s3, 8
    /* BAE6C 800ABEBC AFB6002C */  sw         $s6, 0x2C($sp)
    /* BAE70 800ABEC0 AFB50028 */  sw         $s5, 0x28($sp)
    /* BAE74 800ABEC4 AFB40024 */  sw         $s4, 0x24($sp)
    /* BAE78 800ABEC8 AFB10018 */  sw         $s1, 0x18($sp)
    /* BAE7C 800ABECC AFB00014 */  sw         $s0, 0x14($sp)
    /* BAE80 800ABED0 AFA40038 */  sw         $a0, 0x38($sp)
    /* BAE84 800ABED4 03209025 */  or         $s2, $t9, $zero
    /* BAE88 800ABED8 0C000E38 */  jal        func_800038E0_44E0
    /* BAE8C 800ABEDC 01009825 */   or        $s3, $t0, $zero
    /* BAE90 800ABEE0 00021B43 */  sra        $v1, $v0, 13
    /* BAE94 800ABEE4 3069FFFF */  andi       $t1, $v1, 0xFFFF
    /* BAE98 800ABEE8 3C0B8014 */  lui        $t3, %hi(D_8013D8F0)
    /* BAE9C 800ABEEC 256BD8F0 */  addiu      $t3, $t3, %lo(D_8013D8F0)
    /* BAEA0 800ABEF0 00095080 */  sll        $t2, $t1, 2
    /* BAEA4 800ABEF4 00008025 */  or         $s0, $zero, $zero
    /* BAEA8 800ABEF8 014B8821 */  addu       $s1, $t2, $t3
    /* BAEAC 800ABEFC 0012A200 */  sll        $s4, $s2, 8
    /* BAEB0 800ABF00 0013AA00 */  sll        $s5, $s3, 8
    /* BAEB4 800ABF04 24160008 */  addiu      $s6, $zero, 0x8
    /* BAEB8 800ABF08 862C0000 */  lh         $t4, 0x0($s1)
  .L800ABF0C_BAEBC:
    /* BAEBC 800ABF0C 862D0002 */  lh         $t5, 0x2($s1)
    /* BAEC0 800ABF10 26100001 */  addiu      $s0, $s0, 0x1
    /* BAEC4 800ABF14 01949021 */  addu       $s2, $t4, $s4
    /* BAEC8 800ABF18 01B59821 */  addu       $s3, $t5, $s5
    /* BAECC 800ABF1C 26520080 */  addiu      $s2, $s2, 0x80
    /* BAED0 800ABF20 26730080 */  addiu      $s3, $s3, 0x80
    /* BAED4 800ABF24 00132A03 */  sra        $a1, $s3, 8
    /* BAED8 800ABF28 00122203 */  sra        $a0, $s2, 8
    /* BAEDC 800ABF2C 00047600 */  sll        $t6, $a0, 24
    /* BAEE0 800ABF30 0005C600 */  sll        $t8, $a1, 24
    /* BAEE4 800ABF34 00182E03 */  sra        $a1, $t8, 24
    /* BAEE8 800ABF38 000E2603 */  sra        $a0, $t6, 24
    /* BAEEC 800ABF3C 0C02CC97 */  jal        func_800B325C_C220C
    /* BAEF0 800ABF40 24061800 */   addiu     $a2, $zero, 0x1800
    /* BAEF4 800ABF44 50400004 */  beql       $v0, $zero, .L800ABF58_BAF08
    /* BAEF8 800ABF48 2A010008 */   slti      $at, $s0, 0x8
    /* BAEFC 800ABF4C 5616FFEF */  bnel       $s0, $s6, .L800ABF0C_BAEBC
    /* BAF00 800ABF50 862C0000 */   lh        $t4, 0x0($s1)
    /* BAF04 800ABF54 2A010008 */  slti       $at, $s0, 0x8
  .L800ABF58_BAF08:
    /* BAF08 800ABF58 1020000E */  beqz       $at, .L800ABF94_BAF44
    /* BAF0C 800ABF5C 00122400 */   sll       $a0, $s2, 16
    /* BAF10 800ABF60 00132C00 */  sll        $a1, $s3, 16
    /* BAF14 800ABF64 00054C03 */  sra        $t1, $a1, 16
    /* BAF18 800ABF68 00044403 */  sra        $t0, $a0, 16
    /* BAF1C 800ABF6C A6F20014 */  sh         $s2, 0x14($s7)
    /* BAF20 800ABF70 A6F30018 */  sh         $s3, 0x18($s7)
    /* BAF24 800ABF74 01002025 */  or         $a0, $t0, $zero
    /* BAF28 800ABF78 0C02E134 */  jal        func_800B84D0_C7480
    /* BAF2C 800ABF7C 01202825 */   or        $a1, $t1, $zero
    /* BAF30 800ABF80 8EEB0020 */  lw         $t3, 0x20($s7)
    /* BAF34 800ABF84 00025203 */  sra        $t2, $v0, 8
    /* BAF38 800ABF88 A6EA0016 */  sh         $t2, 0x16($s7)
    /* BAF3C 800ABF8C 356C0100 */  ori        $t4, $t3, 0x100
    /* BAF40 800ABF90 AEEC0020 */  sw         $t4, 0x20($s7)
  .L800ABF94_BAF44:
    /* BAF44 800ABF94 8FBF0034 */  lw         $ra, 0x34($sp)
    /* BAF48 800ABF98 8FB00014 */  lw         $s0, 0x14($sp)
    /* BAF4C 800ABF9C 8FB10018 */  lw         $s1, 0x18($sp)
    /* BAF50 800ABFA0 8FB2001C */  lw         $s2, 0x1C($sp)
    /* BAF54 800ABFA4 8FB30020 */  lw         $s3, 0x20($sp)
    /* BAF58 800ABFA8 8FB40024 */  lw         $s4, 0x24($sp)
    /* BAF5C 800ABFAC 8FB50028 */  lw         $s5, 0x28($sp)
    /* BAF60 800ABFB0 8FB6002C */  lw         $s6, 0x2C($sp)
    /* BAF64 800ABFB4 8FB70030 */  lw         $s7, 0x30($sp)
    /* BAF68 800ABFB8 03E00008 */  jr         $ra
    /* BAF6C 800ABFBC 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_800ABE7C_BAE2C
