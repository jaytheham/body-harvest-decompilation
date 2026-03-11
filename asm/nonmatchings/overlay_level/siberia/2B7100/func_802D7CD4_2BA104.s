nonmatching func_802D7CD4_2BA104, 0x398

glabel func_802D7CD4_2BA104
    /* 2BA104 802D7CD4 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 2BA108 802D7CD8 AFB10028 */  sw         $s1, 0x28($sp)
    /* 2BA10C 802D7CDC 309100FF */  andi       $s1, $a0, 0xFF
    /* 2BA110 802D7CE0 00117080 */  sll        $t6, $s1, 2
    /* 2BA114 802D7CE4 01D17021 */  addu       $t6, $t6, $s1
    /* 2BA118 802D7CE8 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 2BA11C 802D7CEC AFB00024 */  sw         $s0, 0x24($sp)
    /* 2BA120 802D7CF0 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 2BA124 802D7CF4 000E7100 */  sll        $t6, $t6, 4
    /* 2BA128 802D7CF8 01CF8021 */  addu       $s0, $t6, $t7
    /* 2BA12C 802D7CFC 8618000C */  lh         $t8, 0xC($s0)
    /* 2BA130 802D7D00 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 2BA134 802D7D04 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 2BA138 802D7D08 0018C900 */  sll        $t9, $t8, 4
    /* 2BA13C 802D7D0C 00594021 */  addu       $t0, $v0, $t9
    /* 2BA140 802D7D10 8109000C */  lb         $t1, 0xC($t0)
    /* 2BA144 802D7D14 8E070020 */  lw         $a3, 0x20($s0)
    /* 2BA148 802D7D18 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 2BA14C 802D7D1C A7A90046 */  sh         $t1, 0x46($sp)
    /* 2BA150 802D7D20 87AA0046 */  lh         $t2, 0x46($sp)
    /* 2BA154 802D7D24 AFA40048 */  sw         $a0, 0x48($sp)
    /* 2BA158 802D7D28 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BA15C 802D7D2C 000A5900 */  sll        $t3, $t2, 4
    /* 2BA160 802D7D30 004B1821 */  addu       $v1, $v0, $t3
    /* 2BA164 802D7D34 806D000D */  lb         $t5, 0xD($v1)
    /* 2BA168 802D7D38 806C000C */  lb         $t4, 0xC($v1)
    /* 2BA16C 802D7D3C A7AD0040 */  sh         $t5, 0x40($sp)
    /* 2BA170 802D7D40 87AE0040 */  lh         $t6, 0x40($sp)
    /* 2BA174 802D7D44 A7AC0044 */  sh         $t4, 0x44($sp)
    /* 2BA178 802D7D48 000E7900 */  sll        $t7, $t6, 4
    /* 2BA17C 802D7D4C 004F2821 */  addu       $a1, $v0, $t7
    /* 2BA180 802D7D50 80B8000C */  lb         $t8, 0xC($a1)
    /* 2BA184 802D7D54 80AB000D */  lb         $t3, 0xD($a1)
    /* 2BA188 802D7D58 01C02825 */  or         $a1, $t6, $zero
    /* 2BA18C 802D7D5C A7B8003E */  sh         $t8, 0x3E($sp)
    /* 2BA190 802D7D60 87B9003E */  lh         $t9, 0x3E($sp)
    /* 2BA194 802D7D64 00194100 */  sll        $t0, $t9, 4
    /* 2BA198 802D7D68 00484821 */  addu       $t1, $v0, $t0
    /* 2BA19C 802D7D6C 812A000C */  lb         $t2, 0xC($t1)
    /* 2BA1A0 802D7D70 A7AB003A */  sh         $t3, 0x3A($sp)
    /* 2BA1A4 802D7D74 87AC003A */  lh         $t4, 0x3A($sp)
    /* 2BA1A8 802D7D78 A7AA003C */  sh         $t2, 0x3C($sp)
    /* 2BA1AC 802D7D7C 30EB5000 */  andi       $t3, $a3, 0x5000
    /* 2BA1B0 802D7D80 000C6900 */  sll        $t5, $t4, 4
    /* 2BA1B4 802D7D84 004D3021 */  addu       $a2, $v0, $t5
    /* 2BA1B8 802D7D88 80CF000C */  lb         $t7, 0xC($a2)
    /* 2BA1BC 802D7D8C 80CA000D */  lb         $t2, 0xD($a2)
    /* 2BA1C0 802D7D90 A7AF0038 */  sh         $t7, 0x38($sp)
    /* 2BA1C4 802D7D94 87B80038 */  lh         $t8, 0x38($sp)
    /* 2BA1C8 802D7D98 0018C900 */  sll        $t9, $t8, 4
    /* 2BA1CC 802D7D9C 00594021 */  addu       $t0, $v0, $t9
    /* 2BA1D0 802D7DA0 8109000C */  lb         $t1, 0xC($t0)
    /* 2BA1D4 802D7DA4 A7AA0042 */  sh         $t2, 0x42($sp)
    /* 2BA1D8 802D7DA8 15600008 */  bnez       $t3, .L802D7DCC_2BA1FC
    /* 2BA1DC 802D7DAC A7A90036 */   sh        $t1, 0x36($sp)
    /* 2BA1E0 802D7DB0 0C02429B */  jal        func_80090A6C_9FA1C
    /* 2BA1E4 802D7DB4 240607D0 */   addiu     $a2, $zero, 0x7D0
    /* 2BA1E8 802D7DB8 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BA1EC 802D7DBC 87A5003C */  lh         $a1, 0x3C($sp)
    /* 2BA1F0 802D7DC0 0C02429B */  jal        func_80090A6C_9FA1C
    /* 2BA1F4 802D7DC4 240607D0 */   addiu     $a2, $zero, 0x7D0
    /* 2BA1F8 802D7DC8 8E070020 */  lw         $a3, 0x20($s0)
  .L802D7DCC_2BA1FC:
    /* 2BA1FC 802D7DCC 30EC9000 */  andi       $t4, $a3, 0x9000
    /* 2BA200 802D7DD0 15800009 */  bnez       $t4, .L802D7DF8_2BA228
    /* 2BA204 802D7DD4 322400FF */   andi      $a0, $s1, 0xFF
    /* 2BA208 802D7DD8 87A5003A */  lh         $a1, 0x3A($sp)
    /* 2BA20C 802D7DDC 0C02429B */  jal        func_80090A6C_9FA1C
    /* 2BA210 802D7DE0 240607D0 */   addiu     $a2, $zero, 0x7D0
    /* 2BA214 802D7DE4 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BA218 802D7DE8 87A50036 */  lh         $a1, 0x36($sp)
    /* 2BA21C 802D7DEC 0C02429B */  jal        func_80090A6C_9FA1C
    /* 2BA220 802D7DF0 240607D0 */   addiu     $a2, $zero, 0x7D0
    /* 2BA224 802D7DF4 8E070020 */  lw         $a3, 0x20($s0)
  .L802D7DF8_2BA228:
    /* 2BA228 802D7DF8 30ED2000 */  andi       $t5, $a3, 0x2000
    /* 2BA22C 802D7DFC 15A00004 */  bnez       $t5, .L802D7E10_2BA240
    /* 2BA230 802D7E00 322400FF */   andi      $a0, $s1, 0xFF
    /* 2BA234 802D7E04 87A50042 */  lh         $a1, 0x42($sp)
    /* 2BA238 802D7E08 0C02429B */  jal        func_80090A6C_9FA1C
    /* 2BA23C 802D7E0C 24060FA0 */   addiu     $a2, $zero, 0xFA0
  .L802D7E10_2BA240:
    /* 2BA240 802D7E10 860F0012 */  lh         $t7, 0x12($s0)
    /* 2BA244 802D7E14 240607D0 */  addiu      $a2, $zero, 0x7D0
    /* 2BA248 802D7E18 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BA24C 802D7E1C 19E00006 */  blez       $t7, .L802D7E38_2BA268
    /* 2BA250 802D7E20 87A50046 */   lh        $a1, 0x46($sp)
    /* 2BA254 802D7E24 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BA258 802D7E28 0C02429B */  jal        func_80090A6C_9FA1C
    /* 2BA25C 802D7E2C 87A50046 */   lh        $a1, 0x46($sp)
    /* 2BA260 802D7E30 10000004 */  b          .L802D7E44_2BA274
    /* 2BA264 802D7E34 322400FF */   andi      $a0, $s1, 0xFF
  .L802D7E38_2BA268:
    /* 2BA268 802D7E38 0C02188C */  jal        func_80086230_951E0
    /* 2BA26C 802D7E3C 24062000 */   addiu     $a2, $zero, 0x2000
    /* 2BA270 802D7E40 322400FF */  andi       $a0, $s1, 0xFF
  .L802D7E44_2BA274:
    /* 2BA274 802D7E44 240500C8 */  addiu      $a1, $zero, 0xC8
    /* 2BA278 802D7E48 0C021DFA */  jal        func_800877E8_96798
    /* 2BA27C 802D7E4C 240600FA */   addiu     $a2, $zero, 0xFA
    /* 2BA280 802D7E50 8E070020 */  lw         $a3, 0x20($s0)
    /* 2BA284 802D7E54 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 2BA288 802D7E58 30F8F000 */  andi       $t8, $a3, 0xF000
    /* 2BA28C 802D7E5C 57000056 */  bnel       $t8, $zero, .L802D7FB8_2BA3E8
    /* 2BA290 802D7E60 8E070020 */   lw        $a3, 0x20($s0)
    /* 2BA294 802D7E64 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 2BA298 802D7E68 86080000 */  lh         $t0, 0x0($s0)
    /* 2BA29C 802D7E6C 860A0004 */  lh         $t2, 0x4($s0)
    /* 2BA2A0 802D7E70 84590000 */  lh         $t9, 0x0($v0)
    /* 2BA2A4 802D7E74 84490004 */  lh         $t1, 0x4($v0)
    /* 2BA2A8 802D7E78 944E0020 */  lhu        $t6, 0x20($v0)
    /* 2BA2AC 802D7E7C 03281823 */  subu       $v1, $t9, $t0
    /* 2BA2B0 802D7E80 00630019 */  multu      $v1, $v1
    /* 2BA2B4 802D7E84 012A2023 */  subu       $a0, $t1, $t2
    /* 2BA2B8 802D7E88 31CC0002 */  andi       $t4, $t6, 0x2
    /* 2BA2BC 802D7E8C 00002812 */  mflo       $a1
    /* 2BA2C0 802D7E90 00000000 */  nop
    /* 2BA2C4 802D7E94 00000000 */  nop
    /* 2BA2C8 802D7E98 00840019 */  multu      $a0, $a0
    /* 2BA2CC 802D7E9C 00005812 */  mflo       $t3
    /* 2BA2D0 802D7EA0 00AB2821 */  addu       $a1, $a1, $t3
    /* 2BA2D4 802D7EA4 55800009 */  bnel       $t4, $zero, .L802D7ECC_2BA2FC
    /* 2BA2D8 802D7EA8 904F001A */   lbu       $t7, 0x1A($v0)
    /* 2BA2DC 802D7EAC 904D001A */  lbu        $t5, 0x1A($v0)
    /* 2BA2E0 802D7EB0 3C010001 */  lui        $at, (0x186A0 >> 16)
    /* 2BA2E4 802D7EB4 342186A0 */  ori        $at, $at, (0x186A0 & 0xFFFF)
    /* 2BA2E8 802D7EB8 15A00003 */  bnez       $t5, .L802D7EC8_2BA2F8
    /* 2BA2EC 802D7EBC 00A1082A */   slt       $at, $a1, $at
    /* 2BA2F0 802D7EC0 54200009 */  bnel       $at, $zero, .L802D7EE8_2BA318
    /* 2BA2F4 802D7EC4 8618002A */   lh        $t8, 0x2A($s0)
  .L802D7EC8_2BA2F8:
    /* 2BA2F8 802D7EC8 904F001A */  lbu        $t7, 0x1A($v0)
  .L802D7ECC_2BA2FC:
    /* 2BA2FC 802D7ECC 3C010004 */  lui        $at, (0x493E0 >> 16)
    /* 2BA300 802D7ED0 342193E0 */  ori        $at, $at, (0x493E0 & 0xFFFF)
    /* 2BA304 802D7ED4 11E0000F */  beqz       $t7, .L802D7F14_2BA344
    /* 2BA308 802D7ED8 00A1082A */   slt       $at, $a1, $at
    /* 2BA30C 802D7EDC 5020000E */  beql       $at, $zero, .L802D7F18_2BA348
    /* 2BA310 802D7EE0 3C010003 */   lui       $at, (0x30D40 >> 16)
    /* 2BA314 802D7EE4 8618002A */  lh         $t8, 0x2A($s0)
  .L802D7EE8_2BA318:
    /* 2BA318 802D7EE8 8619000E */  lh         $t9, 0xE($s0)
    /* 2BA31C 802D7EEC 34E88000 */  ori        $t0, $a3, 0x8000
    /* 2BA320 802D7EF0 34E94000 */  ori        $t1, $a3, 0x4000
    /* 2BA324 802D7EF4 0319082A */  slt        $at, $t8, $t9
    /* 2BA328 802D7EF8 50200004 */  beql       $at, $zero, .L802D7F0C_2BA33C
    /* 2BA32C 802D7EFC AE090020 */   sw        $t1, 0x20($s0)
    /* 2BA330 802D7F00 10000002 */  b          .L802D7F0C_2BA33C
    /* 2BA334 802D7F04 AE080020 */   sw        $t0, 0x20($s0)
    /* 2BA338 802D7F08 AE090020 */  sw         $t1, 0x20($s0)
  .L802D7F0C_2BA33C:
    /* 2BA33C 802D7F0C 10000029 */  b          .L802D7FB4_2BA3E4
    /* 2BA340 802D7F10 A2000036 */   sb        $zero, 0x36($s0)
  .L802D7F14_2BA344:
    /* 2BA344 802D7F14 3C010003 */  lui        $at, (0x30D40 >> 16)
  .L802D7F18_2BA348:
    /* 2BA348 802D7F18 34210D40 */  ori        $at, $at, (0x30D40 & 0xFFFF)
    /* 2BA34C 802D7F1C 00A1082A */  slt        $at, $a1, $at
    /* 2BA350 802D7F20 54200025 */  bnel       $at, $zero, .L802D7FB8_2BA3E8
    /* 2BA354 802D7F24 8E070020 */   lw        $a3, 0x20($s0)
    /* 2BA358 802D7F28 0C000E38 */  jal        func_800038E0_44E0
    /* 2BA35C 802D7F2C 00000000 */   nop
    /* 2BA360 802D7F30 304A0007 */  andi       $t2, $v0, 0x7
    /* 2BA364 802D7F34 15400009 */  bnez       $t2, .L802D7F5C_2BA38C
    /* 2BA368 802D7F38 322400FF */   andi      $a0, $s1, 0xFF
    /* 2BA36C 802D7F3C 8E0B0020 */  lw         $t3, 0x20($s0)
    /* 2BA370 802D7F40 02202025 */  or         $a0, $s1, $zero
    /* 2BA374 802D7F44 24050010 */  addiu      $a1, $zero, 0x10
    /* 2BA378 802D7F48 356E1000 */  ori        $t6, $t3, 0x1000
    /* 2BA37C 802D7F4C 0C04DD1A */  jal        func_80137468_146418
    /* 2BA380 802D7F50 AE0E0020 */   sw        $t6, 0x20($s0)
    /* 2BA384 802D7F54 10000017 */  b          .L802D7FB4_2BA3E4
    /* 2BA388 802D7F58 A2000036 */   sb        $zero, 0x36($s0)
  .L802D7F5C_2BA38C:
    /* 2BA38C 802D7F5C 0C0213FA */  jal        func_80084FE8_93F98
    /* 2BA390 802D7F60 24050800 */   addiu     $a1, $zero, 0x800
    /* 2BA394 802D7F64 50400014 */  beql       $v0, $zero, .L802D7FB8_2BA3E8
    /* 2BA398 802D7F68 8E070020 */   lw        $a3, 0x20($s0)
    /* 2BA39C 802D7F6C 820C004E */  lb         $t4, 0x4E($s0)
    /* 2BA3A0 802D7F70 3C0D8005 */  lui        $t5, %hi(D_80052B34)
    /* 2BA3A4 802D7F74 51800010 */  beql       $t4, $zero, .L802D7FB8_2BA3E8
    /* 2BA3A8 802D7F78 8E070020 */   lw        $a3, 0x20($s0)
    /* 2BA3AC 802D7F7C 8DAD2B34 */  lw         $t5, %lo(D_80052B34)($t5)
    /* 2BA3B0 802D7F80 3C188022 */  lui        $t8, %hi(D_80222A70)
    /* 2BA3B4 802D7F84 8F182A70 */  lw         $t8, %lo(D_80222A70)($t8)
    /* 2BA3B8 802D7F88 85AF0002 */  lh         $t7, 0x2($t5)
    /* 2BA3BC 802D7F8C 01F8082A */  slt        $at, $t7, $t8
    /* 2BA3C0 802D7F90 54200009 */  bnel       $at, $zero, .L802D7FB8_2BA3E8
    /* 2BA3C4 802D7F94 8E070020 */   lw        $a3, 0x20($s0)
    /* 2BA3C8 802D7F98 8619001E */  lh         $t9, 0x1E($s0)
    /* 2BA3CC 802D7F9C 57200006 */  bnel       $t9, $zero, .L802D7FB8_2BA3E8
    /* 2BA3D0 802D7FA0 8E070020 */   lw        $a3, 0x20($s0)
    /* 2BA3D4 802D7FA4 8E080020 */  lw         $t0, 0x20($s0)
    /* 2BA3D8 802D7FA8 A2000036 */  sb         $zero, 0x36($s0)
    /* 2BA3DC 802D7FAC 35092000 */  ori        $t1, $t0, 0x2000
    /* 2BA3E0 802D7FB0 AE090020 */  sw         $t1, 0x20($s0)
  .L802D7FB4_2BA3E4:
    /* 2BA3E4 802D7FB4 8E070020 */  lw         $a3, 0x20($s0)
  .L802D7FB8_2BA3E8:
    /* 2BA3E8 802D7FB8 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BA3EC 802D7FBC 87A5003A */  lh         $a1, 0x3A($sp)
    /* 2BA3F0 802D7FC0 30EA8000 */  andi       $t2, $a3, 0x8000
    /* 2BA3F4 802D7FC4 11400008 */  beqz       $t2, .L802D7FE8_2BA418
    /* 2BA3F8 802D7FC8 30EE4000 */   andi      $t6, $a3, 0x4000
    /* 2BA3FC 802D7FCC 87AB0044 */  lh         $t3, 0x44($sp)
    /* 2BA400 802D7FD0 87A60038 */  lh         $a2, 0x38($sp)
    /* 2BA404 802D7FD4 87A70036 */  lh         $a3, 0x36($sp)
    /* 2BA408 802D7FD8 0C0B5E4D */  jal        func_802D7934_2B9D64
    /* 2BA40C 802D7FDC AFAB0010 */   sw        $t3, 0x10($sp)
    /* 2BA410 802D7FE0 1000000A */  b          .L802D800C_2BA43C
    /* 2BA414 802D7FE4 322400FF */   andi      $a0, $s1, 0xFF
  .L802D7FE8_2BA418:
    /* 2BA418 802D7FE8 11C00007 */  beqz       $t6, .L802D8008_2BA438
    /* 2BA41C 802D7FEC 322400FF */   andi      $a0, $s1, 0xFF
    /* 2BA420 802D7FF0 87AC0044 */  lh         $t4, 0x44($sp)
    /* 2BA424 802D7FF4 87A50040 */  lh         $a1, 0x40($sp)
    /* 2BA428 802D7FF8 87A6003E */  lh         $a2, 0x3E($sp)
    /* 2BA42C 802D7FFC 87A7003C */  lh         $a3, 0x3C($sp)
    /* 2BA430 802D8000 0C0B5E4D */  jal        func_802D7934_2B9D64
    /* 2BA434 802D8004 AFAC0010 */   sw        $t4, 0x10($sp)
  .L802D8008_2BA438:
    /* 2BA438 802D8008 322400FF */  andi       $a0, $s1, 0xFF
  .L802D800C_2BA43C:
    /* 2BA43C 802D800C 0C0B5E06 */  jal        func_802D7818_2B9C48
    /* 2BA440 802D8010 87A50042 */   lh        $a1, 0x42($sp)
    /* 2BA444 802D8014 87AD0040 */  lh         $t5, 0x40($sp)
    /* 2BA448 802D8018 87AF003E */  lh         $t7, 0x3E($sp)
    /* 2BA44C 802D801C 87B8003C */  lh         $t8, 0x3C($sp)
    /* 2BA450 802D8020 87B90044 */  lh         $t9, 0x44($sp)
    /* 2BA454 802D8024 322400FF */  andi       $a0, $s1, 0xFF
    /* 2BA458 802D8028 87A5003A */  lh         $a1, 0x3A($sp)
    /* 2BA45C 802D802C 87A60038 */  lh         $a2, 0x38($sp)
    /* 2BA460 802D8030 87A70036 */  lh         $a3, 0x36($sp)
    /* 2BA464 802D8034 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 2BA468 802D8038 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 2BA46C 802D803C AFB80018 */  sw         $t8, 0x18($sp)
    /* 2BA470 802D8040 0C0B5EF3 */  jal        func_802D7BCC_2B9FFC
    /* 2BA474 802D8044 AFB9001C */   sw        $t9, 0x1C($sp)
    /* 2BA478 802D8048 8602001E */  lh         $v0, 0x1E($s0)
    /* 2BA47C 802D804C 10400002 */  beqz       $v0, .L802D8058_2BA488
    /* 2BA480 802D8050 2448FFFF */   addiu     $t0, $v0, -0x1
    /* 2BA484 802D8054 A608001E */  sh         $t0, 0x1E($s0)
  .L802D8058_2BA488:
    /* 2BA488 802D8058 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 2BA48C 802D805C 8FB00024 */  lw         $s0, 0x24($sp)
    /* 2BA490 802D8060 8FB10028 */  lw         $s1, 0x28($sp)
    /* 2BA494 802D8064 03E00008 */  jr         $ra
    /* 2BA498 802D8068 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_802D7CD4_2BA104
