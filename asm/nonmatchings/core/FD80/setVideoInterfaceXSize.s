nonmatching setVideoInterfaceXSize, 0x34

glabel setVideoInterfaceXSize
    /* 10248 8000F648 44842000 */  mtc1       $a0, $f4
    /* 1024C 8000F64C 3C018007 */  lui        $at, %hi(D_80068084)
    /* 10250 8000F650 AC248084 */  sw         $a0, %lo(D_80068084)($at)
    /* 10254 8000F654 468021A0 */  cvt.s.w    $f6, $f4
    /* 10258 8000F658 3C0143A0 */  lui        $at, (0x43A00000 >> 16)
    /* 1025C 8000F65C 44814000 */  mtc1       $at, $f8
    /* 10260 8000F660 3C018007 */  lui        $at, %hi(D_8006808C)
    /* 10264 8000F664 240E0002 */  addiu      $t6, $zero, 0x2
    /* 10268 8000F668 46083283 */  div.s      $f10, $f6, $f8
    /* 1026C 8000F66C E42A808C */  swc1       $f10, %lo(D_8006808C)($at)
    /* 10270 8000F670 3C018007 */  lui        $at, %hi(D_8006809C)
    /* 10274 8000F674 03E00008 */  jr         $ra
    /* 10278 8000F678 AC2E809C */   sw        $t6, %lo(D_8006809C)($at)
endlabel setVideoInterfaceXSize
