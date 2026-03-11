nonmatching func_8009D96C_AC91C, 0x1028

glabel func_8009D96C_AC91C
    /* AC91C 8009D96C 3C0E8007 */  lui        $t6, %hi(D_80068084)
    /* AC920 8009D970 3C0F8007 */  lui        $t7, %hi(D_80068088)
    /* AC924 8009D974 8DEF8088 */  lw         $t7, %lo(D_80068088)($t7)
    /* AC928 8009D978 8DCE8084 */  lw         $t6, %lo(D_80068084)($t6)
    /* AC92C 8009D97C 27BDFF58 */  addiu      $sp, $sp, -0xA8
    /* AC930 8009D980 448F3000 */  mtc1       $t7, $f6
    /* AC934 8009D984 448E2000 */  mtc1       $t6, $f4
    /* AC938 8009D988 3C01C47A */  lui        $at, (0xC47A0000 >> 16)
    /* AC93C 8009D98C 468031A0 */  cvt.s.w    $f6, $f6
    /* AC940 8009D990 44814000 */  mtc1       $at, $f8
    /* AC944 8009D994 AFBF002C */  sw         $ra, 0x2C($sp)
    /* AC948 8009D998 3C1F8016 */  lui        $ra, %hi(D_80158FEC)
    /* AC94C 8009D99C 3C01447A */  lui        $at, (0x447A0000 >> 16)
    /* AC950 8009D9A0 46802120 */  cvt.s.w    $f4, $f4
    /* AC954 8009D9A4 44800000 */  mtc1       $zero, $f0
    /* AC958 8009D9A8 8FFF8FEC */  lw         $ra, %lo(D_80158FEC)($ra)
    /* AC95C 8009D9AC 44815000 */  mtc1       $at, $f10
    /* AC960 8009D9B0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* AC964 8009D9B4 44818000 */  mtc1       $at, $f16
    /* AC968 8009D9B8 44062000 */  mfc1       $a2, $f4
    /* AC96C 8009D9BC 44073000 */  mfc1       $a3, $f6
    /* AC970 8009D9C0 3C048015 */  lui        $a0, %hi(D_8014ED98)
    /* AC974 8009D9C4 AFBF00A0 */  sw         $ra, 0xA0($sp)
    /* AC978 8009D9C8 44050000 */  mfc1       $a1, $f0
    /* AC97C 8009D9CC 2484ED98 */  addiu      $a0, $a0, %lo(D_8014ED98)
    /* AC980 8009D9D0 E7A80014 */  swc1       $f8, 0x14($sp)
    /* AC984 8009D9D4 E7A00010 */  swc1       $f0, 0x10($sp)
    /* AC988 8009D9D8 E7AA0018 */  swc1       $f10, 0x18($sp)
    /* AC98C 8009D9DC 0C0076D1 */  jal        guFrustum
    /* AC990 8009D9E0 E7B0001C */   swc1      $f16, 0x1C($sp)
    /* AC994 8009D9E4 3C028006 */  lui        $v0, %hi(D_8005BB2C)
    /* AC998 8009D9E8 8C42BB2C */  lw         $v0, %lo(D_8005BB2C)($v0)
    /* AC99C 8009D9EC 3C018006 */  lui        $at, %hi(D_8005BB2C)
    /* AC9A0 8009D9F0 3C0E0002 */  lui        $t6, (0x23001 >> 16)
    /* AC9A4 8009D9F4 24580008 */  addiu      $t8, $v0, 0x8
    /* AC9A8 8009D9F8 AC38BB2C */  sw         $t8, %lo(D_8005BB2C)($at)
    /* AC9AC 8009D9FC 35CE3001 */  ori        $t6, $t6, (0x23001 & 0xFFFF)
    /* AC9B0 8009DA00 3C19B600 */  lui        $t9, (0xB6000000 >> 16)
    /* AC9B4 8009DA04 AC590000 */  sw         $t9, 0x0($v0)
    /* AC9B8 8009DA08 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AC9BC 8009DA0C 3C028006 */  lui        $v0, %hi(D_8005BB2C)
    /* AC9C0 8009DA10 8C42BB2C */  lw         $v0, %lo(D_8005BB2C)($v0)
    /* AC9C4 8009DA14 3C198000 */  lui        $t9, (0x80008000 >> 16)
    /* AC9C8 8009DA18 37398000 */  ori        $t9, $t9, (0x80008000 & 0xFFFF)
    /* AC9CC 8009DA1C 244F0008 */  addiu      $t7, $v0, 0x8
    /* AC9D0 8009DA20 AC2FBB2C */  sw         $t7, %lo(D_8005BB2C)($at)
    /* AC9D4 8009DA24 3C18BB00 */  lui        $t8, (0xBB000000 >> 16)
    /* AC9D8 8009DA28 AC580000 */  sw         $t8, 0x0($v0)
    /* AC9DC 8009DA2C AC590004 */  sw         $t9, 0x4($v0)
    /* AC9E0 8009DA30 3C028006 */  lui        $v0, %hi(D_8005BB2C)
    /* AC9E4 8009DA34 8C42BB2C */  lw         $v0, %lo(D_8005BB2C)($v0)
    /* AC9E8 8009DA38 3C18FFFE */  lui        $t8, (0xFFFE793C >> 16)
    /* AC9EC 8009DA3C 3C0FFCFF */  lui        $t7, (0xFCFFFFFF >> 16)
    /* AC9F0 8009DA40 244E0008 */  addiu      $t6, $v0, 0x8
    /* AC9F4 8009DA44 AC2EBB2C */  sw         $t6, %lo(D_8005BB2C)($at)
    /* AC9F8 8009DA48 35EFFFFF */  ori        $t7, $t7, (0xFCFFFFFF & 0xFFFF)
    /* AC9FC 8009DA4C 3718793C */  ori        $t8, $t8, (0xFFFE793C & 0xFFFF)
    /* ACA00 8009DA50 AC580004 */  sw         $t8, 0x4($v0)
    /* ACA04 8009DA54 AC4F0000 */  sw         $t7, 0x0($v0)
    /* ACA08 8009DA58 3C028006 */  lui        $v0, %hi(D_8005BB2C)
    /* ACA0C 8009DA5C 8C42BB2C */  lw         $v0, %lo(D_8005BB2C)($v0)
    /* ACA10 8009DA60 3C0F0050 */  lui        $t7, (0x504240 >> 16)
    /* ACA14 8009DA64 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
    /* ACA18 8009DA68 24590008 */  addiu      $t9, $v0, 0x8
    /* ACA1C 8009DA6C AC39BB2C */  sw         $t9, %lo(D_8005BB2C)($at)
    /* ACA20 8009DA70 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
    /* ACA24 8009DA74 35EF4240 */  ori        $t7, $t7, (0x504240 & 0xFFFF)
    /* ACA28 8009DA78 AC4F0004 */  sw         $t7, 0x4($v0)
    /* ACA2C 8009DA7C AC4E0000 */  sw         $t6, 0x0($v0)
    /* ACA30 8009DA80 3C028006 */  lui        $v0, %hi(D_8005BB2C)
    /* ACA34 8009DA84 8C42BB2C */  lw         $v0, %lo(D_8005BB2C)($v0)
    /* ACA38 8009DA88 3C19BA00 */  lui        $t9, (0xBA001402 >> 16)
    /* ACA3C 8009DA8C 37391402 */  ori        $t9, $t9, (0xBA001402 & 0xFFFF)
    /* ACA40 8009DA90 24580008 */  addiu      $t8, $v0, 0x8
    /* ACA44 8009DA94 AC38BB2C */  sw         $t8, %lo(D_8005BB2C)($at)
    /* ACA48 8009DA98 AC400004 */  sw         $zero, 0x4($v0)
    /* ACA4C 8009DA9C AC590000 */  sw         $t9, 0x0($v0)
    /* ACA50 8009DAA0 3C028006 */  lui        $v0, %hi(D_8005BB2C)
    /* ACA54 8009DAA4 8C42BB2C */  lw         $v0, %lo(D_8005BB2C)($v0)
    /* ACA58 8009DAA8 3C0FBA00 */  lui        $t7, (0xBA001301 >> 16)
    /* ACA5C 8009DAAC 35EF1301 */  ori        $t7, $t7, (0xBA001301 & 0xFFFF)
    /* ACA60 8009DAB0 244E0008 */  addiu      $t6, $v0, 0x8
    /* ACA64 8009DAB4 AC2EBB2C */  sw         $t6, %lo(D_8005BB2C)($at)
    /* ACA68 8009DAB8 3C180008 */  lui        $t8, (0x80000 >> 16)
    /* ACA6C 8009DABC AC580004 */  sw         $t8, 0x4($v0)
    /* ACA70 8009DAC0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* ACA74 8009DAC4 3C028006 */  lui        $v0, %hi(D_8005BB2C)
    /* ACA78 8009DAC8 8C42BB2C */  lw         $v0, %lo(D_8005BB2C)($v0)
    /* ACA7C 8009DACC 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
    /* ACA80 8009DAD0 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
    /* ACA84 8009DAD4 24590008 */  addiu      $t9, $v0, 0x8
    /* ACA88 8009DAD8 AC39BB2C */  sw         $t9, %lo(D_8005BB2C)($at)
    /* ACA8C 8009DADC 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* ACA90 8009DAE0 AC400004 */  sw         $zero, 0x4($v0)
    /* ACA94 8009DAE4 AC4E0000 */  sw         $t6, 0x0($v0)
    /* ACA98 8009DAE8 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* ACA9C 8009DAEC 00002025 */  or         $a0, $zero, $zero
    /* ACAA0 8009DAF0 00002825 */  or         $a1, $zero, $zero
    /* ACAA4 8009DAF4 0C000E74 */  jal        func_800039D0_45D0
    /* ACAA8 8009DAF8 00003025 */   or        $a2, $zero, $zero
    /* ACAAC 8009DAFC 3C028006 */  lui        $v0, %hi(D_8005BB2C)
    /* ACAB0 8009DB00 8C42BB2C */  lw         $v0, %lo(D_8005BB2C)($v0)
    /* ACAB4 8009DB04 3C018006 */  lui        $at, %hi(D_8005BB2C)
    /* ACAB8 8009DB08 3C180102 */  lui        $t8, (0x1020040 >> 16)
    /* ACABC 8009DB0C 244F0008 */  addiu      $t7, $v0, 0x8
    /* ACAC0 8009DB10 3C058006 */  lui        $a1, %hi(D_8005BB38)
    /* ACAC4 8009DB14 8FBF00A0 */  lw         $ra, 0xA0($sp)
    /* ACAC8 8009DB18 AC2FBB2C */  sw         $t7, %lo(D_8005BB2C)($at)
    /* ACACC 8009DB1C 37180040 */  ori        $t8, $t8, (0x1020040 & 0xFFFF)
    /* ACAD0 8009DB20 24A5BB38 */  addiu      $a1, $a1, %lo(D_8005BB38)
    /* ACAD4 8009DB24 AC580000 */  sw         $t8, 0x0($v0)
    /* ACAD8 8009DB28 8CB90000 */  lw         $t9, 0x0($a1)
    /* ACADC 8009DB2C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* ACAE0 8009DB30 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* ACAE4 8009DB34 03217024 */  and        $t6, $t9, $at
    /* ACAE8 8009DB38 3C068015 */  lui        $a2, %hi(D_8014F1F6)
    /* ACAEC 8009DB3C AC4E0004 */  sw         $t6, 0x4($v0)
    /* ACAF0 8009DB40 8CAF0000 */  lw         $t7, 0x0($a1)
    /* ACAF4 8009DB44 24C6F1F6 */  addiu      $a2, $a2, %lo(D_8014F1F6)
    /* ACAF8 8009DB48 84C40000 */  lh         $a0, 0x0($a2)
    /* ACAFC 8009DB4C 25F80040 */  addiu      $t8, $t7, 0x40
    /* ACB00 8009DB50 ACB80000 */  sw         $t8, 0x0($a1)
    /* ACB04 8009DB54 10800015 */  beqz       $a0, .L8009DBAC_ACB5C
    /* ACB08 8009DB58 3C088015 */   lui       $t0, %hi(D_8014F202)
    /* ACB0C 8009DB5C 3C198015 */  lui        $t9, %hi(D_8014F1F4)
    /* ACB10 8009DB60 8739F1F4 */  lh         $t9, %lo(D_8014F1F4)($t9)
    /* ACB14 8009DB64 3C018015 */  lui        $at, %hi(D_8014F1F4)
    /* ACB18 8009DB68 24180080 */  addiu      $t8, $zero, 0x80
    /* ACB1C 8009DB6C 03247021 */  addu       $t6, $t9, $a0
    /* ACB20 8009DB70 000E1400 */  sll        $v0, $t6, 16
    /* ACB24 8009DB74 A42EF1F4 */  sh         $t6, %lo(D_8014F1F4)($at)
    /* ACB28 8009DB78 00027C03 */  sra        $t7, $v0, 16
    /* ACB2C 8009DB7C 29E10081 */  slti       $at, $t7, 0x81
    /* ACB30 8009DB80 14200006 */  bnez       $at, .L8009DB9C_ACB4C
    /* ACB34 8009DB84 01E01025 */   or        $v0, $t7, $zero
    /* ACB38 8009DB88 3C018015 */  lui        $at, %hi(D_8014F1F4)
    /* ACB3C 8009DB8C A438F1F4 */  sh         $t8, %lo(D_8014F1F4)($at)
    /* ACB40 8009DB90 A4C00000 */  sh         $zero, 0x0($a2)
    /* ACB44 8009DB94 3C028015 */  lui        $v0, %hi(D_8014F1F4)
    /* ACB48 8009DB98 8442F1F4 */  lh         $v0, %lo(D_8014F1F4)($v0)
  .L8009DB9C_ACB4C:
    /* ACB4C 8009DB9C 04410003 */  bgez       $v0, .L8009DBAC_ACB5C
    /* ACB50 8009DBA0 3C018015 */   lui       $at, %hi(D_8014F1F4)
    /* ACB54 8009DBA4 A420F1F4 */  sh         $zero, %lo(D_8014F1F4)($at)
    /* ACB58 8009DBA8 A4C00000 */  sh         $zero, 0x0($a2)
  .L8009DBAC_ACB5C:
    /* ACB5C 8009DBAC 3C048015 */  lui        $a0, %hi(D_8014F1F8)
    /* ACB60 8009DBB0 2484F1F8 */  addiu      $a0, $a0, %lo(D_8014F1F8)
    /* ACB64 8009DBB4 84830000 */  lh         $v1, 0x0($a0)
    /* ACB68 8009DBB8 2508F202 */  addiu      $t0, $t0, %lo(D_8014F202)
    /* ACB6C 8009DBBC 10600014 */  beqz       $v1, .L8009DC10_ACBC0
    /* ACB70 8009DBC0 3C198015 */   lui       $t9, %hi(D_8014F1FA)
    /* ACB74 8009DBC4 8739F1FA */  lh         $t9, %lo(D_8014F1FA)($t9)
    /* ACB78 8009DBC8 3C018015 */  lui        $at, %hi(D_8014F1FA)
    /* ACB7C 8009DBCC 24180080 */  addiu      $t8, $zero, 0x80
    /* ACB80 8009DBD0 03237021 */  addu       $t6, $t9, $v1
    /* ACB84 8009DBD4 000E1400 */  sll        $v0, $t6, 16
    /* ACB88 8009DBD8 A42EF1FA */  sh         $t6, %lo(D_8014F1FA)($at)
    /* ACB8C 8009DBDC 00027C03 */  sra        $t7, $v0, 16
    /* ACB90 8009DBE0 29E10081 */  slti       $at, $t7, 0x81
    /* ACB94 8009DBE4 14200006 */  bnez       $at, .L8009DC00_ACBB0
    /* ACB98 8009DBE8 01E01025 */   or        $v0, $t7, $zero
    /* ACB9C 8009DBEC 3C018015 */  lui        $at, %hi(D_8014F1FA)
    /* ACBA0 8009DBF0 A438F1FA */  sh         $t8, %lo(D_8014F1FA)($at)
    /* ACBA4 8009DBF4 A4800000 */  sh         $zero, 0x0($a0)
    /* ACBA8 8009DBF8 3C028015 */  lui        $v0, %hi(D_8014F1FA)
    /* ACBAC 8009DBFC 8442F1FA */  lh         $v0, %lo(D_8014F1FA)($v0)
  .L8009DC00_ACBB0:
    /* ACBB0 8009DC00 04410003 */  bgez       $v0, .L8009DC10_ACBC0
    /* ACBB4 8009DC04 3C018015 */   lui       $at, %hi(D_8014F1FA)
    /* ACBB8 8009DC08 A420F1FA */  sh         $zero, %lo(D_8014F1FA)($at)
    /* ACBBC 8009DC0C A4800000 */  sh         $zero, 0x0($a0)
  .L8009DC10_ACBC0:
    /* ACBC0 8009DC10 A1000000 */  sb         $zero, 0x0($t0)
    /* ACBC4 8009DC14 3C198005 */  lui        $t9, %hi(gameplayMode)
    /* ACBC8 8009DC18 8F392ADC */  lw         $t9, %lo(gameplayMode)($t9)
    /* ACBCC 8009DC1C 2401000C */  addiu      $at, $zero, 0xC
    /* ACBD0 8009DC20 532100F3 */  beql       $t9, $at, .L8009DFF0_ACFA0
    /* ACBD4 8009DC24 91190000 */   lbu       $t9, 0x0($t0)
    /* ACBD8 8009DC28 13E0005D */  beqz       $ra, .L8009DDA0_ACD50
    /* ACBDC 8009DC2C 3C188004 */   lui       $t8, %hi(currentControllerStates)
    /* ACBE0 8009DC30 93EE001A */  lbu        $t6, 0x1A($ra)
    /* ACBE4 8009DC34 51C000EE */  beql       $t6, $zero, .L8009DFF0_ACFA0
    /* ACBE8 8009DC38 91190000 */   lbu       $t9, 0x0($t0)
    /* ACBEC 8009DC3C 8FEF0020 */  lw         $t7, 0x20($ra)
    /* ACBF0 8009DC40 000FC2C0 */  sll        $t8, $t7, 11
    /* ACBF4 8009DC44 07030005 */  bgezl      $t8, .L8009DC5C_ACC0C
    /* ACBF8 8009DC48 87F9001C */   lh        $t9, 0x1C($ra)
    /* ACBFC 8009DC4C 44809000 */  mtc1       $zero, $f18
    /* ACC00 8009DC50 1000000B */  b          .L8009DC80_ACC30
    /* ACC04 8009DC54 E7B20098 */   swc1      $f18, 0x98($sp)
    /* ACC08 8009DC58 87F9001C */  lh         $t9, 0x1C($ra)
  .L8009DC5C_ACC0C:
    /* ACC0C 8009DC5C 3C014059 */  lui        $at, (0x40590000 >> 16)
    /* ACC10 8009DC60 44815800 */  mtc1       $at, $f11
    /* ACC14 8009DC64 44992000 */  mtc1       $t9, $f4
    /* ACC18 8009DC68 44805000 */  mtc1       $zero, $f10
    /* ACC1C 8009DC6C 468021A0 */  cvt.s.w    $f6, $f4
    /* ACC20 8009DC70 46003221 */  cvt.d.s    $f8, $f6
    /* ACC24 8009DC74 462A4403 */  div.d      $f16, $f8, $f10
    /* ACC28 8009DC78 462084A0 */  cvt.s.d    $f18, $f16
    /* ACC2C 8009DC7C E7B20098 */  swc1       $f18, 0x98($sp)
  .L8009DC80_ACC30:
    /* ACC30 8009DC80 93EE001A */  lbu        $t6, 0x1A($ra)
    /* ACC34 8009DC84 3C188025 */  lui        $t8, %hi(D_802566BA)
    /* ACC38 8009DC88 44805000 */  mtc1       $zero, $f10
    /* ACC3C 8009DC8C 000E7880 */  sll        $t7, $t6, 2
    /* ACC40 8009DC90 01EE7823 */  subu       $t7, $t7, $t6
    /* ACC44 8009DC94 000F7880 */  sll        $t7, $t7, 2
    /* ACC48 8009DC98 01EE7821 */  addu       $t7, $t7, $t6
    /* ACC4C 8009DC9C 000F78C0 */  sll        $t7, $t7, 3
    /* ACC50 8009DCA0 030FC021 */  addu       $t8, $t8, $t7
    /* ACC54 8009DCA4 971866BA */  lhu        $t8, %lo(D_802566BA)($t8)
    /* ACC58 8009DCA8 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
    /* ACC5C 8009DCAC 44982000 */  mtc1       $t8, $f4
    /* ACC60 8009DCB0 07010005 */  bgez       $t8, .L8009DCC8_ACC78
    /* ACC64 8009DCB4 468021A1 */   cvt.d.w   $f6, $f4
    /* ACC68 8009DCB8 44814800 */  mtc1       $at, $f9
    /* ACC6C 8009DCBC 44804000 */  mtc1       $zero, $f8
    /* ACC70 8009DCC0 00000000 */  nop
    /* ACC74 8009DCC4 46283180 */  add.d      $f6, $f6, $f8
  .L8009DCC8_ACC78:
    /* ACC78 8009DCC8 3C014059 */  lui        $at, (0x40590000 >> 16)
    /* ACC7C 8009DCCC 44815800 */  mtc1       $at, $f11
    /* ACC80 8009DCD0 3C014049 */  lui        $at, (0x40490000 >> 16)
    /* ACC84 8009DCD4 44819800 */  mtc1       $at, $f19
    /* ACC88 8009DCD8 462A3403 */  div.d      $f16, $f6, $f10
    /* ACC8C 8009DCDC 44809000 */  mtc1       $zero, $f18
    /* ACC90 8009DCE0 AFBF00A0 */  sw         $ra, 0xA0($sp)
    /* ACC94 8009DCE4 27A4008A */  addiu      $a0, $sp, 0x8A
    /* ACC98 8009DCE8 27A50098 */  addiu      $a1, $sp, 0x98
    /* ACC9C 8009DCEC 240600B4 */  addiu      $a2, $zero, 0xB4
    /* ACCA0 8009DCF0 46328102 */  mul.d      $f4, $f16, $f18
    /* ACCA4 8009DCF4 4620220D */  trunc.w.d  $f8, $f4
    /* ACCA8 8009DCF8 440E4000 */  mfc1       $t6, $f8
    /* ACCAC 8009DCFC 0C027640 */  jal        func_8009D900_AC8B0
    /* ACCB0 8009DD00 A7AE008A */   sh        $t6, 0x8A($sp)
    /* ACCB4 8009DD04 8FBF00A0 */  lw         $ra, 0xA0($sp)
    /* ACCB8 8009DD08 3C0E8025 */  lui        $t6, %hi(D_802566BA)
    /* ACCBC 8009DD0C 3C088015 */  lui        $t0, %hi(D_8014F202)
    /* ACCC0 8009DD10 93F8001A */  lbu        $t8, 0x1A($ra)
    /* ACCC4 8009DD14 87EF001C */  lh         $t7, 0x1C($ra)
    /* ACCC8 8009DD18 2508F202 */  addiu      $t0, $t0, %lo(D_8014F202)
    /* ACCCC 8009DD1C 0018C880 */  sll        $t9, $t8, 2
    /* ACCD0 8009DD20 0338C823 */  subu       $t9, $t9, $t8
    /* ACCD4 8009DD24 0019C880 */  sll        $t9, $t9, 2
    /* ACCD8 8009DD28 0338C821 */  addu       $t9, $t9, $t8
    /* ACCDC 8009DD2C 0019C8C0 */  sll        $t9, $t9, 3
    /* ACCE0 8009DD30 01D97021 */  addu       $t6, $t6, $t9
    /* ACCE4 8009DD34 95CE66BA */  lhu        $t6, %lo(D_802566BA)($t6)
    /* ACCE8 8009DD38 448F3000 */  mtc1       $t7, $f6
    /* ACCEC 8009DD3C 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* ACCF0 8009DD40 448E8000 */  mtc1       $t6, $f16
    /* ACCF4 8009DD44 468032A0 */  cvt.s.w    $f10, $f6
    /* ACCF8 8009DD48 05C10004 */  bgez       $t6, .L8009DD5C_ACD0C
    /* ACCFC 8009DD4C 468084A0 */   cvt.s.w   $f18, $f16
    /* ACD00 8009DD50 44812000 */  mtc1       $at, $f4
    /* ACD04 8009DD54 00000000 */  nop
    /* ACD08 8009DD58 46049480 */  add.s      $f18, $f18, $f4
  .L8009DD5C_ACD0C:
    /* ACD0C 8009DD5C 46125203 */  div.s      $f8, $f10, $f18
    /* ACD10 8009DD60 3C188015 */  lui        $t8, %hi(D_8014ED44)
    /* ACD14 8009DD64 8718ED44 */  lh         $t8, %lo(D_8014ED44)($t8)
    /* ACD18 8009DD68 24190003 */  addiu      $t9, $zero, 0x3
    /* ACD1C 8009DD6C A1190000 */  sb         $t9, 0x0($t0)
    /* ACD20 8009DD70 3C0E8016 */  lui        $t6, %hi(D_80158FF0)
    /* ACD24 8009DD74 8DCE8FF0 */  lw         $t6, %lo(D_80158FF0)($t6)
    /* ACD28 8009DD78 3C0F8026 */  lui        $t7, %hi(D_8025EC40)
    /* ACD2C 8009DD7C 25EFEC40 */  addiu      $t7, $t7, %lo(D_8025EC40)
    /* ACD30 8009DD80 AFAF008C */  sw         $t7, 0x8C($sp)
    /* ACD34 8009DD84 AFBF007C */  sw         $ra, 0x7C($sp)
    /* ACD38 8009DD88 240F0004 */  addiu      $t7, $zero, 0x4
    /* ACD3C 8009DD8C A7B80082 */  sh         $t8, 0x82($sp)
    /* ACD40 8009DD90 11C00096 */  beqz       $t6, .L8009DFEC_ACF9C
    /* ACD44 8009DD94 E7A80084 */   swc1      $f8, 0x84($sp)
    /* ACD48 8009DD98 10000094 */  b          .L8009DFEC_ACF9C
    /* ACD4C 8009DD9C A10F0000 */   sb        $t7, 0x0($t0)
  .L8009DDA0_ACD50:
    /* ACD50 8009DDA0 97187588 */  lhu        $t8, %lo(currentControllerStates)($t8)
    /* ACD54 8009DDA4 3C028016 */  lui        $v0, %hi(D_80158FE4)
    /* ACD58 8009DDA8 33190010 */  andi       $t9, $t8, 0x10
    /* ACD5C 8009DDAC 53200090 */  beql       $t9, $zero, .L8009DFF0_ACFA0
    /* ACD60 8009DDB0 91190000 */   lbu       $t9, 0x0($t0)
    /* ACD64 8009DDB4 8C428FE4 */  lw         $v0, %lo(D_80158FE4)($v0)
    /* ACD68 8009DDB8 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* ACD6C 8009DDBC 1040004E */  beqz       $v0, .L8009DEF8_ACEA8
    /* ACD70 8009DDC0 00000000 */   nop
    /* ACD74 8009DDC4 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* ACD78 8009DDC8 24010001 */  addiu      $at, $zero, 0x1
    /* ACD7C 8009DDCC 55C10006 */  bnel       $t6, $at, .L8009DDE8_ACD98
    /* ACD80 8009DDD0 8458001C */   lh        $t8, 0x1C($v0)
    /* ACD84 8009DDD4 904F001A */  lbu        $t7, 0x1A($v0)
    /* ACD88 8009DDD8 24010012 */  addiu      $at, $zero, 0x12
    /* ACD8C 8009DDDC 51E10084 */  beql       $t7, $at, .L8009DFF0_ACFA0
    /* ACD90 8009DDE0 91190000 */   lbu       $t9, 0x0($t0)
    /* ACD94 8009DDE4 8458001C */  lh         $t8, 0x1C($v0)
  .L8009DDE8_ACD98:
    /* ACD98 8009DDE8 3C018014 */  lui        $at, %hi(D_80142710)
    /* ACD9C 8009DDEC D4202710 */  ldc1       $f0, %lo(D_80142710)($at)
    /* ACDA0 8009DDF0 44983000 */  mtc1       $t8, $f6
    /* ACDA4 8009DDF4 3C0F8025 */  lui        $t7, %hi(D_80257A3A)
    /* ACDA8 8009DDF8 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
    /* ACDAC 8009DDFC 46803420 */  cvt.s.w    $f16, $f6
    /* ACDB0 8009DE00 46008121 */  cvt.d.s    $f4, $f16
    /* ACDB4 8009DE04 46202283 */  div.d      $f10, $f4, $f0
    /* ACDB8 8009DE08 462054A0 */  cvt.s.d    $f18, $f10
    /* ACDBC 8009DE0C E7B20098 */  swc1       $f18, 0x98($sp)
    /* ACDC0 8009DE10 9059001A */  lbu        $t9, 0x1A($v0)
    /* ACDC4 8009DE14 001970C0 */  sll        $t6, $t9, 3
    /* ACDC8 8009DE18 01D97023 */  subu       $t6, $t6, $t9
    /* ACDCC 8009DE1C 000E7100 */  sll        $t6, $t6, 4
    /* ACDD0 8009DE20 01EE7821 */  addu       $t7, $t7, $t6
    /* ACDD4 8009DE24 95EF7A3A */  lhu        $t7, %lo(D_80257A3A)($t7)
    /* ACDD8 8009DE28 448F4000 */  mtc1       $t7, $f8
    /* ACDDC 8009DE2C 05E10005 */  bgez       $t7, .L8009DE44_ACDF4
    /* ACDE0 8009DE30 468041A1 */   cvt.d.w   $f6, $f8
    /* ACDE4 8009DE34 44818800 */  mtc1       $at, $f17
    /* ACDE8 8009DE38 44808000 */  mtc1       $zero, $f16
    /* ACDEC 8009DE3C 00000000 */  nop
    /* ACDF0 8009DE40 46303180 */  add.d      $f6, $f6, $f16
  .L8009DE44_ACDF4:
    /* ACDF4 8009DE44 46203103 */  div.d      $f4, $f6, $f0
    /* ACDF8 8009DE48 3C014049 */  lui        $at, (0x40490000 >> 16)
    /* ACDFC 8009DE4C 44815800 */  mtc1       $at, $f11
    /* ACE00 8009DE50 44805000 */  mtc1       $zero, $f10
    /* ACE04 8009DE54 27A4008A */  addiu      $a0, $sp, 0x8A
    /* ACE08 8009DE58 27A50098 */  addiu      $a1, $sp, 0x98
    /* ACE0C 8009DE5C 240600B4 */  addiu      $a2, $zero, 0xB4
    /* ACE10 8009DE60 462A2482 */  mul.d      $f18, $f4, $f10
    /* ACE14 8009DE64 4620920D */  trunc.w.d  $f8, $f18
    /* ACE18 8009DE68 44194000 */  mfc1       $t9, $f8
    /* ACE1C 8009DE6C 0C027640 */  jal        func_8009D900_AC8B0
    /* ACE20 8009DE70 A7B9008A */   sh        $t9, 0x8A($sp)
    /* ACE24 8009DE74 3C028016 */  lui        $v0, %hi(D_80158FE4)
    /* ACE28 8009DE78 8C428FE4 */  lw         $v0, %lo(D_80158FE4)($v0)
    /* ACE2C 8009DE7C 3C198025 */  lui        $t9, %hi(D_80257A3A)
    /* ACE30 8009DE80 3C088015 */  lui        $t0, %hi(D_8014F202)
    /* ACE34 8009DE84 904F001A */  lbu        $t7, 0x1A($v0)
    /* ACE38 8009DE88 844E001C */  lh         $t6, 0x1C($v0)
    /* ACE3C 8009DE8C 2508F202 */  addiu      $t0, $t0, %lo(D_8014F202)
    /* ACE40 8009DE90 000FC0C0 */  sll        $t8, $t7, 3
    /* ACE44 8009DE94 030FC023 */  subu       $t8, $t8, $t7
    /* ACE48 8009DE98 0018C100 */  sll        $t8, $t8, 4
    /* ACE4C 8009DE9C 0338C821 */  addu       $t9, $t9, $t8
    /* ACE50 8009DEA0 97397A3A */  lhu        $t9, %lo(D_80257A3A)($t9)
    /* ACE54 8009DEA4 448E8000 */  mtc1       $t6, $f16
    /* ACE58 8009DEA8 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* ACE5C 8009DEAC 44992000 */  mtc1       $t9, $f4
    /* ACE60 8009DEB0 468081A0 */  cvt.s.w    $f6, $f16
    /* ACE64 8009DEB4 07210004 */  bgez       $t9, .L8009DEC8_ACE78
    /* ACE68 8009DEB8 468022A0 */   cvt.s.w   $f10, $f4
    /* ACE6C 8009DEBC 44819000 */  mtc1       $at, $f18
    /* ACE70 8009DEC0 00000000 */  nop
    /* ACE74 8009DEC4 46125280 */  add.s      $f10, $f10, $f18
  .L8009DEC8_ACE78:
    /* ACE78 8009DEC8 460A3203 */  div.s      $f8, $f6, $f10
    /* ACE7C 8009DECC 3C0F8015 */  lui        $t7, %hi(D_8014ED4A)
    /* ACE80 8009DED0 85EFED4A */  lh         $t7, %lo(D_8014ED4A)($t7)
    /* ACE84 8009DED4 3C0E8026 */  lui        $t6, %hi(D_8025EE80)
    /* ACE88 8009DED8 25CEEE80 */  addiu      $t6, $t6, %lo(D_8025EE80)
    /* ACE8C 8009DEDC 24180002 */  addiu      $t8, $zero, 0x2
    /* ACE90 8009DEE0 AFAE008C */  sw         $t6, 0x8C($sp)
    /* ACE94 8009DEE4 A1180000 */  sb         $t8, 0x0($t0)
    /* ACE98 8009DEE8 AFA2007C */  sw         $v0, 0x7C($sp)
    /* ACE9C 8009DEEC A7AF0082 */  sh         $t7, 0x82($sp)
    /* ACEA0 8009DEF0 1000003E */  b          .L8009DFEC_ACF9C
    /* ACEA4 8009DEF4 E7A80084 */   swc1      $f8, 0x84($sp)
  .L8009DEF8_ACEA8:
    /* ACEA8 8009DEF8 3C028016 */  lui        $v0, %hi(D_80158FE8)
    /* ACEAC 8009DEFC 8C428FE8 */  lw         $v0, %lo(D_80158FE8)($v0)
    /* ACEB0 8009DF00 3C078026 */  lui        $a3, %hi(D_802590A9)
    /* ACEB4 8009DF04 3C0F8004 */  lui        $t7, %hi(currentLevel)
    /* ACEB8 8009DF08 10400038 */  beqz       $v0, .L8009DFEC_ACF9C
    /* ACEBC 8009DF0C 24010005 */   addiu     $at, $zero, 0x5
    /* ACEC0 8009DF10 90590006 */  lbu        $t9, 0x6($v0)
    /* ACEC4 8009DF14 8DEF7F90 */  lw         $t7, %lo(currentLevel)($t7)
    /* ACEC8 8009DF18 8043000F */  lb         $v1, 0xF($v0)
    /* ACECC 8009DF1C 00197140 */  sll        $t6, $t9, 5
    /* ACED0 8009DF20 00EE3821 */  addu       $a3, $a3, $t6
    /* ACED4 8009DF24 15E10006 */  bne        $t7, $at, .L8009DF40_ACEF0
    /* ACED8 8009DF28 80E790A9 */   lb        $a3, %lo(D_802590A9)($a3)
    /* ACEDC 8009DF2C 24010003 */  addiu      $at, $zero, 0x3
    /* ACEE0 8009DF30 0061001A */  div        $zero, $v1, $at
    /* ACEE4 8009DF34 0000C012 */  mflo       $t8
    /* ACEE8 8009DF38 0018CC00 */  sll        $t9, $t8, 16
    /* ACEEC 8009DF3C 00191C03 */  sra        $v1, $t9, 16
  .L8009DF40_ACEF0:
    /* ACEF0 8009DF40 44838000 */  mtc1       $v1, $f16
    /* ACEF4 8009DF44 44875000 */  mtc1       $a3, $f10
    /* ACEF8 8009DF48 3C013FB0 */  lui        $at, (0x3FB00000 >> 16)
    /* ACEFC 8009DF4C 468080A0 */  cvt.s.w    $f2, $f16
    /* ACF00 8009DF50 44810800 */  mtc1       $at, $f1
    /* ACF04 8009DF54 44800000 */  mtc1       $zero, $f0
    /* ACF08 8009DF58 3C014049 */  lui        $at, (0x40490000 >> 16)
    /* ACF0C 8009DF5C 27A4008A */  addiu      $a0, $sp, 0x8A
    /* ACF10 8009DF60 46805320 */  cvt.s.w    $f12, $f10
    /* ACF14 8009DF64 E7A2003C */  swc1       $f2, 0x3C($sp)
    /* ACF18 8009DF68 27A50098 */  addiu      $a1, $sp, 0x98
    /* ACF1C 8009DF6C 240600B4 */  addiu      $a2, $zero, 0xB4
    /* ACF20 8009DF70 46001121 */  cvt.d.s    $f4, $f2
    /* ACF24 8009DF74 46006221 */  cvt.d.s    $f8, $f12
    /* ACF28 8009DF78 46202482 */  mul.d      $f18, $f4, $f0
    /* ACF2C 8009DF7C 44802000 */  mtc1       $zero, $f4
    /* ACF30 8009DF80 44812800 */  mtc1       $at, $f5
    /* ACF34 8009DF84 E7AC0038 */  swc1       $f12, 0x38($sp)
    /* ACF38 8009DF88 46204402 */  mul.d      $f16, $f8, $f0
    /* ACF3C 8009DF8C 462091A0 */  cvt.s.d    $f6, $f18
    /* ACF40 8009DF90 46248482 */  mul.d      $f18, $f16, $f4
    /* ACF44 8009DF94 E7A60098 */  swc1       $f6, 0x98($sp)
    /* ACF48 8009DF98 4620918D */  trunc.w.d  $f6, $f18
    /* ACF4C 8009DF9C 44183000 */  mfc1       $t8, $f6
    /* ACF50 8009DFA0 0C027640 */  jal        func_8009D900_AC8B0
    /* ACF54 8009DFA4 A7B8008A */   sh        $t8, 0x8A($sp)
    /* ACF58 8009DFA8 C7A2003C */  lwc1       $f2, 0x3C($sp)
    /* ACF5C 8009DFAC C7AC0038 */  lwc1       $f12, 0x38($sp)
    /* ACF60 8009DFB0 3C088015 */  lui        $t0, %hi(D_8014F202)
    /* ACF64 8009DFB4 3C0E8015 */  lui        $t6, %hi(D_8014ED48)
    /* ACF68 8009DFB8 460C1283 */  div.s      $f10, $f2, $f12
    /* ACF6C 8009DFBC 85CEED48 */  lh         $t6, %lo(D_8014ED48)($t6)
    /* ACF70 8009DFC0 2508F202 */  addiu      $t0, $t0, %lo(D_8014F202)
    /* ACF74 8009DFC4 240F0001 */  addiu      $t7, $zero, 0x1
    /* ACF78 8009DFC8 A10F0000 */  sb         $t7, 0x0($t0)
    /* ACF7C 8009DFCC 3C188016 */  lui        $t8, %hi(D_80158FE8)
    /* ACF80 8009DFD0 8F188FE8 */  lw         $t8, %lo(D_80158FE8)($t8)
    /* ACF84 8009DFD4 3C198026 */  lui        $t9, %hi(D_8025F0C0)
    /* ACF88 8009DFD8 2739F0C0 */  addiu      $t9, $t9, %lo(D_8025F0C0)
    /* ACF8C 8009DFDC AFB9008C */  sw         $t9, 0x8C($sp)
    /* ACF90 8009DFE0 A7AE0082 */  sh         $t6, 0x82($sp)
    /* ACF94 8009DFE4 AFB8007C */  sw         $t8, 0x7C($sp)
    /* ACF98 8009DFE8 E7AA0084 */  swc1       $f10, 0x84($sp)
  .L8009DFEC_ACF9C:
    /* ACF9C 8009DFEC 91190000 */  lbu        $t9, 0x0($t0)
  .L8009DFF0_ACFA0:
    /* ACFA0 8009DFF0 3C0E8014 */  lui        $t6, %hi(D_8013D5E0)
    /* ACFA4 8009DFF4 3C018014 */  lui        $at, %hi(D_8013D5E0)
    /* ACFA8 8009DFF8 57200009 */  bnel       $t9, $zero, .L8009E020_ACFD0
    /* ACFAC 8009DFFC 8FA5008C */   lw        $a1, 0x8C($sp)
    /* ACFB0 8009E000 44804000 */  mtc1       $zero, $f8
    /* ACFB4 8009E004 8DCED5E0 */  lw         $t6, %lo(D_8013D5E0)($t6)
    /* ACFB8 8009E008 A7A00082 */  sh         $zero, 0x82($sp)
    /* ACFBC 8009E00C A7A0008A */  sh         $zero, 0x8A($sp)
    /* ACFC0 8009E010 AFA0007C */  sw         $zero, 0x7C($sp)
    /* ACFC4 8009E014 E7A80084 */  swc1       $f8, 0x84($sp)
    /* ACFC8 8009E018 AFAE008C */  sw         $t6, 0x8C($sp)
    /* ACFCC 8009E01C 8FA5008C */  lw         $a1, 0x8C($sp)
  .L8009E020_ACFD0:
    /* ACFD0 8009E020 8FB8007C */  lw         $t8, 0x7C($sp)
    /* ACFD4 8009E024 C7AC0084 */  lwc1       $f12, 0x84($sp)
    /* ACFD8 8009E028 87A60082 */  lh         $a2, 0x82($sp)
    /* ACFDC 8009E02C 87A7008A */  lh         $a3, 0x8A($sp)
    /* ACFE0 8009E030 AC25D5E0 */  sw         $a1, %lo(D_8013D5E0)($at)
    /* ACFE4 8009E034 0C027A65 */  jal        func_8009E994_AD944
    /* ACFE8 8009E038 AFB80010 */   sw        $t8, 0x10($sp)
    /* ACFEC 8009E03C 3C088015 */  lui        $t0, %hi(D_8014F202)
    /* ACFF0 8009E040 2508F202 */  addiu      $t0, $t0, %lo(D_8014F202)
    /* ACFF4 8009E044 91190000 */  lbu        $t9, 0x0($t0)
    /* ACFF8 8009E048 3C0E8015 */  lui        $t6, %hi(D_8014F1FA)
    /* ACFFC 8009E04C 85CEF1FA */  lh         $t6, %lo(D_8014F1FA)($t6)
    /* AD000 8009E050 3C018015 */  lui        $at, %hi(D_8014F203)
    /* AD004 8009E054 A039F203 */  sb         $t9, %lo(D_8014F203)($at)
    /* AD008 8009E058 24010080 */  addiu      $at, $zero, 0x80
    /* AD00C 8009E05C 11C100E9 */  beq        $t6, $at, .L8009E404_AD3B4
    /* AD010 8009E060 24020005 */   addiu     $v0, $zero, 0x5
    /* AD014 8009E064 3C038016 */  lui        $v1, %hi(D_8015931A)
    /* AD018 8009E068 8463931A */  lh         $v1, %lo(D_8015931A)($v1)
    /* AD01C 8009E06C 240800C8 */  addiu      $t0, $zero, 0xC8
    /* AD020 8009E070 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* AD024 8009E074 0068001A */  div        $zero, $v1, $t0
    /* AD028 8009E078 00007812 */  mflo       $t7
    /* AD02C 8009E07C 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* AD030 8009E080 004F2023 */  subu       $a0, $v0, $t7
    /* AD034 8009E084 0004C400 */  sll        $t8, $a0, 16
    /* AD038 8009E088 0018CC03 */  sra        $t9, $t8, 16
    /* AD03C 8009E08C 15000002 */  bnez       $t0, .L8009E098_AD048
    /* AD040 8009E090 00000000 */   nop
    /* AD044 8009E094 0007000D */  break      7
  .L8009E098_AD048:
    /* AD048 8009E098 2401FFFF */  addiu      $at, $zero, -0x1
    /* AD04C 8009E09C 15010004 */  bne        $t0, $at, .L8009E0B0_AD060
    /* AD050 8009E0A0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* AD054 8009E0A4 14610002 */  bne        $v1, $at, .L8009E0B0_AD060
    /* AD058 8009E0A8 00000000 */   nop
    /* AD05C 8009E0AC 0006000D */  break      6
  .L8009E0B0_AD060:
    /* AD060 8009E0B0 03202025 */  or         $a0, $t9, $zero
    /* AD064 8009E0B4 144E0003 */  bne        $v0, $t6, .L8009E0C4_AD074
    /* AD068 8009E0B8 3C0F8005 */   lui       $t7, %hi(D_80052B34)
    /* AD06C 8009E0BC 10000002 */  b          .L8009E0C8_AD078
    /* AD070 8009E0C0 00004825 */   or        $t1, $zero, $zero
  .L8009E0C4_AD074:
    /* AD074 8009E0C4 2409FFEC */  addiu      $t1, $zero, -0x14
  .L8009E0C8_AD078:
    /* AD078 8009E0C8 8DEF2B34 */  lw         $t7, %lo(D_80052B34)($t7)
    /* AD07C 8009E0CC 3C198007 */  lui        $t9, %hi(D_80068088)
    /* AD080 8009E0D0 85F8001C */  lh         $t8, 0x1C($t7)
    /* AD084 8009E0D4 1B00006F */  blez       $t8, .L8009E294_AD244
    /* AD088 8009E0D8 00000000 */   nop
    /* AD08C 8009E0DC 1080006D */  beqz       $a0, .L8009E294_AD244
    /* AD090 8009E0E0 00000000 */   nop
    /* AD094 8009E0E4 3C198005 */  lui        $t9, %hi(D_80052A8C)
    /* AD098 8009E0E8 8F392A8C */  lw         $t9, %lo(D_80052A8C)($t9)
    /* AD09C 8009E0EC 24180007 */  addiu      $t8, $zero, 0x7
    /* AD0A0 8009E0F0 0324001B */  divu       $zero, $t9, $a0
    /* AD0A4 8009E0F4 00007012 */  mflo       $t6
    /* AD0A8 8009E0F8 31CF0007 */  andi       $t7, $t6, 0x7
    /* AD0AC 8009E0FC 030F1023 */  subu       $v0, $t8, $t7
    /* AD0B0 8009E100 0002CC00 */  sll        $t9, $v0, 16
    /* AD0B4 8009E104 00197403 */  sra        $t6, $t9, 16
    /* AD0B8 8009E108 14800002 */  bnez       $a0, .L8009E114_AD0C4
    /* AD0BC 8009E10C 00000000 */   nop
    /* AD0C0 8009E110 0007000D */  break      7
  .L8009E114_AD0C4:
    /* AD0C4 8009E114 29C10005 */  slti       $at, $t6, 0x5
    /* AD0C8 8009E118 14200004 */  bnez       $at, .L8009E12C_AD0DC
    /* AD0CC 8009E11C 01C01025 */   or        $v0, $t6, $zero
    /* AD0D0 8009E120 25C2FFFC */  addiu      $v0, $t6, -0x4
    /* AD0D4 8009E124 0002C400 */  sll        $t8, $v0, 16
    /* AD0D8 8009E128 00181403 */  sra        $v0, $t8, 16
  .L8009E12C_AD0DC:
    /* AD0DC 8009E12C 14600002 */  bnez       $v1, .L8009E138_AD0E8
    /* AD0E0 8009E130 286100C9 */   slti      $at, $v1, 0xC9
    /* AD0E4 8009E134 00001025 */  or         $v0, $zero, $zero
  .L8009E138_AD0E8:
    /* AD0E8 8009E138 18600024 */  blez       $v1, .L8009E1CC_AD17C
    /* AD0EC 8009E13C 3C0E8005 */   lui       $t6, %hi(D_8004DCEA)
    /* AD0F0 8009E140 10200022 */  beqz       $at, .L8009E1CC_AD17C
    /* AD0F4 8009E144 3C198015 */   lui       $t9, %hi(D_8014ED42)
    /* AD0F8 8009E148 8739ED42 */  lh         $t9, %lo(D_8014ED42)($t9)
    /* AD0FC 8009E14C 3C0A8015 */  lui        $t2, %hi(D_8014ED4C)
    /* AD100 8009E150 254AED4C */  addiu      $t2, $t2, %lo(D_8014ED4C)
    /* AD104 8009E154 A5590000 */  sh         $t9, 0x0($t2)
    /* AD108 8009E158 0103C823 */  subu       $t9, $t0, $v1
    /* AD10C 8009E15C 44998000 */  mtc1       $t9, $f16
    /* AD110 8009E160 3C014348 */  lui        $at, (0x43480000 >> 16)
    /* AD114 8009E164 44819000 */  mtc1       $at, $f18
    /* AD118 8009E168 46808120 */  cvt.s.w    $f4, $f16
    /* AD11C 8009E16C 3C0E8007 */  lui        $t6, %hi(D_80068088)
    /* AD120 8009E170 8DCE8088 */  lw         $t6, %lo(D_80068088)($t6)
    /* AD124 8009E174 854F0000 */  lh         $t7, 0x0($t2)
    /* AD128 8009E178 24190030 */  addiu      $t9, $zero, 0x30
    /* AD12C 8009E17C 01C92821 */  addu       $a1, $t6, $t1
    /* AD130 8009E180 46122183 */  div.s      $f6, $f4, $f18
    /* AD134 8009E184 24A5FFE2 */  addiu      $a1, $a1, -0x1E
    /* AD138 8009E188 0005C400 */  sll        $t8, $a1, 16
    /* AD13C 8009E18C 00182C03 */  sra        $a1, $t8, 16
    /* AD140 8009E190 3C0E8026 */  lui        $t6, %hi(D_8025F540)
    /* AD144 8009E194 25CEF540 */  addiu      $t6, $t6, %lo(D_8025F540)
    /* AD148 8009E198 24180004 */  addiu      $t8, $zero, 0x4
    /* AD14C 8009E19C AFB80014 */  sw         $t8, 0x14($sp)
    /* AD150 8009E1A0 AFAE0010 */  sw         $t6, 0x10($sp)
    /* AD154 8009E1A4 AFB90020 */  sw         $t9, 0x20($sp)
    /* AD158 8009E1A8 24040050 */  addiu      $a0, $zero, 0x50
    /* AD15C 8009E1AC 00003825 */  or         $a3, $zero, $zero
    /* AD160 8009E1B0 AFA20018 */  sw         $v0, 0x18($sp)
    /* AD164 8009E1B4 AFAF001C */  sw         $t7, 0x1C($sp)
    /* AD168 8009E1B8 44063000 */  mfc1       $a2, $f6
    /* AD16C 8009E1BC 0C0271B3 */  jal        func_8009C6CC_AB67C
    /* AD170 8009E1C0 00000000 */   nop
    /* AD174 8009E1C4 10000044 */  b          .L8009E2D8_AD288
    /* AD178 8009E1C8 00000000 */   nop
  .L8009E1CC_AD17C:
    /* AD17C 8009E1CC 91CEDCEA */  lbu        $t6, %lo(D_8004DCEA)($t6)
    /* AD180 8009E1D0 3C088025 */  lui        $t0, %hi(D_80257A3A)
    /* AD184 8009E1D4 3C038005 */  lui        $v1, %hi(D_8004DCEC)
    /* AD188 8009E1D8 000EC0C0 */  sll        $t8, $t6, 3
    /* AD18C 8009E1DC 030EC023 */  subu       $t8, $t8, $t6
    /* AD190 8009E1E0 0018C100 */  sll        $t8, $t8, 4
    /* AD194 8009E1E4 01184021 */  addu       $t0, $t0, $t8
    /* AD198 8009E1E8 95087A3A */  lhu        $t0, %lo(D_80257A3A)($t0)
    /* AD19C 8009E1EC 8463DCEC */  lh         $v1, %lo(D_8004DCEC)($v1)
    /* AD1A0 8009E1F0 3C0E8007 */  lui        $t6, %hi(D_80068088)
    /* AD1A4 8009E1F4 00087883 */  sra        $t7, $t0, 2
    /* AD1A8 8009E1F8 006F082A */  slt        $at, $v1, $t7
    /* AD1AC 8009E1FC 14200005 */  bnez       $at, .L8009E214_AD1C4
    /* AD1B0 8009E200 24040050 */   addiu     $a0, $zero, 0x50
    /* AD1B4 8009E204 3C198015 */  lui        $t9, %hi(D_8014ED42)
    /* AD1B8 8009E208 8739ED42 */  lh         $t9, %lo(D_8014ED42)($t9)
    /* AD1BC 8009E20C 3C018015 */  lui        $at, %hi(D_8014ED4C)
    /* AD1C0 8009E210 A439ED4C */  sh         $t9, %lo(D_8014ED4C)($at)
  .L8009E214_AD1C4:
    /* AD1C4 8009E214 8DCE8088 */  lw         $t6, %lo(D_80068088)($t6)
    /* AD1C8 8009E218 44835000 */  mtc1       $v1, $f10
    /* AD1CC 8009E21C 44888000 */  mtc1       $t0, $f16
    /* AD1D0 8009E220 01C92821 */  addu       $a1, $t6, $t1
    /* AD1D4 8009E224 24A5FFE2 */  addiu      $a1, $a1, -0x1E
    /* AD1D8 8009E228 0005C400 */  sll        $t8, $a1, 16
    /* AD1DC 8009E22C 00182C03 */  sra        $a1, $t8, 16
    /* AD1E0 8009E230 46805220 */  cvt.s.w    $f8, $f10
    /* AD1E4 8009E234 05010005 */  bgez       $t0, .L8009E24C_AD1FC
    /* AD1E8 8009E238 46808120 */   cvt.s.w   $f4, $f16
    /* AD1EC 8009E23C 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* AD1F0 8009E240 44819000 */  mtc1       $at, $f18
    /* AD1F4 8009E244 00000000 */  nop
    /* AD1F8 8009E248 46122100 */  add.s      $f4, $f4, $f18
  .L8009E24C_AD1FC:
    /* AD1FC 8009E24C 46044183 */  div.s      $f6, $f8, $f4
    /* AD200 8009E250 3C188015 */  lui        $t8, %hi(D_8014ED4C)
    /* AD204 8009E254 8718ED4C */  lh         $t8, %lo(D_8014ED4C)($t8)
    /* AD208 8009E258 3C198026 */  lui        $t9, %hi(D_8025F540)
    /* AD20C 8009E25C 2739F540 */  addiu      $t9, $t9, %lo(D_8025F540)
    /* AD210 8009E260 240E0001 */  addiu      $t6, $zero, 0x1
    /* AD214 8009E264 240F0030 */  addiu      $t7, $zero, 0x30
    /* AD218 8009E268 AFAF0020 */  sw         $t7, 0x20($sp)
    /* AD21C 8009E26C AFAE0014 */  sw         $t6, 0x14($sp)
    /* AD220 8009E270 AFB90010 */  sw         $t9, 0x10($sp)
    /* AD224 8009E274 00003825 */  or         $a3, $zero, $zero
    /* AD228 8009E278 AFA20018 */  sw         $v0, 0x18($sp)
    /* AD22C 8009E27C AFB8001C */  sw         $t8, 0x1C($sp)
    /* AD230 8009E280 44063000 */  mfc1       $a2, $f6
    /* AD234 8009E284 0C0271B3 */  jal        func_8009C6CC_AB67C
    /* AD238 8009E288 00000000 */   nop
    /* AD23C 8009E28C 10000012 */  b          .L8009E2D8_AD288
    /* AD240 8009E290 00000000 */   nop
  .L8009E294_AD244:
    /* AD244 8009E294 8F398088 */  lw         $t9, %lo(D_80068088)($t9)
    /* AD248 8009E298 3C0F8026 */  lui        $t7, %hi(D_8025F540)
    /* AD24C 8009E29C 25EFF540 */  addiu      $t7, $t7, %lo(D_8025F540)
    /* AD250 8009E2A0 03292821 */  addu       $a1, $t9, $t1
    /* AD254 8009E2A4 24A5FFE2 */  addiu      $a1, $a1, -0x1E
    /* AD258 8009E2A8 00057400 */  sll        $t6, $a1, 16
    /* AD25C 8009E2AC 24190030 */  addiu      $t9, $zero, 0x30
    /* AD260 8009E2B0 AFB90020 */  sw         $t9, 0x20($sp)
    /* AD264 8009E2B4 000E2C03 */  sra        $a1, $t6, 16
    /* AD268 8009E2B8 AFAF0010 */  sw         $t7, 0x10($sp)
    /* AD26C 8009E2BC 24040050 */  addiu      $a0, $zero, 0x50
    /* AD270 8009E2C0 24060000 */  addiu      $a2, $zero, 0x0
    /* AD274 8009E2C4 00003825 */  or         $a3, $zero, $zero
    /* AD278 8009E2C8 AFA00014 */  sw         $zero, 0x14($sp)
    /* AD27C 8009E2CC AFA00018 */  sw         $zero, 0x18($sp)
    /* AD280 8009E2D0 0C0271B3 */  jal        func_8009C6CC_AB67C
    /* AD284 8009E2D4 AFA0001C */   sw        $zero, 0x1C($sp)
  .L8009E2D8_AD288:
    /* AD288 8009E2D8 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* AD28C 8009E2DC 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* AD290 8009E2E0 3C088015 */  lui        $t0, %hi(D_8014F204)
    /* AD294 8009E2E4 2508F204 */  addiu      $t0, $t0, %lo(D_8014F204)
    /* AD298 8009E2E8 29C10005 */  slti       $at, $t6, 0x5
    /* AD29C 8009E2EC 10200045 */  beqz       $at, .L8009E404_AD3B4
    /* AD2A0 8009E2F0 3C048005 */   lui       $a0, %hi(D_8004816A)
    /* AD2A4 8009E2F4 8484816A */  lh         $a0, %lo(D_8004816A)($a0)
    /* AD2A8 8009E2F8 8D180000 */  lw         $t8, 0x0($t0)
    /* AD2AC 8009E2FC 3C0F8003 */  lui        $t7, %hi(D_800314C4)
    /* AD2B0 8009E300 3C028003 */  lui        $v0, %hi(D_800314C4)
    /* AD2B4 8009E304 13040008 */  beq        $t8, $a0, .L8009E328_AD2D8
    /* AD2B8 8009E308 3C058007 */   lui       $a1, %hi(D_80068088)
    /* AD2BC 8009E30C 91EF14C4 */  lbu        $t7, %lo(D_800314C4)($t7)
    /* AD2C0 8009E310 240E0008 */  addiu      $t6, $zero, 0x8
    /* AD2C4 8009E314 25F9FFFD */  addiu      $t9, $t7, -0x3
    /* AD2C8 8009E318 0324082A */  slt        $at, $t9, $a0
    /* AD2CC 8009E31C 14200002 */  bnez       $at, .L8009E328_AD2D8
    /* AD2D0 8009E320 3C018015 */   lui       $at, %hi(D_8014ED52)
    /* AD2D4 8009E324 A42EED52 */  sh         $t6, %lo(D_8014ED52)($at)
  .L8009E328_AD2D8:
    /* AD2D8 8009E328 904214C4 */  lbu        $v0, %lo(D_800314C4)($v0)
    /* AD2DC 8009E32C 0044082A */  slt        $at, $v0, $a0
    /* AD2E0 8009E330 10200003 */  beqz       $at, .L8009E340_AD2F0
    /* AD2E4 8009E334 00401825 */   or        $v1, $v0, $zero
    /* AD2E8 8009E338 10000002 */  b          .L8009E344_AD2F4
    /* AD2EC 8009E33C AD030000 */   sw        $v1, 0x0($t0)
  .L8009E340_AD2F0:
    /* AD2F0 8009E340 AD040000 */  sw         $a0, 0x0($t0)
  .L8009E344_AD2F4:
    /* AD2F4 8009E344 8CA58088 */  lw         $a1, %lo(D_80068088)($a1)
    /* AD2F8 8009E348 8D190000 */  lw         $t9, 0x0($t0)
    /* AD2FC 8009E34C 44829000 */  mtc1       $v0, $f18
    /* AD300 8009E350 24A5FFE2 */  addiu      $a1, $a1, -0x1E
    /* AD304 8009E354 44997000 */  mtc1       $t9, $f14
    /* AD308 8009E358 46809220 */  cvt.s.w    $f8, $f18
    /* AD30C 8009E35C 0005C400 */  sll        $t8, $a1, 16
    /* AD310 8009E360 24040050 */  addiu      $a0, $zero, 0x50
    /* AD314 8009E364 00182C03 */  sra        $a1, $t8, 16
    /* AD318 8009E368 04410005 */  bgez       $v0, .L8009E380_AD330
    /* AD31C 8009E36C 46807420 */   cvt.s.w   $f16, $f14
    /* AD320 8009E370 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* AD324 8009E374 44812000 */  mtc1       $at, $f4
    /* AD328 8009E378 00000000 */  nop
    /* AD32C 8009E37C 46044200 */  add.s      $f8, $f8, $f4
  .L8009E380_AD330:
    /* AD330 8009E380 46088183 */  div.s      $f6, $f16, $f8
    /* AD334 8009E384 3C0F8015 */  lui        $t7, %hi(D_8014ED52)
    /* AD338 8009E388 85EFED52 */  lh         $t7, %lo(D_8014ED52)($t7)
    /* AD33C 8009E38C 3C0E8026 */  lui        $t6, %hi(D_8025F780)
    /* AD340 8009E390 25CEF780 */  addiu      $t6, $t6, %lo(D_8025F780)
    /* AD344 8009E394 24180003 */  addiu      $t8, $zero, 0x3
    /* AD348 8009E398 24190030 */  addiu      $t9, $zero, 0x30
    /* AD34C 8009E39C AFB90020 */  sw         $t9, 0x20($sp)
    /* AD350 8009E3A0 AFB80014 */  sw         $t8, 0x14($sp)
    /* AD354 8009E3A4 AFAE0010 */  sw         $t6, 0x10($sp)
    /* AD358 8009E3A8 00003825 */  or         $a3, $zero, $zero
    /* AD35C 8009E3AC AFA00018 */  sw         $zero, 0x18($sp)
    /* AD360 8009E3B0 AFAF001C */  sw         $t7, 0x1C($sp)
    /* AD364 8009E3B4 44063000 */  mfc1       $a2, $f6
    /* AD368 8009E3B8 0C0271B3 */  jal        func_8009C6CC_AB67C
    /* AD36C 8009E3BC 00000000 */   nop
    /* AD370 8009E3C0 3C098005 */  lui        $t1, %hi(D_80052A8C)
    /* AD374 8009E3C4 25292A8C */  addiu      $t1, $t1, %lo(D_80052A8C)
    /* AD378 8009E3C8 8D380000 */  lw         $t8, 0x0($t1)
    /* AD37C 8009E3CC 2401000A */  addiu      $at, $zero, 0xA
    /* AD380 8009E3D0 3C0E8005 */  lui        $t6, %hi(D_8004816A)
    /* AD384 8009E3D4 0301001B */  divu       $zero, $t8, $at
    /* AD388 8009E3D8 85CE816A */  lh         $t6, %lo(D_8004816A)($t6)
    /* AD38C 8009E3DC 3C088015 */  lui        $t0, %hi(D_8014F204)
    /* AD390 8009E3E0 2508F204 */  addiu      $t0, $t0, %lo(D_8014F204)
    /* AD394 8009E3E4 00007810 */  mfhi       $t7
    /* AD398 8009E3E8 AD0E0000 */  sw         $t6, 0x0($t0)
    /* AD39C 8009E3EC 15E00005 */  bnez       $t7, .L8009E404_AD3B4
    /* AD3A0 8009E3F0 00000000 */   nop
    /* AD3A4 8009E3F4 0C02202E */  jal        func_800880B8_97068
    /* AD3A8 8009E3F8 00000000 */   nop
    /* AD3AC 8009E3FC 3C018014 */  lui        $at, %hi(D_8013D5DC)
    /* AD3B0 8009E400 AC22D5DC */  sw         $v0, %lo(D_8013D5DC)($at)
  .L8009E404_AD3B4:
    /* AD3B4 8009E404 3C198015 */  lui        $t9, %hi(D_8014F1F4)
    /* AD3B8 8009E408 8739F1F4 */  lh         $t9, %lo(D_8014F1F4)($t9)
    /* AD3BC 8009E40C 24010080 */  addiu      $at, $zero, 0x80
    /* AD3C0 8009E410 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* AD3C4 8009E414 53210095 */  beql       $t9, $at, .L8009E66C_AD61C
    /* AD3C8 8009E418 87A30072 */   lh        $v1, 0x72($sp)
    /* AD3CC 8009E41C 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* AD3D0 8009E420 3C0E8005 */  lui        $t6, %hi(D_80052AC8)
    /* AD3D4 8009E424 9043001A */  lbu        $v1, 0x1A($v0)
    /* AD3D8 8009E428 1060001D */  beqz       $v1, .L8009E4A0_AD450
    /* AD3DC 8009E42C 00000000 */   nop
    /* AD3E0 8009E430 85CE2AC8 */  lh         $t6, %lo(D_80052AC8)($t6)
    /* AD3E4 8009E434 24010002 */  addiu      $at, $zero, 0x2
    /* AD3E8 8009E438 51C10007 */  beql       $t6, $at, .L8009E458_AD408
    /* AD3EC 8009E43C 8458003C */   lh        $t8, 0x3C($v0)
    /* AD3F0 8009E440 0C02712C */  jal        func_8009C4B0_AB460
    /* AD3F4 8009E444 00000000 */   nop
    /* AD3F8 8009E448 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* AD3FC 8009E44C 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* AD400 8009E450 9043001A */  lbu        $v1, 0x1A($v0)
    /* AD404 8009E454 8458003C */  lh         $t8, 0x3C($v0)
  .L8009E458_AD408:
    /* AD408 8009E458 3C018015 */  lui        $at, %hi(D_8014F69C)
    /* AD40C 8009E45C 0003C8C0 */  sll        $t9, $v1, 3
    /* AD410 8009E460 A7B80076 */  sh         $t8, 0x76($sp)
    /* AD414 8009E464 87AF0076 */  lh         $t7, 0x76($sp)
    /* AD418 8009E468 0323C823 */  subu       $t9, $t9, $v1
    /* AD41C 8009E46C 0019C900 */  sll        $t9, $t9, 4
    /* AD420 8009E470 A42FF69C */  sh         $t7, %lo(D_8014F69C)($at)
    /* AD424 8009E474 8448001C */  lh         $t0, 0x1C($v0)
    /* AD428 8009E478 3C078025 */  lui        $a3, %hi(D_80257A3A)
    /* AD42C 8009E47C 00F93821 */  addu       $a3, $a3, $t9
    /* AD430 8009E480 84E77A3A */  lh         $a3, %lo(D_80257A3A)($a3)
    /* AD434 8009E484 3C018015 */  lui        $at, %hi(D_8014F69E)
    /* AD438 8009E488 A428F69E */  sh         $t0, %lo(D_8014F69E)($at)
    /* AD43C 8009E48C 3C018015 */  lui        $at, %hi(D_8014F6A0)
    /* AD440 8009E490 A7A80074 */  sh         $t0, 0x74($sp)
    /* AD444 8009E494 A427F6A0 */  sh         $a3, %lo(D_8014F6A0)($at)
    /* AD448 8009E498 1000000C */  b          .L8009E4CC_AD47C
    /* AD44C 8009E49C A7A70072 */   sh        $a3, 0x72($sp)
  .L8009E4A0_AD450:
    /* AD450 8009E4A0 0C027128 */  jal        func_8009C4A0_AB450
    /* AD454 8009E4A4 00000000 */   nop
    /* AD458 8009E4A8 3C0E8015 */  lui        $t6, %hi(D_8014F69C)
    /* AD45C 8009E4AC 3C188015 */  lui        $t8, %hi(D_8014F69E)
    /* AD460 8009E4B0 3C0F8015 */  lui        $t7, %hi(D_8014F6A0)
    /* AD464 8009E4B4 85CEF69C */  lh         $t6, %lo(D_8014F69C)($t6)
    /* AD468 8009E4B8 8718F69E */  lh         $t8, %lo(D_8014F69E)($t8)
    /* AD46C 8009E4BC 85EFF6A0 */  lh         $t7, %lo(D_8014F6A0)($t7)
    /* AD470 8009E4C0 A7AE0076 */  sh         $t6, 0x76($sp)
    /* AD474 8009E4C4 A7B80074 */  sh         $t8, 0x74($sp)
    /* AD478 8009E4C8 A7AF0072 */  sh         $t7, 0x72($sp)
  .L8009E4CC_AD47C:
    /* AD47C 8009E4CC 87A80074 */  lh         $t0, 0x74($sp)
    /* AD480 8009E4D0 87A70072 */  lh         $a3, 0x72($sp)
    /* AD484 8009E4D4 3C018014 */  lui        $at, %hi(D_80142718)
    /* AD488 8009E4D8 44885000 */  mtc1       $t0, $f10
    /* AD48C 8009E4DC 44874000 */  mtc1       $a3, $f8
    /* AD490 8009E4E0 D4202718 */  ldc1       $f0, %lo(D_80142718)($at)
    /* AD494 8009E4E4 468050A0 */  cvt.s.w    $f2, $f10
    /* AD498 8009E4E8 3C014048 */  lui        $at, (0x40480000 >> 16)
    /* AD49C 8009E4EC 27A4008A */  addiu      $a0, $sp, 0x8A
    /* AD4A0 8009E4F0 27A50098 */  addiu      $a1, $sp, 0x98
    /* AD4A4 8009E4F4 24060030 */  addiu      $a2, $zero, 0x30
    /* AD4A8 8009E4F8 46804320 */  cvt.s.w    $f12, $f8
    /* AD4AC 8009E4FC E7A2003C */  swc1       $f2, 0x3C($sp)
    /* AD4B0 8009E500 460014A1 */  cvt.d.s    $f18, $f2
    /* AD4B4 8009E504 460061A1 */  cvt.d.s    $f6, $f12
    /* AD4B8 8009E508 46209103 */  div.d      $f4, $f18, $f0
    /* AD4BC 8009E50C 44809000 */  mtc1       $zero, $f18
    /* AD4C0 8009E510 44819800 */  mtc1       $at, $f19
    /* AD4C4 8009E514 E7AC0038 */  swc1       $f12, 0x38($sp)
    /* AD4C8 8009E518 46203283 */  div.d      $f10, $f6, $f0
    /* AD4CC 8009E51C 46202420 */  cvt.s.d    $f16, $f4
    /* AD4D0 8009E520 E7B00098 */  swc1       $f16, 0x98($sp)
    /* AD4D4 8009E524 46325102 */  mul.d      $f4, $f10, $f18
    /* AD4D8 8009E528 4620240D */  trunc.w.d  $f16, $f4
    /* AD4DC 8009E52C 440E8000 */  mfc1       $t6, $f16
    /* AD4E0 8009E530 0C027640 */  jal        func_8009D900_AC8B0
    /* AD4E4 8009E534 A7AE008A */   sh        $t6, 0x8A($sp)
    /* AD4E8 8009E538 87AF0072 */  lh         $t7, 0x72($sp)
    /* AD4EC 8009E53C 87B80074 */  lh         $t8, 0x74($sp)
    /* AD4F0 8009E540 C7A2003C */  lwc1       $f2, 0x3C($sp)
    /* AD4F4 8009E544 000FC883 */  sra        $t9, $t7, 2
    /* AD4F8 8009E548 0319082A */  slt        $at, $t8, $t9
    /* AD4FC 8009E54C 14200005 */  bnez       $at, .L8009E564_AD514
    /* AD500 8009E550 C7AC0038 */   lwc1      $f12, 0x38($sp)
    /* AD504 8009E554 3C0E8015 */  lui        $t6, %hi(D_8014ED46)
    /* AD508 8009E558 85CEED46 */  lh         $t6, %lo(D_8014ED46)($t6)
    /* AD50C 8009E55C 3C018015 */  lui        $at, %hi(D_8014ED4E)
    /* AD510 8009E560 A42EED4E */  sh         $t6, %lo(D_8014ED4E)($at)
  .L8009E564_AD514:
    /* AD514 8009E564 460C1203 */  div.s      $f8, $f2, $f12
    /* AD518 8009E568 3C058007 */  lui        $a1, %hi(D_80068088)
    /* AD51C 8009E56C 8CA58088 */  lw         $a1, %lo(D_80068088)($a1)
    /* AD520 8009E570 3C048007 */  lui        $a0, %hi(D_80068084)
    /* AD524 8009E574 8C848084 */  lw         $a0, %lo(D_80068084)($a0)
    /* AD528 8009E578 24A5FFE2 */  addiu      $a1, $a1, -0x1E
    /* AD52C 8009E57C 0005CC00 */  sll        $t9, $a1, 16
    /* AD530 8009E580 2484FFE0 */  addiu      $a0, $a0, -0x20
    /* AD534 8009E584 00047C00 */  sll        $t7, $a0, 16
    /* AD538 8009E588 00192C03 */  sra        $a1, $t9, 16
    /* AD53C 8009E58C 3C198015 */  lui        $t9, %hi(D_8014ED4E)
    /* AD540 8009E590 000F2403 */  sra        $a0, $t7, 16
    /* AD544 8009E594 8739ED4E */  lh         $t9, %lo(D_8014ED4E)($t9)
    /* AD548 8009E598 87AE008A */  lh         $t6, 0x8A($sp)
    /* AD54C 8009E59C 3C0F8026 */  lui        $t7, %hi(D_8025EE80)
    /* AD550 8009E5A0 25EFEE80 */  addiu      $t7, $t7, %lo(D_8025EE80)
    /* AD554 8009E5A4 24180001 */  addiu      $t8, $zero, 0x1
    /* AD558 8009E5A8 AFB80014 */  sw         $t8, 0x14($sp)
    /* AD55C 8009E5AC AFAF0010 */  sw         $t7, 0x10($sp)
    /* AD560 8009E5B0 24070001 */  addiu      $a3, $zero, 0x1
    /* AD564 8009E5B4 AFA00018 */  sw         $zero, 0x18($sp)
    /* AD568 8009E5B8 AFB9001C */  sw         $t9, 0x1C($sp)
    /* AD56C 8009E5BC AFAE0020 */  sw         $t6, 0x20($sp)
    /* AD570 8009E5C0 44064000 */  mfc1       $a2, $f8
    /* AD574 8009E5C4 0C0271B3 */  jal        func_8009C6CC_AB67C
    /* AD578 8009E5C8 00000000 */   nop
    /* AD57C 8009E5CC 3C0F8005 */  lui        $t7, %hi(D_80052B34)
    /* AD580 8009E5D0 8DEF2B34 */  lw         $t7, %lo(D_80052B34)($t7)
    /* AD584 8009E5D4 24010013 */  addiu      $at, $zero, 0x13
    /* AD588 8009E5D8 3C048007 */  lui        $a0, %hi(D_80068084)
    /* AD58C 8009E5DC 91F8001A */  lbu        $t8, 0x1A($t7)
    /* AD590 8009E5E0 53010022 */  beql       $t8, $at, .L8009E66C_AD61C
    /* AD594 8009E5E4 87A30072 */   lh        $v1, 0x72($sp)
    /* AD598 8009E5E8 8C848084 */  lw         $a0, %lo(D_80068084)($a0)
    /* AD59C 8009E5EC 3C018014 */  lui        $at, %hi(D_80142720)
    /* AD5A0 8009E5F0 D4242720 */  ldc1       $f4, %lo(D_80142720)($at)
    /* AD5A4 8009E5F4 2484FFE0 */  addiu      $a0, $a0, -0x20
    /* AD5A8 8009E5F8 0004CC00 */  sll        $t9, $a0, 16
    /* AD5AC 8009E5FC 00192403 */  sra        $a0, $t9, 16
    /* AD5B0 8009E600 87B90076 */  lh         $t9, 0x76($sp)
    /* AD5B4 8009E604 3C058007 */  lui        $a1, %hi(D_80068088)
    /* AD5B8 8009E608 8CA58088 */  lw         $a1, %lo(D_80068088)($a1)
    /* AD5BC 8009E60C 44993000 */  mtc1       $t9, $f6
    /* AD5C0 8009E610 3C188015 */  lui        $t8, %hi(D_8014ED50)
    /* AD5C4 8009E614 24A5FFCE */  addiu      $a1, $a1, -0x32
    /* AD5C8 8009E618 468032A0 */  cvt.s.w    $f10, $f6
    /* AD5CC 8009E61C 00057C00 */  sll        $t7, $a1, 16
    /* AD5D0 8009E620 8718ED50 */  lh         $t8, %lo(D_8014ED50)($t8)
    /* AD5D4 8009E624 000F2C03 */  sra        $a1, $t7, 16
    /* AD5D8 8009E628 3C0E8026 */  lui        $t6, %hi(D_8025D800)
    /* AD5DC 8009E62C 25CED800 */  addiu      $t6, $t6, %lo(D_8025D800)
    /* AD5E0 8009E630 460054A1 */  cvt.d.s    $f18, $f10
    /* AD5E4 8009E634 240F0001 */  addiu      $t7, $zero, 0x1
    /* AD5E8 8009E638 46249403 */  div.d      $f16, $f18, $f4
    /* AD5EC 8009E63C 24190030 */  addiu      $t9, $zero, 0x30
    /* AD5F0 8009E640 AFB90020 */  sw         $t9, 0x20($sp)
    /* AD5F4 8009E644 AFAF0014 */  sw         $t7, 0x14($sp)
    /* AD5F8 8009E648 AFAE0010 */  sw         $t6, 0x10($sp)
    /* AD5FC 8009E64C 24070001 */  addiu      $a3, $zero, 0x1
    /* AD600 8009E650 AFA00018 */  sw         $zero, 0x18($sp)
    /* AD604 8009E654 AFB8001C */  sw         $t8, 0x1C($sp)
    /* AD608 8009E658 46208220 */  cvt.s.d    $f8, $f16
    /* AD60C 8009E65C 44064000 */  mfc1       $a2, $f8
    /* AD610 8009E660 0C0271B3 */  jal        func_8009C6CC_AB67C
    /* AD614 8009E664 00000000 */   nop
    /* AD618 8009E668 87A30072 */  lh         $v1, 0x72($sp)
  .L8009E66C_AD61C:
    /* AD61C 8009E66C 3C028015 */  lui        $v0, %hi(D_8014ED42)
    /* AD620 8009E670 8442ED42 */  lh         $v0, %lo(D_8014ED42)($v0)
    /* AD624 8009E674 3C098005 */  lui        $t1, %hi(D_80052A8C)
    /* AD628 8009E678 3C048005 */  lui        $a0, %hi(D_8004816A)
    /* AD62C 8009E67C 00037083 */  sra        $t6, $v1, 2
    /* AD630 8009E680 25292A8C */  addiu      $t1, $t1, %lo(D_80052A8C)
    /* AD634 8009E684 01C01825 */  or         $v1, $t6, $zero
    /* AD638 8009E688 18400004 */  blez       $v0, .L8009E69C_AD64C
    /* AD63C 8009E68C 8484816A */   lh        $a0, %lo(D_8004816A)($a0)
    /* AD640 8009E690 244FFFFF */  addiu      $t7, $v0, -0x1
    /* AD644 8009E694 3C018015 */  lui        $at, %hi(D_8014ED42)
    /* AD648 8009E698 A42FED42 */  sh         $t7, %lo(D_8014ED42)($at)
  .L8009E69C_AD64C:
    /* AD64C 8009E69C 3C028015 */  lui        $v0, %hi(D_8014ED46)
    /* AD650 8009E6A0 8442ED46 */  lh         $v0, %lo(D_8014ED46)($v0)
    /* AD654 8009E6A4 3C058015 */  lui        $a1, %hi(D_8014ED48)
    /* AD658 8009E6A8 24A5ED48 */  addiu      $a1, $a1, %lo(D_8014ED48)
    /* AD65C 8009E6AC 18400003 */  blez       $v0, .L8009E6BC_AD66C
    /* AD660 8009E6B0 2458FFFF */   addiu     $t8, $v0, -0x1
    /* AD664 8009E6B4 3C018015 */  lui        $at, %hi(D_8014ED46)
    /* AD668 8009E6B8 A438ED46 */  sh         $t8, %lo(D_8014ED46)($at)
  .L8009E6BC_AD66C:
    /* AD66C 8009E6BC 3C028015 */  lui        $v0, %hi(D_8014ED44)
    /* AD670 8009E6C0 8442ED44 */  lh         $v0, %lo(D_8014ED44)($v0)
    /* AD674 8009E6C4 3C018015 */  lui        $at, %hi(D_8014ED44)
    /* AD678 8009E6C8 18400002 */  blez       $v0, .L8009E6D4_AD684
    /* AD67C 8009E6CC 2459FFFF */   addiu     $t9, $v0, -0x1
    /* AD680 8009E6D0 A439ED44 */  sh         $t9, %lo(D_8014ED44)($at)
  .L8009E6D4_AD684:
    /* AD684 8009E6D4 3C028015 */  lui        $v0, %hi(D_8014ED4A)
    /* AD688 8009E6D8 8442ED4A */  lh         $v0, %lo(D_8014ED4A)($v0)
    /* AD68C 8009E6DC 3C018015 */  lui        $at, %hi(D_8014ED4A)
    /* AD690 8009E6E0 18400002 */  blez       $v0, .L8009E6EC_AD69C
    /* AD694 8009E6E4 244EFFFF */   addiu     $t6, $v0, -0x1
    /* AD698 8009E6E8 A42EED4A */  sh         $t6, %lo(D_8014ED4A)($at)
  .L8009E6EC_AD69C:
    /* AD69C 8009E6EC 84A20000 */  lh         $v0, 0x0($a1)
    /* AD6A0 8009E6F0 18400002 */  blez       $v0, .L8009E6FC_AD6AC
    /* AD6A4 8009E6F4 244FFFFF */   addiu     $t7, $v0, -0x1
    /* AD6A8 8009E6F8 A4AF0000 */  sh         $t7, 0x0($a1)
  .L8009E6FC_AD6AC:
    /* AD6AC 8009E6FC 87B80076 */  lh         $t8, 0x76($sp)
    /* AD6B0 8009E700 24020008 */  addiu      $v0, $zero, 0x8
    /* AD6B4 8009E704 2B0113C1 */  slti       $at, $t8, 0x13C1
    /* AD6B8 8009E708 10200008 */  beqz       $at, .L8009E72C_AD6DC
    /* AD6BC 8009E70C 3C188003 */   lui       $t8, %hi(D_800314C4)
    /* AD6C0 8009E710 8D390000 */  lw         $t9, 0x0($t1)
    /* AD6C4 8009E714 24020008 */  addiu      $v0, $zero, 0x8
    /* AD6C8 8009E718 3C018015 */  lui        $at, %hi(D_8014ED50)
    /* AD6CC 8009E71C 332E0007 */  andi       $t6, $t9, 0x7
    /* AD6D0 8009E720 004E7823 */  subu       $t7, $v0, $t6
    /* AD6D4 8009E724 10000003 */  b          .L8009E734_AD6E4
    /* AD6D8 8009E728 A42FED50 */   sh        $t7, %lo(D_8014ED50)($at)
  .L8009E72C_AD6DC:
    /* AD6DC 8009E72C 3C018015 */  lui        $at, %hi(D_8014ED50)
    /* AD6E0 8009E730 A420ED50 */  sh         $zero, %lo(D_8014ED50)($at)
  .L8009E734_AD6E4:
    /* AD6E4 8009E734 931814C4 */  lbu        $t8, %lo(D_800314C4)($t8)
    /* AD6E8 8009E738 2719FFFD */  addiu      $t9, $t8, -0x3
    /* AD6EC 8009E73C 0324082A */  slt        $at, $t9, $a0
    /* AD6F0 8009E740 10200008 */  beqz       $at, .L8009E764_AD714
    /* AD6F4 8009E744 00000000 */   nop
    /* AD6F8 8009E748 8D2E0000 */  lw         $t6, 0x0($t1)
    /* AD6FC 8009E74C 3C048015 */  lui        $a0, %hi(D_8014ED52)
    /* AD700 8009E750 2484ED52 */  addiu      $a0, $a0, %lo(D_8014ED52)
    /* AD704 8009E754 31CF0007 */  andi       $t7, $t6, 0x7
    /* AD708 8009E758 004FC023 */  subu       $t8, $v0, $t7
    /* AD70C 8009E75C 10000005 */  b          .L8009E774_AD724
    /* AD710 8009E760 A4980000 */   sh        $t8, 0x0($a0)
  .L8009E764_AD714:
    /* AD714 8009E764 3C018015 */  lui        $at, %hi(D_8014ED52)
    /* AD718 8009E768 3C048015 */  lui        $a0, %hi(D_8014ED52)
    /* AD71C 8009E76C 2484ED52 */  addiu      $a0, $a0, %lo(D_8014ED52)
    /* AD720 8009E770 A420ED52 */  sh         $zero, %lo(D_8014ED52)($at)
  .L8009E774_AD724:
    /* AD724 8009E774 3C0E8005 */  lui        $t6, %hi(D_8004DCEA)
    /* AD728 8009E778 91CEDCEA */  lbu        $t6, %lo(D_8004DCEA)($t6)
    /* AD72C 8009E77C 3C188025 */  lui        $t8, %hi(D_80257A3A)
    /* AD730 8009E780 3C198005 */  lui        $t9, %hi(D_8004DCEC)
    /* AD734 8009E784 000E78C0 */  sll        $t7, $t6, 3
    /* AD738 8009E788 01EE7823 */  subu       $t7, $t7, $t6
    /* AD73C 8009E78C 000F7900 */  sll        $t7, $t7, 4
    /* AD740 8009E790 030FC021 */  addu       $t8, $t8, $t7
    /* AD744 8009E794 97187A3A */  lhu        $t8, %lo(D_80257A3A)($t8)
    /* AD748 8009E798 8739DCEC */  lh         $t9, %lo(D_8004DCEC)($t9)
    /* AD74C 8009E79C 00187083 */  sra        $t6, $t8, 2
    /* AD750 8009E7A0 032E082A */  slt        $at, $t9, $t6
    /* AD754 8009E7A4 10200007 */  beqz       $at, .L8009E7C4_AD774
    /* AD758 8009E7A8 00000000 */   nop
    /* AD75C 8009E7AC 8D2F0000 */  lw         $t7, 0x0($t1)
    /* AD760 8009E7B0 3C018015 */  lui        $at, %hi(D_8014ED4C)
    /* AD764 8009E7B4 31F80007 */  andi       $t8, $t7, 0x7
    /* AD768 8009E7B8 0058C823 */  subu       $t9, $v0, $t8
    /* AD76C 8009E7BC 10000003 */  b          .L8009E7CC_AD77C
    /* AD770 8009E7C0 A439ED4C */   sh        $t9, %lo(D_8014ED4C)($at)
  .L8009E7C4_AD774:
    /* AD774 8009E7C4 3C018015 */  lui        $at, %hi(D_8014ED4C)
    /* AD778 8009E7C8 A420ED4C */  sh         $zero, %lo(D_8014ED4C)($at)
  .L8009E7CC_AD77C:
    /* AD77C 8009E7CC 87AE0074 */  lh         $t6, 0x74($sp)
    /* AD780 8009E7D0 01C3082A */  slt        $at, $t6, $v1
    /* AD784 8009E7D4 10200007 */  beqz       $at, .L8009E7F4_AD7A4
    /* AD788 8009E7D8 3C0E8014 */   lui       $t6, %hi(D_8013D5DC)
    /* AD78C 8009E7DC 8D2F0000 */  lw         $t7, 0x0($t1)
    /* AD790 8009E7E0 3C018015 */  lui        $at, %hi(D_8014ED4E)
    /* AD794 8009E7E4 31F80007 */  andi       $t8, $t7, 0x7
    /* AD798 8009E7E8 0058C823 */  subu       $t9, $v0, $t8
    /* AD79C 8009E7EC 10000003 */  b          .L8009E7FC_AD7AC
    /* AD7A0 8009E7F0 A439ED4E */   sh        $t9, %lo(D_8014ED4E)($at)
  .L8009E7F4_AD7A4:
    /* AD7A4 8009E7F4 3C018015 */  lui        $at, %hi(D_8014ED4E)
    /* AD7A8 8009E7F8 A420ED4E */  sh         $zero, %lo(D_8014ED4E)($at)
  .L8009E7FC_AD7AC:
    /* AD7AC 8009E7FC 8DCED5DC */  lw         $t6, %lo(D_8013D5DC)($t6)
    /* AD7B0 8009E800 51C00007 */  beql       $t6, $zero, .L8009E820_AD7D0
    /* AD7B4 8009E804 84820000 */   lh        $v0, 0x0($a0)
    /* AD7B8 8009E808 8D2F0000 */  lw         $t7, 0x0($t1)
    /* AD7BC 8009E80C 31F80007 */  andi       $t8, $t7, 0x7
    /* AD7C0 8009E810 0058C823 */  subu       $t9, $v0, $t8
    /* AD7C4 8009E814 10000005 */  b          .L8009E82C_AD7DC
    /* AD7C8 8009E818 A4990000 */   sh        $t9, 0x0($a0)
    /* AD7CC 8009E81C 84820000 */  lh         $v0, 0x0($a0)
  .L8009E820_AD7D0:
    /* AD7D0 8009E820 18400002 */  blez       $v0, .L8009E82C_AD7DC
    /* AD7D4 8009E824 244EFFFF */   addiu     $t6, $v0, -0x1
    /* AD7D8 8009E828 A48E0000 */  sh         $t6, 0x0($a0)
  .L8009E82C_AD7DC:
    /* AD7DC 8009E82C 3C048014 */  lui        $a0, %hi(D_80142510)
    /* AD7E0 8009E830 24842510 */  addiu      $a0, $a0, %lo(D_80142510)
    /* AD7E4 8009E834 00002825 */  or         $a1, $zero, $zero
    /* AD7E8 8009E838 0C002929 */  jal        drawText
    /* AD7EC 8009E83C 240600FF */   addiu     $a2, $zero, 0xFF
    /* AD7F0 8009E840 3C0F8007 */  lui        $t7, %hi(D_8006C6C6)
    /* AD7F4 8009E844 95EFC6C6 */  lhu        $t7, %lo(D_8006C6C6)($t7)
    /* AD7F8 8009E848 19E00037 */  blez       $t7, .L8009E928_AD8D8
    /* AD7FC 8009E84C 00000000 */   nop
    /* AD800 8009E850 0C0062B2 */  jal        func_80018AC8_196C8
    /* AD804 8009E854 00000000 */   nop
    /* AD808 8009E858 14400033 */  bnez       $v0, .L8009E928_AD8D8
    /* AD80C 8009E85C 3C038007 */   lui       $v1, %hi(D_8006C6C4)
    /* AD810 8009E860 9463C6C4 */  lhu        $v1, %lo(D_8006C6C4)($v1)
    /* AD814 8009E864 3C028007 */  lui        $v0, %hi(D_8006C6C6)
    /* AD818 8009E868 9442C6C6 */  lhu        $v0, %lo(D_8006C6C6)($v0)
    /* AD81C 8009E86C 2478FFF8 */  addiu      $t8, $v1, -0x8
    /* AD820 8009E870 3C0B8006 */  lui        $t3, %hi(D_8005BB2C)
    /* AD824 8009E874 0302082A */  slt        $at, $t8, $v0
    /* AD828 8009E878 10200005 */  beqz       $at, .L8009E890_AD840
    /* AD82C 8009E87C 256BBB2C */   addiu     $t3, $t3, %lo(D_8005BB2C)
    /* AD830 8009E880 00625023 */  subu       $t2, $v1, $v0
    /* AD834 8009E884 000ACC00 */  sll        $t9, $t2, 16
    /* AD838 8009E888 10000008 */  b          .L8009E8AC_AD85C
    /* AD83C 8009E88C 00195403 */   sra       $t2, $t9, 16
  .L8009E890_AD840:
    /* AD840 8009E890 28410008 */  slti       $at, $v0, 0x8
    /* AD844 8009E894 10200005 */  beqz       $at, .L8009E8AC_AD85C
    /* AD848 8009E898 240A0008 */   addiu     $t2, $zero, 0x8
    /* AD84C 8009E89C 00025400 */  sll        $t2, $v0, 16
    /* AD850 8009E8A0 000A7C03 */  sra        $t7, $t2, 16
    /* AD854 8009E8A4 10000001 */  b          .L8009E8AC_AD85C
    /* AD858 8009E8A8 01E05025 */   or        $t2, $t7, $zero
  .L8009E8AC_AD85C:
    /* AD85C 8009E8AC 8D620000 */  lw         $v0, 0x0($t3)
    /* AD860 8009E8B0 3C0E8C96 */  lui        $t6, (0x8C96F0AA >> 16)
    /* AD864 8009E8B4 35CEF0AA */  ori        $t6, $t6, (0x8C96F0AA & 0xFFFF)
    /* AD868 8009E8B8 24580008 */  addiu      $t8, $v0, 0x8
    /* AD86C 8009E8BC AD780000 */  sw         $t8, 0x0($t3)
    /* AD870 8009E8C0 3C19FA00 */  lui        $t9, (0xFA000000 >> 16)
    /* AD874 8009E8C4 3C098007 */  lui        $t1, %hi(D_80068084)
    /* AD878 8009E8C8 AC590000 */  sw         $t9, 0x0($v0)
    /* AD87C 8009E8CC AC4E0004 */  sw         $t6, 0x4($v0)
    /* AD880 8009E8D0 8D298084 */  lw         $t1, %lo(D_80068084)($t1)
    /* AD884 8009E8D4 000AC880 */  sll        $t9, $t2, 2
    /* AD888 8009E8D8 032AC823 */  subu       $t9, $t9, $t2
    /* AD88C 8009E8DC 0019C840 */  sll        $t9, $t9, 1
    /* AD890 8009E8E0 240E0030 */  addiu      $t6, $zero, 0x30
    /* AD894 8009E8E4 00097843 */  sra        $t7, $t1, 1
    /* AD898 8009E8E8 25E4FFD6 */  addiu      $a0, $t7, -0x2A
    /* AD89C 8009E8EC 01D91823 */  subu       $v1, $t6, $t9
    /* AD8A0 8009E8F0 0004C080 */  sll        $t8, $a0, 2
    /* AD8A4 8009E8F4 01E04825 */  or         $t1, $t7, $zero
    /* AD8A8 8009E8F8 2526002C */  addiu      $a2, $t1, 0x2C
    /* AD8AC 8009E8FC 03002025 */  or         $a0, $t8, $zero
    /* AD8B0 8009E900 246500AF */  addiu      $a1, $v1, 0xAF
    /* AD8B4 8009E904 246700D2 */  addiu      $a3, $v1, 0xD2
    /* AD8B8 8009E908 00077080 */  sll        $t6, $a3, 2
    /* AD8BC 8009E90C 00057880 */  sll        $t7, $a1, 2
    /* AD8C0 8009E910 0006C080 */  sll        $t8, $a2, 2
    /* AD8C4 8009E914 03003025 */  or         $a2, $t8, $zero
    /* AD8C8 8009E918 01E02825 */  or         $a1, $t7, $zero
    /* AD8CC 8009E91C 01C03825 */  or         $a3, $t6, $zero
    /* AD8D0 8009E920 0C0024AE */  jal        func_800092B8_9EB8
    /* AD8D4 8009E924 AFA00010 */   sw        $zero, 0x10($sp)
  .L8009E928_AD8D8:
    /* AD8D8 8009E928 3C068006 */  lui        $a2, %hi(D_8005BB2C)
    /* AD8DC 8009E92C 24C6BB2C */  addiu      $a2, $a2, %lo(D_8005BB2C)
    /* AD8E0 8009E930 8CC20000 */  lw         $v0, 0x0($a2)
    /* AD8E4 8009E934 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* AD8E8 8009E938 3C0EE800 */  lui        $t6, (0xE8000000 >> 16)
    /* AD8EC 8009E93C 24590008 */  addiu      $t9, $v0, 0x8
    /* AD8F0 8009E940 ACD90000 */  sw         $t9, 0x0($a2)
    /* AD8F4 8009E944 AC400004 */  sw         $zero, 0x4($v0)
    /* AD8F8 8009E948 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AD8FC 8009E94C 8CC20000 */  lw         $v0, 0x0($a2)
    /* AD900 8009E950 3C0FB900 */  lui        $t7, (0xB900031D >> 16)
    /* AD904 8009E954 35EF031D */  ori        $t7, $t7, (0xB900031D & 0xFFFF)
    /* AD908 8009E958 24580008 */  addiu      $t8, $v0, 0x8
    /* AD90C 8009E95C ACD80000 */  sw         $t8, 0x0($a2)
    /* AD910 8009E960 AC400004 */  sw         $zero, 0x4($v0)
    /* AD914 8009E964 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AD918 8009E968 8CC20000 */  lw         $v0, 0x0($a2)
    /* AD91C 8009E96C 3C180050 */  lui        $t8, (0x504240 >> 16)
    /* AD920 8009E970 37184240 */  ori        $t8, $t8, (0x504240 & 0xFFFF)
    /* AD924 8009E974 24590008 */  addiu      $t9, $v0, 0x8
    /* AD928 8009E978 ACD90000 */  sw         $t9, 0x0($a2)
    /* AD92C 8009E97C AC580004 */  sw         $t8, 0x4($v0)
    /* AD930 8009E980 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AD934 8009E984 8FBF002C */  lw         $ra, 0x2C($sp)
    /* AD938 8009E988 27BD00A8 */  addiu      $sp, $sp, 0xA8
    /* AD93C 8009E98C 03E00008 */  jr         $ra
    /* AD940 8009E990 00000000 */   nop
endlabel func_8009D96C_AC91C
