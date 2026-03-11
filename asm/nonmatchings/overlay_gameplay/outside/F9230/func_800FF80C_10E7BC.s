nonmatching func_800FF80C_10E7BC, 0x80

glabel func_800FF80C_10E7BC
    /* 10E7BC 800FF80C 3C038005 */  lui        $v1, %hi(D_80052B2C)
    /* 10E7C0 800FF810 8C632B2C */  lw         $v1, %lo(D_80052B2C)($v1)
    /* 10E7C4 800FF814 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10E7C8 800FF818 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10E7CC 800FF81C AFA40018 */  sw         $a0, 0x18($sp)
    /* 10E7D0 800FF820 84620036 */  lh         $v0, 0x36($v1)
    /* 10E7D4 800FF824 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10E7D8 800FF828 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10E7DC 800FF82C 04410002 */  bgez       $v0, .L800FF838_10E7E8
    /* 10E7E0 800FF830 3C088014 */   lui       $t0, %hi(D_8013FDA8)
    /* 10E7E4 800FF834 00001025 */  or         $v0, $zero, $zero
  .L800FF838_10E7E8:
    /* 10E7E8 800FF838 28412711 */  slti       $at, $v0, 0x2711
    /* 10E7EC 800FF83C 14200004 */  bnez       $at, .L800FF850_10E800
    /* 10E7F0 800FF840 2508FDA8 */   addiu     $t0, $t0, %lo(D_8013FDA8)
    /* 10E7F4 800FF844 240E2710 */  addiu      $t6, $zero, 0x2710
    /* 10E7F8 800FF848 A46E0036 */  sh         $t6, 0x36($v1)
    /* 10E7FC 800FF84C 24022710 */  addiu      $v0, $zero, 0x2710
  .L800FF850_10E800:
    /* 10E800 800FF850 8FAF0018 */  lw         $t7, 0x18($sp)
    /* 10E804 800FF854 A4A20000 */  sh         $v0, 0x0($a1)
    /* 10E808 800FF858 A4A00002 */  sh         $zero, 0x2($a1)
    /* 10E80C 800FF85C 000FC100 */  sll        $t8, $t7, 4
    /* 10E810 800FF860 A4A00004 */  sh         $zero, 0x4($a1)
    /* 10E814 800FF864 27190008 */  addiu      $t9, $t8, 0x8
    /* 10E818 800FF868 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10E81C 800FF86C 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10E820 800FF870 03282021 */  addu       $a0, $t9, $t0
    /* 10E824 800FF874 0C000E74 */  jal        func_800039D0_45D0
    /* 10E828 800FF878 00003025 */   or        $a2, $zero, $zero
    /* 10E82C 800FF87C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10E830 800FF880 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10E834 800FF884 03E00008 */  jr         $ra
    /* 10E838 800FF888 00000000 */   nop
endlabel func_800FF80C_10E7BC
