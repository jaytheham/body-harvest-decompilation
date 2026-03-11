nonmatching func_8008D900_1759C0, 0x344

glabel func_8008D900_1759C0
    /* 1759C0 8008D900 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 1759C4 8008D904 3C0F800A */  lui        $t7, %hi(D_800A4354)
    /* 1759C8 8008D908 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1759CC 8008D90C 25EF4354 */  addiu      $t7, $t7, %lo(D_800A4354)
    /* 1759D0 8008D910 8DE10000 */  lw         $at, 0x0($t7)
    /* 1759D4 8008D914 27AE0058 */  addiu      $t6, $sp, 0x58
    /* 1759D8 8008D918 3C0B800A */  lui        $t3, %hi(D_800A435C)
    /* 1759DC 8008D91C ADC10000 */  sw         $at, 0x0($t6)
    /* 1759E0 8008D920 95E10004 */  lhu        $at, 0x4($t7)
    /* 1759E4 8008D924 256B435C */  addiu      $t3, $t3, %lo(D_800A435C)
    /* 1759E8 8008D928 27AA0050 */  addiu      $t2, $sp, 0x50
    /* 1759EC 8008D92C A5C10004 */  sh         $at, 0x4($t6)
    /* 1759F0 8008D930 8D610000 */  lw         $at, 0x0($t3)
    /* 1759F4 8008D934 3C0E800A */  lui        $t6, %hi(D_800A4364)
    /* 1759F8 8008D938 25CE4364 */  addiu      $t6, $t6, %lo(D_800A4364)
    /* 1759FC 8008D93C AD410000 */  sw         $at, 0x0($t2)
    /* 175A00 8008D940 95610004 */  lhu        $at, 0x4($t3)
    /* 175A04 8008D944 27B80048 */  addiu      $t8, $sp, 0x48
    /* 175A08 8008D948 3C0C800A */  lui        $t4, %hi(D_800A436C)
    /* 175A0C 8008D94C A5410004 */  sh         $at, 0x4($t2)
    /* 175A10 8008D950 8DC10000 */  lw         $at, 0x0($t6)
    /* 175A14 8008D954 3C0B8010 */  lui        $t3, %hi(D_800FCF26)
    /* 175A18 8008D958 3C058007 */  lui        $a1, %hi(D_80068088)
    /* 175A1C 8008D95C AF010000 */  sw         $at, 0x0($t8)
    /* 175A20 8008D960 95C10004 */  lhu        $at, 0x4($t6)
    /* 175A24 8008D964 2419004A */  addiu      $t9, $zero, 0x4A
    /* 175A28 8008D968 A7010004 */  sh         $at, 0x4($t8)
    /* 175A2C 8008D96C 958C436C */  lhu        $t4, %lo(D_800A436C)($t4)
    /* 175A30 8008D970 8CA58088 */  lw         $a1, %lo(D_80068088)($a1)
    /* 175A34 8008D974 856BCF26 */  lh         $t3, %lo(D_800FCF26)($t3)
    /* 175A38 8008D978 3C01800A */  lui        $at, %hi(D_800A436C)
    /* 175A3C 8008D97C 258A0001 */  addiu      $t2, $t4, 0x1
    /* 175A40 8008D980 A42A436C */  sh         $t2, %lo(D_800A436C)($at)
    /* 175A44 8008D984 24A5FFB0 */  addiu      $a1, $a1, -0x50
    /* 175A48 8008D988 0C00684C */  jal        func_8001A130_1AD30
    /* 175A4C 8008D98C 032B2023 */   subu      $a0, $t9, $t3
    /* 175A50 8008D990 00002025 */  or         $a0, $zero, $zero
    /* 175A54 8008D994 0C000D61 */  jal        isButtonNewlyPressed
    /* 175A58 8008D998 24051000 */   addiu     $a1, $zero, 0x1000
    /* 175A5C 8008D99C 14400004 */  bnez       $v0, .L8008D9B0_175A70
    /* 175A60 8008D9A0 3C018010 */   lui       $at, %hi(D_800FCA80)
    /* 175A64 8008D9A4 AC20CA80 */  sw         $zero, %lo(D_800FCA80)($at)
    /* 175A68 8008D9A8 3C018010 */  lui        $at, %hi(D_800FCA84)
    /* 175A6C 8008D9AC AC20CA84 */  sw         $zero, %lo(D_800FCA84)($at)
  .L8008D9B0_175A70:
    /* 175A70 8008D9B0 0C005EDE */  jal        func_80017B78_18778
    /* 175A74 8008D9B4 00000000 */   nop
    /* 175A78 8008D9B8 24010001 */  addiu      $at, $zero, 0x1
    /* 175A7C 8008D9BC 14410005 */  bne        $v0, $at, .L8008D9D4_175A94
    /* 175A80 8008D9C0 3C098005 */   lui       $t1, %hi(D_80052B34)
    /* 175A84 8008D9C4 0C022EBF */  jal        func_8008BAFC_173BBC
    /* 175A88 8008D9C8 00000000 */   nop
    /* 175A8C 8008D9CC 1000001F */  b          .L8008DA4C_175B0C
    /* 175A90 8008D9D0 00000000 */   nop
  .L8008D9D4_175A94:
    /* 175A94 8008D9D4 8D292B34 */  lw         $t1, %lo(D_80052B34)($t1)
    /* 175A98 8008D9D8 3C188005 */  lui        $t8, %hi(gameplayMode)
    /* 175A9C 8008D9DC 3C0E8005 */  lui        $t6, %hi(gameplayMode)
    /* 175AA0 8008D9E0 912F001A */  lbu        $t7, 0x1A($t1)
    /* 175AA4 8008D9E4 15E0000D */  bnez       $t7, .L8008DA1C_175ADC
    /* 175AA8 8008D9E8 00000000 */   nop
    /* 175AAC 8008D9EC 8F182ADC */  lw         $t8, %lo(gameplayMode)($t8)
    /* 175AB0 8008D9F0 2401000A */  addiu      $at, $zero, 0xA
    /* 175AB4 8008D9F4 17010005 */  bne        $t8, $at, .L8008DA0C_175ACC
    /* 175AB8 8008D9F8 00000000 */   nop
    /* 175ABC 8008D9FC 0C022ED3 */  jal        func_8008BB4C_173C0C
    /* 175AC0 8008DA00 00000000 */   nop
    /* 175AC4 8008DA04 1000000F */  b          .L8008DA44_175B04
    /* 175AC8 8008DA08 00000000 */   nop
  .L8008DA0C_175ACC:
    /* 175ACC 8008DA0C 0C022ED7 */  jal        func_8008BB5C_173C1C
    /* 175AD0 8008DA10 00000000 */   nop
    /* 175AD4 8008DA14 1000000B */  b          .L8008DA44_175B04
    /* 175AD8 8008DA18 00000000 */   nop
  .L8008DA1C_175ADC:
    /* 175ADC 8008DA1C 8DCE2ADC */  lw         $t6, %lo(gameplayMode)($t6)
    /* 175AE0 8008DA20 2401000A */  addiu      $at, $zero, 0xA
    /* 175AE4 8008DA24 15C10005 */  bne        $t6, $at, .L8008DA3C_175AFC
    /* 175AE8 8008DA28 00000000 */   nop
    /* 175AEC 8008DA2C 0C022EBF */  jal        func_8008BAFC_173BBC
    /* 175AF0 8008DA30 00000000 */   nop
    /* 175AF4 8008DA34 10000003 */  b          .L8008DA44_175B04
    /* 175AF8 8008DA38 00000000 */   nop
  .L8008DA3C_175AFC:
    /* 175AFC 8008DA3C 0C022EC5 */  jal        func_8008BB14_173BD4
    /* 175B00 8008DA40 00000000 */   nop
  .L8008DA44_175B04:
    /* 175B04 8008DA44 3C01800A */  lui        $at, %hi(D_800A4370)
    /* 175B08 8008DA48 A4204370 */  sh         $zero, %lo(D_800A4370)($at)
  .L8008DA4C_175B0C:
    /* 175B0C 8008DA4C 0C007CB8 */  jal        func_8001F2E0_1FEE0
    /* 175B10 8008DA50 00000000 */   nop
    /* 175B14 8008DA54 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 175B18 8008DA58 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 175B1C 8008DA5C 8C620000 */  lw         $v0, 0x0($v1)
    /* 175B20 8008DA60 3C0A0002 */  lui        $t2, (0x23001 >> 16)
    /* 175B24 8008DA64 354A3001 */  ori        $t2, $t2, (0x23001 & 0xFFFF)
    /* 175B28 8008DA68 244D0008 */  addiu      $t5, $v0, 0x8
    /* 175B2C 8008DA6C AC6D0000 */  sw         $t5, 0x0($v1)
    /* 175B30 8008DA70 3C0CB600 */  lui        $t4, (0xB6000000 >> 16)
    /* 175B34 8008DA74 AC4C0000 */  sw         $t4, 0x0($v0)
    /* 175B38 8008DA78 AC4A0004 */  sw         $t2, 0x4($v0)
    /* 175B3C 8008DA7C 8C620000 */  lw         $v0, 0x0($v1)
    /* 175B40 8008DA80 3C0BBC00 */  lui        $t3, (0xBC00000E >> 16)
    /* 175B44 8008DA84 356B000E */  ori        $t3, $t3, (0xBC00000E & 0xFFFF)
    /* 175B48 8008DA88 24590008 */  addiu      $t9, $v0, 0x8
    /* 175B4C 8008DA8C AC790000 */  sw         $t9, 0x0($v1)
    /* 175B50 8008DA90 3409FFFF */  ori        $t1, $zero, 0xFFFF
    /* 175B54 8008DA94 AC490004 */  sw         $t1, 0x4($v0)
    /* 175B58 8008DA98 AC4B0000 */  sw         $t3, 0x0($v0)
    /* 175B5C 8008DA9C 8C620000 */  lw         $v0, 0x0($v1)
    /* 175B60 8008DAA0 3C0E8010 */  lui        $t6, %hi(D_800FCAD8)
    /* 175B64 8008DAA4 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 175B68 8008DAA8 244F0008 */  addiu      $t7, $v0, 0x8
    /* 175B6C 8008DAAC AC6F0000 */  sw         $t7, 0x0($v1)
    /* 175B70 8008DAB0 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 175B74 8008DAB4 25CECAD8 */  addiu      $t6, $t6, %lo(D_800FCAD8)
    /* 175B78 8008DAB8 3C180103 */  lui        $t8, (0x1030040 >> 16)
    /* 175B7C 8008DABC 37180040 */  ori        $t8, $t8, (0x1030040 & 0xFFFF)
    /* 175B80 8008DAC0 01C16824 */  and        $t5, $t6, $at
    /* 175B84 8008DAC4 AC4D0004 */  sw         $t5, 0x4($v0)
    /* 175B88 8008DAC8 AC580000 */  sw         $t8, 0x0($v0)
    /* 175B8C 8008DACC 8C620000 */  lw         $v0, 0x0($v1)
    /* 175B90 8008DAD0 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
    /* 175B94 8008DAD4 3C0BB900 */  lui        $t3, (0xB900031D >> 16)
    /* 175B98 8008DAD8 244C0008 */  addiu      $t4, $v0, 0x8
    /* 175B9C 8008DADC AC6C0000 */  sw         $t4, 0x0($v1)
    /* 175BA0 8008DAE0 AC400004 */  sw         $zero, 0x4($v0)
    /* 175BA4 8008DAE4 AC4A0000 */  sw         $t2, 0x0($v0)
    /* 175BA8 8008DAE8 8C620000 */  lw         $v0, 0x0($v1)
    /* 175BAC 8008DAEC 3C090050 */  lui        $t1, (0x504240 >> 16)
    /* 175BB0 8008DAF0 35294240 */  ori        $t1, $t1, (0x504240 & 0xFFFF)
    /* 175BB4 8008DAF4 24590008 */  addiu      $t9, $v0, 0x8
    /* 175BB8 8008DAF8 AC790000 */  sw         $t9, 0x0($v1)
    /* 175BBC 8008DAFC 356B031D */  ori        $t3, $t3, (0xB900031D & 0xFFFF)
    /* 175BC0 8008DB00 AC4B0000 */  sw         $t3, 0x0($v0)
    /* 175BC4 8008DB04 0C023229 */  jal        func_8008C8A4_174964
    /* 175BC8 8008DB08 AC490004 */   sw        $t1, 0x4($v0)
    /* 175BCC 8008DB0C 3C0F8010 */  lui        $t7, %hi(D_800FCA92)
    /* 175BD0 8008DB10 85EFCA92 */  lh         $t7, %lo(D_800FCA92)($t7)
    /* 175BD4 8008DB14 29E10021 */  slti       $at, $t7, 0x21
    /* 175BD8 8008DB18 14200005 */  bnez       $at, .L8008DB30_175BF0
    /* 175BDC 8008DB1C 00000000 */   nop
    /* 175BE0 8008DB20 0C0233CB */  jal        func_8008CF2C_174FEC
    /* 175BE4 8008DB24 00000000 */   nop
    /* 175BE8 8008DB28 10000004 */  b          .L8008DB3C_175BFC
    /* 175BEC 8008DB2C 00002025 */   or        $a0, $zero, $zero
  .L8008DB30_175BF0:
    /* 175BF0 8008DB30 3C018010 */  lui        $at, %hi(D_800FCA90)
    /* 175BF4 8008DB34 A420CA90 */  sh         $zero, %lo(D_800FCA90)($at)
    /* 175BF8 8008DB38 00002025 */  or         $a0, $zero, $zero
  .L8008DB3C_175BFC:
    /* 175BFC 8008DB3C 0C000D61 */  jal        isButtonNewlyPressed
    /* 175C00 8008DB40 24051000 */   addiu     $a1, $zero, 0x1000
    /* 175C04 8008DB44 10400019 */  beqz       $v0, .L8008DBAC_175C6C
    /* 175C08 8008DB48 3C188010 */   lui       $t8, %hi(D_800FCA80)
    /* 175C0C 8008DB4C 8F18CA80 */  lw         $t8, %lo(D_800FCA80)($t8)
    /* 175C10 8008DB50 3C05800E */  lui        $a1, %hi(D_800E65A8)
    /* 175C14 8008DB54 24A565A8 */  addiu      $a1, $a1, %lo(D_800E65A8)
    /* 175C18 8008DB58 17000014 */  bnez       $t8, .L8008DBAC_175C6C
    /* 175C1C 8008DB5C 00000000 */   nop
    /* 175C20 8008DB60 8CA20000 */  lw         $v0, 0x0($a1)
    /* 175C24 8008DB64 24010001 */  addiu      $at, $zero, 0x1
    /* 175C28 8008DB68 3C0E8010 */  lui        $t6, %hi(D_800FCA92)
    /* 175C2C 8008DB6C 1441000F */  bne        $v0, $at, .L8008DBAC_175C6C
    /* 175C30 8008DB70 00000000 */   nop
    /* 175C34 8008DB74 85CECA92 */  lh         $t6, %lo(D_800FCA92)($t6)
    /* 175C38 8008DB78 240600FF */  addiu      $a2, $zero, 0xFF
    /* 175C3C 8008DB7C 3C018010 */  lui        $at, %hi(D_800FCA92)
    /* 175C40 8008DB80 10CE000A */  beq        $a2, $t6, .L8008DBAC_175C6C
    /* 175C44 8008DB84 240D0001 */   addiu     $t5, $zero, 0x1
    /* 175C48 8008DB88 A426CA92 */  sh         $a2, %lo(D_800FCA92)($at)
    /* 175C4C 8008DB8C 3C018010 */  lui        $at, %hi(D_800FCA90)
    /* 175C50 8008DB90 A420CA90 */  sh         $zero, %lo(D_800FCA90)($at)
    /* 175C54 8008DB94 3C018010 */  lui        $at, %hi(D_800FCA84)
    /* 175C58 8008DB98 AC2DCA84 */  sw         $t5, %lo(D_800FCA84)($at)
    /* 175C5C 8008DB9C 344C0002 */  ori        $t4, $v0, 0x2
    /* 175C60 8008DBA0 ACAC0000 */  sw         $t4, 0x0($a1)
    /* 175C64 8008DBA4 0C0054F6 */  jal        func_800153D8_15FD8
    /* 175C68 8008DBA8 240400C6 */   addiu     $a0, $zero, 0xC6
  .L8008DBAC_175C6C:
    /* 175C6C 8008DBAC 0C006A0A */  jal        func_8001A828_1B428
    /* 175C70 8008DBB0 00000000 */   nop
    /* 175C74 8008DBB4 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 175C78 8008DBB8 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 175C7C 8008DBBC 8C620000 */  lw         $v0, 0x0($v1)
    /* 175C80 8008DBC0 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* 175C84 8008DBC4 3C0F8000 */  lui        $t7, (0x80008000 >> 16)
    /* 175C88 8008DBC8 244A0008 */  addiu      $t2, $v0, 0x8
    /* 175C8C 8008DBCC AC6A0000 */  sw         $t2, 0x0($v1)
    /* 175C90 8008DBD0 AC400004 */  sw         $zero, 0x4($v0)
    /* 175C94 8008DBD4 AC590000 */  sw         $t9, 0x0($v0)
    /* 175C98 8008DBD8 8C620000 */  lw         $v0, 0x0($v1)
    /* 175C9C 8008DBDC 35EF8000 */  ori        $t7, $t7, (0x80008000 & 0xFFFF)
    /* 175CA0 8008DBE0 3C09BB00 */  lui        $t1, (0xBB000000 >> 16)
    /* 175CA4 8008DBE4 244B0008 */  addiu      $t3, $v0, 0x8
    /* 175CA8 8008DBE8 AC6B0000 */  sw         $t3, 0x0($v1)
    /* 175CAC 8008DBEC AC4F0004 */  sw         $t7, 0x4($v0)
    /* 175CB0 8008DBF0 AC490000 */  sw         $t1, 0x0($v0)
    /* 175CB4 8008DBF4 8C620000 */  lw         $v0, 0x0($v1)
    /* 175CB8 8008DBF8 3C0EFCFF */  lui        $t6, (0xFCFFFFFF >> 16)
    /* 175CBC 8008DBFC 3C0DFFFE */  lui        $t5, (0xFFFE793C >> 16)
    /* 175CC0 8008DC00 24580008 */  addiu      $t8, $v0, 0x8
    /* 175CC4 8008DC04 AC780000 */  sw         $t8, 0x0($v1)
    /* 175CC8 8008DC08 35AD793C */  ori        $t5, $t5, (0xFFFE793C & 0xFFFF)
    /* 175CCC 8008DC0C 35CEFFFF */  ori        $t6, $t6, (0xFCFFFFFF & 0xFFFF)
    /* 175CD0 8008DC10 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 175CD4 8008DC14 AC4D0004 */  sw         $t5, 0x4($v0)
    /* 175CD8 8008DC18 8C620000 */  lw         $v0, 0x0($v1)
    /* 175CDC 8008DC1C 3C0ABA00 */  lui        $t2, (0xBA000E02 >> 16)
    /* 175CE0 8008DC20 354A0E02 */  ori        $t2, $t2, (0xBA000E02 & 0xFFFF)
    /* 175CE4 8008DC24 244C0008 */  addiu      $t4, $v0, 0x8
    /* 175CE8 8008DC28 AC6C0000 */  sw         $t4, 0x0($v1)
    /* 175CEC 8008DC2C AC400004 */  sw         $zero, 0x4($v0)
    /* 175CF0 8008DC30 AC4A0000 */  sw         $t2, 0x0($v0)
    /* 175CF4 8008DC34 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 175CF8 8008DC38 27BD0068 */  addiu      $sp, $sp, 0x68
    /* 175CFC 8008DC3C 03E00008 */  jr         $ra
    /* 175D00 8008DC40 00000000 */   nop
endlabel func_8008D900_1759C0
