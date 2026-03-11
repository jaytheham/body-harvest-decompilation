nonmatching func_8007D2B0_4D760, 0x530

glabel func_8007D2B0_4D760
    /* 4D760 8007D2B0 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 4D764 8007D2B4 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 4D768 8007D2B8 AFB4002C */  sw         $s4, 0x2C($sp)
    /* 4D76C 8007D2BC AFB20024 */  sw         $s2, 0x24($sp)
    /* 4D770 8007D2C0 240E0010 */  addiu      $t6, $zero, 0x10
    /* 4D774 8007D2C4 3C018005 */  lui        $at, %hi(gameplayMode)
    /* 4D778 8007D2C8 AFB50030 */  sw         $s5, 0x30($sp)
    /* 4D77C 8007D2CC AFB30028 */  sw         $s3, 0x28($sp)
    /* 4D780 8007D2D0 AFB10020 */  sw         $s1, 0x20($sp)
    /* 4D784 8007D2D4 AFB0001C */  sw         $s0, 0x1C($sp)
    /* 4D788 8007D2D8 0000A025 */  or         $s4, $zero, $zero
    /* 4D78C 8007D2DC 2412FFFF */  addiu      $s2, $zero, -0x1
    /* 4D790 8007D2E0 AFA00038 */  sw         $zero, 0x38($sp)
    /* 4D794 8007D2E4 0C01C250 */  jal        func_80070940_40DF0
    /* 4D798 8007D2E8 AC2E2ADC */   sw        $t6, %lo(gameplayMode)($at)
    /* 4D79C 8007D2EC 3C02800D */  lui        $v0, %hi(D_800D74A6)
    /* 4D7A0 8007D2F0 244274A6 */  addiu      $v0, $v0, %lo(D_800D74A6)
    /* 4D7A4 8007D2F4 240F004A */  addiu      $t7, $zero, 0x4A
    /* 4D7A8 8007D2F8 A44F0000 */  sh         $t7, 0x0($v0)
    /* 4D7AC 8007D2FC 84580000 */  lh         $t8, 0x0($v0)
    /* 4D7B0 8007D300 3C15800D */  lui        $s5, %hi(D_800D74A4)
    /* 4D7B4 8007D304 26B574A4 */  addiu      $s5, $s5, %lo(D_800D74A4)
    /* 4D7B8 8007D308 3C018009 */  lui        $at, %hi(D_800948F4)
    /* 4D7BC 8007D30C A6B80000 */  sh         $t8, 0x0($s5)
    /* 4D7C0 8007D310 AC2048F4 */  sw         $zero, %lo(D_800948F4)($at)
    /* 4D7C4 8007D314 0C001B57 */  jal        setFullResolution
    /* 4D7C8 8007D318 00009825 */   or        $s3, $zero, $zero
    /* 4D7CC 8007D31C 3C01800D */  lui        $at, %hi(D_800D74AE)
    /* 4D7D0 8007D320 A42074AE */  sh         $zero, %lo(D_800D74AE)($at)
    /* 4D7D4 8007D324 3C01800D */  lui        $at, %hi(D_800D74AC)
    /* 4D7D8 8007D328 A42074AC */  sh         $zero, %lo(D_800D74AC)($at)
    /* 4D7DC 8007D32C 3C01800D */  lui        $at, %hi(D_800D74B0)
    /* 4D7E0 8007D330 3C11800B */  lui        $s1, %hi(D_800AED78)
    /* 4D7E4 8007D334 A42074B0 */  sh         $zero, %lo(D_800D74B0)($at)
    /* 4D7E8 8007D338 2631ED78 */  addiu      $s1, $s1, %lo(D_800AED78)
    /* 4D7EC 8007D33C 00008025 */  or         $s0, $zero, $zero
  .L8007D340_4D7F0:
    /* 4D7F0 8007D340 02002825 */  or         $a1, $s0, $zero
    /* 4D7F4 8007D344 0C001C9B */  jal        func_8000726C_7E6C
    /* 4D7F8 8007D348 001027C3 */   sra       $a0, $s0, 31
    /* 4D7FC 8007D34C 26100001 */  addiu      $s0, $s0, 0x1
    /* 4D800 8007D350 2A01000C */  slti       $at, $s0, 0xC
    /* 4D804 8007D354 26310001 */  addiu      $s1, $s1, 0x1
    /* 4D808 8007D358 1420FFF9 */  bnez       $at, .L8007D340_4D7F0
    /* 4D80C 8007D35C A222FFFF */   sb        $v0, -0x1($s1)
    /* 4D810 8007D360 3C198005 */  lui        $t9, %hi(D_8004DC5C)
    /* 4D814 8007D364 9339DC5C */  lbu        $t9, %lo(D_8004DC5C)($t9)
    /* 4D818 8007D368 3C02800B */  lui        $v0, %hi(D_800AED78)
    /* 4D81C 8007D36C 2442ED78 */  addiu      $v0, $v0, %lo(D_800AED78)
    /* 4D820 8007D370 3C088005 */  lui        $t0, %hi(D_8004DC5E)
    /* 4D824 8007D374 A059000B */  sb         $t9, 0xB($v0)
    /* 4D828 8007D378 9508DC5E */  lhu        $t0, %lo(D_8004DC5E)($t0)
    /* 4D82C 8007D37C 3C11800B */  lui        $s1, %hi(D_800AED78)
    /* 4D830 8007D380 2631ED78 */  addiu      $s1, $s1, %lo(D_800AED78)
    /* 4D834 8007D384 00008025 */  or         $s0, $zero, $zero
    /* 4D838 8007D388 A048000C */  sb         $t0, 0xC($v0)
  .L8007D38C_4D83C:
    /* 4D83C 8007D38C 02002825 */  or         $a1, $s0, $zero
    /* 4D840 8007D390 0C001C9B */  jal        func_8000726C_7E6C
    /* 4D844 8007D394 001027C3 */   sra       $a0, $s0, 31
    /* 4D848 8007D398 3C04800B */  lui        $a0, %hi(D_800AE448)
    /* 4D84C 8007D39C 2484E448 */  addiu      $a0, $a0, %lo(D_800AE448)
    /* 4D850 8007D3A0 02002825 */  or         $a1, $s0, $zero
    /* 4D854 8007D3A4 0C00731B */  jal        osSyncPrintf
    /* 4D858 8007D3A8 00403025 */   or        $a2, $v0, $zero
    /* 4D85C 8007D3AC 92290000 */  lbu        $t1, 0x0($s1)
    /* 4D860 8007D3B0 3C0A8004 */  lui        $t2, %hi(currentLevel)
    /* 4D864 8007D3B4 51200011 */  beql       $t1, $zero, .L8007D3FC_4D8AC
    /* 4D868 8007D3B8 26100001 */   addiu     $s0, $s0, 0x1
    /* 4D86C 8007D3BC 8D4A7F90 */  lw         $t2, %lo(currentLevel)($t2)
    /* 4D870 8007D3C0 001060C0 */  sll        $t4, $s0, 3
    /* 4D874 8007D3C4 3C0E8009 */  lui        $t6, %hi(D_80094278)
    /* 4D878 8007D3C8 000A5880 */  sll        $t3, $t2, 2
    /* 4D87C 8007D3CC 016A5823 */  subu       $t3, $t3, $t2
    /* 4D880 8007D3D0 000B5880 */  sll        $t3, $t3, 2
    /* 4D884 8007D3D4 016A5821 */  addu       $t3, $t3, $t2
    /* 4D888 8007D3D8 000B58C0 */  sll        $t3, $t3, 3
    /* 4D88C 8007D3DC 016C6821 */  addu       $t5, $t3, $t4
    /* 4D890 8007D3E0 01CD7021 */  addu       $t6, $t6, $t5
    /* 4D894 8007D3E4 8DCE4278 */  lw         $t6, %lo(D_80094278)($t6)
    /* 4D898 8007D3E8 11C00003 */  beqz       $t6, .L8007D3F8_4D8A8
    /* 4D89C 8007D3EC 3C01800D */   lui       $at, %hi(D_800D74AC)
    /* 4D8A0 8007D3F0 10000005 */  b          .L8007D408_4D8B8
    /* 4D8A4 8007D3F4 A43074AC */   sh        $s0, %lo(D_800D74AC)($at)
  .L8007D3F8_4D8A8:
    /* 4D8A8 8007D3F8 26100001 */  addiu      $s0, $s0, 0x1
  .L8007D3FC_4D8AC:
    /* 4D8AC 8007D3FC 2A01000E */  slti       $at, $s0, 0xE
    /* 4D8B0 8007D400 1420FFE2 */  bnez       $at, .L8007D38C_4D83C
    /* 4D8B4 8007D404 26310001 */   addiu     $s1, $s1, 0x1
  .L8007D408_4D8B8:
    /* 4D8B8 8007D408 3C028005 */  lui        $v0, %hi(D_8004813F)
    /* 4D8BC 8007D40C 2442813F */  addiu      $v0, $v0, %lo(D_8004813F)
    /* 4D8C0 8007D410 24100007 */  addiu      $s0, $zero, 0x7
  .L8007D414_4D8C4:
    /* 4D8C4 8007D414 904F0000 */  lbu        $t7, 0x0($v0)
    /* 4D8C8 8007D418 11E00003 */  beqz       $t7, .L8007D428_4D8D8
    /* 4D8CC 8007D41C 3C01800D */   lui       $at, %hi(D_800D74AE)
    /* 4D8D0 8007D420 10000004 */  b          .L8007D434_4D8E4
    /* 4D8D4 8007D424 A43074AE */   sh        $s0, %lo(D_800D74AE)($at)
  .L8007D428_4D8D8:
    /* 4D8D8 8007D428 2610FFFF */  addiu      $s0, $s0, -0x1
    /* 4D8DC 8007D42C 0601FFF9 */  bgez       $s0, .L8007D414_4D8C4
    /* 4D8E0 8007D430 2442FFFF */   addiu     $v0, $v0, -0x1
  .L8007D434_4D8E4:
    /* 4D8E4 8007D434 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* 4D8E8 8007D438 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* 4D8EC 8007D43C 2411FFFF */  addiu      $s1, $zero, -0x1
  .L8007D440_4D8F0:
    /* 4D8F0 8007D440 0C001431 */  jal        func_800050C4_5CC4
    /* 4D8F4 8007D444 00000000 */   nop
    /* 4D8F8 8007D448 0C004785 */  jal        func_80011E14_12A14
    /* 4D8FC 8007D44C 00002025 */   or        $a0, $zero, $zero
    /* 4D900 8007D450 241800EF */  addiu      $t8, $zero, 0xEF
    /* 4D904 8007D454 AFB80010 */  sw         $t8, 0x10($sp)
    /* 4D908 8007D458 00002025 */  or         $a0, $zero, $zero
    /* 4D90C 8007D45C 00002825 */  or         $a1, $zero, $zero
    /* 4D910 8007D460 00003025 */  or         $a2, $zero, $zero
    /* 4D914 8007D464 0C001377 */  jal        func_80004DDC_59DC
    /* 4D918 8007D468 00003825 */   or        $a3, $zero, $zero
    /* 4D91C 8007D46C 0C00232A */  jal        func_80008CA8_98A8
    /* 4D920 8007D470 00002025 */   or        $a0, $zero, $zero
    /* 4D924 8007D474 3C198009 */  lui        $t9, %hi(D_800948F4)
    /* 4D928 8007D478 8F3948F4 */  lw         $t9, %lo(D_800948F4)($t9)
    /* 4D92C 8007D47C 2F210041 */  sltiu      $at, $t9, 0x41
    /* 4D930 8007D480 14200008 */  bnez       $at, .L8007D4A4_4D954
    /* 4D934 8007D484 2F2103E8 */   sltiu     $at, $t9, 0x3E8
    /* 4D938 8007D488 10200006 */  beqz       $at, .L8007D4A4_4D954
    /* 4D93C 8007D48C 24040046 */   addiu     $a0, $zero, 0x46
    /* 4D940 8007D490 2726FFC3 */  addiu      $a2, $t9, -0x3D
    /* 4D944 8007D494 00064400 */  sll        $t0, $a2, 16
    /* 4D948 8007D498 00083403 */  sra        $a2, $t0, 16
    /* 4D94C 8007D49C 0C01C319 */  jal        func_80070C64_41114
    /* 4D950 8007D4A0 24050005 */   addiu     $a1, $zero, 0x5
  .L8007D4A4_4D954:
    /* 4D954 8007D4A4 3C0A8009 */  lui        $t2, %hi(D_800948F4)
    /* 4D958 8007D4A8 8D4A48F4 */  lw         $t2, %lo(D_800948F4)($t2)
    /* 4D95C 8007D4AC 2D41004D */  sltiu      $at, $t2, 0x4D
    /* 4D960 8007D4B0 1420007B */  bnez       $at, .L8007D6A0_4DB50
    /* 4D964 8007D4B4 00000000 */   nop
    /* 4D968 8007D4B8 16510079 */  bne        $s2, $s1, .L8007D6A0_4DB50
    /* 4D96C 8007D4BC 24040047 */   addiu     $a0, $zero, 0x47
    /* 4D970 8007D4C0 00142C00 */  sll        $a1, $s4, 16
    /* 4D974 8007D4C4 00055C03 */  sra        $t3, $a1, 16
    /* 4D978 8007D4C8 0C01C436 */  jal        func_800710D8_41588
    /* 4D97C 8007D4CC 01602825 */   or        $a1, $t3, $zero
    /* 4D980 8007D4D0 0C01C59B */  jal        func_8007166C_41B1C
    /* 4D984 8007D4D4 00000000 */   nop
    /* 4D988 8007D4D8 2A610010 */  slti       $at, $s3, 0x10
    /* 4D98C 8007D4DC 10200005 */  beqz       $at, .L8007D4F4_4D9A4
    /* 4D990 8007D4E0 00002025 */   or        $a0, $zero, $zero
    /* 4D994 8007D4E4 26730001 */  addiu      $s3, $s3, 0x1
    /* 4D998 8007D4E8 00136400 */  sll        $t4, $s3, 16
    /* 4D99C 8007D4EC 1000006C */  b          .L8007D6A0_4DB50
    /* 4D9A0 8007D4F0 000C9C03 */   sra       $s3, $t4, 16
  .L8007D4F4_4D9A4:
    /* 4D9A4 8007D4F4 0C000D61 */  jal        isButtonNewlyPressed
    /* 4D9A8 8007D4F8 34059000 */   ori       $a1, $zero, 0x9000
    /* 4D9AC 8007D4FC 10400068 */  beqz       $v0, .L8007D6A0_4DB50
    /* 4D9B0 8007D500 3C04800B */   lui       $a0, %hi(D_800AE468)
    /* 4D9B4 8007D504 86A50000 */  lh         $a1, 0x0($s5)
    /* 4D9B8 8007D508 2484E468 */  addiu      $a0, $a0, %lo(D_800AE468)
    /* 4D9BC 8007D50C 24060047 */  addiu      $a2, $zero, 0x47
    /* 4D9C0 8007D510 24B4FFB9 */  addiu      $s4, $a1, -0x47
    /* 4D9C4 8007D514 0C00731B */  jal        osSyncPrintf
    /* 4D9C8 8007D518 02803825 */   or        $a3, $s4, $zero
    /* 4D9CC 8007D51C 2E810006 */  sltiu      $at, $s4, 0x6
    /* 4D9D0 8007D520 1020005D */  beqz       $at, .L8007D698_4DB48
    /* 4D9D4 8007D524 3C0D800D */   lui       $t5, %hi(D_800D74A6)
    /* 4D9D8 8007D528 00147080 */  sll        $t6, $s4, 2
    /* 4D9DC 8007D52C 3C01800B */  lui        $at, %hi(jtbl_800AE8C0_overlay_gameplay_frontend)
    /* 4D9E0 8007D530 002E0821 */  addu       $at, $at, $t6
    /* 4D9E4 8007D534 8C2EE8C0 */  lw         $t6, %lo(jtbl_800AE8C0_overlay_gameplay_frontend)($at)
    /* 4D9E8 8007D538 01C00008 */  jr         $t6
    /* 4D9EC 8007D53C 00000000 */   nop
    /* 4D9F0 8007D540 3C04800B */  lui        $a0, %hi(D_800AE49C)
    /* 4D9F4 8007D544 3C058004 */  lui        $a1, %hi(D_8004794A)
    /* 4D9F8 8007D548 24120010 */  addiu      $s2, $zero, 0x10
    /* 4D9FC 8007D54C 84A5794A */  lh         $a1, %lo(D_8004794A)($a1)
    /* 4DA00 8007D550 0C00731B */  jal        osSyncPrintf
    /* 4DA04 8007D554 2484E49C */   addiu     $a0, $a0, %lo(D_800AE49C)
    /* 4DA08 8007D558 10000051 */  b          .L8007D6A0_4DB50
    /* 4DA0C 8007D55C 00000000 */   nop
    /* 4DA10 8007D560 24040049 */  addiu      $a0, $zero, 0x49
    /* 4DA14 8007D564 0C01C22E */  jal        func_800708B8_40D68
    /* 4DA18 8007D568 00009825 */   or        $s3, $zero, $zero
    /* 4DA1C 8007D56C 0C01C22E */  jal        func_800708B8_40D68
    /* 4DA20 8007D570 2404004A */   addiu     $a0, $zero, 0x4A
    /* 4DA24 8007D574 0C01C145 */  jal        func_80070514_409C4
    /* 4DA28 8007D578 2404004D */   addiu     $a0, $zero, 0x4D
    /* 4DA2C 8007D57C 0C01C145 */  jal        func_80070514_409C4
    /* 4DA30 8007D580 2404004B */   addiu     $a0, $zero, 0x4B
    /* 4DA34 8007D584 240F004B */  addiu      $t7, $zero, 0x4B
    /* 4DA38 8007D588 A6AF0000 */  sh         $t7, 0x0($s5)
    /* 4DA3C 8007D58C 0C01C125 */  jal        func_80070494_40944
    /* 4DA40 8007D590 24040048 */   addiu     $a0, $zero, 0x48
    /* 4DA44 8007D594 24180002 */  addiu      $t8, $zero, 0x2
    /* 4DA48 8007D598 A058001C */  sb         $t8, 0x1C($v0)
    /* 4DA4C 8007D59C 0C0054F6 */  jal        func_800153D8_15FD8
    /* 4DA50 8007D5A0 240400C8 */   addiu     $a0, $zero, 0xC8
    /* 4DA54 8007D5A4 1000003E */  b          .L8007D6A0_4DB50
    /* 4DA58 8007D5A8 00000000 */   nop
    /* 4DA5C 8007D5AC 24040048 */  addiu      $a0, $zero, 0x48
    /* 4DA60 8007D5B0 0C01C22E */  jal        func_800708B8_40D68
    /* 4DA64 8007D5B4 00009825 */   or        $s3, $zero, $zero
    /* 4DA68 8007D5B8 0C01C22E */  jal        func_800708B8_40D68
    /* 4DA6C 8007D5BC 2404004A */   addiu     $a0, $zero, 0x4A
    /* 4DA70 8007D5C0 0C01C145 */  jal        func_80070514_409C4
    /* 4DA74 8007D5C4 2404004E */   addiu     $a0, $zero, 0x4E
    /* 4DA78 8007D5C8 0C01C145 */  jal        func_80070514_409C4
    /* 4DA7C 8007D5CC 2404004C */   addiu     $a0, $zero, 0x4C
    /* 4DA80 8007D5D0 0C01C125 */  jal        func_80070494_40944
    /* 4DA84 8007D5D4 24040049 */   addiu     $a0, $zero, 0x49
    /* 4DA88 8007D5D8 24190002 */  addiu      $t9, $zero, 0x2
    /* 4DA8C 8007D5DC A059001C */  sb         $t9, 0x1C($v0)
    /* 4DA90 8007D5E0 2408004C */  addiu      $t0, $zero, 0x4C
    /* 4DA94 8007D5E4 A6A80000 */  sh         $t0, 0x0($s5)
    /* 4DA98 8007D5E8 0C0054F6 */  jal        func_800153D8_15FD8
    /* 4DA9C 8007D5EC 240400C8 */   addiu     $a0, $zero, 0xC8
    /* 4DAA0 8007D5F0 1000002B */  b          .L8007D6A0_4DB50
    /* 4DAA4 8007D5F4 00000000 */   nop
    /* 4DAA8 8007D5F8 2404004D */  addiu      $a0, $zero, 0x4D
    /* 4DAAC 8007D5FC 0C01C22E */  jal        func_800708B8_40D68
    /* 4DAB0 8007D600 00009825 */   or        $s3, $zero, $zero
    /* 4DAB4 8007D604 0C01C22E */  jal        func_800708B8_40D68
    /* 4DAB8 8007D608 2404004B */   addiu     $a0, $zero, 0x4B
    /* 4DABC 8007D60C 0C01C145 */  jal        func_80070514_409C4
    /* 4DAC0 8007D610 24040049 */   addiu     $a0, $zero, 0x49
    /* 4DAC4 8007D614 0C01C145 */  jal        func_80070514_409C4
    /* 4DAC8 8007D618 2404004A */   addiu     $a0, $zero, 0x4A
    /* 4DACC 8007D61C 24090048 */  addiu      $t1, $zero, 0x48
    /* 4DAD0 8007D620 A6A90000 */  sh         $t1, 0x0($s5)
    /* 4DAD4 8007D624 0C01C125 */  jal        func_80070494_40944
    /* 4DAD8 8007D628 24040048 */   addiu     $a0, $zero, 0x48
    /* 4DADC 8007D62C 240A0001 */  addiu      $t2, $zero, 0x1
    /* 4DAE0 8007D630 A04A001C */  sb         $t2, 0x1C($v0)
    /* 4DAE4 8007D634 0000A025 */  or         $s4, $zero, $zero
    /* 4DAE8 8007D638 0C0054F6 */  jal        func_800153D8_15FD8
    /* 4DAEC 8007D63C 240400C8 */   addiu     $a0, $zero, 0xC8
    /* 4DAF0 8007D640 10000017 */  b          .L8007D6A0_4DB50
    /* 4DAF4 8007D644 00000000 */   nop
    /* 4DAF8 8007D648 2404004E */  addiu      $a0, $zero, 0x4E
    /* 4DAFC 8007D64C 0C01C22E */  jal        func_800708B8_40D68
    /* 4DB00 8007D650 00009825 */   or        $s3, $zero, $zero
    /* 4DB04 8007D654 0C01C22E */  jal        func_800708B8_40D68
    /* 4DB08 8007D658 2404004C */   addiu     $a0, $zero, 0x4C
    /* 4DB0C 8007D65C 0C01C145 */  jal        func_80070514_409C4
    /* 4DB10 8007D660 24040048 */   addiu     $a0, $zero, 0x48
    /* 4DB14 8007D664 0C01C145 */  jal        func_80070514_409C4
    /* 4DB18 8007D668 2404004A */   addiu     $a0, $zero, 0x4A
    /* 4DB1C 8007D66C 240B0049 */  addiu      $t3, $zero, 0x49
    /* 4DB20 8007D670 A6AB0000 */  sh         $t3, 0x0($s5)
    /* 4DB24 8007D674 0C01C125 */  jal        func_80070494_40944
    /* 4DB28 8007D678 24040049 */   addiu     $a0, $zero, 0x49
    /* 4DB2C 8007D67C 240C0001 */  addiu      $t4, $zero, 0x1
    /* 4DB30 8007D680 A04C001C */  sb         $t4, 0x1C($v0)
    /* 4DB34 8007D684 0000A025 */  or         $s4, $zero, $zero
    /* 4DB38 8007D688 0C0054F6 */  jal        func_800153D8_15FD8
    /* 4DB3C 8007D68C 240400C8 */   addiu     $a0, $zero, 0xC8
    /* 4DB40 8007D690 10000003 */  b          .L8007D6A0_4DB50
    /* 4DB44 8007D694 00000000 */   nop
  .L8007D698_4DB48:
    /* 4DB48 8007D698 85AD74A6 */  lh         $t5, %lo(D_800D74A6)($t5)
    /* 4DB4C 8007D69C A6AD0000 */  sh         $t5, 0x0($s5)
  .L8007D6A0_4DB50:
    /* 4DB50 8007D6A0 3C0E8009 */  lui        $t6, %hi(D_800948F4)
    /* 4DB54 8007D6A4 8DCE48F4 */  lw         $t6, %lo(D_800948F4)($t6)
    /* 4DB58 8007D6A8 2DC10041 */  sltiu      $at, $t6, 0x41
    /* 4DB5C 8007D6AC 14200003 */  bnez       $at, .L8007D6BC_4DB6C
    /* 4DB60 8007D6B0 00000000 */   nop
    /* 4DB64 8007D6B4 0C01CC6A */  jal        func_800731A8_43658
    /* 4DB68 8007D6B8 00000000 */   nop
  .L8007D6BC_4DB6C:
    /* 4DB6C 8007D6BC 0C002C11 */  jal        func_8000B044_BC44
    /* 4DB70 8007D6C0 00000000 */   nop
    /* 4DB74 8007D6C4 3C0F8009 */  lui        $t7, %hi(D_800948F4)
    /* 4DB78 8007D6C8 8DEF48F4 */  lw         $t7, %lo(D_800948F4)($t7)
    /* 4DB7C 8007D6CC 2DE103E8 */  sltiu      $at, $t7, 0x3E8
    /* 4DB80 8007D6D0 10200003 */  beqz       $at, .L8007D6E0_4DB90
    /* 4DB84 8007D6D4 25F80001 */   addiu     $t8, $t7, 0x1
    /* 4DB88 8007D6D8 3C018009 */  lui        $at, %hi(D_800948F4)
    /* 4DB8C 8007D6DC AC3848F4 */  sw         $t8, %lo(D_800948F4)($at)
  .L8007D6E0_4DB90:
    /* 4DB90 8007D6E0 24010010 */  addiu      $at, $zero, 0x10
    /* 4DB94 8007D6E4 1641000B */  bne        $s2, $at, .L8007D714_4DBC4
    /* 4DB98 8007D6E8 00000000 */   nop
    /* 4DB9C 8007D6EC 0C0054F6 */  jal        func_800153D8_15FD8
    /* 4DBA0 8007D6F0 240400C8 */   addiu     $a0, $zero, 0xC8
    /* 4DBA4 8007D6F4 0C01C22E */  jal        func_800708B8_40D68
    /* 4DBA8 8007D6F8 24040047 */   addiu     $a0, $zero, 0x47
    /* 4DBAC 8007D6FC 0C01C22E */  jal        func_800708B8_40D68
    /* 4DBB0 8007D700 24040048 */   addiu     $a0, $zero, 0x48
    /* 4DBB4 8007D704 0C01C22E */  jal        func_800708B8_40D68
    /* 4DBB8 8007D708 24040049 */   addiu     $a0, $zero, 0x49
    /* 4DBBC 8007D70C 0C01C22E */  jal        func_800708B8_40D68
    /* 4DBC0 8007D710 2404004A */   addiu     $a0, $zero, 0x4A
  .L8007D714_4DBC4:
    /* 4DBC4 8007D714 12510006 */  beq        $s2, $s1, .L8007D730_4DBE0
    /* 4DBC8 8007D718 8FA90038 */   lw        $t1, 0x38($sp)
    /* 4DBCC 8007D71C 1A400004 */  blez       $s2, .L8007D730_4DBE0
    /* 4DBD0 8007D720 00000000 */   nop
    /* 4DBD4 8007D724 2652FFFF */  addiu      $s2, $s2, -0x1
    /* 4DBD8 8007D728 0012CC00 */  sll        $t9, $s2, 16
    /* 4DBDC 8007D72C 00199403 */  sra        $s2, $t9, 16
  .L8007D730_4DBE0:
    /* 4DBE0 8007D730 15200012 */  bnez       $t1, .L8007D77C_4DC2C
    /* 4DBE4 8007D734 3C0BBA00 */   lui       $t3, (0xBA000E02 >> 16)
    /* 4DBE8 8007D738 8E020000 */  lw         $v0, 0x0($s0)
    /* 4DBEC 8007D73C 356B0E02 */  ori        $t3, $t3, (0xBA000E02 & 0xFFFF)
    /* 4DBF0 8007D740 3C0DFCFF */  lui        $t5, (0xFCFFFFFF >> 16)
    /* 4DBF4 8007D744 244A0008 */  addiu      $t2, $v0, 0x8
    /* 4DBF8 8007D748 AE0A0000 */  sw         $t2, 0x0($s0)
    /* 4DBFC 8007D74C AC400004 */  sw         $zero, 0x4($v0)
    /* 4DC00 8007D750 AC4B0000 */  sw         $t3, 0x0($v0)
    /* 4DC04 8007D754 8E020000 */  lw         $v0, 0x0($s0)
    /* 4DC08 8007D758 3C0EFFFC */  lui        $t6, (0xFFFCF279 >> 16)
    /* 4DC0C 8007D75C 35CEF279 */  ori        $t6, $t6, (0xFFFCF279 & 0xFFFF)
    /* 4DC10 8007D760 244C0008 */  addiu      $t4, $v0, 0x8
    /* 4DC14 8007D764 AE0C0000 */  sw         $t4, 0x0($s0)
    /* 4DC18 8007D768 35ADFFFF */  ori        $t5, $t5, (0xFCFFFFFF & 0xFFFF)
    /* 4DC1C 8007D76C AC4D0000 */  sw         $t5, 0x0($v0)
    /* 4DC20 8007D770 0C00394F */  jal        func_8000E53C_F13C
    /* 4DC24 8007D774 AC4E0004 */   sw        $t6, 0x4($v0)
    /* 4DC28 8007D778 AFA20038 */  sw         $v0, 0x38($sp)
  .L8007D77C_4DC2C:
    /* 4DC2C 8007D77C 0C001417 */  jal        func_8000505C_5C5C
    /* 4DC30 8007D780 00000000 */   nop
    /* 4DC34 8007D784 1640FF2E */  bnez       $s2, .L8007D440_4D8F0
    /* 4DC38 8007D788 00000000 */   nop
    /* 4DC3C 8007D78C 0C002BF7 */  jal        func_8000AFDC_BBDC
    /* 4DC40 8007D790 00000000 */   nop
    /* 4DC44 8007D794 3C0F800D */  lui        $t7, %hi(D_800D74AE)
    /* 4DC48 8007D798 85EF74AE */  lh         $t7, %lo(D_800D74AE)($t7)
    /* 4DC4C 8007D79C 3C028004 */  lui        $v0, %hi(D_80047948)
    /* 4DC50 8007D7A0 24427948 */  addiu      $v0, $v0, %lo(D_80047948)
    /* 4DC54 8007D7A4 3C04800B */  lui        $a0, %hi(D_800AE4C8)
    /* 4DC58 8007D7A8 A44F0000 */  sh         $t7, 0x0($v0)
    /* 4DC5C 8007D7AC 84450000 */  lh         $a1, 0x0($v0)
    /* 4DC60 8007D7B0 0C00731B */  jal        osSyncPrintf
    /* 4DC64 8007D7B4 2484E4C8 */   addiu     $a0, $a0, %lo(D_800AE4C8)
    /* 4DC68 8007D7B8 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 4DC6C 8007D7BC 8FB0001C */  lw         $s0, 0x1C($sp)
    /* 4DC70 8007D7C0 8FB10020 */  lw         $s1, 0x20($sp)
    /* 4DC74 8007D7C4 8FB20024 */  lw         $s2, 0x24($sp)
    /* 4DC78 8007D7C8 8FB30028 */  lw         $s3, 0x28($sp)
    /* 4DC7C 8007D7CC 8FB4002C */  lw         $s4, 0x2C($sp)
    /* 4DC80 8007D7D0 8FB50030 */  lw         $s5, 0x30($sp)
    /* 4DC84 8007D7D4 27BD0058 */  addiu      $sp, $sp, 0x58
    /* 4DC88 8007D7D8 03E00008 */  jr         $ra
    /* 4DC8C 8007D7DC 00001025 */   or        $v0, $zero, $zero
endlabel func_8007D2B0_4D760
