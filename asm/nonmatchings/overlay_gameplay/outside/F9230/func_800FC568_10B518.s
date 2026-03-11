nonmatching func_800FC568_10B518, 0x278

glabel func_800FC568_10B518
    /* 10B518 800FC568 3C058006 */  lui        $a1, %hi(D_8005BB34)
    /* 10B51C 800FC56C 24A5BB34 */  addiu      $a1, $a1, %lo(D_8005BB34)
    /* 10B520 800FC570 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 10B524 800FC574 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 10B528 800FC578 3C068016 */  lui        $a2, %hi(D_801593F0)
    /* 10B52C 800FC57C 24C693F0 */  addiu      $a2, $a2, %lo(D_801593F0)
    /* 10B530 800FC580 2403000B */  addiu      $v1, $zero, 0xB
    /* 10B534 800FC584 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 10B538 800FC588 240A003C */  addiu      $t2, $zero, 0x3C
    /* 10B53C 800FC58C 24090063 */  addiu      $t1, $zero, 0x63
    /* 10B540 800FC590 2408008E */  addiu      $t0, $zero, 0x8E
    /* 10B544 800FC594 24070018 */  addiu      $a3, $zero, 0x18
    /* 10B548 800FC598 AFAE002C */  sw         $t6, 0x2C($sp)
  .L800FC59C_10B54C:
    /* 10B54C 800FC59C 00670019 */  multu      $v1, $a3
    /* 10B550 800FC5A0 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 10B554 800FC5A4 00601025 */  or         $v0, $v1, $zero
    /* 10B558 800FC5A8 2463FFFF */  addiu      $v1, $v1, -0x1
    /* 10B55C 800FC5AC 00007812 */  mflo       $t7
    /* 10B560 800FC5B0 00CF2021 */  addu       $a0, $a2, $t7
    /* 10B564 800FC5B4 C4840000 */  lwc1       $f4, 0x0($a0)
    /* 10B568 800FC5B8 4600218D */  trunc.w.s  $f6, $f4
    /* 10B56C 800FC5BC 44193000 */  mfc1       $t9, $f6
    /* 10B570 800FC5C0 00000000 */  nop
    /* 10B574 800FC5C4 A5D90000 */  sh         $t9, 0x0($t6)
    /* 10B578 800FC5C8 C4880004 */  lwc1       $f8, 0x4($a0)
    /* 10B57C 800FC5CC 8CB90000 */  lw         $t9, 0x0($a1)
    /* 10B580 800FC5D0 4600428D */  trunc.w.s  $f10, $f8
    /* 10B584 800FC5D4 44185000 */  mfc1       $t8, $f10
    /* 10B588 800FC5D8 00000000 */  nop
    /* 10B58C 800FC5DC A7380002 */  sh         $t8, 0x2($t9)
    /* 10B590 800FC5E0 C4900008 */  lwc1       $f16, 0x8($a0)
    /* 10B594 800FC5E4 8CB80000 */  lw         $t8, 0x0($a1)
    /* 10B598 800FC5E8 4600848D */  trunc.w.s  $f18, $f16
    /* 10B59C 800FC5EC 440F9000 */  mfc1       $t7, $f18
    /* 10B5A0 800FC5F0 00000000 */  nop
    /* 10B5A4 800FC5F4 A70F0004 */  sh         $t7, 0x4($t8)
    /* 10B5A8 800FC5F8 8CB90000 */  lw         $t9, 0x0($a1)
    /* 10B5AC 800FC5FC A7200006 */  sh         $zero, 0x6($t9)
    /* 10B5B0 800FC600 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 10B5B4 800FC604 A5C00008 */  sh         $zero, 0x8($t6)
    /* 10B5B8 800FC608 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 10B5BC 800FC60C A5E0000A */  sh         $zero, 0xA($t7)
    /* 10B5C0 800FC610 8CB80000 */  lw         $t8, 0x0($a1)
    /* 10B5C4 800FC614 A308000C */  sb         $t0, 0xC($t8)
    /* 10B5C8 800FC618 8CB90000 */  lw         $t9, 0x0($a1)
    /* 10B5CC 800FC61C A329000D */  sb         $t1, 0xD($t9)
    /* 10B5D0 800FC620 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 10B5D4 800FC624 A1CA000E */  sb         $t2, 0xE($t6)
    /* 10B5D8 800FC628 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 10B5DC 800FC62C 00037400 */  sll        $t6, $v1, 16
    /* 10B5E0 800FC630 000E1C03 */  sra        $v1, $t6, 16
    /* 10B5E4 800FC634 A1EB000F */  sb         $t3, 0xF($t7)
    /* 10B5E8 800FC638 8CB80000 */  lw         $t8, 0x0($a1)
    /* 10B5EC 800FC63C 27190010 */  addiu      $t9, $t8, 0x10
    /* 10B5F0 800FC640 1440FFD6 */  bnez       $v0, .L800FC59C_10B54C
    /* 10B5F4 800FC644 ACB90000 */   sw        $t9, 0x0($a1)
    /* 10B5F8 800FC648 3C038006 */  lui        $v1, %hi(D_8005BB30)
    /* 10B5FC 800FC64C 2463BB30 */  addiu      $v1, $v1, %lo(D_8005BB30)
    /* 10B600 800FC650 8C620000 */  lw         $v0, 0x0($v1)
    /* 10B604 800FC654 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* 10B608 800FC658 3C0F0400 */  lui        $t7, (0x40030BF >> 16)
    /* 10B60C 800FC65C 24580008 */  addiu      $t8, $v0, 0x8
    /* 10B610 800FC660 AC780000 */  sw         $t8, 0x0($v1)
    /* 10B614 800FC664 AC400004 */  sw         $zero, 0x4($v0)
    /* 10B618 800FC668 AC590000 */  sw         $t9, 0x0($v0)
    /* 10B61C 800FC66C 8C620000 */  lw         $v0, 0x0($v1)
    /* 10B620 800FC670 35EF30BF */  ori        $t7, $t7, (0x40030BF & 0xFFFF)
    /* 10B624 800FC674 3C04B500 */  lui        $a0, (0xB5000000 >> 16)
    /* 10B628 800FC678 244E0008 */  addiu      $t6, $v0, 0x8
    /* 10B62C 800FC67C AC6E0000 */  sw         $t6, 0x0($v1)
    /* 10B630 800FC680 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 10B634 800FC684 8FB8002C */  lw         $t8, 0x2C($sp)
    /* 10B638 800FC688 240E0200 */  addiu      $t6, $zero, 0x200
    /* 10B63C 800FC68C AC580004 */  sw         $t8, 0x4($v0)
    /* 10B640 800FC690 8C620000 */  lw         $v0, 0x0($v1)
    /* 10B644 800FC694 3C180002 */  lui        $t8, (0x20400 >> 16)
    /* 10B648 800FC698 37180400 */  ori        $t8, $t8, (0x20400 & 0xFFFF)
    /* 10B64C 800FC69C 24590008 */  addiu      $t9, $v0, 0x8
    /* 10B650 800FC6A0 AC790000 */  sw         $t9, 0x0($v1)
    /* 10B654 800FC6A4 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 10B658 800FC6A8 AC440000 */  sw         $a0, 0x0($v0)
    /* 10B65C 800FC6AC 8C620000 */  lw         $v0, 0x0($v1)
    /* 10B660 800FC6B0 3C0E0004 */  lui        $t6, (0x40600 >> 16)
    /* 10B664 800FC6B4 35CE0600 */  ori        $t6, $t6, (0x40600 & 0xFFFF)
    /* 10B668 800FC6B8 244F0008 */  addiu      $t7, $v0, 0x8
    /* 10B66C 800FC6BC AC6F0000 */  sw         $t7, 0x0($v1)
    /* 10B670 800FC6C0 AC580004 */  sw         $t8, 0x4($v0)
    /* 10B674 800FC6C4 AC440000 */  sw         $a0, 0x0($v0)
    /* 10B678 800FC6C8 8C620000 */  lw         $v0, 0x0($v1)
    /* 10B67C 800FC6CC 3C180006 */  lui        $t8, (0x60800 >> 16)
    /* 10B680 800FC6D0 37180800 */  ori        $t8, $t8, (0x60800 & 0xFFFF)
    /* 10B684 800FC6D4 24590008 */  addiu      $t9, $v0, 0x8
    /* 10B688 800FC6D8 AC790000 */  sw         $t9, 0x0($v1)
    /* 10B68C 800FC6DC AC4E0004 */  sw         $t6, 0x4($v0)
    /* 10B690 800FC6E0 AC440000 */  sw         $a0, 0x0($v0)
    /* 10B694 800FC6E4 8C620000 */  lw         $v0, 0x0($v1)
    /* 10B698 800FC6E8 3C0E0008 */  lui        $t6, (0x80A00 >> 16)
    /* 10B69C 800FC6EC 35CE0A00 */  ori        $t6, $t6, (0x80A00 & 0xFFFF)
    /* 10B6A0 800FC6F0 244F0008 */  addiu      $t7, $v0, 0x8
    /* 10B6A4 800FC6F4 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 10B6A8 800FC6F8 AC580004 */  sw         $t8, 0x4($v0)
    /* 10B6AC 800FC6FC AC440000 */  sw         $a0, 0x0($v0)
    /* 10B6B0 800FC700 8C620000 */  lw         $v0, 0x0($v1)
    /* 10B6B4 800FC704 3C18000A */  lui        $t8, (0xA0C00 >> 16)
    /* 10B6B8 800FC708 37180C00 */  ori        $t8, $t8, (0xA0C00 & 0xFFFF)
    /* 10B6BC 800FC70C 24590008 */  addiu      $t9, $v0, 0x8
    /* 10B6C0 800FC710 AC790000 */  sw         $t9, 0x0($v1)
    /* 10B6C4 800FC714 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 10B6C8 800FC718 AC440000 */  sw         $a0, 0x0($v0)
    /* 10B6CC 800FC71C 8C620000 */  lw         $v0, 0x0($v1)
    /* 10B6D0 800FC720 3C0E000C */  lui        $t6, (0xC0E00 >> 16)
    /* 10B6D4 800FC724 35CE0E00 */  ori        $t6, $t6, (0xC0E00 & 0xFFFF)
    /* 10B6D8 800FC728 244F0008 */  addiu      $t7, $v0, 0x8
    /* 10B6DC 800FC72C AC6F0000 */  sw         $t7, 0x0($v1)
    /* 10B6E0 800FC730 AC580004 */  sw         $t8, 0x4($v0)
    /* 10B6E4 800FC734 AC440000 */  sw         $a0, 0x0($v0)
    /* 10B6E8 800FC738 8C620000 */  lw         $v0, 0x0($v1)
    /* 10B6EC 800FC73C 3C180012 */  lui        $t8, (0x121400 >> 16)
    /* 10B6F0 800FC740 37181400 */  ori        $t8, $t8, (0x121400 & 0xFFFF)
    /* 10B6F4 800FC744 24590008 */  addiu      $t9, $v0, 0x8
    /* 10B6F8 800FC748 AC790000 */  sw         $t9, 0x0($v1)
    /* 10B6FC 800FC74C AC4E0004 */  sw         $t6, 0x4($v0)
    /* 10B700 800FC750 AC440000 */  sw         $a0, 0x0($v0)
    /* 10B704 800FC754 8C620000 */  lw         $v0, 0x0($v1)
    /* 10B708 800FC758 3C19000E */  lui        $t9, (0xE1000 >> 16)
    /* 10B70C 800FC75C 37391000 */  ori        $t9, $t9, (0xE1000 & 0xFFFF)
    /* 10B710 800FC760 244F0008 */  addiu      $t7, $v0, 0x8
    /* 10B714 800FC764 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 10B718 800FC768 AFA20004 */  sw         $v0, 0x4($sp)
    /* 10B71C 800FC76C AC590004 */  sw         $t9, 0x4($v0)
    /* 10B720 800FC770 AC440000 */  sw         $a0, 0x0($v0)
    /* 10B724 800FC774 8C620000 */  lw         $v0, 0x0($v1)
    /* 10B728 800FC778 3C0F0010 */  lui        $t7, (0x101200 >> 16)
    /* 10B72C 800FC77C 35EF1200 */  ori        $t7, $t7, (0x101200 & 0xFFFF)
    /* 10B730 800FC780 244E0008 */  addiu      $t6, $v0, 0x8
    /* 10B734 800FC784 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 10B738 800FC788 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 10B73C 800FC78C AC440000 */  sw         $a0, 0x0($v0)
    /* 10B740 800FC790 8C620000 */  lw         $v0, 0x0($v1)
    /* 10B744 800FC794 3C0F0014 */  lui        $t7, (0x141600 >> 16)
    /* 10B748 800FC798 35EF1600 */  ori        $t7, $t7, (0x141600 & 0xFFFF)
    /* 10B74C 800FC79C 24590008 */  addiu      $t9, $v0, 0x8
    /* 10B750 800FC7A0 AC790000 */  sw         $t9, 0x0($v1)
    /* 10B754 800FC7A4 AC580004 */  sw         $t8, 0x4($v0)
    /* 10B758 800FC7A8 AC440000 */  sw         $a0, 0x0($v0)
    /* 10B75C 800FC7AC 8C620000 */  lw         $v0, 0x0($v1)
    /* 10B760 800FC7B0 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* 10B764 800FC7B4 244E0008 */  addiu      $t6, $v0, 0x8
    /* 10B768 800FC7B8 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 10B76C 800FC7BC AC4F0004 */  sw         $t7, 0x4($v0)
    /* 10B770 800FC7C0 AC440000 */  sw         $a0, 0x0($v0)
    /* 10B774 800FC7C4 8C620000 */  lw         $v0, 0x0($v1)
    /* 10B778 800FC7C8 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 10B77C 800FC7CC 24590008 */  addiu      $t9, $v0, 0x8
    /* 10B780 800FC7D0 AC790000 */  sw         $t9, 0x0($v1)
    /* 10B784 800FC7D4 AC400004 */  sw         $zero, 0x4($v0)
    /* 10B788 800FC7D8 03E00008 */  jr         $ra
    /* 10B78C 800FC7DC AC580000 */   sw        $t8, 0x0($v0)
endlabel func_800FC568_10B518
