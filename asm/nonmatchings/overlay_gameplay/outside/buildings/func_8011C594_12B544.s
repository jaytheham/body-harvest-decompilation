nonmatching func_8011C594_12B544, 0xEC

glabel func_8011C594_12B544
    /* 12B544 8011C594 3C028004 */  lui        $v0, %hi(currentLevel)
    /* 12B548 8011C598 8C427F90 */  lw         $v0, %lo(currentLevel)($v0)
    /* 12B54C 8011C59C 3C058014 */  lui        $a1, %hi(D_8014667F)
    /* 12B550 8011C5A0 27BDFFF8 */  addiu      $sp, $sp, -0x8
    /* 12B554 8011C5A4 00A22821 */  addu       $a1, $a1, $v0
    /* 12B558 8011C5A8 80A5667F */  lb         $a1, %lo(D_8014667F)($a1)
    /* 12B55C 8011C5AC AFB00004 */  sw         $s0, 0x4($sp)
    /* 12B560 8011C5B0 309000FF */  andi       $s0, $a0, 0xFF
    /* 12B564 8011C5B4 AFA40008 */  sw         $a0, 0x8($sp)
    /* 12B568 8011C5B8 18A0002D */  blez       $a1, .L8011C670_12B620
    /* 12B56C 8011C5BC 00001825 */   or        $v1, $zero, $zero
    /* 12B570 8011C5C0 3C0F8014 */  lui        $t7, %hi(D_80146688)
    /* 12B574 8011C5C4 25EF6688 */  addiu      $t7, $t7, %lo(D_80146688)
    /* 12B578 8011C5C8 00027240 */  sll        $t6, $v0, 9
    /* 12B57C 8011C5CC 3C0A8005 */  lui        $t2, %hi(buildingInstances)
    /* 12B580 8011C5D0 254A0AD8 */  addiu      $t2, $t2, %lo(buildingInstances)
    /* 12B584 8011C5D4 01CF2021 */  addu       $a0, $t6, $t7
    /* 12B588 8011C5D8 240B0018 */  addiu      $t3, $zero, 0x18
  .L8011C5DC_12B58C:
    /* 12B58C 8011C5DC 8098FE03 */  lb         $t8, -0x1FD($a0)
    /* 12B590 8011C5E0 57000020 */  bnel       $t8, $zero, .L8011C664_12B614
    /* 12B594 8011C5E4 24630001 */   addiu     $v1, $v1, 0x1
    /* 12B598 8011C5E8 020B0019 */  multu      $s0, $t3
    /* 12B59C 8011C5EC 8099FE00 */  lb         $t9, -0x200($a0)
    /* 12B5A0 8011C5F0 808EFE01 */  lb         $t6, -0x1FF($a0)
    /* 12B5A4 8011C5F4 00196600 */  sll        $t4, $t9, 24
    /* 12B5A8 8011C5F8 8099FE02 */  lb         $t9, -0x1FE($a0)
    /* 12B5AC 8011C5FC 000E7E00 */  sll        $t7, $t6, 24
    /* 12B5B0 8011C600 000C1403 */  sra        $v0, $t4, 16
    /* 12B5B4 8011C604 00196600 */  sll        $t4, $t9, 24
    /* 12B5B8 8011C608 000F3403 */  sra        $a2, $t7, 16
    /* 12B5BC 8011C60C 00007012 */  mflo       $t6
    /* 12B5C0 8011C610 014E4021 */  addu       $t0, $t2, $t6
    /* 12B5C4 8011C614 85090000 */  lh         $t1, 0x0($t0)
    /* 12B5C8 8011C618 000C6C03 */  sra        $t5, $t4, 16
    /* 12B5CC 8011C61C 004D7823 */  subu       $t7, $v0, $t5
    /* 12B5D0 8011C620 012F082A */  slt        $at, $t1, $t7
    /* 12B5D4 8011C624 1420000E */  bnez       $at, .L8011C660_12B610
    /* 12B5D8 8011C628 004DC021 */   addu      $t8, $v0, $t5
    /* 12B5DC 8011C62C 0138082A */  slt        $at, $t1, $t8
    /* 12B5E0 8011C630 5020000C */  beql       $at, $zero, .L8011C664_12B614
    /* 12B5E4 8011C634 24630001 */   addiu     $v1, $v1, 0x1
    /* 12B5E8 8011C638 85020004 */  lh         $v0, 0x4($t0)
    /* 12B5EC 8011C63C 00CDC823 */  subu       $t9, $a2, $t5
    /* 12B5F0 8011C640 00CD6021 */  addu       $t4, $a2, $t5
    /* 12B5F4 8011C644 0059082A */  slt        $at, $v0, $t9
    /* 12B5F8 8011C648 14200005 */  bnez       $at, .L8011C660_12B610
    /* 12B5FC 8011C64C 004C082A */   slt       $at, $v0, $t4
    /* 12B600 8011C650 50200004 */  beql       $at, $zero, .L8011C664_12B614
    /* 12B604 8011C654 24630001 */   addiu     $v1, $v1, 0x1
    /* 12B608 8011C658 10000006 */  b          .L8011C674_12B624
    /* 12B60C 8011C65C 00601025 */   or        $v0, $v1, $zero
  .L8011C660_12B610:
    /* 12B610 8011C660 24630001 */  addiu      $v1, $v1, 0x1
  .L8011C664_12B614:
    /* 12B614 8011C664 0065082A */  slt        $at, $v1, $a1
    /* 12B618 8011C668 1420FFDC */  bnez       $at, .L8011C5DC_12B58C
    /* 12B61C 8011C66C 24840010 */   addiu     $a0, $a0, 0x10
  .L8011C670_12B620:
    /* 12B620 8011C670 2402FFFF */  addiu      $v0, $zero, -0x1
  .L8011C674_12B624:
    /* 12B624 8011C674 8FB00004 */  lw         $s0, 0x4($sp)
    /* 12B628 8011C678 03E00008 */  jr         $ra
    /* 12B62C 8011C67C 27BD0008 */   addiu     $sp, $sp, 0x8
endlabel func_8011C594_12B544
