nonmatching func_8008BC58_9AC08, 0x334

glabel func_8008BC58_9AC08
    /* 9AC08 8008BC58 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* 9AC0C 8008BC5C AFBE0040 */  sw         $fp, 0x40($sp)
    /* 9AC10 8008BC60 309E00FF */  andi       $fp, $a0, 0xFF
    /* 9AC14 8008BC64 001E7080 */  sll        $t6, $fp, 2
    /* 9AC18 8008BC68 01DE7021 */  addu       $t6, $t6, $fp
    /* 9AC1C 8008BC6C 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 9AC20 8008BC70 AFB00020 */  sw         $s0, 0x20($sp)
    /* 9AC24 8008BC74 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 9AC28 8008BC78 000E7100 */  sll        $t6, $t6, 4
    /* 9AC2C 8008BC7C 01CF8021 */  addu       $s0, $t6, $t7
    /* 9AC30 8008BC80 8E180020 */  lw         $t8, 0x20($s0)
    /* 9AC34 8008BC84 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 9AC38 8008BC88 AFB7003C */  sw         $s7, 0x3C($sp)
    /* 9AC3C 8008BC8C 0018CAC0 */  sll        $t9, $t8, 11
    /* 9AC40 8008BC90 AFB60038 */  sw         $s6, 0x38($sp)
    /* 9AC44 8008BC94 AFB50034 */  sw         $s5, 0x34($sp)
    /* 9AC48 8008BC98 AFB40030 */  sw         $s4, 0x30($sp)
    /* 9AC4C 8008BC9C AFB3002C */  sw         $s3, 0x2C($sp)
    /* 9AC50 8008BCA0 AFB20028 */  sw         $s2, 0x28($sp)
    /* 9AC54 8008BCA4 AFB10024 */  sw         $s1, 0x24($sp)
    /* 9AC58 8008BCA8 07200004 */  bltz       $t9, .L8008BCBC_9AC6C
    /* 9AC5C 8008BCAC AFA40080 */   sw        $a0, 0x80($sp)
    /* 9AC60 8008BCB0 24080060 */  addiu      $t0, $zero, 0x60
    /* 9AC64 8008BCB4 100000A9 */  b          .L8008BF5C_9AF0C
    /* 9AC68 8008BCB8 A608002C */   sh        $t0, 0x2C($s0)
  .L8008BCBC_9AC6C:
    /* 9AC6C 8008BCBC 8602002C */  lh         $v0, 0x2C($s0)
    /* 9AC70 8008BCC0 24010028 */  addiu      $at, $zero, 0x28
    /* 9AC74 8008BCC4 24070005 */  addiu      $a3, $zero, 0x5
    /* 9AC78 8008BCC8 54410007 */  bnel       $v0, $at, .L8008BCE8_9AC98
    /* 9AC7C 8008BCCC 28410028 */   slti      $at, $v0, 0x28
    /* 9AC80 8008BCD0 86040000 */  lh         $a0, 0x0($s0)
    /* 9AC84 8008BCD4 86050002 */  lh         $a1, 0x2($s0)
    /* 9AC88 8008BCD8 0C035AB7 */  jal        func_800D6ADC_E5A8C
    /* 9AC8C 8008BCDC 86060004 */   lh        $a2, 0x4($s0)
    /* 9AC90 8008BCE0 8602002C */  lh         $v0, 0x2C($s0)
    /* 9AC94 8008BCE4 28410028 */  slti       $at, $v0, 0x28
  .L8008BCE8_9AC98:
    /* 9AC98 8008BCE8 50200053 */  beql       $at, $zero, .L8008BE38_9ADE8
    /* 9AC9C 8008BCEC 8602002C */   lh        $v0, 0x2C($s0)
    /* 9ACA0 8008BCF0 0C000E38 */  jal        func_800038E0_44E0
    /* 9ACA4 8008BCF4 00000000 */   nop
    /* 9ACA8 8008BCF8 24010005 */  addiu      $at, $zero, 0x5
    /* 9ACAC 8008BCFC 0041001A */  div        $zero, $v0, $at
    /* 9ACB0 8008BD00 00005010 */  mfhi       $t2
    /* 9ACB4 8008BD04 3C098005 */  lui        $t1, %hi(D_80052A8C)
    /* 9ACB8 8008BD08 8D292A8C */  lw         $t1, %lo(D_80052A8C)($t1)
    /* 9ACBC 8008BD0C 254B0002 */  addiu      $t3, $t2, 0x2
    /* 9ACC0 8008BD10 012B001B */  divu       $zero, $t1, $t3
    /* 9ACC4 8008BD14 00006010 */  mfhi       $t4
    /* 9ACC8 8008BD18 15600002 */  bnez       $t3, .L8008BD24_9ACD4
    /* 9ACCC 8008BD1C 00000000 */   nop
    /* 9ACD0 8008BD20 0007000D */  break      7
  .L8008BD24_9ACD4:
    /* 9ACD4 8008BD24 55800044 */  bnel       $t4, $zero, .L8008BE38_9ADE8
    /* 9ACD8 8008BD28 8602002C */   lh        $v0, 0x2C($s0)
    /* 9ACDC 8008BD2C 0C000E38 */  jal        func_800038E0_44E0
    /* 9ACE0 8008BD30 00000000 */   nop
    /* 9ACE4 8008BD34 0C000E38 */  jal        func_800038E0_44E0
    /* 9ACE8 8008BD38 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* 9ACEC 8008BD3C 0C000E38 */  jal        func_800038E0_44E0
    /* 9ACF0 8008BD40 3052FFFF */   andi      $s2, $v0, 0xFFFF
    /* 9ACF4 8008BD44 0C000E38 */  jal        func_800038E0_44E0
    /* 9ACF8 8008BD48 3053FFFF */   andi      $s3, $v0, 0xFFFF
    /* 9ACFC 8008BD4C 0C000E38 */  jal        func_800038E0_44E0
    /* 9AD00 8008BD50 3054FFFF */   andi      $s4, $v0, 0xFFFF
    /* 9AD04 8008BD54 24030190 */  addiu      $v1, $zero, 0x190
    /* 9AD08 8008BD58 0223001A */  div        $zero, $s1, $v1
    /* 9AD0C 8008BD5C 14600002 */  bnez       $v1, .L8008BD68_9AD18
    /* 9AD10 8008BD60 00000000 */   nop
    /* 9AD14 8008BD64 0007000D */  break      7
  .L8008BD68_9AD18:
    /* 9AD18 8008BD68 2401FFFF */  addiu      $at, $zero, -0x1
    /* 9AD1C 8008BD6C 14610004 */  bne        $v1, $at, .L8008BD80_9AD30
    /* 9AD20 8008BD70 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 9AD24 8008BD74 16210002 */  bne        $s1, $at, .L8008BD80_9AD30
    /* 9AD28 8008BD78 00000000 */   nop
    /* 9AD2C 8008BD7C 0006000D */  break      6
  .L8008BD80_9AD30:
    /* 9AD30 8008BD80 00006810 */  mfhi       $t5
    /* 9AD34 8008BD84 240102BC */  addiu      $at, $zero, 0x2BC
    /* 9AD38 8008BD88 860E0000 */  lh         $t6, 0x0($s0)
    /* 9AD3C 8008BD8C 0241001A */  div        $zero, $s2, $at
    /* 9AD40 8008BD90 0000C810 */  mfhi       $t9
    /* 9AD44 8008BD94 01AE2021 */  addu       $a0, $t5, $t6
    /* 9AD48 8008BD98 2484FF38 */  addiu      $a0, $a0, -0xC8
    /* 9AD4C 8008BD9C 0263001A */  div        $zero, $s3, $v1
    /* 9AD50 8008BDA0 00005810 */  mfhi       $t3
    /* 9AD54 8008BDA4 00047C00 */  sll        $t7, $a0, 16
    /* 9AD58 8008BDA8 000FC403 */  sra        $t8, $t7, 16
    /* 9AD5C 8008BDAC 860C0004 */  lh         $t4, 0x4($s0)
    /* 9AD60 8008BDB0 86080002 */  lh         $t0, 0x2($s0)
    /* 9AD64 8008BDB4 03002025 */  or         $a0, $t8, $zero
    /* 9AD68 8008BDB8 016C3021 */  addu       $a2, $t3, $t4
    /* 9AD6C 8008BDBC 24C6FF38 */  addiu      $a2, $a2, -0xC8
    /* 9AD70 8008BDC0 03282821 */  addu       $a1, $t9, $t0
    /* 9AD74 8008BDC4 00055400 */  sll        $t2, $a1, 16
    /* 9AD78 8008BDC8 00066C00 */  sll        $t5, $a2, 16
    /* 9AD7C 8008BDCC 000D7403 */  sra        $t6, $t5, 16
    /* 9AD80 8008BDD0 000A4C03 */  sra        $t1, $t2, 16
    /* 9AD84 8008BDD4 01202825 */  or         $a1, $t1, $zero
    /* 9AD88 8008BDD8 14600002 */  bnez       $v1, .L8008BDE4_9AD94
    /* 9AD8C 8008BDDC 00000000 */   nop
    /* 9AD90 8008BDE0 0007000D */  break      7
  .L8008BDE4_9AD94:
    /* 9AD94 8008BDE4 2401FFFF */  addiu      $at, $zero, -0x1
    /* 9AD98 8008BDE8 14610004 */  bne        $v1, $at, .L8008BDFC_9ADAC
    /* 9AD9C 8008BDEC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 9ADA0 8008BDF0 16610002 */  bne        $s3, $at, .L8008BDFC_9ADAC
    /* 9ADA4 8008BDF4 00000000 */   nop
    /* 9ADA8 8008BDF8 0006000D */  break      6
  .L8008BDFC_9ADAC:
    /* 9ADAC 8008BDFC 24010064 */  addiu      $at, $zero, 0x64
    /* 9ADB0 8008BE00 0281001A */  div        $zero, $s4, $at
    /* 9ADB4 8008BE04 00003810 */  mfhi       $a3
    /* 9ADB8 8008BE08 24E70028 */  addiu      $a3, $a3, 0x28
    /* 9ADBC 8008BE0C 30EFFFFF */  andi       $t7, $a3, 0xFFFF
    /* 9ADC0 8008BE10 01E03825 */  or         $a3, $t7, $zero
    /* 9ADC4 8008BE14 01C03025 */  or         $a2, $t6, $zero
    /* 9ADC8 8008BE18 04410004 */  bgez       $v0, .L8008BE2C_9ADDC
    /* 9ADCC 8008BE1C 30580003 */   andi      $t8, $v0, 0x3
    /* 9ADD0 8008BE20 13000002 */  beqz       $t8, .L8008BE2C_9ADDC
    /* 9ADD4 8008BE24 00000000 */   nop
    /* 9ADD8 8008BE28 2718FFFC */  addiu      $t8, $t8, -0x4
  .L8008BE2C_9ADDC:
    /* 9ADDC 8008BE2C 0C037E12 */  jal        func_800DF848_EE7F8
    /* 9ADE0 8008BE30 AFB80010 */   sw        $t8, 0x10($sp)
    /* 9ADE4 8008BE34 8602002C */  lh         $v0, 0x2C($s0)
  .L8008BE38_9ADE8:
    /* 9ADE8 8008BE38 28410050 */  slti       $at, $v0, 0x50
    /* 9ADEC 8008BE3C 10200047 */  beqz       $at, .L8008BF5C_9AF0C
    /* 9ADF0 8008BE40 28410010 */   slti      $at, $v0, 0x10
    /* 9ADF4 8008BE44 14200045 */  bnez       $at, .L8008BF5C_9AF0C
    /* 9ADF8 8008BE48 02002025 */   or        $a0, $s0, $zero
    /* 9ADFC 8008BE4C 27B90068 */  addiu      $t9, $sp, 0x68
    /* 9AE00 8008BE50 AFB90010 */  sw         $t9, 0x10($sp)
    /* 9AE04 8008BE54 00002825 */  or         $a1, $zero, $zero
    /* 9AE08 8008BE58 27A60070 */  addiu      $a2, $sp, 0x70
    /* 9AE0C 8008BE5C 0C04A141 */  jal        func_80128504_1374B4
    /* 9AE10 8008BE60 27A7006C */   addiu     $a3, $sp, 0x6C
    /* 9AE14 8008BE64 8613002C */  lh         $s3, 0x2C($s0)
    /* 9AE18 8008BE68 3C098005 */  lui        $t1, %hi(D_80052B34)
    /* 9AE1C 8008BE6C 8D292B34 */  lw         $t1, %lo(D_80052B34)($t1)
    /* 9AE20 8008BE70 2673FFF0 */  addiu      $s3, $s3, -0x10
    /* 9AE24 8008BE74 00134080 */  sll        $t0, $s3, 2
    /* 9AE28 8008BE78 01134023 */  subu       $t0, $t0, $s3
    /* 9AE2C 8008BE7C 000840C0 */  sll        $t0, $t0, 3
    /* 9AE30 8008BE80 01134023 */  subu       $t0, $t0, $s3
    /* 9AE34 8008BE84 3C0A8005 */  lui        $t2, %hi(vehicleInstances)
    /* 9AE38 8008BE88 254ADCD0 */  addiu      $t2, $t2, %lo(vehicleInstances)
    /* 9AE3C 8008BE8C 00084080 */  sll        $t0, $t0, 2
    /* 9AE40 8008BE90 010A8821 */  addu       $s1, $t0, $t2
    /* 9AE44 8008BE94 5131000D */  beql       $t1, $s1, .L8008BECC_9AE7C
    /* 9AE48 8008BE98 02608825 */   or        $s1, $s3, $zero
    /* 9AE4C 8008BE9C 922B001A */  lbu        $t3, 0x1A($s1)
    /* 9AE50 8008BEA0 02002025 */  or         $a0, $s0, $zero
    /* 9AE54 8008BEA4 51600009 */  beql       $t3, $zero, .L8008BECC_9AE7C
    /* 9AE58 8008BEA8 02608825 */   or        $s1, $s3, $zero
    /* 9AE5C 8008BEAC 0C021395 */  jal        func_80084E54_93E04
    /* 9AE60 8008BEB0 02202825 */   or        $a1, $s1, $zero
    /* 9AE64 8008BEB4 28412000 */  slti       $at, $v0, 0x2000
    /* 9AE68 8008BEB8 10200003 */  beqz       $at, .L8008BEC8_9AE78
    /* 9AE6C 8008BEBC 02202025 */   or        $a0, $s1, $zero
    /* 9AE70 8008BEC0 0C048FA4 */  jal        func_80123E90_132E40
    /* 9AE74 8008BEC4 24057FFF */   addiu     $a1, $zero, 0x7FFF
  .L8008BEC8_9AE78:
    /* 9AE78 8008BEC8 02608825 */  or         $s1, $s3, $zero
  .L8008BECC_9AE7C:
    /* 9AE7C 8008BECC 3C168025 */  lui        $s6, %hi(alienSpecs)
    /* 9AE80 8008BED0 26D66680 */  addiu      $s6, $s6, %lo(alienSpecs)
    /* 9AE84 8008BED4 241300FF */  addiu      $s3, $zero, 0xFF
    /* 9AE88 8008BED8 00009025 */  or         $s2, $zero, $zero
    /* 9AE8C 8008BEDC 24170068 */  addiu      $s7, $zero, 0x68
    /* 9AE90 8008BEE0 24150050 */  addiu      $s5, $zero, 0x50
    /* 9AE94 8008BEE4 24140100 */  addiu      $s4, $zero, 0x100
  .L8008BEE8_9AE98:
    /* 9AE98 8008BEE8 5271001A */  beql       $s3, $s1, .L8008BF54_9AF04
    /* 9AE9C 8008BEEC 26520040 */   addiu     $s2, $s2, 0x40
    /* 9AEA0 8008BEF0 06220018 */  bltzl      $s1, .L8008BF54_9AF04
    /* 9AEA4 8008BEF4 26520040 */   addiu     $s2, $s2, 0x40
    /* 9AEA8 8008BEF8 523E0016 */  beql       $s1, $fp, .L8008BF54_9AF04
    /* 9AEAC 8008BEFC 26520040 */   addiu     $s2, $s2, 0x40
    /* 9AEB0 8008BF00 02350019 */  multu      $s1, $s5
    /* 9AEB4 8008BF04 3C0D8005 */  lui        $t5, %hi(alienInstances)
    /* 9AEB8 8008BF08 25AD8198 */  addiu      $t5, $t5, %lo(alienInstances)
    /* 9AEBC 8008BF0C 00006012 */  mflo       $t4
    /* 9AEC0 8008BF10 018D8021 */  addu       $s0, $t4, $t5
    /* 9AEC4 8008BF14 920E001A */  lbu        $t6, 0x1A($s0)
    /* 9AEC8 8008BF18 51C0000E */  beql       $t6, $zero, .L8008BF54_9AF04
    /* 9AECC 8008BF1C 26520040 */   addiu     $s2, $s2, 0x40
    /* 9AED0 8008BF20 0C01E644 */  jal        func_80079910_888C0
    /* 9AED4 8008BF24 02202025 */   or        $a0, $s1, $zero
    /* 9AED8 8008BF28 920F001A */  lbu        $t7, 0x1A($s0)
    /* 9AEDC 8008BF2C 86040000 */  lh         $a0, 0x0($s0)
    /* 9AEE0 8008BF30 86050002 */  lh         $a1, 0x2($s0)
    /* 9AEE4 8008BF34 01F70019 */  multu      $t7, $s7
    /* 9AEE8 8008BF38 86060004 */  lh         $a2, 0x4($s0)
    /* 9AEEC 8008BF3C 0000C012 */  mflo       $t8
    /* 9AEF0 8008BF40 02D8C821 */  addu       $t9, $s6, $t8
    /* 9AEF4 8008BF44 9727000C */  lhu        $a3, 0xC($t9)
    /* 9AEF8 8008BF48 0C037E12 */  jal        func_800DF848_EE7F8
    /* 9AEFC 8008BF4C AFA00010 */   sw        $zero, 0x10($sp)
    /* 9AF00 8008BF50 26520040 */  addiu      $s2, $s2, 0x40
  .L8008BF54_9AF04:
    /* 9AF04 8008BF54 1654FFE4 */  bne        $s2, $s4, .L8008BEE8_9AE98
    /* 9AF08 8008BF58 26310040 */   addiu     $s1, $s1, 0x40
  .L8008BF5C_9AF0C:
    /* 9AF0C 8008BF5C 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 9AF10 8008BF60 8FB00020 */  lw         $s0, 0x20($sp)
    /* 9AF14 8008BF64 8FB10024 */  lw         $s1, 0x24($sp)
    /* 9AF18 8008BF68 8FB20028 */  lw         $s2, 0x28($sp)
    /* 9AF1C 8008BF6C 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 9AF20 8008BF70 8FB40030 */  lw         $s4, 0x30($sp)
    /* 9AF24 8008BF74 8FB50034 */  lw         $s5, 0x34($sp)
    /* 9AF28 8008BF78 8FB60038 */  lw         $s6, 0x38($sp)
    /* 9AF2C 8008BF7C 8FB7003C */  lw         $s7, 0x3C($sp)
    /* 9AF30 8008BF80 8FBE0040 */  lw         $fp, 0x40($sp)
    /* 9AF34 8008BF84 03E00008 */  jr         $ra
    /* 9AF38 8008BF88 27BD0080 */   addiu     $sp, $sp, 0x80
endlabel func_8008BC58_9AC08
