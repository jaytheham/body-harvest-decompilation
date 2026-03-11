nonmatching func_800C0E80_CFE30, 0x94

glabel func_800C0E80_CFE30
    /* CFE30 800C0E80 C4A40000 */  lwc1       $f4, 0x0($a1)
    /* CFE34 800C0E84 C4860000 */  lwc1       $f6, 0x0($a0)
    /* CFE38 800C0E88 C4AA0004 */  lwc1       $f10, 0x4($a1)
    /* CFE3C 800C0E8C C490000C */  lwc1       $f16, 0xC($a0)
    /* CFE40 800C0E90 46062202 */  mul.s      $f8, $f4, $f6
    /* CFE44 800C0E94 C4860018 */  lwc1       $f6, 0x18($a0)
    /* CFE48 800C0E98 46105482 */  mul.s      $f18, $f10, $f16
    /* CFE4C 800C0E9C C4AA0008 */  lwc1       $f10, 0x8($a1)
    /* CFE50 800C0EA0 460A3402 */  mul.s      $f16, $f6, $f10
    /* CFE54 800C0EA4 46124100 */  add.s      $f4, $f8, $f18
    /* CFE58 800C0EA8 46048200 */  add.s      $f8, $f16, $f4
    /* CFE5C 800C0EAC E4C80000 */  swc1       $f8, 0x0($a2)
    /* CFE60 800C0EB0 C4B20000 */  lwc1       $f18, 0x0($a1)
    /* CFE64 800C0EB4 C4860004 */  lwc1       $f6, 0x4($a0)
    /* CFE68 800C0EB8 C4B00004 */  lwc1       $f16, 0x4($a1)
    /* CFE6C 800C0EBC C4840010 */  lwc1       $f4, 0x10($a0)
    /* CFE70 800C0EC0 46069282 */  mul.s      $f10, $f18, $f6
    /* CFE74 800C0EC4 C486001C */  lwc1       $f6, 0x1C($a0)
    /* CFE78 800C0EC8 46048202 */  mul.s      $f8, $f16, $f4
    /* CFE7C 800C0ECC C4B00008 */  lwc1       $f16, 0x8($a1)
    /* CFE80 800C0ED0 46103102 */  mul.s      $f4, $f6, $f16
    /* CFE84 800C0ED4 46085480 */  add.s      $f18, $f10, $f8
    /* CFE88 800C0ED8 46122280 */  add.s      $f10, $f4, $f18
    /* CFE8C 800C0EDC E4CA0004 */  swc1       $f10, 0x4($a2)
    /* CFE90 800C0EE0 C4860008 */  lwc1       $f6, 0x8($a0)
    /* CFE94 800C0EE4 C4A80000 */  lwc1       $f8, 0x0($a1)
    /* CFE98 800C0EE8 C4920014 */  lwc1       $f18, 0x14($a0)
    /* CFE9C 800C0EEC C4A40004 */  lwc1       $f4, 0x4($a1)
    /* CFEA0 800C0EF0 46064402 */  mul.s      $f16, $f8, $f6
    /* CFEA4 800C0EF4 C4860020 */  lwc1       $f6, 0x20($a0)
    /* CFEA8 800C0EF8 46122282 */  mul.s      $f10, $f4, $f18
    /* CFEAC 800C0EFC C4A40008 */  lwc1       $f4, 0x8($a1)
    /* CFEB0 800C0F00 46043482 */  mul.s      $f18, $f6, $f4
    /* CFEB4 800C0F04 460A8200 */  add.s      $f8, $f16, $f10
    /* CFEB8 800C0F08 46089400 */  add.s      $f16, $f18, $f8
    /* CFEBC 800C0F0C 03E00008 */  jr         $ra
    /* CFEC0 800C0F10 E4D00008 */   swc1      $f16, 0x8($a2)
endlabel func_800C0E80_CFE30
