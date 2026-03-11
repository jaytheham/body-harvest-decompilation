nonmatching func_800FFCB8_10EC68, 0x70

glabel func_800FFCB8_10EC68
    /* 10EC68 800FFCB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10EC6C 800FFCBC AFA40018 */  sw         $a0, 0x18($sp)
    /* 10EC70 800FFCC0 8FAE0018 */  lw         $t6, 0x18($sp)
    /* 10EC74 800FFCC4 3C188014 */  lui        $t8, %hi(D_8013FDA8)
    /* 10EC78 800FFCC8 2718FDA8 */  addiu      $t8, $t8, %lo(D_8013FDA8)
    /* 10EC7C 800FFCCC 000E7900 */  sll        $t7, $t6, 4
    /* 10EC80 800FFCD0 01F81021 */  addu       $v0, $t7, $t8
    /* 10EC84 800FFCD4 84590008 */  lh         $t9, 0x8($v0)
    /* 10EC88 800FFCD8 8448000A */  lh         $t0, 0xA($v0)
    /* 10EC8C 800FFCDC 3C048005 */  lui        $a0, %hi(D_80052B40)
    /* 10EC90 800FFCE0 24842B40 */  addiu      $a0, $a0, %lo(D_80052B40)
    /* 10EC94 800FFCE4 3C0A8016 */  lui        $t2, %hi(D_801591C0)
    /* 10EC98 800FFCE8 A4990000 */  sh         $t9, 0x0($a0)
    /* 10EC9C 800FFCEC A4880002 */  sh         $t0, 0x2($a0)
    /* 10ECA0 800FFCF0 854A91C0 */  lh         $t2, %lo(D_801591C0)($t2)
    /* 10ECA4 800FFCF4 8449000C */  lh         $t1, 0xC($v0)
    /* 10ECA8 800FFCF8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10ECAC 800FFCFC 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10ECB0 800FFD00 012A5823 */  subu       $t3, $t1, $t2
    /* 10ECB4 800FFD04 A48B0004 */  sh         $t3, 0x4($a0)
    /* 10ECB8 800FFD08 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10ECBC 800FFD0C 00002825 */  or         $a1, $zero, $zero
    /* 10ECC0 800FFD10 0C000E74 */  jal        func_800039D0_45D0
    /* 10ECC4 800FFD14 00003025 */   or        $a2, $zero, $zero
    /* 10ECC8 800FFD18 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10ECCC 800FFD1C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10ECD0 800FFD20 03E00008 */  jr         $ra
    /* 10ECD4 800FFD24 00000000 */   nop
endlabel func_800FFCB8_10EC68
