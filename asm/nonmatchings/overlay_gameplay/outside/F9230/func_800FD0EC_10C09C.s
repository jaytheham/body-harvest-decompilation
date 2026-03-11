nonmatching func_800FD0EC_10C09C, 0x7C

glabel func_800FD0EC_10C09C
    /* 10C09C 800FD0EC 3C028016 */  lui        $v0, %hi(D_80159310)
    /* 10C0A0 800FD0F0 24429310 */  addiu      $v0, $v0, %lo(D_80159310)
    /* 10C0A4 800FD0F4 844E0000 */  lh         $t6, 0x0($v0)
    /* 10C0A8 800FD0F8 3C038016 */  lui        $v1, %hi(D_8015930C)
    /* 10C0AC 800FD0FC 2463930C */  addiu      $v1, $v1, %lo(D_8015930C)
    /* 10C0B0 800FD100 25CF0002 */  addiu      $t7, $t6, 0x2
    /* 10C0B4 800FD104 A44F0000 */  sh         $t7, 0x0($v0)
    /* 10C0B8 800FD108 84590000 */  lh         $t9, 0x0($v0)
    /* 10C0BC 800FD10C 84780000 */  lh         $t8, 0x0($v1)
    /* 10C0C0 800FD110 240A2619 */  addiu      $t2, $zero, 0x2619
    /* 10C0C4 800FD114 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* 10C0C8 800FD118 03194021 */  addu       $t0, $t8, $t9
    /* 10C0CC 800FD11C A4680000 */  sh         $t0, 0x0($v1)
    /* 10C0D0 800FD120 84690000 */  lh         $t1, 0x0($v1)
    /* 10C0D4 800FD124 2921261A */  slti       $at, $t1, 0x261A
    /* 10C0D8 800FD128 14200005 */  bnez       $at, .L800FD140_10C0F0
    /* 10C0DC 800FD12C 3C018016 */   lui       $at, %hi(D_8015930E)
    /* 10C0E0 800FD130 A420930E */  sh         $zero, %lo(D_8015930E)($at)
    /* 10C0E4 800FD134 A46A0000 */  sh         $t2, 0x0($v1)
    /* 10C0E8 800FD138 3C018016 */  lui        $at, %hi(D_8015920C)
    /* 10C0EC 800FD13C AC20920C */  sw         $zero, %lo(D_8015920C)($at)
  .L800FD140_10C0F0:
    /* 10C0F0 800FD140 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* 10C0F4 800FD144 3C018016 */  lui        $at, %hi(D_8015930E)
    /* 10C0F8 800FD148 856C003C */  lh         $t4, 0x3C($t3)
    /* 10C0FC 800FD14C 15800004 */  bnez       $t4, .L800FD160_10C110
    /* 10C100 800FD150 00000000 */   nop
    /* 10C104 800FD154 A420930E */  sh         $zero, %lo(D_8015930E)($at)
    /* 10C108 800FD158 3C018016 */  lui        $at, %hi(D_8015920C)
    /* 10C10C 800FD15C AC20920C */  sw         $zero, %lo(D_8015920C)($at)
  .L800FD160_10C110:
    /* 10C110 800FD160 03E00008 */  jr         $ra
    /* 10C114 800FD164 00000000 */   nop
endlabel func_800FD0EC_10C09C
