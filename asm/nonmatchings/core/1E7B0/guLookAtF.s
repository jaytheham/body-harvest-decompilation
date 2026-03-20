glabel guLookAtF
    /* 1E7B0 8001DBB0 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 1E7B4 8001DBB4 AFBF004C */  sw         $ra, 0x4C($sp)
    /* 1E7B8 8001DBB8 AFB00048 */  sw         $s0, 0x48($sp)
    /* 1E7BC 8001DBBC 00808025 */  or         $s0, $a0, $zero
    /* 1E7C0 8001DBC0 F7BE0040 */  sdc1       $f30, 0x40($sp)
    /* 1E7C4 8001DBC4 F7BC0038 */  sdc1       $f28, 0x38($sp)
    /* 1E7C8 8001DBC8 F7BA0030 */  sdc1       $f26, 0x30($sp)
    /* 1E7CC 8001DBCC F7B80028 */  sdc1       $f24, 0x28($sp)
    /* 1E7D0 8001DBD0 F7B60020 */  sdc1       $f22, 0x20($sp)
    /* 1E7D4 8001DBD4 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 1E7D8 8001DBD8 AFA50054 */  sw         $a1, 0x54($sp)
    /* 1E7DC 8001DBDC AFA60058 */  sw         $a2, 0x58($sp)
    /* 1E7E0 8001DBE0 0C009FE4 */  jal        guMtxIdentF
    /* 1E7E4 8001DBE4 AFA7005C */   sw        $a3, 0x5C($sp)
    /* 1E7E8 8001DBE8 C7A40060 */  lwc1       $f4, 0x60($sp)
    /* 1E7EC 8001DBEC C7A60054 */  lwc1       $f6, 0x54($sp)
    /* 1E7F0 8001DBF0 C7A80064 */  lwc1       $f8, 0x64($sp)
    /* 1E7F4 8001DBF4 C7AA0058 */  lwc1       $f10, 0x58($sp)
    /* 1E7F8 8001DBF8 46062001 */  sub.s      $f0, $f4, $f6
    /* 1E7FC 8001DBFC C7A6005C */  lwc1       $f6, 0x5C($sp)
    /* 1E800 8001DC00 C7A40068 */  lwc1       $f4, 0x68($sp)
    /* 1E804 8001DC04 460A4581 */  sub.s      $f22, $f8, $f10
    /* 1E808 8001DC08 46000202 */  mul.s      $f8, $f0, $f0
    /* 1E80C 8001DC0C 46000506 */  mov.s      $f20, $f0
    /* 1E810 8001DC10 46062601 */  sub.s      $f24, $f4, $f6
    /* 1E814 8001DC14 4616B282 */  mul.s      $f10, $f22, $f22
    /* 1E818 8001DC18 460A4100 */  add.s      $f4, $f8, $f10
    /* 1E81C 8001DC1C 4618C182 */  mul.s      $f6, $f24, $f24
    /* 1E820 8001DC20 0C007650 */  jal        sqrtf
    /* 1E824 8001DC24 46062300 */   add.s     $f12, $f4, $f6
    /* 1E828 8001DC28 3C01BFF0 */  lui        $at, (0xBFF00000 >> 16)
    /* 1E82C 8001DC2C 44814800 */  mtc1       $at, $f9
    /* 1E830 8001DC30 44804000 */  mtc1       $zero, $f8
    /* 1E834 8001DC34 460002A1 */  cvt.d.s    $f10, $f0
    /* 1E838 8001DC38 C7A60070 */  lwc1       $f6, 0x70($sp)
    /* 1E83C 8001DC3C 462A4103 */  div.d      $f4, $f8, $f10
    /* 1E840 8001DC40 C7AA0074 */  lwc1       $f10, 0x74($sp)
    /* 1E844 8001DC44 462020A0 */  cvt.s.d    $f2, $f4
    /* 1E848 8001DC48 4602A502 */  mul.s      $f20, $f20, $f2
    /* 1E84C 8001DC4C 00000000 */  nop
    /* 1E850 8001DC50 4602B582 */  mul.s      $f22, $f22, $f2
    /* 1E854 8001DC54 00000000 */  nop
    /* 1E858 8001DC58 4602C602 */  mul.s      $f24, $f24, $f2
    /* 1E85C 8001DC5C 00000000 */  nop
    /* 1E860 8001DC60 46183202 */  mul.s      $f8, $f6, $f24
    /* 1E864 8001DC64 00000000 */  nop
    /* 1E868 8001DC68 46165102 */  mul.s      $f4, $f10, $f22
    /* 1E86C 8001DC6C 46044681 */  sub.s      $f26, $f8, $f4
    /* 1E870 8001DC70 46145202 */  mul.s      $f8, $f10, $f20
    /* 1E874 8001DC74 C7A4006C */  lwc1       $f4, 0x6C($sp)
    /* 1E878 8001DC78 46182282 */  mul.s      $f10, $f4, $f24
    /* 1E87C 8001DC7C 460A4701 */  sub.s      $f28, $f8, $f10
    /* 1E880 8001DC80 46162202 */  mul.s      $f8, $f4, $f22
    /* 1E884 8001DC84 00000000 */  nop
    /* 1E888 8001DC88 46143282 */  mul.s      $f10, $f6, $f20
    /* 1E88C 8001DC8C 460A4781 */  sub.s      $f30, $f8, $f10
    /* 1E890 8001DC90 461AD102 */  mul.s      $f4, $f26, $f26
    /* 1E894 8001DC94 00000000 */  nop
    /* 1E898 8001DC98 461CE182 */  mul.s      $f6, $f28, $f28
    /* 1E89C 8001DC9C 46062200 */  add.s      $f8, $f4, $f6
    /* 1E8A0 8001DCA0 461EF282 */  mul.s      $f10, $f30, $f30
    /* 1E8A4 8001DCA4 0C007650 */  jal        sqrtf
    /* 1E8A8 8001DCA8 460A4300 */   add.s     $f12, $f8, $f10
    /* 1E8AC 8001DCAC 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* 1E8B0 8001DCB0 44812800 */  mtc1       $at, $f5
    /* 1E8B4 8001DCB4 44802000 */  mtc1       $zero, $f4
    /* 1E8B8 8001DCB8 460001A1 */  cvt.d.s    $f6, $f0
    /* 1E8BC 8001DCBC 46262203 */  div.d      $f8, $f4, $f6
    /* 1E8C0 8001DCC0 462040A0 */  cvt.s.d    $f2, $f8
    /* 1E8C4 8001DCC4 4602D682 */  mul.s      $f26, $f26, $f2
    /* 1E8C8 8001DCC8 00000000 */  nop
    /* 1E8CC 8001DCCC 4602E702 */  mul.s      $f28, $f28, $f2
    /* 1E8D0 8001DCD0 00000000 */  nop
    /* 1E8D4 8001DCD4 4602F782 */  mul.s      $f30, $f30, $f2
    /* 1E8D8 8001DCD8 00000000 */  nop
    /* 1E8DC 8001DCDC 461EB282 */  mul.s      $f10, $f22, $f30
    /* 1E8E0 8001DCE0 00000000 */  nop
    /* 1E8E4 8001DCE4 461CC102 */  mul.s      $f4, $f24, $f28
    /* 1E8E8 8001DCE8 00000000 */  nop
    /* 1E8EC 8001DCEC 461AC182 */  mul.s      $f6, $f24, $f26
    /* 1E8F0 8001DCF0 00000000 */  nop
    /* 1E8F4 8001DCF4 461EA202 */  mul.s      $f8, $f20, $f30
    /* 1E8F8 8001DCF8 46045381 */  sub.s      $f14, $f10, $f4
    /* 1E8FC 8001DCFC 461CA282 */  mul.s      $f10, $f20, $f28
    /* 1E900 8001DD00 00000000 */  nop
    /* 1E904 8001DD04 461AB102 */  mul.s      $f4, $f22, $f26
    /* 1E908 8001DD08 E7AE006C */  swc1       $f14, 0x6C($sp)
    /* 1E90C 8001DD0C 46083401 */  sub.s      $f16, $f6, $f8
    /* 1E910 8001DD10 460E7182 */  mul.s      $f6, $f14, $f14
    /* 1E914 8001DD14 00000000 */  nop
    /* 1E918 8001DD18 46108202 */  mul.s      $f8, $f16, $f16
    /* 1E91C 8001DD1C E7B00070 */  swc1       $f16, 0x70($sp)
    /* 1E920 8001DD20 46045481 */  sub.s      $f18, $f10, $f4
    /* 1E924 8001DD24 46129102 */  mul.s      $f4, $f18, $f18
    /* 1E928 8001DD28 46083280 */  add.s      $f10, $f6, $f8
    /* 1E92C 8001DD2C E7B20074 */  swc1       $f18, 0x74($sp)
    /* 1E930 8001DD30 0C007650 */  jal        sqrtf
    /* 1E934 8001DD34 46045300 */   add.s     $f12, $f10, $f4
    /* 1E938 8001DD38 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* 1E93C 8001DD3C 44813800 */  mtc1       $at, $f7
    /* 1E940 8001DD40 44803000 */  mtc1       $zero, $f6
    /* 1E944 8001DD44 46000221 */  cvt.d.s    $f8, $f0
    /* 1E948 8001DD48 C7AE006C */  lwc1       $f14, 0x6C($sp)
    /* 1E94C 8001DD4C 46283283 */  div.d      $f10, $f6, $f8
    /* 1E950 8001DD50 C7AC0070 */  lwc1       $f12, 0x70($sp)
    /* 1E954 8001DD54 C7A40074 */  lwc1       $f4, 0x74($sp)
    /* 1E958 8001DD58 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 1E95C 8001DD5C 462050A0 */  cvt.s.d    $f2, $f10
    /* 1E960 8001DD60 46027382 */  mul.s      $f14, $f14, $f2
    /* 1E964 8001DD64 00000000 */  nop
    /* 1E968 8001DD68 46026302 */  mul.s      $f12, $f12, $f2
    /* 1E96C 8001DD6C 00000000 */  nop
    /* 1E970 8001DD70 46022182 */  mul.s      $f6, $f4, $f2
    /* 1E974 8001DD74 E7A60074 */  swc1       $f6, 0x74($sp)
    /* 1E978 8001DD78 E61A0000 */  swc1       $f26, 0x0($s0)
    /* 1E97C 8001DD7C E61C0010 */  swc1       $f28, 0x10($s0)
    /* 1E980 8001DD80 E61E0020 */  swc1       $f30, 0x20($s0)
    /* 1E984 8001DD84 C7A80054 */  lwc1       $f8, 0x54($sp)
    /* 1E988 8001DD88 C7A40058 */  lwc1       $f4, 0x58($sp)
    /* 1E98C 8001DD8C 461A4282 */  mul.s      $f10, $f8, $f26
    /* 1E990 8001DD90 00000000 */  nop
    /* 1E994 8001DD94 461C2182 */  mul.s      $f6, $f4, $f28
    /* 1E998 8001DD98 C7A4005C */  lwc1       $f4, 0x5C($sp)
    /* 1E99C 8001DD9C E60E0004 */  swc1       $f14, 0x4($s0)
    /* 1E9A0 8001DDA0 E60C0014 */  swc1       $f12, 0x14($s0)
    /* 1E9A4 8001DDA4 46065200 */  add.s      $f8, $f10, $f6
    /* 1E9A8 8001DDA8 461E2282 */  mul.s      $f10, $f4, $f30
    /* 1E9AC 8001DDAC 460A4180 */  add.s      $f6, $f8, $f10
    /* 1E9B0 8001DDB0 46003107 */  neg.s      $f4, $f6
    /* 1E9B4 8001DDB4 E6040030 */  swc1       $f4, 0x30($s0)
    /* 1E9B8 8001DDB8 C7A00074 */  lwc1       $f0, 0x74($sp)
    /* 1E9BC 8001DDBC E7AC0070 */  swc1       $f12, 0x70($sp)
    /* 1E9C0 8001DDC0 E7AE006C */  swc1       $f14, 0x6C($sp)
    /* 1E9C4 8001DDC4 C7AE0054 */  lwc1       $f14, 0x54($sp)
    /* 1E9C8 8001DDC8 C7AC0058 */  lwc1       $f12, 0x58($sp)
    /* 1E9CC 8001DDCC C7A2005C */  lwc1       $f2, 0x5C($sp)
    /* 1E9D0 8001DDD0 E6000024 */  swc1       $f0, 0x24($s0)
    /* 1E9D4 8001DDD4 C7A8006C */  lwc1       $f8, 0x6C($sp)
    /* 1E9D8 8001DDD8 C7A60070 */  lwc1       $f6, 0x70($sp)
    /* 1E9DC 8001DDDC E6140008 */  swc1       $f20, 0x8($s0)
    /* 1E9E0 8001DDE0 46087282 */  mul.s      $f10, $f14, $f8
    /* 1E9E4 8001DDE4 E6160018 */  swc1       $f22, 0x18($s0)
    /* 1E9E8 8001DDE8 E6180028 */  swc1       $f24, 0x28($s0)
    /* 1E9EC 8001DDEC 46066102 */  mul.s      $f4, $f12, $f6
    /* 1E9F0 8001DDF0 46045200 */  add.s      $f8, $f10, $f4
    /* 1E9F4 8001DDF4 46001182 */  mul.s      $f6, $f2, $f0
    /* 1E9F8 8001DDF8 44800000 */  mtc1       $zero, $f0
    /* 1E9FC 8001DDFC 00000000 */  nop
    /* 1EA00 8001DE00 E600000C */  swc1       $f0, 0xC($s0)
    /* 1EA04 8001DE04 E600001C */  swc1       $f0, 0x1C($s0)
    /* 1EA08 8001DE08 E600002C */  swc1       $f0, 0x2C($s0)
    /* 1EA0C 8001DE0C 46064280 */  add.s      $f10, $f8, $f6
    /* 1EA10 8001DE10 46147202 */  mul.s      $f8, $f14, $f20
    /* 1EA14 8001DE14 00000000 */  nop
    /* 1EA18 8001DE18 46166182 */  mul.s      $f6, $f12, $f22
    /* 1EA1C 8001DE1C 46005107 */  neg.s      $f4, $f10
    /* 1EA20 8001DE20 E6040034 */  swc1       $f4, 0x34($s0)
    /* 1EA24 8001DE24 46181102 */  mul.s      $f4, $f2, $f24
    /* 1EA28 8001DE28 46064280 */  add.s      $f10, $f8, $f6
    /* 1EA2C 8001DE2C 46045200 */  add.s      $f8, $f10, $f4
    /* 1EA30 8001DE30 44815000 */  mtc1       $at, $f10
    /* 1EA34 8001DE34 46004187 */  neg.s      $f6, $f8
    /* 1EA38 8001DE38 E60A003C */  swc1       $f10, 0x3C($s0)
    /* 1EA3C 8001DE3C E6060038 */  swc1       $f6, 0x38($s0)
    /* 1EA40 8001DE40 8FBF004C */  lw         $ra, 0x4C($sp)
    /* 1EA44 8001DE44 8FB00048 */  lw         $s0, 0x48($sp)
    /* 1EA48 8001DE48 D7BE0040 */  ldc1       $f30, 0x40($sp)
    /* 1EA4C 8001DE4C D7BC0038 */  ldc1       $f28, 0x38($sp)
    /* 1EA50 8001DE50 D7BA0030 */  ldc1       $f26, 0x30($sp)
    /* 1EA54 8001DE54 D7B80028 */  ldc1       $f24, 0x28($sp)
    /* 1EA58 8001DE58 D7B60020 */  ldc1       $f22, 0x20($sp)
    /* 1EA5C 8001DE5C D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 1EA60 8001DE60 03E00008 */  jr         $ra
    /* 1EA64 8001DE64 27BD0050 */   addiu     $sp, $sp, 0x50
