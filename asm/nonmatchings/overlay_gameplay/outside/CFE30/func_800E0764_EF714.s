nonmatching func_800E0764_EF714, 0x1D8

glabel func_800E0764_EF714
    /* EF714 800E0764 3C0F8003 */  lui        $t7, %hi(D_80031420)
    /* EF718 800E0768 8DEF1420 */  lw         $t7, %lo(D_80031420)($t7)
    /* EF71C 800E076C 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* EF720 800E0770 AFB00040 */  sw         $s0, 0x40($sp)
    /* EF724 800E0774 00048400 */  sll        $s0, $a0, 16
    /* EF728 800E0778 00107403 */  sra        $t6, $s0, 16
    /* EF72C 800E077C 24010003 */  addiu      $at, $zero, 0x3
    /* EF730 800E0780 31F80003 */  andi       $t8, $t7, 0x3
    /* EF734 800E0784 01C08025 */  or         $s0, $t6, $zero
    /* EF738 800E0788 AFBF0044 */  sw         $ra, 0x44($sp)
    /* EF73C 800E078C 17010066 */  bne        $t8, $at, .L800E0928_EF8D8
    /* EF740 800E0790 AFA40058 */   sw        $a0, 0x58($sp)
    /* EF744 800E0794 06010003 */  bgez       $s0, .L800E07A4_EF754
    /* EF748 800E0798 0010C903 */   sra       $t9, $s0, 4
    /* EF74C 800E079C 2601000F */  addiu      $at, $s0, 0xF
    /* EF750 800E07A0 0001C903 */  sra        $t9, $at, 4
  .L800E07A4_EF754:
    /* EF754 800E07A4 00194C00 */  sll        $t1, $t9, 16
    /* EF758 800E07A8 00098403 */  sra        $s0, $t1, 16
    /* EF75C 800E07AC 5E000003 */  bgtzl      $s0, .L800E07BC_EF76C
    /* EF760 800E07B0 2A010010 */   slti      $at, $s0, 0x10
    /* EF764 800E07B4 24100001 */  addiu      $s0, $zero, 0x1
    /* EF768 800E07B8 2A010010 */  slti       $at, $s0, 0x10
  .L800E07BC_EF76C:
    /* EF76C 800E07BC 14200002 */  bnez       $at, .L800E07C8_EF778
    /* EF770 800E07C0 00000000 */   nop
    /* EF774 800E07C4 2410000F */  addiu      $s0, $zero, 0xF
  .L800E07C8_EF778:
    /* EF778 800E07C8 0C000E38 */  jal        func_800038E0_44E0
    /* EF77C 800E07CC 00000000 */   nop
    /* EF780 800E07D0 0C000E38 */  jal        func_800038E0_44E0
    /* EF784 800E07D4 A7A2004C */   sh        $v0, 0x4C($sp)
    /* EF788 800E07D8 0C000E38 */  jal        func_800038E0_44E0
    /* EF78C 800E07DC A7A2004E */   sh        $v0, 0x4E($sp)
    /* EF790 800E07E0 0C000E38 */  jal        func_800038E0_44E0
    /* EF794 800E07E4 A7A20050 */   sh        $v0, 0x50($sp)
    /* EF798 800E07E8 0C000E38 */  jal        func_800038E0_44E0
    /* EF79C 800E07EC A7A20052 */   sh        $v0, 0x52($sp)
    /* EF7A0 800E07F0 97AB004C */  lhu        $t3, 0x4C($sp)
    /* EF7A4 800E07F4 24010014 */  addiu      $at, $zero, 0x14
    /* EF7A8 800E07F8 97B8004E */  lhu        $t8, 0x4E($sp)
    /* EF7AC 800E07FC 0161001A */  div        $zero, $t3, $at
    /* EF7B0 800E0800 00006010 */  mfhi       $t4
    /* EF7B4 800E0804 24080078 */  addiu      $t0, $zero, 0x78
    /* EF7B8 800E0808 97AB0050 */  lhu        $t3, 0x50($sp)
    /* EF7BC 800E080C 0308001A */  div        $zero, $t8, $t0
    /* EF7C0 800E0810 00003810 */  mfhi       $a3
    /* EF7C4 800E0814 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* EF7C8 800E0818 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* EF7CC 800E081C 0168001A */  div        $zero, $t3, $t0
    /* EF7D0 800E0820 846D0002 */  lh         $t5, 0x2($v1)
    /* EF7D4 800E0824 24E7FFC4 */  addiu      $a3, $a3, -0x3C
    /* EF7D8 800E0828 0007CE00 */  sll        $t9, $a3, 24
    /* EF7DC 800E082C 018D2821 */  addu       $a1, $t4, $t5
    /* EF7E0 800E0830 00006010 */  mfhi       $t4
    /* EF7E4 800E0834 00194E03 */  sra        $t1, $t9, 24
    /* EF7E8 800E0838 84640000 */  lh         $a0, 0x0($v1)
    /* EF7EC 800E083C 84660004 */  lh         $a2, 0x4($v1)
    /* EF7F0 800E0840 24A5001E */  addiu      $a1, $a1, 0x1E
    /* EF7F4 800E0844 00057400 */  sll        $t6, $a1, 16
    /* EF7F8 800E0848 000E7C03 */  sra        $t7, $t6, 16
    /* EF7FC 800E084C 258DFFC4 */  addiu      $t5, $t4, -0x3C
    /* EF800 800E0850 240A007F */  addiu      $t2, $zero, 0x7F
    /* EF804 800E0854 AFAA0010 */  sw         $t2, 0x10($sp)
    /* EF808 800E0858 260E000F */  addiu      $t6, $s0, 0xF
    /* EF80C 800E085C AFAE0018 */  sw         $t6, 0x18($sp)
    /* EF810 800E0860 AFAD0014 */  sw         $t5, 0x14($sp)
    /* EF814 800E0864 01E02825 */  or         $a1, $t7, $zero
    /* EF818 800E0868 15000002 */  bnez       $t0, .L800E0874_EF824
    /* EF81C 800E086C 00000000 */   nop
    /* EF820 800E0870 0007000D */  break      7
  .L800E0874_EF824:
    /* EF824 800E0874 2401FFFF */  addiu      $at, $zero, -0x1
    /* EF828 800E0878 15010004 */  bne        $t0, $at, .L800E088C_EF83C
    /* EF82C 800E087C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EF830 800E0880 17010002 */  bne        $t8, $at, .L800E088C_EF83C
    /* EF834 800E0884 00000000 */   nop
    /* EF838 800E0888 0006000D */  break      6
  .L800E088C_EF83C:
    /* EF83C 800E088C 97B80052 */  lhu        $t8, 0x52($sp)
    /* EF840 800E0890 01203825 */  or         $a3, $t1, $zero
    /* EF844 800E0894 15000002 */  bnez       $t0, .L800E08A0_EF850
    /* EF848 800E0898 00000000 */   nop
    /* EF84C 800E089C 0007000D */  break      7
  .L800E08A0_EF850:
    /* EF850 800E08A0 2401FFFF */  addiu      $at, $zero, -0x1
    /* EF854 800E08A4 15010004 */  bne        $t0, $at, .L800E08B8_EF868
    /* EF858 800E08A8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EF85C 800E08AC 15610002 */  bne        $t3, $at, .L800E08B8_EF868
    /* EF860 800E08B0 00000000 */   nop
    /* EF864 800E08B4 0006000D */  break      6
  .L800E08B8_EF868:
    /* EF868 800E08B8 0310001A */  div        $zero, $t8, $s0
    /* EF86C 800E08BC 0000C810 */  mfhi       $t9
    /* EF870 800E08C0 03304821 */  addu       $t1, $t9, $s0
    /* EF874 800E08C4 240F0004 */  addiu      $t7, $zero, 0x4
    /* EF878 800E08C8 240D0014 */  addiu      $t5, $zero, 0x14
    /* EF87C 800E08CC 240E00FF */  addiu      $t6, $zero, 0xFF
    /* EF880 800E08D0 240C00C8 */  addiu      $t4, $zero, 0xC8
    /* EF884 800E08D4 AFAC0028 */  sw         $t4, 0x28($sp)
    /* EF888 800E08D8 AFAE0034 */  sw         $t6, 0x34($sp)
    /* EF88C 800E08DC AFAD0030 */  sw         $t5, 0x30($sp)
    /* EF890 800E08E0 AFAF001C */  sw         $t7, 0x1C($sp)
    /* EF894 800E08E4 16000002 */  bnez       $s0, .L800E08F0_EF8A0
    /* EF898 800E08E8 00000000 */   nop
    /* EF89C 800E08EC 0007000D */  break      7
  .L800E08F0_EF8A0:
    /* EF8A0 800E08F0 2401FFFF */  addiu      $at, $zero, -0x1
    /* EF8A4 800E08F4 16010004 */  bne        $s0, $at, .L800E0908_EF8B8
    /* EF8A8 800E08F8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EF8AC 800E08FC 17010002 */  bne        $t8, $at, .L800E0908_EF8B8
    /* EF8B0 800E0900 00000000 */   nop
    /* EF8B4 800E0904 0006000D */  break      6
  .L800E0908_EF8B8:
    /* EF8B8 800E0908 2401005A */  addiu      $at, $zero, 0x5A
    /* EF8BC 800E090C 0041001A */  div        $zero, $v0, $at
    /* EF8C0 800E0910 00005010 */  mfhi       $t2
    /* EF8C4 800E0914 254B0028 */  addiu      $t3, $t2, 0x28
    /* EF8C8 800E0918 AFAB0024 */  sw         $t3, 0x24($sp)
    /* EF8CC 800E091C AFA90020 */  sw         $t1, 0x20($sp)
    /* EF8D0 800E0920 0C03297B */  jal        func_800CA5EC_D959C
    /* EF8D4 800E0924 AFA0002C */   sw        $zero, 0x2C($sp)
  .L800E0928_EF8D8:
    /* EF8D8 800E0928 8FBF0044 */  lw         $ra, 0x44($sp)
    /* EF8DC 800E092C 8FB00040 */  lw         $s0, 0x40($sp)
    /* EF8E0 800E0930 27BD0058 */  addiu      $sp, $sp, 0x58
    /* EF8E4 800E0934 03E00008 */  jr         $ra
    /* EF8E8 800E0938 00000000 */   nop
endlabel func_800E0764_EF714
