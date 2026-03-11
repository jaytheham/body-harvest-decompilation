nonmatching func_802DDC88_25D3C8, 0x27C

glabel func_802DDC88_25D3C8
    /* 25D3C8 802DDC88 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 25D3CC 802DDC8C AFB00020 */  sw         $s0, 0x20($sp)
    /* 25D3D0 802DDC90 309000FF */  andi       $s0, $a0, 0xFF
    /* 25D3D4 802DDC94 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 25D3D8 802DDC98 AFA40058 */  sw         $a0, 0x58($sp)
    /* 25D3DC 802DDC9C 320400FF */  andi       $a0, $s0, 0xFF
    /* 25D3E0 802DDCA0 2405FFFA */  addiu      $a1, $zero, -0x6
    /* 25D3E4 802DDCA4 2406FF8D */  addiu      $a2, $zero, -0x73
    /* 25D3E8 802DDCA8 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 25D3EC 802DDCAC 24070013 */   addiu     $a3, $zero, 0x13
    /* 25D3F0 802DDCB0 00107080 */  sll        $t6, $s0, 2
    /* 25D3F4 802DDCB4 01D07021 */  addu       $t6, $t6, $s0
    /* 25D3F8 802DDCB8 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 25D3FC 802DDCBC 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 25D400 802DDCC0 000E7100 */  sll        $t6, $t6, 4
    /* 25D404 802DDCC4 01CF1821 */  addu       $v1, $t6, $t7
    /* 25D408 802DDCC8 8462000C */  lh         $v0, 0xC($v1)
    /* 25D40C 802DDCCC 8C680020 */  lw         $t0, 0x20($v1)
    /* 25D410 802DDCD0 3C198015 */  lui        $t9, %hi(D_8014DD5C)
    /* 25D414 802DDCD4 0002C100 */  sll        $t8, $v0, 4
    /* 25D418 802DDCD8 0338C821 */  addu       $t9, $t9, $t8
    /* 25D41C 802DDCDC 8339DD5C */  lb         $t9, %lo(D_8014DD5C)($t9)
    /* 25D420 802DDCE0 31092000 */  andi       $t1, $t0, 0x2000
    /* 25D424 802DDCE4 A7A20040 */  sh         $v0, 0x40($sp)
    /* 25D428 802DDCE8 1120002B */  beqz       $t1, .L802DDD98_25D4D8
    /* 25D42C 802DDCEC A7B90042 */   sh        $t9, 0x42($sp)
    /* 25D430 802DDCF0 90620024 */  lbu        $v0, 0x24($v1)
    /* 25D434 802DDCF4 320400FF */  andi       $a0, $s0, 0xFF
    /* 25D438 802DDCF8 24050001 */  addiu      $a1, $zero, 0x1
    /* 25D43C 802DDCFC 28410014 */  slti       $at, $v0, 0x14
    /* 25D440 802DDD00 10200003 */  beqz       $at, .L802DDD10_25D450
    /* 25D444 802DDD04 24060004 */   addiu     $a2, $zero, 0x4
    /* 25D448 802DDD08 244A0001 */  addiu      $t2, $v0, 0x1
    /* 25D44C 802DDD0C A06A0024 */  sb         $t2, 0x24($v1)
  .L802DDD10_25D450:
    /* 25D450 802DDD10 3C0B802E */  lui        $t3, %hi(D_802E0698)
    /* 25D454 802DDD14 256B0698 */  addiu      $t3, $t3, %lo(D_802E0698)
    /* 25D458 802DDD18 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 25D45C 802DDD1C 27A70040 */  addiu      $a3, $sp, 0x40
    /* 25D460 802DDD20 0C0207C6 */  jal        func_80081F18_90EC8
    /* 25D464 802DDD24 AFA30034 */   sw        $v1, 0x34($sp)
    /* 25D468 802DDD28 24010003 */  addiu      $at, $zero, 0x3
    /* 25D46C 802DDD2C 14410010 */  bne        $v0, $at, .L802DDD70_25D4B0
    /* 25D470 802DDD30 8FA30034 */   lw        $v1, 0x34($sp)
    /* 25D474 802DDD34 320400FF */  andi       $a0, $s0, 0xFF
    /* 25D478 802DDD38 0C0B76DA */  jal        func_802DDB68_25D2A8
    /* 25D47C 802DDD3C AFA30034 */   sw        $v1, 0x34($sp)
    /* 25D480 802DDD40 8FA30034 */  lw         $v1, 0x34($sp)
    /* 25D484 802DDD44 3C01FFBF */  lui        $at, (0xFFBFFFFF >> 16)
    /* 25D488 802DDD48 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
    /* 25D48C 802DDD4C 806C003C */  lb         $t4, 0x3C($v1)
    /* 25D490 802DDD50 8C6F0020 */  lw         $t7, 0x20($v1)
    /* 25D494 802DDD54 240E0100 */  addiu      $t6, $zero, 0x100
    /* 25D498 802DDD58 258D0001 */  addiu      $t5, $t4, 0x1
    /* 25D49C 802DDD5C 01E1C024 */  and        $t8, $t7, $at
    /* 25D4A0 802DDD60 A06D003C */  sb         $t5, 0x3C($v1)
    /* 25D4A4 802DDD64 A46E002C */  sh         $t6, 0x2C($v1)
    /* 25D4A8 802DDD68 10000008 */  b          .L802DDD8C_25D4CC
    /* 25D4AC 802DDD6C AC780020 */   sw        $t8, 0x20($v1)
  .L802DDD70_25D4B0:
    /* 25D4B0 802DDD70 24010004 */  addiu      $at, $zero, 0x4
    /* 25D4B4 802DDD74 54410006 */  bnel       $v0, $at, .L802DDD90_25D4D0
    /* 25D4B8 802DDD78 90620024 */   lbu       $v0, 0x24($v1)
    /* 25D4BC 802DDD7C 8C790020 */  lw         $t9, 0x20($v1)
    /* 25D4C0 802DDD80 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 25D4C4 802DDD84 03214024 */  and        $t0, $t9, $at
    /* 25D4C8 802DDD88 AC680020 */  sw         $t0, 0x20($v1)
  .L802DDD8C_25D4CC:
    /* 25D4CC 802DDD8C 90620024 */  lbu        $v0, 0x24($v1)
  .L802DDD90_25D4D0:
    /* 25D4D0 802DDD90 10000031 */  b          .L802DDE58_25D598
    /* 25D4D4 802DDD94 02002025 */   or        $a0, $s0, $zero
  .L802DDD98_25D4D8:
    /* 25D4D8 802DDD98 90620024 */  lbu        $v0, 0x24($v1)
    /* 25D4DC 802DDD9C 02002025 */  or         $a0, $s0, $zero
    /* 25D4E0 802DDDA0 1440002B */  bnez       $v0, .L802DDE50_25D590
    /* 25D4E4 802DDDA4 2448FFFF */   addiu     $t0, $v0, -0x1
    /* 25D4E8 802DDDA8 8469002C */  lh         $t1, 0x2C($v1)
    /* 25D4EC 802DDDAC 55200026 */  bnel       $t1, $zero, .L802DDE48_25D588
    /* 25D4F0 802DDDB0 90620024 */   lbu       $v0, 0x24($v1)
    /* 25D4F4 802DDDB4 846A003A */  lh         $t2, 0x3A($v1)
    /* 25D4F8 802DDDB8 55400023 */  bnel       $t2, $zero, .L802DDE48_25D588
    /* 25D4FC 802DDDBC 90620024 */   lbu       $v0, 0x24($v1)
    /* 25D500 802DDDC0 806B003C */  lb         $t3, 0x3C($v1)
    /* 25D504 802DDDC4 320400FF */  andi       $a0, $s0, 0xFF
    /* 25D508 802DDDC8 24052000 */  addiu      $a1, $zero, 0x2000
    /* 25D50C 802DDDCC 2961000C */  slti       $at, $t3, 0xC
    /* 25D510 802DDDD0 5020001D */  beql       $at, $zero, .L802DDE48_25D588
    /* 25D514 802DDDD4 90620024 */   lbu       $v0, 0x24($v1)
    /* 25D518 802DDDD8 0C0213FA */  jal        func_80084FE8_93F98
    /* 25D51C 802DDDDC AFA30034 */   sw        $v1, 0x34($sp)
    /* 25D520 802DDDE0 10400018 */  beqz       $v0, .L802DDE44_25D584
    /* 25D524 802DDDE4 8FA30034 */   lw        $v1, 0x34($sp)
    /* 25D528 802DDDE8 906C0026 */  lbu        $t4, 0x26($v1)
    /* 25D52C 802DDDEC 240D0004 */  addiu      $t5, $zero, 0x4
    /* 25D530 802DDDF0 02002025 */  or         $a0, $s0, $zero
    /* 25D534 802DDDF4 15800003 */  bnez       $t4, .L802DDE04_25D544
    /* 25D538 802DDDF8 2405013A */   addiu     $a1, $zero, 0x13A
    /* 25D53C 802DDDFC 1000000F */  b          .L802DDE3C_25D57C
    /* 25D540 802DDE00 A06D0026 */   sb        $t5, 0x26($v1)
  .L802DDE04_25D544:
    /* 25D544 802DDE04 0C04DD1A */  jal        func_80137468_146418
    /* 25D548 802DDE08 AFA30034 */   sw        $v1, 0x34($sp)
    /* 25D54C 802DDE0C 8FA30034 */  lw         $v1, 0x34($sp)
    /* 25D550 802DDE10 24010001 */  addiu      $at, $zero, 0x1
    /* 25D554 802DDE14 24180064 */  addiu      $t8, $zero, 0x64
    /* 25D558 802DDE18 8C6E0020 */  lw         $t6, 0x20($v1)
    /* 25D55C 802DDE1C 90620026 */  lbu        $v0, 0x26($v1)
    /* 25D560 802DDE20 35CF2000 */  ori        $t7, $t6, 0x2000
    /* 25D564 802DDE24 14410003 */  bne        $v0, $at, .L802DDE34_25D574
    /* 25D568 802DDE28 AC6F0020 */   sw        $t7, 0x20($v1)
    /* 25D56C 802DDE2C A478003A */  sh         $t8, 0x3A($v1)
    /* 25D570 802DDE30 90620026 */  lbu        $v0, 0x26($v1)
  .L802DDE34_25D574:
    /* 25D574 802DDE34 2459FFFF */  addiu      $t9, $v0, -0x1
    /* 25D578 802DDE38 A0790026 */  sb         $t9, 0x26($v1)
  .L802DDE3C_25D57C:
    /* 25D57C 802DDE3C A0600024 */  sb         $zero, 0x24($v1)
    /* 25D580 802DDE40 A0600036 */  sb         $zero, 0x36($v1)
  .L802DDE44_25D584:
    /* 25D584 802DDE44 90620024 */  lbu        $v0, 0x24($v1)
  .L802DDE48_25D588:
    /* 25D588 802DDE48 10000003 */  b          .L802DDE58_25D598
    /* 25D58C 802DDE4C 02002025 */   or        $a0, $s0, $zero
  .L802DDE50_25D590:
    /* 25D590 802DDE50 A0680024 */  sb         $t0, 0x24($v1)
    /* 25D594 802DDE54 310200FF */  andi       $v0, $t0, 0xFF
  .L802DDE58_25D598:
    /* 25D598 802DDE58 87A90042 */  lh         $t1, 0x42($sp)
    /* 25D59C 802DDE5C 3C0B8015 */  lui        $t3, %hi(D_8014DD50)
    /* 25D5A0 802DDE60 256BDD50 */  addiu      $t3, $t3, %lo(D_8014DD50)
    /* 25D5A4 802DDE64 00026880 */  sll        $t5, $v0, 2
    /* 25D5A8 802DDE68 00095100 */  sll        $t2, $t1, 4
    /* 25D5AC 802DDE6C 014B3021 */  addu       $a2, $t2, $t3
    /* 25D5B0 802DDE70 01A26823 */  subu       $t5, $t5, $v0
    /* 25D5B4 802DDE74 94CC000A */  lhu        $t4, 0xA($a2)
    /* 25D5B8 802DDE78 000D68C0 */  sll        $t5, $t5, 3
    /* 25D5BC 802DDE7C 01A26821 */  addu       $t5, $t5, $v0
    /* 25D5C0 802DDE80 000D68C0 */  sll        $t5, $t5, 3
    /* 25D5C4 802DDE84 018D7021 */  addu       $t6, $t4, $t5
    /* 25D5C8 802DDE88 A4CE000A */  sh         $t6, 0xA($a2)
    /* 25D5CC 802DDE8C 24050261 */  addiu      $a1, $zero, 0x261
    /* 25D5D0 802DDE90 0C04DD1A */  jal        func_80137468_146418
    /* 25D5D4 802DDE94 AFA30034 */   sw        $v1, 0x34($sp)
    /* 25D5D8 802DDE98 8FA30034 */  lw         $v1, 0x34($sp)
    /* 25D5DC 802DDE9C 3C040E02 */  lui        $a0, %hi(D_E021070)
    /* 25D5E0 802DDEA0 24841070 */  addiu      $a0, $a0, %lo(D_E021070)
    /* 25D5E4 802DDEA4 8462002C */  lh         $v0, 0x2C($v1)
    /* 25D5E8 802DDEA8 10400002 */  beqz       $v0, .L802DDEB4_25D5F4
    /* 25D5EC 802DDEAC 244FFFF0 */   addiu     $t7, $v0, -0x10
    /* 25D5F0 802DDEB0 A46F002C */  sh         $t7, 0x2C($v1)
  .L802DDEB4_25D5F4:
    /* 25D5F4 802DDEB4 0C0047E4 */  jal        func_80011F90_12B90
    /* 25D5F8 802DDEB8 AFA30034 */   sw        $v1, 0x34($sp)
    /* 25D5FC 802DDEBC 8FA30034 */  lw         $v1, 0x34($sp)
    /* 25D600 802DDEC0 24190100 */  addiu      $t9, $zero, 0x100
    /* 25D604 802DDEC4 00402825 */  or         $a1, $v0, $zero
    /* 25D608 802DDEC8 8478002C */  lh         $t8, 0x2C($v1)
    /* 25D60C 802DDECC 03382023 */  subu       $a0, $t9, $t8
    /* 25D610 802DDED0 00044400 */  sll        $t0, $a0, 16
    /* 25D614 802DDED4 0C001085 */  jal        func_80004214_4E14
    /* 25D618 802DDED8 00082403 */   sra       $a0, $t0, 16
    /* 25D61C 802DDEDC 8FA30034 */  lw         $v1, 0x34($sp)
    /* 25D620 802DDEE0 8462003A */  lh         $v0, 0x3A($v1)
    /* 25D624 802DDEE4 10400002 */  beqz       $v0, .L802DDEF0_25D630
    /* 25D628 802DDEE8 244AFFFF */   addiu     $t2, $v0, -0x1
    /* 25D62C 802DDEEC A46A003A */  sh         $t2, 0x3A($v1)
  .L802DDEF0_25D630:
    /* 25D630 802DDEF0 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 25D634 802DDEF4 8FB00020 */  lw         $s0, 0x20($sp)
    /* 25D638 802DDEF8 27BD0058 */  addiu      $sp, $sp, 0x58
    /* 25D63C 802DDEFC 03E00008 */  jr         $ra
    /* 25D640 802DDF00 00000000 */   nop
endlabel func_802DDC88_25D3C8
