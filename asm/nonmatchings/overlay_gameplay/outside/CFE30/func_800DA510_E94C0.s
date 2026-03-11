nonmatching func_800DA510_E94C0, 0x1E0

glabel func_800DA510_E94C0
    /* E94C0 800DA510 00047400 */  sll        $t6, $a0, 16
    /* E94C4 800DA514 000E7C03 */  sra        $t7, $t6, 16
    /* E94C8 800DA518 2406001C */  addiu      $a2, $zero, 0x1C
    /* E94CC 800DA51C 01E60019 */  multu      $t7, $a2
    /* E94D0 800DA520 0005C400 */  sll        $t8, $a1, 16
    /* E94D4 800DA524 0018CC03 */  sra        $t9, $t8, 16
    /* E94D8 800DA528 3C038015 */  lui        $v1, %hi(D_80154318)
    /* E94DC 800DA52C 24634318 */  addiu      $v1, $v1, %lo(D_80154318)
    /* E94E0 800DA530 44801000 */  mtc1       $zero, $f2
    /* E94E4 800DA534 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* E94E8 800DA538 AFA40050 */  sw         $a0, 0x50($sp)
    /* E94EC 800DA53C AFA50054 */  sw         $a1, 0x54($sp)
    /* E94F0 800DA540 27A40038 */  addiu      $a0, $sp, 0x38
    /* E94F4 800DA544 00004812 */  mflo       $t1
    /* E94F8 800DA548 00691021 */  addu       $v0, $v1, $t1
    /* E94FC 800DA54C 844B000E */  lh         $t3, 0xE($v0)
    /* E9500 800DA550 03260019 */  multu      $t9, $a2
    /* E9504 800DA554 844E0010 */  lh         $t6, 0x10($v0)
    /* E9508 800DA558 84590012 */  lh         $t9, 0x12($v0)
    /* E950C 800DA55C AFBF0024 */  sw         $ra, 0x24($sp)
    /* E9510 800DA560 00802825 */  or         $a1, $a0, $zero
    /* E9514 800DA564 00005012 */  mflo       $t2
    /* E9518 800DA568 006A4021 */  addu       $t0, $v1, $t2
    /* E951C 800DA56C 850C0008 */  lh         $t4, 0x8($t0)
    /* E9520 800DA570 850F000A */  lh         $t7, 0xA($t0)
    /* E9524 800DA574 8509000C */  lh         $t1, 0xC($t0)
    /* E9528 800DA578 016C6823 */  subu       $t5, $t3, $t4
    /* E952C 800DA57C 448D2000 */  mtc1       $t5, $f4
    /* E9530 800DA580 01CFC023 */  subu       $t8, $t6, $t7
    /* E9534 800DA584 03295023 */  subu       $t2, $t9, $t1
    /* E9538 800DA588 46802020 */  cvt.s.w    $f0, $f4
    /* E953C 800DA58C 44983000 */  mtc1       $t8, $f6
    /* E9540 800DA590 448A5000 */  mtc1       $t2, $f10
    /* E9544 800DA594 46803220 */  cvt.s.w    $f8, $f6
    /* E9548 800DA598 E7A00038 */  swc1       $f0, 0x38($sp)
    /* E954C 800DA59C 46805420 */  cvt.s.w    $f16, $f10
    /* E9550 800DA5A0 E7A8003C */  swc1       $f8, 0x3C($sp)
    /* E9554 800DA5A4 46020032 */  c.eq.s     $f0, $f2
    /* E9558 800DA5A8 E7B00040 */  swc1       $f16, 0x40($sp)
    /* E955C 800DA5AC 4502000A */  bc1fl      .L800DA5D8_E9588
    /* E9560 800DA5B0 AFA20030 */   sw        $v0, 0x30($sp)
    /* E9564 800DA5B4 46024032 */  c.eq.s     $f8, $f2
    /* E9568 800DA5B8 00000000 */  nop
    /* E956C 800DA5BC 45020006 */  bc1fl      .L800DA5D8_E9588
    /* E9570 800DA5C0 AFA20030 */   sw        $v0, 0x30($sp)
    /* E9574 800DA5C4 46028032 */  c.eq.s     $f16, $f2
    /* E9578 800DA5C8 00000000 */  nop
    /* E957C 800DA5CC 45030045 */  bc1tl      .L800DA6E4_E9694
    /* E9580 800DA5D0 8FBF0024 */   lw        $ra, 0x24($sp)
    /* E9584 800DA5D4 AFA20030 */  sw         $v0, 0x30($sp)
  .L800DA5D8_E9588:
    /* E9588 800DA5D8 0C030409 */  jal        func_800C1024_CFFD4
    /* E958C 800DA5DC AFA80028 */   sw        $t0, 0x28($sp)
    /* E9590 800DA5E0 8FA20030 */  lw         $v0, 0x30($sp)
    /* E9594 800DA5E4 C7A60038 */  lwc1       $f6, 0x38($sp)
    /* E9598 800DA5E8 3C014079 */  lui        $at, (0x40790000 >> 16)
    /* E959C 800DA5EC 24430008 */  addiu      $v1, $v0, 0x8
    /* E95A0 800DA5F0 44810800 */  mtc1       $at, $f1
    /* E95A4 800DA5F4 44800000 */  mtc1       $zero, $f0
    /* E95A8 800DA5F8 84640006 */  lh         $a0, 0x6($v1)
    /* E95AC 800DA5FC 460032A1 */  cvt.d.s    $f10, $f6
    /* E95B0 800DA600 84650008 */  lh         $a1, 0x8($v1)
    /* E95B4 800DA604 462A0202 */  mul.d      $f8, $f0, $f10
    /* E95B8 800DA608 44849000 */  mtc1       $a0, $f18
    /* E95BC 800DA60C 44853000 */  mtc1       $a1, $f6
    /* E95C0 800DA610 8466000A */  lh         $a2, 0xA($v1)
    /* E95C4 800DA614 24090001 */  addiu      $t1, $zero, 0x1
    /* E95C8 800DA618 AFA90018 */  sw         $t1, 0x18($sp)
    /* E95CC 800DA61C AFA3002C */  sw         $v1, 0x2C($sp)
    /* E95D0 800DA620 46809121 */  cvt.d.w    $f4, $f18
    /* E95D4 800DA624 468032A1 */  cvt.d.w    $f10, $f6
    /* E95D8 800DA628 46282400 */  add.d      $f16, $f4, $f8
    /* E95DC 800DA62C C7A4003C */  lwc1       $f4, 0x3C($sp)
    /* E95E0 800DA630 46002221 */  cvt.d.s    $f8, $f4
    /* E95E4 800DA634 4620848D */  trunc.w.d  $f18, $f16
    /* E95E8 800DA638 46280402 */  mul.d      $f16, $f0, $f8
    /* E95EC 800DA63C 44862000 */  mtc1       $a2, $f4
    /* E95F0 800DA640 44079000 */  mfc1       $a3, $f18
    /* E95F4 800DA644 00000000 */  nop
    /* E95F8 800DA648 00076400 */  sll        $t4, $a3, 16
    /* E95FC 800DA64C 46802221 */  cvt.d.w    $f8, $f4
    /* E9600 800DA650 000C3C03 */  sra        $a3, $t4, 16
    /* E9604 800DA654 46305480 */  add.d      $f18, $f10, $f16
    /* E9608 800DA658 C7AA0040 */  lwc1       $f10, 0x40($sp)
    /* E960C 800DA65C 46005421 */  cvt.d.s    $f16, $f10
    /* E9610 800DA660 4620918D */  trunc.w.d  $f6, $f18
    /* E9614 800DA664 46300482 */  mul.d      $f18, $f0, $f16
    /* E9618 800DA668 440F3000 */  mfc1       $t7, $f6
    /* E961C 800DA66C 00000000 */  nop
    /* E9620 800DA670 AFAF0010 */  sw         $t7, 0x10($sp)
    /* E9624 800DA674 46324180 */  add.d      $f6, $f8, $f18
    /* E9628 800DA678 4620310D */  trunc.w.d  $f4, $f6
    /* E962C 800DA67C 44192000 */  mfc1       $t9, $f4
    /* E9630 800DA680 0C0345AF */  jal        func_800D16BC_E066C
    /* E9634 800DA684 AFB90014 */   sw        $t9, 0x14($sp)
    /* E9638 800DA688 00025C00 */  sll        $t3, $v0, 16
    /* E963C 800DA68C 00023400 */  sll        $a2, $v0, 16
    /* E9640 800DA690 000B6403 */  sra        $t4, $t3, 16
    /* E9644 800DA694 240100FB */  addiu      $at, $zero, 0xFB
    /* E9648 800DA698 00065403 */  sra        $t2, $a2, 16
    /* E964C 800DA69C 8FA3002C */  lw         $v1, 0x2C($sp)
    /* E9650 800DA6A0 11810008 */  beq        $t4, $at, .L800DA6C4_E9674
    /* E9654 800DA6A4 8FA80028 */   lw        $t0, 0x28($sp)
    /* E9658 800DA6A8 9105000F */  lbu        $a1, 0xF($t0)
    /* E965C 800DA6AC AFA80028 */  sw         $t0, 0x28($sp)
    /* E9660 800DA6B0 AFA3002C */  sw         $v1, 0x2C($sp)
    /* E9664 800DA6B4 0C034677 */  jal        func_800D19DC_E098C
    /* E9668 800DA6B8 314400FF */   andi      $a0, $t2, 0xFF
    /* E966C 800DA6BC 8FA3002C */  lw         $v1, 0x2C($sp)
    /* E9670 800DA6C0 8FA80028 */  lw         $t0, 0x28($sp)
  .L800DA6C4_E9674:
    /* E9674 800DA6C4 846D0006 */  lh         $t5, 0x6($v1)
    /* E9678 800DA6C8 25020008 */  addiu      $v0, $t0, 0x8
    /* E967C 800DA6CC A44D0000 */  sh         $t5, 0x0($v0)
    /* E9680 800DA6D0 846E0008 */  lh         $t6, 0x8($v1)
    /* E9684 800DA6D4 A44E0002 */  sh         $t6, 0x2($v0)
    /* E9688 800DA6D8 846F000A */  lh         $t7, 0xA($v1)
    /* E968C 800DA6DC A44F0004 */  sh         $t7, 0x4($v0)
    /* E9690 800DA6E0 8FBF0024 */  lw         $ra, 0x24($sp)
  .L800DA6E4_E9694:
    /* E9694 800DA6E4 27BD0050 */  addiu      $sp, $sp, 0x50
    /* E9698 800DA6E8 03E00008 */  jr         $ra
    /* E969C 800DA6EC 00000000 */   nop
endlabel func_800DA510_E94C0
