nonmatching func_800078E4_84E4, 0x1C

glabel func_800078E4_84E4
    /* 84E4 800078E4 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 84E8 800078E8 240F0001 */  addiu      $t7, $zero, 0x1
    /* 84EC 800078EC 008FC004 */  sllv       $t8, $t7, $a0
    /* 84F0 800078F0 0300C827 */  not        $t9, $t8
    /* 84F4 800078F4 01D94024 */  and        $t0, $t6, $t9
    /* 84F8 800078F8 03E00008 */  jr         $ra
    /* 84FC 800078FC ACA80000 */   sw        $t0, 0x0($a1)
endlabel func_800078E4_84E4
