nonmatching func_800047FC_53FC, 0x1C

glabel func_800047FC_53FC
    /* 53FC 800047FC 00047400 */  sll        $t6, $a0, 16
    /* 5400 80004800 000E7C03 */  sra        $t7, $t6, 16
    /* 5404 80004804 01EF0019 */  multu      $t7, $t7
    /* 5408 80004808 AFA40000 */  sw         $a0, 0x0($sp)
    /* 540C 8000480C 00001012 */  mflo       $v0
    /* 5410 80004810 03E00008 */  jr         $ra
    /* 5414 80004814 00000000 */   nop
endlabel func_800047FC_53FC
