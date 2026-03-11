nonmatching func_802DB9FC_31FB4C, 0x31C

glabel func_802DB9FC_31FB4C
    /* 31FB4C 802DB9FC 308E00FF */  andi       $t6, $a0, 0xFF
    /* 31FB50 802DBA00 000E7880 */  sll        $t7, $t6, 2
    /* 31FB54 802DBA04 27BDFF70 */  addiu      $sp, $sp, -0x90
    /* 31FB58 802DBA08 01EE7821 */  addu       $t7, $t7, $t6
    /* 31FB5C 802DBA0C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 31FB60 802DBA10 AFB00020 */  sw         $s0, 0x20($sp)
    /* 31FB64 802DBA14 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 31FB68 802DBA18 000F7900 */  sll        $t7, $t7, 4
    /* 31FB6C 802DBA1C 01F88021 */  addu       $s0, $t7, $t8
    /* 31FB70 802DBA20 8619000C */  lh         $t9, 0xC($s0)
    /* 31FB74 802DBA24 3C058015 */  lui        $a1, %hi(D_8014DD5C)
    /* 31FB78 802DBA28 920A001A */  lbu        $t2, 0x1A($s0)
    /* 31FB7C 802DBA2C 00194900 */  sll        $t1, $t9, 4
    /* 31FB80 802DBA30 00A92821 */  addu       $a1, $a1, $t1
    /* 31FB84 802DBA34 80A5DD5C */  lb         $a1, %lo(D_8014DD5C)($a1)
    /* 31FB88 802DBA38 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 31FB8C 802DBA3C AFA40090 */  sw         $a0, 0x90($sp)
    /* 31FB90 802DBA40 01C02025 */  or         $a0, $t6, $zero
    /* 31FB94 802DBA44 AFA00044 */  sw         $zero, 0x44($sp)
    /* 31FB98 802DBA48 A3AE0093 */  sb         $t6, 0x93($sp)
    /* 31FB9C 802DBA4C 24064000 */  addiu      $a2, $zero, 0x4000
    /* 31FBA0 802DBA50 A3AA008D */  sb         $t2, 0x8D($sp)
    /* 31FBA4 802DBA54 0C02178B */  jal        func_80085E2C_94DDC
    /* 31FBA8 802DBA58 A7A5008E */   sh        $a1, 0x8E($sp)
    /* 31FBAC 802DBA5C 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 31FBB0 802DBA60 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 31FBB4 802DBA64 87AB008E */  lh         $t3, 0x8E($sp)
    /* 31FBB8 802DBA68 3C0D8015 */  lui        $t5, %hi(D_8014DD50)
    /* 31FBBC 802DBA6C 84690002 */  lh         $t1, 0x2($v1)
    /* 31FBC0 802DBA70 25ADDD50 */  addiu      $t5, $t5, %lo(D_8014DD50)
    /* 31FBC4 802DBA74 000B6100 */  sll        $t4, $t3, 4
    /* 31FBC8 802DBA78 018D4021 */  addu       $t0, $t4, $t5
    /* 31FBCC 802DBA7C 850E0002 */  lh         $t6, 0x2($t0)
    /* 31FBD0 802DBA80 860F0002 */  lh         $t7, 0x2($s0)
    /* 31FBD4 802DBA84 84670000 */  lh         $a3, 0x0($v1)
    /* 31FBD8 802DBA88 252A0032 */  addiu      $t2, $t1, 0x32
    /* 31FBDC 802DBA8C AFAA0010 */  sw         $t2, 0x10($sp)
    /* 31FBE0 802DBA90 846B0004 */  lh         $t3, 0x4($v1)
    /* 31FBE4 802DBA94 01CF2821 */  addu       $a1, $t6, $t7
    /* 31FBE8 802DBA98 0005C400 */  sll        $t8, $a1, 16
    /* 31FBEC 802DBA9C 00182C03 */  sra        $a1, $t8, 16
    /* 31FBF0 802DBAA0 AFA80034 */  sw         $t0, 0x34($sp)
    /* 31FBF4 802DBAA4 86040000 */  lh         $a0, 0x0($s0)
    /* 31FBF8 802DBAA8 86060004 */  lh         $a2, 0x4($s0)
    /* 31FBFC 802DBAAC 0C021714 */  jal        func_80085C50_94C00
    /* 31FC00 802DBAB0 AFAB0014 */   sw        $t3, 0x14($sp)
    /* 31FC04 802DBAB4 00022C00 */  sll        $a1, $v0, 16
    /* 31FC08 802DBAB8 00056403 */  sra        $t4, $a1, 16
    /* 31FC0C 802DBABC 240D0100 */  addiu      $t5, $zero, 0x100
    /* 31FC10 802DBAC0 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 31FC14 802DBAC4 01802825 */  or         $a1, $t4, $zero
    /* 31FC18 802DBAC8 8604003A */  lh         $a0, 0x3A($s0)
    /* 31FC1C 802DBACC 24061000 */  addiu      $a2, $zero, 0x1000
    /* 31FC20 802DBAD0 0C0216A7 */  jal        func_80085A9C_94A4C
    /* 31FC24 802DBAD4 2407E000 */   addiu     $a3, $zero, -0x2000
    /* 31FC28 802DBAD8 A602003A */  sh         $v0, 0x3A($s0)
    /* 31FC2C 802DBADC 860E003A */  lh         $t6, 0x3A($s0)
    /* 31FC30 802DBAE0 860F002C */  lh         $t7, 0x2C($s0)
    /* 31FC34 802DBAE4 8FB90034 */  lw         $t9, 0x34($sp)
    /* 31FC38 802DBAE8 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 31FC3C 802DBAEC 01CFC023 */  subu       $t8, $t6, $t7
    /* 31FC40 802DBAF0 A738000A */  sh         $t8, 0xA($t9)
    /* 31FC44 802DBAF4 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 31FC48 802DBAF8 0C021395 */  jal        func_80084E54_93E04
    /* 31FC4C 802DBAFC 02002825 */   or        $a1, $s0, $zero
    /* 31FC50 802DBB00 8FA90034 */  lw         $t1, 0x34($sp)
    /* 31FC54 802DBB04 AFA20070 */  sw         $v0, 0x70($sp)
    /* 31FC58 802DBB08 860B0006 */  lh         $t3, 0x6($s0)
    /* 31FC5C 802DBB0C 952A0006 */  lhu        $t2, 0x6($t1)
    /* 31FC60 802DBB10 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 31FC64 802DBB14 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 31FC68 802DBB18 240DC000 */  addiu      $t5, $zero, -0x4000
    /* 31FC6C 802DBB1C 014B6023 */  subu       $t4, $t2, $t3
    /* 31FC70 802DBB20 01AC7023 */  subu       $t6, $t5, $t4
    /* 31FC74 802DBB24 A7AE005E */  sh         $t6, 0x5E($sp)
    /* 31FC78 802DBB28 86180000 */  lh         $t8, 0x0($s0)
    /* 31FC7C 802DBB2C 86090004 */  lh         $t1, 0x4($s0)
    /* 31FC80 802DBB30 846F0000 */  lh         $t7, 0x0($v1)
    /* 31FC84 802DBB34 84790004 */  lh         $t9, 0x4($v1)
    /* 31FC88 802DBB38 01F82023 */  subu       $a0, $t7, $t8
    /* 31FC8C 802DBB3C 03292823 */  subu       $a1, $t9, $t1
    /* 31FC90 802DBB40 44853000 */  mtc1       $a1, $f6
    /* 31FC94 802DBB44 44842000 */  mtc1       $a0, $f4
    /* 31FC98 802DBB48 468033A0 */  cvt.s.w    $f14, $f6
    /* 31FC9C 802DBB4C 46802320 */  cvt.s.w    $f12, $f4
    /* 31FCA0 802DBB50 E7AE002C */  swc1       $f14, 0x2C($sp)
    /* 31FCA4 802DBB54 0C000E09 */  jal        func_80003824_4424
    /* 31FCA8 802DBB58 E7AC0030 */   swc1      $f12, 0x30($sp)
    /* 31FCAC 802DBB5C C7AC0030 */  lwc1       $f12, 0x30($sp)
    /* 31FCB0 802DBB60 C7AE002C */  lwc1       $f14, 0x2C($sp)
    /* 31FCB4 802DBB64 0C000E09 */  jal        func_80003824_4424
    /* 31FCB8 802DBB68 A7A2003E */   sh        $v0, 0x3E($sp)
    /* 31FCBC 802DBB6C 87A3005E */  lh         $v1, 0x5E($sp)
    /* 31FCC0 802DBB70 87AC003E */  lh         $t4, 0x3E($sp)
    /* 31FCC4 802DBB74 240B4000 */  addiu      $t3, $zero, 0x4000
    /* 31FCC8 802DBB78 00435023 */  subu       $t2, $v0, $v1
    /* 31FCCC 802DBB7C 01837023 */  subu       $t6, $t4, $v1
    /* 31FCD0 802DBB80 25CFC000 */  addiu      $t7, $t6, -0x4000
    /* 31FCD4 802DBB84 016A6823 */  subu       $t5, $t3, $t2
    /* 31FCD8 802DBB88 01AF082A */  slt        $at, $t5, $t7
    /* 31FCDC 802DBB8C C7AC0030 */  lwc1       $f12, 0x30($sp)
    /* 31FCE0 802DBB90 10200007 */  beqz       $at, .L802DBBB0_31FD00
    /* 31FCE4 802DBB94 C7AE002C */   lwc1      $f14, 0x2C($sp)
    /* 31FCE8 802DBB98 0C000E09 */  jal        func_80003824_4424
    /* 31FCEC 802DBB9C 00000000 */   nop
    /* 31FCF0 802DBBA0 87B8005E */  lh         $t8, 0x5E($sp)
    /* 31FCF4 802DBBA4 00581823 */  subu       $v1, $v0, $t8
    /* 31FCF8 802DBBA8 10000007 */  b          .L802DBBC8_31FD18
    /* 31FCFC 802DBBAC 2463C000 */   addiu     $v1, $v1, -0x4000
  .L802DBBB0_31FD00:
    /* 31FD00 802DBBB0 0C000E09 */  jal        func_80003824_4424
    /* 31FD04 802DBBB4 00000000 */   nop
    /* 31FD08 802DBBB8 87B9005E */  lh         $t9, 0x5E($sp)
    /* 31FD0C 802DBBBC 240B4000 */  addiu      $t3, $zero, 0x4000
    /* 31FD10 802DBBC0 00594823 */  subu       $t1, $v0, $t9
    /* 31FD14 802DBBC4 01691823 */  subu       $v1, $t3, $t1
  .L802DBBC8_31FD18:
    /* 31FD18 802DBBC8 28612000 */  slti       $at, $v1, 0x2000
    /* 31FD1C 802DBBCC 10200002 */  beqz       $at, .L802DBBD8_31FD28
    /* 31FD20 802DBBD0 240A0001 */   addiu     $t2, $zero, 0x1
    /* 31FD24 802DBBD4 AFAA0044 */  sw         $t2, 0x44($sp)
  .L802DBBD8_31FD28:
    /* 31FD28 802DBBD8 0C021553 */  jal        func_8008554C_944FC
    /* 31FD2C 802DBBDC 93A40093 */   lbu       $a0, 0x93($sp)
    /* 31FD30 802DBBE0 8FAC0070 */  lw         $t4, 0x70($sp)
    /* 31FD34 802DBBE4 8FAE0044 */  lw         $t6, 0x44($sp)
    /* 31FD38 802DBBE8 240B0014 */  addiu      $t3, $zero, 0x14
    /* 31FD3C 802DBBEC 2981012D */  slti       $at, $t4, 0x12D
    /* 31FD40 802DBBF0 5420002F */  bnel       $at, $zero, .L802DBCB0_31FE00
    /* 31FD44 802DBBF4 A60B001E */   sh        $t3, 0x1E($s0)
    /* 31FD48 802DBBF8 51C0002D */  beql       $t6, $zero, .L802DBCB0_31FE00
    /* 31FD4C 802DBBFC A60B001E */   sh        $t3, 0x1E($s0)
    /* 31FD50 802DBC00 820D004E */  lb         $t5, 0x4E($s0)
    /* 31FD54 802DBC04 240FFFB0 */  addiu      $t7, $zero, -0x50
    /* 31FD58 802DBC08 2418001E */  addiu      $t8, $zero, 0x1E
    /* 31FD5C 802DBC0C 11A00027 */  beqz       $t5, .L802DBCAC_31FDFC
    /* 31FD60 802DBC10 241900CC */   addiu     $t9, $zero, 0xCC
    /* 31FD64 802DBC14 A7AF0054 */  sh         $t7, 0x54($sp)
    /* 31FD68 802DBC18 A7B80056 */  sh         $t8, 0x56($sp)
    /* 31FD6C 802DBC1C A7B90058 */  sh         $t9, 0x58($sp)
    /* 31FD70 802DBC20 83A4008F */  lb         $a0, 0x8F($sp)
    /* 31FD74 802DBC24 27A50054 */  addiu      $a1, $sp, 0x54
    /* 31FD78 802DBC28 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 31FD7C 802DBC2C 27A60048 */   addiu     $a2, $sp, 0x48
    /* 31FD80 802DBC30 93AB008D */  lbu        $t3, 0x8D($sp)
    /* 31FD84 802DBC34 3C0A8025 */  lui        $t2, %hi(alienSpecs)
    /* 31FD88 802DBC38 254A6680 */  addiu      $t2, $t2, %lo(alienSpecs)
    /* 31FD8C 802DBC3C 000B4880 */  sll        $t1, $t3, 2
    /* 31FD90 802DBC40 012B4823 */  subu       $t1, $t1, $t3
    /* 31FD94 802DBC44 00094880 */  sll        $t1, $t1, 2
    /* 31FD98 802DBC48 012B4821 */  addu       $t1, $t1, $t3
    /* 31FD9C 802DBC4C 000948C0 */  sll        $t1, $t1, 3
    /* 31FDA0 802DBC50 8FAC0048 */  lw         $t4, 0x48($sp)
    /* 31FDA4 802DBC54 8FAE004C */  lw         $t6, 0x4C($sp)
    /* 31FDA8 802DBC58 8FAD0050 */  lw         $t5, 0x50($sp)
    /* 31FDAC 802DBC5C 012A1021 */  addu       $v0, $t1, $t2
    /* 31FDB0 802DBC60 93A40093 */  lbu        $a0, 0x93($sp)
    /* 31FDB4 802DBC64 00002825 */  or         $a1, $zero, $zero
    /* 31FDB8 802DBC68 00003025 */  or         $a2, $zero, $zero
    /* 31FDBC 802DBC6C A44C0020 */  sh         $t4, 0x20($v0)
    /* 31FDC0 802DBC70 A44E0022 */  sh         $t6, 0x22($v0)
    /* 31FDC4 802DBC74 0C021C73 */  jal        func_800871CC_9617C
    /* 31FDC8 802DBC78 A44D0024 */   sh        $t5, 0x24($v0)
    /* 31FDCC 802DBC7C 5040000D */  beql       $v0, $zero, .L802DBCB4_31FE04
    /* 31FDD0 802DBC80 8E090020 */   lw        $t1, 0x20($s0)
    /* 31FDD4 802DBC84 0C000E38 */  jal        func_800038E0_44E0
    /* 31FDD8 802DBC88 00000000 */   nop
    /* 31FDDC 802DBC8C 2401000F */  addiu      $at, $zero, 0xF
    /* 31FDE0 802DBC90 0041001A */  div        $zero, $v0, $at
    /* 31FDE4 802DBC94 00007810 */  mfhi       $t7
    /* 31FDE8 802DBC98 25F8000F */  addiu      $t8, $t7, 0xF
    /* 31FDEC 802DBC9C 24192000 */  addiu      $t9, $zero, 0x2000
    /* 31FDF0 802DBCA0 A618001E */  sh         $t8, 0x1E($s0)
    /* 31FDF4 802DBCA4 10000002 */  b          .L802DBCB0_31FE00
    /* 31FDF8 802DBCA8 A619002C */   sh        $t9, 0x2C($s0)
  .L802DBCAC_31FDFC:
    /* 31FDFC 802DBCAC A60B001E */  sh         $t3, 0x1E($s0)
  .L802DBCB0_31FE00:
    /* 31FE00 802DBCB0 8E090020 */  lw         $t1, 0x20($s0)
  .L802DBCB4_31FE04:
    /* 31FE04 802DBCB4 00095000 */  sll        $t2, $t1, 0
    /* 31FE08 802DBCB8 0543000B */  bgezl      $t2, .L802DBCE8_31FE38
    /* 31FE0C 802DBCBC 8602002C */   lh        $v0, 0x2C($s0)
    /* 31FE10 802DBCC0 8602002C */  lh         $v0, 0x2C($s0)
    /* 31FE14 802DBCC4 240C2000 */  addiu      $t4, $zero, 0x2000
    /* 31FE18 802DBCC8 24421000 */  addiu      $v0, $v0, 0x1000
    /* 31FE1C 802DBCCC 28412001 */  slti       $at, $v0, 0x2001
    /* 31FE20 802DBCD0 54200004 */  bnel       $at, $zero, .L802DBCE4_31FE34
    /* 31FE24 802DBCD4 A602002C */   sh        $v0, 0x2C($s0)
    /* 31FE28 802DBCD8 10000002 */  b          .L802DBCE4_31FE34
    /* 31FE2C 802DBCDC A60C002C */   sh        $t4, 0x2C($s0)
    /* 31FE30 802DBCE0 A602002C */  sh         $v0, 0x2C($s0)
  .L802DBCE4_31FE34:
    /* 31FE34 802DBCE4 8602002C */  lh         $v0, 0x2C($s0)
  .L802DBCE8_31FE38:
    /* 31FE38 802DBCE8 10400002 */  beqz       $v0, .L802DBCF4_31FE44
    /* 31FE3C 802DBCEC 244EFC00 */   addiu     $t6, $v0, -0x400
    /* 31FE40 802DBCF0 A60E002C */  sh         $t6, 0x2C($s0)
  .L802DBCF4_31FE44:
    /* 31FE44 802DBCF4 8602001E */  lh         $v0, 0x1E($s0)
    /* 31FE48 802DBCF8 10400002 */  beqz       $v0, .L802DBD04_31FE54
    /* 31FE4C 802DBCFC 244DFFFF */   addiu     $t5, $v0, -0x1
    /* 31FE50 802DBD00 A60D001E */  sh         $t5, 0x1E($s0)
  .L802DBD04_31FE54:
    /* 31FE54 802DBD04 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 31FE58 802DBD08 8FB00020 */  lw         $s0, 0x20($sp)
    /* 31FE5C 802DBD0C 27BD0090 */  addiu      $sp, $sp, 0x90
    /* 31FE60 802DBD10 03E00008 */  jr         $ra
    /* 31FE64 802DBD14 00000000 */   nop
endlabel func_802DB9FC_31FB4C
