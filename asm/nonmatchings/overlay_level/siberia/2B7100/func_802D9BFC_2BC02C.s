nonmatching func_802D9BFC_2BC02C, 0x3B8

glabel func_802D9BFC_2BC02C
    /* 2BC02C 802D9BFC 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 2BC030 802D9C00 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2BC034 802D9C04 AFA40048 */  sw         $a0, 0x48($sp)
    /* 2BC038 802D9C08 AFB00018 */  sw         $s0, 0x18($sp)
    /* 2BC03C 802D9C0C 93A4004B */  lbu        $a0, 0x4B($sp)
    /* 2BC040 802D9C10 0C04DD1A */  jal        func_80137468_146418
    /* 2BC044 802D9C14 2405026A */   addiu     $a1, $zero, 0x26A
    /* 2BC048 802D9C18 93AE004B */  lbu        $t6, 0x4B($sp)
    /* 2BC04C 802D9C1C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BC050 802D9C20 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BC054 802D9C24 000E7880 */  sll        $t7, $t6, 2
    /* 2BC058 802D9C28 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BC05C 802D9C2C 000F7900 */  sll        $t7, $t7, 4
    /* 2BC060 802D9C30 01F88021 */  addu       $s0, $t7, $t8
    /* 2BC064 802D9C34 8619000C */  lh         $t9, 0xC($s0)
    /* 2BC068 802D9C38 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 2BC06C 802D9C3C 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 2BC070 802D9C40 00194100 */  sll        $t0, $t9, 4
    /* 2BC074 802D9C44 00684821 */  addu       $t1, $v1, $t0
    /* 2BC078 802D9C48 8122000C */  lb         $v0, 0xC($t1)
    /* 2BC07C 802D9C4C 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 2BC080 802D9C50 00025100 */  sll        $t2, $v0, 4
    /* 2BC084 802D9C54 006A5821 */  addu       $t3, $v1, $t2
    /* 2BC088 802D9C58 8165000D */  lb         $a1, 0xD($t3)
    /* 2BC08C 802D9C5C 000FC100 */  sll        $t8, $t7, 4
    /* 2BC090 802D9C60 00056100 */  sll        $t4, $a1, 4
    /* 2BC094 802D9C64 006C6821 */  addu       $t5, $v1, $t4
    /* 2BC098 802D9C68 81AE000C */  lb         $t6, 0xC($t5)
    /* 2BC09C 802D9C6C 0701000A */  bgez       $t8, .L802D9C98_2BC0C8
    /* 2BC0A0 802D9C70 A7AE0042 */   sh        $t6, 0x42($sp)
    /* 2BC0A4 802D9C74 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 2BC0A8 802D9C78 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 2BC0AC 802D9C7C 86190000 */  lh         $t9, 0x0($s0)
    /* 2BC0B0 802D9C80 86090004 */  lh         $t1, 0x4($s0)
    /* 2BC0B4 802D9C84 84480000 */  lh         $t0, 0x0($v0)
    /* 2BC0B8 802D9C88 844A0004 */  lh         $t2, 0x4($v0)
    /* 2BC0BC 802D9C8C 03281823 */  subu       $v1, $t9, $t0
    /* 2BC0C0 802D9C90 10000007 */  b          .L802D9CB0_2BC0E0
    /* 2BC0C4 802D9C94 012A2023 */   subu      $a0, $t1, $t2
  .L802D9C98_2BC0C8:
    /* 2BC0C8 802D9C98 860B0000 */  lh         $t3, 0x0($s0)
    /* 2BC0CC 802D9C9C 860C0014 */  lh         $t4, 0x14($s0)
    /* 2BC0D0 802D9CA0 860D0004 */  lh         $t5, 0x4($s0)
    /* 2BC0D4 802D9CA4 860E0018 */  lh         $t6, 0x18($s0)
    /* 2BC0D8 802D9CA8 016C1823 */  subu       $v1, $t3, $t4
    /* 2BC0DC 802D9CAC 01AE2023 */  subu       $a0, $t5, $t6
  .L802D9CB0_2BC0E0:
    /* 2BC0E0 802D9CB0 44832000 */  mtc1       $v1, $f4
    /* 2BC0E4 802D9CB4 44843000 */  mtc1       $a0, $f6
    /* 2BC0E8 802D9CB8 A7A50044 */  sh         $a1, 0x44($sp)
    /* 2BC0EC 802D9CBC 46802320 */  cvt.s.w    $f12, $f4
    /* 2BC0F0 802D9CC0 0C000E09 */  jal        func_80003824_4424
    /* 2BC0F4 802D9CC4 468033A0 */   cvt.s.w   $f14, $f6
    /* 2BC0F8 802D9CC8 92180047 */  lbu        $t8, 0x47($s0)
    /* 2BC0FC 802D9CCC 34018000 */  ori        $at, $zero, 0x8000
    /* 2BC100 802D9CD0 00417821 */  addu       $t7, $v0, $at
    /* 2BC104 802D9CD4 33190001 */  andi       $t9, $t8, 0x1
    /* 2BC108 802D9CD8 13200005 */  beqz       $t9, .L802D9CF0_2BC120
    /* 2BC10C 802D9CDC A60F0006 */   sh        $t7, 0x6($s0)
    /* 2BC110 802D9CE0 0C020193 */  jal        func_8008064C_8F5FC
    /* 2BC114 802D9CE4 93A4004B */   lbu       $a0, 0x4B($sp)
    /* 2BC118 802D9CE8 10000004 */  b          .L802D9CFC_2BC12C
    /* 2BC11C 802D9CEC 86040000 */   lh        $a0, 0x0($s0)
  .L802D9CF0_2BC120:
    /* 2BC120 802D9CF0 0C0201DB */  jal        func_8008076C_8F71C
    /* 2BC124 802D9CF4 93A4004B */   lbu       $a0, 0x4B($sp)
    /* 2BC128 802D9CF8 86040000 */  lh         $a0, 0x0($s0)
  .L802D9CFC_2BC12C:
    /* 2BC12C 802D9CFC 0C02E134 */  jal        func_800B84D0_C7480
    /* 2BC130 802D9D00 86050004 */   lh        $a1, 0x4($s0)
    /* 2BC134 802D9D04 3C048022 */  lui        $a0, %hi(D_80222A70)
    /* 2BC138 802D9D08 8C842A70 */  lw         $a0, %lo(D_80222A70)($a0)
    /* 2BC13C 802D9D0C 00021A03 */  sra        $v1, $v0, 8
    /* 2BC140 802D9D10 00603025 */  or         $a2, $v1, $zero
    /* 2BC144 802D9D14 0064082A */  slt        $at, $v1, $a0
    /* 2BC148 802D9D18 50200008 */  beql       $at, $zero, .L802D9D3C_2BC16C
    /* 2BC14C 802D9D1C 0086082A */   slt       $at, $a0, $a2
    /* 2BC150 802D9D20 93A4004B */  lbu        $a0, 0x4B($sp)
    /* 2BC154 802D9D24 0C03892E */  jal        func_800E24B8_F1468
    /* 2BC158 802D9D28 AFA30024 */   sw        $v1, 0x24($sp)
    /* 2BC15C 802D9D2C 3C048022 */  lui        $a0, %hi(D_80222A70)
    /* 2BC160 802D9D30 8C842A70 */  lw         $a0, %lo(D_80222A70)($a0)
    /* 2BC164 802D9D34 8FA60024 */  lw         $a2, 0x24($sp)
    /* 2BC168 802D9D38 0086082A */  slt        $at, $a0, $a2
  .L802D9D3C_2BC16C:
    /* 2BC16C 802D9D3C 14200002 */  bnez       $at, .L802D9D48_2BC178
    /* 2BC170 802D9D40 00000000 */   nop
    /* 2BC174 802D9D44 00803025 */  or         $a2, $a0, $zero
  .L802D9D48_2BC178:
    /* 2BC178 802D9D48 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 2BC17C 802D9D4C 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 2BC180 802D9D50 AFA60024 */  sw         $a2, 0x24($sp)
    /* 2BC184 802D9D54 00044080 */  sll        $t0, $a0, 2
    /* 2BC188 802D9D58 01044023 */  subu       $t0, $t0, $a0
    /* 2BC18C 802D9D5C 00084100 */  sll        $t0, $t0, 4
    /* 2BC190 802D9D60 01044023 */  subu       $t0, $t0, $a0
    /* 2BC194 802D9D64 000840C0 */  sll        $t0, $t0, 3
    /* 2BC198 802D9D68 01044023 */  subu       $t0, $t0, $a0
    /* 2BC19C 802D9D6C 00084080 */  sll        $t0, $t0, 2
    /* 2BC1A0 802D9D70 0C007660 */  jal        sins
    /* 2BC1A4 802D9D74 3104FFFF */   andi      $a0, $t0, 0xFFFF
    /* 2BC1A8 802D9D78 44824000 */  mtc1       $v0, $f8
    /* 2BC1AC 802D9D7C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BC1B0 802D9D80 44819800 */  mtc1       $at, $f19
    /* 2BC1B4 802D9D84 468042A0 */  cvt.s.w    $f10, $f8
    /* 2BC1B8 802D9D88 44809000 */  mtc1       $zero, $f18
    /* 2BC1BC 802D9D8C 920A001A */  lbu        $t2, 0x1A($s0)
    /* 2BC1C0 802D9D90 3C0C8025 */  lui        $t4, %hi(D_802566D8)
    /* 2BC1C4 802D9D94 8FA60024 */  lw         $a2, 0x24($sp)
    /* 2BC1C8 802D9D98 000A5880 */  sll        $t3, $t2, 2
    /* 2BC1CC 802D9D9C 46005421 */  cvt.d.s    $f16, $f10
    /* 2BC1D0 802D9DA0 016A5823 */  subu       $t3, $t3, $t2
    /* 2BC1D4 802D9DA4 46328103 */  div.d      $f4, $f16, $f18
    /* 2BC1D8 802D9DA8 000B5880 */  sll        $t3, $t3, 2
    /* 2BC1DC 802D9DAC 016A5821 */  addu       $t3, $t3, $t2
    /* 2BC1E0 802D9DB0 000B58C0 */  sll        $t3, $t3, 3
    /* 2BC1E4 802D9DB4 018B6021 */  addu       $t4, $t4, $t3
    /* 2BC1E8 802D9DB8 858C66D8 */  lh         $t4, %lo(D_802566D8)($t4)
    /* 2BC1EC 802D9DBC 3C014034 */  lui        $at, (0x40340000 >> 16)
    /* 2BC1F0 802D9DC0 44813800 */  mtc1       $at, $f7
    /* 2BC1F4 802D9DC4 44803000 */  mtc1       $zero, $f6
    /* 2BC1F8 802D9DC8 00CC6821 */  addu       $t5, $a2, $t4
    /* 2BC1FC 802D9DCC 448D5000 */  mtc1       $t5, $f10
    /* 2BC200 802D9DD0 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 2BC204 802D9DD4 02002825 */  or         $a1, $s0, $zero
    /* 2BC208 802D9DD8 46805421 */  cvt.d.w    $f16, $f10
    /* 2BC20C 802D9DDC 46262202 */  mul.d      $f8, $f4, $f6
    /* 2BC210 802D9DE0 46304480 */  add.d      $f18, $f8, $f16
    /* 2BC214 802D9DE4 4620910D */  trunc.w.d  $f4, $f18
    /* 2BC218 802D9DE8 440F2000 */  mfc1       $t7, $f4
    /* 2BC21C 802D9DEC 00000000 */  nop
    /* 2BC220 802D9DF0 A60F0002 */  sh         $t7, 0x2($s0)
    /* 2BC224 802D9DF4 0C021395 */  jal        func_80084E54_93E04
    /* 2BC228 802D9DF8 8C842B34 */   lw        $a0, %lo(D_80052B34)($a0)
    /* 2BC22C 802D9DFC 284107D0 */  slti       $at, $v0, 0x7D0
    /* 2BC230 802D9E00 10200006 */  beqz       $at, .L802D9E1C_2BC24C
    /* 2BC234 802D9E04 00401825 */   or        $v1, $v0, $zero
    /* 2BC238 802D9E08 93A4004B */  lbu        $a0, 0x4B($sp)
    /* 2BC23C 802D9E0C 0C021553 */  jal        func_8008554C_944FC
    /* 2BC240 802D9E10 AFA2003C */   sw        $v0, 0x3C($sp)
    /* 2BC244 802D9E14 10000003 */  b          .L802D9E24_2BC254
    /* 2BC248 802D9E18 8FA3003C */   lw        $v1, 0x3C($sp)
  .L802D9E1C_2BC24C:
    /* 2BC24C 802D9E1C 24180001 */  addiu      $t8, $zero, 0x1
    /* 2BC250 802D9E20 A218004E */  sb         $t8, 0x4E($s0)
  .L802D9E24_2BC254:
    /* 2BC254 802D9E24 28610321 */  slti       $at, $v1, 0x321
    /* 2BC258 802D9E28 54200033 */  bnel       $at, $zero, .L802D9EF8_2BC328
    /* 2BC25C 802D9E2C 28610191 */   slti      $at, $v1, 0x191
    /* 2BC260 802D9E30 8219004E */  lb         $t9, 0x4E($s0)
    /* 2BC264 802D9E34 53200030 */  beql       $t9, $zero, .L802D9EF8_2BC328
    /* 2BC268 802D9E38 28610191 */   slti      $at, $v1, 0x191
    /* 2BC26C 802D9E3C 8E080020 */  lw         $t0, 0x20($s0)
    /* 2BC270 802D9E40 2401F7BF */  addiu      $at, $zero, -0x841
    /* 2BC274 802D9E44 24050400 */  addiu      $a1, $zero, 0x400
    /* 2BC278 802D9E48 35090100 */  ori        $t1, $t0, 0x100
    /* 2BC27C 802D9E4C 01215824 */  and        $t3, $t1, $at
    /* 2BC280 802D9E50 AE090020 */  sw         $t1, 0x20($s0)
    /* 2BC284 802D9E54 000B6900 */  sll        $t5, $t3, 4
    /* 2BC288 802D9E58 05A10019 */  bgez       $t5, .L802D9EC0_2BC2F0
    /* 2BC28C 802D9E5C AE0B0020 */   sw        $t3, 0x20($s0)
    /* 2BC290 802D9E60 93A4004B */  lbu        $a0, 0x4B($sp)
    /* 2BC294 802D9E64 24050400 */  addiu      $a1, $zero, 0x400
    /* 2BC298 802D9E68 0C0213FA */  jal        func_80084FE8_93F98
    /* 2BC29C 802D9E6C AFA3003C */   sw        $v1, 0x3C($sp)
    /* 2BC2A0 802D9E70 10400043 */  beqz       $v0, .L802D9F80_2BC3B0
    /* 2BC2A4 802D9E74 8FA3003C */   lw        $v1, 0x3C($sp)
    /* 2BC2A8 802D9E78 28610BB8 */  slti       $at, $v1, 0xBB8
    /* 2BC2AC 802D9E7C 10200040 */  beqz       $at, .L802D9F80_2BC3B0
    /* 2BC2B0 802D9E80 93A4004B */   lbu       $a0, 0x4B($sp)
    /* 2BC2B4 802D9E84 24050001 */  addiu      $a1, $zero, 0x1
    /* 2BC2B8 802D9E88 0C021C73 */  jal        func_800871CC_9617C
    /* 2BC2BC 802D9E8C 24060028 */   addiu     $a2, $zero, 0x28
    /* 2BC2C0 802D9E90 1040003B */  beqz       $v0, .L802D9F80_2BC3B0
    /* 2BC2C4 802D9E94 3C0E8005 */   lui       $t6, %hi(D_80052B34)
    /* 2BC2C8 802D9E98 8DCE2B34 */  lw         $t6, %lo(D_80052B34)($t6)
    /* 2BC2CC 802D9E9C 24180014 */  addiu      $t8, $zero, 0x14
    /* 2BC2D0 802D9EA0 2419000A */  addiu      $t9, $zero, 0xA
    /* 2BC2D4 802D9EA4 91CF001A */  lbu        $t7, 0x1A($t6)
    /* 2BC2D8 802D9EA8 15E00003 */  bnez       $t7, .L802D9EB8_2BC2E8
    /* 2BC2DC 802D9EAC 00000000 */   nop
    /* 2BC2E0 802D9EB0 10000033 */  b          .L802D9F80_2BC3B0
    /* 2BC2E4 802D9EB4 A618001E */   sh        $t8, 0x1E($s0)
  .L802D9EB8_2BC2E8:
    /* 2BC2E8 802D9EB8 10000031 */  b          .L802D9F80_2BC3B0
    /* 2BC2EC 802D9EBC A619001E */   sh        $t9, 0x1E($s0)
  .L802D9EC0_2BC2F0:
    /* 2BC2F0 802D9EC0 93A4004B */  lbu        $a0, 0x4B($sp)
    /* 2BC2F4 802D9EC4 0C021437 */  jal        func_800850DC_9408C
    /* 2BC2F8 802D9EC8 AFA3003C */   sw        $v1, 0x3C($sp)
    /* 2BC2FC 802D9ECC 1040002C */  beqz       $v0, .L802D9F80_2BC3B0
    /* 2BC300 802D9ED0 8FA3003C */   lw        $v1, 0x3C($sp)
    /* 2BC304 802D9ED4 28610BB8 */  slti       $at, $v1, 0xBB8
    /* 2BC308 802D9ED8 10200029 */  beqz       $at, .L802D9F80_2BC3B0
    /* 2BC30C 802D9EDC 93A4004B */   lbu       $a0, 0x4B($sp)
    /* 2BC310 802D9EE0 24050001 */  addiu      $a1, $zero, 0x1
    /* 2BC314 802D9EE4 0C021C62 */  jal        func_80087188_96138
    /* 2BC318 802D9EE8 24060014 */   addiu     $a2, $zero, 0x14
    /* 2BC31C 802D9EEC 10000025 */  b          .L802D9F84_2BC3B4
    /* 2BC320 802D9EF0 93A4004B */   lbu       $a0, 0x4B($sp)
    /* 2BC324 802D9EF4 28610191 */  slti       $at, $v1, 0x191
  .L802D9EF8_2BC328:
    /* 2BC328 802D9EF8 50200005 */  beql       $at, $zero, .L802D9F10_2BC340
    /* 2BC32C 802D9EFC 8E090020 */   lw        $t1, 0x20($s0)
    /* 2BC330 802D9F00 8208004E */  lb         $t0, 0x4E($s0)
    /* 2BC334 802D9F04 55000014 */  bnel       $t0, $zero, .L802D9F58_2BC388
    /* 2BC338 802D9F08 8E180020 */   lw        $t8, 0x20($s0)
    /* 2BC33C 802D9F0C 8E090020 */  lw         $t1, 0x20($s0)
  .L802D9F10_2BC340:
    /* 2BC340 802D9F10 2401FEBF */  addiu      $at, $zero, -0x141
    /* 2BC344 802D9F14 352A0800 */  ori        $t2, $t1, 0x800
    /* 2BC348 802D9F18 01416024 */  and        $t4, $t2, $at
    /* 2BC34C 802D9F1C AE0A0020 */  sw         $t2, 0x20($s0)
    /* 2BC350 802D9F20 318D1000 */  andi       $t5, $t4, 0x1000
    /* 2BC354 802D9F24 15A00016 */  bnez       $t5, .L802D9F80_2BC3B0
    /* 2BC358 802D9F28 AE0C0020 */   sw        $t4, 0x20($s0)
    /* 2BC35C 802D9F2C 286103E8 */  slti       $at, $v1, 0x3E8
    /* 2BC360 802D9F30 50200014 */  beql       $at, $zero, .L802D9F84_2BC3B4
    /* 2BC364 802D9F34 93A4004B */   lbu       $a0, 0x4B($sp)
    /* 2BC368 802D9F38 820E004E */  lb         $t6, 0x4E($s0)
    /* 2BC36C 802D9F3C 358F1000 */  ori        $t7, $t4, 0x1000
    /* 2BC370 802D9F40 51C00010 */  beql       $t6, $zero, .L802D9F84_2BC3B4
    /* 2BC374 802D9F44 93A4004B */   lbu       $a0, 0x4B($sp)
    /* 2BC378 802D9F48 AE0F0020 */  sw         $t7, 0x20($s0)
    /* 2BC37C 802D9F4C 1000000C */  b          .L802D9F80_2BC3B0
    /* 2BC380 802D9F50 A2000036 */   sb        $zero, 0x36($s0)
    /* 2BC384 802D9F54 8E180020 */  lw         $t8, 0x20($s0)
  .L802D9F58_2BC388:
    /* 2BC388 802D9F58 2401F7FF */  addiu      $at, $zero, -0x801
    /* 2BC38C 802D9F5C 37190140 */  ori        $t9, $t8, 0x140
    /* 2BC390 802D9F60 03214824 */  and        $t1, $t9, $at
    /* 2BC394 802D9F64 AE190020 */  sw         $t9, 0x20($s0)
    /* 2BC398 802D9F68 312A1000 */  andi       $t2, $t1, 0x1000
    /* 2BC39C 802D9F6C 15400004 */  bnez       $t2, .L802D9F80_2BC3B0
    /* 2BC3A0 802D9F70 AE090020 */   sw        $t1, 0x20($s0)
    /* 2BC3A4 802D9F74 352B1000 */  ori        $t3, $t1, 0x1000
    /* 2BC3A8 802D9F78 AE0B0020 */  sw         $t3, 0x20($s0)
    /* 2BC3AC 802D9F7C A2000036 */  sb         $zero, 0x36($s0)
  .L802D9F80_2BC3B0:
    /* 2BC3B0 802D9F80 93A4004B */  lbu        $a0, 0x4B($sp)
  .L802D9F84_2BC3B4:
    /* 2BC3B4 802D9F84 87A50044 */  lh         $a1, 0x44($sp)
    /* 2BC3B8 802D9F88 0C0B66C2 */  jal        func_802D9B08_2BBF38
    /* 2BC3BC 802D9F8C 87A60042 */   lh        $a2, 0x42($sp)
    /* 2BC3C0 802D9F90 8602001E */  lh         $v0, 0x1E($s0)
    /* 2BC3C4 802D9F94 10400002 */  beqz       $v0, .L802D9FA0_2BC3D0
    /* 2BC3C8 802D9F98 244CFFFF */   addiu     $t4, $v0, -0x1
    /* 2BC3CC 802D9F9C A60C001E */  sh         $t4, 0x1E($s0)
  .L802D9FA0_2BC3D0:
    /* 2BC3D0 802D9FA0 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 2BC3D4 802D9FA4 8FB00018 */  lw         $s0, 0x18($sp)
    /* 2BC3D8 802D9FA8 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 2BC3DC 802D9FAC 03E00008 */  jr         $ra
    /* 2BC3E0 802D9FB0 00000000 */   nop
endlabel func_802D9BFC_2BC02C
