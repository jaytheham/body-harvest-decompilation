nonmatching func_800078B8_84B8, 0x14

glabel func_800078B8_84B8
    /* 84B8 800078B8 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 84BC 800078BC 240F0001 */  addiu      $t7, $zero, 0x1
    /* 84C0 800078C0 008FC004 */  sllv       $t8, $t7, $a0
    /* 84C4 800078C4 03E00008 */  jr         $ra
    /* 84C8 800078C8 01D81024 */   and       $v0, $t6, $t8
endlabel func_800078B8_84B8
