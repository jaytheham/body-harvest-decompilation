nonmatching func_80007C78_8878, 0xCC

glabel func_80007C78_8878
    /* 8878 80007C78 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 887C 80007C7C AFBF002C */  sw         $ra, 0x2C($sp)
    /* 8880 80007C80 AFB40028 */  sw         $s4, 0x28($sp)
    /* 8884 80007C84 AFB30024 */  sw         $s3, 0x24($sp)
    /* 8888 80007C88 AFB20020 */  sw         $s2, 0x20($sp)
    /* 888C 80007C8C AFB1001C */  sw         $s1, 0x1C($sp)
    /* 8890 80007C90 AFB00018 */  sw         $s0, 0x18($sp)
    /* 8894 80007C94 908E0002 */  lbu        $t6, 0x2($a0)
    /* 8898 80007C98 90900003 */  lbu        $s0, 0x3($a0)
    /* 889C 80007C9C 3C188005 */  lui        $t8, %hi(D_8004D348)
    /* 88A0 80007CA0 000E78C0 */  sll        $t7, $t6, 3
    /* 88A4 80007CA4 2718D348 */  addiu      $t8, $t8, %lo(D_8004D348)
    /* 88A8 80007CA8 3C048003 */  lui        $a0, %hi(D_80036FE4)
    /* 88AC 80007CAC 01EE7821 */  addu       $t7, $t7, $t6
    /* 88B0 80007CB0 01F88821 */  addu       $s1, $t7, $t8
    /* 88B4 80007CB4 0C00731B */  jal        osSyncPrintf
    /* 88B8 80007CB8 24846FE4 */   addiu     $a0, $a0, %lo(D_80036FE4)
    /* 88BC 80007CBC 02001025 */  or         $v0, $s0, $zero
    /* 88C0 80007CC0 12000015 */  beqz       $s0, .L80007D18_8918
    /* 88C4 80007CC4 2610FFFF */   addiu     $s0, $s0, -0x1
    /* 88C8 80007CC8 3C148003 */  lui        $s4, %hi(D_80036FF4)
    /* 88CC 80007CCC 3C128003 */  lui        $s2, %hi(D_80036FF0)
    /* 88D0 80007CD0 26526FF0 */  addiu      $s2, $s2, %lo(D_80036FF0)
    /* 88D4 80007CD4 26946FF4 */  addiu      $s4, $s4, %lo(D_80036FF4)
    /* 88D8 80007CD8 24130001 */  addiu      $s3, $zero, 0x1
  .L80007CDC_88DC:
    /* 88DC 80007CDC 02202025 */  or         $a0, $s1, $zero
    /* 88E0 80007CE0 0C001E88 */  jal        func_80007A20_8620
    /* 88E4 80007CE4 26310009 */   addiu     $s1, $s1, 0x9
    /* 88E8 80007CE8 2A010002 */  slti       $at, $s0, 0x2
    /* 88EC 80007CEC 14200003 */  bnez       $at, .L80007CFC_88FC
    /* 88F0 80007CF0 00000000 */   nop
    /* 88F4 80007CF4 0C00731B */  jal        osSyncPrintf
    /* 88F8 80007CF8 02402025 */   or        $a0, $s2, $zero
  .L80007CFC_88FC:
    /* 88FC 80007CFC 56130004 */  bnel       $s0, $s3, .L80007D10_8910
    /* 8900 80007D00 02001025 */   or        $v0, $s0, $zero
    /* 8904 80007D04 0C00731B */  jal        osSyncPrintf
    /* 8908 80007D08 02802025 */   or        $a0, $s4, $zero
    /* 890C 80007D0C 02001025 */  or         $v0, $s0, $zero
  .L80007D10_8910:
    /* 8910 80007D10 1600FFF2 */  bnez       $s0, .L80007CDC_88DC
    /* 8914 80007D14 2610FFFF */   addiu     $s0, $s0, -0x1
  .L80007D18_8918:
    /* 8918 80007D18 3C048003 */  lui        $a0, %hi(D_80036FFC)
    /* 891C 80007D1C 0C00731B */  jal        osSyncPrintf
    /* 8920 80007D20 24846FFC */   addiu     $a0, $a0, %lo(D_80036FFC)
    /* 8924 80007D24 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 8928 80007D28 8FB00018 */  lw         $s0, 0x18($sp)
    /* 892C 80007D2C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 8930 80007D30 8FB20020 */  lw         $s2, 0x20($sp)
    /* 8934 80007D34 8FB30024 */  lw         $s3, 0x24($sp)
    /* 8938 80007D38 8FB40028 */  lw         $s4, 0x28($sp)
    /* 893C 80007D3C 03E00008 */  jr         $ra
    /* 8940 80007D40 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_80007C78_8878
