nonmatching func_800CBE98_DAE48, 0x1F8

glabel func_800CBE98_DAE48
    /* DAE48 800CBE98 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* DAE4C 800CBE9C AFB20020 */  sw         $s2, 0x20($sp)
    /* DAE50 800CBEA0 3C128015 */  lui        $s2, %hi(D_8015423A)
    /* DAE54 800CBEA4 8652423A */  lh         $s2, %lo(D_8015423A)($s2)
    /* DAE58 800CBEA8 AFBE0038 */  sw         $fp, 0x38($sp)
    /* DAE5C 800CBEAC 241EFFFB */  addiu      $fp, $zero, -0x5
    /* DAE60 800CBEB0 AFB5002C */  sw         $s5, 0x2C($sp)
    /* DAE64 800CBEB4 AFBF003C */  sw         $ra, 0x3C($sp)
    /* DAE68 800CBEB8 AFB70034 */  sw         $s7, 0x34($sp)
    /* DAE6C 800CBEBC AFB60030 */  sw         $s6, 0x30($sp)
    /* DAE70 800CBEC0 AFB40028 */  sw         $s4, 0x28($sp)
    /* DAE74 800CBEC4 AFB30024 */  sw         $s3, 0x24($sp)
    /* DAE78 800CBEC8 AFB1001C */  sw         $s1, 0x1C($sp)
    /* DAE7C 800CBECC AFB00018 */  sw         $s0, 0x18($sp)
    /* DAE80 800CBED0 125E0003 */  beq        $s2, $fp, .L800CBEE0_DAE90
    /* DAE84 800CBED4 0000A825 */   or        $s5, $zero, $zero
    /* DAE88 800CBED8 2407FFFA */  addiu      $a3, $zero, -0x6
    /* DAE8C 800CBEDC 16470005 */  bne        $s2, $a3, .L800CBEF4_DAEA4
  .L800CBEE0_DAE90:
    /* DAE90 800CBEE0 24040005 */   addiu     $a0, $zero, 0x5
    /* DAE94 800CBEE4 0C030506 */  jal        func_800C1418_D03C8
    /* DAE98 800CBEE8 24050001 */   addiu     $a1, $zero, 0x1
    /* DAE9C 800CBEEC 1000005D */  b          .L800CC064_DB014
    /* DAEA0 800CBEF0 8FBF003C */   lw        $ra, 0x3C($sp)
  .L800CBEF4_DAEA4:
    /* DAEA4 800CBEF4 525E005B */  beql       $s2, $fp, .L800CC064_DB014
    /* DAEA8 800CBEF8 8FBF003C */   lw        $ra, 0x3C($sp)
    /* DAEAC 800CBEFC 12470058 */  beq        $s2, $a3, .L800CC060_DB010
    /* DAEB0 800CBF00 2417001C */   addiu     $s7, $zero, 0x1C
    /* DAEB4 800CBF04 3C168015 */  lui        $s6, %hi(D_80154318)
    /* DAEB8 800CBF08 26D64318 */  addiu      $s6, $s6, %lo(D_80154318)
    /* DAEBC 800CBF0C 24140028 */  addiu      $s4, $zero, 0x28
  .L800CBF10_DAEC0:
    /* DAEC0 800CBF10 02570019 */  multu      $s2, $s7
    /* DAEC4 800CBF14 00002025 */  or         $a0, $zero, $zero
    /* DAEC8 800CBF18 24050005 */  addiu      $a1, $zero, 0x5
    /* DAECC 800CBF1C 24060001 */  addiu      $a2, $zero, 0x1
    /* DAED0 800CBF20 00007012 */  mflo       $t6
    /* DAED4 800CBF24 02CE1821 */  addu       $v1, $s6, $t6
    /* DAED8 800CBF28 906F0014 */  lbu        $t7, 0x14($v1)
    /* DAEDC 800CBF2C 24620008 */  addiu      $v0, $v1, 0x8
    /* DAEE0 800CBF30 00408025 */  or         $s0, $v0, $zero
    /* DAEE4 800CBF34 55E0000C */  bnel       $t7, $zero, .L800CBF68_DAF18
    /* DAEE8 800CBF38 8049000B */   lb        $t1, 0xB($v0)
    /* DAEEC 800CBF3C 8058000B */  lb         $t8, 0xB($v0)
    /* DAEF0 800CBF40 24110001 */  addiu      $s1, $zero, 0x1
    /* DAEF4 800CBF44 27190001 */  addiu      $t9, $t8, 0x1
    /* DAEF8 800CBF48 A059000B */  sb         $t9, 0xB($v0)
    /* DAEFC 800CBF4C 8048000B */  lb         $t0, 0xB($v0)
    /* DAF00 800CBF50 29010018 */  slti       $at, $t0, 0x18
    /* DAF04 800CBF54 1420000B */  bnez       $at, .L800CBF84_DAF34
    /* DAF08 800CBF58 00000000 */   nop
    /* DAF0C 800CBF5C 10000009 */  b          .L800CBF84_DAF34
    /* DAF10 800CBF60 24150001 */   addiu     $s5, $zero, 0x1
    /* DAF14 800CBF64 8049000B */  lb         $t1, 0xB($v0)
  .L800CBF68_DAF18:
    /* DAF18 800CBF68 2411FFFF */  addiu      $s1, $zero, -0x1
    /* DAF1C 800CBF6C 252AFFFF */  addiu      $t2, $t1, -0x1
    /* DAF20 800CBF70 A04A000B */  sb         $t2, 0xB($v0)
    /* DAF24 800CBF74 804B000B */  lb         $t3, 0xB($v0)
    /* DAF28 800CBF78 1D600002 */  bgtz       $t3, .L800CBF84_DAF34
    /* DAF2C 800CBF7C 00000000 */   nop
    /* DAF30 800CBF80 24150001 */  addiu      $s5, $zero, 0x1
  .L800CBF84_DAF34:
    /* DAF34 800CBF84 52A0000C */  beql       $s5, $zero, .L800CBFB8_DAF68
    /* DAF38 800CBF88 8202000B */   lb        $v0, 0xB($s0)
    /* DAF3C 800CBF8C 00122400 */  sll        $a0, $s2, 16
    /* DAF40 800CBF90 00046403 */  sra        $t4, $a0, 16
    /* DAF44 800CBF94 84730004 */  lh         $s3, 0x4($v1)
    /* DAF48 800CBF98 0C030693 */  jal        func_800C1A4C_D09FC
    /* DAF4C 800CBF9C 01802025 */   or        $a0, $t4, $zero
    /* DAF50 800CBFA0 00139400 */  sll        $s2, $s3, 16
    /* DAF54 800CBFA4 00126C03 */  sra        $t5, $s2, 16
    /* DAF58 800CBFA8 2407FFFA */  addiu      $a3, $zero, -0x6
    /* DAF5C 800CBFAC 01A09025 */  or         $s2, $t5, $zero
    /* DAF60 800CBFB0 24040001 */  addiu      $a0, $zero, 0x1
    /* DAF64 800CBFB4 8202000B */  lb         $v0, 0xB($s0)
  .L800CBFB8_DAF68:
    /* DAF68 800CBFB8 28410006 */  slti       $at, $v0, 0x6
    /* DAF6C 800CBFBC 50200008 */  beql       $at, $zero, .L800CBFE0_DAF90
    /* DAF70 800CBFC0 2841000C */   slti      $at, $v0, 0xC
    /* DAF74 800CBFC4 02340019 */  multu      $s1, $s4
    /* DAF78 800CBFC8 920E0009 */  lbu        $t6, 0x9($s0)
    /* DAF7C 800CBFCC 00007812 */  mflo       $t7
    /* DAF80 800CBFD0 01CFC021 */  addu       $t8, $t6, $t7
    /* DAF84 800CBFD4 10000018 */  b          .L800CC038_DAFE8
    /* DAF88 800CBFD8 A2180009 */   sb        $t8, 0x9($s0)
    /* DAF8C 800CBFDC 2841000C */  slti       $at, $v0, 0xC
  .L800CBFE0_DAF90:
    /* DAF90 800CBFE0 50200008 */  beql       $at, $zero, .L800CC004_DAFB4
    /* DAF94 800CBFE4 28410012 */   slti      $at, $v0, 0x12
    /* DAF98 800CBFE8 02340019 */  multu      $s1, $s4
    /* DAF9C 800CBFEC 9219000A */  lbu        $t9, 0xA($s0)
    /* DAFA0 800CBFF0 00004012 */  mflo       $t0
    /* DAFA4 800CBFF4 03284821 */  addu       $t1, $t9, $t0
    /* DAFA8 800CBFF8 1000000F */  b          .L800CC038_DAFE8
    /* DAFAC 800CBFFC A209000A */   sb        $t1, 0xA($s0)
    /* DAFB0 800CC000 28410012 */  slti       $at, $v0, 0x12
  .L800CC004_DAFB4:
    /* DAFB4 800CC004 10200007 */  beqz       $at, .L800CC024_DAFD4
    /* DAFB8 800CC008 00000000 */   nop
    /* DAFBC 800CC00C 02340019 */  multu      $s1, $s4
    /* DAFC0 800CC010 920A0009 */  lbu        $t2, 0x9($s0)
    /* DAFC4 800CC014 00005812 */  mflo       $t3
    /* DAFC8 800CC018 014B6023 */  subu       $t4, $t2, $t3
    /* DAFCC 800CC01C 10000006 */  b          .L800CC038_DAFE8
    /* DAFD0 800CC020 A20C0009 */   sb        $t4, 0x9($s0)
  .L800CC024_DAFD4:
    /* DAFD4 800CC024 02340019 */  multu      $s1, $s4
    /* DAFD8 800CC028 920D000A */  lbu        $t5, 0xA($s0)
    /* DAFDC 800CC02C 00007012 */  mflo       $t6
    /* DAFE0 800CC030 01AE7823 */  subu       $t7, $t5, $t6
    /* DAFE4 800CC034 A20F000A */  sb         $t7, 0xA($s0)
  .L800CC038_DAFE8:
    /* DAFE8 800CC038 14800005 */  bnez       $a0, .L800CC050_DB000
    /* DAFEC 800CC03C 00000000 */   nop
    /* DAFF0 800CC040 02570019 */  multu      $s2, $s7
    /* DAFF4 800CC044 0000C012 */  mflo       $t8
    /* DAFF8 800CC048 02D8C821 */  addu       $t9, $s6, $t8
    /* DAFFC 800CC04C 87320004 */  lh         $s2, 0x4($t9)
  .L800CC050_DB000:
    /* DB000 800CC050 525E0004 */  beql       $s2, $fp, .L800CC064_DB014
    /* DB004 800CC054 8FBF003C */   lw        $ra, 0x3C($sp)
    /* DB008 800CC058 1647FFAD */  bne        $s2, $a3, .L800CBF10_DAEC0
    /* DB00C 800CC05C 00000000 */   nop
  .L800CC060_DB010:
    /* DB010 800CC060 8FBF003C */  lw         $ra, 0x3C($sp)
  .L800CC064_DB014:
    /* DB014 800CC064 8FB00018 */  lw         $s0, 0x18($sp)
    /* DB018 800CC068 8FB1001C */  lw         $s1, 0x1C($sp)
    /* DB01C 800CC06C 8FB20020 */  lw         $s2, 0x20($sp)
    /* DB020 800CC070 8FB30024 */  lw         $s3, 0x24($sp)
    /* DB024 800CC074 8FB40028 */  lw         $s4, 0x28($sp)
    /* DB028 800CC078 8FB5002C */  lw         $s5, 0x2C($sp)
    /* DB02C 800CC07C 8FB60030 */  lw         $s6, 0x30($sp)
    /* DB030 800CC080 8FB70034 */  lw         $s7, 0x34($sp)
    /* DB034 800CC084 8FBE0038 */  lw         $fp, 0x38($sp)
    /* DB038 800CC088 03E00008 */  jr         $ra
    /* DB03C 800CC08C 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800CBE98_DAE48
