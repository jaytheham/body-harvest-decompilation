nonmatching func_802DC8F4_320A44, 0xC60

glabel func_802DC8F4_320A44
    /* 320A44 802DC8F4 308600FF */  andi       $a2, $a0, 0xFF
    /* 320A48 802DC8F8 00067080 */  sll        $t6, $a2, 2
    /* 320A4C 802DC8FC 27BDFF20 */  addiu      $sp, $sp, -0xE0
    /* 320A50 802DC900 01C67021 */  addu       $t6, $t6, $a2
    /* 320A54 802DC904 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 320A58 802DC908 AFB00040 */  sw         $s0, 0x40($sp)
    /* 320A5C 802DC90C 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 320A60 802DC910 000E7100 */  sll        $t6, $t6, 4
    /* 320A64 802DC914 01CF8021 */  addu       $s0, $t6, $t7
    /* 320A68 802DC918 8619000C */  lh         $t9, 0xC($s0)
    /* 320A6C 802DC91C 3C078015 */  lui        $a3, %hi(D_8014DD50)
    /* 320A70 802DC920 24E7DD50 */  addiu      $a3, $a3, %lo(D_8014DD50)
    /* 320A74 802DC924 00194100 */  sll        $t0, $t9, 4
    /* 320A78 802DC928 00E84821 */  addu       $t1, $a3, $t0
    /* 320A7C 802DC92C 8123000C */  lb         $v1, 0xC($t1)
    /* 320A80 802DC930 9218001A */  lbu        $t8, 0x1A($s0)
    /* 320A84 802DC934 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 320A88 802DC938 00035100 */  sll        $t2, $v1, 4
    /* 320A8C 802DC93C 00EA1021 */  addu       $v0, $a3, $t2
    /* 320A90 802DC940 804B000D */  lb         $t3, 0xD($v0)
    /* 320A94 802DC944 AFA400E0 */  sw         $a0, 0xE0($sp)
    /* 320A98 802DC948 A3A600E3 */  sb         $a2, 0xE3($sp)
    /* 320A9C 802DC94C 00C02025 */  or         $a0, $a2, $zero
    /* 320AA0 802DC950 AFA20064 */  sw         $v0, 0x64($sp)
    /* 320AA4 802DC954 AFA60060 */  sw         $a2, 0x60($sp)
    /* 320AA8 802DC958 2405026A */  addiu      $a1, $zero, 0x26A
    /* 320AAC 802DC95C A7A300DC */  sh         $v1, 0xDC($sp)
    /* 320AB0 802DC960 A3B800DF */  sb         $t8, 0xDF($sp)
    /* 320AB4 802DC964 0C04DD1A */  jal        func_80137468_146418
    /* 320AB8 802DC968 A7AB00DA */   sh        $t3, 0xDA($sp)
    /* 320ABC 802DC96C 3C058005 */  lui        $a1, %hi(D_80052B34)
    /* 320AC0 802DC970 8CA52B34 */  lw         $a1, %lo(D_80052B34)($a1)
    /* 320AC4 802DC974 0C021395 */  jal        func_80084E54_93E04
    /* 320AC8 802DC978 02002025 */   or        $a0, $s0, $zero
    /* 320ACC 802DC97C AFA200CC */  sw         $v0, 0xCC($sp)
    /* 320AD0 802DC980 86040000 */  lh         $a0, 0x0($s0)
    /* 320AD4 802DC984 0C02E134 */  jal        func_800B84D0_C7480
    /* 320AD8 802DC988 86050004 */   lh        $a1, 0x4($s0)
    /* 320ADC 802DC98C 0C0B721D */  jal        func_802DC874_3209C4
    /* 320AE0 802DC990 93A400E3 */   lbu       $a0, 0xE3($sp)
    /* 320AE4 802DC994 93AD00DF */  lbu        $t5, 0xDF($sp)
    /* 320AE8 802DC998 3C0F8025 */  lui        $t7, %hi(alienSpecs)
    /* 320AEC 802DC99C 25EF6680 */  addiu      $t7, $t7, %lo(alienSpecs)
    /* 320AF0 802DC9A0 000D7080 */  sll        $t6, $t5, 2
    /* 320AF4 802DC9A4 01CD7023 */  subu       $t6, $t6, $t5
    /* 320AF8 802DC9A8 000E7080 */  sll        $t6, $t6, 2
    /* 320AFC 802DC9AC 01CD7021 */  addu       $t6, $t6, $t5
    /* 320B00 802DC9B0 000E70C0 */  sll        $t6, $t6, 3
    /* 320B04 802DC9B4 01CFC021 */  addu       $t8, $t6, $t7
    /* 320B08 802DC9B8 86040012 */  lh         $a0, 0x12($s0)
    /* 320B0C 802DC9BC 860C002C */  lh         $t4, 0x2C($s0)
    /* 320B10 802DC9C0 AFA20074 */  sw         $v0, 0x74($sp)
    /* 320B14 802DC9C4 AFB80058 */  sw         $t8, 0x58($sp)
    /* 320B18 802DC9C8 87050040 */  lh         $a1, 0x40($t8)
    /* 320B1C 802DC9CC 008C1823 */  subu       $v1, $a0, $t4
    /* 320B20 802DC9D0 44832000 */  mtc1       $v1, $f4
    /* 320B24 802DC9D4 44854000 */  mtc1       $a1, $f8
    /* 320B28 802DC9D8 3C01802E */  lui        $at, %hi(D_802E7B54)
    /* 320B2C 802DC9DC 468021A0 */  cvt.s.w    $f6, $f4
    /* 320B30 802DC9E0 C4327B54 */  lwc1       $f18, %lo(D_802E7B54)($at)
    /* 320B34 802DC9E4 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 320B38 802DC9E8 468042A0 */  cvt.s.w    $f10, $f8
    /* 320B3C 802DC9EC 44814000 */  mtc1       $at, $f8
    /* 320B40 802DC9F0 460A3403 */  div.s      $f16, $f6, $f10
    /* 320B44 802DC9F4 46128102 */  mul.s      $f4, $f16, $f18
    /* 320B48 802DC9F8 00000000 */  nop
    /* 320B4C 802DC9FC 46082182 */  mul.s      $f6, $f4, $f8
    /* 320B50 802DCA00 4600328D */  trunc.w.s  $f10, $f6
    /* 320B54 802DCA04 44065000 */  mfc1       $a2, $f10
    /* 320B58 802DCA08 00000000 */  nop
    /* 320B5C 802DCA0C 10C00007 */  beqz       $a2, .L802DCA2C_320B7C
    /* 320B60 802DCA10 00000000 */   nop
    /* 320B64 802DCA14 8708003E */  lh         $t0, 0x3E($t8)
    /* 320B68 802DCA18 00084840 */  sll        $t1, $t0, 1
    /* 320B6C 802DCA1C 00A95023 */  subu       $t2, $a1, $t1
    /* 320B70 802DCA20 008A082A */  slt        $at, $a0, $t2
    /* 320B74 802DCA24 5420002E */  bnel       $at, $zero, .L802DCAE0_320C30
    /* 320B78 802DCA28 860D000E */   lh        $t5, 0xE($s0)
  .L802DCA2C_320B7C:
    /* 320B7C 802DCA2C 8603000A */  lh         $v1, 0xA($s0)
    /* 320B80 802DCA30 18600008 */  blez       $v1, .L802DCA54_320BA4
    /* 320B84 802DCA34 2462FF00 */   addiu     $v0, $v1, -0x100
    /* 320B88 802DCA38 04430005 */  bgezl      $v0, .L802DCA50_320BA0
    /* 320B8C 802DCA3C A602000A */   sh        $v0, 0xA($s0)
    /* 320B90 802DCA40 A600000A */  sh         $zero, 0xA($s0)
    /* 320B94 802DCA44 10000003 */  b          .L802DCA54_320BA4
    /* 320B98 802DCA48 8603000A */   lh        $v1, 0xA($s0)
    /* 320B9C 802DCA4C A602000A */  sh         $v0, 0xA($s0)
  .L802DCA50_320BA0:
    /* 320BA0 802DCA50 8603000A */  lh         $v1, 0xA($s0)
  .L802DCA54_320BA4:
    /* 320BA4 802DCA54 04610006 */  bgez       $v1, .L802DCA70_320BC0
    /* 320BA8 802DCA58 24620100 */   addiu     $v0, $v1, 0x100
    /* 320BAC 802DCA5C 58400004 */  blezl      $v0, .L802DCA70_320BC0
    /* 320BB0 802DCA60 A602000A */   sh        $v0, 0xA($s0)
    /* 320BB4 802DCA64 10000002 */  b          .L802DCA70_320BC0
    /* 320BB8 802DCA68 A600000A */   sh        $zero, 0xA($s0)
    /* 320BBC 802DCA6C A602000A */  sh         $v0, 0xA($s0)
  .L802DCA70_320BC0:
    /* 320BC0 802DCA70 86020008 */  lh         $v0, 0x8($s0)
    /* 320BC4 802DCA74 18400008 */  blez       $v0, .L802DCA98_320BE8
    /* 320BC8 802DCA78 2443FF00 */   addiu     $v1, $v0, -0x100
    /* 320BCC 802DCA7C 04630005 */  bgezl      $v1, .L802DCA94_320BE4
    /* 320BD0 802DCA80 A6030008 */   sh        $v1, 0x8($s0)
    /* 320BD4 802DCA84 A6000008 */  sh         $zero, 0x8($s0)
    /* 320BD8 802DCA88 10000003 */  b          .L802DCA98_320BE8
    /* 320BDC 802DCA8C 86020008 */   lh        $v0, 0x8($s0)
    /* 320BE0 802DCA90 A6030008 */  sh         $v1, 0x8($s0)
  .L802DCA94_320BE4:
    /* 320BE4 802DCA94 86020008 */  lh         $v0, 0x8($s0)
  .L802DCA98_320BE8:
    /* 320BE8 802DCA98 04410006 */  bgez       $v0, .L802DCAB4_320C04
    /* 320BEC 802DCA9C 24430100 */   addiu     $v1, $v0, 0x100
    /* 320BF0 802DCAA0 58600004 */  blezl      $v1, .L802DCAB4_320C04
    /* 320BF4 802DCAA4 A6030008 */   sh        $v1, 0x8($s0)
    /* 320BF8 802DCAA8 10000002 */  b          .L802DCAB4_320C04
    /* 320BFC 802DCAAC A6000008 */   sh        $zero, 0x8($s0)
    /* 320C00 802DCAB0 A6030008 */  sh         $v1, 0x8($s0)
  .L802DCAB4_320C04:
    /* 320C04 802DCAB4 8603000A */  lh         $v1, 0xA($s0)
    /* 320C08 802DCAB8 5460003D */  bnel       $v1, $zero, .L802DCBB0_320D00
    /* 320C0C 802DCABC 2861E69D */   slti      $at, $v1, -0x1963
    /* 320C10 802DCAC0 860B0008 */  lh         $t3, 0x8($s0)
    /* 320C14 802DCAC4 240C0001 */  addiu      $t4, $zero, 0x1
    /* 320C18 802DCAC8 55600039 */  bnel       $t3, $zero, .L802DCBB0_320D00
    /* 320C1C 802DCACC 2861E69D */   slti      $at, $v1, -0x1963
    /* 320C20 802DCAD0 A60C003A */  sh         $t4, 0x3A($s0)
    /* 320C24 802DCAD4 10000035 */  b          .L802DCBAC_320CFC
    /* 320C28 802DCAD8 8603000A */   lh        $v1, 0xA($s0)
    /* 320C2C 802DCADC 860D000E */  lh         $t5, 0xE($s0)
  .L802DCAE0_320C30:
    /* 320C30 802DCAE0 860E0006 */  lh         $t6, 0x6($s0)
    /* 320C34 802DCAE4 AFA600A0 */  sw         $a2, 0xA0($sp)
    /* 320C38 802DCAE8 01AE2023 */  subu       $a0, $t5, $t6
    /* 320C3C 802DCAEC 308FFFFF */  andi       $t7, $a0, 0xFFFF
    /* 320C40 802DCAF0 0C007654 */  jal        coss
    /* 320C44 802DCAF4 01E02025 */   or        $a0, $t7, $zero
    /* 320C48 802DCAF8 44829000 */  mtc1       $v0, $f18
    /* 320C4C 802DCAFC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 320C50 802DCB00 44813800 */  mtc1       $at, $f7
    /* 320C54 802DCB04 46809120 */  cvt.s.w    $f4, $f18
    /* 320C58 802DCB08 44803000 */  mtc1       $zero, $f6
    /* 320C5C 802DCB0C 8FA600A0 */  lw         $a2, 0xA0($sp)
    /* 320C60 802DCB10 8619000A */  lh         $t9, 0xA($s0)
    /* 320C64 802DCB14 8609000E */  lh         $t1, 0xE($s0)
    /* 320C68 802DCB18 44868000 */  mtc1       $a2, $f16
    /* 320C6C 802DCB1C 46002221 */  cvt.d.s    $f8, $f4
    /* 320C70 802DCB20 44999000 */  mtc1       $t9, $f18
    /* 320C74 802DCB24 46264283 */  div.d      $f10, $f8, $f6
    /* 320C78 802DCB28 860A0006 */  lh         $t2, 0x6($s0)
    /* 320C7C 802DCB2C 46808021 */  cvt.d.w    $f0, $f16
    /* 320C80 802DCB30 012A2023 */  subu       $a0, $t1, $t2
    /* 320C84 802DCB34 308BFFFF */  andi       $t3, $a0, 0xFFFF
    /* 320C88 802DCB38 01602025 */  or         $a0, $t3, $zero
    /* 320C8C 802DCB3C 46809121 */  cvt.d.w    $f4, $f18
    /* 320C90 802DCB40 F7A00048 */  sdc1       $f0, 0x48($sp)
    /* 320C94 802DCB44 462A0402 */  mul.d      $f16, $f0, $f10
    /* 320C98 802DCB48 46302200 */  add.d      $f8, $f4, $f16
    /* 320C9C 802DCB4C 4620418D */  trunc.w.d  $f6, $f8
    /* 320CA0 802DCB50 44083000 */  mfc1       $t0, $f6
    /* 320CA4 802DCB54 0C007660 */  jal        sins
    /* 320CA8 802DCB58 A608000A */   sh        $t0, 0xA($s0)
    /* 320CAC 802DCB5C 44825000 */  mtc1       $v0, $f10
    /* 320CB0 802DCB60 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 320CB4 802DCB64 44818800 */  mtc1       $at, $f17
    /* 320CB8 802DCB68 468054A0 */  cvt.s.w    $f18, $f10
    /* 320CBC 802DCB6C 44808000 */  mtc1       $zero, $f16
    /* 320CC0 802DCB70 D7A00048 */  ldc1       $f0, 0x48($sp)
    /* 320CC4 802DCB74 860C0008 */  lh         $t4, 0x8($s0)
    /* 320CC8 802DCB78 A600003A */  sh         $zero, 0x3A($s0)
    /* 320CCC 802DCB7C A6000048 */  sh         $zero, 0x48($s0)
    /* 320CD0 802DCB80 46009121 */  cvt.d.s    $f4, $f18
    /* 320CD4 802DCB84 448C5000 */  mtc1       $t4, $f10
    /* 320CD8 802DCB88 46302203 */  div.d      $f8, $f4, $f16
    /* 320CDC 802DCB8C 8603000A */  lh         $v1, 0xA($s0)
    /* 320CE0 802DCB90 468054A1 */  cvt.d.w    $f18, $f10
    /* 320CE4 802DCB94 46280182 */  mul.d      $f6, $f0, $f8
    /* 320CE8 802DCB98 46269100 */  add.d      $f4, $f18, $f6
    /* 320CEC 802DCB9C 4620240D */  trunc.w.d  $f16, $f4
    /* 320CF0 802DCBA0 440E8000 */  mfc1       $t6, $f16
    /* 320CF4 802DCBA4 00000000 */  nop
    /* 320CF8 802DCBA8 A60E0008 */  sh         $t6, 0x8($s0)
  .L802DCBAC_320CFC:
    /* 320CFC 802DCBAC 2861E69D */  slti       $at, $v1, -0x1963
  .L802DCBB0_320D00:
    /* 320D00 802DCBB0 54200004 */  bnel       $at, $zero, .L802DCBC4_320D14
    /* 320D04 802DCBB4 240FE69C */   addiu     $t7, $zero, -0x1964
    /* 320D08 802DCBB8 10000003 */  b          .L802DCBC8_320D18
    /* 320D0C 802DCBBC A603000A */   sh        $v1, 0xA($s0)
    /* 320D10 802DCBC0 240FE69C */  addiu      $t7, $zero, -0x1964
  .L802DCBC4_320D14:
    /* 320D14 802DCBC4 A60F000A */  sh         $t7, 0xA($s0)
  .L802DCBC8_320D18:
    /* 320D18 802DCBC8 8603000A */  lh         $v1, 0xA($s0)
    /* 320D1C 802DCBCC 28611964 */  slti       $at, $v1, 0x1964
    /* 320D20 802DCBD0 50200004 */  beql       $at, $zero, .L802DCBE4_320D34
    /* 320D24 802DCBD4 24191964 */   addiu     $t9, $zero, 0x1964
    /* 320D28 802DCBD8 10000003 */  b          .L802DCBE8_320D38
    /* 320D2C 802DCBDC A603000A */   sh        $v1, 0xA($s0)
    /* 320D30 802DCBE0 24191964 */  addiu      $t9, $zero, 0x1964
  .L802DCBE4_320D34:
    /* 320D34 802DCBE4 A619000A */  sh         $t9, 0xA($s0)
  .L802DCBE8_320D38:
    /* 320D38 802DCBE8 86020008 */  lh         $v0, 0x8($s0)
    /* 320D3C 802DCBEC 2841E69D */  slti       $at, $v0, -0x1963
    /* 320D40 802DCBF0 54200004 */  bnel       $at, $zero, .L802DCC04_320D54
    /* 320D44 802DCBF4 2418E69C */   addiu     $t8, $zero, -0x1964
    /* 320D48 802DCBF8 10000003 */  b          .L802DCC08_320D58
    /* 320D4C 802DCBFC A6020008 */   sh        $v0, 0x8($s0)
    /* 320D50 802DCC00 2418E69C */  addiu      $t8, $zero, -0x1964
  .L802DCC04_320D54:
    /* 320D54 802DCC04 A6180008 */  sh         $t8, 0x8($s0)
  .L802DCC08_320D58:
    /* 320D58 802DCC08 86020008 */  lh         $v0, 0x8($s0)
    /* 320D5C 802DCC0C 28411964 */  slti       $at, $v0, 0x1964
    /* 320D60 802DCC10 50200004 */  beql       $at, $zero, .L802DCC24_320D74
    /* 320D64 802DCC14 24081964 */   addiu     $t0, $zero, 0x1964
    /* 320D68 802DCC18 10000003 */  b          .L802DCC28_320D78
    /* 320D6C 802DCC1C A6020008 */   sh        $v0, 0x8($s0)
    /* 320D70 802DCC20 24081964 */  addiu      $t0, $zero, 0x1964
  .L802DCC24_320D74:
    /* 320D74 802DCC24 A6080008 */  sh         $t0, 0x8($s0)
  .L802DCC28_320D78:
    /* 320D78 802DCC28 8609003A */  lh         $t1, 0x3A($s0)
    /* 320D7C 802DCC2C 5120003E */  beql       $t1, $zero, .L802DCD28_320E78
    /* 320D80 802DCC30 8218003C */   lb        $t8, 0x3C($s0)
    /* 320D84 802DCC34 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 320D88 802DCC38 8FAD0058 */  lw         $t5, 0x58($sp)
    /* 320D8C 802DCC3C 314B1000 */  andi       $t3, $t2, 0x1000
    /* 320D90 802DCC40 55600039 */  bnel       $t3, $zero, .L802DCD28_320E78
    /* 320D94 802DCC44 8218003C */   lb        $t8, 0x3C($s0)
    /* 320D98 802DCC48 95AE003A */  lhu        $t6, 0x3A($t5)
    /* 320D9C 802DCC4C 860C001C */  lh         $t4, 0x1C($s0)
    /* 320DA0 802DCC50 05C10003 */  bgez       $t6, .L802DCC60_320DB0
    /* 320DA4 802DCC54 000E7883 */   sra       $t7, $t6, 2
    /* 320DA8 802DCC58 25C10003 */  addiu      $at, $t6, 0x3
    /* 320DAC 802DCC5C 00017883 */  sra        $t7, $at, 2
  .L802DCC60_320DB0:
    /* 320DB0 802DCC60 018F082A */  slt        $at, $t4, $t7
    /* 320DB4 802DCC64 50200017 */  beql       $at, $zero, .L802DCCC4_320E14
    /* 320DB8 802DCC68 86040048 */   lh        $a0, 0x48($s0)
    /* 320DBC 802DCC6C 86040048 */  lh         $a0, 0x48($s0)
    /* 320DC0 802DCC70 240132C8 */  addiu      $at, $zero, 0x32C8
    /* 320DC4 802DCC74 00810019 */  multu      $a0, $at
    /* 320DC8 802DCC78 0000C812 */  mflo       $t9
    /* 320DCC 802DCC7C 3324FFFF */  andi       $a0, $t9, 0xFFFF
    /* 320DD0 802DCC80 0C007660 */  jal        sins
    /* 320DD4 802DCC84 00000000 */   nop
    /* 320DD8 802DCC88 44824000 */  mtc1       $v0, $f8
    /* 320DDC 802DCC8C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 320DE0 802DCC90 44813800 */  mtc1       $at, $f7
    /* 320DE4 802DCC94 468042A0 */  cvt.s.w    $f10, $f8
    /* 320DE8 802DCC98 44803000 */  mtc1       $zero, $f6
    /* 320DEC 802DCC9C 3C01802E */  lui        $at, %hi(D_802E7B58)
    /* 320DF0 802DCCA0 D4307B58 */  ldc1       $f16, %lo(D_802E7B58)($at)
    /* 320DF4 802DCCA4 460054A1 */  cvt.d.s    $f18, $f10
    /* 320DF8 802DCCA8 46269103 */  div.d      $f4, $f18, $f6
    /* 320DFC 802DCCAC 46302202 */  mul.d      $f8, $f4, $f16
    /* 320E00 802DCCB0 4620428D */  trunc.w.d  $f10, $f8
    /* 320E04 802DCCB4 44095000 */  mfc1       $t1, $f10
    /* 320E08 802DCCB8 10000017 */  b          .L802DCD18_320E68
    /* 320E0C 802DCCBC A6090008 */   sh        $t1, 0x8($s0)
    /* 320E10 802DCCC0 86040048 */  lh         $a0, 0x48($s0)
  .L802DCCC4_320E14:
    /* 320E14 802DCCC4 00045140 */  sll        $t2, $a0, 5
    /* 320E18 802DCCC8 01445023 */  subu       $t2, $t2, $a0
    /* 320E1C 802DCCCC 000A5080 */  sll        $t2, $t2, 2
    /* 320E20 802DCCD0 01445021 */  addu       $t2, $t2, $a0
    /* 320E24 802DCCD4 000A50C0 */  sll        $t2, $t2, 3
    /* 320E28 802DCCD8 0C007660 */  jal        sins
    /* 320E2C 802DCCDC 3144FFFF */   andi      $a0, $t2, 0xFFFF
    /* 320E30 802DCCE0 44829000 */  mtc1       $v0, $f18
    /* 320E34 802DCCE4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 320E38 802DCCE8 44818800 */  mtc1       $at, $f17
    /* 320E3C 802DCCEC 468091A0 */  cvt.s.w    $f6, $f18
    /* 320E40 802DCCF0 44808000 */  mtc1       $zero, $f16
    /* 320E44 802DCCF4 3C01802E */  lui        $at, %hi(D_802E7B60)
    /* 320E48 802DCCF8 D42A7B60 */  ldc1       $f10, %lo(D_802E7B60)($at)
    /* 320E4C 802DCCFC 46003121 */  cvt.d.s    $f4, $f6
    /* 320E50 802DCD00 46302203 */  div.d      $f8, $f4, $f16
    /* 320E54 802DCD04 462A4482 */  mul.d      $f18, $f8, $f10
    /* 320E58 802DCD08 4620918D */  trunc.w.d  $f6, $f18
    /* 320E5C 802DCD0C 440E3000 */  mfc1       $t6, $f6
    /* 320E60 802DCD10 00000000 */  nop
    /* 320E64 802DCD14 A60E0008 */  sh         $t6, 0x8($s0)
  .L802DCD18_320E68:
    /* 320E68 802DCD18 860C0048 */  lh         $t4, 0x48($s0)
    /* 320E6C 802DCD1C 258F0001 */  addiu      $t7, $t4, 0x1
    /* 320E70 802DCD20 A60F0048 */  sh         $t7, 0x48($s0)
    /* 320E74 802DCD24 8218003C */  lb         $t8, 0x3C($s0)
  .L802DCD28_320E78:
    /* 320E78 802DCD28 86190012 */  lh         $t9, 0x12($s0)
    /* 320E7C 802DCD2C 1700000F */  bnez       $t8, .L802DCD6C_320EBC
    /* 320E80 802DCD30 A619002C */   sh        $t9, 0x2C($s0)
    /* 320E84 802DCD34 8E080020 */  lw         $t0, 0x20($s0)
    /* 320E88 802DCD38 31091000 */  andi       $t1, $t0, 0x1000
    /* 320E8C 802DCD3C 5520000C */  bnel       $t1, $zero, .L802DCD70_320EC0
    /* 320E90 802DCD40 86040000 */   lh        $a0, 0x0($s0)
    /* 320E94 802DCD44 920A0047 */  lbu        $t2, 0x47($s0)
    /* 320E98 802DCD48 314B0001 */  andi       $t3, $t2, 0x1
    /* 320E9C 802DCD4C 11600005 */  beqz       $t3, .L802DCD64_320EB4
    /* 320EA0 802DCD50 00000000 */   nop
    /* 320EA4 802DCD54 0C020193 */  jal        func_8008064C_8F5FC
    /* 320EA8 802DCD58 93A400E3 */   lbu       $a0, 0xE3($sp)
    /* 320EAC 802DCD5C 10000004 */  b          .L802DCD70_320EC0
    /* 320EB0 802DCD60 86040000 */   lh        $a0, 0x0($s0)
  .L802DCD64_320EB4:
    /* 320EB4 802DCD64 0C0201DB */  jal        func_8008076C_8F71C
    /* 320EB8 802DCD68 93A400E3 */   lbu       $a0, 0xE3($sp)
  .L802DCD6C_320EBC:
    /* 320EBC 802DCD6C 86040000 */  lh         $a0, 0x0($s0)
  .L802DCD70_320EC0:
    /* 320EC0 802DCD70 0C02E134 */  jal        func_800B84D0_C7480
    /* 320EC4 802DCD74 86050004 */   lh        $a1, 0x4($s0)
    /* 320EC8 802DCD78 3C048022 */  lui        $a0, %hi(D_80222A70)
    /* 320ECC 802DCD7C 8C842A70 */  lw         $a0, %lo(D_80222A70)($a0)
    /* 320ED0 802DCD80 00022A03 */  sra        $a1, $v0, 8
    /* 320ED4 802DCD84 0085082A */  slt        $at, $a0, $a1
    /* 320ED8 802DCD88 14200002 */  bnez       $at, .L802DCD94_320EE4
    /* 320EDC 802DCD8C 00000000 */   nop
    /* 320EE0 802DCD90 00802825 */  or         $a1, $a0, $zero
  .L802DCD94_320EE4:
    /* 320EE4 802DCD94 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 320EE8 802DCD98 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 320EEC 802DCD9C AFA500A8 */  sw         $a1, 0xA8($sp)
    /* 320EF0 802DCDA0 00046880 */  sll        $t5, $a0, 2
    /* 320EF4 802DCDA4 01A46823 */  subu       $t5, $t5, $a0
    /* 320EF8 802DCDA8 000D6900 */  sll        $t5, $t5, 4
    /* 320EFC 802DCDAC 01A46823 */  subu       $t5, $t5, $a0
    /* 320F00 802DCDB0 000D68C0 */  sll        $t5, $t5, 3
    /* 320F04 802DCDB4 01A46823 */  subu       $t5, $t5, $a0
    /* 320F08 802DCDB8 000D6880 */  sll        $t5, $t5, 2
    /* 320F0C 802DCDBC 0C007660 */  jal        sins
    /* 320F10 802DCDC0 31A4FFFF */   andi      $a0, $t5, 0xFFFF
    /* 320F14 802DCDC4 44822000 */  mtc1       $v0, $f4
    /* 320F18 802DCDC8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 320F1C 802DCDCC 44815800 */  mtc1       $at, $f11
    /* 320F20 802DCDD0 46802420 */  cvt.s.w    $f16, $f4
    /* 320F24 802DCDD4 44805000 */  mtc1       $zero, $f10
    /* 320F28 802DCDD8 920C001A */  lbu        $t4, 0x1A($s0)
    /* 320F2C 802DCDDC 3C198025 */  lui        $t9, %hi(D_802566D8)
    /* 320F30 802DCDE0 8FA500A8 */  lw         $a1, 0xA8($sp)
    /* 320F34 802DCDE4 000C7880 */  sll        $t7, $t4, 2
    /* 320F38 802DCDE8 46008221 */  cvt.d.s    $f8, $f16
    /* 320F3C 802DCDEC 01EC7823 */  subu       $t7, $t7, $t4
    /* 320F40 802DCDF0 462A4483 */  div.d      $f18, $f8, $f10
    /* 320F44 802DCDF4 000F7880 */  sll        $t7, $t7, 2
    /* 320F48 802DCDF8 01EC7821 */  addu       $t7, $t7, $t4
    /* 320F4C 802DCDFC 000F78C0 */  sll        $t7, $t7, 3
    /* 320F50 802DCE00 032FC821 */  addu       $t9, $t9, $t7
    /* 320F54 802DCE04 873966D8 */  lh         $t9, %lo(D_802566D8)($t9)
    /* 320F58 802DCE08 3C014034 */  lui        $at, (0x40340000 >> 16)
    /* 320F5C 802DCE0C 44813800 */  mtc1       $at, $f7
    /* 320F60 802DCE10 44803000 */  mtc1       $zero, $f6
    /* 320F64 802DCE14 00B9C021 */  addu       $t8, $a1, $t9
    /* 320F68 802DCE18 44988000 */  mtc1       $t8, $f16
    /* 320F6C 802DCE1C 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 320F70 802DCE20 46808221 */  cvt.d.w    $f8, $f16
    /* 320F74 802DCE24 314B1000 */  andi       $t3, $t2, 0x1000
    /* 320F78 802DCE28 46269102 */  mul.d      $f4, $f18, $f6
    /* 320F7C 802DCE2C 46282280 */  add.d      $f10, $f4, $f8
    /* 320F80 802DCE30 4620548D */  trunc.w.d  $f18, $f10
    /* 320F84 802DCE34 44099000 */  mfc1       $t1, $f18
    /* 320F88 802DCE38 11600092 */  beqz       $t3, .L802DD084_3211D4
    /* 320F8C 802DCE3C A6090002 */   sh        $t1, 0x2($s0)
    /* 320F90 802DCE40 8FAE0058 */  lw         $t6, 0x58($sp)
    /* 320F94 802DCE44 860D0012 */  lh         $t5, 0x12($s0)
    /* 320F98 802DCE48 2408FFEC */  addiu      $t0, $zero, -0x14
    /* 320F9C 802DCE4C 85CC003E */  lh         $t4, 0x3E($t6)
    /* 320FA0 802DCE50 24090078 */  addiu      $t1, $zero, 0x78
    /* 320FA4 802DCE54 240AFFD8 */  addiu      $t2, $zero, -0x28
    /* 320FA8 802DCE58 05810003 */  bgez       $t4, .L802DCE68_320FB8
    /* 320FAC 802DCE5C 000C7843 */   sra       $t7, $t4, 1
    /* 320FB0 802DCE60 25810001 */  addiu      $at, $t4, 0x1
    /* 320FB4 802DCE64 00017843 */  sra        $t7, $at, 1
  .L802DCE68_320FB8:
    /* 320FB8 802DCE68 01AFC823 */  subu       $t9, $t5, $t7
    /* 320FBC 802DCE6C A6190012 */  sh         $t9, 0x12($s0)
    /* 320FC0 802DCE70 86180012 */  lh         $t8, 0x12($s0)
    /* 320FC4 802DCE74 27A50084 */  addiu      $a1, $sp, 0x84
    /* 320FC8 802DCE78 27A60078 */  addiu      $a2, $sp, 0x78
    /* 320FCC 802DCE7C 07030003 */  bgezl      $t8, .L802DCE8C_320FDC
    /* 320FD0 802DCE80 A7A80084 */   sh        $t0, 0x84($sp)
    /* 320FD4 802DCE84 A6000012 */  sh         $zero, 0x12($s0)
    /* 320FD8 802DCE88 A7A80084 */  sh         $t0, 0x84($sp)
  .L802DCE8C_320FDC:
    /* 320FDC 802DCE8C A7A90086 */  sh         $t1, 0x86($sp)
    /* 320FE0 802DCE90 A7AA0088 */  sh         $t2, 0x88($sp)
    /* 320FE4 802DCE94 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 320FE8 802DCE98 83A400DD */   lb        $a0, 0xDD($sp)
    /* 320FEC 802DCE9C 27AB00C8 */  addiu      $t3, $sp, 0xC8
    /* 320FF0 802DCEA0 27AE00C4 */  addiu      $t6, $sp, 0xC4
    /* 320FF4 802DCEA4 27AC00C0 */  addiu      $t4, $sp, 0xC0
    /* 320FF8 802DCEA8 AFAC0018 */  sw         $t4, 0x18($sp)
    /* 320FFC 802DCEAC AFAE0014 */  sw         $t6, 0x14($sp)
    /* 321000 802DCEB0 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 321004 802DCEB4 02002025 */  or         $a0, $s0, $zero
    /* 321008 802DCEB8 87A5007A */  lh         $a1, 0x7A($sp)
    /* 32100C 802DCEBC 87A6007E */  lh         $a2, 0x7E($sp)
    /* 321010 802DCEC0 0C04A10A */  jal        func_80128428_1373D8
    /* 321014 802DCEC4 87A70082 */   lh        $a3, 0x82($sp)
    /* 321018 802DCEC8 240D0014 */  addiu      $t5, $zero, 0x14
    /* 32101C 802DCECC 240F0078 */  addiu      $t7, $zero, 0x78
    /* 321020 802DCED0 2419FFD8 */  addiu      $t9, $zero, -0x28
    /* 321024 802DCED4 A7AD0084 */  sh         $t5, 0x84($sp)
    /* 321028 802DCED8 A7AF0086 */  sh         $t7, 0x86($sp)
    /* 32102C 802DCEDC A7B90088 */  sh         $t9, 0x88($sp)
    /* 321030 802DCEE0 83A400DB */  lb         $a0, 0xDB($sp)
    /* 321034 802DCEE4 27A50084 */  addiu      $a1, $sp, 0x84
    /* 321038 802DCEE8 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 32103C 802DCEEC 27A60078 */   addiu     $a2, $sp, 0x78
    /* 321040 802DCEF0 27B800BC */  addiu      $t8, $sp, 0xBC
    /* 321044 802DCEF4 27A800B8 */  addiu      $t0, $sp, 0xB8
    /* 321048 802DCEF8 27A900B4 */  addiu      $t1, $sp, 0xB4
    /* 32104C 802DCEFC AFA90018 */  sw         $t1, 0x18($sp)
    /* 321050 802DCF00 AFA80014 */  sw         $t0, 0x14($sp)
    /* 321054 802DCF04 AFB80010 */  sw         $t8, 0x10($sp)
    /* 321058 802DCF08 02002025 */  or         $a0, $s0, $zero
    /* 32105C 802DCF0C 87A5007A */  lh         $a1, 0x7A($sp)
    /* 321060 802DCF10 87A6007E */  lh         $a2, 0x7E($sp)
    /* 321064 802DCF14 0C04A10A */  jal        func_80128428_1373D8
    /* 321068 802DCF18 87A70082 */   lh        $a3, 0x82($sp)
    /* 32106C 802DCF1C 8FAA00B8 */  lw         $t2, 0xB8($sp)
    /* 321070 802DCF20 8FAB00B4 */  lw         $t3, 0xB4($sp)
    /* 321074 802DCF24 240E0001 */  addiu      $t6, $zero, 0x1
    /* 321078 802DCF28 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 32107C 802DCF2C 87A400CA */  lh         $a0, 0xCA($sp)
    /* 321080 802DCF30 87A500C6 */  lh         $a1, 0xC6($sp)
    /* 321084 802DCF34 87A600C2 */  lh         $a2, 0xC2($sp)
    /* 321088 802DCF38 87A700BE */  lh         $a3, 0xBE($sp)
    /* 32108C 802DCF3C AFAA0010 */  sw         $t2, 0x10($sp)
    /* 321090 802DCF40 0C0345AF */  jal        func_800D16BC_E066C
    /* 321094 802DCF44 AFAB0014 */   sw        $t3, 0x14($sp)
    /* 321098 802DCF48 92030026 */  lbu        $v1, 0x26($s0)
    /* 32109C 802DCF4C 87AC00DA */  lh         $t4, 0xDA($sp)
    /* 3210A0 802DCF50 3C0F8015 */  lui        $t7, %hi(D_8014DD50)
    /* 3210A4 802DCF54 2861006E */  slti       $at, $v1, 0x6E
    /* 3210A8 802DCF58 1420001B */  bnez       $at, .L802DCFC8_321118
    /* 3210AC 802DCF5C 000C6900 */   sll       $t5, $t4, 4
    /* 3210B0 802DCF60 25EFDD50 */  addiu      $t7, $t7, %lo(D_8014DD50)
    /* 3210B4 802DCF64 01AF1821 */  addu       $v1, $t5, $t7
    /* 3210B8 802DCF68 94620008 */  lhu        $v0, 0x8($v1)
    /* 3210BC 802DCF6C 2408EE6C */  addiu      $t0, $zero, -0x1194
    /* 3210C0 802DCF70 24091194 */  addiu      $t1, $zero, 0x1194
    /* 3210C4 802DCF74 2442FF9C */  addiu      $v0, $v0, -0x64
    /* 3210C8 802DCF78 0002CC00 */  sll        $t9, $v0, 16
    /* 3210CC 802DCF7C 00191403 */  sra        $v0, $t9, 16
    /* 3210D0 802DCF80 2841EE6C */  slti       $at, $v0, -0x1194
    /* 3210D4 802DCF84 10200003 */  beqz       $at, .L802DCF94_3210E4
    /* 3210D8 802DCF88 24050261 */   addiu     $a1, $zero, 0x261
    /* 3210DC 802DCF8C 10000002 */  b          .L802DCF98_3210E8
    /* 3210E0 802DCF90 A4680008 */   sh        $t0, 0x8($v1)
  .L802DCF94_3210E4:
    /* 3210E4 802DCF94 A4620008 */  sh         $v0, 0x8($v1)
  .L802DCF98_3210E8:
    /* 3210E8 802DCF98 8FA30064 */  lw         $v1, 0x64($sp)
    /* 3210EC 802DCF9C 94620008 */  lhu        $v0, 0x8($v1)
    /* 3210F0 802DCFA0 24420064 */  addiu      $v0, $v0, 0x64
    /* 3210F4 802DCFA4 28411195 */  slti       $at, $v0, 0x1195
    /* 3210F8 802DCFA8 54200004 */  bnel       $at, $zero, .L802DCFBC_32110C
    /* 3210FC 802DCFAC A4620008 */   sh        $v0, 0x8($v1)
    /* 321100 802DCFB0 10000002 */  b          .L802DCFBC_32110C
    /* 321104 802DCFB4 A4690008 */   sh        $t1, 0x8($v1)
    /* 321108 802DCFB8 A4620008 */  sh         $v0, 0x8($v1)
  .L802DCFBC_32110C:
    /* 32110C 802DCFBC 0C04DD1A */  jal        func_80137468_146418
    /* 321110 802DCFC0 8FA40060 */   lw        $a0, 0x60($sp)
    /* 321114 802DCFC4 92030026 */  lbu        $v1, 0x26($s0)
  .L802DCFC8_321118:
    /* 321118 802DCFC8 2861006E */  slti       $at, $v1, 0x6E
    /* 32111C 802DCFCC 5020000E */  beql       $at, $zero, .L802DD008_321158
    /* 321120 802DCFD0 920E0026 */   lbu       $t6, 0x26($s0)
    /* 321124 802DCFD4 860A0048 */  lh         $t2, 0x48($s0)
    /* 321128 802DCFD8 93A400E3 */  lbu        $a0, 0xE3($sp)
    /* 32112C 802DCFDC 24050001 */  addiu      $a1, $zero, 0x1
    /* 321130 802DCFE0 254B2EE0 */  addiu      $t3, $t2, 0x2EE0
    /* 321134 802DCFE4 A60B0048 */  sh         $t3, 0x48($s0)
    /* 321138 802DCFE8 0C021B5C */  jal        func_80086D70_95D20
    /* 32113C 802DCFEC 86060048 */   lh        $a2, 0x48($s0)
    /* 321140 802DCFF0 10400004 */  beqz       $v0, .L802DD004_321154
    /* 321144 802DCFF4 8FA40060 */   lw        $a0, 0x60($sp)
    /* 321148 802DCFF8 0C04DD1A */  jal        func_80137468_146418
    /* 32114C 802DCFFC 2405025B */   addiu     $a1, $zero, 0x25B
    /* 321150 802DD000 A600001E */  sh         $zero, 0x1E($s0)
  .L802DD004_321154:
    /* 321154 802DD004 920E0026 */  lbu        $t6, 0x26($s0)
  .L802DD008_321158:
    /* 321158 802DD008 8FAD0058 */  lw         $t5, 0x58($sp)
    /* 32115C 802DD00C 51C0000B */  beql       $t6, $zero, .L802DD03C_32118C
    /* 321160 802DD010 8E180020 */   lw        $t8, 0x20($s0)
    /* 321164 802DD014 95AF003A */  lhu        $t7, 0x3A($t5)
    /* 321168 802DD018 860C001C */  lh         $t4, 0x1C($s0)
    /* 32116C 802DD01C 05E10003 */  bgez       $t7, .L802DD02C_32117C
    /* 321170 802DD020 000FC883 */   sra       $t9, $t7, 2
    /* 321174 802DD024 25E10003 */  addiu      $at, $t7, 0x3
    /* 321178 802DD028 0001C883 */  sra        $t9, $at, 2
  .L802DD02C_32117C:
    /* 32117C 802DD02C 0199082A */  slt        $at, $t4, $t9
    /* 321180 802DD030 502000C9 */  beql       $at, $zero, .L802DD358_3214A8
    /* 321184 802DD034 8FA90058 */   lw        $t1, 0x58($sp)
    /* 321188 802DD038 8E180020 */  lw         $t8, 0x20($s0)
  .L802DD03C_32118C:
    /* 32118C 802DD03C 8609000E */  lh         $t1, 0xE($s0)
    /* 321190 802DD040 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 321194 802DD044 03014024 */  and        $t0, $t8, $at
    /* 321198 802DD048 34018000 */  ori        $at, $zero, 0x8000
    /* 32119C 802DD04C 01215021 */  addu       $t2, $t1, $at
    /* 3211A0 802DD050 AE080020 */  sw         $t0, 0x20($s0)
    /* 3211A4 802DD054 A200003C */  sb         $zero, 0x3C($s0)
    /* 3211A8 802DD058 0C000E38 */  jal        func_800038E0_44E0
    /* 3211AC 802DD05C A60A000E */   sh        $t2, 0xE($s0)
    /* 3211B0 802DD060 24010050 */  addiu      $at, $zero, 0x50
    /* 3211B4 802DD064 0041001A */  div        $zero, $v0, $at
    /* 3211B8 802DD068 00005810 */  mfhi       $t3
    /* 3211BC 802DD06C 256E003C */  addiu      $t6, $t3, 0x3C
    /* 3211C0 802DD070 240D0014 */  addiu      $t5, $zero, 0x14
    /* 3211C4 802DD074 A20E0026 */  sb         $t6, 0x26($s0)
    /* 3211C8 802DD078 A60D001E */  sh         $t5, 0x1E($s0)
    /* 3211CC 802DD07C 100000B5 */  b          .L802DD354_3214A4
    /* 3211D0 802DD080 A6000048 */   sh        $zero, 0x48($s0)
  .L802DD084_3211D4:
    /* 3211D4 802DD084 87AF00DA */  lh         $t7, 0xDA($sp)
    /* 3211D8 802DD088 3C198015 */  lui        $t9, %hi(D_8014DD50)
    /* 3211DC 802DD08C 2739DD50 */  addiu      $t9, $t9, %lo(D_8014DD50)
    /* 3211E0 802DD090 000F6100 */  sll        $t4, $t7, 4
    /* 3211E4 802DD094 01991821 */  addu       $v1, $t4, $t9
    /* 3211E8 802DD098 94620008 */  lhu        $v0, 0x8($v1)
    /* 3211EC 802DD09C 24420064 */  addiu      $v0, $v0, 0x64
    /* 3211F0 802DD0A0 0002C400 */  sll        $t8, $v0, 16
    /* 3211F4 802DD0A4 00181403 */  sra        $v0, $t8, 16
    /* 3211F8 802DD0A8 58400004 */  blezl      $v0, .L802DD0BC_32120C
    /* 3211FC 802DD0AC A4620008 */   sh        $v0, 0x8($v1)
    /* 321200 802DD0B0 10000002 */  b          .L802DD0BC_32120C
    /* 321204 802DD0B4 A4600008 */   sh        $zero, 0x8($v1)
    /* 321208 802DD0B8 A4620008 */  sh         $v0, 0x8($v1)
  .L802DD0BC_32120C:
    /* 32120C 802DD0BC 8FA30064 */  lw         $v1, 0x64($sp)
    /* 321210 802DD0C0 94620008 */  lhu        $v0, 0x8($v1)
    /* 321214 802DD0C4 2442FF9C */  addiu      $v0, $v0, -0x64
    /* 321218 802DD0C8 04430004 */  bgezl      $v0, .L802DD0DC_32122C
    /* 32121C 802DD0CC A4620008 */   sh        $v0, 0x8($v1)
    /* 321220 802DD0D0 10000002 */  b          .L802DD0DC_32122C
    /* 321224 802DD0D4 A4600008 */   sh        $zero, 0x8($v1)
    /* 321228 802DD0D8 A4620008 */  sh         $v0, 0x8($v1)
  .L802DD0DC_32122C:
    /* 32122C 802DD0DC 0C021553 */  jal        func_8008554C_944FC
    /* 321230 802DD0E0 93A400E3 */   lbu       $a0, 0xE3($sp)
    /* 321234 802DD0E4 8FA90074 */  lw         $t1, 0x74($sp)
    /* 321238 802DD0E8 8FAA00CC */  lw         $t2, 0xCC($sp)
    /* 32123C 802DD0EC 1120000A */  beqz       $t1, .L802DD118_321268
    /* 321240 802DD0F0 29410385 */   slti      $at, $t2, 0x385
    /* 321244 802DD0F4 50200006 */  beql       $at, $zero, .L802DD110_321260
    /* 321248 802DD0F8 820D004E */   lb        $t5, 0x4E($s0)
    /* 32124C 802DD0FC 920B0047 */  lbu        $t3, 0x47($s0)
    /* 321250 802DD100 316E0001 */  andi       $t6, $t3, 0x1
    /* 321254 802DD104 51C0000C */  beql       $t6, $zero, .L802DD138_321288
    /* 321258 802DD108 8FA800CC */   lw        $t0, 0xCC($sp)
    /* 32125C 802DD10C 820D004E */  lb         $t5, 0x4E($s0)
  .L802DD110_321260:
    /* 321260 802DD110 51A00009 */  beql       $t5, $zero, .L802DD138_321288
    /* 321264 802DD114 8FA800CC */   lw        $t0, 0xCC($sp)
  .L802DD118_321268:
    /* 321268 802DD118 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 32126C 802DD11C 2401F7BF */  addiu      $at, $zero, -0x841
    /* 321270 802DD120 35EC0100 */  ori        $t4, $t7, 0x100
    /* 321274 802DD124 AE0C0020 */  sw         $t4, 0x20($s0)
    /* 321278 802DD128 0181C024 */  and        $t8, $t4, $at
    /* 32127C 802DD12C 10000015 */  b          .L802DD184_3212D4
    /* 321280 802DD130 AE180020 */   sw        $t8, 0x20($s0)
    /* 321284 802DD134 8FA800CC */  lw         $t0, 0xCC($sp)
  .L802DD138_321288:
    /* 321288 802DD138 2901028B */  slti       $at, $t0, 0x28B
    /* 32128C 802DD13C 50200005 */  beql       $at, $zero, .L802DD154_3212A4
    /* 321290 802DD140 8E0A0020 */   lw        $t2, 0x20($s0)
    /* 321294 802DD144 8209004E */  lb         $t1, 0x4E($s0)
    /* 321298 802DD148 55200009 */  bnel       $t1, $zero, .L802DD170_3212C0
    /* 32129C 802DD14C 8E0F0020 */   lw        $t7, 0x20($s0)
    /* 3212A0 802DD150 8E0A0020 */  lw         $t2, 0x20($s0)
  .L802DD154_3212A4:
    /* 3212A4 802DD154 2401FEBF */  addiu      $at, $zero, -0x141
    /* 3212A8 802DD158 354B0800 */  ori        $t3, $t2, 0x800
    /* 3212AC 802DD15C AE0B0020 */  sw         $t3, 0x20($s0)
    /* 3212B0 802DD160 01616824 */  and        $t5, $t3, $at
    /* 3212B4 802DD164 10000007 */  b          .L802DD184_3212D4
    /* 3212B8 802DD168 AE0D0020 */   sw        $t5, 0x20($s0)
    /* 3212BC 802DD16C 8E0F0020 */  lw         $t7, 0x20($s0)
  .L802DD170_3212C0:
    /* 3212C0 802DD170 2401F7FF */  addiu      $at, $zero, -0x801
    /* 3212C4 802DD174 35EC0140 */  ori        $t4, $t7, 0x140
    /* 3212C8 802DD178 AE0C0020 */  sw         $t4, 0x20($s0)
    /* 3212CC 802DD17C 0181C024 */  and        $t8, $t4, $at
    /* 3212D0 802DD180 AE180020 */  sw         $t8, 0x20($s0)
  .L802DD184_3212D4:
    /* 3212D4 802DD184 0C000E38 */  jal        func_800038E0_44E0
    /* 3212D8 802DD188 00000000 */   nop
    /* 3212DC 802DD18C 24010003 */  addiu      $at, $zero, 0x3
    /* 3212E0 802DD190 0041001A */  div        $zero, $v0, $at
    /* 3212E4 802DD194 00001810 */  mfhi       $v1
    /* 3212E8 802DD198 24010001 */  addiu      $at, $zero, 0x1
    /* 3212EC 802DD19C 10600008 */  beqz       $v1, .L802DD1C0_321310
    /* 3212F0 802DD1A0 8FA90058 */   lw        $t1, 0x58($sp)
    /* 3212F4 802DD1A4 10610009 */  beq        $v1, $at, .L802DD1CC_32131C
    /* 3212F8 802DD1A8 8FAB0058 */   lw        $t3, 0x58($sp)
    /* 3212FC 802DD1AC 24010002 */  addiu      $at, $zero, 0x2
    /* 321300 802DD1B0 10610009 */  beq        $v1, $at, .L802DD1D8_321328
    /* 321304 802DD1B4 8FAD0058 */   lw        $t5, 0x58($sp)
    /* 321308 802DD1B8 1000000A */  b          .L802DD1E4_321334
    /* 32130C 802DD1BC 820F004E */   lb        $t7, 0x4E($s0)
  .L802DD1C0_321310:
    /* 321310 802DD1C0 24080020 */  addiu      $t0, $zero, 0x20
    /* 321314 802DD1C4 10000006 */  b          .L802DD1E0_321330
    /* 321318 802DD1C8 AD28001C */   sw        $t0, 0x1C($t1)
  .L802DD1CC_32131C:
    /* 32131C 802DD1CC 240A0022 */  addiu      $t2, $zero, 0x22
    /* 321320 802DD1D0 10000003 */  b          .L802DD1E0_321330
    /* 321324 802DD1D4 AD6A001C */   sw        $t2, 0x1C($t3)
  .L802DD1D8_321328:
    /* 321328 802DD1D8 240E0023 */  addiu      $t6, $zero, 0x23
    /* 32132C 802DD1DC ADAE001C */  sw         $t6, 0x1C($t5)
  .L802DD1E0_321330:
    /* 321330 802DD1E0 820F004E */  lb         $t7, 0x4E($s0)
  .L802DD1E4_321334:
    /* 321334 802DD1E4 93A400E3 */  lbu        $a0, 0xE3($sp)
    /* 321338 802DD1E8 00002825 */  or         $a1, $zero, $zero
    /* 32133C 802DD1EC 51E0000D */  beql       $t7, $zero, .L802DD224_321374
    /* 321340 802DD1F0 92180026 */   lbu       $t8, 0x26($s0)
    /* 321344 802DD1F4 0C021C73 */  jal        func_800871CC_9617C
    /* 321348 802DD1F8 24060064 */   addiu     $a2, $zero, 0x64
    /* 32134C 802DD1FC 50400009 */  beql       $v0, $zero, .L802DD224_321374
    /* 321350 802DD200 92180026 */   lbu       $t8, 0x26($s0)
    /* 321354 802DD204 0C000E38 */  jal        func_800038E0_44E0
    /* 321358 802DD208 00000000 */   nop
    /* 32135C 802DD20C 24010014 */  addiu      $at, $zero, 0x14
    /* 321360 802DD210 0041001A */  div        $zero, $v0, $at
    /* 321364 802DD214 00006010 */  mfhi       $t4
    /* 321368 802DD218 2599000F */  addiu      $t9, $t4, 0xF
    /* 32136C 802DD21C A619001E */  sh         $t9, 0x1E($s0)
    /* 321370 802DD220 92180026 */  lbu        $t8, 0x26($s0)
  .L802DD224_321374:
    /* 321374 802DD224 5700004C */  bnel       $t8, $zero, .L802DD358_3214A8
    /* 321378 802DD228 8FA90058 */   lw        $t1, 0x58($sp)
    /* 32137C 802DD22C 8208003C */  lb         $t0, 0x3C($s0)
    /* 321380 802DD230 8FB90058 */  lw         $t9, 0x58($sp)
    /* 321384 802DD234 55000012 */  bnel       $t0, $zero, .L802DD280_3213D0
    /* 321388 802DD238 8738003E */   lh        $t8, 0x3E($t9)
    /* 32138C 802DD23C 0C000E38 */  jal        func_800038E0_44E0
    /* 321390 802DD240 00000000 */   nop
    /* 321394 802DD244 24010046 */  addiu      $at, $zero, 0x46
    /* 321398 802DD248 0041001A */  div        $zero, $v0, $at
    /* 32139C 802DD24C 00004810 */  mfhi       $t1
    /* 3213A0 802DD250 252A001E */  addiu      $t2, $t1, 0x1E
    /* 3213A4 802DD254 0C000E38 */  jal        func_800038E0_44E0
    /* 3213A8 802DD258 A20A003C */   sb        $t2, 0x3C($s0)
    /* 3213AC 802DD25C 24010014 */  addiu      $at, $zero, 0x14
    /* 3213B0 802DD260 0041001A */  div        $zero, $v0, $at
    /* 3213B4 802DD264 00005810 */  mfhi       $t3
    /* 3213B8 802DD268 8FAF0058 */  lw         $t7, 0x58($sp)
    /* 3213BC 802DD26C 256E001E */  addiu      $t6, $t3, 0x1E
    /* 3213C0 802DD270 000E6940 */  sll        $t5, $t6, 5
    /* 3213C4 802DD274 10000037 */  b          .L802DD354_3214A4
    /* 3213C8 802DD278 A5ED0040 */   sh        $t5, 0x40($t7)
    /* 3213CC 802DD27C 8738003E */  lh         $t8, 0x3E($t9)
  .L802DD280_3213D0:
    /* 3213D0 802DD280 860C0012 */  lh         $t4, 0x12($s0)
    /* 3213D4 802DD284 07010003 */  bgez       $t8, .L802DD294_3213E4
    /* 3213D8 802DD288 00184043 */   sra       $t0, $t8, 1
    /* 3213DC 802DD28C 27010001 */  addiu      $at, $t8, 0x1
    /* 3213E0 802DD290 00014043 */  sra        $t0, $at, 1
  .L802DD294_3213E4:
    /* 3213E4 802DD294 01884823 */  subu       $t1, $t4, $t0
    /* 3213E8 802DD298 A6090012 */  sh         $t1, 0x12($s0)
    /* 3213EC 802DD29C 860A0012 */  lh         $t2, 0x12($s0)
    /* 3213F0 802DD2A0 05430003 */  bgezl      $t2, .L802DD2B0_321400
    /* 3213F4 802DD2A4 820B003C */   lb        $t3, 0x3C($s0)
    /* 3213F8 802DD2A8 A6000012 */  sh         $zero, 0x12($s0)
    /* 3213FC 802DD2AC 820B003C */  lb         $t3, 0x3C($s0)
  .L802DD2B0_321400:
    /* 321400 802DD2B0 256EFFFF */  addiu      $t6, $t3, -0x1
    /* 321404 802DD2B4 A20E003C */  sb         $t6, 0x3C($s0)
    /* 321408 802DD2B8 820D003C */  lb         $t5, 0x3C($s0)
    /* 32140C 802DD2BC 55A00026 */  bnel       $t5, $zero, .L802DD358_3214A8
    /* 321410 802DD2C0 8FA90058 */   lw        $t1, 0x58($sp)
    /* 321414 802DD2C4 0C000E38 */  jal        func_800038E0_44E0
    /* 321418 802DD2C8 00000000 */   nop
    /* 32141C 802DD2CC 304F0001 */  andi       $t7, $v0, 0x1
    /* 321420 802DD2D0 15E00015 */  bnez       $t7, .L802DD328_321478
    /* 321424 802DD2D4 8FB90074 */   lw        $t9, 0x74($sp)
    /* 321428 802DD2D8 13200013 */  beqz       $t9, .L802DD328_321478
    /* 32142C 802DD2DC 8FAC0058 */   lw        $t4, 0x58($sp)
    /* 321430 802DD2E0 9588003A */  lhu        $t0, 0x3A($t4)
    /* 321434 802DD2E4 8618001C */  lh         $t8, 0x1C($s0)
    /* 321438 802DD2E8 8FAA00CC */  lw         $t2, 0xCC($sp)
    /* 32143C 802DD2EC 05010003 */  bgez       $t0, .L802DD2FC_32144C
    /* 321440 802DD2F0 00084883 */   sra       $t1, $t0, 2
    /* 321444 802DD2F4 25010003 */  addiu      $at, $t0, 0x3
    /* 321448 802DD2F8 00014883 */  sra        $t1, $at, 2
  .L802DD2FC_32144C:
    /* 32144C 802DD2FC 0309082A */  slt        $at, $t8, $t1
    /* 321450 802DD300 14200009 */  bnez       $at, .L802DD328_321478
    /* 321454 802DD304 29410640 */   slti      $at, $t2, 0x640
    /* 321458 802DD308 10200007 */  beqz       $at, .L802DD328_321478
    /* 32145C 802DD30C 240D0096 */   addiu     $t5, $zero, 0x96
    /* 321460 802DD310 8E0B0020 */  lw         $t3, 0x20($s0)
    /* 321464 802DD314 A20D0026 */  sb         $t5, 0x26($s0)
    /* 321468 802DD318 A6000048 */  sh         $zero, 0x48($s0)
    /* 32146C 802DD31C 356E1000 */  ori        $t6, $t3, 0x1000
    /* 321470 802DD320 1000000C */  b          .L802DD354_3214A4
    /* 321474 802DD324 AE0E0020 */   sw        $t6, 0x20($s0)
  .L802DD328_321478:
    /* 321478 802DD328 860F000E */  lh         $t7, 0xE($s0)
    /* 32147C 802DD32C 34018000 */  ori        $at, $zero, 0x8000
    /* 321480 802DD330 A200003C */  sb         $zero, 0x3C($s0)
    /* 321484 802DD334 01E1C821 */  addu       $t9, $t7, $at
    /* 321488 802DD338 0C000E38 */  jal        func_800038E0_44E0
    /* 32148C 802DD33C A619000E */   sh        $t9, 0xE($s0)
    /* 321490 802DD340 24010050 */  addiu      $at, $zero, 0x50
    /* 321494 802DD344 0041001A */  div        $zero, $v0, $at
    /* 321498 802DD348 00006010 */  mfhi       $t4
    /* 32149C 802DD34C 2588003C */  addiu      $t0, $t4, 0x3C
    /* 3214A0 802DD350 A2080026 */  sb         $t0, 0x26($s0)
  .L802DD354_3214A4:
    /* 3214A4 802DD354 8FA90058 */  lw         $t1, 0x58($sp)
  .L802DD358_3214A8:
    /* 3214A8 802DD358 8618001C */  lh         $t8, 0x1C($s0)
    /* 3214AC 802DD35C 93A400E3 */  lbu        $a0, 0xE3($sp)
    /* 3214B0 802DD360 952A003A */  lhu        $t2, 0x3A($t1)
    /* 3214B4 802DD364 24050004 */  addiu      $a1, $zero, 0x4
    /* 3214B8 802DD368 05410003 */  bgez       $t2, .L802DD378_3214C8
    /* 3214BC 802DD36C 000A5883 */   sra       $t3, $t2, 2
    /* 3214C0 802DD370 25410003 */  addiu      $at, $t2, 0x3
    /* 3214C4 802DD374 00015883 */  sra        $t3, $at, 2
  .L802DD378_3214C8:
    /* 3214C8 802DD378 030B082A */  slt        $at, $t8, $t3
    /* 3214CC 802DD37C 5020004D */  beql       $at, $zero, .L802DD4B4_321604
    /* 3214D0 802DD380 9218001A */   lbu       $t8, 0x1A($s0)
    /* 3214D4 802DD384 0C022480 */  jal        func_80089200_981B0
    /* 3214D8 802DD388 24060020 */   addiu     $a2, $zero, 0x20
    /* 3214DC 802DD38C 0C000E38 */  jal        func_800038E0_44E0
    /* 3214E0 802DD390 00000000 */   nop
    /* 3214E4 802DD394 24010005 */  addiu      $at, $zero, 0x5
    /* 3214E8 802DD398 0041001A */  div        $zero, $v0, $at
    /* 3214EC 802DD39C 00007010 */  mfhi       $t6
    /* 3214F0 802DD3A0 3C038005 */  lui        $v1, %hi(D_80052A8C)
    /* 3214F4 802DD3A4 8C632A8C */  lw         $v1, %lo(D_80052A8C)($v1)
    /* 3214F8 802DD3A8 25CD0004 */  addiu      $t5, $t6, 0x4
    /* 3214FC 802DD3AC 02002025 */  or         $a0, $s0, $zero
    /* 321500 802DD3B0 006D001B */  divu       $zero, $v1, $t5
    /* 321504 802DD3B4 00007810 */  mfhi       $t7
    /* 321508 802DD3B8 00002825 */  or         $a1, $zero, $zero
    /* 32150C 802DD3BC 15A00002 */  bnez       $t5, .L802DD3C8_321518
    /* 321510 802DD3C0 00000000 */   nop
    /* 321514 802DD3C4 0007000D */  break      7
  .L802DD3C8_321518:
    /* 321518 802DD3C8 24060032 */  addiu      $a2, $zero, 0x32
    /* 32151C 802DD3CC 15E00013 */  bnez       $t7, .L802DD41C_32156C
    /* 321520 802DD3D0 00003825 */   or        $a3, $zero, $zero
    /* 321524 802DD3D4 27B900C8 */  addiu      $t9, $sp, 0xC8
    /* 321528 802DD3D8 27AC00C4 */  addiu      $t4, $sp, 0xC4
    /* 32152C 802DD3DC 27A800C0 */  addiu      $t0, $sp, 0xC0
    /* 321530 802DD3E0 AFA80018 */  sw         $t0, 0x18($sp)
    /* 321534 802DD3E4 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 321538 802DD3E8 0C04A10A */  jal        func_80128428_1373D8
    /* 32153C 802DD3EC AFB90010 */   sw        $t9, 0x10($sp)
    /* 321540 802DD3F0 8FA900C4 */  lw         $t1, 0xC4($sp)
    /* 321544 802DD3F4 8FAA00C0 */  lw         $t2, 0xC0($sp)
    /* 321548 802DD3F8 24040028 */  addiu      $a0, $zero, 0x28
    /* 32154C 802DD3FC 24050055 */  addiu      $a1, $zero, 0x55
    /* 321550 802DD400 24060002 */  addiu      $a2, $zero, 0x2
    /* 321554 802DD404 87A700CA */  lh         $a3, 0xCA($sp)
    /* 321558 802DD408 AFA90010 */  sw         $t1, 0x10($sp)
    /* 32155C 802DD40C 0C0331EC */  jal        func_800CC7B0_DB760
    /* 321560 802DD410 AFAA0014 */   sw        $t2, 0x14($sp)
    /* 321564 802DD414 3C038005 */  lui        $v1, %hi(D_80052A8C)
    /* 321568 802DD418 8C632A8C */  lw         $v1, %lo(D_80052A8C)($v1)
  .L802DD41C_32156C:
    /* 32156C 802DD41C 24010003 */  addiu      $at, $zero, 0x3
    /* 321570 802DD420 0061001B */  divu       $zero, $v1, $at
    /* 321574 802DD424 0000C010 */  mfhi       $t8
    /* 321578 802DD428 00003825 */  or         $a3, $zero, $zero
    /* 32157C 802DD42C 17000014 */  bnez       $t8, .L802DD480_3215D0
    /* 321580 802DD430 240BFFFF */   addiu     $t3, $zero, -0x1
    /* 321584 802DD434 240E002D */  addiu      $t6, $zero, 0x2D
    /* 321588 802DD438 240D0005 */  addiu      $t5, $zero, 0x5
    /* 32158C 802DD43C 240F0008 */  addiu      $t7, $zero, 0x8
    /* 321590 802DD440 24190080 */  addiu      $t9, $zero, 0x80
    /* 321594 802DD444 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 321598 802DD448 AFAC0034 */  sw         $t4, 0x34($sp)
    /* 32159C 802DD44C AFB90024 */  sw         $t9, 0x24($sp)
    /* 3215A0 802DD450 AFAF0020 */  sw         $t7, 0x20($sp)
    /* 3215A4 802DD454 AFAD001C */  sw         $t5, 0x1C($sp)
    /* 3215A8 802DD458 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 3215AC 802DD45C 86040000 */  lh         $a0, 0x0($s0)
    /* 3215B0 802DD460 86050002 */  lh         $a1, 0x2($s0)
    /* 3215B4 802DD464 86060004 */  lh         $a2, 0x4($s0)
    /* 3215B8 802DD468 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 3215BC 802DD46C AFA00014 */  sw         $zero, 0x14($sp)
    /* 3215C0 802DD470 AFA00028 */  sw         $zero, 0x28($sp)
    /* 3215C4 802DD474 AFA0002C */  sw         $zero, 0x2C($sp)
    /* 3215C8 802DD478 0C03297B */  jal        func_800CA5EC_D959C
    /* 3215CC 802DD47C AFA00030 */   sw        $zero, 0x30($sp)
  .L802DD480_3215D0:
    /* 3215D0 802DD480 8608001C */  lh         $t0, 0x1C($s0)
    /* 3215D4 802DD484 2901000B */  slti       $at, $t0, 0xB
    /* 3215D8 802DD488 5020000A */  beql       $at, $zero, .L802DD4B4_321604
    /* 3215DC 802DD48C 9218001A */   lbu       $t8, 0x1A($s0)
    /* 3215E0 802DD490 8E090020 */  lw         $t1, 0x20($s0)
    /* 3215E4 802DD494 00095280 */  sll        $t2, $t1, 10
    /* 3215E8 802DD498 05400003 */  bltz       $t2, .L802DD4A8_3215F8
    /* 3215EC 802DD49C 00000000 */   nop
    /* 3215F0 802DD4A0 0C00635F */  jal        func_80018D7C_1997C
    /* 3215F4 802DD4A4 240400DA */   addiu     $a0, $zero, 0xDA
  .L802DD4A8_3215F8:
    /* 3215F8 802DD4A8 0C021EAB */  jal        func_80087AAC_96A5C
    /* 3215FC 802DD4AC 93A400E3 */   lbu       $a0, 0xE3($sp)
    /* 321600 802DD4B0 9218001A */  lbu        $t8, 0x1A($s0)
  .L802DD4B4_321604:
    /* 321604 802DD4B4 3C0E8025 */  lui        $t6, %hi(D_802566D4)
    /* 321608 802DD4B8 3C028005 */  lui        $v0, (0x80050000 >> 16)
    /* 32160C 802DD4BC 00185880 */  sll        $t3, $t8, 2
    /* 321610 802DD4C0 01785823 */  subu       $t3, $t3, $t8
    /* 321614 802DD4C4 000B5880 */  sll        $t3, $t3, 2
    /* 321618 802DD4C8 01785821 */  addu       $t3, $t3, $t8
    /* 32161C 802DD4CC 000B58C0 */  sll        $t3, $t3, 3
    /* 321620 802DD4D0 01CB7021 */  addu       $t6, $t6, $t3
    /* 321624 802DD4D4 8DCE66D4 */  lw         $t6, %lo(D_802566D4)($t6)
    /* 321628 802DD4D8 31CD2000 */  andi       $t5, $t6, 0x2000
    /* 32162C 802DD4DC 51A00011 */  beql       $t5, $zero, .L802DD524_321674
    /* 321630 802DD4E0 8602001E */   lh        $v0, 0x1E($s0)
    /* 321634 802DD4E4 8C422B34 */  lw         $v0, 0x2B34($v0)
    /* 321638 802DD4E8 860F0000 */  lh         $t7, 0x0($s0)
    /* 32163C 802DD4EC 860C0004 */  lh         $t4, 0x4($s0)
    /* 321640 802DD4F0 84590000 */  lh         $t9, 0x0($v0)
    /* 321644 802DD4F4 84480004 */  lh         $t0, 0x4($v0)
    /* 321648 802DD4F8 01F91823 */  subu       $v1, $t7, $t9
    /* 32164C 802DD4FC 01882023 */  subu       $a0, $t4, $t0
    /* 321650 802DD500 44848000 */  mtc1       $a0, $f16
    /* 321654 802DD504 44833000 */  mtc1       $v1, $f6
    /* 321658 802DD508 468083A0 */  cvt.s.w    $f14, $f16
    /* 32165C 802DD50C 0C000E09 */  jal        func_80003824_4424
    /* 321660 802DD510 46803320 */   cvt.s.w   $f12, $f6
    /* 321664 802DD514 34018000 */  ori        $at, $zero, 0x8000
    /* 321668 802DD518 00414821 */  addu       $t1, $v0, $at
    /* 32166C 802DD51C A6090006 */  sh         $t1, 0x6($s0)
    /* 321670 802DD520 8602001E */  lh         $v0, 0x1E($s0)
  .L802DD524_321674:
    /* 321674 802DD524 10400002 */  beqz       $v0, .L802DD530_321680
    /* 321678 802DD528 244AFFFF */   addiu     $t2, $v0, -0x1
    /* 32167C 802DD52C A60A001E */  sh         $t2, 0x1E($s0)
  .L802DD530_321680:
    /* 321680 802DD530 92020026 */  lbu        $v0, 0x26($s0)
    /* 321684 802DD534 10400002 */  beqz       $v0, .L802DD540_321690
    /* 321688 802DD538 2458FFFF */   addiu     $t8, $v0, -0x1
    /* 32168C 802DD53C A2180026 */  sb         $t8, 0x26($s0)
  .L802DD540_321690:
    /* 321690 802DD540 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 321694 802DD544 8FB00040 */  lw         $s0, 0x40($sp)
    /* 321698 802DD548 27BD00E0 */  addiu      $sp, $sp, 0xE0
    /* 32169C 802DD54C 03E00008 */  jr         $ra
    /* 3216A0 802DD550 00000000 */   nop
endlabel func_802DC8F4_320A44
