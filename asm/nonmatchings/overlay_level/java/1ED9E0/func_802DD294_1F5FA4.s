nonmatching func_802DD294_1F5FA4, 0x30C

glabel func_802DD294_1F5FA4
    /* 1F5FA4 802DD294 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 1F5FA8 802DD298 AFA40038 */  sw         $a0, 0x38($sp)
    /* 1F5FAC 802DD29C 93AE003B */  lbu        $t6, 0x3B($sp)
    /* 1F5FB0 802DD2A0 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F5FB4 802DD2A4 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F5FB8 802DD2A8 000E7880 */  sll        $t7, $t6, 2
    /* 1F5FBC 802DD2AC 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F5FC0 802DD2B0 000F7900 */  sll        $t7, $t7, 4
    /* 1F5FC4 802DD2B4 01F81821 */  addu       $v1, $t7, $t8
    /* 1F5FC8 802DD2B8 84620012 */  lh         $v0, 0x12($v1)
    /* 1F5FCC 802DD2BC 84680048 */  lh         $t0, 0x48($v1)
    /* 1F5FD0 802DD2C0 9079001A */  lbu        $t9, 0x1A($v1)
    /* 1F5FD4 802DD2C4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F5FD8 802DD2C8 00483023 */  subu       $a2, $v0, $t0
    /* 1F5FDC 802DD2CC 18C00009 */  blez       $a2, .L802DD2F4_1F6004
    /* 1F5FE0 802DD2D0 A7B9001E */   sh        $t9, 0x1E($sp)
    /* 1F5FE4 802DD2D4 01C02025 */  or         $a0, $t6, $zero
    /* 1F5FE8 802DD2D8 240500D0 */  addiu      $a1, $zero, 0xD0
    /* 1F5FEC 802DD2DC AFA30018 */  sw         $v1, 0x18($sp)
    /* 1F5FF0 802DD2E0 0C04DD1A */  jal        func_80137468_146418
    /* 1F5FF4 802DD2E4 AFA60020 */   sw        $a2, 0x20($sp)
    /* 1F5FF8 802DD2E8 8FA30018 */  lw         $v1, 0x18($sp)
    /* 1F5FFC 802DD2EC 8FA60020 */  lw         $a2, 0x20($sp)
    /* 1F6000 802DD2F0 84620012 */  lh         $v0, 0x12($v1)
  .L802DD2F4_1F6004:
    /* 1F6004 802DD2F4 5440000A */  bnel       $v0, $zero, .L802DD320_1F6030
    /* 1F6008 802DD2F8 87A9001E */   lh        $t1, 0x1E($sp)
    /* 1F600C 802DD2FC 14C00007 */  bnez       $a2, .L802DD31C_1F602C
    /* 1F6010 802DD300 93A4003B */   lbu       $a0, 0x3B($sp)
    /* 1F6014 802DD304 240500D1 */  addiu      $a1, $zero, 0xD1
    /* 1F6018 802DD308 AFA30018 */  sw         $v1, 0x18($sp)
    /* 1F601C 802DD30C 0C04DD1A */  jal        func_80137468_146418
    /* 1F6020 802DD310 AFA60020 */   sw        $a2, 0x20($sp)
    /* 1F6024 802DD314 8FA30018 */  lw         $v1, 0x18($sp)
    /* 1F6028 802DD318 8FA60020 */  lw         $a2, 0x20($sp)
  .L802DD31C_1F602C:
    /* 1F602C 802DD31C 87A9001E */  lh         $t1, 0x1E($sp)
  .L802DD320_1F6030:
    /* 1F6030 802DD320 3C0B8025 */  lui        $t3, %hi(alienSpecs)
    /* 1F6034 802DD324 256B6680 */  addiu      $t3, $t3, %lo(alienSpecs)
    /* 1F6038 802DD328 00095080 */  sll        $t2, $t1, 2
    /* 1F603C 802DD32C 01495023 */  subu       $t2, $t2, $t1
    /* 1F6040 802DD330 000A5080 */  sll        $t2, $t2, 2
    /* 1F6044 802DD334 01495021 */  addu       $t2, $t2, $t1
    /* 1F6048 802DD338 000A50C0 */  sll        $t2, $t2, 3
    /* 1F604C 802DD33C 014B1021 */  addu       $v0, $t2, $t3
    /* 1F6050 802DD340 84440040 */  lh         $a0, 0x40($v0)
    /* 1F6054 802DD344 44862000 */  mtc1       $a2, $f4
    /* 1F6058 802DD348 3C01802E */  lui        $at, %hi(D_802E0F78)
    /* 1F605C 802DD34C 44844000 */  mtc1       $a0, $f8
    /* 1F6060 802DD350 468021A0 */  cvt.s.w    $f6, $f4
    /* 1F6064 802DD354 C4320F78 */  lwc1       $f18, %lo(D_802E0F78)($at)
    /* 1F6068 802DD358 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 1F606C 802DD35C 24060320 */  addiu      $a2, $zero, 0x320
    /* 1F6070 802DD360 468042A0 */  cvt.s.w    $f10, $f8
    /* 1F6074 802DD364 44814000 */  mtc1       $at, $f8
    /* 1F6078 802DD368 460A3403 */  div.s      $f16, $f6, $f10
    /* 1F607C 802DD36C 46128102 */  mul.s      $f4, $f16, $f18
    /* 1F6080 802DD370 00000000 */  nop
    /* 1F6084 802DD374 46082182 */  mul.s      $f6, $f4, $f8
    /* 1F6088 802DD378 4600328D */  trunc.w.s  $f10, $f6
    /* 1F608C 802DD37C 44055000 */  mfc1       $a1, $f10
    /* 1F6090 802DD380 00000000 */  nop
    /* 1F6094 802DD384 10A00008 */  beqz       $a1, .L802DD3A8_1F60B8
    /* 1F6098 802DD388 00000000 */   nop
    /* 1F609C 802DD38C 844F003E */  lh         $t7, 0x3E($v0)
    /* 1F60A0 802DD390 846D0012 */  lh         $t5, 0x12($v1)
    /* 1F60A4 802DD394 000FC040 */  sll        $t8, $t7, 1
    /* 1F60A8 802DD398 0098C823 */  subu       $t9, $a0, $t8
    /* 1F60AC 802DD39C 01B9082A */  slt        $at, $t5, $t9
    /* 1F60B0 802DD3A0 54200016 */  bnel       $at, $zero, .L802DD3FC_1F610C
    /* 1F60B4 802DD3A4 8468000A */   lh        $t0, 0xA($v1)
  .L802DD3A8_1F60B8:
    /* 1F60B8 802DD3A8 8462000A */  lh         $v0, 0xA($v1)
    /* 1F60BC 802DD3AC 18400008 */  blez       $v0, .L802DD3D0_1F60E0
    /* 1F60C0 802DD3B0 2444FF80 */   addiu     $a0, $v0, -0x80
    /* 1F60C4 802DD3B4 04830005 */  bgezl      $a0, .L802DD3CC_1F60DC
    /* 1F60C8 802DD3B8 A464000A */   sh        $a0, 0xA($v1)
    /* 1F60CC 802DD3BC A460000A */  sh         $zero, 0xA($v1)
    /* 1F60D0 802DD3C0 10000003 */  b          .L802DD3D0_1F60E0
    /* 1F60D4 802DD3C4 8462000A */   lh        $v0, 0xA($v1)
    /* 1F60D8 802DD3C8 A464000A */  sh         $a0, 0xA($v1)
  .L802DD3CC_1F60DC:
    /* 1F60DC 802DD3CC 8462000A */  lh         $v0, 0xA($v1)
  .L802DD3D0_1F60E0:
    /* 1F60E0 802DD3D0 0441000D */  bgez       $v0, .L802DD408_1F6118
    /* 1F60E4 802DD3D4 24440080 */   addiu     $a0, $v0, 0x80
    /* 1F60E8 802DD3D8 58800005 */  blezl      $a0, .L802DD3F0_1F6100
    /* 1F60EC 802DD3DC A464000A */   sh        $a0, 0xA($v1)
    /* 1F60F0 802DD3E0 A460000A */  sh         $zero, 0xA($v1)
    /* 1F60F4 802DD3E4 10000008 */  b          .L802DD408_1F6118
    /* 1F60F8 802DD3E8 8462000A */   lh        $v0, 0xA($v1)
    /* 1F60FC 802DD3EC A464000A */  sh         $a0, 0xA($v1)
  .L802DD3F0_1F6100:
    /* 1F6100 802DD3F0 10000005 */  b          .L802DD408_1F6118
    /* 1F6104 802DD3F4 8462000A */   lh        $v0, 0xA($v1)
    /* 1F6108 802DD3F8 8468000A */  lh         $t0, 0xA($v1)
  .L802DD3FC_1F610C:
    /* 1F610C 802DD3FC 01057023 */  subu       $t6, $t0, $a1
    /* 1F6110 802DD400 A46E000A */  sh         $t6, 0xA($v1)
    /* 1F6114 802DD404 8462000A */  lh         $v0, 0xA($v1)
  .L802DD408_1F6118:
    /* 1F6118 802DD408 2841EC79 */  slti       $at, $v0, -0x1387
    /* 1F611C 802DD40C 14200003 */  bnez       $at, .L802DD41C_1F612C
    /* 1F6120 802DD410 240501F4 */   addiu     $a1, $zero, 0x1F4
    /* 1F6124 802DD414 10000003 */  b          .L802DD424_1F6134
    /* 1F6128 802DD418 A462000A */   sh        $v0, 0xA($v1)
  .L802DD41C_1F612C:
    /* 1F612C 802DD41C 2409EC78 */  addiu      $t1, $zero, -0x1388
    /* 1F6130 802DD420 A469000A */  sh         $t1, 0xA($v1)
  .L802DD424_1F6134:
    /* 1F6134 802DD424 8462000A */  lh         $v0, 0xA($v1)
    /* 1F6138 802DD428 240A1388 */  addiu      $t2, $zero, 0x1388
    /* 1F613C 802DD42C 28411388 */  slti       $at, $v0, 0x1388
    /* 1F6140 802DD430 50200004 */  beql       $at, $zero, .L802DD444_1F6154
    /* 1F6144 802DD434 A46A000A */   sh        $t2, 0xA($v1)
    /* 1F6148 802DD438 10000002 */  b          .L802DD444_1F6154
    /* 1F614C 802DD43C A462000A */   sh        $v0, 0xA($v1)
    /* 1F6150 802DD440 A46A000A */  sh         $t2, 0xA($v1)
  .L802DD444_1F6154:
    /* 1F6154 802DD444 846B0012 */  lh         $t3, 0x12($v1)
    /* 1F6158 802DD448 93A4003B */  lbu        $a0, 0x3B($sp)
    /* 1F615C 802DD44C AFA30018 */  sw         $v1, 0x18($sp)
    /* 1F6160 802DD450 0C021D47 */  jal        func_8008751C_964CC
    /* 1F6164 802DD454 A46B0048 */   sh        $t3, 0x48($v1)
    /* 1F6168 802DD458 93A4003B */  lbu        $a0, 0x3B($sp)
    /* 1F616C 802DD45C 0C0213FA */  jal        func_80084FE8_93F98
    /* 1F6170 802DD460 24050400 */   addiu     $a1, $zero, 0x400
    /* 1F6174 802DD464 14400005 */  bnez       $v0, .L802DD47C_1F618C
    /* 1F6178 802DD468 8FA30018 */   lw        $v1, 0x18($sp)
    /* 1F617C 802DD46C 8C6C0020 */  lw         $t4, 0x20($v1)
    /* 1F6180 802DD470 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 1F6184 802DD474 01817824 */  and        $t7, $t4, $at
    /* 1F6188 802DD478 AC6F0020 */  sw         $t7, 0x20($v1)
  .L802DD47C_1F618C:
    /* 1F618C 802DD47C 8C780020 */  lw         $t8, 0x20($v1)
    /* 1F6190 802DD480 93A4003B */  lbu        $a0, 0x3B($sp)
    /* 1F6194 802DD484 24050400 */  addiu      $a1, $zero, 0x400
    /* 1F6198 802DD488 330D1000 */  andi       $t5, $t8, 0x1000
    /* 1F619C 802DD48C 11A00022 */  beqz       $t5, .L802DD518_1F6228
    /* 1F61A0 802DD490 00000000 */   nop
    /* 1F61A4 802DD494 8468001E */  lh         $t0, 0x1E($v1)
    /* 1F61A8 802DD498 84790006 */  lh         $t9, 0x6($v1)
    /* 1F61AC 802DD49C 15000032 */  bnez       $t0, .L802DD568_1F6278
    /* 1F61B0 802DD4A0 A479002A */   sh        $t9, 0x2A($v1)
    /* 1F61B4 802DD4A4 846E002C */  lh         $t6, 0x2C($v1)
    /* 1F61B8 802DD4A8 25C90001 */  addiu      $t1, $t6, 0x1
    /* 1F61BC 802DD4AC A469002C */  sh         $t1, 0x2C($v1)
    /* 1F61C0 802DD4B0 8464002C */  lh         $a0, 0x2C($v1)
    /* 1F61C4 802DD4B4 28810004 */  slti       $at, $a0, 0x4
    /* 1F61C8 802DD4B8 5020000D */  beql       $at, $zero, .L802DD4F0_1F6200
    /* 1F61CC 802DD4BC 28810004 */   slti      $at, $a0, 0x4
    /* 1F61D0 802DD4C0 906A0047 */  lbu        $t2, 0x47($v1)
    /* 1F61D4 802DD4C4 00002825 */  or         $a1, $zero, $zero
    /* 1F61D8 802DD4C8 2406000F */  addiu      $a2, $zero, 0xF
    /* 1F61DC 802DD4CC 314B0001 */  andi       $t3, $t2, 0x1
    /* 1F61E0 802DD4D0 55600007 */  bnel       $t3, $zero, .L802DD4F0_1F6200
    /* 1F61E4 802DD4D4 28810004 */   slti      $at, $a0, 0x4
    /* 1F61E8 802DD4D8 93A4003B */  lbu        $a0, 0x3B($sp)
    /* 1F61EC 802DD4DC 0C021C62 */  jal        func_80087188_96138
    /* 1F61F0 802DD4E0 AFA30018 */   sw        $v1, 0x18($sp)
    /* 1F61F4 802DD4E4 8FA30018 */  lw         $v1, 0x18($sp)
    /* 1F61F8 802DD4E8 8464002C */  lh         $a0, 0x2C($v1)
    /* 1F61FC 802DD4EC 28810004 */  slti       $at, $a0, 0x4
  .L802DD4F0_1F6200:
    /* 1F6200 802DD4F0 1420001D */  bnez       $at, .L802DD568_1F6278
    /* 1F6204 802DD4F4 93A4003B */   lbu       $a0, 0x3B($sp)
    /* 1F6208 802DD4F8 0C021241 */  jal        func_80084904_938B4
    /* 1F620C 802DD4FC AFA30018 */   sw        $v1, 0x18($sp)
    /* 1F6210 802DD500 8FA30018 */  lw         $v1, 0x18($sp)
    /* 1F6214 802DD504 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 1F6218 802DD508 8C6C0020 */  lw         $t4, 0x20($v1)
    /* 1F621C 802DD50C 01817824 */  and        $t7, $t4, $at
    /* 1F6220 802DD510 10000015 */  b          .L802DD568_1F6278
    /* 1F6224 802DD514 AC6F0020 */   sw        $t7, 0x20($v1)
  .L802DD518_1F6228:
    /* 1F6228 802DD518 0C0213FA */  jal        func_80084FE8_93F98
    /* 1F622C 802DD51C AFA30018 */   sw        $v1, 0x18($sp)
    /* 1F6230 802DD520 10400011 */  beqz       $v0, .L802DD568_1F6278
    /* 1F6234 802DD524 8FA30018 */   lw        $v1, 0x18($sp)
    /* 1F6238 802DD528 90780047 */  lbu        $t8, 0x47($v1)
    /* 1F623C 802DD52C 3C088005 */  lui        $t0, %hi(D_80052B34)
    /* 1F6240 802DD530 330D0001 */  andi       $t5, $t8, 0x1
    /* 1F6244 802DD534 55A0000D */  bnel       $t5, $zero, .L802DD56C_1F627C
    /* 1F6248 802DD538 8462001E */   lh        $v0, 0x1E($v1)
    /* 1F624C 802DD53C 8D082B34 */  lw         $t0, %lo(D_80052B34)($t0)
    /* 1F6250 802DD540 3C198022 */  lui        $t9, %hi(D_80222A70)
    /* 1F6254 802DD544 8F392A70 */  lw         $t9, %lo(D_80222A70)($t9)
    /* 1F6258 802DD548 850E0002 */  lh         $t6, 0x2($t0)
    /* 1F625C 802DD54C 032E082A */  slt        $at, $t9, $t6
    /* 1F6260 802DD550 54200006 */  bnel       $at, $zero, .L802DD56C_1F627C
    /* 1F6264 802DD554 8462001E */   lh        $v0, 0x1E($v1)
    /* 1F6268 802DD558 8C690020 */  lw         $t1, 0x20($v1)
    /* 1F626C 802DD55C A460002C */  sh         $zero, 0x2C($v1)
    /* 1F6270 802DD560 352A1000 */  ori        $t2, $t1, 0x1000
    /* 1F6274 802DD564 AC6A0020 */  sw         $t2, 0x20($v1)
  .L802DD568_1F6278:
    /* 1F6278 802DD568 8462001E */  lh         $v0, 0x1E($v1)
  .L802DD56C_1F627C:
    /* 1F627C 802DD56C 10400002 */  beqz       $v0, .L802DD578_1F6288
    /* 1F6280 802DD570 244BFFFF */   addiu     $t3, $v0, -0x1
    /* 1F6284 802DD574 A46B001E */  sh         $t3, 0x1E($v1)
  .L802DD578_1F6288:
    /* 1F6288 802DD578 0C03892E */  jal        func_800E24B8_F1468
    /* 1F628C 802DD57C 93A4003B */   lbu       $a0, 0x3B($sp)
    /* 1F6290 802DD580 93A4003B */  lbu        $a0, 0x3B($sp)
    /* 1F6294 802DD584 2405FF06 */  addiu      $a1, $zero, -0xFA
    /* 1F6298 802DD588 0C0294F0 */  jal        func_800A53C0_B4370
    /* 1F629C 802DD58C 24060BB8 */   addiu     $a2, $zero, 0xBB8
    /* 1F62A0 802DD590 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F62A4 802DD594 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 1F62A8 802DD598 03E00008 */  jr         $ra
    /* 1F62AC 802DD59C 00000000 */   nop
endlabel func_802DD294_1F5FA4
