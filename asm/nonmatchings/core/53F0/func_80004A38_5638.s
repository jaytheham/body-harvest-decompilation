nonmatching func_80004A38_5638, 0xB4

glabel func_80004A38_5638
    /* 5638 80004A38 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* 563C 80004A3C 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* 5640 80004A40 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 5644 80004A44 24010002 */  addiu      $at, $zero, 0x2
    /* 5648 80004A48 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 564C 80004A4C AFA40018 */  sw         $a0, 0x18($sp)
    /* 5650 80004A50 15C10010 */  bne        $t6, $at, .L80004A94_5694
    /* 5654 80004A54 AFA5001C */   sw        $a1, 0x1C($sp)
    /* 5658 80004A58 24040000 */  addiu      $a0, $zero, 0x0
    /* 565C 80004A5C 24050021 */  addiu      $a1, $zero, 0x21
    /* 5660 80004A60 AFA60020 */  sw         $a2, 0x20($sp)
    /* 5664 80004A64 0C001C9B */  jal        func_8000726C_7E6C
    /* 5668 80004A68 AFA70024 */   sw        $a3, 0x24($sp)
    /* 566C 80004A6C 8FA60020 */  lw         $a2, 0x20($sp)
    /* 5670 80004A70 14400008 */  bnez       $v0, .L80004A94_5694
    /* 5674 80004A74 8FA70024 */   lw        $a3, 0x24($sp)
    /* 5678 80004A78 8FAF001C */  lw         $t7, 0x1C($sp)
    /* 567C 80004A7C 2402000C */  addiu      $v0, $zero, 0xC
    /* 5680 80004A80 2418000A */  addiu      $t8, $zero, 0xA
    /* 5684 80004A84 A1E20000 */  sb         $v0, 0x0($t7)
    /* 5688 80004A88 A0C20000 */  sb         $v0, 0x0($a2)
    /* 568C 80004A8C 10000013 */  b          .L80004ADC_56DC
    /* 5690 80004A90 A0F80000 */   sb        $t8, 0x0($a3)
  .L80004A94_5694:
    /* 5694 80004A94 93B9001B */  lbu        $t9, 0x1B($sp)
    /* 5698 80004A98 3C09802D */  lui        $t1, %hi(D_802D48D0)
    /* 569C 80004A9C 252948D0 */  addiu      $t1, $t1, %lo(D_802D48D0)
    /* 56A0 80004AA0 00194040 */  sll        $t0, $t9, 1
    /* 56A4 80004AA4 01091021 */  addu       $v0, $t0, $t1
    /* 56A8 80004AA8 944A0000 */  lhu        $t2, 0x0($v0)
    /* 56AC 80004AAC 8FAD001C */  lw         $t5, 0x1C($sp)
    /* 56B0 80004AB0 314BF800 */  andi       $t3, $t2, 0xF800
    /* 56B4 80004AB4 000B62C3 */  sra        $t4, $t3, 11
    /* 56B8 80004AB8 A1AC0000 */  sb         $t4, 0x0($t5)
    /* 56BC 80004ABC 944E0000 */  lhu        $t6, 0x0($v0)
    /* 56C0 80004AC0 31CF07C0 */  andi       $t7, $t6, 0x7C0
    /* 56C4 80004AC4 000FC183 */  sra        $t8, $t7, 6
    /* 56C8 80004AC8 A0D80000 */  sb         $t8, 0x0($a2)
    /* 56CC 80004ACC 94590000 */  lhu        $t9, 0x0($v0)
    /* 56D0 80004AD0 3328003E */  andi       $t0, $t9, 0x3E
    /* 56D4 80004AD4 00084843 */  sra        $t1, $t0, 1
    /* 56D8 80004AD8 A0E90000 */  sb         $t1, 0x0($a3)
  .L80004ADC_56DC:
    /* 56DC 80004ADC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 56E0 80004AE0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 56E4 80004AE4 03E00008 */  jr         $ra
    /* 56E8 80004AE8 00000000 */   nop
endlabel func_80004A38_5638
