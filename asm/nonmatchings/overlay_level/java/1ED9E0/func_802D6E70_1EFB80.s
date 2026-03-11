nonmatching func_802D6E70_1EFB80, 0xAC8

glabel func_802D6E70_1EFB80
    /* 1EFB80 802D6E70 3C038004 */  lui        $v1, %hi(currentLevel)
    /* 1EFB84 802D6E74 8C637F90 */  lw         $v1, %lo(currentLevel)($v1)
    /* 1EFB88 802D6E78 3C058004 */  lui        $a1, %hi(D_80047F94)
    /* 1EFB8C 802D6E7C 8CA57F94 */  lw         $a1, %lo(D_80047F94)($a1)
    /* 1EFB90 802D6E80 246FFFFF */  addiu      $t7, $v1, -0x1
    /* 1EFB94 802D6E84 000FC080 */  sll        $t8, $t7, 2
    /* 1EFB98 802D6E88 3C028003 */  lui        $v0, %hi(D_80031634)
    /* 1EFB9C 802D6E8C 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 1EFBA0 802D6E90 24060002 */  addiu      $a2, $zero, 0x2
    /* 1EFBA4 802D6E94 00581021 */  addu       $v0, $v0, $t8
    /* 1EFBA8 802D6E98 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 1EFBAC 802D6E9C AFB00040 */  sw         $s0, 0x40($sp)
    /* 1EFBB0 802D6EA0 14C5001D */  bne        $a2, $a1, .L802D6F18_1EFC28
    /* 1EFBB4 802D6EA4 84421634 */   lh        $v0, %lo(D_80031634)($v0)
    /* 1EFBB8 802D6EA8 0003C880 */  sll        $t9, $v1, 2
    /* 1EFBBC 802D6EAC 0323C823 */  subu       $t9, $t9, $v1
    /* 1EFBC0 802D6EB0 0019C8C0 */  sll        $t9, $t9, 3
    /* 1EFBC4 802D6EB4 3C0A8003 */  lui        $t2, %hi(D_8003153E)
    /* 1EFBC8 802D6EB8 01595021 */  addu       $t2, $t2, $t9
    /* 1EFBCC 802D6EBC 914A153E */  lbu        $t2, %lo(D_8003153E)($t2)
    /* 1EFBD0 802D6EC0 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* 1EFBD4 802D6EC4 3C0D8022 */  lui        $t5, %hi(D_80222A70)
    /* 1EFBD8 802D6EC8 55400014 */  bnel       $t2, $zero, .L802D6F1C_1EFC2C
    /* 1EFBDC 802D6ECC 00021C00 */   sll       $v1, $v0, 16
    /* 1EFBE0 802D6ED0 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* 1EFBE4 802D6ED4 8DAD2A70 */  lw         $t5, %lo(D_80222A70)($t5)
    /* 1EFBE8 802D6ED8 3C014170 */  lui        $at, (0x41700000 >> 16)
    /* 1EFBEC 802D6EDC 856C0002 */  lh         $t4, 0x2($t3)
    /* 1EFBF0 802D6EE0 44814000 */  mtc1       $at, $f8
    /* 1EFBF4 802D6EE4 44828000 */  mtc1       $v0, $f16
    /* 1EFBF8 802D6EE8 018D7023 */  subu       $t6, $t4, $t5
    /* 1EFBFC 802D6EEC 448E2000 */  mtc1       $t6, $f4
    /* 1EFC00 802D6EF0 468084A0 */  cvt.s.w    $f18, $f16
    /* 1EFC04 802D6EF4 468021A0 */  cvt.s.w    $f6, $f4
    /* 1EFC08 802D6EF8 46083283 */  div.s      $f10, $f6, $f8
    /* 1EFC0C 802D6EFC 460A9101 */  sub.s      $f4, $f18, $f10
    /* 1EFC10 802D6F00 4600218D */  trunc.w.s  $f6, $f4
    /* 1EFC14 802D6F04 44033000 */  mfc1       $v1, $f6
    /* 1EFC18 802D6F08 00000000 */  nop
    /* 1EFC1C 802D6F0C 0003C400 */  sll        $t8, $v1, 16
    /* 1EFC20 802D6F10 10000004 */  b          .L802D6F24_1EFC34
    /* 1EFC24 802D6F14 00181C03 */   sra       $v1, $t8, 16
  .L802D6F18_1EFC28:
    /* 1EFC28 802D6F18 00021C00 */  sll        $v1, $v0, 16
  .L802D6F1C_1EFC2C:
    /* 1EFC2C 802D6F1C 00035403 */  sra        $t2, $v1, 16
    /* 1EFC30 802D6F20 01401825 */  or         $v1, $t2, $zero
  .L802D6F24_1EFC34:
    /* 1EFC34 802D6F24 3C048003 */  lui        $a0, %hi(D_800313F8)
    /* 1EFC38 802D6F28 248413F8 */  addiu      $a0, $a0, %lo(D_800313F8)
    /* 1EFC3C 802D6F2C 84820000 */  lh         $v0, 0x0($a0)
    /* 1EFC40 802D6F30 3C0D802E */  lui        $t5, %hi(D_802E04F8)
    /* 1EFC44 802D6F34 0043082A */  slt        $at, $v0, $v1
    /* 1EFC48 802D6F38 10200003 */  beqz       $at, .L802D6F48_1EFC58
    /* 1EFC4C 802D6F3C 244B0001 */   addiu     $t3, $v0, 0x1
    /* 1EFC50 802D6F40 10000005 */  b          .L802D6F58_1EFC68
    /* 1EFC54 802D6F44 A48B0000 */   sh        $t3, 0x0($a0)
  .L802D6F48_1EFC58:
    /* 1EFC58 802D6F48 0062082A */  slt        $at, $v1, $v0
    /* 1EFC5C 802D6F4C 10200002 */  beqz       $at, .L802D6F58_1EFC68
    /* 1EFC60 802D6F50 244CFFFF */   addiu     $t4, $v0, -0x1
    /* 1EFC64 802D6F54 A48C0000 */  sh         $t4, 0x0($a0)
  .L802D6F58_1EFC68:
    /* 1EFC68 802D6F58 85AD04F8 */  lh         $t5, %lo(D_802E04F8)($t5)
    /* 1EFC6C 802D6F5C 2401FFFD */  addiu      $at, $zero, -0x3
    /* 1EFC70 802D6F60 15A1001E */  bne        $t5, $at, .L802D6FDC_1EFCEC
    /* 1EFC74 802D6F64 00000000 */   nop
    /* 1EFC78 802D6F68 14C5001C */  bne        $a2, $a1, .L802D6FDC_1EFCEC
    /* 1EFC7C 802D6F6C 00001825 */   or        $v1, $zero, $zero
  .L802D6F70_1EFC80:
    /* 1EFC80 802D6F70 3C0F802E */  lui        $t7, %hi(D_802E04F8)
    /* 1EFC84 802D6F74 25EF04F8 */  addiu      $t7, $t7, %lo(D_802E04F8)
    /* 1EFC88 802D6F78 000370C0 */  sll        $t6, $v1, 3
    /* 1EFC8C 802D6F7C 01CF8021 */  addu       $s0, $t6, $t7
    /* 1EFC90 802D6F80 86180000 */  lh         $t8, 0x0($s0)
    /* 1EFC94 802D6F84 2401FFFD */  addiu      $at, $zero, -0x3
    /* 1EFC98 802D6F88 5701000F */  bnel       $t8, $at, .L802D6FC8_1EFCD8
    /* 1EFC9C 802D6F8C 24630001 */   addiu     $v1, $v1, 0x1
    /* 1EFCA0 802D6F90 86040002 */  lh         $a0, 0x2($s0)
    /* 1EFCA4 802D6F94 86050004 */  lh         $a1, 0x4($s0)
    /* 1EFCA8 802D6F98 0C02E134 */  jal        func_800B84D0_C7480
    /* 1EFCAC 802D6F9C A7A3005A */   sh        $v1, 0x5A($sp)
    /* 1EFCB0 802D6FA0 00022A03 */  sra        $a1, $v0, 8
    /* 1EFCB4 802D6FA4 0005CC00 */  sll        $t9, $a1, 16
    /* 1EFCB8 802D6FA8 00192C03 */  sra        $a1, $t9, 16
    /* 1EFCBC 802D6FAC 86040002 */  lh         $a0, 0x2($s0)
    /* 1EFCC0 802D6FB0 86060004 */  lh         $a2, 0x4($s0)
    /* 1EFCC4 802D6FB4 0C0B536C */  jal        func_802D4DB0_1EDAC0
    /* 1EFCC8 802D6FB8 86070006 */   lh        $a3, 0x6($s0)
    /* 1EFCCC 802D6FBC 87A3005A */  lh         $v1, 0x5A($sp)
    /* 1EFCD0 802D6FC0 A6020000 */  sh         $v0, 0x0($s0)
    /* 1EFCD4 802D6FC4 24630001 */  addiu      $v1, $v1, 0x1
  .L802D6FC8_1EFCD8:
    /* 1EFCD8 802D6FC8 00035C00 */  sll        $t3, $v1, 16
    /* 1EFCDC 802D6FCC 000B1C03 */  sra        $v1, $t3, 16
    /* 1EFCE0 802D6FD0 2861000E */  slti       $at, $v1, 0xE
    /* 1EFCE4 802D6FD4 1420FFE6 */  bnez       $at, .L802D6F70_1EFC80
    /* 1EFCE8 802D6FD8 00000000 */   nop
  .L802D6FDC_1EFCEC:
    /* 1EFCEC 802D6FDC 0C0389C8 */  jal        func_800E2720_F16D0
    /* 1EFCF0 802D6FE0 240401F4 */   addiu     $a0, $zero, 0x1F4
    /* 1EFCF4 802D6FE4 0C000E38 */  jal        func_800038E0_44E0
    /* 1EFCF8 802D6FE8 00000000 */   nop
    /* 1EFCFC 802D6FEC 24010064 */  addiu      $at, $zero, 0x64
    /* 1EFD00 802D6FF0 0041001A */  div        $zero, $v0, $at
    /* 1EFD04 802D6FF4 00006810 */  mfhi       $t5
    /* 1EFD08 802D6FF8 448D4000 */  mtc1       $t5, $f8
    /* 1EFD0C 802D6FFC 3C0144FA */  lui        $at, (0x44FA0000 >> 16)
    /* 1EFD10 802D7000 44819000 */  mtc1       $at, $f18
    /* 1EFD14 802D7004 46804420 */  cvt.s.w    $f16, $f8
    /* 1EFD18 802D7008 3C0E8004 */  lui        $t6, %hi(D_80047F94)
    /* 1EFD1C 802D700C 8DCE7F94 */  lw         $t6, %lo(D_80047F94)($t6)
    /* 1EFD20 802D7010 24010003 */  addiu      $at, $zero, 0x3
    /* 1EFD24 802D7014 3C04802E */  lui        $a0, %hi(D_802E0FBA)
    /* 1EFD28 802D7018 24840FBA */  addiu      $a0, $a0, %lo(D_802E0FBA)
    /* 1EFD2C 802D701C 46128283 */  div.s      $f10, $f16, $f18
    /* 1EFD30 802D7020 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 1EFD34 802D7024 11C10029 */  beq        $t6, $at, .L802D70CC_1EFDDC
    /* 1EFD38 802D7028 E7AA004C */   swc1      $f10, 0x4C($sp)
    /* 1EFD3C 802D702C 3C01802E */  lui        $at, %hi(D_802E0ED8)
    /* 1EFD40 802D7030 D4260ED8 */  ldc1       $f6, %lo(D_802E0ED8)($at)
    /* 1EFD44 802D7034 46005121 */  cvt.d.s    $f4, $f10
    /* 1EFD48 802D7038 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 1EFD4C 802D703C 46262200 */  add.d      $f8, $f4, $f6
    /* 1EFD50 802D7040 2405018C */  addiu      $a1, $zero, 0x18C
    /* 1EFD54 802D7044 86070002 */  lh         $a3, 0x2($s0)
    /* 1EFD58 802D7048 86190004 */  lh         $t9, 0x4($s0)
    /* 1EFD5C 802D704C 46204420 */  cvt.s.d    $f16, $f8
    /* 1EFD60 802D7050 24E7F060 */  addiu      $a3, $a3, -0xFA0
    /* 1EFD64 802D7054 00077C00 */  sll        $t7, $a3, 16
    /* 1EFD68 802D7058 86060000 */  lh         $a2, 0x0($s0)
    /* 1EFD6C 802D705C E7B00014 */  swc1       $f16, 0x14($sp)
    /* 1EFD70 802D7060 000F3C03 */  sra        $a3, $t7, 16
    /* 1EFD74 802D7064 0C04DC6E */  jal        func_801371B8_146168
    /* 1EFD78 802D7068 AFB90010 */   sw        $t9, 0x10($sp)
    /* 1EFD7C 802D706C 3C028005 */  lui        $v0, %hi(D_80052A8C)
    /* 1EFD80 802D7070 8C422A8C */  lw         $v0, %lo(D_80052A8C)($v0)
    /* 1EFD84 802D7074 24030190 */  addiu      $v1, $zero, 0x190
    /* 1EFD88 802D7078 0043001B */  divu       $zero, $v0, $v1
    /* 1EFD8C 802D707C 00005010 */  mfhi       $t2
    /* 1EFD90 802D7080 14600002 */  bnez       $v1, .L802D708C_1EFD9C
    /* 1EFD94 802D7084 00000000 */   nop
    /* 1EFD98 802D7088 0007000D */  break      7
  .L802D708C_1EFD9C:
    /* 1EFD9C 802D708C 1540000F */  bnez       $t2, .L802D70CC_1EFDDC
    /* 1EFDA0 802D7090 00000000 */   nop
    /* 1EFDA4 802D7094 10620009 */  beq        $v1, $v0, .L802D70BC_1EFDCC
    /* 1EFDA8 802D7098 2C410191 */   sltiu     $at, $v0, 0x191
    /* 1EFDAC 802D709C 1420000B */  bnez       $at, .L802D70CC_1EFDDC
    /* 1EFDB0 802D70A0 00000000 */   nop
    /* 1EFDB4 802D70A4 0C000E38 */  jal        func_800038E0_44E0
    /* 1EFDB8 802D70A8 00000000 */   nop
    /* 1EFDBC 802D70AC 2401000A */  addiu      $at, $zero, 0xA
    /* 1EFDC0 802D70B0 0041001A */  div        $zero, $v0, $at
    /* 1EFDC4 802D70B4 00005810 */  mfhi       $t3
    /* 1EFDC8 802D70B8 15600004 */  bnez       $t3, .L802D70CC_1EFDDC
  .L802D70BC_1EFDCC:
    /* 1EFDCC 802D70BC 2404FFB0 */   addiu     $a0, $zero, -0x50
    /* 1EFDD0 802D70C0 24050050 */  addiu      $a1, $zero, 0x50
    /* 1EFDD4 802D70C4 0C030347 */  jal        func_800C0D1C_CFCCC
    /* 1EFDD8 802D70C8 00003025 */   or        $a2, $zero, $zero
  .L802D70CC_1EFDDC:
    /* 1EFDDC 802D70CC 3C0C8004 */  lui        $t4, %hi(D_80047F94)
    /* 1EFDE0 802D70D0 8D8C7F94 */  lw         $t4, %lo(D_80047F94)($t4)
    /* 1EFDE4 802D70D4 24010003 */  addiu      $at, $zero, 0x3
    /* 1EFDE8 802D70D8 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 1EFDEC 802D70DC 55810212 */  bnel       $t4, $at, .L802D7928_1F0638
    /* 1EFDF0 802D70E0 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1EFDF4 802D70E4 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 1EFDF8 802D70E8 3C04802E */  lui        $a0, %hi(D_802E0E74)
    /* 1EFDFC 802D70EC C7AA004C */  lwc1       $f10, 0x4C($sp)
    /* 1EFE00 802D70F0 86030004 */  lh         $v1, 0x4($s0)
    /* 1EFE04 802D70F4 28613C01 */  slti       $at, $v1, 0x3C01
    /* 1EFE08 802D70F8 5420009B */  bnel       $at, $zero, .L802D7368_1F0078
    /* 1EFE0C 802D70FC 28612301 */   slti      $at, $v1, 0x2301
    /* 1EFE10 802D7100 0C00731B */  jal        osSyncPrintf
    /* 1EFE14 802D7104 24840E74 */   addiu     $a0, $a0, %lo(D_802E0E74)
    /* 1EFE18 802D7108 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 1EFE1C 802D710C 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 1EFE20 802D7110 3C01802E */  lui        $at, %hi(D_802E0EE0)
    /* 1EFE24 802D7114 C4320EE0 */  lwc1       $f18, %lo(D_802E0EE0)($at)
    /* 1EFE28 802D7118 86070002 */  lh         $a3, 0x2($s0)
    /* 1EFE2C 802D711C 860F0004 */  lh         $t7, 0x4($s0)
    /* 1EFE30 802D7120 3C04802E */  lui        $a0, %hi(D_802E0FBA)
    /* 1EFE34 802D7124 24E7FA24 */  addiu      $a3, $a3, -0x5DC
    /* 1EFE38 802D7128 00076C00 */  sll        $t5, $a3, 16
    /* 1EFE3C 802D712C 86060000 */  lh         $a2, 0x0($s0)
    /* 1EFE40 802D7130 000D3C03 */  sra        $a3, $t5, 16
    /* 1EFE44 802D7134 24840FBA */  addiu      $a0, $a0, %lo(D_802E0FBA)
    /* 1EFE48 802D7138 2405018C */  addiu      $a1, $zero, 0x18C
    /* 1EFE4C 802D713C E7B20014 */  swc1       $f18, 0x14($sp)
    /* 1EFE50 802D7140 0C04DC6E */  jal        func_801371B8_146168
    /* 1EFE54 802D7144 AFAF0010 */   sw        $t7, 0x10($sp)
    /* 1EFE58 802D7148 3C188005 */  lui        $t8, %hi(D_80052A8C)
    /* 1EFE5C 802D714C 8F182A8C */  lw         $t8, %lo(D_80052A8C)($t8)
    /* 1EFE60 802D7150 2401000A */  addiu      $at, $zero, 0xA
    /* 1EFE64 802D7154 0301001B */  divu       $zero, $t8, $at
    /* 1EFE68 802D7158 0000C810 */  mfhi       $t9
    /* 1EFE6C 802D715C 572001F2 */  bnel       $t9, $zero, .L802D7928_1F0638
    /* 1EFE70 802D7160 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1EFE74 802D7164 0C000E38 */  jal        func_800038E0_44E0
    /* 1EFE78 802D7168 00000000 */   nop
    /* 1EFE7C 802D716C 04410004 */  bgez       $v0, .L802D7180_1EFE90
    /* 1EFE80 802D7170 304A0003 */   andi      $t2, $v0, 0x3
    /* 1EFE84 802D7174 11400002 */  beqz       $t2, .L802D7180_1EFE90
    /* 1EFE88 802D7178 00000000 */   nop
    /* 1EFE8C 802D717C 254AFFFC */  addiu      $t2, $t2, -0x4
  .L802D7180_1EFE90:
    /* 1EFE90 802D7180 154001E8 */  bnez       $t2, .L802D7924_1F0634
    /* 1EFE94 802D7184 2404FFB0 */   addiu     $a0, $zero, -0x50
    /* 1EFE98 802D7188 24050050 */  addiu      $a1, $zero, 0x50
    /* 1EFE9C 802D718C 0C030347 */  jal        func_800C0D1C_CFCCC
    /* 1EFEA0 802D7190 24060001 */   addiu     $a2, $zero, 0x1
    /* 1EFEA4 802D7194 504001E4 */  beql       $v0, $zero, .L802D7928_1F0638
    /* 1EFEA8 802D7198 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1EFEAC 802D719C 0C000E38 */  jal        func_800038E0_44E0
    /* 1EFEB0 802D71A0 00000000 */   nop
    /* 1EFEB4 802D71A4 00025943 */  sra        $t3, $v0, 5
    /* 1EFEB8 802D71A8 240C0400 */  addiu      $t4, $zero, 0x400
    /* 1EFEBC 802D71AC 018B7023 */  subu       $t6, $t4, $t3
    /* 1EFEC0 802D71B0 0C000E38 */  jal        func_800038E0_44E0
    /* 1EFEC4 802D71B4 A7AE0062 */   sh        $t6, 0x62($sp)
    /* 1EFEC8 802D71B8 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 1EFECC 802D71BC 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 1EFED0 802D71C0 87A90062 */  lh         $t1, 0x62($sp)
    /* 1EFED4 802D71C4 00026143 */  sra        $t4, $v0, 5
    /* 1EFED8 802D71C8 86070000 */  lh         $a3, 0x0($s0)
    /* 1EFEDC 802D71CC 86080002 */  lh         $t0, 0x2($s0)
    /* 1EFEE0 802D71D0 86030004 */  lh         $v1, 0x4($s0)
    /* 1EFEE4 802D71D4 00E92021 */  addu       $a0, $a3, $t1
    /* 1EFEE8 802D71D8 00047C00 */  sll        $t7, $a0, 16
    /* 1EFEEC 802D71DC 000F2403 */  sra        $a0, $t7, 16
    /* 1EFEF0 802D71E0 240B0400 */  addiu      $t3, $zero, 0x400
    /* 1EFEF4 802D71E4 016C7823 */  subu       $t7, $t3, $t4
    /* 1EFEF8 802D71E8 250505DC */  addiu      $a1, $t0, 0x5DC
    /* 1EFEFC 802D71EC 006F3021 */  addu       $a2, $v1, $t7
    /* 1EFF00 802D71F0 0005CC00 */  sll        $t9, $a1, 16
    /* 1EFF04 802D71F4 0006C400 */  sll        $t8, $a2, 16
    /* 1EFF08 802D71F8 240A0006 */  addiu      $t2, $zero, 0x6
    /* 1EFF0C 802D71FC 00192C03 */  sra        $a1, $t9, 16
    /* 1EFF10 802D7200 00183403 */  sra        $a2, $t8, 16
    /* 1EFF14 802D7204 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 1EFF18 802D7208 A7A70068 */  sh         $a3, 0x68($sp)
    /* 1EFF1C 802D720C A7A80066 */  sh         $t0, 0x66($sp)
    /* 1EFF20 802D7210 AFA80010 */  sw         $t0, 0x10($sp)
    /* 1EFF24 802D7214 A7A30064 */  sh         $v1, 0x64($sp)
    /* 1EFF28 802D7218 0C0345AF */  jal        func_800D16BC_E066C
    /* 1EFF2C 802D721C AFA30014 */   sw        $v1, 0x14($sp)
    /* 1EFF30 802D7220 87B00066 */  lh         $s0, 0x66($sp)
    /* 1EFF34 802D7224 240C007F */  addiu      $t4, $zero, 0x7F
    /* 1EFF38 802D7228 240D0064 */  addiu      $t5, $zero, 0x64
    /* 1EFF3C 802D722C 00102C00 */  sll        $a1, $s0, 16
    /* 1EFF40 802D7230 00055C03 */  sra        $t3, $a1, 16
    /* 1EFF44 802D7234 01602825 */  or         $a1, $t3, $zero
    /* 1EFF48 802D7238 240B00FA */  addiu      $t3, $zero, 0xFA
    /* 1EFF4C 802D723C 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 1EFF50 802D7240 240F0018 */  addiu      $t7, $zero, 0x18
    /* 1EFF54 802D7244 24180002 */  addiu      $t8, $zero, 0x2
    /* 1EFF58 802D7248 241900D2 */  addiu      $t9, $zero, 0xD2
    /* 1EFF5C 802D724C 240A00D2 */  addiu      $t2, $zero, 0xD2
    /* 1EFF60 802D7250 AFAA002C */  sw         $t2, 0x2C($sp)
    /* 1EFF64 802D7254 AFB90028 */  sw         $t9, 0x28($sp)
    /* 1EFF68 802D7258 AFB80024 */  sw         $t8, 0x24($sp)
    /* 1EFF6C 802D725C AFAF0020 */  sw         $t7, 0x20($sp)
    /* 1EFF70 802D7260 AFAE001C */  sw         $t6, 0x1C($sp)
    /* 1EFF74 802D7264 AFAB0030 */  sw         $t3, 0x30($sp)
    /* 1EFF78 802D7268 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 1EFF7C 802D726C AFAC0010 */  sw         $t4, 0x10($sp)
    /* 1EFF80 802D7270 87A40068 */  lh         $a0, 0x68($sp)
    /* 1EFF84 802D7274 87A60064 */  lh         $a2, 0x64($sp)
    /* 1EFF88 802D7278 00003825 */  or         $a3, $zero, $zero
    /* 1EFF8C 802D727C 0C031507 */  jal        func_800C541C_D43CC
    /* 1EFF90 802D7280 AFA00014 */   sw        $zero, 0x14($sp)
    /* 1EFF94 802D7284 00102C00 */  sll        $a1, $s0, 16
    /* 1EFF98 802D7288 00056403 */  sra        $t4, $a1, 16
    /* 1EFF9C 802D728C 240D00C8 */  addiu      $t5, $zero, 0xC8
    /* 1EFFA0 802D7290 240E00C8 */  addiu      $t6, $zero, 0xC8
    /* 1EFFA4 802D7294 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 1EFFA8 802D7298 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 1EFFAC 802D729C AFAE0014 */  sw         $t6, 0x14($sp)
    /* 1EFFB0 802D72A0 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 1EFFB4 802D72A4 01802825 */  or         $a1, $t4, $zero
    /* 1EFFB8 802D72A8 87A40068 */  lh         $a0, 0x68($sp)
    /* 1EFFBC 802D72AC 87A60064 */  lh         $a2, 0x64($sp)
    /* 1EFFC0 802D72B0 0C03416A */  jal        func_800D05A8_DF558
    /* 1EFFC4 802D72B4 240700C8 */   addiu     $a3, $zero, 0xC8
    /* 1EFFC8 802D72B8 00102C00 */  sll        $a1, $s0, 16
    /* 1EFFCC 802D72BC 0005C403 */  sra        $t8, $a1, 16
    /* 1EFFD0 802D72C0 2419000A */  addiu      $t9, $zero, 0xA
    /* 1EFFD4 802D72C4 240A0008 */  addiu      $t2, $zero, 0x8
    /* 1EFFD8 802D72C8 240B0028 */  addiu      $t3, $zero, 0x28
    /* 1EFFDC 802D72CC 240C00DC */  addiu      $t4, $zero, 0xDC
    /* 1EFFE0 802D72D0 240D0050 */  addiu      $t5, $zero, 0x50
    /* 1EFFE4 802D72D4 240E0050 */  addiu      $t6, $zero, 0x50
    /* 1EFFE8 802D72D8 240F0050 */  addiu      $t7, $zero, 0x50
    /* 1EFFEC 802D72DC AFAF0028 */  sw         $t7, 0x28($sp)
    /* 1EFFF0 802D72E0 AFAE0024 */  sw         $t6, 0x24($sp)
    /* 1EFFF4 802D72E4 AFAD0020 */  sw         $t5, 0x20($sp)
    /* 1EFFF8 802D72E8 AFAC001C */  sw         $t4, 0x1C($sp)
    /* 1EFFFC 802D72EC AFAB0018 */  sw         $t3, 0x18($sp)
    /* 1F0000 802D72F0 AFAA0014 */  sw         $t2, 0x14($sp)
    /* 1F0004 802D72F4 AFB90010 */  sw         $t9, 0x10($sp)
    /* 1F0008 802D72F8 03002825 */  or         $a1, $t8, $zero
    /* 1F000C 802D72FC 87A40068 */  lh         $a0, 0x68($sp)
    /* 1F0010 802D7300 87A60064 */  lh         $a2, 0x64($sp)
    /* 1F0014 802D7304 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 1F0018 802D7308 240700C8 */   addiu     $a3, $zero, 0xC8
    /* 1F001C 802D730C 0C038D78 */  jal        func_800E35E0_F2590
    /* 1F0020 802D7310 240400FF */   addiu     $a0, $zero, 0xFF
    /* 1F0024 802D7314 87A40068 */  lh         $a0, 0x68($sp)
    /* 1F0028 802D7318 02002825 */  or         $a1, $s0, $zero
    /* 1F002C 802D731C 87A60064 */  lh         $a2, 0x64($sp)
    /* 1F0030 802D7320 0C04D751 */  jal        func_80135D44_144CF4
    /* 1F0034 802D7324 3C074040 */   lui       $a3, (0x40400000 >> 16)
    /* 1F0038 802D7328 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 1F003C 802D732C 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 1F0040 802D7330 240500C8 */  addiu      $a1, $zero, 0xC8
    /* 1F0044 802D7334 9218001A */  lbu        $t8, 0x1A($s0)
    /* 1F0048 802D7338 02002025 */  or         $a0, $s0, $zero
    /* 1F004C 802D733C 13000005 */  beqz       $t8, .L802D7354_1F0064
    /* 1F0050 802D7340 00000000 */   nop
    /* 1F0054 802D7344 0C048FA4 */  jal        func_80123E90_132E40
    /* 1F0058 802D7348 02002025 */   or        $a0, $s0, $zero
    /* 1F005C 802D734C 10000176 */  b          .L802D7928_1F0638
    /* 1F0060 802D7350 8FBF0044 */   lw        $ra, 0x44($sp)
  .L802D7354_1F0064:
    /* 1F0064 802D7354 0C048FA4 */  jal        func_80123E90_132E40
    /* 1F0068 802D7358 2405004B */   addiu     $a1, $zero, 0x4B
    /* 1F006C 802D735C 10000172 */  b          .L802D7928_1F0638
    /* 1F0070 802D7360 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F0074 802D7364 28612301 */  slti       $at, $v1, 0x2301
  .L802D7368_1F0078:
    /* 1F0078 802D7368 142000AC */  bnez       $at, .L802D761C_1F032C
    /* 1F007C 802D736C 46005021 */   cvt.d.s   $f0, $f10
    /* 1F0080 802D7370 24193C00 */  addiu      $t9, $zero, 0x3C00
    /* 1F0084 802D7374 03235023 */  subu       $t2, $t9, $v1
    /* 1F0088 802D7378 448A2000 */  mtc1       $t2, $f4
    /* 1F008C 802D737C 3C014648 */  lui        $at, (0x46480000 >> 16)
    /* 1F0090 802D7380 44814000 */  mtc1       $at, $f8
    /* 1F0094 802D7384 468021A0 */  cvt.s.w    $f6, $f4
    /* 1F0098 802D7388 3C01802E */  lui        $at, %hi(D_802E0EE4)
    /* 1F009C 802D738C C4300EE4 */  lwc1       $f16, %lo(D_802E0EE4)($at)
    /* 1F00A0 802D7390 3C01802E */  lui        $at, %hi(D_802E0EE8)
    /* 1F00A4 802D7394 C42A0EE8 */  lwc1       $f10, %lo(D_802E0EE8)($at)
    /* 1F00A8 802D7398 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 1F00AC 802D739C 46083083 */  div.s      $f2, $f6, $f8
    /* 1F00B0 802D73A0 44814000 */  mtc1       $at, $f8
    /* 1F00B4 802D73A4 3C01802E */  lui        $at, %hi(D_802E0EF0)
    /* 1F00B8 802D73A8 860F0002 */  lh         $t7, 0x2($s0)
    /* 1F00BC 802D73AC 3C04802E */  lui        $a0, %hi(D_802E0FBA)
    /* 1F00C0 802D73B0 86060000 */  lh         $a2, 0x0($s0)
    /* 1F00C4 802D73B4 AFA30010 */  sw         $v1, 0x10($sp)
    /* 1F00C8 802D73B8 24840FBA */  addiu      $a0, $a0, %lo(D_802E0FBA)
    /* 1F00CC 802D73BC 2405018C */  addiu      $a1, $zero, 0x18C
    /* 1F00D0 802D73C0 46028482 */  mul.s      $f18, $f16, $f2
    /* 1F00D4 802D73C4 46024401 */  sub.s      $f16, $f8, $f2
    /* 1F00D8 802D73C8 460A9100 */  add.s      $f4, $f18, $f10
    /* 1F00DC 802D73CC D42A0EF0 */  ldc1       $f10, %lo(D_802E0EF0)($at)
    /* 1F00E0 802D73D0 3C01802E */  lui        $at, %hi(D_802E0EF8)
    /* 1F00E4 802D73D4 460084A1 */  cvt.d.s    $f18, $f16
    /* 1F00E8 802D73D8 4600218D */  trunc.w.s  $f6, $f4
    /* 1F00EC 802D73DC 462A9102 */  mul.d      $f4, $f18, $f10
    /* 1F00F0 802D73E0 440E3000 */  mfc1       $t6, $f6
    /* 1F00F4 802D73E4 D4260EF8 */  ldc1       $f6, %lo(D_802E0EF8)($at)
    /* 1F00F8 802D73E8 01EE3823 */  subu       $a3, $t7, $t6
    /* 1F00FC 802D73EC 0007C400 */  sll        $t8, $a3, 16
    /* 1F0100 802D73F0 46262200 */  add.d      $f8, $f4, $f6
    /* 1F0104 802D73F4 00183C03 */  sra        $a3, $t8, 16
    /* 1F0108 802D73F8 46204400 */  add.d      $f16, $f8, $f0
    /* 1F010C 802D73FC 462084A0 */  cvt.s.d    $f18, $f16
    /* 1F0110 802D7400 0C04DC6E */  jal        func_801371B8_146168
    /* 1F0114 802D7404 E7B20014 */   swc1      $f18, 0x14($sp)
    /* 1F0118 802D7408 3C0A8005 */  lui        $t2, %hi(D_80052A8C)
    /* 1F011C 802D740C 8D4A2A8C */  lw         $t2, %lo(D_80052A8C)($t2)
    /* 1F0120 802D7410 2401000A */  addiu      $at, $zero, 0xA
    /* 1F0124 802D7414 0141001B */  divu       $zero, $t2, $at
    /* 1F0128 802D7418 00005810 */  mfhi       $t3
    /* 1F012C 802D741C 55600142 */  bnel       $t3, $zero, .L802D7928_1F0638
    /* 1F0130 802D7420 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F0134 802D7424 0C000E38 */  jal        func_800038E0_44E0
    /* 1F0138 802D7428 00000000 */   nop
    /* 1F013C 802D742C 04410004 */  bgez       $v0, .L802D7440_1F0150
    /* 1F0140 802D7430 304C0007 */   andi      $t4, $v0, 0x7
    /* 1F0144 802D7434 11800002 */  beqz       $t4, .L802D7440_1F0150
    /* 1F0148 802D7438 00000000 */   nop
    /* 1F014C 802D743C 258CFFF8 */  addiu      $t4, $t4, -0x8
  .L802D7440_1F0150:
    /* 1F0150 802D7440 15800138 */  bnez       $t4, .L802D7924_1F0634
    /* 1F0154 802D7444 2404FFB0 */   addiu     $a0, $zero, -0x50
    /* 1F0158 802D7448 24050050 */  addiu      $a1, $zero, 0x50
    /* 1F015C 802D744C 0C030347 */  jal        func_800C0D1C_CFCCC
    /* 1F0160 802D7450 24060001 */   addiu     $a2, $zero, 0x1
    /* 1F0164 802D7454 50400134 */  beql       $v0, $zero, .L802D7928_1F0638
    /* 1F0168 802D7458 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F016C 802D745C 0C000E38 */  jal        func_800038E0_44E0
    /* 1F0170 802D7460 00000000 */   nop
    /* 1F0174 802D7464 00026943 */  sra        $t5, $v0, 5
    /* 1F0178 802D7468 240F0400 */  addiu      $t7, $zero, 0x400
    /* 1F017C 802D746C 01EDC023 */  subu       $t8, $t7, $t5
    /* 1F0180 802D7470 0C000E38 */  jal        func_800038E0_44E0
    /* 1F0184 802D7474 A7B80062 */   sh        $t8, 0x62($sp)
    /* 1F0188 802D7478 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 1F018C 802D747C 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 1F0190 802D7480 87A90062 */  lh         $t1, 0x62($sp)
    /* 1F0194 802D7484 00026143 */  sra        $t4, $v0, 5
    /* 1F0198 802D7488 86070000 */  lh         $a3, 0x0($s0)
    /* 1F019C 802D748C 240F0400 */  addiu      $t7, $zero, 0x400
    /* 1F01A0 802D7490 01EC4023 */  subu       $t0, $t7, $t4
    /* 1F01A4 802D7494 00E9C821 */  addu       $t9, $a3, $t1
    /* 1F01A8 802D7498 A7B9006E */  sh         $t9, 0x6E($sp)
    /* 1F01AC 802D749C 860A0002 */  lh         $t2, 0x2($s0)
    /* 1F01B0 802D74A0 00086C00 */  sll        $t5, $t0, 16
    /* 1F01B4 802D74A4 000D7403 */  sra        $t6, $t5, 16
    /* 1F01B8 802D74A8 254B05DC */  addiu      $t3, $t2, 0x5DC
    /* 1F01BC 802D74AC A7AB006C */  sh         $t3, 0x6C($sp)
    /* 1F01C0 802D74B0 86030004 */  lh         $v1, 0x4($s0)
    /* 1F01C4 802D74B4 01C04025 */  or         $t0, $t6, $zero
    /* 1F01C8 802D74B8 006E3021 */  addu       $a2, $v1, $t6
    /* 1F01CC 802D74BC 0006C400 */  sll        $t8, $a2, 16
    /* 1F01D0 802D74C0 0018CC03 */  sra        $t9, $t8, 16
    /* 1F01D4 802D74C4 03203025 */  or         $a2, $t9, $zero
    /* 1F01D8 802D74C8 05210003 */  bgez       $t1, .L802D74D8_1F01E8
    /* 1F01DC 802D74CC 00095043 */   sra       $t2, $t1, 1
    /* 1F01E0 802D74D0 25210001 */  addiu      $at, $t1, 0x1
    /* 1F01E4 802D74D4 00015043 */  sra        $t2, $at, 1
  .L802D74D8_1F01E8:
    /* 1F01E8 802D74D8 00EA2021 */  addu       $a0, $a3, $t2
    /* 1F01EC 802D74DC 00045C00 */  sll        $t3, $a0, 16
    /* 1F01F0 802D74E0 000B7C03 */  sra        $t7, $t3, 16
    /* 1F01F4 802D74E4 01E02025 */  or         $a0, $t7, $zero
    /* 1F01F8 802D74E8 05010003 */  bgez       $t0, .L802D74F8_1F0208
    /* 1F01FC 802D74EC 00086043 */   sra       $t4, $t0, 1
    /* 1F0200 802D74F0 25010001 */  addiu      $at, $t0, 0x1
    /* 1F0204 802D74F4 00016043 */  sra        $t4, $at, 1
  .L802D74F8_1F0208:
    /* 1F0208 802D74F8 006C2821 */  addu       $a1, $v1, $t4
    /* 1F020C 802D74FC 00056C00 */  sll        $t5, $a1, 16
    /* 1F0210 802D7500 000D2C03 */  sra        $a1, $t5, 16
    /* 1F0214 802D7504 A7A50064 */  sh         $a1, 0x64($sp)
    /* 1F0218 802D7508 A7A40068 */  sh         $a0, 0x68($sp)
    /* 1F021C 802D750C 0C02E134 */  jal        func_800B84D0_C7480
    /* 1F0220 802D7510 A7A6006A */   sh        $a2, 0x6A($sp)
    /* 1F0224 802D7514 00021A03 */  sra        $v1, $v0, 8
    /* 1F0228 802D7518 87B90064 */  lh         $t9, 0x64($sp)
    /* 1F022C 802D751C 00038400 */  sll        $s0, $v1, 16
    /* 1F0230 802D7520 0010C403 */  sra        $t8, $s0, 16
    /* 1F0234 802D7524 240A0005 */  addiu      $t2, $zero, 0x5
    /* 1F0238 802D7528 03008025 */  or         $s0, $t8, $zero
    /* 1F023C 802D752C 87A6006A */  lh         $a2, 0x6A($sp)
    /* 1F0240 802D7530 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 1F0244 802D7534 AFA30010 */  sw         $v1, 0x10($sp)
    /* 1F0248 802D7538 87A4006E */  lh         $a0, 0x6E($sp)
    /* 1F024C 802D753C 87A5006C */  lh         $a1, 0x6C($sp)
    /* 1F0250 802D7540 87A70068 */  lh         $a3, 0x68($sp)
    /* 1F0254 802D7544 0C0345AF */  jal        func_800D16BC_E066C
    /* 1F0258 802D7548 AFB90014 */   sw        $t9, 0x14($sp)
    /* 1F025C 802D754C 00102C00 */  sll        $a1, $s0, 16
    /* 1F0260 802D7550 00055C03 */  sra        $t3, $a1, 16
    /* 1F0264 802D7554 240F000A */  addiu      $t7, $zero, 0xA
    /* 1F0268 802D7558 240C0008 */  addiu      $t4, $zero, 0x8
    /* 1F026C 802D755C 240D0028 */  addiu      $t5, $zero, 0x28
    /* 1F0270 802D7560 240E00DC */  addiu      $t6, $zero, 0xDC
    /* 1F0274 802D7564 24180050 */  addiu      $t8, $zero, 0x50
    /* 1F0278 802D7568 24190050 */  addiu      $t9, $zero, 0x50
    /* 1F027C 802D756C 240A0050 */  addiu      $t2, $zero, 0x50
    /* 1F0280 802D7570 AFAA0028 */  sw         $t2, 0x28($sp)
    /* 1F0284 802D7574 AFB90024 */  sw         $t9, 0x24($sp)
    /* 1F0288 802D7578 AFB80020 */  sw         $t8, 0x20($sp)
    /* 1F028C 802D757C AFAE001C */  sw         $t6, 0x1C($sp)
    /* 1F0290 802D7580 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 1F0294 802D7584 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 1F0298 802D7588 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F029C 802D758C 01602825 */  or         $a1, $t3, $zero
    /* 1F02A0 802D7590 87A40068 */  lh         $a0, 0x68($sp)
    /* 1F02A4 802D7594 87A60064 */  lh         $a2, 0x64($sp)
    /* 1F02A8 802D7598 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 1F02AC 802D759C 240700C8 */   addiu     $a3, $zero, 0xC8
    /* 1F02B0 802D75A0 00102C00 */  sll        $a1, $s0, 16
    /* 1F02B4 802D75A4 00055C03 */  sra        $t3, $a1, 16
    /* 1F02B8 802D75A8 01602825 */  or         $a1, $t3, $zero
    /* 1F02BC 802D75AC 240B00FA */  addiu      $t3, $zero, 0xFA
    /* 1F02C0 802D75B0 240F007F */  addiu      $t7, $zero, 0x7F
    /* 1F02C4 802D75B4 240C0064 */  addiu      $t4, $zero, 0x64
    /* 1F02C8 802D75B8 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 1F02CC 802D75BC 240E0010 */  addiu      $t6, $zero, 0x10
    /* 1F02D0 802D75C0 24180002 */  addiu      $t8, $zero, 0x2
    /* 1F02D4 802D75C4 241900D2 */  addiu      $t9, $zero, 0xD2
    /* 1F02D8 802D75C8 240A00D2 */  addiu      $t2, $zero, 0xD2
    /* 1F02DC 802D75CC AFAA002C */  sw         $t2, 0x2C($sp)
    /* 1F02E0 802D75D0 AFB90028 */  sw         $t9, 0x28($sp)
    /* 1F02E4 802D75D4 AFB80024 */  sw         $t8, 0x24($sp)
    /* 1F02E8 802D75D8 AFAE0020 */  sw         $t6, 0x20($sp)
    /* 1F02EC 802D75DC AFAD001C */  sw         $t5, 0x1C($sp)
    /* 1F02F0 802D75E0 AFAC0018 */  sw         $t4, 0x18($sp)
    /* 1F02F4 802D75E4 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F02F8 802D75E8 AFAB0030 */  sw         $t3, 0x30($sp)
    /* 1F02FC 802D75EC 87A40068 */  lh         $a0, 0x68($sp)
    /* 1F0300 802D75F0 87A60064 */  lh         $a2, 0x64($sp)
    /* 1F0304 802D75F4 00003825 */  or         $a3, $zero, $zero
    /* 1F0308 802D75F8 0C031507 */  jal        func_800C541C_D43CC
    /* 1F030C 802D75FC AFA00014 */   sw        $zero, 0x14($sp)
    /* 1F0310 802D7600 87A40068 */  lh         $a0, 0x68($sp)
    /* 1F0314 802D7604 02002825 */  or         $a1, $s0, $zero
    /* 1F0318 802D7608 87A60064 */  lh         $a2, 0x64($sp)
    /* 1F031C 802D760C 0C04D751 */  jal        func_80135D44_144CF4
    /* 1F0320 802D7610 3C074040 */   lui       $a3, (0x40400000 >> 16)
    /* 1F0324 802D7614 100000C4 */  b          .L802D7928_1F0638
    /* 1F0328 802D7618 8FBF0044 */   lw        $ra, 0x44($sp)
  .L802D761C_1F032C:
    /* 1F032C 802D761C 28610A01 */  slti       $at, $v1, 0xA01
    /* 1F0330 802D7620 1420009D */  bnez       $at, .L802D7898_1F05A8
    /* 1F0334 802D7624 3C04802E */   lui       $a0, %hi(D_802E0FBA)
    /* 1F0338 802D7628 240F3C00 */  addiu      $t7, $zero, 0x3C00
    /* 1F033C 802D762C 01E36023 */  subu       $t4, $t7, $v1
    /* 1F0340 802D7630 448C5000 */  mtc1       $t4, $f10
    /* 1F0344 802D7634 3C014648 */  lui        $at, (0x46480000 >> 16)
    /* 1F0348 802D7638 44813000 */  mtc1       $at, $f6
    /* 1F034C 802D763C 46805120 */  cvt.s.w    $f4, $f10
    /* 1F0350 802D7640 3C01802E */  lui        $at, %hi(D_802E0F00)
    /* 1F0354 802D7644 C4280F00 */  lwc1       $f8, %lo(D_802E0F00)($at)
    /* 1F0358 802D7648 3C01802E */  lui        $at, %hi(D_802E0F04)
    /* 1F035C 802D764C C4320F04 */  lwc1       $f18, %lo(D_802E0F04)($at)
    /* 1F0360 802D7650 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 1F0364 802D7654 46062083 */  div.s      $f2, $f4, $f6
    /* 1F0368 802D7658 44813000 */  mtc1       $at, $f6
    /* 1F036C 802D765C 3C01802E */  lui        $at, %hi(D_802E0F08)
    /* 1F0370 802D7660 860A0002 */  lh         $t2, 0x2($s0)
    /* 1F0374 802D7664 3C04802E */  lui        $a0, %hi(D_802E0FBA)
    /* 1F0378 802D7668 86060000 */  lh         $a2, 0x0($s0)
    /* 1F037C 802D766C AFA30010 */  sw         $v1, 0x10($sp)
    /* 1F0380 802D7670 24840FBA */  addiu      $a0, $a0, %lo(D_802E0FBA)
    /* 1F0384 802D7674 2405018C */  addiu      $a1, $zero, 0x18C
    /* 1F0388 802D7678 46024402 */  mul.s      $f16, $f8, $f2
    /* 1F038C 802D767C 46023201 */  sub.s      $f8, $f6, $f2
    /* 1F0390 802D7680 46128280 */  add.s      $f10, $f16, $f18
    /* 1F0394 802D7684 D4320F08 */  ldc1       $f18, %lo(D_802E0F08)($at)
    /* 1F0398 802D7688 3C01802E */  lui        $at, %hi(D_802E0F10)
    /* 1F039C 802D768C 46004421 */  cvt.d.s    $f16, $f8
    /* 1F03A0 802D7690 4600510D */  trunc.w.s  $f4, $f10
    /* 1F03A4 802D7694 46328282 */  mul.d      $f10, $f16, $f18
    /* 1F03A8 802D7698 44192000 */  mfc1       $t9, $f4
    /* 1F03AC 802D769C D4240F10 */  ldc1       $f4, %lo(D_802E0F10)($at)
    /* 1F03B0 802D76A0 01593823 */  subu       $a3, $t2, $t9
    /* 1F03B4 802D76A4 00075C00 */  sll        $t3, $a3, 16
    /* 1F03B8 802D76A8 46245180 */  add.d      $f6, $f10, $f4
    /* 1F03BC 802D76AC 000B3C03 */  sra        $a3, $t3, 16
    /* 1F03C0 802D76B0 46203200 */  add.d      $f8, $f6, $f0
    /* 1F03C4 802D76B4 46204420 */  cvt.s.d    $f16, $f8
    /* 1F03C8 802D76B8 0C04DC6E */  jal        func_801371B8_146168
    /* 1F03CC 802D76BC E7B00014 */   swc1      $f16, 0x14($sp)
    /* 1F03D0 802D76C0 3C0C8005 */  lui        $t4, %hi(D_80052A8C)
    /* 1F03D4 802D76C4 8D8C2A8C */  lw         $t4, %lo(D_80052A8C)($t4)
    /* 1F03D8 802D76C8 2401000A */  addiu      $at, $zero, 0xA
    /* 1F03DC 802D76CC 0181001B */  divu       $zero, $t4, $at
    /* 1F03E0 802D76D0 00006810 */  mfhi       $t5
    /* 1F03E4 802D76D4 55A00094 */  bnel       $t5, $zero, .L802D7928_1F0638
    /* 1F03E8 802D76D8 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F03EC 802D76DC 0C000E38 */  jal        func_800038E0_44E0
    /* 1F03F0 802D76E0 00000000 */   nop
    /* 1F03F4 802D76E4 2401000C */  addiu      $at, $zero, 0xC
    /* 1F03F8 802D76E8 0041001A */  div        $zero, $v0, $at
    /* 1F03FC 802D76EC 00007010 */  mfhi       $t6
    /* 1F0400 802D76F0 2404FFB0 */  addiu      $a0, $zero, -0x50
    /* 1F0404 802D76F4 15C0008B */  bnez       $t6, .L802D7924_1F0634
    /* 1F0408 802D76F8 24050050 */   addiu     $a1, $zero, 0x50
    /* 1F040C 802D76FC 0C030347 */  jal        func_800C0D1C_CFCCC
    /* 1F0410 802D7700 24060001 */   addiu     $a2, $zero, 0x1
    /* 1F0414 802D7704 50400088 */  beql       $v0, $zero, .L802D7928_1F0638
    /* 1F0418 802D7708 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F041C 802D770C 0C000E38 */  jal        func_800038E0_44E0
    /* 1F0420 802D7710 00000000 */   nop
    /* 1F0424 802D7714 0002C143 */  sra        $t8, $v0, 5
    /* 1F0428 802D7718 240A0400 */  addiu      $t2, $zero, 0x400
    /* 1F042C 802D771C 01585823 */  subu       $t3, $t2, $t8
    /* 1F0430 802D7720 0C000E38 */  jal        func_800038E0_44E0
    /* 1F0434 802D7724 A7AB0062 */   sh        $t3, 0x62($sp)
    /* 1F0438 802D7728 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 1F043C 802D772C 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 1F0440 802D7730 87A90062 */  lh         $t1, 0x62($sp)
    /* 1F0444 802D7734 00027143 */  sra        $t6, $v0, 5
    /* 1F0448 802D7738 86070000 */  lh         $a3, 0x0($s0)
    /* 1F044C 802D773C 240A0400 */  addiu      $t2, $zero, 0x400
    /* 1F0450 802D7740 014EC823 */  subu       $t9, $t2, $t6
    /* 1F0454 802D7744 00E97821 */  addu       $t7, $a3, $t1
    /* 1F0458 802D7748 A7AF006E */  sh         $t7, 0x6E($sp)
    /* 1F045C 802D774C 860C0002 */  lh         $t4, 0x2($s0)
    /* 1F0460 802D7750 00197040 */  sll        $t6, $t9, 1
    /* 1F0464 802D7754 258D05DC */  addiu      $t5, $t4, 0x5DC
    /* 1F0468 802D7758 A7AD006C */  sh         $t5, 0x6C($sp)
    /* 1F046C 802D775C 86030004 */  lh         $v1, 0x4($s0)
    /* 1F0470 802D7760 00096040 */  sll        $t4, $t1, 1
    /* 1F0474 802D7764 00EC2021 */  addu       $a0, $a3, $t4
    /* 1F0478 802D7768 006E2821 */  addu       $a1, $v1, $t6
    /* 1F047C 802D776C 00046C00 */  sll        $t5, $a0, 16
    /* 1F0480 802D7770 0005C400 */  sll        $t8, $a1, 16
    /* 1F0484 802D7774 000D2403 */  sra        $a0, $t5, 16
    /* 1F0488 802D7778 00182C03 */  sra        $a1, $t8, 16
    /* 1F048C 802D777C 00797821 */  addu       $t7, $v1, $t9
    /* 1F0490 802D7780 A7AF006A */  sh         $t7, 0x6A($sp)
    /* 1F0494 802D7784 A7A50064 */  sh         $a1, 0x64($sp)
    /* 1F0498 802D7788 0C02E134 */  jal        func_800B84D0_C7480
    /* 1F049C 802D778C A7A40068 */   sh        $a0, 0x68($sp)
    /* 1F04A0 802D7790 00021A03 */  sra        $v1, $v0, 8
    /* 1F04A4 802D7794 87AF0064 */  lh         $t7, 0x64($sp)
    /* 1F04A8 802D7798 00038400 */  sll        $s0, $v1, 16
    /* 1F04AC 802D779C 00105C03 */  sra        $t3, $s0, 16
    /* 1F04B0 802D77A0 240C0004 */  addiu      $t4, $zero, 0x4
    /* 1F04B4 802D77A4 01608025 */  or         $s0, $t3, $zero
    /* 1F04B8 802D77A8 87A6006A */  lh         $a2, 0x6A($sp)
    /* 1F04BC 802D77AC AFAC0018 */  sw         $t4, 0x18($sp)
    /* 1F04C0 802D77B0 AFA30010 */  sw         $v1, 0x10($sp)
    /* 1F04C4 802D77B4 87A4006E */  lh         $a0, 0x6E($sp)
    /* 1F04C8 802D77B8 87A5006C */  lh         $a1, 0x6C($sp)
    /* 1F04CC 802D77BC 87A70068 */  lh         $a3, 0x68($sp)
    /* 1F04D0 802D77C0 0C0345AF */  jal        func_800D16BC_E066C
    /* 1F04D4 802D77C4 AFAF0014 */   sw        $t7, 0x14($sp)
    /* 1F04D8 802D77C8 00102C00 */  sll        $a1, $s0, 16
    /* 1F04DC 802D77CC 00056C03 */  sra        $t5, $a1, 16
    /* 1F04E0 802D77D0 01A02825 */  or         $a1, $t5, $zero
    /* 1F04E4 802D77D4 240D00FA */  addiu      $t5, $zero, 0xFA
    /* 1F04E8 802D77D8 240A007F */  addiu      $t2, $zero, 0x7F
    /* 1F04EC 802D77DC 240E0064 */  addiu      $t6, $zero, 0x64
    /* 1F04F0 802D77E0 241800FF */  addiu      $t8, $zero, 0xFF
    /* 1F04F4 802D77E4 24190010 */  addiu      $t9, $zero, 0x10
    /* 1F04F8 802D77E8 240B0002 */  addiu      $t3, $zero, 0x2
    /* 1F04FC 802D77EC 240F00D2 */  addiu      $t7, $zero, 0xD2
    /* 1F0500 802D77F0 240C00D2 */  addiu      $t4, $zero, 0xD2
    /* 1F0504 802D77F4 AFAC002C */  sw         $t4, 0x2C($sp)
    /* 1F0508 802D77F8 AFAF0028 */  sw         $t7, 0x28($sp)
    /* 1F050C 802D77FC AFAB0024 */  sw         $t3, 0x24($sp)
    /* 1F0510 802D7800 AFB90020 */  sw         $t9, 0x20($sp)
    /* 1F0514 802D7804 AFB8001C */  sw         $t8, 0x1C($sp)
    /* 1F0518 802D7808 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 1F051C 802D780C AFAA0010 */  sw         $t2, 0x10($sp)
    /* 1F0520 802D7810 AFAD0030 */  sw         $t5, 0x30($sp)
    /* 1F0524 802D7814 87A40068 */  lh         $a0, 0x68($sp)
    /* 1F0528 802D7818 87A60064 */  lh         $a2, 0x64($sp)
    /* 1F052C 802D781C 00003825 */  or         $a3, $zero, $zero
    /* 1F0530 802D7820 0C031507 */  jal        func_800C541C_D43CC
    /* 1F0534 802D7824 AFA00014 */   sw        $zero, 0x14($sp)
    /* 1F0538 802D7828 00102C00 */  sll        $a1, $s0, 16
    /* 1F053C 802D782C 00055403 */  sra        $t2, $a1, 16
    /* 1F0540 802D7830 240E000A */  addiu      $t6, $zero, 0xA
    /* 1F0544 802D7834 24180008 */  addiu      $t8, $zero, 0x8
    /* 1F0548 802D7838 24190028 */  addiu      $t9, $zero, 0x28
    /* 1F054C 802D783C 240B00DC */  addiu      $t3, $zero, 0xDC
    /* 1F0550 802D7840 240F0050 */  addiu      $t7, $zero, 0x50
    /* 1F0554 802D7844 240C0050 */  addiu      $t4, $zero, 0x50
    /* 1F0558 802D7848 240D0050 */  addiu      $t5, $zero, 0x50
    /* 1F055C 802D784C AFAD0028 */  sw         $t5, 0x28($sp)
    /* 1F0560 802D7850 AFAC0024 */  sw         $t4, 0x24($sp)
    /* 1F0564 802D7854 AFAF0020 */  sw         $t7, 0x20($sp)
    /* 1F0568 802D7858 AFAB001C */  sw         $t3, 0x1C($sp)
    /* 1F056C 802D785C AFB90018 */  sw         $t9, 0x18($sp)
    /* 1F0570 802D7860 AFB80014 */  sw         $t8, 0x14($sp)
    /* 1F0574 802D7864 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 1F0578 802D7868 01402825 */  or         $a1, $t2, $zero
    /* 1F057C 802D786C 87A40068 */  lh         $a0, 0x68($sp)
    /* 1F0580 802D7870 87A60064 */  lh         $a2, 0x64($sp)
    /* 1F0584 802D7874 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 1F0588 802D7878 240700C8 */   addiu     $a3, $zero, 0xC8
    /* 1F058C 802D787C 87A40068 */  lh         $a0, 0x68($sp)
    /* 1F0590 802D7880 02002825 */  or         $a1, $s0, $zero
    /* 1F0594 802D7884 87A60064 */  lh         $a2, 0x64($sp)
    /* 1F0598 802D7888 0C04D751 */  jal        func_80135D44_144CF4
    /* 1F059C 802D788C 3C074040 */   lui       $a3, (0x40400000 >> 16)
    /* 1F05A0 802D7890 10000025 */  b          .L802D7928_1F0638
    /* 1F05A4 802D7894 8FBF0044 */   lw        $ra, 0x44($sp)
  .L802D7898_1F05A8:
    /* 1F05A8 802D7898 3C01802E */  lui        $at, %hi(D_802E0F18)
    /* 1F05AC 802D789C D4320F18 */  ldc1       $f18, %lo(D_802E0F18)($at)
    /* 1F05B0 802D78A0 86070002 */  lh         $a3, 0x2($s0)
    /* 1F05B4 802D78A4 86060000 */  lh         $a2, 0x0($s0)
    /* 1F05B8 802D78A8 46320280 */  add.d      $f10, $f0, $f18
    /* 1F05BC 802D78AC 24E7F060 */  addiu      $a3, $a3, -0xFA0
    /* 1F05C0 802D78B0 00075400 */  sll        $t2, $a3, 16
    /* 1F05C4 802D78B4 000A3C03 */  sra        $a3, $t2, 16
    /* 1F05C8 802D78B8 46205120 */  cvt.s.d    $f4, $f10
    /* 1F05CC 802D78BC AFA30010 */  sw         $v1, 0x10($sp)
    /* 1F05D0 802D78C0 24840FBA */  addiu      $a0, $a0, %lo(D_802E0FBA)
    /* 1F05D4 802D78C4 2405018C */  addiu      $a1, $zero, 0x18C
    /* 1F05D8 802D78C8 0C04DC6E */  jal        func_801371B8_146168
    /* 1F05DC 802D78CC E7A40014 */   swc1      $f4, 0x14($sp)
    /* 1F05E0 802D78D0 3C188005 */  lui        $t8, %hi(D_80052A8C)
    /* 1F05E4 802D78D4 8F182A8C */  lw         $t8, %lo(D_80052A8C)($t8)
    /* 1F05E8 802D78D8 24010064 */  addiu      $at, $zero, 0x64
    /* 1F05EC 802D78DC 0301001B */  divu       $zero, $t8, $at
    /* 1F05F0 802D78E0 0000C810 */  mfhi       $t9
    /* 1F05F4 802D78E4 57200010 */  bnel       $t9, $zero, .L802D7928_1F0638
    /* 1F05F8 802D78E8 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F05FC 802D78EC 0C000E38 */  jal        func_800038E0_44E0
    /* 1F0600 802D78F0 00000000 */   nop
    /* 1F0604 802D78F4 2401000A */  addiu      $at, $zero, 0xA
    /* 1F0608 802D78F8 0041001A */  div        $zero, $v0, $at
    /* 1F060C 802D78FC 00005810 */  mfhi       $t3
    /* 1F0610 802D7900 3C04802E */  lui        $a0, %hi(D_802E0E7C)
    /* 1F0614 802D7904 55600008 */  bnel       $t3, $zero, .L802D7928_1F0638
    /* 1F0618 802D7908 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F061C 802D790C 0C00731B */  jal        osSyncPrintf
    /* 1F0620 802D7910 24840E7C */   addiu     $a0, $a0, %lo(D_802E0E7C)
    /* 1F0624 802D7914 2404FFB0 */  addiu      $a0, $zero, -0x50
    /* 1F0628 802D7918 24050050 */  addiu      $a1, $zero, 0x50
    /* 1F062C 802D791C 0C030347 */  jal        func_800C0D1C_CFCCC
    /* 1F0630 802D7920 00003025 */   or        $a2, $zero, $zero
  .L802D7924_1F0634:
    /* 1F0634 802D7924 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802D7928_1F0638:
    /* 1F0638 802D7928 8FB00040 */  lw         $s0, 0x40($sp)
    /* 1F063C 802D792C 27BD0070 */  addiu      $sp, $sp, 0x70
    /* 1F0640 802D7930 03E00008 */  jr         $ra
    /* 1F0644 802D7934 00000000 */   nop
endlabel func_802D6E70_1EFB80
