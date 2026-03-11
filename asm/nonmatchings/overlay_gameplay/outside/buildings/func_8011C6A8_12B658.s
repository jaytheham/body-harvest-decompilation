nonmatching func_8011C6A8_12B658, 0xC8

glabel func_8011C6A8_12B658
    /* 12B658 8011C6A8 308E00FF */  andi       $t6, $a0, 0xFF
    /* 12B65C 8011C6AC 000E7880 */  sll        $t7, $t6, 2
    /* 12B660 8011C6B0 01EE7821 */  addu       $t7, $t7, $t6
    /* 12B664 8011C6B4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 12B668 8011C6B8 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 12B66C 8011C6BC 000F7900 */  sll        $t7, $t7, 4
    /* 12B670 8011C6C0 01F81821 */  addu       $v1, $t7, $t8
    /* 12B674 8011C6C4 3C198004 */  lui        $t9, %hi(currentLevel)
    /* 12B678 8011C6C8 8062003D */  lb         $v0, 0x3D($v1)
    /* 12B67C 8011C6CC 8F397F90 */  lw         $t9, %lo(currentLevel)($t9)
    /* 12B680 8011C6D0 906C0024 */  lbu        $t4, 0x24($v1)
    /* 12B684 8011C6D4 00023100 */  sll        $a2, $v0, 4
    /* 12B688 8011C6D8 00194240 */  sll        $t0, $t9, 9
    /* 12B68C 8011C6DC 01064821 */  addu       $t1, $t0, $a2
    /* 12B690 8011C6E0 3C0B8014 */  lui        $t3, %hi(D_80146688)
    /* 12B694 8011C6E4 256B6688 */  addiu      $t3, $t3, %lo(D_80146688)
    /* 12B698 8011C6E8 252AFE00 */  addiu      $t2, $t1, -0x200
    /* 12B69C 8011C6EC 24010001 */  addiu      $at, $zero, 0x1
    /* 12B6A0 8011C6F0 AFA40000 */  sw         $a0, 0x0($sp)
    /* 12B6A4 8011C6F4 1181001C */  beq        $t4, $at, .L8011C768_12B718
    /* 12B6A8 8011C6F8 014B2821 */   addu      $a1, $t2, $t3
    /* 12B6AC 8011C6FC 2401FFF0 */  addiu      $at, $zero, -0x10
    /* 12B6B0 8011C700 10C1000D */  beq        $a2, $at, .L8011C738_12B6E8
    /* 12B6B4 8011C704 3C028016 */   lui       $v0, %hi(D_8015EA18)
    /* 12B6B8 8011C708 84AD000A */  lh         $t5, 0xA($a1)
    /* 12B6BC 8011C70C 25AEFFFF */  addiu      $t6, $t5, -0x1
    /* 12B6C0 8011C710 A4AE000A */  sh         $t6, 0xA($a1)
    /* 12B6C4 8011C714 8C6F0020 */  lw         $t7, 0x20($v1)
    /* 12B6C8 8011C718 000FC2C0 */  sll        $t8, $t7, 11
    /* 12B6CC 8011C71C 07010012 */  bgez       $t8, .L8011C768_12B718
    /* 12B6D0 8011C720 00000000 */   nop
    /* 12B6D4 8011C724 84A2000C */  lh         $v0, 0xC($a1)
    /* 12B6D8 8011C728 1040000F */  beqz       $v0, .L8011C768_12B718
    /* 12B6DC 8011C72C 2459FFFF */   addiu     $t9, $v0, -0x1
    /* 12B6E0 8011C730 03E00008 */  jr         $ra
    /* 12B6E4 8011C734 A4B9000C */   sh        $t9, 0xC($a1)
  .L8011C738_12B6E8:
    /* 12B6E8 8011C738 2442EA18 */  addiu      $v0, $v0, %lo(D_8015EA18)
    /* 12B6EC 8011C73C 8C480000 */  lw         $t0, 0x0($v0)
    /* 12B6F0 8011C740 8C6A0020 */  lw         $t2, 0x20($v1)
    /* 12B6F4 8011C744 2509FFFF */  addiu      $t1, $t0, -0x1
    /* 12B6F8 8011C748 000A5AC0 */  sll        $t3, $t2, 11
    /* 12B6FC 8011C74C 05610006 */  bgez       $t3, .L8011C768_12B718
    /* 12B700 8011C750 AC490000 */   sw        $t1, 0x0($v0)
    /* 12B704 8011C754 3C028016 */  lui        $v0, %hi(D_8015EA1C)
    /* 12B708 8011C758 2442EA1C */  addiu      $v0, $v0, %lo(D_8015EA1C)
    /* 12B70C 8011C75C 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 12B710 8011C760 258DFFFF */  addiu      $t5, $t4, -0x1
    /* 12B714 8011C764 AC4D0000 */  sw         $t5, 0x0($v0)
  .L8011C768_12B718:
    /* 12B718 8011C768 03E00008 */  jr         $ra
    /* 12B71C 8011C76C 00000000 */   nop
endlabel func_8011C6A8_12B658
