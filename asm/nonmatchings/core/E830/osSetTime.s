nonmatching osSetTime, 0x14

glabel osSetTime
    /* F0B0 8000E4B0 3C018006 */  lui        $at, %hi(D_8005BAEC)
    /* F0B4 8000E4B4 AC24BAEC */  sw         $a0, %lo(D_8005BAEC)($at)
    /* F0B8 8000E4B8 3C018006 */  lui        $at, %hi(__osCurrentTime)
    /* F0BC 8000E4BC 03E00008 */  jr         $ra
    /* F0C0 8000E4C0 AC25BAF0 */   sw        $a1, %lo(__osCurrentTime)($at)
endlabel osSetTime
