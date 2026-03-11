nonmatching func_802D536C_254AAC, 0x50

glabel func_802D536C_254AAC
    /* 254AAC 802D536C 3C0E8005 */  lui        $t6, %hi(D_8004D1B2)
    /* 254AB0 802D5370 91CED1B2 */  lbu        $t6, %lo(D_8004D1B2)($t6)
    /* 254AB4 802D5374 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 254AB8 802D5378 240F0096 */  addiu      $t7, $zero, 0x96
    /* 254ABC 802D537C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 254AC0 802D5380 01EEC823 */  subu       $t9, $t7, $t6
    /* 254AC4 802D5384 3324FFFF */  andi       $a0, $t9, 0xFFFF
    /* 254AC8 802D5388 0C026FD9 */  jal        func_8009BF64_AAF14
    /* 254ACC 802D538C A7B9001E */   sh        $t9, 0x1E($sp)
    /* 254AD0 802D5390 87A2001E */  lh         $v0, 0x1E($sp)
    /* 254AD4 802D5394 2401FFFF */  addiu      $at, $zero, -0x1
    /* 254AD8 802D5398 3C04802D */  lui        $a0, %hi(func_802D536C_254AAC)
    /* 254ADC 802D539C 54410004 */  bnel       $v0, $at, .L802D53B0_254AF0
    /* 254AE0 802D53A0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 254AE4 802D53A4 0C001D2F */  jal        func_800074BC_80BC
    /* 254AE8 802D53A8 2484536C */   addiu     $a0, $a0, %lo(func_802D536C_254AAC)
    /* 254AEC 802D53AC 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D53B0_254AF0:
    /* 254AF0 802D53B0 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 254AF4 802D53B4 03E00008 */  jr         $ra
    /* 254AF8 802D53B8 00000000 */   nop
endlabel func_802D536C_254AAC
