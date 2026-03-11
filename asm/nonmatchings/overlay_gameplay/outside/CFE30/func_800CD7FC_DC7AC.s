nonmatching func_800CD7FC_DC7AC, 0x29C

glabel func_800CD7FC_DC7AC
    /* DC7AC 800CD7FC 308E00FF */  andi       $t6, $a0, 0xFF
    /* DC7B0 800CD800 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* DC7B4 800CD804 000E7880 */  sll        $t7, $t6, 2
    /* DC7B8 800CD808 AFB1001C */  sw         $s1, 0x1C($sp)
    /* DC7BC 800CD80C 01EE7823 */  subu       $t7, $t7, $t6
    /* DC7C0 800CD810 000F7880 */  sll        $t7, $t7, 2
    /* DC7C4 800CD814 3C118015 */  lui        $s1, %hi(D_8015408E)
    /* DC7C8 800CD818 022F8821 */  addu       $s1, $s1, $t7
    /* DC7CC 800CD81C 8631408E */  lh         $s1, %lo(D_8015408E)($s1)
    /* DC7D0 800CD820 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* DC7D4 800CD824 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* DC7D8 800CD828 AFBE0038 */  sw         $fp, 0x38($sp)
    /* DC7DC 800CD82C 0011C0C0 */  sll        $t8, $s1, 3
    /* DC7E0 800CD830 8C620000 */  lw         $v0, 0x0($v1)
    /* DC7E4 800CD834 3C1E8015 */  lui        $fp, %hi(D_80154318)
    /* DC7E8 800CD838 0311C023 */  subu       $t8, $t8, $s1
    /* DC7EC 800CD83C 27DE4318 */  addiu      $fp, $fp, %lo(D_80154318)
    /* DC7F0 800CD840 0018C080 */  sll        $t8, $t8, 2
    /* DC7F4 800CD844 03D8C821 */  addu       $t9, $fp, $t8
    /* DC7F8 800CD848 87310004 */  lh         $s1, 0x4($t9)
    /* DC7FC 800CD84C AFBF003C */  sw         $ra, 0x3C($sp)
    /* DC800 800CD850 244E0008 */  addiu      $t6, $v0, 0x8
    /* DC804 800CD854 AFB70034 */  sw         $s7, 0x34($sp)
    /* DC808 800CD858 AFB60030 */  sw         $s6, 0x30($sp)
    /* DC80C 800CD85C AFB5002C */  sw         $s5, 0x2C($sp)
    /* DC810 800CD860 AFB40028 */  sw         $s4, 0x28($sp)
    /* DC814 800CD864 AFB30024 */  sw         $s3, 0x24($sp)
    /* DC818 800CD868 AFB20020 */  sw         $s2, 0x20($sp)
    /* DC81C 800CD86C AFB00018 */  sw         $s0, 0x18($sp)
    /* DC820 800CD870 AFA40040 */  sw         $a0, 0x40($sp)
    /* DC824 800CD874 AC6E0000 */  sw         $t6, 0x0($v1)
    /* DC828 800CD878 3C1FE700 */  lui        $ra, (0xE7000000 >> 16)
    /* DC82C 800CD87C AC5F0000 */  sw         $ra, 0x0($v0)
    /* DC830 800CD880 AC400004 */  sw         $zero, 0x4($v0)
    /* DC834 800CD884 8C620000 */  lw         $v0, 0x0($v1)
    /* DC838 800CD888 3C19FF32 */  lui        $t9, (0xFF327F3F >> 16)
    /* DC83C 800CD88C 3C18FCFF */  lui        $t8, (0xFCFF99FF >> 16)
    /* DC840 800CD890 244F0008 */  addiu      $t7, $v0, 0x8
    /* DC844 800CD894 AC6F0000 */  sw         $t7, 0x0($v1)
    /* DC848 800CD898 371899FF */  ori        $t8, $t8, (0xFCFF99FF & 0xFFFF)
    /* DC84C 800CD89C 37397F3F */  ori        $t9, $t9, (0xFF327F3F & 0xFFFF)
    /* DC850 800CD8A0 AC590004 */  sw         $t9, 0x4($v0)
    /* DC854 800CD8A4 AC580000 */  sw         $t8, 0x0($v0)
    /* DC858 800CD8A8 8C620000 */  lw         $v0, 0x0($v1)
    /* DC85C 800CD8AC 3C190101 */  lui        $t9, %hi(D_100E080)
    /* DC860 800CD8B0 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* DC864 800CD8B4 244E0008 */  addiu      $t6, $v0, 0x8
    /* DC868 800CD8B8 AC6E0000 */  sw         $t6, 0x0($v1)
    /* DC86C 800CD8BC AC400004 */  sw         $zero, 0x4($v0)
    /* DC870 800CD8C0 AC5F0000 */  sw         $ra, 0x0($v0)
    /* DC874 800CD8C4 8C620000 */  lw         $v0, 0x0($v1)
    /* DC878 800CD8C8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* DC87C 800CD8CC 2739E080 */  addiu      $t9, $t9, %lo(D_100E080)
    /* DC880 800CD8D0 244F0008 */  addiu      $t7, $v0, 0x8
    /* DC884 800CD8D4 AC6F0000 */  sw         $t7, 0x0($v1)
    /* DC888 800CD8D8 03217024 */  and        $t6, $t9, $at
    /* DC88C 800CD8DC 3C18FD90 */  lui        $t8, (0xFD900000 >> 16)
    /* DC890 800CD8E0 AC580000 */  sw         $t8, 0x0($v0)
    /* DC894 800CD8E4 AC4E0004 */  sw         $t6, 0x4($v0)
    /* DC898 800CD8E8 8C620000 */  lw         $v0, 0x0($v1)
    /* DC89C 800CD8EC 3C190708 */  lui        $t9, (0x7080200 >> 16)
    /* DC8A0 800CD8F0 37390200 */  ori        $t9, $t9, (0x7080200 & 0xFFFF)
    /* DC8A4 800CD8F4 244F0008 */  addiu      $t7, $v0, 0x8
    /* DC8A8 800CD8F8 AC6F0000 */  sw         $t7, 0x0($v1)
    /* DC8AC 800CD8FC 3C18F590 */  lui        $t8, (0xF5900000 >> 16)
    /* DC8B0 800CD900 AC580000 */  sw         $t8, 0x0($v0)
    /* DC8B4 800CD904 AC590004 */  sw         $t9, 0x4($v0)
    /* DC8B8 800CD908 8C620000 */  lw         $v0, 0x0($v1)
    /* DC8BC 800CD90C 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
    /* DC8C0 800CD910 3C19F300 */  lui        $t9, (0xF3000000 >> 16)
    /* DC8C4 800CD914 244E0008 */  addiu      $t6, $v0, 0x8
    /* DC8C8 800CD918 AC6E0000 */  sw         $t6, 0x0($v1)
    /* DC8CC 800CD91C AC400004 */  sw         $zero, 0x4($v0)
    /* DC8D0 800CD920 AC4F0000 */  sw         $t7, 0x0($v0)
    /* DC8D4 800CD924 8C620000 */  lw         $v0, 0x0($v1)
    /* DC8D8 800CD928 3C0E070F */  lui        $t6, (0x70FF400 >> 16)
    /* DC8DC 800CD92C 35CEF400 */  ori        $t6, $t6, (0x70FF400 & 0xFFFF)
    /* DC8E0 800CD930 24580008 */  addiu      $t8, $v0, 0x8
    /* DC8E4 800CD934 AC780000 */  sw         $t8, 0x0($v1)
    /* DC8E8 800CD938 AC4E0004 */  sw         $t6, 0x4($v0)
    /* DC8EC 800CD93C AC590000 */  sw         $t9, 0x0($v0)
    /* DC8F0 800CD940 8C620000 */  lw         $v0, 0x0($v1)
    /* DC8F4 800CD944 3C19F580 */  lui        $t9, (0xF5800400 >> 16)
    /* DC8F8 800CD948 3C0E0008 */  lui        $t6, (0x80200 >> 16)
    /* DC8FC 800CD94C 244F0008 */  addiu      $t7, $v0, 0x8
    /* DC900 800CD950 AC6F0000 */  sw         $t7, 0x0($v1)
    /* DC904 800CD954 AC400004 */  sw         $zero, 0x4($v0)
    /* DC908 800CD958 AC5F0000 */  sw         $ra, 0x0($v0)
    /* DC90C 800CD95C 8C620000 */  lw         $v0, 0x0($v1)
    /* DC910 800CD960 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
    /* DC914 800CD964 37390400 */  ori        $t9, $t9, (0xF5800400 & 0xFFFF)
    /* DC918 800CD968 24580008 */  addiu      $t8, $v0, 0x8
    /* DC91C 800CD96C AC780000 */  sw         $t8, 0x0($v1)
    /* DC920 800CD970 AC4E0004 */  sw         $t6, 0x4($v0)
    /* DC924 800CD974 AC590000 */  sw         $t9, 0x0($v0)
    /* DC928 800CD978 8C620000 */  lw         $v0, 0x0($v1)
    /* DC92C 800CD97C 3C190007 */  lui        $t9, (0x7C07C >> 16)
    /* DC930 800CD980 3739C07C */  ori        $t9, $t9, (0x7C07C & 0xFFFF)
    /* DC934 800CD984 244F0008 */  addiu      $t7, $v0, 0x8
    /* DC938 800CD988 AC6F0000 */  sw         $t7, 0x0($v1)
    /* DC93C 800CD98C 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* DC940 800CD990 24050020 */  addiu      $a1, $zero, 0x20
    /* DC944 800CD994 3C018015 */  lui        $at, %hi(D_80153BCD)
    /* DC948 800CD998 AC580000 */  sw         $t8, 0x0($v0)
    /* DC94C 800CD99C AC590004 */  sw         $t9, 0x4($v0)
    /* DC950 800CD9A0 A0253BCD */  sb         $a1, %lo(D_80153BCD)($at)
    /* DC954 800CD9A4 3C018015 */  lui        $at, %hi(D_80153BCE)
    /* DC958 800CD9A8 A0253BCE */  sb         $a1, %lo(D_80153BCE)($at)
    /* DC95C 800CD9AC 2401FFFB */  addiu      $at, $zero, -0x5
    /* DC960 800CD9B0 1221002D */  beq        $s1, $at, .L800CDA68_DCA18
    /* DC964 800CD9B4 2414FFFA */   addiu     $s4, $zero, -0x6
    /* DC968 800CD9B8 1234002B */  beq        $s1, $s4, .L800CDA68_DCA18
    /* DC96C 800CD9BC 3C178015 */   lui       $s7, %hi(D_80153BCC)
    /* DC970 800CD9C0 3C168015 */  lui        $s6, %hi(D_80153BC8)
    /* DC974 800CD9C4 3C158015 */  lui        $s5, %hi(D_80153BC4)
    /* DC978 800CD9C8 3C138015 */  lui        $s3, %hi(D_80156EDA)
    /* DC97C 800CD9CC 3C128015 */  lui        $s2, %hi(D_80153BB8)
    /* DC980 800CD9D0 26523BB8 */  addiu      $s2, $s2, %lo(D_80153BB8)
    /* DC984 800CD9D4 26736EDA */  addiu      $s3, $s3, %lo(D_80156EDA)
    /* DC988 800CD9D8 26B53BC4 */  addiu      $s5, $s5, %lo(D_80153BC4)
    /* DC98C 800CD9DC 26D63BC8 */  addiu      $s6, $s6, %lo(D_80153BC8)
    /* DC990 800CD9E0 26F73BCC */  addiu      $s7, $s7, %lo(D_80153BCC)
    /* DC994 800CD9E4 001170C0 */  sll        $t6, $s1, 3
  .L800CD9E8_DC998:
    /* DC998 800CD9E8 01D17023 */  subu       $t6, $t6, $s1
    /* DC99C 800CD9EC 000E7080 */  sll        $t6, $t6, 2
    /* DC9A0 800CD9F0 03CE8021 */  addu       $s0, $fp, $t6
    /* DC9A4 800CD9F4 860F0008 */  lh         $t7, 0x8($s0)
    /* DC9A8 800CD9F8 8618000A */  lh         $t8, 0xA($s0)
    /* DC9AC 800CD9FC 8619000C */  lh         $t9, 0xC($s0)
    /* DC9B0 800CDA00 448F2000 */  mtc1       $t7, $f4
    /* DC9B4 800CDA04 860F0002 */  lh         $t7, 0x2($s0)
    /* DC9B8 800CDA08 44984000 */  mtc1       $t8, $f8
    /* DC9BC 800CDA0C 468021A0 */  cvt.s.w    $f6, $f4
    /* DC9C0 800CDA10 44998000 */  mtc1       $t9, $f16
    /* DC9C4 800CDA14 448F2000 */  mtc1       $t7, $f4
    /* DC9C8 800CDA18 92180011 */  lbu        $t8, 0x11($s0)
    /* DC9CC 800CDA1C 260E000E */  addiu      $t6, $s0, 0xE
    /* DC9D0 800CDA20 468042A0 */  cvt.s.w    $f10, $f8
    /* DC9D4 800CDA24 E6460000 */  swc1       $f6, 0x0($s2)
    /* DC9D8 800CDA28 AEAE0000 */  sw         $t6, 0x0($s5)
    /* DC9DC 800CDA2C A2F80000 */  sb         $t8, 0x0($s7)
    /* DC9E0 800CDA30 468084A0 */  cvt.s.w    $f18, $f16
    /* DC9E4 800CDA34 E64A0004 */  swc1       $f10, 0x4($s2)
    /* DC9E8 800CDA38 468021A0 */  cvt.s.w    $f6, $f4
    /* DC9EC 800CDA3C E6520008 */  swc1       $f18, 0x8($s2)
    /* DC9F0 800CDA40 0C036CD4 */  jal        func_800DB350_EA300
    /* DC9F4 800CDA44 E6C60000 */   swc1      $f6, 0x0($s6)
    /* DC9F8 800CDA48 86790000 */  lh         $t9, 0x0($s3)
    /* DC9FC 800CDA4C 86110004 */  lh         $s1, 0x4($s0)
    /* DCA00 800CDA50 2401FFFB */  addiu      $at, $zero, -0x5
    /* DCA04 800CDA54 272E0004 */  addiu      $t6, $t9, 0x4
    /* DCA08 800CDA58 12210003 */  beq        $s1, $at, .L800CDA68_DCA18
    /* DCA0C 800CDA5C A66E0000 */   sh        $t6, 0x0($s3)
    /* DCA10 800CDA60 5634FFE1 */  bnel       $s1, $s4, .L800CD9E8_DC998
    /* DCA14 800CDA64 001170C0 */   sll       $t6, $s1, 3
  .L800CDA68_DCA18:
    /* DCA18 800CDA68 8FBF003C */  lw         $ra, 0x3C($sp)
    /* DCA1C 800CDA6C 8FB00018 */  lw         $s0, 0x18($sp)
    /* DCA20 800CDA70 8FB1001C */  lw         $s1, 0x1C($sp)
    /* DCA24 800CDA74 8FB20020 */  lw         $s2, 0x20($sp)
    /* DCA28 800CDA78 8FB30024 */  lw         $s3, 0x24($sp)
    /* DCA2C 800CDA7C 8FB40028 */  lw         $s4, 0x28($sp)
    /* DCA30 800CDA80 8FB5002C */  lw         $s5, 0x2C($sp)
    /* DCA34 800CDA84 8FB60030 */  lw         $s6, 0x30($sp)
    /* DCA38 800CDA88 8FB70034 */  lw         $s7, 0x34($sp)
    /* DCA3C 800CDA8C 8FBE0038 */  lw         $fp, 0x38($sp)
    /* DCA40 800CDA90 03E00008 */  jr         $ra
    /* DCA44 800CDA94 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800CD7FC_DC7AC
