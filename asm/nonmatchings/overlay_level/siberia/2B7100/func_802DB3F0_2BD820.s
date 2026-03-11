nonmatching func_802DB3F0_2BD820, 0x230

glabel func_802DB3F0_2BD820
    /* 2BD820 802DB3F0 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 2BD824 802DB3F4 AFA40048 */  sw         $a0, 0x48($sp)
    /* 2BD828 802DB3F8 93AE004B */  lbu        $t6, 0x4B($sp)
    /* 2BD82C 802DB3FC 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BD830 802DB400 AFB00040 */  sw         $s0, 0x40($sp)
    /* 2BD834 802DB404 000E7880 */  sll        $t7, $t6, 2
    /* 2BD838 802DB408 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BD83C 802DB40C 000F7900 */  sll        $t7, $t7, 4
    /* 2BD840 802DB410 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BD844 802DB414 01F88021 */  addu       $s0, $t7, $t8
    /* 2BD848 802DB418 8E190020 */  lw         $t9, 0x20($s0)
    /* 2BD84C 802DB41C AFBF0044 */  sw         $ra, 0x44($sp)
    /* 2BD850 802DB420 33282000 */  andi       $t0, $t9, 0x2000
    /* 2BD854 802DB424 1500000A */  bnez       $t0, .L802DB450_2BD880
    /* 2BD858 802DB428 00000000 */   nop
    /* 2BD85C 802DB42C 86040000 */  lh         $a0, 0x0($s0)
    /* 2BD860 802DB430 0C0474B7 */  jal        func_8011D2DC_12C28C
    /* 2BD864 802DB434 86050004 */   lh        $a1, 0x4($s0)
    /* 2BD868 802DB438 2401FFFF */  addiu      $at, $zero, -0x1
    /* 2BD86C 802DB43C 10410004 */  beq        $v0, $at, .L802DB450_2BD880
    /* 2BD870 802DB440 00000000 */   nop
    /* 2BD874 802DB444 8E090020 */  lw         $t1, 0x20($s0)
    /* 2BD878 802DB448 352A1000 */  ori        $t2, $t1, 0x1000
    /* 2BD87C 802DB44C AE0A0020 */  sw         $t2, 0x20($s0)
  .L802DB450_2BD880:
    /* 2BD880 802DB450 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 2BD884 802DB454 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 2BD888 802DB458 0C021395 */  jal        func_80084E54_93E04
    /* 2BD88C 802DB45C 02002825 */   or        $a1, $s0, $zero
    /* 2BD890 802DB460 284105DC */  slti       $at, $v0, 0x5DC
    /* 2BD894 802DB464 10200004 */  beqz       $at, .L802DB478_2BD8A8
    /* 2BD898 802DB468 93A4004B */   lbu       $a0, 0x4B($sp)
    /* 2BD89C 802DB46C 00002825 */  or         $a1, $zero, $zero
    /* 2BD8A0 802DB470 0C021C73 */  jal        func_800871CC_9617C
    /* 2BD8A4 802DB474 00003025 */   or        $a2, $zero, $zero
  .L802DB478_2BD8A8:
    /* 2BD8A8 802DB478 8602001E */  lh         $v0, 0x1E($s0)
    /* 2BD8AC 802DB47C 10400002 */  beqz       $v0, .L802DB488_2BD8B8
    /* 2BD8B0 802DB480 244BFFFF */   addiu     $t3, $v0, -0x1
    /* 2BD8B4 802DB484 A60B001E */  sh         $t3, 0x1E($s0)
  .L802DB488_2BD8B8:
    /* 2BD8B8 802DB488 8602002C */  lh         $v0, 0x2C($s0)
    /* 2BD8BC 802DB48C 10400003 */  beqz       $v0, .L802DB49C_2BD8CC
    /* 2BD8C0 802DB490 244CFFFF */   addiu     $t4, $v0, -0x1
    /* 2BD8C4 802DB494 10000031 */  b          .L802DB55C_2BD98C
    /* 2BD8C8 802DB498 A60C002C */   sh        $t4, 0x2C($s0)
  .L802DB49C_2BD8CC:
    /* 2BD8CC 802DB49C 0C000E38 */  jal        func_800038E0_44E0
    /* 2BD8D0 802DB4A0 00000000 */   nop
    /* 2BD8D4 802DB4A4 04410004 */  bgez       $v0, .L802DB4B8_2BD8E8
    /* 2BD8D8 802DB4A8 304D0007 */   andi      $t5, $v0, 0x7
    /* 2BD8DC 802DB4AC 11A00002 */  beqz       $t5, .L802DB4B8_2BD8E8
    /* 2BD8E0 802DB4B0 00000000 */   nop
    /* 2BD8E4 802DB4B4 25ADFFF8 */  addiu      $t5, $t5, -0x8
  .L802DB4B8_2BD8E8:
    /* 2BD8E8 802DB4B8 0C000E38 */  jal        func_800038E0_44E0
    /* 2BD8EC 802DB4BC A60D002C */   sh        $t5, 0x2C($s0)
    /* 2BD8F0 802DB4C0 24010006 */  addiu      $at, $zero, 0x6
    /* 2BD8F4 802DB4C4 0041001A */  div        $zero, $v0, $at
    /* 2BD8F8 802DB4C8 920E001A */  lbu        $t6, 0x1A($s0)
    /* 2BD8FC 802DB4CC 86190002 */  lh         $t9, 0x2($s0)
    /* 2BD900 802DB4D0 00003010 */  mfhi       $a2
    /* 2BD904 802DB4D4 000E7880 */  sll        $t7, $t6, 2
    /* 2BD908 802DB4D8 01EE7823 */  subu       $t7, $t7, $t6
    /* 2BD90C 802DB4DC 000F7880 */  sll        $t7, $t7, 2
    /* 2BD910 802DB4E0 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BD914 802DB4E4 86090004 */  lh         $t1, 0x4($s0)
    /* 2BD918 802DB4E8 000F78C0 */  sll        $t7, $t7, 3
    /* 2BD91C 802DB4EC 24C60006 */  addiu      $a2, $a2, 0x6
    /* 2BD920 802DB4F0 3C058025 */  lui        $a1, %hi(D_8025668C)
    /* 2BD924 802DB4F4 00AF2821 */  addu       $a1, $a1, $t7
    /* 2BD928 802DB4F8 30D800FF */  andi       $t8, $a2, 0xFF
    /* 2BD92C 802DB4FC 27280028 */  addiu      $t0, $t9, 0x28
    /* 2BD930 802DB500 AFA80010 */  sw         $t0, 0x10($sp)
    /* 2BD934 802DB504 03003025 */  or         $a2, $t8, $zero
    /* 2BD938 802DB508 84A5668C */  lh         $a1, %lo(D_8025668C)($a1)
    /* 2BD93C 802DB50C 24040050 */  addiu      $a0, $zero, 0x50
    /* 2BD940 802DB510 86070000 */  lh         $a3, 0x0($s0)
    /* 2BD944 802DB514 0C0331EC */  jal        func_800CC7B0_DB760
    /* 2BD948 802DB518 AFA90014 */   sw        $t1, 0x14($sp)
    /* 2BD94C 802DB51C 0C000E38 */  jal        func_800038E0_44E0
    /* 2BD950 802DB520 00000000 */   nop
    /* 2BD954 802DB524 2401000A */  addiu      $at, $zero, 0xA
    /* 2BD958 802DB528 0041001A */  div        $zero, $v0, $at
    /* 2BD95C 802DB52C 00005010 */  mfhi       $t2
    /* 2BD960 802DB530 02002025 */  or         $a0, $s0, $zero
    /* 2BD964 802DB534 11400009 */  beqz       $t2, .L802DB55C_2BD98C
    /* 2BD968 802DB538 2405013F */   addiu     $a1, $zero, 0x13F
    /* 2BD96C 802DB53C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 2BD970 802DB540 44812000 */  mtc1       $at, $f4
    /* 2BD974 802DB544 860B0004 */  lh         $t3, 0x4($s0)
    /* 2BD978 802DB548 86060000 */  lh         $a2, 0x0($s0)
    /* 2BD97C 802DB54C 86070002 */  lh         $a3, 0x2($s0)
    /* 2BD980 802DB550 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 2BD984 802DB554 0C04DC6E */  jal        func_801371B8_146168
    /* 2BD988 802DB558 E7A40014 */   swc1      $f4, 0x14($sp)
  .L802DB55C_2BD98C:
    /* 2BD98C 802DB55C 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 2BD990 802DB560 000C6800 */  sll        $t5, $t4, 0
    /* 2BD994 802DB564 05A3002A */  bgezl      $t5, .L802DB610_2BDA40
    /* 2BD998 802DB568 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 2BD99C 802DB56C 0C000E38 */  jal        func_800038E0_44E0
    /* 2BD9A0 802DB570 00000000 */   nop
    /* 2BD9A4 802DB574 86050002 */  lh         $a1, 0x2($s0)
    /* 2BD9A8 802DB578 3C0D802E */  lui        $t5, %hi(D_802E2230)
    /* 2BD9AC 802DB57C 25AD2230 */  addiu      $t5, $t5, %lo(D_802E2230)
    /* 2BD9B0 802DB580 24A50080 */  addiu      $a1, $a1, 0x80
    /* 2BD9B4 802DB584 00057400 */  sll        $t6, $a1, 16
    /* 2BD9B8 802DB588 000E7C03 */  sra        $t7, $t6, 16
    /* 2BD9BC 802DB58C 2418007F */  addiu      $t8, $zero, 0x7F
    /* 2BD9C0 802DB590 AFB80010 */  sw         $t8, 0x10($sp)
    /* 2BD9C4 802DB594 01E02825 */  or         $a1, $t7, $zero
    /* 2BD9C8 802DB598 2419005A */  addiu      $t9, $zero, 0x5A
    /* 2BD9CC 802DB59C AFB90018 */  sw         $t9, 0x18($sp)
    /* 2BD9D0 802DB5A0 24190096 */  addiu      $t9, $zero, 0x96
    /* 2BD9D4 802DB5A4 2408000C */  addiu      $t0, $zero, 0xC
    /* 2BD9D8 802DB5A8 2409000A */  addiu      $t1, $zero, 0xA
    /* 2BD9DC 802DB5AC 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 2BD9E0 802DB5B0 AFAA0024 */  sw         $t2, 0x24($sp)
    /* 2BD9E4 802DB5B4 AFA90020 */  sw         $t1, 0x20($sp)
    /* 2BD9E8 802DB5B8 AFA8001C */  sw         $t0, 0x1C($sp)
    /* 2BD9EC 802DB5BC AFB90034 */  sw         $t9, 0x34($sp)
    /* 2BD9F0 802DB5C0 86040000 */  lh         $a0, 0x0($s0)
    /* 2BD9F4 802DB5C4 86060004 */  lh         $a2, 0x4($s0)
    /* 2BD9F8 802DB5C8 00003825 */  or         $a3, $zero, $zero
    /* 2BD9FC 802DB5CC AFA00014 */  sw         $zero, 0x14($sp)
    /* 2BDA00 802DB5D0 04410004 */  bgez       $v0, .L802DB5E4_2BDA14
    /* 2BDA04 802DB5D4 304B0003 */   andi      $t3, $v0, 0x3
    /* 2BDA08 802DB5D8 11600002 */  beqz       $t3, .L802DB5E4_2BDA14
    /* 2BDA0C 802DB5DC 00000000 */   nop
    /* 2BDA10 802DB5E0 256BFFFC */  addiu      $t3, $t3, -0x4
  .L802DB5E4_2BDA14:
    /* 2BDA14 802DB5E4 000B6080 */  sll        $t4, $t3, 2
    /* 2BDA18 802DB5E8 018B6023 */  subu       $t4, $t4, $t3
    /* 2BDA1C 802DB5EC 018D1821 */  addu       $v1, $t4, $t5
    /* 2BDA20 802DB5F0 906E0000 */  lbu        $t6, 0x0($v1)
    /* 2BDA24 802DB5F4 906F0001 */  lbu        $t7, 0x1($v1)
    /* 2BDA28 802DB5F8 90780002 */  lbu        $t8, 0x2($v1)
    /* 2BDA2C 802DB5FC AFAE0028 */  sw         $t6, 0x28($sp)
    /* 2BDA30 802DB600 AFAF002C */  sw         $t7, 0x2C($sp)
    /* 2BDA34 802DB604 0C03297B */  jal        func_800CA5EC_D959C
    /* 2BDA38 802DB608 AFB80030 */   sw        $t8, 0x30($sp)
    /* 2BDA3C 802DB60C 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DB610_2BDA40:
    /* 2BDA40 802DB610 8FB00040 */  lw         $s0, 0x40($sp)
    /* 2BDA44 802DB614 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 2BDA48 802DB618 03E00008 */  jr         $ra
    /* 2BDA4C 802DB61C 00000000 */   nop
endlabel func_802DB3F0_2BD820
