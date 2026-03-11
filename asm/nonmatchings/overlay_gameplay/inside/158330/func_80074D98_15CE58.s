nonmatching func_80074D98_15CE58, 0x258

glabel func_80074D98_15CE58
    /* 15CE58 80074D98 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* 15CE5C 80074D9C 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* 15CE60 80074DA0 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 15CE64 80074DA4 24010004 */  addiu      $at, $zero, 0x4
    /* 15CE68 80074DA8 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 15CE6C 80074DAC 15C1008B */  bne        $t6, $at, .L80074FDC_15D09C
    /* 15CE70 80074DB0 AFB00038 */   sw        $s0, 0x38($sp)
    /* 15CE74 80074DB4 00047880 */  sll        $t7, $a0, 2
    /* 15CE78 80074DB8 01E47823 */  subu       $t7, $t7, $a0
    /* 15CE7C 80074DBC 3C18800E */  lui        $t8, %hi(D_800E66A8)
    /* 15CE80 80074DC0 271866A8 */  addiu      $t8, $t8, %lo(D_800E66A8)
    /* 15CE84 80074DC4 000F7900 */  sll        $t7, $t7, 4
    /* 15CE88 80074DC8 01F81821 */  addu       $v1, $t7, $t8
    /* 15CE8C 80074DCC 90790000 */  lbu        $t9, 0x0($v1)
    /* 15CE90 80074DD0 24010018 */  addiu      $at, $zero, 0x18
    /* 15CE94 80074DD4 3C0A8005 */  lui        $t2, %hi(buildingInteriorToLoadId)
    /* 15CE98 80074DD8 57210081 */  bnel       $t9, $at, .L80074FE0_15D0A0
    /* 15CE9C 80074DDC 8FBF003C */   lw        $ra, 0x3C($sp)
    /* 15CEA0 80074DE0 8D4A2548 */  lw         $t2, %lo(buildingInteriorToLoadId)($t2)
    /* 15CEA4 80074DE4 24010020 */  addiu      $at, $zero, 0x20
    /* 15CEA8 80074DE8 24040000 */  addiu      $a0, $zero, 0x0
    /* 15CEAC 80074DEC 1541007B */  bne        $t2, $at, .L80074FDC_15D09C
    /* 15CEB0 80074DF0 24050002 */   addiu     $a1, $zero, 0x2
    /* 15CEB4 80074DF4 0C001C9B */  jal        func_8000726C_7E6C
    /* 15CEB8 80074DF8 AFA30050 */   sw        $v1, 0x50($sp)
    /* 15CEBC 80074DFC 14400077 */  bnez       $v0, .L80074FDC_15D09C
    /* 15CEC0 80074E00 8FA30050 */   lw        $v1, 0x50($sp)
    /* 15CEC4 80074E04 846B0004 */  lh         $t3, 0x4($v1)
    /* 15CEC8 80074E08 C4640024 */  lwc1       $f4, 0x24($v1)
    /* 15CECC 80074E0C 3C014325 */  lui        $at, (0x43250000 >> 16)
    /* 15CED0 80074E10 256CFFA0 */  addiu      $t4, $t3, -0x60
    /* 15CED4 80074E14 448C3000 */  mtc1       $t4, $f6
    /* 15CED8 80074E18 44818000 */  mtc1       $at, $f16
    /* 15CEDC 80074E1C 84680002 */  lh         $t0, 0x2($v1)
    /* 15CEE0 80074E20 46803220 */  cvt.s.w    $f8, $f6
    /* 15CEE4 80074E24 84690006 */  lh         $t1, 0x6($v1)
    /* 15CEE8 80074E28 2508FFA0 */  addiu      $t0, $t0, -0x60
    /* 15CEEC 80074E2C 25040014 */  addiu      $a0, $t0, 0x14
    /* 15CEF0 80074E30 2529FFA0 */  addiu      $t1, $t1, -0x60
    /* 15CEF4 80074E34 25260014 */  addiu      $a2, $t1, 0x14
    /* 15CEF8 80074E38 46082280 */  add.s      $f10, $f4, $f8
    /* 15CEFC 80074E3C 00047400 */  sll        $t6, $a0, 16
    /* 15CF00 80074E40 000E2403 */  sra        $a0, $t6, 16
    /* 15CF04 80074E44 00065400 */  sll        $t2, $a2, 16
    /* 15CF08 80074E48 46105480 */  add.s      $f18, $f10, $f16
    /* 15CF0C 80074E4C 000A3403 */  sra        $a2, $t2, 16
    /* 15CF10 80074E50 240E0032 */  addiu      $t6, $zero, 0x32
    /* 15CF14 80074E54 240C00C8 */  addiu      $t4, $zero, 0xC8
    /* 15CF18 80074E58 4600918D */  trunc.w.s  $f6, $f18
    /* 15CF1C 80074E5C 240D0078 */  addiu      $t5, $zero, 0x78
    /* 15CF20 80074E60 240F0064 */  addiu      $t7, $zero, 0x64
    /* 15CF24 80074E64 AFAF002C */  sw         $t7, 0x2C($sp)
    /* 15CF28 80074E68 44023000 */  mfc1       $v0, $f6
    /* 15CF2C 80074E6C AFAD0020 */  sw         $t5, 0x20($sp)
    /* 15CF30 80074E70 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 15CF34 80074E74 00028400 */  sll        $s0, $v0, 16
    /* 15CF38 80074E78 0010C403 */  sra        $t8, $s0, 16
    /* 15CF3C 80074E7C 00182C00 */  sll        $a1, $t8, 16
    /* 15CF40 80074E80 0005CC03 */  sra        $t9, $a1, 16
    /* 15CF44 80074E84 03202825 */  or         $a1, $t9, $zero
    /* 15CF48 80074E88 03008025 */  or         $s0, $t8, $zero
    /* 15CF4C 80074E8C AFAE0028 */  sw         $t6, 0x28($sp)
    /* 15CF50 80074E90 AFA60044 */  sw         $a2, 0x44($sp)
    /* 15CF54 80074E94 AFA4004C */  sw         $a0, 0x4C($sp)
    /* 15CF58 80074E98 AFA90054 */  sw         $t1, 0x54($sp)
    /* 15CF5C 80074E9C AFA8005C */  sw         $t0, 0x5C($sp)
    /* 15CF60 80074EA0 240700C8 */  addiu      $a3, $zero, 0xC8
    /* 15CF64 80074EA4 AFA00010 */  sw         $zero, 0x10($sp)
    /* 15CF68 80074EA8 AFA00018 */  sw         $zero, 0x18($sp)
    /* 15CF6C 80074EAC AFA0001C */  sw         $zero, 0x1C($sp)
    /* 15CF70 80074EB0 0C0213BB */  jal        func_80084EEC_16CFAC
    /* 15CF74 80074EB4 AFA00024 */   sw        $zero, 0x24($sp)
    /* 15CF78 80074EB8 8FA8005C */  lw         $t0, 0x5C($sp)
    /* 15CF7C 80074EBC 8FA90054 */  lw         $t1, 0x54($sp)
    /* 15CF80 80074EC0 00102C00 */  sll        $a1, $s0, 16
    /* 15CF84 80074EC4 2504FFEC */  addiu      $a0, $t0, -0x14
    /* 15CF88 80074EC8 0004C400 */  sll        $t8, $a0, 16
    /* 15CF8C 80074ECC 2526FFEC */  addiu      $a2, $t1, -0x14
    /* 15CF90 80074ED0 00065C00 */  sll        $t3, $a2, 16
    /* 15CF94 80074ED4 00182403 */  sra        $a0, $t8, 16
    /* 15CF98 80074ED8 3C018009 */  lui        $at, %hi(D_8008DE78)
    /* 15CF9C 80074EDC 24180064 */  addiu      $t8, $zero, 0x64
    /* 15CFA0 80074EE0 000B3403 */  sra        $a2, $t3, 16
    /* 15CFA4 80074EE4 00055403 */  sra        $t2, $a1, 16
    /* 15CFA8 80074EE8 240D00C8 */  addiu      $t5, $zero, 0xC8
    /* 15CFAC 80074EEC 240E0078 */  addiu      $t6, $zero, 0x78
    /* 15CFB0 80074EF0 240F0032 */  addiu      $t7, $zero, 0x32
    /* 15CFB4 80074EF4 AC22DE78 */  sw         $v0, %lo(D_8008DE78)($at)
    /* 15CFB8 80074EF8 AFAF0028 */  sw         $t7, 0x28($sp)
    /* 15CFBC 80074EFC AFAE0020 */  sw         $t6, 0x20($sp)
    /* 15CFC0 80074F00 AFAD0014 */  sw         $t5, 0x14($sp)
    /* 15CFC4 80074F04 01402825 */  or         $a1, $t2, $zero
    /* 15CFC8 80074F08 AFA60040 */  sw         $a2, 0x40($sp)
    /* 15CFCC 80074F0C AFB8002C */  sw         $t8, 0x2C($sp)
    /* 15CFD0 80074F10 AFA40050 */  sw         $a0, 0x50($sp)
    /* 15CFD4 80074F14 240700C8 */  addiu      $a3, $zero, 0xC8
    /* 15CFD8 80074F18 AFA00010 */  sw         $zero, 0x10($sp)
    /* 15CFDC 80074F1C AFA00018 */  sw         $zero, 0x18($sp)
    /* 15CFE0 80074F20 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 15CFE4 80074F24 0C0213BB */  jal        func_80084EEC_16CFAC
    /* 15CFE8 80074F28 AFA00024 */   sw        $zero, 0x24($sp)
    /* 15CFEC 80074F2C 00102C00 */  sll        $a1, $s0, 16
    /* 15CFF0 80074F30 3C018009 */  lui        $at, %hi(D_8008DE7C)
    /* 15CFF4 80074F34 0005CC03 */  sra        $t9, $a1, 16
    /* 15CFF8 80074F38 240A00C8 */  addiu      $t2, $zero, 0xC8
    /* 15CFFC 80074F3C 240B0078 */  addiu      $t3, $zero, 0x78
    /* 15D000 80074F40 240C0032 */  addiu      $t4, $zero, 0x32
    /* 15D004 80074F44 240D0064 */  addiu      $t5, $zero, 0x64
    /* 15D008 80074F48 AC22DE7C */  sw         $v0, %lo(D_8008DE7C)($at)
    /* 15D00C 80074F4C 8FA60040 */  lw         $a2, 0x40($sp)
    /* 15D010 80074F50 AFAD002C */  sw         $t5, 0x2C($sp)
    /* 15D014 80074F54 AFAC0028 */  sw         $t4, 0x28($sp)
    /* 15D018 80074F58 AFAB0020 */  sw         $t3, 0x20($sp)
    /* 15D01C 80074F5C AFAA0014 */  sw         $t2, 0x14($sp)
    /* 15D020 80074F60 03202825 */  or         $a1, $t9, $zero
    /* 15D024 80074F64 87A4004E */  lh         $a0, 0x4E($sp)
    /* 15D028 80074F68 240700C8 */  addiu      $a3, $zero, 0xC8
    /* 15D02C 80074F6C AFA00010 */  sw         $zero, 0x10($sp)
    /* 15D030 80074F70 AFA00018 */  sw         $zero, 0x18($sp)
    /* 15D034 80074F74 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 15D038 80074F78 0C0213BB */  jal        func_80084EEC_16CFAC
    /* 15D03C 80074F7C AFA00024 */   sw        $zero, 0x24($sp)
    /* 15D040 80074F80 00102C00 */  sll        $a1, $s0, 16
    /* 15D044 80074F84 3C018009 */  lui        $at, %hi(D_8008DE80)
    /* 15D048 80074F88 00057403 */  sra        $t6, $a1, 16
    /* 15D04C 80074F8C 240F00C8 */  addiu      $t7, $zero, 0xC8
    /* 15D050 80074F90 24180078 */  addiu      $t8, $zero, 0x78
    /* 15D054 80074F94 24190032 */  addiu      $t9, $zero, 0x32
    /* 15D058 80074F98 240A0064 */  addiu      $t2, $zero, 0x64
    /* 15D05C 80074F9C AC22DE80 */  sw         $v0, %lo(D_8008DE80)($at)
    /* 15D060 80074FA0 AFAA002C */  sw         $t2, 0x2C($sp)
    /* 15D064 80074FA4 AFB90028 */  sw         $t9, 0x28($sp)
    /* 15D068 80074FA8 AFB80020 */  sw         $t8, 0x20($sp)
    /* 15D06C 80074FAC AFAF0014 */  sw         $t7, 0x14($sp)
    /* 15D070 80074FB0 01C02825 */  or         $a1, $t6, $zero
    /* 15D074 80074FB4 87A40052 */  lh         $a0, 0x52($sp)
    /* 15D078 80074FB8 87A60046 */  lh         $a2, 0x46($sp)
    /* 15D07C 80074FBC 240700C8 */  addiu      $a3, $zero, 0xC8
    /* 15D080 80074FC0 AFA00010 */  sw         $zero, 0x10($sp)
    /* 15D084 80074FC4 AFA00018 */  sw         $zero, 0x18($sp)
    /* 15D088 80074FC8 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 15D08C 80074FCC 0C0213BB */  jal        func_80084EEC_16CFAC
    /* 15D090 80074FD0 AFA00024 */   sw        $zero, 0x24($sp)
    /* 15D094 80074FD4 3C018009 */  lui        $at, %hi(D_8008DE84)
    /* 15D098 80074FD8 AC22DE84 */  sw         $v0, %lo(D_8008DE84)($at)
  .L80074FDC_15D09C:
    /* 15D09C 80074FDC 8FBF003C */  lw         $ra, 0x3C($sp)
  .L80074FE0_15D0A0:
    /* 15D0A0 80074FE0 8FB00038 */  lw         $s0, 0x38($sp)
    /* 15D0A4 80074FE4 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 15D0A8 80074FE8 03E00008 */  jr         $ra
    /* 15D0AC 80074FEC 00000000 */   nop
endlabel func_80074D98_15CE58
