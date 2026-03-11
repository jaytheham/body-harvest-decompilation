nonmatching func_8000DCCC_E8CC, 0x230

glabel func_8000DCCC_E8CC
    /* E8CC 8000DCCC 3C028006 */  lui        $v0, %hi(D_8005BAEC)
    /* E8D0 8000DCD0 8C42BAEC */  lw         $v0, %lo(D_8005BAEC)($v0)
    /* E8D4 8000DCD4 3C038006 */  lui        $v1, %hi(__osCurrentTime)
    /* E8D8 8000DCD8 8C63BAF0 */  lw         $v1, %lo(__osCurrentTime)($v1)
    /* E8DC 8000DCDC 00420019 */  multu      $v0, $v0
    /* E8E0 8000DCE0 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* E8E4 8000DCE4 AFA70064 */  sw         $a3, 0x64($sp)
    /* E8E8 8000DCE8 3C078006 */  lui        $a3, %hi(D_80059CD2)
    /* E8EC 8000DCEC 84E79CD2 */  lh         $a3, %lo(D_80059CD2)($a3)
    /* E8F0 8000DCF0 3C088006 */  lui        $t0, %hi(D_80059CD4)
    /* E8F4 8000DCF4 85089CD4 */  lh         $t0, %lo(D_80059CD4)($t0)
    /* E8F8 8000DCF8 AFA60060 */  sw         $a2, 0x60($sp)
    /* E8FC 8000DCFC 3C068006 */  lui        $a2, %hi(D_80059CD0)
    /* E900 8000DD00 84C69CD0 */  lh         $a2, %lo(D_80059CD0)($a2)
    /* E904 8000DD04 00007012 */  mflo       $t6
    /* E908 8000DD08 AFA5005C */  sw         $a1, 0x5C($sp)
    /* E90C 8000DD0C 00065840 */  sll        $t3, $a2, 1
    /* E910 8000DD10 00630019 */  multu      $v1, $v1
    /* E914 8000DD14 AFB10018 */  sw         $s1, 0x18($sp)
    /* E918 8000DD18 AFB00014 */  sw         $s0, 0x14($sp)
    /* E91C 8000DD1C AFBF001C */  sw         $ra, 0x1C($sp)
    /* E920 8000DD20 AFA40058 */  sw         $a0, 0x58($sp)
    /* E924 8000DD24 AFA70054 */  sw         $a3, 0x54($sp)
    /* E928 8000DD28 AFA80050 */  sw         $t0, 0x50($sp)
    /* E92C 8000DD2C 00007812 */  mflo       $t7
    /* E930 8000DD30 01CF4821 */  addu       $t1, $t6, $t7
    /* E934 8000DD34 05210003 */  bgez       $t1, .L8000DD44_E944
    /* E938 8000DD38 0009C083 */   sra       $t8, $t1, 2
    /* E93C 8000DD3C 25210003 */  addiu      $at, $t1, 0x3
    /* E940 8000DD40 0001C083 */  sra        $t8, $at, 2
  .L8000DD44_E944:
    /* E944 8000DD44 00E70019 */  multu      $a3, $a3
    /* E948 8000DD48 24010510 */  addiu      $at, $zero, 0x510
    /* E94C 8000DD4C 0000C812 */  mflo       $t9
    /* E950 8000DD50 00000000 */  nop
    /* E954 8000DD54 00000000 */  nop
    /* E958 8000DD58 01080019 */  multu      $t0, $t0
    /* E95C 8000DD5C 00005012 */  mflo       $t2
    /* E960 8000DD60 032A2821 */  addu       $a1, $t9, $t2
    /* E964 8000DD64 03056023 */  subu       $t4, $t8, $a1
    /* E968 8000DD68 016C0019 */  multu      $t3, $t4
    /* E96C 8000DD6C 00006812 */  mflo       $t5
    /* E970 8000DD70 00000000 */  nop
    /* E974 8000DD74 00000000 */  nop
    /* E978 8000DD78 00C50019 */  multu      $a2, $a1
    /* E97C 8000DD7C 00007012 */  mflo       $t6
    /* E980 8000DD80 01AE8821 */  addu       $s1, $t5, $t6
    /* E984 8000DD84 00000000 */  nop
    /* E988 8000DD88 0221001A */  div        $zero, $s1, $at
    /* E98C 8000DD8C 00008812 */  mflo       $s1
    /* E990 8000DD90 3230FFFF */  andi       $s0, $s1, 0xFFFF
    /* E994 8000DD94 0C007654 */  jal        coss
    /* E998 8000DD98 3204FFFF */   andi      $a0, $s0, 0xFFFF
    /* E99C 8000DD9C A7A20036 */  sh         $v0, 0x36($sp)
    /* E9A0 8000DDA0 0C007660 */  jal        sins
    /* E9A4 8000DDA4 3204FFFF */   andi      $a0, $s0, 0xFFFF
    /* E9A8 8000DDA8 44824000 */  mtc1       $v0, $f8
    /* E9AC 8000DDAC 8FA80050 */  lw         $t0, 0x50($sp)
    /* E9B0 8000DDB0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* E9B4 8000DDB4 468042A0 */  cvt.s.w    $f10, $f8
    /* E9B8 8000DDB8 44882000 */  mtc1       $t0, $f4
    /* E9BC 8000DDBC 44817800 */  mtc1       $at, $f15
    /* E9C0 8000DDC0 44807000 */  mtc1       $zero, $f14
    /* E9C4 8000DDC4 87B80036 */  lh         $t8, 0x36($sp)
    /* E9C8 8000DDC8 46802021 */  cvt.d.w    $f0, $f4
    /* E9CC 8000DDCC 8FA70054 */  lw         $a3, 0x54($sp)
    /* E9D0 8000DDD0 44984000 */  mtc1       $t8, $f8
    /* E9D4 8000DDD4 3204FFFF */  andi       $a0, $s0, 0xFFFF
    /* E9D8 8000DDD8 460054A1 */  cvt.d.s    $f18, $f10
    /* E9DC 8000DDDC 468042A0 */  cvt.s.w    $f10, $f8
    /* E9E0 8000DDE0 44873000 */  mtc1       $a3, $f6
    /* E9E4 8000DDE4 F7A00028 */  sdc1       $f0, 0x28($sp)
    /* E9E8 8000DDE8 462E9103 */  div.d      $f4, $f18, $f14
    /* E9EC 8000DDEC 468030A1 */  cvt.d.w    $f2, $f6
    /* E9F0 8000DDF0 460054A1 */  cvt.d.s    $f18, $f10
    /* E9F4 8000DDF4 F7A20020 */  sdc1       $f2, 0x20($sp)
    /* E9F8 8000DDF8 46202182 */  mul.d      $f6, $f4, $f0
    /* E9FC 8000DDFC 462E9103 */  div.d      $f4, $f18, $f14
    /* EA00 8000DE00 46222202 */  mul.d      $f8, $f4, $f2
    /* EA04 8000DE04 46283280 */  add.d      $f10, $f6, $f8
    /* EA08 8000DE08 4620548D */  trunc.w.d  $f18, $f10
    /* EA0C 8000DE0C 0C007660 */  jal        sins
    /* EA10 8000DE10 E7B20040 */   swc1      $f18, 0x40($sp)
    /* EA14 8000DE14 A7A20036 */  sh         $v0, 0x36($sp)
    /* EA18 8000DE18 0C007654 */  jal        coss
    /* EA1C 8000DE1C 3204FFFF */   andi      $a0, $s0, 0xFFFF
    /* EA20 8000DE20 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* EA24 8000DE24 44817800 */  mtc1       $at, $f15
    /* EA28 8000DE28 34018000 */  ori        $at, $zero, 0x8000
    /* EA2C 8000DE2C 44807000 */  mtc1       $zero, $f14
    /* EA30 8000DE30 0221082A */  slt        $at, $s1, $at
    /* EA34 8000DE34 D7A00028 */  ldc1       $f0, 0x28($sp)
    /* EA38 8000DE38 14200002 */  bnez       $at, .L8000DE44_EA44
    /* EA3C 8000DE3C D7A20020 */   ldc1      $f2, 0x20($sp)
    /* EA40 8000DE40 24117FFF */  addiu      $s1, $zero, 0x7FFF
  .L8000DE44_EA44:
    /* EA44 8000DE44 44912000 */  mtc1       $s1, $f4
    /* EA48 8000DE48 3C018003 */  lui        $at, %hi(D_80037620)
    /* EA4C 8000DE4C D4307620 */  ldc1       $f16, %lo(D_80037620)($at)
    /* EA50 8000DE50 468021A0 */  cvt.s.w    $f6, $f4
    /* EA54 8000DE54 8FAA0040 */  lw         $t2, 0x40($sp)
    /* EA58 8000DE58 87AD0036 */  lh         $t5, 0x36($sp)
    /* EA5C 8000DE5C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* EA60 8000DE60 448A2000 */  mtc1       $t2, $f4
    /* EA64 8000DE64 3C018006 */  lui        $at, %hi(D_80059CD2)
    /* EA68 8000DE68 46003221 */  cvt.d.s    $f8, $f6
    /* EA6C 8000DE6C 468021A0 */  cvt.s.w    $f6, $f4
    /* EA70 8000DE70 8FB10018 */  lw         $s1, 0x18($sp)
    /* EA74 8000DE74 8FB00014 */  lw         $s0, 0x14($sp)
    /* EA78 8000DE78 27BD0058 */  addiu      $sp, $sp, 0x58
    /* EA7C 8000DE7C 46288281 */  sub.d      $f10, $f16, $f8
    /* EA80 8000DE80 46305483 */  div.d      $f18, $f10, $f16
    /* EA84 8000DE84 46209320 */  cvt.s.d    $f12, $f18
    /* EA88 8000DE88 44829000 */  mtc1       $v0, $f18
    /* EA8C 8000DE8C 460C3202 */  mul.s      $f8, $f6, $f12
    /* EA90 8000DE90 46809120 */  cvt.s.w    $f4, $f18
    /* EA94 8000DE94 448D9000 */  mtc1       $t5, $f18
    /* EA98 8000DE98 4600428D */  trunc.w.s  $f10, $f8
    /* EA9C 8000DE9C 460021A1 */  cvt.d.s    $f6, $f4
    /* EAA0 8000DEA0 46809120 */  cvt.s.w    $f4, $f18
    /* EAA4 8000DEA4 440C5000 */  mfc1       $t4, $f10
    /* EAA8 8000DEA8 00000000 */  nop
    /* EAAC 8000DEAC A42C9CD2 */  sh         $t4, %lo(D_80059CD2)($at)
    /* EAB0 8000DEB0 462E3203 */  div.d      $f8, $f6, $f14
    /* EAB4 8000DEB4 3C018006 */  lui        $at, %hi(D_80059CD4)
    /* EAB8 8000DEB8 460021A1 */  cvt.d.s    $f6, $f4
    /* EABC 8000DEBC 46204282 */  mul.d      $f10, $f8, $f0
    /* EAC0 8000DEC0 462E3203 */  div.d      $f8, $f6, $f14
    /* EAC4 8000DEC4 46204487 */  neg.d      $f18, $f8
    /* EAC8 8000DEC8 46229102 */  mul.d      $f4, $f18, $f2
    /* EACC 8000DECC 46245180 */  add.d      $f6, $f10, $f4
    /* EAD0 8000DED0 4620320D */  trunc.w.d  $f8, $f6
    /* EAD4 8000DED4 440F4000 */  mfc1       $t7, $f8
    /* EAD8 8000DED8 00000000 */  nop
    /* EADC 8000DEDC 448F9000 */  mtc1       $t7, $f18
    /* EAE0 8000DEE0 00000000 */  nop
    /* EAE4 8000DEE4 468092A0 */  cvt.s.w    $f10, $f18
    /* EAE8 8000DEE8 460C5102 */  mul.s      $f4, $f10, $f12
    /* EAEC 8000DEEC 4600218D */  trunc.w.s  $f6, $f4
    /* EAF0 8000DEF0 44193000 */  mfc1       $t9, $f6
    /* EAF4 8000DEF4 03E00008 */  jr         $ra
    /* EAF8 8000DEF8 A4399CD4 */   sh        $t9, %lo(D_80059CD4)($at)
endlabel func_8000DCCC_E8CC
