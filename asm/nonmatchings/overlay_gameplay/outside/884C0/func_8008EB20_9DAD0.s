nonmatching func_8008EB20_9DAD0, 0x2DC

glabel func_8008EB20_9DAD0
    /* 9DAD0 8008EB20 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 9DAD4 8008EB24 AFA40050 */  sw         $a0, 0x50($sp)
    /* 9DAD8 8008EB28 93AE0053 */  lbu        $t6, 0x53($sp)
    /* 9DADC 8008EB2C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 9DAE0 8008EB30 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 9DAE4 8008EB34 000E7880 */  sll        $t7, $t6, 2
    /* 9DAE8 8008EB38 01EE7821 */  addu       $t7, $t7, $t6
    /* 9DAEC 8008EB3C 000F7900 */  sll        $t7, $t7, 4
    /* 9DAF0 8008EB40 01F81821 */  addu       $v1, $t7, $t8
    /* 9DAF4 8008EB44 9079001A */  lbu        $t9, 0x1A($v1)
    /* 9DAF8 8008EB48 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 9DAFC 8008EB4C AFA50054 */  sw         $a1, 0x54($sp)
    /* 9DB00 8008EB50 AFA60058 */  sw         $a2, 0x58($sp)
    /* 9DB04 8008EB54 27A60046 */  addiu      $a2, $sp, 0x46
    /* 9DB08 8008EB58 84650004 */  lh         $a1, 0x4($v1)
    /* 9DB0C 8008EB5C 84640000 */  lh         $a0, 0x0($v1)
    /* 9DB10 8008EB60 AFA30034 */  sw         $v1, 0x34($sp)
    /* 9DB14 8008EB64 AFA00040 */  sw         $zero, 0x40($sp)
    /* 9DB18 8008EB68 0C0479BF */  jal        func_8011E6FC_12D6AC
    /* 9DB1C 8008EB6C A7B90044 */   sh        $t9, 0x44($sp)
    /* 9DB20 8008EB70 8FA30034 */  lw         $v1, 0x34($sp)
    /* 9DB24 8008EB74 87AD0044 */  lh         $t5, 0x44($sp)
    /* 9DB28 8008EB78 8FA40054 */  lw         $a0, 0x54($sp)
    /* 9DB2C 8008EB7C 8C680020 */  lw         $t0, 0x20($v1)
    /* 9DB30 8008EB80 8FA60058 */  lw         $a2, 0x58($sp)
    /* 9DB34 8008EB84 8FA70040 */  lw         $a3, 0x40($sp)
    /* 9DB38 8008EB88 00084900 */  sll        $t1, $t0, 4
    /* 9DB3C 8008EB8C 0521000E */  bgez       $t1, .L8008EBC8_9DB78
    /* 9DB40 8008EB90 000D7080 */   sll       $t6, $t5, 2
    /* 9DB44 8008EB94 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 9DB48 8008EB98 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 9DB4C 8008EB9C 3C0B8022 */  lui        $t3, %hi(D_80222A70)
    /* 9DB50 8008EBA0 94470020 */  lhu        $a3, 0x20($v0)
    /* 9DB54 8008EBA4 30EA0002 */  andi       $t2, $a3, 0x2
    /* 9DB58 8008EBA8 11400007 */  beqz       $t2, .L8008EBC8_9DB78
    /* 9DB5C 8008EBAC 01403825 */   or        $a3, $t2, $zero
    /* 9DB60 8008EBB0 8D6B2A70 */  lw         $t3, %lo(D_80222A70)($t3)
    /* 9DB64 8008EBB4 844C0002 */  lh         $t4, 0x2($v0)
    /* 9DB68 8008EBB8 016C082A */  slt        $at, $t3, $t4
    /* 9DB6C 8008EBBC 54200003 */  bnel       $at, $zero, .L8008EBCC_9DB7C
    /* 9DB70 8008EBC0 01CD7023 */   subu      $t6, $t6, $t5
    /* 9DB74 8008EBC4 00003825 */  or         $a3, $zero, $zero
  .L8008EBC8_9DB78:
    /* 9DB78 8008EBC8 01CD7023 */  subu       $t6, $t6, $t5
  .L8008EBCC_9DB7C:
    /* 9DB7C 8008EBCC 000E7080 */  sll        $t6, $t6, 2
    /* 9DB80 8008EBD0 01CD7021 */  addu       $t6, $t6, $t5
    /* 9DB84 8008EBD4 000E70C0 */  sll        $t6, $t6, 3
    /* 9DB88 8008EBD8 3C0F8025 */  lui        $t7, %hi(D_802566D4)
    /* 9DB8C 8008EBDC 01EE7821 */  addu       $t7, $t7, $t6
    /* 9DB90 8008EBE0 8DEF66D4 */  lw         $t7, %lo(D_802566D4)($t7)
    /* 9DB94 8008EBE4 3C028022 */  lui        $v0, %hi(D_80222A70)
    /* 9DB98 8008EBE8 8C422A70 */  lw         $v0, %lo(D_80222A70)($v0)
    /* 9DB9C 8008EBEC 000FC0C0 */  sll        $t8, $t7, 3
    /* 9DBA0 8008EBF0 07010009 */  bgez       $t8, .L8008EC18_9DBC8
    /* 9DBA4 8008EBF4 87A50046 */   lh        $a1, 0x46($sp)
    /* 9DBA8 8008EBF8 87A50046 */  lh         $a1, 0x46($sp)
    /* 9DBAC 8008EBFC 00A2082A */  slt        $at, $a1, $v0
    /* 9DBB0 8008EC00 1420000B */  bnez       $at, .L8008EC30_9DBE0
    /* 9DBB4 8008EC04 00000000 */   nop
    /* 9DBB8 8008EC08 2445FF9C */  addiu      $a1, $v0, -0x64
    /* 9DBBC 8008EC0C 0005CC00 */  sll        $t9, $a1, 16
    /* 9DBC0 8008EC10 10000007 */  b          .L8008EC30_9DBE0
    /* 9DBC4 8008EC14 00192C03 */   sra       $a1, $t9, 16
  .L8008EC18_9DBC8:
    /* 9DBC8 8008EC18 00A2082A */  slt        $at, $a1, $v0
    /* 9DBCC 8008EC1C 10200004 */  beqz       $at, .L8008EC30_9DBE0
    /* 9DBD0 8008EC20 00000000 */   nop
    /* 9DBD4 8008EC24 00022C00 */  sll        $a1, $v0, 16
    /* 9DBD8 8008EC28 00054C03 */  sra        $t1, $a1, 16
    /* 9DBDC 8008EC2C 01202825 */  or         $a1, $t1, $zero
  .L8008EC30_9DBE0:
    /* 9DBE0 8008EC30 10E00007 */  beqz       $a3, .L8008EC50_9DC00
    /* 9DBE4 8008EC34 00852021 */   addu      $a0, $a0, $a1
    /* 9DBE8 8008EC38 3C0A8005 */  lui        $t2, %hi(D_80052B34)
    /* 9DBEC 8008EC3C 8D4A2B34 */  lw         $t2, %lo(D_80052B34)($t2)
    /* 9DBF0 8008EC40 A7A50046 */  sh         $a1, 0x46($sp)
    /* 9DBF4 8008EC44 85440002 */  lh         $a0, 0x2($t2)
    /* 9DBF8 8008EC48 10000002 */  b          .L8008EC54_9DC04
    /* 9DBFC 8008EC4C 248400C8 */   addiu     $a0, $a0, 0xC8
  .L8008EC50_9DC00:
    /* 9DC00 8008EC50 A7A50046 */  sh         $a1, 0x46($sp)
  .L8008EC54_9DC04:
    /* 9DC04 8008EC54 84620002 */  lh         $v0, 0x2($v1)
    /* 9DC08 8008EC58 0044082A */  slt        $at, $v0, $a0
    /* 9DC0C 8008EC5C 1020001D */  beqz       $at, .L8008ECD4_9DC84
    /* 9DC10 8008EC60 00825823 */   subu      $t3, $a0, $v0
    /* 9DC14 8008EC64 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* 9DC18 8008EC68 44817800 */  mtc1       $at, $f15
    /* 9DC1C 8008EC6C 240100A0 */  addiu      $at, $zero, 0xA0
    /* 9DC20 8008EC70 0161001A */  div        $zero, $t3, $at
    /* 9DC24 8008EC74 00006012 */  mflo       $t4
    /* 9DC28 8008EC78 448C2000 */  mtc1       $t4, $f4
    /* 9DC2C 8008EC7C 44807000 */  mtc1       $zero, $f14
    /* 9DC30 8008EC80 468020A1 */  cvt.d.w    $f2, $f4
    /* 9DC34 8008EC84 4622703C */  c.lt.d     $f14, $f2
    /* 9DC38 8008EC88 00000000 */  nop
    /* 9DC3C 8008EC8C 45020004 */  bc1fl      .L8008ECA0_9DC50
    /* 9DC40 8008EC90 46201006 */   mov.d     $f0, $f2
    /* 9DC44 8008EC94 10000002 */  b          .L8008ECA0_9DC50
    /* 9DC48 8008EC98 46207006 */   mov.d     $f0, $f14
    /* 9DC4C 8008EC9C 46201006 */  mov.d      $f0, $f2
  .L8008ECA0_9DC50:
    /* 9DC50 8008ECA0 44865000 */  mtc1       $a2, $f10
    /* 9DC54 8008ECA4 846D000A */  lh         $t5, 0xA($v1)
    /* 9DC58 8008ECA8 84620002 */  lh         $v0, 0x2($v1)
    /* 9DC5C 8008ECAC 46805421 */  cvt.d.w    $f16, $f10
    /* 9DC60 8008ECB0 448D3000 */  mtc1       $t5, $f6
    /* 9DC64 8008ECB4 00000000 */  nop
    /* 9DC68 8008ECB8 46803221 */  cvt.d.w    $f8, $f6
    /* 9DC6C 8008ECBC 46208482 */  mul.d      $f18, $f16, $f0
    /* 9DC70 8008ECC0 46324101 */  sub.d      $f4, $f8, $f18
    /* 9DC74 8008ECC4 4620218D */  trunc.w.d  $f6, $f4
    /* 9DC78 8008ECC8 440F3000 */  mfc1       $t7, $f6
    /* 9DC7C 8008ECCC 00000000 */  nop
    /* 9DC80 8008ECD0 A46F000A */  sh         $t7, 0xA($v1)
  .L8008ECD4_9DC84:
    /* 9DC84 8008ECD4 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* 9DC88 8008ECD8 44817800 */  mtc1       $at, $f15
    /* 9DC8C 8008ECDC 44807000 */  mtc1       $zero, $f14
    /* 9DC90 8008ECE0 0082082A */  slt        $at, $a0, $v0
    /* 9DC94 8008ECE4 10200019 */  beqz       $at, .L8008ED4C_9DCFC
    /* 9DC98 8008ECE8 0044C023 */   subu      $t8, $v0, $a0
    /* 9DC9C 8008ECEC 240100A0 */  addiu      $at, $zero, 0xA0
    /* 9DCA0 8008ECF0 0301001A */  div        $zero, $t8, $at
    /* 9DCA4 8008ECF4 0000C812 */  mflo       $t9
    /* 9DCA8 8008ECF8 44995000 */  mtc1       $t9, $f10
    /* 9DCAC 8008ECFC 44868000 */  mtc1       $a2, $f16
    /* 9DCB0 8008ED00 468050A1 */  cvt.d.w    $f2, $f10
    /* 9DCB4 8008ED04 46808321 */  cvt.d.w    $f12, $f16
    /* 9DCB8 8008ED08 4622703C */  c.lt.d     $f14, $f2
    /* 9DCBC 8008ED0C 00000000 */  nop
    /* 9DCC0 8008ED10 45020004 */  bc1fl      .L8008ED24_9DCD4
    /* 9DCC4 8008ED14 46201006 */   mov.d     $f0, $f2
    /* 9DCC8 8008ED18 10000002 */  b          .L8008ED24_9DCD4
    /* 9DCCC 8008ED1C 46207006 */   mov.d     $f0, $f14
    /* 9DCD0 8008ED20 46201006 */  mov.d      $f0, $f2
  .L8008ED24_9DCD4:
    /* 9DCD4 8008ED24 8468000A */  lh         $t0, 0xA($v1)
    /* 9DCD8 8008ED28 46206102 */  mul.d      $f4, $f12, $f0
    /* 9DCDC 8008ED2C 44884000 */  mtc1       $t0, $f8
    /* 9DCE0 8008ED30 00000000 */  nop
    /* 9DCE4 8008ED34 468044A1 */  cvt.d.w    $f18, $f8
    /* 9DCE8 8008ED38 46249180 */  add.d      $f6, $f18, $f4
    /* 9DCEC 8008ED3C 4620328D */  trunc.w.d  $f10, $f6
    /* 9DCF0 8008ED40 440A5000 */  mfc1       $t2, $f10
    /* 9DCF4 8008ED44 00000000 */  nop
    /* 9DCF8 8008ED48 A46A000A */  sh         $t2, 0xA($v1)
  .L8008ED4C_9DCFC:
    /* 9DCFC 8008ED4C 846B000A */  lh         $t3, 0xA($v1)
    /* 9DD00 8008ED50 3C018014 */  lui        $at, %hi(D_80141EE8)
    /* 9DD04 8008ED54 D4321EE8 */  ldc1       $f18, %lo(D_80141EE8)($at)
    /* 9DD08 8008ED58 448B8000 */  mtc1       $t3, $f16
    /* 9DD0C 8008ED5C 84620012 */  lh         $v0, 0x12($v1)
    /* 9DD10 8008ED60 46808221 */  cvt.d.w    $f8, $f16
    /* 9DD14 8008ED64 00022023 */  negu       $a0, $v0
    /* 9DD18 8008ED68 0082082A */  slt        $at, $a0, $v0
    /* 9DD1C 8008ED6C 00802825 */  or         $a1, $a0, $zero
    /* 9DD20 8008ED70 46324102 */  mul.d      $f4, $f8, $f18
    /* 9DD24 8008ED74 4620218D */  trunc.w.d  $f6, $f4
    /* 9DD28 8008ED78 440D3000 */  mfc1       $t5, $f6
    /* 9DD2C 8008ED7C 10200003 */  beqz       $at, .L8008ED8C_9DD3C
    /* 9DD30 8008ED80 A46D000A */   sh        $t5, 0xA($v1)
    /* 9DD34 8008ED84 10000001 */  b          .L8008ED8C_9DD3C
    /* 9DD38 8008ED88 00402825 */   or        $a1, $v0, $zero
  .L8008ED8C_9DD3C:
    /* 9DD3C 8008ED8C 28A10101 */  slti       $at, $a1, 0x101
    /* 9DD40 8008ED90 50200003 */  beql       $at, $zero, .L8008EDA0_9DD50
    /* 9DD44 8008ED94 9464000A */   lhu       $a0, 0xA($v1)
    /* 9DD48 8008ED98 24050100 */  addiu      $a1, $zero, 0x100
    /* 9DD4C 8008ED9C 9464000A */  lhu        $a0, 0xA($v1)
  .L8008EDA0_9DD50:
    /* 9DD50 8008EDA0 AFA30034 */  sw         $v1, 0x34($sp)
    /* 9DD54 8008EDA4 0C007660 */  jal        sins
    /* 9DD58 8008EDA8 AFA5004C */   sw        $a1, 0x4C($sp)
    /* 9DD5C 8008EDAC 44825000 */  mtc1       $v0, $f10
    /* 9DD60 8008EDB0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 9DD64 8008EDB4 44819800 */  mtc1       $at, $f19
    /* 9DD68 8008EDB8 46805420 */  cvt.s.w    $f16, $f10
    /* 9DD6C 8008EDBC 44809000 */  mtc1       $zero, $f18
    /* 9DD70 8008EDC0 8FA5004C */  lw         $a1, 0x4C($sp)
    /* 9DD74 8008EDC4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 9DD78 8008EDC8 8FA30034 */  lw         $v1, 0x34($sp)
    /* 9DD7C 8008EDCC 44853000 */  mtc1       $a1, $f6
    /* 9DD80 8008EDD0 46008221 */  cvt.d.s    $f8, $f16
    /* 9DD84 8008EDD4 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 9DD88 8008EDD8 46324103 */  div.d      $f4, $f8, $f18
    /* 9DD8C 8008EDDC 468032A1 */  cvt.d.w    $f10, $f6
    /* 9DD90 8008EDE0 462A2402 */  mul.d      $f16, $f4, $f10
    /* 9DD94 8008EDE4 4620820D */  trunc.w.d  $f8, $f16
    /* 9DD98 8008EDE8 44194000 */  mfc1       $t9, $f8
    /* 9DD9C 8008EDEC 00000000 */  nop
    /* 9DDA0 8008EDF0 00194023 */  negu       $t0, $t9
    /* 9DDA4 8008EDF4 03E00008 */  jr         $ra
    /* 9DDA8 8008EDF8 A4680010 */   sh        $t0, 0x10($v1)
endlabel func_8008EB20_9DAD0
