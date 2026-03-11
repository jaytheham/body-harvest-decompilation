nonmatching func_800FF90C_10E8BC, 0x78

glabel func_800FF90C_10E8BC
    /* 10E8BC 800FF90C 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10E8C0 800FF910 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10E8C4 800FF914 A4A00000 */  sh         $zero, 0x0($a1)
    /* 10E8C8 800FF918 A4A00002 */  sh         $zero, 0x2($a1)
    /* 10E8CC 800FF91C 3C0E8016 */  lui        $t6, %hi(D_80159318)
    /* 10E8D0 800FF920 85CE9318 */  lh         $t6, %lo(D_80159318)($t6)
    /* 10E8D4 800FF924 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10E8D8 800FF928 0004C900 */  sll        $t9, $a0, 4
    /* 10E8DC 800FF92C 3C098014 */  lui        $t1, %hi(D_8013FDA8)
    /* 10E8E0 800FF930 000E7823 */  negu       $t7, $t6
    /* 10E8E4 800FF934 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10E8E8 800FF938 AFA40018 */  sw         $a0, 0x18($sp)
    /* 10E8EC 800FF93C A4AF0004 */  sh         $t7, 0x4($a1)
    /* 10E8F0 800FF940 2529FDA8 */  addiu      $t1, $t1, %lo(D_8013FDA8)
    /* 10E8F4 800FF944 27280008 */  addiu      $t0, $t9, 0x8
    /* 10E8F8 800FF948 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10E8FC 800FF94C 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10E900 800FF950 01092021 */  addu       $a0, $t0, $t1
    /* 10E904 800FF954 0C000E74 */  jal        func_800039D0_45D0
    /* 10E908 800FF958 00003025 */   or        $a2, $zero, $zero
    /* 10E90C 800FF95C 3C048016 */  lui        $a0, %hi(D_801592C0)
    /* 10E910 800FF960 248492C0 */  addiu      $a0, $a0, %lo(D_801592C0)
    /* 10E914 800FF964 3C058006 */  lui        $a1, %hi(D_8005BB38)
    /* 10E918 800FF968 8CA5BB38 */  lw         $a1, %lo(D_8005BB38)($a1)
    /* 10E91C 800FF96C 0C008BFC */  jal        guMtxCatL
    /* 10E920 800FF970 00803025 */   or        $a2, $a0, $zero
    /* 10E924 800FF974 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10E928 800FF978 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10E92C 800FF97C 03E00008 */  jr         $ra
    /* 10E930 800FF980 00000000 */   nop
endlabel func_800FF90C_10E8BC
