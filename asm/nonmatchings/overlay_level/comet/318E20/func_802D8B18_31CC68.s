nonmatching func_802D8B18_31CC68, 0x5E8

glabel func_802D8B18_31CC68
    /* 31CC68 802D8B18 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* 31CC6C 802D8B1C AFA40080 */  sw         $a0, 0x80($sp)
    /* 31CC70 802D8B20 93A40083 */  lbu        $a0, 0x83($sp)
    /* 31CC74 802D8B24 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 31CC78 802D8B28 AFB00028 */  sw         $s0, 0x28($sp)
    /* 31CC7C 802D8B2C 240501F9 */  addiu      $a1, $zero, 0x1F9
    /* 31CC80 802D8B30 0C04DD1A */  jal        func_80137468_146418
    /* 31CC84 802D8B34 AFA40044 */   sw        $a0, 0x44($sp)
    /* 31CC88 802D8B38 93A40083 */  lbu        $a0, 0x83($sp)
    /* 31CC8C 802D8B3C 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 31CC90 802D8B40 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 31CC94 802D8B44 00047080 */  sll        $t6, $a0, 2
    /* 31CC98 802D8B48 01C47021 */  addu       $t6, $t6, $a0
    /* 31CC9C 802D8B4C 000E7100 */  sll        $t6, $t6, 4
    /* 31CCA0 802D8B50 01CF8021 */  addu       $s0, $t6, $t7
    /* 31CCA4 802D8B54 8618000C */  lh         $t8, 0xC($s0)
    /* 31CCA8 802D8B58 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 31CCAC 802D8B5C 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 31CCB0 802D8B60 0018C900 */  sll        $t9, $t8, 4
    /* 31CCB4 802D8B64 00794021 */  addu       $t0, $v1, $t9
    /* 31CCB8 802D8B68 8102000C */  lb         $v0, 0xC($t0)
    /* 31CCBC 802D8B6C 9219004B */  lbu        $t9, 0x4B($s0)
    /* 31CCC0 802D8B70 24010001 */  addiu      $at, $zero, 0x1
    /* 31CCC4 802D8B74 00024900 */  sll        $t1, $v0, 4
    /* 31CCC8 802D8B78 00695021 */  addu       $t2, $v1, $t1
    /* 31CCCC 802D8B7C A7A20068 */  sh         $v0, 0x68($sp)
    /* 31CCD0 802D8B80 8142000D */  lb         $v0, 0xD($t2)
    /* 31CCD4 802D8B84 00025900 */  sll        $t3, $v0, 4
    /* 31CCD8 802D8B88 006B6021 */  addu       $t4, $v1, $t3
    /* 31CCDC 802D8B8C A7A2006A */  sh         $v0, 0x6A($sp)
    /* 31CCE0 802D8B90 8182000D */  lb         $v0, 0xD($t4)
    /* 31CCE4 802D8B94 00026900 */  sll        $t5, $v0, 4
    /* 31CCE8 802D8B98 006D7021 */  addu       $t6, $v1, $t5
    /* 31CCEC 802D8B9C A7A2006C */  sh         $v0, 0x6C($sp)
    /* 31CCF0 802D8BA0 81C2000D */  lb         $v0, 0xD($t6)
    /* 31CCF4 802D8BA4 00027900 */  sll        $t7, $v0, 4
    /* 31CCF8 802D8BA8 006FC021 */  addu       $t8, $v1, $t7
    /* 31CCFC 802D8BAC A7A2006E */  sh         $v0, 0x6E($sp)
    /* 31CD00 802D8BB0 8302000D */  lb         $v0, 0xD($t8)
    /* 31CD04 802D8BB4 1721000A */  bne        $t9, $at, .L802D8BE0_31CD30
    /* 31CD08 802D8BB8 A7A20070 */   sh        $v0, 0x70($sp)
    /* 31CD0C 802D8BBC 3C08802E */  lui        $t0, %hi(D_802E510C)
    /* 31CD10 802D8BC0 2508510C */  addiu      $t0, $t0, %lo(D_802E510C)
    /* 31CD14 802D8BC4 AFA80010 */  sw         $t0, 0x10($sp)
    /* 31CD18 802D8BC8 24050005 */  addiu      $a1, $zero, 0x5
    /* 31CD1C 802D8BCC 24060002 */  addiu      $a2, $zero, 0x2
    /* 31CD20 802D8BD0 0C0207C6 */  jal        func_80081F18_90EC8
    /* 31CD24 802D8BD4 27A70068 */   addiu     $a3, $sp, 0x68
    /* 31CD28 802D8BD8 10000009 */  b          .L802D8C00_31CD50
    /* 31CD2C 802D8BDC 304A00FF */   andi      $t2, $v0, 0xFF
  .L802D8BE0_31CD30:
    /* 31CD30 802D8BE0 3C09802E */  lui        $t1, %hi(D_802E5058)
    /* 31CD34 802D8BE4 25295058 */  addiu      $t1, $t1, %lo(D_802E5058)
    /* 31CD38 802D8BE8 AFA90010 */  sw         $t1, 0x10($sp)
    /* 31CD3C 802D8BEC 24050005 */  addiu      $a1, $zero, 0x5
    /* 31CD40 802D8BF0 24060002 */  addiu      $a2, $zero, 0x2
    /* 31CD44 802D8BF4 0C0207C6 */  jal        func_80081F18_90EC8
    /* 31CD48 802D8BF8 27A70068 */   addiu     $a3, $sp, 0x68
    /* 31CD4C 802D8BFC 304A00FF */  andi       $t2, $v0, 0xFF
  .L802D8C00_31CD50:
    /* 31CD50 802D8C00 24010002 */  addiu      $at, $zero, 0x2
    /* 31CD54 802D8C04 15410002 */  bne        $t2, $at, .L802D8C10_31CD60
    /* 31CD58 802D8C08 24050258 */   addiu     $a1, $zero, 0x258
    /* 31CD5C 802D8C0C A2000036 */  sb         $zero, 0x36($s0)
  .L802D8C10_31CD60:
    /* 31CD60 802D8C10 93A40083 */  lbu        $a0, 0x83($sp)
    /* 31CD64 802D8C14 0C021DFA */  jal        func_800877E8_96798
    /* 31CD68 802D8C18 24060320 */   addiu     $a2, $zero, 0x320
    /* 31CD6C 802D8C1C 86040000 */  lh         $a0, 0x0($s0)
    /* 31CD70 802D8C20 0C02E134 */  jal        func_800B84D0_C7480
    /* 31CD74 802D8C24 86050004 */   lh        $a1, 0x4($s0)
    /* 31CD78 802D8C28 3C048022 */  lui        $a0, %hi(D_80222A70)
    /* 31CD7C 802D8C2C 8C842A70 */  lw         $a0, %lo(D_80222A70)($a0)
    /* 31CD80 802D8C30 00022A03 */  sra        $a1, $v0, 8
    /* 31CD84 802D8C34 3C0B8005 */  lui        $t3, %hi(D_80052A8C)
    /* 31CD88 802D8C38 00A4082A */  slt        $at, $a1, $a0
    /* 31CD8C 802D8C3C 10200002 */  beqz       $at, .L802D8C48_31CD98
    /* 31CD90 802D8C40 00000000 */   nop
    /* 31CD94 802D8C44 00802825 */  or         $a1, $a0, $zero
  .L802D8C48_31CD98:
    /* 31CD98 802D8C48 8D6B2A8C */  lw         $t3, %lo(D_80052A8C)($t3)
    /* 31CD9C 802D8C4C 24010096 */  addiu      $at, $zero, 0x96
    /* 31CDA0 802D8C50 0161001B */  divu       $zero, $t3, $at
    /* 31CDA4 802D8C54 00006010 */  mfhi       $t4
    /* 31CDA8 802D8C58 11800004 */  beqz       $t4, .L802D8C6C_31CDBC
    /* 31CDAC 802D8C5C 00000000 */   nop
    /* 31CDB0 802D8C60 860D002C */  lh         $t5, 0x2C($s0)
    /* 31CDB4 802D8C64 55A00009 */  bnel       $t5, $zero, .L802D8C8C_31CDDC
    /* 31CDB8 802D8C68 920F001A */   lbu       $t7, 0x1A($s0)
  .L802D8C6C_31CDBC:
    /* 31CDBC 802D8C6C 0C000E38 */  jal        func_800038E0_44E0
    /* 31CDC0 802D8C70 AFA5005C */   sw        $a1, 0x5C($sp)
    /* 31CDC4 802D8C74 2401012C */  addiu      $at, $zero, 0x12C
    /* 31CDC8 802D8C78 0041001A */  div        $zero, $v0, $at
    /* 31CDCC 802D8C7C 00007010 */  mfhi       $t6
    /* 31CDD0 802D8C80 A60E002C */  sh         $t6, 0x2C($s0)
    /* 31CDD4 802D8C84 8FA5005C */  lw         $a1, 0x5C($sp)
    /* 31CDD8 802D8C88 920F001A */  lbu        $t7, 0x1A($s0)
  .L802D8C8C_31CDDC:
    /* 31CDDC 802D8C8C 3C088005 */  lui        $t0, %hi(D_80052B34)
    /* 31CDE0 802D8C90 8D082B34 */  lw         $t0, %lo(D_80052B34)($t0)
    /* 31CDE4 802D8C94 000FC080 */  sll        $t8, $t7, 2
    /* 31CDE8 802D8C98 030FC023 */  subu       $t8, $t8, $t7
    /* 31CDEC 802D8C9C 0018C080 */  sll        $t8, $t8, 2
    /* 31CDF0 802D8CA0 030FC021 */  addu       $t8, $t8, $t7
    /* 31CDF4 802D8CA4 0018C0C0 */  sll        $t8, $t8, 3
    /* 31CDF8 802D8CA8 3C198025 */  lui        $t9, %hi(D_802566D8)
    /* 31CDFC 802D8CAC 0338C821 */  addu       $t9, $t9, $t8
    /* 31CE00 802D8CB0 873966D8 */  lh         $t9, %lo(D_802566D8)($t9)
    /* 31CE04 802D8CB4 85020002 */  lh         $v0, 0x2($t0)
    /* 31CE08 802D8CB8 03252021 */  addu       $a0, $t9, $a1
    /* 31CE0C 802D8CBC 0082082A */  slt        $at, $a0, $v0
    /* 31CE10 802D8CC0 50200003 */  beql       $at, $zero, .L802D8CD0_31CE20
    /* 31CE14 802D8CC4 86020002 */   lh        $v0, 0x2($s0)
    /* 31CE18 802D8CC8 00402025 */  or         $a0, $v0, $zero
    /* 31CE1C 802D8CCC 86020002 */  lh         $v0, 0x2($s0)
  .L802D8CD0_31CE20:
    /* 31CE20 802D8CD0 0044082A */  slt        $at, $v0, $a0
    /* 31CE24 802D8CD4 50200004 */  beql       $at, $zero, .L802D8CE8_31CE38
    /* 31CE28 802D8CD8 8609002C */   lh        $t1, 0x2C($s0)
    /* 31CE2C 802D8CDC A6040002 */  sh         $a0, 0x2($s0)
    /* 31CE30 802D8CE0 86020002 */  lh         $v0, 0x2($s0)
    /* 31CE34 802D8CE4 8609002C */  lh         $t1, 0x2C($s0)
  .L802D8CE8_31CE38:
    /* 31CE38 802D8CE8 24450005 */  addiu      $a1, $v0, 0x5
    /* 31CE3C 802D8CEC 01241821 */  addu       $v1, $t1, $a0
    /* 31CE40 802D8CF0 0043082A */  slt        $at, $v0, $v1
    /* 31CE44 802D8CF4 1020000A */  beqz       $at, .L802D8D20_31CE70
    /* 31CE48 802D8CF8 0065082A */   slt       $at, $v1, $a1
    /* 31CE4C 802D8CFC 50200005 */  beql       $at, $zero, .L802D8D14_31CE64
    /* 31CE50 802D8D00 860A002C */   lh        $t2, 0x2C($s0)
    /* 31CE54 802D8D04 A6030002 */  sh         $v1, 0x2($s0)
    /* 31CE58 802D8D08 10000005 */  b          .L802D8D20_31CE70
    /* 31CE5C 802D8D0C 86020002 */   lh        $v0, 0x2($s0)
    /* 31CE60 802D8D10 860A002C */  lh         $t2, 0x2C($s0)
  .L802D8D14_31CE64:
    /* 31CE64 802D8D14 A6050002 */  sh         $a1, 0x2($s0)
    /* 31CE68 802D8D18 86020002 */  lh         $v0, 0x2($s0)
    /* 31CE6C 802D8D1C 01441821 */  addu       $v1, $t2, $a0
  .L802D8D20_31CE70:
    /* 31CE70 802D8D20 0062082A */  slt        $at, $v1, $v0
    /* 31CE74 802D8D24 10200007 */  beqz       $at, .L802D8D44_31CE94
    /* 31CE78 802D8D28 2444FFFB */   addiu     $a0, $v0, -0x5
    /* 31CE7C 802D8D2C 0083082A */  slt        $at, $a0, $v1
    /* 31CE80 802D8D30 50200004 */  beql       $at, $zero, .L802D8D44_31CE94
    /* 31CE84 802D8D34 A6040002 */   sh        $a0, 0x2($s0)
    /* 31CE88 802D8D38 10000002 */  b          .L802D8D44_31CE94
    /* 31CE8C 802D8D3C A6030002 */   sh        $v1, 0x2($s0)
    /* 31CE90 802D8D40 A6040002 */  sh         $a0, 0x2($s0)
  .L802D8D44_31CE94:
    /* 31CE94 802D8D44 920B004B */  lbu        $t3, 0x4B($s0)
    /* 31CE98 802D8D48 24010001 */  addiu      $at, $zero, 0x1
    /* 31CE9C 802D8D4C 55610028 */  bnel       $t3, $at, .L802D8DF0_31CF40
    /* 31CEA0 802D8D50 92040026 */   lbu       $a0, 0x26($s0)
    /* 31CEA4 802D8D54 92040026 */  lbu        $a0, 0x26($s0)
    /* 31CEA8 802D8D58 00046080 */  sll        $t4, $a0, 2
    /* 31CEAC 802D8D5C 01846021 */  addu       $t4, $t4, $a0
    /* 31CEB0 802D8D60 000C6100 */  sll        $t4, $t4, 4
    /* 31CEB4 802D8D64 01846023 */  subu       $t4, $t4, $a0
    /* 31CEB8 802D8D68 000C6080 */  sll        $t4, $t4, 2
    /* 31CEBC 802D8D6C 01846021 */  addu       $t4, $t4, $a0
    /* 31CEC0 802D8D70 000C6080 */  sll        $t4, $t4, 2
    /* 31CEC4 802D8D74 01846021 */  addu       $t4, $t4, $a0
    /* 31CEC8 802D8D78 000C6080 */  sll        $t4, $t4, 2
    /* 31CECC 802D8D7C 0C007660 */  jal        sins
    /* 31CED0 802D8D80 3184FFFF */   andi      $a0, $t4, 0xFFFF
    /* 31CED4 802D8D84 44822000 */  mtc1       $v0, $f4
    /* 31CED8 802D8D88 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31CEDC 802D8D8C 44815800 */  mtc1       $at, $f11
    /* 31CEE0 802D8D90 468021A0 */  cvt.s.w    $f6, $f4
    /* 31CEE4 802D8D94 44805000 */  mtc1       $zero, $f10
    /* 31CEE8 802D8D98 3C014020 */  lui        $at, (0x40200000 >> 16)
    /* 31CEEC 802D8D9C 44819800 */  mtc1       $at, $f19
    /* 31CEF0 802D8DA0 44809000 */  mtc1       $zero, $f18
    /* 31CEF4 802D8DA4 860E0002 */  lh         $t6, 0x2($s0)
    /* 31CEF8 802D8DA8 46003221 */  cvt.d.s    $f8, $f6
    /* 31CEFC 802D8DAC 92190026 */  lbu        $t9, 0x26($s0)
    /* 31CF00 802D8DB0 462A4403 */  div.d      $f16, $f8, $f10
    /* 31CF04 802D8DB4 448E3000 */  mtc1       $t6, $f6
    /* 31CF08 802D8DB8 27280001 */  addiu      $t0, $t9, 0x1
    /* 31CF0C 802D8DBC 310900FF */  andi       $t1, $t0, 0xFF
    /* 31CF10 802D8DC0 46803221 */  cvt.d.w    $f8, $f6
    /* 31CF14 802D8DC4 29210007 */  slti       $at, $t1, 0x7
    /* 31CF18 802D8DC8 A2080026 */  sb         $t0, 0x26($s0)
    /* 31CF1C 802D8DCC 46328102 */  mul.d      $f4, $f16, $f18
    /* 31CF20 802D8DD0 46244281 */  sub.d      $f10, $f8, $f4
    /* 31CF24 802D8DD4 4620540D */  trunc.w.d  $f16, $f10
    /* 31CF28 802D8DD8 44188000 */  mfc1       $t8, $f16
    /* 31CF2C 802D8DDC 14200028 */  bnez       $at, .L802D8E80_31CFD0
    /* 31CF30 802D8DE0 A6180002 */   sh        $t8, 0x2($s0)
    /* 31CF34 802D8DE4 10000026 */  b          .L802D8E80_31CFD0
    /* 31CF38 802D8DE8 A2000026 */   sb        $zero, 0x26($s0)
    /* 31CF3C 802D8DEC 92040026 */  lbu        $a0, 0x26($s0)
  .L802D8DF0_31CF40:
    /* 31CF40 802D8DF0 00045080 */  sll        $t2, $a0, 2
    /* 31CF44 802D8DF4 01445023 */  subu       $t2, $t2, $a0
    /* 31CF48 802D8DF8 000A50C0 */  sll        $t2, $t2, 3
    /* 31CF4C 802D8DFC 01445021 */  addu       $t2, $t2, $a0
    /* 31CF50 802D8E00 000A5080 */  sll        $t2, $t2, 2
    /* 31CF54 802D8E04 01445021 */  addu       $t2, $t2, $a0
    /* 31CF58 802D8E08 000A5100 */  sll        $t2, $t2, 4
    /* 31CF5C 802D8E0C 01445023 */  subu       $t2, $t2, $a0
    /* 31CF60 802D8E10 000A5040 */  sll        $t2, $t2, 1
    /* 31CF64 802D8E14 0C007660 */  jal        sins
    /* 31CF68 802D8E18 3144FFFF */   andi      $a0, $t2, 0xFFFF
    /* 31CF6C 802D8E1C 44829000 */  mtc1       $v0, $f18
    /* 31CF70 802D8E20 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31CF74 802D8E24 44812800 */  mtc1       $at, $f5
    /* 31CF78 802D8E28 468091A0 */  cvt.s.w    $f6, $f18
    /* 31CF7C 802D8E2C 44802000 */  mtc1       $zero, $f4
    /* 31CF80 802D8E30 3C014020 */  lui        $at, (0x40200000 >> 16)
    /* 31CF84 802D8E34 44818800 */  mtc1       $at, $f17
    /* 31CF88 802D8E38 44808000 */  mtc1       $zero, $f16
    /* 31CF8C 802D8E3C 860C0002 */  lh         $t4, 0x2($s0)
    /* 31CF90 802D8E40 46003221 */  cvt.d.s    $f8, $f6
    /* 31CF94 802D8E44 920F0026 */  lbu        $t7, 0x26($s0)
    /* 31CF98 802D8E48 46244283 */  div.d      $f10, $f8, $f4
    /* 31CF9C 802D8E4C 448C3000 */  mtc1       $t4, $f6
    /* 31CFA0 802D8E50 25F80001 */  addiu      $t8, $t7, 0x1
    /* 31CFA4 802D8E54 331900FF */  andi       $t9, $t8, 0xFF
    /* 31CFA8 802D8E58 46803221 */  cvt.d.w    $f8, $f6
    /* 31CFAC 802D8E5C 2B210007 */  slti       $at, $t9, 0x7
    /* 31CFB0 802D8E60 A2180026 */  sb         $t8, 0x26($s0)
    /* 31CFB4 802D8E64 46305482 */  mul.d      $f18, $f10, $f16
    /* 31CFB8 802D8E68 46324101 */  sub.d      $f4, $f8, $f18
    /* 31CFBC 802D8E6C 4620228D */  trunc.w.d  $f10, $f4
    /* 31CFC0 802D8E70 440E5000 */  mfc1       $t6, $f10
    /* 31CFC4 802D8E74 14200002 */  bnez       $at, .L802D8E80_31CFD0
    /* 31CFC8 802D8E78 A60E0002 */   sh        $t6, 0x2($s0)
    /* 31CFCC 802D8E7C A2000026 */  sb         $zero, 0x26($s0)
  .L802D8E80_31CFD0:
    /* 31CFD0 802D8E80 86020012 */  lh         $v0, 0x12($s0)
    /* 31CFD4 802D8E84 02002025 */  or         $a0, $s0, $zero
    /* 31CFD8 802D8E88 3C058005 */  lui        $a1, %hi(D_80052B34)
    /* 31CFDC 802D8E8C 18400010 */  blez       $v0, .L802D8ED0_31D020
    /* 31CFE0 802D8E90 00000000 */   nop
    /* 31CFE4 802D8E94 8602000A */  lh         $v0, 0xA($s0)
    /* 31CFE8 802D8E98 24080BB8 */  addiu      $t0, $zero, 0xBB8
    /* 31CFEC 802D8E9C 240A0001 */  addiu      $t2, $zero, 0x1
    /* 31CFF0 802D8EA0 244201F4 */  addiu      $v0, $v0, 0x1F4
    /* 31CFF4 802D8EA4 28410BB8 */  slti       $at, $v0, 0xBB8
    /* 31CFF8 802D8EA8 50200004 */  beql       $at, $zero, .L802D8EBC_31D00C
    /* 31CFFC 802D8EAC A608000A */   sh        $t0, 0xA($s0)
    /* 31D000 802D8EB0 10000002 */  b          .L802D8EBC_31D00C
    /* 31D004 802D8EB4 A602000A */   sh        $v0, 0xA($s0)
    /* 31D008 802D8EB8 A608000A */  sh         $t0, 0xA($s0)
  .L802D8EBC_31D00C:
    /* 31D00C 802D8EBC 92090036 */  lbu        $t1, 0x36($s0)
    /* 31D010 802D8EC0 15200028 */  bnez       $t1, .L802D8F64_31D0B4
    /* 31D014 802D8EC4 00000000 */   nop
    /* 31D018 802D8EC8 10000026 */  b          .L802D8F64_31D0B4
    /* 31D01C 802D8ECC A20A004B */   sb        $t2, 0x4B($s0)
  .L802D8ED0_31D020:
    /* 31D020 802D8ED0 04430011 */  bgezl      $v0, .L802D8F18_31D068
    /* 31D024 802D8ED4 8603000A */   lh        $v1, 0xA($s0)
    /* 31D028 802D8ED8 8602000A */  lh         $v0, 0xA($s0)
    /* 31D02C 802D8EDC 240BF448 */  addiu      $t3, $zero, -0xBB8
    /* 31D030 802D8EE0 240D0001 */  addiu      $t5, $zero, 0x1
    /* 31D034 802D8EE4 2442FE0C */  addiu      $v0, $v0, -0x1F4
    /* 31D038 802D8EE8 2841F449 */  slti       $at, $v0, -0xBB7
    /* 31D03C 802D8EEC 54200004 */  bnel       $at, $zero, .L802D8F00_31D050
    /* 31D040 802D8EF0 A60B000A */   sh        $t3, 0xA($s0)
    /* 31D044 802D8EF4 10000002 */  b          .L802D8F00_31D050
    /* 31D048 802D8EF8 A602000A */   sh        $v0, 0xA($s0)
    /* 31D04C 802D8EFC A60B000A */  sh         $t3, 0xA($s0)
  .L802D8F00_31D050:
    /* 31D050 802D8F00 920C0036 */  lbu        $t4, 0x36($s0)
    /* 31D054 802D8F04 15800017 */  bnez       $t4, .L802D8F64_31D0B4
    /* 31D058 802D8F08 00000000 */   nop
    /* 31D05C 802D8F0C 10000015 */  b          .L802D8F64_31D0B4
    /* 31D060 802D8F10 A20D004B */   sb        $t5, 0x4B($s0)
    /* 31D064 802D8F14 8603000A */  lh         $v1, 0xA($s0)
  .L802D8F18_31D068:
    /* 31D068 802D8F18 18600007 */  blez       $v1, .L802D8F38_31D088
    /* 31D06C 802D8F1C 2462FE0C */   addiu     $v0, $v1, -0x1F4
    /* 31D070 802D8F20 18400003 */  blez       $v0, .L802D8F30_31D080
    /* 31D074 802D8F24 00000000 */   nop
    /* 31D078 802D8F28 1000000A */  b          .L802D8F54_31D0A4
    /* 31D07C 802D8F2C A602000A */   sh        $v0, 0xA($s0)
  .L802D8F30_31D080:
    /* 31D080 802D8F30 10000008 */  b          .L802D8F54_31D0A4
    /* 31D084 802D8F34 A600000A */   sh        $zero, 0xA($s0)
  .L802D8F38_31D088:
    /* 31D088 802D8F38 04610006 */  bgez       $v1, .L802D8F54_31D0A4
    /* 31D08C 802D8F3C 246201F4 */   addiu     $v0, $v1, 0x1F4
    /* 31D090 802D8F40 04430004 */  bgezl      $v0, .L802D8F54_31D0A4
    /* 31D094 802D8F44 A600000A */   sh        $zero, 0xA($s0)
    /* 31D098 802D8F48 10000002 */  b          .L802D8F54_31D0A4
    /* 31D09C 802D8F4C A602000A */   sh        $v0, 0xA($s0)
    /* 31D0A0 802D8F50 A600000A */  sh         $zero, 0xA($s0)
  .L802D8F54_31D0A4:
    /* 31D0A4 802D8F54 920E0036 */  lbu        $t6, 0x36($s0)
    /* 31D0A8 802D8F58 15C00002 */  bnez       $t6, .L802D8F64_31D0B4
    /* 31D0AC 802D8F5C 00000000 */   nop
    /* 31D0B0 802D8F60 A200004B */  sb         $zero, 0x4B($s0)
  .L802D8F64_31D0B4:
    /* 31D0B4 802D8F64 0C021395 */  jal        func_80084E54_93E04
    /* 31D0B8 802D8F68 8CA52B34 */   lw        $a1, %lo(D_80052B34)($a1)
    /* 31D0BC 802D8F6C 27AF0050 */  addiu      $t7, $sp, 0x50
    /* 31D0C0 802D8F70 AFA20060 */  sw         $v0, 0x60($sp)
    /* 31D0C4 802D8F74 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 31D0C8 802D8F78 02002025 */  or         $a0, $s0, $zero
    /* 31D0CC 802D8F7C 00002825 */  or         $a1, $zero, $zero
    /* 31D0D0 802D8F80 27A60058 */  addiu      $a2, $sp, 0x58
    /* 31D0D4 802D8F84 0C04A141 */  jal        func_80128504_1374B4
    /* 31D0D8 802D8F88 27A70054 */   addiu     $a3, $sp, 0x54
    /* 31D0DC 802D8F8C 8FB80060 */  lw         $t8, 0x60($sp)
    /* 31D0E0 802D8F90 3C198005 */  lui        $t9, %hi(D_80052B34)
    /* 31D0E4 802D8F94 2B0103E8 */  slti       $at, $t8, 0x3E8
    /* 31D0E8 802D8F98 50200051 */  beql       $at, $zero, .L802D90E0_31D230
    /* 31D0EC 802D8F9C 8602001E */   lh        $v0, 0x1E($s0)
    /* 31D0F0 802D8FA0 8F392B34 */  lw         $t9, %lo(D_80052B34)($t9)
    /* 31D0F4 802D8FA4 86090002 */  lh         $t1, 0x2($s0)
    /* 31D0F8 802D8FA8 93A40083 */  lbu        $a0, 0x83($sp)
    /* 31D0FC 802D8FAC 87280002 */  lh         $t0, 0x2($t9)
    /* 31D100 802D8FB0 0109082A */  slt        $at, $t0, $t1
    /* 31D104 802D8FB4 5020004A */  beql       $at, $zero, .L802D90E0_31D230
    /* 31D108 802D8FB8 8602001E */   lh        $v0, 0x1E($s0)
    /* 31D10C 802D8FBC 0C0213FA */  jal        func_80084FE8_93F98
    /* 31D110 802D8FC0 24050800 */   addiu     $a1, $zero, 0x800
    /* 31D114 802D8FC4 50400046 */  beql       $v0, $zero, .L802D90E0_31D230
    /* 31D118 802D8FC8 8602001E */   lh        $v0, 0x1E($s0)
    /* 31D11C 802D8FCC 820A004E */  lb         $t2, 0x4E($s0)
    /* 31D120 802D8FD0 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* 31D124 802D8FD4 51400042 */  beql       $t2, $zero, .L802D90E0_31D230
    /* 31D128 802D8FD8 8602001E */   lh        $v0, 0x1E($s0)
    /* 31D12C 802D8FDC 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* 31D130 802D8FE0 00002825 */  or         $a1, $zero, $zero
    /* 31D134 802D8FE4 00003025 */  or         $a2, $zero, $zero
    /* 31D138 802D8FE8 916C001A */  lbu        $t4, 0x1A($t3)
    /* 31D13C 802D8FEC 8FA40044 */  lw         $a0, 0x44($sp)
    /* 31D140 802D8FF0 1580000C */  bnez       $t4, .L802D9024_31D174
    /* 31D144 802D8FF4 00000000 */   nop
    /* 31D148 802D8FF8 0C021C73 */  jal        func_800871CC_9617C
    /* 31D14C 802D8FFC 93A40083 */   lbu       $a0, 0x83($sp)
    /* 31D150 802D9000 10400036 */  beqz       $v0, .L802D90DC_31D22C
    /* 31D154 802D9004 8FA40044 */   lw        $a0, 0x44($sp)
    /* 31D158 802D9008 0C04DD1A */  jal        func_80137468_146418
    /* 31D15C 802D900C 2405025B */   addiu     $a1, $zero, 0x25B
    /* 31D160 802D9010 240D0028 */  addiu      $t5, $zero, 0x28
    /* 31D164 802D9014 240ED000 */  addiu      $t6, $zero, -0x3000
    /* 31D168 802D9018 A60D001E */  sh         $t5, 0x1E($s0)
    /* 31D16C 802D901C 1000002F */  b          .L802D90DC_31D22C
    /* 31D170 802D9020 A60E0042 */   sh        $t6, 0x42($s0)
  .L802D9024_31D174:
    /* 31D174 802D9024 0C04DD1A */  jal        func_80137468_146418
    /* 31D178 802D9028 240501FA */   addiu     $a1, $zero, 0x1FA
    /* 31D17C 802D902C 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 31D180 802D9030 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 31D184 802D9034 24080001 */  addiu      $t0, $zero, 0x1
    /* 31D188 802D9038 87A4005A */  lh         $a0, 0x5A($sp)
    /* 31D18C 802D903C 844F0002 */  lh         $t7, 0x2($v0)
    /* 31D190 802D9040 84470000 */  lh         $a3, 0x0($v0)
    /* 31D194 802D9044 87A50056 */  lh         $a1, 0x56($sp)
    /* 31D198 802D9048 25F80032 */  addiu      $t8, $t7, 0x32
    /* 31D19C 802D904C AFB80010 */  sw         $t8, 0x10($sp)
    /* 31D1A0 802D9050 84590004 */  lh         $t9, 0x4($v0)
    /* 31D1A4 802D9054 AFA80018 */  sw         $t0, 0x18($sp)
    /* 31D1A8 802D9058 87A60052 */  lh         $a2, 0x52($sp)
    /* 31D1AC 802D905C 0C0345AF */  jal        func_800D16BC_E066C
    /* 31D1B0 802D9060 AFB90014 */   sw        $t9, 0x14($sp)
    /* 31D1B4 802D9064 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 31D1B8 802D9068 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 31D1BC 802D906C 240A0008 */  addiu      $t2, $zero, 0x8
    /* 31D1C0 802D9070 8483001C */  lh         $v1, 0x1C($a0)
    /* 31D1C4 802D9074 28610009 */  slti       $at, $v1, 0x9
    /* 31D1C8 802D9078 14200005 */  bnez       $at, .L802D9090_31D1E0
    /* 31D1CC 802D907C 2469FFF8 */   addiu     $t1, $v1, -0x8
    /* 31D1D0 802D9080 A489001C */  sh         $t1, 0x1C($a0)
    /* 31D1D4 802D9084 3C018015 */  lui        $at, %hi(D_8014ED46)
    /* 31D1D8 802D9088 10000003 */  b          .L802D9098_31D1E8
    /* 31D1DC 802D908C A42AED46 */   sh        $t2, %lo(D_8014ED46)($at)
  .L802D9090_31D1E0:
    /* 31D1E0 802D9090 0C048FA4 */  jal        func_80123E90_132E40
    /* 31D1E4 802D9094 24050008 */   addiu     $a1, $zero, 0x8
  .L802D9098_31D1E8:
    /* 31D1E8 802D9098 920D001A */  lbu        $t5, 0x1A($s0)
    /* 31D1EC 802D909C 860B001C */  lh         $t3, 0x1C($s0)
    /* 31D1F0 802D90A0 3C028025 */  lui        $v0, %hi(D_802566BA)
    /* 31D1F4 802D90A4 000D7080 */  sll        $t6, $t5, 2
    /* 31D1F8 802D90A8 01CD7023 */  subu       $t6, $t6, $t5
    /* 31D1FC 802D90AC 000E7080 */  sll        $t6, $t6, 2
    /* 31D200 802D90B0 01CD7021 */  addu       $t6, $t6, $t5
    /* 31D204 802D90B4 256C0006 */  addiu      $t4, $t3, 0x6
    /* 31D208 802D90B8 A60C001C */  sh         $t4, 0x1C($s0)
    /* 31D20C 802D90BC 000E70C0 */  sll        $t6, $t6, 3
    /* 31D210 802D90C0 004E1021 */  addu       $v0, $v0, $t6
    /* 31D214 802D90C4 944266BA */  lhu        $v0, %lo(D_802566BA)($v0)
    /* 31D218 802D90C8 860F001C */  lh         $t7, 0x1C($s0)
    /* 31D21C 802D90CC 004F082A */  slt        $at, $v0, $t7
    /* 31D220 802D90D0 50200003 */  beql       $at, $zero, .L802D90E0_31D230
    /* 31D224 802D90D4 8602001E */   lh        $v0, 0x1E($s0)
    /* 31D228 802D90D8 A602001C */  sh         $v0, 0x1C($s0)
  .L802D90DC_31D22C:
    /* 31D22C 802D90DC 8602001E */  lh         $v0, 0x1E($s0)
  .L802D90E0_31D230:
    /* 31D230 802D90E0 10400002 */  beqz       $v0, .L802D90EC_31D23C
    /* 31D234 802D90E4 2458FFFF */   addiu     $t8, $v0, -0x1
    /* 31D238 802D90E8 A618001E */  sh         $t8, 0x1E($s0)
  .L802D90EC_31D23C:
    /* 31D23C 802D90EC 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 31D240 802D90F0 8FB00028 */  lw         $s0, 0x28($sp)
    /* 31D244 802D90F4 27BD0080 */  addiu      $sp, $sp, 0x80
    /* 31D248 802D90F8 03E00008 */  jr         $ra
    /* 31D24C 802D90FC 00000000 */   nop
endlabel func_802D8B18_31CC68
