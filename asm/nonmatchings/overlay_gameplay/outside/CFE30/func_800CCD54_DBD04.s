nonmatching func_800CCD54_DBD04, 0x35C

glabel func_800CCD54_DBD04
    /* DBD04 800CCD54 27BDFF70 */  addiu      $sp, $sp, -0x90
    /* DBD08 800CCD58 24050010 */  addiu      $a1, $zero, 0x10
    /* DBD0C 800CCD5C 3C018015 */  lui        $at, %hi(D_80153BCD)
    /* DBD10 800CCD60 AFB00020 */  sw         $s0, 0x20($sp)
    /* DBD14 800CCD64 A0253BCD */  sb         $a1, %lo(D_80153BCD)($at)
    /* DBD18 800CCD68 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* DBD1C 800CCD6C 3C018015 */  lui        $at, %hi(D_80153BCE)
    /* DBD20 800CCD70 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* DBD24 800CCD74 A0253BCE */  sb         $a1, %lo(D_80153BCE)($at)
    /* DBD28 800CCD78 8E020000 */  lw         $v0, 0x0($s0)
    /* DBD2C 800CCD7C AFBF0044 */  sw         $ra, 0x44($sp)
    /* DBD30 800CCD80 3C1F8015 */  lui        $ra, %hi(D_80154246)
    /* DBD34 800CCD84 87FF4246 */  lh         $ra, %lo(D_80154246)($ra)
    /* DBD38 800CCD88 AFB3002C */  sw         $s3, 0x2C($sp)
    /* DBD3C 800CCD8C 244E0008 */  addiu      $t6, $v0, 0x8
    /* DBD40 800CCD90 AFBE0040 */  sw         $fp, 0x40($sp)
    /* DBD44 800CCD94 AFB7003C */  sw         $s7, 0x3C($sp)
    /* DBD48 800CCD98 AFB60038 */  sw         $s6, 0x38($sp)
    /* DBD4C 800CCD9C AFB50034 */  sw         $s5, 0x34($sp)
    /* DBD50 800CCDA0 AFB40030 */  sw         $s4, 0x30($sp)
    /* DBD54 800CCDA4 AFB20028 */  sw         $s2, 0x28($sp)
    /* DBD58 800CCDA8 AFB10024 */  sw         $s1, 0x24($sp)
    /* DBD5C 800CCDAC F7B40018 */  sdc1       $f20, 0x18($sp)
    /* DBD60 800CCDB0 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DBD64 800CCDB4 3C13E700 */  lui        $s3, (0xE7000000 >> 16)
    /* DBD68 800CCDB8 AC530000 */  sw         $s3, 0x0($v0)
    /* DBD6C 800CCDBC AC400004 */  sw         $zero, 0x4($v0)
    /* DBD70 800CCDC0 8E020000 */  lw         $v0, 0x0($s0)
    /* DBD74 800CCDC4 3C18FCFF */  lui        $t8, (0xFCFF99FF >> 16)
    /* DBD78 800CCDC8 3C19FF32 */  lui        $t9, (0xFF327F3F >> 16)
    /* DBD7C 800CCDCC 244F0008 */  addiu      $t7, $v0, 0x8
    /* DBD80 800CCDD0 AE0F0000 */  sw         $t7, 0x0($s0)
    /* DBD84 800CCDD4 37397F3F */  ori        $t9, $t9, (0xFF327F3F & 0xFFFF)
    /* DBD88 800CCDD8 371899FF */  ori        $t8, $t8, (0xFCFF99FF & 0xFFFF)
    /* DBD8C 800CCDDC 2401FFFB */  addiu      $at, $zero, -0x5
    /* DBD90 800CCDE0 AC580000 */  sw         $t8, 0x0($v0)
    /* DBD94 800CCDE4 13E1009D */  beq        $ra, $at, .L800CD05C_DC00C
    /* DBD98 800CCDE8 AC590004 */   sw        $t9, 0x4($v0)
    /* DBD9C 800CCDEC 2401FFFA */  addiu      $at, $zero, -0x6
    /* DBDA0 800CCDF0 13E1009A */  beq        $ra, $at, .L800CD05C_DC00C
    /* DBDA4 800CCDF4 241E001C */   addiu     $fp, $zero, 0x1C
    /* DBDA8 800CCDF8 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* DBDAC 800CCDFC 3C178015 */  lui        $s7, %hi(D_80154318)
    /* DBDB0 800CCE00 3C160101 */  lui        $s6, %hi(D_100E880)
    /* DBDB4 800CCE04 3C128015 */  lui        $s2, %hi(D_80153BA0)
    /* DBDB8 800CCE08 4481A000 */  mtc1       $at, $f20
    /* DBDBC 800CCE0C 26523BA0 */  addiu      $s2, $s2, %lo(D_80153BA0)
    /* DBDC0 800CCE10 26D6E880 */  addiu      $s6, $s6, %lo(D_100E880)
    /* DBDC4 800CCE14 26F74318 */  addiu      $s7, $s7, %lo(D_80154318)
    /* DBDC8 800CCE18 3C15FD90 */  lui        $s5, (0xFD900000 >> 16)
    /* DBDCC 800CCE1C 27B40084 */  addiu      $s4, $sp, 0x84
    /* DBDD0 800CCE20 8E020000 */  lw         $v0, 0x0($s0)
  .L800CCE24_DBDD4:
    /* DBDD4 800CCE24 03FE0019 */  multu      $ra, $fp
    /* DBDD8 800CCE28 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* DBDDC 800CCE2C 244E0008 */  addiu      $t6, $v0, 0x8
    /* DBDE0 800CCE30 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DBDE4 800CCE34 AC400004 */  sw         $zero, 0x4($v0)
    /* DBDE8 800CCE38 AC530000 */  sw         $s3, 0x0($v0)
    /* DBDEC 800CCE3C 8E020000 */  lw         $v0, 0x0($s0)
    /* DBDF0 800CCE40 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* DBDF4 800CCE44 02802025 */  or         $a0, $s4, $zero
    /* DBDF8 800CCE48 244F0008 */  addiu      $t7, $v0, 0x8
    /* DBDFC 800CCE4C AE0F0000 */  sw         $t7, 0x0($s0)
    /* DBE00 800CCE50 0000C012 */  mflo       $t8
    /* DBE04 800CCE54 02F88821 */  addu       $s1, $s7, $t8
    /* DBE08 800CCE58 AC550000 */  sw         $s5, 0x0($v0)
    /* DBE0C 800CCE5C 92390014 */  lbu        $t9, 0x14($s1)
    /* DBE10 800CCE60 02802825 */  or         $a1, $s4, $zero
    /* DBE14 800CCE64 001971C0 */  sll        $t6, $t9, 7
    /* DBE18 800CCE68 02CE7821 */  addu       $t7, $s6, $t6
    /* DBE1C 800CCE6C 01E1C024 */  and        $t8, $t7, $at
    /* DBE20 800CCE70 AC580004 */  sw         $t8, 0x4($v0)
    /* DBE24 800CCE74 8E020000 */  lw         $v0, 0x0($s0)
    /* DBE28 800CCE78 3C0F0708 */  lui        $t7, (0x7080200 >> 16)
    /* DBE2C 800CCE7C 35EF0200 */  ori        $t7, $t7, (0x7080200 & 0xFFFF)
    /* DBE30 800CCE80 24590008 */  addiu      $t9, $v0, 0x8
    /* DBE34 800CCE84 AE190000 */  sw         $t9, 0x0($s0)
    /* DBE38 800CCE88 3C0EF590 */  lui        $t6, (0xF5900000 >> 16)
    /* DBE3C 800CCE8C AC4E0000 */  sw         $t6, 0x0($v0)
    /* DBE40 800CCE90 AC4F0004 */  sw         $t7, 0x4($v0)
    /* DBE44 800CCE94 8E020000 */  lw         $v0, 0x0($s0)
    /* DBE48 800CCE98 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* DBE4C 800CCE9C 3C0FF300 */  lui        $t7, (0xF3000000 >> 16)
    /* DBE50 800CCEA0 24580008 */  addiu      $t8, $v0, 0x8
    /* DBE54 800CCEA4 AE180000 */  sw         $t8, 0x0($s0)
    /* DBE58 800CCEA8 AC400004 */  sw         $zero, 0x4($v0)
    /* DBE5C 800CCEAC AC590000 */  sw         $t9, 0x0($v0)
    /* DBE60 800CCEB0 8E020000 */  lw         $v0, 0x0($s0)
    /* DBE64 800CCEB4 3C180703 */  lui        $t8, (0x703F800 >> 16)
    /* DBE68 800CCEB8 3718F800 */  ori        $t8, $t8, (0x703F800 & 0xFFFF)
    /* DBE6C 800CCEBC 244E0008 */  addiu      $t6, $v0, 0x8
    /* DBE70 800CCEC0 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DBE74 800CCEC4 AC580004 */  sw         $t8, 0x4($v0)
    /* DBE78 800CCEC8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* DBE7C 800CCECC 8E020000 */  lw         $v0, 0x0($s0)
    /* DBE80 800CCED0 3C0FF580 */  lui        $t7, (0xF5800200 >> 16)
    /* DBE84 800CCED4 3C180008 */  lui        $t8, (0x80200 >> 16)
    /* DBE88 800CCED8 24590008 */  addiu      $t9, $v0, 0x8
    /* DBE8C 800CCEDC AE190000 */  sw         $t9, 0x0($s0)
    /* DBE90 800CCEE0 AC400004 */  sw         $zero, 0x4($v0)
    /* DBE94 800CCEE4 AC530000 */  sw         $s3, 0x0($v0)
    /* DBE98 800CCEE8 8E020000 */  lw         $v0, 0x0($s0)
    /* DBE9C 800CCEEC 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
    /* DBEA0 800CCEF0 35EF0200 */  ori        $t7, $t7, (0xF5800200 & 0xFFFF)
    /* DBEA4 800CCEF4 244E0008 */  addiu      $t6, $v0, 0x8
    /* DBEA8 800CCEF8 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DBEAC 800CCEFC AC580004 */  sw         $t8, 0x4($v0)
    /* DBEB0 800CCF00 AC4F0000 */  sw         $t7, 0x0($v0)
    /* DBEB4 800CCF04 8E020000 */  lw         $v0, 0x0($s0)
    /* DBEB8 800CCF08 3C0F0003 */  lui        $t7, (0x3C03C >> 16)
    /* DBEBC 800CCF0C 35EFC03C */  ori        $t7, $t7, (0x3C03C & 0xFFFF)
    /* DBEC0 800CCF10 24590008 */  addiu      $t9, $v0, 0x8
    /* DBEC4 800CCF14 AE190000 */  sw         $t9, 0x0($s0)
    /* DBEC8 800CCF18 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* DBECC 800CCF1C AC4E0000 */  sw         $t6, 0x0($v0)
    /* DBED0 800CCF20 AC4F0004 */  sw         $t7, 0x4($v0)
    /* DBED4 800CCF24 8E020000 */  lw         $v0, 0x0($s0)
    /* DBED8 800CCF28 24580008 */  addiu      $t8, $v0, 0x8
    /* DBEDC 800CCF2C AE180000 */  sw         $t8, 0x0($s0)
    /* DBEE0 800CCF30 AC400004 */  sw         $zero, 0x4($v0)
    /* DBEE4 800CCF34 AC530000 */  sw         $s3, 0x0($v0)
    /* DBEE8 800CCF38 86390008 */  lh         $t9, 0x8($s1)
    /* DBEEC 800CCF3C C6440000 */  lwc1       $f4, 0x0($s2)
    /* DBEF0 800CCF40 862E000A */  lh         $t6, 0xA($s1)
    /* DBEF4 800CCF44 44994000 */  mtc1       $t9, $f8
    /* DBEF8 800CCF48 46142182 */  mul.s      $f6, $f4, $f20
    /* DBEFC 800CCF4C C6520004 */  lwc1       $f18, 0x4($s2)
    /* DBF00 800CCF50 862F000C */  lh         $t7, 0xC($s1)
    /* DBF04 800CCF54 46149102 */  mul.s      $f4, $f18, $f20
    /* DBF08 800CCF58 468042A0 */  cvt.s.w    $f10, $f8
    /* DBF0C 800CCF5C 448E4000 */  mtc1       $t6, $f8
    /* DBF10 800CCF60 460A3401 */  sub.s      $f16, $f6, $f10
    /* DBF14 800CCF64 468041A0 */  cvt.s.w    $f6, $f8
    /* DBF18 800CCF68 E7B00084 */  swc1       $f16, 0x84($sp)
    /* DBF1C 800CCF6C C6500008 */  lwc1       $f16, 0x8($s2)
    /* DBF20 800CCF70 448F4000 */  mtc1       $t7, $f8
    /* DBF24 800CCF74 46148482 */  mul.s      $f18, $f16, $f20
    /* DBF28 800CCF78 46062281 */  sub.s      $f10, $f4, $f6
    /* DBF2C 800CCF7C E7AA0088 */  swc1       $f10, 0x88($sp)
    /* DBF30 800CCF80 46804120 */  cvt.s.w    $f4, $f8
    /* DBF34 800CCF84 46049181 */  sub.s      $f6, $f18, $f4
    /* DBF38 800CCF88 0C030409 */  jal        func_800C1024_CFFD4
    /* DBF3C 800CCF8C E7A6008C */   swc1      $f6, 0x8C($sp)
    /* DBF40 800CCF90 86380012 */  lh         $t8, 0x12($s1)
    /* DBF44 800CCF94 86390008 */  lh         $t9, 0x8($s1)
    /* DBF48 800CCF98 C7AA0084 */  lwc1       $f10, 0x84($sp)
    /* DBF4C 800CCF9C 44988000 */  mtc1       $t8, $f16
    /* DBF50 800CCFA0 44992000 */  mtc1       $t9, $f4
    /* DBF54 800CCFA4 3C018015 */  lui        $at, %hi(D_80153BB8)
    /* DBF58 800CCFA8 46808220 */  cvt.s.w    $f8, $f16
    /* DBF5C 800CCFAC 468021A0 */  cvt.s.w    $f6, $f4
    /* DBF60 800CCFB0 46085482 */  mul.s      $f18, $f10, $f8
    /* DBF64 800CCFB4 C7AA0088 */  lwc1       $f10, 0x88($sp)
    /* DBF68 800CCFB8 46123400 */  add.s      $f16, $f6, $f18
    /* DBF6C 800CCFBC E4303BB8 */  swc1       $f16, %lo(D_80153BB8)($at)
    /* DBF70 800CCFC0 862E0012 */  lh         $t6, 0x12($s1)
    /* DBF74 800CCFC4 862F000A */  lh         $t7, 0xA($s1)
    /* DBF78 800CCFC8 448E4000 */  mtc1       $t6, $f8
    /* DBF7C 800CCFCC 448F9000 */  mtc1       $t7, $f18
    /* DBF80 800CCFD0 240E00FF */  addiu      $t6, $zero, 0xFF
    /* DBF84 800CCFD4 46804120 */  cvt.s.w    $f4, $f8
    /* DBF88 800CCFD8 46809420 */  cvt.s.w    $f16, $f18
    /* DBF8C 800CCFDC 46045182 */  mul.s      $f6, $f10, $f4
    /* DBF90 800CCFE0 C7AA008C */  lwc1       $f10, 0x8C($sp)
    /* DBF94 800CCFE4 46068200 */  add.s      $f8, $f16, $f6
    /* DBF98 800CCFE8 E4283BBC */  swc1       $f8, %lo(D_80153BBC)($at)
    /* DBF9C 800CCFEC 86380012 */  lh         $t8, 0x12($s1)
    /* DBFA0 800CCFF0 8639000C */  lh         $t9, 0xC($s1)
    /* DBFA4 800CCFF4 3C018015 */  lui        $at, %hi(D_80153BC0)
    /* DBFA8 800CCFF8 44982000 */  mtc1       $t8, $f4
    /* DBFAC 800CCFFC 44993000 */  mtc1       $t9, $f6
    /* DBFB0 800CD000 2638000E */  addiu      $t8, $s1, 0xE
    /* DBFB4 800CD004 468024A0 */  cvt.s.w    $f18, $f4
    /* DBFB8 800CD008 46803220 */  cvt.s.w    $f8, $f6
    /* DBFBC 800CD00C 46125402 */  mul.s      $f16, $f10, $f18
    /* DBFC0 800CD010 46104100 */  add.s      $f4, $f8, $f16
    /* DBFC4 800CD014 E4243BC0 */  swc1       $f4, %lo(D_80153BC0)($at)
    /* DBFC8 800CD018 3C018015 */  lui        $at, %hi(D_80153BCC)
    /* DBFCC 800CD01C A02E3BCC */  sb         $t6, %lo(D_80153BCC)($at)
    /* DBFD0 800CD020 862F0002 */  lh         $t7, 0x2($s1)
    /* DBFD4 800CD024 3C018015 */  lui        $at, %hi(D_80153BC8)
    /* DBFD8 800CD028 448F5000 */  mtc1       $t7, $f10
    /* DBFDC 800CD02C 00000000 */  nop
    /* DBFE0 800CD030 468054A0 */  cvt.s.w    $f18, $f10
    /* DBFE4 800CD034 E4323BC8 */  swc1       $f18, %lo(D_80153BC8)($at)
    /* DBFE8 800CD038 3C018015 */  lui        $at, %hi(D_80153BC4)
    /* DBFEC 800CD03C 0C036CD4 */  jal        func_800DB350_EA300
    /* DBFF0 800CD040 AC383BC4 */   sw        $t8, %lo(D_80153BC4)($at)
    /* DBFF4 800CD044 863F0004 */  lh         $ra, 0x4($s1)
    /* DBFF8 800CD048 2401FFFB */  addiu      $at, $zero, -0x5
    /* DBFFC 800CD04C 13E10003 */  beq        $ra, $at, .L800CD05C_DC00C
    /* DC000 800CD050 2401FFFA */   addiu     $at, $zero, -0x6
    /* DC004 800CD054 57E1FF73 */  bnel       $ra, $at, .L800CCE24_DBDD4
    /* DC008 800CD058 8E020000 */   lw        $v0, 0x0($s0)
  .L800CD05C_DC00C:
    /* DC00C 800CD05C 3C028015 */  lui        $v0, %hi(D_80156EDA)
    /* DC010 800CD060 3C0E8015 */  lui        $t6, %hi(D_80154244)
    /* DC014 800CD064 91CE4244 */  lbu        $t6, %lo(D_80154244)($t6)
    /* DC018 800CD068 24426EDA */  addiu      $v0, $v0, %lo(D_80156EDA)
    /* DC01C 800CD06C 84590000 */  lh         $t9, 0x0($v0)
    /* DC020 800CD070 8FBF0044 */  lw         $ra, 0x44($sp)
    /* DC024 800CD074 000E7880 */  sll        $t7, $t6, 2
    /* DC028 800CD078 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* DC02C 800CD07C 8FB00020 */  lw         $s0, 0x20($sp)
    /* DC030 800CD080 8FB10024 */  lw         $s1, 0x24($sp)
    /* DC034 800CD084 8FB20028 */  lw         $s2, 0x28($sp)
    /* DC038 800CD088 8FB3002C */  lw         $s3, 0x2C($sp)
    /* DC03C 800CD08C 8FB40030 */  lw         $s4, 0x30($sp)
    /* DC040 800CD090 8FB50034 */  lw         $s5, 0x34($sp)
    /* DC044 800CD094 8FB60038 */  lw         $s6, 0x38($sp)
    /* DC048 800CD098 8FB7003C */  lw         $s7, 0x3C($sp)
    /* DC04C 800CD09C 8FBE0040 */  lw         $fp, 0x40($sp)
    /* DC050 800CD0A0 032FC021 */  addu       $t8, $t9, $t7
    /* DC054 800CD0A4 A4580000 */  sh         $t8, 0x0($v0)
    /* DC058 800CD0A8 03E00008 */  jr         $ra
    /* DC05C 800CD0AC 27BD0090 */   addiu     $sp, $sp, 0x90
endlabel func_800CCD54_DBD04
