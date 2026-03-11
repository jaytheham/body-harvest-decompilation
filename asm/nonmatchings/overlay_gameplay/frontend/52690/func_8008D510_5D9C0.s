nonmatching func_8008D510_5D9C0, 0x47C

glabel func_8008D510_5D9C0
    /* 5D9C0 8008D510 3C05800E */  lui        $a1, %hi(D_800E1D6B)
    /* 5D9C4 8008D514 24A51D6B */  addiu      $a1, $a1, %lo(D_800E1D6B)
    /* 5D9C8 8008D518 80AE0000 */  lb         $t6, 0x0($a1)
    /* 5D9CC 8008D51C 3C18800B */  lui        $t8, %hi(D_800AA7C0)
    /* 5D9D0 8008D520 3C01800E */  lui        $at, %hi(D_800DE128)
    /* 5D9D4 8008D524 000E7840 */  sll        $t7, $t6, 1
    /* 5D9D8 8008D528 030FC021 */  addu       $t8, $t8, $t7
    /* 5D9DC 8008D52C 8718A7C0 */  lh         $t8, %lo(D_800AA7C0)($t8)
    /* 5D9E0 8008D530 C42CE128 */  lwc1       $f12, %lo(D_800DE128)($at)
    /* 5D9E4 8008D534 3C04800E */  lui        $a0, %hi(D_800DE0C0)
    /* 5D9E8 8008D538 44982000 */  mtc1       $t8, $f4
    /* 5D9EC 8008D53C 2484E0C0 */  addiu      $a0, $a0, %lo(D_800DE0C0)
    /* 5D9F0 8008D540 C4860000 */  lwc1       $f6, 0x0($a0)
    /* 5D9F4 8008D544 468020A0 */  cvt.s.w    $f2, $f4
    /* 5D9F8 8008D548 C4880004 */  lwc1       $f8, 0x4($a0)
    /* 5D9FC 8008D54C C48A0008 */  lwc1       $f10, 0x8($a0)
    /* 5DA00 8008D550 27BDFFF0 */  addiu      $sp, $sp, -0x10
    /* 5DA04 8008D554 3C07800E */  lui        $a3, %hi(D_800DE118)
    /* 5DA08 8008D558 24E7E118 */  addiu      $a3, $a3, %lo(D_800DE118)
    /* 5DA0C 8008D55C 460C1000 */  add.s      $f0, $f2, $f12
    /* 5DA10 8008D560 3C068006 */  lui        $a2, %hi(D_8005BB34)
    /* 5DA14 8008D564 24C6BB34 */  addiu      $a2, $a2, %lo(D_8005BB34)
    /* 5DA18 8008D568 46026381 */  sub.s      $f14, $f12, $f2
    /* 5DA1C 8008D56C 46060402 */  mul.s      $f16, $f0, $f6
    /* 5DA20 8008D570 C486000C */  lwc1       $f6, 0xC($a0)
    /* 5DA24 8008D574 8CCE0000 */  lw         $t6, 0x0($a2)
    /* 5DA28 8008D578 46080482 */  mul.s      $f18, $f0, $f8
    /* 5DA2C 8008D57C 3C08800E */  lui        $t0, %hi(D_800DE124)
    /* 5DA30 8008D580 2508E124 */  addiu      $t0, $t0, %lo(D_800DE124)
    /* 5DA34 8008D584 460A0102 */  mul.s      $f4, $f0, $f10
    /* 5DA38 8008D588 C48A0010 */  lwc1       $f10, 0x10($a0)
    /* 5DA3C 8008D58C 3C09800E */  lui        $t1, %hi(D_800DE12C)
    /* 5DA40 8008D590 46067202 */  mul.s      $f8, $f14, $f6
    /* 5DA44 8008D594 C4860014 */  lwc1       $f6, 0x14($a0)
    /* 5DA48 8008D598 2529E12C */  addiu      $t1, $t1, %lo(D_800DE12C)
    /* 5DA4C 8008D59C 3C0A800E */  lui        $t2, %hi(D_800DE12D)
    /* 5DA50 8008D5A0 E7A40000 */  swc1       $f4, 0x0($sp)
    /* 5DA54 8008D5A4 460A7102 */  mul.s      $f4, $f14, $f10
    /* 5DA58 8008D5A8 C4EA0000 */  lwc1       $f10, 0x0($a3)
    /* 5DA5C 8008D5AC E7A80004 */  swc1       $f8, 0x4($sp)
    /* 5DA60 8008D5B0 46067202 */  mul.s      $f8, $f14, $f6
    /* 5DA64 8008D5B4 254AE12D */  addiu      $t2, $t2, %lo(D_800DE12D)
    /* 5DA68 8008D5B8 3C0B800E */  lui        $t3, %hi(D_800DE12E)
    /* 5DA6C 8008D5BC 256BE12E */  addiu      $t3, $t3, %lo(D_800DE12E)
    /* 5DA70 8008D5C0 E7A40008 */  swc1       $f4, 0x8($sp)
    /* 5DA74 8008D5C4 46105100 */  add.s      $f4, $f10, $f16
    /* 5DA78 8008D5C8 3C0C8006 */  lui        $t4, %hi(D_8005BB2C)
    /* 5DA7C 8008D5CC E7A8000C */  swc1       $f8, 0xC($sp)
    /* 5DA80 8008D5D0 258CBB2C */  addiu      $t4, $t4, %lo(D_8005BB2C)
    /* 5DA84 8008D5D4 4600218D */  trunc.w.s  $f6, $f4
    /* 5DA88 8008D5D8 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 5DA8C 8008D5DC 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 5DA90 8008D5E0 440D3000 */  mfc1       $t5, $f6
    /* 5DA94 8008D5E4 00000000 */  nop
    /* 5DA98 8008D5E8 A5CD0000 */  sh         $t5, 0x0($t6)
    /* 5DA9C 8008D5EC C4E80004 */  lwc1       $f8, 0x4($a3)
    /* 5DAA0 8008D5F0 8CD90000 */  lw         $t9, 0x0($a2)
    /* 5DAA4 8008D5F4 46124280 */  add.s      $f10, $f8, $f18
    /* 5DAA8 8008D5F8 4600510D */  trunc.w.s  $f4, $f10
    /* 5DAAC 8008D5FC 44182000 */  mfc1       $t8, $f4
    /* 5DAB0 8008D600 00000000 */  nop
    /* 5DAB4 8008D604 A7380002 */  sh         $t8, 0x2($t9)
    /* 5DAB8 8008D608 C4E60008 */  lwc1       $f6, 0x8($a3)
    /* 5DABC 8008D60C C7A80000 */  lwc1       $f8, 0x0($sp)
    /* 5DAC0 8008D610 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 5DAC4 8008D614 46083280 */  add.s      $f10, $f6, $f8
    /* 5DAC8 8008D618 4600510D */  trunc.w.s  $f4, $f10
    /* 5DACC 8008D61C 440E2000 */  mfc1       $t6, $f4
    /* 5DAD0 8008D620 00000000 */  nop
    /* 5DAD4 8008D624 A5EE0004 */  sh         $t6, 0x4($t7)
    /* 5DAD8 8008D628 8CD80000 */  lw         $t8, 0x0($a2)
    /* 5DADC 8008D62C A7000006 */  sh         $zero, 0x6($t8)
    /* 5DAE0 8008D630 8CD90000 */  lw         $t9, 0x0($a2)
    /* 5DAE4 8008D634 A7200008 */  sh         $zero, 0x8($t9)
    /* 5DAE8 8008D638 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 5DAEC 8008D63C A5A0000A */  sh         $zero, 0xA($t5)
    /* 5DAF0 8008D640 8D0E0000 */  lw         $t6, 0x0($t0)
    /* 5DAF4 8008D644 8CD80000 */  lw         $t8, 0x0($a2)
    /* 5DAF8 8008D648 91CF0000 */  lbu        $t7, 0x0($t6)
    /* 5DAFC 8008D64C A30F000C */  sb         $t7, 0xC($t8)
    /* 5DB00 8008D650 8D190000 */  lw         $t9, 0x0($t0)
    /* 5DB04 8008D654 8CCE0000 */  lw         $t6, 0x0($a2)
    /* 5DB08 8008D658 932D0001 */  lbu        $t5, 0x1($t9)
    /* 5DB0C 8008D65C A1CD000D */  sb         $t5, 0xD($t6)
    /* 5DB10 8008D660 8D0F0000 */  lw         $t7, 0x0($t0)
    /* 5DB14 8008D664 8CD90000 */  lw         $t9, 0x0($a2)
    /* 5DB18 8008D668 91F80002 */  lbu        $t8, 0x2($t7)
    /* 5DB1C 8008D66C A338000E */  sb         $t8, 0xE($t9)
    /* 5DB20 8008D670 8CCE0000 */  lw         $t6, 0x0($a2)
    /* 5DB24 8008D674 912D0000 */  lbu        $t5, 0x0($t1)
    /* 5DB28 8008D678 A1CD000F */  sb         $t5, 0xF($t6)
    /* 5DB2C 8008D67C C7A80004 */  lwc1       $f8, 0x4($sp)
    /* 5DB30 8008D680 C4E60000 */  lwc1       $f6, 0x0($a3)
    /* 5DB34 8008D684 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 5DB38 8008D688 46083280 */  add.s      $f10, $f6, $f8
    /* 5DB3C 8008D68C 25F80010 */  addiu      $t8, $t7, 0x10
    /* 5DB40 8008D690 ACD80000 */  sw         $t8, 0x0($a2)
    /* 5DB44 8008D694 4600510D */  trunc.w.s  $f4, $f10
    /* 5DB48 8008D698 440D2000 */  mfc1       $t5, $f4
    /* 5DB4C 8008D69C 00000000 */  nop
    /* 5DB50 8008D6A0 A70D0000 */  sh         $t5, 0x0($t8)
    /* 5DB54 8008D6A4 C7A80008 */  lwc1       $f8, 0x8($sp)
    /* 5DB58 8008D6A8 C4E60004 */  lwc1       $f6, 0x4($a3)
    /* 5DB5C 8008D6AC 8CD90000 */  lw         $t9, 0x0($a2)
    /* 5DB60 8008D6B0 46083280 */  add.s      $f10, $f6, $f8
    /* 5DB64 8008D6B4 4600510D */  trunc.w.s  $f4, $f10
    /* 5DB68 8008D6B8 44182000 */  mfc1       $t8, $f4
    /* 5DB6C 8008D6BC 00000000 */  nop
    /* 5DB70 8008D6C0 A7380002 */  sh         $t8, 0x2($t9)
    /* 5DB74 8008D6C4 C7A8000C */  lwc1       $f8, 0xC($sp)
    /* 5DB78 8008D6C8 C4E60008 */  lwc1       $f6, 0x8($a3)
    /* 5DB7C 8008D6CC 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 5DB80 8008D6D0 46083280 */  add.s      $f10, $f6, $f8
    /* 5DB84 8008D6D4 4600510D */  trunc.w.s  $f4, $f10
    /* 5DB88 8008D6D8 440E2000 */  mfc1       $t6, $f4
    /* 5DB8C 8008D6DC 00000000 */  nop
    /* 5DB90 8008D6E0 A5EE0004 */  sh         $t6, 0x4($t7)
    /* 5DB94 8008D6E4 8CD80000 */  lw         $t8, 0x0($a2)
    /* 5DB98 8008D6E8 A7000006 */  sh         $zero, 0x6($t8)
    /* 5DB9C 8008D6EC 91590000 */  lbu        $t9, 0x0($t2)
    /* 5DBA0 8008D6F0 8CCE0000 */  lw         $t6, 0x0($a2)
    /* 5DBA4 8008D6F4 00196980 */  sll        $t5, $t9, 6
    /* 5DBA8 8008D6F8 A5CD0008 */  sh         $t5, 0x8($t6)
    /* 5DBAC 8008D6FC 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 5DBB0 8008D700 A5E0000A */  sh         $zero, 0xA($t7)
    /* 5DBB4 8008D704 8D180000 */  lw         $t8, 0x0($t0)
    /* 5DBB8 8008D708 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 5DBBC 8008D70C 93190000 */  lbu        $t9, 0x0($t8)
    /* 5DBC0 8008D710 A1B9000C */  sb         $t9, 0xC($t5)
    /* 5DBC4 8008D714 8D0E0000 */  lw         $t6, 0x0($t0)
    /* 5DBC8 8008D718 8CD80000 */  lw         $t8, 0x0($a2)
    /* 5DBCC 8008D71C 91CF0001 */  lbu        $t7, 0x1($t6)
    /* 5DBD0 8008D720 A30F000D */  sb         $t7, 0xD($t8)
    /* 5DBD4 8008D724 8D190000 */  lw         $t9, 0x0($t0)
    /* 5DBD8 8008D728 8CCE0000 */  lw         $t6, 0x0($a2)
    /* 5DBDC 8008D72C 932D0002 */  lbu        $t5, 0x2($t9)
    /* 5DBE0 8008D730 A1CD000E */  sb         $t5, 0xE($t6)
    /* 5DBE4 8008D734 8CD80000 */  lw         $t8, 0x0($a2)
    /* 5DBE8 8008D738 912F0000 */  lbu        $t7, 0x0($t1)
    /* 5DBEC 8008D73C A30F000F */  sb         $t7, 0xF($t8)
    /* 5DBF0 8008D740 C4E60000 */  lwc1       $f6, 0x0($a3)
    /* 5DBF4 8008D744 8CD90000 */  lw         $t9, 0x0($a2)
    /* 5DBF8 8008D748 46103201 */  sub.s      $f8, $f6, $f16
    /* 5DBFC 8008D74C 272D0010 */  addiu      $t5, $t9, 0x10
    /* 5DC00 8008D750 ACCD0000 */  sw         $t5, 0x0($a2)
    /* 5DC04 8008D754 4600428D */  trunc.w.s  $f10, $f8
    /* 5DC08 8008D758 440F5000 */  mfc1       $t7, $f10
    /* 5DC0C 8008D75C 00000000 */  nop
    /* 5DC10 8008D760 A5AF0000 */  sh         $t7, 0x0($t5)
    /* 5DC14 8008D764 C4E40004 */  lwc1       $f4, 0x4($a3)
    /* 5DC18 8008D768 8CCE0000 */  lw         $t6, 0x0($a2)
    /* 5DC1C 8008D76C 46122181 */  sub.s      $f6, $f4, $f18
    /* 5DC20 8008D770 4600320D */  trunc.w.s  $f8, $f6
    /* 5DC24 8008D774 440D4000 */  mfc1       $t5, $f8
    /* 5DC28 8008D778 00000000 */  nop
    /* 5DC2C 8008D77C A5CD0002 */  sh         $t5, 0x2($t6)
    /* 5DC30 8008D780 C4EA0008 */  lwc1       $f10, 0x8($a3)
    /* 5DC34 8008D784 C7A40000 */  lwc1       $f4, 0x0($sp)
    /* 5DC38 8008D788 8CD90000 */  lw         $t9, 0x0($a2)
    /* 5DC3C 8008D78C 46045181 */  sub.s      $f6, $f10, $f4
    /* 5DC40 8008D790 4600320D */  trunc.w.s  $f8, $f6
    /* 5DC44 8008D794 44184000 */  mfc1       $t8, $f8
    /* 5DC48 8008D798 00000000 */  nop
    /* 5DC4C 8008D79C A7380004 */  sh         $t8, 0x4($t9)
    /* 5DC50 8008D7A0 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 5DC54 8008D7A4 A5A00006 */  sh         $zero, 0x6($t5)
    /* 5DC58 8008D7A8 914E0000 */  lbu        $t6, 0x0($t2)
    /* 5DC5C 8008D7AC 8CD80000 */  lw         $t8, 0x0($a2)
    /* 5DC60 8008D7B0 000E7980 */  sll        $t7, $t6, 6
    /* 5DC64 8008D7B4 A70F0008 */  sh         $t7, 0x8($t8)
    /* 5DC68 8008D7B8 91790000 */  lbu        $t9, 0x0($t3)
    /* 5DC6C 8008D7BC 8CCE0000 */  lw         $t6, 0x0($a2)
    /* 5DC70 8008D7C0 00196980 */  sll        $t5, $t9, 6
    /* 5DC74 8008D7C4 A5CD000A */  sh         $t5, 0xA($t6)
    /* 5DC78 8008D7C8 8D0F0000 */  lw         $t7, 0x0($t0)
    /* 5DC7C 8008D7CC 8CD90000 */  lw         $t9, 0x0($a2)
    /* 5DC80 8008D7D0 91F80000 */  lbu        $t8, 0x0($t7)
    /* 5DC84 8008D7D4 A338000C */  sb         $t8, 0xC($t9)
    /* 5DC88 8008D7D8 8D0D0000 */  lw         $t5, 0x0($t0)
    /* 5DC8C 8008D7DC 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 5DC90 8008D7E0 91AE0001 */  lbu        $t6, 0x1($t5)
    /* 5DC94 8008D7E4 A1EE000D */  sb         $t6, 0xD($t7)
    /* 5DC98 8008D7E8 8D180000 */  lw         $t8, 0x0($t0)
    /* 5DC9C 8008D7EC 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 5DCA0 8008D7F0 93190002 */  lbu        $t9, 0x2($t8)
    /* 5DCA4 8008D7F4 A1B9000E */  sb         $t9, 0xE($t5)
    /* 5DCA8 8008D7F8 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 5DCAC 8008D7FC 912E0000 */  lbu        $t6, 0x0($t1)
    /* 5DCB0 8008D800 A1EE000F */  sb         $t6, 0xF($t7)
    /* 5DCB4 8008D804 C7A40004 */  lwc1       $f4, 0x4($sp)
    /* 5DCB8 8008D808 C4EA0000 */  lwc1       $f10, 0x0($a3)
    /* 5DCBC 8008D80C 8CD80000 */  lw         $t8, 0x0($a2)
    /* 5DCC0 8008D810 46045181 */  sub.s      $f6, $f10, $f4
    /* 5DCC4 8008D814 27190010 */  addiu      $t9, $t8, 0x10
    /* 5DCC8 8008D818 ACD90000 */  sw         $t9, 0x0($a2)
    /* 5DCCC 8008D81C 4600320D */  trunc.w.s  $f8, $f6
    /* 5DCD0 8008D820 440E4000 */  mfc1       $t6, $f8
    /* 5DCD4 8008D824 00000000 */  nop
    /* 5DCD8 8008D828 A72E0000 */  sh         $t6, 0x0($t9)
    /* 5DCDC 8008D82C C7A40008 */  lwc1       $f4, 0x8($sp)
    /* 5DCE0 8008D830 C4EA0004 */  lwc1       $f10, 0x4($a3)
    /* 5DCE4 8008D834 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 5DCE8 8008D838 46045181 */  sub.s      $f6, $f10, $f4
    /* 5DCEC 8008D83C 4600320D */  trunc.w.s  $f8, $f6
    /* 5DCF0 8008D840 44194000 */  mfc1       $t9, $f8
    /* 5DCF4 8008D844 00000000 */  nop
    /* 5DCF8 8008D848 A5B90002 */  sh         $t9, 0x2($t5)
    /* 5DCFC 8008D84C C7A4000C */  lwc1       $f4, 0xC($sp)
    /* 5DD00 8008D850 C4EA0008 */  lwc1       $f10, 0x8($a3)
    /* 5DD04 8008D854 8CD80000 */  lw         $t8, 0x0($a2)
    /* 5DD08 8008D858 46045181 */  sub.s      $f6, $f10, $f4
    /* 5DD0C 8008D85C 4600320D */  trunc.w.s  $f8, $f6
    /* 5DD10 8008D860 440F4000 */  mfc1       $t7, $f8
    /* 5DD14 8008D864 00000000 */  nop
    /* 5DD18 8008D868 A70F0004 */  sh         $t7, 0x4($t8)
    /* 5DD1C 8008D86C 8CD90000 */  lw         $t9, 0x0($a2)
    /* 5DD20 8008D870 A7200006 */  sh         $zero, 0x6($t9)
    /* 5DD24 8008D874 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 5DD28 8008D878 A5A00008 */  sh         $zero, 0x8($t5)
    /* 5DD2C 8008D87C 916E0000 */  lbu        $t6, 0x0($t3)
    /* 5DD30 8008D880 8CD80000 */  lw         $t8, 0x0($a2)
    /* 5DD34 8008D884 000E7980 */  sll        $t7, $t6, 6
    /* 5DD38 8008D888 A70F000A */  sh         $t7, 0xA($t8)
    /* 5DD3C 8008D88C 8D190000 */  lw         $t9, 0x0($t0)
    /* 5DD40 8008D890 8CCE0000 */  lw         $t6, 0x0($a2)
    /* 5DD44 8008D894 932D0000 */  lbu        $t5, 0x0($t9)
    /* 5DD48 8008D898 A1CD000C */  sb         $t5, 0xC($t6)
    /* 5DD4C 8008D89C 8D0F0000 */  lw         $t7, 0x0($t0)
    /* 5DD50 8008D8A0 8CD90000 */  lw         $t9, 0x0($a2)
    /* 5DD54 8008D8A4 91F80001 */  lbu        $t8, 0x1($t7)
    /* 5DD58 8008D8A8 A338000D */  sb         $t8, 0xD($t9)
    /* 5DD5C 8008D8AC 8D0D0000 */  lw         $t5, 0x0($t0)
    /* 5DD60 8008D8B0 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 5DD64 8008D8B4 91AE0002 */  lbu        $t6, 0x2($t5)
    /* 5DD68 8008D8B8 A1EE000E */  sb         $t6, 0xE($t7)
    /* 5DD6C 8008D8BC 8CD90000 */  lw         $t9, 0x0($a2)
    /* 5DD70 8008D8C0 91380000 */  lbu        $t8, 0x0($t1)
    /* 5DD74 8008D8C4 A338000F */  sb         $t8, 0xF($t9)
    /* 5DD78 8008D8C8 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 5DD7C 8008D8CC 8D830000 */  lw         $v1, 0x0($t4)
    /* 5DD80 8008D8D0 3C180400 */  lui        $t8, (0x400103F >> 16)
    /* 5DD84 8008D8D4 25AE0010 */  addiu      $t6, $t5, 0x10
    /* 5DD88 8008D8D8 246F0008 */  addiu      $t7, $v1, 0x8
    /* 5DD8C 8008D8DC ACCE0000 */  sw         $t6, 0x0($a2)
    /* 5DD90 8008D8E0 AD8F0000 */  sw         $t7, 0x0($t4)
    /* 5DD94 8008D8E4 3718103F */  ori        $t8, $t8, (0x400103F & 0xFFFF)
    /* 5DD98 8008D8E8 AC780000 */  sw         $t8, 0x0($v1)
    /* 5DD9C 8008D8EC 8CD90000 */  lw         $t9, 0x0($a2)
    /* 5DDA0 8008D8F0 3C18B100 */  lui        $t8, (0xB1000206 >> 16)
    /* 5DDA4 8008D8F4 3C06800E */  lui        $a2, %hi(D_800E1D6C)
    /* 5DDA8 8008D8F8 272DFFC0 */  addiu      $t5, $t9, -0x40
    /* 5DDAC 8008D8FC 01A17024 */  and        $t6, $t5, $at
    /* 5DDB0 8008D900 AC6E0004 */  sw         $t6, 0x4($v1)
    /* 5DDB4 8008D904 8D830000 */  lw         $v1, 0x0($t4)
    /* 5DDB8 8008D908 3C190006 */  lui        $t9, (0x60204 >> 16)
    /* 5DDBC 8008D90C 37390204 */  ori        $t9, $t9, (0x60204 & 0xFFFF)
    /* 5DDC0 8008D910 246F0008 */  addiu      $t7, $v1, 0x8
    /* 5DDC4 8008D914 AD8F0000 */  sw         $t7, 0x0($t4)
    /* 5DDC8 8008D918 37180206 */  ori        $t8, $t8, (0xB1000206 & 0xFFFF)
    /* 5DDCC 8008D91C 24C61D6C */  addiu      $a2, $a2, %lo(D_800E1D6C)
    /* 5DDD0 8008D920 AC780000 */  sw         $t8, 0x0($v1)
    /* 5DDD4 8008D924 AC790004 */  sw         $t9, 0x4($v1)
    /* 5DDD8 8008D928 90C40000 */  lbu        $a0, 0x0($a2)
    /* 5DDDC 8008D92C 24010001 */  addiu      $at, $zero, 0x1
    /* 5DDE0 8008D930 1480000B */  bnez       $a0, .L8008D960_5DE10
    /* 5DDE4 8008D934 00000000 */   nop
    /* 5DDE8 8008D938 80AD0000 */  lb         $t5, 0x0($a1)
    /* 5DDEC 8008D93C 2401000A */  addiu      $at, $zero, 0xA
    /* 5DDF0 8008D940 24180001 */  addiu      $t8, $zero, 0x1
    /* 5DDF4 8008D944 25AE0001 */  addiu      $t6, $t5, 0x1
    /* 5DDF8 8008D948 A0AE0000 */  sb         $t6, 0x0($a1)
    /* 5DDFC 8008D94C 80AF0000 */  lb         $t7, 0x0($a1)
    /* 5DE00 8008D950 15E1000C */  bne        $t7, $at, .L8008D984_5DE34
    /* 5DE04 8008D954 00000000 */   nop
    /* 5DE08 8008D958 1000000A */  b          .L8008D984_5DE34
    /* 5DE0C 8008D95C A0D80000 */   sb        $t8, 0x0($a2)
  .L8008D960_5DE10:
    /* 5DE10 8008D960 14810008 */  bne        $a0, $at, .L8008D984_5DE34
    /* 5DE14 8008D964 00000000 */   nop
    /* 5DE18 8008D968 80B90000 */  lb         $t9, 0x0($a1)
    /* 5DE1C 8008D96C 272DFFFF */  addiu      $t5, $t9, -0x1
    /* 5DE20 8008D970 A0AD0000 */  sb         $t5, 0x0($a1)
    /* 5DE24 8008D974 80AE0000 */  lb         $t6, 0x0($a1)
    /* 5DE28 8008D978 15C00002 */  bnez       $t6, .L8008D984_5DE34
    /* 5DE2C 8008D97C 00000000 */   nop
    /* 5DE30 8008D980 A0C00000 */  sb         $zero, 0x0($a2)
  .L8008D984_5DE34:
    /* 5DE34 8008D984 03E00008 */  jr         $ra
    /* 5DE38 8008D988 27BD0010 */   addiu     $sp, $sp, 0x10
endlabel func_8008D510_5D9C0
