nonmatching func_802DB7B8_25AEF8, 0x550

glabel func_802DB7B8_25AEF8
    /* 25AEF8 802DB7B8 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 25AEFC 802DB7BC AFA40068 */  sw         $a0, 0x68($sp)
    /* 25AF00 802DB7C0 93A4006B */  lbu        $a0, 0x6B($sp)
    /* 25AF04 802DB7C4 00077400 */  sll        $t6, $a3, 16
    /* 25AF08 802DB7C8 000E7C03 */  sra        $t7, $t6, 16
    /* 25AF0C 802DB7CC 0004C880 */  sll        $t9, $a0, 2
    /* 25AF10 802DB7D0 3C098005 */  lui        $t1, %hi(alienInstances)
    /* 25AF14 802DB7D4 3C0D8015 */  lui        $t5, %hi(D_8014DD50)
    /* 25AF18 802DB7D8 0324C821 */  addu       $t9, $t9, $a0
    /* 25AF1C 802DB7DC AFB00018 */  sw         $s0, 0x18($sp)
    /* 25AF20 802DB7E0 0019C900 */  sll        $t9, $t9, 4
    /* 25AF24 802DB7E4 25298198 */  addiu      $t1, $t1, %lo(alienInstances)
    /* 25AF28 802DB7E8 25ADDD50 */  addiu      $t5, $t5, %lo(D_8014DD50)
    /* 25AF2C 802DB7EC 000F6100 */  sll        $t4, $t7, 4
    /* 25AF30 802DB7F0 03298021 */  addu       $s0, $t9, $t1
    /* 25AF34 802DB7F4 018D4021 */  addu       $t0, $t4, $t5
    /* 25AF38 802DB7F8 860A0048 */  lh         $t2, 0x48($s0)
    /* 25AF3C 802DB7FC 920B001A */  lbu        $t3, 0x1A($s0)
    /* 25AF40 802DB800 950E000A */  lhu        $t6, 0xA($t0)
    /* 25AF44 802DB804 950F0008 */  lhu        $t7, 0x8($t0)
    /* 25AF48 802DB808 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 25AF4C 802DB80C AFA5006C */  sw         $a1, 0x6C($sp)
    /* 25AF50 802DB810 AFA60070 */  sw         $a2, 0x70($sp)
    /* 25AF54 802DB814 AFA70074 */  sw         $a3, 0x74($sp)
    /* 25AF58 802DB818 AFA00048 */  sw         $zero, 0x48($sp)
    /* 25AF5C 802DB81C AFA00044 */  sw         $zero, 0x44($sp)
    /* 25AF60 802DB820 2405001E */  addiu      $a1, $zero, 0x1E
    /* 25AF64 802DB824 AFA80034 */  sw         $t0, 0x34($sp)
    /* 25AF68 802DB828 AFAA0064 */  sw         $t2, 0x64($sp)
    /* 25AF6C 802DB82C A3AB0063 */  sb         $t3, 0x63($sp)
    /* 25AF70 802DB830 A7AE004E */  sh         $t6, 0x4E($sp)
    /* 25AF74 802DB834 0C04DD1A */  jal        func_80137468_146418
    /* 25AF78 802DB838 A7AF004C */   sh        $t7, 0x4C($sp)
    /* 25AF7C 802DB83C 97A4004C */  lhu        $a0, 0x4C($sp)
    /* 25AF80 802DB840 0C007654 */  jal        coss
    /* 25AF84 802DB844 AFA40030 */   sw        $a0, 0x30($sp)
    /* 25AF88 802DB848 97A4004E */  lhu        $a0, 0x4E($sp)
    /* 25AF8C 802DB84C A7A20040 */  sh         $v0, 0x40($sp)
    /* 25AF90 802DB850 0C007654 */  jal        coss
    /* 25AF94 802DB854 AFA4002C */   sw        $a0, 0x2C($sp)
    /* 25AF98 802DB858 44823000 */  mtc1       $v0, $f6
    /* 25AF9C 802DB85C 8FB90064 */  lw         $t9, 0x64($sp)
    /* 25AFA0 802DB860 87A90040 */  lh         $t1, 0x40($sp)
    /* 25AFA4 802DB864 46803220 */  cvt.s.w    $f8, $f6
    /* 25AFA8 802DB868 44992000 */  mtc1       $t9, $f4
    /* 25AFAC 802DB86C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25AFB0 802DB870 44810800 */  mtc1       $at, $f1
    /* 25AFB4 802DB874 44800000 */  mtc1       $zero, $f0
    /* 25AFB8 802DB878 468020A1 */  cvt.d.w    $f2, $f4
    /* 25AFBC 802DB87C 44892000 */  mtc1       $t1, $f4
    /* 25AFC0 802DB880 860A0010 */  lh         $t2, 0x10($s0)
    /* 25AFC4 802DB884 97A4002E */  lhu        $a0, 0x2E($sp)
    /* 25AFC8 802DB888 460042A1 */  cvt.d.s    $f10, $f8
    /* 25AFCC 802DB88C 468021A0 */  cvt.s.w    $f6, $f4
    /* 25AFD0 802DB890 448A2000 */  mtc1       $t2, $f4
    /* 25AFD4 802DB894 F7A20020 */  sdc1       $f2, 0x20($sp)
    /* 25AFD8 802DB898 46205403 */  div.d      $f16, $f10, $f0
    /* 25AFDC 802DB89C 46003221 */  cvt.d.s    $f8, $f6
    /* 25AFE0 802DB8A0 468021A1 */  cvt.d.w    $f6, $f4
    /* 25AFE4 802DB8A4 46204283 */  div.d      $f10, $f8, $f0
    /* 25AFE8 802DB8A8 46301482 */  mul.d      $f18, $f2, $f16
    /* 25AFEC 802DB8AC 00000000 */  nop
    /* 25AFF0 802DB8B0 462A9402 */  mul.d      $f16, $f18, $f10
    /* 25AFF4 802DB8B4 46303200 */  add.d      $f8, $f6, $f16
    /* 25AFF8 802DB8B8 4620448D */  trunc.w.d  $f18, $f8
    /* 25AFFC 802DB8BC 440C9000 */  mfc1       $t4, $f18
    /* 25B000 802DB8C0 0C007660 */  jal        sins
    /* 25B004 802DB8C4 A60C0010 */   sh        $t4, 0x10($s0)
    /* 25B008 802DB8C8 A7A20042 */  sh         $v0, 0x42($sp)
    /* 25B00C 802DB8CC 0C007654 */  jal        coss
    /* 25B010 802DB8D0 97A40032 */   lhu       $a0, 0x32($sp)
    /* 25B014 802DB8D4 87AD0042 */  lh         $t5, 0x42($sp)
    /* 25B018 802DB8D8 44825000 */  mtc1       $v0, $f10
    /* 25B01C 802DB8DC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25B020 802DB8E0 448D4000 */  mtc1       $t5, $f8
    /* 25B024 802DB8E4 46805120 */  cvt.s.w    $f4, $f10
    /* 25B028 802DB8E8 44810800 */  mtc1       $at, $f1
    /* 25B02C 802DB8EC 44800000 */  mtc1       $zero, $f0
    /* 25B030 802DB8F0 D7A20020 */  ldc1       $f2, 0x20($sp)
    /* 25B034 802DB8F4 97A40032 */  lhu        $a0, 0x32($sp)
    /* 25B038 802DB8F8 468044A0 */  cvt.s.w    $f18, $f8
    /* 25B03C 802DB8FC 460021A1 */  cvt.d.s    $f6, $f4
    /* 25B040 802DB900 460092A1 */  cvt.d.s    $f10, $f18
    /* 25B044 802DB904 46203403 */  div.d      $f16, $f6, $f0
    /* 25B048 802DB908 46205103 */  div.d      $f4, $f10, $f0
    /* 25B04C 802DB90C 46241182 */  mul.d      $f6, $f2, $f4
    /* 25B050 802DB910 00000000 */  nop
    /* 25B054 802DB914 46268202 */  mul.d      $f8, $f16, $f6
    /* 25B058 802DB918 4620448D */  trunc.w.d  $f18, $f8
    /* 25B05C 802DB91C 0C007660 */  jal        sins
    /* 25B060 802DB920 E7B20054 */   swc1      $f18, 0x54($sp)
    /* 25B064 802DB924 A7A20042 */  sh         $v0, 0x42($sp)
    /* 25B068 802DB928 0C007654 */  jal        coss
    /* 25B06C 802DB92C 97A4002E */   lhu       $a0, 0x2E($sp)
    /* 25B070 802DB930 87AF0042 */  lh         $t7, 0x42($sp)
    /* 25B074 802DB934 44825000 */  mtc1       $v0, $f10
    /* 25B078 802DB938 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25B07C 802DB93C 448F4000 */  mtc1       $t7, $f8
    /* 25B080 802DB940 46805120 */  cvt.s.w    $f4, $f10
    /* 25B084 802DB944 44810800 */  mtc1       $at, $f1
    /* 25B088 802DB948 44800000 */  mtc1       $zero, $f0
    /* 25B08C 802DB94C D7A20020 */  ldc1       $f2, 0x20($sp)
    /* 25B090 802DB950 8FA70054 */  lw         $a3, 0x54($sp)
    /* 25B094 802DB954 468044A0 */  cvt.s.w    $f18, $f8
    /* 25B098 802DB958 8FA80034 */  lw         $t0, 0x34($sp)
    /* 25B09C 802DB95C 00073400 */  sll        $a2, $a3, 16
    /* 25B0A0 802DB960 0006CC03 */  sra        $t9, $a2, 16
    /* 25B0A4 802DB964 03203025 */  or         $a2, $t9, $zero
    /* 25B0A8 802DB968 46002421 */  cvt.d.s    $f16, $f4
    /* 25B0AC 802DB96C 460092A1 */  cvt.d.s    $f10, $f18
    /* 25B0B0 802DB970 46208183 */  div.d      $f6, $f16, $f0
    /* 25B0B4 802DB974 02002025 */  or         $a0, $s0, $zero
    /* 25B0B8 802DB978 46205103 */  div.d      $f4, $f10, $f0
    /* 25B0BC 802DB97C 46241402 */  mul.d      $f16, $f2, $f4
    /* 25B0C0 802DB980 00000000 */  nop
    /* 25B0C4 802DB984 46303202 */  mul.d      $f8, $f6, $f16
    /* 25B0C8 802DB988 4620448D */  trunc.w.d  $f18, $f8
    /* 25B0CC 802DB98C 44039000 */  mfc1       $v1, $f18
    /* 25B0D0 802DB990 10E00007 */  beqz       $a3, .L802DB9B0_25B0F0
    /* 25B0D4 802DB994 00000000 */   nop
    /* 25B0D8 802DB998 86050006 */  lh         $a1, 0x6($s0)
    /* 25B0DC 802DB99C AFA30050 */  sw         $v1, 0x50($sp)
    /* 25B0E0 802DB9A0 0C0408BD */  jal        func_801022F4_1112A4
    /* 25B0E4 802DB9A4 AFA80034 */   sw        $t0, 0x34($sp)
    /* 25B0E8 802DB9A8 8FA30050 */  lw         $v1, 0x50($sp)
    /* 25B0EC 802DB9AC 8FA80034 */  lw         $t0, 0x34($sp)
  .L802DB9B0_25B0F0:
    /* 25B0F0 802DB9B0 1060000B */  beqz       $v1, .L802DB9E0_25B120
    /* 25B0F4 802DB9B4 02002025 */   or        $a0, $s0, $zero
    /* 25B0F8 802DB9B8 86050006 */  lh         $a1, 0x6($s0)
    /* 25B0FC 802DB9BC 00033400 */  sll        $a2, $v1, 16
    /* 25B100 802DB9C0 00065C03 */  sra        $t3, $a2, 16
    /* 25B104 802DB9C4 24A54000 */  addiu      $a1, $a1, 0x4000
    /* 25B108 802DB9C8 00054C00 */  sll        $t1, $a1, 16
    /* 25B10C 802DB9CC 00092C03 */  sra        $a1, $t1, 16
    /* 25B110 802DB9D0 01603025 */  or         $a2, $t3, $zero
    /* 25B114 802DB9D4 0C0408BD */  jal        func_801022F4_1112A4
    /* 25B118 802DB9D8 AFA80034 */   sw        $t0, 0x34($sp)
    /* 25B11C 802DB9DC 8FA80034 */  lw         $t0, 0x34($sp)
  .L802DB9E0_25B120:
    /* 25B120 802DB9E0 860C0048 */  lh         $t4, 0x48($s0)
    /* 25B124 802DB9E4 3C01802E */  lui        $at, %hi(D_802E0DF8)
    /* 25B128 802DB9E8 D4260DF8 */  ldc1       $f6, %lo(D_802E0DF8)($at)
    /* 25B12C 802DB9EC 448C5000 */  mtc1       $t4, $f10
    /* 25B130 802DB9F0 860F0012 */  lh         $t7, 0x12($s0)
    /* 25B134 802DB9F4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 25B138 802DB9F8 46805121 */  cvt.d.w    $f4, $f10
    /* 25B13C 802DB9FC C7AA0088 */  lwc1       $f10, 0x88($sp)
    /* 25B140 802DBA00 44819000 */  mtc1       $at, $f18
    /* 25B144 802DBA04 86040000 */  lh         $a0, 0x0($s0)
    /* 25B148 802DBA08 86050004 */  lh         $a1, 0x4($s0)
    /* 25B14C 802DBA0C 46262402 */  mul.d      $f16, $f4, $f6
    /* 25B150 802DBA10 448F3000 */  mtc1       $t7, $f6
    /* 25B154 802DBA14 460A9101 */  sub.s      $f4, $f18, $f10
    /* 25B158 802DBA18 AFA80034 */  sw         $t0, 0x34($sp)
    /* 25B15C 802DBA1C 4620820D */  trunc.w.d  $f8, $f16
    /* 25B160 802DBA20 46803420 */  cvt.s.w    $f16, $f6
    /* 25B164 802DBA24 440E4000 */  mfc1       $t6, $f8
    /* 25B168 802DBA28 00000000 */  nop
    /* 25B16C 802DBA2C A60E0048 */  sh         $t6, 0x48($s0)
    /* 25B170 802DBA30 46048202 */  mul.s      $f8, $f16, $f4
    /* 25B174 802DBA34 4600448D */  trunc.w.s  $f18, $f8
    /* 25B178 802DBA38 44199000 */  mfc1       $t9, $f18
    /* 25B17C 802DBA3C 0C02E134 */  jal        func_800B84D0_C7480
    /* 25B180 802DBA40 A6190012 */   sh        $t9, 0x12($s0)
    /* 25B184 802DBA44 3C048022 */  lui        $a0, %hi(D_80222A70)
    /* 25B188 802DBA48 8C842A70 */  lw         $a0, %lo(D_80222A70)($a0)
    /* 25B18C 802DBA4C 00021A03 */  sra        $v1, $v0, 8
    /* 25B190 802DBA50 8FA80034 */  lw         $t0, 0x34($sp)
    /* 25B194 802DBA54 0064082A */  slt        $at, $v1, $a0
    /* 25B198 802DBA58 10200003 */  beqz       $at, .L802DBA68_25B1A8
    /* 25B19C 802DBA5C 00601025 */   or        $v0, $v1, $zero
    /* 25B1A0 802DBA60 10000001 */  b          .L802DBA68_25B1A8
    /* 25B1A4 802DBA64 00801025 */   or        $v0, $a0, $zero
  .L802DBA68_25B1A8:
    /* 25B1A8 802DBA68 8FA3006C */  lw         $v1, 0x6C($sp)
    /* 25B1AC 802DBA6C 86090010 */  lh         $t1, 0x10($s0)
    /* 25B1B0 802DBA70 860A0002 */  lh         $t2, 0x2($s0)
    /* 25B1B4 802DBA74 00621821 */  addu       $v1, $v1, $v0
    /* 25B1B8 802DBA78 93AD0063 */  lbu        $t5, 0x63($sp)
    /* 25B1BC 802DBA7C 012A5821 */  addu       $t3, $t1, $t2
    /* 25B1C0 802DBA80 0163082A */  slt        $at, $t3, $v1
    /* 25B1C4 802DBA84 1020000D */  beqz       $at, .L802DBABC_25B1FC
    /* 25B1C8 802DBA88 93A90063 */   lbu       $t1, 0x63($sp)
    /* 25B1CC 802DBA8C 000D7080 */  sll        $t6, $t5, 2
    /* 25B1D0 802DBA90 01CD7023 */  subu       $t6, $t6, $t5
    /* 25B1D4 802DBA94 000E7080 */  sll        $t6, $t6, 2
    /* 25B1D8 802DBA98 01CD7021 */  addu       $t6, $t6, $t5
    /* 25B1DC 802DBA9C 000E70C0 */  sll        $t6, $t6, 3
    /* 25B1E0 802DBAA0 3C0F8025 */  lui        $t7, %hi(D_802566BE)
    /* 25B1E4 802DBAA4 01EE7821 */  addu       $t7, $t7, $t6
    /* 25B1E8 802DBAA8 85EF66BE */  lh         $t7, %lo(D_802566BE)($t7)
    /* 25B1EC 802DBAAC 860C0048 */  lh         $t4, 0x48($s0)
    /* 25B1F0 802DBAB0 018FC021 */  addu       $t8, $t4, $t7
    /* 25B1F4 802DBAB4 1000000C */  b          .L802DBAE8_25B228
    /* 25B1F8 802DBAB8 A6180048 */   sh        $t8, 0x48($s0)
  .L802DBABC_25B1FC:
    /* 25B1FC 802DBABC 00095080 */  sll        $t2, $t1, 2
    /* 25B200 802DBAC0 01495023 */  subu       $t2, $t2, $t1
    /* 25B204 802DBAC4 000A5080 */  sll        $t2, $t2, 2
    /* 25B208 802DBAC8 01495021 */  addu       $t2, $t2, $t1
    /* 25B20C 802DBACC 000A50C0 */  sll        $t2, $t2, 3
    /* 25B210 802DBAD0 3C0B8025 */  lui        $t3, %hi(D_802566BE)
    /* 25B214 802DBAD4 016A5821 */  addu       $t3, $t3, $t2
    /* 25B218 802DBAD8 856B66BE */  lh         $t3, %lo(D_802566BE)($t3)
    /* 25B21C 802DBADC 86190048 */  lh         $t9, 0x48($s0)
    /* 25B220 802DBAE0 032B6823 */  subu       $t5, $t9, $t3
    /* 25B224 802DBAE4 A60D0048 */  sh         $t5, 0x48($s0)
  .L802DBAE8_25B228:
    /* 25B228 802DBAE8 93A20073 */  lbu        $v0, 0x73($sp)
    /* 25B22C 802DBAEC 24010001 */  addiu      $at, $zero, 0x1
    /* 25B230 802DBAF0 240E0001 */  addiu      $t6, $zero, 0x1
    /* 25B234 802DBAF4 1040000B */  beqz       $v0, .L802DBB24_25B264
    /* 25B238 802DBAF8 240C0001 */   addiu     $t4, $zero, 0x1
    /* 25B23C 802DBAFC 1041000D */  beq        $v0, $at, .L802DBB34_25B274
    /* 25B240 802DBB00 87A5007A */   lh        $a1, 0x7A($sp)
    /* 25B244 802DBB04 24010002 */  addiu      $at, $zero, 0x2
    /* 25B248 802DBB08 10410020 */  beq        $v0, $at, .L802DBB8C_25B2CC
    /* 25B24C 802DBB0C 87A5007A */   lh        $a1, 0x7A($sp)
    /* 25B250 802DBB10 24010003 */  addiu      $at, $zero, 0x3
    /* 25B254 802DBB14 10410033 */  beq        $v0, $at, .L802DBBE4_25B324
    /* 25B258 802DBB18 87A5007A */   lh        $a1, 0x7A($sp)
    /* 25B25C 802DBB1C 10000042 */  b          .L802DBC28_25B368
    /* 25B260 802DBB20 87A5007A */   lh        $a1, 0x7A($sp)
  .L802DBB24_25B264:
    /* 25B264 802DBB24 AFAE0044 */  sw         $t6, 0x44($sp)
    /* 25B268 802DBB28 AFAC0048 */  sw         $t4, 0x48($sp)
    /* 25B26C 802DBB2C 1000003E */  b          .L802DBC28_25B368
    /* 25B270 802DBB30 87A5007A */   lh        $a1, 0x7A($sp)
  .L802DBB34_25B274:
    /* 25B274 802DBB34 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 25B278 802DBB38 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 25B27C 802DBB3C 0005C100 */  sll        $t8, $a1, 4
    /* 25B280 802DBB40 03091021 */  addu       $v0, $t8, $t1
    /* 25B284 802DBB44 9443000A */  lhu        $v1, 0xA($v0)
    /* 25B288 802DBB48 87A4007E */  lh         $a0, 0x7E($sp)
    /* 25B28C 802DBB4C 240F0001 */  addiu      $t7, $zero, 0x1
    /* 25B290 802DBB50 00035400 */  sll        $t2, $v1, 16
    /* 25B294 802DBB54 000ACC03 */  sra        $t9, $t2, 16
    /* 25B298 802DBB58 0324082A */  slt        $at, $t9, $a0
    /* 25B29C 802DBB5C 10200003 */  beqz       $at, .L802DBB6C_25B2AC
    /* 25B2A0 802DBB60 AFAF0048 */   sw        $t7, 0x48($sp)
    /* 25B2A4 802DBB64 246B0190 */  addiu      $t3, $v1, 0x190
    /* 25B2A8 802DBB68 A44B000A */  sh         $t3, 0xA($v0)
  .L802DBB6C_25B2AC:
    /* 25B2AC 802DBB6C 9502000A */  lhu        $v0, 0xA($t0)
    /* 25B2B0 802DBB70 00026C00 */  sll        $t5, $v0, 16
    /* 25B2B4 802DBB74 000D7403 */  sra        $t6, $t5, 16
    /* 25B2B8 802DBB78 01C4082A */  slt        $at, $t6, $a0
    /* 25B2BC 802DBB7C 1020002A */  beqz       $at, .L802DBC28_25B368
    /* 25B2C0 802DBB80 244C0190 */   addiu     $t4, $v0, 0x190
    /* 25B2C4 802DBB84 10000028 */  b          .L802DBC28_25B368
    /* 25B2C8 802DBB88 A50C000A */   sh        $t4, 0xA($t0)
  .L802DBB8C_25B2CC:
    /* 25B2CC 802DBB8C 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 25B2D0 802DBB90 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 25B2D4 802DBB94 0005C100 */  sll        $t8, $a1, 4
    /* 25B2D8 802DBB98 03091021 */  addu       $v0, $t8, $t1
    /* 25B2DC 802DBB9C 9443000A */  lhu        $v1, 0xA($v0)
    /* 25B2E0 802DBBA0 87A40082 */  lh         $a0, 0x82($sp)
    /* 25B2E4 802DBBA4 240F0001 */  addiu      $t7, $zero, 0x1
    /* 25B2E8 802DBBA8 00035400 */  sll        $t2, $v1, 16
    /* 25B2EC 802DBBAC 000ACC03 */  sra        $t9, $t2, 16
    /* 25B2F0 802DBBB0 0099082A */  slt        $at, $a0, $t9
    /* 25B2F4 802DBBB4 10200003 */  beqz       $at, .L802DBBC4_25B304
    /* 25B2F8 802DBBB8 AFAF0048 */   sw        $t7, 0x48($sp)
    /* 25B2FC 802DBBBC 246BFE70 */  addiu      $t3, $v1, -0x190
    /* 25B300 802DBBC0 A44B000A */  sh         $t3, 0xA($v0)
  .L802DBBC4_25B304:
    /* 25B304 802DBBC4 9502000A */  lhu        $v0, 0xA($t0)
    /* 25B308 802DBBC8 00026C00 */  sll        $t5, $v0, 16
    /* 25B30C 802DBBCC 000D7403 */  sra        $t6, $t5, 16
    /* 25B310 802DBBD0 008E082A */  slt        $at, $a0, $t6
    /* 25B314 802DBBD4 10200014 */  beqz       $at, .L802DBC28_25B368
    /* 25B318 802DBBD8 244CFE70 */   addiu     $t4, $v0, -0x190
    /* 25B31C 802DBBDC 10000012 */  b          .L802DBC28_25B368
    /* 25B320 802DBBE0 A50C000A */   sh        $t4, 0xA($t0)
  .L802DBBE4_25B324:
    /* 25B324 802DBBE4 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 25B328 802DBBE8 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 25B32C 802DBBEC 0005C100 */  sll        $t8, $a1, 4
    /* 25B330 802DBBF0 03091021 */  addu       $v0, $t8, $t1
    /* 25B334 802DBBF4 94430008 */  lhu        $v1, 0x8($v0)
    /* 25B338 802DBBF8 87AB0086 */  lh         $t3, 0x86($sp)
    /* 25B33C 802DBBFC 240F0001 */  addiu      $t7, $zero, 0x1
    /* 25B340 802DBC00 00035400 */  sll        $t2, $v1, 16
    /* 25B344 802DBC04 000ACC03 */  sra        $t9, $t2, 16
    /* 25B348 802DBC08 032B082A */  slt        $at, $t9, $t3
    /* 25B34C 802DBC0C 10200006 */  beqz       $at, .L802DBC28_25B368
    /* 25B350 802DBC10 AFAF0044 */   sw        $t7, 0x44($sp)
    /* 25B354 802DBC14 246D0190 */  addiu      $t5, $v1, 0x190
    /* 25B358 802DBC18 A44D0008 */  sh         $t5, 0x8($v0)
    /* 25B35C 802DBC1C 950E0008 */  lhu        $t6, 0x8($t0)
    /* 25B360 802DBC20 25CC0190 */  addiu      $t4, $t6, 0x190
    /* 25B364 802DBC24 A50C0008 */  sh         $t4, 0x8($t0)
  .L802DBC28_25B368:
    /* 25B368 802DBC28 8FAF0044 */  lw         $t7, 0x44($sp)
    /* 25B36C 802DBC2C 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 25B370 802DBC30 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 25B374 802DBC34 11E00018 */  beqz       $t7, .L802DBC98_25B3D8
    /* 25B378 802DBC38 0005C100 */   sll       $t8, $a1, 4
    /* 25B37C 802DBC3C 03091021 */  addu       $v0, $t8, $t1
    /* 25B380 802DBC40 9443000A */  lhu        $v1, 0xA($v0)
    /* 25B384 802DBC44 00032400 */  sll        $a0, $v1, 16
    /* 25B388 802DBC48 00045403 */  sra        $t2, $a0, 16
    /* 25B38C 802DBC4C 05410004 */  bgez       $t2, .L802DBC60_25B3A0
    /* 25B390 802DBC50 01402025 */   or        $a0, $t2, $zero
    /* 25B394 802DBC54 24790190 */  addiu      $t9, $v1, 0x190
    /* 25B398 802DBC58 10000004 */  b          .L802DBC6C_25B3AC
    /* 25B39C 802DBC5C A459000A */   sh        $t9, 0xA($v0)
  .L802DBC60_25B3A0:
    /* 25B3A0 802DBC60 18800002 */  blez       $a0, .L802DBC6C_25B3AC
    /* 25B3A4 802DBC64 246BFE70 */   addiu     $t3, $v1, -0x190
    /* 25B3A8 802DBC68 A44B000A */  sh         $t3, 0xA($v0)
  .L802DBC6C_25B3AC:
    /* 25B3AC 802DBC6C 9502000A */  lhu        $v0, 0xA($t0)
    /* 25B3B0 802DBC70 00021C00 */  sll        $v1, $v0, 16
    /* 25B3B4 802DBC74 00036C03 */  sra        $t5, $v1, 16
    /* 25B3B8 802DBC78 05A10004 */  bgez       $t5, .L802DBC8C_25B3CC
    /* 25B3BC 802DBC7C 01A01825 */   or        $v1, $t5, $zero
    /* 25B3C0 802DBC80 244E0190 */  addiu      $t6, $v0, 0x190
    /* 25B3C4 802DBC84 10000004 */  b          .L802DBC98_25B3D8
    /* 25B3C8 802DBC88 A50E000A */   sh        $t6, 0xA($t0)
  .L802DBC8C_25B3CC:
    /* 25B3CC 802DBC8C 18600002 */  blez       $v1, .L802DBC98_25B3D8
    /* 25B3D0 802DBC90 244CFE70 */   addiu     $t4, $v0, -0x190
    /* 25B3D4 802DBC94 A50C000A */  sh         $t4, 0xA($t0)
  .L802DBC98_25B3D8:
    /* 25B3D8 802DBC98 8FAF0048 */  lw         $t7, 0x48($sp)
    /* 25B3DC 802DBC9C 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 25B3E0 802DBCA0 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 25B3E4 802DBCA4 11E00013 */  beqz       $t7, .L802DBCF4_25B434
    /* 25B3E8 802DBCA8 0005C100 */   sll       $t8, $a1, 4
    /* 25B3EC 802DBCAC 03091021 */  addu       $v0, $t8, $t1
    /* 25B3F0 802DBCB0 94430008 */  lhu        $v1, 0x8($v0)
    /* 25B3F4 802DBCB4 00032400 */  sll        $a0, $v1, 16
    /* 25B3F8 802DBCB8 00045403 */  sra        $t2, $a0, 16
    /* 25B3FC 802DBCBC 05410007 */  bgez       $t2, .L802DBCDC_25B41C
    /* 25B400 802DBCC0 01402025 */   or        $a0, $t2, $zero
    /* 25B404 802DBCC4 24790190 */  addiu      $t9, $v1, 0x190
    /* 25B408 802DBCC8 A4590008 */  sh         $t9, 0x8($v0)
    /* 25B40C 802DBCCC 950B0008 */  lhu        $t3, 0x8($t0)
    /* 25B410 802DBCD0 256D0190 */  addiu      $t5, $t3, 0x190
    /* 25B414 802DBCD4 10000007 */  b          .L802DBCF4_25B434
    /* 25B418 802DBCD8 A50D0008 */   sh        $t5, 0x8($t0)
  .L802DBCDC_25B41C:
    /* 25B41C 802DBCDC 18800005 */  blez       $a0, .L802DBCF4_25B434
    /* 25B420 802DBCE0 246EFE70 */   addiu     $t6, $v1, -0x190
    /* 25B424 802DBCE4 A44E0008 */  sh         $t6, 0x8($v0)
    /* 25B428 802DBCE8 950C0008 */  lhu        $t4, 0x8($t0)
    /* 25B42C 802DBCEC 258FFE70 */  addiu      $t7, $t4, -0x190
    /* 25B430 802DBCF0 A50F0008 */  sh         $t7, 0x8($t0)
  .L802DBCF4_25B434:
    /* 25B434 802DBCF4 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 25B438 802DBCF8 8FB00018 */  lw         $s0, 0x18($sp)
    /* 25B43C 802DBCFC 27BD0068 */  addiu      $sp, $sp, 0x68
    /* 25B440 802DBD00 03E00008 */  jr         $ra
    /* 25B444 802DBD04 00000000 */   nop
endlabel func_802DB7B8_25AEF8
