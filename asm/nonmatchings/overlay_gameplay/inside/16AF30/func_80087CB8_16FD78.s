nonmatching func_80087CB8_16FD78, 0x184

glabel func_80087CB8_16FD78
    /* 16FD78 80087CB8 308E00FF */  andi       $t6, $a0, 0xFF
    /* 16FD7C 80087CBC 000E7880 */  sll        $t7, $t6, 2
    /* 16FD80 80087CC0 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 16FD84 80087CC4 01EE7823 */  subu       $t7, $t7, $t6
    /* 16FD88 80087CC8 3C188010 */  lui        $t8, %hi(D_800FB6F8)
    /* 16FD8C 80087CCC AFB70034 */  sw         $s7, 0x34($sp)
    /* 16FD90 80087CD0 2718B6F8 */  addiu      $t8, $t8, %lo(D_800FB6F8)
    /* 16FD94 80087CD4 000F7880 */  sll        $t7, $t7, 2
    /* 16FD98 80087CD8 01F8B821 */  addu       $s7, $t7, $t8
    /* 16FD9C 80087CDC 86F90006 */  lh         $t9, 0x6($s7)
    /* 16FDA0 80087CE0 AFB30024 */  sw         $s3, 0x24($sp)
    /* 16FDA4 80087CE4 24130016 */  addiu      $s3, $zero, 0x16
    /* 16FDA8 80087CE8 03330019 */  multu      $t9, $s3
    /* 16FDAC 80087CEC 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 16FDB0 80087CF0 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 16FDB4 80087CF4 8C620000 */  lw         $v0, 0x0($v1)
    /* 16FDB8 80087CF8 AFB20020 */  sw         $s2, 0x20($sp)
    /* 16FDBC 80087CFC 3C128010 */  lui        $s2, %hi(D_800FB7B0)
    /* 16FDC0 80087D00 2652B7B0 */  addiu      $s2, $s2, %lo(D_800FB7B0)
    /* 16FDC4 80087D04 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 16FDC8 80087D08 244C0008 */  addiu      $t4, $v0, 0x8
    /* 16FDCC 80087D0C AFBF003C */  sw         $ra, 0x3C($sp)
    /* 16FDD0 80087D10 00005812 */  mflo       $t3
    /* 16FDD4 80087D14 024B2821 */  addu       $a1, $s2, $t3
    /* 16FDD8 80087D18 84B10004 */  lh         $s1, 0x4($a1)
    /* 16FDDC 80087D1C AFBE0038 */  sw         $fp, 0x38($sp)
    /* 16FDE0 80087D20 AFB60030 */  sw         $s6, 0x30($sp)
    /* 16FDE4 80087D24 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 16FDE8 80087D28 AFB40028 */  sw         $s4, 0x28($sp)
    /* 16FDEC 80087D2C AFB00018 */  sw         $s0, 0x18($sp)
    /* 16FDF0 80087D30 AFA40070 */  sw         $a0, 0x70($sp)
    /* 16FDF4 80087D34 AC6C0000 */  sw         $t4, 0x0($v1)
    /* 16FDF8 80087D38 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
    /* 16FDFC 80087D3C AC4A0000 */  sw         $t2, 0x0($v0)
    /* 16FE00 80087D40 AC400004 */  sw         $zero, 0x4($v0)
    /* 16FE04 80087D44 8C620000 */  lw         $v0, 0x0($v1)
    /* 16FE08 80087D48 3C0FFFFE */  lui        $t7, (0xFFFE793C >> 16)
    /* 16FE0C 80087D4C 3C0EFCFF */  lui        $t6, (0xFCFFFFFF >> 16)
    /* 16FE10 80087D50 244D0008 */  addiu      $t5, $v0, 0x8
    /* 16FE14 80087D54 AC6D0000 */  sw         $t5, 0x0($v1)
    /* 16FE18 80087D58 35CEFFFF */  ori        $t6, $t6, (0xFCFFFFFF & 0xFFFF)
    /* 16FE1C 80087D5C 35EF793C */  ori        $t7, $t7, (0xFFFE793C & 0xFFFF)
    /* 16FE20 80087D60 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 16FE24 80087D64 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 16FE28 80087D68 8C620000 */  lw         $v0, 0x0($v1)
    /* 16FE2C 80087D6C 241EFFFB */  addiu      $fp, $zero, -0x5
    /* 16FE30 80087D70 24A90008 */  addiu      $t1, $a1, 0x8
    /* 16FE34 80087D74 24580008 */  addiu      $t8, $v0, 0x8
    /* 16FE38 80087D78 AC780000 */  sw         $t8, 0x0($v1)
    /* 16FE3C 80087D7C AC400004 */  sw         $zero, 0x4($v0)
    /* 16FE40 80087D80 123E0022 */  beq        $s1, $fp, .L80087E0C_16FECC
    /* 16FE44 80087D84 AC4A0000 */   sw        $t2, 0x0($v0)
    /* 16FE48 80087D88 2415FFFA */  addiu      $s5, $zero, -0x6
    /* 16FE4C 80087D8C 1235001F */  beq        $s1, $s5, .L80087E0C_16FECC
    /* 16FE50 80087D90 25340006 */   addiu     $s4, $t1, 0x6
    /* 16FE54 80087D94 27B60058 */  addiu      $s6, $sp, 0x58
  .L80087D98_16FE58:
    /* 16FE58 80087D98 02330019 */  multu      $s1, $s3
    /* 16FE5C 80087D9C 86EE0006 */  lh         $t6, 0x6($s7)
    /* 16FE60 80087DA0 02C02025 */  or         $a0, $s6, $zero
    /* 16FE64 80087DA4 02802825 */  or         $a1, $s4, $zero
    /* 16FE68 80087DA8 0000C812 */  mflo       $t9
    /* 16FE6C 80087DAC 02598021 */  addu       $s0, $s2, $t9
    /* 16FE70 80087DB0 860B0008 */  lh         $t3, 0x8($s0)
    /* 16FE74 80087DB4 01D30019 */  multu      $t6, $s3
    /* 16FE78 80087DB8 860C000A */  lh         $t4, 0xA($s0)
    /* 16FE7C 80087DBC 860D000C */  lh         $t5, 0xC($s0)
    /* 16FE80 80087DC0 448B2000 */  mtc1       $t3, $f4
    /* 16FE84 80087DC4 448C4000 */  mtc1       $t4, $f8
    /* 16FE88 80087DC8 448D8000 */  mtc1       $t5, $f16
    /* 16FE8C 80087DCC 468021A0 */  cvt.s.w    $f6, $f4
    /* 16FE90 80087DD0 92070011 */  lbu        $a3, 0x11($s0)
    /* 16FE94 80087DD4 00007812 */  mflo       $t7
    /* 16FE98 80087DD8 468042A0 */  cvt.s.w    $f10, $f8
    /* 16FE9C 80087DDC 024FC021 */  addu       $t8, $s2, $t7
    /* 16FEA0 80087DE0 E7A60058 */  swc1       $f6, 0x58($sp)
    /* 16FEA4 80087DE4 97060002 */  lhu        $a2, 0x2($t8)
    /* 16FEA8 80087DE8 468084A0 */  cvt.s.w    $f18, $f16
    /* 16FEAC 80087DEC E7AA005C */  swc1       $f10, 0x5C($sp)
    /* 16FEB0 80087DF0 0C022452 */  jal        func_80089148_171208
    /* 16FEB4 80087DF4 E7B20060 */   swc1      $f18, 0x60($sp)
    /* 16FEB8 80087DF8 86110004 */  lh         $s1, 0x4($s0)
    /* 16FEBC 80087DFC 523E0004 */  beql       $s1, $fp, .L80087E10_16FED0
    /* 16FEC0 80087E00 8FBF003C */   lw        $ra, 0x3C($sp)
    /* 16FEC4 80087E04 1635FFE4 */  bne        $s1, $s5, .L80087D98_16FE58
    /* 16FEC8 80087E08 00000000 */   nop
  .L80087E0C_16FECC:
    /* 16FECC 80087E0C 8FBF003C */  lw         $ra, 0x3C($sp)
  .L80087E10_16FED0:
    /* 16FED0 80087E10 8FB00018 */  lw         $s0, 0x18($sp)
    /* 16FED4 80087E14 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 16FED8 80087E18 8FB20020 */  lw         $s2, 0x20($sp)
    /* 16FEDC 80087E1C 8FB30024 */  lw         $s3, 0x24($sp)
    /* 16FEE0 80087E20 8FB40028 */  lw         $s4, 0x28($sp)
    /* 16FEE4 80087E24 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 16FEE8 80087E28 8FB60030 */  lw         $s6, 0x30($sp)
    /* 16FEEC 80087E2C 8FB70034 */  lw         $s7, 0x34($sp)
    /* 16FEF0 80087E30 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 16FEF4 80087E34 03E00008 */  jr         $ra
    /* 16FEF8 80087E38 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_80087CB8_16FD78
