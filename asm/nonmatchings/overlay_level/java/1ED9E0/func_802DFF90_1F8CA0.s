nonmatching func_802DFF90_1F8CA0, 0x210

glabel func_802DFF90_1F8CA0
    /* 1F8CA0 802DFF90 308700FF */  andi       $a3, $a0, 0xFF
    /* 1F8CA4 802DFF94 24060050 */  addiu      $a2, $zero, 0x50
    /* 1F8CA8 802DFF98 00E60019 */  multu      $a3, $a2
    /* 1F8CAC 802DFF9C 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 1F8CB0 802DFFA0 3C058005 */  lui        $a1, %hi(alienInstances)
    /* 1F8CB4 802DFFA4 24A58198 */  addiu      $a1, $a1, %lo(alienInstances)
    /* 1F8CB8 802DFFA8 AFB00040 */  sw         $s0, 0x40($sp)
    /* 1F8CBC 802DFFAC AFBF0044 */  sw         $ra, 0x44($sp)
    /* 1F8CC0 802DFFB0 AFA40068 */  sw         $a0, 0x68($sp)
    /* 1F8CC4 802DFFB4 00007012 */  mflo       $t6
    /* 1F8CC8 802DFFB8 00AE8021 */  addu       $s0, $a1, $t6
    /* 1F8CCC 802DFFBC 8E180020 */  lw         $t8, 0x20($s0)
    /* 1F8CD0 802DFFC0 920F001A */  lbu        $t7, 0x1A($s0)
    /* 1F8CD4 802DFFC4 0018CAC0 */  sll        $t9, $t8, 11
    /* 1F8CD8 802DFFC8 07200025 */  bltz       $t9, .L802E0060_1F8D70
    /* 1F8CDC 802DFFCC A7AF005C */   sh        $t7, 0x5C($sp)
    /* 1F8CE0 802DFFD0 92020025 */  lbu        $v0, 0x25($s0)
    /* 1F8CE4 802DFFD4 00460019 */  multu      $v0, $a2
    /* 1F8CE8 802DFFD8 00004012 */  mflo       $t0
    /* 1F8CEC 802DFFDC 00A81821 */  addu       $v1, $a1, $t0
    /* 1F8CF0 802DFFE0 8C690020 */  lw         $t1, 0x20($v1)
    /* 1F8CF4 802DFFE4 312A2000 */  andi       $t2, $t1, 0x2000
    /* 1F8CF8 802DFFE8 5140000F */  beql       $t2, $zero, .L802E0028_1F8D38
    /* 1F8CFC 802DFFEC 00E02025 */   or        $a0, $a3, $zero
    /* 1F8D00 802DFFF0 906B0025 */  lbu        $t3, 0x25($v1)
    /* 1F8D04 802DFFF4 3C01FFBF */  lui        $at, (0xFFBFFFFF >> 16)
    /* 1F8D08 802DFFF8 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
    /* 1F8D0C 802DFFFC 01660019 */  multu      $t3, $a2
    /* 1F8D10 802E0000 00006012 */  mflo       $t4
    /* 1F8D14 802E0004 00AC2021 */  addu       $a0, $a1, $t4
    /* 1F8D18 802E0008 908D0000 */  lbu        $t5, 0x0($a0)
    /* 1F8D1C 802E000C 01A60019 */  multu      $t5, $a2
    /* 1F8D20 802E0010 00007012 */  mflo       $t6
    /* 1F8D24 802E0014 00AE1021 */  addu       $v0, $a1, $t6
    /* 1F8D28 802E0018 8C4F0020 */  lw         $t7, 0x20($v0)
    /* 1F8D2C 802E001C 01E1C024 */  and        $t8, $t7, $at
    /* 1F8D30 802E0020 AC580020 */  sw         $t8, 0x20($v0)
    /* 1F8D34 802E0024 00E02025 */  or         $a0, $a3, $zero
  .L802E0028_1F8D38:
    /* 1F8D38 802E0028 24050011 */  addiu      $a1, $zero, 0x11
    /* 1F8D3C 802E002C AFA30050 */  sw         $v1, 0x50($sp)
    /* 1F8D40 802E0030 0C04DD1A */  jal        func_80137468_146418
    /* 1F8D44 802E0034 AFA7004C */   sw        $a3, 0x4C($sp)
    /* 1F8D48 802E0038 8FA4004C */  lw         $a0, 0x4C($sp)
    /* 1F8D4C 802E003C 0C01E5E9 */  jal        func_800797A4_88754
    /* 1F8D50 802E0040 24050002 */   addiu     $a1, $zero, 0x2
    /* 1F8D54 802E0044 8FA30050 */  lw         $v1, 0x50($sp)
    /* 1F8D58 802E0048 24090002 */  addiu      $t1, $zero, 0x2
    /* 1F8D5C 802E004C 8479002C */  lh         $t9, 0x2C($v1)
    /* 1F8D60 802E0050 27280004 */  addiu      $t0, $t9, 0x4
    /* 1F8D64 802E0054 A468002C */  sh         $t0, 0x2C($v1)
    /* 1F8D68 802E0058 1000004C */  b          .L802E018C_1F8E9C
    /* 1F8D6C 802E005C A609002C */   sh        $t1, 0x2C($s0)
  .L802E0060_1F8D70:
    /* 1F8D70 802E0060 860A002C */  lh         $t2, 0x2C($s0)
    /* 1F8D74 802E0064 24010001 */  addiu      $at, $zero, 0x1
    /* 1F8D78 802E0068 55410049 */  bnel       $t2, $at, .L802E0190_1F8EA0
    /* 1F8D7C 802E006C 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F8D80 802E0070 860B000C */  lh         $t3, 0xC($s0)
    /* 1F8D84 802E0074 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 1F8D88 802E0078 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 1F8D8C 802E007C 000B6100 */  sll        $t4, $t3, 4
    /* 1F8D90 802E0080 006C6821 */  addu       $t5, $v1, $t4
    /* 1F8D94 802E0084 81A2000C */  lb         $v0, 0xC($t5)
    /* 1F8D98 802E0088 30E400FF */  andi       $a0, $a3, 0xFF
    /* 1F8D9C 802E008C 00027100 */  sll        $t6, $v0, 4
    /* 1F8DA0 802E0090 006E7821 */  addu       $t7, $v1, $t6
    /* 1F8DA4 802E0094 81E5000C */  lb         $a1, 0xC($t7)
    /* 1F8DA8 802E0098 0C02245B */  jal        func_8008916C_9811C
    /* 1F8DAC 802E009C A3A7006B */   sb        $a3, 0x6B($sp)
    /* 1F8DB0 802E00A0 93A4006B */  lbu        $a0, 0x6B($sp)
    /* 1F8DB4 802E00A4 0C0B7E37 */  jal        func_802DF8DC_1F85EC
    /* 1F8DB8 802E00A8 00402825 */   or        $a1, $v0, $zero
    /* 1F8DBC 802E00AC 87B8005C */  lh         $t8, 0x5C($sp)
    /* 1F8DC0 802E00B0 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 1F8DC4 802E00B4 86040000 */  lh         $a0, 0x0($s0)
    /* 1F8DC8 802E00B8 0018C880 */  sll        $t9, $t8, 2
    /* 1F8DCC 802E00BC 0338C823 */  subu       $t9, $t9, $t8
    /* 1F8DD0 802E00C0 0019C880 */  sll        $t9, $t9, 2
    /* 1F8DD4 802E00C4 0338C821 */  addu       $t9, $t9, $t8
    /* 1F8DD8 802E00C8 0019C8C0 */  sll        $t9, $t9, 3
    /* 1F8DDC 802E00CC 00F93821 */  addu       $a3, $a3, $t9
    /* 1F8DE0 802E00D0 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 1F8DE4 802E00D4 86050002 */  lh         $a1, 0x2($s0)
    /* 1F8DE8 802E00D8 86060004 */  lh         $a2, 0x4($s0)
    /* 1F8DEC 802E00DC 0C037E12 */  jal        func_800DF848_EE7F8
    /* 1F8DF0 802E00E0 AFA00010 */   sw        $zero, 0x10($sp)
    /* 1F8DF4 802E00E4 2408007F */  addiu      $t0, $zero, 0x7F
    /* 1F8DF8 802E00E8 24090064 */  addiu      $t1, $zero, 0x64
    /* 1F8DFC 802E00EC 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 1F8E00 802E00F0 240B0014 */  addiu      $t3, $zero, 0x14
    /* 1F8E04 802E00F4 240C000A */  addiu      $t4, $zero, 0xA
    /* 1F8E08 802E00F8 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 1F8E0C 802E00FC 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 1F8E10 802E0100 AFAE002C */  sw         $t6, 0x2C($sp)
    /* 1F8E14 802E0104 AFAD0028 */  sw         $t5, 0x28($sp)
    /* 1F8E18 802E0108 AFAC0024 */  sw         $t4, 0x24($sp)
    /* 1F8E1C 802E010C AFAB0020 */  sw         $t3, 0x20($sp)
    /* 1F8E20 802E0110 AFAA001C */  sw         $t2, 0x1C($sp)
    /* 1F8E24 802E0114 AFA90018 */  sw         $t1, 0x18($sp)
    /* 1F8E28 802E0118 AFA80010 */  sw         $t0, 0x10($sp)
    /* 1F8E2C 802E011C 86040000 */  lh         $a0, 0x0($s0)
    /* 1F8E30 802E0120 86050002 */  lh         $a1, 0x2($s0)
    /* 1F8E34 802E0124 86060004 */  lh         $a2, 0x4($s0)
    /* 1F8E38 802E0128 00003825 */  or         $a3, $zero, $zero
    /* 1F8E3C 802E012C AFA00014 */  sw         $zero, 0x14($sp)
    /* 1F8E40 802E0130 0C031507 */  jal        func_800C541C_D43CC
    /* 1F8E44 802E0134 AFA00030 */   sw        $zero, 0x30($sp)
    /* 1F8E48 802E0138 240FFF81 */  addiu      $t7, $zero, -0x7F
    /* 1F8E4C 802E013C 24180064 */  addiu      $t8, $zero, 0x64
    /* 1F8E50 802E0140 241900FF */  addiu      $t9, $zero, 0xFF
    /* 1F8E54 802E0144 24080014 */  addiu      $t0, $zero, 0x14
    /* 1F8E58 802E0148 2409000A */  addiu      $t1, $zero, 0xA
    /* 1F8E5C 802E014C 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 1F8E60 802E0150 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 1F8E64 802E0154 AFAB002C */  sw         $t3, 0x2C($sp)
    /* 1F8E68 802E0158 AFAA0028 */  sw         $t2, 0x28($sp)
    /* 1F8E6C 802E015C AFA90024 */  sw         $t1, 0x24($sp)
    /* 1F8E70 802E0160 AFA80020 */  sw         $t0, 0x20($sp)
    /* 1F8E74 802E0164 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 1F8E78 802E0168 AFB80018 */  sw         $t8, 0x18($sp)
    /* 1F8E7C 802E016C AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F8E80 802E0170 86040000 */  lh         $a0, 0x0($s0)
    /* 1F8E84 802E0174 86050002 */  lh         $a1, 0x2($s0)
    /* 1F8E88 802E0178 86060004 */  lh         $a2, 0x4($s0)
    /* 1F8E8C 802E017C 00003825 */  or         $a3, $zero, $zero
    /* 1F8E90 802E0180 AFA00014 */  sw         $zero, 0x14($sp)
    /* 1F8E94 802E0184 0C031507 */  jal        func_800C541C_D43CC
    /* 1F8E98 802E0188 AFA00030 */   sw        $zero, 0x30($sp)
  .L802E018C_1F8E9C:
    /* 1F8E9C 802E018C 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802E0190_1F8EA0:
    /* 1F8EA0 802E0190 8FB00040 */  lw         $s0, 0x40($sp)
    /* 1F8EA4 802E0194 27BD0068 */  addiu      $sp, $sp, 0x68
    /* 1F8EA8 802E0198 03E00008 */  jr         $ra
    /* 1F8EAC 802E019C 00000000 */   nop
endlabel func_802DFF90_1F8CA0
