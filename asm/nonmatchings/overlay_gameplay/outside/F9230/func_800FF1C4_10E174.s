nonmatching func_800FF1C4_10E174, 0x94

glabel func_800FF1C4_10E174
    /* 10E174 800FF1C4 3C028005 */  lui        $v0, %hi(D_80052B48)
    /* 10E178 800FF1C8 24422B48 */  addiu      $v0, $v0, %lo(D_80052B48)
    /* 10E17C 800FF1CC A4400000 */  sh         $zero, 0x0($v0)
    /* 10E180 800FF1D0 A4400002 */  sh         $zero, 0x2($v0)
    /* 10E184 800FF1D4 3C068016 */  lui        $a2, %hi(D_80159274)
    /* 10E188 800FF1D8 94C69274 */  lhu        $a2, %lo(D_80159274)($a2)
    /* 10E18C 800FF1DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10E190 800FF1E0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10E194 800FF1E4 AFA40018 */  sw         $a0, 0x18($sp)
    /* 10E198 800FF1E8 000672C0 */  sll        $t6, $a2, 11
    /* 10E19C 800FF1EC 31C6FFFF */  andi       $a2, $t6, 0xFFFF
    /* 10E1A0 800FF1F0 00002025 */  or         $a0, $zero, $zero
    /* 10E1A4 800FF1F4 0C001969 */  jal        func_800065A4_71A4
    /* 10E1A8 800FF1F8 2405F5D8 */   addiu     $a1, $zero, -0xA28
    /* 10E1AC 800FF1FC 8FB80018 */  lw         $t8, 0x18($sp)
    /* 10E1B0 800FF200 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10E1B4 800FF204 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10E1B8 800FF208 3C098014 */  lui        $t1, %hi(D_8013FDA8)
    /* 10E1BC 800FF20C 0018C900 */  sll        $t9, $t8, 4
    /* 10E1C0 800FF210 A4A20004 */  sh         $v0, 0x4($a1)
    /* 10E1C4 800FF214 27280008 */  addiu      $t0, $t9, 0x8
    /* 10E1C8 800FF218 2529FDA8 */  addiu      $t1, $t1, %lo(D_8013FDA8)
    /* 10E1CC 800FF21C 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10E1D0 800FF220 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10E1D4 800FF224 01092021 */  addu       $a0, $t0, $t1
    /* 10E1D8 800FF228 0C000E74 */  jal        func_800039D0_45D0
    /* 10E1DC 800FF22C 00003025 */   or        $a2, $zero, $zero
    /* 10E1E0 800FF230 3C058016 */  lui        $a1, %hi(D_801592C0)
    /* 10E1E4 800FF234 24A592C0 */  addiu      $a1, $a1, %lo(D_801592C0)
    /* 10E1E8 800FF238 3C048006 */  lui        $a0, %hi(D_8005BB38)
    /* 10E1EC 800FF23C 8C84BB38 */  lw         $a0, %lo(D_8005BB38)($a0)
    /* 10E1F0 800FF240 0C008BFC */  jal        guMtxCatL
    /* 10E1F4 800FF244 00A03025 */   or        $a2, $a1, $zero
    /* 10E1F8 800FF248 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10E1FC 800FF24C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10E200 800FF250 03E00008 */  jr         $ra
    /* 10E204 800FF254 00000000 */   nop
endlabel func_800FF1C4_10E174
