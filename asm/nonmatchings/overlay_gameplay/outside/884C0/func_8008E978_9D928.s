nonmatching func_8008E978_9D928, 0x1A8

glabel func_8008E978_9D928
    /* 9D928 8008E978 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 9D92C 8008E97C AFA40030 */  sw         $a0, 0x30($sp)
    /* 9D930 8008E980 93AE0033 */  lbu        $t6, 0x33($sp)
    /* 9D934 8008E984 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 9D938 8008E988 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 9D93C 8008E98C 000E7880 */  sll        $t7, $t6, 2
    /* 9D940 8008E990 01EE7821 */  addu       $t7, $t7, $t6
    /* 9D944 8008E994 000F7900 */  sll        $t7, $t7, 4
    /* 9D948 8008E998 01F81821 */  addu       $v1, $t7, $t8
    /* 9D94C 8008E99C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 9D950 8008E9A0 AFA50034 */  sw         $a1, 0x34($sp)
    /* 9D954 8008E9A4 84650004 */  lh         $a1, 0x4($v1)
    /* 9D958 8008E9A8 84640000 */  lh         $a0, 0x0($v1)
    /* 9D95C 8008E9AC AFA30020 */  sw         $v1, 0x20($sp)
    /* 9D960 8008E9B0 27A6002A */  addiu      $a2, $sp, 0x2A
    /* 9D964 8008E9B4 0C0479BF */  jal        func_8011E6FC_12D6AC
    /* 9D968 8008E9B8 AFA00024 */   sw        $zero, 0x24($sp)
    /* 9D96C 8008E9BC 3C048022 */  lui        $a0, %hi(D_80222A70)
    /* 9D970 8008E9C0 87A6002A */  lh         $a2, 0x2A($sp)
    /* 9D974 8008E9C4 8C842A70 */  lw         $a0, %lo(D_80222A70)($a0)
    /* 9D978 8008E9C8 8FA30020 */  lw         $v1, 0x20($sp)
    /* 9D97C 8008E9CC 8FA50034 */  lw         $a1, 0x34($sp)
    /* 9D980 8008E9D0 00C4082A */  slt        $at, $a2, $a0
    /* 9D984 8008E9D4 10200004 */  beqz       $at, .L8008E9E8_9D998
    /* 9D988 8008E9D8 8FA70024 */   lw        $a3, 0x24($sp)
    /* 9D98C 8008E9DC 00043400 */  sll        $a2, $a0, 16
    /* 9D990 8008E9E0 0006CC03 */  sra        $t9, $a2, 16
    /* 9D994 8008E9E4 03203025 */  or         $a2, $t9, $zero
  .L8008E9E8_9D998:
    /* 9D998 8008E9E8 8C680020 */  lw         $t0, 0x20($v1)
    /* 9D99C 8008E9EC 00A62821 */  addu       $a1, $a1, $a2
    /* 9D9A0 8008E9F0 A7A6002A */  sh         $a2, 0x2A($sp)
    /* 9D9A4 8008E9F4 00084900 */  sll        $t1, $t0, 4
    /* 9D9A8 8008E9F8 0521000B */  bgez       $t1, .L8008EA28_9D9D8
    /* 9D9AC 8008E9FC 3C028005 */   lui       $v0, %hi(D_80052B34)
    /* 9D9B0 8008EA00 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 9D9B4 8008EA04 94470020 */  lhu        $a3, 0x20($v0)
    /* 9D9B8 8008EA08 30EA0002 */  andi       $t2, $a3, 0x2
    /* 9D9BC 8008EA0C 11400006 */  beqz       $t2, .L8008EA28_9D9D8
    /* 9D9C0 8008EA10 01403825 */   or        $a3, $t2, $zero
    /* 9D9C4 8008EA14 844B0002 */  lh         $t3, 0x2($v0)
    /* 9D9C8 8008EA18 008B082A */  slt        $at, $a0, $t3
    /* 9D9CC 8008EA1C 14200002 */  bnez       $at, .L8008EA28_9D9D8
    /* 9D9D0 8008EA20 00000000 */   nop
    /* 9D9D4 8008EA24 00003825 */  or         $a3, $zero, $zero
  .L8008EA28_9D9D8:
    /* 9D9D8 8008EA28 10E00003 */  beqz       $a3, .L8008EA38_9D9E8
    /* 9D9DC 8008EA2C 3C0C8005 */   lui       $t4, %hi(D_80052B34)
    /* 9D9E0 8008EA30 8D8C2B34 */  lw         $t4, %lo(D_80052B34)($t4)
    /* 9D9E4 8008EA34 85850002 */  lh         $a1, 0x2($t4)
  .L8008EA38_9D9E8:
    /* 9D9E8 8008EA38 84620002 */  lh         $v0, 0x2($v1)
    /* 9D9EC 8008EA3C 0045082A */  slt        $at, $v0, $a1
    /* 9D9F0 8008EA40 50200006 */  beql       $at, $zero, .L8008EA5C_9DA0C
    /* 9D9F4 8008EA44 00A2082A */   slt       $at, $a1, $v0
    /* 9D9F8 8008EA48 846D000A */  lh         $t5, 0xA($v1)
    /* 9D9FC 8008EA4C 84620002 */  lh         $v0, 0x2($v1)
    /* 9DA00 8008EA50 25AEFE0C */  addiu      $t6, $t5, -0x1F4
    /* 9DA04 8008EA54 A46E000A */  sh         $t6, 0xA($v1)
    /* 9DA08 8008EA58 00A2082A */  slt        $at, $a1, $v0
  .L8008EA5C_9DA0C:
    /* 9DA0C 8008EA5C 50200005 */  beql       $at, $zero, .L8008EA74_9DA24
    /* 9DA10 8008EA60 8479000A */   lh        $t9, 0xA($v1)
    /* 9DA14 8008EA64 846F000A */  lh         $t7, 0xA($v1)
    /* 9DA18 8008EA68 25F801F4 */  addiu      $t8, $t7, 0x1F4
    /* 9DA1C 8008EA6C A478000A */  sh         $t8, 0xA($v1)
    /* 9DA20 8008EA70 8479000A */  lh         $t9, 0xA($v1)
  .L8008EA74_9DA24:
    /* 9DA24 8008EA74 3C018014 */  lui        $at, %hi(D_80141EE0)
    /* 9DA28 8008EA78 D4281EE0 */  ldc1       $f8, %lo(D_80141EE0)($at)
    /* 9DA2C 8008EA7C 44992000 */  mtc1       $t9, $f4
    /* 9DA30 8008EA80 84620012 */  lh         $v0, 0x12($v1)
    /* 9DA34 8008EA84 468021A1 */  cvt.d.w    $f6, $f4
    /* 9DA38 8008EA88 00022023 */  negu       $a0, $v0
    /* 9DA3C 8008EA8C 0082082A */  slt        $at, $a0, $v0
    /* 9DA40 8008EA90 00802825 */  or         $a1, $a0, $zero
    /* 9DA44 8008EA94 46283282 */  mul.d      $f10, $f6, $f8
    /* 9DA48 8008EA98 4620540D */  trunc.w.d  $f16, $f10
    /* 9DA4C 8008EA9C 44098000 */  mfc1       $t1, $f16
    /* 9DA50 8008EAA0 10200003 */  beqz       $at, .L8008EAB0_9DA60
    /* 9DA54 8008EAA4 A469000A */   sh        $t1, 0xA($v1)
    /* 9DA58 8008EAA8 10000001 */  b          .L8008EAB0_9DA60
    /* 9DA5C 8008EAAC 00402825 */   or        $a1, $v0, $zero
  .L8008EAB0_9DA60:
    /* 9DA60 8008EAB0 28A10301 */  slti       $at, $a1, 0x301
    /* 9DA64 8008EAB4 50200003 */  beql       $at, $zero, .L8008EAC4_9DA74
    /* 9DA68 8008EAB8 9464000A */   lhu       $a0, 0xA($v1)
    /* 9DA6C 8008EABC 24050300 */  addiu      $a1, $zero, 0x300
    /* 9DA70 8008EAC0 9464000A */  lhu        $a0, 0xA($v1)
  .L8008EAC4_9DA74:
    /* 9DA74 8008EAC4 AFA30020 */  sw         $v1, 0x20($sp)
    /* 9DA78 8008EAC8 0C007660 */  jal        sins
    /* 9DA7C 8008EACC AFA5002C */   sw        $a1, 0x2C($sp)
    /* 9DA80 8008EAD0 44829000 */  mtc1       $v0, $f18
    /* 9DA84 8008EAD4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 9DA88 8008EAD8 44814800 */  mtc1       $at, $f9
    /* 9DA8C 8008EADC 46809120 */  cvt.s.w    $f4, $f18
    /* 9DA90 8008EAE0 44804000 */  mtc1       $zero, $f8
    /* 9DA94 8008EAE4 8FA5002C */  lw         $a1, 0x2C($sp)
    /* 9DA98 8008EAE8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 9DA9C 8008EAEC 8FA30020 */  lw         $v1, 0x20($sp)
    /* 9DAA0 8008EAF0 44858000 */  mtc1       $a1, $f16
    /* 9DAA4 8008EAF4 460021A1 */  cvt.d.s    $f6, $f4
    /* 9DAA8 8008EAF8 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 9DAAC 8008EAFC 46283283 */  div.d      $f10, $f6, $f8
    /* 9DAB0 8008EB00 468084A1 */  cvt.d.w    $f18, $f16
    /* 9DAB4 8008EB04 46325102 */  mul.d      $f4, $f10, $f18
    /* 9DAB8 8008EB08 4620218D */  trunc.w.d  $f6, $f4
    /* 9DABC 8008EB0C 440D3000 */  mfc1       $t5, $f6
    /* 9DAC0 8008EB10 00000000 */  nop
    /* 9DAC4 8008EB14 000D7023 */  negu       $t6, $t5
    /* 9DAC8 8008EB18 03E00008 */  jr         $ra
    /* 9DACC 8008EB1C A46E0010 */   sh        $t6, 0x10($v1)
endlabel func_8008E978_9D928
