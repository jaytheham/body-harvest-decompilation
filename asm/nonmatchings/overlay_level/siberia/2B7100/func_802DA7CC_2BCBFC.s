nonmatching func_802DA7CC_2BCBFC, 0x88

glabel func_802DA7CC_2BCBFC
    /* 2BCBFC 802DA7CC 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2BCC00 802DA7D0 000E7880 */  sll        $t7, $t6, 2
    /* 2BCC04 802DA7D4 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BCC08 802DA7D8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BCC0C 802DA7DC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BCC10 802DA7E0 000F7900 */  sll        $t7, $t7, 4
    /* 2BCC14 802DA7E4 01F81021 */  addu       $v0, $t7, $t8
    /* 2BCC18 802DA7E8 8C590020 */  lw         $t9, 0x20($v0)
    /* 2BCC1C 802DA7EC 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 2BCC20 802DA7F0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2BCC24 802DA7F4 001942C0 */  sll        $t0, $t9, 11
    /* 2BCC28 802DA7F8 AFA40028 */  sw         $a0, 0x28($sp)
    /* 2BCC2C 802DA7FC 05000011 */  bltz       $t0, .L802DA844_2BCC74
    /* 2BCC30 802DA800 9043001A */   lbu       $v1, 0x1A($v0)
    /* 2BCC34 802DA804 00034880 */  sll        $t1, $v1, 2
    /* 2BCC38 802DA808 01234823 */  subu       $t1, $t1, $v1
    /* 2BCC3C 802DA80C 00094880 */  sll        $t1, $t1, 2
    /* 2BCC40 802DA810 01234821 */  addu       $t1, $t1, $v1
    /* 2BCC44 802DA814 000948C0 */  sll        $t1, $t1, 3
    /* 2BCC48 802DA818 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 2BCC4C 802DA81C 00E93821 */  addu       $a3, $a3, $t1
    /* 2BCC50 802DA820 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 2BCC54 802DA824 84440000 */  lh         $a0, 0x0($v0)
    /* 2BCC58 802DA828 84450002 */  lh         $a1, 0x2($v0)
    /* 2BCC5C 802DA82C 84460004 */  lh         $a2, 0x4($v0)
    /* 2BCC60 802DA830 AFA00010 */  sw         $zero, 0x10($sp)
    /* 2BCC64 802DA834 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2BCC68 802DA838 AFA20020 */   sw        $v0, 0x20($sp)
    /* 2BCC6C 802DA83C 8FA20020 */  lw         $v0, 0x20($sp)
    /* 2BCC70 802DA840 A440002C */  sh         $zero, 0x2C($v0)
  .L802DA844_2BCC74:
    /* 2BCC74 802DA844 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 2BCC78 802DA848 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 2BCC7C 802DA84C 03E00008 */  jr         $ra
    /* 2BCC80 802DA850 00000000 */   nop
endlabel func_802DA7CC_2BCBFC
