nonmatching func_802DCA14_2BEE44, 0x23C

glabel func_802DCA14_2BEE44
    /* 2BEE44 802DCA14 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* 2BEE48 802DCA18 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 2BEE4C 802DCA1C AFB00038 */  sw         $s0, 0x38($sp)
    /* 2BEE50 802DCA20 0C000E38 */  jal        func_800038E0_44E0
    /* 2BEE54 802DCA24 AFA40088 */   sw        $a0, 0x88($sp)
    /* 2BEE58 802DCA28 24010032 */  addiu      $at, $zero, 0x32
    /* 2BEE5C 802DCA2C 0041001A */  div        $zero, $v0, $at
    /* 2BEE60 802DCA30 00007010 */  mfhi       $t6
    /* 2BEE64 802DCA34 93A4008B */  lbu        $a0, 0x8B($sp)
    /* 2BEE68 802DCA38 55C00004 */  bnel       $t6, $zero, .L802DCA4C_2BEE7C
    /* 2BEE6C 802DCA3C 93AF008B */   lbu       $t7, 0x8B($sp)
    /* 2BEE70 802DCA40 0C04DD1A */  jal        func_80137468_146418
    /* 2BEE74 802DCA44 24050199 */   addiu     $a1, $zero, 0x199
    /* 2BEE78 802DCA48 93AF008B */  lbu        $t7, 0x8B($sp)
  .L802DCA4C_2BEE7C:
    /* 2BEE7C 802DCA4C 3C198005 */  lui        $t9, %hi(alienInstances)
    /* 2BEE80 802DCA50 27398198 */  addiu      $t9, $t9, %lo(alienInstances)
    /* 2BEE84 802DCA54 000FC080 */  sll        $t8, $t7, 2
    /* 2BEE88 802DCA58 030FC021 */  addu       $t8, $t8, $t7
    /* 2BEE8C 802DCA5C 0018C100 */  sll        $t8, $t8, 4
    /* 2BEE90 802DCA60 03198021 */  addu       $s0, $t8, $t9
    /* 2BEE94 802DCA64 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 2BEE98 802DCA68 31D81000 */  andi       $t8, $t6, 0x1000
    /* 2BEE9C 802DCA6C 53000074 */  beql       $t8, $zero, .L802DCC40_2BF070
    /* 2BEEA0 802DCA70 8FBF003C */   lw        $ra, 0x3C($sp)
    /* 2BEEA4 802DCA74 8619000C */  lh         $t9, 0xC($s0)
    /* 2BEEA8 802DCA78 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 2BEEAC 802DCA7C 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 2BEEB0 802DCA80 00197100 */  sll        $t6, $t9, 4
    /* 2BEEB4 802DCA84 004EC021 */  addu       $t8, $v0, $t6
    /* 2BEEB8 802DCA88 8303000C */  lb         $v1, 0xC($t8)
    /* 2BEEBC 802DCA8C 0003C900 */  sll        $t9, $v1, 4
    /* 2BEEC0 802DCA90 00595821 */  addu       $t3, $v0, $t9
    /* 2BEEC4 802DCA94 8165000D */  lb         $a1, 0xD($t3)
    /* 2BEEC8 802DCA98 8164000C */  lb         $a0, 0xC($t3)
    /* 2BEECC 802DCA9C 0005C900 */  sll        $t9, $a1, 4
    /* 2BEED0 802DCAA0 00593021 */  addu       $a2, $v0, $t9
    /* 2BEED4 802DCAA4 80C7000D */  lb         $a3, 0xD($a2)
    /* 2BEED8 802DCAA8 00047100 */  sll        $t6, $a0, 4
    /* 2BEEDC 802DCAAC 004EC021 */  addu       $t8, $v0, $t6
    /* 2BEEE0 802DCAB0 00077100 */  sll        $t6, $a3, 4
    /* 2BEEE4 802DCAB4 004E4821 */  addu       $t1, $v0, $t6
    /* 2BEEE8 802DCAB8 8128000C */  lb         $t0, 0xC($t1)
    /* 2BEEEC 802DCABC 830C000C */  lb         $t4, 0xC($t8)
    /* 2BEEF0 802DCAC0 812A000D */  lb         $t2, 0xD($t1)
    /* 2BEEF4 802DCAC4 0008C100 */  sll        $t8, $t0, 4
    /* 2BEEF8 802DCAC8 0058C821 */  addu       $t9, $v0, $t8
    /* 2BEEFC 802DCACC 000A7100 */  sll        $t6, $t2, 4
    /* 2BEF00 802DCAD0 833F000C */  lb         $ra, 0xC($t9)
    /* 2BEF04 802DCAD4 004EC021 */  addu       $t8, $v0, $t6
    /* 2BEF08 802DCAD8 8319000C */  lb         $t9, 0xC($t8)
    /* 2BEF0C 802DCADC 80CD000C */  lb         $t5, 0xC($a2)
    /* 2BEF10 802DCAE0 24060002 */  addiu      $a2, $zero, 0x2
    /* 2BEF14 802DCAE4 A7B90074 */  sh         $t9, 0x74($sp)
    /* 2BEF18 802DCAE8 87AE0074 */  lh         $t6, 0x74($sp)
    /* 2BEF1C 802DCAEC 000EC100 */  sll        $t8, $t6, 4
    /* 2BEF20 802DCAF0 0058C821 */  addu       $t9, $v0, $t8
    /* 2BEF24 802DCAF4 8338000C */  lb         $t8, 0xC($t9)
    /* 2BEF28 802DCAF8 3C19802E */  lui        $t9, %hi(D_802E2408)
    /* 2BEF2C 802DCAFC 27392408 */  addiu      $t9, $t9, %lo(D_802E2408)
    /* 2BEF30 802DCB00 A7A50062 */  sh         $a1, 0x62($sp)
    /* 2BEF34 802DCB04 A7A4005E */  sh         $a0, 0x5E($sp)
    /* 2BEF38 802DCB08 A7A70066 */  sh         $a3, 0x66($sp)
    /* 2BEF3C 802DCB0C A7BF006A */  sh         $ra, 0x6A($sp)
    /* 2BEF40 802DCB10 27A7005C */  addiu      $a3, $sp, 0x5C
    /* 2BEF44 802DCB14 01E02025 */  or         $a0, $t7, $zero
    /* 2BEF48 802DCB18 2405000B */  addiu      $a1, $zero, 0xB
    /* 2BEF4C 802DCB1C AFB90010 */  sw         $t9, 0x10($sp)
    /* 2BEF50 802DCB20 AFAB0044 */  sw         $t3, 0x44($sp)
    /* 2BEF54 802DCB24 A7A3005C */  sh         $v1, 0x5C($sp)
    /* 2BEF58 802DCB28 A7A80068 */  sh         $t0, 0x68($sp)
    /* 2BEF5C 802DCB2C A7AC0060 */  sh         $t4, 0x60($sp)
    /* 2BEF60 802DCB30 A7AA006C */  sh         $t2, 0x6C($sp)
    /* 2BEF64 802DCB34 A7AD0064 */  sh         $t5, 0x64($sp)
    /* 2BEF68 802DCB38 A7AE006E */  sh         $t6, 0x6E($sp)
    /* 2BEF6C 802DCB3C A7B80072 */  sh         $t8, 0x72($sp)
    /* 2BEF70 802DCB40 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BEF74 802DCB44 A7B80070 */   sh        $t8, 0x70($sp)
    /* 2BEF78 802DCB48 8FAB0044 */  lw         $t3, 0x44($sp)
    /* 2BEF7C 802DCB4C 24010008 */  addiu      $at, $zero, 0x8
    /* 2BEF80 802DCB50 A3A2004F */  sb         $v0, 0x4F($sp)
    /* 2BEF84 802DCB54 856E000E */  lh         $t6, 0xE($t3)
    /* 2BEF88 802DCB58 55C10031 */  bnel       $t6, $at, .L802DCC20_2BF050
    /* 2BEF8C 802DCB5C 93B8004F */   lbu       $t8, 0x4F($sp)
    /* 2BEF90 802DCB60 92020036 */  lbu        $v0, 0x36($s0)
    /* 2BEF94 802DCB64 24010001 */  addiu      $at, $zero, 0x1
    /* 2BEF98 802DCB68 02002025 */  or         $a0, $s0, $zero
    /* 2BEF9C 802DCB6C 1441000C */  bne        $v0, $at, .L802DCBA0_2BEFD0
    /* 2BEFA0 802DCB70 2405FFC4 */   addiu     $a1, $zero, -0x3C
    /* 2BEFA4 802DCB74 27B80058 */  addiu      $t8, $sp, 0x58
    /* 2BEFA8 802DCB78 27AF0054 */  addiu      $t7, $sp, 0x54
    /* 2BEFAC 802DCB7C 27B90050 */  addiu      $t9, $sp, 0x50
    /* 2BEFB0 802DCB80 AFB90018 */  sw         $t9, 0x18($sp)
    /* 2BEFB4 802DCB84 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 2BEFB8 802DCB88 AFB80010 */  sw         $t8, 0x10($sp)
    /* 2BEFBC 802DCB8C 2406FFCE */  addiu      $a2, $zero, -0x32
    /* 2BEFC0 802DCB90 0C04A10A */  jal        func_80128428_1373D8
    /* 2BEFC4 802DCB94 2407008A */   addiu     $a3, $zero, 0x8A
    /* 2BEFC8 802DCB98 1000000F */  b          .L802DCBD8_2BF008
    /* 2BEFCC 802DCB9C 24190005 */   addiu     $t9, $zero, 0x5
  .L802DCBA0_2BEFD0:
    /* 2BEFD0 802DCBA0 24010002 */  addiu      $at, $zero, 0x2
    /* 2BEFD4 802DCBA4 1441000B */  bne        $v0, $at, .L802DCBD4_2BF004
    /* 2BEFD8 802DCBA8 02002025 */   or        $a0, $s0, $zero
    /* 2BEFDC 802DCBAC 27AE0058 */  addiu      $t6, $sp, 0x58
    /* 2BEFE0 802DCBB0 27B80054 */  addiu      $t8, $sp, 0x54
    /* 2BEFE4 802DCBB4 27AF0050 */  addiu      $t7, $sp, 0x50
    /* 2BEFE8 802DCBB8 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 2BEFEC 802DCBBC AFB80014 */  sw         $t8, 0x14($sp)
    /* 2BEFF0 802DCBC0 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2BEFF4 802DCBC4 2405003C */  addiu      $a1, $zero, 0x3C
    /* 2BEFF8 802DCBC8 2406FFCE */  addiu      $a2, $zero, -0x32
    /* 2BEFFC 802DCBCC 0C04A10A */  jal        func_80128428_1373D8
    /* 2BF000 802DCBD0 2407008A */   addiu     $a3, $zero, 0x8A
  .L802DCBD4_2BF004:
    /* 2BF004 802DCBD4 24190005 */  addiu      $t9, $zero, 0x5
  .L802DCBD8_2BF008:
    /* 2BF008 802DCBD8 240E0028 */  addiu      $t6, $zero, 0x28
    /* 2BF00C 802DCBDC AFAE0018 */  sw         $t6, 0x18($sp)
    /* 2BF010 802DCBE0 AFB90010 */  sw         $t9, 0x10($sp)
    /* 2BF014 802DCBE4 241900E1 */  addiu      $t9, $zero, 0xE1
    /* 2BF018 802DCBE8 240E00E1 */  addiu      $t6, $zero, 0xE1
    /* 2BF01C 802DCBEC 241800C8 */  addiu      $t8, $zero, 0xC8
    /* 2BF020 802DCBF0 240F00E1 */  addiu      $t7, $zero, 0xE1
    /* 2BF024 802DCBF4 AFAF0020 */  sw         $t7, 0x20($sp)
    /* 2BF028 802DCBF8 AFB8001C */  sw         $t8, 0x1C($sp)
    /* 2BF02C 802DCBFC AFAE0028 */  sw         $t6, 0x28($sp)
    /* 2BF030 802DCC00 AFB90024 */  sw         $t9, 0x24($sp)
    /* 2BF034 802DCC04 87A4005A */  lh         $a0, 0x5A($sp)
    /* 2BF038 802DCC08 87A50056 */  lh         $a1, 0x56($sp)
    /* 2BF03C 802DCC0C 87A60052 */  lh         $a2, 0x52($sp)
    /* 2BF040 802DCC10 240700C8 */  addiu      $a3, $zero, 0xC8
    /* 2BF044 802DCC14 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 2BF048 802DCC18 AFA00014 */   sw        $zero, 0x14($sp)
    /* 2BF04C 802DCC1C 93B8004F */  lbu        $t8, 0x4F($sp)
  .L802DCC20_2BF050:
    /* 2BF050 802DCC20 24010002 */  addiu      $at, $zero, 0x2
    /* 2BF054 802DCC24 57010006 */  bnel       $t8, $at, .L802DCC40_2BF070
    /* 2BF058 802DCC28 8FBF003C */   lw        $ra, 0x3C($sp)
    /* 2BF05C 802DCC2C 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 2BF060 802DCC30 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 2BF064 802DCC34 01E1C824 */  and        $t9, $t7, $at
    /* 2BF068 802DCC38 AE190020 */  sw         $t9, 0x20($s0)
    /* 2BF06C 802DCC3C 8FBF003C */  lw         $ra, 0x3C($sp)
  .L802DCC40_2BF070:
    /* 2BF070 802DCC40 8FB00038 */  lw         $s0, 0x38($sp)
    /* 2BF074 802DCC44 27BD0088 */  addiu      $sp, $sp, 0x88
    /* 2BF078 802DCC48 03E00008 */  jr         $ra
    /* 2BF07C 802DCC4C 00000000 */   nop
endlabel func_802DCA14_2BEE44
