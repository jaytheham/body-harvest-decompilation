nonmatching func_800FF984_10E934, 0x7C

glabel func_800FF984_10E934
    /* 10E934 800FF984 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10E938 800FF988 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10E93C 800FF98C A4A00000 */  sh         $zero, 0x0($a1)
    /* 10E940 800FF990 A4A00002 */  sh         $zero, 0x2($a1)
    /* 10E944 800FF994 3C0E8016 */  lui        $t6, %hi(D_80159318)
    /* 10E948 800FF998 85CE9318 */  lh         $t6, %lo(D_80159318)($t6)
    /* 10E94C 800FF99C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10E950 800FF9A0 240FF04C */  addiu      $t7, $zero, -0xFB4
    /* 10E954 800FF9A4 00044100 */  sll        $t0, $a0, 4
    /* 10E958 800FF9A8 3C0A8014 */  lui        $t2, %hi(D_8013FDA8)
    /* 10E95C 800FF9AC 01EEC023 */  subu       $t8, $t7, $t6
    /* 10E960 800FF9B0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10E964 800FF9B4 AFA40018 */  sw         $a0, 0x18($sp)
    /* 10E968 800FF9B8 A4B80004 */  sh         $t8, 0x4($a1)
    /* 10E96C 800FF9BC 254AFDA8 */  addiu      $t2, $t2, %lo(D_8013FDA8)
    /* 10E970 800FF9C0 25090008 */  addiu      $t1, $t0, 0x8
    /* 10E974 800FF9C4 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10E978 800FF9C8 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10E97C 800FF9CC 012A2021 */  addu       $a0, $t1, $t2
    /* 10E980 800FF9D0 0C000E74 */  jal        func_800039D0_45D0
    /* 10E984 800FF9D4 00003025 */   or        $a2, $zero, $zero
    /* 10E988 800FF9D8 3C048016 */  lui        $a0, %hi(D_801592C0)
    /* 10E98C 800FF9DC 248492C0 */  addiu      $a0, $a0, %lo(D_801592C0)
    /* 10E990 800FF9E0 3C058006 */  lui        $a1, %hi(D_8005BB38)
    /* 10E994 800FF9E4 8CA5BB38 */  lw         $a1, %lo(D_8005BB38)($a1)
    /* 10E998 800FF9E8 0C008BFC */  jal        guMtxCatL
    /* 10E99C 800FF9EC 00803025 */   or        $a2, $a0, $zero
    /* 10E9A0 800FF9F0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10E9A4 800FF9F4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10E9A8 800FF9F8 03E00008 */  jr         $ra
    /* 10E9AC 800FF9FC 00000000 */   nop
endlabel func_800FF984_10E934
