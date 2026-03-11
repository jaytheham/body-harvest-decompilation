nonmatching func_800FDEA8_10CE58, 0xA68

glabel func_800FDEA8_10CE58
    /* 10CE58 800FDEA8 27BDFEF0 */  addiu      $sp, $sp, -0x110
    /* 10CE5C 800FDEAC AFBF0084 */  sw         $ra, 0x84($sp)
    /* 10CE60 800FDEB0 AFBE0080 */  sw         $fp, 0x80($sp)
    /* 10CE64 800FDEB4 AFB7007C */  sw         $s7, 0x7C($sp)
    /* 10CE68 800FDEB8 AFB60078 */  sw         $s6, 0x78($sp)
    /* 10CE6C 800FDEBC AFB50074 */  sw         $s5, 0x74($sp)
    /* 10CE70 800FDEC0 AFB40070 */  sw         $s4, 0x70($sp)
    /* 10CE74 800FDEC4 AFB3006C */  sw         $s3, 0x6C($sp)
    /* 10CE78 800FDEC8 AFB20068 */  sw         $s2, 0x68($sp)
    /* 10CE7C 800FDECC AFB10064 */  sw         $s1, 0x64($sp)
    /* 10CE80 800FDED0 AFB00060 */  sw         $s0, 0x60($sp)
    /* 10CE84 800FDED4 F7BE0058 */  sdc1       $f30, 0x58($sp)
    /* 10CE88 800FDED8 F7BC0050 */  sdc1       $f28, 0x50($sp)
    /* 10CE8C 800FDEDC F7BA0048 */  sdc1       $f26, 0x48($sp)
    /* 10CE90 800FDEE0 F7B80040 */  sdc1       $f24, 0x40($sp)
    /* 10CE94 800FDEE4 F7B60038 */  sdc1       $f22, 0x38($sp)
    /* 10CE98 800FDEE8 F7B40030 */  sdc1       $f20, 0x30($sp)
    /* 10CE9C 800FDEEC AFA50114 */  sw         $a1, 0x114($sp)
    /* 10CEA0 800FDEF0 8C940038 */  lw         $s4, 0x38($a0)
    /* 10CEA4 800FDEF4 3C0F8025 */  lui        $t7, %hi(vehicleSpecs)
    /* 10CEA8 800FDEF8 25EF7A00 */  addiu      $t7, $t7, %lo(vehicleSpecs)
    /* 10CEAC 800FDEFC 9283001A */  lbu        $v1, 0x1A($s4)
    /* 10CEB0 800FDF00 00803025 */  or         $a2, $a0, $zero
    /* 10CEB4 800FDF04 AFA000FC */  sw         $zero, 0xFC($sp)
    /* 10CEB8 800FDF08 000370C0 */  sll        $t6, $v1, 3
    /* 10CEBC 800FDF0C 01C37023 */  subu       $t6, $t6, $v1
    /* 10CEC0 800FDF10 000E7100 */  sll        $t6, $t6, 4
    /* 10CEC4 800FDF14 01CF1021 */  addu       $v0, $t6, $t7
    /* 10CEC8 800FDF18 84580036 */  lh         $t8, 0x36($v0)
    /* 10CECC 800FDF1C 84480034 */  lh         $t0, 0x34($v0)
    /* 10CED0 800FDF20 00403825 */  or         $a3, $v0, $zero
    /* 10CED4 800FDF24 0018C843 */  sra        $t9, $t8, 1
    /* 10CED8 800FDF28 00084843 */  sra        $t1, $t0, 1
    /* 10CEDC 800FDF2C A7B90106 */  sh         $t9, 0x106($sp)
    /* 10CEE0 800FDF30 A7A90104 */  sh         $t1, 0x104($sp)
    /* 10CEE4 800FDF34 AFA000DC */  sw         $zero, 0xDC($sp)
    /* 10CEE8 800FDF38 10600263 */  beqz       $v1, .L800FE8C8_10D878
    /* 10CEEC 800FDF3C AFA000C4 */   sw        $zero, 0xC4($sp)
    /* 10CEF0 800FDF40 90420059 */  lbu        $v0, 0x59($v0)
    /* 10CEF4 800FDF44 24010004 */  addiu      $at, $zero, 0x4
    /* 10CEF8 800FDF48 3C108016 */  lui        $s0, %hi(D_8015930C)
    /* 10CEFC 800FDF4C 10410003 */  beq        $v0, $at, .L800FDF5C_10CF0C
    /* 10CF00 800FDF50 2610930C */   addiu     $s0, $s0, %lo(D_8015930C)
    /* 10CF04 800FDF54 24010008 */  addiu      $at, $zero, 0x8
    /* 10CF08 800FDF58 1441000F */  bne        $v0, $at, .L800FDF98_10CF48
  .L800FDF5C_10CF0C:
    /* 10CF0C 800FDF5C 3C0A8005 */   lui       $t2, %hi(D_80052B34)
    /* 10CF10 800FDF60 8D4A2B34 */  lw         $t2, %lo(D_80052B34)($t2)
    /* 10CF14 800FDF64 3C018016 */  lui        $at, %hi(D_80158E74)
    /* 10CF18 800FDF68 3C028016 */  lui        $v0, %hi(D_8015930A)
    /* 10CF1C 800FDF6C AC2A8E74 */  sw         $t2, %lo(D_80158E74)($at)
    /* 10CF20 800FDF70 860B0000 */  lh         $t3, 0x0($s0)
    /* 10CF24 800FDF74 3C018016 */  lui        $at, %hi(D_80159234)
    /* 10CF28 800FDF78 2442930A */  addiu      $v0, $v0, %lo(D_8015930A)
    /* 10CF2C 800FDF7C A42B9234 */  sh         $t3, %lo(D_80159234)($at)
    /* 10CF30 800FDF80 844C0000 */  lh         $t4, 0x0($v0)
    /* 10CF34 800FDF84 3C018016 */  lui        $at, %hi(D_80159232)
    /* 10CF38 800FDF88 A42C9232 */  sh         $t4, %lo(D_80159232)($at)
    /* 10CF3C 800FDF8C A6000000 */  sh         $zero, 0x0($s0)
    /* 10CF40 800FDF90 10000005 */  b          .L800FDFA8_10CF58
    /* 10CF44 800FDF94 A4400000 */   sh        $zero, 0x0($v0)
  .L800FDF98_10CF48:
    /* 10CF48 800FDF98 3C018016 */  lui        $at, %hi(D_80158E74)
    /* 10CF4C 800FDF9C 3C108016 */  lui        $s0, %hi(D_8015930C)
    /* 10CF50 800FDFA0 2610930C */  addiu      $s0, $s0, %lo(D_8015930C)
    /* 10CF54 800FDFA4 AC208E74 */  sw         $zero, %lo(D_80158E74)($at)
  .L800FDFA8_10CF58:
    /* 10CF58 800FDFA8 90C50035 */  lbu        $a1, 0x35($a2)
    /* 10CF5C 800FDFAC AFA70100 */  sw         $a3, 0x100($sp)
    /* 10CF60 800FDFB0 AFA60110 */  sw         $a2, 0x110($sp)
    /* 10CF64 800FDFB4 0C039833 */  jal        func_800E60CC_F507C
    /* 10CF68 800FDFB8 24040002 */   addiu     $a0, $zero, 0x2
    /* 10CF6C 800FDFBC 10400007 */  beqz       $v0, .L800FDFDC_10CF8C
    /* 10CF70 800FDFC0 00000000 */   nop
    /* 10CF74 800FDFC4 8FAD0110 */  lw         $t5, 0x110($sp)
    /* 10CF78 800FDFC8 24040002 */  addiu      $a0, $zero, 0x2
    /* 10CF7C 800FDFCC 0C03978F */  jal        func_800E5E3C_F4DEC
    /* 10CF80 800FDFD0 91A50035 */   lbu       $a1, 0x35($t5)
    /* 10CF84 800FDFD4 240E0001 */  addiu      $t6, $zero, 0x1
    /* 10CF88 800FDFD8 AFAE00FC */  sw         $t6, 0xFC($sp)
  .L800FDFDC_10CF8C:
    /* 10CF8C 800FDFDC 3C028016 */  lui        $v0, %hi(D_8015920C)
    /* 10CF90 800FDFE0 2442920C */  addiu      $v0, $v0, %lo(D_8015920C)
    /* 10CF94 800FDFE4 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 10CF98 800FDFE8 11E00006 */  beqz       $t7, .L800FE004_10CFB4
    /* 10CF9C 800FDFEC 3C018016 */   lui       $at, %hi(D_8015930E)
    /* 10CFA0 800FDFF0 A420930E */  sh         $zero, %lo(D_8015930E)($at)
    /* 10CFA4 800FDFF4 A6000000 */  sh         $zero, 0x0($s0)
    /* 10CFA8 800FDFF8 3C018016 */  lui        $at, %hi(D_80159310)
    /* 10CFAC 800FDFFC A4209310 */  sh         $zero, %lo(D_80159310)($at)
    /* 10CFB0 800FE000 AC400000 */  sw         $zero, 0x0($v0)
  .L800FE004_10CFB4:
    /* 10CFB4 800FE004 0C03F780 */  jal        func_800FDE00_10CDB0
    /* 10CFB8 800FE008 00000000 */   nop
    /* 10CFBC 800FE00C 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* 10CFC0 800FE010 2484DCD0 */  addiu      $a0, $a0, %lo(vehicleInstances)
    /* 10CFC4 800FE014 A080001A */  sb         $zero, 0x1A($a0)
    /* 10CFC8 800FE018 3C188025 */  lui        $t8, %hi(D_80257A4C)
    /* 10CFCC 800FE01C 8F187A4C */  lw         $t8, %lo(D_80257A4C)($t8)
    /* 10CFD0 800FE020 240A2710 */  addiu      $t2, $zero, 0x2710
    /* 10CFD4 800FE024 A4980020 */  sh         $t8, 0x20($a0)
    /* 10CFD8 800FE028 8699000E */  lh         $t9, 0xE($s4)
    /* 10CFDC 800FE02C A499000E */  sh         $t9, 0xE($a0)
    /* 10CFE0 800FE030 86880010 */  lh         $t0, 0x10($s4)
    /* 10CFE4 800FE034 A4880010 */  sh         $t0, 0x10($a0)
    /* 10CFE8 800FE038 86890006 */  lh         $t1, 0x6($s4)
    /* 10CFEC 800FE03C A48A003C */  sh         $t2, 0x3C($a0)
    /* 10CFF0 800FE040 A4890006 */  sh         $t1, 0x6($a0)
    /* 10CFF4 800FE044 868B0012 */  lh         $t3, 0x12($s4)
    /* 10CFF8 800FE048 448B2000 */  mtc1       $t3, $f4
    /* 10CFFC 800FE04C 00000000 */  nop
    /* 10D000 800FE050 46802120 */  cvt.s.w    $f4, $f4
    /* 10D004 800FE054 44052000 */  mfc1       $a1, $f4
    /* 10D008 800FE058 0C03ED0C */  jal        func_800FB430_10A3E0
    /* 10D00C 800FE05C 00000000 */   nop
    /* 10D010 800FE060 3C0C8005 */  lui        $t4, %hi(D_8004DCF0)
    /* 10D014 800FE064 958CDCF0 */  lhu        $t4, %lo(D_8004DCF0)($t4)
    /* 10D018 800FE068 3C028005 */  lui        $v0, %hi(D_8004DCEC)
    /* 10D01C 800FE06C 8442DCEC */  lh         $v0, %lo(D_8004DCEC)($v0)
    /* 10D020 800FE070 3C018005 */  lui        $at, %hi(D_8004DCF0)
    /* 10D024 800FE074 358D8040 */  ori        $t5, $t4, 0x8040
    /* 10D028 800FE078 1C400005 */  bgtz       $v0, .L800FE090_10D040
    /* 10D02C 800FE07C A42DDCF0 */   sh        $t5, %lo(D_8004DCF0)($at)
    /* 10D030 800FE080 24020001 */  addiu      $v0, $zero, 0x1
    /* 10D034 800FE084 3C018005 */  lui        $at, %hi(D_8004DCEC)
    /* 10D038 800FE088 10000003 */  b          .L800FE098_10D048
    /* 10D03C 800FE08C A422DCEC */   sh        $v0, %lo(D_8004DCEC)($at)
  .L800FE090_10D040:
    /* 10D040 800FE090 3C018005 */  lui        $at, %hi(D_8004DCEC)
    /* 10D044 800FE094 A422DCEC */  sh         $v0, %lo(D_8004DCEC)($at)
  .L800FE098_10D048:
    /* 10D048 800FE098 3C028016 */  lui        $v0, %hi(D_80159320)
    /* 10D04C 800FE09C 24429320 */  addiu      $v0, $v0, %lo(D_80159320)
    /* 10D050 800FE0A0 8C580000 */  lw         $t8, 0x0($v0)
    /* 10D054 800FE0A4 37192000 */  ori        $t9, $t8, 0x2000
    /* 10D058 800FE0A8 AC590000 */  sw         $t9, 0x0($v0)
    /* 10D05C 800FE0AC 96880020 */  lhu        $t0, 0x20($s4)
    /* 10D060 800FE0B0 31090008 */  andi       $t1, $t0, 0x8
    /* 10D064 800FE0B4 11200005 */  beqz       $t1, .L800FE0CC_10D07C
    /* 10D068 800FE0B8 3C0A8005 */   lui       $t2, %hi(D_8004DCF0)
    /* 10D06C 800FE0BC 954ADCF0 */  lhu        $t2, %lo(D_8004DCF0)($t2)
    /* 10D070 800FE0C0 3C018005 */  lui        $at, %hi(D_8004DCF0)
    /* 10D074 800FE0C4 354B0008 */  ori        $t3, $t2, 0x8
    /* 10D078 800FE0C8 A42BDCF0 */  sh         $t3, %lo(D_8004DCF0)($at)
  .L800FE0CC_10D07C:
    /* 10D07C 800FE0CC 868C0002 */  lh         $t4, 0x2($s4)
    /* 10D080 800FE0D0 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* 10D084 800FE0D4 2484DCD0 */  addiu      $a0, $a0, %lo(vehicleInstances)
    /* 10D088 800FE0D8 448C3000 */  mtc1       $t4, $f6
    /* 10D08C 800FE0DC 00000000 */  nop
    /* 10D090 800FE0E0 468031A0 */  cvt.s.w    $f6, $f6
    /* 10D094 800FE0E4 44053000 */  mfc1       $a1, $f6
    /* 10D098 800FE0E8 0C03ED1A */  jal        func_800FB468_10A418
    /* 10D09C 800FE0EC 00000000 */   nop
    /* 10D0A0 800FE0F0 868D0006 */  lh         $t5, 0x6($s4)
    /* 10D0A4 800FE0F4 87AF0106 */  lh         $t7, 0x106($sp)
    /* 10D0A8 800FE0F8 87B90104 */  lh         $t9, 0x104($sp)
    /* 10D0AC 800FE0FC 3C028004 */  lui        $v0, %hi(D_8004758A)
    /* 10D0B0 800FE100 8042758A */  lb         $v0, %lo(D_8004758A)($v0)
    /* 10D0B4 800FE104 25AE4000 */  addiu      $t6, $t5, 0x4000
    /* 10D0B8 800FE108 25F80024 */  addiu      $t8, $t7, 0x24
    /* 10D0BC 800FE10C 27280024 */  addiu      $t0, $t9, 0x24
    /* 10D0C0 800FE110 A7AE00FA */  sh         $t6, 0xFA($sp)
    /* 10D0C4 800FE114 A7B80106 */  sh         $t8, 0x106($sp)
    /* 10D0C8 800FE118 04410003 */  bgez       $v0, .L800FE128_10D0D8
    /* 10D0CC 800FE11C A7A80104 */   sh        $t0, 0x104($sp)
    /* 10D0D0 800FE120 00085823 */  negu       $t3, $t0
    /* 10D0D4 800FE124 A7AB0104 */  sh         $t3, 0x104($sp)
  .L800FE128_10D0D8:
    /* 10D0D8 800FE128 04400006 */  bltz       $v0, .L800FE144_10D0F4
    /* 10D0DC 800FE12C 3C018016 */   lui       $at, %hi(D_8015931A)
    /* 10D0E0 800FE130 87AC0104 */  lh         $t4, 0x104($sp)
    /* 10D0E4 800FE134 87AD0104 */  lh         $t5, 0x104($sp)
    /* 10D0E8 800FE138 05810002 */  bgez       $t4, .L800FE144_10D0F4
    /* 10D0EC 800FE13C 000D7023 */   negu      $t6, $t5
    /* 10D0F0 800FE140 A7AE0104 */  sh         $t6, 0x104($sp)
  .L800FE144_10D0F4:
    /* 10D0F4 800FE144 8FAF0114 */  lw         $t7, 0x114($sp)
    /* 10D0F8 800FE148 A420931A */  sh         $zero, %lo(D_8015931A)($at)
    /* 10D0FC 800FE14C 3C018014 */  lui        $at, %hi(D_8013FD84)
    /* 10D100 800FE150 A420FD84 */  sh         $zero, %lo(D_8013FD84)($at)
    /* 10D104 800FE154 A7A000F4 */  sh         $zero, 0xF4($sp)
    /* 10D108 800FE158 11E00004 */  beqz       $t7, .L800FE16C_10D11C
    /* 10D10C 800FE15C AFA000C8 */   sw        $zero, 0xC8($sp)
    /* 10D110 800FE160 24180009 */  addiu      $t8, $zero, 0x9
    /* 10D114 800FE164 10000003 */  b          .L800FE174_10D124
    /* 10D118 800FE168 AFB800C0 */   sw        $t8, 0xC0($sp)
  .L800FE16C_10D11C:
    /* 10D11C 800FE16C 24190008 */  addiu      $t9, $zero, 0x8
    /* 10D120 800FE170 AFB900C0 */  sw         $t9, 0xC0($sp)
  .L800FE174_10D124:
    /* 10D124 800FE174 87A800C2 */  lh         $t0, 0xC2($sp)
    /* 10D128 800FE178 3C018014 */  lui        $at, %hi(D_80144A88)
    /* 10D12C 800FE17C D43A4A88 */  ldc1       $f26, %lo(D_80144A88)($at)
    /* 10D130 800FE180 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 10D134 800FE184 3C158026 */  lui        $s5, %hi(D_80259D90)
    /* 10D138 800FE188 2509FFFF */  addiu      $t1, $t0, -0x1
    /* 10D13C 800FE18C 4481C800 */  mtc1       $at, $f25
    /* 10D140 800FE190 4480C000 */  mtc1       $zero, $f24
    /* 10D144 800FE194 AFA90088 */  sw         $t1, 0x88($sp)
    /* 10D148 800FE198 26B59D90 */  addiu      $s5, $s5, %lo(D_80259D90)
    /* 10D14C 800FE19C 27BE00EC */  addiu      $fp, $sp, 0xEC
    /* 10D150 800FE1A0 27B700F0 */  addiu      $s7, $sp, 0xF0
    /* 10D154 800FE1A4 24160050 */  addiu      $s6, $zero, 0x50
    /* 10D158 800FE1A8 AFA8008C */  sw         $t0, 0x8C($sp)
    /* 10D15C 800FE1AC 8FAA00C4 */  lw         $t2, 0xC4($sp)
  .L800FE1B0_10D160:
    /* 10D160 800FE1B0 8FAB00C0 */  lw         $t3, 0xC0($sp)
    /* 10D164 800FE1B4 8FA2008C */  lw         $v0, 0x8C($sp)
    /* 10D168 800FE1B8 014B082A */  slt        $at, $t2, $t3
    /* 10D16C 800FE1BC 50200003 */  beql       $at, $zero, .L800FE1CC_10D17C
    /* 10D170 800FE1C0 8FAC0088 */   lw        $t4, 0x88($sp)
    /* 10D174 800FE1C4 AFA000C4 */  sw         $zero, 0xC4($sp)
    /* 10D178 800FE1C8 8FAC0088 */  lw         $t4, 0x88($sp)
  .L800FE1CC_10D17C:
    /* 10D17C 800FE1CC 87AD0104 */  lh         $t5, 0x104($sp)
    /* 10D180 800FE1D0 1040016D */  beqz       $v0, .L800FE788_10D738
    /* 10D184 800FE1D4 A7AC00F8 */   sh        $t4, 0xF8($sp)
    /* 10D188 800FE1D8 87AE0106 */  lh         $t6, 0x106($sp)
    /* 10D18C 800FE1DC 448D4000 */  mtc1       $t5, $f8
    /* 10D190 800FE1E0 448E5000 */  mtc1       $t6, $f10
    /* 10D194 800FE1E4 46804721 */  cvt.d.w    $f28, $f8
    /* 10D198 800FE1E8 468057A1 */  cvt.d.w    $f30, $f10
  .L800FE1EC_10D19C:
    /* 10D19C 800FE1EC 97B000F4 */  lhu        $s0, 0xF4($sp)
    /* 10D1A0 800FE1F0 0C007654 */  jal        coss
    /* 10D1A4 800FE1F4 02002025 */   or        $a0, $s0, $zero
    /* 10D1A8 800FE1F8 44828000 */  mtc1       $v0, $f16
    /* 10D1AC 800FE1FC 3204FFFF */  andi       $a0, $s0, 0xFFFF
    /* 10D1B0 800FE200 468084A0 */  cvt.s.w    $f18, $f16
    /* 10D1B4 800FE204 46009121 */  cvt.d.s    $f4, $f18
    /* 10D1B8 800FE208 46382183 */  div.d      $f6, $f4, $f24
    /* 10D1BC 800FE20C 463C3202 */  mul.d      $f8, $f6, $f28
    /* 10D1C0 800FE210 00000000 */  nop
    /* 10D1C4 800FE214 463A4282 */  mul.d      $f10, $f8, $f26
    /* 10D1C8 800FE218 4620540D */  trunc.w.d  $f16, $f10
    /* 10D1CC 800FE21C 44128000 */  mfc1       $s2, $f16
    /* 10D1D0 800FE220 00000000 */  nop
    /* 10D1D4 800FE224 0012C400 */  sll        $t8, $s2, 16
    /* 10D1D8 800FE228 0C007660 */  jal        sins
    /* 10D1DC 800FE22C 00189403 */   sra       $s2, $t8, 16
    /* 10D1E0 800FE230 44829000 */  mtc1       $v0, $f18
    /* 10D1E4 800FE234 87AB00F8 */  lh         $t3, 0xF8($sp)
    /* 10D1E8 800FE238 24010008 */  addiu      $at, $zero, 0x8
    /* 10D1EC 800FE23C 46809120 */  cvt.s.w    $f4, $f18
    /* 10D1F0 800FE240 97B000FA */  lhu        $s0, 0xFA($sp)
    /* 10D1F4 800FE244 460021A1 */  cvt.d.s    $f6, $f4
    /* 10D1F8 800FE248 46383203 */  div.d      $f8, $f6, $f24
    /* 10D1FC 800FE24C 463E4282 */  mul.d      $f10, $f8, $f30
    /* 10D200 800FE250 00000000 */  nop
    /* 10D204 800FE254 463A5402 */  mul.d      $f16, $f10, $f26
    /* 10D208 800FE258 4620848D */  trunc.w.d  $f18, $f16
    /* 10D20C 800FE25C 44139000 */  mfc1       $s3, $f18
    /* 10D210 800FE260 00000000 */  nop
    /* 10D214 800FE264 00134C00 */  sll        $t1, $s3, 16
    /* 10D218 800FE268 15610015 */  bne        $t3, $at, .L800FE2C0_10D270
    /* 10D21C 800FE26C 00099C03 */   sra       $s3, $t1, 16
    /* 10D220 800FE270 868C0000 */  lh         $t4, 0x0($s4)
    /* 10D224 800FE274 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* 10D228 800FE278 2484DCD0 */  addiu      $a0, $a0, %lo(vehicleInstances)
    /* 10D22C 800FE27C 448C2000 */  mtc1       $t4, $f4
    /* 10D230 800FE280 00000000 */  nop
    /* 10D234 800FE284 46802120 */  cvt.s.w    $f4, $f4
    /* 10D238 800FE288 44052000 */  mfc1       $a1, $f4
    /* 10D23C 800FE28C 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* 10D240 800FE290 00000000 */   nop
    /* 10D244 800FE294 868D0004 */  lh         $t5, 0x4($s4)
    /* 10D248 800FE298 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* 10D24C 800FE29C 2484DCD0 */  addiu      $a0, $a0, %lo(vehicleInstances)
    /* 10D250 800FE2A0 448D3000 */  mtc1       $t5, $f6
    /* 10D254 800FE2A4 00000000 */  nop
    /* 10D258 800FE2A8 468031A0 */  cvt.s.w    $f6, $f6
    /* 10D25C 800FE2AC 44053000 */  mfc1       $a1, $f6
    /* 10D260 800FE2B0 0C03ED21 */  jal        func_800FB484_10A434
    /* 10D264 800FE2B4 00000000 */   nop
    /* 10D268 800FE2B8 1000003D */  b          .L800FE3B0_10D360
    /* 10D26C 800FE2BC 00000000 */   nop
  .L800FE2C0_10D270:
    /* 10D270 800FE2C0 0C007654 */  jal        coss
    /* 10D274 800FE2C4 02002025 */   or        $a0, $s0, $zero
    /* 10D278 800FE2C8 00028C00 */  sll        $s1, $v0, 16
    /* 10D27C 800FE2CC 00117403 */  sra        $t6, $s1, 16
    /* 10D280 800FE2D0 01C08825 */  or         $s1, $t6, $zero
    /* 10D284 800FE2D4 0C007660 */  jal        sins
    /* 10D288 800FE2D8 3204FFFF */   andi      $a0, $s0, 0xFFFF
    /* 10D28C 800FE2DC 44912000 */  mtc1       $s1, $f4
    /* 10D290 800FE2E0 44924000 */  mtc1       $s2, $f8
    /* 10D294 800FE2E4 44935000 */  mtc1       $s3, $f10
    /* 10D298 800FE2E8 468021A0 */  cvt.s.w    $f6, $f4
    /* 10D29C 800FE2EC 868F0000 */  lh         $t7, 0x0($s4)
    /* 10D2A0 800FE2F0 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* 10D2A4 800FE2F4 2484DCD0 */  addiu      $a0, $a0, %lo(vehicleInstances)
    /* 10D2A8 800FE2F8 448F8000 */  mtc1       $t7, $f16
    /* 10D2AC 800FE2FC 46804521 */  cvt.d.w    $f20, $f8
    /* 10D2B0 800FE300 46003221 */  cvt.d.s    $f8, $f6
    /* 10D2B4 800FE304 468055A1 */  cvt.d.w    $f22, $f10
    /* 10D2B8 800FE308 44823000 */  mtc1       $v0, $f6
    /* 10D2BC 800FE30C 46384283 */  div.d      $f10, $f8, $f24
    /* 10D2C0 800FE310 468084A1 */  cvt.d.w    $f18, $f16
    /* 10D2C4 800FE314 46803220 */  cvt.s.w    $f8, $f6
    /* 10D2C8 800FE318 46345402 */  mul.d      $f16, $f10, $f20
    /* 10D2CC 800FE31C 460042A1 */  cvt.d.s    $f10, $f8
    /* 10D2D0 800FE320 46309100 */  add.d      $f4, $f18, $f16
    /* 10D2D4 800FE324 46385483 */  div.d      $f18, $f10, $f24
    /* 10D2D8 800FE328 46369402 */  mul.d      $f16, $f18, $f22
    /* 10D2DC 800FE32C 46302181 */  sub.d      $f6, $f4, $f16
    /* 10D2E0 800FE330 46203220 */  cvt.s.d    $f8, $f6
    /* 10D2E4 800FE334 44054000 */  mfc1       $a1, $f8
    /* 10D2E8 800FE338 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* 10D2EC 800FE33C 00000000 */   nop
    /* 10D2F0 800FE340 0C007660 */  jal        sins
    /* 10D2F4 800FE344 3204FFFF */   andi      $a0, $s0, 0xFFFF
    /* 10D2F8 800FE348 00028C00 */  sll        $s1, $v0, 16
    /* 10D2FC 800FE34C 0011C403 */  sra        $t8, $s1, 16
    /* 10D300 800FE350 03008825 */  or         $s1, $t8, $zero
    /* 10D304 800FE354 0C007654 */  jal        coss
    /* 10D308 800FE358 3204FFFF */   andi      $a0, $s0, 0xFFFF
    /* 10D30C 800FE35C 44912000 */  mtc1       $s1, $f4
    /* 10D310 800FE360 86990004 */  lh         $t9, 0x4($s4)
    /* 10D314 800FE364 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* 10D318 800FE368 46802420 */  cvt.s.w    $f16, $f4
    /* 10D31C 800FE36C 44995000 */  mtc1       $t9, $f10
    /* 10D320 800FE370 2484DCD0 */  addiu      $a0, $a0, %lo(vehicleInstances)
    /* 10D324 800FE374 468054A1 */  cvt.d.w    $f18, $f10
    /* 10D328 800FE378 460081A1 */  cvt.d.s    $f6, $f16
    /* 10D32C 800FE37C 44828000 */  mtc1       $v0, $f16
    /* 10D330 800FE380 46383203 */  div.d      $f8, $f6, $f24
    /* 10D334 800FE384 468081A0 */  cvt.s.w    $f6, $f16
    /* 10D338 800FE388 46344282 */  mul.d      $f10, $f8, $f20
    /* 10D33C 800FE38C 46003221 */  cvt.d.s    $f8, $f6
    /* 10D340 800FE390 462A9100 */  add.d      $f4, $f18, $f10
    /* 10D344 800FE394 46384483 */  div.d      $f18, $f8, $f24
    /* 10D348 800FE398 46369282 */  mul.d      $f10, $f18, $f22
    /* 10D34C 800FE39C 46245400 */  add.d      $f16, $f10, $f4
    /* 10D350 800FE3A0 462081A0 */  cvt.s.d    $f6, $f16
    /* 10D354 800FE3A4 44053000 */  mfc1       $a1, $f6
    /* 10D358 800FE3A8 0C03ED21 */  jal        func_800FB484_10A434
    /* 10D35C 800FE3AC 00000000 */   nop
  .L800FE3B0_10D360:
    /* 10D360 800FE3B0 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* 10D364 800FE3B4 0C045581 */  jal        func_80115604_1245B4
    /* 10D368 800FE3B8 2484DCD0 */   addiu     $a0, $a0, %lo(vehicleInstances)
    /* 10D36C 800FE3BC 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* 10D370 800FE3C0 3C058005 */  lui        $a1, %hi(D_8004DCD4)
    /* 10D374 800FE3C4 27A800D6 */  addiu      $t0, $sp, 0xD6
    /* 10D378 800FE3C8 AFA80010 */  sw         $t0, 0x10($sp)
    /* 10D37C 800FE3CC 84A5DCD4 */  lh         $a1, %lo(D_8004DCD4)($a1)
    /* 10D380 800FE3D0 8484DCD0 */  lh         $a0, %lo(vehicleInstances)($a0)
    /* 10D384 800FE3D4 27A600D2 */  addiu      $a2, $sp, 0xD2
    /* 10D388 800FE3D8 0C03E758 */  jal        func_800F9D60_108D10
    /* 10D38C 800FE3DC 27A700D4 */   addiu     $a3, $sp, 0xD4
    /* 10D390 800FE3E0 3C038022 */  lui        $v1, %hi(D_80222A70)
    /* 10D394 800FE3E4 8C632A70 */  lw         $v1, %lo(D_80222A70)($v1)
    /* 10D398 800FE3E8 87AA00D6 */  lh         $t2, 0xD6($sp)
    /* 10D39C 800FE3EC 00029400 */  sll        $s2, $v0, 16
    /* 10D3A0 800FE3F0 2463FFDC */  addiu      $v1, $v1, -0x24
    /* 10D3A4 800FE3F4 00124C03 */  sra        $t1, $s2, 16
    /* 10D3A8 800FE3F8 006A082A */  slt        $at, $v1, $t2
    /* 10D3AC 800FE3FC 1420000B */  bnez       $at, .L800FE42C_10D3DC
    /* 10D3B0 800FE400 01209025 */   or        $s2, $t1, $zero
    /* 10D3B4 800FE404 3C0B8005 */  lui        $t3, %hi(D_8004DCD2)
    /* 10D3B8 800FE408 856BDCD2 */  lh         $t3, %lo(D_8004DCD2)($t3)
    /* 10D3BC 800FE40C 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* 10D3C0 800FE410 240C0001 */  addiu      $t4, $zero, 0x1
    /* 10D3C4 800FE414 006B082A */  slt        $at, $v1, $t3
    /* 10D3C8 800FE418 10200004 */  beqz       $at, .L800FE42C_10D3DC
    /* 10D3CC 800FE41C 2484DCD0 */   addiu     $a0, $a0, %lo(vehicleInstances)
    /* 10D3D0 800FE420 AFAC00C8 */  sw         $t4, 0xC8($sp)
    /* 10D3D4 800FE424 0C03ECFA */  jal        func_800FB3E8_10A398
    /* 10D3D8 800FE428 3C05C210 */   lui       $a1, (0xC2100000 >> 16)
  .L800FE42C_10D3DC:
    /* 10D3DC 800FE42C 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* 10D3E0 800FE430 2484DCD0 */  addiu      $a0, $a0, %lo(vehicleInstances)
    /* 10D3E4 800FE434 0C0443ED */  jal        func_80110FB4_11FF64
    /* 10D3E8 800FE438 24050001 */   addiu     $a1, $zero, 0x1
    /* 10D3EC 800FE43C 144000BF */  bnez       $v0, .L800FE73C_10D6EC
    /* 10D3F0 800FE440 3C0D8005 */   lui       $t5, %hi(D_8004DCD2)
    /* 10D3F4 800FE444 85ADDCD2 */  lh         $t5, %lo(D_8004DCD2)($t5)
    /* 10D3F8 800FE448 87AE00D2 */  lh         $t6, 0xD2($sp)
    /* 10D3FC 800FE44C 8FAF0114 */  lw         $t7, 0x114($sp)
    /* 10D400 800FE450 01AE082A */  slt        $at, $t5, $t6
    /* 10D404 800FE454 542000BA */  bnel       $at, $zero, .L800FE740_10D6F0
    /* 10D408 800FE458 8FB900C8 */   lw        $t9, 0xC8($sp)
    /* 10D40C 800FE45C 15E00013 */  bnez       $t7, .L800FE4AC_10D45C
    /* 10D410 800FE460 24110001 */   addiu     $s1, $zero, 0x1
    /* 10D414 800FE464 87B800D6 */  lh         $t8, 0xD6($sp)
    /* 10D418 800FE468 3C088022 */  lui        $t0, %hi(D_80222A70)
    /* 10D41C 800FE46C 27190064 */  addiu      $t9, $t8, 0x64
    /* 10D420 800FE470 032D082A */  slt        $at, $t9, $t5
    /* 10D424 800FE474 5020000E */  beql       $at, $zero, .L800FE4B0_10D460
    /* 10D428 800FE478 8FAE0114 */   lw        $t6, 0x114($sp)
    /* 10D42C 800FE47C 8D082A70 */  lw         $t0, %lo(D_80222A70)($t0)
    /* 10D430 800FE480 8FAA00C4 */  lw         $t2, 0xC4($sp)
    /* 10D434 800FE484 8FAB00C0 */  lw         $t3, 0xC0($sp)
    /* 10D438 800FE488 25090064 */  addiu      $t1, $t0, 0x64
    /* 10D43C 800FE48C 012D082A */  slt        $at, $t1, $t5
    /* 10D440 800FE490 10200006 */  beqz       $at, .L800FE4AC_10D45C
    /* 10D444 800FE494 014B082A */   slt       $at, $t2, $t3
    /* 10D448 800FE498 10200004 */  beqz       $at, .L800FE4AC_10D45C
    /* 10D44C 800FE49C 254C0001 */   addiu     $t4, $t2, 0x1
    /* 10D450 800FE4A0 AFAC00C4 */  sw         $t4, 0xC4($sp)
    /* 10D454 800FE4A4 10000047 */  b          .L800FE5C4_10D574
    /* 10D458 800FE4A8 00008825 */   or        $s1, $zero, $zero
  .L800FE4AC_10D45C:
    /* 10D45C 800FE4AC 8FAE0114 */  lw         $t6, 0x114($sp)
  .L800FE4B0_10D460:
    /* 10D460 800FE4B0 3C0F8005 */  lui        $t7, %hi(D_8004DCD2)
    /* 10D464 800FE4B4 87B800D6 */  lh         $t8, 0xD6($sp)
    /* 10D468 800FE4B8 15C0000F */  bnez       $t6, .L800FE4F8_10D4A8
    /* 10D46C 800FE4BC 24100095 */   addiu     $s0, $zero, 0x95
    /* 10D470 800FE4C0 85EFDCD2 */  lh         $t7, %lo(D_8004DCD2)($t7)
    /* 10D474 800FE4C4 2719FFCE */  addiu      $t9, $t8, -0x32
    /* 10D478 800FE4C8 3C0D8025 */  lui        $t5, %hi(D_80257A38)
    /* 10D47C 800FE4CC 01F9082A */  slt        $at, $t7, $t9
    /* 10D480 800FE4D0 10200009 */  beqz       $at, .L800FE4F8_10D4A8
    /* 10D484 800FE4D4 00000000 */   nop
    /* 10D488 800FE4D8 85AD7A38 */  lh         $t5, %lo(D_80257A38)($t5)
    /* 10D48C 800FE4DC 87A800D4 */  lh         $t0, 0xD4($sp)
    /* 10D490 800FE4E0 01AF4821 */  addu       $t1, $t5, $t7
    /* 10D494 800FE4E4 0109082A */  slt        $at, $t0, $t1
    /* 10D498 800FE4E8 10200003 */  beqz       $at, .L800FE4F8_10D4A8
    /* 10D49C 800FE4EC 00000000 */   nop
    /* 10D4A0 800FE4F0 10000034 */  b          .L800FE5C4_10D574
    /* 10D4A4 800FE4F4 00008825 */   or        $s1, $zero, $zero
  .L800FE4F8_10D4A8:
    /* 10D4A8 800FE4F8 02160019 */  multu      $s0, $s6
    /* 10D4AC 800FE4FC 00005812 */  mflo       $t3
    /* 10D4B0 800FE500 02AB1021 */  addu       $v0, $s5, $t3
    /* 10D4B4 800FE504 804A0000 */  lb         $t2, 0x0($v0)
    /* 10D4B8 800FE508 2941000E */  slti       $at, $t2, 0xE
    /* 10D4BC 800FE50C 54200029 */  bnel       $at, $zero, .L800FE5B4_10D564
    /* 10D4C0 800FE510 02001025 */   or        $v0, $s0, $zero
    /* 10D4C4 800FE514 868D0000 */  lh         $t5, 0x0($s4)
    /* 10D4C8 800FE518 84580030 */  lh         $t8, 0x30($v0)
    /* 10D4CC 800FE51C 84590034 */  lh         $t9, 0x34($v0)
    /* 10D4D0 800FE520 448D8000 */  mtc1       $t5, $f16
    /* 10D4D4 800FE524 44985000 */  mtc1       $t8, $f10
    /* 10D4D8 800FE528 844C0010 */  lh         $t4, 0x10($v0)
    /* 10D4DC 800FE52C 468081A0 */  cvt.s.w    $f6, $f16
    /* 10D4E0 800FE530 44992000 */  mtc1       $t9, $f4
    /* 10D4E4 800FE534 844E0014 */  lh         $t6, 0x14($v0)
    /* 10D4E8 800FE538 448C4000 */  mtc1       $t4, $f8
    /* 10D4EC 800FE53C 3C088005 */  lui        $t0, %hi(vehicleInstances)
    /* 10D4F0 800FE540 468052A0 */  cvt.s.w    $f10, $f10
    /* 10D4F4 800FE544 E7A60010 */  swc1       $f6, 0x10($sp)
    /* 10D4F8 800FE548 3C098005 */  lui        $t1, %hi(D_8004DCD4)
    /* 10D4FC 800FE54C 8529DCD4 */  lh         $t1, %lo(D_8004DCD4)($t1)
    /* 10D500 800FE550 868F0004 */  lh         $t7, 0x4($s4)
    /* 10D504 800FE554 46802120 */  cvt.s.w    $f4, $f4
    /* 10D508 800FE558 8508DCD0 */  lh         $t0, %lo(vehicleInstances)($t0)
    /* 10D50C 800FE55C 448E9000 */  mtc1       $t6, $f18
    /* 10D510 800FE560 44065000 */  mfc1       $a2, $f10
    /* 10D514 800FE564 44898000 */  mtc1       $t1, $f16
    /* 10D518 800FE568 46804320 */  cvt.s.w    $f12, $f8
    /* 10D51C 800FE56C 448F4000 */  mtc1       $t7, $f8
    /* 10D520 800FE570 44885000 */  mtc1       $t0, $f10
    /* 10D524 800FE574 44072000 */  mfc1       $a3, $f4
    /* 10D528 800FE578 AFBE0024 */  sw         $fp, 0x24($sp)
    /* 10D52C 800FE57C 468093A0 */  cvt.s.w    $f14, $f18
    /* 10D530 800FE580 AFB70020 */  sw         $s7, 0x20($sp)
    /* 10D534 800FE584 468081A0 */  cvt.s.w    $f6, $f16
    /* 10D538 800FE588 468044A0 */  cvt.s.w    $f18, $f8
    /* 10D53C 800FE58C E7A6001C */  swc1       $f6, 0x1C($sp)
    /* 10D540 800FE590 46805120 */  cvt.s.w    $f4, $f10
    /* 10D544 800FE594 E7B20014 */  swc1       $f18, 0x14($sp)
    /* 10D548 800FE598 0C043BD0 */  jal        func_8010EF40_11DEF0
    /* 10D54C 800FE59C E7A40018 */   swc1      $f4, 0x18($sp)
    /* 10D550 800FE5A0 50400004 */  beql       $v0, $zero, .L800FE5B4_10D564
    /* 10D554 800FE5A4 02001025 */   or        $v0, $s0, $zero
    /* 10D558 800FE5A8 10000006 */  b          .L800FE5C4_10D574
    /* 10D55C 800FE5AC 00008825 */   or        $s1, $zero, $zero
    /* 10D560 800FE5B0 02001025 */  or         $v0, $s0, $zero
  .L800FE5B4_10D564:
    /* 10D564 800FE5B4 2610FFFF */  addiu      $s0, $s0, -0x1
    /* 10D568 800FE5B8 00105C00 */  sll        $t3, $s0, 16
    /* 10D56C 800FE5BC 1440FFCE */  bnez       $v0, .L800FE4F8_10D4A8
    /* 10D570 800FE5C0 000B8403 */   sra       $s0, $t3, 16
  .L800FE5C4_10D574:
    /* 10D574 800FE5C4 1220005D */  beqz       $s1, .L800FE73C_10D6EC
    /* 10D578 800FE5C8 3C0E8025 */   lui       $t6, %hi(D_80257A38)
    /* 10D57C 800FE5CC 3C188005 */  lui        $t8, %hi(D_8004DCD2)
    /* 10D580 800FE5D0 8718DCD2 */  lh         $t8, %lo(D_8004DCD2)($t8)
    /* 10D584 800FE5D4 85CE7A38 */  lh         $t6, %lo(D_80257A38)($t6)
    /* 10D588 800FE5D8 87AD00D4 */  lh         $t5, 0xD4($sp)
    /* 10D58C 800FE5DC 240C0001 */  addiu      $t4, $zero, 0x1
    /* 10D590 800FE5E0 01D8C821 */  addu       $t9, $t6, $t8
    /* 10D594 800FE5E4 032D082A */  slt        $at, $t9, $t5
    /* 10D598 800FE5E8 1020000C */  beqz       $at, .L800FE61C_10D5CC
    /* 10D59C 800FE5EC AFAC00DC */   sw        $t4, 0xDC($sp)
    /* 10D5A0 800FE5F0 3C0F8005 */  lui        $t7, %hi(D_8004DCF0)
    /* 10D5A4 800FE5F4 95EFDCF0 */  lhu        $t7, %lo(D_8004DCF0)($t7)
    /* 10D5A8 800FE5F8 87A900D2 */  lh         $t1, 0xD2($sp)
    /* 10D5AC 800FE5FC 3C018005 */  lui        $at, %hi(D_8004DCF0)
    /* 10D5B0 800FE600 35E80008 */  ori        $t0, $t7, 0x8
    /* 10D5B4 800FE604 A428DCF0 */  sh         $t0, %lo(D_8004DCF0)($at)
    /* 10D5B8 800FE608 0309082A */  slt        $at, $t8, $t1
    /* 10D5BC 800FE60C 10200011 */  beqz       $at, .L800FE654_10D604
    /* 10D5C0 800FE610 3C018005 */   lui       $at, %hi(D_8004DCD2)
    /* 10D5C4 800FE614 1000000F */  b          .L800FE654_10D604
    /* 10D5C8 800FE618 A429DCD2 */   sh        $t1, %lo(D_8004DCD2)($at)
  .L800FE61C_10D5CC:
    /* 10D5CC 800FE61C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 10D5D0 800FE620 12410006 */  beq        $s2, $at, .L800FE63C_10D5EC
    /* 10D5D4 800FE624 3C0C8005 */   lui       $t4, %hi(D_8004DCD2)
    /* 10D5D8 800FE628 3C0B8005 */  lui        $t3, %hi(D_8004DCF0)
    /* 10D5DC 800FE62C 956BDCF0 */  lhu        $t3, %lo(D_8004DCF0)($t3)
    /* 10D5E0 800FE630 3C018005 */  lui        $at, %hi(D_8004DCF0)
    /* 10D5E4 800FE634 356A0800 */  ori        $t2, $t3, 0x800
    /* 10D5E8 800FE638 A42ADCF0 */  sh         $t2, %lo(D_8004DCF0)($at)
  .L800FE63C_10D5EC:
    /* 10D5EC 800FE63C 858CDCD2 */  lh         $t4, %lo(D_8004DCD2)($t4)
    /* 10D5F0 800FE640 87AE00D6 */  lh         $t6, 0xD6($sp)
    /* 10D5F4 800FE644 018E082A */  slt        $at, $t4, $t6
    /* 10D5F8 800FE648 10200002 */  beqz       $at, .L800FE654_10D604
    /* 10D5FC 800FE64C 3C018005 */   lui       $at, %hi(D_8004DCD2)
    /* 10D600 800FE650 A42EDCD2 */  sh         $t6, %lo(D_8004DCD2)($at)
  .L800FE654_10D604:
    /* 10D604 800FE654 8FB90114 */  lw         $t9, 0x114($sp)
    /* 10D608 800FE658 3C0C8015 */  lui        $t4, %hi(D_80157A28)
    /* 10D60C 800FE65C 17200031 */  bnez       $t9, .L800FE724_10D6D4
    /* 10D610 800FE660 00000000 */   nop
    /* 10D614 800FE664 868D0000 */  lh         $t5, 0x0($s4)
    /* 10D618 800FE668 3C108005 */  lui        $s0, %hi(vehicleInstances)
    /* 10D61C 800FE66C 3C118005 */  lui        $s1, %hi(D_8004DCD2)
    /* 10D620 800FE670 448D4000 */  mtc1       $t5, $f8
    /* 10D624 800FE674 3C128005 */  lui        $s2, %hi(D_8004DCD4)
    /* 10D628 800FE678 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* 10D62C 800FE67C 46804220 */  cvt.s.w    $f8, $f8
    /* 10D630 800FE680 8610DCD0 */  lh         $s0, %lo(vehicleInstances)($s0)
    /* 10D634 800FE684 8631DCD2 */  lh         $s1, %lo(D_8004DCD2)($s1)
    /* 10D638 800FE688 8652DCD4 */  lh         $s2, %lo(D_8004DCD4)($s2)
    /* 10D63C 800FE68C 2484DCD0 */  addiu      $a0, $a0, %lo(vehicleInstances)
    /* 10D640 800FE690 44054000 */  mfc1       $a1, $f8
    /* 10D644 800FE694 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* 10D648 800FE698 00000000 */   nop
    /* 10D64C 800FE69C 868F0002 */  lh         $t7, 0x2($s4)
    /* 10D650 800FE6A0 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* 10D654 800FE6A4 2484DCD0 */  addiu      $a0, $a0, %lo(vehicleInstances)
    /* 10D658 800FE6A8 448F9000 */  mtc1       $t7, $f18
    /* 10D65C 800FE6AC 00000000 */  nop
    /* 10D660 800FE6B0 468094A0 */  cvt.s.w    $f18, $f18
    /* 10D664 800FE6B4 44059000 */  mfc1       $a1, $f18
    /* 10D668 800FE6B8 0C03ED1A */  jal        func_800FB468_10A418
    /* 10D66C 800FE6BC 00000000 */   nop
    /* 10D670 800FE6C0 86880004 */  lh         $t0, 0x4($s4)
    /* 10D674 800FE6C4 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* 10D678 800FE6C8 2484DCD0 */  addiu      $a0, $a0, %lo(vehicleInstances)
    /* 10D67C 800FE6CC 44885000 */  mtc1       $t0, $f10
    /* 10D680 800FE6D0 00000000 */  nop
    /* 10D684 800FE6D4 468052A0 */  cvt.s.w    $f10, $f10
    /* 10D688 800FE6D8 44055000 */  mfc1       $a1, $f10
    /* 10D68C 800FE6DC 0C03ED21 */  jal        func_800FB484_10A434
    /* 10D690 800FE6E0 00000000 */   nop
    /* 10D694 800FE6E4 24180018 */  addiu      $t8, $zero, 0x18
    /* 10D698 800FE6E8 3C018016 */  lui        $at, %hi(D_80159300)
    /* 10D69C 800FE6EC 0C03A90D */  jal        func_800EA434_F93E4
    /* 10D6A0 800FE6F0 AC389300 */   sw        $t8, %lo(D_80159300)($at)
    /* 10D6A4 800FE6F4 00102400 */  sll        $a0, $s0, 16
    /* 10D6A8 800FE6F8 00112C00 */  sll        $a1, $s1, 16
    /* 10D6AC 800FE6FC 00123400 */  sll        $a2, $s2, 16
    /* 10D6B0 800FE700 00065403 */  sra        $t2, $a2, 16
    /* 10D6B4 800FE704 00055C03 */  sra        $t3, $a1, 16
    /* 10D6B8 800FE708 00044C03 */  sra        $t1, $a0, 16
    /* 10D6BC 800FE70C 01202025 */  or         $a0, $t1, $zero
    /* 10D6C0 800FE710 01602825 */  or         $a1, $t3, $zero
    /* 10D6C4 800FE714 0C03AF67 */  jal        func_800EBD9C_FAD4C
    /* 10D6C8 800FE718 01403025 */   or        $a2, $t2, $zero
    /* 10D6CC 800FE71C 1000001B */  b          .L800FE78C_10D73C
    /* 10D6D0 800FE720 8FAB00DC */   lw        $t3, 0xDC($sp)
  .L800FE724_10D6D4:
    /* 10D6D4 800FE724 8D8C7A28 */  lw         $t4, %lo(D_80157A28)($t4)
    /* 10D6D8 800FE728 2401FFFB */  addiu      $at, $zero, -0x5
    /* 10D6DC 800FE72C 01817024 */  and        $t6, $t4, $at
    /* 10D6E0 800FE730 3C018015 */  lui        $at, %hi(D_80157A28)
    /* 10D6E4 800FE734 10000014 */  b          .L800FE788_10D738
    /* 10D6E8 800FE738 AC2E7A28 */   sw        $t6, %lo(D_80157A28)($at)
  .L800FE73C_10D6EC:
    /* 10D6EC 800FE73C 8FB900C8 */  lw         $t9, 0xC8($sp)
  .L800FE740_10D6F0:
    /* 10D6F0 800FE740 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* 10D6F4 800FE744 2484DCD0 */  addiu      $a0, $a0, %lo(vehicleInstances)
    /* 10D6F8 800FE748 13200003 */  beqz       $t9, .L800FE758_10D708
    /* 10D6FC 800FE74C 3C054210 */   lui       $a1, (0x42100000 >> 16)
    /* 10D700 800FE750 0C03ECFA */  jal        func_800FB3E8_10A398
    /* 10D704 800FE754 AFA000C8 */   sw        $zero, 0xC8($sp)
  .L800FE758_10D708:
    /* 10D708 800FE758 87A300F8 */  lh         $v1, 0xF8($sp)
    /* 10D70C 800FE75C 87AF00F4 */  lh         $t7, 0xF4($sp)
    /* 10D710 800FE760 34028000 */  ori        $v0, $zero, 0x8000
    /* 10D714 800FE764 306D0001 */  andi       $t5, $v1, 0x1
    /* 10D718 800FE768 11A00003 */  beqz       $t5, .L800FE778_10D728
    /* 10D71C 800FE76C 2469FFFF */   addiu     $t1, $v1, -0x1
    /* 10D720 800FE770 10000001 */  b          .L800FE778_10D728
    /* 10D724 800FE774 3402A000 */   ori       $v0, $zero, 0xA000
  .L800FE778_10D728:
    /* 10D728 800FE778 01E24021 */  addu       $t0, $t7, $v0
    /* 10D72C 800FE77C A7A800F4 */  sh         $t0, 0xF4($sp)
    /* 10D730 800FE780 1460FE9A */  bnez       $v1, .L800FE1EC_10D19C
    /* 10D734 800FE784 A7A900F8 */   sh        $t1, 0xF8($sp)
  .L800FE788_10D738:
    /* 10D738 800FE788 8FAB00DC */  lw         $t3, 0xDC($sp)
  .L800FE78C_10D73C:
    /* 10D73C 800FE78C 3C0A8005 */  lui        $t2, %hi(D_8004DCD2)
    /* 10D740 800FE790 5560000C */  bnel       $t3, $zero, .L800FE7C4_10D774
    /* 10D744 800FE794 8FAE00DC */   lw        $t6, 0xDC($sp)
    /* 10D748 800FE798 854ADCD2 */  lh         $t2, %lo(D_8004DCD2)($t2)
    /* 10D74C 800FE79C 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* 10D750 800FE7A0 2484DCD0 */  addiu      $a0, $a0, %lo(vehicleInstances)
    /* 10D754 800FE7A4 254C0014 */  addiu      $t4, $t2, 0x14
    /* 10D758 800FE7A8 448C2000 */  mtc1       $t4, $f4
    /* 10D75C 800FE7AC 00000000 */  nop
    /* 10D760 800FE7B0 46802120 */  cvt.s.w    $f4, $f4
    /* 10D764 800FE7B4 44052000 */  mfc1       $a1, $f4
    /* 10D768 800FE7B8 0C03ED1A */  jal        func_800FB468_10A418
    /* 10D76C 800FE7BC 00000000 */   nop
    /* 10D770 800FE7C0 8FAE00DC */  lw         $t6, 0xDC($sp)
  .L800FE7C4_10D774:
    /* 10D774 800FE7C4 51C0FE7A */  beql       $t6, $zero, .L800FE1B0_10D160
    /* 10D778 800FE7C8 8FAA00C4 */   lw        $t2, 0xC4($sp)
    /* 10D77C 800FE7CC 8FB90114 */  lw         $t9, 0x114($sp)
    /* 10D780 800FE7D0 00002025 */  or         $a0, $zero, $zero
    /* 10D784 800FE7D4 00002825 */  or         $a1, $zero, $zero
    /* 10D788 800FE7D8 1320000A */  beqz       $t9, .L800FE804_10D7B4
    /* 10D78C 800FE7DC 00000000 */   nop
    /* 10D790 800FE7E0 C6900030 */  lwc1       $f16, 0x30($s4)
    /* 10D794 800FE7E4 3C018005 */  lui        $at, %hi(D_8004DD00)
    /* 10D798 800FE7E8 E430DD00 */  swc1       $f16, %lo(D_8004DD00)($at)
    /* 10D79C 800FE7EC C6860034 */  lwc1       $f6, 0x34($s4)
    /* 10D7A0 800FE7F0 3C018005 */  lui        $at, %hi(D_8004DD04)
    /* 10D7A4 800FE7F4 E426DD04 */  swc1       $f6, %lo(D_8004DD04)($at)
    /* 10D7A8 800FE7F8 C6880038 */  lwc1       $f8, 0x38($s4)
    /* 10D7AC 800FE7FC 3C018005 */  lui        $at, %hi(D_8004DD08)
    /* 10D7B0 800FE800 E428DD08 */  swc1       $f8, %lo(D_8004DD08)($at)
  .L800FE804_10D7B4:
    /* 10D7B4 800FE804 3C018005 */  lui        $at, %hi(D_80050AD4)
    /* 10D7B8 800FE808 0C03F544 */  jal        func_800FD510_10C4C0
    /* 10D7BC 800FE80C AC200AD4 */   sw        $zero, %lo(D_80050AD4)($at)
    /* 10D7C0 800FE810 3C0D8005 */  lui        $t5, %hi(D_8004DCF0)
    /* 10D7C4 800FE814 95ADDCF0 */  lhu        $t5, %lo(D_8004DCF0)($t5)
    /* 10D7C8 800FE818 3C018005 */  lui        $at, %hi(D_8004DCF0)
    /* 10D7CC 800FE81C 35AF0002 */  ori        $t7, $t5, 0x2
    /* 10D7D0 800FE820 A42FDCF0 */  sh         $t7, %lo(D_8004DCF0)($at)
    /* 10D7D4 800FE824 0C04E5AA */  jal        func_801396A8_148658
    /* 10D7D8 800FE828 9284001A */   lbu       $a0, 0x1A($s4)
    /* 10D7DC 800FE82C 8FA800FC */  lw         $t0, 0xFC($sp)
    /* 10D7E0 800FE830 24040002 */  addiu      $a0, $zero, 0x2
    /* 10D7E4 800FE834 51000004 */  beql       $t0, $zero, .L800FE848_10D7F8
    /* 10D7E8 800FE838 8FB80110 */   lw        $t8, 0x110($sp)
    /* 10D7EC 800FE83C 0C03973D */  jal        func_800E5CF4_F4CA4
    /* 10D7F0 800FE840 00002825 */   or        $a1, $zero, $zero
    /* 10D7F4 800FE844 8FB80110 */  lw         $t8, 0x110($sp)
  .L800FE848_10D7F8:
    /* 10D7F8 800FE848 3C098005 */  lui        $t1, %hi(D_80052AE8)
    /* 10D7FC 800FE84C 25292AE8 */  addiu      $t1, $t1, %lo(D_80052AE8)
    /* 10D800 800FE850 17090005 */  bne        $t8, $t1, .L800FE868_10D818
    /* 10D804 800FE854 3C0A8005 */   lui       $t2, %hi(D_80052B2C)
    /* 10D808 800FE858 8D4A2B2C */  lw         $t2, %lo(D_80052B2C)($t2)
    /* 10D80C 800FE85C 3C0B8005 */  lui        $t3, %hi(vehicleInstances)
    /* 10D810 800FE860 256BDCD0 */  addiu      $t3, $t3, %lo(vehicleInstances)
    /* 10D814 800FE864 AD4B0038 */  sw         $t3, 0x38($t2)
  .L800FE868_10D818:
    /* 10D818 800FE868 0C03F535 */  jal        func_800FD4D4_10C484
    /* 10D81C 800FE86C 8FA40100 */   lw        $a0, 0x100($sp)
    /* 10D820 800FE870 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 10D824 800FE874 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 10D828 800FE878 8FAC0100 */  lw         $t4, 0x100($sp)
    /* 10D82C 800FE87C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 10D830 800FE880 44819000 */  mtc1       $at, $f18
    /* 10D834 800FE884 848E0004 */  lh         $t6, 0x4($a0)
    /* 10D838 800FE888 84860000 */  lh         $a2, 0x0($a0)
    /* 10D83C 800FE88C 84870002 */  lh         $a3, 0x2($a0)
    /* 10D840 800FE890 8585006A */  lh         $a1, 0x6A($t4)
    /* 10D844 800FE894 E7B20014 */  swc1       $f18, 0x14($sp)
    /* 10D848 800FE898 0C04DC6E */  jal        func_801371B8_146168
    /* 10D84C 800FE89C AFAE0010 */   sw        $t6, 0x10($sp)
    /* 10D850 800FE8A0 3C198005 */  lui        $t9, %hi(D_8004816A)
    /* 10D854 800FE8A4 3C0D8003 */  lui        $t5, %hi(D_800314C4)
    /* 10D858 800FE8A8 91AD14C4 */  lbu        $t5, %lo(D_800314C4)($t5)
    /* 10D85C 800FE8AC 8739816A */  lh         $t9, %lo(D_8004816A)($t9)
    /* 10D860 800FE8B0 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 10D864 800FE8B4 032D082A */  slt        $at, $t9, $t5
    /* 10D868 800FE8B8 54200004 */  bnel       $at, $zero, .L800FE8CC_10D87C
    /* 10D86C 800FE8BC 8FBF0084 */   lw        $ra, 0x84($sp)
    /* 10D870 800FE8C0 0C048EB1 */  jal        func_80123AC4_132A74
    /* 10D874 800FE8C4 8C842B34 */   lw        $a0, %lo(D_80052B34)($a0)
  .L800FE8C8_10D878:
    /* 10D878 800FE8C8 8FBF0084 */  lw         $ra, 0x84($sp)
  .L800FE8CC_10D87C:
    /* 10D87C 800FE8CC D7B40030 */  ldc1       $f20, 0x30($sp)
    /* 10D880 800FE8D0 D7B60038 */  ldc1       $f22, 0x38($sp)
    /* 10D884 800FE8D4 D7B80040 */  ldc1       $f24, 0x40($sp)
    /* 10D888 800FE8D8 D7BA0048 */  ldc1       $f26, 0x48($sp)
    /* 10D88C 800FE8DC D7BC0050 */  ldc1       $f28, 0x50($sp)
    /* 10D890 800FE8E0 D7BE0058 */  ldc1       $f30, 0x58($sp)
    /* 10D894 800FE8E4 8FB00060 */  lw         $s0, 0x60($sp)
    /* 10D898 800FE8E8 8FB10064 */  lw         $s1, 0x64($sp)
    /* 10D89C 800FE8EC 8FB20068 */  lw         $s2, 0x68($sp)
    /* 10D8A0 800FE8F0 8FB3006C */  lw         $s3, 0x6C($sp)
    /* 10D8A4 800FE8F4 8FB40070 */  lw         $s4, 0x70($sp)
    /* 10D8A8 800FE8F8 8FB50074 */  lw         $s5, 0x74($sp)
    /* 10D8AC 800FE8FC 8FB60078 */  lw         $s6, 0x78($sp)
    /* 10D8B0 800FE900 8FB7007C */  lw         $s7, 0x7C($sp)
    /* 10D8B4 800FE904 8FBE0080 */  lw         $fp, 0x80($sp)
    /* 10D8B8 800FE908 03E00008 */  jr         $ra
    /* 10D8BC 800FE90C 27BD0110 */   addiu     $sp, $sp, 0x110
endlabel func_800FDEA8_10CE58
