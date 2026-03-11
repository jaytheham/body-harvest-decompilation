nonmatching func_8011EB40_12DAF0, 0x47C

glabel func_8011EB40_12DAF0
    /* 12DAF0 8011EB40 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 12DAF4 8011EB44 AFB10050 */  sw         $s1, 0x50($sp)
    /* 12DAF8 8011EB48 3C118006 */  lui        $s1, %hi(D_8005BB2C)
    /* 12DAFC 8011EB4C 2631BB2C */  addiu      $s1, $s1, %lo(D_8005BB2C)
    /* 12DB00 8011EB50 AFB0004C */  sw         $s0, 0x4C($sp)
    /* 12DB04 8011EB54 8E300000 */  lw         $s0, 0x0($s1)
    /* 12DB08 8011EB58 AFBF006C */  sw         $ra, 0x6C($sp)
    /* 12DB0C 8011EB5C AFB70068 */  sw         $s7, 0x68($sp)
    /* 12DB10 8011EB60 260E0008 */  addiu      $t6, $s0, 0x8
    /* 12DB14 8011EB64 AFB60064 */  sw         $s6, 0x64($sp)
    /* 12DB18 8011EB68 AFB50060 */  sw         $s5, 0x60($sp)
    /* 12DB1C 8011EB6C AFB4005C */  sw         $s4, 0x5C($sp)
    /* 12DB20 8011EB70 AFB30058 */  sw         $s3, 0x58($sp)
    /* 12DB24 8011EB74 AFB20054 */  sw         $s2, 0x54($sp)
    /* 12DB28 8011EB78 F7B60040 */  sdc1       $f22, 0x40($sp)
    /* 12DB2C 8011EB7C F7B40038 */  sdc1       $f20, 0x38($sp)
    /* 12DB30 8011EB80 AE2E0000 */  sw         $t6, 0x0($s1)
    /* 12DB34 8011EB84 3C0FB700 */  lui        $t7, (0xB7000000 >> 16)
    /* 12DB38 8011EB88 3C180002 */  lui        $t8, (0x20000 >> 16)
    /* 12DB3C 8011EB8C AE180004 */  sw         $t8, 0x4($s0)
    /* 12DB40 8011EB90 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 12DB44 8011EB94 3C138016 */  lui        $s3, %hi(D_8015EA4E)
    /* 12DB48 8011EB98 3C158016 */  lui        $s5, %hi(D_80159DC8)
    /* 12DB4C 8011EB9C 3C178016 */  lui        $s7, %hi(D_80159DCA)
    /* 12DB50 8011EBA0 26F79DCA */  addiu      $s7, $s7, %lo(D_80159DCA)
    /* 12DB54 8011EBA4 26B59DC8 */  addiu      $s5, $s5, %lo(D_80159DC8)
    /* 12DB58 8011EBA8 2673EA4E */  addiu      $s3, $s3, %lo(D_8015EA4E)
    /* 12DB5C 8011EBAC 3C098016 */  lui        $t1, %hi(D_8015EA4C)
    /* 12DB60 8011EBB0 8529EA4C */  lh         $t1, %lo(D_8015EA4C)($t1)
    /* 12DB64 8011EBB4 86B90000 */  lh         $t9, 0x0($s5)
    /* 12DB68 8011EBB8 866C0000 */  lh         $t4, 0x0($s3)
    /* 12DB6C 8011EBBC 86EB0000 */  lh         $t3, 0x0($s7)
    /* 12DB70 8011EBC0 0080A025 */  or         $s4, $a0, $zero
    /* 12DB74 8011EBC4 3C048005 */  lui        $a0, %hi(D_80052B40)
    /* 12DB78 8011EBC8 24842B40 */  addiu      $a0, $a0, %lo(D_80052B40)
    /* 12DB7C 8011EBCC 3C168016 */  lui        $s6, %hi(D_80159DCC)
    /* 12DB80 8011EBD0 03295021 */  addu       $t2, $t9, $t1
    /* 12DB84 8011EBD4 016C6821 */  addu       $t5, $t3, $t4
    /* 12DB88 8011EBD8 26D69DCC */  addiu      $s6, $s6, %lo(D_80159DCC)
    /* 12DB8C 8011EBDC A48A0000 */  sh         $t2, 0x0($a0)
    /* 12DB90 8011EBE0 A48D0002 */  sh         $t5, 0x2($a0)
    /* 12DB94 8011EBE4 3C0F8016 */  lui        $t7, %hi(D_8015EA50)
    /* 12DB98 8011EBE8 85EFEA50 */  lh         $t7, %lo(D_8015EA50)($t7)
    /* 12DB9C 8011EBEC 86CE0000 */  lh         $t6, 0x0($s6)
    /* 12DBA0 8011EBF0 3C088016 */  lui        $t0, %hi(D_8015EA48)
    /* 12DBA4 8011EBF4 2508EA48 */  addiu      $t0, $t0, %lo(D_8015EA48)
    /* 12DBA8 8011EBF8 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 12DBAC 8011EBFC 85190000 */  lh         $t9, 0x0($t0)
    /* 12DBB0 8011EC00 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 12DBB4 8011EC04 3C128006 */  lui        $s2, %hi(D_8005BB38)
    /* 12DBB8 8011EC08 2652BB38 */  addiu      $s2, $s2, %lo(D_8005BB38)
    /* 12DBBC 8011EC0C 01CFC021 */  addu       $t8, $t6, $t7
    /* 12DBC0 8011EC10 A4980004 */  sh         $t8, 0x4($a0)
    /* 12DBC4 8011EC14 A4A00000 */  sh         $zero, 0x0($a1)
    /* 12DBC8 8011EC18 A4A00004 */  sh         $zero, 0x4($a1)
    /* 12DBCC 8011EC1C 8E470000 */  lw         $a3, 0x0($s2)
    /* 12DBD0 8011EC20 00003025 */  or         $a2, $zero, $zero
    /* 12DBD4 8011EC24 0C000E74 */  jal        func_800039D0_45D0
    /* 12DBD8 8011EC28 A4B90002 */   sh        $t9, 0x2($a1)
    /* 12DBDC 8011EC2C 8E300000 */  lw         $s0, 0x0($s1)
    /* 12DBE0 8011EC30 3C0A0100 */  lui        $t2, (0x1000040 >> 16)
    /* 12DBE4 8011EC34 354A0040 */  ori        $t2, $t2, (0x1000040 & 0xFFFF)
    /* 12DBE8 8011EC38 26090008 */  addiu      $t1, $s0, 0x8
    /* 12DBEC 8011EC3C AE290000 */  sw         $t1, 0x0($s1)
    /* 12DBF0 8011EC40 AE0A0000 */  sw         $t2, 0x0($s0)
    /* 12DBF4 8011EC44 8E4B0000 */  lw         $t3, 0x0($s2)
    /* 12DBF8 8011EC48 3C051FFF */  lui        $a1, (0x1FFFFFFF >> 16)
    /* 12DBFC 8011EC4C 34A5FFFF */  ori        $a1, $a1, (0x1FFFFFFF & 0xFFFF)
    /* 12DC00 8011EC50 01656024 */  and        $t4, $t3, $a1
    /* 12DC04 8011EC54 AE0C0004 */  sw         $t4, 0x4($s0)
    /* 12DC08 8011EC58 8E4D0000 */  lw         $t5, 0x0($s2)
    /* 12DC0C 8011EC5C 8E300000 */  lw         $s0, 0x0($s1)
    /* 12DC10 8011EC60 3C180600 */  lui        $t8, (0x6000000 >> 16)
    /* 12DC14 8011EC64 25AE0040 */  addiu      $t6, $t5, 0x40
    /* 12DC18 8011EC68 260F0008 */  addiu      $t7, $s0, 0x8
    /* 12DC1C 8011EC6C AE4E0000 */  sw         $t6, 0x0($s2)
    /* 12DC20 8011EC70 AE2F0000 */  sw         $t7, 0x0($s1)
    /* 12DC24 8011EC74 3C198016 */  lui        $t9, %hi(D_80159DC4)
    /* 12DC28 8011EC78 AE180000 */  sw         $t8, 0x0($s0)
    /* 12DC2C 8011EC7C 8F399DC4 */  lw         $t9, %lo(D_80159DC4)($t9)
    /* 12DC30 8011EC80 3C0C8003 */  lui        $t4, %hi(D_80031160)
    /* 12DC34 8011EC84 258C1160 */  addiu      $t4, $t4, %lo(D_80031160)
    /* 12DC38 8011EC88 03254824 */  and        $t1, $t9, $a1
    /* 12DC3C 8011EC8C AE090004 */  sw         $t1, 0x4($s0)
    /* 12DC40 8011EC90 8E300000 */  lw         $s0, 0x0($s1)
    /* 12DC44 8011EC94 3C0B0102 */  lui        $t3, (0x1020040 >> 16)
    /* 12DC48 8011EC98 356B0040 */  ori        $t3, $t3, (0x1020040 & 0xFFFF)
    /* 12DC4C 8011EC9C 260A0008 */  addiu      $t2, $s0, 0x8
    /* 12DC50 8011ECA0 AE2A0000 */  sw         $t2, 0x0($s1)
    /* 12DC54 8011ECA4 01856824 */  and        $t5, $t4, $a1
    /* 12DC58 8011ECA8 3C0E8005 */  lui        $t6, %hi(gameplayMode)
    /* 12DC5C 8011ECAC AE0D0004 */  sw         $t5, 0x4($s0)
    /* 12DC60 8011ECB0 AE0B0000 */  sw         $t3, 0x0($s0)
    /* 12DC64 8011ECB4 8DCE2ADC */  lw         $t6, %lo(gameplayMode)($t6)
    /* 12DC68 8011ECB8 24060002 */  addiu      $a2, $zero, 0x2
    /* 12DC6C 8011ECBC 3C088016 */  lui        $t0, %hi(D_8015EA48)
    /* 12DC70 8011ECC0 10CE00B1 */  beq        $a2, $t6, .L8011EF88_12DF38
    /* 12DC74 8011ECC4 2508EA48 */   addiu     $t0, $t0, %lo(D_8015EA48)
    /* 12DC78 8011ECC8 3C058016 */  lui        $a1, %hi(D_8015EA4A)
    /* 12DC7C 8011ECCC 24A5EA4A */  addiu      $a1, $a1, %lo(D_8015EA4A)
    /* 12DC80 8011ECD0 84A40000 */  lh         $a0, 0x0($a1)
    /* 12DC84 8011ECD4 28810003 */  slti       $at, $a0, 0x3
    /* 12DC88 8011ECD8 5020000F */  beql       $at, $zero, .L8011ED18_12DCC8
    /* 12DC8C 8011ECDC 850A0000 */   lh        $t2, 0x0($t0)
    /* 12DC90 8011ECE0 14C40006 */  bne        $a2, $a0, .L8011ECFC_12DCAC
    /* 12DC94 8011ECE4 3C038016 */   lui       $v1, %hi(D_8015EA44)
    /* 12DC98 8011ECE8 2463EA44 */  addiu      $v1, $v1, %lo(D_8015EA44)
    /* 12DC9C 8011ECEC 84620000 */  lh         $v0, 0x0($v1)
    /* 12DCA0 8011ECF0 18400002 */  blez       $v0, .L8011ECFC_12DCAC
    /* 12DCA4 8011ECF4 244FFFC0 */   addiu     $t7, $v0, -0x40
    /* 12DCA8 8011ECF8 A46F0000 */  sh         $t7, 0x0($v1)
  .L8011ECFC_12DCAC:
    /* 12DCAC 8011ECFC 3C038016 */  lui        $v1, %hi(D_8015EA44)
    /* 12DCB0 8011ED00 2463EA44 */  addiu      $v1, $v1, %lo(D_8015EA44)
    /* 12DCB4 8011ED04 84790000 */  lh         $t9, 0x0($v1)
    /* 12DCB8 8011ED08 85180000 */  lh         $t8, 0x0($t0)
    /* 12DCBC 8011ED0C 03194821 */  addu       $t1, $t8, $t9
    /* 12DCC0 8011ED10 A5090000 */  sh         $t1, 0x0($t0)
    /* 12DCC4 8011ED14 850A0000 */  lh         $t2, 0x0($t0)
  .L8011ED18_12DCC8:
    /* 12DCC8 8011ED18 3C018016 */  lui        $at, %hi(D_8015EB84)
    /* 12DCCC 8011ED1C 00801825 */  or         $v1, $a0, $zero
    /* 12DCD0 8011ED20 254B078D */  addiu      $t3, $t2, 0x78D
    /* 12DCD4 8011ED24 A42BEB84 */  sh         $t3, %lo(D_8015EB84)($at)
    /* 12DCD8 8011ED28 24010003 */  addiu      $at, $zero, 0x3
    /* 12DCDC 8011ED2C 10810006 */  beq        $a0, $at, .L8011ED48_12DCF8
    /* 12DCE0 8011ED30 3C028016 */   lui       $v0, %hi(D_8015EA46)
    /* 12DCE4 8011ED34 24010004 */  addiu      $at, $zero, 0x4
    /* 12DCE8 8011ED38 50610015 */  beql       $v1, $at, .L8011ED90_12DD40
    /* 12DCEC 8011ED3C 24010001 */   addiu     $at, $zero, 0x1
    /* 12DCF0 8011ED40 10000013 */  b          .L8011ED90_12DD40
    /* 12DCF4 8011ED44 24010001 */   addiu     $at, $zero, 0x1
  .L8011ED48_12DCF8:
    /* 12DCF8 8011ED48 2442EA46 */  addiu      $v0, $v0, %lo(D_8015EA46)
    /* 12DCFC 8011ED4C 844C0000 */  lh         $t4, 0x0($v0)
    /* 12DD00 8011ED50 866E0000 */  lh         $t6, 0x0($s3)
    /* 12DD04 8011ED54 2409FFA2 */  addiu      $t1, $zero, -0x5E
    /* 12DD08 8011ED58 258D0001 */  addiu      $t5, $t4, 0x1
    /* 12DD0C 8011ED5C A44D0000 */  sh         $t5, 0x0($v0)
    /* 12DD10 8011ED60 844F0000 */  lh         $t7, 0x0($v0)
    /* 12DD14 8011ED64 240A0004 */  addiu      $t2, $zero, 0x4
    /* 12DD18 8011ED68 01CFC023 */  subu       $t8, $t6, $t7
    /* 12DD1C 8011ED6C A6780000 */  sh         $t8, 0x0($s3)
    /* 12DD20 8011ED70 86790000 */  lh         $t9, 0x0($s3)
    /* 12DD24 8011ED74 2B21FFA2 */  slti       $at, $t9, -0x5E
    /* 12DD28 8011ED78 50200005 */  beql       $at, $zero, .L8011ED90_12DD40
    /* 12DD2C 8011ED7C 24010001 */   addiu     $at, $zero, 0x1
    /* 12DD30 8011ED80 A4AA0000 */  sh         $t2, 0x0($a1)
    /* 12DD34 8011ED84 A6690000 */  sh         $t1, 0x0($s3)
    /* 12DD38 8011ED88 84A40000 */  lh         $a0, 0x0($a1)
    /* 12DD3C 8011ED8C 24010001 */  addiu      $at, $zero, 0x1
  .L8011ED90_12DD40:
    /* 12DD40 8011ED90 1481007D */  bne        $a0, $at, .L8011EF88_12DF38
    /* 12DD44 8011ED94 24030004 */   addiu     $v1, $zero, 0x4
    /* 12DD48 8011ED98 10600056 */  beqz       $v1, .L8011EEF4_12DEA4
    /* 12DD4C 8011ED9C 24100003 */   addiu     $s0, $zero, 0x3
    /* 12DD50 8011EDA0 3C0B8005 */  lui        $t3, %hi(buildingInstances)
    /* 12DD54 8011EDA4 24010018 */  addiu      $at, $zero, 0x18
    /* 12DD58 8011EDA8 256B0AD8 */  addiu      $t3, $t3, %lo(buildingInstances)
    /* 12DD5C 8011EDAC 028B9023 */  subu       $s2, $s4, $t3
    /* 12DD60 8011EDB0 0241001A */  div        $zero, $s2, $at
    /* 12DD64 8011EDB4 3C018014 */  lui        $at, %hi(D_80144FC0)
    /* 12DD68 8011EDB8 D4364FC0 */  ldc1       $f22, %lo(D_80144FC0)($at)
    /* 12DD6C 8011EDBC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 12DD70 8011EDC0 00006012 */  mflo       $t4
    /* 12DD74 8011EDC4 3C138012 */  lui        $s3, %hi(func_8011EABC_12DA6C)
    /* 12DD78 8011EDC8 4481A800 */  mtc1       $at, $f21
    /* 12DD7C 8011EDCC 4480A000 */  mtc1       $zero, $f20
    /* 12DD80 8011EDD0 2673EABC */  addiu      $s3, $s3, %lo(func_8011EABC_12DA6C)
    /* 12DD84 8011EDD4 000C9100 */  sll        $s2, $t4, 4
  .L8011EDD8_12DD88:
    /* 12DD88 8011EDD8 3C048016 */  lui        $a0, %hi(D_8015EB84)
    /* 12DD8C 8011EDDC 0C007660 */  jal        sins
    /* 12DD90 8011EDE0 9484EB84 */   lhu       $a0, %lo(D_8015EB84)($a0)
    /* 12DD94 8011EDE4 00028C00 */  sll        $s1, $v0, 16
    /* 12DD98 8011EDE8 00117403 */  sra        $t6, $s1, 16
    /* 12DD9C 8011EDEC 3C048016 */  lui        $a0, %hi(D_8015EB84)
    /* 12DDA0 8011EDF0 9484EB84 */  lhu        $a0, %lo(D_8015EB84)($a0)
    /* 12DDA4 8011EDF4 0C007654 */  jal        coss
    /* 12DDA8 8011EDF8 01C08825 */   or        $s1, $t6, $zero
    /* 12DDAC 8011EDFC 44914000 */  mtc1       $s1, $f8
    /* 12DDB0 8011EE00 868B0002 */  lh         $t3, 0x2($s4)
    /* 12DDB4 8011EE04 86EC0000 */  lh         $t4, 0x0($s7)
    /* 12DDB8 8011EE08 468042A0 */  cvt.s.w    $f10, $f8
    /* 12DDBC 8011EE0C 86980000 */  lh         $t8, 0x0($s4)
    /* 12DDC0 8011EE10 016C6821 */  addu       $t5, $t3, $t4
    /* 12DDC4 8011EE14 25AE0026 */  addiu      $t6, $t5, 0x26
    /* 12DDC8 8011EE18 448E2000 */  mtc1       $t6, $f4
    /* 12DDCC 8011EE1C 86B90000 */  lh         $t9, 0x0($s5)
    /* 12DDD0 8011EE20 46005421 */  cvt.d.s    $f16, $f10
    /* 12DDD4 8011EE24 468021A1 */  cvt.d.w    $f6, $f4
    /* 12DDD8 8011EE28 03193021 */  addu       $a2, $t8, $t9
    /* 12DDDC 8011EE2C 24C6FF9E */  addiu      $a2, $a2, -0x62
    /* 12DDE0 8011EE30 00064C00 */  sll        $t1, $a2, 16
    /* 12DDE4 8011EE34 46348483 */  div.d      $f18, $f16, $f20
    /* 12DDE8 8011EE38 00093403 */  sra        $a2, $t1, 16
    /* 12DDEC 8011EE3C 86890004 */  lh         $t1, 0x4($s4)
    /* 12DDF0 8011EE40 86CA0000 */  lh         $t2, 0x0($s6)
    /* 12DDF4 8011EE44 02502821 */  addu       $a1, $s2, $s0
    /* 12DDF8 8011EE48 30AFFFFF */  andi       $t7, $a1, 0xFFFF
    /* 12DDFC 8011EE4C 012A5821 */  addu       $t3, $t1, $t2
    /* 12DE00 8011EE50 256CFF4B */  addiu      $t4, $t3, -0xB5
    /* 12DE04 8011EE54 448C8000 */  mtc1       $t4, $f16
    /* 12DE08 8011EE58 01E02825 */  or         $a1, $t7, $zero
    /* 12DE0C 8011EE5C 240F0014 */  addiu      $t7, $zero, 0x14
    /* 12DE10 8011EE60 24190028 */  addiu      $t9, $zero, 0x28
    /* 12DE14 8011EE64 AFB90028 */  sw         $t9, 0x28($sp)
    /* 12DE18 8011EE68 AFAF0020 */  sw         $t7, 0x20($sp)
    /* 12DE1C 8011EE6C AFA00030 */  sw         $zero, 0x30($sp)
    /* 12DE20 8011EE70 AFB3002C */  sw         $s3, 0x2C($sp)
    /* 12DE24 8011EE74 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 12DE28 8011EE78 AFA00018 */  sw         $zero, 0x18($sp)
    /* 12DE2C 8011EE7C AFA00014 */  sw         $zero, 0x14($sp)
    /* 12DE30 8011EE80 24040001 */  addiu      $a0, $zero, 0x1
    /* 12DE34 8011EE84 46369102 */  mul.d      $f4, $f18, $f22
    /* 12DE38 8011EE88 468084A1 */  cvt.d.w    $f18, $f16
    /* 12DE3C 8011EE8C 46262200 */  add.d      $f8, $f4, $f6
    /* 12DE40 8011EE90 44822000 */  mtc1       $v0, $f4
    /* 12DE44 8011EE94 00000000 */  nop
    /* 12DE48 8011EE98 468021A0 */  cvt.s.w    $f6, $f4
    /* 12DE4C 8011EE9C 4620428D */  trunc.w.d  $f10, $f8
    /* 12DE50 8011EEA0 46003221 */  cvt.d.s    $f8, $f6
    /* 12DE54 8011EEA4 44075000 */  mfc1       $a3, $f10
    /* 12DE58 8011EEA8 46344283 */  div.d      $f10, $f8, $f20
    /* 12DE5C 8011EEAC 0007C400 */  sll        $t8, $a3, 16
    /* 12DE60 8011EEB0 00183C03 */  sra        $a3, $t8, 16
    /* 12DE64 8011EEB4 24180028 */  addiu      $t8, $zero, 0x28
    /* 12DE68 8011EEB8 AFB80024 */  sw         $t8, 0x24($sp)
    /* 12DE6C 8011EEBC 46365402 */  mul.d      $f16, $f10, $f22
    /* 12DE70 8011EEC0 46328100 */  add.d      $f4, $f16, $f18
    /* 12DE74 8011EEC4 4620218D */  trunc.w.d  $f6, $f4
    /* 12DE78 8011EEC8 440E3000 */  mfc1       $t6, $f6
    /* 12DE7C 8011EECC 0C04B5C0 */  jal        func_8012D700_13C6B0
    /* 12DE80 8011EED0 AFAE0010 */   sw        $t6, 0x10($sp)
    /* 12DE84 8011EED4 3C098016 */  lui        $t1, %hi(D_8015EB84)
    /* 12DE88 8011EED8 8529EB84 */  lh         $t1, %lo(D_8015EB84)($t1)
    /* 12DE8C 8011EEDC 02001825 */  or         $v1, $s0, $zero
    /* 12DE90 8011EEE0 3C018016 */  lui        $at, %hi(D_8015EB84)
    /* 12DE94 8011EEE4 252A4000 */  addiu      $t2, $t1, 0x4000
    /* 12DE98 8011EEE8 A42AEB84 */  sh         $t2, %lo(D_8015EB84)($at)
    /* 12DE9C 8011EEEC 1600FFBA */  bnez       $s0, .L8011EDD8_12DD88
    /* 12DEA0 8011EEF0 2610FFFF */   addiu     $s0, $s0, -0x1
  .L8011EEF4_12DEA4:
    /* 12DEA4 8011EEF4 3C0B8005 */  lui        $t3, %hi(buildingInstances)
    /* 12DEA8 8011EEF8 256B0AD8 */  addiu      $t3, $t3, %lo(buildingInstances)
    /* 12DEAC 8011EEFC 028B2823 */  subu       $a1, $s4, $t3
    /* 12DEB0 8011EF00 24010018 */  addiu      $at, $zero, 0x18
    /* 12DEB4 8011EF04 00A1001A */  div        $zero, $a1, $at
    /* 12DEB8 8011EF08 00006012 */  mflo       $t4
    /* 12DEBC 8011EF0C 86990002 */  lh         $t9, 0x2($s4)
    /* 12DEC0 8011EF10 000C6900 */  sll        $t5, $t4, 4
    /* 12DEC4 8011EF14 868C0004 */  lh         $t4, 0x4($s4)
    /* 12DEC8 8011EF18 86860000 */  lh         $a2, 0x0($s4)
    /* 12DECC 8011EF1C 86E90000 */  lh         $t1, 0x0($s7)
    /* 12DED0 8011EF20 25A50005 */  addiu      $a1, $t5, 0x5
    /* 12DED4 8011EF24 24C6FF72 */  addiu      $a2, $a2, -0x8E
    /* 12DED8 8011EF28 00067C00 */  sll        $t7, $a2, 16
    /* 12DEDC 8011EF2C 30AEFFFF */  andi       $t6, $a1, 0xFFFF
    /* 12DEE0 8011EF30 03293821 */  addu       $a3, $t9, $t1
    /* 12DEE4 8011EF34 3C198012 */  lui        $t9, %hi(func_8011EAF8_12DAA8)
    /* 12DEE8 8011EF38 01C02825 */  or         $a1, $t6, $zero
    /* 12DEEC 8011EF3C 000F3403 */  sra        $a2, $t7, 16
    /* 12DEF0 8011EF40 240F0014 */  addiu      $t7, $zero, 0x14
    /* 12DEF4 8011EF44 240E0013 */  addiu      $t6, $zero, 0x13
    /* 12DEF8 8011EF48 2739EAF8 */  addiu      $t9, $t9, %lo(func_8011EAF8_12DAA8)
    /* 12DEFC 8011EF4C 00075400 */  sll        $t2, $a3, 16
    /* 12DF00 8011EF50 24180014 */  addiu      $t8, $zero, 0x14
    /* 12DF04 8011EF54 258DFFDF */  addiu      $t5, $t4, -0x21
    /* 12DF08 8011EF58 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 12DF0C 8011EF5C AFB80028 */  sw         $t8, 0x28($sp)
    /* 12DF10 8011EF60 000A3C03 */  sra        $a3, $t2, 16
    /* 12DF14 8011EF64 AFB90030 */  sw         $t9, 0x30($sp)
    /* 12DF18 8011EF68 AFAE0020 */  sw         $t6, 0x20($sp)
    /* 12DF1C 8011EF6C AFAF0024 */  sw         $t7, 0x24($sp)
    /* 12DF20 8011EF70 AFA0002C */  sw         $zero, 0x2C($sp)
    /* 12DF24 8011EF74 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 12DF28 8011EF78 AFA00018 */  sw         $zero, 0x18($sp)
    /* 12DF2C 8011EF7C AFA00014 */  sw         $zero, 0x14($sp)
    /* 12DF30 8011EF80 0C04B5C0 */  jal        func_8012D700_13C6B0
    /* 12DF34 8011EF84 24040001 */   addiu     $a0, $zero, 0x1
  .L8011EF88_12DF38:
    /* 12DF38 8011EF88 8FBF006C */  lw         $ra, 0x6C($sp)
    /* 12DF3C 8011EF8C D7B40038 */  ldc1       $f20, 0x38($sp)
    /* 12DF40 8011EF90 D7B60040 */  ldc1       $f22, 0x40($sp)
    /* 12DF44 8011EF94 8FB0004C */  lw         $s0, 0x4C($sp)
    /* 12DF48 8011EF98 8FB10050 */  lw         $s1, 0x50($sp)
    /* 12DF4C 8011EF9C 8FB20054 */  lw         $s2, 0x54($sp)
    /* 12DF50 8011EFA0 8FB30058 */  lw         $s3, 0x58($sp)
    /* 12DF54 8011EFA4 8FB4005C */  lw         $s4, 0x5C($sp)
    /* 12DF58 8011EFA8 8FB50060 */  lw         $s5, 0x60($sp)
    /* 12DF5C 8011EFAC 8FB60064 */  lw         $s6, 0x64($sp)
    /* 12DF60 8011EFB0 8FB70068 */  lw         $s7, 0x68($sp)
    /* 12DF64 8011EFB4 03E00008 */  jr         $ra
    /* 12DF68 8011EFB8 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_8011EB40_12DAF0
