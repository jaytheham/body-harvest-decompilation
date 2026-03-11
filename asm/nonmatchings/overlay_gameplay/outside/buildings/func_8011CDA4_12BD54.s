nonmatching func_8011CDA4_12BD54, 0x28C

glabel func_8011CDA4_12BD54
    /* 12BD54 8011CDA4 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 12BD58 8011CDA8 3C048016 */  lui        $a0, %hi(D_8015D0AE)
    /* 12BD5C 8011CDAC 3C058016 */  lui        $a1, %hi(D_8015EA13)
    /* 12BD60 8011CDB0 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 12BD64 8011CDB4 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 12BD68 8011CDB8 AFB70034 */  sw         $s7, 0x34($sp)
    /* 12BD6C 8011CDBC AFB60030 */  sw         $s6, 0x30($sp)
    /* 12BD70 8011CDC0 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 12BD74 8011CDC4 AFB40028 */  sw         $s4, 0x28($sp)
    /* 12BD78 8011CDC8 AFB30024 */  sw         $s3, 0x24($sp)
    /* 12BD7C 8011CDCC AFB20020 */  sw         $s2, 0x20($sp)
    /* 12BD80 8011CDD0 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 12BD84 8011CDD4 AFB00018 */  sw         $s0, 0x18($sp)
    /* 12BD88 8011CDD8 24A5EA13 */  addiu      $a1, $a1, %lo(D_8015EA13)
    /* 12BD8C 8011CDDC 2484D0AE */  addiu      $a0, $a0, %lo(D_8015D0AE)
    /* 12BD90 8011CDE0 24031963 */  addiu      $v1, $zero, 0x1963
    /* 12BD94 8011CDE4 240700FF */  addiu      $a3, $zero, 0xFF
    /* 12BD98 8011CDE8 3406FFFF */  ori        $a2, $zero, 0xFFFF
  .L8011CDEC_12BD9C:
    /* 12BD9C 8011CDEC 00601025 */  or         $v0, $v1, $zero
    /* 12BDA0 8011CDF0 A4860000 */  sh         $a2, 0x0($a0)
    /* 12BDA4 8011CDF4 A0A70000 */  sb         $a3, 0x0($a1)
    /* 12BDA8 8011CDF8 2484FFFE */  addiu      $a0, $a0, -0x2
    /* 12BDAC 8011CDFC 24A5FFFF */  addiu      $a1, $a1, -0x1
    /* 12BDB0 8011CE00 1460FFFA */  bnez       $v1, .L8011CDEC_12BD9C
    /* 12BDB4 8011CE04 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 12BDB8 8011CE08 240E00FE */  addiu      $t6, $zero, 0xFE
    /* 12BDBC 8011CE0C 3C148005 */  lui        $s4, %hi(D_800522A8)
    /* 12BDC0 8011CE10 269422A8 */  addiu      $s4, $s4, %lo(D_800522A8)
    /* 12BDC4 8011CE14 AFAE0044 */  sw         $t6, 0x44($sp)
    /* 12BDC8 8011CE18 2416FFFF */  addiu      $s6, $zero, -0x1
  .L8011CE1C_12BDCC:
    /* 12BDCC 8011CE1C 8E820008 */  lw         $v0, 0x8($s4)
    /* 12BDD0 8011CE20 2401001F */  addiu      $at, $zero, 0x1F
    /* 12BDD4 8011CE24 00027B02 */  srl        $t7, $v0, 12
    /* 12BDD8 8011CE28 31F80001 */  andi       $t8, $t7, 0x1
    /* 12BDDC 8011CE2C 1300006F */  beqz       $t8, .L8011CFEC_12BF9C
    /* 12BDE0 8011CE30 30480001 */   andi      $t0, $v0, 0x1
    /* 12BDE4 8011CE34 5100000A */  beql       $t0, $zero, .L8011CE60_12BE10
    /* 12BDE8 8011CE38 92830006 */   lbu       $v1, 0x6($s4)
    /* 12BDEC 8011CE3C 92830006 */  lbu        $v1, 0x6($s4)
    /* 12BDF0 8011CE40 3C0A8026 */  lui        $t2, %hi(buildingSpecs)
    /* 12BDF4 8011CE44 254A9090 */  addiu      $t2, $t2, %lo(buildingSpecs)
    /* 12BDF8 8011CE48 00034940 */  sll        $t1, $v1, 5
    /* 12BDFC 8011CE4C 012A1021 */  addu       $v0, $t1, $t2
    /* 12BE00 8011CE50 845E0012 */  lh         $fp, 0x12($v0)
    /* 12BE04 8011CE54 10000008 */  b          .L8011CE78_12BE28
    /* 12BE08 8011CE58 84550010 */   lh        $s5, 0x10($v0)
    /* 12BE0C 8011CE5C 92830006 */  lbu        $v1, 0x6($s4)
  .L8011CE60_12BE10:
    /* 12BE10 8011CE60 3C0C8026 */  lui        $t4, %hi(buildingSpecs)
    /* 12BE14 8011CE64 258C9090 */  addiu      $t4, $t4, %lo(buildingSpecs)
    /* 12BE18 8011CE68 00035940 */  sll        $t3, $v1, 5
    /* 12BE1C 8011CE6C 016C1021 */  addu       $v0, $t3, $t4
    /* 12BE20 8011CE70 845E0010 */  lh         $fp, 0x10($v0)
    /* 12BE24 8011CE74 84550012 */  lh         $s5, 0x12($v0)
  .L8011CE78_12BE28:
    /* 12BE28 8011CE78 14610011 */  bne        $v1, $at, .L8011CEC0_12BE70
    /* 12BE2C 8011CE7C 00601025 */   or        $v0, $v1, $zero
    /* 12BE30 8011CE80 86840000 */  lh         $a0, 0x0($s4)
    /* 12BE34 8011CE84 86850004 */  lh         $a1, 0x4($s4)
    /* 12BE38 8011CE88 93A60047 */  lbu        $a2, 0x47($sp)
    /* 12BE3C 8011CE8C 00046A03 */  sra        $t5, $a0, 8
    /* 12BE40 8011CE90 00057A03 */  sra        $t7, $a1, 8
    /* 12BE44 8011CE94 31E500FF */  andi       $a1, $t7, 0xFF
    /* 12BE48 8011CE98 0C047310 */  jal        func_8011CC40_12BBF0
    /* 12BE4C 8011CE9C 31A400FF */   andi      $a0, $t5, 0xFF
    /* 12BE50 8011CEA0 8E820008 */  lw         $v0, 0x8($s4)
    /* 12BE54 8011CEA4 00021B02 */  srl        $v1, $v0, 12
    /* 12BE58 8011CEA8 34791000 */  ori        $t9, $v1, 0x1000
    /* 12BE5C 8011CEAC 03234026 */  xor        $t0, $t9, $v1
    /* 12BE60 8011CEB0 00084B00 */  sll        $t1, $t0, 12
    /* 12BE64 8011CEB4 01225026 */  xor        $t2, $t1, $v0
    /* 12BE68 8011CEB8 1000004C */  b          .L8011CFEC_12BF9C
    /* 12BE6C 8011CEBC AE8A0008 */   sw        $t2, 0x8($s4)
  .L8011CEC0_12BE70:
    /* 12BE70 8011CEC0 3C0B8016 */  lui        $t3, %hi(D_8015EA28)
    /* 12BE74 8011CEC4 916BEA28 */  lbu        $t3, %lo(D_8015EA28)($t3)
    /* 12BE78 8011CEC8 5562000C */  bnel       $t3, $v0, .L8011CEFC_12BEAC
    /* 12BE7C 8011CECC 86820000 */   lh        $v0, 0x0($s4)
    /* 12BE80 8011CED0 86840000 */  lh         $a0, 0x0($s4)
    /* 12BE84 8011CED4 86850004 */  lh         $a1, 0x4($s4)
    /* 12BE88 8011CED8 93A60047 */  lbu        $a2, 0x47($sp)
    /* 12BE8C 8011CEDC 00046203 */  sra        $t4, $a0, 8
    /* 12BE90 8011CEE0 00057203 */  sra        $t6, $a1, 8
    /* 12BE94 8011CEE4 31C500FF */  andi       $a1, $t6, 0xFF
    /* 12BE98 8011CEE8 0C047310 */  jal        func_8011CC40_12BBF0
    /* 12BE9C 8011CEEC 318400FF */   andi      $a0, $t4, 0xFF
    /* 12BEA0 8011CEF0 1000003F */  b          .L8011CFF0_12BFA0
    /* 12BEA4 8011CEF4 8FAE0044 */   lw        $t6, 0x44($sp)
    /* 12BEA8 8011CEF8 86820000 */  lh         $v0, 0x0($s4)
  .L8011CEFC_12BEAC:
    /* 12BEAC 8011CEFC 005EB823 */  subu       $s7, $v0, $fp
    /* 12BEB0 8011CF00 0017C203 */  sra        $t8, $s7, 8
    /* 12BEB4 8011CF04 005E2021 */  addu       $a0, $v0, $fp
    /* 12BEB8 8011CF08 2484FFFF */  addiu      $a0, $a0, -0x1
    /* 12BEBC 8011CF0C 0018CC00 */  sll        $t9, $t8, 16
    /* 12BEC0 8011CF10 0019BC03 */  sra        $s7, $t9, 16
    /* 12BEC4 8011CF14 00044A03 */  sra        $t1, $a0, 8
    /* 12BEC8 8011CF18 0137082A */  slt        $at, $t1, $s7
    /* 12BECC 8011CF1C 14200033 */  bnez       $at, .L8011CFEC_12BF9C
    /* 12BED0 8011CF20 01202025 */   or        $a0, $t1, $zero
    /* 12BED4 8011CF24 86820004 */  lh         $v0, 0x4($s4)
    /* 12BED8 8011CF28 00551821 */  addu       $v1, $v0, $s5
    /* 12BEDC 8011CF2C 2463FFFF */  addiu      $v1, $v1, -0x1
    /* 12BEE0 8011CF30 00035203 */  sra        $t2, $v1, 8
    /* 12BEE4 8011CF34 01401825 */  or         $v1, $t2, $zero
    /* 12BEE8 8011CF38 00558023 */  subu       $s0, $v0, $s5
  .L8011CF3C_12BEEC:
    /* 12BEEC 8011CF3C 00105A03 */  sra        $t3, $s0, 8
    /* 12BEF0 8011CF40 000B6400 */  sll        $t4, $t3, 16
    /* 12BEF4 8011CF44 000C8403 */  sra        $s0, $t4, 16
    /* 12BEF8 8011CF48 0070082A */  slt        $at, $v1, $s0
    /* 12BEFC 8011CF4C 14200021 */  bnez       $at, .L8011CFD4_12BF84
    /* 12BF00 8011CF50 93B10047 */   lbu       $s1, 0x47($sp)
    /* 12BF04 8011CF54 00179600 */  sll        $s2, $s7, 24
    /* 12BF08 8011CF58 00127603 */  sra        $t6, $s2, 24
    /* 12BF0C 8011CF5C 01C09025 */  or         $s2, $t6, $zero
    /* 12BF10 8011CF60 32F300FF */  andi       $s3, $s7, 0xFF
  .L8011CF64_12BF14:
    /* 12BF14 8011CF64 00122600 */  sll        $a0, $s2, 24
    /* 12BF18 8011CF68 00102E00 */  sll        $a1, $s0, 24
    /* 12BF1C 8011CF6C 0005C603 */  sra        $t8, $a1, 24
    /* 12BF20 8011CF70 00047E03 */  sra        $t7, $a0, 24
    /* 12BF24 8011CF74 01E02025 */  or         $a0, $t7, $zero
    /* 12BF28 8011CF78 0C047498 */  jal        func_8011D260_12C210
    /* 12BF2C 8011CF7C 03002825 */   or        $a1, $t8, $zero
    /* 12BF30 8011CF80 10560002 */  beq        $v0, $s6, .L8011CF8C_12BF3C
    /* 12BF34 8011CF84 326400FF */   andi      $a0, $s3, 0xFF
    /* 12BF38 8011CF88 A280000F */  sb         $zero, 0xF($s4)
  .L8011CF8C_12BF3C:
    /* 12BF3C 8011CF8C 320500FF */  andi       $a1, $s0, 0xFF
    /* 12BF40 8011CF90 0C047310 */  jal        func_8011CC40_12BBF0
    /* 12BF44 8011CF94 322600FF */   andi      $a2, $s1, 0xFF
    /* 12BF48 8011CF98 86820004 */  lh         $v0, 0x4($s4)
    /* 12BF4C 8011CF9C 26100001 */  addiu      $s0, $s0, 0x1
    /* 12BF50 8011CFA0 0010CC00 */  sll        $t9, $s0, 16
    /* 12BF54 8011CFA4 00551821 */  addu       $v1, $v0, $s5
    /* 12BF58 8011CFA8 2463FFFF */  addiu      $v1, $v1, -0x1
    /* 12BF5C 8011CFAC 00034A03 */  sra        $t1, $v1, 8
    /* 12BF60 8011CFB0 00198403 */  sra        $s0, $t9, 16
    /* 12BF64 8011CFB4 0130082A */  slt        $at, $t1, $s0
    /* 12BF68 8011CFB8 1020FFEA */  beqz       $at, .L8011CF64_12BF14
    /* 12BF6C 8011CFBC 01201825 */   or        $v1, $t1, $zero
    /* 12BF70 8011CFC0 868A0000 */  lh         $t2, 0x0($s4)
    /* 12BF74 8011CFC4 015E2021 */  addu       $a0, $t2, $fp
    /* 12BF78 8011CFC8 2484FFFF */  addiu      $a0, $a0, -0x1
    /* 12BF7C 8011CFCC 00045A03 */  sra        $t3, $a0, 8
    /* 12BF80 8011CFD0 01602025 */  or         $a0, $t3, $zero
  .L8011CFD4_12BF84:
    /* 12BF84 8011CFD4 26F70001 */  addiu      $s7, $s7, 0x1
    /* 12BF88 8011CFD8 00176400 */  sll        $t4, $s7, 16
    /* 12BF8C 8011CFDC 000CBC03 */  sra        $s7, $t4, 16
    /* 12BF90 8011CFE0 0097082A */  slt        $at, $a0, $s7
    /* 12BF94 8011CFE4 5020FFD5 */  beql       $at, $zero, .L8011CF3C_12BEEC
    /* 12BF98 8011CFE8 00558023 */   subu      $s0, $v0, $s5
  .L8011CFEC_12BF9C:
    /* 12BF9C 8011CFEC 8FAE0044 */  lw         $t6, 0x44($sp)
  .L8011CFF0_12BFA0:
    /* 12BFA0 8011CFF0 2694FFE8 */  addiu      $s4, $s4, -0x18
    /* 12BFA4 8011CFF4 25CFFFFF */  addiu      $t7, $t6, -0x1
    /* 12BFA8 8011CFF8 15C0FF88 */  bnez       $t6, .L8011CE1C_12BDCC
    /* 12BFAC 8011CFFC AFAF0044 */   sw        $t7, 0x44($sp)
    /* 12BFB0 8011D000 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 12BFB4 8011D004 8FB00018 */  lw         $s0, 0x18($sp)
    /* 12BFB8 8011D008 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 12BFBC 8011D00C 8FB20020 */  lw         $s2, 0x20($sp)
    /* 12BFC0 8011D010 8FB30024 */  lw         $s3, 0x24($sp)
    /* 12BFC4 8011D014 8FB40028 */  lw         $s4, 0x28($sp)
    /* 12BFC8 8011D018 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 12BFCC 8011D01C 8FB60030 */  lw         $s6, 0x30($sp)
    /* 12BFD0 8011D020 8FB70034 */  lw         $s7, 0x34($sp)
    /* 12BFD4 8011D024 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 12BFD8 8011D028 03E00008 */  jr         $ra
    /* 12BFDC 8011D02C 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_8011CDA4_12BD54
