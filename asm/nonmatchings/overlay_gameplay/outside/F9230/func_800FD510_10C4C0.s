nonmatching func_800FD510_10C4C0, 0x348

glabel func_800FD510_10C4C0
    /* 10C4C0 800FD510 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 10C4C4 800FD514 AFB00020 */  sw         $s0, 0x20($sp)
    /* 10C4C8 800FD518 3C108005 */  lui        $s0, %hi(D_80052B2C)
    /* 10C4CC 800FD51C 26102B2C */  addiu      $s0, $s0, %lo(D_80052B2C)
    /* 10C4D0 800FD520 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 10C4D4 800FD524 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 10C4D8 800FD528 AFA40038 */  sw         $a0, 0x38($sp)
    /* 10C4DC 800FD52C AFA5003C */  sw         $a1, 0x3C($sp)
    /* 10C4E0 800FD530 AFA0002C */  sw         $zero, 0x2C($sp)
    /* 10C4E4 800FD534 24040002 */  addiu      $a0, $zero, 0x2
    /* 10C4E8 800FD538 0C039833 */  jal        func_800E60CC_F507C
    /* 10C4EC 800FD53C 91C50035 */   lbu       $a1, 0x35($t6)
    /* 10C4F0 800FD540 50400008 */  beql       $v0, $zero, .L800FD564_10C514
    /* 10C4F4 800FD544 87B9003A */   lh        $t9, 0x3A($sp)
    /* 10C4F8 800FD548 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 10C4FC 800FD54C 24040002 */  addiu      $a0, $zero, 0x2
    /* 10C500 800FD550 0C03978F */  jal        func_800E5E3C_F4DEC
    /* 10C504 800FD554 91E50035 */   lbu       $a1, 0x35($t7)
    /* 10C508 800FD558 24180001 */  addiu      $t8, $zero, 0x1
    /* 10C50C 800FD55C AFB8002C */  sw         $t8, 0x2C($sp)
    /* 10C510 800FD560 87B9003A */  lh         $t9, 0x3A($sp)
  .L800FD564_10C514:
    /* 10C514 800FD564 87AA003E */  lh         $t2, 0x3E($sp)
    /* 10C518 800FD568 3C098005 */  lui        $t1, %hi(D_80052AE8)
    /* 10C51C 800FD56C 00194100 */  sll        $t0, $t9, 4
    /* 10C520 800FD570 01194021 */  addu       $t0, $t0, $t9
    /* 10C524 800FD574 00084080 */  sll        $t0, $t0, 2
    /* 10C528 800FD578 25292AE8 */  addiu      $t1, $t1, %lo(D_80052AE8)
    /* 10C52C 800FD57C 01091021 */  addu       $v0, $t0, $t1
    /* 10C530 800FD580 3C018016 */  lui        $at, %hi(D_80159318)
    /* 10C534 800FD584 A44A0034 */  sh         $t2, 0x34($v0)
    /* 10C538 800FD588 A4209318 */  sh         $zero, %lo(D_80159318)($at)
    /* 10C53C 800FD58C 844B0034 */  lh         $t3, 0x34($v0)
    /* 10C540 800FD590 3C0D8005 */  lui        $t5, %hi(vehicleInstances)
    /* 10C544 800FD594 25ADDCD0 */  addiu      $t5, $t5, %lo(vehicleInstances)
    /* 10C548 800FD598 000B6080 */  sll        $t4, $t3, 2
    /* 10C54C 800FD59C 018B6023 */  subu       $t4, $t4, $t3
    /* 10C550 800FD5A0 000C60C0 */  sll        $t4, $t4, 3
    /* 10C554 800FD5A4 018B6023 */  subu       $t4, $t4, $t3
    /* 10C558 800FD5A8 000C6080 */  sll        $t4, $t4, 2
    /* 10C55C 800FD5AC 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 10C560 800FD5B0 018D1821 */  addu       $v1, $t4, $t5
    /* 10C564 800FD5B4 26102B34 */  addiu      $s0, $s0, %lo(D_80052B34)
    /* 10C568 800FD5B8 AC430038 */  sw         $v1, 0x38($v0)
    /* 10C56C 800FD5BC AE030000 */  sw         $v1, 0x0($s0)
    /* 10C570 800FD5C0 906F001A */  lbu        $t7, 0x1A($v1)
    /* 10C574 800FD5C4 3C198025 */  lui        $t9, %hi(vehicleSpecs)
    /* 10C578 800FD5C8 27397A00 */  addiu      $t9, $t9, %lo(vehicleSpecs)
    /* 10C57C 800FD5CC 000FC0C0 */  sll        $t8, $t7, 3
    /* 10C580 800FD5D0 030FC023 */  subu       $t8, $t8, $t7
    /* 10C584 800FD5D4 0018C100 */  sll        $t8, $t8, 4
    /* 10C588 800FD5D8 03192021 */  addu       $a0, $t8, $t9
    /* 10C58C 800FD5DC 8488003C */  lh         $t0, 0x3C($a0)
    /* 10C590 800FD5E0 24098001 */  addiu      $t1, $zero, -0x7FFF
    /* 10C594 800FD5E4 3C018016 */  lui        $at, %hi(D_801591EA)
    /* 10C598 800FD5E8 05030004 */  bgezl      $t0, .L800FD5FC_10C5AC
    /* 10C59C 800FD5EC A4400036 */   sh        $zero, 0x36($v0)
    /* 10C5A0 800FD5F0 10000002 */  b          .L800FD5FC_10C5AC
    /* 10C5A4 800FD5F4 A4490036 */   sh        $t1, 0x36($v0)
    /* 10C5A8 800FD5F8 A4400036 */  sh         $zero, 0x36($v0)
  .L800FD5FC_10C5AC:
    /* 10C5AC 800FD5FC A42091EA */  sh         $zero, %lo(D_801591EA)($at)
    /* 10C5B0 800FD600 8E0B0000 */  lw         $t3, 0x0($s0)
    /* 10C5B4 800FD604 240A00FA */  addiu      $t2, $zero, 0xFA
    /* 10C5B8 800FD608 3C018015 */  lui        $at, %hi(D_801493DC)
    /* 10C5BC 800FD60C A56A002E */  sh         $t2, 0x2E($t3)
    /* 10C5C0 800FD610 A42093DC */  sh         $zero, %lo(D_801493DC)($at)
    /* 10C5C4 800FD614 3C018016 */  lui        $at, %hi(D_80159230)
    /* 10C5C8 800FD618 A4209230 */  sh         $zero, %lo(D_80159230)($at)
    /* 10C5CC 800FD61C 3C018016 */  lui        $at, %hi(D_8015F9EC)
    /* 10C5D0 800FD620 AC20F9EC */  sw         $zero, %lo(D_8015F9EC)($at)
    /* 10C5D4 800FD624 8E020000 */  lw         $v0, 0x0($s0)
    /* 10C5D8 800FD628 944C0020 */  lhu        $t4, 0x20($v0)
    /* 10C5DC 800FD62C 358D0001 */  ori        $t5, $t4, 0x1
    /* 10C5E0 800FD630 A44D0020 */  sh         $t5, 0x20($v0)
    /* 10C5E4 800FD634 0C03F504 */  jal        func_800FD410_10C3C0
    /* 10C5E8 800FD638 AFA40030 */   sw        $a0, 0x30($sp)
    /* 10C5EC 800FD63C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 10C5F0 800FD640 3C188016 */  lui        $t8, %hi(D_80159232)
    /* 10C5F4 800FD644 3C018016 */  lui        $at, %hi(D_8015930A)
    /* 10C5F8 800FD648 91CF001A */  lbu        $t7, 0x1A($t6)
    /* 10C5FC 800FD64C 3C198016 */  lui        $t9, %hi(D_80159234)
    /* 10C600 800FD650 24080001 */  addiu      $t0, $zero, 0x1
    /* 10C604 800FD654 11E00016 */  beqz       $t7, .L800FD6B0_10C660
    /* 10C608 800FD658 24040010 */   addiu     $a0, $zero, 0x10
    /* 10C60C 800FD65C 87189232 */  lh         $t8, %lo(D_80159232)($t8)
    /* 10C610 800FD660 87399234 */  lh         $t9, %lo(D_80159234)($t9)
    /* 10C614 800FD664 00002825 */  or         $a1, $zero, $zero
    /* 10C618 800FD668 A438930A */  sh         $t8, %lo(D_8015930A)($at)
    /* 10C61C 800FD66C 3C018016 */  lui        $at, %hi(D_8015930C)
    /* 10C620 800FD670 A439930C */  sh         $t9, %lo(D_8015930C)($at)
    /* 10C624 800FD674 3C018014 */  lui        $at, %hi(D_8013FD88)
    /* 10C628 800FD678 AC28FD88 */  sw         $t0, %lo(D_8013FD88)($at)
    /* 10C62C 800FD67C 0C000451 */  jal        func_80001144_1D44
    /* 10C630 800FD680 00003025 */   or        $a2, $zero, $zero
    /* 10C634 800FD684 8E090000 */  lw         $t1, 0x0($s0)
    /* 10C638 800FD688 3C048025 */  lui        $a0, %hi(D_80257A1A)
    /* 10C63C 800FD68C 912A001A */  lbu        $t2, 0x1A($t1)
    /* 10C640 800FD690 000A58C0 */  sll        $t3, $t2, 3
    /* 10C644 800FD694 016A5823 */  subu       $t3, $t3, $t2
    /* 10C648 800FD698 000B5900 */  sll        $t3, $t3, 4
    /* 10C64C 800FD69C 008B2021 */  addu       $a0, $a0, $t3
    /* 10C650 800FD6A0 0C006994 */  jal        func_8001A650_1B250
    /* 10C654 800FD6A4 84847A1A */   lh        $a0, %lo(D_80257A1A)($a0)
    /* 10C658 800FD6A8 0C04E5DE */  jal        func_80139778_148728
    /* 10C65C 800FD6AC 00000000 */   nop
  .L800FD6B0_10C660:
    /* 10C660 800FD6B0 8FAC0030 */  lw         $t4, 0x30($sp)
    /* 10C664 800FD6B4 240E0004 */  addiu      $t6, $zero, 0x4
    /* 10C668 800FD6B8 3C018005 */  lui        $at, %hi(D_80050AD4)
    /* 10C66C 800FD6BC 8D8D001C */  lw         $t5, 0x1C($t4)
    /* 10C670 800FD6C0 24040002 */  addiu      $a0, $zero, 0x2
    /* 10C674 800FD6C4 11A00004 */  beqz       $t5, .L800FD6D8_10C688
    /* 10C678 800FD6C8 00000000 */   nop
    /* 10C67C 800FD6CC 3C018005 */  lui        $at, %hi(D_80050AD4)
    /* 10C680 800FD6D0 10000002 */  b          .L800FD6DC_10C68C
    /* 10C684 800FD6D4 AC200AD4 */   sw        $zero, %lo(D_80050AD4)($at)
  .L800FD6D8_10C688:
    /* 10C688 800FD6D8 AC2E0AD4 */  sw         $t6, %lo(D_80050AD4)($at)
  .L800FD6DC_10C68C:
    /* 10C68C 800FD6DC 8FAF002C */  lw         $t7, 0x2C($sp)
    /* 10C690 800FD6E0 51E00004 */  beql       $t7, $zero, .L800FD6F4_10C6A4
    /* 10C694 800FD6E4 8E020000 */   lw        $v0, 0x0($s0)
    /* 10C698 800FD6E8 0C03973D */  jal        func_800E5CF4_F4CA4
    /* 10C69C 800FD6EC 93A5003F */   lbu       $a1, 0x3F($sp)
    /* 10C6A0 800FD6F0 8E020000 */  lw         $v0, 0x0($s0)
  .L800FD6F4_10C6A4:
    /* 10C6A4 800FD6F4 44800000 */  mtc1       $zero, $f0
    /* 10C6A8 800FD6F8 3C0B8015 */  lui        $t3, %hi(D_8014940E)
    /* 10C6AC 800FD6FC 84580006 */  lh         $t8, 0x6($v0)
    /* 10C6B0 800FD700 2403012C */  addiu      $v1, $zero, 0x12C
    /* 10C6B4 800FD704 00002025 */  or         $a0, $zero, $zero
    /* 10C6B8 800FD708 A458000E */  sh         $t8, 0xE($v0)
    /* 10C6BC 800FD70C 8E190000 */  lw         $t9, 0x0($s0)
    /* 10C6C0 800FD710 3C028014 */  lui        $v0, %hi(D_8013B910)
    /* 10C6C4 800FD714 2442B910 */  addiu      $v0, $v0, %lo(D_8013B910)
    /* 10C6C8 800FD718 A7200010 */  sh         $zero, 0x10($t9)
    /* 10C6CC 800FD71C 8E080000 */  lw         $t0, 0x0($s0)
    /* 10C6D0 800FD720 E5000030 */  swc1       $f0, 0x30($t0)
    /* 10C6D4 800FD724 8E090000 */  lw         $t1, 0x0($s0)
    /* 10C6D8 800FD728 E5200034 */  swc1       $f0, 0x34($t1)
    /* 10C6DC 800FD72C 8E0A0000 */  lw         $t2, 0x0($s0)
    /* 10C6E0 800FD730 E5400038 */  swc1       $f0, 0x38($t2)
    /* 10C6E4 800FD734 856B940E */  lh         $t3, %lo(D_8014940E)($t3)
    /* 10C6E8 800FD738 51600004 */  beql       $t3, $zero, .L800FD74C_10C6FC
    /* 10C6EC 800FD73C 8E020000 */   lw        $v0, 0x0($s0)
    /* 10C6F0 800FD740 A4430002 */  sh         $v1, 0x2($v0)
    /* 10C6F4 800FD744 A4430004 */  sh         $v1, 0x4($v0)
    /* 10C6F8 800FD748 8E020000 */  lw         $v0, 0x0($s0)
  .L800FD74C_10C6FC:
    /* 10C6FC 800FD74C 8FAF0030 */  lw         $t7, 0x30($sp)
    /* 10C700 800FD750 9043001A */  lbu        $v1, 0x1A($v0)
    /* 10C704 800FD754 50600017 */  beql       $v1, $zero, .L800FD7B4_10C764
    /* 10C708 800FD758 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
    /* 10C70C 800FD75C 844C003C */  lh         $t4, 0x3C($v0)
    /* 10C710 800FD760 3C0D8004 */  lui        $t5, %hi(currentLevel)
    /* 10C714 800FD764 55800013 */  bnel       $t4, $zero, .L800FD7B4_10C764
    /* 10C718 800FD768 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
    /* 10C71C 800FD76C 8DAD7F90 */  lw         $t5, %lo(currentLevel)($t5)
    /* 10C720 800FD770 24010002 */  addiu      $at, $zero, 0x2
    /* 10C724 800FD774 24050037 */  addiu      $a1, $zero, 0x37
    /* 10C728 800FD778 15A10002 */  bne        $t5, $at, .L800FD784_10C734
    /* 10C72C 800FD77C 24010001 */   addiu     $at, $zero, 0x1
    /* 10C730 800FD780 1061000B */  beq        $v1, $at, .L800FD7B0_10C760
  .L800FD784_10C734:
    /* 10C734 800FD784 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
    /* 10C738 800FD788 44812000 */  mtc1       $at, $f4
    /* 10C73C 800FD78C 844E0004 */  lh         $t6, 0x4($v0)
    /* 10C740 800FD790 84460000 */  lh         $a2, 0x0($v0)
    /* 10C744 800FD794 84470002 */  lh         $a3, 0x2($v0)
    /* 10C748 800FD798 00002025 */  or         $a0, $zero, $zero
    /* 10C74C 800FD79C E7A40014 */  swc1       $f4, 0x14($sp)
    /* 10C750 800FD7A0 0C04DC6E */  jal        func_801371B8_146168
    /* 10C754 800FD7A4 AFAE0010 */   sw        $t6, 0x10($sp)
    /* 10C758 800FD7A8 1000000A */  b          .L800FD7D4_10C784
    /* 10C75C 800FD7AC 00000000 */   nop
  .L800FD7B0_10C760:
    /* 10C760 800FD7B0 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
  .L800FD7B4_10C764:
    /* 10C764 800FD7B4 44813000 */  mtc1       $at, $f6
    /* 10C768 800FD7B8 84580004 */  lh         $t8, 0x4($v0)
    /* 10C76C 800FD7BC 85E50068 */  lh         $a1, 0x68($t7)
    /* 10C770 800FD7C0 84460000 */  lh         $a2, 0x0($v0)
    /* 10C774 800FD7C4 84470002 */  lh         $a3, 0x2($v0)
    /* 10C778 800FD7C8 E7A60014 */  swc1       $f6, 0x14($sp)
    /* 10C77C 800FD7CC 0C04DC6E */  jal        func_801371B8_146168
    /* 10C780 800FD7D0 AFB80010 */   sw        $t8, 0x10($sp)
  .L800FD7D4_10C784:
    /* 10C784 800FD7D4 3C018016 */  lui        $at, %hi(D_801591D8)
    /* 10C788 800FD7D8 A42091D8 */  sh         $zero, %lo(D_801591D8)($at)
    /* 10C78C 800FD7DC 3C018016 */  lui        $at, %hi(D_801591D6)
    /* 10C790 800FD7E0 A42091D6 */  sh         $zero, %lo(D_801591D6)($at)
    /* 10C794 800FD7E4 8E020000 */  lw         $v0, 0x0($s0)
    /* 10C798 800FD7E8 3C018005 */  lui        $at, %hi(D_8004DCAC)
    /* 10C79C 800FD7EC 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 10C7A0 800FD7F0 84590000 */  lh         $t9, 0x0($v0)
    /* 10C7A4 800FD7F4 8FB00020 */  lw         $s0, 0x20($sp)
    /* 10C7A8 800FD7F8 44994000 */  mtc1       $t9, $f8
    /* 10C7AC 800FD7FC 00000000 */  nop
    /* 10C7B0 800FD800 468042A0 */  cvt.s.w    $f10, $f8
    /* 10C7B4 800FD804 E42ADCAC */  swc1       $f10, %lo(D_8004DCAC)($at)
    /* 10C7B8 800FD808 84480004 */  lh         $t0, 0x4($v0)
    /* 10C7BC 800FD80C 3C018005 */  lui        $at, %hi(D_8004DCB0)
    /* 10C7C0 800FD810 44888000 */  mtc1       $t0, $f16
    /* 10C7C4 800FD814 00000000 */  nop
    /* 10C7C8 800FD818 468084A0 */  cvt.s.w    $f18, $f16
    /* 10C7CC 800FD81C E432DCB0 */  swc1       $f18, %lo(D_8004DCB0)($at)
    /* 10C7D0 800FD820 84490000 */  lh         $t1, 0x0($v0)
    /* 10C7D4 800FD824 3C018005 */  lui        $at, %hi(D_8004DCB4)
    /* 10C7D8 800FD828 44892000 */  mtc1       $t1, $f4
    /* 10C7DC 800FD82C 00000000 */  nop
    /* 10C7E0 800FD830 468021A0 */  cvt.s.w    $f6, $f4
    /* 10C7E4 800FD834 E426DCB4 */  swc1       $f6, %lo(D_8004DCB4)($at)
    /* 10C7E8 800FD838 844A0004 */  lh         $t2, 0x4($v0)
    /* 10C7EC 800FD83C 3C018005 */  lui        $at, %hi(D_8004DCB8)
    /* 10C7F0 800FD840 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 10C7F4 800FD844 448A4000 */  mtc1       $t2, $f8
    /* 10C7F8 800FD848 00000000 */  nop
    /* 10C7FC 800FD84C 468042A0 */  cvt.s.w    $f10, $f8
    /* 10C800 800FD850 03E00008 */  jr         $ra
    /* 10C804 800FD854 E42ADCB8 */   swc1      $f10, %lo(D_8004DCB8)($at)
endlabel func_800FD510_10C4C0
