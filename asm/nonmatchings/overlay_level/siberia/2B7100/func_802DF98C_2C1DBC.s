nonmatching func_802DF98C_2C1DBC, 0x90C

glabel func_802DF98C_2C1DBC
    /* 2C1DBC 802DF98C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2C1DC0 802DF990 24080050 */  addiu      $t0, $zero, 0x50
    /* 2C1DC4 802DF994 01C80019 */  multu      $t6, $t0
    /* 2C1DC8 802DF998 27BDFF58 */  addiu      $sp, $sp, -0xA8
    /* 2C1DCC 802DF99C 3C038005 */  lui        $v1, %hi(alienInstances)
    /* 2C1DD0 802DF9A0 24638198 */  addiu      $v1, $v1, %lo(alienInstances)
    /* 2C1DD4 802DF9A4 AFB00048 */  sw         $s0, 0x48($sp)
    /* 2C1DD8 802DF9A8 AFBF004C */  sw         $ra, 0x4C($sp)
    /* 2C1DDC 802DF9AC AFA400A8 */  sw         $a0, 0xA8($sp)
    /* 2C1DE0 802DF9B0 01C02025 */  or         $a0, $t6, $zero
    /* 2C1DE4 802DF9B4 F7B40040 */  sdc1       $f20, 0x40($sp)
    /* 2C1DE8 802DF9B8 A3AE00AB */  sb         $t6, 0xAB($sp)
    /* 2C1DEC 802DF9BC 00007812 */  mflo       $t7
    /* 2C1DF0 802DF9C0 006F8021 */  addu       $s0, $v1, $t7
    /* 2C1DF4 802DF9C4 92020025 */  lbu        $v0, 0x25($s0)
    /* 2C1DF8 802DF9C8 2405FFF5 */  addiu      $a1, $zero, -0xB
    /* 2C1DFC 802DF9CC 240600B6 */  addiu      $a2, $zero, 0xB6
    /* 2C1E00 802DF9D0 00480019 */  multu      $v0, $t0
    /* 2C1E04 802DF9D4 2407FED5 */  addiu      $a3, $zero, -0x12B
    /* 2C1E08 802DF9D8 0000C012 */  mflo       $t8
    /* 2C1E0C 802DF9DC 00784821 */  addu       $t1, $v1, $t8
    /* 2C1E10 802DF9E0 91390025 */  lbu        $t9, 0x25($t1)
    /* 2C1E14 802DF9E4 AFA9005C */  sw         $t1, 0x5C($sp)
    /* 2C1E18 802DF9E8 03280019 */  multu      $t9, $t0
    /* 2C1E1C 802DF9EC 00005012 */  mflo       $t2
    /* 2C1E20 802DF9F0 006A5821 */  addu       $t3, $v1, $t2
    /* 2C1E24 802DF9F4 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 2C1E28 802DF9F8 AFAB0070 */   sw        $t3, 0x70($sp)
    /* 2C1E2C 802DF9FC 8FA9005C */  lw         $t1, 0x5C($sp)
    /* 2C1E30 802DFA00 3C038005 */  lui        $v1, %hi(alienInstances)
    /* 2C1E34 802DFA04 24016000 */  addiu      $at, $zero, 0x6000
    /* 2C1E38 802DFA08 8D2C0020 */  lw         $t4, 0x20($t1)
    /* 2C1E3C 802DFA0C 24638198 */  addiu      $v1, $v1, %lo(alienInstances)
    /* 2C1E40 802DFA10 24080050 */  addiu      $t0, $zero, 0x50
    /* 2C1E44 802DFA14 318D6000 */  andi       $t5, $t4, 0x6000
    /* 2C1E48 802DFA18 15A1000A */  bne        $t5, $at, .L802DFA44_2C1E74
    /* 2C1E4C 802DFA1C 8FAE0070 */   lw        $t6, 0x70($sp)
    /* 2C1E50 802DFA20 91CF0000 */  lbu        $t7, 0x0($t6)
    /* 2C1E54 802DFA24 3C01FFBF */  lui        $at, (0xFFBFFFFF >> 16)
    /* 2C1E58 802DFA28 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
    /* 2C1E5C 802DFA2C 01E80019 */  multu      $t7, $t0
    /* 2C1E60 802DFA30 0000C012 */  mflo       $t8
    /* 2C1E64 802DFA34 00781021 */  addu       $v0, $v1, $t8
    /* 2C1E68 802DFA38 8C590020 */  lw         $t9, 0x20($v0)
    /* 2C1E6C 802DFA3C 03215024 */  and        $t2, $t9, $at
    /* 2C1E70 802DFA40 AC4A0020 */  sw         $t2, 0x20($v0)
  .L802DFA44_2C1E74:
    /* 2C1E74 802DFA44 8E020020 */  lw         $v0, 0x20($s0)
    /* 2C1E78 802DFA48 93A400AB */  lbu        $a0, 0xAB($sp)
    /* 2C1E7C 802DFA4C 24050200 */  addiu      $a1, $zero, 0x200
    /* 2C1E80 802DFA50 304B1000 */  andi       $t3, $v0, 0x1000
    /* 2C1E84 802DFA54 11600152 */  beqz       $t3, .L802DFFA0_2C23D0
    /* 2C1E88 802DFA58 304C2000 */   andi      $t4, $v0, 0x2000
    /* 2C1E8C 802DFA5C 1180007C */  beqz       $t4, .L802DFC50_2C2080
    /* 2C1E90 802DFA60 2401DFFF */   addiu     $at, $zero, -0x2001
    /* 2C1E94 802DFA64 00416824 */  and        $t5, $v0, $at
    /* 2C1E98 802DFA68 AE0D0020 */  sw         $t5, 0x20($s0)
    /* 2C1E9C 802DFA6C 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 2C1EA0 802DFA70 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 2C1EA4 802DFA74 240503E8 */  addiu      $a1, $zero, 0x3E8
    /* 2C1EA8 802DFA78 86060000 */  lh         $a2, 0x0($s0)
    /* 2C1EAC 802DFA7C 0C048949 */  jal        func_80122524_1314D4
    /* 2C1EB0 802DFA80 86070004 */   lh        $a3, 0x4($s0)
    /* 2C1EB4 802DFA84 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 2C1EB8 802DFA88 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 2C1EBC 802DFA8C 24010013 */  addiu      $at, $zero, 0x13
    /* 2C1EC0 802DFA90 24060FA0 */  addiu      $a2, $zero, 0xFA0
    /* 2C1EC4 802DFA94 908E001A */  lbu        $t6, 0x1A($a0)
    /* 2C1EC8 802DFA98 3C0741A0 */  lui        $a3, (0x41A00000 >> 16)
    /* 2C1ECC 802DFA9C 15C10007 */  bne        $t6, $at, .L802DFABC_2C1EEC
    /* 2C1ED0 802DFAA0 00000000 */   nop
    /* 2C1ED4 802DFAA4 86050006 */  lh         $a1, 0x6($s0)
    /* 2C1ED8 802DFAA8 24060FA0 */  addiu      $a2, $zero, 0xFA0
    /* 2C1EDC 802DFAAC 0C040B77 */  jal        func_80102DDC_111D8C
    /* 2C1EE0 802DFAB0 3C0741A0 */   lui       $a3, (0x41A00000 >> 16)
    /* 2C1EE4 802DFAB4 10000003 */  b          .L802DFAC4_2C1EF4
    /* 2C1EE8 802DFAB8 00000000 */   nop
  .L802DFABC_2C1EEC:
    /* 2C1EEC 802DFABC 0C040B77 */  jal        func_80102DDC_111D8C
    /* 2C1EF0 802DFAC0 86050006 */   lh        $a1, 0x6($s0)
  .L802DFAC4_2C1EF4:
    /* 2C1EF4 802DFAC4 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 2C1EF8 802DFAC8 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 2C1EFC 802DFACC 24070064 */  addiu      $a3, $zero, 0x64
    /* 2C1F00 802DFAD0 84640000 */  lh         $a0, 0x0($v1)
    /* 2C1F04 802DFAD4 84650002 */  lh         $a1, 0x2($v1)
    /* 2C1F08 802DFAD8 84660004 */  lh         $a2, 0x4($v1)
    /* 2C1F0C 802DFADC AFA00014 */  sw         $zero, 0x14($sp)
    /* 2C1F10 802DFAE0 0C037C0E */  jal        func_800DF038_EDFE8
    /* 2C1F14 802DFAE4 AFA00010 */   sw        $zero, 0x10($sp)
    /* 2C1F18 802DFAE8 86040006 */  lh         $a0, 0x6($s0)
    /* 2C1F1C 802DFAEC 24844000 */  addiu      $a0, $a0, 0x4000
    /* 2C1F20 802DFAF0 308FFFFF */  andi       $t7, $a0, 0xFFFF
    /* 2C1F24 802DFAF4 0C007660 */  jal        sins
    /* 2C1F28 802DFAF8 01E02025 */   or        $a0, $t7, $zero
    /* 2C1F2C 802DFAFC 44822000 */  mtc1       $v0, $f4
    /* 2C1F30 802DFB00 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C1F34 802DFB04 4481A800 */  mtc1       $at, $f21
    /* 2C1F38 802DFB08 468021A0 */  cvt.s.w    $f6, $f4
    /* 2C1F3C 802DFB0C 4480A000 */  mtc1       $zero, $f20
    /* 2C1F40 802DFB10 86040006 */  lh         $a0, 0x6($s0)
    /* 2C1F44 802DFB14 24844000 */  addiu      $a0, $a0, 0x4000
    /* 2C1F48 802DFB18 46003221 */  cvt.d.s    $f8, $f6
    /* 2C1F4C 802DFB1C 3098FFFF */  andi       $t8, $a0, 0xFFFF
    /* 2C1F50 802DFB20 46344283 */  div.d      $f10, $f8, $f20
    /* 2C1F54 802DFB24 03002025 */  or         $a0, $t8, $zero
    /* 2C1F58 802DFB28 46205420 */  cvt.s.d    $f16, $f10
    /* 2C1F5C 802DFB2C 0C007654 */  jal        coss
    /* 2C1F60 802DFB30 E7B0006C */   swc1      $f16, 0x6C($sp)
    /* 2C1F64 802DFB34 44824000 */  mtc1       $v0, $f8
    /* 2C1F68 802DFB38 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* 2C1F6C 802DFB3C 44810000 */  mtc1       $at, $f0
    /* 2C1F70 802DFB40 468042A0 */  cvt.s.w    $f10, $f8
    /* 2C1F74 802DFB44 C7B2006C */  lwc1       $f18, 0x6C($sp)
    /* 2C1F78 802DFB48 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 2C1F7C 802DFB4C 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 2C1F80 802DFB50 46009102 */  mul.s      $f4, $f18, $f0
    /* 2C1F84 802DFB54 240C0050 */  addiu      $t4, $zero, 0x50
    /* 2C1F88 802DFB58 46005421 */  cvt.d.s    $f16, $f10
    /* 2C1F8C 802DFB5C 84640000 */  lh         $a0, 0x0($v1)
    /* 2C1F90 802DFB60 84650002 */  lh         $a1, 0x2($v1)
    /* 2C1F94 802DFB64 84660004 */  lh         $a2, 0x4($v1)
    /* 2C1F98 802DFB68 46348483 */  div.d      $f18, $f16, $f20
    /* 2C1F9C 802DFB6C AFAC0010 */  sw         $t4, 0x10($sp)
    /* 2C1FA0 802DFB70 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 2C1FA4 802DFB74 240F0096 */  addiu      $t7, $zero, 0x96
    /* 2C1FA8 802DFB78 4600218D */  trunc.w.s  $f6, $f4
    /* 2C1FAC 802DFB7C 241800FF */  addiu      $t8, $zero, 0xFF
    /* 2C1FB0 802DFB80 24190028 */  addiu      $t9, $zero, 0x28
    /* 2C1FB4 802DFB84 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 2C1FB8 802DFB88 44073000 */  mfc1       $a3, $f6
    /* 2C1FBC 802DFB8C 240D00C8 */  addiu      $t5, $zero, 0xC8
    /* 2C1FC0 802DFB90 AFAD0030 */  sw         $t5, 0x30($sp)
    /* 2C1FC4 802DFB94 00075600 */  sll        $t2, $a3, 24
    /* 2C1FC8 802DFB98 000A3E03 */  sra        $a3, $t2, 24
    /* 2C1FCC 802DFB9C 240A0014 */  addiu      $t2, $zero, 0x14
    /* 2C1FD0 802DFBA0 AFAA0024 */  sw         $t2, 0x24($sp)
    /* 2C1FD4 802DFBA4 AFAB0028 */  sw         $t3, 0x28($sp)
    /* 2C1FD8 802DFBA8 AFB90020 */  sw         $t9, 0x20($sp)
    /* 2C1FDC 802DFBAC AFB8001C */  sw         $t8, 0x1C($sp)
    /* 2C1FE0 802DFBB0 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 2C1FE4 802DFBB4 AFAC002C */  sw         $t4, 0x2C($sp)
    /* 2C1FE8 802DFBB8 46209107 */  neg.d      $f4, $f18
    /* 2C1FEC 802DFBBC 462021A0 */  cvt.s.d    $f6, $f4
    /* 2C1FF0 802DFBC0 46003202 */  mul.s      $f8, $f6, $f0
    /* 2C1FF4 802DFBC4 4600428D */  trunc.w.s  $f10, $f8
    /* 2C1FF8 802DFBC8 440E5000 */  mfc1       $t6, $f10
    /* 2C1FFC 802DFBCC 0C031507 */  jal        func_800C541C_D43CC
    /* 2C2000 802DFBD0 AFAE0014 */   sw        $t6, 0x14($sp)
    /* 2C2004 802DFBD4 93A400AB */  lbu        $a0, 0xAB($sp)
    /* 2C2008 802DFBD8 0C04DD1A */  jal        func_80137468_146418
    /* 2C200C 802DFBDC 24050258 */   addiu     $a1, $zero, 0x258
    /* 2C2010 802DFBE0 0C000E38 */  jal        func_800038E0_44E0
    /* 2C2014 802DFBE4 00000000 */   nop
    /* 2C2018 802DFBE8 240107D0 */  addiu      $at, $zero, 0x7D0
    /* 2C201C 802DFBEC 0041001A */  div        $zero, $v0, $at
    /* 2C2020 802DFBF0 3C198005 */  lui        $t9, %hi(D_80052B34)
    /* 2C2024 802DFBF4 8F392B34 */  lw         $t9, %lo(D_80052B34)($t9)
    /* 2C2028 802DFBF8 00007010 */  mfhi       $t6
    /* 2C202C 802DFBFC 240F03E8 */  addiu      $t7, $zero, 0x3E8
    /* 2C2030 802DFC00 01EEC023 */  subu       $t8, $t7, $t6
    /* 2C2034 802DFC04 0C000E38 */  jal        func_800038E0_44E0
    /* 2C2038 802DFC08 A7380022 */   sh        $t8, 0x22($t9)
    /* 2C203C 802DFC0C 240107D0 */  addiu      $at, $zero, 0x7D0
    /* 2C2040 802DFC10 0041001A */  div        $zero, $v0, $at
    /* 2C2044 802DFC14 3C0D8005 */  lui        $t5, %hi(D_80052B34)
    /* 2C2048 802DFC18 8DAD2B34 */  lw         $t5, %lo(D_80052B34)($t5)
    /* 2C204C 802DFC1C 00005010 */  mfhi       $t2
    /* 2C2050 802DFC20 240B03E8 */  addiu      $t3, $zero, 0x3E8
    /* 2C2054 802DFC24 016A6023 */  subu       $t4, $t3, $t2
    /* 2C2058 802DFC28 0C000E38 */  jal        func_800038E0_44E0
    /* 2C205C 802DFC2C A5AC0024 */   sh        $t4, 0x24($t5)
    /* 2C2060 802DFC30 240107D0 */  addiu      $at, $zero, 0x7D0
    /* 2C2064 802DFC34 0041001A */  div        $zero, $v0, $at
    /* 2C2068 802DFC38 3C198005 */  lui        $t9, %hi(D_80052B34)
    /* 2C206C 802DFC3C 8F392B34 */  lw         $t9, %lo(D_80052B34)($t9)
    /* 2C2070 802DFC40 00007810 */  mfhi       $t7
    /* 2C2074 802DFC44 240E03E8 */  addiu      $t6, $zero, 0x3E8
    /* 2C2078 802DFC48 01CFC023 */  subu       $t8, $t6, $t7
    /* 2C207C 802DFC4C A7380026 */  sh         $t8, 0x26($t9)
  .L802DFC50_2C2080:
    /* 2C2080 802DFC50 8602000C */  lh         $v0, 0xC($s0)
    /* 2C2084 802DFC54 3C088015 */  lui        $t0, %hi(D_8014DD5C)
    /* 2C2088 802DFC58 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C208C 802DFC5C 00025900 */  sll        $t3, $v0, 4
    /* 2C2090 802DFC60 010B4021 */  addu       $t0, $t0, $t3
    /* 2C2094 802DFC64 8108DD5C */  lb         $t0, %lo(D_8014DD5C)($t0)
    /* 2C2098 802DFC68 3C0A802E */  lui        $t2, %hi(D_802E2E30)
    /* 2C209C 802DFC6C 4481A800 */  mtc1       $at, $f21
    /* 2C20A0 802DFC70 4480A000 */  mtc1       $zero, $f20
    /* 2C20A4 802DFC74 254A2E30 */  addiu      $t2, $t2, %lo(D_802E2E30)
    /* 2C20A8 802DFC78 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 2C20AC 802DFC7C 93A400AB */  lbu        $a0, 0xAB($sp)
    /* 2C20B0 802DFC80 24050002 */  addiu      $a1, $zero, 0x2
    /* 2C20B4 802DFC84 24060003 */  addiu      $a2, $zero, 0x3
    /* 2C20B8 802DFC88 27A700A0 */  addiu      $a3, $sp, 0xA0
    /* 2C20BC 802DFC8C A7A200A2 */  sh         $v0, 0xA2($sp)
    /* 2C20C0 802DFC90 A7A800A0 */  sh         $t0, 0xA0($sp)
    /* 2C20C4 802DFC94 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2C20C8 802DFC98 A7A800A4 */   sh        $t0, 0xA4($sp)
    /* 2C20CC 802DFC9C 24010003 */  addiu      $at, $zero, 0x3
    /* 2C20D0 802DFCA0 87A800A4 */  lh         $t0, 0xA4($sp)
    /* 2C20D4 802DFCA4 14410006 */  bne        $v0, $at, .L802DFCC0_2C20F0
    /* 2C20D8 802DFCA8 A3A2009F */   sb        $v0, 0x9F($sp)
    /* 2C20DC 802DFCAC 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 2C20E0 802DFCB0 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 2C20E4 802DFCB4 01816824 */  and        $t5, $t4, $at
    /* 2C20E8 802DFCB8 1000000A */  b          .L802DFCE4_2C2114
    /* 2C20EC 802DFCBC AE0D0020 */   sw        $t5, 0x20($s0)
  .L802DFCC0_2C20F0:
    /* 2C20F0 802DFCC0 00027600 */  sll        $t6, $v0, 24
    /* 2C20F4 802DFCC4 000E7E03 */  sra        $t7, $t6, 24
    /* 2C20F8 802DFCC8 24010001 */  addiu      $at, $zero, 0x1
    /* 2C20FC 802DFCCC 15E10005 */  bne        $t7, $at, .L802DFCE4_2C2114
    /* 2C2100 802DFCD0 93A400AB */   lbu       $a0, 0xAB($sp)
    /* 2C2104 802DFCD4 2405019C */  addiu      $a1, $zero, 0x19C
    /* 2C2108 802DFCD8 0C04DD1A */  jal        func_80137468_146418
    /* 2C210C 802DFCDC A7A800A4 */   sh        $t0, 0xA4($sp)
    /* 2C2110 802DFCE0 87A800A4 */  lh         $t0, 0xA4($sp)
  .L802DFCE4_2C2114:
    /* 2C2114 802DFCE4 93A400AB */  lbu        $a0, 0xAB($sp)
    /* 2C2118 802DFCE8 24050200 */  addiu      $a1, $zero, 0x200
    /* 2C211C 802DFCEC 0C0213FA */  jal        func_80084FE8_93F98
    /* 2C2120 802DFCF0 A7A800A4 */   sh        $t0, 0xA4($sp)
    /* 2C2124 802DFCF4 10400163 */  beqz       $v0, .L802E0284_2C26B4
    /* 2C2128 802DFCF8 87A800A4 */   lh        $t0, 0xA4($sp)
    /* 2C212C 802DFCFC 92180036 */  lbu        $t8, 0x36($s0)
    /* 2C2130 802DFD00 24020002 */  addiu      $v0, $zero, 0x2
    /* 2C2134 802DFD04 83B9009F */  lb         $t9, 0x9F($sp)
    /* 2C2138 802DFD08 10580007 */  beq        $v0, $t8, .L802DFD28_2C2158
    /* 2C213C 802DFD0C 3C098015 */   lui       $t1, %hi(D_8014DD50)
    /* 2C2140 802DFD10 13220005 */  beq        $t9, $v0, .L802DFD28_2C2158
    /* 2C2144 802DFD14 8FAB0070 */   lw        $t3, 0x70($sp)
    /* 2C2148 802DFD18 8D6A0020 */  lw         $t2, 0x20($t3)
    /* 2C214C 802DFD1C 314C4000 */  andi       $t4, $t2, 0x4000
    /* 2C2150 802DFD20 51800159 */  beql       $t4, $zero, .L802E0288_2C26B8
    /* 2C2154 802DFD24 8FBF004C */   lw        $ra, 0x4C($sp)
  .L802DFD28_2C2158:
    /* 2C2158 802DFD28 860D000C */  lh         $t5, 0xC($s0)
    /* 2C215C 802DFD2C 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 2C2160 802DFD30 9202001A */  lbu        $v0, 0x1A($s0)
    /* 2C2164 802DFD34 000D7100 */  sll        $t6, $t5, 4
    /* 2C2168 802DFD38 012E7821 */  addu       $t7, $t1, $t6
    /* 2C216C 802DFD3C 85E5000A */  lh         $a1, 0xA($t7)
    /* 2C2170 802DFD40 0008C100 */  sll        $t8, $t0, 4
    /* 2C2174 802DFD44 00025080 */  sll        $t2, $v0, 2
    /* 2C2178 802DFD48 01381821 */  addu       $v1, $t1, $t8
    /* 2C217C 802DFD4C 01425023 */  subu       $t2, $t2, $v0
    /* 2C2180 802DFD50 000A5080 */  sll        $t2, $t2, 2
    /* 2C2184 802DFD54 84660000 */  lh         $a2, 0x0($v1)
    /* 2C2188 802DFD58 3C0C8025 */  lui        $t4, %hi(alienSpecs)
    /* 2C218C 802DFD5C 01425021 */  addu       $t2, $t2, $v0
    /* 2C2190 802DFD60 84790002 */  lh         $t9, 0x2($v1)
    /* 2C2194 802DFD64 846B0004 */  lh         $t3, 0x4($v1)
    /* 2C2198 802DFD68 000A50C0 */  sll        $t2, $t2, 3
    /* 2C219C 802DFD6C 258C6680 */  addiu      $t4, $t4, %lo(alienSpecs)
    /* 2C21A0 802DFD70 014C3821 */  addu       $a3, $t2, $t4
    /* 2C21A4 802DFD74 30A4FFFF */  andi       $a0, $a1, 0xFFFF
    /* 2C21A8 802DFD78 AFA40054 */  sw         $a0, 0x54($sp)
    /* 2C21AC 802DFD7C AFA70058 */  sw         $a3, 0x58($sp)
    /* 2C21B0 802DFD80 AFA3005C */  sw         $v1, 0x5C($sp)
    /* 2C21B4 802DFD84 A7A5009C */  sh         $a1, 0x9C($sp)
    /* 2C21B8 802DFD88 A4E6002C */  sh         $a2, 0x2C($a3)
    /* 2C21BC 802DFD8C AFA60094 */  sw         $a2, 0x94($sp)
    /* 2C21C0 802DFD90 AFB90090 */  sw         $t9, 0x90($sp)
    /* 2C21C4 802DFD94 0C007654 */  jal        coss
    /* 2C21C8 802DFD98 AFAB008C */   sw        $t3, 0x8C($sp)
    /* 2C21CC 802DFD9C A7A20066 */  sh         $v0, 0x66($sp)
    /* 2C21D0 802DFDA0 0C007660 */  jal        sins
    /* 2C21D4 802DFDA4 97A40056 */   lhu       $a0, 0x56($sp)
    /* 2C21D8 802DFDA8 87AE0066 */  lh         $t6, 0x66($sp)
    /* 2C21DC 802DFDAC 8FAD0090 */  lw         $t5, 0x90($sp)
    /* 2C21E0 802DFDB0 8FAF008C */  lw         $t7, 0x8C($sp)
    /* 2C21E4 802DFDB4 448E2000 */  mtc1       $t6, $f4
    /* 2C21E8 802DFDB8 448D8000 */  mtc1       $t5, $f16
    /* 2C21EC 802DFDBC 8FAB0058 */  lw         $t3, 0x58($sp)
    /* 2C21F0 802DFDC0 468021A0 */  cvt.s.w    $f6, $f4
    /* 2C21F4 802DFDC4 44822000 */  mtc1       $v0, $f4
    /* 2C21F8 802DFDC8 468084A1 */  cvt.d.w    $f18, $f16
    /* 2C21FC 802DFDCC 46003221 */  cvt.d.s    $f8, $f6
    /* 2C2200 802DFDD0 468021A0 */  cvt.s.w    $f6, $f4
    /* 2C2204 802DFDD4 46344283 */  div.d      $f10, $f8, $f20
    /* 2C2208 802DFDD8 46003221 */  cvt.d.s    $f8, $f6
    /* 2C220C 802DFDDC 462A9402 */  mul.d      $f16, $f18, $f10
    /* 2C2210 802DFDE0 46344483 */  div.d      $f18, $f8, $f20
    /* 2C2214 802DFDE4 448F5000 */  mtc1       $t7, $f10
    /* 2C2218 802DFDE8 00000000 */  nop
    /* 2C221C 802DFDEC 46805121 */  cvt.d.w    $f4, $f10
    /* 2C2220 802DFDF0 46249182 */  mul.d      $f6, $f18, $f4
    /* 2C2224 802DFDF4 46268201 */  sub.d      $f8, $f16, $f6
    /* 2C2228 802DFDF8 4620428D */  trunc.w.d  $f10, $f8
    /* 2C222C 802DFDFC 44195000 */  mfc1       $t9, $f10
    /* 2C2230 802DFE00 00000000 */  nop
    /* 2C2234 802DFE04 A579002E */  sh         $t9, 0x2E($t3)
    /* 2C2238 802DFE08 0C007660 */  jal        sins
    /* 2C223C 802DFE0C 97A40056 */   lhu       $a0, 0x56($sp)
    /* 2C2240 802DFE10 A7A20066 */  sh         $v0, 0x66($sp)
    /* 2C2244 802DFE14 0C007654 */  jal        coss
    /* 2C2248 802DFE18 97A40056 */   lhu       $a0, 0x56($sp)
    /* 2C224C 802DFE1C 44829000 */  mtc1       $v0, $f18
    /* 2C2250 802DFE20 8FAA008C */  lw         $t2, 0x8C($sp)
    /* 2C2254 802DFE24 87AD0066 */  lh         $t5, 0x66($sp)
    /* 2C2258 802DFE28 46809120 */  cvt.s.w    $f4, $f18
    /* 2C225C 802DFE2C 448A4000 */  mtc1       $t2, $f8
    /* 2C2260 802DFE30 8FAC0090 */  lw         $t4, 0x90($sp)
    /* 2C2264 802DFE34 8FB80058 */  lw         $t8, 0x58($sp)
    /* 2C2268 802DFE38 8FA3005C */  lw         $v1, 0x5C($sp)
    /* 2C226C 802DFE3C 468042A1 */  cvt.d.w    $f10, $f8
    /* 2C2270 802DFE40 448D4000 */  mtc1       $t5, $f8
    /* 2C2274 802DFE44 87A5009C */  lh         $a1, 0x9C($sp)
    /* 2C2278 802DFE48 46002421 */  cvt.d.s    $f16, $f4
    /* 2C227C 802DFE4C 448C2000 */  mtc1       $t4, $f4
    /* 2C2280 802DFE50 46348183 */  div.d      $f6, $f16, $f20
    /* 2C2284 802DFE54 46802421 */  cvt.d.w    $f16, $f4
    /* 2C2288 802DFE58 462A3482 */  mul.d      $f18, $f6, $f10
    /* 2C228C 802DFE5C 468041A0 */  cvt.s.w    $f6, $f8
    /* 2C2290 802DFE60 460032A1 */  cvt.d.s    $f10, $f6
    /* 2C2294 802DFE64 46345103 */  div.d      $f4, $f10, $f20
    /* 2C2298 802DFE68 46248202 */  mul.d      $f8, $f16, $f4
    /* 2C229C 802DFE6C 46289180 */  add.d      $f6, $f18, $f8
    /* 2C22A0 802DFE70 4620328D */  trunc.w.d  $f10, $f6
    /* 2C22A4 802DFE74 440F5000 */  mfc1       $t7, $f10
    /* 2C22A8 802DFE78 00000000 */  nop
    /* 2C22AC 802DFE7C A70F0030 */  sh         $t7, 0x30($t8)
    /* 2C22B0 802DFE80 9479000A */  lhu        $t9, 0xA($v1)
    /* 2C22B4 802DFE84 00B95021 */  addu       $t2, $a1, $t9
    /* 2C22B8 802DFE88 3144FFFF */  andi       $a0, $t2, 0xFFFF
    /* 2C22BC 802DFE8C 0C007660 */  jal        sins
    /* 2C22C0 802DFE90 AFA40054 */   sw        $a0, 0x54($sp)
    /* 2C22C4 802DFE94 A7A20064 */  sh         $v0, 0x64($sp)
    /* 2C22C8 802DFE98 0C007654 */  jal        coss
    /* 2C22CC 802DFE9C 97A40056 */   lhu       $a0, 0x56($sp)
    /* 2C22D0 802DFEA0 44822000 */  mtc1       $v0, $f4
    /* 2C22D4 802DFEA4 87AC0064 */  lh         $t4, 0x64($sp)
    /* 2C22D8 802DFEA8 3C01802E */  lui        $at, %hi(D_802E3070)
    /* 2C22DC 802DFEAC 468024A0 */  cvt.s.w    $f18, $f4
    /* 2C22E0 802DFEB0 D4303070 */  ldc1       $f16, %lo(D_802E3070)($at)
    /* 2C22E4 802DFEB4 3C01802E */  lui        $at, %hi(D_802E3078)
    /* 2C22E8 802DFEB8 D4243078 */  ldc1       $f4, %lo(D_802E3078)($at)
    /* 2C22EC 802DFEBC 8FA30058 */  lw         $v1, 0x58($sp)
    /* 2C22F0 802DFEC0 97A40056 */  lhu        $a0, 0x56($sp)
    /* 2C22F4 802DFEC4 46009221 */  cvt.d.s    $f8, $f18
    /* 2C22F8 802DFEC8 448C9000 */  mtc1       $t4, $f18
    /* 2C22FC 802DFECC 46344183 */  div.d      $f6, $f8, $f20
    /* 2C2300 802DFED0 846D002E */  lh         $t5, 0x2E($v1)
    /* 2C2304 802DFED4 46809220 */  cvt.s.w    $f8, $f18
    /* 2C2308 802DFED8 46268282 */  mul.d      $f10, $f16, $f6
    /* 2C230C 802DFEDC 46004421 */  cvt.d.s    $f16, $f8
    /* 2C2310 802DFEE0 46348183 */  div.d      $f6, $f16, $f20
    /* 2C2314 802DFEE4 448D8000 */  mtc1       $t5, $f16
    /* 2C2318 802DFEE8 46262482 */  mul.d      $f18, $f4, $f6
    /* 2C231C 802DFEEC 46808121 */  cvt.d.w    $f4, $f16
    /* 2C2320 802DFEF0 46325201 */  sub.d      $f8, $f10, $f18
    /* 2C2324 802DFEF4 46282180 */  add.d      $f6, $f4, $f8
    /* 2C2328 802DFEF8 4620328D */  trunc.w.d  $f10, $f6
    /* 2C232C 802DFEFC 440F5000 */  mfc1       $t7, $f10
    /* 2C2330 802DFF00 0C007654 */  jal        coss
    /* 2C2334 802DFF04 A46F002E */   sh        $t7, 0x2E($v1)
    /* 2C2338 802DFF08 A7A20064 */  sh         $v0, 0x64($sp)
    /* 2C233C 802DFF0C 0C007660 */  jal        sins
    /* 2C2340 802DFF10 97A40056 */   lhu       $a0, 0x56($sp)
    /* 2C2344 802DFF14 44828000 */  mtc1       $v0, $f16
    /* 2C2348 802DFF18 87B80064 */  lh         $t8, 0x64($sp)
    /* 2C234C 802DFF1C 3C01802E */  lui        $at, %hi(D_802E3080)
    /* 2C2350 802DFF20 46808120 */  cvt.s.w    $f4, $f16
    /* 2C2354 802DFF24 D4323080 */  ldc1       $f18, %lo(D_802E3080)($at)
    /* 2C2358 802DFF28 3C01802E */  lui        $at, %hi(D_802E3088)
    /* 2C235C 802DFF2C D4303088 */  ldc1       $f16, %lo(D_802E3088)($at)
    /* 2C2360 802DFF30 8FB90058 */  lw         $t9, 0x58($sp)
    /* 2C2364 802DFF34 2405003C */  addiu      $a1, $zero, 0x3C
    /* 2C2368 802DFF38 46002221 */  cvt.d.s    $f8, $f4
    /* 2C236C 802DFF3C 44982000 */  mtc1       $t8, $f4
    /* 2C2370 802DFF40 46344183 */  div.d      $f6, $f8, $f20
    /* 2C2374 802DFF44 872B0030 */  lh         $t3, 0x30($t9)
    /* 2C2378 802DFF48 24060001 */  addiu      $a2, $zero, 0x1
    /* 2C237C 802DFF4C 46802220 */  cvt.s.w    $f8, $f4
    /* 2C2380 802DFF50 46269282 */  mul.d      $f10, $f18, $f6
    /* 2C2384 802DFF54 460044A1 */  cvt.d.s    $f18, $f8
    /* 2C2388 802DFF58 46349183 */  div.d      $f6, $f18, $f20
    /* 2C238C 802DFF5C 448B9000 */  mtc1       $t3, $f18
    /* 2C2390 802DFF60 46268102 */  mul.d      $f4, $f16, $f6
    /* 2C2394 802DFF64 46809421 */  cvt.d.w    $f16, $f18
    /* 2C2398 802DFF68 46245200 */  add.d      $f8, $f10, $f4
    /* 2C239C 802DFF6C 46288180 */  add.d      $f6, $f16, $f8
    /* 2C23A0 802DFF70 4620328D */  trunc.w.d  $f10, $f6
    /* 2C23A4 802DFF74 440C5000 */  mfc1       $t4, $f10
    /* 2C23A8 802DFF78 00000000 */  nop
    /* 2C23AC 802DFF7C A72C0030 */  sh         $t4, 0x30($t9)
    /* 2C23B0 802DFF80 0C021E69 */  jal        func_800879A4_96954
    /* 2C23B4 802DFF84 93A400AB */   lbu       $a0, 0xAB($sp)
    /* 2C23B8 802DFF88 504000BF */  beql       $v0, $zero, .L802E0288_2C26B8
    /* 2C23BC 802DFF8C 8FBF004C */   lw        $ra, 0x4C($sp)
    /* 2C23C0 802DFF90 8E0D0020 */  lw         $t5, 0x20($s0)
    /* 2C23C4 802DFF94 35AE2000 */  ori        $t6, $t5, 0x2000
    /* 2C23C8 802DFF98 100000BA */  b          .L802E0284_2C26B4
    /* 2C23CC 802DFF9C AE0E0020 */   sw        $t6, 0x20($s0)
  .L802DFFA0_2C23D0:
    /* 2C23D0 802DFFA0 0C0213FA */  jal        func_80084FE8_93F98
    /* 2C23D4 802DFFA4 AFA9005C */   sw        $t1, 0x5C($sp)
    /* 2C23D8 802DFFA8 104000A1 */  beqz       $v0, .L802E0230_2C2660
    /* 2C23DC 802DFFAC 8FA9005C */   lw        $t1, 0x5C($sp)
    /* 2C23E0 802DFFB0 8FAC0070 */  lw         $t4, 0x70($sp)
    /* 2C23E4 802DFFB4 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 2C23E8 802DFFB8 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 2C23EC 802DFFBC 8D860020 */  lw         $a2, 0x20($t4)
    /* 2C23F0 802DFFC0 860F0000 */  lh         $t7, 0x0($s0)
    /* 2C23F4 802DFFC4 860B0004 */  lh         $t3, 0x4($s0)
    /* 2C23F8 802DFFC8 84780000 */  lh         $t8, 0x0($v1)
    /* 2C23FC 802DFFCC 846A0004 */  lh         $t2, 0x4($v1)
    /* 2C2400 802DFFD0 30D94000 */  andi       $t9, $a2, 0x4000
    /* 2C2404 802DFFD4 03203025 */  or         $a2, $t9, $zero
    /* 2C2408 802DFFD8 01F82023 */  subu       $a0, $t7, $t8
    /* 2C240C 802DFFDC 17200011 */  bnez       $t9, .L802E0024_2C2454
    /* 2C2410 802DFFE0 016A2823 */   subu      $a1, $t3, $t2
    /* 2C2414 802DFFE4 00840019 */  multu      $a0, $a0
    /* 2C2418 802DFFE8 3C010002 */  lui        $at, (0x27101 >> 16)
    /* 2C241C 802DFFEC 34217101 */  ori        $at, $at, (0x27101 & 0xFFFF)
    /* 2C2420 802DFFF0 00006812 */  mflo       $t5
    /* 2C2424 802DFFF4 00000000 */  nop
    /* 2C2428 802DFFF8 00000000 */  nop
    /* 2C242C 802DFFFC 00A50019 */  multu      $a1, $a1
    /* 2C2430 802E0000 00007012 */  mflo       $t6
    /* 2C2434 802E0004 01AE1021 */  addu       $v0, $t5, $t6
    /* 2C2438 802E0008 0041082A */  slt        $at, $v0, $at
    /* 2C243C 802E000C 14200005 */  bnez       $at, .L802E0024_2C2454
    /* 2C2440 802E0010 3C010015 */   lui       $at, (0x15F900 >> 16)
    /* 2C2444 802E0014 3421F900 */  ori        $at, $at, (0x15F900 & 0xFFFF)
    /* 2C2448 802E0018 0041082A */  slt        $at, $v0, $at
    /* 2C244C 802E001C 54200014 */  bnel       $at, $zero, .L802E0070_2C24A0
    /* 2C2450 802E0020 8E0B0020 */   lw        $t3, 0x20($s0)
  .L802E0024_2C2454:
    /* 2C2454 802E0024 50C00098 */  beql       $a2, $zero, .L802E0288_2C26B8
    /* 2C2458 802E0028 8FBF004C */   lw        $ra, 0x4C($sp)
    /* 2C245C 802E002C 00840019 */  multu      $a0, $a0
    /* 2C2460 802E0030 3C010004 */  lui        $at, (0x4E201 >> 16)
    /* 2C2464 802E0034 3421E201 */  ori        $at, $at, (0x4E201 & 0xFFFF)
    /* 2C2468 802E0038 00007812 */  mflo       $t7
    /* 2C246C 802E003C 00000000 */  nop
    /* 2C2470 802E0040 00000000 */  nop
    /* 2C2474 802E0044 00A50019 */  multu      $a1, $a1
    /* 2C2478 802E0048 0000C012 */  mflo       $t8
    /* 2C247C 802E004C 01F81021 */  addu       $v0, $t7, $t8
    /* 2C2480 802E0050 0041082A */  slt        $at, $v0, $at
    /* 2C2484 802E0054 1420008B */  bnez       $at, .L802E0284_2C26B4
    /* 2C2488 802E0058 3C01002B */   lui       $at, (0x2BF200 >> 16)
    /* 2C248C 802E005C 3421F200 */  ori        $at, $at, (0x2BF200 & 0xFFFF)
    /* 2C2490 802E0060 0041082A */  slt        $at, $v0, $at
    /* 2C2494 802E0064 50200088 */  beql       $at, $zero, .L802E0288_2C26B8
    /* 2C2498 802E0068 8FBF004C */   lw        $ra, 0x4C($sp)
    /* 2C249C 802E006C 8E0B0020 */  lw         $t3, 0x20($s0)
  .L802E0070_2C24A0:
    /* 2C24A0 802E0070 860C000C */  lh         $t4, 0xC($s0)
    /* 2C24A4 802E0074 3C0D8015 */  lui        $t5, %hi(D_8014DD50)
    /* 2C24A8 802E0078 25ADDD50 */  addiu      $t5, $t5, %lo(D_8014DD50)
    /* 2C24AC 802E007C 356A1000 */  ori        $t2, $t3, 0x1000
    /* 2C24B0 802E0080 000CC900 */  sll        $t9, $t4, 4
    /* 2C24B4 802E0084 AE0A0020 */  sw         $t2, 0x20($s0)
    /* 2C24B8 802E0088 A2000036 */  sb         $zero, 0x36($s0)
    /* 2C24BC 802E008C 032D7021 */  addu       $t6, $t9, $t5
    /* 2C24C0 802E0090 9202001A */  lbu        $v0, 0x1A($s0)
    /* 2C24C4 802E0094 81C8000C */  lb         $t0, 0xC($t6)
    /* 2C24C8 802E0098 3C0C8025 */  lui        $t4, %hi(alienSpecs)
    /* 2C24CC 802E009C 00025080 */  sll        $t2, $v0, 2
    /* 2C24D0 802E00A0 00087900 */  sll        $t7, $t0, 4
    /* 2C24D4 802E00A4 01ED1821 */  addu       $v1, $t7, $t5
    /* 2C24D8 802E00A8 01425023 */  subu       $t2, $t2, $v0
    /* 2C24DC 802E00AC 000A5080 */  sll        $t2, $t2, 2
    /* 2C24E0 802E00B0 84660000 */  lh         $a2, 0x0($v1)
    /* 2C24E4 802E00B4 01425021 */  addu       $t2, $t2, $v0
    /* 2C24E8 802E00B8 84780002 */  lh         $t8, 0x2($v1)
    /* 2C24EC 802E00BC 846B0004 */  lh         $t3, 0x4($v1)
    /* 2C24F0 802E00C0 000A50C0 */  sll        $t2, $t2, 3
    /* 2C24F4 802E00C4 258C6680 */  addiu      $t4, $t4, %lo(alienSpecs)
    /* 2C24F8 802E00C8 014C2821 */  addu       $a1, $t2, $t4
    /* 2C24FC 802E00CC AFA50058 */  sw         $a1, 0x58($sp)
    /* 2C2500 802E00D0 3404D000 */  ori        $a0, $zero, 0xD000
    /* 2C2504 802E00D4 A4A60020 */  sh         $a2, 0x20($a1)
    /* 2C2508 802E00D8 AFA60094 */  sw         $a2, 0x94($sp)
    /* 2C250C 802E00DC AFB80090 */  sw         $t8, 0x90($sp)
    /* 2C2510 802E00E0 0C007654 */  jal        coss
    /* 2C2514 802E00E4 AFAB008C */   sw        $t3, 0x8C($sp)
    /* 2C2518 802E00E8 A7A20066 */  sh         $v0, 0x66($sp)
    /* 2C251C 802E00EC 0C007660 */  jal        sins
    /* 2C2520 802E00F0 3404D000 */   ori       $a0, $zero, 0xD000
    /* 2C2524 802E00F4 87AE0066 */  lh         $t6, 0x66($sp)
    /* 2C2528 802E00F8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C252C 802E00FC 4481A800 */  mtc1       $at, $f21
    /* 2C2530 802E0100 448E8000 */  mtc1       $t6, $f16
    /* 2C2534 802E0104 4480A000 */  mtc1       $zero, $f20
    /* 2C2538 802E0108 8FB90090 */  lw         $t9, 0x90($sp)
    /* 2C253C 802E010C 46808220 */  cvt.s.w    $f8, $f16
    /* 2C2540 802E0110 44828000 */  mtc1       $v0, $f16
    /* 2C2544 802E0114 44992000 */  mtc1       $t9, $f4
    /* 2C2548 802E0118 8FAF008C */  lw         $t7, 0x8C($sp)
    /* 2C254C 802E011C 8FAB0058 */  lw         $t3, 0x58($sp)
    /* 2C2550 802E0120 468024A1 */  cvt.d.w    $f18, $f4
    /* 2C2554 802E0124 3404D000 */  ori        $a0, $zero, 0xD000
    /* 2C2558 802E0128 460041A1 */  cvt.d.s    $f6, $f8
    /* 2C255C 802E012C 46808220 */  cvt.s.w    $f8, $f16
    /* 2C2560 802E0130 46343283 */  div.d      $f10, $f6, $f20
    /* 2C2564 802E0134 460041A1 */  cvt.d.s    $f6, $f8
    /* 2C2568 802E0138 462A9102 */  mul.d      $f4, $f18, $f10
    /* 2C256C 802E013C 46343483 */  div.d      $f18, $f6, $f20
    /* 2C2570 802E0140 448F5000 */  mtc1       $t7, $f10
    /* 2C2574 802E0144 00000000 */  nop
    /* 2C2578 802E0148 46805421 */  cvt.d.w    $f16, $f10
    /* 2C257C 802E014C 46309202 */  mul.d      $f8, $f18, $f16
    /* 2C2580 802E0150 46282181 */  sub.d      $f6, $f4, $f8
    /* 2C2584 802E0154 4620328D */  trunc.w.d  $f10, $f6
    /* 2C2588 802E0158 44185000 */  mfc1       $t8, $f10
    /* 2C258C 802E015C 0C007660 */  jal        sins
    /* 2C2590 802E0160 A5780022 */   sh        $t8, 0x22($t3)
    /* 2C2594 802E0164 A7A20066 */  sh         $v0, 0x66($sp)
    /* 2C2598 802E0168 0C007654 */  jal        coss
    /* 2C259C 802E016C 3404D000 */   ori       $a0, $zero, 0xD000
    /* 2C25A0 802E0170 44829000 */  mtc1       $v0, $f18
    /* 2C25A4 802E0174 8FAA008C */  lw         $t2, 0x8C($sp)
    /* 2C25A8 802E0178 87B90066 */  lh         $t9, 0x66($sp)
    /* 2C25AC 802E017C 46809420 */  cvt.s.w    $f16, $f18
    /* 2C25B0 802E0180 448A3000 */  mtc1       $t2, $f6
    /* 2C25B4 802E0184 8FAC0090 */  lw         $t4, 0x90($sp)
    /* 2C25B8 802E0188 8FAD0058 */  lw         $t5, 0x58($sp)
    /* 2C25BC 802E018C 27B8008C */  addiu      $t8, $sp, 0x8C
    /* 2C25C0 802E0190 468032A1 */  cvt.d.w    $f10, $f6
    /* 2C25C4 802E0194 44993000 */  mtc1       $t9, $f6
    /* 2C25C8 802E0198 02002025 */  or         $a0, $s0, $zero
    /* 2C25CC 802E019C 00002825 */  or         $a1, $zero, $zero
    /* 2C25D0 802E01A0 46008121 */  cvt.d.s    $f4, $f16
    /* 2C25D4 802E01A4 448C8000 */  mtc1       $t4, $f16
    /* 2C25D8 802E01A8 46342203 */  div.d      $f8, $f4, $f20
    /* 2C25DC 802E01AC 27A60094 */  addiu      $a2, $sp, 0x94
    /* 2C25E0 802E01B0 27A70090 */  addiu      $a3, $sp, 0x90
    /* 2C25E4 802E01B4 46808121 */  cvt.d.w    $f4, $f16
    /* 2C25E8 802E01B8 462A4482 */  mul.d      $f18, $f8, $f10
    /* 2C25EC 802E01BC 46803220 */  cvt.s.w    $f8, $f6
    /* 2C25F0 802E01C0 460042A1 */  cvt.d.s    $f10, $f8
    /* 2C25F4 802E01C4 46345403 */  div.d      $f16, $f10, $f20
    /* 2C25F8 802E01C8 46302182 */  mul.d      $f6, $f4, $f16
    /* 2C25FC 802E01CC 46269200 */  add.d      $f8, $f18, $f6
    /* 2C2600 802E01D0 4620428D */  trunc.w.d  $f10, $f8
    /* 2C2604 802E01D4 440F5000 */  mfc1       $t7, $f10
    /* 2C2608 802E01D8 00000000 */  nop
    /* 2C260C 802E01DC A5AF0024 */  sh         $t7, 0x24($t5)
    /* 2C2610 802E01E0 0C04A141 */  jal        func_80128504_1374B4
    /* 2C2614 802E01E4 AFB80010 */   sw        $t8, 0x10($sp)
    /* 2C2618 802E01E8 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* 2C261C 802E01EC 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* 2C2620 802E01F0 8FAC0090 */  lw         $t4, 0x90($sp)
    /* 2C2624 802E01F4 3C01447A */  lui        $at, (0x447A0000 >> 16)
    /* 2C2628 802E01F8 856A0002 */  lh         $t2, 0x2($t3)
    /* 2C262C 802E01FC 44819000 */  mtc1       $at, $f18
    /* 2C2630 802E0200 014CC823 */  subu       $t9, $t2, $t4
    /* 2C2634 802E0204 272E00C8 */  addiu      $t6, $t9, 0xC8
    /* 2C2638 802E0208 448E2000 */  mtc1       $t6, $f4
    /* 2C263C 802E020C 00000000 */  nop
    /* 2C2640 802E0210 46802420 */  cvt.s.w    $f16, $f4
    /* 2C2644 802E0214 0C000DA0 */  jal        func_80003680_4280
    /* 2C2648 802E0218 46128303 */   div.s     $f12, $f16, $f18
    /* 2C264C 802E021C 240F3000 */  addiu      $t7, $zero, 0x3000
    /* 2C2650 802E0220 01E26823 */  subu       $t5, $t7, $v0
    /* 2C2654 802E0224 3C01802E */  lui        $at, %hi(D_802E2E1A)
    /* 2C2658 802E0228 10000016 */  b          .L802E0284_2C26B4
    /* 2C265C 802E022C A42D2E1A */   sh        $t5, %lo(D_802E2E1A)($at)
  .L802E0230_2C2660:
    /* 2C2660 802E0230 8E180020 */  lw         $t8, 0x20($s0)
    /* 2C2664 802E0234 00185800 */  sll        $t3, $t8, 0
    /* 2C2668 802E0238 05630013 */  bgezl      $t3, .L802E0288_2C26B8
    /* 2C266C 802E023C 8FBF004C */   lw        $ra, 0x4C($sp)
    /* 2C2670 802E0240 8D2A0020 */  lw         $t2, 0x20($t1)
    /* 2C2674 802E0244 314C8000 */  andi       $t4, $t2, 0x8000
    /* 2C2678 802E0248 5580000F */  bnel       $t4, $zero, .L802E0288_2C26B8
    /* 2C267C 802E024C 8FBF004C */   lw        $ra, 0x4C($sp)
    /* 2C2680 802E0250 0C000E38 */  jal        func_800038E0_44E0
    /* 2C2684 802E0254 AFA9005C */   sw        $t1, 0x5C($sp)
    /* 2C2688 802E0258 2401000A */  addiu      $at, $zero, 0xA
    /* 2C268C 802E025C 0041001A */  div        $zero, $v0, $at
    /* 2C2690 802E0260 0000C810 */  mfhi       $t9
    /* 2C2694 802E0264 8FA9005C */  lw         $t1, 0x5C($sp)
    /* 2C2698 802E0268 17200006 */  bnez       $t9, .L802E0284_2C26B4
    /* 2C269C 802E026C 8FAE0070 */   lw        $t6, 0x70($sp)
    /* 2C26A0 802E0270 8DCF0020 */  lw         $t7, 0x20($t6)
    /* 2C26A4 802E0274 24180028 */  addiu      $t8, $zero, 0x28
    /* 2C26A8 802E0278 35ED4000 */  ori        $t5, $t7, 0x4000
    /* 2C26AC 802E027C ADCD0020 */  sw         $t5, 0x20($t6)
    /* 2C26B0 802E0280 A538002C */  sh         $t8, 0x2C($t1)
  .L802E0284_2C26B4:
    /* 2C26B4 802E0284 8FBF004C */  lw         $ra, 0x4C($sp)
  .L802E0288_2C26B8:
    /* 2C26B8 802E0288 D7B40040 */  ldc1       $f20, 0x40($sp)
    /* 2C26BC 802E028C 8FB00048 */  lw         $s0, 0x48($sp)
    /* 2C26C0 802E0290 03E00008 */  jr         $ra
    /* 2C26C4 802E0294 27BD00A8 */   addiu     $sp, $sp, 0xA8
endlabel func_802DF98C_2C1DBC
