nonmatching func_8000789C_849C, 0x1C

glabel func_8000789C_849C
    /* 849C 8000789C 00047400 */  sll        $t6, $a0, 16
    /* 84A0 800078A0 000E7C03 */  sra        $t7, $t6, 16
    /* 84A4 800078A4 3C028005 */  lui        $v0, %hi(D_80048038)
    /* 84A8 800078A8 004F1021 */  addu       $v0, $v0, $t7
    /* 84AC 800078AC AFA40000 */  sw         $a0, 0x0($sp)
    /* 84B0 800078B0 03E00008 */  jr         $ra
    /* 84B4 800078B4 90428038 */   lbu       $v0, %lo(D_80048038)($v0)
endlabel func_8000789C_849C
