nonmatching func_802D6F7C_18FA8C, 0x3B8

glabel func_802D6F7C_18FA8C
    /* 18FA8C 802D6F7C 3C0E8025 */  lui        $t6, %hi(D_80257DB4)
    /* 18FA90 802D6F80 85CE7DB4 */  lh         $t6, %lo(D_80257DB4)($t6)
    /* 18FA94 802D6F84 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 18FA98 802D6F88 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 18FA9C 802D6F8C 000E7843 */  sra        $t7, $t6, 1
    /* 18FAA0 802D6F90 448F2000 */  mtc1       $t7, $f4
    /* 18FAA4 802D6F94 3C040905 */  lui        $a0, %hi(D_9052A00)
    /* 18FAA8 802D6F98 AFB00020 */  sw         $s0, 0x20($sp)
    /* 18FAAC 802D6F9C 468021A0 */  cvt.s.w    $f6, $f4
    /* 18FAB0 802D6FA0 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 18FAB4 802D6FA4 24842A00 */  addiu      $a0, $a0, %lo(D_9052A00)
    /* 18FAB8 802D6FA8 0C0047E4 */  jal        func_80011F90_12B90
    /* 18FABC 802D6FAC E7A6005C */   swc1      $f6, 0x5C($sp)
    /* 18FAC0 802D6FB0 3C040905 */  lui        $a0, %hi(D_9052AC0)
    /* 18FAC4 802D6FB4 AFA20030 */  sw         $v0, 0x30($sp)
    /* 18FAC8 802D6FB8 0C0047E4 */  jal        func_80011F90_12B90
    /* 18FACC 802D6FBC 24842AC0 */   addiu     $a0, $a0, %lo(D_9052AC0)
    /* 18FAD0 802D6FC0 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 18FAD4 802D6FC4 26102B34 */  addiu      $s0, $s0, %lo(D_80052B34)
    /* 18FAD8 802D6FC8 8E180000 */  lw         $t8, 0x0($s0)
    /* 18FADC 802D6FCC AFA2002C */  sw         $v0, 0x2C($sp)
    /* 18FAE0 802D6FD0 0C007660 */  jal        sins
    /* 18FAE4 802D6FD4 97040006 */   lhu       $a0, 0x6($t8)
    /* 18FAE8 802D6FD8 44825000 */  mtc1       $v0, $f10
    /* 18FAEC 802D6FDC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 18FAF0 802D6FE0 44812800 */  mtc1       $at, $f5
    /* 18FAF4 802D6FE4 46805420 */  cvt.s.w    $f16, $f10
    /* 18FAF8 802D6FE8 44802000 */  mtc1       $zero, $f4
    /* 18FAFC 802D6FEC C7A8005C */  lwc1       $f8, 0x5C($sp)
    /* 18FB00 802D6FF0 8E030000 */  lw         $v1, 0x0($s0)
    /* 18FB04 802D6FF4 46004521 */  cvt.d.s    $f20, $f8
    /* 18FB08 802D6FF8 460084A1 */  cvt.d.s    $f18, $f16
    /* 18FB0C 802D6FFC C46A004C */  lwc1       $f10, 0x4C($v1)
    /* 18FB10 802D7000 46249183 */  div.d      $f6, $f18, $f4
    /* 18FB14 802D7004 46005421 */  cvt.d.s    $f16, $f10
    /* 18FB18 802D7008 46343202 */  mul.d      $f8, $f6, $f20
    /* 18FB1C 802D700C 46304480 */  add.d      $f18, $f8, $f16
    /* 18FB20 802D7010 46209120 */  cvt.s.d    $f4, $f18
    /* 18FB24 802D7014 E7A40058 */  swc1       $f4, 0x58($sp)
    /* 18FB28 802D7018 0C007654 */  jal        coss
    /* 18FB2C 802D701C 94640006 */   lhu       $a0, 0x6($v1)
    /* 18FB30 802D7020 44823000 */  mtc1       $v0, $f6
    /* 18FB34 802D7024 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 18FB38 802D7028 44818800 */  mtc1       $at, $f17
    /* 18FB3C 802D702C 468032A0 */  cvt.s.w    $f10, $f6
    /* 18FB40 802D7030 44808000 */  mtc1       $zero, $f16
    /* 18FB44 802D7034 8E190000 */  lw         $t9, 0x0($s0)
    /* 18FB48 802D7038 3C018005 */  lui        $at, %hi(D_8004DCAC)
    /* 18FB4C 802D703C C7260054 */  lwc1       $f6, 0x54($t9)
    /* 18FB50 802D7040 46005221 */  cvt.d.s    $f8, $f10
    /* 18FB54 802D7044 46304483 */  div.d      $f18, $f8, $f16
    /* 18FB58 802D7048 C430DCAC */  lwc1       $f16, %lo(D_8004DCAC)($at)
    /* 18FB5C 802D704C 3C018005 */  lui        $at, %hi(D_8004DCB0)
    /* 18FB60 802D7050 460032A1 */  cvt.d.s    $f10, $f6
    /* 18FB64 802D7054 C426DCB0 */  lwc1       $f6, %lo(D_8004DCB0)($at)
    /* 18FB68 802D7058 46349102 */  mul.d      $f4, $f18, $f20
    /* 18FB6C 802D705C C7B20058 */  lwc1       $f18, 0x58($sp)
    /* 18FB70 802D7060 46128001 */  sub.s      $f0, $f16, $f18
    /* 18FB74 802D7064 46245201 */  sub.d      $f8, $f10, $f4
    /* 18FB78 802D7068 46000282 */  mul.s      $f10, $f0, $f0
    /* 18FB7C 802D706C 462043A0 */  cvt.s.d    $f14, $f8
    /* 18FB80 802D7070 46067081 */  sub.s      $f2, $f14, $f6
    /* 18FB84 802D7074 E7AE0054 */  swc1       $f14, 0x54($sp)
    /* 18FB88 802D7078 46021102 */  mul.s      $f4, $f2, $f2
    /* 18FB8C 802D707C 0C007650 */  jal        sqrtf
    /* 18FB90 802D7080 46045300 */   add.s     $f12, $f10, $f4
    /* 18FB94 802D7084 C7B20058 */  lwc1       $f18, 0x58($sp)
    /* 18FB98 802D7088 C7B00054 */  lwc1       $f16, 0x54($sp)
    /* 18FB9C 802D708C 3C018005 */  lui        $at, %hi(D_8004DCAC)
    /* 18FBA0 802D7090 C42ADCAC */  lwc1       $f10, %lo(D_8004DCAC)($at)
    /* 18FBA4 802D7094 3C018005 */  lui        $at, %hi(D_8004DCB0)
    /* 18FBA8 802D7098 C428DCB0 */  lwc1       $f8, %lo(D_8004DCB0)($at)
    /* 18FBAC 802D709C 460A9301 */  sub.s      $f12, $f18, $f10
    /* 18FBB0 802D70A0 E7A00048 */  swc1       $f0, 0x48($sp)
    /* 18FBB4 802D70A4 0C000E09 */  jal        func_80003824_4424
    /* 18FBB8 802D70A8 46088381 */   sub.s     $f14, $f16, $f8
    /* 18FBBC 802D70AC 8E080000 */  lw         $t0, 0x0($s0)
    /* 18FBC0 802D70B0 85090006 */  lh         $t1, 0x6($t0)
    /* 18FBC4 802D70B4 00495823 */  subu       $t3, $v0, $t1
    /* 18FBC8 802D70B8 0C007654 */  jal        coss
    /* 18FBCC 802D70BC 3164FFFF */   andi      $a0, $t3, 0xFFFF
    /* 18FBD0 802D70C0 44824000 */  mtc1       $v0, $f8
    /* 18FBD4 802D70C4 C7AA0058 */  lwc1       $f10, 0x58($sp)
    /* 18FBD8 802D70C8 C7A40054 */  lwc1       $f4, 0x54($sp)
    /* 18FBDC 802D70CC 46804420 */  cvt.s.w    $f16, $f8
    /* 18FBE0 802D70D0 3C018005 */  lui        $at, %hi(D_8004DCAC)
    /* 18FBE4 802D70D4 E42ADCAC */  swc1       $f10, %lo(D_8004DCAC)($at)
    /* 18FBE8 802D70D8 3C018005 */  lui        $at, %hi(D_8004DCB0)
    /* 18FBEC 802D70DC E424DCB0 */  swc1       $f4, %lo(D_8004DCB0)($at)
    /* 18FBF0 802D70E0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 18FBF4 802D70E4 44813800 */  mtc1       $at, $f7
    /* 18FBF8 802D70E8 44803000 */  mtc1       $zero, $f6
    /* 18FBFC 802D70EC 460084A1 */  cvt.d.s    $f18, $f16
    /* 18FC00 802D70F0 C7A80048 */  lwc1       $f8, 0x48($sp)
    /* 18FC04 802D70F4 46269283 */  div.d      $f10, $f18, $f6
    /* 18FC08 802D70F8 3C0141A8 */  lui        $at, (0x41A80000 >> 16)
    /* 18FC0C 802D70FC 8FA60030 */  lw         $a2, 0x30($sp)
    /* 18FC10 802D7100 2403000B */  addiu      $v1, $zero, 0xB
    /* 18FC14 802D7104 46004407 */  neg.s      $f16, $f8
    /* 18FC18 802D7108 44814000 */  mtc1       $at, $f8
    /* 18FC1C 802D710C 460084A1 */  cvt.d.s    $f18, $f16
    /* 18FC20 802D7110 24C400B0 */  addiu      $a0, $a2, 0xB0
    /* 18FC24 802D7114 46205107 */  neg.d      $f4, $f10
    /* 18FC28 802D7118 46322182 */  mul.d      $f6, $f4, $f18
    /* 18FC2C 802D711C 462032A0 */  cvt.s.d    $f10, $f6
    /* 18FC30 802D7120 46085402 */  mul.s      $f16, $f10, $f8
    /* 18FC34 802D7124 4600810D */  trunc.w.s  $f4, $f16
    /* 18FC38 802D7128 44052000 */  mfc1       $a1, $f4
    /* 18FC3C 802D712C 00000000 */  nop
  .L802D7130_18FC40:
    /* 18FC40 802D7130 848D0008 */  lh         $t5, 0x8($a0)
    /* 18FC44 802D7134 00601025 */  or         $v0, $v1, $zero
    /* 18FC48 802D7138 2484FFF0 */  addiu      $a0, $a0, -0x10
    /* 18FC4C 802D713C 01A57021 */  addu       $t6, $t5, $a1
    /* 18FC50 802D7140 A48E0018 */  sh         $t6, 0x18($a0)
    /* 18FC54 802D7144 1460FFFA */  bnez       $v1, .L802D7130_18FC40
    /* 18FC58 802D7148 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 18FC5C 802D714C 84C50018 */  lh         $a1, 0x18($a2)
    /* 18FC60 802D7150 2403000B */  addiu      $v1, $zero, 0xB
    /* 18FC64 802D7154 24C400B0 */  addiu      $a0, $a2, 0xB0
    /* 18FC68 802D7158 00057B03 */  sra        $t7, $a1, 12
    /* 18FC6C 802D715C 000F2B00 */  sll        $a1, $t7, 12
  .L802D7160_18FC70:
    /* 18FC70 802D7160 84990008 */  lh         $t9, 0x8($a0)
    /* 18FC74 802D7164 00601025 */  or         $v0, $v1, $zero
    /* 18FC78 802D7168 2484FFF0 */  addiu      $a0, $a0, -0x10
    /* 18FC7C 802D716C 03254023 */  subu       $t0, $t9, $a1
    /* 18FC80 802D7170 A4880018 */  sh         $t0, 0x18($a0)
    /* 18FC84 802D7174 1460FFFA */  bnez       $v1, .L802D7160_18FC70
    /* 18FC88 802D7178 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 18FC8C 802D717C 8E090000 */  lw         $t1, 0x0($s0)
    /* 18FC90 802D7180 0C007660 */  jal        sins
    /* 18FC94 802D7184 95240006 */   lhu       $a0, 0x6($t1)
    /* 18FC98 802D7188 44829000 */  mtc1       $v0, $f18
    /* 18FC9C 802D718C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 18FCA0 802D7190 44814800 */  mtc1       $at, $f9
    /* 18FCA4 802D7194 468091A0 */  cvt.s.w    $f6, $f18
    /* 18FCA8 802D7198 44804000 */  mtc1       $zero, $f8
    /* 18FCAC 802D719C 8E030000 */  lw         $v1, 0x0($s0)
    /* 18FCB0 802D71A0 C472004C */  lwc1       $f18, 0x4C($v1)
    /* 18FCB4 802D71A4 460032A1 */  cvt.d.s    $f10, $f6
    /* 18FCB8 802D71A8 46285403 */  div.d      $f16, $f10, $f8
    /* 18FCBC 802D71AC 460091A1 */  cvt.d.s    $f6, $f18
    /* 18FCC0 802D71B0 46348102 */  mul.d      $f4, $f16, $f20
    /* 18FCC4 802D71B4 46243281 */  sub.d      $f10, $f6, $f4
    /* 18FCC8 802D71B8 46205220 */  cvt.s.d    $f8, $f10
    /* 18FCCC 802D71BC E7A80050 */  swc1       $f8, 0x50($sp)
    /* 18FCD0 802D71C0 0C007654 */  jal        coss
    /* 18FCD4 802D71C4 94640006 */   lhu       $a0, 0x6($v1)
    /* 18FCD8 802D71C8 44828000 */  mtc1       $v0, $f16
    /* 18FCDC 802D71CC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 18FCE0 802D71D0 44812800 */  mtc1       $at, $f5
    /* 18FCE4 802D71D4 468084A0 */  cvt.s.w    $f18, $f16
    /* 18FCE8 802D71D8 44802000 */  mtc1       $zero, $f4
    /* 18FCEC 802D71DC 8E0A0000 */  lw         $t2, 0x0($s0)
    /* 18FCF0 802D71E0 3C018005 */  lui        $at, %hi(D_8004DCB4)
    /* 18FCF4 802D71E4 C5500054 */  lwc1       $f16, 0x54($t2)
    /* 18FCF8 802D71E8 460091A1 */  cvt.d.s    $f6, $f18
    /* 18FCFC 802D71EC 46243283 */  div.d      $f10, $f6, $f4
    /* 18FD00 802D71F0 C424DCB4 */  lwc1       $f4, %lo(D_8004DCB4)($at)
    /* 18FD04 802D71F4 3C018005 */  lui        $at, %hi(D_8004DCB8)
    /* 18FD08 802D71F8 460084A1 */  cvt.d.s    $f18, $f16
    /* 18FD0C 802D71FC C430DCB8 */  lwc1       $f16, %lo(D_8004DCB8)($at)
    /* 18FD10 802D7200 46345202 */  mul.d      $f8, $f10, $f20
    /* 18FD14 802D7204 C7AA0050 */  lwc1       $f10, 0x50($sp)
    /* 18FD18 802D7208 460A2001 */  sub.s      $f0, $f4, $f10
    /* 18FD1C 802D720C 46324180 */  add.d      $f6, $f8, $f18
    /* 18FD20 802D7210 46000202 */  mul.s      $f8, $f0, $f0
    /* 18FD24 802D7214 462033A0 */  cvt.s.d    $f14, $f6
    /* 18FD28 802D7218 46107081 */  sub.s      $f2, $f14, $f16
    /* 18FD2C 802D721C E7AE004C */  swc1       $f14, 0x4C($sp)
    /* 18FD30 802D7220 46021482 */  mul.s      $f18, $f2, $f2
    /* 18FD34 802D7224 0C007650 */  jal        sqrtf
    /* 18FD38 802D7228 46124300 */   add.s     $f12, $f8, $f18
    /* 18FD3C 802D722C C7B4004C */  lwc1       $f20, 0x4C($sp)
    /* 18FD40 802D7230 C7B20050 */  lwc1       $f18, 0x50($sp)
    /* 18FD44 802D7234 3C018005 */  lui        $at, %hi(D_8004DCB4)
    /* 18FD48 802D7238 C430DCB4 */  lwc1       $f16, %lo(D_8004DCB4)($at)
    /* 18FD4C 802D723C 3C018005 */  lui        $at, %hi(D_8004DCB8)
    /* 18FD50 802D7240 C42ADCB8 */  lwc1       $f10, %lo(D_8004DCB8)($at)
    /* 18FD54 802D7244 46109301 */  sub.s      $f12, $f18, $f16
    /* 18FD58 802D7248 E7A00048 */  swc1       $f0, 0x48($sp)
    /* 18FD5C 802D724C 0C000E09 */  jal        func_80003824_4424
    /* 18FD60 802D7250 460AA381 */   sub.s     $f14, $f20, $f10
    /* 18FD64 802D7254 8E0B0000 */  lw         $t3, 0x0($s0)
    /* 18FD68 802D7258 856C0006 */  lh         $t4, 0x6($t3)
    /* 18FD6C 802D725C 004C7023 */  subu       $t6, $v0, $t4
    /* 18FD70 802D7260 0C007654 */  jal        coss
    /* 18FD74 802D7264 31C4FFFF */   andi      $a0, $t6, 0xFFFF
    /* 18FD78 802D7268 44824000 */  mtc1       $v0, $f8
    /* 18FD7C 802D726C C7B00050 */  lwc1       $f16, 0x50($sp)
    /* 18FD80 802D7270 3C018005 */  lui        $at, %hi(D_8004DCB4)
    /* 18FD84 802D7274 468044A0 */  cvt.s.w    $f18, $f8
    /* 18FD88 802D7278 E430DCB4 */  swc1       $f16, %lo(D_8004DCB4)($at)
    /* 18FD8C 802D727C 3C018005 */  lui        $at, %hi(D_8004DCB8)
    /* 18FD90 802D7280 E434DCB8 */  swc1       $f20, %lo(D_8004DCB8)($at)
    /* 18FD94 802D7284 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 18FD98 802D7288 44812800 */  mtc1       $at, $f5
    /* 18FD9C 802D728C 44802000 */  mtc1       $zero, $f4
    /* 18FDA0 802D7290 460091A1 */  cvt.d.s    $f6, $f18
    /* 18FDA4 802D7294 C7A80048 */  lwc1       $f8, 0x48($sp)
    /* 18FDA8 802D7298 46243283 */  div.d      $f10, $f6, $f4
    /* 18FDAC 802D729C 3C0141A8 */  lui        $at, (0x41A80000 >> 16)
    /* 18FDB0 802D72A0 8FA6002C */  lw         $a2, 0x2C($sp)
    /* 18FDB4 802D72A4 2403000B */  addiu      $v1, $zero, 0xB
    /* 18FDB8 802D72A8 46004487 */  neg.s      $f18, $f8
    /* 18FDBC 802D72AC 44814000 */  mtc1       $at, $f8
    /* 18FDC0 802D72B0 460091A1 */  cvt.d.s    $f6, $f18
    /* 18FDC4 802D72B4 24C400B0 */  addiu      $a0, $a2, 0xB0
    /* 18FDC8 802D72B8 46205407 */  neg.d      $f16, $f10
    /* 18FDCC 802D72BC 46268102 */  mul.d      $f4, $f16, $f6
    /* 18FDD0 802D72C0 462022A0 */  cvt.s.d    $f10, $f4
    /* 18FDD4 802D72C4 46085482 */  mul.s      $f18, $f10, $f8
    /* 18FDD8 802D72C8 4600940D */  trunc.w.s  $f16, $f18
    /* 18FDDC 802D72CC 44058000 */  mfc1       $a1, $f16
    /* 18FDE0 802D72D0 00000000 */  nop
  .L802D72D4_18FDE4:
    /* 18FDE4 802D72D4 84980008 */  lh         $t8, 0x8($a0)
    /* 18FDE8 802D72D8 00601025 */  or         $v0, $v1, $zero
    /* 18FDEC 802D72DC 2484FFF0 */  addiu      $a0, $a0, -0x10
    /* 18FDF0 802D72E0 0305C821 */  addu       $t9, $t8, $a1
    /* 18FDF4 802D72E4 A4990018 */  sh         $t9, 0x18($a0)
    /* 18FDF8 802D72E8 1460FFFA */  bnez       $v1, .L802D72D4_18FDE4
    /* 18FDFC 802D72EC 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 18FE00 802D72F0 84C50018 */  lh         $a1, 0x18($a2)
    /* 18FE04 802D72F4 2403000B */  addiu      $v1, $zero, 0xB
    /* 18FE08 802D72F8 24C400B0 */  addiu      $a0, $a2, 0xB0
    /* 18FE0C 802D72FC 00054303 */  sra        $t0, $a1, 12
    /* 18FE10 802D7300 00082B00 */  sll        $a1, $t0, 12
  .L802D7304_18FE14:
    /* 18FE14 802D7304 848A0008 */  lh         $t2, 0x8($a0)
    /* 18FE18 802D7308 00601025 */  or         $v0, $v1, $zero
    /* 18FE1C 802D730C 2484FFF0 */  addiu      $a0, $a0, -0x10
    /* 18FE20 802D7310 01455823 */  subu       $t3, $t2, $a1
    /* 18FE24 802D7314 A48B0018 */  sh         $t3, 0x18($a0)
    /* 18FE28 802D7318 1460FFFA */  bnez       $v1, .L802D7304_18FE14
    /* 18FE2C 802D731C 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 18FE30 802D7320 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 18FE34 802D7324 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 18FE38 802D7328 8FB00020 */  lw         $s0, 0x20($sp)
    /* 18FE3C 802D732C 03E00008 */  jr         $ra
    /* 18FE40 802D7330 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_802D6F7C_18FA8C
