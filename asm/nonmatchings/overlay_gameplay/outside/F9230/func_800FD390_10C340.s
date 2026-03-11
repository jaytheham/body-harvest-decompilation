nonmatching func_800FD390_10C340, 0x80

glabel func_800FD390_10C340
    /* 10C340 800FD390 3C068016 */  lui        $a2, %hi(D_8015920C)
    /* 10C344 800FD394 24C6920C */  addiu      $a2, $a2, %lo(D_8015920C)
    /* 10C348 800FD398 8CCE0000 */  lw         $t6, 0x0($a2)
    /* 10C34C 800FD39C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10C350 800FD3A0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10C354 800FD3A4 15C00016 */  bnez       $t6, .L800FD400_10C3B0
    /* 10C358 800FD3A8 3C038005 */   lui       $v1, %hi(D_80052B34)
    /* 10C35C 800FD3AC 240F0001 */  addiu      $t7, $zero, 0x1
    /* 10C360 800FD3B0 3C018016 */  lui        $at, %hi(D_8015930E)
    /* 10C364 800FD3B4 A42F930E */  sh         $t7, %lo(D_8015930E)($at)
    /* 10C368 800FD3B8 3C188010 */  lui        $t8, %hi(func_800FD218_10C1C8)
    /* 10C36C 800FD3BC 2718D218 */  addiu      $t8, $t8, %lo(func_800FD218_10C1C8)
    /* 10C370 800FD3C0 ACD80000 */  sw         $t8, 0x0($a2)
    /* 10C374 800FD3C4 3C018016 */  lui        $at, %hi(D_80159310)
    /* 10C378 800FD3C8 24632B34 */  addiu      $v1, $v1, %lo(D_80052B34)
    /* 10C37C 800FD3CC A4209310 */  sh         $zero, %lo(D_80159310)($at)
    /* 10C380 800FD3D0 8C620000 */  lw         $v0, 0x0($v1)
    /* 10C384 800FD3D4 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
    /* 10C388 800FD3D8 94590020 */  lhu        $t9, 0x20($v0)
    /* 10C38C 800FD3DC 37280002 */  ori        $t0, $t9, 0x2
    /* 10C390 800FD3E0 A4480020 */  sh         $t0, 0x20($v0)
    /* 10C394 800FD3E4 0C03ECFA */  jal        func_800FB3E8_10A398
    /* 10C398 800FD3E8 8C640000 */   lw        $a0, 0x0($v1)
    /* 10C39C 800FD3EC 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 10C3A0 800FD3F0 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 10C3A4 800FD3F4 8449002E */  lh         $t1, 0x2E($v0)
    /* 10C3A8 800FD3F8 252A0001 */  addiu      $t2, $t1, 0x1
    /* 10C3AC 800FD3FC A44A002E */  sh         $t2, 0x2E($v0)
  .L800FD400_10C3B0:
    /* 10C3B0 800FD400 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10C3B4 800FD404 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10C3B8 800FD408 03E00008 */  jr         $ra
    /* 10C3BC 800FD40C 00000000 */   nop
endlabel func_800FD390_10C340
