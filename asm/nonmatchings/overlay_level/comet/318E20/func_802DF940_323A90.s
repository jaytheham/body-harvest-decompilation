nonmatching func_802DF940_323A90, 0x528

glabel func_802DF940_323A90
    /* 323A90 802DF940 3C0E8015 */  lui        $t6, %hi(D_8014D17E)
    /* 323A94 802DF944 85CED17E */  lh         $t6, %lo(D_8014D17E)($t6)
    /* 323A98 802DF948 27BDFF60 */  addiu      $sp, $sp, -0xA0
    /* 323A9C 802DF94C AFB00040 */  sw         $s0, 0x40($sp)
    /* 323AA0 802DF950 000E7880 */  sll        $t7, $t6, 2
    /* 323AA4 802DF954 3C108005 */  lui        $s0, %hi(alienInstances)
    /* 323AA8 802DF958 01EE7821 */  addu       $t7, $t7, $t6
    /* 323AAC 802DF95C 26108198 */  addiu      $s0, $s0, %lo(alienInstances)
    /* 323AB0 802DF960 000F7900 */  sll        $t7, $t7, 4
    /* 323AB4 802DF964 3C088015 */  lui        $t0, %hi(D_8014D17C)
    /* 323AB8 802DF968 020F1021 */  addu       $v0, $s0, $t7
    /* 323ABC 802DF96C 2508D17C */  addiu      $t0, $t0, %lo(D_8014D17C)
    /* 323AC0 802DF970 85030000 */  lh         $v1, 0x0($t0)
    /* 323AC4 802DF974 84580000 */  lh         $t8, 0x0($v0)
    /* 323AC8 802DF978 84590002 */  lh         $t9, 0x2($v0)
    /* 323ACC 802DF97C 84490004 */  lh         $t1, 0x4($v0)
    /* 323AD0 802DF980 AFBF004C */  sw         $ra, 0x4C($sp)
    /* 323AD4 802DF984 AFB20048 */  sw         $s2, 0x48($sp)
    /* 323AD8 802DF988 AFB10044 */  sw         $s1, 0x44($sp)
    /* 323ADC 802DF98C AFB80094 */  sw         $t8, 0x94($sp)
    /* 323AE0 802DF990 AFB90090 */  sw         $t9, 0x90($sp)
    /* 323AE4 802DF994 14600028 */  bnez       $v1, .L802DFA38_323B88
    /* 323AE8 802DF998 AFA9008C */   sw        $t1, 0x8C($sp)
    /* 323AEC 802DF99C 87B10096 */  lh         $s1, 0x96($sp)
    /* 323AF0 802DF9A0 87B00092 */  lh         $s0, 0x92($sp)
    /* 323AF4 802DF9A4 87B2008E */  lh         $s2, 0x8E($sp)
    /* 323AF8 802DF9A8 00112400 */  sll        $a0, $s1, 16
    /* 323AFC 802DF9AC 00102C00 */  sll        $a1, $s0, 16
    /* 323B00 802DF9B0 00123400 */  sll        $a2, $s2, 16
    /* 323B04 802DF9B4 240A0100 */  addiu      $t2, $zero, 0x100
    /* 323B08 802DF9B8 3C01802E */  lui        $at, %hi(D_802E7C58)
    /* 323B0C 802DF9BC 00066C03 */  sra        $t5, $a2, 16
    /* 323B10 802DF9C0 00056403 */  sra        $t4, $a1, 16
    /* 323B14 802DF9C4 00045C03 */  sra        $t3, $a0, 16
    /* 323B18 802DF9C8 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 323B1C 802DF9CC 240F006E */  addiu      $t7, $zero, 0x6E
    /* 323B20 802DF9D0 A42A7C58 */  sh         $t2, %lo(D_802E7C58)($at)
    /* 323B24 802DF9D4 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 323B28 802DF9D8 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 323B2C 802DF9DC 01602025 */  or         $a0, $t3, $zero
    /* 323B30 802DF9E0 01802825 */  or         $a1, $t4, $zero
    /* 323B34 802DF9E4 01A03025 */  or         $a2, $t5, $zero
    /* 323B38 802DF9E8 3407C800 */  ori        $a3, $zero, 0xC800
    /* 323B3C 802DF9EC 0C034379 */  jal        func_800D0DE4_DFD94
    /* 323B40 802DF9F0 AFA00010 */   sw        $zero, 0x10($sp)
    /* 323B44 802DF9F4 3C01802E */  lui        $at, %hi(D_802E7C6C)
    /* 323B48 802DF9F8 A4227C6C */  sh         $v0, %lo(D_802E7C6C)($at)
    /* 323B4C 802DF9FC 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 323B50 802DFA00 44812000 */  mtc1       $at, $f4
    /* 323B54 802DFA04 00113400 */  sll        $a2, $s1, 16
    /* 323B58 802DFA08 00103C00 */  sll        $a3, $s0, 16
    /* 323B5C 802DFA0C 0007CC03 */  sra        $t9, $a3, 16
    /* 323B60 802DFA10 0006C403 */  sra        $t8, $a2, 16
    /* 323B64 802DFA14 03003025 */  or         $a2, $t8, $zero
    /* 323B68 802DFA18 03203825 */  or         $a3, $t9, $zero
    /* 323B6C 802DFA1C 00002025 */  or         $a0, $zero, $zero
    /* 323B70 802DFA20 2405018A */  addiu      $a1, $zero, 0x18A
    /* 323B74 802DFA24 AFB20010 */  sw         $s2, 0x10($sp)
    /* 323B78 802DFA28 0C04DC6E */  jal        func_801371B8_146168
    /* 323B7C 802DFA2C E7A40014 */   swc1      $f4, 0x14($sp)
    /* 323B80 802DFA30 10000102 */  b          .L802DFE3C_323F8C
    /* 323B84 802DFA34 00000000 */   nop
  .L802DFA38_323B88:
    /* 323B88 802DFA38 28610039 */  slti       $at, $v1, 0x39
    /* 323B8C 802DFA3C 50200088 */  beql       $at, $zero, .L802DFC60_323DB0
    /* 323B90 802DFA40 24010039 */   addiu     $at, $zero, 0x39
    /* 323B94 802DFA44 3C10802E */  lui        $s0, %hi(D_802E7C58)
    /* 323B98 802DFA48 26107C58 */  addiu      $s0, $s0, %lo(D_802E7C58)
    /* 323B9C 802DFA4C 86090000 */  lh         $t1, 0x0($s0)
    /* 323BA0 802DFA50 252AFFFC */  addiu      $t2, $t1, -0x4
    /* 323BA4 802DFA54 0C0B7C62 */  jal        func_802DF188_3232D8
    /* 323BA8 802DFA58 A60A0000 */   sh        $t2, 0x0($s0)
    /* 323BAC 802DFA5C 3C048015 */  lui        $a0, %hi(D_8014D17E)
    /* 323BB0 802DFA60 8484D17E */  lh         $a0, %lo(D_8014D17E)($a0)
    /* 323BB4 802DFA64 0C04DD1A */  jal        func_80137468_146418
    /* 323BB8 802DFA68 24050260 */   addiu     $a1, $zero, 0x260
    /* 323BBC 802DFA6C 86050000 */  lh         $a1, 0x0($s0)
    /* 323BC0 802DFA70 24010019 */  addiu      $at, $zero, 0x19
    /* 323BC4 802DFA74 3C04802E */  lui        $a0, %hi(D_802E7C6C)
    /* 323BC8 802DFA78 00055880 */  sll        $t3, $a1, 2
    /* 323BCC 802DFA7C 01655823 */  subu       $t3, $t3, $a1
    /* 323BD0 802DFA80 000B58C0 */  sll        $t3, $t3, 3
    /* 323BD4 802DFA84 01655821 */  addu       $t3, $t3, $a1
    /* 323BD8 802DFA88 000B58C0 */  sll        $t3, $t3, 3
    /* 323BDC 802DFA8C 0161001A */  div        $zero, $t3, $at
    /* 323BE0 802DFA90 00006012 */  mflo       $t4
    /* 323BE4 802DFA94 3185FFFF */  andi       $a1, $t4, 0xFFFF
    /* 323BE8 802DFA98 0C0343F8 */  jal        func_800D0FE0_DFF90
    /* 323BEC 802DFA9C 84847C6C */   lh        $a0, %lo(D_802E7C6C)($a0)
    /* 323BF0 802DFAA0 87B10096 */  lh         $s1, 0x96($sp)
    /* 323BF4 802DFAA4 87B00092 */  lh         $s0, 0x92($sp)
    /* 323BF8 802DFAA8 87B2008E */  lh         $s2, 0x8E($sp)
    /* 323BFC 802DFAAC 00112C00 */  sll        $a1, $s1, 16
    /* 323C00 802DFAB0 00103400 */  sll        $a2, $s0, 16
    /* 323C04 802DFAB4 00123C00 */  sll        $a3, $s2, 16
    /* 323C08 802DFAB8 0007C403 */  sra        $t8, $a3, 16
    /* 323C0C 802DFABC 00067C03 */  sra        $t7, $a2, 16
    /* 323C10 802DFAC0 00057403 */  sra        $t6, $a1, 16
    /* 323C14 802DFAC4 3C04802E */  lui        $a0, %hi(D_802E7C6C)
    /* 323C18 802DFAC8 84847C6C */  lh         $a0, %lo(D_802E7C6C)($a0)
    /* 323C1C 802DFACC 01C02825 */  or         $a1, $t6, $zero
    /* 323C20 802DFAD0 01E03025 */  or         $a2, $t7, $zero
    /* 323C24 802DFAD4 0C0343D7 */  jal        func_800D0F5C_DFF0C
    /* 323C28 802DFAD8 03003825 */   or        $a3, $t8, $zero
    /* 323C2C 802DFADC 0C000E38 */  jal        func_800038E0_44E0
    /* 323C30 802DFAE0 00000000 */   nop
    /* 323C34 802DFAE4 0C000E38 */  jal        func_800038E0_44E0
    /* 323C38 802DFAE8 AFA2009C */   sw        $v0, 0x9C($sp)
    /* 323C3C 802DFAEC 97A4009E */  lhu        $a0, 0x9E($sp)
    /* 323C40 802DFAF0 0002C843 */  sra        $t9, $v0, 1
    /* 323C44 802DFAF4 AFB90098 */  sw         $t9, 0x98($sp)
    /* 323C48 802DFAF8 0C007660 */  jal        sins
    /* 323C4C 802DFAFC AFA40058 */   sw        $a0, 0x58($sp)
    /* 323C50 802DFB00 97A4009A */  lhu        $a0, 0x9A($sp)
    /* 323C54 802DFB04 A7A2006E */  sh         $v0, 0x6E($sp)
    /* 323C58 802DFB08 0C007654 */  jal        coss
    /* 323C5C 802DFB0C AFA40054 */   sw        $a0, 0x54($sp)
    /* 323C60 802DFB10 A7A20070 */  sh         $v0, 0x70($sp)
    /* 323C64 802DFB14 0C007660 */  jal        sins
    /* 323C68 802DFB18 97A40056 */   lhu       $a0, 0x56($sp)
    /* 323C6C 802DFB1C A7A20072 */  sh         $v0, 0x72($sp)
    /* 323C70 802DFB20 0C007654 */  jal        coss
    /* 323C74 802DFB24 97A4005A */   lhu       $a0, 0x5A($sp)
    /* 323C78 802DFB28 A7A20074 */  sh         $v0, 0x74($sp)
    /* 323C7C 802DFB2C 0C007654 */  jal        coss
    /* 323C80 802DFB30 97A40056 */   lhu       $a0, 0x56($sp)
    /* 323C84 802DFB34 87AD006E */  lh         $t5, 0x6E($sp)
    /* 323C88 802DFB38 87AC0070 */  lh         $t4, 0x70($sp)
    /* 323C8C 802DFB3C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 323C90 802DFB40 448D9000 */  mtc1       $t5, $f18
    /* 323C94 802DFB44 448C3000 */  mtc1       $t4, $f6
    /* 323C98 802DFB48 44810800 */  mtc1       $at, $f1
    /* 323C9C 802DFB4C 46809120 */  cvt.s.w    $f4, $f18
    /* 323CA0 802DFB50 44800000 */  mtc1       $zero, $f0
    /* 323CA4 802DFB54 3C01802E */  lui        $at, %hi(D_802E7B98)
    /* 323CA8 802DFB58 D4227B98 */  ldc1       $f2, %lo(D_802E7B98)($at)
    /* 323CAC 802DFB5C 00112400 */  sll        $a0, $s1, 16
    /* 323CB0 802DFB60 46803220 */  cvt.s.w    $f8, $f6
    /* 323CB4 802DFB64 00044C03 */  sra        $t1, $a0, 16
    /* 323CB8 802DFB68 8FAE0094 */  lw         $t6, 0x94($sp)
    /* 323CBC 802DFB6C 01202025 */  or         $a0, $t1, $zero
    /* 323CC0 802DFB70 87A90072 */  lh         $t1, 0x72($sp)
    /* 323CC4 802DFB74 460021A1 */  cvt.d.s    $f6, $f4
    /* 323CC8 802DFB78 460042A1 */  cvt.d.s    $f10, $f8
    /* 323CCC 802DFB7C 46203203 */  div.d      $f8, $f6, $f0
    /* 323CD0 802DFB80 448E2000 */  mtc1       $t6, $f4
    /* 323CD4 802DFB84 00102C00 */  sll        $a1, $s0, 16
    /* 323CD8 802DFB88 00055403 */  sra        $t2, $a1, 16
    /* 323CDC 802DFB8C 468021A1 */  cvt.d.w    $f6, $f4
    /* 323CE0 802DFB90 01402825 */  or         $a1, $t2, $zero
    /* 323CE4 802DFB94 8FAA0090 */  lw         $t2, 0x90($sp)
    /* 323CE8 802DFB98 87AD0074 */  lh         $t5, 0x74($sp)
    /* 323CEC 802DFB9C 8FAE008C */  lw         $t6, 0x8C($sp)
    /* 323CF0 802DFBA0 00123400 */  sll        $a2, $s2, 16
    /* 323CF4 802DFBA4 00065C03 */  sra        $t3, $a2, 16
    /* 323CF8 802DFBA8 24190001 */  addiu      $t9, $zero, 0x1
    /* 323CFC 802DFBAC AFB90018 */  sw         $t9, 0x18($sp)
    /* 323D00 802DFBB0 01603025 */  or         $a2, $t3, $zero
    /* 323D04 802DFBB4 46205403 */  div.d      $f16, $f10, $f0
    /* 323D08 802DFBB8 46281282 */  mul.d      $f10, $f2, $f8
    /* 323D0C 802DFBBC 00000000 */  nop
    /* 323D10 802DFBC0 462A8482 */  mul.d      $f18, $f16, $f10
    /* 323D14 802DFBC4 44895000 */  mtc1       $t1, $f10
    /* 323D18 802DFBC8 00000000 */  nop
    /* 323D1C 802DFBCC 46805120 */  cvt.s.w    $f4, $f10
    /* 323D20 802DFBD0 46269200 */  add.d      $f8, $f18, $f6
    /* 323D24 802DFBD4 460024A1 */  cvt.d.s    $f18, $f4
    /* 323D28 802DFBD8 4620440D */  trunc.w.d  $f16, $f8
    /* 323D2C 802DFBDC 46209183 */  div.d      $f6, $f18, $f0
    /* 323D30 802DFBE0 44078000 */  mfc1       $a3, $f16
    /* 323D34 802DFBE4 448A8000 */  mtc1       $t2, $f16
    /* 323D38 802DFBE8 0007C400 */  sll        $t8, $a3, 16
    /* 323D3C 802DFBEC 468082A1 */  cvt.d.w    $f10, $f16
    /* 323D40 802DFBF0 00183C03 */  sra        $a3, $t8, 16
    /* 323D44 802DFBF4 46223202 */  mul.d      $f8, $f6, $f2
    /* 323D48 802DFBF8 44823000 */  mtc1       $v0, $f6
    /* 323D4C 802DFBFC 00000000 */  nop
    /* 323D50 802DFC00 46803420 */  cvt.s.w    $f16, $f6
    /* 323D54 802DFC04 462A4100 */  add.d      $f4, $f8, $f10
    /* 323D58 802DFC08 46008221 */  cvt.d.s    $f8, $f16
    /* 323D5C 802DFC0C 4620248D */  trunc.w.d  $f18, $f4
    /* 323D60 802DFC10 448D2000 */  mtc1       $t5, $f4
    /* 323D64 802DFC14 46204283 */  div.d      $f10, $f8, $f0
    /* 323D68 802DFC18 440C9000 */  mfc1       $t4, $f18
    /* 323D6C 802DFC1C 468024A0 */  cvt.s.w    $f18, $f4
    /* 323D70 802DFC20 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 323D74 802DFC24 460091A1 */  cvt.d.s    $f6, $f18
    /* 323D78 802DFC28 448E9000 */  mtc1       $t6, $f18
    /* 323D7C 802DFC2C 46203403 */  div.d      $f16, $f6, $f0
    /* 323D80 802DFC30 468091A1 */  cvt.d.w    $f6, $f18
    /* 323D84 802DFC34 46301202 */  mul.d      $f8, $f2, $f16
    /* 323D88 802DFC38 00000000 */  nop
    /* 323D8C 802DFC3C 46285102 */  mul.d      $f4, $f10, $f8
    /* 323D90 802DFC40 46262400 */  add.d      $f16, $f4, $f6
    /* 323D94 802DFC44 4620828D */  trunc.w.d  $f10, $f16
    /* 323D98 802DFC48 44185000 */  mfc1       $t8, $f10
    /* 323D9C 802DFC4C 0C0345AF */  jal        func_800D16BC_E066C
    /* 323DA0 802DFC50 AFB80014 */   sw        $t8, 0x14($sp)
    /* 323DA4 802DFC54 10000079 */  b          .L802DFE3C_323F8C
    /* 323DA8 802DFC58 00000000 */   nop
    /* 323DAC 802DFC5C 24010039 */  addiu      $at, $zero, 0x39
  .L802DFC60_323DB0:
    /* 323DB0 802DFC60 14610076 */  bne        $v1, $at, .L802DFE3C_323F8C
    /* 323DB4 802DFC64 00000000 */   nop
    /* 323DB8 802DFC68 0C01E55B */  jal        func_8007956C_8851C
    /* 323DBC 802DFC6C 24040012 */   addiu     $a0, $zero, 0x12
    /* 323DC0 802DFC70 240100FF */  addiu      $at, $zero, 0xFF
    /* 323DC4 802DFC74 10410071 */  beq        $v0, $at, .L802DFE3C_323F8C
    /* 323DC8 802DFC78 AFA20088 */   sw        $v0, 0x88($sp)
    /* 323DCC 802DFC7C 87B10096 */  lh         $s1, 0x96($sp)
    /* 323DD0 802DFC80 87B2008E */  lh         $s2, 0x8E($sp)
    /* 323DD4 802DFC84 00112400 */  sll        $a0, $s1, 16
    /* 323DD8 802DFC88 00122C00 */  sll        $a1, $s2, 16
    /* 323DDC 802DFC8C 00055403 */  sra        $t2, $a1, 16
    /* 323DE0 802DFC90 00044C03 */  sra        $t1, $a0, 16
    /* 323DE4 802DFC94 01202025 */  or         $a0, $t1, $zero
    /* 323DE8 802DFC98 0C02E134 */  jal        func_800B84D0_C7480
    /* 323DEC 802DFC9C 01402825 */   or        $a1, $t2, $zero
    /* 323DF0 802DFCA0 3C04802E */  lui        $a0, %hi(D_802E7AB0)
    /* 323DF4 802DFCA4 24847AB0 */  addiu      $a0, $a0, %lo(D_802E7AB0)
    /* 323DF8 802DFCA8 8FA50090 */  lw         $a1, 0x90($sp)
    /* 323DFC 802DFCAC 0C00731B */  jal        osSyncPrintf
    /* 323E00 802DFCB0 00023203 */   sra       $a2, $v0, 8
    /* 323E04 802DFCB4 8FAB0088 */  lw         $t3, 0x88($sp)
    /* 323E08 802DFCB8 24030050 */  addiu      $v1, $zero, 0x50
    /* 323E0C 802DFCBC 8FAD0094 */  lw         $t5, 0x94($sp)
    /* 323E10 802DFCC0 01630019 */  multu      $t3, $v1
    /* 323E14 802DFCC4 8FAE0090 */  lw         $t6, 0x90($sp)
    /* 323E18 802DFCC8 8FAF008C */  lw         $t7, 0x8C($sp)
    /* 323E1C 802DFCCC 8FB80094 */  lw         $t8, 0x94($sp)
    /* 323E20 802DFCD0 8FB90090 */  lw         $t9, 0x90($sp)
    /* 323E24 802DFCD4 8FA9008C */  lw         $t1, 0x8C($sp)
    /* 323E28 802DFCD8 240A0005 */  addiu      $t2, $zero, 0x5
    /* 323E2C 802DFCDC 3C0B4000 */  lui        $t3, (0x40000000 >> 16)
    /* 323E30 802DFCE0 3C04802E */  lui        $a0, %hi(D_802E7C6C)
    /* 323E34 802DFCE4 00006012 */  mflo       $t4
    /* 323E38 802DFCE8 020C1021 */  addu       $v0, $s0, $t4
    /* 323E3C 802DFCEC A04A0024 */  sb         $t2, 0x24($v0)
    /* 323E40 802DFCF0 AC4B0020 */  sw         $t3, 0x20($v0)
    /* 323E44 802DFCF4 3C0C8015 */  lui        $t4, %hi(D_8014D17E)
    /* 323E48 802DFCF8 A44D0000 */  sh         $t5, 0x0($v0)
    /* 323E4C 802DFCFC A44E0002 */  sh         $t6, 0x2($v0)
    /* 323E50 802DFD00 A44F0004 */  sh         $t7, 0x4($v0)
    /* 323E54 802DFD04 A458002E */  sh         $t8, 0x2E($v0)
    /* 323E58 802DFD08 A4590030 */  sh         $t9, 0x30($v0)
    /* 323E5C 802DFD0C A4490032 */  sh         $t1, 0x32($v0)
    /* 323E60 802DFD10 858CD17E */  lh         $t4, %lo(D_8014D17E)($t4)
    /* 323E64 802DFD14 01830019 */  multu      $t4, $v1
    /* 323E68 802DFD18 00006812 */  mflo       $t5
    /* 323E6C 802DFD1C 020D7021 */  addu       $t6, $s0, $t5
    /* 323E70 802DFD20 85CF0006 */  lh         $t7, 0x6($t6)
    /* 323E74 802DFD24 A44F0006 */  sh         $t7, 0x6($v0)
    /* 323E78 802DFD28 0C034415 */  jal        func_800D1054_E0004
    /* 323E7C 802DFD2C 84847C6C */   lh        $a0, %lo(D_802E7C6C)($a0)
    /* 323E80 802DFD30 0C038D78 */  jal        func_800E35E0_F2590
    /* 323E84 802DFD34 240400FF */   addiu     $a0, $zero, 0xFF
    /* 323E88 802DFD38 87B00092 */  lh         $s0, 0x92($sp)
    /* 323E8C 802DFD3C 00112400 */  sll        $a0, $s1, 16
    /* 323E90 802DFD40 0004C403 */  sra        $t8, $a0, 16
    /* 323E94 802DFD44 03002025 */  or         $a0, $t8, $zero
    /* 323E98 802DFD48 00123400 */  sll        $a2, $s2, 16
    /* 323E9C 802DFD4C 00102C00 */  sll        $a1, $s0, 16
    /* 323EA0 802DFD50 0005CC03 */  sra        $t9, $a1, 16
    /* 323EA4 802DFD54 00064C03 */  sra        $t1, $a2, 16
    /* 323EA8 802DFD58 241800FF */  addiu      $t8, $zero, 0xFF
    /* 323EAC 802DFD5C 240A0008 */  addiu      $t2, $zero, 0x8
    /* 323EB0 802DFD60 240B0004 */  addiu      $t3, $zero, 0x4
    /* 323EB4 802DFD64 240C003C */  addiu      $t4, $zero, 0x3C
    /* 323EB8 802DFD68 240D00D2 */  addiu      $t5, $zero, 0xD2
    /* 323EBC 802DFD6C 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 323EC0 802DFD70 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 323EC4 802DFD74 AFAF0024 */  sw         $t7, 0x24($sp)
    /* 323EC8 802DFD78 AFAE0020 */  sw         $t6, 0x20($sp)
    /* 323ECC 802DFD7C AFAD001C */  sw         $t5, 0x1C($sp)
    /* 323ED0 802DFD80 AFAC0018 */  sw         $t4, 0x18($sp)
    /* 323ED4 802DFD84 AFAB0014 */  sw         $t3, 0x14($sp)
    /* 323ED8 802DFD88 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 323EDC 802DFD8C AFB80028 */  sw         $t8, 0x28($sp)
    /* 323EE0 802DFD90 01203025 */  or         $a2, $t1, $zero
    /* 323EE4 802DFD94 03202825 */  or         $a1, $t9, $zero
    /* 323EE8 802DFD98 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 323EEC 802DFD9C 240700C8 */   addiu     $a3, $zero, 0xC8
    /* 323EF0 802DFDA0 00112400 */  sll        $a0, $s1, 16
    /* 323EF4 802DFDA4 00102C00 */  sll        $a1, $s0, 16
    /* 323EF8 802DFDA8 00054C03 */  sra        $t1, $a1, 16
    /* 323EFC 802DFDAC 0004CC03 */  sra        $t9, $a0, 16
    /* 323F00 802DFDB0 03202025 */  or         $a0, $t9, $zero
    /* 323F04 802DFDB4 01202825 */  or         $a1, $t1, $zero
    /* 323F08 802DFDB8 00123400 */  sll        $a2, $s2, 16
    /* 323F0C 802DFDBC 00065403 */  sra        $t2, $a2, 16
    /* 323F10 802DFDC0 240900FF */  addiu      $t1, $zero, 0xFF
    /* 323F14 802DFDC4 241900FF */  addiu      $t9, $zero, 0xFF
    /* 323F18 802DFDC8 240BFF80 */  addiu      $t3, $zero, -0x80
    /* 323F1C 802DFDCC 240C0050 */  addiu      $t4, $zero, 0x50
    /* 323F20 802DFDD0 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 323F24 802DFDD4 240E0014 */  addiu      $t6, $zero, 0x14
    /* 323F28 802DFDD8 240F0006 */  addiu      $t7, $zero, 0x6
    /* 323F2C 802DFDDC 241800FF */  addiu      $t8, $zero, 0xFF
    /* 323F30 802DFDE0 AFB80028 */  sw         $t8, 0x28($sp)
    /* 323F34 802DFDE4 AFAF0024 */  sw         $t7, 0x24($sp)
    /* 323F38 802DFDE8 AFAE0020 */  sw         $t6, 0x20($sp)
    /* 323F3C 802DFDEC AFAD001C */  sw         $t5, 0x1C($sp)
    /* 323F40 802DFDF0 AFAC0018 */  sw         $t4, 0x18($sp)
    /* 323F44 802DFDF4 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 323F48 802DFDF8 AFB9002C */  sw         $t9, 0x2C($sp)
    /* 323F4C 802DFDFC AFA90030 */  sw         $t1, 0x30($sp)
    /* 323F50 802DFE00 01403025 */  or         $a2, $t2, $zero
    /* 323F54 802DFE04 00003825 */  or         $a3, $zero, $zero
    /* 323F58 802DFE08 0C031507 */  jal        func_800C541C_D43CC
    /* 323F5C 802DFE0C AFA00014 */   sw        $zero, 0x14($sp)
    /* 323F60 802DFE10 3C04802E */  lui        $a0, %hi(func_802DF940_323A90)
    /* 323F64 802DFE14 0C001D2F */  jal        func_800074BC_80BC
    /* 323F68 802DFE18 2484F940 */   addiu     $a0, $a0, %lo(func_802DF940_323A90)
    /* 323F6C 802DFE1C 3C048015 */  lui        $a0, %hi(D_8014D17E)
    /* 323F70 802DFE20 0C01E644 */  jal        func_80079910_888C0
    /* 323F74 802DFE24 8484D17E */   lh        $a0, %lo(D_8014D17E)($a0)
    /* 323F78 802DFE28 0C01E8A8 */  jal        func_8007A2A0_89250
    /* 323F7C 802DFE2C 8FA40088 */   lw        $a0, 0x88($sp)
    /* 323F80 802DFE30 8FAA0088 */  lw         $t2, 0x88($sp)
    /* 323F84 802DFE34 3C018015 */  lui        $at, %hi(D_8014D17E)
    /* 323F88 802DFE38 A42AD17E */  sh         $t2, %lo(D_8014D17E)($at)
  .L802DFE3C_323F8C:
    /* 323F8C 802DFE3C 3C088015 */  lui        $t0, %hi(D_8014D17C)
    /* 323F90 802DFE40 2508D17C */  addiu      $t0, $t0, %lo(D_8014D17C)
    /* 323F94 802DFE44 850B0000 */  lh         $t3, 0x0($t0)
    /* 323F98 802DFE48 8FBF004C */  lw         $ra, 0x4C($sp)
    /* 323F9C 802DFE4C 8FB00040 */  lw         $s0, 0x40($sp)
    /* 323FA0 802DFE50 8FB10044 */  lw         $s1, 0x44($sp)
    /* 323FA4 802DFE54 8FB20048 */  lw         $s2, 0x48($sp)
    /* 323FA8 802DFE58 256C0001 */  addiu      $t4, $t3, 0x1
    /* 323FAC 802DFE5C A50C0000 */  sh         $t4, 0x0($t0)
    /* 323FB0 802DFE60 03E00008 */  jr         $ra
    /* 323FB4 802DFE64 27BD00A0 */   addiu     $sp, $sp, 0xA0
endlabel func_802DF940_323A90
