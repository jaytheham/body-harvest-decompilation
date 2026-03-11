nonmatching func_8011C770_12B720, 0x178

glabel func_8011C770_12B720
    /* 12B720 8011C770 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 12B724 8011C774 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* 12B728 8011C778 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* 12B72C 8011C77C 0004C100 */  sll        $t8, $a0, 4
    /* 12B730 8011C780 3C0A8014 */  lui        $t2, %hi(D_80146688)
    /* 12B734 8011C784 000E7A40 */  sll        $t7, $t6, 9
    /* 12B738 8011C788 01F8C821 */  addu       $t9, $t7, $t8
    /* 12B73C 8011C78C AFB70030 */  sw         $s7, 0x30($sp)
    /* 12B740 8011C790 AFB6002C */  sw         $s6, 0x2C($sp)
    /* 12B744 8011C794 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 12B748 8011C798 2729FE00 */  addiu      $t1, $t9, -0x200
    /* 12B74C 8011C79C 254A6688 */  addiu      $t2, $t2, %lo(D_80146688)
    /* 12B750 8011C7A0 00A09025 */  or         $s2, $a1, $zero
    /* 12B754 8011C7A4 0080B825 */  or         $s7, $a0, $zero
    /* 12B758 8011C7A8 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 12B75C 8011C7AC AFB10018 */  sw         $s1, 0x18($sp)
    /* 12B760 8011C7B0 012AB021 */  addu       $s6, $t1, $t2
    /* 12B764 8011C7B4 AFB50028 */  sw         $s5, 0x28($sp)
    /* 12B768 8011C7B8 AFB40024 */  sw         $s4, 0x24($sp)
    /* 12B76C 8011C7BC AFB30020 */  sw         $s3, 0x20($sp)
    /* 12B770 8011C7C0 AFB00014 */  sw         $s0, 0x14($sp)
    /* 12B774 8011C7C4 00008825 */  or         $s1, $zero, $zero
    /* 12B778 8011C7C8 02C02025 */  or         $a0, $s6, $zero
    /* 12B77C 8011C7CC 0C047097 */  jal        func_8011C25C_12B20C
    /* 12B780 8011C7D0 00002825 */   or        $a1, $zero, $zero
    /* 12B784 8011C7D4 2413FFFF */  addiu      $s3, $zero, -0x1
    /* 12B788 8011C7D8 10530015 */  beq        $v0, $s3, .L8011C830_12B7E0
    /* 12B78C 8011C7DC 00408025 */   or        $s0, $v0, $zero
    /* 12B790 8011C7E0 3C148005 */  lui        $s4, %hi(buildingInstances)
    /* 12B794 8011C7E4 26940AD8 */  addiu      $s4, $s4, %lo(buildingInstances)
    /* 12B798 8011C7E8 24150018 */  addiu      $s5, $zero, 0x18
  .L8011C7EC_12B79C:
    /* 12B79C 8011C7EC 02150019 */  multu      $s0, $s5
    /* 12B7A0 8011C7F0 26310001 */  addiu      $s1, $s1, 0x1
    /* 12B7A4 8011C7F4 02202825 */  or         $a1, $s1, $zero
    /* 12B7A8 8011C7F8 02C02025 */  or         $a0, $s6, $zero
    /* 12B7AC 8011C7FC 00005812 */  mflo       $t3
    /* 12B7B0 8011C800 028B1021 */  addu       $v0, $s4, $t3
    /* 12B7B4 8011C804 8C430008 */  lw         $v1, 0x8($v0)
    /* 12B7B8 8011C808 A052000E */  sb         $s2, 0xE($v0)
    /* 12B7BC 8011C80C 00033302 */  srl        $a2, $v1, 12
    /* 12B7C0 8011C810 34CC0020 */  ori        $t4, $a2, 0x20
    /* 12B7C4 8011C814 01866826 */  xor        $t5, $t4, $a2
    /* 12B7C8 8011C818 000D7300 */  sll        $t6, $t5, 12
    /* 12B7CC 8011C81C 01C37826 */  xor        $t7, $t6, $v1
    /* 12B7D0 8011C820 0C047097 */  jal        func_8011C25C_12B20C
    /* 12B7D4 8011C824 AC4F0008 */   sw        $t7, 0x8($v0)
    /* 12B7D8 8011C828 1453FFF0 */  bne        $v0, $s3, .L8011C7EC_12B79C
    /* 12B7DC 8011C82C 00408025 */   or        $s0, $v0, $zero
  .L8011C830_12B7E0:
    /* 12B7E0 8011C830 3C028015 */  lui        $v0, %hi(D_8014D507)
    /* 12B7E4 8011C834 9042D507 */  lbu        $v0, %lo(D_8014D507)($v0)
    /* 12B7E8 8011C838 3C188015 */  lui        $t8, %hi(D_8014D408)
    /* 12B7EC 8011C83C 2703D408 */  addiu      $v1, $t8, %lo(D_8014D408)
    /* 12B7F0 8011C840 18400018 */  blez       $v0, .L8011C8A4_12B854
    /* 12B7F4 8011C844 00432021 */   addu      $a0, $v0, $v1
    /* 12B7F8 8011C848 3C058005 */  lui        $a1, %hi(alienInstances)
    /* 12B7FC 8011C84C 24A58198 */  addiu      $a1, $a1, %lo(alienInstances)
    /* 12B800 8011C850 2408BE1F */  addiu      $t0, $zero, -0x41E1
    /* 12B804 8011C854 240700A0 */  addiu      $a3, $zero, 0xA0
    /* 12B808 8011C858 24060050 */  addiu      $a2, $zero, 0x50
    /* 12B80C 8011C85C 90700000 */  lbu        $s0, 0x0($v1)
  .L8011C860_12B810:
    /* 12B810 8011C860 24630001 */  addiu      $v1, $v1, 0x1
    /* 12B814 8011C864 0064082B */  sltu       $at, $v1, $a0
    /* 12B818 8011C868 02060019 */  multu      $s0, $a2
    /* 12B81C 8011C86C 0000C812 */  mflo       $t9
    /* 12B820 8011C870 00B91021 */  addu       $v0, $a1, $t9
    /* 12B824 8011C874 8049003D */  lb         $t1, 0x3D($v0)
    /* 12B828 8011C878 16E90008 */  bne        $s7, $t1, .L8011C89C_12B84C
    /* 12B82C 8011C87C 00000000 */   nop
    /* 12B830 8011C880 8C4A0020 */  lw         $t2, 0x20($v0)
    /* 12B834 8011C884 A4470012 */  sh         $a3, 0x12($v0)
    /* 12B838 8011C888 A4520038 */  sh         $s2, 0x38($v0)
    /* 12B83C 8011C88C 01485824 */  and        $t3, $t2, $t0
    /* 12B840 8011C890 AC4B0020 */  sw         $t3, 0x20($v0)
    /* 12B844 8011C894 356D0080 */  ori        $t5, $t3, 0x80
    /* 12B848 8011C898 AC4D0020 */  sw         $t5, 0x20($v0)
  .L8011C89C_12B84C:
    /* 12B84C 8011C89C 5420FFF0 */  bnel       $at, $zero, .L8011C860_12B810
    /* 12B850 8011C8A0 90700000 */   lbu       $s0, 0x0($v1)
  .L8011C8A4_12B854:
    /* 12B854 8011C8A4 86CE000A */  lh         $t6, 0xA($s6)
    /* 12B858 8011C8A8 3C018016 */  lui        $at, %hi(D_8015EA20)
    /* 12B85C 8011C8AC 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 12B860 8011C8B0 AC2EEA20 */  sw         $t6, %lo(D_8015EA20)($at)
    /* 12B864 8011C8B4 86CF000A */  lh         $t7, 0xA($s6)
    /* 12B868 8011C8B8 3C018016 */  lui        $at, %hi(D_8015EA24)
    /* 12B86C 8011C8BC 8FB6002C */  lw         $s6, 0x2C($sp)
    /* 12B870 8011C8C0 8FB00014 */  lw         $s0, 0x14($sp)
    /* 12B874 8011C8C4 8FB10018 */  lw         $s1, 0x18($sp)
    /* 12B878 8011C8C8 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 12B87C 8011C8CC 8FB30020 */  lw         $s3, 0x20($sp)
    /* 12B880 8011C8D0 8FB40024 */  lw         $s4, 0x24($sp)
    /* 12B884 8011C8D4 8FB50028 */  lw         $s5, 0x28($sp)
    /* 12B888 8011C8D8 8FB70030 */  lw         $s7, 0x30($sp)
    /* 12B88C 8011C8DC 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 12B890 8011C8E0 03E00008 */  jr         $ra
    /* 12B894 8011C8E4 AC2FEA24 */   sw        $t7, %lo(D_8015EA24)($at)
endlabel func_8011C770_12B720
