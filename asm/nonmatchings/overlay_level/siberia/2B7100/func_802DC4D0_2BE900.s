nonmatching func_802DC4D0_2BE900, 0x544

glabel func_802DC4D0_2BE900
    /* 2BE900 802DC4D0 27BDFF68 */  addiu      $sp, $sp, -0x98
    /* 2BE904 802DC4D4 AFA40098 */  sw         $a0, 0x98($sp)
    /* 2BE908 802DC4D8 93AE009B */  lbu        $t6, 0x9B($sp)
    /* 2BE90C 802DC4DC 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BE910 802DC4E0 AFB00030 */  sw         $s0, 0x30($sp)
    /* 2BE914 802DC4E4 000E7880 */  sll        $t7, $t6, 2
    /* 2BE918 802DC4E8 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BE91C 802DC4EC 000F7900 */  sll        $t7, $t7, 4
    /* 2BE920 802DC4F0 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BE924 802DC4F4 01F88021 */  addu       $s0, $t7, $t8
    /* 2BE928 802DC4F8 8602000C */  lh         $v0, 0xC($s0)
    /* 2BE92C 802DC4FC 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 2BE930 802DC500 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 2BE934 802DC504 0002C900 */  sll        $t9, $v0, 4
    /* 2BE938 802DC508 01196021 */  addu       $t4, $t0, $t9
    /* 2BE93C 802DC50C 8185000C */  lb         $a1, 0xC($t4)
    /* 2BE940 802DC510 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 2BE944 802DC514 93A4009B */  lbu        $a0, 0x9B($sp)
    /* 2BE948 802DC518 00056900 */  sll        $t5, $a1, 4
    /* 2BE94C 802DC51C 010D7021 */  addu       $t6, $t0, $t5
    /* 2BE950 802DC520 81C6000D */  lb         $a2, 0xD($t6)
    /* 2BE954 802DC524 24050096 */  addiu      $a1, $zero, 0x96
    /* 2BE958 802DC528 3C01802E */  lui        $at, %hi(D_802E3054)
    /* 2BE95C 802DC52C 00067900 */  sll        $t7, $a2, 4
    /* 2BE960 802DC530 010F1821 */  addu       $v1, $t0, $t7
    /* 2BE964 802DC534 8067000D */  lb         $a3, 0xD($v1)
    /* 2BE968 802DC538 806B000C */  lb         $t3, 0xC($v1)
    /* 2BE96C 802DC53C 00003025 */  or         $a2, $zero, $zero
    /* 2BE970 802DC540 0007C100 */  sll        $t8, $a3, 4
    /* 2BE974 802DC544 01184821 */  addu       $t1, $t0, $t8
    /* 2BE978 802DC548 812C000D */  lb         $t4, 0xD($t1)
    /* 2BE97C 802DC54C 8139000C */  lb         $t9, 0xC($t1)
    /* 2BE980 802DC550 8E180020 */  lw         $t8, 0x20($s0)
    /* 2BE984 802DC554 A7AC0088 */  sh         $t4, 0x88($sp)
    /* 2BE988 802DC558 87AD0088 */  lh         $t5, 0x88($sp)
    /* 2BE98C 802DC55C A7B90090 */  sh         $t9, 0x90($sp)
    /* 2BE990 802DC560 0018CAC0 */  sll        $t9, $t8, 11
    /* 2BE994 802DC564 000D7100 */  sll        $t6, $t5, 4
    /* 2BE998 802DC568 010E7821 */  addu       $t7, $t0, $t6
    /* 2BE99C 802DC56C 072000EE */  bltz       $t9, .L802DC928_2BED58
    /* 2BE9A0 802DC570 81EA000D */   lb        $t2, 0xD($t7)
    /* 2BE9A4 802DC574 000B6100 */  sll        $t4, $t3, 4
    /* 2BE9A8 802DC578 010C1021 */  addu       $v0, $t0, $t4
    /* 2BE9AC 802DC57C 844D0000 */  lh         $t5, 0x0($v0)
    /* 2BE9B0 802DC580 846E0000 */  lh         $t6, 0x0($v1)
    /* 2BE9B4 802DC584 84590002 */  lh         $t9, 0x2($v0)
    /* 2BE9B8 802DC588 846C0002 */  lh         $t4, 0x2($v1)
    /* 2BE9BC 802DC58C 01AE2821 */  addu       $a1, $t5, $t6
    /* 2BE9C0 802DC590 00057C00 */  sll        $t7, $a1, 16
    /* 2BE9C4 802DC594 000F2C03 */  sra        $a1, $t7, 16
    /* 2BE9C8 802DC598 844F0004 */  lh         $t7, 0x4($v0)
    /* 2BE9CC 802DC59C 84780004 */  lh         $t8, 0x4($v1)
    /* 2BE9D0 802DC5A0 032C3021 */  addu       $a2, $t9, $t4
    /* 2BE9D4 802DC5A4 00066C00 */  sll        $t5, $a2, 16
    /* 2BE9D8 802DC5A8 01F83821 */  addu       $a3, $t7, $t8
    /* 2BE9DC 802DC5AC 000D3403 */  sra        $a2, $t5, 16
    /* 2BE9E0 802DC5B0 27AD0084 */  addiu      $t5, $sp, 0x84
    /* 2BE9E4 802DC5B4 0007CC00 */  sll        $t9, $a3, 16
    /* 2BE9E8 802DC5B8 27AF007C */  addiu      $t7, $sp, 0x7C
    /* 2BE9EC 802DC5BC 27AE0080 */  addiu      $t6, $sp, 0x80
    /* 2BE9F0 802DC5C0 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 2BE9F4 802DC5C4 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 2BE9F8 802DC5C8 00193C03 */  sra        $a3, $t9, 16
    /* 2BE9FC 802DC5CC AFAD0010 */  sw         $t5, 0x10($sp)
    /* 2BEA00 802DC5D0 02002025 */  or         $a0, $s0, $zero
    /* 2BEA04 802DC5D4 AFA90040 */  sw         $t1, 0x40($sp)
    /* 2BEA08 802DC5D8 0C04A10A */  jal        func_80128428_1373D8
    /* 2BEA0C 802DC5DC A7AB008C */   sh        $t3, 0x8C($sp)
    /* 2BEA10 802DC5E0 87A40086 */  lh         $a0, 0x86($sp)
    /* 2BEA14 802DC5E4 87A50082 */  lh         $a1, 0x82($sp)
    /* 2BEA18 802DC5E8 87A6007E */  lh         $a2, 0x7E($sp)
    /* 2BEA1C 802DC5EC 24070050 */  addiu      $a3, $zero, 0x50
    /* 2BEA20 802DC5F0 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2BEA24 802DC5F4 AFA00010 */   sw        $zero, 0x10($sp)
    /* 2BEA28 802DC5F8 86030006 */  lh         $v1, 0x6($s0)
    /* 2BEA2C 802DC5FC 34018000 */  ori        $at, $zero, 0x8000
    /* 2BEA30 802DC600 00611821 */  addu       $v1, $v1, $at
    /* 2BEA34 802DC604 3064FFFF */  andi       $a0, $v1, 0xFFFF
    /* 2BEA38 802DC608 0C007660 */  jal        sins
    /* 2BEA3C 802DC60C AFA40044 */   sw        $a0, 0x44($sp)
    /* 2BEA40 802DC610 44822000 */  mtc1       $v0, $f4
    /* 2BEA44 802DC614 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BEA48 802DC618 44815800 */  mtc1       $at, $f11
    /* 2BEA4C 802DC61C 468021A0 */  cvt.s.w    $f6, $f4
    /* 2BEA50 802DC620 44805000 */  mtc1       $zero, $f10
    /* 2BEA54 802DC624 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 2BEA58 802DC628 44819800 */  mtc1       $at, $f19
    /* 2BEA5C 802DC62C 44809000 */  mtc1       $zero, $f18
    /* 2BEA60 802DC630 8FA40044 */  lw         $a0, 0x44($sp)
    /* 2BEA64 802DC634 46003221 */  cvt.d.s    $f8, $f6
    /* 2BEA68 802DC638 462A4403 */  div.d      $f16, $f8, $f10
    /* 2BEA6C 802DC63C 46328102 */  mul.d      $f4, $f16, $f18
    /* 2BEA70 802DC640 462021A0 */  cvt.s.d    $f6, $f4
    /* 2BEA74 802DC644 0C007654 */  jal        coss
    /* 2BEA78 802DC648 E7A60058 */   swc1      $f6, 0x58($sp)
    /* 2BEA7C 802DC64C 44824000 */  mtc1       $v0, $f8
    /* 2BEA80 802DC650 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BEA84 802DC654 44819800 */  mtc1       $at, $f19
    /* 2BEA88 802DC658 468042A0 */  cvt.s.w    $f10, $f8
    /* 2BEA8C 802DC65C 44809000 */  mtc1       $zero, $f18
    /* 2BEA90 802DC660 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 2BEA94 802DC664 44813800 */  mtc1       $at, $f7
    /* 2BEA98 802DC668 44803000 */  mtc1       $zero, $f6
    /* 2BEA9C 802DC66C 93A4009B */  lbu        $a0, 0x9B($sp)
    /* 2BEAA0 802DC670 46005421 */  cvt.d.s    $f16, $f10
    /* 2BEAA4 802DC674 87A5008C */  lh         $a1, 0x8C($sp)
    /* 2BEAA8 802DC678 46328103 */  div.d      $f4, $f16, $f18
    /* 2BEAAC 802DC67C 46262202 */  mul.d      $f8, $f4, $f6
    /* 2BEAB0 802DC680 462042A0 */  cvt.s.d    $f10, $f8
    /* 2BEAB4 802DC684 0C02245B */  jal        func_8008916C_9811C
    /* 2BEAB8 802DC688 E7AA0054 */   swc1      $f10, 0x54($sp)
    /* 2BEABC 802DC68C 9219001A */  lbu        $t9, 0x1A($s0)
    /* 2BEAC0 802DC690 3C0D8025 */  lui        $t5, %hi(D_8025668C)
    /* 2BEAC4 802DC694 2418FFF8 */  addiu      $t8, $zero, -0x8
    /* 2BEAC8 802DC698 00196080 */  sll        $t4, $t9, 2
    /* 2BEACC 802DC69C 01996023 */  subu       $t4, $t4, $t9
    /* 2BEAD0 802DC6A0 000C6080 */  sll        $t4, $t4, 2
    /* 2BEAD4 802DC6A4 01996021 */  addu       $t4, $t4, $t9
    /* 2BEAD8 802DC6A8 000C60C0 */  sll        $t4, $t4, 3
    /* 2BEADC 802DC6AC 01AC6821 */  addu       $t5, $t5, $t4
    /* 2BEAE0 802DC6B0 85AD668C */  lh         $t5, %lo(D_8025668C)($t5)
    /* 2BEAE4 802DC6B4 240E0001 */  addiu      $t6, $zero, 0x1
    /* 2BEAE8 802DC6B8 AFAE001C */  sw         $t6, 0x1C($sp)
    /* 2BEAEC 802DC6BC AFB80010 */  sw         $t8, 0x10($sp)
    /* 2BEAF0 802DC6C0 87A40086 */  lh         $a0, 0x86($sp)
    /* 2BEAF4 802DC6C4 87A50082 */  lh         $a1, 0x82($sp)
    /* 2BEAF8 802DC6C8 87A6007E */  lh         $a2, 0x7E($sp)
    /* 2BEAFC 802DC6CC 24070040 */  addiu      $a3, $zero, 0x40
    /* 2BEB00 802DC6D0 AFA20018 */  sw         $v0, 0x18($sp)
    /* 2BEB04 802DC6D4 0C031E49 */  jal        func_800C7924_D68D4
    /* 2BEB08 802DC6D8 AFAD0014 */   sw        $t5, 0x14($sp)
    /* 2BEB0C 802DC6DC 860F0006 */  lh         $t7, 0x6($s0)
    /* 2BEB10 802DC6E0 24184000 */  addiu      $t8, $zero, 0x4000
    /* 2BEB14 802DC6E4 00023C00 */  sll        $a3, $v0, 16
    /* 2BEB18 802DC6E8 030F2023 */  subu       $a0, $t8, $t7
    /* 2BEB1C 802DC6EC 3099FFFF */  andi       $t9, $a0, 0xFFFF
    /* 2BEB20 802DC6F0 00076403 */  sra        $t4, $a3, 16
    /* 2BEB24 802DC6F4 A7A2004E */  sh         $v0, 0x4E($sp)
    /* 2BEB28 802DC6F8 01803825 */  or         $a3, $t4, $zero
    /* 2BEB2C 802DC6FC 03202025 */  or         $a0, $t9, $zero
    /* 2BEB30 802DC700 00002825 */  or         $a1, $zero, $zero
    /* 2BEB34 802DC704 0C03203C */  jal        func_800C80F0_D70A0
    /* 2BEB38 802DC708 00003025 */   or        $a2, $zero, $zero
    /* 2BEB3C 802DC70C C7B00058 */  lwc1       $f16, 0x58($sp)
    /* 2BEB40 802DC710 C7A40054 */  lwc1       $f4, 0x54($sp)
    /* 2BEB44 802DC714 2405000F */  addiu      $a1, $zero, 0xF
    /* 2BEB48 802DC718 4600848D */  trunc.w.s  $f18, $f16
    /* 2BEB4C 802DC71C 87A7004E */  lh         $a3, 0x4E($sp)
    /* 2BEB50 802DC720 4600218D */  trunc.w.s  $f6, $f4
    /* 2BEB54 802DC724 44189000 */  mfc1       $t8, $f18
    /* 2BEB58 802DC728 440E3000 */  mfc1       $t6, $f6
    /* 2BEB5C 802DC72C 00187E00 */  sll        $t7, $t8, 24
    /* 2BEB60 802DC730 000F2603 */  sra        $a0, $t7, 24
    /* 2BEB64 802DC734 000EC600 */  sll        $t8, $t6, 24
    /* 2BEB68 802DC738 0C032061 */  jal        func_800C8184_D7134
    /* 2BEB6C 802DC73C 00183603 */   sra       $a2, $t8, 24
    /* 2BEB70 802DC740 0C022384 */  jal        func_80088E10_97DC0
    /* 2BEB74 802DC744 87A4008C */   lh        $a0, 0x8C($sp)
    /* 2BEB78 802DC748 87B90090 */  lh         $t9, 0x90($sp)
    /* 2BEB7C 802DC74C 8FA30040 */  lw         $v1, 0x40($sp)
    /* 2BEB80 802DC750 3C0D8015 */  lui        $t5, %hi(D_8014DD50)
    /* 2BEB84 802DC754 25ADDD50 */  addiu      $t5, $t5, %lo(D_8014DD50)
    /* 2BEB88 802DC758 00196100 */  sll        $t4, $t9, 4
    /* 2BEB8C 802DC75C 018D1021 */  addu       $v0, $t4, $t5
    /* 2BEB90 802DC760 844E0000 */  lh         $t6, 0x0($v0)
    /* 2BEB94 802DC764 84780000 */  lh         $t8, 0x0($v1)
    /* 2BEB98 802DC768 844C0002 */  lh         $t4, 0x2($v0)
    /* 2BEB9C 802DC76C 846D0002 */  lh         $t5, 0x2($v1)
    /* 2BEBA0 802DC770 01D82821 */  addu       $a1, $t6, $t8
    /* 2BEBA4 802DC774 00057C00 */  sll        $t7, $a1, 16
    /* 2BEBA8 802DC778 000F2C03 */  sra        $a1, $t7, 16
    /* 2BEBAC 802DC77C 844F0004 */  lh         $t7, 0x4($v0)
    /* 2BEBB0 802DC780 84790004 */  lh         $t9, 0x4($v1)
    /* 2BEBB4 802DC784 018D3021 */  addu       $a2, $t4, $t5
    /* 2BEBB8 802DC788 00067400 */  sll        $t6, $a2, 16
    /* 2BEBBC 802DC78C 01F93821 */  addu       $a3, $t7, $t9
    /* 2BEBC0 802DC790 000E3403 */  sra        $a2, $t6, 16
    /* 2BEBC4 802DC794 27AE0084 */  addiu      $t6, $sp, 0x84
    /* 2BEBC8 802DC798 00076400 */  sll        $t4, $a3, 16
    /* 2BEBCC 802DC79C 27AF007C */  addiu      $t7, $sp, 0x7C
    /* 2BEBD0 802DC7A0 27B80080 */  addiu      $t8, $sp, 0x80
    /* 2BEBD4 802DC7A4 AFB80014 */  sw         $t8, 0x14($sp)
    /* 2BEBD8 802DC7A8 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 2BEBDC 802DC7AC 000C3C03 */  sra        $a3, $t4, 16
    /* 2BEBE0 802DC7B0 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2BEBE4 802DC7B4 0C04A10A */  jal        func_80128428_1373D8
    /* 2BEBE8 802DC7B8 02002025 */   or        $a0, $s0, $zero
    /* 2BEBEC 802DC7BC 87A40086 */  lh         $a0, 0x86($sp)
    /* 2BEBF0 802DC7C0 87A50082 */  lh         $a1, 0x82($sp)
    /* 2BEBF4 802DC7C4 87A6007E */  lh         $a2, 0x7E($sp)
    /* 2BEBF8 802DC7C8 24070050 */  addiu      $a3, $zero, 0x50
    /* 2BEBFC 802DC7CC 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2BEC00 802DC7D0 AFA00010 */   sw        $zero, 0x10($sp)
    /* 2BEC04 802DC7D4 86030006 */  lh         $v1, 0x6($s0)
    /* 2BEC08 802DC7D8 3064FFFF */  andi       $a0, $v1, 0xFFFF
    /* 2BEC0C 802DC7DC 0C007660 */  jal        sins
    /* 2BEC10 802DC7E0 AFA40044 */   sw        $a0, 0x44($sp)
    /* 2BEC14 802DC7E4 44824000 */  mtc1       $v0, $f8
    /* 2BEC18 802DC7E8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BEC1C 802DC7EC 44819800 */  mtc1       $at, $f19
    /* 2BEC20 802DC7F0 468042A0 */  cvt.s.w    $f10, $f8
    /* 2BEC24 802DC7F4 44809000 */  mtc1       $zero, $f18
    /* 2BEC28 802DC7F8 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 2BEC2C 802DC7FC 44813800 */  mtc1       $at, $f7
    /* 2BEC30 802DC800 44803000 */  mtc1       $zero, $f6
    /* 2BEC34 802DC804 8FA40044 */  lw         $a0, 0x44($sp)
    /* 2BEC38 802DC808 46005421 */  cvt.d.s    $f16, $f10
    /* 2BEC3C 802DC80C 46328103 */  div.d      $f4, $f16, $f18
    /* 2BEC40 802DC810 46262202 */  mul.d      $f8, $f4, $f6
    /* 2BEC44 802DC814 462042A0 */  cvt.s.d    $f10, $f8
    /* 2BEC48 802DC818 0C007654 */  jal        coss
    /* 2BEC4C 802DC81C E7AA0058 */   swc1      $f10, 0x58($sp)
    /* 2BEC50 802DC820 44828000 */  mtc1       $v0, $f16
    /* 2BEC54 802DC824 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BEC58 802DC828 44813800 */  mtc1       $at, $f7
    /* 2BEC5C 802DC82C 468084A0 */  cvt.s.w    $f18, $f16
    /* 2BEC60 802DC830 44803000 */  mtc1       $zero, $f6
    /* 2BEC64 802DC834 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 2BEC68 802DC838 44815800 */  mtc1       $at, $f11
    /* 2BEC6C 802DC83C 44805000 */  mtc1       $zero, $f10
    /* 2BEC70 802DC840 93A4009B */  lbu        $a0, 0x9B($sp)
    /* 2BEC74 802DC844 46009121 */  cvt.d.s    $f4, $f18
    /* 2BEC78 802DC848 87A50090 */  lh         $a1, 0x90($sp)
    /* 2BEC7C 802DC84C 46262203 */  div.d      $f8, $f4, $f6
    /* 2BEC80 802DC850 462A4402 */  mul.d      $f16, $f8, $f10
    /* 2BEC84 802DC854 462084A0 */  cvt.s.d    $f18, $f16
    /* 2BEC88 802DC858 0C02245B */  jal        func_8008916C_9811C
    /* 2BEC8C 802DC85C E7B20054 */   swc1      $f18, 0x54($sp)
    /* 2BEC90 802DC860 920C001A */  lbu        $t4, 0x1A($s0)
    /* 2BEC94 802DC864 3C0E8025 */  lui        $t6, %hi(D_8025668C)
    /* 2BEC98 802DC868 2419FFF8 */  addiu      $t9, $zero, -0x8
    /* 2BEC9C 802DC86C 000C6880 */  sll        $t5, $t4, 2
    /* 2BECA0 802DC870 01AC6823 */  subu       $t5, $t5, $t4
    /* 2BECA4 802DC874 000D6880 */  sll        $t5, $t5, 2
    /* 2BECA8 802DC878 01AC6821 */  addu       $t5, $t5, $t4
    /* 2BECAC 802DC87C 000D68C0 */  sll        $t5, $t5, 3
    /* 2BECB0 802DC880 01CD7021 */  addu       $t6, $t6, $t5
    /* 2BECB4 802DC884 85CE668C */  lh         $t6, %lo(D_8025668C)($t6)
    /* 2BECB8 802DC888 24180001 */  addiu      $t8, $zero, 0x1
    /* 2BECBC 802DC88C AFB8001C */  sw         $t8, 0x1C($sp)
    /* 2BECC0 802DC890 AFB90010 */  sw         $t9, 0x10($sp)
    /* 2BECC4 802DC894 87A40086 */  lh         $a0, 0x86($sp)
    /* 2BECC8 802DC898 87A50082 */  lh         $a1, 0x82($sp)
    /* 2BECCC 802DC89C 87A6007E */  lh         $a2, 0x7E($sp)
    /* 2BECD0 802DC8A0 24070040 */  addiu      $a3, $zero, 0x40
    /* 2BECD4 802DC8A4 AFA20018 */  sw         $v0, 0x18($sp)
    /* 2BECD8 802DC8A8 0C031E49 */  jal        func_800C7924_D68D4
    /* 2BECDC 802DC8AC AFAE0014 */   sw        $t6, 0x14($sp)
    /* 2BECE0 802DC8B0 860F0006 */  lh         $t7, 0x6($s0)
    /* 2BECE4 802DC8B4 24194000 */  addiu      $t9, $zero, 0x4000
    /* 2BECE8 802DC8B8 00023C00 */  sll        $a3, $v0, 16
    /* 2BECEC 802DC8BC 032F2023 */  subu       $a0, $t9, $t7
    /* 2BECF0 802DC8C0 308CFFFF */  andi       $t4, $a0, 0xFFFF
    /* 2BECF4 802DC8C4 00076C03 */  sra        $t5, $a3, 16
    /* 2BECF8 802DC8C8 A7A2004E */  sh         $v0, 0x4E($sp)
    /* 2BECFC 802DC8CC 01A03825 */  or         $a3, $t5, $zero
    /* 2BED00 802DC8D0 01802025 */  or         $a0, $t4, $zero
    /* 2BED04 802DC8D4 00002825 */  or         $a1, $zero, $zero
    /* 2BED08 802DC8D8 0C03203C */  jal        func_800C80F0_D70A0
    /* 2BED0C 802DC8DC 00003025 */   or        $a2, $zero, $zero
    /* 2BED10 802DC8E0 C7A40058 */  lwc1       $f4, 0x58($sp)
    /* 2BED14 802DC8E4 C7A80054 */  lwc1       $f8, 0x54($sp)
    /* 2BED18 802DC8E8 2405000F */  addiu      $a1, $zero, 0xF
    /* 2BED1C 802DC8EC 4600218D */  trunc.w.s  $f6, $f4
    /* 2BED20 802DC8F0 87A7004E */  lh         $a3, 0x4E($sp)
    /* 2BED24 802DC8F4 4600428D */  trunc.w.s  $f10, $f8
    /* 2BED28 802DC8F8 44193000 */  mfc1       $t9, $f6
    /* 2BED2C 802DC8FC 44185000 */  mfc1       $t8, $f10
    /* 2BED30 802DC900 00197E00 */  sll        $t7, $t9, 24
    /* 2BED34 802DC904 000F2603 */  sra        $a0, $t7, 24
    /* 2BED38 802DC908 0018CE00 */  sll        $t9, $t8, 24
    /* 2BED3C 802DC90C 0C032061 */  jal        func_800C8184_D7134
    /* 2BED40 802DC910 00193603 */   sra       $a2, $t9, 24
    /* 2BED44 802DC914 0C022384 */  jal        func_80088E10_97DC0
    /* 2BED48 802DC918 87A40090 */   lh        $a0, 0x90($sp)
    /* 2BED4C 802DC91C 240C0028 */  addiu      $t4, $zero, 0x28
    /* 2BED50 802DC920 10000037 */  b          .L802DCA00_2BEE30
    /* 2BED54 802DC924 A60C002C */   sh        $t4, 0x2C($s0)
  .L802DC928_2BED58:
    /* 2BED58 802DC928 C4303054 */  lwc1       $f16, %lo(D_802E3054)($at)
    /* 2BED5C 802DC92C 240D1F40 */  addiu      $t5, $zero, 0x1F40
    /* 2BED60 802DC930 240EEC78 */  addiu      $t6, $zero, -0x1388
    /* 2BED64 802DC934 241809C4 */  addiu      $t8, $zero, 0x9C4
    /* 2BED68 802DC938 AFB8001C */  sw         $t8, 0x1C($sp)
    /* 2BED6C 802DC93C AFAE0018 */  sw         $t6, 0x18($sp)
    /* 2BED70 802DC940 AFAD0014 */  sw         $t5, 0x14($sp)
    /* 2BED74 802DC944 87A70088 */  lh         $a3, 0x88($sp)
    /* 2BED78 802DC948 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 2BED7C 802DC94C 0C0B6E36 */  jal        func_802DB8D8_2BDD08
    /* 2BED80 802DC950 E7B00020 */   swc1      $f16, 0x20($sp)
    /* 2BED84 802DC954 8619002C */  lh         $t9, 0x2C($s0)
    /* 2BED88 802DC958 24010001 */  addiu      $at, $zero, 0x1
    /* 2BED8C 802DC95C 57210029 */  bnel       $t9, $at, .L802DCA04_2BEE34
    /* 2BED90 802DC960 8FBF0034 */   lw        $ra, 0x34($sp)
    /* 2BED94 802DC964 920F001A */  lbu        $t7, 0x1A($s0)
    /* 2BED98 802DC968 3C0D8025 */  lui        $t5, %hi(D_802566D4)
    /* 2BED9C 802DC96C 000F6080 */  sll        $t4, $t7, 2
    /* 2BEDA0 802DC970 018F6023 */  subu       $t4, $t4, $t7
    /* 2BEDA4 802DC974 000C6080 */  sll        $t4, $t4, 2
    /* 2BEDA8 802DC978 018F6021 */  addu       $t4, $t4, $t7
    /* 2BEDAC 802DC97C 000C60C0 */  sll        $t4, $t4, 3
    /* 2BEDB0 802DC980 01AC6821 */  addu       $t5, $t5, $t4
    /* 2BEDB4 802DC984 8DAD66D4 */  lw         $t5, %lo(D_802566D4)($t5)
    /* 2BEDB8 802DC988 000D7180 */  sll        $t6, $t5, 6
    /* 2BEDBC 802DC98C 05C3000E */  bgezl      $t6, .L802DC9C8_2BEDF8
    /* 2BEDC0 802DC990 9218001A */   lbu       $t8, 0x1A($s0)
    /* 2BEDC4 802DC994 8202003C */  lb         $v0, 0x3C($s0)
    /* 2BEDC8 802DC998 240100FB */  addiu      $at, $zero, 0xFB
    /* 2BEDCC 802DC99C 50410004 */  beql       $v0, $at, .L802DC9B0_2BEDE0
    /* 2BEDD0 802DC9A0 8202003D */   lb        $v0, 0x3D($s0)
    /* 2BEDD4 802DC9A4 0C0334E4 */  jal        func_800CD390_DC340
    /* 2BEDD8 802DC9A8 304400FF */   andi      $a0, $v0, 0xFF
    /* 2BEDDC 802DC9AC 8202003D */  lb         $v0, 0x3D($s0)
  .L802DC9B0_2BEDE0:
    /* 2BEDE0 802DC9B0 240100FB */  addiu      $at, $zero, 0xFB
    /* 2BEDE4 802DC9B4 50410004 */  beql       $v0, $at, .L802DC9C8_2BEDF8
    /* 2BEDE8 802DC9B8 9218001A */   lbu       $t8, 0x1A($s0)
    /* 2BEDEC 802DC9BC 0C0334E4 */  jal        func_800CD390_DC340
    /* 2BEDF0 802DC9C0 304400FF */   andi      $a0, $v0, 0xFF
    /* 2BEDF4 802DC9C4 9218001A */  lbu        $t8, 0x1A($s0)
  .L802DC9C8_2BEDF8:
    /* 2BEDF8 802DC9C8 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 2BEDFC 802DC9CC 240F0006 */  addiu      $t7, $zero, 0x6
    /* 2BEE00 802DC9D0 0018C880 */  sll        $t9, $t8, 2
    /* 2BEE04 802DC9D4 0338C823 */  subu       $t9, $t9, $t8
    /* 2BEE08 802DC9D8 0019C880 */  sll        $t9, $t9, 2
    /* 2BEE0C 802DC9DC 0338C821 */  addu       $t9, $t9, $t8
    /* 2BEE10 802DC9E0 0019C8C0 */  sll        $t9, $t9, 3
    /* 2BEE14 802DC9E4 00F93821 */  addu       $a3, $a3, $t9
    /* 2BEE18 802DC9E8 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 2BEE1C 802DC9EC AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2BEE20 802DC9F0 86040000 */  lh         $a0, 0x0($s0)
    /* 2BEE24 802DC9F4 86050002 */  lh         $a1, 0x2($s0)
    /* 2BEE28 802DC9F8 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2BEE2C 802DC9FC 86060004 */   lh        $a2, 0x4($s0)
  .L802DCA00_2BEE30:
    /* 2BEE30 802DCA00 8FBF0034 */  lw         $ra, 0x34($sp)
  .L802DCA04_2BEE34:
    /* 2BEE34 802DCA04 8FB00030 */  lw         $s0, 0x30($sp)
    /* 2BEE38 802DCA08 27BD0098 */  addiu      $sp, $sp, 0x98
    /* 2BEE3C 802DCA0C 03E00008 */  jr         $ra
    /* 2BEE40 802DCA10 00000000 */   nop
endlabel func_802DC4D0_2BE900
