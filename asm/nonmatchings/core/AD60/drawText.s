nonmatching drawText, 0xB38

glabel drawText
    /* B0A4 8000A4A4 27BDFF70 */  addiu      $sp, $sp, -0x90
    /* B0A8 8000A4A8 AFBF003C */  sw         $ra, 0x3C($sp)
    /* B0AC 8000A4AC AFBE0038 */  sw         $fp, 0x38($sp)
    /* B0B0 8000A4B0 AFB70034 */  sw         $s7, 0x34($sp)
    /* B0B4 8000A4B4 AFB60030 */  sw         $s6, 0x30($sp)
    /* B0B8 8000A4B8 AFB5002C */  sw         $s5, 0x2C($sp)
    /* B0BC 8000A4BC AFB40028 */  sw         $s4, 0x28($sp)
    /* B0C0 8000A4C0 AFB30024 */  sw         $s3, 0x24($sp)
    /* B0C4 8000A4C4 AFB20020 */  sw         $s2, 0x20($sp)
    /* B0C8 8000A4C8 AFB1001C */  sw         $s1, 0x1C($sp)
    /* B0CC 8000A4CC AFB00018 */  sw         $s0, 0x18($sp)
    /* B0D0 8000A4D0 AFA40090 */  sw         $a0, 0x90($sp)
    /* B0D4 8000A4D4 AFA50094 */  sw         $a1, 0x94($sp)
    /* B0D8 8000A4D8 AFA60098 */  sw         $a2, 0x98($sp)
    /* B0DC 8000A4DC AFA7009C */  sw         $a3, 0x9C($sp)
    /* B0E0 8000A4E0 90820000 */  lbu        $v0, 0x0($a0)
    /* B0E4 8000A4E4 3C0E8005 */  lui        $t6, %hi(D_80053BE0)
    /* B0E8 8000A4E8 95CE3BE0 */  lhu        $t6, %lo(D_80053BE0)($t6)
    /* B0EC 8000A4EC 3C0F8005 */  lui        $t7, %hi(D_80052BE0)
    /* B0F0 8000A4F0 25EF2BE0 */  addiu      $t7, $t7, %lo(D_80052BE0)
    /* B0F4 8000A4F4 27B20094 */  addiu      $s2, $sp, 0x94
    /* B0F8 8000A4F8 00809825 */  or         $s3, $a0, $zero
    /* B0FC 8000A4FC 0080C025 */  or         $t8, $a0, $zero
    /* B100 8000A500 10400034 */  beqz       $v0, .L8000A5D4_B1D4
    /* B104 8000A504 01CF8021 */   addu      $s0, $t6, $t7
    /* B108 8000A508 304200FF */  andi       $v0, $v0, 0xFF
    /* B10C 8000A50C 241E0001 */  addiu      $fp, $zero, 0x1
    /* B110 8000A510 24160025 */  addiu      $s6, $zero, 0x25
    /* B114 8000A514 240C0002 */  addiu      $t4, $zero, 0x2
    /* B118 8000A518 240B0003 */  addiu      $t3, $zero, 0x3
    /* B11C 8000A51C 240A0004 */  addiu      $t2, $zero, 0x4
    /* B120 8000A520 24090005 */  addiu      $t1, $zero, 0x5
    /* B124 8000A524 24080006 */  addiu      $t0, $zero, 0x6
    /* B128 8000A528 02C22026 */  xor        $a0, $s6, $v0
  .L8000A52C_B12C:
    /* B12C 8000A52C 2C840001 */  sltiu      $a0, $a0, 0x1
    /* B130 8000A530 10800022 */  beqz       $a0, .L8000A5BC_B1BC
    /* B134 8000A534 26730001 */   addiu     $s3, $s3, 0x1
    /* B138 8000A538 92790000 */  lbu        $t9, 0x0($s3)
    /* B13C 8000A53C 272DFFD0 */  addiu      $t5, $t9, -0x30
    /* B140 8000A540 2DA10006 */  sltiu      $at, $t5, 0x6
    /* B144 8000A544 1020001D */  beqz       $at, .L8000A5BC_B1BC
    /* B148 8000A548 000D6880 */   sll       $t5, $t5, 2
    /* B14C 8000A54C 3C018003 */  lui        $at, %hi(jtbl_80037478_core)
    /* B150 8000A550 002D0821 */  addu       $at, $at, $t5
    /* B154 8000A554 8C2D7478 */  lw         $t5, %lo(jtbl_80037478_core)($at)
    /* B158 8000A558 01A00008 */  jr         $t5
    /* B15C 8000A55C 00000000 */   nop
    /* B160 8000A560 A260FFFF */  sb         $zero, -0x1($s3)
    /* B164 8000A564 A27E0000 */  sb         $fp, 0x0($s3)
    /* B168 8000A568 10000014 */  b          .L8000A5BC_B1BC
    /* B16C 8000A56C 26730001 */   addiu     $s3, $s3, 0x1
    /* B170 8000A570 A260FFFF */  sb         $zero, -0x1($s3)
    /* B174 8000A574 A26C0000 */  sb         $t4, 0x0($s3)
    /* B178 8000A578 10000010 */  b          .L8000A5BC_B1BC
    /* B17C 8000A57C 26730001 */   addiu     $s3, $s3, 0x1
    /* B180 8000A580 A260FFFF */  sb         $zero, -0x1($s3)
    /* B184 8000A584 A26B0000 */  sb         $t3, 0x0($s3)
    /* B188 8000A588 1000000C */  b          .L8000A5BC_B1BC
    /* B18C 8000A58C 26730001 */   addiu     $s3, $s3, 0x1
    /* B190 8000A590 A260FFFF */  sb         $zero, -0x1($s3)
    /* B194 8000A594 A26A0000 */  sb         $t2, 0x0($s3)
    /* B198 8000A598 10000008 */  b          .L8000A5BC_B1BC
    /* B19C 8000A59C 26730001 */   addiu     $s3, $s3, 0x1
    /* B1A0 8000A5A0 A260FFFF */  sb         $zero, -0x1($s3)
    /* B1A4 8000A5A4 A2690000 */  sb         $t1, 0x0($s3)
    /* B1A8 8000A5A8 10000004 */  b          .L8000A5BC_B1BC
    /* B1AC 8000A5AC 26730001 */   addiu     $s3, $s3, 0x1
    /* B1B0 8000A5B0 A260FFFF */  sb         $zero, -0x1($s3)
    /* B1B4 8000A5B4 A2680000 */  sb         $t0, 0x0($s3)
    /* B1B8 8000A5B8 26730001 */  addiu      $s3, $s3, 0x1
  .L8000A5BC_B1BC:
    /* B1BC 8000A5BC 92620000 */  lbu        $v0, 0x0($s3)
    /* B1C0 8000A5C0 5440FFDA */  bnel       $v0, $zero, .L8000A52C_B12C
    /* B1C4 8000A5C4 02C22026 */   xor       $a0, $s6, $v0
    /* B1C8 8000A5C8 8FAE0090 */  lw         $t6, 0x90($sp)
    /* B1CC 8000A5CC 01C09825 */  or         $s3, $t6, $zero
    /* B1D0 8000A5D0 91C20000 */  lbu        $v0, 0x0($t6)
  .L8000A5D4_B1D4:
    /* B1D4 8000A5D4 24080006 */  addiu      $t0, $zero, 0x6
    /* B1D8 8000A5D8 24090005 */  addiu      $t1, $zero, 0x5
    /* B1DC 8000A5DC 240A0004 */  addiu      $t2, $zero, 0x4
    /* B1E0 8000A5E0 240B0003 */  addiu      $t3, $zero, 0x3
    /* B1E4 8000A5E4 240C0002 */  addiu      $t4, $zero, 0x2
    /* B1E8 8000A5E8 24160025 */  addiu      $s6, $zero, 0x25
    /* B1EC 8000A5EC 10400269 */  beqz       $v0, .L8000AF94_BB94
    /* B1F0 8000A5F0 241E0001 */   addiu     $fp, $zero, 0x1
    /* B1F4 8000A5F4 92620000 */  lbu        $v0, 0x0($s3)
    /* B1F8 8000A5F8 24170025 */  addiu      $s7, $zero, 0x25
    /* B1FC 8000A5FC 2415000A */  addiu      $s5, $zero, 0xA
    /* B200 8000A600 2414FFFC */  addiu      $s4, $zero, -0x4
    /* B204 8000A604 2411000A */  addiu      $s1, $zero, 0xA
  .L8000A608_B208:
    /* B208 8000A608 12C20005 */  beq        $s6, $v0, .L8000A620_B220
    /* B20C 8000A60C 24050006 */   addiu     $a1, $zero, 0x6
    /* B210 8000A610 A2020000 */  sb         $v0, 0x0($s0)
    /* B214 8000A614 26100001 */  addiu      $s0, $s0, 0x1
    /* B218 8000A618 1000025B */  b          .L8000AF88_BB88
    /* B21C 8000A61C 26730001 */   addiu     $s3, $s3, 0x1
  .L8000A620_B220:
    /* B220 8000A620 92620001 */  lbu        $v0, 0x1($s3)
    /* B224 8000A624 26730001 */  addiu      $s3, $s3, 0x1
    /* B228 8000A628 28410030 */  slti       $at, $v0, 0x30
    /* B22C 8000A62C 14200004 */  bnez       $at, .L8000A640_B240
    /* B230 8000A630 00401825 */   or        $v1, $v0, $zero
    /* B234 8000A634 2861003A */  slti       $at, $v1, 0x3A
    /* B238 8000A638 14200003 */  bnez       $at, .L8000A648_B248
    /* B23C 8000A63C 24040001 */   addiu     $a0, $zero, 0x1
  .L8000A640_B240:
    /* B240 8000A640 10000001 */  b          .L8000A648_B248
    /* B244 8000A644 00002025 */   or        $a0, $zero, $zero
  .L8000A648_B248:
    /* B248 8000A648 10800005 */  beqz       $a0, .L8000A660_B260
    /* B24C 8000A64C 00000000 */   nop
    /* B250 8000A650 92620001 */  lbu        $v0, 0x1($s3)
    /* B254 8000A654 2465FFD0 */  addiu      $a1, $v1, -0x30
    /* B258 8000A658 26730001 */  addiu      $s3, $s3, 0x1
    /* B25C 8000A65C 00401825 */  or         $v1, $v0, $zero
  .L8000A660_B260:
    /* B260 8000A660 1860000A */  blez       $v1, .L8000A68C_B28C
    /* B264 8000A664 00602025 */   or        $a0, $v1, $zero
    /* B268 8000A668 246FFFC0 */  addiu      $t7, $v1, -0x40
    /* B26C 8000A66C 2DE10034 */  sltiu      $at, $t7, 0x34
    /* B270 8000A670 10200242 */  beqz       $at, .L8000AF7C_BB7C
    /* B274 8000A674 000F7880 */   sll       $t7, $t7, 2
    /* B278 8000A678 3C018003 */  lui        $at, %hi(jtbl_80037490_core)
    /* B27C 8000A67C 002F0821 */  addu       $at, $at, $t7
    /* B280 8000A680 8C2F7490 */  lw         $t7, %lo(jtbl_80037490_core)($at)
    /* B284 8000A684 01E00008 */  jr         $t7
    /* B288 8000A688 00000000 */   nop
  .L8000A68C_B28C:
    /* B28C 8000A68C 5080023E */  beql       $a0, $zero, .L8000AF88_BB88
    /* B290 8000A690 26730001 */   addiu     $s3, $s3, 0x1
    /* B294 8000A694 1000023A */  b          .L8000AF80_BB80
    /* B298 8000A698 A2020000 */   sb        $v0, 0x0($s0)
    /* B29C 8000A69C 26580003 */  addiu      $t8, $s2, 0x3
    /* B2A0 8000A6A0 03149024 */  and        $s2, $t8, $s4
    /* B2A4 8000A6A4 8E590000 */  lw         $t9, 0x0($s2)
    /* B2A8 8000A6A8 26520004 */  addiu      $s2, $s2, 0x4
    /* B2AC 8000A6AC 26100001 */  addiu      $s0, $s0, 0x1
    /* B2B0 8000A6B0 10000234 */  b          .L8000AF84_BB84
    /* B2B4 8000A6B4 A219FFFF */   sb        $t9, -0x1($s0)
    /* B2B8 8000A6B8 264D0003 */  addiu      $t5, $s2, 0x3
    /* B2BC 8000A6BC 01B49024 */  and        $s2, $t5, $s4
    /* B2C0 8000A6C0 8E430000 */  lw         $v1, 0x0($s2)
    /* B2C4 8000A6C4 3C02000F */  lui        $v0, (0xF4240 >> 16)
    /* B2C8 8000A6C8 34424240 */  ori        $v0, $v0, (0xF4240 & 0xFFFF)
    /* B2CC 8000A6CC 04610005 */  bgez       $v1, .L8000A6E4_B2E4
    /* B2D0 8000A6D0 26520004 */   addiu     $s2, $s2, 0x4
    /* B2D4 8000A6D4 240E002D */  addiu      $t6, $zero, 0x2D
    /* B2D8 8000A6D8 A20E0000 */  sb         $t6, 0x0($s0)
    /* B2DC 8000A6DC 26100001 */  addiu      $s0, $s0, 0x1
    /* B2E0 8000A6E0 00031823 */  negu       $v1, $v1
  .L8000A6E4_B2E4:
    /* B2E4 8000A6E4 3C01000F */  lui        $at, (0xF4240 >> 16)
    /* B2E8 8000A6E8 34214240 */  ori        $at, $at, (0xF4240 & 0xFFFF)
    /* B2EC 8000A6EC 0061001A */  div        $zero, $v1, $at
    /* B2F0 8000A6F0 00007812 */  mflo       $t7
    /* B2F4 8000A6F4 00000000 */  nop
    /* B2F8 8000A6F8 00000000 */  nop
    /* B2FC 8000A6FC 01F1001A */  div        $zero, $t7, $s1
    /* B300 8000A700 0000C010 */  mfhi       $t8
    /* B304 8000A704 16200002 */  bnez       $s1, .L8000A710_B310
    /* B308 8000A708 00000000 */   nop
    /* B30C 8000A70C 0007000D */  break      7
  .L8000A710_B310:
    /* B310 8000A710 2401FFFF */  addiu      $at, $zero, -0x1
    /* B314 8000A714 16210004 */  bne        $s1, $at, .L8000A728_B328
    /* B318 8000A718 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B31C 8000A71C 15E10002 */  bne        $t7, $at, .L8000A728_B328
    /* B320 8000A720 00000000 */   nop
    /* B324 8000A724 0006000D */  break      6
  .L8000A728_B328:
    /* B328 8000A728 17000029 */  bnez       $t8, .L8000A7D0_B3D0
    /* B32C 8000A72C 00000000 */   nop
  .L8000A730_B330:
    /* B330 8000A730 0051001A */  div        $zero, $v0, $s1
    /* B334 8000A734 16200002 */  bnez       $s1, .L8000A740_B340
    /* B338 8000A738 00000000 */   nop
    /* B33C 8000A73C 0007000D */  break      7
  .L8000A740_B340:
    /* B340 8000A740 2401FFFF */  addiu      $at, $zero, -0x1
    /* B344 8000A744 16210004 */  bne        $s1, $at, .L8000A758_B358
    /* B348 8000A748 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B34C 8000A74C 14410002 */  bne        $v0, $at, .L8000A758_B358
    /* B350 8000A750 00000000 */   nop
    /* B354 8000A754 0006000D */  break      6
  .L8000A758_B358:
    /* B358 8000A758 00001012 */  mflo       $v0
    /* B35C 8000A75C 00000000 */  nop
    /* B360 8000A760 00000000 */  nop
    /* B364 8000A764 0062001A */  div        $zero, $v1, $v0
    /* B368 8000A768 0000C812 */  mflo       $t9
    /* B36C 8000A76C 14400002 */  bnez       $v0, .L8000A778_B378
    /* B370 8000A770 00000000 */   nop
    /* B374 8000A774 0007000D */  break      7
  .L8000A778_B378:
    /* B378 8000A778 2401FFFF */  addiu      $at, $zero, -0x1
    /* B37C 8000A77C 14410004 */  bne        $v0, $at, .L8000A790_B390
    /* B380 8000A780 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B384 8000A784 14610002 */  bne        $v1, $at, .L8000A790_B390
    /* B388 8000A788 00000000 */   nop
    /* B38C 8000A78C 0006000D */  break      6
  .L8000A790_B390:
    /* B390 8000A790 0331001A */  div        $zero, $t9, $s1
    /* B394 8000A794 00006810 */  mfhi       $t5
    /* B398 8000A798 16200002 */  bnez       $s1, .L8000A7A4_B3A4
    /* B39C 8000A79C 00000000 */   nop
    /* B3A0 8000A7A0 0007000D */  break      7
  .L8000A7A4_B3A4:
    /* B3A4 8000A7A4 2401FFFF */  addiu      $at, $zero, -0x1
    /* B3A8 8000A7A8 16210004 */  bne        $s1, $at, .L8000A7BC_B3BC
    /* B3AC 8000A7AC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B3B0 8000A7B0 17210002 */  bne        $t9, $at, .L8000A7BC_B3BC
    /* B3B4 8000A7B4 00000000 */   nop
    /* B3B8 8000A7B8 0006000D */  break      6
  .L8000A7BC_B3BC:
    /* B3BC 8000A7BC 15A00004 */  bnez       $t5, .L8000A7D0_B3D0
    /* B3C0 8000A7C0 00000000 */   nop
    /* B3C4 8000A7C4 28410002 */  slti       $at, $v0, 0x2
    /* B3C8 8000A7C8 1020FFD9 */  beqz       $at, .L8000A730_B330
    /* B3CC 8000A7CC 00000000 */   nop
  .L8000A7D0_B3D0:
    /* B3D0 8000A7D0 504001ED */  beql       $v0, $zero, .L8000AF88_BB88
    /* B3D4 8000A7D4 26730001 */   addiu     $s3, $s3, 0x1
  .L8000A7D8_B3D8:
    /* B3D8 8000A7D8 0062001A */  div        $zero, $v1, $v0
    /* B3DC 8000A7DC 00007012 */  mflo       $t6
    /* B3E0 8000A7E0 26100001 */  addiu      $s0, $s0, 0x1
    /* B3E4 8000A7E4 14400002 */  bnez       $v0, .L8000A7F0_B3F0
    /* B3E8 8000A7E8 00000000 */   nop
    /* B3EC 8000A7EC 0007000D */  break      7
  .L8000A7F0_B3F0:
    /* B3F0 8000A7F0 2401FFFF */  addiu      $at, $zero, -0x1
    /* B3F4 8000A7F4 14410004 */  bne        $v0, $at, .L8000A808_B408
    /* B3F8 8000A7F8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B3FC 8000A7FC 14610002 */  bne        $v1, $at, .L8000A808_B408
    /* B400 8000A800 00000000 */   nop
    /* B404 8000A804 0006000D */  break      6
  .L8000A808_B408:
    /* B408 8000A808 01D1001A */  div        $zero, $t6, $s1
    /* B40C 8000A80C 00007810 */  mfhi       $t7
    /* B410 8000A810 25F80030 */  addiu      $t8, $t7, 0x30
    /* B414 8000A814 16200002 */  bnez       $s1, .L8000A820_B420
    /* B418 8000A818 00000000 */   nop
    /* B41C 8000A81C 0007000D */  break      7
  .L8000A820_B420:
    /* B420 8000A820 2401FFFF */  addiu      $at, $zero, -0x1
    /* B424 8000A824 16210004 */  bne        $s1, $at, .L8000A838_B438
    /* B428 8000A828 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B42C 8000A82C 15C10002 */  bne        $t6, $at, .L8000A838_B438
    /* B430 8000A830 00000000 */   nop
    /* B434 8000A834 0006000D */  break      6
  .L8000A838_B438:
    /* B438 8000A838 0051001A */  div        $zero, $v0, $s1
    /* B43C 8000A83C A218FFFF */  sb         $t8, -0x1($s0)
    /* B440 8000A840 16200002 */  bnez       $s1, .L8000A84C_B44C
    /* B444 8000A844 00000000 */   nop
    /* B448 8000A848 0007000D */  break      7
  .L8000A84C_B44C:
    /* B44C 8000A84C 2401FFFF */  addiu      $at, $zero, -0x1
    /* B450 8000A850 16210004 */  bne        $s1, $at, .L8000A864_B464
    /* B454 8000A854 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B458 8000A858 14410002 */  bne        $v0, $at, .L8000A864_B464
    /* B45C 8000A85C 00000000 */   nop
    /* B460 8000A860 0006000D */  break      6
  .L8000A864_B464:
    /* B464 8000A864 00001012 */  mflo       $v0
    /* B468 8000A868 1440FFDB */  bnez       $v0, .L8000A7D8_B3D8
    /* B46C 8000A86C 00000000 */   nop
    /* B470 8000A870 100001C5 */  b          .L8000AF88_BB88
    /* B474 8000A874 26730001 */   addiu     $s3, $s3, 0x1
    /* B478 8000A878 3C02000F */  lui        $v0, (0xF4240 >> 16)
    /* B47C 8000A87C 32590001 */  andi       $t9, $s2, 0x1
    /* B480 8000A880 34424240 */  ori        $v0, $v0, (0xF4240 & 0xFFFF)
    /* B484 8000A884 13200004 */  beqz       $t9, .L8000A898_B498
    /* B488 8000A888 24030001 */   addiu     $v1, $zero, 0x1
    /* B48C 8000A88C 26520007 */  addiu      $s2, $s2, 0x7
    /* B490 8000A890 1000000C */  b          .L8000A8C4_B4C4
    /* B494 8000A894 2644FFEA */   addiu     $a0, $s2, -0x16
  .L8000A898_B498:
    /* B498 8000A898 324D0002 */  andi       $t5, $s2, 0x2
    /* B49C 8000A89C 11A00004 */  beqz       $t5, .L8000A8B0_B4B0
    /* B4A0 8000A8A0 2401FFF8 */   addiu     $at, $zero, -0x8
    /* B4A4 8000A8A4 2652000A */  addiu      $s2, $s2, 0xA
    /* B4A8 8000A8A8 10000005 */  b          .L8000A8C0_B4C0
    /* B4AC 8000A8AC 2646FFD8 */   addiu     $a2, $s2, -0x28
  .L8000A8B0_B4B0:
    /* B4B0 8000A8B0 26520007 */  addiu      $s2, $s2, 0x7
    /* B4B4 8000A8B4 02417024 */  and        $t6, $s2, $at
    /* B4B8 8000A8B8 25D20008 */  addiu      $s2, $t6, 0x8
    /* B4BC 8000A8BC 02403025 */  or         $a2, $s2, $zero
  .L8000A8C0_B4C0:
    /* B4C0 8000A8C0 00C02025 */  or         $a0, $a2, $zero
  .L8000A8C4_B4C4:
    /* B4C4 8000A8C4 D480FFF8 */  ldc1       $f0, -0x8($a0)
    /* B4C8 8000A8C8 AFA5005C */  sw         $a1, 0x5C($sp)
    /* B4CC 8000A8CC AFA30058 */  sw         $v1, 0x58($sp)
    /* B4D0 8000A8D0 AFA20078 */  sw         $v0, 0x78($sp)
    /* B4D4 8000A8D4 27A60064 */  addiu      $a2, $sp, 0x64
    /* B4D8 8000A8D8 27A70060 */  addiu      $a3, $sp, 0x60
    /* B4DC 8000A8DC 0C001095 */  jal        func_80004254_4E54
    /* B4E0 8000A8E0 46200320 */   cvt.s.d   $f12, $f0
    /* B4E4 8000A8E4 8FA40064 */  lw         $a0, 0x64($sp)
    /* B4E8 8000A8E8 8FA20078 */  lw         $v0, 0x78($sp)
    /* B4EC 8000A8EC 8FA30058 */  lw         $v1, 0x58($sp)
    /* B4F0 8000A8F0 8FA5005C */  lw         $a1, 0x5C($sp)
    /* B4F4 8000A8F4 24080006 */  addiu      $t0, $zero, 0x6
    /* B4F8 8000A8F8 24090005 */  addiu      $t1, $zero, 0x5
    /* B4FC 8000A8FC 240A0004 */  addiu      $t2, $zero, 0x4
    /* B500 8000A900 240B0003 */  addiu      $t3, $zero, 0x3
    /* B504 8000A904 04810008 */  bgez       $a0, .L8000A928_B528
    /* B508 8000A908 240C0002 */   addiu     $t4, $zero, 0x2
    /* B50C 8000A90C 240F002D */  addiu      $t7, $zero, 0x2D
    /* B510 8000A910 A20F0000 */  sb         $t7, 0x0($s0)
    /* B514 8000A914 8FB80064 */  lw         $t8, 0x64($sp)
    /* B518 8000A918 26100001 */  addiu      $s0, $s0, 0x1
    /* B51C 8000A91C 0018C823 */  negu       $t9, $t8
    /* B520 8000A920 AFB90064 */  sw         $t9, 0x64($sp)
    /* B524 8000A924 03202025 */  or         $a0, $t9, $zero
  .L8000A928_B528:
    /* B528 8000A928 3C01000F */  lui        $at, (0xF4240 >> 16)
    /* B52C 8000A92C 34214240 */  ori        $at, $at, (0xF4240 & 0xFFFF)
    /* B530 8000A930 0081001A */  div        $zero, $a0, $at
    /* B534 8000A934 00006812 */  mflo       $t5
    /* B538 8000A938 00000000 */  nop
    /* B53C 8000A93C 00000000 */  nop
    /* B540 8000A940 01B1001A */  div        $zero, $t5, $s1
    /* B544 8000A944 00007010 */  mfhi       $t6
    /* B548 8000A948 16200002 */  bnez       $s1, .L8000A954_B554
    /* B54C 8000A94C 00000000 */   nop
    /* B550 8000A950 0007000D */  break      7
  .L8000A954_B554:
    /* B554 8000A954 2401FFFF */  addiu      $at, $zero, -0x1
    /* B558 8000A958 16210004 */  bne        $s1, $at, .L8000A96C_B56C
    /* B55C 8000A95C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B560 8000A960 15A10002 */  bne        $t5, $at, .L8000A96C_B56C
    /* B564 8000A964 00000000 */   nop
    /* B568 8000A968 0006000D */  break      6
  .L8000A96C_B56C:
    /* B56C 8000A96C 15C00029 */  bnez       $t6, .L8000AA14_B614
    /* B570 8000A970 00000000 */   nop
  .L8000A974_B574:
    /* B574 8000A974 0051001A */  div        $zero, $v0, $s1
    /* B578 8000A978 16200002 */  bnez       $s1, .L8000A984_B584
    /* B57C 8000A97C 00000000 */   nop
    /* B580 8000A980 0007000D */  break      7
  .L8000A984_B584:
    /* B584 8000A984 2401FFFF */  addiu      $at, $zero, -0x1
    /* B588 8000A988 16210004 */  bne        $s1, $at, .L8000A99C_B59C
    /* B58C 8000A98C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B590 8000A990 14410002 */  bne        $v0, $at, .L8000A99C_B59C
    /* B594 8000A994 00000000 */   nop
    /* B598 8000A998 0006000D */  break      6
  .L8000A99C_B59C:
    /* B59C 8000A99C 00001012 */  mflo       $v0
    /* B5A0 8000A9A0 00000000 */  nop
    /* B5A4 8000A9A4 00000000 */  nop
    /* B5A8 8000A9A8 0082001A */  div        $zero, $a0, $v0
    /* B5AC 8000A9AC 00007812 */  mflo       $t7
    /* B5B0 8000A9B0 14400002 */  bnez       $v0, .L8000A9BC_B5BC
    /* B5B4 8000A9B4 00000000 */   nop
    /* B5B8 8000A9B8 0007000D */  break      7
  .L8000A9BC_B5BC:
    /* B5BC 8000A9BC 2401FFFF */  addiu      $at, $zero, -0x1
    /* B5C0 8000A9C0 14410004 */  bne        $v0, $at, .L8000A9D4_B5D4
    /* B5C4 8000A9C4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B5C8 8000A9C8 14810002 */  bne        $a0, $at, .L8000A9D4_B5D4
    /* B5CC 8000A9CC 00000000 */   nop
    /* B5D0 8000A9D0 0006000D */  break      6
  .L8000A9D4_B5D4:
    /* B5D4 8000A9D4 01F1001A */  div        $zero, $t7, $s1
    /* B5D8 8000A9D8 0000C010 */  mfhi       $t8
    /* B5DC 8000A9DC 16200002 */  bnez       $s1, .L8000A9E8_B5E8
    /* B5E0 8000A9E0 00000000 */   nop
    /* B5E4 8000A9E4 0007000D */  break      7
  .L8000A9E8_B5E8:
    /* B5E8 8000A9E8 2401FFFF */  addiu      $at, $zero, -0x1
    /* B5EC 8000A9EC 16210004 */  bne        $s1, $at, .L8000AA00_B600
    /* B5F0 8000A9F0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B5F4 8000A9F4 15E10002 */  bne        $t7, $at, .L8000AA00_B600
    /* B5F8 8000A9F8 00000000 */   nop
    /* B5FC 8000A9FC 0006000D */  break      6
  .L8000AA00_B600:
    /* B600 8000AA00 17000004 */  bnez       $t8, .L8000AA14_B614
    /* B604 8000AA04 00000000 */   nop
    /* B608 8000AA08 28410002 */  slti       $at, $v0, 0x2
    /* B60C 8000AA0C 1020FFD9 */  beqz       $at, .L8000A974_B574
    /* B610 8000AA10 00000000 */   nop
  .L8000AA14_B614:
    /* B614 8000AA14 10400028 */  beqz       $v0, .L8000AAB8_B6B8
    /* B618 8000AA18 2418002E */   addiu     $t8, $zero, 0x2E
    /* B61C 8000AA1C 8FB90064 */  lw         $t9, 0x64($sp)
  .L8000AA20_B620:
    /* B620 8000AA20 26100001 */  addiu      $s0, $s0, 0x1
    /* B624 8000AA24 0322001A */  div        $zero, $t9, $v0
    /* B628 8000AA28 00006812 */  mflo       $t5
    /* B62C 8000AA2C 14400002 */  bnez       $v0, .L8000AA38_B638
    /* B630 8000AA30 00000000 */   nop
    /* B634 8000AA34 0007000D */  break      7
  .L8000AA38_B638:
    /* B638 8000AA38 2401FFFF */  addiu      $at, $zero, -0x1
    /* B63C 8000AA3C 14410004 */  bne        $v0, $at, .L8000AA50_B650
    /* B640 8000AA40 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B644 8000AA44 17210002 */  bne        $t9, $at, .L8000AA50_B650
    /* B648 8000AA48 00000000 */   nop
    /* B64C 8000AA4C 0006000D */  break      6
  .L8000AA50_B650:
    /* B650 8000AA50 01B1001A */  div        $zero, $t5, $s1
    /* B654 8000AA54 00007010 */  mfhi       $t6
    /* B658 8000AA58 25CF0030 */  addiu      $t7, $t6, 0x30
    /* B65C 8000AA5C 16200002 */  bnez       $s1, .L8000AA68_B668
    /* B660 8000AA60 00000000 */   nop
    /* B664 8000AA64 0007000D */  break      7
  .L8000AA68_B668:
    /* B668 8000AA68 2401FFFF */  addiu      $at, $zero, -0x1
    /* B66C 8000AA6C 16210004 */  bne        $s1, $at, .L8000AA80_B680
    /* B670 8000AA70 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B674 8000AA74 15A10002 */  bne        $t5, $at, .L8000AA80_B680
    /* B678 8000AA78 00000000 */   nop
    /* B67C 8000AA7C 0006000D */  break      6
  .L8000AA80_B680:
    /* B680 8000AA80 0051001A */  div        $zero, $v0, $s1
    /* B684 8000AA84 A20FFFFF */  sb         $t7, -0x1($s0)
    /* B688 8000AA88 16200002 */  bnez       $s1, .L8000AA94_B694
    /* B68C 8000AA8C 00000000 */   nop
    /* B690 8000AA90 0007000D */  break      7
  .L8000AA94_B694:
    /* B694 8000AA94 2401FFFF */  addiu      $at, $zero, -0x1
    /* B698 8000AA98 16210004 */  bne        $s1, $at, .L8000AAAC_B6AC
    /* B69C 8000AA9C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B6A0 8000AAA0 14410002 */  bne        $v0, $at, .L8000AAAC_B6AC
    /* B6A4 8000AAA4 00000000 */   nop
    /* B6A8 8000AAA8 0006000D */  break      6
  .L8000AAAC_B6AC:
    /* B6AC 8000AAAC 00001012 */  mflo       $v0
    /* B6B0 8000AAB0 5440FFDB */  bnel       $v0, $zero, .L8000AA20_B620
    /* B6B4 8000AAB4 8FB90064 */   lw        $t9, 0x64($sp)
  .L8000AAB8_B6B8:
    /* B6B8 8000AAB8 28A10002 */  slti       $at, $a1, 0x2
    /* B6BC 8000AABC A2180000 */  sb         $t8, 0x0($s0)
    /* B6C0 8000AAC0 26100001 */  addiu      $s0, $s0, 0x1
    /* B6C4 8000AAC4 1420001F */  bnez       $at, .L8000AB44_B744
    /* B6C8 8000AAC8 24020001 */   addiu     $v0, $zero, 0x1
    /* B6CC 8000AACC 24A6FFFF */  addiu      $a2, $a1, -0x1
    /* B6D0 8000AAD0 30D90003 */  andi       $t9, $a2, 0x3
    /* B6D4 8000AAD4 03203025 */  or         $a2, $t9, $zero
    /* B6D8 8000AAD8 13200009 */  beqz       $t9, .L8000AB00_B700
    /* B6DC 8000AADC 03202025 */   or        $a0, $t9, $zero
    /* B6E0 8000AAE0 24C40001 */  addiu      $a0, $a2, 0x1
  .L8000AAE4_B6E4:
    /* B6E4 8000AAE4 00510019 */  multu      $v0, $s1
    /* B6E8 8000AAE8 24630001 */  addiu      $v1, $v1, 0x1
    /* B6EC 8000AAEC 00001012 */  mflo       $v0
    /* B6F0 8000AAF0 1483FFFC */  bne        $a0, $v1, .L8000AAE4_B6E4
    /* B6F4 8000AAF4 00000000 */   nop
    /* B6F8 8000AAF8 10650012 */  beq        $v1, $a1, .L8000AB44_B744
    /* B6FC 8000AAFC 00000000 */   nop
  .L8000AB00_B700:
    /* B700 8000AB00 00510019 */  multu      $v0, $s1
    /* B704 8000AB04 24630004 */  addiu      $v1, $v1, 0x4
    /* B708 8000AB08 00001012 */  mflo       $v0
    /* B70C 8000AB0C 00000000 */  nop
    /* B710 8000AB10 00000000 */  nop
    /* B714 8000AB14 00510019 */  multu      $v0, $s1
    /* B718 8000AB18 00001012 */  mflo       $v0
    /* B71C 8000AB1C 00000000 */  nop
    /* B720 8000AB20 00000000 */  nop
    /* B724 8000AB24 00510019 */  multu      $v0, $s1
    /* B728 8000AB28 00001012 */  mflo       $v0
    /* B72C 8000AB2C 00000000 */  nop
    /* B730 8000AB30 00000000 */  nop
    /* B734 8000AB34 00510019 */  multu      $v0, $s1
    /* B738 8000AB38 00001012 */  mflo       $v0
    /* B73C 8000AB3C 1465FFF0 */  bne        $v1, $a1, .L8000AB00_B700
    /* B740 8000AB40 00000000 */   nop
  .L8000AB44_B744:
    /* B744 8000AB44 50400110 */  beql       $v0, $zero, .L8000AF88_BB88
    /* B748 8000AB48 26730001 */   addiu     $s3, $s3, 0x1
    /* B74C 8000AB4C 8FAD0060 */  lw         $t5, 0x60($sp)
  .L8000AB50_B750:
    /* B750 8000AB50 26100001 */  addiu      $s0, $s0, 0x1
    /* B754 8000AB54 01A2001B */  divu       $zero, $t5, $v0
    /* B758 8000AB58 00007012 */  mflo       $t6
    /* B75C 8000AB5C 14400002 */  bnez       $v0, .L8000AB68_B768
    /* B760 8000AB60 00000000 */   nop
    /* B764 8000AB64 0007000D */  break      7
  .L8000AB68_B768:
    /* B768 8000AB68 01D5001B */  divu       $zero, $t6, $s5
    /* B76C 8000AB6C 00007810 */  mfhi       $t7
    /* B770 8000AB70 25F80030 */  addiu      $t8, $t7, 0x30
    /* B774 8000AB74 16A00002 */  bnez       $s5, .L8000AB80_B780
    /* B778 8000AB78 00000000 */   nop
    /* B77C 8000AB7C 0007000D */  break      7
  .L8000AB80_B780:
    /* B780 8000AB80 0051001A */  div        $zero, $v0, $s1
    /* B784 8000AB84 A218FFFF */  sb         $t8, -0x1($s0)
    /* B788 8000AB88 16200002 */  bnez       $s1, .L8000AB94_B794
    /* B78C 8000AB8C 00000000 */   nop
    /* B790 8000AB90 0007000D */  break      7
  .L8000AB94_B794:
    /* B794 8000AB94 2401FFFF */  addiu      $at, $zero, -0x1
    /* B798 8000AB98 16210004 */  bne        $s1, $at, .L8000ABAC_B7AC
    /* B79C 8000AB9C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B7A0 8000ABA0 14410002 */  bne        $v0, $at, .L8000ABAC_B7AC
    /* B7A4 8000ABA4 00000000 */   nop
    /* B7A8 8000ABA8 0006000D */  break      6
  .L8000ABAC_B7AC:
    /* B7AC 8000ABAC 00001012 */  mflo       $v0
    /* B7B0 8000ABB0 5440FFE7 */  bnel       $v0, $zero, .L8000AB50_B750
    /* B7B4 8000ABB4 8FAD0060 */   lw        $t5, 0x60($sp)
    /* B7B8 8000ABB8 100000F3 */  b          .L8000AF88_BB88
    /* B7BC 8000ABBC 26730001 */   addiu     $s3, $s3, 0x1
    /* B7C0 8000ABC0 24190012 */  addiu      $t9, $zero, 0x12
    /* B7C4 8000ABC4 A2190000 */  sb         $t9, 0x0($s0)
    /* B7C8 8000ABC8 100000EE */  b          .L8000AF84_BB84
    /* B7CC 8000ABCC 26100001 */   addiu     $s0, $s0, 0x1
    /* B7D0 8000ABD0 240D0013 */  addiu      $t5, $zero, 0x13
    /* B7D4 8000ABD4 A20D0000 */  sb         $t5, 0x0($s0)
    /* B7D8 8000ABD8 100000EA */  b          .L8000AF84_BB84
    /* B7DC 8000ABDC 26100001 */   addiu     $s0, $s0, 0x1
    /* B7E0 8000ABE0 264E0003 */  addiu      $t6, $s2, 0x3
    /* B7E4 8000ABE4 01D49024 */  and        $s2, $t6, $s4
    /* B7E8 8000ABE8 8E430000 */  lw         $v1, 0x0($s2)
    /* B7EC 8000ABEC 26520004 */  addiu      $s2, $s2, 0x4
    /* B7F0 8000ABF0 90620000 */  lbu        $v0, 0x0($v1)
    /* B7F4 8000ABF4 504000E4 */  beql       $v0, $zero, .L8000AF88_BB88
    /* B7F8 8000ABF8 26730001 */   addiu     $s3, $s3, 0x1
  .L8000ABFC_B7FC:
    /* B7FC 8000ABFC 56C20024 */  bnel       $s6, $v0, .L8000AC90_B890
    /* B800 8000AC00 A2020000 */   sb        $v0, 0x0($s0)
    /* B804 8000AC04 906F0001 */  lbu        $t7, 0x1($v1)
    /* B808 8000AC08 24630001 */  addiu      $v1, $v1, 0x1
    /* B80C 8000AC0C 25F8FFD0 */  addiu      $t8, $t7, -0x30
    /* B810 8000AC10 2F010006 */  sltiu      $at, $t8, 0x6
    /* B814 8000AC14 5020001A */  beql       $at, $zero, .L8000AC80_B880
    /* B818 8000AC18 A2170000 */   sb        $s7, 0x0($s0)
    /* B81C 8000AC1C 0018C080 */  sll        $t8, $t8, 2
    /* B820 8000AC20 3C018003 */  lui        $at, %hi(jtbl_80037560_core)
    /* B824 8000AC24 00380821 */  addu       $at, $at, $t8
    /* B828 8000AC28 8C387560 */  lw         $t8, %lo(jtbl_80037560_core)($at)
    /* B82C 8000AC2C 03000008 */  jr         $t8
    /* B830 8000AC30 00000000 */   nop
    /* B834 8000AC34 A21E0000 */  sb         $fp, 0x0($s0)
    /* B838 8000AC38 10000016 */  b          .L8000AC94_B894
    /* B83C 8000AC3C 26100001 */   addiu     $s0, $s0, 0x1
    /* B840 8000AC40 A20C0000 */  sb         $t4, 0x0($s0)
    /* B844 8000AC44 10000013 */  b          .L8000AC94_B894
    /* B848 8000AC48 26100001 */   addiu     $s0, $s0, 0x1
    /* B84C 8000AC4C A20B0000 */  sb         $t3, 0x0($s0)
    /* B850 8000AC50 10000010 */  b          .L8000AC94_B894
    /* B854 8000AC54 26100001 */   addiu     $s0, $s0, 0x1
    /* B858 8000AC58 A20A0000 */  sb         $t2, 0x0($s0)
    /* B85C 8000AC5C 1000000D */  b          .L8000AC94_B894
    /* B860 8000AC60 26100001 */   addiu     $s0, $s0, 0x1
    /* B864 8000AC64 A2090000 */  sb         $t1, 0x0($s0)
    /* B868 8000AC68 1000000A */  b          .L8000AC94_B894
    /* B86C 8000AC6C 26100001 */   addiu     $s0, $s0, 0x1
    /* B870 8000AC70 A2080000 */  sb         $t0, 0x0($s0)
    /* B874 8000AC74 10000007 */  b          .L8000AC94_B894
    /* B878 8000AC78 26100001 */   addiu     $s0, $s0, 0x1
    /* B87C 8000AC7C A2170000 */  sb         $s7, 0x0($s0)
  .L8000AC80_B880:
    /* B880 8000AC80 26100001 */  addiu      $s0, $s0, 0x1
    /* B884 8000AC84 10000003 */  b          .L8000AC94_B894
    /* B888 8000AC88 2463FFFF */   addiu     $v1, $v1, -0x1
    /* B88C 8000AC8C A2020000 */  sb         $v0, 0x0($s0)
  .L8000AC90_B890:
    /* B890 8000AC90 26100001 */  addiu      $s0, $s0, 0x1
  .L8000AC94_B894:
    /* B894 8000AC94 90620001 */  lbu        $v0, 0x1($v1)
    /* B898 8000AC98 24630001 */  addiu      $v1, $v1, 0x1
    /* B89C 8000AC9C 1440FFD7 */  bnez       $v0, .L8000ABFC_B7FC
    /* B8A0 8000ACA0 00000000 */   nop
    /* B8A4 8000ACA4 100000B8 */  b          .L8000AF88_BB88
    /* B8A8 8000ACA8 26730001 */   addiu     $s3, $s3, 0x1
    /* B8AC 8000ACAC 26590003 */  addiu      $t9, $s2, 0x3
    /* B8B0 8000ACB0 03349024 */  and        $s2, $t9, $s4
    /* B8B4 8000ACB4 8E4D0000 */  lw         $t5, 0x0($s2)
    /* B8B8 8000ACB8 3C038005 */  lui        $v1, %hi(D_80053C80)
    /* B8BC 8000ACBC 24633C80 */  addiu      $v1, $v1, %lo(D_80053C80)
    /* B8C0 8000ACC0 264E0007 */  addiu      $t6, $s2, 0x7
    /* B8C4 8000ACC4 01D49024 */  and        $s2, $t6, $s4
    /* B8C8 8000ACC8 A46D0000 */  sh         $t5, 0x0($v1)
    /* B8CC 8000ACCC 8E4F0000 */  lw         $t7, 0x0($s2)
    /* B8D0 8000ACD0 3C018005 */  lui        $at, %hi(D_80053C92)
    /* B8D4 8000ACD4 26520004 */  addiu      $s2, $s2, 0x4
    /* B8D8 8000ACD8 000FC080 */  sll        $t8, $t7, 2
    /* B8DC 8000ACDC 030FC021 */  addu       $t8, $t8, $t7
    /* B8E0 8000ACE0 0018C080 */  sll        $t8, $t8, 2
    /* B8E4 8000ACE4 27190018 */  addiu      $t9, $t8, 0x18
    /* B8E8 8000ACE8 00196883 */  sra        $t5, $t9, 2
    /* B8EC 8000ACEC A42D3C92 */  sh         $t5, %lo(D_80053C92)($at)
    /* B8F0 8000ACF0 84620000 */  lh         $v0, 0x0($v1)
    /* B8F4 8000ACF4 24010080 */  addiu      $at, $zero, 0x80
    /* B8F8 8000ACF8 240E001A */  addiu      $t6, $zero, 0x1A
    /* B8FC 8000ACFC 10410020 */  beq        $v0, $at, .L8000AD80_B980
    /* B900 8000AD00 3C0F8005 */   lui       $t7, %hi(D_80053C92)
    /* B904 8000AD04 24010081 */  addiu      $at, $zero, 0x81
    /* B908 8000AD08 14410008 */  bne        $v0, $at, .L8000AD2C_B92C
    /* B90C 8000AD0C 240E001D */   addiu     $t6, $zero, 0x1D
    /* B910 8000AD10 A2150000 */  sb         $s5, 0x0($s0)
    /* B914 8000AD14 A20E0001 */  sb         $t6, 0x1($s0)
    /* B918 8000AD18 3C0F8005 */  lui        $t7, %hi(D_80053C92)
    /* B91C 8000AD1C 85EF3C92 */  lh         $t7, %lo(D_80053C92)($t7)
    /* B920 8000AD20 26100003 */  addiu      $s0, $s0, 0x3
    /* B924 8000AD24 10000097 */  b          .L8000AF84_BB84
    /* B928 8000AD28 A20FFFFF */   sb        $t7, -0x1($s0)
  .L8000AD2C_B92C:
    /* B92C 8000AD2C 3C188003 */  lui        $t8, %hi(D_800319C1)
    /* B930 8000AD30 831819C1 */  lb         $t8, %lo(D_800319C1)($t8)
    /* B934 8000AD34 3C0D8005 */  lui        $t5, %hi(D_80053C94)
    /* B938 8000AD38 85AD3C94 */  lh         $t5, %lo(D_80053C94)($t5)
    /* B93C 8000AD3C 03020019 */  multu      $t8, $v0
    /* B940 8000AD40 3C038005 */  lui        $v1, %hi(D_80053C90)
    /* B944 8000AD44 24633C90 */  addiu      $v1, $v1, %lo(D_80053C90)
    /* B948 8000AD48 240F0014 */  addiu      $t7, $zero, 0x14
    /* B94C 8000AD4C 26100004 */  addiu      $s0, $s0, 0x4
    /* B950 8000AD50 0000C812 */  mflo       $t9
    /* B954 8000AD54 032D7021 */  addu       $t6, $t9, $t5
    /* B958 8000AD58 A46E0000 */  sh         $t6, 0x0($v1)
    /* B95C 8000AD5C A215FFFC */  sb         $s5, -0x4($s0)
    /* B960 8000AD60 A20FFFFD */  sb         $t7, -0x3($s0)
    /* B964 8000AD64 84780000 */  lh         $t8, 0x0($v1)
    /* B968 8000AD68 3C0D8005 */  lui        $t5, %hi(D_80053C92)
    /* B96C 8000AD6C 0018C883 */  sra        $t9, $t8, 2
    /* B970 8000AD70 A219FFFE */  sb         $t9, -0x2($s0)
    /* B974 8000AD74 85AD3C92 */  lh         $t5, %lo(D_80053C92)($t5)
    /* B978 8000AD78 10000082 */  b          .L8000AF84_BB84
    /* B97C 8000AD7C A20DFFFF */   sb        $t5, -0x1($s0)
  .L8000AD80_B980:
    /* B980 8000AD80 A2150000 */  sb         $s5, 0x0($s0)
    /* B984 8000AD84 A20E0001 */  sb         $t6, 0x1($s0)
    /* B988 8000AD88 85EF3C92 */  lh         $t7, %lo(D_80053C92)($t7)
    /* B98C 8000AD8C 26100003 */  addiu      $s0, $s0, 0x3
    /* B990 8000AD90 1000007C */  b          .L8000AF84_BB84
    /* B994 8000AD94 A20FFFFF */   sb        $t7, -0x1($s0)
    /* B998 8000AD98 24180015 */  addiu      $t8, $zero, 0x15
    /* B99C 8000AD9C 26590003 */  addiu      $t9, $s2, 0x3
    /* B9A0 8000ADA0 A2180000 */  sb         $t8, 0x0($s0)
    /* B9A4 8000ADA4 03349024 */  and        $s2, $t9, $s4
    /* B9A8 8000ADA8 8E4D0000 */  lw         $t5, 0x0($s2)
    /* B9AC 8000ADAC 264E0007 */  addiu      $t6, $s2, 0x7
    /* B9B0 8000ADB0 01D49024 */  and        $s2, $t6, $s4
    /* B9B4 8000ADB4 A20D0001 */  sb         $t5, 0x1($s0)
    /* B9B8 8000ADB8 8E4F0000 */  lw         $t7, 0x0($s2)
    /* B9BC 8000ADBC 26580007 */  addiu      $t8, $s2, 0x7
    /* B9C0 8000ADC0 03149024 */  and        $s2, $t8, $s4
    /* B9C4 8000ADC4 A20F0002 */  sb         $t7, 0x2($s0)
    /* B9C8 8000ADC8 8E590000 */  lw         $t9, 0x0($s2)
    /* B9CC 8000ADCC 26520004 */  addiu      $s2, $s2, 0x4
    /* B9D0 8000ADD0 26100004 */  addiu      $s0, $s0, 0x4
    /* B9D4 8000ADD4 1000006B */  b          .L8000AF84_BB84
    /* B9D8 8000ADD8 A219FFFF */   sb        $t9, -0x1($s0)
    /* B9DC 8000ADDC 240D0016 */  addiu      $t5, $zero, 0x16
    /* B9E0 8000ADE0 264E0003 */  addiu      $t6, $s2, 0x3
    /* B9E4 8000ADE4 A20D0000 */  sb         $t5, 0x0($s0)
    /* B9E8 8000ADE8 01D49024 */  and        $s2, $t6, $s4
    /* B9EC 8000ADEC 8E4F0000 */  lw         $t7, 0x0($s2)
    /* B9F0 8000ADF0 26520004 */  addiu      $s2, $s2, 0x4
    /* B9F4 8000ADF4 26100002 */  addiu      $s0, $s0, 0x2
    /* B9F8 8000ADF8 10000062 */  b          .L8000AF84_BB84
    /* B9FC 8000ADFC A20FFFFF */   sb        $t7, -0x1($s0)
    /* BA00 8000AE00 24180018 */  addiu      $t8, $zero, 0x18
    /* BA04 8000AE04 26590003 */  addiu      $t9, $s2, 0x3
    /* BA08 8000AE08 A2180000 */  sb         $t8, 0x0($s0)
    /* BA0C 8000AE0C 03349024 */  and        $s2, $t9, $s4
    /* BA10 8000AE10 8E4D0000 */  lw         $t5, 0x0($s2)
    /* BA14 8000AE14 264F0007 */  addiu      $t7, $s2, 0x7
    /* BA18 8000AE18 01F49024 */  and        $s2, $t7, $s4
    /* BA1C 8000AE1C 000D7083 */  sra        $t6, $t5, 2
    /* BA20 8000AE20 A20E0001 */  sb         $t6, 0x1($s0)
    /* BA24 8000AE24 8E580000 */  lw         $t8, 0x0($s2)
    /* BA28 8000AE28 264D0007 */  addiu      $t5, $s2, 0x7
    /* BA2C 8000AE2C 01B49024 */  and        $s2, $t5, $s4
    /* BA30 8000AE30 0018C883 */  sra        $t9, $t8, 2
    /* BA34 8000AE34 A2190002 */  sb         $t9, 0x2($s0)
    /* BA38 8000AE38 8E4E0000 */  lw         $t6, 0x0($s2)
    /* BA3C 8000AE3C 26580007 */  addiu      $t8, $s2, 0x7
    /* BA40 8000AE40 03149024 */  and        $s2, $t8, $s4
    /* BA44 8000AE44 000E7883 */  sra        $t7, $t6, 2
    /* BA48 8000AE48 A20F0003 */  sb         $t7, 0x3($s0)
    /* BA4C 8000AE4C 8E590000 */  lw         $t9, 0x0($s2)
    /* BA50 8000AE50 26520004 */  addiu      $s2, $s2, 0x4
    /* BA54 8000AE54 26100005 */  addiu      $s0, $s0, 0x5
    /* BA58 8000AE58 00196883 */  sra        $t5, $t9, 2
    /* BA5C 8000AE5C 10000049 */  b          .L8000AF84_BB84
    /* BA60 8000AE60 A20DFFFF */   sb        $t5, -0x1($s0)
    /* BA64 8000AE64 240E0019 */  addiu      $t6, $zero, 0x19
    /* BA68 8000AE68 264F0003 */  addiu      $t7, $s2, 0x3
    /* BA6C 8000AE6C A20E0000 */  sb         $t6, 0x0($s0)
    /* BA70 8000AE70 01F49024 */  and        $s2, $t7, $s4
    /* BA74 8000AE74 8E440000 */  lw         $a0, 0x0($s2)
    /* BA78 8000AE78 26100001 */  addiu      $s0, $s0, 0x1
    /* BA7C 8000AE7C 02002825 */  or         $a1, $s0, $zero
    /* BA80 8000AE80 0004C083 */  sra        $t8, $a0, 2
    /* BA84 8000AE84 0018CC00 */  sll        $t9, $t8, 16
    /* BA88 8000AE88 00192403 */  sra        $a0, $t9, 16
    /* BA8C 8000AE8C 0C0028F7 */  jal        func_8000A3DC_AFDC
    /* BA90 8000AE90 26520004 */   addiu     $s2, $s2, 0x4
    /* BA94 8000AE94 24080006 */  addiu      $t0, $zero, 0x6
    /* BA98 8000AE98 24090005 */  addiu      $t1, $zero, 0x5
    /* BA9C 8000AE9C 240A0004 */  addiu      $t2, $zero, 0x4
    /* BAA0 8000AEA0 240B0003 */  addiu      $t3, $zero, 0x3
    /* BAA4 8000AEA4 240C0002 */  addiu      $t4, $zero, 0x2
    /* BAA8 8000AEA8 10000036 */  b          .L8000AF84_BB84
    /* BAAC 8000AEAC 26100002 */   addiu     $s0, $s0, 0x2
    /* BAB0 8000AEB0 240E0017 */  addiu      $t6, $zero, 0x17
    /* BAB4 8000AEB4 264F0003 */  addiu      $t7, $s2, 0x3
    /* BAB8 8000AEB8 A20E0000 */  sb         $t6, 0x0($s0)
    /* BABC 8000AEBC 01F49024 */  and        $s2, $t7, $s4
    /* BAC0 8000AEC0 8E440000 */  lw         $a0, 0x0($s2)
    /* BAC4 8000AEC4 26100001 */  addiu      $s0, $s0, 0x1
    /* BAC8 8000AEC8 02002825 */  or         $a1, $s0, $zero
    /* BACC 8000AECC 0004C083 */  sra        $t8, $a0, 2
    /* BAD0 8000AED0 0018CC00 */  sll        $t9, $t8, 16
    /* BAD4 8000AED4 00192403 */  sra        $a0, $t9, 16
    /* BAD8 8000AED8 0C0028F7 */  jal        func_8000A3DC_AFDC
    /* BADC 8000AEDC 26520004 */   addiu     $s2, $s2, 0x4
    /* BAE0 8000AEE0 24080006 */  addiu      $t0, $zero, 0x6
    /* BAE4 8000AEE4 24090005 */  addiu      $t1, $zero, 0x5
    /* BAE8 8000AEE8 240A0004 */  addiu      $t2, $zero, 0x4
    /* BAEC 8000AEEC 240B0003 */  addiu      $t3, $zero, 0x3
    /* BAF0 8000AEF0 240C0002 */  addiu      $t4, $zero, 0x2
    /* BAF4 8000AEF4 10000023 */  b          .L8000AF84_BB84
    /* BAF8 8000AEF8 26100002 */   addiu     $s0, $s0, 0x2
    /* BAFC 8000AEFC 240E001B */  addiu      $t6, $zero, 0x1B
    /* BB00 8000AF00 264F0003 */  addiu      $t7, $s2, 0x3
    /* BB04 8000AF04 A20E0000 */  sb         $t6, 0x0($s0)
    /* BB08 8000AF08 26100001 */  addiu      $s0, $s0, 0x1
    /* BB0C 8000AF0C 01F49024 */  and        $s2, $t7, $s4
    /* BB10 8000AF10 26520004 */  addiu      $s2, $s2, 0x4
    /* BB14 8000AF14 8644FFFE */  lh         $a0, -0x2($s2)
    /* BB18 8000AF18 0C0028F7 */  jal        func_8000A3DC_AFDC
    /* BB1C 8000AF1C 02002825 */   or        $a1, $s0, $zero
    /* BB20 8000AF20 24080006 */  addiu      $t0, $zero, 0x6
    /* BB24 8000AF24 24090005 */  addiu      $t1, $zero, 0x5
    /* BB28 8000AF28 240A0004 */  addiu      $t2, $zero, 0x4
    /* BB2C 8000AF2C 240B0003 */  addiu      $t3, $zero, 0x3
    /* BB30 8000AF30 240C0002 */  addiu      $t4, $zero, 0x2
    /* BB34 8000AF34 10000013 */  b          .L8000AF84_BB84
    /* BB38 8000AF38 26100002 */   addiu     $s0, $s0, 0x2
    /* BB3C 8000AF3C 2418001C */  addiu      $t8, $zero, 0x1C
    /* BB40 8000AF40 26590003 */  addiu      $t9, $s2, 0x3
    /* BB44 8000AF44 A2180000 */  sb         $t8, 0x0($s0)
    /* BB48 8000AF48 26100001 */  addiu      $s0, $s0, 0x1
    /* BB4C 8000AF4C 03349024 */  and        $s2, $t9, $s4
    /* BB50 8000AF50 26520004 */  addiu      $s2, $s2, 0x4
    /* BB54 8000AF54 8644FFFE */  lh         $a0, -0x2($s2)
    /* BB58 8000AF58 0C0028F7 */  jal        func_8000A3DC_AFDC
    /* BB5C 8000AF5C 02002825 */   or        $a1, $s0, $zero
    /* BB60 8000AF60 24080006 */  addiu      $t0, $zero, 0x6
    /* BB64 8000AF64 24090005 */  addiu      $t1, $zero, 0x5
    /* BB68 8000AF68 240A0004 */  addiu      $t2, $zero, 0x4
    /* BB6C 8000AF6C 240B0003 */  addiu      $t3, $zero, 0x3
    /* BB70 8000AF70 240C0002 */  addiu      $t4, $zero, 0x2
    /* BB74 8000AF74 10000003 */  b          .L8000AF84_BB84
    /* BB78 8000AF78 26100002 */   addiu     $s0, $s0, 0x2
  .L8000AF7C_BB7C:
    /* BB7C 8000AF7C A2020000 */  sb         $v0, 0x0($s0)
  .L8000AF80_BB80:
    /* BB80 8000AF80 26100001 */  addiu      $s0, $s0, 0x1
  .L8000AF84_BB84:
    /* BB84 8000AF84 26730001 */  addiu      $s3, $s3, 0x1
  .L8000AF88_BB88:
    /* BB88 8000AF88 92620000 */  lbu        $v0, 0x0($s3)
    /* BB8C 8000AF8C 1440FD9E */  bnez       $v0, .L8000A608_B208
    /* BB90 8000AF90 00000000 */   nop
  .L8000AF94_BB94:
    /* BB94 8000AF94 A2000000 */  sb         $zero, 0x0($s0)
    /* BB98 8000AF98 3C0D8005 */  lui        $t5, %hi(D_80052BE0)
    /* BB9C 8000AF9C 8FBF003C */  lw         $ra, 0x3C($sp)
    /* BBA0 8000AFA0 25AD2BE0 */  addiu      $t5, $t5, %lo(D_80052BE0)
    /* BBA4 8000AFA4 020D7023 */  subu       $t6, $s0, $t5
    /* BBA8 8000AFA8 3C018005 */  lui        $at, %hi(D_80053BE0)
    /* BBAC 8000AFAC 8FB00018 */  lw         $s0, 0x18($sp)
    /* BBB0 8000AFB0 8FBE0038 */  lw         $fp, 0x38($sp)
    /* BBB4 8000AFB4 8FB70034 */  lw         $s7, 0x34($sp)
    /* BBB8 8000AFB8 8FB60030 */  lw         $s6, 0x30($sp)
    /* BBBC 8000AFBC 8FB5002C */  lw         $s5, 0x2C($sp)
    /* BBC0 8000AFC0 8FB40028 */  lw         $s4, 0x28($sp)
    /* BBC4 8000AFC4 8FB30024 */  lw         $s3, 0x24($sp)
    /* BBC8 8000AFC8 8FB20020 */  lw         $s2, 0x20($sp)
    /* BBCC 8000AFCC 8FB1001C */  lw         $s1, 0x1C($sp)
    /* BBD0 8000AFD0 A42E3BE0 */  sh         $t6, %lo(D_80053BE0)($at)
    /* BBD4 8000AFD4 03E00008 */  jr         $ra
    /* BBD8 8000AFD8 27BD0090 */   addiu     $sp, $sp, 0x90
endlabel drawText
