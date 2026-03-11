nonmatching func_800D7790_E6740, 0xE0

glabel func_800D7790_E6740
    /* E6740 800D7790 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* E6744 800D7794 AFB10020 */  sw         $s1, 0x20($sp)
    /* E6748 800D7798 3C118015 */  lui        $s1, %hi(D_801542CA)
    /* E674C 800D779C 863142CA */  lh         $s1, %lo(D_801542CA)($s1)
    /* E6750 800D77A0 AFB50030 */  sw         $s5, 0x30($sp)
    /* E6754 800D77A4 2415FFFB */  addiu      $s5, $zero, -0x5
    /* E6758 800D77A8 AFBF0034 */  sw         $ra, 0x34($sp)
    /* E675C 800D77AC AFB4002C */  sw         $s4, 0x2C($sp)
    /* E6760 800D77B0 AFB30028 */  sw         $s3, 0x28($sp)
    /* E6764 800D77B4 AFB20024 */  sw         $s2, 0x24($sp)
    /* E6768 800D77B8 12350003 */  beq        $s1, $s5, .L800D77C8_E6778
    /* E676C 800D77BC AFB0001C */   sw        $s0, 0x1C($sp)
    /* E6770 800D77C0 2414FFFA */  addiu      $s4, $zero, -0x6
    /* E6774 800D77C4 16340005 */  bne        $s1, $s4, .L800D77DC_E678C
  .L800D77C8_E6778:
    /* E6778 800D77C8 24040011 */   addiu     $a0, $zero, 0x11
    /* E677C 800D77CC 0C030506 */  jal        func_800C1418_D03C8
    /* E6780 800D77D0 24050001 */   addiu     $a1, $zero, 0x1
    /* E6784 800D77D4 1000001E */  b          .L800D7850_E6800
    /* E6788 800D77D8 8FBF0034 */   lw        $ra, 0x34($sp)
  .L800D77DC_E678C:
    /* E678C 800D77DC 5235001C */  beql       $s1, $s5, .L800D7850_E6800
    /* E6790 800D77E0 8FBF0034 */   lw        $ra, 0x34($sp)
    /* E6794 800D77E4 12340019 */  beq        $s1, $s4, .L800D784C_E67FC
    /* E6798 800D77E8 2413001C */   addiu     $s3, $zero, 0x1C
    /* E679C 800D77EC 3C128015 */  lui        $s2, %hi(D_80154318)
    /* E67A0 800D77F0 26524318 */  addiu      $s2, $s2, %lo(D_80154318)
  .L800D77F4_E67A4:
    /* E67A4 800D77F4 02330019 */  multu      $s1, $s3
    /* E67A8 800D77F8 24070009 */  addiu      $a3, $zero, 0x9
    /* E67AC 800D77FC 00007012 */  mflo       $t6
    /* E67B0 800D7800 024E8021 */  addu       $s0, $s2, $t6
    /* E67B4 800D7804 920F000E */  lbu        $t7, 0xE($s0)
    /* E67B8 800D7808 26020008 */  addiu      $v0, $s0, 0x8
    /* E67BC 800D780C 25F80001 */  addiu      $t8, $t7, 0x1
    /* E67C0 800D7810 331900FF */  andi       $t9, $t8, 0xFF
    /* E67C4 800D7814 2B210004 */  slti       $at, $t9, 0x4
    /* E67C8 800D7818 14200002 */  bnez       $at, .L800D7824_E67D4
    /* E67CC 800D781C A218000E */   sb        $t8, 0xE($s0)
    /* E67D0 800D7820 A200000E */  sb         $zero, 0xE($s0)
  .L800D7824_E67D4:
    /* E67D4 800D7824 84440000 */  lh         $a0, 0x0($v0)
    /* E67D8 800D7828 84450002 */  lh         $a1, 0x2($v0)
    /* E67DC 800D782C 84460004 */  lh         $a2, 0x4($v0)
    /* E67E0 800D7830 0C04DCDA */  jal        func_80137368_146318
    /* E67E4 800D7834 AFB10010 */   sw        $s1, 0x10($sp)
    /* E67E8 800D7838 86110004 */  lh         $s1, 0x4($s0)
    /* E67EC 800D783C 52350004 */  beql       $s1, $s5, .L800D7850_E6800
    /* E67F0 800D7840 8FBF0034 */   lw        $ra, 0x34($sp)
    /* E67F4 800D7844 1634FFEB */  bne        $s1, $s4, .L800D77F4_E67A4
    /* E67F8 800D7848 00000000 */   nop
  .L800D784C_E67FC:
    /* E67FC 800D784C 8FBF0034 */  lw         $ra, 0x34($sp)
  .L800D7850_E6800:
    /* E6800 800D7850 8FB0001C */  lw         $s0, 0x1C($sp)
    /* E6804 800D7854 8FB10020 */  lw         $s1, 0x20($sp)
    /* E6808 800D7858 8FB20024 */  lw         $s2, 0x24($sp)
    /* E680C 800D785C 8FB30028 */  lw         $s3, 0x28($sp)
    /* E6810 800D7860 8FB4002C */  lw         $s4, 0x2C($sp)
    /* E6814 800D7864 8FB50030 */  lw         $s5, 0x30($sp)
    /* E6818 800D7868 03E00008 */  jr         $ra
    /* E681C 800D786C 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_800D7790_E6740
