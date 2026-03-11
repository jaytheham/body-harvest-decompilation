nonmatching func_800FD168_10C118, 0x7C

glabel func_800FD168_10C118
    /* 10C118 800FD168 3C028016 */  lui        $v0, %hi(D_80159310)
    /* 10C11C 800FD16C 24429310 */  addiu      $v0, $v0, %lo(D_80159310)
    /* 10C120 800FD170 844E0000 */  lh         $t6, 0x0($v0)
    /* 10C124 800FD174 3C038016 */  lui        $v1, %hi(D_8015930C)
    /* 10C128 800FD178 2463930C */  addiu      $v1, $v1, %lo(D_8015930C)
    /* 10C12C 800FD17C 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 10C130 800FD180 A44F0000 */  sh         $t7, 0x0($v0)
    /* 10C134 800FD184 84590000 */  lh         $t9, 0x0($v0)
    /* 10C138 800FD188 84780000 */  lh         $t8, 0x0($v1)
    /* 10C13C 800FD18C 240A1194 */  addiu      $t2, $zero, 0x1194
    /* 10C140 800FD190 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* 10C144 800FD194 03194021 */  addu       $t0, $t8, $t9
    /* 10C148 800FD198 A4680000 */  sh         $t0, 0x0($v1)
    /* 10C14C 800FD19C 84690000 */  lh         $t1, 0x0($v1)
    /* 10C150 800FD1A0 29211195 */  slti       $at, $t1, 0x1195
    /* 10C154 800FD1A4 14200005 */  bnez       $at, .L800FD1BC_10C16C
    /* 10C158 800FD1A8 3C018016 */   lui       $at, %hi(D_8015930E)
    /* 10C15C 800FD1AC A420930E */  sh         $zero, %lo(D_8015930E)($at)
    /* 10C160 800FD1B0 A46A0000 */  sh         $t2, 0x0($v1)
    /* 10C164 800FD1B4 3C018016 */  lui        $at, %hi(D_8015920C)
    /* 10C168 800FD1B8 AC20920C */  sw         $zero, %lo(D_8015920C)($at)
  .L800FD1BC_10C16C:
    /* 10C16C 800FD1BC 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* 10C170 800FD1C0 3C018016 */  lui        $at, %hi(D_8015930E)
    /* 10C174 800FD1C4 856C003C */  lh         $t4, 0x3C($t3)
    /* 10C178 800FD1C8 15800004 */  bnez       $t4, .L800FD1DC_10C18C
    /* 10C17C 800FD1CC 00000000 */   nop
    /* 10C180 800FD1D0 A420930E */  sh         $zero, %lo(D_8015930E)($at)
    /* 10C184 800FD1D4 3C018016 */  lui        $at, %hi(D_8015920C)
    /* 10C188 800FD1D8 AC20920C */  sw         $zero, %lo(D_8015920C)($at)
  .L800FD1DC_10C18C:
    /* 10C18C 800FD1DC 03E00008 */  jr         $ra
    /* 10C190 800FD1E0 00000000 */   nop
endlabel func_800FD168_10C118
