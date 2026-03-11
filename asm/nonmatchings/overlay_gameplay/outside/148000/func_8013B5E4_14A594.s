nonmatching func_8013B5E4_14A594, 0xA4

glabel func_8013B5E4_14A594
    /* 14A594 8013B5E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 14A598 8013B5E8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 14A59C 8013B5EC 0C04ED4D */  jal        func_8013B534_14A4E4
    /* 14A5A0 8013B5F0 AFA40018 */   sw        $a0, 0x18($sp)
    /* 14A5A4 8013B5F4 10400003 */  beqz       $v0, .L8013B604_14A5B4
    /* 14A5A8 8013B5F8 3C058016 */   lui       $a1, %hi(D_801601D0)
    /* 14A5AC 8013B5FC 1000001E */  b          .L8013B678_14A628
    /* 14A5B0 8013B600 24020001 */   addiu     $v0, $zero, 0x1
  .L8013B604_14A5B4:
    /* 14A5B4 8013B604 8CA501D0 */  lw         $a1, %lo(D_801601D0)($a1)
    /* 14A5B8 8013B608 3C0E8005 */  lui        $t6, %hi(D_80052B34)
    /* 14A5BC 8013B60C 3C048014 */  lui        $a0, %hi(D_80145ABC)
    /* 14A5C0 8013B610 14A0000B */  bnez       $a1, .L8013B640_14A5F0
    /* 14A5C4 8013B614 00000000 */   nop
    /* 14A5C8 8013B618 8DCE2B34 */  lw         $t6, %lo(D_80052B34)($t6)
    /* 14A5CC 8013B61C 3C018025 */  lui        $at, %hi(D_80257A1C)
    /* 14A5D0 8013B620 24020001 */  addiu      $v0, $zero, 0x1
    /* 14A5D4 8013B624 91CF001A */  lbu        $t7, 0x1A($t6)
    /* 14A5D8 8013B628 000FC0C0 */  sll        $t8, $t7, 3
    /* 14A5DC 8013B62C 030FC023 */  subu       $t8, $t8, $t7
    /* 14A5E0 8013B630 0018C100 */  sll        $t8, $t8, 4
    /* 14A5E4 8013B634 00380821 */  addu       $at, $at, $t8
    /* 14A5E8 8013B638 1000000F */  b          .L8013B678_14A628
    /* 14A5EC 8013B63C AC207A1C */   sw        $zero, %lo(D_80257A1C)($at)
  .L8013B640_14A5F0:
    /* 14A5F0 8013B640 0C00731B */  jal        osSyncPrintf
    /* 14A5F4 8013B644 24845ABC */   addiu     $a0, $a0, %lo(D_80145ABC)
    /* 14A5F8 8013B648 8FB90018 */  lw         $t9, 0x18($sp)
    /* 14A5FC 8013B64C 17200005 */  bnez       $t9, .L8013B664_14A614
    /* 14A600 8013B650 00000000 */   nop
    /* 14A604 8013B654 0C04ECA6 */  jal        func_8013B298_14A248
    /* 14A608 8013B658 00000000 */   nop
    /* 14A60C 8013B65C 10000003 */  b          .L8013B66C_14A61C
    /* 14A610 8013B660 00000000 */   nop
  .L8013B664_14A614:
    /* 14A614 8013B664 0C04ECC3 */  jal        func_8013B30C_14A2BC
    /* 14A618 8013B668 00000000 */   nop
  .L8013B66C_14A61C:
    /* 14A61C 8013B66C 0C04ED79 */  jal        func_8013B5E4_14A594
    /* 14A620 8013B670 8FA40018 */   lw        $a0, 0x18($sp)
    /* 14A624 8013B674 00001025 */  or         $v0, $zero, $zero
  .L8013B678_14A628:
    /* 14A628 8013B678 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 14A62C 8013B67C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 14A630 8013B680 03E00008 */  jr         $ra
    /* 14A634 8013B684 00000000 */   nop
endlabel func_8013B5E4_14A594
