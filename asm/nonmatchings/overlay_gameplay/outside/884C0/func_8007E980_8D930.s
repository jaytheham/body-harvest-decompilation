nonmatching func_8007E980_8D930, 0x1F4

glabel func_8007E980_8D930
    /* 8D930 8007E980 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 8D934 8007E984 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 8D938 8007E988 AFA5002C */  sw         $a1, 0x2C($sp)
    /* 8D93C 8007E98C AFA60030 */  sw         $a2, 0x30($sp)
    /* 8D940 8007E990 9082001A */  lbu        $v0, 0x1A($a0)
    /* 8D944 8007E994 87AF0032 */  lh         $t7, 0x32($sp)
    /* 8D948 8007E998 87AE002E */  lh         $t6, 0x2E($sp)
    /* 8D94C 8007E99C 28410003 */  slti       $at, $v0, 0x3
    /* 8D950 8007E9A0 14200004 */  bnez       $at, .L8007E9B4_8D964
    /* 8D954 8007E9A4 01CFC021 */   addu      $t8, $t6, $t7
    /* 8D958 8007E9A8 24010020 */  addiu      $at, $zero, 0x20
    /* 8D95C 8007E9AC 14410012 */  bne        $v0, $at, .L8007E9F8_8D9A8
    /* 8D960 8007E9B0 87AD002E */   lh        $t5, 0x2E($sp)
  .L8007E9B4_8D964:
    /* 8D964 8007E9B4 07010003 */  bgez       $t8, .L8007E9C4_8D974
    /* 8D968 8007E9B8 0018C843 */   sra       $t9, $t8, 1
    /* 8D96C 8007E9BC 27010001 */  addiu      $at, $t8, 0x1
    /* 8D970 8007E9C0 0001C843 */  sra        $t9, $at, 1
  .L8007E9C4_8D974:
    /* 8D974 8007E9C4 A499000E */  sh         $t9, 0xE($a0)
    /* 8D978 8007E9C8 87A9002E */  lh         $t1, 0x2E($sp)
    /* 8D97C 8007E9CC 87A80032 */  lh         $t0, 0x32($sp)
    /* 8D980 8007E9D0 0109082A */  slt        $at, $t0, $t1
    /* 8D984 8007E9D4 54200006 */  bnel       $at, $zero, .L8007E9F0_8D9A0
    /* 8D988 8007E9D8 848C000E */   lh        $t4, 0xE($a0)
    /* 8D98C 8007E9DC 848A000E */  lh         $t2, 0xE($a0)
    /* 8D990 8007E9E0 34018000 */  ori        $at, $zero, 0x8000
    /* 8D994 8007E9E4 01415821 */  addu       $t3, $t2, $at
    /* 8D998 8007E9E8 A48B000E */  sh         $t3, 0xE($a0)
    /* 8D99C 8007E9EC 848C000E */  lh         $t4, 0xE($a0)
  .L8007E9F0_8D9A0:
    /* 8D9A0 8007E9F0 1000005C */  b          .L8007EB64_8DB14
    /* 8D9A4 8007E9F4 A48C0006 */   sh        $t4, 0x6($a0)
  .L8007E9F8_8D9A8:
    /* 8D9A8 8007E9F8 8482000E */  lh         $v0, 0xE($a0)
    /* 8D9AC 8007E9FC 87B80032 */  lh         $t8, 0x32($sp)
    /* 8D9B0 8007EA00 004D1823 */  subu       $v1, $v0, $t5
    /* 8D9B4 8007EA04 00037400 */  sll        $t6, $v1, 16
    /* 8D9B8 8007EA08 000E7C03 */  sra        $t7, $t6, 16
    /* 8D9BC 8007EA0C 000F2823 */  negu       $a1, $t7
    /* 8D9C0 8007EA10 03023023 */  subu       $a2, $t8, $v0
    /* 8D9C4 8007EA14 0006CC00 */  sll        $t9, $a2, 16
    /* 8D9C8 8007EA18 00AF082A */  slt        $at, $a1, $t7
    /* 8D9CC 8007EA1C 01E01825 */  or         $v1, $t7, $zero
    /* 8D9D0 8007EA20 10200003 */  beqz       $at, .L8007EA30_8D9E0
    /* 8D9D4 8007EA24 00193403 */   sra       $a2, $t9, 16
    /* 8D9D8 8007EA28 10000002 */  b          .L8007EA34_8D9E4
    /* 8D9DC 8007EA2C 01E03825 */   or        $a3, $t7, $zero
  .L8007EA30_8D9E0:
    /* 8D9E0 8007EA30 00A03825 */  or         $a3, $a1, $zero
  .L8007EA34_8D9E4:
    /* 8D9E4 8007EA34 00062823 */  negu       $a1, $a2
    /* 8D9E8 8007EA38 00A6082A */  slt        $at, $a1, $a2
    /* 8D9EC 8007EA3C 10200003 */  beqz       $at, .L8007EA4C_8D9FC
    /* 8D9F0 8007EA40 00A01025 */   or        $v0, $a1, $zero
    /* 8D9F4 8007EA44 10000001 */  b          .L8007EA4C_8D9FC
    /* 8D9F8 8007EA48 00C01025 */   or        $v0, $a2, $zero
  .L8007EA4C_8D9FC:
    /* 8D9FC 8007EA4C 00E2082A */  slt        $at, $a3, $v0
    /* 8DA00 8007EA50 10200006 */  beqz       $at, .L8007EA6C_8DA1C
    /* 8DA04 8007EA54 87A50032 */   lh        $a1, 0x32($sp)
    /* 8DA08 8007EA58 00031400 */  sll        $v0, $v1, 16
    /* 8DA0C 8007EA5C 00024C03 */  sra        $t1, $v0, 16
    /* 8DA10 8007EA60 87A5002E */  lh         $a1, 0x2E($sp)
    /* 8DA14 8007EA64 10000004 */  b          .L8007EA78_8DA28
    /* 8DA18 8007EA68 01201025 */   or        $v0, $t1, $zero
  .L8007EA6C_8DA1C:
    /* 8DA1C 8007EA6C 00061400 */  sll        $v0, $a2, 16
    /* 8DA20 8007EA70 00025403 */  sra        $t2, $v0, 16
    /* 8DA24 8007EA74 01401025 */  or         $v0, $t2, $zero
  .L8007EA78_8DA28:
    /* 8DA28 8007EA78 04430007 */  bgezl      $v0, .L8007EA98_8DA48
    /* 8DA2C 8007EA7C A4800012 */   sh        $zero, 0x12($a0)
    /* 8DA30 8007EA80 AFA40028 */  sw         $a0, 0x28($sp)
    /* 8DA34 8007EA84 0C01F9CD */  jal        func_8007E734_8D6E4
    /* 8DA38 8007EA88 A7A5001E */   sh        $a1, 0x1E($sp)
    /* 8DA3C 8007EA8C 8FA40028 */  lw         $a0, 0x28($sp)
    /* 8DA40 8007EA90 87A5001E */  lh         $a1, 0x1E($sp)
    /* 8DA44 8007EA94 A4800012 */  sh         $zero, 0x12($a0)
  .L8007EA98_8DA48:
    /* 8DA48 8007EA98 87AB002E */  lh         $t3, 0x2E($sp)
    /* 8DA4C 8007EA9C 54AB0005 */  bnel       $a1, $t3, .L8007EAB4_8DA64
    /* 8DA50 8007EAA0 24AD4800 */   addiu     $t5, $a1, 0x4800
    /* 8DA54 8007EAA4 24ACB800 */  addiu      $t4, $a1, -0x4800
    /* 8DA58 8007EAA8 10000003 */  b          .L8007EAB8_8DA68
    /* 8DA5C 8007EAAC A48C002A */   sh        $t4, 0x2A($a0)
    /* 8DA60 8007EAB0 24AD4800 */  addiu      $t5, $a1, 0x4800
  .L8007EAB4_8DA64:
    /* 8DA64 8007EAB4 A48D002A */  sh         $t5, 0x2A($a0)
  .L8007EAB8_8DA68:
    /* 8DA68 8007EAB8 9098001A */  lbu        $t8, 0x1A($a0)
    /* 8DA6C 8007EABC 908E0047 */  lbu        $t6, 0x47($a0)
    /* 8DA70 8007EAC0 3C058025 */  lui        $a1, %hi(D_802566C2)
    /* 8DA74 8007EAC4 0018C880 */  sll        $t9, $t8, 2
    /* 8DA78 8007EAC8 0338C823 */  subu       $t9, $t9, $t8
    /* 8DA7C 8007EACC 0019C880 */  sll        $t9, $t9, 2
    /* 8DA80 8007EAD0 0338C821 */  addu       $t9, $t9, $t8
    /* 8DA84 8007EAD4 0019C8C0 */  sll        $t9, $t9, 3
    /* 8DA88 8007EAD8 35CF0002 */  ori        $t7, $t6, 0x2
    /* 8DA8C 8007EADC A08F0047 */  sb         $t7, 0x47($a0)
    /* 8DA90 8007EAE0 00B92821 */  addu       $a1, $a1, $t9
    /* 8DA94 8007EAE4 84A566C2 */  lh         $a1, %lo(D_802566C2)($a1)
    /* 8DA98 8007EAE8 50A0001D */  beql       $a1, $zero, .L8007EB60_8DB10
    /* 8DA9C 8007EAEC 240E0001 */   addiu     $t6, $zero, 0x1
    /* 8DAA0 8007EAF0 8488002A */  lh         $t0, 0x2A($a0)
    /* 8DAA4 8007EAF4 8489000E */  lh         $t1, 0xE($a0)
    /* 8DAA8 8007EAF8 01091823 */  subu       $v1, $t0, $t1
    /* 8DAAC 8007EAFC 00035400 */  sll        $t2, $v1, 16
    /* 8DAB0 8007EB00 000A5C03 */  sra        $t3, $t2, 16
    /* 8DAB4 8007EB04 000B3023 */  negu       $a2, $t3
    /* 8DAB8 8007EB08 00CB082A */  slt        $at, $a2, $t3
    /* 8DABC 8007EB0C 10200003 */  beqz       $at, .L8007EB1C_8DACC
    /* 8DAC0 8007EB10 01601825 */   or        $v1, $t3, $zero
    /* 8DAC4 8007EB14 10000002 */  b          .L8007EB20_8DAD0
    /* 8DAC8 8007EB18 00601025 */   or        $v0, $v1, $zero
  .L8007EB1C_8DACC:
    /* 8DACC 8007EB1C 00C01025 */  or         $v0, $a2, $zero
  .L8007EB20_8DAD0:
    /* 8DAD0 8007EB20 0045001A */  div        $zero, $v0, $a1
    /* 8DAD4 8007EB24 00006012 */  mflo       $t4
    /* 8DAD8 8007EB28 258D001E */  addiu      $t5, $t4, 0x1E
    /* 8DADC 8007EB2C 14A00002 */  bnez       $a1, .L8007EB38_8DAE8
    /* 8DAE0 8007EB30 00000000 */   nop
    /* 8DAE4 8007EB34 0007000D */  break      7
  .L8007EB38_8DAE8:
    /* 8DAE8 8007EB38 2401FFFF */  addiu      $at, $zero, -0x1
    /* 8DAEC 8007EB3C 14A10004 */  bne        $a1, $at, .L8007EB50_8DB00
    /* 8DAF0 8007EB40 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 8DAF4 8007EB44 14410002 */  bne        $v0, $at, .L8007EB50_8DB00
    /* 8DAF8 8007EB48 00000000 */   nop
    /* 8DAFC 8007EB4C 0006000D */  break      6
  .L8007EB50_8DB00:
    /* 8DB00 8007EB50 A48D0034 */  sh         $t5, 0x34($a0)
    /* 8DB04 8007EB54 10000004 */  b          .L8007EB68_8DB18
    /* 8DB08 8007EB58 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 8DB0C 8007EB5C 240E0001 */  addiu      $t6, $zero, 0x1
  .L8007EB60_8DB10:
    /* 8DB10 8007EB60 A48E0034 */  sh         $t6, 0x34($a0)
  .L8007EB64_8DB14:
    /* 8DB14 8007EB64 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8007EB68_8DB18:
    /* 8DB18 8007EB68 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 8DB1C 8007EB6C 03E00008 */  jr         $ra
    /* 8DB20 8007EB70 00000000 */   nop
endlabel func_8007E980_8D930
