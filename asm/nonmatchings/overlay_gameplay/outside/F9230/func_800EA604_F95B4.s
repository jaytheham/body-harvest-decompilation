nonmatching func_800EA604_F95B4, 0x1D8

glabel func_800EA604_F95B4
    /* F95B4 800EA604 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* F95B8 800EA608 AFBF0014 */  sw         $ra, 0x14($sp)
    /* F95BC 800EA60C 848E0000 */  lh         $t6, 0x0($a0)
    /* F95C0 800EA610 84980002 */  lh         $t8, 0x2($a0)
    /* F95C4 800EA614 C4A40000 */  lwc1       $f4, 0x0($a1)
    /* F95C8 800EA618 05C10003 */  bgez       $t6, .L800EA628_F95D8
    /* F95CC 800EA61C 000E7883 */   sra       $t7, $t6, 2
    /* F95D0 800EA620 25C10003 */  addiu      $at, $t6, 0x3
    /* F95D4 800EA624 00017883 */  sra        $t7, $at, 2
  .L800EA628_F95D8:
    /* F95D8 800EA628 448F3000 */  mtc1       $t7, $f6
    /* F95DC 800EA62C 84890004 */  lh         $t1, 0x4($a0)
    /* F95E0 800EA630 C4AA0004 */  lwc1       $f10, 0x4($a1)
    /* F95E4 800EA634 46803220 */  cvt.s.w    $f8, $f6
    /* F95E8 800EA638 46082001 */  sub.s      $f0, $f4, $f8
    /* F95EC 800EA63C 07010003 */  bgez       $t8, .L800EA64C_F95FC
    /* F95F0 800EA640 0018C883 */   sra       $t9, $t8, 2
    /* F95F4 800EA644 27010003 */  addiu      $at, $t8, 0x3
    /* F95F8 800EA648 0001C883 */  sra        $t9, $at, 2
  .L800EA64C_F95FC:
    /* F95FC 800EA64C 2728000E */  addiu      $t0, $t9, 0xE
    /* F9600 800EA650 44883000 */  mtc1       $t0, $f6
    /* F9604 800EA654 C4A80008 */  lwc1       $f8, 0x8($a1)
    /* F9608 800EA658 46803120 */  cvt.s.w    $f4, $f6
    /* F960C 800EA65C 46045401 */  sub.s      $f16, $f10, $f4
    /* F9610 800EA660 05210003 */  bgez       $t1, .L800EA670_F9620
    /* F9614 800EA664 00095083 */   sra       $t2, $t1, 2
    /* F9618 800EA668 25210003 */  addiu      $at, $t1, 0x3
    /* F961C 800EA66C 00015083 */  sra        $t2, $at, 2
  .L800EA670_F9620:
    /* F9620 800EA670 448A3000 */  mtc1       $t2, $f6
    /* F9624 800EA674 46000102 */  mul.s      $f4, $f0, $f0
    /* F9628 800EA678 E7B0001C */  swc1       $f16, 0x1C($sp)
    /* F962C 800EA67C 468032A0 */  cvt.s.w    $f10, $f6
    /* F9630 800EA680 460A4081 */  sub.s      $f2, $f8, $f10
    /* F9634 800EA684 46021182 */  mul.s      $f6, $f2, $f2
    /* F9638 800EA688 0C007650 */  jal        sqrtf
    /* F963C 800EA68C 46062300 */   add.s     $f12, $f4, $f6
    /* F9640 800EA690 C7B0001C */  lwc1       $f16, 0x1C($sp)
    /* F9644 800EA694 44809000 */  mtc1       $zero, $f18
    /* F9648 800EA698 46000306 */  mov.s      $f12, $f0
    /* F964C 800EA69C 4610903E */  c.le.s     $f18, $f16
    /* F9650 800EA6A0 00000000 */  nop
    /* F9654 800EA6A4 45020004 */  bc1fl      .L800EA6B8_F9668
    /* F9658 800EA6A8 46008387 */   neg.s     $f14, $f16
    /* F965C 800EA6AC 10000002 */  b          .L800EA6B8_F9668
    /* F9660 800EA6B0 46008386 */   mov.s     $f14, $f16
    /* F9664 800EA6B4 46008387 */  neg.s      $f14, $f16
  .L800EA6B8_F9668:
    /* F9668 800EA6B8 0C000E09 */  jal        func_80003824_4424
    /* F966C 800EA6BC E7B0001C */   swc1      $f16, 0x1C($sp)
    /* F9670 800EA6C0 C7B0001C */  lwc1       $f16, 0x1C($sp)
    /* F9674 800EA6C4 44809000 */  mtc1       $zero, $f18
    /* F9678 800EA6C8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* F967C 800EA6CC 304BFFFF */  andi       $t3, $v0, 0xFFFF
    /* F9680 800EA6D0 4612803C */  c.lt.s     $f16, $f18
    /* F9684 800EA6D4 304CFFFF */  andi       $t4, $v0, 0xFFFF
    /* F9688 800EA6D8 27BD0028 */  addiu      $sp, $sp, 0x28
    /* F968C 800EA6DC 4502001B */  bc1fl      .L800EA74C_F96FC
    /* F9690 800EA6E0 448C3000 */   mtc1      $t4, $f6
    /* F9694 800EA6E4 448B4000 */  mtc1       $t3, $f8
    /* F9698 800EA6E8 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
    /* F969C 800EA6EC 44810800 */  mtc1       $at, $f1
    /* F96A0 800EA6F0 468042A0 */  cvt.s.w    $f10, $f8
    /* F96A4 800EA6F4 3C018014 */  lui        $at, %hi(D_801443D0)
    /* F96A8 800EA6F8 D42643D0 */  ldc1       $f6, %lo(D_801443D0)($at)
    /* F96AC 800EA6FC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* F96B0 800EA700 44815800 */  mtc1       $at, $f11
    /* F96B4 800EA704 3C014044 */  lui        $at, (0x40440000 >> 16)
    /* F96B8 800EA708 46005121 */  cvt.d.s    $f4, $f10
    /* F96BC 800EA70C 44805000 */  mtc1       $zero, $f10
    /* F96C0 800EA710 46262202 */  mul.d      $f8, $f4, $f6
    /* F96C4 800EA714 44800000 */  mtc1       $zero, $f0
    /* F96C8 800EA718 462A4103 */  div.d      $f4, $f8, $f10
    /* F96CC 800EA71C 44805000 */  mtc1       $zero, $f10
    /* F96D0 800EA720 44815800 */  mtc1       $at, $f11
    /* F96D4 800EA724 462021A0 */  cvt.s.d    $f6, $f4
    /* F96D8 800EA728 46003221 */  cvt.d.s    $f8, $f6
    /* F96DC 800EA72C 462A4103 */  div.d      $f4, $f8, $f10
    /* F96E0 800EA730 462021A0 */  cvt.s.d    $f6, $f4
    /* F96E4 800EA734 46003221 */  cvt.d.s    $f8, $f6
    /* F96E8 800EA738 46204282 */  mul.d      $f10, $f8, $f0
    /* F96EC 800EA73C 46205100 */  add.d      $f4, $f10, $f0
    /* F96F0 800EA740 10000019 */  b          .L800EA7A8_F9758
    /* F96F4 800EA744 462020A0 */   cvt.s.d   $f2, $f4
    /* F96F8 800EA748 448C3000 */  mtc1       $t4, $f6
  .L800EA74C_F96FC:
    /* F96FC 800EA74C 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
    /* F9700 800EA750 44810800 */  mtc1       $at, $f1
    /* F9704 800EA754 46803220 */  cvt.s.w    $f8, $f6
    /* F9708 800EA758 3C018014 */  lui        $at, %hi(D_801443D8)
    /* F970C 800EA75C D42443D8 */  ldc1       $f4, %lo(D_801443D8)($at)
    /* F9710 800EA760 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* F9714 800EA764 44814800 */  mtc1       $at, $f9
    /* F9718 800EA768 3C014044 */  lui        $at, (0x40440000 >> 16)
    /* F971C 800EA76C 460042A1 */  cvt.d.s    $f10, $f8
    /* F9720 800EA770 44804000 */  mtc1       $zero, $f8
    /* F9724 800EA774 46245182 */  mul.d      $f6, $f10, $f4
    /* F9728 800EA778 44800000 */  mtc1       $zero, $f0
    /* F972C 800EA77C 46283283 */  div.d      $f10, $f6, $f8
    /* F9730 800EA780 44804000 */  mtc1       $zero, $f8
    /* F9734 800EA784 44814800 */  mtc1       $at, $f9
    /* F9738 800EA788 46205120 */  cvt.s.d    $f4, $f10
    /* F973C 800EA78C 460021A1 */  cvt.d.s    $f6, $f4
    /* F9740 800EA790 46283283 */  div.d      $f10, $f6, $f8
    /* F9744 800EA794 46205120 */  cvt.s.d    $f4, $f10
    /* F9748 800EA798 460021A1 */  cvt.d.s    $f6, $f4
    /* F974C 800EA79C 46203202 */  mul.d      $f8, $f6, $f0
    /* F9750 800EA7A0 46280281 */  sub.d      $f10, $f0, $f8
    /* F9754 800EA7A4 462050A0 */  cvt.s.d    $f2, $f10
  .L800EA7A8_F9758:
    /* F9758 800EA7A8 4612103C */  c.lt.s     $f2, $f18
    /* F975C 800EA7AC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* F9760 800EA7B0 44810000 */  mtc1       $at, $f0
    /* F9764 800EA7B4 45020003 */  bc1fl      .L800EA7C4_F9774
    /* F9768 800EA7B8 4602003C */   c.lt.s    $f0, $f2
    /* F976C 800EA7BC 46009086 */  mov.s      $f2, $f18
    /* F9770 800EA7C0 4602003C */  c.lt.s     $f0, $f2
  .L800EA7C4_F9774:
    /* F9774 800EA7C4 00000000 */  nop
    /* F9778 800EA7C8 45000002 */  bc1f       .L800EA7D4_F9784
    /* F977C 800EA7CC 00000000 */   nop
    /* F9780 800EA7D0 46000086 */  mov.s      $f2, $f0
  .L800EA7D4_F9784:
    /* F9784 800EA7D4 03E00008 */  jr         $ra
    /* F9788 800EA7D8 46001006 */   mov.s     $f0, $f2
endlabel func_800EA604_F95B4
