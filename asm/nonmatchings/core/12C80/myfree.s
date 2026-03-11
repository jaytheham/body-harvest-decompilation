nonmatching myfree, 0xC

glabel myfree
    /* 1B048 8001A448 3C018003 */  lui        $at, %hi(gzip_data_0000)
    /* 1B04C 8001A44C 03E00008 */  jr         $ra
    /* 1B050 8001A450 AC20448C */   sw        $zero, %lo(gzip_data_0000)($at)
endlabel myfree
    /* 1B054 8001A454 00000000 */  nop
    /* 1B058 8001A458 00000000 */  nop
    /* 1B05C 8001A45C 00000000 */  nop
