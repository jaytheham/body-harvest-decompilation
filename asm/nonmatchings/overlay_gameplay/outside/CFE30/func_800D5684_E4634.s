nonmatching func_800D5684_E4634, 0xDC

glabel func_800D5684_E4634
    /* E4634 800D5684 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* E4638 800D5688 AFB10020 */  sw         $s1, 0x20($sp)
    /* E463C 800D568C 3C118015 */  lui        $s1, %hi(D_801542BE)
    /* E4640 800D5690 863142BE */  lh         $s1, %lo(D_801542BE)($s1)
    /* E4644 800D5694 AFB4002C */  sw         $s4, 0x2C($sp)
    /* E4648 800D5698 2414FFFB */  addiu      $s4, $zero, -0x5
    /* E464C 800D569C AFBF0034 */  sw         $ra, 0x34($sp)
    /* E4650 800D56A0 AFB50030 */  sw         $s5, 0x30($sp)
    /* E4654 800D56A4 AFB30028 */  sw         $s3, 0x28($sp)
    /* E4658 800D56A8 AFB20024 */  sw         $s2, 0x24($sp)
    /* E465C 800D56AC 12340003 */  beq        $s1, $s4, .L800D56BC_E466C
    /* E4660 800D56B0 AFB0001C */   sw        $s0, 0x1C($sp)
    /* E4664 800D56B4 2415FFFA */  addiu      $s5, $zero, -0x6
    /* E4668 800D56B8 16350005 */  bne        $s1, $s5, .L800D56D0_E4680
  .L800D56BC_E466C:
    /* E466C 800D56BC 24040010 */   addiu     $a0, $zero, 0x10
    /* E4670 800D56C0 0C030506 */  jal        func_800C1418_D03C8
    /* E4674 800D56C4 24050001 */   addiu     $a1, $zero, 0x1
    /* E4678 800D56C8 1000001D */  b          .L800D5740_E46F0
    /* E467C 800D56CC 8FBF0034 */   lw        $ra, 0x34($sp)
  .L800D56D0_E4680:
    /* E4680 800D56D0 5234001B */  beql       $s1, $s4, .L800D5740_E46F0
    /* E4684 800D56D4 8FBF0034 */   lw        $ra, 0x34($sp)
    /* E4688 800D56D8 12350018 */  beq        $s1, $s5, .L800D573C_E46EC
    /* E468C 800D56DC 2413001C */   addiu     $s3, $zero, 0x1C
    /* E4690 800D56E0 3C128015 */  lui        $s2, %hi(D_80154318)
    /* E4694 800D56E4 26524318 */  addiu      $s2, $s2, %lo(D_80154318)
  .L800D56E8_E4698:
    /* E4698 800D56E8 02330019 */  multu      $s1, $s3
    /* E469C 800D56EC 2407000B */  addiu      $a3, $zero, 0xB
    /* E46A0 800D56F0 00007012 */  mflo       $t6
    /* E46A4 800D56F4 024E7821 */  addu       $t7, $s2, $t6
    /* E46A8 800D56F8 85F10004 */  lh         $s1, 0x4($t7)
    /* E46AC 800D56FC 02330019 */  multu      $s1, $s3
    /* E46B0 800D5700 AFB10010 */  sw         $s1, 0x10($sp)
    /* E46B4 800D5704 0000C012 */  mflo       $t8
    /* E46B8 800D5708 02588021 */  addu       $s0, $s2, $t8
    /* E46BC 800D570C 96190008 */  lhu        $t9, 0x8($s0)
    /* E46C0 800D5710 8605000A */  lh         $a1, 0xA($s0)
    /* E46C4 800D5714 8606000C */  lh         $a2, 0xC($s0)
    /* E46C8 800D5718 27280001 */  addiu      $t0, $t9, 0x1
    /* E46CC 800D571C A6080008 */  sh         $t0, 0x8($s0)
    /* E46D0 800D5720 0C04DCDA */  jal        func_80137368_146318
    /* E46D4 800D5724 86040008 */   lh        $a0, 0x8($s0)
    /* E46D8 800D5728 86110004 */  lh         $s1, 0x4($s0)
    /* E46DC 800D572C 52340004 */  beql       $s1, $s4, .L800D5740_E46F0
    /* E46E0 800D5730 8FBF0034 */   lw        $ra, 0x34($sp)
    /* E46E4 800D5734 1635FFEC */  bne        $s1, $s5, .L800D56E8_E4698
    /* E46E8 800D5738 00000000 */   nop
  .L800D573C_E46EC:
    /* E46EC 800D573C 8FBF0034 */  lw         $ra, 0x34($sp)
  .L800D5740_E46F0:
    /* E46F0 800D5740 8FB0001C */  lw         $s0, 0x1C($sp)
    /* E46F4 800D5744 8FB10020 */  lw         $s1, 0x20($sp)
    /* E46F8 800D5748 8FB20024 */  lw         $s2, 0x24($sp)
    /* E46FC 800D574C 8FB30028 */  lw         $s3, 0x28($sp)
    /* E4700 800D5750 8FB4002C */  lw         $s4, 0x2C($sp)
    /* E4704 800D5754 8FB50030 */  lw         $s5, 0x30($sp)
    /* E4708 800D5758 03E00008 */  jr         $ra
    /* E470C 800D575C 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_800D5684_E4634
