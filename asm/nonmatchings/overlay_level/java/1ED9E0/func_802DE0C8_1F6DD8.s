nonmatching func_802DE0C8_1F6DD8, 0x4CC

glabel func_802DE0C8_1F6DD8
    /* 1F6DD8 802DE0C8 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F6DDC 802DE0CC 24030050 */  addiu      $v1, $zero, 0x50
    /* 1F6DE0 802DE0D0 01C30019 */  multu      $t6, $v1
    /* 1F6DE4 802DE0D4 27BDFF68 */  addiu      $sp, $sp, -0x98
    /* 1F6DE8 802DE0D8 3C028005 */  lui        $v0, %hi(alienInstances)
    /* 1F6DEC 802DE0DC 24428198 */  addiu      $v0, $v0, %lo(alienInstances)
    /* 1F6DF0 802DE0E0 AFB00040 */  sw         $s0, 0x40($sp)
    /* 1F6DF4 802DE0E4 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 1F6DF8 802DE0E8 AFA40098 */  sw         $a0, 0x98($sp)
    /* 1F6DFC 802DE0EC 01C02025 */  or         $a0, $t6, $zero
    /* 1F6E00 802DE0F0 00007812 */  mflo       $t7
    /* 1F6E04 802DE0F4 004F8021 */  addu       $s0, $v0, $t7
    /* 1F6E08 802DE0F8 92180025 */  lbu        $t8, 0x25($s0)
    /* 1F6E0C 802DE0FC 03030019 */  multu      $t8, $v1
    /* 1F6E10 802DE100 0000C812 */  mflo       $t9
    /* 1F6E14 802DE104 00594021 */  addu       $t0, $v0, $t9
    /* 1F6E18 802DE108 8D0A0020 */  lw         $t2, 0x20($t0)
    /* 1F6E1C 802DE10C 314B6000 */  andi       $t3, $t2, 0x6000
    /* 1F6E20 802DE110 5560002B */  bnel       $t3, $zero, .L802DE1C0_1F6ED0
    /* 1F6E24 802DE114 860A000C */   lh        $t2, 0xC($s0)
    /* 1F6E28 802DE118 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 1F6E2C 802DE11C 3401F000 */  ori        $at, $zero, 0xF000
    /* 1F6E30 802DE120 318DF000 */  andi       $t5, $t4, 0xF000
    /* 1F6E34 802DE124 51A10026 */  beql       $t5, $at, .L802DE1C0_1F6ED0
    /* 1F6E38 802DE128 860A000C */   lh        $t2, 0xC($s0)
    /* 1F6E3C 802DE12C 860E001E */  lh         $t6, 0x1E($s0)
    /* 1F6E40 802DE130 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 1F6E44 802DE134 55C00022 */  bnel       $t6, $zero, .L802DE1C0_1F6ED0
    /* 1F6E48 802DE138 860A000C */   lh        $t2, 0xC($s0)
    /* 1F6E4C 802DE13C 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 1F6E50 802DE140 86180000 */  lh         $t8, 0x0($s0)
    /* 1F6E54 802DE144 860B0004 */  lh         $t3, 0x4($s0)
    /* 1F6E58 802DE148 844F0000 */  lh         $t7, 0x0($v0)
    /* 1F6E5C 802DE14C 844A0004 */  lh         $t2, 0x4($v0)
    /* 1F6E60 802DE150 AFA80094 */  sw         $t0, 0x94($sp)
    /* 1F6E64 802DE154 01F8C823 */  subu       $t9, $t7, $t8
    /* 1F6E68 802DE158 014B6023 */  subu       $t4, $t2, $t3
    /* 1F6E6C 802DE15C 448C3000 */  mtc1       $t4, $f6
    /* 1F6E70 802DE160 44992000 */  mtc1       $t9, $f4
    /* 1F6E74 802DE164 468033A0 */  cvt.s.w    $f14, $f6
    /* 1F6E78 802DE168 0C000E09 */  jal        func_80003824_4424
    /* 1F6E7C 802DE16C 46802320 */   cvt.s.w   $f12, $f4
    /* 1F6E80 802DE170 860D000E */  lh         $t5, 0xE($s0)
    /* 1F6E84 802DE174 8FA80094 */  lw         $t0, 0x94($sp)
    /* 1F6E88 802DE178 004D1823 */  subu       $v1, $v0, $t5
    /* 1F6E8C 802DE17C 00037400 */  sll        $t6, $v1, 16
    /* 1F6E90 802DE180 000E7C03 */  sra        $t7, $t6, 16
    /* 1F6E94 802DE184 000F2023 */  negu       $a0, $t7
    /* 1F6E98 802DE188 008F082A */  slt        $at, $a0, $t7
    /* 1F6E9C 802DE18C 10200003 */  beqz       $at, .L802DE19C_1F6EAC
    /* 1F6EA0 802DE190 00802825 */   or        $a1, $a0, $zero
    /* 1F6EA4 802DE194 10000001 */  b          .L802DE19C_1F6EAC
    /* 1F6EA8 802DE198 01E02825 */   or        $a1, $t7, $zero
  .L802DE19C_1F6EAC:
    /* 1F6EAC 802DE19C 28A14001 */  slti       $at, $a1, 0x4001
    /* 1F6EB0 802DE1A0 542000F8 */  bnel       $at, $zero, .L802DE584_1F7294
    /* 1F6EB4 802DE1A4 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F6EB8 802DE1A8 8D180020 */  lw         $t8, 0x20($t0)
    /* 1F6EBC 802DE1AC 37194000 */  ori        $t9, $t8, 0x4000
    /* 1F6EC0 802DE1B0 AD190020 */  sw         $t9, 0x20($t0)
    /* 1F6EC4 802DE1B4 100000F2 */  b          .L802DE580_1F7290
    /* 1F6EC8 802DE1B8 A2000036 */   sb        $zero, 0x36($s0)
    /* 1F6ECC 802DE1BC 860A000C */  lh         $t2, 0xC($s0)
  .L802DE1C0_1F6ED0:
    /* 1F6ED0 802DE1C0 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 1F6ED4 802DE1C4 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 1F6ED8 802DE1C8 A7AA0088 */  sh         $t2, 0x88($sp)
    /* 1F6EDC 802DE1CC 87AB0088 */  lh         $t3, 0x88($sp)
    /* 1F6EE0 802DE1D0 24050006 */  addiu      $a1, $zero, 0x6
    /* 1F6EE4 802DE1D4 24060004 */  addiu      $a2, $zero, 0x4
    /* 1F6EE8 802DE1D8 000B6100 */  sll        $t4, $t3, 4
    /* 1F6EEC 802DE1DC 004C6821 */  addu       $t5, $v0, $t4
    /* 1F6EF0 802DE1E0 81AE000C */  lb         $t6, 0xC($t5)
    /* 1F6EF4 802DE1E4 27A70088 */  addiu      $a3, $sp, 0x88
    /* 1F6EF8 802DE1E8 000E7900 */  sll        $t7, $t6, 4
    /* 1F6EFC 802DE1EC 004FC021 */  addu       $t8, $v0, $t7
    /* 1F6F00 802DE1F0 8319000C */  lb         $t9, 0xC($t8)
    /* 1F6F04 802DE1F4 A7AE008A */  sh         $t6, 0x8A($sp)
    /* 1F6F08 802DE1F8 00195100 */  sll        $t2, $t9, 4
    /* 1F6F0C 802DE1FC 004A5821 */  addu       $t3, $v0, $t2
    /* 1F6F10 802DE200 816C000C */  lb         $t4, 0xC($t3)
    /* 1F6F14 802DE204 A7B9008C */  sh         $t9, 0x8C($sp)
    /* 1F6F18 802DE208 000C6900 */  sll        $t5, $t4, 4
    /* 1F6F1C 802DE20C 004D7021 */  addu       $t6, $v0, $t5
    /* 1F6F20 802DE210 81CF000C */  lb         $t7, 0xC($t6)
    /* 1F6F24 802DE214 A7AC008E */  sh         $t4, 0x8E($sp)
    /* 1F6F28 802DE218 3C0D802E */  lui        $t5, %hi(D_802E0C9C)
    /* 1F6F2C 802DE21C 000FC100 */  sll        $t8, $t7, 4
    /* 1F6F30 802DE220 0058C821 */  addu       $t9, $v0, $t8
    /* 1F6F34 802DE224 832A000C */  lb         $t2, 0xC($t9)
    /* 1F6F38 802DE228 A7AF0090 */  sh         $t7, 0x90($sp)
    /* 1F6F3C 802DE22C 25AD0C9C */  addiu      $t5, $t5, %lo(D_802E0C9C)
    /* 1F6F40 802DE230 A7AA0092 */  sh         $t2, 0x92($sp)
    /* 1F6F44 802DE234 8D0B0020 */  lw         $t3, 0x20($t0)
    /* 1F6F48 802DE238 316C4000 */  andi       $t4, $t3, 0x4000
    /* 1F6F4C 802DE23C 518000D1 */  beql       $t4, $zero, .L802DE584_1F7294
    /* 1F6F50 802DE240 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F6F54 802DE244 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 1F6F58 802DE248 A3A4009B */  sb         $a0, 0x9B($sp)
    /* 1F6F5C 802DE24C 0C0207C6 */  jal        func_80081F18_90EC8
    /* 1F6F60 802DE250 AFA80094 */   sw        $t0, 0x94($sp)
    /* 1F6F64 802DE254 24010002 */  addiu      $at, $zero, 0x2
    /* 1F6F68 802DE258 144100B8 */  bne        $v0, $at, .L802DE53C_1F724C
    /* 1F6F6C 802DE25C 8FA80094 */   lw        $t0, 0x94($sp)
    /* 1F6F70 802DE260 93A4009B */  lbu        $a0, 0x9B($sp)
    /* 1F6F74 802DE264 0C04DD1A */  jal        func_80137468_146418
    /* 1F6F78 802DE268 24050259 */   addiu     $a1, $zero, 0x259
    /* 1F6F7C 802DE26C 27AE0070 */  addiu      $t6, $sp, 0x70
    /* 1F6F80 802DE270 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 1F6F84 802DE274 02002025 */  or         $a0, $s0, $zero
    /* 1F6F88 802DE278 24050001 */  addiu      $a1, $zero, 0x1
    /* 1F6F8C 802DE27C 27A60078 */  addiu      $a2, $sp, 0x78
    /* 1F6F90 802DE280 0C04A141 */  jal        func_80128504_1374B4
    /* 1F6F94 802DE284 27A70074 */   addiu     $a3, $sp, 0x74
    /* 1F6F98 802DE288 240F008C */  addiu      $t7, $zero, 0x8C
    /* 1F6F9C 802DE28C 2418008C */  addiu      $t8, $zero, 0x8C
    /* 1F6FA0 802DE290 241900C8 */  addiu      $t9, $zero, 0xC8
    /* 1F6FA4 802DE294 AFB90018 */  sw         $t9, 0x18($sp)
    /* 1F6FA8 802DE298 AFB80014 */  sw         $t8, 0x14($sp)
    /* 1F6FAC 802DE29C AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F6FB0 802DE2A0 87A4007A */  lh         $a0, 0x7A($sp)
    /* 1F6FB4 802DE2A4 87A50076 */  lh         $a1, 0x76($sp)
    /* 1F6FB8 802DE2A8 87A60072 */  lh         $a2, 0x72($sp)
    /* 1F6FBC 802DE2AC 0C03416A */  jal        func_800D05A8_DF558
    /* 1F6FC0 802DE2B0 240703E8 */   addiu     $a3, $zero, 0x3E8
    /* 1F6FC4 802DE2B4 8FA50074 */  lw         $a1, 0x74($sp)
    /* 1F6FC8 802DE2B8 240C000A */  addiu      $t4, $zero, 0xA
    /* 1F6FCC 802DE2BC AFAC0010 */  sw         $t4, 0x10($sp)
    /* 1F6FD0 802DE2C0 24A50005 */  addiu      $a1, $a1, 0x5
    /* 1F6FD4 802DE2C4 00055400 */  sll        $t2, $a1, 16
    /* 1F6FD8 802DE2C8 000A2C03 */  sra        $a1, $t2, 16
    /* 1F6FDC 802DE2CC 87A4007A */  lh         $a0, 0x7A($sp)
    /* 1F6FE0 802DE2D0 87A60072 */  lh         $a2, 0x72($sp)
    /* 1F6FE4 802DE2D4 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* 1F6FE8 802DE2D8 24070050 */   addiu     $a3, $zero, 0x50
    /* 1F6FEC 802DE2DC 240D0008 */  addiu      $t5, $zero, 0x8
    /* 1F6FF0 802DE2E0 240E0006 */  addiu      $t6, $zero, 0x6
    /* 1F6FF4 802DE2E4 240F0028 */  addiu      $t7, $zero, 0x28
    /* 1F6FF8 802DE2E8 241800DC */  addiu      $t8, $zero, 0xDC
    /* 1F6FFC 802DE2EC 241900A6 */  addiu      $t9, $zero, 0xA6
    /* 1F7000 802DE2F0 240A0085 */  addiu      $t2, $zero, 0x85
    /* 1F7004 802DE2F4 240B002F */  addiu      $t3, $zero, 0x2F
    /* 1F7008 802DE2F8 AFAB0028 */  sw         $t3, 0x28($sp)
    /* 1F700C 802DE2FC AFAA0024 */  sw         $t2, 0x24($sp)
    /* 1F7010 802DE300 AFB90020 */  sw         $t9, 0x20($sp)
    /* 1F7014 802DE304 AFB8001C */  sw         $t8, 0x1C($sp)
    /* 1F7018 802DE308 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 1F701C 802DE30C AFAE0014 */  sw         $t6, 0x14($sp)
    /* 1F7020 802DE310 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 1F7024 802DE314 87A4007A */  lh         $a0, 0x7A($sp)
    /* 1F7028 802DE318 87A50076 */  lh         $a1, 0x76($sp)
    /* 1F702C 802DE31C 87A60072 */  lh         $a2, 0x72($sp)
    /* 1F7030 802DE320 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 1F7034 802DE324 24070258 */   addiu     $a3, $zero, 0x258
    /* 1F7038 802DE328 240C007F */  addiu      $t4, $zero, 0x7F
    /* 1F703C 802DE32C 240D0078 */  addiu      $t5, $zero, 0x78
    /* 1F7040 802DE330 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 1F7044 802DE334 240F003C */  addiu      $t7, $zero, 0x3C
    /* 1F7048 802DE338 24180014 */  addiu      $t8, $zero, 0x14
    /* 1F704C 802DE33C 2419006A */  addiu      $t9, $zero, 0x6A
    /* 1F7050 802DE340 240A0053 */  addiu      $t2, $zero, 0x53
    /* 1F7054 802DE344 AFAA002C */  sw         $t2, 0x2C($sp)
    /* 1F7058 802DE348 AFB90028 */  sw         $t9, 0x28($sp)
    /* 1F705C 802DE34C AFB80024 */  sw         $t8, 0x24($sp)
    /* 1F7060 802DE350 AFAF0020 */  sw         $t7, 0x20($sp)
    /* 1F7064 802DE354 AFAE001C */  sw         $t6, 0x1C($sp)
    /* 1F7068 802DE358 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 1F706C 802DE35C AFAC0010 */  sw         $t4, 0x10($sp)
    /* 1F7070 802DE360 87A4007A */  lh         $a0, 0x7A($sp)
    /* 1F7074 802DE364 87A50076 */  lh         $a1, 0x76($sp)
    /* 1F7078 802DE368 87A60072 */  lh         $a2, 0x72($sp)
    /* 1F707C 802DE36C 00003825 */  or         $a3, $zero, $zero
    /* 1F7080 802DE370 AFA00014 */  sw         $zero, 0x14($sp)
    /* 1F7084 802DE374 0C031507 */  jal        func_800C541C_D43CC
    /* 1F7088 802DE378 AFA00030 */   sw        $zero, 0x30($sp)
    /* 1F708C 802DE37C 8E0B0020 */  lw         $t3, 0x20($s0)
    /* 1F7090 802DE380 3C010040 */  lui        $at, (0x400000 >> 16)
    /* 1F7094 802DE384 240D01F4 */  addiu      $t5, $zero, 0x1F4
    /* 1F7098 802DE388 01616025 */  or         $t4, $t3, $at
    /* 1F709C 802DE38C AE0C0020 */  sw         $t4, 0x20($s0)
    /* 1F70A0 802DE390 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 1F70A4 802DE394 87A4007A */  lh         $a0, 0x7A($sp)
    /* 1F70A8 802DE398 87A50076 */  lh         $a1, 0x76($sp)
    /* 1F70AC 802DE39C 87A60072 */  lh         $a2, 0x72($sp)
    /* 1F70B0 802DE3A0 0C0492D7 */  jal        func_80124B5C_133B0C
    /* 1F70B4 802DE3A4 24072710 */   addiu     $a3, $zero, 0x2710
    /* 1F70B8 802DE3A8 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 1F70BC 802DE3AC 3C01FFBF */  lui        $at, (0xFFBFFFFF >> 16)
    /* 1F70C0 802DE3B0 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
    /* 1F70C4 802DE3B4 01C17824 */  and        $t7, $t6, $at
    /* 1F70C8 802DE3B8 AE0F0020 */  sw         $t7, 0x20($s0)
    /* 1F70CC 802DE3BC 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 1F70D0 802DE3C0 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 1F70D4 802DE3C4 8FB80078 */  lw         $t8, 0x78($sp)
    /* 1F70D8 802DE3C8 8FB90070 */  lw         $t9, 0x70($sp)
    /* 1F70DC 802DE3CC 84460000 */  lh         $a2, 0x0($v0)
    /* 1F70E0 802DE3D0 84470004 */  lh         $a3, 0x4($v0)
    /* 1F70E4 802DE3D4 3C090022 */  lui        $t1, (0x225510 >> 16)
    /* 1F70E8 802DE3D8 00D82023 */  subu       $a0, $a2, $t8
    /* 1F70EC 802DE3DC 00840019 */  multu      $a0, $a0
    /* 1F70F0 802DE3E0 00F92823 */  subu       $a1, $a3, $t9
    /* 1F70F4 802DE3E4 35295510 */  ori        $t1, $t1, (0x225510 & 0xFFFF)
    /* 1F70F8 802DE3E8 00005012 */  mflo       $t2
    /* 1F70FC 802DE3EC 00000000 */  nop
    /* 1F7100 802DE3F0 00000000 */  nop
    /* 1F7104 802DE3F4 00A50019 */  multu      $a1, $a1
    /* 1F7108 802DE3F8 00005812 */  mflo       $t3
    /* 1F710C 802DE3FC 014B1821 */  addu       $v1, $t2, $t3
    /* 1F7110 802DE400 0069082A */  slt        $at, $v1, $t1
    /* 1F7114 802DE404 5020005F */  beql       $at, $zero, .L802DE584_1F7294
    /* 1F7118 802DE408 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F711C 802DE40C 944C0020 */  lhu        $t4, 0x20($v0)
    /* 1F7120 802DE410 318D0002 */  andi       $t5, $t4, 0x2
    /* 1F7124 802DE414 55A0005B */  bnel       $t5, $zero, .L802DE584_1F7294
    /* 1F7128 802DE418 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F712C 802DE41C 860E0000 */  lh         $t6, 0x0($s0)
    /* 1F7130 802DE420 860F0004 */  lh         $t7, 0x4($s0)
    /* 1F7134 802DE424 01234023 */  subu       $t0, $t1, $v1
    /* 1F7138 802DE428 01C62023 */  subu       $a0, $t6, $a2
    /* 1F713C 802DE42C 01E72823 */  subu       $a1, $t7, $a3
    /* 1F7140 802DE430 0005C823 */  negu       $t9, $a1
    /* 1F7144 802DE434 0004C023 */  negu       $t8, $a0
    /* 1F7148 802DE438 44984000 */  mtc1       $t8, $f8
    /* 1F714C 802DE43C 44995000 */  mtc1       $t9, $f10
    /* 1F7150 802DE440 AFA80068 */  sw         $t0, 0x68($sp)
    /* 1F7154 802DE444 46804320 */  cvt.s.w    $f12, $f8
    /* 1F7158 802DE448 0C000E09 */  jal        func_80003824_4424
    /* 1F715C 802DE44C 468053A0 */   cvt.s.w   $f14, $f10
    /* 1F7160 802DE450 8FA80068 */  lw         $t0, 0x68($sp)
    /* 1F7164 802DE454 3C01802E */  lui        $at, %hi(D_802E0F88)
    /* 1F7168 802DE458 C4240F88 */  lwc1       $f4, %lo(D_802E0F88)($at)
    /* 1F716C 802DE45C 44888000 */  mtc1       $t0, $f16
    /* 1F7170 802DE460 00087080 */  sll        $t6, $t0, 2
    /* 1F7174 802DE464 01C87023 */  subu       $t6, $t6, $t0
    /* 1F7178 802DE468 468084A0 */  cvt.s.w    $f18, $f16
    /* 1F717C 802DE46C 000E70C0 */  sll        $t6, $t6, 3
    /* 1F7180 802DE470 01C87021 */  addu       $t6, $t6, $t0
    /* 1F7184 802DE474 000E7040 */  sll        $t6, $t6, 1
    /* 1F7188 802DE478 3C014600 */  lui        $at, (0x46000000 >> 16)
    /* 1F718C 802DE47C 44814000 */  mtc1       $at, $f8
    /* 1F7190 802DE480 46049183 */  div.s      $f6, $f18, $f4
    /* 1F7194 802DE484 448E9000 */  mtc1       $t6, $f18
    /* 1F7198 802DE488 3C01802E */  lui        $at, %hi(D_802E0F8C)
    /* 1F719C 802DE48C 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 1F71A0 802DE490 46809120 */  cvt.s.w    $f4, $f18
    /* 1F71A4 802DE494 00022C00 */  sll        $a1, $v0, 16
    /* 1F71A8 802DE498 00055403 */  sra        $t2, $a1, 16
    /* 1F71AC 802DE49C 26102B34 */  addiu      $s0, $s0, %lo(D_80052B34)
    /* 1F71B0 802DE4A0 8E040000 */  lw         $a0, 0x0($s0)
    /* 1F71B4 802DE4A4 01402825 */  or         $a1, $t2, $zero
    /* 1F71B8 802DE4A8 46083280 */  add.s      $f10, $f6, $f8
    /* 1F71BC 802DE4AC C4260F8C */  lwc1       $f6, %lo(D_802E0F8C)($at)
    /* 1F71C0 802DE4B0 46062203 */  div.s      $f8, $f4, $f6
    /* 1F71C4 802DE4B4 4600540D */  trunc.w.s  $f16, $f10
    /* 1F71C8 802DE4B8 44068000 */  mfc1       $a2, $f16
    /* 1F71CC 802DE4BC 00000000 */  nop
    /* 1F71D0 802DE4C0 00066400 */  sll        $t4, $a2, 16
    /* 1F71D4 802DE4C4 000C3403 */  sra        $a2, $t4, 16
    /* 1F71D8 802DE4C8 44074000 */  mfc1       $a3, $f8
    /* 1F71DC 802DE4CC 0C040B77 */  jal        func_80102DDC_111D8C
    /* 1F71E0 802DE4D0 00000000 */   nop
    /* 1F71E4 802DE4D4 0C000E38 */  jal        func_800038E0_44E0
    /* 1F71E8 802DE4D8 00000000 */   nop
    /* 1F71EC 802DE4DC 240107D0 */  addiu      $at, $zero, 0x7D0
    /* 1F71F0 802DE4E0 0041001A */  div        $zero, $v0, $at
    /* 1F71F4 802DE4E4 8E0A0000 */  lw         $t2, 0x0($s0)
    /* 1F71F8 802DE4E8 00007810 */  mfhi       $t7
    /* 1F71FC 802DE4EC 241803E8 */  addiu      $t8, $zero, 0x3E8
    /* 1F7200 802DE4F0 030FC823 */  subu       $t9, $t8, $t7
    /* 1F7204 802DE4F4 0C000E38 */  jal        func_800038E0_44E0
    /* 1F7208 802DE4F8 A5590022 */   sh        $t9, 0x22($t2)
    /* 1F720C 802DE4FC 240107D0 */  addiu      $at, $zero, 0x7D0
    /* 1F7210 802DE500 0041001A */  div        $zero, $v0, $at
    /* 1F7214 802DE504 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 1F7218 802DE508 00005810 */  mfhi       $t3
    /* 1F721C 802DE50C 240C03E8 */  addiu      $t4, $zero, 0x3E8
    /* 1F7220 802DE510 018B6823 */  subu       $t5, $t4, $t3
    /* 1F7224 802DE514 0C000E38 */  jal        func_800038E0_44E0
    /* 1F7228 802DE518 A5CD0024 */   sh        $t5, 0x24($t6)
    /* 1F722C 802DE51C 240107D0 */  addiu      $at, $zero, 0x7D0
    /* 1F7230 802DE520 0041001A */  div        $zero, $v0, $at
    /* 1F7234 802DE524 8E0A0000 */  lw         $t2, 0x0($s0)
    /* 1F7238 802DE528 0000C010 */  mfhi       $t8
    /* 1F723C 802DE52C 240F03E8 */  addiu      $t7, $zero, 0x3E8
    /* 1F7240 802DE530 01F8C823 */  subu       $t9, $t7, $t8
    /* 1F7244 802DE534 10000012 */  b          .L802DE580_1F7290
    /* 1F7248 802DE538 A5590026 */   sh        $t9, 0x26($t2)
  .L802DE53C_1F724C:
    /* 1F724C 802DE53C 00021E00 */  sll        $v1, $v0, 24
    /* 1F7250 802DE540 00036603 */  sra        $t4, $v1, 24
    /* 1F7254 802DE544 24010003 */  addiu      $at, $zero, 0x3
    /* 1F7258 802DE548 15810006 */  bne        $t4, $at, .L802DE564_1F7274
    /* 1F725C 802DE54C 01801825 */   or        $v1, $t4, $zero
    /* 1F7260 802DE550 8D0B0020 */  lw         $t3, 0x20($t0)
    /* 1F7264 802DE554 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 1F7268 802DE558 01616824 */  and        $t5, $t3, $at
    /* 1F726C 802DE55C 10000008 */  b          .L802DE580_1F7290
    /* 1F7270 802DE560 AD0D0020 */   sw        $t5, 0x20($t0)
  .L802DE564_1F7274:
    /* 1F7274 802DE564 24010004 */  addiu      $at, $zero, 0x4
    /* 1F7278 802DE568 54610006 */  bnel       $v1, $at, .L802DE584_1F7294
    /* 1F727C 802DE56C 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F7280 802DE570 8D0E0020 */  lw         $t6, 0x20($t0)
    /* 1F7284 802DE574 2401BFFF */  addiu      $at, $zero, -0x4001
    /* 1F7288 802DE578 01C17824 */  and        $t7, $t6, $at
    /* 1F728C 802DE57C AD0F0020 */  sw         $t7, 0x20($t0)
  .L802DE580_1F7290:
    /* 1F7290 802DE580 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DE584_1F7294:
    /* 1F7294 802DE584 8FB00040 */  lw         $s0, 0x40($sp)
    /* 1F7298 802DE588 27BD0098 */  addiu      $sp, $sp, 0x98
    /* 1F729C 802DE58C 03E00008 */  jr         $ra
    /* 1F72A0 802DE590 00000000 */   nop
endlabel func_802DE0C8_1F6DD8
