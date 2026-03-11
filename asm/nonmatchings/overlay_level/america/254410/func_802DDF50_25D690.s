nonmatching func_802DDF50_25D690, 0x698

glabel func_802DDF50_25D690
    /* 25D690 802DDF50 308600FF */  andi       $a2, $a0, 0xFF
    /* 25D694 802DDF54 00067080 */  sll        $t6, $a2, 2
    /* 25D698 802DDF58 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* 25D69C 802DDF5C 01C67021 */  addu       $t6, $t6, $a2
    /* 25D6A0 802DDF60 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 25D6A4 802DDF64 AFB00040 */  sw         $s0, 0x40($sp)
    /* 25D6A8 802DDF68 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 25D6AC 802DDF6C 000E7100 */  sll        $t6, $t6, 4
    /* 25D6B0 802DDF70 01CF8021 */  addu       $s0, $t6, $t7
    /* 25D6B4 802DDF74 8619002C */  lh         $t9, 0x2C($s0)
    /* 25D6B8 802DDF78 9218001A */  lbu        $t8, 0x1A($s0)
    /* 25D6BC 802DDF7C AFBF0044 */  sw         $ra, 0x44($sp)
    /* 25D6C0 802DDF80 2B210002 */  slti       $at, $t9, 0x2
    /* 25D6C4 802DDF84 AFA40080 */  sw         $a0, 0x80($sp)
    /* 25D6C8 802DDF88 14200003 */  bnez       $at, .L802DDF98_25D6D8
    /* 25D6CC 802DDF8C A7B8005E */   sh        $t8, 0x5E($sp)
    /* 25D6D0 802DDF90 24080600 */  addiu      $t0, $zero, 0x600
    /* 25D6D4 802DDF94 A6080012 */  sh         $t0, 0x12($s0)
  .L802DDF98_25D6D8:
    /* 25D6D8 802DDF98 8609000A */  lh         $t1, 0xA($s0)
    /* 25D6DC 802DDF9C 00C02025 */  or         $a0, $a2, $zero
    /* 25D6E0 802DDFA0 24050265 */  addiu      $a1, $zero, 0x265
    /* 25D6E4 802DDFA4 252A0FA0 */  addiu      $t2, $t1, 0xFA0
    /* 25D6E8 802DDFA8 A60A000A */  sh         $t2, 0xA($s0)
    /* 25D6EC 802DDFAC AFA6004C */  sw         $a2, 0x4C($sp)
    /* 25D6F0 802DDFB0 0C04DD1A */  jal        func_80137468_146418
    /* 25D6F4 802DDFB4 A3A60083 */   sb        $a2, 0x83($sp)
    /* 25D6F8 802DDFB8 86040000 */  lh         $a0, 0x0($s0)
    /* 25D6FC 802DDFBC 0C02E134 */  jal        func_800B84D0_C7480
    /* 25D700 802DDFC0 86050004 */   lh        $a1, 0x4($s0)
    /* 25D704 802DDFC4 87AD005E */  lh         $t5, 0x5E($sp)
    /* 25D708 802DDFC8 3C0F8025 */  lui        $t7, %hi(D_802566D8)
    /* 25D70C 802DDFCC 860C0002 */  lh         $t4, 0x2($s0)
    /* 25D710 802DDFD0 000D7080 */  sll        $t6, $t5, 2
    /* 25D714 802DDFD4 01CD7023 */  subu       $t6, $t6, $t5
    /* 25D718 802DDFD8 000E7080 */  sll        $t6, $t6, 2
    /* 25D71C 802DDFDC 01CD7021 */  addu       $t6, $t6, $t5
    /* 25D720 802DDFE0 000E70C0 */  sll        $t6, $t6, 3
    /* 25D724 802DDFE4 01EE7821 */  addu       $t7, $t7, $t6
    /* 25D728 802DDFE8 85EF66D8 */  lh         $t7, %lo(D_802566D8)($t7)
    /* 25D72C 802DDFEC 00025A03 */  sra        $t3, $v0, 8
    /* 25D730 802DDFF0 018FC023 */  subu       $t8, $t4, $t7
    /* 25D734 802DDFF4 0178082A */  slt        $at, $t3, $t8
    /* 25D738 802DDFF8 50200007 */  beql       $at, $zero, .L802DE018_25D758
    /* 25D73C 802DDFFC 8E090020 */   lw        $t1, 0x20($s0)
    /* 25D740 802DE000 8E190020 */  lw         $t9, 0x20($s0)
    /* 25D744 802DE004 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 25D748 802DE008 03214025 */  or         $t0, $t9, $at
    /* 25D74C 802DE00C 10000007 */  b          .L802DE02C_25D76C
    /* 25D750 802DE010 AE080020 */   sw        $t0, 0x20($s0)
    /* 25D754 802DE014 8E090020 */  lw         $t1, 0x20($s0)
  .L802DE018_25D758:
    /* 25D758 802DE018 3C01BFFF */  lui        $at, (0xBFFFFFFF >> 16)
    /* 25D75C 802DE01C 3421FFFF */  ori        $at, $at, (0xBFFFFFFF & 0xFFFF)
    /* 25D760 802DE020 01215024 */  and        $t2, $t1, $at
    /* 25D764 802DE024 AE0A0020 */  sw         $t2, 0x20($s0)
    /* 25D768 802DE028 A6000010 */  sh         $zero, 0x10($s0)
  .L802DE02C_25D76C:
    /* 25D76C 802DE02C 8602002C */  lh         $v0, 0x2C($s0)
    /* 25D770 802DE030 10400067 */  beqz       $v0, .L802DE1D0_25D910
    /* 25D774 802DE034 244DFFFF */   addiu     $t5, $v0, -0x1
    /* 25D778 802DE038 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 25D77C 802DE03C 3C010040 */  lui        $at, (0x400000 >> 16)
    /* 25D780 802DE040 A60D002C */  sh         $t5, 0x2C($s0)
    /* 25D784 802DE044 01C16025 */  or         $t4, $t6, $at
    /* 25D788 802DE048 000C5840 */  sll        $t3, $t4, 1
    /* 25D78C 802DE04C 05600048 */  bltz       $t3, .L802DE170_25D8B0
    /* 25D790 802DE050 AE0C0020 */   sw        $t4, 0x20($s0)
    /* 25D794 802DE054 3C188005 */  lui        $t8, %hi(D_80052A8C)
    /* 25D798 802DE058 8F182A8C */  lw         $t8, %lo(D_80052A8C)($t8)
    /* 25D79C 802DE05C 33190003 */  andi       $t9, $t8, 0x3
    /* 25D7A0 802DE060 57200044 */  bnel       $t9, $zero, .L802DE174_25D8B4
    /* 25D7A4 802DE064 860F002C */   lh        $t7, 0x2C($s0)
    /* 25D7A8 802DE068 86040006 */  lh         $a0, 0x6($s0)
    /* 25D7AC 802DE06C 2484C000 */  addiu      $a0, $a0, -0x4000
    /* 25D7B0 802DE070 3088FFFF */  andi       $t0, $a0, 0xFFFF
    /* 25D7B4 802DE074 0C007660 */  jal        sins
    /* 25D7B8 802DE078 01002025 */   or        $a0, $t0, $zero
    /* 25D7BC 802DE07C 44822000 */  mtc1       $v0, $f4
    /* 25D7C0 802DE080 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25D7C4 802DE084 44815800 */  mtc1       $at, $f11
    /* 25D7C8 802DE088 468021A0 */  cvt.s.w    $f6, $f4
    /* 25D7CC 802DE08C 44805000 */  mtc1       $zero, $f10
    /* 25D7D0 802DE090 86040006 */  lh         $a0, 0x6($s0)
    /* 25D7D4 802DE094 2484C000 */  addiu      $a0, $a0, -0x4000
    /* 25D7D8 802DE098 46003221 */  cvt.d.s    $f8, $f6
    /* 25D7DC 802DE09C 3089FFFF */  andi       $t1, $a0, 0xFFFF
    /* 25D7E0 802DE0A0 462A4403 */  div.d      $f16, $f8, $f10
    /* 25D7E4 802DE0A4 01202025 */  or         $a0, $t1, $zero
    /* 25D7E8 802DE0A8 462084A0 */  cvt.s.d    $f18, $f16
    /* 25D7EC 802DE0AC 0C007654 */  jal        coss
    /* 25D7F0 802DE0B0 E7B20068 */   swc1      $f18, 0x68($sp)
    /* 25D7F4 802DE0B4 44822000 */  mtc1       $v0, $f4
    /* 25D7F8 802DE0B8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25D7FC 802DE0BC 44815800 */  mtc1       $at, $f11
    /* 25D800 802DE0C0 468021A0 */  cvt.s.w    $f6, $f4
    /* 25D804 802DE0C4 44805000 */  mtc1       $zero, $f10
    /* 25D808 802DE0C8 46003221 */  cvt.d.s    $f8, $f6
    /* 25D80C 802DE0CC 462A4403 */  div.d      $f16, $f8, $f10
    /* 25D810 802DE0D0 46208487 */  neg.d      $f18, $f16
    /* 25D814 802DE0D4 46209120 */  cvt.s.d    $f4, $f18
    /* 25D818 802DE0D8 0C000E38 */  jal        func_800038E0_44E0
    /* 25D81C 802DE0DC E7A40064 */   swc1      $f4, 0x64($sp)
    /* 25D820 802DE0E0 3C014280 */  lui        $at, (0x42800000 >> 16)
    /* 25D824 802DE0E4 44810000 */  mtc1       $at, $f0
    /* 25D828 802DE0E8 2401009B */  addiu      $at, $zero, 0x9B
    /* 25D82C 802DE0EC 0041001A */  div        $zero, $v0, $at
    /* 25D830 802DE0F0 C7A60068 */  lwc1       $f6, 0x68($sp)
    /* 25D834 802DE0F4 C7B00064 */  lwc1       $f16, 0x64($sp)
    /* 25D838 802DE0F8 240C007F */  addiu      $t4, $zero, 0x7F
    /* 25D83C 802DE0FC 46003202 */  mul.s      $f8, $f6, $f0
    /* 25D840 802DE100 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 25D844 802DE104 00007010 */  mfhi       $t6
    /* 25D848 802DE108 46008482 */  mul.s      $f18, $f16, $f0
    /* 25D84C 802DE10C 25CC0064 */  addiu      $t4, $t6, 0x64
    /* 25D850 802DE110 24180032 */  addiu      $t8, $zero, 0x32
    /* 25D854 802DE114 241900C8 */  addiu      $t9, $zero, 0xC8
    /* 25D858 802DE118 24080006 */  addiu      $t0, $zero, 0x6
    /* 25D85C 802DE11C 24090002 */  addiu      $t1, $zero, 0x2
    /* 25D860 802DE120 4600428D */  trunc.w.s  $f10, $f8
    /* 25D864 802DE124 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 25D868 802DE128 AFAA0028 */  sw         $t2, 0x28($sp)
    /* 25D86C 802DE12C 4600910D */  trunc.w.s  $f4, $f18
    /* 25D870 802DE130 44075000 */  mfc1       $a3, $f10
    /* 25D874 802DE134 AFA90024 */  sw         $t1, 0x24($sp)
    /* 25D878 802DE138 AFA80020 */  sw         $t0, 0x20($sp)
    /* 25D87C 802DE13C 00076E00 */  sll        $t5, $a3, 24
    /* 25D880 802DE140 440B2000 */  mfc1       $t3, $f4
    /* 25D884 802DE144 000D3E03 */  sra        $a3, $t5, 24
    /* 25D888 802DE148 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 25D88C 802DE14C AFAD002C */  sw         $t5, 0x2C($sp)
    /* 25D890 802DE150 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 25D894 802DE154 AFB80018 */  sw         $t8, 0x18($sp)
    /* 25D898 802DE158 AFAC0030 */  sw         $t4, 0x30($sp)
    /* 25D89C 802DE15C 86040000 */  lh         $a0, 0x0($s0)
    /* 25D8A0 802DE160 86050002 */  lh         $a1, 0x2($s0)
    /* 25D8A4 802DE164 86060004 */  lh         $a2, 0x4($s0)
    /* 25D8A8 802DE168 0C031507 */  jal        func_800C541C_D43CC
    /* 25D8AC 802DE16C AFAB0014 */   sw        $t3, 0x14($sp)
  .L802DE170_25D8B0:
    /* 25D8B0 802DE170 860F002C */  lh         $t7, 0x2C($s0)
  .L802DE174_25D8B4:
    /* 25D8B4 802DE174 55E0008F */  bnel       $t7, $zero, .L802DE3B4_25DAF4
    /* 25D8B8 802DE178 93A40083 */   lbu       $a0, 0x83($sp)
    /* 25D8BC 802DE17C 8E0B0020 */  lw         $t3, 0x20($s0)
    /* 25D8C0 802DE180 3C01FFBF */  lui        $at, (0xFFBFFFFF >> 16)
    /* 25D8C4 802DE184 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
    /* 25D8C8 802DE188 0161C024 */  and        $t8, $t3, $at
    /* 25D8CC 802DE18C 3C010800 */  lui        $at, (0x8000000 >> 16)
    /* 25D8D0 802DE190 AE180020 */  sw         $t8, 0x20($s0)
    /* 25D8D4 802DE194 03014025 */  or         $t0, $t8, $at
    /* 25D8D8 802DE198 0C000E38 */  jal        func_800038E0_44E0
    /* 25D8DC 802DE19C AE080020 */   sw        $t0, 0x20($s0)
    /* 25D8E0 802DE1A0 24010320 */  addiu      $at, $zero, 0x320
    /* 25D8E4 802DE1A4 0041001A */  div        $zero, $v0, $at
    /* 25D8E8 802DE1A8 00004810 */  mfhi       $t1
    /* 25D8EC 802DE1AC 252A0258 */  addiu      $t2, $t1, 0x258
    /* 25D8F0 802DE1B0 0C000E38 */  jal        func_800038E0_44E0
    /* 25D8F4 802DE1B4 A60A0048 */   sh        $t2, 0x48($s0)
    /* 25D8F8 802DE1B8 24010064 */  addiu      $at, $zero, 0x64
    /* 25D8FC 802DE1BC 0041001A */  div        $zero, $v0, $at
    /* 25D900 802DE1C0 00006810 */  mfhi       $t5
    /* 25D904 802DE1C4 25AE0032 */  addiu      $t6, $t5, 0x32
    /* 25D908 802DE1C8 10000079 */  b          .L802DE3B0_25DAF0
    /* 25D90C 802DE1CC A20E0026 */   sb        $t6, 0x26($s0)
  .L802DE1D0_25D910:
    /* 25D910 802DE1D0 920C0026 */  lbu        $t4, 0x26($s0)
    /* 25D914 802DE1D4 02002025 */  or         $a0, $s0, $zero
    /* 25D918 802DE1D8 3C058005 */  lui        $a1, %hi(D_80052B34)
    /* 25D91C 802DE1DC 15800039 */  bnez       $t4, .L802DE2C4_25DA04
    /* 25D920 802DE1E0 00000000 */   nop
    /* 25D924 802DE1E4 860F0000 */  lh         $t7, 0x0($s0)
    /* 25D928 802DE1E8 860B0014 */  lh         $t3, 0x14($s0)
    /* 25D92C 802DE1EC 86180004 */  lh         $t8, 0x4($s0)
    /* 25D930 802DE1F0 86190018 */  lh         $t9, 0x18($s0)
    /* 25D934 802DE1F4 01EB1023 */  subu       $v0, $t7, $t3
    /* 25D938 802DE1F8 00420019 */  multu      $v0, $v0
    /* 25D93C 802DE1FC 03191823 */  subu       $v1, $t8, $t9
    /* 25D940 802DE200 00004012 */  mflo       $t0
    /* 25D944 802DE204 00000000 */  nop
    /* 25D948 802DE208 00000000 */  nop
    /* 25D94C 802DE20C 00630019 */  multu      $v1, $v1
    /* 25D950 802DE210 00004812 */  mflo       $t1
    /* 25D954 802DE214 01095021 */  addu       $t2, $t0, $t1
    /* 25D958 802DE218 448A3000 */  mtc1       $t2, $f6
    /* 25D95C 802DE21C 0C007650 */  jal        sqrtf
    /* 25D960 802DE220 46803320 */   cvt.s.w   $f12, $f6
    /* 25D964 802DE224 4600020D */  trunc.w.s  $f8, $f0
    /* 25D968 802DE228 440E4000 */  mfc1       $t6, $f8
    /* 25D96C 802DE22C 00000000 */  nop
    /* 25D970 802DE230 29C100C8 */  slti       $at, $t6, 0xC8
    /* 25D974 802DE234 50200005 */  beql       $at, $zero, .L802DE24C_25D98C
    /* 25D978 802DE238 8E0B0020 */   lw        $t3, 0x20($s0)
    /* 25D97C 802DE23C 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 25D980 802DE240 358F0010 */  ori        $t7, $t4, 0x10
    /* 25D984 802DE244 AE0F0020 */  sw         $t7, 0x20($s0)
    /* 25D988 802DE248 8E0B0020 */  lw         $t3, 0x20($s0)
  .L802DE24C_25D98C:
    /* 25D98C 802DE24C 31780010 */  andi       $t8, $t3, 0x10
    /* 25D990 802DE250 57000004 */  bnel       $t8, $zero, .L802DE264_25D9A4
    /* 25D994 802DE254 8202003C */   lb        $v0, 0x3C($s0)
    /* 25D998 802DE258 0C0201DB */  jal        func_8008076C_8F71C
    /* 25D99C 802DE25C 93A40083 */   lbu       $a0, 0x83($sp)
    /* 25D9A0 802DE260 8202003C */  lb         $v0, 0x3C($s0)
  .L802DE264_25D9A4:
    /* 25D9A4 802DE264 10400003 */  beqz       $v0, .L802DE274_25D9B4
    /* 25D9A8 802DE268 2459FFFF */   addiu     $t9, $v0, -0x1
    /* 25D9AC 802DE26C 10000050 */  b          .L802DE3B0_25DAF0
    /* 25D9B0 802DE270 A219003C */   sb        $t9, 0x3C($s0)
  .L802DE274_25D9B4:
    /* 25D9B4 802DE274 8E080020 */  lw         $t0, 0x20($s0)
    /* 25D9B8 802DE278 3C010800 */  lui        $at, (0x8000000 >> 16)
    /* 25D9BC 802DE27C 01014825 */  or         $t1, $t0, $at
    /* 25D9C0 802DE280 2401FFEF */  addiu      $at, $zero, -0x11
    /* 25D9C4 802DE284 AE090020 */  sw         $t1, 0x20($s0)
    /* 25D9C8 802DE288 01216824 */  and        $t5, $t1, $at
    /* 25D9CC 802DE28C 0C000E38 */  jal        func_800038E0_44E0
    /* 25D9D0 802DE290 AE0D0020 */   sw        $t5, 0x20($s0)
    /* 25D9D4 802DE294 24010320 */  addiu      $at, $zero, 0x320
    /* 25D9D8 802DE298 0041001A */  div        $zero, $v0, $at
    /* 25D9DC 802DE29C 00007010 */  mfhi       $t6
    /* 25D9E0 802DE2A0 25CC0258 */  addiu      $t4, $t6, 0x258
    /* 25D9E4 802DE2A4 0C000E38 */  jal        func_800038E0_44E0
    /* 25D9E8 802DE2A8 A60C0048 */   sh        $t4, 0x48($s0)
    /* 25D9EC 802DE2AC 24010064 */  addiu      $at, $zero, 0x64
    /* 25D9F0 802DE2B0 0041001A */  div        $zero, $v0, $at
    /* 25D9F4 802DE2B4 00007810 */  mfhi       $t7
    /* 25D9F8 802DE2B8 25EB0064 */  addiu      $t3, $t7, 0x64
    /* 25D9FC 802DE2BC 1000003C */  b          .L802DE3B0_25DAF0
    /* 25DA00 802DE2C0 A20B0026 */   sb        $t3, 0x26($s0)
  .L802DE2C4_25DA04:
    /* 25DA04 802DE2C4 0C021395 */  jal        func_80084E54_93E04
    /* 25DA08 802DE2C8 8CA52B34 */   lw        $a1, %lo(D_80052B34)($a1)
    /* 25DA0C 802DE2CC 93A40083 */  lbu        $a0, 0x83($sp)
    /* 25DA10 802DE2D0 0C0201DB */  jal        func_8008076C_8F71C
    /* 25DA14 802DE2D4 AFA20074 */   sw        $v0, 0x74($sp)
    /* 25DA18 802DE2D8 86020048 */  lh         $v0, 0x48($s0)
    /* 25DA1C 802DE2DC 8FA30074 */  lw         $v1, 0x74($sp)
    /* 25DA20 802DE2E0 24580096 */  addiu      $t8, $v0, 0x96
    /* 25DA24 802DE2E4 0303082A */  slt        $at, $t8, $v1
    /* 25DA28 802DE2E8 10200008 */  beqz       $at, .L802DE30C_25DA4C
    /* 25DA2C 802DE2EC 244DFF6A */   addiu     $t5, $v0, -0x96
    /* 25DA30 802DE2F0 8E190020 */  lw         $t9, 0x20($s0)
    /* 25DA34 802DE2F4 2401F7BF */  addiu      $at, $zero, -0x841
    /* 25DA38 802DE2F8 37280100 */  ori        $t0, $t9, 0x100
    /* 25DA3C 802DE2FC AE080020 */  sw         $t0, 0x20($s0)
    /* 25DA40 802DE300 01015024 */  and        $t2, $t0, $at
    /* 25DA44 802DE304 10000012 */  b          .L802DE350_25DA90
    /* 25DA48 802DE308 AE0A0020 */   sw        $t2, 0x20($s0)
  .L802DE30C_25DA4C:
    /* 25DA4C 802DE30C 01A3082A */  slt        $at, $t5, $v1
    /* 25DA50 802DE310 5020000A */  beql       $at, $zero, .L802DE33C_25DA7C
    /* 25DA54 802DE314 8E180020 */   lw        $t8, 0x20($s0)
    /* 25DA58 802DE318 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 25DA5C 802DE31C 3C01FFFF */  lui        $at, (0xFFFF7EBF >> 16)
    /* 25DA60 802DE320 34217EBF */  ori        $at, $at, (0xFFFF7EBF & 0xFFFF)
    /* 25DA64 802DE324 35CC0800 */  ori        $t4, $t6, 0x800
    /* 25DA68 802DE328 AE0C0020 */  sw         $t4, 0x20($s0)
    /* 25DA6C 802DE32C 01815824 */  and        $t3, $t4, $at
    /* 25DA70 802DE330 10000007 */  b          .L802DE350_25DA90
    /* 25DA74 802DE334 AE0B0020 */   sw        $t3, 0x20($s0)
    /* 25DA78 802DE338 8E180020 */  lw         $t8, 0x20($s0)
  .L802DE33C_25DA7C:
    /* 25DA7C 802DE33C 2401F7FF */  addiu      $at, $zero, -0x801
    /* 25DA80 802DE340 37190140 */  ori        $t9, $t8, 0x140
    /* 25DA84 802DE344 AE190020 */  sw         $t9, 0x20($s0)
    /* 25DA88 802DE348 03214824 */  and        $t1, $t9, $at
    /* 25DA8C 802DE34C AE090020 */  sw         $t1, 0x20($s0)
  .L802DE350_25DA90:
    /* 25DA90 802DE350 92020026 */  lbu        $v0, 0x26($s0)
    /* 25DA94 802DE354 10400016 */  beqz       $v0, .L802DE3B0_25DAF0
    /* 25DA98 802DE358 244AFFFF */   addiu     $t2, $v0, -0x1
    /* 25DA9C 802DE35C 314D00FF */  andi       $t5, $t2, 0xFF
    /* 25DAA0 802DE360 15A00013 */  bnez       $t5, .L802DE3B0_25DAF0
    /* 25DAA4 802DE364 A20A0026 */   sb        $t2, 0x26($s0)
    /* 25DAA8 802DE368 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 25DAAC 802DE36C 3C01F7FF */  lui        $at, (0xF7FFFFFF >> 16)
    /* 25DAB0 802DE370 3421FFFF */  ori        $at, $at, (0xF7FFFFFF & 0xFFFF)
    /* 25DAB4 802DE374 01C16024 */  and        $t4, $t6, $at
    /* 25DAB8 802DE378 358B0100 */  ori        $t3, $t4, 0x100
    /* 25DABC 802DE37C AE0C0020 */  sw         $t4, 0x20($s0)
    /* 25DAC0 802DE380 2401F7BF */  addiu      $at, $zero, -0x841
    /* 25DAC4 802DE384 AE0B0020 */  sw         $t3, 0x20($s0)
    /* 25DAC8 802DE388 0161C824 */  and        $t9, $t3, $at
    /* 25DACC 802DE38C AE190020 */  sw         $t9, 0x20($s0)
    /* 25DAD0 802DE390 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 25DAD4 802DE394 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 25DAD8 802DE398 240A003C */  addiu      $t2, $zero, 0x3C
    /* 25DADC 802DE39C 84880000 */  lh         $t0, 0x0($a0)
    /* 25DAE0 802DE3A0 A6080014 */  sh         $t0, 0x14($s0)
    /* 25DAE4 802DE3A4 84890004 */  lh         $t1, 0x4($a0)
    /* 25DAE8 802DE3A8 A20A003C */  sb         $t2, 0x3C($s0)
    /* 25DAEC 802DE3AC A6090018 */  sh         $t1, 0x18($s0)
  .L802DE3B0_25DAF0:
    /* 25DAF0 802DE3B0 93A40083 */  lbu        $a0, 0x83($sp)
  .L802DE3B4_25DAF4:
    /* 25DAF4 802DE3B4 24050032 */  addiu      $a1, $zero, 0x32
    /* 25DAF8 802DE3B8 0C021E69 */  jal        func_800879A4_96954
    /* 25DAFC 802DE3BC 00003025 */   or        $a2, $zero, $zero
    /* 25DB00 802DE3C0 50400084 */  beql       $v0, $zero, .L802DE5D4_25DD14
    /* 25DB04 802DE3C4 A2000024 */   sb        $zero, 0x24($s0)
    /* 25DB08 802DE3C8 0C007654 */  jal        coss
    /* 25DB0C 802DE3CC 96040006 */   lhu       $a0, 0x6($s0)
    /* 25DB10 802DE3D0 44825000 */  mtc1       $v0, $f10
    /* 25DB14 802DE3D4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25DB18 802DE3D8 44812800 */  mtc1       $at, $f5
    /* 25DB1C 802DE3DC 46805420 */  cvt.s.w    $f16, $f10
    /* 25DB20 802DE3E0 44802000 */  mtc1       $zero, $f4
    /* 25DB24 802DE3E4 3C01403E */  lui        $at, (0x403E0000 >> 16)
    /* 25DB28 802DE3E8 44814800 */  mtc1       $at, $f9
    /* 25DB2C 802DE3EC 44804000 */  mtc1       $zero, $f8
    /* 25DB30 802DE3F0 96040006 */  lhu        $a0, 0x6($s0)
    /* 25DB34 802DE3F4 460084A1 */  cvt.d.s    $f18, $f16
    /* 25DB38 802DE3F8 46249183 */  div.d      $f6, $f18, $f4
    /* 25DB3C 802DE3FC 46283282 */  mul.d      $f10, $f6, $f8
    /* 25DB40 802DE400 4620540D */  trunc.w.d  $f16, $f10
    /* 25DB44 802DE404 440E8000 */  mfc1       $t6, $f16
    /* 25DB48 802DE408 0C007660 */  jal        sins
    /* 25DB4C 802DE40C A7AE007E */   sh        $t6, 0x7E($sp)
    /* 25DB50 802DE410 44829000 */  mtc1       $v0, $f18
    /* 25DB54 802DE414 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25DB58 802DE418 44814800 */  mtc1       $at, $f9
    /* 25DB5C 802DE41C 46809120 */  cvt.s.w    $f4, $f18
    /* 25DB60 802DE420 44804000 */  mtc1       $zero, $f8
    /* 25DB64 802DE424 3C01403E */  lui        $at, (0x403E0000 >> 16)
    /* 25DB68 802DE428 44818800 */  mtc1       $at, $f17
    /* 25DB6C 802DE42C 44808000 */  mtc1       $zero, $f16
    /* 25DB70 802DE430 86050002 */  lh         $a1, 0x2($s0)
    /* 25DB74 802DE434 460021A1 */  cvt.d.s    $f6, $f4
    /* 25DB78 802DE438 240B001E */  addiu      $t3, $zero, 0x1E
    /* 25DB7C 802DE43C 46283283 */  div.d      $f10, $f6, $f8
    /* 25DB80 802DE440 24A5FFCE */  addiu      $a1, $a1, -0x32
    /* 25DB84 802DE444 00056400 */  sll        $t4, $a1, 16
    /* 25DB88 802DE448 000C2C03 */  sra        $a1, $t4, 16
    /* 25DB8C 802DE44C AFAB0010 */  sw         $t3, 0x10($sp)
    /* 25DB90 802DE450 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 25DB94 802DE454 240C0032 */  addiu      $t4, $zero, 0x32
    /* 25DB98 802DE458 240A0046 */  addiu      $t2, $zero, 0x46
    /* 25DB9C 802DE45C 240D001E */  addiu      $t5, $zero, 0x1E
    /* 25DBA0 802DE460 240E0014 */  addiu      $t6, $zero, 0x14
    /* 25DBA4 802DE464 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 25DBA8 802DE468 AFAF0028 */  sw         $t7, 0x28($sp)
    /* 25DBAC 802DE46C AFAE0020 */  sw         $t6, 0x20($sp)
    /* 25DBB0 802DE470 AFAD001C */  sw         $t5, 0x1C($sp)
    /* 25DBB4 802DE474 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 25DBB8 802DE478 AFAC0024 */  sw         $t4, 0x24($sp)
    /* 25DBBC 802DE47C AFAB002C */  sw         $t3, 0x2C($sp)
    /* 25DBC0 802DE480 86040000 */  lh         $a0, 0x0($s0)
    /* 25DBC4 802DE484 86060004 */  lh         $a2, 0x4($s0)
    /* 25DBC8 802DE488 83A7007F */  lb         $a3, 0x7F($sp)
    /* 25DBCC 802DE48C AFA00030 */  sw         $zero, 0x30($sp)
    /* 25DBD0 802DE490 46305482 */  mul.d      $f18, $f10, $f16
    /* 25DBD4 802DE494 4620910D */  trunc.w.d  $f4, $f18
    /* 25DBD8 802DE498 44192000 */  mfc1       $t9, $f4
    /* 25DBDC 802DE49C 00000000 */  nop
    /* 25DBE0 802DE4A0 00194400 */  sll        $t0, $t9, 16
    /* 25DBE4 802DE4A4 00084C03 */  sra        $t1, $t0, 16
    /* 25DBE8 802DE4A8 0C031507 */  jal        func_800C541C_D43CC
    /* 25DBEC 802DE4AC AFA90014 */   sw        $t1, 0x14($sp)
    /* 25DBF0 802DE4B0 3C188005 */  lui        $t8, %hi(D_80052A8C)
    /* 25DBF4 802DE4B4 8F182A8C */  lw         $t8, %lo(D_80052A8C)($t8)
    /* 25DBF8 802DE4B8 2407004C */  addiu      $a3, $zero, 0x4C
    /* 25DBFC 802DE4BC 33190001 */  andi       $t9, $t8, 0x1
    /* 25DC00 802DE4C0 17200006 */  bnez       $t9, .L802DE4DC_25DC1C
    /* 25DC04 802DE4C4 00000000 */   nop
    /* 25DC08 802DE4C8 86040000 */  lh         $a0, 0x0($s0)
    /* 25DC0C 802DE4CC 86050002 */  lh         $a1, 0x2($s0)
    /* 25DC10 802DE4D0 86060004 */  lh         $a2, 0x4($s0)
    /* 25DC14 802DE4D4 0C037E8D */  jal        func_800DFA34_EE9E4
    /* 25DC18 802DE4D8 AFA00010 */   sw        $zero, 0x10($sp)
  .L802DE4DC_25DC1C:
    /* 25DC1C 802DE4DC 0C007654 */  jal        coss
    /* 25DC20 802DE4E0 9604000E */   lhu       $a0, 0xE($s0)
    /* 25DC24 802DE4E4 A7A2005A */  sh         $v0, 0x5A($sp)
    /* 25DC28 802DE4E8 0C007660 */  jal        sins
    /* 25DC2C 802DE4EC 9604000E */   lhu       $a0, 0xE($s0)
    /* 25DC30 802DE4F0 87A8005A */  lh         $t0, 0x5A($sp)
    /* 25DC34 802DE4F4 3C014049 */  lui        $at, (0x40490000 >> 16)
    /* 25DC38 802DE4F8 44810800 */  mtc1       $at, $f1
    /* 25DC3C 802DE4FC 44883000 */  mtc1       $t0, $f6
    /* 25DC40 802DE500 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25DC44 802DE504 44818800 */  mtc1       $at, $f17
    /* 25DC48 802DE508 46803220 */  cvt.s.w    $f8, $f6
    /* 25DC4C 802DE50C 44808000 */  mtc1       $zero, $f16
    /* 25DC50 802DE510 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 25DC54 802DE514 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 25DC58 802DE518 44800000 */  mtc1       $zero, $f0
    /* 25DC5C 802DE51C 240500FA */  addiu      $a1, $zero, 0xFA
    /* 25DC60 802DE520 460042A1 */  cvt.d.s    $f10, $f8
    /* 25DC64 802DE524 84890000 */  lh         $t1, 0x0($a0)
    /* 25DC68 802DE528 46305483 */  div.d      $f18, $f10, $f16
    /* 25DC6C 802DE52C 848C0004 */  lh         $t4, 0x4($a0)
    /* 25DC70 802DE530 44893000 */  mtc1       $t1, $f6
    /* 25DC74 802DE534 00000000 */  nop
    /* 25DC78 802DE538 46803221 */  cvt.d.w    $f8, $f6
    /* 25DC7C 802DE53C 46209102 */  mul.d      $f4, $f18, $f0
    /* 25DC80 802DE540 44829000 */  mtc1       $v0, $f18
    /* 25DC84 802DE544 00000000 */  nop
    /* 25DC88 802DE548 468091A0 */  cvt.s.w    $f6, $f18
    /* 25DC8C 802DE54C 448C9000 */  mtc1       $t4, $f18
    /* 25DC90 802DE550 46244281 */  sub.d      $f10, $f8, $f4
    /* 25DC94 802DE554 44802000 */  mtc1       $zero, $f4
    /* 25DC98 802DE558 44812800 */  mtc1       $at, $f5
    /* 25DC9C 802DE55C 46003221 */  cvt.d.s    $f8, $f6
    /* 25DCA0 802DE560 4620540D */  trunc.w.d  $f16, $f10
    /* 25DCA4 802DE564 46244283 */  div.d      $f10, $f8, $f4
    /* 25DCA8 802DE568 44068000 */  mfc1       $a2, $f16
    /* 25DCAC 802DE56C 468091A1 */  cvt.d.w    $f6, $f18
    /* 25DCB0 802DE570 00066C00 */  sll        $t5, $a2, 16
    /* 25DCB4 802DE574 000D3403 */  sra        $a2, $t5, 16
    /* 25DCB8 802DE578 46205402 */  mul.d      $f16, $f10, $f0
    /* 25DCBC 802DE57C 46303201 */  sub.d      $f8, $f6, $f16
    /* 25DCC0 802DE580 4620410D */  trunc.w.d  $f4, $f8
    /* 25DCC4 802DE584 44072000 */  mfc1       $a3, $f4
    /* 25DCC8 802DE588 00000000 */  nop
    /* 25DCCC 802DE58C 00075C00 */  sll        $t3, $a3, 16
    /* 25DCD0 802DE590 0C048949 */  jal        func_80122524_1314D4
    /* 25DCD4 802DE594 000B3C03 */   sra       $a3, $t3, 16
    /* 25DCD8 802DE598 3C198005 */  lui        $t9, %hi(D_80052B34)
    /* 25DCDC 802DE59C 8F392B34 */  lw         $t9, %lo(D_80052B34)($t9)
    /* 25DCE0 802DE5A0 9328001A */  lbu        $t0, 0x1A($t9)
    /* 25DCE4 802DE5A4 5100000C */  beql       $t0, $zero, .L802DE5D8_25DD18
    /* 25DCE8 802DE5A8 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 25DCEC 802DE5AC 92090024 */  lbu        $t1, 0x24($s0)
    /* 25DCF0 802DE5B0 8FA4004C */  lw         $a0, 0x4C($sp)
    /* 25DCF4 802DE5B4 55200008 */  bnel       $t1, $zero, .L802DE5D8_25DD18
    /* 25DCF8 802DE5B8 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 25DCFC 802DE5BC 0C04DD1A */  jal        func_80137468_146418
    /* 25DD00 802DE5C0 24050264 */   addiu     $a1, $zero, 0x264
    /* 25DD04 802DE5C4 240A0001 */  addiu      $t2, $zero, 0x1
    /* 25DD08 802DE5C8 10000002 */  b          .L802DE5D4_25DD14
    /* 25DD0C 802DE5CC A20A0024 */   sb        $t2, 0x24($s0)
    /* 25DD10 802DE5D0 A2000024 */  sb         $zero, 0x24($s0)
  .L802DE5D4_25DD14:
    /* 25DD14 802DE5D4 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DE5D8_25DD18:
    /* 25DD18 802DE5D8 8FB00040 */  lw         $s0, 0x40($sp)
    /* 25DD1C 802DE5DC 27BD0080 */  addiu      $sp, $sp, 0x80
    /* 25DD20 802DE5E0 03E00008 */  jr         $ra
    /* 25DD24 802DE5E4 00000000 */   nop
endlabel func_802DDF50_25D690
