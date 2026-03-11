nonmatching func_800FF720_10E6D0, 0x74

glabel func_800FF720_10E6D0
    /* 10E6D0 800FF720 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10E6D4 800FF724 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10E6D8 800FF728 A4A00000 */  sh         $zero, 0x0($a1)
    /* 10E6DC 800FF72C A4A00002 */  sh         $zero, 0x2($a1)
    /* 10E6E0 800FF730 3C0E8016 */  lui        $t6, %hi(D_80159308)
    /* 10E6E4 800FF734 85CE9308 */  lh         $t6, %lo(D_80159308)($t6)
    /* 10E6E8 800FF738 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10E6EC 800FF73C 0004C100 */  sll        $t8, $a0, 4
    /* 10E6F0 800FF740 3C088014 */  lui        $t0, %hi(D_8013FDA8)
    /* 10E6F4 800FF744 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10E6F8 800FF748 AFA40018 */  sw         $a0, 0x18($sp)
    /* 10E6FC 800FF74C 2508FDA8 */  addiu      $t0, $t0, %lo(D_8013FDA8)
    /* 10E700 800FF750 27190008 */  addiu      $t9, $t8, 0x8
    /* 10E704 800FF754 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10E708 800FF758 A4AE0004 */  sh         $t6, 0x4($a1)
    /* 10E70C 800FF75C 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10E710 800FF760 03282021 */  addu       $a0, $t9, $t0
    /* 10E714 800FF764 0C000E74 */  jal        func_800039D0_45D0
    /* 10E718 800FF768 00003025 */   or        $a2, $zero, $zero
    /* 10E71C 800FF76C 3C058016 */  lui        $a1, %hi(D_801592C0)
    /* 10E720 800FF770 24A592C0 */  addiu      $a1, $a1, %lo(D_801592C0)
    /* 10E724 800FF774 3C048006 */  lui        $a0, %hi(D_8005BB38)
    /* 10E728 800FF778 8C84BB38 */  lw         $a0, %lo(D_8005BB38)($a0)
    /* 10E72C 800FF77C 0C008BFC */  jal        guMtxCatL
    /* 10E730 800FF780 00A03025 */   or        $a2, $a1, $zero
    /* 10E734 800FF784 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10E738 800FF788 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10E73C 800FF78C 03E00008 */  jr         $ra
    /* 10E740 800FF790 00000000 */   nop
endlabel func_800FF720_10E6D0
