nonmatching func_8010ED84_11DD34, 0x1BC

glabel func_8010ED84_11DD34
    /* 11DD34 8010ED84 3C0E8016 */  lui        $t6, %hi(D_80159D68)
    /* 11DD38 8010ED88 8DCE9D68 */  lw         $t6, %lo(D_80159D68)($t6)
    /* 11DD3C 8010ED8C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 11DD40 8010ED90 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 11DD44 8010ED94 85CF000C */  lh         $t7, 0xC($t6)
    /* 11DD48 8010ED98 3C018016 */  lui        $at, %hi(D_80159D34)
    /* 11DD4C 8010ED9C 448F2000 */  mtc1       $t7, $f4
    /* 11DD50 8010EDA0 10C00032 */  beqz       $a2, .L8010EE6C_11DE1C
    /* 11DD54 8010EDA4 468023A0 */   cvt.s.w   $f14, $f4
    /* 11DD58 8010EDA8 C4209D34 */  lwc1       $f0, %lo(D_80159D34)($at)
    /* 11DD5C 8010EDAC 3C018016 */  lui        $at, %hi(D_80159D38)
    /* 11DD60 8010EDB0 C4229D38 */  lwc1       $f2, %lo(D_80159D38)($at)
    /* 11DD64 8010EDB4 46000182 */  mul.s      $f6, $f0, $f0
    /* 11DD68 8010EDB8 AFA40020 */  sw         $a0, 0x20($sp)
    /* 11DD6C 8010EDBC AFA50024 */  sw         $a1, 0x24($sp)
    /* 11DD70 8010EDC0 46021202 */  mul.s      $f8, $f2, $f2
    /* 11DD74 8010EDC4 E7AE001C */  swc1       $f14, 0x1C($sp)
    /* 11DD78 8010EDC8 0C007650 */  jal        sqrtf
    /* 11DD7C 8010EDCC 46083300 */   add.s     $f12, $f6, $f8
    /* 11DD80 8010EDD0 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* 11DD84 8010EDD4 44818800 */  mtc1       $at, $f17
    /* 11DD88 8010EDD8 44808000 */  mtc1       $zero, $f16
    /* 11DD8C 8010EDDC 460002A1 */  cvt.d.s    $f10, $f0
    /* 11DD90 8010EDE0 8FA40020 */  lw         $a0, 0x20($sp)
    /* 11DD94 8010EDE4 4630503C */  c.lt.d     $f10, $f16
    /* 11DD98 8010EDE8 8FA50024 */  lw         $a1, 0x24($sp)
    /* 11DD9C 8010EDEC C7AE001C */  lwc1       $f14, 0x1C($sp)
    /* 11DDA0 8010EDF0 45020007 */  bc1fl      .L8010EE10_11DDC0
    /* 11DDA4 8010EDF4 46007083 */   div.s     $f2, $f14, $f0
    /* 11DDA8 8010EDF8 44800000 */  mtc1       $zero, $f0
    /* 11DDAC 8010EDFC 00000000 */  nop
    /* 11DDB0 8010EE00 E4800000 */  swc1       $f0, 0x0($a0)
    /* 11DDB4 8010EE04 1000004A */  b          .L8010EF30_11DEE0
    /* 11DDB8 8010EE08 E4A00000 */   swc1      $f0, 0x0($a1)
    /* 11DDBC 8010EE0C 46007083 */  div.s      $f2, $f14, $f0
  .L8010EE10_11DDC0:
    /* 11DDC0 8010EE10 3C028016 */  lui        $v0, %hi(D_80159D60)
    /* 11DDC4 8010EE14 24429D60 */  addiu      $v0, $v0, %lo(D_80159D60)
    /* 11DDC8 8010EE18 8C580000 */  lw         $t8, 0x0($v0)
    /* 11DDCC 8010EE1C 3C018016 */  lui        $at, %hi(D_80159D34)
    /* 11DDD0 8010EE20 C4269D34 */  lwc1       $f6, %lo(D_80159D34)($at)
    /* 11DDD4 8010EE24 87190000 */  lh         $t9, 0x0($t8)
    /* 11DDD8 8010EE28 3C018016 */  lui        $at, %hi(D_80159D38)
    /* 11DDDC 8010EE2C 44999000 */  mtc1       $t9, $f18
    /* 11DDE0 8010EE30 00000000 */  nop
    /* 11DDE4 8010EE34 46809120 */  cvt.s.w    $f4, $f18
    /* 11DDE8 8010EE38 46023202 */  mul.s      $f8, $f6, $f2
    /* 11DDEC 8010EE3C 46082280 */  add.s      $f10, $f4, $f8
    /* 11DDF0 8010EE40 E48A0000 */  swc1       $f10, 0x0($a0)
    /* 11DDF4 8010EE44 8C480000 */  lw         $t0, 0x0($v0)
    /* 11DDF8 8010EE48 C4269D38 */  lwc1       $f6, %lo(D_80159D38)($at)
    /* 11DDFC 8010EE4C 85090004 */  lh         $t1, 0x4($t0)
    /* 11DE00 8010EE50 46023102 */  mul.s      $f4, $f6, $f2
    /* 11DE04 8010EE54 44898000 */  mtc1       $t1, $f16
    /* 11DE08 8010EE58 00000000 */  nop
    /* 11DE0C 8010EE5C 468084A0 */  cvt.s.w    $f18, $f16
    /* 11DE10 8010EE60 46049200 */  add.s      $f8, $f18, $f4
    /* 11DE14 8010EE64 10000032 */  b          .L8010EF30_11DEE0
    /* 11DE18 8010EE68 E4A80000 */   swc1      $f8, 0x0($a1)
  .L8010EE6C_11DE1C:
    /* 11DE1C 8010EE6C 3C018016 */  lui        $at, %hi(D_80159D3C)
    /* 11DE20 8010EE70 C4209D3C */  lwc1       $f0, %lo(D_80159D3C)($at)
    /* 11DE24 8010EE74 3C018016 */  lui        $at, %hi(D_80159D40)
    /* 11DE28 8010EE78 C4229D40 */  lwc1       $f2, %lo(D_80159D40)($at)
    /* 11DE2C 8010EE7C 46000282 */  mul.s      $f10, $f0, $f0
    /* 11DE30 8010EE80 AFA40020 */  sw         $a0, 0x20($sp)
    /* 11DE34 8010EE84 AFA50024 */  sw         $a1, 0x24($sp)
    /* 11DE38 8010EE88 46021402 */  mul.s      $f16, $f2, $f2
    /* 11DE3C 8010EE8C E7AE001C */  swc1       $f14, 0x1C($sp)
    /* 11DE40 8010EE90 0C007650 */  jal        sqrtf
    /* 11DE44 8010EE94 46105300 */   add.s     $f12, $f10, $f16
    /* 11DE48 8010EE98 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* 11DE4C 8010EE9C 44819800 */  mtc1       $at, $f19
    /* 11DE50 8010EEA0 44809000 */  mtc1       $zero, $f18
    /* 11DE54 8010EEA4 460001A1 */  cvt.d.s    $f6, $f0
    /* 11DE58 8010EEA8 8FA40020 */  lw         $a0, 0x20($sp)
    /* 11DE5C 8010EEAC 4632303C */  c.lt.d     $f6, $f18
    /* 11DE60 8010EEB0 8FA50024 */  lw         $a1, 0x24($sp)
    /* 11DE64 8010EEB4 C7AE001C */  lwc1       $f14, 0x1C($sp)
    /* 11DE68 8010EEB8 45020007 */  bc1fl      .L8010EED8_11DE88
    /* 11DE6C 8010EEBC 46007083 */   div.s     $f2, $f14, $f0
    /* 11DE70 8010EEC0 44800000 */  mtc1       $zero, $f0
    /* 11DE74 8010EEC4 00000000 */  nop
    /* 11DE78 8010EEC8 E4800000 */  swc1       $f0, 0x0($a0)
    /* 11DE7C 8010EECC 10000018 */  b          .L8010EF30_11DEE0
    /* 11DE80 8010EED0 E4A00000 */   swc1      $f0, 0x0($a1)
    /* 11DE84 8010EED4 46007083 */  div.s      $f2, $f14, $f0
  .L8010EED8_11DE88:
    /* 11DE88 8010EED8 3C028016 */  lui        $v0, %hi(D_80159D60)
    /* 11DE8C 8010EEDC 24429D60 */  addiu      $v0, $v0, %lo(D_80159D60)
    /* 11DE90 8010EEE0 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 11DE94 8010EEE4 3C018016 */  lui        $at, %hi(D_80159D3C)
    /* 11DE98 8010EEE8 C42A9D3C */  lwc1       $f10, %lo(D_80159D3C)($at)
    /* 11DE9C 8010EEEC 854B0000 */  lh         $t3, 0x0($t2)
    /* 11DEA0 8010EEF0 3C018016 */  lui        $at, %hi(D_80159D40)
    /* 11DEA4 8010EEF4 448B2000 */  mtc1       $t3, $f4
    /* 11DEA8 8010EEF8 00000000 */  nop
    /* 11DEAC 8010EEFC 46802220 */  cvt.s.w    $f8, $f4
    /* 11DEB0 8010EF00 46025402 */  mul.s      $f16, $f10, $f2
    /* 11DEB4 8010EF04 46104180 */  add.s      $f6, $f8, $f16
    /* 11DEB8 8010EF08 E4860000 */  swc1       $f6, 0x0($a0)
    /* 11DEBC 8010EF0C 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 11DEC0 8010EF10 C42A9D40 */  lwc1       $f10, %lo(D_80159D40)($at)
    /* 11DEC4 8010EF14 858D0004 */  lh         $t5, 0x4($t4)
    /* 11DEC8 8010EF18 46025202 */  mul.s      $f8, $f10, $f2
    /* 11DECC 8010EF1C 448D9000 */  mtc1       $t5, $f18
    /* 11DED0 8010EF20 00000000 */  nop
    /* 11DED4 8010EF24 46809120 */  cvt.s.w    $f4, $f18
    /* 11DED8 8010EF28 46082400 */  add.s      $f16, $f4, $f8
    /* 11DEDC 8010EF2C E4B00000 */  swc1       $f16, 0x0($a1)
  .L8010EF30_11DEE0:
    /* 11DEE0 8010EF30 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 11DEE4 8010EF34 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 11DEE8 8010EF38 03E00008 */  jr         $ra
    /* 11DEEC 8010EF3C 00000000 */   nop
endlabel func_8010ED84_11DD34
