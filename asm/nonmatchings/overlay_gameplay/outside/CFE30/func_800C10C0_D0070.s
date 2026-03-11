nonmatching func_800C10C0_D0070, 0x34

glabel func_800C10C0_D0070
    /* D0070 800C10C0 C4840000 */  lwc1       $f4, 0x0($a0)
    /* D0074 800C10C4 C4A60000 */  lwc1       $f6, 0x0($a1)
    /* D0078 800C10C8 46062201 */  sub.s      $f8, $f4, $f6
    /* D007C 800C10CC E4C80000 */  swc1       $f8, 0x0($a2)
    /* D0080 800C10D0 C4B00004 */  lwc1       $f16, 0x4($a1)
    /* D0084 800C10D4 C48A0004 */  lwc1       $f10, 0x4($a0)
    /* D0088 800C10D8 46105481 */  sub.s      $f18, $f10, $f16
    /* D008C 800C10DC E4D20004 */  swc1       $f18, 0x4($a2)
    /* D0090 800C10E0 C4A60008 */  lwc1       $f6, 0x8($a1)
    /* D0094 800C10E4 C4840008 */  lwc1       $f4, 0x8($a0)
    /* D0098 800C10E8 46062201 */  sub.s      $f8, $f4, $f6
    /* D009C 800C10EC 03E00008 */  jr         $ra
    /* D00A0 800C10F0 E4C80008 */   swc1      $f8, 0x8($a2)
endlabel func_800C10C0_D0070
