nonmatching func_8011B584_12A534, 0x13C

glabel func_8011B584_12A534
    /* 12A534 8011B584 00047080 */  sll        $t6, $a0, 2
    /* 12A538 8011B588 01C47023 */  subu       $t6, $t6, $a0
    /* 12A53C 8011B58C 3C0F8005 */  lui        $t7, %hi(buildingInstances)
    /* 12A540 8011B590 25EF0AD8 */  addiu      $t7, $t7, %lo(buildingInstances)
    /* 12A544 8011B594 000E70C0 */  sll        $t6, $t6, 3
    /* 12A548 8011B598 01CF1021 */  addu       $v0, $t6, $t7
    /* 12A54C 8011B59C 8C580008 */  lw         $t8, 0x8($v0)
    /* 12A550 8011B5A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 12A554 8011B5A4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 12A558 8011B5A8 0018CB02 */  srl        $t9, $t8, 12
    /* 12A55C 8011B5AC 33280001 */  andi       $t0, $t9, 0x1
    /* 12A560 8011B5B0 1100000A */  beqz       $t0, .L8011B5DC_12A58C
    /* 12A564 8011B5B4 00054880 */   sll       $t1, $a1, 2
    /* 12A568 8011B5B8 01254821 */  addu       $t1, $t1, $a1
    /* 12A56C 8011B5BC 3C0A8005 */  lui        $t2, %hi(alienInstances)
    /* 12A570 8011B5C0 254A8198 */  addiu      $t2, $t2, %lo(alienInstances)
    /* 12A574 8011B5C4 00094900 */  sll        $t1, $t1, 4
    /* 12A578 8011B5C8 012A1821 */  addu       $v1, $t1, $t2
    /* 12A57C 8011B5CC 846B0038 */  lh         $t3, 0x38($v1)
    /* 12A580 8011B5D0 240100FF */  addiu      $at, $zero, 0xFF
    /* 12A584 8011B5D4 55610004 */  bnel       $t3, $at, .L8011B5E8_12A598
    /* 12A588 8011B5D8 906C0024 */   lbu       $t4, 0x24($v1)
  .L8011B5DC_12A58C:
    /* 12A58C 8011B5DC 10000034 */  b          .L8011B6B0_12A660
    /* 12A590 8011B5E0 00001025 */   or        $v0, $zero, $zero
    /* 12A594 8011B5E4 906C0024 */  lbu        $t4, 0x24($v1)
  .L8011B5E8_12A598:
    /* 12A598 8011B5E8 24010001 */  addiu      $at, $zero, 0x1
    /* 12A59C 8011B5EC 55810009 */  bnel       $t4, $at, .L8011B614_12A5C4
    /* 12A5A0 8011B5F0 904E0006 */   lbu       $t6, 0x6($v0)
    /* 12A5A4 8011B5F4 9064003F */  lbu        $a0, 0x3F($v1)
    /* 12A5A8 8011B5F8 0C01D971 */  jal        func_800765C4_85574
    /* 12A5AC 8011B5FC AFA50024 */   sw        $a1, 0x24($sp)
    /* 12A5B0 8011B600 0C01E644 */  jal        func_80079910_888C0
    /* 12A5B4 8011B604 8FA40024 */   lw        $a0, 0x24($sp)
    /* 12A5B8 8011B608 10000029 */  b          .L8011B6B0_12A660
    /* 12A5BC 8011B60C 00001025 */   or        $v0, $zero, $zero
    /* 12A5C0 8011B610 904E0006 */  lbu        $t6, 0x6($v0)
  .L8011B614_12A5C4:
    /* 12A5C4 8011B614 3C188026 */  lui        $t8, %hi(D_802590A8)
    /* 12A5C8 8011B618 904D0007 */  lbu        $t5, 0x7($v0)
    /* 12A5CC 8011B61C 000E7940 */  sll        $t7, $t6, 5
    /* 12A5D0 8011B620 030FC021 */  addu       $t8, $t8, $t7
    /* 12A5D4 8011B624 931890A8 */  lbu        $t8, %lo(D_802590A8)($t8)
    /* 12A5D8 8011B628 00A02025 */  or         $a0, $a1, $zero
    /* 12A5DC 8011B62C 01B8082A */  slt        $at, $t5, $t8
    /* 12A5E0 8011B630 5020001F */  beql       $at, $zero, .L8011B6B0_12A660
    /* 12A5E4 8011B634 00001025 */   or        $v0, $zero, $zero
    /* 12A5E8 8011B638 0C01E644 */  jal        func_80079910_888C0
    /* 12A5EC 8011B63C AFA2001C */   sw        $v0, 0x1C($sp)
    /* 12A5F0 8011B640 8FA2001C */  lw         $v0, 0x1C($sp)
    /* 12A5F4 8011B644 2401FFFF */  addiu      $at, $zero, -0x1
    /* 12A5F8 8011B648 90590007 */  lbu        $t9, 0x7($v0)
    /* 12A5FC 8011B64C 80430011 */  lb         $v1, 0x11($v0)
    /* 12A600 8011B650 27280001 */  addiu      $t0, $t9, 0x1
    /* 12A604 8011B654 14610008 */  bne        $v1, $at, .L8011B678_12A628
    /* 12A608 8011B658 A0480007 */   sb        $t0, 0x7($v0)
    /* 12A60C 8011B65C 3C028016 */  lui        $v0, %hi(D_8015EA18)
    /* 12A610 8011B660 2442EA18 */  addiu      $v0, $v0, %lo(D_8015EA18)
    /* 12A614 8011B664 8C490000 */  lw         $t1, 0x0($v0)
    /* 12A618 8011B668 252A0001 */  addiu      $t2, $t1, 0x1
    /* 12A61C 8011B66C AC4A0000 */  sw         $t2, 0x0($v0)
    /* 12A620 8011B670 1000000F */  b          .L8011B6B0_12A660
    /* 12A624 8011B674 24020001 */   addiu     $v0, $zero, 0x1
  .L8011B678_12A628:
    /* 12A628 8011B678 3C0B8004 */  lui        $t3, %hi(currentLevel)
    /* 12A62C 8011B67C 8D6B7F90 */  lw         $t3, %lo(currentLevel)($t3)
    /* 12A630 8011B680 00037100 */  sll        $t6, $v1, 4
    /* 12A634 8011B684 3C0D8014 */  lui        $t5, %hi(D_80146688)
    /* 12A638 8011B688 000B6240 */  sll        $t4, $t3, 9
    /* 12A63C 8011B68C 018E7821 */  addu       $t7, $t4, $t6
    /* 12A640 8011B690 25AD6688 */  addiu      $t5, $t5, %lo(D_80146688)
    /* 12A644 8011B694 01ED1021 */  addu       $v0, $t7, $t5
    /* 12A648 8011B698 8458FE0A */  lh         $t8, -0x1F6($v0)
    /* 12A64C 8011B69C 27190001 */  addiu      $t9, $t8, 0x1
    /* 12A650 8011B6A0 A459FE0A */  sh         $t9, -0x1F6($v0)
    /* 12A654 8011B6A4 10000002 */  b          .L8011B6B0_12A660
    /* 12A658 8011B6A8 24020001 */   addiu     $v0, $zero, 0x1
    /* 12A65C 8011B6AC 00001025 */  or         $v0, $zero, $zero
  .L8011B6B0_12A660:
    /* 12A660 8011B6B0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 12A664 8011B6B4 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 12A668 8011B6B8 03E00008 */  jr         $ra
    /* 12A66C 8011B6BC 00000000 */   nop
endlabel func_8011B584_12A534
