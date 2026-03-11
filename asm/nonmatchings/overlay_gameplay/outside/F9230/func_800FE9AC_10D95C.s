nonmatching func_800FE9AC_10D95C, 0x80

glabel func_800FE9AC_10D95C
    /* 10D95C 800FE9AC 3C0E8005 */  lui        $t6, %hi(D_80052A8C)
    /* 10D960 800FE9B0 8DCE2A8C */  lw         $t6, %lo(D_80052A8C)($t6)
    /* 10D964 800FE9B4 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10D968 800FE9B8 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10D96C 800FE9BC 000E7900 */  sll        $t7, $t6, 4
    /* 10D970 800FE9C0 01EE7821 */  addu       $t7, $t7, $t6
    /* 10D974 800FE9C4 000F78C0 */  sll        $t7, $t7, 3
    /* 10D978 800FE9C8 01EE7821 */  addu       $t7, $t7, $t6
    /* 10D97C 800FE9CC 000F7880 */  sll        $t7, $t7, 2
    /* 10D980 800FE9D0 01EE7823 */  subu       $t7, $t7, $t6
    /* 10D984 800FE9D4 000F78C0 */  sll        $t7, $t7, 3
    /* 10D988 800FE9D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10D98C 800FE9DC 01EE7821 */  addu       $t7, $t7, $t6
    /* 10D990 800FE9E0 000F7840 */  sll        $t7, $t7, 1
    /* 10D994 800FE9E4 0004C900 */  sll        $t9, $a0, 4
    /* 10D998 800FE9E8 3C098014 */  lui        $t1, %hi(D_8013FDA8)
    /* 10D99C 800FE9EC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10D9A0 800FE9F0 AFA40018 */  sw         $a0, 0x18($sp)
    /* 10D9A4 800FE9F4 A4AF0000 */  sh         $t7, 0x0($a1)
    /* 10D9A8 800FE9F8 A4A00002 */  sh         $zero, 0x2($a1)
    /* 10D9AC 800FE9FC A4A00004 */  sh         $zero, 0x4($a1)
    /* 10D9B0 800FEA00 2529FDA8 */  addiu      $t1, $t1, %lo(D_8013FDA8)
    /* 10D9B4 800FEA04 27280008 */  addiu      $t0, $t9, 0x8
    /* 10D9B8 800FEA08 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10D9BC 800FEA0C 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10D9C0 800FEA10 01092021 */  addu       $a0, $t0, $t1
    /* 10D9C4 800FEA14 0C000E74 */  jal        func_800039D0_45D0
    /* 10D9C8 800FEA18 00003025 */   or        $a2, $zero, $zero
    /* 10D9CC 800FEA1C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10D9D0 800FEA20 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10D9D4 800FEA24 03E00008 */  jr         $ra
    /* 10D9D8 800FEA28 00000000 */   nop
endlabel func_800FE9AC_10D95C
