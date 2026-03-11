nonmatching setVideoInterfaceYSize, 0x34

glabel setVideoInterfaceYSize
    /* 1027C 8000F67C 44842000 */  mtc1       $a0, $f4
    /* 10280 8000F680 3C018007 */  lui        $at, %hi(D_80068088)
    /* 10284 8000F684 AC248088 */  sw         $a0, %lo(D_80068088)($at)
    /* 10288 8000F688 468021A0 */  cvt.s.w    $f6, $f4
    /* 1028C 8000F68C 3C014370 */  lui        $at, (0x43700000 >> 16)
    /* 10290 8000F690 44814000 */  mtc1       $at, $f8
    /* 10294 8000F694 3C018007 */  lui        $at, %hi(D_80068090)
    /* 10298 8000F698 240E0002 */  addiu      $t6, $zero, 0x2
    /* 1029C 8000F69C 46083283 */  div.s      $f10, $f6, $f8
    /* 102A0 8000F6A0 E42A8090 */  swc1       $f10, %lo(D_80068090)($at)
    /* 102A4 8000F6A4 3C018007 */  lui        $at, %hi(D_8006809C)
    /* 102A8 8000F6A8 03E00008 */  jr         $ra
    /* 102AC 8000F6AC AC2E809C */   sw        $t6, %lo(D_8006809C)($at)
endlabel setVideoInterfaceYSize
