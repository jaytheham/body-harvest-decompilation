nonmatching func_800AD554_BC504, 0x144

glabel func_800AD554_BC504
    /* BC504 800AD554 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* BC508 800AD558 AFBF001C */  sw         $ra, 0x1C($sp)
    /* BC50C 800AD55C 00803825 */  or         $a3, $a0, $zero
    /* BC510 800AD560 AFB00018 */  sw         $s0, 0x18($sp)
    /* BC514 800AD564 AFA60030 */  sw         $a2, 0x30($sp)
    /* BC518 800AD568 AFA70028 */  sw         $a3, 0x28($sp)
    /* BC51C 800AD56C 24040001 */  addiu      $a0, $zero, 0x1
    /* BC520 800AD570 0C01E55B */  jal        func_8007956C_8851C
    /* BC524 800AD574 AFA5002C */   sw        $a1, 0x2C($sp)
    /* BC528 800AD578 304E00FF */  andi       $t6, $v0, 0xFF
    /* BC52C 800AD57C 240100FF */  addiu      $at, $zero, 0xFF
    /* BC530 800AD580 8FA5002C */  lw         $a1, 0x2C($sp)
    /* BC534 800AD584 8FA70028 */  lw         $a3, 0x28($sp)
    /* BC538 800AD588 11C1003E */  beq        $t6, $at, .L800AD684_BC634
    /* BC53C 800AD58C A3A20027 */   sb        $v0, 0x27($sp)
    /* BC540 800AD590 304F00FF */  andi       $t7, $v0, 0xFF
    /* BC544 800AD594 000FC080 */  sll        $t8, $t7, 2
    /* BC548 800AD598 030FC021 */  addu       $t8, $t8, $t7
    /* BC54C 800AD59C 3C198005 */  lui        $t9, %hi(alienInstances)
    /* BC550 800AD5A0 27398198 */  addiu      $t9, $t9, %lo(alienInstances)
    /* BC554 800AD5A4 0018C100 */  sll        $t8, $t8, 4
    /* BC558 800AD5A8 03198021 */  addu       $s0, $t8, $t9
    /* BC55C 800AD5AC 8E090020 */  lw         $t1, 0x20($s0)
    /* BC560 800AD5B0 24080040 */  addiu      $t0, $zero, 0x40
    /* BC564 800AD5B4 A6070000 */  sh         $a3, 0x0($s0)
    /* BC568 800AD5B8 352A1000 */  ori        $t2, $t1, 0x1000
    /* BC56C 800AD5BC A6050004 */  sh         $a1, 0x4($s0)
    /* BC570 800AD5C0 A607002E */  sh         $a3, 0x2E($s0)
    /* BC574 800AD5C4 A6050032 */  sh         $a1, 0x32($s0)
    /* BC578 800AD5C8 A6080048 */  sh         $t0, 0x48($s0)
    /* BC57C 800AD5CC AE0A0020 */  sw         $t2, 0x20($s0)
    /* BC580 800AD5D0 0C02C3C8 */  jal        func_800B0F20_BFED0
    /* BC584 800AD5D4 00E02025 */   or        $a0, $a3, $zero
    /* BC588 800AD5D8 8FAB0030 */  lw         $t3, 0x30($sp)
    /* BC58C 800AD5DC 3C038005 */  lui        $v1, %hi(D_80050AE9)
    /* BC590 800AD5E0 A202001B */  sb         $v0, 0x1B($s0)
    /* BC594 800AD5E4 000B6080 */  sll        $t4, $t3, 2
    /* BC598 800AD5E8 018B6023 */  subu       $t4, $t4, $t3
    /* BC59C 800AD5EC 000C60C0 */  sll        $t4, $t4, 3
    /* BC5A0 800AD5F0 006C1821 */  addu       $v1, $v1, $t4
    /* BC5A4 800AD5F4 90630AE9 */  lbu        $v1, %lo(D_80050AE9)($v1)
    /* BC5A8 800AD5F8 2401FFFF */  addiu      $at, $zero, -0x1
    /* BC5AC 800AD5FC 3C0D8004 */  lui        $t5, %hi(currentLevel)
    /* BC5B0 800AD600 1061000C */  beq        $v1, $at, .L800AD634_BC5E4
    /* BC5B4 800AD604 00603025 */   or        $a2, $v1, $zero
    /* BC5B8 800AD608 8DAD7F90 */  lw         $t5, %lo(currentLevel)($t5)
    /* BC5BC 800AD60C 00037900 */  sll        $t7, $v1, 4
    /* BC5C0 800AD610 3C198014 */  lui        $t9, %hi(D_80146688)
    /* BC5C4 800AD614 000D7240 */  sll        $t6, $t5, 9
    /* BC5C8 800AD618 01CFC021 */  addu       $t8, $t6, $t7
    /* BC5CC 800AD61C 27396688 */  addiu      $t9, $t9, %lo(D_80146688)
    /* BC5D0 800AD620 03191021 */  addu       $v0, $t8, $t9
    /* BC5D4 800AD624 8448FE0A */  lh         $t0, -0x1F6($v0)
    /* BC5D8 800AD628 25090001 */  addiu      $t1, $t0, 0x1
    /* BC5DC 800AD62C 10000006 */  b          .L800AD648_BC5F8
    /* BC5E0 800AD630 A449FE0A */   sh        $t1, -0x1F6($v0)
  .L800AD634_BC5E4:
    /* BC5E4 800AD634 3C028016 */  lui        $v0, %hi(D_8015EA14)
    /* BC5E8 800AD638 2442EA14 */  addiu      $v0, $v0, %lo(D_8015EA14)
    /* BC5EC 800AD63C 8C4A0000 */  lw         $t2, 0x0($v0)
    /* BC5F0 800AD640 254B0001 */  addiu      $t3, $t2, 0x1
    /* BC5F4 800AD644 AC4B0000 */  sw         $t3, 0x0($v0)
  .L800AD648_BC5F8:
    /* BC5F8 800AD648 00062E00 */  sll        $a1, $a2, 24
    /* BC5FC 800AD64C 00056603 */  sra        $t4, $a1, 24
    /* BC600 800AD650 01802825 */  or         $a1, $t4, $zero
    /* BC604 800AD654 0C0471A0 */  jal        func_8011C680_12B630
    /* BC608 800AD658 93A40027 */   lbu       $a0, 0x27($sp)
    /* BC60C 800AD65C 8FAD0030 */  lw         $t5, 0x30($sp)
    /* BC610 800AD660 26050014 */  addiu      $a1, $s0, 0x14
    /* BC614 800AD664 26060016 */  addiu      $a2, $s0, 0x16
    /* BC618 800AD668 A60D0038 */  sh         $t5, 0x38($s0)
    /* BC61C 800AD66C 86040038 */  lh         $a0, 0x38($s0)
    /* BC620 800AD670 0C046CFC */  jal        func_8011B3F0_12A3A0
    /* BC624 800AD674 26070018 */   addiu     $a3, $s0, 0x18
    /* BC628 800AD678 8E0E0020 */  lw         $t6, 0x20($s0)
    /* BC62C 800AD67C 35CF0100 */  ori        $t7, $t6, 0x100
    /* BC630 800AD680 AE0F0020 */  sw         $t7, 0x20($s0)
  .L800AD684_BC634:
    /* BC634 800AD684 8FBF001C */  lw         $ra, 0x1C($sp)
    /* BC638 800AD688 93A20027 */  lbu        $v0, 0x27($sp)
    /* BC63C 800AD68C 8FB00018 */  lw         $s0, 0x18($sp)
    /* BC640 800AD690 03E00008 */  jr         $ra
    /* BC644 800AD694 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_800AD554_BC504
