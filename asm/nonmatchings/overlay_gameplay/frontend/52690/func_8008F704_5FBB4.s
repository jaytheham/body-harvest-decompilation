nonmatching func_8008F704_5FBB4, 0x35C

glabel func_8008F704_5FBB4
    /* 5FBB4 8008F704 3C098006 */  lui        $t1, %hi(D_8005BB2C)
    /* 5FBB8 8008F708 2529BB2C */  addiu      $t1, $t1, %lo(D_8005BB2C)
    /* 5FBBC 8008F70C 8D230000 */  lw         $v1, 0x0($t1)
    /* 5FBC0 8008F710 AFA40000 */  sw         $a0, 0x0($sp)
    /* 5FBC4 8008F714 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
    /* 5FBC8 8008F718 246F0008 */  addiu      $t7, $v1, 0x8
    /* 5FBCC 8008F71C AD2F0000 */  sw         $t7, 0x0($t1)
    /* 5FBD0 8008F720 AC600004 */  sw         $zero, 0x4($v1)
    /* 5FBD4 8008F724 AC6A0000 */  sw         $t2, 0x0($v1)
    /* 5FBD8 8008F728 8D230000 */  lw         $v1, 0x0($t1)
    /* 5FBDC 8008F72C 3C19FCFF */  lui        $t9, (0xFCFFFFFF >> 16)
    /* 5FBE0 8008F730 3C0CFFFE */  lui        $t4, (0xFFFE793C >> 16)
    /* 5FBE4 8008F734 24780008 */  addiu      $t8, $v1, 0x8
    /* 5FBE8 8008F738 AD380000 */  sw         $t8, 0x0($t1)
    /* 5FBEC 8008F73C 358C793C */  ori        $t4, $t4, (0xFFFE793C & 0xFFFF)
    /* 5FBF0 8008F740 3739FFFF */  ori        $t9, $t9, (0xFCFFFFFF & 0xFFFF)
    /* 5FBF4 8008F744 AC790000 */  sw         $t9, 0x0($v1)
    /* 5FBF8 8008F748 AC6C0004 */  sw         $t4, 0x4($v1)
    /* 5FBFC 8008F74C 8D230000 */  lw         $v1, 0x0($t1)
    /* 5FC00 8008F750 308E00FF */  andi       $t6, $a0, 0xFF
    /* 5FC04 8008F754 01C02025 */  or         $a0, $t6, $zero
    /* 5FC08 8008F758 000E7080 */  sll        $t6, $t6, 2
    /* 5FC0C 8008F75C 246D0008 */  addiu      $t5, $v1, 0x8
    /* 5FC10 8008F760 AD2D0000 */  sw         $t5, 0x0($t1)
    /* 5FC14 8008F764 01C47023 */  subu       $t6, $t6, $a0
    /* 5FC18 8008F768 3C0F800B */  lui        $t7, %hi(D_800AA848)
    /* 5FC1C 8008F76C 25EFA848 */  addiu      $t7, $t7, %lo(D_800AA848)
    /* 5FC20 8008F770 000E7100 */  sll        $t6, $t6, 4
    /* 5FC24 8008F774 01CF3821 */  addu       $a3, $t6, $t7
    /* 5FC28 8008F778 AC600004 */  sw         $zero, 0x4($v1)
    /* 5FC2C 8008F77C AC6A0000 */  sw         $t2, 0x0($v1)
    /* 5FC30 8008F780 C4E40000 */  lwc1       $f4, 0x0($a3)
    /* 5FC34 8008F784 3C0B8006 */  lui        $t3, %hi(D_8005BB34)
    /* 5FC38 8008F788 256BBB34 */  addiu      $t3, $t3, %lo(D_8005BB34)
    /* 5FC3C 8008F78C 4600218D */  trunc.w.s  $f6, $f4
    /* 5FC40 8008F790 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 5FC44 8008F794 0004C100 */  sll        $t8, $a0, 4
    /* 5FC48 8008F798 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 5FC4C 8008F79C 44193000 */  mfc1       $t9, $f6
    /* 5FC50 8008F7A0 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 5FC54 8008F7A4 A5990000 */  sh         $t9, 0x0($t4)
    /* 5FC58 8008F7A8 C4E80004 */  lwc1       $f8, 0x4($a3)
    /* 5FC5C 8008F7AC 8D6F0000 */  lw         $t7, 0x0($t3)
    /* 5FC60 8008F7B0 4600428D */  trunc.w.s  $f10, $f8
    /* 5FC64 8008F7B4 440E5000 */  mfc1       $t6, $f10
    /* 5FC68 8008F7B8 00000000 */  nop
    /* 5FC6C 8008F7BC A5EE0002 */  sh         $t6, 0x2($t7)
    /* 5FC70 8008F7C0 C4F00008 */  lwc1       $f16, 0x8($a3)
    /* 5FC74 8008F7C4 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 5FC78 8008F7C8 4600848D */  trunc.w.s  $f18, $f16
    /* 5FC7C 8008F7CC 44199000 */  mfc1       $t9, $f18
    /* 5FC80 8008F7D0 00000000 */  nop
    /* 5FC84 8008F7D4 A5990004 */  sh         $t9, 0x4($t4)
    /* 5FC88 8008F7D8 8D6D0000 */  lw         $t5, 0x0($t3)
    /* 5FC8C 8008F7DC 3C19800B */  lui        $t9, %hi(D_800AA7D8)
    /* 5FC90 8008F7E0 2739A7D8 */  addiu      $t9, $t9, %lo(D_800AA7D8)
    /* 5FC94 8008F7E4 A5A00006 */  sh         $zero, 0x6($t5)
    /* 5FC98 8008F7E8 8D6E0000 */  lw         $t6, 0x0($t3)
    /* 5FC9C 8008F7EC 03194021 */  addu       $t0, $t8, $t9
    /* 5FCA0 8008F7F0 A5C00008 */  sh         $zero, 0x8($t6)
    /* 5FCA4 8008F7F4 8D6F0000 */  lw         $t7, 0x0($t3)
    /* 5FCA8 8008F7F8 A5E0000A */  sh         $zero, 0xA($t7)
    /* 5FCAC 8008F7FC 8D6D0000 */  lw         $t5, 0x0($t3)
    /* 5FCB0 8008F800 910C0000 */  lbu        $t4, 0x0($t0)
    /* 5FCB4 8008F804 A1AC000C */  sb         $t4, 0xC($t5)
    /* 5FCB8 8008F808 8D6F0000 */  lw         $t7, 0x0($t3)
    /* 5FCBC 8008F80C 910E0001 */  lbu        $t6, 0x1($t0)
    /* 5FCC0 8008F810 A1EE000D */  sb         $t6, 0xD($t7)
    /* 5FCC4 8008F814 8D790000 */  lw         $t9, 0x0($t3)
    /* 5FCC8 8008F818 91180002 */  lbu        $t8, 0x2($t0)
    /* 5FCCC 8008F81C A338000E */  sb         $t8, 0xE($t9)
    /* 5FCD0 8008F820 8D6D0000 */  lw         $t5, 0x0($t3)
    /* 5FCD4 8008F824 910C0003 */  lbu        $t4, 0x3($t0)
    /* 5FCD8 8008F828 A1AC000F */  sb         $t4, 0xF($t5)
    /* 5FCDC 8008F82C C4E4000C */  lwc1       $f4, 0xC($a3)
    /* 5FCE0 8008F830 8D6E0000 */  lw         $t6, 0x0($t3)
    /* 5FCE4 8008F834 4600218D */  trunc.w.s  $f6, $f4
    /* 5FCE8 8008F838 25CF0010 */  addiu      $t7, $t6, 0x10
    /* 5FCEC 8008F83C AD6F0000 */  sw         $t7, 0x0($t3)
    /* 5FCF0 8008F840 44193000 */  mfc1       $t9, $f6
    /* 5FCF4 8008F844 00000000 */  nop
    /* 5FCF8 8008F848 A5F90000 */  sh         $t9, 0x0($t7)
    /* 5FCFC 8008F84C C4E80010 */  lwc1       $f8, 0x10($a3)
    /* 5FD00 8008F850 8D6F0000 */  lw         $t7, 0x0($t3)
    /* 5FD04 8008F854 4600428D */  trunc.w.s  $f10, $f8
    /* 5FD08 8008F858 440E5000 */  mfc1       $t6, $f10
    /* 5FD0C 8008F85C 00000000 */  nop
    /* 5FD10 8008F860 A5EE0002 */  sh         $t6, 0x2($t7)
    /* 5FD14 8008F864 C4F00014 */  lwc1       $f16, 0x14($a3)
    /* 5FD18 8008F868 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 5FD1C 8008F86C 4600848D */  trunc.w.s  $f18, $f16
    /* 5FD20 8008F870 44199000 */  mfc1       $t9, $f18
    /* 5FD24 8008F874 00000000 */  nop
    /* 5FD28 8008F878 A5990004 */  sh         $t9, 0x4($t4)
    /* 5FD2C 8008F87C 8D6D0000 */  lw         $t5, 0x0($t3)
    /* 5FD30 8008F880 A5A00006 */  sh         $zero, 0x6($t5)
    /* 5FD34 8008F884 8D6E0000 */  lw         $t6, 0x0($t3)
    /* 5FD38 8008F888 A5C00008 */  sh         $zero, 0x8($t6)
    /* 5FD3C 8008F88C 8D6F0000 */  lw         $t7, 0x0($t3)
    /* 5FD40 8008F890 A5E0000A */  sh         $zero, 0xA($t7)
    /* 5FD44 8008F894 8D790000 */  lw         $t9, 0x0($t3)
    /* 5FD48 8008F898 91180004 */  lbu        $t8, 0x4($t0)
    /* 5FD4C 8008F89C A338000C */  sb         $t8, 0xC($t9)
    /* 5FD50 8008F8A0 8D6D0000 */  lw         $t5, 0x0($t3)
    /* 5FD54 8008F8A4 910C0005 */  lbu        $t4, 0x5($t0)
    /* 5FD58 8008F8A8 A1AC000D */  sb         $t4, 0xD($t5)
    /* 5FD5C 8008F8AC 8D6F0000 */  lw         $t7, 0x0($t3)
    /* 5FD60 8008F8B0 910E0006 */  lbu        $t6, 0x6($t0)
    /* 5FD64 8008F8B4 A1EE000E */  sb         $t6, 0xE($t7)
    /* 5FD68 8008F8B8 8D790000 */  lw         $t9, 0x0($t3)
    /* 5FD6C 8008F8BC 91180007 */  lbu        $t8, 0x7($t0)
    /* 5FD70 8008F8C0 A338000F */  sb         $t8, 0xF($t9)
    /* 5FD74 8008F8C4 C4E40018 */  lwc1       $f4, 0x18($a3)
    /* 5FD78 8008F8C8 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 5FD7C 8008F8CC 4600218D */  trunc.w.s  $f6, $f4
    /* 5FD80 8008F8D0 258D0010 */  addiu      $t5, $t4, 0x10
    /* 5FD84 8008F8D4 AD6D0000 */  sw         $t5, 0x0($t3)
    /* 5FD88 8008F8D8 440F3000 */  mfc1       $t7, $f6
    /* 5FD8C 8008F8DC 00000000 */  nop
    /* 5FD90 8008F8E0 A5AF0000 */  sh         $t7, 0x0($t5)
    /* 5FD94 8008F8E4 C4E8001C */  lwc1       $f8, 0x1C($a3)
    /* 5FD98 8008F8E8 8D6D0000 */  lw         $t5, 0x0($t3)
    /* 5FD9C 8008F8EC 4600428D */  trunc.w.s  $f10, $f8
    /* 5FDA0 8008F8F0 440C5000 */  mfc1       $t4, $f10
    /* 5FDA4 8008F8F4 00000000 */  nop
    /* 5FDA8 8008F8F8 A5AC0002 */  sh         $t4, 0x2($t5)
    /* 5FDAC 8008F8FC C4F00020 */  lwc1       $f16, 0x20($a3)
    /* 5FDB0 8008F900 8D780000 */  lw         $t8, 0x0($t3)
    /* 5FDB4 8008F904 4600848D */  trunc.w.s  $f18, $f16
    /* 5FDB8 8008F908 440F9000 */  mfc1       $t7, $f18
    /* 5FDBC 8008F90C 00000000 */  nop
    /* 5FDC0 8008F910 A70F0004 */  sh         $t7, 0x4($t8)
    /* 5FDC4 8008F914 8D790000 */  lw         $t9, 0x0($t3)
    /* 5FDC8 8008F918 A7200006 */  sh         $zero, 0x6($t9)
    /* 5FDCC 8008F91C 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 5FDD0 8008F920 A5800008 */  sh         $zero, 0x8($t4)
    /* 5FDD4 8008F924 8D6D0000 */  lw         $t5, 0x0($t3)
    /* 5FDD8 8008F928 A5A0000A */  sh         $zero, 0xA($t5)
    /* 5FDDC 8008F92C 8D6F0000 */  lw         $t7, 0x0($t3)
    /* 5FDE0 8008F930 910E0008 */  lbu        $t6, 0x8($t0)
    /* 5FDE4 8008F934 A1EE000C */  sb         $t6, 0xC($t7)
    /* 5FDE8 8008F938 8D790000 */  lw         $t9, 0x0($t3)
    /* 5FDEC 8008F93C 91180009 */  lbu        $t8, 0x9($t0)
    /* 5FDF0 8008F940 A338000D */  sb         $t8, 0xD($t9)
    /* 5FDF4 8008F944 8D6D0000 */  lw         $t5, 0x0($t3)
    /* 5FDF8 8008F948 910C000A */  lbu        $t4, 0xA($t0)
    /* 5FDFC 8008F94C A1AC000E */  sb         $t4, 0xE($t5)
    /* 5FE00 8008F950 8D6F0000 */  lw         $t7, 0x0($t3)
    /* 5FE04 8008F954 910E000B */  lbu        $t6, 0xB($t0)
    /* 5FE08 8008F958 A1EE000F */  sb         $t6, 0xF($t7)
    /* 5FE0C 8008F95C C4E40024 */  lwc1       $f4, 0x24($a3)
    /* 5FE10 8008F960 8D780000 */  lw         $t8, 0x0($t3)
    /* 5FE14 8008F964 4600218D */  trunc.w.s  $f6, $f4
    /* 5FE18 8008F968 27190010 */  addiu      $t9, $t8, 0x10
    /* 5FE1C 8008F96C AD790000 */  sw         $t9, 0x0($t3)
    /* 5FE20 8008F970 440D3000 */  mfc1       $t5, $f6
    /* 5FE24 8008F974 00000000 */  nop
    /* 5FE28 8008F978 A72D0000 */  sh         $t5, 0x0($t9)
    /* 5FE2C 8008F97C C4E80028 */  lwc1       $f8, 0x28($a3)
    /* 5FE30 8008F980 8D790000 */  lw         $t9, 0x0($t3)
    /* 5FE34 8008F984 4600428D */  trunc.w.s  $f10, $f8
    /* 5FE38 8008F988 44185000 */  mfc1       $t8, $f10
    /* 5FE3C 8008F98C 00000000 */  nop
    /* 5FE40 8008F990 A7380002 */  sh         $t8, 0x2($t9)
    /* 5FE44 8008F994 C4F0002C */  lwc1       $f16, 0x2C($a3)
    /* 5FE48 8008F998 8D6E0000 */  lw         $t6, 0x0($t3)
    /* 5FE4C 8008F99C 4600848D */  trunc.w.s  $f18, $f16
    /* 5FE50 8008F9A0 440D9000 */  mfc1       $t5, $f18
    /* 5FE54 8008F9A4 00000000 */  nop
    /* 5FE58 8008F9A8 A5CD0004 */  sh         $t5, 0x4($t6)
    /* 5FE5C 8008F9AC 8D6F0000 */  lw         $t7, 0x0($t3)
    /* 5FE60 8008F9B0 A5E00006 */  sh         $zero, 0x6($t7)
    /* 5FE64 8008F9B4 8D780000 */  lw         $t8, 0x0($t3)
    /* 5FE68 8008F9B8 A7000008 */  sh         $zero, 0x8($t8)
    /* 5FE6C 8008F9BC 8D790000 */  lw         $t9, 0x0($t3)
    /* 5FE70 8008F9C0 A720000A */  sh         $zero, 0xA($t9)
    /* 5FE74 8008F9C4 8D6D0000 */  lw         $t5, 0x0($t3)
    /* 5FE78 8008F9C8 910C000C */  lbu        $t4, 0xC($t0)
    /* 5FE7C 8008F9CC A1AC000C */  sb         $t4, 0xC($t5)
    /* 5FE80 8008F9D0 8D6F0000 */  lw         $t7, 0x0($t3)
    /* 5FE84 8008F9D4 910E000D */  lbu        $t6, 0xD($t0)
    /* 5FE88 8008F9D8 A1EE000D */  sb         $t6, 0xD($t7)
    /* 5FE8C 8008F9DC 8D790000 */  lw         $t9, 0x0($t3)
    /* 5FE90 8008F9E0 9118000E */  lbu        $t8, 0xE($t0)
    /* 5FE94 8008F9E4 A338000E */  sb         $t8, 0xE($t9)
    /* 5FE98 8008F9E8 8D6D0000 */  lw         $t5, 0x0($t3)
    /* 5FE9C 8008F9EC 910C000F */  lbu        $t4, 0xF($t0)
    /* 5FEA0 8008F9F0 3C190400 */  lui        $t9, (0x400103F >> 16)
    /* 5FEA4 8008F9F4 3739103F */  ori        $t9, $t9, (0x400103F & 0xFFFF)
    /* 5FEA8 8008F9F8 A1AC000F */  sb         $t4, 0xF($t5)
    /* 5FEAC 8008F9FC 8D6E0000 */  lw         $t6, 0x0($t3)
    /* 5FEB0 8008FA00 8D230000 */  lw         $v1, 0x0($t1)
    /* 5FEB4 8008FA04 25CF0010 */  addiu      $t7, $t6, 0x10
    /* 5FEB8 8008FA08 24780008 */  addiu      $t8, $v1, 0x8
    /* 5FEBC 8008FA0C AD6F0000 */  sw         $t7, 0x0($t3)
    /* 5FEC0 8008FA10 AD380000 */  sw         $t8, 0x0($t1)
    /* 5FEC4 8008FA14 AC790000 */  sw         $t9, 0x0($v1)
    /* 5FEC8 8008FA18 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 5FECC 8008FA1C 3C18B100 */  lui        $t8, (0xB1000204 >> 16)
    /* 5FED0 8008FA20 37180204 */  ori        $t8, $t8, (0xB1000204 & 0xFFFF)
    /* 5FED4 8008FA24 258DFFC0 */  addiu      $t5, $t4, -0x40
    /* 5FED8 8008FA28 01A17024 */  and        $t6, $t5, $at
    /* 5FEDC 8008FA2C AC6E0004 */  sw         $t6, 0x4($v1)
    /* 5FEE0 8008FA30 8D230000 */  lw         $v1, 0x0($t1)
    /* 5FEE4 8008FA34 24190406 */  addiu      $t9, $zero, 0x406
    /* 5FEE8 8008FA38 246F0008 */  addiu      $t7, $v1, 0x8
    /* 5FEEC 8008FA3C AD2F0000 */  sw         $t7, 0x0($t1)
    /* 5FEF0 8008FA40 AC790004 */  sw         $t9, 0x4($v1)
    /* 5FEF4 8008FA44 AC780000 */  sw         $t8, 0x0($v1)
    /* 5FEF8 8008FA48 8D230000 */  lw         $v1, 0x0($t1)
    /* 5FEFC 8008FA4C 246C0008 */  addiu      $t4, $v1, 0x8
    /* 5FF00 8008FA50 AD2C0000 */  sw         $t4, 0x0($t1)
    /* 5FF04 8008FA54 AC600004 */  sw         $zero, 0x4($v1)
    /* 5FF08 8008FA58 03E00008 */  jr         $ra
    /* 5FF0C 8008FA5C AC6A0000 */   sw        $t2, 0x0($v1)
endlabel func_8008F704_5FBB4
