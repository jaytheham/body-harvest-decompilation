nonmatching func_800AD698_BC648, 0x17C

glabel func_800AD698_BC648
    /* BC648 800AD698 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* BC64C 800AD69C AFBF001C */  sw         $ra, 0x1C($sp)
    /* BC650 800AD6A0 AFB00018 */  sw         $s0, 0x18($sp)
    /* BC654 800AD6A4 AFA40040 */  sw         $a0, 0x40($sp)
    /* BC658 800AD6A8 AFA50044 */  sw         $a1, 0x44($sp)
    /* BC65C 800AD6AC AFA60048 */  sw         $a2, 0x48($sp)
    /* BC660 800AD6B0 908F001A */  lbu        $t7, 0x1A($a0)
    /* BC664 800AD6B4 3C198025 */  lui        $t9, %hi(vehicleSpecs)
    /* BC668 800AD6B8 27397A00 */  addiu      $t9, $t9, %lo(vehicleSpecs)
    /* BC66C 800AD6BC 000FC0C0 */  sll        $t8, $t7, 3
    /* BC670 800AD6C0 030FC023 */  subu       $t8, $t8, $t7
    /* BC674 800AD6C4 0018C100 */  sll        $t8, $t8, 4
    /* BC678 800AD6C8 03191021 */  addu       $v0, $t8, $t9
    /* BC67C 800AD6CC 84430036 */  lh         $v1, 0x36($v0)
    /* BC680 800AD6D0 84470034 */  lh         $a3, 0x34($v0)
    /* BC684 800AD6D4 84880006 */  lh         $t0, 0x6($a0)
    /* BC688 800AD6D8 00035843 */  sra        $t3, $v1, 1
    /* BC68C 800AD6DC 00077843 */  sra        $t7, $a3, 1
    /* BC690 800AD6E0 250C4000 */  addiu      $t4, $t0, 0x4000
    /* BC694 800AD6E4 25790024 */  addiu      $t9, $t3, 0x24
    /* BC698 800AD6E8 25EA0024 */  addiu      $t2, $t7, 0x24
    /* BC69C 800AD6EC 3190FFFF */  andi       $s0, $t4, 0xFFFF
    /* BC6A0 800AD6F0 3204FFFF */  andi       $a0, $s0, 0xFFFF
    /* BC6A4 800AD6F4 A7AA003C */  sh         $t2, 0x3C($sp)
    /* BC6A8 800AD6F8 0C007654 */  jal        coss
    /* BC6AC 800AD6FC A7B9003E */   sh        $t9, 0x3E($sp)
    /* BC6B0 800AD700 A7A20038 */  sh         $v0, 0x38($sp)
    /* BC6B4 800AD704 0C007660 */  jal        sins
    /* BC6B8 800AD708 3204FFFF */   andi      $a0, $s0, 0xFFFF
    /* BC6BC 800AD70C 87B80038 */  lh         $t8, 0x38($sp)
    /* BC6C0 800AD710 87A3003E */  lh         $v1, 0x3E($sp)
    /* BC6C4 800AD714 87A7003C */  lh         $a3, 0x3C($sp)
    /* BC6C8 800AD718 44988000 */  mtc1       $t8, $f16
    /* BC6CC 800AD71C 44832000 */  mtc1       $v1, $f4
    /* BC6D0 800AD720 44873000 */  mtc1       $a3, $f6
    /* BC6D4 800AD724 468084A0 */  cvt.s.w    $f18, $f16
    /* BC6D8 800AD728 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* BC6DC 800AD72C 44816800 */  mtc1       $at, $f13
    /* BC6E0 800AD730 44806000 */  mtc1       $zero, $f12
    /* BC6E4 800AD734 8FAD0040 */  lw         $t5, 0x40($sp)
    /* BC6E8 800AD738 46802021 */  cvt.d.w    $f0, $f4
    /* BC6EC 800AD73C 8FA90044 */  lw         $t1, 0x44($sp)
    /* BC6F0 800AD740 85AF0000 */  lh         $t7, 0x0($t5)
    /* BC6F4 800AD744 3204FFFF */  andi       $a0, $s0, 0xFFFF
    /* BC6F8 800AD748 46009121 */  cvt.d.s    $f4, $f18
    /* BC6FC 800AD74C 468030A1 */  cvt.d.w    $f2, $f6
    /* BC700 800AD750 448F4000 */  mtc1       $t7, $f8
    /* BC704 800AD754 44829000 */  mtc1       $v0, $f18
    /* BC708 800AD758 462C2183 */  div.d      $f6, $f4, $f12
    /* BC70C 800AD75C 468042A1 */  cvt.d.w    $f10, $f8
    /* BC710 800AD760 46809120 */  cvt.s.w    $f4, $f18
    /* BC714 800AD764 46203202 */  mul.d      $f8, $f6, $f0
    /* BC718 800AD768 460021A1 */  cvt.d.s    $f6, $f4
    /* BC71C 800AD76C 46285400 */  add.d      $f16, $f10, $f8
    /* BC720 800AD770 462C3283 */  div.d      $f10, $f6, $f12
    /* BC724 800AD774 46225202 */  mul.d      $f8, $f10, $f2
    /* BC728 800AD778 46288481 */  sub.d      $f18, $f16, $f8
    /* BC72C 800AD77C 4620910D */  trunc.w.d  $f4, $f18
    /* BC730 800AD780 E5240000 */  swc1       $f4, 0x0($t1)
    /* BC734 800AD784 F7A20020 */  sdc1       $f2, 0x20($sp)
    /* BC738 800AD788 0C007660 */  jal        sins
    /* BC73C 800AD78C F7A00028 */   sdc1      $f0, 0x28($sp)
    /* BC740 800AD790 A7A20038 */  sh         $v0, 0x38($sp)
    /* BC744 800AD794 0C007654 */  jal        coss
    /* BC748 800AD798 3204FFFF */   andi      $a0, $s0, 0xFFFF
    /* BC74C 800AD79C 87AB0038 */  lh         $t3, 0x38($sp)
    /* BC750 800AD7A0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* BC754 800AD7A4 44816800 */  mtc1       $at, $f13
    /* BC758 800AD7A8 448B8000 */  mtc1       $t3, $f16
    /* BC75C 800AD7AC 44806000 */  mtc1       $zero, $f12
    /* BC760 800AD7B0 8FAA0040 */  lw         $t2, 0x40($sp)
    /* BC764 800AD7B4 46808220 */  cvt.s.w    $f8, $f16
    /* BC768 800AD7B8 D7A00028 */  ldc1       $f0, 0x28($sp)
    /* BC76C 800AD7BC 854E0004 */  lh         $t6, 0x4($t2)
    /* BC770 800AD7C0 D7A20020 */  ldc1       $f2, 0x20($sp)
    /* BC774 800AD7C4 8FAD0048 */  lw         $t5, 0x48($sp)
    /* BC778 800AD7C8 448E3000 */  mtc1       $t6, $f6
    /* BC77C 800AD7CC 460044A1 */  cvt.d.s    $f18, $f8
    /* BC780 800AD7D0 44824000 */  mtc1       $v0, $f8
    /* BC784 800AD7D4 462C9103 */  div.d      $f4, $f18, $f12
    /* BC788 800AD7D8 468032A1 */  cvt.d.w    $f10, $f6
    /* BC78C 800AD7DC 468044A0 */  cvt.s.w    $f18, $f8
    /* BC790 800AD7E0 46202182 */  mul.d      $f6, $f4, $f0
    /* BC794 800AD7E4 46009121 */  cvt.d.s    $f4, $f18
    /* BC798 800AD7E8 46265400 */  add.d      $f16, $f10, $f6
    /* BC79C 800AD7EC 462C2283 */  div.d      $f10, $f4, $f12
    /* BC7A0 800AD7F0 46225182 */  mul.d      $f6, $f10, $f2
    /* BC7A4 800AD7F4 46303200 */  add.d      $f8, $f6, $f16
    /* BC7A8 800AD7F8 4620448D */  trunc.w.d  $f18, $f8
    /* BC7AC 800AD7FC E5B20000 */  swc1       $f18, 0x0($t5)
    /* BC7B0 800AD800 8FBF001C */  lw         $ra, 0x1C($sp)
    /* BC7B4 800AD804 8FB00018 */  lw         $s0, 0x18($sp)
    /* BC7B8 800AD808 27BD0040 */  addiu      $sp, $sp, 0x40
    /* BC7BC 800AD80C 03E00008 */  jr         $ra
    /* BC7C0 800AD810 00000000 */   nop
endlabel func_800AD698_BC648
