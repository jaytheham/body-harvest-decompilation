nonmatching func_802DB8D8_2BDD08, 0x550

glabel func_802DB8D8_2BDD08
    /* 2BDD08 802DB8D8 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 2BDD0C 802DB8DC AFA40068 */  sw         $a0, 0x68($sp)
    /* 2BDD10 802DB8E0 93A4006B */  lbu        $a0, 0x6B($sp)
    /* 2BDD14 802DB8E4 00077400 */  sll        $t6, $a3, 16
    /* 2BDD18 802DB8E8 000E7C03 */  sra        $t7, $t6, 16
    /* 2BDD1C 802DB8EC 0004C880 */  sll        $t9, $a0, 2
    /* 2BDD20 802DB8F0 3C098005 */  lui        $t1, %hi(alienInstances)
    /* 2BDD24 802DB8F4 3C0D8015 */  lui        $t5, %hi(D_8014DD50)
    /* 2BDD28 802DB8F8 0324C821 */  addu       $t9, $t9, $a0
    /* 2BDD2C 802DB8FC AFB00018 */  sw         $s0, 0x18($sp)
    /* 2BDD30 802DB900 0019C900 */  sll        $t9, $t9, 4
    /* 2BDD34 802DB904 25298198 */  addiu      $t1, $t1, %lo(alienInstances)
    /* 2BDD38 802DB908 25ADDD50 */  addiu      $t5, $t5, %lo(D_8014DD50)
    /* 2BDD3C 802DB90C 000F6100 */  sll        $t4, $t7, 4
    /* 2BDD40 802DB910 03298021 */  addu       $s0, $t9, $t1
    /* 2BDD44 802DB914 018D4021 */  addu       $t0, $t4, $t5
    /* 2BDD48 802DB918 860A0048 */  lh         $t2, 0x48($s0)
    /* 2BDD4C 802DB91C 920B001A */  lbu        $t3, 0x1A($s0)
    /* 2BDD50 802DB920 950E000A */  lhu        $t6, 0xA($t0)
    /* 2BDD54 802DB924 950F0008 */  lhu        $t7, 0x8($t0)
    /* 2BDD58 802DB928 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2BDD5C 802DB92C AFA5006C */  sw         $a1, 0x6C($sp)
    /* 2BDD60 802DB930 AFA60070 */  sw         $a2, 0x70($sp)
    /* 2BDD64 802DB934 AFA70074 */  sw         $a3, 0x74($sp)
    /* 2BDD68 802DB938 AFA00048 */  sw         $zero, 0x48($sp)
    /* 2BDD6C 802DB93C AFA00044 */  sw         $zero, 0x44($sp)
    /* 2BDD70 802DB940 2405001E */  addiu      $a1, $zero, 0x1E
    /* 2BDD74 802DB944 AFA80034 */  sw         $t0, 0x34($sp)
    /* 2BDD78 802DB948 AFAA0064 */  sw         $t2, 0x64($sp)
    /* 2BDD7C 802DB94C A3AB0063 */  sb         $t3, 0x63($sp)
    /* 2BDD80 802DB950 A7AE004E */  sh         $t6, 0x4E($sp)
    /* 2BDD84 802DB954 0C04DD1A */  jal        func_80137468_146418
    /* 2BDD88 802DB958 A7AF004C */   sh        $t7, 0x4C($sp)
    /* 2BDD8C 802DB95C 97A4004C */  lhu        $a0, 0x4C($sp)
    /* 2BDD90 802DB960 0C007654 */  jal        coss
    /* 2BDD94 802DB964 AFA40030 */   sw        $a0, 0x30($sp)
    /* 2BDD98 802DB968 97A4004E */  lhu        $a0, 0x4E($sp)
    /* 2BDD9C 802DB96C A7A20040 */  sh         $v0, 0x40($sp)
    /* 2BDDA0 802DB970 0C007654 */  jal        coss
    /* 2BDDA4 802DB974 AFA4002C */   sw        $a0, 0x2C($sp)
    /* 2BDDA8 802DB978 44823000 */  mtc1       $v0, $f6
    /* 2BDDAC 802DB97C 8FB90064 */  lw         $t9, 0x64($sp)
    /* 2BDDB0 802DB980 87A90040 */  lh         $t1, 0x40($sp)
    /* 2BDDB4 802DB984 46803220 */  cvt.s.w    $f8, $f6
    /* 2BDDB8 802DB988 44992000 */  mtc1       $t9, $f4
    /* 2BDDBC 802DB98C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BDDC0 802DB990 44810800 */  mtc1       $at, $f1
    /* 2BDDC4 802DB994 44800000 */  mtc1       $zero, $f0
    /* 2BDDC8 802DB998 468020A1 */  cvt.d.w    $f2, $f4
    /* 2BDDCC 802DB99C 44892000 */  mtc1       $t1, $f4
    /* 2BDDD0 802DB9A0 860A0010 */  lh         $t2, 0x10($s0)
    /* 2BDDD4 802DB9A4 97A4002E */  lhu        $a0, 0x2E($sp)
    /* 2BDDD8 802DB9A8 460042A1 */  cvt.d.s    $f10, $f8
    /* 2BDDDC 802DB9AC 468021A0 */  cvt.s.w    $f6, $f4
    /* 2BDDE0 802DB9B0 448A2000 */  mtc1       $t2, $f4
    /* 2BDDE4 802DB9B4 F7A20020 */  sdc1       $f2, 0x20($sp)
    /* 2BDDE8 802DB9B8 46205403 */  div.d      $f16, $f10, $f0
    /* 2BDDEC 802DB9BC 46003221 */  cvt.d.s    $f8, $f6
    /* 2BDDF0 802DB9C0 468021A1 */  cvt.d.w    $f6, $f4
    /* 2BDDF4 802DB9C4 46204283 */  div.d      $f10, $f8, $f0
    /* 2BDDF8 802DB9C8 46301482 */  mul.d      $f18, $f2, $f16
    /* 2BDDFC 802DB9CC 00000000 */  nop
    /* 2BDE00 802DB9D0 462A9402 */  mul.d      $f16, $f18, $f10
    /* 2BDE04 802DB9D4 46303200 */  add.d      $f8, $f6, $f16
    /* 2BDE08 802DB9D8 4620448D */  trunc.w.d  $f18, $f8
    /* 2BDE0C 802DB9DC 440C9000 */  mfc1       $t4, $f18
    /* 2BDE10 802DB9E0 0C007660 */  jal        sins
    /* 2BDE14 802DB9E4 A60C0010 */   sh        $t4, 0x10($s0)
    /* 2BDE18 802DB9E8 A7A20042 */  sh         $v0, 0x42($sp)
    /* 2BDE1C 802DB9EC 0C007654 */  jal        coss
    /* 2BDE20 802DB9F0 97A40032 */   lhu       $a0, 0x32($sp)
    /* 2BDE24 802DB9F4 87AD0042 */  lh         $t5, 0x42($sp)
    /* 2BDE28 802DB9F8 44825000 */  mtc1       $v0, $f10
    /* 2BDE2C 802DB9FC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BDE30 802DBA00 448D4000 */  mtc1       $t5, $f8
    /* 2BDE34 802DBA04 46805120 */  cvt.s.w    $f4, $f10
    /* 2BDE38 802DBA08 44810800 */  mtc1       $at, $f1
    /* 2BDE3C 802DBA0C 44800000 */  mtc1       $zero, $f0
    /* 2BDE40 802DBA10 D7A20020 */  ldc1       $f2, 0x20($sp)
    /* 2BDE44 802DBA14 97A40032 */  lhu        $a0, 0x32($sp)
    /* 2BDE48 802DBA18 468044A0 */  cvt.s.w    $f18, $f8
    /* 2BDE4C 802DBA1C 460021A1 */  cvt.d.s    $f6, $f4
    /* 2BDE50 802DBA20 460092A1 */  cvt.d.s    $f10, $f18
    /* 2BDE54 802DBA24 46203403 */  div.d      $f16, $f6, $f0
    /* 2BDE58 802DBA28 46205103 */  div.d      $f4, $f10, $f0
    /* 2BDE5C 802DBA2C 46241182 */  mul.d      $f6, $f2, $f4
    /* 2BDE60 802DBA30 00000000 */  nop
    /* 2BDE64 802DBA34 46268202 */  mul.d      $f8, $f16, $f6
    /* 2BDE68 802DBA38 4620448D */  trunc.w.d  $f18, $f8
    /* 2BDE6C 802DBA3C 0C007660 */  jal        sins
    /* 2BDE70 802DBA40 E7B20054 */   swc1      $f18, 0x54($sp)
    /* 2BDE74 802DBA44 A7A20042 */  sh         $v0, 0x42($sp)
    /* 2BDE78 802DBA48 0C007654 */  jal        coss
    /* 2BDE7C 802DBA4C 97A4002E */   lhu       $a0, 0x2E($sp)
    /* 2BDE80 802DBA50 87AF0042 */  lh         $t7, 0x42($sp)
    /* 2BDE84 802DBA54 44825000 */  mtc1       $v0, $f10
    /* 2BDE88 802DBA58 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BDE8C 802DBA5C 448F4000 */  mtc1       $t7, $f8
    /* 2BDE90 802DBA60 46805120 */  cvt.s.w    $f4, $f10
    /* 2BDE94 802DBA64 44810800 */  mtc1       $at, $f1
    /* 2BDE98 802DBA68 44800000 */  mtc1       $zero, $f0
    /* 2BDE9C 802DBA6C D7A20020 */  ldc1       $f2, 0x20($sp)
    /* 2BDEA0 802DBA70 8FA70054 */  lw         $a3, 0x54($sp)
    /* 2BDEA4 802DBA74 468044A0 */  cvt.s.w    $f18, $f8
    /* 2BDEA8 802DBA78 8FA80034 */  lw         $t0, 0x34($sp)
    /* 2BDEAC 802DBA7C 00073400 */  sll        $a2, $a3, 16
    /* 2BDEB0 802DBA80 0006CC03 */  sra        $t9, $a2, 16
    /* 2BDEB4 802DBA84 03203025 */  or         $a2, $t9, $zero
    /* 2BDEB8 802DBA88 46002421 */  cvt.d.s    $f16, $f4
    /* 2BDEBC 802DBA8C 460092A1 */  cvt.d.s    $f10, $f18
    /* 2BDEC0 802DBA90 46208183 */  div.d      $f6, $f16, $f0
    /* 2BDEC4 802DBA94 02002025 */  or         $a0, $s0, $zero
    /* 2BDEC8 802DBA98 46205103 */  div.d      $f4, $f10, $f0
    /* 2BDECC 802DBA9C 46241402 */  mul.d      $f16, $f2, $f4
    /* 2BDED0 802DBAA0 00000000 */  nop
    /* 2BDED4 802DBAA4 46303202 */  mul.d      $f8, $f6, $f16
    /* 2BDED8 802DBAA8 4620448D */  trunc.w.d  $f18, $f8
    /* 2BDEDC 802DBAAC 44039000 */  mfc1       $v1, $f18
    /* 2BDEE0 802DBAB0 10E00007 */  beqz       $a3, .L802DBAD0_2BDF00
    /* 2BDEE4 802DBAB4 00000000 */   nop
    /* 2BDEE8 802DBAB8 86050006 */  lh         $a1, 0x6($s0)
    /* 2BDEEC 802DBABC AFA30050 */  sw         $v1, 0x50($sp)
    /* 2BDEF0 802DBAC0 0C0408BD */  jal        func_801022F4_1112A4
    /* 2BDEF4 802DBAC4 AFA80034 */   sw        $t0, 0x34($sp)
    /* 2BDEF8 802DBAC8 8FA30050 */  lw         $v1, 0x50($sp)
    /* 2BDEFC 802DBACC 8FA80034 */  lw         $t0, 0x34($sp)
  .L802DBAD0_2BDF00:
    /* 2BDF00 802DBAD0 1060000B */  beqz       $v1, .L802DBB00_2BDF30
    /* 2BDF04 802DBAD4 02002025 */   or        $a0, $s0, $zero
    /* 2BDF08 802DBAD8 86050006 */  lh         $a1, 0x6($s0)
    /* 2BDF0C 802DBADC 00033400 */  sll        $a2, $v1, 16
    /* 2BDF10 802DBAE0 00065C03 */  sra        $t3, $a2, 16
    /* 2BDF14 802DBAE4 24A54000 */  addiu      $a1, $a1, 0x4000
    /* 2BDF18 802DBAE8 00054C00 */  sll        $t1, $a1, 16
    /* 2BDF1C 802DBAEC 00092C03 */  sra        $a1, $t1, 16
    /* 2BDF20 802DBAF0 01603025 */  or         $a2, $t3, $zero
    /* 2BDF24 802DBAF4 0C0408BD */  jal        func_801022F4_1112A4
    /* 2BDF28 802DBAF8 AFA80034 */   sw        $t0, 0x34($sp)
    /* 2BDF2C 802DBAFC 8FA80034 */  lw         $t0, 0x34($sp)
  .L802DBB00_2BDF30:
    /* 2BDF30 802DBB00 860C0048 */  lh         $t4, 0x48($s0)
    /* 2BDF34 802DBB04 3C01802E */  lui        $at, %hi(D_802E3048)
    /* 2BDF38 802DBB08 D4263048 */  ldc1       $f6, %lo(D_802E3048)($at)
    /* 2BDF3C 802DBB0C 448C5000 */  mtc1       $t4, $f10
    /* 2BDF40 802DBB10 860F0012 */  lh         $t7, 0x12($s0)
    /* 2BDF44 802DBB14 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 2BDF48 802DBB18 46805121 */  cvt.d.w    $f4, $f10
    /* 2BDF4C 802DBB1C C7AA0088 */  lwc1       $f10, 0x88($sp)
    /* 2BDF50 802DBB20 44819000 */  mtc1       $at, $f18
    /* 2BDF54 802DBB24 86040000 */  lh         $a0, 0x0($s0)
    /* 2BDF58 802DBB28 86050004 */  lh         $a1, 0x4($s0)
    /* 2BDF5C 802DBB2C 46262402 */  mul.d      $f16, $f4, $f6
    /* 2BDF60 802DBB30 448F3000 */  mtc1       $t7, $f6
    /* 2BDF64 802DBB34 460A9101 */  sub.s      $f4, $f18, $f10
    /* 2BDF68 802DBB38 AFA80034 */  sw         $t0, 0x34($sp)
    /* 2BDF6C 802DBB3C 4620820D */  trunc.w.d  $f8, $f16
    /* 2BDF70 802DBB40 46803420 */  cvt.s.w    $f16, $f6
    /* 2BDF74 802DBB44 440E4000 */  mfc1       $t6, $f8
    /* 2BDF78 802DBB48 00000000 */  nop
    /* 2BDF7C 802DBB4C A60E0048 */  sh         $t6, 0x48($s0)
    /* 2BDF80 802DBB50 46048202 */  mul.s      $f8, $f16, $f4
    /* 2BDF84 802DBB54 4600448D */  trunc.w.s  $f18, $f8
    /* 2BDF88 802DBB58 44199000 */  mfc1       $t9, $f18
    /* 2BDF8C 802DBB5C 0C02E134 */  jal        func_800B84D0_C7480
    /* 2BDF90 802DBB60 A6190012 */   sh        $t9, 0x12($s0)
    /* 2BDF94 802DBB64 3C048022 */  lui        $a0, %hi(D_80222A70)
    /* 2BDF98 802DBB68 8C842A70 */  lw         $a0, %lo(D_80222A70)($a0)
    /* 2BDF9C 802DBB6C 00021A03 */  sra        $v1, $v0, 8
    /* 2BDFA0 802DBB70 8FA80034 */  lw         $t0, 0x34($sp)
    /* 2BDFA4 802DBB74 0064082A */  slt        $at, $v1, $a0
    /* 2BDFA8 802DBB78 10200003 */  beqz       $at, .L802DBB88_2BDFB8
    /* 2BDFAC 802DBB7C 00601025 */   or        $v0, $v1, $zero
    /* 2BDFB0 802DBB80 10000001 */  b          .L802DBB88_2BDFB8
    /* 2BDFB4 802DBB84 00801025 */   or        $v0, $a0, $zero
  .L802DBB88_2BDFB8:
    /* 2BDFB8 802DBB88 8FA3006C */  lw         $v1, 0x6C($sp)
    /* 2BDFBC 802DBB8C 86090010 */  lh         $t1, 0x10($s0)
    /* 2BDFC0 802DBB90 860A0002 */  lh         $t2, 0x2($s0)
    /* 2BDFC4 802DBB94 00621821 */  addu       $v1, $v1, $v0
    /* 2BDFC8 802DBB98 93AD0063 */  lbu        $t5, 0x63($sp)
    /* 2BDFCC 802DBB9C 012A5821 */  addu       $t3, $t1, $t2
    /* 2BDFD0 802DBBA0 0163082A */  slt        $at, $t3, $v1
    /* 2BDFD4 802DBBA4 1020000D */  beqz       $at, .L802DBBDC_2BE00C
    /* 2BDFD8 802DBBA8 93A90063 */   lbu       $t1, 0x63($sp)
    /* 2BDFDC 802DBBAC 000D7080 */  sll        $t6, $t5, 2
    /* 2BDFE0 802DBBB0 01CD7023 */  subu       $t6, $t6, $t5
    /* 2BDFE4 802DBBB4 000E7080 */  sll        $t6, $t6, 2
    /* 2BDFE8 802DBBB8 01CD7021 */  addu       $t6, $t6, $t5
    /* 2BDFEC 802DBBBC 000E70C0 */  sll        $t6, $t6, 3
    /* 2BDFF0 802DBBC0 3C0F8025 */  lui        $t7, %hi(D_802566BE)
    /* 2BDFF4 802DBBC4 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BDFF8 802DBBC8 85EF66BE */  lh         $t7, %lo(D_802566BE)($t7)
    /* 2BDFFC 802DBBCC 860C0048 */  lh         $t4, 0x48($s0)
    /* 2BE000 802DBBD0 018FC021 */  addu       $t8, $t4, $t7
    /* 2BE004 802DBBD4 1000000C */  b          .L802DBC08_2BE038
    /* 2BE008 802DBBD8 A6180048 */   sh        $t8, 0x48($s0)
  .L802DBBDC_2BE00C:
    /* 2BE00C 802DBBDC 00095080 */  sll        $t2, $t1, 2
    /* 2BE010 802DBBE0 01495023 */  subu       $t2, $t2, $t1
    /* 2BE014 802DBBE4 000A5080 */  sll        $t2, $t2, 2
    /* 2BE018 802DBBE8 01495021 */  addu       $t2, $t2, $t1
    /* 2BE01C 802DBBEC 000A50C0 */  sll        $t2, $t2, 3
    /* 2BE020 802DBBF0 3C0B8025 */  lui        $t3, %hi(D_802566BE)
    /* 2BE024 802DBBF4 016A5821 */  addu       $t3, $t3, $t2
    /* 2BE028 802DBBF8 856B66BE */  lh         $t3, %lo(D_802566BE)($t3)
    /* 2BE02C 802DBBFC 86190048 */  lh         $t9, 0x48($s0)
    /* 2BE030 802DBC00 032B6823 */  subu       $t5, $t9, $t3
    /* 2BE034 802DBC04 A60D0048 */  sh         $t5, 0x48($s0)
  .L802DBC08_2BE038:
    /* 2BE038 802DBC08 93A20073 */  lbu        $v0, 0x73($sp)
    /* 2BE03C 802DBC0C 24010001 */  addiu      $at, $zero, 0x1
    /* 2BE040 802DBC10 240E0001 */  addiu      $t6, $zero, 0x1
    /* 2BE044 802DBC14 1040000B */  beqz       $v0, .L802DBC44_2BE074
    /* 2BE048 802DBC18 240C0001 */   addiu     $t4, $zero, 0x1
    /* 2BE04C 802DBC1C 1041000D */  beq        $v0, $at, .L802DBC54_2BE084
    /* 2BE050 802DBC20 87A5007A */   lh        $a1, 0x7A($sp)
    /* 2BE054 802DBC24 24010002 */  addiu      $at, $zero, 0x2
    /* 2BE058 802DBC28 10410020 */  beq        $v0, $at, .L802DBCAC_2BE0DC
    /* 2BE05C 802DBC2C 87A5007A */   lh        $a1, 0x7A($sp)
    /* 2BE060 802DBC30 24010003 */  addiu      $at, $zero, 0x3
    /* 2BE064 802DBC34 10410033 */  beq        $v0, $at, .L802DBD04_2BE134
    /* 2BE068 802DBC38 87A5007A */   lh        $a1, 0x7A($sp)
    /* 2BE06C 802DBC3C 10000042 */  b          .L802DBD48_2BE178
    /* 2BE070 802DBC40 87A5007A */   lh        $a1, 0x7A($sp)
  .L802DBC44_2BE074:
    /* 2BE074 802DBC44 AFAE0044 */  sw         $t6, 0x44($sp)
    /* 2BE078 802DBC48 AFAC0048 */  sw         $t4, 0x48($sp)
    /* 2BE07C 802DBC4C 1000003E */  b          .L802DBD48_2BE178
    /* 2BE080 802DBC50 87A5007A */   lh        $a1, 0x7A($sp)
  .L802DBC54_2BE084:
    /* 2BE084 802DBC54 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 2BE088 802DBC58 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 2BE08C 802DBC5C 0005C100 */  sll        $t8, $a1, 4
    /* 2BE090 802DBC60 03091021 */  addu       $v0, $t8, $t1
    /* 2BE094 802DBC64 9443000A */  lhu        $v1, 0xA($v0)
    /* 2BE098 802DBC68 87A4007E */  lh         $a0, 0x7E($sp)
    /* 2BE09C 802DBC6C 240F0001 */  addiu      $t7, $zero, 0x1
    /* 2BE0A0 802DBC70 00035400 */  sll        $t2, $v1, 16
    /* 2BE0A4 802DBC74 000ACC03 */  sra        $t9, $t2, 16
    /* 2BE0A8 802DBC78 0324082A */  slt        $at, $t9, $a0
    /* 2BE0AC 802DBC7C 10200003 */  beqz       $at, .L802DBC8C_2BE0BC
    /* 2BE0B0 802DBC80 AFAF0048 */   sw        $t7, 0x48($sp)
    /* 2BE0B4 802DBC84 246B0190 */  addiu      $t3, $v1, 0x190
    /* 2BE0B8 802DBC88 A44B000A */  sh         $t3, 0xA($v0)
  .L802DBC8C_2BE0BC:
    /* 2BE0BC 802DBC8C 9502000A */  lhu        $v0, 0xA($t0)
    /* 2BE0C0 802DBC90 00026C00 */  sll        $t5, $v0, 16
    /* 2BE0C4 802DBC94 000D7403 */  sra        $t6, $t5, 16
    /* 2BE0C8 802DBC98 01C4082A */  slt        $at, $t6, $a0
    /* 2BE0CC 802DBC9C 1020002A */  beqz       $at, .L802DBD48_2BE178
    /* 2BE0D0 802DBCA0 244C0190 */   addiu     $t4, $v0, 0x190
    /* 2BE0D4 802DBCA4 10000028 */  b          .L802DBD48_2BE178
    /* 2BE0D8 802DBCA8 A50C000A */   sh        $t4, 0xA($t0)
  .L802DBCAC_2BE0DC:
    /* 2BE0DC 802DBCAC 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 2BE0E0 802DBCB0 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 2BE0E4 802DBCB4 0005C100 */  sll        $t8, $a1, 4
    /* 2BE0E8 802DBCB8 03091021 */  addu       $v0, $t8, $t1
    /* 2BE0EC 802DBCBC 9443000A */  lhu        $v1, 0xA($v0)
    /* 2BE0F0 802DBCC0 87A40082 */  lh         $a0, 0x82($sp)
    /* 2BE0F4 802DBCC4 240F0001 */  addiu      $t7, $zero, 0x1
    /* 2BE0F8 802DBCC8 00035400 */  sll        $t2, $v1, 16
    /* 2BE0FC 802DBCCC 000ACC03 */  sra        $t9, $t2, 16
    /* 2BE100 802DBCD0 0099082A */  slt        $at, $a0, $t9
    /* 2BE104 802DBCD4 10200003 */  beqz       $at, .L802DBCE4_2BE114
    /* 2BE108 802DBCD8 AFAF0048 */   sw        $t7, 0x48($sp)
    /* 2BE10C 802DBCDC 246BFE70 */  addiu      $t3, $v1, -0x190
    /* 2BE110 802DBCE0 A44B000A */  sh         $t3, 0xA($v0)
  .L802DBCE4_2BE114:
    /* 2BE114 802DBCE4 9502000A */  lhu        $v0, 0xA($t0)
    /* 2BE118 802DBCE8 00026C00 */  sll        $t5, $v0, 16
    /* 2BE11C 802DBCEC 000D7403 */  sra        $t6, $t5, 16
    /* 2BE120 802DBCF0 008E082A */  slt        $at, $a0, $t6
    /* 2BE124 802DBCF4 10200014 */  beqz       $at, .L802DBD48_2BE178
    /* 2BE128 802DBCF8 244CFE70 */   addiu     $t4, $v0, -0x190
    /* 2BE12C 802DBCFC 10000012 */  b          .L802DBD48_2BE178
    /* 2BE130 802DBD00 A50C000A */   sh        $t4, 0xA($t0)
  .L802DBD04_2BE134:
    /* 2BE134 802DBD04 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 2BE138 802DBD08 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 2BE13C 802DBD0C 0005C100 */  sll        $t8, $a1, 4
    /* 2BE140 802DBD10 03091021 */  addu       $v0, $t8, $t1
    /* 2BE144 802DBD14 94430008 */  lhu        $v1, 0x8($v0)
    /* 2BE148 802DBD18 87AB0086 */  lh         $t3, 0x86($sp)
    /* 2BE14C 802DBD1C 240F0001 */  addiu      $t7, $zero, 0x1
    /* 2BE150 802DBD20 00035400 */  sll        $t2, $v1, 16
    /* 2BE154 802DBD24 000ACC03 */  sra        $t9, $t2, 16
    /* 2BE158 802DBD28 032B082A */  slt        $at, $t9, $t3
    /* 2BE15C 802DBD2C 10200006 */  beqz       $at, .L802DBD48_2BE178
    /* 2BE160 802DBD30 AFAF0044 */   sw        $t7, 0x44($sp)
    /* 2BE164 802DBD34 246D0190 */  addiu      $t5, $v1, 0x190
    /* 2BE168 802DBD38 A44D0008 */  sh         $t5, 0x8($v0)
    /* 2BE16C 802DBD3C 950E0008 */  lhu        $t6, 0x8($t0)
    /* 2BE170 802DBD40 25CC0190 */  addiu      $t4, $t6, 0x190
    /* 2BE174 802DBD44 A50C0008 */  sh         $t4, 0x8($t0)
  .L802DBD48_2BE178:
    /* 2BE178 802DBD48 8FAF0044 */  lw         $t7, 0x44($sp)
    /* 2BE17C 802DBD4C 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 2BE180 802DBD50 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 2BE184 802DBD54 11E00018 */  beqz       $t7, .L802DBDB8_2BE1E8
    /* 2BE188 802DBD58 0005C100 */   sll       $t8, $a1, 4
    /* 2BE18C 802DBD5C 03091021 */  addu       $v0, $t8, $t1
    /* 2BE190 802DBD60 9443000A */  lhu        $v1, 0xA($v0)
    /* 2BE194 802DBD64 00032400 */  sll        $a0, $v1, 16
    /* 2BE198 802DBD68 00045403 */  sra        $t2, $a0, 16
    /* 2BE19C 802DBD6C 05410004 */  bgez       $t2, .L802DBD80_2BE1B0
    /* 2BE1A0 802DBD70 01402025 */   or        $a0, $t2, $zero
    /* 2BE1A4 802DBD74 24790190 */  addiu      $t9, $v1, 0x190
    /* 2BE1A8 802DBD78 10000004 */  b          .L802DBD8C_2BE1BC
    /* 2BE1AC 802DBD7C A459000A */   sh        $t9, 0xA($v0)
  .L802DBD80_2BE1B0:
    /* 2BE1B0 802DBD80 18800002 */  blez       $a0, .L802DBD8C_2BE1BC
    /* 2BE1B4 802DBD84 246BFE70 */   addiu     $t3, $v1, -0x190
    /* 2BE1B8 802DBD88 A44B000A */  sh         $t3, 0xA($v0)
  .L802DBD8C_2BE1BC:
    /* 2BE1BC 802DBD8C 9502000A */  lhu        $v0, 0xA($t0)
    /* 2BE1C0 802DBD90 00021C00 */  sll        $v1, $v0, 16
    /* 2BE1C4 802DBD94 00036C03 */  sra        $t5, $v1, 16
    /* 2BE1C8 802DBD98 05A10004 */  bgez       $t5, .L802DBDAC_2BE1DC
    /* 2BE1CC 802DBD9C 01A01825 */   or        $v1, $t5, $zero
    /* 2BE1D0 802DBDA0 244E0190 */  addiu      $t6, $v0, 0x190
    /* 2BE1D4 802DBDA4 10000004 */  b          .L802DBDB8_2BE1E8
    /* 2BE1D8 802DBDA8 A50E000A */   sh        $t6, 0xA($t0)
  .L802DBDAC_2BE1DC:
    /* 2BE1DC 802DBDAC 18600002 */  blez       $v1, .L802DBDB8_2BE1E8
    /* 2BE1E0 802DBDB0 244CFE70 */   addiu     $t4, $v0, -0x190
    /* 2BE1E4 802DBDB4 A50C000A */  sh         $t4, 0xA($t0)
  .L802DBDB8_2BE1E8:
    /* 2BE1E8 802DBDB8 8FAF0048 */  lw         $t7, 0x48($sp)
    /* 2BE1EC 802DBDBC 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 2BE1F0 802DBDC0 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 2BE1F4 802DBDC4 11E00013 */  beqz       $t7, .L802DBE14_2BE244
    /* 2BE1F8 802DBDC8 0005C100 */   sll       $t8, $a1, 4
    /* 2BE1FC 802DBDCC 03091021 */  addu       $v0, $t8, $t1
    /* 2BE200 802DBDD0 94430008 */  lhu        $v1, 0x8($v0)
    /* 2BE204 802DBDD4 00032400 */  sll        $a0, $v1, 16
    /* 2BE208 802DBDD8 00045403 */  sra        $t2, $a0, 16
    /* 2BE20C 802DBDDC 05410007 */  bgez       $t2, .L802DBDFC_2BE22C
    /* 2BE210 802DBDE0 01402025 */   or        $a0, $t2, $zero
    /* 2BE214 802DBDE4 24790190 */  addiu      $t9, $v1, 0x190
    /* 2BE218 802DBDE8 A4590008 */  sh         $t9, 0x8($v0)
    /* 2BE21C 802DBDEC 950B0008 */  lhu        $t3, 0x8($t0)
    /* 2BE220 802DBDF0 256D0190 */  addiu      $t5, $t3, 0x190
    /* 2BE224 802DBDF4 10000007 */  b          .L802DBE14_2BE244
    /* 2BE228 802DBDF8 A50D0008 */   sh        $t5, 0x8($t0)
  .L802DBDFC_2BE22C:
    /* 2BE22C 802DBDFC 18800005 */  blez       $a0, .L802DBE14_2BE244
    /* 2BE230 802DBE00 246EFE70 */   addiu     $t6, $v1, -0x190
    /* 2BE234 802DBE04 A44E0008 */  sh         $t6, 0x8($v0)
    /* 2BE238 802DBE08 950C0008 */  lhu        $t4, 0x8($t0)
    /* 2BE23C 802DBE0C 258FFE70 */  addiu      $t7, $t4, -0x190
    /* 2BE240 802DBE10 A50F0008 */  sh         $t7, 0x8($t0)
  .L802DBE14_2BE244:
    /* 2BE244 802DBE14 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 2BE248 802DBE18 8FB00018 */  lw         $s0, 0x18($sp)
    /* 2BE24C 802DBE1C 27BD0068 */  addiu      $sp, $sp, 0x68
    /* 2BE250 802DBE20 03E00008 */  jr         $ra
    /* 2BE254 802DBE24 00000000 */   nop
endlabel func_802DB8D8_2BDD08
