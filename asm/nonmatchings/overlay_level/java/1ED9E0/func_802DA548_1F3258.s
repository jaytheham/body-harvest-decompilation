nonmatching func_802DA548_1F3258, 0x2FC

glabel func_802DA548_1F3258
    /* 1F3258 802DA548 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F325C 802DA54C 000E7880 */  sll        $t7, $t6, 2
    /* 1F3260 802DA550 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F3264 802DA554 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F3268 802DA558 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F326C 802DA55C 000F7900 */  sll        $t7, $t7, 4
    /* 1F3270 802DA560 01F83821 */  addu       $a3, $t7, $t8
    /* 1F3274 802DA564 84F9000C */  lh         $t9, 0xC($a3)
    /* 1F3278 802DA568 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 1F327C 802DA56C 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 1F3280 802DA570 00194900 */  sll        $t1, $t9, 4
    /* 1F3284 802DA574 00495021 */  addu       $t2, $v0, $t1
    /* 1F3288 802DA578 8143000C */  lb         $v1, 0xC($t2)
    /* 1F328C 802DA57C 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 1F3290 802DA580 AFA40050 */  sw         $a0, 0x50($sp)
    /* 1F3294 802DA584 00035900 */  sll        $t3, $v1, 4
    /* 1F3298 802DA588 004B6021 */  addu       $t4, $v0, $t3
    /* 1F329C 802DA58C 8185000D */  lb         $a1, 0xD($t4)
    /* 1F32A0 802DA590 01C02025 */  or         $a0, $t6, $zero
    /* 1F32A4 802DA594 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F32A8 802DA598 00056900 */  sll        $t5, $a1, 4
    /* 1F32AC 802DA59C 004D7021 */  addu       $t6, $v0, $t5
    /* 1F32B0 802DA5A0 81C6000D */  lb         $a2, 0xD($t6)
    /* 1F32B4 802DA5A4 AFA70018 */  sw         $a3, 0x18($sp)
    /* 1F32B8 802DA5A8 A3A40053 */  sb         $a0, 0x53($sp)
    /* 1F32BC 802DA5AC A7A3004E */  sh         $v1, 0x4E($sp)
    /* 1F32C0 802DA5B0 A7A5004A */  sh         $a1, 0x4A($sp)
    /* 1F32C4 802DA5B4 0C0B6884 */  jal        func_802DA210_1F2F20
    /* 1F32C8 802DA5B8 A7A6004C */   sh        $a2, 0x4C($sp)
    /* 1F32CC 802DA5BC 3C0F8005 */  lui        $t7, %hi(D_80052B34)
    /* 1F32D0 802DA5C0 8DEF2B34 */  lw         $t7, %lo(D_80052B34)($t7)
    /* 1F32D4 802DA5C4 24060078 */  addiu      $a2, $zero, 0x78
    /* 1F32D8 802DA5C8 93A40053 */  lbu        $a0, 0x53($sp)
    /* 1F32DC 802DA5CC 91F8001A */  lbu        $t8, 0x1A($t7)
    /* 1F32E0 802DA5D0 240502BC */  addiu      $a1, $zero, 0x2BC
    /* 1F32E4 802DA5D4 17000006 */  bnez       $t8, .L802DA5F0_1F3300
    /* 1F32E8 802DA5D8 00000000 */   nop
    /* 1F32EC 802DA5DC 93A40053 */  lbu        $a0, 0x53($sp)
    /* 1F32F0 802DA5E0 0C021DFA */  jal        func_800877E8_96798
    /* 1F32F4 802DA5E4 24050073 */   addiu     $a1, $zero, 0x73
    /* 1F32F8 802DA5E8 10000004 */  b          .L802DA5FC_1F330C
    /* 1F32FC 802DA5EC 8FA30018 */   lw        $v1, 0x18($sp)
  .L802DA5F0_1F3300:
    /* 1F3300 802DA5F0 0C021DFA */  jal        func_800877E8_96798
    /* 1F3304 802DA5F4 24060320 */   addiu     $a2, $zero, 0x320
    /* 1F3308 802DA5F8 8FA30018 */  lw         $v1, 0x18($sp)
  .L802DA5FC_1F330C:
    /* 1F330C 802DA5FC 8C790020 */  lw         $t9, 0x20($v1)
    /* 1F3310 802DA600 33291000 */  andi       $t1, $t9, 0x1000
    /* 1F3314 802DA604 55200088 */  bnel       $t1, $zero, .L802DA828_1F3538
    /* 1F3318 802DA608 8462001E */   lh        $v0, 0x1E($v1)
    /* 1F331C 802DA60C 906A0047 */  lbu        $t2, 0x47($v1)
    /* 1F3320 802DA610 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 1F3324 802DA614 93A40053 */  lbu        $a0, 0x53($sp)
    /* 1F3328 802DA618 314B0001 */  andi       $t3, $t2, 0x1
    /* 1F332C 802DA61C 15600081 */  bnez       $t3, .L802DA824_1F3534
    /* 1F3330 802DA620 87A5004E */   lh        $a1, 0x4E($sp)
    /* 1F3334 802DA624 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 1F3338 802DA628 846C0000 */  lh         $t4, 0x0($v1)
    /* 1F333C 802DA62C 84780004 */  lh         $t8, 0x4($v1)
    /* 1F3340 802DA630 844D0000 */  lh         $t5, 0x0($v0)
    /* 1F3344 802DA634 84590004 */  lh         $t9, 0x4($v0)
    /* 1F3348 802DA638 24062000 */  addiu      $a2, $zero, 0x2000
    /* 1F334C 802DA63C 018D7823 */  subu       $t7, $t4, $t5
    /* 1F3350 802DA640 03195023 */  subu       $t2, $t8, $t9
    /* 1F3354 802DA644 A7AA0044 */  sh         $t2, 0x44($sp)
    /* 1F3358 802DA648 0C02188C */  jal        func_80086230_951E0
    /* 1F335C 802DA64C A7AF0046 */   sh        $t7, 0x46($sp)
    /* 1F3360 802DA650 87A70046 */  lh         $a3, 0x46($sp)
    /* 1F3364 802DA654 1440002E */  bnez       $v0, .L802DA710_1F3420
    /* 1F3368 802DA658 87A80044 */   lh        $t0, 0x44($sp)
    /* 1F336C 802DA65C 00072823 */  negu       $a1, $a3
    /* 1F3370 802DA660 00A7082A */  slt        $at, $a1, $a3
    /* 1F3374 802DA664 10200003 */  beqz       $at, .L802DA674_1F3384
    /* 1F3378 802DA668 00082023 */   negu      $a0, $t0
    /* 1F337C 802DA66C 10000002 */  b          .L802DA678_1F3388
    /* 1F3380 802DA670 00E01825 */   or        $v1, $a3, $zero
  .L802DA674_1F3384:
    /* 1F3384 802DA674 00A01825 */  or         $v1, $a1, $zero
  .L802DA678_1F3388:
    /* 1F3388 802DA678 0088082A */  slt        $at, $a0, $t0
    /* 1F338C 802DA67C 10200003 */  beqz       $at, .L802DA68C_1F339C
    /* 1F3390 802DA680 00801025 */   or        $v0, $a0, $zero
    /* 1F3394 802DA684 10000001 */  b          .L802DA68C_1F339C
    /* 1F3398 802DA688 01001025 */   or        $v0, $t0, $zero
  .L802DA68C_1F339C:
    /* 1F339C 802DA68C 0043082A */  slt        $at, $v0, $v1
    /* 1F33A0 802DA690 10200008 */  beqz       $at, .L802DA6B4_1F33C4
    /* 1F33A4 802DA694 8FAB0018 */   lw        $t3, 0x18($sp)
    /* 1F33A8 802DA698 00A7082A */  slt        $at, $a1, $a3
    /* 1F33AC 802DA69C 10200003 */  beqz       $at, .L802DA6AC_1F33BC
    /* 1F33B0 802DA6A0 00A01025 */   or        $v0, $a1, $zero
    /* 1F33B4 802DA6A4 10000009 */  b          .L802DA6CC_1F33DC
    /* 1F33B8 802DA6A8 00E01825 */   or        $v1, $a3, $zero
  .L802DA6AC_1F33BC:
    /* 1F33BC 802DA6AC 10000007 */  b          .L802DA6CC_1F33DC
    /* 1F33C0 802DA6B0 00401825 */   or        $v1, $v0, $zero
  .L802DA6B4_1F33C4:
    /* 1F33C4 802DA6B4 0088082A */  slt        $at, $a0, $t0
    /* 1F33C8 802DA6B8 10200003 */  beqz       $at, .L802DA6C8_1F33D8
    /* 1F33CC 802DA6BC 00801025 */   or        $v0, $a0, $zero
    /* 1F33D0 802DA6C0 10000001 */  b          .L802DA6C8_1F33D8
    /* 1F33D4 802DA6C4 01001025 */   or        $v0, $t0, $zero
  .L802DA6C8_1F33D8:
    /* 1F33D8 802DA6C8 00401825 */  or         $v1, $v0, $zero
  .L802DA6CC_1F33DC:
    /* 1F33DC 802DA6CC 28610079 */  slti       $at, $v1, 0x79
    /* 1F33E0 802DA6D0 54200010 */  bnel       $at, $zero, .L802DA714_1F3424
    /* 1F33E4 802DA6D4 00072823 */   negu      $a1, $a3
    /* 1F33E8 802DA6D8 816C004E */  lb         $t4, 0x4E($t3)
    /* 1F33EC 802DA6DC 93A40053 */  lbu        $a0, 0x53($sp)
    /* 1F33F0 802DA6E0 00002825 */  or         $a1, $zero, $zero
    /* 1F33F4 802DA6E4 1180000A */  beqz       $t4, .L802DA710_1F3420
    /* 1F33F8 802DA6E8 24060020 */   addiu     $a2, $zero, 0x20
    /* 1F33FC 802DA6EC A7A70046 */  sh         $a3, 0x46($sp)
    /* 1F3400 802DA6F0 0C021C62 */  jal        func_80087188_96138
    /* 1F3404 802DA6F4 A7A80044 */   sh        $t0, 0x44($sp)
    /* 1F3408 802DA6F8 87A70046 */  lh         $a3, 0x46($sp)
    /* 1F340C 802DA6FC 10400004 */  beqz       $v0, .L802DA710_1F3420
    /* 1F3410 802DA700 87A80044 */   lh        $t0, 0x44($sp)
    /* 1F3414 802DA704 8FAE0018 */  lw         $t6, 0x18($sp)
    /* 1F3418 802DA708 240D0008 */  addiu      $t5, $zero, 0x8
    /* 1F341C 802DA70C A5CD001E */  sh         $t5, 0x1E($t6)
  .L802DA710_1F3420:
    /* 1F3420 802DA710 00072823 */  negu       $a1, $a3
  .L802DA714_1F3424:
    /* 1F3424 802DA714 00A7082A */  slt        $at, $a1, $a3
    /* 1F3428 802DA718 10200003 */  beqz       $at, .L802DA728_1F3438
    /* 1F342C 802DA71C 00082023 */   negu      $a0, $t0
    /* 1F3430 802DA720 10000002 */  b          .L802DA72C_1F343C
    /* 1F3434 802DA724 00E01825 */   or        $v1, $a3, $zero
  .L802DA728_1F3438:
    /* 1F3438 802DA728 00A01825 */  or         $v1, $a1, $zero
  .L802DA72C_1F343C:
    /* 1F343C 802DA72C 0088082A */  slt        $at, $a0, $t0
    /* 1F3440 802DA730 10200003 */  beqz       $at, .L802DA740_1F3450
    /* 1F3444 802DA734 00801025 */   or        $v0, $a0, $zero
    /* 1F3448 802DA738 10000001 */  b          .L802DA740_1F3450
    /* 1F344C 802DA73C 01001025 */   or        $v0, $t0, $zero
  .L802DA740_1F3450:
    /* 1F3450 802DA740 0043082A */  slt        $at, $v0, $v1
    /* 1F3454 802DA744 10200007 */  beqz       $at, .L802DA764_1F3474
    /* 1F3458 802DA748 00A7082A */   slt       $at, $a1, $a3
    /* 1F345C 802DA74C 10200003 */  beqz       $at, .L802DA75C_1F346C
    /* 1F3460 802DA750 00A01025 */   or        $v0, $a1, $zero
    /* 1F3464 802DA754 10000009 */  b          .L802DA77C_1F348C
    /* 1F3468 802DA758 00E01825 */   or        $v1, $a3, $zero
  .L802DA75C_1F346C:
    /* 1F346C 802DA75C 10000007 */  b          .L802DA77C_1F348C
    /* 1F3470 802DA760 00401825 */   or        $v1, $v0, $zero
  .L802DA764_1F3474:
    /* 1F3474 802DA764 0088082A */  slt        $at, $a0, $t0
    /* 1F3478 802DA768 10200003 */  beqz       $at, .L802DA778_1F3488
    /* 1F347C 802DA76C 00801025 */   or        $v0, $a0, $zero
    /* 1F3480 802DA770 10000001 */  b          .L802DA778_1F3488
    /* 1F3484 802DA774 01001025 */   or        $v0, $t0, $zero
  .L802DA778_1F3488:
    /* 1F3488 802DA778 00401825 */  or         $v1, $v0, $zero
  .L802DA77C_1F348C:
    /* 1F348C 802DA77C 28610079 */  slti       $at, $v1, 0x79
    /* 1F3490 802DA780 1020001F */  beqz       $at, .L802DA800_1F3510
    /* 1F3494 802DA784 00A7082A */   slt       $at, $a1, $a3
    /* 1F3498 802DA788 10200003 */  beqz       $at, .L802DA798_1F34A8
    /* 1F349C 802DA78C 00A01825 */   or        $v1, $a1, $zero
    /* 1F34A0 802DA790 10000001 */  b          .L802DA798_1F34A8
    /* 1F34A4 802DA794 00E01825 */   or        $v1, $a3, $zero
  .L802DA798_1F34A8:
    /* 1F34A8 802DA798 0088082A */  slt        $at, $a0, $t0
    /* 1F34AC 802DA79C 10200003 */  beqz       $at, .L802DA7AC_1F34BC
    /* 1F34B0 802DA7A0 00801025 */   or        $v0, $a0, $zero
    /* 1F34B4 802DA7A4 10000001 */  b          .L802DA7AC_1F34BC
    /* 1F34B8 802DA7A8 01001025 */   or        $v0, $t0, $zero
  .L802DA7AC_1F34BC:
    /* 1F34BC 802DA7AC 0043082A */  slt        $at, $v0, $v1
    /* 1F34C0 802DA7B0 10200008 */  beqz       $at, .L802DA7D4_1F34E4
    /* 1F34C4 802DA7B4 87A6004C */   lh        $a2, 0x4C($sp)
    /* 1F34C8 802DA7B8 00A7082A */  slt        $at, $a1, $a3
    /* 1F34CC 802DA7BC 10200003 */  beqz       $at, .L802DA7CC_1F34DC
    /* 1F34D0 802DA7C0 00A01025 */   or        $v0, $a1, $zero
    /* 1F34D4 802DA7C4 10000009 */  b          .L802DA7EC_1F34FC
    /* 1F34D8 802DA7C8 00E01825 */   or        $v1, $a3, $zero
  .L802DA7CC_1F34DC:
    /* 1F34DC 802DA7CC 10000007 */  b          .L802DA7EC_1F34FC
    /* 1F34E0 802DA7D0 00401825 */   or        $v1, $v0, $zero
  .L802DA7D4_1F34E4:
    /* 1F34E4 802DA7D4 0088082A */  slt        $at, $a0, $t0
    /* 1F34E8 802DA7D8 10200003 */  beqz       $at, .L802DA7E8_1F34F8
    /* 1F34EC 802DA7DC 00801025 */   or        $v0, $a0, $zero
    /* 1F34F0 802DA7E0 10000001 */  b          .L802DA7E8_1F34F8
    /* 1F34F4 802DA7E4 01001025 */   or        $v0, $t0, $zero
  .L802DA7E8_1F34F8:
    /* 1F34F8 802DA7E8 00401825 */  or         $v1, $v0, $zero
  .L802DA7EC_1F34FC:
    /* 1F34FC 802DA7EC 28610073 */  slti       $at, $v1, 0x73
    /* 1F3500 802DA7F0 14200003 */  bnez       $at, .L802DA800_1F3510
    /* 1F3504 802DA7F4 93A40053 */   lbu       $a0, 0x53($sp)
    /* 1F3508 802DA7F8 0C0B6863 */  jal        func_802DA18C_1F2E9C
    /* 1F350C 802DA7FC 87A5004A */   lh        $a1, 0x4A($sp)
  .L802DA800_1F3510:
    /* 1F3510 802DA800 93A40053 */  lbu        $a0, 0x53($sp)
    /* 1F3514 802DA804 87A5004C */  lh         $a1, 0x4C($sp)
    /* 1F3518 802DA808 0C02429B */  jal        func_80090A6C_9FA1C
    /* 1F351C 802DA80C 24060BB8 */   addiu     $a2, $zero, 0xBB8
    /* 1F3520 802DA810 93A40053 */  lbu        $a0, 0x53($sp)
    /* 1F3524 802DA814 87A5004A */  lh         $a1, 0x4A($sp)
    /* 1F3528 802DA818 0C02429B */  jal        func_80090A6C_9FA1C
    /* 1F352C 802DA81C 24060BB8 */   addiu     $a2, $zero, 0xBB8
    /* 1F3530 802DA820 8FA30018 */  lw         $v1, 0x18($sp)
  .L802DA824_1F3534:
    /* 1F3534 802DA824 8462001E */  lh         $v0, 0x1E($v1)
  .L802DA828_1F3538:
    /* 1F3538 802DA828 10400002 */  beqz       $v0, .L802DA834_1F3544
    /* 1F353C 802DA82C 244FFFFF */   addiu     $t7, $v0, -0x1
    /* 1F3540 802DA830 A46F001E */  sh         $t7, 0x1E($v1)
  .L802DA834_1F3544:
    /* 1F3544 802DA834 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F3548 802DA838 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 1F354C 802DA83C 03E00008 */  jr         $ra
    /* 1F3550 802DA840 00000000 */   nop
endlabel func_802DA548_1F3258
