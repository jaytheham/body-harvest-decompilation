nonmatching func_802DBD08_25B448, 0x7C

glabel func_802DBD08_25B448
    /* 25B448 802DBD08 44852000 */  mtc1       $a1, $f4
    /* 25B44C 802DBD0C 44868000 */  mtc1       $a2, $f16
    /* 25B450 802DBD10 3C01802E */  lui        $at, %hi(D_802DF3A4)
    /* 25B454 802DBD14 468021A0 */  cvt.s.w    $f6, $f4
    /* 25B458 802DBD18 C420F3A4 */  lwc1       $f0, %lo(D_802DF3A4)($at)
    /* 25B45C 802DBD1C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 25B460 802DBD20 000E7880 */  sll        $t7, $t6, 2
    /* 25B464 802DBD24 01EE7821 */  addu       $t7, $t7, $t6
    /* 25B468 802DBD28 468084A0 */  cvt.s.w    $f18, $f16
    /* 25B46C 802DBD2C 46003202 */  mul.s      $f8, $f6, $f0
    /* 25B470 802DBD30 000F7900 */  sll        $t7, $t7, 4
    /* 25B474 802DBD34 3C188005 */  lui        $t8, %hi(D_800481B2)
    /* 25B478 802DBD38 030FC021 */  addu       $t8, $t8, $t7
    /* 25B47C 802DBD3C 931881B2 */  lbu        $t8, %lo(D_800481B2)($t8)
    /* 25B480 802DBD40 46009102 */  mul.s      $f4, $f18, $f0
    /* 25B484 802DBD44 3C088025 */  lui        $t0, %hi(alienSpecs)
    /* 25B488 802DBD48 0018C880 */  sll        $t9, $t8, 2
    /* 25B48C 802DBD4C 0338C823 */  subu       $t9, $t9, $t8
    /* 25B490 802DBD50 0019C880 */  sll        $t9, $t9, 2
    /* 25B494 802DBD54 0338C821 */  addu       $t9, $t9, $t8
    /* 25B498 802DBD58 4600428D */  trunc.w.s  $f10, $f8
    /* 25B49C 802DBD5C 0019C8C0 */  sll        $t9, $t9, 3
    /* 25B4A0 802DBD60 25086680 */  addiu      $t0, $t0, %lo(alienSpecs)
    /* 25B4A4 802DBD64 4600218D */  trunc.w.s  $f6, $f4
    /* 25B4A8 802DBD68 440A5000 */  mfc1       $t2, $f10
    /* 25B4AC 802DBD6C 03281021 */  addu       $v0, $t9, $t0
    /* 25B4B0 802DBD70 AFA40000 */  sw         $a0, 0x0($sp)
    /* 25B4B4 802DBD74 440C3000 */  mfc1       $t4, $f6
    /* 25B4B8 802DBD78 A44A0034 */  sh         $t2, 0x34($v0)
    /* 25B4BC 802DBD7C 03E00008 */  jr         $ra
    /* 25B4C0 802DBD80 A44C0036 */   sh        $t4, 0x36($v0)
endlabel func_802DBD08_25B448
