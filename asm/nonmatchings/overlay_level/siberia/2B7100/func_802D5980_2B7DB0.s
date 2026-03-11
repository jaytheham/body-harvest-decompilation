nonmatching func_802D5980_2B7DB0, 0x1D8

glabel func_802D5980_2B7DB0
    /* 2B7DB0 802D5980 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 2B7DB4 802D5984 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 2B7DB8 802D5988 AFB20020 */  sw         $s2, 0x20($sp)
    /* 2B7DBC 802D598C AFB1001C */  sw         $s1, 0x1C($sp)
    /* 2B7DC0 802D5990 AFB00018 */  sw         $s0, 0x18($sp)
    /* 2B7DC4 802D5994 24040000 */  addiu      $a0, $zero, 0x0
    /* 2B7DC8 802D5998 0C001CB3 */  jal        func_800072CC_7ECC
    /* 2B7DCC 802D599C 24050018 */   addiu     $a1, $zero, 0x18
    /* 2B7DD0 802D59A0 24040000 */  addiu      $a0, $zero, 0x0
    /* 2B7DD4 802D59A4 0C001C9B */  jal        func_8000726C_7E6C
    /* 2B7DD8 802D59A8 2405000B */   addiu     $a1, $zero, 0xB
    /* 2B7DDC 802D59AC 14400006 */  bnez       $v0, .L802D59C8_2B7DF8
    /* 2B7DE0 802D59B0 3C028005 */   lui       $v0, %hi(vehicleInstances)
    /* 2B7DE4 802D59B4 2442DCD0 */  addiu      $v0, $v0, %lo(vehicleInstances)
    /* 2B7DE8 802D59B8 944E0A8C */  lhu        $t6, 0xA8C($v0)
    /* 2B7DEC 802D59BC 35CF0080 */  ori        $t7, $t6, 0x80
    /* 2B7DF0 802D59C0 10000005 */  b          .L802D59D8_2B7E08
    /* 2B7DF4 802D59C4 A44F0A8C */   sh        $t7, 0xA8C($v0)
  .L802D59C8_2B7DF8:
    /* 2B7DF8 802D59C8 0C047020 */  jal        func_8011C080_12B030
    /* 2B7DFC 802D59CC 24040067 */   addiu     $a0, $zero, 0x67
    /* 2B7E00 802D59D0 3C028005 */  lui        $v0, %hi(vehicleInstances)
    /* 2B7E04 802D59D4 2442DCD0 */  addiu      $v0, $v0, %lo(vehicleInstances)
  .L802D59D8_2B7E08:
    /* 2B7E08 802D59D8 94580AE8 */  lhu        $t8, 0xAE8($v0)
    /* 2B7E0C 802D59DC 3C018015 */  lui        $at, %hi(D_80157FA8)
    /* 2B7E10 802D59E0 3C04802E */  lui        $a0, %hi(D_802E2EB0)
    /* 2B7E14 802D59E4 37190080 */  ori        $t9, $t8, 0x80
    /* 2B7E18 802D59E8 A4590AE8 */  sh         $t9, 0xAE8($v0)
    /* 2B7E1C 802D59EC AC207FA8 */  sw         $zero, %lo(D_80157FA8)($at)
    /* 2B7E20 802D59F0 3C018016 */  lui        $at, %hi(D_801591C4)
    /* 2B7E24 802D59F4 A42091C4 */  sh         $zero, %lo(D_801591C4)($at)
    /* 2B7E28 802D59F8 0C00731B */  jal        osSyncPrintf
    /* 2B7E2C 802D59FC 24842EB0 */   addiu     $a0, $a0, %lo(D_802E2EB0)
    /* 2B7E30 802D5A00 3C04802D */  lui        $a0, %hi(func_802D5754_2B7B84)
    /* 2B7E34 802D5A04 0C001D04 */  jal        func_80007410_8010
    /* 2B7E38 802D5A08 24845754 */   addiu     $a0, $a0, %lo(func_802D5754_2B7B84)
    /* 2B7E3C 802D5A0C 3C088004 */  lui        $t0, %hi(D_80047F94)
    /* 2B7E40 802D5A10 8D087F94 */  lw         $t0, %lo(D_80047F94)($t0)
    /* 2B7E44 802D5A14 3C05802D */  lui        $a1, %hi(D_802D48D0)
    /* 2B7E48 802D5A18 24A548D0 */  addiu      $a1, $a1, %lo(D_802D48D0)
    /* 2B7E4C 802D5A1C 15000005 */  bnez       $t0, .L802D5A34_2B7E64
    /* 2B7E50 802D5A20 00001825 */   or        $v1, $zero, $zero
    /* 2B7E54 802D5A24 0C0B53C7 */  jal        func_802D4F1C_2B734C
    /* 2B7E58 802D5A28 00000000 */   nop
    /* 2B7E5C 802D5A2C 1000000E */  b          .L802D5A68_2B7E98
    /* 2B7E60 802D5A30 240D0001 */   addiu     $t5, $zero, 0x1
  .L802D5A34_2B7E64:
    /* 2B7E64 802D5A34 3C04802E */  lui        $a0, %hi(D_802E30A0)
    /* 2B7E68 802D5A38 248430A0 */  addiu      $a0, $a0, %lo(D_802E30A0)
  .L802D5A3C_2B7E6C:
    /* 2B7E6C 802D5A3C 00031040 */  sll        $v0, $v1, 1
    /* 2B7E70 802D5A40 24630001 */  addiu      $v1, $v1, 0x1
    /* 2B7E74 802D5A44 00A24821 */  addu       $t1, $a1, $v0
    /* 2B7E78 802D5A48 952A0000 */  lhu        $t2, 0x0($t1)
    /* 2B7E7C 802D5A4C 306C00FF */  andi       $t4, $v1, 0xFF
    /* 2B7E80 802D5A50 29810026 */  slti       $at, $t4, 0x26
    /* 2B7E84 802D5A54 00825821 */  addu       $t3, $a0, $v0
    /* 2B7E88 802D5A58 01801825 */  or         $v1, $t4, $zero
    /* 2B7E8C 802D5A5C 1420FFF7 */  bnez       $at, .L802D5A3C_2B7E6C
    /* 2B7E90 802D5A60 A56A0000 */   sh        $t2, 0x0($t3)
    /* 2B7E94 802D5A64 240D0001 */  addiu      $t5, $zero, 0x1
  .L802D5A68_2B7E98:
    /* 2B7E98 802D5A68 3C01802E */  lui        $at, %hi(D_802E3094)
    /* 2B7E9C 802D5A6C AC2D3094 */  sw         $t5, %lo(D_802E3094)($at)
    /* 2B7EA0 802D5A70 3C01802E */  lui        $at, %hi(D_802E309C)
    /* 2B7EA4 802D5A74 240EFFFF */  addiu      $t6, $zero, -0x1
    /* 2B7EA8 802D5A78 3C128005 */  lui        $s2, %hi(buildingInstances)
    /* 2B7EAC 802D5A7C A42E309C */  sh         $t6, %lo(D_802E309C)($at)
    /* 2B7EB0 802D5A80 26520AD8 */  addiu      $s2, $s2, %lo(buildingInstances)
    /* 2B7EB4 802D5A84 00008025 */  or         $s0, $zero, $zero
    /* 2B7EB8 802D5A88 24110018 */  addiu      $s1, $zero, 0x18
  .L802D5A8C_2B7EBC:
    /* 2B7EBC 802D5A8C 02110019 */  multu      $s0, $s1
    /* 2B7EC0 802D5A90 00007812 */  mflo       $t7
    /* 2B7EC4 802D5A94 024FC021 */  addu       $t8, $s2, $t7
    /* 2B7EC8 802D5A98 87190002 */  lh         $t9, 0x2($t8)
    /* 2B7ECC 802D5A9C 2B212711 */  slti       $at, $t9, 0x2711
    /* 2B7ED0 802D5AA0 54200004 */  bnel       $at, $zero, .L802D5AB4_2B7EE4
    /* 2B7ED4 802D5AA4 26100001 */   addiu     $s0, $s0, 0x1
    /* 2B7ED8 802D5AA8 0C047020 */  jal        func_8011C080_12B030
    /* 2B7EDC 802D5AAC 320400FF */   andi      $a0, $s0, 0xFF
    /* 2B7EE0 802D5AB0 26100001 */  addiu      $s0, $s0, 0x1
  .L802D5AB4_2B7EE4:
    /* 2B7EE4 802D5AB4 320800FF */  andi       $t0, $s0, 0xFF
    /* 2B7EE8 802D5AB8 290100FF */  slti       $at, $t0, 0xFF
    /* 2B7EEC 802D5ABC 1420FFF3 */  bnez       $at, .L802D5A8C_2B7EBC
    /* 2B7EF0 802D5AC0 01008025 */   or        $s0, $t0, $zero
    /* 2B7EF4 802D5AC4 24040000 */  addiu      $a0, $zero, 0x0
    /* 2B7EF8 802D5AC8 0C001C9B */  jal        func_8000726C_7E6C
    /* 2B7EFC 802D5ACC 2405000D */   addiu     $a1, $zero, 0xD
    /* 2B7F00 802D5AD0 1040000C */  beqz       $v0, .L802D5B04_2B7F34
    /* 2B7F04 802D5AD4 24040045 */   addiu     $a0, $zero, 0x45
    /* 2B7F08 802D5AD8 A240067F */  sb         $zero, 0x67F($s2)
    /* 2B7F0C 802D5ADC A2400787 */  sb         $zero, 0x787($s2)
    /* 2B7F10 802D5AE0 A240061F */  sb         $zero, 0x61F($s2)
    /* 2B7F14 802D5AE4 0C047020 */  jal        func_8011C080_12B030
    /* 2B7F18 802D5AE8 A2400817 */   sb        $zero, 0x817($s2)
    /* 2B7F1C 802D5AEC 0C047020 */  jal        func_8011C080_12B030
    /* 2B7F20 802D5AF0 24040050 */   addiu     $a0, $zero, 0x50
    /* 2B7F24 802D5AF4 0C047020 */  jal        func_8011C080_12B030
    /* 2B7F28 802D5AF8 24040041 */   addiu     $a0, $zero, 0x41
    /* 2B7F2C 802D5AFC 0C047020 */  jal        func_8011C080_12B030
    /* 2B7F30 802D5B00 24040056 */   addiu     $a0, $zero, 0x56
  .L802D5B04_2B7F34:
    /* 2B7F34 802D5B04 24040000 */  addiu      $a0, $zero, 0x0
    /* 2B7F38 802D5B08 0C001C9B */  jal        func_8000726C_7E6C
    /* 2B7F3C 802D5B0C 24050014 */   addiu     $a1, $zero, 0x14
    /* 2B7F40 802D5B10 10400003 */  beqz       $v0, .L802D5B20_2B7F50
    /* 2B7F44 802D5B14 24040000 */   addiu     $a0, $zero, 0x0
    /* 2B7F48 802D5B18 2409006E */  addiu      $t1, $zero, 0x6E
    /* 2B7F4C 802D5B1C A2490E22 */  sb         $t1, 0xE22($s2)
  .L802D5B20_2B7F50:
    /* 2B7F50 802D5B20 0C001C9B */  jal        func_8000726C_7E6C
    /* 2B7F54 802D5B24 2405001C */   addiu     $a1, $zero, 0x1C
    /* 2B7F58 802D5B28 10400005 */  beqz       $v0, .L802D5B40_2B7F70
    /* 2B7F5C 802D5B2C 3C028005 */   lui       $v0, %hi(vehicleInstances)
    /* 2B7F60 802D5B30 2442DCD0 */  addiu      $v0, $v0, %lo(vehicleInstances)
    /* 2B7F64 802D5B34 944A0D10 */  lhu        $t2, 0xD10($v0)
    /* 2B7F68 802D5B38 354B0010 */  ori        $t3, $t2, 0x10
    /* 2B7F6C 802D5B3C A44B0D10 */  sh         $t3, 0xD10($v0)
  .L802D5B40_2B7F70:
    /* 2B7F70 802D5B40 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 2B7F74 802D5B44 8FB00018 */  lw         $s0, 0x18($sp)
    /* 2B7F78 802D5B48 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 2B7F7C 802D5B4C 8FB20020 */  lw         $s2, 0x20($sp)
    /* 2B7F80 802D5B50 03E00008 */  jr         $ra
    /* 2B7F84 802D5B54 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_802D5980_2B7DB0
