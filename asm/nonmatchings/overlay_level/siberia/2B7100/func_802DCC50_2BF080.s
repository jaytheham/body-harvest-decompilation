nonmatching func_802DCC50_2BF080, 0x580

glabel func_802DCC50_2BF080
    /* 2BF080 802DCC50 27BDFF58 */  addiu      $sp, $sp, -0xA8
    /* 2BF084 802DCC54 AFA400A8 */  sw         $a0, 0xA8($sp)
    /* 2BF088 802DCC58 93AE00AB */  lbu        $t6, 0xAB($sp)
    /* 2BF08C 802DCC5C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BF090 802DCC60 AFB10040 */  sw         $s1, 0x40($sp)
    /* 2BF094 802DCC64 000E7880 */  sll        $t7, $t6, 2
    /* 2BF098 802DCC68 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BF09C 802DCC6C 000F7900 */  sll        $t7, $t7, 4
    /* 2BF0A0 802DCC70 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BF0A4 802DCC74 01F88821 */  addu       $s1, $t7, $t8
    /* 2BF0A8 802DCC78 8E390020 */  lw         $t9, 0x20($s1)
    /* 2BF0AC 802DCC7C AFBF0044 */  sw         $ra, 0x44($sp)
    /* 2BF0B0 802DCC80 AFB0003C */  sw         $s0, 0x3C($sp)
    /* 2BF0B4 802DCC84 332F2000 */  andi       $t7, $t9, 0x2000
    /* 2BF0B8 802DCC88 11E0014B */  beqz       $t7, .L802DD1B8_2BF5E8
    /* 2BF0BC 802DCC8C AFA0005C */   sw        $zero, 0x5C($sp)
    /* 2BF0C0 802DCC90 8622000C */  lh         $v0, 0xC($s1)
    /* 2BF0C4 802DCC94 3C198015 */  lui        $t9, %hi(D_8014DD50)
    /* 2BF0C8 802DCC98 2739DD50 */  addiu      $t9, $t9, %lo(D_8014DD50)
    /* 2BF0CC 802DCC9C 0002C100 */  sll        $t8, $v0, 4
    /* 2BF0D0 802DCCA0 03198021 */  addu       $s0, $t8, $t9
    /* 2BF0D4 802DCCA4 8203000C */  lb         $v1, 0xC($s0)
    /* 2BF0D8 802DCCA8 00037900 */  sll        $t7, $v1, 4
    /* 2BF0DC 802DCCAC 01F92821 */  addu       $a1, $t7, $t9
    /* 2BF0E0 802DCCB0 80A4000C */  lb         $a0, 0xC($a1)
    /* 2BF0E4 802DCCB4 80A6000D */  lb         $a2, 0xD($a1)
    /* 2BF0E8 802DCCB8 2405000C */  addiu      $a1, $zero, 0xC
    /* 2BF0EC 802DCCBC 0004C100 */  sll        $t8, $a0, 4
    /* 2BF0F0 802DCCC0 03197821 */  addu       $t7, $t8, $t9
    /* 2BF0F4 802DCCC4 0006C100 */  sll        $t8, $a2, 4
    /* 2BF0F8 802DCCC8 03193821 */  addu       $a3, $t8, $t9
    /* 2BF0FC 802DCCCC 80E8000D */  lb         $t0, 0xD($a3)
    /* 2BF100 802DCCD0 81EA000C */  lb         $t2, 0xC($t7)
    /* 2BF104 802DCCD4 80EB000C */  lb         $t3, 0xC($a3)
    /* 2BF108 802DCCD8 00087900 */  sll        $t7, $t0, 4
    /* 2BF10C 802DCCDC 01F9C021 */  addu       $t8, $t7, $t9
    /* 2BF110 802DCCE0 AFB80050 */  sw         $t8, 0x50($sp)
    /* 2BF114 802DCCE4 8309000C */  lb         $t1, 0xC($t8)
    /* 2BF118 802DCCE8 27A70078 */  addiu      $a3, $sp, 0x78
    /* 2BF11C 802DCCEC 00097900 */  sll        $t7, $t1, 4
    /* 2BF120 802DCCF0 01F97821 */  addu       $t7, $t7, $t9
    /* 2BF124 802DCCF4 AFAF004C */  sw         $t7, 0x4C($sp)
    /* 2BF128 802DCCF8 81EF000C */  lb         $t7, 0xC($t7)
    /* 2BF12C 802DCCFC A7AF0096 */  sh         $t7, 0x96($sp)
    /* 2BF130 802DCD00 830C000D */  lb         $t4, 0xD($t8)
    /* 2BF134 802DCD04 000CC100 */  sll        $t8, $t4, 4
    /* 2BF138 802DCD08 0319C021 */  addu       $t8, $t8, $t9
    /* 2BF13C 802DCD0C 830D000C */  lb         $t5, 0xC($t8)
    /* 2BF140 802DCD10 000DC100 */  sll        $t8, $t5, 4
    /* 2BF144 802DCD14 0319C021 */  addu       $t8, $t8, $t9
    /* 2BF148 802DCD18 831F000C */  lb         $ra, 0xC($t8)
    /* 2BF14C 802DCD1C 3C19802E */  lui        $t9, %hi(D_802E2734)
    /* 2BF150 802DCD20 27392734 */  addiu      $t9, $t9, %lo(D_802E2734)
    /* 2BF154 802DCD24 A7A4007C */  sh         $a0, 0x7C($sp)
    /* 2BF158 802DCD28 A7A60080 */  sh         $a2, 0x80($sp)
    /* 2BF15C 802DCD2C A7BF008E */  sh         $ra, 0x8E($sp)
    /* 2BF160 802DCD30 24060004 */  addiu      $a2, $zero, 0x4
    /* 2BF164 802DCD34 01C02025 */  or         $a0, $t6, $zero
    /* 2BF168 802DCD38 AFB90010 */  sw         $t9, 0x10($sp)
    /* 2BF16C 802DCD3C A7A20078 */  sh         $v0, 0x78($sp)
    /* 2BF170 802DCD40 A7A3007A */  sh         $v1, 0x7A($sp)
    /* 2BF174 802DCD44 A7A80084 */  sh         $t0, 0x84($sp)
    /* 2BF178 802DCD48 A7AA007E */  sh         $t2, 0x7E($sp)
    /* 2BF17C 802DCD4C A7AB0082 */  sh         $t3, 0x82($sp)
    /* 2BF180 802DCD50 A7A90086 */  sh         $t1, 0x86($sp)
    /* 2BF184 802DCD54 A7AF0088 */  sh         $t7, 0x88($sp)
    /* 2BF188 802DCD58 A7AC008A */  sh         $t4, 0x8A($sp)
    /* 2BF18C 802DCD5C 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BF190 802DCD60 A7AD008C */   sh        $t5, 0x8C($sp)
    /* 2BF194 802DCD64 92380036 */  lbu        $t8, 0x36($s1)
    /* 2BF198 802DCD68 24030002 */  addiu      $v1, $zero, 0x2
    /* 2BF19C 802DCD6C A3A20077 */  sb         $v0, 0x77($sp)
    /* 2BF1A0 802DCD70 547800A0 */  bnel       $v1, $t8, .L802DCFF4_2BF424
    /* 2BF1A4 802DCD74 93B00077 */   lbu       $s0, 0x77($sp)
    /* 2BF1A8 802DCD78 860F000E */  lh         $t7, 0xE($s0)
    /* 2BF1AC 802DCD7C 93A400AB */  lbu        $a0, 0xAB($sp)
    /* 2BF1B0 802DCD80 24050064 */  addiu      $a1, $zero, 0x64
    /* 2BF1B4 802DCD84 546F009B */  bnel       $v1, $t7, .L802DCFF4_2BF424
    /* 2BF1B8 802DCD88 93B00077 */   lbu       $s0, 0x77($sp)
    /* 2BF1BC 802DCD8C 0C021E69 */  jal        func_800879A4_96954
    /* 2BF1C0 802DCD90 00003025 */   or        $a2, $zero, $zero
    /* 2BF1C4 802DCD94 3C038015 */  lui        $v1, %hi(D_8014ED42)
    /* 2BF1C8 802DCD98 2463ED42 */  addiu      $v1, $v1, %lo(D_8014ED42)
    /* 2BF1CC 802DCD9C A4620000 */  sh         $v0, 0x0($v1)
    /* 2BF1D0 802DCDA0 846E0000 */  lh         $t6, 0x0($v1)
    /* 2BF1D4 802DCDA4 3C058014 */  lui        $a1, %hi(D_8014619A)
    /* 2BF1D8 802DCDA8 93A400AB */  lbu        $a0, 0xAB($sp)
    /* 2BF1DC 802DCDAC 11C0008E */  beqz       $t6, .L802DCFE8_2BF418
    /* 2BF1E0 802DCDB0 00000000 */   nop
    /* 2BF1E4 802DCDB4 84B9619A */  lh         $t9, %lo(D_8014619A)($a1)
    /* 2BF1E8 802DCDB8 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 2BF1EC 802DCDBC 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 2BF1F0 802DCDC0 0019C480 */  sll        $t8, $t9, 18
    /* 2BF1F4 802DCDC4 00182C03 */  sra        $a1, $t8, 16
    /* 2BF1F8 802DCDC8 86260000 */  lh         $a2, 0x0($s1)
    /* 2BF1FC 802DCDCC 0C048949 */  jal        func_80122524_1314D4
    /* 2BF200 802DCDD0 86270004 */   lh        $a3, 0x4($s1)
    /* 2BF204 802DCDD4 86240006 */  lh         $a0, 0x6($s1)
    /* 2BF208 802DCDD8 24844000 */  addiu      $a0, $a0, 0x4000
    /* 2BF20C 802DCDDC 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* 2BF210 802DCDE0 0C007660 */  jal        sins
    /* 2BF214 802DCDE4 01C02025 */   or        $a0, $t6, $zero
    /* 2BF218 802DCDE8 44822000 */  mtc1       $v0, $f4
    /* 2BF21C 802DCDEC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BF220 802DCDF0 44815800 */  mtc1       $at, $f11
    /* 2BF224 802DCDF4 468021A0 */  cvt.s.w    $f6, $f4
    /* 2BF228 802DCDF8 44805000 */  mtc1       $zero, $f10
    /* 2BF22C 802DCDFC 86240006 */  lh         $a0, 0x6($s1)
    /* 2BF230 802DCE00 24844000 */  addiu      $a0, $a0, 0x4000
    /* 2BF234 802DCE04 46003221 */  cvt.d.s    $f8, $f6
    /* 2BF238 802DCE08 3099FFFF */  andi       $t9, $a0, 0xFFFF
    /* 2BF23C 802DCE0C 462A4403 */  div.d      $f16, $f8, $f10
    /* 2BF240 802DCE10 03202025 */  or         $a0, $t9, $zero
    /* 2BF244 802DCE14 462084A0 */  cvt.s.d    $f18, $f16
    /* 2BF248 802DCE18 0C007654 */  jal        coss
    /* 2BF24C 802DCE1C E7B20064 */   swc1      $f18, 0x64($sp)
    /* 2BF250 802DCE20 44822000 */  mtc1       $v0, $f4
    /* 2BF254 802DCE24 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BF258 802DCE28 44815800 */  mtc1       $at, $f11
    /* 2BF25C 802DCE2C 468021A0 */  cvt.s.w    $f6, $f4
    /* 2BF260 802DCE30 44805000 */  mtc1       $zero, $f10
    /* 2BF264 802DCE34 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 2BF268 802DCE38 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 2BF26C 802DCE3C 00003025 */  or         $a2, $zero, $zero
    /* 2BF270 802DCE40 3C074270 */  lui        $a3, (0x42700000 >> 16)
    /* 2BF274 802DCE44 46003221 */  cvt.d.s    $f8, $f6
    /* 2BF278 802DCE48 02002025 */  or         $a0, $s0, $zero
    /* 2BF27C 802DCE4C 462A4403 */  div.d      $f16, $f8, $f10
    /* 2BF280 802DCE50 46208487 */  neg.d      $f18, $f16
    /* 2BF284 802DCE54 46209120 */  cvt.s.d    $f4, $f18
    /* 2BF288 802DCE58 E7A40060 */  swc1       $f4, 0x60($sp)
    /* 2BF28C 802DCE5C 9218001A */  lbu        $t8, 0x1A($s0)
    /* 2BF290 802DCE60 17000037 */  bnez       $t8, .L802DCF40_2BF370
    /* 2BF294 802DCE64 00000000 */   nop
    /* 2BF298 802DCE68 02002025 */  or         $a0, $s0, $zero
    /* 2BF29C 802DCE6C 86250006 */  lh         $a1, 0x6($s1)
    /* 2BF2A0 802DCE70 00003025 */  or         $a2, $zero, $zero
    /* 2BF2A4 802DCE74 0C040B77 */  jal        func_80102DDC_111D8C
    /* 2BF2A8 802DCE78 3C0742C8 */   lui       $a3, (0x42C80000 >> 16)
    /* 2BF2AC 802DCE7C 93B000AB */  lbu        $s0, 0xAB($sp)
    /* 2BF2B0 802DCE80 24050134 */  addiu      $a1, $zero, 0x134
    /* 2BF2B4 802DCE84 0C04DD1A */  jal        func_80137468_146418
    /* 2BF2B8 802DCE88 02002025 */   or        $a0, $s0, $zero
    /* 2BF2BC 802DCE8C 02002025 */  or         $a0, $s0, $zero
    /* 2BF2C0 802DCE90 0C04DD1A */  jal        func_80137468_146418
    /* 2BF2C4 802DCE94 24050002 */   addiu     $a1, $zero, 0x2
    /* 2BF2C8 802DCE98 3C0F8003 */  lui        $t7, %hi(D_80031420)
    /* 2BF2CC 802DCE9C 8DEF1420 */  lw         $t7, %lo(D_80031420)($t7)
    /* 2BF2D0 802DCEA0 24010003 */  addiu      $at, $zero, 0x3
    /* 2BF2D4 802DCEA4 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 2BF2D8 802DCEA8 31EE0003 */  andi       $t6, $t7, 0x3
    /* 2BF2DC 802DCEAC 15C1004B */  bne        $t6, $at, .L802DCFDC_2BF40C
    /* 2BF2E0 802DCEB0 C7A60064 */   lwc1      $f6, 0x64($sp)
    /* 2BF2E4 802DCEB4 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* 2BF2E8 802DCEB8 44810000 */  mtc1       $at, $f0
    /* 2BF2EC 802DCEBC C7B00060 */  lwc1       $f16, 0x60($sp)
    /* 2BF2F0 802DCEC0 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 2BF2F4 802DCEC4 46003202 */  mul.s      $f8, $f6, $f0
    /* 2BF2F8 802DCEC8 240EFFB0 */  addiu      $t6, $zero, -0x50
    /* 2BF2FC 802DCECC 86040000 */  lh         $a0, 0x0($s0)
    /* 2BF300 802DCED0 46008482 */  mul.s      $f18, $f16, $f0
    /* 2BF304 802DCED4 86050002 */  lh         $a1, 0x2($s0)
    /* 2BF308 802DCED8 86060004 */  lh         $a2, 0x4($s0)
    /* 2BF30C 802DCEDC AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2BF310 802DCEE0 240E0005 */  addiu      $t6, $zero, 0x5
    /* 2BF314 802DCEE4 240F00B4 */  addiu      $t7, $zero, 0xB4
    /* 2BF318 802DCEE8 4600428D */  trunc.w.s  $f10, $f8
    /* 2BF31C 802DCEEC AFAF0018 */  sw         $t7, 0x18($sp)
    /* 2BF320 802DCEF0 AFAE001C */  sw         $t6, 0x1C($sp)
    /* 2BF324 802DCEF4 4600910D */  trunc.w.s  $f4, $f18
    /* 2BF328 802DCEF8 44075000 */  mfc1       $a3, $f10
    /* 2BF32C 802DCEFC 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 2BF330 802DCF00 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 2BF334 802DCF04 0007C600 */  sll        $t8, $a3, 24
    /* 2BF338 802DCF08 00183E03 */  sra        $a3, $t8, 24
    /* 2BF33C 802DCF0C 44182000 */  mfc1       $t8, $f4
    /* 2BF340 802DCF10 24190010 */  addiu      $t9, $zero, 0x10
    /* 2BF344 802DCF14 AFB90020 */  sw         $t9, 0x20($sp)
    /* 2BF348 802DCF18 AFB80014 */  sw         $t8, 0x14($sp)
    /* 2BF34C 802DCF1C 24180080 */  addiu      $t8, $zero, 0x80
    /* 2BF350 802DCF20 AFB80024 */  sw         $t8, 0x24($sp)
    /* 2BF354 802DCF24 AFAF0028 */  sw         $t7, 0x28($sp)
    /* 2BF358 802DCF28 AFAE0034 */  sw         $t6, 0x34($sp)
    /* 2BF35C 802DCF2C AFA00030 */  sw         $zero, 0x30($sp)
    /* 2BF360 802DCF30 0C03297B */  jal        func_800CA5EC_D959C
    /* 2BF364 802DCF34 AFA0002C */   sw        $zero, 0x2C($sp)
    /* 2BF368 802DCF38 10000029 */  b          .L802DCFE0_2BF410
    /* 2BF36C 802DCF3C 24180001 */   addiu     $t8, $zero, 0x1
  .L802DCF40_2BF370:
    /* 2BF370 802DCF40 0C040B77 */  jal        func_80102DDC_111D8C
    /* 2BF374 802DCF44 86250006 */   lh        $a1, 0x6($s1)
    /* 2BF378 802DCF48 93A400AB */  lbu        $a0, 0xAB($sp)
    /* 2BF37C 802DCF4C 0C04DD1A */  jal        func_80137468_146418
    /* 2BF380 802DCF50 24050135 */   addiu     $a1, $zero, 0x135
    /* 2BF384 802DCF54 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* 2BF388 802DCF58 44810000 */  mtc1       $at, $f0
    /* 2BF38C 802DCF5C C7A60064 */  lwc1       $f6, 0x64($sp)
    /* 2BF390 802DCF60 C7B00060 */  lwc1       $f16, 0x60($sp)
    /* 2BF394 802DCF64 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 2BF398 802DCF68 46003202 */  mul.s      $f8, $f6, $f0
    /* 2BF39C 802DCF6C 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 2BF3A0 802DCF70 240EFFB0 */  addiu      $t6, $zero, -0x50
    /* 2BF3A4 802DCF74 46008482 */  mul.s      $f18, $f16, $f0
    /* 2BF3A8 802DCF78 86040000 */  lh         $a0, 0x0($s0)
    /* 2BF3AC 802DCF7C 86050002 */  lh         $a1, 0x2($s0)
    /* 2BF3B0 802DCF80 86060004 */  lh         $a2, 0x4($s0)
    /* 2BF3B4 802DCF84 240F00B4 */  addiu      $t7, $zero, 0xB4
    /* 2BF3B8 802DCF88 24190028 */  addiu      $t9, $zero, 0x28
    /* 2BF3BC 802DCF8C 4600428D */  trunc.w.s  $f10, $f8
    /* 2BF3C0 802DCF90 AFB90020 */  sw         $t9, 0x20($sp)
    /* 2BF3C4 802DCF94 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 2BF3C8 802DCF98 4600910D */  trunc.w.s  $f4, $f18
    /* 2BF3CC 802DCF9C 44075000 */  mfc1       $a3, $f10
    /* 2BF3D0 802DCFA0 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2BF3D4 802DCFA4 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 2BF3D8 802DCFA8 0007C600 */  sll        $t8, $a3, 24
    /* 2BF3DC 802DCFAC 00183E03 */  sra        $a3, $t8, 24
    /* 2BF3E0 802DCFB0 44182000 */  mfc1       $t8, $f4
    /* 2BF3E4 802DCFB4 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 2BF3E8 802DCFB8 241900C8 */  addiu      $t9, $zero, 0xC8
    /* 2BF3EC 802DCFBC AFB80014 */  sw         $t8, 0x14($sp)
    /* 2BF3F0 802DCFC0 24180014 */  addiu      $t8, $zero, 0x14
    /* 2BF3F4 802DCFC4 AFB80024 */  sw         $t8, 0x24($sp)
    /* 2BF3F8 802DCFC8 AFB90030 */  sw         $t9, 0x30($sp)
    /* 2BF3FC 802DCFCC AFAF0028 */  sw         $t7, 0x28($sp)
    /* 2BF400 802DCFD0 AFAE001C */  sw         $t6, 0x1C($sp)
    /* 2BF404 802DCFD4 0C031507 */  jal        func_800C541C_D43CC
    /* 2BF408 802DCFD8 AFAE002C */   sw        $t6, 0x2C($sp)
  .L802DCFDC_2BF40C:
    /* 2BF40C 802DCFDC 24180001 */  addiu      $t8, $zero, 0x1
  .L802DCFE0_2BF410:
    /* 2BF410 802DCFE0 10000003 */  b          .L802DCFF0_2BF420
    /* 2BF414 802DCFE4 AFB8005C */   sw        $t8, 0x5C($sp)
  .L802DCFE8_2BF418:
    /* 2BF418 802DCFE8 0C04DD1A */  jal        func_80137468_146418
    /* 2BF41C 802DCFEC 24050134 */   addiu     $a1, $zero, 0x134
  .L802DCFF0_2BF420:
    /* 2BF420 802DCFF0 93B00077 */  lbu        $s0, 0x77($sp)
  .L802DCFF4_2BF424:
    /* 2BF424 802DCFF4 24010001 */  addiu      $at, $zero, 0x1
    /* 2BF428 802DCFF8 02202025 */  or         $a0, $s1, $zero
    /* 2BF42C 802DCFFC 1601001F */  bne        $s0, $at, .L802DD07C_2BF4AC
    /* 2BF430 802DD000 2405003C */   addiu     $a1, $zero, 0x3C
    /* 2BF434 802DD004 27AF0070 */  addiu      $t7, $sp, 0x70
    /* 2BF438 802DD008 27AE006C */  addiu      $t6, $sp, 0x6C
    /* 2BF43C 802DD00C 27B90068 */  addiu      $t9, $sp, 0x68
    /* 2BF440 802DD010 AFB90018 */  sw         $t9, 0x18($sp)
    /* 2BF444 802DD014 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 2BF448 802DD018 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2BF44C 802DD01C 2406FFCE */  addiu      $a2, $zero, -0x32
    /* 2BF450 802DD020 0C04A10A */  jal        func_80128428_1373D8
    /* 2BF454 802DD024 2407008A */   addiu     $a3, $zero, 0x8A
    /* 2BF458 802DD028 8FA3006C */  lw         $v1, 0x6C($sp)
    /* 2BF45C 802DD02C 240F0005 */  addiu      $t7, $zero, 0x5
    /* 2BF460 802DD030 240E0028 */  addiu      $t6, $zero, 0x28
    /* 2BF464 802DD034 00032C00 */  sll        $a1, $v1, 16
    /* 2BF468 802DD038 0005C403 */  sra        $t8, $a1, 16
    /* 2BF46C 802DD03C 03002825 */  or         $a1, $t8, $zero
    /* 2BF470 802DD040 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 2BF474 802DD044 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2BF478 802DD048 240F00E1 */  addiu      $t7, $zero, 0xE1
    /* 2BF47C 802DD04C 240E00E1 */  addiu      $t6, $zero, 0xE1
    /* 2BF480 802DD050 241800E1 */  addiu      $t8, $zero, 0xE1
    /* 2BF484 802DD054 241900C8 */  addiu      $t9, $zero, 0xC8
    /* 2BF488 802DD058 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 2BF48C 802DD05C AFB80020 */  sw         $t8, 0x20($sp)
    /* 2BF490 802DD060 AFAE0028 */  sw         $t6, 0x28($sp)
    /* 2BF494 802DD064 AFAF0024 */  sw         $t7, 0x24($sp)
    /* 2BF498 802DD068 87A40072 */  lh         $a0, 0x72($sp)
    /* 2BF49C 802DD06C 87A6006A */  lh         $a2, 0x6A($sp)
    /* 2BF4A0 802DD070 240700C8 */  addiu      $a3, $zero, 0xC8
    /* 2BF4A4 802DD074 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 2BF4A8 802DD078 AFA00014 */   sw        $zero, 0x14($sp)
  .L802DD07C_2BF4AC:
    /* 2BF4AC 802DD07C 87B90096 */  lh         $t9, 0x96($sp)
    /* 2BF4B0 802DD080 8FA30050 */  lw         $v1, 0x50($sp)
    /* 2BF4B4 802DD084 3C0F8015 */  lui        $t7, %hi(D_8014DD50)
    /* 2BF4B8 802DD088 8FA8004C */  lw         $t0, 0x4C($sp)
    /* 2BF4BC 802DD08C 25EFDD50 */  addiu      $t7, $t7, %lo(D_8014DD50)
    /* 2BF4C0 802DD090 0019C100 */  sll        $t8, $t9, 4
    /* 2BF4C4 802DD094 030F1021 */  addu       $v0, $t8, $t7
    /* 2BF4C8 802DD098 844E0000 */  lh         $t6, 0x0($v0)
    /* 2BF4CC 802DD09C 84790000 */  lh         $t9, 0x0($v1)
    /* 2BF4D0 802DD0A0 850F0000 */  lh         $t7, 0x0($t0)
    /* 2BF4D4 802DD0A4 02202025 */  or         $a0, $s1, $zero
    /* 2BF4D8 802DD0A8 01D9C021 */  addu       $t8, $t6, $t9
    /* 2BF4DC 802DD0AC 030F2821 */  addu       $a1, $t8, $t7
    /* 2BF4E0 802DD0B0 84580002 */  lh         $t8, 0x2($v0)
    /* 2BF4E4 802DD0B4 846F0002 */  lh         $t7, 0x2($v1)
    /* 2BF4E8 802DD0B8 85190002 */  lh         $t9, 0x2($t0)
    /* 2BF4EC 802DD0BC 00057400 */  sll        $t6, $a1, 16
    /* 2BF4F0 802DD0C0 000E2C03 */  sra        $a1, $t6, 16
    /* 2BF4F4 802DD0C4 030F7021 */  addu       $t6, $t8, $t7
    /* 2BF4F8 802DD0C8 01D93021 */  addu       $a2, $t6, $t9
    /* 2BF4FC 802DD0CC 844E0004 */  lh         $t6, 0x4($v0)
    /* 2BF500 802DD0D0 84790004 */  lh         $t9, 0x4($v1)
    /* 2BF504 802DD0D4 850F0004 */  lh         $t7, 0x4($t0)
    /* 2BF508 802DD0D8 0006C400 */  sll        $t8, $a2, 16
    /* 2BF50C 802DD0DC 00183403 */  sra        $a2, $t8, 16
    /* 2BF510 802DD0E0 01D9C021 */  addu       $t8, $t6, $t9
    /* 2BF514 802DD0E4 030F3821 */  addu       $a3, $t8, $t7
    /* 2BF518 802DD0E8 00077400 */  sll        $t6, $a3, 16
    /* 2BF51C 802DD0EC 000E3C03 */  sra        $a3, $t6, 16
    /* 2BF520 802DD0F0 27AE0068 */  addiu      $t6, $sp, 0x68
    /* 2BF524 802DD0F4 27AF006C */  addiu      $t7, $sp, 0x6C
    /* 2BF528 802DD0F8 27B80070 */  addiu      $t8, $sp, 0x70
    /* 2BF52C 802DD0FC AFB80010 */  sw         $t8, 0x10($sp)
    /* 2BF530 802DD100 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 2BF534 802DD104 0C04A10A */  jal        func_80128428_1373D8
    /* 2BF538 802DD108 AFAE0018 */   sw        $t6, 0x18($sp)
    /* 2BF53C 802DD10C 3C19802E */  lui        $t9, %hi(D_802E2764)
    /* 2BF540 802DD110 8F392764 */  lw         $t9, %lo(D_802E2764)($t9)
    /* 2BF544 802DD114 87A40072 */  lh         $a0, 0x72($sp)
    /* 2BF548 802DD118 5720001F */  bnel       $t9, $zero, .L802DD198_2BF5C8
    /* 2BF54C 802DD11C 24010004 */   addiu     $at, $zero, 0x4
    /* 2BF550 802DD120 0C02E134 */  jal        func_800B84D0_C7480
    /* 2BF554 802DD124 87A5006A */   lh        $a1, 0x6A($sp)
    /* 2BF558 802DD128 8FA3006C */  lw         $v1, 0x6C($sp)
    /* 2BF55C 802DD12C 0002C203 */  sra        $t8, $v0, 8
    /* 2BF560 802DD130 240F0001 */  addiu      $t7, $zero, 0x1
    /* 2BF564 802DD134 0078082A */  slt        $at, $v1, $t8
    /* 2BF568 802DD138 10200016 */  beqz       $at, .L802DD194_2BF5C4
    /* 2BF56C 802DD13C 00032C00 */   sll       $a1, $v1, 16
    /* 2BF570 802DD140 3C01802E */  lui        $at, %hi(D_802E2764)
    /* 2BF574 802DD144 00057403 */  sra        $t6, $a1, 16
    /* 2BF578 802DD148 24190005 */  addiu      $t9, $zero, 0x5
    /* 2BF57C 802DD14C 24180028 */  addiu      $t8, $zero, 0x28
    /* 2BF580 802DD150 AC2F2764 */  sw         $t7, %lo(D_802E2764)($at)
    /* 2BF584 802DD154 AFB80018 */  sw         $t8, 0x18($sp)
    /* 2BF588 802DD158 AFB90010 */  sw         $t9, 0x10($sp)
    /* 2BF58C 802DD15C 01C02825 */  or         $a1, $t6, $zero
    /* 2BF590 802DD160 240E00E1 */  addiu      $t6, $zero, 0xE1
    /* 2BF594 802DD164 241900E1 */  addiu      $t9, $zero, 0xE1
    /* 2BF598 802DD168 241800E1 */  addiu      $t8, $zero, 0xE1
    /* 2BF59C 802DD16C 240F00C8 */  addiu      $t7, $zero, 0xC8
    /* 2BF5A0 802DD170 AFAF001C */  sw         $t7, 0x1C($sp)
    /* 2BF5A4 802DD174 AFB80028 */  sw         $t8, 0x28($sp)
    /* 2BF5A8 802DD178 AFB90024 */  sw         $t9, 0x24($sp)
    /* 2BF5AC 802DD17C AFAE0020 */  sw         $t6, 0x20($sp)
    /* 2BF5B0 802DD180 87A40072 */  lh         $a0, 0x72($sp)
    /* 2BF5B4 802DD184 87A6006A */  lh         $a2, 0x6A($sp)
    /* 2BF5B8 802DD188 240700C8 */  addiu      $a3, $zero, 0xC8
    /* 2BF5BC 802DD18C 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 2BF5C0 802DD190 AFA00014 */   sw        $zero, 0x14($sp)
  .L802DD194_2BF5C4:
    /* 2BF5C4 802DD194 24010004 */  addiu      $at, $zero, 0x4
  .L802DD198_2BF5C8:
    /* 2BF5C8 802DD198 56010008 */  bnel       $s0, $at, .L802DD1BC_2BF5EC
    /* 2BF5CC 802DD19C 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 2BF5D0 802DD1A0 8E2F0020 */  lw         $t7, 0x20($s1)
    /* 2BF5D4 802DD1A4 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 2BF5D8 802DD1A8 01E17024 */  and        $t6, $t7, $at
    /* 2BF5DC 802DD1AC AE2E0020 */  sw         $t6, 0x20($s1)
    /* 2BF5E0 802DD1B0 3C01802E */  lui        $at, %hi(D_802E2764)
    /* 2BF5E4 802DD1B4 AC202764 */  sw         $zero, %lo(D_802E2764)($at)
  .L802DD1B8_2BF5E8:
    /* 2BF5E8 802DD1B8 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DD1BC_2BF5EC:
    /* 2BF5EC 802DD1BC 8FA2005C */  lw         $v0, 0x5C($sp)
    /* 2BF5F0 802DD1C0 8FB0003C */  lw         $s0, 0x3C($sp)
    /* 2BF5F4 802DD1C4 8FB10040 */  lw         $s1, 0x40($sp)
    /* 2BF5F8 802DD1C8 03E00008 */  jr         $ra
    /* 2BF5FC 802DD1CC 27BD00A8 */   addiu     $sp, $sp, 0xA8
endlabel func_802DCC50_2BF080
