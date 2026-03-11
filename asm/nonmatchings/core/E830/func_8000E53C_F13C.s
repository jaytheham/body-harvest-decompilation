nonmatching func_8000E53C_F13C, 0x9C0

glabel func_8000E53C_F13C
    /* F13C 8000E53C 27BDFEC0 */  addiu      $sp, $sp, -0x140
    /* F140 8000E540 AFB50044 */  sw         $s5, 0x44($sp)
    /* F144 8000E544 3C158006 */  lui        $s5, %hi(D_8005BAEC)
    /* F148 8000E548 26B5BAEC */  addiu      $s5, $s5, %lo(D_8005BAEC)
    /* F14C 8000E54C 8EA30000 */  lw         $v1, 0x0($s5)
    /* F150 8000E550 AFB3003C */  sw         $s3, 0x3C($sp)
    /* F154 8000E554 3C138006 */  lui        $s3, %hi(D_8005BB2C)
    /* F158 8000E558 2673BB2C */  addiu      $s3, $s3, %lo(D_8005BB2C)
    /* F15C 8000E55C 8E620000 */  lw         $v0, 0x0($s3)
    /* F160 8000E560 00037823 */  negu       $t7, $v1
    /* F164 8000E564 AFBF0054 */  sw         $ra, 0x54($sp)
    /* F168 8000E568 24590008 */  addiu      $t9, $v0, 0x8
    /* F16C 8000E56C AFBE0050 */  sw         $fp, 0x50($sp)
    /* F170 8000E570 AFB7004C */  sw         $s7, 0x4C($sp)
    /* F174 8000E574 AFB60048 */  sw         $s6, 0x48($sp)
    /* F178 8000E578 AFB40040 */  sw         $s4, 0x40($sp)
    /* F17C 8000E57C AFB20038 */  sw         $s2, 0x38($sp)
    /* F180 8000E580 AFB10034 */  sw         $s1, 0x34($sp)
    /* F184 8000E584 AFB00030 */  sw         $s0, 0x30($sp)
    /* F188 8000E588 AE790000 */  sw         $t9, 0x0($s3)
    /* F18C 8000E58C 3C128006 */  lui        $s2, %hi(__osCurrentTime)
    /* F190 8000E590 2652BAF0 */  addiu      $s2, $s2, %lo(__osCurrentTime)
    /* F194 8000E594 3C108006 */  lui        $s0, %hi(D_8005BB38)
    /* F198 8000E598 2610BB38 */  addiu      $s0, $s0, %lo(D_8005BB38)
    /* F19C 8000E59C 27B40136 */  addiu      $s4, $sp, 0x136
    /* F1A0 8000E5A0 04610003 */  bgez       $v1, .L8000E5B0_F1B0
    /* F1A4 8000E5A4 00037103 */   sra       $t6, $v1, 4
    /* F1A8 8000E5A8 2461000F */  addiu      $at, $v1, 0xF
    /* F1AC 8000E5AC 00017103 */  sra        $t6, $at, 4
  .L8000E5B0_F1B0:
    /* F1B0 8000E5B0 AFAE0120 */  sw         $t6, 0x120($sp)
    /* F1B4 8000E5B4 05E10003 */  bgez       $t7, .L8000E5C4_F1C4
    /* F1B8 8000E5B8 000FC043 */   sra       $t8, $t7, 1
    /* F1BC 8000E5BC 25E10001 */  addiu      $at, $t7, 0x1
    /* F1C0 8000E5C0 0001C043 */  sra        $t8, $at, 1
  .L8000E5C4_F1C4:
    /* F1C4 8000E5C4 AFB80118 */  sw         $t8, 0x118($sp)
    /* F1C8 8000E5C8 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* F1CC 8000E5CC AC4E0000 */  sw         $t6, 0x0($v0)
    /* F1D0 8000E5D0 AC400004 */  sw         $zero, 0x4($v0)
    /* F1D4 8000E5D4 8E620000 */  lw         $v0, 0x0($s3)
    /* F1D8 8000E5D8 3C18E800 */  lui        $t8, (0xE8000000 >> 16)
    /* F1DC 8000E5DC 3C0EB600 */  lui        $t6, (0xB6000000 >> 16)
    /* F1E0 8000E5E0 244F0008 */  addiu      $t7, $v0, 0x8
    /* F1E4 8000E5E4 AE6F0000 */  sw         $t7, 0x0($s3)
    /* F1E8 8000E5E8 AC400004 */  sw         $zero, 0x4($v0)
    /* F1EC 8000E5EC AC580000 */  sw         $t8, 0x0($v0)
    /* F1F0 8000E5F0 8E620000 */  lw         $v0, 0x0($s3)
    /* F1F4 8000E5F4 3C0F0002 */  lui        $t7, (0x23001 >> 16)
    /* F1F8 8000E5F8 35EF3001 */  ori        $t7, $t7, (0x23001 & 0xFFFF)
    /* F1FC 8000E5FC 24590008 */  addiu      $t9, $v0, 0x8
    /* F200 8000E600 AE790000 */  sw         $t9, 0x0($s3)
    /* F204 8000E604 AC4F0004 */  sw         $t7, 0x4($v0)
    /* F208 8000E608 AC4E0000 */  sw         $t6, 0x0($v0)
    /* F20C 8000E60C 8E620000 */  lw         $v0, 0x0($s3)
    /* F210 8000E610 3C0E0055 */  lui        $t6, (0x552048 >> 16)
    /* F214 8000E614 3C19B900 */  lui        $t9, (0xB900031D >> 16)
    /* F218 8000E618 24580008 */  addiu      $t8, $v0, 0x8
    /* F21C 8000E61C AE780000 */  sw         $t8, 0x0($s3)
    /* F220 8000E620 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
    /* F224 8000E624 35CE2048 */  ori        $t6, $t6, (0x552048 & 0xFFFF)
    /* F228 8000E628 AC4E0004 */  sw         $t6, 0x4($v0)
    /* F22C 8000E62C AC590000 */  sw         $t9, 0x0($v0)
    /* F230 8000E630 8E620000 */  lw         $v0, 0x0($s3)
    /* F234 8000E634 3C198000 */  lui        $t9, (0x80008000 >> 16)
    /* F238 8000E638 3C18BB00 */  lui        $t8, (0xBB000001 >> 16)
    /* F23C 8000E63C 244F0008 */  addiu      $t7, $v0, 0x8
    /* F240 8000E640 AE6F0000 */  sw         $t7, 0x0($s3)
    /* F244 8000E644 37180001 */  ori        $t8, $t8, (0xBB000001 & 0xFFFF)
    /* F248 8000E648 37398000 */  ori        $t9, $t9, (0x80008000 & 0xFFFF)
    /* F24C 8000E64C AC590004 */  sw         $t9, 0x4($v0)
    /* F250 8000E650 AC580000 */  sw         $t8, 0x0($v0)
    /* F254 8000E654 8E620000 */  lw         $v0, 0x0($s3)
    /* F258 8000E658 3C0FBA00 */  lui        $t7, (0xBA001301 >> 16)
    /* F25C 8000E65C 35EF1301 */  ori        $t7, $t7, (0xBA001301 & 0xFFFF)
    /* F260 8000E660 244E0008 */  addiu      $t6, $v0, 0x8
    /* F264 8000E664 AE6E0000 */  sw         $t6, 0x0($s3)
    /* F268 8000E668 3C180008 */  lui        $t8, (0x80000 >> 16)
    /* F26C 8000E66C AC580004 */  sw         $t8, 0x4($v0)
    /* F270 8000E670 AC4F0000 */  sw         $t7, 0x0($v0)
    /* F274 8000E674 8E620000 */  lw         $v0, 0x0($s3)
    /* F278 8000E678 3C0EBA00 */  lui        $t6, (0xBA000C02 >> 16)
    /* F27C 8000E67C 35CE0C02 */  ori        $t6, $t6, (0xBA000C02 & 0xFFFF)
    /* F280 8000E680 24590008 */  addiu      $t9, $v0, 0x8
    /* F284 8000E684 AE790000 */  sw         $t9, 0x0($s3)
    /* F288 8000E688 AC400004 */  sw         $zero, 0x4($v0)
    /* F28C 8000E68C AC4E0000 */  sw         $t6, 0x0($v0)
    /* F290 8000E690 8E580000 */  lw         $t8, 0x0($s2)
    /* F294 8000E694 8EAF0000 */  lw         $t7, 0x0($s5)
    /* F298 8000E698 3C014120 */  lui        $at, (0x41200000 >> 16)
    /* F29C 8000E69C 44984000 */  mtc1       $t8, $f8
    /* F2A0 8000E6A0 448F2000 */  mtc1       $t7, $f4
    /* F2A4 8000E6A4 44819000 */  mtc1       $at, $f18
    /* F2A8 8000E6A8 468042A0 */  cvt.s.w    $f10, $f8
    /* F2AC 8000E6AC 3C018003 */  lui        $at, %hi(D_80037650)
    /* F2B0 8000E6B0 8E040000 */  lw         $a0, 0x0($s0)
    /* F2B4 8000E6B4 02802825 */  or         $a1, $s4, $zero
    /* F2B8 8000E6B8 3C0641F0 */  lui        $a2, (0x41F00000 >> 16)
    /* F2BC 8000E6BC 468021A0 */  cvt.s.w    $f6, $f4
    /* F2C0 8000E6C0 C4247650 */  lwc1       $f4, %lo(D_80037650)($at)
    /* F2C4 8000E6C4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* F2C8 8000E6C8 44814000 */  mtc1       $at, $f8
    /* F2CC 8000E6CC E7B20010 */  swc1       $f18, 0x10($sp)
    /* F2D0 8000E6D0 E7A40014 */  swc1       $f4, 0x14($sp)
    /* F2D4 8000E6D4 460A3403 */  div.s      $f16, $f6, $f10
    /* F2D8 8000E6D8 E7A80018 */  swc1       $f8, 0x18($sp)
    /* F2DC 8000E6DC 44078000 */  mfc1       $a3, $f16
    /* F2E0 8000E6E0 0C007964 */  jal        guPerspective
    /* F2E4 8000E6E4 00000000 */   nop
    /* F2E8 8000E6E8 8E620000 */  lw         $v0, 0x0($s3)
    /* F2EC 8000E6EC 3C0EBC00 */  lui        $t6, (0xBC00000E >> 16)
    /* F2F0 8000E6F0 35CE000E */  ori        $t6, $t6, (0xBC00000E & 0xFFFF)
    /* F2F4 8000E6F4 24590008 */  addiu      $t9, $v0, 0x8
    /* F2F8 8000E6F8 AE790000 */  sw         $t9, 0x0($s3)
    /* F2FC 8000E6FC AC540004 */  sw         $s4, 0x4($v0)
    /* F300 8000E700 AC4E0000 */  sw         $t6, 0x0($v0)
    /* F304 8000E704 8E620000 */  lw         $v0, 0x0($s3)
    /* F308 8000E708 3C180103 */  lui        $t8, (0x1030040 >> 16)
    /* F30C 8000E70C 37180040 */  ori        $t8, $t8, (0x1030040 & 0xFFFF)
    /* F310 8000E710 244F0008 */  addiu      $t7, $v0, 0x8
    /* F314 8000E714 AE6F0000 */  sw         $t7, 0x0($s3)
    /* F318 8000E718 AC580000 */  sw         $t8, 0x0($v0)
    /* F31C 8000E71C 8E190000 */  lw         $t9, 0x0($s0)
    /* F320 8000E720 3C111FFF */  lui        $s1, (0x1FFFFFFF >> 16)
    /* F324 8000E724 3631FFFF */  ori        $s1, $s1, (0x1FFFFFFF & 0xFFFF)
    /* F328 8000E728 03317024 */  and        $t6, $t9, $s1
    /* F32C 8000E72C AC4E0004 */  sw         $t6, 0x4($v0)
    /* F330 8000E730 8E0F0000 */  lw         $t7, 0x0($s0)
    /* F334 8000E734 3C018003 */  lui        $at, %hi(D_80037654)
    /* F338 8000E738 25F80040 */  addiu      $t8, $t7, 0x40
    /* F33C 8000E73C AE180000 */  sw         $t8, 0x0($s0)
    /* F340 8000E740 0C00797C */  jal        sinf
    /* F344 8000E744 C42C7654 */   lwc1      $f12, %lo(D_80037654)($at)
    /* F348 8000E748 3C018003 */  lui        $at, %hi(D_80037658)
    /* F34C 8000E74C C42C7658 */  lwc1       $f12, %lo(D_80037658)($at)
    /* F350 8000E750 0C0079EC */  jal        __cosf
    /* F354 8000E754 E7A000A0 */   swc1      $f0, 0xA0($sp)
    /* F358 8000E758 C7A600A0 */  lwc1       $f6, 0xA0($sp)
    /* F35C 8000E75C 8E590000 */  lw         $t9, 0x0($s2)
    /* F360 8000E760 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* F364 8000E764 46003283 */  div.s      $f10, $f6, $f0
    /* F368 8000E768 44818000 */  mtc1       $at, $f16
    /* F36C 8000E76C 44992000 */  mtc1       $t9, $f4
    /* F370 8000E770 44801000 */  mtc1       $zero, $f2
    /* F374 8000E774 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* F378 8000E778 46802220 */  cvt.s.w    $f8, $f4
    /* F37C 8000E77C 44051000 */  mfc1       $a1, $f2
    /* F380 8000E780 44061000 */  mfc1       $a2, $f2
    /* F384 8000E784 8E040000 */  lw         $a0, 0x0($s0)
    /* F388 8000E788 E7A20010 */  swc1       $f2, 0x10($sp)
    /* F38C 8000E78C E7A20014 */  swc1       $f2, 0x14($sp)
    /* F390 8000E790 E7A20018 */  swc1       $f2, 0x18($sp)
    /* F394 8000E794 E7A2001C */  swc1       $f2, 0x1C($sp)
    /* F398 8000E798 E7A20024 */  swc1       $f2, 0x24($sp)
    /* F39C 8000E79C 46105482 */  mul.s      $f18, $f10, $f16
    /* F3A0 8000E7A0 44815000 */  mtc1       $at, $f10
    /* F3A4 8000E7A4 00000000 */  nop
    /* F3A8 8000E7A8 E7AA0020 */  swc1       $f10, 0x20($sp)
    /* F3AC 8000E7AC 46124183 */  div.s      $f6, $f8, $f18
    /* F3B0 8000E7B0 44073000 */  mfc1       $a3, $f6
    /* F3B4 8000E7B4 0C00779A */  jal        guLookAt
    /* F3B8 8000E7B8 00000000 */   nop
    /* F3BC 8000E7BC 8E620000 */  lw         $v0, 0x0($s3)
    /* F3C0 8000E7C0 3C0F0101 */  lui        $t7, (0x1010040 >> 16)
    /* F3C4 8000E7C4 35EF0040 */  ori        $t7, $t7, (0x1010040 & 0xFFFF)
    /* F3C8 8000E7C8 244E0008 */  addiu      $t6, $v0, 0x8
    /* F3CC 8000E7CC AE6E0000 */  sw         $t6, 0x0($s3)
    /* F3D0 8000E7D0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* F3D4 8000E7D4 8E180000 */  lw         $t8, 0x0($s0)
    /* F3D8 8000E7D8 00401825 */  or         $v1, $v0, $zero
    /* F3DC 8000E7DC 24050014 */  addiu      $a1, $zero, 0x14
    /* F3E0 8000E7E0 0311C824 */  and        $t9, $t8, $s1
    /* F3E4 8000E7E4 AC590004 */  sw         $t9, 0x4($v0)
    /* F3E8 8000E7E8 8E0E0000 */  lw         $t6, 0x0($s0)
    /* F3EC 8000E7EC 8E620000 */  lw         $v0, 0x0($s3)
    /* F3F0 8000E7F0 3C190102 */  lui        $t9, (0x1020040 >> 16)
    /* F3F4 8000E7F4 25CF0040 */  addiu      $t7, $t6, 0x40
    /* F3F8 8000E7F8 AE0F0000 */  sw         $t7, 0x0($s0)
    /* F3FC 8000E7FC 3C0E8003 */  lui        $t6, %hi(D_80031120)
    /* F400 8000E800 24580008 */  addiu      $t8, $v0, 0x8
    /* F404 8000E804 AE780000 */  sw         $t8, 0x0($s3)
    /* F408 8000E808 25CE1120 */  addiu      $t6, $t6, %lo(D_80031120)
    /* F40C 8000E80C 01D17824 */  and        $t7, $t6, $s1
    /* F410 8000E810 37390040 */  ori        $t9, $t9, (0x1020040 & 0xFFFF)
    /* F414 8000E814 AC590000 */  sw         $t9, 0x0($v0)
    /* F418 8000E818 AC4F0004 */  sw         $t7, 0x4($v0)
    /* F41C 8000E81C 8E580000 */  lw         $t8, 0x0($s2)
    /* F420 8000E820 00402025 */  or         $a0, $v0, $zero
    /* F424 8000E824 A7A000FC */  sh         $zero, 0xFC($sp)
    /* F428 8000E828 0305001A */  div        $zero, $t8, $a1
    /* F42C 8000E82C 0000C810 */  mfhi       $t9
    /* F430 8000E830 00B94023 */  subu       $t0, $a1, $t9
    /* F434 8000E834 14A00002 */  bnez       $a1, .L8000E840_F440
    /* F438 8000E838 00000000 */   nop
    /* F43C 8000E83C 0007000D */  break      7
  .L8000E840_F440:
    /* F440 8000E840 2401FFFF */  addiu      $at, $zero, -0x1
    /* F444 8000E844 14A10004 */  bne        $a1, $at, .L8000E858_F458
    /* F448 8000E848 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* F44C 8000E84C 17010002 */  bne        $t8, $at, .L8000E858_F458
    /* F450 8000E850 00000000 */   nop
    /* F454 8000E854 0006000D */  break      6
  .L8000E858_F458:
    /* F458 8000E858 27A400FC */  addiu      $a0, $sp, 0xFC
    /* F45C 8000E85C 15050002 */  bne        $t0, $a1, .L8000E868_F468
    /* F460 8000E860 00003025 */   or        $a2, $zero, $zero
    /* F464 8000E864 00004025 */  or         $t0, $zero, $zero
  .L8000E868_F468:
    /* F468 8000E868 00087023 */  negu       $t6, $t0
    /* F46C 8000E86C A7AE00FE */  sh         $t6, 0xFE($sp)
    /* F470 8000E870 A7A00100 */  sh         $zero, 0x100($sp)
    /* F474 8000E874 00002825 */  or         $a1, $zero, $zero
    /* F478 8000E878 0C000E74 */  jal        func_800039D0_45D0
    /* F47C 8000E87C 8E070000 */   lw        $a3, 0x0($s0)
    /* F480 8000E880 8E620000 */  lw         $v0, 0x0($s3)
    /* F484 8000E884 3C180100 */  lui        $t8, (0x1000040 >> 16)
    /* F488 8000E888 37180040 */  ori        $t8, $t8, (0x1000040 & 0xFFFF)
    /* F48C 8000E88C 244F0008 */  addiu      $t7, $v0, 0x8
    /* F490 8000E890 AE6F0000 */  sw         $t7, 0x0($s3)
    /* F494 8000E894 AC580000 */  sw         $t8, 0x0($v0)
    /* F498 8000E898 8E190000 */  lw         $t9, 0x0($s0)
    /* F49C 8000E89C 3C1E8006 */  lui        $fp, %hi(D_80059CD2)
    /* F4A0 8000E8A0 3C178006 */  lui        $s7, %hi(D_80059CD6)
    /* F4A4 8000E8A4 03317024 */  and        $t6, $t9, $s1
    /* F4A8 8000E8A8 AC4E0004 */  sw         $t6, 0x4($v0)
    /* F4AC 8000E8AC 8E0F0000 */  lw         $t7, 0x0($s0)
    /* F4B0 8000E8B0 3C0E803E */  lui        $t6, %hi(D_803DA800)
    /* F4B4 8000E8B4 25CEA800 */  addiu      $t6, $t6, %lo(D_803DA800)
    /* F4B8 8000E8B8 25F80040 */  addiu      $t8, $t7, 0x40
    /* F4BC 8000E8BC AE180000 */  sw         $t8, 0x0($s0)
    /* F4C0 8000E8C0 24180014 */  addiu      $t8, $zero, 0x14
    /* F4C4 8000E8C4 240F0078 */  addiu      $t7, $zero, 0x78
    /* F4C8 8000E8C8 24190001 */  addiu      $t9, $zero, 0x1
    /* F4CC 8000E8CC 3C168006 */  lui        $s6, %hi(D_8005BB34)
    /* F4D0 8000E8D0 26D6BB34 */  addiu      $s6, $s6, %lo(D_8005BB34)
    /* F4D4 8000E8D4 AFB90084 */  sw         $t9, 0x84($sp)
    /* F4D8 8000E8D8 AFAF0060 */  sw         $t7, 0x60($sp)
    /* F4DC 8000E8DC AFB80058 */  sw         $t8, 0x58($sp)
    /* F4E0 8000E8E0 AFAE0074 */  sw         $t6, 0x74($sp)
    /* F4E4 8000E8E4 AFA00070 */  sw         $zero, 0x70($sp)
    /* F4E8 8000E8E8 AFA00064 */  sw         $zero, 0x64($sp)
    /* F4EC 8000E8EC 26F79CD6 */  addiu      $s7, $s7, %lo(D_80059CD6)
    /* F4F0 8000E8F0 27DE9CD2 */  addiu      $fp, $fp, %lo(D_80059CD2)
    /* F4F4 8000E8F4 00001825 */  or         $v1, $zero, $zero
  .L8000E8F8_F4F8:
    /* F4F8 8000E8F8 8FA40070 */  lw         $a0, 0x70($sp)
    /* F4FC 8000E8FC 24190001 */  addiu      $t9, $zero, 0x1
    /* F500 8000E900 AFB9008C */  sw         $t9, 0x8C($sp)
    /* F504 8000E904 00037400 */  sll        $t6, $v1, 16
    /* F508 8000E908 0004C080 */  sll        $t8, $a0, 2
    /* F50C 8000E90C 8FBF0120 */  lw         $ra, 0x120($sp)
    /* F510 8000E910 33190FFF */  andi       $t9, $t8, 0xFFF
    /* F514 8000E914 000E7C03 */  sra        $t7, $t6, 16
    /* F518 8000E918 8FB80118 */  lw         $t8, 0x118($sp)
    /* F51C 8000E91C AFAF007C */  sw         $t7, 0x7C($sp)
    /* F520 8000E920 00007180 */  sll        $t6, $zero, 6
    /* F524 8000E924 001F7980 */  sll        $t7, $ra, 6
    /* F528 8000E928 AFAF0098 */  sw         $t7, 0x98($sp)
    /* F52C 8000E92C AFAE0068 */  sw         $t6, 0x68($sp)
    /* F530 8000E930 AFB9006C */  sw         $t9, 0x6C($sp)
    /* F534 8000E934 00006825 */  or         $t5, $zero, $zero
    /* F538 8000E938 00006025 */  or         $t4, $zero, $zero
    /* F53C 8000E93C AFB8005C */  sw         $t8, 0x5C($sp)
  .L8000E940_F540:
    /* F540 8000E940 8ED40000 */  lw         $s4, 0x0($s6)
    /* F544 8000E944 3C038006 */  lui        $v1, %hi(D_8005BAEC)
    /* F548 8000E948 8FAE0058 */  lw         $t6, 0x58($sp)
    /* F54C 8000E94C 26900010 */  addiu      $s0, $s4, 0x10
    /* F550 8000E950 26110010 */  addiu      $s1, $s0, 0x10
    /* F554 8000E954 AED00000 */  sw         $s0, 0x0($s6)
    /* F558 8000E958 26320010 */  addiu      $s2, $s1, 0x10
    /* F55C 8000E95C AED10000 */  sw         $s1, 0x0($s6)
    /* F560 8000E960 AED20000 */  sw         $s2, 0x0($s6)
    /* F564 8000E964 26590010 */  addiu      $t9, $s2, 0x10
    /* F568 8000E968 AED90000 */  sw         $t9, 0x0($s6)
    /* F56C 8000E96C 8C63BAEC */  lw         $v1, %lo(D_8005BAEC)($v1)
    /* F570 8000E970 AFAC0114 */  sw         $t4, 0x114($sp)
    /* F574 8000E974 03E05825 */  or         $t3, $ra, $zero
    /* F578 8000E978 007F082A */  slt        $at, $v1, $ra
    /* F57C 8000E97C 10200002 */  beqz       $at, .L8000E988_F588
    /* F580 8000E980 AFAE0108 */   sw        $t6, 0x108($sp)
    /* F584 8000E984 00605825 */  or         $t3, $v1, $zero
  .L8000E988_F588:
    /* F588 8000E988 3C028006 */  lui        $v0, %hi(__osCurrentTime)
    /* F58C 8000E98C 8C42BAF0 */  lw         $v0, %lo(__osCurrentTime)($v0)
    /* F590 8000E990 8FAF0058 */  lw         $t7, 0x58($sp)
    /* F594 8000E994 000DAC00 */  sll        $s5, $t5, 16
    /* F598 8000E998 240E0078 */  addiu      $t6, $zero, 0x78
    /* F59C 8000E99C 004F082A */  slt        $at, $v0, $t7
    /* F5A0 8000E9A0 10200002 */  beqz       $at, .L8000E9AC_F5AC
    /* F5A4 8000E9A4 00157C03 */   sra       $t7, $s5, 16
    /* F5A8 8000E9A8 AFA20108 */  sw         $v0, 0x108($sp)
  .L8000E9AC_F5AC:
    /* F5AC 8000E9AC 8FB8005C */  lw         $t8, 0x5C($sp)
    /* F5B0 8000E9B0 8FB90108 */  lw         $t9, 0x108($sp)
    /* F5B4 8000E9B4 3C018006 */  lui        $at, %hi(D_80059CD2)
    /* F5B8 8000E9B8 A4389CD2 */  sh         $t8, %lo(D_80059CD2)($at)
    /* F5BC 8000E9BC 3C018006 */  lui        $at, %hi(D_80059CD4)
    /* F5C0 8000E9C0 01D91023 */  subu       $v0, $t6, $t9
    /* F5C4 8000E9C4 A4229CD4 */  sh         $v0, %lo(D_80059CD4)($at)
    /* F5C8 8000E9C8 A6E00000 */  sh         $zero, 0x0($s7)
    /* F5CC 8000E9CC 3C0E8006 */  lui        $t6, %hi(D_80059CDC)
    /* F5D0 8000E9D0 8DCE9CDC */  lw         $t6, %lo(D_80059CDC)($t6)
    /* F5D4 8000E9D4 AFA20094 */  sw         $v0, 0x94($sp)
    /* F5D8 8000E9D8 AFAB0110 */  sw         $t3, 0x110($sp)
    /* F5DC 8000E9DC AFAC0090 */  sw         $t4, 0x90($sp)
    /* F5E0 8000E9E0 AFBF0088 */  sw         $ra, 0x88($sp)
    /* F5E4 8000E9E4 8DD90000 */  lw         $t9, 0x0($t6)
    /* F5E8 8000E9E8 000F2400 */  sll        $a0, $t7, 16
    /* F5EC 8000E9EC 0004C403 */  sra        $t8, $a0, 16
    /* F5F0 8000E9F0 03002025 */  or         $a0, $t8, $zero
    /* F5F4 8000E9F4 01E0A825 */  or         $s5, $t7, $zero
    /* F5F8 8000E9F8 87A5007E */  lh         $a1, 0x7E($sp)
    /* F5FC 8000E9FC 00003025 */  or         $a2, $zero, $zero
    /* F600 8000EA00 0320F809 */  jalr       $t9
    /* F604 8000EA04 24070001 */   addiu     $a3, $zero, 0x1
    /* F608 8000EA08 87CF0000 */  lh         $t7, 0x0($fp)
    /* F60C 8000EA0C 8FA20094 */  lw         $v0, 0x94($sp)
    /* F610 8000EA10 8FAB0110 */  lw         $t3, 0x110($sp)
    /* F614 8000EA14 3C088006 */  lui        $t0, %hi(D_80059CD4)
    /* F618 8000EA18 25089CD4 */  addiu      $t0, $t0, %lo(D_80059CD4)
    /* F61C 8000EA1C A68F0000 */  sh         $t7, 0x0($s4)
    /* F620 8000EA20 85180000 */  lh         $t8, 0x0($t0)
    /* F624 8000EA24 00152400 */  sll        $a0, $s5, 16
    /* F628 8000EA28 00047C03 */  sra        $t7, $a0, 16
    /* F62C 8000EA2C A6980002 */  sh         $t8, 0x2($s4)
    /* F630 8000EA30 86EE0000 */  lh         $t6, 0x0($s7)
    /* F634 8000EA34 3C188006 */  lui        $t8, %hi(D_80059CDC)
    /* F638 8000EA38 01E02025 */  or         $a0, $t7, $zero
    /* F63C 8000EA3C A68E0004 */  sh         $t6, 0x4($s4)
    /* F640 8000EA40 8FB90118 */  lw         $t9, 0x118($sp)
    /* F644 8000EA44 A6E00000 */  sh         $zero, 0x0($s7)
    /* F648 8000EA48 A5020000 */  sh         $v0, 0x0($t0)
    /* F64C 8000EA4C 01791821 */  addu       $v1, $t3, $t9
    /* F650 8000EA50 A7C30000 */  sh         $v1, 0x0($fp)
    /* F654 8000EA54 8F189CDC */  lw         $t8, %lo(D_80059CDC)($t8)
    /* F658 8000EA58 AFA30078 */  sw         $v1, 0x78($sp)
    /* F65C 8000EA5C 87A5007E */  lh         $a1, 0x7E($sp)
    /* F660 8000EA60 8F190000 */  lw         $t9, 0x0($t8)
    /* F664 8000EA64 24060001 */  addiu      $a2, $zero, 0x1
    /* F668 8000EA68 24070001 */  addiu      $a3, $zero, 0x1
    /* F66C 8000EA6C 0320F809 */  jalr       $t9
    /* F670 8000EA70 00000000 */   nop
    /* F674 8000EA74 87CE0000 */  lh         $t6, 0x0($fp)
    /* F678 8000EA78 3C0F8006 */  lui        $t7, %hi(D_80059CD4)
    /* F67C 8000EA7C 3C018006 */  lui        $at, %hi(D_80059CD2)
    /* F680 8000EA80 A60E0000 */  sh         $t6, 0x0($s0)
    /* F684 8000EA84 85EF9CD4 */  lh         $t7, %lo(D_80059CD4)($t7)
    /* F688 8000EA88 00152400 */  sll        $a0, $s5, 16
    /* F68C 8000EA8C 00003025 */  or         $a2, $zero, $zero
    /* F690 8000EA90 A60F0002 */  sh         $t7, 0x2($s0)
    /* F694 8000EA94 86F80000 */  lh         $t8, 0x0($s7)
    /* F698 8000EA98 00047C03 */  sra        $t7, $a0, 16
    /* F69C 8000EA9C 01E02025 */  or         $a0, $t7, $zero
    /* F6A0 8000EAA0 A6180004 */  sh         $t8, 0x4($s0)
    /* F6A4 8000EAA4 8FB9005C */  lw         $t9, 0x5C($sp)
    /* F6A8 8000EAA8 8FAE0060 */  lw         $t6, 0x60($sp)
    /* F6AC 8000EAAC 3C188006 */  lui        $t8, %hi(D_80059CDC)
    /* F6B0 8000EAB0 A4399CD2 */  sh         $t9, %lo(D_80059CD2)($at)
    /* F6B4 8000EAB4 3C018006 */  lui        $at, %hi(D_80059CD4)
    /* F6B8 8000EAB8 A42E9CD4 */  sh         $t6, %lo(D_80059CD4)($at)
    /* F6BC 8000EABC A6E00000 */  sh         $zero, 0x0($s7)
    /* F6C0 8000EAC0 8F189CDC */  lw         $t8, %lo(D_80059CDC)($t8)
    /* F6C4 8000EAC4 87A5007E */  lh         $a1, 0x7E($sp)
    /* F6C8 8000EAC8 00003825 */  or         $a3, $zero, $zero
    /* F6CC 8000EACC 8F190000 */  lw         $t9, 0x0($t8)
    /* F6D0 8000EAD0 0320F809 */  jalr       $t9
    /* F6D4 8000EAD4 00000000 */   nop
    /* F6D8 8000EAD8 87CE0000 */  lh         $t6, 0x0($fp)
    /* F6DC 8000EADC 8FAB0110 */  lw         $t3, 0x110($sp)
    /* F6E0 8000EAE0 8FAC0090 */  lw         $t4, 0x90($sp)
    /* F6E4 8000EAE4 8FBF0088 */  lw         $ra, 0x88($sp)
    /* F6E8 8000EAE8 3C0F8006 */  lui        $t7, %hi(D_80059CD4)
    /* F6EC 8000EAEC A62E0000 */  sh         $t6, 0x0($s1)
    /* F6F0 8000EAF0 85EF9CD4 */  lh         $t7, %lo(D_80059CD4)($t7)
    /* F6F4 8000EAF4 3C018006 */  lui        $at, %hi(D_80059CD4)
    /* F6F8 8000EAF8 3C038006 */  lui        $v1, %hi(D_8005BAEC)
    /* F6FC 8000EAFC A62F0002 */  sh         $t7, 0x2($s1)
    /* F700 8000EB00 86F80000 */  lh         $t8, 0x0($s7)
    /* F704 8000EB04 00152400 */  sll        $a0, $s5, 16
    /* F708 8000EB08 A6380004 */  sh         $t8, 0x4($s1)
    /* F70C 8000EB0C 8FB90078 */  lw         $t9, 0x78($sp)
    /* F710 8000EB10 8FAE0060 */  lw         $t6, 0x60($sp)
    /* F714 8000EB14 0004C403 */  sra        $t8, $a0, 16
    /* F718 8000EB18 A7D90000 */  sh         $t9, 0x0($fp)
    /* F71C 8000EB1C A42E9CD4 */  sh         $t6, %lo(D_80059CD4)($at)
    /* F720 8000EB20 A6E00000 */  sh         $zero, 0x0($s7)
    /* F724 8000EB24 8C63BAEC */  lw         $v1, %lo(D_8005BAEC)($v1)
    /* F728 8000EB28 87CF0000 */  lh         $t7, 0x0($fp)
    /* F72C 8000EB2C 3C198006 */  lui        $t9, %hi(D_80059CDC)
    /* F730 8000EB30 03002025 */  or         $a0, $t8, $zero
    /* F734 8000EB34 006F082A */  slt        $at, $v1, $t7
    /* F738 8000EB38 10200002 */  beqz       $at, .L8000EB44_F744
    /* F73C 8000EB3C 00000000 */   nop
    /* F740 8000EB40 A7C30000 */  sh         $v1, 0x0($fp)
  .L8000EB44_F744:
    /* F744 8000EB44 8F399CDC */  lw         $t9, %lo(D_80059CDC)($t9)
    /* F748 8000EB48 AFAB0110 */  sw         $t3, 0x110($sp)
    /* F74C 8000EB4C AFAC0090 */  sw         $t4, 0x90($sp)
    /* F750 8000EB50 AFBF0088 */  sw         $ra, 0x88($sp)
    /* F754 8000EB54 8F390000 */  lw         $t9, 0x0($t9)
    /* F758 8000EB58 87A5007E */  lh         $a1, 0x7E($sp)
    /* F75C 8000EB5C 24060001 */  addiu      $a2, $zero, 0x1
    /* F760 8000EB60 0320F809 */  jalr       $t9
    /* F764 8000EB64 00003825 */   or        $a3, $zero, $zero
    /* F768 8000EB68 87CE0000 */  lh         $t6, 0x0($fp)
    /* F76C 8000EB6C 8FA60064 */  lw         $a2, 0x64($sp)
    /* F770 8000EB70 8FA70068 */  lw         $a3, 0x68($sp)
    /* F774 8000EB74 8FAB0110 */  lw         $t3, 0x110($sp)
    /* F778 8000EB78 8FAC0090 */  lw         $t4, 0x90($sp)
    /* F77C 8000EB7C 8FBF0088 */  lw         $ra, 0x88($sp)
    /* F780 8000EB80 3C0F8006 */  lui        $t7, %hi(D_80059CD4)
    /* F784 8000EB84 A64E0000 */  sh         $t6, 0x0($s2)
    /* F788 8000EB88 85EF9CD4 */  lh         $t7, %lo(D_80059CD4)($t7)
    /* F78C 8000EB8C 000B2180 */  sll        $a0, $t3, 6
    /* F790 8000EB90 240500FF */  addiu      $a1, $zero, 0xFF
    /* F794 8000EB94 A64F0002 */  sh         $t7, 0x2($s2)
    /* F798 8000EB98 86F80000 */  lh         $t8, 0x0($s7)
    /* F79C 8000EB9C 240300FF */  addiu      $v1, $zero, 0xFF
    /* F7A0 8000EBA0 3C01F510 */  lui        $at, (0xF5100000 >> 16)
    /* F7A4 8000EBA4 A6580004 */  sh         $t8, 0x4($s2)
    /* F7A8 8000EBA8 A6270008 */  sh         $a3, 0x8($s1)
    /* F7AC 8000EBAC A6870008 */  sh         $a3, 0x8($s4)
    /* F7B0 8000EBB0 8FA20108 */  lw         $v0, 0x108($sp)
    /* F7B4 8000EBB4 3C18FD10 */  lui        $t8, (0xFD10013F >> 16)
    /* F7B8 8000EBB8 3718013F */  ori        $t8, $t8, (0xFD10013F & 0xFFFF)
    /* F7BC 8000EBBC 0002C980 */  sll        $t9, $v0, 6
    /* F7C0 8000EBC0 A619000A */  sh         $t9, 0xA($s0)
    /* F7C4 8000EBC4 A699000A */  sh         $t9, 0xA($s4)
    /* F7C8 8000EBC8 A6040008 */  sh         $a0, 0x8($s0)
    /* F7CC 8000EBCC A6440008 */  sh         $a0, 0x8($s2)
    /* F7D0 8000EBD0 A646000A */  sh         $a2, 0xA($s2)
    /* F7D4 8000EBD4 A626000A */  sh         $a2, 0xA($s1)
    /* F7D8 8000EBD8 A285000C */  sb         $a1, 0xC($s4)
    /* F7DC 8000EBDC A285000D */  sb         $a1, 0xD($s4)
    /* F7E0 8000EBE0 A285000E */  sb         $a1, 0xE($s4)
    /* F7E4 8000EBE4 A285000F */  sb         $a1, 0xF($s4)
    /* F7E8 8000EBE8 A203000C */  sb         $v1, 0xC($s0)
    /* F7EC 8000EBEC A203000D */  sb         $v1, 0xD($s0)
    /* F7F0 8000EBF0 A203000E */  sb         $v1, 0xE($s0)
    /* F7F4 8000EBF4 A203000F */  sb         $v1, 0xF($s0)
    /* F7F8 8000EBF8 A223000C */  sb         $v1, 0xC($s1)
    /* F7FC 8000EBFC A223000D */  sb         $v1, 0xD($s1)
    /* F800 8000EC00 A223000E */  sb         $v1, 0xE($s1)
    /* F804 8000EC04 A223000F */  sb         $v1, 0xF($s1)
    /* F808 8000EC08 A243000C */  sb         $v1, 0xC($s2)
    /* F80C 8000EC0C A243000D */  sb         $v1, 0xD($s2)
    /* F810 8000EC10 A243000E */  sb         $v1, 0xE($s2)
    /* F814 8000EC14 A243000F */  sb         $v1, 0xF($s2)
    /* F818 8000EC18 8E620000 */  lw         $v0, 0x0($s3)
    /* F81C 8000EC1C 000B4080 */  sll        $t0, $t3, 2
    /* F820 8000EC20 244F0008 */  addiu      $t7, $v0, 0x8
    /* F824 8000EC24 AE6F0000 */  sw         $t7, 0x0($s3)
    /* F828 8000EC28 AC580000 */  sw         $t8, 0x0($v0)
    /* F82C 8000EC2C 8FB90074 */  lw         $t9, 0x74($sp)
    /* F830 8000EC30 016C7823 */  subu       $t7, $t3, $t4
    /* F834 8000EC34 000FC040 */  sll        $t8, $t7, 1
    /* F838 8000EC38 AC590004 */  sw         $t9, 0x4($v0)
    /* F83C 8000EC3C 8E620000 */  lw         $v0, 0x0($s3)
    /* F840 8000EC40 27190009 */  addiu      $t9, $t8, 0x9
    /* F844 8000EC44 244E0008 */  addiu      $t6, $v0, 0x8
    /* F848 8000EC48 AE6E0000 */  sw         $t6, 0x0($s3)
    /* F84C 8000EC4C 001970C3 */  sra        $t6, $t9, 3
    /* F850 8000EC50 31CF01FF */  andi       $t7, $t6, 0x1FF
    /* F854 8000EC54 000FC240 */  sll        $t8, $t7, 9
    /* F858 8000EC58 3C0E0708 */  lui        $t6, (0x7080200 >> 16)
    /* F85C 8000EC5C 35CE0200 */  ori        $t6, $t6, (0x7080200 & 0xFFFF)
    /* F860 8000EC60 0301C825 */  or         $t9, $t8, $at
    /* F864 8000EC64 AC590000 */  sw         $t9, 0x0($v0)
    /* F868 8000EC68 AC4E0004 */  sw         $t6, 0x4($v0)
    /* F86C 8000EC6C 8E620000 */  lw         $v0, 0x0($s3)
    /* F870 8000EC70 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
    /* F874 8000EC74 000C7080 */  sll        $t6, $t4, 2
    /* F878 8000EC78 244F0008 */  addiu      $t7, $v0, 0x8
    /* F87C 8000EC7C AE6F0000 */  sw         $t7, 0x0($s3)
    /* F880 8000EC80 AC400004 */  sw         $zero, 0x4($v0)
    /* F884 8000EC84 AC580000 */  sw         $t8, 0x0($v0)
    /* F888 8000EC88 8E620000 */  lw         $v0, 0x0($s3)
    /* F88C 8000EC8C 31CF0FFF */  andi       $t7, $t6, 0xFFF
    /* F890 8000EC90 8FAE006C */  lw         $t6, 0x6C($sp)
    /* F894 8000EC94 24590008 */  addiu      $t9, $v0, 0x8
    /* F898 8000EC98 AE790000 */  sw         $t9, 0x0($s3)
    /* F89C 8000EC9C 000FC300 */  sll        $t8, $t7, 12
    /* F8A0 8000ECA0 3C01F400 */  lui        $at, (0xF4000000 >> 16)
    /* F8A4 8000ECA4 0301C825 */  or         $t9, $t8, $at
    /* F8A8 8000ECA8 032E7825 */  or         $t7, $t9, $t6
    /* F8AC 8000ECAC AC4F0000 */  sw         $t7, 0x0($v0)
    /* F8B0 8000ECB0 8FA90108 */  lw         $t1, 0x108($sp)
    /* F8B4 8000ECB4 31180FFF */  andi       $t8, $t0, 0xFFF
    /* F8B8 8000ECB8 00184300 */  sll        $t0, $t8, 12
    /* F8BC 8000ECBC 3C010700 */  lui        $at, (0x7000000 >> 16)
    /* F8C0 8000ECC0 00097080 */  sll        $t6, $t1, 2
    /* F8C4 8000ECC4 31C90FFF */  andi       $t1, $t6, 0xFFF
    /* F8C8 8000ECC8 0101C025 */  or         $t8, $t0, $at
    /* F8CC 8000ECCC 0309C825 */  or         $t9, $t8, $t1
    /* F8D0 8000ECD0 AC590004 */  sw         $t9, 0x4($v0)
    /* F8D4 8000ECD4 8E620000 */  lw         $v0, 0x0($s3)
    /* F8D8 8000ECD8 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* F8DC 8000ECDC 3C01F510 */  lui        $at, (0xF5100000 >> 16)
    /* F8E0 8000ECE0 244E0008 */  addiu      $t6, $v0, 0x8
    /* F8E4 8000ECE4 AE6E0000 */  sw         $t6, 0x0($s3)
    /* F8E8 8000ECE8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* F8EC 8000ECEC 8FAD008C */  lw         $t5, 0x8C($sp)
    /* F8F0 8000ECF0 8FB10114 */  lw         $s1, 0x114($sp)
    /* F8F4 8000ECF4 8FA70120 */  lw         $a3, 0x120($sp)
    /* F8F8 8000ECF8 AC400004 */  sw         $zero, 0x4($v0)
    /* F8FC 8000ECFC 8E620000 */  lw         $v0, 0x0($s3)
    /* F900 8000ED00 0171C823 */  subu       $t9, $t3, $s1
    /* F904 8000ED04 00197040 */  sll        $t6, $t9, 1
    /* F908 8000ED08 24580008 */  addiu      $t8, $v0, 0x8
    /* F90C 8000ED0C AE780000 */  sw         $t8, 0x0($s3)
    /* F910 8000ED10 25CF0009 */  addiu      $t7, $t6, 0x9
    /* F914 8000ED14 000FC0C3 */  sra        $t8, $t7, 3
    /* F918 8000ED18 331901FF */  andi       $t9, $t8, 0x1FF
    /* F91C 8000ED1C 00197240 */  sll        $t6, $t9, 9
    /* F920 8000ED20 3C180008 */  lui        $t8, (0x80200 >> 16)
    /* F924 8000ED24 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
    /* F928 8000ED28 01C17825 */  or         $t7, $t6, $at
    /* F92C 8000ED2C AC4F0000 */  sw         $t7, 0x0($v0)
    /* F930 8000ED30 AC580004 */  sw         $t8, 0x4($v0)
    /* F934 8000ED34 8E620000 */  lw         $v0, 0x0($s3)
    /* F938 8000ED38 00117080 */  sll        $t6, $s1, 2
    /* F93C 8000ED3C 31CF0FFF */  andi       $t7, $t6, 0xFFF
    /* F940 8000ED40 24590008 */  addiu      $t9, $v0, 0x8
    /* F944 8000ED44 8FAE006C */  lw         $t6, 0x6C($sp)
    /* F948 8000ED48 AE790000 */  sw         $t9, 0x0($s3)
    /* F94C 8000ED4C 000FC300 */  sll        $t8, $t7, 12
    /* F950 8000ED50 3C01F200 */  lui        $at, (0xF2000000 >> 16)
    /* F954 8000ED54 0301C825 */  or         $t9, $t8, $at
    /* F958 8000ED58 0109C025 */  or         $t8, $t0, $t1
    /* F95C 8000ED5C 032E7825 */  or         $t7, $t9, $t6
    /* F960 8000ED60 AC4F0000 */  sw         $t7, 0x0($v0)
    /* F964 8000ED64 AC580004 */  sw         $t8, 0x4($v0)
    /* F968 8000ED68 8E620000 */  lw         $v0, 0x0($s3)
    /* F96C 8000ED6C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* F970 8000ED70 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* F974 8000ED74 24590008 */  addiu      $t9, $v0, 0x8
    /* F978 8000ED78 AE790000 */  sw         $t9, 0x0($s3)
    /* F97C 8000ED7C 3C0E0400 */  lui        $t6, (0x400103F >> 16)
    /* F980 8000ED80 35CE103F */  ori        $t6, $t6, (0x400103F & 0xFFFF)
    /* F984 8000ED84 02817824 */  and        $t7, $s4, $at
    /* F988 8000ED88 AC4F0004 */  sw         $t7, 0x4($v0)
    /* F98C 8000ED8C AC4E0000 */  sw         $t6, 0x0($v0)
    /* F990 8000ED90 8E620000 */  lw         $v0, 0x0($s3)
    /* F994 8000ED94 3C0E0002 */  lui        $t6, (0x20406 >> 16)
    /* F998 8000ED98 3C19B100 */  lui        $t9, (0xB1000204 >> 16)
    /* F99C 8000ED9C 24580008 */  addiu      $t8, $v0, 0x8
    /* F9A0 8000EDA0 AE780000 */  sw         $t8, 0x0($s3)
    /* F9A4 8000EDA4 37390204 */  ori        $t9, $t9, (0xB1000204 & 0xFFFF)
    /* F9A8 8000EDA8 35CE0406 */  ori        $t6, $t6, (0x20406 & 0xFFFF)
    /* F9AC 8000EDAC AC4E0004 */  sw         $t6, 0x4($v0)
    /* F9B0 8000EDB0 AC590000 */  sw         $t9, 0x0($v0)
    /* F9B4 8000EDB4 8FAF0068 */  lw         $t7, 0x68($sp)
    /* F9B8 8000EDB8 8FB80098 */  lw         $t8, 0x98($sp)
    /* F9BC 8000EDBC 8FAE005C */  lw         $t6, 0x5C($sp)
    /* F9C0 8000EDC0 24010010 */  addiu      $at, $zero, 0x10
    /* F9C4 8000EDC4 01F8C821 */  addu       $t9, $t7, $t8
    /* F9C8 8000EDC8 25B00001 */  addiu      $s0, $t5, 0x1
    /* F9CC 8000EDCC 01C77821 */  addu       $t7, $t6, $a3
    /* F9D0 8000EDD0 AFAF005C */  sw         $t7, 0x5C($sp)
    /* F9D4 8000EDD4 AFB0008C */  sw         $s0, 0x8C($sp)
    /* F9D8 8000EDD8 AFB90068 */  sw         $t9, 0x68($sp)
    /* F9DC 8000EDDC 01876021 */  addu       $t4, $t4, $a3
    /* F9E0 8000EDE0 15A1FED7 */  bne        $t5, $at, .L8000E940_F540
    /* F9E4 8000EDE4 03E7F821 */   addu      $ra, $ra, $a3
    /* F9E8 8000EDE8 8FB80070 */  lw         $t8, 0x70($sp)
    /* F9EC 8000EDEC 8FAE0064 */  lw         $t6, 0x64($sp)
    /* F9F0 8000EDF0 8FA30084 */  lw         $v1, 0x84($sp)
    /* F9F4 8000EDF4 27190014 */  addiu      $t9, $t8, 0x14
    /* F9F8 8000EDF8 25CF0500 */  addiu      $t7, $t6, 0x500
    /* F9FC 8000EDFC 8FAE0058 */  lw         $t6, 0x58($sp)
    /* FA00 8000EE00 8FB80060 */  lw         $t8, 0x60($sp)
    /* FA04 8000EE04 AFAF0064 */  sw         $t7, 0x64($sp)
    /* FA08 8000EE08 AFB90070 */  sw         $t9, 0x70($sp)
    /* FA0C 8000EE0C 2401000C */  addiu      $at, $zero, 0xC
    /* FA10 8000EE10 24620001 */  addiu      $v0, $v1, 0x1
    /* FA14 8000EE14 25CF0014 */  addiu      $t7, $t6, 0x14
    /* FA18 8000EE18 2719FFEC */  addiu      $t9, $t8, -0x14
    /* FA1C 8000EE1C AFB90060 */  sw         $t9, 0x60($sp)
    /* FA20 8000EE20 AFAF0058 */  sw         $t7, 0x58($sp)
    /* FA24 8000EE24 1461FEB4 */  bne        $v1, $at, .L8000E8F8_F4F8
    /* FA28 8000EE28 AFA20084 */   sw        $v0, 0x84($sp)
    /* FA2C 8000EE2C 3C028006 */  lui        $v0, %hi(D_80059CDC)
    /* FA30 8000EE30 8C429CDC */  lw         $v0, %lo(D_80059CDC)($v0)
    /* FA34 8000EE34 3C058006 */  lui        $a1, %hi(D_80059CD0)
    /* FA38 8000EE38 24A59CD0 */  addiu      $a1, $a1, %lo(D_80059CD0)
    /* FA3C 8000EE3C 84A40000 */  lh         $a0, 0x0($a1)
    /* FA40 8000EE40 84430010 */  lh         $v1, 0x10($v0)
    /* FA44 8000EE44 3C068006 */  lui        $a2, %hi(D_80059CE0)
    /* FA48 8000EE48 24C69CE0 */  addiu      $a2, $a2, %lo(D_80059CE0)
    /* FA4C 8000EE4C 0064082A */  slt        $at, $v1, $a0
    /* FA50 8000EE50 50200007 */  beql       $at, $zero, .L8000EE70_FA70
    /* FA54 8000EE54 44842000 */   mtc1      $a0, $f4
    /* FA58 8000EE58 44808000 */  mtc1       $zero, $f16
    /* FA5C 8000EE5C A4A30000 */  sh         $v1, 0x0($a1)
    /* FA60 8000EE60 24020001 */  addiu      $v0, $zero, 0x1
    /* FA64 8000EE64 10000019 */  b          .L8000EECC_FACC
    /* FA68 8000EE68 E4D00000 */   swc1      $f16, 0x0($a2)
    /* FA6C 8000EE6C 44842000 */  mtc1       $a0, $f4
  .L8000EE70_FA70:
    /* FA70 8000EE70 3C068006 */  lui        $a2, %hi(D_80059CE0)
    /* FA74 8000EE74 24C69CE0 */  addiu      $a2, $a2, %lo(D_80059CE0)
    /* FA78 8000EE78 46802220 */  cvt.s.w    $f8, $f4
    /* FA7C 8000EE7C C4C00000 */  lwc1       $f0, 0x0($a2)
    /* FA80 8000EE80 3C038006 */  lui        $v1, %hi(D_80059CD8)
    /* FA84 8000EE84 24639CD8 */  addiu      $v1, $v1, %lo(D_80059CD8)
    /* FA88 8000EE88 846E0000 */  lh         $t6, 0x0($v1)
    /* FA8C 8000EE8C 46004480 */  add.s      $f18, $f8, $f0
    /* FA90 8000EE90 25CF0001 */  addiu      $t7, $t6, 0x1
    /* FA94 8000EE94 4600918D */  trunc.w.s  $f6, $f18
    /* FA98 8000EE98 44193000 */  mfc1       $t9, $f6
    /* FA9C 8000EE9C 00000000 */  nop
    /* FAA0 8000EEA0 A4B90000 */  sh         $t9, 0x0($a1)
    /* FAA4 8000EEA4 C44A000C */  lwc1       $f10, 0xC($v0)
    /* FAA8 8000EEA8 A46F0000 */  sh         $t7, 0x0($v1)
    /* FAAC 8000EEAC 84780000 */  lh         $t8, 0x0($v1)
    /* FAB0 8000EEB0 460A0400 */  add.s      $f16, $f0, $f10
    /* FAB4 8000EEB4 00001025 */  or         $v0, $zero, $zero
    /* FAB8 8000EEB8 2B010080 */  slti       $at, $t8, 0x80
    /* FABC 8000EEBC 14200003 */  bnez       $at, .L8000EECC_FACC
    /* FAC0 8000EEC0 E4D00000 */   swc1      $f16, 0x0($a2)
    /* FAC4 8000EEC4 2419007F */  addiu      $t9, $zero, 0x7F
    /* FAC8 8000EEC8 A4790000 */  sh         $t9, 0x0($v1)
  .L8000EECC_FACC:
    /* FACC 8000EECC 8FBF0054 */  lw         $ra, 0x54($sp)
    /* FAD0 8000EED0 8FB00030 */  lw         $s0, 0x30($sp)
    /* FAD4 8000EED4 8FB10034 */  lw         $s1, 0x34($sp)
    /* FAD8 8000EED8 8FB20038 */  lw         $s2, 0x38($sp)
    /* FADC 8000EEDC 8FB3003C */  lw         $s3, 0x3C($sp)
    /* FAE0 8000EEE0 8FB40040 */  lw         $s4, 0x40($sp)
    /* FAE4 8000EEE4 8FB50044 */  lw         $s5, 0x44($sp)
    /* FAE8 8000EEE8 8FB60048 */  lw         $s6, 0x48($sp)
    /* FAEC 8000EEEC 8FB7004C */  lw         $s7, 0x4C($sp)
    /* FAF0 8000EEF0 8FBE0050 */  lw         $fp, 0x50($sp)
    /* FAF4 8000EEF4 03E00008 */  jr         $ra
    /* FAF8 8000EEF8 27BD0140 */   addiu     $sp, $sp, 0x140
endlabel func_8000E53C_F13C
    /* FAFC 8000EEFC 00000000 */  nop
