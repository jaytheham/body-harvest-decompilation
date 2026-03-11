nonmatching func_800FEA2C_10D9DC, 0x74

glabel func_800FEA2C_10D9DC
    /* 10D9DC 800FEA2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10D9E0 800FEA30 AFA40018 */  sw         $a0, 0x18($sp)
    /* 10D9E4 800FEA34 8FAE0018 */  lw         $t6, 0x18($sp)
    /* 10D9E8 800FEA38 3C188014 */  lui        $t8, %hi(D_8013FDA8)
    /* 10D9EC 800FEA3C 2718FDA8 */  addiu      $t8, $t8, %lo(D_8013FDA8)
    /* 10D9F0 800FEA40 000E7900 */  sll        $t7, $t6, 4
    /* 10D9F4 800FEA44 01F81021 */  addu       $v0, $t7, $t8
    /* 10D9F8 800FEA48 84590008 */  lh         $t9, 0x8($v0)
    /* 10D9FC 800FEA4C 8448000A */  lh         $t0, 0xA($v0)
    /* 10DA00 800FEA50 3C048005 */  lui        $a0, %hi(D_80052B40)
    /* 10DA04 800FEA54 24842B40 */  addiu      $a0, $a0, %lo(D_80052B40)
    /* 10DA08 800FEA58 3C0A8016 */  lui        $t2, %hi(D_801591C0)
    /* 10DA0C 800FEA5C A4990000 */  sh         $t9, 0x0($a0)
    /* 10DA10 800FEA60 A4880002 */  sh         $t0, 0x2($a0)
    /* 10DA14 800FEA64 854A91C0 */  lh         $t2, %lo(D_801591C0)($t2)
    /* 10DA18 800FEA68 8449000C */  lh         $t1, 0xC($v0)
    /* 10DA1C 800FEA6C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10DA20 800FEA70 000A5840 */  sll        $t3, $t2, 1
    /* 10DA24 800FEA74 012B6023 */  subu       $t4, $t1, $t3
    /* 10DA28 800FEA78 A48C0004 */  sh         $t4, 0x4($a0)
    /* 10DA2C 800FEA7C 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10DA30 800FEA80 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10DA34 800FEA84 00002825 */  or         $a1, $zero, $zero
    /* 10DA38 800FEA88 0C000E74 */  jal        func_800039D0_45D0
    /* 10DA3C 800FEA8C 00003025 */   or        $a2, $zero, $zero
    /* 10DA40 800FEA90 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10DA44 800FEA94 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10DA48 800FEA98 03E00008 */  jr         $ra
    /* 10DA4C 800FEA9C 00000000 */   nop
endlabel func_800FEA2C_10D9DC
