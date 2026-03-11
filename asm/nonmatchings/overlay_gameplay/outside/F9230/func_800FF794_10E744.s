nonmatching func_800FF794_10E744, 0x78

glabel func_800FF794_10E744
    /* 10E744 800FF794 3C0E8005 */  lui        $t6, %hi(D_80052B2C)
    /* 10E748 800FF798 8DCE2B2C */  lw         $t6, %lo(D_80052B2C)($t6)
    /* 10E74C 800FF79C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10E750 800FF7A0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10E754 800FF7A4 AFA40018 */  sw         $a0, 0x18($sp)
    /* 10E758 800FF7A8 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10E75C 800FF7AC 85CF0036 */  lh         $t7, 0x36($t6)
    /* 10E760 800FF7B0 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10E764 800FF7B4 0004C900 */  sll        $t9, $a0, 4
    /* 10E768 800FF7B8 3C098014 */  lui        $t1, %hi(D_8013FDA8)
    /* 10E76C 800FF7BC A4A00002 */  sh         $zero, 0x2($a1)
    /* 10E770 800FF7C0 A4A00004 */  sh         $zero, 0x4($a1)
    /* 10E774 800FF7C4 2529FDA8 */  addiu      $t1, $t1, %lo(D_8013FDA8)
    /* 10E778 800FF7C8 27280008 */  addiu      $t0, $t9, 0x8
    /* 10E77C 800FF7CC 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10E780 800FF7D0 A4AF0000 */  sh         $t7, 0x0($a1)
    /* 10E784 800FF7D4 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10E788 800FF7D8 01092021 */  addu       $a0, $t0, $t1
    /* 10E78C 800FF7DC 0C000E74 */  jal        func_800039D0_45D0
    /* 10E790 800FF7E0 00003025 */   or        $a2, $zero, $zero
    /* 10E794 800FF7E4 3C058016 */  lui        $a1, %hi(D_801592C0)
    /* 10E798 800FF7E8 24A592C0 */  addiu      $a1, $a1, %lo(D_801592C0)
    /* 10E79C 800FF7EC 3C048006 */  lui        $a0, %hi(D_8005BB38)
    /* 10E7A0 800FF7F0 8C84BB38 */  lw         $a0, %lo(D_8005BB38)($a0)
    /* 10E7A4 800FF7F4 0C008BFC */  jal        guMtxCatL
    /* 10E7A8 800FF7F8 00A03025 */   or        $a2, $a1, $zero
    /* 10E7AC 800FF7FC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10E7B0 800FF800 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10E7B4 800FF804 03E00008 */  jr         $ra
    /* 10E7B8 800FF808 00000000 */   nop
endlabel func_800FF794_10E744
