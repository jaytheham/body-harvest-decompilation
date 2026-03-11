nonmatching func_802D55E4_254D24, 0x58

glabel func_802D55E4_254D24
    /* 254D24 802D55E4 3C038005 */  lui        $v1, %hi(D_80052A94)
    /* 254D28 802D55E8 24632A94 */  addiu      $v1, $v1, %lo(D_80052A94)
    /* 254D2C 802D55EC 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 254D30 802D55F0 3C04FFFF */  lui        $a0, (0xFFFF0000 >> 16)
    /* 254D34 802D55F4 01C41021 */  addu       $v0, $t6, $a0
    /* 254D38 802D55F8 9458708C */  lhu        $t8, 0x708C($v0)
    /* 254D3C 802D55FC 904A708D */  lbu        $t2, 0x708D($v0)
    /* 254D40 802D5600 2708FFEF */  addiu      $t0, $t8, -0x11
    /* 254D44 802D5604 3109003F */  andi       $t1, $t0, 0x3F
    /* 254D48 802D5608 314BFFC0 */  andi       $t3, $t2, 0xFFC0
    /* 254D4C 802D560C 012B6025 */  or         $t4, $t1, $t3
    /* 254D50 802D5610 A04C708D */  sb         $t4, 0x708D($v0)
    /* 254D54 802D5614 8C6D0000 */  lw         $t5, 0x0($v1)
    /* 254D58 802D5618 01A41021 */  addu       $v0, $t5, $a0
    /* 254D5C 802D561C 944F6E8C */  lhu        $t7, 0x6E8C($v0)
    /* 254D60 802D5620 904A6E8D */  lbu        $t2, 0x6E8D($v0)
    /* 254D64 802D5624 25F9FFEF */  addiu      $t9, $t7, -0x11
    /* 254D68 802D5628 3328003F */  andi       $t0, $t9, 0x3F
    /* 254D6C 802D562C 3149FFC0 */  andi       $t1, $t2, 0xFFC0
    /* 254D70 802D5630 01095825 */  or         $t3, $t0, $t1
    /* 254D74 802D5634 03E00008 */  jr         $ra
    /* 254D78 802D5638 A04B6E8D */   sb        $t3, 0x6E8D($v0)
endlabel func_802D55E4_254D24
