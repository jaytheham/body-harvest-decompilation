nonmatching func_800FC1CC_10B17C, 0x268

glabel func_800FC1CC_10B17C
    /* 10B17C 800FC1CC 3C0E8016 */  lui        $t6, %hi(D_80159320)
    /* 10B180 800FC1D0 8DCE9320 */  lw         $t6, %lo(D_80159320)($t6)
    /* 10B184 800FC1D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 10B188 800FC1D8 3C0A7FFF */  lui        $t2, (0x7FFFFFFF >> 16)
    /* 10B18C 800FC1DC 3C098005 */  lui        $t1, %hi(D_80052B20)
    /* 10B190 800FC1E0 3C078016 */  lui        $a3, %hi(D_80158FD8)
    /* 10B194 800FC1E4 31CF0002 */  andi       $t7, $t6, 0x2
    /* 10B198 800FC1E8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 10B19C 800FC1EC AFB10018 */  sw         $s1, 0x18($sp)
    /* 10B1A0 800FC1F0 AFB00014 */  sw         $s0, 0x14($sp)
    /* 10B1A4 800FC1F4 354AFFFF */  ori        $t2, $t2, (0x7FFFFFFF & 0xFFFF)
    /* 10B1A8 800FC1F8 8D292B20 */  lw         $t1, %lo(D_80052B20)($t1)
    /* 10B1AC 800FC1FC 11E00003 */  beqz       $t7, .L800FC20C_10B1BC
    /* 10B1B0 800FC200 84E78FD8 */   lh        $a3, %lo(D_80158FD8)($a3)
    /* 10B1B4 800FC204 10000086 */  b          .L800FC420_10B3D0
    /* 10B1B8 800FC208 00001025 */   or        $v0, $zero, $zero
  .L800FC20C_10B1BC:
    /* 10B1BC 800FC20C 00E01825 */  or         $v1, $a3, $zero
    /* 10B1C0 800FC210 24E7FFFF */  addiu      $a3, $a3, -0x1
    /* 10B1C4 800FC214 0007C400 */  sll        $t8, $a3, 16
    /* 10B1C8 800FC218 10600037 */  beqz       $v1, .L800FC2F8_10B2A8
    /* 10B1CC 800FC21C 00183C03 */   sra       $a3, $t8, 16
    /* 10B1D0 800FC220 3C118016 */  lui        $s1, %hi(D_80158F8C)
    /* 10B1D4 800FC224 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 10B1D8 800FC228 3C0C8016 */  lui        $t4, %hi(D_80158E80)
    /* 10B1DC 800FC22C 3C0B8005 */  lui        $t3, %hi(vehicleInstances)
    /* 10B1E0 800FC230 256BDCD0 */  addiu      $t3, $t3, %lo(vehicleInstances)
    /* 10B1E4 800FC234 258C8E80 */  addiu      $t4, $t4, %lo(D_80158E80)
    /* 10B1E8 800FC238 26102B34 */  addiu      $s0, $s0, %lo(D_80052B34)
    /* 10B1EC 800FC23C 26318F8C */  addiu      $s1, $s1, %lo(D_80158F8C)
    /* 10B1F0 800FC240 241F0012 */  addiu      $ra, $zero, 0x12
    /* 10B1F4 800FC244 240D005C */  addiu      $t5, $zero, 0x5C
  .L800FC248_10B1F8:
    /* 10B1F8 800FC248 01877021 */  addu       $t6, $t4, $a3
    /* 10B1FC 800FC24C 91CF0000 */  lbu        $t7, 0x0($t6)
    /* 10B200 800FC250 01ED0019 */  multu      $t7, $t5
    /* 10B204 800FC254 0000C012 */  mflo       $t8
    /* 10B208 800FC258 01781021 */  addu       $v0, $t3, $t8
    /* 10B20C 800FC25C 9059001A */  lbu        $t9, 0x1A($v0)
    /* 10B210 800FC260 53F90021 */  beql       $ra, $t9, .L800FC2E8_10B298
    /* 10B214 800FC264 00E01825 */   or        $v1, $a3, $zero
    /* 10B218 800FC268 8E060000 */  lw         $a2, 0x0($s0)
    /* 10B21C 800FC26C 5046001E */  beql       $v0, $a2, .L800FC2E8_10B298
    /* 10B220 800FC270 00E01825 */   or        $v1, $a3, $zero
    /* 10B224 800FC274 84CE0000 */  lh         $t6, 0x0($a2)
    /* 10B228 800FC278 844F0000 */  lh         $t7, 0x0($v0)
    /* 10B22C 800FC27C 84D90002 */  lh         $t9, 0x2($a2)
    /* 10B230 800FC280 01CF1823 */  subu       $v1, $t6, $t7
    /* 10B234 800FC284 0003C103 */  sra        $t8, $v1, 4
    /* 10B238 800FC288 03001825 */  or         $v1, $t8, $zero
    /* 10B23C 800FC28C 00630019 */  multu      $v1, $v1
    /* 10B240 800FC290 844E0002 */  lh         $t6, 0x2($v0)
    /* 10B244 800FC294 84D80004 */  lh         $t8, 0x4($a2)
    /* 10B248 800FC298 032E2023 */  subu       $a0, $t9, $t6
    /* 10B24C 800FC29C 00047903 */  sra        $t7, $a0, 4
    /* 10B250 800FC2A0 01E02025 */  or         $a0, $t7, $zero
    /* 10B254 800FC2A4 84590004 */  lh         $t9, 0x4($v0)
    /* 10B258 800FC2A8 00007812 */  mflo       $t7
    /* 10B25C 800FC2AC 03192823 */  subu       $a1, $t8, $t9
    /* 10B260 800FC2B0 00057103 */  sra        $t6, $a1, 4
    /* 10B264 800FC2B4 00840019 */  multu      $a0, $a0
    /* 10B268 800FC2B8 0000C012 */  mflo       $t8
    /* 10B26C 800FC2BC 01F8C821 */  addu       $t9, $t7, $t8
    /* 10B270 800FC2C0 00000000 */  nop
    /* 10B274 800FC2C4 01CE0019 */  multu      $t6, $t6
    /* 10B278 800FC2C8 00007012 */  mflo       $t6
    /* 10B27C 800FC2CC 032E4021 */  addu       $t0, $t9, $t6
    /* 10B280 800FC2D0 010A082A */  slt        $at, $t0, $t2
    /* 10B284 800FC2D4 50200004 */  beql       $at, $zero, .L800FC2E8_10B298
    /* 10B288 800FC2D8 00E01825 */   or        $v1, $a3, $zero
    /* 10B28C 800FC2DC 01005025 */  or         $t2, $t0, $zero
    /* 10B290 800FC2E0 AE220000 */  sw         $v0, 0x0($s1)
    /* 10B294 800FC2E4 00E01825 */  or         $v1, $a3, $zero
  .L800FC2E8_10B298:
    /* 10B298 800FC2E8 24E7FFFF */  addiu      $a3, $a3, -0x1
    /* 10B29C 800FC2EC 00077C00 */  sll        $t7, $a3, 16
    /* 10B2A0 800FC2F0 1460FFD5 */  bnez       $v1, .L800FC248_10B1F8
    /* 10B2A4 800FC2F4 000F3C03 */   sra       $a3, $t7, 16
  .L800FC2F8_10B2A8:
    /* 10B2A8 800FC2F8 3C118016 */  lui        $s1, %hi(D_80158F8C)
    /* 10B2AC 800FC2FC 29410384 */  slti       $at, $t2, 0x384
    /* 10B2B0 800FC300 14200012 */  bnez       $at, .L800FC34C_10B2FC
    /* 10B2B4 800FC304 26318F8C */   addiu     $s1, $s1, %lo(D_80158F8C)
    /* 10B2B8 800FC308 3C108005 */  lui        $s0, %hi(D_80052A8C)
    /* 10B2BC 800FC30C 26102A8C */  addiu      $s0, $s0, %lo(D_80052A8C)
    /* 10B2C0 800FC310 3C0E8014 */  lui        $t6, %hi(D_801409E8)
    /* 10B2C4 800FC314 8DCE09E8 */  lw         $t6, %lo(D_801409E8)($t6)
    /* 10B2C8 800FC318 8E190000 */  lw         $t9, 0x0($s0)
    /* 10B2CC 800FC31C 032E7823 */  subu       $t7, $t9, $t6
    /* 10B2D0 800FC320 2DE1003D */  sltiu      $at, $t7, 0x3D
    /* 10B2D4 800FC324 54200007 */  bnel       $at, $zero, .L800FC344_10B2F4
    /* 10B2D8 800FC328 AE200000 */   sw        $zero, 0x0($s1)
    /* 10B2DC 800FC32C 0C006994 */  jal        func_8001A650_1B250
    /* 10B2E0 800FC330 2404000D */   addiu     $a0, $zero, 0xD
    /* 10B2E4 800FC334 8E180000 */  lw         $t8, 0x0($s0)
    /* 10B2E8 800FC338 3C018014 */  lui        $at, %hi(D_801409E8)
    /* 10B2EC 800FC33C AC3809E8 */  sw         $t8, %lo(D_801409E8)($at)
    /* 10B2F0 800FC340 AE200000 */  sw         $zero, 0x0($s1)
  .L800FC344_10B2F4:
    /* 10B2F4 800FC344 10000036 */  b          .L800FC420_10B3D0
    /* 10B2F8 800FC348 00001025 */   or        $v0, $zero, $zero
  .L800FC34C_10B2FC:
    /* 10B2FC 800FC34C 3C048016 */  lui        $a0, %hi(D_801593F0)
    /* 10B300 800FC350 44800000 */  mtc1       $zero, $f0
    /* 10B304 800FC354 248493F0 */  addiu      $a0, $a0, %lo(D_801593F0)
    /* 10B308 800FC358 2407000B */  addiu      $a3, $zero, 0xB
    /* 10B30C 800FC35C 24050018 */  addiu      $a1, $zero, 0x18
  .L800FC360_10B310:
    /* 10B310 800FC360 00E50019 */  multu      $a3, $a1
    /* 10B314 800FC364 852E0000 */  lh         $t6, 0x0($t1)
    /* 10B318 800FC368 00E01825 */  or         $v1, $a3, $zero
    /* 10B31C 800FC36C 24E7FFFF */  addiu      $a3, $a3, -0x1
    /* 10B320 800FC370 448E2000 */  mtc1       $t6, $f4
    /* 10B324 800FC374 00000000 */  nop
    /* 10B328 800FC378 468021A0 */  cvt.s.w    $f6, $f4
    /* 10B32C 800FC37C 0000C812 */  mflo       $t9
    /* 10B330 800FC380 00991021 */  addu       $v0, $a0, $t9
    /* 10B334 800FC384 0007CC00 */  sll        $t9, $a3, 16
    /* 10B338 800FC388 E4460000 */  swc1       $f6, 0x0($v0)
    /* 10B33C 800FC38C 852F0002 */  lh         $t7, 0x2($t1)
    /* 10B340 800FC390 00193C03 */  sra        $a3, $t9, 16
    /* 10B344 800FC394 448F4000 */  mtc1       $t7, $f8
    /* 10B348 800FC398 00000000 */  nop
    /* 10B34C 800FC39C 468042A0 */  cvt.s.w    $f10, $f8
    /* 10B350 800FC3A0 E44A0004 */  swc1       $f10, 0x4($v0)
    /* 10B354 800FC3A4 85380004 */  lh         $t8, 0x4($t1)
    /* 10B358 800FC3A8 E440000C */  swc1       $f0, 0xC($v0)
    /* 10B35C 800FC3AC E4400010 */  swc1       $f0, 0x10($v0)
    /* 10B360 800FC3B0 44988000 */  mtc1       $t8, $f16
    /* 10B364 800FC3B4 E4400014 */  swc1       $f0, 0x14($v0)
    /* 10B368 800FC3B8 468084A0 */  cvt.s.w    $f18, $f16
    /* 10B36C 800FC3BC 1460FFE8 */  bnez       $v1, .L800FC360_10B310
    /* 10B370 800FC3C0 E4520008 */   swc1      $f18, 0x8($v0)
    /* 10B374 800FC3C4 0C006994 */  jal        func_8001A650_1B250
    /* 10B378 800FC3C8 24040009 */   addiu     $a0, $zero, 0x9
    /* 10B37C 800FC3CC 44800000 */  mtc1       $zero, $f0
    /* 10B380 800FC3D0 3C038016 */  lui        $v1, %hi(D_80159188)
    /* 10B384 800FC3D4 24639188 */  addiu      $v1, $v1, %lo(D_80159188)
    /* 10B388 800FC3D8 3C0143C8 */  lui        $at, (0x43C80000 >> 16)
    /* 10B38C 800FC3DC 44812000 */  mtc1       $at, $f4
    /* 10B390 800FC3E0 3C0F8016 */  lui        $t7, %hi(D_80159320)
    /* 10B394 800FC3E4 E4600000 */  swc1       $f0, 0x0($v1)
    /* 10B398 800FC3E8 E4600004 */  swc1       $f0, 0x4($v1)
    /* 10B39C 800FC3EC E4600008 */  swc1       $f0, 0x8($v1)
    /* 10B3A0 800FC3F0 8DEF9320 */  lw         $t7, %lo(D_80159320)($t7)
    /* 10B3A4 800FC3F4 3C018016 */  lui        $at, %hi(D_80158E60)
    /* 10B3A8 800FC3F8 E4248E60 */  swc1       $f4, %lo(D_80158E60)($at)
    /* 10B3AC 800FC3FC 3C018016 */  lui        $at, %hi(D_80159320)
    /* 10B3B0 800FC400 35F80002 */  ori        $t8, $t7, 0x2
    /* 10B3B4 800FC404 AC389320 */  sw         $t8, %lo(D_80159320)($at)
    /* 10B3B8 800FC408 3C017FFF */  lui        $at, (0x7FFFFFFF >> 16)
    /* 10B3BC 800FC40C 3421FFFF */  ori        $at, $at, (0x7FFFFFFF & 0xFFFF)
    /* 10B3C0 800FC410 0301C824 */  and        $t9, $t8, $at
    /* 10B3C4 800FC414 3C018016 */  lui        $at, %hi(D_80159320)
    /* 10B3C8 800FC418 AC399320 */  sw         $t9, %lo(D_80159320)($at)
    /* 10B3CC 800FC41C 24020001 */  addiu      $v0, $zero, 0x1
  .L800FC420_10B3D0:
    /* 10B3D0 800FC420 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 10B3D4 800FC424 8FB00014 */  lw         $s0, 0x14($sp)
    /* 10B3D8 800FC428 8FB10018 */  lw         $s1, 0x18($sp)
    /* 10B3DC 800FC42C 03E00008 */  jr         $ra
    /* 10B3E0 800FC430 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_800FC1CC_10B17C
