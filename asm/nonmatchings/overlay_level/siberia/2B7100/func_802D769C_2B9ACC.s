nonmatching func_802D769C_2B9ACC, 0x120

glabel func_802D769C_2B9ACC
    /* 2B9ACC 802D769C 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 2B9AD0 802D76A0 AFB20020 */  sw         $s2, 0x20($sp)
    /* 2B9AD4 802D76A4 3C12802E */  lui        $s2, %hi(D_802E3100)
    /* 2B9AD8 802D76A8 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 2B9ADC 802D76AC AFB70034 */  sw         $s7, 0x34($sp)
    /* 2B9AE0 802D76B0 AFB60030 */  sw         $s6, 0x30($sp)
    /* 2B9AE4 802D76B4 AFB40028 */  sw         $s4, 0x28($sp)
    /* 2B9AE8 802D76B8 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 2B9AEC 802D76BC 26523100 */  addiu      $s2, $s2, %lo(D_802E3100)
    /* 2B9AF0 802D76C0 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 2B9AF4 802D76C4 AFB30024 */  sw         $s3, 0x24($sp)
    /* 2B9AF8 802D76C8 AFB00018 */  sw         $s0, 0x18($sp)
    /* 2B9AFC 802D76CC 3C118005 */  lui        $s1, %hi(buildingInstances)
    /* 2B9B00 802D76D0 3C148005 */  lui        $s4, %hi(alienInstances)
    /* 2B9B04 802D76D4 3C16802E */  lui        $s6, %hi(D_802E0EBC)
    /* 2B9B08 802D76D8 3C17F7FF */  lui        $s7, (0xF7FFFFFF >> 16)
    /* 2B9B0C 802D76DC 3C1E802D */  lui        $fp, %hi(func_802D7680_2B9AB0)
    /* 2B9B10 802D76E0 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 2B9B14 802D76E4 AE400000 */  sw         $zero, 0x0($s2)
    /* 2B9B18 802D76E8 27DE7680 */  addiu      $fp, $fp, %lo(func_802D7680_2B9AB0)
    /* 2B9B1C 802D76EC 36F7FFFF */  ori        $s7, $s7, (0xF7FFFFFF & 0xFFFF)
    /* 2B9B20 802D76F0 26D60EBC */  addiu      $s6, $s6, %lo(D_802E0EBC)
    /* 2B9B24 802D76F4 26948198 */  addiu      $s4, $s4, %lo(alienInstances)
    /* 2B9B28 802D76F8 26310AD8 */  addiu      $s1, $s1, %lo(buildingInstances)
    /* 2B9B2C 802D76FC 00008025 */  or         $s0, $zero, $zero
    /* 2B9B30 802D7700 241300FF */  addiu      $s3, $zero, 0xFF
    /* 2B9B34 802D7704 24150050 */  addiu      $s5, $zero, 0x50
  .L802D7708_2B9B38:
    /* 2B9B38 802D7708 0C01E55B */  jal        func_8007956C_8851C
    /* 2B9B3C 802D770C 24040009 */   addiu     $a0, $zero, 0x9
    /* 2B9B40 802D7710 1053001A */  beq        $v0, $s3, .L802D777C_2B9BAC
    /* 2B9B44 802D7714 00402825 */   or        $a1, $v0, $zero
    /* 2B9B48 802D7718 00550019 */  multu      $v0, $s5
    /* 2B9B4C 802D771C 8E4E0000 */  lw         $t6, 0x0($s2)
    /* 2B9B50 802D7720 0010C8C0 */  sll        $t9, $s0, 3
    /* 2B9B54 802D7724 02D91821 */  addu       $v1, $s6, $t9
    /* 2B9B58 802D7728 8C680000 */  lw         $t0, 0x0($v1)
    /* 2B9B5C 802D772C 8C690004 */  lw         $t1, 0x4($v1)
    /* 2B9B60 802D7730 862C0E10 */  lh         $t4, 0xE10($s1)
    /* 2B9B64 802D7734 862D0E14 */  lh         $t5, 0xE14($s1)
    /* 2B9B68 802D7738 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 2B9B6C 802D773C 240E0003 */  addiu      $t6, $zero, 0x3
    /* 2B9B70 802D7740 0000C012 */  mflo       $t8
    /* 2B9B74 802D7744 02981021 */  addu       $v0, $s4, $t8
    /* 2B9B78 802D7748 8C4A0020 */  lw         $t2, 0x20($v0)
    /* 2B9B7C 802D774C AE4F0000 */  sw         $t7, 0x0($s2)
    /* 2B9B80 802D7750 AFBE0054 */  sw         $fp, 0x54($sp)
    /* 2B9B84 802D7754 01575824 */  and        $t3, $t2, $s7
    /* 2B9B88 802D7758 AC4B0020 */  sw         $t3, 0x20($v0)
    /* 2B9B8C 802D775C A3AE0048 */  sb         $t6, 0x48($sp)
    /* 2B9B90 802D7760 A3A50050 */  sb         $a1, 0x50($sp)
    /* 2B9B94 802D7764 27A40048 */  addiu      $a0, $sp, 0x48
    /* 2B9B98 802D7768 A4480000 */  sh         $t0, 0x0($v0)
    /* 2B9B9C 802D776C A4490004 */  sh         $t1, 0x4($v0)
    /* 2B9BA0 802D7770 A44C0014 */  sh         $t4, 0x14($v0)
    /* 2B9BA4 802D7774 0C02B915 */  jal        func_800AE454_BD404
    /* 2B9BA8 802D7778 A44D0018 */   sh        $t5, 0x18($v0)
  .L802D777C_2B9BAC:
    /* 2B9BAC 802D777C 26100001 */  addiu      $s0, $s0, 0x1
    /* 2B9BB0 802D7780 24010003 */  addiu      $at, $zero, 0x3
    /* 2B9BB4 802D7784 1601FFE0 */  bne        $s0, $at, .L802D7708_2B9B38
    /* 2B9BB8 802D7788 00000000 */   nop
    /* 2B9BBC 802D778C 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 2B9BC0 802D7790 8FB00018 */  lw         $s0, 0x18($sp)
    /* 2B9BC4 802D7794 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 2B9BC8 802D7798 8FB20020 */  lw         $s2, 0x20($sp)
    /* 2B9BCC 802D779C 8FB30024 */  lw         $s3, 0x24($sp)
    /* 2B9BD0 802D77A0 8FB40028 */  lw         $s4, 0x28($sp)
    /* 2B9BD4 802D77A4 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 2B9BD8 802D77A8 8FB60030 */  lw         $s6, 0x30($sp)
    /* 2B9BDC 802D77AC 8FB70034 */  lw         $s7, 0x34($sp)
    /* 2B9BE0 802D77B0 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 2B9BE4 802D77B4 03E00008 */  jr         $ra
    /* 2B9BE8 802D77B8 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_802D769C_2B9ACC
