nonmatching func_802D4F74_18DA84, 0x31C

glabel func_802D4F74_18DA84
    /* 18DA84 802D4F74 3C06802E */  lui        $a2, %hi(D_802DE460)
    /* 18DA88 802D4F78 24C6E460 */  addiu      $a2, $a2, %lo(D_802DE460)
    /* 18DA8C 802D4F7C 84C20000 */  lh         $v0, 0x0($a2)
    /* 18DA90 802D4F80 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 18DA94 802D4F84 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 18DA98 802D4F88 284103E8 */  slti       $at, $v0, 0x3E8
    /* 18DA9C 802D4F8C 10200003 */  beqz       $at, .L802D4F9C_18DAAC
    /* 18DAA0 802D4F90 3C058005 */   lui       $a1, %hi(D_8004DC58)
    /* 18DAA4 802D4F94 244E0001 */  addiu      $t6, $v0, 0x1
    /* 18DAA8 802D4F98 A4CE0000 */  sh         $t6, 0x0($a2)
  .L802D4F9C_18DAAC:
    /* 18DAAC 802D4F9C 24A5DC58 */  addiu      $a1, $a1, %lo(D_8004DC58)
    /* 18DAB0 802D4FA0 84A20000 */  lh         $v0, 0x0($a1)
    /* 18DAB4 802D4FA4 24040007 */  addiu      $a0, $zero, 0x7
    /* 18DAB8 802D4FA8 24010006 */  addiu      $at, $zero, 0x6
    /* 18DABC 802D4FAC 1082001F */  beq        $a0, $v0, .L802D502C_18DB3C
    /* 18DAC0 802D4FB0 00000000 */   nop
    /* 18DAC4 802D4FB4 1041001D */  beq        $v0, $at, .L802D502C_18DB3C
    /* 18DAC8 802D4FB8 24010005 */   addiu     $at, $zero, 0x5
    /* 18DACC 802D4FBC 1041001B */  beq        $v0, $at, .L802D502C_18DB3C
    /* 18DAD0 802D4FC0 3C078005 */   lui       $a3, %hi(D_80052B34)
    /* 18DAD4 802D4FC4 24E72B34 */  addiu      $a3, $a3, %lo(D_80052B34)
    /* 18DAD8 802D4FC8 8CEF0000 */  lw         $t7, 0x0($a3)
    /* 18DADC 802D4FCC 24010002 */  addiu      $at, $zero, 0x2
    /* 18DAE0 802D4FD0 91E3001A */  lbu        $v1, 0x1A($t7)
    /* 18DAE4 802D4FD4 54610006 */  bnel       $v1, $at, .L802D4FF0_18DB00
    /* 18DAE8 802D4FD8 24010003 */   addiu     $at, $zero, 0x3
    /* 18DAEC 802D4FDC A4A40000 */  sh         $a0, 0x0($a1)
    /* 18DAF0 802D4FE0 84A20000 */  lh         $v0, 0x0($a1)
    /* 18DAF4 802D4FE4 10000011 */  b          .L802D502C_18DB3C
    /* 18DAF8 802D4FE8 A4C00000 */   sh        $zero, 0x0($a2)
    /* 18DAFC 802D4FEC 24010003 */  addiu      $at, $zero, 0x3
  .L802D4FF0_18DB00:
    /* 18DB00 802D4FF0 1061000E */  beq        $v1, $at, .L802D502C_18DB3C
    /* 18DB04 802D4FF4 00000000 */   nop
    /* 18DB08 802D4FF8 84D80000 */  lh         $t8, 0x0($a2)
    /* 18DB0C 802D4FFC 3C03802E */  lui        $v1, %hi(D_802DE462)
    /* 18DB10 802D5000 2463E462 */  addiu      $v1, $v1, %lo(D_802DE462)
    /* 18DB14 802D5004 2B0101F5 */  slti       $at, $t8, 0x1F5
    /* 18DB18 802D5008 14200008 */  bnez       $at, .L802D502C_18DB3C
    /* 18DB1C 802D500C 24190002 */   addiu     $t9, $zero, 0x2
    /* 18DB20 802D5010 84680000 */  lh         $t0, 0x0($v1)
    /* 18DB24 802D5014 3C018016 */  lui        $at, %hi(D_80158BD0)
    /* 18DB28 802D5018 A4A40000 */  sh         $a0, 0x0($a1)
    /* 18DB2C 802D501C A4C00000 */  sh         $zero, 0x0($a2)
    /* 18DB30 802D5020 00280821 */  addu       $at, $at, $t0
    /* 18DB34 802D5024 A0398BD0 */  sb         $t9, %lo(D_80158BD0)($at)
    /* 18DB38 802D5028 84A20000 */  lh         $v0, 0x0($a1)
  .L802D502C_18DB3C:
    /* 18DB3C 802D502C 3C03802E */  lui        $v1, %hi(D_802DE462)
    /* 18DB40 802D5030 3C078005 */  lui        $a3, %hi(D_80052B34)
    /* 18DB44 802D5034 2C410009 */  sltiu      $at, $v0, 0x9
    /* 18DB48 802D5038 24E72B34 */  addiu      $a3, $a3, %lo(D_80052B34)
    /* 18DB4C 802D503C 10200090 */  beqz       $at, .L802D5280_18DD90
    /* 18DB50 802D5040 2463E462 */   addiu     $v1, $v1, %lo(D_802DE462)
    /* 18DB54 802D5044 00024880 */  sll        $t1, $v0, 2
    /* 18DB58 802D5048 3C01802E */  lui        $at, %hi(jtbl_802DE350_overlay_level_greece)
    /* 18DB5C 802D504C 00290821 */  addu       $at, $at, $t1
    /* 18DB60 802D5050 8C29E350 */  lw         $t1, %lo(jtbl_802DE350_overlay_level_greece)($at)
    /* 18DB64 802D5054 01200008 */  jr         $t1
    /* 18DB68 802D5058 00000000 */   nop
    /* 18DB6C 802D505C 84C20000 */  lh         $v0, 0x0($a2)
    /* 18DB70 802D5060 24010001 */  addiu      $at, $zero, 0x1
    /* 18DB74 802D5064 3C0B8005 */  lui        $t3, %hi(vehicleInstances)
    /* 18DB78 802D5068 5441000A */  bnel       $v0, $at, .L802D5094_18DBA4
    /* 18DB7C 802D506C 24010048 */   addiu     $at, $zero, 0x48
    /* 18DB80 802D5070 8CEA0000 */  lw         $t2, 0x0($a3)
    /* 18DB84 802D5074 256BDCD0 */  addiu      $t3, $t3, %lo(vehicleInstances)
    /* 18DB88 802D5078 2401005C */  addiu      $at, $zero, 0x5C
    /* 18DB8C 802D507C 014B6023 */  subu       $t4, $t2, $t3
    /* 18DB90 802D5080 0181001A */  div        $zero, $t4, $at
    /* 18DB94 802D5084 00006812 */  mflo       $t5
    /* 18DB98 802D5088 A46D0000 */  sh         $t5, 0x0($v1)
    /* 18DB9C 802D508C 00000000 */  nop
    /* 18DBA0 802D5090 24010048 */  addiu      $at, $zero, 0x48
  .L802D5094_18DBA4:
    /* 18DBA4 802D5094 5441000D */  bnel       $v0, $at, .L802D50CC_18DBDC
    /* 18DBA8 802D5098 8CEF0000 */   lw        $t7, 0x0($a3)
    /* 18DBAC 802D509C 0C00635F */  jal        func_80018D7C_1997C
    /* 18DBB0 802D50A0 240400E8 */   addiu     $a0, $zero, 0xE8
    /* 18DBB4 802D50A4 3C058005 */  lui        $a1, %hi(D_8004DC58)
    /* 18DBB8 802D50A8 3C06802E */  lui        $a2, %hi(D_802DE460)
    /* 18DBBC 802D50AC 3C078005 */  lui        $a3, %hi(D_80052B34)
    /* 18DBC0 802D50B0 240E0077 */  addiu      $t6, $zero, 0x77
    /* 18DBC4 802D50B4 3C018005 */  lui        $at, %hi(D_80050C0B)
    /* 18DBC8 802D50B8 24E72B34 */  addiu      $a3, $a3, %lo(D_80052B34)
    /* 18DBCC 802D50BC 24C6E460 */  addiu      $a2, $a2, %lo(D_802DE460)
    /* 18DBD0 802D50C0 24A5DC58 */  addiu      $a1, $a1, %lo(D_8004DC58)
    /* 18DBD4 802D50C4 A02E0C0B */  sb         $t6, %lo(D_80050C0B)($at)
    /* 18DBD8 802D50C8 8CEF0000 */  lw         $t7, 0x0($a3)
  .L802D50CC_18DBDC:
    /* 18DBDC 802D50CC 24080001 */  addiu      $t0, $zero, 0x1
    /* 18DBE0 802D50D0 95F80020 */  lhu        $t8, 0x20($t7)
    /* 18DBE4 802D50D4 33190002 */  andi       $t9, $t8, 0x2
    /* 18DBE8 802D50D8 5320006A */  beql       $t9, $zero, .L802D5284_18DD94
    /* 18DBEC 802D50DC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18DBF0 802D50E0 A4A80000 */  sh         $t0, 0x0($a1)
    /* 18DBF4 802D50E4 10000066 */  b          .L802D5280_18DD90
    /* 18DBF8 802D50E8 A4C00000 */   sh        $zero, 0x0($a2)
    /* 18DBFC 802D50EC 84C90000 */  lh         $t1, 0x0($a2)
    /* 18DC00 802D50F0 24010014 */  addiu      $at, $zero, 0x14
    /* 18DC04 802D50F4 55210063 */  bnel       $t1, $at, .L802D5284_18DD94
    /* 18DC08 802D50F8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18DC0C 802D50FC 0C00635F */  jal        func_80018D7C_1997C
    /* 18DC10 802D5100 240400E9 */   addiu     $a0, $zero, 0xE9
    /* 18DC14 802D5104 3C058005 */  lui        $a1, %hi(D_8004DC58)
    /* 18DC18 802D5108 24A5DC58 */  addiu      $a1, $a1, %lo(D_8004DC58)
    /* 18DC1C 802D510C 240A0002 */  addiu      $t2, $zero, 0x2
    /* 18DC20 802D5110 1000005B */  b          .L802D5280_18DD90
    /* 18DC24 802D5114 A4AA0000 */   sh        $t2, 0x0($a1)
    /* 18DC28 802D5118 8CEB0000 */  lw         $t3, 0x0($a3)
    /* 18DC2C 802D511C A4C00000 */  sh         $zero, 0x0($a2)
    /* 18DC30 802D5120 240E0008 */  addiu      $t6, $zero, 0x8
    /* 18DC34 802D5124 956C0020 */  lhu        $t4, 0x20($t3)
    /* 18DC38 802D5128 318D0002 */  andi       $t5, $t4, 0x2
    /* 18DC3C 802D512C 55A00055 */  bnel       $t5, $zero, .L802D5284_18DD94
    /* 18DC40 802D5130 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18DC44 802D5134 10000052 */  b          .L802D5280_18DD90
    /* 18DC48 802D5138 A4AE0000 */   sh        $t6, 0x0($a1)
    /* 18DC4C 802D513C 8CEF0000 */  lw         $t7, 0x0($a3)
    /* 18DC50 802D5140 24080002 */  addiu      $t0, $zero, 0x2
    /* 18DC54 802D5144 95F80020 */  lhu        $t8, 0x20($t7)
    /* 18DC58 802D5148 33190002 */  andi       $t9, $t8, 0x2
    /* 18DC5C 802D514C 5320004D */  beql       $t9, $zero, .L802D5284_18DD94
    /* 18DC60 802D5150 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18DC64 802D5154 1000004A */  b          .L802D5280_18DD90
    /* 18DC68 802D5158 A4A80000 */   sh        $t0, 0x0($a1)
    /* 18DC6C 802D515C 0C00635F */  jal        func_80018D7C_1997C
    /* 18DC70 802D5160 240400EA */   addiu     $a0, $zero, 0xEA
    /* 18DC74 802D5164 3C058005 */  lui        $a1, %hi(D_8004DC58)
    /* 18DC78 802D5168 24A5DC58 */  addiu      $a1, $a1, %lo(D_8004DC58)
    /* 18DC7C 802D516C 24090002 */  addiu      $t1, $zero, 0x2
    /* 18DC80 802D5170 10000043 */  b          .L802D5280_18DD90
    /* 18DC84 802D5174 A4A90000 */   sh        $t1, 0x0($a1)
    /* 18DC88 802D5178 84CA0000 */  lh         $t2, 0x0($a2)
    /* 18DC8C 802D517C 24010014 */  addiu      $at, $zero, 0x14
    /* 18DC90 802D5180 55410040 */  bnel       $t2, $at, .L802D5284_18DD94
    /* 18DC94 802D5184 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18DC98 802D5188 A4A40000 */  sh         $a0, 0x0($a1)
    /* 18DC9C 802D518C 1000003C */  b          .L802D5280_18DD90
    /* 18DCA0 802D5190 A4C00000 */   sh        $zero, 0x0($a2)
    /* 18DCA4 802D5194 84C20000 */  lh         $v0, 0x0($a2)
    /* 18DCA8 802D5198 24010001 */  addiu      $at, $zero, 0x1
    /* 18DCAC 802D519C 54410007 */  bnel       $v0, $at, .L802D51BC_18DCCC
    /* 18DCB0 802D51A0 24010014 */   addiu     $at, $zero, 0x14
    /* 18DCB4 802D51A4 846C0000 */  lh         $t4, 0x0($v1)
    /* 18DCB8 802D51A8 3C018016 */  lui        $at, %hi(D_80158BD0)
    /* 18DCBC 802D51AC 240B0002 */  addiu      $t3, $zero, 0x2
    /* 18DCC0 802D51B0 002C0821 */  addu       $at, $at, $t4
    /* 18DCC4 802D51B4 A02B8BD0 */  sb         $t3, %lo(D_80158BD0)($at)
    /* 18DCC8 802D51B8 24010014 */  addiu      $at, $zero, 0x14
  .L802D51BC_18DCCC:
    /* 18DCCC 802D51BC 5441000A */  bnel       $v0, $at, .L802D51E8_18DCF8
    /* 18DCD0 802D51C0 8CED0000 */   lw        $t5, 0x0($a3)
    /* 18DCD4 802D51C4 0C00635F */  jal        func_80018D7C_1997C
    /* 18DCD8 802D51C8 240400EB */   addiu     $a0, $zero, 0xEB
    /* 18DCDC 802D51CC 3C058005 */  lui        $a1, %hi(D_8004DC58)
    /* 18DCE0 802D51D0 3C06802E */  lui        $a2, %hi(D_802DE460)
    /* 18DCE4 802D51D4 3C078005 */  lui        $a3, %hi(D_80052B34)
    /* 18DCE8 802D51D8 24E72B34 */  addiu      $a3, $a3, %lo(D_80052B34)
    /* 18DCEC 802D51DC 24C6E460 */  addiu      $a2, $a2, %lo(D_802DE460)
    /* 18DCF0 802D51E0 24A5DC58 */  addiu      $a1, $a1, %lo(D_8004DC58)
    /* 18DCF4 802D51E4 8CED0000 */  lw         $t5, 0x0($a3)
  .L802D51E8_18DCF8:
    /* 18DCF8 802D51E8 24180006 */  addiu      $t8, $zero, 0x6
    /* 18DCFC 802D51EC 95AE0020 */  lhu        $t6, 0x20($t5)
    /* 18DD00 802D51F0 31CF0002 */  andi       $t7, $t6, 0x2
    /* 18DD04 802D51F4 55E00023 */  bnel       $t7, $zero, .L802D5284_18DD94
    /* 18DD08 802D51F8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18DD0C 802D51FC A4B80000 */  sh         $t8, 0x0($a1)
    /* 18DD10 802D5200 1000001F */  b          .L802D5280_18DD90
    /* 18DD14 802D5204 A4C00000 */   sh        $zero, 0x0($a2)
    /* 18DD18 802D5208 8CF90000 */  lw         $t9, 0x0($a3)
    /* 18DD1C 802D520C 24010003 */  addiu      $at, $zero, 0x3
    /* 18DD20 802D5210 9328001A */  lbu        $t0, 0x1A($t9)
    /* 18DD24 802D5214 5101001B */  beql       $t0, $at, .L802D5284_18DD94
    /* 18DD28 802D5218 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18DD2C 802D521C A4A40000 */  sh         $a0, 0x0($a1)
    /* 18DD30 802D5220 10000017 */  b          .L802D5280_18DD90
    /* 18DD34 802D5224 A4C00000 */   sh        $zero, 0x0($a2)
    /* 18DD38 802D5228 84C90000 */  lh         $t1, 0x0($a2)
    /* 18DD3C 802D522C 24010014 */  addiu      $at, $zero, 0x14
    /* 18DD40 802D5230 55210014 */  bnel       $t1, $at, .L802D5284_18DD94
    /* 18DD44 802D5234 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18DD48 802D5238 0C00635F */  jal        func_80018D7C_1997C
    /* 18DD4C 802D523C 240400EC */   addiu     $a0, $zero, 0xEC
    /* 18DD50 802D5240 3C04802D */  lui        $a0, %hi(func_802D4F74_18DA84)
    /* 18DD54 802D5244 0C001D2F */  jal        func_800074BC_80BC
    /* 18DD58 802D5248 24844F74 */   addiu     $a0, $a0, %lo(func_802D4F74_18DA84)
    /* 18DD5C 802D524C 24040000 */  addiu      $a0, $zero, 0x0
    /* 18DD60 802D5250 0C001CB3 */  jal        func_800072CC_7ECC
    /* 18DD64 802D5254 2405001E */   addiu     $a1, $zero, 0x1E
    /* 18DD68 802D5258 3C028016 */  lui        $v0, %hi(D_80159320)
    /* 18DD6C 802D525C 24429320 */  addiu      $v0, $v0, %lo(D_80159320)
    /* 18DD70 802D5260 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 18DD74 802D5264 3C01FFBF */  lui        $at, (0xFFBFFFFF >> 16)
    /* 18DD78 802D5268 3C06802E */  lui        $a2, %hi(D_802DE460)
    /* 18DD7C 802D526C 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
    /* 18DD80 802D5270 24C6E460 */  addiu      $a2, $a2, %lo(D_802DE460)
    /* 18DD84 802D5274 01415824 */  and        $t3, $t2, $at
    /* 18DD88 802D5278 AC4B0000 */  sw         $t3, 0x0($v0)
    /* 18DD8C 802D527C A4C00000 */  sh         $zero, 0x0($a2)
  .L802D5280_18DD90:
    /* 18DD90 802D5280 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D5284_18DD94:
    /* 18DD94 802D5284 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 18DD98 802D5288 03E00008 */  jr         $ra
    /* 18DD9C 802D528C 00000000 */   nop
endlabel func_802D4F74_18DA84
