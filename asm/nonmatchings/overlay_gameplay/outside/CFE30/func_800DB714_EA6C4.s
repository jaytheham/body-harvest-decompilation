nonmatching func_800DB714_EA6C4, 0x388

glabel func_800DB714_EA6C4
    /* EA6C4 800DB714 3C068015 */  lui        $a2, %hi(D_80153BB8)
    /* EA6C8 800DB718 3C078015 */  lui        $a3, %hi(D_80153BC8)
    /* EA6CC 800DB71C 24E73BC8 */  addiu      $a3, $a3, %lo(D_80153BC8)
    /* EA6D0 800DB720 24C63BB8 */  addiu      $a2, $a2, %lo(D_80153BB8)
    /* EA6D4 800DB724 C4C40000 */  lwc1       $f4, 0x0($a2)
    /* EA6D8 800DB728 C4E60000 */  lwc1       $f6, 0x0($a3)
    /* EA6DC 800DB72C 3C058006 */  lui        $a1, %hi(D_8005BB34)
    /* EA6E0 800DB730 24A5BB34 */  addiu      $a1, $a1, %lo(D_8005BB34)
    /* EA6E4 800DB734 46062200 */  add.s      $f8, $f4, $f6
    /* EA6E8 800DB738 8CB80000 */  lw         $t8, 0x0($a1)
    /* EA6EC 800DB73C 3C088015 */  lui        $t0, %hi(D_80153BC4)
    /* EA6F0 800DB740 25083BC4 */  addiu      $t0, $t0, %lo(D_80153BC4)
    /* EA6F4 800DB744 4600428D */  trunc.w.s  $f10, $f8
    /* EA6F8 800DB748 3C098015 */  lui        $t1, %hi(D_80153BCC)
    /* EA6FC 800DB74C 25293BCC */  addiu      $t1, $t1, %lo(D_80153BCC)
    /* EA700 800DB750 3C0A8015 */  lui        $t2, %hi(D_80153BCD)
    /* EA704 800DB754 440F5000 */  mfc1       $t7, $f10
    /* EA708 800DB758 254A3BCD */  addiu      $t2, $t2, %lo(D_80153BCD)
    /* EA70C 800DB75C 3C0B8015 */  lui        $t3, %hi(D_80153BCE)
    /* EA710 800DB760 A70F0000 */  sh         $t7, 0x0($t8)
    /* EA714 800DB764 C4F20000 */  lwc1       $f18, 0x0($a3)
    /* EA718 800DB768 C4D00004 */  lwc1       $f16, 0x4($a2)
    /* EA71C 800DB76C 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA720 800DB770 256B3BCE */  addiu      $t3, $t3, %lo(D_80153BCE)
    /* EA724 800DB774 46128100 */  add.s      $f4, $f16, $f18
    /* EA728 800DB778 3C0C8006 */  lui        $t4, %hi(D_8005BB2C)
    /* EA72C 800DB77C 258CBB2C */  addiu      $t4, $t4, %lo(D_8005BB2C)
    /* EA730 800DB780 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* EA734 800DB784 4600218D */  trunc.w.s  $f6, $f4
    /* EA738 800DB788 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* EA73C 800DB78C 440D3000 */  mfc1       $t5, $f6
    /* EA740 800DB790 00000000 */  nop
    /* EA744 800DB794 A5CD0002 */  sh         $t5, 0x2($t6)
    /* EA748 800DB798 C4C80008 */  lwc1       $f8, 0x8($a2)
    /* EA74C 800DB79C 8CB90000 */  lw         $t9, 0x0($a1)
    /* EA750 800DB7A0 4600428D */  trunc.w.s  $f10, $f8
    /* EA754 800DB7A4 44185000 */  mfc1       $t8, $f10
    /* EA758 800DB7A8 00000000 */  nop
    /* EA75C 800DB7AC A7380004 */  sh         $t8, 0x4($t9)
    /* EA760 800DB7B0 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA764 800DB7B4 A5A00006 */  sh         $zero, 0x6($t5)
    /* EA768 800DB7B8 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA76C 800DB7BC A5C00008 */  sh         $zero, 0x8($t6)
    /* EA770 800DB7C0 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EA774 800DB7C4 A5E0000A */  sh         $zero, 0xA($t7)
    /* EA778 800DB7C8 8D180000 */  lw         $t8, 0x0($t0)
    /* EA77C 800DB7CC 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA780 800DB7D0 93190000 */  lbu        $t9, 0x0($t8)
    /* EA784 800DB7D4 A1B9000C */  sb         $t9, 0xC($t5)
    /* EA788 800DB7D8 8D0E0000 */  lw         $t6, 0x0($t0)
    /* EA78C 800DB7DC 8CB80000 */  lw         $t8, 0x0($a1)
    /* EA790 800DB7E0 91CF0001 */  lbu        $t7, 0x1($t6)
    /* EA794 800DB7E4 A30F000D */  sb         $t7, 0xD($t8)
    /* EA798 800DB7E8 8D190000 */  lw         $t9, 0x0($t0)
    /* EA79C 800DB7EC 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA7A0 800DB7F0 932D0002 */  lbu        $t5, 0x2($t9)
    /* EA7A4 800DB7F4 A1CD000E */  sb         $t5, 0xE($t6)
    /* EA7A8 800DB7F8 8CB80000 */  lw         $t8, 0x0($a1)
    /* EA7AC 800DB7FC 912F0000 */  lbu        $t7, 0x0($t1)
    /* EA7B0 800DB800 A30F000F */  sb         $t7, 0xF($t8)
    /* EA7B4 800DB804 C4F20000 */  lwc1       $f18, 0x0($a3)
    /* EA7B8 800DB808 C4D00000 */  lwc1       $f16, 0x0($a2)
    /* EA7BC 800DB80C 8CB90000 */  lw         $t9, 0x0($a1)
    /* EA7C0 800DB810 46128101 */  sub.s      $f4, $f16, $f18
    /* EA7C4 800DB814 272D0010 */  addiu      $t5, $t9, 0x10
    /* EA7C8 800DB818 ACAD0000 */  sw         $t5, 0x0($a1)
    /* EA7CC 800DB81C 4600218D */  trunc.w.s  $f6, $f4
    /* EA7D0 800DB820 440F3000 */  mfc1       $t7, $f6
    /* EA7D4 800DB824 00000000 */  nop
    /* EA7D8 800DB828 A5AF0000 */  sh         $t7, 0x0($t5)
    /* EA7DC 800DB82C C4EA0000 */  lwc1       $f10, 0x0($a3)
    /* EA7E0 800DB830 C4C80004 */  lwc1       $f8, 0x4($a2)
    /* EA7E4 800DB834 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA7E8 800DB838 460A4400 */  add.s      $f16, $f8, $f10
    /* EA7EC 800DB83C 4600848D */  trunc.w.s  $f18, $f16
    /* EA7F0 800DB840 440D9000 */  mfc1       $t5, $f18
    /* EA7F4 800DB844 00000000 */  nop
    /* EA7F8 800DB848 A5CD0002 */  sh         $t5, 0x2($t6)
    /* EA7FC 800DB84C C4C40008 */  lwc1       $f4, 0x8($a2)
    /* EA800 800DB850 8CB90000 */  lw         $t9, 0x0($a1)
    /* EA804 800DB854 4600218D */  trunc.w.s  $f6, $f4
    /* EA808 800DB858 44183000 */  mfc1       $t8, $f6
    /* EA80C 800DB85C 00000000 */  nop
    /* EA810 800DB860 A7380004 */  sh         $t8, 0x4($t9)
    /* EA814 800DB864 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA818 800DB868 A5A00006 */  sh         $zero, 0x6($t5)
    /* EA81C 800DB86C 914E0000 */  lbu        $t6, 0x0($t2)
    /* EA820 800DB870 8CB80000 */  lw         $t8, 0x0($a1)
    /* EA824 800DB874 000E7980 */  sll        $t7, $t6, 6
    /* EA828 800DB878 A70F0008 */  sh         $t7, 0x8($t8)
    /* EA82C 800DB87C 8CB90000 */  lw         $t9, 0x0($a1)
    /* EA830 800DB880 A720000A */  sh         $zero, 0xA($t9)
    /* EA834 800DB884 8D0D0000 */  lw         $t5, 0x0($t0)
    /* EA838 800DB888 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EA83C 800DB88C 91AE0000 */  lbu        $t6, 0x0($t5)
    /* EA840 800DB890 A1EE000C */  sb         $t6, 0xC($t7)
    /* EA844 800DB894 8D180000 */  lw         $t8, 0x0($t0)
    /* EA848 800DB898 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA84C 800DB89C 93190001 */  lbu        $t9, 0x1($t8)
    /* EA850 800DB8A0 A1B9000D */  sb         $t9, 0xD($t5)
    /* EA854 800DB8A4 8D0E0000 */  lw         $t6, 0x0($t0)
    /* EA858 800DB8A8 8CB80000 */  lw         $t8, 0x0($a1)
    /* EA85C 800DB8AC 91CF0002 */  lbu        $t7, 0x2($t6)
    /* EA860 800DB8B0 A30F000E */  sb         $t7, 0xE($t8)
    /* EA864 800DB8B4 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA868 800DB8B8 91390000 */  lbu        $t9, 0x0($t1)
    /* EA86C 800DB8BC A1B9000F */  sb         $t9, 0xF($t5)
    /* EA870 800DB8C0 C4EA0000 */  lwc1       $f10, 0x0($a3)
    /* EA874 800DB8C4 C4C80000 */  lwc1       $f8, 0x0($a2)
    /* EA878 800DB8C8 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA87C 800DB8CC 460A4401 */  sub.s      $f16, $f8, $f10
    /* EA880 800DB8D0 25CF0010 */  addiu      $t7, $t6, 0x10
    /* EA884 800DB8D4 ACAF0000 */  sw         $t7, 0x0($a1)
    /* EA888 800DB8D8 4600848D */  trunc.w.s  $f18, $f16
    /* EA88C 800DB8DC 44199000 */  mfc1       $t9, $f18
    /* EA890 800DB8E0 00000000 */  nop
    /* EA894 800DB8E4 A5F90000 */  sh         $t9, 0x0($t7)
    /* EA898 800DB8E8 C4E60000 */  lwc1       $f6, 0x0($a3)
    /* EA89C 800DB8EC C4C40004 */  lwc1       $f4, 0x4($a2)
    /* EA8A0 800DB8F0 8CB80000 */  lw         $t8, 0x0($a1)
    /* EA8A4 800DB8F4 46062201 */  sub.s      $f8, $f4, $f6
    /* EA8A8 800DB8F8 4600428D */  trunc.w.s  $f10, $f8
    /* EA8AC 800DB8FC 440F5000 */  mfc1       $t7, $f10
    /* EA8B0 800DB900 00000000 */  nop
    /* EA8B4 800DB904 A70F0002 */  sh         $t7, 0x2($t8)
    /* EA8B8 800DB908 C4D00008 */  lwc1       $f16, 0x8($a2)
    /* EA8BC 800DB90C 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA8C0 800DB910 4600848D */  trunc.w.s  $f18, $f16
    /* EA8C4 800DB914 440D9000 */  mfc1       $t5, $f18
    /* EA8C8 800DB918 00000000 */  nop
    /* EA8CC 800DB91C A5CD0004 */  sh         $t5, 0x4($t6)
    /* EA8D0 800DB920 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EA8D4 800DB924 A5E00006 */  sh         $zero, 0x6($t7)
    /* EA8D8 800DB928 91580000 */  lbu        $t8, 0x0($t2)
    /* EA8DC 800DB92C 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA8E0 800DB930 0018C980 */  sll        $t9, $t8, 6
    /* EA8E4 800DB934 A5B90008 */  sh         $t9, 0x8($t5)
    /* EA8E8 800DB938 916E0000 */  lbu        $t6, 0x0($t3)
    /* EA8EC 800DB93C 8CB80000 */  lw         $t8, 0x0($a1)
    /* EA8F0 800DB940 000E7980 */  sll        $t7, $t6, 6
    /* EA8F4 800DB944 A70F000A */  sh         $t7, 0xA($t8)
    /* EA8F8 800DB948 8D190000 */  lw         $t9, 0x0($t0)
    /* EA8FC 800DB94C 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA900 800DB950 932D0000 */  lbu        $t5, 0x0($t9)
    /* EA904 800DB954 A1CD000C */  sb         $t5, 0xC($t6)
    /* EA908 800DB958 8D0F0000 */  lw         $t7, 0x0($t0)
    /* EA90C 800DB95C 8CB90000 */  lw         $t9, 0x0($a1)
    /* EA910 800DB960 91F80001 */  lbu        $t8, 0x1($t7)
    /* EA914 800DB964 A338000D */  sb         $t8, 0xD($t9)
    /* EA918 800DB968 8D0D0000 */  lw         $t5, 0x0($t0)
    /* EA91C 800DB96C 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EA920 800DB970 91AE0002 */  lbu        $t6, 0x2($t5)
    /* EA924 800DB974 A1EE000E */  sb         $t6, 0xE($t7)
    /* EA928 800DB978 8CB90000 */  lw         $t9, 0x0($a1)
    /* EA92C 800DB97C 91380000 */  lbu        $t8, 0x0($t1)
    /* EA930 800DB980 A338000F */  sb         $t8, 0xF($t9)
    /* EA934 800DB984 C4E60000 */  lwc1       $f6, 0x0($a3)
    /* EA938 800DB988 C4C40000 */  lwc1       $f4, 0x0($a2)
    /* EA93C 800DB98C 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA940 800DB990 46062200 */  add.s      $f8, $f4, $f6
    /* EA944 800DB994 25AE0010 */  addiu      $t6, $t5, 0x10
    /* EA948 800DB998 ACAE0000 */  sw         $t6, 0x0($a1)
    /* EA94C 800DB99C 4600428D */  trunc.w.s  $f10, $f8
    /* EA950 800DB9A0 44185000 */  mfc1       $t8, $f10
    /* EA954 800DB9A4 00000000 */  nop
    /* EA958 800DB9A8 A5D80000 */  sh         $t8, 0x0($t6)
    /* EA95C 800DB9AC C4F20000 */  lwc1       $f18, 0x0($a3)
    /* EA960 800DB9B0 C4D00004 */  lwc1       $f16, 0x4($a2)
    /* EA964 800DB9B4 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EA968 800DB9B8 46128101 */  sub.s      $f4, $f16, $f18
    /* EA96C 800DB9BC 4600218D */  trunc.w.s  $f6, $f4
    /* EA970 800DB9C0 440E3000 */  mfc1       $t6, $f6
    /* EA974 800DB9C4 00000000 */  nop
    /* EA978 800DB9C8 A5EE0002 */  sh         $t6, 0x2($t7)
    /* EA97C 800DB9CC C4C80008 */  lwc1       $f8, 0x8($a2)
    /* EA980 800DB9D0 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA984 800DB9D4 4600428D */  trunc.w.s  $f10, $f8
    /* EA988 800DB9D8 44195000 */  mfc1       $t9, $f10
    /* EA98C 800DB9DC 00000000 */  nop
    /* EA990 800DB9E0 A5B90004 */  sh         $t9, 0x4($t5)
    /* EA994 800DB9E4 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA998 800DB9E8 A5C00006 */  sh         $zero, 0x6($t6)
    /* EA99C 800DB9EC 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EA9A0 800DB9F0 A5E00008 */  sh         $zero, 0x8($t7)
    /* EA9A4 800DB9F4 91780000 */  lbu        $t8, 0x0($t3)
    /* EA9A8 800DB9F8 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EA9AC 800DB9FC 0018C980 */  sll        $t9, $t8, 6
    /* EA9B0 800DBA00 A5B9000A */  sh         $t9, 0xA($t5)
    /* EA9B4 800DBA04 8D0E0000 */  lw         $t6, 0x0($t0)
    /* EA9B8 800DBA08 8CB80000 */  lw         $t8, 0x0($a1)
    /* EA9BC 800DBA0C 91CF0000 */  lbu        $t7, 0x0($t6)
    /* EA9C0 800DBA10 A30F000C */  sb         $t7, 0xC($t8)
    /* EA9C4 800DBA14 8D190000 */  lw         $t9, 0x0($t0)
    /* EA9C8 800DBA18 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA9CC 800DBA1C 932D0001 */  lbu        $t5, 0x1($t9)
    /* EA9D0 800DBA20 A1CD000D */  sb         $t5, 0xD($t6)
    /* EA9D4 800DBA24 8D0F0000 */  lw         $t7, 0x0($t0)
    /* EA9D8 800DBA28 8CB90000 */  lw         $t9, 0x0($a1)
    /* EA9DC 800DBA2C 91F80002 */  lbu        $t8, 0x2($t7)
    /* EA9E0 800DBA30 A338000E */  sb         $t8, 0xE($t9)
    /* EA9E4 800DBA34 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EA9E8 800DBA38 912D0000 */  lbu        $t5, 0x0($t1)
    /* EA9EC 800DBA3C A1CD000F */  sb         $t5, 0xF($t6)
    /* EA9F0 800DBA40 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EA9F4 800DBA44 8D830000 */  lw         $v1, 0x0($t4)
    /* EA9F8 800DBA48 3C0D0400 */  lui        $t5, (0x400103F >> 16)
    /* EA9FC 800DBA4C 25F80010 */  addiu      $t8, $t7, 0x10
    /* EAA00 800DBA50 24790008 */  addiu      $t9, $v1, 0x8
    /* EAA04 800DBA54 ACB80000 */  sw         $t8, 0x0($a1)
    /* EAA08 800DBA58 AD990000 */  sw         $t9, 0x0($t4)
    /* EAA0C 800DBA5C 35AD103F */  ori        $t5, $t5, (0x400103F & 0xFFFF)
    /* EAA10 800DBA60 AC6D0000 */  sw         $t5, 0x0($v1)
    /* EAA14 800DBA64 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EAA18 800DBA68 3C0DB100 */  lui        $t5, (0xB1000206 >> 16)
    /* EAA1C 800DBA6C 35AD0206 */  ori        $t5, $t5, (0xB1000206 & 0xFFFF)
    /* EAA20 800DBA70 25CFFFC0 */  addiu      $t7, $t6, -0x40
    /* EAA24 800DBA74 01E1C024 */  and        $t8, $t7, $at
    /* EAA28 800DBA78 AC780004 */  sw         $t8, 0x4($v1)
    /* EAA2C 800DBA7C 8D830000 */  lw         $v1, 0x0($t4)
    /* EAA30 800DBA80 3C0E0006 */  lui        $t6, (0x60204 >> 16)
    /* EAA34 800DBA84 35CE0204 */  ori        $t6, $t6, (0x60204 & 0xFFFF)
    /* EAA38 800DBA88 24790008 */  addiu      $t9, $v1, 0x8
    /* EAA3C 800DBA8C AD990000 */  sw         $t9, 0x0($t4)
    /* EAA40 800DBA90 AC6E0004 */  sw         $t6, 0x4($v1)
    /* EAA44 800DBA94 03E00008 */  jr         $ra
    /* EAA48 800DBA98 AC6D0000 */   sw        $t5, 0x0($v1)
endlabel func_800DB714_EA6C4
