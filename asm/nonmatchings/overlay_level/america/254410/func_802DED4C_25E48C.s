nonmatching func_802DED4C_25E48C, 0xF4

glabel func_802DED4C_25E48C
    /* 25E48C 802DED4C 3C01802E */  lui        $at, %hi(D_802DF3A4)
    /* 25E490 802DED50 C420F3A4 */  lwc1       $f0, %lo(D_802DF3A4)($at)
    /* 25E494 802DED54 3C01C0C0 */  lui        $at, (0xC0C00000 >> 16)
    /* 25E498 802DED58 44812000 */  mtc1       $at, $f4
    /* 25E49C 802DED5C 3C01C2E6 */  lui        $at, (0xC2E60000 >> 16)
    /* 25E4A0 802DED60 44815000 */  mtc1       $at, $f10
    /* 25E4A4 802DED64 46002182 */  mul.s      $f6, $f4, $f0
    /* 25E4A8 802DED68 3C014198 */  lui        $at, (0x41980000 >> 16)
    /* 25E4AC 802DED6C 44812000 */  mtc1       $at, $f4
    /* 25E4B0 802DED70 46005402 */  mul.s      $f16, $f10, $f0
    /* 25E4B4 802DED74 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 25E4B8 802DED78 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 25E4BC 802DED7C AFA40020 */  sw         $a0, 0x20($sp)
    /* 25E4C0 802DED80 93A40023 */  lbu        $a0, 0x23($sp)
    /* 25E4C4 802DED84 4600320D */  trunc.w.s  $f8, $f6
    /* 25E4C8 802DED88 46002182 */  mul.s      $f6, $f4, $f0
    /* 25E4CC 802DED8C 44054000 */  mfc1       $a1, $f8
    /* 25E4D0 802DED90 4600848D */  trunc.w.s  $f18, $f16
    /* 25E4D4 802DED94 00057C00 */  sll        $t7, $a1, 16
    /* 25E4D8 802DED98 000F2C03 */  sra        $a1, $t7, 16
    /* 25E4DC 802DED9C 4600320D */  trunc.w.s  $f8, $f6
    /* 25E4E0 802DEDA0 44069000 */  mfc1       $a2, $f18
    /* 25E4E4 802DEDA4 44074000 */  mfc1       $a3, $f8
    /* 25E4E8 802DEDA8 00064400 */  sll        $t0, $a2, 16
    /* 25E4EC 802DEDAC 00083403 */  sra        $a2, $t0, 16
    /* 25E4F0 802DEDB0 00075C00 */  sll        $t3, $a3, 16
    /* 25E4F4 802DEDB4 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 25E4F8 802DEDB8 000B3C03 */   sra       $a3, $t3, 16
    /* 25E4FC 802DEDBC 93AD0023 */  lbu        $t5, 0x23($sp)
    /* 25E500 802DEDC0 24050050 */  addiu      $a1, $zero, 0x50
    /* 25E504 802DEDC4 3C048005 */  lui        $a0, %hi(alienInstances)
    /* 25E508 802DEDC8 01A50019 */  multu      $t5, $a1
    /* 25E50C 802DEDCC 24848198 */  addiu      $a0, $a0, %lo(alienInstances)
    /* 25E510 802DEDD0 240D0005 */  addiu      $t5, $zero, 0x5
    /* 25E514 802DEDD4 24070003 */  addiu      $a3, $zero, 0x3
    /* 25E518 802DEDD8 00007012 */  mflo       $t6
    /* 25E51C 802DEDDC 008E1021 */  addu       $v0, $a0, $t6
    /* 25E520 802DEDE0 90430025 */  lbu        $v1, 0x25($v0)
    /* 25E524 802DEDE4 8C490020 */  lw         $t1, 0x20($v0)
    /* 25E528 802DEDE8 00650019 */  multu      $v1, $a1
    /* 25E52C 802DEDEC 000952C0 */  sll        $t2, $t1, 11
    /* 25E530 802DEDF0 00007812 */  mflo       $t7
    /* 25E534 802DEDF4 008FC021 */  addu       $t8, $a0, $t7
    /* 25E538 802DEDF8 93190025 */  lbu        $t9, 0x25($t8)
    /* 25E53C 802DEDFC 03250019 */  multu      $t9, $a1
    /* 25E540 802DEE00 24050014 */  addiu      $a1, $zero, 0x14
    /* 25E544 802DEE04 00004012 */  mflo       $t0
    /* 25E548 802DEE08 00883021 */  addu       $a2, $a0, $t0
    /* 25E54C 802DEE0C 05420005 */  bltzl      $t2, .L802DEE24_25E564
    /* 25E550 802DEE10 93A40023 */   lbu       $a0, 0x23($sp)
    /* 25E554 802DEE14 8CCB0020 */  lw         $t3, 0x20($a2)
    /* 25E558 802DEE18 356C1000 */  ori        $t4, $t3, 0x1000
    /* 25E55C 802DEE1C ACCC0020 */  sw         $t4, 0x20($a2)
    /* 25E560 802DEE20 93A40023 */  lbu        $a0, 0x23($sp)
  .L802DEE24_25E564:
    /* 25E564 802DEE24 00003025 */  or         $a2, $zero, $zero
    /* 25E568 802DEE28 0C0227AD */  jal        func_80089EB4_98E64
    /* 25E56C 802DEE2C AFAD0010 */   sw        $t5, 0x10($sp)
    /* 25E570 802DEE30 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 25E574 802DEE34 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 25E578 802DEE38 03E00008 */  jr         $ra
    /* 25E57C 802DEE3C 00000000 */   nop
endlabel func_802DED4C_25E48C
