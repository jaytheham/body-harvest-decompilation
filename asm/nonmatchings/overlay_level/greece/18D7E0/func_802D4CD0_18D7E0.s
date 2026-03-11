nonmatching func_802D4CD0_18D7E0, 0x158

glabel func_802D4CD0_18D7E0
    /* 18D7E0 802D4CD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 18D7E4 802D4CD4 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 18D7E8 802D4CD8 28810014 */  slti       $at, $a0, 0x14
    /* 18D7EC 802D4CDC 00802825 */  or         $a1, $a0, $zero
    /* 18D7F0 802D4CE0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 18D7F4 802D4CE4 10200009 */  beqz       $at, .L802D4D0C_18D81C
    /* 18D7F8 802D4CE8 AFA40018 */   sw        $a0, 0x18($sp)
    /* 18D7FC 802D4CEC 00047080 */  sll        $t6, $a0, 2
    /* 18D800 802D4CF0 3C19802E */  lui        $t9, %hi(D_802DDBF4)
    /* 18D804 802D4CF4 032EC821 */  addu       $t9, $t9, $t6
    /* 18D808 802D4CF8 8F39DBF4 */  lw         $t9, %lo(D_802DDBF4)($t9)
    /* 18D80C 802D4CFC 0320F809 */  jalr       $t9
    /* 18D810 802D4D00 00000000 */   nop
    /* 18D814 802D4D04 10000045 */  b          .L802D4E1C_18D92C
    /* 18D818 802D4D08 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4D0C_18D81C:
    /* 18D81C 802D4D0C 28A10045 */  slti       $at, $a1, 0x45
    /* 18D820 802D4D10 14200006 */  bnez       $at, .L802D4D2C_18D83C
    /* 18D824 802D4D14 3C04802E */   lui       $a0, %hi(D_802DE2D0)
    /* 18D828 802D4D18 24010045 */  addiu      $at, $zero, 0x45
    /* 18D82C 802D4D1C 10A10034 */  beq        $a1, $at, .L802D4DF0_18D900
    /* 18D830 802D4D20 00000000 */   nop
    /* 18D834 802D4D24 1000003A */  b          .L802D4E10_18D920
    /* 18D838 802D4D28 00000000 */   nop
  .L802D4D2C_18D83C:
    /* 18D83C 802D4D2C 28A1001A */  slti       $at, $a1, 0x1A
    /* 18D840 802D4D30 14200006 */  bnez       $at, .L802D4D4C_18D85C
    /* 18D844 802D4D34 24AFFFEC */   addiu     $t7, $a1, -0x14
    /* 18D848 802D4D38 24010044 */  addiu      $at, $zero, 0x44
    /* 18D84C 802D4D3C 10A10030 */  beq        $a1, $at, .L802D4E00_18D910
    /* 18D850 802D4D40 00000000 */   nop
    /* 18D854 802D4D44 10000032 */  b          .L802D4E10_18D920
    /* 18D858 802D4D48 00000000 */   nop
  .L802D4D4C_18D85C:
    /* 18D85C 802D4D4C 2DE10006 */  sltiu      $at, $t7, 0x6
    /* 18D860 802D4D50 1020002F */  beqz       $at, .L802D4E10_18D920
    /* 18D864 802D4D54 000F7880 */   sll       $t7, $t7, 2
    /* 18D868 802D4D58 3C01802E */  lui        $at, %hi(jtbl_802DE338_overlay_level_greece)
    /* 18D86C 802D4D5C 002F0821 */  addu       $at, $at, $t7
    /* 18D870 802D4D60 8C2FE338 */  lw         $t7, %lo(jtbl_802DE338_overlay_level_greece)($at)
    /* 18D874 802D4D64 01E00008 */  jr         $t7
    /* 18D878 802D4D68 00000000 */   nop
    /* 18D87C 802D4D6C 3C04800F */  lui        $a0, %hi(func_800F1134_1000E4)
    /* 18D880 802D4D70 24841134 */  addiu      $a0, $a0, %lo(func_800F1134_1000E4)
    /* 18D884 802D4D74 24050004 */  addiu      $a1, $zero, 0x4
    /* 18D888 802D4D78 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 18D88C 802D4D7C 00003025 */   or        $a2, $zero, $zero
    /* 18D890 802D4D80 10000026 */  b          .L802D4E1C_18D92C
    /* 18D894 802D4D84 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18D898 802D4D88 3C04800F */  lui        $a0, %hi(func_800F1DDC_100D8C)
    /* 18D89C 802D4D8C 24841DDC */  addiu      $a0, $a0, %lo(func_800F1DDC_100D8C)
    /* 18D8A0 802D4D90 00002825 */  or         $a1, $zero, $zero
    /* 18D8A4 802D4D94 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 18D8A8 802D4D98 24060001 */   addiu     $a2, $zero, 0x1
    /* 18D8AC 802D4D9C 1000001F */  b          .L802D4E1C_18D92C
    /* 18D8B0 802D4DA0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18D8B4 802D4DA4 3C04802D */  lui        $a0, %hi(func_802D57A0_18E2B0)
    /* 18D8B8 802D4DA8 248457A0 */  addiu      $a0, $a0, %lo(func_802D57A0_18E2B0)
    /* 18D8BC 802D4DAC 24050005 */  addiu      $a1, $zero, 0x5
    /* 18D8C0 802D4DB0 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 18D8C4 802D4DB4 24060001 */   addiu     $a2, $zero, 0x1
    /* 18D8C8 802D4DB8 10000018 */  b          .L802D4E1C_18D92C
    /* 18D8CC 802D4DBC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18D8D0 802D4DC0 0C0B5BDF */  jal        func_802D6F7C_18FA8C
    /* 18D8D4 802D4DC4 00000000 */   nop
    /* 18D8D8 802D4DC8 10000014 */  b          .L802D4E1C_18D92C
    /* 18D8DC 802D4DCC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18D8E0 802D4DD0 0C0B5CCD */  jal        func_802D7334_18FE44
    /* 18D8E4 802D4DD4 00000000 */   nop
    /* 18D8E8 802D4DD8 10000010 */  b          .L802D4E1C_18D92C
    /* 18D8EC 802D4DDC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18D8F0 802D4DE0 0C0B5CD8 */  jal        func_802D7360_18FE70
    /* 18D8F4 802D4DE4 00000000 */   nop
    /* 18D8F8 802D4DE8 1000000C */  b          .L802D4E1C_18D92C
    /* 18D8FC 802D4DEC 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4DF0_18D900:
    /* 18D900 802D4DF0 0C0B5B48 */  jal        func_802D6D20_18F830
    /* 18D904 802D4DF4 00000000 */   nop
    /* 18D908 802D4DF8 10000008 */  b          .L802D4E1C_18D92C
    /* 18D90C 802D4DFC 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4E00_18D910:
    /* 18D910 802D4E00 0C001DA4 */  jal        func_80007690_8290
    /* 18D914 802D4E04 00000000 */   nop
    /* 18D918 802D4E08 10000004 */  b          .L802D4E1C_18D92C
    /* 18D91C 802D4E0C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D4E10_18D920:
    /* 18D920 802D4E10 0C00731B */  jal        osSyncPrintf
    /* 18D924 802D4E14 2484E2D0 */   addiu     $a0, $a0, %lo(D_802DE2D0)
    /* 18D928 802D4E18 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D4E1C_18D92C:
    /* 18D92C 802D4E1C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 18D930 802D4E20 03E00008 */  jr         $ra
    /* 18D934 802D4E24 00000000 */   nop
endlabel func_802D4CD0_18D7E0
