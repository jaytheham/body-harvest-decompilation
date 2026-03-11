nonmatching func_802DDA98_25D1D8, 0x9C

glabel func_802DDA98_25D1D8
    /* 25D1D8 802DDA98 3C01802E */  lui        $at, %hi(D_802DF3A4)
    /* 25D1DC 802DDA9C C420F3A4 */  lwc1       $f0, %lo(D_802DF3A4)($at)
    /* 25D1E0 802DDAA0 3C0142F8 */  lui        $at, (0x42F80000 >> 16)
    /* 25D1E4 802DDAA4 44812000 */  mtc1       $at, $f4
    /* 25D1E8 802DDAA8 3C014190 */  lui        $at, (0x41900000 >> 16)
    /* 25D1EC 802DDAAC 44815000 */  mtc1       $at, $f10
    /* 25D1F0 802DDAB0 46002182 */  mul.s      $f6, $f4, $f0
    /* 25D1F4 802DDAB4 3C0141A8 */  lui        $at, (0x41A80000 >> 16)
    /* 25D1F8 802DDAB8 44812000 */  mtc1       $at, $f4
    /* 25D1FC 802DDABC 46005402 */  mul.s      $f16, $f10, $f0
    /* 25D200 802DDAC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 25D204 802DDAC4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 25D208 802DDAC8 AFA40020 */  sw         $a0, 0x20($sp)
    /* 25D20C 802DDACC 93A40023 */  lbu        $a0, 0x23($sp)
    /* 25D210 802DDAD0 4600320D */  trunc.w.s  $f8, $f6
    /* 25D214 802DDAD4 46002182 */  mul.s      $f6, $f4, $f0
    /* 25D218 802DDAD8 44054000 */  mfc1       $a1, $f8
    /* 25D21C 802DDADC 4600848D */  trunc.w.s  $f18, $f16
    /* 25D220 802DDAE0 00057C00 */  sll        $t7, $a1, 16
    /* 25D224 802DDAE4 000F2C03 */  sra        $a1, $t7, 16
    /* 25D228 802DDAE8 4600320D */  trunc.w.s  $f8, $f6
    /* 25D22C 802DDAEC 44069000 */  mfc1       $a2, $f18
    /* 25D230 802DDAF0 44074000 */  mfc1       $a3, $f8
    /* 25D234 802DDAF4 00064400 */  sll        $t0, $a2, 16
    /* 25D238 802DDAF8 00083403 */  sra        $a2, $t0, 16
    /* 25D23C 802DDAFC 00075C00 */  sll        $t3, $a3, 16
    /* 25D240 802DDB00 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 25D244 802DDB04 000B3C03 */   sra       $a3, $t3, 16
    /* 25D248 802DDB08 240DFFFF */  addiu      $t5, $zero, -0x1
    /* 25D24C 802DDB0C AFAD0010 */  sw         $t5, 0x10($sp)
    /* 25D250 802DDB10 93A40023 */  lbu        $a0, 0x23($sp)
    /* 25D254 802DDB14 24050022 */  addiu      $a1, $zero, 0x22
    /* 25D258 802DDB18 24060007 */  addiu      $a2, $zero, 0x7
    /* 25D25C 802DDB1C 0C0B7441 */  jal        func_802DD104_25C844
    /* 25D260 802DDB20 2407004D */   addiu     $a3, $zero, 0x4D
    /* 25D264 802DDB24 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 25D268 802DDB28 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 25D26C 802DDB2C 03E00008 */  jr         $ra
    /* 25D270 802DDB30 00000000 */   nop
endlabel func_802DDA98_25D1D8
