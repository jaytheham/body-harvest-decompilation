nonmatching func_800FF88C_10E83C, 0x80

glabel func_800FF88C_10E83C
    /* 10E83C 800FF88C 3C038005 */  lui        $v1, %hi(D_80052B2C)
    /* 10E840 800FF890 8C632B2C */  lw         $v1, %lo(D_80052B2C)($v1)
    /* 10E844 800FF894 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10E848 800FF898 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10E84C 800FF89C AFA40018 */  sw         $a0, 0x18($sp)
    /* 10E850 800FF8A0 84620036 */  lh         $v0, 0x36($v1)
    /* 10E854 800FF8A4 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10E858 800FF8A8 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10E85C 800FF8AC 2841D8F0 */  slti       $at, $v0, -0x2710
    /* 10E860 800FF8B0 10200004 */  beqz       $at, .L800FF8C4_10E874
    /* 10E864 800FF8B4 3C088014 */   lui       $t0, %hi(D_8013FDA8)
    /* 10E868 800FF8B8 240ED8F0 */  addiu      $t6, $zero, -0x2710
    /* 10E86C 800FF8BC A46E0036 */  sh         $t6, 0x36($v1)
    /* 10E870 800FF8C0 2402D8F0 */  addiu      $v0, $zero, -0x2710
  .L800FF8C4_10E874:
    /* 10E874 800FF8C4 18400002 */  blez       $v0, .L800FF8D0_10E880
    /* 10E878 800FF8C8 2508FDA8 */   addiu     $t0, $t0, %lo(D_8013FDA8)
    /* 10E87C 800FF8CC 00001025 */  or         $v0, $zero, $zero
  .L800FF8D0_10E880:
    /* 10E880 800FF8D0 8FAF0018 */  lw         $t7, 0x18($sp)
    /* 10E884 800FF8D4 A4A20000 */  sh         $v0, 0x0($a1)
    /* 10E888 800FF8D8 A4A00002 */  sh         $zero, 0x2($a1)
    /* 10E88C 800FF8DC 000FC100 */  sll        $t8, $t7, 4
    /* 10E890 800FF8E0 A4A00004 */  sh         $zero, 0x4($a1)
    /* 10E894 800FF8E4 27190008 */  addiu      $t9, $t8, 0x8
    /* 10E898 800FF8E8 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10E89C 800FF8EC 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10E8A0 800FF8F0 03282021 */  addu       $a0, $t9, $t0
    /* 10E8A4 800FF8F4 0C000E74 */  jal        func_800039D0_45D0
    /* 10E8A8 800FF8F8 00003025 */   or        $a2, $zero, $zero
    /* 10E8AC 800FF8FC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10E8B0 800FF900 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10E8B4 800FF904 03E00008 */  jr         $ra
    /* 10E8B8 800FF908 00000000 */   nop
endlabel func_800FF88C_10E83C
