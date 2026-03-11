nonmatching func_80120D6C_12FD1C, 0x2B0

glabel func_80120D6C_12FD1C
    /* 12FD1C 80120D6C 27BDFF60 */  addiu      $sp, $sp, -0xA0
    /* 12FD20 80120D70 F7BA0030 */  sdc1       $f26, 0x30($sp)
    /* 12FD24 80120D74 3C014018 */  lui        $at, (0x40180000 >> 16)
    /* 12FD28 80120D78 4481D800 */  mtc1       $at, $f27
    /* 12FD2C 80120D7C F7B80028 */  sdc1       $f24, 0x28($sp)
    /* 12FD30 80120D80 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 12FD34 80120D84 F7B60020 */  sdc1       $f22, 0x20($sp)
    /* 12FD38 80120D88 4481C800 */  mtc1       $at, $f25
    /* 12FD3C 80120D8C AFB70054 */  sw         $s7, 0x54($sp)
    /* 12FD40 80120D90 AFB60050 */  sw         $s6, 0x50($sp)
    /* 12FD44 80120D94 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 12FD48 80120D98 AFBE0058 */  sw         $fp, 0x58($sp)
    /* 12FD4C 80120D9C AFB5004C */  sw         $s5, 0x4C($sp)
    /* 12FD50 80120DA0 3C168006 */  lui        $s6, %hi(D_8005BB34)
    /* 12FD54 80120DA4 3C178005 */  lui        $s7, %hi(D_80052A8C)
    /* 12FD58 80120DA8 240E0004 */  addiu      $t6, $zero, 0x4
    /* 12FD5C 80120DAC 4481B800 */  mtc1       $at, $f23
    /* 12FD60 80120DB0 4480B000 */  mtc1       $zero, $f22
    /* 12FD64 80120DB4 4480C000 */  mtc1       $zero, $f24
    /* 12FD68 80120DB8 4480D000 */  mtc1       $zero, $f26
    /* 12FD6C 80120DBC 0080A825 */  or         $s5, $a0, $zero
    /* 12FD70 80120DC0 AFBF005C */  sw         $ra, 0x5C($sp)
    /* 12FD74 80120DC4 AFB40048 */  sw         $s4, 0x48($sp)
    /* 12FD78 80120DC8 AFB30044 */  sw         $s3, 0x44($sp)
    /* 12FD7C 80120DCC AFB20040 */  sw         $s2, 0x40($sp)
    /* 12FD80 80120DD0 AFB1003C */  sw         $s1, 0x3C($sp)
    /* 12FD84 80120DD4 AFB00038 */  sw         $s0, 0x38($sp)
    /* 12FD88 80120DD8 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 12FD8C 80120DDC AFAE0094 */  sw         $t6, 0x94($sp)
    /* 12FD90 80120DE0 26F72A8C */  addiu      $s7, $s7, %lo(D_80052A8C)
    /* 12FD94 80120DE4 26D6BB34 */  addiu      $s6, $s6, %lo(D_8005BB34)
    /* 12FD98 80120DE8 241E0050 */  addiu      $fp, $zero, 0x50
    /* 12FD9C 80120DEC AFA00064 */  sw         $zero, 0x64($sp)
  .L80120DF0_12FDA0:
    /* 12FDA0 80120DF0 24110004 */  addiu      $s1, $zero, 0x4
    /* 12FDA4 80120DF4 24120050 */  addiu      $s2, $zero, 0x50
    /* 12FDA8 80120DF8 24130800 */  addiu      $s3, $zero, 0x800
  .L80120DFC_12FDAC:
    /* 12FDAC 80120DFC 8EC20000 */  lw         $v0, 0x0($s6)
    /* 12FDB0 80120E00 3C198016 */  lui        $t9, %hi(D_80159DC8)
    /* 12FDB4 80120E04 0011A300 */  sll        $s4, $s1, 12
    /* 12FDB8 80120E08 244F0010 */  addiu      $t7, $v0, 0x10
    /* 12FDBC 80120E0C AECF0000 */  sw         $t7, 0x0($s6)
    /* 12FDC0 80120E10 87399DC8 */  lh         $t9, %lo(D_80159DC8)($t9)
    /* 12FDC4 80120E14 86B80000 */  lh         $t8, 0x0($s5)
    /* 12FDC8 80120E18 00408025 */  or         $s0, $v0, $zero
    /* 12FDCC 80120E1C 03194021 */  addu       $t0, $t8, $t9
    /* 12FDD0 80120E20 01124821 */  addu       $t1, $t0, $s2
    /* 12FDD4 80120E24 252A0002 */  addiu      $t2, $t1, 0x2
    /* 12FDD8 80120E28 A44A0000 */  sh         $t2, 0x0($v0)
    /* 12FDDC 80120E2C 8EEB0000 */  lw         $t3, 0x0($s7)
    /* 12FDE0 80120E30 000B60C0 */  sll        $t4, $t3, 3
    /* 12FDE4 80120E34 018B6021 */  addu       $t4, $t4, $t3
    /* 12FDE8 80120E38 000C60C0 */  sll        $t4, $t4, 3
    /* 12FDEC 80120E3C 018B6023 */  subu       $t4, $t4, $t3
    /* 12FDF0 80120E40 000C6140 */  sll        $t4, $t4, 5
    /* 12FDF4 80120E44 01942023 */  subu       $a0, $t4, $s4
    /* 12FDF8 80120E48 308DFFFF */  andi       $t5, $a0, 0xFFFF
    /* 12FDFC 80120E4C 0C007660 */  jal        sins
    /* 12FE00 80120E50 01A02025 */   or        $a0, $t5, $zero
    /* 12FE04 80120E54 44825000 */  mtc1       $v0, $f10
    /* 12FE08 80120E58 44912000 */  mtc1       $s1, $f4
    /* 12FE0C 80120E5C 3C0F8016 */  lui        $t7, %hi(D_80159DCA)
    /* 12FE10 80120E60 46805420 */  cvt.s.w    $f16, $f10
    /* 12FE14 80120E64 85EF9DCA */  lh         $t7, %lo(D_80159DCA)($t7)
    /* 12FE18 80120E68 86AE0002 */  lh         $t6, 0x2($s5)
    /* 12FE1C 80120E6C 46802521 */  cvt.d.w    $f20, $f4
    /* 12FE20 80120E70 01CFC021 */  addu       $t8, $t6, $t7
    /* 12FE24 80120E74 031EC821 */  addu       $t9, $t8, $fp
    /* 12FE28 80120E78 44993000 */  mtc1       $t9, $f6
    /* 12FE2C 80120E7C 460084A1 */  cvt.d.s    $f18, $f16
    /* 12FE30 80120E80 46369103 */  div.d      $f4, $f18, $f22
    /* 12FE34 80120E84 46803221 */  cvt.d.w    $f8, $f6
    /* 12FE38 80120E88 46382182 */  mul.d      $f6, $f4, $f24
    /* 12FE3C 80120E8C 00000000 */  nop
    /* 12FE40 80120E90 46343282 */  mul.d      $f10, $f6, $f20
    /* 12FE44 80120E94 46285400 */  add.d      $f16, $f10, $f8
    /* 12FE48 80120E98 4620848D */  trunc.w.d  $f18, $f16
    /* 12FE4C 80120E9C 44099000 */  mfc1       $t1, $f18
    /* 12FE50 80120EA0 00000000 */  nop
    /* 12FE54 80120EA4 A6090002 */  sh         $t1, 0x2($s0)
    /* 12FE58 80120EA8 8EEA0000 */  lw         $t2, 0x0($s7)
    /* 12FE5C 80120EAC 000A5900 */  sll        $t3, $t2, 4
    /* 12FE60 80120EB0 016A5821 */  addu       $t3, $t3, $t2
    /* 12FE64 80120EB4 000B5880 */  sll        $t3, $t3, 2
    /* 12FE68 80120EB8 016A5821 */  addu       $t3, $t3, $t2
    /* 12FE6C 80120EBC 000B5880 */  sll        $t3, $t3, 2
    /* 12FE70 80120EC0 016A5823 */  subu       $t3, $t3, $t2
    /* 12FE74 80120EC4 000B5900 */  sll        $t3, $t3, 4
    /* 12FE78 80120EC8 01742023 */  subu       $a0, $t3, $s4
    /* 12FE7C 80120ECC 308CFFFF */  andi       $t4, $a0, 0xFFFF
    /* 12FE80 80120ED0 0C007660 */  jal        sins
    /* 12FE84 80120ED4 01802025 */   or        $a0, $t4, $zero
    /* 12FE88 80120ED8 44825000 */  mtc1       $v0, $f10
    /* 12FE8C 80120EDC 3C0E8016 */  lui        $t6, %hi(D_80159DCC)
    /* 12FE90 80120EE0 85CE9DCC */  lh         $t6, %lo(D_80159DCC)($t6)
    /* 12FE94 80120EE4 46805220 */  cvt.s.w    $f8, $f10
    /* 12FE98 80120EE8 86AD0004 */  lh         $t5, 0x4($s5)
    /* 12FE9C 80120EEC A6130008 */  sh         $s3, 0x8($s0)
    /* 12FEA0 80120EF0 02201825 */  or         $v1, $s1, $zero
    /* 12FEA4 80120EF4 01AE7821 */  addu       $t7, $t5, $t6
    /* 12FEA8 80120EF8 448F2000 */  mtc1       $t7, $f4
    /* 12FEAC 80120EFC 46004421 */  cvt.d.s    $f16, $f8
    /* 12FEB0 80120F00 2673FE00 */  addiu      $s3, $s3, -0x200
    /* 12FEB4 80120F04 46368483 */  div.d      $f18, $f16, $f22
    /* 12FEB8 80120F08 2652FFEC */  addiu      $s2, $s2, -0x14
    /* 12FEBC 80120F0C 468021A1 */  cvt.d.w    $f6, $f4
    /* 12FEC0 80120F10 463A9102 */  mul.d      $f4, $f18, $f26
    /* 12FEC4 80120F14 00000000 */  nop
    /* 12FEC8 80120F18 46342282 */  mul.d      $f10, $f4, $f20
    /* 12FECC 80120F1C 46265200 */  add.d      $f8, $f10, $f6
    /* 12FED0 80120F20 4620440D */  trunc.w.d  $f16, $f8
    /* 12FED4 80120F24 44198000 */  mfc1       $t9, $f16
    /* 12FED8 80120F28 00000000 */  nop
    /* 12FEDC 80120F2C A6190004 */  sh         $t9, 0x4($s0)
    /* 12FEE0 80120F30 8FA80064 */  lw         $t0, 0x64($sp)
    /* 12FEE4 80120F34 A608000A */  sh         $t0, 0xA($s0)
    /* 12FEE8 80120F38 1620FFB0 */  bnez       $s1, .L80120DFC_12FDAC
    /* 12FEEC 80120F3C 2631FFFF */   addiu     $s1, $s1, -0x1
    /* 12FEF0 80120F40 8FA90094 */  lw         $t1, 0x94($sp)
    /* 12FEF4 80120F44 8FAB0064 */  lw         $t3, 0x64($sp)
    /* 12FEF8 80120F48 27DEFFEC */  addiu      $fp, $fp, -0x14
    /* 12FEFC 80120F4C 252AFFFF */  addiu      $t2, $t1, -0x1
    /* 12FF00 80120F50 256C0200 */  addiu      $t4, $t3, 0x200
    /* 12FF04 80120F54 AFAC0064 */  sw         $t4, 0x64($sp)
    /* 12FF08 80120F58 1520FFA5 */  bnez       $t1, .L80120DF0_12FDA0
    /* 12FF0C 80120F5C AFAA0094 */   sw        $t2, 0x94($sp)
    /* 12FF10 80120F60 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 12FF14 80120F64 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 12FF18 80120F68 8C620000 */  lw         $v0, 0x0($v1)
    /* 12FF1C 80120F6C 3C0F8003 */  lui        $t7, %hi(D_80031160)
    /* 12FF20 80120F70 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 12FF24 80120F74 244D0008 */  addiu      $t5, $v0, 0x8
    /* 12FF28 80120F78 AC6D0000 */  sw         $t5, 0x0($v1)
    /* 12FF2C 80120F7C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 12FF30 80120F80 25EF1160 */  addiu      $t7, $t7, %lo(D_80031160)
    /* 12FF34 80120F84 3C0E0102 */  lui        $t6, (0x1020040 >> 16)
    /* 12FF38 80120F88 35CE0040 */  ori        $t6, $t6, (0x1020040 & 0xFFFF)
    /* 12FF3C 80120F8C 01E1C024 */  and        $t8, $t7, $at
    /* 12FF40 80120F90 AC580004 */  sw         $t8, 0x4($v0)
    /* 12FF44 80120F94 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 12FF48 80120F98 8C620000 */  lw         $v0, 0x0($v1)
    /* 12FF4C 80120F9C 3C080400 */  lui        $t0, (0x400658F >> 16)
    /* 12FF50 80120FA0 3508658F */  ori        $t0, $t0, (0x400658F & 0xFFFF)
    /* 12FF54 80120FA4 24590008 */  addiu      $t9, $v0, 0x8
    /* 12FF58 80120FA8 AC790000 */  sw         $t9, 0x0($v1)
    /* 12FF5C 80120FAC AC480000 */  sw         $t0, 0x0($v0)
    /* 12FF60 80120FB0 8EC90000 */  lw         $t1, 0x0($s6)
    /* 12FF64 80120FB4 3C0D0504 */  lui        $t5, %hi(D_5038FF8)
    /* 12FF68 80120FB8 25AD8FF8 */  addiu      $t5, $t5, %lo(D_5038FF8)
    /* 12FF6C 80120FBC 252AFE70 */  addiu      $t2, $t1, -0x190
    /* 12FF70 80120FC0 AC4A0004 */  sw         $t2, 0x4($v0)
    /* 12FF74 80120FC4 8C620000 */  lw         $v0, 0x0($v1)
    /* 12FF78 80120FC8 3C0C0600 */  lui        $t4, (0x6000000 >> 16)
    /* 12FF7C 80120FCC 244B0008 */  addiu      $t3, $v0, 0x8
    /* 12FF80 80120FD0 AC6B0000 */  sw         $t3, 0x0($v1)
    /* 12FF84 80120FD4 AC4D0004 */  sw         $t5, 0x4($v0)
    /* 12FF88 80120FD8 AC4C0000 */  sw         $t4, 0x0($v0)
    /* 12FF8C 80120FDC 8FBF005C */  lw         $ra, 0x5C($sp)
    /* 12FF90 80120FE0 8FBE0058 */  lw         $fp, 0x58($sp)
    /* 12FF94 80120FE4 8FB70054 */  lw         $s7, 0x54($sp)
    /* 12FF98 80120FE8 8FB60050 */  lw         $s6, 0x50($sp)
    /* 12FF9C 80120FEC 8FB5004C */  lw         $s5, 0x4C($sp)
    /* 12FFA0 80120FF0 8FB40048 */  lw         $s4, 0x48($sp)
    /* 12FFA4 80120FF4 8FB30044 */  lw         $s3, 0x44($sp)
    /* 12FFA8 80120FF8 8FB20040 */  lw         $s2, 0x40($sp)
    /* 12FFAC 80120FFC 8FB1003C */  lw         $s1, 0x3C($sp)
    /* 12FFB0 80121000 8FB00038 */  lw         $s0, 0x38($sp)
    /* 12FFB4 80121004 D7BA0030 */  ldc1       $f26, 0x30($sp)
    /* 12FFB8 80121008 D7B80028 */  ldc1       $f24, 0x28($sp)
    /* 12FFBC 8012100C D7B60020 */  ldc1       $f22, 0x20($sp)
    /* 12FFC0 80121010 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 12FFC4 80121014 03E00008 */  jr         $ra
    /* 12FFC8 80121018 27BD00A0 */   addiu     $sp, $sp, 0xA0
endlabel func_80120D6C_12FD1C
