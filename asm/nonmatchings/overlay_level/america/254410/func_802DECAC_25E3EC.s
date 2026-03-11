nonmatching func_802DECAC_25E3EC, 0xA0

glabel func_802DECAC_25E3EC
    /* 25E3EC 802DECAC 3C01802E */  lui        $at, %hi(D_802DF3A4)
    /* 25E3F0 802DECB0 C420F3A4 */  lwc1       $f0, %lo(D_802DF3A4)($at)
    /* 25E3F4 802DECB4 3C0142F8 */  lui        $at, (0x42F80000 >> 16)
    /* 25E3F8 802DECB8 44812000 */  mtc1       $at, $f4
    /* 25E3FC 802DECBC 3C014190 */  lui        $at, (0x41900000 >> 16)
    /* 25E400 802DECC0 44815000 */  mtc1       $at, $f10
    /* 25E404 802DECC4 46002182 */  mul.s      $f6, $f4, $f0
    /* 25E408 802DECC8 3C0141A8 */  lui        $at, (0x41A80000 >> 16)
    /* 25E40C 802DECCC 44812000 */  mtc1       $at, $f4
    /* 25E410 802DECD0 46005402 */  mul.s      $f16, $f10, $f0
    /* 25E414 802DECD4 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 25E418 802DECD8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 25E41C 802DECDC AFA40020 */  sw         $a0, 0x20($sp)
    /* 25E420 802DECE0 93A40023 */  lbu        $a0, 0x23($sp)
    /* 25E424 802DECE4 4600320D */  trunc.w.s  $f8, $f6
    /* 25E428 802DECE8 46002182 */  mul.s      $f6, $f4, $f0
    /* 25E42C 802DECEC 44054000 */  mfc1       $a1, $f8
    /* 25E430 802DECF0 4600848D */  trunc.w.s  $f18, $f16
    /* 25E434 802DECF4 00057C00 */  sll        $t7, $a1, 16
    /* 25E438 802DECF8 000F2C03 */  sra        $a1, $t7, 16
    /* 25E43C 802DECFC 4600320D */  trunc.w.s  $f8, $f6
    /* 25E440 802DED00 44069000 */  mfc1       $a2, $f18
    /* 25E444 802DED04 44074000 */  mfc1       $a3, $f8
    /* 25E448 802DED08 00064400 */  sll        $t0, $a2, 16
    /* 25E44C 802DED0C 00083403 */  sra        $a2, $t0, 16
    /* 25E450 802DED10 00075C00 */  sll        $t3, $a3, 16
    /* 25E454 802DED14 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 25E458 802DED18 000B3C03 */   sra       $a3, $t3, 16
    /* 25E45C 802DED1C 3C0D802E */  lui        $t5, %hi(D_802E0CD0)
    /* 25E460 802DED20 25AD0CD0 */  addiu      $t5, $t5, %lo(D_802E0CD0)
    /* 25E464 802DED24 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 25E468 802DED28 93A40023 */  lbu        $a0, 0x23($sp)
    /* 25E46C 802DED2C 24050080 */  addiu      $a1, $zero, 0x80
    /* 25E470 802DED30 00003025 */  or         $a2, $zero, $zero
    /* 25E474 802DED34 0C0B7A64 */  jal        func_802DE990_25E0D0
    /* 25E478 802DED38 00003825 */   or        $a3, $zero, $zero
    /* 25E47C 802DED3C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 25E480 802DED40 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 25E484 802DED44 03E00008 */  jr         $ra
    /* 25E488 802DED48 00000000 */   nop
endlabel func_802DECAC_25E3EC
