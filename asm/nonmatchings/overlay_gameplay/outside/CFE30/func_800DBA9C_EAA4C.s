nonmatching func_800DBA9C_EAA4C, 0x384

glabel func_800DBA9C_EAA4C
    /* EAA4C 800DBA9C 3C068015 */  lui        $a2, %hi(D_80153BB8)
    /* EAA50 800DBAA0 24C63BB8 */  addiu      $a2, $a2, %lo(D_80153BB8)
    /* EAA54 800DBAA4 C4C40000 */  lwc1       $f4, 0x0($a2)
    /* EAA58 800DBAA8 3C058006 */  lui        $a1, %hi(D_8005BB34)
    /* EAA5C 800DBAAC 24A5BB34 */  addiu      $a1, $a1, %lo(D_8005BB34)
    /* EAA60 800DBAB0 4600218D */  trunc.w.s  $f6, $f4
    /* EAA64 800DBAB4 8CB80000 */  lw         $t8, 0x0($a1)
    /* EAA68 800DBAB8 3C078015 */  lui        $a3, %hi(D_80153BC8)
    /* EAA6C 800DBABC 24E73BC8 */  addiu      $a3, $a3, %lo(D_80153BC8)
    /* EAA70 800DBAC0 440F3000 */  mfc1       $t7, $f6
    /* EAA74 800DBAC4 3C088015 */  lui        $t0, %hi(D_80153BC4)
    /* EAA78 800DBAC8 25083BC4 */  addiu      $t0, $t0, %lo(D_80153BC4)
    /* EAA7C 800DBACC A70F0000 */  sh         $t7, 0x0($t8)
    /* EAA80 800DBAD0 C4EA0000 */  lwc1       $f10, 0x0($a3)
    /* EAA84 800DBAD4 C4C80004 */  lwc1       $f8, 0x4($a2)
    /* EAA88 800DBAD8 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EAA8C 800DBADC 3C098015 */  lui        $t1, %hi(D_80153BCC)
    /* EAA90 800DBAE0 460A4400 */  add.s      $f16, $f8, $f10
    /* EAA94 800DBAE4 25293BCC */  addiu      $t1, $t1, %lo(D_80153BCC)
    /* EAA98 800DBAE8 3C0A8015 */  lui        $t2, %hi(D_80153BCD)
    /* EAA9C 800DBAEC 254A3BCD */  addiu      $t2, $t2, %lo(D_80153BCD)
    /* EAAA0 800DBAF0 4600848D */  trunc.w.s  $f18, $f16
    /* EAAA4 800DBAF4 3C0B8015 */  lui        $t3, %hi(D_80153BCE)
    /* EAAA8 800DBAF8 256B3BCE */  addiu      $t3, $t3, %lo(D_80153BCE)
    /* EAAAC 800DBAFC 3C0C8006 */  lui        $t4, %hi(D_8005BB2C)
    /* EAAB0 800DBB00 440D9000 */  mfc1       $t5, $f18
    /* EAAB4 800DBB04 258CBB2C */  addiu      $t4, $t4, %lo(D_8005BB2C)
    /* EAAB8 800DBB08 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* EAABC 800DBB0C A5CD0002 */  sh         $t5, 0x2($t6)
    /* EAAC0 800DBB10 C4E60000 */  lwc1       $f6, 0x0($a3)
    /* EAAC4 800DBB14 C4C40008 */  lwc1       $f4, 0x8($a2)
    /* EAAC8 800DBB18 8CB90000 */  lw         $t9, 0x0($a1)
    /* EAACC 800DBB1C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* EAAD0 800DBB20 46062200 */  add.s      $f8, $f4, $f6
    /* EAAD4 800DBB24 4600428D */  trunc.w.s  $f10, $f8
    /* EAAD8 800DBB28 44185000 */  mfc1       $t8, $f10
    /* EAADC 800DBB2C 00000000 */  nop
    /* EAAE0 800DBB30 A7380004 */  sh         $t8, 0x4($t9)
    /* EAAE4 800DBB34 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EAAE8 800DBB38 A5A00006 */  sh         $zero, 0x6($t5)
    /* EAAEC 800DBB3C 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EAAF0 800DBB40 A5C00008 */  sh         $zero, 0x8($t6)
    /* EAAF4 800DBB44 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EAAF8 800DBB48 A5E0000A */  sh         $zero, 0xA($t7)
    /* EAAFC 800DBB4C 8D180000 */  lw         $t8, 0x0($t0)
    /* EAB00 800DBB50 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EAB04 800DBB54 93190000 */  lbu        $t9, 0x0($t8)
    /* EAB08 800DBB58 A1B9000C */  sb         $t9, 0xC($t5)
    /* EAB0C 800DBB5C 8D0E0000 */  lw         $t6, 0x0($t0)
    /* EAB10 800DBB60 8CB80000 */  lw         $t8, 0x0($a1)
    /* EAB14 800DBB64 91CF0001 */  lbu        $t7, 0x1($t6)
    /* EAB18 800DBB68 A30F000D */  sb         $t7, 0xD($t8)
    /* EAB1C 800DBB6C 8D190000 */  lw         $t9, 0x0($t0)
    /* EAB20 800DBB70 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EAB24 800DBB74 932D0002 */  lbu        $t5, 0x2($t9)
    /* EAB28 800DBB78 A1CD000E */  sb         $t5, 0xE($t6)
    /* EAB2C 800DBB7C 8CB80000 */  lw         $t8, 0x0($a1)
    /* EAB30 800DBB80 912F0000 */  lbu        $t7, 0x0($t1)
    /* EAB34 800DBB84 A30F000F */  sb         $t7, 0xF($t8)
    /* EAB38 800DBB88 C4D00000 */  lwc1       $f16, 0x0($a2)
    /* EAB3C 800DBB8C 8CB90000 */  lw         $t9, 0x0($a1)
    /* EAB40 800DBB90 4600848D */  trunc.w.s  $f18, $f16
    /* EAB44 800DBB94 272D0010 */  addiu      $t5, $t9, 0x10
    /* EAB48 800DBB98 ACAD0000 */  sw         $t5, 0x0($a1)
    /* EAB4C 800DBB9C 440F9000 */  mfc1       $t7, $f18
    /* EAB50 800DBBA0 00000000 */  nop
    /* EAB54 800DBBA4 A5AF0000 */  sh         $t7, 0x0($t5)
    /* EAB58 800DBBA8 C4E60000 */  lwc1       $f6, 0x0($a3)
    /* EAB5C 800DBBAC C4C40004 */  lwc1       $f4, 0x4($a2)
    /* EAB60 800DBBB0 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EAB64 800DBBB4 46062200 */  add.s      $f8, $f4, $f6
    /* EAB68 800DBBB8 4600428D */  trunc.w.s  $f10, $f8
    /* EAB6C 800DBBBC 440D5000 */  mfc1       $t5, $f10
    /* EAB70 800DBBC0 00000000 */  nop
    /* EAB74 800DBBC4 A5CD0002 */  sh         $t5, 0x2($t6)
    /* EAB78 800DBBC8 C4F20000 */  lwc1       $f18, 0x0($a3)
    /* EAB7C 800DBBCC C4D00008 */  lwc1       $f16, 0x8($a2)
    /* EAB80 800DBBD0 8CB90000 */  lw         $t9, 0x0($a1)
    /* EAB84 800DBBD4 46128101 */  sub.s      $f4, $f16, $f18
    /* EAB88 800DBBD8 4600218D */  trunc.w.s  $f6, $f4
    /* EAB8C 800DBBDC 44183000 */  mfc1       $t8, $f6
    /* EAB90 800DBBE0 00000000 */  nop
    /* EAB94 800DBBE4 A7380004 */  sh         $t8, 0x4($t9)
    /* EAB98 800DBBE8 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EAB9C 800DBBEC A5A00006 */  sh         $zero, 0x6($t5)
    /* EABA0 800DBBF0 914E0000 */  lbu        $t6, 0x0($t2)
    /* EABA4 800DBBF4 8CB80000 */  lw         $t8, 0x0($a1)
    /* EABA8 800DBBF8 000E7980 */  sll        $t7, $t6, 6
    /* EABAC 800DBBFC A70F0008 */  sh         $t7, 0x8($t8)
    /* EABB0 800DBC00 8CB90000 */  lw         $t9, 0x0($a1)
    /* EABB4 800DBC04 A720000A */  sh         $zero, 0xA($t9)
    /* EABB8 800DBC08 8D0D0000 */  lw         $t5, 0x0($t0)
    /* EABBC 800DBC0C 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EABC0 800DBC10 91AE0000 */  lbu        $t6, 0x0($t5)
    /* EABC4 800DBC14 A1EE000C */  sb         $t6, 0xC($t7)
    /* EABC8 800DBC18 8D180000 */  lw         $t8, 0x0($t0)
    /* EABCC 800DBC1C 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EABD0 800DBC20 93190001 */  lbu        $t9, 0x1($t8)
    /* EABD4 800DBC24 A1B9000D */  sb         $t9, 0xD($t5)
    /* EABD8 800DBC28 8D0E0000 */  lw         $t6, 0x0($t0)
    /* EABDC 800DBC2C 8CB80000 */  lw         $t8, 0x0($a1)
    /* EABE0 800DBC30 91CF0002 */  lbu        $t7, 0x2($t6)
    /* EABE4 800DBC34 A30F000E */  sb         $t7, 0xE($t8)
    /* EABE8 800DBC38 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EABEC 800DBC3C 91390000 */  lbu        $t9, 0x0($t1)
    /* EABF0 800DBC40 A1B9000F */  sb         $t9, 0xF($t5)
    /* EABF4 800DBC44 C4C80000 */  lwc1       $f8, 0x0($a2)
    /* EABF8 800DBC48 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EABFC 800DBC4C 4600428D */  trunc.w.s  $f10, $f8
    /* EAC00 800DBC50 25CF0010 */  addiu      $t7, $t6, 0x10
    /* EAC04 800DBC54 ACAF0000 */  sw         $t7, 0x0($a1)
    /* EAC08 800DBC58 44195000 */  mfc1       $t9, $f10
    /* EAC0C 800DBC5C 00000000 */  nop
    /* EAC10 800DBC60 A5F90000 */  sh         $t9, 0x0($t7)
    /* EAC14 800DBC64 C4F20000 */  lwc1       $f18, 0x0($a3)
    /* EAC18 800DBC68 C4D00004 */  lwc1       $f16, 0x4($a2)
    /* EAC1C 800DBC6C 8CB80000 */  lw         $t8, 0x0($a1)
    /* EAC20 800DBC70 46128101 */  sub.s      $f4, $f16, $f18
    /* EAC24 800DBC74 4600218D */  trunc.w.s  $f6, $f4
    /* EAC28 800DBC78 440F3000 */  mfc1       $t7, $f6
    /* EAC2C 800DBC7C 00000000 */  nop
    /* EAC30 800DBC80 A70F0002 */  sh         $t7, 0x2($t8)
    /* EAC34 800DBC84 C4EA0000 */  lwc1       $f10, 0x0($a3)
    /* EAC38 800DBC88 C4C80008 */  lwc1       $f8, 0x8($a2)
    /* EAC3C 800DBC8C 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EAC40 800DBC90 460A4401 */  sub.s      $f16, $f8, $f10
    /* EAC44 800DBC94 4600848D */  trunc.w.s  $f18, $f16
    /* EAC48 800DBC98 440D9000 */  mfc1       $t5, $f18
    /* EAC4C 800DBC9C 00000000 */  nop
    /* EAC50 800DBCA0 A5CD0004 */  sh         $t5, 0x4($t6)
    /* EAC54 800DBCA4 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EAC58 800DBCA8 A5E00006 */  sh         $zero, 0x6($t7)
    /* EAC5C 800DBCAC 91580000 */  lbu        $t8, 0x0($t2)
    /* EAC60 800DBCB0 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EAC64 800DBCB4 0018C980 */  sll        $t9, $t8, 6
    /* EAC68 800DBCB8 A5B90008 */  sh         $t9, 0x8($t5)
    /* EAC6C 800DBCBC 916E0000 */  lbu        $t6, 0x0($t3)
    /* EAC70 800DBCC0 8CB80000 */  lw         $t8, 0x0($a1)
    /* EAC74 800DBCC4 000E7980 */  sll        $t7, $t6, 6
    /* EAC78 800DBCC8 A70F000A */  sh         $t7, 0xA($t8)
    /* EAC7C 800DBCCC 8D190000 */  lw         $t9, 0x0($t0)
    /* EAC80 800DBCD0 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EAC84 800DBCD4 932D0000 */  lbu        $t5, 0x0($t9)
    /* EAC88 800DBCD8 A1CD000C */  sb         $t5, 0xC($t6)
    /* EAC8C 800DBCDC 8D0F0000 */  lw         $t7, 0x0($t0)
    /* EAC90 800DBCE0 8CB90000 */  lw         $t9, 0x0($a1)
    /* EAC94 800DBCE4 91F80001 */  lbu        $t8, 0x1($t7)
    /* EAC98 800DBCE8 A338000D */  sb         $t8, 0xD($t9)
    /* EAC9C 800DBCEC 8D0D0000 */  lw         $t5, 0x0($t0)
    /* EACA0 800DBCF0 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EACA4 800DBCF4 91AE0002 */  lbu        $t6, 0x2($t5)
    /* EACA8 800DBCF8 A1EE000E */  sb         $t6, 0xE($t7)
    /* EACAC 800DBCFC 8CB90000 */  lw         $t9, 0x0($a1)
    /* EACB0 800DBD00 91380000 */  lbu        $t8, 0x0($t1)
    /* EACB4 800DBD04 A338000F */  sb         $t8, 0xF($t9)
    /* EACB8 800DBD08 C4C40000 */  lwc1       $f4, 0x0($a2)
    /* EACBC 800DBD0C 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EACC0 800DBD10 4600218D */  trunc.w.s  $f6, $f4
    /* EACC4 800DBD14 25AE0010 */  addiu      $t6, $t5, 0x10
    /* EACC8 800DBD18 ACAE0000 */  sw         $t6, 0x0($a1)
    /* EACCC 800DBD1C 44183000 */  mfc1       $t8, $f6
    /* EACD0 800DBD20 00000000 */  nop
    /* EACD4 800DBD24 A5D80000 */  sh         $t8, 0x0($t6)
    /* EACD8 800DBD28 C4EA0000 */  lwc1       $f10, 0x0($a3)
    /* EACDC 800DBD2C C4C80004 */  lwc1       $f8, 0x4($a2)
    /* EACE0 800DBD30 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EACE4 800DBD34 460A4401 */  sub.s      $f16, $f8, $f10
    /* EACE8 800DBD38 4600848D */  trunc.w.s  $f18, $f16
    /* EACEC 800DBD3C 440E9000 */  mfc1       $t6, $f18
    /* EACF0 800DBD40 00000000 */  nop
    /* EACF4 800DBD44 A5EE0002 */  sh         $t6, 0x2($t7)
    /* EACF8 800DBD48 C4E60000 */  lwc1       $f6, 0x0($a3)
    /* EACFC 800DBD4C C4C40008 */  lwc1       $f4, 0x8($a2)
    /* EAD00 800DBD50 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EAD04 800DBD54 46062200 */  add.s      $f8, $f4, $f6
    /* EAD08 800DBD58 4600428D */  trunc.w.s  $f10, $f8
    /* EAD0C 800DBD5C 44195000 */  mfc1       $t9, $f10
    /* EAD10 800DBD60 00000000 */  nop
    /* EAD14 800DBD64 A5B90004 */  sh         $t9, 0x4($t5)
    /* EAD18 800DBD68 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EAD1C 800DBD6C A5C00006 */  sh         $zero, 0x6($t6)
    /* EAD20 800DBD70 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EAD24 800DBD74 A5E00008 */  sh         $zero, 0x8($t7)
    /* EAD28 800DBD78 91780000 */  lbu        $t8, 0x0($t3)
    /* EAD2C 800DBD7C 8CAD0000 */  lw         $t5, 0x0($a1)
    /* EAD30 800DBD80 0018C980 */  sll        $t9, $t8, 6
    /* EAD34 800DBD84 A5B9000A */  sh         $t9, 0xA($t5)
    /* EAD38 800DBD88 8D0E0000 */  lw         $t6, 0x0($t0)
    /* EAD3C 800DBD8C 8CB80000 */  lw         $t8, 0x0($a1)
    /* EAD40 800DBD90 91CF0000 */  lbu        $t7, 0x0($t6)
    /* EAD44 800DBD94 A30F000C */  sb         $t7, 0xC($t8)
    /* EAD48 800DBD98 8D190000 */  lw         $t9, 0x0($t0)
    /* EAD4C 800DBD9C 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EAD50 800DBDA0 932D0001 */  lbu        $t5, 0x1($t9)
    /* EAD54 800DBDA4 A1CD000D */  sb         $t5, 0xD($t6)
    /* EAD58 800DBDA8 8D0F0000 */  lw         $t7, 0x0($t0)
    /* EAD5C 800DBDAC 8CB90000 */  lw         $t9, 0x0($a1)
    /* EAD60 800DBDB0 91F80002 */  lbu        $t8, 0x2($t7)
    /* EAD64 800DBDB4 A338000E */  sb         $t8, 0xE($t9)
    /* EAD68 800DBDB8 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EAD6C 800DBDBC 912D0000 */  lbu        $t5, 0x0($t1)
    /* EAD70 800DBDC0 A1CD000F */  sb         $t5, 0xF($t6)
    /* EAD74 800DBDC4 8CAF0000 */  lw         $t7, 0x0($a1)
    /* EAD78 800DBDC8 8D830000 */  lw         $v1, 0x0($t4)
    /* EAD7C 800DBDCC 3C0D0400 */  lui        $t5, (0x400103F >> 16)
    /* EAD80 800DBDD0 25F80010 */  addiu      $t8, $t7, 0x10
    /* EAD84 800DBDD4 24790008 */  addiu      $t9, $v1, 0x8
    /* EAD88 800DBDD8 ACB80000 */  sw         $t8, 0x0($a1)
    /* EAD8C 800DBDDC AD990000 */  sw         $t9, 0x0($t4)
    /* EAD90 800DBDE0 35AD103F */  ori        $t5, $t5, (0x400103F & 0xFFFF)
    /* EAD94 800DBDE4 AC6D0000 */  sw         $t5, 0x0($v1)
    /* EAD98 800DBDE8 8CAE0000 */  lw         $t6, 0x0($a1)
    /* EAD9C 800DBDEC 3C0DB100 */  lui        $t5, (0xB1000206 >> 16)
    /* EADA0 800DBDF0 35AD0206 */  ori        $t5, $t5, (0xB1000206 & 0xFFFF)
    /* EADA4 800DBDF4 25CFFFC0 */  addiu      $t7, $t6, -0x40
    /* EADA8 800DBDF8 01E1C024 */  and        $t8, $t7, $at
    /* EADAC 800DBDFC AC780004 */  sw         $t8, 0x4($v1)
    /* EADB0 800DBE00 8D830000 */  lw         $v1, 0x0($t4)
    /* EADB4 800DBE04 3C0E0006 */  lui        $t6, (0x60204 >> 16)
    /* EADB8 800DBE08 35CE0204 */  ori        $t6, $t6, (0x60204 & 0xFFFF)
    /* EADBC 800DBE0C 24790008 */  addiu      $t9, $v1, 0x8
    /* EADC0 800DBE10 AD990000 */  sw         $t9, 0x0($t4)
    /* EADC4 800DBE14 AC6E0004 */  sw         $t6, 0x4($v1)
    /* EADC8 800DBE18 03E00008 */  jr         $ra
    /* EADCC 800DBE1C AC6D0000 */   sw        $t5, 0x0($v1)
endlabel func_800DBA9C_EAA4C
