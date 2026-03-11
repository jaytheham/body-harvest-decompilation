nonmatching func_802DBDD0_31FF20, 0xD4

glabel func_802DBDD0_31FF20
    /* 31FF20 802DBDD0 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 31FF24 802DBDD4 AFA40040 */  sw         $a0, 0x40($sp)
    /* 31FF28 802DBDD8 93AE0043 */  lbu        $t6, 0x43($sp)
    /* 31FF2C 802DBDDC 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 31FF30 802DBDE0 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 31FF34 802DBDE4 000E7880 */  sll        $t7, $t6, 2
    /* 31FF38 802DBDE8 01EE7821 */  addu       $t7, $t7, $t6
    /* 31FF3C 802DBDEC 000F7900 */  sll        $t7, $t7, 4
    /* 31FF40 802DBDF0 01F81021 */  addu       $v0, $t7, $t8
    /* 31FF44 802DBDF4 8C590020 */  lw         $t9, 0x20($v0)
    /* 31FF48 802DBDF8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 31FF4C 802DBDFC 24070096 */  addiu      $a3, $zero, 0x96
    /* 31FF50 802DBE00 001942C0 */  sll        $t0, $t9, 11
    /* 31FF54 802DBE04 0500000F */  bltz       $t0, .L802DBE44_31FF94
    /* 31FF58 802DBE08 24090008 */   addiu     $t1, $zero, 0x8
    /* 31FF5C 802DBE0C 84440000 */  lh         $a0, 0x0($v0)
    /* 31FF60 802DBE10 84450002 */  lh         $a1, 0x2($v0)
    /* 31FF64 802DBE14 84460004 */  lh         $a2, 0x4($v0)
    /* 31FF68 802DBE18 AFA90010 */  sw         $t1, 0x10($sp)
    /* 31FF6C 802DBE1C 0C037E12 */  jal        func_800DF848_EE7F8
    /* 31FF70 802DBE20 AFA20024 */   sw        $v0, 0x24($sp)
    /* 31FF74 802DBE24 8FA20024 */  lw         $v0, 0x24($sp)
    /* 31FF78 802DBE28 240A000A */  addiu      $t2, $zero, 0xA
    /* 31FF7C 802DBE2C 93A40043 */  lbu        $a0, 0x43($sp)
    /* 31FF80 802DBE30 2405000F */  addiu      $a1, $zero, 0xF
    /* 31FF84 802DBE34 0C04DD1A */  jal        func_80137468_146418
    /* 31FF88 802DBE38 A44A002C */   sh        $t2, 0x2C($v0)
    /* 31FF8C 802DBE3C 10000016 */  b          .L802DBE98_31FFE8
    /* 31FF90 802DBE40 8FBF001C */   lw        $ra, 0x1C($sp)
  .L802DBE44_31FF94:
    /* 31FF94 802DBE44 8443002C */  lh         $v1, 0x2C($v0)
    /* 31FF98 802DBE48 24070096 */  addiu      $a3, $zero, 0x96
    /* 31FF9C 802DBE4C 04610004 */  bgez       $v1, .L802DBE60_31FFB0
    /* 31FFA0 802DBE50 306B0001 */   andi      $t3, $v1, 0x1
    /* 31FFA4 802DBE54 11600002 */  beqz       $t3, .L802DBE60_31FFB0
    /* 31FFA8 802DBE58 00000000 */   nop
    /* 31FFAC 802DBE5C 256BFFFE */  addiu      $t3, $t3, -0x2
  .L802DBE60_31FFB0:
    /* 31FFB0 802DBE60 1560000C */  bnez       $t3, .L802DBE94_31FFE4
    /* 31FFB4 802DBE64 00036880 */   sll       $t5, $v1, 2
    /* 31FFB8 802DBE68 844C0002 */  lh         $t4, 0x2($v0)
    /* 31FFBC 802DBE6C 01A36821 */  addu       $t5, $t5, $v1
    /* 31FFC0 802DBE70 000D68C0 */  sll        $t5, $t5, 3
    /* 31FFC4 802DBE74 018D2823 */  subu       $a1, $t4, $t5
    /* 31FFC8 802DBE78 24A50190 */  addiu      $a1, $a1, 0x190
    /* 31FFCC 802DBE7C 00057400 */  sll        $t6, $a1, 16
    /* 31FFD0 802DBE80 000E2C03 */  sra        $a1, $t6, 16
    /* 31FFD4 802DBE84 84440000 */  lh         $a0, 0x0($v0)
    /* 31FFD8 802DBE88 84460004 */  lh         $a2, 0x4($v0)
    /* 31FFDC 802DBE8C 0C037E8D */  jal        func_800DFA34_EE9E4
    /* 31FFE0 802DBE90 AFA00010 */   sw        $zero, 0x10($sp)
  .L802DBE94_31FFE4:
    /* 31FFE4 802DBE94 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802DBE98_31FFE8:
    /* 31FFE8 802DBE98 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 31FFEC 802DBE9C 03E00008 */  jr         $ra
    /* 31FFF0 802DBEA0 00000000 */   nop
endlabel func_802DBDD0_31FF20
