nonmatching func_8011BB94_12AB44, 0x30C

glabel func_8011BB94_12AB44
    /* 12AB44 8011BB94 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 12AB48 8011BB98 3C0F8014 */  lui        $t7, %hi(D_80140A94)
    /* 12AB4C 8011BB9C AFBF003C */  sw         $ra, 0x3C($sp)
    /* 12AB50 8011BBA0 AFB10038 */  sw         $s1, 0x38($sp)
    /* 12AB54 8011BBA4 AFB00034 */  sw         $s0, 0x34($sp)
    /* 12AB58 8011BBA8 AFA40078 */  sw         $a0, 0x78($sp)
    /* 12AB5C 8011BBAC AFA5007C */  sw         $a1, 0x7C($sp)
    /* 12AB60 8011BBB0 25EF0A94 */  addiu      $t7, $t7, %lo(D_80140A94)
    /* 12AB64 8011BBB4 8DE10000 */  lw         $at, 0x0($t7)
    /* 12AB68 8011BBB8 27AE006C */  addiu      $t6, $sp, 0x6C
    /* 12AB6C 8011BBBC 8DE80004 */  lw         $t0, 0x4($t7)
    /* 12AB70 8011BBC0 ADC10000 */  sw         $at, 0x0($t6)
    /* 12AB74 8011BBC4 8DE10008 */  lw         $at, 0x8($t7)
    /* 12AB78 8011BBC8 ADC80004 */  sw         $t0, 0x4($t6)
    /* 12AB7C 8011BBCC 3C0B8005 */  lui        $t3, %hi(buildingInstances)
    /* 12AB80 8011BBD0 ADC10008 */  sw         $at, 0x8($t6)
    /* 12AB84 8011BBD4 8FA90078 */  lw         $t1, 0x78($sp)
    /* 12AB88 8011BBD8 256B0AD8 */  addiu      $t3, $t3, %lo(buildingInstances)
    /* 12AB8C 8011BBDC 3C0D8026 */  lui        $t5, %hi(buildingSpecs)
    /* 12AB90 8011BBE0 00095080 */  sll        $t2, $t1, 2
    /* 12AB94 8011BBE4 01495023 */  subu       $t2, $t2, $t1
    /* 12AB98 8011BBE8 000A50C0 */  sll        $t2, $t2, 3
    /* 12AB9C 8011BBEC 014B8021 */  addu       $s0, $t2, $t3
    /* 12ABA0 8011BBF0 92060006 */  lbu        $a2, 0x6($s0)
    /* 12ABA4 8011BBF4 25AD9090 */  addiu      $t5, $t5, %lo(buildingSpecs)
    /* 12ABA8 8011BBF8 00066140 */  sll        $t4, $a2, 5
    /* 12ABAC 8011BBFC 018D3821 */  addu       $a3, $t4, $t5
    /* 12ABB0 8011BC00 84E20012 */  lh         $v0, 0x12($a3)
    /* 12ABB4 8011BC04 84E30010 */  lh         $v1, 0x10($a3)
    /* 12ABB8 8011BC08 AFA7004C */  sw         $a3, 0x4C($sp)
    /* 12ABBC 8011BC0C 00420019 */  multu      $v0, $v0
    /* 12ABC0 8011BC10 0000C812 */  mflo       $t9
    /* 12ABC4 8011BC14 00000000 */  nop
    /* 12ABC8 8011BC18 00000000 */  nop
    /* 12ABCC 8011BC1C 00630019 */  multu      $v1, $v1
    /* 12ABD0 8011BC20 0000C012 */  mflo       $t8
    /* 12ABD4 8011BC24 03388821 */  addu       $s1, $t9, $t8
    /* 12ABD8 8011BC28 44912000 */  mtc1       $s1, $f4
    /* 12ABDC 8011BC2C 0C007650 */  jal        sqrtf
    /* 12ABE0 8011BC30 46802320 */   cvt.s.w   $f12, $f4
    /* 12ABE4 8011BC34 4600018D */  trunc.w.s  $f6, $f0
    /* 12ABE8 8011BC38 86020000 */  lh         $v0, 0x0($s0)
    /* 12ABEC 8011BC3C 86030004 */  lh         $v1, 0x4($s0)
    /* 12ABF0 8011BC40 00022400 */  sll        $a0, $v0, 16
    /* 12ABF4 8011BC44 00032C00 */  sll        $a1, $v1, 16
    /* 12ABF8 8011BC48 44113000 */  mfc1       $s1, $f6
    /* 12ABFC 8011BC4C 00054403 */  sra        $t0, $a1, 16
    /* 12AC00 8011BC50 00047C03 */  sra        $t7, $a0, 16
    /* 12AC04 8011BC54 01E02025 */  or         $a0, $t7, $zero
    /* 12AC08 8011BC58 AFAF0048 */  sw         $t7, 0x48($sp)
    /* 12AC0C 8011BC5C 01002825 */  or         $a1, $t0, $zero
    /* 12AC10 8011BC60 AFA80044 */  sw         $t0, 0x44($sp)
    /* 12AC14 8011BC64 AFA20060 */  sw         $v0, 0x60($sp)
    /* 12AC18 8011BC68 0C02E134 */  jal        func_800B84D0_C7480
    /* 12AC1C 8011BC6C AFA30058 */   sw        $v1, 0x58($sp)
    /* 12AC20 8011BC70 8FA7004C */  lw         $a3, 0x4C($sp)
    /* 12AC24 8011BC74 820C0010 */  lb         $t4, 0x10($s0)
    /* 12AC28 8011BC78 00024A03 */  sra        $t1, $v0, 8
    /* 12AC2C 8011BC7C 80E30019 */  lb         $v1, 0x19($a3)
    /* 12AC30 8011BC80 252A0032 */  addiu      $t2, $t1, 0x32
    /* 12AC34 8011BC84 AFAA005C */  sw         $t2, 0x5C($sp)
    /* 12AC38 8011BC88 04610003 */  bgez       $v1, .L8011BC98_12AC48
    /* 12AC3C 8011BC8C 00035843 */   sra       $t3, $v1, 1
    /* 12AC40 8011BC90 24610001 */  addiu      $at, $v1, 0x1
    /* 12AC44 8011BC94 00015843 */  sra        $t3, $at, 1
  .L8011BC98_12AC48:
    /* 12AC48 8011BC98 018B082A */  slt        $at, $t4, $t3
    /* 12AC4C 8011BC9C 54200023 */  bnel       $at, $zero, .L8011BD2C_12ACDC
    /* 12AC50 8011BCA0 820F000F */   lb        $t7, 0xF($s0)
    /* 12AC54 8011BCA4 820D000F */  lb         $t5, 0xF($s0)
    /* 12AC58 8011BCA8 2419000A */  addiu      $t9, $zero, 0xA
    /* 12AC5C 8011BCAC 01AB082A */  slt        $at, $t5, $t3
    /* 12AC60 8011BCB0 5020001E */  beql       $at, $zero, .L8011BD2C_12ACDC
    /* 12AC64 8011BCB4 820F000F */   lb        $t7, 0xF($s0)
    /* 12AC68 8011BCB8 A219000C */  sb         $t9, 0xC($s0)
    /* 12AC6C 8011BCBC 0C045D19 */  jal        func_80117464_126414
    /* 12AC70 8011BCC0 93A4007B */   lbu       $a0, 0x7B($sp)
    /* 12AC74 8011BCC4 10400018 */  beqz       $v0, .L8011BD28_12ACD8
    /* 12AC78 8011BCC8 2A210082 */   slti      $at, $s1, 0x82
    /* 12AC7C 8011BCCC 10200002 */  beqz       $at, .L8011BCD8_12AC88
    /* 12AC80 8011BCD0 00000000 */   nop
    /* 12AC84 8011BCD4 24110082 */  addiu      $s1, $zero, 0x82
  .L8011BCD8_12AC88:
    /* 12AC88 8011BCD8 0C000E38 */  jal        func_800038E0_44E0
    /* 12AC8C 8011BCDC 00000000 */   nop
    /* 12AC90 8011BCE0 87A4004A */  lh         $a0, 0x4A($sp)
    /* 12AC94 8011BCE4 87A5005E */  lh         $a1, 0x5E($sp)
    /* 12AC98 8011BCE8 87A60046 */  lh         $a2, 0x46($sp)
    /* 12AC9C 8011BCEC 3227FFFF */  andi       $a3, $s1, 0xFFFF
    /* 12ACA0 8011BCF0 04410004 */  bgez       $v0, .L8011BD04_12ACB4
    /* 12ACA4 8011BCF4 30580003 */   andi      $t8, $v0, 0x3
    /* 12ACA8 8011BCF8 13000002 */  beqz       $t8, .L8011BD04_12ACB4
    /* 12ACAC 8011BCFC 00000000 */   nop
    /* 12ACB0 8011BD00 2718FFFC */  addiu      $t8, $t8, -0x4
  .L8011BD04_12ACB4:
    /* 12ACB4 8011BD04 270E0004 */  addiu      $t6, $t8, 0x4
    /* 12ACB8 8011BD08 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 12ACBC 8011BD0C 0C037C0E */  jal        func_800DF038_EDFE8
    /* 12ACC0 8011BD10 AFA00014 */   sw        $zero, 0x14($sp)
    /* 12ACC4 8011BD14 8FA40060 */  lw         $a0, 0x60($sp)
    /* 12ACC8 8011BD18 8FA5005C */  lw         $a1, 0x5C($sp)
    /* 12ACCC 8011BD1C 8FA60058 */  lw         $a2, 0x58($sp)
    /* 12ACD0 8011BD20 0C04D751 */  jal        func_80135D44_144CF4
    /* 12ACD4 8011BD24 3C074040 */   lui       $a3, (0x40400000 >> 16)
  .L8011BD28_12ACD8:
    /* 12ACD8 8011BD28 820F000F */  lb         $t7, 0xF($s0)
  .L8011BD2C_12ACDC:
    /* 12ACDC 8011BD2C 5DE00058 */  bgtzl      $t7, .L8011BE90_12AE40
    /* 12ACE0 8011BD30 8FBF003C */   lw        $ra, 0x3C($sp)
    /* 12ACE4 8011BD34 8E020008 */  lw         $v0, 0x8($s0)
    /* 12ACE8 8011BD38 8FAA007C */  lw         $t2, 0x7C($sp)
    /* 12ACEC 8011BD3C 00024302 */  srl        $t0, $v0, 12
    /* 12ACF0 8011BD40 31091000 */  andi       $t1, $t0, 0x1000
    /* 12ACF4 8011BD44 11200005 */  beqz       $t1, .L8011BD5C_12AD0C
    /* 12ACF8 8011BD48 01001025 */   or        $v0, $t0, $zero
    /* 12ACFC 8011BD4C 15400003 */  bnez       $t2, .L8011BD5C_12AD0C
    /* 12AD00 8011BD50 240B0001 */   addiu     $t3, $zero, 0x1
    /* 12AD04 8011BD54 1000004D */  b          .L8011BE8C_12AE3C
    /* 12AD08 8011BD58 A20B000F */   sb        $t3, 0xF($s0)
  .L8011BD5C_12AD0C:
    /* 12AD0C 8011BD5C 304C0010 */  andi       $t4, $v0, 0x10
    /* 12AD10 8011BD60 11800004 */  beqz       $t4, .L8011BD74_12AD24
    /* 12AD14 8011BD64 93A4007B */   lbu       $a0, 0x7B($sp)
    /* 12AD18 8011BD68 0C034D85 */  jal        func_800D3614_E25C4
    /* 12AD1C 8011BD6C AFA4004C */   sw        $a0, 0x4C($sp)
    /* 12AD20 8011BD70 8FA4004C */  lw         $a0, 0x4C($sp)
  .L8011BD74_12AD24:
    /* 12AD24 8011BD74 240D0023 */  addiu      $t5, $zero, 0x23
    /* 12AD28 8011BD78 0C045D19 */  jal        func_80117464_126414
    /* 12AD2C 8011BD7C A20D000C */   sb        $t5, 0xC($s0)
    /* 12AD30 8011BD80 10400042 */  beqz       $v0, .L8011BE8C_12AE3C
    /* 12AD34 8011BD84 2A2100A0 */   slti      $at, $s1, 0xA0
    /* 12AD38 8011BD88 10200002 */  beqz       $at, .L8011BD94_12AD44
    /* 12AD3C 8011BD8C 87B0005E */   lh        $s0, 0x5E($sp)
    /* 12AD40 8011BD90 241100A0 */  addiu      $s1, $zero, 0xA0
  .L8011BD94_12AD44:
    /* 12AD44 8011BD94 00102C00 */  sll        $a1, $s0, 16
    /* 12AD48 8011BD98 0005CC03 */  sra        $t9, $a1, 16
    /* 12AD4C 8011BD9C 2418000C */  addiu      $t8, $zero, 0xC
    /* 12AD50 8011BDA0 AFB80010 */  sw         $t8, 0x10($sp)
    /* 12AD54 8011BDA4 03202825 */  or         $a1, $t9, $zero
    /* 12AD58 8011BDA8 87A4004A */  lh         $a0, 0x4A($sp)
    /* 12AD5C 8011BDAC 87A60046 */  lh         $a2, 0x46($sp)
    /* 12AD60 8011BDB0 3227FFFF */  andi       $a3, $s1, 0xFFFF
    /* 12AD64 8011BDB4 0C037C0E */  jal        func_800DF038_EDFE8
    /* 12AD68 8011BDB8 AFA00014 */   sw        $zero, 0x14($sp)
    /* 12AD6C 8011BDBC 8FA5005C */  lw         $a1, 0x5C($sp)
    /* 12AD70 8011BDC0 24080010 */  addiu      $t0, $zero, 0x10
    /* 12AD74 8011BDC4 AFA80010 */  sw         $t0, 0x10($sp)
    /* 12AD78 8011BDC8 24A5000A */  addiu      $a1, $a1, 0xA
    /* 12AD7C 8011BDCC 00057400 */  sll        $t6, $a1, 16
    /* 12AD80 8011BDD0 000E2C03 */  sra        $a1, $t6, 16
    /* 12AD84 8011BDD4 87A4004A */  lh         $a0, 0x4A($sp)
    /* 12AD88 8011BDD8 87A60046 */  lh         $a2, 0x46($sp)
    /* 12AD8C 8011BDDC 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* 12AD90 8011BDE0 24070078 */   addiu     $a3, $zero, 0x78
    /* 12AD94 8011BDE4 8FA40060 */  lw         $a0, 0x60($sp)
    /* 12AD98 8011BDE8 8FA5005C */  lw         $a1, 0x5C($sp)
    /* 12AD9C 8011BDEC 8FA60058 */  lw         $a2, 0x58($sp)
    /* 12ADA0 8011BDF0 0C04D751 */  jal        func_80135D44_144CF4
    /* 12ADA4 8011BDF4 3C074040 */   lui       $a3, (0x40400000 >> 16)
    /* 12ADA8 8011BDF8 8FA40060 */  lw         $a0, 0x60($sp)
    /* 12ADAC 8011BDFC 8FA50058 */  lw         $a1, 0x58($sp)
    /* 12ADB0 8011BE00 24061000 */  addiu      $a2, $zero, 0x1000
    /* 12ADB4 8011BE04 00044A03 */  sra        $t1, $a0, 8
    /* 12ADB8 8011BE08 00056203 */  sra        $t4, $a1, 8
    /* 12ADBC 8011BE0C 000C6E00 */  sll        $t5, $t4, 24
    /* 12ADC0 8011BE10 00095600 */  sll        $t2, $t1, 24
    /* 12ADC4 8011BE14 000A2603 */  sra        $a0, $t2, 24
    /* 12ADC8 8011BE18 0C02CC97 */  jal        func_800B325C_C220C
    /* 12ADCC 8011BE1C 000D2E03 */   sra       $a1, $t5, 24
    /* 12ADD0 8011BE20 1440001A */  bnez       $v0, .L8011BE8C_12AE3C
    /* 12ADD4 8011BE24 87A4004A */   lh        $a0, 0x4A($sp)
    /* 12ADD8 8011BE28 00102C00 */  sll        $a1, $s0, 16
    /* 12ADDC 8011BE2C 02203825 */  or         $a3, $s1, $zero
    /* 12ADE0 8011BE30 00077440 */  sll        $t6, $a3, 17
    /* 12ADE4 8011BE34 0005C403 */  sra        $t8, $a1, 16
    /* 12ADE8 8011BE38 24080005 */  addiu      $t0, $zero, 0x5
    /* 12ADEC 8011BE3C 24090064 */  addiu      $t1, $zero, 0x64
    /* 12ADF0 8011BE40 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 12ADF4 8011BE44 AFAA001C */  sw         $t2, 0x1C($sp)
    /* 12ADF8 8011BE48 AFA90018 */  sw         $t1, 0x18($sp)
    /* 12ADFC 8011BE4C AFA80010 */  sw         $t0, 0x10($sp)
    /* 12AE00 8011BE50 03002825 */  or         $a1, $t8, $zero
    /* 12AE04 8011BE54 000E3C03 */  sra        $a3, $t6, 16
    /* 12AE08 8011BE58 87A60046 */  lh         $a2, 0x46($sp)
    /* 12AE0C 8011BE5C AFA00014 */  sw         $zero, 0x14($sp)
    /* 12AE10 8011BE60 AFA00020 */  sw         $zero, 0x20($sp)
    /* 12AE14 8011BE64 AFA00024 */  sw         $zero, 0x24($sp)
    /* 12AE18 8011BE68 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 12AE1C 8011BE6C AFA00028 */   sw        $zero, 0x28($sp)
    /* 12AE20 8011BE70 00113203 */  sra        $a2, $s1, 8
    /* 12AE24 8011BE74 00065C00 */  sll        $t3, $a2, 16
    /* 12AE28 8011BE78 000B3403 */  sra        $a2, $t3, 16
    /* 12AE2C 8011BE7C 87A4004A */  lh         $a0, 0x4A($sp)
    /* 12AE30 8011BE80 87A50046 */  lh         $a1, 0x46($sp)
    /* 12AE34 8011BE84 0C02E360 */  jal        func_800B8D80_C7D30
    /* 12AE38 8011BE88 00003825 */   or        $a3, $zero, $zero
  .L8011BE8C_12AE3C:
    /* 12AE3C 8011BE8C 8FBF003C */  lw         $ra, 0x3C($sp)
  .L8011BE90_12AE40:
    /* 12AE40 8011BE90 8FB00034 */  lw         $s0, 0x34($sp)
    /* 12AE44 8011BE94 8FB10038 */  lw         $s1, 0x38($sp)
    /* 12AE48 8011BE98 03E00008 */  jr         $ra
    /* 12AE4C 8011BE9C 27BD0078 */   addiu     $sp, $sp, 0x78
endlabel func_8011BB94_12AB44
