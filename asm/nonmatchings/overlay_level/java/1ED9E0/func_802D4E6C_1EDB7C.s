nonmatching func_802D4E6C_1EDB7C, 0x104

glabel func_802D4E6C_1EDB7C
    /* 1EDB7C 802D4E6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EDB80 802D4E70 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EDB84 802D4E74 3C048005 */  lui        $a0, %hi(D_8004DFB0)
    /* 1EDB88 802D4E78 3C054428 */  lui        $a1, (0x4428C000 >> 16)
    /* 1EDB8C 802D4E7C 34A5C000 */  ori        $a1, $a1, (0x4428C000 & 0xFFFF)
    /* 1EDB90 802D4E80 0C03ED1A */  jal        func_800FB468_10A418
    /* 1EDB94 802D4E84 2484DFB0 */   addiu     $a0, $a0, %lo(D_8004DFB0)
    /* 1EDB98 802D4E88 3C028005 */  lui        $v0, %hi(vehicleInstances)
    /* 1EDB9C 802D4E8C 2442DCD0 */  addiu      $v0, $v0, %lo(vehicleInstances)
    /* 1EDBA0 802D4E90 944E0300 */  lhu        $t6, 0x300($v0)
    /* 1EDBA4 802D4E94 24040000 */  addiu      $a0, $zero, 0x0
    /* 1EDBA8 802D4E98 2405001E */  addiu      $a1, $zero, 0x1E
    /* 1EDBAC 802D4E9C 35CF0003 */  ori        $t7, $t6, 0x3
    /* 1EDBB0 802D4EA0 0C001C9B */  jal        func_8000726C_7E6C
    /* 1EDBB4 802D4EA4 A44F0300 */   sh        $t7, 0x300($v0)
    /* 1EDBB8 802D4EA8 10400014 */  beqz       $v0, .L802D4EFC_1EDC0C
    /* 1EDBBC 802D4EAC 2404000C */   addiu     $a0, $zero, 0xC
    /* 1EDBC0 802D4EB0 0C0389C8 */  jal        func_800E2720_F16D0
    /* 1EDBC4 802D4EB4 00002025 */   or        $a0, $zero, $zero
    /* 1EDBC8 802D4EB8 3C05802D */  lui        $a1, %hi(D_802D48D0)
    /* 1EDBCC 802D4EBC 3C04802D */  lui        $a0, %hi(D_802D4AD0)
    /* 1EDBD0 802D4EC0 24844AD0 */  addiu      $a0, $a0, %lo(D_802D4AD0)
    /* 1EDBD4 802D4EC4 24A548D0 */  addiu      $a1, $a1, %lo(D_802D48D0)
    /* 1EDBD8 802D4EC8 00001825 */  or         $v1, $zero, $zero
  .L802D4ECC_1EDBDC:
    /* 1EDBDC 802D4ECC 00031040 */  sll        $v0, $v1, 1
    /* 1EDBE0 802D4ED0 24630001 */  addiu      $v1, $v1, 0x1
    /* 1EDBE4 802D4ED4 00034C00 */  sll        $t1, $v1, 16
    /* 1EDBE8 802D4ED8 00A2C021 */  addu       $t8, $a1, $v0
    /* 1EDBEC 802D4EDC 97190000 */  lhu        $t9, 0x0($t8)
    /* 1EDBF0 802D4EE0 00091C03 */  sra        $v1, $t1, 16
    /* 1EDBF4 802D4EE4 28610100 */  slti       $at, $v1, 0x100
    /* 1EDBF8 802D4EE8 00824021 */  addu       $t0, $a0, $v0
    /* 1EDBFC 802D4EEC 1420FFF7 */  bnez       $at, .L802D4ECC_1EDBDC
    /* 1EDC00 802D4EF0 A5190000 */   sh        $t9, 0x0($t0)
    /* 1EDC04 802D4EF4 10000003 */  b          .L802D4F04_1EDC14
    /* 1EDC08 802D4EF8 00000000 */   nop
  .L802D4EFC_1EDC0C:
    /* 1EDC0C 802D4EFC 0C0B5334 */  jal        func_802D4CD0_1ED9E0
    /* 1EDC10 802D4F00 00002825 */   or        $a1, $zero, $zero
  .L802D4F04_1EDC14:
    /* 1EDC14 802D4F04 3C068005 */  lui        $a2, %hi(buildingInstances)
    /* 1EDC18 802D4F08 24C60AD8 */  addiu      $a2, $a2, %lo(buildingInstances)
    /* 1EDC1C 802D4F0C 8CC20398 */  lw         $v0, 0x398($a2)
    /* 1EDC20 802D4F10 3C010001 */  lui        $at, (0x10000 >> 16)
    /* 1EDC24 802D4F14 24040000 */  addiu      $a0, $zero, 0x0
    /* 1EDC28 802D4F18 00021B02 */  srl        $v1, $v0, 12
    /* 1EDC2C 802D4F1C 00615825 */  or         $t3, $v1, $at
    /* 1EDC30 802D4F20 01636026 */  xor        $t4, $t3, $v1
    /* 1EDC34 802D4F24 000C6B00 */  sll        $t5, $t4, 12
    /* 1EDC38 802D4F28 01A27026 */  xor        $t6, $t5, $v0
    /* 1EDC3C 802D4F2C ACCE0398 */  sw         $t6, 0x398($a2)
    /* 1EDC40 802D4F30 0C001C9B */  jal        func_8000726C_7E6C
    /* 1EDC44 802D4F34 24050011 */   addiu     $a1, $zero, 0x11
    /* 1EDC48 802D4F38 10400005 */  beqz       $v0, .L802D4F50_1EDC60
    /* 1EDC4C 802D4F3C 00000000 */   nop
    /* 1EDC50 802D4F40 0C047020 */  jal        func_8011C080_12B030
    /* 1EDC54 802D4F44 24040031 */   addiu     $a0, $zero, 0x31
    /* 1EDC58 802D4F48 0C047020 */  jal        func_8011C080_12B030
    /* 1EDC5C 802D4F4C 24040032 */   addiu     $a0, $zero, 0x32
  .L802D4F50_1EDC60:
    /* 1EDC60 802D4F50 3C028005 */  lui        $v0, %hi(vehicleInstances)
    /* 1EDC64 802D4F54 2442DCD0 */  addiu      $v0, $v0, %lo(vehicleInstances)
    /* 1EDC68 802D4F58 944F14F8 */  lhu        $t7, 0x14F8($v0)
    /* 1EDC6C 802D4F5C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EDC70 802D4F60 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EDC74 802D4F64 35F80080 */  ori        $t8, $t7, 0x80
    /* 1EDC78 802D4F68 03E00008 */  jr         $ra
    /* 1EDC7C 802D4F6C A45814F8 */   sh        $t8, 0x14F8($v0)
endlabel func_802D4E6C_1EDB7C
