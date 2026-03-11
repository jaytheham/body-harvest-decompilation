nonmatching func_80085984_16DA44, 0x330

glabel func_80085984_16DA44
    /* 16DA44 80085984 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 16DA48 80085988 AFB00040 */  sw         $s0, 0x40($sp)
    /* 16DA4C 8008598C 00048400 */  sll        $s0, $a0, 16
    /* 16DA50 80085990 00107403 */  sra        $t6, $s0, 16
    /* 16DA54 80085994 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 16DA58 80085998 AFA40068 */  sw         $a0, 0x68($sp)
    /* 16DA5C 8008599C 01C08025 */  or         $s0, $t6, $zero
    /* 16DA60 800859A0 AFA5006C */  sw         $a1, 0x6C($sp)
    /* 16DA64 800859A4 AFA60070 */  sw         $a2, 0x70($sp)
    /* 16DA68 800859A8 AFA70074 */  sw         $a3, 0x74($sp)
    /* 16DA6C 800859AC 0C020CE4 */  jal        func_80083390_16B450
    /* 16DA70 800859B0 2404000E */   addiu     $a0, $zero, 0xE
    /* 16DA74 800859B4 2401FFFD */  addiu      $at, $zero, -0x3
    /* 16DA78 800859B8 104100B9 */  beq        $v0, $at, .L80085CA0_16DD60
    /* 16DA7C 800859BC A7A2005E */   sh        $v0, 0x5E($sp)
    /* 16DA80 800859C0 87AF005E */  lh         $t7, 0x5E($sp)
    /* 16DA84 800859C4 3C198010 */  lui        $t9, %hi(D_800FB7B0)
    /* 16DA88 800859C8 2739B7B0 */  addiu      $t9, $t9, %lo(D_800FB7B0)
    /* 16DA8C 800859CC 000FC080 */  sll        $t8, $t7, 2
    /* 16DA90 800859D0 030FC023 */  subu       $t8, $t8, $t7
    /* 16DA94 800859D4 0018C080 */  sll        $t8, $t8, 2
    /* 16DA98 800859D8 030FC023 */  subu       $t8, $t8, $t7
    /* 16DA9C 800859DC 0018C040 */  sll        $t8, $t8, 1
    /* 16DAA0 800859E0 03192021 */  addu       $a0, $t8, $t9
    /* 16DAA4 800859E4 A4900002 */  sh         $s0, 0x2($a0)
    /* 16DAA8 800859E8 0C000E38 */  jal        func_800038E0_44E0
    /* 16DAAC 800859EC AFA40054 */   sw        $a0, 0x54($sp)
    /* 16DAB0 800859F0 93A3006F */  lbu        $v1, 0x6F($sp)
    /* 16DAB4 800859F4 87A90076 */  lh         $t1, 0x76($sp)
    /* 16DAB8 800859F8 8FA40054 */  lw         $a0, 0x54($sp)
    /* 16DABC 800859FC 0043001A */  div        $zero, $v0, $v1
    /* 16DAC0 80085A00 00004010 */  mfhi       $t0
    /* 16DAC4 80085A04 00095080 */  sll        $t2, $t1, 2
    /* 16DAC8 80085A08 010A5821 */  addu       $t3, $t0, $t2
    /* 16DACC 80085A0C 24900008 */  addiu      $s0, $a0, 0x8
    /* 16DAD0 80085A10 04610003 */  bgez       $v1, .L80085A20_16DAE0
    /* 16DAD4 80085A14 00032843 */   sra       $a1, $v1, 1
    /* 16DAD8 80085A18 24610001 */  addiu      $at, $v1, 0x1
    /* 16DADC 80085A1C 00012843 */  sra        $a1, $at, 1
  .L80085A20_16DAE0:
    /* 16DAE0 80085A20 01656023 */  subu       $t4, $t3, $a1
    /* 16DAE4 80085A24 A60C0000 */  sh         $t4, 0x0($s0)
    /* 16DAE8 80085A28 14600002 */  bnez       $v1, .L80085A34_16DAF4
    /* 16DAEC 80085A2C 00000000 */   nop
    /* 16DAF0 80085A30 0007000D */  break      7
  .L80085A34_16DAF4:
    /* 16DAF4 80085A34 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16DAF8 80085A38 14610004 */  bne        $v1, $at, .L80085A4C_16DB0C
    /* 16DAFC 80085A3C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16DB00 80085A40 14410002 */  bne        $v0, $at, .L80085A4C_16DB0C
    /* 16DB04 80085A44 00000000 */   nop
    /* 16DB08 80085A48 0006000D */  break      6
  .L80085A4C_16DB0C:
    /* 16DB0C 80085A4C AFA50048 */  sw         $a1, 0x48($sp)
    /* 16DB10 80085A50 0C000E38 */  jal        func_800038E0_44E0
    /* 16DB14 80085A54 AFA3004C */   sw        $v1, 0x4C($sp)
    /* 16DB18 80085A58 8FA3004C */  lw         $v1, 0x4C($sp)
    /* 16DB1C 80085A5C 87AE007A */  lh         $t6, 0x7A($sp)
    /* 16DB20 80085A60 8FB90048 */  lw         $t9, 0x48($sp)
    /* 16DB24 80085A64 0043001A */  div        $zero, $v0, $v1
    /* 16DB28 80085A68 00006810 */  mfhi       $t5
    /* 16DB2C 80085A6C 000E7880 */  sll        $t7, $t6, 2
    /* 16DB30 80085A70 01AFC021 */  addu       $t8, $t5, $t7
    /* 16DB34 80085A74 14600002 */  bnez       $v1, .L80085A80_16DB40
    /* 16DB38 80085A78 00000000 */   nop
    /* 16DB3C 80085A7C 0007000D */  break      7
  .L80085A80_16DB40:
    /* 16DB40 80085A80 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16DB44 80085A84 14610004 */  bne        $v1, $at, .L80085A98_16DB58
    /* 16DB48 80085A88 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16DB4C 80085A8C 14410002 */  bne        $v0, $at, .L80085A98_16DB58
    /* 16DB50 80085A90 00000000 */   nop
    /* 16DB54 80085A94 0006000D */  break      6
  .L80085A98_16DB58:
    /* 16DB58 80085A98 03194823 */  subu       $t1, $t8, $t9
    /* 16DB5C 80085A9C 0C000E38 */  jal        func_800038E0_44E0
    /* 16DB60 80085AA0 A6090002 */   sh        $t1, 0x2($s0)
    /* 16DB64 80085AA4 8FA3004C */  lw         $v1, 0x4C($sp)
    /* 16DB68 80085AA8 87AA007E */  lh         $t2, 0x7E($sp)
    /* 16DB6C 80085AAC 8FAE0048 */  lw         $t6, 0x48($sp)
    /* 16DB70 80085AB0 0043001A */  div        $zero, $v0, $v1
    /* 16DB74 80085AB4 00004010 */  mfhi       $t0
    /* 16DB78 80085AB8 240400FF */  addiu      $a0, $zero, 0xFF
    /* 16DB7C 80085ABC 000A5880 */  sll        $t3, $t2, 2
    /* 16DB80 80085AC0 010B6021 */  addu       $t4, $t0, $t3
    /* 16DB84 80085AC4 018E6823 */  subu       $t5, $t4, $t6
    /* 16DB88 80085AC8 A60D0004 */  sh         $t5, 0x4($s0)
    /* 16DB8C 80085ACC A2040006 */  sb         $a0, 0x6($s0)
    /* 16DB90 80085AD0 A2040007 */  sb         $a0, 0x7($s0)
    /* 16DB94 80085AD4 A2040008 */  sb         $a0, 0x8($s0)
    /* 16DB98 80085AD8 93AF006F */  lbu        $t7, 0x6F($sp)
    /* 16DB9C 80085ADC 14600002 */  bnez       $v1, .L80085AE8_16DBA8
    /* 16DBA0 80085AE0 00000000 */   nop
    /* 16DBA4 80085AE4 0007000D */  break      7
  .L80085AE8_16DBA8:
    /* 16DBA8 80085AE8 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16DBAC 80085AEC 14610004 */  bne        $v1, $at, .L80085B00_16DBC0
    /* 16DBB0 80085AF0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16DBB4 80085AF4 14410002 */  bne        $v0, $at, .L80085B00_16DBC0
    /* 16DBB8 80085AF8 00000000 */   nop
    /* 16DBBC 80085AFC 0006000D */  break      6
  .L80085B00_16DBC0:
    /* 16DBC0 80085B00 A20F0009 */  sb         $t7, 0x9($s0)
    /* 16DBC4 80085B04 0C000E38 */  jal        func_800038E0_44E0
    /* 16DBC8 80085B08 00000000 */   nop
    /* 16DBCC 80085B0C 04410004 */  bgez       $v0, .L80085B20_16DBE0
    /* 16DBD0 80085B10 30580007 */   andi      $t8, $v0, 0x7
    /* 16DBD4 80085B14 13000002 */  beqz       $t8, .L80085B20_16DBE0
    /* 16DBD8 80085B18 00000000 */   nop
    /* 16DBDC 80085B1C 2718FFF8 */  addiu      $t8, $t8, -0x8
  .L80085B20_16DBE0:
    /* 16DBE0 80085B20 A218000A */  sb         $t8, 0xA($s0)
    /* 16DBE4 80085B24 93B90073 */  lbu        $t9, 0x73($sp)
    /* 16DBE8 80085B28 A200000C */  sb         $zero, 0xC($s0)
    /* 16DBEC 80085B2C 0C000E38 */  jal        func_800038E0_44E0
    /* 16DBF0 80085B30 A219000B */   sb        $t9, 0xB($s0)
    /* 16DBF4 80085B34 24010046 */  addiu      $at, $zero, 0x46
    /* 16DBF8 80085B38 0041001A */  div        $zero, $v0, $at
    /* 16DBFC 80085B3C 00008010 */  mfhi       $s0
    /* 16DC00 80085B40 26100037 */  addiu      $s0, $s0, 0x37
    /* 16DC04 80085B44 00104E00 */  sll        $t1, $s0, 24
    /* 16DC08 80085B48 0C000E38 */  jal        func_800038E0_44E0
    /* 16DC0C 80085B4C 00098603 */   sra       $s0, $t1, 24
    /* 16DC10 80085B50 24010046 */  addiu      $at, $zero, 0x46
    /* 16DC14 80085B54 0041001A */  div        $zero, $v0, $at
    /* 16DC18 80085B58 00004010 */  mfhi       $t0
    /* 16DC1C 80085B5C 250B0037 */  addiu      $t3, $t0, 0x37
    /* 16DC20 80085B60 0C000E38 */  jal        func_800038E0_44E0
    /* 16DC24 80085B64 A3AB0066 */   sb        $t3, 0x66($sp)
    /* 16DC28 80085B68 24010014 */  addiu      $at, $zero, 0x14
    /* 16DC2C 80085B6C 0041001A */  div        $zero, $v0, $at
    /* 16DC30 80085B70 00006010 */  mfhi       $t4
    /* 16DC34 80085B74 2981000A */  slti       $at, $t4, 0xA
    /* 16DC38 80085B78 10200004 */  beqz       $at, .L80085B8C_16DC4C
    /* 16DC3C 80085B7C 00000000 */   nop
    /* 16DC40 80085B80 00108023 */  negu       $s0, $s0
    /* 16DC44 80085B84 00107600 */  sll        $t6, $s0, 24
    /* 16DC48 80085B88 000E8603 */  sra        $s0, $t6, 24
  .L80085B8C_16DC4C:
    /* 16DC4C 80085B8C 0C000E38 */  jal        func_800038E0_44E0
    /* 16DC50 80085B90 00000000 */   nop
    /* 16DC54 80085B94 24010014 */  addiu      $at, $zero, 0x14
    /* 16DC58 80085B98 0041001A */  div        $zero, $v0, $at
    /* 16DC5C 80085B9C 00007810 */  mfhi       $t7
    /* 16DC60 80085BA0 29E1000A */  slti       $at, $t7, 0xA
    /* 16DC64 80085BA4 10200003 */  beqz       $at, .L80085BB4_16DC74
    /* 16DC68 80085BA8 83B80066 */   lb        $t8, 0x66($sp)
    /* 16DC6C 80085BAC 0018C823 */  negu       $t9, $t8
    /* 16DC70 80085BB0 A3B90066 */  sb         $t9, 0x66($sp)
  .L80085BB4_16DC74:
    /* 16DC74 80085BB4 0C000E38 */  jal        func_800038E0_44E0
    /* 16DC78 80085BB8 00000000 */   nop
    /* 16DC7C 80085BBC 0C000E38 */  jal        func_800038E0_44E0
    /* 16DC80 80085BC0 A7A20058 */   sh        $v0, 0x58($sp)
    /* 16DC84 80085BC4 0C000E38 */  jal        func_800038E0_44E0
    /* 16DC88 80085BC8 A7A2005A */   sh        $v0, 0x5A($sp)
    /* 16DC8C 80085BCC 2403003C */  addiu      $v1, $zero, 0x3C
    /* 16DC90 80085BD0 97AA0058 */  lhu        $t2, 0x58($sp)
    /* 16DC94 80085BD4 97AD005A */  lhu        $t5, 0x5A($sp)
    /* 16DC98 80085BD8 83AC0066 */  lb         $t4, 0x66($sp)
    /* 16DC9C 80085BDC 0143001A */  div        $zero, $t2, $v1
    /* 16DCA0 80085BE0 00004010 */  mfhi       $t0
    /* 16DCA4 80085BE4 250B0041 */  addiu      $t3, $t0, 0x41
    /* 16DCA8 80085BE8 00103E00 */  sll        $a3, $s0, 24
    /* 16DCAC 80085BEC 01A3001A */  div        $zero, $t5, $v1
    /* 16DCB0 80085BF0 00007810 */  mfhi       $t7
    /* 16DCB4 80085BF4 00074E03 */  sra        $t1, $a3, 24
    /* 16DCB8 80085BF8 01203825 */  or         $a3, $t1, $zero
    /* 16DCBC 80085BFC AFAB0010 */  sw         $t3, 0x10($sp)
    /* 16DCC0 80085C00 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 16DCC4 80085C04 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 16DCC8 80085C08 240B00C8 */  addiu      $t3, $zero, 0xC8
    /* 16DCCC 80085C0C 25F80046 */  addiu      $t8, $t7, 0x46
    /* 16DCD0 80085C10 240800C8 */  addiu      $t0, $zero, 0xC8
    /* 16DCD4 80085C14 240E001E */  addiu      $t6, $zero, 0x1E
    /* 16DCD8 80085C18 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 16DCDC 80085C1C AFA80028 */  sw         $t0, 0x28($sp)
    /* 16DCE0 80085C20 AFB8001C */  sw         $t8, 0x1C($sp)
    /* 16DCE4 80085C24 AFAB002C */  sw         $t3, 0x2C($sp)
    /* 16DCE8 80085C28 AFAC0030 */  sw         $t4, 0x30($sp)
    /* 16DCEC 80085C2C 87A40076 */  lh         $a0, 0x76($sp)
    /* 16DCF0 80085C30 87A5007A */  lh         $a1, 0x7A($sp)
    /* 16DCF4 80085C34 87A6007E */  lh         $a2, 0x7E($sp)
    /* 16DCF8 80085C38 14600002 */  bnez       $v1, .L80085C44_16DD04
    /* 16DCFC 80085C3C 00000000 */   nop
    /* 16DD00 80085C40 0007000D */  break      7
  .L80085C44_16DD04:
    /* 16DD04 80085C44 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16DD08 80085C48 14610004 */  bne        $v1, $at, .L80085C5C_16DD1C
    /* 16DD0C 80085C4C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16DD10 80085C50 15410002 */  bne        $t2, $at, .L80085C5C_16DD1C
    /* 16DD14 80085C54 00000000 */   nop
    /* 16DD18 80085C58 0006000D */  break      6
  .L80085C5C_16DD1C:
    /* 16DD1C 80085C5C 240A000A */  addiu      $t2, $zero, 0xA
    /* 16DD20 80085C60 14600002 */  bnez       $v1, .L80085C6C_16DD2C
    /* 16DD24 80085C64 00000000 */   nop
    /* 16DD28 80085C68 0007000D */  break      7
  .L80085C6C_16DD2C:
    /* 16DD2C 80085C6C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16DD30 80085C70 14610004 */  bne        $v1, $at, .L80085C84_16DD44
    /* 16DD34 80085C74 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16DD38 80085C78 15A10002 */  bne        $t5, $at, .L80085C84_16DD44
    /* 16DD3C 80085C7C 00000000 */   nop
    /* 16DD40 80085C80 0006000D */  break      6
  .L80085C84_16DD44:
    /* 16DD44 80085C84 24010003 */  addiu      $at, $zero, 0x3
    /* 16DD48 80085C88 0041001A */  div        $zero, $v0, $at
    /* 16DD4C 80085C8C 0000C810 */  mfhi       $t9
    /* 16DD50 80085C90 27290003 */  addiu      $t1, $t9, 0x3
    /* 16DD54 80085C94 AFA90020 */  sw         $t1, 0x20($sp)
    /* 16DD58 80085C98 0C020FC2 */  jal        func_80083F08_16BFC8
    /* 16DD5C 80085C9C AFAA0024 */   sw        $t2, 0x24($sp)
  .L80085CA0_16DD60:
    /* 16DD60 80085CA0 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 16DD64 80085CA4 87A2005E */  lh         $v0, 0x5E($sp)
    /* 16DD68 80085CA8 8FB00040 */  lw         $s0, 0x40($sp)
    /* 16DD6C 80085CAC 03E00008 */  jr         $ra
    /* 16DD70 80085CB0 27BD0068 */   addiu     $sp, $sp, 0x68
endlabel func_80085984_16DA44
