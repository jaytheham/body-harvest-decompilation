nonmatching func_802DC9FC_19550C, 0x70

glabel func_802DC9FC_19550C
    /* 19550C 802DC9FC 308E00FF */  andi       $t6, $a0, 0xFF
    /* 195510 802DCA00 000E7880 */  sll        $t7, $t6, 2
    /* 195514 802DCA04 01EE7821 */  addu       $t7, $t7, $t6
    /* 195518 802DCA08 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 19551C 802DCA0C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 195520 802DCA10 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 195524 802DCA14 000F7900 */  sll        $t7, $t7, 4
    /* 195528 802DCA18 01F81021 */  addu       $v0, $t7, $t8
    /* 19552C 802DCA1C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 195530 802DCA20 AFA40018 */  sw         $a0, 0x18($sp)
    /* 195534 802DCA24 2419009B */  addiu      $t9, $zero, 0x9B
    /* 195538 802DCA28 2408FFEF */  addiu      $t0, $zero, -0x11
    /* 19553C 802DCA2C 24090025 */  addiu      $t1, $zero, 0x25
    /* 195540 802DCA30 01C02025 */  or         $a0, $t6, $zero
    /* 195544 802DCA34 A4590014 */  sh         $t9, 0x14($v0)
    /* 195548 802DCA38 A4480016 */  sh         $t0, 0x16($v0)
    /* 19554C 802DCA3C A4490018 */  sh         $t1, 0x18($v0)
    /* 195550 802DCA40 0C0B7140 */  jal        func_802DC500_195010
    /* 195554 802DCA44 A3AE001B */   sb        $t6, 0x1B($sp)
    /* 195558 802DCA48 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 19555C 802DCA4C 240500BB */  addiu      $a1, $zero, 0xBB
    /* 195560 802DCA50 24060024 */  addiu      $a2, $zero, 0x24
    /* 195564 802DCA54 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 195568 802DCA58 24070145 */   addiu     $a3, $zero, 0x145
    /* 19556C 802DCA5C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 195570 802DCA60 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 195574 802DCA64 03E00008 */  jr         $ra
    /* 195578 802DCA68 00000000 */   nop
endlabel func_802DC9FC_19550C
