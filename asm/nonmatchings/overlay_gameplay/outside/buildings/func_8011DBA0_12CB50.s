nonmatching func_8011DBA0_12CB50, 0x2C0

glabel func_8011DBA0_12CB50
    /* 12CB50 8011DBA0 3C0B8016 */  lui        $t3, %hi(D_8015EB68)
    /* 12CB54 8011DBA4 256BEB68 */  addiu      $t3, $t3, %lo(D_8015EB68)
    /* 12CB58 8011DBA8 3C0C8016 */  lui        $t4, %hi(D_8015EB6C)
    /* 12CB5C 8011DBAC 85660000 */  lh         $a2, 0x0($t3)
    /* 12CB60 8011DBB0 258CEB6C */  addiu      $t4, $t4, %lo(D_8015EB6C)
    /* 12CB64 8011DBB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 12CB68 8011DBB8 85820000 */  lh         $v0, 0x0($t4)
    /* 12CB6C 8011DBBC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 12CB70 8011DBC0 3C1F802B */  lui        $ra, %hi(D_802B2080)
    /* 12CB74 8011DBC4 27FF2080 */  addiu      $ra, $ra, %lo(D_802B2080)
    /* 12CB78 8011DBC8 00067B40 */  sll        $t7, $a2, 13
    /* 12CB7C 8011DBCC 10400061 */  beqz       $v0, .L8011DD54_12CD04
    /* 12CB80 8011DBD0 03EF2821 */   addu      $a1, $ra, $t7
    /* 12CB84 8011DBD4 2458FFFF */  addiu      $t8, $v0, -0x1
    /* 12CB88 8011DBD8 A5980000 */  sh         $t8, 0x0($t4)
    /* 12CB8C 8011DBDC 85990000 */  lh         $t9, 0x0($t4)
    /* 12CB90 8011DBE0 3C0A8026 */  lui        $t2, %hi(buildingSpecs)
    /* 12CB94 8011DBE4 254A9090 */  addiu      $t2, $t2, %lo(buildingSpecs)
    /* 12CB98 8011DBE8 1720005A */  bnez       $t9, .L8011DD54_12CD04
    /* 12CB9C 8011DBEC 3C0D8016 */   lui       $t5, %hi(D_8015EB6E)
    /* 12CBA0 8011DBF0 25ADEB6E */  addiu      $t5, $t5, %lo(D_8015EB6E)
    /* 12CBA4 8011DBF4 85A20000 */  lh         $v0, 0x0($t5)
    /* 12CBA8 8011DBF8 24041000 */  addiu      $a0, $zero, 0x1000
    /* 12CBAC 8011DBFC 24070FFF */  addiu      $a3, $zero, 0xFFF
    /* 12CBB0 8011DC00 304E007F */  andi       $t6, $v0, 0x7F
    /* 12CBB4 8011DC04 000E7940 */  sll        $t7, $t6, 5
    /* 12CBB8 8011DC08 10800045 */  beqz       $a0, .L8011DD20_12CCD0
    /* 12CBBC 8011DC0C 014F4821 */   addu      $t1, $t2, $t7
    /* 12CBC0 8011DC10 3C018014 */  lui        $at, %hi(D_80144FA8)
    /* 12CBC4 8011DC14 D4224FA8 */  ldc1       $f2, %lo(D_80144FA8)($at)
    /* 12CBC8 8011DC18 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* 12CBCC 8011DC1C 3C088014 */  lui        $t0, %hi(D_80140A40)
    /* 12CBD0 8011DC20 44810800 */  mtc1       $at, $f1
    /* 12CBD4 8011DC24 44800000 */  mtc1       $zero, $f0
    /* 12CBD8 8011DC28 25080A40 */  addiu      $t0, $t0, %lo(D_80140A40)
  .L8011DC2C_12CBDC:
    /* 12CBDC 8011DC2C 94A60000 */  lhu        $a2, 0x0($a1)
    /* 12CBE0 8011DC30 00E02025 */  or         $a0, $a3, $zero
    /* 12CBE4 8011DC34 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* 12CBE8 8011DC38 0006C343 */  sra        $t8, $a2, 13
    /* 12CBEC 8011DC3C 0018C8C0 */  sll        $t9, $t8, 3
    /* 12CBF0 8011DC40 01191821 */  addu       $v1, $t0, $t9
    /* 12CBF4 8011DC44 00067083 */  sra        $t6, $a2, 2
    /* 12CBF8 8011DC48 8C780000 */  lw         $t8, 0x0($v1)
    /* 12CBFC 8011DC4C 31CF07FF */  andi       $t7, $t6, 0x7FF
    /* 12CC00 8011DC50 8C6E0004 */  lw         $t6, 0x4($v1)
    /* 12CC04 8011DC54 030FC804 */  sllv       $t9, $t7, $t8
    /* 12CC08 8011DC58 01D97821 */  addu       $t7, $t6, $t9
    /* 12CC0C 8011DC5C 000FC0C3 */  sra        $t8, $t7, 3
    /* 12CC10 8011DC60 44982000 */  mtc1       $t8, $f4
    /* 12CC14 8011DC64 852E0014 */  lh         $t6, 0x14($t1)
    /* 12CC18 8011DC68 240F0001 */  addiu      $t7, $zero, 0x1
    /* 12CC1C 8011DC6C 468021A1 */  cvt.d.w    $f6, $f4
    /* 12CC20 8011DC70 448E8000 */  mtc1       $t6, $f16
    /* 12CC24 8011DC74 00000000 */  nop
    /* 12CC28 8011DC78 468084A1 */  cvt.d.w    $f18, $f16
    /* 12CC2C 8011DC7C 46223203 */  div.d      $f8, $f6, $f2
    /* 12CC30 8011DC80 46280281 */  sub.d      $f10, $f0, $f8
    /* 12CC34 8011DC84 46325102 */  mul.d      $f4, $f10, $f18
    /* 12CC38 8011DC88 4459F800 */  cfc1       $t9, $31
    /* 12CC3C 8011DC8C 44CFF800 */  ctc1       $t7, $31
    /* 12CC40 8011DC90 00000000 */  nop
    /* 12CC44 8011DC94 462021A4 */  cvt.w.d    $f6, $f4
    /* 12CC48 8011DC98 444FF800 */  cfc1       $t7, $31
    /* 12CC4C 8011DC9C 00000000 */  nop
    /* 12CC50 8011DCA0 31EF0078 */  andi       $t7, $t7, 0x78
    /* 12CC54 8011DCA4 51E00014 */  beql       $t7, $zero, .L8011DCF8_12CCA8
    /* 12CC58 8011DCA8 440F3000 */   mfc1      $t7, $f6
    /* 12CC5C 8011DCAC 44813800 */  mtc1       $at, $f7
    /* 12CC60 8011DCB0 44803000 */  mtc1       $zero, $f6
    /* 12CC64 8011DCB4 240F0001 */  addiu      $t7, $zero, 0x1
    /* 12CC68 8011DCB8 46262181 */  sub.d      $f6, $f4, $f6
    /* 12CC6C 8011DCBC 44CFF800 */  ctc1       $t7, $31
    /* 12CC70 8011DCC0 00000000 */  nop
    /* 12CC74 8011DCC4 462031A4 */  cvt.w.d    $f6, $f6
    /* 12CC78 8011DCC8 444FF800 */  cfc1       $t7, $31
    /* 12CC7C 8011DCCC 00000000 */  nop
    /* 12CC80 8011DCD0 31EF0078 */  andi       $t7, $t7, 0x78
    /* 12CC84 8011DCD4 15E00005 */  bnez       $t7, .L8011DCEC_12CC9C
    /* 12CC88 8011DCD8 00000000 */   nop
    /* 12CC8C 8011DCDC 440F3000 */  mfc1       $t7, $f6
    /* 12CC90 8011DCE0 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 12CC94 8011DCE4 10000007 */  b          .L8011DD04_12CCB4
    /* 12CC98 8011DCE8 01E17825 */   or        $t7, $t7, $at
  .L8011DCEC_12CC9C:
    /* 12CC9C 8011DCEC 10000005 */  b          .L8011DD04_12CCB4
    /* 12CCA0 8011DCF0 240FFFFF */   addiu     $t7, $zero, -0x1
    /* 12CCA4 8011DCF4 440F3000 */  mfc1       $t7, $f6
  .L8011DCF8_12CCA8:
    /* 12CCA8 8011DCF8 00000000 */  nop
    /* 12CCAC 8011DCFC 05E0FFFB */  bltz       $t7, .L8011DCEC_12CC9C
    /* 12CCB0 8011DD00 00000000 */   nop
  .L8011DD04_12CCB4:
    /* 12CCB4 8011DD04 44D9F800 */  ctc1       $t9, $31
    /* 12CCB8 8011DD08 A4AF0000 */  sh         $t7, 0x0($a1)
    /* 12CCBC 8011DD0C 24A50002 */  addiu      $a1, $a1, 0x2
    /* 12CCC0 8011DD10 14E0FFC6 */  bnez       $a3, .L8011DC2C_12CBDC
    /* 12CCC4 8011DD14 24E7FFFF */   addiu     $a3, $a3, -0x1
    /* 12CCC8 8011DD18 85660000 */  lh         $a2, 0x0($t3)
    /* 12CCCC 8011DD1C 85A20000 */  lh         $v0, 0x0($t5)
  .L8011DD20_12CCD0:
    /* 12CCD0 8011DD20 3C058016 */  lui        $a1, %hi(D_8015EB60)
    /* 12CCD4 8011DD24 24A5EB60 */  addiu      $a1, $a1, %lo(D_8015EB60)
    /* 12CCD8 8011DD28 00A6C021 */  addu       $t8, $a1, $a2
    /* 12CCDC 8011DD2C A3020000 */  sb         $v0, 0x0($t8)
    /* 12CCE0 8011DD30 24CE0001 */  addiu      $t6, $a2, 0x1
    /* 12CCE4 8011DD34 A56E0000 */  sh         $t6, 0x0($t3)
    /* 12CCE8 8011DD38 85790000 */  lh         $t9, 0x0($t3)
    /* 12CCEC 8011DD3C 240400FF */  addiu      $a0, $zero, 0xFF
    /* 12CCF0 8011DD40 2B210008 */  slti       $at, $t9, 0x8
    /* 12CCF4 8011DD44 54200003 */  bnel       $at, $zero, .L8011DD54_12CD04
    /* 12CCF8 8011DD48 A5A40000 */   sh        $a0, 0x0($t5)
    /* 12CCFC 8011DD4C A5600000 */  sh         $zero, 0x0($t3)
    /* 12CD00 8011DD50 A5A40000 */  sh         $a0, 0x0($t5)
  .L8011DD54_12CD04:
    /* 12CD04 8011DD54 3C088016 */  lui        $t0, %hi(D_8015EB6A)
    /* 12CD08 8011DD58 2508EB6A */  addiu      $t0, $t0, %lo(D_8015EB6A)
    /* 12CD0C 8011DD5C 850F0000 */  lh         $t7, 0x0($t0)
    /* 12CD10 8011DD60 3C058016 */  lui        $a1, %hi(D_8015EB60)
    /* 12CD14 8011DD64 3C0A8026 */  lui        $t2, %hi(buildingSpecs)
    /* 12CD18 8011DD68 3C0D8016 */  lui        $t5, %hi(D_8015EB6E)
    /* 12CD1C 8011DD6C 25ADEB6E */  addiu      $t5, $t5, %lo(D_8015EB6E)
    /* 12CD20 8011DD70 254A9090 */  addiu      $t2, $t2, %lo(buildingSpecs)
    /* 12CD24 8011DD74 24A5EB60 */  addiu      $a1, $a1, %lo(D_8015EB60)
    /* 12CD28 8011DD78 11E00035 */  beqz       $t7, .L8011DE50_12CE00
    /* 12CD2C 8011DD7C 240400FF */   addiu     $a0, $zero, 0xFF
    /* 12CD30 8011DD80 85980000 */  lh         $t8, 0x0($t4)
    /* 12CD34 8011DD84 3C0E8016 */  lui        $t6, %hi(D_8015EB70)
    /* 12CD38 8011DD88 57000032 */  bnel       $t8, $zero, .L8011DE54_12CE04
    /* 12CD3C 8011DD8C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 12CD40 8011DD90 91CEEB70 */  lbu        $t6, %lo(D_8015EB70)($t6)
    /* 12CD44 8011DD94 85660000 */  lh         $a2, 0x0($t3)
    /* 12CD48 8011DD98 A5AE0000 */  sh         $t6, 0x0($t5)
    /* 12CD4C 8011DD9C 00C01025 */  or         $v0, $a2, $zero
    /* 12CD50 8011DDA0 00A2C821 */  addu       $t9, $a1, $v0
  .L8011DDA4_12CD54:
    /* 12CD54 8011DDA4 93230000 */  lbu        $v1, 0x0($t9)
    /* 12CD58 8011DDA8 1083000D */  beq        $a0, $v1, .L8011DDE0_12CD90
    /* 12CD5C 8011DDAC 00037940 */   sll       $t7, $v1, 5
    /* 12CD60 8011DDB0 014FC021 */  addu       $t8, $t2, $t7
    /* 12CD64 8011DDB4 930E001A */  lbu        $t6, 0x1A($t8)
    /* 12CD68 8011DDB8 31D90010 */  andi       $t9, $t6, 0x10
    /* 12CD6C 8011DDBC 53200009 */  beql       $t9, $zero, .L8011DDE4_12CD94
    /* 12CD70 8011DDC0 A5620000 */   sh        $v0, 0x0($t3)
    /* 12CD74 8011DDC4 24420001 */  addiu      $v0, $v0, 0x1
    /* 12CD78 8011DDC8 28410008 */  slti       $at, $v0, 0x8
    /* 12CD7C 8011DDCC 14200002 */  bnez       $at, .L8011DDD8_12CD88
    /* 12CD80 8011DDD0 00000000 */   nop
    /* 12CD84 8011DDD4 00001025 */  or         $v0, $zero, $zero
  .L8011DDD8_12CD88:
    /* 12CD88 8011DDD8 5446FFF2 */  bnel       $v0, $a2, .L8011DDA4_12CD54
    /* 12CD8C 8011DDDC 00A2C821 */   addu      $t9, $a1, $v0
  .L8011DDE0_12CD90:
    /* 12CD90 8011DDE0 A5620000 */  sh         $v0, 0x0($t3)
  .L8011DDE4_12CD94:
    /* 12CD94 8011DDE4 85780000 */  lh         $t8, 0x0($t3)
    /* 12CD98 8011DDE8 91A40001 */  lbu        $a0, 0x1($t5)
    /* 12CD9C 8011DDEC 00187340 */  sll        $t6, $t8, 13
    /* 12CDA0 8011DDF0 03EE2821 */  addu       $a1, $ra, $t6
    /* 12CDA4 8011DDF4 0C04753F */  jal        func_8011D4FC_12C4AC
    /* 12CDA8 8011DDF8 00000000 */   nop
    /* 12CDAC 8011DDFC 3C088016 */  lui        $t0, %hi(D_8015EB6A)
    /* 12CDB0 8011DE00 3C0C8016 */  lui        $t4, %hi(D_8015EB6C)
    /* 12CDB4 8011DE04 3C028016 */  lui        $v0, %hi(D_8015EB71)
    /* 12CDB8 8011DE08 3C038016 */  lui        $v1, %hi(D_8015EB77)
    /* 12CDBC 8011DE0C 258CEB6C */  addiu      $t4, $t4, %lo(D_8015EB6C)
    /* 12CDC0 8011DE10 2508EB6A */  addiu      $t0, $t0, %lo(D_8015EB6A)
    /* 12CDC4 8011DE14 2463EB77 */  addiu      $v1, $v1, %lo(D_8015EB77)
    /* 12CDC8 8011DE18 2442EB71 */  addiu      $v0, $v0, %lo(D_8015EB71)
  .L8011DE1C_12CDCC:
    /* 12CDCC 8011DE1C 90590000 */  lbu        $t9, 0x0($v0)
    /* 12CDD0 8011DE20 0043202B */  sltu       $a0, $v0, $v1
    /* 12CDD4 8011DE24 24420001 */  addiu      $v0, $v0, 0x1
    /* 12CDD8 8011DE28 1480FFFC */  bnez       $a0, .L8011DE1C_12CDCC
    /* 12CDDC 8011DE2C A059FFFE */   sb        $t9, -0x2($v0)
    /* 12CDE0 8011DE30 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 12CDE4 8011DE34 3C018016 */  lui        $at, %hi(D_8015EB77)
    /* 12CDE8 8011DE38 A02FEB77 */  sb         $t7, %lo(D_8015EB77)($at)
    /* 12CDEC 8011DE3C 850E0000 */  lh         $t6, 0x0($t0)
    /* 12CDF0 8011DE40 24180002 */  addiu      $t8, $zero, 0x2
    /* 12CDF4 8011DE44 A5980000 */  sh         $t8, 0x0($t4)
    /* 12CDF8 8011DE48 25D9FFFF */  addiu      $t9, $t6, -0x1
    /* 12CDFC 8011DE4C A5190000 */  sh         $t9, 0x0($t0)
  .L8011DE50_12CE00:
    /* 12CE00 8011DE50 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8011DE54_12CE04:
    /* 12CE04 8011DE54 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 12CE08 8011DE58 03E00008 */  jr         $ra
    /* 12CE0C 8011DE5C 00000000 */   nop
endlabel func_8011DBA0_12CB50
