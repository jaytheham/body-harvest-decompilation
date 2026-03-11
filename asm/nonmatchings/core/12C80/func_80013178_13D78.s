nonmatching func_80013178_13D78, 0x2C

glabel func_80013178_13D78
    /* 13D78 80013178 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 13D7C 8001317C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 13D80 80013180 AFA40018 */  sw         $a0, 0x18($sp)
    /* 13D84 80013184 00047600 */  sll        $t6, $a0, 24
    /* 13D88 80013188 000E2603 */  sra        $a0, $t6, 24
    /* 13D8C 8001318C 0C005725 */  jal        func_80015C94_16894
    /* 13D90 80013190 24050002 */   addiu     $a1, $zero, 0x2
    /* 13D94 80013194 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 13D98 80013198 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 13D9C 8001319C 03E00008 */  jr         $ra
    /* 13DA0 800131A0 00000000 */   nop
endlabel func_80013178_13D78
