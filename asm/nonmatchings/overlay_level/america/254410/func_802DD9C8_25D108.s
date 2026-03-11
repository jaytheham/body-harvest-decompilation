nonmatching func_802DD9C8_25D108, 0x9C

glabel func_802DD9C8_25D108
    /* 25D108 802DD9C8 3C01802E */  lui        $at, %hi(D_802DF3A4)
    /* 25D10C 802DD9CC C420F3A4 */  lwc1       $f0, %lo(D_802DF3A4)($at)
    /* 25D110 802DD9D0 3C01C2F8 */  lui        $at, (0xC2F80000 >> 16)
    /* 25D114 802DD9D4 44812000 */  mtc1       $at, $f4
    /* 25D118 802DD9D8 3C014190 */  lui        $at, (0x41900000 >> 16)
    /* 25D11C 802DD9DC 44815000 */  mtc1       $at, $f10
    /* 25D120 802DD9E0 46002182 */  mul.s      $f6, $f4, $f0
    /* 25D124 802DD9E4 3C0141A8 */  lui        $at, (0x41A80000 >> 16)
    /* 25D128 802DD9E8 44812000 */  mtc1       $at, $f4
    /* 25D12C 802DD9EC 46005402 */  mul.s      $f16, $f10, $f0
    /* 25D130 802DD9F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 25D134 802DD9F4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 25D138 802DD9F8 AFA40020 */  sw         $a0, 0x20($sp)
    /* 25D13C 802DD9FC 93A40023 */  lbu        $a0, 0x23($sp)
    /* 25D140 802DDA00 4600320D */  trunc.w.s  $f8, $f6
    /* 25D144 802DDA04 46002182 */  mul.s      $f6, $f4, $f0
    /* 25D148 802DDA08 44054000 */  mfc1       $a1, $f8
    /* 25D14C 802DDA0C 4600848D */  trunc.w.s  $f18, $f16
    /* 25D150 802DDA10 00057C00 */  sll        $t7, $a1, 16
    /* 25D154 802DDA14 000F2C03 */  sra        $a1, $t7, 16
    /* 25D158 802DDA18 4600320D */  trunc.w.s  $f8, $f6
    /* 25D15C 802DDA1C 44069000 */  mfc1       $a2, $f18
    /* 25D160 802DDA20 44074000 */  mfc1       $a3, $f8
    /* 25D164 802DDA24 00064400 */  sll        $t0, $a2, 16
    /* 25D168 802DDA28 00083403 */  sra        $a2, $t0, 16
    /* 25D16C 802DDA2C 00075C00 */  sll        $t3, $a3, 16
    /* 25D170 802DDA30 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 25D174 802DDA34 000B3C03 */   sra       $a3, $t3, 16
    /* 25D178 802DDA38 240D0001 */  addiu      $t5, $zero, 0x1
    /* 25D17C 802DDA3C AFAD0010 */  sw         $t5, 0x10($sp)
    /* 25D180 802DDA40 93A40023 */  lbu        $a0, 0x23($sp)
    /* 25D184 802DDA44 2405FFDB */  addiu      $a1, $zero, -0x25
    /* 25D188 802DDA48 24060009 */  addiu      $a2, $zero, 0x9
    /* 25D18C 802DDA4C 0C0B7441 */  jal        func_802DD104_25C844
    /* 25D190 802DDA50 2407004C */   addiu     $a3, $zero, 0x4C
    /* 25D194 802DDA54 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 25D198 802DDA58 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 25D19C 802DDA5C 03E00008 */  jr         $ra
    /* 25D1A0 802DDA60 00000000 */   nop
endlabel func_802DD9C8_25D108
