nonmatching func_800DA6F0_E96A0, 0xDC

glabel func_800DA6F0_E96A0
    /* E96A0 800DA6F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* E96A4 800DA6F4 AFA60030 */  sw         $a2, 0x30($sp)
    /* E96A8 800DA6F8 87AE0032 */  lh         $t6, 0x32($sp)
    /* E96AC 800DA6FC AFA40028 */  sw         $a0, 0x28($sp)
    /* E96B0 800DA700 AFBF0024 */  sw         $ra, 0x24($sp)
    /* E96B4 800DA704 AFA5002C */  sw         $a1, 0x2C($sp)
    /* E96B8 800DA708 AFA70034 */  sw         $a3, 0x34($sp)
    /* E96BC 800DA70C 3C04800E */  lui        $a0, %hi(func_800DA510_E94C0)
    /* E96C0 800DA710 AFB00020 */  sw         $s0, 0x20($sp)
    /* E96C4 800DA714 2484A510 */  addiu      $a0, $a0, %lo(func_800DA510_E94C0)
    /* E96C8 800DA718 87A7002E */  lh         $a3, 0x2E($sp)
    /* E96CC 800DA71C 24057FFF */  addiu      $a1, $zero, 0x7FFF
    /* E96D0 800DA720 87A6002A */  lh         $a2, 0x2A($sp)
    /* E96D4 800DA724 0C03667D */  jal        func_800D99F4_E89A4
    /* E96D8 800DA728 AFAE0010 */   sw        $t6, 0x10($sp)
    /* E96DC 800DA72C 00028400 */  sll        $s0, $v0, 16
    /* E96E0 800DA730 00107C03 */  sra        $t7, $s0, 16
    /* E96E4 800DA734 2401FFFD */  addiu      $at, $zero, -0x3
    /* E96E8 800DA738 1041001F */  beq        $v0, $at, .L800DA7B8_E9768
    /* E96EC 800DA73C 01E08025 */   or        $s0, $t7, $zero
    /* E96F0 800DA740 000F2400 */  sll        $a0, $t7, 16
    /* E96F4 800DA744 0004C403 */  sra        $t8, $a0, 16
    /* E96F8 800DA748 03002025 */  or         $a0, $t8, $zero
    /* E96FC 800DA74C 00002825 */  or         $a1, $zero, $zero
    /* E9700 800DA750 0C0366A3 */  jal        func_800D9A8C_E8A3C
    /* E9704 800DA754 87A6002A */   lh        $a2, 0x2A($sp)
    /* E9708 800DA758 00102400 */  sll        $a0, $s0, 16
    /* E970C 800DA75C 0004CC03 */  sra        $t9, $a0, 16
    /* E9710 800DA760 03202025 */  or         $a0, $t9, $zero
    /* E9714 800DA764 24050001 */  addiu      $a1, $zero, 0x1
    /* E9718 800DA768 0C0366A3 */  jal        func_800D9A8C_E8A3C
    /* E971C 800DA76C 87A6002E */   lh        $a2, 0x2E($sp)
    /* E9720 800DA770 00102400 */  sll        $a0, $s0, 16
    /* E9724 800DA774 00044403 */  sra        $t0, $a0, 16
    /* E9728 800DA778 01002025 */  or         $a0, $t0, $zero
    /* E972C 800DA77C 24050002 */  addiu      $a1, $zero, 0x2
    /* E9730 800DA780 0C0366A3 */  jal        func_800D9A8C_E8A3C
    /* E9734 800DA784 87A60032 */   lh        $a2, 0x32($sp)
    /* E9738 800DA788 00102400 */  sll        $a0, $s0, 16
    /* E973C 800DA78C 00044C03 */  sra        $t1, $a0, 16
    /* E9740 800DA790 01202025 */  or         $a0, $t1, $zero
    /* E9744 800DA794 24050003 */  addiu      $a1, $zero, 0x3
    /* E9748 800DA798 0C0366A3 */  jal        func_800D9A8C_E8A3C
    /* E974C 800DA79C 87A60036 */   lh        $a2, 0x36($sp)
    /* E9750 800DA7A0 00102400 */  sll        $a0, $s0, 16
    /* E9754 800DA7A4 00045403 */  sra        $t2, $a0, 16
    /* E9758 800DA7A8 01402025 */  or         $a0, $t2, $zero
    /* E975C 800DA7AC 24050004 */  addiu      $a1, $zero, 0x4
    /* E9760 800DA7B0 0C0366A3 */  jal        func_800D9A8C_E8A3C
    /* E9764 800DA7B4 2406FFFD */   addiu     $a2, $zero, -0x3
  .L800DA7B8_E9768:
    /* E9768 800DA7B8 8FBF0024 */  lw         $ra, 0x24($sp)
    /* E976C 800DA7BC 02001025 */  or         $v0, $s0, $zero
    /* E9770 800DA7C0 8FB00020 */  lw         $s0, 0x20($sp)
    /* E9774 800DA7C4 03E00008 */  jr         $ra
    /* E9778 800DA7C8 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_800DA6F0_E96A0
