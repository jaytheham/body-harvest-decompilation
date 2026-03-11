nonmatching func_800CFD84_DED34, 0x824

glabel func_800CFD84_DED34
    /* DED34 800CFD84 27BDFEF0 */  addiu      $sp, $sp, -0x110
    /* DED38 800CFD88 AFB00050 */  sw         $s0, 0x50($sp)
    /* DED3C 800CFD8C 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* DED40 800CFD90 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* DED44 800CFD94 8E020000 */  lw         $v0, 0x0($s0)
    /* DED48 800CFD98 3C038015 */  lui        $v1, %hi(D_80154276)
    /* DED4C 800CFD9C 84634276 */  lh         $v1, %lo(D_80154276)($v1)
    /* DED50 800CFDA0 244E0008 */  addiu      $t6, $v0, 0x8
    /* DED54 800CFDA4 AFBF0074 */  sw         $ra, 0x74($sp)
    /* DED58 800CFDA8 AFBE0070 */  sw         $fp, 0x70($sp)
    /* DED5C 800CFDAC AFB7006C */  sw         $s7, 0x6C($sp)
    /* DED60 800CFDB0 AFB60068 */  sw         $s6, 0x68($sp)
    /* DED64 800CFDB4 AFB50064 */  sw         $s5, 0x64($sp)
    /* DED68 800CFDB8 AFB40060 */  sw         $s4, 0x60($sp)
    /* DED6C 800CFDBC AFB3005C */  sw         $s3, 0x5C($sp)
    /* DED70 800CFDC0 AFB20058 */  sw         $s2, 0x58($sp)
    /* DED74 800CFDC4 AFB10054 */  sw         $s1, 0x54($sp)
    /* DED78 800CFDC8 F7BE0048 */  sdc1       $f30, 0x48($sp)
    /* DED7C 800CFDCC F7BC0040 */  sdc1       $f28, 0x40($sp)
    /* DED80 800CFDD0 F7BA0038 */  sdc1       $f26, 0x38($sp)
    /* DED84 800CFDD4 F7B80030 */  sdc1       $f24, 0x30($sp)
    /* DED88 800CFDD8 F7B60028 */  sdc1       $f22, 0x28($sp)
    /* DED8C 800CFDDC F7B40020 */  sdc1       $f20, 0x20($sp)
    /* DED90 800CFDE0 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DED94 800CFDE4 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* DED98 800CFDE8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* DED9C 800CFDEC AC400004 */  sw         $zero, 0x4($v0)
    /* DEDA0 800CFDF0 8E020000 */  lw         $v0, 0x0($s0)
    /* DEDA4 800CFDF4 3C19E800 */  lui        $t9, (0xE8000000 >> 16)
    /* DEDA8 800CFDF8 3C0FBA00 */  lui        $t7, (0xBA001402 >> 16)
    /* DEDAC 800CFDFC 24580008 */  addiu      $t8, $v0, 0x8
    /* DEDB0 800CFE00 AE180000 */  sw         $t8, 0x0($s0)
    /* DEDB4 800CFE04 AC400004 */  sw         $zero, 0x4($v0)
    /* DEDB8 800CFE08 AC590000 */  sw         $t9, 0x0($v0)
    /* DEDBC 800CFE0C 8E020000 */  lw         $v0, 0x0($s0)
    /* DEDC0 800CFE10 3C180010 */  lui        $t8, (0x100000 >> 16)
    /* DEDC4 800CFE14 35EF1402 */  ori        $t7, $t7, (0xBA001402 & 0xFFFF)
    /* DEDC8 800CFE18 244E0008 */  addiu      $t6, $v0, 0x8
    /* DEDCC 800CFE1C AE0E0000 */  sw         $t6, 0x0($s0)
    /* DEDD0 800CFE20 AC580004 */  sw         $t8, 0x4($v0)
    /* DEDD4 800CFE24 AC4F0000 */  sw         $t7, 0x0($v0)
    /* DEDD8 800CFE28 8E020000 */  lw         $v0, 0x0($s0)
    /* DEDDC 800CFE2C 3C0F0C18 */  lui        $t7, (0xC1849D8 >> 16)
    /* DEDE0 800CFE30 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
    /* DEDE4 800CFE34 24590008 */  addiu      $t9, $v0, 0x8
    /* DEDE8 800CFE38 AE190000 */  sw         $t9, 0x0($s0)
    /* DEDEC 800CFE3C 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
    /* DEDF0 800CFE40 35EF49D8 */  ori        $t7, $t7, (0xC1849D8 & 0xFFFF)
    /* DEDF4 800CFE44 AC4F0004 */  sw         $t7, 0x4($v0)
    /* DEDF8 800CFE48 AC4E0000 */  sw         $t6, 0x0($v0)
    /* DEDFC 800CFE4C 8E020000 */  lw         $v0, 0x0($s0)
    /* DEE00 800CFE50 3C190003 */  lui        $t9, (0x32000 >> 16)
    /* DEE04 800CFE54 3C1FB700 */  lui        $ra, (0xB7000000 >> 16)
    /* DEE08 800CFE58 24580008 */  addiu      $t8, $v0, 0x8
    /* DEE0C 800CFE5C AE180000 */  sw         $t8, 0x0($s0)
    /* DEE10 800CFE60 37392000 */  ori        $t9, $t9, (0x32000 & 0xFFFF)
    /* DEE14 800CFE64 AC590004 */  sw         $t9, 0x4($v0)
    /* DEE18 800CFE68 AC5F0000 */  sw         $ra, 0x0($v0)
    /* DEE1C 800CFE6C 8E020000 */  lw         $v0, 0x0($s0)
    /* DEE20 800CFE70 240F0001 */  addiu      $t7, $zero, 0x1
    /* DEE24 800CFE74 3C19BA00 */  lui        $t9, (0xBA001301 >> 16)
    /* DEE28 800CFE78 244E0008 */  addiu      $t6, $v0, 0x8
    /* DEE2C 800CFE7C AE0E0000 */  sw         $t6, 0x0($s0)
    /* DEE30 800CFE80 AC4F0004 */  sw         $t7, 0x4($v0)
    /* DEE34 800CFE84 AC5F0000 */  sw         $ra, 0x0($v0)
    /* DEE38 800CFE88 8E020000 */  lw         $v0, 0x0($s0)
    /* DEE3C 800CFE8C 3C0E0008 */  lui        $t6, (0x80000 >> 16)
    /* DEE40 800CFE90 37391301 */  ori        $t9, $t9, (0xBA001301 & 0xFFFF)
    /* DEE44 800CFE94 24580008 */  addiu      $t8, $v0, 0x8
    /* DEE48 800CFE98 AE180000 */  sw         $t8, 0x0($s0)
    /* DEE4C 800CFE9C AC4E0004 */  sw         $t6, 0x4($v0)
    /* DEE50 800CFEA0 AC590000 */  sw         $t9, 0x0($v0)
    /* DEE54 800CFEA4 8E020000 */  lw         $v0, 0x0($s0)
    /* DEE58 800CFEA8 3C18BA00 */  lui        $t8, (0xBA000E02 >> 16)
    /* DEE5C 800CFEAC 37180E02 */  ori        $t8, $t8, (0xBA000E02 & 0xFFFF)
    /* DEE60 800CFEB0 244F0008 */  addiu      $t7, $v0, 0x8
    /* DEE64 800CFEB4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* DEE68 800CFEB8 AC400004 */  sw         $zero, 0x4($v0)
    /* DEE6C 800CFEBC AC580000 */  sw         $t8, 0x0($v0)
    /* DEE70 800CFEC0 8E020000 */  lw         $v0, 0x0($s0)
    /* DEE74 800CFEC4 3C0EBA00 */  lui        $t6, (0xBA001001 >> 16)
    /* DEE78 800CFEC8 35CE1001 */  ori        $t6, $t6, (0xBA001001 & 0xFFFF)
    /* DEE7C 800CFECC 24590008 */  addiu      $t9, $v0, 0x8
    /* DEE80 800CFED0 AE190000 */  sw         $t9, 0x0($s0)
    /* DEE84 800CFED4 AC400004 */  sw         $zero, 0x4($v0)
    /* DEE88 800CFED8 AC4E0000 */  sw         $t6, 0x0($v0)
    /* DEE8C 800CFEDC 8E020000 */  lw         $v0, 0x0($s0)
    /* DEE90 800CFEE0 3C191000 */  lui        $t9, (0x10001000 >> 16)
    /* DEE94 800CFEE4 3C18BB00 */  lui        $t8, (0xBB000001 >> 16)
    /* DEE98 800CFEE8 244F0008 */  addiu      $t7, $v0, 0x8
    /* DEE9C 800CFEEC AE0F0000 */  sw         $t7, 0x0($s0)
    /* DEEA0 800CFEF0 37180001 */  ori        $t8, $t8, (0xBB000001 & 0xFFFF)
    /* DEEA4 800CFEF4 37391000 */  ori        $t9, $t9, (0x10001000 & 0xFFFF)
    /* DEEA8 800CFEF8 AC590004 */  sw         $t9, 0x4($v0)
    /* DEEAC 800CFEFC AC580000 */  sw         $t8, 0x0($v0)
    /* DEEB0 800CFF00 8E020000 */  lw         $v0, 0x0($s0)
    /* DEEB4 800CFF04 3C18FF0F */  lui        $t8, (0xFF0FFFFF >> 16)
    /* DEEB8 800CFF08 3C0FFC11 */  lui        $t7, (0xFC119603 >> 16)
    /* DEEBC 800CFF0C 244E0008 */  addiu      $t6, $v0, 0x8
    /* DEEC0 800CFF10 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DEEC4 800CFF14 35EF9603 */  ori        $t7, $t7, (0xFC119603 & 0xFFFF)
    /* DEEC8 800CFF18 3718FFFF */  ori        $t8, $t8, (0xFF0FFFFF & 0xFFFF)
    /* DEECC 800CFF1C 2401FFFA */  addiu      $at, $zero, -0x6
    /* DEED0 800CFF20 AC580004 */  sw         $t8, 0x4($v0)
    /* DEED4 800CFF24 1061018E */  beq        $v1, $at, .L800D0560_DF510
    /* DEED8 800CFF28 AC4F0000 */   sw        $t7, 0x0($v0)
    /* DEEDC 800CFF2C 2401FFFB */  addiu      $at, $zero, -0x5
    /* DEEE0 800CFF30 1061018B */  beq        $v1, $at, .L800D0560_DF510
    /* DEEE4 800CFF34 3C1E8015 */   lui       $fp, %hi(D_80156EDA)
    /* DEEE8 800CFF38 3C01437A */  lui        $at, (0x437A0000 >> 16)
    /* DEEEC 800CFF3C 4481F000 */  mtc1       $at, $f30
    /* DEEF0 800CFF40 3C018014 */  lui        $at, %hi(D_80144010)
    /* DEEF4 800CFF44 C43C4010 */  lwc1       $f28, %lo(D_80144010)($at)
    /* DEEF8 800CFF48 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* DEEFC 800CFF4C 4481D000 */  mtc1       $at, $f26
    /* DEF00 800CFF50 3C014020 */  lui        $at, (0x40200000 >> 16)
    /* DEF04 800CFF54 4481C000 */  mtc1       $at, $f24
    /* DEF08 800CFF58 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
    /* DEF0C 800CFF5C 4481B000 */  mtc1       $at, $f22
    /* DEF10 800CFF60 3C018014 */  lui        $at, %hi(D_80144014)
    /* DEF14 800CFF64 3C158006 */  lui        $s5, %hi(D_8005BB38)
    /* DEF18 800CFF68 26B5BB38 */  addiu      $s5, $s5, %lo(D_8005BB38)
    /* DEF1C 800CFF6C C4344014 */  lwc1       $f20, %lo(D_80144014)($at)
    /* DEF20 800CFF70 27DE6EDA */  addiu      $fp, $fp, %lo(D_80156EDA)
    /* DEF24 800CFF74 3C17FA00 */  lui        $s7, (0xFA000000 >> 16)
    /* DEF28 800CFF78 24160014 */  addiu      $s6, $zero, 0x14
    /* DEF2C 800CFF7C 0003C8C0 */  sll        $t9, $v1, 3
  .L800CFF80_DEF30:
    /* DEF30 800CFF80 0323C823 */  subu       $t9, $t9, $v1
    /* DEF34 800CFF84 3C0E8015 */  lui        $t6, %hi(D_80154318)
    /* DEF38 800CFF88 25CE4318 */  addiu      $t6, $t6, %lo(D_80154318)
    /* DEF3C 800CFF8C 0019C880 */  sll        $t9, $t9, 2
    /* DEF40 800CFF90 032E9821 */  addu       $s3, $t9, $t6
    /* DEF44 800CFF94 8E6F0014 */  lw         $t7, 0x14($s3)
    /* DEF48 800CFF98 26710008 */  addiu      $s1, $s3, 0x8
    /* DEF4C 800CFF9C 29E10009 */  slti       $at, $t7, 0x9
    /* DEF50 800CFFA0 5420016A */  bnel       $at, $zero, .L800D054C_DF4FC
    /* DEF54 800CFFA4 86630004 */   lh        $v1, 0x4($s3)
    /* DEF58 800CFFA8 8E24000C */  lw         $a0, 0xC($s1)
    /* DEF5C 800CFFAC 28810014 */  slti       $at, $a0, 0x14
    /* DEF60 800CFFB0 10200032 */  beqz       $at, .L800D007C_DF02C
    /* DEF64 800CFFB4 02C47823 */   subu      $t7, $s6, $a0
    /* DEF68 800CFFB8 86620002 */  lh         $v0, 0x2($s3)
    /* DEF6C 800CFFBC 2498FFFB */  addiu      $t8, $a0, -0x5
    /* DEF70 800CFFC0 44984000 */  mtc1       $t8, $f8
    /* DEF74 800CFFC4 04400003 */  bltz       $v0, .L800CFFD4_DEF84
    /* DEF78 800CFFC8 00021823 */   negu      $v1, $v0
    /* DEF7C 800CFFCC 10000001 */  b          .L800CFFD4_DEF84
    /* DEF80 800CFFD0 00401825 */   or        $v1, $v0, $zero
  .L800CFFD4_DEF84:
    /* DEF84 800CFFD4 468042A0 */  cvt.s.w    $f10, $f8
    /* DEF88 800CFFD8 44832000 */  mtc1       $v1, $f4
    /* DEF8C 800CFFDC 00021823 */  negu       $v1, $v0
    /* DEF90 800CFFE0 468021A0 */  cvt.s.w    $f6, $f4
    /* DEF94 800CFFE4 460AA402 */  mul.s      $f16, $f20, $f10
    /* DEF98 800CFFE8 00000000 */  nop
    /* DEF9C 800CFFEC 46103482 */  mul.s      $f18, $f6, $f16
    /* DEFA0 800CFFF0 4600910D */  trunc.w.s  $f4, $f18
    /* DEFA4 800CFFF4 440E2000 */  mfc1       $t6, $f4
    /* DEFA8 800CFFF8 04400003 */  bltz       $v0, .L800D0008_DEFB8
    /* DEFAC 800CFFFC A7AE00F4 */   sh        $t6, 0xF4($sp)
    /* DEFB0 800D0000 10000001 */  b          .L800D0008_DEFB8
    /* DEFB4 800D0004 00401825 */   or        $v1, $v0, $zero
  .L800D0008_DEFB8:
    /* DEFB8 800D0008 8E2F000C */  lw         $t7, 0xC($s1)
    /* DEFBC 800D000C 44834000 */  mtc1       $v1, $f8
    /* DEFC0 800D0010 00021823 */  negu       $v1, $v0
    /* DEFC4 800D0014 25F8FFFB */  addiu      $t8, $t7, -0x5
    /* DEFC8 800D0018 44983000 */  mtc1       $t8, $f6
    /* DEFCC 800D001C 468042A0 */  cvt.s.w    $f10, $f8
    /* DEFD0 800D0020 46803420 */  cvt.s.w    $f16, $f6
    /* DEFD4 800D0024 4610A482 */  mul.s      $f18, $f20, $f16
    /* DEFD8 800D0028 00000000 */  nop
    /* DEFDC 800D002C 46125102 */  mul.s      $f4, $f10, $f18
    /* DEFE0 800D0030 4600220D */  trunc.w.s  $f8, $f4
    /* DEFE4 800D0034 440E4000 */  mfc1       $t6, $f8
    /* DEFE8 800D0038 04400003 */  bltz       $v0, .L800D0048_DEFF8
    /* DEFEC 800D003C A7AE00F6 */   sh        $t6, 0xF6($sp)
    /* DEFF0 800D0040 10000001 */  b          .L800D0048_DEFF8
    /* DEFF4 800D0044 00401825 */   or        $v1, $v0, $zero
  .L800D0048_DEFF8:
    /* DEFF8 800D0048 8E2F000C */  lw         $t7, 0xC($s1)
    /* DEFFC 800D004C 44833000 */  mtc1       $v1, $f6
    /* DF000 800D0050 25F8FFFB */  addiu      $t8, $t7, -0x5
    /* DF004 800D0054 44985000 */  mtc1       $t8, $f10
    /* DF008 800D0058 46803420 */  cvt.s.w    $f16, $f6
    /* DF00C 800D005C 468054A0 */  cvt.s.w    $f18, $f10
    /* DF010 800D0060 4612A102 */  mul.s      $f4, $f20, $f18
    /* DF014 800D0064 00000000 */  nop
    /* DF018 800D0068 46048202 */  mul.s      $f8, $f16, $f4
    /* DF01C 800D006C 4600418D */  trunc.w.s  $f6, $f8
    /* DF020 800D0070 440E3000 */  mfc1       $t6, $f6
    /* DF024 800D0074 10000031 */  b          .L800D013C_DF0EC
    /* DF028 800D0078 A7AE00F8 */   sh        $t6, 0xF8($sp)
  .L800D007C_DF02C:
    /* DF02C 800D007C 86620002 */  lh         $v0, 0x2($s3)
    /* DF030 800D0080 448F8000 */  mtc1       $t7, $f16
    /* DF034 800D0084 04400003 */  bltz       $v0, .L800D0094_DF044
    /* DF038 800D0088 46808120 */   cvt.s.w   $f4, $f16
    /* DF03C 800D008C 10000002 */  b          .L800D0098_DF048
    /* DF040 800D0090 00401825 */   or        $v1, $v0, $zero
  .L800D0094_DF044:
    /* DF044 800D0094 00021823 */  negu       $v1, $v0
  .L800D0098_DF048:
    /* DF048 800D0098 4604C202 */  mul.s      $f8, $f24, $f4
    /* DF04C 800D009C 44835000 */  mtc1       $v1, $f10
    /* DF050 800D00A0 00021823 */  negu       $v1, $v0
    /* DF054 800D00A4 468054A0 */  cvt.s.w    $f18, $f10
    /* DF058 800D00A8 4608B180 */  add.s      $f6, $f22, $f8
    /* DF05C 800D00AC 46069282 */  mul.s      $f10, $f18, $f6
    /* DF060 800D00B0 4600540D */  trunc.w.s  $f16, $f10
    /* DF064 800D00B4 44198000 */  mfc1       $t9, $f16
    /* DF068 800D00B8 04400003 */  bltz       $v0, .L800D00C8_DF078
    /* DF06C 800D00BC A7B900F4 */   sh        $t9, 0xF4($sp)
    /* DF070 800D00C0 10000001 */  b          .L800D00C8_DF078
    /* DF074 800D00C4 00401825 */   or        $v1, $v0, $zero
  .L800D00C8_DF078:
    /* DF078 800D00C8 8E2E000C */  lw         $t6, 0xC($s1)
    /* DF07C 800D00CC 44832000 */  mtc1       $v1, $f4
    /* DF080 800D00D0 00021823 */  negu       $v1, $v0
    /* DF084 800D00D4 02CE7823 */  subu       $t7, $s6, $t6
    /* DF088 800D00D8 448F9000 */  mtc1       $t7, $f18
    /* DF08C 800D00DC 46802220 */  cvt.s.w    $f8, $f4
    /* DF090 800D00E0 468091A0 */  cvt.s.w    $f6, $f18
    /* DF094 800D00E4 4606C282 */  mul.s      $f10, $f24, $f6
    /* DF098 800D00E8 460AB400 */  add.s      $f16, $f22, $f10
    /* DF09C 800D00EC 46104102 */  mul.s      $f4, $f8, $f16
    /* DF0A0 800D00F0 4600248D */  trunc.w.s  $f18, $f4
    /* DF0A4 800D00F4 44199000 */  mfc1       $t9, $f18
    /* DF0A8 800D00F8 04400003 */  bltz       $v0, .L800D0108_DF0B8
    /* DF0AC 800D00FC A7B900F6 */   sh        $t9, 0xF6($sp)
    /* DF0B0 800D0100 10000001 */  b          .L800D0108_DF0B8
    /* DF0B4 800D0104 00401825 */   or        $v1, $v0, $zero
  .L800D0108_DF0B8:
    /* DF0B8 800D0108 8E2E000C */  lw         $t6, 0xC($s1)
    /* DF0BC 800D010C 44833000 */  mtc1       $v1, $f6
    /* DF0C0 800D0110 02CE7823 */  subu       $t7, $s6, $t6
    /* DF0C4 800D0114 448F4000 */  mtc1       $t7, $f8
    /* DF0C8 800D0118 468032A0 */  cvt.s.w    $f10, $f6
    /* DF0CC 800D011C 46804420 */  cvt.s.w    $f16, $f8
    /* DF0D0 800D0120 4610C102 */  mul.s      $f4, $f24, $f16
    /* DF0D4 800D0124 4604B480 */  add.s      $f18, $f22, $f4
    /* DF0D8 800D0128 46125182 */  mul.s      $f6, $f10, $f18
    /* DF0DC 800D012C 4600320D */  trunc.w.s  $f8, $f6
    /* DF0E0 800D0130 44194000 */  mfc1       $t9, $f8
    /* DF0E4 800D0134 00000000 */  nop
    /* DF0E8 800D0138 A7B900F8 */  sh         $t9, 0xF8($sp)
  .L800D013C_DF0EC:
    /* DF0EC 800D013C 3C018004 */  lui        $at, %hi(D_80047954)
    /* DF0F0 800D0140 C4307954 */  lwc1       $f16, %lo(D_80047954)($at)
    /* DF0F4 800D0144 3C018004 */  lui        $at, %hi(D_8004795C)
    /* DF0F8 800D0148 C432795C */  lwc1       $f18, %lo(D_8004795C)($at)
    /* DF0FC 800D014C 461A8102 */  mul.s      $f4, $f16, $f26
    /* DF100 800D0150 24184000 */  addiu      $t8, $zero, 0x4000
    /* DF104 800D0154 86240000 */  lh         $a0, 0x0($s1)
    /* DF108 800D0158 461A9182 */  mul.s      $f6, $f18, $f26
    /* DF10C 800D015C 86250004 */  lh         $a1, 0x4($s1)
    /* DF110 800D0160 97A600F4 */  lhu        $a2, 0xF4($sp)
    /* DF114 800D0164 4600228D */  trunc.w.s  $f10, $f4
    /* DF118 800D0168 4600320D */  trunc.w.s  $f8, $f6
    /* DF11C 800D016C 44075000 */  mfc1       $a3, $f10
    /* DF120 800D0170 00000000 */  nop
    /* DF124 800D0174 00077C00 */  sll        $t7, $a3, 16
    /* DF128 800D0178 000F3C03 */  sra        $a3, $t7, 16
    /* DF12C 800D017C 3C0F8004 */  lui        $t7, %hi(D_80047950)
    /* DF130 800D0180 85EF7950 */  lh         $t7, %lo(D_80047950)($t7)
    /* DF134 800D0184 440E4000 */  mfc1       $t6, $f8
    /* DF138 800D0188 030FC823 */  subu       $t9, $t8, $t7
    /* DF13C 800D018C AFB90014 */  sw         $t9, 0x14($sp)
    /* DF140 800D0190 0C02E4EB */  jal        func_800B93AC_C835C
    /* DF144 800D0194 AFAE0010 */   sw        $t6, 0x10($sp)
    /* DF148 800D0198 504000EC */  beql       $v0, $zero, .L800D054C_DF4FC
    /* DF14C 800D019C 86630004 */   lh        $v1, 0x4($s3)
    /* DF150 800D01A0 8E2E000C */  lw         $t6, 0xC($s1)
    /* DF154 800D01A4 3C140503 */  lui        $s4, %hi(D_50332A0)
    /* DF158 800D01A8 269432A0 */  addiu      $s4, $s4, %lo(D_50332A0)
    /* DF15C 800D01AC 29C10014 */  slti       $at, $t6, 0x14
    /* DF160 800D01B0 50200038 */  beql       $at, $zero, .L800D0294_DF244
    /* DF164 800D01B4 8E030000 */   lw        $v1, 0x0($s0)
    /* DF168 800D01B8 8E030000 */  lw         $v1, 0x0($s0)
    /* DF16C 800D01BC 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* DF170 800D01C0 24780008 */  addiu      $t8, $v1, 0x8
    /* DF174 800D01C4 AE180000 */  sw         $t8, 0x0($s0)
    /* DF178 800D01C8 AC770000 */  sw         $s7, 0x0($v1)
    /* DF17C 800D01CC 92390006 */  lbu        $t9, 0x6($s1)
    /* DF180 800D01D0 922F0007 */  lbu        $t7, 0x7($s1)
    /* DF184 800D01D4 00197600 */  sll        $t6, $t9, 24
    /* DF188 800D01D8 000FCC00 */  sll        $t9, $t7, 16
    /* DF18C 800D01DC 01D9C025 */  or         $t8, $t6, $t9
    /* DF190 800D01E0 922E0008 */  lbu        $t6, 0x8($s1)
    /* DF194 800D01E4 000ECA00 */  sll        $t9, $t6, 8
    /* DF198 800D01E8 8E2E000C */  lw         $t6, 0xC($s1)
    /* DF19C 800D01EC 03197825 */  or         $t7, $t8, $t9
    /* DF1A0 800D01F0 25D8FFF8 */  addiu      $t8, $t6, -0x8
    /* DF1A4 800D01F4 44988000 */  mtc1       $t8, $f16
    /* DF1A8 800D01F8 240E0001 */  addiu      $t6, $zero, 0x1
    /* DF1AC 800D01FC 46808120 */  cvt.s.w    $f4, $f16
    /* DF1B0 800D0200 461C2282 */  mul.s      $f10, $f4, $f28
    /* DF1B4 800D0204 4459F800 */  cfc1       $t9, $31
    /* DF1B8 800D0208 44CEF800 */  ctc1       $t6, $31
    /* DF1BC 800D020C 00000000 */  nop
    /* DF1C0 800D0210 460054A4 */  cvt.w.s    $f18, $f10
    /* DF1C4 800D0214 444EF800 */  cfc1       $t6, $31
    /* DF1C8 800D0218 00000000 */  nop
    /* DF1CC 800D021C 31CE0078 */  andi       $t6, $t6, 0x78
    /* DF1D0 800D0220 51C00013 */  beql       $t6, $zero, .L800D0270_DF220
    /* DF1D4 800D0224 440E9000 */   mfc1      $t6, $f18
    /* DF1D8 800D0228 44819000 */  mtc1       $at, $f18
    /* DF1DC 800D022C 240E0001 */  addiu      $t6, $zero, 0x1
    /* DF1E0 800D0230 46125481 */  sub.s      $f18, $f10, $f18
    /* DF1E4 800D0234 44CEF800 */  ctc1       $t6, $31
    /* DF1E8 800D0238 00000000 */  nop
    /* DF1EC 800D023C 460094A4 */  cvt.w.s    $f18, $f18
    /* DF1F0 800D0240 444EF800 */  cfc1       $t6, $31
    /* DF1F4 800D0244 00000000 */  nop
    /* DF1F8 800D0248 31CE0078 */  andi       $t6, $t6, 0x78
    /* DF1FC 800D024C 15C00005 */  bnez       $t6, .L800D0264_DF214
    /* DF200 800D0250 00000000 */   nop
    /* DF204 800D0254 440E9000 */  mfc1       $t6, $f18
    /* DF208 800D0258 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* DF20C 800D025C 10000007 */  b          .L800D027C_DF22C
    /* DF210 800D0260 01C17025 */   or        $t6, $t6, $at
  .L800D0264_DF214:
    /* DF214 800D0264 10000005 */  b          .L800D027C_DF22C
    /* DF218 800D0268 240EFFFF */   addiu     $t6, $zero, -0x1
    /* DF21C 800D026C 440E9000 */  mfc1       $t6, $f18
  .L800D0270_DF220:
    /* DF220 800D0270 00000000 */  nop
    /* DF224 800D0274 05C0FFFB */  bltz       $t6, .L800D0264_DF214
    /* DF228 800D0278 00000000 */   nop
  .L800D027C_DF22C:
    /* DF22C 800D027C 44D9F800 */  ctc1       $t9, $31
    /* DF230 800D0280 31D800FF */  andi       $t8, $t6, 0xFF
    /* DF234 800D0284 01F8C825 */  or         $t9, $t7, $t8
    /* DF238 800D0288 10000039 */  b          .L800D0370_DF320
    /* DF23C 800D028C AC790004 */   sw        $t9, 0x4($v1)
    /* DF240 800D0290 8E030000 */  lw         $v1, 0x0($s0)
  .L800D0294_DF244:
    /* DF244 800D0294 3C014248 */  lui        $at, (0x42480000 >> 16)
    /* DF248 800D0298 44818000 */  mtc1       $at, $f16
    /* DF24C 800D029C 246E0008 */  addiu      $t6, $v1, 0x8
    /* DF250 800D02A0 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DF254 800D02A4 AC770000 */  sw         $s7, 0x0($v1)
    /* DF258 800D02A8 92380006 */  lbu        $t8, 0x6($s1)
    /* DF25C 800D02AC 922F0007 */  lbu        $t7, 0x7($s1)
    /* DF260 800D02B0 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* DF264 800D02B4 0018CE00 */  sll        $t9, $t8, 24
    /* DF268 800D02B8 000FC400 */  sll        $t8, $t7, 16
    /* DF26C 800D02BC 03387025 */  or         $t6, $t9, $t8
    /* DF270 800D02C0 92390008 */  lbu        $t9, 0x8($s1)
    /* DF274 800D02C4 0019C200 */  sll        $t8, $t9, 8
    /* DF278 800D02C8 8E39000C */  lw         $t9, 0xC($s1)
    /* DF27C 800D02CC 01D87825 */  or         $t7, $t6, $t8
    /* DF280 800D02D0 02D97023 */  subu       $t6, $s6, $t9
    /* DF284 800D02D4 448E3000 */  mtc1       $t6, $f6
    /* DF288 800D02D8 24190001 */  addiu      $t9, $zero, 0x1
    /* DF28C 800D02DC 46803220 */  cvt.s.w    $f8, $f6
    /* DF290 800D02E0 46104102 */  mul.s      $f4, $f8, $f16
    /* DF294 800D02E4 4604F280 */  add.s      $f10, $f30, $f4
    /* DF298 800D02E8 4458F800 */  cfc1       $t8, $31
    /* DF29C 800D02EC 44D9F800 */  ctc1       $t9, $31
    /* DF2A0 800D02F0 00000000 */  nop
    /* DF2A4 800D02F4 460054A4 */  cvt.w.s    $f18, $f10
    /* DF2A8 800D02F8 4459F800 */  cfc1       $t9, $31
    /* DF2AC 800D02FC 00000000 */  nop
    /* DF2B0 800D0300 33390078 */  andi       $t9, $t9, 0x78
    /* DF2B4 800D0304 53200013 */  beql       $t9, $zero, .L800D0354_DF304
    /* DF2B8 800D0308 44199000 */   mfc1      $t9, $f18
    /* DF2BC 800D030C 44819000 */  mtc1       $at, $f18
    /* DF2C0 800D0310 24190001 */  addiu      $t9, $zero, 0x1
    /* DF2C4 800D0314 46125481 */  sub.s      $f18, $f10, $f18
    /* DF2C8 800D0318 44D9F800 */  ctc1       $t9, $31
    /* DF2CC 800D031C 00000000 */  nop
    /* DF2D0 800D0320 460094A4 */  cvt.w.s    $f18, $f18
    /* DF2D4 800D0324 4459F800 */  cfc1       $t9, $31
    /* DF2D8 800D0328 00000000 */  nop
    /* DF2DC 800D032C 33390078 */  andi       $t9, $t9, 0x78
    /* DF2E0 800D0330 17200005 */  bnez       $t9, .L800D0348_DF2F8
    /* DF2E4 800D0334 00000000 */   nop
    /* DF2E8 800D0338 44199000 */  mfc1       $t9, $f18
    /* DF2EC 800D033C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* DF2F0 800D0340 10000007 */  b          .L800D0360_DF310
    /* DF2F4 800D0344 0321C825 */   or        $t9, $t9, $at
  .L800D0348_DF2F8:
    /* DF2F8 800D0348 10000005 */  b          .L800D0360_DF310
    /* DF2FC 800D034C 2419FFFF */   addiu     $t9, $zero, -0x1
    /* DF300 800D0350 44199000 */  mfc1       $t9, $f18
  .L800D0354_DF304:
    /* DF304 800D0354 00000000 */  nop
    /* DF308 800D0358 0720FFFB */  bltz       $t9, .L800D0348_DF2F8
    /* DF30C 800D035C 00000000 */   nop
  .L800D0360_DF310:
    /* DF310 800D0360 44D8F800 */  ctc1       $t8, $31
    /* DF314 800D0364 332E00FF */  andi       $t6, $t9, 0xFF
    /* DF318 800D0368 01EEC025 */  or         $t8, $t7, $t6
    /* DF31C 800D036C AC780004 */  sw         $t8, 0x4($v1)
  .L800D0370_DF320:
    /* DF320 800D0370 8E39000C */  lw         $t9, 0xC($s1)
    /* DF324 800D0374 A7A000FE */  sh         $zero, 0xFE($sp)
    /* DF328 800D0378 A7A00100 */  sh         $zero, 0x100($sp)
    /* DF32C 800D037C 00197A80 */  sll        $t7, $t9, 10
    /* DF330 800D0380 A7AF00FC */  sh         $t7, 0xFC($sp)
    /* DF334 800D0384 862E0000 */  lh         $t6, 0x0($s1)
    /* DF338 800D0388 27A40104 */  addiu      $a0, $sp, 0x104
    /* DF33C 800D038C 27A500FC */  addiu      $a1, $sp, 0xFC
    /* DF340 800D0390 A7AE0104 */  sh         $t6, 0x104($sp)
    /* DF344 800D0394 86380002 */  lh         $t8, 0x2($s1)
    /* DF348 800D0398 27A600F4 */  addiu      $a2, $sp, 0xF4
    /* DF34C 800D039C 8EA70000 */  lw         $a3, 0x0($s5)
    /* DF350 800D03A0 A7B80106 */  sh         $t8, 0x106($sp)
    /* DF354 800D03A4 86390004 */  lh         $t9, 0x4($s1)
    /* DF358 800D03A8 A7B90108 */  sh         $t9, 0x108($sp)
    /* DF35C 800D03AC 8E32000C */  lw         $s2, 0xC($s1)
    /* DF360 800D03B0 06410004 */  bgez       $s2, .L800D03C4_DF374
    /* DF364 800D03B4 324F0007 */   andi      $t7, $s2, 0x7
    /* DF368 800D03B8 11E00002 */  beqz       $t7, .L800D03C4_DF374
    /* DF36C 800D03BC 00000000 */   nop
    /* DF370 800D03C0 25EFFFF8 */  addiu      $t7, $t7, -0x8
  .L800D03C4_DF374:
    /* DF374 800D03C4 000FC600 */  sll        $t8, $t7, 24
    /* DF378 800D03C8 0C000E74 */  jal        func_800039D0_45D0
    /* DF37C 800D03CC 00189403 */   sra       $s2, $t8, 16
    /* DF380 800D03D0 8E020000 */  lw         $v0, 0x0($s0)
    /* DF384 800D03D4 3C180503 */  lui        $t8, %hi(D_50327B0)
    /* DF388 800D03D8 271827B0 */  addiu      $t8, $t8, %lo(D_50327B0)
    /* DF38C 800D03DC 244F0008 */  addiu      $t7, $v0, 0x8
    /* DF390 800D03E0 AE0F0000 */  sw         $t7, 0x0($s0)
    /* DF394 800D03E4 0258C821 */  addu       $t9, $s2, $t8
    /* DF398 800D03E8 3C0EFD70 */  lui        $t6, (0xFD700000 >> 16)
    /* DF39C 800D03EC AC4E0000 */  sw         $t6, 0x0($v0)
    /* DF3A0 800D03F0 AC590004 */  sw         $t9, 0x4($v0)
    /* DF3A4 800D03F4 8E020000 */  lw         $v0, 0x0($s0)
    /* DF3A8 800D03F8 3C180701 */  lui        $t8, (0x7010040 >> 16)
    /* DF3AC 800D03FC 37180040 */  ori        $t8, $t8, (0x7010040 & 0xFFFF)
    /* DF3B0 800D0400 244F0008 */  addiu      $t7, $v0, 0x8
    /* DF3B4 800D0404 AE0F0000 */  sw         $t7, 0x0($s0)
    /* DF3B8 800D0408 3C0EF570 */  lui        $t6, (0xF5700000 >> 16)
    /* DF3BC 800D040C AC4E0000 */  sw         $t6, 0x0($v0)
    /* DF3C0 800D0410 AC580004 */  sw         $t8, 0x4($v0)
    /* DF3C4 800D0414 8E020000 */  lw         $v0, 0x0($s0)
    /* DF3C8 800D0418 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
    /* DF3CC 800D041C 3C18F300 */  lui        $t8, (0xF3000000 >> 16)
    /* DF3D0 800D0420 24590008 */  addiu      $t9, $v0, 0x8
    /* DF3D4 800D0424 AE190000 */  sw         $t9, 0x0($s0)
    /* DF3D8 800D0428 AC400004 */  sw         $zero, 0x4($v0)
    /* DF3DC 800D042C AC4F0000 */  sw         $t7, 0x0($v0)
    /* DF3E0 800D0430 8E020000 */  lw         $v0, 0x0($s0)
    /* DF3E4 800D0434 3C190707 */  lui        $t9, (0x707F400 >> 16)
    /* DF3E8 800D0438 3739F400 */  ori        $t9, $t9, (0x707F400 & 0xFFFF)
    /* DF3EC 800D043C 244E0008 */  addiu      $t6, $v0, 0x8
    /* DF3F0 800D0440 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DF3F4 800D0444 AC590004 */  sw         $t9, 0x4($v0)
    /* DF3F8 800D0448 AC580000 */  sw         $t8, 0x0($v0)
    /* DF3FC 800D044C 8E020000 */  lw         $v0, 0x0($s0)
    /* DF400 800D0450 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
    /* DF404 800D0454 3C18F568 */  lui        $t8, (0xF5680400 >> 16)
    /* DF408 800D0458 244F0008 */  addiu      $t7, $v0, 0x8
    /* DF40C 800D045C AE0F0000 */  sw         $t7, 0x0($s0)
    /* DF410 800D0460 AC400004 */  sw         $zero, 0x4($v0)
    /* DF414 800D0464 AC4D0000 */  sw         $t5, 0x0($v0)
    /* DF418 800D0468 8E020000 */  lw         $v0, 0x0($s0)
    /* DF41C 800D046C 3C190001 */  lui        $t9, (0x10040 >> 16)
    /* DF420 800D0470 37390040 */  ori        $t9, $t9, (0x10040 & 0xFFFF)
    /* DF424 800D0474 244E0008 */  addiu      $t6, $v0, 0x8
    /* DF428 800D0478 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DF42C 800D047C 37180400 */  ori        $t8, $t8, (0xF5680400 & 0xFFFF)
    /* DF430 800D0480 AC580000 */  sw         $t8, 0x0($v0)
    /* DF434 800D0484 AC590004 */  sw         $t9, 0x4($v0)
    /* DF438 800D0488 8E020000 */  lw         $v0, 0x0($s0)
    /* DF43C 800D048C 3C180003 */  lui        $t8, (0x3C03C >> 16)
    /* DF440 800D0490 3718C03C */  ori        $t8, $t8, (0x3C03C & 0xFFFF)
    /* DF444 800D0494 244F0008 */  addiu      $t7, $v0, 0x8
    /* DF448 800D0498 AE0F0000 */  sw         $t7, 0x0($s0)
    /* DF44C 800D049C 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* DF450 800D04A0 AC4E0000 */  sw         $t6, 0x0($v0)
    /* DF454 800D04A4 AC580004 */  sw         $t8, 0x4($v0)
    /* DF458 800D04A8 8E020000 */  lw         $v0, 0x0($s0)
    /* DF45C 800D04AC 3C0EE800 */  lui        $t6, (0xE8000000 >> 16)
    /* DF460 800D04B0 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* DF464 800D04B4 24590008 */  addiu      $t9, $v0, 0x8
    /* DF468 800D04B8 AE190000 */  sw         $t9, 0x0($s0)
    /* DF46C 800D04BC AC400004 */  sw         $zero, 0x4($v0)
    /* DF470 800D04C0 AC4D0000 */  sw         $t5, 0x0($v0)
    /* DF474 800D04C4 8E020000 */  lw         $v0, 0x0($s0)
    /* DF478 800D04C8 3C190104 */  lui        $t9, (0x1040040 >> 16)
    /* DF47C 800D04CC 37390040 */  ori        $t9, $t9, (0x1040040 & 0xFFFF)
    /* DF480 800D04D0 244F0008 */  addiu      $t7, $v0, 0x8
    /* DF484 800D04D4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* DF488 800D04D8 AC400004 */  sw         $zero, 0x4($v0)
    /* DF48C 800D04DC AC4E0000 */  sw         $t6, 0x0($v0)
    /* DF490 800D04E0 8E020000 */  lw         $v0, 0x0($s0)
    /* DF494 800D04E4 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* DF498 800D04E8 24580008 */  addiu      $t8, $v0, 0x8
    /* DF49C 800D04EC AE180000 */  sw         $t8, 0x0($s0)
    /* DF4A0 800D04F0 AC590000 */  sw         $t9, 0x0($v0)
    /* DF4A4 800D04F4 8EAF0000 */  lw         $t7, 0x0($s5)
    /* DF4A8 800D04F8 01E17024 */  and        $t6, $t7, $at
    /* DF4AC 800D04FC AC4E0004 */  sw         $t6, 0x4($v0)
    /* DF4B0 800D0500 8EB80000 */  lw         $t8, 0x0($s5)
    /* DF4B4 800D0504 8E020000 */  lw         $v0, 0x0($s0)
    /* DF4B8 800D0508 3C0E0600 */  lui        $t6, (0x6000000 >> 16)
    /* DF4BC 800D050C 27190040 */  addiu      $t9, $t8, 0x40
    /* DF4C0 800D0510 244F0008 */  addiu      $t7, $v0, 0x8
    /* DF4C4 800D0514 AEB90000 */  sw         $t9, 0x0($s5)
    /* DF4C8 800D0518 AE0F0000 */  sw         $t7, 0x0($s0)
    /* DF4CC 800D051C AC540004 */  sw         $s4, 0x4($v0)
    /* DF4D0 800D0520 AC4E0000 */  sw         $t6, 0x0($v0)
    /* DF4D4 800D0524 8E020000 */  lw         $v0, 0x0($s0)
    /* DF4D8 800D0528 3C19BD00 */  lui        $t9, (0xBD000000 >> 16)
    /* DF4DC 800D052C 24580008 */  addiu      $t8, $v0, 0x8
    /* DF4E0 800D0530 AE180000 */  sw         $t8, 0x0($s0)
    /* DF4E4 800D0534 AC400004 */  sw         $zero, 0x4($v0)
    /* DF4E8 800D0538 AC590000 */  sw         $t9, 0x0($v0)
    /* DF4EC 800D053C 87CF0000 */  lh         $t7, 0x0($fp)
    /* DF4F0 800D0540 25EE002F */  addiu      $t6, $t7, 0x2F
    /* DF4F4 800D0544 A7CE0000 */  sh         $t6, 0x0($fp)
    /* DF4F8 800D0548 86630004 */  lh         $v1, 0x4($s3)
  .L800D054C_DF4FC:
    /* DF4FC 800D054C 2401FFFA */  addiu      $at, $zero, -0x6
    /* DF500 800D0550 10610003 */  beq        $v1, $at, .L800D0560_DF510
    /* DF504 800D0554 2401FFFB */   addiu     $at, $zero, -0x5
    /* DF508 800D0558 5461FE89 */  bnel       $v1, $at, .L800CFF80_DEF30
    /* DF50C 800D055C 0003C8C0 */   sll       $t9, $v1, 3
  .L800D0560_DF510:
    /* DF510 800D0560 8FBF0074 */  lw         $ra, 0x74($sp)
    /* DF514 800D0564 D7B40020 */  ldc1       $f20, 0x20($sp)
    /* DF518 800D0568 D7B60028 */  ldc1       $f22, 0x28($sp)
    /* DF51C 800D056C D7B80030 */  ldc1       $f24, 0x30($sp)
    /* DF520 800D0570 D7BA0038 */  ldc1       $f26, 0x38($sp)
    /* DF524 800D0574 D7BC0040 */  ldc1       $f28, 0x40($sp)
    /* DF528 800D0578 D7BE0048 */  ldc1       $f30, 0x48($sp)
    /* DF52C 800D057C 8FB00050 */  lw         $s0, 0x50($sp)
    /* DF530 800D0580 8FB10054 */  lw         $s1, 0x54($sp)
    /* DF534 800D0584 8FB20058 */  lw         $s2, 0x58($sp)
    /* DF538 800D0588 8FB3005C */  lw         $s3, 0x5C($sp)
    /* DF53C 800D058C 8FB40060 */  lw         $s4, 0x60($sp)
    /* DF540 800D0590 8FB50064 */  lw         $s5, 0x64($sp)
    /* DF544 800D0594 8FB60068 */  lw         $s6, 0x68($sp)
    /* DF548 800D0598 8FB7006C */  lw         $s7, 0x6C($sp)
    /* DF54C 800D059C 8FBE0070 */  lw         $fp, 0x70($sp)
    /* DF550 800D05A0 03E00008 */  jr         $ra
    /* DF554 800D05A4 27BD0110 */   addiu     $sp, $sp, 0x110
endlabel func_800CFD84_DED34
