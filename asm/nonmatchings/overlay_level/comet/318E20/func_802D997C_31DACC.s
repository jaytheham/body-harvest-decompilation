nonmatching func_802D997C_31DACC, 0x550

glabel func_802D997C_31DACC
    /* 31DACC 802D997C 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 31DAD0 802D9980 AFA40068 */  sw         $a0, 0x68($sp)
    /* 31DAD4 802D9984 93A4006B */  lbu        $a0, 0x6B($sp)
    /* 31DAD8 802D9988 00077400 */  sll        $t6, $a3, 16
    /* 31DADC 802D998C 000E7C03 */  sra        $t7, $t6, 16
    /* 31DAE0 802D9990 0004C880 */  sll        $t9, $a0, 2
    /* 31DAE4 802D9994 3C098005 */  lui        $t1, %hi(alienInstances)
    /* 31DAE8 802D9998 3C0D8015 */  lui        $t5, %hi(D_8014DD50)
    /* 31DAEC 802D999C 0324C821 */  addu       $t9, $t9, $a0
    /* 31DAF0 802D99A0 AFB00018 */  sw         $s0, 0x18($sp)
    /* 31DAF4 802D99A4 0019C900 */  sll        $t9, $t9, 4
    /* 31DAF8 802D99A8 25298198 */  addiu      $t1, $t1, %lo(alienInstances)
    /* 31DAFC 802D99AC 25ADDD50 */  addiu      $t5, $t5, %lo(D_8014DD50)
    /* 31DB00 802D99B0 000F6100 */  sll        $t4, $t7, 4
    /* 31DB04 802D99B4 03298021 */  addu       $s0, $t9, $t1
    /* 31DB08 802D99B8 018D4021 */  addu       $t0, $t4, $t5
    /* 31DB0C 802D99BC 860A0048 */  lh         $t2, 0x48($s0)
    /* 31DB10 802D99C0 920B001A */  lbu        $t3, 0x1A($s0)
    /* 31DB14 802D99C4 950E000A */  lhu        $t6, 0xA($t0)
    /* 31DB18 802D99C8 950F0008 */  lhu        $t7, 0x8($t0)
    /* 31DB1C 802D99CC AFBF001C */  sw         $ra, 0x1C($sp)
    /* 31DB20 802D99D0 AFA5006C */  sw         $a1, 0x6C($sp)
    /* 31DB24 802D99D4 AFA60070 */  sw         $a2, 0x70($sp)
    /* 31DB28 802D99D8 AFA70074 */  sw         $a3, 0x74($sp)
    /* 31DB2C 802D99DC AFA00048 */  sw         $zero, 0x48($sp)
    /* 31DB30 802D99E0 AFA00044 */  sw         $zero, 0x44($sp)
    /* 31DB34 802D99E4 2405001E */  addiu      $a1, $zero, 0x1E
    /* 31DB38 802D99E8 AFA80034 */  sw         $t0, 0x34($sp)
    /* 31DB3C 802D99EC AFAA0064 */  sw         $t2, 0x64($sp)
    /* 31DB40 802D99F0 A3AB0063 */  sb         $t3, 0x63($sp)
    /* 31DB44 802D99F4 A7AE004E */  sh         $t6, 0x4E($sp)
    /* 31DB48 802D99F8 0C04DD1A */  jal        func_80137468_146418
    /* 31DB4C 802D99FC A7AF004C */   sh        $t7, 0x4C($sp)
    /* 31DB50 802D9A00 97A4004C */  lhu        $a0, 0x4C($sp)
    /* 31DB54 802D9A04 0C007654 */  jal        coss
    /* 31DB58 802D9A08 AFA40030 */   sw        $a0, 0x30($sp)
    /* 31DB5C 802D9A0C 97A4004E */  lhu        $a0, 0x4E($sp)
    /* 31DB60 802D9A10 A7A20040 */  sh         $v0, 0x40($sp)
    /* 31DB64 802D9A14 0C007654 */  jal        coss
    /* 31DB68 802D9A18 AFA4002C */   sw        $a0, 0x2C($sp)
    /* 31DB6C 802D9A1C 44823000 */  mtc1       $v0, $f6
    /* 31DB70 802D9A20 8FB90064 */  lw         $t9, 0x64($sp)
    /* 31DB74 802D9A24 87A90040 */  lh         $t1, 0x40($sp)
    /* 31DB78 802D9A28 46803220 */  cvt.s.w    $f8, $f6
    /* 31DB7C 802D9A2C 44992000 */  mtc1       $t9, $f4
    /* 31DB80 802D9A30 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31DB84 802D9A34 44810800 */  mtc1       $at, $f1
    /* 31DB88 802D9A38 44800000 */  mtc1       $zero, $f0
    /* 31DB8C 802D9A3C 468020A1 */  cvt.d.w    $f2, $f4
    /* 31DB90 802D9A40 44892000 */  mtc1       $t1, $f4
    /* 31DB94 802D9A44 860A0010 */  lh         $t2, 0x10($s0)
    /* 31DB98 802D9A48 97A4002E */  lhu        $a0, 0x2E($sp)
    /* 31DB9C 802D9A4C 460042A1 */  cvt.d.s    $f10, $f8
    /* 31DBA0 802D9A50 468021A0 */  cvt.s.w    $f6, $f4
    /* 31DBA4 802D9A54 448A2000 */  mtc1       $t2, $f4
    /* 31DBA8 802D9A58 F7A20020 */  sdc1       $f2, 0x20($sp)
    /* 31DBAC 802D9A5C 46205403 */  div.d      $f16, $f10, $f0
    /* 31DBB0 802D9A60 46003221 */  cvt.d.s    $f8, $f6
    /* 31DBB4 802D9A64 468021A1 */  cvt.d.w    $f6, $f4
    /* 31DBB8 802D9A68 46204283 */  div.d      $f10, $f8, $f0
    /* 31DBBC 802D9A6C 46301482 */  mul.d      $f18, $f2, $f16
    /* 31DBC0 802D9A70 00000000 */  nop
    /* 31DBC4 802D9A74 462A9402 */  mul.d      $f16, $f18, $f10
    /* 31DBC8 802D9A78 46303200 */  add.d      $f8, $f6, $f16
    /* 31DBCC 802D9A7C 4620448D */  trunc.w.d  $f18, $f8
    /* 31DBD0 802D9A80 440C9000 */  mfc1       $t4, $f18
    /* 31DBD4 802D9A84 0C007660 */  jal        sins
    /* 31DBD8 802D9A88 A60C0010 */   sh        $t4, 0x10($s0)
    /* 31DBDC 802D9A8C A7A20042 */  sh         $v0, 0x42($sp)
    /* 31DBE0 802D9A90 0C007654 */  jal        coss
    /* 31DBE4 802D9A94 97A40032 */   lhu       $a0, 0x32($sp)
    /* 31DBE8 802D9A98 87AD0042 */  lh         $t5, 0x42($sp)
    /* 31DBEC 802D9A9C 44825000 */  mtc1       $v0, $f10
    /* 31DBF0 802D9AA0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31DBF4 802D9AA4 448D4000 */  mtc1       $t5, $f8
    /* 31DBF8 802D9AA8 46805120 */  cvt.s.w    $f4, $f10
    /* 31DBFC 802D9AAC 44810800 */  mtc1       $at, $f1
    /* 31DC00 802D9AB0 44800000 */  mtc1       $zero, $f0
    /* 31DC04 802D9AB4 D7A20020 */  ldc1       $f2, 0x20($sp)
    /* 31DC08 802D9AB8 97A40032 */  lhu        $a0, 0x32($sp)
    /* 31DC0C 802D9ABC 468044A0 */  cvt.s.w    $f18, $f8
    /* 31DC10 802D9AC0 460021A1 */  cvt.d.s    $f6, $f4
    /* 31DC14 802D9AC4 460092A1 */  cvt.d.s    $f10, $f18
    /* 31DC18 802D9AC8 46203403 */  div.d      $f16, $f6, $f0
    /* 31DC1C 802D9ACC 46205103 */  div.d      $f4, $f10, $f0
    /* 31DC20 802D9AD0 46241182 */  mul.d      $f6, $f2, $f4
    /* 31DC24 802D9AD4 00000000 */  nop
    /* 31DC28 802D9AD8 46268202 */  mul.d      $f8, $f16, $f6
    /* 31DC2C 802D9ADC 4620448D */  trunc.w.d  $f18, $f8
    /* 31DC30 802D9AE0 0C007660 */  jal        sins
    /* 31DC34 802D9AE4 E7B20054 */   swc1      $f18, 0x54($sp)
    /* 31DC38 802D9AE8 A7A20042 */  sh         $v0, 0x42($sp)
    /* 31DC3C 802D9AEC 0C007654 */  jal        coss
    /* 31DC40 802D9AF0 97A4002E */   lhu       $a0, 0x2E($sp)
    /* 31DC44 802D9AF4 87AF0042 */  lh         $t7, 0x42($sp)
    /* 31DC48 802D9AF8 44825000 */  mtc1       $v0, $f10
    /* 31DC4C 802D9AFC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31DC50 802D9B00 448F4000 */  mtc1       $t7, $f8
    /* 31DC54 802D9B04 46805120 */  cvt.s.w    $f4, $f10
    /* 31DC58 802D9B08 44810800 */  mtc1       $at, $f1
    /* 31DC5C 802D9B0C 44800000 */  mtc1       $zero, $f0
    /* 31DC60 802D9B10 D7A20020 */  ldc1       $f2, 0x20($sp)
    /* 31DC64 802D9B14 8FA70054 */  lw         $a3, 0x54($sp)
    /* 31DC68 802D9B18 468044A0 */  cvt.s.w    $f18, $f8
    /* 31DC6C 802D9B1C 8FA80034 */  lw         $t0, 0x34($sp)
    /* 31DC70 802D9B20 00073400 */  sll        $a2, $a3, 16
    /* 31DC74 802D9B24 0006CC03 */  sra        $t9, $a2, 16
    /* 31DC78 802D9B28 03203025 */  or         $a2, $t9, $zero
    /* 31DC7C 802D9B2C 46002421 */  cvt.d.s    $f16, $f4
    /* 31DC80 802D9B30 460092A1 */  cvt.d.s    $f10, $f18
    /* 31DC84 802D9B34 46208183 */  div.d      $f6, $f16, $f0
    /* 31DC88 802D9B38 02002025 */  or         $a0, $s0, $zero
    /* 31DC8C 802D9B3C 46205103 */  div.d      $f4, $f10, $f0
    /* 31DC90 802D9B40 46241402 */  mul.d      $f16, $f2, $f4
    /* 31DC94 802D9B44 00000000 */  nop
    /* 31DC98 802D9B48 46303202 */  mul.d      $f8, $f6, $f16
    /* 31DC9C 802D9B4C 4620448D */  trunc.w.d  $f18, $f8
    /* 31DCA0 802D9B50 44039000 */  mfc1       $v1, $f18
    /* 31DCA4 802D9B54 10E00007 */  beqz       $a3, .L802D9B74_31DCC4
    /* 31DCA8 802D9B58 00000000 */   nop
    /* 31DCAC 802D9B5C 86050006 */  lh         $a1, 0x6($s0)
    /* 31DCB0 802D9B60 AFA30050 */  sw         $v1, 0x50($sp)
    /* 31DCB4 802D9B64 0C0408BD */  jal        func_801022F4_1112A4
    /* 31DCB8 802D9B68 AFA80034 */   sw        $t0, 0x34($sp)
    /* 31DCBC 802D9B6C 8FA30050 */  lw         $v1, 0x50($sp)
    /* 31DCC0 802D9B70 8FA80034 */  lw         $t0, 0x34($sp)
  .L802D9B74_31DCC4:
    /* 31DCC4 802D9B74 1060000B */  beqz       $v1, .L802D9BA4_31DCF4
    /* 31DCC8 802D9B78 02002025 */   or        $a0, $s0, $zero
    /* 31DCCC 802D9B7C 86050006 */  lh         $a1, 0x6($s0)
    /* 31DCD0 802D9B80 00033400 */  sll        $a2, $v1, 16
    /* 31DCD4 802D9B84 00065C03 */  sra        $t3, $a2, 16
    /* 31DCD8 802D9B88 24A54000 */  addiu      $a1, $a1, 0x4000
    /* 31DCDC 802D9B8C 00054C00 */  sll        $t1, $a1, 16
    /* 31DCE0 802D9B90 00092C03 */  sra        $a1, $t1, 16
    /* 31DCE4 802D9B94 01603025 */  or         $a2, $t3, $zero
    /* 31DCE8 802D9B98 0C0408BD */  jal        func_801022F4_1112A4
    /* 31DCEC 802D9B9C AFA80034 */   sw        $t0, 0x34($sp)
    /* 31DCF0 802D9BA0 8FA80034 */  lw         $t0, 0x34($sp)
  .L802D9BA4_31DCF4:
    /* 31DCF4 802D9BA4 860C0048 */  lh         $t4, 0x48($s0)
    /* 31DCF8 802D9BA8 3C01802E */  lui        $at, %hi(D_802E7B40)
    /* 31DCFC 802D9BAC D4267B40 */  ldc1       $f6, %lo(D_802E7B40)($at)
    /* 31DD00 802D9BB0 448C5000 */  mtc1       $t4, $f10
    /* 31DD04 802D9BB4 860F0012 */  lh         $t7, 0x12($s0)
    /* 31DD08 802D9BB8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 31DD0C 802D9BBC 46805121 */  cvt.d.w    $f4, $f10
    /* 31DD10 802D9BC0 C7AA0088 */  lwc1       $f10, 0x88($sp)
    /* 31DD14 802D9BC4 44819000 */  mtc1       $at, $f18
    /* 31DD18 802D9BC8 86040000 */  lh         $a0, 0x0($s0)
    /* 31DD1C 802D9BCC 86050004 */  lh         $a1, 0x4($s0)
    /* 31DD20 802D9BD0 46262402 */  mul.d      $f16, $f4, $f6
    /* 31DD24 802D9BD4 448F3000 */  mtc1       $t7, $f6
    /* 31DD28 802D9BD8 460A9101 */  sub.s      $f4, $f18, $f10
    /* 31DD2C 802D9BDC AFA80034 */  sw         $t0, 0x34($sp)
    /* 31DD30 802D9BE0 4620820D */  trunc.w.d  $f8, $f16
    /* 31DD34 802D9BE4 46803420 */  cvt.s.w    $f16, $f6
    /* 31DD38 802D9BE8 440E4000 */  mfc1       $t6, $f8
    /* 31DD3C 802D9BEC 00000000 */  nop
    /* 31DD40 802D9BF0 A60E0048 */  sh         $t6, 0x48($s0)
    /* 31DD44 802D9BF4 46048202 */  mul.s      $f8, $f16, $f4
    /* 31DD48 802D9BF8 4600448D */  trunc.w.s  $f18, $f8
    /* 31DD4C 802D9BFC 44199000 */  mfc1       $t9, $f18
    /* 31DD50 802D9C00 0C02E134 */  jal        func_800B84D0_C7480
    /* 31DD54 802D9C04 A6190012 */   sh        $t9, 0x12($s0)
    /* 31DD58 802D9C08 3C048022 */  lui        $a0, %hi(D_80222A70)
    /* 31DD5C 802D9C0C 8C842A70 */  lw         $a0, %lo(D_80222A70)($a0)
    /* 31DD60 802D9C10 00021A03 */  sra        $v1, $v0, 8
    /* 31DD64 802D9C14 8FA80034 */  lw         $t0, 0x34($sp)
    /* 31DD68 802D9C18 0064082A */  slt        $at, $v1, $a0
    /* 31DD6C 802D9C1C 10200003 */  beqz       $at, .L802D9C2C_31DD7C
    /* 31DD70 802D9C20 00601025 */   or        $v0, $v1, $zero
    /* 31DD74 802D9C24 10000001 */  b          .L802D9C2C_31DD7C
    /* 31DD78 802D9C28 00801025 */   or        $v0, $a0, $zero
  .L802D9C2C_31DD7C:
    /* 31DD7C 802D9C2C 8FA3006C */  lw         $v1, 0x6C($sp)
    /* 31DD80 802D9C30 86090010 */  lh         $t1, 0x10($s0)
    /* 31DD84 802D9C34 860A0002 */  lh         $t2, 0x2($s0)
    /* 31DD88 802D9C38 00621821 */  addu       $v1, $v1, $v0
    /* 31DD8C 802D9C3C 93AD0063 */  lbu        $t5, 0x63($sp)
    /* 31DD90 802D9C40 012A5821 */  addu       $t3, $t1, $t2
    /* 31DD94 802D9C44 0163082A */  slt        $at, $t3, $v1
    /* 31DD98 802D9C48 1020000D */  beqz       $at, .L802D9C80_31DDD0
    /* 31DD9C 802D9C4C 93A90063 */   lbu       $t1, 0x63($sp)
    /* 31DDA0 802D9C50 000D7080 */  sll        $t6, $t5, 2
    /* 31DDA4 802D9C54 01CD7023 */  subu       $t6, $t6, $t5
    /* 31DDA8 802D9C58 000E7080 */  sll        $t6, $t6, 2
    /* 31DDAC 802D9C5C 01CD7021 */  addu       $t6, $t6, $t5
    /* 31DDB0 802D9C60 000E70C0 */  sll        $t6, $t6, 3
    /* 31DDB4 802D9C64 3C0F8025 */  lui        $t7, %hi(D_802566BE)
    /* 31DDB8 802D9C68 01EE7821 */  addu       $t7, $t7, $t6
    /* 31DDBC 802D9C6C 85EF66BE */  lh         $t7, %lo(D_802566BE)($t7)
    /* 31DDC0 802D9C70 860C0048 */  lh         $t4, 0x48($s0)
    /* 31DDC4 802D9C74 018FC021 */  addu       $t8, $t4, $t7
    /* 31DDC8 802D9C78 1000000C */  b          .L802D9CAC_31DDFC
    /* 31DDCC 802D9C7C A6180048 */   sh        $t8, 0x48($s0)
  .L802D9C80_31DDD0:
    /* 31DDD0 802D9C80 00095080 */  sll        $t2, $t1, 2
    /* 31DDD4 802D9C84 01495023 */  subu       $t2, $t2, $t1
    /* 31DDD8 802D9C88 000A5080 */  sll        $t2, $t2, 2
    /* 31DDDC 802D9C8C 01495021 */  addu       $t2, $t2, $t1
    /* 31DDE0 802D9C90 000A50C0 */  sll        $t2, $t2, 3
    /* 31DDE4 802D9C94 3C0B8025 */  lui        $t3, %hi(D_802566BE)
    /* 31DDE8 802D9C98 016A5821 */  addu       $t3, $t3, $t2
    /* 31DDEC 802D9C9C 856B66BE */  lh         $t3, %lo(D_802566BE)($t3)
    /* 31DDF0 802D9CA0 86190048 */  lh         $t9, 0x48($s0)
    /* 31DDF4 802D9CA4 032B6823 */  subu       $t5, $t9, $t3
    /* 31DDF8 802D9CA8 A60D0048 */  sh         $t5, 0x48($s0)
  .L802D9CAC_31DDFC:
    /* 31DDFC 802D9CAC 93A20073 */  lbu        $v0, 0x73($sp)
    /* 31DE00 802D9CB0 24010001 */  addiu      $at, $zero, 0x1
    /* 31DE04 802D9CB4 240E0001 */  addiu      $t6, $zero, 0x1
    /* 31DE08 802D9CB8 1040000B */  beqz       $v0, .L802D9CE8_31DE38
    /* 31DE0C 802D9CBC 240C0001 */   addiu     $t4, $zero, 0x1
    /* 31DE10 802D9CC0 1041000D */  beq        $v0, $at, .L802D9CF8_31DE48
    /* 31DE14 802D9CC4 87A5007A */   lh        $a1, 0x7A($sp)
    /* 31DE18 802D9CC8 24010002 */  addiu      $at, $zero, 0x2
    /* 31DE1C 802D9CCC 10410020 */  beq        $v0, $at, .L802D9D50_31DEA0
    /* 31DE20 802D9CD0 87A5007A */   lh        $a1, 0x7A($sp)
    /* 31DE24 802D9CD4 24010003 */  addiu      $at, $zero, 0x3
    /* 31DE28 802D9CD8 10410033 */  beq        $v0, $at, .L802D9DA8_31DEF8
    /* 31DE2C 802D9CDC 87A5007A */   lh        $a1, 0x7A($sp)
    /* 31DE30 802D9CE0 10000042 */  b          .L802D9DEC_31DF3C
    /* 31DE34 802D9CE4 87A5007A */   lh        $a1, 0x7A($sp)
  .L802D9CE8_31DE38:
    /* 31DE38 802D9CE8 AFAE0044 */  sw         $t6, 0x44($sp)
    /* 31DE3C 802D9CEC AFAC0048 */  sw         $t4, 0x48($sp)
    /* 31DE40 802D9CF0 1000003E */  b          .L802D9DEC_31DF3C
    /* 31DE44 802D9CF4 87A5007A */   lh        $a1, 0x7A($sp)
  .L802D9CF8_31DE48:
    /* 31DE48 802D9CF8 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 31DE4C 802D9CFC 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 31DE50 802D9D00 0005C100 */  sll        $t8, $a1, 4
    /* 31DE54 802D9D04 03091021 */  addu       $v0, $t8, $t1
    /* 31DE58 802D9D08 9443000A */  lhu        $v1, 0xA($v0)
    /* 31DE5C 802D9D0C 87A4007E */  lh         $a0, 0x7E($sp)
    /* 31DE60 802D9D10 240F0001 */  addiu      $t7, $zero, 0x1
    /* 31DE64 802D9D14 00035400 */  sll        $t2, $v1, 16
    /* 31DE68 802D9D18 000ACC03 */  sra        $t9, $t2, 16
    /* 31DE6C 802D9D1C 0324082A */  slt        $at, $t9, $a0
    /* 31DE70 802D9D20 10200003 */  beqz       $at, .L802D9D30_31DE80
    /* 31DE74 802D9D24 AFAF0048 */   sw        $t7, 0x48($sp)
    /* 31DE78 802D9D28 246B0190 */  addiu      $t3, $v1, 0x190
    /* 31DE7C 802D9D2C A44B000A */  sh         $t3, 0xA($v0)
  .L802D9D30_31DE80:
    /* 31DE80 802D9D30 9502000A */  lhu        $v0, 0xA($t0)
    /* 31DE84 802D9D34 00026C00 */  sll        $t5, $v0, 16
    /* 31DE88 802D9D38 000D7403 */  sra        $t6, $t5, 16
    /* 31DE8C 802D9D3C 01C4082A */  slt        $at, $t6, $a0
    /* 31DE90 802D9D40 1020002A */  beqz       $at, .L802D9DEC_31DF3C
    /* 31DE94 802D9D44 244C0190 */   addiu     $t4, $v0, 0x190
    /* 31DE98 802D9D48 10000028 */  b          .L802D9DEC_31DF3C
    /* 31DE9C 802D9D4C A50C000A */   sh        $t4, 0xA($t0)
  .L802D9D50_31DEA0:
    /* 31DEA0 802D9D50 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 31DEA4 802D9D54 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 31DEA8 802D9D58 0005C100 */  sll        $t8, $a1, 4
    /* 31DEAC 802D9D5C 03091021 */  addu       $v0, $t8, $t1
    /* 31DEB0 802D9D60 9443000A */  lhu        $v1, 0xA($v0)
    /* 31DEB4 802D9D64 87A40082 */  lh         $a0, 0x82($sp)
    /* 31DEB8 802D9D68 240F0001 */  addiu      $t7, $zero, 0x1
    /* 31DEBC 802D9D6C 00035400 */  sll        $t2, $v1, 16
    /* 31DEC0 802D9D70 000ACC03 */  sra        $t9, $t2, 16
    /* 31DEC4 802D9D74 0099082A */  slt        $at, $a0, $t9
    /* 31DEC8 802D9D78 10200003 */  beqz       $at, .L802D9D88_31DED8
    /* 31DECC 802D9D7C AFAF0048 */   sw        $t7, 0x48($sp)
    /* 31DED0 802D9D80 246BFE70 */  addiu      $t3, $v1, -0x190
    /* 31DED4 802D9D84 A44B000A */  sh         $t3, 0xA($v0)
  .L802D9D88_31DED8:
    /* 31DED8 802D9D88 9502000A */  lhu        $v0, 0xA($t0)
    /* 31DEDC 802D9D8C 00026C00 */  sll        $t5, $v0, 16
    /* 31DEE0 802D9D90 000D7403 */  sra        $t6, $t5, 16
    /* 31DEE4 802D9D94 008E082A */  slt        $at, $a0, $t6
    /* 31DEE8 802D9D98 10200014 */  beqz       $at, .L802D9DEC_31DF3C
    /* 31DEEC 802D9D9C 244CFE70 */   addiu     $t4, $v0, -0x190
    /* 31DEF0 802D9DA0 10000012 */  b          .L802D9DEC_31DF3C
    /* 31DEF4 802D9DA4 A50C000A */   sh        $t4, 0xA($t0)
  .L802D9DA8_31DEF8:
    /* 31DEF8 802D9DA8 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 31DEFC 802D9DAC 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 31DF00 802D9DB0 0005C100 */  sll        $t8, $a1, 4
    /* 31DF04 802D9DB4 03091021 */  addu       $v0, $t8, $t1
    /* 31DF08 802D9DB8 94430008 */  lhu        $v1, 0x8($v0)
    /* 31DF0C 802D9DBC 87AB0086 */  lh         $t3, 0x86($sp)
    /* 31DF10 802D9DC0 240F0001 */  addiu      $t7, $zero, 0x1
    /* 31DF14 802D9DC4 00035400 */  sll        $t2, $v1, 16
    /* 31DF18 802D9DC8 000ACC03 */  sra        $t9, $t2, 16
    /* 31DF1C 802D9DCC 032B082A */  slt        $at, $t9, $t3
    /* 31DF20 802D9DD0 10200006 */  beqz       $at, .L802D9DEC_31DF3C
    /* 31DF24 802D9DD4 AFAF0044 */   sw        $t7, 0x44($sp)
    /* 31DF28 802D9DD8 246D0190 */  addiu      $t5, $v1, 0x190
    /* 31DF2C 802D9DDC A44D0008 */  sh         $t5, 0x8($v0)
    /* 31DF30 802D9DE0 950E0008 */  lhu        $t6, 0x8($t0)
    /* 31DF34 802D9DE4 25CC0190 */  addiu      $t4, $t6, 0x190
    /* 31DF38 802D9DE8 A50C0008 */  sh         $t4, 0x8($t0)
  .L802D9DEC_31DF3C:
    /* 31DF3C 802D9DEC 8FAF0044 */  lw         $t7, 0x44($sp)
    /* 31DF40 802D9DF0 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 31DF44 802D9DF4 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 31DF48 802D9DF8 11E00018 */  beqz       $t7, .L802D9E5C_31DFAC
    /* 31DF4C 802D9DFC 0005C100 */   sll       $t8, $a1, 4
    /* 31DF50 802D9E00 03091021 */  addu       $v0, $t8, $t1
    /* 31DF54 802D9E04 9443000A */  lhu        $v1, 0xA($v0)
    /* 31DF58 802D9E08 00032400 */  sll        $a0, $v1, 16
    /* 31DF5C 802D9E0C 00045403 */  sra        $t2, $a0, 16
    /* 31DF60 802D9E10 05410004 */  bgez       $t2, .L802D9E24_31DF74
    /* 31DF64 802D9E14 01402025 */   or        $a0, $t2, $zero
    /* 31DF68 802D9E18 24790190 */  addiu      $t9, $v1, 0x190
    /* 31DF6C 802D9E1C 10000004 */  b          .L802D9E30_31DF80
    /* 31DF70 802D9E20 A459000A */   sh        $t9, 0xA($v0)
  .L802D9E24_31DF74:
    /* 31DF74 802D9E24 18800002 */  blez       $a0, .L802D9E30_31DF80
    /* 31DF78 802D9E28 246BFE70 */   addiu     $t3, $v1, -0x190
    /* 31DF7C 802D9E2C A44B000A */  sh         $t3, 0xA($v0)
  .L802D9E30_31DF80:
    /* 31DF80 802D9E30 9502000A */  lhu        $v0, 0xA($t0)
    /* 31DF84 802D9E34 00021C00 */  sll        $v1, $v0, 16
    /* 31DF88 802D9E38 00036C03 */  sra        $t5, $v1, 16
    /* 31DF8C 802D9E3C 05A10004 */  bgez       $t5, .L802D9E50_31DFA0
    /* 31DF90 802D9E40 01A01825 */   or        $v1, $t5, $zero
    /* 31DF94 802D9E44 244E0190 */  addiu      $t6, $v0, 0x190
    /* 31DF98 802D9E48 10000004 */  b          .L802D9E5C_31DFAC
    /* 31DF9C 802D9E4C A50E000A */   sh        $t6, 0xA($t0)
  .L802D9E50_31DFA0:
    /* 31DFA0 802D9E50 18600002 */  blez       $v1, .L802D9E5C_31DFAC
    /* 31DFA4 802D9E54 244CFE70 */   addiu     $t4, $v0, -0x190
    /* 31DFA8 802D9E58 A50C000A */  sh         $t4, 0xA($t0)
  .L802D9E5C_31DFAC:
    /* 31DFAC 802D9E5C 8FAF0048 */  lw         $t7, 0x48($sp)
    /* 31DFB0 802D9E60 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 31DFB4 802D9E64 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 31DFB8 802D9E68 11E00013 */  beqz       $t7, .L802D9EB8_31E008
    /* 31DFBC 802D9E6C 0005C100 */   sll       $t8, $a1, 4
    /* 31DFC0 802D9E70 03091021 */  addu       $v0, $t8, $t1
    /* 31DFC4 802D9E74 94430008 */  lhu        $v1, 0x8($v0)
    /* 31DFC8 802D9E78 00032400 */  sll        $a0, $v1, 16
    /* 31DFCC 802D9E7C 00045403 */  sra        $t2, $a0, 16
    /* 31DFD0 802D9E80 05410007 */  bgez       $t2, .L802D9EA0_31DFF0
    /* 31DFD4 802D9E84 01402025 */   or        $a0, $t2, $zero
    /* 31DFD8 802D9E88 24790190 */  addiu      $t9, $v1, 0x190
    /* 31DFDC 802D9E8C A4590008 */  sh         $t9, 0x8($v0)
    /* 31DFE0 802D9E90 950B0008 */  lhu        $t3, 0x8($t0)
    /* 31DFE4 802D9E94 256D0190 */  addiu      $t5, $t3, 0x190
    /* 31DFE8 802D9E98 10000007 */  b          .L802D9EB8_31E008
    /* 31DFEC 802D9E9C A50D0008 */   sh        $t5, 0x8($t0)
  .L802D9EA0_31DFF0:
    /* 31DFF0 802D9EA0 18800005 */  blez       $a0, .L802D9EB8_31E008
    /* 31DFF4 802D9EA4 246EFE70 */   addiu     $t6, $v1, -0x190
    /* 31DFF8 802D9EA8 A44E0008 */  sh         $t6, 0x8($v0)
    /* 31DFFC 802D9EAC 950C0008 */  lhu        $t4, 0x8($t0)
    /* 31E000 802D9EB0 258FFE70 */  addiu      $t7, $t4, -0x190
    /* 31E004 802D9EB4 A50F0008 */  sh         $t7, 0x8($t0)
  .L802D9EB8_31E008:
    /* 31E008 802D9EB8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 31E00C 802D9EBC 8FB00018 */  lw         $s0, 0x18($sp)
    /* 31E010 802D9EC0 27BD0068 */  addiu      $sp, $sp, 0x68
    /* 31E014 802D9EC4 03E00008 */  jr         $ra
    /* 31E018 802D9EC8 00000000 */   nop
endlabel func_802D997C_31DACC
